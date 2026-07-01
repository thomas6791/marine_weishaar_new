# CLAUDE.md

## Contexte du projet
Application Ruby on Rails 8.
Le projet utilise Hotwire avec Stimulus pour les interactions frontend.
Le style est géré avec Sass.

## Objectifs
- Respecter les conventions Ruby on Rails.
- Garder les contrôleurs fins et la logique métier dans les modèles, services ou objets dédiés.
- Préférer des solutions simples, lisibles et testables.
- Ne pas introduire de dépendances inutiles sans justification.

## Stack technique
- Ruby on Rails 8.
- Hotwire / Stimulus pour le JavaScript.
- Sass pour les styles.
- PostgreSQL en base de données.
- Tests avec RSpec si présent, sinon suivre la suite de tests déjà en place.

## Conventions Rails
- Suivre les conventions Rails avant toute abstraction.
- Utiliser RESTful controllers et routes.
- Préférer les partials pour factoriser les vues.
- Mettre la logique complexe dans des services ou des objets dédiés.
- Utiliser des validations, scopes et associations propres dans les modèles.

## Stimulus
- Créer les contrôleurs Stimulus dans `app/javascript/controllers`.
- Nommer les contrôleurs de manière explicite et cohérente avec leur rôle.
- Limiter chaque contrôleur à une responsabilité claire.
- Favoriser les attributs `data-*` pour connecter HTML et comportement JS.
- Éviter la logique métier dans Stimulus.

## Sass
- Utiliser Sass pour la gestion des styles du projet.
- Préférer une structure modulaire par composants ou pages.
- Garder les fichiers de styles petits et ciblés.
- Éviter les sélecteurs trop profonds et les règles difficiles à maintenir.
- Réutiliser des variables, mixins et utilitaires lorsque c’est pertinent.

## Structure attendue
- `app/models` pour la logique métier.
- `app/controllers` pour la couche HTTP.
- `app/views` pour les vues.
- `app/javascript/controllers` pour Stimulus.
- `app/assets/stylesheets` ou l’emplacement Sass configuré par le projet.
- `app/services` pour la logique applicative réutilisable si nécessaire.

## Tests
- Ajouter ou mettre à jour les tests quand le comportement change.
- Vérifier les cas nominaux et les cas d’erreur.
- Préférer des tests de requêtes ou d’intégration pour les flux importants.
- Ne pas casser les tests existants sans raison explicite.

## Commandes utiles
- `bin/rails server` pour démarrer l’application.
- `bin/rails console` pour ouvrir la console Rails.
- `bin/rails db:migrate` pour appliquer les migrations.
- `bin/rails test` ou `bundle exec rspec` selon le setup.
- `bin/rubocop` pour vérifier le style.
- `bin/dev` si le projet utilise le dev server multi-processus.

## Règles de travail
- Avant de modifier une fonctionnalité, vérifier l’existant dans le code.
- Ne pas refactorer sans bénéfice clair.
- Respecter le style déjà présent dans le dépôt.
- Pour l'ajout de html, respecter et ajouter si possible des balises html sémantiques (<article>,<section>,<p>,<nav>,<h1>,<h2><h3>)
- Si une implémentation peut être faite simplement en Rails natif, choisir cette option.
- Demander une confirmation avant tout changement large ou risqué.