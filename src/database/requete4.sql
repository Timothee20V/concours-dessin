-- Requête en français
--SELECT Utilisateur.nom, Utilisateur.prenom,
--    YEAR(CURRENT_DATE()) - YEAR(Utilisateur.dateNaissance) -
--    (RIGHT(CURRENT_DATE(), 5) < RIGHT(Utilisateur.dateNaissance, 5)) AS age
--FROM Utilisateur
--WHERE EXISTS (
--    SELECT DISTINCT numConcours
--    FROM Concours
--    EXCEPT
--    SELECT DISTINCT numConcours
--    FROM ParticipationCompetiteur
--    WHERE Utilisateur.numUtilisateur = ParticipationCompetiteur.numUtilisateur
--    )
--ORDER BY age ASC;

-- Requête SQL
SELECT Utilisateur.nom, Utilisateur.prenom,
    YEAR(CURRENT_DATE()) - YEAR(Utilisateur.dateNaissance) -
    (RIGHT(CURRENT_DATE(), 5) < RIGHT(Utilisateur.dateNaissance, 5)) AS age
FROM Utilisateur
WHERE EXISTS (
    SELECT DISTINCT numConcours
    FROM Concours
    EXCEPT
    SELECT DISTINCT numConcours
    FROM ParticipationCompetiteur
    WHERE Utilisateur.numUtilisateur = ParticipationCompetiteur.numUtilisateur
    )
ORDER BY age ASC;
