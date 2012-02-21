# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.20)
# Database: historyofcg
# Generation Time: 2012-02-21 19:49:05 +0000
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
	(23,3,NULL,NULL,'index',9,10),
	(24,3,NULL,NULL,'view',11,12),
	(25,3,NULL,NULL,'add',13,14),
	(26,3,NULL,NULL,'edit',15,16),
	(27,15,NULL,NULL,'initDB',73,74),
	(28,1,NULL,NULL,'Tags',82,89),
	(29,28,NULL,NULL,'fetch',83,84),
	(30,3,NULL,NULL,'get',17,18),
	(31,3,NULL,NULL,'saveTags',19,20),
	(32,2,NULL,NULL,'urlize',3,4),
	(33,2,NULL,NULL,'unUrlize',5,6),
	(34,3,NULL,NULL,'urlize',21,22),
	(35,3,NULL,NULL,'unUrlize',23,24),
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
	(50,15,NULL,NULL,'unUrlize',77,78);

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


# Dump of table categories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `categories`;

CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;

INSERT INTO `categories` (`id`, `category`)
VALUES
	(4,'event'),
	(3,'organization'),
	(1,'person'),
	(2,'project');

/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table connections
# ------------------------------------------------------------

DROP TABLE IF EXISTS `connections`;

CREATE TABLE `connections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id_1` int(11) unsigned NOT NULL,
  `entry_id_2` int(11) unsigned NOT NULL,
  `role` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id_1` (`entry_id_1`),
  KEY `entry_id_2` (`entry_id_2`),
  CONSTRAINT `connections_ibfk_1` FOREIGN KEY (`entry_id_1`) REFERENCES `entries` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `connections_ibfk_2` FOREIGN KEY (`entry_id_2`) REFERENCES `entries` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries`;

CREATE TABLE `entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL,
  `description` varchar(1250) NOT NULL DEFAULT '',
  `user_id` int(11) unsigned NOT NULL,
  `date_1` datetime DEFAULT NULL,
  `date_2` datetime DEFAULT NULL,
  `location_id` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table entries_stories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries_stories`;

CREATE TABLE `entries_stories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `story_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `story_id` (`story_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table entries_tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries_tags`;

CREATE TABLE `entries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table groups
# ------------------------------------------------------------

DROP TABLE IF EXISTS `groups`;

CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;

INSERT INTO `groups` (`id`, `name`, `created`, `modified`)
VALUES
	(1,'admins','2012-02-03 16:05:42','2012-02-03 16:06:05'),
	(2,'users','2012-02-03 16:06:11','2012-02-03 16:06:11');

/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table locations
# ------------------------------------------------------------

DROP TABLE IF EXISTS `locations`;

CREATE TABLE `locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(30) NOT NULL DEFAULT '',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table sources
# ------------------------------------------------------------

DROP TABLE IF EXISTS `sources`;

CREATE TABLE `sources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table stories
# ------------------------------------------------------------

DROP TABLE IF EXISTS `stories`;

CREATE TABLE `stories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `story_type_id` int(11) unsigned NOT NULL,
  `date` datetime DEFAULT NULL,
  `story` varchar(4000) DEFAULT NULL,
  `url` varchar(250) DEFAULT NULL,
  `author_id` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table story_types
# ------------------------------------------------------------

DROP TABLE IF EXISTS `story_types`;

CREATE TABLE `story_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `story_types` WRITE;
/*!40000 ALTER TABLE `story_types` DISABLE KEYS */;

INSERT INTO `story_types` (`id`, `name`)
VALUES
	(1,'video'),
	(2,'picture'),
	(3,'text');

/*!40000 ALTER TABLE `story_types` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table tags
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tags`;

CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table users
# ------------------------------------------------------------

CREATE TABLE `users` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(20) NOT NULL DEFAULT '',
  `last_name` varchar(30) NOT NULL DEFAULT '',
  `email` varchar(200) NOT NULL DEFAULT '',
  `password` varchar(50) NOT NULL DEFAULT '',
  `group_id` int(11) unsigned NOT NULL DEFAULT '2',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table views
# ------------------------------------------------------------

DROP TABLE IF EXISTS `views`;

CREATE TABLE `views` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(11) unsigned NOT NULL,
  `table_name` varchar(15) NOT NULL DEFAULT '',
  `count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;




/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
