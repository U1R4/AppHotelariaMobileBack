-- MySQL dump 10.13  Distrib 8.0.37, for Win64 (x86_64)
--
-- Host: localhost    Database: hotelaria
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `adicionais`
--

DROP TABLE IF EXISTS `adicionais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `adicionais` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) NOT NULL,
  `preco` double(6,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `adicionais`
--

LOCK TABLES `adicionais` WRITE;
/*!40000 ALTER TABLE `adicionais` DISABLE KEYS */;
INSERT INTO `adicionais` VALUES (1,'Nada',0.00),(2,'ggg',10.27),(4,'vinho',209.00);
/*!40000 ALTER TABLE `adicionais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'cliente'),(4,'func'),(5,'ADM');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `telefone` varchar(225) NOT NULL,
  `cpf` varchar(225) NOT NULL,
  `cargo_id` int(11) NOT NULL DEFAULT 1,
  `senha` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `telefone` (`telefone`),
  UNIQUE KEY `cpf` (`cpf`),
  KEY `fk_clientes_cargos` (`cargo_id`),
  CONSTRAINT `fk_clientes_cargos` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (2,'ggg','ighjhghjkg@uygugiu','123456789','1158465169',1,'123'),(7,'Postman cliente JOAO','Joao@joao.joao','joao','joao',1,'123'),(8,'Postman cliente mateus','mateus','mateus','mateus',1,'123'),(9,'aaaa','aaaa','aaaa','aaaa',1,'123'),(10,'bbb','bbb','bbb','bbb',1,'123'),(14,'eee','eee@eee.eee','eee','eee',1,'$2y$10$X.9YjSgHw8/hkk1NxvOVMexxiCGO9O8X8McJyCeXzYDUdGpzMff7C'),(15,'fff','fff@fff.fff','fff','fff',1,'$2y$10$VDPBdauj99DAEvwx/HnYI.gHL5FAtsKzVYrPNsmLmD9xr3jGzlxj6'),(16,'rrr','rrr@rrr.rrr','rrr','rrr',1,'$2y$10$ZjS8e.vIhE9c24v6Qv9tL.QGKzc2aZH6.GK0ZJxAuKTmRjbxbA2Re'),(17,'uira','uira@uira.uira','123','123',1,'$2y$10$Mv8kEoBRyUl7Qf.gw9KmZuy7qYMGeWDP6e0EXF7cx8LhpbL7U358W'),(19,'salve','salve@salve.salve','1234','1234',1,'$2y$10$LQYkkPaYOBz8vH65BOt49eH/kTlriJ0w.5tYdLz8Q85r30K8sNV2O'),(20,'salve','salv@salv.salv','12345','12345',1,'$2y$10$1i2/nl5yy6dGdcr5ZQTsBeR6TL5tyCYNCiShAjJZPDffh9Rvd6RZG'),(22,'salve','salvi@salvi.salvi','123456','123456',1,'$2y$10$vDxXMJSXa9nsadqz14iQn.3X6DNDLWuBDSAjO6DRumcgu3hRmlP6a'),(23,'a1','a1@a1.a1','a1','a1',1,'$2y$10$Zg67GFkecCxvcF5FVyg12OduUtfDYHmOH5vNM1IZYnvpaegGs9hG2'),(25,'a1','a2@a2.a2','a2','a2',1,'$2y$10$PmMNSXt.nMmQqCPMymM1lOcVZjTZ84DnIblJkTM9YM3ALGDkjN1kq'),(27,'a3','a3@a3.a3','a3','a3',1,'$2y$10$CjbZJQXq1TfNyskppolfOugR5xjvSDb3fcDVD.FeGZ40IuAtwnh6i'),(28,'a4','a4@a4.a4','a4','a4',1,'$2y$10$G35SQE4U6l4uNqPJcZNzKeQ6cqpk7FoAy.tsOh.7ivX/jGryxUb/u'),(29,'a5','a5@a5.a5','a5','a5',1,'$2y$10$jtrtIvJGrgoCx11bMyT65.3OKoHKymHA93tve6w5A5ujzzm2kNReu'),(30,'a6','a6@a6.a6','a6','a6',1,'$2y$10$DhdVHrzRlkXl1gnEg7AX3elyTPFVWO04Fq7Za7O5Nd0YGvgCrOxVa'),(31,'a7','a7@a7.a7','a7','a7',1,'$2y$10$9sYufMq0Zm6Ii658LoMh5uL3FTm0TZMAsf2DeA9xsZhVON0w3Ks9q'),(37,'z','z@z.z','z','z',1,'$2b$10$OmPJQml9YPIKx3.z2xqVdu7RgivrkeJlXeq7w8iA2Wy6uS/TlWnKe'),(48,'z','z@z.zz','zz','zz',1,'$2b$10$KO72NaV0UCaqEZE2mgqlEeqUWA74PBWKAcmkx2aIlFEk2rqdpdS.S'),(50,'z','z@z.zzz','zzz','zzz',1,'$2b$10$PUlngAlm6pGDVf.r.MBvLuUD51vfXUYZRF6Wa6Huj8e9h8bDMRZOa');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens`
--

DROP TABLE IF EXISTS `imagens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `tipo` varchar(100) NOT NULL,
  `caminho` varchar(350) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens`
--

LOCK TABLES `imagens` WRITE;
/*!40000 ALTER TABLE `imagens` DISABLE KEYS */;
INSERT INTO `imagens` VALUES (1,'5d8f8258212c1d67701bee3c7708fa48.jpg','',''),(2,'33ee3abb192d3e5ce5a30e6005ca24e4.jpg','','');
/*!40000 ALTER TABLE `imagens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `imagens_quartos`
--

DROP TABLE IF EXISTS `imagens_quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `imagens_quartos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `imagem_id` int(11) NOT NULL,
  `quarto_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `imagem_id` (`imagem_id`,`quarto_id`),
  KEY `quarto_id` (`quarto_id`),
  CONSTRAINT `imagens_quartos_ibfk_1` FOREIGN KEY (`imagem_id`) REFERENCES `imagens` (`id`),
  CONSTRAINT `imagens_quartos_ibfk_2` FOREIGN KEY (`quarto_id`) REFERENCES `quartos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `imagens_quartos`
--

LOCK TABLES `imagens_quartos` WRITE;
/*!40000 ALTER TABLE `imagens_quartos` DISABLE KEYS */;
INSERT INTO `imagens_quartos` VALUES (2,2,19);
/*!40000 ALTER TABLE `imagens_quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario_id` int(11) DEFAULT NULL,
  `cliente_id` int(11) NOT NULL,
  `data` datetime NOT NULL DEFAULT current_timestamp(),
  `pagamento` enum('PIX','Dinheiro','Debito','Credito') NOT NULL CHECK (`pagamento` in ('PIX','Dinheiro','Debito','Credito')),
  PRIMARY KEY (`id`),
  KEY `usuario_id` (`usuario_id`),
  KEY `cliente_id` (`cliente_id`),
  CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (2,4,2,'2025-06-05 16:16:27','PIX'),(4,4,2,'2025-09-17 16:55:54','PIX'),(5,4,2,'0000-00-00 00:00:00','Debito'),(18,NULL,2,'2025-10-16 16:35:59','PIX'),(24,4,2,'2025-10-16 16:50:41','PIX'),(33,4,2,'2025-10-16 17:08:04','PIX'),(35,NULL,14,'2025-10-30 17:02:32','PIX'),(36,NULL,14,'2025-10-30 17:02:43','PIX'),(37,NULL,14,'2025-10-30 17:03:45','PIX'),(38,4,14,'2025-10-30 17:05:06','PIX'),(39,4,14,'2025-10-31 14:52:29','PIX'),(40,4,14,'2025-10-31 15:02:23','Debito'),(41,4,14,'2025-10-31 15:18:37','PIX'),(42,4,14,'2025-10-31 15:22:16','Debito'),(43,4,14,'2025-10-31 15:31:13','PIX'),(44,4,14,'2025-10-31 17:18:14','PIX'),(45,4,14,'2025-10-31 17:22:28','PIX'),(46,4,14,'2025-10-31 17:23:25','Debito'),(47,NULL,14,'2026-02-25 16:08:23','PIX'),(48,NULL,14,'2026-02-25 16:09:05','PIX'),(49,NULL,14,'2026-02-25 16:16:25','PIX'),(50,NULL,14,'2026-02-25 16:16:38','PIX'),(51,NULL,14,'2026-02-25 16:16:42','PIX'),(52,NULL,14,'2026-02-25 16:16:44','PIX'),(53,NULL,14,'2026-02-25 16:16:51','PIX'),(54,NULL,14,'2026-02-25 16:17:10','PIX'),(55,NULL,14,'2026-02-25 16:17:20','PIX'),(56,NULL,14,'2026-02-25 16:17:24','PIX'),(57,NULL,14,'2026-02-25 16:17:31','PIX');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quartos`
--

DROP TABLE IF EXISTS `quartos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `quartos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) NOT NULL,
  `numero` varchar(225) NOT NULL,
  `qnt_cama_casal` int(11) NOT NULL,
  `qnt_cama_solteiro` int(11) NOT NULL,
  `preco` double(6,2) NOT NULL,
  `disponivel` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `numero` (`numero`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quartos`
--

LOCK TABLES `quartos` WRITE;
/*!40000 ALTER TABLE `quartos` DISABLE KEYS */;
INSERT INTO `quartos` VALUES (3,'teste','12',1,1,1.00,1),(4,'teste2','123',1,1,1.00,1),(5,'teste3','1212',1,1,1.00,1),(6,'teste4','122',1,1,1.00,1),(7,'Postman Room','505',2,2,200.65,1),(8,'aaaaa','111',4,0,235.00,1),(9,'aaaaaaa','222',1,4,345.00,1),(10,'zfdg','3416',2456,2457,2475.00,0),(11,'k','4',4,4,4.00,1),(12,'tio','45',0,1,45.00,1),(13,'Panda','54',50,50,50.00,1),(14,'dzafh','6124',57,265,524.00,1),(15,'457','57',457,256,1324.00,1),(16,'fgj','456',4856,456,4865.00,1),(17,'jiji','1414',1414,1414,1414.00,1),(19,'hyhy','78646',456,46,546.00,1);
/*!40000 ALTER TABLE `quartos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas`
--

DROP TABLE IF EXISTS `reservas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pedido_id` int(11) NOT NULL,
  `quarto_id` int(11) NOT NULL,
  `adicional_id` int(11) NOT NULL DEFAULT 1,
  `fim` datetime NOT NULL,
  `inicio` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pedido_id` (`pedido_id`),
  KEY `quarto_id` (`quarto_id`),
  KEY `adicional_id` (`adicional_id`),
  CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`),
  CONSTRAINT `reservas_ibfk_2` FOREIGN KEY (`quarto_id`) REFERENCES `quartos` (`id`),
  CONSTRAINT `reservas_ibfk_3` FOREIGN KEY (`adicional_id`) REFERENCES `adicionais` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas`
--

LOCK TABLES `reservas` WRITE;
/*!40000 ALTER TABLE `reservas` DISABLE KEYS */;
INSERT INTO `reservas` VALUES (2,4,3,2,'2025-10-15 20:20:20','2025-10-10 20:20:20'),(3,5,3,2,'2027-10-25 12:00:00','2025-10-20 14:00:00'),(4,2,3,2,'2028-11-05 19:25:05','2025-10-30 19:25:05'),(5,18,9,2,'2026-10-15 00:00:00','2025-10-10 00:00:00'),(6,18,10,2,'2026-10-15 00:00:00','2025-10-10 00:00:00'),(7,24,7,2,'2026-10-15 00:00:00','2025-10-10 00:00:00'),(8,24,6,2,'2026-10-15 00:00:00','2025-10-10 00:00:00'),(9,33,5,1,'2026-10-15 00:00:00','2025-10-10 00:00:00'),(10,38,13,1,'2026-06-05 00:00:00','2026-06-01 00:00:00'),(11,38,19,1,'2026-06-05 00:00:00','2026-06-01 00:00:00'),(12,39,19,1,'2025-12-31 00:00:00','2025-12-01 00:00:00'),(13,39,16,1,'2025-12-31 00:00:00','2025-12-01 00:00:00'),(14,39,8,1,'2025-12-31 00:00:00','2025-12-01 00:00:00'),(15,40,4,1,'2025-11-20 00:00:00','2025-11-18 00:00:00'),(16,41,17,1,'2025-11-13 00:00:00','2025-11-12 00:00:00'),(17,41,15,1,'2025-11-13 00:00:00','2025-11-12 00:00:00'),(18,41,11,1,'2025-11-13 00:00:00','2025-11-12 00:00:00'),(19,42,13,1,'2025-12-17 00:00:00','2025-12-16 00:00:00'),(20,42,14,1,'2025-12-17 00:00:00','2025-12-16 00:00:00'),(21,42,4,1,'2025-12-17 00:00:00','2025-12-16 00:00:00'),(22,43,4,1,'2026-02-11 00:00:00','2026-02-10 00:00:00'),(23,43,8,1,'2026-02-11 00:00:00','2026-02-10 00:00:00'),(24,43,13,1,'2026-02-11 00:00:00','2026-02-10 00:00:00'),(25,44,12,1,'2025-11-01 00:00:00','2025-10-31 00:00:00'),(26,45,19,1,'2025-11-08 00:00:00','2025-11-07 00:00:00'),(27,46,16,1,'2025-11-18 00:00:00','2025-11-07 00:00:00'),(28,47,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(29,47,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(30,48,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(31,48,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(32,49,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(33,49,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(34,50,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(35,50,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(36,51,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(37,51,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(38,52,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(39,52,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(40,53,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(41,53,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(42,54,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(43,54,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(44,55,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(45,55,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(46,56,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(47,56,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(48,57,3,1,'2026-02-20 12:00:00','2026-02-19 14:00:00'),(49,57,4,1,'2026-02-20 12:00:00','2026-02-19 14:00:00');
/*!40000 ALTER TABLE `reservas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(225) NOT NULL,
  `senha` varchar(225) NOT NULL,
  `cargo_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `cargo_id` (`cargo_id`),
  CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`cargo_id`) REFERENCES `cargos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (4,'ggg','$2y$10$BR38qUTe40Gk1.XhemCy1eDz5w1Y3l3FwrYkdpeSs5mCvj.sXU9dq',4,'ggg@ggg.ggg'),(5,'jao','123',4,'jao@onlyfans.com'),(7,'aaa','$2y$10$N7og3bj6nEAc0lh8P8kjAOzoZRu8OlXU9CJOSVLQA.XMQTImVD7Q.',4,'func@func.func');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-27 17:13:36
