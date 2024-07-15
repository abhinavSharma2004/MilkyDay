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
-- Table structure for table `factory`
--

DROP TABLE IF EXISTS `factory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factory` (
  `FactoryID` int NOT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Milk_Qty` int DEFAULT NULL,
  `adminID` int DEFAULT NULL,
  PRIMARY KEY (`FactoryID`),
  KEY `adminID` (`adminID`),
  CONSTRAINT `factory_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factory`
--

LOCK TABLES `factory` WRITE;
/*!40000 ALTER TABLE `factory` DISABLE KEYS */;
INSERT INTO `factory` VALUES (1,'	Moreh	',6800,1),(2,'	Vijaywada	',9771,2),(3,'	Salem	',7066,3),(4,'	H Nizamuddin	',2435,5),(5,'	Kashmere Gate	',9407,104),(6,'	Bangalore	',5444,104),(7,'	Sambalpur	',6364,9),(8,'	Thanjavur	',9521,6),(9,'	Ahmedabad	',4826,76),(10,'	Bailur, Udupi	',2908,67),(11,'	Burdwan	',7331,78),(12,'	Ahmedabad	',1770,89),(13,'	Hyderabad	',1602,87),(14,'	Alwar	',9580,90),(15,'	Hyderabad	',931,54),(16,'	Bangalore	',1632,65),(17,'	Kodagu	',6663,96),(18,'	Bhubaneswar	',1036,32),(19,'	Bhatkal	',4489,45),(20,'	Gwalior	',4991,65),(21,'	Bangalore	',6624,12),(22,'	Hyderabad	',7669,NULL),(23,'	Rajkot	',9500,NULL),(24,'	Bhopal	',8146,NULL),(25,'	Kasargod	',1846,NULL),(26,'	Pavagada	',3160,NULL),(27,'	Hyderabad	',6071,NULL),(28,'	Chikkamagaluru	',5536,NULL),(29,'	Chennai	',5435,NULL),(30,'	Ahmedabad	',3327,NULL),(31,'	Ahmedabad	',4070,NULL),(32,'	Kolar	',3150,NULL),(33,'	Jaipur	',5175,NULL),(34,'	Belagavi	',2836,NULL),(35,'	Porvorim and Ponda	',3512,NULL),(36,'	Faridabad	',4090,NULL),(37,'	Chennai	',4165,NULL),(38,'	Hoshangabad	',1087,NULL),(39,'	Chennai	',4237,NULL),(40,'	Kalburgi	',4201,NULL),(41,'	Chitradurga	',1552,NULL),(42,'	New Delhi	',3932,NULL),(43,'	Raichur	',3600,NULL),(44,'	Surat	',7947,NULL),(45,'	Dadar, Mumbai	',1288,NULL),(46,'	Gurugram	',1155,NULL),(47,'	Jabalpur	',4719,NULL),(48,'	Porbandar	',1875,NULL),(49,'	Chennai	',5402,NULL),(50,'	Vellore	',6249,NULL),(51,'	Jaipur	',1127,NULL),(52,'	Hyderabad	',6693,NULL),(53,'	Chitradurga	',988,NULL),(54,'	Bhilwara	',7113,NULL),(55,'	Ahmedabad	',8568,NULL),(56,'	Kothur	',8197,NULL),(57,'	New Delhi	',1470,NULL),(58,'	Bharuch	',2763,NULL),(59,'	Mysuru	',1711,NULL),(60,'	Ramayampet	',6501,NULL),(61,'	Vijaywada	',8352,NULL),(62,'	Kolkata	',944,NULL),(63,'	Nashik	',8596,NULL),(64,'	Jaipur	',3331,NULL),(65,'	Moreh	',8761,NULL),(66,'	Vijaywada	',5120,NULL),(67,'	Salem	',3340,NULL),(68,'	H Nizamuddin	',4904,NULL),(69,'	Kashmere Gate	',5988,NULL),(70,'	Bangalore	',4182,NULL),(71,'	Sambalpur	',9339,NULL),(72,'	Thanjavur	',2335,NULL),(73,'	Ahmedabad	',6084,NULL),(74,'	Bailur, Udupi	',6134,NULL),(75,'	Burdwan	',7418,NULL),(76,'	Ahmedabad	',7754,NULL),(77,'	Hyderabad	',1343,NULL),(78,'	Alwar	',7586,NULL),(79,'	Hyderabad	',4358,NULL),(80,'	Bangalore	',5566,NULL),(81,'	Kodagu	',6223,NULL),(82,'	Bhubaneswar	',5994,NULL),(83,'	Bhatkal	',3995,NULL),(84,'	Gwalior	',6991,NULL),(85,'	Bangalore	',7336,NULL),(86,'	Hyderabad	',7232,NULL),(87,'	Rajkot	',1625,NULL),(88,'	Bhopal	',6265,NULL),(89,'	Kasargod	',3741,NULL),(90,'	Pavagada	',6771,NULL),(91,'	Hyderabad	',5164,NULL),(92,'	Chikkamagaluru	',5697,NULL),(93,'	Chennai	',5334,NULL),(94,'	Ahmedabad	',9730,NULL),(95,'	Ahmedabad	',9758,NULL),(96,'	Kolar	',1872,NULL),(97,'	Jaipur	',2749,NULL),(98,'	Belagavi	',3030,NULL),(99,'	Porvorim and Ponda	',2122,NULL),(100,'	Faridabad	',872,NULL);
/*!40000 ALTER TABLE `factory` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 22:43:54
