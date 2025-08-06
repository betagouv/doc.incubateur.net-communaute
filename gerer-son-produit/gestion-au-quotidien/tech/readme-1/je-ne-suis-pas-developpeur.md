---
description: >-
  Cette documentation vise à aider les membres non-développeurs des équipes
  étant alertées d'une fuite de données ou d'un risque de fuite.
---

# Je ne suis pas développeur

## Comment comprendre le niveau de gravité ?

* <mark style="color:red;">**Alerte rouge**</mark> : des données sont accessibles en clair sur le web.
* <mark style="color:orange;">**Alerte orange**</mark> : de mauvaises pratiques dans le code pourraient entrainer une alerte rouge.

## Comment aider mon équipe de dev ?

* Evitez de rajouter du stress à votre équipe de dev. Cela nuirait à leur santé mentale et à leur efficacité pour résoudre ce problème.
* Faites leur confiance.
* Explorez le modèle de rapport d'incident

{% content-ref url="modele-de-rapport-dincident.md" %}
[modele-de-rapport-dincident.md](modele-de-rapport-dincident.md)
{% endcontent-ref %}

* Initialisez et prenez en charge la partie non-technique de la gestion de la crise :
  * Créez le rapport sur [https://docs.numerique.gouv.fr/](https://docs.numerique.gouv.fr/) si l’équipe tech ne l’a pas fait
  * Récupérez les informations et ajoutez-les dans le document si l’équipe ne l’a pas fait
    * Le rapport s’adresse à des gens pas forcément technique. Il vise à évaluer les risques : délégué à la protection des données, CNIL, responsable sécurité, ANSSI, décideurs, …
  * Contactez l’équipe technique de votre incubateur et/ou l’équipe ops de [beta.gouv.fr](http://beta.gouv.fr) pour informer et demander de l’aide
  * Communiquez auprès de votre délégué à la protection des données (DPO), votre responsable de la sécurité des systèmes d'information (RSSI) de référence au sein de l’administration sponsor (responsable de traitement) dans les heures qui suivent la détection de l'incident
* Rendez-vous disponible pour effectuer d'autres tâches que les dev pourraient vous confier
*   Participez à la détermination des actions à prendre : en fonction de la qualification du risque par votre équipe et les référents de de l'administration (RSSI & DPO), vous devrez vous positionner sur l'un des trois scenarios suivants :

    * Si la violation des données à caractère personnel _ne présente pas de risque_ = pas de notification à la CNIL et pas d’information des personnes concernées. Il faudra inscrire la fuite dans le registre des violations de données à caractère personnel. Ce registre est tenu par le DPO ;
    * Si la violation des données à caractère personnel _présente un risque_ = il faut inscrire la fuite dans le registre et prévenir la CNIL sous 72 heures ;
    * Si la violation des données à caractère personnel _présente un risque élevé_ = il faut inscrire la fuite dans le registre, prévenir la CNIL sous 72 heures et informer les personnes concernées au plus vite de la violation de leurs données à caractère personnel.

    Il est généralement de bonne pratique d'informer les utilisateurs concernés par la suite de données et les mesures prises pour éviter que la situation se reproduise.
