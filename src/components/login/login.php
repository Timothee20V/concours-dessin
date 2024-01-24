<?php
// Vérifiez si le formulaire a été soumis
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $username = $_POST["username"];
    $password = $_POST["password"];

    // Vérifiez les identifiants
    if ($username == "user" && $password == "userpass") {
        // Démarrez la session et définissez la variable de session
        session_start();
        $_SESSION["UserLogin"] = $username;

        // Redirigez vers la page d'accueil
        header("Location: ../accueil/accueil.html");
        exit();
    } else {
        // Les identifiants sont incorrects
        $error = "Invalid username or password";
    }
}
include 'login.html';
?>