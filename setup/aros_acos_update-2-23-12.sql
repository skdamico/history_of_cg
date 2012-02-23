# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.20)
# Database: historyofcg
# Generation Time: 2012-02-23 21:25:17 +0000
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
	(1,NULL,'',NULL,'controllers',1,100),
	(2,1,NULL,NULL,'About',2,7),
	(3,1,NULL,NULL,'Entries',8,25),
	(4,1,NULL,NULL,'Groups',26,41),
	(5,4,NULL,NULL,'index',27,28),
	(6,4,NULL,NULL,'view',29,30),
	(7,4,NULL,NULL,'add',31,32),
	(8,4,NULL,NULL,'edit',33,34),
	(9,4,NULL,NULL,'delete',35,36),
	(10,1,NULL,NULL,'Home',42,49),
	(11,10,NULL,NULL,'index',43,44),
	(12,1,NULL,NULL,'Sessions',50,59),
	(13,12,NULL,NULL,'create',51,52),
	(14,12,NULL,NULL,'destroy',53,54),
	(15,1,NULL,NULL,'Users',60,79),
	(16,15,NULL,NULL,'signup',61,62),
	(17,15,NULL,NULL,'index',63,64),
	(18,15,NULL,NULL,'view',65,66),
	(19,15,NULL,NULL,'add',67,68),
	(20,15,NULL,NULL,'edit',69,70),
	(21,15,NULL,NULL,'delete',71,72),
	(22,1,NULL,NULL,'AclExtras',80,81),
	(24,3,NULL,NULL,'view',9,10),
	(25,3,NULL,NULL,'add',11,12),
	(26,3,NULL,NULL,'edit',13,14),
	(27,15,NULL,NULL,'initDB',73,74),
	(28,1,NULL,NULL,'Tags',82,89),
	(29,28,NULL,NULL,'fetch',83,84),
	(30,3,NULL,NULL,'get',15,16),
	(31,3,NULL,NULL,'saveTags',17,18),
	(32,2,NULL,NULL,'urlize',3,4),
	(33,2,NULL,NULL,'unUrlize',5,6),
	(34,3,NULL,NULL,'urlize',19,20),
	(35,3,NULL,NULL,'unUrlize',21,22),
	(36,4,NULL,NULL,'urlize',37,38),
	(37,4,NULL,NULL,'unUrlize',39,40),
	(38,10,NULL,NULL,'urlize',45,46),
	(39,10,NULL,NULL,'unUrlize',47,48),
	(40,12,NULL,NULL,'urlize',55,56),
	(41,12,NULL,NULL,'unUrlize',57,58),
	(42,1,NULL,NULL,'Stories',90,99),
	(43,42,NULL,NULL,'get',91,92),
	(44,42,NULL,NULL,'add_or_edit',93,94),
	(45,42,NULL,NULL,'urlize',95,96),
	(46,42,NULL,NULL,'unUrlize',97,98),
	(47,28,NULL,NULL,'urlize',85,86),
	(48,28,NULL,NULL,'unUrlize',87,88),
	(49,15,NULL,NULL,'urlize',75,76),
	(50,15,NULL,NULL,'unUrlize',77,78),
	(51,3,NULL,NULL,'get_by_phrase',23,24);

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
	(2,2,1,'-1','-1','-1','-1'),
	(3,2,25,'1','1','1','1'),
	(4,2,26,'1','1','1','1'),
	(5,2,30,'1','1','1','1'),
	(6,2,29,'1','1','1','1'),
	(7,2,44,'1','1','1','1');

/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
