-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: sampledb
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
-- Table structure for table `Customers`
--

DROP TABLE IF EXISTS `Customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Customers` (
  `customer_id` int NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `gender` char(1) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `signup_date` date DEFAULT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customers`
--

LOCK TABLES `Customers` WRITE;
/*!40000 ALTER TABLE `Customers` DISABLE KEYS */;
INSERT INTO `Customers` VALUES (1,'Alice','Smith','F','Mumbai','2024-01-10'),(2,'Bob','Jones','M','Delhi','2024-02-15'),(3,'Charlie','Brown','M','Mumbai','2024-01-18'),(4,'Daisy','Khan','F','Chennai','2024-03-10'),(51,'Sarah','Miller','F','Hyderabad','2025-01-05'),(52,'David','Davis','M','Bangalore','2025-01-12'),(53,'Olivia','Garcia','F','Chennai','2025-01-20'),(54,'James','Rodriguez','M','Pune','2025-01-25'),(55,'Sophia','Martinez','F','Kolkata','2025-02-01'),(56,'William','Hernandez','M','Delhi','2025-02-08'),(57,'Isabella','Lopez','F','Mumbai','2025-02-15'),(58,'Daniel','Gonzalez','M','Hyderabad','2025-02-20'),(59,'Mia','Wilson','F','Bangalore','2025-03-01'),(60,'Alexander','Anderson','M','Chennai','2025-03-07'),(61,'Emily','Thomas','F','Pune','2025-03-15'),(62,'Michael','Jackson','M','Kolkata','2025-03-22'),(63,'Charlotte','White','F','Delhi','2025-03-28'),(64,'Ethan','Harris','M','Mumbai','2025-04-05'),(65,'Amelia','Clark','F','Hyderabad','2025-04-10'),(66,'Jacob','Lewis','M','Bangalore','2025-04-18'),(67,'Harper','Robinson','F','Chennai','2025-04-25'),(68,'Noah','Walker','M','Pune','2025-05-01'),(69,'Evelyn','Young','F','Kolkata','2025-05-08'),(70,'Liam','Hall','M','Delhi','2025-05-15'),(71,'Abigail','Allen','F','Mumbai','2025-05-20'),(72,'Benjamin','Wright','M','Hyderabad','2025-05-28'),(73,'Ella','King','F','Bangalore','2025-06-05'),(74,'Lucas','Scott','M','Chennai','2025-06-12'),(75,'Scarlett','Green','F','Pune','2025-06-18'),(76,'Mason','Baker','M','Kolkata','2025-06-25'),(77,'Chloe','Adams','F','Delhi','2025-07-01'),(78,'Logan','Nelson','M','Mumbai','2025-07-08'),(79,'Grace','Carter','F','Hyderabad','2025-07-15'),(80,'Jackson','Mitchell','M','Bangalore','2025-07-22'),(81,'Lily','Perez','F','Chennai','2025-07-28'),(82,'Caleb','Roberts','M','Pune','2025-08-05'),(83,'Avery','Turner','F','Kolkata','2025-08-12'),(84,'Samuel','Phillips','M','Delhi','2025-08-19'),(85,'Zoey','Campbell','F','Mumbai','2025-08-26');
/*!40000 ALTER TABLE `Customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Orders`
--

DROP TABLE IF EXISTS `Orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Orders` (
  `order_id` int NOT NULL,
  `customer_id` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `Customers` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Orders`
--

LOCK TABLES `Orders` WRITE;
/*!40000 ALTER TABLE `Orders` DISABLE KEYS */;
INSERT INTO `Orders` VALUES (1001,1,'2024-06-01',95000.00),(1002,2,'2024-06-03',30500.00),(1003,1,'2024-06-10',500.00),(1004,3,'2024-06-15',2500.00),(1051,51,'2025-01-15',8000.00),(1052,52,'2025-01-20',45000.00),(1053,53,'2025-01-28',3500.00),(1054,54,'2025-02-03',700.00),(1055,55,'2025-02-10',1200.00),(1056,56,'2025-02-18',9000.00),(1057,57,'2025-02-25',6000.00),(1058,58,'2025-03-03',550.00),(1059,59,'2025-03-10',18000.00),(1060,60,'2025-03-17',2000.00),(1061,61,'2025-03-24',1500.00),(1062,62,'2025-04-01',2000.00),(1063,63,'2025-04-08',10000.00),(1064,64,'2025-04-15',25000.00),(1065,65,'2025-04-22',4500.00),(1066,66,'2025-04-29',400.00),(1067,67,'2025-05-06',12000.00),(1068,68,'2025-05-13',35000.00),(1069,69,'2025-05-20',1800.00),(1070,70,'2025-05-27',900.00),(1071,71,'2025-06-03',22000.00),(1072,72,'2025-06-10',15000.00),(1073,73,'2025-06-17',2800.00),(1074,74,'2025-06-24',250.00),(1075,75,'2025-07-01',7000.00),(1076,76,'2025-07-08',28000.00),(1077,77,'2025-07-15',3000.00),(1078,78,'2025-07-22',5000.00),(1079,79,'2025-07-29',4000.00),(1080,80,'2025-08-05',1000.00),(1081,81,'2025-08-12',2500.00),(1082,82,'2025-08-19',9000.00),(1083,83,'2025-08-26',3500.00),(1084,84,'2025-09-02',2000.00),(1085,85,'2025-09-09',300.00);
/*!40000 ALTER TABLE `Orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Products`
--

DROP TABLE IF EXISTS `Products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Products` (
  `product_id` int NOT NULL,
  `product_name` varchar(100) DEFAULT NULL,
  `category` varchar(50) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Products`
--

LOCK TABLES `Products` WRITE;
/*!40000 ALTER TABLE `Products` DISABLE KEYS */;
INSERT INTO `Products` VALUES (101,'Laptop','Electronics',65000.00),(102,'Smartphone','Electronics',30000.00),(103,'Shoes','Apparel',2500.00),(104,'Book','Stationery',500.00),(201,'Gaming Keyboard','Electronics',8000.00),(202,'Smart TV','Electronics',45000.00),(203,'Running Jacket','Apparel',3500.00),(204,'Mystery Novel','Books',700.00),(205,'Ergonomic Mouse','Electronics',1200.00),(206,'Air Purifier','Home Appliances',9000.00),(207,'Winter Coat','Apparel',6000.00),(208,'Self-Help Book','Books',550.00),(209,'External Monitor','Electronics',18000.00),(210,'Hand Mixer','Home Appliances',2000.00),(211,'Sweatpants','Apparel',1500.00),(212,'Art History Book','Books',2000.00),(213,'Noise-Cancelling Headphones','Electronics',10000.00),(214,'Robot Vacuum','Home Appliances',25000.00),(215,'Winter Boots','Apparel',4500.00),(216,'Desk Organizer','Stationery',400.00),(217,'Graphics Tablet','Electronics',12000.00),(218,'Dishwasher','Home Appliances',35000.00),(219,'Formal Shirt','Apparel',1800.00),(220,'Science Fiction Anthology','Books',900.00),(221,'Portable Projector','Electronics',22000.00),(222,'Espresso Machine','Home Appliances',15000.00),(223,'Sportswear Set','Apparel',2800.00),(224,'Calendar 2026','Stationery',250.00),(225,'Smart Home Hub','Electronics',7000.00),(226,'Air Conditioner Portable','Home Appliances',28000.00),(227,'Backpack Urban','Accessories',3000.00),(228,'Fitness Tracker','Electronics',5000.00),(229,'Juicer','Home Appliances',4000.00),(230,'Silk Scarf','Apparel',1000.00),(231,'External CD/DVD Drive','Electronics',2500.00),(232,'Smart Lock','Home & Security',9000.00),(233,'Bluetooth Earbuds','Electronics',3500.00),(234,'Electric Shaver','Personal Care',2000.00),(235,'Gaming Mousepad','Electronics',300.00);
/*!40000 ALTER TABLE `Products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-23 18:20:32
