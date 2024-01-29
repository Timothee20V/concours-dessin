<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    $json = file_get_contents('php://input');

    $numCompetiteur = $_GET['numCompetiteur'];

    global $connexion;

    $stmt = $connexion->prepare("SELECT Concours.numConcours, Concours.theme, Concours.dateDebut, Concours.dateFin, Dessin.numDessin, Dessin.classement 
        FROM Concours
        JOIN ParticipationCompetiteur ON Concours.numConcours = ParticipationCompetiteur.numConcours
        JOIN Dessin ON ParticipationCompetiteur.numConcours = Dessin.numConcours AND ParticipationCompetiteur.numCompetiteur = Dessin.numCompetiteur
        WHERE Concours.etat = 'Evalue' AND ParticipationCompetiteur.numCompetiteur = ?
        GROUP BY Concours.numConcours;");
    $stmt->bind_param("s", $numCompetiteur);
    if ($stmt->execute()) {
        $result = $stmt->get_result();
        $concours = $result->fetch_all(MYSQLI_ASSOC);

        // Convertir le tableau de dessins en JSON
        $jsonConcours = json_encode($concours);

        // Envoyer le JSON en réponse
        echo $jsonConcours;
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, les concours n\'ont pas pu être chargés.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>