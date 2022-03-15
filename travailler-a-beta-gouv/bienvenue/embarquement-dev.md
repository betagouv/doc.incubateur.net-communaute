---
description: >-
  Cette page vise à répondre aux principales questions que des personnes
  développeuses pourraient se poser en arrivant chez beta.gouv. Une session
  d'embarquement est également prévue pour t'accueillir !
---

# Embarquement dev

## Inscris-toi à une session d'accueil pour les Devs

Elle à lieu tous les premiers mardi du mois à 14h. Pour t'inscrire, c'est [ici](https://airtable.com/shrUCbUT72KtKefsu).

## Identifie tes contacts tech chez beta.gouv.fr

### L'équipe technique transverse

Une équipe tech transverse existe au sein de l'incubateur. Son rôle est de s'assurer que les devs de la communauté puissent travailler au mieux et développer des produits impactants et de qualité.

* Anna-Livia Gomart (CPO)
* Lucas Charrier (Dev transverse)
* Philippe Libat (Référent DevOps)
* Vincent Viers (Responsable Developer Experience)

{% hint style="info" %}
N'hésite pas a contacter Vincent ou un autre membre de l'équipe si tu rencontres une difficulté lors de l'une de tes missions.
{% endhint %}

### La communauté beta.gouv.fr

La communauté beta.gouv est composée de **près de 300 développeur/euses qui peuvent t'aider à monter à bord** ! Assures-toi que tu as bien rejoins le canal [`~domaine-dev`](https://mattermost.incubateur.net/betagouv/channels/domaine-dev) sur Mattermost, et n'hésite pas à y faire coucou quand tu arrives :wave:.

{% hint style="info" %}
Tout membre de la communauté peut dédier jusqu'à 10% de son temps facturé à des actions transverses, par exemple pour donner un coup de main aux devs d'un autre projet que le sien ou proposer une task force sur un sujet qui l'intéresse.
{% endhint %}

## Familiarise toi avec nos standards de qualité

{% content-ref url="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md" %}
[standards-de-qualite-beta.gouv.fr.md](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md)
{% endcontent-ref %}

### Quelques grands principes

* Privilégie une approche **incrémentale** et **pragmatique**. Par exemple, il est beaucoup plus efficace de mettre en place les bases de sécurité, du test automatisé et d'accessibilité dès le début du produit plutôt que de tenter de les rajouter une fois le produit construit.
* Rappelle toi que **la tech n'est qu'un outil** au service d'un problème que l'on cherche à résoudre. Il est par exemple parfaitement possible de démarrer une phase de construction avec des outils No Code et une landing page, ou même en mode "conciergerie", si cela permet de tester des hypothèses plus rapidement.
* Utilise de la [**"Boring Tech"**](http://boringtechnology.club) **et base toi sur les conventions** des langages et technos que tu utilises. Cela rendra ton code plus facile à faire évoluer et à maintenir dans le temps.

{% hint style="info" %}
N'hésite pas à challenger ton équipe si tu considères que te lancer dans le code est prématuré. Un.e bon.ne dev sait aussi (et surtout) quand ne **pas** coder et peut proposer des alternatives pour tester des hypothèses de solutions.
{% endhint %}

### Standards produit

Les produits développés par beta.gouv.fr respectent les principes de :

* 👂 proximité avec les utilisateurs et utilisatrices
* 🪶 sobriété et simplicité — commencer en conciergerie
* 📊 transparence — mise en ligne d’une page stats
* 🗒 clarté dans le langage des interfaces utilisateurs

Plus de détails sur nos standards produits [ici](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr#standards-de-qualite-produit).

### Standards technologiques

Le code source développé est :

* 🔎 ouvert, y compris à la contribution
* ✅ testé automatiquement
* 🔁 déployé fréquemment (idéalement en continu)
* 🆗 respectueux des standards du langage et du framework (pep8, JS standard style, etc.)
* 📝 Documenté
* 🔠 Compréhensible par les non-techs

:tools: Nous recommandons 2 frameworks par défaut : **python/django** et **nodeJS/nextJS**.

🥱 Nous adhérons à l'esprit du manifeste ["boring tech"](http://boringtechnology.club) en privilégiant toujours les technos simples, éprouvées et sécurisées plutôt que le nouveau framework à la mode.

📣 Un service doit crier en cas de problème ! Un produit de qualité doit être testé et vous notifier en cas d'erreur. Suivre le GitHub flow et utiliser des Pull Requests permet aussi de repérer des erreurs potentielles avant de déployer son code.

Plus de détails sur nos standards technologiques [ici](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr#standards-de-qualite-logicielle).

### Prends connaissance des standards imposés par la loi

{% hint style="warning" %}
:scroll: le Règlement Général sur la Protection des Données (RGPD)

:scroll: l'article 47 de la loi Handicap du 11 février 2005

:scroll: les articles 9, 10 et 12 de l’ordonnance relative aux échanges électroniques entre les usagers et les autorités administratives du 8 décembre 2005, etc.)
{% endhint %}

### Standards d'Accessibilité

{% content-ref url="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/kit-accessibilite/" %}
[kit-accessibilite](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/kit-accessibilite/)
{% endcontent-ref %}

:student: Plusieurs [formations](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/formation-a-laccessibilite/) sont à ta disposition, n'hésite pas à t'y inscrire ! Nous auditons aussi régulièrement les produits de la communauté.

### Standards Sécurité

{% content-ref url="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/foire-aux-questions-sur-la-mise-en-conformite-des-services-numeriques/securite-and-homologation.md" %}
[securite-and-homologation.md](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/foire-aux-questions-sur-la-mise-en-conformite-des-services-numeriques/securite-and-homologation.md)
{% endcontent-ref %}

{% content-ref url="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/" %}
[je-securise-mon-produit](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/)
{% endcontent-ref %}

:student: Plusieurs [formations](../se-former/) sécurité sont régulièrement proposées, n'hésite pas à t'y inscrire ! Nous auditons aussi régulièrement les produits de la communauté.

### RGPD

{% content-ref url="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/guide-rgpd-et-securite.md" %}
[guide-rgpd-et-securite.md](../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/guide-rgpd-et-securite.md)
{% endcontent-ref %}

:student: Plusieurs [formations](../se-former/) autour du RGPD sont régulièrement proposées, n'hésite pas à t'y inscrire ! Nous auditons aussi régulièrement les produits de la communauté.

## Découvre les outils partagés de la communauté

La liste des services techs partagés est disponible [ici](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra#les-services-partages). Certains sont particulièrement important à connaitre :

* [**Dashlord**](../jutilise-les-outils-de-la-communaute/dashlord/) - pour vous situer par rapport aux standards de la communauté
* [**GitGuardian**](https://gitguardian.com) - pour sécuriser les produits beta contre les fuites de données
* [**Matomo**](https://stats.data.gouv.fr) - pour mesurer votre audience dans le respect du RGPD
* [**Sentry**](https://sentry.io) - pour être alerté en cas de crash de votre app
* le [**Design System de l'Etat**](broken-reference/) - pour vous faciliter la vie
* [**Dashlane**](https://dashlane.com) - pour gérer et partager vos mots de passes

## Bonus : quelques conseils pour un début de construction :construction:

* 📃 Consulter la documentation dédiée [Je Fais des Choix Technologiques](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique) et le [Kit de Démarrage](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/la-vie-dune-se/construction/kit-de-demarrage)
* 💻 Choisir un langage / framework validé par votre incubateur
* 🪶 Toujours garder la sobriété et la simplicité à l’esprit et ne pas foncer tête baissée dans l’implémentation d’une solution technique complexe
* 👋 Solliciter de l’aide et ne pas rester seul face à des choix technologiques
* 🔐 Penser à la sécurisation de vos données et à vos tests dès le début du projet
* :clock1: Appliquer les normes de qualité dès le début du projet et les inclure dans ta communication auprès de ton équipe. Le temps de dev d'une fonctionnalité doit prendre en compte le temps de créer des test, de la rendre accessible, et de t'assurer de la protection des données sensibles que tu manipules.

## Bo-bonus : les Rendez-vous Devs et Curieux :thinking:

Les devs de la communauté se réunissent régulièrement pour 1h de présentation ou d'échange sur les sujets qui les intéressent. Pour proposer un sujet ou être mis au courant des prochains évènements, direction [ce Trello](https://trello.com/invite/b/T34OXi0G/1ef60a016bd7606680208d819acb8c0a/rendez-vous-devs)
