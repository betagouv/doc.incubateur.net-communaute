---
description: Gestionnaire de mots de passes partagés
---

# VaultWarden

L'équipe animation met à votre disposition une instance de vaulwarden pour vous permettre de gérer les mots de passes de votre équipe : [https://vaultwarden.incubateur.net](https://vaultwarden.incubateur.net)

Vous pouvez directement créer un nouveau en utilisant votre email @beta.gouv.fr

Plusieurs clients ou extensions sont disponibles : [https://bitwarden.com/download](https://bitwarden.com/download/)

## Fonctionnalités clés <a href="#fonctionnalit-c3-a9s-cl-c3-a9s" id="fonctionnalit-c3-a9s-cl-c3-a9s"></a>

### 🔐 Coffres <a href="#f0-9f-94-90-coffres" id="f0-9f-94-90-coffres"></a>

Ensemble des fonctionnalités de coffre-fort numérique (gestionnaire de secrets et mots de passe).

Il vous permet de ==créer==, ==stocker==, ==modifier== et ==partager== des éléments sensibles avec vos collègues en toute sécurité (identifiants, mots de passe, cartes bancaires…).

### 📦 Send <a href="#f0-9f-93-a6-send" id="f0-9f-93-a6-send"></a>

Outil de partage sécurisé de tous types de documents ou fichiers texte.

### 📋 Rapports <a href="#f0-9f-93-8b-rapports" id="f0-9f-93-8b-rapports"></a>

Ensemble d’outils vous permettant de surveiller la sécurité de vos secrets sous la forme de rapports thématiques, par exemple :

* Rapport sur les mots de passe exposés
* Rapport sur les mots de passe réutilisés
* Rapport sur les fuites de données
* …

## L’interface <a href="#linterface" id="linterface"></a>

## Notions fondamentales <a href="#notions-fondamentales" id="notions-fondamentales"></a>

Pour trouver plus facilement les éléments que vous recherchez, l’outil propose une fonction de **filtre** (dans la barre à gauche de votre écran).

Elle vous permet de sélectionner ce que vous souhaitez parmi les différents concepts suivants :

### 💍 Éléments (ou secrets) <a href="#f0-9f-92-8d-c3-a9l-c3-a9ments-ou-secrets" id="f0-9f-92-8d-c3-a9l-c3-a9ments-ou-secrets"></a>

Un **secret** est une donnée que vous souhaitez stocker de manière sécurisée.

Dans le vocabulaire de l’outil, un secret est appelé **élément.**

Chaque **élément** (_**secret**_) correspond au type de donnée spécifique que vous souhaitez stocker.\nVous pouvez gérer les types d’**éléments** suivants :

* **Identifiant** : élément permettant de vous connecter à une application ou site web (identifiant + mot de passe)
* **Carte de paiement** : permet de stocker les informations liées à une carte bancaire
* **Identité** : sorte de fiche nominative comprenant un ensemble de données personnelles liées à un individu
* **Note sécurisée** : tout autre type de texte sensible que vous souhaitez protéger (clés cryptographiques, certificats d’authentification…)

### 🗃️ Collections <a href="#f0-9f-97-83-ef-b8-8f-collections" id="f0-9f-97-83-ef-b8-8f-collections"></a>

Chaque **élément** (_**secret**_) appartient à une **collection**, qui est une sorte de dossier thématique lié à son contexte d’utilisation.\nPar exemple, chaque startup possède sa propre **collection** qui regroupe tous les **éléments** (_**secrets**_) qui lui sont liés.

#### 📂 Dossiers <a href="#f0-9f-93-82-dossiers" id="f0-9f-93-82-dossiers"></a>

Chaque **collection** peut contenir un ou plusieurs **dossiers**, qui permettent un classement plus précis des **éléments (**_**secrets**_**)** si nécessaire

### 🏢 Organisation <a href="#f0-9f-8f-a2-organisation" id="f0-9f-8f-a2-organisation"></a>

Enfin, l’ensemble des **collections** et **éléments** appartiennent à une **organisation**, qui représente le contexte organisationnel global (pour nous, l’_Incubateur des Territoires_).

### 🔐 Coffres <a href="#f09f9490-coffres-1" id="f09f9490-coffres-1"></a>

Vous disposez de deux coffres :

* **Mon coffre** : votre coffre-fort personnel
* **Incubateur des territoires coffre** : coffre-fort contenant les collections partagées avec vous par votre organisation

En cliquant sur un coffre, d’outil affiche en vrac tous les secrets (éléments) qu’il contient, en parcourant chaque **dossier** et **collection**.

## Utilisation & Premiers pas <a href="#utilisation--premiers-pas" id="utilisation--premiers-pas"></a>

### ⚙️ Générer un mot de passe fort <a href="#e2-9a-99-ef-b8-8f-g-c3-a9n-c3-a9rer-un-mot-de-passe-fort" id="e2-9a-99-ef-b8-8f-g-c3-a9n-c3-a9rer-un-mot-de-passe-fort"></a>

1. Cliquer sur le bouton bleu “**Nouveau**“ en haut à droite de l’écran, puis sur “**Élément**“ ![Écran principal](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=3122d3fc-7875-4a19-a113-13da007d6f13)
2. Choisissez le type d’élément que vous souhaitez créer (ici **Identifiant**), puis renseignez les champs du formulaire en fonction de vos besoins ![Fenêtre "Nouvel élément"](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=8cc6926d-3128-4141-a979-a74583839fd8)
3. Dans le champ “**Mot de passe**”, cliquez sur la première des trois icônes pour **générer un nouveau mot de passe** (indiquée en rouge sur l’image suivante). ![Bouton générer un nouveau mot de passe](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=f5e6e6c6-0dfb-4fff-adf1-9810db80ca79)
4. Cliquez sur le bouton enregistrer en bas à gauche de la fenêtre. ![Bouton Enregistrer](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=582db02b-d07c-4099-8539-d126c8ea0d19)

### 🔍 Rechercher un secret <a href="#f0-9f-94-8d-rechercher-un-secret" id="f0-9f-94-8d-rechercher-un-secret"></a>

Il vous suffit de taper un mot-clé dans la barre de recherche “**Rechercher dans mon coffre**” à gauche de l’écran.

### 🪪 Configurer l’authentification à deux facteurs (2FA) <a href="#f0-9f-aa-aa-configurer-lauthentification-c3-a0-deux-facteurs-2fa" id="f0-9f-aa-aa-configurer-lauthentification-c3-a0-deux-facteurs-2fa"></a>

Afin de garantir la sécurité de votre coffre-fort numérique, chaque utilisateur est invité à activer un mécanisme d'[**authentification à deux facteurs (2FA)**](https://fr.wikipedia.org/wiki/Double\_authentification).

Pour faire simple, il s'agit d'ajouter un élément de sécurité en plus de votre simple mot de passe (par exemple un code à usage unique envoyé sur votre smartphone) afin d'éviter qu'un attaquant ne puisse accéder à votre coffre-fort en cas de vol de votre mot de passe principal.

L'activation de l'**authentification à deux facteurs sera rendu obligatoire d'ici mai 2024**.\nNous vous invitons donc à prendre les devants dès maintenant en vous rendant sur cette page : [https://vaultwarden.incubateur.net/#/settings/security/two-factor](https://vaultwarden.incubateur.net/#/settings/security/two-factor)

Nous pouvons vous accompagner dans cette démarche simple, n'hésitez pas à nous en faire la demande.

> _Pour plus d’informations sur l’authentification à deux facteurs (2FA) :_
>
> * [_ANSSI - Recommandations relatives à l'authentification multifacteur et aux mots de passe_](https://cyber.gouv.fr/publications/recommandations-relatives-lauthentification-multifacteur-et-aux-mots-de-passe)
> * [_Wikipedia - Double authentification_](https://fr.wikipedia.org/wiki/Double\_authentification)

## Utiliser bitwarden sur tous vos appareils <a href="#utiliser-bitwarden-sur-tous-vos-appareils" id="utiliser-bitwarden-sur-tous-vos-appareils"></a>

Vous pouvez accéder à votre coffre-fort à partir de n’importe quel appareil connecté à Internet, soit via l’interface web, soit via les applications bitwarden pour :

* Ordinateur : PC / Mac / Linux
* Extensions pour votre navigateur web
* Application mobile pour Android et Apple
* Interface en ligne de commande

### Télécharger les applications <a href="#t-c3-a9l-c3-a9charger-les-applications" id="t-c3-a9l-c3-a9charger-les-applications"></a>

Pour les télécharger : [https://bitwarden.com/download/](https://bitwarden.com/download/)

### Configuration <a href="#configuration" id="configuration"></a>

Voici les informations nécessaires pour configurer vos applications bitwarden afin d’accéder à votre coffre-fort Vaultwarden.

En lançant bitwarden pour la première fois, vous arrivez sur un écran similaire à l’image ci-dessous : ![Écran de configuration de bitwarden pour MacOS](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=4f5cb761-edcf-4979-b64d-3b8d12157fe4)

1. Cliquer sur la petite flèche dirigée vers le bas, après “_Connexion sur : bitwarden.com_“, puis cliquez sur “_**auto-hébergé**_“ ![Sélectionner "auto-hébergé"](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=0bec2b11-bf1c-471e-8e11-1a186d5e4b4f)
2. Dans le champ “_URL du serveur_“ (1), saisissez l’URL suivante : [https://vaultwarden.incubateur.net](https://vaultwarden.incubateur.net/)\nPuis cliquez sur l’icône représentant une disquette en bas à gauche (2) ![Indiquer l'URL du serveur Vaultwarden https://vaultwarden.incubateur.net](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=043b49c4-1f66-408c-89df-4d913e744b63)
3. Vous pouvez maintenant saisir votre adresse e-mail _@beta.gouv.fr_ (1) et cliquer sur “_Se souvenir du courriel_“ (2), puis sur le bouton “_Continuer_“ (3) ![Saisir votre adresse e-mail betagouv](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=32518cde-853c-43e7-aa81-a4630e225db1)
4. Vous pouvez maintenant saisir votre mot de passe Vaultwarden (1) et cliquer sur le bouton “_Se connecter avec le mot de passe principal_“ (2) ![Saisir votre mot de passe Vaultwarden](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=c1c9be4c-c896-4ac3-8edd-3ce011734445)
5. Bienvenue sur bitwarden !\nVous pouvez maintenant gérer vos secrets à votre guise. Ils sont automatiquement synchronisés entre votre (vos) logiciel(s) bitwarden et le serveur Vaultwarden.\nAinsi, si le serveur Vaultwarden était indisponible, vous auriez toujours accès aux secrets synchronisés. ![Écran principal de bitwarden](https://file+.vscode-resource.vscode-cdn.net/api/attachments.redirect?id=2fb4e7b6-ef28-4f93-b210-29c95e8826c9)

## 🛟 Pour aller plus loin <a href="#f0-9f-9b-9f-pour-aller-plus-loin" id="f0-9f-9b-9f-pour-aller-plus-loin"></a>

### Documentation de bitwarden <a href="#documentation-de-bitwarden" id="documentation-de-bitwarden"></a>

Vous pouvez vous rendre sur la documentation de bitwarden à l’adresse suivante : [https://bitwarden.com/help/password-manager-overview/](https://bitwarden.com/help/password-manager-overview/)

La plupart des éléments étant identiques entre bitwarden et Vaultwarden, cette documentation est valable.

