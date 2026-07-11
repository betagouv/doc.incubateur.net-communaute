---
description: Plateforme open-source d'analytics
---

# Metabase

[![Sanity-check: B](https://camo.githubusercontent.com/8fac053d2be7851f30ce264d562be328c250301dec3e3ed1f3655103b63e7463/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f73616e6974795f636865636b2d422d6c69676874626c7565)](https://sanity-check.numericite.eu/posts/1da94d73-7210-445c-b058-a4d294e4b716) [![type: self-hosted](https://camo.githubusercontent.com/653e122436d6e1bf5486583ccffcf14154da7045e1c303d58c30e3e3f31e8fba/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f747970652d73656c665f686f737465642d626c7565)](https://camo.githubusercontent.com/653e122436d6e1bf5486583ccffcf14154da7045e1c303d58c30e3e3f31e8fba/68747470733a2f2f696d672e736869656c64732e696f2f62616467652f747970652d73656c665f686f737465642d626c7565)

Metabase est un outil open-source et gratuit qui permet de créer des tableaux de bord pour afficher des statistiques, des indicateurs ou des courbes.

Un éditeur permet d'enregistrer des "questions" (retranscrites en requêtes de base de données). L'affichage de la "réponse" est ensuite facilement configurable sous forme de graphique, de tableau, etc.

Metabase permet de publier les tableaux de bord ou de les intégrer dans un autre site via une `iframe`.

* [Voir la documentation](https://www.metabase.com/docs/latest/) (en anglais)

Cet outil s'adresse :

* à un rôle administrateur au profil plutôt technique ;
* aux équipes techniques qui sauront configurer les requêtes de statistiques ;
* aux chargé.es de déploiement, intra-preneur.se, chargé.e de produit qui exprimeront leurs besoins d'indicateurs pour suivre et piloter l'évolution de la Startup d'Etat ;
* au grand public (via les tableaux de bord publiés)

{% hint style="warning" %}
La gestion des données personnelles est un point d'attention important lors de l'affichage de données statistiques.

Il est conseillé de dupliquer vos données en les anonymisant dans une seconde base spécifique à Metabase.
{% endhint %}

### Recommandations

#### Isolation des données

* Ne connectez pas directement votre base de données de production à Metabase
* Il est recommandé d'exporter des données dédiées pour Metabase, anonymisées ou consolidées, dans une base dédiée et isolée de votre production.
* Ajoutez la variable d’environnement `MB_ENCRYPTION_SECRET_KEY` à l’instance Metabase

{% hint style="warning" %}
* Pensez à bien connecter une base PostgreSQL pour persister votre config metabase. Ajoutez un addon "PostgreSQL" puis ajoutez la variable d'env `DATABASE_URL=$SCALINGO_POSTGRESQL_URL` a votre application
* Vous pouvez ajouter un filtre oauth2-proxy devant votre metabase pour mieux le protéger, cf [exemple pour scalingo](https://github.com/betagouv/oauth2-deploy-demo)
{% endhint %}

#### Accès contrôlé

Il est conseillé de créer des utilisateurs Postgres dédiés pour Metabase, et en `read-only`.

👉 Cf les exemples dans la [doc de déploiement sur Scalingo](metabase.md)

**Protection contre les failles Metabase**

Pour se prémunir d'éventuelles failles sur Metabase ou de vol d'accès, protégez-le derrière un proxy d'authentification. [oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) en est un exemple, il permet de limiter l'accès en réutilisant un système d'authentification connu (tel que GitHub...).

Si vous souhaitez tout de même exposer les pages publiques, vous aurez besoin de mettre en "whitelist" les endpoints suivants avec le paramètre `--skip-auth-route` :

`^/public/.*,^/app/dist/.*,^/api/public/.*,^/api/session/.*,^/app/assets/.*`

### Ressources

* Une [présentation vidéo Metabase en français](https://youtu.be/3sEmPG3Ydrg?si=l3emB4\_dC253R2JP\&t=193)
* Exemples d'outils d'anonymisation :
  * [datanymizer](https://github.com/datanymizer/datanymizer)
  * [postgresql-anonymizer](https://postgresql-anonymizer.readthedocs.io/en/stable/)

### Installation

Metabase peut être utilisé en SaaS (Software as a Service) ou hébergé directement sur votre infrastructure.

Dans le cas des Startup d'Etat, il est conseillé d'héberger Metabase directement afin de garder le contrôle des serveurs et de leur localisation.

Plusieurs partenaires de beta.gouv proposent des procédures simples pour déployer le logiciel. (_liste non exhaustive_).

* [Scalingo](https://doc.scalingo.com/platform/getting-started/getting-started-with-metabase) cf les [instructions de déploiement](metabase.md)
* [Clever Cloud](https://www.clever-cloud.com/fr/blog/engineering/2019/02/20/how-to-install-metabase/)
