---
description: >-
  Cet atelier propose 9 vérifications faciles à tester pour avoir une première
  idée de l'accessibilité de son service numérique
---

# 9 choses faciles à vérifier pour un site plus accessible

{% hint style="success" %}
Retrouvez [le support de présentation de l'atelier **Easy Checks - Vérifier rapidement l'accessibilité**](https://fichiers.numerique.gouv.fr/explorer/items/files/5ba4eff3-1949-4f8b-a0e9-f5ee90d7321d)
{% endhint %}

### La grille d'évaluation

Dupliquer le fichier source ci-dessous

{% file src="../../../../.gitbook/assets/Grille vierge Easy Checks - 2026.xlsx" %}

### Les outils

Ces tests peuvent se faire facilement, sans compétences techniques :

* directement dans le navigateur
* avec [le service en ligne WAVE](http://wave.webaim.org/)

Il existe de nombreux autres outils spécifiques selon les préférences de chacun.e, mais WAVE permet déjà d'évaluer un bon nombre de choses 🙂.

| Test                           | Via le navigateur | Avec WAVE |
| ------------------------------ | ----------------- | --------- |
| 📄 Le titre des pages          | ✅                 |           |
| 🎹 La navigation au clavier    | ✅                 |           |
| ⏭️ &#xD;Lien d’évitement       | ✅                 |           |
| 🔍 Zoom                        | ✅                 |           |
| 📄 Les formulaires             | ✅                 |           |
| 🌓 Les contrastes de couleurs  |                   | ✅         |
| 📰 La hiérarchie des titres    |                   | ✅         |
| 🖼 Les alternatives aux images |                   | ✅         |
| 🗣️ La langue de la page       |                   | ✅         |

### Le titre des pages

**Le titre de page permet de se situer :** c’est la première chose lue par un lecteur d'écran à l’affichage d’une page ou d’un onglet. Les bons titres de pages aident à s'orienter entre plusieurs onglets.

{% hint style="info" %}
**Elles te remercieront :** les personnes utilisant un lecteur d’écran ou les favoris du navigateur. Et aussi les moteurs de recherche.
{% endhint %}

#### **Le test des onglets**

**Ce qu'il faut faire :** Ouvrir plusieurs pages du site dans des onglets différents.

**Ce qu'il faut vérifier :**

* ✅ Le titre est pertinent.
* ✅ Le titre décrit brièvement le contenu de la page.
* ✅ Le titre permet de différentier la page des autres pages du site.

{% hint style="success" %}
Un bon titre commence généralement par les informations importantes et uniques.
{% endhint %}

### La navigation au clavier

**L'interface est utilisable sans souris :** certaines personnes utilisent le clavier ou la saisie vocale (qui utilise des commandes clavier).

L’ensemble du contenu et des fonctionnalités doit donc être accessible via le clavier : liens, formulaires, pause/play sur les lecteurs médias, menus...

{% hint style="info" %}
**Elles te remercieront :** les personnes qui n’utilisent pas la souris (aveugles, malvoyants, personnes souffrant de troubles moteurs…)
{% endhint %}

#### **Le test de la souris perdue**

**Ce qu'il faut faire :** utiliser le site sans manipuler la souris. Utiliser les touches `Tab` (tabulation) ou `Backspace` (effacer) pour avancer ou reculer, et les flèches directionnelles, la touche `Espace` ou la touche `Echap` pour les interactions complexes.

**Ce qu'il faut vérifier :**

* ✅ Le focus du clavier est visible.
* ✅ L’ordre de navigation est logique.
* ✅ L’accès à tous les éléments (liens, champs de formulaire, boutons et commandes du lecteur multimédia…) est possible.
* ✅ Le focus ne reste pas coincé (on peut sortir d’une vidéo par exemple).

### Lien d'évitement

L'accès au contenu principal d'une page peut être laborieux pour les personnes naviguant au clavier : il faut souvent parcourir toute l'en-tête et tout un menu de navigation avant d'arriver au coeur de la page consultée. Pour palier cette difficulté, il est obligatoire de proposer un [**lien d'évitement ou lien d'accès rapide**](https://accessibilite.numerique.gouv.fr/methode/glossaire/#liens-d-evitement-ou-d-acces-rapide) **vers le contenu principal.**&#x20;

{% hint style="info" %}
**Elles te remercieront :** les personnes ayant des troubles moteurs et les personnes aveugles ou malvoyantes.
{% endhint %}

#### **Le test du lien d'évitement**

**Ce qu'il faut faire :** au chargement de la page, une tabulation au clavier avant toute autre interaction pour faire apparaître les liens d'évitement.

**Ce qu'il faut vérifier :**

* ✅ Cet élément est visible à la prise de focus.
* ✅ Ce lien est fonctionnel et redirige vers le contenu principal de la page.

### L'agrandissement du texte

**Le texte est adaptable :** un texte peut être adapté de multiples façons : couleur, taille, police, interlignes… via les préférences du navigateur.

Si le site force certains paramètres, il devient inutilisable ou le contenu devient illisible lorsque les utilisateurices essaient d'adapter l'affichage à leurs besoins.

{% hint style="info" %}
**Elles te remercieront :** les personnes malvoyantes, les personnes dyslexiques, les personnes seniors... toutes les personnes qui ont besoin d'agrandir ou de personnaliser l'affichage du contenu pour pouvoir le lire.
{% endhint %}

#### **Le test du zoom**

**Ce qu'il faut faire :** agrandir le texte à 200 % et naviguer sur le site. Pour agrandir uniquement le texte sur Firefox : `Affichage` ⇒ `Zoom` ⇒ `Agrandir uniquement le texte`

**Ce qu'il faut vérifier :**

* ✅ Tout le texte est agrandi.
* ✅ Le texte ne disparaît pas ou n'est pas coupé.
* ✅ Le texte, les images et les autres contenus ne se chevauchent pas.
* ✅ Tous les éléments des formulaires sont visibles et utilisables.
* ✅ Le défilement horizontal n'est pas nécessaire pour lire le contenu.

### Les formulaires

**Les formulaires sont balisés correctement :** un formulaire est composé de champs, qui doivent être correctement balisés pour pouvoir être remplis au clavier, par commande vocale ou via un lecteur d'écran.

Les aides à la saisie et messages d’erreurs doivent être placés de manière pertinente pour être visibles (et utiles) pour tout le monde.

C’est l’un des tests les plus compliqués mais aussi celui qui a le plus d’impact 💪.

{% hint style="info" %}
**Elles te remercieront :** les personnes qui n’utilisent pas la souris, qui ont des problèmes de motricité, ou des troubles cognitifs ou d’apprentissage.
{% endhint %}

#### **Le test des formulaires**

**Ce qu'il faut faire** : identifier tous les formulaires du site (même les petits, comme un formulaire de recherche ou d'inscription à une newsletter).

**Ce qu'il faut vérifier**

* ✅ Les formulaires sont accessibles au clavier (et toutes les options d'un menu déroulant sont accessibles).
* ✅ Les champs ont un label (et un clic sur le label active le champ). Le label est accolé à son champ : juste à côté ou juste en-dessous.
* ✅ Les champs obligatoires sont indiqués (pas seulement par la couleur rouge).
* ✅ Les instructions d'aide sont avant le champ concerné.
* ✅ Les formats spécifiques (par exemple les dates) sont explicités dans le label.
* ✅ Les erreurs sont explicites (quel champ est concerné, comment corriger).

### Les contraste des couleurs

**Les couleurs du site n’entravent pas la lecture :** certaines personnes ont besoin d'un contraste suffisant pour lire (trouble de vision lié à la vieillesse par exemple). D’autres ont besoin d’une faible luminance (certains types de dyslexie) ou… d’une luminance élevée.

Chaque personne a des besoins différents : le site doit permettre aux utilisateurices de l’adapter.

{% hint style="info" %}
**Elles te remercieront :** les personnes souffrant de troubles de lecture, les personnes avec des troubles de vision, les personnes âgées ayant perdu la sensibilité au contraste.
{% endhint %}

#### **Le test des couleurs**

**Ce qu'il faut faire** : vérifier les contrastes de la page avec un outil dédié. Sur WAVE, les erreurs de contraste sont remontées dans la synthèse principale et l'onglet Contrast permet de vérifier manuellement des zones choisies (pour du texte sur image qui ne sera pas testé automatiquement par l'outil par exemple).

**Ce qu'il faut vérifier :**

* ✅ Le contraste minimum par défaut est respecté pour les textes de taille normale.
* ✅ Les utilisateurs peuvent surcharger la couleur de texte ou du fond : sur Firefox `Paramètres` ⇒ `Général` ⇒ `Langue et apparence` ⇒ `Remplacer les couleurs`. Les couleurs paramétrées doivent être les couleurs appliquées.

### La hiérarchie des titres

**La structure de la page est balisée** : certains éléments de textes sont importants dans la page : ils sont mis en avant visuellement. Ils doivent l’être aussi dans le code via les balises dédiées. C'est ce qui permet aux utilisateurs et utilisatrices de naviguer directement par titres et de se repérer facilement dans le contenu.

{% hint style="info" %}
**Elles te remercieront :** les personnes qui naviguent au clavier, celles qui utilisent un lecteur d’écran, celles qui affichent le site sans style.
{% endhint %}

#### **Le test du plan**

**Ce qu'il faut faire :** lire le plan de la page avec un outil dédié. Sur WAVE, l'onglet Structure permet de faire apparaître les zones et les titres. Le plugin navigateur [HeadingsMaps](https://accessibility.education.gov.uk/tools-testing/tools/headingsmap) fournit également une vue de la hiérarchie des titres.

**Ce qu'il faut vérifier :**

* ✅ Sauf exception, la page possède un ou plusieurs titres de rubriques.
* ✅ Les textes mis en valeur visuellement sont bien marqués comme des titres.
* ✅ La hiérarchie des titres a du sens.

### Les alternatives aux images

**Les alternatives transmettent l'objectif de l’image :** elles sont lues par les lecteurs d’écrans (ou ressenti sur une plage braille). Parfois, elles sont affichées à la place de l'image quand la connexion est mauvaise. Toutes les images qui apportent de l'information doivent avoir une alternative permettant d'obtenir le même niveau d'information. Également toutes les images décoratives (qui n'apportent pas d'information) doivent être ignorées pour ne pas parasiter la navigation des personnes utilisant des technologies d'assistance.

{% hint style="info" %}
**Elles te remercieront :** les personnes utilisant un lecteur d’écran et celles ayant une connexion restreinte.
{% endhint %}

#### **Le test des alternatives**

**Ce qu'il faut faire :** afficher les textes alternatifs des images avec un outil dédié. Pour l'exemple nous décrivons le comportement de WAVE, d'autres extensions ou scripts spécifiques sont également disponibles pour faciliter le repérage des images.

**Ce qu'il faut vérifier :**

* ✅ L’alternative doit permettre de comprendre le contenu, pas nécessairement décrire l’image. WAVE affiche le texte alternatif d'une image dans un encart vert à proximité de l'image concernée. Au survol, l'image rattachée est entourée en rouge.
* ✅ Les images décoratives qui n’apportent pas de sens n’ont pas d’alternative. WAVE affichera un encart vert contenant  `""`  ou un encart violet avec une bulle barrée ou le texte `aria *role="presentation"` .

{% hint style="success" %}
Un bon texte alternatif est ce que tu dirais à quelqu’un qui interagit avec une page web mais ne la voit pas (par exemple, “recherche” plutôt que “loupe”).

Un texte alternatif approprié n'est pas une science exacte. Certaines personnes préfèrent les descriptions détaillées ; d'autres des descriptions concises.
{% endhint %}

### La langue

**Pour que les technologies d'assistance vocalisent correctement une page web, la langue du texte doit être définie dans le code.** Si la langue n'est pas correctement indiquée, imagine qu'un locuteur anglophone ou germanophone te lit une page web en français... difficile de s'y retrouver ! De la même manière, chaque passage de texte dans une langue différente de la langue principale doit être indiqué.

{% hint style="info" %}
**Elles te remercieront :** les personnes qui vocalisent les pages. Par exemple les personnes aveugles, malvoyantes, les personnes avec un handicap mental ou cognitif, les personnes dyslexiques ou qui souffrent d'illettrisme.
{% endhint %}

#### **Le test de la langue**

**Ce qu'il faut faire :** déterminer la langue principale de la page et repérer les sections de texte dans une langue qui diffère. Attention aux termes empruntés à l'anglais dans le langage courant, ou aux menus de traduction de page. Sur WAVE, la langue principale est indiquée en tête de page et les changements de langue sont indiqués à proximité de chaque passage concerné.

**Ce qu'il faut vérifier :**

* ✅ La langue de la page correspond à la langue principale utilisée. C'est également la bonne variante qui est définie : par exemple, `fr-FR` pour une page en français de France, et non pas `fr-CA` qui sera vocalisé comme une page en français du Canada.
* ✅ Chaque changement de langue est correctement indiqué.

### Et après ?

Une fois votre grille d'auto-évaluation remplie, pas de panique si tu ne sais pas par où commencer. Prends du recul et procède par étape :&#x20;

* Est-ce qu'une page concentre beaucoup de blocages ? Cette page mérite peut-être d'être corrigée en priorité.
* Est-ce qu'une catégorie est toujours en erreur ? Peut-être qu'en corrigeant un composant, tu corrigeras le problème partout.
* Quels sont les niveaux d'impact des problèmes relevés ? Commence par les problèmes qui empêchent le plus tes usagers et usagères.
* Identifie-tu des "quick wins" ? Des corrections qui coûtent peu, mais qui améliorent beaucoup.
* ...&#x20;

À toi de jouer en fonction de ton contexte, et bravo pour ce premier pas d'auto-évaluation !

#### Pour continuer sur sa lancée

Intégrer l'accessibilité dans ton équipe :

* **Auto-diagnostic régulier** pour chaque nouveau composant / fonctionnalité / sprint…
* **Prise en compte en amont** : faire sa propre checkliste, adaptée selon son métier.

#### Pour aller plus loin

[Easy Checks – A First Review of Web Accessibility](https://www.w3.org/WAI/test-evaluate/preliminary/)

[Guide des impacts utilisateurs des défauts d'accessibilité](http://disic.github.io/guide-impacts_utilisateurs)

{% hint style="success" %}
Envie d'être accompagné ? Faisons cet atelier ensemble avec votre équipe ! Contactez-nous sur [Domaine-Accessibilité](https://tchap.gouv.fr/#/room/!dTRhRuVyhSJECfbjFk:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr) sur Tchap.
{% endhint %}
