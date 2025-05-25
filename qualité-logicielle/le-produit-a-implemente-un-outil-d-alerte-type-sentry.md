# Le produit a implémenté un outil d'alerte type Sentry

## Description

L'équipe surveille en temps réel les erreurs techniques de l'application.

Un outil de monitoring centralisé permet de détecter automatiquement
les dysfonctionnements et de diagnostiquer rapidement leur
origine. Cette surveillance proactive améliore la qualité du service
et réduit le temps de résolution des incidents.

L'outil collecte les erreurs frontend et backend avec leurs
métadonnées (contexte, pile d'exécution, fréquence) pour faciliter
l'investigation technique. Il alerte l'équipe selon des seuils
configurés pour éviter la saturation d'alertes.

## Critères

- Un outil de monitoring technique est configuré (Sentry ou équivalent)
- Les erreurs non gérées remontent automatiquement vers l'outil
- L'équipe reçoit des alertes configurées selon des seuils appropriés
- Les données sensibles sont anonymisées avant envoi vers l'outil

## Ressources

- [Guide Sillon - Monitoring](https://sillon.incubateur.net/docs/monitoring/)
- [Sentry](https://sentry.io/)
