-- MySQL dump 10.13  Distrib 5.6.24, for linux-glibc2.5 (x86_64)
--
-- Host: localhost    Database: oe_crossworld
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.20-MariaDB

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
-- Table structure for table `crossworld_levels`
--

DROP TABLE IF EXISTS `crossworld_levels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crossworld_levels` (
  `level` int(11) NOT NULL,
  `xpos` int(11) DEFAULT NULL,
  `ypos` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`level`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crossworld_levels`
--

LOCK TABLES `crossworld_levels` WRITE;
/*!40000 ALTER TABLE `crossworld_levels` DISABLE KEYS */;
INSERT INTO `crossworld_levels` VALUES (1,360,360,'Brazil'),(2,841,227,'China'),(3,935,406,'Australia'),(4,530,164,'England');
/*!40000 ALTER TABLE `crossworld_levels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crossworld_qbank`
--

DROP TABLE IF EXISTS `crossworld_qbank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crossworld_qbank` (
  `qno` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `type` varchar(20) NOT NULL,
  `data` text,
  `image` varchar(45) DEFAULT NULL,
  `answer` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crossworld_qbank`
--

LOCK TABLES `crossworld_qbank` WRITE;
/*!40000 ALTER TABLE `crossworld_qbank` DISABLE KEYS */;
INSERT INTO `crossworld_qbank` VALUES (1,1,'jigsaw','The mesmerizing view from your hotel room leaves you speechless. Along with the morning breakfast, the hotel offered you a jigsaw puzzle. Solve the jigsaw.',NULL,NULL),(2,1,'question','q2.html',NULL,'Titanium'),(3,1,'question','q3.html',NULL,'Echo sounder'),(4,1,'question','q4.html',NULL,'10:09'),(5,1,'question','q5.html',NULL,'Cerrado'),(6,1,'question','q6.html',NULL,'20'),(7,1,'question','q7.html','planoinclinado.png','8'),(1,2,'jigsaw','W&egrave;nh&ograve;u!!! Welcome to China. You need a room for your stay in China with a condition that it is near to the office of an MNC where you have a meeting the next day. Solve the jigsaw and name the building.',NULL,NULL),(2,2,'question','q2.html',NULL,'140'),(3,2,'question','q3.html',NULL,'I am a series of fortifications made of stone brick tamped earth wood'),(4,2,'question','q4.html',NULL,'Mount Paektu'),(5,2,'question','q5.html',NULL,'17'),(6,2,'question','q6.html','fafb.png','-5206,10778'),(7,2,'question','q7.html',NULL,'Ethylene tetrafluoroethylene'),(1,3,'jigsaw','On the first day of your visit, you were taking a boat ride to explore the city, you notice a magnificent building. Solve the jigsaw.',NULL,NULL),(2,3,'question','q2.html',NULL,'uluru, ayers rock'),(3,3,'question','q3.html',NULL,'3'),(4,3,'question','q4.html',NULL,'50'),(5,3,'question','q5.html',NULL,'Treasure'),(6,3,'question','q6.html','bridge.png','372,53'),(7,3,'question','q7.html',NULL,'31'),(1,4,'jigsaw','On arriving at London (United Kingdom), you decide to explore the city with a red bus city tour. Along with the bus ticket you receive a jigsaw puzzle. To move ahead solve the jigsaw puzzle.',NULL,NULL),(2,4,'question','q2.html','centroid.png','4,5'),(3,4,'question','q3.html',NULL,'12,9O2,6'),(4,4,'question','q4.html',NULL,'12:46'),(5,4,'question','q5.html',NULL,'Graveyard'),(6,4,'question','q6.html',NULL,'Cross Staff'),(7,4,'question','q7.html',NULL,'4198');
/*!40000 ALTER TABLE `crossworld_qbank` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crossworld_users`
--

DROP TABLE IF EXISTS `crossworld_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crossworld_users` (
  `username` varchar(50) NOT NULL,
  `level` int(11) NOT NULL,
  `question` int(11) DEFAULT NULL,
  `completed` binary(1) DEFAULT '0',
  `partialCompleted` binary(1) DEFAULT '0',
  `time` int(12) NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`time`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crossworld_users`
--

LOCK TABLES `crossworld_users` WRITE;
/*!40000 ALTER TABLE `crossworld_users` DISABLE KEYS */;
INSERT INTO `crossworld_users` VALUES ('dummy',3,7,'0','0',0),('kj',4,7,'0','1',1443527195);
/*!40000 ALTER TABLE `crossworld_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-09-29 17:27:59
