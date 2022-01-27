# Infra

Chaque équipe de Startups d'Etat gère son infrastructure de façon souveraine. Certains incubateurs [comme la Fabrique numérique des ministères sociaux](https://socialgouv.github.io/support/#/README) propose des services d'hébergement mutualisés.

Par exception à cette règle générale, sur un petit nombre de sujets nous gérons des ressources partagées:

* mails @beta.gouv.fr
* les sous-domaines .beta.gouv.fr
* certains hébergement PaaS
* notre Mattermost

## Les services partagés

### OVH (domaine beta.gouv.fr et adresses mail, mailing lists etc.)

#### Demander un sous domaine

Tu peux demander un sous domaine en suivant la procédure : [demande ops](#comment-faire-une-demande-dops)

#### Mails et mailing listes

Si tu as un sous domaine délégué sur alwaysdata tu peux gérer toi même les adresses et les listes de diffusion (mailing lists) de ce sous-domaine.
Sinon il s'agira d'une mailing liste ovh : [voir la page à ce sujet](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/outils/liste-de-diffusion-et-adresses-de-contact).

Ont les accès:

* @anna-Livia
* @florian
* [pli](https://app.gitbook.com/u/fSfs0pRUfWcVSxNjLWzM5QwYjs92 "mention")

### Matomo (ex Piwik)

Une instance Matomo est disponible [ici](http://stats.data.gouv.fr). Tu peux demander un compte pour ta Startup en suivant la procédure : [demande ops](#comment-faire-une-demande-dops)

Ont les accès:

* @Florian
* @julien.dauphant
* @pli
* @lucas.charrier

### Mattermost

Ont les accès:

* @florian.delezenne
* @julien.dauphant
* @tristan.robert

### Docker Hub

On a [un compte](https://hub.docker.com/u/betagouv) pour stocker des images.

Ont les accès:

* @florian
* @jerome
* @totakoko

## Autres ressources partagées

* Sentry
* [https://template.incubateur.net/](https://template.incubateur.net)
* [https://github.com/betagouv/redirections](https://github.com/betagouv/redirections)
* [https://metabase.incubateur.net/](https://metabase.incubateur.net)
* [https://dashlord.incubateur.net/](https://dashlord.incubateur.net/#/)

## Comment faire une demande d'ops

Pour toute demande d'ops (sous-domaine, matomo, sentry, etc) remplis le formulaire de demande d'ops que tu trouveras dans la description du channel `~incubateur-ops` sur mattermost.
Afin d'éviter de multiples aller-retour n'hésite pas à fournir le maximum d'information dans le champ "note".

Si tu n'as pas de réponse sous 24h, consulte la liste des gens qui ont accès et les droits suffisants, et fais une relance nominative.

Tu peux demander de l'aide sur ces sujets sur Mattermost dans 🔒`~incubateur-ops`.

## Comment apporter de l'aide ?

Inscris-toi d'abord ci-dessous pour signaler que tu as l'accès aux ressources en question.

* Si tu es dispo quand une demande arrive, réponds en thread sur Mattermost en disant "Je prends"
* _Seulement_ après, fais ce qu'il faut pour répondre à la demande
* _Seulement_ après, tu peux mettre une réaction ✅ sur le message d'origine, et répondre "fait"
* Si on te demande à toi directement et que tu ne souhaite pas prendre, réponds "Je passe"

## Services pratiques pour lancer un site Web

Un certain nombre de startups utilisent des services de déploiement facile de sites Web pour éviter d'avoir à gérer un serveur complet.

### Envoi de courriels en masse ou transactionnels

* Mailjet (entreprise française passée sous le contrôle de Mailgun, basé aux US)
* Sendinblue

Nous avons longtemps proposé l'accès mutualisé une instance partagée de Mailjet mais pour diverses raisons techniques ce dispositif s'avère trop pénible à opérer. Nous invitons les équipes à se doter de leur propre compte.

### Hébergement d'un site statique

Voici des hébergements simple pour un site statique :

* AlwaysData (Francais, offre gratuite de 100mo)
* Github page (Américains, offre gratuite)
* Netlify (Américains, offre gratuite, hébergé sur AWS)
* Zeit (Américains, offre gratuite, hébergé sur AWS)

> Netlify et Zeit permettent d'aller beaucoup plus loin : déploiement automatique des PR github (fortement recommandé), HTTPS automatique, [lambdas](https://hackernoon.com/what-is-serverless-architecture-what-are-its-pros-and-cons-cc4b804022e9), etc.
>
> Attention : si vous partez sur Netlify, sachez qu'un bug vous empêchera d'ajouter simplement un site xxx.beta.gouv.fr, car le domaine de plus haut niveau beta.gouv.fr est lui-même hébergé sur Netlify.
>
> L'offre OVH Cloud Web n'est **pas recommandée** car pas compatible avec notre configuration DNS.

### Recommandations d'hébergement simplifié d'une application

Il existe des hébergeurs qui automatisent la mise en prod de votre application et gère la base de donnée. Ils sont recommandés pour le lancement d'une startup d'état (**Ne perdez pas du temps avec de l'ops** : concentrez-vous sur le produit). Voici une liste d'hébergeur permettant d'héberger simplement une application : (non exhaustive)

* Clever Cloud (Français)
* Scalingo (Français, propose une offre pour les startups d'état : 100€/mois offert pendant les 6 premiers mois)

> Pour ces hébergeurs vous devez respecter certaines normes, comme la configuration par les variables d'environnement (ce qui est toujours bon à faire, aller faire un tour sur les [The Twelve-factor app](https://12factor.net)).
>
> Eviter de persister des fichiers avec l'app (les mettre dans un stockage objet par exemple, ils en fournissent en générale). En respectant ces normes, vous gagnez : auto-scaling, gestion des backup automatiques, redémarrage de l'app en cas de crash, déploiement avec un push, mise à jour de sécurité des systèmes d'exploitation.
>
> On ne cite pas ici les offres comme AWS Elastic Beanstalk ou Kubernetes managé par OVH, car ces 2 hébergeurs ont des offres plus avancées mais cela inclut plus de complexité.

### Recommandations d'hébergement d'un application en mode IaaS

Voici des recommandations d'hébergeur permettant de louer machine virtuel ou serveur.

* AlwaysData : Français, propose une offre d'hébergement mutualisé multi-langages aussi, ainsi que les emails et les DNS (domaine de second niveau)
* OVH : Français, services très variés de machines virtuelles, bare-metal, base de donnée managé, emails et DNS (commence à faire de l'orchestration avec kubernetes, on pourra bientôt le classer en simple)
* Scaleway / Online : Français, services très variés de machines virtuelles, bare-metal, base de données managées, emails et DNS (et bientôt kubernetes manager)

> Choisissez l'hébergement en fonction des critères pour la start-up :
>
> * Est-ce que je garde les données en France ? (en général, c'est recommandé pour votre prod mais pour votre environnement de demo, c'est moins sensible)
> * Quel est la confidentialité de mes données ? (quand on se lance, au début on n'a pas ou peu de données)
> * Quel est le coût ? (tu as un coût, une journée dev peut équivaloir à 1 an d'hébergement sur certains de ces services: **si ça te fais gagner du temps, tu peux payer l'hébergement plus cher**)

{% file src="../../.gitbook/assets/schema_beta_hebergeur_v6.pdf" %}
Schéma - Choisir son hébergeur
{% endfile %}



### Recommandation d'hébergement DNS et Emails pour un sous-domaine beta.gouv.fr

> Le domaine principal beta.gouv.fr est géré sur OVH, il n'y a pas de garantie pour la modification DNS par un des admins volontaires. C'est pour ça que nous vous incitons à gérer vous mêmes vos DNS et EMAIL sur votre sous-domaine. Nous avons identifié peu de fournisseurs à recommander permettant de faire ça sur un domaine de second niveau.

* AlwaysData : Français, permet d'héberger DNS et emails sur domaine de second niveau, compris dans l'offre gratuite de base
* PointDNS : US, hébergement DNS uniquement, à utiliser si vous pouvez prendre un service qui n'et pas en Europe.

> Les services cloud Américains comme AWS permette de gérer les DNS d'un domaine de second niveau (à vérifier pour les emails). A vérifier, si vous pouvez en faire usage pour des raisons réglementaires ou d'images.

