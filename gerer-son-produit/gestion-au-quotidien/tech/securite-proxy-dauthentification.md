# Sécurité : proxy d'authentification

En ajoutant un proxy d'authentification devant votre application, vous la rendez inaccessible aux utilisateurs non authentifiés, en vous appuyant sur des fournisseurs d'identité robustes (ex : ProConnect, Keycloak, GitHub…) qui disposent eux-mêmes de niveaux de sécurité très élevés (enrôlement, MFA...).

{% hint style="warning" %}
C’est **indispensable si vous déployez un outil open-source type metabase, n8n, airflow…** car cela permet de vous protéger des scans intempestifs et donc de l’exploitation de beaucoup de failles de sécurité.
{% endhint %}

Plusieurs solutions existent, cette page présente une implémentation avec [oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) qui agit comme un simple “filtre” devant votre application. Les utilisateurs non authentifiés n’atteignent même pas votre application.

{% hint style="info" %}
Par défaut [oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) n’impacte pas l’authentification de l’applicaton elle-même s’il y en a une. L’utilisateur doit s’identifier normalement sur l’application finale une fois accepté par l’authentification oauth.
{% endhint %}

👉 Voir aussi : [Slides de présentation oauth2-proxy](https://pad.numerique.gouv.fr/p/H8tbKQ5jQ)

### Fournisseurs d’identité <a href="#fournisseurs-didentite" id="fournisseurs-didentite"></a>

[oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) fonctionne avec n’importe quel fournisseur d’identitié standard (OIDC):

* **ProConnect**: filtres par email ou domaine email
* **GitHub**: filtres par organisation, par personne, ou par équipe
* **KeyCloak**: filtres par role, groupe, domaine email

Et [bien d’autres](https://oauth2-proxy.github.io/oauth2-proxy/configuration/providers/)

### Setup avec scalingo <a href="#setup-avec-scalingo" id="setup-avec-scalingo"></a>

Vous pouvez utiliser [ce buildpack](https://github.com/betagouv/oauth2-proxy-buildpack) qui vous permet d’ajouter oauth2-proxy dans votre déploiement.

### Setup avec clever cloud <a href="#setup-avec-clever-cloud" id="setup-avec-clever-cloud"></a>

Clever cloud propose une fonctionnalité dédiée, [“Request Flow”](https://www.clever.cloud/developers/doc/develop/request-flow/) qui vous permet d’ajouter [oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) avec simplement des variables d’environnement.

### Setup avec Docker/Kubernetes <a href="#dockerkubernetes" id="dockerkubernetes"></a>

[oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) s’intègre parfaitement dans une stack docker ou kubernetes car c’est une appli “stateless” configurable par fichier, variables d’environnement ou annotations.

***

👉 Si vous voulez en parler, rejoignez le [canal Tchap Betagouv/Domaine-secu](https://tchap.gouv.fr/#/room/!XPllVpJRcpZCaSiaXW:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr\&via=agent.dev-durable.tchap.gouv.fr\&via=agent.social.tchap.gouv.fr)
