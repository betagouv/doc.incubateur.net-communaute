# Choisir des technologies

Chez Beta Gouv, les équipes sont libres de choisir les technologies de leurs choix. Cependant, en favorisant des technologies open-source, on retrouve souvent:

* JavaScript/TypeScript (NodeJS)
* Python (ex: [Django](https://www.djangoproject.com))

## Outils et services de référence

Certains outils sont régulièrement utilisés dans l'écosystème, et bénéficient donc d'un support privilégié:

| outil                                                | usage           | Notes                                  |
| ---------------------------------------------------- | --------------- | -------------------------------------- |
| [sentry](https://sentry.incubateur.net/)             | Exceptions/APM  | beta.gouv fournit un service mutualisé |
| [matomo](https://stats.data.gouv.fr)                 | Web analytics   | beta.gouv fournit un service mutualisé |
| [updown.io](https://updown.io)                       | Disponibilité   | beta.gouv fournit un service mutualisé |
| [Metabase](https://www.metabase.com/)                | Dashboards      | a sécuriser correctement [TODO]        |
| [Talisman](https://github.com/thoughtworks/talisman) | sécurité        | Prévention contre la fuite de secrets  |
| PostgreSQL                                           | Base de données |


> Certains incubateurs du réseau beta.gouv.fr ont mis en place des standards propres, [par exemple à la Fabrique numérique des ministères sociaux](https://socialgouv.github.io/support/#/README).

{% hint style="info" %}
L'outil [**dashlord**](../../travailler-a-beta-gouv/jutilise-les-outils-de-la-communaute/dashlord/) permet aux Startups d'Etat de connaître les stacks techniques choisies par d'autres équipes (via le scan Wappalyzer).
{% endhint %}
