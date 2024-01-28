-- Requête 1 en Français
--
-- Afficher le nom et l’adresse et l’âge de tous les compétiteurs qui ont participé dans un concours en 2023.
-- Vous afficherez aussi la description du concours la date de début et la date de fin.
-- Le club du compétiteur, le département et la région.

-- Requête SQL
SELECT
    Utilisateur.nom AS NomCompetiteur,
    Utilisateur.adresseUtilisateur AS AdresseCompetiteur,
    YEAR(NOW()) - YEAR(Utilisateur.dateNaissance) AS Age,
    Concours.theme AS DescriptionConcours, Concours.dateDebut, Concours.dateFin,
    Club.nomClub AS ClubCompetiteur, Club.departement, Club.region
FROM
    Utilisateur
JOIN
    Competiteur ON Utilisateur.numUtilisateur = Competiteur.numCompetiteur
JOIN
    ParticipationCompetiteur ON Competiteur.numCompetiteur = ParticipationCompetiteur.numCompetiteur
JOIN
    Concours ON ParticipationCompetiteur.numConcours = Concours.numConcours
JOIN
    Club ON Utilisateur.numClub = Club.numClub
WHERE
    YEAR(Concours.dateDebut) = 2023;
