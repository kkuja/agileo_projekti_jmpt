-- MySQL dump 10.13  Distrib 5.5.44, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: asterixdb
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADDRESS`
--

LOCK TABLES `ADDRESS` WRITE;
/*!40000 ALTER TABLE `ADDRESS` DISABLE KEYS */;
INSERT INTO `ADDRESS` VALUES (1,'Finland','Jyväskylä','40100','Firmatie 1'),(2,NULL,NULL,NULL,'Katu 2'),(3,NULL,NULL,NULL,'Tie 3'),(4,NULL,NULL,NULL,'testikatu'),(5,NULL,NULL,NULL,'1245 katu uusi jeejee'),(6,NULL,NULL,NULL,'Juusonkatu 1 B'),(7,NULL,NULL,NULL,NULL),(8,NULL,NULL,NULL,NULL),(9,NULL,NULL,NULL,NULL),(10,NULL,NULL,NULL,NULL),(11,NULL,NULL,NULL,NULL),(12,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `ADDRESS` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPANY`
--

LOCK TABLES `COMPANY` WRITE;
/*!40000 ALTER TABLE `COMPANY` DISABLE KEYS */;
INSERT INTO `COMPANY` VALUES (1,'Nokia',1),(2,'Digia',2),(3,'Mokia',1),(4,'Hopia',2);
/*!40000 ALTER TABLE `COMPANY` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMER`
--

LOCK TABLES `CUSTOMER` WRITE;
/*!40000 ALTER TABLE `CUSTOMER` DISABLE KEYS */;
INSERT INTO `CUSTOMER` VALUES (8,'minna?ma.fi','Minna','Malliasiakas','123-2213','122',1,1,1,1),(9,'anna@firma.fi','Anna','Asiakas','111','jokukuva',NULL,NULL,NULL,NULL),(10,'1','1','1','1','1',NULL,NULL,NULL,NULL),(11,'mailiossaMikko','Mikko','Malliasiakas','044-1','kuvaMikko',1,1,1,1),(12,'mailiossaMinna','Minna','Joulutonttu','040-22','kuvaMinna',1,1,1,1),(13,'mailiossaJaakko','Jaakko','Juovikkainen','013-33','kuvaJaakko',1,1,1,1),(14,'janne.testi@testi.com','janne','testi','123-456789','123',2,NULL,NULL,NULL),(15,'ok','janne','testi 2','1234','123',3,NULL,NULL,NULL),(16,'testi3','janne','testi 3','123456','123',NULL,NULL,NULL,NULL),(17,'123','janne','testi 4','123','123',NULL,NULL,NULL,NULL),(18,'123','janne','testi 5','13','123',NULL,NULL,NULL,NULL),(19,'123','janne','testi 6','123','123',NULL,NULL,NULL,NULL),(20,'123','janne testi','7','123','123',4,2,1,1),(21,'123','janne','testi 8','123','123',5,3,2,2),(22,'juusonmaili@oma.fi','Juuso','Juusela','123-673191','--',6,4,3,3),(23,'123','myyja customer','123','123','123',NULL,NULL,NULL,NULL),(24,'123','asiakas','123','123','123',NULL,NULL,NULL,NULL),(25,'132','123','123','123','123',NULL,NULL,NULL,NULL),(26,'124','124','124','124','124',NULL,NULL,NULL,NULL),(27,'125','125','125','125','125',NULL,NULL,NULL,NULL),(28,'122','122','122','122','122',NULL,NULL,NULL,NULL),(29,'121','121','121','121','121',NULL,NULL,NULL,NULL),(30,'121','121','121','121','121',NULL,NULL,NULL,NULL),(31,'111','111','111','111','111',NULL,NULL,NULL,NULL),(32,'111','111','111','111','111',1,NULL,NULL,NULL),(33,'ccc','aaa','bbb','ddd','eee',1,NULL,NULL,NULL),(34,'zzz','xxx','yyy','qqq','www',11,NULL,NULL,NULL),(36,'ccccc','aaaaa','bbbbb','ddddd','eeeee',1,NULL,NULL,NULL),(37,'12123','1233','123123','123123','123123',1,NULL,NULL,NULL),(40,'2','2','2','2','2',1,NULL,NULL,NULL),(41,'1','1','1','1','1',1,NULL,NULL,4),(42,'1','1','1','1','1',1,NULL,NULL,5),(43,'1','1','1','1','1',1,NULL,NULL,6),(44,'sa','sa','sa','sa','sa',1,NULL,NULL,7),(45,'sa','sa','sa','sa','sa',1,NULL,NULL,8),(46,'sa','sa','sa','sa','sa',1,NULL,NULL,9),(49,'1','Anna','Asiakas','1','1',1,1,1,9),(50,'anna@firma.fi','Anna','Asiakas','aaa','aaa',1,1,1,9),(51,'anna@firma.fi','Anna','Asiakas','aaa','aaa',2,2,2,9),(52,'anna@firma.fi','Anna','Asiakas','aaa','aaa',1,1,1,9),(53,'anna@firma.fi','aaa','Asiakas','aaa','aaa',1,1,1,9),(54,'2222','2222','2222','222','222',1,2,1,2),(55,'he','he','he','he','he',2,1,1,3),(56,'ge','ge','ge','ge','ge',1,1,1,2),(57,'ge','ge','ge','ge','ge',1,1,1,4),(58,'ed','ed','ed','ed','ed',2,1,1,5),(59,'111','111','111','111','111',1,1,1,1),(60,'222','222','222','222','222',1,1,1,1),(61,'333','333','333','333','333',5,1,1,2),(62,'444','444','444','444','444',2,2,2,2),(63,'555','555','555','555','555',3,2,1,2),(64,'abc','abc','abc','abc','abc',4,1,1,3),(65,'aaaa','aaaa','aaaa','aaaa','aaaa',3,3,3,3),(66,'dee','dee','dee','dee','dee',1,2,1,1),(67,'gui','gaga','gaa','123','gkuva',2,1,2,1),(68,'gh','gh','gh','gh','gh',1,1,1,1);
/*!40000 ALTER TABLE `CUSTOMER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CUSTOMERSTATE`
--

DROP TABLE IF EXISTS `CUSTOMERSTATE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CUSTOMERSTATE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `state` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CUSTOMERSTATE`
--

LOCK TABLES `CUSTOMERSTATE` WRITE;
/*!40000 ALTER TABLE `CUSTOMERSTATE` DISABLE KEYS */;
INSERT INTO `CUSTOMERSTATE` VALUES (1,'New customer');
/*!40000 ALTER TABLE `CUSTOMERSTATE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEAL`
--

DROP TABLE IF EXISTS `DEAL`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEAL` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DELIVERYCONTRACT` longblob,
  `EXPIRATIONDATE` date DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `DELIVERYSTATE_ID` int(11) DEFAULT NULL,
  `SALESPERSON_ID` int(11) DEFAULT NULL,
  `TECHNICIAN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DEAL_SALESPERSON_ID` (`SALESPERSON_ID`),
  KEY `FK_DEAL_DELIVERYSTATE_ID` (`DELIVERYSTATE_ID`),
  KEY `FK_DEAL_CUSTOMER_ID` (`CUSTOMER_ID`),
  KEY `FK_DEAL_TECHNICIAN_ID` (`TECHNICIAN_ID`),
  CONSTRAINT `FK_DEAL_CUSTOMER_ID` FOREIGN KEY (`CUSTOMER_ID`) REFERENCES `CUSTOMER` (`ID`),
  CONSTRAINT `FK_DEAL_DELIVERYSTATE_ID` FOREIGN KEY (`DELIVERYSTATE_ID`) REFERENCES `STATE` (`ID`),
  CONSTRAINT `FK_DEAL_SALESPERSON_ID` FOREIGN KEY (`SALESPERSON_ID`) REFERENCES `EMPLOYEE` (`ID`),
  CONSTRAINT `FK_DEAL_TECHNICIAN_ID` FOREIGN KEY (`TECHNICIAN_ID`) REFERENCES `EMPLOYEE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEAL`
--

LOCK TABLES `DEAL` WRITE;
/*!40000 ALTER TABLE `DEAL` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEAL` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEAL_DELIVERYOBJECT`
--

DROP TABLE IF EXISTS `DEAL_DELIVERYOBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEAL_DELIVERYOBJECT` (
  `Deal_ID` int(11) NOT NULL,
  `deliveryObjects_ID` int(11) NOT NULL,
  PRIMARY KEY (`Deal_ID`,`deliveryObjects_ID`),
  KEY `FK_DEAL_DELIVERYOBJECT_deliveryObjects_ID` (`deliveryObjects_ID`),
  CONSTRAINT `FK_DEAL_DELIVERYOBJECT_Deal_ID` FOREIGN KEY (`Deal_ID`) REFERENCES `DEAL` (`ID`),
  CONSTRAINT `FK_DEAL_DELIVERYOBJECT_deliveryObjects_ID` FOREIGN KEY (`deliveryObjects_ID`) REFERENCES `DELIVERYOBJECT` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEAL_DELIVERYOBJECT`
--

LOCK TABLES `DEAL_DELIVERYOBJECT` WRITE;
/*!40000 ALTER TABLE `DEAL_DELIVERYOBJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEAL_DELIVERYOBJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DEAL_NOTE`
--

DROP TABLE IF EXISTS `DEAL_NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DEAL_NOTE` (
  `Deal_ID` int(11) NOT NULL,
  `notes_ID` int(11) NOT NULL,
  PRIMARY KEY (`Deal_ID`,`notes_ID`),
  KEY `FK_DEAL_NOTE_notes_ID` (`notes_ID`),
  CONSTRAINT `FK_DEAL_NOTE_Deal_ID` FOREIGN KEY (`Deal_ID`) REFERENCES `DEAL` (`ID`),
  CONSTRAINT `FK_DEAL_NOTE_notes_ID` FOREIGN KEY (`notes_ID`) REFERENCES `NOTE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DEAL_NOTE`
--

LOCK TABLES `DEAL_NOTE` WRITE;
/*!40000 ALTER TABLE `DEAL_NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `DEAL_NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DELIVERY`
--

DROP TABLE IF EXISTS `DELIVERY`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DELIVERY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ENDDATE` date DEFAULT NULL,
  `STARTDATE` date DEFAULT NULL,
  `DELIVERYADDRESS_ID` int(11) DEFAULT NULL,
  `DELIVERYSTATE_ID` int(11) DEFAULT NULL,
  `INVOICE_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DELIVERY_INVOICE_ID` (`INVOICE_ID`),
  KEY `FK_DELIVERY_DELIVERYADDRESS_ID` (`DELIVERYADDRESS_ID`),
  KEY `FK_DELIVERY_DELIVERYSTATE_ID` (`DELIVERYSTATE_ID`),
  CONSTRAINT `FK_DELIVERY_DELIVERYADDRESS_ID` FOREIGN KEY (`DELIVERYADDRESS_ID`) REFERENCES `ADDRESS` (`ID`),
  CONSTRAINT `FK_DELIVERY_DELIVERYSTATE_ID` FOREIGN KEY (`DELIVERYSTATE_ID`) REFERENCES `STATE` (`ID`),
  CONSTRAINT `FK_DELIVERY_INVOICE_ID` FOREIGN KEY (`INVOICE_ID`) REFERENCES `INVOICE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DELIVERY`
--

LOCK TABLES `DELIVERY` WRITE;
/*!40000 ALTER TABLE `DELIVERY` DISABLE KEYS */;
/*!40000 ALTER TABLE `DELIVERY` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DELIVERYOBJECT`
--

DROP TABLE IF EXISTS `DELIVERYOBJECT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DELIVERYOBJECT` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY` varchar(255) DEFAULT NULL,
  `COMMENT` varchar(255) DEFAULT NULL,
  `DELIVERYCOORDINATES` varchar(255) DEFAULT NULL,
  `DELIVERYDATE` date DEFAULT NULL,
  `NAME` varchar(255) DEFAULT NULL,
  `PRODUCTID` varchar(255) DEFAULT NULL,
  `DELIVERYADDRESS_ID` int(11) DEFAULT NULL,
  `DELIVERYOBJSTATE_ID` int(11) DEFAULT NULL,
  `TECHNICIAN_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_DELIVERYOBJECT_DELIVERYOBJSTATE_ID` (`DELIVERYOBJSTATE_ID`),
  KEY `FK_DELIVERYOBJECT_TECHNICIAN_ID` (`TECHNICIAN_ID`),
  KEY `FK_DELIVERYOBJECT_DELIVERYADDRESS_ID` (`DELIVERYADDRESS_ID`),
  CONSTRAINT `FK_DELIVERYOBJECT_DELIVERYADDRESS_ID` FOREIGN KEY (`DELIVERYADDRESS_ID`) REFERENCES `ADDRESS` (`ID`),
  CONSTRAINT `FK_DELIVERYOBJECT_DELIVERYOBJSTATE_ID` FOREIGN KEY (`DELIVERYOBJSTATE_ID`) REFERENCES `STATE` (`ID`),
  CONSTRAINT `FK_DELIVERYOBJECT_TECHNICIAN_ID` FOREIGN KEY (`TECHNICIAN_ID`) REFERENCES `EMPLOYEE` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DELIVERYOBJECT`
--

LOCK TABLES `DELIVERYOBJECT` WRITE;
/*!40000 ALTER TABLE `DELIVERYOBJECT` DISABLE KEYS */;
/*!40000 ALTER TABLE `DELIVERYOBJECT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `EMPLOYEE`
--

DROP TABLE IF EXISTS `EMPLOYEE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `EMPLOYEE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `EMAIL` varchar(255) DEFAULT NULL,
  `PHONE` varchar(255) DEFAULT NULL,
  `ADDRESS_ID` int(11) DEFAULT NULL,
  `WEBUSER_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_EMPLOYEE_ADDRESS_ID` (`ADDRESS_ID`),
  KEY `FK_EMPLOYEE_WEBUSER_ID` (`WEBUSER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `EMPLOYEE`
--

LOCK TABLES `EMPLOYEE` WRITE;
/*!40000 ALTER TABLE `EMPLOYEE` DISABLE KEYS */;
INSERT INTO `EMPLOYEE` VALUES (1,NULL,NULL,NULL,NULL),(2,'jethro@mee.fi','111',1,2),(3,'timo.terava',NULL,1,3),(4,NULL,NULL,1,4),(5,NULL,NULL,1,5),(6,'1',NULL,1,6),(7,'1',NULL,1,7),(8,'1',NULL,1,8),(9,'linuksenmaili','noorde',1,9);
/*!40000 ALTER TABLE `EMPLOYEE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HelloEntity`
--

DROP TABLE IF EXISTS `HelloEntity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HelloEntity` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HelloEntity`
--

LOCK TABLES `HelloEntity` WRITE;
/*!40000 ALTER TABLE `HelloEntity` DISABLE KEYS */;
/*!40000 ALTER TABLE `HelloEntity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `INVOICE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `COMMENT` varchar(255) DEFAULT NULL,
  `EXPIRATIONDATE` date DEFAULT NULL,
  `PRICE` double DEFAULT NULL,
  `TERMOFPAYMENT` date DEFAULT NULL,
  `BILLINGCONTACT_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_INVOICE_BILLINGCONTACT_ID` (`BILLINGCONTACT_ID`),
  CONSTRAINT `FK_INVOICE_BILLINGCONTACT_ID` FOREIGN KEY (`BILLINGCONTACT_ID`) REFERENCES `CUSTOMER` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `INVOICE`
--

LOCK TABLES `INVOICE` WRITE;
/*!40000 ALTER TABLE `INVOICE` DISABLE KEYS */;
/*!40000 ALTER TABLE `INVOICE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NOTE`
--

DROP TABLE IF EXISTS `NOTE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `NOTE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `MESSAGE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `NOTE`
--

LOCK TABLES `NOTE` WRITE;
/*!40000 ALTER TABLE `NOTE` DISABLE KEYS */;
/*!40000 ALTER TABLE `NOTE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALESPERSON`
--

DROP TABLE IF EXISTS `SALESPERSON`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALESPERSON` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `SALESPERSONcol` varchar(45) DEFAULT NULL,
  `employee_ID` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALESPERSON`
--

LOCK TABLES `SALESPERSON` WRITE;
/*!40000 ALTER TABLE `SALESPERSON` DISABLE KEYS */;
INSERT INTO `SALESPERSON` VALUES (1,'1',1);
/*!40000 ALTER TABLE `SALESPERSON` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Table structure for table `authority`
--

DROP TABLE IF EXISTS `authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authority`
--

LOCK TABLES `authority` WRITE;
/*!40000 ALTER TABLE `authority` DISABLE KEYS */;
INSERT INTO `authority` VALUES (1,'ROLE_ADMIN'),(7,'ROLE_BILLER'),(2,'ROLE_BOSS'),(5,'ROLE_CUSTOMER_SERVANT'),(3,'ROLE_SALESPERSON'),(6,'ROLE_SECRETARY'),(4,'ROLE_TECHNICIAN'),(8,'ROLE_USER');
/*!40000 ALTER TABLE `authority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser2`
--

DROP TABLE IF EXISTS `webuser2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password_encrypted` varchar(255) NOT NULL,
  `enabled` tinyint(4) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser2`
--

LOCK TABLES `webuser2` WRITE;
/*!40000 ALTER TABLE `webuser2` DISABLE KEYS */;
INSERT INTO `webuser2` VALUES (1,'pomo','2ee80d71b2ad4884b91c11629bf35fdaf91a34ec9f2814b83e03bcd656b82657ae2d13241a8a4492',1,'Bruce','Springsteen'),(2,'myyjä','b8b8cc8ec8fab80a56c3c2cd6cfd95f8ef57ce0232873aa25e315a82b405b2cbab18919058a31d1c',1,'Jethro','Rostedt'),(3,'teknikko','3218b79fb8ec876fce343771cd74e461dbd52a530fe64aa61892fd4611b146cbaeb618320f3f10fc',1,'Timo','Terävä'),(4,'aspalvelija','903a490a4b41532fb0481b727aa5c13ef5614913fd51f6b66f4ae3016e8d94b796da5b54ea8ebd1f',1,'Antti','Avulias'),(5,'sihteeri','9726af13788a4be9388db98bc2b4d3f9deaa561df2c6dda1e11b8ab62a3f33ed510946358dd46018',1,'Sanna','Sihteerikkö'),(6,'laskuttaja','ca0a2cef72b92b5a3be12e40fd62abccf785c661f467dcb53cc8b0c0d5db5e2ca81f5e1114cf1f1d',1,'Lasse','Laatunen'),(7,'admin99','25d0fc456ce1406be1f2f2536825ded2c2dcdb4d593109fc3b381149d4daae6a57b3226ffc914b45',1,'Paavo','Pääkäyttäjä'),(8,'juuseri','7199e5fbc78f1dfa5b3c63d1c2a619c44a08dc2ffa11c840063660996d883edb3df09ab71374cdd0',1,'Pekka','Peruskäyttäjä'),(9,'adminpomo','505a55efb2e31f28b71d3a0d8b010c8e7d2572bbcb2205de043ef17fd69144368cb9bbf1974e2907',1,'Linus','Torvalds');
/*!40000 ALTER TABLE `webuser2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser2_authority`
--

DROP TABLE IF EXISTS `webuser2_authority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser2_authority` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `webuser2_id` int(11) NOT NULL,
  `authority_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `webuser2_id` (`webuser2_id`),
  KEY `authority_id` (`authority_id`),
  CONSTRAINT `webuser2_authority_ibfk_1` FOREIGN KEY (`webuser2_id`) REFERENCES `webuser2` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `webuser2_authority_ibfk_2` FOREIGN KEY (`authority_id`) REFERENCES `authority` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser2_authority`
--

LOCK TABLES `webuser2_authority` WRITE;
/*!40000 ALTER TABLE `webuser2_authority` DISABLE KEYS */;
INSERT INTO `webuser2_authority` VALUES (1,1,2),(2,2,3),(3,3,4),(4,4,5),(5,5,6),(6,6,7),(7,7,1),(8,8,8),(9,9,1),(10,9,2);
/*!40000 ALTER TABLE `webuser2_authority` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-19 13:04:48
