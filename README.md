# API REST pour la gestion de voitures

### Une API RESTful complète construite avec Symfony 7 et API Platform pour la gestion de voitures.

#### Fonctionnalités

- Authentification : Système de connexion sécurisé avec JWT
  
- CRUD complet : Opérations Create, Read, 

- Update, Delete sur toutes les ressources

- Pagination : Limitation du nombre de résultats par page
- Filtres : Recherche et filtrage sur différents critères (marque, modèle, année, etc.)

- Validation des données : Contrôles stricts sur les entrées utilisateur
	- Documentation interactive : Interface Swagger/OpenAPI
    - Système de notation : Possibilité d’évaluer les voitures
	- Gestion des images : Upload et stockage d’images pour les voitures
	- Catégorisation : Organisation des voitures par catégories


## Structure de la base de données
L’API gère les entités suivantes :
- User : Utilisateurs de l’application
- Car : Informations détaillées sur les véhicules (marque, modèle, description, année, prix, etc.)
- Category : Catégories de véhicules
- Review : Avis et notations des utilisateurs
- CarImage : Images associées aux véhicules

Endpoints principaux
  - `/api/cars` : Gestion des voitures
  - `/api/users` : Gestion des utilisateurs
  -	`/api/categories` : Gestion des catégories
  -	`/api/reviews` : Gestion des avis
  -	`/api/car_images` : Gestion des images
  -	`/api/login_check` : Authentification JWT

Technologies utilisées
- Symfony 7
- API Platform
- Doctrine ORM
- JWT Authentication
- Swagger/OpenAPI
- MySQL/PostgreSQL