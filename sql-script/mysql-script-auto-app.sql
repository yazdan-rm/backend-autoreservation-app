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
-- Table structure for table `card`
--

DROP TABLE IF EXISTS `card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `card` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `date_created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `card`
--

LOCK TABLES `card` WRITE;
/*!40000 ALTER TABLE `card` DISABLE KEYS */;
INSERT INTO `card` VALUES (1,'2024-03-12 18:53:42.000000'),(2,'2024-03-12 18:53:42.000000'),(3,'2024-03-11 00:00:00.000000'),(4,'2024-03-10 00:00:00.000000'),(5,'2024-03-09 18:53:42.000000'),(6,'2024-03-08 00:00:00.000000'),(7,'2024-03-14 13:51:30.000000');
/*!40000 ALTER TABLE `card` ENABLE KEYS */;
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
-- Table structure for table `food`
--

DROP TABLE IF EXISTS `food`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  `date_update` datetime(6) DEFAULT NULL,
  `food_name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food`
--

LOCK TABLES `food` WRITE;
/*!40000 ALTER TABLE `food` DISABLE KEYS */;
INSERT INTO `food` VALUES (1,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 1','./assets/images/foods/f1.jpg'),(2,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 2','./assets/images/foods/f2.jpg'),(3,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 3','./assets/images/foods/f3.jpg'),(4,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 4','./assets/images/foods/f4.jpg'),(5,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 5','./assets/images/foods/f22.jpg'),(6,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 6','./assets/images/foods/f1.jpg'),(7,_binary '','2024-03-06 22:29:04.000000','2024-03-06 22:29:04.000000','غذای 7','./assets/images/foods/f1.jpg');
/*!40000 ALTER TABLE `food` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `food_group`
--

DROP TABLE IF EXISTS `food_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `food_group` (
  `group_id` bigint NOT NULL,
  `food_id` bigint NOT NULL,
  PRIMARY KEY (`group_id`,`food_id`),
  KEY `FK6av6r2b2iauqxxs56igmr3sfu` (`food_id`),
  CONSTRAINT `FK6av6r2b2iauqxxs56igmr3sfu` FOREIGN KEY (`food_id`) REFERENCES `food` (`id`),
  CONSTRAINT `FKjrkce9qt18gdmq8tmkxrjjf5p` FOREIGN KEY (`group_id`) REFERENCES `groups_f` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `food_group`
--

LOCK TABLES `food_group` WRITE;
/*!40000 ALTER TABLE `food_group` DISABLE KEYS */;
INSERT INTO `food_group` VALUES (1,1),(1,2);
/*!40000 ALTER TABLE `food_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `groups_f`
--

DROP TABLE IF EXISTS `groups_f`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `groups_f` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) DEFAULT NULL,
  `qty_member` bigint DEFAULT NULL,
  `date_created` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `groups_f`
--

LOCK TABLES `groups_f` WRITE;
/*!40000 ALTER TABLE `groups_f` DISABLE KEYS */;
INSERT INTO `groups_f` VALUES (1,'گروه 1',4,NULL),(2,'گروه 2',4,NULL),(3,'گروه 3',4,NULL),(4,'گروه 4',4,NULL),(5,'گروه 5',4,NULL);
/*!40000 ALTER TABLE `groups_f` ENABLE KEYS */;
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

-- Dump completed on 2024-03-16  2:19:47
