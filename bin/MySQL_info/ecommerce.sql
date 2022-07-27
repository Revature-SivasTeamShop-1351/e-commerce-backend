CREATE DATABASE  IF NOT EXISTS `full-stack-ecommerce` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `full-stack-ecommerce`;
-- MySQL dump 10.13  Distrib 8.0.29, for macos12 (x86_64)
--
-- Host: 127.0.0.1    Database: full-stack-ecommerce
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `sku` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `unit_price` decimal(13,2) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `active` bit(1) DEFAULT b'1',
  `quantity` int DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `last_updated` datetime(6) DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category` (`category_id`),
  CONSTRAINT `fk_category` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=106 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,'BOOK-TECH-1000','Crash Course in Python','Learn Python at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',14.99,'assets/images/products/books/book-luv2code-1000.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,1),(2,'BOOK-TECH-1001','Become a Guru in JavaScript','Learn JavaScript at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',20.99,'assets/images/products/books/book-luv2code-1001.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,1),(3,'BOOK-TECH-1002','Exploring Vue.js','Learn Vue.js at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',14.99,'assets/images/products/books/book-luv2code-1002.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,1),(4,'BOOK-TECH-1003','Advanced Techniques in Big Data','Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',13.99,'assets/images/products/books/book-luv2code-1003.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,1),(5,'BOOK-TECH-1004','Crash Course in Big Data','Learn Big Data at your own pace. The author explains how the technology works in easy-to-understand language. This book includes working examples that you can apply to your own projects. Purchase the book and get started today!',18.99,'assets/images/products/books/book-luv2code-1004.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,1),(26,'COFFEEMUG-1000','Coffee Mug - Express','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/coffeemugs/coffeemug-luv2code-1000.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,2),(27,'COFFEEMUG-1001','Coffee Mug - Cherokee','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/coffeemugs/coffeemug-luv2code-1001.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,2),(28,'COFFEEMUG-1002','Coffee Mug - Sweeper','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/coffeemugs/coffeemug-luv2code-1002.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,2),(29,'COFFEEMUG-1003','Coffee Mug - Aspire','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/coffeemugs/coffeemug-luv2code-1003.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,2),(30,'COFFEEMUG-1004','Coffee Mug - Dorian','Do you love mathematics? If so, then you need this elegant coffee mug with an amazing fractal design. You don\'t have to worry about boring coffee mugs anymore. This coffee mug will be the topic of conversation in the office, guaranteed! Buy it now!',18.99,'assets/images/products/coffeemugs/coffeemug-luv2code-1004.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,2),(51,'MOUSEPAD-1000','Mouse Pad - Express','Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!',17.99,'assets/images/products/mousepads/mousepad-luv2code-1000.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,3),(52,'MOUSEPAD-1001','Mouse Pad - Cherokee','Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!',17.99,'assets/images/products/mousepads/mousepad-luv2code-1001.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,3),(53,'MOUSEPAD-1002','Mouse Pad - Sweeper','Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!',17.99,'assets/images/products/mousepads/mousepad-luv2code-1002.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,3),(54,'MOUSEPAD-1003','Mouse Pad - Aspire','Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!',17.99,'assets/images/products/mousepads/mousepad-luv2code-1003.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,3),(55,'MOUSEPAD-1004','Mouse Pad - Dorian','Fractal images are amazing! You can now own a mouse pad with a unique and amazing fractal. The mouse pad is made of a durable and smooth material. Your mouse will easily glide across the mouse pad. This mouse pad will brighten your workspace. Buy it now!',17.99,'assets/images/products/mousepads/mousepad-luv2code-1004.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,3),(76,'LUGGAGETAG-1000','Luggage Tag - Cherish','This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!',16.99,'assets/images/products/luggagetags/luggagetag-luv2code-1000.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,4),(77,'LUGGAGETAG-1001','Luggage Tag - Adventure','This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!',16.99,'assets/images/products/luggagetags/luggagetag-luv2code-1001.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,4),(78,'LUGGAGETAG-1002','Luggage Tag - Skyline','This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!',16.99,'assets/images/products/luggagetags/luggagetag-luv2code-1002.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,4),(79,'LUGGAGETAG-1003','Luggage Tag - River','This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!',16.99,'assets/images/products/luggagetags/luggagetag-luv2code-1003.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,4),(80,'LUGGAGETAG-1004','Luggage Tag - Trail Steps','This luggage tag will help you identify your luggage. The luggage tag is very unique and it will stand out from the crowd. The luggage tag is created out of a rugged and durable plastic. Buy this luggage tag now to make it easy to identify your luggage!',16.99,'assets/images/products/luggagetags/luggagetag-luv2code-1004.png',_binary '',100,'2022-07-08 11:56:42.000000',NULL,4),(101,'HEADPHONES-1000','Headphones','A nice pair of headphones',20.00,'https://i.insider.com/54eb437f6bb3f7697f85da71?width=1000&format=jpeg&auto=webp',_binary '',10,'2022-07-15 02:16:30.000000',NULL,5),(102,'TEENSHIRT-1000','TeeShirt','A nice TeeShirt',45.00,'https://d3o2e4jr3mxnm3.cloudfront.net/Mens-Jake-Guitar-Vintage-Crusher-Tee_68382_1_lg.png',_binary '',5,'2022-07-15 02:16:30.000000',NULL,5),(103,'SHOPPINGBAG-1000','Shopping Bag','A reusable shopping bag',2.50,'https://images.ctfassets.net/5gvckmvm9289/3BlDoZxSSjqAvv1jBJP7TH/65f9a95484117730ace42abf64e89572/Noissue-x-Creatsy-Tote-Bag-Mockup-Bundle-_4_-2.png',_binary '',20,'2022-07-15 02:16:30.000000',NULL,5),(104,'BASEBALLCAP-1000','Baseball Cap','A fancy cap for a fancy person',10.00,'https://d3o2e4jr3mxnm3.cloudfront.net/Rocket-Vintage-Chill-Cap_66374_1_lg.png',_binary '',20,'2022-07-15 02:16:30.000000',NULL,5),(105,'COAT-1000','Coat','A nice coat',80.00,'https://www.pngarts.com/files/3/Women-Jacket-PNG-High-Quality-Image.png',_binary '',3,'2022-07-15 02:16:30.000000',NULL,5);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_category`
--

DROP TABLE IF EXISTS `product_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_category`
--

LOCK TABLES `product_category` WRITE;
/*!40000 ALTER TABLE `product_category` DISABLE KEYS */;
INSERT INTO `product_category` VALUES (1,'Books'),(2,'Coffee Mugs'),(3,'Mouse Pads'),(4,'Luggage Tags'),(5,'Merchandise');
/*!40000 ALTER TABLE `product_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `email` varchar(45) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'testuser@gmail.com','Test','User','password');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-07-22  6:32:32
