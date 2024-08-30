# Brevo : newsletters et transactionnel

[Brevo](https://www.brevo.com) (anciennement SendInBlue) est l'une des plateformes utilisées par la communauté pour envoyer des emails transactionnels et campagnes.\
\
Pour utiliser ce type de service, vous devez disposer de votre propre sous-domaine DNS, cf la [page sous-domaine beta.gouv.fr.](../../../gerer-son-produit/tech/sous-domaine-beta-gouv-fr.md)

Votre incubateur doit pouvoir vous fournir un compte Brevo dédié sur lequel vous serez autonomes.

Vous pouvez faire une demande de compte brevo sur [\~incubateur-demandes-ops](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops)

### Recommandations

Configurer les champs SPF et DKIM de votre zone DNS, cf [la documentation brevo](https://help.brevo.com/hc/fr/articles/12163873383186-Authentifier-votre-domaine-avec-Brevo-code-Brevo-enregistrement-DKIM-enregistrement-DMARC).

Utilisez des adresses IP brevo dédiées pour vos envois.

Afin de préserver la vie privée de vos usagers, demandez gentiment au support Brevo de désactiver totalement le tracking dans les emails.

{% hint style="info" %}
Privilégiez les envois via SMTP plutôt que par API pour pouvoir changer plus facilement de fournisseur d'envoi.
{% endhint %}
