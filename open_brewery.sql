-- MySQL dump 10.13  Distrib 5.7.23, for Linux (x86_64)
--
-- Host: localhost    Database: open_brewery
-- ------------------------------------------------------
-- Server version	5.7.23-0ubuntu0.18.04.1

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
-- Current Database: `open_brewery`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `open_brewery` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `open_brewery`;

--
-- Table structure for table `aromareference`
--

DROP TABLE IF EXISTS `aromareference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aromareference` (
  `ID` int(5) NOT NULL AUTO_INCREMENT,
  `HopsID` int(5) DEFAULT NULL,
  `DescriptorID` int(5) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `HopsID` (`HopsID`),
  KEY `DescriptorID` (`DescriptorID`),
  CONSTRAINT `aromareference_ibfk_1` FOREIGN KEY (`HopsID`) REFERENCES `hops` (`ProductID`),
  CONSTRAINT `aromareference_ibfk_2` FOREIGN KEY (`DescriptorID`) REFERENCES `hopsdescriptors` (`DescriptorID`)
) ENGINE=InnoDB AUTO_INCREMENT=307 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aromareference`
--

LOCK TABLES `aromareference` WRITE;
/*!40000 ALTER TABLE `aromareference` DISABLE KEYS */;
INSERT INTO `aromareference` VALUES (1,1,2),(2,2,2),(3,3,2),(4,4,2),(5,7,2),(6,15,2),(7,17,2),(8,19,2),(9,20,2),(10,21,2),(11,23,2),(12,24,2),(13,27,2),(14,28,2),(15,30,2),(16,31,2),(17,32,2),(18,35,2),(19,39,2),(20,42,2),(21,43,2),(22,44,2),(23,48,2),(24,49,2),(25,53,2),(26,54,2),(27,57,2),(28,61,2),(29,65,2),(30,71,2),(31,73,2),(32,74,2),(33,80,2),(34,86,2),(35,87,2),(36,89,2),(37,92,2),(38,94,2),(39,95,2),(40,98,2),(41,99,2),(42,101,2),(43,103,2),(44,105,2),(45,106,2),(46,109,2),(47,111,2),(48,112,2),(49,115,2),(50,116,2),(51,117,2),(52,122,2),(53,18,1),(54,36,1),(55,45,1),(56,67,1),(57,105,1),(58,114,1),(59,2,3),(60,4,3),(61,5,3),(62,16,3),(63,22,3),(64,23,3),(65,25,3),(66,30,3),(67,33,3),(68,37,3),(69,41,3),(70,60,3),(71,65,3),(72,69,3),(73,72,3),(74,75,3),(75,84,3),(76,90,3),(77,92,3),(78,97,3),(79,99,3),(80,103,3),(81,104,3),(82,107,3),(83,119,3),(84,2,4),(85,3,4),(86,7,4),(87,9,4),(88,11,4),(89,15,4),(90,17,4),(91,22,4),(92,29,4),(93,31,4),(94,32,4),(95,38,4),(96,39,4),(97,40,4),(98,42,4),(99,43,4),(100,45,4),(101,50,4),(102,53,4),(103,54,4),(104,59,4),(105,60,4),(106,63,4),(107,66,4),(108,71,4),(109,72,4),(110,74,4),(111,75,4),(112,76,4),(113,77,4),(114,78,4),(115,87,4),(116,88,4),(117,89,4),(118,90,4),(119,93,4),(120,98,4),(121,104,4),(122,105,4),(123,110,4),(124,112,4),(125,113,4),(126,117,4),(127,119,4),(128,120,4),(129,7,5),(130,10,5),(131,11,5),(132,12,5),(133,13,5),(134,14,5),(135,18,5),(136,19,5),(137,22,5),(138,28,5),(139,32,5),(140,34,5),(141,36,5),(142,38,5),(143,40,5),(144,43,5),(145,48,5),(146,51,5),(147,54,5),(148,56,5),(149,57,5),(150,59,5),(151,60,5),(152,64,5),(153,66,5),(154,71,5),(155,72,5),(156,75,5),(157,77,5),(158,79,5),(159,84,5),(160,85,5),(161,89,5),(162,96,5),(163,100,5),(164,110,5),(165,115,5),(166,119,5),(167,120,5),(168,6,6),(169,24,6),(170,68,6),(171,84,6),(172,91,6),(173,99,6),(174,103,6),(175,1,7),(176,4,7),(177,5,7),(178,7,7),(179,16,7),(180,18,7),(181,25,7),(182,26,7),(183,28,7),(184,37,7),(185,38,7),(186,41,7),(187,43,7),(188,44,7),(189,46,7),(190,47,7),(191,54,7),(192,58,7),(193,59,7),(194,62,7),(195,63,7),(196,67,7),(197,68,7),(198,69,7),(199,70,7),(200,71,7),(201,73,7),(202,77,7),(203,80,7),(204,81,7),(205,83,7),(206,84,7),(207,87,7),(208,94,7),(209,97,7),(210,98,7),(211,99,7),(212,101,7),(213,103,7),(214,104,7),(215,107,7),(216,108,7),(217,109,7),(218,110,7),(219,112,7),(220,118,7),(221,120,7),(222,121,7),(223,9,8),(224,20,8),(225,26,8),(226,40,8),(227,66,8),(228,67,8),(229,68,8),(230,85,8),(231,92,8),(232,95,8),(233,102,8),(234,105,8),(235,111,8),(236,116,8),(237,118,8),(238,4,9),(239,10,9),(240,12,9),(241,13,9),(242,14,9),(243,15,9),(244,20,9),(245,23,9),(246,27,9),(247,29,9),(248,30,9),(249,35,9),(250,40,9),(251,42,9),(252,43,9),(253,46,9),(254,50,9),(255,53,9),(256,56,9),(257,62,9),(258,66,9),(259,71,9),(260,72,9),(261,73,9),(262,76,9),(263,77,9),(264,78,9),(265,87,9),(266,88,9),(267,89,9),(268,90,9),(269,91,9),(270,93,9),(271,95,9),(272,98,9),(273,99,9),(274,101,9),(275,106,9),(276,108,9),(277,109,9),(278,111,9),(279,112,9),(280,113,9),(281,115,9),(282,121,9),(283,6,10),(284,19,10),(285,32,10),(286,44,10),(287,85,10),(288,100,10),(289,115,10),(290,6,11),(292,21,11),(293,28,11),(294,31,11),(295,43,11),(296,44,11),(297,45,11),(298,52,11),(299,58,11),(300,61,11),(301,81,11),(302,86,11),(303,95,11),(304,100,11),(305,111,11),(306,122,11);
/*!40000 ALTER TABLE `aromareference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `brewinstance`
--

DROP TABLE IF EXISTS `brewinstance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `brewinstance` (
  `BrewID` int(5) NOT NULL AUTO_INCREMENT,
  `StartDateDate` date DEFAULT NULL,
  `RecipeID` int(5) DEFAULT NULL,
  `StrikeVolume` float(4,2) DEFAULT NULL,
  `TimeToStrike` int(4) DEFAULT NULL,
  `StrikeTemp` float(4,2) DEFAULT NULL,
  `InitialMashTemp` float(4,2) DEFAULT NULL,
  `FinalMashTemp` float(4,2) DEFAULT NULL,
  `MashDuration` int(4) DEFAULT NULL,
  `LauterDuration` int(4) DEFAULT NULL,
  `SpargeTemp` float(4,2) DEFAULT NULL,
  `SpargeVolume` float(4,2) DEFAULT NULL,
  `SpargeDuration` int(4) DEFAULT NULL,
  `PreBoilTemp` float(4,2) DEFAULT NULL,
  `PreBoilVolume` float(4,2) DEFAULT NULL,
  `PreBoilGravity` float(4,3) DEFAULT NULL,
  `TimeToBoil` int(4) DEFAULT NULL,
  `BoilDuration` int(4) DEFAULT NULL,
  `TimeToChill` int(4) DEFAULT NULL,
  `PostBoilGravity` float(4,3) DEFAULT NULL,
  `AddedWaterVolume` float(4,2) DEFAULT NULL,
  `InitialGravity` float(4,3) DEFAULT NULL,
  `DaysOnPrimary` int(2) DEFAULT NULL,
  `DaysOnSecondary` int(2) DEFAULT NULL,
  `BottledVolume` float(4,2) DEFAULT NULL,
  `BottleQuantity` int(3) DEFAULT NULL,
  `CompletionDate` date DEFAULT NULL,
  PRIMARY KEY (`BrewID`),
  KEY `RecipeID` (`RecipeID`),
  CONSTRAINT `brewinstance_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `recipes` (`RecipeID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `brewinstance`
--

LOCK TABLES `brewinstance` WRITE;
/*!40000 ALTER TABLE `brewinstance` DISABLE KEYS */;
/*!40000 ALTER TABLE `brewinstance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `grain`
--

DROP TABLE IF EXISTS `grain`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `grain` (
  `ProductID` int(5) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(50) DEFAULT NULL,
  `Maltster` varchar(50) DEFAULT NULL,
  `ColourMin` float(5,2) DEFAULT NULL,
  `ColourMax` float(5,2) DEFAULT NULL,
  `ExtractPot` float(5,4) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=170 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `grain`
--

LOCK TABLES `grain` WRITE;
/*!40000 ALTER TABLE `grain` DISABLE KEYS */;
INSERT INTO `grain` VALUES (1,'BEST Heidelberg','BESTMalz',1.50,1.50,1.0370),(2,'BEST Pilsen Malt','BESTMalz',1.60,2.30,1.0370),(3,'BEST Organic Pilsen Malt','BESTMalz',1.60,2.30,1.0370),(4,'BEST Pale Ale','BESTMalz',2.30,3.10,1.0370),(5,'BEST Vienna','BESTMalz',3.50,4.20,1.0370),(6,'BEST Melanoidin Light','BESTMalz',16.00,23.00,1.0345),(7,'BEST Melanoidin','BESTMalz',23.00,31.00,1.0345),(8,'BEST Munich Dark','BESTMalz',8.40,13.70,1.0368),(9,'BEST Munich','BESTMalz',4.60,8.00,1.0370),(10,'BEST Wheat Malt Dark','BESTMalz',6.50,8.00,1.0377),(11,'BEST Wheat Malt','BESTMalz',1.80,2.70,1.0377),(12,'BEST Spelt Malt','BESTMalz',1.90,2.80,1.0377),(13,'BEST Heidelberg Wheat Malt','BESTMalz',1.30,1.70,1.0377),(14,'BEST Special X','BESTMalz',115.00,150.00,1.0345),(15,'BEST Red X','BESTMalz',11.00,13.00,1.0363),(16,'BEST Caramel Pils','BESTMalz',1.60,3.10,1.0345),(17,'BEST Caramel Hell','BESTMalz',8.00,16.00,1.0345),(18,'BEST Caramel Aromatic','BESTMalz',16.00,23.00,1.0345),(19,'BEST Caramel Amber','BESTMalz',23.00,31.00,1.0345),(20,'BEST Caramel Munich I','BESTMalz',31.00,38.00,1.0345),(21,'BEST Caramel Munich II','BESTMalz',42.00,49.00,1.0345),(22,'BEST Caramel Munich III','BESTMalz',50.00,76.00,1.0345),(23,'BEST Chocolate','BESTMalz',300.00,380.00,1.0345),(24,'BEST Black Malt','BESTMalz',415.00,450.00,1.0299),(25,'BEST Black Malt eXtra','BESTMalz',490.00,570.00,1.0299),(26,'BEST Chit Malt','BESTMalz',1.20,1.60,1.0230),(27,'BEST Acidulated Malt','BESTMalz',1.60,2.70,1.0368),(28,'BEST Smoked','BESTMalz',1.60,3.50,1.0354),(29,'BEST Roasted Barley','BESTMalz',450.00,530.00,1.0299),(30,'BEST Peated','BESTMalz',1.70,3.60,1.0359),(31,'CMC Canadian 2-Row Malt','Canadian Malting Co Ltd',1.50,2.10,1.0368),(32,'CMC Canadian 6-Row Malt','Canadian Malting Co Ltd',1.20,2.10,1.0368),(33,'CMC Canadian Certified Organic 2-Row Malt','Canadian Malting Co Ltd',1.50,2.10,1.0368),(34,'CMC Ontario Select Malt','Canadian Malting Co Ltd',2.20,3.50,1.0368),(35,'CMC Quebecoise Malt','Canadian Malting Co Ltd',2.30,3.50,1.0368),(36,'CMC Maritime Malt','Canadian Malting Co Ltd',2.20,3.50,1.0368),(37,'CMC New Englander Malt','Canadian Malting Co Ltd',2.20,3.50,1.0368),(38,'CMC White Wheat Malt','Canadian Malting Co Ltd',1.50,2.50,1.0368),(39,'CMC Munich Malt','Canadian Malting Co Ltd',6.00,10.00,1.0368),(40,'CMC Rye Malt','Canadian Malting Co Ltd',1.80,3.20,1.0373),(41,'CMC Superior Pilsen Malt','Canadian Malting Co Ltd',1.40,1.90,1.0368),(42,'CMC Superior Pale Ale Malt','Canadian Malting Co Ltd',2.00,3.50,1.0368),(43,'Maris Otter Pale Ale Malt','Thomas Fawcett & Sons',2.30,3.00,1.0368),(44,'Halcyon Pale Ale Malt','Thomas Fawcett & Sons',2.30,3.00,1.0368),(45,'Golden Promise Pale Ale Malt','Thomas Fawcett & Sons',2.30,3.00,1.0368),(46,'Winter Barley Pale Ale Malt','Thomas Fawcett & Sons',2.30,3.00,1.0368),(47,'Spring Barley Pale Ale Malt','Thomas Fawcett & Sons',2.30,3.00,1.0368),(48,'Maris Otter Low Colour Malt','Thomas Fawcett & Sons',1.50,2.10,1.0368),(49,'Lager Malt','Thomas Fawcett & Sons',1.50,2.10,1.0368),(50,'Mild Ale Malt','Thomas Fawcett & Sons',3.50,4.00,1.0368),(51,'Vienna Malt','Thomas Fawcett & Sons',4.00,7.00,1.0363),(52,'Munich Malt','Thomas Fawcett & Sons',9.00,12.00,1.0363),(53,'Wheat Malt','Thomas Fawcett & Sons',1.50,2.10,1.0368),(54,'Oat Malt','Thomas Fawcett & Sons',1.50,3.00,1.0276),(55,'Rye Malt','Thomas Fawcett & Sons',2.30,3.80,1.0345),(56,'Caramalt','Thomas Fawcett & Sons',10.00,12.00,1.0322),(57,'Pale Crystal Malt','Thomas Fawcett & Sons',20.00,30.00,1.0322),(58,'Crystal Malt I','Thomas Fawcett & Sons',40.00,50.00,1.0322),(59,'Crystal Malt II','Thomas Fawcett & Sons',60.00,70.00,1.0322),(60,'Dark Crystal I','Thomas Fawcett & Sons',80.00,90.00,1.0322),(61,'Dark Crystal II','Thomas Fawcett & Sons',110.00,130.00,1.0322),(62,'Crystal Wheat Malt','Thomas Fawcett & Sons',45.00,75.00,1.0322),(63,'Crystal Rye Malt','Thomas Fawcett & Sons',45.00,95.00,1.0322),(64,'Amber Malt','Thomas Fawcett & Sons',38.00,48.00,1.0322),(65,'Brown Malt','Thomas Fawcett & Sons',66.00,76.00,1.0322),(66,'Pale Chocolate Malt','Thomas Fawcett & Sons',200.00,260.00,1.0322),(67,'Chocolate Malt','Thomas Fawcett & Sons',390.00,450.00,1.0322),(68,'Black Malt','Thomas Fawcett & Sons',490.00,600.00,1.0322),(69,'Roasted Malt','Thomas Fawcett & Sons',490.00,600.00,1.0315),(70,'Roasted Wheat','Thomas Fawcett & Sons',250.00,400.00,1.0322),(71,'Roasted Rye','Thomas Fawcett & Sons',140.00,240.00,1.0311),(72,'Peated Malt','Thomas Fawcett & Sons',1.50,3.50,1.0368),(73,'Torrefied Wheat','Thomas Fawcett & Sons',1.50,3.00,1.0331),(74,'Flaked Barley','Thomas Fawcett & Sons',1.50,3.00,1.0294),(75,'Flaked Maize','Thomas Fawcett & Sons',1.50,3.00,1.0345),(76,'Premium 2 Row Malt','Great Western Malting Co',2.00,2.00,1.0373),(77,'Northwest Pale Ale Malt','Great Western Malting Co',3.00,3.00,1.0373),(78,'Superior Pilsen','Great Western Malting Co',1.60,1.60,1.0373),(79,'Washington State Select 2 Row Malt','Great Western Malting Co',2.00,2.00,1.0373),(80,'California State Select 2 Row Malt','Great Western Malting Co',2.00,2.00,1.0373),(81,'Munich Malt','Great Western Malting Co',10.00,10.00,1.0368),(82,'Vienna Malt','Great Western Malting Co',4.00,4.00,1.0373),(83,'Wheat Malt','Great Western Malting Co',4.00,4.00,1.0391),(84,'Melanoidin','Great Western Malting Co',30.00,30.00,1.0345),(85,'Dextrapils','Great Western Malting Co',1.50,1.50,1.0368),(86,'C15','Great Western Malting Co',15.00,15.00,1.0322),(87,'C30','Great Western Malting Co',30.00,30.00,1.0322),(88,'C40','Great Western Malting Co',40.00,40.00,1.0322),(89,'C60','Great Western Malting Co',60.00,60.00,1.0322),(90,'C75','Great Western Malting Co',75.00,75.00,1.0322),(91,'C120','Great Western Malting Co',120.00,120.00,1.0322),(92,'C150','Great Western Malting Co',150.00,150.00,1.0322),(93,'Crystal Wheat','Great Western Malting Co',45.00,50.00,1.0322),(94,'Organic 2-Row','Great Western Malting Co',2.00,2.00,1.0373),(95,'Organic Munich','Great Western Malting Co',10.00,10.00,1.0368),(96,'Organic Crystal 15','Great Western Malting Co',15.00,15.00,1.0322),(97,'Organic Crystal 40','Great Western Malting Co',40.00,40.00,1.0322),(98,'Organic Crystal 60','Great Western Malting Co',60.00,60.00,1.0322),(99,'Organic Wheat Malt','Great Western Malting Co',4.00,4.00,1.0322),(100,'Abbey Malt','Weyermann',16.00,19.00,1.0345),(101,'Acidulated Malt','Weyermann',1.50,5.10,1.0368),(102,'Barke Munich Malt','Weyermann',6.90,8.80,1.0359),(103,'Barke Pilsner Malt','Weyermann',1.50,2.20,1.0370),(104,'Barke Vienna Malt','Weyermann',2.80,3.90,1.0363),(105,'Beech Smoked Barley Malt','Weyermann',2.10,3.60,1.0354),(106,'Bioland CARAFA','Weyermann',376.00,451.00,1.0299),(107,'Bioland CARAHELL','Weyermann',8.10,11.80,1.0340),(108,'Bioland CARAMUNICH','Weyermann',41.80,49.30,1.0336),(109,'Bioland CARAPILS','Weyermann',1.50,3.00,1.0345),(110,'Bioland CARARED','Weyermann',15.60,23.10,1.0340),(111,'Bioland Munich Malt','Weyermann',7.20,9.50,1.0359),(112,'Bioland Pale Ale Malt','Weyermann',2.60,3.40,1.0363),(113,'Bioland Pale Wheat Malt','Weyermann',1.70,2.40,1.0373),(114,'Bioland Pilsner Malt','Weyermann',1.50,2.20,1.0359),(115,'Bioland Rye Malt','Weyermann',2.10,4.30,1.0373),(116,'Bioland Spelt Malt','Weyermann',1.70,3.20,1.0368),(117,'Bioland Vienna Malt','Weyermann',2.80,3.90,1.0363),(118,'Bohemian Pilsner Malt','Weyermann',1.70,2.40,1.0368),(119,'CARAAMBER','Weyermann',23.00,31.00,1.0345),(120,'CARAAROMA','Weyermann',131.00,169.00,1.0340),(121,'CARABELGE','Weyermann',11.80,13.70,1.0340),(122,'CARABOHEMIAN','Weyermann',64.00,83.00,1.0336),(123,'CARAFA Special Type 1','Weyermann',300.00,375.00,1.0299),(124,'CARAFA Special Type 2','Weyermann',413.00,450.00,1.0299),(125,'CARAFA Special Type 3','Weyermann',488.00,563.00,1.0299),(126,'CARAFA Type 1','Weyermann',300.00,375.00,1.0299),(127,'CARAFA Type 2','Weyermann',413.00,450.00,1.0299),(128,'CARAFA Type 3','Weyermann',488.00,563.00,1.0299),(129,'CARAHELL','Weyermann',8.10,11.80,1.0340),(130,'CARAMUNICH Type 1','Weyermann',31.00,38.00,1.0336),(131,'CARAMUNICH Type 2','Weyermann',42.00,49.00,1.0336),(132,'CARAMUNICH Type 3','Weyermann',53.00,60.50,1.0336),(133,'CARAPILS','Weyermann',1.50,2.90,1.0345),(134,'CARARED','Weyermann',16.00,23.00,1.0340),(135,'CARARYE','Weyermann',57.00,76.00,1.0340),(136,'CARAWHEAT','Weyermann',42.00,53.00,1.0313),(137,'Chocolate Rye Malt','Weyermann',188.00,300.00,1.0299),(138,'Chocolate Spelt Malt','Weyermann',170.00,376.00,1.0299),(139,'Chocolate Wheat Malt','Weyermann',338.00,451.00,1.0299),(140,'Dark Wheat Malt','Weyermann',6.20,8.10,1.0373),(141,'Demeter CARAAROMA','Weyermann',300.00,400.00,1.0340),(142,'Demeter CARAFA','Weyermann',500.00,600.00,1.0299),(143,'Demeter Chocolate Rye Malt','Weyermann',500.00,800.00,1.0299),(144,'Demeter Pilsner Malt','Weyermann',1.50,2.40,1.0359),(145,'Demeter Roasted Spelt','Weyermann',188.10,375.60,1.0299),(146,'Diastatic Barley Malt','Weyermann',1.50,2.10,1.0359),(147,'Diastatic Wheat Malt','Weyermann',1.70,2.40,1.0373),(148,'Extra Pale Premium Pilsner Malt','Weyermann',1.20,1.40,1.0370),(149,'Floor-Malted Bohemian Dark Malt','Weyermann',5.10,8.10,1.0359),(150,'Floor-Malted Bohemian Pilsner Malt','Weyermann',1.60,2.30,1.0363),(151,'Floor-Malted Bohemian Wheat Malt','Weyermann',1.60,2.50,1.0373),(152,'Melanoidin Malt','Weyermann',23.00,31.00,1.0345),(153,'Munich Malt Type 1','Weyermann',5.10,7.00,1.0359),(154,'Munich Malt Type 2','Weyermann',8.00,9.90,1.0359),(155,'Oak Smoked Wheat Malt','Weyermann',2.10,2.80,1.0377),(156,'Organic Acidulated Malt','Weyermann',2.80,8.10,1.0368),(157,'Organic Beech Smoked Barley Malt','Weyermann',2.10,3.60,1.0354),(158,'Organic Pale Ale Malt','Weyermann',2.60,3.40,1.0363),(159,'Organic Pilsner Malt','Weyermann',1.60,2.10,1.0359),(160,'Organic Vienna Malt','Weyermann',2.80,3.90,1.0359),(161,'Pale Ale Malt','Weyermann',2.60,3.40,1.0363),(162,'Pale Rye Malt','Weyermann',2.00,4.30,1.0373),(163,'Pale Wheat Malt','Weyermann',1.70,2.40,1.0377),(164,'Pilsner Malt','Weyermann',1.50,2.20,1.0370),(165,'Roasted Barley','Weyermann',375.00,488.00,1.0299),(166,'Roasted Rye','Weyermann',188.00,300.00,1.0299),(167,'Special W','Weyermann',105.60,120.60,1.0336),(168,'Spelt Malt','Weyermann',1.70,3.20,1.0368),(169,'Vienna Malt','Weyermann',2.80,3.90,1.0363);
/*!40000 ALTER TABLE `grain` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hops`
--

DROP TABLE IF EXISTS `hops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hops` (
  `ProductID` int(5) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(50) DEFAULT NULL,
  `ShortDescript` varchar(500) DEFAULT NULL,
  `PrimaryUse` int(1) DEFAULT NULL,
  `AlphaAcidMin` float(5,2) DEFAULT NULL,
  `AlphaAcidMax` float(5,2) DEFAULT NULL,
  `CohumuloneMin` int(3) DEFAULT NULL,
  `CohumuloneMax` int(3) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hops`
--

LOCK TABLES `hops` WRITE;
/*!40000 ALTER TABLE `hops` DISABLE KEYS */;
INSERT INTO `hops` VALUES (1,'Admiral',NULL,0,13.00,16.00,37,45),(2,'Ahtanum',NULL,2,3.50,6.50,30,34),(3,'Amarillo',NULL,2,7.00,11.00,20,24),(4,'Aramis',NULL,2,7.90,8.30,20,21),(5,'Aurora',NULL,1,7.00,13.00,20,26),(6,'Bitter Gold',NULL,1,12.00,14.50,36,41),(7,'Blanc',NULL,2,9.00,12.00,22,26),(9,'Bobek',NULL,2,3.50,7.00,27,31),(10,'Brambling Cross',NULL,1,5.00,7.00,33,35),(11,'Bravo',NULL,0,15.00,18.00,28,35),(12,'Brewers Gold US',NULL,0,8.00,11.00,40,48),(13,'Brewers Gold GER',NULL,2,4.50,6.50,40,48),(14,'Bullion',NULL,0,8.10,8.20,38,40),(15,'Cascade',NULL,2,5.50,9.00,30,35),(16,'Celeia',NULL,1,3.00,6.00,26,29),(17,'Centennial',NULL,1,7.00,12.00,23,27),(18,'Challenger',NULL,1,6.50,8.50,20,25),(19,'Chelan',NULL,0,12.00,14.50,33,35),(20,'Chinook',NULL,1,11.50,15.00,27,31),(21,'Citra',NULL,2,11.00,15.00,20,24),(22,'Cluster',NULL,1,6.00,9.00,36,41),(23,'Columbus',NULL,0,14.50,17.50,28,30),(24,'Comet',NULL,0,8.00,10.50,34,37),(25,'Crystal',NULL,2,3.00,6.00,23,26),(26,'Dr. Rudi',NULL,1,10.00,12.00,33,36),(27,'East Kent Golding',NULL,1,4.50,6.50,28,32),(28,'Ekuanot',NULL,2,13.00,15.50,31,36),(29,'Ella',NULL,1,13.30,16.30,34,38),(30,'Falconers Flight 7Cs',NULL,2,9.00,10.50,0,48),(31,'Falconers Flight',NULL,2,9.50,12.00,20,25),(32,'First Gold',NULL,1,5.60,9.30,32,34),(33,'Fuggle',NULL,2,3.00,5.60,25,30),(34,'Galaxy',NULL,1,11.60,16.00,32,42),(35,'Galena',NULL,0,13.00,15.00,34,39),(36,'Glacier',NULL,1,4.00,7.50,13,16),(37,'Gold',NULL,2,3.50,6.50,0,0),(38,'Golding US',NULL,2,3.00,6.50,25,28),(39,'Golding UK',NULL,2,4.00,6.00,23,28),(40,'Green Bullet',NULL,1,11.00,14.00,38,39),(41,'Hallertau',NULL,2,3.50,6.50,23,26),(42,'Hallertau Mittlefruh',NULL,2,3.00,5.50,18,28),(43,'HBC 431',NULL,1,14.00,16.00,18,18),(44,'HBC 438',NULL,1,12.40,14.90,23,25),(45,'HBC 472',NULL,2,9.00,11.00,42,46),(46,'HBC 682',NULL,0,18.00,21.00,30,32),(47,'Helga',NULL,1,5.40,7.30,20,23),(48,'Herkules',NULL,0,12.00,17.00,32,38),(49,'Hersbrucker',NULL,2,1.50,4.00,17,25),(50,'Horizon',NULL,1,8.80,12.00,16,19),(51,'Huell Melon',NULL,2,6.90,7.50,25,30),(52,'Kohatu',NULL,1,6.00,7.00,20,22),(53,'Liberty',NULL,2,4.00,5.50,22,24),(54,'Loral',NULL,1,11.30,12.20,21,24),(55,'Magnum US',NULL,0,12.00,15.50,23,28),(56,'Magnum GER',NULL,0,11.00,16.00,21,29),(57,'Mandarina Bavaria',NULL,2,7.00,10.00,31,35),(58,'Merkur',NULL,1,12.00,14.00,18,20),(59,'Millennium',NULL,0,15.50,18.50,29,35),(60,'Mosaic',NULL,2,10.50,14.00,21,25),(61,'Motueka',NULL,2,6.50,7.50,28,30),(62,'Mt. Hood',NULL,2,4.00,6.50,21,25),(63,'Mt. Rainier',NULL,1,5.00,7.00,21,23),(64,'Nelson Sauvin',NULL,1,12.00,13.00,23,25),(65,'Newport',NULL,0,10.00,12.50,36,38),(66,'Northdown',NULL,1,7.50,9.50,24,30),(67,'Northern Brewer US',NULL,1,7.00,10.00,30,34),(68,'Northern Brewer GER',NULL,1,6.00,10.00,27,32),(69,'Nugget US',NULL,0,13.50,16.00,22,26),(70,'Nugget GER',NULL,0,11.50,14.00,22,30),(71,'Opal',NULL,1,5.00,8.00,13,17),(72,'Pacific Gem',NULL,0,13.00,15.00,36,38),(73,'Pacific Jade',NULL,1,12.00,14.00,23,25),(74,'Pacifica',NULL,2,5.00,6.00,24,26),(75,'Palisade',NULL,2,6.50,10.00,26,28),(76,'Perle US',NULL,1,6.00,9.00,28,31),(77,'Perle GER',NULL,2,4.00,9.00,29,35),(78,'Phoenix',NULL,1,8.00,12.00,0,0),(79,'Pilgrim',NULL,1,9.00,13.00,36,38),(80,'Pioneer',NULL,1,8.50,11.40,33,40),(81,'Polaris',NULL,1,18.00,23.00,22,28),(82,'Premiant',NULL,1,7.00,10.00,18,23),(83,'Pride of Ringwood',NULL,0,8.60,10.50,26,34),(84,'Progress',NULL,1,6.00,7.50,25,30),(85,'Rakau',NULL,1,10.00,11.00,23,25),(86,'Riwaka',NULL,2,4.50,6.50,31,33),(87,'Saaz',NULL,2,2.50,4.50,23,26),(88,'Santiam',NULL,2,6.00,8.50,22,24),(89,'Saphir',NULL,2,2.00,4.00,12,17),(90,'Savinjski Golding',NULL,2,4.50,6.00,25,30),(91,'Select',NULL,2,3.00,6.50,21,27),(92,'Simcoe',NULL,1,11.50,15.00,17,21),(93,'Smaragd',NULL,1,4.00,6.00,13,18),(94,'Sorachi Ace',NULL,1,11.50,14.50,25,28),(95,'Southern Cross',NULL,1,11.00,14.00,25,28),(96,'Sovereign',NULL,1,4.50,6.50,26,30),(97,'Spalt',NULL,2,2.50,5.50,22,29),(98,'Sterling',NULL,2,5.50,8.50,22,27),(99,'Strisselspalt',NULL,2,1.80,2.50,20,23),(100,'Summer',NULL,2,5.60,6.40,20,25),(101,'Summit',NULL,0,15.00,17.00,29,32),(102,'Super Pride',NULL,0,12.50,16.30,26,29),(103,'Sussex',NULL,2,4.30,5.80,32,43),(104,'Sylva',NULL,2,5.60,7.30,20,25),(105,'Tahoma',NULL,2,6.00,7.50,15,17),(106,'Target',NULL,1,9.50,12.50,35,40),(107,'Tetnang US',NULL,2,4.00,6.00,25,28),(108,'Tetnang GER',NULL,2,3.00,6.00,22,29),(109,'Tomahawk',NULL,0,15.00,17.50,28,30),(110,'Tradition',NULL,2,4.00,7.00,24,30),(111,'Triplepearl',NULL,2,10.30,11.20,0,0),(112,'Triskel',NULL,2,8.00,9.00,20,23),(113,'Ultra',NULL,2,9.20,9.70,23,38),(114,'Vanguard',NULL,2,4.50,6.50,18,20),(115,'Wai-Iti',NULL,2,2.50,3.50,22,24),(116,'Waimea',NULL,1,16.00,19.00,22,24),(117,'Wakatu',NULL,1,6.50,8.50,28,30),(118,'Warrior',NULL,0,15.50,18.00,25,28),(119,'Whitbread Golding',NULL,2,5.40,7.70,32,43),(120,'Willamette',NULL,2,4.50,6.50,28,32),(121,'Zeus',NULL,0,14.50,17.50,26,31),(122,'Zythos',NULL,2,10.00,12.20,28,31);
/*!40000 ALTER TABLE `hops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hopsdescriptors`
--

DROP TABLE IF EXISTS `hopsdescriptors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hopsdescriptors` (
  `DescriptorID` int(5) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(20) DEFAULT NULL,
  `ShortDescript` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`DescriptorID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hopsdescriptors`
--

LOCK TABLES `hopsdescriptors` WRITE;
/*!40000 ALTER TABLE `hopsdescriptors` DISABLE KEYS */;
INSERT INTO `hopsdescriptors` VALUES (1,'Cedar','Could range from pencil shavings to a cedar chest.'),(2,'Citrus','Orange, Lemon, Grapefruit, Lime.  In a dry beer lends a palate cleansing effect.'),(3,'Earthy','Tobacco, Soil, Oak etc.  It is kind of the opposite of citrus in a way.'),(4,'Floral','Like lavender or tea or really any number of plants, just not grassy.'),(5,'Fruity','Smells like apples or berries or peaches etc.  Citrus and tropical fruit have their own category and may or may not overlap with this aroma.'),(6,'Grassy','Similar in some respects to earthy, but warmer and more organic.  Like fresh cut grass, hay or organic decomposition ... in a good way'),(7,'Herbal','Think Lemongrass, Juniper; like an earthier citrus ... so to speak.'),(8,'Pine','Pretty classic hops aroma.  Smells like Christmas.'),(9,'Spicy','This will have a sort of peppery smell to it.'),(10,'Stone Fruit','Fruit with stones in.  You know ... like peaches, plums, apricots, cherries.'),(11,'Tropical Fruit','Sweet juicy mango, pineapple etc.  It almost smells juicy if you know what I mean.');
/*!40000 ALTER TABLE `hopsdescriptors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipegrainlines`
--

DROP TABLE IF EXISTS `recipegrainlines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipegrainlines` (
  `LineID` int(5) NOT NULL AUTO_INCREMENT,
  `RecipeID` int(5) DEFAULT NULL,
  `GrainID` int(5) DEFAULT NULL,
  `GrainRatio` float(4,2) DEFAULT NULL,
  PRIMARY KEY (`LineID`),
  KEY `RecipeID` (`RecipeID`),
  KEY `GrainID` (`GrainID`),
  CONSTRAINT `recipegrainlines_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `recipes` (`RecipeID`),
  CONSTRAINT `recipegrainlines_ibfk_2` FOREIGN KEY (`GrainID`) REFERENCES `grain` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipegrainlines`
--

LOCK TABLES `recipegrainlines` WRITE;
/*!40000 ALTER TABLE `recipegrainlines` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipegrainlines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipehopslines`
--

DROP TABLE IF EXISTS `recipehopslines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipehopslines` (
  `LineID` int(5) NOT NULL AUTO_INCREMENT,
  `RecipeID` int(5) DEFAULT NULL,
  `HopsID` int(5) DEFAULT NULL,
  PRIMARY KEY (`LineID`),
  KEY `RecipeID` (`RecipeID`),
  KEY `HopsID` (`HopsID`),
  CONSTRAINT `recipehopslines_ibfk_1` FOREIGN KEY (`RecipeID`) REFERENCES `recipes` (`RecipeID`),
  CONSTRAINT `recipehopslines_ibfk_2` FOREIGN KEY (`HopsID`) REFERENCES `hops` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipehopslines`
--

LOCK TABLES `recipehopslines` WRITE;
/*!40000 ALTER TABLE `recipehopslines` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipehopslines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recipes` (
  `RecipeID` int(5) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(50) DEFAULT NULL,
  `Author` varchar(40) DEFAULT NULL,
  `ShortDescript` varchar(500) DEFAULT NULL,
  `Yeast` int(5) DEFAULT NULL,
  `TargetColour` int(3) DEFAULT NULL,
  `TargetIBU` int(3) DEFAULT NULL,
  `TargetABV` float(3,1) DEFAULT NULL,
  PRIMARY KEY (`RecipeID`),
  KEY `Yeast` (`Yeast`),
  CONSTRAINT `recipes_ibfk_1` FOREIGN KEY (`Yeast`) REFERENCES `yeast` (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yeast`
--

DROP TABLE IF EXISTS `yeast`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yeast` (
  `ProductID` int(5) NOT NULL AUTO_INCREMENT,
  `HumanName` varchar(50) DEFAULT NULL,
  `WyeastID` int(5) DEFAULT NULL,
  `ShortDescript` varchar(500) DEFAULT NULL,
  `Flocculation` int(2) DEFAULT NULL,
  `Attenuation` int(3) DEFAULT NULL,
  `LowTemp` int(3) DEFAULT NULL,
  `HighTemp` int(3) DEFAULT NULL,
  `ABVCeiling` int(3) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yeast`
--

LOCK TABLES `yeast` WRITE;
/*!40000 ALTER TABLE `yeast` DISABLE KEYS */;
INSERT INTO `yeast` VALUES (1,'German Ale',1007,NULL,1,75,13,20,11),(2,'American Wheat',1010,NULL,1,76,14,23,10),(3,'London Ale',1028,NULL,2,75,15,22,11),(4,'American Ale',1056,NULL,2,75,15,22,11),(5,'Irish Ale',1084,NULL,3,73,16,22,12),(6,'British Ale',1098,NULL,3,74,18,22,10),(7,'Whitbread Ale',1099,NULL,4,70,18,24,10),(8,'Ringwood Ale',1187,NULL,5,70,18,23,10),(9,'American Ale II',1272,NULL,3,74,15,22,10),(10,'Thames Valley Ale',1275,NULL,2,74,16,22,10),(11,'London Ale III',1318,NULL,5,73,18,23,10),(12,'Northwest Ale',1332,NULL,5,69,18,24,10),(13,'British Ale II',1335,NULL,5,74,17,24,10),(14,'Denny\'s Favorite 50',1450,NULL,1,75,15,21,10),(15,'West Yorkshire Ale',1469,NULL,5,69,18,22,9),(16,'Scottish Ale',1728,NULL,5,71,13,24,12),(17,'London ESB Ale',1968,NULL,6,69,18,22,9),(18,'Kolsch',2565,NULL,1,75,13,21,10),(19,'Budvar',2000,NULL,4,73,9,13,9),(20,'Urquell',2001,NULL,4,74,9,13,9),(21,'Pilsen Lager',2007,NULL,3,73,9,13,9),(22,'American Lager',2035,NULL,3,75,9,14,9),(23,'Danish Lager',2042,NULL,1,75,8,13,9),(24,'California Lager',2112,NULL,5,69,14,20,9),(25,'Bohemian Lager',2124,NULL,2,75,8,22,9),(26,'Bavarian Lager',2206,NULL,4,75,8,14,9),(27,'Czech Pils',2278,NULL,4,72,10,14,9),(28,'Munich Lager',2308,NULL,3,72,9,13,9),(29,'Octoberfest Lager Blend',2633,NULL,2,75,9,14,9),(30,'Belgian Abbey',1214,NULL,2,76,20,24,12),(31,'Belgian Strong Ale',1388,NULL,1,76,18,27,13),(32,'Belgian Abbey II',1762,NULL,3,75,18,24,12),(33,'Bavarian Wheat Blend',3056,NULL,3,75,18,23,10),(34,'Weihenstephan Weizen',3068,NULL,1,75,18,24,10),(35,'German Wheat',3333,NULL,5,74,17,24,10),(36,'Forbidden Fruit',3463,NULL,1,74,17,24,12),(37,'Belgian Ardennes',3522,NULL,5,74,18,24,12),(38,'Bavarian Wheat',3638,NULL,1,73,18,24,10),(39,'French Saison',3711,NULL,1,80,18,25,12),(40,'Belgian Saison',3724,NULL,1,78,21,35,12),(41,'Trappist High Gravity',3787,NULL,3,74,18,25,12),(42,'Belgian Wheat',3942,NULL,3,74,18,23,12),(43,'Belgian Wit',3944,NULL,3,74,16,24,11),(44,'Belgian Lambic Blend',3278,NULL,NULL,75,17,24,11),(45,'Roeselare Ale Blend',3763,NULL,NULL,80,18,30,11),(46,'Brettanomyces bruxellensis',5112,NULL,3,85,15,24,12),(47,'Lactobacillus',5335,NULL,NULL,NULL,15,35,9),(48,'Brettanomyces lambicus',5526,NULL,3,85,15,24,12),(49,'Pediococcus',5733,NULL,NULL,NULL,15,35,9);
/*!40000 ALTER TABLE `yeast` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-18 18:01:22
