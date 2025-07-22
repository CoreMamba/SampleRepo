-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: finalsampledb
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `OrderDetails`
--

DROP TABLE IF EXISTS `OrderDetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `OrderDetails` (
  `detail_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `quantity` int DEFAULT NULL,
  `price_each` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`detail_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `OrderDetails_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `sampledb`.`Orders` (`order_id`),
  CONSTRAINT `OrderDetails_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `sampledb`.`Products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `OrderDetails`
--

LOCK TABLES `OrderDetails` WRITE;
/*!40000 ALTER TABLE `OrderDetails` DISABLE KEYS */;
INSERT INTO `OrderDetails` VALUES (1,1001,101,1,65000.00),(2,1001,102,1,30000.00),(3,1002,102,1,30000.00),(4,1003,104,1,500.00),(5,1004,103,1,2500.00);
/*!40000 ALTER TABLE `OrderDetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Returns`
--

DROP TABLE IF EXISTS `Returns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Returns` (
  `return_id` int NOT NULL,
  `order_id` int DEFAULT NULL,
  `product_id` int DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  `reason` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`return_id`),
  KEY `order_id` (`order_id`),
  KEY `product_id` (`product_id`),
  CONSTRAINT `Returns_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `sampledb`.`Orders` (`order_id`),
  CONSTRAINT `Returns_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `sampledb`.`Products` (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Returns`
--

LOCK TABLES `Returns` WRITE;
/*!40000 ALTER TABLE `Returns` DISABLE KEYS */;
INSERT INTO `Returns` VALUES (1,1002,102,'2024-06-05','Defective item');
/*!40000 ALTER TABLE `Returns` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-22 14:19:17
