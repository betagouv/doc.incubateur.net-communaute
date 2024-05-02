# Liste de diffusion interne à la communauté

Les mailing-lists suivantes sont disponibles. Toutes les adresses sont à _postfixer_ de `@beta.gouv.fr`.

| Adresse       | Objet                                                                                                     | Destinataires                                                    | Expéditeurs attendus                                             |
| ------------- | --------------------------------------------------------------------------------------------------------- | ---------------------------------------------------------------- | ---------------------------------------------------------------- |
| `contact`     | Toute demande entrante. Stratégie.                                                                        | Membres volontaires.                                             | Prospects. Membres. Hiérarchie DINUM.                            |
| `compta`      | Marchés, achats, facturation, re-facturation…                                                             | Membres de l'équipe beta.gouv, agents de la DINUM (volontaires). | Prestataires. Interlocuteurs DINUM. Administrations partenaires. |
| `incubateur`  | Communications à la communauté (à utiliser avec modération)                                               | Tous les [membres actifs](https://beta.gouv.fr/communaute).      | Membres. Secrétariat.                                            |
| `recrutement` | Candidatures.                                                                                             | Membres volontaires.                                             | Candidats. Secrétariat.                                          |
| `dinum`       | Éléments administratifs nécessitant un lien contractuel (fiches de paie, gestion des ordres de mission…). | Membres de l'équipe beta.gouv, agents de la DINUM.               | Secrétariat. Hiérarchie DINUM.                                   |
| `alumni`      | Nouvelles de l'incubateur, possibilités de retrouvailles.                                                 | Ex membres n'ayant plus de relation contractuelle.               | Membres.                                                         |
| `coachs`      | Discussions, tips, infos sur le coaching de Startups d'Etat                                               | Membres volontaires.                                             | Les membres de la NL.                                            |
| `onboarding`  | Embarquement des nouvelles et des nouveaux                                                                | Membres volontaires.                                             | Marrains. Parraines.                                             |
| `newsletter`  | Membres externes à beta.gouv souhaitant recevoir l'infolettre hebdomadaire interne                        | Membres externes volontaires                                     | Équipe d'animation                                               |
| `évenements`  | Suivi des contacts participant à des événements organisés par Beta                                        | Participants aux événements organisés par Beta                   | Membres responsables de l'organisation d'événementsa             |
| `animation`   | Communications aux responsables de l'animation de la communauté                                           | Responsables de l'animation de la communauté Beta                | Responsables de l'animation de la communauté Beta                |
| `fast`        | Gestion du Fonds d'accélération des Startups d'Etat                                                       | Responsables du FAST                                             | Candidats au FAST                                                |
| `brigade`     | Équipe Brigade d'intervention numérique                                                                   | Membres de la Brigade d'intervention numérique                   | Interlocuteurs de la Brigade                                     |
| `partenaires` | Informations à destination des structures partenaires (incubateurs, fabriques, etc)                       | Responsables d'incubateurs partenaires                           | Membres                                                          |

## La commande Mattermost `/emails`

### Comment créer une nouvelle liste de diffusion pour la communauté

Pour créer une nouvelle adresse de contact, il faut en exprimer la demande [via le formulaire de demande d'ops](https://airtable.com/shrJydj6dtrdSGmfq). Le mot de passe d'accès à l'interface est consultable depuis l'en-tête de la chaîne 🔒[`#incubateur-ops`](https://mattermost.incubateur.net/betagouv/channels/incubateur-ops).&#x20;

{% hint style="warning" %}
Attention de bien saisir votre identifiant Mattermost (ex : @jean.dupont) sous peine de voir votre demande ignorée.
{% endhint %}

![](<../../../.gitbook/assets/Capture d’écran 2022-06-15 à 19.50.40.png>)

En cas de succès, votre demande est remontée dans le canal [#incubateur-demandes-ops](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops).

### Détails de la commande

{% hint style="info" %}
Attention : ces commandes fonctionnent uniquement dans le canal 🔒[`#incubateur-secretaria`](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretaria)sur Mattermost.
{% endhint %}

- `/emails list` : affiche les listes de diffusions existantes
- `/emails list <nom_de_la_liste>` : affiche les personnes dans la liste nom_de_la_liste
- `/emails join <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : ajouter prenom.nom@beta.gouv.fr à la liste nom_de_la_liste
- `/emails leave <nom_de_la_liste> <prenom.nom@beta.gouv.fr>` : retirer prenom.nom@beta.gouv.fr de la liste nom_de_la_liste

Exemples :

- `/emails join cartobio jean.louis@beta.gouv.fr` : ajouter jean.louis@beta.gouv.fr à la liste cartobio@beta.gouv.fr

Pour un cas particulier de liste rattachée à un sous domaine beta comme _contact@covoiturage.beta.gouv.fr_ le nom de la liste est à mettre avec le _@soudomaine.beta.gouv.fr_ :

- `/emails join contact@covoiturage.beta.gouv.fr jean.louis@beta.gouv.fr` : ajouter jean.louis@beta.gouv.fr à la liste contact@covoiturage.beta.gouv.fr

_Commande implémentée par_ [_`slack-ovh`_](https://github.com/betagouv/slack-ovh) _et hébergée sur le Scalingo de l'Incubateur._

**Fonctionnements contre-intuitif** :

- La commande `/emails leave` affiche un message d'erreur même quand la désinscription a bien eu lieu. Ce problème vient du retour que fait ovh.

## Comment créer une nouvelle liste de diffusion pour sa startup

Chaque startup dispose de sa propre adresse de contact, généralement sous la forme `contact@<identifiant_startup>.beta.gouv.fr`. Chaque adresse peut être trouvée sur la [fiche de la Startup](https://beta.gouv.fr/startups).

Pour créer une nouvelle adresse de contact, utilisez un hébergeur de mailing-list (comme AlwaysData ou OVH si vous l'utilisez pour les DNS sinon un service de gestion d'emails devrait le faire).

| service    | -                                                       |
| ---------- | ------------------------------------------------------- |
| OVH        | permet de gérer le DNS et les emails (via un plan "MX") |
| AlwaysData | permet de gérer le DNS et les emails                    |
