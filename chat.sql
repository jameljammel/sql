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
-- Generation Time: Jun 20, 2020 at 01:16 PM\
-- Server version: 5.7.26\
-- PHP Version: 7.3.7\
\
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Database: `chat`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `chat`\
--\
\
CREATE TABLE `chat` (\
  `id` int(255) NOT NULL,\
  `name` varchar(255) NOT NULL,\
  `msg` varchar(255) NOT NULL,\
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP\
) ENGINE=InnoDB DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `chat`\
--\
\
INSERT INTO `chat` (`id`, `name`, `msg`, `date`) VALUES\
(17, 'jamel jammel', 'dvc', '2020-02-23 13:14:45'),\
(18, 'jamel jammel', 'dwovw', '2020-02-23 13:14:52'),\
(19, 'hhh', 'QGDSHG', '2020-02-24 13:04:11'),\
(20, 'hhh', 'Qgzgv', '2020-02-24 13:04:26'),\
(21, 'hhh', 'hgsv<houq', '2020-02-24 13:04:37'),\
(22, 'hhh', 'bonjour', '2020-02-24 13:04:46'),\
(23, 'nn', 'ydfztQFEGL', '2020-02-25 10:04:15'),\
(24, 'nn', 'xc cw ', '2020-02-25 10:04:26'),\
(25, 'nn', 'hfxcgjvkblnm,', '2020-02-25 10:07:57'),\
(26, 'nn', 'dxgfhvjbknl', '2020-02-25 10:08:10'),\
(27, 'nn', 'gfchvjbknl,m;\'f9m', '2020-02-25 10:08:16'),\
(28, 'hh', 'lkl', '2020-03-04 14:09:29');\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `user`\
--\
\
CREATE TABLE `user` (\
  `id` int(11) NOT NULL,\
  `name` varchar(50) NOT NULL,\
  `email` varchar(50) NOT NULL,\
  `country` varchar(40) NOT NULL,\
  `gender` varchar(30) NOT NULL,\
  `password` varchar(30) NOT NULL,\
  `status` int(20) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `user`\
--\
\
INSERT INTO `user` (`id`, `name`, `email`, `country`, `gender`, `password`, `status`) VALUES\
(7, 'jamel jammel', 'tvgaming818@gmail.com', 'England', 'male', 'jamel2020', 0),\
(8, 'jamel', 'jameljammelapk@gmail.com', 'France', 'male', 'jameljammel', 0),\
(9, 'jamel3', 'aaaaa0gmail.com', 'France', 'male', 'Jamel 1234', 0),\
(10, 'hhh', 'aaaaa@gmail.com', 'France', 'male', 'hhh', 0),\
(11, 'jj', 'jj', 'Paris8 Mime', 'male', 'jj', 0),\
(12, 'nn', 'nn@gmail.com', 'Espagne', 'male', 'nn', 0),\
(13, 'hh', 'hh@gmail.com', 'France', 'male', 'hh', 1);\
\
--\
-- Indexes for dumped tables\
--\
\
--\
-- Indexes for table `chat`\
--\
ALTER TABLE `chat`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- Indexes for table `user`\
--\
ALTER TABLE `user`\
  ADD PRIMARY KEY (`id`);\
\
--\
-- AUTO_INCREMENT for dumped tables\
--\
\
--\
-- AUTO_INCREMENT for table `chat`\
--\
ALTER TABLE `chat`\
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;\
\
--\
-- AUTO_INCREMENT for table `user`\
--\
ALTER TABLE `user`\
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;\
}