-- Requête 5 en français

-- Nom de la région qui a la meilleure moyenne des notes des dessins proposés.
-- Afficher le nom de la région et la moyenne des notes de cette région.

-- Requête SQL
SELECT
    Club.region AS NomRegion,
    AVG(Evaluation.note) AS MoyenneNotes
FROM
    Evaluation
        JOIN
    Dessin ON Evaluation.numDessin = Dessin.numDessin
        JOIN
    Competiteur ON Dessin.numCompetiteur = Competiteur.numCompetiteur
        JOIN
    Utilisateur ON Competiteur.numCompetiteur = Utilisateur.numUtilisateur
        JOIN
    Club ON Utilisateur.numClub = Club.numClub
GROUP BY
    Club.region
ORDER BY
    MoyenneNotes DESC
    LIMIT 1;