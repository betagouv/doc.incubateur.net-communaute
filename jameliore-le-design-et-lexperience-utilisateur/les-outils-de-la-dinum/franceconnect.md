---
description: >-
  Guide pour la solution d'authentifications de particuliers officielle des
  services publics numériques
---

# France Connect

Cette page est à destination des développeur.se.s implémentant la connexion usagers via FranceConnect \(FC\). On est ici dans le contexte d'un Fournisseur de Services \(FS\) dans la terminologie de FC.

Cette page vient en complément de la documentation officielle disponible sur [https://partenaires.franceconnect.gouv.fr/documentation](https://partenaires.franceconnect.gouv.fr/documentation) pour détailler quelques points précis uniquement. Ces infos sont tirées d'expériences passées sur RDV-Solidarités et Civils de la Défense, et d'échanges avec le support de FC.

## Exemples d'implémentations

{% hint style="info" %}
Nous vous encourageons à parcourir le reste de cette page avant de regarder et vous inspirer des exemples de code, vous gagnerez du temps !
{% endhint %}

### Démarches Simplifiées

Ruby On Rails + Devise + openid\_connect

Implémenté pour la première fois en 2016, code qui date un peu. Visible sur GitHub: [https://github.com/betagouv/demarches-simplifiees.fr/](https://github.com/betagouv/demarches-simplifiees.fr/)

### Civils de La Défense

Ruby On Rails + Devise + omniauth\_openid\_connect

Pull Request de fevrier 2021 : [https://github.com/betagouv/civilsdeladefense/pull/782](https://github.com/betagouv/civilsdeladefense/pull/782)

### RDV-Solidarités

Ruby On Rails + Devise + omniauth\_openid\_connect

Pull Request de février 2021 [https://github.com/betagouv/rdv-solidarites.fr/pull/752](https://github.com/betagouv/rdv-solidarites.fr/pull/752)

## Réconciliation

C'est le processus de fusion d'un compte FC avec un compte pré-existant dans le système d'authentification de votre service

### Identité pivot

L'identité pivot \(IP\) est définie par le 6-tuple suivant :

* nom de naissance
* prénoms
* sexe
* date de naissance
* lieu de naissance
* pays de naissance

{% hint style="info" %}
L'email et le numéro de téléphone ne font pas partie de l'IP, ce sont des moyens de contacts pouvant changer et être partagés entre usagers.
{% endhint %}

Un champ "SUB" est aussi envoyé, il contient un hash de l'IP, unique par fournisseur de services. Il semble que ce champ ne soit pas un identifiant unique de l'usager mais bien un hash des valeurs de l'IP, ce qui réduit légèrement son utilité - il changera dans le rare cas d'un changement d'état civil d'un usager.

### Algorithme de réconciliation automatique

Ces deux comparaisons doivent-être effectuées successivement pour réconcilier des comptes sans intervention de l'usager :

1. identité du champ SUB
2. identité des 6 champs de l'IP

Contacté à ce sujet, le support de FranceConnect ne donne pas de bonnes pratiques sur la comparaison de l'IP avec les infos de votre système d'authentification. Vous pouvez donc décider librement de faire des comparaisons sensibles ou non à la casse, aux symboles de ponctuation, aux espaces etc...

On peut malgrés tout trouver un exemple d'algorithme de réconciliation en NodeJS sur un de leur dépôt de code sur github : [https://github.com/france-connect/data-provider-example/blob/b767251ce458b6f01510cbc16ba17e205864422c/src/services.js\#L133-L183](https://github.com/france-connect/data-provider-example/blob/b767251ce458b6f01510cbc16ba17e205864422c/src/services.js#L133-L183)

{% hint style="warning" %}
Il ne faut donc pas faire de réconciliation automatique sur base de l'email ou du numéro de téléphone, même si ce sont des identifiants uniques dans le système d'authentification pré-existant de votre système.  
Si un usager a utilisé un email différent pour Améli et pour les impôts, l'adresse envoyée par FC sera différente. Des membres d'une famille peuvent aussi partager un compte email. C'est pour ces raisons qu'il est interdit de faire la réconciliation automatiquement sur base de l'email seul
{% endhint %}

Malgré cette remarque validée par le support de FC, cette pratique est tolérée. Par exemple [Démarches Simplifiées](https://www.demarches-simplifiees.fr/) fait une réconciliation automatique sur base de l'email seul \([voir le code ici](https://github.com/betagouv/demarches-simplifiees.fr/blob/dev/app/controllers/france_connect/particulier_controller.rb#L20)\). Le support de FC nous dit :

> Ce process de réconciliation est de la responsabilité du fournisseur de service, c’est lui qui prend en charge son risque et les erreurs potentielles de réconciliation réalisées sur trop peu de données

### Réconciliation manuelle

Cette procédure implique une intervention de l'usager pour prouver son identité, et vient en paliatif si la procédure automatique n'a pas fonctionnée.

Elle peut-être utile dans le cas où un usager se connecte avec FC avec un email déjà existant dans le système d'authentification de votre produit, mais que la réconciliation automatique n'a pas associé les comptes. C'est aussi valable pour les numéros de téléphones. La majorité des systèmes d'authentification supposent une unicité de ces champs et vous ne pourrez donc pas créer de nouveau compte.

Il vous faudra alors demander à l'usager un "secret" comme un numéro de dossier, ou un autre identifiant unique auquel seul lui a accès pour valider son identité et procéder à la réconciliation des comptes. S'il n'y a pas de secret évident; le mot de passe peut-être demandé. Il faut nécessairement fournir une fonctionnalité de récupération de mot de passe dans ce cas.

{% hint style="info" %}
L'intérêt de FC versus une connexion classique, dans le cas d'une réconciliation manuelle via mot des passe est limité, mais pas nul, cela permet tout de même de rapprocher les comptes et récupérer les informations certifiées de FC.
{% endhint %}

## Présence de l'email

On peut considérer qu'un email est toujours retourné dans les informations FC.

Certains éléments de la documentation peuvent porter à penser le contraire, par exemple :

> Dans le cadre de l'interopérabilité eIDAS, l'e-mail ne sera pas envoyé la majorité du temps car non obligatoire

Cette remarque signifie en fait que l'email ne sera pas envoyé dans certains cas; mais qui n'ont pas l'air de nous concernet. eIDAS est un protocole d'échange d'infos officiel européen.

Une autre chose pouvant porter à confusion est la présence de comptes de test \(cf [ce fichier csv](https://github.com/france-connect/identity-provider-example/blob/master/database.csv)\) soient explicitement des comptes sans email. Vous pouvez ignorer ces comptes et ne pas les tester.

## Rendre les champs de l'IP non modifiables

Une fois un usager connecté via FC, les champs de son IP doivent devenir non-modifiables. Le raisonnement est que ces infos ont été validées par le FI et n'ont donc aucune raison d'être modifiées.

C'est le cas peu importe le mode de connexion ultérieur de cette personne. C'est à dire que même si le compte a été réconcilié, et que l'usager se connecte par la suite avec son mot de passe, il faut que les champs restent non-éditables.

C'est aussi le cas pour les éventuels agents publics ayant accès en écriture aux comptes usagers de votre DB, par exemple depuis une vue backoffice.

Notez aussi que parmi les champs de l'IP est le nom de naissance, mais pas le nom d'usage qui lui peut rester modifiable dans votre service.

{% hint style="info" %}
Il faut donc stocker l'information qu'un usager s'est déjà connecté une fois via FC de manière durable dans votre BDD
{% endhint %}

Contacté à ce sujet, le support de FranceConnect ne fournit pas de contenus types à présenter à l'usager pour expliquer cette interdiction de modification. Il faut indiquer aux usagers que s'ils veulent les modifier, il faut qu'ils modifient leur état civil directement.

## Astuces

Lorsque votre tentative de connexion à un FI de test échoue avec une erreur côté FC, vous pouvez vous retrouver bloqué et ne plus réussir à vous déconnecter de ce compte. Pour y remédier, il faut soit vider le cookie du domaine du fournisseur d'identité \(pas toujours évident à trouver, cherchez franceconnect ou fcp dans la liste de vos cookies\), ou bien rouvrir une fenêtre de navigation privée à chaque fois

