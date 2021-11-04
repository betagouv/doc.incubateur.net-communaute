---
description: >-
  Cette documentation vise à aider les développeurs découvrant que des données
  sensibles sont exposées.
---

# Je suis développeur

{% hint style="success" %}
Reste concentré sur les actions à prendre, ne reste pas isolé, demande de l'aide, verbalise tes difficultés et ton stress, fais-toi confiance. On t'aidera.
{% endhint %}

## Les 3 étapes clés à retenir :

1. Résoudre la fuite ou la suspicion de fuite
2. Rédiger un rapport et informer les bonnes personnes
3. Mesurer les conséquences

## 1. Immédiatement - Réparer la fuite

1. **Faire l'inventaire des données disponibles en ligne**
2. **Couper l'accès aux données en ligne en priorisant vos actions sur les données personnelles **
3. **Couper les autres accès **
4. **Supprimer les données ou les accès de github/gitlab**

### Quels sont les bons réflexes à adopter (et parfois négligés) ?

Vérifier par service les risques associés (liste non exhaustive) :&#x20;

* Mailjet
  * La liste des emails, les noms sont disponible à partir de la clé API
  * Demander la liste des appels API et les IPs pour voir les accès frauduleux
* Sendinblue
  * La liste des emails, des noms et l'ensemble des emails sont disponible à partir de la Github
* Gitlab
* Scalingo
* Clever Cloud

## 2. Rédiger un rapport et le transmettre

### La forme du rapport

{% content-ref url="modele-de-rapport-dincident.md" %}
[modele-de-rapport-dincident.md](modele-de-rapport-dincident.md)
{% endcontent-ref %}

* Il existe un modèle de rapport conçu pour ces situations. Il n'a pas vocation à être technique car il s’adresse à un public non-technique. Ce rapport vise à informer des risques.
* Déléguez au reste de l’équipe non-tech l’initialisation de ce rapport et la timeline
* Ne vous lancez pas dans un rapport technique mais restez concentré sur le rapport
* Déléguez toutes les tâches non-tech au reste de l’équipe

### Les destinataires du rapport

S'il y a fuite de donnée personnelle ou une suspicion de fuite :

* Contactez l'équipe technique de votre incubateur et/ou [l'équipe ops ](mailto:dinum@beta.gouv.fr)de beta.gouv.fr
* Communiquez auprès de votre délégué à la protection des données (DPO) et le responsable de la sécurité des systèmes d'information (RSSI) de référence au sein de l'administration sponsor dans les heures qui suivent l'alerte.

{% hint style="info" %}
**Le DPO à 72h pour déclarer une fuite ou une suspicion de fuite** de données personnees auprès de la CNIL.
{% endhint %}

## Mesurer les conséquences

* Les données ont-elles fuité ?
* Les données sont-elles exposées sur le darkweb ?
* (à compléter)
