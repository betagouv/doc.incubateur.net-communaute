# Liste de diffusion interne à la communauté

Les mailing-lists suivantes sont disponibles. Toutes les adresses sont à _postfixer_ de `@beta.gouv.fr`.

| Adresse       | Objet                                                                                                           | Destinataires                                               | Expéditeurs attendus                                             |
| ------------- | --------------------------------------------------------------------------------------------------------------- | ----------------------------------------------------------- | ---------------------------------------------------------------- |
| `contact`     | Toute demande entrante. Stratégie.                                                                              | Membres volontaires.                                        | Prospects. Membres. Hiérarchie DINUM.                            |
| `compta`      | Achats, facturation, re-facturation…                                                                            | Membres volontaires.                                        | Prestataires. Interlocuteurs DINUM. Administrations partenaires. |
| `incubateur`  |                                                                                                                 | Tous les [membres actifs](https://beta.gouv.fr/communaute). | Membres. Secrétariat.                                            |
| `recrutement` | Candidatures.                                                                                                   | Membres volontaires.                                        | Candidats. Secrétariat.                                          |
| `dinum`       | Rares éléments administratifs nécessitant un lien contractuel (fiches de paie, gestion des ordres de mission…). | Membres agents de la DINUM.                                 | Secrétariat. Hiérarchie DINUM.                                   |
| `alumni`      | Nouvelles de l'incubateur, possibilités de retrouvailles.                                                       | Ex membres n'ayant plus de relation contractuelle.          | Membres.                                                         |
| `coachs`      | Discussions, tips, infos sur le coaching de Startups d'Etat                                                     | Membres volontaires.                                        | Les membres de la NL.                                            |
| `onboarding`  | Embarquement des nouvelles et des nouveaux                                                                      | Membres volontaires.                                        | Marrains. Parraines.                                             |
| `newsletter`  | Membres externes à beta.gouv souhaitant recevoir l'infolettre hebdomadaire interne                              | Membres externes volontaires                                | Équipe d'animation                                               |
| `partenaires` | Informations à destination des structures partenaires (incubateurs, fabriques, etc)                             | Responsables d'incubateurs, membres volontaires             | Membres                                                          |

## La commande Mattermost `/emails`

### Comment créer une nouvelle liste de diffusion pour la communauté

Pour créer une nouvelle adresse de contact, il faut en exprimer la demande [via le formulaire de demande d'ops](https://airtable.com/shrJydj6dtrdSGmfq). Le mot de passe d'accès à l'interface est consultable depuis l'en-tête de la chaîne  🔒[`#incubateur-ops`](https://mattermost.incubateur.net/betagouv/channels/incubateur-ops).&#x20;

{% hint style="warning" %}
Attention de bien saisir votre identifiant Mattermost (ex : @jean.dupont) sous peine de voir votre demande ignorée.
{% endhint %}

![](<../../../.gitbook/assets/Capture d’écran 2022-06-15 à 19.50.40.png>)

En cas de succès, votre demande est remontée dans le canal [#incubateur-demandes-ops](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops).

### Détails de la commande

{% hint style="info" %}
Attention : ces commandes fonctionnent uniquement dans le canal 🔒[`#incubateur-secretaria`](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretaria)sur Mattermost.
{% endhint %}

* `/emails list` : affiche les listes de diffusions existantes
* `/emails list <nom_de_la_liste>` : affiche les personnes dans la liste nom\_de\_la\_liste
* `/emails join <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : ajouter prenom.nom@beta.gouv.fr à la liste nom\_de\_la\_liste
* `/emails leave <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : retirer prenom.nom@beta.gouv.fr de la liste nom\_de\_la\_liste

Exemples :

* `/emails join cartobio jean.louis@beta.gouv.fr` : ajouter jean.louis@beta.gouv.fr à la liste cartobio@beta.gouv.fr

Pour un cas particulier de liste rattachée à un sous domaine beta comme _contact@covoiturage.beta.gouv.fr_ le nom de la liste est à mettre avec le _@soudomaine.beta.gouv.fr_ :

* `/emails join contact@covoiturage.beta.gouv.fr jean.louis@beta.gouv.fr` : ajouter jean.louis@beta.gouv.fr à la liste contact@covoiturage.beta.gouv.fr

_Commande implémentée par_ [_`slack-ovh`_](https://github.com/betagouv/slack-ovh) _et hébergée sur le Heroku de l'Incubateur._

**Fonctionnements contre-intuitif** :

* La commande `/emails` échoue souvent la première fois qu'elle est lancée : il faut le temps que la dyno Heroku se réveille.
* La commande `/emails leave` affiche un message d'erreur même quand la désinscription a bien eu lieu. Ce problème vient du retour que fait ovh.

## Comment créer une nouvelle liste de diffusion pour sa startup

Chaque startup dispose de sa propre adresse de contact, généralement sous la forme `contact@<identifiant_startup>.beta.gouv.fr`. Chaque adresse peut être trouvée sur la [fiche de la Startup](https://beta.gouv.fr/startups).

Pour créer une nouvelle adresse de contact, utilisez un hébergeur de mailing-list (comme AlwaysData si vous l'utilisez pour les DNS sinon un outil de gestion d'emails devrait le faire).

## Explication des différentes solutions techniques de gestion d'email

> Contexte : la réception des emails de @beta.gouv.fr est gérée par OVH (incluant les listes des diffusions). Les emails des équipes peuvent être gérés par OVH mais pas forcément. Le tableau suivant indique les différentes solutions techniques avec leurs avantages et inconvénients.

|                                       | Mailinglist sur OVH                                                                                                | Redirections sur OVH                                                                                                                                                                                                                 | Gestion d'email par la startup                                                                                                                       |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | ---------------------------------------------------------------------------------------------------------------------------------------------------- |
| Domaines possibles                    | `*@beta.gouv.fr` uniquement, impossible pour les sous domaines                                                     | _`@beta.gouv.fr` ou_ `@startup.beta.gouv.fr` si la startup n'a pas pris en main ces DNS                                                                                                                                              | `*@startup.beta.gouv.fr` si l'équipe à pris en en main ces DNS                                                                                       |
| Avantages                             | Quelqu'un qui vous écrit dessus ne recevra pas d'erreur bizarre                                                    | Ça marche avec les sous domaines. On peut faire du chaînage                                                                                                                                                                          | Vous êtes autonome, les limitations sont celles des outils ou fournisseurs que vous utilisez                                                         |
| Inconvénients                         | Vous ne pouvez pas faire une redirection vers une Mailinglist                                                      | Les gens qui écrivent reçoivent les erreurs (si une adresse destinatrice est invalide) ou si une des personnes derrière est en vacance. Erreurs si quelqu'un vous écrit. S'il y a une délégation de DNS, vous ne pouvez pas le faire | Les limitations sont celles des outils ou fournisseurs que vous utilisez                                                                             |
| Gestion par `/emails` dans Mattermost | Automatique                                                                                                        | Si c'est configuré dans le bot [slack-ovh](https://github.com/betagouv/slack-ovh)                                                                                                                                                    | Non                                                                                                                                                  |
| Création                              | Par un admin. Demandez sur [`#incubateur-ops`](https://mattermost.incubateur.net/betagouv/channels/incubateur-ops) | Par une PR sur le bot [slack-ovh](https://github.com/betagouv/slack-ovh)                                                                                                                                                             | Par vous après la délégation DNS                                                                                                                     |
| Plus d'infos                          | [Doc MailingList OVH](https://docs.ovh.com/fr/emails/guide-dutilisation-mailing-list/)                             | [Doc redirection OVH](https://docs.ovh.com/fr/emails/guide-des-redirections-emails/)                                                                                                                                                 | L'article [Infra](../../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra.md) qui par la délégation DNS |
