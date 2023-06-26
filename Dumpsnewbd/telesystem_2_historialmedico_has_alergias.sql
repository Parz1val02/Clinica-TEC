-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: midatabase.mysql.database.azure.com    Database: telesystem_2
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
-- Table structure for table `historialmedico_has_alergias`
--

DROP TABLE IF EXISTS `historialmedico_has_alergias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historialmedico_has_alergias` (
  `historialmedico_idhistorialmedico` int NOT NULL,
  `alergias_idalergias` int NOT NULL,
  PRIMARY KEY (`historialmedico_idhistorialmedico`,`alergias_idalergias`),
  KEY `fk_historialmedico_has_alergias_alergias1_idx` (`alergias_idalergias`),
  KEY `fk_historialmedico_has_alergias_historialmedico1_idx` (`historialmedico_idhistorialmedico`),
  CONSTRAINT `fk_historialmedico_has_alergias_alergias1` FOREIGN KEY (`alergias_idalergias`) REFERENCES `alergias` (`idalergias`),
  CONSTRAINT `fk_historialmedico_has_alergias_historialmedico1` FOREIGN KEY (`historialmedico_idhistorialmedico`) REFERENCES `historialmedico` (`idhistorialmedico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historialmedico_has_alergias`
--

LOCK TABLES `historialmedico_has_alergias` WRITE;
/*!40000 ALTER TABLE `historialmedico_has_alergias` DISABLE KEYS */;
INSERT INTO `historialmedico_has_alergias` VALUES (1,1),(1,9),(1,10),(3,12);
/*!40000 ALTER TABLE `historialmedico_has_alergias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-26  0:03:58