-- Requête 3 en Français

-- Pour cette requête on vous demande d’afficher des informations sur tous les dessins qui ont été évalués et qui sont stockés dans la base.
-- Voici les informations qu’on souhaite voir affichés :
-- le numéro, l’année, la description du concours dans lequel le dessin a été évalué ;
-- le nom du compétiteur ayant proposé le dessin ; le numéro et le commentaire du dessin fait par le compétiteur ;
-- la note et le commentaire de l’évaluation ; le nom de l’évaluateur.

-- Requête SQL
SELECT
    Concours.numConcours,
    YEAR(Concours.dateDebut) AS AnneeConcours,
    Concours.theme AS DescriptionConcours,
    UtilisateurCompetiteur.nom AS NomCompetiteur,
    UtilisateurCompetiteur.numUtilisateur AS NumeroCompetiteur,
    Dessin.commentaire AS CommentaireCompetiteur,
    Evaluation.note,
    Evaluation.commentaire AS CommentaireEvaluation,
    UtilisateurEvaluateur.nom AS NomEvaluateur
FROM
    Dessin
    JOIN
    Evaluation ON Dessin.numDessin = Evaluation.numDessin
    JOIN
    Utilisateur UtilisateurCompetiteur ON Dessin.numCompetiteur = UtilisateurCompetiteur.numUtilisateur
    JOIN
    Concours ON Dessin.numConcours = Concours.numConcours
    JOIN
    Evaluateur ON Evaluation.numEvaluateur = Evaluateur.numEvaluateur
    JOIN
    Utilisateur UtilisateurEvaluateur ON Evaluateur.numEvaluateur = UtilisateurEvaluateur.numUtilisateur;
