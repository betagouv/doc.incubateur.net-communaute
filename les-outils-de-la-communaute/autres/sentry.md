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

{% embed url="https://mattermost.incubateur.net/betagouv/channels/incubateur-sentry" %}
Canal de discussion dédié à Sentry sur mattermost : incubateur-sentry
{% endembed %}

### Installation

Vous pouvez utiliser le SDK officiel Sentry de votre plateforme : [https://docs.sentry.io/platforms](https://docs.sentry.io/platforms)

{% hint style="info" %}
Intégration : Pensez à préciser les variables `environment`et `version` dans votre client pour pouvoir filtrer dans l'interface.
{% endhint %}

### Intégration GitHub

Pour profiter de [l'intégration GitHub + Sentry](https://sentry.io/integrations/github/) :

* demander dans [\~incubateur-demandes-ops](https://mattermost.incubateur.net/betagouv/channels/incubateur-demandes-ops) à [ajouter votre repo dans l'application GitHub dédiée](https://github.com/organizations/betagouv/settings/installations/51044792)
* dans [les settings sentry](https://sentry.incubateur.net/settings/betagouv/integrations/github/3/) ajouter le repository à associer au projet

### Ressources

* [Sentry in 6 minutes](https://www.youtube.com/watch?v=4djseRVSan8)
* [Monitoring 101 for React Developers](https://www.youtube.com/watch?v=VVQ6akO9dqw)
