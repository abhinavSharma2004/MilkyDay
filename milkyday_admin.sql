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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `adminID` int NOT NULL,
  `admin_name` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `Email_id` varchar(50) DEFAULT NULL,
  `Admin_password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`adminID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'	barjraj	','	male	','	andrewik@outlook.com	','	4=0^Xy08	'),(2,'	ramdin verma	','	male	','	tmaek@sbcglobal.net	','	eD@4HU3G	'),(3,'	sharat chandran	','	male	','	gtewari@aol.com	','	Br=9xfsl	'),(4,'	birender mandal	','	male	','	slaff@live.com	','	3S-VJ05Q	'),(5,'	amit	','	male	','	wbarker@sbcglobal.net	','	e#8R39j4	'),(6,'	kushal	','	male	','	sfoskett@outlook.com	','	w9^DO1K%	'),(7,'	kasid	','	male	','	dmbkiwi@att.net	','	RPML%0m5	'),(8,'	shiv prakash	','	male	','	lpalmer@gmail.com	','	IkSjR%jX	'),(9,'	vikram singh	','	male	','	jschauma@comcast.net	','	KYct?F?3	'),(10,'	sanjay	','	male	','	jorgb@yahoo.com	','	J5!ZjH8+	'),(11,'	abhi	','	male	','	jgwang@live.com	','	9+#08zRX	'),(12,'	ram dutt gupta	','	male	','	sartak@verizon.net	','	Uv11u*G7	'),(13,'	khadak singh	','	male	','	singer@comcast.net	','	eZ9UHkKO	'),(14,'	gurmit singh	','	male	','	yxing@me.com	','	u#=&d2y^	'),(15,'	chanderpal	','	male	','	konst@icloud.com	','	fOJg&Q85	'),(16,'	aman	','	male	','	gmcgath@yahoo.ca	','	6ODV1OJH	'),(17,'	khursid	','	male	','	donev@mac.com	','	911k0-w~	'),(18,'	rajeev	','	male	','	graham@aol.com	','	A$eOsS*E	'),(19,'	durgesh	','	male	','	paley@icloud.com	','	D6&g487p	'),(20,'	nahar singh	','	male	','	ghost@aol.com	','	9sX2@65T	'),(21,'	ram kumar	','	male	','	msusa@icloud.com	','	njp7-WMn	'),(22,'	sunder paal	','	male	','	raines@verizon.net	','	7Ax7RO4H	'),(23,'	maansingh aswal	','	male	','	gator@mac.com	','	Z76qn!xT	'),(24,'	rohit	','	male	','	dcoppit@icloud.com	','	W2Sg6&2?	'),(25,'	rohit	','	male	','	luvirini@mac.com	','	bi=PWN5i	'),(26,'	sparsh	','	male	','	claypool@yahoo.com	','	uU+Veruz	'),(27,'	santosh	','	male	','	wikinerd@att.net	','	B+@Er~SZ	'),(28,'	santosh	','	male	','	rcwil@comcast.net	','	nO6pH1u8	'),(29,'	punit khandelwal	','	male	','	bahwi@optonline.net	','	Y_s8B^CY	'),(30,'	dinesh	','	male	','	malattia@outlook.com	','	hb=D%iL3	'),(31,'	gulshan	','	male	','	garland@verizon.net	','	uXU@BI$3	'),(32,'	arvind kumar yadav	','	male	','	offthelip@yahoo.com	','	MaTdI7Ob	'),(33,'	nausad	','	male	','	fallorn@msn.com	','	tI?rg0@4	'),(34,'	gurmit singh	','	male	','	malvar@icloud.com	','	U%6V=cO3	'),(35,'	md. afsar	','	male	','	galbra@me.com	','	44l-H1vP	'),(36,'	shiv shakti singh	','	male	','	multiplx@comcast.net	','	6z37$G5t	'),(37,'	moti lal	','	male	','	scarlet@sbcglobal.net	','	fvUNxzJA	'),(38,'	kausal kumar	','	male	','	ranasta@att.net	','	j?KNvZrF	'),(39,'	rohit	','	male	','	henkp@yahoo.com	','	5W9a9T5L	'),(40,'	rohit	','	male	','	andrei@me.com	','	279ptb~Z	'),(41,'	mohabbat ali	','	male	','	tromey@me.com	','	tkeaXL=1	'),(42,'	raj kumar	','	male	','	smcnabb@hotmail.com	','	7mZ9uv9X	'),(43,'	jaswant singh	','	male	','	treit@gmail.com	','	GQESy8N8	'),(44,'	sevak pitambar lal	','	male	','	chrisj@live.com	','	mrB48!c-	'),(45,'	chotelal	','	male	','	chunzi@comcast.net	','	vrDJKp48	'),(46,'	amit	','	male	','	avalon@aol.com	','	eN_HTvYz	'),(47,'	rupesh	','	male	','	ntegrity@yahoo.ca	','	OY5J3cuN	'),(48,'	midda	','	male	','	kjohnson@outlook.com	','	jJr@5G~4	'),(49,'	dharam singh	','	male	','	mpiotr@verizon.net	','	Oc2#8IE7	'),(50,'	manoj yadav @ manoj	','	male	','	reziac@live.com	','	63i^F6B#	'),(51,'	ram singh	','	male	','	jhardin@att.net	','	ajUI2R05	'),(52,'	preetam kumar	','	male	','	firstpr@gmail.com	','	SOdd-&3p	'),(53,'	ram kumar	','	male	','	bdbrown@outlook.com	','	niaN0q+h	'),(54,'	sarain	','	male	','	cliffordj@sbcglobal.net	','	50F58now	'),(55,'	pankaj kumar	','	male	','	breegster@outlook.com	','	qm1Fl8~&	'),(56,'	sheak shakir	','	male	','	howler@verizon.net	','	A6wS9Xm6	'),(57,'	riyasat ali	','	male	','	flakeg@hotmail.com	','	F5%DtBhm	'),(58,'	vinit katariya	','	male	','	boomzilla@comcast.net	','	sTc$T53z	'),(59,'	sumit	','	male	','	rfisher@optonline.net	','	9Eo6HpE9	'),(60,'	arindra	','	male	','	hager@optonline.net	','	o$Uh98fd	'),(61,'	kali charan	','	male	','	sriha@yahoo.com	','	S2yN7Nj*	'),(62,'	badshya khan	','	male	','	kenja@comcast.net	','	MeCM8Xl3	'),(63,'	vikash	','	male	','	stefano@yahoo.com	','	tgSigu8_	'),(64,'	devinder chadda	','	male	','	godeke@msn.com	','	vH4d!L&=	'),(65,'	aman	','	male	','	storerm@gmail.com	','	Etk-Xg87	'),(66,'	mohan singh	','	male	','	staffelb@live.com	','	AaCRPQV&	'),(67,'	hemant	','	male	','	giafly@yahoo.ca	','	OlU7Rx#w	'),(68,'	shivam	','	male	','	feamster@gmail.com	','	TgtT+en6	'),(69,'	yash mittal	','	male	','	codex@yahoo.com	','	DXUYYXld	'),(70,'	aakash	','	male	','	natepuri@sbcglobal.net	','	guS8j0L7	'),(71,'	chandesh	','	male	','	tattooman@sbcglobal.net	','	hre44lcH	'),(72,'	sumit mitra	','	male	','	openldap@verizon.net	','	7tIUzCU7	'),(73,'	supriyal sen	','	male	','	parasite@sbcglobal.net	','	DUGYwR81	'),(74,'	gajender singh @ goldy	','	male	','	jfriedl@outlook.com	','	Ly9+@mOP	'),(75,'	pooran chand sharma	','	male	','	rgarton@optonline.net	','	IHhEHNZj	'),(76,'	irfan	','	male	','	malin@icloud.com	','	0-Uq%~kR	'),(77,'	azaruddin	','	male	','	roamer@verizon.net	','	QC2a&HOg	'),(78,'	mukul yadav	','	male	','	scato@yahoo.ca	','	Fp5B#7+T	'),(79,'	pooran chand sharma	','	male	','	jfmulder@msn.com	','	C$1R&NQS	'),(80,'	manoj	','	male	','	jipsen@mac.com	','	BeN1rh-Z	'),(81,'	sanjay charee	','	male	','	seebs@live.com	','	e!qNKWT2	'),(82,'	raja babu	','	male	','	violinhi@sbcglobal.net	','	a!n*0!OR	'),(83,'	pawan	','	male	','	choset@outlook.com	','	al-5#Wai	'),(84,'	sandeep	','	male	','	pereinar@yahoo.ca	','	QP&93Zjj	'),(85,'	rajkumar chawla	','	male	','	cliffordj@mac.com	','	c1B#@lMM	'),(86,'	parvesh	','	male	','	leslie@att.net	','	b1Do%!a1	'),(87,'	mohd ataullah	','	male	','	parkes@att.net	','	P?h!rMA8	'),(88,'	neeraj kumar	','	male	','	horrocks@gmail.com	','	b!9IcPj8	'),(89,'	jamil khan	','	male	','	techie@gmail.com	','	O3M~21jo	'),(90,'	yogita	','	male	','	druschel@yahoo.ca	','	B_a1=fw1	'),(91,'	rijul aggarwal	','	male	','	matloff@verizon.net	','	210IO!mu	'),(92,'	mohd shakib	','	male	','	mavilar@msn.com	','	y&7RDU62	'),(93,'	rahul kumar	','	male	','	manuals@aol.com	','	PK$G=PDu	'),(94,'	rajender	','	male	','	alastair@aol.com	','	Er5JhJQl	'),(95,'	suraj	','	male	','	jbailie@att.net	','	04V7bJ60	'),(96,'	rizwan	','	male	','	jdhildeb@hotmail.com	','	jGv804LX	'),(97,'	sandeep	','	male	','	kayvonf@sbcglobal.net	','	D=H6^26c	'),(98,'	md mustafa	','	male	','	frostman@aol.com	','	5V$8_3~9	'),(99,'	har parsad	','	male	','	morain@comcast.net	','	1#l9K0dq	'),(100,'	deepak	','	male	','	hahsler@me.com	','	MW*L57?C	'),(101,'Shailja','female','shelly@gmail.com','7g(8sr5*7'),(102,'rani','female','rani@raja.com','y75#$rfd'),(103,'abhinav','male','abhi@now.com','p87+(-hf'),(104,'soham','female','soham@hii.com','hello');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
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
