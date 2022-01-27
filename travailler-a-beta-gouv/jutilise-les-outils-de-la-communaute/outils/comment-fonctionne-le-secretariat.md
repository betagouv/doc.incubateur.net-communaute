---
description: >-
  Le secrétariat est un ensemble de processus automatisés qui gère les membres de
  la communauté Betagouv. Ils comprennent :
---

# Comment fonctionne le secrétariat

Le secrétariat est un ensemble de processus automatisés qui gère les membres de la communauté Betagouv. Ils comprennent :
* Le repo github du site beta.gouv.fr
* L'app secretariat.incubateur.net
* Les cron de mise à jour des droits sur github, mattermost, boite mail
* Gestion de l'abonnement/desabonnement des mailing list
* API du site, API de l'infra
* Formulaires de demandes d'accès aux outils ops
* Netlify pour le CMS du site ([https://beta.gouv.fr/admin ](https://beta.gouv.fr/admin) ?)

## Quels sont les processus automatisés

### Onboarding
Lorsque tu remplis le formulaire d'arrivée
- On ouvre une PR qui ajoute une fiche membre dans le code de beta.gouv.fr sur github avec un sous-ensemble des informations.
- On créé une entrée dans la base de donnée secretariat

Une fois la PR sur Github validée
- On affiche les informations de cette PR sur https://beta.gouv.fr/communaute/annuaire
- On créé une adresse mail @beta.gouv.fr pour cet utilisateur sauf si son adresse principale est une adresse de l'administration.
- On te créé des accès dans secretariat.incubateur.net
- On créé un compte Mattermost avec cette adresse
- On lance un processus pour te trouver une marraine ou un parrain
- On met à jour l'API betagouv (https://beta.gouv.fr/api/v2.3/authors.json) utilisée pour réaliser des statistiques sur la communauté
- Tu es ajouté à la mailing list incubateur@beta.gouv.fr
- On te rajoute sur l'organisation betagouv de github (si tu as renseigné cette information)

### Au fur et à mesure de ta mission
Via le secretariat, tu pourras :
- Changer ton mot de passe mail
- Changer ton adresse secondaire
- Configurer une réponse automatique sur ton mail en cas d'absence
- Changer tes dates de mission ou les informations concernant ta mission en cours (Attention : Il faudra qu'un membre de ton équipe valide la PR sur github)

Plus généralement, tu trouveras dans le secretariat :
- L'historique des infolettres de la communauté
- Retrouver la fiche d'un membre

### A ton départ de betagouv
La date de fin de ta mission est déterminée sur ta fiche de membre github. Elle doit toujours correspondre à la fin de ton engagement contractuel avec betagouv.
J-15 : un message Mattermost et un email sur ton adresse principale sont envoyés pour annoncer l'approche de la fin de ta mission
J-2 : un message Mattermost et un email sur ton adresse principale sont envoyés pour annoncer l'approche de la fin de ta mission
J : Date de fin de mission
J+1 : tes accès à ta boite mail et à github/betagouv sont desactivés
J+30 : Ton compte email @betagouv est supprimé

# Fonctionnalités du secretariat 

## Changer son email principal

Auparavant l'email @beta.gouv.fr était obligatoire pour pouvoir avoir une fiche membre beta.gouv.fr et accès aux différents outils de la communauté.
Ce n'est plus le cas pour les personnes qui possèdent déjà un email d'agent public (@pole-emploi.fr, @modernisation.gouv.fr, ...).

Si tu n'utilises pas ton email @beta.gouv.fr tu peux sur https://secretariat.incubateur.net changer ton adresse principale pour cet email d'agent public.

Attention l'email @beta.gouv.fr sera alors supprimé, donc si tu l'utilises sur certains services il faudra penser à mettre à jour l'email utilisé avant de faire le changement.

C'est le cas notamment pour Mattermost pour lequel la mise à jour de l'email est obligatoire avant de pouvoir effectuer le changement [maj email mattermost](#mettre-a-jour-l-email-dans-mattermost).

Tu peux retrouver cette fonctionnalité en te rendant dans [Secretariat > Mon Compte > Configurer mon email principal](https://secretariat.incubateur.net/account#change-primary-email)

### Mettre à jour l'email dans mattermost

Pour changer l'adresse sur mattermost il faut aller en haut a droite sur sa photo de profil, puis dans profil, et changer l'email par l'email que tu souhaites utiliser en email principal. Il faut ensuite valider cette nouvelle adresse avec l'email de validation qui lui sera envoyé. 

## Ajouter/Changer mon email secondaire

L'email secondaire permet de se connecter au secretariat en cas d'oublie ou changement du mot de passe de votre adresse @beta.gouv.fr. 

Il est utile notamment dans ce cas afin d'accéder au secretariat pour y redéfinir un nouveau mot de passe ainsi que pour diverse communication au moment de la fin de mission.

Tu peux retrouver cette fonctionnalité en te rendant dans [Secretariat > Mon Compte > Configurer mon email secondaire](https://secretariat.incubateur.net/account#change-secondary-email)
