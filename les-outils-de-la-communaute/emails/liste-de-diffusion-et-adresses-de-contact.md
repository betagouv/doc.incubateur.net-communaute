# Listes de diffusion de la communauté

## 💬 Utiliser la commande `/emails`

## ❗ Important
Ces commandes **ne fonctionnent que dans le canal** 🔒 **[#incubateur-secrétariat](https://tchap.gouv.fr/#/room/!HJfKDjJlwwnTMlEvEM:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr)**.

## ▶️ Comment ça marche

Dans le salon, vous devez **mentionner le bot avec `@betabot`**, puis taper votre commande à la suite. Le bot ne réagit pas à une commande envoyée sans mention.

```
@betabot /emails <sous-commande> …
```

## 🗒️ Commandes disponibles

- `@betabot /emails create <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`
  → Crée une nouvelle liste de diffusion avec le propriétaire spécifié.
- `@betabot /emails list`
  → Affiche toutes les listes de diffusion existantes.
- `@betabot /emails list <nom_de_la_liste>`
  → Affiche les membres d'une liste spécifique.
- `@betabot /emails join <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`
  → Ajoute un membre à une liste.
- `@betabot /emails leave <nom_de_la_liste> <prenom.nom@beta.gouv.fr>`
  → Retire un membre d'une liste.

## 🗒️ Exemples d'utilisation

**Ajouter un membre à une liste simple :**

```
@betabot /emails join cartobio jean.louis@beta.gouv.fr
```
→ Ajoute `jean.louis@beta.gouv.fr` à la liste `cartobio@beta.gouv.fr`

**Lister les membres d'une liste :**

```
@betabot /emails list cartobio
```
→ Affiche tous les membres de `cartobio@beta.gouv.fr`

**Créer une liste avec un propriétaire :**

```
@betabot /emails create cartobio jean.louis@beta.gouv.fr
```
→ Crée `cartobio@beta.gouv.fr` avec `jean.louis@beta.gouv.fr` comme propriétaire


**Retirer un membre d'une liste :**

```
@betabot /emails leave cartobio jean.louis@beta.gouv.fr
```
→ Retire `jean.louis@beta.gouv.fr` de `cartobio@beta.gouv.fr`

## ⚠️ À noter : comportement contre-intuitif

La commande `/emails leave` **affiche un message d'erreur même si l'opération est réussie**. Ce bug est lié au retour d'OVH, et non à un dysfonctionnement de la commande elle-même.

---

# Explication des différentes solutions techniques de gestion d'email

> **Contexte** : la réception des emails de `@beta.gouv.fr` est gérée par OVH (incluant les listes de diffusions). Les emails des équipes peuvent être gérés par OVH mais pas forcément. Le tableau suivant indique les différentes solutions techniques avec leurs avantages et inconvénients.

|  | Mailinglist sur OVH | Redirections sur OVH | Gestion d'email par la startup |
|---|---|---|---|
| **Domaines possibles** | `*@beta.gouv.fr` uniquement, impossible pour les sous-domaines | `@beta.gouv.fr` ou `@startup.beta.gouv.fr` si la startup n'a pas pris en main ces DNS | `*@startup.beta.gouv.fr` si l'équipe a pris en main ces DNS |
| **Avantages** | Quelqu'un qui vous écrit dessus ne recevra pas d'erreur bizarre | Ça marche avec les sous-domaines. On peut faire du chaînage | Vous êtes autonome, les limitations sont celles des outils ou fournisseurs que vous utilisez |
| **Inconvénients** | Vous ne pouvez pas faire une redirection vers une Mailinglist | Les gens qui écrivent reçoivent les erreurs (si une adresse destinatrice est invalide) ou si une des personnes derrière est en vacances. Erreurs si quelqu'un vous écrit. S'il y a une délégation de DNS, vous ne pouvez pas le faire | Les limitations sont celles des outils ou fournisseurs que vous utilisez |
| **Gestion par `/emails` dans Mattermost** | Automatique | Si c'est configuré dans le bot `slack-ovh` | Non |
| **Création** | Par un admin. Demandez sur `#incubateur-ops` | Par une PR sur le bot `slack-ovh` | Par vous après la délégation DNS |
| **Plus d'infos** | Doc MailingList OVH | Doc redirection OVH | Sous-domaine `*.beta.gouv.fr` |

---

_Page de documentation de la communauté — commande `/emails` du bot._
