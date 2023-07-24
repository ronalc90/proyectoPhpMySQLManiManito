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
-- Table structure for table `habilidades`
--

DROP TABLE IF EXISTS `habilidades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `habilidades` (
  `idHabilidades` int(11) NOT NULL AUTO_INCREMENT,
  `Nombre` varchar(150) NOT NULL,
  `Descripción` varchar(255) DEFAULT NULL,
  `Nivel` enum('Básico','Intermedio','Avanzado') DEFAULT NULL,
  `idCampo_Estudio` int(11) NOT NULL,
  PRIMARY KEY (`idHabilidades`),
  KEY `fk_habilidades_campo_estudio1_idx` (`idCampo_Estudio`),
  CONSTRAINT `fk_habilidades_campo_estudio1` FOREIGN KEY (`idCampo_Estudio`) REFERENCES `campo_estudio` (`idCampo_Estudio`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `habilidades`
--

LOCK TABLES `habilidades` WRITE;
/*!40000 ALTER TABLE `habilidades` DISABLE KEYS */;
INSERT INTO `habilidades` VALUES (65,'Desarrollo web','Diseño y programación de sitios web','Intermedio',1),(66,'Kotlin','Lenguaje de programación para Android','Intermedio',1),(67,'Flutter','Framework para desarrollo de apps multiplataforma','Intermedio',1),(68,'Android/iOS','Desarrollo de aplicaciones móviles para Android e iOS','Intermedio',1),(69,'Desarrollo de aplicaciones móviles','Creación de apps para dispositivos móviles','Intermedio',1),(70,'Java','Lenguaje de programación versátil y robusto','Intermedio',1),(71,'Spring Boot','Framework para desarrollo de aplicaciones Java','Intermedio',1),(72,'Programacion','Conocimientos en diversos lenguajes de programación','Intermedio',1),(73,'Gestión de proyectos de TI','Planificación y ejecución de proyectos tecnológicos','Intermedio',1),(74,'React.js','Librería JavaScript para construir interfaces de usuario','Intermedio',1),(75,'Node.js','Entorno de ejecución para aplicaciones JavaScript','Intermedio',1),(76,'Virtualización y contenedores','Tecnologías para optimizar recursos de servidores','Intermedio',1),(77,'(UI/UX)','Diseño de interfaces y experiencia de usuario','Intermedio',1),(78,'Diseño de interfaces de usuario','Creación de interfaces interactivas y amigables','Intermedio',1),(79,'Swift','Lenguaje de programación para desarrollo en iOS','Intermedio',1),(80,'NoSQL','Bases de datos NoSQL para almacenamiento flexible','Intermedio',1),(81,'Administración de bases de datos','Gestión y mantenimiento de bases de datos','Intermedio',1),(82,'Selenium','Herramienta de automatización de pruebas web','Intermedio',1),(83,'Cypress','Framework de pruebas end-to-end para aplicaciones web','Intermedio',1),(84,'Automatización pruebas de software','Automatización de pruebas para asegurar calidad del software','Intermedio',1),(85,'Unity','Motor de videojuegos para desarrollo multiplataforma','Intermedio',1),(86,'Unreal Engine','Motor de videojuegos con amplias capacidades gráficas','Intermedio',1),(87,'AWS','Servicios de computación en la nube de Amazon','Intermedio',1),(88,'Azure','Plataforma de computación en la nube de Microsoft','Intermedio',1),(89,'Seguridad en aplicaciones web','Protección y detección de vulnerabilidades en aplicaciones web','Intermedio',1),(90,'Hadoop','Framework para procesamiento de grandes volúmenes de datos','Intermedio',1),(91,'Spark','Motor de procesamiento de datos en clústeres','Intermedio',1),(92,'Análisis de datos','Extracción y comprensión de datos para toma de decisiones','Intermedio',1),(93,'Big data','Gestión y análisis de conjuntos de datos masivos','Intermedio',1),(94,'Sistemas distribuidos','Diseño y mantenimiento de sistemas distribuidos','Intermedio',1),(95,'Kubernetes','Plataforma para automatización y despliegue de contenedores','Intermedio',1),(96,'Docker','Herramienta para empaquetar y distribuir aplicaciones en contenedores','Intermedio',1),(97,'Arquitectura de software','Diseño y estructura de aplicaciones y sistemas','Intermedio',1),(98,'UiPath','Plataforma de automatización robótica de procesos','Intermedio',1),(99,'Automation Anywhere','Plataforma de automatización robótica de procesos','Intermedio',1),(100,'OWASP','Organización para la seguridad de aplicaciones web','Intermedio',1),(101,'Apache','Servidor web de código abierto','Intermedio',1),(102,'Nginx','Servidor web y proxy inverso','Intermedio',1),(103,'Administración de sistemas operativos','Gestión y mantenimiento de sistemas operativos','Intermedio',1),(104,'Simulación cuántica','Modelado y análisis de sistemas cuánticos','Intermedio',1),(105,'Algoritmos','Diseño y análisis de algoritmos','Intermedio',1),(106,'Scrum','Metodología ágil para gestión de proyectos','Intermedio',1),(107,'Kanban','Método visual para la gestión de tareas','Intermedio',1),(108,'ROS','Sistema operativo para robots','Intermedio',1),(109,'Arduino','Plataforma de prototipado electrónico','Intermedio',1),(110,'Machine learning','Capacidad de programas para aprender de datos','Intermedio',1),(111,'Deep learning','Subconjunto de machine learning basado en redes neuronales','Intermedio',1),(112,'Inteligencia artificial','Simulación de procesos de inteligencia humana por computadoras','Intermedio',1);
/*!40000 ALTER TABLE `habilidades` ENABLE KEYS */;
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
