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
-- Table structure for table `farmer`
--

DROP TABLE IF EXISTS `farmer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `farmer` (
  `FarmerID` int NOT NULL,
  `Farmer_name` varchar(50) DEFAULT NULL,
  `Milk_Qty` int DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `centreID` int DEFAULT NULL,
  `Amt_recv` int GENERATED ALWAYS AS ((`Milk_Qty` * 35)) VIRTUAL,
  PRIMARY KEY (`FarmerID`),
  KEY `centreID` (`centreID`),
  CONSTRAINT `farmer_ibfk_1` FOREIGN KEY (`centreID`) REFERENCES `collection_center` (`centerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `farmer`
--

LOCK TABLES `farmer` WRITE;
/*!40000 ALTER TABLE `farmer` DISABLE KEYS */;
INSERT INTO `farmer` (`FarmerID`, `Farmer_name`, `Milk_Qty`, `DOB`, `Gender`, `centreID`) VALUES (1,'	barjraj	',7000,'1987-08-10','	male	',2),(2,'	ramdin verma	',9971,'1987-08-10','	male	',2),(3,'	sharat chandran	',7266,'1990-10-23','	male	',3),(4,'	birender mandal	',2635,'2000-04-14','	male	',4),(5,'	amit	',9607,'1980-03-26','	male	',5),(6,'	kushal	',5644,'1977-04-21','	male	',6),(7,'	kasid	',6564,'1992-03-30','	male	',7),(8,'	shiv prakash	',9721,'2003-06-08','	male	',8),(9,'	vikram singh	',5026,'2001-05-16','	male	',9),(10,'	sanjay	',3108,'1992-02-25','	male	',10),(11,'	abhi	',7531,'1983-07-23','	male	',11),(12,'	ram dutt gupta	',1970,'1996-09-19','	male	',12),(13,'	khadak singh	',1802,'1987-08-10','	male	',13),(14,'	gurmit singh	',9780,'1990-10-23','	male	',14),(15,'	chanderpal	',1131,'2000-04-14','	male	',15),(16,'	aman	',1832,'1980-03-26','	male	',16),(17,'	khursid	',6863,'1977-04-21','	male	',17),(18,'	rajeev	',1236,'1992-03-30','	male	',18),(19,'	durgesh	',4689,'2003-06-08','	male	',19),(20,'	nahar singh	',5191,'2001-05-16','	male	',20),(21,'	ram kumar	',6824,'1992-02-25','	male	',21),(22,'	sunder paal	',7869,'1983-07-23','	male	',23),(23,'	maansingh aswal	',9700,'1996-09-19','	male	',22),(24,'	rohit	',8346,'1987-08-10','	male	',24),(25,'	rohit	',2046,'1990-10-23','	male	',25),(26,'	sparsh	',3360,'2000-04-14','	male	',26),(27,'	santosh	',6271,'1980-03-26','	male	',27),(28,'	santosh	',5736,'1977-04-21','	male	',28),(29,'	punit khandelwal	',5635,'1992-03-30','	male	',29),(30,'	dinesh	',3527,'2003-06-08','	male	',31),(31,'	gulshan	',4270,'2001-05-16','	male	',32),(32,'	arvind kumar yadav	',3350,'1992-02-25','	male	',34),(33,'	nausad	',5375,'1983-07-23','	male	',33),(34,'	gurmit singh	',3036,'1996-09-19','	male	',35),(35,'	md. afsar	',3712,'1987-08-10','	male	',36),(36,'	shiv shakti singh	',4290,'1990-10-23','	male	',37),(37,'	moti lal	',4365,'2000-04-14','	male	',8),(38,'	kausal kumar	',1287,'1980-03-26','	male	',39),(39,'	rohit	',4437,'1977-04-21','	male	',40),(40,'	rohit	',4401,'1992-03-30','	male	',42),(41,'	mohabbat ali	',1752,'2003-06-08','	male	',34),(42,'	raj kumar	',4132,'2001-05-16','	male	',2),(43,'	jaswant singh	',3800,'1992-02-25','	male	',3),(44,'	sevak pitambar lal	',8147,'1983-07-23','	male	',4),(45,'	chotelal	',1488,'1996-09-19','	male	',5),(46,'	amit	',1355,'1987-08-10','	male	',6),(47,'	rupesh	',4919,'1990-10-23','	male	',7),(48,'	midda	',2075,'2000-04-14','	male	',8),(49,'	dharam singh	',5602,'1980-03-26','	male	',9),(50,'	manoj yadav @ manoj	',6449,'1977-04-21','	male	',10),(51,'	ram singh	',1327,'1992-03-30','	male	',11),(52,'	preetam kumar	',6893,'2003-06-08','	male	',12),(53,'	ram kumar	',1188,'2001-05-16','	male	',13),(54,'	sarain	',7313,'1992-02-25','	male	',14),(55,'	pankaj kumar	',8768,'1983-07-23','	male	',15),(56,'	sheak shakir	',8397,'1996-09-19','	male	',16),(57,'	riyasat ali	',1670,'1987-08-10','	male	',17),(58,'	vinit katariya	',2963,'1990-10-23','	male	',18),(59,'	sumit	',1911,'2000-04-14','	male	',19),(60,'	arindra	',6701,'1980-03-26','	male	',20),(61,'	kali charan	',8552,'1977-04-21','	male	',21),(62,'	badshya khan	',1144,'1992-03-30','	male	',23),(63,'	vikash	',8796,'2003-06-08','	male	',22),(64,'	devinder chadda	',3531,'2001-05-16','	male	',24),(65,'	aman	',8961,'1992-02-25','	male	',25),(66,'	mohan singh	',5320,'1983-07-23','	male	',26),(67,'	hemant	',3540,'1996-09-19','	male	',27),(68,'	shivam	',5104,'1987-08-10','	male	',28),(69,'	yash mittal	',6188,'1990-10-23','	male	',29),(70,'	aakash	',4382,'2000-04-14','	male	',31),(71,'	chandesh	',9539,'1980-03-26','	male	',32),(72,'	sumit mitra	',2535,'1977-04-21','	male	',34),(73,'	supriyal sen	',6284,'1992-03-30','	male	',33),(74,'	gajender singh @ goldy	',6334,'2003-06-08','	male	',35),(75,'	pooran chand sharma	',7618,'2001-05-16','	male	',36),(76,'	irfan	',7954,'1992-02-25','	male	',37),(77,'	azaruddin	',1543,'1983-07-23','	male	',8),(78,'	mukul yadav	',7786,'1996-09-19','	male	',39),(79,'	pooran chand sharma	',4558,'1987-08-10','	male	',40),(80,'	manoj	',5766,'1990-10-23','	male	',42),(81,'	sanjay charee	',6423,'2000-04-14','	male	',34),(82,'	raja babu	',6194,'1980-03-26','	male	',2),(83,'	pawan	',4195,'1977-04-21','	male	',3),(84,'	sandeep	',7191,'1992-03-30','	male	',4),(85,'	rajkumar chawla	',7536,'2003-06-08','	male	',5),(86,'	parvesh	',7432,'2001-05-16','	male	',6),(87,'	mohd ataullah	',1825,'1992-02-25','	male	',7),(88,'	neeraj kumar	',6465,'1983-07-23','	male	',8),(89,'	jamil khan	',3941,'1996-09-19','	male	',9),(90,'	yogita	',6971,'1987-08-10','	male	',10),(91,'	rijul aggarwal	',5364,'1990-10-23','	male	',11),(92,'	mohd shakib	',5897,'2000-04-14','	male	',12),(93,'	rahul kumar	',5534,'1980-03-26','	male	',13),(94,'	rajender	',9930,'1977-04-21','	male	',14),(95,'	suraj	',9958,'1992-03-30','	male	',15),(96,'	rizwan	',2072,'2003-06-08','	male	',16),(97,'	sandeep	',2949,'2001-05-16','	male	',17),(98,'	md mustafa	',3230,'1992-02-25','	male	',18),(99,'	har parsad	',2322,'1983-07-23','	male	',19),(100,'	deepak	',1072,NULL,'	male	',NULL);
/*!40000 ALTER TABLE `farmer` ENABLE KEYS */;
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
