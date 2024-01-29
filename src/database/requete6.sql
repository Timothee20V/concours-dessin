-- Requête 6 en français

-- Afficher le top 5 des compétiteurs qui ont reçu les meilleures notes pour leurs dessins,
-- ainsi que la moyenne de leurs notes.

-- Requête SQL
SELECT
    Utilisateur.nom AS NomCompetiteur,
    Utilisateur.prenom AS PrenomCompetiteur,
    AVG(Evaluation.note) AS MoyenneNotes
FROM
    Utilisateur
        JOIN
    Competiteur ON Utilisateur.numUtilisateur = Competiteur.numCompetiteur
        JOIN
    Dessin ON Competiteur.numCompetiteur = Dessin.numCompetiteur
        JOIN
    Evaluation ON Dessin.numDessin = Evaluation.numDessin
GROUP BY
    Utilisateur.numUtilisateur, Utilisateur.nom, Utilisateur.prenom
ORDER BY
    MoyenneNotes DESC
    LIMIT 5;