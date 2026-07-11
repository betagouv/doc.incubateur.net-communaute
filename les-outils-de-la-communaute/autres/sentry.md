---
description: >-
  Outil de monitoring d'erreurs et d'analyse de performances à destination des
  équipes de développement.
---

# Sentry

[![Sanity-check: B](https://img.shields.io/badge/sanity\_check-B-lightblue)](https://sanity-check.numericite.eu/posts/134c814b-5fec-4d7d-9795-27e01a071ceb) ![type: SAAS](https://img.shields.io/badge/type-SAAS-blue)

Sentry permet de réagir rapidement en cas d'incident, d'analyser un incident passé ou encore de de debugger des problèmes liés aux performances de votre application (APM).

L'équipe animation met à disposition une instance sur [https://sentry.incubateur.net](https://sentry.incubateur.net)

Vous pouvez [demander un accès via l'espace membre](https://espace-membre.incubateur.net/services/sentry).

### Recommandations

{% hint style="danger" %}
Sécurité : N'envoyez jamais de données personnelles dans Sentry.
{% endhint %}

| Type | Description                                                                                                                                                        |
| ---- | ------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| RGPD | J'ai lu la documentation sur [le comportement par défaut de Sentry avec les données](https://docs.sentry.io/platforms/javascript/data-management/sensitive-data/?) |
| RGPD | Je n'ingère pas de données personnelles                                                                                                                            |
| Tech | J'ajuste [mon `tracesSampleRate` pour la production](https://develop.sentry.dev/sdk/performance/#sdk-configuration)                                                |
| Tech | Je m'abonne aux alertes de mon projet                                                                                                                              |

{% embed url="https://tchap.gouv.fr/#/room/!yRVYHLleZfEReSOimE:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr" %}
Canal de discussion dédié à Sentry sur Tchap : Sentry
{% endembed %}

### Installation

Vous pouvez utiliser le SDK officiel Sentry de votre plateforme : [https://docs.sentry.io/platforms](https://docs.sentry.io/platforms)

{% hint style="info" %}
Intégration : Pensez à préciser les variables `environment`et `version` dans votre client pour pouvoir filtrer dans l'interface.
{% endhint %}

### Intégration GitHub

Pour profiter de [l'intégration GitHub + Sentry](https://sentry.io/integrations/github/) :

* faire une demande via l'[espace-membre](https://espace-membre.beta.gouv.fr/services/ops) (ou poser la question sur le canal [Demandes-OPS sur Tchap](https://tchap.gouv.fr/#/room/!VxFWdbcSlumKPvpVRP:agent.dinum.tchap.gouv.fr?via=agent.dinum.tchap.gouv.fr)) pour [ajouter votre repo dans l'application GitHub dédiée](https://github.com/organizations/betagouv/settings/installations/51044792)
* dans [les settings sentry](https://sentry.incubateur.net/settings/betagouv/integrations/github/3/) ajouter le repository à associer au projet

### Rate limiting

Des règles de rate-limiting sont en place pour éviter toute saturation de l'instance.

Le système de rate limiting est au niveau de nginx et la règle s'applique par projet. Ces limites sont appliquées par IP source sur l'endpoint d'ingestion des événements.

Paramètre | 	Valeur | 	Signification
----------|----------|------------------
Débit max |	`10 req/s` 	| 10 événements maximum par seconde par IP
Burst toléré |	`20 requêtes` |	Pic ponctuel accepté avant limitation
Comportement si dépassé |	`503 / drop` |	Les événements excédentaires sont perdus, sans mise en file

Si l'application envoie plus de 20 événements en quelques secondes depuis une même IP, les suivants sont silencieusement ignorés

Pour ne pas être impacté par ces limites :

1. Réduire le taux de traces au niveau du sdk

```python
sentry_sdk.init(
    dsn="https://<key>@sentry.example.com/<project_id>",
    sample_rate=1.0,           # Erreurs : garder à 100 %
    traces_sample_rate=0.1,    # Traces : 10 % suffit en production
```

Si le tracing (performance monitoring) n'est pas utilisé activement, désactivez-le complètement : `tracesSampleRate: 0` ou `enable-tracing: false`.

2. Filtrer les erreurs non pertinentes avec `beforeSend`

3. Séparer les environnements DSN distincte par environnement (prod,stagging...)

### Ressources

* [Sentry in 6 minutes](https://www.youtube.com/watch?v=4djseRVSan8)
* [Monitoring 101 for React Developers](https://www.youtube.com/watch?v=VVQ6akO9dqw)
