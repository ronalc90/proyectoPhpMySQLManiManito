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
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idEstudiante` varchar(12) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  `Correo` varchar(100) NOT NULL,
  `Teléfono` varchar(20) DEFAULT NULL,
  `idCarrera` int(11) NOT NULL,
  PRIMARY KEY (`idEstudiante`),
  KEY `fk_Estudiante_Carrera1_idx` (`idCarrera`),
  CONSTRAINT `fk_Estudiante_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES ('2023000001','María José','González Ramírez','Calle 123, Ciudad','mariajgonzalez@utpl.edu.ec','9876543210',2),('2023000002','Juan Carlos','Ramírez Naranjo','Av. Principal, Pueblo','juanc.ramirez@utpl.edu.ec','9876123450',2),('2023000003','Ana María','López Pazmiño','Calle 456, Ciudad','anam.lopez@utpl.edu.ec','9876789012',2),('2023000004','Pedro Jose','Gómez Pazmiño','Av. Central, Pueblo','pedrogomez@utpl.edu.ec','9876456789',2),('2023000005','Carolina Maria','Pazmiño Soto','Calle 789, Ciudad','caropazmino@utpl.edu.ec','9876901234',2),('2023000006','Jorge Nikel','Vera Gómez','Av. Central, Ciudad','jorgevera@utpl.edu.ec','9876123456',2),('2023000007','María Fernanda','Naranjo Naranjo','Calle 789, Pueblo','mfernandanaranjo@utpl.edu.ec','9876789012',2),('2023000008','Luis Marlo','Guerra Perl','Av. Principal, Ciudad','luisguerra@utpl.edu.ec','9876123409',2),('2023000009','Andrea Marilu','Soto Mendez','Calle 456, Pueblo','andreasoto@utpl.edu.ec','9876456709',2),('2023000010','Manuel Antiel','Mendoza Oyola','Av. Principal, Ciudad','manuelmendoza@utpl.edu.ec','9876457809',2),('2023000011','Laura Fernanda','Pérez Gómez','Calle 123, Ciudad','lauraperez@utpl.edu.ec','9876543298',1),('2023000012','Carlos Alberto','Gómez Ramírez','Av. Principal, Pueblo','carlosagomez@utpl.edu.ec','9876123456',1),('2023000013','Ana Sofía','Ramírez López','Calle 456, Ciudad','anasramirez@utpl.edu.ec','9876789045',1),('2023000014','Diego Alejandro','López Gómez','Av. Central, Pueblo','diegoalopez@utpl.edu.ec','9876456721',1),('2023000015','María Elena','Gómez Pazmiño','Calle 789, Ciudad','megomez@utpl.edu.ec','9876901203',1),('2023000016','Fernando','Pazmiño Vera','Av. Central, Ciudad','fernandopaz@utpl.edu.ec','9876123487',1),('2023000017','Isabel Cristina','Vera Naranjo','Calle 789, Pueblo','isabelvera@utpl.edu.ec','9876789056',1),('2023000018','Sebastián Andrés','Naranjo Guerra','Av. Principal, Ciudad','sebastiananaranjo@utpl.edu.ec','9876123421',1),('2023000019','Valentina Lupe','Guerra Soto','Calle 456, Pueblo','valentinaguerra@utpl.edu.ec','9876456754',1),('2023000020','Santiago Nadiel','Soto Mendoza','Av. Principal, Ciudad','santiagosoto@utpl.edu.ec','9876457890',1);
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-07-24  7:25:30
