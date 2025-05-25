# Le code utilise un système de gestion de versions

## Description

L'équipe utilise un système de contrôle de version distribué pour
documenter et tracer l'évolution du code.

Un historique détaillé et bien documenté apporte des bénéfices
concrets :

- **Compréhension du code** : chaque modification est expliquée et
  contextualisée
- **Investigation technique** : `git blame` permet d'identifier
  rapidement la raison d'une modification
- **Collaboration future** : les nouveaux développeurs comprennent les
  décisions passées
- **Maintenance facilitée** : l'historique sert de documentation pour
  retrouver l'origine des bugs ou fonctionnalités
- **Traçabilité des décisions** : les choix techniques sont conservés
  et justifiés dans le temps

L'équipe privilégie un historique propre en regroupant les
modifications liées avec `git commit --amend` ou `git rebase` avant
publication. Cette pratique évite l'encombrement par des commits
intermédiaires ("fix typo", "correction mineure") qui polluent
l'historique sans apporter de valeur documentaire.

## Critères

- Le code source est géré dans un dépôt Git
- Les messages de commit décrivent clairement les modifications et
  leurs raisons
- Les commits intermédiaires sont regroupés avant publication pour
  maintenir un historique lisible

## Ressources

- [Write better commits sur le blog de GitHub](https://github.blog/developer-skills/github/write-better-commits-build-better-projects/)
- [Conventional Commits](https://www.conventionalcommits.org/)
- [GOV.UK - Maintaining version control in coding](https://www.gov.uk/service-manual/technology/maintaining-version-control-in-coding)
