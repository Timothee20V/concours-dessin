INSERT INTO Club (numClub, nomClub, adresseClub, numTelephone, nombreAdherents, ville, departement, region)
VALUES
  (1, 'Club Artiste', '123 Art Street', '123-456-7890', 50, 'Artville', 'ArtDept', 'ArtRegion'),
  (2, 'Palette Club', '456 Paint Avenue', '987-654-3210', 30, 'Painttown', 'PaintDept', 'PaintRegion'),
  (3, 'Sculpture Society', '789 Clay Lane', '111-222-3333', 40, 'Sculptopolis', 'SculptDept', 'SculptRegion');

INSERT INTO Concours (numConcours, theme, dateDebut, dateFin, etat)
VALUES
  (1, 'Abstract Art Contest', '2025-03-01', '2025-03-15', 'En cours'),
  (2, 'Portrait Challenge', '2025-04-01', '2025-04-15', 'À venir'),
  (3, 'Sculpture Showcase', '2025-05-01', '2025-05-15', 'À venir');

INSERT INTO Utilisateur (numUtilisateur, nom, prenom, adresseUtilisateur, login, motDePasse, dateAdhesion, numClub)
VALUES
  (1, 'Doe', 'John', '123 Main St', 'john_doe', 'motdepasse1', '2023-01-01', 1),
  (2, 'Smith', 'Jane', '456 Oak St', 'jane_smith', 'motdepasse2', '2023-01-15', 2),
  (3, 'Johnson', 'Bob', '789 Pine St', 'bob_johnson', 'motdepasse3', '2023-02-01', 1),
  (4, 'Taylor', 'Alice', '101 Maple St', 'alice_taylor', 'motdepasse4', '2023-02-15', 3),
  (5, 'Brown', 'Chris', '202 Elm St', 'chris_brown', 'motdepasse5', '2023-03-01', 2),
  (6, 'Miller', 'Emily', '303 Birch St', 'emily_miller', 'motdepasse6', '2023-03-15', 1),
  (7, 'Wilson', 'David', '404 Cedar St', 'david_wilson', 'motdepasse7', '2023-04-01', 2),
  (8, 'Anderson', 'Lisa', '505 Spruce St', 'lisa_anderson', 'motdepasse8', '2023-04-15', 3),
  (9, 'Martinez', 'Mark', '606 Fir St', 'mark_martinez', 'motdepasse9', '2023-05-01', 1),
  (10, 'Lee', 'Anna', '707 Redwood St', 'anna_lee', 'motdepasse10', '2023-05-15', 2);
  (11, 'Evans', 'Michael', '808 Pineapple St', 'michael_evans', 'motdepasse11', '2023-06-01', 3),
  (12, 'Cooper', 'Samantha', '909 Mango St', 'samantha_cooper', 'motdepasse12', '2023-06-15', 1),
  (13, 'Baker', 'Daniel', '1011 Banana St', 'daniel_baker', 'motdepasse13', '2023-07-01', 2),
  (14, 'Garcia', 'Catherine', '1212 Papaya St', 'catherine_garcia', 'motdepasse14', '2023-07-15', 3),
  (15, 'Fisher', 'Patrick', '1313 Kiwi St', 'patrick_fisher', 'motdepasse15', '2023-08-01', 1),
  (16, 'Hernandez', 'Julia', '1414 Grape St', 'julia_hernandez', 'motdepasse16', '2023-08-15', 2),
  (17, 'Gomez', 'Ryan', '1515 Lemon St', 'ryan_gomez', 'motdepasse17', '2023-09-01', 3),
  (18, 'Parker', 'Olivia', '1616 Raspberry St', 'olivia_parker', 'motdepasse18', '2023-09-15', 1),
  (19, 'Lopez', 'William', '1717 Blueberry St', 'william_lopez', 'motdepasse19', '2023-10-01', 2),
  (20, 'Young', 'Sophia', '1818 Strawberry St', 'sophia_young', 'motdepasse20', '2023-10-15', 3);
  (21, 'Thompson', 'Eric', '1919 Orange St', 'eric_thompson', 'motdepasse21', '2023-11-01', 1),
  (22, 'Barnes', 'Jessica', '2020 Plum St', 'jessica_barnes', 'motdepasse22', '2023-11-15', 2),
  (23, 'Hill', 'Kevin', '2121 Blackberry St', 'kevin_hill', 'motdepasse23', '2023-12-01', 3),
  (24, 'Stewart', 'Amanda', '2222 Cherry St', 'amanda_stewart', 'motdepasse24', '2023-12-15', 1),
  (25, 'Bell', 'Brian', '2323 Pomegranate St', 'brian_bell', 'motdepasse25', '2024-01-01', 2),
  (26, 'Ward', 'Megan', '2424 Watermelon St', 'megan_ward', 'motdepasse26', '2024-01-15', 3),
  (27, 'Cruz', 'Kyle', '2525 Lime St', 'kyle_cruz', 'motdepasse27', '2024-02-01', 1),
  (28, 'Reyes', 'Hannah', '2626 Cranberry St', 'hannah_reyes', 'motdepasse28', '2024-02-15', 2),
  (29, 'Fleming', 'Derek', '2727 Avocado St', 'derek_fleming', 'motdepasse29', '2024-03-01', 3),
  (30, 'Carter', 'Natalie', '2828 Guava St', 'natalie_carter', 'motdepasse30', '2024-03-15', 1);
  (31, 'Mitchell', 'Gregory', '2929 Apricot St', 'gregory_mitchell', 'motdepasse31', '2024-04-01', 2),
  (32, 'Bryant', 'Isabel', '3030 Fig St', 'isabel_bryant', 'motdepasse32', '2024-04-15', 3),
  (33, 'Dunn', 'Jeremy', '3131 Nectarine St', 'jeremy_dunn', 'motdepasse33', '2024-05-01', 1),
  (34, 'Wells', 'Eva', '3232 Tangerine St', 'eva_wells', 'motdepasse34', '2024-05-15', 2),
  (35, 'Banks', 'Nicholas', '3333 Olive St', 'nicholas_banks', 'motdepasse35', '2024-06-01', 3),
  (36, 'Russell', 'Grace', '3434 Date St', 'grace_russell', 'motdepasse36', '2024-06-15', 1),
  (37, 'Griffin', 'Peter', '3535 Lime St', 'peter_griffin', 'motdepasse37', '2024-07-01', 2),
  (38, 'Simmons', 'Lily', '3636 Mango St', 'lily_simmons', 'motdepasse38', '2024-07-15', 3),
  (39, 'Fisher', 'Jordan', '3737 Kiwi St', 'jordan_fisher', 'motdepasse39', '2024-08-01', 1),
  (40, 'Mendez', 'Sophie', '3838 Pineapple St', 'sophie_mendez', 'motdepasse40', '2024-08-15', 2);
  (41, 'Ford', 'Connor', '3939 Plum St', 'connor_ford', 'motdepasse41', '2024-09-01', 3),
  (42, 'Ferguson', 'Mia', '4040 Blackberry St', 'mia_ferguson', 'motdepasse42', '2024-09-15', 1),
  (43, 'Watson', 'Logan', '4141 Banana St', 'logan_watson', 'motdepasse43', '2024-10-01', 2),
  (44, 'Murray', 'Sophia', '4242 Raspberry St', 'sophia_murray', 'motdepasse44', '2024-10-15', 3),
  (45, 'Dean', 'Gabriel', '4343 Orange St', 'gabriel_dean', 'motdepasse45', '2024-11-01', 1),
  (46, 'Ford', 'Emily', '4444 Mango St', 'emily_ford', 'motdepasse46', '2024-11-15', 2),
  (47, 'Ramirez', 'Aiden', '4545 Kiwi St', 'aiden_ramirez', 'motdepasse47', '2024-12-01', 3),
  (48, 'Mills', 'Isabella', '4646 Grape St', 'isabella_mills', 'motdepasse48', '2024-12-15', 1),
  (49, 'Graham', 'Ella', '4747 Lemon St', 'ella_graham', 'motdepasse49', '2025-01-01', 2),
  (50, 'Hale', 'Jackson', '4848 Pomegranate St', 'jackson_hale', 'motdepasse50', '2025-01-15', 3);

INSERT INTO Directeur (numDirecteur, dateDebut, numClub, numUtilisateur)
VALUES
  (1, '2023-01-01', 1, 1),
  (2, '2023-02-01', 2, 2),
  (3, '2023-03-01', 3, 3);

INSERT INTO Administrateur (numAdministrateur, dateDebut, numUtilisateur)
VALUES
  (1, '2023-01-01', 1),
  (2, '2023-02-01', 2),
  (3, '2023-03-01', 3);

INSERT INTO Evaluateur (numEvaluateur, specialite, numUtilisateur)
VALUES
  (1, 'Peinture', 1),
  (2, 'Sculpture', 2),
  (3, 'Dessin', 3);

INSERT INTO Competiteur (numCompetiteur, datePremiereParticipation, numUtilisateur)
VALUES
  (1, '2023-01-01', 1),
  (2, '2023-02-01', 2),
  (3, '2023-03-01', 3);

INSERT INTO President (numPresident, prime, numUtilisateur, numConcours)
VALUES
  (1, 1000, 1, 1),
  (2, 800, 2, 2),
  (3, 1200, 3, 3);

INSERT INTO Dessin (numDessin, commentaire, classement, dateRemise, leDessin, numCompetiteur, numConcours)
VALUES
  (1, 'Œuvre exceptionnelle', 1, '2024-01-01', 'URL_IMAGE_1', 1, 1),
  (2, 'Très créatif', 2, '2024-02-01', 'URL_IMAGE_2', 2, 2),
  (3, 'Belle composition', 3, '2024-03-01', 'URL_IMAGE_3', 3, 3);

INSERT INTO Jury (numConcours, numCompetiteur)
VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 3);

INSERT INTO ParticipationEvaluateur (numConcours, numEvaluateur)
VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 3);

INSERT INTO ParticipationClub (numConcours, numClub)
VALUES
  (1, 1),
  (1, 2),
  (2, 2),
  (2, 3),
  (3, 1),
  (3, 3);

INSERT INTO Evaluation (numEvaluation, dateEvaluation, note, commentaire, numEvaluateur, numDessin)
VALUES
  (1, '2024-01-05', 90, 'Excellent travail!', 1, 1),
  (2, '2024-02-10', 85, 'Belle utilisation des couleurs', 2, 2),
  (3, '2024-03-15', 92, 'Technique impressionnante', 3, 3);