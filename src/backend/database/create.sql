DROP DATABASE IF EXISTS `Concours`;
CREATE database IF NOT EXISTS `Concours`;
USE `Concours`;

DROP TABLE IF EXISTS `Evaluation`;
DROP TABLE IF EXISTS `ParticipationClub`;
DROP TABLE IF EXISTS `ParticipationCompetiteur`;
DROP TABLE IF EXISTS `Dessin`;
DROP TABLE IF EXISTS `Jury`;
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
    numClub         INT PRIMARY KEY AUTO_INCREMENT,
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
    numConcours INT PRIMARY KEY AUTO_INCREMENT,
    theme       VARCHAR(255),
    dateDebut   DATE,
    dateFin     DATE,
    etat        VARCHAR(50)
);

-- Table Utilisateur
CREATE TABLE Utilisateur
(
    numUtilisateur     INT PRIMARY KEY AUTO_INCREMENT,
    nom                VARCHAR(100),
    prenom             VARCHAR(100),
    adresseUtilisateur VARCHAR(255),
    login              VARCHAR(50),
    motDePasse         VARCHAR(50),
    dateAdhesion       DATE,
    numClub            INT,
    dateNaissance      DATE,
    FOREIGN KEY (numClub) REFERENCES Club (numClub)
);

-- Table Directeur
CREATE TABLE Directeur
(
    numDirecteur   INT PRIMARY KEY,
    dateDebut      DATE,
    numClub        INT,
    FOREIGN KEY (numClub) REFERENCES Club (numClub),
    FOREIGN KEY (numDirecteur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Administrateur
CREATE TABLE Administrateur
(
    numAdministrateur INT PRIMARY KEY,
    dateDebut         DATE,
    FOREIGN KEY (numAdministrateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Evaluateur
CREATE TABLE Evaluateur
(
    numEvaluateur  INT PRIMARY KEY,
    specialite     VARCHAR(100),
    FOREIGN KEY (numEvaluateur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table Competiteur
CREATE TABLE Competiteur
(
    numCompetiteur            INT PRIMARY KEY,
    datePremiereParticipation DATE,
    FOREIGN KEY (numCompetiteur) REFERENCES Utilisateur (numUtilisateur)
);

-- Table President
CREATE TABLE President
(
    numPresident   INT PRIMARY KEY,
    prime          DECIMAL(10, 2),
    numConcours    INT,
    FOREIGN KEY (numPresident) REFERENCES Utilisateur (numUtilisateur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours)
);

-- Table Jury
CREATE TABLE Jury
(
    numJury        INT AUTO_INCREMENT,
    numConcours   INT,
    numEvaluateur1 INT,
    numEvaluateur2 INT,
    PRIMARY KEY (numJury, numConcours, numEvaluateur1, numEvaluateur2),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numEvaluateur1) REFERENCES Evaluateur (numEvaluateur),
    FOREIGN KEY (numEvaluateur2) REFERENCES Evaluateur (numEvaluateur)
);

-- Table Dessin
CREATE TABLE Dessin
(
    numDessin      INT PRIMARY KEY AUTO_INCREMENT,
    commentaire    VARCHAR(255),
    classement     INT,
    dateRemise     DATE,
    leDessin       VARCHAR(100),
    numCompetiteur INT,
    numConcours    INT,
    numJury        INT,
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur (numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numJury) REFERENCES Jury (numJury)
);

-- Table ParticipationCompetiteur
CREATE TABLE ParticipationCompetiteur
(
    numConcours    INT,
    numCompetiteur INT,
    PRIMARY KEY (numConcours, numCompetiteur),
    FOREIGN KEY (numConcours) REFERENCES Concours (numConcours),
    FOREIGN KEY (numCompetiteur) REFERENCES Competiteur (numCompetiteur)
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
    numEvaluation  INT PRIMARY KEY AUTO_INCREMENT,
    dateEvaluation DATE,
    note           DECIMAL(5, 2),
    commentaire    VARCHAR(255),
    numEvaluateur  INT,
    numDessin      INT,
    FOREIGN KEY (numEvaluateur) REFERENCES Evaluateur (numEvaluateur),
    FOREIGN KEY (numDessin) REFERENCES Dessin (numDessin)
);