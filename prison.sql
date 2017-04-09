-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: prison
-- ------------------------------------------------------
-- Server version	5.7.17-log

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
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `block` (
  `bID` int(11) NOT NULL,
  `bName` varchar(20) DEFAULT NULL,
  `nInmate` int(11) DEFAULT NULL,
  `oID` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`bID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES (1,'Block A',12,'dheeraj',NULL),(2,'Block B',NULL,'akshay_kc',NULL);
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cases`
--

DROP TABLE IF EXISTS `cases`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cases` (
  `caseID` int(11) NOT NULL,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`caseID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cases`
--

LOCK TABLES `cases` WRITE;
/*!40000 ALTER TABLE `cases` DISABLE KEYS */;
/*!40000 ALTER TABLE `cases` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cell`
--

DROP TABLE IF EXISTS `cell`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cell` (
  `cID` varchar(10) NOT NULL,
  `pID` int(11) DEFAULT NULL,
  `bID` int(11) DEFAULT NULL,
  PRIMARY KEY (`cID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cell`
--

LOCK TABLES `cell` WRITE;
/*!40000 ALTER TABLE `cell` DISABLE KEYS */;
INSERT INTO `cell` VALUES ('A1',1,1);
/*!40000 ALTER TABLE `cell` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inmate`
--

DROP TABLE IF EXISTS `inmate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inmate` (
  `pID` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `release_date` varchar(20) DEFAULT NULL,
  `entry_date` varchar(20) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL,
  `oID` varchar(20) DEFAULT NULL,
  `bID` int(11) DEFAULT NULL,
  `cID` varchar(10) DEFAULT NULL,
  `case_type` varchar(50) DEFAULT NULL,
  `case_desc` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`pID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmate`
--

LOCK TABLES `inmate` WRITE;
/*!40000 ALTER TABLE `inmate` DISABLE KEYS */;
INSERT INTO `inmate` VALUES (1,'Aditya Raju','11/04/2017','9/04/2017','M','dheeraj',2,'A1',NULL,NULL);
/*!40000 ALTER TABLE `inmate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inmate_address`
--

DROP TABLE IF EXISTS `inmate_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inmate_address` (
  `pID` int(11) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `street` varchar(100) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inmate_address`
--

LOCK TABLES `inmate_address` WRITE;
/*!40000 ALTER TABLE `inmate_address` DISABLE KEYS */;
/*!40000 ALTER TABLE `inmate_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitation`
--

DROP TABLE IF EXISTS `visitation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitation` (
  `vID` varchar(20) DEFAULT NULL,
  `vDate` varchar(20) DEFAULT NULL,
  `status` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitation`
--

LOCK TABLES `visitation` WRITE;
/*!40000 ALTER TABLE `visitation` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitor`
--

DROP TABLE IF EXISTS `visitor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitor` (
  `vID` varchar(10) DEFAULT NULL,
  `pID` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `oID` varchar(20) DEFAULT NULL,
  `hint` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `relation` varchar(20) DEFAULT NULL,
  `address` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitor`
--

LOCK TABLES `visitor` WRITE;
/*!40000 ALTER TABLE `visitor` DISABLE KEYS */;
INSERT INTO `visitor` VALUES ('ayushman',NULL,'Ayushman Dey',NULL,'dey3','deydeydey',NULL,NULL),('raghu',1,'Raghu Tiwari','dheeraj','roadies','raghu123','friend','MIT Manipal');
/*!40000 ALTER TABLE `visitor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warden`
--

DROP TABLE IF EXISTS `warden`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warden` (
  `oID` varchar(20) DEFAULT NULL,
  `workxp` int(11) DEFAULT NULL,
  `name` varchar(20) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL,
  `hint` varchar(50) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `bID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warden`
--

LOCK TABLES `warden` WRITE;
/*!40000 ALTER TABLE `warden` DISABLE KEYS */;
INSERT INTO `warden` VALUES ('dheeraj',3,'Dheeraj Lalwani','lalwani','lalwani',NULL,NULL),('akshay_kc',0,'Akshay KC','akshay','Did I ask you?',9876543210,2);
/*!40000 ALTER TABLE `warden` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-04-09 23:39:34
