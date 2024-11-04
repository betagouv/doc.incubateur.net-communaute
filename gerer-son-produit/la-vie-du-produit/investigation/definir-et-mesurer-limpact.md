---
hidden: true
---

# ☄️ Définir et mesurer l'impact

## Petit guide de la mesure d'impact <a href="#pourquoi-mesurer-un-impact" id="pourquoi-mesurer-un-impact"></a>

Une ébauche de guide de la mesure d'impact est disponible [à ce lien](https://docs.google.com/presentation/d/1SkTz20qNuOh3rGJZ1vGqStvlXHaKu\_7zsnmrW997xn4/edit?usp=sharing).

## Pourquoi mesurer un impact ? <a href="#pourquoi-mesurer-un-impact" id="pourquoi-mesurer-un-impact"></a>

« _Plus un indicateur quantitatif est utilisé pour prendre des décisions, plus il va être manipulé et plus son usage va aboutir à corrompre le processus qu’il était censé améliorer._ » (loi de Campbell, 1976). Il est en effet clair que si une administration se voyait responsable de publier un « taux de satisfaction » ou un « coût par transaction », ces mesures deviendraient un objectif de facto, que ce soit vis-à-vis du gouvernement ou de la société civile. Ainsi, il faut être extrêmement attentif à ce que les mesures soient celles d’un impact réel et non des mesures d’efficience interne, aux effets délétères assurés.

Certaines mesures d’impact (Key Performance Indicators, KPI) semblent pourtant capturables assez facilement :

* "Une [course sur le.taxi](https://api.taxi/stats) génère en moyenne 15€ de valeur ajoutée"
* "Le temps moyen de résolution d’un dossier MDPH en ligne par rapport au temps moyen de dénouement sans le service"
* "1 candidature MPS, c’est 2 heures de gagnées en moyenne pour une entreprise (ceci masquant des différences fortes : quelques minutes pour une entreprise déjà experte, et plusieurs jours pour une PME primo-accédante à la commande publique)"

Malheureusement, l’impact réel est souvent difficile à mesurer. La difficulté principale dans la construction de la métrique pour la plupart des produits vient du fait que le parcours utilisateur se finit hors du produit et qu’on ne peut donc pas savoir si l’objectif est atteint au-delà des clics : l’usager a-t-il obtenu le RSA après une simulation sur Mes Aides ? A-t-il suivi la formation trouvée sur La Bonne Formation ? Cette formation a-t-elle accéléré son retour à l’emploi par rapport au délai moyen ?

Le **risque est ainsi de mesurer ce que l’on peut mesurer plutôt que ce qu’il faudrait mesurer**. Notre approche est de nous accorder sur une métrique stratégique non mesurable dans l’immédiat, et nous satisfaire d’une métrique qualitative ou indirecte (dite « proxy »), mesurable dans l’immédiat. Il ne faut pas chercher à tout prix la justesse. L’objectif de la métrique est d’indiquer l’effet attendu, de rendre des comptes, d’orienter des décisions budgétaires, d’obtenir du soutien politique. Le bon niveau de justesse est celui qui remplit ces objectifs, ni plus ni moins.

À beta.gouv.fr, le processus de définition des KPI est surtout **une maïeutique permettant de nous questionner sur les investissements dans nos produits**. « Sommes-nous collectivement d’accord que notre but principal est ?… Si oui, alors notre succès pourrait se mesurer par… », « Si je fais ça, quel chance ai-je d’augmenter notre impact, mesuré dans telle KPI ? »

Quand le KPI n'est pas disponible facilement, il existe une méthode simple et frugale d’évaluer l’utilité perçue d’un service : le [Net Promoter Score](https://en.wikipedia.org/wiki/Net\_Promoter). Demander à ses usagers s’ils recommanderaient votre service sur une échelle de 1 à 10, pour subjectif que cela puisse paraître, est une mesure très utile, simple à capturer, et, associée à un commentaire libre, qui peut aider à adresser les problèmes que rencontrent les usagers. Cette méthode peut aisément être intégrée dans tout produit Web, avec des solutions freemium comme [Hotjar](https://www.hotjar.com).

Savoir que 80% des usagers recommandent le service est une chose, mais la justification d’un investissement peut réclamer une mesure d’impact stratégique. Pour estimer l’impact du produit à un moment donné, nous utilisons la **méthode de calibrage par des cohortes** : une première cohorte n’utilise pas le produit (situation avant) et une seconde l’utilise (situation après). Ces cohortes respectent les règles statistiques (groupe de contrôle, échantillonnage) pour éviter tout biais et garantir la comparabilité. Dans chaque cohorte, nous mesurons la moyenne de l’impact souhaité (ex. : délai de retour à l’emploi, taux de non-recours aux prestations sociales …). Nous en déduisons un coefficient d’impact (CI), différence en % entre ces 2 mesures d’impact stratégique réalisées précisément sur les 2 cohortes. Ainsi, si 100 personnes réalisent une action mesurable chez nous (une simulation mes-aides, une recherche dans laBonneBoite), nous déduisons que par rapport à celles qui ne le font pas, elles seront impactées de CI%.

Exemple : les demandeurs d’emploi n'utilisant pas la Bonne Boîte ont une probabilité de retour à l'emploi à 5 mois de 19,99%. En utilisant La Bonne Boîte, elle passe à 22,1% - +2 points, soit +11% (étude 2016 sur 2 cohortes de 100 000 individus). Ainsi, les chances de retrouver un emploi des 400 000 demandeurs d'emploi qui ont utilisé LBB depuis sa création jusqu'en septembre 2016 étaient de 2 points supérieures. Soit 8000 personnes impactées positivement.

En multipliant les coefficient d’impact par le nombre d’usages, nous obtenons une première idée de l’impact économique, social et environnemental du service. Dans notre exemple, la mesure est présentable **en social** (impact : 8000 personnes), mais aussi **en économique** : le "coût d'un chômeur" pour la collectivité est estimé autour de 3000€ (source [Ministère du Travail](http://travail-emploi.gouv.fr/publications/Revue\_Travail-et-Emploi/pdf/40\_2998.pdf)). En connaissant le nombre de mois gagnés en moyenne par un utilisateur de LBB (ou en retenant un minimum, 1 mois, si on l'ignore), nous pouvons obtenir un impact normalisé en €, ici 24 M€.

Pour autant, cette mesure indirecte, n’est que la meilleure manière de mesurer notre impact dans le monde réel. Tout sauf un chiffre exact, un objectif à faire progresser ou un totem immuable. Le contexte socio-économique change, les mentalités, les personnes, et la mesure devra évoluer. Avec de nouvelles cohortes, un nouveau produit, et probablement de nouvelles KPI.

## Boite à outils <a href="#boite-a-outils" id="boite-a-outils"></a>

Pour construire une mesure d’impact nous distinguons deux temps, le temps court et le temps long.

A court terme :

* Pendant la rédaction de la fiche produit : répondre collectivement à la question « Qu’est-ce que l’on cherche à améliorer ? Qu'est-ce qui ira mieux lorsque l'on sera en production ? Pour qui ? Si on pouvait trouver une mesure simple de cet impact ce serait quoi ? ». Ne pas se poser la question de _comment_ on la mesure. Afficher une ambition et l'insérer dans la fiche produit.
* Avec le produit beta : sonder, échantillonner, et extrapoler. Fastidieux mais efficace : avec le téléphone ou l’email de ses usagers, on peut en appeler plusieurs centaines pour savoir ce qui s’est passé pour eux ensuite. En multipliant par le nombre total on obtient une idée des vrais résultats !
* Faire des sondages en ligne (ou IRL) avant et après
* Inciter les usagers à revenir quand ils ont « gagné ». Il faut alors prévoir un bénéfice pour eux … Exemple : dans Boomerang, si l'on décroche un job, le conseiller est averti.
* Suivre les métriques d'audience, même si elles sont d'ordre 2 la plupart du temps.
* Afficher en permanence ces métriques sur une page mastartup/stats compréhensible par son sponsor. **Cette page est obligatoire pour toute startup en phase d'accélération**

A long terme :

* Construire une cohorte que l’on suit dans le temps en s’y prenant très en amont. Pour cela mesurer la différence “avec” et “sans” sur 2 groupes les plus similaires possibles (entre 100 et 100 000 personnes suivant l’importance de la précision). Un service statistique dans l'administration est souvent nécessaire.
* Discuter régulièrement devant la page mastartup/stats : qu'a-t-on fait récemment pour augmenter l'impact ? pourquoi ça monte là ? y-a-t-il des poches d'impact (géographiques, organisationnelles, clientèles ..) que nous adressons mal ? …

<details>

<summary>Intégrer le bouton "je donne mon avis"</summary>

Ce bouton permet à l'usager de donner son avis en répondant à quelques questions très simples.

## **Créer un compte** sur MonAvis : <a href="#id-1-creer-un-compte-sur-monavis" id="id-1-creer-un-compte-sur-monavis"></a>

* Accéder au site [observatoire.numerique.gouv.fr](https://observatoire.numerique.gouv.fr/)
* Cliquer sur « Accès Administration» en bas à gauche de la page ;
* Cliquer sur le lien « Inscription » ;
* Remplir le formulaire d’inscription ;
* Confirmer l’adresse mail en cliquant sur le lien reçu dans l’e-mail de confirmation ;

<mark style="background-color:yellow;">ℹ️ Utilisez votre adresse @beta.gouv.fr pour éviter la validation manuelle par un administrateur.</mark>

## Accéder à la p**age démarche** <a href="#id-2-acceder-a-la-page-de-sa-demarche-via-le-moteur-de-recherche" id="id-2-acceder-a-la-page-de-sa-demarche-via-le-moteur-de-recherche"></a>

* Rechercher la démarche dans le moteur de recherche
* **Si elle est absente du référentiel, ajouter sa démarche (étape optionnelle) :**
  * Cliquer sur « Ajouter une démarche manquante » ;
  * Remplir le formulaire de référencement de la démarche.

## **Se déclarer porteur d’une démarche**

<mark style="background-color:yellow;">✅ Si vous avez référencez votre démarche, vous devenez automatiquement « porteur de la démarche ».</mark>

* Accéder à la page de la démarche
* Cliquer sur « Je suis porteur de cette démarche »

Deux onglets sont alors accessibles : _Code à intégrer_ et _Tous les avis_.

## **Obtenir le code du bouton :**

* Accéder à la page de la démarche
* Accéder à l’onglet « Code à intégrer » ;
* Cliquer sur « Générer le code » ;
* Choisir entre le bouton bleu et le bouton blanc
* Copier le code du bouton ;
* Intégrer le code à la fin de votre service.

<mark style="background-color:yellow;">ℹ️ Si votre service numérique a une volumétrie annuelle de plus de 5 000 000 avis par an, contactez nosdemarches@modernisation.gouv.fr</mark>

Pour plus d'informations, vous pouvez contacter **nosdemarches@modernisation.gouv.fr**

</details>
