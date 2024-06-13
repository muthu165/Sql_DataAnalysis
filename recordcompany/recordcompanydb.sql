CREATE DATABASE  IF NOT EXISTS `record_company` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `record_company`;
-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: record_company
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `release_year` int DEFAULT NULL,
  `band_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `band_id` (`band_id`),
  CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`band_id`) REFERENCES `bands` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
INSERT INTO `albums` VALUES (1,'Tiara',2018,1),(2,'The Great Escape',2010,1),(3,'Mercy Falls',2008,1),(4,'Master of Puppets',1986,2),(5,'...And Justice for All',1988,2),(6,'Death Magnetic',2008,2),(7,'Heliocentric',2010,3),(8,'Pelagial',2013,3),(9,'Anthropocentric',2010,3),(10,'Resist',2018,4),(11,'The Unforgiving',2011,4),(12,'Enter',1997,4),(13,'The Sound of Perseverance',1998,5),(14,'Individual Thought Patterns',1993,5),(15,'Human',1991,5),(16,'A Storm to Come',2006,6),(17,'Break the Silence',2011,6),(18,'Tribe of Force',2010,6);
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bands`
--

DROP TABLE IF EXISTS `bands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bands` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bands`
--

LOCK TABLES `bands` WRITE;
/*!40000 ALTER TABLE `bands` DISABLE KEYS */;
INSERT INTO `bands` VALUES (1,'Seventh Wonder'),(2,'Metallica'),(3,'The Ocean'),(4,'Within Temptation'),(5,'Death'),(6,'Van Canto'),(7,'Dream Theater');
/*!40000 ALTER TABLE `bands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `songs`
--

DROP TABLE IF EXISTS `songs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `songs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `length` double NOT NULL,
  `album_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  CONSTRAINT `songs_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `albums` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=183 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `songs`
--

LOCK TABLES `songs` WRITE;
/*!40000 ALTER TABLE `songs` DISABLE KEYS */;
INSERT INTO `songs` VALUES (1,'Arrival',1.5,1),(2,'The Everones',6.216666666,1),(3,'Dream Machines',5.633333333,1),(4,'Against the Grain',6.966666666,1),(5,'Victorious',4.916666666,1),(6,'Tiara\'s Song (Farewell Pt. 1)',7.266666666,1),(7,'Goodnight (Farewell Pt. 2)',7.166666666,1),(8,'Beyond Today (Farewell Pt. 3)',5.1,1),(9,'The Truth',4.283333333,1),(10,'By the Light of the Funeral Pyres',3.9,1),(11,'Damnation Below',6.733333333,1),(12,'Procession',0.75,1),(13,'Exhale',9.5,1),(14,'Wiseman',5.7,2),(15,'Alley Cat',6.1,2),(16,'The Angelmaker',8.483333333,2),(17,'King of Whitewater',7.333333333,2),(18,'Long Way Home',4.433333333,2),(19,'Move on Through',5.066666666,2),(20,'The Great Escape',30.233333333,2),(21,'A New Beginning',3.083333333,3),(22,'There and Back',3.033333333,3),(23,'Welcome to Mercy Falls',5.183333333,3),(24,'Unbreakable',7.316666666,3),(25,'Tears for a Father',1.966666666,3),(26,'A Day Away',3.716666666,3),(27,'Tears for a Son',1.7,3),(28,'Paradise',5.766666666,3),(29,'Fall in Line',6.15,3),(30,'Break the Silence',9.483333333,3),(31,'Hide and Seek',7.766666666,3),(32,'Destiny Calls',6.3,3),(33,'One Last Goodbye',4.35,3),(34,'Back in Time',1.233333333,3),(35,'The Black Parade',6.95,3),(36,'Battery',5.216666666,4),(37,'Master of Puppets',8.583333333,4),(38,'The Thing That Should Not Be',6.6,4),(39,'Welcome Home (Sanitarium)',6.45,4),(40,'Disposable Heroes',8.283333333,4),(41,'Leper Messiah',5.666666666,4),(42,'Orion',8.45,4),(43,'Damage Inc.',5.533333333,4),(44,'Blackened',6.683333333,5),(45,'...And Justice for All',9.783333333,5),(46,'Eye of the Beholder',6.5,5),(47,'One',7.45,5),(48,'The Shortest Straw',6.6,5),(49,'Harvester of Sorrow',5.766666666,5),(50,'The Frayed Ends of Sanity',7.733333333,5),(51,'To Live Is to Die',9.816666666,5),(52,'Dyers Eve',5.216666666,5),(53,'That Was Just Your Life',7.133333333,6),(54,'The End of the Line',7.866666666,6),(55,'Broken Beat & Scarred',6.416666666,6),(56,'The Day That Never Comes',7.933333333,6),(57,'All Nightmare Long',7.966666666,6),(58,'Cyanide',6.666666666,6),(59,'The Unforgiven III',7.783333333,6),(60,'The Judas Kiss',8.016666666,6),(61,'Suicide & Redemption',9.966666666,6),(62,'My Apocalypse',5.016666666,6),(63,'Shamayim',1.883333333,7),(64,'Firmament',7.483333333,7),(65,'The First Commandment of the Luminaries',6.783333333,7),(66,'Ptolemy Was Wrong',6.466666666,7),(67,'Metaphysics of the Hangman',5.683333333,7),(68,'Catharsis of a Heretic',2.133333333,7),(69,'Swallowed by the Earth',4.983333333,7),(70,'Epiphany',3.616666666,7),(71,'The Origin of Species',7.383333333,7),(72,'The Origin of God',4.55,7),(73,'Epipelagic',1.2,8),(74,'Mesopelagic: Into the Uncanny',5.933333333,8),(75,'Bathyalpelagic I: Impasses',4.4,8),(76,'Bathyalpelagic II: The Wish in Dreams',3.3,8),(77,'Bathyalpelagic III: Disequilibrated',4.45,8),(78,'Abyssopelagic I: Boundless Vasts',3.45,8),(79,'Abyssopelagic II: Signals of Anxiety',5.083333333,8),(80,'Hadopelagic I: Omen of the Deep',1.116666666,8),(81,'Hadopelagic II: Let Them Believe',9.283333333,8),(82,'Demersal: Cognitive Dissonance',9.083333333,8),(83,'Benthic: The Origin of Our Wishes',5.916666666,8),(84,'Anthropocentric',9.4,9),(85,'The Grand Inquisitor I: Karamazov Baseness',5.033333333,9),(86,'She Was the Universe',5.65,9),(87,'For He That Wavereth...',2.116666666,9),(88,'The Grand Inquisitor II: Roots & Locusts',6.55,9),(89,'The Grand Inquisitor III: A Tiny Grain of Faith',1.933333333,9),(90,'Sewers of the Soul',3.733333333,9),(91,'Wille zum Untergang',6.05,9),(92,'Heaven TV',5.066666666,9),(93,'The Almightiness Contradiction',4.566666666,9),(94,'The Reckoning',4.183333333,10),(95,'Endless War',4.15,10),(96,'Raise Your Banner',5.566666666,10),(97,'Supernova',5.566666666,10),(98,'Holy Ground',4.166666666,10),(99,'In Vain',4.416666666,10),(100,'Firelight',4.766666666,10),(101,'Mad World',4.95,10),(102,'Mercy Mirror',3.816666666,10),(103,'Trophy Hunter',5.85,10),(104,'Why Not Me',0.566666666,11),(105,'Shot in the Dark',5.033333333,11),(106,'In the Middle of the Night',5.183333333,11),(107,'Faster',4.383333333,11),(108,'Fire and Ice',3.95,11),(109,'Iron',5.666666666,11),(110,'Where Is the Edge',3.983333333,11),(111,'Sinéad',4.383333333,11),(112,'Lost',5.233333333,11),(113,'Murder',4.266666666,11),(114,'A Demon\'s Fate',5.5,11),(115,'Stairway to the Skies',5.533333333,11),(116,'Restless',6.133333333,12),(117,'Enter',7.25,12),(118,'Pearls of Light',5.25,12),(119,'Deep Within',4.5,12),(120,'Gatekeeper',6.716666666,12),(121,'Grace',5.166666666,12),(122,'Blooded',3.633333333,12),(123,'Candles',7.116666666,12),(124,'Scavenger of Human Sorrow',6.933333333,13),(125,'Bite the Pain',4.483333333,13),(126,'Spirit Crusher',6.783333333,13),(127,'Story to Tell',6.566666666,13),(128,'Flesh and the Power It Holds',8.433333333,13),(129,'Voice of the Soul',3.716666666,13),(130,'To Forgive Is to Suffer',5.916666666,13),(131,'A Moment of Clarity',7.416666666,13),(132,'Painkiller',6.033333333,13),(133,'Overactive Imagination',3.5,14),(134,'In Human Form',3.95,14),(135,'Jealousy',3.683333333,14),(136,'Trapped in a Corner',4.233333333,14),(137,'Nothing Is Everything',3.316666666,14),(138,'Mentally Blind',4.816666666,14),(139,'Individual Thought Patterns',4.016666666,14),(140,'Destiny',4.1,14),(141,'Out of Touch',4.366666666,14),(142,'The Philosopher',4.216666666,14),(143,'Flattening of Emotions',4.466666666,15),(144,'Suicide Machine',4.383333333,15),(145,'Together as One',4.166666666,15),(146,'Secret Face',4.65,15),(147,'Lack of Comprehension',3.716666666,15),(148,'See Through Dreams',4.65,15),(149,'Cosmic Sea',4.45,15),(150,'Vacant Planets',3.866666666,15),(151,'Stora Rövardansen',1.55,16),(152,'King',3.733333333,16),(153,'The Mission',4.3,16),(154,'Lifetime',4.816666666,16),(155,'Rain',4.05,16),(156,'She\'s Alive',4.2,16),(157,'I Stand Alone',4.733333333,16),(158,'Starlight',4.666666666,16),(159,'Battery',5.216666666,16),(160,'If I Die in Battle',4.766666666,17),(161,'The Seller of Souls',3.4,17),(162,'Primo Victoria',3.733333333,17),(163,'Dangers in My Head',4.083333333,17),(164,'Black Wings of Hate',4.683333333,17),(165,'Bed of Nails',3.616666666,17),(166,'Spelled in Waters',4.433333333,17),(167,'Neuer Wind',3.35,17),(168,'The Higher Flight',5,17),(169,'Master of the Wind',6.15,17),(170,'Lost Forever',4.733333333,18),(171,'To Sing a Metal Song',3.4,18),(172,'One to Ten',4.1,18),(173,'I Am Human',3.933333333,18),(174,'My Voice',5.5,18),(175,'Rebellion',4.083333333,18),(176,'Last Night of the Kings',3.866666666,18),(177,'Tribe of Force',3.283333333,18),(178,'Water Fire Heaven Earth',3.533333333,18),(179,'Master of Puppets',8.383333333,18),(180,'Magic Taborea',3.366666666,18),(181,'Hearted',4,18),(182,'Frodo\'s Dream',3.1,18);
/*!40000 ALTER TABLE `songs` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-13 17:23:18
