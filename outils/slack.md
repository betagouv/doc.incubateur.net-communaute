# Slack 🗣

L'incubateur utilise [Slack](http://startups-detat.slack.com/) comme service de messagerie instantanée.

### S'inscrire

* **Avec une adresse email en `@beta.gouv.fr` :** aller sur [https://startups-detat.slack.com/](https://startups-detat.slack.com/) et se créer un compte.
* **Avec n'importe quel autre email :** n'importe qui peut faire une demande d'invitation à l'espace de travail Slack de beta.gouv.fr \("Invite People"\) ; la demande sera transmise à un administrateur qui pourra l'approuver ou non.

Nous t'incitons fortement à compléter ton profil Slack, avec ton mail, ton numéro de téléphone et ton rôle dans la communauté beta.gouv.fr et chez Etalab, afin que celles et ceux qui ne te connaissent pas puissent facilement t'identifier. Sans que cela soit obligatoire, nous t'encourageons également à rajouter une photo où tu es reconnaissable.

### Inviter d'autres personnes

Tu peux inviter des personnes avec qui ça a du sens de discuter sur notre Slack. Pour éviter de créer le sentiment qu'on se parle dans un lieu rempli d'étrangers, tu as la responsabilité de veiller à ce que ces personnes se présentent \(sur [🔒`#incubateur-nouveaux`](https://startups-detat.slack.com/messages/incubateur-nouveaux/)\) au reste de la communauté.

Si c'est pour créer un espace de discussion restreint, par exemple une équipe au sein d'une administration partenaire qui aime bien l'idée d'avoir une messagerie instantanée, mais avec qui on sera peu amené à échanger, il vaut mieux leur créer un Slack à part entière.

### Ligne de conduite sur Slack

#### Contenu des messages

TL;DR : les canaux publics de Slack ne sont pas la machine à café. Moins de :hankey: et plus de :heart:

> Il faut à mon avis être très précis sur ce que l’on considère comme « déplacé ». Soyons iconoclastes, et n’ayons pas peur de parler de quoi que se soit s’il le faut ; mais restons respectueux des personnes avec qui nous pouvons être amenés à interagir, quoi que l’on pense d’elles, surtout en évitant les invectives, attaques et autres trolls. La censure étant un mécanisme de contrôle social et de la pensée, on risque de perdre notre quintessence rénovatrice et disruptive si l’on n’arrive pas à maîtriser cet enjeu.

#### Threads

Nous encourageons l'utilisation des threads pour les discussions afin de fluidifier les discussions \(pas d'enchevêtrement des messages\) et que certains sujets ne se retrouvent pas "cachés" par un flux de messages trop important.

### Conventions de nommage des canaux

#### Préfixes

Pour améliorer la découvrabilité, chaque canal est préfixé d'une catégorie.

* `startup-` : canaux liés à des produits.
* `api-` : canaux liés à des API.
* `incubateur-` : canaux d'organisation interne à l'Incubateur.
* `etalab-` : canaux d'organisation interne à Étalab.
* `bureaux-` : canaux liés à des espaces physiques.
* `bruit-` : canaux de discussion sans but productif.
* `domaine-` : canaux de discussion liés à des pratiques / compétences.
* `tmp-` : canaux liés à un événement ponctuel et destinés à être archivés rapidement.

#### Doubles canaux des Startups

Les canaux de startups sont préfixés par `startup-`. Lorsqu'ils atteignent un haut volume, un second canal est créé, du même nom suffixé par `-info`. Les membres intéressés par l'évolution du produit mais pas par ses changements quotidiens peuvent ainsi échanger sur un canal à faible volume.

> Cela correspond plus à la croissance d'une startup que l'ancienne organisation qui suffixait le canal à fort volume par `-internals`.

#### Nommage

Les préfixes et suffixes sont séparés par des `-`. Les noms de base sont joints par des `_`.

_Voir_ [https://github.com/betagouv/beta.wip/pull/1](https://github.com/betagouv/beta.wip/pull/1) _pour tout l'historique de ces conventions._

### Conventions emojis

#### 🚀 : succès !

Pour partager une avancée, un succès ou une release avec le reste de l'incubateur, postez un petit message dans [🔒`#incubateur-annonces`](https://startups-detat.slack.com/messages/incubateur-annonces) – en ajoutant une `:rocket:` 🚀 au début du texte.

Pas besoin d’être bien long ; c'est juste pour signaler aux autres ce dont vous êtes heureux ou fier \(et pour recueillir les applaudissements\).

Par exemple :

> * 🚀 _Les utilisateurs du site peuvent enfin modifier leur adresse email de contact._
> * 🚀 _On a sorti OpenFisca 9, avec la nouvelle version de l’API web et les données du RSI_
> * 🚀 _Nos affiches sont visibles dans le métro depuis ce matin !_
> * 🚀 _C’est confirmé, Eva nous rejoindra en mars comme data-scientist_

Évidemment ne pas hésiter à rajouter ensuite un lien, une photo, une capture d'écran, un gif animé, etc.

Pour recevoir une notification de Slack à chaque "🚀", vous pouvez également rajouter `:rocket:` dans votre [liste des mots-clefs](https://get.slack.help/hc/fr-fr/articles/201398467-Notifications-des-mots-cl%C3%A9s).

_Cette convention est encore neuve, et en cours d'expérimentation \(avril 2017\)._  
 _Plus de détails_ [_par ici_](http://kemenaran.winosx.com/posts/partager-les-succes/)_._

#### 💩 : négativité inutile.

Pour faire remarquer qu’un message peut être interprété comme particulièrement négatif, voire qu’il serait dommageable pour le collectif que ce qui a été écrit soit cité, une réaction par 💩 permet de signaler à son auteur qu’on se sent mal à l’aise avec le texte. Il s’agit d'une évaluation personnelle, et l'usage recommandé en est la réaction, afin de ne pas détourner la conversation sur le fond mais de suggérer une amélioration de la forme.

Par exemple :

> les informaticiens de la DRFTAPS sont vraiment des abrutis, ils ont encore réussi à planter le serveur de leur API, ÇA ME SAOULE +💩
>
> → le serveur de l'API de la DRFTAPS est encore en rade, ÇA ME SAOULE _\(edited\)_

#### `/emails`

Voir le paragraphe sur [la commande `/emails`](https://github.com/betagouv/beta.gouv.fr/wiki/Listes-de-diffusion#la-commande-slack-email)

### Paramétrage

* Si vous voulez désactiver les previews des liens qui s'affichent automatiquement : `Preferences > Messages > Display preview links > Off`

### Nettoyage de fichier sur slack

* Installer [slack-cleaner](https://github.com/kfei/slack-cleaner) ou \(`pip install slack-cleaner`\)
* Récupérer votre token API slack [ici](https://api.slack.com/custom-integrations/legacy-tokens) \(Vous avez peut être besoin d'être admin pour avoir une clé\)
* Lancer la commande `slack-cleaner --token {TOKEN} --file --before 20170101` \(changer la date\)
  * Si vous faites une install pip en local, le binaire peut se trouver à `./.local/bin/slack-cleaner` \(à remplacer dans la commande\)
* Lancer la commande `slack-cleaner --token {TOKEN} --file --before 20170101 --confirm` maintenant \(changer la date\)

