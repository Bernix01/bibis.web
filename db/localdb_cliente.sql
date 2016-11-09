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
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` varchar(45) DEFAULT NULL,
  `ruc` varchar(13) NOT NULL,
  `direccion` varchar(60) NOT NULL,
  `ciudad` int(11) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcliente`),
  KEY `ciudad_idx` (`ciudad`),
  CONSTRAINT `ciudad` FOREIGN KEY (`ciudad`) REFERENCES `ciudad` (`idciudad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (26,'Guy','Lowery','093-999-9696','1677041522100','712-4497 Commodo Carretera',6,'pretium.aliquet.metus@sedsemegestas.edu'),(27,'Pandora','House','093-984-7597','1649092665009','959-5921 Mauris Ctra.',33,'Cum.sociis@consectetuercursus.net'),(28,'Nicole','Morris','095-864-8952','1611092568000','Apdo.:513-3588 Gravida Avenida',23,'augue@Aliquamadipiscinglobortis.ca'),(29,'Frances','Madden','095-646-2330','1616111533800','7283 Sed Avenida',12,'Sed.nulla.ante@ac.edu'),(30,'Harper','Jones','092-625-6493','1633082216799','420-8118 Pede. Calle',45,'mi.enim.condimentum@vitaesodales.ca'),(31,'Sawyer','Pitts','096-791-2223','1626122431599','942 Nunc Avda.',39,'Phasellus.vitae@malesuada.co.uk'),(32,'Brian','Oneal','090-945-4910','1663092115399','3989 Quis, Calle',47,'nulla@fringilla.edu'),(33,'Grady','Cardenas','096-828-1465','1673011202699','9502 Ligula Carretera',45,'a.odio.semper@tellusAenean.edu'),(34,'Nathan','Gardner','098-231-3989','1638010536999','Apdo.:943-8007 Lorem. Ctra.',37,'Aliquam.ultrices@Proin.net'),(35,'Orson','Scott','098-548-5044','1662093068699','508-1893 Ipsum C.',20,'dolor@natoque.co.uk'),(36,'Fletcher','Cotton','097-686-8928','1649042482599','Apartado núm.: 884, 2764 Vitae C.',19,'faucibus@nisiCum.net'),(37,'Keely','Barker','092-244-8688','1639091396799','Apartado núm.: 969, 9771 Nulla Calle',10,'Aliquam@etarcuimperdiet.co.uk'),(38,'Hilary','Moses','093-880-8168','1635012125199','7726 Dictum Avenida',33,'amet@arcuet.com'),(39,'Thomas','Mclaughlin','099-357-7989','1612112852899','Apdo.:873-2930 Nec Calle',30,'mattis.velit@rhoncus.net'),(40,'Carissa','Potts','099-473-1095','1666050309099','958 Nec Avda.',29,'Etiam.bibendum@lorem.co.uk'),(41,'Chester','Frederick','092-904-6904','1608090468899','Apdo.:305-191 Ullamcorper, ',35,'ante.Nunc@mollisDuis.net'),(42,'Rylee','Hill','095-758-4091','1685030409499','Apdo.:958-7069 Malesuada Avenida',16,'Aliquam.auctor.velit@Suspendisseacmetus.edu'),(43,'Drew','Bennett','098-023-3441','1692120984899','Apdo.:551-8878 Neque C.',25,'Nulla.eu@metuseu.edu'),(44,'Elton','Solomon','099-022-4772','1646012060299','684-8624 Id, Ctra.',24,'enim@nunc.ca'),(45,'Suki','Yates','099-786-8743','1656101718199','Apdo.:261-6313 Mollis. ',9,'scelerisque.neque.Nullam@ac.net'),(46,'Lane','Hale','093-364-1835','1697092678199','Apartado núm.: 583, 9062 Egestas C.',4,'sit.amet.faucibus@blandit.co.uk'),(47,'Quon','Shannon','094-964-5542','1650072569399','7253 Vulputate Avenida',11,'Quisque.purus.sapien@commodo.ca'),(48,'Mannix','Dawson','096-372-7229','1651060610299','635-4270 Ante Avenida',27,'faucibus@Vestibulumanteipsum.edu'),(49,'Clio','Harrell','092-351-3260','1633042142299','8181 Lorem, ',39,'fermentum.vel@antedictumcursus.co.uk'),(50,'Aquila','Bell','092-359-9482','1676082690699','449-8743 Nec Ctra.',45,'orci.consectetuer.euismod@etmalesuada.co.uk'),(76,'Guy','Lowery','093-999-9696','1677041522199','712-4497 Commodo Carretera',6,'pretium.aliquet.metus@sedsemegestas.edu'),(77,'Pandora','House','093-984-7597','1649092665999','959-5921 Mauris Ctra.',33,'Cum.sociis@consectetuercursus.net'),(78,'Nicole','Morris','095-864-8952','1611092568099','Apdo.:513-3588 Gravida Avenida',23,'augue@Aliquamadipiscinglobortis.ca'),(79,'Frances','Madden','095-646-2330','1616111533799','7283 Sed Avenida',12,'Sed.nulla.ante@ac.edu'),(80,'Harper','Jones','092-625-6493','1633082216799','420-8118 Pede. Calle',45,'mi.enim.condimentum@vitaesodales.ca'),(81,'Sawyer','Pitts','096-791-2223','1626122431599','942 Nunc Avda.',39,'Phasellus.vitae@malesuada.co.uk'),(82,'Brian','Oneal','090-945-4910','1663092115399','3989 Quis, Calle',47,'nulla@fringilla.edu'),(83,'Grady','Cardenas','096-828-1465','1673011202699','9502 Ligula Carretera',45,'a.odio.semper@tellusAenean.edu'),(84,'Nathan','Gardner','098-231-3989','1638010536999','Apdo.:943-8007 Lorem. Ctra.',37,'Aliquam.ultrices@Proin.net'),(85,'Orson','Scott','098-548-5044','1662093068699','508-1893 Ipsum C.',20,'dolor@natoque.co.uk'),(86,'Fletcher','Cotton','097-686-8928','1649042482599','Apartado núm.: 884, 2764 Vitae C.',19,'faucibus@nisiCum.net'),(87,'Keely','Barker','092-244-8688','1639091396799','Apartado núm.: 969, 9771 Nulla Calle',10,'Aliquam@etarcuimperdiet.co.uk'),(88,'Hilary','Moses','093-880-8168','1635012125199','7726 Dictum Avenida',33,'amet@arcuet.com'),(89,'Thomas','Mclaughlin','099-357-7989','1612112852899','Apdo.:873-2930 Nec Calle',30,'mattis.velit@rhoncus.net'),(90,'Carissa','Potts','099-473-1095','1666050309099','958 Nec Avda.',29,'Etiam.bibendum@lorem.co.uk'),(91,'Chester','Frederick','092-904-6904','1608090468899','Apdo.:305-191 Ullamcorper, ',35,'ante.Nunc@mollisDuis.net'),(92,'Rylee','Hill','095-758-4091','1685030409499','Apdo.:958-7069 Malesuada Avenida',16,'Aliquam.auctor.velit@Suspendisseacmetus.edu'),(93,'Drew','Bennett','098-023-3441','1692120984899','Apdo.:551-8878 Neque C.',25,'Nulla.eu@metuseu.edu'),(94,'Elton','Solomon','099-022-4772','1646012060299','684-8624 Id, Ctra.',24,'enim@nunc.ca'),(95,'Suki','Yates','099-786-8743','1656101718199','Apdo.:261-6313 Mollis. ',9,'scelerisque.neque.Nullam@ac.net'),(96,'Lane','Hale','093-364-1835','1697092678199','Apartado núm.: 583, 9062 Egestas C.',4,'sit.amet.faucibus@blandit.co.uk'),(97,'Quon','Shannon','094-964-5542','1650072569399','7253 Vulputate Avenida',11,'Quisque.purus.sapien@commodo.ca'),(98,'Mannix','Dawson','096-372-7229','1651060610299','635-4270 Ante Avenida',27,'faucibus@Vestibulumanteipsum.edu'),(99,'Clio','Harrell','092-351-3260','1633042142299','8181 Lorem, ',39,'fermentum.vel@antedictumcursus.co.uk'),(100,'Aquila','Bell','092-359-9482','1676082690699','449-8743 Nec Ctra.',45,'orci.consectetuer.euismod@etmalesuada.co.uk');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-11-08 19:04:05
