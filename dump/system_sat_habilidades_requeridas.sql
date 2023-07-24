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
-- Table structure for table `habilidades_requeridas`
--

DROP TABLE IF EXISTS `habilidades_requeridas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidades_requeridas` (
  `idPlazas` int(11) NOT NULL,
  `idHabilidades` int(11) NOT NULL,
  PRIMARY KEY (`idPlazas`,`idHabilidades`),
  KEY `fk_AptitudesRequeridas_Plazas1_idx` (`idPlazas`),
  KEY `fk_Habilidades_requeridas_Habilidades1_idx` (`idHabilidades`),
  CONSTRAINT `fk_AptitudesRequeridas_Plazas1` FOREIGN KEY (`idPlazas`) REFERENCES `plazas` (`idPlazas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Habilidades_requeridas_Habilidades1` FOREIGN KEY (`idHabilidades`) REFERENCES `habilidades` (`idHabilidades`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades_requeridas`
--

LOCK TABLES `habilidades_requeridas` WRITE;
/*!40000 ALTER TABLE `habilidades_requeridas` DISABLE KEYS */;
INSERT INTO `habilidades_requeridas` VALUES (1,65),(1,66),(1,67),(1,68),(1,69),(2,70),(2,71),(2,72),(2,73),(3,65),(3,69),(3,74),(3,75),(3,76),(4,65),(4,77),(4,78),(5,65),(5,66),(5,68),(5,69),(5,72),(5,79),(6,80),(6,81),(7,82),(7,83),(7,84),(8,85),(8,86),(8,87),(9,18),(9,88),(9,89),(9,90),(10,91),(10,92),(10,93),(10,94),(11,72),(11,95),(11,96),(11,97),(11,98),(12,72),(12,99),(12,100),(12,101),(13,13),(13,89),(14,101),(14,102),(14,103),(15,92),(15,104),(15,105),(15,106),(16,73),(16,106),(16,107),(17,72),(17,108),(17,109),(18,13),(18,18),(18,65),(18,89),(18,95),(18,110),(19,72),(19,92),(19,93),(19,110),(19,111),(19,112);
/*!40000 ALTER TABLE `habilidades_requeridas` ENABLE KEYS */;
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
