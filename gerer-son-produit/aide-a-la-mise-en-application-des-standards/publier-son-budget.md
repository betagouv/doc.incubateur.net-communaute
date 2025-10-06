---
description: >-
  La transparence budgétaire fait partie des valeurs de beta.gouv.fr. Publier le
  budget permet de mettre en rapport l'impact et le coût des services.
---

# Publier son budget

[Publier son budget fait partie de nos standards](https://github.com/betagouv/standards/blob/main/transparence/le-produit-communique-sur-son-budget.md). Pour vous aider dans cette tâche, l'équipe de beta.gouv.fr vous propose la méthologie suivante ainsi qu'un Grist (c.f fin de page) pour publier votre budget.

## Le référentiel de saisie

La saisie de votre budget repose sur plusieurs informations clés :

* l'année où est effectué la dépense, avec le montant en autorisation d'engagement (AE) et en crédit de paiement (CP)
* la catégorisation de la dépense : **quelle activité et quelle ressource concerne cette dépense** ?

Ci-dessous le détail la définition de chaque activité et chaque ressource possible. Ce référentiel a vocation à être commun à l'ensemble des produits numériques, y compris ceux ne travaillant pas en mode produit agile à impact afin de pouvoir efficacement comparer les coûts et sécuriser les budgets.

### Activités

Les activités concernent la nature où le métier associé à cette dépense : est-ce une dépense qui servira à déployer le service auprès de plus d'utilisateur ? à le développer ? à le sécuriser ?

| Activité                                                      | Description                                                                                                                                                                           |
| ------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Data**                                                      | Collecte, le stockage, l’analyse et la gestion des données.                                                                                                                           |
| **Hébergement non cloud**                                     | Infrastructure et maintenance pour des serveurs hébergés en interne ou en externe.                                                                                                    |
| **Hébergement cloud**                                         | Utilisation de services cloud (Scalingo, CleverCloud, …) pour héberger les applications et les données.                                                                               |
| **Ops**                                                       | Automatisation (IaC), administration et maintenance des infrastructures et des middlewares, suivi et exploitation des applications, mise en production avec validation de conformité. |
| **Réseau**                                                    | Équipements et services réseau (routeurs, VPN, bande passante, etc.).                                                                                                                 |
| **Gestion administrative**                                    | Gestion financière et de ressources humaines.                                                                                                                                         |
| **Sécurité**                                                  | Cybersécurité, protection des données, audits et conformité, homologations.                                                                                                           |
| **Déploiement / Communication / Relations institutionnelles** | Acquisition de nouveaux utilisateurs, gestion de partenariats, retours utilisateurs, marketing.                                                                                       |
| **Support**                                                   | Qualification, routage des incidents, résolution avancée, accompagnement des utilisateurs et correction des anomalies.                                                                |
| **Développeur**                                               | Écriture de lignes de code par des agents ou prestataires, récupération de code par achat de logiciel, licences et recours à des services en SaaS.                                    |
| **Manageur / MOA / Coaching / PO/PM / Pilotage**              | Intrapreneur, gestion de projet, spécifications fonctionnelles et coordination entre équipes, audit qualité et méthode, pilotage transverse.                                          |
| **Designer**                                                  | Design du service numérique.                                                                                                                                                          |
| **Autre**                                                     |                                                                                                                                                                                       |

### Ressources

Les ressources concernent le type de ressource mobilisé pour effectuer cette dépense : s'agit-il de payer un prestataire externe ? un agent public ? un logiciel ?

| Ressource                                                    | Description                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      |
| ------------------------------------------------------------ | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| **Personnel**                                                | Toutes les dépenses humaines internalisées, incluant rémunérations d’activité, cotisations et contributions sociales, prestations sociales, allocations sociales diverses, salaires et charges employeurs. Utilisez le superbrut basé sur le simulateur [mon-entreprise.](https://mon-entreprise.urssaf.fr/simulateurs/salaire-brut-net). En l'absence d'information sur le salaire, vous pouvez vous [référer à la grille DINUM.](https://www.numerique.gouv.fr/uploads/Circulaire%20n%C2%B06434-SG%20du%203%20janvier%202024%20-%20r%C3%A9f%C3%A9rentiel%20num%C3%A9rique.pdf) |
| **Prestations externes**                                     | Toutes les dépenses humaines externalisées, y compris prestations intellectuelles, emploi de freelances, forfaits, achats de services, assistance technique et honoraires de conseil.                                                                                                                                                                                                                                                                                                                                                                                            |
| **Matériel**                                                 | Achats, maintenance, locations et achats de petits matériels.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
| **Logiciel / SaaS / PaaS**                                   | Achats de logiciels, locations, redevances et licences.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| **Frais de structure (locaux, assurances, impôts et taxes)** | Dépenses liées aux locaux, assurances, impôts et taxes.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          |
| **Autre**                                                    |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                  |

## La saisie et la publication du budget

La saisie s'effectue sur un [Grist](https://grist.numerique.gouv.fr/o/docs/fTjFnK7Bhvuo/Depenses-numeriques/p/1) dédié via la vue "Renseignez votre budget"

Vous pouvez ensuite reporter les informations saisies dans Grist sur le site public de votre produit numérique si vous en avez un.

Enfin, rajoutez le lien vers le budget sur la fiche de votre startup dans l'espace membre. Accédez à la fiche de votre produit puis "Modifier les informations" puis indiquez l'URL de la page de votre site public dans le champ "URL du budget". Cette information apparaitra ensuite sur votre fiche produit beta.gouv. Si votre produit ne dispose pas d'un site public, vous pouvez simplement partager l'URL du [Grist](https://grist.numerique.gouv.fr/o/docs/fTjFnK7Bhvuo/Depenses-numeriques/p/1) où votre budget a été saisi.
