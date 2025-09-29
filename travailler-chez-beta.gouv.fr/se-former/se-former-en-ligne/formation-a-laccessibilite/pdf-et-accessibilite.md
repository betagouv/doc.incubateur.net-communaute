---
description: Cette page propose des ressources pour produire des PDF accessibles
---

# PDF et Accessibilité

### Web versus PDF

La philosophie entre _web accessible_ et _PDF accessible_ est similaire : **baliser le contenu pour le rendre perceptible par les technologies d’assistances**.

En revanche, les outils pour le faire sont beaucoup moins nombreux côté PDF. En effet, le Web a été conçu pour tous les usages. Il est nativement accessible (même s’il n’est pas toujours utilisé correctement…). A contrario, la technologie PDF est née propriétaire. Elle n'est devenue un format ouvert qu'en 2008.

La mise en accessibilité des PDF est donc beaucoup moins documentée en général ; mais cette documentation vise à rassembler différentes ressources sur le sujet :

* [Comment produire un PDF accessible ?](pdf-et-accessibilite.md#produire-un-pdf-accessible)
* [Comment vérifier l'accessibilité d'un PDF ?](pdf-et-accessibilite.md#verifier-laccessibilite-dun-pdf)
* [Comment rendre un PDF accessible ?](pdf-et-accessibilite.md#que-faire-des-pdfs-non-accessibles)

### Produire un PDF accessible

Voici une liste non exhaustive des points d'attention à avoir pour produire un PDF accessible :

* Titre et langue du document
* Titres (h1, h2…)
* Images et alternatives textuelles
* Ordre de lecture
* Listes et tableaux…
* Espacements (sauts de page…)
* Couleurs et contrastes

Selon l'outil utilisé, la marche à suivre va différer.

Voici quelques exemples :

* Côté logiciels en ligne ou bureautique :
  * ✅ **Word** et **Libre Office** permettent de produire des PDFs accessibles. Voici la [checkliste de vérification](https://design.numerique.gouv.fr/outils/checklist-pdf/) pour ne rien oublier.
  * ✅ **InDesign** et **AcrobatPro** permettent aussi de produire des PDFs accessibles. Voici les [notices](https://www.pdf-accessible.com/notices-accessibilite-indesign-acrobat/) décrivant la marche à suivre.
  * ✅ L'outil **Canva** propose une [documentation](https://www.canva.com/help/pdf-accessibility-features/) et des fonctionnalités dédiées à l'accessibilité.
  * 😬 En revanche, **Google Docs** et **Google Slides** ne produisent pas du tout des documents accessibles nativement ; mais en passant par un export vers Word ou PowerPoint, on peut toutefois produire des documents PDFs.
* Côté librairies :
  * ✅ [iText](https://itextpdf.com/) (Java), [PDFBox](https://pdfbox.apache.org/) (Java) ou [PDFKit](https://pdfkit.org/) (JavaScript) disposent d'API permettant de baliser les PDFs générés.
  * ❌ En revanche, les libs comme [pdf-lib](https://pdf-lib.js.org/) ou [react-pdf](https://react-pdf.org/components) ne semblent pas proposer suffisament de fonctionnalités d'accessibilité pour produire des documents balisés.

En règle général, les fonctionnalités (si elles existent) ne sont pas toujours bien documentées. Il faut fouiller la documentation, regarder dans les issues ou faire des recherches avec les mots clés _A11Y_, _Tagged PDFs_ ou _PDF/UA_ pour trouver des informations...

### Vérifier l'accessibilité d'un PDF

Il existe plusieurs outils qui permettent de valider l'accessibilité d'un PDF, notamment en vérifiant :

* que le PDF est bien construit
* la présence de certaines **métadonnées** (ex : langue, titre du document…)
* la présence des bonnes **balises** (tags)
* la pertinence des **alternatives aux images**
* les **contrastes** sont suffisants
* l'**ordre de lecture**

#### En ligne

L'outil [check.axes4.com](https://check.axes4.com/en) permet de vérifier les métadonnées et la présence de balises. En revanche, il ne donne pas d'indication sur l’emplacement des erreurs.

L'outil [pdfchecker.docaxess.com](https://pdfchecker.docaxess.com/) permet de vérifier les métadonnées et de visualiser l’arbre des balises. En revanche, il ne donne pas d'indication sur les non conformités.

Enfin, ces 2 outils impliquent d'uploader sur des serveurs les PDFs. À recommander pour des fichiers non confidentiels.

#### Sur Desktop

Avec [PAC (PDF Accessibility Checker)](https://pac.pdf-accessibility.org/en), disponible uniquement sur Windows, il est possible d'avoir des détails sur les erreurs d'accessibilité. La documentation [Comprendre et corriger les erreurs d’accessibilités](https://tanaguru.com/pac-comprendre-et-corriger-les-erreurs-daccessibilite) donne des indications sur comment les corriger.

[PDFix Desktop Lite](https://pdfix.net/products/pdfix-desktop-lite/) permet d'analyser un fichier. Il propose aussi une fonctionnalité pour faciliter le balisage des contenus (bien que des opérations manuelles seront nécessaires, par exemple pour les alternatives aux images), mais elle est payante.

#### En ligne de commande

Il existe plusieurs types d'outils :

* [pdfinfo](https://www.mankier.com/1/pdfinfo) de [popputils](https://pypi.org/project/poppler-utils/) permet de voir l'arbre d'accessibilité par exemple
* [VeraPDF](https://docs.verapdf.org/cli/) propose plusieurs type de vérification
* L'article [PDF processing and analysis with open-source tools](https://bitsgalore.org/2021/09/06/pdf-processing-and-analysis-with-open-source-tools.html) rassemble un certain nombre d'autres outils.

### Que faire des PDFs non accessibles ?

Si votre service propose des PDFs non accessibles, plusieurs stratégies peuvent s'offrir à vous.

#### Proposer une alternative accessible

Cette alternative peut être un autre document à télécharger, mais qui privilégie le texte (par exemple .doc ou .txt). L'alternative peut aussi être une page html.

#### Baliser les PDF

S'il n'est pas possible de produire des PDFs accessible, il est toujours possible de les rendre accessible à posteriori.

Les logiciels Acrobat Pro ou PDFix (tous les deux payants) le permettent, moyennant du temps. La démarche à suivre pour Acrobat est décrite dans la notice [Rendre accessibles les documents PDF avec Adobe Acrobat](https://www.pdf-accessible.com/notices-accessibilite-indesign-acrobat/#acrobat).

Cette solution est particulièrement adaptée quand le nombre de PDF est limité.

#### Produire des PDFs accessibles à la demande

Dans le cas où il y a _trop_ de PDF à rendre accessible, il est possible de proposer une option aux utilisateurs/utilisatrices.

C'est le choix qu'a fait Métropole de Grenoble avec son formulaire de [Demande de document numérique accessible aux personnes en situation de handicap](https://www.grenoblealpesmetropole.fr/621-demande-de-document-numerique-accessible.htm). Ce n'est pas idéal d'un point de vue utilisateur mais ça évite de laisser la personne avec un document non accessible.

### Ressources supplémentaires

* [**RAPDF (référentiel luxembourgeois)**](https://accessibilite.public.lu/fr/rapdf1/) : c'est le référentiel qui permet de vérifier que les documents PDF présentent une accessibilité de base. À date, il n’y a pas de référentiel équivalent français, mais le référentiel luxembourgeois étant une application de la directive européenne, il peut donc s'appliquer en France.
* [**Guide de création de documents bureautiques accessibles**](https://disic.github.io/guides-documents_bureautiques_accessibles/html/) : ce guide aide documente la manière de créer des documents bureautiques accessibles avec des logiciels de bureautique. Il date du RGAA 3 et n’a pas été mis à jour au passage au RGAA 4, mais sa philosophie reste valable.
* [**Documentation des balises PDF**](https://design.ipedis.com/5dda74a23/p/122882-overview) **:** cette documentation décrit les différentes balises et leurs usages.

{% hint style="success" %}
Si votre équipe a besoin d'aide pour une problématique relative à l'accessibilité des documents PDFs, n'hésitez pas à solliciter le [Pôle Numérique Inclusif](../../../../solliciter-et-contribuer-a-la-communaute/je-sollicite-de-laide-transverse/aide-transverse-pole-numerique-inclusif.md).
{% endhint %}
