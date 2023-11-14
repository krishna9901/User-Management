-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: usersdemo
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.14-MariaDB

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
-- Table structure for table `ci_sessions`
--

DROP TABLE IF EXISTS `ci_sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ci_sessions` (
  `session_id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `user_agent` varchar(120) NOT NULL,
  `last_activity` int(10) unsigned NOT NULL DEFAULT 0,
  `user_data` text NOT NULL,
  PRIMARY KEY (`session_id`),
  KEY `last_activity_idx` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ci_sessions`
--

LOCK TABLES `ci_sessions` WRITE;
/*!40000 ALTER TABLE `ci_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `ci_sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_access_matrix`
--

DROP TABLE IF EXISTS `tbl_access_matrix`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_access_matrix` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `access` text DEFAULT NULL,
  `roleId` int(11) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_access_matrix`
--

LOCK TABLES `tbl_access_matrix` WRITE;
/*!40000 ALTER TABLE `tbl_access_matrix` DISABLE KEYS */;
INSERT INTO `tbl_access_matrix` VALUES (1,'[{\"module\":\"Task\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":1},{\"module\":\"Booking\",\"total_access\":0,\"list\":1,\"create_records\":0,\"edit_records\":0,\"delete_records\":1}]',12,0,1,'2022-06-17 21:01:02',1,'2023-11-10 14:50:59'),(2,'[{\"module\":\"Task\",\"total_access\":1,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":1},{\"module\":\"Booking\",\"total_access\":1,\"list\":1,\"create_records\":1,\"edit_records\":1,\"delete_records\":1}]',13,0,1,'2023-11-12 08:12:25',1,'2023-11-12 08:32:31');
/*!40000 ALTER TABLE `tbl_access_matrix` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_booking`
--

DROP TABLE IF EXISTS `tbl_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_booking` (
  `bookingId` int(4) NOT NULL AUTO_INCREMENT,
  `roomName` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`bookingId`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_booking`
--

LOCK TABLES `tbl_booking` WRITE;
/*!40000 ALTER TABLE `tbl_booking` DISABLE KEYS */;
INSERT INTO `tbl_booking` VALUES (1,'Hall','This is description edit',0,1,'2022-06-17 21:52:00',1,'2022-06-17 21:58:05'),(2,'Meeting room 2','Meeting room 2 booked for German client',0,1,'2022-06-17 21:58:44',NULL,NULL),(3,'Meeting room 2','Hold for developer and QA discussion',0,14,'2022-06-17 22:21:26',14,'2022-06-17 22:21:55'),(4,'Meeting room 67','Meeting with BA & QA',0,1,'2022-06-18 20:22:38',1,'2023-11-11 14:07:35'),(5,'vsdv','cxxvx',1,1,'2023-11-11 15:00:09',1,'2023-11-11 15:04:39'),(6,'Booking room','library',0,1,'2023-11-12 09:13:37',NULL,NULL);
/*!40000 ALTER TABLE `tbl_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_last_login`
--

DROP TABLE IF EXISTS `tbl_last_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_last_login` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `userId` bigint(20) NOT NULL,
  `sessionData` varchar(2048) NOT NULL,
  `machineIp` varchar(1024) NOT NULL,
  `userAgent` varchar(128) NOT NULL,
  `agentString` varchar(1024) NOT NULL,
  `platform` varchar(128) NOT NULL,
  `createdDtm` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_last_login`
--

LOCK TABLES `tbl_last_login` WRITE;
/*!40000 ALTER TABLE `tbl_last_login` DISABLE KEYS */;
INSERT INTO `tbl_last_login` VALUES (1,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 99.0.4844.84','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/99.0.4844.84 Safari/537.36','Windows 7','2022-04-04 22:19:07'),(2,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 01:33:45'),(3,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 01:35:50'),(4,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 01:36:25'),(5,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:06:57'),(6,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:08:21'),(7,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:16:40'),(8,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:17:26'),(9,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:30:21'),(10,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 02:30:39'),(11,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-17 23:49:29'),(12,14,'{\"role\":\"11\",\"roleText\":\"Project Manager L6\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 01:41:39'),(13,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 01:42:38'),(14,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 01:51:18'),(15,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 01:54:04'),(16,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 02:15:01'),(17,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 23:52:14'),(18,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 23:53:41'),(19,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 23:55:24'),(20,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-18 23:57:25'),(21,14,'{\"role\":\"12\",\"roleText\":\"Data Entry Operator\",\"name\":\"Pml6\",\"isAdmin\":\"2\"}','::1','Chrome 102.0.0.0','Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/102.0.0.0 Safari/537.36','Windows 7','2022-06-19 00:21:13'),(22,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-10 13:41:21'),(23,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-10 13:42:10'),(24,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-10 14:08:19'),(25,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-10 18:43:24'),(26,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-11 18:37:24'),(27,1,'{\"role\":\"1\",\"roleText\":\"System Administrator\",\"name\":\"System Administrator\",\"isAdmin\":\"1\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-12 12:26:36'),(28,16,'{\"role\":\"13\",\"roleText\":\"super Global Admin\",\"name\":\"Krish\",\"isAdmin\":\"2\"}','::1','Chrome 119.0.0.0','Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/119.0.0.0 Safari/537.36','Windows 10','2023-11-12 12:47:15');
/*!40000 ALTER TABLE `tbl_last_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_reset_password`
--

DROP TABLE IF EXISTS `tbl_reset_password`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_reset_password` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `activation_id` varchar(32) NOT NULL,
  `agent` varchar(512) NOT NULL,
  `client_ip` varchar(32) NOT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` bigint(20) NOT NULL DEFAULT 1,
  `createdDtm` datetime NOT NULL,
  `updatedBy` bigint(20) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reset_password`
--

LOCK TABLES `tbl_reset_password` WRITE;
/*!40000 ALTER TABLE `tbl_reset_password` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_reset_password` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `roleId` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'role id',
  `role` varchar(50) NOT NULL COMMENT 'role text',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`roleId`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (1,'System Administrator',1,0,0,'2021-01-21 00:00:00',1,'2022-06-17 20:21:46'),(2,'Manager',1,0,0,'2021-01-13 00:00:00',NULL,NULL),(3,'Employee',1,0,0,'2021-01-13 00:00:00',1,'2021-01-22 18:11:16'),(4,'Office Boy',1,0,1,'2021-01-22 17:40:24',1,'2021-01-22 18:33:49'),(5,'Receptionist',2,0,1,'2021-01-22 18:12:41',1,'2021-02-05 17:32:13'),(6,'Project Manager',1,0,1,'2021-02-05 18:25:00',NULL,NULL),(7,'Project Manager L2',1,0,1,'2021-02-05 18:27:30',1,'2021-03-26 14:54:08'),(8,'Project Manager L3',1,0,1,'2021-02-05 18:29:11',1,'2021-03-26 14:54:02'),(9,'Project Manager L4',1,0,1,'2021-02-05 18:29:43',1,'2021-03-26 14:53:51'),(10,'Project Manager L5',1,0,1,'2021-02-05 18:56:47',1,'2021-03-20 19:21:06'),(11,'Project Manager L6',1,1,1,'2021-02-05 18:57:23',1,'2023-11-11 14:12:46'),(12,'Data Entry Operator',1,1,1,'2022-06-17 20:57:22',1,'2023-11-10 15:53:22'),(13,'Super Global Admin',1,0,1,'2023-11-12 08:12:25',1,'2023-11-12 08:32:38');
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_task`
--

DROP TABLE IF EXISTS `tbl_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_task` (
  `taskId` int(4) NOT NULL AUTO_INCREMENT,
  `taskTitle` varchar(256) NOT NULL,
  `description` varchar(1024) DEFAULT NULL,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`taskId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_task`
--

LOCK TABLES `tbl_task` WRITE;
/*!40000 ALTER TABLE `tbl_task` DISABLE KEYS */;
INSERT INTO `tbl_task` VALUES (1,'Small Task 1','Small task related to addition, substraction',0,1,'2022-06-18 20:47:47',1,'2023-11-10 09:38:37'),(2,'Small Task 2','Closure task',0,1,'2022-06-18 20:49:48',1,'2022-06-18 20:50:05'),(3,'sasas','asasa',0,1,'2023-11-10 09:38:59',1,'2023-11-10 11:36:39');
/*!40000 ALTER TABLE `tbl_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL COMMENT 'login email',
  `password` varchar(128) NOT NULL COMMENT 'hashed login password',
  `name` varchar(128) DEFAULT NULL COMMENT 'full name of user',
  `mobile` varchar(20) DEFAULT NULL,
  `roleId` tinyint(4) NOT NULL,
  `isAdmin` tinyint(4) NOT NULL DEFAULT 2,
  `isDeleted` tinyint(4) NOT NULL DEFAULT 0,
  `createdBy` int(11) NOT NULL,
  `createdDtm` datetime NOT NULL,
  `updatedBy` int(11) DEFAULT NULL,
  `updatedDtm` datetime DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (1,'admin@example.com','$2y$10$6Y28WIo2Oz.p8xsEMYcCmuvvijXZU8.sRT3737ix.vN1CwGs3NJk6','System Administrator','9890098900',1,1,0,0,'2015-07-01 18:56:49',1,'2021-06-01 16:17:08'),(2,'manager@example.com','$2y$10$quODe6vkNma30rcxbAHbYuKYAZQqUaflBgc4YpV9/90ywd.5Koklm','Manager','9890098900',2,0,1,1,'2016-12-09 17:49:56',1,'2023-11-10 14:39:49'),(3,'employee@example.com','$2y$10$UYsH1G7MkDg1cutOdgl2Q.ZbXjyX.CSjsdgQKvGzAgl60RXZxpB5u','Employee','9890098900',3,0,1,1,'2016-12-09 17:50:22',1,'2019-11-09 18:13:17'),(9,'employee2@example.com','$2y$10$DBnqnZDQMNW3GASPNJQ2RubfqG1WNupMBP4HKwHYRKQNHgA65Nhly','Employee2','9890098900',3,0,1,1,'2019-03-26 11:40:50',1,'2019-11-09 18:12:13'),(10,'employee@example.com','$2y$10$DcK/YcVNOP/CxfGbcEDH1OzR8D4KyG1lpe/XgRGfijj158Ru0kKN.','Employee','7410852000',3,2,1,1,'2020-02-01 19:36:41',1,'2023-11-10 14:38:47'),(12,'email@example.com','$2y$10$CGJsY/FZMn8L4.JfO.ZojOwbK9RUCQSx4dnqU1NgkO3ffq26i0WDG','From','8520741000',3,0,1,1,'2021-01-15 13:42:11',1,'2023-11-10 14:24:39'),(14,'pml6@example.com','$2y$10$VGwjdpcWYGfWe.ED4wlE8.B/0OOdKNaqvvSOaPbkZA.EMsbiyZIkG','Pml6','7410852000',12,2,1,1,'2022-06-16 22:05:15',1,'2023-11-10 11:36:51'),(15,'admizzzzxxzn@example.com','$2y$10$TMlgIilsF2692rHfJuOjCubkzHeS5ThnJ1CRkipf2ssLXsrt4mtie','Xzz','8928120804',8,2,1,1,'2023-11-10 15:09:48',1,'2023-11-10 15:10:01'),(16,'krish@gmail.com','$2y$10$CQLEnDvlcuI2WEf3R8KQbeCrmFFQdsMT8v3NBJ3YsQ5kLZTmgvzAS','Krish','9985672299',13,2,0,1,'2023-11-12 08:16:46',NULL,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


