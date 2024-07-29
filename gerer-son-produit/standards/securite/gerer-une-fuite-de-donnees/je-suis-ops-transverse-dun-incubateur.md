# Je suis ops transverse d'un incubateur

## Qui prend le lead en cas d'alerte détectée ?

* L’équipe d’Ops se répartit le lead dans un canal privé de discussion. Il est privé pour des raisons de sécurité.

## Comment qualifier le niveau d’incident ?

* Alerte rouge : des données sont accessibles en clair sur le web.
* Alerte orange : de mauvaises pratiques dans le code pourraient entrainer une alerte rouge.

## Comment contacter l’équipe de la Stratup d’Etat concernée le plus rapidement possible ?

* En cas d’alerte rouge, l’action la plus efficace reste l’appel téléphonique. Le but est donc de trouver le numéro du ou des dev de l’équipe.
* Il est recommandé de :
  * Aller sur la page produit du produit pour identifier les membres de cette équipe.
  * Envoyer un email à l’email générique du produit
  * Trouver leur canal de discussion de l’équipe
  * Contacter le co-animateur ou le responsable d’incubateur
  * Contacter via Linkedin
  * Contacter via Twitter
  * Tout autre moyen utile.

## Comment alerter l’équipe sans générer de la panique ?

* Pour une alerte rouge, un appel audio ou visio est nécessaire (fondamental) pour rassurer les dev concernés et rester concentré sur les actions à prendre plutôt que sur les conséquences. Eviter le stress inutile.

### Comment orienter l’équipe pour lui permettre d’aller plus vite en restant zen ?

* Renvoyer vers cette documentation :

{% content-ref url="./" %}
[.](./)
{% endcontent-ref %}

{% content-ref url="modele-de-rapport-dincident.md" %}
[modele-de-rapport-dincident.md](modele-de-rapport-dincident.md)
{% endcontent-ref %}

### Qui prévenir à la DINUM ?

* En cas d’alerte rouge (et après un diagnostic avec l’équipe de la Startup d'Etat concernée), l’équipe d’Ops transverse doit prévenir :
  * Le responsable Sécurité de la DINUM
  * Le correspondant DPO

{% hint style="info" %}
Leurs coordonnées sont épinglés dans le canal de discussion privé de l'équipe d'Ops transverse
{% endhint %}

### Comment puis-je contribuer au dépilage du backlog Git Guardian ?

#### Qu'est-ce que Git Guardian ?

Git Guardian est un outil permettant d'être alerté lors d'une fuite de données (clefs d'API, token, variables d'environnement...).

Si vous souhaitez contribuer activement à la veille sur les fuites de données et être ajouté·e au tableau de bord Git Guardian de beta, contactez Anna-Livia Gomart ou Julien Dauphant.

#### Comment traiter un ticket Git Guardian ?

* Seuls les tickets dont le statut est à Triggered sont à traiter. Les tickets de sévérité élevée (de critical à unknown) doivent être traités en premier, puis les plus récents en premier.
* &#x20;Une fois le ticket choisi, vérifier que personne n'a déjà traité le sujet : parcourez les messages postés sur le channel Mattermost \~domaine-secu depuis la date de la fuite, et vérifiez que personne n'a encore prévenu l'équipe concernée.
* Si personne n'a prévenu l'équipe, copiez le lien de partage de votre alerte sur GitGuardian (cliquer sur le rapport de l'incident > aller à "Collect feedback" dans le menu de droite, paragraphe Sharing > activer le Incident is not shared)
* Rejoignez le canal de l'équipe sur Mattermost, et postez ce lien de feedback, avec un message comme celui-ci :

> :wave: Gestion du backlog Git Guardian:wave:
>
> Il y a un certain nombre d'alertes gitguardian sur votre repo qui datent un peu mais j'aimerais qu'elle soient traitées. :) Est-ce que vous pouvez investiguer et remplir le formulaire sur chacune d'ici le \{{aujourd'hui + 1 semaine\}} ?
>
> \{{Liens vers les alertes Git Guardian\}}

* Prévenez sur \~domaine-secu que vous avez informé l'équipe, en précisant la date butoir à laquelle l'équipe doit avoir rempli le feedback.
