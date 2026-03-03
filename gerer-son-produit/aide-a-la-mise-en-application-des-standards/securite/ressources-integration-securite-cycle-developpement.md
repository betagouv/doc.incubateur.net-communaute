# Ressources pour intégrer la sécurité au cycle de développement

Ce document détaille les ressources utiles pour mettre en œuvre
l'intégration de la sécurité à chaque étape du cycle de développement
de votre service numérique.

## Table des matières

1. [Pourquoi l'OWASP ?](#pourquoi-lowasp-comme-principale-référence-)
2. [Documentation des mécanismes de sécurité](#documentation-des-mécanismes-de-sécurité)
3. [Bonnes pratiques de développement sécurisé](#bonnes-pratiques-de-développement-sécurisé)
4. [Tests de sécurité automatisés](#tests-de-sécurité-automatisés)
5. [Surveillance continue et gestion de la production](#surveillance-continue-et-gestion-de-la-production)
6. [Formation et sensibilisation](#formation-et-sensibilisation)

---

## Pourquoi l'OWASP comme principale référence ?

La majorité des ressources présentées dans ce document proviennent de
l'**OWASP** (Open Worldwide Application Security Project).

### Qu'est-ce que l'OWASP ?

L'OWASP est une **fondation à but non lucratif** qui
œuvre pour l'amélioration de la sécurité des logiciels. C'est
aujourd'hui la **référence mondiale** en matière de sécurité des
applications web et logicielles.

**Caractéristiques clés :**

- **Indépendance** : L'OWASP est indépendant de tout éditeur ou
  fournisseur de solutions de sécurité. Ses recommandations se veulent
  objectives et non commerciales.
- **Open Source** : Tous les projets, outils et documentations OWASP
  sont libres et gratuits, sous licences open source.
- **Communauté mondiale** : Plus de 250 chapitres locaux dans le monde
  entier. Des milliers de contributeurs bénévoles (chercheurs,
  développeurs, experts en cybersécurité).
- **Reconnaissance institutionnelle** : L'OWASP est cité comme
  référence par de nombreux organismes officiels, dont l'ANSSI en
  France, le NIST aux États-Unis, et l'ENISA en Europe.

### Pourquoi l'OWASP ?

**1. Approche pragmatique et orientée développeurs**

Contrairement aux standards purement théoriques, les ressources OWASP
sont conçues **par des développeurs pour des développeurs**. Elles
fournissent des conseils pratiques, directement applicables dans le
code.

**2. Maintien actif et veille continue**

Les projets OWASP sont constamment mis à jour pour refléter
l'évolution des menaces et des technologies.

**3. Validation par la pratique**

Les recommandations OWASP sont issues de l'analyse de milliers
d'incidents de sécurité réels et de retours d'expérience de la
communauté mondiale. Ce ne sont pas des spéculations, mais des
pratiques éprouvées.

**4. Format "Cheat Sheet" accessible**

Les **OWASP Cheat Sheets** (fiches pratiques) sont des condensés
d'information facilement consultables. Elles fournissent l'essentiel à
savoir sur un sujet précis, sans noyer le lecteur dans des détails
théoriques.

**5. Neutralité technologique**

L'OWASP couvre un grand nombre de langages de programmation, de
frameworks et architectures. Quelle que soit votre stack technique,
vous devriez y trouver des ressources adaptées.

**6. Compatibilité avec les exigences réglementaires**

Les recommandations OWASP sont **alignées avec les standards de
sécurité** comme par exemple le RGS et NIS2. Suivre les bonnes
pratiques de l'OWASP facilite la conformité réglementaire.

**En résumé** : l'OWASP est devenu un standard de facto dans
l'industrie. Adopter les recommandations OWASP, c'est se placer au
niveau des meilleures pratiques mondiales en matière de sécurité
applicative.

---

## Documentation des mécanismes de sécurité

La documentation de vos mécanismes de sécurité permet à l'équipe de
comprendre comment le service protège les données et les utilisateurs.
Elle facilite également les audits de sécurité et l'homologation.

### Authentification

**[Fiche Authentification - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Authentication_Cheat_Sheet.html)**

Cette fiche détaille les bonnes pratiques pour mettre en place des
mécanismes d'authentification robustes.

Dans le contexte beta.gouv.fr afin de ne pas être confronté à la
complexité et aux risques de la mise en place d'un système
d'authentification, nous recommandons de déporter l'authentification
des utilisateurs à un service comme Pro Connect ou France Connect.

**Cas d'usage** : Utilisez cette ressource lors de la conception de
votre système d'authentification ou pour auditer un système existant.

### Contrôle d'accès

**[Fiche Contrôle d'accès - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Access_Control_Cheat_Sheet.html)**

Guide pour implémenter des mécanismes de contrôle d'accès efficaces :

- Principes de moindre privilège
- Séparation des privilèges
- Modèles de contrôle d'accès (RBAC, ABAC, DAC, ACLs...)
- Protection contre les attaques d'élévation de privilèges

**Cas d'usage** : À consulter lors de la définition des rôles et
permissions dans votre application.

### Traçabilité et audit (Logging)

**[Fiche Traçabilité et audit - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Logging_Cheat_Sheet.html)**

Recommandations pour la mise en place de journaux d'événements :

- Quels événements logger (authentification, accès aux données
  sensibles, erreurs)
- Format et structure des logs
- Protection des logs contre la modification
- Conformité RGPD dans les logs

**Cas d'usage** : Essentiel pour le suivi des incidents de sécurité et
les investigations forensiques.

### Cryptographie et stockage sécurisé

**[Fiche Stockage chiffré et sécurisé - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Cryptographic_Storage_Cheat_Sheet.html)**

Guide sur l'utilisation de la cryptographie pour protéger les données :

- Algorithmes de chiffrement recommandés
- Gestion des clés cryptographiques
- Chiffrement des données au repos et en transit
- Hachage sécurisé des mots de passe

**Cas d'usage** : À appliquer pour toute donnée sensible (données personnelles, secrets, tokens).

### Validation des entrées et sorties

**[Fiche Validation des entrées & sorties - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Input_Validation_Cheat_Sheet.html)**

Techniques pour valider et nettoyer les données :

- Validation des entrées utilisateur
- Encodage des sorties
- Protection contre les injections (SQL, XSS, commandes)
- Listes blanches vs listes noires

**Cas d'usage** : À implémenter systématiquement pour toute donnée
provenant d'une source externe.

---

## Bonnes pratiques de développement sécurisé

L'adoption de pratiques de développement sécurisé réduit
considérablement le nombre de vulnérabilités introduites dans le code.

### Revue de code orientée sécurité

**[Revue sécurité du code source - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Secure_Code_Review_Cheat_Sheet.html)**

Méthodologie pour effectuer des revues de code avec un focus sécurité :

- Points de contrôle spécifiques à la sécurité
- Identification des patterns dangereux
- Outils d'aide à la revue de code
- Organisation des revues de code en équipe

**Cas d'usage** : À intégrer dans vos processus de merge request /
pull request.

### Guide de développement sécurisé

**[Guide de développement sécurisé - ANSSI](https://www.ssi.gouv.fr/guide/regles-et-recommandations-concernant-le-developpement-securise-dapplications-web/)**

Guide complet de l'ANSSI (Agence nationale de la sécurité des
systèmes d'information) :

- Recommandations par langage de programmation
- Architecture sécurisée des applications web
- Gestion des sessions et de l'authentification
- Protection contre les attaques courantes

**Cas d'usage** : Référence à consulter lors de la phase de
conception et tout au long du développement.

### Classes de vulnérabilités les plus fréquentes

**[Les 10 catégories de vulnérabilités les plus fréquentes - OWASP Top 10](https://owasp.org/www-project-top-ten/)**

Liste mise à jour régulièrement des 10 risques de sécurité les plus
critiques :

- Contrôle d'accès défaillant
- Mauvais usage des mécanismes cryptographiques
- Injection
- Design insécurisé
- Mauvaises configration de sécurité
- Etc.

**Cas d'usage** : Formation de l'équipe et priorisation des efforts de sécurisation.

### Prévention des injections

**[Fiche Prévention des injections - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Injection_Prevention_Cheat_Sheet.html)**

Guide détaillé sur la prévention des attaques par injection :

- Injection SQL
- Injection de commandes OS
- Injection LDAP
- Utilisation de requêtes paramétrées
- Validation et échappement

**Cas d'usage** : À consulter lors de l'implémentation de toute
interaction avec une base de données ou un système externe.

---

## Tests de sécurité automatisés

L'automatisation des tests de sécurité permet de détecter les
vulnérabilités tôt dans le cycle de développement, sans ralentir la
vélocité de l'équipe.

### DevSecOps - Intégration de la sécurité dans CI/CD

**[DevSecOps Guideline - OWASP](https://owasp.org/www-project-devsecops-guideline/)**

Guide complet pour intégrer la sécurité dans vos pipelines DevOps :

**Types de tests automatisés :**

- **SAST (Static Application Security Testing)** : Analyse statique du
  code source pour détecter les vulnérabilités sans exécuter le
  programme
- **DAST (Dynamic Application Security Testing)** : Tests dynamiques
  sur l'application en cours d'exécution
- **SCA (Software Composition Analysis)** : Analyse des dépendances
  pour détecter les vulnérabilités connues
- **IAST (Interactive Application Security Testing)** : Analyse en
  temps réel pendant les tests
- **Détection de secrets** : Scan des commits pour détecter les
  secrets (clés API, mots de passe) accidentellement commitées
- **IaC Scanning** : Vérification de la configuration
  infrastructure-as-code (Terraform, Kubernetes)

**Cas d'usage** : À mettre en place progressivement dans votre
pipeline CI/CD, en commençant par la détection de secrets et l'analyse
des dépendances.

### Sécurité des pipelines CI/CD

**[CI/CD Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/CI_CD_Security_Cheat_Sheet.html)**

Recommandations pour sécuriser votre chaîne d'intégration et de
déploiement continus :

- Sécurisation des secrets dans les pipelines
- Contrôle d'accès aux pipelines
- Validation des artefacts de build
- Protection contre les attaques sur la supply chain

**Cas d'usage** : Audit et sécurisation de votre infrastructure de
CI/CD (GitHub Actions, GitLab CI, etc.).

### Outils recommandés

#### Détection de secrets

- **GitGuardian** : Scanner de secrets pour Git (Activé par défaut
sur les organisations beta.gouv.fr)
- **TruffleHog** : Recherche de secrets dans l'historique Git
- **Gitleaks** : Détecteur de secrets léger et rapide

#### SAST

- **CodeQL (GitHub)** : Moteur d'analyse pour trouver des vulnérabilités
(Activé par défaut sur les organisations beta.gouv.fr)
- **SonarQube/SonarCloud** : Analyse de qualité et sécurité du code
- **Semgrep** : Outil d'analyse statique open-source

#### SCA

- **Dependabot** (pour GitHub) : Alertes sur les vulnérabilités des dépendances
    (intégré à GitHub), PR automatiques.
- **Renovate** (pour GitLab) : Gestion automatisée des dépendances et alertes de
    vulnérabilités, compatible avec GitLab CI/CD.

- **Snyk** : Scan de dépendances et de containers
- **OWASP Dependency-Check** : Outil open-source d'analyse des
  dépendances

#### DAST

- **OWASP ZAP** : Scanner de vulnérabilités web open-source
- **Nuclei** : Scanner de vulnérabilités rapide et personnalisable

---

## Surveillance continue et gestion de la production

La sécurité ne s'arrête pas au déploiement : une surveillance continue
est essentielle pour détecter et réagir rapidement aux incidents.

### Gestion des vulnérabilités

**[Vulnerability Disclosure Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Vulnerability_Disclosure_Cheat_Sheet.html)**

Guide pour mettre en place un processus de divulgation responsable des
vulnérabilités :

- Création d'une politique de divulgation
- Canaux de signalement sécurisés
- Processus de traitement des signalements
- Communication avec les chercheurs en sécurité

**Cas d'usage** : À mettre en place sur votre dépôt GitHub (fichier
SECURITY.md) et votre site web.

### Surveillance et réponse aux incidents

**Recommandations :**

- Mise en place de monitoring des logs de sécurité
- Alertes automatiques sur les événements suspects
- Plan de réponse aux incidents de sécurité
- Tests réguliers du plan de réponse

**Outils :**

- **Sentry** : Monitoring d'erreurs et d'exceptions
- **ELK Stack** (Elasticsearch, Logstash, Kibana) : Centralisation et
  analyse des logs
- **Grafana + Prometheus** : Monitoring et alerting

### Homologation de sécurité

**[Homologation de sécurité - doc.incubateur.net](https://doc.incubateur.net/communaute/gerer-son-produit/les-standards/securite/maitriser-les-risques-cyber)**

Ressources spécifiques au processus d'homologation dans
l'administration française :

- Démarche d'homologation de sécurité
- Analyse des risques
- Dossier d'homologation
- Maintien en condition de sécurité

**Cas d'usage** : À préparer avant le passage en production d'un
service traitant des données sensibles.

---

## Formation et sensibilisation

La sécurité est l'affaire de toute l'équipe. La formation et la
sensibilisation régulières sont essentielles.

### Ressources de formation

**Plateformes de formation :**

- **OWASP Juice Shop** : Application e-commerce vulnérable pour
  exploiter et corriger des vulnérabilités web.
- **RootMe / HackTheBox / TryHackMe** : Plateformes d'apprentissage avec des
  challenges de sécurité

**Formations en ligne :**

- [ANSSI - SecNumAcadémie](https://secnumacademie.gouv.fr/) : MOOC
  gratuit sur la sécurité du numérique
- [PortSwigger Web Security Academy](https://portswigger.net/web-security) :
  Cours interactifs sur la sécurité web

### Veille sécurité

**Sources recommandées :**

- **CERT-FR** : Centre gouvernemental de veille, d'alerte et de réponse
  aux attaques informatiques
- **GitHub Security Advisories** : Alertes de sécurité pour les
  dépendances
- **Newsletter OWASP** : Actualités de la communauté OWASP

---

## Pour aller plus loin

### Standards et référentiels

- **[OWASP ASVS](https://owasp.org/www-project-application-security-verification-standard/)** (Application Security Verification Standard) : Standard de vérification de la sécurité des applications, très poussé, ~300 points de vérifications.
- **[OWASP DSOMM](https://owasp.org/www-project-devsecops-maturity-model/)** (DevSecOps Maturity Model) : Modèle de maturité pour évaluer et améliorer progressivement la sécurité dans les pipelines DevOps.
- **[OWASP SAMM](https://owasp.org/www-project-samm/)** (Software
  Assurance Maturity Model) : Modèle de maturité pour améliorer
  progressivement la sécurité
- **Guide d'hygiène informatique - ANSSI** : Bonnes pratiques
  essentielles de sécurité informatique

### Ressources spécifiques par technologie

**JavaScript/Node.js :**

- [Node.js Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Nodejs_Security_Cheat_Sheet.html)

**Python/Django :**

- [Django Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Django_Security_Cheat_Sheet.html)

**Java :**

- [Java Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Java_Security_Cheat_Sheet.html)

**Ruby on Rails :**

- [Ruby on Rails Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Ruby_on_Rails_Cheat_Sheet.html)

**Docker et containers :**

- [Docker Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Docker_Security_Cheat_Sheet.html)

**Kubernetes :**

- [Kubernetes Security Cheat Sheet - OWASP](https://cheatsheetseries.owasp.org/cheatsheets/Kubernetes_Security_Cheat_Sheet.html)

---

## Contribuer

Ce document est maintenu par la communauté beta.gouv.fr. N'hésitez pas
à proposer des améliorations ou des ressources supplémentaires via une
pull request sur le dépôt
[betagouv/standards](https://github.com/betagouv/standards).

Pour toute question sur la sécurité de votre service, vous pouvez
solliciter l'aide de la communauté via les canaux habituels (Slack,
forum, etc.).
