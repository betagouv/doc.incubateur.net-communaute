# Kit de démarrage

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

{% hint style="info" %}
Un "**standard**" c’est un critère d’évaluation explicite de quelque chose qu’on fait ensemble. Elle permet d'introduire une notion de jugement : “_ce qu’on a fait ici c’est pas au standard, il va falloir le rattraper_”. 
{% endhint %}

## Standard de qualité produit

* L'équipe est pilotée par un processus de design proche des usagers : il est normal pour les dévelopeur•euses d'aller à la rencontre des usagers, et d'inviter des usagers aux séances de design.

  > L'équipe Aidants Connect se demande comment organiser la liste des usagers sur son service. Ils invitent Sandrine à leur atelier pour voir avec elle la façon dont elle utilise cette liste aujourd'hui et les filtres et option de tri dont elle a besoin.

* l'équipe est à l'écoute des usagers et accessible :
  * pas d'adresses mail "no reply"
  * répond à chaque demande d'un usager
  * adopte une posture humble et servicielle
* les sites sont sécurisés par SSL

  > Cette option est disponible en un clic sur Scalingo.

* Une page /stats rend compte des mesures d'impact.
* Le langage utilisé sur les interfaces est clair, direct et sans jargon.
* L'équipe développe le produit dans un esprit de sobriété, en priorisant les fonctionnalités les plus simple possible pour prouver l'impact sur les usagers \(par exemple : prioriser une FAQ bien documentée à un chatbot\)

## Standards de qualité logicielle

* Le code source est ouvert, y compris à la contribution externe.
* Le code est instrumenté par des tests automatisés.
* Le code est déployé fréquemment, idéalement en continu.
* Le code est écrit en utilisant les standards du langage \(ex : pep8 en python\) et du framework.

## Standard de sécurité

* Activer le 2FA sur tous vos services
* Utiliser un gestionnaire de mots de passe pour stocker vos mots de passe
* S’imposer des mots de passe longs \(20 caractères minimum\), complexes et uniques par service
* Activer les HTTPS Security Headers et ne pas utiliser les attributs "style" en html ni embarquer du javascript dans le HTML
* Créé un compte par personne et éviter de partager un compte si c'est possible de faire autrement
* Activer la vérification de failles de sécurité et la surveillance des dépendances \(Dépendabot\) sur Github

## Contraintes légales

Dans le cadre du travail avec l'administration, il est important de connaitre les contraintes légales en terme de Sécurité, RGPD et Accessibilité.

* Si vous souhaitez les consulter vous pourrez les trouver sur la page dédiée au [RGPD et sécurité](../../je-securise-mon-produit/guide-rgpd-et-securite.md) et à l'[accessibilité](../../jameliore-le-design-et-lexperience-utilisateur/accessibilite-et-rgaa/)
* Nous proposons aussi une formation dédiée : contactez Anna-Livia pour plus d'informations.

