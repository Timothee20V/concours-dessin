-- Requête en français
--SELECT Dessin.numDessin, Evaluation.note, Utilisateur.nom,
--       Concours.theme, Concours.dateDebut
--FROM Dessin
--         JOIN Evaluation ON Dessin.numDessin = Evaluation.numDessin
--         JOIN Evaluateur ON Evaluation.numEvaluateur = Evaluateur.numEvaluateur
--         JOIN Utilisateur ON Evaluateur.numUtilisateur = Utilisateur.numUtilisateur
--         JOIN Concours ON Dessin.numConcours = Concours.numConcours
--WHERE YEAR(Evaluation.dateEvaluation) = 2022
--ORDER BY Evaluation.note ASC;

-- Requête SQL
SELECT Dessin.numDessin, Evaluation.note, Utilisateur.nom,
       Concours.theme, Concours.dateDebut
FROM Dessin
         JOIN Evaluation ON Dessin.numDessin = Evaluation.numDessin
         JOIN Evaluateur ON Evaluation.numEvaluateur = Evaluateur.numEvaluateur
         JOIN Utilisateur ON Evaluateur.numUtilisateur = Utilisateur.numUtilisateur
         JOIN Concours ON Dessin.numConcours = Concours.numConcours
WHERE YEAR(Evaluation.dateEvaluation) = 2022
ORDER BY Evaluation.note ASC;
