# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.20)
# Database: historyofcg
# Generation Time: 2012-04-10 01:57:36 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `acos`;

CREATE TABLE `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;

INSERT INTO `acos` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,NULL,'',NULL,'controllers',1,108),
	(2,1,NULL,NULL,'About',2,7),
	(3,1,NULL,NULL,'Entries',8,27),
	(4,1,NULL,NULL,'Groups',28,41),
	(5,4,NULL,NULL,'index',29,30),
	(6,4,NULL,NULL,'view',31,32),
	(7,4,NULL,NULL,'add',33,34),
	(8,4,NULL,NULL,'edit',35,36),
	(9,4,NULL,NULL,'delete',37,38),
	(10,1,NULL,NULL,'Home',42,47),
	(11,10,NULL,NULL,'index',43,44),
	(12,1,NULL,NULL,'Sessions',48,55),
	(13,12,NULL,NULL,'create',49,50),
	(14,12,NULL,NULL,'destroy',51,52),
	(15,1,NULL,NULL,'Users',56,73),
	(16,15,NULL,NULL,'signup',57,58),
	(17,15,NULL,NULL,'index',59,60),
	(18,15,NULL,NULL,'view',61,62),
	(19,15,NULL,NULL,'add',63,64),
	(20,15,NULL,NULL,'edit',65,66),
	(21,15,NULL,NULL,'delete',67,68),
	(22,1,NULL,NULL,'AclExtras',74,75),
	(24,3,NULL,NULL,'view',9,10),
	(25,3,NULL,NULL,'add',11,12),
	(26,3,NULL,NULL,'edit',13,14),
	(27,15,NULL,NULL,'initDB',69,70),
	(28,1,NULL,NULL,'Tags',76,81),
	(29,28,NULL,NULL,'fetch',77,78),
	(30,3,NULL,NULL,'get',15,16),
	(31,3,NULL,NULL,'saveTags',17,18),
	(42,1,NULL,NULL,'Stories',82,91),
	(43,42,NULL,NULL,'get',83,84),
	(44,42,NULL,NULL,'add_or_edit',85,86),
	(51,3,NULL,NULL,'get_by_phrase',19,20),
	(52,1,NULL,NULL,'Connections',92,101),
	(53,52,NULL,NULL,'saveTags',93,94),
	(54,52,NULL,NULL,'add',95,96),
	(57,52,NULL,NULL,'delete',97,98),
	(58,42,NULL,NULL,'delete',87,88),
	(59,3,NULL,NULL,'not_found',21,22),
	(60,2,NULL,NULL,'index',3,4),
	(61,2,NULL,NULL,'create_slug',5,6),
	(62,52,NULL,NULL,'create_slug',99,100),
	(63,3,NULL,NULL,'not_published',23,24),
	(64,3,NULL,NULL,'create_slug',25,26),
	(65,4,NULL,NULL,'create_slug',39,40),
	(66,10,NULL,NULL,'create_slug',45,46),
	(67,1,NULL,NULL,'Search',102,107),
	(68,67,NULL,NULL,'index',103,104),
	(69,67,NULL,NULL,'create_slug',105,106),
	(70,12,NULL,NULL,'create_slug',53,54),
	(71,42,NULL,NULL,'create_slug',89,90),
	(72,28,NULL,NULL,'create_slug',79,80),
	(73,15,NULL,NULL,'create_slug',71,72);

/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros`;

CREATE TABLE `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;

INSERT INTO `aros` (`id`, `parent_id`, `model`, `foreign_key`, `alias`, `lft`, `rght`)
VALUES
	(1,NULL,'Group',1,'',1,2),
	(2,NULL,'Group',2,'',3,4);

/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table aros_acos
# ------------------------------------------------------------

DROP TABLE IF EXISTS `aros_acos`;

CREATE TABLE `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;

INSERT INTO `aros_acos` (`id`, `aro_id`, `aco_id`, `_create`, `_read`, `_update`, `_delete`)
VALUES
	(1,1,1,'1','1','1','1'),
	(2,2,1,'1','1','1','1');

/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
