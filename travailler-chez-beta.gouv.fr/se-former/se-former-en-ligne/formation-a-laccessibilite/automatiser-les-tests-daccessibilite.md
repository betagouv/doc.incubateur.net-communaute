---
description: >-
  Définition des tests autos d'accessibilité et atelier de mise en pratique pour
  repartir avec des outils concrets à ajouter à sa CI/CD.
---

# Automatiser les tests d'accessibilité

## Tests autos d'accessibilité : automatiques, automatisés  ?

Plusieurs options se présentent lorsque l'on souhaite automatiser les tests d'accessibilité d'un service. Chacune ayant ses avantages et ses limites, il convient de connaître leurs caractéristiques pour adapter notre stratégie de tests à nos besoins. Tour d'horizon :&#x20;

### Tests automatiques

Il s'agit le plus souvent de plugins, de logiciels ou de librairies fournissant **une batterie de tests génériques** réalisés automatiquement par l'outil. Ils ne sont pas spécifiques au contexte dans lequel ils sont utilisés.

<table data-header-hidden="false" data-header-sticky data-full-width="false"><thead><tr><th>Avantages</th><th>Limites</th></tr></thead><tbody><tr><td><p>⚡ Rapides à jouer et à implémenter</p><p>🚀 Pas de limite de pages</p><p>👀 Détectent les régressions</p></td><td><p>Pas de notion de contexte</p><p>N'offrent qu'une <strong>couverture partielle</strong> des fondamentaux de l'accessibilité</p></td></tr></tbody></table>

#### Librairies de tests automatiques :&#x20;

* aXe : [https://github.com/dequelabs/axe](https://github.com/dequelabs/axe)
* Google Lighthouse : [https://github.com/GoogleChrome/lighthouse](https://github.com/GoogleChrome/lighthouse)
* Nu HTML Checker : [https://github.com/validator/validator](https://github.com/validator/validator)

### Tests automatisés

Ce sont **les tests rédigés sous forme de code** par l'équipe technique, pour être joués automatiquement. Spécifiques à la base de code dans laquelle ils sont implémentés, ils sont **définis selon le contexte** de l'application.&#x20;

<table data-header-hidden="false" data-header-sticky data-full-width="false"><thead><tr><th>Avantages</th><th>Limites</th></tr></thead><tbody><tr><td><p>🎯 Adaptés au contexte métier</p><p>🔄 Rejouables automatiquement<br>💶 Faible coût d'installation</p></td><td><p><strong>Couverture relative</strong> aux scénarios testés</p><p>Coût de maintenance modéré</p></td></tr></tbody></table>

#### Librairies de tests automatisés :&#x20;

* Cypress : [https://github.com/cypress-io/cypress](https://github.com/cypress-io/cypress)
* Playwright : [https://github.com/microsoft/playwright](https://github.com/microsoft/playwright)
* Testing Library (décliné selon les frameworks) : [https://github.com/testing-library](https://github.com/testing-library)

{% hint style="info" %}
**Cas d'usage des tests autos** : À intégrer dans une CI pour s’assurer d’une base de code saine.
{% endhint %}

### Tests autos versus tests manuels : qui fait quoi ?

En dehors des tests autos (automatiques et automatisés), l'accessibilité d'une application se vérifie également **par le geste**. Pour en savoir plus sur la recette accessible manuelle, [consultez notre documentation "Easy checks" : 10 choses faciles à vérifier pour un site plus accessible](10-choses-faciles-a-verifier-pour-un-site-plus-accessible.md).

<table data-header-hidden="false" data-header-sticky data-full-width="false"><thead><tr><th>Points de contrôle</th><th>Automatiques</th><th>Automatisés</th><th>Manuels "Easy checks"</th></tr></thead><tbody><tr><td>Images : Présence de l’alternative textuelle</td><td>✅</td><td>✅</td><td>✅</td></tr><tr><td>Images : Pertinence de l’alternative textuelle </td><td>❌</td><td>✅</td><td>✅</td></tr><tr><td>Contrastes : couleurs simples</td><td>✅</td><td>❌</td><td>✅</td></tr><tr><td>Contrastes : gradients, images, cas particuliers</td><td>❌</td><td>❌</td><td>✅</td></tr><tr><td>Validité du code</td><td>✅</td><td>✅</td><td>❌</td></tr><tr><td>Actions : libellé explicite</td><td>❌</td><td>✅</td><td>✅</td></tr><tr><td>Actions : nom accessible explicite</td><td>❌</td><td>✅</td><td>❌</td></tr><tr><td>Actions : rôle pertinent</td><td>❌</td><td>✅</td><td>❌</td></tr></tbody></table>

{% hint style="warning" %}
Certains éléments **ne peuvent pas être couverts** par les tests autos. Une étape de tests manuels reste obligatoire pour s'assurer de la qualité et de l'accessibilité.\
Il est conseillé de réaliser une recette manuelle à chaque nouveauté développée sur l'application.
{% endhint %}

### Cas pratiques : utiliser les tests autos sur son projet

#### Dans le navigateur

Google Chrome propose un plugin intégré, Lighthouse, qui permet de réaliser un contrôle automatique d'une batterie de points d'accessibilité.

1. Ouvrir la page à auditer dans Chrome
2. Ouvrir l'inspecteur : Présentation > Options pour les développeurs > Outils pour les développeurs (`Ctrl + Cmd + C` sur macOS, `F12` ou `Ctrl + Shift + C` sur Windows et Linux)
3. Ouvrir Lighthouse : en haut de l'inspecteur, déplier les chevrons (>>) et sélectionner Lighthouse
4. Configurer son test :&#x20;
   1. Mode : "Navigation" pour tester la page à son état initial, ou "Instantané" pour analyser la page dans un état défini
   2. Appareil : "mobile" ou "ordinateur"
   3. Catégorie : tout décocher **sauf** "Accessibilité"
5. Lancer l'analyse 🚀

✅ Le plugin génère un rapport détaillant les points contrôlés, les points non applicables et précise les éléments à corriger en cas de problème.

#### Dans le code

Implémenter des tests automatiques avec Lighthouse-CI dans sa base de code :

```
// [dans le terminal] Installer la dépendance
$ npm install @lhci/cli

// [dans le terminal] Créer le fichier de conf
$ touch .lighthouserc.json

// [dans .lighthouserc.json] Indiquer les urls à tester avec l’outil
{
 "ci": {
   "collect": {
     "url": [
       "https://beta.gouv.fr/",
       "https://beta.gouv.fr/recherche?q=foo",
     ],
     // Désactiver le triple run, inutile dans le cas de l’accessibilité
     "numberOfRuns": 1
   },
   // Désactiver les rapports qui ne nous intéressent pas
   // Renseigner le taux de validité minimal attendu (ici : 1 = 100 %)
   "assert": {
     "assertions": {
       "categories:performance": "off",
       "categories:pwa": "off",
       "categories:accessibility": ["error", { "minScore": 1 }]
     }
   }
 }
}

// [dans le terminal] Lancer l’outil 🚀
$ lhci autorun
```

&#x20;Implémenter des tests automatisés avec Cypress et Testing-library

```
// [dans le terminal] installer Cypress
$ npm install cypress @testing-library/cypress

// [dans le terminal] ouvrir Cypress
$ cypress open
// Suivre les instructions

// [dans cypress/support/commands.js] ajouter
import '@testing-library/cypress/add-commands'

// [Facultatif] À ajouter dans cypress/support/e2e.js si l’application comporte des erreurs non gérées
Cypress.on('uncaught:exception', (err, runnable) => {
   // évite que Cypress échoue en cas de console errors
   return false
})
```

Créer un nouveau fichier et rédiger ses premiers tests

```
describe('Accueil Betagouv', () => {
 it('affiche un titre de page de niveau 1', () => {
   cy.visit('https://beta.gouv.fr/')
   cy.findByRole('heading', 
     {
         level: 1,
         name: 'Construisons ensemble les services publics numériques de demain'
     }
   ).should('be.visible')
 })

 it("permet d'accéder à la page Programme", () => {
   cy.visit('https://beta.gouv.fr/')
   cy.findByRole('link', { name: 'Découvrir le programme'})
       .click()

   cy.url().should('eql', 'https://beta.gouv.fr/approche')
 })
})
```

Et pour ajouter le tout dans sa CI

```
// [dans package.json] ajouter les scripts de lancement de Lighthouse et Cypress
{
  …,
  “scripts:” {
    …,
    “lighthouse”: “lhci autorun”,
    "cypress": "cypress run --browser chrome"
  }
}
```

```
// [dans son fichier de workflow, par ex .github/workflows/tests] ajouter les étapes
...
     - name: Run Lighthouse
       run: npm run lighthouse

     - name: Run Cypress
       run: npm run cypress
```

#### **Bravo, vous voilà paré·es !**

Une implémentation réelle est disponible sur le [repository d'exemple du webinaire](https://github.com/betagouv/atelier-tests-auto-a11y).

