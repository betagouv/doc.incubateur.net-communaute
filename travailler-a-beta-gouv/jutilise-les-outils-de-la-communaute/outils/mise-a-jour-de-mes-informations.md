# Mettre à jour mes informations

## Comment mettre à jour mes dates de mission

{% hint style="warning" %}
Il est important de mettre ses dates de mission à jour pour conserver l'accès aux services et permettre un suivi des membres de la communauté. N'hésite pas à demander à des personnes de ton équipe de t'aider si tu n'y arrives pas.
{% endhint %}

Toutes ces méthodes se déroulent en 3 étapes :

1. Vous indiquez, avec l'une des méthodes ci-dessous votre nouvelle date de fin de mission. Ceci créera une PR (demande de modification) sur le [code du site de betagouv sur Github](https://github.com/betagouv/beta.gouv.fr/).
2. Un des membres de votre équipe (idéalement l'intra) valide la PR avec vos nouvelles dates. Pour faciliter cela, tu peut leur envoyer le lien vers la PR.
3. Le site, ainsi que nos systèmes, sont mis à jour automatiquement.

Voici différentes méthodes permettant de modifier ses dates de missions.

### Secrétariat

Si ta date de fin de mission n'est pas déjà expirée de plus de 5 jours, tu peux la modifier sur le site [`espace membre`](https://espace-membre.incubateur.net/account#update-end-date).

### L'admin du CMS

Ce tutoriel permet de modifier les informations administratives d'un membre de la communauté par un outil d'administration.

RDV sur :

{% embed url="https://beta.gouv.fr/admin" %}

{% embed url="https://www.loom.com/share/e04fb7465fc34844bbc80759e63054e0" %}

Tu as besoin de créer un compte github ? Retrouve les [explications ici.](../github/)

### Github

Tu peux enfin modifier directement ta fiche personnelle sur [github](https://github.com/betagouv/beta.gouv.fr/tree/master/content/\_authors) : voir la section [« Prolonger la durée d'activation d'un membre…»](./) de cette documentation.

Tu as besoin de créer un compte github ? Retrouve les [explications ici.](../github/)

## J'ai fait une erreur en modifiant / oublié de mettre à jour ma date de fin de mission !

Il se peut que tu perdes temporairement accès à certains services (notamment ton accès au site de l'espace membre et au dépot github) si la date de fin enregistrée est dépassée, mais pas de panique : avec l'aide d'un⋅e collègue, tu pourras récupérer ces accès.

Demande à cette personne d'effectuer la modification de ta fiche sur github à l'aide d'une des méthodes décrites ci-dessus : directement sur le [dépôt](https://github.com/betagouv/beta.gouv.fr/tree/master/content/\_authors), ou via le site d'[administration](https://beta.gouv.fr/admin) de beta.gouv.fr. Dans les deux cas la modification de la date créera un `commit` sur une nouvelle branche pour laquelle il faudra demander intégration dans la branche `master` par une « pull request» (voir fin du tutoriel vidéo .)

Une fois la modification effectuée, tu pourras réactiver ton adresse @beta.gouv.fr depuis l'[espace membre](https://espace-membre.incubateur.net/account#password) en faisant un changement de mot de passe. Tu devrais recevoir un mail dans les 30 minutes avec tes nouveaux accès.

Si la procédure décrite ne fonctionne pas, demande de l'aide sur le canal mattermost [\~incubateur-help](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretaria).
