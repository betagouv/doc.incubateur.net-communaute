---
description: >-
  Cette page explique ce qu'est un Architecture Decision Record (ADR)
  et comment ta Startup d'État peut s'en servir pour tracer ses choix
  techniques structurants.
---

# Tracer ses décisions d'architecture avec les ADR

## Pourquoi écrire des ADR ?

Au cours de la vie d'une Startup d'État, l'équipe prend des décisions
techniques structurantes : choix d'un hébergeur, d'un framework, d'une
base de données, d'une stratégie d'authentification, d'un mode de
déploiement…

Ces décisions sont souvent prises rapidement, dans un contexte donné,
et leurs raisons s'effacent avec le temps. Quand une nouvelle personne
arrive dans l'équipe, quand un choix doit être remis en question, ou
quand le service prépare sa pérennisation, retrouver le « pourquoi »
devient difficile.

Un **Architecture Decision Record (ADR)** est un court document
Markdown qui capture une décision structurante, son contexte et ses
conséquences. C'est une pratique légère, peu coûteuse, et
particulièrement adaptée au rythme agile d'une Startup d'État.

### Bénéfices concrets pour l'équipe

* **Onboarding facilité** : un nouveau membre comprend rapidement
  pourquoi tel choix a été fait sans interroger toute l'équipe.
* **Décisions assumées** : écrire force à expliciter les alternatives
  écartées et leurs raisons.
* **Mémoire collective** : l'équipe garde une trace même après le
  départ de personnes ou en fin d'incubation.
* **Pérennisation** : la reprise par une administration porteuse est
  grandement simplifiée si les choix sont documentés.
* **Revue par les pairs** : un ADR proposé en pull request ouvre la
  discussion avant qu'une décision soit gravée dans le code.

{% hint style="info" %}
Le repository des standards beta.gouv.fr utilise déjà les ADR pour
documenter ses propres choix structurants. Tu peux consulter
[les ADR du repository standards](https://github.com/betagouv/standards/tree/main/.adrs)
pour voir des exemples concrets.
{% endhint %}

## Quand écrire un ADR ?

Pas besoin d'en écrire pour chaque commit. Un ADR se justifie quand
une décision réunit au moins un de ces critères :

* Elle est **difficile à revenir en arrière** (changer d'hébergeur,
  changer de base de données principale).
* Elle a un **impact transverse** sur l'équipe (convention de code,
  mode de déploiement, stratégie de tests).
* Elle découle d'un **arbitrage entre plusieurs options** crédibles.
* Elle répond à une **contrainte de conformité** (SecNumCloud, HDS,
  RGPD, accessibilité).

À l'inverse, ne consacre pas un ADR à des choix mineurs ou
réversibles à faible coût (nom d'une variable, choix d'une bibliothèque
d'utilité ponctuelle).

## Le format MADR

beta.gouv.fr recommande le format **MADR (Markdown Architectural
Decision Records)**, un standard léger et lisible. Voici la structure
minimale d'un ADR :

```markdown
# NNN - Titre court et explicite de la décision

## Contexte et problème

Quelle situation a déclenché cette décision ? Quelles contraintes
s'imposent à l'équipe ? Quel problème faut-il résoudre ?

## Options considérées

* Option A – description courte
* Option B – description courte
* Option C – description courte

## Décision

Option choisie : « Option B », parce que :

* Raison 1
* Raison 2
* Raison 3

## Conséquences

### Positives

* Conséquence positive 1
* Conséquence positive 2

### Négatives

* Conséquence négative 1
* Limite connue à surveiller
```

### Conventions de nommage

Les ADR sont numérotés séquentiellement et stockés dans un dossier
dédié (par exemple `docs/adr/` ou `.adrs/` à la racine du repository
du produit).

* `001-choix-de-lhebergeur.md`
* `002-strategie-dauthentification.md`
* `003-base-de-donnees-principale.md`

## Exemples adaptés aux Startups d'État

Voici trois sujets qui se prêtent particulièrement bien à un ADR dans
le contexte d'une Startup d'État :

### Exemple 1 : choix de l'hébergeur

L'équipe doit choisir entre une approche PaaS (Scalingo, Clever Cloud)
et une approche IaaS (OVH, Outscale). Un ADR documentera le contexte
(volumétrie attendue, sensibilité des données, compétences ops dans
l'équipe), les alternatives, et la décision finale en référence à
[la page Hébergement](infra.md) et aux
[standards de qualité logicielle](../../../les-standards/qualité-logicielle/).

### Exemple 2 : stratégie d'authentification

ProConnect, FranceConnect, authentification locale ? L'ADR explicitera
les profils utilisateurs ciblés, les contraintes d'éligibilité à chaque
fournisseur d'identité et les conséquences sur l'architecture.

### Exemple 3 : zone de stockage des fichiers

Stockage objet S3-compatible chez un hébergeur souverain, base de
données, ou solution mixte ? L'ADR consignera la sensibilité des
fichiers, les volumes attendus, et le besoin éventuel de certifications
(HDS, SecNumCloud).

## Bonnes pratiques

* **Écris court** : un ADR efficace tient sur une page.
* **Date chaque ADR** ou utilise l'historique Git pour retracer.
* **Statut explicite** : indique si l'ADR est `Proposé`, `Accepté`,
  `Déprécié` ou `Remplacé par ADR-NNN`.
* **N'édite pas un ADR accepté** : crée un nouvel ADR qui le remplace.
* **Discute en pull request** : l'ADR mérite une revue avant fusion.

## Ressources

* [MADR 4.0.0 – Markdown Architectural Decision Records](https://adr.github.io/madr/)
* [Documenting Architecture Decisions – Michael Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)
* [adr-tools – outil CLI pour gérer ses ADR](https://github.com/npryce/adr-tools)
* [ADR du repository standards beta.gouv.fr](https://github.com/betagouv/standards/tree/main/.adrs)
* [Liste de modèles d'ADR](https://github.com/joelparkerhenderson/architecture-decision-record)
