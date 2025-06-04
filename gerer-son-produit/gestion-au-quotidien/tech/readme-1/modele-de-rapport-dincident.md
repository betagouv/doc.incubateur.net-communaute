---
description: >-
  Ce modèle de rapport d'incident vous guide pas à pas pour documenter la gestion d'un incident, de sa détection à sa résolution, en facilitant la collecte d'informations essentielles et la transmission aux parties prenantes concernées.
---

# Modèle de rapport d'incident / port-mortem

**Statut**: A compléter | Action en cours | Terminé

**Type**: Attaque | Panne | Incident

**Impact** : Bas | Moyen | Haut | Critique

**Responsable**: {{ owner }}

**Date de création**: {{ created_at }}

**Date de détection** : {{ detected_at }}

{% hint style="info" %}
En fonction de la gravité de l’incident, il peut être nécessaire de monter une cellule de crise
{% endhint %}

### Constitution cellule de crise (facultatif)

| Rôle                 | Prénom Nom | Email | Téléphone | Missions                                                                                               |
|----------------------|------------|-------|-----------|---------------------------------------------------------------------------------------------------------|
| Resp. cellule        |            |       |           | En charge de coordonner les acteurs de la cellule                                                       |
| Resp. incident       |            |       |           | En charge de piloter la résolution d'incident jusqu'à son terme                                         |
| Resp. communication  |            |       |           | En charge de coordonner la rédaction, la validation et l'envoi des messages aux différentes populations |

## Description de l'incident
Décrire les circonstances de l’incident. Comment il a été identifié

-

{% hint style="info" %}
Ne pas oublier de collecter ici des preuves, elles peuvent ne plus être disponibles après l’incident (capture d’écrans, logs, adresses IPs etc)
{% endhint %}

## Impact
Décrire l’impact de l’incident sur nos produits, fonctionnalités, utilisateurs

- 

## Communication
Cet incident a-t-il donné lieu à une communication à nos utilisateurs / clients ? Si oui précisez-le message.

Communication interne :

- 

Communication externe (utilisateurs, partenaires, sponsors) :

- 

## Résolution
Précisez comment cet incident a été résolu. Quelles ont été les contre-mesures rapides prises. Comment va-t-on surveiller prochainement sa non occurrence ?

### Fil rouge (timeline)

| Horodatage | Acteur | Action / Décision | Résultat | Lien |
| --- | --- | --- | --- | --- |
|  |  |  |  |  |
|  |  |  |  |  |

### Listing des contacts externes

Si nécessaire lister ici l’ensemble des contacts sollicités dans la résolution de cet incident

| Organisation / Service | Prénom Nom | Email | Téléphone | Poste | Notes |
| --- | --- | --- | --- | --- | --- |
|  |  |  |  |  |  |
|  |  |  |  |  |  |

## Les causes

Quels sont les causes de l’incident ? Remonter aux causes racines via les 5 Pourquoi.

**Méthodologie** : 5 Pourquoi. Consiste à se poser 5 fois la question “pourquoi ?” pour remonter à la source d'un problème et trouver une solution qui ne fait pas que palier aux symptômes mais supprime son origine.

- 

## Plan d’actions

**Méthodologie** : PDCA, Plan / Do / Check / Act, voir [méthodologie](https://fr.wikipedia.org/wiki/Roue_de_Deming)

DO - Les actions pour éviter une ré-occurrence de l'incident. On traite ici de l’origine de l’incident et plus simplement de la résolution de l’incident en lui-même

-  

## Généralisation

ACT - Cet incident peut-il se produire dans un autre contexte ? Peut-on généraliser sa résolution et son plan d’actions pour empêcher d’autres incidents similaires de se produire ?

- 

## Enseignements

ACT - Peut-on en tirer des apprentissages sur nos pratiques actuelles ? Quels nouveaux standards peut-on établir ?

{% hint style="info" %}
Identifiez les points positifs de la gestion de l'incident, les aspects qui auraient pu être mieux gérés, et les axes d'amélioration à mettre en place pour le futur
{% endhint %}

# Voir le modèle directement dans Docs

{% embed url="https://docs.numerique.gouv.fr/docs/82a83b83-3df8-4087-8dc7-028bb44aaae8/" %}
