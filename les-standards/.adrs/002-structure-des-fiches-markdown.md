# 002 - Structure des fiches Markdown des standards

## Contexte et problème

Les standards de beta.gouv.fr doivent être compréhensibles, actionnables et
maintenables par toute la communauté. Ils servent à la fois de documentation
pour les équipes et de grille d'évaluation pour les auto-audits. Leur
structure doit permettre une lecture fluide tout en garantissant une
exportation fiable vers d'autres formats (YAML, JSON).

Comment structurer les fiches Markdown pour qu'elles soient à la fois
lisibles par des humains, facilement éditables et exploitables par des
outils automatisés ?

## Options

### Markdown libre sans structure imposée

Permettre aux contributeurs d'organiser librement le contenu de chaque
standard selon leurs besoins. Cette approche maximise la flexibilité mais
pose plusieurs problèmes :

- Incohérence entre les standards
- Difficulté d'extraction automatique pour l'export YAML
- Complexité pour l'intégration dans des outils d'évaluation

### Structure rigide avec champs obligatoires

Imposer une structure stricte type frontmatter YAML avec tous les champs
requis en en-tête. Cette approche facilite l'automatisation mais :

- Rend l'édition moins naturelle pour des non-développeurs
- Limite l'expressivité du contenu
- Nécessite des outils spécifiques pour valider la structure

### Structure Markdown avec sections normalisées

Adopter une structure basée sur des sections Markdown identifiables par leurs
titres de niveau 2 (##). Cette approche combine :

- Lisibilité native du Markdown
- Édition accessible à tous
- Extraction automatique via parsing des headers
- Flexibilité du contenu dans chaque section

## Décision

Les fiches standards suivent une structure Markdown normalisée avec trois
sections obligatoires identifiées par leurs titres :

```markdown
# [Titre du standard]

## Description

[Pourquoi ce standard est important, quelle valeur il apporte]

## Critères

- [Liste de critères vérifiables, formulés positivement]
- [Chaque critère doit être binaire : oui/non]

## Ressources

- [Liens vers documentation, guides, exemples concrets]
```

### Règles de structuration

1. **Titre principal (H1)** : Un seul titre de niveau 1, formulé comme un
   objectif atteint ("L'équipe fait X" plutôt que "Faire X")

2. **Section Description** : Explique le pourquoi avant le comment, en
   privilégiant un langage empathique centré sur l'utilisateur ou l'équipe.
   Peut contenir des sous-sections (H3) pour développer certains aspects.

3. **Section Critères** : Liste à puces de critères vérifiables, formulés
   positivement pour faciliter leur transformation en questions ("Est-ce que
   [critère] ?"). Chaque critère doit être :
   - Binaire (oui/non)
   - Vérifiable objectivement
   - Actionnable

4. **Section Ressources** : Liste à puces de liens externes avec descriptions
   courtes. Privilégier des ressources concrètes (études, outils, guides
   pratiques) plutôt que d'autres standards.

### Conventions de nommage

- Les fichiers sont nommés en kebab-case : `le-produit-fait-quelque-chose.md`
- Le nom du fichier doit correspondre au titre H1 (vérifié par
  `make lint-filenames`)
- Le script `make fix-filenames` peut renommer automatiquement les fichiers
  pour correspondre à leur titre

### Règles de formatage

- Longueur de ligne maximale : 80 caractères
- Marqueurs de liste cohérents (-)
- Pas de ponctuation finale dans les titres
- Validation via markdownlint (voir `package.json`)

### Export automatique

La structure normalisée permet l'export automatique vers YAML via
`scripts/convert_markdown_to_yml.rb`, qui extrait :
- Le titre comme identifiant du standard
- La section Description comme documentation
- Les Critères comme liste d'évaluation
- Les Ressources comme références

## Conséquences

### Positives

- **Accessibilité** : N'importe qui sachant écrire du Markdown peut
  contribuer sans formation spécifique
- **Lisibilité** : Les standards restent des documents lisibles directement
  sur GitHub ou en local
- **Traçabilité** : Git permet de suivre l'évolution de chaque standard avec
  discussions via issues et pull requests
- **Interopérabilité** : L'export YAML permet l'intégration dans des outils
  d'audit ou de suivi
- **Cohérence** : La structure normalisée facilite la navigation entre les
  standards

### Négatives

- **Contrainte éditoriale** : Les contributeurs doivent respecter la
  structure imposée
- **Maintenance** : Nécessite des scripts de validation pour garantir la
  cohérence (linters, tests de structure)
- **Prise en main de GitHub** : la création d'un compte sur GitHub
  (même si fréquente à beta.gouv.fr) et la connaissance de l'interface
  ou du concept de Git peuvent dérouter certains contributeurs
- **Rigidité** : Difficile d'ajouter de nouvelles sections sans impacter
  l'export et les outils existants

### Neutres

- L'ajout de nouvelles sections nécessitera une mise à jour de l'ADR et des
  scripts d'export
- La communauté devra être formée aux conventions via `STANDARD.md` et
  `CONTRIBUTING.md`
