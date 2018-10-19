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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-10-18 18:04:56
