---
description: >-
  Un guide pour vous aider à vous poser les bonnes questions et éviter les
  écueils dans la conception de votre solution d'automatisation pour votre
  service.
---

# 👓 Guide pour définir un problème métier actionnable par l'IA

{% hint style="success" %}
En plus de bien définir le problème selon [le cadre type de la méthode beta](https://beta.gouv.fr/approche/investigation) (irritant majeur, actionnable, et bien ciblé), l’idée ici est de se demander si une solution d’IA est une bonne solution, contrefactuellement à d’autres possibles.
{% endhint %}

## 🔎 **Définir le problème irritant** <a href="#definir-le-probleme-irritant" id="definir-le-probleme-irritant"></a>

### 📔 **Quel est l'irritant ?** <a href="#quel-est-lirritant" id="quel-est-lirritant"></a>

On ne coupe pas à se reposer ces questions sur l'irritant quand on propose une solution d'automatisation :

* **Est-il majeur ?** Bien qu'il est tentant de développer un assistant technocrate générateur de formules de politesse pour mails afin de briller dans toute la bureaucratie, il y a surement plus majeur comme besoin.
* **Est-il actionnable (notamment par de l'IA) ?** Est-ce que les agents ont envie d'utiliser une solution d'IA ? Sont-ils sont à l'aise avec le numérique ? Dispose-t-on de données exploitables pour entraîner ou faire tourner notre modèle ?
* **Est-il bien défini ? Quelle est la cible ?** S'interroger sur le volume d’opérations et sur le nombre d'agents concernés : si c'est pour 3 agents en Lozère et qu'ils en ont besoin 3 fois par semestre, il est probable que la solution d'automatisation ne soit pas très rentable économiquement.

### 🤖 **Est-ce pertinent de mettre de mettre de l'IA sur mon cas d’usage ?** <a href="#est-ce-pertinent-de-mettre-de-mettre-de-lia-sur-mon-cas-dusage" id="est-ce-pertinent-de-mettre-de-mettre-de-lia-sur-mon-cas-dusage"></a>

Voici des exemples dans lesquels l'automatisation est généralement utile :

<table data-view="cards"><thead><tr><th></th><th></th><th></th></tr></thead><tbody><tr><td><p><strong>Tâches répétitives</strong></p><p></p><p>Il y a beaucoup de tâches répétitives à faible valeur ajoutée pour l'usager.</p></td><td></td><td></td></tr><tr><td><p><strong>Volume</strong></p><p></p><p>Pour être efficace, le service demande de traiter un grand volume de données.</p></td><td></td><td></td></tr><tr><td><p><strong>Données complexes</strong></p><p></p><p>Pour être efficace, le service doit traiter des données complexes (les sources sont éparpillées ou les croisements à faire sont nombreux).</p></td><td></td><td></td></tr></tbody></table>

**Pour être efficace, le service demande de traiter un grand volume de données :**

{% hint style="success" %}
[Flash IA](https://iaflash.fr/) permet de fiabiliser des contraventions à partir de la reconnaissance d’images, pour éviter à des automobilistes de se retrouver avec des contraventions pour des infractions qu’ils n’ont pas commises (une histoire de fraude à la plaque). Pour repérer les fraudes, il faut rapprocher le numéro de la plaque et le modèle du véhicule, qui est renseigné dans le Système d’immatriculation des véhicules (SIV). En terme de croisement de données, c’est plutôt simple. En terme de volume, c’est ingérable pour un humain car l’agence de traitement automatisée des infractions ou ANTAI doit traiter 20M de clichés radar à l’année.
{% endhint %}

**Il faut traiter des données complexes :**

* Les sources sont éparpillées

{% hint style="success" %}
Les services de réponses en droit du travail (SRDT) doivent croiser des données complexes pour répondre aux questions des usagers, comme la jurisprudence sociale, des conventions collectives des entreprises, le code du travail etc. Difficile pour les agents et agentes chargés de répondre, qui ne sont pas recrutés sur ces compétences métiers, d'éplucher tous ces documents pour retrouver la bonne information.
{% endhint %}

* Il y a beaucoup de croisements à effectuer

{% hint style="success" %}
Le service [Signaux faibles](https://beta.gouv.fr/startups/signaux-faibles.html) doit croiser de nombreuses données pour détecter les entreprises en difficulté (SIREN, donnée Banque de France, Bilans financiers, données sur l’effectif, cotisations sociales et débit, délais, procédures collectives, retards de paiement des fournisseurs, etc.). Difficile de passer à l'échelle sans automatisation avec des millions de situation d'entreprises à étudier.
{% endhint %}



***

## ❓Quelques questions à se poser pour cadrer sa solution d'IA dans l'administration <a href="#quelques-questions-a-se-poser-pour-cadrer-sa-solution-dia-dans-ladministration" id="quelques-questions-a-se-poser-pour-cadrer-sa-solution-dia-dans-ladministration"></a>

### 🗑️ **N**’**est-on pas en train de vouloir automatiser une procédure défectueuse, inutile ou datée qu’il vaudrait mieux supprimer ?** <a href="#nest-on-pas-en-train-de-vouloir-automatiser-une-procedure-defectueuse-inutile-ou-datee-quil-vaudrait" id="nest-on-pas-en-train-de-vouloir-automatiser-une-procedure-defectueuse-inutile-ou-datee-quil-vaudrait"></a>

Si un dossier pour répondre à un appel à projet lancé par l’administration est trop compliqué à remplir, il vaut mieux d’abord le simplifier plutôt que d’essayer de faire apprendre cette complexité à une IA pour répondre à la place des candidats découragés.

### ♻️ **Pourrait-on** **imaginer d'autres manières de faire cela sans IA ?** <a href="#pourrait-on-imaginer-dautres-manieres-de-faire-cela-sans-ia" id="pourrait-on-imaginer-dautres-manieres-de-faire-cela-sans-ia"></a>

Dans le cas précédent, on préférera donc commencer par réviser le dossier d’instruction afin de le simplifier pour diminuer la friction de montage du dossier pour les répondants. C’est moins sexy comme solution, mais moins cher et assurément plus efficace !

### **💰 Est-ce que la solution d'IA est rentable par rapport aux alternatives ?** <a href="#est-ce-que-la-solution-dia-est-rentable-par-rapport-aux-alternatives" id="est-ce-que-la-solution-dia-est-rentable-par-rapport-aux-alternatives"></a>

**Calculer la rentabilité**

Pour donner un ordre de grandeur, 100k c’est environ ce que coûte le premier ticket pour entraîner une couche “cas d’usage métier” sur [Albert](https://albert.etalab.gouv.fr/albert/), le modèle de la DINUM ; 45k c’est ce que coute TTC un ETP en moyenne à l’année à l’État, comme un agent dans une Maison France Service. Pour calculer la rentabilité de notre investissement, on peut calculer l’économie du temps de l’agent grâce à la solution d’IA et la convertir en ETP.

**La question du passage à l’échelle**

En général, l’IA devient rentable au moment du passage à l’échelle (et dans le temps), mais cela présuppose d’avoir des gros volumes d’échanges et/ou beaucoup d’usagers.

**Adapter le modèle à son besoin**

Parfois, il vaut mieux utiliser de plus petits modèles, qui sont moins onéreux et tout aussi performants pour une tâche donnée. Le modèle _Camembert_ par exemple, est particulièrement adapté à des tâches de classification et est moins onéreux qu’une gros modèle comme GPT-4 à faire tourner (en plus d’être ouvert et français !).

### 💽 Dispose-t-on des données/APIs nécessaires pour lancer notre expérimentation **?** <a href="#dispose-t-on-des-donnees-apis-necessaires-pour-lancer-notre-experimentation" id="dispose-t-on-des-donnees-apis-necessaires-pour-lancer-notre-experimentation"></a>

**Déterminer la source de la donnée et son exploitabilité**

La force des modèles les plus performants aujourd'hui réside bien souvent dans la qualité (et la quantité) des jeux de données sur lesquels ils se basent. Il faut toujours se poser la question de la qualité et l'accessibilité des données dont on a besoin pour pouvoir évaluer son prototype (textes de lois, les documents, données ouvertes...).

Il faut déterminer la **source** (le producteur et l’administrateur), la **nature de la** **donnée** (qui renseigne bien souvent sur sa qualité : est-ce un PDF ? Un tableau Excel ? etc.) , et son **exploitabilité** (est-ce qu’elle respecte des référentiels d'exploitation ? Est-elle est apisée ? Est-ce que l'administration productrice veut bien la mettre à disposition, et ce de manière pérenne ?...).

{% hint style="success" %}
**Bonne pratique**

Si votre donnée n'est pas disponible et que votre projet vous permet d'en ouvrir ou d'en produire des neufs, c'est aussi l'occasion de les publier sur [data.gouv.fr](https://www.data.gouv.fr/fr/).
{% endhint %}

### 🧑🏻‍⚖️ **L’IA sera-t-elle amenée à prendre des décisions ?** <a href="#lia-sera-t-elle-amenee-a-prendre-des-decisions" id="lia-sera-t-elle-amenee-a-prendre-des-decisions"></a>

Un [moteur de réponse naturelle](https://outline.incubateur.net/s/alliance/doc/moteur-de-reponses-en-langage-naturel-uvanMXDU3M) est utilisé pour assister la réponse aux usagers dans les maisons France services. Comme il s’agit d’informations données aux citoyens par une autorité responsable (et parfois d'informations juridiques), la délégation totale de la réponse fournie par l’IA n’est pas possible : il faut une validation par un agent avant envoi à l’usager. Dans la plupart des cas, la délégation totale à une IA de la décision est contraire à la loi.

### **Y a-t-il des enjeux saillants à préférer une solution souveraine ?** <a href="#y-a-t-il-des-enjeux-saillants-a-preferer-une-solution-souveraine" id="y-a-t-il-des-enjeux-saillants-a-preferer-une-solution-souveraine"></a>

Le service [Aristote](https://outline.incubateur.net/s/alliance/doc/aristote-ZglVVnmnwh) de CentraleSupélec veut permettre aux professeurs de générer automatiquement des tests ludiques sur la base de leurs cours pour leurs élèves. Pour des raisons de souveraineté, il vaut mieux éviter que les serveurs américains ingèrent les cours des professeurs afin de protéger le produit de leur propriété intellectuelle. Certaines clauses dans les CGU des fournisseurs de modèles peuvent être restrictives. Toutes les Edtech qui utilisent l’API de OpenIA dans leur solution peuvent être concernées, d'où l'intérêt d'alternatives souveraines.

{% hint style="success" %}
Les données aussi sont importantes pour avoir des grands modèles de langage diversifiés et plus inclusifs. Pour ce faire, l’INA, BNF, CNRS ont comme [projet](https://www.lesechos.fr/tech-medias/intelligence-artificielle/intelligence-artificielle-la-france-se-lance-dans-la-bataille-culturelle-des-donnees-2041027) de constituer une base de données expérimentale destinée à combattre les biais culturels des IA majoritairement anglo-saxonnes. L'outil pourra aussi servir à mieux valoriser les données auprès des grands groupes de la tech.
{% endhint %}

***

## 💼 Cas d'usage : a**ssistant de réponses en droit du travail** <a href="#cas-dusage-assistant-de-reponses-en-droit-du-travail" id="cas-dusage-assistant-de-reponses-en-droit-du-travail"></a>

**Quel est l'irritant ?** Il y a un roulement important des services de renseignement en droit du travail (SRDT). Avant, le service était assuré par les contrôleurs du travail. Aujourd'hui, il est effectué par des secrétaires administratives, qui n'ont plus la formation initiale métier sur le sujet.

**A-t-on bien une cible ?**

* Les agents des SRDT (>400 agents)
* Les citoyens salariés en demande d’informations sur leurs droits liés au travail

**Quel impact du service à améliorer par l'automatisation ?** Permet d’aider les demandeurs à mieux faire valoir leurs droits dans des procédures amiables ou contentieuses avec leurs employeurs.

**Quelle métrique d'impact pour l'automatisation ?**

* **Quanti** -> Le temps d'agent économisé
* **Quali** -> Le taux de modification de la réponse / satisfaction de l’agent

**Quelles sont les sources de données ?** Code du travail, conventions collectives de travail (CCT) qui définit les statuts (rémunérations, embauches, conditions de travail), jurisprudence sociale

**Quelle valeur ajoutée par l'automatisation ?** L'automatisation apporte une valeur significative face au roulement important des agents et au manque de formation dans les SRDT. Elle permet aussi de gérer efficacement un volume massif de demandes (575 000), concernant plus d’un million d’objets de renseignement par an.
