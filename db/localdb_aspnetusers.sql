-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: localdb
-- ------------------------------------------------------
-- Server version	5.7.16-log

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
-- Table structure for table `aspnetusers`
--

DROP TABLE IF EXISTS `aspnetusers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `aspnetusers` (
  `Id` varchar(128) NOT NULL,
  `Email` varchar(256) DEFAULT NULL,
  `EmailConfirmed` tinyint(1) NOT NULL,
  `PasswordHash` longtext,
  `SecurityStamp` longtext,
  `PhoneNumber` longtext,
  `PhoneNumberConfirmed` tinyint(1) NOT NULL,
  `TwoFactorEnabled` tinyint(1) NOT NULL,
  `LockoutEndDateUtc` datetime DEFAULT NULL,
  `LockoutEnabled` tinyint(1) NOT NULL,
  `AccessFailedCount` int(11) NOT NULL,
  `UserName` varchar(256) NOT NULL,
  `Cedula` varchar(13) NOT NULL,
  PRIMARY KEY (`Id`,`Cedula`),
  UNIQUE KEY `UserNameIndex` (`UserName`) USING HASH,
  UNIQUE KEY `Cedula_UNIQUE` (`Cedula`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `aspnetusers`
--

LOCK TABLES `aspnetusers` WRITE;
/*!40000 ALTER TABLE `aspnetusers` DISABLE KEYS */;
INSERT INTO `aspnetusers` VALUES ('177758d6-2591-44a4-86de-b3962fbc4523','vendedor@bibis.com',0,'AG0GnQl9+SGudKceACskY0FPvb85DyX/EPOHkG2uw7tNutCwqlti894ByMp/oTPD2A==','89444c2a-3c33-4b4a-a93f-ff40e90d3144',NULL,0,0,NULL,1,0,'vendedor@bibis.com','0921234567001'),('376d6228-5254-41e2-ac4c-03fc2d84e483','gbernal096@hotmail.com',0,'ANrIJtCV4hExPjwT9Touici4G2POUuvXYMCyPR02F9n8d8SNl60VUVj/dtWcjBUMtg==','14fd08b5-8d55-459d-8550-2464a19fa055',NULL,0,0,NULL,1,0,'gbernal096@hotmail.com','0992345044001'),('3a71f6fa-9220-4ab9-88cc-db5c4faec62c','gbernal096@gmail.com',0,'ADV6kbaW92YgxQbMrdbTEZHXpQlxn+QjZop+2eH4Fxm6K8zKBl+C4AXFV1bSZZwrBg==','e31e46d3-a15a-40eb-bb72-7bedc573acba',NULL,0,0,NULL,1,0,'gbernal096@gmail.com','09956487915'),('9f605a6a-20b5-46f8-b229-9478412ffa4e','super@hotmail.com',0,'AOb64YIVlBwLlUIZgs4KsFClGJeeb+mkFeSUWhbwjvRyBHAiqqE5drFRtKquGkuiVw==','09322288-6a42-45b0-8303-2d326309cd0b',NULL,0,0,NULL,1,0,'super@hotmail.com','0123456789');
/*!40000 ALTER TABLE `aspnetusers` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-11 23:40:15
