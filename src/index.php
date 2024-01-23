<?php
// Vérifiez si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Vérifiez les identifiants
    if ($username == "user" && $password == "userpass") {
        // Démarrez la session et définissez la variable de session
        session_start();
        $_SESSION["UserLogin"] = "user";

        // Redirigez vers la page d'accueil
        header("Location: accueil.html");
        exit;
    } else {
        // Les identifiants sont incorrects
        $error = "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page d'Identification</title>
    <link rel="stylesheet" href="styles.css">
    <style>
        body {
            margin: 0; /* Supprime les marges par défaut du corps de la page */
            font-family: Arial, sans-serif;
        }

        img {
            width: 100%; /* La largeur de l'image est égale à 100% de la largeur du conteneur parent */
            height: auto; /* La hauteur est ajustée automatiquement pour maintenir les proportions de l'image */
            display: block; /* Supprime tout espacement supplémentaire sous l'image */
        }
        .background-image {
            width: 100%;
            height: auto;
        }

        .text-container {
            width: 30%;
            margin: 20px auto;
            border: 1px solid #ccc;
            padding: 20px;
            text-align: center;
        }
        .footer-text{
            color: #5a4e9d
        }

        button {
            background-color: #5a4e9d;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #6c639d;
        }
    </style>
</head>
<body>

<div class="login-container">
    <div style="text-align: center;">
        <img src="./assets/img.png" alt="Description de l'image" class="background-image">

        <div class="text-container">
            <h2>Système d'Information pour la Gestion des Concours de Dessin</h2>
        </div>

        <h2>Connexion</h2>
        <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>">
            <label for="username">Nom d'utilisateur:</label>
            <input type="text" id="username" name="username" required><br><br>

            <label for="password">Mot de passe:</label>
            <input type="password" id="password" name="password" required><br><br>

            <label for="remember">
                <input type="checkbox" id="remember" name="remember"> Se souvenir du nom de l'utilisateur
            </label><br>

            <button type="submit">Connexion</button>
            <p class="footer-text">Vous avez oublié votre nom d'utilisateur et/ou votre mot de passe ?</p>
        </form>
    </div>
</div>

</body>
</html>