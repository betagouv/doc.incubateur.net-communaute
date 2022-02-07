---
description: Comment envoyer et recevoir des emails avec son adresse @beta.gouv
---

# Emails

## Créer un compte email à un nouveau membre

Pour obtenir leur email, les nouveaux membres doivent créer leur fiche sur le [Secrétariat](https://secretariat.incubateur.net/login). Le compte email sera automatiquement créé une fois que la fiche sera validée par un membre de la communauté.

Le compte email est actif tant que le membre à une mission en cours, il ne faut pas oublier de garder sa fiche de membre à jour.

## Envoyer et recevoir des mails @beta.gouv.fr

### 0. Prérequis

Munis-toi de :

* ton adresse `prenom.nom@beta.gouv.fr`
* le mot de passe

### 1. Choisir son client de messagerie

Choisis sur quel logiciel de messagerie tu veux recevoir et envoyer tes emails. Par exemple :

* [Mail](https://support.apple.com/fr-fr/mail) (OS X / iOS) : le client mail par défaut d'Apple
* [Thunderbird](https://www.thunderbird.net/fr/) (OS X / Windows / Linux) : le client libre de Mozilla qu'on ne présente plus
* [Mailspring](https://getmailspring.com) (OS X / Windows / Linux) : un client gratuit et open-source, avec une interface moderne
* [Microsoft Courier](https://www.microsoft.com/fr-fr/p/courrier-et-calendrier/9wzdncrfhvqm?activetab=pivot:overviewtab) : le client mail par défaut de Windows
* [Microsoft Outlook](https://www.microsoft.com/fr-fr/microsoft-365/outlook/email-and-calendar-software-microsoft-outlook) : client mail souvent déjà installé sur les ordinateurs professionnels
* [Gmail](https://play.google.com/store/apps/details?id=com.google.android.gm\&hl=fr) : l'application mail par défaut sur Android (Attention vos données sont exporté aux états unis, vous ne pourrez pas faire de manipulation de données personnelles avec cette méthode)
* [AquaMail](https://www.aqua-mail.com) (Android) : une application mail fluide qui respecte la vie privée
* [ou beaucoup d'autres](https://duckduckgo.com/?q=meilleurs+clients+mails)

### **2. Configurer la réception et l'envoi d'emails**

Il existe des tutoriels détaillés pour certains clients mails :

* Apple Mail : [OSX](https://docs.ovh.com/fr/emails/guide-configuration-mail-de-mac-el-capitan/) et [iOS](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-iphone-ios-91/)
* [Gmail](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-dun-e-mail-mutualise-ovh-sur-linterface-de-gmail/)
* [Thunderbird](https://docs.ovh.com/fr/emails/configuration-email-configuration-pour-thunderbird/)
* [Courier](https://docs.ovh.com/fr/emails/configuration-courrier-sur-windows-10/)
* [Outlook](https://docs.ovh.com/fr/emails/configuration-outlook-2016/)

Pour les autres logiciels, la configuration se fait de manière suivante :

* **Ajouter un nouveau compte**
* Sélectionner l'option **IMAP / SMTP**
* Paramétrer le compte **IMAP** (courrier entrant) :

| Paramètre              | Valeur                       |
| ---------------------- | ---------------------------- |
| Serveur                | ssl0.ovh.net                 |
| Port                   | 993                          |
| Méthode de chiffrement | SSL                          |
| Nom d'utilisateur      | ton adresse beta.gouv.fr     |
| Mot de passe           | le mot de passe de ton email |

* Paramétrer le compte **SMTP** (courrier sortant) :

| Paramètre              | Valeur                       |
| ---------------------- | ---------------------------- |
| Serveur                | ssl0.ovh.net                 |
| Port                   | 587                          |
| Méthode de chiffrement | TLS                          |
| Nom d'utilisateur      | ton adresse beta.gouv.fr     |
| Mot de passe           | le mot de passe de ton email |

Tous les dossiers mails (brouillons, envoyés, reçu, archivés, etc.) sont maintenant automatiquement synchronisés entre les différents clients.

{% hint style="info" %}
Tu peux consulter tes mails directement sur [RoundCube](https://mail.ovh.net/roundcube/). L'interface n'est pas géniale, mais ça peut être une bonne solution pour dépanner, ou quand tu n'a pas accès à ton client web habituel.
{% endhint %}

## Envoyer des mails en masse

{% hint style="danger" %}
N'envoie pas d'emails en masse depuis ta boîte mail beta.gouv.

**Utilise un service dédié comme SendInBlue ou Mailjet.**
{% endhint %}

L'envoi en masse peut lever des alertes chez nos fournisseurs d'infrastructure : en gros si tu abuses, tu risques de bloquer l'envoi de mails pour tous les copains !

Il existe des services adaptés pour les envois en masse : SendInBlue, Mailjet, etc. Tu peux demander conseil sur #incubateur-ops.

## Configurer sa signature de mail @beta.gouv.fr

Voici un exemple de signature :

> Jean LOUIS\
> Chargé de Développement Équipe Lambda - beta.gouv.fr\
> jean.louis@beta.gouv.fr – +33.(0)6.XX.XX.XX.XX

Ta signature ne doit pas mentionner la DINUM, pour éviter de porter à confusion. Indique uniquement ton appartenance à une équipe beta.gouv.fr

## Retrouver ou renouveler mon mot de passe

Si tu as perdu ton mot de passe, tu peux te connecter au [secretariat](https://secretariat.incubateur.net/account#password) avec ton adresse secondaire que tu as du renseigner à ton arrivée. Tu pourras y changer ton mot de passe pour ton adresse @beta.gouv.fr en te rendant dans [l'admin de ton compte](https://secretariat.incubateur.net/account#password).

Si tu n'as pas d'email secondaire, tu peux suivre la procédure : [demander l'ajout de mon email secondaire](emails.md#Demander-lajout-de-mon-email-secondaire).

## Demander l'ajout de mon email secondaire

Demander de l'aide sur #incubateur-secretariat sur Mattermost et y communiquer ton email secondaire en envoyant ce message type : `Bonjour, j'ai perdu les accès à mon adresse beta xxx@beta.gouv.fr. Mon adresse secondaire est xxx@yyy.vvv.`

## Dépannage : Je n'arrive plus à accéder à mes emails

Jusqu'ici, tu recevais tes mails beta.gouv sans (trop) de soucis. Tout d'un coup, plus rien. Cette section peut t'aider à trouver la solution.

### As-tu dépassé ta date de fin de mission ?

Les droits d'accès aux ressources beta.gouv (dont l'email fait partie) sont liés à la date de fin de mission sur ta fiche membre. Pour savoir si celle-ci est dépassée, tu peux consulter https://beta.gouv.fr/communaute/annuaire. Si ta fiche n'est plus dans les membres actif, c'est que ta date doit être expirée. Voici les instructions :&#x20;

1. [Mettre à jour ](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/outils/mise-a-jour-de-mes-informations)ta date de fin de mission (il faut ensuite attendre qu'un autre membre valide le changement sur github)
2. [Renouveler le mot de passe](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/emails#retrouver-mon-mot-de-passe) de ta boite mail via le secrétariat
3. Accéder à ta boite mail avec le nouveau mot de passe&#x20;

#### J'ai besoin d'aide

N'hésite pas à demander un coup de main aux personnes de ton équipe, ou d'un ou d'une collègue. Tu peux aussi solliciter l'aide de la communauté sur le chan `incubateur-help`si tu accèdes encore à Mattermost.
