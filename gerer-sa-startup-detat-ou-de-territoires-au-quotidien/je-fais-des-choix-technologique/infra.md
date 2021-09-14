# Infra

Chaque équipe de Startups d'Etat gère son infrastructure de façon souveraine. Certains incubateurs [comme la Fabrique numérique des ministères sociaux](https://socialgouv.github.io/support/#/README) propose des services d'hébergement mutualisés.

Par exception à cette règle générale, sur un petit nombre de sujets nous gérons des ressources partagées:

* mails @beta.gouv.fr
* les sous-domaines .beta.gouv.fr
* certains hébergement PaaS
* notre Mattermost

### Comment demander de l'aide ?

Tu peux demander de l'aide sur ces sujets sur Mattermost dans 🔒`#incubateur-ops` et, s'il y a un délai important, ouvrir également un ticket dans [Trello](https://trello.com/invite/b/LQONIILQ/44ad5ab3073e83030067cc1b1c8ce968/infra) pour le suivi dans la durée.

Si tu n'as pas de réponse sous 24h, consulte ci-dessous la liste des gens qui ont accès et les droits suffisants, et fais une relance nominative.

### Comment apporter de l'aide ?

Inscris-toi d'abord ci-dessous pour signaler que tu as l'accès aux ressources en question.

* Si tu es dispo quand une demande arrive, réponds en thread sur Mattermost en disant "Je prends"
* _Seulement_ après, fais ce qu'il faut pour répondre à la demande
* _Seulement_ après, tu peux mettre une réaction ✅ sur le message d'origine, et répondre "fait"
* Si on te demande à toi directement et que tu ne souhaite pas prendre, réponds "Je passe"

## Les services partagés

### OVH \(domaine beta.gouv.fr et adresses mail, mailing lists etc.\)

Pour les [mails](https://github.com/betagouv/beta.gouv.fr/wiki/Mail) et les [listes](https://github.com/betagouv/beta.gouv.fr/wiki/Listes-de-diffusion) c'est automatisé, voir la page à ce sujet.

Pour la gestion des sous-domaines \(ajouts d'enregistrement , passer par le protocole ci-dessus.

Ont les accès:

* @hussardnum
* @florian
* @julien
* @guillett

### Matomo \(ex Piwik\)

Une instance Matomo est disponible [ici](http://stats.data.gouv.fr/). Vous pouvez demander sur 🔒`#incubateur-ops` un compte pour votre Startup.

Ont les accès:

* @Florian
* @julien

## Mattermost

Ont les accès:

* @florian.delezenne
* @julien.dauphant
* @tristan.robert

## Docker Hub

On a [un compte](https://hub.docker.com/u/betagouv) pour stocker des images.

Ont les accès:

* @florian
* @jerome
* @totakoko

## Autres ressources partagées

* Sentry
* [https://template.incubateur.net/](https://template.incubateur.net/)
* [https://github.com/betagouv/redirections](https://github.com/betagouv/redirections)
* [https://metabase.incubateur.net/](https://metabase.incubateur.net/)
* [https://dashlord.incubateur.net/](https://dashlord.incubateur.net/#/)

## Services pratiques pour lancer un site Web

Un certain nombre de startups utilisent des services de déploiement facile de sites Web pour éviter d'avoir à gérer un serveur complet.

### Envoi de courriels en masse ou transactionnels

* Mailjet \(entreprise française passée sous le contrôle de Mailgun, basé aux US\)
* Sendinblue

Nous avons longtemps proposé l'accès mutualisé une instance partagée de Mailjet mais pour diverses raisons techniques ce dispositif s'avère trop pénible à opérer. Nous invitons les équipes à se doter de leur propre compte.

### Hébergement d'un site statique

Voici des hébergements simple pour un site statique :

* AlwaysData \(Francais, offre gratuite de 100mo\)
* Github page \(Américains, offre gratuite\)
* Netlify \(Américains, offre gratuite, hébergé sur AWS\)
* Zeit \(Américains, offre gratuite, hébergé sur AWS\)

> Netlify et Zeit permettent d'aller beaucoup plus loin : déploiement automatique des PR github \(fortement recommandé\), HTTPS automatique, [lambdas](https://hackernoon.com/what-is-serverless-architecture-what-are-its-pros-and-cons-cc4b804022e9), etc.
>
> Attention : si vous partez sur Netlify, sachez qu'un bug vous empêchera d'ajouter simplement un site xxx.beta.gouv.fr, car le domaine de plus haut niveau beta.gouv.fr est lui-même hébergé sur Netlify.
>
> L'offre OVH Cloud Web n'est **pas recommandée** car pas compatible avec notre configuration DNS.

### Recommandations d'hébergement simplifié d'une application

Il existe des hébergeurs qui automatisent la mise en prod de votre application et gère la base de donnée. Ils sont recommandés pour le lancement d'une startup d'état \(**Ne perdez pas du temps avec de l'ops** : concentrez-vous sur le produit\). Voici une liste d'hébergeur permettant d'héberger simplement une application : \(non exhaustive\)

* Clever Cloud \(Français\)
* Scalingo \(Français, propose une offre pour les startups d'état : 100€/mois offert pendant les 6 premiers mois\)

> Pour ces hébergeurs vous devez respecter certaines normes, comme la configuration par les variables d'environnement \(ce qui est toujours bon à faire, aller faire un tour sur les [The Twelve-factor app](https://12factor.net/)\).
>
> Eviter de persister des fichiers avec l'app \(les mettre dans un stockage objet par exemple, ils en fournissent en générale\). En respectant ces normes, vous gagnez : auto-scaling, gestion des backup automatiques, redémarrage de l'app en cas de crash, déploiement avec un push, mise à jour de sécurité des systèmes d'exploitation.
>
> On ne cite pas ici les offres comme AWS Elastic Beanstalk ou Kubernetes managé par OVH, car ces 2 hébergeurs ont des offres plus avancées mais cela inclut plus de complexité.

### Recommandations d'hébergement d'un application en mode IaaS

Voici des recommandations d'hébergeur permettant de louer machine virtuel ou serveur.

* AlwaysData : Français, propose une offre d'hébergement mutualisé multi-langages aussi, ainsi que les emails et les DNS \(domaine de second niveau\)
* OVH : Français, services très variés de machines virtuelles, bare-metal, base de donnée managé, emails et DNS \(commence à faire de l'orchestration avec kubernetes, on pourra bientôt le classer en simple\)
* Scaleway / Online : Français, services très variés de machines virtuelles, bare-metal, base de données managées, emails et DNS \(et bientôt kubernetes manager\)

> Choisissez l'hébergement en fonction des critères pour la start-up :
>
> * Est-ce que je garde les données en France ? \(en général, c'est recommandé pour votre prod mais pour votre environnement de demo, c'est moins sensible\)
> * Quel est la confidentialité de mes données ? \(quand on se lance, au début on n'a pas ou peu de données\)
> * Quel est le coût ? \(tu as un coût, une journée dev peut équivaloir à 1 an d'hébergement sur certains de ces services: **si ça te fais gagner du temps, tu peux payer l'hébergement plus cher**\)



### Recommandation d'hébergement DNS et Emails pour un sous-domaine beta.gouv.fr

> Le domaine principal beta.gouv.fr est géré sur OVH, il n'y a pas de garantie pour la modification DNS par un des admins volontaires. C'est pour ça que nous vous incitons à gérer vous mêmes vos DNS et EMAIL sur votre sous-domaine. Nous avons identifié peu de fournisseurs à recommander permettant de faire ça sur un domaine de second niveau.

* AlwaysData : Français, permet d'héberger DNS et emails sur domaine de second niveau, compris dans l'offre gratuite de base
* PointDNS : US, hébergement DNS uniquement, à utiliser si vous pouvez prendre un service qui n'et pas en Europe.

> Les services cloud Américains comme AWS permette de gérer les DNS d'un domaine de second niveau \(à vérifier pour les emails\). A vérifier, si vous pouvez en faire usage pour des raisons réglementaires ou d'images.

