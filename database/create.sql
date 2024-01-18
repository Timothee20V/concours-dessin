DROP DATABASE IF EXISTS `Concours`;
CREATE database IF NOT EXISTS `Concours`;
USE `Concours`;

DROP TABLE IF EXISTS `Evaluation`;
DROP TABLE IF EXISTS `ParticipationClub`;
DROP TABLE IF EXISTS `ParticipationEvaluateur`;
DROP TABLE IF EXISTS `Jury`;
DROP TABLE IF EXISTS `Dessin`;
DROP TABLE IF EXISTS `President`;
DROP TABLE IF EXISTS `Competiteur`;
DROP TABLE IF EXISTS `Evaluateur`;
DROP TABLE IF EXISTS `Administrateur`;
DROP TABLE IF EXISTS `Directeur`;
DROP TABLE IF EXISTS `Utilisateur`;
DROP TABLE IF EXISTS `Concours`;
DROP TABLE IF EXISTS `Club`;

-- Table Club
CREATE TABLE Club
(
    numClub         INT PRIMARY KEY,
    nomClub         VARCHAR(255),
    adresseClub     VARCHAR(255),
    numTelephone    VARCHAR(20),
    nombreAdherents INT,
    ville           VARCHAR(100),
    departement     VARCHAR(100),
    region          VARCHAR(100)
);

-- Table Concours
CREATE TABLE Concours
(
    numConcours INT PRIMARY KEY,
    theme       VARCHAR(255),
    dateDebut   DATE,
    dateFin     DATE,
    etat        VARCHAR(50)
);

-- Table Utilisateur
CREATE TABLE Utilisateur
(
    numUtilisateur     INT PRIMARY KEY,
    nom                VARCHAR(100),
    prenom             VARCHAR(100),
    adresseUtilisateur VARCHAR(255),
    login              VARCHAR(50),
    motDePasse         VARCHAR(50),
    dateAdhesion       DATE,
    numClub            INT,
    FOREIGN KEY (numClub) REFERENCES Club (numClub)
);

-- Table Directeur
CREATE TABLE Directeur
(
    numDirecteur   INT PRIMARY KEY,
    dateDebut      DATE,
    numClub        INT,
    numUtilisateur INT,
    FOREIGN KEY (numClub) REFERENCES Club (numClub),
    FOREIGN KEY (numUtilisateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Administrateur
CREATE TABLE Administrateur
(
    numAdministrateur INT PRIMARY KEY,
    dateDebut         DATE,
    numUtilisateur    INT,
    FOREIGN KEY (numUtilisateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Evaluateur
CREATE TABLE Evaluateur
(
    numEvaluateur  INT PRIMARY KEY,
    specialite     VARCHAR(100),
    numUtilisateur INT,
    FOREIGN KEY (numUtilisateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Competiteur
CREATE TABLE Competiteur
(
    numCompetiteur            INT PRIMARY KEY,
    datePremiereParticipation DATE,
    numUtilisateur            INT,
    FOREIGN KEY (numUtilisateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table President
CREATE TABLE President
(
    numPresident   INT PRIMARY KEY,
    prime          DECIMAL(10, 2),
    numUtilisateur INT,
    numConcours    INT,
    FOREIGN KEY (numUtilisateur) REFERENCES Utilisateur (numUtilisateur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours)
);

-- Table Dessin
CREATE TABLE Dessin
(
    numDessin      INT PRIMARY KEY,
    commentaire    VARCHAR(255),
    classement     INT,
    dateRemise     DATE,
    leDessin       BLOB, -- Ou le type de données approprié pour stocker l'image du dessin
    numCompetiteur INT,
    numConcours    INT,
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur (numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours)
);

-- Table Jury
CREATE TABLE Jury
(
    numConcours    INT,
    numCompetiteur INT,
    PRIMARY KEY (numConcours, numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur (numCompetiteur)
);

-- Table ParticipationEvaluateur
CREATE TABLE ParticipationEvaluateur
(
    numConcours   INT,
    numEvaluateur INT,
    PRIMARY KEY (numConcours, numEvaluateur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur (numEvaluateur)
);

-- Table ParticipationClub
CREATE TABLE ParticipationClub
(
    numConcours INT,
    numClub     INT,
    PRIMARY KEY (numConcours, numClub),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numClub) REFERENCES Club (numClub)
);

-- Table Evaluation
CREATE TABLE Evaluation
(
    numEvaluation  INT PRIMARY KEY,
    dateEvaluation DATE,
    note           DECIMAL(5, 2),
    commentaire    VARCHAR(255),
    numEvaluateur  INT,
    numDessin      INT,
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur (numEvaluateur),
    FOREIGN KEY (numDessin) REFERENCES Dessin (numDessin)
);

-- Contrainte : 4 concours par année (1 par saison)
# ALTER TABLE Concours
#     ADD CONSTRAINT CHK_Saisons_Concours
#         CHECK (
#                     YEAR(dateDebut) = YEAR(dateFin) AND
#                     MONTH(dateDebut) IN (3, 6, 9, 12) -- Correspondant aux débuts des saisons
#             );
#
# -- Contrainte : Le président ne peut pas être compétiteur ni évaluateur
# ALTER TABLE President
#     ADD CONSTRAINT CHK_President_Role
#         CHECK (numCompetiteur IS NULL AND numEvaluateur IS NULL);
#
# -- Contrainte : Tout compétiteur ne peut pas déposer plus de trois dessins dans un même concours
# ALTER TABLE Dessin
#     ADD CONSTRAINT CHK_CompDessin_Limite
#         CHECK (numCompetiteur IS NULL OR (
#                 numCompetiteur IS NOT NULL AND
#                 (SELECT COUNT(*)
#                  FROM Dessin
#                  WHERE numCompetiteur = Dessin.numCompetiteur
#                    AND numConcours = Dessin.numConcours) <= 3
#             ));
#
# -- Contrainte : Un évaluateur ne peut pas évaluer plus de deux dessins d’un même compétiteur dans un même concours,
# -- et ne peut pas évaluer plus de 8 dessins en tout dans un même concours
# ALTER TABLE Evaluation
#     ADD CONSTRAINT CHK_Evaluateur_Limite
#         CHECK (numEvaluateur IS NULL OR (
#                 numEvaluateur IS NOT NULL AND
#                 (SELECT COUNT(*)
#                  FROM Evaluation
#                  WHERE numEvaluateur = Evaluation.numEvaluateur
#                    AND numConcours = Evaluation.numConcours) <= 8 AND
#                 (SELECT COUNT(*)
#                  FROM Evaluation
#                  WHERE numEvaluateur = Evaluation.numEvaluateur
#                    AND numCompetiteur = Evaluation.numCompetiteur
#                    AND numConcours = Evaluation.numConcours) <= 2
#             ));
#
# -- Contrainte : Un évaluateur d’un concours ne peut pas concourir dans celui-ci
# ALTER TABLE ParticipationEvaluateur
#     ADD CONSTRAINT CHK_Evaluateur_Concourir
#         CHECK (NOT EXISTS(
#                 SELECT 1
#                 FROM Competiteur C
#                 WHERE C.numUtilisateur = ParticipationEvaluateur.numEvaluateur
#                   AND C.datePremiereParticipation IS NOT NULL
#                   AND C.datePremiereParticipation <= (SELECT dateDebut FROM Concours WHERE numConcours = ParticipationEvaluateur.numConcours)
#             ));
#
# -- Contrainte : Un évaluateur ne peut pas évaluer des dessins de son Club
# ALTER TABLE Evaluation
#     ADD CONSTRAINT CHK_Evaluateur_Club
#         CHECK (NOT EXISTS(
#                 SELECT 1
#                 FROM Evaluateur E
#                          JOIN Utilisateur U ON E.numUtilisateur = U.numUtilisateur
#                          JOIN Club C ON U.numClub = C.numClub
#                          JOIN Dessin D ON Evaluation.numDessin = D.numDessin
#                 WHERE E.numEvaluateur = Evaluation.numEvaluateur
#                   AND C.numClub = D.numClub
#             ));
#
# -- Contrainte : Un dessin doit être évalué par deux évaluateurs qui constituent un Jury
# ALTER TABLE Jury
#     ADD CONSTRAINT CHK_Jury_Nombre_Evaluateurs
#         CHECK (numEvaluateur1 IS NOT NULL AND numEvaluateur2 IS NOT NULL);
#
# -- Contrainte : Un concours doit mobiliser au moins 2 régions et 2 départements par région
# ALTER TABLE ParticipationClub
#     ADD CONSTRAINT CHK_Concours_Region_Departement
#         CHECK (
#                     (SELECT COUNT(DISTINCT region)
#                      FROM ParticipationClub PC
#                               JOIN Club C ON PC.numClub = C.numClub
#                      WHERE numConcours = ParticipationClub.numConcours) >= 2 AND
#                     (SELECT COUNT(DISTINCT departement)
#                      FROM ParticipationClub PC
#                               JOIN Club C ON PC.numClub = C.numClub
#                      WHERE numConcours = ParticipationClub.numConcours) >= 2
#             );
#
# -- Contrainte : Chaque département impliqué dans un concours doit mobiliser au moins 2 clubs
# ALTER TABLE ParticipationClub
#     ADD CONSTRAINT CHK_Concours_Departement_Clubs
#         CHECK (
#                 (SELECT COUNT(DISTINCT C.numClub)
#                  FROM ParticipationClub PC
#                           JOIN Club C ON PC.numClub = C.numClub
#                  WHERE numConcours = ParticipationClub.numConcours) >= 2
#             );
#
# -- Contrainte : Tout club qui participe à un concours doit mobiliser au moins 6 compétiteurs et 3 évaluateurs
# ALTER TABLE ParticipationClub
#     ADD CONSTRAINT CHK_Concours_Club_Participants
#         CHECK (
#                     (SELECT COUNT(DISTINCT numCompetiteur)
#                      FROM Competiteur
#                      WHERE numUtilisateur IN (SELECT numUtilisateur FROM Utilisateur WHERE numClub = ParticipationClub.numClub)) >= 6 AND
#                     (SELECT COUNT(DISTINCT numEvaluateur)
#                      FROM Evaluateur
#                      WHERE numUtilisateur IN (SELECT numUtilisateur FROM Utilisateur WHERE numClub = ParticipationClub.numClub)) >= 3
#             );
