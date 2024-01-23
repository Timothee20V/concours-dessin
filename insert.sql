INSERT INTO Club (numClub, nomClub, adresseClub, numTelephone, nombreAdherents, ville, departement, region)
VALUES
  (1, 'Club Artiste', '123 Art Street', '123-456-7890', 50, 'Saumur', '49', 'Pays de la Loire'),
  (2, 'Palette Club', '456 Paint Avenue', '987-654-3210', 30, 'Macon', '71', 'Bourgogne-Franche-Compte'),
  (3, 'Sculpture Society', '789 Clay Lane', '111-222-3333', 40, 'Chalon-sur-Saone ', '71', 'Bourgogne-Franche-Compte'),
  (4, 'Artisans du Pinceau', '789 Palette St', '0123456789', 120, 'Dijon', '21', 'Bourgogne-Franche-Compte'),
  (5, 'Sculpteurs Talentueux', '101 Marble Ave', '0234567890', 90, 'La Flèche', '72', 'Pays de la Loire'),
  (6, 'Dessinateurs Créatifs', '202 Sketch Rd', '0345678901', 80, 'Beaune', '21', 'Bourgogne-Franche-Compte'),
  (7, 'Photographes Artistiques', '303 Snapshot St', '0456789012', 110, 'Le Mans', '72', 'Pays de la Loire'),
  (8, 'Art Moderne Expressif', '404 Canvas Ave', '0567890123', 95, 'Montceau-les-Mines', '71', 'Bourgogne-Franche-Compte'),
  (9, 'Couleurs Vibrantes', '505 Hue Rd', '0678901234', 75, 'Cholet', '49', 'Pays de la Loire'),
  (10, 'Créateurs Multidisciplinaires', '606 Imagination St', '0789012345', 100, 'Angers', '49', 'Pays de la Loire');

INSERT INTO Concours (numConcours, theme, dateDebut, dateFin, etat)
VALUES
  (1, 'Spring Art Showcase', '2022-03-01', '2022-03-07', 'Evalue'),
  (2, 'Summer Colors Exhibition', '2022-07-09', '2022-07-15', 'Evalue'),
  (3, 'Autumn Impressions Contest', '2022-09-28', '2022-10-04', 'Evalue'),
  (4, 'Winter Art Wonderland', '2022-12-01', '2022-12-07', 'Evalue'),
  (5, 'Spring Blossoms Art Festival', '2023-04-12', '2023-04-19', 'Evalue'),
  (6, 'Summer Harmony Exhibition', '2023-07-27', '2023-08-03', 'En cours'),
  (7, 'Autumn Palette Contest', '2023-09-02', '2023-09-08', 'En attente'),
  (8, 'Winter Elegance Showcase', '2023-12-05', '2023-12-11', 'Non commence');

INSERT INTO Utilisateur (numUtilisateur, nom, prenom, adresseUtilisateur, login, motDePasse, dateAdhesion, numClub)
VALUES
  (1, 'Doe', 'John', '123 Main St', 'john_doe', 'motdepasse1', '2013-01-01', 1),
  (2, 'Smith', 'Jane', '456 Oak St', 'jane_smith', 'motdepasse2', '2013-01-15', 2),
  (3, 'Johnson', 'Bob', '789 Pine St', 'bob_johnson', 'motdepasse3', '2013-02-01', 1),
  (4, 'Taylor', 'Alice', '101 Maple St', 'alice_taylor', 'motdepasse4', '2013-02-15', 3),
  (5, 'Brown', 'Chris', '202 Elm St', 'chris_brown', 'motdepasse5', '2013-03-01', 2),
  (6, 'Miller', 'Emily', '303 Birch St', 'emily_miller', 'motdepasse6', '2013-03-15', 1),
  (7, 'Wilson', 'David', '404 Cedar St', 'david_wilson', 'motdepasse7', '2013-04-01', 2),
  (8, 'Anderson', 'Lisa', '505 Spruce St', 'lisa_anderson', 'motdepasse8', '2013-04-15', 3),
  (9, 'Martinez', 'Mark', '606 Fir St', 'mark_martinez', 'motdepasse9', '2013-05-01', 1),
  (10, 'Lee', 'Anna', '707 Redwood St', 'anna_lee', 'motdepasse10', '2013-05-15', 2),
  (11, 'Evans', 'Michael', '808 Pineapple St', 'michael_evans', 'motdepasse11', '2013-06-01', 3),
  (12, 'Cooper', 'Samantha', '909 Mango St', 'samantha_cooper', 'motdepasse12', '2013-06-15', 1),
  (13, 'Baker', 'Daniel', '1011 Banana St', 'daniel_baker', 'motdepasse13', '2013-07-01', 2),
  (14, 'Garcia', 'Catherine', '1212 Papaya St', 'catherine_garcia', 'motdepasse14', '2013-07-15', 3),
  (15, 'Fisher', 'Patrick', '1313 Kiwi St', 'patrick_fisher', 'motdepasse15', '2013-08-01', 1),
  (16, 'Hernandez', 'Julia', '1414 Grape St', 'julia_hernandez', 'motdepasse16', '2013-08-15', 2),
  (17, 'Gomez', 'Ryan', '1515 Lemon St', 'ryan_gomez', 'motdepasse17', '2013-09-01', 3),
  (18, 'Parker', 'Olivia', '1616 Raspberry St', 'olivia_parker', 'motdepasse18', '2013-09-15', 1),
  (19, 'Lopez', 'William', '1717 Blueberry St', 'william_lopez', 'motdepasse19', '2013-10-01', 2),
  (20, 'Young', 'Mark', '1818 Strawberry St', 'mark_young', 'motdepasse20', '2013-10-15', 3),
  (21, 'Thompson', 'Eric', '1919 Orange St', 'eric_thompson', 'motdepasse21', '2013-11-01', 1),
  (22, 'Ford', 'Jessica', '2020 Plum St', 'jessica_ford', 'motdepasse22', '2013-11-15', 2),
  (23, 'Hill', 'Kevin', '2121 Blackberry St', 'kevin_hill', 'motdepasse23', '2013-12-01', 3),
  (24, 'Stewart', 'Amanda', '2222 Cherry St', 'amanda_stewart', 'motdepasse24', '2013-12-15', 1),
  (25, 'Bell', 'Brian', '2323 Pomegranate St', 'brian_bell', 'motdepasse25', '2014-01-01', 2),
  (26, 'Ward', 'Megan', '2424 Watermelon St', 'megan_ward', 'motdepasse26', '2014-01-15', 3),
  (27, 'Cruz', 'Kyle', '2525 Lime St', 'kyle_cruz', 'motdepasse27', '2014-02-01', 1),
  (28, 'Reyes', 'Hannah', '2626 Cranberry St', 'hannah_reyes', 'motdepasse28', '2014-02-15', 2),
  (29, 'Fleming', 'Derek', '2727 Avocado St', 'derek_fleming', 'motdepasse29', '2014-03-01', 3),
  (30, 'Carter', 'Natalie', '2828 Guava St', 'natalie_carter', 'motdepasse30', '2014-03-15', 1),
  (31, 'Mitchell', 'Gregory', '2929 Apricot St', 'gregory_mitchell', 'motdepasse31', '2014-04-01', 2),
  (32, 'Bryant', 'Isabel', '3030 Fig St', 'isabel_bryant', 'motdepasse32', '2014-04-15', 3),
  (33, 'Dunn', 'Jeremy', '3131 Nectarine St', 'jeremy_dunn', 'motdepasse33', '2014-05-01', 1),
  (34, 'Wells', 'Eva', '3232 Tangerine St', 'eva_wells', 'motdepasse34', '2014-05-15', 2),
  (35, 'Banks', 'Nicholas', '3333 Olive St', 'nicholas_banks', 'motdepasse35', '2014-06-01', 3),
  (36, 'Russell', 'Grace', '3434 Date St', 'grace_russell', 'motdepasse36', '2014-06-15', 1),
  (37, 'Griffin', 'Peter', '3535 Lime St', 'peter_griffin', 'motdepasse37', '2014-07-01', 2),
  (38, 'Simmons', 'Lily', '3636 Mango St', 'lily_simmons', 'motdepasse38', '2014-07-15', 3),
  (39, 'Fisher', 'Jordan', '3737 Kiwi St', 'jordan_fisher', 'motdepasse39', '2014-08-01', 1),
  (40, 'Mendez', 'Sophie', '3838 Pineapple St', 'sophie_mendez', 'motdepasse40', '2014-08-15', 2),
  (41, 'Ford', 'Connor', '3939 Plum St', 'connor_ford', 'motdepasse41', '2014-09-01', 3),
  (42, 'Ferguson', 'Mia', '4040 Blackberry St', 'mia_ferguson', 'motdepasse42', '2014-09-15', 1),
  (43, 'Watson', 'Logan', '4141 Banana St', 'logan_watson', 'motdepasse43', '2014-10-01', 2),
  (44, 'Murray', 'Sophia', '4242 Raspberry St', 'sophia_murray', 'motdepasse44', '2014-10-15', 3),
  (45, 'Dean', 'Gabriel', '4343 Orange St', 'gabriel_dean', 'motdepasse45', '2014-11-01', 1),
  (46, 'Ford', 'Emily', '4444 Mango St', 'emily_ford', 'motdepasse46', '2014-11-15', 2),
  (47, 'Ramirez', 'Aiden', '4545 Kiwi St', 'aiden_ramirez', 'motdepasse47', '2014-12-01', 3),
  (48, 'Mills', 'Isabella', '4646 Grape St', 'isabella_mills', 'motdepasse48', '2014-12-15', 1),
  (49, 'Graham', 'Ella', '4747 Lemon St', 'ella_graham', 'motdepasse49', '2015-01-01', 2),
  (50, 'Hale', 'Mark', '4848 Pomegranate St', 'mark_hale', 'motdepasse50', '2015-01-15', 3),
  (51, 'Taylor', 'Emily', '123 Sky St', 'emily_taylor', 'motdepasse51', '2019-02-01', 2),
  (52, 'Brown', 'Michael', '456 Cloud Ave', 'michael_brown', 'motdepasse52', '2019-02-15', 3),
  (53, 'Anderson', 'Olivia', '789 Rainbow Rd', 'olivia_anderson', 'motdepasse53', '2019-03-01', 1),
  (54, 'Garcia', 'Liam', '101 Star St', 'liam_garcia', 'motdepasse54', '2019-03-15', 2),
  (55, 'Hernandez', 'Sophia', '202 Moon Ave', 'sophia_hernandez', 'motdepasse55', '2019-04-01', 3),
  (56, 'Perez', 'Noah', '303 Comet Rd', 'noah_perez', 'motdepasse56', '2019-04-15', 1),
  (57, 'Baker', 'Ava', '404 Galaxy St', 'ava_baker', 'motdepasse57', '2019-05-01', 2),
  (58, 'Wang', 'Emma', '606 Solar Rd', 'emma_wang', 'motdepasse58', '2019-06-01', 1),
  (59, 'Gomez', 'Daniel', '707 Planet St', 'daniel_gomez', 'motdepasse59', '2019-06-15', 2),
  (60, 'Johnson', 'Mia', '808 Starlight Ave', 'mia_johnson', 'motdepasse60', '2019-07-01', 3),
  (61, 'White', 'James', '909 Eclipse Rd', 'james_white', 'motdepasse61', '2019-07-15', 1),
  (62, 'Thomas', 'Aria', '101 Constellation St', 'aria_thomas', 'motdepasse62', '2019-08-01', 2),
  (63, 'Lee', 'William', '202 Meteor Ave', 'william_lee', 'motdepasse63', '2019-08-15', 3),
  (64, 'Davis', 'Lily', '303 Black Hole Rd', 'lily_davis', 'motdepasse64', '2019-09-01', 1),
  (65, 'Hall', 'Matthew', '404 Quasar St', 'matthew_hall', 'motdepasse65', '2019-09-15', 2),
  (66, 'Chen', 'Grace', '505 Starburst Ave', 'grace_chen', 'motdepasse66', '2019-10-01', 3),
  (67, 'Taylor', 'Logan', '606 Aurora Rd', 'logan_taylor', 'motdepasse67', '2019-10-15', 1),
  (68, 'Yang', 'Jackson', '707 Comet St', 'jackson_yang', 'motdepasse68', '2019-11-01', 2),
  (69, 'Evans', 'Sophie', '808 Galaxy Ave', 'sophie_evans', 'motdepasse69', '2019-11-15', 3),
  (70, 'Wu', 'Christopher', '909 Milky Way Rd', 'christopher_wu', 'motdepasse70', '2019-12-01', 1),
  (71, 'Allen', 'Zoe', '101 Star Cluster St', 'zoe_allen', 'motdepasse71', '2019-12-15', 2),
  (72, 'Cruz', 'Natalie', '202 Solar Flare Ave', 'natalie_cruz', 'motdepasse72', '2013-01-01', 3),
  (73, 'Gutierrez', 'Ethan', '303 Galaxy Rd', 'ethan_gutierrez', 'motdepasse73', '2013-01-15', 1),
  (74, 'Liu', 'Isabella', '404 Eclipse St', 'isabella_liu', 'motdepasse74', '2013-02-01', 2),
  (75, 'Adams', 'Lucy', '505 Nebula Ave', 'lucy_adams', 'motdepasse75', '2013-02-15', 3),
  (76, 'Collins', 'Gabriel', '606 Planet Rd', 'gabriel_collins', 'motdepasse76', '2013-03-01', 1),
  (77, 'Perry', 'Avery', '707 Starlight St', 'avery_perry', 'motdepasse77', '2013-03-15', 2),
  (78, 'Lopez', 'Ella', '808 Comet Ave', 'ella_lopez', 'motdepasse78', '2013-04-01', 3),
  (79, 'Morgan', 'Liam', '909 Meteor Rd', 'liam_morgan', 'motdepasse79', '2013-04-15', 1),
  (80, 'Diaz', 'Sofia', '101 Black Hole St', 'sofia_diaz', 'motdepasse80', '2013-05-01', 2),
  (81, 'Woods', 'Caleb', '81 Quasar Ave', 'caleb_woods', 'motdepasse81', '2013-05-15', 3),
  (82, 'Watson', 'Madison', '303 Starburst Rd', 'madison_watson', 'motdepasse82', '2013-06-01', 1),
  (83, 'Howard', 'Leo', '404 Aurora St', 'leo_howard', 'motdepasse83', '2013-06-15', 2),
  (84, 'Ramirez', 'Scarlett', '84 Comet Ave', 'scarlett_ramirez', 'motdepasse84', '2013-07-01', 3),
  (85, 'Butler', 'Mason', '606 Galaxy Rd', 'mason_butler', 'motdepasse85', '2013-07-15', 1),
  (86, 'Wang', 'Ava', '707 Solar Flare St', 'ava_wang', 'motdepasse86', '2013-08-01', 2),
  (87, 'Gomez', 'Landon', '808 Milky Way Ave', 'landon_gomez', 'motdepasse87', '2013-08-15', 3),
  (88, 'Perez', 'Hannah', '909 Star Cluster Rd', 'hannah_perez', 'motdepasse88', '2013-09-01', 1),
  (89, 'Barnes', 'Nicholas', '101 Galaxy St', 'nicholas_barnes', 'motdepasse89', '2013-09-15', 2),
  (90, 'Jenkins', 'Chloe', '90 Solar Flare Ave', 'chloe_jenkins', 'motdepasse90', '2013-10-01', 3),
  (91, 'Roberts', 'Carter', '91 Eclipse Rd', 'carter_roberts', 'motdepasse91', '2013-10-15', 1),
  (92, 'Wu', 'Zoey', '404 Starlight St', 'zoey_wu', 'motdepasse92', '2013-11-01', 2),
  (93, 'Dunn', 'Elijah', '505 Comet Ave', 'elijah_dunn', 'motdepasse93', '2013-11-15', 3),
  (94, 'Nguyen', 'Avery', '606 Nebula Rd', 'avery_nguyen', 'motdepasse94', '2013-12-01', 1),
  (95, 'Fisher', 'Scarlett', '95 Planet St', 'scarlett_fisher', 'motdepasse95', '2013-12-15', 2),
  (96, 'Bryant', 'Owen', '808 Star Cluster Ave', 'owen_bryant', 'motdepasse96', '2014-01-01', 3),
  (97, 'Bennett', 'David', '123 Nebula St', 'david_bennett', 'motdepasse97', '2014-02-01', 2),
  (98, 'Hudson', 'Hannah', '456 Galaxy Ave', 'hannah_hudson', 'motdepasse98', '2014-02-15', 3),
  (99, 'Parker', 'Oliver', '789 Solar Flare Rd', 'oliver_parker', 'motdepasse99', '2014-03-01', 1),
  (100, 'Jenkins', 'Layla', '100 Star Cluster St', 'layla_jenkins', 'motdepasse100', '2014-03-15', 2),
  (101, 'Ward', 'Daniel', '202 Quasar Ave', 'daniel_ward', 'motdepasse101', '2014-04-01', 3),
  (102, 'Stewart', 'Sophie', '303 Starlight Rd', 'sophie_stewart', 'motdepasse102', '2014-04-15', 1),
  (103, 'Hayes', 'Jackson', '404 Comet St', 'jackson_hayes', 'motdepasse103', '2014-05-01', 2),
  (104, 'Barnes', 'Zoe', '505 Solar Flare Ave', 'zoe_barnes', 'motdepasse104', '2014-05-15', 3),
  (105, 'Price', 'Eva', '105 Galaxy Rd', 'eva_price', 'motdepasse105', '2014-06-01', 1),
  (106, 'Watson', 'Gabriel', '707 Aurora St', 'gabriel_watson', 'motdepasse106', '2014-06-15', 2),
  (107, 'Perry', 'Aria', '808 Eclipse Ave', 'aria_perry', 'motdepasse107', '2014-07-01', 3),
  (108, 'Murray', 'Ethan', '108 Star Cluster Rd', 'ethan_murray', 'motdepasse108', '2014-07-15', 1),
  (109, 'Ping', 'Ava', '109 Galaxy St', 'ava_ping', 'motdepasse109', '2014-08-01', 2),
  (110, 'Fisher', 'Mason', '202 Nebula Rd', 'mason_fisher', 'motdepasse110', '2014-08-15', 3),
  (111, 'Lopez', 'Emma', '111 Starlight St', 'emma_lopez', 'motdepasse111', '2014-09-01', 1),
  (112, 'Gomez', 'Caleb', '404 Comet Ave', 'caleb_gomez', 'motdepasse112', '2014-09-15', 2),
  (113, 'Robinson', 'Chloe', '505 Solar Flare Rd', 'chloe_robinson', 'motdepasse113', '2014-10-01', 3),
  (114, 'Nguyen', 'Lucas', '114 Aurora St', 'lucas_nguyen', 'motdepasse114', '2014-10-15', 1),
  (115, 'Ferguson', 'Scarlett', '707 Galaxy Rd', 'scarlett_ferguson', 'motdepasse115', '2014-11-01', 2),
  (116, 'Wu', 'Henry', '116 Star Cluster Ave', 'henry_wu', 'motdepasse116', '2014-11-15', 3),
  (117, 'Thomas', 'Avery', '909 Solar Flare Rd', 'avery_thomas', 'motdepasse117', '2014-12-01', 1),
  (118, 'Hale', 'Zoey', '118 Nebula St', 'zoey_hale', 'motdepasse118', '2014-12-15', 2),
  (119, 'Liu', 'Jackson', '119 Starlight Ave', 'jackson_liu', 'motdepasse119', '2015-01-01', 3),
  (120, 'Collins', 'Lily', '120 Comet Rd', 'lily_collins', 'motdepasse120', '2015-01-15', 1),
  (121, 'Diaz', 'Elijah', '404 Solar Flare St', 'elijah_diaz', 'motdepasse121', '2015-02-01', 2),
  (122, 'Ramirez', 'Hazel', '505 Galaxy Ave', 'hazel_ramirez', 'motdepasse122', '2015-02-15', 3),
  (123, 'Morgan', 'Carter', '606 Star Cluster Rd', 'carter_morgan', 'motdepasse123', '2015-03-01', 1),
  (124, 'Tik', 'Madison', '707 Aurora St', 'madison_tik', 'motdepasse124', '2015-03-15', 2),
  (125, 'Bryant', 'Ella', '808 Comet Ave', 'ella_bryant', 'motdepasse125', '2015-04-01', 3),
  (126, 'Fisher', 'Owen', '126 Eclipse Rd', 'owen_fisher', 'motdepasse126', '2015-04-15', 1),
  (127, 'Wang', 'Avery', '101 Nebula St', 'avery_wang', 'motdepasse127', '2015-05-01', 2),
  (128, 'Gomez', 'Scarlett', '202 Starlight Ave', 'scarlett_gomez', 'motdepasse128', '2015-05-15', 3),
  (129, 'Howard', 'Lucas', '129 Comet Rd', 'lucas_howard', 'motdepasse129', '2015-06-01', 1),
  (130, 'Roberts', 'Zoey', '130 Solar Flare St', 'zoey_roberts', 'motdepasse130', '2015-06-15', 2),
  (131, 'Ward', 'Jackson', '131 Galaxy Ave', 'jackson_ward', 'motdepasse131', '2015-07-01', 3),
  (132, 'Hayes', 'Ava', '132 Aurora Rd', 'ava_hayes', 'motdepasse132', '2015-07-15', 1),
  (133, 'Lopez', 'Gabriel', '707 Eclipse St', 'gabriel_lopez', 'motdepasse133', '2015-08-01', 2),
  (134, 'Murray', 'Eva', '134 Comet Ave', 'eva_murray', 'motdepasse134', '2015-08-15', 3),
  (135, 'Ferguson', 'Aria', '135 Star Cluster Rd', 'aria_ferguson', 'motdepasse135', '2015-09-01', 1),
  (136, 'Chen', 'Caleb', '101 Nebula St', 'caleb_chen', 'motdepasse136', '2015-09-15', 2),
  (137, 'Hudson', 'Emma', '137 Starlight Ave', 'emma_hudson', 'motdepasse137', '2015-10-01', 3),
  (138, 'Barnes', 'Henry', '303 Solar Flare Rd', 'henry_barnes', 'motdepasse138', '2015-10-15', 1),
  (139, 'Wu', 'Scarlett', '139 Galaxy St', 'scarlett_wu', 'motdepasse139', '2015-11-01', 2),
  (140, 'Price', 'Liam', '505 Aurora Ave', 'liam_price', 'motdepasse140', '2015-11-15', 3),
  (141, 'Dunn', 'Avery', '606 Eclipse Rd', 'avery_dunn', 'motdepasse141', '2015-12-01', 1),
  (142, 'Fisher', 'Zoey', '142 Comet St', 'zoey_fisher', 'motdepasse142', '2015-12-15', 2),
  (143, 'Collins', 'Jackson', '808 Solar Flare Ave', 'jackson_collins', 'motdepasse143', '2017-01-01', 3),
  (144, 'Gomez', 'Lily', '144 Star Cluster Rd', 'lily_gomez', 'motdepasse144', '2017-01-15', 1),
  (145, 'Morgan', 'Grace', '145 Nebula St', 'grace_morgan', 'motdepasse145', '2017-02-01', 2),
  (146, 'Tak', 'Madison', '146 Starlight Ave', 'madison_tak', 'motdepasse146', '2017-02-15', 3),
  (147, 'Bryant', 'Samantha', '303 Eclipse Rd', 'samantha_bryant', 'motdepasse147', '2017-03-01', 1),
  (148, 'Barnes', 'Owen', '148 Solar Flare St', 'owen_barnes', 'motdepasse148', '2017-03-15', 2),
  (149, 'Pong', 'Avery', '149 Galaxy Ave', 'avery_pong', 'motdepasse149', '2017-04-01', 3),
  (150, 'Hale', 'Scarlett', '150 Aurora Rd', 'scarlett_hale', 'motdepasse150', '2017-04-15', 1);

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
  (1, 'Oeuvre exceptionnelle', 1, '2023-01-01', 'URL_IMAGE_1', 1, 1),
  (2, 'Très creatif', 2, '2023-02-01', 'URL_IMAGE_2', 2, 2),
  (3, 'Belle composition', 3, '2023-03-01', 'URL_IMAGE_3', 3, 3);

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
  (1, '2023-01-05', 90, 'Excellent travail!', 1, 1),
  (2, '2023-02-10', 85, 'Belle utilisation des couleurs', 2, 2),
  (3, '2023-03-15', 92, 'Technique impressionnante', 3, 3);