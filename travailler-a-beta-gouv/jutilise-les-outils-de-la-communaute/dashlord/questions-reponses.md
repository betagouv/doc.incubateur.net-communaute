---
description: Principales questions et réponses sur Dashlord.
---

# FAQ DashLord

## Comment ajouter ma Startup d'État ou de Territoire sur Dashlord?

#### 1. Ouvrir une pull request (PR)

Tu peux ouvrir une pull request sur le [dépot Dashlord de beta.gouv](https://github.com/betagouv/dashlord/blob/main/dashlord.yml).

#### 2. Fusionner ta PR

Une fois ta PR fusionnée, ton produit apparaitra dans Dashlord après son prochain scan (programmé une fois par semaine).

#### 3. Patienter quelques jours avant son apparition dans Dashlord

## Est-ce que les indicateurs sont fiables?

Certains indicateurs ont des limites que l'on connait déjà.

* L'indicateur accessibilité ne représente que 25% du [référentiel général d'amélioration accessibilité](../../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/construire-un-service-accessible-et-inclusif/accessibilite-et-rgaa/acces.md) ;
* DashLord ne scanne pas toutes les pages des produits notamment ceux nécessitant un login et un mot de passe ;
* L'indicateur OWASP (sécurité) remonte beaucoup de faux positifs. Pour l'instant, il n'y a pas de moyens de les désactiver.

D'autres limites connues de Dashlord peuvent être trouvées dans [la page Issue du template Dashlord](https://github.com/betagouv/dashlord/issues).

## Est-ce que je peux m'appuyer sur le DashLord pour une homologation de sécurité ou un audit d'accessibilité ?

Dashlord n'est pas utile directement pour l'homologation ou l'audit et ne vise pas à remplacer une expertise humaine.

En revanche, il te permettra de préparer au mieux ton produit en amont de ces échéances en vérifiant qu'il n'y a pas de "gros trous dans la raquette" avant de solliciter une homologation ou un audit.

## Comment puis-je contribuer à l'évolution de Dashlord ?

Dashlord est un projet open-source auquel toute contribution est la bienvenue !

### Ajouter un scan à Dashlord

Dashlord utilise des [GitHub Actions](https://github.com/SocialGouv/dashlord/blob/main/.github/workflows/scans.yml) qui prennent en entrée une URL et renvoient un fichier au format json. Si tu penses qu'un nouveau type de scan serait pertinent, tu peux [développer ta propre GitHub Action](https://docs.github.com/en/actions/creating-actions/about-custom-actions#javascript-actions) et ouvrir une [Pull Request](https://github.com/SocialGouv/dashlord/pulls) pour l'ajouter à Dashlord.

### Changer l'interface de Dashlord

Tu peux ouvrir une Pull Request dans [ce dépot](https://github.com/SocialGouv/dashlord-actions/tree/main/report).
