# Liste de diffusion interne  à la communauté

Les mailing-lists suivantes sont disponibles. Toutes les adresses sont à postfixer de `@beta.gouv.fr`.

| Adresse | Objet | Destinataires | Expéditeurs attendus |
| :--- | :--- | :--- | :--- |
| `contact` | Toutes demandes entrantes. Stratégie. | Membres volontaires. | Prospects. Membres. Hiérarchie DINUM. |
| `compta` | Achats, facturation, refacturation… | Membres volontaires. | Prestataires. Interlocuteurs DINUM. Administrations partenaires. |
| `incubateur` |  | Tous les [membres actifs](https://beta.gouv.fr/communaute). | Membres. Secrétariat. |
| `recrutement` | Candidatures. | Membres volontaires. | Candidats. Secrétariat. |
| `dinsic` | Rares éléments administratifs nécessitant un lien contractuel \(fiches de paie, gestion des ordres de mission…\). | Membres agents de la DINUM. | Secrétariat. Hiérarchie DINUM. |
| `alumni` | Nouvelles de l'incubateur, possibilités de retrouvailles. | Ancien·ne·s membres n'ayant plus de relation contractuelle. | Membres. |
| `coachs` | Discussions, tips, infos sur le coaching de Startups d'Etat | Membres volontaires. | Les membres de la NL. |
| `onboarding` | Embarquement des nouvelles et des nouveaux | Membres volontaires. | Marrains. Parraines. |
| `partenaires` | Informations à destination des structures partenaires \(incubateurs, fabriques, etc\) | Responsables d'incubateurs, membres volontaires | Membres |

## La commande Mattermost `/emails`

**Attention : commande à utiliser dans le channel** [**🔒`#incubateur-secretaria`**](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretaria)

### Comment créer une nouvelle liste de diffusion pour la communauté

Pour créer une nouvelle adresse de contact, il faut demander un admin OVH sur [🔒`#incubateur-secretaria`](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretaria)\*\* de créer la mailinglist. Elle pourra être géré sur slack.

### Détails de la commande

* `/emails list` : affiche les listes de diffusions existantes
* `/emails list <nom_de_la_liste>` : affiche les personnes dans la liste nom\_de\_la\_liste
* `/emails join <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : ajouter prenom.nom@beta.gouv.fr à la liste nom\_de\_la\_liste
* `/emails leave <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : retirer prenom.nom@beta.gouv.fr de la liste nom\_de\_la\_liste

Exemples :

* /emails join contact@covoiturage.beta.gouv.fr jean.louis@beta.gouv.fr : ajouter jean.louis@beta.gouv.fr à la liste contact@covoiturage.beta.gouv.fr
* /emails join contact jean.louis@beta.gouv.fr : ajouter jean.louis@beta.gouv.fr à la liste contact@beta.gouv.fr

_Commande implémentée par_ [_`slack-ovh`_](https://github.com/sgmap/slack-ovh) _et hébergée sur le Heroku de l'Incubateur._

**Fonctionnements contre-intuitif** :

* La commande `/emails` échoue souvent la première fois qu'elle est lancée : il faut le temps que la dyno Heroku se réveille.
* La commande `/emails leave` affiche un message d'erreur même quand la désinscription a bien eu lieu. Ce problème vient du retour que fait ovh.

## Comment créer une nouvelle liste de diffusion pour sa startup

Chaque Startup dispose de sa propre adresse de contact, généralement sous la forme `contact@<identifiant_startup>.beta.gouv.fr`. Chaque adresse peut être trouvée sur la [fiche de la Startup](https://beta.gouv.fr/startups).

Pour créer une nouvelle adresse de contact, utilisez un hébergeur de mailing-list \(comme AlwaysData si vous l'utilisez pour les DNS sinon un outil de gestion d'emails devrait le faire\).

## Explication des différents solutions techniques de gestion d'email

> Contexte : la réception des emails de @beta.gouv.fr sont géré par OVH \(incluant les listes des diffusions\). Les emails des équipes peuvent être géré par OVH mais pas forcement. Le tableau suivant indique les différents solutions techniques avec leurs avantages et inconvénients.

|  | Mailinglist sur OVH | Redirections sur OVH | Gestion d'email par la startup |
| :--- | :--- | :--- | :--- |
| Domaines possible | \*@beta.gouv.fr uniquement, impossible pour les sous domaines | _@beta.gouv.fr ou_ @startup.beta.gouv.fr si la startup n'a pas pris en main ces DNS | \*@startup.beta.gouv.fr si l'équipe à pris en en main ces DNS |
| Avantages | Quelqu'un qui vous écris dessus ne reçoivent pas d'erreurs bizarres | Ça marche avec les sous domaines  On peut faire du chaînage | Vous êtes autonome, les limitations sont celle des outils ou fournisseurs que vous utilisez |
| Désavantages | Vous ne pouvez pas faire un redirection vers une Mailinglist | Les gens qui écrivent reçoivent les erreurs \(si une adresse destinatrice est invalide\) ou si une des personnes derrière est en vacance.  Erreurs si quelqu'un vous écrives. S'il y a une délégation de DNS, vous ne pouvez pas le  faire | Les limitations sont celle des outils ou fournisseurs que vous utilisez |
| Gestion par `/emails` dans Slack | Automatique | Si c'est configurer dans le bot [slack-ovh](https://github.com/betagouv/slack-ovh) | Non |
| Création | Par un Admin sur OVH \(Florian,Julien,Laurent,Thomas\) | Par une PR sur le bot [slack-ovh](https://github.com/betagouv/slack-ovh) | Par vous après la délégation DNS |
| Plus d'infos | [Doc MailingList OVH](https://docs.ovh.com/fr/emails/guide-dutilisation-mailing-list/) | [Doc redirection OVH](https://docs.ovh.com/fr/emails/guide-des-redirections-emails/) | L'article [Infra](https://github.com/betagouv/doc.incubateur.net-communaute/tree/518220edcd8f031fe1b3f0fba91912462b3b511d/travailler-a-beta-gouv/je-minforme-sur-la-vie-de-la-communaute/Infra/README.md) qui par la délégation DNS |

