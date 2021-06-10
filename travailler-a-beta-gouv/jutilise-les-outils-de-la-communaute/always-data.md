# Always Data

[Always Data](https://admin.alwaysdata.com/) est une plateforme d'hébergement, utilisée par beta.gouv pour déléguer la gestion des DNS des startups aux développeurs de chaque équipe.

## Comment changer l'URL d'une nouvelle application

Préalable 1 : Choisir les URL, en se basant sur [cette documentation](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/choisir-son-nom-de-domaine). On prendra ici comme exemple l'adresse `ma-super-startup.incubateur.net`, une url classique chez beta.gouv pour un site de staging.

Préalable 2 : Avoir une application déployée sur un hébergeur Saas. On prendra ici comme exemple Scalingo, nous disposons donc d'une application déployée sur une adresse comme celle-ci : `ma-super-startup-staging.osc-fr1.scalingo.io`.

1. Créer un compte sur [Always Data](https://admin.alwaysdata.com/) avec votre adresse mail `@beta.gouv.fr`.

2. Ajouter le nouveau domaine. Dans l'interface, trouver le menu `domains`, puis le bouton `Add a domain` et suivre les instructions pour ajouter le domaine `ma-super-startup.incubateur.net`.

3. Aller prévenir le channel `incubateur-ops` que vous avez réalisé les étapes précédentes, en précisant l'adresse mail utilisée à l'étape 1. Cela permettra à l'équipe ops de vous déléguer la gestion des DNS pour ce nouveau domaine.

4. Ajouter les entrées DNS
  - Dans le menu `domains`, en face du nom de votre domaine cliquez sur le picto dans la colonne `details`, puis sur l'onglet `DNS Records`.
  - Cliquez sur `Add DNS record`, et ajouter une entrée de type `ALIAS`, avec `ma-super-startup-staging.osc-fr1.scalingo.io` comme `value`.
  - Ajouter une deuxieme entrée DNS, cette fois de type `CNAME`, avec `www` comme `Hostname` et `ma-super-startup-staging.osc-fr1.scalingo.io` comme `value`.

Grâce à ces deux entrées DNS, les adressses `ma-super-startup.incubateur.net` et `www.ma-super-startup.incubateur.net` afficheront toute les deux l'application de `ma-super-startup-staging.osc-fr1.scalingo.io`.

5. Ajuster les réglages de l'application Scalingo

  Scalingo, comme Heroku et d'autres hébergeurs Saas, demande de préciser les noms de domaines utilisés. Dans l'interface de gestion, section `Settings` pour Scalingo, on peut trouver une zone pour préciser le nouveau domaine (`ma-super-startup.incubateur.net` donc).

  Pour garder la connection https, il faut également activer l'option `force SSL`.

Pour finir, vérifier que tout fonctionne bien en rafraîchissant la page `ma-super-startup.incubateur.net`.

En cas de problème, vous pouvez trouver de l'aide sur le channel Mattermost `incubateur-ops`.
