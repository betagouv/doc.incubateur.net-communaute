---
description: Comment gérer les envois pour maximiser leur réception
---

# Gestion des envois emails

## La théorie

La délivrabilité des emails est impactée par deux facteurs : le nom de domaine et l’adresse IP utilisée. Les email providers utilisent un mélange des deux afin de mieux filtrer les emails qui arrivent dans les boîtes mails.

Comme pour le [SEO](seo.md), ce n'est pas une sciences exacte et nous ne savons pas exactement quel critère à le plus de poids.

### DKIM et SPF

[DKIM](https://fr.mailjet.com/support/que-signifie-dkim-domain-keys-identified-mail,7.htm) et [SPF](https://www.altospam.com/glossaire/spf.php) sont deux protocoles développés pour combattre le spam mail et authentifier au mieux les expéditeurs légitimes même si ceux-ci passent par des prestataires comme Mailjet ou Mailchimp. Il convient de s’assurer que les enregistrements DNS sont correctement configurés sur tous les domaines pouvant émettre du mail.

### Adresse IP

Il y a 2 possibilités concernant les adresses IP d'envoi :

* soit vous avez des IP partagées, c'est à dire que d'autres services utilisent la même adresse IP que vous pour faire leurs envois. C'est souvent l'offre de base des prestataires et la bonne solution quand vous avez un volume restreint d'envois
* soit vous avez vos propres adresses IP d'envoi, ce qui signifie que vous maitrisez complètement sa réputation. Cela nécessite un certain volume d'envois.

Certains filtres anti-spam signalent les emails si votre service ou un service qui utilise la même adresse IP que vous a envoyé un spam. Lorsque vous envoyez des campagnes à travers votre prestataire, le contenu passe en premier à travers leur serveurs et adresse IP. Donc si une personne signale l’email comme spam, tous les autres emails (toute entreprise qui passe à travers les mêmes serveurs) peuvent être marqués comme spam pour cette personne.

### Domaine de l’email d’envoi

La réputation du domaine d’envoi est une des premières choses que les systèmes anti-spam vont vérifier. Ceci veut dire d’une certaine manière que votre marque prend le dessus sur l’adresse IP d’un point de vue des email providers. Lors de l’envoi d’un email, les informations DNS sont ajoutées au métadonnées de l'email et c’est comme ça que l’email provider va pouvoir s’assurer de la vérification du domaine. Selon certaines recherches, Gmail valorise plus le domaine d’envoi que l’adresse IP. De plus, tout domaine peut avoir plusieurs sous-domaines qui vont avoir des réputations séparées. C’est une bonne pratique dans l’industrie de différencier les sous-domaines d’envoi selon la nature de l’email.

### Articles associés

* [https://sendgrid.com/blog/email-reputation-101-ip-reputation-vs-domain-reputation/](https://sendgrid.com/blog/email-reputation-101-ip-reputation-vs-domain-reputation/)
* [https://www.towerdata.com/blog/bid/116384/email-reputation-what-it-s-all-about](https://www.towerdata.com/blog/bid/116384/email-reputation-what-it-s-all-about)
* [https://mailchimp.com/fr/help/about-spam-filters/](https://mailchimp.com/fr/help/about-spam-filters/)
* [https://www.braze.com/blog/email-subdomains/](https://www.braze.com/blog/email-subdomains/)
* [https://fr.mailjet.com/blog/news/noreply/](https://fr.mailjet.com/blog/news/noreply/)

## Quelques conseils

Le plus de personnes vont ouvrir vos mails et le moins ils vont pas signaler comme spam, meilleure sera votre réputation et donc à la fin la réception de vos prochains emails. Alors comment faire ?

### Séparer les envois avec des sous domaines

_Le sous domaine est ce qu’il y a juste avant le domaine mais juste après le @. Ce n’est pas obligatoire._

Veiller à ne pas utiliser la même adresse pour vos **emails transactionnels** (confirmation de compte, mot de passe oublié...) que pour vos **campagnes marketing** (newsletter, campagnes d'acquisition...). Vous réduisez ainsi le risque que certains de vos mails transactionnels essentiels pour votre service finissent dans la boite de spam de leurs destinataires.

### Utiliser des adresses d'envoi transparentes

Cela permet aux utilisateurs de mieux comprendre d'ou vient ce mail et pourquoi il est envoyé. Par contre évitez le "marketing@XXX.com" ou des mots qui pourraient être interprété comme dans spam.

### Eviter le noreply@XXX.com et configurer une adresse de réponse

D'abord parce que les adresses email noreply peuvent détériorer votre relation client. Si un client souhaite prendre contact avec vous suite à la réception de votre email, découvrir que le message a été envoyé via une adresse noreply sera déceptif et frustrant.

Aussi, les utilisateurs ont plus facilement tendance à mettre une adresse noreply dans les spams. En effet, ne pouvant identifier l’expéditeur du message, il se peut qu’ils perçoivent vos emails comme une tentative de phishing (technique pour dérober des informations personnelles).

Enfin le noreply vous empêche de mettre à jour vos bases de contacts. Recevoir les réponses automatiques de vos destinataires est un moyen pour faire le tri dans vos bases de contacts.

### Utiliser différentes adresses IP - si pertinent

Quand vous avez assez de volume d'envoi, optez pour des IP dédiées auprès de votre prestataire plutôt que de rester sur des IP partagées. Cela vous permet de contrôler la réputation de vos IP.

Utiliser des IP différentes pour vos emails transactionnels et vos emails marketing. Demandez conseil à votre prestataire d'email

## Quelques exemples

### Trainline

* [guichet@trainline.fr](mailto:guichet@trainline.fr) pour le transactionnel (confirmation d’achat, envoi des billets…)
* [trainline@news.thetrainline.com](mailto:trainline@news.thetrainline.com) pour les informations légales (mise à jour de politique de confidentialité)
* [trainline.fr@news.thetrainline.com](mailto:trainline.fr@news.thetrainline.com) pour les informations urgentes ou les news (informations sur les grèves de la SNCF, mise en avant des voyages en bus…)

### Backmarket

* [hi@backmarket.fr](mailto:hi@backmarket.fr) pour le transactionnel (garantie, confirmation d’achat, suivi de la livraison…)
* [batm@n.backmarket.fr](mailto:batm@n.backmarket.fr) pour les newsletters (avant juin 2018 c’était [newsletter@backmarket.fr](mailto:newsletter@backmarket.fr))

### Airbnb

* [automated@airbnb.com](mailto:automated@airbnb.com) pour toutes les “notifications” (réservation confirmée, alerte sécurité nouvelle connexion, demande de feedback et info qu’un feedback a été donné, les informations avant le voyage, info pour un remboursement, confirmation d’email…)
* [invitation@airbnb.com](mailto:invitation@airbnb.com) pour les invitations (invitation à participer à un voyage ou information de la possibilité d’enregistrer une wishlist et de la partager)
* [express@airbnb.com](mailto:express@airbnb.com) pour le “transactionnel” ? (messages du Host envoyé depuis le messagerie Airbnb, rappel de réservation, récépissé, réservation confirmée)
* [noreply@airbnb.com](mailto:noreply@airbnb.com) pour le légal et les promotion (changements politique de confidentialité, promotion sur une destination)

### Uber

* [uber.france@uber.com](mailto:uber.france@uber.com) / [uber.uk@uber.com](mailto:uber.uk@uber.com) pour les reçus envoyés par email après les commandes
* [no-reply@uber.com](mailto:no-reply@uber.com) est utilisé pour confirmer les demandes de courses
* [email@et.uber.com](mailto:email@et.uber.com) est utilisé pour les emails important types update GDPR ainsi que les offres/promotions

### Deliveroo

* [info@deliveroo.fr](mailto:info@deliveroo.fr) pour les confirmations de commande
* [hello@announce.deliveroo.fr](mailto:hello@announce.deliveroo.fr) pour les newsletters et promotions sur les offres

### Lydia

* [support@mg.lydia-app.com](mailto:support@mg.lydia-app.com) pour le transactionnel (notifications transferts d’argent, email de bienvenue)
* [support@lydia-app.com](mailto:support@lydia-app.com) pour le marketing (newsletters, annonce produit, nouvelle personne connectée à Lydia…)

### Le Bon Coin

* [no.reply@leboncoin.fr](mailto:no.reply@leboncoin.fr) pour le transactionnel (renouvelez votre annonce "machin chose", votre annonce est en ligne)
* [info@news.leboncoin.fr](mailto:info@news.leboncoin.fr) pour le marketing (donnez plus de visibilité à votre annonce, départ immédiat : direction…, on trouve tout sur le bon coin ! même un job, mise à jour de notre politique de confidentialité)
* [contact-flsdfjlsdj@messagerie.leboncoin.fr](mailto:contact-flsdfjlsdj@messagerie.leboncoin.fr) pour la messagerie interne ("username" via le bon coin - généralement en spam)

## Aide Transverse DINUM

Si vous souhaitez de l'aide sur les sujets liés à la croissance, la DINUM met en place un accompagnement en transverse : [https://doc.incubateur.net/communaute/aide-transverse/growth-hacking-acquisition](https://doc.incubateur.net/communaute/aide-transverse/growth-hacking-acquisition) par Chaïb Martinez

Côté gestion de produit, [https://doc.incubateur.net/communaute/aide-transverse/methodologie-produit](https://doc.incubateur.net/communaute/aide-transverse/methodologie-produit) par Mathilde Petit et Clément Chapalain
