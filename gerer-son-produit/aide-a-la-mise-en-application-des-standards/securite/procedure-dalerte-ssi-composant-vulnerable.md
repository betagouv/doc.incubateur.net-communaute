---
description: Alerter la communauté en cas d'alerte sur un composant technique vulnérable
---

# Procédure d'alerte SSI - "Composant Vulnérable"

#### Quand déclencher cette procédure ?

En cas de publication d'une vulnérabilité critique (CVSS > 9) pouvant impacter plusieurs produits (Vulnérabilité sur un composant partagé par plusieurs startups) :

#### Qui peut déclencher cette procédure ?

Membre de la communauté ayant identifié qu'une vulnérabilité **pourrait impacter un ou plusieurs produits**.

{% hint style="warning" %}
La personne déclenchant l'alerte doit disposer d'un faisceau d'indice suffisant, en cas de doute il peut demander l'avis de la communauté sur [betagouv-domaine-secu](https://tchap.gouv.fr/#/room/!XPllVpJRcpZCaSiaXW:agent.dinum.tchap.gouv.fr).\
\
Par exemple la lecture d'un article de presse n'est pas suffisante au déclenchement de la procédure.
{% endhint %}

#### Pourquoi cette procédure ?

Il n'existe pas à l'échelle de beta.gouv.fr de système unifié de remontée de vulnérabilités, ni d'inventaire précis des composants (type SBOM), les incubateurs et startups ont différents niveaux de maturité, de capacité de détection et de réponse.

Ce protocole vise à **avertir le plus rapidement possible les équipes techniques impactées par ces vulnérabilités** pour qu'elles mènent des actions de mitigation le plus rapidement possible.

#### **Parties prenantes**￼

* **Lanceur d'Alerte** :
  * Un membre de la communauté est au courant d'une vulnérabilité impactant des composants communs à plusieurs produits
* [**Référent technique** ](../../gestion-au-quotidien/tech/to-do-liens-avec-les-referents-techs.md)**incubateur** :
  * Dispatche l'alerte à ses équipes
  * Assure le suivi de l'application des patchs pour ses équipes
  * Contacte au besoin leurs RSSI (selon le protocole interne de son administration)
* **Référent SSI de la Communauté** :
  * S'assure que tous les référents techniques incubateur sont au courant
  * Requalifie la vulnérabilité au besoin
  * Produit ou partage de la documentation facilitant l'audit, l'application des correctifs, l'identification de potentielle compromission.
  * Anime les discussions



### Déroulé

* Le lanceur d'alerte crée **canal Tchap dédié** _`tmp-alerte-securite-[nom_du_composant]-DDMMYY`_ chiffré sur invite (penser à activer le partage de l'historique),
  * inviter :
    * Les [référents tech](https://doc.incubateur.net/communaute/gerer-son-produit/gestion-au-quotidien/tech/to-do-liens-avec-les-referents-techs) en leur mettant le droit d'inviter d'autres personnes
    * Vos référents SSI

￼

* Décrire la vulnérabilité et les options de remediation connues à date, à minima
  * Score CVSS (si applicable)
  * La vulnérabilité est exploitée dans la nature : Oui / Non
  * Patch Disponible : Oui / Non
  * Identifiant CVE (si applicable)
  * Versions du composant vulnérables
  * Lien vers bulletin éditeur (à défaut, article de blog/news)

￼

* envoyer un **email de notification** avec les mêmes informations sur l'alias `alertes-securite@beta.gouv.fr`  avec tous les référents techs et personnes intéréssées en BCC et le lien Tchap avec un résumé de la vuln concernée.

￼

* Envoyer une alerte en tagguant `@room` dans le canal Tchap [`betagouv-domaine-secu`](https://tchap.gouv.fr/#/room/!XPllVpJRcpZCaSiaXW:agent.dinum.tchap.gouv.fr) avec le lien vers la room dédiée

#### Fin de la procédure :

* L'ensemble des acteurs impactés ont été contactés et ont accusé réception.
* Les acteurs impactés ont pris connaissance de quoi corriger et comment.

#### Annexes:

* Contacter [les référents tech](../../gestion-au-quotidien/tech/to-do-liens-avec-les-referents-techs.md)

