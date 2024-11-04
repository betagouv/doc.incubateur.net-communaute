# Metabase sur Scalingo

Scalingo permet de déployer une instance de Metabase en un clic. L'instance sera fonctionnelle, configurable et relativement sécurisée.

Dans notre cas, nous déployons Metabase chez Scalingo et nous nous connectons à une application hébergée chez Scalingo. La base de données de l'application est accessible via leur réseau privé.

{% hint style="info" %}
Nous ne rentrerons pas dans les détails de la mise en place d'une infrastructure sécurisée chez un autre hébergeur.
{% endhint %}

1. Connectez-vous ou créez votre compte [Scalingo](https://scalingo.com)
2. [Lancez le déploiement en un clic](https://my.scalingo.com/deploy?source=https://github.com/Scalingo/metabase-scalingo) ou déployer avec le [CLI Scalingo](https://doc.scalingo.com/cli)\
   `scalingo --app <mon-app> deploy https://github.com/Scalingo/metabase-scalingo/archive/refs/heads/master.tar.gz`
3. Configurez un sous-domaine dans votre gestionnaire de DNS (_ex: stats.ma-startup.beta.gouv.fr_)
4.  Configurez ce sous-domaine dans l'interface Scalingo

    _https://dashboard.scalingo.com/apps/osc-fr1/\<mon-application>/settings/domains/_
5. Créer un utilisateur de base de données spécifique à Metabase
6. Configurez Metabase lors de la première connexion
7. Configurez le serveur d'envoi SMTP
8. Invitez des utilisateurs via l'interface d'admin
9. Amusez-vous avec vos données :tada:

_La documentation officielle est ici :_ [_https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase_](https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase)\_\_

#### Créer un utilisateur de base de données spécifique à Metabase

Pour des raisons de sécurité, il est fortement recommandé de donner un accès en lecture seule (_read-only)_ à Metabase sur votre base de production. La création d'un nouvel utilisateur se fait dans l'interface de votre [dashboard Scalingo](https://dashboard.scalingo.com). Il faut ensuite lui donner des permissions de lecture sur chaque table utilisée par vos requêtes Metabase.

L'exemple suivant est donné pour une base PostgreSQL.

* Dans votre [dashboard Scalingo](https://dashboard.scalingo.com), cliquez sur votre application dans la carte **Apps**
* Dans la carte **Addons**, cliquez sur le bouton _Dashboard_ de PostgreSQL
* Naviguez vers l'onglet USERS
*   Remplissez les champs du formulaire **en cochant la case Read only**.

    _user: metabase_

    _password: \<générer un mot de passe compliqué>_
*   Connectez vous à votre base PostgreSQL en admin (pas le nouvel utilisateur)

    `scalingo -a <mon-application> pgsql-console`
*   `Accordez les droits de lecture sur vos différents schemas et tables`

    `GRANT USAGE ON SCHEMA <schema> TO metabase;`

    `GRANT SELECT ON ALL TABLES IN SCHEMA <schema> TO metabase;`

#### Configurer Metabase lors de la première connexion

Vous aurez besoin des informations de connexion à la base de données de votre application pour configurer Metabase. La procédure suivante explique comment les récupérer.

1. Dans le dashboard PostgreSQL (voir ci-dessus), dans l'onglet OVERVIEW
2.  Récupérez les infos de connexion donnés par la _Connection String_ de la carte **Database Access**

    `postgres://<user>:<password>@<hostname>:<port>/<database>?sslmode=prefer`

### Mise à jour de Metabase

La mise à jour se fait en redéployant via le [CLI Scalingo](https://doc.scalingo.com/cli)

```
scalingo \
  --app <mon-app> \
  deploy https://github.com/Scalingo/metabase-scalingo/archive/refs/heads/master.tar.gz
```

> **Note technique**\
> Le dépôt Metabase de Scalingo n'a pas besoin de bouger à chaque changement de version de Metabase car il utilise le buildpack maintenu par l'équipe Metabase.\
> \
> Vous pouvez vérifier la version dans ce fichier pour vous assurer de ce que vous déployez.\
> [https://github.com/metabase/metabase-buildpack/blob/master/bin/version](https://github.com/metabase/metabase-buildpack/blob/master/bin/version)

### Connecter Metabase à une base de données anonymisée

Toujours pour des raisons de sécurité, il est préférable de ne pas connecter Metabase directement à la base de donnée de production, mais plutôt à une base dédié, ne contenant que des données anonymisées.

Pour cela,

1. créer une app Scalingo sans container (myapp-metabase-data)
2. lui ajouter un add-on PostgreSQL
3. créer un utilisateur `metabase` en lecture seule (voir plus haut)
4. configurer Metabase pour se connecter à cette nouvelle base

Puis, sur votre app de production :

* Copier-coller le contenu de la variable d’environnement `SCALINGO_POSTGRESQL_URL` de myapp-metabase-data dans une nouvelle variable `METABASE_DB_URL`
* Préparer un script `export-db-metabase.sh` qui va créer les tables anonymisées, et les transférer sur la nouvelle DB.

Exemple de script

```
#!/bin/bash

export SRC_DB_URL=$SCALINGO_POSTGRESQL_URL
export DEST_DB_URL=$METABASE_DB_URL

# analytics_user
psql $SRC_DB_URL -c "DROP TABLE IF EXISTS analytics_user"
psql $SRC_DB_URL -c "
CREATE TABLE analytics_user AS
SELECT
  users_user.id,
  users_user.is_staff,
  users_user.is_active,
  users_user.date_joined,
  users_user.is_valid
FROM users_user"
psql $SRC_DB_URL -c "ALTER TABLE analytics_user ADD PRIMARY KEY (id)"
# ajouter les index ici si necessaire

pg_dump $DATABASE_URL -O -t analytics_user -c | psql $DEST_DB_URL


# à répéter avec les autres tables
```

#### Mise à jour manuelle

```
scalingo --app myapp-prod run export-db-metabase.sh
```

#### Mise à jour automatisée, avec le scheduler Scalingo

*   Si nécessaire, rajouter un test au début du script de transfert pour que la tache ne tourne qu’en production; par exemple:

    ```
    if [ "$ENVIRONMENT" != "production" ];then exit 0; fi
    ```
* demander au support Scalingo de vous ajouter à la beta publique de leur scheduler\
  [https://doc.scalingo.com/platform/app/task-scheduling/scalingo-scheduler](https://doc.scalingo.com/platform/app/task-scheduling/scalingo-scheduler)
*   ajouter un fichier cron.json à la racine de votre projet. Le format de “command” est au standard crontab

    ```
    {
      "jobs": [
        { "command": "25 1 * * * export-db-metabase.sh", "size": "S" }
      ]
    }
    ```
* une fois cette modification deployée, vous pouvez controler sa bonne prise en compte :\
  `scalingo --app myapp-prod cron-tasks`
* les logs de la commande apparaissent dans les logs applicatifs scalingo

### Chiffrage des données au repos

{% embed url="https://www.metabase.com/docs/latest/operations-guide/encrypting-database-details-at-rest.html" %}
Documentation Metabase du chiffrage au repos
{% endembed %}

* Ajouter la variable d’environnement MB\_ENCRYPTION\_SECRET\_KEY à l’app metabase
* Relancer le container
* Dans l’admin Metabase, re-sauvegarder la connexion
* Dans la DB metabase, vérifier que le champ “details” de la table `table metabase_database` est maintenant cryptée
