CREATE DATABASE  IF NOT EXISTS `full-stack-autoreservationapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `full-stack-autoreservationapp`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: full-stack-autoreservationapp
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `cards`
--

DROP TABLE IF EXISTS `cards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cards` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  `date_updated` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cards`
--

LOCK TABLES `cards` WRITE;
/*!40000 ALTER TABLE `cards` DISABLE KEYS */;
INSERT INTO `cards` VALUES (1,'2024-03-12 18:53:42.000000',NULL),(2,'2024-03-12 18:53:42.000000',NULL),(4,'2024-03-10 00:00:00.000000',NULL),(5,'2024-03-09 18:53:42.000000',NULL),(6,'2024-03-08 00:00:00.000000',NULL),(7,'2024-03-14 13:51:30.000000',NULL),(8,'2024-03-22 13:57:41.000000',NULL),(9,'2024-03-21 13:57:48.000000',NULL),(10,'2024-03-20 13:58:04.000000',NULL),(11,'2024-03-17 13:58:11.000000',NULL),(12,'2024-03-10 13:58:15.000000',NULL),(13,'2024-03-16 13:58:20.000000',NULL),(14,'2024-03-18 13:58:37.000000',NULL),(15,'2024-03-15 13:58:42.000000',NULL),(16,'2024-03-22 13:58:47.000000',NULL),(17,'2024-03-22 13:58:53.000000',NULL),(18,'2020-03-22 12:58:56.000000',NULL),(19,'2024-03-28 03:35:55.000000','2024-03-31 14:55:40.848007'),(20,'2024-03-12 15:23:42.000000','2024-04-02 02:15:15.155228'),(21,'2024-03-12 15:23:42.000000','2024-04-02 02:15:51.728314'),(22,'2024-04-02 07:30:00.000000','2024-04-02 02:32:55.495602'),(23,'2024-04-02 04:30:00.000000','2024-04-02 02:38:39.908254'),(24,'2024-04-02 06:41:00.000000','2024-04-02 02:40:59.209763'),(25,'2024-04-02 02:45:34.000000','2024-04-02 02:45:35.584501'),(26,'2024-04-02 02:46:55.000000','2024-04-02 02:46:58.589773'),(27,'2024-04-02 02:48:33.000000','2024-04-02 02:48:36.355692'),(28,'2024-04-02 02:50:36.000000','2024-04-02 02:50:39.002000'),(29,'2024-04-02 02:50:36.000000','2024-04-02 02:52:12.889000'),(30,'2024-04-02 02:57:19.000000','2024-04-02 02:57:24.064000'),(31,'2024-04-02 03:00:52.000000','2024-04-02 03:00:55.253000'),(32,'2024-04-02 03:01:24.000000','2024-04-02 03:01:29.088000'),(33,'2024-04-02 03:02:41.000000','2024-04-02 03:02:45.551000');
/*!40000 ALTER TABLE `cards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tbl`
--

DROP TABLE IF EXISTS `course_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tbl` (
  `id` bigint NOT NULL,
  `abbreviation` varchar(255) DEFAULT NULL,
  `fee` double NOT NULL,
  `modules` int NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tbl`
--

LOCK TABLES `course_tbl` WRITE;
/*!40000 ALTER TABLE `course_tbl` DISABLE KEYS */;
INSERT INTO `course_tbl` VALUES (1,'ffff',12,1,'test');
/*!40000 ALTER TABLE `course_tbl` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course_tbl_seq`
--

DROP TABLE IF EXISTS `course_tbl_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course_tbl_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course_tbl_seq`
--

LOCK TABLES `course_tbl_seq` WRITE;
/*!40000 ALTER TABLE `course_tbl_seq` DISABLE KEYS */;
INSERT INTO `course_tbl_seq` VALUES (1);
/*!40000 ALTER TABLE `course_tbl_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foods`
--

DROP TABLE IF EXISTS `foods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `foods` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `food_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foods`
--

LOCK TABLES `foods` WRITE;
/*!40000 ALTER TABLE `foods` DISABLE KEYS */;
INSERT INTO `foods` VALUES (1,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 1','./assets/images/foods/f1.jpg',NULL),(2,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 2','./assets/images/foods/f2.jpg',NULL),(3,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 3','./assets/images/foods/f3.jpg',NULL),(4,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 4','./assets/images/foods/f4.jpg',NULL),(5,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 5','./assets/images/foods/f22.jpg',NULL),(6,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 6','./assets/images/foods/f1.jpg',NULL),(7,'2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 7','./assets/images/foods/f1.jpg',NULL);
/*!40000 ALTER TABLE `foods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groupss`
--

DROP TABLE IF EXISTS `groupss`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groupss` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `qty_member` bigint DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groupss`
--

LOCK TABLES `groupss` WRITE;
/*!40000 ALTER TABLE `groupss` DISABLE KEYS */;
INSERT INTO `groupss` VALUES (1,'گروه 1',4,NULL,NULL),(2,'گروه 2',4,NULL,NULL),(3,'گروه 3',4,NULL,NULL),(4,'گروه 4',4,NULL,NULL),(5,'گروه 5',4,NULL,NULL);
/*!40000 ALTER TABLE `groupss` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_course_table`
--

DROP TABLE IF EXISTS `student_course_table`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_course_table` (
  `student_id` bigint NOT NULL,
  `course_id` bigint NOT NULL,
  PRIMARY KEY (`student_id`,`course_id`),
  KEY `FK7u7dpetxkjgn9xkw44n2qxl67` (`course_id`),
  CONSTRAINT `FK7u7dpetxkjgn9xkw44n2qxl67` FOREIGN KEY (`course_id`) REFERENCES `course_tbl` (`id`),
  CONSTRAINT `FKd2blfugg1i65mv9sbwhy4q0gq` FOREIGN KEY (`student_id`) REFERENCES `student_tbl` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_course_table`
--

LOCK TABLES `student_course_table` WRITE;
/*!40000 ALTER TABLE `student_course_table` DISABLE KEYS */;
INSERT INTO `student_course_table` VALUES (1,1);
/*!40000 ALTER TABLE `student_course_table` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_tbl`
--

DROP TABLE IF EXISTS `student_tbl`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student_tbl` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `age` int NOT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_tbl`
--

LOCK TABLES `student_tbl` WRITE;
/*!40000 ALTER TABLE `student_tbl` DISABLE KEYS */;
INSERT INTO `student_tbl` VALUES (1,12,'tesst','fddfdf');
/*!40000 ALTER TABLE `student_tbl` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-02  7:22:23
