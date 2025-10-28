# 000 - Utilisation des Markdown Architectural Decision Records (MADR)

Cet ADR est une traduction automatique du template disponible à sa
source : <https://github.com/adr/madr/tree/develop/template>.

## Contexte et problème

Nous souhaitons enregistrer les décisions architecturales prises dans
ce projet, que ces décisions concernent l'architecture («
architectural decision record », ADR), le code ou d'autres
domaines. Quel format et quelle structure ces enregistrements
doivent-ils suivre ?

## Options considérées

* [MADR](https://adr.github.io/madr/) 4.0.0 – Les Markdown
  Architectural Decision Records
* [Le modèle de Michael
  Nygard](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions)
  – La première incarnation du terme « ADR »
* [Sustainable Architectural
  Decisions](https://www.infoq.com/articles/sustainable-architectural-design-decisions)
  – Les Y-Statements
* Autres modèles listés sur <https://github.com/joelparkerhenderson/architecture_decision_record>
* Sans forme – Aucune convention de format et de structure

## Décision

Option choisie : « MADR 4.0.0 », parce que :

* Les hypothèses implicites doivent être rendues explicites. La
  documentation de conception est importante pour permettre aux gens de
  comprendre les décisions par la suite. Voir aussi ["A rational design
  process: How and why to fake
  it"](https://doi.org/10.1109/TSE.1986.6312940).
* MADR permet de capturer de manière structurée n'importe quelle
  décision.
* Le format MADR est léger et correspond à notre style de développement.
* La structure MADR est compréhensible et facilite l'utilisation et la
  maintenance.
* Le projet MADR est vivant.
