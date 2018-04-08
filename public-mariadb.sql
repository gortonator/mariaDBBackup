-- MySQL dump 10.16  Distrib 10.2.13-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: AlignPublic
-- ------------------------------------------------------
-- Server version	10.2.13-MariaDB-10.2.13+maria~jessie

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
-- Table structure for table `MultipleValueAggregatedData`
--

DROP TABLE IF EXISTS `MultipleValueAggregatedData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MultipleValueAggregatedData` (
  `AnalyticTerm` varchar(255) NOT NULL,
  `AnalyticKey` varchar(255) NOT NULL,
  `AnalyticValue` int(11) DEFAULT 0,
  PRIMARY KEY (`AnalyticTerm`,`AnalyticKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MultipleValueAggregatedData`
--

LOCK TABLES `MultipleValueAggregatedData` WRITE;
/*!40000 ALTER TABLE `MultipleValueAggregatedData` DISABLE KEYS */;
INSERT INTO `MultipleValueAggregatedData` VALUES ('ListOfBachelorDegrees','Art',12),('ListOfBachelorDegrees','Baking',1),('ListOfBachelorDegrees','Biological Sciences',17),('ListOfBachelorDegrees','Business',10),('ListOfBachelorDegrees','Chemistry',14),('ListOfBachelorDegrees','Computer Science',14),('ListOfBachelorDegrees','Economics',10),('ListOfBachelorDegrees','Education',16),('ListOfBachelorDegrees','Electronics',17),('ListOfBachelorDegrees','Finance',11),('ListOfBachelorDegrees','History',5),('ListOfBachelorDegrees','Law',11),('ListOfBachelorDegrees','Mathematics',4),('ListOfBachelorDegrees','Medicine',24),('ListOfBachelorDegrees','Modern Languages',14),('ListOfBachelorDegrees','Pharmacy',13),('ListOfBachelorDegrees','Politics',19),('ListOfBachelorDegrees','Psychology',24),('ListOfBachelorDegrees','Social Policy',12),('ListOfDegrees','BACHELORS',248),('ListOfDegrees','MASTERS',100),('ListOfDegrees','PHD',7),('ListOfEmployers','Allen Institute',11),('ListOfEmployers','Amazon',4),('ListOfEmployers','ARL',5),('ListOfEmployers','Concur',7),('ListOfEmployers','Expedia',8),('ListOfEmployers','Facebook',3),('ListOfEmployers','Google',7),('ListOfEmployers','Microsoft',8),('ListOfEmployers','Nordstorm',8),('ListOfEmployers','PNNL',7),('ListOfEmployers','Providence',14),('ListOfEmployers','SalesForce',9),('ListOfEmployers','SAP',7),('ListOfEmployers','WayFair',7),('ListOfEmployers','Zillow',10),('ListOfRaces','African American',89),('ListOfRaces','Asian',94),('ListOfRaces','Black',3),('ListOfRaces','Hispanic',75),('ListOfRaces','white',99),('ListOfStudentsStates','CA',33),('ListOfStudentsStates','MA',148),('ListOfStudentsStates','NC',23),('ListOfStudentsStates','WA',153);
/*!40000 ALTER TABLE `MultipleValueAggregatedData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SingleValueAggregatedData`
--

DROP TABLE IF EXISTS `SingleValueAggregatedData`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SingleValueAggregatedData` (
  `AnalyticKey` varchar(255) NOT NULL,
  `AnalyticValue` int(11) DEFAULT 0,
  PRIMARY KEY (`AnalyticKey`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SingleValueAggregatedData`
--

LOCK TABLES `SingleValueAggregatedData` WRITE;
/*!40000 ALTER TABLE `SingleValueAggregatedData` DISABLE KEYS */;
INSERT INTO `SingleValueAggregatedData` VALUES ('TotalCurrentStudents',361),('TotalFemaleStudents',188),('TotalFullTimeStudents',358),('TotalGraduatedStudents',47),('TotalMaleStudents',173),('TotalPartTimeStudents',3),('TotalStudents',408),('TotalStudentsDroppedOut',0),('TotalStudentsGotJob',115),('TotalStudentsInBoston',150),('TotalStudentsInCharlotte',23),('TotalStudentsInSeattle',155),('TotalStudentsInSiliconValley',33),('TotalStudentsWithScholarship',52);
/*!40000 ALTER TABLE `SingleValueAggregatedData` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Students`
--

DROP TABLE IF EXISTS `Students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Students` (
  `PublicId` int(11) NOT NULL,
  `GraduationYear` int(11) DEFAULT NULL,
  `VisibleToPubilc` tinyint(1) DEFAULT 1,
  PRIMARY KEY (`PublicId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Students`
--

LOCK TABLES `Students` WRITE;
/*!40000 ALTER TABLE `Students` DISABLE KEYS */;
INSERT INTO `Students` VALUES (0,2020,1),(6,2017,1),(7,2019,1),(8,2019,1),(9,2019,1),(10,2020,1),(11,2019,1),(12,2018,1),(13,2019,1),(14,2020,1),(15,2018,1),(16,2018,1),(17,2019,1),(18,2020,1),(19,2019,1),(20,2018,1),(21,2017,1),(22,2018,1),(23,2019,1),(24,2020,1),(25,2017,1),(26,2018,1),(27,2017,1),(28,2019,1),(29,2019,1),(30,2019,1),(31,2019,1),(32,2020,1),(33,2020,1),(34,2020,1),(35,2020,1),(36,2018,1),(37,2020,1),(38,2020,1),(39,2017,1),(40,2018,1),(41,2017,1),(42,2019,1),(43,2020,1),(44,2017,1),(45,2017,1),(46,2020,1),(47,2017,1),(48,2020,1),(49,2019,1),(50,2020,1),(51,2018,1),(52,2018,1),(53,2019,1),(54,2019,1),(55,2020,1),(56,2019,1),(57,2020,1),(58,2018,1),(59,2018,1),(60,2020,1),(61,2018,1),(62,2020,1),(63,2018,1),(64,2018,1),(65,2018,1),(66,2018,1),(67,2017,1),(68,2019,1),(69,2019,1),(70,2018,1),(71,2017,1),(72,2020,1),(73,2017,1),(74,2019,1),(75,2019,1),(76,2018,1),(77,2020,1),(78,2017,1),(79,2018,1),(80,2020,1),(81,2019,1),(82,2017,1),(83,2020,1),(84,2018,1),(85,2018,1),(86,2017,1),(87,2020,1),(88,2019,1),(89,2017,1),(90,2019,1),(91,2020,1),(92,2019,1),(93,2020,1),(94,2017,1),(95,2019,1),(96,2018,1),(97,2017,1),(98,2019,1),(99,2018,1),(100,2019,1),(101,2019,1),(102,2020,1),(103,2018,1),(104,2017,1),(105,2020,1),(106,2020,1),(107,2018,1),(108,2019,1),(109,2019,1),(110,2017,1),(111,2019,1),(112,2020,1),(113,2020,1),(114,2019,1),(115,2019,1),(116,2019,1),(117,2019,1),(118,2017,1),(119,2017,1),(120,2018,1),(121,2020,1),(122,2020,1),(123,2018,1),(124,2020,1),(125,2019,1),(126,2017,1),(127,2020,1),(128,2019,1),(129,2017,1),(130,2019,1),(131,2019,1),(132,2019,1),(133,2018,1),(134,2020,1),(135,2020,1),(136,2020,1),(137,2018,1),(138,2018,1),(139,2018,1),(140,2019,1),(141,2020,1),(142,2018,1),(143,2019,1),(144,2017,1),(145,2019,1),(146,2020,1),(147,2017,1),(148,2019,1),(149,2020,1),(150,2020,1),(151,2019,1),(152,2019,1),(153,2020,1),(154,2019,1),(155,2019,1),(156,2020,1),(157,2019,1),(158,2017,1),(159,2020,1),(160,2018,1),(161,2019,1),(162,2018,1),(163,2019,1),(164,2020,1),(165,2017,1),(166,2019,1),(167,2018,1),(168,2020,1),(169,2020,1),(170,2020,1),(171,2019,1),(172,2017,1),(173,2019,1),(174,2020,1),(175,2020,1),(176,2020,1),(177,2017,1),(178,2018,1),(179,2019,1),(180,2018,1),(181,2020,1),(182,2019,1),(183,2018,1),(184,2019,1),(185,2019,1),(186,2020,1),(187,2019,1),(188,2018,1),(189,2020,1),(190,2019,1),(191,2019,1),(192,2020,1),(193,2019,1),(194,2020,1),(195,2019,1),(196,2018,1),(197,2020,1),(198,2020,1),(199,2020,1),(200,2019,1),(201,2020,1),(202,2019,1),(203,2018,1),(204,2017,1),(205,2018,1),(206,2019,1),(207,2020,1),(208,2020,1),(209,2019,1),(210,2017,1),(211,2020,1),(212,2018,1),(213,2020,1),(214,2017,1),(215,2019,1),(216,2017,1),(217,2020,1),(218,2018,1),(219,2020,1),(220,2020,1),(221,2020,1),(222,2019,1),(223,2020,1),(224,2020,1),(225,2019,1),(226,2020,1),(227,2019,1),(228,2020,1),(229,2018,1),(230,2020,1),(231,2020,1),(232,2018,1),(233,2018,1),(234,2020,1),(235,2018,1),(236,2020,1),(237,2019,1),(238,2020,1),(239,2020,1),(240,2019,1),(241,2020,1),(242,2020,1),(243,2020,1),(244,2019,1),(245,2018,1),(246,2020,1),(247,2019,1),(248,2019,1),(249,2020,1),(250,2019,1),(251,2020,1),(252,2019,1),(253,2019,1),(254,2020,1),(255,2020,1),(256,2018,1),(257,2019,1),(258,2020,1),(259,2020,1),(260,2020,1),(261,2020,1),(262,2020,1),(263,2019,1),(264,2019,1),(265,2020,1),(266,2017,1),(267,2019,1),(268,2020,1),(269,2017,1),(270,2019,1),(271,2018,1),(272,2020,1),(273,2018,1),(274,2017,1),(275,2020,1),(276,2019,1),(277,2020,1),(278,2018,1),(279,2020,1),(280,2018,1),(281,2020,1),(282,2017,1),(283,2020,1),(284,2020,1),(285,2019,1),(286,2019,1),(287,2018,1),(288,2018,1),(289,2020,1),(290,2017,1),(291,2019,1),(292,2017,1),(293,2020,1),(294,2020,1),(295,2018,1),(296,2019,1),(297,2020,1),(298,2020,1),(299,2019,1),(300,2019,1),(301,2019,1),(302,2020,1),(303,2018,1),(304,2020,1),(305,2018,1),(306,2020,1),(307,2020,1),(308,2019,1),(309,2019,1),(310,2020,1),(311,2018,1),(312,2020,1),(313,2020,1),(314,2019,1),(315,2017,1),(316,2019,1),(317,2019,1),(318,2020,1),(319,2020,1),(320,2019,1),(321,2020,1),(322,2019,1),(323,2020,1),(324,2020,1),(325,2020,1),(326,2018,1),(327,2017,1),(328,2019,1),(329,2019,1),(330,2018,1),(331,2018,1),(332,2019,1),(333,2018,1),(334,2018,1),(335,2020,1),(336,2020,1),(337,2019,1),(338,2018,1),(339,2020,1),(340,2020,1),(341,2018,1),(342,2019,1),(343,2020,1),(344,2018,1),(345,2017,1),(346,2019,1),(347,2019,1),(348,2018,1),(349,2018,1),(350,2020,1),(351,2020,1),(352,2020,1),(353,2018,1),(354,2020,1),(355,2020,1),(356,2019,1),(357,2017,1),(358,2018,1),(359,2019,1),(360,2019,1),(361,2020,1),(362,2020,1),(363,2020,1),(364,2017,1),(365,2020,1),(366,2017,1),(367,2020,1),(368,2019,1),(369,2020,1),(370,2020,1),(371,2019,1),(372,2020,1),(373,2019,1),(374,2020,1),(375,2019,1),(376,2019,1),(377,2020,1),(378,2018,1),(379,2019,1),(380,2019,1),(381,2019,1),(382,2019,1),(383,2018,1),(384,2018,1),(385,2017,1),(386,2020,1),(387,2019,1),(388,2020,1),(389,2019,1),(390,2019,1),(391,2020,1),(392,2020,1),(393,2018,1),(394,2019,1),(395,2019,1),(396,2020,1),(397,2020,1),(398,2020,1),(399,2020,1),(400,2019,1),(401,2019,1),(402,2018,1),(403,2020,1),(404,2020,1),(405,2018,1);
/*!40000 ALTER TABLE `Students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Undergraduates`
--

DROP TABLE IF EXISTS `Undergraduates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Undergraduates` (
  `UndergraduateId` int(11) NOT NULL AUTO_INCREMENT,
  `PublicId` int(11) DEFAULT NULL,
  `UndergradDegree` varchar(255) DEFAULT NULL,
  `UndergradSchool` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`UndergraduateId`),
  UNIQUE KEY `uq_Undergraduates_Undergraduate` (`PublicId`,`UndergradDegree`,`UndergradSchool`),
  CONSTRAINT `fk_Undergraduates_PublicId` FOREIGN KEY (`PublicId`) REFERENCES `Students` (`PublicId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Undergraduates`
--

LOCK TABLES `Undergraduates` WRITE;
/*!40000 ALTER TABLE `Undergraduates` DISABLE KEYS */;
INSERT INTO `Undergraduates` VALUES (1,6,'Modern Languages','Indian Institute of Science'),(2,7,'Biological Sciences','Peking University'),(3,8,'Politics','Zhejiang University'),(4,9,'Mathematics','Durham University');
/*!40000 ALTER TABLE `Undergraduates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `WorkExperiences`
--

DROP TABLE IF EXISTS `WorkExperiences`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `WorkExperiences` (
  `WorkExperienceId` int(11) NOT NULL AUTO_INCREMENT,
  `PublicId` int(11) DEFAULT NULL,
  `Coop` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`WorkExperienceId`),
  UNIQUE KEY `uq_WorkExperiences_WorkExperience` (`PublicId`,`Coop`),
  CONSTRAINT `fk_WorkExperiences_PublicId` FOREIGN KEY (`PublicId`) REFERENCES `Students` (`PublicId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkExperiences`
--

LOCK TABLES `WorkExperiences` WRITE;
/*!40000 ALTER TABLE `WorkExperiences` DISABLE KEYS */;
INSERT INTO `WorkExperiences` VALUES (1,7,'Allen Institute'),(2,8,'ARL'),(3,11,'ARL'),(4,13,'Concur'),(5,15,'Google'),(6,15,'Providence'),(7,17,'Concur'),(8,19,'Facebook'),(10,20,'Google'),(9,20,'Providence'),(11,23,'SalesForce'),(12,29,'Facebook'),(13,30,'Nordstorm'),(14,42,'SAP'),(15,49,'Providence'),(16,53,'SAP'),(17,54,'Microsoft'),(18,56,'Nordstorm'),(19,61,'WayFair'),(20,61,'Zillow'),(22,67,'Allen Institute'),(21,67,'Concur'),(23,68,'Zillow'),(24,69,'Google'),(25,74,'Zillow'),(26,75,'SalesForce'),(27,81,'Zillow'),(29,86,'ARL'),(28,86,'SalesForce'),(30,90,'ARL'),(31,95,'Zillow'),(32,101,'Zillow'),(33,103,'Concur'),(34,103,'Microsoft'),(35,108,'Providence'),(36,109,'ARL'),(37,111,'PNNL'),(38,115,'Microsoft'),(39,117,'PNNL'),(40,119,'WayFair'),(41,119,'Zillow'),(42,125,'SalesForce'),(43,128,'Google'),(44,130,'Google'),(45,131,'SAP'),(46,143,'Providence'),(47,148,'Nordstorm'),(48,157,'Concur'),(49,161,'SalesForce'),(50,166,'ARL'),(51,171,'ARL'),(52,179,'Providence'),(53,182,'WayFair'),(54,184,'SAP'),(55,187,'Amazon'),(56,190,'WayFair'),(57,191,'Allen Institute'),(58,193,'Expedia'),(59,200,'Amazon'),(60,202,'SalesForce'),(61,206,'Microsoft'),(62,215,'Expedia'),(63,222,'Providence'),(64,225,'SalesForce'),(65,227,'Facebook'),(67,232,'ARL'),(66,232,'PNNL'),(68,237,'Google'),(69,240,'Concur'),(70,244,'SalesForce'),(71,247,'WayFair'),(72,248,'PNNL'),(73,250,'Providence'),(74,252,'SalesForce'),(75,253,'Microsoft'),(76,263,'Allen Institute'),(77,264,'Allen Institute'),(78,270,'PNNL'),(79,276,'Google'),(80,290,'Facebook'),(81,290,'PNNL'),(82,291,'ARL'),(83,296,'Google'),(84,299,'Expedia'),(85,300,'Expedia'),(86,308,'Allen Institute'),(87,309,'Amazon'),(88,316,'Google'),(89,320,'SalesForce'),(90,322,'WayFair'),(91,328,'ARL'),(92,329,'Facebook'),(93,346,'SAP'),(94,360,'PNNL'),(95,373,'Facebook'),(96,375,'Nordstorm'),(97,379,'WayFair'),(98,381,'ARL'),(99,382,'Allen Institute'),(100,389,'ARL'),(101,390,'Facebook'),(102,400,'Microsoft'),(103,401,'Nordstorm');
/*!40000 ALTER TABLE `WorkExperiences` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-04-08 18:05:24
