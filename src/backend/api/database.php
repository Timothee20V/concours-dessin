<?php
$servername = "localhost";
$login = "etudiant";
$mdp = "N3twork!";
$db = "concours_dessin";

$connexion = new mysqli($servername, $login, $mdp, $db);
if ($connexion->connect_error) {
    die("Échec de la connexion à la base de données : " . $connexion->connect_error);
}
?>