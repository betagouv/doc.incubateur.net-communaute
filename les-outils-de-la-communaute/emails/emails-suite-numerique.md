---
description: Configuration des emails de la suite numérique
---

# Emails suite numérique

{% hint style="info" %}
Cette offre est en cours de déploiement pour la communauté beta.gouv.fr. \
\
Votre espace-membre vous indique l'offre actuellement associée à votre compte email.\
\
Pour les comptes encore OVH, référez-vous à la [`page de l'offre OVH`](./).
{% endhint %}

Si vous rencontrez un problème, rendez-vous sur [le salon Tchap “Support messagerie mail Open-Xchange”](https://tchap.gouv.fr/#/room/#support-messagerie:agent.dinum.tchap.gouv.fr) .

> ⚠️ Attention : seuls le webmail et les clients lourds “Apple mail” et “Thunderbird” bénéficieront d’un support. L’utilisation de client comme gmail ou outlook en ligne est interdite pour des problèmes de souveraineté.

Votre boîte mail est consultable sur [webmail.beta.gouv.fr](https://webmail.beta.gouv.fr), ou en utilisant un client mail de votre choix, ce qui permet par exemple de consulter votre mail depuis votre téléphone.

Page officielle du support : [https://webmail.beta.gouv.fr/assistance/](https://webmail.beta.gouv.fr/assistance/)

## Etape 1 : Obtenir votre adresse mail sur suite numérique

Faire une demande de création de votre compte sur [https://grist.numerique.gouv.fr/o/docs/forms/dwMDpvasbg2cUrF5UwoZCZ/4](https://grist.numerique.gouv.fr/o/docs/forms/dwMDpvasbg2cUrF5UwoZCZ/4)

## Etape 2 : **Utiliser le webmail**&#x20;

Connectez vous via  [webmail.beta.gouv.fr](https://webmail.beta.gouv.fr) avec vos nouveaux identifiants.

## **Etape 2: ou un client lourd sur ordinateur**

{% hint style="info" %}
Un client lourd est un logiciel de mail directement installé sur votre machine et qui y stocke les mails. A la différence d’un outil comme gmail ou outlook en ligne, il ne stocke rien dans le cloud.\
\
:warning: Attention ! Les clients lourds peuvent présenter des problèmes de synchronisation avec l’agenda webmail. Un certain nombre de problèmes ont été répertoriés. Leur usage, sans être déconseillé, ne peut faire partie de la doctrine d’usage DINUM.
{% endhint %}

Si vous souhaitez utiliser les clients Apple Mail ou Thunderbird, vous pouvez suivre les instructions de configuration décrites ci-dessous.

#### **2.1 Utiliser** [**Thunderbird**](https://www.thunderbird.net/fr/)

Installer Thunderbird sur votre machine.

Ajoutez le nouveau compte email dans “Fichier”/“Paramètres de comptes” :

|                          | ISN                                            |
| ------------------------ | ---------------------------------------------- |
| **Serveur entrant**      |                                                |
| Protocole :              | IMAP                                           |
| Nom d’hôte               | [imap.beta.gouv.fr](http://imap.beta.gouv.fr/) |
| Port                     | 143 ou 993                                     |
| Sécurité de la connexion | SSL/TLS                                        |
| **Serveur sortant**      |                                                |
| Nom d’hôte               | [smtp.beta.gouv.fr](http://smtp.beta.gouv.fr/) |
| Port                     | 25 ou 587                                      |
| Sécurité de la connexion | STARTTLS                                       |

(certains fournisseurs (ex: Orange) bloquent le port 25, utiliser le port 587 le cas échéant)

**Ajouter le calendrier**

Dans l’onglet Agenda, faire “nouvel agenda” / “réseau” puis indiquez votre nom d’utilisateur (adresse email en l’espèce) et le lien de découverte des agendas: https://webmail.numerique.gouv.fr/dav/caldav\n\nIndiquez votre mot de passe, puis sélectionnez les calendriers que vous souhaitez synchroniser.

**Ajouter les contacts**

Dans l’onglet Contacts, ajoutez un carnet d’adresse CardDAV et indiquez les paramètres tels que sur la copie d’écran ci-dessous.Une fois l’identification effectuée, sélectionnez les carnets d’adresse que vous souhaitez synchroniser.

<figure><img src="../../.gitbook/assets/image (38).png" alt=""><figcaption></figcaption></figure>

#### **2.2 Utiliser Apple Mail**

Apple Mail est déjà installé sur Mac.

**Emails sur Mac**

* Ouvrez l’application Mail sur Mac
* Dans la barre de menu, sélectionnez “Mail” puis “Ajouter un compte…”
* Choisissez l’option “Autre compte Mail…”

<figure><img src="https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/padnumerique/uploads/929950a8-e885-4952-8e4b-56194b8fa900.png" alt=""><figcaption></figcaption></figure>

* Complétez avec votre adresse mail et mot de passe fournis
* Une erreur s’affiche. Complétez le nom d’utilisateur, le serveur de réception et le serveur d’envoi comme ci-dessous :

|                      | ISN                                            |
| -------------------- | ---------------------------------------------- |
| Nom d’utilisateur    | ton adresse mail                               |
| Serveur de réception | [imap.beta.gouv.fr](http://imap.beta.gouv.fr/) |
| Port                 | 143 ou 993                                     |
| Serveur d’envoi      | [smtp.beta.gouv.fr](http://smtp.beta.gouv.fr/) |
| Port                 | 25 ou 587                                      |

* \\
* Votre application de mail va peut-être afficher une alerte indiquant que le serveur n’est pas certifié. Cliquez sur continuer/ignorer.
* Validez
* Sélectionnez Mail (et Notes si vous souhaitez) et cliquez sur “Terminer”

(certains fournisseurs (ex: Orange) bloquent le port 25, utiliser le port 587 le cas échéant)

## Etape 3 : Connecter à votre téléphone

#### 3.1 Android

Pour les emails, ajoutez simplement un nouveau compte IMAP avec les paramètres ci-dessus

**Calendrier sur Android**

Pour synchroniser avec le calendrier de votre téléphone Android, vous pouvez installer [Dav5x](https://www.davx5.com/) qui va permettre de synchroniser directement votre compte calendrier OpenXchange avec votre agenda Android. Cette application est [dispo gratuitement sur le store f-droid](https://f-droid.org/fr/packages/at.bitfire.davdroid/) ou [payant sur le Play Store](https://play.google.com/store/apps/details?id=at.bitfire.davdroid\&hl=fr). Une fois installée, il faut ajouter un calendrier avec les configurations suivantes :

|              | ISN                     |
| ------------ | ----------------------- |
| URL          | webmail.beta.gouv.fr    |
| utilisateur  | prenom.nom@beta.gouv.fr |
| mot de passe | votre mot de passe      |

Vous pouvez configurer le délai de synchronisation dans les paramètres, par exemple "toutes les 15 minutes".

([Plus de doc sur Dav5x](https://docs.framasoft.org/fr/agenda/Synchronisation/Android.html))

#### 3.2 iPhone

**Emails sur iPhone**

* [ ] Ouvrir l'application "Réglages"
* [ ] Aller dans "Mail" puis "Comptes", "Ajouter un compte"
* [ ] Sélectionner "Autre" puis "Ajouter un compte Mail"
* [ ] Compléter avec les mêmes infos que précédemment. Indiquer votre Prénom Nom dans le nom du compte, c'est celui qui s'affichera quand vous enverrez des mails de votre téléphone.

**Calendrier sur iPhone**

* [ ] Ouvrez l'application “Réglages”, puis allez dans Calendrier
* [ ] Sélectionnez "Comptes", puis "Ajouter un compte", puis "Autre", puis "Ajouter un compte CalDAV"
* [ ] Remplissez avec les identifiants email, mot de passe, et sélectionnez le serveur : [webmail.beta.gouv.fr](http://webmail.beta.gouv.fr)
* [ ] Allez dans réglages => Général => Calendrier par défaut => sélectionner le calendrier [beta.gouv.fr](http://beta.gouv.fr)

## Etape 4 : Récupérer/Importer ses anciens mails

Cette option n’est possible qu’en passant par un client lourd.

#### 4.1 Récupérer les informations de son précédent compte email

Connecter vous sur votre espace membre. Aller dans "compte" => "configurer ton email beta".

Récupérer le nom du serveur et le port IMAP indiqués

#### 4.2 Importer ses anciens emails dans Thunderbird

Vous pouvez copier vos anciens mails vers votre nouveau compte numerique.gouv.fr en utilisant sur desktop un logiciel comme [Thunderbird](https://www.thunderbird.net/fr/).

**Si vous utilisiez un compte OVH**

Configurez les deux comptes IMAP ex : "OpenXchange [beta.gouv.fr](http://beta.gouv.fr)" (avec les paramètres ci-dessus) et "OVH beta.gouv" (avec les [paramètres OVH](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/emails/envoyer-et-recevoir-des-mails-beta.gouv.fr)) puis, sur les dossiers à importer de "OVH beta.gouv", choisissez "Copier les messages vers" et un dossier de "OpenXchange [beta.gouv.fr](http://beta.gouv.fr)" où les copier.

**Si vous utilisiez gmail**

Si vous avez utilisé gmail pour récupérer/envoyer vos emails [beta.gouv.fr](http://beta.gouv.fr), vous pouvez ajouter votre compte gmail à thunderbird pour transférer les emails importants dans votre nouveau compte email. Pour cela, ajouter le compte gmail en utilisant les paramètres gmail [indiqués ici](https://www.getmailspring.com/setup/access-gmail-com-via-imap-smtp).

Il vous suffit ensuite de copier ou déplacer les messages vers votre nouvelle boite :

![](https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/padnumerique/uploads/d6e54bac-018c-4b8d-b241-cd855bed8d30.png)

#### 4.4 Importer ses anciens mails dans Apple Mail

**Si vous utilisiez gmail**

Gmail utilise le protocole POP qui importe les mails sur Gmail et les supprime d'OVH. Vous devez donc importer votre historique à partir de Gmail et non d'OVH.

* [ ] Ouvrir l'application "Réglages"
* [ ] Aller dans "Mail" puis "Comptes", "Ajouter un compte",
* [ ] Choisissez l'option "Google"
* [ ] Complétez avec votre adresse mail et mot de passe google
* [ ] Dites que vous faites confiance à MACos
* [ ] Une nouvelle boite de reception apparait en dessous de [beta.gouv.fr](http://beta.gouv.fr)![](https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/padnumerique/uploads/ad3a8e12-823f-46cb-a1ff-42ec638630ce.png)
* [ ] Vous pouvez glisser déposer les emails d'une boite à l'autre
*   [ ] Vous pouvez aussi intégrer l'ensemble de vos mails gmail dans votre nouveau mail d'un seul coup en :

    * [ ] clic droit sur la boite aux lettre gmail => exporter la boite aux lettre
    * [ ] cliquez sur fichier => importez des boites aux lettres => fichier au format mbox => selectionnez le fichier que vous venez d'exporter (généralement un dossier INBOX dans vos documents) puis valider la création d'une nouvelle boite aux lettres.
    * [ ] Glissez/déposez la nouvelle boite "mbox" dnas votre boite de réception beta gouv&#x20;
    *

    <figure><img src="https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/padnumerique/uploads/5424e8a0-b72e-44f1-b46b-6b5f0070559e.png" alt=""><figcaption></figcaption></figure>

#### 4.5 Importer l'historique Calendrier dans Apple Calendrier

**Si vous utilisiez Gmail**

* [ ] L'ajout du calendrier Google a pu être effectué automatiquement suite à l'ajout du compte Gmail pour les mails sinon :
  * [ ] Ouvrez l'application Calendrier sur Mac
  * [ ] Dans la barre de menu, sélectionnez "Calendrier" puis "Ajouter un compte..."
  * [ ] Choisissez l'option "Autre compte CalDAV..."
  * [ ] Choisissez l'option "Google"
  * [ ] Complétez avec votre adresse mail et mot de passe google
  * [ ] Une fois l'ajout effectué, allez dans calendrier, cliquez sur l'agenda google dans la barre de gauche
  * [ ] Allez dans la barre en haut => fichier => exporter => exporter puis cliquez sur exporter
  * [ ] Cliquez sur votre calendrier beta.gouv
  * [ ] Allez dans la barre en haut => fichier => importer

#### 4.6 Importer l’agenda OpenXchange dans un client tiers

Depuis OpenXchange, au moment de partager l'agenda, envoyer une invitation à l’adresse email destinataire.

Dans le client, copier le lien “Afficher l’agenda” indiqué dans l’email, et l’ajouter en tant que nouveau calendrier.

## Etape 5 : Partage de calendriers entres collègues

Par défaut vous avez accès aux disponibilités de tous vos collègues via la “planification” dans le webmail.

Si votre collègue vous a partagé les détails de son calendrier, vous les verrez apparaître ici aussi.

<figure><img src="../../.gitbook/assets/image (39).png" alt=""><figcaption></figcaption></figure>

### Partager votre calendrier

Cliquez sur les options de votre agenda et choisissez Partage/Droits

<figure><img src="../../.gitbook/assets/image (40).png" alt=""><figcaption></figcaption></figure>

\
Puis invitez la personne en indiquant les droits nécessaires

<figure><img src="../../.gitbook/assets/image (41).png" alt=""><figcaption></figcaption></figure>

En acceptant la demande, le destinataire pourra accéder à votre calendrier dans son webmail.

## Option : Connecter à son outil de gestion de prise de RDV

### Calendso

{% hint style="warning" %}
Attention, à l’heure actuelle et pour des raisons de sécurité, il n’est pas recommandé d’utiliser Calendso ou un autre outil de gestion de prise de RDV. En effet, il peut être dangereux que les identifiants emails soient stockés dans calendso, qui est un outil peu mis à jour et suivi. En cas de compromision de calendso, tous les mots de passe emails sont compromis. Si vous souhaitez tout de même utiliser Calendso, voici la marche à suivre.
{% endhint %}

* Dans Calendso, cliquer sur “Applications” dans le menu de gauche, puis “Apps installées”
* Choisir l’option “Calendrier” puis dans le cadre “Eviter les conflits” cliquer sur “Ajouter”
* Choisir l'option "Ajouter CalDAV" puis compléter avec le lien public de votre calendrier (trouvable dans votre webmail de beta) puis vos identifiants email/mdp
* Une fois le calendrier connecté, le sélectionner dans “Ajouter au calendrier” pour faire apparaître les prises de RDV dans le calendrier beta
