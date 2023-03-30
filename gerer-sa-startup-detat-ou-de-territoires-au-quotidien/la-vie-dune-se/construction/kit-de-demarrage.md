---
description: >-
  Outils et ressources pour développer un produit minimal lors d'une phase de
  construction
---

# Kit de démarrage à destination des Devs

L'objectif des 6 premiers mois est d'**avoir de l'impact sur au moins un usager**, en écrivant du code de qualité en terme d'accessibilité (front), sécurité (back) et données utilisateurs (RGPD).

## Faut-il commencer à coder dès le début ?

Pas nécessairement ! Il peut être très pertinent de démarrer un projet en utilisant des technologies ["No Code"](../../jactive-la-croissance-de-ma-se-growth-hacking/no-code.md) ou en mode "conciergerie" (traiter les demandes utilisateurs à la main dans un premier temps) afin de valider très rapidement des hypothèses de problèmes (et donc de solution). La marque d'un très bon dev est de savoir choisir le meilleur outil en fonction du contexte et de l'état d'avancement du produit et de ne pas foncer tête baissée dans une solution technique.

{% hint style="warning" %}
Beaucoup d'outils "No Code" ne sont pas hébergés en France et/ou ne sont pas adaptés au stockage de données sensibles !
{% endhint %}

## Le Kit de démarrage

{% hint style="info" %}
N'hésite pas à passer du temps à explorer la documentation de l'incubateur, et notamment les pages dédiées aux [choix technologiques](../../je-fais-des-choix-technologique/).

Si tu viens de rejoindre la communauté, pense aussi à t'inscrire [à la prochaine session d'embarquement dédiée aux devs](https://airtable.com/shrUCbUT72KtKefsu) si ça n'est pas déjà fait.
{% endhint %}

*   **Langages/Frameworks de référence** : _Javascript_ (NodeJS/Express) et _Python_ (Django) :

    * Ces langages sont flexibles, sécurisés et faciles à prendre en main lors de l'accélération ou du transfert du produit.
    * Il est facile de trouver des personnes compétentes pour aider.
    * Des templates et librairies intégrant le [Design System de l'État](broken-reference/) existent déjà : [template Express](https://github.com/betagouv/template-design-system-de-l-etat), [librairie Django](https://github.com/entrepreneur-interet-general/django-dsfr)

    Si vous avez des besoins qui ne sont pas couverts par ces langages, discutez-en avec l'équipe technique de BetaGouv.
* **Gestionnaire de versions** : _Git_ avec [le compte github de beta.gouv.fr](https://github.com/betagouv).
* **Design System** : le Design System de l'État dont les composants sont accessibles nativement.
  * Documentation du [design system](https://gouvfr.atlassian.net/wiki/spaces/DB/pages/223019574/D+veloppeurs)
  * Démo sur [template.incubateur.net](https://template.incubateur.net)
  * [Librairies](https://template.incubateur.net/ressources) (Django...)
* **Hébergement** : ce choix dépend du type de données hébergées.
  * Plusieurs options disponibles sont décrites dans la section dédiée à l'[infra](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra#services-pratiques-pour-lancer-un-site-web)
* **Intégration et déploiement continus (CI / CD)** :
  * _Circle CI_ lié à l'organisation betagouv sur github.
  * _Github Actions_, utilisées par de plus en plus d'équipes.
* **Suivi des erreurs** : _Sentry_
  * Un compte est à disposition des équipes (invitation sur [#incubateur-ops](https://mattermost.incubateur.net/login?redirect\_to=%2Fbetagouv%2Fchannels%2Fincubateur-ops))
* **Analytics** : [stats.data.gouv.fr](https://stats.data.gouv.fr)
  * Matomo est hébergé par nos soins. Ce service est respectueux des données des utilisateurs, et le configurer comme préconisé par la CNIL permet de suivre son audience sans avoir à mettre un bandeau avertissant les visiteurs sur le dépôt de cookies. Attention ! Le nombre de visiteurs sur votre site est rarement l'équivalent d'une mesure d'impact.

## Standards de qualité beta.gouv.fr

Les standards de qualité beta.gouv.fr sont référencés à la page ci-dessous.

{% hint style="warning" %}
Ne pas respecter les standards de qualité devra être justifié.
{% endhint %}

{% content-ref url="../../je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md" %}
[standards-de-qualite-beta.gouv.fr.md](../../je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md)
{% endcontent-ref %}

Pour t'aider à situer ta Startup d'État par rapport à ces standards de qualité, ajoute ton url à l'outil [Dashlord](https://dashlord.incubateur.net) en ouvrant une PR [ici](https://github.com/betagouv/dashlord/blob/main/dashlord.yml). Tu trouveras plus d'informations sur la page ci-dessous.

{% content-ref url="../../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/dashlord/" %}
[dashlord](../../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/dashlord/)
{% endcontent-ref %}

## Cadre légal

Dans le cadre du travail avec l'administration, il est important de connaitre les contraintes légales en terme de Sécurité, RGPD et Accessibilité.

{% content-ref url="../../je-securise-mon-produit/guide-rgpd-et-securite.md" %}
[guide-rgpd-et-securite.md](../../je-securise-mon-produit/guide-rgpd-et-securite.md)
{% endcontent-ref %}

{% content-ref url="../../construire-un-service-accessible-et-inclusif/accessibilite-et-rgaa/" %}
[accessibilite-et-rgaa](../../construire-un-service-accessible-et-inclusif/accessibilite-et-rgaa/)
{% endcontent-ref %}

Nous proposons aussi des formations dédiée : contactez l'équipe technique de beta pour plus d'informations.

## Demander de l'aide

Il est crucial de ne pas rester seul face à des choix technologiques potentiellement structurants pour la suite du produit — surtout lorsqu'on est le premier profil technique recruté sur une Startup d'Etat. Tu peux t'appuyer sur de multiples ressources au sein de la communauté :

### L'équipe technique de beta

Son rôle est d'accompagner les Startups d'Etat dans la construction de produits de qualité et respectueux de la réglementation en termes de sécurité, d'accessibilité, et de respect du RGPD. Elle est aujourd'hui constituée de Anna-Livia Gomart (CPO), Philippe Libat (Ops) et de Vincent Viers (responsable de l'expérience développeur) que tu peux solliciter via Mattermost.

### Les devs transverses

Les devs transverses travaillent sur les outils mutualisés de la communauté et peuvent accompagner ponctuellement les SE sur des points techniques. Tu peux les solliciter sur le canal Mattermost [`#dinum-dev-transverse`](https://mattermost.incubateur.net/betagouv/channels/dinum-dev-transverse)

### Les autres devs de la communauté

N'hésite pas à solliciter de l'aide sur des points précis dans un des canaux préfacés en `domaine-*` (ex. [`#domaine-dev`](https://mattermost.incubateur.net/betagouv/channels/domaine-dev), [`#domaine-django`](https://mattermost.incubateur.net/betagouv/channels/domaine-django), etc.)
