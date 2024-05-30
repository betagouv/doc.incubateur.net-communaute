---
description: >-
  Dashlane est un gestionnaire de mots de passe pour lequel beta.gouv vous
  propose une licence.
---

# Dashlane

{% hint style="info" %}
Le nombre de comptes Dashlane étant limité, nous vous proposons d'utiliser l'alternative VaultWarden, cf [gérer les mots de passe de mon équipe avec VaultWarden](vaultwarden.md)
{% endhint %}

## Qu'est-ce que Dashlane ?

Dashlane est un gestionnaire de mots de passe. Concrètement, c'est un coffre-fort qui retient l'intégralité de vos mots de passe et vous permet de n'en retenir qu'un seul (le "mot de passe maître").

Les avantages de ne pas avoir à se rappeler de tous vos mots de passes sont multiples :

* vous pouvez utiliser un mot de passe différent pour chaque service (et vous limitez donc la casse si un hacker récupère votre mot de passe)
* vous pouvez utiliser des mots de passe plus longs et complexes, et donc plus robustes
* vous pouvez laisser Dashlane créer automatiquement des mots de passe sécurisés quand vous vous inscrivez à un nouveau service

Dashlane vous permet également :

* de partager vos mots de passe de manière sécurisée avec d'autres utilisateurs
* de pré-remplir des formulaires à votre place quand vous naviguez sur le web

## Comment démarrer ?

### :ballot\_box\_with\_check: Te faire ajouter sur le compte Dashlane de beta

Tu trouveras un formulaire pour en faire la demande dans l'en-tête du canal `~incubateur-ops-dashlane`

### :ballot\_box\_with\_check: Accepter l'invitation reçue par mail

Tu seras invité.e sur ton adresse @beta.gouv.

### :ballot\_box\_with\_check: Choisir un mot de passe maître unique, robuste, et mémorable

:warning: il est absolument primordial que **le mot de passe que tu choisis à cette étape n'ait jamais été utilisé auparavant et que tu ne l'utilises jamais pour un autre service** (de toute façon, tu n'auras plus à choisir de mots de passe toi-même :wink:)

Il faut aussi que ce mot de passe maître soit **robuste** tout en restant **mémorable**, nous te suggérons donc de choisir une suite de 4 ou 5 mots tirés de manière aléatoire (comme illustré [ici](https://xkcd.lapin.org/index.php?number=936))

{% hint style="warning" %}
La procédure de récupération de ton compte en cas d'oubli de ton mot de passe maître est assez complexe (car ce mot de passe est très sensible, et par construction Dashlane ne pourra pas s'en rappeler à ta place).
{% endhint %}

### :ballot\_box\_with\_check: Télécharger l'extension Dashlane pour ton navigateur

Elle est disponible pour Chrome et pour Firefox et te permettra de remplir automatiquement tes mots de passes en ligne.

Un autre gros avantage de cette extension est qu'elle te permet d'enregistrer tes mots de passe existants au fur et a mesure que tu navigues sur les sites que tu utilises (tu n'as donc pas besoin de rentrer tous tes mots de passes manuellement dans l'application).

## Tes espaces Dashlane

### Ton espace perso

* **Tu pourras le garder** après ton départ de beta.gouv
* Stockes-y tous tes mots de passes personnels (adresse mail perso, réseaux sociaux, banque en ligne, etc.)
* Par défaut, c'est là que tes mots de passe seront stockés (sauf si ton identifiant est ton adresse beta.gouv) :point\_right: attention à ne pas y mettre de secrets liés à ta mission

### Ton espace pro (beta.gouv.fr)

* :warning: **Tu perdras tes accès** à cet espace en quittant beta.gouv
* Tes mots de passe associés à une adresse en beta.gouv.fr seront forcément stocké dans ton espace pro.
* Stockes-y tous tes secrets liés à ton activité à beta

## FAQ Dashlane

### Quelle-est la procédure à suivre quand je quitte beta.gouv ?

Lorsque je quitte beta.gouv, la licence de Dashlane sera désactivée, cela vous ne pourrez plus vous connecter à votre compte en ligne. Votre coffre fort local reste accessible avec votre mot de passe maître. Option 1 : Utiliser une des 5 licences gratuite reçu lors de votre inscription Option 2 : Exportez vos mots de passe et les importer sur un autre gestionnaire de mot de passe.

### Pourquoi n'utilisons-nous pas la fonctionnalité "Groupes" Dashlane ?

La fonctionnalité "Groupes" permet à un groupe de partager, entre eux, certains mots de passe ou notes sécurisées. Cependant, n'importe quel administrateur peut s'inscrire à un groupe et ainsi avoir accès à tous leurs secrets. Cela nous semble être un gros risque pour le moment.

### Comment faire si j'ai déjà un compte Dashlane perso ?

Nous avons décidé de ne pas ajouter d'adresse autres que @beta.gouv à notre plan Dashlane. Tu peux garder et travailler avec ton compte Dashlane personnel. Si tu tiens à avoir un compte avec ton adresse beta, il te faudra jongler entre tes deux comptes.
