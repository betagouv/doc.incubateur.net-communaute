# Licences

Conformément à la loi pour une République Numérique, notre code est publié sous une des [licences libres homologuées](https://www.data.gouv.fr/fr/licences).

Lorsque des restrictions à la réutilisation sont justifiées, l'usage de licences homologuées plus restrictives est envisageable ([voir ce guide interactif](https://guide-juridique-logiciel-libre.etalab.gouv.fr) pour le détail). C'est ce que explique l'utilisation de la licence AGPL-3.0 dans nombre de nos dépôts.

> Pour en savoir plus, voir une [Politique de contribution aux logiciels libres de l’État](https://www.numerique.gouv.fr/publications/politique-logiciel-libre), et si vous avez besoin d'accompagnement ou d'explications, vous pouvez contacter opensource@data.gouv.fr

## Appliquer une licence

Inclure le fichier de licence [au format texte brut](http://www.gnu.org/licenses/agpl-3.0.txt) à la racine du dépôt concerné, sous le titre `LICENSE`.

> Ce nom [en améliore la découvrabilité](https://help.github.com/articles/adding-a-license-to-a-repository/).

Si vous travaillez sur un module NPM, pensez à ajouter la propriété `license`, par exemple `"license": "MIT"`, dans votre `package.json`.

## Compatibilité dans le cas AGPL

Si vous incluez du code externe dans le vôtre (pas du lien, mais bien de la copie), attention à n'inclure que du code sous une licence compatible avec la licence AGPL. Si vous utilisez des bibliothèques non compatibles AGPL, pensez à le [préciser dans la licence](http://www.gnu.org/licenses/gpl-faq.html#GPLIncompatibleLibs) avant la phase de passation.
