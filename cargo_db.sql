# Host: localhost  (Version: 5.6.21-log)
# Date: 2021-01-22 00:23:50
# Generator: MySQL-Front 5.3  (Build 4.212)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "mt_city"
#

DROP TABLE IF EXISTS `mt_city`;
CREATE TABLE `mt_city` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `City` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_city"
#

INSERT INTO `mt_city` VALUES (1,'GLB');

#
# Structure for table "mt_office"
#

DROP TABLE IF EXISTS `mt_office`;
CREATE TABLE `mt_office` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Office` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "mt_office"
#

INSERT INTO `mt_office` VALUES (1,'Glb Office'),(2,'Hyd Office'),(3,'Test Office');

#
# Structure for table "tr_customer"
#

DROP TABLE IF EXISTS `tr_customer`;
CREATE TABLE `tr_customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) DEFAULT NULL,
  `Item` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `SenderOff` varchar(255) DEFAULT NULL,
  `recoff` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `exptrvDate` date DEFAULT NULL,
  `actualrvdate` date DEFAULT NULL,
  `orgin` varchar(255) DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "tr_customer"
#

INSERT INTO `tr_customer` VALUES (1,'Test','Itm','20','Hyd Office','Glb Office','Cargo','2021-02-02','2021-02-02','GLB','GLB');
