# Les aspects techniques du produit sont documentés

## Description

L'équipe doit maintenir une documentation qui permette de comprendre
le fonctionnement technique du produit, l'organisation de son code et
de son architecture.

Si votre équipe de développement devait s'absenter demain, le code
doit rester compréhensible et actionnable grâce à un système de
documentation qui peut revêtir plusieurs formes :

- une documentation littéraire (documents Markdown dédiés, README,
  etc)
- documentation produite automatiquement par les tests unitaires et
  bout-en-bout
- documentation de l'architecture avec un fichier Docker/Compose,
  Terraform, etc.

Cette documentation réduit l'aspect critique des membres de l'équipe
de développement, et permet aussi de mieux embarquer les nouveaux
collaborateurs.

Si vous avez des APIs, nous recommandons une documentation
OpenAPI/Swagger pour permettre une meilleure prise en main par les
équipes qui vont les consommer.

## Critères

- Un README présente succintement l'objectif du service
- La pile technique et l'architecture du produit sont renseignées
- Les APIs sont documentées avec la spécification OpenAPI/Swagger
- Des instructions pour lancer le service en local sont disponibles

## Ressources

- [Documenter votre projet - sillon.incubateur.net](https://sillon.incubateur.net/docs/document/)
- [Documentation technique - writethedocs.org](https://www.writethedocs.org/)
