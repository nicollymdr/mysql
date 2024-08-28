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
-- Table structure for table `atendentes`
--

DROP TABLE IF EXISTS `atendentes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atendentes` (
  `cpf_atendente` char(11) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  PRIMARY KEY (`cpf_atendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atendentes`
--

LOCK TABLES `atendentes` WRITE;
/*!40000 ALTER TABLE `atendentes` DISABLE KEYS */;
INSERT INTO `atendentes` VALUES ('01234567899','João Pedro Ribeiro'),('12345678900','Ana Paula Silva'),('12345678910','Karina Figueiredo Moraes'),('23456789011','Bruno Almeida Santos'),('23456789021','Leonardo Cunha Dias'),('34567890122','Carla Ferreira Lima'),('34567890132','Mariana Castro Silva'),('45678901233','Daniel Oliveira Costa'),('45678901243','Nathalia Lima Fernandes'),('56789012344','Eduarda Souza Pereira'),('56789012354','Otávio Teixeira Nogueira'),('67890123455','Fernando Martins Rocha'),('78901234566','Gabriela Rodrigues Lopes'),('89012345677','Henrique Alves Gonçalves'),('90123456788','Isabela Mendes Carvalho');
/*!40000 ALTER TABLE `atendentes` ENABLE KEYS */;
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
