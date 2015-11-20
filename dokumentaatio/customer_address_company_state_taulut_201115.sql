CREATE DATABASE  IF NOT EXISTS `asterixdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `asterixdb`;
-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: asterixdb
-- ------------------------------------------------------
-- Server version	5.5.44-0ubuntu0.14.04.1

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
-- Table structure for table `STATE`
--

DROP TABLE IF EXISTS `STATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `STATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `STATE` varchar(255) DEFAULT NULL,
  `STATEID` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `STATE`
--

LOCK TABLES `STATE` WRITE;
/*!40000 ALTER TABLE `STATE` DISABLE KEYS */;
INSERT INTO `STATE` VALUES (1,'new','1'),(2,'cold','2'),(3,'old','3');
/*!40000 ALTER TABLE `STATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMER`
--

DROP TABLE IF EXISTS `CUSTOMER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMER` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(255) DEFAULT NULL,
  `FIRSTNAME` varchar(255) DEFAULT NULL,
  `LASTNAME` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `PHOTO` varchar(255) DEFAULT NULL,
  `ADDESS_ID` int(11) DEFAULT NULL,
  `COMPANY_ID` int(11) DEFAULT NULL,
  `CUSTOMERSTATE_ID` int(11) DEFAULT NULL,
  `SALESPERSON_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_CUSTOMER_COMPANY_ID` (`COMPANY_ID`),
  KEY `FK_CUSTOMER_ADDESS_ID` (`ADDESS_ID`),
  KEY `FK_CUSTOMER_CUSTOMERSTATE_ID` (`CUSTOMERSTATE_ID`),
  KEY `FK_CUSTOMER_SALESPERSON_ID` (`SALESPERSON_ID`),
  CONSTRAINT `FK_CUSTOMER_ADDESS_ID` FOREIGN KEY (`ADDESS_ID`) REFERENCES `ADDRESS` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CUSTOMER_COMPANY_ID` FOREIGN KEY (`COMPANY_ID`) REFERENCES `COMPANY` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CUSTOMER_CUSTOMERSTATE_ID` FOREIGN KEY (`CUSTOMERSTATE_ID`) REFERENCES `STATE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `FK_CUSTOMER_SALESPERSON_ID` FOREIGN KEY (`SALESPERSON_ID`) REFERENCES `EMPLOYEE` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=83 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (8,'minna@nokia.com','Minna','Malliasiakas','123 221 3213','c8.jpg',1,1,1,2),(9,'anna.asiakas@digia.fi','Anna','Asiakas','0400 432 7890','c9.jpg',2,2,1,2),(11,'mikko.malliasiakas@mokia.com','Mikko','Malliasiakas','044-1','c11.jpg',3,3,1,2),(12,'minna.jt@hopia.fi','Minna','Joulutonttu','040-22','c12.jpg',4,4,1,2),(13,'jaakkis@kuvalab.fi','Jaakko','Juovikkainen','013-33','c13.jpg',5,5,1,2),(20,'juuso.tehola@novie.fi','Juuso','Tehola','044 674 7895','c20.jpg',6,6,1,2),(21,'marjaliisa.heikkila@prevertos.fi','Marja-Liisa','Heikkilä','123','c21.jpg',7,7,2,2),(22,'juuso.juusela@yritysmyynti.fi','Juuso','Juusela','123 673 191','c22.jpg',8,8,3,3),(49,'anna.asiakas@mofea.com','Anna','Asiakas','999','c49.jpg',9,9,1,9),(54,'kalle.kaivanto@dystos.com','Kalle','Kaivanto','222','c54.jpg',10,10,1,2),(79,'hakkis@kotipojat.fi','Heli','Hakkeri','000 002 0002','c79.jpg',11,11,2,2),(80,'kirsi.kakkula@rakennuspalvelu.fi','Kirsi','Kakkula','456 349 2345','c80.jpg',12,12,3,6),(81,'henna.haapala@ittaso.fi','Henna','Haapala','090 123 4567','c81.jpg',13,13,3,6),(82,'juha.ruokolainen@koltera.com','Juha','Ruokolainen',' 	040-5884882','c82.jpg',14,14,1,2);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPANY`
--

DROP TABLE IF EXISTS `COMPANY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPANY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_COMPANY_ADDRESS_ID` (`ADDRESS_ID`),
  CONSTRAINT `FK_COMPANY_ADDRESS_ID` FOREIGN KEY (`ADDRESS_ID`) REFERENCES `ADDRESS` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY`
--

LOCK TABLES `COMPANY` WRITE;
/*!40000 ALTER TABLE `COMPANY` DISABLE KEYS */;
INSERT INTO `COMPANY` VALUES (1,'Nokia',1),(2,'Digia',2),(3,'Mokia',3),(4,'Hopia',4),(5,'Kuvalab',5),(6,'Novie',6),(7,'Prevertos',7),(8,'Yritysmyynti Oy',8),(9,'Mofea Ltd',9),(10,'Dystos',10),(11,'Karstulan Kotipojat',11),(12,'Vaajakosken Rakennuspalvelu',12),(13,'IT-Taso Oy',13),(14,'Koltera',14);
/*!40000 ALTER TABLE `COMPANY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ADDRESS`
--

DROP TABLE IF EXISTS `ADDRESS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADDRESS` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY` varchar(255) DEFAULT NULL,
  `POSTOFFICE` varchar(255) DEFAULT NULL,
  `POSTALCODE` varchar(255) DEFAULT NULL,
  `STREETADDRESS` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
INSERT INTO `ADDRESS` VALUES (1,'Finland','Jyväskylä','40100','Firmatie 1'),(2,'Finland','Helsinki','01010','Tellervonkatu 23'),(3,'Finland','Vaajakoski','40800','Reinontie 7'),(4,'Finland','Jyväskylä','40100','Tapionkatu 4'),(5,'Finland','Lahti','30400','Korkeakoskentie 1'),(6,'Finland','Jyväskylä','40300','Juusonkatu 1 B'),(7,'Finland','Jyväskylä','40100','Kuormaajantie 7'),(8,'Finland','Tampere','43210','Korkeakoskentie 11'),(9,'Finland','Kokkola','10010','Kivikkotie 29'),(10,'Finland','Äänekoski','44150','Rautatienkatu 44'),(11,'Finland','Jyväskylä','40100','Vapaudenkatu 14'),(12,'Finland','Jämsä','12345','Kivipelto 2'),(13,'Finland','Huittinen','40351','Ahjokatu 14-16'),(14,'Finland','Espoo','10000','Jadekuja 43 A 7');
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-20 12:11:43
