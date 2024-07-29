# Envoyer et recevoir des emails @beta.gouv.fr avec l'offre OVH MX Plan

{% hint style="info" %}
La configuration MXPlan est différente de la configuration OVH Pro. Si tu es arrivé après le 24/10/2023, ton compte est sur l'offre OVH Pro, tu peux te rendre à  la page suivant pour avoir la configuration :  [.](./ "mention")
{% endhint %}

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
