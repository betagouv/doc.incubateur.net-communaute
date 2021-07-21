# Proposer un nouvel outil à la communauté

## Je travaille sur une Startup d'Etat \(SE\) et je vois un besoin qui pourrait être partagé par d'autres SE

Je peux : 

* Ouvrir un canal de discussion et inviter des autres SE à échanger dessus
* Contribuer à un produit open source existant pour qu'il réponde aux besoins des SE
* Créer un commun réutilisable

## J'ai trouvé un super outil qui répondrait à tous mes besoin mais c'est un SaaS privé. Est-ce que je peux l'utiliser sur ma startup d'Etat ?

Les startup d’Etat suivent des méthodes \(notamment les méthodes agile ou Lean\) qui se distinguent de la conduite de projets informatiques “classiques” dans l’Etat, et rendent possibles des pivots et itérations sur le produit. Dans le but de diminuer le risque d’échec, les équipes ne présagent pas de la solution et des fonctionnalités finales avant d’avoir recueilli des preuves d’impact sur le terrain. Aussi est-il fréquent de lancer des premiers traitements de données dans des périmètres définis et limités \(territoire, durée, nombre de personnes, quantité de données…\) tout en initiant en parallèle les différentes mises en conformité \(protection des données personnes, accessibilité, sécurité, etc.\).

Cette méthodologie spécifique n’entraîne en aucune manière une prise à la légère des mises en conformité, qui sont des objectifs majeurs non négociables. Au contraire, l’objectif est de sensibiliser les équipes et les développeurs aux risques liés au traitement de données et de les intégrer aux pratiques de travail quotidiennes, plutôt que de les considérer comme des formalités administratives ou de les sous-traiter.

### Si le service voit passer des données personnelles

Il convient donc de s'assurer de se poser les questions suivante losqu'on souhaite intégrer ce type d'outil  : 

* pourquoi envoyer des informations personnelles des usagers de service public à des services tiers ?
* Est-ce que une personne peut être réidentifiée à partir des informations que tu collectes ?

Si tu continues dans cette voie, il faut informer clairement ton usager, lui permettre de se désengager, lui permettre de récupérer toutes les données le concernant ...

Puis, il faudra en parler dans l'analyses d'impact relatives à la protection des données \(AIVP\) et lors de l'homologation

### Sur les bandeaux de cookies :

La CNIL a apporté de nouvelles recommandations en matière de politique de cookies et de tracking. Trois types de cookies sont désormais définis :

**1. Traceurs strictement nécessaires au bon fonctionnement de la plateforme :**

* Exemples : authentification, mémorisation de panier d’achat, choix de la langue, personnalisation de l’interface, équilibrage de la charge…
* Solution : pas de bandeau cookies, seule une formule dans la politique de confidentialité est nécessaire.

**2. Traceurs de mesure d’audience anonymisée :**

* Exemple : Matomo anonymisé.
* Solution : pas de bandeau cookies, seule une formule dans la politique de confidentialité est nécessaire + ajouter la possibilité de s’y opposer.

**3. Tous les cookies tiers :**

* Exemple : Analytics non anonymisés, fonts & images… Tout le reste qui n’est pas “strictement nécessaire” au fonctionnement du site.
* Solution : un bandeau cookies qui répond à toutes les recommandations CNIL \(possibilité de paramétrer chaque cookie, etc.\).

{% page-ref page="../../gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-securise-mon-produit/" %}

## Je travaille sur une SE et je monte une startup à côté.  j'aimerais que les startup-d'état intègre ma solution.

Les startup d’Etat sont financées par de l’argent public et ont pour but de développer et d’améliorer la réalisation des missions de service public de l’administration. Dans ce cadre, ce qui est produit par les équipes répondent à deux impératifs :

* le premier étant un impératif légal \([loi CADA](https://www.cada.fr/connaitre-la-loi-cada) notamment\), répondant aux règles des “documents administratifs” et de l’_open data_, obligeant à “ouvrir” toute donnée produite dans le cadre de la réalisation de la mission de service public . Par exemple, les codes sources ainsi développés pour créer des nouveaux services publics numériques répondent à ces obligations.
* le second étant un impératif éthique, répondant aux règles édictées par la communauté beta.gouv sur l’ouverture, le partage et la valorisation des données publiques \(voir le [Manifeste](https://beta.gouv.fr/approche/manifeste) & le [Kit de démarrage des stratups](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/la-vie-dune-se/construction/kit-de-demarrage#standards-de-qualite-logicielle)\).

**Aussi, toujours selon ces principes, il est formellement interdit de se servir du cadre administratif des startup d’Etat pour développer des projets personnels et privés, qu’ils aient une vocation commerciale ou non. En cas de doute ou pour toute question à ce sujet, n’hésitez pas à solliciter le chan ~domaine-juridique.  
Tout développement de produit devra être guidé par l’intérêt général et la mission de service public, et devra laisser son code en open source.**

