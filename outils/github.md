# Github 📝

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

