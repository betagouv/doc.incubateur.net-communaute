# 📣 Tchap

Tchap est messagerie instantanée du secteur public. Elle permet d'échanger de manière sécurisée avec toutes les administrations. Contrairement à Mattermost, la sécurité des échanges est garantie grâce à du chiffrement de bout en bout **dans les canaux chiffrés**.

**À partir du 1er septembre 2026, Tchap est la messagerie officielle de la communauté beta.gouv.fr.**

{% embed url="https://aide.tchap.beta.gouv.fr/fr/article/guide-de-prise-en-main-de-tchap-oswyn1/" %}

## L'espace beta.gouv.fr

Un [espace beta.gouv.fr](https://tchap.gouv.fr/#/room/#betagouvfrgKBP8KrQi4k:agent.dinum.tchap.gouv.fr) est accessible sur Tchap à toutes les personnes qui travaillent dans une équipe produit du réseau beta.gouv.fr.

Il permet de communiquer avec deux niveaux d'échanges :

* des échanges via messages privés avec l'ensemble des utilisateurs de Tchap ;&#x20;
* des échanges dans des espaces, au sein desquels peuvent être créés des salons de discussion privés ou publics.

Lorsqu'un nouveau membre rejoint la communauté beta.gouv.fr et crée une fiche sur l'espace membre, il est automatiquement ajouté à l'espace beta.gouv.fr et à l'espace de son incubateur.

### Les canaux à connaître

* Salon [Général](https://tchap.gouv.fr/#/room/!lWPNmdvOrZYcrUSSSq:agent.dinum.tchap.gouv.fr), le canal où toute la communauté est présente, pour partager des infos collectives
* Salon [Entraide-Communauté](https://tchap.gouv.fr/#/room/!FznvyqtGVRlsGHcLVE:agent.dinum.tchap.gouv.fr), le canal où toute la communauté est présente, pour s'entraider
* Salon [Annonces](https://tchap.gouv.fr/#/room/!opPGkbFkKlIySUyfyN:agent.dinum.tchap.gouv.fr), pour suivre les annonces et infos importantes de la communauté
* Salon [Random](https://tchap.gouv.fr/#/room/!mjMJejXfZFiOczWRQY:agent.dinum.tchap.gouv.fr), pour parler de tout et de rien
* \[à compléter au fil de l'eau]

{% hint style="info" %}
Tu souhaites créer un salon dans l'espace beta.gouv.fr ? Une commande sera prochainement disponible. En attendant, tu peux faire ta demande sur le salon [BetaGouv-tmp-migration](https://tchap.gouv.fr/#/room/!bfLWibiCHOmIxcBJpm:agent.dinum.tchap.gouv.fr).
{% endhint %}

{% hint style="warning" %}
Les canaux "publics" ne sont pas chiffrés. N'exposez pas d'informations confidentielles sur ces canaux.
{% endhint %}

## Règles de nommage

Afin de garantir la cohérence et la lisibilité de nos espaces collectifs de discussion, il est recommandé de respecter des règles communes de nommage des espaces.

**Pour les salons créés dans l'espace beta.gouv.fr**

* BetaGouv-Général
* BetaGouv-Annonces
* BetaGouv-domaine-\[métier]
* BetaGouv-bruit-\[\*]
* BetaGouv-outil-\[\*]

**Pour les espaces des incubateurs**&#x20;

* Général-\[nom de l'incubateur]

**Pour les salons d'équipe**

* equipe-\[nom du produit]

## Recommandations sur les permissions

{% hint style="info" %}
**Il n'est pas possible de supprimer une personne qui a le rôle d'« administrateur » dans les permissions d'un espace ou d'un salon.** Cette personne devra quitter son rôle elle-même.

Pense donc à limiter le nombre de personnes qui ont ce rôle lorsque tu crées un espace ou un salon. La recommandation est de 2 administrateurs.

Les autres personnes peuvent avoir des droits larges si tu le souhaites, en modulant les droits accordés au rôle « modérateur ».&#x20;
{% endhint %}

Besoin d'aide pour migrer ton équipe ou pour paramétrer tes salons ? Des remarques sur le fonctionnement de l'outil ? Pose ta question sur le [salon Tchap BetaGouv-tmp-migration](https://tchap.gouv.fr/#/room/!bfLWibiCHOmIxcBJpm:agent.dinum.tchap.gouv.fr).

## Bots

Le canal [Demandes-OPS](https://tchap.gouv.fr/#/room/!VxFWdbcSlumKPvpVRP:agent.dinum.tchap.gouv.fr) permet :

 - de [gérer les listes de diffusion](https://doc.incubateur.net/communaute/les-outils-de-la-communaute/emails/liste-de-diffusion-et-adresses-de-contact#commandes-disponibles).
 - de créer des canaux dans l'espace beta.gouv.fr

## WebHooks

L'équipe animation propose un webhook tchap basé sur n8n (vous pouvez le déployer de votre côté si besoin d'isolation). Les hooks sont configurables via GIT et [ce fichier YAML](https://github.com/betagouv/n8n-configs/blob/main/tchap-webhooks.yaml). 

Nous recommandons de créer un canal Tchap dédié `equipe-[xxx]-notifications` et d'y inviter `tchap-bot@beta.gouv.fr`.

:warning: Les messages envoyés par ce BOT ne sont PAS chiffrés. (TODO)

### Services supportés sur le webhook

Service | Descriptions
--------|------
GitHub |   [Notifications](https://docs.github.com/en/webhooks/webhook-events-and-payloads) push, actions...
Scalingo | [Notifications](https://doc.scalingo.com/platform/app/notifiers) deploiement, crash, edit...
Sentry | Notifications d'exceptions (cf alert Rules)
UpDown.io | Notifications d'indisponibilité
Metabase | Alertes metabase
Brevo | [Notifications](https://help.brevo.com/hc/fr/articles/27824932835474-Cr%C3%A9er-des-webhooks-sortants-pour-envoyer-des-donn%C3%A9es-en-temps-r%C3%A9el-de-Brevo-vers-une-application-externe) déliverabilité et marketing

D'autres services peuvent être ajoutés au besoin. Pour réaliser vos propres webhooks/bots :

 - Doc officielle BOTs Tchap : https://aide.tchap.numerique.gouv.fr/fr/article/documentation-technique-bot-et-integrations-tchap-1z3dfx/
 - Le canal Tchap BOTs & Intégrations : https://www.tchap.gouv.fr/#/room/#BotsetIntgrationsTchapU2tHdMEN80D:agent.dinum.tchap.gouv.fr
