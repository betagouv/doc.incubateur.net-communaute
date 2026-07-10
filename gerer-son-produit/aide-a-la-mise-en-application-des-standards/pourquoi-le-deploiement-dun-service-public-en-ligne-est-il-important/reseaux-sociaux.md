# Mesure, rituels et outils : piloter son déploiement

### **1. La mesure : "Pas de donnée, pas de décision"**

Chez beta.gouv, on ne déploie pas au feeling. La mesure sert à prioriser : amplifier ce qui convertit, arrêter ce qui échoue.

* **La règle d'or** : Tout lien partagé (email, SMS, QR code, post LinkedIn, signature) doit être **traqué**.&#x20;
* **L'outil universel** : Utilisez les **UTM** (ou MTM). C'est un simple suffixe ajouté à vos URLs qui permet d'identifier la source et la campagne dans vos statistiques. Matomo a [un outil](https://fr.matomo.org/faq/tracking-campaigns-url-builder/) pour créer les URL mais il ne dispose pas d'historique, c'est à vous de l'alimenter.
* **Le réflexe** : Avant chaque action, demandez-vous : "Comment vais-je prouver l'impact de cet appel ou de ce mail dans mon dashboard ?"

> 🚩 **Signal d'alerte** : si la majorité du trafic Matomo est "Direct" ou inconnu, vous naviguez à l'aveugle.

### **2. Les rituels : Rythmer et arbitrer**

Le déploiement est une activité continue qui nécessite de la visibilité et des arbitrages fréquents.

* **La revue de stats** : Intégrez systématiquement l'analyse des données de déploiement dans vos points d'équipe. Tout le monde est concerné, on regarde les courbes d'usage et l'origine du trafic. Les rituels sont weekly **(objectif** : revue des actions, des résultats, et arbitrage) et mensuels (**objectif** : prendre du recul, analyser le ROI, ajuster la stratégie)
* **La culture du test** : Fixez-vous des objectifs à court terme (semaine ou mois). Un bon BizDev sait quand persévérer et quand couper une action inefficace pour concentrer son énergie sur 1 ou 2 leviers clés.
* **Transparence et ROI** : Le BizDev doit donner de la visibilité sur ses actions (prospection, partenariats) et en tirer des conclusions argumentées : "On a testé X, ça a généré Y, donc on continue/on arrête".
* **Évaluer son BizDev** : Un bon BizDev s'appuie sur les bons **outils**, **analyse ses résultats**, **ajuste sa stratégie** et **argumente ses choix avec des données**. Il sait prioriser 1-2 leviers clés, être transparent sur les enseignements tirés, et décider clairement ce qu'il faut continuer, ajuster ou arrêter.&#x20;

> 🚩 **L'avis de la communauté** : En cas de doute sur une stratégie, sollicitez un regard extérieur via le canal Tchap [Domaine-bizdev](https://tchap.gouv.fr/#/room/!LYLjHbBZdxMBOORgaJ:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr) pour identifier si le blocage vient de la méthode ou du produit.

### **3. La boîte à outils beta.gouv**

On privilégie des outils simples, collaboratifs et souvent gratuits au démarrage.

* **Suivi et Prospection** :
  * **Au début** : Un simple tableur (Grist) ou un Kanban (Trello) suffit pour gérer ses 100 premiers contacts.
  * **En accélération** : Quand le volume devient ingérable à la main, on passe sur un CRM (HubSpot, Pipedrive, Monday).
* **Communication et Acquisition** :
  * **Emailing** : Brevo (ex-Sendinblue) pour les envois ciblés.
  * **Prospection** : [Hunter.io](http://hunter.io/) pour trouver des contacts, LinkedIn pour le réseau.
  * **Visio / Webinaires** : Visio, Webinaire pour les démos collectives.
* **Analyse et Pilotage** :
  * **Matomo** : Pour mesurer l'usage réel sur le site (indispensable).
  * **Metabase** : Pour créer des dashboards d'impact visuels et partagés.
  * **URL Builder** : Pour générer vos liens traqués sans erreur.

#### Animation et collaboration

* **Tchap** canal [Domaine-bizdev](https://tchap.gouv.fr/#/room/!LYLjHbBZdxMBOORgaJ:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr) : entraide et partage d'expérience entre BizDev beta
* **FIgma** : ateliers collaboratifs
