<?php

session_start();
require_once "../database.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $numJury = $data->numJury;
    $numDessin= $data->numDessin;

    global $connexion;

    $stmt = $connexion->prepare("UPDATE Dessin SET numJury = ? WHERE numDessin = ?");
    $stmt->bind_param("ss", $numJury, $numDessin);
    if ($stmt->execute()) {
        echo json_encode(array('status' => 'success', 'message' => 'Le jury a été associé au dessin avec succès.'));
        http_response_code(200);
    } else {
        $error = $connexion->error;
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, le jury n\'a pas pu être associé au dessin.', 'error' => $error));
        http_response_code(200);
    }
    $stmt->close();
    mysqli_close($connexion);
    exit;
}

?>