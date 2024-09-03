CREATE DATABASE  IF NOT EXISTS `Conduct_vehi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_bin */;
USE `Conduct_vehi`;
-- MySQL dump 10.13  Distrib 8.0.34, for macos13 (arm64)
--
-- Host: localhost    Database: Conduct_vehi
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `CONDUCTORES`
--

DROP TABLE IF EXISTS `CONDUCTORES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `CONDUCTORES` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) DEFAULT NULL,
  `apellido` varchar(45) DEFAULT NULL,
  `telefono` int(11) DEFAULT NULL,
  `localidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CONDUCTORES`
--

LOCK TABLES `CONDUCTORES` WRITE;
/*!40000 ALTER TABLE `CONDUCTORES` DISABLE KEYS */;
INSERT INTO `CONDUCTORES` VALUES (1,'victor','juarez',600000,'Barcelona'),(2,'pepe','rubianes',54540,'Tarragona'),(3,'Jose','Elias',42543542,'Lleida'),(4,'Mria','Fernandez',700000,'Hospitalet del Infant'),(5,'Laura','Aznar',650000000,'Santa Coloma'),(6,'Judit','Calvo',678000000,'Sant Feliu'),(7,'Emilia','Fernandez',655999999,'Platja D\'Aro'),(8,'Marta','Oliva',68888888,'Reus'),(9,'Jordi','Cruyff',633000000,'Igualada'),(10,'Manolo','Benito',62222222,'Tortosa'),(11,'Eric','García',6500000,'Lleida');
/*!40000 ALTER TABLE `CONDUCTORES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `VEHICULOS`
--

DROP TABLE IF EXISTS `VEHICULOS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `VEHICULOS` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(45) DEFAULT NULL,
  `marca` varchar(45) DEFAULT NULL,
  `modelo` varchar(45) DEFAULT NULL,
  `ano` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_userId_idx` (`userId`),
  CONSTRAINT `FK_userId` FOREIGN KEY (`userId`) REFERENCES `CONDUCTORES` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `VEHICULOS`
--

LOCK TABLES `VEHICULOS` WRITE;
/*!40000 ALTER TABLE `VEHICULOS` DISABLE KEYS */;
INSERT INTO `VEHICULOS` VALUES (1,'automovil','mazda','cx-5',2022,11),(2,'automovil','mercedes','cls',2010,9),(3,'bici','bmx','FRTA',2023,2),(4,'bici','Fox','RW-3',2018,10),(5,'patinete','xiaomi','i2',2020,1),(6,'patinete','eRow','T2',2021,3),(7,'moto','honda','forza',2024,11),(8,'moto','yamaha','tzr',2002,4),(9,'Triciclo','playdock','re2',2001,5),(10,'ruedín','lego','rfza',1996,NULL);
/*!40000 ALTER TABLE `VEHICULOS` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-09-03 19:52:49
