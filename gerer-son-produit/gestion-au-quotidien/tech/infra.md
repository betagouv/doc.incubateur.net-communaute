# Hébergement

Chaque Startup d'Etat gère son infrastructure de façon **souveraine**. Certains incubateurs proposent des services d'hébergement mutualisés; Renseignez-vous auprès [des référent(e)s tech de votre fabrique.](to-do-liens-avec-les-referents-techs.md)

### Les services partagés

L'équipe beta.gouv.fr propose des ressources partagées pour vous aider à démarrer; Ces services sont fournis en mode "best effort" par l'équipe animation, sans garantie de service.\
\
Tous les services disponibles sont présentés sur la page ["les outils de la communauté"](../../../les-outils-de-la-communaute/les-outils-de-la-communaute.md) et vous pouvez instancier ces services de votre côté si nécessaire.

{% content-ref url="../../../les-outils-de-la-communaute/les-outils-de-la-communaute.md" %}
[les-outils-de-la-communaute.md](../../../les-outils-de-la-communaute/les-outils-de-la-communaute.md)
{% endcontent-ref %}

### Comment faire une demande d'ops

Pour les services Matomo et Sentry tu peux faire la demande directement via l'espace-membre : https://espace-membre.incubateur.net/services  

Toutes les demandes d'ops (sous-domaine, ressources scalingo, ovh, Matomo, Sentry ou autre) se font directement via l'espace-membre : [https://espace-membre.beta.gouv.fr/services/ops](https://espace-membre.beta.gouv.fr/services/ops).

Si tu n'as pas de réponse sous 24h, consulte la liste des gens qui ont accès et les droits suffisants, et fais une relance nominative.

Tu peux demander de l'aide sur ces sujets sur Tchap dans le canal [Demandes-OPS](https://tchap.gouv.fr/#/room/!VxFWdbcSlumKPvpVRP:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr).

### Hébergement

Quel que soit votre choix d'hébergement, pensez à bien documenter votre infrastructure et respecter [les 12 facteurs](https://12factor.net/fr/) pour une meilleure portabilité de votre application.

{% hint style="info" %}
Le label « SecNumCloud » est nécessaire seulement dans le cadre du champ d’application de l’[article 31 de la loi SREN](https://www.legifrance.gouv.fr/jorf/article\_jo/JORFARTI000049563610) , c'est à dire lorsqu'il y a une sensibilité particulière sur les données, qu'elles soient personnelles ou stratégiques.\
\
Le label « HDS » est indispensable si vous traitez des données de santé.\
\
En cas de doute, vous pouvez contacter votre équipe juridique ou solliciter notre communauté sur mattermost, canal [\~domaine-juridique](https://mattermost.incubateur.net/betagouv/channels/domaine-juridique).
{% endhint %}

#### Application mode PaaS

Il existe des hébergeurs qui automatisent la mise en prod de votre application et gèrent la base de données.

Ces approches "sans serveur" appelées `Serverless`, permettent à votre équipe de développement de se passer de la gestion directe de serveurs (physiques ou virtualisés) et de se concentrer sur la production de code. Ces solutions sont **plus que recommandées** pour le lancement d'une startup d'état (**Ne perdez pas du temps avec de l'ops** : concentrez-vous sur le produit).

Voici des exemples d'hébergeurs permettant d'héberger simplement une application : (non exhaustive)

| Service           | Normes                                 |
| ----------------- | -------------------------------------- |
| 🇫🇷 [Scalingo](https://scalingo.com/fr/acteurs-publics)     | HDS, Zone basé sur un IaaS SecNumCloud  |
| 🇫🇷 [Clever Cloud](https://www.clever-cloud.com/fr/presentation/) | HDS                                     |
| 🇫🇷 [Scaleway](https://www.scaleway.com/fr/)     | HDS                                     |

{% hint style="info" %}
Pour lancer un premier hébergement avec très peu de frais, certains incubateurs proposent des marchés publics sur des hébergeurs PaaS, c'est le cas de Scalingo avec l'incubateur de la DINUM (ISN) et de la Fabrique Numérique de l’Écologie. Rapprochez-vous des [responsables techniques d'incubateurs](../../../gerer-son-produit/gestion-au-quotidien/tech/to-do-liens-avec-les-referents-techs.md) pour en savoir plus.

{% endhint %}

> Pour ces hébergeurs type `PaaS`, vous devez respecter les conventions de [The Twelve-factor app](https://12factor.net) mais bénéficiez de nombreux avantages : scaling et sauvegardes automatiques, outillage de monitioring intégré, prix attractif...

#### Application mode IaaS

Si la charge de travail de votre application nécessite malgré tout un hébergement sur une machine dédiée, voici des exemples d'hébergeurs permettant de louer des machines virtuelles, serveurs ou ressources brutes :

| Service           | Normes                                    |
| ----------------- | ----------------------------------------- |
| 🇫🇷 [Outscale](https://fr.outscale.com/cloud-experience/cloud-souverain/)     | HDS, SecNumCloud                            |
| 🇫🇷 [OVH](https://www.ovhcloud.com/fr/public-cloud/)          | HDS, SecNumCloud sur certaines ressources   |
| 🇫🇷 [Cloud Temple](https://www.cloud-temple.com/produits/) | HDS, SecNumCloud                            |
| 🇫🇷 [Scaleway](https://www.scaleway.com/fr/)     | HDS                                         |


### Coûts cachés : IaaS vs PaaS/Serverless

Afin de bénéficier de mêmes avantages que proposent les PaaS et afin également de respecter les standards et bonnes pratiques beta.gouv, l'approche IaaS implique des coûts cachés qui doivent être pris en compte :

| Aspect | Approche IaaS (VM) | Approche PaaS/Serverless |
| ------ | ------------------ | ------------------------ |
| **Déploiement continu** | Nécessite de mettre en place et maintenir des pipelines CI/CD | Généralement intégré avec des workflows simples (blue/green deployment) |
| **Intégrité des données** | Configuration manuelle des sauvegardes et de leur externalisation | Automatisé et inclus dans le service |
| **Monitoring & Logs** | Mise en place d'outils de collecte et d'analyse des logs et métriques | Dashboards et alertes souvent préconfigurés |
| **Sécurité** | Responsabilité complète de l'équipe (mises à jour OS, back-up, correctifs, etc.) | Partiellement gérée par le fournisseur |
| **Réseau** | Configuration et sécurisation réseau manuelle (ex: firewall, accès SSH) | Gestion des accès simplifiée via interfaces web |
| **Disponibilité** | Nécessite une configuration avancée pour assurer la rédondance | Généralement transparent et inclus dans l'offre |
| **Mise à l'échelle** | Configuration manuelle ou scripts complexes | Automatique et transparente |
| **Compétences requises** | Nécessite des compétences DevOps spécifiques | Peu de compétences opérationnelles requises |
| **Coût réel** | Prix de l'infrastructure + temps d'ingénierie + maintenance | Prix du service (généralement plus prédictible) |

Pour une Startup d'État en phase de lancement, ces coûts cachés limitent le développement de fonctionnalités. Privilégier une approche PaaS ou Serverless permet de concentrer des ressources limitées sur la création de valeur pour les utilisateurs plutôt que sur la maintenance et les opérations d'une infrastructure.

> **Recommandation** : Ne passez à une approche IaaS que lorsque les limites techniques ou économiques du PaaS sont clairement atteintes et documentées. Dans la grande majorité des cas, les solutions PaaS sont largement suffisantes pour les besoins des startups d'État, même à l'échelle.

#### Hébergements d'images et de fichiers

Vos utilisateurs ont besoin de téléverser (uploader) des images ou des fichiers vers votre application, et vous ne savez pas où stocker ce contenu ?

Voici une liste (non exhaustive) d'hébergeurs régulièrement utilisés. Pensez à chiffrer les données si nécessaire.

| Service                             | -                                                                                                 |
| ----------------------------------- | ------------------------------------------------------------------------------------------------- |
| 🇫🇷 Scaleway                       | Object Storage (compatible S3 ; [lien](https://www.scaleway.com/fr/object-storage/))              |
| 🇫🇷 Clever Cloud (HDS)             | Cellar (compatible S3 ; [lien](https://www.clever-cloud.com/cellar-s3-hosting/))                  |
| 🇫🇷 OVH (HDS)                      | Object Storage (compatible S3 ; [lien](https://www.ovhcloud.com/en/public-cloud/object-storage/)) |
| 🇫🇷 OutScale (HDS+SecNumCloud)     | Object Storage (compatible S3 ; [lien](https://fr.outscale.com/solutions-stockage-cloud/oos/))    |
| 🇫🇷 Cloud Temple (HDS+SecNumCloud) | Object Storage (compatible S3 ; [lien](https://www.cloud-temple.com/produits/stockage-objet/))    |

{% hint style="info" %}
Certains produits stockent avec succès leurs fichiers directement dans PostgreSQL, n'hésitez pas à challenger votre approche via le canal [Domaine-dev sur Tchap](https://tchap.gouv.fr/#/room/!RZYCMTpOqgMrCofbMs:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr&via=agent.social.tchap.gouv.fr&via=agent.finances.tchap.gouv.fr) :)
{% endhint %}
