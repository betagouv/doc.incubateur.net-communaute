---
description: >-
  Cette page détaille les circonstances pouvant conduire à l'arrêt d'un produit
  et les procédures à suivre en fonction de ces circonstances.
---

# 5️⃣ Arrêt

Plusieurs circonstances peuvent amener un produit à s'arrêter, notamment :&#x20;

* le produit n'a pas suffisamment d'impact par rapport à son coût ;
* le produit n'est plus financé ;
* le produit n'est plus porté par le métier ;
* le produit n'est plus incarné par un intrapreneur.

> Un produit a besoin d'un bon intra, d'un bon sponsor métier et d'un bon problème.

## Contexte

Cette page a été écrite dans un contexte de réductions budgétaires, début 2025, amenant certaines administrations à devoir réduire leurs financements aux produits numériques voire en arrêter certains, malgré leur pertinence.

## Arrêt lorsqu'un produit n’a pas d’impact suffisant avéré

Dans le cas où le produit n’a pas d’impact avéré suffisant par rapport à son coût,  il est proposé la procédure suivante :

1. décision d’arrêt : lors du comité d’investissement, le comité décide de l’arrêt du financement de la startup par ses sponsors actuels.
2. post-mortem : rédaction d’un post-mortem détaillant les raisons de l’échec du produit à trouver son impact (cf modèle ci-dessous)

## Arrêt lorsqu'un produit n'a plus de budget

Dans le cas où le produit a de l’impact ou un potentiel d’impact avéré mais un budget insuffisant de l’administration sponsor, il est proposé la procédure suivante :

1. décision de liquidation : lors du comité d’investissement, le comité décide de l’arrêt du financement de la startup par ses sponsors actuels
2. mise en sauvegarde : l'équipe, appuyée par son incubateur, peut tenter de négocier avec l’administration sponsor un délai pour que l’équipe trouve un autre sponsor
3. redressement de la startup : l'équipe prépare un dossier de financement à présenter à d’autres sponsors
4. Option 1 : reprise de la startup : un autre sponsor est trouvé et le produit peut être poursuivi
5. Option 2 : pas de repreneur identifié : le produit est arrêté mais son impact ayant été avéré, il est placé en dormance (voir ci-dessous).

## Les conditions d’un arrêt réussi

En cas d'arrêt d'un produit, il est recommandé de suivre les étapes suivantes :

1. mettre à jour la fiche beta du produit : contexte, problème, solution, étape, membres, budget, code source, ...
2. rédiger un post-mortem détaillant les raisons de l’arrêt (cf modèle ci-dessous) et le publier en fin de fiche beta du produit ;
3. rédiger, en cas de mise en dormance, un dossier technique permettant une reprise du produit là où il s’est arrêté si besoin (contacter le référent technique de votre incubateur ou celui de la DINUM) et l'ajouter dans les documents de la fiche beta du produit (documents ouverts uniquement aux membres de la communauté beta) ;
4. si vous êtes intra, contacter l'incubateur de la DINUM qui propose un accompagnement visant la valorisation ou le réemploi de vos compétences numériques ;
5. si vous êtes freelance, contacter l'équipe animation de l'incubateur de la DINUM qui peut proposer un accompagnement selon votre profil.

## Modèle de post-mortem pour fiche beta

Le post-mortem est rédigé par l'intrapreneur et le coach en lien avec le responsable de portefeuille.

1. Les apprentissages
2. Pourquoi on s'arrête
3. Pour relancer le produit, voilà ce qu'on vous conseille (et pourquoi)

## Modèle de dossier technique de reprise du produit

### Documentation générale

☐ Documentation utilisateur du produit (pour le public)
☐ Documentation métier du produit (pour l'équipe interne)
☐ Tous liens ou fichiers concernant le produit 

### Architecture et infrastructure

☐ Schéma d’architecture du projet (frontend, backend, bases de données, services externes)  
☐ Description de l’hébergement (fournisseur, configuration, accès)   
☐ Explication des outils de monitoring et surveillance (Sentry, Matomo, logs, alertes)
☐ Liste des SAAS et comptes externes

### Code source et gestion des versions

☐ Modifier le readme pour indiquer le statut d'arrêt  
☐ Lien vers le dépôt Git et branches principales  
☐ Instructions pour installer et exécuter le projet en local  
☐ Liste des dépendances et versions utilisées  
☐ Documentation des tests et du CI/CD (GitHub Actions, GitLab CI, etc.)

### Base de données et données persistantes

☐ Schéma des bases de données et description des tables principales  
☐ Scripts de migration disponibles et bien documentés  
☐ Dump anonymisé ou jeux de données fictifs pour test  
☐ Assurez-vous d'avoir nettoyé vos machines et environnements des données.   

### APIs et intégrations externes

☐ Liste des endpoints API avec exemples de requêtes et de réponses (swagger?)  
☐ Documentation sur l’accès aux services externes (Brevo, autres API)  
☐ Explication des webhooks et des automatisations éventuelles  

### Accès et droits

☐ Explication des rôles et permissions des utilisateurs  (matrice de rôles)  
☐ Liste des accès aux outils tiers et procédure de récupération des credentials  
☐ Mettre les credentials sur vaultwarden  

### Contexte et choix techniques

☐ Motivation des choix technologiques majeurs  
☐ Principales dettes techniques et axes d’amélioration/refacto 
