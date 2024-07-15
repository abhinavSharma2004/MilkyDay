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
-- Table structure for table `collection_center`
--

DROP TABLE IF EXISTS `collection_center`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `collection_center` (
  `centerID` int NOT NULL,
  `location` text,
  `milk_collected` int DEFAULT NULL,
  `milk_delivered` int DEFAULT NULL,
  `factoryID` int DEFAULT NULL,
  `adminID` int DEFAULT NULL,
  `amt_paid` int GENERATED ALWAYS AS ((`milk_collected` * 35)) VIRTUAL,
  PRIMARY KEY (`centerID`),
  KEY `factoryID` (`factoryID`),
  KEY `adminID` (`adminID`),
  CONSTRAINT `collection_center_ibfk_1` FOREIGN KEY (`factoryID`) REFERENCES `factory` (`FactoryID`),
  CONSTRAINT `collection_center_ibfk_2` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `collection_center`
--

LOCK TABLES `collection_center` WRITE;
/*!40000 ALTER TABLE `collection_center` DISABLE KEYS */;
INSERT INTO `collection_center` (`centerID`, `location`, `milk_collected`, `milk_delivered`, `factoryID`, `adminID`) VALUES (1,'	Moreh	',7000,6800,1,4),(2,'	Vijaywada	',9971,9771,2,56),(3,'	Salem	',7266,7066,3,45),(4,'	H Nizamuddin	',2635,2435,5,23),(5,'	Kashmere Gate	',9607,9407,6,12),(6,'	Bangalore	',5644,5444,7,12),(7,'	Sambalpur	',6564,6364,45,12),(8,'	Thanjavur	',9721,9521,34,45),(9,'	Ahmedabad	',5026,4826,23,4),(10,'	Bailur, Udupi	',3108,2908,54,3),(11,'	Burdwan	',7531,7331,65,2),(12,'	Ahmedabad	',1970,1770,45,3),(13,'	Hyderabad	',1802,1602,87,2),(14,'	Alwar	',9780,9580,66,3),(15,'	Hyderabad	',1131,931,55,2),(16,'	Bangalore	',1832,1632,45,4),(17,'	Kodagu	',6863,6663,76,2),(18,'	Bhubaneswar	',1236,1036,89,3),(19,'	Bhatkal	',4689,4489,98,2),(20,'	Gwalior	',5191,4991,54,2),(21,'	Bangalore	',6824,6624,34,2),(22,'	Hyderabad	',7869,7669,23,2),(23,'	Rajkot	',9700,9500,21,2),(24,'	Bhopal	',8346,8146,23,2),(25,'	Kasargod	',2046,1846,45,2),(26,'	Pavagada	',3360,3160,63,5),(27,'	Hyderabad	',6271,6071,75,5),(28,'	Chikkamagaluru	',5736,5536,45,5),(29,'	Chennai	',5635,5435,46,5),(30,'	Ahmedabad	',3527,3327,36,5),(31,'	Ahmedabad	',4270,4070,25,5),(32,'	Kolar	',3350,3150,24,56),(33,'	Jaipur	',5375,5175,23,66),(34,'	Belagavi	',3036,2836,53,66),(35,'	Porvorim and Ponda	',3712,3512,54,66),(36,'	Faridabad	',4290,4090,65,66),(37,'	Chennai	',4365,4165,76,6),(38,'	Hoshangabad	',1287,1087,86,6),(39,'	Chennai	',4437,4237,96,6),(40,'	Kalburgi	',4401,4201,76,6),(41,'	Chitradurga	',1752,1552,29,3),(42,'	New Delhi	',4132,3932,72,3),(43,'	Raichur	',3800,3600,35,6),(44,'	Surat	',8147,7947,67,6),(45,'	Dadar, Mumbai	',1488,1288,89,6),(46,'	Gurugram	',1355,1155,9,6),(47,'	Jabalpur	',4919,4719,34,6),(48,'	Porbandar	',2075,1875,23,8),(49,'	Chennai	',5602,5402,57,8),(50,'	Vellore	',6449,6249,38,8),(51,'	Jaipur	',1327,1127,59,8),(52,'	Hyderabad	',6893,6693,32,8),(53,'	Chitradurga	',1188,988,6,8),(54,'	Bhilwara	',7313,7113,82,8),(55,'	Ahmedabad	',8768,8568,30,8),(56,'	Kothur	',8397,8197,83,11),(57,'	New Delhi	',1670,1470,45,11),(58,'	Bharuch	',2963,2763,35,11),(59,'	Mysuru	',1911,1711,56,11),(60,'	Ramayampet	',6701,6501,4,13),(61,'	Vijaywada	',8552,8352,87,13),(62,'	Kolkata	',1144,944,36,13),(63,'	Nashik	',8796,8596,51,14),(64,'	Jaipur	',3531,3331,27,15),(65,'	Moreh	',8961,8761,38,14),(66,'	Vijaywada	',5320,5120,24,13),(67,'	Salem	',3540,3340,23,14),(68,'	H Nizamuddin	',5104,4904,26,13),(69,'	Kashmere Gate	',6188,5988,24,14),(70,'	Bangalore	',4382,4182,47,13),(71,'	Sambalpur	',9539,9339,79,14),(72,'	Thanjavur	',2535,2335,42,15),(73,'	Ahmedabad	',6284,6084,58,14),(74,'	Bailur, Udupi	',6334,6134,45,13),(75,'	Burdwan	',7618,7418,27,14),(76,'	Ahmedabad	',7954,7754,56,15),(77,'	Hyderabad	',1543,1343,42,12),(78,'	Alwar	',7786,7586,74,14),(79,'	Hyderabad	',4558,4358,96,13),(80,'	Bangalore	',5766,5566,45,14),(81,'	Kodagu	',6423,6223,25,15),(82,'	Bhubaneswar	',6194,5994,10,16),(83,'	Bhatkal	',4195,3995,11,12),(84,'	Gwalior	',7191,6991,35,13),(85,'	Bangalore	',7536,7336,26,14),(86,'	Hyderabad	',7432,7232,25,14),(87,'	Rajkot	',1825,1625,35,16),(88,'	Bhopal	',6465,6265,25,17),(89,'	Kasargod	',3941,3741,84,16),(90,'	Pavagada	',6971,6771,74,18),(91,'	Hyderabad	',5364,5164,53,15),(92,'	Chikkamagaluru	',5897,5697,79,14),(93,'	Chennai	',5534,5334,25,13),(94,'	Ahmedabad	',9930,9730,24,13),(95,'	Ahmedabad	',9958,9758,19,13),(96,'	Kolar	',2072,1872,45,12),(97,'	Jaipur	',2949,2749,35,1),(98,'	Belagavi	',3230,3030,85,13),(99,'	Porvorim and Ponda	',2322,2122,73,12),(100,'	Faridabad	',1072,872,62,12);
/*!40000 ALTER TABLE `collection_center` ENABLE KEYS */;
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
