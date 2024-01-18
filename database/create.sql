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
    leDessin       TEXT,
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
