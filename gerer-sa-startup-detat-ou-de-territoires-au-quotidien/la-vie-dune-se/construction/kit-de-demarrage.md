---
description: Outils et ressources pour développer un produit minimal
---

# Kit de démarrage pour lancer son produit minimum viable

L'objectif des 6 premiers mois est d'**avoir de l'impact sur au moins un usager**, en écrivant du code de qualité en terme d'accessibilité \(front\), sécurité \(back\) et données utilisateurs \(RGPD\).

Pour cela, nous mettons à la disposition un _Kit de démarrage_ :

* **Langages/Frameworks de référence** : _Javascript_ \(Express\), _Python_ \(Django\) et _Ruby_ \(ROR\) :

  * Ces langages sont flexibles, sécuritaire et facile à prendre en main lors du passage à l'échelle. 
  * Il est facile de trouver des personnes compétentes pour aider.
  * Des templates et librairies existent déjà : [template Express](https://github.com/betagouv/template-design-system-de-l-etat), [librairie Django](https://github.com/entrepreneur-interet-general/django-dsfr)

  Si vous avez des besoins qui ne sont pas couverts par ces langages, discutez-en avec l'équipe technique de BetaGouv. 

* **Gestionnaire de versions** : _Git_ avec [le compte github de beta.gouv.fr](https://github.com/betagouv).
* **Design System** : le Design System de l'État dont les composants sont accessibles nativement.
  * Documentation du [design system](https://gouvfr.atlassian.net/wiki/spaces/DB/pages/223019574/D+veloppeurs) 
  * Démo sur [template.incubateur.net](https://template.incubateur.net)
  * [Librairies](https://template.incubateur.net/ressources) \(Django...\)
* **Hébergement** : dépend du type de données hébergées. 
  * Plusieurs options disponibles décrite dans la section dédiée à l'[infra](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra#services-pratiques-pour-lancer-un-site-web)
* **Intégration et déploiement continus \(CI / CD\)** : 
  * _Circle CI_ lié à l'organisation betagouv sur github. 
  * _Github Actions_, utilisées par de plus en plus d'équipes.
* **Suivi des erreurs** : _Sentry_ :
  * Un compte est à disposition des équipes \(invitation sur [\#incubateur-ops](https://mattermost.incubateur.net/login?redirect_to=%2Fbetagouv%2Fchannels%2Fincubateur-ops)\)
* **Analytics** : [stats.data.gouv.fr](https://stats.data.gouv.fr)
  * Matomo est hébergé par nos soins. Ce service est respectueux des données des utilisateurs, et le configurer comme préconisé par la CNIL permet de suivre son audience sans avoir à mettre un bandeau avertissant les visiteurs sur le dépôt de cookies. Attention ! Le nombre de visiteurs sur votre site est rarement l'équivalent d'une mesure d'impact.

## Standards de qualité beta.gouv.fr

Les standards de qualité beta.gouv.fr sont référencés à la page ci-dessous. 

{% hint style="warning" %}
Ne pas respecter les standards de qualité devra être justifié.
{% endhint %}

{% page-ref page="../../je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md" %}

Pour t'aider à situer ta Startup d'État par rapport à ces standards de qualité, ajoute ton url à l'outil [dashlord](https://dashlord.incubateur.net/). Tu trouveras plus d'informations sur la page ci-dessous.

{% page-ref page="../../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/dashlord/" %}

## Contraintes légales

Dans le cadre du travail avec l'administration, il est important de connaitre les contraintes légales en terme de Sécurité, RGPD et Accessibilité.

* [RGPD et sécurité](../../je-securise-mon-produit/guide-rgpd-et-securite.md) 
* [Accessibilité](../../jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/)

Nous proposons aussi une formation dédiée : contactez Anna-Livia pour plus d'informations.

