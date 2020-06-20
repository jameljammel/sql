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
-- Generation Time: Jun 20, 2020 at 01:17 PM\
-- Server version: 5.7.26\
-- PHP Version: 7.3.7\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `EX2`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `DEPOT`\
--\
\
CREATE TABLE `DEPOT` (\
  `N_DEP` int(11) NOT NULL,\
  `NOM_DEP` char(50) DEFAULT NULL,\
  `ADR` char(50) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `DEPOT`\
--\
\
INSERT INTO `DEPOT` (`N_DEP`, `NOM_DEP`, `ADR`) VALUES\
(310, 'CAFE DE LA GARE', 'BURES'),\
(311, 'CAFE DE PARIS', 'ARCUEIL'),\
(324, 'PRESSE_CITY', 'PARIS'),\
(325, 'CAFE DU COMMERCE', 'ORSAY'),\
(328, 'LE MOZARD', 'PARIS'),\
(345, 'CAFE LE FONTENAY', 'BURES'),\
(357, 'CAFE DE LA GARE', 'PARIS'),\
(381, 'LAVENTURE', 'BREUILLET');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `JOURNAL`\
--\
\
CREATE TABLE `JOURNAL` (\
  `CODE_J` int(11) NOT NULL,\
  `TITRE` char(50) DEFAULT NULL,\
  `PRIX` char(50) DEFAULT NULL,\
  `TYPE` char(20) DEFAULT NULL,\
  `PERIODE` char(50) NOT NULL,\
  `ADR_J` char(50) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `JOURNAL`\
--\
\
INSERT INTO `JOURNAL` (`CODE_J`, `TITRE`, `PRIX`, `TYPE`, `PERIODE`, `ADR_J`) VALUES\
(110, 'LE MONDE', '4.5', 'INFO', 'QUOTIDIEN', 'PARIS'),\
(115, 'LIBERATION', '4.5', 'INFO', 'QUOTIDIEN', 'PARIS'),\
(120, 'LA RECHERCHE', '32', 'SCIENCE', 'MENSUEL', 'PARIS'),\
(153, 'LE CANARD', '20', '', 'HEBDO', 'MONTROUGE'),\
(156, 'SCIENCE ET VIE', '20', 'SCIENCE', 'MENSUEL', 'PARIS'),\
(160, 'ELLE', '15', 'FEMININ', 'HEBDO', 'MONTROGE');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `LIVRAISON`\
--\
\
CREATE TABLE `LIVRAISON` (\
  `CODE_J` int(11) DEFAULT NULL,\
  `N_DEP` int(11) DEFAULT NULL,\
  `DATE_L` date DEFAULT NULL,\
  `QTE_L` int(11) DEFAULT NULL,\
  `QTE_R` int(11) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
--\
-- Dumping data for table `LIVRAISON`\
--\
\
INSERT INTO `LIVRAISON` (`CODE_J`, `N_DEP`, `DATE_L`, `QTE_L`, `QTE_R`) VALUES\
(110, 328, '1992-05-04', 20, 0),\
(115, 328, '1992-05-05', 10, 1),\
(110, 345, '1992-05-04', 48, 1),\
(115, 345, '1992-05-03', 40, 2),\
(110, 381, '1992-01-23', 20, 0),\
(115, 381, '1992-01-24', 20, 0),\
(120, 381, '1992-01-25', 25, 0);\
\
--\
-- Indexes for dumped tables\
--\
\
--\
-- Indexes for table `DEPOT`\
--\
ALTER TABLE `DEPOT`\
  ADD PRIMARY KEY (`N_DEP`);\
\
--\
-- Indexes for table `JOURNAL`\
--\
ALTER TABLE `JOURNAL`\
  ADD PRIMARY KEY (`CODE_J`);\
}