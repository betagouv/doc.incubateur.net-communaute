# Créer un simulateur

## Pourquoi créer un simulateur ?

Pour expliquer le fonctionnement d'un dispositif, les administrations rédigent généralement de longues pages d'explications qui détaillent les multiples paramètres et cas particuliers s'appliquant. C'est alors à l'utilisateur de naviguer dans un mur de texte pour y extraire les bonnes informations le concernant. Ces fiches en texte sont alors reprises par des dizaines de sites privés, avec plus ou moins de valeur ajoutée.

En développant un simulateur on propose au contraire une interface interactive et ludique qui s'adapte à chaque situation particulière. Cela permet d'explorer tous les recoins du dispositif, tout en fournissant une implémentation de référence pouvant également servir d'API pour l'écosystème public et privé.

Plusieurs produits beta.gouv proposent ainsi des simulateurs sur des thématiques variées :

* [Datagir](https://datagir.ademe.fr) vous permet d'estimer votre impact sur le climat ;
* [Mon-entreprise](https://mon-entreprise.fr) de calculer vos cotisations sociales ;
* [Code du travail numérique](https://code.travail.gouv.fr) de déterminer la durée d'un préavis de départ à la retraite.

### Publicodes : une librairie commune pour créer des simulateurs

Tous ces simulateurs sont propulsés par la même brique technique appelée [Publicodes](https://publi.codes). Publicodes a initialement été conçu pour les besoins du simulateur de coût d’embauche (devenu ensuite mon-entreprise) avant d'en être extrait comme une librairie Javascript ré-utilisable par tous. [En savoir plus sur la genèse du projet](https://hackmd.io/@laem/genese-publicodes).

En effet, bien que les simulateurs beta.gouv concernent des domaines différents, nous avons réalisé qu'ils rencontrent des problématiques communes :

* Écrire et maintenir une base de règles lisible par le plus grand nombre (par exemple pour une validation par des experts métiers)
* Générer un formulaire ou une liste de questions en fonction des réponses précédentes
* Proposer automatiquement une documentation Web explorable du calcul

Si vous rencontrez aussi ces besoins, Publicodes peut être une bonne solution. Il est développé par des membres de la communauté beta.gouv et pourra être amélioré selon vos cas d'usage. La documentation est disponible sur[https://publi.codes](https://publi.codes) et il existe un [canal dédié](https://mattermost.incubateur.net/betagouv/channels/domaine-dev-publicodes) sur le [mattermost](https://app.gitbook.com/o/-LrIsEqqjEjdRXwfHPAD/s/-M4-Pru\_Xyamh27tzw85/\~/diff/\~/changes/Ib8tvxSZ6nm7GAXLBjr2/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/mattermost).

Note : si vous trouvez publicodes intéressant, mais pensez que vos besoins nécessitent quand même un développement spécifique, n'hésitez pas à [passer une tête](https://mattermost.incubateur.net/betagouv/channels/domaine-dev-publicodes) pour nous en parler :)

## **Comment itérer sur un simulateur ?**

Créer un simulateur implique d'écrire un _modèle_ du sujet traité. Dans un premier temps ce modèle peut comporter des approximations : calculs simplifiés, cas particuliers ignorés. L'idée est qu'un modèle approximatif vaut mieux que pas de modèle du tout.

À partir des retours utilisateurs il est ensuite possible de prioriser les améliorations à apporter au modèle, par exemple l'ajout de nouvelles questions sur un domaine non traité, ajout d'explications textuelles sur un calcul qui n'est pas compris, voire correction si vos utilisateurs ont identifié une erreur de calcul (ça arrive !).

## **Intégration iframe**

La plupart des sites n'ont pas les ressources nécessaires pour développer un simulateur complet. Il seront ravis d’intégrer votre outil directement sur leur site.

Pour cela il vous est possible de proposer une intégration iframe. Il s'agit d'une simple ligne de code à copier-coller dans son site pour y embarquer un outil de manière transparente. Il est même possible de personnaliser son apparence, par exemple changer les couleurs utilisées.

Exemple : [embarquer un simulateur mon-entreprise](https://mon-entreprise.urssaf.fr/int%C3%A9gration/iframe?module=salari%C3%A9)

En intégrant directement votre outil sur des sites tiers, vous maximisez le nombre d'utilisateurs potentiel — et avec un peu de chance vous pourrez même être directement intégré sur un site de presse en ligne, comme ce fut le cas sur Franceinfo qui [a intégré nosgestesclimat](https://www.francetvinfo.fr/meteo/climat/lutte-contre-le-rechauffement-climatique-comment-calculer-et-reduire-son-empreinte-carbone\_4301617.html).
