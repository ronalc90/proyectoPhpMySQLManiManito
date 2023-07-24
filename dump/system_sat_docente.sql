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
-- Table structure for table `docente`
--

DROP TABLE IF EXISTS `docente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `docente` (
  `idDocente` varchar(12) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `Apellido` varchar(100) NOT NULL,
  `Especialidad` varchar(50) DEFAULT NULL,
  `Correo` varchar(100) NOT NULL,
  `Dirección` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idDocente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `docente`
--

LOCK TABLES `docente` WRITE;
/*!40000 ALTER TABLE `docente` DISABLE KEYS */;
INSERT INTO `docente` VALUES ('1122334455','María José','González Suárez','Licenciado en Literatura','mjgonzalez@utpl.edu.ec','Quito'),('1126294242','Pablo Pedro','Torres Calva','Ingeniero en Sistemas','pablpedr@utpl.edu.ec','Loja'),('2211294242','Juan Andrés','Paredes Loaiza','Ingeniero en Sistemas','juanaparedes@utpl.edu.ec','Loja'),('2233445566','Carlos Andrés','Suarez Cevallos','Ingeniero Industrial','casuarez@utpl.edu.ec','Loja'),('3322334455','María Fernanda','Jaramillo Palacios','Ingeniero en Sistemas','mariapjaramillo@utpl.edu.ec','Loja'),('4455667788','Luis Fernando','Mendoza Solis','Ingeniero Eléctrico','lfmendoza@utpl.edu.ec','Guayaquil'),('4455678855','Andrés Felipe','Benitez Naranjo','Ingeniero en Sistemas','afbenitez@utpl.edu.ec','Machala'),('4488776655','Pedro Luis','Torres Torres','Ingeniero en Sistemas','pltorres@utpl.edu.ec','Loja'),('5506294242','María Fernanda','García López','Licenciada en Ciencias Sociales','mfgarcia@utpl.edu.ec','Quito'),('5544334455','Carlos Andrés','Suarez Cevallos','Ingeniero Industrial','casuarez@utpl.edu.ec','Loja'),('5566997711','Luisa María','Valencia Medina','Ingeniero en Sistemas','lmvalencia@utpl.edu.ec','Loja'),('5599887711','Luisa María','Valencia Medina','Biología','lmvalencia@utpl.edu.ec','Loja'),('6611223344','Carlos Andrés','Delgado Córdova','Ingeniero en Sistemas','cadelgado@utpl.edu.ec','Loja'),('6688123344','Pedro Pablo','Torres Calva','Historiador','pablpedr@utpl.edu.ec','Guayaquil'),('7788177700','Andrea Carolina','Chávez Pérez','Literatura','andreacchavez@utpl.edu.ec','Quito'),('7788778855','Andrea Carolina','Chávez Pérez','Ingeniero en Sistemas','andreacchavez@utpl.edu.ec','Quito'),('7799667700','Valeria Gabriela','Lozano Vera','Ingeniero en Sistemas','vglozano@utpl.edu.ec','Ambato'),('8812278855','Andrés Felipe','Benitez Naranjo','Arquitectura','afbenitez@utpl.edu.ec','Machala'),('8812337700','Valeria Gabriela','Lozano Vera','Medicina','vglozano@utpl.edu.ec','Ambato'),('8812337701','Sofía Valentina','López Torres','Psicología','svlopez@utpl.edu.ec','Loja'),('8812337711','Gabriel Alejandro','García Jaramillo','Comunicación','gagarcia@utpl.edu.ec','Cuenca'),('8812378855','Diego Fernando','Carrillo González','Derecho','dfcarrillo@utpl.edu.ec','Quito'),('8888777700','Jorge Alberto','Ramos Gutiérrez','Ingeniero en Sistemas','jorgeramos@utpl.edu.ec','Guayaquil'),('9898123109','Carla Valentina','Paredes Lozano','Ingeniero en Sistemas','carlaparedes@utpl.edu.ec','Cuenca'),('9988776655','Ana Lucía','Velez Espinosa','Biología','alvelez@utpl.edu.ec','Loja');
/*!40000 ALTER TABLE `docente` ENABLE KEYS */;
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
