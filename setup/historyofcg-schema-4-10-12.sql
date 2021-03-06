# ************************************************************
# Sequel Pro SQL dump
# Version 3408
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: localhost (MySQL 5.5.20)
# Database: historyofcg
# Generation Time: 2012-04-10 16:45:02 +0000
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
  KEY `entry_id_2` (`entry_id_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table entries
# ------------------------------------------------------------

DROP TABLE IF EXISTS `entries`;

CREATE TABLE `entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL,
  `description` varchar(1250) DEFAULT '',
  `user_id` int(11) unsigned NOT NULL,
  `date_1` datetime DEFAULT NULL,
  `date_2` datetime DEFAULT NULL,
  `homepage_url` varchar(300) DEFAULT NULL,
  `location_id` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `source_name` varchar(100) DEFAULT NULL,
  `source_url` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`id`),
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
  KEY `story_id` (`story_id`),
  CONSTRAINT `entries_stories_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE
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
  `video` varchar(50) DEFAULT NULL,
  `author_id` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `source_name` varchar(300) DEFAULT NULL,
  `source_url` varchar(300) DEFAULT NULL,
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
	(1,'Video'),
	(2,'Image'),
	(3,'Text');

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

DROP TABLE IF EXISTS `users`;

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
