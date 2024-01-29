<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'GET') {

    $json = file_get_contents('php://input');

    $numEvaluateur = $_GET['numEvaluateur'];

    global $connexion;

    $stmt = $connexion->prepare("SELECT Dessin.numConcours, Dessin.numDessin, Dessin.leDessin, Dessin.commentaire, Dessin.dateRemise, Evaluation.note, Evaluation.commentaire AS commentaireEvaluation
        FROM Dessin
        LEFT JOIN Jury ON Dessin.numJury = Jury.numJury
        LEFT JOIN Evaluation ON Dessin.numDessin = Evaluation.numDessin
        WHERE (Jury.numEvaluateur1 = ? OR Jury.numEvaluateur2 = ?) AND (Evaluation.numEvaluateur = ? OR Evaluation.numEvaluateur IS NULL);");
    $stmt->bind_param("sss", $numEvaluateur, $numEvaluateur, $numEvaluateur);
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