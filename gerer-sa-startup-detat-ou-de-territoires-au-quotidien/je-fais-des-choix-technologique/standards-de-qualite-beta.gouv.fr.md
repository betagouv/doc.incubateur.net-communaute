---
description: >-
  Ces standards ont pour objectifs d'aider les équipes à construire et à opérer
  des services publics numériques exemplaires.
---

# Standards de qualité beta.gouv.fr

Lorsqu'un service numérique fait partie du réseau beta.gouv.fr, nous nous attendons à ce qu'il réponde à un haut niveau de standard. beta.gouv.fr a pour objectif de créer des services publics numériques :&#x20;

* **utiles** : qui répondent vraiment aux besoins des utilisateurs de manière évolutive, qui donnent une vraie solution à leur problème, avec un impact mesurable, qu'il soit administratif (réduction des délais de traitement par exemple), environnemental, social, économique ;&#x20;
* **faciles à utiliser** : qui soient accessibles par tout le monde, quel que soit le niveau de l'utilisateur ou de l'utilisatrice en matière de numérique. En particulier, éviter à tout prix de construire des services dont l'expérience pourrait être ressentie comme kafkaïenne, impersonnelle, compliquée et frustrante ;&#x20;
* **exemplaires** : open source, respectueux des données personnelles, sécurisés, accessibles.&#x20;

{% hint style="info" %}
Un "**standard**" c’est un critère d’évaluation explicite de quelque chose qu’on fait ensemble. Elle permet d'introduire une notion de jugement : “_ce qu’on a fait ici c’est pas au standard, il va falloir le rattraper_”.&#x20;
{% endhint %}

## Standards de qualité produit

*   L'équipe est pilotée par un **processus de design proche des usagers** : il est normal pour les développeuses et les développeurs d'aller à la rencontre des utilisateurs, et d'inviter des utilisateurs aux séances de design.

    > L'équipe Aidants Connect se demande comment organiser la liste des usagers sur son service. Ils invitent Sandrine à leur atelier pour voir avec elle la façon dont elle utilise cette liste aujourd'hui et les filtres et options de tri dont elle a besoin.
* L'équipe est **à l'écoute des utilisateurs et accessible**, avec un **** [**haut standard de service aux utilisateurs**](https://djo.medium.com/obsession-service-client-captain-train-cb0b91467fd9) :
  * pas d'adresses mail "no-reply" ;&#x20;
  * répondre à chaque demande d'un utilisateur ;&#x20;
  * adopter une posture humble au service des utilisateurs ;&#x20;
  * permettre aux utilisateurs de faire des retours facilement (par exemple avec le bouton ["Je Donne mon Avis"](../je-gere-mon-produit-et-son-impact/definir-et-mesurer-limpact/comment-integrer-le-bouton.md))&#x20;
* Les services sont, à terme, accessibles pour tous et toutes : [**kit d'accessibilité**](../jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/kit-accessibilite/)****
* Une **page /stats** rend compte des mesures d'impact.
* Le **langage** utilisé sur les interfaces est **clair, direct et sans jargon**.
* L'équipe développe le produit dans un **esprit de sobriété**, en priorisant les fonctionnalités les plus simple possible pour prouver l'impact sur les utilisateurs (par exemple : [prioriser un parcours bien conçu plutôt qu'une Foire aux questions](https://alistapart.com/article/no-more-faqs-create-purposeful-information-for-a-more-effective-user-experi/), prioriser une FAQ bien documentée à un _chatbot_)

{% hint style="info" %}
Ces standards de qualité produit sont rappelés par [l'Observatoire des services publics numériques de qualité](https://observatoire.numerique.gouv.fr).&#x20;
{% endhint %}

{% hint style="info" %}
L'outil [**dashlord**](../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/dashlord/) permet de situer sa Startup d'État par rapport à une bonne partie de ces standards de qualité. Toutes les Startup d'État sont invitées à y ajouter leur(s) url(s) et à consulter le tableau de bord régulièrement.&#x20;
{% endhint %}

## Standards de qualité logicielle

* Le code source est **ouvert**, y compris à la contribution externe.
* Le code est instrumenté par des **tests automatisés**.
* Le code est **déployé fréquemment**, idéalement en continu.
* Le code est écrit en utilisant les **standards** du langage (ex : pep8 en python) et du framework.

{% hint style="info" %}
**Quelle langue utiliser dans le développement de mon produit ?** :flag\_fr: **** :flag\_gb:****

Tout ce qui concerne le métier (README, Pull Requests, documentation, ...) doit être écrit **en Français** :flag\_fr:. Par contre, tout ce qui concerne la mécanique du code doit être **en Anglais** :flag\_gb: par souci de cohérence avec la langue de ces langages de programmation.
{% endhint %}

## Standards de sécurité

*   Les sites sont sécurisés par **SSL** ;

    > Cette option est disponible en un clic sur Scalingo.
* Activez les HTTPS Security Headers et ne pas utiliser les attributs "style" en html ni embarquer du javascript dans le HTML ;
* Activez la vérification de failles de sécurité et la surveillance des dépendances (Dépendabot) sur Github.
* Suivre nos bonnes pratiques d'[hygiène informatique et de sécurité](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/bienvenue/premier-pas-indispensable-creer-ta-fiche-membre#2-prendre-connaissance-des-regles-dhygiene-informatique-et-de-securite-politique-byod), notamment :&#x20;
  * Choisissez des mots de passe longs (20 caractères minimum), complexes et uniques par service ;
  * Crééz un compte par personne et évitez de partager un compte si c'est possible de faire autrement ;
  * Activez le 2FA sur tous vos services ;
  * Utilisez un gestionnaire de mots de passe pour stocker vos mots de passe.

{% hint style="info" %}
Les incubateurs du réseau beta.gouv.fr ont parfois des règles de sécurité spécifiques. Par exemple, la Fabrique des Affaires sociales a documenté les siens [ici](https://socialgouv.github.io/support/#/README).
{% endhint %}

{% hint style="info" %}
Pour aider les développeuses et les développeurs qui lancent un nouveau service depuis une page blanche, un [kit de démarrage](../la-vie-dune-se/construction/kit-de-demarrage.md) a été documenté. Ce kit prend en compte les standards définis ci-dessus.
{% endhint %}

{% hint style="info" %}
Pour inspiration, [lire ici](https://www.gov.uk/service-manual/service-standard) les standards de Gov.uk au Royaume-Uni 🇬🇧
{% endhint %}

