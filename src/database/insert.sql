INSERT INTO Club (numClub, nomClub, adresseClub, numTelephone, nombreAdherents, ville, departement, region)
VALUES
  (1, 'CreaCroquis Club', '12 Art Street', '0123456789', 14, 'Saumur', '49', 'Pays de la Loire'),
  (2, 'ArtEbauche Collective', '23 Paint Avenue', '0234567890', 19, 'Macon', '71', 'Bourgogne-Franche-Compte'),
  (3, 'Esquisse Express Club', '34 Clay Lane', '0345678901', 16, 'Chalon-sur-Saone ', '71', 'Bourgogne-Franche-Compte'),
  (4, 'Artisans du Pinceau', '45 Palette St', '0456789012', 12, 'Dijon', '21', 'Bourgogne-Franche-Compte'),
  (5, 'Palette Creative Club', '56 Marble Ave', '0567890123', 15, 'La Flèche', '72', 'Pays de la Loire'),
  (6, 'Dessinateurs Créatifs', '67 Sketch Rd', '0678901234', 18, 'Beaune', '21', 'Bourgogne-Franche-Compte'),
  (7, 'Fusion Créative', '78 Snapshot St', '0789012345', 17, 'Le Mans', '72', 'Pays de la Loire'),
  (8, 'ArtElites Dessin Club', '89 Canvas Ave', '0890123456', 11, 'Montceau-les-Mines', '71', 'Bourgogne-Franche-Compte'),
  (9, 'Couleurs Vibrantes', '90 Hue Rd', '0901234567', 15, 'Cholet', '49', 'Pays de la Loire'),
  (10, 'Studio Esquisse', '01 Imagination St', '0012345678', 13, 'Angers', '49', 'Pays de la Loire');

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
  (1, 'Doe', 'John', '123 Main St', 'john_doe', 'motdepasse1', '2012-01-01', 7),
  (2, 'Smith', 'Jane', '456 Oak St', 'jane_smith', 'motdepasse2', '2013-01-15', 8),
  (3, 'Johnson', 'Bob', '789 Pine St', 'bob_johnson', 'motdepasse3', '2013-02-01', 3),
  (4, 'Taylor', 'Alice', '101 Maple St', 'alice_taylor', 'motdepasse4', '2013-02-15',5),
  (5, 'Brown', 'Chris', '202 Elm St', 'chris_brown', 'motdepasse5', '2013-03-01', 2),
  (6, 'Miller', 'Emily', '303 Birch St', 'emily_miller', 'motdepasse6', '2013-03-15', 10),
  (7, 'Wilson', 'David', '404 Cedar St', 'david_wilson', 'motdepasse7', '2013-04-01', 9),
  (8, 'Anderson', 'Lisa', '505 Spruce St', 'lisa_anderson', 'motdepasse8', '2013-04-15', 1),
  (9, 'Martinez', 'Mark', '606 Fir St', 'mark_martinez', 'motdepasse9', '2013-05-01', 4),
  (10, 'Lee', 'Anna', '707 Redwood St', 'anna_lee', 'motdepasse10', '2013-05-15', 6),
  (11, 'Evans', 'Michael', '808 Pineapple St', 'michael_evans', 'motdepasse11', '2013-06-01', 5),
  (12, 'Cooper', 'Samantha', '909 Mango St', 'samantha_cooper', 'motdepasse12', '2013-06-15', 8),
  (13, 'Baker', 'Daniel', '1011 Banana St', 'daniel_baker', 'motdepasse13', '2013-07-01', 2),
  (14, 'Garcia', 'Catherine', '1212 Papaya St', 'catherine_garcia', 'motdepasse14', '2013-07-15', 9),
  (15, 'Fisher', 'Patrick', '1313 Kiwi St', 'patrick_fisher', 'motdepasse15', '2013-08-01', 1),
  (16, 'Hernandez', 'Julia', '1414 Grape St', 'julia_hernandez', 'motdepasse16', '2013-08-15', 4),
  (17, 'Gomez', 'Ryan', '1515 Lemon St', 'ryan_gomez', 'motdepasse17', '2013-09-01', 8),
  (18, 'Parker', 'Olivia', '1616 Raspberry St', 'olivia_parker', 'motdepasse18', '2013-09-15', 9),
  (19, 'Lopez', 'William', '1717 Blueberry St', 'william_lopez', 'motdepasse19', '2013-10-01', 2),
  (20, 'Young', 'Mark', '1818 Strawberry St', 'mark_young', 'motdepasse20', '2013-10-15', 5),
  (21, 'Thompson', 'Eric', '1919 Orange St', 'eric_thompson', 'motdepasse21', '2013-11-01', 6),
  (22, 'Ford', 'Jessica', '2020 Plum St', 'jessica_ford', 'motdepasse22', '2013-11-15', 1),
  (23, 'Hill', 'Kevin', '2121 Blackberry St', 'kevin_hill', 'motdepasse23', '2013-12-01', 3),
  (24, 'Stewart', 'Amanda', '2222 Cherry St', 'amanda_stewart', 'motdepasse24', '2013-12-15', 7),
  (25, 'Bell', 'Brian', '2323 Pomegranate St', 'brian_bell', 'motdepasse25', '2014-01-01', 10),
  (26, 'Ward', 'Megan', '2424 Watermelon St', 'megan_ward', 'motdepasse26', '2014-01-15', 4),
  (27, 'Cruz', 'Kyle', '2525 Lime St', 'kyle_cruz', 'motdepasse27', '2014-02-01', 6),
  (28, 'Reyes', 'Hannah', '2626 Cranberry St', 'hannah_reyes', 'motdepasse28', '2014-02-15', 2),
  (29, 'Fleming', 'Derek', '2727 Avocado St', 'derek_fleming', 'motdepasse29', '2014-03-01', 9),
  (30, 'Carter', 'Natalie', '2828 Guava St', 'natalie_carter', 'motdepasse30', '2014-03-15', 5),
  (31, 'Mitchell', 'Gregory', '2929 Apricot St', 'gregory_mitchell', 'motdepasse31', '2014-04-01', 1),
  (32, 'Bryant', 'Isabel', '3030 Fig St', 'isabel_bryant', 'motdepasse32', '2014-04-15', 9),
  (33, 'Dunn', 'Jeremy', '3131 Nectarine St', 'jeremy_dunn', 'motdepasse33', '2014-05-01', 6),
  (34, 'Wells', 'Eva', '3232 Tangerine St', 'eva_wells', 'motdepasse34', '2014-05-15', 8),
  (35, 'Banks', 'Nicholas', '3333 Olive St', 'nicholas_banks', 'motdepasse35', '2014-06-01', 3),
  (36, 'Russell', 'Grace', '3434 Date St', 'grace_russell', 'motdepasse36', '2014-06-15', 5),
  (37, 'Griffin', 'Peter', '3535 Lime St', 'peter_griffin', 'motdepasse37', '2014-07-01', 2),
  (38, 'Simmons', 'Lily', '3636 Mango St', 'lily_simmons', 'motdepasse38', '2014-07-15', 4),
  (39, 'Fisher', 'Jordan', '3737 Kiwi St', 'jordan_fisher', 'motdepasse39', '2014-08-01', 7),
  (40, 'Mendez', 'Sophie', '3838 Pineapple St', 'sophie_mendez', 'motdepasse40', '2014-08-15', 10),
  (41, 'Ford', 'Connor', '3939 Plum St', 'connor_ford', 'motdepasse41', '2014-09-01', 1),
  (42, 'Ferguson', 'Mia', '4040 Blackberry St', 'mia_ferguson', 'motdepasse42', '2014-09-15', 6),
  (43, 'Watson', 'Logan', '4141 Banana St', 'logan_watson', 'motdepasse43', '2014-10-01', 8),
  (44, 'Murray', 'Sophia', '4242 Raspberry St', 'sophia_murray', 'motdepasse44', '2014-10-15', 2),
  (45, 'Dean', 'Gabriel', '4343 Orange St', 'gabriel_dean', 'motdepasse45', '2014-11-01', 3),
  (46, 'Ford', 'Emily', '4444 Mango St', 'emily_ford', 'motdepasse46', '2014-11-15', 7),
  (47, 'Ramirez', 'Aiden', '4545 Kiwi St', 'aiden_ramirez', 'motdepasse47', '2014-12-01', 3),
  (48, 'Mills', 'Isabella', '4646 Grape St', 'isabella_mills', 'motdepasse48', '2014-12-15', 9),
  (49, 'Graham', 'Ella', '4747 Lemon St', 'ella_graham', 'motdepasse49', '2015-01-01', 3),
  (50, 'Hale', 'Mark', '4848 Pomegranate St', 'mark_hale', 'motdepasse50', '2015-01-15', 8),
  (51, 'Taylor', 'Emily', '123 Sky St', 'emily_taylor', 'motdepasse51', '2019-02-01', 1),
  (52, 'Brown', 'Michael', '456 Cloud Ave', 'michael_brown', 'motdepasse52', '2019-02-15', 6),
  (53, 'Anderson', 'Olivia', '789 Rainbow Rd', 'olivia_anderson', 'motdepasse53', '2019-03-01', 10),
  (54, 'Garcia', 'Liam', '101 Star St', 'liam_garcia', 'motdepasse54', '2019-03-15', 4),
  (55, 'Hernandez', 'Sophia', '202 Moon Ave', 'sophia_hernandez', 'motdepasse55', '2019-04-01', 5),
  (56, 'Perez', 'Noah', '303 Comet Rd', 'noah_perez', 'motdepasse56', '2019-04-15', 7),
  (57, 'Baker', 'Ava', '404 Galaxy St', 'ava_baker', 'motdepasse57', '2019-05-01', 9),
  (58, 'Wang', 'Emma', '606 Solar Rd', 'emma_wang', 'motdepasse58', '2019-06-01', 3),
  (59, 'Gomez', 'Daniel', '707 Planet St', 'daniel_gomez', 'motdepasse59', '2019-06-15', 2),
  (60, 'Johnson', 'Mia', '808 Starlight Ave', 'mia_johnson', 'motdepasse60', '2019-07-01', 8),
  (61, 'White', 'James', '909 Eclipse Rd', 'james_white', 'motdepasse61', '2019-07-15', 10),
  (62, 'Thomas', 'Aria', '101 Constellation St', 'aria_thomas', 'motdepasse62', '2019-08-01', 3),
  (63, 'Lee', 'William', '202 Meteor Ave', 'william_lee', 'motdepasse63', '2019-08-15', 1),
  (64, 'Davis', 'Lily', '303 Black Hole Rd', 'lily_davis', 'motdepasse64', '2019-09-01', 7),
  (65, 'Hall', 'Matthew', '404 Quasar St', 'matthew_hall', 'motdepasse65', '2019-09-15', 4),
  (66, 'Chen', 'Grace', '505 Starburst Ave', 'grace_chen', 'motdepasse66', '2019-10-01', 6),
  (67, 'Taylor', 'Logan', '606 Aurora Rd', 'logan_taylor', 'motdepasse67', '2019-10-15', 2),
  (68, 'Yang', 'Jackson', '707 Comet St', 'jackson_yang', 'motdepasse68', '2019-11-01', 8),
  (69, 'Evans', 'Sophie', '808 Galaxy Ave', 'sophie_evans', 'motdepasse69', '2019-11-15', 9),
  (70, 'Wu', 'Christopher', '909 Milky Way Rd', 'christopher_wu', 'motdepasse70', '2019-12-01', 5),
  (71, 'Allen', 'Zoe', '101 Star Cluster St', 'zoe_allen', 'motdepasse71', '2019-12-15', 10),
  (72, 'Cruz', 'Natalie', '202 Solar Flare Ave', 'natalie_cruz', 'motdepasse72', '2013-01-01', 3),
  (73, 'Gutierrez', 'Ethan', '303 Galaxy Rd', 'ethan_gutierrez', 'motdepasse73', '2013-01-15', 1),
  (74, 'Liu', 'Isabella', '404 Eclipse St', 'isabella_liu', 'motdepasse74', '2013-02-01', 7),
  (75, 'Adams', 'Lucy', '505 Nebula Ave', 'lucy_adams', 'motdepasse75', '2013-02-15', 4),
  (76, 'Collins', 'Gabriel', '606 Planet Rd', 'gabriel_collins', 'motdepasse76', '2013-03-01', 8),
  (77, 'Perry', 'Avery', '707 Starlight St', 'avery_perry', 'motdepasse77', '2013-03-15', 1),
  (78, 'Lopez', 'Ella', '808 Comet Ave', 'ella_lopez', 'motdepasse78', '2013-04-01', 4),
  (79, 'Morgan', 'Liam', '909 Meteor Rd', 'liam_morgan', 'motdepasse79', '2013-04-15', 9),
  (80, 'Diaz', 'Sofia', '101 Black Hole St', 'sofia_diaz', 'motdepasse80', '2013-05-01', 2),
  (81, 'Woods', 'Caleb', '81 Quasar Ave', 'caleb_woods', 'motdepasse81', '2013-05-15', 10),
  (82, 'Watson', 'Madison', '303 Starburst Rd', 'madison_watson', 'motdepasse82', '2013-06-01', 6),
  (83, 'Howard', 'Leo', '404 Aurora St', 'leo_howard', 'motdepasse83', '2013-06-15', 7),
  (84, 'Ramirez', 'Scarlett', '84 Comet Ave', 'scarlett_ramirez', 'motdepasse84', '2013-07-01', 5),
  (85, 'Butler', 'Mason', '606 Galaxy Rd', 'mason_butler', 'motdepasse85', '2013-07-15', 2),
  (86, 'Wang', 'Ava', '707 Solar Flare St', 'ava_wang', 'motdepasse86', '2013-08-01', 8),
  (87, 'Gomez', 'Landon', '808 Milky Way Ave', 'landon_gomez', 'motdepasse87', '2013-08-15', 1),
  (88, 'Perez', 'Hannah', '909 Star Cluster Rd', 'hannah_perez', 'motdepasse88', '2013-09-01', 4),
  (89, 'Barnes', 'Nicholas', '101 Galaxy St', 'nicholas_barnes', 'motdepasse89', '2013-09-15', 9),
  (90, 'Jenkins', 'Chloe', '90 Solar Flare Ave', 'chloe_jenkins', 'motdepasse90', '2013-10-01', 2),
  (91, 'Roberts', 'Carter', '91 Eclipse Rd', 'carter_roberts', 'motdepasse91', '2013-10-15', 5),
  (92, 'Wu', 'Zoey', '404 Starlight St', 'zoey_wu', 'motdepasse92', '2013-11-01', 3),
  (93, 'Dunn', 'Elijah', '505 Comet Ave', 'elijah_dunn', 'motdepasse93', '2013-11-15', 6),
  (94, 'Nguyen', 'Avery', '606 Nebula Rd', 'avery_nguyen', 'motdepasse94', '2013-12-01', 2),
  (95, 'Fisher', 'Scarlett', '95 Planet St', 'scarlett_fisher', 'motdepasse95', '2013-12-15', 8),
  (96, 'Bryant', 'Owen', '808 Star Cluster Ave', 'owen_bryant', 'motdepasse96', '2014-01-01', 1),
  (97, 'Bennett', 'David', '123 Nebula St', 'david_bennett', 'motdepasse97', '2014-02-01', 7),
  (98, 'Hudson', 'Hannah', '456 Galaxy Ave', 'hannah_hudson', 'motdepasse98', '2014-02-15', 10),
  (99, 'Parker', 'Oliver', '789 Solar Flare Rd', 'oliver_parker', 'motdepasse99', '2014-03-01', 4),
  (100, 'Jenkins', 'Layla', '100 Star Cluster St', 'layla_jenkins', 'motdepasse100', '2014-03-15', 9),
  (101, 'Ward', 'Daniel', '202 Quasar Ave', 'daniel_ward', 'motdepasse101', '2014-04-01', 5),
  (102, 'Stewart', 'Sophie', '303 Starlight Rd', 'sophie_stewart', 'motdepasse102', '2014-04-15', 3),
  (103, 'Hayes', 'Jackson', '404 Comet St', 'jackson_hayes', 'motdepasse103', '2014-05-01', 6),
  (104, 'Barnes', 'Zoe', '505 Solar Flare Ave', 'zoe_barnes', 'motdepasse104', '2014-05-15', 2),
  (105, 'Price', 'Eva', '105 Galaxy Rd', 'eva_price', 'motdepasse105', '2014-06-01', 5),
  (106, 'Watson', 'Gabriel', '707 Aurora St', 'gabriel_watson', 'motdepasse106', '2014-06-15', 1),
  (107, 'Perry', 'Aria', '808 Eclipse Ave', 'aria_perry', 'motdepasse107', '2014-07-01', 9),
  (108, 'Murray', 'Ethan', '108 Star Cluster Rd', 'ethan_murray', 'motdepasse108', '2014-07-15', 7),
  (109, 'Ping', 'Ava', '109 Galaxy St', 'ava_ping', 'motdepasse109', '2014-08-01', 5),
  (110, 'Fisher', 'Mason', '202 Nebula Rd', 'mason_fisher', 'motdepasse110', '2014-08-15', 4),
  (111, 'Lopez', 'Emma', '111 Starlight St', 'emma_lopez', 'motdepasse111', '2014-09-01', 2),
  (112, 'Gomez', 'Caleb', '404 Comet Ave', 'caleb_gomez', 'motdepasse112', '2014-09-15', 2),
  (113, 'Robinson', 'Chloe', '505 Solar Flare Rd', 'chloe_robinson', 'motdepasse113', '2014-10-01', 10),
  (114, 'Nguyen', 'Lucas', '114 Aurora St', 'lucas_nguyen', 'motdepasse114', '2014-10-15', 3),
  (115, 'Ferguson', 'Scarlett', '707 Galaxy Rd', 'scarlett_ferguson', 'motdepasse115', '2014-11-01', 6),
  (116, 'Wu', 'Henry', '116 Star Cluster Ave', 'henry_wu', 'motdepasse116', '2014-11-15', 1),
  (117, 'Thomas', 'Avery', '909 Solar Flare Rd', 'avery_thomas', 'motdepasse117', '2014-12-01', 9),
  (118, 'Hale', 'Zoey', '118 Nebula St', 'zoey_hale', 'motdepasse118', '2014-12-15', 7),
  (119, 'Liu', 'Jackson', '119 Starlight Ave', 'jackson_liu', 'motdepasse119', '2015-01-01', 5),
  (120, 'Collins', 'Lily', '120 Comet Rd', 'lily_collins', 'motdepasse120', '2015-01-15', 4),
  (121, 'Diaz', 'Elijah', '404 Solar Flare St', 'elijah_diaz', 'motdepasse121', '2015-02-01', 2),
  (122, 'Ramirez', 'Hazel', '505 Galaxy Ave', 'hazel_ramirez', 'motdepasse122', '2015-02-15', 7),
  (123, 'Morgan', 'Carter', '606 Star Cluster Rd', 'carter_morgan', 'motdepasse123', '2015-03-01', 6),
  (124, 'Tik', 'Madison', '707 Aurora St', 'madison_tik', 'motdepasse124', '2015-03-15', 9),
  (125, 'Bryant', 'Ella', '808 Comet Ave', 'ella_bryant', 'motdepasse125', '2015-04-01', 1),
  (126, 'Fisher', 'Owen', '126 Eclipse Rd', 'owen_fisher', 'motdepasse126', '2015-04-15', 2),
  (127, 'Wang', 'Avery', '101 Nebula St', 'avery_wang', 'motdepasse127', '2015-05-01', 3),
  (128, 'Gomez', 'Scarlett', '202 Starlight Ave', 'scarlett_gomez', 'motdepasse128', '2015-05-15', 6),
  (129, 'Howard', 'Lucas', '129 Comet Rd', 'lucas_howard', 'motdepasse129', '2015-06-01', 10),
  (130, 'Roberts', 'Zoey', '130 Solar Flare St', 'zoey_roberts', 'motdepasse130', '2015-06-15', 5),
  (131, 'Ward', 'Jackson', '131 Galaxy Ave', 'jackson_ward', 'motdepasse131', '2015-07-01', 2),
  (132, 'Hayes', 'Ava', '132 Aurora Rd', 'ava_hayes', 'motdepasse132', '2015-07-15', 7),
  (133, 'Lopez', 'Gabriel', '707 Eclipse St', 'gabriel_lopez', 'motdepasse133', '2015-08-01', 6),
  (134, 'Murray', 'Eva', '134 Comet Ave', 'eva_murray', 'motdepasse134', '2015-08-15', 9),
  (135, 'Ferguson', 'Aria', '135 Star Cluster Rd', 'aria_ferguson', 'motdepasse135', '2015-09-01', 3),
  (136, 'Chen', 'Caleb', '101 Nebula St', 'caleb_chen', 'motdepasse136', '2015-09-15', 5),
  (137, 'Hudson', 'Emma', '137 Starlight Ave', 'emma_hudson', 'motdepasse137', '2015-10-01', 3),
  (138, 'Barnes', 'Henry', '303 Solar Flare Rd', 'henry_barnes', 'motdepasse138', '2015-10-15', 7),
  (139, 'Wu', 'Scarlett', '139 Galaxy St', 'scarlett_wu', 'motdepasse139', '2015-11-01', 7),
  (140, 'Price', 'Liam', '505 Aurora Ave', 'liam_price', 'motdepasse140', '2015-11-15', 6),
  (141, 'Dunn', 'Avery', '606 Eclipse Rd', 'avery_dunn', 'motdepasse141', '2015-12-01', 10),
  (142, 'Fisher', 'Zoey', '142 Comet St', 'zoey_fisher', 'motdepasse142', '2015-12-15', 10),
  (143, 'Collins', 'Jackson', '808 Solar Flare Ave', 'jackson_collins', 'motdepasse143', '2017-01-01', 6),
  (144, 'Gomez', 'Lily', '144 Star Cluster Rd', 'lily_gomez', 'motdepasse144', '2017-01-15', 2),
  (145, 'Morgan', 'Grace', '145 Nebula St', 'grace_morgan', 'motdepasse145', '2017-02-01', 7),
  (146, 'Tak', 'Madison', '146 Starlight Ave', 'madison_tak', 'motdepasse146', '2017-02-15', 6),
  (147, 'Bryant', 'Samantha', '303 Eclipse Rd', 'samantha_bryant', 'motdepasse147', '2017-03-01', 3),
  (148, 'Barnes', 'Owen', '148 Solar Flare St', 'owen_barnes', 'motdepasse148', '2017-03-15', 10),
  (149, 'Pong', 'Avery', '149 Galaxy Ave', 'avery_pong', 'motdepasse149', '2017-04-01', 7),
  (150, 'Hale', 'Scarlett', '150 Aurora Rd', 'scarlett_hale', 'motdepasse150', '2017-04-15', 6);

INSERT INTO Directeur (numDirecteur, dateDebut, numClub, numUtilisateur)
VALUES
  (1, '2023-01-01', 1, 42),
  (2, '2023-02-01', 2, 87),
  (3, '2023-03-01', 3, 19),
  (4, '2023-01-01', 4, 105),
  (5, '2023-02-01', 5, 63),
  (6, '2023-03-01', 6, 128),
  (7, '2023-01-01', 7, 5),
  (8, '2023-02-01', 8, 76),
  (9, '2023-03-01', 9, 94),
  (10, '2023-03-01', 10, 114);

INSERT INTO Administrateur (numAdministrateur, dateDebut, numUtilisateur)
VALUES
  (1, '2012-01-01', 1);

INSERT INTO Evaluateur (numUtilisateur, specialite, numEvaluateur)
VALUES
  (2, 'Gribouillage', 1),
  (4, 'Noir_et_blanc', 2),
  (8, 'Hyperrealisme', 3),
  (9, 'Architectural', 4),
  (10, 'Anamorphose', 5),
  (11, 'Gribouillage', 6),
  (12, 'Couleur', 7),
  (13, 'Noir_et_blanc', 8),
  (16, 'Nu', 9),
  (17, 'Hyperrealisme', 10),
  (19, 'Anamorphose', 11),
  (20, 'Gribouillage', 12),
  (21, 'Couleur', 13),
  (22, 'Noir_et_blanc', 14),
  (24, 'Pointillisme', 15),
  (26, 'Hyperrealisme', 16),
  (27, 'Architectural', 17),
  (28, 'Anamorphose', 18),
  (30, 'Couleur', 19),
  (31, 'Noir_et_blanc', 20),
  (33, 'Pointillisme', 21),
  (34, 'Nu', 22),
  (35, 'Hyperrealisme', 23),
  (36, 'Architectural', 24),
  (37, 'Anamorphose', 25),
  (38, 'Gribouillage', 26),
  (39, 'Couleur', 27),
  (40, 'Noir_et_blanc', 28),
  (41, 'Impressionnisme', 29),
  (43, 'Nu', 30),
  (44, 'Hyperrealisme', 31),
  (45, 'Architectural', 32),
  (46, 'Anamorphose', 33),
  (47, 'Gribouillage', 34),
  (49, 'Noir_et_blanc', 35),
  (50, 'Impressionnisme', 36),
  (51, 'Pointillisme', 37),
  (52, 'Nu', 38),
  (53, 'Hyperrealisme', 39),
  (54, 'Architectural', 40),
  (55, 'Anamorphose', 41),
  (56, 'Gribouillage', 42),
  (57, 'Couleur', 43),
  (58, 'Noir_et_blanc', 44),
  (59, 'Impressionnisme', 45),
  (60, 'Pointillisme', 46),
  (61, 'Nu', 47),
  (64, 'Anamorphose', 48),
  (66, 'Couleur', 49),
  (68, 'Impressionnisme', 50),
  (69, 'Pointillisme', 51),
  (70, 'Nu', 52),
  (71, 'Hyperrealisme', 53),
  (73, 'Anamorphose', 54),
  (74, 'Gribouillage', 55),
  (75, 'Couleur', 56),
  (77, 'Impressionnisme', 57),
  (79, 'Nu', 58),
  (80, 'Hyperrealisme', 59),
  (81, 'Architectural', 60),
  (82, 'Anamorphose', 61),
  (83, 'Gribouillage', 62),
  (84, 'Couleur', 63),
  (85, 'Noir_et_blanc', 64),
  (86, 'Impressionnisme', 65),
  (87, 'Pointillisme', 66),
  (88, 'Nu', 67),
  (90, 'Architectural', 68),
  (91, 'Anamorphose', 69),
  (93, 'Couleur', 70),
  (94, 'Noir_et_blanc', 71),
  (97, 'Nu', 72),
  (98, 'Hyperrealisme', 73),
  (99, 'Architectural', 74),
  (101, 'Gribouillage', 75),
  (103, 'Noir_et_blanc', 76),
  (104, 'Impressionnisme', 77),
  (108, 'Architectural', 78),
  (109, 'Anamorphose', 79),
  (110, 'Gribouillage', 80),
  (111, 'Couleur', 81),
  (113, 'Impressionnisme', 82),
  (116, 'Hyperrealisme', 83),
  (118, 'Anamorphose', 84),
  (119, 'Gribouillage', 85),
  (122, 'Impressionnisme', 86),
  (123, 'Pointillisme', 87),
  (125, 'Hyperrealisme', 88),
  (127, 'Anamorphose', 89),
  (128, 'Gribouillage', 90),
  (130, 'Noir_et_blanc', 91),
  (132, 'Pointillisme', 92),
  (133, 'Nu', 93),
  (135, 'Architectural', 94),
  (136, 'Anamorphose', 95),
  (137, 'Gribouillage', 96),
  (141, 'Pointillisme', 97),
  (142, 'Nu', 98),
  (146, 'Gribouillage', 99),
  (147, 'Couleur', 100),
  (148, 'Noir_et_blanc', 101),
  (150, 'Pointillisme', 102);

INSERT INTO Competiteur (numUtilisateur, datePremiereParticipation, numCompetiteur)
VALUES
  (2, '2013-01-15', 1),
  (3, '2013-02-01', 2),
  (4, '2013-02-15', 3),
  (6, '2013-03-15', 4),
  (7, '2013-04-01', 5),
  (8, '2013-04-15', 6),
  (9, '2013-05-01', 7),
  (10, '2013-05-15', 8),
  (11, '2013-06-01', 9),
  (12, '2013-06-15', 10),
  (13, '2013-07-01', 11),
  (14, '2013-07-15', 12),
  (15, '2013-08-01', 13),
  (16, '2013-08-15', 14),
  (17, '2013-09-01', 15),
  (18, '2013-09-15', 16),
  (19, '2013-10-01', 17),
  (20, '2013-10-15', 18),
  (21, '2013-11-01', 19),
  (22, '2013-11-15', 20),
  (23, '2013-12-01', 21),
  (24, '2013-12-15', 22),
  (25, '2014-01-01', 23),
  (26, '2014-01-15', 24),
  (27, '2014-02-01', 25),
  (28, '2014-02-15', 26),
  (29, '2014-03-01', 27),
  (30, '2014-03-15', 28),
  (31, '2014-04-01', 29),
  (32, '2014-04-15', 30),
  (33, '2014-05-01', 31),
  (34, '2014-05-15', 32),
  (35, '2014-06-01', 33),
  (36, '2014-06-15', 34),
  (37, '2014-07-01', 35),
  (38, '2014-07-15', 36),
  (39, '2014-08-01', 37),
  (40, '2014-08-15', 38),
  (41, '2014-09-01', 39),
  (43, '2014-10-01', 40),
  (44, '2014-10-15', 41),
  (45, '2014-11-01', 42),
  (46, '2014-11-15', 43),
  (47, '2014-12-01', 44),
  (48, '2014-12-15', 45),
  (49, '2015-01-01', 46),
  (50, '2015-01-15', 47),
  (51, '2019-02-01', 48),
  (52, '2019-02-15', 49),
  (53, '2019-03-01', 50),
  (54, '2019-03-15', 51),
  (55, '2019-04-01', 52),
  (56, '2019-04-15', 53),
  (57, '2019-05-01', 54),
  (58, '2019-06-01', 55),
  (59, '2019-06-15', 56),
  (60, '2019-07-01', 57),
  (61, '2019-07-15', 58),
  (62, '2019-08-01', 59),
  (64, '2019-09-01', 60),
  (65, '2019-09-15', 61),
  (66, '2019-10-01', 62),
  (67, '2019-10-15', 63),
  (68, '2019-11-01', 64),
  (69, '2019-11-15', 65),
  (70, '2019-12-01', 66),
  (71, '2019-12-15', 67),
  (72, '2013-01-01', 68),
  (73, '2013-01-15', 69),
  (74, '2013-02-01', 70),
  (75, '2013-02-15', 71),
  (77, '2013-03-15', 72),
  (78, '2013-04-01', 73),
  (79, '2013-04-15', 74),
  (80, '2013-05-01', 75),
  (81, '2013-05-15', 76),
  (82, '2013-06-01', 77),
  (83, '2013-06-15', 78),
  (84, '2013-07-01', 79),
  (85, '2013-07-15', 80),
  (86, '2013-08-01', 81),
  (87, '2013-08-15', 82),
  (88, '2013-09-01', 83),
  (89, '2013-09-15', 84),
  (90, '2013-10-01', 85),
  (91, '2013-10-15', 86),
  (92, '2013-11-01', 87),
  (93, '2013-11-15', 88),
  (94, '2013-12-01', 89),
  (95, '2013-12-15', 90),
  (96, '2014-01-01', 91),
  (97, '2014-02-01', 92),
  (98, '2014-02-15', 93),
  (99, '2014-03-01', 94),
  (101, '2014-04-01', 95),
  (103, '2014-05-01', 96),
  (104, '2014-05-15', 97),
  (106, '2014-06-15', 98),
  (108, '2014-07-15', 99),
  (109, '2014-08-01', 100),
  (110, '2014-08-15', 101),
  (111, '2014-09-01', 102),
  (112, '2014-09-15', 103),
  (113, '2014-10-01', 104),
  (115, '2014-11-01', 105),
  (116, '2014-11-15', 106),
  (118, '2014-12-15', 107),
  (119, '2015-01-01', 108),
  (121, '2015-02-01', 109),
  (122, '2015-02-15', 110),
  (123, '2015-03-01', 111),
  (125, '2015-04-01', 112),
  (126, '2015-04-15', 113),
  (127, '2015-05-01', 114),
  (128, '2015-05-15', 115),
  (130, '2015-06-15', 116),
  (131, '2015-07-01', 117),
  (132, '2015-07-15', 118),
  (133, '2015-08-01', 119),
  (135, '2015-09-01', 120),
  (136, '2015-09-15', 121),
  (137, '2015-10-01', 122),
  (138, '2015-10-15', 123),
  (139, '2015-11-01', 124),
  (140, '2015-11-15', 125),
  (141, '2015-12-01', 126),
  (142, '2015-12-15', 127),
  (143, '2017-01-01', 128),
  (144, '2017-01-15', 139),
  (146, '2017-02-15', 130),
  (147, '2017-03-01', 131),
  (148, '2017-03-15', 132),
  (150, '2017-04-15', 133);

INSERT INTO President (numPresident, prime, numConcours, numUtilisateur)
VALUES
  (1, 1000, 1, 23),
  (2, 800, 2, 107),
  (3, 1200, 3, 46),
  (4, 900, 4, 89),
  (5, 700, 5, 72),
  (6, 1100, 6, 13),
  (7, 1300, 7, 135),
  (8, 1400, 8, 56);

INSERT INTO Dessin (numDessin, commentaire, classement, dateRemise, leDessin, numCompetiteur, numConcours)
VALUES
  (1, 'Oeuvre exceptionnelle', 1, '2023-01-01', 'URL_IMAGE_1', 1, 1),
  (2, 'Très creatif', 2, '2023-02-01', 'URL_IMAGE_2', 2, 2),
  (3, 'Belle composition', 3, '2023-03-01', 'URL_IMAGE_3', 3, 3);

INSERT INTO Jury (numConcours, numEvaluateur)
VALUES
  (1, 43),
  (1, 46),
  (1, 50),
  (1, 51),
  (1, 54),
  (1, 56),
  (1, 57),
  (1, 58),
  (1, 61),
  (1, 65),
  (1, 66),
  (1, 67),
  (1, 70),
  (1, 76),
  (1, 78),
  (1, 80),
  (1, 84),
  (1, 85),
  (1, 86),
  (1, 89),
  (1, 91),
  (1, 94),
  (1, 95),
  (1, 96),
  (2, 4),
  (2, 16),
  (2, 17),
  (2, 21),
  (2, 23),
  (2, 32),
  (2, 34),
  (2, 38),
  (2, 40),
  (2, 41),
  (2, 43),
  (2, 51),
  (2, 52),
  (2, 58),
  (2, 60),
  (2, 63),
  (2, 64),
  (2, 68),
  (2, 71),
  (2, 73),
  (2, 78),
  (2, 82),
  (2, 84),
  (2, 86),
  (3, 7),
  (3, 11),
  (3, 14),
  (3, 20),
  (3, 25),
  (3, 28),
  (3, 29),
  (3, 30),
  (3, 45),
  (3, 49),
  (3, 50),
  (3, 53),
  (3, 61),
  (3, 67),
  (3, 70),
  (3, 74),
  (3, 79),
  (3, 80),
  (3, 82),
  (3, 84),
  (3, 85),
  (3, 86),
  (3, 91),
  (3, 92),
  (4, 3),
  (4, 7),
  (4, 8),
  (4, 15),
  (4, 16),
  (4, 18),
  (4, 22),
  (4, 26),
  (4, 27),
  (4, 29),
  (4, 31),
  (4, 33),
  (4, 36),
  (4, 37),
  (4, 43),
  (4, 51),
  (4, 52),
  (4, 56),
  (4, 58),
  (4, 69),
  (4, 75),
  (4, 87),
  (4, 90),
  (4, 93),
  (5, 2),
  (5, 5),
  (5, 7),
  (5, 10),
  (5, 13),
  (5, 17),
  (5, 19),
  (5, 22),
  (5, 24),
  (5, 26),
  (5, 33),
  (5, 34),
  (5, 35),
  (5, 39),
  (5, 40),
  (5, 42),
  (5, 44),
  (5, 47),
  (5, 48),
  (5, 53),
  (5, 64),
  (5, 67),
  (5, 68),
  (5, 71),
  (6, 2),
  (6, 4),
  (6, 5),
  (6, 6),
  (6, 9),
  (6, 17),
  (6, 27),
  (6, 29),
  (6, 33),
  (6, 37),
  (6, 41),
  (6, 42),
  (6, 43),
  (6, 49),
  (6, 51),
  (6, 54),
  (6, 56),
  (6, 58),
  (6, 71),
  (6, 77),
  (6, 81),
  (6, 97),
  (6, 98),
  (6, 101),
  (7, 2),
  (7, 6),
  (7, 10),
  (7, 12),
  (7, 16),
  (7, 22),
  (7, 23),
  (7, 26),
  (7, 32),
  (7, 34),
  (7, 40),
  (7, 46),
  (7, 47),
  (7, 48),
  (7, 53),
  (7, 55),
  (7, 57),
  (7, 62),
  (7, 76),
  (7, 82),
  (7, 83),
  (7, 87),
  (7, 88),
  (7, 93),
  (8, 1),
  (8, 12),
  (8, 19),
  (8, 24),
  (8, 30),
  (8, 43),
  (8, 51),
  (8, 55),
  (8, 56),
  (8, 58),
  (8, 59),
  (8, 62),
  (8, 64),
  (8, 65),
  (8, 67),
  (8, 68),
  (8, 72),
  (8, 80),
  (8, 90),
  (8, 94),
  (8, 96),
  (8, 99),
  (8, 100),
  (8, 101);

INSERT INTO ParticipationCompetiteur (numConcours, numCompetiteur)
VALUES
  (1,1),
  (1,2),
  (1,3),
  (1,5),
  (1,6),
  (1,7),
  (1,8),
  (1,9),
  (1,10),
  (1,12),
  (1,13),
  (1,14),
  (1,15),
  (1,16),
  (1,18),
  (1,19),
  (1,20),
  (1,21),
  (1,22),
  (1,24),
  (1,25),
  (1,27),
  (1,28),
  (1,29),
  (1,31),
  (1,32),
  (1,33),
  (1,34),
  (1,36),
  (1,37),
  (1,39),
  (1,40),
  (1,42),
  (1,44),
  (1,45),
  (1,46),
  (1,47),
  (1,48),
  (1,49),
  (1,51),
  (1,52),
  (1,55),
  (1,60),
  (1,61),
  (1,62),
  (1,70),
  (1,78),
  (1,92),
  (2,2),
  (2,4),
  (2,5),
  (2,8),
  (2,11),
  (2,12),
  (2,16),
  (2,17),
  (2,19),
  (2,21),
  (2,23),
  (2,26),
  (2,27),
  (2,30),
  (2,35),
  (2,38),
  (2,41),
  (2,43),
  (2,45),
  (2,50),
  (2,53),
  (2,56),
  (2,58),
  (2,60),
  (2,61),
  (2,67),
  (2,70),
  (2,71),
  (2,73),
  (2,77),
  (2,78),
  (2,83),
  (2,86),
  (2,88),
  (2,92),
  (2,94),
  (2,95),
  (2,100),
  (2,101),
  (2,108),
  (2,114),
  (2,116),
  (2,119),
  (2,120),
  (2,121),
  (2,122),
  (2,125),
  (2,131),
  (3,1),
  (3,4),
  (3,15),
  (3,23),
  (3,24),
  (3,25),
  (3,28),
  (3,31),
  (3,32),
  (3,34),
  (3,36),
  (3,47),
  (3,50),
  (3,51),
  (3,52),
  (3,53),
  (3,57),
  (3,58),
  (3,60),
  (3,61),
  (3,63),
  (3,66),
  (3,69),
  (3,70),
  (3,71),
  (3,72),
  (3,73),
  (3,75),
  (3,76),
  (3,78),
  (3,79),
  (3,80),
  (3,81),
  (3,82),
  (3,85),
  (3,86),
  (3,89),
  (3,91),
  (3,92),
  (3,93),
  (3,97),
  (3,98),
  (3,99),
  (3,106),
  (3,115),
  (3,128),
  (3,130),
  (3,133),
  (4,1),
  (4,3),
  (4,5),
  (4,7),
  (4,9),
  (4,12),
  (4,13),
  (4,14),
  (4,15),
  (4,16),
  (4,20),
  (4,27),
  (4,28),
  (4,29),
  (4,30),
  (4,34),
  (4,40),
  (4,45),
  (4,49),
  (4,51),
  (4,52),
  (4,57),
  (4,60),
  (4,61),
  (4,62),
  (4,64),
  (4,70),
  (4,72),
  (4,77),
  (4,78),
  (4,79),
  (4,81),
  (4,82),
  (4,83),
  (4,88),
  (4,91),
  (4,92),
  (4,94),
  (4,96),
  (4,99),
  (4,102),
  (4,103),
  (4,105),
  (4,107),
  (4,109),
  (4,113),
  (4,117),
  (4,129),
  (5,9),
  (5,14),
  (5,18),
  (5,24),
  (5,26),
  (5,35),
  (5,40),
  (5,41),
  (5,47),
  (5,56),
  (5,57),
  (5,59),
  (5,61),
  (5,63),
  (5,64),
  (5,66),
  (5,70),
  (5,71),
  (5,73),
  (5,75),
  (5,76),
  (5,78),
  (5,79),
  (5,81),
  (5,87),
  (5,90),
  (5,92),
  (5,93),
  (5,99),
  (5,100),
  (5,101),
  (5,104),
  (5,107),
  (5,110),
  (5,111),
  (5,114),
  (5,115),
  (5,116),
  (5,119),
  (5,120),
  (5,122),
  (5,125),
  (5,126),
  (5,127),
  (5,128),
  (5,130),
  (5,131),
  (5,132),
  (6,5),
  (6,6),
  (6,12),
  (6,13),
  (6,16),
  (6,18),
  (6,19),
  (6,20),
  (6,24),
  (6,27),
  (6,28),
  (6,29),
  (6,30),
  (6,31),
  (6,34),
  (6,36),
  (6,41),
  (6,45),
  (6,49),
  (6,50),
  (6,51),
  (6,56),
  (6,58),
  (6,61),
  (6,63),
  (6,67),
  (6,73),
  (6,75),
  (6,76),
  (6,77),
  (6,78),
  (6,80),
  (6,83),
  (6,85),
  (6,92),
  (6,93),
  (6,96),
  (6,98),
  (6,99),
  (6,104),
  (6,106),
  (6,107),
  (6,108),
  (6,110),
  (6,111),
  (6,116),
  (6,118),
  (6,121),
  (7,1),
  (7,7),
  (7,10),
  (7,13),
  (7,14),
  (7,25),
  (7,34),
  (7,38),
  (7,39),
  (7,40),
  (7,46),
  (7,47),
  (7,50),
  (7,52),
  (7,55),
  (7,59),
  (7,61),
  (7,62),
  (7,66),
  (7,69),
  (7,71),
  (7,76),
  (7,81),
  (7,82),
  (7,86),
  (7,88),
  (7,90),
  (7,91),
  (7,92),
  (7,93),
  (7,94),
  (7,98),
  (7,99),
  (7,101),
  (7,105),
  (7,107),
  (7,108),
  (7,110),
  (7,114),
  (7,115),
  (7,116),
  (7,118),
  (7,122),
  (7,123),
  (7,125),
  (7,127),
  (7,131),
  (7,132),
  (8,3),
  (8,5),
  (8,7),
  (8,9),
  (8,10),
  (8,12),
  (8,15),
  (8,16),
  (8,21),
  (8,24),
  (8,27),
  (8,30),
  (8,32),
  (8,33),
  (8,42),
  (8,44),
  (8,45),
  (8,46),
  (8,51),
  (8,52),
  (8,56),
  (8,57),
  (8,61),
  (8,63),
  (8,64),
  (8,66),
  (8,73),
  (8,49),
  (8,90),
  (8,94),
  (8,96),
  (8,97),
  (8,99),
  (8,100),
  (8,102),
  (8,103),
  (8,105),
  (8,107),
  (8,109),
  (8,110),
  (8,111),
  (8,114),
  (8,118),
  (8,119),
  (8,123),
  (8,124),
  (8,125),
  (8,128);

INSERT INTO ParticipationClub (numConcours, numClub)
VALUES
  (1, 1),
  (1, 3),
  (1, 4),
  (1, 5),
  (1, 6),
  (1, 7),
  (1, 8),
  (1, 9),
  (2, 2),
  (2, 3),
  (2, 4),
  (2, 5),
  (2, 6),
  (2, 7),
  (2, 9),
  (2, 10),
  (3, 1),
  (3, 2),
  (3, 4),
  (3, 5),
  (3, 6),
  (3, 7),
  (3, 8),
  (3, 10),
  (4, 1),
  (4, 2),
  (4, 4),
  (4, 5),
  (4, 6),
  (4, 7),
  (4, 8),
  (4, 9),
  (5, 2),
  (5, 3),
  (5, 4),
  (5, 5),
  (5, 6),
  (5, 7),
  (5, 8),
  (5, 10),
  (6, 1),
  (6, 2),
  (6, 4),
  (6, 5),
  (6, 6),
  (6, 7),
  (6, 9),
  (6, 10),
  (7, 1),
  (7, 3),
  (7, 4),
  (7, 5),
  (7, 6),
  (7, 7),
  (7, 8),
  (7, 10),
  (8, 2),
  (8, 3),
  (8, 4),
  (8, 5),
  (8, 6),
  (8, 7),
  (8, 8),
  (8, 9);

INSERT INTO Evaluation (numEvaluation, dateEvaluation, note, commentaire, numEvaluateur, numDessin)
VALUES
  (1, '2023-01-05', 90, 'Excellent travail!', 1, 1),
  (2, '2023-02-10', 85, 'Belle utilisation des couleurs', 2, 2),
  (3, '2023-03-15', 92, 'Technique impressionnante', 3, 3);