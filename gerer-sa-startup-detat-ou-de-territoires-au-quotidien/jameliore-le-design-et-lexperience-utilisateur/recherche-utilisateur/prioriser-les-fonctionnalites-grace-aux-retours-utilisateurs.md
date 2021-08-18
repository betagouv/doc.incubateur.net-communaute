# Prioriser les fonctionnalités grâce aux retours utilisateurs

{% embed url="https://vimeo.com/524252175" caption="Enregistrement du café Design" %}

{% embed url="https://docs.google.com/presentation/d/1C2Wnhn00P-CSLQp7HFzVsryrYvQfoMtqf6enZJdDrho/edit\#slide=id.gbc8e652e81\_0\_0" caption="" %}

[Support de présentation](https://docs.google.com/presentation/d/1C2Wnhn00P-CSLQp7HFzVsryrYvQfoMtqf6enZJdDrho/edit#slide=id.gbf200425fd_0_0)

## La méthode Kano

La méthode Kano permet d’identifier les fonctionnalités **qui apportent de la valeur aux utilisateurs.** C'est une méthodologie qui est utile durant tout le cycle de vie d'un projet, notamment :

* en phase de construction, pour définir un MVP \(Minimum Viable Product\) pertinent ;
* en phase d'accélération pour investir ses ressources à bon escient.

La méthode Kano se base sur deux principes clés :

* définir s’il y a un problème existant
* évaluer si une solution donnée améliorerait le produit

Pour cela, on demande à l'utilisateur de se situer sur deux échelles :

* Aujourd’hui, notre service est comme _&lt;ceci&gt;_...

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%289%29.png)

* Et si notre service vous permettait de faire &lt;_cela&gt;_ ?

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%282%29.png)

Par exemple :

* Actuellement, AudioConf permet de réserver un numéro de conférence à la fois. Il n'est pas possible de réserver de numéros à l'avance.
* Et si AudioConf vous permettait de conserver le même numéro pour un rendez-vous hebdomadaire ?

Les réponses de l'utilisateur vont permettre de catégoriser les fonctionnalités :

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%2810%29.png)

1. **🥇 Les fonctionnalités indispensables :** elles constituent la base pour un MVP complet. Leur présence n’augmente pas la satisfaction utilisateur mais leur absence à un impact très négatif.
2. **💪 Les fonctionnalités performantes :** plus y en a, mieux c’est.
3. **🤩 Les fonctionnalités attractives :** elles permettent de garder un avantage compétitif et de se démarquer. Elles font envie ! Les utilisateurs sont contents d’avoir cette fonctionnalité mais son absence n’engendre aucun problème.
4. **🤷 Les fonctionnalités inutiles :** elles n’ajoutent pas de valeur au service. L’investissement peut sûrement être fait ailleurs. Elles n’ont pas d’effets \(ni positif ni négatif\) sur la satisfaction des utilisateurs.
5. **🙅. Les fonctionnalités repoussantes :** les utilisateurs préfère se passer du produit ou aller voir la concurrence. Leur présence a un impact négatif sur la satisfaction des utilisateurs.

## Méthodologie

### Identifier les fonctionnalités

La première étape consiste à identifier des fonctionnalités pour lesquelles on pourra interroger des utilisateurs. Souvent, elles proviennent de :

* idées eues en interne, par l'équipe
* idées soufflées par le sponsor ou les parties prenantes
* retours utilisateurs \(via le support par exemple\)

### Identifier les utilisateurs

On veut ensuite identifier les utilisateurs qu'on interrogera :

* des utilisateurs actifs, qui utilisent déjà le service ?
* des utilisateurs potentiels, quand on veut étendre le service à une nouvelle cible.

Il peut être intéressant d'identifier différents types de profils ou de personas. Les fonctionnalités dites "attractives" ne seront pas les même pour des utilisateurs avancés que pour des débutants ; ou pour des particuliers par rapport à des agents publics.

### Interroger les utilisateurs

La méthode Kano peut s'appliquer :

* sur un petit nombre d'utilisateurs, par exemple en posant les 2 questions à la fin d’un entretien utilisateur ;
* sur un grand nombre d’utilisateurs, via un questionnaire en ligne.

### Analyser les données

L'analyse des données dépend du nombre de réponses et de fonctionnalités étudiées.

* Manuellement : facile à mettre en place, et réalisable quand on a moins de 20 personnes interrogées. Il suffit d'utiliser le tableau à double entrée pour identifier à quelle catégorie une fonctionnalité est le plus souvent associée.
* Statistiquement : via une pondération de points pour chaque réponses, une analyse statistique permet de placer les fonctionnalités sur un graphe.

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%281%29.png)

### Prioriser les fonctionnalités

Avec les résultats, on peut alors identifier quelles fonctionnalités implémenter en premier :

1. D'abord les fonctionnalités indispensable
2. Puis les fonctionnalités performantes
3. Enfin les fonctionnalités attractives

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%284%29.png)

## Retour d'expérience

### AudioConf

AudioConf est un service de conférences téléphoniques pour les agents publics. C'est un service déjà fonctionnel \(l'étude ne devrait donc montrer aucune fonctionnalité indispensable\). Il plait notamment pour sa simplicité. Avant de rajouter des nouvelles fonctionnalités, et donc de le complexifier, nous voulions interroger les utilisateurs.

### Identifier les fonctionnalités

Nous avons d'abord identifié 8 fonctionnalités, via les retours utilisateurs ou des idées internes.

![8 fonctionnalit&#xE9;s r&#xE9;parties en 2 grandes cat&#xE9;gories : am&#xE9;liorer la r&#xE9;servation et am&#xE9;liorer la mod&#xE9;ration.](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%287%29.png)

### Identifier les utilisateurs

Nous avons ensuite décidé de cibler les utilisateurs actifs. Pour cela, nous avons mis en ligne pendant 2 semaines un lien vers le questionnaire sur la page d'accueil :

![Ajout d&apos;un bouton &quot;Donner mon avis&quot; sur la page d&apos;accueil](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%285%29.png)

### Interroger les utilisateurs

Le questionnaire en ligne contenait 16 questions \(2 pour chacune des 8 fonctionnalités\). Il se terminait aussi par 2 champs libres \(qu'est-ce qui vous plaît / qu'est-ce qui vous déplaît\) qui nous a permi de consolider les réponses avec des verbatims.

![Extrait du questionnaire en ligne](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%288%29.png)

SI nous avions eu une connaissance plus fines de nos utilisateurs, nous aurions voulu rajouter des questions permettant de définir le profil des répondants. Par exemple, un enseignant a potentiellement des envies différentes d'un agent public travaillant au sein d'un ministère.

### Analyser les données

À partir de 50 réponses, les données ont commencé à moins varier. Nous nous sommes cependant arrêté à 106 réponses \(en 2 semaines\).

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%283%29.png)

L'analyse des résultats nous a montré ceci :

![](https://github.com/betagouv/doc.incubateur.net-communaute/tree/f652829fc5667c8b09c9fe1dbdc76fbea7065e7d/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/.gitbook/assets/image%20%286%29.png)

* 2 fonctionnalités attractives : Réserver un numéro récurrent et Avoir accès à un tableau de bord pendant la conférence
* Plusieurs fonctionnalités inutiles
* Une fonctionnalité presque repoussante : recevoir un rapport après la conférence

## Ressources

* [The Complete Guide to the Kano Model](https://foldingburritos.com/kano-model/) \(en anglais\) : le guide complet de la méthode, avec un fichier Excel à télécharger \(en échange d'un email 🤐\) pour les calculs. Personnellement, je n'ai jamais réussi à faire marcher ce fichier.
* [Utilitaire python](https://github.com/astranchet/kano/) pour analyser les résultats en ligne de commande, à partir d'un CSV.
* [Service en ligne](https://kano.plus) pour concevoir un formulaire et obtenir des résultats \(une étude et 50 réponses dans le plan gratuit\)

