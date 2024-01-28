-- Requête 2 en Français

-- Afficher par ordre croissant de la note tous les dessins qui ont été évalués en 2022.
-- Vous afficherez les informations suivantes :
-- le numéro du dessin et la note attribuée, le nom du compétiteur, la description du concours et le thème du concours.

-- Requête SQL
SELECT
    Dessin.numDessin,
    Evaluation.note,
    Utilisateur.nom AS NomCompetiteur,
    Concours.theme AS DescriptionConcours,
    Concours.dateDebut,
    Concours.dateFin
FROM
    Dessin
        JOIN
    Evaluation ON Dessin.numDessin = Evaluation.numDessin
        JOIN
    Utilisateur ON Dessin.numCompetiteur = Utilisateur.numUtilisateur
        JOIN
    Concours ON Dessin.numConcours = Concours.numConcours
WHERE
    YEAR(Evaluation.dateEvaluation) = 2022
ORDER BY
    Evaluation.note ASC;
