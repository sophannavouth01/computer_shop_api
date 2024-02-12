-- MySQL dump 10.13  Distrib 8.1.0, for macos14.0 (arm64)
--
-- Host: localhost    Database: computer_shop
-- ------------------------------------------------------
-- Server version	8.1.0

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_reset_tokens_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(5,'2024_01_18_045321_add_role_to_users_table',2),(6,'2024_01_18_072215_create_products_table',3),(7,'2024_01_18_072938_make_image_nullable_in_products_table',4),(8,'2024_01_19_083653_create_orders_table',5),(9,'2024_01_19_083701_create_order_details_table',5),(10,'2024_01_20_070450_add_status_to_orders_table',6),(13,'2024_01_22_063336_create_payments_table',7),(15,'2024_01_23_032101_add_total_qty_to_orders_table',8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order_details`
--

DROP TABLE IF EXISTS `order_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order_details` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `order_id` bigint unsigned NOT NULL,
  `product_id` bigint unsigned NOT NULL,
  `qty` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `total_price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_details_order_id_foreign` (`order_id`),
  KEY `order_details_product_id_foreign` (`product_id`),
  CONSTRAINT `order_details_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  CONSTRAINT `order_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=161 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order_details`
--

LOCK TABLES `order_details` WRITE;
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` VALUES (83,41,46,20,984.00,19680.00,'2024-01-23 21:04:04','2024-01-23 21:06:09'),(85,41,14,2,1599.00,3198.00,'2024-01-23 21:08:38','2024-01-23 21:08:39'),(86,41,16,2,1399.00,2798.00,'2024-01-23 21:09:00','2024-01-23 21:09:01'),(103,59,39,1,8837.00,8837.00,'2024-01-24 01:03:56','2024-01-25 19:56:45'),(104,59,40,1,8766.00,8766.00,'2024-01-24 01:03:57','2024-01-25 19:56:47'),(110,59,16,2,1399.00,2798.00,'2024-01-25 19:44:11','2024-01-25 19:44:13'),(125,67,16,1,1399.00,1399.00,'2024-01-25 20:55:17','2024-01-25 20:55:17'),(126,67,17,1,999.00,999.00,'2024-01-25 20:55:18','2024-01-25 20:55:18'),(127,68,16,2,1399.00,2798.00,'2024-01-25 21:26:23','2024-01-25 21:26:25'),(128,68,17,1,999.00,999.00,'2024-01-25 21:26:27','2024-01-25 21:26:27'),(129,69,17,3,999.00,2997.00,'2024-01-25 21:29:20','2024-01-25 21:29:22'),(130,70,17,4,999.00,3996.00,'2024-01-25 21:32:07','2024-01-25 21:32:08'),(131,71,16,2,1399.00,2798.00,'2024-01-25 21:36:44','2024-01-25 21:36:44'),(132,72,14,2,1599.00,3198.00,'2024-01-25 21:39:05','2024-01-25 21:39:11'),(135,74,14,1,1599.00,1599.00,'2024-01-25 23:35:50','2024-01-25 23:38:37'),(136,74,16,1,1399.00,1399.00,'2024-01-25 23:35:51','2024-01-25 23:35:51'),(140,76,14,1,1599.00,1599.00,'2024-01-30 05:28:12','2024-01-30 05:28:12'),(141,76,16,4,1399.00,5596.00,'2024-01-30 05:28:14','2024-01-30 05:28:59'),(143,77,16,5,1399.00,6995.00,'2024-02-06 04:32:55','2024-02-06 07:30:28'),(144,77,17,1,999.00,999.00,'2024-02-06 04:32:57','2024-02-06 04:32:57'),(145,77,18,1,899.00,899.00,'2024-02-06 04:32:58','2024-02-06 04:32:58'),(146,77,14,8,1599.00,12792.00,'2024-02-06 04:33:11','2024-02-06 04:36:12'),(147,78,14,2,1599.00,3198.00,'2024-02-06 07:31:19','2024-02-06 07:58:50'),(148,78,18,1,899.00,899.00,'2024-02-06 07:38:54','2024-02-06 07:38:54'),(155,81,14,2,1599.00,3198.00,'2024-02-07 01:38:14','2024-02-07 01:38:17'),(156,82,14,1,1599.00,1599.00,'2024-02-07 01:43:52','2024-02-07 01:43:52');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `total_amount` double(8,2) NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `total_qty` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `orders_user_id_foreign` (`user_id`),
  CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (41,2,25676.00,'completed','2024-01-23 21:04:04','2024-01-23 21:19:04',0),(59,3,20401.00,'completed','2024-01-24 01:03:56','2024-01-25 19:57:47',0),(67,3,2398.00,'completed','2024-01-25 20:55:17','2024-01-25 21:25:36',0),(68,3,3797.00,'completed','2024-01-25 21:26:23','2024-01-25 21:27:30',0),(69,3,2997.00,'completed','2024-01-25 21:29:20','2024-01-25 21:30:34',0),(70,3,3996.00,'completed','2024-01-25 21:32:07','2024-01-25 21:33:06',0),(71,3,2798.00,'completed','2024-01-25 21:36:44','2024-01-25 21:37:17',0),(72,3,3198.00,'completed','2024-01-25 21:39:05','2024-01-25 21:46:28',0),(74,3,2998.00,'completed','2024-01-25 23:35:50','2024-01-25 23:47:33',0),(76,3,7195.00,'completed','2024-01-30 05:28:12','2024-01-30 05:37:16',0),(77,3,21685.00,'completed','2024-02-06 04:32:55','2024-02-06 07:30:28',0),(78,3,4097.00,'completed','2024-02-06 07:31:19','2024-02-06 08:06:20',3),(81,3,3198.00,'completed','2024-02-07 01:38:14','2024-02-07 01:39:04',2),(82,3,1599.00,'completed','2024-02-07 01:43:52','2024-02-07 01:44:36',1);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `order_id` bigint unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payments_user_id_foreign` (`user_id`),
  KEY `payments_order_id_foreign` (`order_id`),
  CONSTRAINT `payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (5,2,41,25676.00,'credit_card',NULL,'Lida Spray','Battombong','09876543','2024-01-23 21:19:04','2024-01-23 21:19:04'),(6,3,59,20402.00,'cash',NULL,'Dara Puth','Phnom penh','012-896-7543','2024-01-25 19:57:47','2024-01-25 19:57:47'),(7,3,67,2398.00,'credit_card',NULL,'Reaksa','Kompot','098-123-987','2024-01-25 21:25:36','2024-01-25 21:25:36'),(8,3,68,3797.00,'credit_card',NULL,'Dymong','Krate','078-456-321','2024-01-25 21:27:30','2024-01-25 21:27:30'),(9,3,69,2997.00,'cash',NULL,'Leapheng','Chbar Ompov','056-645-3552','2024-01-25 21:30:34','2024-01-25 21:30:34'),(10,3,70,3996.00,'credit_card',NULL,'Mengoun','Takeo','023-456-789','2024-01-25 21:33:06','2024-01-25 21:33:06'),(11,3,71,2798.00,'cash',NULL,'test','pp','0987','2024-01-25 21:37:17','2024-01-25 21:37:17'),(12,3,72,3198.00,'cash',NULL,'linhey','pp','009984','2024-01-25 21:46:28','2024-01-25 21:46:28'),(13,3,74,2998.00,'credit_card',NULL,'Leak Sursdey','Sremreab','098-534-378','2024-01-25 23:47:33','2024-01-25 23:47:33'),(15,3,76,3997.00,'credit_card',NULL,'GEEE','FFF','99998','2024-01-30 05:37:16','2024-01-30 05:37:16'),(16,3,78,4097.00,'cash',NULL,'non','none','0983','2024-02-06 08:06:20','2024-02-06 08:06:20'),(17,3,81,1599.00,'credit_card',NULL,'Leakna','Phnom Penh','098-988-298','2024-02-07 01:39:04','2024-02-07 01:39:04'),(18,3,82,1599.00,'cash',NULL,'lika','BTB','03098383','2024-02-07 01:44:36','2024-02-07 01:44:36');
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `brandname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int NOT NULL,
  `price` double(8,2) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'MacBook Pro 14”','1234567890','Apple','Space Gray','products/Ek4Xevnr5Kjs77DpXhaWoOJ8VZnkHrMNEnFgMe6b.jpg','Laptop',60,1599.00,'esting conducted by Apple in September and October 2023 using preproduction 16-inch MacBook Pro systems with Apple M3 Pro, 12-core CPU, 18-core GPU, 36GB of RAM, and 512GB SSD.','2024-01-18 21:10:17','2024-02-07 02:05:07'),(15,'M2','0987654321','Apple','Black','products/U7IihOXfUTlBVKn05LDfDjUX3XXFLvVczRzg53u8.png','Laptop',0,1099.00,'Released in 2020','2024-01-18 21:21:06','2024-01-18 21:21:06'),(16,'Macbook Air 2020','0987654321','Apple','Space Grey','products/vzg7lkuz1t5IjyaZdT2iQYdgk4ZmXfK6PMZfLYwp.jpg','Laptop',174,1399.00,'14-inch MacBook Pro systems with Apple M3, 8-core CPU, 10-core GPU, and 24GB of RAM, production 13-inch MacBook Pro systems with Apple M2, 8-core CPU, 10-core GPU, and 24GB of RAM, production 13-inch MacBook Pro systems with Apple, and 16GB of RAM','2024-01-18 21:37:27','2024-02-07 20:52:38'),(17,'Macbook Pro 2023','1234567890','Apple','White','products/4NxSKYGUAllIIXteKpT0yols7u5fMvYN11cS2fQR.jpg','Laptop',219,999.00,'GB of RAM, production 13-inch MacBook Pro systems with Apple M2, 8-core CPU, 10-core GPU, and 24GB of RAM, production 13-inch MacBook Pro systems with Apple M1, 8-core CPU, 8-core GPU, and 16GB of RAM, and productio','2024-01-18 21:39:11','2024-02-07 20:52:39'),(18,'M1','098765567890','Apple','Black','products/rW91VSUsHWO9ECgbNJIm7HFdaAF5PcSiun6ge0kZ.jpg','Laptop',285,899.00,'Septem 14-inch MacBook Pro systems with Apple M3, 8-core CPU, 10-core GPU, and 24GB of RAM, production 13-inch MacBook Pro systems with , and 24GB of RAM, production 13-inch MacBook Pro, and 16GB of RAM, and production 1.7GHz','2024-01-18 21:41:04','2024-02-06 07:38:54'),(19,'iMac 2022','0987654321','Apple','white','products/WzwlPD9ruwPWFlnGvPP1Sn6oaGu4gbOVTT4DdBBu.jpg','Desktop',200,6000.00,'none','2024-01-23 01:40:28','2024-01-24 02:33:50'),(20,'MSI 2021','1234567890','MSI','White','products/c7dIbUvxQOlpe7knicUCb7asEzjksSv06juzSZvp.jpg','Laptop',300,2999.00,'none','2024-01-23 01:51:26','2024-01-23 02:14:44'),(21,'iMac2023','1234567890','Apple','Green','products/kJVRVPHwouGiFnN6NyJiN5FDuAeQ8rbzIyRrZly4.jpg','Desktop',655,2100.00,'none','2024-01-23 01:57:59','2024-01-24 02:33:52'),(22,'iMac 2020','0987654321','Apple','Grey','products/wot7ht7tzGTmJfd4PicbPtAkpK9HsPxkDXjOmZp5.jpg','Desktop',654,4320.00,'none','2024-01-23 02:21:11','2024-01-24 02:33:51'),(24,'IMac 2020','123456789','Apple','Yellow','products/BqT0y5gHzqW0UPRTT0Mp1H5QiQz1T3rB8gSEB2lH.jpg','Desktop',765,1234.00,'none','2024-01-23 02:33:51','2024-01-23 02:33:51'),(25,'Asos  ProArt 2023','1234567890','Asus','Blue','products/5wginZPSwFpmJCWuu0mTpqs1Uk3osSPoRpbC2yHv.jpg','Desktop',1234,23456.00,'none','2024-01-23 02:38:19','2024-01-23 02:38:19'),(26,'Monitor Asus 2020','1234567890','Asus','Blue','products/dy8J4m3KmUpWhAzqSSQfRrv3doCIGucW3VBaVmgD.jpg','Desktop',1234,9876.00,'none','2024-01-23 02:51:22','2024-01-23 02:51:22'),(27,'none','0987654321','Asus','White','products/WHaiZsUJBQkcLsvGdwm9BIJ0diUeo9CtthERL21y.jpg','Desktop',65432,88776.00,'none','2024-01-23 02:53:51','2024-01-23 02:53:51'),(28,'none','1234567890','Asus','none','products/GgJHzEnilJe1XsNKYT4QnqnMYQ9tNF6KgAQzvqdJ.png','Desktop',12,2345.00,'none','2024-01-23 02:55:04','2024-01-23 02:55:04'),(29,'none','0987654321','MSI','none','products/fE8ytahWOwloSbjlA2eGaC0sLnpGvzLeSsyKRSqt.png','Desktop',4653,33344.00,'none','2024-01-23 02:55:49','2024-01-23 02:55:49'),(30,'none','1234567890','MSI','none','products/Ze4AGniwjKieqAJDfH7CmSYqgh0DnfoiBdP6y10f.jpg','Desktop',987,2436.00,'none','2024-01-23 02:56:59','2024-01-23 02:56:59'),(31,'none','0987654321','MSI','none','products/M2NeI4Y5g2lDYzksWsVm6hhQn7iHrGriNfjMTttX.png','Desktop',46644,87764.00,'none','2024-01-23 02:58:00','2024-01-23 02:58:00'),(32,'none','1234567890','MSI','none','products/waU4VSPgeGqkkyJXO5Ce6iqLfIygBMfTXzg45CFw.png','Desktop',874,87634.00,'none','2024-01-23 02:59:02','2024-01-23 02:59:02'),(33,'none','1234567890','Dell','none','products/O8IQrXYIRqZweL0C9rRNsAdh5DfsNwyciGICfe5i.jpg','Desktop',675,4332.00,'none','2024-01-23 03:00:37','2024-01-23 03:00:37'),(34,'none','987654321','Dell','none','products/rwHNwibMFlWVOYwPwChv3qfgSX80uWspMg1wa6Jq.jpg','Desktop',234,4343.00,'none','2024-01-23 03:01:55','2024-01-23 03:01:55'),(35,'none','1234567890','Dell','none','products/twPK6c9JZwjQtSxPRDBoTmE0Izp9tKpaSCPMaAKY.jpg','Desktop',6453,6554.00,'none','2024-01-23 03:05:16','2024-01-23 03:06:41'),(36,'none','1234567890','Dell','none','products/SQWF3KT6vX3PF1L4pjQnEdI81iIDmGWFXtmCUGPZ.jpg','Desktop',645,2733.00,'none','2024-01-23 03:07:50','2024-01-23 03:07:50'),(37,'none','1234567890','Asus','none','products/AhaQQAPckiKhhAfK0tGYJLNouUkSTF8lGnij2rsq.jpg','Laptop',6644,8734.00,'none','2024-01-23 03:17:32','2024-01-23 03:17:32'),(38,'none','1234567890','Asus','none','products/jO94wcVSVJAyMk1TdZ3uc5DdwEc48HaTMYVvolLr.jpg','Laptop',98474,88374.00,'none','2024-01-23 03:18:27','2024-01-23 03:20:38'),(39,'none','0987654321','Asus','none','products/CW5YhpHgHSUT3qctdAUm9m33CQINBJW5DHTTtvJn.jpg','Laptop',2773,8837.00,'none','2024-01-23 03:20:01','2024-01-25 19:56:45'),(40,'none','0987654321','Asus','none','products/BienyPt16Ba8bOzfgNxG5pQxhDn2cDWTskLE2733.jpg','Laptop',889,8766.00,'none','2024-01-23 03:21:16','2024-02-07 01:36:19'),(41,'none','0987654321','Dell','none','products/BJuRmjZalcbAuC2YDiZmPpizo1Ww8foTn77YkwZo.jpg','Laptop',97874,87464.00,'none','2024-01-23 03:21:58','2024-01-23 03:21:58'),(42,'none','09876444','Dell','none','products/NKmrChIN5uXReTBLa1y3SdZzDjRdng94xhJggb5Z.jpg','Laptop',7644,8733.00,'none','2024-01-23 03:22:26','2024-01-23 03:22:26'),(43,'none','0987654321','Dell','none','products/O0jhDMwJGs8cPEi1iQSjB24wzZ68UjEuifXBGgHi.jpg','Laptop',789,87653.00,'none','2024-01-23 03:23:12','2024-01-23 03:28:32'),(44,'none','0987654321','Dell','none','products/7sQXsz0nsJkJsc2pg703jyNs7TzhsziYtN85L4dx.jpg','Laptop',87264,6453.00,'none','2024-01-23 03:23:44','2024-01-23 03:27:36'),(45,'none','0987654321','MSI','none','products/JDKwoIOAYvJkrLswbLyPSWDZea40pZnhuFMwmAU3.jpg','Laptop',97344,83764.00,'none','2024-01-23 03:29:28','2024-01-23 03:29:28'),(46,'none','0987654321','MSI','none','products/smmlhXBtBsBEQtNLgh9zXW34FY6cVgDhIkvS6VCh.jpg','Laptop',9874,984.00,'none','2024-01-23 03:30:05','2024-01-24 00:41:38'),(47,'none','0987654321','MSI','none','products/GJIVr0JO8VJxitqwkg0YrmidSPN6Hjic8JoLNSEX.jpg','Laptop',977,26343.00,'none','2024-01-23 03:30:51','2024-01-24 00:41:39'),(48,'none','0987654321','Apple','white','products/BubFaaqiFDU0md6y79M8jZi1kxnKSCLee6Dav89G.png','Accessory',20,300.00,'none','2024-02-07 02:56:52','2024-02-07 03:12:16'),(49,'AIR','0987654321','Apple','BLUE','products/gnnbxCpoLy03eKE9MOUpfLEoqcwZLPm1rYQJ18m4.jpg','Accessory',2,99.00,'none','2024-02-07 19:48:33','2024-02-07 19:48:33'),(50,'Screen','0987654321','Apple','BLACK','products/qBqfG9OOxZ7D6BGYdvp5t8kqBRbsF39UFQU4rUbl.jpg','Accessory',90,899.00,'none','2024-02-07 19:50:56','2024-02-07 19:50:56'),(51,'Screen','123456789','Apple','white','products/Otk8fTZeyGUiKDaiKRgHwQTz0TMvO7ndnr9JNKiT.jpg','Accessory',88,699.00,'none','2024-02-07 19:52:54','2024-02-07 19:52:54'),(52,'none','0987654321','Asus','none','products/wmhWWeE0aU4JqAjAU7P7fxwyNDzb7vR4VP3DNfdv.jpg','Accessory',11,120.00,'none','2024-02-07 20:05:42','2024-02-07 20:07:52'),(53,'bage','1234567890','Asus','none','products/Sh7o37XgTn2hQpaUhgmqzjgCTfqprGztcCPi1Qlv.jpg','Accessory',2,8.00,'none','2024-02-07 20:06:36','2024-02-07 20:06:36'),(54,'none','1234567890','Asus','none','products/JQdx7WVGCwDa3GS3bBqMUfppGfkzXizXRnqOEZj1.jpg','Accessory',12,89.00,'none','2024-02-07 20:10:15','2024-02-07 20:12:32'),(55,'nonE','nonE','Asus','none','products/gjOwm3tbfgWUXnVq9ovXl3r8RaLx89EoGxyANaxU.jpg','Accessory',11,122.00,'none','2024-02-07 20:15:07','2024-02-07 20:15:07'),(56,'nOne','none','Dell','none','products/j2VFks0WM24nYPdQAZoQ6GwWnfIkJBufxTomLgEN.png','Accessory',89,90.00,'nOne','2024-02-07 20:17:34','2024-02-07 20:17:34'),(57,'none','nOnE','Dell','none','products/XCOa8NEyzbK8iMS9CLJsTRoRNtpDXsDViCsvNfBl.jpg','Accessory',90,90.00,'none','2024-02-07 20:20:29','2024-02-07 20:20:29'),(58,'none','nOnE','Dell','none','products/C9yebhvEWk6WBfbmTQI8XQIM7LnGjawvwLLjxp8d.png','Accessory',3,33.00,'noe','2024-02-07 20:23:45','2024-02-07 20:23:45'),(59,'none','nOnE','Dell','none','products/zoazCeRJNt1qZtiw7wNpsdiszpX8oVphQadh3F7D.jpg','Accessory',2,222.00,'none','2024-02-07 20:27:10','2024-02-07 20:27:10'),(60,'none','nOnE','MSI','none','products/iQkDEZMdWCxUAgvVZbrVzCMfqqCYy2JiL7CxV65R.jpg','Accessory',3,222.00,'none','2024-02-07 20:30:05','2024-02-07 20:30:05'),(61,'none','noe','MSI','none','products/4fjTAERMBPA9tazlzthKPd2WtMUjgxbFaNJh2C4N.jpg','Accessory',3,333.00,'nonenon','2024-02-07 20:31:16','2024-02-07 20:31:16'),(62,'one','nOnE','MSI','none','products/8RO4Qtvoy0XdNUh7WQQq3tWMzWtzxZ9LCpSkgw6F.png','Accessory',3,20.00,'none','2024-02-07 20:33:17','2024-02-07 20:40:22'),(63,'none','0987654321','MSI','none','products/OgrHrhDrFZnpBSmWpgJOYj4vOyiQ9aS7es6hZwIc.jpg','Accessory',3,22.00,'none','2024-02-07 20:43:25','2024-02-07 20:43:25');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Sophanna','Sophanna@gmail.com',NULL,'$2y$12$0HiPnuypweGg7ipDWzfcNebthtTqKR/tEig6e9TqqD5T6iUrkvmza',NULL,'2024-01-17 22:50:41','2024-01-25 19:36:57','admin'),(2,'Muyheng','Muyheng@gmail.com',NULL,'$2y$12$1LKUeUTxWC1nzDRwwnQJCe43v2IBuCRdTRNK9Lfn.qT9ExBITno52',NULL,'2024-01-17 23:04:01','2024-01-25 19:35:37','admin'),(3,'Sunheng','Sunheng@gmail.com',NULL,'$2y$12$8sRyLZ9Vey8/8MPdYHBil.VbiEp2Kafn3sA1ud6H3/1Y8d/KgevT.',NULL,'2024-01-18 08:19:36','2024-01-23 00:09:56','user');
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

-- Dump completed on 2024-02-12 15:26:50