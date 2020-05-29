# 📝 Github

## Se créer un compte Github ou demander à ton·ta marrain·e de faire ta fiche pour toi

Si tu créé ton compte Github \(tu seras plus autonome\)

*  [Activer l'authentification double facteur](https://github.com/settings/security) sur GitHub.

> Notre organisation gagne en visibilité, plusieurs de nos dépôts sont déployés automatiquement… Bref, notre aspect DevOps combiné au fait de travailler au sein de l'État nécessite un durcissement des accès pour éviter une publication malicieuse sur un service en production.

* Met ta photo \(ou une image personnalisé si tu ne veux pas diffuser ta photo\) sur Github : [Settings](https://github.com/settings/profile) \(Elle servira pour la page communauté de beta.gouv.fr\).
* Ajoute-toi sur la page Communauté ![:camera:](https://camo.githubusercontent.com/7fa2053e303b83675dbaf13562064520c4cf7dda/68747470733a2f2f6769746875622e6769746875626173736574732e636f6d2f696d616765732f69636f6e732f656d6f6a692f756e69636f64652f31663466372e706e67) : [plus d'infos ici pour contribuer au site](https://github.com/betagouv/beta.gouv.fr/blob/master/CONTRIBUTING.md#ajouter-ou-modifier-un-membre-%C3%A0-la-communaut%C3%A9-betagouv) \(Si tu n'as jamais ou très peu utilisé Github, tu peux t'aider du [tutoriel Github](https://github.com/betagouv/beta.gouv.fr/wiki/Tutoriel-Github)\).

> Tu seras automatiquement inscrit sur la mailing list `incubateur@beta.gouv.fr` dans les 24h \(\*\). Tu pourras aussi recevoir des rappels pour certains événements importants \(renouvellement de ta participation\), et autres prestations de notre [secrétariat automatisé](https://github.com/betagouv/betaGouvBot).

> Tu seras automatiquement ajouté à l'organisation Github dans les 24h \(\*\). Si ce n'est pas le cas, demande à ton·ta marrain·e une invitation pour rejoindre l'organisation [betagouv](https://github.com/orgs/betagouv/teams) et sur la team [beta.gouv.fr](https://github.com/orgs/betagouv/teams/beta-gouv-fr).

\(\*\) Notre secrétariat robotisé tourne tous les jours à 13h. Si tu as publié ta fiche dans la matinée, tu recevras ton invitation pour l'après-midi. Sinon, il faudra patienter jusqu'au lendemain!

## Comment contribuer à notre site avec l'interface web de Github ?

Souvent, les personnes qui nous rejoignent ont un peu de mal avec Github pour réaliser leur fiche sur la [page communauté](https://beta.gouv.fr) ou la fiche de leur startup.

Comme on le dit souvent pour nos propres produits, "the user is never wrong" - ce n'est pas toi qui n'a pas compris, c'est l'interface qui n'est pas assez intuitive, ou pas assez pédagogique. Ce guide est là pour t'aider.

## Les bases

Il te faut un compte sur Github pour pouvoir contribuer.

Ensuite, le plus simple est de suivre les "liens pour ajouter en un clic", qui te permettent d'ajouter

* une [startup](https://github.com/sgmap/beta.gouv.fr/blob/master/CONTRIBUTING.md#en-un-clic-par-linterface-web-de-github-smiley)
* un [billet de blog](https://github.com/sgmap/beta.gouv.fr/blob/master/CONTRIBUTING.md#1-Écrire-le-billet)
* une [personne](https://github.com/sgmap/beta.gouv.fr/blob/master/CONTRIBUTING.md#en-un-clic-par-linterface-web-de-github-smiley-2)
* une [offre d'emploi](https://github.com/sgmap/beta.gouv.fr/blob/master/CONTRIBUTING.md#en-un-clic-par-linterface-web-de-github-smiley-3)

Tu vas tomber sur une boîte de texte pré-remplie avec un modèle de fichier. Il faut :

* modifier le fichier pour qu'il ait le bon contenu
* modifier les "méta-données", c'est-à-dire la partie au début du fichier entre `---`
* éventuellement ajouter ensuite une image, c'est là que ça se corse, mais avec les explications ci-dessous tout ira bien.

## Créer une Pull Request

Ce nom un peu barbare signifie "demander gentiment à l'équipe beta.gouv.fr de publier mes modifications".

Github va te proposer de créer une Pull Request. Il est possible qu'on te dise aussi qu'il faut d'abord créer un "fork" : c'est normal, c'est une copie de notre site sur laquelle tu peux faire ce que tu veux sans risque. Laisse-toi guider.

![Fork](https://i.imgur.com/DldrTNX.png)

Fais bien attention ensuite au nom de la branche sur laquelle est déposée ton fichier, ça se passe en haut à droite de cette partie de la fenêtre :

![Branche](https://i.imgur.com/5aDKOMn.png)

Note le nom de la branche \(ici **patch-1**\) pour tout à l'heure.

## Le format pour le contenu

Nous utilisons Markdown pour le corps des articles, tu peux trouver [un tuto en Français ici](https://openclassrooms.com/courses/redigez-en-markdown) et beaucoup d'autres en anglais.

Il y a une partie en début de fichier entre deux marques `---`. Ce sont des variables spéciales de l'article, comme son titre, ou des informations comme le nom de la personne. Le format est assez simple, le nom de la variable, deux points \(sans espace\) et la valeur. \(C'est [documenté en anglais](https://jekyllrb.com/docs/frontmatter/) si tu veux en savoir plus.\)

Tout ce qui est écrit après `#` dans une ligne ne compte pas, c'est un commentaire. On en a mis dans les modèles pour expliquer, tu peux te laisser guider et ensuite effacer les commentaires.

## Le nom du fichier

N'oublie pas de bien choisir le nom du fichier, généralement c'est important; par exemple ici pour une offre d'emploi:

![Job](https://i.imgur.com/WpoJDPM.png)

Vérifie bien que l'extension du nom de fichiers est `.md`, et que le nom du fichier correspond à ce que tu vas créer: une date en `AAAA-MM-DD` et un nom pour une offre d'emploi ou un article, `nom.prenom` pour une personne.

## Les images

Souvent il faut ajouter une image, par exemple pour un article de blog. L'astuce fondamentale est: **rédige le texte d'abord, va jusqu'au bout de la création de ta Pull Request, et ensuite seulement ajoute l'image en utilisant la fonction "upload" sur la bonne branche**.

Pour cela tu retournes à ton "fork", qui apparaît maintenant dans ton compte Github. Ca devrait ressembler à ça:

![Accueil de ton fork](https://i.imgur.com/ySsOnMy.png)

En bas à droite, là ou ça dit "master", il faut cliquer et sélectionner ta branche \(dans notre exemple **patch-1**\).

Ensuite il faut naviguer vers le bon répertoire : par exemple pour une photo sur une fiche membre, c'est `img/authors`.

![Upload](https://i.imgur.com/6Nzx7pq.png)

Tu vois en bas à gauche qu'on est bien sur la bonne branche, et en haut à gauche qu'on est bien dans le bon répertoire.

## Et après ?

Ensuite, un membre de l'équipe va de toute façon relire ce que tu as fait. Si tu as fait une erreur, ce n'est pas grave, tout est réparable. Si tout va bien, tes modifications seront vite publiées !

