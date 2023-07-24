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
-- Table structure for table `carrera`
--

DROP TABLE IF EXISTS `carrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrera` (
  `idCarrera` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(100) NOT NULL,
  `Universidad` varchar(45) NOT NULL,
  `Descripción` tinytext NOT NULL,
  `Nivel` varchar(45) NOT NULL,
  `Área` varchar(45) NOT NULL,
  `idCampo_Estudio` int(11) NOT NULL,
  PRIMARY KEY (`idCarrera`),
  KEY `fk_carrera_campo_estudio1_idx` (`idCampo_Estudio`),
  CONSTRAINT `fk_carrera_campo_estudio1` FOREIGN KEY (`idCampo_Estudio`) REFERENCES `campo_estudio` (`idCampo_Estudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrera`
--

LOCK TABLES `carrera` WRITE;
/*!40000 ALTER TABLE `carrera` DISABLE KEYS */;
INSERT INTO `carrera` VALUES (101,'Computación','Universidad Técnica Particular de Loja','Carrera de Computación con enfoque en ciencias de la computación y desarrollo de software.','Pregrado','Área Técnica',1),(102,'Ingeniería en Sistemas','Universidad Técnica Particular de Loja','Carrera de Ingeniería en Sistemas con énfasis en sistemas de información y tecnologías de la comunicación.','Pregrado','Área Técnica',1),(103,'Ingeniería Civil','Universidad Técnica Particular de Loja','Carrera de Ingeniería Civil con enfoque en construcción, diseño y supervisión de obras civiles.','Pregrado','Área Técnica',5),(104,'Tecnologías de la Información','Universidad Técnica Particular de Loja','Carrera de Tecnologías de la Información enfocada en el uso y desarrollo de tecnologías digitales.','Pregrado','Área Técnica',1),(105,'Administración de Empresas','Universidad Técnica Particular de Loja','Carrera de Administración de Empresas con enfoque en la gestión y dirección de organizaciones.','Pregrado','Área Administrativa',4),(106,'Medicina','Universidad Técnica Particular de Loja','Carrera de Medicina centrada en el estudio de la salud humana y el cuidado de pacientes.','Pregrado','Área Biológica y Biomédica',3),(107,'Derecho','Universidad Técnica Particular de Loja','Carrera de Derecho con enfoque en la legislación y la resolución de conflictos legales.','Pregrado','Área Socio Humanística',2);
/*!40000 ALTER TABLE `carrera` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24  7:26:33
