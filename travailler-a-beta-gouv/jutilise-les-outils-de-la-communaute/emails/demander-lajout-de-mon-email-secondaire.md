# Demander l'ajout de mon email secondaire

Demander de l'aide sur [\#incubateur-secretariat](https://mattermost.incubateur.net/betagouv/channels/incubateur-secretariat) sur Mattermost et y communiquer ton email secondaire en envoyant ce message type : `Bonjour, j'ai perdu les accès à mon adresse beta xxx@beta.gouv.fr. Mon adresse secondaire est xxx@yyy.vvv.`

Action a faire par l'admin :\
\
\- Vérifier si le membre a un email secondaire en tapant son nom sur https://espace-membre.incubateur.net/community\
L'email secondaire est affiché si il existe\
\- Ajouter l'email secondaire le cas échéant, en accédant a la bdd

```
update users set secondary_email='ad@test.com' where username='firstname.lastname';
```



