# Outils de secrétariat

## Boîtes mail

Les membres des Startups peuvent obtenir une boîte mail de type `prenom.nom@beta.gouv.fr`. Pour l'obtenir, demande à un quelqu'un de la communauté de faire la procédure avec l'app secrétariat [https://espace-membre.incubateur.net/](https://espace-membre.incubateur.net/).

Une fois que tu as ton identifiant et ton mot de passe, configure ta boite mail sur la page [Email](../emails/).

## Mattermost

Le Mattermost de l'incubateur est accessible via [https://mattermost.incubateur.net/](https://mattermost.incubateur.net). Nous utilisons la version gratuite du service. Les administrateurs et _owners_ du service sont signalés sur la liste des membres du chat.

~~Le bot glossaire de Slack (`/trad`) est une instance de~~ [~~`glossary-bot`~~](https://github.com/codeforamerica/glossary-bot) ~~hébergée sur Heroku (id : glossaire-betagouvfr) sur le compte de @MattiSG.~~

_Plus d'informations sur_ [_notre usage de Mattermost_](../mattermost/)_._

## Agenda

Les évènements communs à tout l'incubateur sont référencés sur un [agenda public](https://calendar.google.com/calendar/embed?src=0ieonqap1r5jeal5ugeuhoovlg%40group.calendar.google.com\&ctz=Europe/Paris). Il est visible par tous - y compris hors de l'incubateur -, et peut être ajouté à un gestionnaire d'agenda via son adresse [iCal](https://calendar.google.com/calendar/ical/0ieonqap1r5jeal5ugeuhoovlg%40group.calendar.google.com/public/basic.ics) ou [email](mailto:0ieonqap1r5jeal5ugeuhoovlg@group.calendar.google.com).

![Image d'illustration](<../../../.gitbook/assets/image (18).png>)

{% hint style="info" %}
[Ajouter un évènement à l'agenda de beta](https://airtable.com/shrWvcUAOJqllVqtj)
{% endhint %}

## Listes de diffusion

voir aussi [Listes de diffusion et adresses de contact](liste-de-diffusion-et-adresses-de-contact.md).

### Gestion des DNS via OVH

Nous disposons d'un MX plan chez OVH pour le domaine `beta.gouv.fr`. Pour les modifier, il faut donc passer par l'[interface web d'OVH](https://www.ovh.com/fr/g1596.mail\_mutualise\_guide\_dutilisation\_mailing-list). Si vous n'avez pas les droits d'accès, demandez-les sur Mattermost, dans 🔒`#incubateur-secretariat`.

Plusieurs [listes de diffusion](liste-de-diffusion-et-adresses-de-contact.md) sont disponibles, dont certaines, optionnelles, modifient votre niveau d'implication dans l'incubateur. Si vous souhaitez participer (ou simplement être au courant) des aspects stratégiques de la structure, par exemple, inscrivez-vous à `contact@beta.gouv.fr`.

### Gestion des DNS via AlwaysData

Sur AlwaysData, il existe une fonctionnalité de création de mailing list et de gestion des modérateurs et admin de ces listes. L'ajout de récipiendaires et la modération se font sur mailman.alwaysdata.com

Pour plus d'information sur la gestion des mailing list, voir [Listes de diffusion et adresses de contact](liste-de-diffusion-et-adresses-de-contact.md).

## Mots de passe

#### \[Section non à jour]

L'accès aux services partagés (OVH, Mailjet, Twitter…) doit être fait par le biais de comptes individuels auxquels la gestion est déléguée, afin de faciliter la révocation des accès lors des départs de membres de l'Incubateur.

Néanmoins, certains systèmes ne supportent pas la délégation, ou il peut parfois s'avérer utile d'obtenir l'accès administrateur sur les comptes maîtres.

Une base de données contenant tous les mots de passe nécessaires est donc accessible. Pour y accéder :

1. Installer [KeePassX](https://www.keepassx.org) (`brew cask install keepassx`).
2. Télécharger la \[\[base de données | incubateur.kdbx]].
3. Demander la clé et le mot de passe sur le canal [🔒`#incubateur-secretariat`](https://startups-detat.slack.com/messages/incubateur-secretariat/).

La réponse ne sera pas nécessairement positive: l'intention sous-jacente est de diminuer le risque de perte de maîtrise sur des composants protégés par mot de passe en cas d'absence ou de départ d'un dépositaire de ces secrets, mais _pas_ de constituer un accès standard aux secrets pour l'ensemble des membres de l'Incubateur.

Il est bien évidemment hors de question de transmettre la clé et le mot de passe par le même canal. Le mot de passe ne doit **jamais** être transmis par écrit, uniquement à l'oral (en direct ou par téléphone), et la clé devrait être transmise uniquement par transfert physique (clé USB…). Si vous n'avez pas le choix et devez la transmettre par un moyen électronique, chiffrez-la avant de la transmettre.

## Prolonger la durée d'activation d'un membre pour éviter les bugs (problèmes de badges, désabonnement des mailings list, accès au repot…)

1. Connectez-vous sur la [page Github référençant tous les membres de beta.gouv](https://github.com/betagouv/beta.gouv.fr/tree/master/content/\_authors).
2. Recherchez votre nom ou celui de la personne dont la date d'activation a expiré ou va expirer.
3. Après avoir ouvert cette fiche du type `prénom.nom.md`, modifiez la date sous le champ `end`.
4. Enfin, choisissez « créer une nouvelle branche », puis proposez une « Pull Request » de cette branche vers la branche `master`.
