---
description: >-
  A chaque étape du développement d'un produit, savoir quelles questions se
  poser, quelles actions entreprendre, et quelles ressources mobiliser.
---

# Protection des données personnelles

## ⚕ Hygiène : grands principes valables par tous les temps

* Accepter que ces sujets coûtent du **temps** et des **ressources** et qu'ils ne soient pas (très) visibles des utilisateurs ;
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
* [ ] Je me documente sur les sujets RGPD & sécurité :
  * 💡 [Qu'est-ce qu'une donnée personnelle ?](https://www.cnil.fr/fr/cnil-direct/question/une-donnee-caractere-personnel-cest-quoi) [Qu'est-ce qu'une donnée personnelle sensible ?](https://www.cnil.fr/fr/definition/donnee-sensible)
  * 💡 [Guide d'hygiène informatique pour les systèmes d'information](https://www.ssi.gouv.fr/guide/guide-dhygiene-informatique/) & [Guide RGPD du dev](https://www.cnil.fr/fr/guide-rgpd-du-developpeur)
* [ ] Je rencontre l'équipe juridique de la DINUM et de l'administration sponsor du produit pour une première prise de contact (Pour DINUM : perica.sucevic@modernisation.gouv.fr, cindy.kus@modernisation.gouv.fr).
* [ ] Je limite l'accès aux docs partagés à ceux que "ça regarde" et j'utilise des outils différenciés en fonction du degré de gêne (sensibilité) des informations :
  * 💡 [docs.numerique.gouv.fr](https://docs.numerique.gouv.fr/home/) est une alternative à Google doc qui permet de prendre des notes de façon collaborative. Il est possible de gérer les droits d'accès de chaque document.
*   [ ] Je minimise les informations collectées et supprime celles dont je n'ai pas besoin : après un entretien utilisateur, ai-je besoin de conserver dans mes notes toutes les données de le personne interrogée (date de naissance, numéro de tél, nom, etc.) ?

    > Exemple : Un plan de déploiement peut sans doute être sur Google doc en accès ouvert, mais des notes d'entretien utilisateurs, plutôt en accès limité.
* [ ] Je crée une fiche pour la nouvelle startup sur beta.gouv.fr.
{% endtab %}

{% tab title="A ne pas faire" %}
* Accepter des fichiers de coordonnées de personnes à contacter sans avoir vérifié le consentement de ces personnes ;
* Discuter ou échanger des données personnelles sur des outils partagés (Trello, Slack).
{% endtab %}
{% endtabs %}

## 🧱 Phase de construction produit

_3 à 6 mois pour développer une première solution numérique et l'expérimenter auprès d'utilisateurs_

{% tabs %}
{% tab title="Questions à se poser" %}
* Quelle(s) donnée(s) personnelle(s) ai-je prévu de collecter ou d'utiliser dans mon produit, dans quel but précis ?

> Exemple : J’ai besoin de données de contact, et je demande le numéro de téléphone et l’adresse mail alors que l’adresse mail pourrait suffire pour contacter la personne.

* Suis-je en train de collecter des données dont je ne sais pas vraiment à quoi elles serviront ?
* Est-ce que je traite des données de santé ? Voir [définition de la CNIL](https://www.cnil.fr/fr/quest-ce-ce-quune-donnee-de-sante)

Attention, la loi ne s'applique pas dans les cas de collecte, enregistrement ou conservation de données en local, sans connexion extérieure et à des fins exclusivement personnelles

* Est-ce que le produit que je construit peut se rattacher à une démarche administrative existante, un service, ou un texte juridique permettant de justifier le traitement de certaines données ? Quelle est ma base légale de traitement ? Note : la base légale sera principalement la [mission d'intérêt public](https://www.cnil.fr/fr/les-bases-legales/mission-interet-public), ou bien [l'obligation légale](https://www.cnil.fr/fr/les-bases-legales/obligation-legale). Le [consentement](https://www.cnil.fr/fr/les-bases-legales/consentement) est à exclure dans l'administration (voir la section À ne pas faire).
* Qui est mon référent RGPD (DPO ou délégué DPO) ou sécurité ?
* Quelle solution d'hébergement utilisé-je pour mon site ? Est-elle opérée ou localisée en France, en Europe ? Est-ce que je traite des données sensibles ou de santé qui nécessitent un hébergeur particulier ? (voir [page Hébergement](../../gestion-au-quotidien/tech/infra.md) > schéma de choix hébergeur)
{% endtab %}

{% tab title="A faire " %}
* [ ] Je rédige les Conditions Générales d'Utilisation (CGU), mentions légales et Politique de Confidentialité (PC) et les soumet à l'équipe juridique.
  * 💡 Modèle à adapter : [Mes-aides](https://mes-aides.gouv.fr/cgu)
* [ ] Je choisis les bons outils.
  * 💡 Info et recommandation pour la gestion des cookies : [lien](https://beta.gouv.fr/suivi/)
* [ ] Je recense toutes les données traitées et les finalités qui leur sont associées \[1 à 2h].
  * 💡 [Tableau données-finalités](https://docs.google.com/document/d/1PQniGdnvLdjyEBbk1lFGzmG6rwnwD5bPCbvP_XBOe4I/edit?usp=sharing) écrit par la startup Itou. Le vôtre sera plus simple !
* [ ] Si mon produit rentre dans l'un des [critères de la CNIL](https://www.cnil.fr/sites/default/files/atoms/files/liste-traitements-aipd-non-requise.pdf) : j'initie une analyse d'impact relative à la protection des donnée (AIPD, aussi appelée EIVP).
  * 💡 [Une AIPD, c'est quoi ?](https://www.cnil.fr/sites/default/files/atoms/files/infographie_aipd.pdf)
  * 💡 [Exemple d'AIPD](https://docs.google.com/document/d/1j_1EESLdOHIa6bsYo3VSp-AJhPNPbQJKNRJnpJpRhKU/edit) pour la startup Itou.
* [ ] Je sensibilise très tôt les membres de mon équipe aux bonnes pratiques individuelles de sécurité informatique, en particulier les personnes appelées à administer le service.
* [ ] J'ajoute ma startup sur [MonServiceSécurisé, un service de l'ANSSI](https://www.monservicesecurise.ssi.gouv.fr), pour générer une liste personnalisée de mesures pour sécuriser mon service, découvrir son "indice cyber" et constituer facilement mon premier dossier d'homologation.
* [ ] J'organise, en complément, un atelier d'analyse de risques en suivant le guide agile de l'ANSSI \[1 demi-journée en équipe complète].
  * 💡 Exemple de [résultat d'un atelier](https://github.com/openmaraude/le.taxi/wiki/Analyse-des-risques) pour Le.taxi
  * 💡 [Guide de sécurité Agile le l'ANSSI](https://www.ssi.gouv.fr/uploads/2018/11/guide-securite-numerique-agile-anssi-pa-v1.pdf)
* [ ] J'ajoute ma startup à [dashlord](https://github.com/betagouv/dashlord/blob/main/dashlord.yml) et je vérifie que [tous les voyants sont au vert](https://dashlord.incubateur.net/#/).

> Pour la rédaction d'une AIPD, comme pour l'atelier d'analyse de risques, nous vous conseillons de solliciter l'aide d'expert(e)s dans la communauté.
{% endtab %}

{% tab title="A ne pas faire" %}
* Fausse bonne idée : considérer que le recueil du consentement est nécessaire. Pour l'administration, d'autres bases légales sont à considérer telles que la mission d'intérêt public ou l'obligation légale.
{% endtab %}
{% endtabs %}

## 🚀 Phase d'accélération

_Mon produit a rencontré ses utilisateurs et démontré sa valeur en phase d'expérimentation ; je concentre mes efforts sur son déploiement à grande échelle (de 100 à 1 000 ou de 1 000 à 100 000 utilisateurs)_

{% tabs %}
{% tab title="Question à se poser" %}
* Qui est le Responsable de la sécurité des systèmes d'information (RSSI) dans mon administration ?
{% endtab %}

{% tab title="A faire " %}
* [ ] Je reviens sur les actions des phases précédentes, en répète certaines (atelier risques) et mets à jour les documents correspondants.
* [ ] \[Si AIPD] Je finalise l'analyse et sa validation avec le responsable de traitement.
* [ ] Je continue de piloter la sécurité de ma startup sur [MonServiceSécurisé](https://www.monservicesecurise.ssi.gouv.fr) et je renouvèle son homologation, en cas d'évolutions significatives de mon produit ou de son infrastructure.
* [ ] Je renouvèle de besoin l'atelier risques, si les enjeux de sécurité de mon produit ont évolué et j'utilise les résultats de l'analyse de risques pour étoffer la liste des mesures de sécurité sur [MonServiceSécurisé](https://wwww.monservicesecurise.ssi.gouv.fr).
* [ ] Je partage le dossier avec le RSSI de mon administration, prends en compte ses retours et me renseigne sur l'autorité d'homologation.
  * 💡 Pour connaître le RSSI de la DINUM, tu peux interroger l'équipe de co-animation de beta.gouv.fr
* [ ] \[Optionnel] A ce stade, je peux solliciter un prestataire pour réaliser un test d'intrusion. Je contacte la DINUM si besoin pour en discuter.
{% endtab %}

{% tab title="A ne pas faire" %}
* Déstaffer les développeurs expérimentés dont on a plus que jamais besoin pour la montée en charge du produit ;
* Croire que c'est fini !
{% endtab %}
{% endtabs %}

Un webinaire reprend [les questions les plus posées par les équipes beta.gouv.fr](https://tube.numerique.gouv.fr/w/18C1ebBoBLkEi2QwCDe3ej). \
Pour avoir [un conseil plus poussé.](https://doc.incubateur.net/communaute/solliciter-et-contribuer-a-la-communaute/je-sollicite-de-laide-transverse/mise-en-conformite-rgpd-et-conseil-juridique)
