# Kit de démarrage pour coder son produit minimum viable

Votre objectif pour les 6 premiers mois est d'avoir de l'impact sur au moins un usager, en écrivant du code répondant aux standards de beta.gouv.fr en terme de front \(accessibilité\), back \(sécurité\) et données utilisateurs \(RGPD\).

Pour cela, nous mettons à la disposition des Startups d'État un "Kit de démarrage", qui comprend un ensemble d'outils :

* **Gestionnaire de versions** : avec [le compte github de beta.gouv.fr](https://github.com/betagouv)
* **Design system** : éléments ré-utilisables ; et dont l'accessibilité a déjà été travaillée

  > Le [design system](https://gouvfr.atlassian.net/wiki/spaces/DB/pages/223019574/D+veloppeurs) est visible sur [template.incubateur.net](https://template.incubateur.net)

* **Hébergement** : nous préconisons [Scalingo](https://scalingo.com/fr) \(entreprise référencée à l'UGAP et donc mobilisable dans le respect du code de la commande publique\), avec un hebergement Secnumcloud

  > Scalingo est un PaaS qui permet de lancer son application en poussant son code sur un serveur via git.

* **CI / CD** : Circle CI lié à l'organisation betagouv sur github
* **Analytics** : [stats.data.gouv.fr](https://stats.data.gouv.fr)

  > Matomo est hébergé par nos soins. Ce service est respectueux des données des utilisateurs, et le configurer comme préconisé par la CNIL permet de suivre son audience sans avoir à mettre un bandeau avertissant les visiteurs sur le dépôt de cookies. Attention ! Le nombre de visiteurs sur votre site est rarement l'équivalent d'une mesure d'impact.

* **Langages/Frameworks de référence** : Ruby \(RoR\), Javascript \(Express\) et Python \(Django\). Ces langages ont été selectionnés pour leur flexibilité, leur sécurité et la facilité de prise en main en cas de passage à l'échelle. Vous trouverez aussi plus facilement des compétences pour vous aider sur ces langages. Si vous avez des besoin qui ne sont pas couverts par ces langages, discutez-en avec l'équipe technique de BetaGouv.

  > Si vous utilisez Express, vous pouvez directement cloner le repo [du template](https://github.com/betagouv/template-design-system-de-l-etat) pour avoir rapidement une V0 de votre site.

## Standards de qualité beta.gouv.fr

Les standards de qualité beta.gouv.fr sont référencés à la page ci-dessous. Attention : si vous ne les suivez pas, on pourra vous le reprocher et il sera nécessaire de le justifier.

{% page-ref page="../../je-gere-mon-produit-et-son-impact/standards-de-qualite-beta.gouv.fr.md" %}

## Contraintes légales

Dans le cadre du travail avec l'administration, il est important de connaitre les contraintes légales en terme de Sécurité, RGPD et Accessibilité.

* Si vous souhaitez les consulter vous pourrez les trouver sur la page dédiée au [RGPD et sécurité](../../je-securise-mon-produit/guide-rgpd-et-securite.md) et à l'[accessibilité](../../jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/)
* Nous proposons aussi une formation dédiée : contactez Anna-Livia pour plus d'informations.

