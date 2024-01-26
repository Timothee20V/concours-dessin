-- Requête en français
--SELECT d.numDessin, YEAR(e.dateEvaluation) AS Annee,
--    co.description, u.nom AS NomCompetiteur, d.commentaire AS CommentaireDessin,
--    e.note, e.commentaire AS CommentaireEvaluation, u_2.nom AS NomEvaluateur
--FROM Dessin d
--    JOIN Evaluation e ON d.numDessin = e.numDessin
--    JOIN Concours co ON d.numConcours = co.numConcours
--    JOIN Competiteur com ON d.numCompetiteur = com.numCompetiteur
--    JOIN Utilisateur u ON com.numUtilisateur = u.numUtilisateur
--    JOIN Evaluateur ev ON e.numEvaluateur = ev.numEvaluateur
--    JOIN Utilisateur u_2 ON ev.numUtilisateur = u_2.numUtilisateur;

-- Requête SQL
SELECT Dessin.numDessin, YEAR(Evaluation.dateEvaluation) AS Annee,
    Concours.description, Utilisateur.nom AS NomCompetiteur, Dessin.commentaire AS CommentaireDessin,
    Evaluation.note, Evaluation.commentaire AS CommentaireEvaluation, Utilisateur_1.nom AS NomEvaluateur
FROM Dessin
    JOIN Evaluation ON Dessin.numDessin = Evaluation.numDessin
    JOIN Concours ON Dessin.numConcours = Concours.numConcours
    JOIN Competiteur ON Dessin.numCompetiteur = Competiteur.numCompetiteur
    JOIN Utilisateur ON Competiteur.numUtilisateur = Utilisateur.numUtilisateur
    JOIN Evaluateur ON Evaluation.numEvaluateur = Evaluateur.numEvaluateur
    JOIN Utilisateur AS Utilisateur_1 ON Evaluateur.numUtilisateur = Utilisateur_1.numUtilisateur;
