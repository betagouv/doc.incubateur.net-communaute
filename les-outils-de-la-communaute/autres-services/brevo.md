---
description: Newsletters et transactionnel
---

# Brevo

[Brevo](https://www.brevo.com) est l'outil utilisé par la communauté pour envoyer des emails transactionnels et des campagnes d'emailing.\
\
Pour utiliser ce type de service, vous devez disposer de votre propre sous-domaine DNS, cf la [page sous-domaine beta.gouv.fr.](../../gerer-son-produit/tech/sous-domaine-beta-gouv-fr.md)

Votre incubateur doit pouvoir vous fournir un compte Brevo dédié sur lequel vous serez autonomes.

### ✅ Comment demander un accès ?

Rien de plus simple !\
👉 Tu peux faire une demande en contactant [le support via le chat Crisp](https://go.crisp.chat/chat/embed/?website_id=1020533a-61b1-45cd-90ab-8d6f99fb006a) (icône en bas à droite de cette page).

Il faudra indiquer :

* le nom de votre produit ainsi que l'incubateur de rattachement
* l’usage prévu (transactionnel, newsletter, test, etc.)
* les membres de votre équipe à ajouter (adresse email pro)

📌 L’accès est **gratuit** pour les équipes produit internes, dans la limite du quota du compte partagé.

{% hint style="danger" %}
Pour les équipes de l'incubateur des territoires (ANCT), la demande est à formuler directement sur le [canal support](https://chat.incubateur.anct.gouv.fr/incubateur/channels/support) du mattermost de l'incubateur.
{% endhint %}

***

#### ⚠️ Bonnes pratiques

* Ne jamais importer de base de contacts non opt-in (RGPD)
* Préférer une adresse email d’expéditeur liée à votre domaine
* Surveiller les performances et éviter les envois massifs non ciblés

### Recommandations

Configurer les champs SPF et DKIM de votre zone DNS, cf [la documentation brevo](https://help.brevo.com/hc/fr/articles/12163873383186-Authentifier-votre-domaine-avec-Brevo-code-Brevo-enregistrement-DKIM-enregistrement-DMARC).

Utilisez des adresses IP brevo dédiées pour vos envois.

Afin de préserver la vie privée de vos usagers, demandez gentiment au support Brevo de désactiver totalement le tracking dans les emails.

{% hint style="success" %}
**Avant de commencer, nous vous conseillons de consulter ce** [**guide** ](https://docs.numerique.gouv.fr/docs/d5584e0f-a4d1-4868-8650-5636ee234c8c/)**regroupant les informations principales pour bien utiliser Brevo**
{% endhint %}

{% hint style="info" %}
Privilégiez les envois via SMTP plutôt que par API pour pouvoir changer plus facilement de fournisseur d'envoi.
{% endhint %}
