---
description: Améliorer la sécurité de son produit
---

# Bug Bounty avec YesWeHack

La communauté bénéficie d'un programme de bug bounty sur la plateforme
[YesWeHack](https://www.yeswehack.com/fr).

## FAQ

### Qu'est-ce qu'un programme de Bug Bounty ?

C'est comme un contrat établi entre des hackeurs éthiques et une organisation
fixant un cadre et un périmètre pour la recherche de failles de sécurité. Ce
contrat permet à ces hackeurs éthiques de chercher et de reporter des failles de
sécurité en toute légalité et d'être rémunérés en fonction de la gravité des
problèmes identifiés.

### Ma startup est-elle couverte par ce programme ?

Actuellement, le programme de Bug Bounty de beta.gouv.fr dit "global" englobe
les URLs en `*.beta.gouv.fr` et est supervisé par les membres l'équipe animation de beta.gouv.fr.
D'autres programmes sur des périmètres différents ou plus restreints peuvent
exister, mais ils ne sont pas supervisés par l'équipe animation.

### Comment ça marche ?

Pour faciliter la communication entre les équipes beta.gouv.fr et la
rémunération des hackeurs éthiques, la DINUM utilise la plateforme YesWeHack.

Si une vulnérabilité est identifiée sur votre périmètre :

* Tu recevras une invitation par e-mail de la part de YesWeHack à créer un
  compte sur leur plateforme pour pouvoir accéder de manière sécurisée au
  rapport de vulnérabilité.
* Tu seras aussi invité sur un canal Mattermost privé nommé selon
  l'identifiant de la vulnérabilité `YWH-PGMXXXX-XX` pour le suivi de la
  vulnérabilité en interne.

### Vais-je recevoir des notifications régulièrement ?

Non, tu recevras des communications uniquement si une vulnérabilité avérée a
été identifiée sur le périmètre de ta startup d'État.

### Je dois faire quelque chose de particulier ?

Vérifie juste que la liste des membres de votre SE est à jour sur votre fiche
produit, c'est cette liste qui est utilisée pour te contacter en cas de
rapport de vulnérabilité.

### Le Bug Bounty peut-il perturber le fonctionnement de mon service ?

Bien qu'un des buts du Bug Bounty soit d'éprouver la robustesse de nos services,
les simulations d'attaque de type "**déni de service**" sont **exclues** du
contrat passé avec les hackeurs éthiques. Il est demandé aux hackeurs éthiques
participant au programme de ne pas réaliser de scans très agressifs (supérieurs
à 10 requêtes par seconde) afin de limiter les perturbations.

### Quand m'attendre à des tests de la part des hackeurs éthiques ?

Tout le temps. L'intérêt d'un programme de Bug Bounty est qu'à la différence
d'un test de sécurité classique (test d'intrusion), des tests sont
potentiellement réalisés toute l'année (dans la limite de la motivation des
hackeurs éthiques).

### Du coup, ma startup est protégée des vraies attaques ?

Non, le programme de Bug Bounty est une mesure de prévention **parmi** d'autres.
Tu dois continuer à t'assurer, avec ton équipe, que votre service est bien sécurisé.

### Puis-je, en tant que (ex) membre de la communauté beta.gouv.fr, participer au Bug Bounty ?

Non, du moins tu ne pourras pas être rémunéré au même titre que les hackeurs
éthiques.
Dans le cas ou tu identifierais une vulnérabilité, tu peux directement
prendre contact avec l'équipe de la startup d'État concernée.
