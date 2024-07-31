---
description: >-
  Ces standards ont pour objectifs d'aider les équipes à construire et à opérer
  des services publics numériques exemplaires.
---

# Qualité logicielle

## Standards de qualité logicielle

* Le code source est **ouvert**, y compris à la contribution externe.
* Le code est instrumenté par des **tests automatisés**.
* Le code est **déployé fréquemment**, idéalement en continu.
* Le code est écrit en utilisant les **standards** du langage (ex : pep8 en python) et du framework.
* Afin de ne pas réinventer la roue, la **contribution à des communs numériques ou à des briques techniques libres et open source** existantes est privilégiée à l'utilisation de briques propriétaires

{% hint style="info" %}
**Quelle langue utiliser dans le développement de mon produit ?** :flag\_fr: \*\*\*\* :flag\_gb:\*\*\*\*

Tout ce qui concerne le métier (README, Pull Requests, documentation, ...) doit être écrit **en Français** :flag\_fr:. Par contre, tout ce qui concerne la mécanique du code doit être **en Anglais** :flag\_gb: par souci de cohérence avec la langue de ces langages de programmation.
{% endhint %}

## Standards de sécurité

*   Les sites sont sécurisés par **SSL** ;

    > Cette option est disponible en un clic sur Scalingo.
* Activez les HTTPS Security Headers et ne pas utiliser les attributs "style" en html ni embarquer du javascript dans le HTML ;
* Activez la vérification de failles de sécurité et la surveillance des dépendances (Dépendabot) sur Github.
* Suivre nos bonnes pratiques d'[hygiène informatique et de sécurité](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/bienvenue/premier-pas-indispensable-creer-ta-fiche-membre#2-prendre-connaissance-des-regles-dhygiene-informatique-et-de-securite-politique-byod), notamment :
  * Choisissez des mots de passe longs (20 caractères minimum), complexes et uniques par service ;
  * Crééz un compte par personne et évitez de partager un compte si c'est possible de faire autrement ;
  * Activez le 2FA sur tous vos services ;
  * Utilisez un gestionnaire de mots de passe pour stocker vos mots de passe.

{% hint style="info" %}
Les incubateurs du réseau beta.gouv.fr ont parfois des règles de sécurité spécifiques. Par exemple, la Fabrique des Affaires sociales a documenté les siens [ici](https://socialgouv.github.io/support/#/README).
{% endhint %}

{% hint style="info" %}
Pour aider les développeuses et les développeurs qui lancent un nouveau service depuis une page blanche, un [kit de démarrage](../../../travailler-chez-beta.gouv.fr/les-differents-metiers/developpeur.se/kit-de-demarrage.md) a été documenté. Ce kit prend en compte les standards définis ci-dessus.
{% endhint %}
