---
description: Plateforme open-source d'analytics
---

# Metabase

Metabase est un outil open-source et gratuit qui permet de créer des tableaux de bord pour afficher des statistiques, des indicateurs ou des courbes.

Un éditeur permet d'enregistrer des "questions" (retranscrites en requêtes de base de données). L'affichage de la "réponse" est ensuite facilement configurable sous forme de graphique, de tableau, etc.

Metabase permet de publier les tableaux de bord ou de les intégrer dans un autre site via une `iframe`.

* [Voir la documentation](https://www.metabase.com/docs/latest/) (en anglais)
* Le [Metabase mutualisé](https://metabase.incubateur.net) de beta.gouv

Cet outils s'adresse :&#x20;

* à un rôle administrateur au profil plutôt technique ;
* aux équipes techniques qui sauront configurer les requêtes de statistiques ;
* aux chargé.es de déploiement, intra-preneur.se, chargé.e de produit qui exprimeront leurs besoins d'indicateurs pour suivre et piloter l'évolution de la Startup d'Etat ;
* au grand public (via les tableaux de bord publiés)

{% hint style="warning" %}
la gestion des données personnelles est un point d'attention important lors de l'affichage de données statistiques.

Il est conseillé de dupliquer vos données en les anonymisant dans une seconde base spécifique à Metabase.
{% endhint %}

### Installation

Metabase peut être utilisé en SaaS (Software as a Service) ou hébergé directement sur votre infrastructure.

Dans le cas des Startup d'Etat, il est conseillé d'héberger Metabase directement afin de garder le contrôle des serveurs et de leur localisation.

Plusieurs partenaires de beta.gouv proposent des procédures simples pour déployer le logiciel. (_liste non exhaustive_).

* [Scalingo](https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase)
* [Clever Cloud](https://www.clever-cloud.com/fr/blog/engineering/2019/02/20/how-to-install-metabase/)

### Déploiement chez Scalingo

Scalingo permet de déployer une instance de Metabase en un clic. L'instance sera fonctionnelle, configurable et relativement sécurisée.

Dans notre cas, nous déployons Metabase chez Scalingo et nous nous connectons à une application hébergée chez Scalingo. La base de données de l'application est accessible via leur réseau privé.&#x20;

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

_La documentation officielle est ici :_ [_https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase_](https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase)__

#### Créer un utilisateur de base de données spécifique à Metabase

Pour des raisons de sécurité, il est fortement recommandé de donner un accès en lecture seule (_read-only)_ à Metabase sur votre base de production. La création d'un nouvel utilisateur se fait dans l'interface de votre [dashboard Scalingo](https://dashboard.scalingo.com). Il faut ensuite lui donner des permissions de lecture sur chaque table utilisée par vos requêtes Metabase.&#x20;

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
