-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: system_sat
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
-- Table structure for table `practicums_estudiante`
--

DROP TABLE IF EXISTS `practicums_estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `practicums_estudiante` (
  `idPracticum` int(11) NOT NULL,
  `idEstudiante` varchar(12) NOT NULL,
  PRIMARY KEY (`idPracticum`,`idEstudiante`),
  KEY `fk_Practicums_Estudiante_Practicums1_idx` (`idPracticum`),
  KEY `fk_practicums_estudiante_estudiante1_idx` (`idEstudiante`),
  CONSTRAINT `fk_Practicums_Estudiante_Practicums1` FOREIGN KEY (`idPracticum`) REFERENCES `practicums` (`idPracticum`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_practicums_estudiante_estudiante1` FOREIGN KEY (`idEstudiante`) REFERENCES `estudiante` (`idEstudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `practicums_estudiante`
--

LOCK TABLES `practicums_estudiante` WRITE;
/*!40000 ALTER TABLE `practicums_estudiante` DISABLE KEYS */;
INSERT INTO `practicums_estudiante` VALUES (4,'2023000011'),(4,'2023000012'),(4,'2023000013'),(4,'2023000014'),(4,'2023000015'),(4,'2023000016'),(4,'2023000017'),(4,'2023000018'),(4,'2023000019'),(4,'2023000020'),(5,'2023000001'),(5,'2023000002'),(5,'2023000003'),(5,'2023000004'),(5,'2023000005'),(5,'2023000006'),(5,'2023000007'),(5,'2023000008'),(5,'2023000009'),(5,'2023000010');
/*!40000 ALTER TABLE `practicums_estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24  7:26:34
