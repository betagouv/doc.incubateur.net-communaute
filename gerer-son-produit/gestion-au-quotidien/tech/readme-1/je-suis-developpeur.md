---
description: >-
  Cette documentation vise à aider les développeurs découvrant que des données
  sensibles sont exposées.
---

# Je suis développeur

{% hint style="success" %}
Reste concentré sur les actions à prendre, ne reste pas isolé, demande de l'aide, verbalise tes difficultés et ton stress, fais-toi confiance. On t'aidera.
{% endhint %}

## Les 3 étapes clés à retenir :

1. Résoudre la fuite ou la suspicion de fuite
2. Rédiger un rapport et informer les bonnes personnes
3. Mesurer les conséquences

## 1. Immédiatement - Résoudre la fuite

1. **Faire l'inventaire des données disponibles en ligne**
2. **Couper l'accès aux données en ligne en priorisant vos actions sur les données personnelles**
3. **Couper les autres accès**
4. **Supprimer les données ou les accès de github/gitlab**
   * lien utile : [supprimer les données de github](je-suis-developpeur.md#supprimer-les-donnees-sensibles-que-jai-accidentellement-pushees-sur-github)

### Quels sont les bons réflexes à adopter (et parfois négligés) ?

Vérifier les risques associés à chaque service (liste non exhaustive) :

* Mailjet
  * La liste des emails, les noms sont disponible à partir de la clé API
  * Demander la liste des appels API et les IPs pour voir les accès frauduleux
* Brevo (ex Sendinblue)
  * La liste des emails, des noms et l'ensemble des emails sont disponible à partir de Github
* Github / Gitlab
* Clever Cloud / Scalingo

## 2. Rédiger un rapport d'incident et le transmettre

### La forme du rapport d'incident

{% content-ref url="modele-de-rapport-dincident.md" %}
[modele-de-rapport-dincident.md](modele-de-rapport-dincident.md)
{% endcontent-ref %}

* Il existe un modèle de rapport conçu pour ces situations. Il n'a pas vocation à être technique car il s’adresse à un public non-technique. Ce rapport vise à informer des risques.
* Déléguez au reste de l’équipe non-tech l’initialisation de ce rapport et la timeline
* Ne vous lancez pas dans un rapport technique mais restez concentré sur le rapport
* Déléguez toutes les tâches non-tech au reste de l’équipe

### Les destinataires du rapport d'incident

S'il y a fuite de donnée personnelle (soupçonnée ou avérée)

{% hint style="info" %}
**Le DPO a 72h pour déclarer une fuite ou une suspicion de fuite** de données personnelles auprès de la CNIL.
{% endhint %}

## Mesurer les conséquences

* Les données ont-elles fuité ?
* Les données sont-elles exposées sur le darkweb ?
* (à compléter)

<details>

<summary>Supprimer les données sensibles que j'ai accidentellement pushées sur github</summary>

### Identifier la branche et le(s) commits fautifs

Si vous avez reçu une alerte GitGuardian, elle contient un hash identifiant précisément le commit incriminé.

Sinon vous pouvez retrouver le commit mis en cause dans votre historique. Il faudra peut-être réécrire l'historique, c'est un cas plus complexe qui n'est pas pour l'instant dans cette documentation.

Ne supprimez pas tout de suite la branche et le commit de votre historique local, vous en avez besoin pour supprimer les données de Github.

### Supprimer la branche sur GitHub

Cela se passe dans la page "branches" de votre dépôt :

<img src="../../../../.gitbook/assets/github 1.png" alt="Où est le lien vers la page &#x22;branches&#x22;" data-size="original">

Ensuite, cliquez sur le bouton "poubelle" en regard de la branche contenant le commit fautif :

<img src="../../../../.gitbook/assets/github 2.png" alt="" data-size="original">

Voilà, la branche est supprimée ! Mais vous n'êtes pas encore tiré·e d'affaire.

### Supprimer le commit sur Github

Une fois que la branche a été supprimée de GitHub, le commit (avec toutes ses données) est encore accessible par une personne possédant le hash.

Un commit est accessible à l'URL `https://github.com/betagouv/<votre-startup>/commit/<hash-du-commit>`: ouvrez le commit pour vérifier dans un onglet avant de passer à la suite.

Rendez-vous sur le support Github, rubrique ["supprimer des vues mises en cache"](https://support.github.com/contact?flow=clear\_cached\_views\&subject=Clear+Cached+Views\&tags=docs-generic%2Crr-remove-data)

L'assistant virtuel fait très bien le travail pour vous aider à remplir le ticket. Vous aurez besoin de l'URL à un moment donné.

<img src="../../../../.gitbook/assets/github 3.png" alt="Conversation avec le chatbot" data-size="original">

Quelques minutes plus tard, un humain prend en charge votre demande et supprime le commit que vous avez indiqué. L'URL ci-dessus donne à présent une erreur 404.

Vous pouvez reprendre la suite de la gestion de l'incident, les données ont bien été supprimées de Github.

### Supprimer le commit et la branche sur votre dépôt local

En local c'est plus simple.

Si vous êtes OK pour supprimer toute la branche :

```
git branch -D ma-branche-avec-un-secret
```

Cela va suffire à vous empêcher de re-push le commit.

Sinon vous pouvez effectuer un rebase interactif en "droppant" le commit fautif, ou simplement supprimer les données sensibles puis effectuer un "amend" si c'est le dernier commit qui pose problème.

</details>
