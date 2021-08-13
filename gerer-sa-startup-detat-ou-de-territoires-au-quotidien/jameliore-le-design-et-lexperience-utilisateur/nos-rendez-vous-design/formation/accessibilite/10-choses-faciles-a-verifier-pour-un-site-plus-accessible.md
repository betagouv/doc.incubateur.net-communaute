---
description: >-
  Cette formation donne  10 conseils facile à mettre en place pour vérifier
  l'accessibilité de son service numérique
---

# 10 choses faciles à vérifier pour un site plus accessible

## Support de présentation

Retrouvez les 10 choses faciles à tester avec des exemples concrets \(des vrais bouts de SE dedans !\) dans le support de présentation

{% file src="../../../.gitbook/assets/accessibilite-easy-checks.pdf" caption="Support de présentation" %}

## Les outils

Ces tests peuvent se faire facilement, sans compétences techniques :

* directement dans le navigateur
* avec[ le bookmarklet ANDI](https://www.ssa.gov/accessibility/andi/help/install.html) qui s'installe sur tout les navigateurs, via un drag and drop dans la barre de raccourci
* avec [le service en ligne WAVE](http://wave.webaim.org/) 

Il existe de nombreux autres outils spécifiques, selon les préférences de chacun, mais ces 3 là permettent d'évaluer déjà un bon nombre de chose 🙂.

| Test | Via le navigateur | Avec ANDI | Avec WAVE |
| :--- | :--- | :--- | :--- |
| 📄 Le titre des pages | ✅ | ✅ |  |
| 🖼 Les alternatives aux images |  | ✅ | ✅ |
| 📰 La hiérarchie de l’information |  | ✅ | ✅ |
| 🌓 Les contraste des couleurs |  | ✅ | ✅ |
| ✨ La personnalisation du texte | ✅ |  |  |
| 🎹 La navigation au clavier | ✅ |  |  |
| 📄 Les formulaires | ✅ | ✅ |  |
| ▶️ Les contenus animés | ✅ |  |  |
| 🎬 Les alternative aux médias | ✅ |  |  |
| 📃 La structure des pages |  | ✅ | ✅ |

**Pour aller plus loin** : [Easy Checks – A First Review of Web Accessibility](https://www.w3.org/WAI/test-evaluate/preliminary/)

## Les tests

### 📄 Le titre des pages

**Le titre de page permet de se situer :** c’est la première chose lue par un lecteur d'écran à l’affichage d’une page ou d’un onglet. Les bons titres de pages aident à s'orienter entre plusieurs onglets.

{% hint style="info" %}
**Elles vous remercieront :** les personnes utilisant un lecteur d’écran ou les favoris du navigateur. Et aussi les moteurs de recherche.
{% endhint %}

#### Le test des onglets

**Ce qu'il faut faire :** Ouvrir plusieurs pages du site dans des onglets différents.

**Ce qu'il faut vérifier :**

* ✅ Le titre est pertinent.
* ✅ Le titre décrit brièvement le contenu de la page.
* ✅ Le titre permet de différentier la page des autres pages du site.

👉 Un bon titre commence généralement par les informations importantes et uniques.

### 🖼 Les alternatives aux images

**Les alternatives transmettent l'objectif de l’image :** ils sont lus par les lecteurs d’écrans \(ou ressenti sur une plage braille\). Parfois, ils sont affichés à la place de l'image quand la connexion est mauvaise.

{% hint style="info" %}
**Elles vous remercieront :** les personnes utilisant un lecteur d’écran et celles ayant une connexion restreinte.
{% endhint %}

#### Le test des alternatives

**Ce qu'il faut faire :** afficher les textes alternatifs des images avec un outil dédié

**Ce qu'il faut vérifier :**

* ✅ L’alternative doit permettre de comprendre le contenu, pas nécessairement décrire l’image.
* ✅ Les images décoratives qui n’apportent pas de sens n’ont pas d’alternative.

👉 Un bon texte alternatif est ce que vous diriez à quelqu’un qui interagit avec une page web mais ne la voit pas \(par exemple, “recherche” plutôt que “loupe”\).

👉 Un texte alternatif approprié n'est pas une science exacte. Certaines personnes préfèrent les descriptions détaillées ; d'autres des descriptions concises.

### 📰 La hiérarchie de l’information

**La structure de la page est balisée** : certains éléments de textes sont important dans la page : ils sont mis en avant visuellement. Ils doivent l’être aussi dans le code via les balises dédiées.

{% hint style="info" %}
**Elles vous remercieront :** les personnes qui naviguent au clavier, celles qui utilisent un lecteur d’écran, celles qui affichent le site sans style.
{% endhint %}

#### Le test du plan

**Ce qu'il faut faire :** lire le plan de la page avec un outil dédié.

**Ce qu'il faut vérifier :**

* ✅ Sauf exception, la page possède un ou plusieurs titres de rubriques.
* ✅ Les textes mis en valeur visuellement sont bien marqués comme des titres.
* ✅ La hiérarchie des titres a du sens.

### 🌓 Les contraste des couleurs

**Les couleurs du site n’entravent pas la lecture :** certaines personnes ont besoin d'un contraste suffisant pour lire \(trouble de vision lié à la vieillesse par exemple\). D’autres ont besoin d’une faible luminance \(certains types de dyslexie\) ou… d’une luminance élevée.

Chaque personne a des besoins différents : le site doit permettre à l’utilisateur de s’adapter.

{% hint style="info" %}
**Elles vous remercieront :** les personnes souffrant de troubles de lectures, les personnes avec des troubles de visions, les personnes âgées ayant perdu la sensibilité au contraste.
{% endhint %}

#### Le test des couleurs

**Ce qu'il faut faire** : vérifier les contrastes de la page avec un outil dédié.

**Ce qu'il faut vérifier**

* ✅ Le contraste minimum par défaut est respecté pour les textes de taille normale.
* ✅ Les utilisateurs peuvent surcharger la couleur de texte ou du fond.

### ✨ La personnalisation du texte

**Le texte est adaptable :** un texte peut être adapté de multiples façons : couleur, taille, police, interlignes… via les préférences du navigateur.

Si le site est mal conçu, il devient inutilisable, ou le contenu illisible.

{% hint style="info" %}
**Elles vous remercieront :** les personnes qui ont besoin d'agrandir le contenu pour pouvoir le lire ; celles qui ont besoin d’interlignes élevées.
{% endhint %}

#### Le test du zoom

**Ce qu'il faut faire :** zoomer à 200 % et naviguer sur le site.

**Ce qu'il faut vérifier**

* ✅ Tout le texte est agrandi.
* ✅ Le texte ne disparaît pas ou n'est pas coupé.
* ✅ Le texte, les images et les autres contenus ne se chevauchent pas.
* ✅ Tous les éléments des formulaires sont visibles et utilisables.
* ✅ Le défilement horizontal n'est pas nécessaire pour lire le contenu.

### 🎹 La navigation au clavier

**L'interface est utilisable sans souris :** certaines personnes utilisent le clavier ou la saisie vocale \(qui utilise des commandes clavier\).

L’ensemble du contenu et des fonctionnalités doit donc être accessible via le clavier : liens, formulaires, pause/play sur les lecteurs médias, menus...

{% hint style="info" %}
**Elles vous remercieront :** les personnes qui n’utilisent pas la souris \(aveugles, malvoyants, personnes souffrant de troubles moteurs…\)
{% endhint %}

#### Le test de la souris perdue

**Ce qu'il faut faire :** utiliser le site sans manipuler la souris.

Ce qu'il faut vérifier

* ✅ Le focus du clavier est visible.
* ✅ L’ordre de navigation est logique.
* ✅ L’accès à tous les éléments \(liens, champs de formulaire, boutons et commandes du lecteur multimédia…\) est possible.
* ✅ Le focus ne reste pas coincé \(on peut sortir d’une vidéo par exemple\).

### 📄 Les formulaires

**Les formulaires sont balisés correctement :** un formulaire est composé de champs, qui doivent être correctement balisés pour pouvoir être rempli au clavier, par commande vocale ou via un lecteur d'écran.

Les aides à la saisie et messages d’erreurs doivent être placés de manière pertinentes pour être visible \(et utile\) pour tous.

C’est l’un des tests le plus compliqué mais aussi celui qui a le plus d’impact 💪.

{% hint style="info" %}
**Elles vous remercieront :** les personnes qui n’utilisent pas la souris, qui ont des problèmes de motricité, ou des troubles cognitifs ou d’apprentissage.
{% endhint %}

#### Le test des formulaires

**Ce qu'il faut faire** : identifier tous les formulaires du site \(même les petits, comme un formulaire de recherche ou d'inscription à une newsletter\).

**Ce qu'il faut vérifier**

* ✅ Les formulaires sont accessibles au clavier \(et toutes les options d'un menu déroulant sont accessibles\).
* ✅ Les champs ont un label \(et un clic sur le label active le champ\).
* ✅ Les champs obligatoires sont indiqués \(pas seulement par la couleur rouge\).
* ✅ Les instructions d'aide sont avant le champ concerné.
* ✅ Les formats spécifiques \(par exemple les dates\) sont explicitées dans le label.
* ✅ Les erreurs sont explicites \(quel champ est concerné, comment corriger\).

### ▶️ Les contenus animés

**Les animations ne perturbent pas la lecture :** les utilisateurs doivent pouvoir contrôler le contenu en mouvement :

* Pour avoir le temps de traiter une information \(vidéo, carousel\)
* Pour pouvoir se concentrer sur le contenu sans être distrait par un élément.

Plus spécifiquement, certains contenus clignotants peuvent déclencher une crise d’épilepsie chez certains personnes.

{% hint style="info" %}
**Elles vous remercieront :** les personnes troubles de l'attention, les personnes photosensibles ou épileptiques.
{% endhint %}

#### Le test des animations

**Ce qu'il faut faire :** identifier les contenus qui bougent ou clignotent.

**Ce qu'il faut vérifier :**

* ✅ Si des informations défilent ou bougent automatiquement, elles ne durent pas plus de 5 secondes, ou le mouvement peut être arrêté.
* ✅ L’utilisateur peut mettre en pause ou cacher les mouvements.
* ✅ L’utilisateur peut régler la fréquence de mise à jours des informations animées.
* ✅ Si des informations se mettent à jour en temps réel, l’utilisateur peut les mettre en pause ou contrôler la fréquence de mise à jour.
* ✅ Aucun contenu ne clignote ou ne se met à clignoter plus de trois fois en une seconde.

### 🎬 Les alternative aux médias

**Les médias ont des alternatives :** les podcasts ou formats audios ne sont pas accessibles aux personnes sourdes ou malentendantes, sauf si fournies dans un format alternatif \(transcription par ex\).

Les informations visuelles d’une vidéo ne sont pas accessibles aux personnes aveugles ou malvoyantes, sauf si elles sont fournies dans un format alternatif tel que l'audio ou le texte.

{% hint style="info" %}
**Elles vous remercieront :** les personnes malentendantes, malvoyantes, sourdes ou aveugles.
{% endhint %}

#### Le test des médias

**Ce qu'il faut faire** : identifier les médias \(vidéos et audio\) du service.

#### Ce qu'il faut vérifier :

* ✅ Les contrôles du lecteurs vidéo/audio sont accessible au clavier.
* ✅ Le son ne démarre pas seul.
* ✅ Les informations audios sont accessible au format texte \(sous-titres, transcript\).
* ✅ Les informations visuelles sont accessibles au format texte ou au format audio \(audio description ou transcript\).

### 📃 La structure des pages

**La page est linéaire** : tout le monde ne « voit » pas une page de la même manière. Un site a souvent une structure complexe visuellement \(sidebar, éléments graphiques...\) mais pour certains utilisateurs, il sera perçu de manière linéaire.

{% hint style="info" %}
**Elles vous remercieront :** les personnes utilisant un lecteur d’écran, une feuille de style personnalisée ou utilisant le site sur mobile.
{% endhint %}

#### Le test du site tout nu

**Ce qu'il faut faire :** désactiver les images et les styles.

**Ce qu'il faut vérifier :**

* ✅ Les informations sont affichées dans le bon sens.
* ✅ Les textes alternatifs fournissent des informations pertinentes.

### Pour aller plus loin

[Easy Checks – A First Review of Web Accessibility](https://www.w3.org/WAI/test-evaluate/preliminary/)

{% hint style="success" %}
Envie d'être accompagné ? Faisons cet atelier ensemble avec votre équipe ! Contactez-nous sur \#domaine-accessibilité
{% endhint %}

