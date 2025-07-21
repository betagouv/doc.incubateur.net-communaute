# L'équipe enregistre et documente les changements du code

## Description

Votre équipe utilise un système de contrôle de version distribué pour
documenter et tracer l'évolution du code (type : Git).

Au delà de la simple utilisation d'un système de version, il est
essentiel d'entretenir un historique des changements clair et rédigé :
vos commits ne doivent pas se limiter à des résumés (`git commit -m
"résumé"`) mais apportent aussi une description en sous-texte sauf
quand le changement est vraiment explicite.

Un historique détaillé et bien documenté apporte des bénéfices
concrets :

- **Compréhension du code** : chaque modification est expliquée et
  contextualisée
- **Investigation technique** : `git blame` permet d'identifier
  rapidement la raison d'une modification
- **Collaboration future** : les nouveaux développeurs comprennent les
  décisions passées
- **Maintenance facilitée** : l'historique sert de documentation pour
  retrouver l'origine des bugs ou fonctionnalités
- **Traçabilité des décisions** : les choix techniques sont conservés
  et justifiés dans le temps

L'équipe privilégie un historique propre en regroupant les
modifications liées avec `git commit --amend` ou `git rebase` avant
publication. Cette pratique évite l'encombrement par des commits
intermédiaires ("fix typo", "correction mineure") qui polluent
l'historique sans apporter de valeur documentaire.

## Critères

- Le code source utilise un gestionnaire de version type Git
- Les messages de commit décrivent clairement les modifications et
  leurs raisons
- Les commits intermédiaires sont regroupés avant publication pour
  maintenir un historique lisible

## Ressources

- [Nommmage des commits sur Sillon](https://sillon.incubateur.net/docs/document/commit-naming/)
- [Write better commits sur le blog de GitHub](https://github.blog/developer-skills/github/write-better-commits-build-better-projects/)
- [Maintaining version control in coding - GOV.UK](https://www.gov.uk/service-manual/technology/maintaining-version-control-in-coding)
