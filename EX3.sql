{\rtf1\ansi\ansicpg1252\cocoartf2511
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
CREATE TABLE `ACTIVITE` (\
  `ID` int(11) DEFAULT NULL,\
  `VILLAGE` char(50) DEFAULT NULL,\
  `ACTIVITE` char(50) DEFAULT NULL,\
  `COUT` int(11) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `ACTIVITE`\
--\
\
INSERT INTO `ACTIVITE` (`ID`, `VILLAGE`, `ACTIVITE`, `COUT`) VALUES\
(1, 'CAR', 'KAYAK', 125),\
(2, 'CAR', 'NATATION', 50),\
(3, 'CAR', 'TENNIS', 100),\
(4, 'CAR', 'VOILE', 200),\
(5, 'COl', 'NATATION', 70),\
(6, 'DON', 'NATATION', 0),\
(7, 'DON', 'TENNIS', 100),\
(8, 'DON', 'TENNIS', 130);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `PAYS`\
--\
\
CREATE TABLE `PAYS` (\
  `CODE_2` varchar(20) DEFAULT NULL,\
  `Pays_1` varchar(20) DEFAULT NULL,\
  `Continent` varchar(20) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `PAYS`\
--\
\
INSERT INTO `PAYS` (`CODE_2`, `Pays_1`, `Continent`) VALUES\
('BAH', 'Bahamas', 'AME'),\
('ESP', 'Espagne', 'EUR'),\
('FRA', 'France', 'EUR'),\
('JAP', 'Japon', 'ASI'),\
('TAH', 'Thailande', 'ASI');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `VILLAGES`\
--\
\
CREATE TABLE `VILLAGES` (\
  `Code_1` varchar(20) DEFAULT NULL,\
  `Nom` varchar(20) DEFAULT NULL,\
  `Pays` varchar(20) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `VILLAGES`\
--\
\
INSERT INTO `VILLAGES` (`Code_1`, `Nom`, `Pays`) VALUES\
('CAR', 'Caeg\'e8se', 'FRA'),\
('COL', 'Columbus Isle', 'BAH'),\
('DON', 'Don Miguel', 'ESP'),\
('PHU', 'Phuket', 'THA'),\
('POM', 'Pomadur', 'FRA'),\
('SAH', 'Sahora', 'JAP');\
}