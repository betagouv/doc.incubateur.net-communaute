# Faire un service accessible avec le DSFR

* Utiliser correctement le DSFR permet de **garantir une base saine en accessibilité**.
* On peut **créer ses propres composants**, à condition de le faire avec soin !
* Le DSFR ne résout pas tout : attention à **produire des contenus accessibles**.

{% hint style="info" %}
Ce contenu est aussi disponible sous la forme de webinaire\
🖥️ [**Support de présentation**](https://docs.google.com/presentation/d/1fqlKT51fbjqu0OrU30OLvQK5CURFcDZmJHMcZsvauCI/edit#slide=id.g2072cd81032_0_144)
{% endhint %}

### Le DSFR aide à une base saine <a href="#le-dsfr-aide-a-une-base-saine" id="le-dsfr-aide-a-une-base-saine"></a>

Nativement, les composants officiels du DSFR sont **déjà accessibles**. Concrètement, le DSFR aide à être [conforme au RGAA](https://accessibilite.numerique.gouv.fr/) :

* **40 %** des critères sont **nativement inclus** dans le DSFR.\
  &#xNAN;_&#x50;ar exemple : le critère 11.1 « Chaque champ de formulaire a-t-il une étiquette ? »_
* **30 %** des critères sont **documentés** dans le DSFR.\
  &#xNAN;_&#x50;ar exemple : le Critère 11.2 « Chaque étiquette associée à un champ de formulaire est-elle pertinente ? »_
* **30 %** des critères sont « **hors DSFR** ».\
  &#xNAN;_&#x50;ar exemple : le Critère 11.3 « Dans chaque formulaire, chaque étiquette associée à un champ de formulaire ayant la même fonction et répété plusieurs fois dans une même page ou dans un ensemble de pages est-elle cohérente ? »_

### Créer ses propres composants <a href="#creer-ses-propres-composants" id="creer-ses-propres-composants"></a>

Si un composant n’existe pas, il est possible de créer ses propres composants, en respectant quelques bonnes pratiques :

#### Designer un composant accessible <a href="#designer-un-composant-accessible" id="designer-un-composant-accessible"></a>

Choisir les couleurs avec soin :

* Respecter les tokens de couleurs
* Ne pas communiquer des informations uniquement par la couleur
* Vérifier les contrastes

#### Coder un composant accessible <a href="#coder-un-composant-accessible" id="coder-un-composant-accessible"></a>

* Est-ce que ça ne serait pas déjà une balise HTML ? _S’appuyer sur la référence_ [_HTML elements reference – MDN_](https://developer.mozilla.org/en-US/docs/Web/HTML/Element)
* S’inspirer d’autres sources
  * [Patterns du WAI (W3C)](https://www.w3.org/WAI/ARIA/apg/patterns)
  * [Design System de GOV.UK](https://design-system.service.gov.uk/components/)
  * [Inclusive Components](https://inclusive-components.design/)
  * [A Complete Guide To Accessible Front-End Component](https://www.smashingmagazine.com/2021/03/complete-guide-accessible-front-end-components/)
* Est-ce que mon composant est utilisable au clavier ?
* Est-ce que l’état de mon composant est disponible à l’API d’accessibilité ?
* Est-ce que je peux utiliser mon composant avec un lecteur d’écran ?

### Produire des contenus accessibles <a href="#produire-des-contenus-accessibles" id="produire-des-contenus-accessibles"></a>

La majorité des critères qui relèvent du design ou du code sont pris en compte dans le DSFR. Mais reste globalement tous les critères **liés aux contenus**. Par exemple :

* Soigner les titres des pages (Chaque titre est pertinent, unique et bref).
* Soigner la hiérarchie des titres (Le plan est pertinent, logique, et à l’image du design).
* La navigation est possible de plusieurs manière (menu, moteur de recherche, plan du site)
* etc etc.

{% hint style="info" %}
👉 La [**Notice d’accessibilité éditoriale**](https://www.accede-web.com/notices/editoriale-modele/) vous guidera sur toutes les bonnes pratiques en terme de contenu
{% endhint %}
