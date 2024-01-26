<?php

session_start();
require_once "database.php";
require_once "role.php";

if ($_SERVER['REQUEST_METHOD'] === 'POST') {

    $json = file_get_contents('php://input');

    // Décoder le JSON en un objet PHP
    $data = json_decode($json);

    $username = $data->username;
    $password = $data->password;

    // Request to the database

    error_log('Nom d\'utilisateur reçu : ' . $username);
    error_log('Mot de passe reçu : ' . $password);

    global $connexion;

    $stmt = $connexion->prepare("SELECT * FROM `Utilisateur` WHERE `login` = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows !== 0) {
        $user = $result->fetch_assoc();
        if ($user !== null && $user['motDePasse'] == $password) {
            $_SESSION['UserLogin'] = $username;
            http_response_code(200);
            error_log('Good');
            error_log('Role : ' . getRole($user['numUtilisateur'], $connexion));
            echo json_encode(array(
                'status' => 'success',
                'id' => $user['numUtilisateur'],
                'login' => $user['login'],
                'name' => $user['nom'],
                'surname' => $user['prenom'],
                'role' => getRole($user['numUtilisateur'], $connexion)
            ));
        } else {
            http_response_code(200);
            error_log('Bad');
            echo json_encode(array('status' => 'error', 'message' => 'Erreur, aucun identifiant ne correspond à ces informations.'));
        }
    } else {
        http_response_code(200);
        error_log('Bad');
        echo json_encode(array('status' => 'error', 'message' => 'Erreur, aucun identifiant ne correspond à ces informations.'));
    }

    $stmt->close();
    mysqli_close($connexion);
    exit;
}
?>