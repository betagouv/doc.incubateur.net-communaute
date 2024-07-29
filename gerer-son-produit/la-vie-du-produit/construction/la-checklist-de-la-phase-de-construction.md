---
description: >-
  Cette page recense un certain nombre de bonnes pratiques et de standards de
  qualité que les équipes sont invitées à suivre pendant la phase de
  construction.
---

# ✅ La checklist de la phase de construction

{% hint style="info" %}
Ce document est en cours d'élaboration. Il résulte notamment d'ateliers ouverts à l'ensemble de la communauté. Pour toute question, remarque, ou contre-proposition, n'hésite pas à poster dans le canal `~startup-produit-beta`
{% endhint %}

## Preuve d'impact

_L'objectif premier de la phase de construction est de démontrer que l'hypothèse de solution à un problème permet effectivement d'améliorer la vie des usagers._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J'ai déterminé une **mesure d’impact** qui me permet de guider les développements du produit
* [ ] J'ai réalisé ma **première transaction en production** avec un vrai utilisateur
* [ ] J’ai mis une première version du service en production au bout de **3 mois**
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J’ai participé à un [atelier de mesure d'impact ](https://airtable.com/appDj3dhMMvXF9XhJ/shr7L3jxSrxsptKvs)pour challenger mon impact et sa mesure
{% endtab %}
{% endtabs %}

{% hint style="info" %}
"**en production"** ne veut pas forcément dire "en ligne" :point\_right: des équipes peuvent très bien réaliser leurs premières transactions avec leurs utilisateurs manuellement / en mode conciergerie
{% endhint %}

## Transparence

_La transparence est une valeur cruciale qui permet de construire des produits de qualité, auditables tant par le grand public que par le reste de la communauté._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Je crée une page /stats publique et commence à suivre mon impact
* [ ] Je tiens à jour ma fiche startup sur le site de beta.gouv.fr
* [ ] Je communique publiquement sur le budget de l’équipe
* [ ] J’inscris mon produit sur [Dashlord](https://dashlord.incubateur.net)
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] La mesure de mon impact sur ma page stat est automatisée
* [ ] Je partage les avancées hebdomadaires de mon équipe de manière publique sur Mattermost et au standup de beta
{% endtab %}
{% endtabs %}

## Organisation

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J'ai trouvé les rituels d’équipe qui conviennent le mieux à ma SE
* [ ] J’organise des rétros d’équipe régulières
* [ ] Je sais identifier et traiter des situation de dysfonctionnement au sein de l'équipe
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J’entretiens une relation de confiance avec mon sponsor
{% endtab %}
{% endtabs %}

## Ecoute des utilisateurs

_Rester à l'écoute des utilisateurs du service est essentiel pour construire une solution réellement utile et adaptée aux besoins des usagers._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J’ai trouvé des utilisateurs prêt à tester mon produit
* [ ] Toute l’équipe (devs compris) est au contact des usagers
* [ ] J’ai organisé une journée d’immersion auprès de mes utilisateurs
* [ ] J’ai ritualisé des moments d’échanges avec les utilisateurs (open-labs, ateliers, etc.)
* [ ] Je réalise au moins 5 tests usagers par mois
* [ ] Mes utilisateurs ont un moyen de me contacter pour me faire leurs retours (mail de support, chat, numéro de téléphone, etc.)
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] Je travaille avec un.e designer (a minima 20% du temps)
* [ ] J’ai identifié les différents types d’utilisateurs et leurs besoins / leur frustrations spécifiques
* [ ] J’ai construit une page d’accueil sur la base de mes personas
{% endtab %}

{% tab title="Bonus" %}
* [ ] Je mets en place un questionnaire standardisé de mesure de l’UX (Attrakdiff, MeCue, …)
{% endtab %}
{% endtabs %}

## Développement informatique

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J’utilise le Système de Design de l’Etat
* [ ] Je dispose d’une zone d’autonomie technique pour l’équipe (par exemple vis-a-vis de la DSI)
* [ ] Je respecte [les standards technologiques de beta.gouv.fr](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/bienvenue/embarquement-dev#standards-technologiques)
* [ ] Je passe **le minimum de temps possible** à développer des fonctionnalités secondaires ou de support (authentification, gestion de rôle, blog, etc.)
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] Je veille à l’éco-conception du produit en me référant au RGESN
{% endtab %}
{% endtabs %}

{% hint style="info" %}
Il est souvent recommandé de démarrer la phase de conception avec des outils no-code/low-code voire de privilégier le mode conciergerie pour servir ses premiers utilisateurs
{% endhint %}

## Accessibilité

_Si l'objectif premier d'une Startup d'Etat en construction reste la démonstration de son impact, garder l'accessibilité en tête permet de poser de bonnes bases pour une future homologation en phase d'accélération ou de transfert (et souvent, ça ne prend pas plus de temps_ :wink:_)._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Mon site contient une mention d’accessibilité (même si non-conforme)
* [ ] L’équipe est sensibilisée aux enjeux d’accessibilité, par exemple via la formation mensuelle Accessibilité
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] Je prends en compte l'accessibilité de mon service quand je développe de nouvelles fonctionnalité
{% endtab %}
{% endtabs %}

## Sécurité et RGPD

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Je m’assure de sécuriser les données sensibles dont je dispose (par exemple, je ne les stocke pas en local sur ma machine et je n’utilise pas de données de prod pour mes environnements de test)
* [ ] [Si mon produit rentre dans l'un des critères de la CNIL](https://www.cnil.fr/sites/default/files/atoms/files/infographie\_aipd.pdf) : j'initie une analyse d'impact relative à la protection des donnée (AIPD, aussi appelée EIVP).
* [ ] Je rédige les Conditions Générales d'Utilisation (CGU), mentions légales et Politique de Confidentialité (PC) et les soumet à l'équipe juridique.
* [ ] Je recense toutes les données traitées et les finalités qui leur sont associées dans un tableau données-finalités ([exemple](https://docs.google.com/document/d/1PQniGdnvLdjyEBbk1lFGzmG6rwnwD5bPCbvP\_XBOe4I/edit))
* [ ] Toute l'équipe est sensibilisée à l'hygiène numérique
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J’ai pris connaissance de la checklist OWASP sur les failles de sécurité
* [ ] J’ai réalisé mon premier atelier d’analyse de risque agile en équipe
{% endtab %}
{% endtabs %}
