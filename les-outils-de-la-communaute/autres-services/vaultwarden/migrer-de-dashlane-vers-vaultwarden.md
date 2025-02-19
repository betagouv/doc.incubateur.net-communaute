# Migrer de DashLane vers VaultWarden

> L’équipe animation [beta.gouv.fr](http://beta.gouv.fr) a décidé de ne PAS renouveller le contrat avec DashLane et de le remplacer par notre instance mutualisée [https://vaultwarden.incubateur.net](https://vaultwarden.incubateur.net) déjà opérationnelle.

{% hint style="info" %}
**Pour se familiariser avec l'outil VaultWarden, lire** [**la page de présentation VaultWarden**](./)**.**
{% endhint %}

{% hint style="danger" %}
Si vous extrayez un mot de passe, le sauvegardez sur disque ou le transmettez via un canal non sécurisé (ex: mattermost), considérez ce mot de passe comme corrompu à jamais et renouvelez-le.
{% endhint %}

### Rappel : les mots de passes sur Dashlane

Sur dashlane, vous avez deux types d'espaces : l'espace personnel et l'espace beta.gouv, chacun stocke des élements (couple identifiant/mot de passe) différents :

* beta.gouv : tous les éléments pour lesquels vous avez utilisé votre adresse beta.gouv comme id, tous les élements où l'adresse du site contient beta.gouv, incubateur.net, tous les éléments que votre équipe vous a partagé
* personnel : tous les autres élements

### Comment migrer une équipe <a href="#comment-migrer-une-equipe" id="comment-migrer-une-equipe"></a>

Nous recommandons qu’une seule personne de l’équipe se charge de recréer les mots de passes partagés sur VaultWarden.

1. Créer un compte avec votre email [beta.gouv.fr](http://beta.gouv.fr) sur [vaultwarden.incubateur.net](https://vaultwarden.incubateur.net).
2. Activez l'authentification à double facteurs via "Paramètres du compte" / "Sécurité"
3. Dans VaultWarden, créer une “organisation” dédiée à votre équipe, ajoutez vos collègues à cette organisation et pensez à ajouter votre responsable de portefeuille ou un membre de beta.gouv pour assurer la pérennité du coffre. Choisissez les permissions appropriées à chaque profil.
4. Créer des collections d’éléments (couple id/mdp) et des groupes de membres en fonction de vos équipes (exemple : tech, support). Associer une collection aux groupes en ayant besoin. L’objectif est toujours de restreindre au maximum le partage d’élément.
5. Copier/coller ensuite à la main, directement depuis DashLane, les mots de passe à conserver et insérez-les dans votre organisation VaultWarden.
6. Invitez les membres de votre équipe dans l'organisation en utilisant leur adresse beta.gouv.fr.

{% hint style="warning" %}
Il n’est pas possible d’exporter en masse depuis DashLane. C’est l’occasion de faire le ménage et de renouveler certains mots de passe. C’est aussi l’occasion de vérifier à qui et pourquoi vous partagez un élément !
{% endhint %}

{% hint style="warning" %}
Les mots de passes stockés dans VaultWarden ne sont PAS accessibles par l’équipe beta. **Pensez à bien sauvegarder en lieu sûr votre mot de passe principal et à partager vos mots de passe avec votre équipe**.
{% endhint %}

### Comment migrer ses mots de passe persos <a href="#comment-migrer-ses-mots-de-passe-persos" id="comment-migrer-ses-mots-de-passe-persos"></a>

De la même façon, copiez/collez les mots de passe que vous devez conserver dans votre propre coffre VaultWarden.
