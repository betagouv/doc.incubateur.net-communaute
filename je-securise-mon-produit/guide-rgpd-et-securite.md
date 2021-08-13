---
description: >-
  A chaque étape du développement d'un produit, savoir quelles questions se
  poser, quelles actions entreprendre, et quelles ressources mobiliser.
---

# Guide RGPD et Sécurité 📓

{% hint style="info" %}
Ce document est une proposition en cours d’élaboration. Il est susceptible d’être amendé ou de faire l’objet de contre-propositions.
{% endhint %}

## ⚕ Hygiène : grands principes valables par tous les temps

* Accepter que ces sujets coûtent du **temps** et des **ressources** et qu'ils ne soient pas \(très\) visibles des utilisateurs ;
* **Plus tôt** on se pose les questions, plus il est facile et rapide d'y répondre et de traiter le sujet des données et de la sécurité ;
* La relation de **confiance** qu'une équipe établit avec les référents-experts de ces sujets dans l'administration est son meilleur passeport pour la liberté et l'autonomie, davantage que les livrables attendus ;
* En matière de données, **ce qui vaut pour soi vaut pour les autres** : que n'aimerions-nous pas voir circuler sur nous-mêmes ?

## 🔎 Phase d'investigation

_9 semaines pour instruire un problème et envisager des solutions pour le résoudre_

{% tabs %}
{% tab title="Question à se poser" %}
* Quels outils utilise l'équipe pour communiquer, prendre des notes, conduire des entretiens ?
* "Qui ça regarde ?" Est-ce que je suis en train de partager des données au delà du périmètre de l'équipe ou de ceux qu'elles regardent ? 

> Exemple : Un entretien utilisateur peut être partagé avec l'équipe, le coach, l'environnement de l'équipe, mais sans doute pas au-delà. Est-ce que j'ai autorisé la lecture de mon Google doc par défaut, ou l'ai-je restreint au cercle d'intéressés ?

* Est-ce que je sais ce qu'est une donnée personnelle ?
{% endtab %}

{% tab title="A faire" %}
1. [ ] Je me documente sur les sujets RGPD & sécurité :
   * 💡 [Qu'est-ce qu'une donnée personnelle ?](https://www.cnil.fr/fr/cnil-direct/question/une-donnee-caractere-personnel-cest-quoi) [Qu'est-ce qu'une donnée personnelle sensible ?](https://www.cnil.fr/fr/definition/donnee-sensible)
   * 💡 [Guide d'hygiène informatique pour les systèmes d'information](https://www.ssi.gouv.fr/guide/guide-dhygiene-informatique/) & [Guide RGPD du dev](https://www.cnil.fr/fr/guide-rgpd-du-developpeur)
2. [ ] Je rencontre l'équipe juridique de la DINUM et de l'administration sponsor du produit pour une première prise de contact \(Pour DINUM : perica.sucevic@modernisation.gouv.fr,  cindy.kus@modernisation.gouv.fr\).
3. [ ] Je limite l'accès aux docs partagés à ceux que "ça regarde" et j'utilise des outils différenciés en fonction du degré de gêne \(sensibilité\) des informations :
   * 💡 pad.incubateur.net est une alternative à Google doc qui permet de prendre des notes. L'option _signed-in people can edit_ limite la diffusion à la communauté @beta.gouv.fr.
4. [ ] Je minimise les informations collectées et supprime celles dont je n'ai pas besoin : après un entretien utilisateur, ai-je besoin de conserver dans mes notes toutes les données de le personne interrogée \(date de naissance, numéro de tél, nom, etc.\) ?



   > Exemple : Un plan de déploiement peut sans doute être sur Google doc en accès ouvert, mais des notes d'entretien utilisateurs, plutôt en accès limité.

5. [ ] Je crée une fiche pour la nouvelle startup sur beta.gouv.fr.
{% endtab %}

{% tab title="A ne pas faire" %}
* Accepter des fichiers de coordonnées de personnes à contacter sans avoir vérifié le consentement de ces personnes ;
* Discuter ou échanger des données personnelles sur des outils partagés \(Trello, Slack\).
{% endtab %}
{% endtabs %}

## 🧱 Phase de construction produit 

_3 à 6 mois pour développer une première solution numérique et l'expérimenter auprès d'utilisateurs_

{% tabs %}
{% tab title="Questions à se poser" %}
* Quelle\(s\) donnée\(s\) personnelle\(s\) ai-je prévu de collecter ou d'utiliser dans mon produit, dans quel but précis ?

> Exemple : J'utilise des "traceurs" ou un outil de web analyse ; et je le fais dans le but d'optimiser le parcours sur le site.

* Suis-je en train de collecter des données dont je ne sais vraiment à quoi elles serviront ?
* Est-ce que le produit que je construit peut se rattacher à une démarche administrative existante, un service, ou un texte juridique ?
* Qui est mon référent RGPD \(DPO ou délégué DPO\) ou sécurité ?
* Quelle solution d'hébergement utilisé-je pour mon site ? Est-elle opérée ou localisée en France, en Europe ?
{% endtab %}

{% tab title="A faire " %}
1. [ ] Je rédige les Conditions Générales d'Utilisation \(CGU\) et mentions légales et les soumet à l'équipe juridique.
   * 💡 Modèle à adapter : [Mes-aides](https://mes-aides.gouv.fr/cgu)
2. [ ] Je choisis les bons outils.
   * 💡 Info et recommandation pour la gestion des cookies : [lien](https://beta.gouv.fr/suivi/)
3. [ ] Je recense toutes les données traitées et les finalités qui leur sont associées \[1 à 2h\].
   * 💡 [Tableau données-finalités](https://docs.google.com/document/d/1PQniGdnvLdjyEBbk1lFGzmG6rwnwD5bPCbvP_XBOe4I/edit?usp=sharing) écrit par la startup Itou. Le vôtre sera plus simple !
4. [ ] Si mon produit rentre dans l'un des [critères de la CNIL](https://www.cnil.fr/sites/default/files/atoms/files/liste-traitements-aipd-non-requise.pdf) : j'initie une analyse d'impact relative à la protection des donnée \(AIPD, aussi appelée EIVP\).
   * 💡 [Une AIPD, c'est quoi ?](https://www.cnil.fr/sites/default/files/atoms/files/infographie_aipd.pdf)
   * 💡 [Exemple d'AIPD](https://docs.google.com/document/d/1j_1EESLdOHIa6bsYo3VSp-AJhPNPbQJKNRJnpJpRhKU/edit) pour la startup Itou
5. [ ] J'organise un atelier d'analyse de risques en suivant le guide agile de l'ANSSI \[1 demi-journée en équipe complète\].
   * 💡 Exemple de [résultat d'un atelier](https://github.com/openmaraude/le.taxi/wiki/Analyse-des-risques) pour Le.taxi
   * 💡 [Guide de sécurité Agile le l'ANSSI](https://www.ssi.gouv.fr/uploads/2018/11/guide-securite-numerique-agile-anssi-pa-v1.pdf)

> Pour la rédaction d'une AIPD, comme pour l'atelier d'analyse de risques, nous vous conseillons de solliciter l'aide d'expert\(e\)s dans la communauté.
{% endtab %}

{% tab title="A ne pas faire" %}
* Fausse bonne idée : considérer que le recueil du consentement est nécessaire, ou suffisant, ou facile à mettre en oeuvre. Le consentement est en réalité souvent inutile dans l'administration, et complexe à stocker, gérer dans le temps.
{% endtab %}
{% endtabs %}

## 🚀 Phase d'accélération 

_Mon produit a rencontré ses utilisateurs et démontré sa valeur en phase d'expérimentation ; je concentre mes efforts sur son déploiement à grande échelle \(de 100 à 1 000 ou de 1 000 à 100 000 utilisateurs\)_

{% tabs %}
{% tab title="Question à se poser" %}
* Qui est le Responsable de la sécurité des systèmes d'information \(RSSI\) dans mon administration ?
{% endtab %}

{% tab title="A faire " %}
1. [ ] Je reviens sur les actions des phases précédentes, en répète certaines \(atelier risques\) et mets à jour les documents correspondants.
2. [ ] \[Si AIPD\] Je finalise l'analyse et sa validation avec le responsable de traitement.
3. [ ] A partir du livrable de l'atelier risques, je constitue un dossier d'homologation de sécurité.
   * 💡 Exemples de dossier d'homologation de sécurité : [Le.taxi](https://github.com/betagouv/beta.ssi/blob/master/homologations/le_taxi.md) et [Aidants connect](https://trello.com/c/NOap62w5)
4. [ ] Je partage le dossier avec le RSSI de mon administration, prends en compte ses retours et me renseigne sur l'autorité d'homologation.
   * 💡 Pour connaître le RSSI de la DINUM, tu peux interroger l'équipe de co-animation de beta.gouv.fr
5. [ ] \[Optionnel\] A ce stade, je peux solliciter un prestataire pour réaliser un test d'intrusion. Je contacte la DINUM si besoin pour en discuter.
{% endtab %}

{% tab title="A ne pas faire" %}
* Déstaffer les développeurs expérimentés dont on a plus que jamais besoin pour la montée en charge du produit ;
* Croire que c'est fini !
{% endtab %}
{% endtabs %}

## 📖 Support de présentation I Conformité RGPD - Mars 2021

{% file src="../.gitbook/assets/conformite-rgpd-support-formation.pdf" %}

