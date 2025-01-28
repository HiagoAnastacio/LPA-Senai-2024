CREATE DATABASE  IF NOT EXISTS `vingadores` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `vingadores`;
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
-- Table structure for table `chip_gps`
--

DROP TABLE IF EXISTS `chip_gps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chip_gps` (
  `idchip_gps` int NOT NULL AUTO_INCREMENT,
  `localizacao_atual` varchar(255) DEFAULT NULL,
  `localizacao_ultima` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idchip_gps`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chip_gps`
--

LOCK TABLES `chip_gps` WRITE;
/*!40000 ALTER TABLE `chip_gps` DISABLE KEYS */;
/*!40000 ALTER TABLE `chip_gps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `convocacao`
--

DROP TABLE IF EXISTS `convocacao`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `convocacao` (
  `idconvocacao` int NOT NULL AUTO_INCREMENT,
  `heroi_id` int NOT NULL,
  `data_convocacao` date DEFAULT NULL,
  `status_convocacao` char(100) DEFAULT NULL,
  `data_comparecimento` date DEFAULT NULL,
  `motivo` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`idconvocacao`),
  KEY `heroi_id_idx` (`heroi_id`),
  CONSTRAINT `heroi_id` FOREIGN KEY (`heroi_id`) REFERENCES `heroi` (`heroi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `convocacao`
--

LOCK TABLES `convocacao` WRITE;
/*!40000 ALTER TABLE `convocacao` DISABLE KEYS */;
INSERT INTO `convocacao` VALUES (1,7,'2011-11-11','Comparecido','2012-12-12','Teste do sistema de convocação.'),(2,3,'2011-11-12','Comparecido','2011-12-02','Segundo teste do sistema de convocação.'),(3,3,'2011-11-11','Comparecido','2012-12-12','Terceiro teste do sistema de convocação.'),(4,2,'2024-01-01','Comparecido','2025-01-01','Buscar entender as falhas do retorno do banco de dados em relação ao status da tornozeleira.');
/*!40000 ALTER TABLE `convocacao` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gerencia_mandatos`
--

DROP TABLE IF EXISTS `gerencia_mandatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gerencia_mandatos` (
  `idgerencia_mandatos` int NOT NULL AUTO_INCREMENT,
  `idmandatos` int NOT NULL,
  `heroi_id` int NOT NULL,
  PRIMARY KEY (`idgerencia_mandatos`),
  KEY `heoi_Id_idx` (`heroi_id`),
  KEY `idmandatos_idx` (`idmandatos`),
  CONSTRAINT `heoi_Id` FOREIGN KEY (`heroi_id`) REFERENCES `heroi` (`heroi_id`),
  CONSTRAINT `idmandatos` FOREIGN KEY (`idmandatos`) REFERENCES `mandatos` (`idmandatos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gerencia_mandatos`
--

LOCK TABLES `gerencia_mandatos` WRITE;
/*!40000 ALTER TABLE `gerencia_mandatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `gerencia_mandatos` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi`
--

LOCK TABLES `heroi` WRITE;
/*!40000 ALTER TABLE `heroi` DISABLE KEYS */;
INSERT INTO `heroi` VALUES (1,'Teste','Testinaldo da Silva','Android','Tes,  te','Tes','Te,  ste',10000),(2,'Teste2','Testados Anastacio','Deidade','Testo,  terona','terona','Efeitos colaterais',1000),(3,'1','Atestados','Humano','Trembolona,  Deca','Esteroides','Efeitos colaterais',10000),(4,'Teste4','Tes.Face n°4','Meta-humano','1','1','1,  2',3000),(5,'Teste|29.11|','a','Humano','sim, nao','sim','talvez,  será?',1),(6,'A','a','Humano','a','a','b',100),(7,'B','b','Deidade','b, ,,  , b','b','a, ,,  , a',1),(8,'A','a','Humano','a, ,,  , a','a','a',10),(9,'A','a','Huamno','1, ,,  , 1','1','2,  , 2,  ',10),(10,'1','1','Huajk','1','1','1',1);
/*!40000 ALTER TABLE `heroi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mandatos`
--

DROP TABLE IF EXISTS `mandatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mandatos` (
  `idmandatos` int NOT NULL AUTO_INCREMENT,
  `motivo` varchar(255) DEFAULT NULL,
  `data_emissao` date DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`idmandatos`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mandatos`
--

LOCK TABLES `mandatos` WRITE;
/*!40000 ALTER TABLE `mandatos` DISABLE KEYS */;
/*!40000 ALTER TABLE `mandatos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tornozeleira`
--

DROP TABLE IF EXISTS `tornozeleira`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tornozeleira` (
  `idtornozeleira` int NOT NULL AUTO_INCREMENT,
  `status` tinyint DEFAULT NULL,
  `data_ativacao` datetime DEFAULT NULL,
  `data_desativacao` datetime DEFAULT NULL,
  `heroi_id` int NOT NULL,
  PRIMARY KEY (`idtornozeleira`),
  KEY `heroi_id_idx` (`heroi_id`),
  CONSTRAINT `heroi_id_heroi` FOREIGN KEY (`heroi_id`) REFERENCES `heroi` (`heroi_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tornozeleira`
--

LOCK TABLES `tornozeleira` WRITE;
/*!40000 ALTER TABLE `tornozeleira` DISABLE KEYS */;
INSERT INTO `tornozeleira` VALUES (1,1,'2024-12-06 00:00:00','2024-12-10 00:00:00',7),(2,1,'2024-02-02 00:00:00','2025-02-02 00:00:00',2);
/*!40000 ALTER TABLE `tornozeleira` ENABLE KEYS */;
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

-- Dump completed on 2024-12-06 13:48:01
