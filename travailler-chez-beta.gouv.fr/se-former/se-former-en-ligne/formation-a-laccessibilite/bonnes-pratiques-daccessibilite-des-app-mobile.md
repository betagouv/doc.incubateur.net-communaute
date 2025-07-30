---
description: >-
  (Re)voir les bonnes pratiques pour garantir une expérience utilisateurice
  inclusive sur vos applications mobiles.
---

# Bonnes pratiques d'accessibilité des app mobile

Sur une application mobile, il est difficile d’inspecter le code source comme sur le web. Mais il existe plusieurs astuces pour tester et avoir une discussion avec son équipe, car l’**accessibilité est l’affaire de tout le monde !**&#x20;

Il est aussi primordial de connaître les gestes de base des OS et des lecteurs d’écran (Voice Over / Talk Back) pour tester correctement - on vous explique plus bas.

NB. Si vous développez une **application mobile hybride,** nous vous recommandons d’utiliser le package[ Flutter accessibility\_tools](https://pub.dev/packages/accessibility_tools) pour tester votre application.&#x20;

\
Pour finir, la norme en vigueur pour les applications mobiles est le [RAAM](https://accessibilite.public.lu/fr/raam1.1/index.html) (Référentiel d'évaluation de l'Accessibilité des Applications Mobiles).



## 1/ Contraste <a href="#docs-internal-guid-683b58cc-7fff-6d82-4ea1-fd367ecd3916" id="docs-internal-guid-683b58cc-7fff-6d82-4ea1-fd367ecd3916"></a>

\
En respectant le minimum de contraste entre le texte et l'arrière-plan (contraste de 4,50:1 en mode clair et sombre), vous permettez à tous les utilisateurices de pouvoir lire pleinement les textes dans divers contextes (dont l’extérieur).&#x20;



🧪 Comment tester ?&#x20;

* Android : télécharger l’application mobile [Accessibility Scanner](https://play.google.com/store/apps/details?id=com.google.android.apps.accessibility.auditor\&hl=fr\&pli=1) pour soumettre votre app mobile à des tests d’accessibilité et avoir les résultats et des recommandations.\

* iOS : Utiliser l'outil [Accessibility Inspector](https://developer.apple.com/documentation/accessibility/accessibility-inspector) dans Xcode ou installer Colour Contrast Analyzer sur Windows/Mac

N’oubliez pas de tester en Light et Dark mode.&#x20;



❤️ Vous remercieront : les personnes ayant des troubles de la vision, des difficultés de concentration et toutes les personnes utilisant leurs téléphone mobile dans un environnement avec des conditions lumineuses déplorables.



&#x20;💡Pense-bête :&#x20;

* Ne pas s’appuyer uniquement sur la couleur pour véhiculer une information (hachurage, motif, texte sur la couleur…)&#x20;
* Utiliser le [DSFR](https://www.systeme-de-design.gouv.fr/version-courante/fr/fondamentaux/couleurs--palette) (Design System de l’état) et sa palette de couleur accessible. &#x20;

\
📱RAAM : [https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-2-2](https://accessibilite.public.lu/fr/raam1.1/referentiel-technique.html#crit-2-2)
