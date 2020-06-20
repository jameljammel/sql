{\rtf1\ansi\ansicpg1252\cocoartf2511
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 4.9.0.1\
-- https://www.phpmyadmin.net/\
--\
-- Host: localhost:8889\
-- Generation Time: Jun 20, 2020 at 01:15 PM\
-- Server version: 5.7.26\
-- PHP Version: 7.3.7\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `BIBLIOTHEQUE`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Stand-in structure for view `depassement`\
-- (See below for the actual view)\
--\
CREATE TABLE `depassement` (\
`N_LECTEUR_D` char(255)\
,`COTE_D` char(6)\
,`DATE_LIMINTE_D` date\
);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `LECTEUR`\
--\
\
CREATE TABLE `LECTEUR` (\
  `N_LECTEUR` char(255) NOT NULL,\
  `NOM` char(255) DEFAULT NULL,\
  `PRENOM` char(255) DEFAULT NULL,\
  `ADRESSE` char(255) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `LECTEUR`\
--\
\
INSERT INTO `LECTEUR` (`N_LECTEUR`, `NOM`, `PRENOM`, `ADRESSE`) VALUES\
('LECT_001', 'DUPONT', 'Michel', '13, RUE DES ROSES, 75018 PARIS'),\
('LECT_002', 'BABA', 'Ali', '15, RUE DU SENTIER, 75002 PARIS'),\
('LECT_003', 'HOKUM', 'Dwight', '22, BVD R. WALLACE, 92000 PUTEAUX'),\
('LECT_004', 'PERE', 'Noel', '55, BVD RASPAIL, 75006 PARIS'),\
('LECT_005', 'SHUNSAKU', 'Ban', '11, RUE DEFRANCE, 94000 VINCENNES'),\
('LECT_006', 'LION', 'L\'e9o', '07, RUE DE LYON, 94000 RUNGIS'),\
('LECT_007', 'LIONNE', 'Laia', '07, RUE DE LYON, 94000 RUNGIS'),\
('LECT_008', 'CHA', 'Colla', '37, AVENUE RENE COTY, 75014 PARIS');\
\
-- --------------------------------------------------------\
\
--\
-- Stand-in structure for view `lecteur_policier`\
-- (See below for the actual view)\
--\
CREATE TABLE `lecteur_policier` (\
`N_LECTEUR` char(255)\
,`NOM` char(255)\
,`PRENOM` char(255)\
,`ADRESSE` char(255)\
,`COTE` char(6)\
,`DATE_LIMITE` date\
);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `LIVRE`\
--\
\
CREATE TABLE `LIVRE` (\
  `COTE` char(6) NOT NULL,\
  `TITRE` char(255) DEFAULT NULL,\
  `CATEGORIE` char(255) DEFAULT NULL,\
  `AUTEUR` char(255) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `LIVRE`\
--\
\
INSERT INTO `LIVRE` (`COTE`, `TITRE`, `CATEGORIE`, `AUTEUR`) VALUES\
('BD001', 'Les naufrages d\'92Ythaq', 'BD', 'FLOCH Adrien'),\
('BD002', 'Death Note', 'BD', 'TSUGUMI Ohba'),\
('BD003', 'Le Secret Du Courage', 'BD', 'STILTON Geronimo'),\
('BD004', 'MOLLY MOON', 'BD', 'BYNG Georgia'),\
('DIV001', 'Former par les contes', 'DIVERS', 'COSTE Philippe'),\
('DIV002', 'La masse salariale', 'DIVERS', 'TAIEB Jean-Pierre'),\
('INFOR1', 'Interactions homme-machine', 'INFORMATIQUE', 'KOLSKI Christophe'),\
('INFOR2', 'Filtrage dinformations', 'INFORMATIQUE', 'MINEL Jean-Luc'),\
('INFOR3', 'Lintelligence en essaim', 'INFORMATIQUE', 'MONMARCH\'c9 Nicolas'),\
('MATH01', 'El\'e9ments de math\'e9matique', 'SCIENCE-MATHS', 'BOUR Baki'),\
('MATH02', 'Morphologie math\'e9matique', 'SCIENCE-MATHS', 'NAJMAN Laurent'),\
('MATH03', 'Analyse math\'e9matique', 'SCIENCE-MATHS', 'CHOIMET Denis'),\
('MATH04', 'Programmation math\'e9matique', 'SCIENCE-MATHS', 'MINOUX Michel'),\
('POL001', 'P\'e9ch\'e9 Originel', 'POLICIER', 'PHYLLIS Dorothy James'),\
('POL002', 'Mort DUn Expert', 'POLICIER', 'PHYLLIS Dorothy James'),\
('POL003', 'Ne ferme pas les yeux', 'POLICIER', 'THOMPSON Carlene'),\
('POL004', 'Une patience d\'92ange', 'POLICIER', 'GEORGE Elizabeth'),\
('POL005', 'Traqu\'e9es', 'POLICIER', 'GRENIER Christian'),\
('POL006', 'The Moonstone', 'POLICIER', 'COLLINS Wilkie'),\
('POL007', 'Coup de th\'e9atre', 'POLICIER', 'GRENIER Christian');\
\
--\
-- Triggers `LIVRE`\
--\
DELIMITER $$\
CREATE TRIGGER `T_LECTEUR` BEFORE UPDATE ON `LIVRE` FOR EACH ROW INSERT INTO lecteur_policier\
 SET action = 'insert',\
     COTE = 'BD000',\
     TITRE = 'SPIDERMAN',\
     CATEGORIE = 'BD',\
     AUTEUR = 'MARVEL'\
$$\
DELIMITER ;\
DELIMITER $$\
CREATE TRIGGER `Trig_livre` BEFORE UPDATE ON `LIVRE` FOR EACH ROW INSERT INTO policier_v\
 SET action = \'91INSERT,\
     N_LECTEUR = \'91LECT009\'92,\
     COTE_D = \'91POL008\'92,\
     DATE_LIMITE_D = '2009-11-07'\
$$\
DELIMITER ;\
\
-- --------------------------------------------------------\
\
--\
-- Stand-in structure for view `policier`\
-- (See below for the actual view)\
--\
CREATE TABLE `policier` (\
`COTE` char(6)\
,`TITRE` char(255)\
,`AUTEUR` char(255)\
);\
\
-- --------------------------------------------------------\
\
--\
-- Stand-in structure for view `policier_v`\
-- (See below for the actual view)\
--\
CREATE TABLE `policier_v` (\
`COTE_v` char(6)\
,`TITRE_v` char(255)\
,`AUTEUR_v` char(255)\
);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `PRET`\
--\
\
CREATE TABLE `PRET` (\
  `N_LECTEUR` char(255) DEFAULT NULL,\
  `COTE` char(6) DEFAULT NULL,\
  `DATE_EMPRUNT` date DEFAULT NULL,\
  `DATE_LIMITE` date DEFAULT NULL,\
  `RENDU` char(20) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `PRET`\
--\
\
INSERT INTO `PRET` (`N_LECTEUR`, `COTE`, `DATE_EMPRUNT`, `DATE_LIMITE`, `RENDU`) VALUES\
('LECT_006', 'MATH02', '2009-11-17', '2009-11-14', 'NON'),\
('LECT_006', 'INFOR3', '2009-11-17', '2009-11-14', 'OUI'),\
('LECT_004', 'BD002', '2009-11-18', '2009-11-14', 'NON'),\
('LECT_001', 'POL005', '2009-11-11', '2009-11-14', 'OUI'),\
('LECT_001', 'POL003', '2009-11-13', '2009-11-07', 'NON'),\
('LECT_001', 'POL006', '2009-11-11', '2009-11-04', 'NON'),\
('LECT_001', 'DIV002', '2009-11-25', '2009-11-19', 'NON'),\
('LECT_001', 'BD003', '2009-11-25', '2009-12-19', 'OUI'),\
('LECT_008', 'POL001', '2009-11-10', '2009-12-02', 'OUI'),\
('LECT_008', 'POL002', '2009-11-09', '2009-12-04', 'OUI'),\
('LECT_008', 'POL007', '2009-11-09', '2009-12-02', 'NON'),\
('LECT_002', 'BD001', '2009-12-01', '2009-12-18', 'OUI'),\
('LECT_002', 'BD004', '2009-12-01', '2009-12-18', 'OUI');\
\
--\
-- Triggers `PRET`\
--\
DELIMITER $$\
CREATE TRIGGER `t_depass` BEFORE UPDATE ON `PRET` FOR EACH ROW INSERT INTO depassement\
 SET action = 'update',\
     N_LECTEUR = OLD.N_LECTEUR,\
     DATE_LIMITE_D = NOW()\
$$\
DELIMITER ;\
\
-- --------------------------------------------------------\
\
--\
-- Structure for view `depassement`\
--\
DROP TABLE IF EXISTS `depassement`;\
\
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `depassement`  AS  select `pret`.`N_LECTEUR` AS `N_LECTEUR_D`,`pret`.`COTE` AS `COTE_D`,`pret`.`DATE_LIMITE` AS `DATE_LIMINTE_D` from `pret` where (`pret`.`RENDU` = 'NON') ;\
\
-- --------------------------------------------------------\
\
--\
-- Structure for view `lecteur_policier`\
--\
DROP TABLE IF EXISTS `lecteur_policier`;\
\
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `lecteur_policier`  AS  select `lecteur`.`N_LECTEUR` AS `N_LECTEUR`,`lecteur`.`NOM` AS `NOM`,`lecteur`.`PRENOM` AS `PRENOM`,`lecteur`.`ADRESSE` AS `ADRESSE`,`livre`.`COTE` AS `COTE`,`pret`.`DATE_LIMITE` AS `DATE_LIMITE` from ((`livre` join `lecteur`) join `pret`) where (curdate() > `pret`.`DATE_LIMITE`) ;\
\
-- --------------------------------------------------------\
\
--\
-- Structure for view `policier`\
--\
DROP TABLE IF EXISTS `policier`;\
\
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `policier`  AS  select `livre`.`COTE` AS `COTE`,`livre`.`TITRE` AS `TITRE`,`livre`.`AUTEUR` AS `AUTEUR` from `livre` where (`livre`.`CATEGORIE` = 'POLICIER') ;\
\
-- --------------------------------------------------------\
\
--\
-- Structure for view `policier_v`\
--\
DROP TABLE IF EXISTS `policier_v`;\
\
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `policier_v`  AS  select `livre`.`COTE` AS `COTE_v`,`livre`.`TITRE` AS `TITRE_v`,`livre`.`AUTEUR` AS `AUTEUR_v` from `livre` where (`livre`.`CATEGORIE` = 'POLICIER') ;\
\
--\
-- Indexes for dumped tables\
--\
\
--\
-- Indexes for table `LECTEUR`\
--\
ALTER TABLE `LECTEUR`\
  ADD PRIMARY KEY (`N_LECTEUR`);\
\
--\
-- Indexes for table `LIVRE`\
--\
ALTER TABLE `LIVRE`\
  ADD PRIMARY KEY (`COTE`);}