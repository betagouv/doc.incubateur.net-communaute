# Sous-domaine \*.beta.gouv.fr

{% hint style="success" %}
L’ensemble des partenaires du programme interministériel [beta.gouv.fr](http://beta.gouv.fr) peuvent bénéficier du sous-domaine "[beta.gouv.fr](http://beta.gouv.fr)".
{% endhint %}

**Le sous-domaine “**[**beta.gouv.fr**](http://beta.gouv.fr)**” existe depuis 2014 et est piloté par la Direction interministérielle du numérique (DINUM)**. Il permet aux Startups d’État de mettre en ligne rapidement les premières versions de leur service numérique, et donc de tester le service en conditions réelles, auprès de “vrais” utilisateurs, le plus vite possible, dans un périmètre restreint qui s’étend au fur et à mesure des évolutions du service.

Le nom “beta” renvoie à la notion de “**version bêta**” qui indique à l’utilisateur que le service n'est pas encore abouti. Pendant le programme [beta.gouv.fr](http://beta.gouv.fr) (qui dure en moyenne 3 ans), le service numérique, encore en construction ou en accélération, n’est pas encore parfait, et évolue en permanence au fil des retours des utilisateurs. L’objectif du programme est de bâtir des services utiles et exemplaires et conformes aux standards décrits ci-dessous (accessibles, sécurisés, respectueux des données personnelles, conformes au système de design de l’État, au code source ouvert…) par une démarche d’amélioration continue.

## beta.gouv.fr ou incubateur.net ?

Pour la production, c'est ok d'utiliser ma-startup.beta.gouv.fr.

Pour le reste (dev, pré-prod), il faut utiliser ma-startup.incubateur.net

## Comment obtenir la délégation d'un sous-domaine beta.gouv.fr ou incubateur.net ?

Nous pouvons vous déléguer la gestion de votre Zone DNS sur OVH ou autre fournisseur de votre choix.

Vous serez alors autonome sur la gestion de votre zone DNS et devrez gérer vous-même les éventuels frais afférents comme les boites emails.&#x20;

### Etapes

Préalable : Choisir les URL, en se basant sur [cette documentation.](../gestion-au-quotidien/tech/choisir-son-nom-de-domaine.md) On prendra ici comme exemple l'adresse `ma-startup.incubateur.net`, une url classique chez beta.gouv pour un site de staging.

#### Exemple avec OVH

1. Créer [un compte OVH](https://www.ovh.com/auth/) **avec votre adresse (beta.)gouv.fr**
2. Faire [la demande de création de zone DNS](../gestion-au-quotidien/tech/support-tech.md) en précisant le compte OVH qui recevra la délégation.
3. Une fois le ticket traité, accepter la demande de délégation et configurez votre zone DNS.

## Migration hors des noms de domaine \*.beta.gouv.fr

Lorsque ton produit n'est plus en version bêta ou que ta période d'incubation dans le réseau beta.gouv.fr est terminée, il est nécessaire de prévoir une migration vers un sous-domaine plus pérenne. Cette migration concerne les environnements de production, de développement, de tests, staging, etc.

Si l'administration d'accueil du produit numérique est un ministère, le Service d'information du gouvernement (SIG) recommande d'utiliser le sous-domaine _.ministere.gouv.fr_. Par exemple, ma-cantine.beta.gouv.fr est devenu ma-cantine.agriculture.gouv.fr en septembre 2022.

La migration nécessite souvent l'accord du service du numérique de l'administration d'accueil, requiert un certain niveau de conformité (accessibilité, sécurité, vie privée) et peut prendre un peu de temps (environ 3 mois). Régulièrement, la DINUM effectue une revue du portefeuille et contacte les équipes qui sont sorties de le version bêta pour leur demander un plan de migration.

La migration est obligatoire pour des raisons de sécurité.

Après la migration, la DINUM peut mettre en place des redirections pour ne pas perdre les utilisateurs habitués à une URL en _.beta.gouv.fr_.

Cette obligation concerne également l'utilisation du _.incubateur.net._
