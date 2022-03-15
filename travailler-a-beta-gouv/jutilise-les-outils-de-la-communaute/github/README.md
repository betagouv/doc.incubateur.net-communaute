# Github

## Github c'est quoi ?

* C'est le service en ligne qui contient entre autres le code source du site internet de beta.gouv.fr et de cette documentation
* La modification du site beta.gouv.fr a été simplifiée pour être accessible à un maximum de personnes

Dans tous les cas vous pouvez demander de l'aide sur Mattermost `#incubateur-help` ou par email sur `contact@beta.gouv.fr`

{% hint style="info" %}
:movie\_camera: Le replay de la dernière formation **Git et GitHub pour les non-Devs** est disponible [ici](https://bbb-dinum-scalelite.visio.education.fr/playback/presentation/2.3/8ee526fca9400cc6d29be8255d42a6f8b9d71ac9-1642668864964)
{% endhint %}

## Je créé un compte Github

* Inscris-toi sur le site de Github : [https://github.com/join](https://github.com/join)

![](<../../../.gitbook/assets/image (8) (2) (2) (2) (2) (2) (1) (1) (1).png>)

* Valide ton compte Github en cliquant sur le lien reçu par email
* Pour améliorer la sécurité, tu dois activer l'authentification double facteur
  * Aller sur la page [https://github.com/settings/security](https://github.com/settings/security)
  * Dans la section "Two-factor authentication"
  * "Enable two-factor authentication"

![](<../../../.gitbook/assets/image (14) (2) (2) (2) (2) (2) (2) (2) (2) (1) (1).png>)

* Si tu es familier avec les applications mobile de type "Google Authenticator", fais : "**Set up using an app**." et suis les étapes indiquées par Github.
* Si tu ne comprends pas le point si dessus, fais "**Set up using SMS"** et entre ton numéro de mobile
* Github va afficher des "Recovery codes"
  * Imprime ces codes et garde les dans un coin. A défaut, sauvegarde les de manière sécurisé
* Github doit te proposer de saisir un code pour confirmer la procédure (soit le code est envoyé par sms, soit tu dois ouvrir l'application qui gére tes codes)
* Mets ta photo (ou une image personnalisé si tu ne veux pas diffuser ta photo) sur Github, dans ["Settings", "Profile"](https://github.com/settings/profile)
  * :point\_right:c'est la photo qui servira pour la page communauté de beta.gouv.fr

## Faire une modification sur le site beta.gouv.fr

* Vérifie que tu es bien connecté à Github
* Recherche ta fiche sur le repo github [https://github.com/betagouv/beta.gouv.fr/tree/master/content/\_authors](https://github.com/betagouv/beta.gouv.fr/tree/master/content/\_authors)
  * Si elle ne s'affiche pas correctement, tu peux la retrouver via l'outil de recherche de GitHub ou bien y naviguer directement via l'url du format `https://github.com/betagouv/beta.gouv.fr/tree/master/content/_authors/{prenom}.{nom}.md`
* Ouvre la fiche et clique sur le crayon
* Le site peut te demander de faire un fork (cela créé une version pour toi du site beta.gouv.fr)
* Clique sur "Fork this repository" dans ce cas
* Voici le détail des informations de ta fiche, tu peux la mettre à jour avec de nouveaux éléments
  * fullname : ton prénom et nom
  * role : ton rôle, tu as le droit d'être créatif ou pas
  * github : le pseudo de ton compte github (tu peux le savoir en cliquant sur ton avatar en haut à droite de Github "Signed in as **Nom du compte github**")
  * link : si tu veux mettre un lien vers ton site web, ta page linkedin, twitter ou laisser vide
  * missions : ajoute la date de debut et de fin de ton contrat (si tu ne sais pas met une date de fin dans 6 mois
    * status : tu mets "admin" si tu es agent publiques, "independent" si tu es travailleur indépendant et "service" sinon
  * startups : tu peux mettre le nom de code de ta startup
  * Tu peux écrire une petite bio dans ta fiche
  * Si tu as pu compléter une bonne partie mais tu as encore des doutes, passe quand même au étape suivante et marque tes doutes dans la description de l'étape "Pull Request"
* Une fois les modifications faite, en bas de la page la page, tu peux metter un titre à ta modification à la place de `Update prenom.nom.md` et faire **Commit changes**
* Sur la page suivant il faut faire **"Create pull request"**
* Modifie la description pour te présenter et clique sur le nouveau bouton **"Create pull request"**

![](<../../../.gitbook/assets/image (13).png>)

* Voilà ! Un autre membre de beta.gouv.fr va pouvoir accepter ta modification

> Si tu as ajouté ton compte Github, tu seras automatiquement ajouté à l'organisation Github dans les 24h. Si ce n'est pas le cas, demande à ton·ta marrain·e une invitation pour rejoindre l'organisation [betagouv](https://github.com/orgs/betagouv/teams) et sur la team [beta.gouv.fr](https://github.com/orgs/betagouv/teams/beta-gouv-fr).

## Rentrer dans l'organisation Github betagouv

* Notre robotisé tourne toute les 15 minutes une fois un compte github ajouté sur une fiche. Tu recevras l'invitation au maximun au bout de 15 minutes.
* Pour accepter l'invitation :
  * Soit tu cliques sur l'email reçu par email
  * Soit aller sur la page [https://github.com/betagouv](https://github.com/betagouv) et accepter l'invitation visible en haut

{% content-ref url="../../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-gere-mon-produit-et-son-impact/gerer-sa-fiche-produit.md" %}
[gerer-sa-fiche-produit.md](../../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-gere-mon-produit-et-son-impact/gerer-sa-fiche-produit.md)
{% endcontent-ref %}
