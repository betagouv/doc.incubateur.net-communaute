---
description: >-
  Cette documentation vise à aider les équipes à réagir si elles sont confrontées à des attaques de phishing, typosquatting ou usurpation de l'identité de leur produit numérique.
---

{% hint style="danger" %}
Si vous faites face à une attaque, rendez-vous directement en section [Lutte et contre mesures](#️-lutte--contre-mesures) !
{% endhint %}

# 📖 Définition

**Typosquatting** : Le typosquatting (ou cybersquatting typographique) est une technique frauduleuse consistant à enregistrer des noms de domaine très similaires à des sites légitimes en exploitant les fautes de frappe courantes des utilisateurs. L'objectif est de détourner le trafic vers des sites malveillants pour voler des données personnelles, diffuser des malwares ou usurper l'identité d'organisations officielles.

**Phishing** : Le phishing (hameçonnage) est une technique de cyberattaque qui consiste à tromper les victimes en se faisant passer pour une entité de confiance (banque, service public, entreprise) afin de leur dérober des informations sensibles comme des identifiants, mots de passe, données bancaires ou personnelles. Le phishing s'opère couramment via du typosquatting notamment.

---

# 🛡️ Prévention

Afin de prévenir ce type d'attaque et de limiter leur portée, un certain nombre de dispositions techniques et juridiques sont possibles.

{% hint style="info" %}
Les recommandations listées ci-dessous sont à adapter à l'exposition et à la sensibilité de votre produit numérique.
{% endhint %}

### 1. Protection des vos noms de domaine

**Assurez-vous d’avoir une couverture minimale autour de vos noms de domaine** sur les principales extensions et déclinaisons évidentes de votre service public.

Voici les principales stratégies de typosquatting :
- déclinaisons par modification d'extension (TLD) : .fr, .net, .com, .org, .eu.
- déclinaisons par substitution, ajout ou suppression de caractères : `example.com` → `ezample.com`
- déclinaisons par variation grammaticale (singulier, pluriel) : `servicepublic.fr` → `servicespublic.fr`
- déclinaisons par ajout de césures (`-`) : servicepublic.fr → service-public.fr 

{% hint style="info" %}
Malheureusement, il s'agit d'une course perdue d'avance, veillez néanmoins à couvrir les cas les plus évidents.
{% endhint %}

### 2. Dépôt de marque

En phase de construction, **veillez à déposer la marque** correspondante au nom de votre produit numérique. Cette protection est cruciale pour :
- Faciliter les démarches de takedown
- Renforcer les recours juridiques
- Protéger l'identité du service public

{% hint style="info" %}
Pour réaliser ce dépot de marque auprès de l'INPI, vous pouvez vous faire aider par le service des affaires juridiques de votre administration d'accueil.
{% endhint %}

### 3. Protection du code open-source

**Veillez à disposer d’un disclaimer dans tous vos dépôts open-source** utilisant des marques et symboles de l'État français (notamment le DSFR).

Ce disclaimer indique clairement les limites d'utilisation du code source et prévient les éventuels ré-utilisateur des risques encourus.

Exemple de disclaimer pour le projet DossierFacile :
```markdown
### ⚠️ IMPORTANT : Limites d'utilisation
Bien que ce code soit distribué sous licence open source MIT, certains éléments contenus dans ce repository sont protégés et leur réutilisation est strictement interdite :

### Marque DossierFacile
Ce repository utilise le nom et le logo de [DossierFacile](https://www.dossierfacile.logement.gouv.fr/), qui constituent une marque déposée de l'État français. Toute utilisation de cette marque en dehors du contexte officiel est interdite.

### Système de Design de l'État Français (DSFR)
Ce repository met en oeuvre le [Système de Design de l'État Français (DSFR)](https://www.systeme-de-design.gouv.fr/). **Il est formellement interdit à tout autre acteur d'utiliser le DSFR pour des sites web ou des applications**. Le DSFR représente l'identité numérique de l'État français.

### Sanctions légales
En cas d'usage non autorisé, vous vous exposez à des poursuites légales, notamment sur la base des articles suivants :
- Usurpation des symboles de la République française ([art. 444-1 Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000006418825))
- Contrefaçon ([art. L335-2 Code de la propriété intellectuelle](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000032655082))
- Entrave au fonctionnement d'un système automatisé de traitement de données de l'État ([art. 323-2 Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000030939443))
- Escroquerie ([art. 313-2 du Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000049531795))

**Recommandation** : Si vous souhaitez réutiliser ce code, supprimez ou remplacez tous les éléments liés à la marque DossierFacile et au DSFR avant déploiement.
```

### 4. Protection du code sensible

**Considérez la non-publication d'une partie de votre code sensible** (SSO, authentification, etc.).

**Justification légale** selon les [guides data.gouv.fr](https://guides.data.gouv.fr/autres-ressources-utiles/codes-sources-du-secteur-public-lesquels-ouvrir-pourquoi-et-comment/cadre-juridique) :

> Sa [code-source] communication ne doit pas porter atteinte :
> 
> - à la sûreté de l'État, à la sécurité publique, à la **sécurité des personnes** ou à la sûreté des systèmes d'information des administrations ;
> - à la recherche et à la **prévention, par les services compétents, d'infractions de toute nature**


---

# 🔍 Identification / Surveillance

Plusieurs mesures techniques existent pour surveiller la réutilisation de son code source ou le typosquatting de son domaine.

### 1. Tracking Matomo

**Fonctionnement :** Le tracking des pages et interactions via Matomo peut vous être d'une grande aide pour identifier la réutilisation de votre code source. A condition d'avoir hardcodé le paramétrage (notamment le `SITE_ID`). Il s'agit d'une mauvaise pratique volontaire afin que les statistiques d'utilisation de site frauduleux remontent également dans votre Matomo.

**Surveillance :** Créez un segment spécifique dans Matomo afin d'identifier le trafic ne provenant pas de vos domaines. Il est ensuite possible de paramétrer une [alerte automatique](https://matomo.org/faq/general/create-and-manage-custom-alerts/) pour surveiller le trafic sur ce segment.

### 2. Mission APIE / Nameshield

**Fonctionnement :** Chaque Ministère bénéficie du marché interministériel mise en oeuvre par la mission [APIE](https://www.economie.gouv.fr/apie) pour surveiller et défendre les noms de domaine de l'Etat. Ce marché est opéré par la société Nameshield. Chaque Ministère définit un vocable de mot-clés qui sont ensuite surveillés par la société Nameshield.

**Alertes :** Tous nouveaux domaines pouvant potentiellement représenter un risque de typosquattage est remonté à la mission APIE qui se charge de prévenir les Ministères.

{% hint style="info" %}
**Limites identifiées** : Les produits numériques beta.gouv sont rarement bien identifiés auprès des acteurs SSI des Ministères, cette approche bien qu'ayant montré son efficacité ne vous permet pas une grande réactivité.
{% endhint %}

### 3. Surveillance via CDN (mesure avancée)

**Fonctionnement :** Remplacer certains contenus statiques (images, etc) de votre site par des url vers un CDN (cela peut être un simple serveur Nginx correctement configuré). Ce CDN permet de surveiller l’origine des `http_referer` et si nécessaire de remplacer certains contenus à la volée (blacklist) sur le site attaquant.

**Alertes :** Lorsque les requêtes proviennent d'origines (`http-referer`) inconnues, un log créé au niveau de votre serveur peut déclencher une alerte.

**Avantages :** Détection en temps réel. Possibilité également de réagir à une attaque en remplaçant le contenu statique (images, etc) sur le site attaquant.

{% hint style="info" %}
Si vous êtes intéressés par cette approche, l'équipe [DossierFacile](https://beta.gouv.fr/startups/dossierfacile.html) l'a mise en oeuvre.
{% endhint %}

---

# ⚔️ Lutte / Contre-mesures

## Actions immédiates

### 1. Documentation de l'incident

**Créez immédiatement une fiche incident** à partir du modèle disponible [ici](./readme-1/modele-de-rapport-dincident.md)

Compléter le fil de suivi pour :
- Répertorier toutes les actions menées
- Communiquer les résultats obtenus par l'équipe
- Maintenir une chronologie précise

**Collectez un maximum de preuves dès les premiers moments :**
- Captures d'écran du site frauduleux
- Informations WHOIS du domaine : [https://www.whois.com/](https://www.whois.com/)
- Adresse IP et enregistrement A du DNS : [https://dnschecker.org/](https://dnschecker.org/)
- Copies des pages web frauduleuses : [https://web.archive.org/](https://web.archive.org/)

### 2. Communication utilisateurs

**Prévenez vos utilisateurs** via :
- Bandeau d'alerte sur votre site officiel
- Communication sur les réseaux sociaux
- Email aux utilisateurs inscrits si nécessaire et en fonction de la gravité

## Alertes institutionnelles

### 3. Chaîne SSI

**Prévenez en premier lieu la chaîne SSI** de votre administration d'accueil, via :
- Votre RSSI
- Le responsable technique de votre incubateur

En leur communiquant :
- État détaillé de l'attaque
- Gravité estimée
- Preuves collectées
- Actions déjà entreprises

### 4. Dépôt de plainte

**Une fois le cadre légal défini, effectuez un dépôt de plainte** en commissariat via une personne de l'administration ayant le pouvoir suffisant.

**Articles de loi applicables :**
Dans le cas d'une attaque de phishing par typosquatting avec réutilisation de votre code source, voici les articles de loi applicables :
- Usurpation des symboles de la République française ([art. 444-1 Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000006418825))
- Contrefaçon ([art. L335-2 Code de la propriété intellectuelle](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000032655082))
- Entrave au fonctionnement d'un système automatisé de traitement de données de l'État ([art. 323-2 Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000030939443))
- Escroquerie ([art. 313-2 du Code pénal](https://www.legifrance.gouv.fr/codes/article_lc/LEGIARTI000049531795))

### 5. Alerte APIE

**Prévenez [l'APIE](https://www.economie.gouv.fr/apie)** ([samuel.bonnaud-le-roux@finances.gouv.fr,](mailto:samuel.bonnaud-le-roux@finances.gouv.fr) [maxence.boile-devillard@finances.gouv.fr](mailto:maxence.boile-devillard@finances.gouv.fr))

L'APIE pourra lancer des actions via leur partenaire technique Nameshield (voir [Mission APIE / Nameshield](#2-mission-apie--nameshield))

### 6. Notification ANSSI

**Assurez-vous que l'ANSSI a été sollicitée** par la chaine SSI de votre administration une fois le dépôt de plainte réalisé pour les incidents de sécurité majeurs.

L’ANSSI a également en son pouvoir des outils pour lutter contre ses attaques.

### Actions complémentaires

### 7. Signalement Phishing Initiative

**Effectuez un signalement sur [phishing-initiative.eu](https://phishing-initiative.eu/contrib/)** :

- Mobilisez plusieurs collègues pour maximiser l'efficacité (> 4 signalements)
- Le site pourra être signalé comme frauduleux dans les navigateurs partenaires (Chrome, Firefox, etc.)

### 8. Takedown et actions légales

**Initiez les procédures de takedown** :

Via les informations WHOIS obtenues :
- Contactez l'hébergeur du site frauduleux 
- Contactez le registrar du nom de domaine (report-abuse)

{% hint style="info" %}
Ces démarches de takedown menées à l’échelle du projet n’aboutissent que très rarement. Les registrar utilisés sont souvent connus pour ne pas répondre à ces signalements.
{% endhint %}