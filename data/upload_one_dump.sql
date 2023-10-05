CREATE DATABASE  IF NOT EXISTS `Corporate_Finance` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `Corporate_Finance`;
-- MySQL dump 10.13  Distrib 8.0.30, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: Corporate_Finance
-- ------------------------------------------------------
-- Server version	8.1.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Country` (
  `Name` varchar(60) NOT NULL,
  `RegionID` int NOT NULL,
  `RatingID` int NOT NULL,
  `ID` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ID`),
  KEY `RegionID` (`RegionID`),
  KEY `RatingID` (`RatingID`),
  CONSTRAINT `Country_ibfk_1` FOREIGN KEY (`RegionID`) REFERENCES `Region` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `Country_ibfk_2` FOREIGN KEY (`RatingID`) REFERENCES `Rating` (`ID`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=256 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES ('Abu Dhabi',1,5,1),('Albania',2,8,2),('Andorra (Principality of)',3,15,3),('Angola',4,10,4),('Argentina',5,18,5),('Armenia',2,13,6),('Aruba',6,15,7),('Australia',7,7,8),('Austria',3,4,9),('Azerbaijan',2,11,10),('Bahamas',6,8,11),('Bahrain',1,9,12),('Bangladesh',8,13,13),('Barbados',6,19,14),('Belarus',2,18,15),('Belgium',3,6,16),('Belize',5,20,17),('Benin',4,8,18),('Bermuda',6,2,19),('Bolivia',5,9,20),('Bosnia and Herzegovina',2,10,21),('Botswana',4,3,22),('Brazil',5,12,23),('Bulgaria',2,14,24),('Burkina Faso',4,19,25),('Cambodia',8,9,26),('Cameroon',4,9,27),('Canada',9,7,28),('Cape Verde',4,10,29),('Cayman Islands',6,6,30),('Chile',5,2,31),('China',8,1,32),('Colombia',5,15,33),('Congo (Democratic Republic of)',4,10,34),('Congo (Republic of)',4,20,35),('Cook Islands',7,8,36),('Costa Rica',5,9,37),('Côte d\'Ivoire',4,13,38),('Croatia',2,15,39),('Cuba',6,18,40),('Curacao',6,15,41),('Cyprus',3,11,42),('Czech Republic',2,6,43),('Denmark',3,7,44),('Dominican Republic',6,13,45),('Ecuador',5,21,46),('Egypt',4,9,47),('El Salvador',5,21,48),('Estonia',2,1,49),('Ethiopia',4,20,50),('Fiji',8,8,51),('Finland',3,4,52),('France',3,5,53),('Gabon',4,19,54),('Georgia',2,12,55),('Germany',3,7,56),('Ghana',4,18,57),('Greece',3,13,58),('Guatemala',5,11,59),('Guernsey (States of)',3,7,60),('Honduras',5,8,61),('Hong Kong',8,6,62),('Hungary',2,15,63),('Iceland',3,2,64),('India',8,16,65),('Indonesia',8,15,66),('Iraq',1,19,67),('Ireland',3,1,68),('Isle of Man',3,6,69),('Israel',1,1,70),('Italy',3,16,71),('Jamaica',6,9,72),('Japan',8,1,73),('Jersey (States of)',3,7,74),('Jordan',1,8,75),('Kazakhstan',2,15,76),('Kenya',4,9,77),('Korea',8,5,78),('Kuwait',1,1,79),('Kyrgyzstan',2,10,80),('Laos',8,21,81),('Latvia',2,3,82),('Lebanon',1,17,83),('Liechtenstein',3,7,84),('Lithuania',2,2,85),('Luxembourg',3,7,86),('Macao',8,6,87),('Macedonia',2,13,88),('Malaysia',8,3,89),('Maldives',8,19,90),('Mali',4,20,91),('Malta',3,2,92),('Mauritius',4,16,93),('Mexico',5,15,94),('Moldova',2,10,95),('Mongolia',8,10,96),('Montenegro',2,8,97),('Montserrat',6,16,98),('Morocco',4,11,99),('Mozambique',4,20,100),('Namibia',4,8,101),('Netherlands',3,7,102),('New Zealand',7,7,103),('Nicaragua',5,10,104),('Niger',4,10,105),('Nigeria',4,10,106),('Norway',3,7,107),('Oman',1,13,108),('Pakistan',8,19,109),('Panama',5,15,110),('Papua New Guinea',8,9,111),('Paraguay',5,11,112),('Peru',5,14,113),('Philippines',8,15,114),('Poland',2,2,115),('Portugal',3,15,116),('Qatar',1,6,117),('Ras Al Khaimah (Emirate of)',1,3,118),('Romania',2,16,119),('Russia',2,19,120),('Rwanda',4,9,121),('Saudi Arabia',1,1,122),('Senegal',4,13,123),('Serbia',2,12,124),('Sharjah',1,11,125),('Singapore',8,7,126),('Slovakia',2,2,127),('Slovenia',2,3,128),('Solomon Islands',8,19,129),('South Africa',4,12,130),('Spain',3,14,131),('Sri Lanka',8,18,132),('St. Maarten',6,12,133),('St. Vincent & the Grenadines',6,10,134),('Suriname',5,21,135),('Swaziland',4,10,136),('Sweden',3,7,137),('Switzerland',3,7,138),('Taiwan',8,6,139),('Tajikistan',2,10,140),('Tanzania',4,9,141),('Thailand',8,14,142),('Togo',4,10,143),('Trinidad and Tobago',6,12,144),('Tunisia',4,19,145),('Turkey',3,10,146),('Turks and Caicos Islands',6,14,147),('Uganda',4,9,148),('Ukraine',2,21,149),('United Arab Emirates',1,5,150),('United Kingdom',3,6,151),('United States',9,7,152),('Uruguay',5,15,153),('Uzbekistan',2,8,154),('Venezuela',5,17,155),('Vietnam',8,12,156),('Zambia',4,18,157),('Algeria',10,22,158),('Brunei',10,22,159),('Gambia',10,22,160),('Guinea',10,22,161),('Guinea-Bissau',10,22,162),('Guyana',10,22,163),('Haiti',10,22,164),('Iran',10,22,165),('Korea, D.P.R.',10,22,166),('Liberia',10,22,167),('Libya',10,22,168),('Madagascar',10,22,169),('Malawi',10,22,170),('Myanmar',10,22,171),('Sierra Leone',10,22,172),('Somalia',10,22,173),('Sudan',10,22,174),('Syria',10,22,175),('Yemen, Republic',10,22,176),('Zimbabwe',10,22,177);
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rating`
--

DROP TABLE IF EXISTS `Rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Rating` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Rating` varchar(4) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rating`
--

LOCK TABLES `Rating` WRITE;
/*!40000 ALTER TABLE `Rating` DISABLE KEYS */;
INSERT INTO `Rating` VALUES (1,'A1'),(2,'A2'),(3,'A3'),(4,'Aa1'),(5,'Aa2'),(6,'Aa3'),(7,'Aaa'),(8,'B1'),(9,'B2'),(10,'B3'),(11,'Ba1'),(12,'Ba2'),(13,'Ba3'),(14,'Baa1'),(15,'Baa2'),(16,'Baa3'),(17,'C'),(18,'Ca'),(19,'Caa1'),(20,'Caa2'),(21,'Caa3'),(22,'NR');
/*!40000 ALTER TABLE `Rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Region`
--

DROP TABLE IF EXISTS `Region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Region` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Region`
--

LOCK TABLES `Region` WRITE;
/*!40000 ALTER TABLE `Region` DISABLE KEYS */;
INSERT INTO `Region` VALUES (1,'Middle East'),(2,'Eastern Europe & Russia'),(3,'Western Europe'),(4,'Africa'),(5,'Central and South America'),(6,'Caribbean'),(7,'Australia & New Zealand'),(8,'Asia'),(9,'North America'),(10,'Frontier Markets');
/*!40000 ALTER TABLE `Region` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-04 22:25:17
