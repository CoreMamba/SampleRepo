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
INSERT INTO `OrderDetails` VALUES (1,1001,101,1,65000.00),(2,1001,102,1,30000.00),(3,1002,102,1,30000.00),(4,1003,104,1,500.00),(5,1004,103,1,2500.00),(101,1051,201,1,8000.00),(102,1052,202,1,45000.00),(103,1053,203,1,3500.00),(104,1054,204,1,700.00),(105,1055,205,1,1200.00),(106,1056,206,1,9000.00),(107,1057,207,1,6000.00),(108,1058,208,1,550.00),(109,1059,209,1,18000.00),(110,1060,210,1,2000.00),(111,1061,211,1,1500.00),(112,1062,212,1,2000.00),(113,1063,213,1,10000.00),(114,1064,214,1,25000.00),(115,1065,215,1,4500.00),(116,1066,216,1,400.00),(117,1067,217,1,12000.00),(118,1068,218,1,35000.00),(119,1069,219,1,1800.00),(120,1070,220,1,900.00),(121,1071,221,1,22000.00),(122,1072,222,1,15000.00),(123,1073,223,1,2800.00),(124,1074,224,1,250.00),(125,1075,225,1,7000.00),(126,1076,226,1,28000.00),(127,1077,227,1,3000.00),(128,1078,228,1,5000.00),(129,1079,229,1,4000.00),(130,1080,230,1,1000.00),(131,1081,231,1,2500.00),(132,1082,232,1,9000.00),(133,1083,233,1,3500.00),(134,1084,234,1,2000.00),(135,1085,235,1,300.00);
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
INSERT INTO `Returns` VALUES (1,1002,102,'2024-06-05','Defective item'),(101,1051,201,'2025-01-20','Customer changed mind'),(102,1053,203,'2025-02-01','Incorrect size'),(103,1056,206,'2025-02-25','Product not as described'),(104,1059,209,'2025-03-15','Screen flickering'),(105,1063,213,'2025-04-12','Uncomfortable fit'),(106,1064,214,'2025-04-28','Suction power weak'),(107,1067,217,'2025-05-10','Stylus unresponsive'),(108,1071,221,'2025-06-07','Low brightness'),(109,1075,225,'2025-07-05','Connectivity issues'),(110,1078,228,'2025-07-25','Inaccurate readings'),(111,1082,232,'2025-08-22','Installation difficulty'),(112,1085,235,'2025-09-12','Too small');
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

-- Dump completed on 2025-07-23 18:21:32
