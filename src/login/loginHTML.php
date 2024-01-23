<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Page d'Identification</title>
    <link rel="stylesheet" href="login.css">

</head>
<body>

<div>
    <div style="text-align: center;">
        <img src="../assets/img.png" alt="Description de l'image" class="background-image">

        <div class="text-container">
            <h2>Système d'Information pour la Gestion des Concours de Dessin</h2>
        </div>

        <h2>Connexion</h2>
        <form method="post" action='<?php echo htmlspecialchars($_SERVER["PHP_SELF"]); ?>'>
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

<?php if (!empty($error)) echo $error; ?>
</body>
</html>