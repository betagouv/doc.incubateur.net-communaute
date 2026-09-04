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

[oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) fonctionne avec n’importe quel fournisseur d’identitié standard (OIDC); vous devez créer une app "oauth" sur le fournisseur de votre choix.

* **ProConnect**: filtres par email ou domaine email
* **GitHub**: filtres par organisation, par personne, ou par équipe
* **KeyCloak**: filtres par role, groupe, domaine email

Et [bien d’autres](https://oauth2-proxy.github.io/oauth2-proxy/configuration/providers/)

### Setup avec scalingo <a href="#setup-avec-scalingo" id="setup-avec-scalingo"></a>

Vous pouvez utiliser [ce buildpack](https://github.com/betagouv/oauth2-proxy-buildpack) qui vous permet d’ajouter oauth2-proxy dans votre déploiement.

Exemple [pour metabase](https://github.com/betagouv/metabase-scalingo/pull/8) ou [pour n8n](https://github.com/betagouv/n8n-scalingo/pull/3)

### Setup avec clever cloud <a href="#setup-avec-clever-cloud" id="setup-avec-clever-cloud"></a>

Clever cloud propose une fonctionnalité dédiée, [“Request Flow”](https://www.clever.cloud/developers/doc/develop/request-flow/) qui vous permet d’ajouter [oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) avec simplement des variables d’environnement.

### Setup avec Docker/Kubernetes <a href="#dockerkubernetes" id="dockerkubernetes"></a>

[oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/) s’intègre parfaitement dans une stack docker ou kubernetes car c’est une appli “stateless” configurable par fichier, variables d’environnement ou annotations.

### Variables d'environnement

Toutes les variables sont définies dans [la doc oauth2-proxy](https://oauth2-proxy.github.io/oauth2-proxy/configuration/overview) en fonction de votre fournisseur d'identité.

#### variables générales

```
OAUTH2_PROXY_CLIENT_ID=
OAUTH2_PROXY_CLIENT_SECRET=
OAUTH2_PROXY_COOKIE_DOMAINS=[host de votre application]
OAUTH2_PROXY_COOKIE_SECRET=[secret 32 chars]
OAUTH2_PROXY_COOKIE_SECURE=true
OAUTH2_PROXY_REDIRECT_URL=https://[host de votre application]/oauth2/callback
OAUTH2_PROXY_REVERSE_PROXY=false
OAUTH2_PROXY_SKIP_PROVIDER_BUTTON=false
OAUTH2_PROXY_UPSTREAMS=http://127.0.0.1:3000 # url interne du service à protéger
OAUTH2_PROXY_EMAIL_DOMAINS=* # pour restreindre les domaines emails autorisés
```

#### pour Github

Créez une app Oauth dédiée dans les paramètres de votre organisation GitHub.

```
OAUTH2_PROXY_GITHUB_ORG=xxx # restreindre aux membres d'une orga
OAUTH2_PROXY_GITHUB_TEAM=xxx # OU restreindre aux membres d'une team
OAUTH2_PROXY_GITHUB_REPO=xxx # OU restreindre aux membres d'un repo
OAUTH2_PROXY_PROVIDER=github
OAUTH2_PROXY_SCOPE=read:org user:email
```

#### pour ProConnect

Créez votre app oauth via [l'espace partenaires ProConnect](https://partenaires.proconnect.gouv.fr/).

```
OAUTH2_PROXY_OIDC_ISSUER_URL=https://auth.agentconnect.gouv.fr/api/v2 # endpoint de prod
OAUTH2_PROXY_PROMPT=login
OAUTH2_PROXY_PROVIDER=oidc
OAUTH2_PROXY_SCOPE=openid given_name usual_name email profile
```

---

{% hint style="info" %}
La variable `OAUTH2_PROXY_SKIP_AUTH_ROUTES` permet d'exclure certaines routes de l'authentification.

Limitez au maximum et utilisez des patterns strictis, ex `^/hooks/.*$`
{% endhint %}

***

👉 Si vous voulez en parler, rejoignez le [canal Tchap Betagouv/Domaine-secu](https://tchap.gouv.fr/#/room/!XPllVpJRcpZCaSiaXW:agent.dinum.tchap.gouv.fr)
