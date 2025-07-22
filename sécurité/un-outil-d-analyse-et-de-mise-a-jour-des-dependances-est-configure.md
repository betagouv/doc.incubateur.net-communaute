# Un outil d'analyse et de mise à jour des dépendances est configuré

## Description

Votre produit n'est pas autonome : il dépend et profite de plusieurs
dizaines voir centaines de librairies qui vous permettent de vous
concentrer sur le développement de votre produit plutôt que de
reconstruire les mêmes briques de la grande pyramide du web.

Cette vélocité démultipliée vient avec un coût : celui de surveiller
en permanence ces dépendances qui sont comme votre produit sujettes à
des vulnérabilités, que ce soit par inadvertance ou par exploitation :
le flux des alertes levées dans le monde logiciel est continu, que ce
soit [la liste des alertes levées recensées par
GitHub](https://github.com/advisories) ou [celles recensées par
l'ANSSI](https://cert.ssi.gouv.fr/alerte/).

Pour assurer la sécurité de votre projet, nous recommandons l'usage
d'outils comme [Dependabot](https://github.com/dependabot) qui
permettent de surveiller et de proposer automatiquement la mise à jour
de ces dépendances dès que nécessaire.

Enfin notez que le moteur de votre projet (ex : NodeJS, Python, Ruby)
compte aussi comme une dépendance. Vous devez vous maintenir à minima
sur des versions dont le support et l'évolution sont garanties par ses
éditeurs (versions LTS, long-term support) et sortir le plus
rapidement possible des versions qui ont atteint leur fin de vie (EOL,
end of life).

## Critères

- Un outil d'analyse et de mise à jour des dépendences est configuré
- Le moteur de langue de votre projet est à minima LTS

## Ressources

- [Guide de démarrage Dependabot - github.com](https://docs.github.com/fr/code-security/getting-started/dependabot-quickstart-guide)
- [Annuaire des versions LTS/EOL - endoflife.date](https://endoflife.date/)
