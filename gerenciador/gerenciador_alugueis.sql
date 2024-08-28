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
-- Table structure for table `alugueis`
--

DROP TABLE IF EXISTS `alugueis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alugueis` (
  `id_aluguel` int(11) NOT NULL AUTO_INCREMENT,
  `data_aluguel` date NOT NULL,
  `codigo_jogo` int(11) NOT NULL,
  `cpf_cliente` char(11) NOT NULL,
  `cpf_atendente` char(11) NOT NULL,
  PRIMARY KEY (`id_aluguel`),
  KEY `codigo_jogo` (`codigo_jogo`),
  KEY `cpf_cliente` (`cpf_cliente`),
  KEY `cpf_atendente` (`cpf_atendente`),
  CONSTRAINT `alugueis_ibfk_1` FOREIGN KEY (`codigo_jogo`) REFERENCES `jogos` (`codigo_jogo`),
  CONSTRAINT `alugueis_ibfk_2` FOREIGN KEY (`cpf_cliente`) REFERENCES `clientes` (`cpf_cliente`),
  CONSTRAINT `alugueis_ibfk_3` FOREIGN KEY (`cpf_atendente`) REFERENCES `atendentes` (`cpf_atendente`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alugueis`
--

LOCK TABLES `alugueis` WRITE;
/*!40000 ALTER TABLE `alugueis` DISABLE KEYS */;
INSERT INTO `alugueis` VALUES (1,'2024-08-20',1,'00123456789','12345678900'),(2,'2024-08-21',2,'00234567890','23456789011'),(3,'2024-08-22',3,'00345678901','34567890122'),(4,'2024-08-23',4,'00456789012','45678901233'),(5,'2024-08-24',5,'00567890123','56789012344'),(6,'2024-08-25',6,'00678901234','67890123455'),(7,'2024-08-26',7,'00789012345','78901234566'),(8,'2024-08-27',8,'00890123456','89012345677'),(9,'2024-08-28',9,'00901234567','90123456788'),(10,'2024-08-29',10,'01012345678','01234567899');
/*!40000 ALTER TABLE `alugueis` ENABLE KEYS */;
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
