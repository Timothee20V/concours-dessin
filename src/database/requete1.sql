-- Requête en français
--SELECT c.nomClub, c.adresseClub,
--    YEAR(CURRENT_DATE()) - YEAR(u.dateNaissance) -
--    (RIGHT(CURRENT_DATE(), 5) < RIGHT(u.dateNaissance, 5)) AS age,
--    co.theme, co.dateDebut, co.dateFin,
--    cl.nomClub, cl.departement, cl.region
--FROM Competiteur com
--    JOIN Utilisateur u ON com.numUtilisateur = u.numUtilisateur
--    JOIN Club c ON u.numClub = c.numClub
--    JOIN Dessin d ON com.numCompetiteur = d.numCompetiteur
--    JOIN Concours co ON d.numConcours = co.numConcours
--    JOIN Club cl ON co.numClub = cl.numClub
--WHERE YEAR(co.dateDebut) = 2023;

-- Requête SQL
SELECT Club.nomClub, Club.adresseClub,
    YEAR(CURRENT_DATE()) - YEAR(Utilisateur.dateNaissance) -
    (RIGHT(CURRENT_DATE(), 5) < RIGHT(Utilisateur.dateNaissance, 5)) AS age,
    Concours.theme, Concours.dateDebut, Concours.dateFin,
    Club_1.nomClub, Club_1.departement, Club_1.region
FROM Competiteur
    JOIN Utilisateur ON Competiteur.numUtilisateur = Utilisateur.numUtilisateur
    JOIN Club ON Utilisateur.numClub = Club.numClub
    JOIN Dessin ON Competiteur.numCompetiteur = Dessin.numCompetiteur
    JOIN Concours ON Dessin.numConcours = Concours.numConcours
    JOIN Club AS Club_1 ON Concours.numClub = Club_1.numClub
WHERE YEAR(Concours.dateDebut) = 2023;
