<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    $json = file_get_contents('php://input');

    $numCompetiteur = $_GET['numCompetiteur'];

    global $connexion;

    $stmt = $connexion->prepare("SELECT numDessin, commentaire, classement, dateRemise, leDessin, numConcours FROM Dessin WHERE numCompetiteur = ?;");
    $stmt->bind_param("s", $numCompetiteur);
    if ($stmt->execute()) {
        $result = $stmt->get_result();
        $dessins = $result->fetch_all(MYSQLI_ASSOC);

        // Convertir le tableau de dessins en JSON
        $jsonDessins = json_encode($dessins);

        // Envoyer le JSON en réponse
        echo $jsonDessins;
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le dessin n\'a pas pu être ajouté.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>