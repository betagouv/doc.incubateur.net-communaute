# Sécurité & homologation

## **Qu’est-ce qu’une homologation de sécurité ?**

L’homologation de sécurité est une démarche qui vise à « trouver un équilibre entre le risque acceptable et les coûts de sécurisation, puis \[…] faire arbitrer cet équilibre, de manière formelle, par un responsable qui a autorité pour le faire » ([ANSSI](https://www.ssi.gouv.fr/guide/lhomologation-de-securite-en-neuf-etapes-simples/)).

Son point de départ est une analyse des risques qui peuvent compromettre les objectifs recherchés par le produit, annuler ou dégrader les bénéfices pour ses usagers, ou pénaliser des tiers. Cette analyse s’appuie sur la connaissance qu’a l’équipe des usagers, de l’écosystème du produit et de son architecture technique. Elle peut être complétée par des expertises externes.

Son aboutissement formel est la commission d’homologation, présidée par l’autorité d’homologation (la personne qui engage sa responsabilité quant à la maîtrise des risques), dont l’avis pourra s’appuyer sur l’expertise des membres de la commission, parmi lesquels siègent généralement les RSSI et DPO. La commission rend son avis sur dossier, ce qui exige de formaliser les analyses, et ce formalisme peut être adapté au produit concerné et à son contexte.

## **Quand se pose la question de l’homologation sécurité ?**

L’homologation étant une obligation réglementaire, elle doit faire partie des préoccupations de l’équipe dès le départ. Dans le cadre d’une démarche itérative, les travaux peuvent être engagés à un rythme adapté à la trajectoire de construction et de déploiement du produit.

Une première analyse des risques peut ainsi intervenir à l’issue d’une phase d’investigation, dont les éléments métier pourront ainsi guider les premières étapes de la construction afin que celle-ci prenne en compte les objectifs de sécurité, puis l’équipe pourra la compléter et initier dossier d’homologation relativement tôt dans le processus de construction ; ceci permettant de prononcer une homologation formelle sans délai lorsque le produit commence à concerner un public au-delà d’une expérimentation limitée…

## **Quel modèle utiliser pour le dossier d’homologation ?**&#x20;

Un dossier d’homologation bien construit permet aux membres de la commission d’homologation de se retrouver efficacement parmi ce qui est souvent une quantité d’information importantes, il est donc judicieux de s’appuyer sur les dossiers présentés par des équipes ayant fait l’objet d’une homologation précédemment ; on peut citer Le.Taxi qui fit figure de modèle au sein de beta.gouv.fr mais aussi s’inspirer par exemple du dossier Itou.

## **Est-il possible d’utiliser dans le dossier des liens ou renvois à des pages web dynamiques dans le dossier pour documenter les évolutions du code ?**

### &#x20;**Le dossier d’architecture technique : quand et sous quelle forme ?**

Le plus souvent, les produits dont le mode de diffusion est le Web et dont l’aspect « serviciel » rentre dans les normes en la matière suivent une architecture relativement standardisée : serveurs dédiés, virtuels ou conteneurisés qui prennent en charge l’implémentation des fonctionnalités, éventuellement complétés d’éléments d’infrastructure tels que bases de données, frontaux de cache ou de répartition de charge.

Cette « architecture de référence » doit surtout être complétée par des éléments spécifiques au produit, tels que les choix de composants et de leurs versions. Notamment, il est de plus en plus critique dans le domaine du développement Web d’apporter une vigilance constante aux composants logiciels fournis par des tiers (« paquets », « dépendances », etc.) qui font régulièrement l’objet de vulnérabilités déclarées. Ces besoins de vigilance sont typiquement pris en compte par des outils automatisés en lien avec des forges logicielles telles que Github, et le dossier d’architecture technique peut donc en partie s’appuyer sur l’exposition sur les forges en question des rapports générés par ces outils. ****&#x20;

## **Comment référencer les évolutions apportées au produit quotidiennement dans le contexte d’un dossier d’homologation ?** &#x20;

A l’image des évolutions affectant les paquets logiciels tiers, les évolutions techniques et fonctionnelles du produit doivent pouvoir être tracées et suivies antérieurement à l’homologation mais également une fois qu’elle a été prononcée, afin d’évaluer des risques nouveaux induits par ces évolutions.

Les mécanismes usuels du développement dit « open source » permettant d’articuler différents niveaux de détail des évolutions fournissent un cadre pertinent pour cette traçabilité: des notions de livraisons ou « releases » étiquetées selon un schéma normé (tel que SemVer ou versionnage sémantique) afin de caractériser le degré de vigilance approprié, des notions de « pull request » qui correspondent à des regroupements d’évolutions formant un tout cohérent et documenté en dehors du code source, retraçant les intentions et les observations éventuelles, et enfin au grain le plus fin des « commits » qui permettent de rendre compte de chaque modification apportée.
