---
description: >-
  La transparence budgétaire fait partie des valeurs de beta.gouv.fr. Publier le
  budget permet de mettre en rapport l'impact et le coût des services.
---

# Publier son budget

### Que publier ?

{% hint style="info" %}
Chaque Startup d'État est libre de publier ce qu'elle souhaite, sous le format qu'elle souhaite, et au niveau de détail qu'elle souhaite.
{% endhint %}

Publier l'enveloppe globale du budget de la Startup d'État est déjà un énorme pas en avant. En effet, très peu de Startups d'État partagent leur budget aujourd'hui.&#x20;

**Il vaut mieux publier un chiffre avec quelques zones d'incertitudes et sans détail que rien.** Le budget que vous publiez n'a pas besoin d'être parfait ni exhaustif.

### Page commune de publication des budgets

Une page publique regroupant les budgets de plusieurs Startup d'État existe sur [https://pad.incubateur.net/s/qeT5bzHUM](https://pad.incubateur.net/s/qeT5bzHUM)

![](<../../.gitbook/assets/Screenshot 2022-07-07 at 15.54.57.png>)

Toutes les Startup d'État sont invitées à modifier cette page pour y rajouter leur budget. Pour pouvoir éditer, il suffit d'avoir un compte Mattermost et d'utiliser ce compte pour se connecter. Un gabarit est fourni en haut de cette page, il peut être dupliqué et modifié.

Modifier la page : [https://pad.incubateur.net/3hxhbOuaSyapxRUg\_PnA5g](https://pad.incubateur.net/3hxhbOuaSyapxRUg\_PnA5g)&#x20;

Chaque Startup d'État peut rajouter de la contextualisation comme elle le souhaite, par exemple sur les marges pratiquées et le fonctionnement du marché public.

### Page dédiée

Les équipes de Startups d'État peuvent choisir d'avoir une page budget dédiée.

Une telle page peut être générée à partir de la commande sur Mattermost. `\budget page [startupId] [budgetTotal]`. Par exemple `\budget page aides.jeunes 800000` génère [la page suivante](https://beta-gouv-fr-budget.netlify.app/?budget=800000\&date=2022-07-13\&start=2021-03-15\&startup=Aides+Jeunes\&startupId=aides.jeunes).

### Rajouter le lien vers le budget sur la fiche de la Startup d'État sur beta.gouv.fr

Rajouter l'URL du budget sur votre fiche beta le fera apparaître dans le bandeau du haut :

![](<../../.gitbook/assets/Screenshot 2022-07-07 at 16.02.06.png>)

Pour ce faire, vous pouvez utiliser la commande `/budget url [startupId] [url]` sur Mattermost. Si vous avez ajouté les informations de budget à la page commune, vous pouvez utiliser la commande suivante `/budget url [startupId] https://pad.incubateur.net/s/qeT5bzHUM#` en remplaçant `[startupId]` par l'identifiant beta.gouv.fr de votre Startup d'État. En cas de question ou de problème, n'hésitez pas à venir sur le canal dédié [\~domaine-transparence-budget](https://mattermost.incubateur.net/betagouv/channels/domaine-transparence-budget).

Une alternative est d'aller sur l'interface d'édition des fiches produits sur [https://beta.gouv.fr/admin/](https://beta.gouv.fr/admin/#/). Il faudra vous connecter avec votre compte GitHub au préalable relié à votre fiche beta ([voir cette page de documentation](../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/github/)). Vous pouvez ensuite rajouter l'URL à cet endroit :

![](<../../.gitbook/assets/Screenshot 2022-07-07 at 16.00.41.png>)

puis cliquer sur "publier"

Pour récupérer l'URL publique menant directement à la section de la page concernant votre Startup d'État, ouvrez ce lien [https://pad.incubateur.net/s/qeT5bzHUM](https://pad.incubateur.net/s/qeT5bzHUM), descendez au titre de votre incubateur ou de votre startup d'état, et un petit icône 🔗 apparaîtra sur la gauche, cliquez dessus, puis copiez l'URL de la barre de location de votre navigateur

### Autres exemples de budgets publics

#### Mon entreprise

Cette Startup d'État publie son budget détaillé sur son propre site

![](<../../.gitbook/assets/Screenshot 2022-07-07 at 11.43.50.png>)

[Voir la page budget de Mon Entreprise](https://mon-entreprise.urssaf.fr/budget)

[Voir les données correspondantes sur GitHub](https://github.com/betagouv/mon-entreprise/blob/master/site/source/pages/Budget/budget.yaml)
