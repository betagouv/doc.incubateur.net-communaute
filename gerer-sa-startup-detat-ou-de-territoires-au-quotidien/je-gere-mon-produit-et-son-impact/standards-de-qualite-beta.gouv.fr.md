# Standards de qualité beta.gouv.fr

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

* une page /stats rend compte des mesures d'impact.
* le langage utilisé sur les interfaces est clair, direct et sans jargon.
* l'équipe développe le produit dans un esprit de sobriété, en priorisant les fonctionnalités les plus simple possible pour prouver l'impact sur les usagers \(par exemple : prioriser une FAQ bien documentée à un chatbot\)

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

{% hint style="info" %}
Les incubateurs du réseau beta.gouv.fr ont parfois des règles de sécurité spécifiques. Par exemple, la Fabrique des Affaires sociales a documenté les siens [ici](https://socialgouv.github.io/support/#/README).
{% endhint %}



