---
description: >-
  Cette page vise à répondre aux principales questions que des personnes
  développeuses peuvent se poser en arrivant chez beta.gouv.fr. Une session
  d'embarquement est également prévue pour t'accueillir !
---

# 🧰 Kit de démarrage dev

L'objectif des 6 premiers mois est d'**avoir de l'impact sur au moins un usager**, en écrivant du code de qualité en terme d'accessibilité (front), sécurité (back) et données utilisateurs (RGPD).

La communauté beta.gouv est composée de **près de 300 développeur et développeuses qui peuvent t'aider à monter à bord** ! Assure toi que tu as bien rejoins le canal [`Domaine-dev`](https://tchap.gouv.fr/#/room/!RZYCMTpOqgMrCofbMs:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr&via=agent.social.tchap.gouv.fr&via=agent.finances.tchap.gouv.fr) sur Tchap, et n'hésite pas à y faire coucou quand tu arrives 👋 !

## Faut-il commencer à coder dès le début ?

Pas nécessairement ! Il peut être très pertinent de démarrer un projet en utilisant des technologies "No Code" ou en mode "conciergerie" (traiter les demandes utilisateurs à la main dans un premier temps) afin de valider très rapidement des hypothèses de problèmes (et donc de solution). La marque d'un très bon dev est de savoir choisir le meilleur outil en fonction du contexte et de l'état d'avancement du produit et de ne pas foncer tête baissée dans une solution technique.

{% hint style="warning" %}
Beaucoup d'outils "No Code" ne sont pas hébergés en France et/ou ne sont pas adaptés au stockage de données sensibles !
{% endhint %}

## Le Kit de démarrage

{% hint style="info" %}
Si tu viens de rejoindre la communauté, Bienvenue !\
\
Pense à t'inscrire [à la prochaine session d'embarquement dédiée aux devs](https://airtable.com/shrUCbUT72KtKefsu) si ça n'est pas déjà fait. (voir aussi [les slides](https://docs.google.com/presentation/d/1PJsI2N0ja5--j__dDlrOXQKt_v9hTsV2uvODOOmZW68/edit#slide=id.g2df92dfbab2_0_405)).\
\
Identifie [tes référent(e)s tech](../../../gerer-son-produit/gestion-au-quotidien/tech/to-do-liens-avec-les-referents-techs.md) qui sont à ta disposition tout au long de ton parcours
{% endhint %}

#### Quelques grands principes <a href="#quelques-grands-principes" id="quelques-grands-principes"></a>

* Privilégie une approche **incrémentale** et **pragmatique**. Par exemple, il est beaucoup plus efficace de mettre en place les bases de sécurité, du test automatisé et d'accessibilité dès le début du produit plutôt que de tenter de les rajouter une fois le produit construit.
* Rappelle toi que **la tech n'est qu'un outil** au service d'un problème que l'on cherche à résoudre. Il est par exemple parfaitement possible de démarrer une phase de construction avec des outils No Code et une landing page, ou même en mode "conciergerie", si cela permet de tester des hypothèses plus rapidement.
* Utilise de la [**"Boring Tech"**](http://boringtechnology.club) **et base toi sur les conventions** des langages et technos que tu utilises. Cela rendra ton code plus facile à faire évoluer et à maintenir dans le temps.

N'hésite pas à challenger ton équipe si tu considères que te lancer dans le code est prématuré. Un.e bon.ne dev sait aussi (et surtout) quand ne **pas** coder et peut proposer des alternatives pour tester des hypothèses de solutions.

{% hint style="info" %}
**sillon** est le livre blanc qui recense toutes nos recommandations pour lancer un service numérique dans l'administration : [https://sillon.incubateur.net](https://sillon.incubateur.net)
{% endhint %}

{% hint style="info" %}
Plusieurs templates sont proposés par la communauté et permettent de démarrer rapidement un nouveau projet en embarquant nos recommandations : [https://github.com/betagouv/?language=\&q=template\&sort=\&type=all](https://github.com/betagouv/?language=\&q=template\&sort=\&type=all)
{% endhint %}

### Standards de qualité beta.gouv.fr

{% hint style="danger" %}
Ne pas respecter les standards de qualité devra être justifié.
{% endhint %}

{% content-ref url="../../../gerer-son-produit/les-standards/" %}
[les-standards](../../../gerer-son-produit/les-standards/)
{% endcontent-ref %}

{% content-ref url="../../../gerer-son-produit/les-standards/standards-de-qualite-beta.gouv.fr.md" %}
[standards-de-qualite-beta.gouv.fr.md](../../../gerer-son-produit/les-standards/standards-de-qualite-beta.gouv.fr.md)
{% endcontent-ref %}

{% content-ref url="../../../gerer-son-produit/aide-a-la-mise-en-application-des-standards/choisir-des-technologies.md" %}
[choisir-des-technologies.md](../../../gerer-son-produit/aide-a-la-mise-en-application-des-standards/choisir-des-technologies.md)
{% endcontent-ref %}

{% content-ref url="./" %}
[.](./)
{% endcontent-ref %}

Pour t'aider à situer ta startup d'État par rapport à ces standards de qualité, ajoute ton url à l'outil [DashLord](https://dashlord.incubateur.net) en ouvrant une PR [ici](https://github.com/betagouv/dashlord/blob/main/dashlord.yml). Tu trouveras plus d'informations sur la page ci-dessous.

{% content-ref url="../../../les-outils-de-la-communaute/dashlord/" %}
[dashlord](../../../les-outils-de-la-communaute/dashlord/)
{% endcontent-ref %}

### Cadre légal

Dans le cadre du travail avec l'administration, il est important de connaître les contraintes légales en terme de Sécurité, de Protection des donnée et d'accessibilité.

{% content-ref url="../../../gerer-son-produit/aide-a-la-mise-en-application-des-standards/protection-des-donnees-personnelles/" %}
[protection-des-donnees-personnelles](../../../gerer-son-produit/aide-a-la-mise-en-application-des-standards/protection-des-donnees-personnelles/)
{% endcontent-ref %}

{% content-ref url="../../../gerer-son-produit/les-standards/securite.md" %}
[securite.md](../../../gerer-son-produit/les-standards/securite.md)
{% endcontent-ref %}

{% content-ref url="../../../gerer-son-produit/les-standards/accessibilite-and-inclusion.md" %}
[accessibilite-and-inclusion.md](../../../gerer-son-produit/les-standards/accessibilite-and-inclusion.md)
{% endcontent-ref %}

Tout produit numérique incubé doit avoir une licence. [Voir les licences utilisables](https://documentation.ouvert.numerique.gouv.fr/ressources/guide-juridique-du-logiciel-libre-dans-ladministration/#licences-indispensables).

### Demander de l'aide

Il est crucial de ne pas rester seul face à des choix technologiques potentiellement structurants pour la suite du produit — surtout lorsqu'on est le premier profil technique recruté sur une startup d'Etat. Tu peux t'appuyer sur de multiples ressources au sein de la communauté

{% content-ref url="../../../gerer-son-produit/gestion-au-quotidien/tech/support-tech.md" %}
[support-tech.md](../../../gerer-son-produit/gestion-au-quotidien/tech/support-tech.md)
{% endcontent-ref %}

{% content-ref url="../../../solliciter-et-contribuer-a-la-communaute/je-sollicite-de-laide-transverse/" %}
[je-sollicite-de-laide-transverse](../../../solliciter-et-contribuer-a-la-communaute/je-sollicite-de-laide-transverse/)
{% endcontent-ref %}

{% content-ref url="../../se-former/les-formations-a-venir.md" %}
[les-formations-a-venir.md](../../se-former/les-formations-a-venir.md)
{% endcontent-ref %}
