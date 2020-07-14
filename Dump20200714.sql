-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: quiz
-- ------------------------------------------------------
-- Server version	8.0.20

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
-- Table structure for table `answers`
--

DROP TABLE IF EXISTS `answers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `answers` (
  `aid` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `correct` bit(1) NOT NULL,
  `qid` int NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `FK7pxx1t1gpe0lrwrq2ukxl2g5u` (`qid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `answers`
--

LOCK TABLES `answers` WRITE;
/*!40000 ALTER TABLE `answers` DISABLE KEYS */;
INSERT INTO `answers` VALUES (51,'Behavior of human beings',_binary '\0',46),(52,'Insects',_binary '',46),(53,'The origin and history of technical and scientific terms',_binary '\0',46),(54,'The formation of rocks',_binary '\0',46),(55,'Junagarh, Gujarat',_binary '\0',47),(56,'Diphu, Assam',_binary '',47),(57,'Kohima, Nagaland',_binary '\0',47),(58,'Gangtok, Sikkim',_binary '\0',47),(59,'Physics and Chemistry',_binary '\0',48),(60,'	Physiology or Medicine',_binary '\0',48),(61,'Literature, Peace and Economics',_binary '\0',48),(62,'All of the above',_binary '',48),(63,'Labour Party',_binary '\0',49),(64,'Nazi Party',_binary '',49),(65,'Ku-Klux-Klan',_binary '\0',49),(66,'Democratic Party',_binary '\0',49),(67,'largest railway station',_binary '',50),(68,'highest railway station',_binary '\0',50),(69,'longest railway station',_binary '\0',50),(70,'None of the above',_binary '\0',50),(72,' Lumiere Brothers',_binary '',71),(73,'Mani Sethna',_binary '\0',71),(74,'Dada Saheb Phalke',_binary '\0',71),(75,'Dhirendra Nath Ganguly',_binary '\0',71),(76,'Mani Sethna',_binary '\0',71),(78,'Hindi Theatre at Kolkata',_binary '\0',77),(79,'Bombay (Now Mumbai) at Watkins Hotel',_binary '',77),(80,'Athenaeeum and Chaurang Theatre',_binary '\0',77),(81,'Laffed Faire',_binary '\0',77),(82,'chennai',_binary '\0',77),(84,'Salaam Bombay',_binary '\0',83),(85,'Lagaan',_binary '\0',83),(86,'Mother India',_binary '',83),(87,'Abhiman',_binary '\0',83),(88,'None of these',_binary '\0',83),(90,'Slumdog Millionaire',_binary '\0',89),(91,'Mother India',_binary '\0',89),(92,'Gandhi',_binary '',89),(93,'Kisan Kanya',_binary '\0',89),(95,'Anil Kapoor',_binary '\0',94),(96,'AR Rahman',_binary '\0',94),(97,'Amithab Bachan',_binary '\0',94),(98,'Bhanu Athaiya',_binary '',94),(99,'None of these',_binary '\0',94);
/*!40000 ALTER TABLE `answers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'General Knowledge'),(2,'film');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hibernate_sequence` (
  `next_val` bigint DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (100);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `qid` int NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `id` int NOT NULL,
  PRIMARY KEY (`qid`),
  KEY `FKcwh74km6jmp373255ajp94wbj` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (46,'Entomology is the science that studies',1),(47,'Garampani sanctuary is located at',1),(48,'For which of the following disciplines is Nobel Prize awarded?',1),(49,'Hitler party which came into power in 1933 is known as',1),(50,'Grand Central Terminal, Park Avenue, New York is the world\'s',1),(71,'Who among the following invented the cinematograph?',2),(77,'Where was the first cinema demonstrated in India?',2),(83,'Which was the first Indian movie nominated for Oscar?',2),(89,'Which was the first Indian movie to win an Oscar?',2),(94,'Who got first Oscar award in India?',2);
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (35,'Divya N K','123','divya'),(36,'abhi','123','abhi'),(37,'abhi','123','abhi'),(45,'chinna','123','bbbbbbbb');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-14 18:16:03
