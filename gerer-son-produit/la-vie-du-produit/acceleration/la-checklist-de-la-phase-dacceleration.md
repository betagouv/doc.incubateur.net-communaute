---
description: >-
  Cette page recense un certain nombre de bonnes pratiques et de standards de
  qualité que les équipes sont invitées à suivre pendant la phase
  d'accélération.
hidden: true
---

# 📋 Checklist de la phase d'accélération

{% hint style="info" %}
Ce document est en cours d'élaboration. Il résulte notamment d'ateliers ouverts à l'ensemble de la communauté. Pour toute question, remarque, ou contre-proposition, n'hésite pas à poster dans le canal `~startup-produit-beta`
{% endhint %}

## Déroulé de la phase d'accélération

Nous suggérons aux équipes de penser la phase d'accélération comme une alternance entre 2 temps :

* :woman\_running:des **sprints d'acquisition** durant lesquels l'objectif de l'équipe est de **faire croitre le nombre d'utilisateurs du service et de se déployer largement** (\~80% du temps de l'accélération)
* :bricks: des **temps de consolidation** durant lesquels l'équipe prend le temps de se poser pour réfléchir à son organisation, de consolider les développements parfois réalisés très rapidement pendant l'acquisition, et d'améliorer l'accessibilité et la sécurité du produit à mesure que la base d'utilisateurs augmente

{% embed url="https://docs.google.com/presentation/d/1tTM1Y2sCJK0QiGVbM_w-g5I0XXvcbJDVUkWhAugy7tg/edit#slide=id.p" %}

* [ ] Je reprends les éléments de la checklist de la phase de construction et vérifie que je l'ai bien mise en place.

{% content-ref url="../construction/la-checklist-de-la-phase-de-construction.md" %}
[la-checklist-de-la-phase-de-construction.md](../construction/la-checklist-de-la-phase-de-construction.md)
{% endcontent-ref %}

## Acquisition

_L'objectif premier de la phase d'accélération est d'étendre le service numérique à un maximum d'utilisateurs afin de maximiser son impact._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Je cartographie les potentiels utilisateurs futurs et j’organise le démarchage
* [ ] Je me fais accompagner par le programme GAMMA
* [ ] Mon service a une landing page (page d’accueil)
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J'ai mis en place des stratégies de tests A/B pour mesurer l’impact d’un changement sur le taux de conversion / impact
{% endtab %}
{% endtabs %}

## Transparence

_La transparence est une valeur cruciale qui permet de construire des produits de qualité, auditables tant par le grand public que par le reste de la communauté._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J’automatise la mesure de mon impact dans ma page /stats
* [ ] Je tiens à jour ma fiche startup sur le site de beta.gouv.fr
* [ ] Je communique publiquement sur le budget de l’équipe
* [ ] Je suis les indicateurs de qualité de mon produit sur [Dashlord](https://dashlord.incubateur.net)
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] Je partage les avancées hebdomadaires de mon équipe de manière publique sur Mattermost et au standup de beta
{% endtab %}
{% endtabs %}

## Organisation

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Je me fais accompagner sur les sujets qui nécessitent une expertise particulière (sécurité, accessibilité, juridique, etc.)
* [ ] J’ai défini un processus de priorisation des développements futurs dans le backlog
* [ ] J’organise l’équipe et mes rituels pour supporter ma croissance
* [ ] Je réfléchis à la pérennisation du financement de ma SE
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J'ai défini un processus de conception / validation auprès de mes utilisateurs
* [ ] J’entretiens une relation de confiance avec mon sponsor
{% endtab %}
{% endtabs %}

## Ecoute des utilisateurs

_Rester à l'écoute des utilisateurs du service est essentiel pour continuer à construire une solution réellement utile et adaptée aux besoins des usagers._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J’assure des démos / présentations régulières du service
* [ ] Je mesure l’expérience utilisateur sur mon service via des questionnaires standardisés de satisfaction
{% endtab %}
{% endtabs %}

## Développement informatique

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J’ai mis en place une chaine de CI/CD robuste
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] J'ai effectué et documenté un test de reprise d’activité de mon infra
{% endtab %}
{% endtabs %}

{% hint style="info" %}
Il est normal de "casser" des choses construite par le passé pendant la phase d'accélération. Veillez cependant à garder du temps pour continuer de tester votre code et de ne pas accumuler trop de dette technique.
{% endhint %}

## Accessibilité

L'accessibilité devient un vrai sujet pour les services en phase d'accélération — un nombre non-négligeable de vos utilisateurs nouvellement acquis seront touché par un ou plusieurs handicaps et il est impératif de les prendre en compte !

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] Je planifie ma montée en qualité de l’accessibilité pour atteindre le RGAA
* [ ] Je mets en place des tests automatiques
* [ ] Je teste manuellement régulièrement l'accessibilité de mon service
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] Je réalise un premier audit d’accessibilité
{% endtab %}
{% endtabs %}

## Sécurité et RGPD

_Au fur et à mesure que votre base utilisateur grandit, il devient impératif de protéger du mieux possible leurs données personnelles et de sécuriser votre produit._

{% tabs %}
{% tab title="Les standards ☝️" %}
* [ ] J'ai identifié le Responsable de la sécurité des systèmes d'information (RSSI) dans mon administration
* [ ] \[Si AIPD] Je finalise l'analyse et sa validation avec le responsable de traitement.
* [ ] J’ai réalisé un atelier d’analyse de risques agile en équipe
* [ ] Je partage le dossier avec le RSSI de mon administration, prends en compte ses retours et me renseigne sur l'autorité d'homologation.
{% endtab %}

{% tab title="Les bonnes pratiques 👌" %}
* [ ] A partir du livrable de l'atelier risques, je constitue un dossier d'homologation de sécurité.
* [ ] A ce stade, je peux solliciter un prestataire pour réaliser un test d'intrusion. Je contacte la DINUM si besoin pour en discuter.
{% endtab %}
{% endtabs %}
