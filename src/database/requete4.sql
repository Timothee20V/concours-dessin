-- Requête 4 en français

-- Nom, prénom et âge des compétiteurs qui ont participé à tous les concours qui ont été organisés.
-- L’affichage doit se faire dans l’ordre croissant des âges.

-- Requête SQL
SELECT
    Utilisateur.nom AS NomCompetiteur,
    Utilisateur.prenom AS PrenomCompetiteur,
    YEAR(NOW()) - YEAR(Utilisateur.dateNaissance) AS Age
FROM
    Utilisateur
    JOIN
    Competiteur ON Utilisateur.numUtilisateur = Competiteur.numCompetiteur
    JOIN
    ParticipationCompetiteur ON Competiteur.numCompetiteur = ParticipationCompetiteur.numCompetiteur
    JOIN
    Concours ON ParticipationCompetiteur.numConcours = Concours.numConcours
WHERE
    NOT EXISTS (
    SELECT *
    FROM Concours CI
    WHERE NOT EXISTS (
    SELECT *
    FROM ParticipationCompetiteur PCI
    WHERE PCI.numCompetiteur = Utilisateur.numUtilisateur
  AND PCI.numConcours = CI.numConcours
    )
    )
ORDER BY
    Age ASC;
