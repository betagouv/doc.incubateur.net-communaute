# Envoyer et recevoir mes emails beta.gouv.fr

{% hint style="info" %}
Si tu es arrivé(e) avant le 24/10/2023 regarde plutôt [cette configuration](envoyer-et-recevoir-des-emails-beta.gouv.fr-avec-loffre-ovh-mx-plan.md)&#x20;
{% endhint %}

### 0. Prérequis

Munis-toi de :

* ton adresse `prenom.nom@beta.gouv.fr`
* le mot de passe (il peut être défini vie l'espace-membre)

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

Le serveur email à mettre est pro1.mail.ovh.net.

Il existe des tutoriels détaillés pour certains clients mails :

* Apple Mail : [OSX](https://help.ovhcloud.com/csm/fr-email-pro-macos-mailapp-configuration?id=kb\_article\_view\&sysparm\_article=KB0052267) et [iOS](https://help.ovhcloud.com/csm/fr-email-pro-iphone-configuration?id=kb\_article\_view\&sysparm\_article=KB0040235)
* [Gmail](https://help.ovhcloud.com/csm/fr-email-pro-gmail-configuration?id=kb\_article\_view\&sysparm\_article=KB0052250)
* [Thunderbird](https://help.ovhcloud.com/csm/fr-email-pro-thunderbird-windows-configuration?id=kb\_article\_view\&sysparm\_article=KB0052285)
* [Courier](https://help.ovhcloud.com/csm/fr-email-pro-windows-10-mailapp-configuration?id=kb\_article\_view\&sysparm\_article=KB0052304)
* [Outlook](https://help.ovhcloud.com/csm/fr-email-pro-outlook-windows-configuration?id=kb\_article\_view\&sysparm\_article=KB0052268)

Pour les autres logiciels, la configuration se fait de manière suivante :

* **Ajouter un nouveau compte**
* Sélectionner l'option **IMAP / SMTP**
* Paramétrer le compte **IMAP** (courrier entrant) :

{% hint style="info" %}
Attention si tu es arrivé avant le 24/10/2023 ton email est sur l'offre OVH MXPlan et le serveur à indiqué est : ssl0.ovh.net pour l'IMAP et le SMTP.
{% endhint %}

| Paramètre              | Valeur                       |
| ---------------------- | ---------------------------- |
| Serveur                | pro1.mail.ovh.net            |
| Port                   | 993                          |
| Méthode de chiffrement | SSL                          |
| Nom d'utilisateur      | ton adresse beta.gouv.fr     |
| Mot de passe           | le mot de passe de ton email |

* Paramétrer le compte **SMTP** (courrier sortant) :

| Paramètre              | Valeur                       |
| ---------------------- | ---------------------------- |
| Serveur                | pro1.mail.ovh.net            |
| Port                   | 587                          |
| Méthode de chiffrement | TLS                          |
| Nom d'utilisateur      | ton adresse beta.gouv.fr     |
| Mot de passe           | le mot de passe de ton email |

Tous les dossiers mails (brouillons, envoyés, reçu, archivés, etc.) sont maintenant automatiquement synchronisés entre les différents clients.

{% hint style="info" %}
Tu peux consulter tes mails directement sur le [webmail ovh](https://pro1.mail.ovh.net/). L'interface n'est pas géniale, mais ça peut être une bonne solution pour dépanner, ou quand tu n'a pas accès à ton client web habituel.
{% endhint %}
