# Check-list de la sortie d'incubation

Un service sorti d'incubation répond à deux principaux critères qui vont ensemble :

* Une conformité avec les standards du numérique public.
* Une autonomie vis-à-vis des ressources de beta.gouv.fr.

### **🧪 Produit**

* L'URL du service n'est [plus adossée à ](https://doc.incubateur.net/communaute/travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/sous-domaine-beta-gouv-fr#migration-hors-des-noms-de-domaine-.beta.gouv.fr)[beta.gouv.fr](http://beta.gouv.fr). Un [agrément du service d'information du gouvernement (SIG)](https://www.systeme-de-design.gouv.fr/utilisation-et-organisation/procedure-des-agrements/) est obtenu pour le nouveau sous-domaine choisi.
  * La procédure d'agrément peut parfois prendre du temps (plusieurs mois) car elle est conditionnée à la mise à niveau de certains critères exposés ci-dessous (système de Design de l'État, accessibilité). Il faut donc anticiper ce changement de sous-domaine.
  * Consultez à ce sujet la [circulaire n°6411-SG relative à la lisibilité des sites internet de l'État et de la qualité des démarches numériques](https://www.systeme-de-design.gouv.fr/a-propos/articles/circulaire-d-application/) du 7 juillet 2023 qui aborde notamment les règles en matière d'URL
* Les [**standards de qualité beta.gouv.fr**](https://standards.beta.gouv.fr/) sont suivis et le maximum est fait pour qu'ils continuent d'être suivis après la sortie d'incubation.
  * Le produit, s'il est porté par une administration centrale, est **conforme au** [**Système de Design de l'État**](https://www.systeme-de-design.gouv.fr/).
  * L'**hébergement** est conforme à la [doctrine Cloud de l'État](https://www.numerique.gouv.fr/services/cloud/doctrine/). Il se peut que l'administration souhaite un transfert de l'hébergement vers ses propres serveurs - bien que la DINUM ne recommande pas cette option si elle n'est pas absolument nécessaire. Cela peut prendre 4/6 mois... (documentation à compléter, étude des risques, procédures de transfert...). Une attention particulière doit alors être portée sur les rythmes de déploiement.
  * Les **statistiques d'usage du produit sont publiques et automatisées**, elles présentent des statistiques donnant une idée de l'impact du service. Dans l'idéal, le budget du service est également publié à des fins de transparence de l'action publique.
  * Les données publiques produites par le service sont **ouvertes sur** [**data.gouv.fr**](http://data.gouv.fr) et mises à jour régulièrement. Des API documentées permettent l'interfaçage avec le service et sont référencées le cas échéant sur [api.gouv.fr](http://api.gouv.fr)
  * Le produit est **accessible** pour ses utilisateurs et a fait l'objet d'un audit RGAA. Le langage utilisé est simple, clair et sans jargon.
  * Le produit est **sécurisé**. L'homologation de sécurité a été réalisée, les principales bonnes pratiques en termes d'hygiène informatique sont suivies (outil pour faciliter ses démarches de conformité au RGS, [Mon Service Sécurisé](https://www.monservicesecurise.beta.gouv.fr/))
  * Le produit est **respectueux des données personnelles des utilisateurs**. Les démarches liées au RGPD ont été accomplies et le produit a été inscrit au registre de traitement de l'administration porteuse.

### **👥 Équipe**

* Les membres de l'équipe obtiennent **une adresse mail pérenne** (non fournie par [beta.gouv.fr](http://beta.gouv.fr)) après la consolidation.
  * Les alumni restent bienvenus dans les événements de la communauté [beta.gouv.fr](http://beta.gouv.fr) (notamment Forum) et peuvent continuer à avoir un accès au Mattermost.
* Le **pilotage de l'équipe** et les membres de l'équipe sont, autant que possible, internalisés.
  * Selon la DINUM, les prestataires de longue durée (développement, maintenance, déploiement, gestion de produit etc) coûtent de 25 à 40% plus cher à l'État qu'en internalisant la compétence.
  * Depuis 2023, l'obtention d'ETP est facilitée pour la réinternalisation de compétences numériques. Documentation : [circulaire n°6391-SG de février 2023 relative au pilotage et encadrement du recours aux prestations intellectuelles informatique](https://www.legifrance.gouv.fr/circulaire/id/45407?origin=list)

### **💸 Ressources**

* Une **ligne budgétaire annuelle** est inscrite au budget de votre administration et correspond au coût de fonctionnement de votre service.
  * Il convient d'évaluer le coût de fonctionnement de votre service numérique en incluant la capacité à déployer des évolutions régulières et de l'inscrire dans la maquette budgétaire de votre administration : les dépenses ne peuvent plus être imputées sur ses dépenses d'innovation
  * Un comité d'investissement annuel pourra toutefois toujours se tenir afin de fixer les objectifs et faire évoluer le niveau d'investissement.
  * Documentation : [quelques repères budgétaires](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/gestion-administrative/guide-de-financement-des-startups-detat/1.-reperes-pour-decideuses-et-decideurs-publics-sur-le-cout-des-services-numeriques)
* Un **support contractuel** est disponible pour les prestations nécessaires à l'amélioration continue du service.
* Un transfert hors des services / outils mutualisés offerts par [beta.gouv.fr](http://beta.gouv.fr) est opéré (ex : Matomo, Sentry, etc)



**📁 Documentation**

* La **fiche produit** sur le site de [beta.gouv.fr](http://beta.gouv.fr) est mise à jour avec une description du service et de son impact au moment de la sortie d'incubation. Cela peut se faire en une heure [via Github](https://github.com/betagouv/beta.gouv.fr).
* Le **code source**, qui reste ouvert, est correctement documenté et audité par une personne experte de la DINUM ou de l'incubateur de référence avant la consolidation.
* L'historique de la Startup d'État est documenté dans un **document de bilan et de retour d'expérience** fourni à l'incubateur de référence et à la DINUM.
* Le fonctionnement, la **répartition des rôles et les tâches** dans l'équipe, les **outils** utilisés par l'équipe, le **mode de paiement** et les **accès** sont documentés.
* Une analyse d'impact est réalisée avec l'équipe de [beta.gouv.fr](http://beta.gouv.fr). Cette analyse peut servir à mettre en avant le service en tant que "[service public numériques à impact national"](https://doc.incubateur.net/communaute/gerer-sa-startup-detat-ou-de-territoires-au-quotidien/la-vie-dune-se/acceleration/services-numeriques-a-impact-national), et être ainsi considéré comme un succès du programme [beta.gouv.fr](http://beta.gouv.fr).
