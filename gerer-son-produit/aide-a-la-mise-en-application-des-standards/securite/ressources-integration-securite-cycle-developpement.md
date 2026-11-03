# Ressources pour intégrer la sécurité au cycle de développement

Ce document détaille les ressources utiles pour intégrer la sécurité à
chaque étape du cycle de développement de votre service numérique. Il
permet notamment :

- d'appliquer les recommandations du **chapitre 7 du Référentiel général
  de sécurité (RGS)** concernant la sécurité dans les projets ;
- de guider les équipes dans la mise en œuvre des mesures de
  [MonServiceSécurisé](https://monservicesecurise.cyber.gouv.fr) pour
  constituer leur dossier d'homologation.

Les ressources ci-dessous contribuent également à la mise en œuvre des
mesures du [référentiel MonServiceSécurisé](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures)
liées à la sécurité du développement. Ces correspondances sont signalées
au fil du document.

## Table des matières

1. [Pourquoi l'OWASP comme principale référence ?](#pourquoi-lowasp-comme-principale-reference)
   - [Qu'est-ce que l'OWASP ?](#quest-ce-que-lowasp)
   - [Pourquoi l'OWASP ?](#pourquoi-lowasp)
2. [Documentation des mécanismes de sécurité](#documentation-des-mecanismes-de-securite)
   - [Authentification](#authentification)
   - [Contrôle d'accès](#controle-dacces)
   - [Traçabilité et audit (logging)](#tracabilite-et-audit-logging)
   - [Usage de la cryptographie](#usage-de-la-cryptographie)
   - [Validation, encodage et filtrage des données traitées par l'application](#validation-encodage-et-filtrage-des-donnees-traitees-par-lapplication)
3. [Bonnes pratiques de développement sécurisé](#bonnes-pratiques-de-developpement-securise)
   - [Revue de code orientée sécurité](#revue-de-code-orientee-securite)
   - [Classes de vulnérabilités les plus fréquentes](#classes-de-vulnerabilites-les-plus-frequentes)
4. [Tests de sécurité automatisés](#tests-de-securite-automatises)
   - [Intégration de la sécurité dans vos pipelines CI/CD](#integration-de-la-securite-dans-vos-pipelines-cicd)
   - [Sécurité des pipelines CI/CD](#securite-des-pipelines-cicd)
   - [Exemples d'outils](#exemples-doutils)
5. [Surveillance continue et gestion de la production](#surveillance-continue-et-gestion-de-la-production)
   - [Gestion des vulnérabilités](#gestion-des-vulnerabilites)
   - [Surveillance et réponse aux incidents](#surveillance-et-reponse-aux-incidents)
6. [Formation et sensibilisation](#formation-et-sensibilisation)
   - [Ressources de formation](#ressources-de-formation)
   - [Veille sécurité](#veille-securite)
7. [Pour aller plus loin](#pour-aller-plus-loin)
   - [Standards et référentiels](#standards-et-referentiels)
   - [Ressources spécifiques par technologie](#ressources-specifiques-par-technologie)
8. [Récapitulatif des mesures MonServiceSécurisé](#recapitulatif-des-mesures-monservicesecurise)
9. [Contribuer](#contribuer)

---

## Pourquoi l'OWASP comme principale référence ?

La majorité des ressources présentées dans ce document proviennent de
l'**OWASP** (Open Worldwide Application Security Project).

### Qu'est-ce que l'OWASP ?

L'OWASP est une **fondation à but non lucratif** qui œuvre pour
l'amélioration de la sécurité des logiciels. C'est aujourd'hui la
**référence mondiale** en matière de sécurité applicative.

**Caractéristiques clés :**

- **Indépendance** : l'OWASP est indépendante de tout éditeur ou
  fournisseur de solutions de sécurité. Ses recommandations se veulent
  objectives et non commerciales.
- **Open source** : tous les projets, outils et documentations de
  l'OWASP sont libres et gratuits, sous licences open source.
- **Communauté mondiale** : plus de 250 chapitres locaux dans le monde
  et des milliers de contributeurs bénévoles (chercheurs, développeurs,
  experts en cybersécurité).
- **Reconnaissance institutionnelle** : l'OWASP est citée comme
  référence par de nombreux organismes officiels, dont l'ANSSI en
  France, le NIST aux États-Unis et l'ENISA en Europe.

### Pourquoi l'OWASP ?

#### Une approche pragmatique et orientée développeurs

Les ressources de l'OWASP sont conçues **par des développeurs, pour des
développeurs**. Elles fournissent des conseils pratiques, directement
applicables dans le code.

#### Un maintien actif et une veille continue

Les projets de l'OWASP sont constamment mis à jour pour refléter
l'évolution des menaces et des technologies.

#### Une validation par la pratique

Les recommandations de l'OWASP sont issues de l'analyse de milliers
d'incidents de sécurité réels et de retours d'expérience de la
communauté mondiale. Ce ne sont pas des spéculations, mais des
pratiques éprouvées.

#### Un format « cheat sheet » accessible

Les **[OWASP Cheat Sheets](https://cheatsheetseries.owasp.org/)**
(fiches pratiques) sont des condensés d'information facilement
consultables. Elles fournissent l'essentiel à savoir sur un sujet
précis, sans noyer le lecteur dans des détails théoriques.

#### Une neutralité technologique

L'OWASP couvre un grand nombre de langages de programmation, de
frameworks et d'architectures. Quelle que soit votre stack technique,
vous devriez y trouver des ressources adaptées.

#### Une compatibilité avec les exigences réglementaires

Les recommandations de l'OWASP sont **alignées avec les standards de
sécurité**, comme le RGS ou la directive NIS2. Suivre les bonnes
pratiques de l'OWASP facilite la conformité réglementaire.

**En résumé** : l'OWASP est devenue un standard de facto dans
l'industrie. Adopter ses recommandations, c'est se placer au niveau des
meilleures pratiques mondiales en matière de sécurité applicative.

---

## Documentation des mécanismes de sécurité

La documentation de vos mécanismes de sécurité permet à l'équipe de
comprendre comment le service protège les données et les utilisateurs.
Elle facilite également les audits de sécurité et l'homologation.

### Authentification

> **Mesure MonServiceSécurisé** : cette section contribue **partiellement**
> à la mise en œuvre de la mesure
> [#0092 — S'assurer que tous les accès au système d'information sont authentifiés via a minima un secret](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0092).
>
> **Ce qui est couvert** : l'authentification des utilisateurs, via une
> fiche OWASP et la recommandation de déléguer l'authentification à
> ProConnect ou FranceConnect.

**[Fiche Authentification - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)**

Cette fiche détaille les bonnes pratiques pour mettre en place des
mécanismes d'authentification robustes.

Dans le contexte beta.gouv.fr, afin de ne pas être confronté à la
complexité et aux risques de la mise en place d'un système
d'authentification, nous recommandons de déléguer l'authentification
des utilisateurs à un service comme ProConnect ou FranceConnect.

**Cas d'usage** : utilisez cette ressource lors de la conception de
votre système d'authentification ou pour auditer un système existant.

### Contrôle d'accès

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en œuvre
> de la mesure
> [#0093 — Restreindre les droits d'accès de chaque utilisateur authentifié aux seules ressources nécessaires](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0093).

**[Fiche Contrôle d'accès - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html)**

Guide pour implémenter des mécanismes de contrôle d'accès efficaces :

- principe du moindre privilège ;
- séparation des privilèges ;
- modèles de contrôle d'accès (RBAC, ABAC, ReBAC, DAC, ACL…) ;
- protection contre les attaques par élévation de privilèges.

**Cas d'usage** : à consulter lors de la définition des rôles et
permissions dans votre application.

### Traçabilité et audit (logging)

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en œuvre
> de la mesure
> [#0157 — Conserver et centraliser les journaux et évènements de sécurité utiles à la détection des principaux scénarios de menaces](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0157).

La traçabilité des actions dans votre service, mais aussi sur son code
source, son infrastructure ou vos pipelines CI/CD, permet
l'investigation à la suite d'un incident ainsi que la mise en place de
mesures de détection et de réponse aux attaques.

**[Fiche Traçabilité et audit - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)**

Recommandations pour la mise en place de journaux d'événements :

- quels événements journaliser (authentification, accès aux données
  sensibles, erreurs) ;
- format et structure des journaux ;
- protection des journaux contre la modification ;
- conformité au RGPD dans les journaux.

**Cas d'usage** : essentiel pour la détection des tentatives d'intrusion
et les analyses post-incident.

### Usage de la cryptographie

> **Mesures MonServiceSécurisé** : cette section contribue à la mise en
> œuvre des mesures
> [#0162 — Protéger les mots de passe stockés](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0162)
> et
> [#0143 — Désactiver tout flux de données non chiffré](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0143).

**[Fiche Stockage chiffré et sécurisé - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html)**

Guide sur l'utilisation de la cryptographie pour protéger les données :

- algorithmes et modes d'opération cryptographiques recommandés ;
- gestion des clés cryptographiques ;
- chiffrement des données au repos et en transit ;
- hachage sécurisé des mots de passe.

### Validation, encodage et filtrage des données traitées par l'application

**[Fiche Validation des entrées - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html)**

**[Fiche Encodage et échappement des données - OWASP](https://devguide.owasp.org/en/04-design/02-web-app-checklist/04-encode-escape-data/)**

Chaque fois que votre application traite une donnée qui n'est pas au
format attendu, elle risque de ne pas la traiter correctement, ce qui
est source de bugs et de vulnérabilités.

Pour que la donnée soit traitée comme prévu, votre service doit
s'assurer qu'elle :

- est au format attendu ;
- utilise le bon encodage ;
- ne peut pas interférer avec la logique de votre application.

Ces mesures sont d'autant plus importantes lorsque les données
proviennent de sources externes non maîtrisées, par exemple :

- les entrées utilisateurs ;
- les réponses d'API ;
- les connecteurs MCP ;
- les bases de données partagées.

---

## Bonnes pratiques de développement sécurisé

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en
> œuvre de la mesure
> [#0024 — Mettre en œuvre des bonnes pratiques de développement sécurisé](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0024).

L'adoption de pratiques de développement sécurisé réduit
considérablement le nombre de vulnérabilités introduites dans le code.

### Revue de code orientée sécurité

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en œuvre
> de la mesure
> [#0135 — Intégrer, si nécessaire, au programme d'audit un audit de code](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0135).

**[Revue sécurité du code source - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Secure_Code_Review_Cheat_Sheet.html)**

Méthodologie pour effectuer des revues de code axées sur la sécurité :

- points de contrôle spécifiques à la sécurité ;
- identification des motifs de code dangereux ;
- outils d'aide à la revue de code ;
- organisation des revues de code en équipe.

**Cas d'usage** : à intégrer dans vos processus de merge request /
pull request.

### Classes de vulnérabilités les plus fréquentes

**[Les 10 catégories de vulnérabilités les plus fréquentes - OWASP Top 10](https://owasp.org/www-project-top-ten/)**

---

## Tests de sécurité automatisés

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en
> œuvre de la mesure
> [#0168 — Mettre en œuvre des mécanismes d'audit automatique du code](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0168).

L'automatisation des tests de sécurité permet de détecter certaines
vulnérabilités tôt dans le cycle de développement, sans ralentir la
vélocité de l'équipe.

### Intégration de la sécurité dans vos pipelines CI/CD

**[DevSecOps Guideline - OWASP](https://owasp.org/www-project-devsecops-guideline/)**

Guide complet pour intégrer la sécurité dans vos pipelines.

**Types de tests automatisés :**

- **SAST (Static Application Security Testing)** : analyse statique du
  code source pour détecter les vulnérabilités sans exécuter le
  programme ;
- **DAST (Dynamic Application Security Testing)** : tests dynamiques
  sur l'application en cours d'exécution ;
- **SCA (Software Composition Analysis)** : analyse des dépendances
  pour détecter les vulnérabilités connues ;
- **Détection de secrets** : analyse des commits pour détecter les
  secrets (clés d'API, mots de passe) commités par erreur ;
- **Analyse de l'IaC** : vérification de la configuration
  *infrastructure as code* (Terraform, Kubernetes).

**Cas d'usage** : à mettre en place progressivement dans votre
pipeline CI/CD, et localement en **hook de pre-commit**, afin de limiter
la publication de code vulnérable et de secrets sur les dépôts
open source.

### Sécurité des pipelines CI/CD

**[CI/CD Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/CI_CD_Security_Cheat_Sheet.html)**

Les pipelines CI/CD permettent de mettre en place des contrôles de
sécurité, mais constituent également une surface d'attaque importante
qu'il est nécessaire de réduire et de sécuriser.

Recommandations pour sécuriser votre chaîne d'intégration et de
déploiement continus :

- sécurisation des secrets dans les pipelines ;
- contrôle d'accès aux pipelines ;
- validation des artefacts de build ;
- protection contre les attaques sur la chaîne d'approvisionnement
  (*supply chain*).

**Cas d'usage** : audit et sécurisation de votre infrastructure de
CI/CD (GitHub Actions, GitLab CI, etc.).

### Exemples d'outils

> **Des mécanismes sont déjà en place** : si votre projet est hébergé
> dans l'organisation GitHub betagouv, la détection de secrets
> (GitGuardian) et l'analyse statique de code (CodeQL) sont déjà
> activées.

#### Détection de secrets

- **GitGuardian** : détection de secrets dans les dépôts Git (activé
  par défaut sur les organisations beta.gouv.fr) ;
- **TruffleHog** : recherche de secrets dans l'historique Git ;
- **Gitleaks** : détecteur de secrets léger et rapide.

#### SAST

- **CodeQL (GitHub)** : moteur d'analyse statique de GitHub (activé
  par défaut sur les organisations beta.gouv.fr) ;
- **Semgrep / Opengrep** : outils d'analyse statique open source.

#### SCA

- **Dependabot** (GitHub) : alertes sur les vulnérabilités des
  dépendances et pull requests automatiques de mise à jour ;
- **Renovate** (GitHub, GitLab…) : gestion automatisée des dépendances
  et alertes de vulnérabilités, compatible avec GitLab CI/CD ;
- **Snyk** : analyse des dépendances et des conteneurs ;
- **OWASP Dependency-Check** : outil open source d'analyse des
  dépendances.

#### DAST

- **OWASP ZAP** : scanner de vulnérabilités web open source ;
- **Nuclei** : scanner de vulnérabilités rapide et personnalisable.

#### Audit de sécurité CI/CD

- **Zizmor** : audit des workflows GitHub Actions.

---

## Surveillance continue et gestion de la production

La sécurité ne s'arrête pas au déploiement : une surveillance continue
est essentielle pour détecter les incidents et y réagir rapidement.

### Gestion des vulnérabilités

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en
> œuvre de la mesure
> [#0114 — Rendre publics un point de contact et des modalités de communication de tout problème de sécurité](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0114).

**[Vulnerability Disclosure Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html)**

Guide pour mettre en place un processus de divulgation responsable des
vulnérabilités :

- création d'une politique de divulgation ;
- canaux de signalement sécurisés ;
- processus de traitement des signalements ;
- communication avec les chercheurs en sécurité.

**Cas d'usage** : à mettre en place sur votre dépôt GitHub (fichier
`SECURITY.md`) et sur votre service en ligne (fichier
[`security.txt`](https://securitytxt.org/)).

### Surveillance et réponse aux incidents

> **Mesure MonServiceSécurisé** : cette section contribue à la mise en œuvre
> de la mesure
> [#0111 — Mettre en œuvre des mécanismes permettant d'analyser et de qualifier les événements de sécurité ainsi que d'identifier d'éventuels incidents](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0111).

#### Recommandations

- mise en place d'une supervision des journaux de sécurité ;
- alertes automatiques sur les événements suspects ;
- plan de réponse aux incidents de sécurité ;
- tests réguliers du plan de réponse.

#### Outils

- **Sentry** : supervision des erreurs et des exceptions ;
- **ELK Stack / OpenSearch** (Elasticsearch, Logstash, Kibana) :
  centralisation et analyse des journaux ;
- **Grafana + Prometheus** : supervision et alertes ;
- **[Graylog](https://graylog.org)** : centralisation et analyse des
  journaux ;
- **[SigNoz](https://signoz.io)** : observabilité (journaux, métriques,
  traces).

---

## Formation et sensibilisation

> **Mesure MonServiceSécurisé** : cette section contribue **partiellement**
> à la mise en œuvre de la mesure
> [#0026 — Mettre en œuvre un programme de sensibilisation à la sécurité pour l'ensemble des acteurs intervenant sur le système d'information](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0026).
>
> **Ce qui est couvert** : la montée en compétence technique des
> développeurs (formations, plateformes d'entraînement).

La sécurité est l'affaire de toute l'équipe. La formation et la
sensibilisation régulières sont essentielles.

### Ressources de formation

#### Plateformes d'entraînement

- **OWASP Juice Shop** : application e-commerce volontairement
  vulnérable, pour apprendre à exploiter et à corriger des
  vulnérabilités web ;
- **Root Me / Hack The Box / TryHackMe / Hackropole** : plateformes
  d'apprentissage proposant des challenges de sécurité.

Voir aussi l'[annuaire d'applications volontairement vulnérables - OWASP](https://owasp.org/www-project-vulnerable-web-applications-directory/).

#### Formations en ligne

- [Linux Foundation - Developing Secure Software (LFD121)](https://training.linuxfoundation.org/training/developing-secure-software-lfd121/) :
  formation gratuite au développement sécurisé ;
- [ANSSI - SecNumacadémie](https://secnumacademie.gouv.fr/) : MOOC
  gratuit sur la sécurité du numérique ;
- [PortSwigger Web Security Academy](https://portswigger.net/web-security) :
  cours interactifs sur la sécurité web.

### Veille sécurité

> **Mesure MonServiceSécurisé** : cette section contribue **partiellement**
> à la mise en œuvre de la mesure
> [#0035 — Réaliser une veille régulière des vulnérabilités, des campagnes de compromission, des correctifs et des mesures d'atténuation](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0035).
>
> **Ce qui est couvert** : la veille sur les vulnérabilités et les
> campagnes de compromission, via des sources d'alerte institutionnelles
> (CERT-FR) et des newsletters spécialisées.

#### Sources recommandées

##### Sources francophones

- **[CERT-FR](https://www.cert.ssi.gouv.fr)** : centre gouvernemental
  de veille, d'alerte et de réponse aux attaques informatiques ;
- **[No Limit Secu](https://www.nolimitsecu.fr)** : podcast francophone
  hebdomadaire ;
- **[Radio CSIRT](https://www.radiocsirt.org)** : podcast quotidien
  résumant l'actualité de la cybersécurité ;
- **MISC** : magazine spécialisé dans la cybersécurité.

##### Sources anglophones

- **[tl;dr sec](https://tldrsec.com)** : newsletter cybersécurité ;
- **[Unsupervised Learning](https://newsletter.danielmiessler.com)** :
  newsletter cybersécurité, développement et IA.

---

## Pour aller plus loin

### Standards et référentiels

- **[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)**
  (Application Security Verification Standard) : standard de
  vérification de la sécurité des applications, très poussé (environ
  300 points de vérification) ;
- **[OWASP DSOMM](https://owasp.org/www-project-devsecops-maturity-model/)**
  (DevSecOps Maturity Model) : modèle de maturité pour évaluer et
  améliorer progressivement la sécurité dans les pipelines DevOps ;
- **[OWASP SAMM](https://owasp.org/www-project-samm/)** (Software
  Assurance Maturity Model) : modèle de maturité pour améliorer
  progressivement la sécurité du développement logiciel ;
- **Guide d'hygiène informatique - ANSSI** : bonnes pratiques
  essentielles de sécurité informatique.

### Ressources spécifiques par technologie

**JavaScript / Node.js :**

- [Node.js Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Nodejs_Security_Cheat_Sheet.html)

**Python / Django :**

- [Django Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Django_Security_Cheat_Sheet.html)

**Java :**

- [Java Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Java_Security_Cheat_Sheet.html)

**Ruby on Rails :**

- [Ruby on Rails Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheat_Sheet.html)

**Docker et conteneurs :**

- [Docker Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html)

**Kubernetes :**

- [Kubernetes Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Kubernetes_Security_Cheat_Sheet.html)

---

## Récapitulatif des mesures MonServiceSécurisé

Ce document contribue à la mise en œuvre des mesures suivantes du
[référentiel MonServiceSécurisé](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures).
La colonne « Couverture » indique si la section couvre l'intégralité de
la mesure ou seulement une partie de ses exigences.

| Mesure | Intitulé | Section de ce document | Couverture |
| :--- | :--- | :--- | :--- |
| [#0024](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0024) | Mettre en œuvre des bonnes pratiques de développement sécurisé | [Bonnes pratiques de développement sécurisé](#bonnes-pratiques-de-developpement-securise) | Complète |
| [#0026](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0026) | Mettre en œuvre un programme de sensibilisation à la sécurité pour l'ensemble des acteurs intervenant sur le système d'information | [Formation et sensibilisation](#formation-et-sensibilisation) | Partielle |
| [#0035](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0035) | Réaliser une veille régulière des vulnérabilités, des campagnes de compromission, des correctifs et des mesures d'atténuation | [Veille sécurité](#veille-securite) | Partielle |
| [#0092](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0092) | S'assurer que tous les accès au système d'information sont authentifiés via a minima un secret | [Authentification](#authentification) | Partielle |
| [#0093](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0093) | Restreindre les droits d'accès de chaque utilisateur authentifié aux seules ressources nécessaires | [Contrôle d'accès](#controle-dacces) | Complète |
| [#0111](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0111) | Mettre en œuvre des mécanismes permettant d'analyser et de qualifier les événements de sécurité ainsi que d'identifier d'éventuels incidents | [Surveillance et réponse aux incidents](#surveillance-et-reponse-aux-incidents) | Complète |
| [#0114](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0114) | Rendre publics un point de contact et des modalités de communication de tout problème de sécurité | [Gestion des vulnérabilités](#gestion-des-vulnerabilites) | Complète |
| [#0135](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0135) | Intégrer, si nécessaire, au programme d'audit un audit de code | [Revue de code orientée sécurité](#revue-de-code-orientee-securite) | Complète |
| [#0143](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0143) | Désactiver tout flux de données non chiffré | [Usage de la cryptographie](#usage-de-la-cryptographie) | Complète |
| [#0157](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0157) | Conserver et centraliser les journaux et évènements de sécurité utiles à la détection des principaux scénarios de menaces | [Traçabilité et audit (logging)](#tracabilite-et-audit-logging) | Complète |
| [#0162](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0162) | Protéger les mots de passe stockés | [Usage de la cryptographie](#usage-de-la-cryptographie) | Complète |
| [#0168](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures#0168) | Mettre en œuvre des mécanismes d'audit automatique du code | [Tests de sécurité automatisés](#tests-de-securite-automatises) | Complète |

*Cette liste n'est pas exhaustive : d'autres mesures du référentiel
s'appliquent à votre service. Référez-vous au
[référentiel complet](https://monservicesecurise.cyber.gouv.fr/referentiel-mesures)
et à votre dossier d'homologation.*

---

## Contribuer

Ce document est maintenu par la communauté beta.gouv.fr. N'hésitez pas
à proposer des améliorations ou des ressources supplémentaires via une
pull request.

Pour toute question sur la sécurité de votre service, vous pouvez
solliciter l'aide de la communauté via les canaux habituels
([Domaine-secu sur Tchap](https://tchap.gouv.fr/#/room/!XPllVpJRcpZCaSiaXW:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr&via=agent.dev-durable.tchap.gouv.fr&via=agent.social.tchap.gouv.fr),
`securite@beta.gouv.fr`).
