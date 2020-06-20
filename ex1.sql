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
-- Database: `EX3`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `LOCALISATION`\
--\
\
CREATE TABLE `LOCALISATION` (\
  `ville` varchar(20) DEFAULT NULL,\
  `pays` varchar(20) DEFAULT NULL,\
  `nb_habitants` int(11) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `PAYS`\
--\
\
CREATE TABLE `PAYS` (\
  `pays` varchar(20) DEFAULT NULL,\
  `continent` varchar(20) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `PLUIE`\
--\
\
CREATE TABLE `PLUIE` (\
  `ville` varchar(20) DEFAULT NULL,\
  `mois` int(11) NOT NULL,\
  `pluviom\'e9trie` varchar(20) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `Temp\'e9rature`\
--\
\
CREATE TABLE `Temp\'e9rature` (\
  `ville` varchar(20) DEFAULT NULL,\
  `date` date DEFAULT NULL,\
  `temp_min` int(11) NOT NULL,\
  `temps_max` int(11) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
}