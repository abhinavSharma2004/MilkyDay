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
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `EmployeeID` int NOT NULL,
  `Employee_name` varchar(50) DEFAULT NULL,
  `Salary` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `Job_Role` varchar(30) DEFAULT NULL,
  `centreID` int DEFAULT NULL,
  `factoryID` int DEFAULT NULL,
  `joiningDate` date DEFAULT NULL,
  `timeWorked` int DEFAULT NULL,
  PRIMARY KEY (`EmployeeID`),
  KEY `centreID` (`centreID`),
  KEY `factoryID` (`factoryID`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`centreID`) REFERENCES `collection_center` (`centerID`),
  CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`factoryID`) REFERENCES `factory` (`FactoryID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'	barjraj	',12000,'1980-10-20','	male	','	worker	',NULL,12,'2012-08-09',11),(2,'	ramdin verma	',10000,'1987-08-10','	male	','	worker	',NULL,11,'2023-09-21',1),(3,'	sharat chandran	',10000,'1990-10-23','	male	','	worker	',NULL,12,'2012-08-09',2),(4,'	birender mandal	',10000,'2000-04-14','	male	','	worker	',NULL,14,'2012-08-09',1),(5,'	amit	',10000,'1980-03-26','	male	','	worker	',NULL,13,'2023-09-21',2),(6,'	kushal	',12000,'1977-04-21','	male	','	worker	',NULL,11,'2023-09-21',11),(7,'	kasid	',10000,'1992-03-30','	male	','	worker	',NULL,23,'2023-09-21',1),(8,'	shiv prakash	',10000,'2003-06-08','	male	','	worker	',NULL,18,'2012-08-09',2),(9,'	vikram singh	',10000,'2001-05-16','	male	','	worker	',NULL,12,'2012-08-09',3),(10,'	sanjay	',10000,'1992-02-25','	male	','	worker	',NULL,13,'2012-08-09',1),(11,'	abhi	',10000,'1983-07-23','	male	','	worker	',NULL,14,'2012-08-09',2),(12,'	ram dutt gupta	',10000,'1996-09-19','	male	','	worker	',NULL,17,'2012-08-09',4),(13,'	khadak singh	',10000,'1987-08-10','	male	','	worker	',NULL,14,'2012-08-09',1),(14,'	gurmit singh	',10000,'1990-10-23','	male	','	worker	',NULL,13,'2012-08-09',2),(15,'	chanderpal	',10000,'2000-04-14','	male	','	worker	',NULL,12,'2012-08-09',5),(16,'	aman	',10000,'1980-03-26','	male	','	worker	',NULL,12,'2012-08-09',1),(17,'	khursid	',12000,'1977-04-21','	male	','	worker	',NULL,23,'2012-08-09',11),(18,'	rajeev	',12000,'1992-03-30','	male	','	worker	',NULL,13,'2012-08-09',12),(19,'	durgesh	',10000,'2003-06-08','	male	','	worker	',NULL,13,'2023-09-21',5),(20,'	nahar singh	',14400,'2001-05-16','	male	','	worker	',NULL,13,'2023-09-21',6),(21,'	ram kumar	',10000,'1992-02-25','	male	','	worker	',NULL,12,'2023-09-21',2),(22,'	sunder paal	',14400,'1983-07-23','	male	','	worker	',NULL,13,'2023-09-21',7),(23,'	maansingh aswal	',10000,'1996-09-19','	male	','	worker	',NULL,12,'2023-09-21',2),(24,'	rohit	',10000,'1987-08-10','	male	','	worker	',NULL,23,'2023-09-21',1),(25,'	rohit	',10000,'1990-10-23','	male	','	worker	',NULL,23,'2023-09-21',4),(26,'	sparsh	',10000,'2000-04-14','	male	','	worker	',NULL,24,'2023-09-21',5),(27,'	santosh	',14400,'1980-03-26','	male	','	worker	',NULL,23,'2023-09-21',6),(28,'	santosh	',14400,'1977-04-21','	male	','	worker	',NULL,23,'2023-09-21',7),(29,'	punit khandelwal	',12000,'1992-03-30','	male	','	worker	',NULL,23,'2023-09-21',11),(30,'	dinesh	',12000,'2003-06-08','	male	','	collector	',29,NULL,'2023-09-21',12),(31,'	gulshan	',12000,'2001-05-16','	male	','	collector	',23,NULL,'2023-09-21',10),(32,'	arvind kumar yadav	',12000,'1992-02-25','	male	','	collector	',24,NULL,'2023-09-21',13),(33,'	nausad	',12000,'1983-07-23','	male	','	collector	',23,NULL,'2023-09-21',12),(34,'	gurmit singh	',10000,'1996-09-19','	male	','	collector	',14,NULL,'2023-09-21',1),(35,'	md. afsar	',10000,'1987-08-10','	male	','	collector	',15,NULL,'2023-09-21',1),(36,'	shiv shakti singh	',10000,'1990-10-23','	male	','	collector	',16,NULL,'2023-09-21',2),(37,'	moti lal	',10000,'2000-04-14','	male	','	collector	',12,NULL,'2023-09-21',3),(38,'	kausal kumar	',10000,'1980-03-26','	male	','	collector	',13,NULL,'2023-09-21',2),(39,'	rohit	',10000,'1977-04-21','	male	','	collector	',14,NULL,'2023-09-21',1),(40,'	rohit	',10000,'1992-03-30','	male	','	collector	',15,NULL,'2023-09-21',3),(41,'	mohabbat ali	',10000,'2003-06-08','	male	','	collector	',16,NULL,'2023-09-21',3),(42,'	raj kumar	',10000,'2001-05-16','	male	','	collector	',12,NULL,'2023-09-21',1),(43,'	jaswant singh	',10000,'1992-02-25','	male	','	collector	',18,NULL,'2023-09-21',2),(44,'	sevak pitambar lal	',10000,'1983-07-23','	male	','	collector	',14,NULL,'2023-09-21',4),(45,'	chotelal	',10000,'1996-09-19','	male	','	cleaner	',4,NULL,'2023-09-21',1),(46,'	amit	',10000,'1987-08-10','	male	','	cleaner	',44,NULL,'2023-09-21',2),(47,'	rupesh	',10000,'1990-10-23','	male	','	cleaner	',43,NULL,'2023-09-21',5),(48,'	midda	',10000,'2000-04-14','	male	','	cleaner	',23,NULL,'2023-09-21',1),(49,'	dharam singh	',12000,'1980-03-26','	male	','	cleaner	',23,NULL,'2023-09-21',11),(50,'	manoj yadav @ manoj	',12000,'1977-04-21','	male	','	cleaner	',12,NULL,'2023-09-21',12),(51,'	ram singh	',10000,'1992-03-30','	male	','	cleaner	',14,NULL,'2023-09-21',5),(52,'	preetam kumar	',14400,'2003-06-08','	male	','	cleaner	',15,NULL,'2023-09-21',6),(53,'	ram kumar	',10000,'2001-05-16','	male	','	cleaner	',14,NULL,'2023-09-21',2),(54,'	sarain	',14400,'1992-02-25','	male	','	cleaner	',NULL,19,'2012-08-09',7),(55,'	pankaj kumar	',10000,'1983-07-23','	male	','	cleaner	',NULL,12,'2012-08-09',2),(56,'	sheak shakir	',10000,'1996-09-19','	male	','	cleaner	',NULL,12,'2012-08-09',1),(57,'	riyasat ali	',10000,'1987-08-10','	male	','	cleaner	',NULL,12,'2023-09-21',4),(58,'	vinit katariya	',10000,'1990-10-23','	male	','	cleaner	',NULL,23,'2023-09-21',5),(59,'	sumit	',14400,'2000-04-14','	male	','	cleaner	',NULL,45,'2023-09-21',6),(60,'	arindra	',14400,'1980-03-26','	male	','	cleaner	',NULL,44,'2023-09-21',7),(61,'	kali charan	',12000,'1977-04-21','	male	','	cleaner	',NULL,23,'2023-09-21',11),(62,'	badshya khan	',12000,'1992-03-30','	male	','	cleaner	',NULL,45,'2023-09-21',12),(63,'	vikash	',12000,'2003-06-08','	male	','	cleaner	',NULL,63,'2023-09-21',10),(64,'	devinder chadda	',12000,'2001-05-16','	male	','	cleaner	',NULL,14,'2023-09-21',13),(65,'	aman	',12000,'1992-02-25','	male	','	cleaner	',NULL,22,'2023-09-21',12),(66,'	mohan singh	',10000,'1983-07-23','	male	','	cleaner	',NULL,12,'2023-09-21',1),(67,'	hemant	',10000,'1996-09-19','	male	','	cleaner	',NULL,12,'2023-09-21',1),(68,'	shivam	',10000,'1987-08-10','	male	','	cleaner	',NULL,12,'2023-09-21',2),(69,'	yash mittal	',10000,'1990-10-23','	male	','	manager	',NULL,7,'2023-09-21',3),(70,'	aakash	',10000,'2000-04-14','	male	','	manager	',NULL,5,'2023-09-21',2),(71,'	chandesh	',10000,'1980-03-26','	male	','	manager	',NULL,8,'2023-09-21',1),(72,'	sumit mitra	',10000,'1977-04-21','	male	','	manager	',NULL,9,'2023-09-21',3),(73,'	supriyal sen	',10000,'1992-03-30','	male	','	manager	',12,NULL,'2023-09-21',3),(74,'	gajender singh @ goldy	',10000,'2003-06-08','	male	','	manager	',13,NULL,'2023-09-21',1),(75,'	pooran chand sharma	',10000,'2001-05-16','	male	','	manager	',63,NULL,'2023-09-21',2),(76,'	irfan	',10000,'1992-02-25','	male	','	manager	',84,NULL,'2023-09-21',4),(77,'	azaruddin	',10000,'1983-07-23','	male	','	manager	',24,NULL,'2023-09-21',1),(78,'	mukul yadav	',10000,'1996-09-19','	male	','	manager	',19,NULL,'2023-09-21',2),(79,'	pooran chand sharma	',10000,'1987-08-10','	male	','	manager	',NULL,13,'2023-09-21',5),(80,'	manoj	',10000,'1990-10-23','	male	','	manager	',NULL,23,'2023-09-21',1),(81,'	sanjay charee	',12000,'2000-04-14','	male	','	manager	',NULL,19,'2023-09-21',11),(82,'	raja babu	',12000,'1980-03-26','	male	','	manager	',NULL,12,'2023-09-21',12),(83,'	pawan	',10000,'1977-04-21','	male	','	delivery	',13,34,'2023-09-21',5),(84,'	sandeep	',14400,'1992-03-30','	male	','	delivery	',3,42,'2023-09-21',6),(85,'	rajkumar chawla	',10000,'2003-06-08','	male	','	delivery	',12,52,'2023-09-21',2),(86,'	parvesh	',14400,'2001-05-16','	male	','	delivery	',23,64,'2023-09-21',7),(87,'	mohd ataullah	',10000,'1992-02-25','	male	','	delivery	',23,53,'2023-09-21',2),(88,'	neeraj kumar	',10000,'1983-07-23','	male	','	delivery	',12,24,'2023-09-21',1),(89,'	jamil khan	',10000,'1996-09-19','	male	','	delivery	',11,23,'2023-09-21',4),(90,'	yogita	',10000,'1987-08-10','	male	','	delivery	',11,57,'2023-09-21',5),(91,'	rijul aggarwal	',14400,'1990-10-23','	male	','	delivery	',12,85,'2023-09-21',6),(92,'	mohd shakib	',14400,'2000-04-14','	male	','	delivery	',12,64,'2023-09-21',7),(93,'	rahul kumar	',12000,'1980-03-26','	male	','	delivery	',23,53,'2023-09-21',11),(94,'	rajender	',12000,'1977-04-21','	male	','	delivery	',23,42,'2023-09-21',12),(95,'	suraj	',12000,'1992-03-30','	male	','	delivery	',12,68,'2023-09-21',10),(96,'	rizwan	',12000,'2003-06-08','	male	','	delivery	',11,67,'2023-09-21',13),(97,'	sandeep	',12000,'2001-05-16','	male	','	delivery	',34,45,'2023-09-21',12),(98,'	md mustafa	',10000,'1992-02-25','	male	','	delivery	',56,31,'2023-09-21',1),(99,'	har parsad	',10000,'1983-07-23','	male	','	delivery	',45,12,'2023-09-21',1),(100,'	deepak	',10000,'1976-03-29','	male	','	delivery	',45,12,'2023-09-21',2),(101,'himani',50000,'1987-07-13','female','general manager',NULL,12,'2003-09-05',20);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
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
