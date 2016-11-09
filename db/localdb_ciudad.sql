CREATE DATABASE  IF NOT EXISTS `localdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `localdb`;
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
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idciudad`),
  UNIQUE KEY `idciudad_UNIQUE` (`idciudad`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Ottignies'),(2,'Kessel'),(3,'Cochrane'),(4,'Naumburg'),(5,'FerriŽres'),(6,'Créteil'),(7,'Swindon'),(8,'Zweibrücken'),(9,'Orilla'),(10,'Neusiedl am See'),(11,'Outrijve'),(12,'Barmouth'),(13,'Kolkata'),(14,'Rotello'),(15,'Gujranwala'),(16,'LaSalle'),(17,'Ospedaletto Lodigiano'),(18,'Soria'),(19,'Açailândia'),(20,'Senftenberg'),(21,'Dordrecht'),(22,'Genzano di Lucania'),(23,'Kamoke'),(24,'Stavoren'),(25,'Compiano'),(26,'Columbia'),(27,'St. Thomas'),(28,'San Nicolás'),(29,'Russell'),(30,'Futrono'),(31,'Valverde'),(32,'Talcahuano'),(33,'Latera'),(34,'Barmouth'),(35,'Manukau'),(36,'Caplan'),(37,'Bansberia'),(38,'Tourinne'),(39,'Huntsville'),(40,'Camrose'),(41,'Siedlce'),(42,'Bogaarden'),(43,'St. Albans'),(44,'Friedrichsdorf'),(45,'Dunoon'),(46,'Jauche'),(47,'Aparecida de Goiânia'),(48,'Lleida'),(49,'Genk'),(50,'Pointe-Claire'),(51,'Baarle-Hertog'),(52,'North Vancouver'),(53,'Montalto Uffugo'),(54,'Daly'),(55,'Saint-Mard'),(56,'Midlands'),(57,'Serrungarina'),(58,'Profondeville'),(59,'Barra do Corda'),(60,'Orhangazi'),(61,'Burcht'),(62,'Rawalpindi'),(63,'Ottignies-Louvain-la-Neuve'),(64,'Lanklaar'),(65,'Rothes'),(66,'Cabo de Hornos'),(67,'Villa Santo Stefano'),(68,'Ostrowiec Świętokrzyski'),(69,'Nodebais'),(70,'Kearney'),(71,'St. Ives'),(72,'Leernes'),(73,'Celle'),(74,'Montgomery'),(75,'Nîmes'),(76,'Moricone'),(77,'Rae Bareli'),(78,'Avesta'),(79,'Lamorteau'),(80,'Polpenazze del Garda'),(81,'Fort Laird'),(82,'Armstrong'),(83,'Lewiston'),(84,'Stendal'),(85,'Candidoni'),(86,'Schönebeck'),(87,'Carterton'),(88,'Pointe-Claire'),(89,'Plymouth'),(90,'Vigo'),(91,'Bad Oldesloe'),(92,'Hindeloopen'),(93,'Saskatoon'),(94,'Warburg'),(95,'Fahler'),(96,'Rupelmonde'),(97,'San Isidro'),(98,'Pointe-au-Pic'),(99,'Ajaccio'),(100,'Valleyview');
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-08 23:42:59
