# Listes de diffusion de la communauté

### 💬 Utiliser la commande Mattermost `/emails`

Pour créer ou modifier des **listes de diffusion**, il vous suffit d'utiliser la commande `/emails` directement dans le canal [**🔒#incubateur-secrétariat**](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretariat) sur Mattermost.

#### 📌 Important

Ces commandes **ne fonctionnent que dans le canal** `🔒#incubateur-secrétariat`.

***

#### 🛠️ Commandes disponibles

* `/emails create <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`\
  ➜ Crée une nouvelle liste de diffusion avec le propriétaire spécifié.
* `/emails list`\
  ➜ Affiche toutes les listes de diffusion existantes.
* `/emails list <nom_de_la_liste>`\
  ➜ Affiche les membres d'une liste spécifique.
* `/emails join <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`\
  ➜ Ajoute un membre à une liste.
* `/emails leave <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`\
  ➜ Retire un membre d'une liste.

***

#### ✉️ Exemples d’utilisation

* `/emails join cartobio jean.louis@beta.gouv.fr`\
  ➜ Ajoute _jean.louis@beta.gouv.fr_ à la liste _cartobio@beta.gouv.fr_
* Pour les listes associées à un sous-domaine, indiquez l’adresse complète :\
  `/emails join contact@covoiturage.beta.gouv.fr jean.louis@beta.gouv.fr`\
  ➜ Ajoute _jean.louis@beta.gouv.fr_ à la liste _contact@covoiturage.beta.gouv.fr_

***

#### ⚠️ À noter : comportement contre-intuitif

La commande `/emails leave` **affiche un message d’erreur même si l’opération est réussie**. Ce bug est lié au retour d’OVH, et non à un dysfonctionnement de la commande elle-même.

***

### 🆕 Créer une nouvelle adresse de contact pour sa startup

Chaque startup de l'incubateur dispose d'une adresse de contact, en général sous la forme :\
**contact@\<identifiant\_startup>.beta.gouv.fr**

Vous pouvez retrouver cette adresse sur la fiche de votre startup.

Pour créer une nouvelle adresse, vous devez utiliser un service de mailing-list, par exemple :

* **AlwaysData**, si vous utilisez déjà cet hébergeur pour la gestion DNS,
* Ou un autre outil adapté à la gestion des emails.

## Explication des différentes solutions techniques de gestion d'email

> Contexte : la réception des emails de @beta.gouv.fr est gérée par OVH (incluant les listes des diffusions). Les emails des équipes peuvent être gérés par OVH mais pas forcément. Le tableau suivant indique les différentes solutions techniques avec leurs avantages et inconvénients.

|                                       | Mailinglist sur OVH                                                                                                | Redirections sur OVH                                                                                                                                                                                                                 | Gestion d'email par la startup                                                                      |
| ------------------------------------- | ------------------------------------------------------------------------------------------------------------------ | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------------------------------------- |
| Domaines possibles                    | `*@beta.gouv.fr` uniquement, impossible pour les sous domaines                                                     | _`@beta.gouv.fr` ou_ `@startup.beta.gouv.fr` si la startup n'a pas pris en main ces DNS                                                                                                                                              | `*@startup.beta.gouv.fr` si l'équipe à pris en en main ces DNS                                      |
| Avantages                             | Quelqu'un qui vous écrit dessus ne recevra pas d'erreur bizarre                                                    | Ça marche avec les sous domaines. On peut faire du chaînage                                                                                                                                                                          | Vous êtes autonome, les limitations sont celles des outils ou fournisseurs que vous utilisez        |
| Inconvénients                         | Vous ne pouvez pas faire une redirection vers une Mailinglist                                                      | Les gens qui écrivent reçoivent les erreurs (si une adresse destinatrice est invalide) ou si une des personnes derrière est en vacance. Erreurs si quelqu'un vous écrit. S'il y a une délégation de DNS, vous ne pouvez pas le faire | Les limitations sont celles des outils ou fournisseurs que vous utilisez                            |
| Gestion par `/emails` dans Mattermost | Automatique                                                                                                        | Si c'est configuré dans le bot [slack-ovh](https://github.com/betagouv/slack-ovh)                                                                                                                                                    | Non                                                                                                 |
| Création                              | Par un admin. Demandez sur [`#incubateur-ops`](https://mattermost.incubateur.net/betagouv/channels/incubateur-ops) | Par une PR sur le bot [slack-ovh](https://github.com/betagouv/slack-ovh)                                                                                                                                                             | Par vous après la délégation DNS                                                                    |
| Plus d'infos                          | [Doc MailingList OVH](https://docs.ovh.com/fr/emails/guide-dutilisation-mailing-list/)                             | [Doc redirection OVH](https://docs.ovh.com/fr/emails/guide-des-redirections-emails/)                                                                                                                                                 | [sous-domaine-beta-gouv-fr.md](../../gerer-son-produit/tech/sous-domaine-beta-gouv-fr.md "mention") |

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
