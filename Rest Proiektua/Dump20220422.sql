-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pokemon
-- ------------------------------------------------------
-- Server version	5.5.5-10.5.8-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `advantage`
--

DROP TABLE IF EXISTS `advantage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `advantage` (
  `attacker_id` int(11) NOT NULL,
  `defender_id` int(11) NOT NULL,
  `damage_multiplier` float NOT NULL,
  PRIMARY KEY (`attacker_id`,`defender_id`),
  KEY `defender_id_idx` (`defender_id`),
  CONSTRAINT `attacker_id` FOREIGN KEY (`attacker_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `defender_id` FOREIGN KEY (`defender_id`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `advantage`
--

LOCK TABLES `advantage` WRITE;
/*!40000 ALTER TABLE `advantage` DISABLE KEYS */;
INSERT INTO `advantage` VALUES (1,2,2),(1,5,0.5),(1,6,0.5),(1,7,0.5),(1,8,0.5),(1,9,0.5),(1,10,2),(1,14,0.5),(1,15,2),(1,17,0.5),(2,2,0.5),(2,5,0.5),(2,6,0.5),(2,9,2),(3,3,2),(3,5,0),(3,17,0.5),(4,3,0.5),(4,4,0.5),(4,8,2),(4,10,0.5),(4,11,0),(4,18,2),(5,2,2),(5,3,2),(5,6,2),(5,7,0.5),(5,14,0.5),(5,17,0.5),(6,1,0.5),(6,2,2),(6,5,0.5),(6,8,0.5),(6,9,0),(6,12,2),(6,13,2),(6,14,0.5),(6,15,0.5),(6,16,2),(6,17,2),(7,1,2),(7,3,0.5),(7,7,0.5),(7,10,2),(7,12,2),(7,16,0.5),(7,17,2),(7,18,0.5),(8,1,2),(8,4,0.5),(8,6,2),(8,10,2),(8,16,0.5),(8,17,0.5),(9,2,0.5),(9,9,2),(9,13,0),(9,15,2),(10,1,0.5),(10,3,0.5),(10,7,0.5),(10,8,0.5),(10,10,0.5),(10,11,2),(10,14,0.5),(10,16,2),(10,17,0.5),(10,18,2),(11,1,0.5),(11,4,2),(11,7,2),(11,8,0),(11,10,0.5),(11,14,2),(11,16,2),(11,17,2),(12,3,2),(12,7,0.5),(12,8,2),(12,10,2),(12,11,2),(12,12,0.5),(12,17,0.5),(12,18,0.5),(13,9,0),(13,16,0.5),(13,17,0.5),(14,5,2),(14,9,0.5),(14,10,2),(14,11,0.5),(14,14,0.5),(14,16,0.5),(14,17,0),(15,2,0),(15,6,2),(15,14,2),(15,15,0.5),(15,17,0.5),(16,1,2),(16,6,0.5),(16,7,2),(16,8,2),(16,11,0.5),(16,12,2),(16,17,0.5),(17,4,0.5),(17,5,2),(17,7,0.5),(17,12,2),(17,16,2),(17,17,0.5),(17,18,0.5),(18,3,0.5),(18,7,2),(18,10,0.5),(18,11,2),(18,16,2),(18,18,0.5);
/*!40000 ALTER TABLE `advantage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pokemon`
--

DROP TABLE IF EXISTS `pokemon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pokemon` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `img` varchar(45) DEFAULT NULL,
  `height` varchar(45) DEFAULT NULL,
  `width` varchar(45) DEFAULT NULL,
  `type1` int(11) DEFAULT NULL,
  `type2` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type1_idx` (`type1`),
  KEY `type2_idx` (`type2`),
  CONSTRAINT `type1` FOREIGN KEY (`type1`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `type2` FOREIGN KEY (`type2`) REFERENCES `types` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pokemon`
--

LOCK TABLES `pokemon` WRITE;
/*!40000 ALTER TABLE `pokemon` DISABLE KEYS */;
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','http://www.serebii.net/pokemon/art/001.png','0.71 m','6.9 kg',10,14),(2,'Ivysaur','http://www.serebii.net/pokemon/art/002.png','0.99 m','13.0 kg',10,14);
/*!40000 ALTER TABLE `pokemon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `types`
--

DROP TABLE IF EXISTS `types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `types` (
  `id` int(11) NOT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `types`
--

LOCK TABLES `types` WRITE;
/*!40000 ALTER TABLE `types` DISABLE KEYS */;
INSERT INTO `types` VALUES (1,'Bug'),(2,'Dark'),(3,'Dragon'),(4,'Electric'),(5,'Fairy'),(6,'Fighting'),(7,'Fire'),(8,'Flying'),(9,'Ghost'),(10,'Grass'),(11,'Ground'),(12,'Ice'),(13,'Normal'),(14,'Poison'),(15,'Psychic'),(16,'Rock'),(17,'Steel'),(18,'Water');
/*!40000 ALTER TABLE `types` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-22 17:05:29
