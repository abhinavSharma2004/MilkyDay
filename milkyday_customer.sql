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
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `CustomerID` int NOT NULL,
  `Customer_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Phone_no` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`CustomerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'	barjraj	','	male	','1987-10-08','1020238922'),(2,'	ramdin verma	','	male	','1977-12-02','2398735700'),(3,'	sharat chandran	','	male	','1987-08-10','	2502519352	'),(4,'	birender mandal	','	male	','1976-10-23','	2222017333	'),(5,'	amit	','	male	','2000-04-14','	2652323705	'),(6,'	kushal	','	male	','1980-03-26','	2224225954	'),(7,'	kasid	','	male	','1977-04-21','	2222421894	'),(8,'	shiv prakash	','	male	','1992-03-30','	2226704791	'),(9,'	vikram singh	','	male	','2003-06-08','	2226611363	'),(10,'	sanjay	','	male	','2001-05-16','	2223821946	'),(11,'	abhi	','	male	','1992-02-25','1112585414	'),(12,'	ram dutt gupta	','	male	','1983-07-23','	2227562113	'),(13,'	khadak singh	','	male	','1996-09-19','	2652511317	'),(14,'	gurmit singh	','	male	','1987-08-10','	2224228096	'),(15,'	chanderpal	','	male	','1990-10-23','	2226744745	'),(16,'	aman	','	male	','2000-04-14','	2025382059	'),(17,'	khursid	','	male	','1980-03-26','	2228751642	'),(18,'	rajeev	','	male	','1977-04-21','	2228820420	'),(19,'	durgesh	','	male	','1992-03-30','	2224329356	'),(20,'	nahar singh	','	male	','2003-06-08','	2227451536	'),(21,'	ram kumar	','	male	','2001-05-16','	1242348218	'),(22,'	sunder paal	','	male	','1992-02-25','	2222693701	'),(23,'	maansingh aswal	','	male	','1983-07-23','	2222028530	'),(24,'	rohit	','	male	','1996-09-19','	1202512620	'),(25,'	rohit	','	male	','1987-08-10','	4425228447	'),(26,'	sparsh	','	male	','1990-10-23','	8422231875	'),(27,'	santosh	','	male	','2000-04-14','	4428545118	'),(28,'	santosh	','	male	','1980-03-26','	2226825993	'),(29,'	punit khandelwal	','	male	','1977-04-21','	2255737758	'),(30,'	dinesh	','	male	','1992-03-30','	2227660500	'),(31,'	gulshan	','	male	','2003-06-08','	4024750745	'),(32,'	arvind kumar yadav	','	male	','2001-05-16','	2228765798	'),(33,'	nausad	','	male	','1992-02-25','	4428221382	'),(34,'	gurmit singh	','	male	','1983-07-23','	2228051783	'),(35,'	md. afsar	','	male	','1996-09-19','	1126432582	'),(36,'	shiv shakti singh	','	male	','1987-08-10','	1126191890	'),(37,'	moti lal	','	male	','1990-10-23','	4027569000	'),(38,'	kausal kumar	','	male	','2000-04-14','	8026565114	'),(39,'	rohit	','	male	','1980-03-26','	2222040414	'),(40,'	rohit	','	male	','1977-04-21','	2512863645	'),(41,'	mohabbat ali	','	male	','1992-03-30','	2228657921	'),(42,'	raj kumar	','	male	','2003-06-08','	5112391281	'),(43,'	jaswant singh	','	male	','2001-05-16','	2228076390	'),(44,'	sevak pitambar lal	','	male	','1992-02-25','	7925890009	'),(45,'	chotelal	','	male	','1983-07-23','	4023096283	'),(46,'	amit	','	male	','1996-09-19','	2223614109	'),(47,'	rupesh	','	male	','1987-08-10','	1123924636	'),(48,'	midda	','	male	','1990-10-23','	2226859504	'),(49,'	dharam singh	','	male	','2000-04-14','	2228221242	'),(50,'	manoj yadav @ manoj	','	male	','1980-03-26','	1126167104	'),(51,'	ram singh	','	male	','1977-04-21','	4222811745	'),(52,'	preetam kumar	','	male	','1992-03-30','	1123262775	'),(53,'	ram kumar	','	male	','2003-06-08','	2223077600	'),(54,'	sarain	','	male	','2001-05-16','	2225398423	'),(55,'	pankaj kumar	','	male	','1992-02-25','	2266602434	'),(56,'	sheak shakir	','	male	','1983-07-23','	2228045433	'),(57,'	riyasat ali	','	male	','1996-09-19','	2225362021	'),(58,'	vinit katariya	','	male	','1987-08-10','	2223868051	'),(59,'	sumit	','	male	','1990-10-23','	2224147825	'),(60,'	arindra	','	male	','2000-04-14','	2223112410	'),(61,'	kali charan	','	male	','1980-03-26','	2225134191	'),(62,'	badshya khan	','	male	','1977-04-21','	2226305602	'),(63,'	vikash	','	male	','1992-03-30','	2222679881	'),(64,'	devinder chadda	','	male	','2003-06-08','	2228343372	'),(65,'	aman	','	male	','2001-05-16','	7925713848	'),(66,'	mohan singh	','	male	','1992-02-25','5129223868	'),(67,'	hemant	','	male	','1983-07-23','	9222879034	'),(68,'	shivam	','	male	','1996-09-19','	4055632833	'),(69,'	yash mittal	','	male	','1987-08-10','	2224075746	'),(70,'	aakash	','	male	','1990-10-23','	4428274368	'),(71,'	chandesh	','	male	','2000-04-14','	1615015400	'),(72,'	sumit mitra	','	male	','1980-03-26','	2222841123	'),(73,'	supriyal sen	','	male	','1977-04-21','	2224121927	'),(74,'	gajender singh @ goldy	','	male	','1992-03-30','	7922748255	'),(75,'	pooran chand sharma	','	male	','2003-06-08','	2256004426	'),(76,'	irfan	','	male	','2001-05-16','	4023195462	'),(77,'	azaruddin	','	male	','1992-02-25','	2225271086	'),(78,'	mukul yadav	','	male	','1983-07-23','	3112522646	'),(79,'	pooran chand sharma	','	male	','1996-09-19','	7925897482	'),(80,'	manoj	','	male	','1987-08-10','	2256947982	'),(81,'	sanjay charee	','	male	','1990-10-23','	2226341905	'),(82,'	raja babu	','	male	','2000-04-14','	7922140773	'),(83,'	pawan	','	male	','1980-03-26','	2266793910	'),(84,'	sandeep	','	male	','1977-04-21','	2256923126	'),(85,'	rajkumar chawla	','	male	','1992-03-30','	7922742250	'),(86,'	parvesh	','	male	','2003-06-08','	2502452335	'),(87,'	mohd ataullah	','	male	','2001-05-16','	2227682871	'),(88,'	neeraj kumar	','	male	','1992-02-25','	7922762479	'),(89,'	jamil khan	','	male	','1983-07-23','	2652332787	'),(90,'	yogita	','	male	','1996-09-19','	2222691592	'),(91,'	rijul aggarwal	','	male	','1987-08-10','	2227654334	'),(92,'	mohd shakib	','	male	','1990-10-23','	2255906995	'),(93,'	rahul kumar	','	male	','2000-04-14','	4425212639	'),(94,'	rajender	','	male	','1980-03-26','	7922144070	'),(95,'	suraj	','	male	','1977-04-21','	2223436664	'),(96,'	rizwan	','	male	','1992-03-30','	9222847123	'),(97,'	sandeep	','	male	','2003-06-08','	2224454719	'),(98,'	md mustafa	','	male	','2001-05-16','	4066669873	'),(99,'	har parsad	','	male	','1992-02-25','	1292412600	'),(100,'	deepak	','	male	','1983-07-23','	2226862206	'),(101,'Suhana','female','2000-08-19','2238647303'),(102,'Nyasa','female','2002-09-12','9003245678'),(104,'Abhinav Sharma','male','2004-04-23','9102629083');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
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
