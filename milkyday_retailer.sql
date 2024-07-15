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
-- Table structure for table `retailer`
--

DROP TABLE IF EXISTS `retailer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `retailer` (
  `RetailerID` int NOT NULL,
  `Retailer_name` varchar(50) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `adminID` int DEFAULT NULL,
  PRIMARY KEY (`RetailerID`),
  KEY `adminID` (`adminID`),
  CONSTRAINT `retailer_ibfk_1` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `retailer`
--

LOCK TABLES `retailer` WRITE;
/*!40000 ALTER TABLE `retailer` DISABLE KEYS */;
INSERT INTO `retailer` VALUES (1,'	barjraj	Dairy	','	Moreh	',1),(2,'	ramdin verma	Dairy	','	Vijaywada	',2),(3,'	sharat chandran	Dairy	','	Salem	',3),(4,'	birender mandal	Dairy	','	H Nizamuddin	',4),(5,'	amit	Dairy	','	Kashmere Gate	',5),(6,'	kushal	Dairy	','	Bangalore	',6),(7,'	kasid	Dairy	','	Sambalpur	',104),(8,'	shiv prakash	Dairy	','	Thanjavur	',1),(9,'	vikram singh	Dairy	','	Ahmedabad	',2),(10,'	sanjay	Dairy	','	Bailur, Udupi	',3),(11,'	abhi	Dairy	','	Burdwan	',4),(12,'	ram dutt gupta	Dairy	','	Ahmedabad	',5),(13,'	khadak singh	Dairy	','	Hyderabad	',1),(14,'	gurmit singh	Dairy	','	Alwar	',23),(15,'	chanderpal	Dairy	','	Hyderabad	',23),(16,'	aman	Dairy	','	Bangalore	',12),(17,'	khursid	Dairy	','	Kodagu	',12),(18,'	rajeev	Dairy	','	Bhubaneswar	',13),(19,'	durgesh	Dairy	','	Bhatkal	',12),(20,'	nahar singh	Dairy	','	Gwalior	',24),(21,'	ram kumar	Dairy	','	Bangalore	',45),(22,'	sunder paal	Dairy	','	Hyderabad	',32),(23,'	maansingh aswal	Dairy	','	Rajkot	',45),(24,'	rohit	Dairy	','	Bhopal	',67),(25,'	rohit	Dairy	','	Kasargod	',23),(26,'	sparsh	Dairy	','	Pavagada	',12),(27,'	santosh	Dairy	','	Hyderabad	',24),(28,'	santosh	Dairy	','	Chikkamagaluru	',23),(29,'	punit khandelwal	Dairy	','	Chennai	',53),(30,'	dinesh	Dairy	','	Ahmedabad	',42),(31,'	gulshan	Dairy	','	Ahmedabad	',76),(32,'	arvind kumar yadav	Dairy	','	Kolar	',87),(33,'	nausad	Dairy	','	Jaipur	',95),(34,'	gurmit singh	Dairy	','	Belagavi	',45),(35,'	md. afsar	Dairy	','	Porvorim and Ponda	',47),(36,'	shiv shakti singh	Dairy	','	Faridabad	',56),(37,'	moti lal	Dairy	','	Chennai	',86),(38,'	kausal kumar	Dairy	','	Hoshangabad	',34),(39,'	rohit	Dairy	','	Chennai	',53),(40,'	rohit	Dairy	','	Kalburgi	',74),(41,'	mohabbat ali	Dairy	','	Chitradurga	',83),(42,'	raj kumar	Dairy	','	New Delhi	',98),(43,'	jaswant singh	Dairy	','	Raichur	',9),(44,'	sevak pitambar lal	Dairy	','	Surat	',4),(45,'	chotelal	Dairy	','	Dadar, Mumbai	',5),(46,'	amit	Dairy	','	Gurugram	',2),(47,'	rupesh	Dairy	','	Jabalpur	',3),(48,'	midda	Dairy	','	Porbandar	',4),(49,'	dharam singh	Dairy	','	Chennai	',11),(50,'	manoj yadav @ manoj	Dairy	','	Vellore	',12),(51,'	ram singh	Dairy	','	Jaipur	',11),(52,'	preetam kumar	Dairy	','	Hyderabad	',11),(53,'	ram kumar	Dairy	','	Chitradurga	',76),(54,'	sarain	Dairy	','	Bhilwara	',8),(55,'	pankaj kumar	Dairy	','	Ahmedabad	',76),(56,'	sheak shakir	Dairy	','	Kothur	',45),(57,'	riyasat ali	Dairy	','	New Delhi	',54),(58,'	vinit katariya	Dairy	','	Bharuch	',64),(59,'	sumit	Dairy	','	Mysuru	',65),(60,'	arindra	Dairy	','	Ramayampet	',9),(61,'	kali charan	Dairy	','	Vijaywada	',104),(62,'	badshya khan	Dairy	','	Kolkata	',6),(63,'	vikash	Dairy	','	Nashik	',5),(64,'	devinder chadda	Dairy	','	Jaipur	',4),(65,'	aman	Dairy	','	Moreh	',5),(66,'	mohan singh	Dairy	','	Vijaywada	',104),(67,'	hemant	Dairy	','	Salem	',9),(68,'	shivam	Dairy	','	H Nizamuddin	',3),(69,'	yash mittal	Dairy	','	Kashmere Gate	',2),(70,'	aakash	Dairy	','	Bangalore	',104),(71,'	chandesh	Dairy	','	Sambalpur	',104),(72,'	sumit mitra	Dairy	','	Thanjavur	',4),(73,'	supriyal sen	Dairy	','	Ahmedabad	',6),(74,'	gajender singh @ goldy	Dairy	','	Bailur, Udupi	',8),(75,'	pooran chand sharma	Dairy	','	Burdwan	',9),(76,'	irfan	Dairy	','	Ahmedabad	',2),(77,'	azaruddin	Dairy	','	Hyderabad	',6),(78,'	mukul yadav	Dairy	','	Alwar	',104),(79,'	pooran chand sharma	Dairy	','	Hyderabad	',9),(80,'	manoj	Dairy	','	Bangalore	',3),(81,'	sanjay charee	Dairy	','	Kodagu	',104),(82,'	raja babu	Dairy	','	Bhubaneswar	',8),(83,'	pawan	Dairy	','	Bhatkal	',104),(84,'	sandeep	Dairy	','	Gwalior	',3),(85,'	rajkumar chawla	Dairy	','	Bangalore	',5),(86,'	parvesh	Dairy	','	Hyderabad	',23),(87,'	mohd ataullah	Dairy	','	Rajkot	',12),(88,'	neeraj kumar	Dairy	','	Bhopal	',23),(89,'	jamil khan	Dairy	','	Kasargod	',45),(90,'	yogita	Dairy	','	Pavagada	',12),(91,'	rijul aggarwal	Dairy	','	Hyderabad	',6),(92,'	mohd shakib	Dairy	','	Chikkamagaluru	',24),(93,'	rahul kumar	Dairy	','	Chennai	',23),(94,'	rajender	Dairy	','	Ahmedabad	',8),(95,'	suraj Dairy	','	Ahmedabad	',6),(96,'	rizwan Dairy	','	Kolar	',2),(97,'	sandeep	Dairy	','	Jaipur	',3),(98,'	md mustafa	Dairy	','	Belagavi	',4),(99,'	har parsad	Dairy	','	Porvorim and Ponda	',2),(100,'	deepak	Dairy	','	Faridabad	',3),(101,'Abhinav','Dehradun',104);
/*!40000 ALTER TABLE `retailer` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-26 22:43:56
