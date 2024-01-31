# Concours Dessin

Il s'agit d'un projet scolaire qui implique la création d'une base de données et l'utilisation de PHP, HTML, CSS et JavaScript.

## GitHub

Le projet est disponible sur GitHub à l'adresse suivante : https://github.com/Timothee20V/concours-dessin.

## Structure du projet

Le projet est structuré en plusieurs dossiers et sous-dossiers, chacun contenant des fichiers spécifiques au domaine du projet.

Structure du projet :
``` bash
src
├───backend
│   ├───api
│   │   ├───association
│   │   ├───create
│   │   └───get
│   └───database
└───frontend
├───assets
├───components
│   ├───accueil
│   ├───administrateur
│   ├───competiteur
│   ├───evaluateur
│   ├───footer
│   ├───login
│   ├───navbar
│   └───resultConcours
├───service
└───style
```


### Frontend

Le front-end de l'application est construit à l'aide de HTML, CSS et JavaScript. Il se compose de plusieurs éléments :

- `navbar` : Ce composant est responsable de la barre de navigation de l'application.
- `footer` : Ce composant est responsable du pied de page de l'application.
- `resultConcours` : Ce composant est responsable de l'affichage des résultats des concours.
- `administrateur` : Ce composant est responsable de l'interface de l'administrateur, où il peut créer des concours et des compétiteurs, des jury, des evaluateurs et assigner un jury à un dessin.
- `competiteur` : Ce composant est responsable de l'interface du concurrent, où il peut soumettre ses dessins et voir les résultats du concours.
- `evaluateur` : Ce composant est responsable de l'interface de l'évaluateur, où il peut noter les dessins et voir les résultats du concours.
- `login` : Ce composant est responsable de l'interface de connexion, où l'utilisateur peut se connecter en tant qu'administrateur, compétiteur ou évaluateur. Les différents login/mdp de test : admin/admin, comp/comp, eval/eval.

### Backend

Le backend de l'application est construit en PHP. Il fournit plusieurs API permettant au frontend d'interagir avec la base de données.

Dans le repertoire `api` on retrouve plusieurs sous-répertoires, chacun correspondant à un aspect différent de l'application :
- Par exemple, le répertoire `association` contient des Endpoints liées aux associations dans l'application comme par exemple pour les jury et dessins.
- Le répertoire `create` contient des Endpoints pour créer de nouvelles entrées dans la base de données.
- Et le répertoire `get` contient les Endpoints pour récupérer des données dans la base de données.


## Mise en place

Pour configurer le projet, procédez comme suit :

1. Clonez le repository Git.
2. Configurez la base de données à l'aide des scripts SQL fournis.
3. Configurez le backend pour qu'il se connecte à votre base de données.
4. Ouvrez le fichier `index.html` dans votre navigateur pour démarrer l'application.

## Utilisation

Pour utiliser l'application, rendez-vous sur la page `administrateur`, `compétiteur` ou `évaluateur`. En tant que compétiteur, vous pouvez soumettre vos dessins. En tant qu'évaluateur, vous pouvez noter les dessins soumis. En tant qu'administrateur, vous pouvez créer des concours, des compétiteurs, des jury, des evaluateurs et assigner un jury à un dessin.
