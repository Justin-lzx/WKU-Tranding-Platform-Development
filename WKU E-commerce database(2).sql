CREATE DATABASE  IF NOT EXISTS `database` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `database`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: database
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `commodity`
--

DROP TABLE IF EXISTS `commodity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `commodity` (
  `id_commodity` int NOT NULL,
  `price` float DEFAULT NULL,
  `product_ID` int DEFAULT NULL,
  `product_name` varchar(90) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `product_description` text,
  `phoyo_link` varchar(150) DEFAULT NULL,
  `classification` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_commodity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `order_history`
--

DROP TABLE IF EXISTS `order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_history` (
  `id_order_history` int NOT NULL,
  `order_number` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `amount_of_transaction` int DEFAULT NULL,
  `customer_name` varchar(45) DEFAULT NULL,
  `merchant_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_order_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `shopping_cart`
--

DROP TABLE IF EXISTS `shopping_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shopping_cart` (
  `id_shopping_cart` int NOT NULL,
  `number_of_products` int DEFAULT NULL,
  `total_number` int DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `total_amount` float DEFAULT NULL,
  PRIMARY KEY (`id_shopping_cart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `student_merchants`
--

DROP TABLE IF EXISTS `student_merchants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_merchants` (
  `id_student_merchants` int NOT NULL,
  `contact_information` text,
  `password` varchar(45) DEFAULT NULL,
  `photo_link` varchar(150) DEFAULT NULL,
  `student_ID` int DEFAULT NULL,
  `authentication_situation` varchar(45) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_student_merchants`),
  CONSTRAINT `id_student_merchants` FOREIGN KEY (`id_student_merchants`) REFERENCES `order_history` (`id_order_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `students_consumers`
--

DROP TABLE IF EXISTS `students_consumers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students_consumers` (
  `id_students_consumers` int NOT NULL,
  `contact_information` text,
  `password` varchar(45) DEFAULT NULL,
  `photo_link` varchar(150) DEFAULT NULL,
  `student_ID` int DEFAULT NULL,
  `authentication_situation` varchar(45) DEFAULT NULL,
  `student_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_students_consumers`),
  CONSTRAINT `id_students_consumers` FOREIGN KEY (`id_students_consumers`) REFERENCES `order_history` (`id_order_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-19 16:18:36
