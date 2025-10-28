# L'équipe a implémenté l'observabilité de son produit

## Description

Pour bien opérer votre produit il est essentiel de garantir la bonne
observabilité de celui-ci : savoir en temps réel ce qu'il émet,
comment il se comporte et les potentiels erreurs qu'il produit.

La bonne supervision de votre produit permet de rassurer l'équipe une
fois que le code source est en production, dans les mains de vos
utilisatrices et utilisateurs.

L'observabilité se joue à plusieurs niveaux :

### Capture et gestion des erreurs

Ces outils (type Sentry) permettent de capturer les erreurs non
traitées par votre code avec toutes leurs métadonnées (contexte, pile
d'exécution, fréquence). L'équipe peut alors surveiller et agir sur
les problèmes remontés par l'outil avec le maximum d'information.

### Mise à disposition des journaux applicatifs

Vous devez vous assurez que les journaux applicatifs émis par votre
application sont consultables. Ces journaux sont idéalement en
rotation (i.e un nouveau fichier toutes les X unités de temps/espace)
pour éviter une croissance infinie et des fichiers trop volumineux
pour être facilement analysés.

### Surveillance de la performance des applications (APM)

Pour garantir une bonne qualité de service il est essentiel de mesurer
la performance ressentie par vos utilisateurs au moyen de divers
métriques : temps moyen des requêtes,
[Apdex](https://fr.wikipedia.org/wiki/Apdex), pages lentes, etc.

## Critères

- Un outil de gestion d'erreurs est configuré
- Les journaux applicatifs sont consultables
- La performance de l'outil est surveillée

## Ressources

- [Guide Sillon - Monitoring](https://sillon.incubateur.net/docs/monitoring/)
- [Sentry - doc.incubateur.net](https://doc.incubateur.net/communaute/les-outils-de-la-communaute/autres-services/sentry)
