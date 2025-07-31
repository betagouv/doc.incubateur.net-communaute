---
description: >-
  (Re)voir les bonnes pratiques pour garantir une expérience utilisateurice
  inclusive sur vos applications mobiles.
---

# Bonnes pratiques d'accessibilité des app mobil

Sur une application mobile, il est difficile d’inspecter le code source comme sur le web. Mais il existe plusieurs astuces pour tester et avoir une discussion avec son équipe, car l’**accessibilité est l’affaire de tout le monde !**&#x20;

Il est aussi primordial de connaître les gestes de base des OS et des lecteurs d’écran (Voice Over / Talk Back) pour tester correctement - on vous explique plus bas.

NB. Si vous développez une **application mobile hybride,** nous vous recommandons d’utiliser le package[ Flutter accessibility\_tools](https://pub.dev/packages/accessibility_tools) pour tester votre application.&#x20;

\
Pour finir, la norme en vigueur pour les applications mobiles est le [RAAM](https://accessibilite.public.lu/fr/raam1.1/index.html) (Référentiel d'évaluation de l'Accessibilité des Applications Mobiles).

## 1/ Contraste <a href="#docs-internal-guid-683b58cc-7fff-6d82-4ea1-fd367ecd3916" id="docs-internal-guid-683b58cc-7fff-6d82-4ea1-fd367ecd3916"></a>

En respectant le minimum de contraste entre le texte et l'arrière-plan (**contraste de 4,50:1 en mode clair et sombre)**, vous permettez à tous les utilisateurices de pouvoir lire pleinement les textes dans divers contextes (dont l’extérieur).

🧪 Comment tester ?&#x20;

* Android : télécharger l’application mobile [Accessibility Scanner](https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor\&hl=fr\&pli=1) pour soumettre votre app mobile à des tests d’accessibilité et avoir les résultats et des recommandations.\

* iOS : Utiliser l'outil [Accessibility Inspector](https://developer.apple.com/documentation/accessibility/accessibility-inspector) dans Xcode ou installer Colour Contrast Analyzer sur Windows/Mac

N’oubliez pas de tester en Light et Dark mode.&#x20;

❤️ Vous remercieront : les personnes ayant des troubles de la vision, des difficultés de concentration et toutes les personnes utilisant leurs téléphone mobile dans un environnement avec des conditions lumineuses déplorables.

&#x20;💡Pense-bête :&#x20;

* Ne pas s’appuyer uniquement sur la couleur pour véhiculer une information (hachurage, motif, texte sur la couleur…)&#x20;
* Utiliser le [DSFR](https://www.systeme-de-design.gouv.fr/version-courante/fr/fondamentaux/couleurs--palette) (Design System de l’état) et sa palette de couleur accessible. &#x20;

{% hint style="info" %}
📱RAAM : [https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-2](https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-2-2)
{% endhint %}

## 2/ Titre des écrans

Utile pour se repérer dans l’application (couplé avec le bouton de retour c’est encore mieux).&#x20;

C’est aussi le premier élément qui sera vocalisé au lecteur d’écran.

🧪 Comment tester ?&#x20;

Android et iOS : naviguer sur l’application mobile et vérifier pour chaque page, qu’il y a bien un titre unique et pertinent (et pas un titre générique comme le nom de l’app).&#x20;

❤️ Vous remercieront :  toutes les personnes pour faciliter la navigation.&#x20;

{% hint style="info" %}
📱RAAM : [https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-7-](https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-7-1)
{% endhint %}

## 3/ Taille des zones sélectionnables / zone de tap&#x20;

Respecter au minimum pour toutes les zones d'interaction, une taille de **48dp x 48dp** ([Android](https://developer.android.com/guide/topics/ui/accessibility/apps?hl=fr#large-controls)) ou de **44x44 pt** ([pour iOS et Ipad)](https://developer.apple.com/design/human-interface-guidelines/accessibility#Mobility). Cela assure un confort dans l’utilisation de votre application mobile et ce sont aussi les recommandations de Google et Apple.&#x20;

🧪 Comment tester ?&#x20;

* Android et iOS : tester les éléments cliquables sur les extrémités et assurez-vous que cela conduit à l’action souhaitée, sinon vous pourrez avoir une discussion avec l’équipe pour revoir la taille des zones de tap.&#x20;
* Android : il est aussi possible d’utiliser l’application mobile [Accessibility Scanner](https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor\&hl=fr\&pli=1) pour avoir les résultats sur “la zone de cible tactile” et des recommandations.
* iOS : il est aussi possible d’utiliser [Accessibility Inspector dans Xcode](https://developer.apple.com/documentation/accessibility/accessibility-inspector) pour avoir les résultats sur les “hit area” et des recommandations.

❤️ Vous remercieront : tout le monde pour interagir et finaliser une action, sans avoir la  sensation de taper à côté et d’être frustré.

💡Pense-bête : les applications mobiles doivent être pensées pour être utilisable à une seule main (gauche ou droite), il y a des zones naturelles de touches en fonction de la taille d’écran.&#x20;

{% hint style="info" %}
📱 RAAM : ce n’est pas encore un critère d’accessibilité mobile mais une bonne pratique reprise par les stores :)
{% endhint %}

## 4/ Orientation&#x20;

Ne pas bloquer l’orientation en portrait de votre application, car certaines personnes ont des besoins à pouvoir utiliser votre application en paysage (comme un mobile fixé à un fauteuil roulant).

🧪 Comment tester ?&#x20;

* Android et iOS :  tester votre application en mode portrait et paysage, vous ne devez pas être bloqué.&#x20;

❤️ Vous remercieront : tout le monde et en particulier les personnes ne pouvant pas faire pivoter leur téléphone mobile (déficiences visuelles ou motrices).

{% hint style="info" %}
📱 RAAM : ce n’est pas encore un critère d’accessibilité mobile mais une bonne pratique  :)
{% endhint %}

## 5/  Afficher le bon clavier  <a href="#docs-internal-guid-5623a12c-7fff-f30f-a0c4-dcdedbcb4166" id="docs-internal-guid-5623a12c-7fff-f30f-a0c4-dcdedbcb4166"></a>

Pour faciliter la saisie des nombres, inutile d’afficher le clavier alphabétique.

🧪 Comment tester ?&#x20;

* Android et iOS :  tester l’affichage du clavier dans un formulaire avec des champs texte ou numérique.&#x20;

❤️ Vous remercieront: toutes les personnes car plus aucune erreur possible !&#x20;

{% hint style="info" %}
📱 RAAM : ce n’est pas encore un critère d’accessibilité mobile mais une bonne pratique  :)
{% endhint %}

## 6/ Zoom sans perte d’information

Comme sur le web, il faut pouvoir zoomer et agrandir le texte via le paramétrage de son téléphone. &#x20;

🧪 Comment tester ?&#x20;

Augmenter la taille du texte (pour s’approcher des 200% comme sur le web) et vérifier que les textes sont lisibles, la navigation toujours possible et qu’il ne manque pas d’éléments graphiques.&#x20;

Pour Android et iOS : la taille de police est configurable depuis les réglages.

* Android : depuis les paramètres, rechercher “ Taille de l’affichage” (dépend des surcouches des téléphones mobiles)
* iOS : depuis les paramètres “Centre de contrôle” > “taille du texte”

❤️ Vous remercieront : les personnes malvoyantes, dyslexiques et toutes les personnes qui ont des préférences de lecture et de configuration de téléphone.&#x20;

💡Pense-bête : pensez à coder la taille du texte en taille relative.&#x20;

{% hint style="info" %}
📱RAAM : [https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-8-2](https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-8-2)&#x20;
{% endhint %}

## 7/ Navigation au clavier  <a href="#docs-internal-guid-6634a53c-7fff-bd9c-66c0-1ea14308cdc1" id="docs-internal-guid-6634a53c-7fff-bd9c-66c0-1ea14308cdc1"></a>

Il est possible d’ajouter un clavier externe (le plus simple est un clavier Bluetooth)  pour naviguer sur les apps mobile.

Pour Android, il existe des[ tutoriels](https://appt.org/en/docs/android/features/keyboard-access) pour connaître les raccourcis de base.&#x20;

Pour iOS, n’oubliez pas d’activer l’option dans Réglages > Accessibilité > Claviers > Accès clavier complet.

🧪 Comment tester ?

* Android et iOS :&#x20;
  * connectez le clavier,&#x20;
  * et procédez au test pour vérifier qu’il n’y a pas de piège au clavier,&#x20;
  * que les éléments de navigation sont activables (lien, boutons…)&#x20;
  * que l’ordre est cohérent et correspond au sens de lecture.

<details>

<summary>Les touches à connaître pour naviguer </summary>

* La touche Tab (⇥) pour passer à l’option suivante,

- les touches Shift puis Tab (⇧+⇥) pour revenir à l’option précédente

* entrée (↵) pour sélectionner,

- espace (▭) pour cocher - décocher une case à cocher,&#x20;

* les flèches (→←↑↓) pour défiler, sélectionner un bouton radio ou une option dans une liste déroulante

</details>

* Android : il est possible d’utiliser [Switch Access ](https://support.google.com/accessibility/android/answer/6122836?hl=fr)pour faire le test - application disponible sur le Playstore pour naviguer avec les boutons physiques du téléphone - qui peut remplacer le clavier.

❤️ Vous remercieront : les personnes utilisant la saisie vocale, des technologie d'assistance, les personne aveugle ou avec des troubles moteur.&#x20;

💡 Pense-bête : le clavier permet également d’accéder aux lecteurs d’écran, pensez à les tester également.

