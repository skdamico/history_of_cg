-- MySQL dump 10.13  Distrib 5.1.41, for debian-linux-gnu (i486)
--
-- Host: localhost    Database: historyofcg
-- ------------------------------------------------------
-- Server version	5.1.41-3ubuntu12.10

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acos`
--

DROP TABLE IF EXISTS `acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acos`
--

LOCK TABLES `acos` WRITE;
/*!40000 ALTER TABLE `acos` DISABLE KEYS */;
INSERT INTO `acos` VALUES (1,NULL,'',NULL,'controllers',1,108),(2,1,NULL,NULL,'About',2,7),(3,1,NULL,NULL,'Entries',8,27),(4,1,NULL,NULL,'Groups',28,41),(5,4,NULL,NULL,'index',29,30),(6,4,NULL,NULL,'view',31,32),(7,4,NULL,NULL,'add',33,34),(8,4,NULL,NULL,'edit',35,36),(9,4,NULL,NULL,'delete',37,38),(10,1,NULL,NULL,'Home',42,47),(11,10,NULL,NULL,'index',43,44),(12,1,NULL,NULL,'Sessions',48,55),(13,12,NULL,NULL,'create',49,50),(14,12,NULL,NULL,'destroy',51,52),(15,1,NULL,NULL,'Users',56,73),(16,15,NULL,NULL,'signup',57,58),(17,15,NULL,NULL,'index',59,60),(18,15,NULL,NULL,'view',61,62),(19,15,NULL,NULL,'add',63,64),(20,15,NULL,NULL,'edit',65,66),(21,15,NULL,NULL,'delete',67,68),(22,1,NULL,NULL,'AclExtras',74,75),(24,3,NULL,NULL,'view',9,10),(25,3,NULL,NULL,'add',11,12),(26,3,NULL,NULL,'edit',13,14),(27,15,NULL,NULL,'initDB',69,70),(28,1,NULL,NULL,'Tags',76,81),(29,28,NULL,NULL,'fetch',77,78),(30,3,NULL,NULL,'get',15,16),(31,3,NULL,NULL,'saveTags',17,18),(42,1,NULL,NULL,'Stories',82,91),(43,42,NULL,NULL,'get',83,84),(44,42,NULL,NULL,'add_or_edit',85,86),(51,3,NULL,NULL,'get_by_phrase',19,20),(52,1,NULL,NULL,'Connections',92,101),(53,52,NULL,NULL,'saveTags',93,94),(54,52,NULL,NULL,'add',95,96),(57,52,NULL,NULL,'delete',97,98),(58,42,NULL,NULL,'delete',87,88),(59,3,NULL,NULL,'not_found',21,22),(60,2,NULL,NULL,'index',3,4),(61,2,NULL,NULL,'create_slug',5,6),(62,52,NULL,NULL,'create_slug',99,100),(63,3,NULL,NULL,'not_published',23,24),(64,3,NULL,NULL,'create_slug',25,26),(65,4,NULL,NULL,'create_slug',39,40),(66,10,NULL,NULL,'create_slug',45,46),(67,1,NULL,NULL,'Search',102,107),(68,67,NULL,NULL,'index',103,104),(69,67,NULL,NULL,'create_slug',105,106),(70,12,NULL,NULL,'create_slug',53,54),(71,42,NULL,NULL,'create_slug',89,90),(72,28,NULL,NULL,'create_slug',79,80),(73,15,NULL,NULL,'create_slug',71,72);
/*!40000 ALTER TABLE `acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros`
--

DROP TABLE IF EXISTS `aros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(10) DEFAULT NULL,
  `model` varchar(255) DEFAULT '',
  `foreign_key` int(10) unsigned DEFAULT NULL,
  `alias` varchar(255) DEFAULT '',
  `lft` int(10) DEFAULT NULL,
  `rght` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros`
--

LOCK TABLES `aros` WRITE;
/*!40000 ALTER TABLE `aros` DISABLE KEYS */;
INSERT INTO `aros` VALUES (1,NULL,'Group',1,'',1,2),(2,NULL,'Group',2,'',3,4);
/*!40000 ALTER TABLE `aros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `aros_acos`
--

DROP TABLE IF EXISTS `aros_acos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aros_acos` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `aro_id` int(10) unsigned NOT NULL,
  `aco_id` int(10) unsigned NOT NULL,
  `_create` char(2) NOT NULL DEFAULT '0',
  `_read` char(2) NOT NULL DEFAULT '0',
  `_update` char(2) NOT NULL DEFAULT '0',
  `_delete` char(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aros_acos`
--

LOCK TABLES `aros_acos` WRITE;
/*!40000 ALTER TABLE `aros_acos` DISABLE KEYS */;
INSERT INTO `aros_acos` VALUES (1,1,1,'1','1','1','1'),(2,2,1,'1','1','1','1');
/*!40000 ALTER TABLE `aros_acos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `category` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `category` (`category`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (4,'event'),(3,'organization'),(1,'person'),(2,'project');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `connections`
--

DROP TABLE IF EXISTS `connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `connections` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id_1` int(11) unsigned NOT NULL,
  `entry_id_2` int(11) unsigned NOT NULL,
  `role` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id_1` (`entry_id_1`),
  KEY `entry_id_2` (`entry_id_2`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `connections`
--

LOCK TABLES `connections` WRITE;
/*!40000 ALTER TABLE `connections` DISABLE KEYS */;
INSERT INTO `connections` VALUES (1,3,1,NULL),(2,4,1,NULL),(3,4,3,NULL),(9,2,5,NULL),(10,3,6,NULL),(11,9,3,NULL),(14,10,9,NULL),(15,5,6,NULL),(16,5,14,NULL),(17,17,16,NULL),(18,17,1,NULL),(19,17,4,NULL),(20,17,16,NULL),(21,18,17,NULL),(22,18,1,NULL),(23,18,3,NULL),(24,2,6,NULL);
/*!40000 ALTER TABLE `connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries`
--

DROP TABLE IF EXISTS `entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `category_id` int(11) unsigned NOT NULL,
  `description` varchar(1250) DEFAULT '',
  `user_id` int(11) unsigned NOT NULL,
  `date_1` datetime DEFAULT NULL,
  `date_2` datetime DEFAULT NULL,
  `location_id` int(11) unsigned DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `source_name` varchar(100) DEFAULT NULL,
  `source_url` varchar(300) DEFAULT NULL,
  `homepage_url` varchar(300) DEFAULT NULL,
  `slug` varchar(200) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  KEY `location_id` (`location_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries`
--

LOCK TABLES `entries` WRITE;
/*!40000 ALTER TABLE `entries` DISABLE KEYS */;
INSERT INTO `entries` VALUES (1,'Pixar',3,'Pixar Animation Studios, pronounced /ËˆpÉªksÉ‘r/ (stylized as PIXAR), is an American computer animation film studio based in Emeryville, California. The studio has earned 26 Academy Awards, seven Golden Globes, and three Grammy Awards, among many other awards and acknowledgments. It is best known for its CGI-animated feature films created with PhotoRealistic RenderMan, its own implementation of the industry-standard RenderMan image-rendering application programming interface used to generate high-quality images. Pixar began in 1979 as the Graphics Group, part of the Computer Division of Lucasfilm before it was acquired by Apple Computer co-founder Steve Jobs in 1986. The Walt Disney Company bought Pixar in 2006 at a valuation of $7.4 billion; the transaction made Jobs the largest shareholder in Disney.',1,'1979-01-01 00:00:00',NULL,NULL,1,'2012-03-26 17:35:36','2012-03-26 17:35:45','Wikipedia','http://en.wikipedia.org/wiki/Pixar',NULL,'pixar'),(2,'Connie Chan',1,'Cogito ergo sum.',4,'1989-01-25 00:00:00',NULL,NULL,1,'2012-03-27 00:31:28','2012-03-27 15:44:47',NULL,NULL,NULL,'connie-chan'),(3,'Toy Story',2,'A cowboy toy is profoundly threatened and jealous when a fancy spaceman toy supplants him as top toy in a boy\'s room.',3,'1995-11-22 00:00:00',NULL,NULL,1,'2012-03-27 13:39:20','2012-03-27 13:39:43',NULL,NULL,NULL,'toy-story'),(4,'Walt Disney Pictures',3,'Walt Disney Pictures is an American film studio owned by The Walt Disney Company. Walt Disney Pictures and Television, a subsidiary of the Walt Disney Studios and the main production company for live-action feature films within the Walt Disney Motion Pictures Group, based at the Walt Disney Studios, acquires and produces output that are released under the Walt Disney Pictures and Touchstone Pictures banners. Their most commercially successful production partners in later years have been Pixar, Great Oaks, Caravan Pictures, Studio Ghibli, Jerry Bruckheimer Films, Marvel Studios, Spyglass Entertainment, Starz Media, Walden Media, Mandeville Films, Gunn Films and Jim Henson Pictures.',3,'1929-01-01 00:00:00',NULL,NULL,1,'2012-03-27 13:48:49','2012-03-27 13:49:29',NULL,NULL,NULL,'walt-disney-pictures'),(5,'James Staub',1,'James is a bioluminescent phytoplankton.',3,NULL,NULL,NULL,1,'2012-03-27 14:59:51','2012-03-27 15:44:32','http://www.lostateminor.com/2012/03/23/stunning-photos-of-bioluminescent-phytoplankton/','',NULL,'james-staub'),(6,'Terrence Masson',1,'',6,NULL,NULL,NULL,1,'2012-04-06 13:51:39','2012-04-09 20:06:26',NULL,NULL,NULL,'terrence-masson'),(7,'Bunkie & Booboo',2,'',6,'2012-04-06 00:00:00',NULL,NULL,0,'2012-04-06 14:07:51','2012-04-06 14:15:08',NULL,NULL,NULL,'bunkie-booboo'),(8,'id Software',3,'Id Software LLC is an American video game development company with its headquarters in Richardson, Texas. The company was founded in 1991 by four members of the computer company Softdisk: programmers John Carmack and John Romero, game designer Tom Hall, and artist Adrian Carmack (no relation to John Carmack). Business manager Jay Wilbur was also involved.[2]',7,'1991-02-01 00:00:00',NULL,NULL,1,'2012-04-06 14:09:38','2012-04-06 14:12:57','Wikipedia','http://en.wikipedia.org/wiki/Id_Software',NULL,'id-software'),(9,'Toy Story Released on Laser Disk',4,'Celebrating the best way to enjoy this timeless film, the release of Toy Story on laser disk gave fans a premier viewing experience. ',3,'1952-07-16 00:00:00','1964-07-07 00:00:00',NULL,1,'2012-04-06 14:12:47','2012-04-06 14:19:35',NULL,NULL,NULL,'toy-story-released-on-laser-disk'),(10,'MCA DiscoVision Inc.',3,'DiscoVision is the name of several things related to the video laserdisc format.\r\nIt was the original name of the \"Reflective Optical Videodisc System\" format later known as LaserVision or LaserDisc.\r\nMCA DiscoVision Inc. was a division of entertainment giant MCA, established in 1969 to develop and sell an optical videodisc system. MCA released discs pressed in Carson and Costa Mesa, California on the DiscoVision label from the format\'s Atlanta, Georgia launch in 1978 to 1982 and the release of the film, The Four Seasons. DiscoVision titles included films from Universal Studios, Warner Bros. Pictures, Paramount, and Disney. Agreements were made with Columbia Pictures and United Artists, though no discs were released on the DiscoVision label from either studio. Most of these companies later established their own labels for the format, the first being Paramount with a dozen movies released on the Paramount Home Video label in the summer of 1981.\r\nThe successor to MCA DiscoVision, Discovision Associates (DVA) was the result of a partnership between IBM and MCA. It was hoped that the merger would provide the basis for improvement of the quality of DiscoVision pressings, but no appreciable improvement ever took hold. In 1981, responsib',3,'1978-04-01 00:00:00',NULL,NULL,1,'2012-04-06 14:21:41','2012-04-06 14:21:41','','',NULL,'mca-discovision-inc'),(11,'John Carmack',1,'John D. Carmack II (born August 20, 1970) is an American game programmer and the co-founder of id Software. Carmack was the lead programmer of the id computer games Commander Keen, Wolfenstein 3D, Doom, Quake, Rage and their sequels.\r\nCarmack is best known for his innovations in 3D graphics, and is also a rocketry enthusiast and the founder and lead engineer of Armadillo Aerospace as well as a Martial Artist in the study of Brazilian Jiu Jitsu.\r\nHe has pioneered or popularised the use of many techniques in computer graphics, including \"adaptive tile refresh\" for Commander Keen, raycasting for Hovertank 3-D, Catacomb 3-D, and Wolfenstein 3-D, binary space partitioning which Doom became the first game to use, surface caching which he invented for Quake, Carmack\'s Reverse (formally known as z-fail stencil shadows) which he devised for Doom 3, and MegaTexture technology, first used in Enemy Territory: Quake Wars.  He is widely known for his graphic programming prowess.',7,'1970-08-20 00:00:00',NULL,NULL,1,'2012-04-06 14:30:56','2012-04-06 14:34:05','Wikipedia','http://en.wikipedia.org/wiki/John_D._Carmack',NULL,'john-carmack'),(12,'Delete Me',2,'',4,NULL,NULL,NULL,0,'2012-04-09 13:03:56','2012-04-09 13:03:56','','',NULL,'delete-me'),(13,'Brian',1,'dkdkdkdkdkdk',1,'2012-04-18 00:00:00',NULL,NULL,0,'2012-04-09 22:19:35','2012-04-09 22:19:35','','','','brian'),(14,'Brian, Inc.',3,'kddjfkdlfdsjklf',1,'2012-04-10 00:00:00',NULL,NULL,0,'2012-04-09 22:20:04','2012-04-09 22:20:04','','','','brian-inc'),(15,'thihng:,,0 // -',3,'',3,NULL,NULL,NULL,1,'2012-04-10 14:23:59','2012-04-10 14:42:27',NULL,NULL,'','thihng0-'),(16,'Evans & Sutherland',3,'Evans & Sutherland (NASDAQ: ESCC) is a computer firm involved in the computer graphics field. Their products are used primarily by the military and large industrial firms for training and simulation, and in digital projection environments like planetariums.\r\nThe company was founded in 1968 by David Evans and Ivan Sutherland, professors in the Computer Science Department at the University of Utah.\r\nThe two professors were pioneers in computer graphics technology. They formed the company to produce hardware to run the systems being developed in the University, working from an abandoned barracks on the university grounds. The company was later housed in the University of Utah Research Park. Most of the employees were active or former students, and included Jim Clark, who started Silicon Graphics, Ed Catmull, co-founder of Pixar, and John Warnock of Adobe.',7,NULL,NULL,NULL,1,'2012-04-10 14:53:48','2012-04-10 14:53:48','Wikipedia','http://en.wikipedia.org/wiki/Evans_and_Sutherland','http://www.es.com','evans-sutherland'),(17,'Edwin Catmull',1,'Edwin Earl Catmull, Ph.D. (born 1945) is a computer scientist and current president of Walt Disney Animation Studios and Pixar Animation Studios. As a computer scientist, Catmull has contributed to many important developments in computer graphics.',7,NULL,NULL,NULL,1,'2012-04-10 14:59:15','2012-04-10 14:59:15','Wikipedia','http://en.wikipedia.org/wiki/Catmull','','edwin-catmull'),(18,'RenderMan',2,'RenderMan is both a software and an application programming interface (API) for network distributed rendering of complex and potentially ray-traced three dimensional views, employing a render farm of many client computers. The clients do not require 3D graphics cards, but may benefit from them if they are available.',7,NULL,NULL,NULL,1,'2012-04-10 15:12:26','2012-04-10 15:12:26','Wikipedia','http://en.wikipedia.org/wiki/RenderMan','','renderman'),(19,'This is a really long event title just to test out things',4,'this is the way i live',4,NULL,NULL,NULL,1,'2012-04-12 21:11:08','2012-04-12 21:11:10',NULL,NULL,'','this-is-a-really-long-event-title-just-to-test-out-things'),(20,'',2,'A large portion of \"Homer3\" was three dimensional and computer animated. Supervising director David Silverman was aiming for something better than the computer animation used in the music video for \"Money for Nothing\" by Dire Straits.[8] The animation was provided by Pacific Data Images (PDI). The animators at PDI worked closely with the normal animators on The Simpsons and worked hard not to \"reinvent the character[s]\". The Simpsons animators storyboarded the segments and showed the PDI animators how they would have handled the scenes. While designing the 3D model of Bart, the animators did not know how they would show Bart\'s hair. However, they realized that there were vinyl Bart dolls in production and purchased one to use as a model. One of the most difficult parts for the PDI animators was to make Homer and Bart move properly without making them look robotic.[7]\r\nOne of the key shots in the segment was where Homer steps into the 3D world and his design transitions into 3D. Bill Oakley considers the shot the \"money shot\" and had a difficult time communicating his idea to the animators.[7]',3,'1995-10-29 00:00:00',NULL,NULL,1,'2012-04-13 15:02:01','2012-04-13 15:02:01','Wikipedia','http://en.wikipedia.org/wiki/Treehouse_of_Horror_VI','','');
/*!40000 ALTER TABLE `entries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries_stories`
--

DROP TABLE IF EXISTS `entries_stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries_stories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `story_id` int(11) unsigned NOT NULL,
  `user_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `story_id` (`story_id`),
  CONSTRAINT `entries_stories_ibfk_1` FOREIGN KEY (`story_id`) REFERENCES `stories` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries_stories`
--

LOCK TABLES `entries_stories` WRITE;
/*!40000 ALTER TABLE `entries_stories` DISABLE KEYS */;
INSERT INTO `entries_stories` VALUES (1,1,1,1),(2,1,2,1),(3,1,3,1),(4,2,4,4),(5,3,5,3),(6,3,6,1),(7,2,7,4),(8,2,8,4),(9,5,9,3),(10,5,10,3),(11,2,11,5),(12,3,12,3),(14,7,14,6),(15,9,15,3),(16,8,16,7),(17,1,17,8);
/*!40000 ALTER TABLE `entries_stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entries_tags`
--

DROP TABLE IF EXISTS `entries_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entries_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entries_tags`
--

LOCK TABLES `entries_tags` WRITE;
/*!40000 ALTER TABLE `entries_tags` DISABLE KEYS */;
INSERT INTO `entries_tags` VALUES (3,1,1),(4,1,2),(15,3,6),(16,3,7),(19,4,8),(20,4,9),(34,5,10),(35,5,11),(36,2,3),(37,2,4),(38,2,5),(55,8,15),(56,8,16),(57,7,13),(58,7,2),(59,7,14),(60,9,17),(61,9,18),(62,9,7),(63,10,19),(64,10,20),(65,10,21),(68,11,15),(69,11,22),(70,12,23),(72,6,2),(73,13,24),(74,13,16),(75,14,25),(76,14,26),(78,15,27),(79,16,16),(80,16,28),(81,17,7),(82,17,16),(83,18,16),(84,18,29),(85,18,30),(87,19,31),(88,20,32),(89,20,33),(90,20,34),(91,20,35);
/*!40000 ALTER TABLE `entries_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `entry_tags`
--

DROP TABLE IF EXISTS `entry_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `entry_tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `tag_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tag_id` (`tag_id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `entry_tags`
--

LOCK TABLES `entry_tags` WRITE;
/*!40000 ALTER TABLE `entry_tags` DISABLE KEYS */;
INSERT INTO `entry_tags` VALUES (1,1,1),(2,1,2);
/*!40000 ALTER TABLE `entry_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups`
--

DROP TABLE IF EXISTS `groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `groups` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups`
--

LOCK TABLES `groups` WRITE;
/*!40000 ALTER TABLE `groups` DISABLE KEYS */;
INSERT INTO `groups` VALUES (1,'admins','2012-02-03 16:05:42','2012-02-03 16:06:05'),(2,'users','2012-02-03 16:06:11','2012-02-03 16:06:11');
/*!40000 ALTER TABLE `groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `likes`
--

DROP TABLE IF EXISTS `likes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `likes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(50) NOT NULL,
  `foreign_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `likes`
--

LOCK TABLES `likes` WRITE;
/*!40000 ALTER TABLE `likes` DISABLE KEYS */;
/*!40000 ALTER TABLE `likes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `locations` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `city` varchar(30) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `country` varchar(30) NOT NULL DEFAULT '',
  `latitude` float(10,6) DEFAULT NULL,
  `longitude` float(10,6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `locations`
--

LOCK TABLES `locations` WRITE;
/*!40000 ALTER TABLE `locations` DISABLE KEYS */;
/*!40000 ALTER TABLE `locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sources`
--

DROP TABLE IF EXISTS `sources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sources` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(180) NOT NULL DEFAULT '',
  `url` varchar(300) NOT NULL DEFAULT '',
  `entry_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sources`
--

LOCK TABLES `sources` WRITE;
/*!40000 ALTER TABLE `sources` DISABLE KEYS */;
/*!40000 ALTER TABLE `sources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stories`
--

DROP TABLE IF EXISTS `stories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stories`
--

LOCK TABLES `stories` WRITE;
/*!40000 ALTER TABLE `stories` DISABLE KEYS */;
INSERT INTO `stories` VALUES (1,'Logo',2,NULL,NULL,'http://www.solarnavigator.net/films_movies_actors/film_images/Pixar_animation_studios_logo.jpg',NULL,NULL,1,'2012-03-26 17:36:27','2012-03-26 17:36:27',NULL,NULL),(2,'Toy Story 3 - Process',2,NULL,NULL,'http://www.wired.com/magazine/wp-content/images/18-06/process_pixar4b_f.jpg',NULL,NULL,1,'2012-03-26 17:40:14','2012-03-26 17:40:16',NULL,NULL),(3,'Toy Story 3 Behind The Scenes',1,NULL,NULL,'http://www.youtube.com/watch?v=0qGlL3J1ZKQ&feature=related','0qGlL3J1ZKQ',NULL,1,'2012-03-26 17:42:17','2012-03-26 17:42:17',NULL,NULL),(4,'Delete me!',3,'2012-03-26 00:00:00','asdf',NULL,NULL,NULL,1,'2012-03-27 00:32:18','2012-03-27 00:32:26',NULL,NULL),(5,'Toy Story',2,NULL,NULL,'http://uploads.neatorama.com/wp-content/uploads/2010/07/poster.jpg',NULL,NULL,1,'2012-03-27 13:41:30','2012-03-27 13:41:30',NULL,NULL),(6,'Toy Story 3 Making Of',1,NULL,NULL,'http://www.youtube.com/watch?v=UC2HLHDuRTc','UC2HLHDuRTc',NULL,1,'2012-03-27 13:47:38','2012-03-27 13:47:38',NULL,NULL),(7,'cat thing',2,NULL,NULL,'http://laughingsquid.com/wp-content/uploads/BOBCAT-ON-CACTUS_20110406163659_640_480.jpg',NULL,NULL,1,'2012-03-27 14:10:26','2012-03-27 15:22:57',NULL,NULL),(8,'Kitty Purry',1,NULL,NULL,'http://www.youtube.com/watch?v=uuwfgXD8qV8','uuwfgXD8qV8',NULL,1,'2012-03-27 14:11:09','2012-03-27 15:23:01',NULL,NULL),(9,'Family Photo',2,NULL,NULL,'http://cdn1.lostateminor.com/wp-content/uploads/2012/03/bio-phytoplankton.jpg',NULL,NULL,1,'2012-03-27 15:01:07','2012-03-27 15:01:10',NULL,NULL),(10,'Another Family Photo',2,NULL,NULL,'http://cdn2.lostateminor.com/wp-content/uploads/2012/03/bio-phytoplankton2.jpg',NULL,NULL,1,'2012-03-27 15:01:38','2012-03-27 15:01:39',NULL,NULL),(11,'Treats',2,NULL,NULL,'http://www.gourmetsleuth.com/images/dog-treats.jpg',NULL,NULL,1,'2012-03-27 15:27:02','2012-03-27 15:27:11',NULL,NULL),(12,'Buzz lightyear kicked off set after violent rampage',3,'1996-02-08 00:00:00','Laser was switched from stun to kill...',NULL,NULL,5,1,'2012-04-06 13:49:41','2012-04-06 13:49:41','',''),(14,'blah',2,NULL,NULL,'http://www.siggraph.org/publications/video-review/SIG98/large/Img0039.GIF',NULL,NULL,1,'2012-04-06 14:15:26','2012-04-06 14:17:46',NULL,NULL),(15,'The Declaration of Independence is a really long story about how historyofcg.com needs to find some ',3,'2014-01-16 00:00:00','When in the Course of human events it becomes necessary for one people to dissolve the political bands which have connected them with another and to assume among the powers of the earth, the separate and equal station to which the Laws of Nature and of Nature\'s God entitle them, a decent respect to the opinions of mankind requires that they should declare the causes which impel them to the separation.\n\nWe hold these truths to be self-evident, that all men are created equal, that they are endowed by their Creator with certain unalienable Rights, that among these are Life, Liberty and the pursuit of Happiness. â€” That to secure these rights, Governments are instituted among Men, deriving their just powers from the consent of the governed, â€” That whenever any Form of Government becomes destructive of these ends, it is the Right of the People to alter or to abolish it, and to institute new Government, laying its foundation on such principles and organizing its powers in such form, as to them shall seem most likely to effect their Safety and Happiness. Prudence, indeed, will dictate that Governments long established should not be changed for light and transient causes; and accordingly all experience hath shewn that mankind are more disposed to suffer, while evils are sufferable than to right themselves by abolishing the forms to which they are accustomed. But when a long train of abuses and usurpations, pursuing invariably the same Object evinces a design to reduce them under absolute Despotism, it is their right, it is their duty, to throw off such Government, and to provide new Guards for their future security. â€” Such has been the patient sufferance of these Colonies; and such is now the necessity which constrains them to alter their former Systems of Government. The history of the present King of Great Britain is a history of repeated injuries and usurpations, all having in direct object the establishment of an absolute Tyranny over these States. To prove this, let Facts be submitted to a candid world.\n\nHe has refused his Assent to Laws, the most wholesome and necessary for the public good.\n\nHe has forbidden his Governors to pass Laws of immediate and pressing importance, unless suspended in their operation till his Assent should be obtained; and when so suspended, he has utterly neglected to attend to them.\n\nHe has refused to pass other Laws for the accommodation of large districts of people, unless those people would relinquish the right of Representation in the Legislature, a right inestimable to them and formidable to tyrants only.\n\nHe has called together legislative bodies at places unusual, uncomfortable, and distant from the depository of their Public Records, for the sole purpose of fatiguing them into compliance with his measures.\n\nHe has dissolved Representative Houses repeatedly, for opposing with manly firmness his invasions on the rights of the people.\n\nHe has refused for a long time, after such dissolutions, to cause others to be elected, whereby the Legislative Powers, incapable of Annihilation, have returned to the People at large for their exercise; the State remaining in the mean time exposed to all the dangers of invasion from without, and convulsions within.\n\nHe has endeavoured to prevent the population of these States; for that purpose obstructing the Laws for Naturalization of Foreigners; refusing to pass others to encourage their migrations hither, and raising the conditions of new Appropriations of Lands.\n\nHe has obstructed the Administration of Justice by refusing his Assent to Laws for establishing Judiciary Powers.\n\nHe has made Judges dependent on his Will alone for the tenure of their offices, and the amount and payment of their salaries.\n\nHe has erected a multitude of New Offices, and sent hither swarms of Officers to harass our people and eat out their substance.\n\nHe has kept among us, in times of peace, Standing Armies without the Consent of our legislatures.\n\nHe has affected to render the Mil',NULL,NULL,NULL,1,'2012-04-06 14:17:18','2012-04-10 15:04:19','The declaration of independence',''),(16,'id Sold to ZeniMax Media',3,'2009-06-24 00:00:00','On June 24, 2009, ZeniMax Media acquired the company.',NULL,NULL,NULL,1,'2012-04-06 14:18:29','2012-04-06 14:18:29','Wikipedia','http://en.wikipedia.org/wiki/Id_Software'),(17,'Testing',3,'2012-10-03 00:00:00','Kyle is testing the carousel for stories.',NULL,NULL,NULL,1,'2012-10-04 22:42:01','2012-10-04 22:42:01','','');
/*!40000 ALTER TABLE `stories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story_types`
--

DROP TABLE IF EXISTS `story_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story_types` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story_types`
--

LOCK TABLES `story_types` WRITE;
/*!40000 ALTER TABLE `story_types` DISABLE KEYS */;
INSERT INTO `story_types` VALUES (1,'Video'),(2,'Image'),(3,'Text');
/*!40000 ALTER TABLE `story_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT '',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'pixar',1),(2,'animation',1),(3,'designer',1),(4,'developer',1),(5,'lulz',1),(6,'Animated Film',1),(7,'Pixar',1),(8,'Production Company',1),(9,'Distributor',1),(10,'Bioluminescent',1),(11,'Phytoplankton',1),(12,'blah',1),(13,'short film',1),(14,'ILM',1),(15,'games',1),(16,'graphics',1),(17,'Obsolete media',1),(18,'Animation',1),(19,'Laserdisk',1),(20,'Technology',1),(21,'Film',1),(22,'programmer',1),(23,'da',1),(24,'person',1),(25,'sowow',1),(26,'dkdk',1),(27,'tag',1),(28,'Ed Catmull',1),(29,'rendering',1),(30,'distributed computing',1),(31,'',1),(32,'Simpsons',1),(33,'Tron',1),(34,'Pacific Data Images',1),(35,'Utah Teapot',1);
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Stefano','DAmico','skdamico@gmail.com','bdce34a7ebf9168350c36c492fc1d4c3d9ca016c',2,'2012-02-16 17:55:02','2012-02-16 17:55:02'),(2,'Terrence','Masson','tman@visualfx.com','d9b1ed39f24a2702f99d5f980497f457800a11db',2,'2012-02-17 13:41:49','2012-02-17 13:41:49'),(3,'James','Staub','james.staub@gmail.com','cef8e2b97286ff42f1bf9d44e1d5620771b75fbe',2,'2012-02-17 13:44:03','2012-02-17 13:44:03'),(4,'Connie','Chan','hello.cchan@gmail.com','2c3cdee62e2513157421032de8921c334ae240b6',2,'2012-02-20 20:33:12','2012-02-20 20:33:12'),(5,'Michelle','Gayowski','michelle.gayowski@gmail.com','2c3cdee62e2513157421032de8921c334ae240b6',2,'2012-03-27 15:25:48','2012-03-27 15:25:48'),(6,'Terrence','Masson','test@visualfx.com','d6969a333625258e8c282224c28537353c93e829',2,'2012-04-06 13:48:57','2012-04-06 13:48:57'),(7,'Brian','Sullivan','bri.sullivan@neu.edu','e67da7e6db6b1a999812c99ad421c673408fe953',2,'2012-04-06 14:06:53','2012-04-06 14:06:53'),(8,'Kyle','Montag','montag.k@husky.neu.edu','3e18f26a16c24b244fe9a275faddc1b50e35c51e',2,'2012-06-23 14:09:33','2012-06-23 14:09:33'),(9,'Mike','Godlewski','mikegodlewski@gmail.com','ca0ec69659c28f32db0ff1a2c6c5bb0234695399',2,'2012-06-25 18:56:57','2012-06-25 18:56:57');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `views`
--

DROP TABLE IF EXISTS `views`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `views` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `table_id` int(11) unsigned NOT NULL,
  `table_name` varchar(15) NOT NULL DEFAULT '',
  `count` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `views`
--

LOCK TABLES `views` WRITE;
/*!40000 ALTER TABLE `views` DISABLE KEYS */;
/*!40000 ALTER TABLE `views` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-12-21 17:55:05
