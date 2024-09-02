# ✅ Sécurité

### Standards de sécurité

* Suivre nos[ bonnes pratiques d'hygiène informatique et de sécurité](../../les-standards/securite/regles-dhygiene-informatique-et-de-securite.md), notamment :
  * Choisissez des mots de passe longs (20 caractères minimum), complexes et uniques par service ;
  * Créez un compte par personne et évitez de partager un compte si c'est possible de faire autrement ;
  * Activez le 2FA sur tous vos services ;
  * Utilisez [un gestionnaire de mots de passe](../../../les-outils-de-la-communaute/autres/vaultwarden.md) pour stocker vos mots de passe.
* Savoir réagir en cas de [fuite de données](../../gestion-au-quotidien/tech/readme-1/)
* Inscrivez votre produit sur [MonServiceSécurisé](https://monservicesecurise.cyber.gouv.fr/)

### Pour les équipes techniques

*   Les sites sont sécurisés par **SSL** ;

    > Cette option est disponible en un clic sur Scalingo.
* Activez les HTTPS Security Headers et ne pas utiliser les attributs "style" en HTML ni embarquer du JavaScript dans le HTML ;
* Définissez une Content-Security-Policy adaptée
* Activez la vérification de failles de sécurité et la surveillance des dépendances (Dépendabot) sur GitHub.
* Ajouter un pre-commit hook pour prévenir la fuite de secrets (ex: [talisman](https://github.com/thoughtworks/talisman))

{% hint style="info" %}
Les incubateurs du réseau beta.gouv.fr ont parfois des règles de sécurité spécifiques. Par exemple, la Fabrique des Affaires sociales a documenté les siens [ici](https://socialgouv.github.io/support/#/README).
{% endhint %}

{% content-ref url="../../les-standards/securite/regles-dhygiene-informatique-et-de-securite.md" %}
[regles-dhygiene-informatique-et-de-securite.md](../../les-standards/securite/regles-dhygiene-informatique-et-de-securite.md)
{% endcontent-ref %}

{% content-ref url="securite-and-homologation.md" %}
[securite-and-homologation.md](securite-and-homologation.md)
{% endcontent-ref %}

{% content-ref url="../../gestion-au-quotidien/tech/readme-1/" %}
[readme-1](../../gestion-au-quotidien/tech/readme-1/)
{% endcontent-ref %}

{% content-ref url="authentication.md" %}
[authentication.md](authentication.md)
{% endcontent-ref %}

{% embed url="https://docs.google.com/presentation/d/1YQ6114l3q0BbrdmtdSdceK1io2Uqwn3QIZBzSSRM0Dk/edit" %}
