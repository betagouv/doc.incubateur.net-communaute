# 001 - Création du repo des standards

## Contexte et problème

La communauté beta.gouv.fr veut proposer un numérique à l'état de
l'art, c'est-à-dire des produits développés en mode agile sans jamais
sacrifier la qualité, la sécurité ou l'expérience utilisateur du
produit. Pourtant, il n'existait pas de référentiel pour cadrer ces
attentes.

Comment permettre aux équipes et aux administrations de respecter une
grille de standards clairs et actionnables ?

## Options

### doc.incubateur.net

La documentation de l'incubateur est très hétérogène sur le sujet de
standards parce que construite de manière organique depuis 10 ans de
programme beta.gouv.fr : certaines catégories sont exhaustives et
proposent des guides complets pour atteindre certains niveaux de
qualité (ex : Accessibilité) mais d'autres (ex : Qualité logicielle)
ne le sont pas et présentent simplement des bullet points de choses à
faire sans jamais développer la méthodologie.

### L'outil d'auto-audit de l'ANCT

Un outil développé par l'ANCT propose de remplir un auto-audit selon
des grandes catégories de standards plus précises que les nôtres
(Opération, DB, Infra). Ce n'est pas un problème puisque l'outil
fonctionne avec Grist tant pour l'édition des questions que pour la
sauvegarde des réponses, ce qui nous a permis d'essayer l'outil avec
un premier prototype de nos standards.

En revanche l'édition de texte dans Grist reste laborieuse que ce soit
pour composer des descriptions complètes, appliquer du formattage de
texte ou encore offrir plusieurs critères pour répondre à un standard.

Enfin, aucune tracabilité ou espace de discussions pour ces
standards : quand ils changent, pourquoi, par qui, etc.

### La grille Notion utilisé à l'ADEME/au MASA

Une grille en mode kanban a été réalisée dans Notion et utilisée au
MASA et à l'ADEME : la non-souveraineté de la solution et son manque
d'interopabilité posent problème, comme l'absence de tracabilité.

### Un repository sur GitHub

La création d'un repo dédié `betagouv/standards` pour réviser et faire
évoluer les standards. Cette solution offre un avantage majeur sur les
autres : les standards peuvent être développés comme le code des
produits, c'est-à-dire bénéficier de versionnage, d'historique,
d'issues, de pull-requests, d'un mode d'édition accessible à tout le
monde, avec un espace public pour échanger et faire évoluer ces
standards en communauté.

La structuration des standards en fiches Markdown avec un export en
YML garantit un équilibre optimal pour faciliter l'édition du contenu
sans compromettre l'interopabilité.

## Décision

La création du repo `betagouv/standards` est choisie, pour assurer un
développement ouvert, transparent et traçable.
