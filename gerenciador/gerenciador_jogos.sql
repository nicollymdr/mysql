CREATE DATABASE  IF NOT EXISTS `gerenciador` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci */;
USE `gerenciador`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: gerenciador
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.32-MariaDB

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
-- Table structure for table `jogos`
--

DROP TABLE IF EXISTS `jogos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jogos` (
  `codigo_jogo` int(11) NOT NULL,
  `nome_jogo` varchar(100) NOT NULL,
  `fabricante` varchar(100) DEFAULT NULL,
  `num_max_jogadores` int(11) DEFAULT NULL,
  `ano_publicacao` year(4) DEFAULT NULL,
  `num_copias` int(11) DEFAULT NULL,
  `cpf_atendente` char(11) DEFAULT NULL,
  PRIMARY KEY (`codigo_jogo`),
  KEY `cpf_atendente` (`cpf_atendente`),
  CONSTRAINT `jogos_ibfk_1` FOREIGN KEY (`cpf_atendente`) REFERENCES `atendentes` (`cpf_atendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jogos`
--

LOCK TABLES `jogos` WRITE;
/*!40000 ALTER TABLE `jogos` DISABLE KEYS */;
INSERT INTO `jogos` VALUES (1,'Catan','Kosmos',4,1995,3,NULL),(2,'Ticket to Ride','Days of Wonder',5,2004,2,NULL),(3,'Carcassonne','Hans im Glück',5,2000,4,NULL),(4,'Pandemic','Z-Man Games',4,2008,2,NULL),(5,'7 Wonders','Repos Production',7,2010,3,NULL),(6,'Dixit','Libellud',6,2008,4,NULL),(7,'Azul','Next Move Games',4,2017,3,NULL),(8,'Dominion','Rio Grande Games',4,2008,2,NULL),(9,'Splendor','Space Cowboys',4,2014,3,NULL),(10,'Terraforming Mars','FryxGames',5,2016,2,NULL);
/*!40000 ALTER TABLE `jogos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 22:25:26
