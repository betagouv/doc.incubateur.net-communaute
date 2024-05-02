# Infra

Chaque Startup d'Etat gère son infrastructure de façon souveraine. Certains incubateurs [comme la Fabrique numérique des ministères sociaux](https://socialgouv.github.io/support/#/README) proposent des services d'hébergement mutualisés.

## Les services partagés

L'équipe betagouv propose des ressources partagées pour vous aider à démarrer:

| Service         | -                                                           |
| --------------- | ----------------------------------------------------------- |
| Email           | Vos emails en `@beta.gouv.fr`                               |
| Sous-domaine    | Délégation de votre DNS `[produit].beta.gouv.fr`            |
| Hébergement     | AlwaysData, Clever-Cloud, Scaleway, Scalingo, OVH           |
| Messagerie      | [mattermost communauté](https://mattermost.incubateur.net/) |
| Web Analytics   | [matomo communauté](https://stats.beta.gouv.fr/)            |
| Gestion erreurs | [sentry communauté](https://sentry.incubateur.net/)         |

Pour toute demande relative à ces services, vous pouvez faire une [demande ops](infra.md#comment-faire-une-demande-dops)

## Comment faire une demande d'ops

Pour toute demande d'ops (sous-domaine, matomo, sentry, etc) remplis le formulaire de demande d'ops que tu trouveras dans la description du channel `~incubateur-ops` sur mattermost. Afin d'éviter de multiples aller-retour n'hésite pas à fournir le maximum d'information dans le champ "note".

Si tu n'as pas de réponse sous 24h, consulte la liste des gens qui ont accès et les droits suffisants, et fais une relance nominative.

Tu peux demander de l'aide sur ces sujets sur Mattermost dans 🔒`~incubateur-ops`.

## Envoi de courriels en masse ou transactionnels

- ~~Sendinblue~~ Brevo
- Tipimail (Sarbacane)

Si votre produit doit envoyer des newsletter ou emails transactionnels, vous devez mettre en place un domain dédié type `@[produit].beta.gouv.fr` en faisant [une demande OPS](infra.md#comment-faire-une-demande-dops). Vous pourrez alors configurer vous-mêmes les enregistrements `DKIM` et `SPF` nécessaires à la bonne deliverabilité de vos emails.

Quelques recommandations :

- Assurez-vous de recueillir l'indispensable consentement explicite des personnes que vous ajoutez à vos bases de contacts
- Purger régulièrement mes contacts (destinataires et abonnés des newsletters) en retirant des listes d’envoi les courriels des personnes qui se sont désabonnées

## Hébergement

### Site statique

Voici des hébergements simples pour un site statique :

| Service         | -              |
| --------------- | -------------- |
| 🇫🇷 AlwaysData   | 100Mo gratuits |
| 🇺🇸 GitHub pages |
| 🇺🇸 Netlify      |
| 🇺🇸 Vercel       |

### Application mode PAAS

Il existe des hébergeurs qui automatisent la mise en prod de votre application et gèrent la base de données. Ils sont recommandés pour le lancement d'une startup d'état (**Ne perdez pas du temps avec de l'ops** : concentrez-vous sur le produit). Voici une liste d'hébergeurs permettant d'héberger simplement une application : (non exhaustive)

| Service         | -   |
| --------------- | --- |
| 🇫🇷 Clever Cloud |     |
| 🇫🇷 Scalingo     |

> Pour ces hébergeurs type `PAAS`, vous devez respecter les conventions de [The Twelve-factor app](https://12factor.net)) mais bénéficiez de nombreux avantages : scaling et sauvegardes automatiques, outillage de monitioring intégré, prix attractif...

### Application mode IAAS

Voici des recommandations d'hébergeurs permettant de louer des machines virtuelles, serveurs ou ressources brutes.

| Service       | -   |
| ------------- | --- |
| 🇫🇷 AlwaysData |     |
| 🇫🇷 OVH        |
| 🇫🇷 Scaleway   |

> Choisissez l'hébergement en fonction des critères pour la start-up :
>
> - Est-ce que je garde les données en France ? (en général, c'est recommandé pour votre prod mais pour votre environnement de demo, c'est moins sensible)
> - Quel est la confidentialité de mes données ? (quand on se lance, au début on n'a pas ou peu de données)
> - Quel est le coût ? (tu as un coût, une journée dev peut équivaloir à 1 an d'hébergement sur certains de ces services: **si ça te fais gagner du temps, tu peux payer l'hébergement plus cher**)

{% file src="../../.gitbook/assets/schema_beta_hebergeur_v6.pdf" %}
Schéma - Choisir son hébergeur
{% endfile %}

### Hébergements d'images et de fichiers

Vos utilisateurs ont besoin de téléverser (uploader) des images ou des fichiers vers votre application, et vous ne savez pas où stocker ce contenu ? Voici une liste (non exhaustive) d'hébergeurs régulièrement utilisés.&#x20;

| Service         | -                                                                                                 |
| --------------- | ------------------------------------------------------------------------------------------------- |
| 🇫🇷 Scaleway     | Object Storage (compatible S3 ; [lien](https://www.scaleway.com/fr/object-storage/))              |
| 🇫🇷 Clever Cloud | Cellar (compatible S3 ; [lien](https://www.clever-cloud.com/cellar-s3-hosting/)) Ok               |
| 🇫🇷 OVH          | Object Storage (compatible S3 ; [lien](https://www.ovhcloud.com/en/public-cloud/object-storage/)) |
| 🇫🇷 OutScale     | Object Storage (compatible S3 ; [lien](https://fr.outscale.com/solutions-stockage-cloud/oos/))    |
