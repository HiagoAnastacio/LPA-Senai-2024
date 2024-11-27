-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: vingadores
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `convocacao`
--

DROP TABLE IF EXISTS `convocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convocacao` (
  `idconvocacao` int NOT NULL AUTO_INCREMENT,
  `heroi_id` int NOT NULL,
  `data_convocacao` datetime DEFAULT CURRENT_TIMESTAMP,
  `status_convocacao` tinyint NOT NULL,
  PRIMARY KEY (`idconvocacao`),
  KEY `heroi_id_idx` (`heroi_id`),
  CONSTRAINT `heroi_id` FOREIGN KEY (`heroi_id`) REFERENCES `heroi` (`heroi_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocacao`
--

LOCK TABLES `convocacao` WRITE;
/*!40000 ALTER TABLE `convocacao` DISABLE KEYS */;
/*!40000 ALTER TABLE `convocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `heroi`
--

DROP TABLE IF EXISTS `heroi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `heroi` (
  `heroi_id` int NOT NULL AUTO_INCREMENT,
  `nome_de_heroi` varchar(20) DEFAULT NULL,
  `identidade_secreta` varchar(20) DEFAULT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `poderes` varchar(45) DEFAULT NULL,
  `principal_poder` varchar(20) DEFAULT NULL,
  `fraquezas` varchar(45) DEFAULT NULL,
  `nivel_de_forca` int DEFAULT NULL,
  PRIMARY KEY (`heroi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi`
--

LOCK TABLES `heroi` WRITE;
/*!40000 ALTER TABLE `heroi` DISABLE KEYS */;
INSERT INTO `heroi` VALUES (1,'Teste','Testinaldo da Silva','Android','Tes,  te','Tes','Te,  ste',10000),(2,'Teste2','Testados Anastacio','Deidade','Testo,  terona','terona','Efeitos colaterais',1000),(3,'1','Atestados','Humano','Trembolona,  Deca','Esteroides','Efeitos colaterais',10000),(4,'Teste4','Tes.Face n°4','Meta-humano','1','1','1,  2',3000);
/*!40000 ALTER TABLE `heroi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'vingadores'
--

--
-- Dumping routines for database 'vingadores'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-27 16:31:15
