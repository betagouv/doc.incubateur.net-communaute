# ❌ supprimer-des-donnees-sensibles-accidentellement-pushees-dans-github.md ❌

## Identifier la branche et le(s) commits fautifs

Si vous avez reçu une alerte GitGuardian, elle contient un hash identifiant précisément le commit incriminé.

Sinon vous pouvez retrouver le commit mis en cause dans votre historique. Il faudra peut-être réécrire l'historique, c'est un cas plus complexe qui n'est pas pour l'instant dans cette documentation.

{% hint style="warning" %}
Ne supprimez pas tout de suite la branche et le commit de votre historique local, vous en avez besoin pour supprimer les données de Github.
{% endhint %}

## Supprimer la branche sur GitHub

Cela se passe dans la page "branches" de votre dépôt :

<figure><img src="../../../../.gitbook/assets/ou-est-le-lien-vers-les-branches.png" alt=""><figcaption><p>Où est le lien vers la page "branches"</p></figcaption></figure>

Ensuite, cliquez sur le bouton "poubelle" en regard de la branche contenant le commit fautif :

![](../../../../.gitbook/assets/Capture%20d%E2%80%99e%CC%81cran%202023-02-02%20a%CC%80%2016.23.14.png)

Voilà, la branche est supprimée ! Mais vous n'êtes pas encore tiré·e d'affaire.

## Supprimer le commit sur Github

Une fois que la branche a été supprimée de GitHub, le commit (avec toutes ses données) est encore accessible par une personne possédant le hash.

Un commit est accessible à l'URL `https://github.com/betagouv/<votre-startup>/commit/<hash-du-commit>`: ouvrez le commit pour vérifier dans un onglet avant de passer à la suite.

Rendez-vous sur le support Github, rubrique ["supprimer des vues mises en cache"](https://support.github.com/contact?flow=clear\_cached\_views\&subject=Clear+Cached+Views\&tags=docs-generic%2Crr-remove-data)

L'assistant virtuel fait très bien le travail pour vous aider à remplir le ticket. Vous aurez besoin de l'URL à un moment donné.

<figure><img src="../../../../.gitbook/assets/Capture%20d%E2%80%99e%CC%81cran%202023-02-02%20a%CC%80%2016.33.32.png" alt=""><figcaption><p>Conversation avec le chatbot</p></figcaption></figure>

Quelques minutes plus tard, un humain prend en charge votre demande et supprime le commit que vous avez indiqué. L'URL ci-dessus donne à présent une erreur 404.

Vous pouvez reprendre la suite de la gestion de l'incident, les données ont bien été supprimées de Github.

## Supprimer le commit et la branche sur votre dépôt local

En local c'est plus simple.

Si vous êtes OK pour supprimer toute la branche :

```
git branch -D ma-branche-avec-un-secret
```

Cela va suffire à vous empêcher de re-push le commit.

Sinon vous pouvez effectuer un rebase interactif en "droppant" le commit fautif, ou simplement supprimer les données sensibles puis effectuer un "amend" si c'est le dernier commit qui pose problème.
