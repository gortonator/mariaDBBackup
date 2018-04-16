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
INSERT INTO `MultipleValueAggregatedData` VALUES ('ListOfBachelorDegrees','Art',11),('ListOfBachelorDegrees','Biological Sciences',21),('ListOfBachelorDegrees','Business',18),('ListOfBachelorDegrees','Chemistry',17),('ListOfBachelorDegrees','Computer Science',15),('ListOfBachelorDegrees','Economics',17),('ListOfBachelorDegrees','Education',16),('ListOfBachelorDegrees','Electronics',27),('ListOfBachelorDegrees','Finance',10),('ListOfBachelorDegrees','History',25),('ListOfBachelorDegrees','Law',9),('ListOfBachelorDegrees','Mathematics',25),('ListOfBachelorDegrees','Medicine',15),('ListOfBachelorDegrees','Modern Languages',20),('ListOfBachelorDegrees','Pharmacy',15),('ListOfBachelorDegrees','Politics',19),('ListOfBachelorDegrees','Psychology',11),('ListOfBachelorDegrees','Social Policy',17),('ListOfDegrees','BACHELORS',308),('ListOfDegrees','MASTERS',4),('ListOfEmployers','Amazon',13),('ListOfEmployers','Concur',9),('ListOfEmployers','Facebook',5),('ListOfEmployers','Google',6),('ListOfEmployers','Microsoft',9),('ListOfEmployers','PNNL',11),('ListOfEmployers','SalesForce',8),('ListOfEmployers','SAP',8),('ListOfEmployers','Zillow',11),('ListOfStudentsStates','CA',27),('ListOfStudentsStates','MA',121),('ListOfStudentsStates','NC',37),('ListOfStudentsStates','WA',127);
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
INSERT INTO `SingleValueAggregatedData` VALUES ('TotalCurrentStudents',312),('TotalFemaleStudents',168),('TotalFullTimeStudents',308),('TotalGraduatedStudents',88),('TotalMaleStudents',144),('TotalPartTimeStudents',4),('TotalStudents',400),('TotalStudentsDroppedOut',0),('TotalStudentsGotJob',80),('TotalStudentsInBoston',121),('TotalStudentsInCharlotte',37),('TotalStudentsInSeattle',127),('TotalStudentsInSiliconValley',27),('TotalStudentsWithScholarship',33);
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
INSERT INTO `Students` VALUES (1,2018,1),(2,2018,1),(3,2017,1),(4,2018,1),(5,2019,1),(6,2018,1),(7,2020,1),(8,2016,1),(9,2020,1),(10,2020,1),(11,2019,1),(12,2020,1),(13,2020,1),(14,2020,1),(15,2018,1),(16,2017,1),(17,2019,1),(18,2020,1),(19,2020,1),(20,2018,1),(21,2016,1),(22,2018,1),(23,2020,1),(24,2019,1),(25,2019,1),(26,2018,1),(27,2018,1),(28,2016,1),(29,2019,1),(30,2019,1),(31,2020,1),(32,2018,1),(33,2020,1),(34,2016,1),(35,2020,1),(36,2016,1),(37,2019,1),(38,2018,1),(39,2019,1),(40,2019,1),(41,2016,1),(42,2020,1),(43,2020,1),(44,2019,1),(45,2018,1),(46,2017,1),(47,2019,1),(48,2016,1),(49,2016,1),(50,2016,1),(51,2018,1),(52,2018,1),(53,2019,1),(54,2019,1),(55,2017,1),(56,2020,1),(57,2017,1),(58,2020,1),(59,2018,1),(60,2020,1),(61,2020,1),(62,2019,1),(63,2019,1),(64,2019,1),(65,2019,1),(66,2020,1),(67,2016,1),(68,2016,1),(69,2017,1),(70,2019,1),(71,2019,1),(72,2018,1),(73,2018,1),(74,2019,1),(75,2019,1),(76,2019,1),(77,2019,1),(78,2018,1),(79,2020,1),(80,2018,1),(81,2020,1),(82,2020,1),(83,2016,1),(84,2020,1),(85,2019,1),(86,2019,1),(87,2017,1),(88,2020,1),(89,2016,1),(90,2019,1),(91,2019,1),(92,2020,1),(93,2018,1),(94,2020,1),(95,2016,1),(96,2019,1),(97,2018,1),(98,2019,1),(99,2018,1),(100,2016,1),(101,2020,1),(102,2016,1),(103,2020,1),(104,2020,1),(105,2016,1),(106,2018,1),(107,2019,1),(108,2018,1),(109,2018,1),(110,2020,1),(111,2019,1),(112,2019,1),(113,2019,1),(114,2020,1),(115,2019,1),(116,2019,1),(117,2016,1),(118,2020,1),(119,2018,1),(120,2020,1),(121,2020,1),(122,2019,1),(123,2019,1),(124,2020,1),(125,2019,1),(126,2017,1),(127,2020,1),(128,2018,1),(129,2019,1),(130,2019,1),(131,2020,1),(132,2020,1),(133,2019,1),(134,2020,1),(135,2019,1),(136,2016,1),(137,2018,1),(138,2020,1),(139,2017,1),(140,2017,1),(141,2020,1),(142,2018,1),(143,2018,1),(144,2019,1),(145,2019,1),(146,2020,1),(147,2017,1),(148,2018,1),(149,2019,1),(150,2018,1),(151,2016,1),(152,2020,1),(153,2018,1),(154,2019,1),(155,2018,1),(156,2019,1),(157,2019,1),(158,2020,1),(159,2018,1),(160,2018,1),(161,2020,1),(162,2016,1),(163,2017,1),(164,2020,1),(165,2016,1),(166,2018,1),(167,2019,1),(168,2018,1),(169,2020,1),(170,2019,1),(171,2019,1),(172,2019,1),(173,2016,1),(174,2019,1),(175,2020,1),(176,2017,1),(177,2016,1),(178,2019,1),(179,2019,1),(180,2019,1),(181,2020,1),(182,2017,1),(183,2018,1),(184,2016,1),(185,2020,1),(186,2019,1),(187,2019,1),(188,2020,1),(189,2019,1),(190,2018,1),(191,2020,1),(192,2019,1),(193,2019,1),(194,2020,1),(195,2020,1),(196,2018,1),(197,2020,1),(198,2019,1),(199,2020,1),(200,2018,1),(201,2018,1),(202,2019,1),(203,2018,1),(204,2020,1),(205,2017,1),(206,2019,1),(207,2017,1),(208,2020,1),(209,2017,1),(210,2016,1),(211,2016,1),(212,2017,1),(213,2019,1),(214,2020,1),(215,2016,1),(216,2019,1),(217,2020,1),(218,2018,1),(219,2020,1),(220,2019,1),(221,2017,1),(222,2020,1),(223,2020,1),(224,2019,1),(225,2019,1),(226,2016,1),(227,2018,1),(228,2020,1),(229,2018,1),(230,2020,1),(231,2020,1),(232,2019,1),(233,2020,1),(234,2017,1),(235,2019,1),(236,2018,1),(237,2017,1),(238,2020,1),(239,2017,1),(240,2020,1),(241,2018,1),(242,2016,1),(243,2020,1),(244,2020,1),(245,2020,1),(246,2016,1),(247,2020,1),(248,2020,1),(249,2019,1),(250,2017,1),(251,2019,1),(252,2017,1),(253,2019,1),(254,2019,1),(255,2018,1),(256,2019,1),(257,2018,1),(258,2020,1),(259,2016,1),(260,2018,1),(261,2017,1),(262,2020,1),(263,2020,1),(264,2016,1),(265,2019,1),(266,2019,1),(267,2020,1),(268,2019,1),(269,2016,1),(270,2019,1),(271,2020,1),(272,2016,1),(273,2016,1),(274,2019,1),(275,2019,1),(276,2020,1),(277,2019,1),(278,2018,1),(279,2019,1),(280,2019,1),(281,2020,1),(282,2017,1),(283,2019,1),(284,2018,1),(285,2016,1),(286,2018,1),(287,2018,1),(288,2017,1),(289,2020,1),(290,2019,1),(291,2020,1),(292,2019,1),(293,2019,1),(294,2020,1),(295,2019,1),(296,2018,1),(297,2020,1),(298,2018,1),(299,2020,1),(300,2017,1),(301,2018,1),(302,2016,1),(303,2020,1),(304,2019,1),(305,2017,1),(306,2017,1),(307,2019,1),(308,2019,1),(309,2018,1),(310,2020,1),(311,2017,1),(312,2016,1),(313,2020,1),(314,2016,1),(315,2018,1),(316,2020,1),(317,2019,1),(318,2020,1),(319,2017,1),(320,2020,1),(321,2020,1),(322,2020,1),(323,2018,1),(324,2018,1),(325,2020,1),(326,2020,1),(327,2018,1),(328,2017,1),(329,2019,1),(330,2019,1),(331,2018,1),(332,2017,1),(333,2018,1),(334,2016,1),(335,2018,1),(336,2020,1),(337,2019,1),(338,2019,1),(339,2019,1),(340,2020,1),(341,2020,1),(342,2020,1),(343,2020,1),(344,2020,1),(345,2019,1),(346,2020,1),(347,2020,1),(348,2019,1),(349,2020,1),(350,2016,1),(351,2020,1),(352,2018,1),(353,2019,1),(354,2016,1),(355,2020,1),(356,2020,1),(357,2020,1),(358,2016,1),(359,2017,1),(360,2019,1),(361,2017,1),(362,2019,1),(363,2016,1),(364,2016,1),(365,2020,1),(366,2019,1),(367,2020,1),(368,2016,1),(369,2018,1),(370,2016,1),(371,2018,1),(372,2020,1),(373,2020,1),(374,2020,1),(375,2018,1),(376,2019,1),(377,2020,1),(378,2018,1),(379,2020,1),(380,2019,1),(381,2016,1),(382,2019,1),(383,2019,1),(384,2019,1),(385,2018,1),(386,2019,1),(387,2020,1),(388,2017,1),(389,2020,1),(390,2019,1),(391,2019,1),(392,2020,1),(393,2020,1),(394,2016,1),(395,2019,1),(396,2018,1),(397,2020,1),(398,2020,1),(399,2019,1),(400,2016,1);
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
) ENGINE=InnoDB AUTO_INCREMENT=397 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Undergraduates`
--

LOCK TABLES `Undergraduates` WRITE;
/*!40000 ALTER TABLE `Undergraduates` DISABLE KEYS */;
INSERT INTO `Undergraduates` VALUES (1,1,'History','Harvard University'),(2,2,'Medicine','University of Pennsylvania'),(3,3,'History','Zhejiang University'),(4,4,'Chemistry','Tsinghua University'),(5,5,'Art','Emory University'),(6,6,'Computer Science','New York University'),(7,7,'Medicine','University of Michigan'),(8,8,'Pharmacy','University of Hong Kong'),(9,9,'Business','University of Sheffield'),(10,10,'Medicine','Indian Institute of Science'),(11,11,'Medicine','Emory University'),(12,12,'Modern Languages','Emory University'),(13,14,'Economics','Tsinghua University'),(14,15,'Law','Fudan University'),(15,16,'Computer Science','University of Pittsburgh'),(16,17,'Mathematics','Beijing Normal University'),(17,18,'Art','Fudan University'),(18,19,'Finance','Politecnico di Milano'),(19,20,'Medicine','Tsinghua University'),(20,21,'Art','Peking University'),(21,22,'Computer Science','Southeast University'),(22,23,'Medicine','Beijing Normal University'),(23,24,'History','New York University'),(24,25,'Politics','Zhejiang University'),(25,26,'Modern Languages','Durham University'),(26,27,'Business','Beijing Normal University'),(27,28,'Biological Sciences','University of Pittsburgh'),(28,29,'Law','Fudan University'),(29,30,'Electronics','University of Hong Kong'),(30,31,'Chemistry','University of Sheffield'),(31,32,'Economics','University of Michigan'),(32,33,'Mathematics','University of Michigan'),(33,34,'Biological Sciences','Northwestern University'),(34,35,'Mathematics','Durham University'),(35,36,'Modern Languages','University of Pittsburgh'),(36,37,'Law','University of Michigan'),(37,38,'Economics','New York University'),(38,39,'Education','University of Pennsylvania'),(39,40,'Education','University of Hong Kong'),(40,41,'Modern Languages','Emory University'),(41,42,'Social Policy','Emory University'),(42,43,'Electronics','Brown University'),(43,44,'Social Policy','Fudan University'),(44,45,'History','Brown University'),(45,46,'Computer Science','Peking University'),(46,47,'Business','Harvard University'),(47,48,'Business','Tsinghua University'),(48,49,'History','Emory University'),(49,50,'Modern Languages','Emory University'),(50,51,'Chemistry','Emory University'),(51,52,'Law','Indian Institute of Science'),(52,53,'Education','University of Michigan'),(53,54,'Art','Politecnico di Milano'),(54,55,'Education','University of Sheffield'),(55,57,'Art','Harvard University'),(56,58,'Modern Languages','Harvard University'),(57,59,'Social Policy','Boston University'),(58,60,'Biological Sciences','Emory University'),(59,61,'Chemistry','Harvard University'),(60,62,'Biological Sciences','New York University'),(61,63,'Electronics','Tsinghua University'),(62,64,'Pharmacy','Tsinghua University'),(63,65,'Business','Southeast University'),(64,66,'Business','University of Pennsylvania'),(65,67,'Law','Fudan University'),(66,68,'Computer Science','Harvard University'),(67,69,'Computer Science','Tsinghua University'),(68,70,'Pharmacy','University of Pittsburgh'),(69,71,'Finance','Northwestern University'),(70,72,'Biological Sciences','Politecnico di Milano'),(71,73,'Chemistry','Northwestern University'),(72,74,'Computer Science','Fudan University'),(73,75,'Social Policy','Peking University'),(74,76,'Law','University of Hong Kong'),(75,77,'Biological Sciences','Brown University'),(76,78,'Computer Science','Brown University'),(77,79,'History','Boston University'),(78,80,'Electronics','Zhejiang University'),(79,81,'Mathematics','Brown University'),(80,82,'Modern Languages','Emory University'),(81,83,'Modern Languages','Zhejiang University'),(82,84,'Economics','Indian Institute of Science'),(83,85,'Pharmacy','University of Hong Kong'),(84,86,'History','University of Pennsylvania'),(85,87,'Electronics','Beijing Normal University'),(86,88,'History','Southeast University'),(87,89,'Modern Languages','University of Pittsburgh'),(88,90,'History','Harvard University'),(89,91,'Finance','Emory University'),(90,92,'Pharmacy','University of Pittsburgh'),(91,93,'History','Politecnico di Milano'),(92,94,'Business','Indian Institute of Science'),(93,95,'Computer Science','University of Hong Kong'),(94,96,'Finance','Peking University'),(95,97,'Medicine','Tsinghua University'),(96,98,'Electronics','University of Pittsburgh'),(97,99,'Computer Science','Northwestern University'),(98,100,'Biological Sciences','Southeast University'),(99,101,'Law','Indian Institute of Science'),(100,102,'Biological Sciences','University of Sheffield'),(101,103,'Education','University of Hong Kong'),(102,104,'Mathematics','New York University'),(103,105,'Modern Languages','Boston University'),(104,106,'Modern Languages','Beijing Normal University'),(105,107,'Social Policy','Tsinghua University'),(106,108,'Computer Science','Politecnico di Milano'),(107,109,'Politics','Indian Institute of Science'),(108,110,'Finance','University of Pittsburgh'),(109,111,'Education','University of Sheffield'),(110,112,'Mathematics','Fudan University'),(111,113,'Electronics','Zhejiang University'),(112,114,'Psychology','Harvard University'),(113,115,'Politics','University of Michigan'),(114,116,'Art','Peking University'),(115,117,'Social Policy','Northwestern University'),(116,118,'Economics','Beijing Normal University'),(117,119,'Business','Tsinghua University'),(118,120,'Economics','New York University'),(119,121,'Biological Sciences','Emory University'),(120,122,'Electronics','Boston University'),(121,123,'Pharmacy','Emory University'),(122,124,'Electronics','New York University'),(123,125,'Social Policy','Brown University'),(124,126,'Finance','Peking University'),(125,127,'Law','University of Michigan'),(126,128,'Economics','Southeast University'),(127,129,'Mathematics','Durham University'),(128,130,'Modern Languages','Harvard University'),(129,131,'Economics','Zhejiang University'),(130,132,'Biological Sciences','University of Hong Kong'),(131,133,'Economics','Harvard University'),(132,134,'History','Brown University'),(133,135,'Modern Languages','Beijing Normal University'),(134,136,'Electronics','New York University'),(135,137,'Politics','Boston University'),(136,138,'Electronics','Brown University'),(137,139,'Modern Languages','Northwestern University'),(138,140,'Modern Languages','Tsinghua University'),(139,141,'Chemistry','Durham University'),(140,142,'Chemistry','Peking University'),(141,143,'Biological Sciences','Durham University'),(142,144,'Education','University of Pittsburgh'),(143,145,'Electronics','Southeast University'),(144,146,'Modern Languages','University of Hong Kong'),(145,147,'Education','Brown University'),(146,148,'History','New York University'),(147,149,'Politics','Brown University'),(148,150,'Computer Science','University of Sheffield'),(149,151,'Business','Southeast University'),(150,152,'Electronics','New York University'),(151,153,'Biological Sciences','Beijing Normal University'),(152,154,'Computer Science','New York University'),(153,155,'Mathematics','Politecnico di Milano'),(154,156,'Business','University of Pennsylvania'),(155,157,'Computer Science','Boston University'),(156,158,'Electronics','University of Pittsburgh'),(157,159,'Politics','Southeast University'),(158,160,'Social Policy','University of Hong Kong'),(159,161,'Mathematics','Southeast University'),(160,162,'Modern Languages','Tsinghua University'),(161,163,'Business','Tsinghua University'),(162,164,'Pharmacy','Southeast University'),(163,165,'Medicine','University of Michigan'),(164,166,'Psychology','New York University'),(165,167,'Business','University of Pennsylvania'),(166,168,'Pharmacy','Southeast University'),(167,169,'Biological Sciences','University of Sheffield'),(168,170,'History','Harvard University'),(169,171,'Electronics','Emory University'),(170,172,'Electronics','Beijing Normal University'),(171,173,'Pharmacy','University of Pennsylvania'),(172,174,'History','Boston University'),(173,175,'Mathematics','University of Pittsburgh'),(174,176,'Politics','Indian Institute of Science'),(175,177,'Social Policy','Northwestern University'),(176,178,'Chemistry','University of Pittsburgh'),(177,179,'Chemistry','Brown University'),(178,180,'Social Policy','Harvard University'),(179,181,'Business','Brown University'),(180,182,'Modern Languages','University of Michigan'),(181,183,'Mathematics','Indian Institute of Science'),(182,184,'Social Policy','Boston University'),(183,185,'Medicine','University of Sheffield'),(184,186,'Chemistry','University of Sheffield'),(185,187,'Biological Sciences','Southeast University'),(186,188,'Psychology','University of Pennsylvania'),(187,189,'Chemistry','New York University'),(188,190,'Medicine','Boston University'),(189,191,'Computer Science','University of Pennsylvania'),(190,192,'Chemistry','University of Michigan'),(191,193,'Electronics','University of Pittsburgh'),(192,194,'Politics','Durham University'),(193,195,'Computer Science','Harvard University'),(194,196,'Psychology','Northwestern University'),(195,197,'Business','University of Pittsburgh'),(196,198,'Law','New York University'),(197,199,'Business','University of Michigan'),(198,200,'Pharmacy','Brown University'),(199,201,'Pharmacy','Politecnico di Milano'),(200,202,'Modern Languages','Zhejiang University'),(201,203,'Mathematics','New York University'),(202,204,'Art','Indian Institute of Science'),(203,205,'Modern Languages','Beijing Normal University'),(204,206,'Modern Languages','University of Pittsburgh'),(205,207,'Medicine','New York University'),(206,208,'Politics','Beijing Normal University'),(207,209,'Social Policy','Zhejiang University'),(208,210,'Business','University of Sheffield'),(209,211,'Art','Peking University'),(210,212,'Politics','Harvard University'),(211,213,'Electronics','Brown University'),(212,214,'Mathematics','University of Sheffield'),(213,215,'Mathematics','Beijing Normal University'),(214,216,'Social Policy','New York University'),(215,217,'Medicine','Indian Institute of Science'),(216,218,'Politics','Southeast University'),(217,219,'Mathematics','University of Pittsburgh'),(218,220,'Education','Southeast University'),(219,221,'History','University of Pittsburgh'),(220,222,'Mathematics','Northwestern University'),(221,223,'Economics','Durham University'),(222,224,'Chemistry','Durham University'),(223,225,'Economics','Peking University'),(224,226,'History','Tsinghua University'),(225,227,'Mathematics','Emory University'),(226,228,'Politics','Beijing Normal University'),(227,230,'Biological Sciences','University of Pennsylvania'),(228,231,'Art','Boston University'),(229,232,'Biological Sciences','Emory University'),(230,233,'Biological Sciences','Emory University'),(231,234,'Economics','University of Sheffield'),(232,235,'Psychology','Tsinghua University'),(233,236,'Electronics','Boston University'),(234,237,'Business','University of Pittsburgh'),(235,238,'Modern Languages','Indian Institute of Science'),(236,239,'Medicine','University of Hong Kong'),(237,240,'Politics','University of Michigan'),(238,241,'Art','University of Hong Kong'),(239,242,'Biological Sciences','University of Hong Kong'),(240,243,'Computer Science','Fudan University'),(241,244,'Biological Sciences','University of Hong Kong'),(242,245,'Finance','Durham University'),(243,246,'Politics','University of Pittsburgh'),(244,247,'Mathematics','Emory University'),(245,248,'Biological Sciences','Fudan University'),(246,249,'Education','University of Pittsburgh'),(247,250,'Education','Boston University'),(248,251,'Modern Languages','Emory University'),(249,252,'Education','University of Michigan'),(250,253,'Biological Sciences','Zhejiang University'),(251,254,'Modern Languages','Peking University'),(252,255,'Mathematics','Southeast University'),(253,256,'Economics','University of Hong Kong'),(254,257,'Chemistry','Southeast University'),(255,258,'Social Policy','Zhejiang University'),(256,259,'Biological Sciences','University of Sheffield'),(257,260,'Electronics','Peking University'),(258,261,'Psychology','Boston University'),(259,262,'Finance','University of Michigan'),(260,263,'Mathematics','Fudan University'),(261,264,'Modern Languages','University of Pittsburgh'),(262,265,'Education','Peking University'),(263,266,'Chemistry','Fudan University'),(264,267,'Computer Science','Boston University'),(265,268,'Politics','Beijing Normal University'),(266,269,'Business','Fudan University'),(267,270,'Electronics','Beijing Normal University'),(268,271,'Pharmacy','New York University'),(269,272,'Politics','Durham University'),(270,273,'Economics','Durham University'),(271,274,'Biological Sciences','Harvard University'),(272,275,'Biological Sciences','New York University'),(273,276,'Social Policy','Southeast University'),(274,277,'Medicine','Southeast University'),(275,278,'Biological Sciences','Northwestern University'),(276,279,'Electronics','Durham University'),(277,280,'Social Policy','University of Michigan'),(278,281,'Politics','University of Pennsylvania'),(279,282,'Chemistry','Politecnico di Milano'),(280,283,'Politics','Harvard University'),(281,284,'Electronics','Tsinghua University'),(282,285,'Economics','Brown University'),(283,286,'Psychology','Brown University'),(284,287,'Education','Indian Institute of Science'),(285,288,'Computer Science','Peking University'),(286,289,'History','University of Sheffield'),(287,290,'Education','New York University'),(288,291,'Business','Boston University'),(289,292,'History','University of Pennsylvania'),(290,293,'Politics','Harvard University'),(291,294,'Pharmacy','Northwestern University'),(292,295,'Education','Harvard University'),(293,296,'Business','Harvard University'),(294,297,'Social Policy','Durham University'),(295,298,'Modern Languages','Politecnico di Milano'),(296,299,'History','Tsinghua University'),(297,300,'Art','New York University'),(298,301,'Electronics','Tsinghua University'),(299,302,'History','Tsinghua University'),(300,303,'Electronics','Emory University'),(301,304,'Economics','Boston University'),(302,305,'Education','University of Hong Kong'),(303,306,'Finance','Indian Institute of Science'),(304,307,'Finance','Boston University'),(305,308,'Politics','University of Michigan'),(306,309,'Medicine','Emory University'),(307,310,'Chemistry','University of Pennsylvania'),(308,311,'Social Policy','Brown University'),(309,312,'Social Policy','New York University'),(310,313,'Electronics','Fudan University'),(311,314,'Pharmacy','Harvard University'),(312,315,'Modern Languages','Politecnico di Milano'),(313,316,'History','Boston University'),(314,317,'Computer Science','Tsinghua University'),(315,318,'Modern Languages','University of Michigan'),(316,319,'Politics','Emory University'),(317,320,'Pharmacy','Indian Institute of Science'),(318,321,'Psychology','Peking University'),(319,322,'Politics','Zhejiang University'),(320,323,'Electronics','Emory University'),(321,324,'Education','University of Sheffield'),(322,325,'Business','New York University'),(323,326,'Law','Northwestern University'),(324,327,'History','University of Pennsylvania'),(325,328,'Modern Languages','Indian Institute of Science'),(326,329,'Electronics','University of Pittsburgh'),(327,330,'Psychology','Fudan University'),(328,331,'History','University of Sheffield'),(329,332,'Pharmacy','University of Michigan'),(330,333,'Psychology','University of Michigan'),(331,334,'Art','Beijing Normal University'),(332,335,'Education','Tsinghua University'),(333,336,'Art','Tsinghua University'),(334,337,'Finance','University of Sheffield'),(335,338,'Psychology','Durham University'),(336,339,'Biological Sciences','Harvard University'),(337,340,'Mathematics','Southeast University'),(338,341,'Business','Fudan University'),(339,342,'History','University of Pennsylvania'),(340,343,'Modern Languages','Northwestern University'),(341,344,'Art','University of Michigan'),(342,345,'Psychology','Tsinghua University'),(343,346,'Education','Zhejiang University'),(344,347,'Mathematics','Politecnico di Milano'),(345,348,'Pharmacy','Tsinghua University'),(346,349,'Economics','Indian Institute of Science'),(347,350,'Biological Sciences','Boston University'),(348,351,'Economics','Fudan University'),(349,352,'Education','Indian Institute of Science'),(350,353,'History','Durham University'),(351,354,'Business','Politecnico di Milano'),(352,355,'Social Policy','University of Hong Kong'),(353,356,'Business','Tsinghua University'),(354,357,'Biological Sciences','Politecnico di Milano'),(355,358,'Law','Indian Institute of Science'),(356,359,'Chemistry','New York University'),(357,360,'Politics','University of Michigan'),(358,361,'Art','University of Michigan'),(359,362,'Social Policy','Indian Institute of Science'),(360,363,'Social Policy','Harvard University'),(361,364,'History','Southeast University'),(362,365,'History','Politecnico di Milano'),(363,366,'Art','Politecnico di Milano'),(364,367,'History','Durham University'),(365,368,'Chemistry','Emory University'),(366,369,'Chemistry','Beijing Normal University'),(367,370,'Business','University of Sheffield'),(368,371,'Electronics','Northwestern University'),(369,372,'Economics','Tsinghua University'),(370,373,'Medicine','University of Pennsylvania'),(371,374,'Mathematics','University of Pittsburgh'),(372,375,'Mathematics','Harvard University'),(373,376,'Medicine','Durham University'),(374,377,'Pharmacy','Harvard University'),(375,378,'Modern Languages','Southeast University'),(376,379,'Mathematics','Zhejiang University'),(377,380,'Mathematics','Tsinghua University'),(378,381,'Economics','University of Pittsburgh'),(379,382,'Modern Languages','Politecnico di Milano'),(380,383,'Medicine','Northwestern University'),(381,384,'Economics','Emory University'),(382,385,'Art','Indian Institute of Science'),(383,386,'Modern Languages','Durham University'),(384,387,'History','Beijing Normal University'),(385,388,'Electronics','Southeast University'),(386,389,'Finance','Beijing Normal University'),(387,390,'Pharmacy','Fudan University'),(388,391,'Business','Peking University'),(389,392,'Social Policy','University of Sheffield'),(390,393,'History','Brown University'),(391,394,'History','Politecnico di Milano'),(392,396,'Social Policy','Brown University'),(393,397,'Politics','Zhejiang University'),(394,398,'Computer Science','Peking University'),(395,399,'History','Beijing Normal University'),(396,400,'Law','Zhejiang University');
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
) ENGINE=InnoDB AUTO_INCREMENT=197 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `WorkExperiences`
--

LOCK TABLES `WorkExperiences` WRITE;
/*!40000 ALTER TABLE `WorkExperiences` DISABLE KEYS */;
INSERT INTO `WorkExperiences` VALUES (2,2,'Allen Institute'),(1,2,'SAP'),(3,3,'Providence'),(5,6,'ARL'),(4,6,'Concur'),(6,8,'ARL'),(8,15,'Expedia'),(7,15,'SAP'),(9,16,'ARL'),(10,22,'Google'),(11,22,'WayFair'),(12,26,'PNNL'),(13,26,'Providence'),(14,27,'Concur'),(15,27,'Providence'),(16,28,'Expedia'),(17,32,'Facebook'),(18,32,'WayFair'),(19,36,'Allen Institute'),(20,41,'Nordstorm'),(22,45,'ARL'),(21,45,'Google'),(23,46,'ARL'),(24,48,'Providence'),(25,49,'ARL'),(26,50,'WayFair'),(27,51,'Microsoft'),(28,51,'Providence'),(30,52,'Expedia'),(29,52,'Facebook'),(31,55,'Nordstorm'),(32,57,'Expedia'),(33,59,'SAP'),(34,59,'WayFair'),(35,67,'Expedia'),(36,68,'Allen Institute'),(37,69,'Allen Institute'),(38,72,'Amazon'),(39,72,'ARL'),(40,83,'WayFair'),(41,87,'ARL'),(42,89,'Providence'),(44,93,'ARL'),(43,93,'Microsoft'),(45,95,'Allen Institute'),(47,97,'Nordstorm'),(46,97,'Zillow'),(48,100,'Nordstorm'),(49,102,'ARL'),(50,105,'WayFair'),(52,108,'ARL'),(51,108,'Facebook'),(54,109,'ARL'),(53,109,'Microsoft'),(55,117,'Expedia'),(56,126,'Expedia'),(57,128,'Concur'),(58,128,'Nordstorm'),(59,136,'Expedia'),(61,137,'Expedia'),(60,137,'SAP'),(62,139,'Providence'),(63,140,'Expedia'),(65,142,'ARL'),(64,142,'Zillow'),(66,143,'Concur'),(67,143,'Nordstorm'),(68,147,'WayFair'),(70,148,'Allen Institute'),(69,148,'SalesForce'),(71,150,'Microsoft'),(72,150,'WayFair'),(73,151,'ARL'),(75,153,'Nordstorm'),(74,153,'PNNL'),(76,155,'Amazon'),(77,155,'Expedia'),(78,159,'SAP'),(79,159,'WayFair'),(81,160,'ARL'),(80,160,'Concur'),(82,162,'Expedia'),(84,163,'Expedia'),(83,163,'Facebook'),(85,165,'WayFair'),(87,166,'ARL'),(86,166,'Concur'),(88,173,'ARL'),(89,176,'Expedia'),(90,182,'Providence'),(92,183,'Expedia'),(91,183,'Zillow'),(93,184,'ARL'),(95,190,'Allen Institute'),(94,190,'Zillow'),(97,196,'Allen Institute'),(96,196,'Amazon'),(98,201,'Google'),(99,201,'Providence'),(100,205,'Nordstorm'),(101,207,'Providence'),(102,209,'WayFair'),(103,210,'Allen Institute'),(104,211,'Nordstorm'),(106,212,'Allen Institute'),(105,212,'SalesForce'),(107,215,'Allen Institute'),(109,218,'Allen Institute'),(108,218,'Concur'),(110,221,'Providence'),(111,226,'WayFair'),(113,227,'Nordstorm'),(112,227,'PNNL'),(115,229,'Nordstorm'),(114,229,'SalesForce'),(116,234,'Expedia'),(117,237,'Providence'),(118,239,'ARL'),(119,241,'Concur'),(120,241,'Expedia'),(121,242,'Providence'),(122,246,'Allen Institute'),(123,250,'WayFair'),(124,252,'Expedia'),(126,255,'Expedia'),(125,255,'Zillow'),(128,257,'Allen Institute'),(127,257,'Amazon'),(130,259,'Nordstorm'),(129,259,'SAP'),(131,260,'Google'),(132,260,'Nordstorm'),(133,261,'Amazon'),(134,261,'Nordstorm'),(135,264,'Allen Institute'),(136,269,'Nordstorm'),(137,272,'Allen Institute'),(138,273,'Expedia'),(139,278,'Concur'),(140,278,'WayFair'),(141,282,'WayFair'),(142,285,'Expedia'),(143,286,'Concur'),(144,286,'Expedia'),(145,288,'Allen Institute'),(147,298,'Expedia'),(146,298,'Microsoft'),(148,300,'Expedia'),(149,302,'WayFair'),(150,305,'WayFair'),(151,309,'Amazon'),(152,309,'Nordstorm'),(153,311,'ARL'),(154,312,'ARL'),(155,314,'Allen Institute'),(156,315,'PNNL'),(157,315,'WayFair'),(158,319,'Allen Institute'),(160,323,'ARL'),(159,323,'PNNL'),(162,324,'ARL'),(161,324,'SalesForce'),(164,327,'Allen Institute'),(163,327,'Amazon'),(165,328,'Expedia'),(166,331,'Microsoft'),(167,331,'WayFair'),(168,332,'Expedia'),(170,333,'Expedia'),(169,333,'PNNL'),(171,334,'ARL'),(172,335,'Facebook'),(173,335,'Nordstorm'),(174,350,'ARL'),(175,354,'Expedia'),(176,358,'Providence'),(177,359,'Providence'),(178,361,'Expedia'),(179,363,'Providence'),(180,364,'Nordstorm'),(181,368,'ARL'),(182,370,'Expedia'),(183,371,'Facebook'),(184,371,'Nordstorm'),(186,375,'Providence'),(185,375,'SalesForce'),(188,378,'Allen Institute'),(187,378,'Facebook'),(189,381,'WayFair'),(191,385,'Providence'),(190,385,'Zillow'),(192,388,'WayFair'),(193,394,'Expedia'),(194,396,'Facebook'),(195,396,'Nordstorm'),(196,400,'Allen Institute');
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

-- Dump completed on 2018-04-16 12:27:15
