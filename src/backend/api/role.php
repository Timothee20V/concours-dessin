<?php
function getRole($userID, $connexion) {

    $queryRole = "SELECT U.numUtilisateur,
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
    return $role['Role'];
}
?>