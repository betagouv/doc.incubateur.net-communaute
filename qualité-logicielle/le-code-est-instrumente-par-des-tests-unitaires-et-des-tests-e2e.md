# Le code est instrumenté par des tests unitaires et des tests E2E

## Description

Pour maintenir la confiance dans le fonctionnement et l'évolution de
votre service, il est essentiel que son code soit instrumenté par des
tests automatisés.

Il existe énormément de façon de tester votre code (la fameuse
Pyramide des Tests), mais pour l'essentiel des services développés à
beta.gouv.fr nous articulons deux types essentiels :

1. Les tests unitaires qui permettent de tester les unités métiers
   critiques de votre code : « lorsque ma fonction reçoit ce paramètre,
   je m'attend à ce résultat »

2. Les tests bout-en-bout, ou end-to-end (E2E) qui permettent de
   tester votre parcours utilisateur du point de vue de
   l'utilisateur : « lorsque je navigue sur mon profil et que je
   clique sur le bouton "Déconnexion", alors la page contient
   "Accueil" »

Si le choix du framework de test est laissé aux développeurs, nous
insistons sur la présence au moins de ces deux types de test, qui
doivent aussi conditionner l'intégration de nouveau code et de
déploiement (CI/CD).

## Critères

- Une suite de tests unitaires est en place
- Une suite de tests d'intégration est en place
- Les tests conditionnent l'intégration de nouveau code (CI)
- Les tests conditionnent le déploiement de nouveau code (CD)

## Ressources

- [Pyramide de tests (en) - Martin Fowler](https://martinfowler.com/bliki/TestPyramid.html)
- [Exemple de tests unitaires - APLyPro](https://github.com/betagouv/aplypro/blob/51544b02c7e4b39c60de38a61dddccbcf9f982a9/spec/models/establishment_spec.rb)
- [Exemple de tests d'intégration - APLyPro](https://github.com/betagouv/aplypro/blob/51544b02c7e4b39c60de38a61dddccbcf9f982a9/features/saisie_de_coordonnees_bancaires.feature)
