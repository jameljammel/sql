{\rtf1\ansi\ansicpg1252\cocoartf2511
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 \
-- Table structure for table `allusers`\
--\
\
CREATE TABLE `allusers` (\
  `ip` varchar(15) NOT NULL,\
  `timestamp` int(11) NOT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=latin1;\
\
--\
-- Dumping data for table `allusers`\
--\
\
INSERT INTO `allusers` (`ip`, `timestamp`) VALUES\
('192.168.43.1', 1580987174);\
\
-- --------------------------------------------------------\
\
--\
-- Table structure for table `connectes`\
--\
\
CREATE TABLE `connectes` (\
  `ip` char(15) DEFAULT NULL,\
  `timestamp` int(11) DEFAULT NULL\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
}