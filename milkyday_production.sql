CREATE DATABASE  IF NOT EXISTS `milkyday` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `milkyday`;
-- MySQL dump 10.13  Distrib 8.0.32, for Win64 (x86_64)
--
-- Host: localhost    Database: milkyday
-- ------------------------------------------------------
-- Server version	8.0.32

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
-- Table structure for table `production`
--

DROP TABLE IF EXISTS `production`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `production` (
  `s_no` int NOT NULL,
  `productsID` int DEFAULT NULL,
  `factoryID` int DEFAULT NULL,
  `retailerID` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  PRIMARY KEY (`s_no`),
  KEY `productsID` (`productsID`),
  KEY `retailerID` (`retailerID`),
  KEY `factoryID` (`factoryID`),
  CONSTRAINT `production_ibfk_1` FOREIGN KEY (`productsID`) REFERENCES `products` (`productID`),
  CONSTRAINT `production_ibfk_2` FOREIGN KEY (`retailerID`) REFERENCES `retailer` (`RetailerID`),
  CONSTRAINT `production_ibfk_3` FOREIGN KEY (`factoryID`) REFERENCES `factory` (`FactoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `production`
--

LOCK TABLES `production` WRITE;
/*!40000 ALTER TABLE `production` DISABLE KEYS */;
INSERT INTO `production` VALUES (1,1012,5,34,2),(2,1023,6,101,2),(3,1025,78,32,3),(4,1027,57,56,4),(5,1024,35,54,2),(6,1013,5,4,3),(7,1056,25,37,1),(8,1034,27,59,3),(9,1074,24,64,1),(10,1078,13,73,3),(11,1029,56,53,2),(12,1027,34,42,4),(13,1010,74,78,2),(14,1027,78,57,3),(15,1029,29,35,5),(16,1042,27,101,2),(17,1063,10,25,2),(18,1085,27,27,3),(19,1096,29,24,1),(20,1031,6,13,1),(21,1063,63,56,3),(22,1074,85,34,2),(23,1085,96,74,3),(24,1095,31,78,1),(25,1032,63,29,3),(26,1056,74,27,2),(27,1054,95,10,3),(28,1004,32,27,4),(29,1037,56,29,1),(30,1059,54,42,2),(31,1064,4,63,1),(32,1073,37,85,2),(33,1053,59,96,1),(34,1042,64,31,4),(35,1078,73,63,2),(36,1057,53,74,3),(37,1035,6,101,1),(38,1023,78,32,2),(39,1025,57,56,2),(40,1027,35,54,3),(41,1024,5,4,4),(42,1013,25,37,2),(43,1056,27,59,3),(44,1034,24,64,1),(45,1074,13,73,3),(46,1078,56,53,1),(47,1029,34,42,3),(48,1027,74,78,2),(49,1010,78,57,4),(50,1027,29,35,2),(51,1029,27,101,3),(52,1042,10,25,5),(53,1063,27,27,2),(54,1085,29,24,2),(55,1096,6,13,3),(56,1031,63,56,1),(57,1063,85,34,1),(58,1074,96,74,3),(59,1085,31,78,2),(60,1095,63,29,3),(61,1032,74,27,1),(62,1056,95,10,3),(63,1054,32,27,2),(64,1004,56,29,3),(65,1037,54,42,4),(66,1059,4,63,1),(67,1064,37,85,2),(68,1073,59,96,1),(69,1053,64,31,2),(70,1042,73,63,1),(71,1078,53,74,4),(72,1057,6,101,2),(73,1035,78,32,3),(74,1023,57,56,1),(75,1025,35,54,2),(76,1027,5,4,2),(77,1024,25,37,3),(78,1013,27,59,4),(79,1056,24,64,2),(80,1034,13,73,3),(81,1074,56,53,1),(82,1078,34,42,3),(83,1029,74,78,1),(84,1027,78,57,3),(85,1010,29,35,2),(86,1027,27,101,4),(87,1029,10,25,2),(88,1042,27,27,3),(89,1063,29,24,5),(90,1085,6,13,2),(91,1096,63,56,2),(92,1031,85,34,3),(93,1063,96,74,1),(94,1074,31,78,1),(95,1085,63,29,3),(96,1095,74,27,2),(97,1032,95,10,3),(98,1056,32,27,1),(99,1054,56,29,3),(100,1004,54,42,2);
/*!40000 ALTER TABLE `production` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 22:43:55
