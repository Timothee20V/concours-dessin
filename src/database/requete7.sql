-- Requête 7 en français

--Afficher le nombre de compétiteurs par club, trié par ordre décroissant du nombre de compétiteurs.

-- Requête SQL
SELECT
    Club.nomClub AS NomClub,
    COUNT(Competiteur.numCompetiteur) AS NombreCompetiteurs
FROM
    Club
        LEFT JOIN
    Utilisateur ON Club.numClub = Utilisateur.numClub
        LEFT JOIN
    Competiteur ON Utilisateur.numUtilisateur = Competiteur.numCompetiteur
GROUP BY
    Club.numClub, Club.nomClub
ORDER BY
    NombreCompetiteurs DESC;