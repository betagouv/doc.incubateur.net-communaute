---
description: >-
  Découvrir les enjeux, les bonnes pratiques et les arguments clés de
  l'éco-conception.
---

# Enjeux et bonnes pratiques de l'écoconception

## Pourquoi l'écoconception ?

L'internet est une immense source de consommation d'énergie. Si c'était un pays, il serait le 3ᵉ plus gros consommateur d’électricité au monde, juste derrière les États-Unis et la Chine.

Cependant, l'électricité n'est pas le seul facteur à considérer. Les services numériques ont également un impact sur :

* **Énergie** : Consommation d’électricité par les serveurs, réseaux et batteries.
* **Gaz à effet de serre (GES)** : Émissions liées à la production et à l'utilisation des services numériques.
* **Eau** : Consommation d’eau dans les processus de refroidissement des serveurs, entre autres.
* **Ressources abiotiques** : Utilisation de ressources naturelles non vivantes comme la lumière, l'eau, l'azote et l'oxygène.

Le plus gros impact provient des terminaux numériques (smartphones, ordinateurs, etc.). Par exemple, en France, **37 % des utilisateurs** renouvellent leur smartphone parce qu'il ne fonctionne plus correctement.

{% hint style="success" %}
👉 Pour réduire l'impact du numérique, il est crucial de créer des services numériques **utiles**, **sobres** et **durables**, ce qui permet d'allonger la durée de vie des appareils.
{% endhint %}

Cette page décrit les bonnes pratiques de services numériques répondant à ces enjeux.

## Les enjeux de l'écoconception

### Des services utiles

#### **Utile à l'échelle de la planète**

L’utilité d’un service numérique est la première chose à évaluer. C'est même le premier critère du **RGESN** (Référentiel Général de l’Écoconception des Services Numériques) :

> Le service numérique a-t-il été évalué favorablement en termes d’utilité en tenant compte de ses impacts environnementaux ? [_Critère 1.1 du RGESN_](https://www.arcep.fr/mes-demarches-et-services/entreprises/fiches-pratiques/referentiel-general-ecoconception-services-numeriques.html#c35703)

Le référentiel propose de s'appuyer sur des objectifs tels que les Objectifs de développement durable de l'ONU ou les limites planétaires.

Chez beta.gouv.fr, la phase d'investigation vise justement à identifier le « bon problème », celui qui est à la fois **réel**, **actionnable** et **majeur** ?

#### Utile pour les usagers

Le deuxième critère du RGESN interroge :

> Le service numérique a-t-il défini ses cibles utilisatrices, les besoins métiers et les attentes réelles des utilisateurs cibles ? [_Critère 1.2 du RGESN_](https://www.arcep.fr/mes-demarches-et-services/entreprises/fiches-pratiques/referentiel-general-ecoconception-services-numeriques.html#c35703)

La mise en oeuvre recommandée par le RGESN correspond tout à fait à la méthode beta.gouv.fr :

* **Entretiens** avec les parties prenantes et les personnes concernées
* **Recherche UX** auprès des utilisateurs cibles
* **Personas** des utilisateurs
* **Agilité** des process
* **Observation** des statistiques d’usages

### Des service sobres

#### Sobriété des fonctionnalités

Un service numérique doit adopter une stratégie de **sobriété** en :

* **Optimisant** les parcours utilisateurs
* **Décommissionnant** les fonctionnalités inutiles.
* **Supprimant** ou archivant les contenus obsolètes et périmés

{% hint style="info" %}
**Boîte à outil du PO :**

* [Méthode C.O.E.U.R](https://www.lunaweb.fr/actualites/blog/atelier-ideation-eco-conception/) : méthode d'idéation pour l'écoconception
* Méthode Kano : méthode de recherche utilisateur pour prioriser une backlog en fonction de l'impact utilisateur
{% endhint %}

#### Sobriété de l'expérience utilisateur

Plusieurs leviers permettent d'optimiser l'expérience utilisateur. Par exemple :

* **Optimiser les médias** : choisir du média le plus sobre selon les besoins (texte plutôt qu'image, plutôt que vidéo)
* Respecter la **vie privée** des utilisateurices
* Garantir un service compatible avec une **connexion bas débit**

#### Sobriété technique

La sobriété technique concerne principalement :

* L'**hébergement** (choix d'infrastructures sobres)
* La mise en **cache** des données pour éviter des requêtes inutiles.
* L'utilisation minimale de l'**intelligence artificielle**.

### Des services durables

Un service numérique durable doit être :

* **Open source**, pour garantir la transparence et permettre une amélioration continue.
* **Interopérable** en utilisant des formats ouverts ou en proposant des API.
* **Contre l'obsolescence**, en étant compatible avec les vieux terminaux et systèmes d'exploitation (OS) ; et en s'adaptant à différentes résolutions et différents appareils (responsive)

## La démarche d’éco-conception

### Mesurer l'écoconception

L’outil [**Ecoindex**](https://www.ecoindex.fr/) attribue une note de **A à G**, basée sur des métriques telles que :

* Le **poids de la page**.
* La **complexité** de la page.
* Le **nombre de requêtes** serveurs.

En analysant un parcours, on peut ainsi évaluer l'impact d'un service.

{% hint style="success" %}
[Template d'atelier Écoindex](https://docs.google.com/spreadsheets/d/18JL9H32g9Rw_Sem2-zbGFtukho-QhW2_E9zVLMCbAJE/edit?gid=0#gid=0)
{% endhint %}

### Auditer avec le RGESN

Le **RGESN** (Référentiel Général de l’Écoconception des Services Numériques) est un cadre officiel français. Ce référentiel est composé de **78 critères**, répartis en **9 catégories**. Il permet d’auditer un service numérique de manière déclarative, en interne. À l'issu d'un audit, un service dispose de :

* **Déclaration d’écoconception**, un rapport sur l'impact environnemental du service.
* **Taux de conformité**, qui montre la progression dans la démarche.

Il n'est pour le moment pas obligatoire.

{% hint style="info" %}
**Exemples :**

[Audit d'écoconception sur la startup d'État Dialog](https://dialog.beta.gouv.fr/ecoconception)
{% endhint %}

***

**Sources** :

* [Internet est-il le plus gros pollueur de la planète ?](https://ekwateur.fr/blog/enjeux-environnementaux/internet-gros-pollueur-planete/)
* CREDOC, Baromètre du numérique, édition 2021
* Baromètre du numérique, Arcom, édition 2023
* Référentiel général d'écoconception de services numériques (RGESN)

{% embed url="https://ecoresponsable.numerique.gouv.fr/publications/referentiel-general-ecoconception/" %}
