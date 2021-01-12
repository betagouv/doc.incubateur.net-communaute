---
description: Comment ça marche les emails à beta.gouv ?
---

# 📧 Emails

## Créer un compte email à un nouveau membre

_⚠️ Pour créer une adresse email, vous avez besoin d'avoir_ [_une fiche sur beta.gouv.fr_ ](github/#se-creer-un-compte-github-ou-demander-a-ton-ta-marrain-e-de-faire-ta-fiche-pour-toi)_. Si ce n'est pas le cas, vous ne pourrez pas créer l'adresse email._

Le compte email sera automatiquement créé une fois que la fiche sera mergée.

## J'ai un email beta. Comment me connecter ?

### Prérequis

Avant de commencer les procédure ci-dessous, assurez vous d'avoir :

* une adresse `prenom.nom@beta.gouv.fr`
* un mot de passe

Vous n'avez pas encore d'adresse email `@beta.gouv.fr` ? Voir plus haut.

### Comment fonctionnent les adresses mail @beta.gouv.fr ?

Nous utilisons OVH pour le service de courrier électronique.

### Comment consulter tes emails ?

#### Via le client web

Tu peux consulter tes mails directement sur [RoundCube](https://mail.ovh.net/roundcube/). L'interface n'est pas géniale, mais ça peut être une bonne solution pour dépanner, ou quand tu n'a pas accès à ton client web habituel.

#### Via un client mail

La solution la plus adaptée reste de configurer un client mail sur ta machine personnelle. C'est très rapide, et très simple d'utilisation. Voici comment procéder :

**1. Choisir un client mail \(messagerie\)**

* [Mail](https://support.apple.com/fr-fr/mail) \(OS X / iOS\) : Le client mail par défaut d'Apple
* [Thunderbird](https://www.thunderbird.net/fr/) \(OS X / Windows / Linux\) : Le client libre de Mozilla qu'on ne présente plus
* [Mailspring](https://getmailspring.com/) \(OS X / Windows / Linux\) : Un client gratuit et open-source, avec une interface moderne
* [Microsoft Courier](https://www.microsoft.com/fr-fr/p/courrier-et-calendrier/9wzdncrfhvqm?activetab=pivot:overviewtab) : Le client mail par défaut de Windows
* [Gmail](https://play.google.com/store/apps/details?id=com.google.android.gm&hl=fr) : L'application mail par défaut sur Android
* [AquaMail](https://www.aqua-mail.com/) \(Android\) : Une application mail fluide qui respecte la vie privée
* [Beaucoup d'autres](https://duckduckgo.com/?q=meilleurs+clients+mails)

**2. Configurer la redirection et l'envoi automatique des e-mails beta via sa messagerie préférée**

Page d'explication dédiée :

* Apple Mail \([OSX](https://docs.ovh.com/fr/emails/guide-configuration-mail-de-mac-el-capitan/) / [iOS](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-iphone-ios-91/)\)
* [Gmail](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-dun-e-mail-mutualise-ovh-sur-linterface-de-gmail/)
* [Thunderbird](https://docs.ovh.com/fr/emails/configuration-email-configuration-pour-thunderbird/)
* [Courier](https://docs.ovh.com/fr/emails/configuration-courrier-sur-windows-10/)

La configuration fonctionne à peu près de la même manière pour tous les clients mails \(sauf Gmail pour lequel il faut suivre plutôt les instructions sur OVH \([lien](https://docs.ovh.com/fr/emails/mail-mutualise-guide-configuration-dun-e-mail-mutualise-ovh-sur-linterface-de-gmail/)\). 

1. Il faut d'abord **Ajouter un nouveau compte**
2. Sélectionner l'option IMAP / SMTP
3. Paramétrer le compte **IMAP** \(courrier entrant\) avec les informations suivantes :

> Serveur: ssl0.ovh.net
>
> Port: 993
>
> Méthode de chiffrement: SSL \(\*pas\* TLS°\)
>
> Nom d'utilisateur: &lt;adresse beta.gouv.fr&gt;
>
> Mot de passe: &lt;mot de passe beta.gouv.fr&gt;

   4. Paramétrer le compte **SMTP** \(courrier sortant\) avec les informations suivantes : 

> Serveur: ssl0.ovh.net
>
> Port: 587
>
> Méthode de chiffrement: TLS
>
> Nom d'utilisateur: &lt;adresse beta.gouv.fr&gt;
>
> Mot de passe: &lt;mot de passe beta.gouv.fr&gt;

**3. Consulter ses mails**

Tous les dossiers mails \(brouillons, envoyés, reçu, archivés, etc.\) sont maintenant automatiquement synchronisés entre les différents clients.

### Comment envoyer des mails en masse ?

**Evite d'utiliser ta boîte mail pour des envois en masse**, utilise plutôt un service dédié. L'envoi en masse depuis un compte individuel est susceptible de lever des alertes chez nos fournisseurs d'infrastructure : en gros si tu abuses, tu risques de bloquer l'envoi de mails pour tous les copains ! Plusieurs services sont utilisés \(SendInBlue, Mailjet, etc.\) - demande sur \#incubateur-ops par exemple si tu ne sais pas par où commencer.

### Comment configurer la signature de ton mail @beta.gouv.fr ?

Comme ci-dessous ! \(Suggestion de présentation; photo non contractuelle.\)

> Jean LOUIS  
> Chargé de Développement  
> Équipe Lambda - beta.gouv.fr  
> jean.louis@beta.gouv.fr – +33.\(0\)6.XX.XX.XX.XX

Nous distribuons des adresses à tout membre de la communauté, il ne faut toutefois pas faire figurer dans ta signature un rattachement professionnel à la DINUM pouvant porter à confusion. Pour cela, il ​te suffit de ne pas mentionner "Incubateur de Services Numériques – DINUM​ ​20, Avenue de Ségur, 75007 Paris"​ mais uniquement ton appartenance à une équipe de beta.gouv.fr​

### Que faire si t'as perdu ton mot de passe ?

Il faut passer par OVH. Demandes à quelqu'un qui y a accès de t'aider sur \#incubateur-secretariat sur Slack

