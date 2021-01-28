---
description: Comment envoyer et recevoir des emails avec son adresse @beta.gouv
---

# 📧 Emails

## Créer un compte email à un nouveau membre

Pour obtenir leur email, les nouveaux membres doivent créer leur fiche sur le [Secrétariat](https://secretariat.incubateur.net/login). Le compte email sera automatiquement créé une fois que la fiche sera validée par un membre de la communauté.

## Envoyer et recevoir des mails @beta.gouv.fr

### Prérequis

Muni-toi de :

* ton adresse `prenom.nom@beta.gouv.fr`
* le mot de passe

### Choisir son client de messagerie

Choisis sur quel logiciel de messagerie tu veux recevoir et envoyer tes emails. Par exemple : 

* [Mail](https://support.apple.com/fr-fr/mail) \(OS X / iOS\) : le client mail par défaut d'Apple
* [Thunderbird](https://www.thunderbird.net/fr/) \(OS X / Windows / Linux\) : le client libre de Mozilla qu'on ne présente plus
* [Mailspring](https://getmailspring.com/) \(OS X / Windows / Linux\) : un client gratuit et open-source, avec une interface moderne
* [Microsoft Courier](https://www.microsoft.com/fr-fr/p/courrier-et-calendrier/9wzdncrfhvqm?activetab=pivot:overviewtab) : le client mail par défaut de Windows
* [Gmail](https://play.google.com/store/apps/details?id=com.google.android.gm&hl=fr) : l'application mail par défaut sur Android
* [AquaMail](https://www.aqua-mail.com/) \(Android\) : une application mail fluide qui respecte la vie privée
* [ou beaucoup d'autres](https://duckduckgo.com/?q=meilleurs+clients+mails)

### **Configurer la réception et l'envoi d'emails**

Il existe des tutoriels détaillés pour certains clients mails : 

* Apple Mail : [OSX](https://docs.ovh.com/fr/emails/guide-configuration-mail-de-mac-el-capitan/) et [iOS](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-iphone-ios-91/)
* [Gmail](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-dun-e-mail-mutualise-ovh-sur-linterface-de-gmail/)
* [Thunderbird](https://docs.ovh.com/fr/emails/configuration-email-configuration-pour-thunderbird/)
* [Courier](https://docs.ovh.com/fr/emails/configuration-courrier-sur-windows-10/)

Pour les autres logiciels, la configuration se fait de manière suivante :

* **Ajouter un nouveau compte**
* Sélectionner l'option **IMAP / SMTP**
* Paramétrer le compte **IMAP** \(courrier entrant\) :

| Paramètre | Valeur |
| :--- | :--- |
| Serveur | ssl0.ovh.net |
| Port | 993 |
| Méthode de chiffrement | SSL  |
| Nom d'utilisateur | ton adresse beta.gouv.fr |
| Mot de passe | le mot de passe de ton email |

* Paramétrer le compte **SMTP** \(courrier sortant\) : 

| Paramètre | Valeur |
| :--- | :--- |
| Serveur | ssl0.ovh.net |
| Port | 587 |
| Méthode de chiffrement | TLS |
| Nom d'utilisateur | ton adresse beta.gouv.fr |
| Mot de passe | le mot de passe de ton email |

Tous les dossiers mails \(brouillons, envoyés, reçu, archivés, etc.\) sont maintenant automatiquement synchronisés entre les différents clients.

{% hint style="info" %}
Tu peux consulter tes mails directement sur [RoundCube](https://mail.ovh.net/roundcube/). L'interface n'est pas géniale, mais ça peut être une bonne solution pour dépanner, ou quand tu n'a pas accès à ton client web habituel.
{% endhint %}

## Envoyer des mails en masse

{% hint style="danger" %}
N'envoie pas d'emails en masse depuis ta boîte mail beta.gouv. 

**Utilise un service dédié comme SendInBlue ou Mailjet.**
{% endhint %}

L'envoi en masse peut lever des alertes chez nos fournisseurs d'infrastructure : en gros si tu abuses, tu risques de bloquer l'envoi de mails pour tous les copains ! 

Il existe des services adaptés pour les envois en masse : SendInBlue, Mailjet, etc. Tu peux demander conseil sur \#incubateur-ops.

## Configurer sa signature de mail @beta.gouv.fr

Voici un exemple de signature : 

> Jean LOUIS  
> Chargé de Développement  
> Équipe Lambda - beta.gouv.fr  
> jean.louis@beta.gouv.fr – +33.\(0\)6.XX.XX.XX.XX

Ta signature ne doit pas mentionner la DINUM, pour éviter de porter à confusion. Indique uniquement ton appartenance à une équipe beta.gouv.fr

## Retrouver mon mot de passe

Si tu as perdu ton mot de passe, il faut passer par OVH pour le récupérer. Tu peux demander de l'aide sur  \#incubateur-secretariat sur Slack.

