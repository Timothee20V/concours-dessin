-- Requête 8 en français

-- Afficher le nombre de dessins évalués par chaque évaluateur,
-- ainsi que la moyenne des notes qu'ils ont attribuées.

-- Requête SQL
SELECT
    Evaluateur.numEvaluateur,
    Utilisateur.nom AS NomEvaluateur,
    COUNT(DISTINCT Evaluation.numDessin) AS NombreDessinsEvalues,
    AVG(Evaluation.note) AS MoyenneNotes
FROM
    Evaluateur
        JOIN
    Utilisateur ON Evaluateur.numEvaluateur = Utilisateur.numUtilisateur
        LEFT JOIN
    Evaluation ON Evaluateur.numEvaluateur = Evaluation.numEvaluateur
GROUP BY
    Evaluateur.numEvaluateur, Utilisateur.nom
ORDER BY
    MoyenneNotes DESC;