---
description: >-
  Cette documentation vise à aider les membres non-développeurs des équipes
  étant alertés d'une fuite de données ou d'un risque de fuite.
---

# Je ne suis pas développeur

## Comment comprendre le niveau de gravité ?

* <mark style="color:red;">**Alerte rouge**</mark>** **: des données sont accessibles en claire sur le web.
* <mark style="color:orange;">**Alerte orange**</mark> : de mauvaises pratiques dans le code pourraient entrainer une alerte rouge.

## Comment aider mon équipe de dev ?

* Evite de rajouter du stress à votre équipe de dev. Ca nuirait à leur santé mentale et à leur efficacité pour résoudre ce problème.
* Fait leur confiance.
* Explore le modèle de rapport d'incident

{% content-ref url="modele-de-rapport-dincident.md" %}
[modele-de-rapport-dincident.md](modele-de-rapport-dincident.md)
{% endcontent-ref %}

* Initialise et prend en charge la partie non-technique de la gestion de la crise :
  * Créé le rapport sur [pad.incubateur.net](http://pad.incubateur.net) si l’équipe tech ne l’a pas fait
  * Récupère les informations et met-les dans le document si l’équipe ne l’a pas fait&#x20;
    * Le rapport s’adresse à des gens pas forcément technique. Il vise à évaluer les risques : délégué à la protection des données, CNIL, responsable sécurité, ANSSI, décideurs, …
  * Contacte l’équipe technique de ton incubateur et/ou l’équipe ops de [beta.gouv.fr](http://beta.gouv.fr) pour informer et demandes de l’aide
  * Communique auprès de ton délégué à la protection des données (DPO) et responsable de la sécurité des systèmes d'information (RSSI) de référence au sein de l’administration sponsor dans les heures qui suivent la détection de l'incident
* Rend-toi disponible pour effectuer les autres taches que les dev pourraient te confier
