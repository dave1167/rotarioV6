-- MySQL dump 10.13  Distrib 8.4.4, for Linux (x86_64)
--
-- Host: localhost    Database: rotario_v6
-- ------------------------------------------------------
-- Server version	8.4.4

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
-- Table structure for table `tbl_activities`
--

DROP TABLE IF EXISTS `tbl_activities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activities` (
  `activityId` int unsigned NOT NULL AUTO_INCREMENT,
  `activityDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activityId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activities`
--

LOCK TABLES `tbl_activities` WRITE;
/*!40000 ALTER TABLE `tbl_activities` DISABLE KEYS */;
INSERT INTO `tbl_activities` VALUES (1,'User Verified Log-in');
/*!40000 ALTER TABLE `tbl_activities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_activity_log`
--

DROP TABLE IF EXISTS `tbl_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_activity_log` (
  `logId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned NOT NULL,
  `activity` varchar(255) NOT NULL,
  `ipAddress` varchar(45) DEFAULT NULL,
  `createdDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`logId`),
  KEY `fk_activity_log_user` (`userId`),
  CONSTRAINT `fk_activity_log_user` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`),
  CONSTRAINT `tbl_activity_log_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_activity_log`
--

LOCK TABLES `tbl_activity_log` WRITE;
/*!40000 ALTER TABLE `tbl_activity_log` DISABLE KEYS */;
INSERT INTO `tbl_activity_log` VALUES (62,173,'1',NULL,'2025-05-13 20:15:06','2025-05-13 21:15:06');
/*!40000 ALTER TABLE `tbl_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_ek`
--

DROP TABLE IF EXISTS `tbl_ek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_ek` (
  `ekId` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) DEFAULT NULL,
  `userId` int unsigned NOT NULL,
  `ver` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ekId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_ek`
--

LOCK TABLES `tbl_ek` WRITE;
/*!40000 ALTER TABLE `tbl_ek` DISABLE KEYS */;
INSERT INTO `tbl_ek` VALUES (2,'e2db6040a04ff7da0b9e8be37832771c5f1d272c',55,NULL),(68,'fc474ca15448188df06a532f672d74f15aafa7a2',150,NULL),(69,'0778479a8578f2172c766f27e1f5a6a473c5270b',151,'39b6a3z-151'),(70,'b160255a3d6630a1e28a8977469ffb1ce19a8c6d',152,'927ddez-152'),(71,'4c5062850936a50e1f0d065aa7edac33a98b1fa5',153,'052795z-153'),(72,'6d2f4bf770b4ce4cf7b58072fdd93a11e4808c6b',154,'ad0878z-154'),(73,'47fa84e3ce28f47fb84dd0e65a13ebd664fba490',155,'9b9f0ez-155'),(74,'01d96211ed4e56b9ad07a3e5378bdf40aa823917',156,'cc9a83z-156'),(75,'27e91201e958e3463ef2c7ef9725fef382b305a6',157,'63e2e2z-157'),(76,'190a36650685f7837993be3c5b9b1a21b65dc904',158,'d4f5b8z-158'),(77,'2241cd128387347e1bf613d9720b0e93906d0d1e',159,'d3b24dz-159'),(78,'91d78c095dcdb2947bbb7df77a32ff7fae8c430d',160,'1a5880z-160'),(79,'a76338e381340a5f104effaf3ebef7abb57af46f',161,'71e50cz-161'),(80,'9ac86070d000a7fc44ca5a51073b7482d7144684',162,'411c0ez-162'),(81,'4c5fb3f0ce67dce063efc1311109eb7f41919946',163,'7eb0d4z-163'),(82,'42ff874ced7e3eb0665eb9304efbdd3caa43f6d8',164,'12ea30z-164'),(83,'6de443eb28342e4f50c25d318c1c26e49125d25b',165,'ed8d50z-165'),(84,'67fa7f9daa8e3fb2cd0fa1a782ace459566702f1',166,'11d3f3z-166'),(85,'4069923e6922e57bd59b1bac7b6cca394b98abe9',167,'2858bez-167'),(86,'2cc9bb2fcaf875b1e9ec464214615b81bd52ecdc',168,'803d96z-168'),(87,'dfd132d272079edb163a39a8166db8640b057290',169,'216864z-169'),(88,'84f4f267773069a74cb32b0bf0e7959c5e2f5642',170,'289b15z-170'),(89,'ded3be61c119b0fa5f842edddc325db2b0855022',171,'fa544cz-171'),(90,'314f57ab150694cccd0ee6bacfa6db6a2849f179',172,'2c06d1z-172'),(91,'57f568e3d3cb6220dd6f389b364c4a10e95d9496',173,'65cef4z-173');
/*!40000 ALTER TABLE `tbl_ek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_email`
--

DROP TABLE IF EXISTS `tbl_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_email` (
  `emailId` int unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text,
  `sendStatus` int unsigned DEFAULT NULL,
  `dateSent` datetime DEFAULT NULL,
  `dateCreated` datetime DEFAULT NULL,
  `sender` int DEFAULT NULL,
  PRIMARY KEY (`emailId`),
  KEY `tbl_email_sendstatus_foreign` (`sendStatus`),
  CONSTRAINT `tbl_email_sendstatus_foreign` FOREIGN KEY (`sendStatus`) REFERENCES `tbl_emailStatus` (`statusId`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_email`
--

LOCK TABLES `tbl_email` WRITE;
/*!40000 ALTER TABLE `tbl_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_emailStatus`
--

DROP TABLE IF EXISTS `tbl_emailStatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_emailStatus` (
  `statusId` int unsigned NOT NULL AUTO_INCREMENT,
  `statusDesc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`statusId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_emailStatus`
--

LOCK TABLES `tbl_emailStatus` WRITE;
/*!40000 ALTER TABLE `tbl_emailStatus` DISABLE KEYS */;
INSERT INTO `tbl_emailStatus` VALUES (1,'Draft'),(2,'Sent');
/*!40000 ALTER TABLE `tbl_emailStatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_event_vol`
--

DROP TABLE IF EXISTS `tbl_event_vol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_event_vol` (
  `evVolId` int unsigned NOT NULL AUTO_INCREMENT,
  `eventId` int unsigned DEFAULT NULL,
  `userId` int unsigned DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `modifiedBy` int DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `registeredDate` date DEFAULT NULL,
  PRIMARY KEY (`evVolId`),
  KEY `tbl_event_vol_eventid_foreign` (`eventId`),
  KEY `tbl_event_vol_userid_foreign` (`userId`),
  CONSTRAINT `tbl_event_vol_eventid_foreign` FOREIGN KEY (`eventId`) REFERENCES `tbl_events` (`eventId`),
  CONSTRAINT `tbl_event_vol_userid_foreign` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_event_vol`
--

LOCK TABLES `tbl_event_vol` WRITE;
/*!40000 ALTER TABLE `tbl_event_vol` DISABLE KEYS */;
INSERT INTO `tbl_event_vol` VALUES (1,2,55,'2025-05-27 13:57:26',151,'1','2025-03-12'),(3,2,151,'2025-05-27 13:57:28',151,'1','2025-03-04'),(4,3,152,'2025-05-25 08:35:21',151,'1','2025-05-06');
/*!40000 ALTER TABLE `tbl_event_vol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_event_vol_status`
--

DROP TABLE IF EXISTS `tbl_event_vol_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_event_vol_status` (
  `volStatusid` int unsigned NOT NULL AUTO_INCREMENT,
  `desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`volStatusid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_event_vol_status`
--

LOCK TABLES `tbl_event_vol_status` WRITE;
/*!40000 ALTER TABLE `tbl_event_vol_status` DISABLE KEYS */;
INSERT INTO `tbl_event_vol_status` VALUES (1,'Pending'),(2,'Wait List'),(3,'Selected'),(4,'Cancelled');
/*!40000 ALTER TABLE `tbl_event_vol_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_events`
--

DROP TABLE IF EXISTS `tbl_events`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_events` (
  `eventId` int unsigned NOT NULL AUTO_INCREMENT,
  `eventName` varchar(255) DEFAULT NULL,
  `eventDate` date DEFAULT NULL,
  `eventStrtTime` time DEFAULT NULL,
  `modifiedBy` int DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `numvols` int DEFAULT NULL,
  `weighting` int DEFAULT NULL,
  `tenantId` int DEFAULT NULL,
  `rotaId` int DEFAULT NULL,
  `location` int unsigned DEFAULT NULL,
  `venue` int unsigned DEFAULT NULL,
  `published` tinyint(1) DEFAULT NULL,
  `volArrival` int DEFAULT NULL,
  `publishDate` date DEFAULT NULL,
  PRIMARY KEY (`eventId`),
  KEY `tbl_events_location_foreign` (`location`),
  KEY `tbl_events_venue_foreign` (`venue`),
  CONSTRAINT `tbl_events_location_foreign` FOREIGN KEY (`location`) REFERENCES `tbl_location` (`locationId`),
  CONSTRAINT `tbl_events_venue_foreign` FOREIGN KEY (`venue`) REFERENCES `tbl_venue` (`venueId`)
) ENGINE=InnoDB AUTO_INCREMENT=70 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_events`
--

LOCK TABLES `tbl_events` WRITE;
/*!40000 ALTER TABLE `tbl_events` DISABLE KEYS */;
INSERT INTO `tbl_events` VALUES (1,'Classically Lowther November 2024','2025-05-07','07:30:00',55,'2024-09-17 00:00:00',8,1,1,1,1,1,1,NULL,NULL),(2,'Simon & Garfunkel: Through The Years','2025-06-07','07:30:00',1,'2025-06-02 07:02:36',8,3,1,1,1,1,1,75,NULL),(3,'Karl Loxley ','2025-05-10','07:30:00',1,'2025-05-27 08:46:20',5,3,1,1,1,1,1,75,NULL),(4,'Beautiful - The Carole King Musical','2025-08-25','07:30:00',55,'2024-07-26 00:00:00',6,2,2,1,1,1,1,NULL,NULL),(5,'Kevin Sinfield on Tour','2025-07-09','07:30:00',55,'2024-07-08 00:00:00',7,2,2,1,1,2,1,NULL,NULL),(6,'One Night In Dublin','2025-05-06','07:30:00',55,'2024-12-18 00:00:00',5,2,2,1,1,2,1,NULL,NULL),(7,'Buddy Holly & The Cricketers - Holly At Christmas','2025-08-14','07:30:00',55,'2025-02-19 00:00:00',8,3,1,1,1,1,1,NULL,NULL),(8,'The Houghton Weavers','2025-05-31','07:30:00',55,'2024-11-19 00:00:00',4,2,1,2,1,2,1,NULL,NULL),(9,'The Rat Pack: Christmas In Vegas','2025-08-18','07:30:00',55,'2024-09-02 00:00:00',8,1,1,2,1,2,NULL,NULL,NULL),(10,'Absolute Bowie','2025-05-14','07:30:00',1,'2025-03-11 00:00:00',7,1,1,2,1,1,1,NULL,NULL),(11,'Freckleton Brass Band Christmas Concert','2025-06-15','07:30:00',1,'2025-03-06 00:00:00',7,1,1,2,1,1,NULL,NULL,NULL),(12,'Classically Lowther with Thomas Pawson','2025-06-26','07:30:00',1,'2024-06-04 00:00:00',7,3,1,1,1,1,NULL,NULL,NULL),(13,'Lowther\'s Christmas Songs & Stories','2025-05-02','07:30:00',1,'2025-03-19 00:00:00',7,2,2,1,1,1,1,NULL,NULL),(14,'Sleeping Beauty','2025-05-01','07:30:00',1,'2024-08-20 00:00:00',8,3,1,1,1,2,1,NULL,NULL),(15,'Sleeping Beauty','2025-07-25','07:30:00',55,'2024-12-07 00:00:00',4,3,2,1,1,1,1,NULL,NULL),(16,'Sleeping Beauty','2025-08-10','07:30:00',55,'2024-10-05 00:00:00',6,2,1,1,1,1,1,NULL,NULL),(17,'Sleeping Beauty','2025-07-11','07:30:00',55,'2025-03-29 00:00:00',6,1,1,1,1,1,1,NULL,NULL),(18,'Sleeping Beauty','2025-07-20','07:30:00',55,'2025-01-17 00:00:00',6,1,2,2,1,2,NULL,NULL,NULL),(19,'Miles Jupp: On I Bang','2025-05-11','07:30:00',55,'2024-09-28 00:00:00',7,1,1,2,1,1,NULL,NULL,NULL),(20,'A Country Night In Nashville','2025-06-29','07:30:00',55,'2025-01-22 00:00:00',4,2,1,1,1,1,NULL,NULL,NULL),(21,'The Story Of Swing','2025-05-01','07:30:00',55,'2024-08-19 00:00:00',7,2,2,1,1,3,NULL,NULL,NULL),(22,'Keith James Celebrates The Music Of Yusuf - Cat Stevens','2025-07-20','07:30:00',1,'2024-11-04 00:00:00',6,2,1,1,1,1,NULL,NULL,NULL),(23,'The Magic Of Motown','2025-06-17','07:30:00',55,'2024-11-11 00:00:00',5,2,1,1,1,3,1,NULL,NULL),(24,'Sleeping With Beauty','2025-06-14','07:30:00',55,'2024-09-21 00:00:00',6,3,1,1,1,1,1,NULL,NULL),(25,'Fairport Convention','2025-06-18','07:30:00',55,'2024-08-22 00:00:00',4,3,1,1,1,2,1,NULL,NULL),(26,'The Magic Of The Bee Gees','2025-07-09','07:30:00',55,'2024-11-09 00:00:00',6,1,2,1,1,1,1,NULL,NULL),(27,'The Rocket Man','2025-05-27','07:30:00',1,'2025-02-19 00:00:00',6,2,1,1,1,1,1,NULL,NULL),(28,'Chaka - The Music Of Chaka Khan','2025-08-29','07:30:00',1,'2024-08-29 00:00:00',5,2,1,1,1,1,1,NULL,NULL),(29,'Ireland The Show','2025-06-04','07:30:00',1,'2024-11-15 00:00:00',4,1,1,2,1,1,1,NULL,NULL),(30,'GO NOW! The Music of THE MOODY BLUES','2025-06-07','07:30:00',1,'2024-12-27 00:00:00',7,3,2,1,1,1,1,NULL,NULL),(31,'The Baddies','2025-07-14','07:30:00',1,'2025-02-24 00:00:00',4,2,1,1,1,1,1,NULL,NULL),(32,'The Baddies','2025-07-21','07:30:00',55,'2024-11-22 00:00:00',7,2,1,1,1,1,NULL,NULL,NULL),(33,'The Baddies','2025-05-23','07:30:00',55,'2024-12-02 00:00:00',4,3,1,1,1,2,NULL,NULL,NULL),(34,'Legend - The Music Of Bob Marley','2025-07-31','07:30:00',55,'2024-05-16 00:00:00',7,1,1,1,1,2,NULL,NULL,NULL),(35,'Blackadder 2','2025-06-29','07:30:00',55,'2024-08-15 00:00:00',7,3,1,1,1,2,NULL,NULL,NULL),(36,'Majesty - A Tribute To Queen','2025-05-16','07:30:00',55,'2025-04-18 00:00:00',7,1,1,2,1,1,NULL,NULL,NULL),(37,'Majesty - A Tribute To Queen','2025-07-10','07:30:00',55,'2024-11-17 00:00:00',7,1,2,1,1,3,NULL,NULL,NULL),(38,'Kevin Sinfield on Tour - Extra Date Added','2025-08-05','07:30:00',55,'2024-07-07 00:00:00',8,3,1,1,1,1,NULL,NULL,NULL),(39,'Gareth Gates Sings Frankie Valli & The Four Seasons','2025-08-25','07:30:00',55,'2025-05-08 00:00:00',8,2,1,1,1,1,NULL,NULL,NULL),(40,'Mothers Of The Bride','2025-07-01','07:30:00',55,'2025-02-27 00:00:00',5,2,1,1,1,1,NULL,NULL,NULL),(41,'Mothers Of The Bride','2025-08-02','07:30:00',1,'2025-02-14 00:00:00',8,2,1,1,1,1,NULL,NULL,NULL),(42,'Mothers Of The Bride','2025-05-26','07:30:00',55,'2024-06-18 00:00:00',7,3,1,1,1,2,NULL,NULL,NULL),(43,'Dreamcoat Stars','2025-08-25','07:30:00',55,'2024-08-30 00:00:00',8,2,1,1,1,1,NULL,NULL,NULL),(44,'Hejira - Celebrating Joni Mitchell','2025-06-30','07:30:00',1,'2025-05-03 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL),(45,'THE PHANTOMS Starring LEE MEAD','2025-07-19','07:30:00',55,'2024-05-19 00:00:00',4,3,1,1,1,1,NULL,NULL,NULL),(46,'The Ultimate Eagles','2025-07-23','07:30:00',1,'2024-10-19 00:00:00',8,1,1,1,1,3,NULL,NULL,NULL),(47,'Taylor Fever','2025-05-09','07:30:00',1,'2025-02-10 00:00:00',7,1,1,1,1,1,NULL,NULL,NULL),(48,'And Finally... Phil Collins','2025-07-03','07:30:00',55,'2024-06-21 00:00:00',6,1,1,1,1,1,NULL,NULL,NULL),(49,'Irish Annie\'s','2025-07-05','07:30:00',55,'2024-10-13 00:00:00',8,2,1,1,1,1,NULL,NULL,NULL),(50,'Rave On: The Ultimate 50s & 60s Experience','2025-08-25','07:30:00',55,'2024-06-12 00:00:00',7,1,1,1,1,1,NULL,NULL,NULL),(51,'Stuart Michael - The Psychic Medium','2025-06-09','07:30:00',55,'2025-04-28 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL),(52,'The Straits UK - A Dire Straits Tribute','2025-07-26','07:30:00',55,'2024-06-01 00:00:00',5,1,1,1,1,1,NULL,NULL,NULL),(53,'ADHD - Unmasked','2025-06-19','07:30:00',55,'2025-05-05 00:00:00',4,2,1,1,1,1,NULL,NULL,NULL),(54,'NORTHERN SOUL LIVE - THE SIGNATURES & STEFAN TAYLOR + Original Northern Soul Artist LORRAINE SILVER','2025-05-21','07:30:00',55,'2024-11-27 00:00:00',4,1,1,1,1,1,NULL,NULL,NULL),(55,'A Night To Remember: Motown Show','2025-07-07','07:30:00',55,'2024-05-21 00:00:00',6,1,1,1,1,1,NULL,NULL,NULL),(56,'Top Secret: The Magic Of Science High Voltage','2025-07-02','07:30:00',55,'2024-12-04 00:00:00',4,3,1,1,1,1,NULL,NULL,NULL),(57,'The Ultimate 70s Show','2025-08-09','07:30:00',55,'2025-05-05 00:00:00',5,1,1,1,1,1,NULL,NULL,NULL),(58,'Thank You For The Music','2025-06-22','07:30:00',55,'2024-09-06 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL),(59,'Thank You For The Music','2025-08-07','07:30:00',55,'2024-11-28 00:00:00',7,2,1,1,1,1,NULL,NULL,NULL),(60,'Money For Nothing Dire Straits Tribute Show','2025-05-01','07:30:00',55,'2024-05-21 00:00:00',6,1,1,1,1,1,NULL,NULL,NULL),(61,'Bobby Davro - Everything Is Funny If You Can Laugh At It','2025-06-21','07:30:00',55,'2024-07-16 00:00:00',7,2,1,1,1,1,NULL,NULL,NULL),(62,'Fastlove','2025-07-27','07:30:00',55,'2024-09-06 00:00:00',6,3,1,1,1,1,NULL,NULL,NULL),(63,'Dragged To The Musicals','2025-05-23','07:30:00',55,'2024-05-29 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL),(64,'Sweet Caroline','2025-07-20','07:30:00',55,'2025-05-07 00:00:00',8,1,1,1,1,1,NULL,NULL,NULL),(65,'TALON - The Best Of Eagles','2025-07-22','07:30:00',55,'2025-03-12 00:00:00',4,1,1,1,1,1,NULL,NULL,NULL),(66,'Paul Zerdin \'Jaw-Drop\'','2025-06-27','07:30:00',55,'2024-10-06 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL),(67,'Crooners','2025-08-24','07:30:00',55,'2024-07-14 00:00:00',8,3,1,1,1,1,NULL,NULL,NULL),(68,'Uptown Girl - The Billy Joel Collection','2025-08-04','07:30:00',55,'2024-10-15 00:00:00',6,1,1,1,1,1,NULL,NULL,NULL),(69,'Jive Talkin\' Perform The Bee Gees - Live In Concert','2025-06-07','07:30:00',55,'2024-11-30 00:00:00',5,3,1,1,1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_events` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_location`
--

DROP TABLE IF EXISTS `tbl_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_location` (
  `locationId` int unsigned NOT NULL AUTO_INCREMENT,
  `location` varchar(255) DEFAULT NULL,
  `tenantId` int DEFAULT NULL,
  PRIMARY KEY (`locationId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_location`
--

LOCK TABLES `tbl_location` WRITE;
/*!40000 ALTER TABLE `tbl_location` DISABLE KEYS */;
INSERT INTO `tbl_location` VALUES (1,'Lowther Pavilion',1),(2,'Lowther Gardens',1);
/*!40000 ALTER TABLE `tbl_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles_type`
--

DROP TABLE IF EXISTS `tbl_roles_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles_type` (
  `roleId` int NOT NULL AUTO_INCREMENT,
  `roleName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`roleId`),
  UNIQUE KEY `idx_role_unique` (`role`),
  KEY `idx_role` (`role`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles_type`
--

LOCK TABLES `tbl_roles_type` WRITE;
/*!40000 ALTER TABLE `tbl_roles_type` DISABLE KEYS */;
INSERT INTO `tbl_roles_type` VALUES (4,'Super Administrator',1),(5,'Adminstrator',2),(6,'Manager',3),(7,'Team Leader',4),(8,'Volunteer',5);
/*!40000 ALTER TABLE `tbl_roles_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_rota_type`
--

DROP TABLE IF EXISTS `tbl_rota_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_rota_type` (
  `rotaId` int unsigned NOT NULL AUTO_INCREMENT,
  `rotaDesc` varchar(255) DEFAULT NULL,
  `tentantId` int DEFAULT NULL,
  PRIMARY KEY (`rotaId`),
  KEY `fk_rota_type_tenantId` (`tentantId`),
  CONSTRAINT `fk_rota_type_tenantId` FOREIGN KEY (`tentantId`) REFERENCES `tbl_tenants` (`tenId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_rota_type`
--

LOCK TABLES `tbl_rota_type` WRITE;
/*!40000 ALTER TABLE `tbl_rota_type` DISABLE KEYS */;
INSERT INTO `tbl_rota_type` VALUES (1,'Technical',1),(2,'Front of House',1),(3,'Box Office',1),(4,'Technical',2);
/*!40000 ALTER TABLE `tbl_rota_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_settings`
--

DROP TABLE IF EXISTS `tbl_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_settings` (
  `settingsId` int unsigned NOT NULL AUTO_INCREMENT,
  `tenantId` int DEFAULT NULL,
  `emailSenderName` varchar(255) DEFAULT NULL COMMENT 'this will appear on bottom of emails',
  `rotaId` int DEFAULT NULL,
  `newUserTemplate` int DEFAULT NULL,
  `sender` text NOT NULL,
  `daysToPublish` int DEFAULT NULL,
  PRIMARY KEY (`settingsId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_settings`
--

LOCK TABLES `tbl_settings` WRITE;
/*!40000 ALTER TABLE `tbl_settings` DISABLE KEYS */;
INSERT INTO `tbl_settings` VALUES (1,1,'Sam Barker',1,1,'John Doe Federation',NULL);
/*!40000 ALTER TABLE `tbl_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_templates`
--

DROP TABLE IF EXISTS `tbl_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_templates` (
  `templateId` int unsigned NOT NULL AUTO_INCREMENT,
  `tenantId` int DEFAULT NULL,
  `rotaId` int DEFAULT NULL,
  `tempHtml` text,
  `modifiedBy` int DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  `tempName` varchar(255) DEFAULT NULL,
  `tempDesc` text,
  `subjectLine` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`templateId`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_templates`
--

LOCK TABLES `tbl_templates` WRITE;
/*!40000 ALTER TABLE `tbl_templates` DISABLE KEYS */;
INSERT INTO `tbl_templates` VALUES (1,1,1,'<p>Dear ???FirstName???</p><p>You\'re invited to join the volunteer website.Please click on the following link <a href=\"http://localhost:8100/admin/user/user_registration\" target=\"_blank\">http://localhost:8100/admin/user/user_registration</a>&nbsp;</p><p>Please use this ???vcode???<br></p><p><br></p><p>Many Thanks</p><p>???Signature???<br></p>',55,'2025-05-13 20:54:28','Introduction Email','Use for the intro Email',''),(3,NULL,NULL,'<p>helo &lt;&lt;?FirstName?&gt;&gt;<br></p>',NULL,'2025-05-12 06:32:15','Test',NULL,NULL);
/*!40000 ALTER TABLE `tbl_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_tenants`
--

DROP TABLE IF EXISTS `tbl_tenants`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_tenants` (
  `tenId` int NOT NULL AUTO_INCREMENT,
  `tenantDesc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`tenId`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_tenants`
--

LOCK TABLES `tbl_tenants` WRITE;
/*!40000 ALTER TABLE `tbl_tenants` DISABLE KEYS */;
INSERT INTO `tbl_tenants` VALUES (1,'John Doe Foundation'),(2,'XYZ Charities');
/*!40000 ALTER TABLE `tbl_tenants` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_dets`
--

DROP TABLE IF EXISTS `tbl_user_dets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_dets` (
  `usrDetsId` int unsigned NOT NULL AUTO_INCREMENT,
  `add1` varchar(255) DEFAULT NULL,
  `add2` varchar(255) DEFAULT NULL,
  `town1` varchar(255) DEFAULT NULL,
  `town2` varchar(255) DEFAULT NULL,
  `county` varchar(255) DEFAULT NULL,
  `postcode` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `tel` varchar(255) DEFAULT NULL,
  `userId` int unsigned NOT NULL,
  `modifiedBy` int DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `emgcyCntctNme` varchar(255) DEFAULT NULL,
  `emgcyCntctTel` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`usrDetsId`),
  KEY `fk_user_dets_userId` (`userId`),
  CONSTRAINT `fk_user_dets_userId` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=123 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_dets`
--

LOCK TABLES `tbl_user_dets` WRITE;
/*!40000 ALTER TABLE `tbl_user_dets` DISABLE KEYS */;
INSERT INTO `tbl_user_dets` VALUES (99,'D7+NmHmFjDJgR3ErHNf6Gg==.JeLhUxkMnk8wJukAP4uYqg==','vpoeIo8F8QY2xyW/7hO1hA==.UO3F8XlM0Prh1W/+1IpbtQ==','anywhere',NULL,'Durham','Zlp9yN1LXC5jCngNrwD4dw==.FDiAc2PlXTPizhNjymBTXw==','Calg2pm9sQzCLZp6s2dqVA==.BnyUKoKvcal51x6T988fCw==','v0ButMK/54d8Tg9vw+/6Hg==.2wOdW3WNEFK+JVRL0m8bmg==',55,55,'2025-05-10 12:06:34','Umeg6b/NCNcp77PaAmiZKw==.gan76GfceQ5FWSylfA6X2g==','V9qksQhQ8/a7QbQJAiMu1w==.hMLCfZSxdijTKhHKbYQTAw=='),(100,'NKCfRZnT/vsASRg+5k9LQA==.YYzxjSqEhmEolgVRholDfg==','5epAWtifWwS/5/7tvWrPXA==.bXRLDe3uKfr0ZylwvlbyuA==','Westbeach',NULL,'Lancs','qAVjfHcwKVpaEdRWMxDZLg==.NdfWbFdKc2jiipG++3UgJQ==','ycZ8Ni0NjWdhrOfL/dj0/Q==.zwf3dymuOXX0mIIQNl71+Q==','eX+F0YewxYAHtBd/xGRp6w==.wgg3ajO4FAdNssxm0nDDTw==',151,151,'2025-05-11 09:19:57','O7zUKgTznqecBjIPpbZrVw==.u2OUsbanQ8WcV6o4wpQZVg==','xgfHUXVkmZOp0haAb+w55A==.C2bSL3o92P0HuiXVzn50UQ=='),(101,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,152,NULL,'2025-05-11 09:25:06',NULL,NULL),(102,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,153,NULL,'2025-05-13 09:17:02',NULL,NULL),(103,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,154,NULL,'2025-05-13 09:24:08',NULL,NULL),(104,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,155,NULL,'2025-05-13 09:31:57',NULL,NULL),(105,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,156,NULL,'2025-05-13 09:54:20',NULL,NULL),(106,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,157,NULL,'2025-05-13 10:23:28',NULL,NULL),(107,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,158,NULL,'2025-05-13 10:23:44',NULL,NULL),(108,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,159,NULL,'2025-05-13 10:26:28',NULL,NULL),(109,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,160,NULL,'2025-05-13 11:09:48',NULL,NULL),(110,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,161,NULL,'2025-05-13 11:16:36',NULL,NULL),(111,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,162,NULL,'2025-05-13 11:18:44',NULL,NULL),(112,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,163,NULL,'2025-05-13 11:19:11',NULL,NULL),(113,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,164,NULL,'2025-05-13 11:23:13',NULL,NULL),(114,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,165,NULL,'2025-05-13 11:23:31',NULL,NULL),(115,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,166,NULL,'2025-05-13 11:55:19',NULL,NULL),(116,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,167,NULL,'2025-05-13 12:13:24',NULL,NULL),(117,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,168,NULL,'2025-05-13 12:15:32',NULL,NULL),(118,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,169,NULL,'2025-05-13 18:01:16',NULL,NULL),(119,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,170,NULL,'2025-05-13 18:01:49',NULL,NULL),(120,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,171,NULL,'2025-05-13 20:46:43',NULL,NULL),(121,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,172,NULL,'2025-05-13 20:55:28',NULL,NULL),(122,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,173,NULL,'2025-05-13 21:01:16',NULL,NULL);
/*!40000 ALTER TABLE `tbl_user_dets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_rota`
--

DROP TABLE IF EXISTS `tbl_user_rota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_rota` (
  `rotaId` int unsigned NOT NULL AUTO_INCREMENT,
  `tenantId` int DEFAULT NULL,
  `rota` int DEFAULT NULL,
  `modifiedDate` datetime NOT NULL,
  `modifiedBy` int NOT NULL,
  `userId` int unsigned DEFAULT NULL,
  `role` int DEFAULT NULL,
  PRIMARY KEY (`rotaId`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_rota`
--

LOCK TABLES `tbl_user_rota` WRITE;
/*!40000 ALTER TABLE `tbl_user_rota` DISABLE KEYS */;
INSERT INTO `tbl_user_rota` VALUES (5,1,1,'2025-04-20 18:40:00',1,55,2),(69,1,1,'2025-05-11 07:40:52',55,151,2),(70,1,1,'2025-05-11 09:25:06',151,152,3),(71,1,1,'2025-05-13 09:17:02',55,153,2),(72,1,1,'2025-05-13 09:24:08',55,154,5),(73,NULL,NULL,'2025-05-13 09:31:57',0,155,5),(74,1,1,'2025-05-13 09:54:20',55,156,5),(75,1,1,'2025-05-13 10:23:28',55,157,5),(76,1,1,'2025-05-13 10:23:45',55,158,5),(77,1,1,'2025-05-13 10:26:28',55,159,5),(78,1,1,'2025-05-13 11:09:48',55,160,5),(79,1,1,'2025-05-13 11:16:36',151,161,5),(80,1,1,'2025-05-13 11:18:44',55,162,5),(81,1,1,'2025-05-13 11:19:11',55,163,5),(82,1,1,'2025-05-13 11:23:13',55,164,5),(83,1,1,'2025-05-13 11:23:31',55,165,5),(84,1,1,'2025-05-13 11:55:19',55,166,5),(85,1,1,'2025-05-13 12:13:24',151,167,5),(86,1,1,'2025-05-13 12:15:33',151,168,5),(87,1,1,'2025-05-13 18:01:17',55,169,5),(88,1,1,'2025-05-13 18:01:49',55,170,5),(89,1,1,'2025-05-13 20:46:43',55,171,4),(90,1,1,'2025-05-13 20:55:28',55,172,5),(91,1,1,'2025-05-13 21:01:16',55,173,5);
/*!40000 ALTER TABLE `tbl_user_rota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user_tenant`
--

DROP TABLE IF EXISTS `tbl_user_tenant`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_user_tenant` (
  `usrTenId` int unsigned NOT NULL AUTO_INCREMENT,
  `userId` int unsigned DEFAULT NULL,
  `tenantId` int DEFAULT NULL,
  `modifedBy` int DEFAULT NULL,
  `modifiedDate` datetime DEFAULT NULL,
  PRIMARY KEY (`usrTenId`),
  UNIQUE KEY `userId` (`userId`,`tenantId`),
  KEY `fk_user_tenant_tenantId` (`tenantId`),
  CONSTRAINT `fk_user_tenant_tenantId` FOREIGN KEY (`tenantId`) REFERENCES `tbl_tenants` (`tenId`) ON DELETE CASCADE,
  CONSTRAINT `fk_user_tenant_userId` FOREIGN KEY (`userId`) REFERENCES `tbl_users` (`userId`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user_tenant`
--

LOCK TABLES `tbl_user_tenant` WRITE;
/*!40000 ALTER TABLE `tbl_user_tenant` DISABLE KEYS */;
INSERT INTO `tbl_user_tenant` VALUES (105,55,1,55,'2025-05-10 09:25:00'),(106,151,1,55,'2025-05-11 07:40:52'),(107,152,1,151,'2025-05-11 09:25:06'),(108,153,1,55,'2025-05-13 09:17:02'),(109,154,1,55,'2025-05-13 09:24:08'),(110,155,NULL,0,'2025-05-13 09:31:57'),(111,156,1,55,'2025-05-13 09:54:20'),(112,157,1,55,'2025-05-13 10:23:28'),(113,158,1,55,'2025-05-13 10:23:45'),(114,159,1,55,'2025-05-13 10:26:28'),(115,160,1,55,'2025-05-13 11:09:48'),(116,161,1,151,'2025-05-13 11:16:36'),(117,162,1,55,'2025-05-13 11:18:44'),(118,163,1,55,'2025-05-13 11:19:11'),(119,164,1,55,'2025-05-13 11:23:13'),(120,165,1,55,'2025-05-13 11:23:31'),(121,166,1,55,'2025-05-13 11:55:19'),(122,167,1,151,'2025-05-13 12:13:24'),(123,168,1,151,'2025-05-13 12:15:33'),(124,169,1,55,'2025-05-13 18:01:17'),(125,170,1,55,'2025-05-13 18:01:49'),(126,171,1,55,'2025-05-13 20:46:43'),(127,172,1,55,'2025-05-13 20:55:28'),(128,173,1,55,'2025-05-13 21:01:16');
/*!40000 ALTER TABLE `tbl_user_tenant` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `userId` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `lName` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `joinDate` date DEFAULT NULL,
  `dateModified` datetime DEFAULT NULL,
  `modifiedBy` int DEFAULT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `imageName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`userId`),
  UNIQUE KEY `userId` (`userId`),
  UNIQUE KEY `uc_email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (55,'94/aN9btTs2PSV/Qkh18Bw==.ftcQzgP1G7t5IYD3i9LElWqvMrNlz7lX8eqiHq1kRNQ=','7ade274f8230b0470e988089c1e32e6ea4009216b612d0339bd07104c8fa89b9','OgrfNOZSAsQFoYVjsYrv3A==.obCiYleQdsgukOemhKjP9Q==','qb/njnZEeL0Fc+KwOIzWCA==.LtoQX4FWzeiOGuwVFN74Bg==','2025-04-17','2025-04-29 13:57:34',55,'ruth','vol_Id55',1,1),(151,'iJfcfObqMLBT93isZ3Wu/g==.eH76gSshYJJWgUu+Bx+EWY1sAYxnbWaJeCvvW/la2UQ=','7ade274f8230b0470e988089c1e32e6ea4009216b612d0339bd07104c8fa89b9','DB8wLQ87bESpEmbJpJJriQ==./Dhk9GebXZ959e62ckcZ5g==','9Qn/bt9cs0MpMPXRsIfZzA==.pVqGkJs4LNAe5sBZNbGJsQ==','2025-05-11','2025-05-11 07:40:49',55,'rowed1','vol_Id151',1,1),(152,'StPCbjmvQrpjHiGs/XWCaA==.iPuZXseG8P9S3e2Pzvxs/QbVcCmBU3JzMbE5VRgA0Y4=','fef5aa05ac5a205a6f9715fcc3ea26d9b21c1a50d2055457e508c78ac6769fd7b229a07edec6c580926f08ed156a33b748d57914629d7969e7a1853bed02150b','GIpWUCMO/U+gL6gXIt01JQ==.xaP/afDlg/nH8NBPehU0Hg==','31KmVUz2lPITbZ8Ypap15A==.S4Vu1h8Jp0j6TLcoxqc+wQ==','2025-05-11','2025-05-11 09:25:03',151,'eric','dummy',NULL,NULL),(153,'glPriO8k7Yh6e1CbPkwb1w==.RR0t8PhSFXbdimJbH8sYn4yQ+X/Z+P0RK+H+Uh8WzLI=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','b/dFwQHDCMfF9a48bTu8jQ==.2Av2YBbPjOM+yuxNMtjc0g==','njfYW2EdEc69/FZQjqIF0Q==.UT4xZs8tdJD0H1xZ/RDrFQ==','2025-05-13','2025-05-13 09:16:59',55,'harry','dummy',NULL,NULL),(154,'c1oY0WokdS/gvlW5vo++5g==.xqMUCxSb9RkxttLDQSJa4CTaUHrivZk+yGpz1jZgomo=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','lg4vLnFaW9OgMiOML5mlOA==.2ui9AUl1LAUsHfIYfXrgPw==','NNbdeItM7xCIMkuRk27kGg==.+e36iul8ro83pzlbH2GzNA==','2025-05-13','2025-05-13 09:24:05',55,'bill','dummy',NULL,NULL),(155,'JT0ATT8BsPlti87Gf65P5A==.xvdXdsC0w1bwFFr3L4JjeQ==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','madq67CditnP34KJ218SlQ==.LAiElTNM0uaWhFI9IBZNJw==','9jUtRvV9IYXUXm8jHt6shg==.iqMqczRca+/DZH8HvGJnmw==','2025-05-13','2025-05-13 09:31:53',0,'lenny','dummy',NULL,NULL),(156,'tbcFWT5AAnmYODmb4sqaZg==.y4RU4IsptwBzn/dTDTA6AQ==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','R58mQY6XT76xDE0AtKdnOw==.2hW1CbEh3xxVHG9nUte1NA==','iR6+Y9gmZK2u7Trl2LLVpA==.HFyNhjmwUDka7LbvPgzHGQ==','2025-05-13','2025-05-13 09:54:17',55,'Edd','dummy',NULL,NULL),(157,'NMkoU929B2+nXcWrWHbV7g==.z5IMNHVJXbVRMi2Q1S9YTw==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','91CIz8Uj4cjCP5fpzNRF/w==.LuOLj2/qO8wU6GvhbI8yGQ==','VlY1+U0szIWGJ+UJ/TXgFA==.O4OexpsinxyjfP+kpL8Xhw==','2025-05-13','2025-05-13 10:23:24',55,'zoe','dummy',NULL,NULL),(158,'3eaN3TxssYk1QKH5+8rEJA==.T2yw8ZgjGXj9ZMffSbiLHw==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','rLe5Q03gDpR3o8rRTygsOQ==.wGpgQO2y5zpEsRMCNT/KAA==','QXqbNYQ959EiQdOyNefIOg==.cc2RJphmU0hLfdyQaREy7Q==','2025-05-13','2025-05-13 10:23:41',55,'zoe','dummy',NULL,NULL),(159,'Cn1qxKDd5FGGgIb5u6LW2A==.6ECRTpgY2CatHvCrwyw7dHkHaJhjqqVK7yyxeIIRl9Y=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','Qldscb7T3/WLLhqV++kYXQ==.2MVR7XrHzfLIkUBFQIob3g==','WgvGWKCfVRi4GQR4b2FX0w==.yHQNsjeZnuSMZ4ozYNTwDQ==','2025-05-13','2025-05-13 10:26:24',55,'will','dummy',NULL,NULL),(160,'8LR5mBMsdUArYvLPES0mCA==.Xf4x/9a0xvn18UuswUqtglQ3uVqA2k/MmL+aMRl0s9c=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','W1YTn35NmaPLGR3HbXenUA==.Oq0HrsbQH3NU8hLjKdlP8A==','nmKYI51eEZ+7yvBl7lKDyQ==.lk3R83AVCtOE8qkKxaMZKg==','2025-05-13','2025-05-13 11:09:45',55,'freda','dummy',NULL,NULL),(161,'cUZ/ypb0qars3apkKfxGZQ==.v0QXbxeAT0d1rJIIT8I02D9ditye9WB3n/KDrWNYITY=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','yeR7/zBda05+rDhfbPCmhA==.gzds96CW/UHM2qlbagMVKw==','bPhOkDcSk+U+u6EWjvBYJg==.NQbWmQ3hs7EnaZjDZBFklA==','2025-05-13','2025-05-13 11:16:33',151,'cory','dummy',NULL,NULL),(162,'RVR2QtRutetQCaA25sLtTA==.34d8D347apGeBzTYlJC5wg==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','CZ8X8y7hP/j+flmZc6WDgA==.21BWusXW4BMLkjWNsmEaaA==','WMRlwoCGBQjWhYQfuSPgog==.ofNbgUgPT/cmElZY3Widiw==','2025-05-13','2025-05-13 11:18:41',55,'win','dummy',NULL,NULL),(163,'E9vn7P+ZWpDd7gb19Q7SYg==./QM3KWE1fVRlddxbOXFaMQ==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','NOcCiUmyLyJ6U05oQWlC/Q==.3BlOHBRAlvju8G7nGXDziw==','fA5kgmnqCsohy1AKuEJCfQ==.Z+9GhuJbAEn4D0daDoOOTg==','2025-05-13','2025-05-13 11:19:08',55,'win','dummy',NULL,NULL),(164,'eJHaw89rCm0q3h1UtPHxJw==.g4c5F+WuK9UCNwa8A1iwP+x1XJEtw3FVvXgMU9n3f3g=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','bGg+BcVk/p+boE2i+MLiQg==.s6PRyaOXuPkdd81tXTjvTA==','5Fdf8eM7f4Rj3LwGx4Ah9g==.zzkpSASDL3zKpwUqISLgOg==','2025-05-13','2025-05-13 11:23:10',55,'archie','dummy',NULL,NULL),(165,'ISEiyJjKPT44HFy05zlGVA==.VdMmjUGdSB9UJc+5CBfcnqjzRaWIW/qnEd8Lrpi0gGk=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','fVP+ikL4f2d1delZzDpmbg==.Y8YZzxn6lGtdg2A1RJnOTw==','m3S+NG04S75S9vEJMK9Ctg==.H6NdXtwn7TyLjdaqUNvU9A==','2025-05-13','2025-05-13 11:23:28',55,'archie','dummy',NULL,NULL),(166,'OVSx5Jpjwn0qdDffLgl/TA==.2UEZ12L207wXEKHzM0OS1g==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','AgI0jY5tkOVSiH9mH5+v5w==.F/TOcUx+oDfP7U9v8k6WcQ==','H7Gge51CUnsWzMPhCCiWeA==.QRlPf3EWd/H2nQFzh6TDug==','2025-05-13','2025-05-13 11:55:15',55,'alf','dummy',NULL,NULL),(167,'9DI9sQk6IeCXFb9/U4Q2Gw==.Aqc+52OqWzTODhDVd/7AWg==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','LSH2T52/oN6VRykwR4p/Rw==.Jj/LshXROmaSjlf/6fClsA==','/aPWL4LVuYHT2LJhAVTd1w==.VxGMy1tT6Jcuk+0Rtl3dBg==','2025-05-13','2025-05-13 12:13:21',151,'vera','dummy',NULL,NULL),(168,'WZxIZSoe7TaE2CtHP8uuVg==.+FqgexopSrsekJ7cAikjUQ==','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','ft9tvQKHxMZCRL5okVu03Q==.hexRHd+OJ3o8tBEkGc7tIA==','sQeJK6SvvuL5ucBMDuuDpA==.egFxSGD+uKEueORtQi+R2g==','2025-05-13','2025-05-13 12:15:29',151,'albie','dummy',NULL,NULL),(169,'I01mM9E3hZZ7sle0okt50Q==.lnJxYcY7YlU3o7kL+Q2H2XEujCtQhFycluyLCtII/C4=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','yGHhoJZarOHlxAQsoKzwkQ==.jBCzNCpa/07JRTltbE+YwA==','hd7UBEOLGmyqsa79eNIPEg==.WaREi/Ic024Yjo0LH7arNQ==','2025-05-13','2025-05-13 18:01:13',55,'brad','dummy',NULL,NULL),(170,'hfuMCfB0pg1H1KzBiIxZIg==.aaHFIO9qej2jCQuxh4R4OnXxTHOI63EOWLBPklsrlII=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','Fb2ENMy0GJHYVdVgcmsrvg==.GefVbgY9fT9qKEvqpvFLmQ==','c6qlxR6lhLRqW7Ob/DjK7A==.aF3kepcz2+EI1IYwup9nIg==','2025-05-13','2025-05-13 18:01:46',55,'brad','dummy',NULL,NULL),(171,'yR0vCY64idGofCUdplRmZg==.iuob1nCZ6s33Vc2g4DkOP3zbgqOJhZ4p9ZAef/SGQmE=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','MSAO87K1PmkVMkmT9GJGOA==.4bGdTmKOBaWid88CPTxPJw==','Egwwr77m+HhvxCVrUsBNfg==.7hTyl+X9rxkRQRbpjBZsOg==','2025-05-13','2025-05-13 20:46:39',55,'ryan','dummy',NULL,NULL),(172,'iB5Ctkw290nqFIKwx5iAEQ==.kWrG/wLy9rJXSkY+cmwMktXr8W8wXQtABgxdpdJx6uk=','480c446e001cf74e07dbdfbfaf9504837ad5dadcb34f644a49a5349f26f7c4b6964ed08c5c0077e34857da12151c3e94f99242c6f304f3f774d5b60e96155a8b','/l/6cwdbPIAssq3AHLl43w==.h5420+ybEE5PfDQRp7XMNQ==','N4PEUOaxkQ9G/cehEwRojQ==.Yt3jsuYZrfLIMNYA/p1iXA==','2025-05-13','2025-05-13 20:55:25',55,'warwick','dummy',NULL,NULL),(173,'nCuIT7uIZXhtjY3WUeQHaA==.LiobcJQfNOZlXbE4G/2nMp/O4ABiiYQd53zLP3lNj5g=','8d021b4d62af9516242210f8f16cba2dfdf36c7998d2ff4440c04189e062b34e','Gylo5+JvN6VqrTrI9OUNYg==.NS5BptkNU4RB7NSE6Vjy0Q==','BI6H+OXo3pyLKrJVCXnJtQ==.y4avUZ1jPkroj2lEQMcdjA==','2025-05-13','2025-05-13 21:01:13',55,'ruby','dummy',1,1);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_venue`
--

DROP TABLE IF EXISTS `tbl_venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_venue` (
  `venueId` int unsigned NOT NULL AUTO_INCREMENT,
  `tenantId` int DEFAULT NULL,
  `venueDesc` varchar(255) DEFAULT NULL,
  `location` int DEFAULT NULL,
  PRIMARY KEY (`venueId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_venue`
--

LOCK TABLES `tbl_venue` WRITE;
/*!40000 ALTER TABLE `tbl_venue` DISABLE KEYS */;
INSERT INTO `tbl_venue` VALUES (1,1,'Main Hall',1),(2,1,'Chapman Studio',1),(3,1,'Main Studio',1),(4,1,'Main Gardens',2);
/*!40000 ALTER TABLE `tbl_venue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wappler_migrations`
--

DROP TABLE IF EXISTS `wappler_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wappler_migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `migration_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wappler_migrations`
--

LOCK TABLES `wappler_migrations` WRITE;
/*!40000 ALTER TABLE `wappler_migrations` DISABLE KEYS */;
INSERT INTO `wappler_migrations` VALUES (1,'20250422161457_user ten.js',1,'2025-04-22 17:14:58'),(2,'20250423083412_role.js',2,'2025-04-23 09:34:13'),(3,'20250423084142_del role.js',3,'2025-04-23 09:41:43'),(4,'20250423162105_user role.js',4,'2025-04-23 17:21:08'),(5,'20250423162325_user riole filed.js',5,'2025-04-23 17:23:27'),(6,'20250423163621_role.js',6,'2025-04-23 17:36:26'),(7,'20250423175150_ex.js',7,'2025-04-23 18:51:51'),(8,'20250424063917_ite role.js',8,'2025-04-24 07:39:18'),(9,'20250424064644_ten id.js',9,'2025-04-24 07:46:45'),(10,'20250424064708_del tnt.js',10,'2025-04-24 07:47:08'),(11,'20250424090518_mod by.js',11,'2025-04-24 10:05:19'),(12,'20250424090542_modified.js',12,'2025-04-24 10:05:43'),(13,'20250424123130_del.js',13,'2025-04-24 13:31:31'),(14,'20250502042923_emergency dets.js',14,'2025-05-02 05:29:24'),(15,'20250502043813_emerg contact.js',15,'2025-05-02 05:38:14'),(16,'20250502043841_emrg tel.js',16,'2025-05-02 05:38:42'),(17,'20250503090909_ver.js',17,'2025-05-03 10:09:10'),(18,'20250503092923_active.js',18,'2025-05-03 10:29:24'),(19,'20250504060707_key.js',19,'2025-05-04 07:07:07'),(20,'20250505071002_act desc.js',20,'2025-05-05 08:10:03'),(21,'20250505075829_settings.js',21,'2025-05-05 08:58:30'),(22,'20250505075911_tennant id.js',22,'2025-05-05 08:59:12'),(23,'20250505080010_act.js',23,'2025-05-05 09:00:11'),(24,'20250505090944_verified.js',24,'2025-05-05 10:09:44'),(25,'20250506051807_active int.js',25,'2025-05-06 06:18:09'),(26,'20250506060843_active bool.js',26,'2025-05-06 07:08:44'),(27,'20250511090314_template.js',27,'2025-05-11 10:03:15'),(28,'20250511090415_integers.js',28,'2025-05-11 10:04:15'),(29,'20250511090448_tempHtml.js',29,'2025-05-11 10:04:49'),(30,'20250511090538_date.js',30,'2025-05-11 10:05:39'),(31,'20250511100702_tempname.js',31,'2025-05-11 11:07:03'),(32,'20250511101802_temp string.js',32,'2025-05-11 11:18:03'),(33,'20250512061549_em sender.js',33,'2025-05-12 07:15:50'),(34,'20250512061647_rota.js',34,'2025-05-12 07:16:47'),(35,'20250512062019_comm.js',35,'2025-05-12 07:20:19'),(36,'20250513062030_tbl email.js',36,'2025-05-13 07:20:31'),(37,'20250513062457_email updates.js',37,'2025-05-13 07:24:58'),(38,'20250513062600_status.js',38,'2025-05-13 07:26:01'),(39,'20250513062831_sender.js',39,'2025-05-13 07:28:32'),(40,'20250513063601_verif code.js',40,'2025-05-13 07:36:02'),(41,'20250513072823_subject line.js',41,'2025-05-13 08:28:23'),(42,'20250513202645_event.js',42,'2025-05-13 21:26:46'),(43,'20250513202825_time.js',43,'2025-05-13 21:28:25'),(44,'20250513202858_location.js',44,'2025-05-13 21:28:59'),(45,'20250513202942_mod by.js',45,'2025-05-13 21:29:42'),(46,'20250513203226_date.js',46,'2025-05-13 21:32:27'),(47,'20250513204309_numvols.js',47,'2025-05-13 21:43:10'),(48,'20250513204514_integer.js',48,'2025-05-13 21:45:14'),(49,'20250513205919_weight.js',49,'2025-05-13 21:59:20'),(50,'20250513210319_rota.js',50,'2025-05-13 22:03:20'),(51,'20250513210940_vol.js',51,'2025-05-13 22:09:41'),(52,'20250514065046_location.js',52,'2025-05-14 07:50:47'),(53,'20250514070447_del.js',53,'2025-05-14 08:04:48'),(54,'20250514070507_del venue.js',54,'2025-05-14 08:05:08'),(55,'20250514070545_ten id.js',55,'2025-05-14 08:05:46'),(56,'20250514072053_ev.js',56,'2025-05-14 08:20:54'),(57,'20250514072120_del.js',57,'2025-05-14 08:21:21'),(58,'20250514072508_ev loc.js',58,'2025-05-14 08:25:09'),(59,'20250514074309_venue.js',59,'2025-05-14 08:43:10'),(60,'20250514074417_venue ref.js',60,'2025-05-14 08:44:18'),(61,'20250514080844_publish.js',61,'2025-05-14 09:08:45'),(62,'20250514081802_publish.js',62,'2025-05-14 09:18:03'),(63,'20250514124827_event user.js',63,'2025-05-14 13:48:28'),(64,'20250514124931_mod by.js',64,'2025-05-14 13:49:32'),(65,'20250514130121_event ref.js',65,'2025-05-14 14:01:22'),(66,'20250514153613_user event.js',66,'2025-05-14 16:36:13'),(67,'20250515050849_location.js',67,'2025-05-15 06:08:50'),(68,'20250515052938_vol arrival.js',68,'2025-05-15 06:29:38'),(69,'20250515053020_publish.js',69,'2025-05-15 06:30:20'),(70,'20250518061715_vol status.js',70,'2025-05-18 07:17:16'),(71,'20250518061756_status.js',71,'2025-05-18 07:17:57'),(72,'20250518072521_reg date.js',72,'2025-05-18 08:25:22'),(73,'20250521073651_integer chnge.js',73,'2025-05-21 08:36:51'),(74,'20250521184417_bool.js',74,'2025-05-21 19:44:18'),(75,'20250523063051_datetime.js',75,'2025-05-23 07:30:52');
/*!40000 ALTER TABLE `wappler_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wappler_migrations_lock`
--

DROP TABLE IF EXISTS `wappler_migrations_lock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wappler_migrations_lock` (
  `index` int unsigned NOT NULL AUTO_INCREMENT,
  `is_locked` int DEFAULT NULL,
  PRIMARY KEY (`index`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wappler_migrations_lock`
--

LOCK TABLES `wappler_migrations_lock` WRITE;
/*!40000 ALTER TABLE `wappler_migrations_lock` DISABLE KEYS */;
INSERT INTO `wappler_migrations_lock` VALUES (1,0);
/*!40000 ALTER TABLE `wappler_migrations_lock` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03  5:20:47
