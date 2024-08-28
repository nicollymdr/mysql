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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `cpf_cliente` char(11) NOT NULL,
  `nome_completo` varchar(100) NOT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `endereco` varchar(255) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `cpf_atendente` char(11) DEFAULT NULL,
  PRIMARY KEY (`cpf_cliente`),
  KEY `cpf_atendente` (`cpf_atendente`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`cpf_atendente`) REFERENCES `atendentes` (`cpf_atendente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES ('00123456789','Carlos Alberto Pereira','31912345678','Rua das Flores, 123, Belo Horizonte, MG','carlos.pereira@email.com',NULL),('00234567890','Fernanda Silva Costa','21923456789','Av. Brasil, 456, Rio de Janeiro, RJ','fernanda.costa@email.com',NULL),('00345678901','Marcos Vinícius Souza','11934567890','Rua São João, 789, São Paulo, SP','marcos.souza@email.com',NULL),('00456789012','Juliana Rocha Lima','61945678901','Av. Central, 101, Brasília, DF','juliana.lima@email.com',NULL),('00567890123','Rafael Oliveira Santos','71956789012','Rua Bahia, 202, Salvador, BA','rafael.santos@email.com',NULL),('00678901234','Aline Ferreira Mendes','85967890123','Rua Ceará, 303, Fortaleza, CE','aline.mendes@email.com',NULL),('00789012345','Gustavo Almeida Campos','41978901234','Av. Paraná, 404, Curitiba, PR','gustavo.campos@email.com',NULL),('00890123456','Patrícia Costa Souza','51989012345','Rua Bento Gonçalves, 505, Porto Alegre, RS','patricia.souza@email.com',NULL),('00901234567','Lucas Martins Ferreira','81990123456','Av. Recife, 606, Recife, PE','lucas.ferreira@email.com',NULL),('01012345678','Roberta Lima Rocha','62901234567','Rua Goiás, 707, Goiânia, GO','roberta.rocha@email.com',NULL),('01123456789','Renato Oliveira Barbosa','27912345678','Av. Vitória, 808, Vitória, ES','renato.barbosa@email.com',NULL),('01234567890','Carla Souza Melo','34923456789','Rua Minas Gerais, 909, Uberlândia, MG','carla.melo@email.com',NULL),('01345678901','Pedro Almeida Lima','79934567890','Av. Sergipe, 1010, Aracaju, SE','pedro.lima@email.com',NULL),('01456789012','Camila Costa Santos','67945678901','Rua Mato Grosso, 111, Campo Grande, MS','camila.santos@email.com',NULL),('01567890123','Bruno Ferreira Souza','92956789012','Av. Amazonas, 1212, Manaus, AM','bruno.souza@email.com',NULL),('01678901234','Ana Paula Oliveira','95967890123','Rua Roraima, 1313, Boa Vista, RR','ana.oliveira@email.com',NULL),('01789012345','Felipe Almeida Rocha','69978901234','Av. Rondônia, 1414, Porto Velho, RO','felipe.rocha@email.com',NULL),('01890123456','Jéssica Martins Mendes','68989012345','Rua Acre, 1515, Rio Branco, AC','jessica.mendes@email.com',NULL),('01901234567','Thiago Santos Ferreira','63990123456','Av. Tocantins, 1616, Palmas, TO','thiago.ferreira@email.com',NULL),('02012345678','Mariana Souza Almeida','73901234567','Rua Ilhéus, 1717, Ilhéus, BA','mariana.almeida@email.com',NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-08-27 22:25:25
