# Kit de démarrage pour lancer son produit minimum viable

Ton objectif pour les 6 premiers mois est d'avoir de l'impact sur au moins un usager, en écrivant du code répondant aux standards de beta.gouv.fr en terme de front \(accessibilité\), back \(sécurité\) et données utilisateurs \(RGPD\).

Pour cela, nous mettons à la disposition des Startups d'État un "Kit de démarrage", qui comprend un ensemble d'outils :

* **Langages/Frameworks de référence** : Ruby \(RoR\), Javascript \(Express\) et Python \(Django\). Ces langages ont été selectionnés pour leur flexibilité, leur sécurité et la facilité de prise en main en cas de passage à l'échelle. Tu trouveras aussi plus facilement des compétences pour t'aider sur ces langages. Si tu as des besoin qui ne sont pas couverts par ces langages, discutes-en avec l'équipe technique de BetaGouv.
* > Si tu utilises Express, tu peux directement cloner le repo [du template](https://github.com/betagouv/template-design-system-de-l-etat) pour avoir rapidement une V0 de votre site.
* **Gestionnaire de versions** : Git avec [le compte github de beta.gouv.fr](https://github.com/betagouv)
* **Design system** : éléments ré-utilisables ; et dont l'accessibilité a déjà été travaillée

  > Le [design system](https://gouvfr.atlassian.net/wiki/spaces/DB/pages/223019574/D+veloppeurs) est visible sur [template.incubateur.net](https://template.incubateur.net)

* **Hébergement** : Le choix de l'hébergement dépend entre autre du type de données que vous allez héberger.  Les options disponibles sont décrite dans la section dédiée à l'[infra](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra#services-pratiques-pour-lancer-un-site-web)
* **CI / CD** : Circle CI lié à l'organisation betagouv sur github. De plus en plus d'équipe utilisent GitHub Actions.
* **Suivi des erreurs** : Nous avons un compte Sentry à disposition des équipes \(Vous pouvez demander à être invité sur [\#incubateur-ops](https://mattermost.incubateur.net/login?redirect_to=%2Fbetagouv%2Fchannels%2Fincubateur-ops)
* **Analytics** : [stats.data.gouv.fr](https://stats.data.gouv.fr)

  > Matomo est hébergé par nos soins. Ce service est respectueux des données des utilisateurs, et le configurer comme préconisé par la CNIL permet de suivre son audience sans avoir à mettre un bandeau avertissant les visiteurs sur le dépôt de cookies. Attention ! Le nombre de visiteurs sur votre site est rarement l'équivalent d'une mesure d'impact.

* **Langages/Frameworks de référence** : Javascript \(Express\), Python \(Django\) et Ruby \(ROR\). Ces langages ont été selectionnés pour leur flexibilité, leur sécurité et la facilité de prise en main en cas de passage à l'échelle. Tu trouveras aussi plus facilement des compétences pour vous aider sur ces langages. Si tu as des besoin qui ne sont pas couverts par ces langages, discutes-en avec l'équipe technique de BetaGouv.
* > Si tu utilises Express, vous pouvez directement cloner le repo [du template](https://github.com/betagouv/template-design-system-de-l-etat) pour avoir rapidement une V0 de votre site.
* **Gestionnaire de versions** : Git avec [le compte github de beta.gouv.fr](https://github.com/betagouv)
* **Design system** : éléments ré-utilisables ; et dont l'accessibilité a déjà été travaillée

  > Le [design system](https://gouvfr.atlassian.net/wiki/spaces/DB/pages/223019574/D+veloppeurs) est visible sur [template.incubateur.net](https://template.incubateur.net)

* **Hébergement** : Le choix de l'hébergement dépend entre autre du type de données que vous allez héberger.  Les options disponibles sont décrite dans la section dédiée à l'[infra](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/infra#services-pratiques-pour-lancer-un-site-web)
* **CI / CD** : Circle CI lié à l'organisation betagouv sur github. De plus en plus d'équipe utilisent GitHub Actions.
* **Suivi des erreurs** : Nous avons un compte Sentry à disposition des équipes \(Vous pouvez demander à être invité sur [\#incubateur-ops](https://mattermost.incubateur.net/login?redirect_to=%2Fbetagouv%2Fchannels%2Fincubateur-ops)
* **Analytics** : [stats.data.gouv.fr](https://stats.data.gouv.fr)

  > Matomo est hébergé par nos soins. Ce service est respectueux des données des utilisateurs, et le configurer comme préconisé par la CNIL permet de suivre son audience sans avoir à mettre un bandeau avertissant les visiteurs sur le dépôt de cookies. Attention ! Le nombre de visiteurs sur votre site est rarement l'équivalent d'une mesure d'impact.

## Standards de qualité beta.gouv.fr

Les standards de qualité beta.gouv.fr sont référencés à la page ci-dessous. Attention : si tu ne les suis pas, on pourra te le reprocher et il sera nécessaire de le justifier.

{% page-ref page="../../je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr.md" %}

## Contraintes légales

Dans le cadre du travail avec l'administration, il est important de connaitre les contraintes légales en terme de Sécurité, RGPD et Accessibilité.

* Si tu souhaites les consulter tu pourras les trouver sur la page dédiée au [RGPD et sécurité](../../je-securise-mon-produit/guide-rgpd-et-securite.md) et à l'[accessibilité](../../jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/)
* Nous proposons aussi une formation dédiée : contactez Anna-Livia pour plus d'informations.

