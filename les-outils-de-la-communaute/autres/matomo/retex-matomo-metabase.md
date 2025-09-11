# Matomo vers Metabase : RETEX

Ce document permettra d'aider les utilisateur·ices de Matomo qui souhaite passer par un outil de dataviz pour de l'analyse statistique sans les contraintes UX de Matomo.

En général, l'idée est d'utiliser l'API Matomo pour scrapper les données utiles et peupler une db postgres requêtable via Matomo. 

### Nos Gestes Climat - qques events précis, sans le module "Live"/"User ID tracking"

- Configuration ["sans consentement"](https://doc.incubateur.net/communaute/les-outils-de-la-communaute/autres-services/matomo#recommandations-pour-utiliser-matomo-sans-banniere-de-consentement-aux-cookies).

- Besoin d'accéder facilement à certaines données, en terme d'ergonomie, pour toutes les personnes de l'équipe (pas seulement les profils très tech).
- Les données en question :
    - Le nombre de visites
    - Le nombre de simulations débutées (event matomo)
    - Le nombre de simulations terminées (event matomo)

    Que l'on souhaite suivre de différentes manières :
    - Au global
    - Sur une période donnée
    - Selon le canal
    - Selon le referrer (referrer pris en compte si plus de 10 visites dans la journée)
    - Selon le device
    - Si Iframe ou non
    
    On pourrait presque associer cette manière de faire à une simplification des segments classiquement utilisés sur matomo.
    
- Dès lors, le schéma de la base est assez simple et on a ce type de tableau :

![](https://storage.gra.cloud.ovh.net/v1/AUTH_0f20d409cb2a4c9786c769e2edec0e06/padnumerique/uploads/79709136-ca53-47d5-bdb3-2973887a59cc.png)

- Mise en place d'un CRON pour récupérer ces données quotidiennement

- Le Dashboard final ressemble à ça : http://metabase.nosgestesclimat.fr/public/dashboard/35b387ea-c66c-4086-83ce-7394cf8f8368.

- Bonus: c'est très pratique pour avoir stats.data et stats.beta au même endroit, notamment pour observer une northstar de projet sans avoir à le code"r en dur dans la page stats.

- Code : https://github.com/incubateur-ademe/nosgestesclimat-server/tree/main/src/adapters/matomo


## Incubateur Beta - matomo-to-pg

Il est possible de mettre en place matomo-to-pg pour exporter les données d'une site_id vers un postgres. ca se fait via une tache périodique qui doit avoir les droits en lecture sur la base matomo d'origine. script d'export a mettre en place par l'équipe animation. cf https://github.com/betagouv/matomo-to-pg

Tables créées: https://github.com/betagouv/matomo-to-pg/blob/main/src/target.d.ts
