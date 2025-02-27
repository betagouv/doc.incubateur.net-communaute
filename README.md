# Les standards des produits BetaGouv

https://doc.incubateur.net/communaute/gerer-son-produit/les-standards

Ce repo contient la liste des standards exigés des produits Beta.

## Structure

À chaque règle correspond un fichier Markdown. Elles sont organisées
par dossier pour chaque domaine correspondant (accessibilité,
éco-conception, etc).

Des propriétés peuvent être rajoutés plus tard pour rajouter de la granularité :

(format hypothétique)

```md
---
from: construction
roles:
  - dev
---
# Le code doit être open-source

L'écosystème Beta est construit autour de l'open-source. Ce modèle
permet de favoriser la transparence des produits, facilite la
contribution et la maintenance.

## Critères

- [ ] le code est librement consultable sur une forge comme GitHub ou GitLab.

## Références

https://doc.incubateur.net/communaute/gerer-son-produit/les-standards/eco-conception#des-services-durables
```

## Feuille de route

- [ ] remplir les descriptions : pourquoi règle X ? peut-être même une checklist pour vérifier [façon WCAG](https://www.w3.org/TR/2016/NOTE-WCAG20-TECHS-20161007/H90))
- [ ] enlever les questions trop floues (i.e "le service est frugal" pas facile à vérifier)
- [ ] rajouter des propriétés
