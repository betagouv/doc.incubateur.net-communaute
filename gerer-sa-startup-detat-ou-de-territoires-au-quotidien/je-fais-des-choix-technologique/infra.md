# Infra

Chaque Startup d'Etat gère son infrastructure de façon souveraine. Certains incubateurs proposent des services d'hébergement mutualisés; Renseignez-vous auprès des référent(e)s tech de votre fabrique.

### Les services partagés

L'équipe betagouv propose des ressources partagées pour vous aider à démarrer; Ces services sont fournis en mode "best effort" par l'équipe animation, sans garantie de service.\
\
Tous les services disponibles sont présentés sur la page ["les outils de la communauté"](../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/) et vous pouvez instancier ces services de votre côté si nécessaire.

{% content-ref url="../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/" %}
[jutilise-les-outils-de-la-communaute](../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/)
{% endcontent-ref %}

### Comment faire une demande d'ops

Pour toute demande d'ops (sous-domaine, matomo, sentry, etc) remplis le formulaire de demande d'ops que tu trouveras dans la description du channel [`~incubateur-ops` sur mattermost](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops). Afin d'éviter de multiples aller-retour n'hésite pas à fournir le maximum d'information dans le champ "note".

Si tu n'as pas de réponse sous 24h, consulte la liste des gens qui ont accès et les droits suffisants, et fais une relance nominative.

Tu peux demander de l'aide sur ces sujets sur Mattermost dans 🔒`~incubateur-ops`.

### Envoi de courriels en masse ou transactionnels

* Brevo (ex SendInBlue)
* Tipimail (Sarbacane)

Si votre produit doit envoyer des newsletter ou emails transactionnels, **vous devez mettre en place un domaine dédié** type `@[produit].beta.gouv.fr` en faisant une demande OPS. Vous pourrez alors configurer vous-mêmes les enregistrements `DKIM` et `SPF` nécessaires à la bonne déliverabilité de vos emails.

Quelques recommandations :

* Assurez-vous de recueillir l'indispensable consentement explicite des personnes que vous ajoutez à vos bases de contacts
* Purger régulièrement mes contacts (destinataires et abonnés des newsletters) en retirant des listes d’envoi les courriels des personnes qui se sont désabonnées

### Hébergement

Quel que soit votre choix d'hébergement, pensez à bien documenter votre infrastructure et respecter [les 12 facteurs](https://12factor.net/fr/) pour une meilleure portabilité de votre application :)&#x20;

#### Application mode PaaS

Il existe des hébergeurs qui automatisent la mise en prod de votre application et gèrent la base de données. Ils sont recommandés pour le lancement d'une startup d'état (**Ne perdez pas du temps avec de l'ops** : concentrez-vous sur le produit). Voici un exemple d'hébergeurs permettant d'héberger simplement une application : (non exhaustive)

| Service           | Normes                                           |
| ----------------- | ------------------------------------------------ |
| 🇫🇷 Clever Cloud | HDS, Zone basé sur un hébergeur IaaS SecNumCloud |
| 🇫🇷 Scalingo     | HDS, Zone basé sur un hébergeur IaaS SecNumCloud |

> Pour ces hébergeurs type `PaaS`, vous devez respecter les conventions de [The Twelve-factor app](https://12factor.net)) mais bénéficiez de nombreux avantages : scaling et sauvegardes automatiques, outillage de monitioring intégré, prix attractif...

#### Application mode IaaS

Voici des exemples d'hébergeurs permettant de louer des machines virtuelles, serveurs ou ressources brutes.

| Service       | Normes                                    |
| ------------- | ----------------------------------------- |
| 🇫🇷 Outscale | HDS, SecNumCloud                          |
| 🇫🇷 OVH      | HDS, SecNumCloud sur certaines ressources |
| 🇫🇷 Scaleway |                                           |

> Choisissez l'hébergement en fonction des critères pour la start-up :
>
> * Est-ce que je garde les données en France ? (c'est recommandé pour votre prod mais pour votre environnement de demo, c'est moins sensible)
> * Quel est la confidentialité de mes données ? (quand on se lance, au début on n'a pas ou peu de données)
> * Quel est le coût ? (tu as un coût, une journée dev peut équivaloir à 1 an d'hébergement sur certains de ces services: **si ça te fais gagner du temps, tu peux payer l'hébergement plus cher**)

#### Hébergements d'images et de fichiers

Vos utilisateurs ont besoin de téléverser (uploader) des images ou des fichiers vers votre application, et vous ne savez pas où stocker ce contenu ? Voici une liste (non exhaustive) d'hébergeurs régulièrement utilisés. Pensez à chiffrer les données si nécessaire.

| Service                     | -                                                                                                 |
| --------------------------- | ------------------------------------------------------------------------------------------------- |
| 🇫🇷 Scaleway               | Object Storage (compatible S3 ; [lien](https://www.scaleway.com/fr/object-storage/))              |
| 🇫🇷 Clever Cloud (HDS)     | Cellar (compatible S3 ; [lien](https://www.clever-cloud.com/cellar-s3-hosting/))                  |
| 🇫🇷 OVH (HDS)              | Object Storage (compatible S3 ; [lien](https://www.ovhcloud.com/en/public-cloud/object-storage/)) |
| 🇫🇷 OutScale (SecNumCloud) | Object Storage (compatible S3 ; [lien](https://fr.outscale.com/solutions-stockage-cloud/oos/))    |

