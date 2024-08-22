---
description: >-
  Vous vous posez des questions sur l’implémentation d’une brique IA dans votre
  service numérique ? Vous êtes au bon endroit.
---

# 🤖 Faire de l’IA chez beta

## Cadrer son idée

### 💘 Objectif impact : éviter le solutionnisme

**L’IA est une solution technique, elle n’a pas réponse à tout et il est facile d’avoir de fausses bonnes idées.**

En plus de bien définir le problème selon [le cadre type de la méthode beta](https://beta.gouv.fr/approche/investigation) (l’irritant qu’on souhaite adresser est majeur, actionnable, et bien ciblé), il faut se demander si automatiser est une bonne solution, contrefactuellement à d’autres possibles. Pour cela, il est conseillé de s’appuyer le Si vous avez consulté le _guide pour définir un problème métier actionnable par l'IA_.

{% content-ref url="guide-pour-definir-un-probleme-metier-actionnable-par-lia.md" %}
[guide-pour-definir-un-probleme-metier-actionnable-par-lia.md](guide-pour-definir-un-probleme-metier-actionnable-par-lia.md)
{% endcontent-ref %}

### 🏛️ Faire son parangonnage : trouver des initiatives IA partout dans l’administration

**Peut-être que votre solution existe déjà, partiellement, ou qu’elle a déjà été tentée ailleurs dans l’administration**.&#x20;

Vous pouvez retrouver dans [ce tableau](https://grist.incubateur.net/o/beta-gouv-ia/9wTgwEbwqmwW/Ressources?utm\_id=share-doc) les initiatives de briques IA dans l’État et les services déconcentrés. L’idée et de mutualiser les apprentissages et des expérimentations, afin que le commun profite à l’ensemble des produits opérés en interministériel. C'est ouvert et collaboratif : n'hésitez pas à rajouter/étoffer si vous connaissez un produit pour lequel il manque des informations ou à rajouter d'autres services dans l'État qui mériteraient d'y figurer.

{% hint style="warning" %}
Il se peut aussi que certaines informations soient erronées, puisque que c’est collaboratif. Pour toute question quant à ce commun : [elsa.le-duigou@beta.gouv.fr](mailto:elsa.le-duigou@beta.gouv.fr).
{% endhint %}

### 🤲🏻 Jouer collectif : bénéficier de l’aide de la communauté, partager ses expériences

**Pour poser vos questions à la communauté relatives à l’implémentation d’une brique IA** **dans votre service**, un espace est dédié sur le Mattermost de la communauté beta.gouv : #domaine-ia.

À savoir qu’il existe un autre canal pour la revue de presse (#domaine-presse-ia), ainsi qu’un dédié aux sciences de la donnée (#domaine-datascience).

## Mettre en œuvre son idée

### 💰 Se faire financer : l’incubateur All_Ia_nce

**Lancé en 2024 à la DINUM, All**_**Ia**_**nce est un incubateur public-privé qui finance des briques IA qui respectent les standards beta.gouv, notamment qui s’engagent à libérer leur code et répondent à un cas d’usage de l’administration à impact social.**&#x20;

{% hint style="info" %}
Plus d’informations, rendez-vous sur le site, notamment pour retrouver les produits financés : [https://alliance.numerique.gouv.fr/](https://alliance.numerique.gouv.fr/).&#x20;
{% endhint %}

**Comment ça marche ?**

Les tickets d’entrée permettent en général de financer un expert de la donnée pour faire un premier test sur les données de l’administration porteuse (l’enveloppe moyenne attribuée est de 100k). Il est possible de partir avec des fournisseurs privés (Mistral, LightOn etc.), tout comme des fournisseurs publics (le département Étalab de la DINUM développe la solution publique Albert par exemple).

Si vous avez consulté le guide pour définir un problème métier actionnable par l'IA, que vous êtes une administration et que vous avez un cas d’usage pertinent, vous êtes peut-être éligibles. Voici la marche à suivre pour tenter de bénéficier d'une aide financière :



<table data-view="cards"><thead><tr><th></th><th></th><th></th></tr></thead><tbody><tr><td><p>📅 <strong>Repérer le prochain rendez-vous des partenaires (facultatif)</strong><br></p><p>Il est possible d'aller au mensuel All<em>ia</em>nce qui réuni les administrations intéressées et les fournisseurs (publics ou privés). En général, c’est bien d’arriver avec un pitch car les administrations sont encouragées à parler de leur problématique durant l’évènement. Le calendrier des prochaines dates est <a href="https://alliance.numerique.gouv.fr/actualites/">ici</a>. </p></td><td></td><td></td></tr><tr><td><p><strong>🎤 Préparer son pitch</strong></p><p></p><p>Partir du problème vu de l’agent ou du citoyen concerné</p><ul><li>Donner des chiffres sur l’irritant</li><li>Donner des chiffres sur le volume d’opérations</li><li>Citer les données qui pourraient être utilisées</li><li>Définir une métrique d'impact</li></ul><p></p></td><td></td><td></td></tr><tr><td><p><strong>📃 Commencer à réfléchir à une fiche action</strong></p><p></p><p>À partir de ces éléments, décrive votre idée de produit en suivant ce <a href="https://alliance.numerique.gouv.fr/les-produits-incub%C3%A9s/mod%C3%A8le-de-fiche-action/">modèle de fiche action</a>. C’est sur cette base que le financement chez All<em>Ia</em>nce est possible. Il faut ensuite l’envoyer à l’adresse contact ci-dessous. Vous pouvez vous faire accompagner en demandant de l’aide sur le canal mattermost #domaine-ia.</p></td><td></td><td></td></tr></tbody></table>

{% hint style="info" %}
Le contact de l'équipe alliance : [**alliance@mail.numerique.gouv.fr**](mailto:alliance@mail.numerique.gouv.fr).
{% endhint %}



### 🤖 Avoir accès aux modèles développés par Étalab (Albert)

**Albert est une galaxie de modèles conversationnels et de cas d’usages administratifs qui les utilisent, développés par le département Étalab de la direction interministérielle du numérique (DINUM), de concert avec les partenaires dans les administrations et la société civile.**

{% hint style="warning" %}
C’est un projet d’innovation encore en expérimentation, et donc son déploiement reste limité pour des raisons de performance des modèles encore en développement et des capacités de calcul contraintes.
{% endhint %}

{% hint style="info" %}
Il existe également d’autres modèles proposés par le public, notamment les modèles LLaMandement, développés au sein de la direction générale des finances publiques (DGFIP). Contrairement à Albert qui est un ensemble de modèles conversationnels, l'ensemble LlaMandement est spécialisé dans la synthèse de texte.
{% endhint %}

#### **Les cas d'usage métier**

Le cas d’usage métier Albert le plus évident est l’assistance à la réponse aux questions du public pour les agents. Ce sont des versions d'Albert en général fine-tunées à partir de la documentation de l'administration. Voici quelques exemples :&#x20;

* Un chat assistant de réponse pour les agents répondant aux questions des citoyens dans les maisons France services — partenariat en construction avec la direction de l'information légale et administrative (DILA).
* Un chat assistant de réponse adapté aux agents qui s’occupent des ressources humaines dans les secrétariats généraux communs départementaux (SGCD), dans les préfectures. — partenariat actuellement en construction avec la direction générale de l'administration et de la fonction publique (DGAFP) ;
* Un chat assistant de réponse en droit du travail pour les agents  dans les services de renseignements en droit du travail (SRDT) — en investigation avec la direction générale du travail (DGT) ;

#### **L'api Albert**

L'api permet d'avoir accès à une version d'Albert généraliste basée sur un modèle libre (Llama3.1 étant la dernière version utilisée), amélioré par du RAG. Elle permet notamment d'ouvrir à des cas d'usage de traduction, de synthèse de document, et des intégrations diverses dans des produits.&#x20;



#### **Comment avoir accès à Albert ?**

En fonction de votre besoin et de votre situation, vous pouvez être accompagnés directement, utiliser l'API d'Albert, ou piocher sans demander dans les modèles ouverts :

* **Utiliser l’API Albert** : pour des raisons de disponibilité du calcul, l’usage de l’api est encore limité, vous pouvez joindre l’équipe d'Albert pour demander l’accès en utilisant le [formulaire de contact](https://grist.incubateur.net/o/docs/forms/7XgFxGuAvaSCJGUvUbJnsq/23) ;
* **Utiliser les modèles ouverts** : les modèles conversationnels Albert-Light et Guillaume Tell (Albert) sont ouverts sur Hugging Face en libre service depuis la plateforme [AgentPublic](https://huggingface.co/AgentPublic). À noter que LLaMandement-13B, un modèle développé par la DGFIP plutôt adapté à la synthèse de texte, est également disponible sur AgentPublic ;
* **Essayer l'API d'Albert à partir de Tchap** : trouver Albert dans "personnes" dans la barre de recherche Tchap et demander l'accès à l'adresse indiquée ;
* **Être accompagné directement par l’équipe d’Étalab** et bénéficier d’un accompagnement personnalisé. Pour l'instant cette option est limitée aux équipes déjà accompagnées.&#x20;

#### Albert en bref

<table data-view="cards"><thead><tr><th></th><th></th><th></th></tr></thead><tbody><tr><td><strong>Albert</strong> <strong>Api</strong></td><td>modèles utilisés : Llama 2, Mistral 7b, Llama 3.1</td><td>RAG</td></tr><tr><td><strong>Modèles métiers</strong></td><td>fine-tunés sur la documentation métier</td><td></td></tr><tr><td><strong>Maintenance</strong></td><td>Non assurée (expérimentation)</td><td></td></tr><tr><td><strong>Éligibilité</strong></td><td>Services de l'État et des territoires</td><td></td></tr><tr><td><strong>Facturation</strong></td><td>Gratuit (mais expérimentation)</td><td></td></tr></tbody></table>

### 🧰 Utiliser d’autres modèles : quelques ressources supplémentaires

* Vous pouvez trouver toutes sortes de modèles sur [Hugging Face](https://huggingface.co/), classifiés en fonction de la tâche ;
* Certains services Cloud comme Scaleway proposent une plateforme en SaaS qui permet d’utiliser des modèles ouverts ou semi-ouverts comme Mistral ou LLama, et de louer la puissance de calcul (ou acheter au token) tout en respectant les standards européens d'hébergement ;
* Si votre besoin n’implique pas d’utiliser des données sensibles, il est possible de faire ses premiers tests —tout en respectant le cadre légal— avec des modèles propriétaires (même ChatGPT !).&#x20;

{% hint style="info" %}
Si vous n’êtes pas sûrs de vous, vous pouvez consulter la fiche dédiée [Quels points de vigilance avoir lorsque vous dialoguez avec ChatGPT ?](https://pad.numerique.gouv.fr/teCWpmkGSlG970GLe4aTDQ) ou demander de l'aide sur le Mattermost de la communauté.&#x20;
{% endhint %}



### 🛡️ Sécuriser son infrastructure et son usage : faire de l’IA responsable

{% hint style="info" %}
Vous pouvez vous faire assister sur les questions de sécurité et de juridique en matière d'IA en notifiant les référents dans le canal Mattermost associé dédié (#domaine-ia).
{% endhint %}

**Des ressources techniques et juridiques**

* [**Quels points de vigilance avoir lorsque vous dialoguez avec ChatGPT ?**](https://pad.numerique.gouv.fr/teCWpmkGSlG970GLe4aTDQ), par Numéricité pour [beta.gouv.fr](http://beta.gouv.fr)
* [**Recommandations de sécurité pour un système d’IA générative**](https://cyber.gouv.fr/publications/recommandations-de-securite-pour-un-systeme-dia-generative), _Agence nationale de la sécurité des systèmes d'information (ANSSI)_, 2024
* [**Les fiches pratiques IA de la CNIL**](https://www.cnil.fr/fr/les-fiches-pratiques-ia), orientées traitement des données personnelles&#x20;
*   [**Entrée en vigueur du règlement européen sur l’IA : les premières questions-réponses de la CNIL**](https://www.cnil.fr/fr/entree-en-vigueur-du-reglement-europeen-sur-lia-les-premieres-questions-reponses-de-la-cnil)**,** juillet 2024



**Gouvernance est stratégie française**

* [**IA, notre ambition pour la France**](https://www.bercynumerique.finances.gouv.fr/le-rapport-ia-notre-ambition-pour-la-france), _Comité national pour l’intelligence artificielle_, mars 2024
