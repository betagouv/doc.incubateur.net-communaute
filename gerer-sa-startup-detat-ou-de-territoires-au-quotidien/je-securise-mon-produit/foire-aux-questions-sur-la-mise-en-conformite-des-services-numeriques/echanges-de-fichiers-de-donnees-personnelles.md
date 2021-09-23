# Echanges de fichiers de données personnelles

## **Dans quelles conditions une équipe produit peut-elle recevoir des fichiers de données en provenance d’une administration ?**

Si votre produit est mis en œuvre dans le cadre d’une mission de service public \(c’est à dire qu’il participe à la réalisation d’une politique publique\), les administrations sont dans l’obligation de fournir les données indispensables à la bonne réalisation du traitement.

{% hint style="info" %}
[cf. Article 1 de la Loi n°2016-1321 du 7 octobre 2016 pour une République numérique.](https://www.legifrance.gouv.fr/jorf/id/JORFTEXT000033202746/)
{% endhint %}

A noter qu’il existe aussi un cas particulier, si votre produit permet à un usager de réaliser une formalité administrative \(un formulaire permettant de faire une demande, déposer un dossier, etc\), et qu’une administration peut vous fournir des informations susceptibles de supprimer une pièce justificative, elle est également dans l’obligation de vous la transmettre.

### **La question à se poser :** 

* l’obtention de ce fichier est-elle cohérente avec ma mission de service public et la finalité de mon traitement de données ? 
* Mon produit permet-il à un usager de réaliser une formalité administrative ?

## **Une convention d’échange de données est-elle indispensable entre l’équipe et l’administration qui fournit les données ?**

Aucune convention d’échange de données n’est nécessaire entre l’équipe et l’administration qui fournit les données. 

Le droit d’information préalable des personnes en cas de transfert garanti par les articles 13 et 14 du RGPD, repose sur le responsable de traitements à l’origine du transfert, c’est-à-dire l’administration qui fournit les données. 

Une fois les données obtenues, l’équipe est simplement tenue d’utiliser les données conformément à sa mission de service public.

## **Qui dans l’équipe produit peut manipuler un fichier de données personnelles partagé par l’administration ? Le statut importe-t-il ?** 

C’est l’Administration elle-même qui décide le “droit d’en connaître”, en tant que responsable de traitement, qui décide des personnes ayant accès aux fichiers de données à caractère personnel. 

Le statut des personnes \(agent, contractuel, prestataire, stagiaire\) de l’équipe produit n’importe pas. Toute personne de l’équipe produit peut être amenée à manipuler un fichier de données à caractère personnel. 

Les fonctionnaires et agents contractuels sont soumis à une obligation de discrétion prévue par le statut de la fonction publique.  \(cf. Article 1 du décret n°86-83 du 17 janvier 1986 modifié relatif aux dispositions générales applicables aux agents contractuels de l’Etat\). 

Les prestataires sont également soumis à une obligation de confidentialité.

## **Quels outils sont à utiliser pour transférer et héberger des fichiers de données personnelles partagées par l’administration ?**

Le vecteur technique varie, généralement on encouragera un moyen permettant d’échanger des flux sécurisés en point à point \(api, web-service…\). 

Les données à caractère personnel ont vocation à être hébergées sur le territoire de l’Union européenne, si possible, de préférence en France.

## **L’échange de données entre administrations peut-il être payant ?**

La loi prévoit très clairement que l’échange de données entre administrations ne peut donner lieu à aucune redevance, c’est-à-dire à aucun paiement.

{% hint style="info" %}
cf. Article 1 de la Loi n°2016-1321 du 7 octobre 2016 pour une République numérique.
{% endhint %}

## **Est-ce que je peux accéder à des fichiers de données personnelles avant l’AIPD si elle est obligatoire, pour instruire de futures expérimentations ?**

Ainsi s’agissant des startup d'état, elles préparent une fiche produit sur beta.gouv.fr avec des éléments constitutifs à la formalisation de l’AIPD dès la phase d’investigation. En phase d’investigation et de construction, l’équipe peut accéder à toutes les données dont elle a besoin pour travailler, et cela avant que l’AIPD ait été validée.

Si l’AIPD est nécessaire \(cf. ci-dessus\), elle devra être validée lorsque le produit en ligne remplira les conditions décrites précédemment, lors de son déploiement à grande échelle par exemple ou lors de la mise en ligne s’il s’agit de traitements qui exigent une AIPD. 

## **Qui doit figurer dans les contrats avec les fournisseurs de services \(ex : hébergement, mailing\) ?**

Le RGPD impose d’être en mesure d’assurer la traçabilité de ceux qui accèdent aux données, tout en indiquant ce qu’ils en font. C’est particulièrement le cas pour les fournisseurs de services. D’abord, il est fortement recommandé de recourir à des outils ou fournisseurs de services français et européens. Toutefois, certains fournisseurs de services \(Français, européens ou étrangers\) prévoient des échanges ou solutions techniques situées hors du territoire européen. 

Pour être conforme au RGPD, ces prestataires doivent fournir un élément contractuel qui permet de suivre, en toute transparence, le sort des données qu’ils récoltent, cet élément contractuel est appelé data processing agreement - DPA - \(ou addendum\). 

Dès lors que vous utilisez ce service, y compris à titre gratuit, cet élément contractuel s’applique. Au besoin, vous pourrez fournir un lien vers le DPA dans votre documentation \(ou le plus souvent dans l’AIPD\). En contactant le support du prestataire, vous pourrez recevoir une version du DPA personnalisée \(nom de l’administration porteuse, du produit etc\). Ce n’est pas indispensable pour que le document soit opposable.

Les conditions générales d’utilisation ou la politique de confidentialité du produit détaillent tous les sous-traitants accédant aux données à caractère personnel. Cette liste de sous-traitants se trouve également dans les études d’impact sur la vie privée lorsque celles-ci sont réalisées. Les sous-traitants ultérieurs \(c’est-à-dire les sous-traitants des sous-traitants\) doivent également figurer sur la liste.

La startup d'État peut exiger de tout fournisseur de service que toute la chaîne de sous-traitance soit explicitée. Aucune forme particulière n’est exigée du moment qu’elle est exhaustive. 

Chaîne de sous-traitance type : responsable de traitement -&gt; sous-traitant \(DINUM\) -&gt; sous-traitant \(attributaire d’un marché\) -&gt; sous-traitant \(indépendant\)

## **Dois-je choisir un hébergeur de serveur situé sur le territoire français ?**

Ce n’est pas obligatoire, vous avez le choix parmi tous ceux qui offrent un niveau de confiance suffisant \(c’est-à-dire un niveau de protection correspondant aux standards de l’UE\). Néanmoins, comme vous intervenez dans le cadre de l’administration, le choix de l’hébergeur peut faciliter la mise en conformité \(pour des raisons politico-administratives\). Par ailleurs, beta.gouv a identifié un panel de fournisseurs qui facilitent la construction itérative et qui sont sur sol français, les utiliser peut vous faciliter la vie.

Si les compétences au sein de l’équipe produit conduisent à favoriser un autre choix \(e.g. Microsoft Azure, Google Cloud\) attendez-vous à devoir le défendre: documentez et argumentez votre décision. N’oubliez pas qu’un hébergeur étant un sous-traitant, il reviendra au responsable de traitements de s’assurer de la conformité du sous-traitant au RGPD

