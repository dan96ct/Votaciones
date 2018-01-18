CREATE DATABASE  IF NOT EXISTS `bd_votaciones` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci */;
USE `bd_votaciones`;
-- MySQL dump 10.13  Distrib 5.7.20, for macos10.12 (x86_64)
--
-- Host: 127.0.0.1    Database: bd_votaciones
-- ------------------------------------------------------
-- Server version	5.7.20

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
-- Table structure for table `partidos`
--

DROP TABLE IF EXISTS `partidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `siglas` varchar(45) NOT NULL,
  `logo` varchar(100) DEFAULT NULL,
  `votos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partidos`
--

LOCK TABLES `partidos` WRITE;
/*!40000 ALTER TABLE `partidos` DISABLE KEYS */;
INSERT INTO `partidos` VALUES (1,'Partido Popular','PP','imagenes/pp.png',1),(2,'Partido Socialista Obrero Español','PSOE','imagenes/psoe.png',1),(3,'Ciudadanos','Ciudadanos','imagenes/ciudadanos.jpg',0),(4,'Podemos','Podemos','imagenes/podemos.jpg',0);
/*!40000 ALTER TABLE `partidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `votantes`
--

DROP TABLE IF EXISTS `votantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `votantes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nif` varchar(50) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `domicilio` varchar(45) NOT NULL,
  `fecha_nac` date DEFAULT NULL,
  `password` varchar(250) NOT NULL,
  `voto` enum('SI','NO') NOT NULL DEFAULT 'NO',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `votantes`
--

LOCK TABLES `votantes` WRITE;
/*!40000 ALTER TABLE `votantes` DISABLE KEYS */;
INSERT INTO `votantes` VALUES (16,'74524306M','Daniel','Cebrian Tarancon','C/ iniesta n 10','1996-01-09','º¸cÚ!ú¹õî¯’#‚cÀ','SI'),(17,'30414626R','Celia','Alfaro Fernandez','C/ Ayora N7','1996-06-28','º¸cÚ!ú¹õî¯’#‚cÀ','SI'),(18,'33293307W','Cristina','Avila Cebrian','C/ Buenos aires N16','1991-10-08','º¸cÚ!ú¹õî¯’#‚cÀ','NO'),(19,'25816974A','Juan','de las Nieves','C/ Albacete N10','1985-12-06','º¸cÚ!ú¹õî¯’#‚cÀ','NO');
/*!40000 ALTER TABLE `votantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bd_votaciones'
--

--
-- Dumping routines for database 'bd_votaciones'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-01-18 20:39:43
