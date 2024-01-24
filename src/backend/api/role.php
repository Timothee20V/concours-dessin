<?php

session_start();
require_once "database.php";

global $connexion;
$username = $_SESSION['UserLogin'];

$queryUserID = "SELECT numUtilisateur FROM Utilisateur WHERE login = ?";
error_log('username : ' . $username);

$stmt = $connexion->prepare($queryUserID);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();
$stmt->close();

$userID = $result->fetch_assoc();
$userID = $userID['numUtilisateur'];

$queryRole = "SELECT
    U.numUtilisateur,
    CASE
        WHEN E.numEvaluateur IS NOT NULL THEN 'Evaluateur'
        WHEN D.numDirecteur IS NOT NULL THEN 'Directeur'
        WHEN P.numPresident IS NOT NULL THEN 'President'
        WHEN C.numCompetiteur IS NOT NULL THEN 'Competiteur'
        ELSE 'Aucun role'
    END AS Role
FROM Utilisateur U
LEFT JOIN Evaluateur E ON U.numUtilisateur = E.numEvaluateur
LEFT JOIN Directeur D ON U.numUtilisateur = D.numDirecteur
LEFT JOIN President P ON U.numUtilisateur = P.numPresident
LEFT JOIN Competiteur C ON U.numUtilisateur = C.numCompetiteur
WHERE U.numUtilisateur = ?;";

$stmt = $connexion->prepare("$queryRole");
$stmt->bind_param("s", $userID);
$stmt->execute();
$result = $stmt->get_result();
$stmt->close();

$role = $result->fetch_assoc();
$role = $role['Role'];

if ($role !== null) {
    $_SESSION['UserRole'] = $role;
    http_response_code(200);
    error_log('Request for the user : \'' . $username . '\', with the userID : \'' . $userID . '\', gives role : \'' . $role . '\'');
    echo json_encode(array('role' => $role));
} else {
    http_response_code(500);
    error_log('An error occured while fetching the role');
}
mysqli_close($connexion);
exit;
?>