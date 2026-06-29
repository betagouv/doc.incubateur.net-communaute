# Listes de diffusion de la communauté

## 💬 Utiliser la commande `/emails`

## ❗ Important
Ces commandes **ne fonctionnent que dans le canal** 🔒 **[#Demande-OPS](https://tchap.gouv.fr/#/room/!VxFWdbcSlumKPvpVRP:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr)**.

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

_Page de documentation de la communauté — commande `/emails` du bot._
