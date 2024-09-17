---
description: >-
  L'objectif de cette 4ème étape est de s'assurer de la conformité et la
  documentation nécessaires pour la sortie d'incubation
icon: '4'
---

# Préparer le service à la sortie d'incubation : check-list

{% hint style="warning" %}
La sortie d'incubation s'anticipe ! Il faut prévoir environ 6 mois pour passer en revue les points présentés ici.
{% endhint %}

## 🧪 Produit

* L'URL du service n'est [plus adossée à beta.gouv.fr](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/sous-domaine-beta-gouv-fr#migration-hors-des-noms-de-domaine-.beta.gouv.fr). Un [agrément du service d'information du gouvernement (SIG)](https://www.systeme-de-design.gouv.fr/utilisation-et-organisation/procedure-des-agrements/) est obtenu pour le nouveau sous-domaine choisi.
  * Un transfert hors des services / outils mutualisés offerts par beta.gouv.fr est opéré (ex : Matomo, Sentry, etc)
  * La procédure d'agrément peut parfois prendre du temps (plusieurs mois) car elle est conditionnée la mise à niveau sur certains critères exposés ci-dessous (système de Design de l'État, accessibilité). Il faut donc anticiper ce changement de sous-domaine.
  * Consultez à ce sujet la [circulaire n°6411-SG relative à la lisibilité des sites internet de l'État et de la qualité des démarches numériques](https://www.systeme-de-design.gouv.fr/a-propos/articles/circulaire-d-application/) du 7 juillet 2023 qui aborde notamment les règles en matière d'URL
* Le produit est **conforme au** [**Système de Design de l'État**](https://www.systeme-de-design.gouv.fr/).
* L'**hébergement** est conforme à la [doctrine Cloud de l'État](https://www.numerique.gouv.fr/services/cloud/doctrine/).
  * Si les recommandations beta.gouv.fr ont été suivies, ce point est en général une formalité.
  * Sinon, un changement d'hébergeur doit se planifier et nécessite parfois une interruption temporaire de service. Il se peut que l'administration souhaite un transfert de l'hébergement vers les serveurs ses propres serveurs - bien que la DINUM ne recommande pas cette option si elle n'est pas absolument nécessaire. Cela peut prendre 4/6 mois... (documentation à compléter, étude des risques, procédures de transfert...)
* Les **statistiques d'usage du produit sont publiques et automatisées**, elles présentent des statistiques donnant une idée de l'impact du service. Dans l'idéal, le budget du service est également publié à des fins de transparence de l'action publique.
* Les données publiques produites par le service sont **ouvertes sur data.gouv.fr** et mises à jour régulièrement. Des API documentées permettent l'interfaçage avec le service et sont référencées le cas échéant sur api.gouv.fr
* Le produit est **accessible** pour ses utilisateurs et a fait l'objet d'un audit RGAA. Le langage utilisé est simple, clair et sans jargon.
* Le produit est **sécurisé**. L'homologation de sécurité a été réalisée, les principales bonnes pratiques en termes d'hygiène informatique sont suivies.
  * L'outil pour faciliter ses démarches de conformité au RGS, [Mon Service Sécurisé](https://www.monservicesecurise.beta.gouv.fr/)
* Le produit est **respectueux des données personnelles des utilisateurs**. Les démarches liées au RGPD ont été accomplies et le produit a été inscrit au registre de traitement de l'administration porteuse.
* Les [**standards de qualité beta.gouv.fr**](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/je-fais-des-choix-technologique/standards-de-qualite-beta.gouv.fr) sont suivis et le maximum est fait pour qu'ils continuent d'être suivis après la sortie d'incubation.

## 👥 Équipe

* Les membres de l'équipe obtiennent **une adresse mail pérenne** (non fournie par beta.gouv.fr) sous 6 mois après la pérennisation.
  * Les alumni restent bienvenus dans les événements de la communauté  beta.gouv.fr (notamment Forum) et peuvent continuer à avoir un accès au Mattermost.&#x20;
* Le **pilotage de l'équipe** est internalisé.
  * La doctrine de l'État est de viser au maximum[ 60% d'externalisatio](#user-content-fn-1)[^1]n sur les services publics numériques.
  * Selon la DINUM, les prestataires de longue durée (développement, maintenance, déploiement, gestion de produit etc) coûtent de 25 à 40% plus cher à l'État qu'en internalisant la compétence.
  * Depuis 2023, l'obtention d'ETP est facilitée pour la réinternalisation de compétences numériques. Pour en savoir plus, contacter l'équipe de l'incubateur de la DINUM.
  * Documentation : [circulaire n°6391-SG de février 2023 relative au pilotage et encadrement du recours aux prestations intellectuelles informatique](https://www.legifrance.gouv.fr/circulaire/id/45407?origin=list)

## 💸 Ressources

* Une **ligne budgétaire annuelle** est inscrite au budget de votre administration et correspond au coût d'exploitation de votre service en vitesse de croisière.
  * Il convient d'évaluer le coût d'exploitation de votre service numérique et de l'inscrire dans la maquette budgétaire de votre administration : les dépenses ne peuvent plus être imputées sur ses dépenses d'innovation
  * Un comité d'investissement annuel pourra toutefois toujours se tenir afin de fixer les objectifs et faire évoluer le niveau d'investissement.
  * Documentation : [quelques repères budgétaires](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/gestion-administrative/guide-de-financement-des-startups-detat/1.-reperes-pour-decideuses-et-decideurs-publics-sur-le-cout-des-services-numeriques)
* Un **support contractuel** est disponible pour les prestations nécessaires à l'amélioration continue du service.
  * À titre d'exemple, le [marché interministériel de réalisation de produits beta.gouv.fr](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/decouvrir-les-differents-metiers-dune-startup-detat/recrutement/marches-publics-beta.gouv.fr/marche-interministeriel-beta) qui court au maximum jusqu'à septembre 2025 peut être utilisé par des produits pérennisés, même après leur sortie d'incubation, sous réserve que l'administration porteuse y ait adhéré.

## 📁 Documentation

* La **fiche produit** sur le site de beta.gouv.fr est mise à jour avec une description du service et de son impact au moment de la sortie d'incubation. Cela peut se faire en une heure [via Github](https://github.com/betagouv/beta.gouv.fr).
* Le **code source**, qui reste ouvert, est correctement documenté et audité par une personne experte de la DINUM ou de l'incubateur de référence avant la pérennisation.
* L'historique de la Startup d'État est documenté dans un **document de bilan et de retour d'expérience** fourni à l'incubateur de référence et à la DINUM.
* Le fonctionnement, la **répartition des rôles et les tâches** dans l'équipe, les **outils** utilisés par l'équipe, le **mode de paiement** et les **accès** sont documentés.
* Une analyse d'impact est réalisée avec l'équipe de beta.gouv.fr. Cette analyse peut servir à mettre en avant le service en tant que "[service public numériques à impact national"](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/la-vie-dune-se/acceleration/services-numeriques-a-impact-national), et être ainsi considéré comme un succès du programme beta.gouv.fr.

***

{% content-ref url="mettre-en-oeuvre-la-perennisation.md" %}
[mettre-en-oeuvre-la-perennisation.md](mettre-en-oeuvre-la-perennisation.md)
{% endcontent-ref %}

[^1]: mouhahaha
