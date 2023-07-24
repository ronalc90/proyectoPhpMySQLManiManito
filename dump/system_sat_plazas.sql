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
-- Table structure for table `plazas`
--

DROP TABLE IF EXISTS `plazas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `plazas` (
  `idPlazas` int(11) NOT NULL AUTO_INCREMENT,
  `Tema` varchar(100) NOT NULL,
  `Descripción` varchar(400) DEFAULT NULL,
  `Empresa` varchar(100) NOT NULL,
  `TipoEmpresa` enum('Pública','Privada') NOT NULL,
  `Convenio` enum('Vigente','Caducado','En proceso') NOT NULL,
  `Vacantes` int(11) DEFAULT NULL,
  `Tutor` varchar(45) NOT NULL,
  `País` varchar(45) NOT NULL,
  `Ciudad` varchar(45) NOT NULL,
  `Nivel inglés` enum('Básico','Intermedio','Avanzado') DEFAULT NULL,
  `Inicio` date DEFAULT NULL,
  `Fin` date DEFAULT NULL,
  `idCarrera` int(11) NOT NULL,
  PRIMARY KEY (`idPlazas`),
  KEY `fk_Plazas_Carrera1_idx` (`idCarrera`),
  CONSTRAINT `fk_Plazas_Carrera1` FOREIGN KEY (`idCarrera`) REFERENCES `carrera` (`idCarrera`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `plazas`
--

LOCK TABLES `plazas` WRITE;
/*!40000 ALTER TABLE `plazas` DISABLE KEYS */;
INSERT INTO `plazas` VALUES (1,'Desarrollo de Aplicación Móvil para InnovateTech','Pasantía para el desarrollo de una aplicación móvil en el equipo de InnovateTech. Se utilizarán tecnologías como Flutter para la creación de una app de entrega de alimentos.','InnovateTech','Privada','Vigente',2,'Juan Pérez','Ecuador','Loja','Intermedio','2023-08-15','2023-11-30',101),(2,'Desarrollo de Sistema de Gestión para ABC Consulting','Pasantía para el desarrollo de un sistema de gestión en el equipo de ABC Consulting. Se utilizarán tecnologías como Java y Spring Boot.','ABC Consulting','Privada','Vigente',1,'Laura Gómez','Ecuador','Loja','Avanzado','2023-09-01','2023-12-15',101),(3,'Desarrollo de Aplicación Web para Tech Solutions','Pasantía para el desarrollo de una aplicación web en el equipo de Tech Solutions. Se utilizarán tecnologías como React.js y Node.js.','Tech Solutions','Privada','Vigente',3,'Ana Rodríguez','Ecuador','Loja','Intermedio','2023-08-20','2023-11-30',101),(4,'Diseño de Interfaz de Usuario para XYZ Design','Pasantía para el diseño de interfaces de usuario (UI/UX) en el equipo de XYZ Design. Se trabajará en proyectos de diseño para aplicaciones web y móviles.','XYZ Design','Privada','Vigente',2,'José González','Ecuador','Loja','Avanzado','2023-09-15','2023-12-31',101),(5,'Desarrollo de Aplicación Móvil para MobileTech','Pasantía para el desarrollo de una aplicación móvil en el equipo de MobileTech. Se utilizarán tecnologías como Kotlin para Android y Swift para iOS.','MobileTech','Privada','Vigente',1,'María Sánchez','Ecuador','Loja','Avanzado','2023-08-30','2023-12-31',101),(6,'Administración de Bases de Datos para DataTech','Pasantía para la administración de bases de datos en el equipo de DataTech. Se trabajará con bases de datos relacionales y NoSQL.','DataTech','Privada','Vigente',2,'Andrea López','Ecuador','Loja','Intermedio','2023-09-10','2023-12-15',101),(7,'Automatización de Pruebas para QA Services','Pasantía para la automatización de pruebas de software en el equipo de QA Services. Se utilizarán herramientas como Selenium y Cypress.','QA Services','Privada','Vigente',1,'Carlos García','Ecuador','Loja','Avanzado','2023-08-25','2023-12-31',101),(8,'Desarrollo de Videojuegos para GameTech','Pasantía para el desarrollo de videojuegos en el equipo de GameTech. Se utilizarán motores de juego como Unity y Unreal Engine.','GameTech','Privada','Vigente',2,'Eduardo Ramírez','Ecuador','Loja','Intermedio','2023-09-05','2023-12-31',101),(9,'Cloud Computing para CloudTech','Pasantía para el desarrollo e implementación de soluciones de cloud computing en el equipo de CloudTech. Se trabajará con tecnologías como AWS y Azure.','CloudTech','Privada','Vigente',3,'Patricia Mora','Ecuador','Loja','Avanzado','2023-08-20','2023-11-30',101),(10,'Big Data y Análisis de Datos para DataAnalytics','Pasantía para el análisis de grandes volúmenes de datos y aplicaciones de big data en el equipo de DataAnalytics. Se utilizarán herramientas como Hadoop y Spark.','DataAnalytics','Privada','Vigente',2,'Roberto Torres','Ecuador','Loja','Intermedio','2023-09-10','2023-12-15',101),(11,'Desarrollo de Sistemas Distribuidos para TechHub','Pasantía para el desarrollo de sistemas distribuidos en el equipo de TechHub. Se trabajará con tecnologías como Kubernetes y Docker.','TechHub','Privada','Vigente',2,'Marcelo Sánchez','Ecuador','Loja','Avanzado','2023-09-15','2023-12-31',101),(12,'Automatización de Procesos para ProcessTech','Pasantía para la automatización de procesos en el equipo de ProcessTech. Se utilizarán herramientas como UiPath y Automation Anywhere.','ProcessTech','Privada','Vigente',1,'Sandra Gutiérrez','Ecuador','Loja','Intermedio','2023-08-30','2023-12-31',101),(13,'Seguridad en Aplicaciones Web para WebSecure','Pasantía para la implementación de medidas de seguridad en aplicaciones web en el equipo de WebSecure. Se trabajará con tecnologías como OWASP Top 10.','WebSecure','Privada','Vigente',2,'Diego Valverde','Ecuador','Loja','Avanzado','2023-09-10','2023-12-15',101),(14,'Administración de Servidores Web para WebTech','Pasantía para la administración de servidores web en el equipo de WebTech. Se trabajará con tecnologías como Apache y Nginx.','WebTech','Privada','Vigente',1,'Andrés Jaramillo','Ecuador','Loja','Intermedio','2023-08-25','2023-12-31',101),(15,'Computación Cuántica para QuantumTech','Pasantía para la investigación en computación cuántica en el equipo de QuantumTech. Se explorarán Algoritmos cuánticos y simulación cuántica.','QuantumTech','Privada','Vigente',2,'Luis Mendoza','Ecuador','Loja','Avanzado','2023-09-01','2023-12-15',101),(16,'Gestión de Proyectos de TI para IT Solutions','Pasantía para la gestión de proyectos de TI en el equipo de IT Solutions. Se aplicarán metodologías ágiles como Scrum y Kanban.','IT Solutions','Privada','Vigente',3,'Fernando Benítez','Ecuador','Loja','Intermedio','2023-08-20','2023-11-30',101),(17,'Robótica y Automatización Industrial para RoboticsTech','Pasantía para el desarrollo y programación de robots en el equipo de RoboticsTech. Se utilizarán plataformas como ROS y Arduino.','RoboticsTech','Privada','Vigente',1,'Lucía Valencia','Ecuador','Loja','Avanzado','2023-08-30','2023-12-31',101),(18,'Desarrollo de Aplicaciones en la Nube para CloudApps','Pasantía para el desarrollo de aplicaciones cloud-native en el equipo de CloudApps. Se utilizarán tecnologías como Kubernetes y serverless.','CloudApps','Privada','Vigente',2,'Carlos Delgado','Ecuador','Loja','Intermedio','2023-09-05','2023-12-31',101),(19,'Inteligencia Artificial para AI Solutions','Pasantía para el desarrollo de soluciones basadas en inteligencia artificial en el equipo de AI Solutions. Se aplicarán técnicas de machine learning y deep learning.','AI Solutions','Privada','Vigente',2,'Luis García','España','Madrid','Avanzado','2023-09-10','2023-12-15',101);
/*!40000 ALTER TABLE `plazas` ENABLE KEYS */;
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
