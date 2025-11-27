# Envoi d'emails en masse

{% hint style="danger" %}
N'envoie pas d'emails en masse depuis ta boîte mail beta.gouv.\
\
**Utilise un service dédié comme Brevo ou Mailjet et un domaine type \[produit].beta.gouv.fr**
{% endhint %}

L'envoi en masse peut lever des alertes chez nos fournisseurs d'infrastructure : en gros si tu abuses, tu risques de bloquer l'envoi de mails pour tous les copains !

Il existe des services adaptés pour les envois en masse : [Brevo](../../autres-services/brevo.md), Mailjet, etc. Tu peux demander conseil sur [incubateur-ops.](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops)

* Assurez-vous de recueillir l'indispensable consentement explicite des personnes que vous ajoutez à vos bases de contacts
* Purger régulièrement mes contacts (destinataires et abonnés des newsletters) en retirant des listes d’envoi les courriels des personnes qui se sont désabonnées

Quelques recommandations :

Si votre produit doit envoyer des newsletter ou emails transactionnels, **vous devez mettre en place un domaine dédié** type `@[produit].beta.gouv.fr` en faisant une demande OPS. Vous pourrez alors configurer vous-mêmes les enregistrements `DKIM` et `SPF` nécessaires à la bonne déliverabilité de vos emails.

* Brevo (ex SendInBlue)
* Tipimail (Sarbacane)

{% content-ref url="gestion-des-envois-emails.md" %}
[gestion-des-envois-emails.md](gestion-des-envois-emails.md)
{% endcontent-ref %}

{% content-ref url="../../autres-services/brevo.md" %}
[brevo.md](../../autres-services/brevo.md)
{% endcontent-ref %}
