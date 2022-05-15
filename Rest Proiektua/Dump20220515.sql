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
  `weight` varchar(45) DEFAULT NULL,
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
INSERT INTO `pokemon` VALUES (1,'Bulbasaur','http://www.serebii.net/pokemon/art/001.png','0.71 m','6.9 kg',10,14),(2,'Ivysaur','http://www.serebii.net/pokemon/art/002.png','0.99 m','13.0 kg',10,14),(3,'Venusaur','http://www.serebii.net/pokemon/art/003.png','2.01 m','100.0 kg',10,14),(4,'Charmander','http://www.serebii.net/pokemon/art/004.png','0.61 m','8.5 kg',7,NULL),(5,'Charmeleon','http://www.serebii.net/pokemon/art/005.png','1.09 m','19.0 kg',7,NULL),(6,'Charizard','http://www.serebii.net/pokemon/art/006.png','1.70 m','90.5 kg',7,8),(7,'Squirtle','http://www.serebii.net/pokemon/art/007.png','0.51 m','9.0 kg',18,NULL),(8,'Wartortle','http://www.serebii.net/pokemon/art/008.png','0.99 m','22.5 kg',18,NULL),(9,'Blastoise','http://www.serebii.net/pokemon/art/009.png','1.60 m','85.5 kg',18,NULL),(10,'Caterpie','http://www.serebii.net/pokemon/art/010.png','0.30 m','2.9 kg',1,NULL),(11,'Metapod','http://www.serebii.net/pokemon/art/011.png','0.71 m','9.9 kg',1,NULL),(12,'Butterfree','http://www.serebii.net/pokemon/art/012.png','1.09 m','32.0 kg',1,8),(13,'Weedle','http://www.serebii.net/pokemon/art/013.png','0.30 m','3.2 kg',1,14),(14,'Kakuna','http://www.serebii.net/pokemon/art/014.png','0.61 m','10.0 kg',1,14),(15,'Beedrill','http://www.serebii.net/pokemon/art/015.png','0.99 m','29.5 kg',1,14),(16,'Pidgey','http://www.serebii.net/pokemon/art/016.png','0.30 m','1.8 kg',13,8),(17,'Pidgeotto','http://www.serebii.net/pokemon/art/017.png','1.09 m','30.0 kg',13,8),(18,'Pidgeot','http://www.serebii.net/pokemon/art/018.png','1.50 m','39.5 kg',13,8),(19,'Rattata','http://www.serebii.net/pokemon/art/019.png','0.30 m','3.5 kg',13,NULL),(20,'Raticate','http://www.serebii.net/pokemon/art/020.png','0.71 m','18.5 kg',13,NULL),(21,'Spearow','http://www.serebii.net/pokemon/art/021.png','0.30 m','2.0 kg',13,8),(22,'Fearow','http://www.serebii.net/pokemon/art/022.png','1.19 m','38.0 kg',13,8),(23,'Ekans','http://www.serebii.net/pokemon/art/023.png','2.01 m','6.9 kg',14,NULL),(24,'Arbok','http://www.serebii.net/pokemon/art/024.png','3.51 m','65.0 kg',14,NULL),(25,'Pikachu','http://www.serebii.net/pokemon/art/025.png','0.41 m','6.0 kg',4,NULL),(26,'Raichu','http://www.serebii.net/pokemon/art/026.png','0.79 m','30.0 kg',4,NULL),(27,'Sandshrew','http://www.serebii.net/pokemon/art/027.png','0.61 m','12.0 kg',11,NULL),(28,'Sandslash','http://www.serebii.net/pokemon/art/028.png','0.99 m','29.5 kg',11,NULL),(29,'Nidoran ? (Female)','http://www.serebii.net/pokemon/art/029.png','0.41 m','7.0 kg',14,NULL),(30,'Nidorina','http://www.serebii.net/pokemon/art/030.png','0.79 m','20.0 kg',14,NULL),(31,'Nidoqueen','http://www.serebii.net/pokemon/art/031.png','1.30 m','60.0 kg',14,11),(32,'Nidoran ? (Male)','http://www.serebii.net/pokemon/art/032.png','0.51 m','9.0 kg',14,NULL),(33,'Nidorino','http://www.serebii.net/pokemon/art/033.png','0.89 m','19.5 kg',14,NULL),(34,'Nidoking','http://www.serebii.net/pokemon/art/034.png','1.40 m','62.0 kg',14,11),(35,'Clefairy','http://www.serebii.net/pokemon/art/035.png','0.61 m','7.5 kg',13,NULL),(36,'Clefable','http://www.serebii.net/pokemon/art/036.png','1.30 m','40.0 kg',13,NULL),(37,'Vulpix','http://www.serebii.net/pokemon/art/037.png','0.61 m','9.9 kg',7,NULL),(38,'Ninetales','http://www.serebii.net/pokemon/art/038.png','1.09 m','19.9 kg',7,NULL),(39,'Jigglypuff','http://www.serebii.net/pokemon/art/039.png','0.51 m','5.5 kg',13,NULL),(40,'Wigglytuff','http://www.serebii.net/pokemon/art/040.png','0.99 m','12.0 kg',13,NULL),(41,'Zubat','http://www.serebii.net/pokemon/art/041.png','0.79 m','7.5 kg',14,8),(42,'Golbat','http://www.serebii.net/pokemon/art/042.png','1.60 m','55.0 kg',14,8),(43,'Oddish','http://www.serebii.net/pokemon/art/043.png','0.51 m','5.4 kg',10,14),(44,'Gloom','http://www.serebii.net/pokemon/art/044.png','0.79 m','8.6 kg',10,14),(45,'Vileplume','http://www.serebii.net/pokemon/art/045.png','1.19 m','18.6 kg',10,14),(46,'Paras','http://www.serebii.net/pokemon/art/046.png','0.30 m','5.4 kg',1,10),(47,'Parasect','http://www.serebii.net/pokemon/art/047.png','0.99 m','29.5 kg',1,10),(48,'Venonat','http://www.serebii.net/pokemon/art/048.png','0.99 m','30.0 kg',1,14),(49,'Venomoth','http://www.serebii.net/pokemon/art/049.png','1.50 m','12.5 kg',1,14),(50,'Diglett','http://www.serebii.net/pokemon/art/050.png','0.20 m','0.8 kg',11,NULL),(51,'Dugtrio','http://www.serebii.net/pokemon/art/051.png','0.71 m','33.3 kg',11,NULL),(52,'Meowth','http://www.serebii.net/pokemon/art/052.png','0.41 m','4.2 kg',13,NULL),(53,'Persian','http://www.serebii.net/pokemon/art/053.png','0.99 m','32.0 kg',13,NULL),(54,'Psyduck','http://www.serebii.net/pokemon/art/054.png','0.79 m','19.6 kg',18,NULL),(55,'Golduck','http://www.serebii.net/pokemon/art/055.png','1.70 m','76.6 kg',18,NULL),(56,'Mankey','http://www.serebii.net/pokemon/art/056.png','0.51 m','28.0 kg',6,NULL),(57,'Primeape','http://www.serebii.net/pokemon/art/057.png','0.99 m','32.0 kg',6,NULL),(58,'Growlithe','http://www.serebii.net/pokemon/art/058.png','0.71 m','19.0 kg',7,NULL),(59,'Arcanine','http://www.serebii.net/pokemon/art/059.png','1.91 m','155.0 kg',7,NULL),(60,'Poliwag','http://www.serebii.net/pokemon/art/060.png','0.61 m','12.4 kg',18,NULL),(61,'Poliwhirl','http://www.serebii.net/pokemon/art/061.png','0.99 m','20.0 kg',18,NULL),(62,'Poliwrath','http://www.serebii.net/pokemon/art/062.png','1.30 m','54.0 kg',18,6),(63,'Abra','http://www.serebii.net/pokemon/art/063.png','0.89 m','19.5 kg',15,NULL),(64,'Kadabra','http://www.serebii.net/pokemon/art/064.png','1.30 m','56.5 kg',15,NULL),(65,'Alakazam','http://www.serebii.net/pokemon/art/065.png','1.50 m','48.0 kg',15,NULL),(66,'Machop','http://www.serebii.net/pokemon/art/066.png','0.79 m','19.5 kg',6,NULL),(67,'Machoke','http://www.serebii.net/pokemon/art/067.png','1.50 m','70.5 kg',6,NULL),(68,'Machamp','http://www.serebii.net/pokemon/art/068.png','1.60 m','130.0 kg',6,NULL),(69,'Bellsprout','http://www.serebii.net/pokemon/art/069.png','0.71 m','4.0 kg',10,14),(70,'Weepinbell','http://www.serebii.net/pokemon/art/070.png','0.99 m','6.4 kg',10,14),(71,'Victreebel','http://www.serebii.net/pokemon/art/071.png','1.70 m','15.5 kg',10,14),(72,'Tentacool','http://www.serebii.net/pokemon/art/072.png','0.89 m','45.5 kg',18,14),(73,'Tentacruel','http://www.serebii.net/pokemon/art/073.png','1.60 m','55.0 kg',18,14),(74,'Geodude','http://www.serebii.net/pokemon/art/074.png','0.41 m','20.0 kg',16,11),(75,'Graveler','http://www.serebii.net/pokemon/art/075.png','0.99 m','105.0 kg',16,11),(76,'Golem','http://www.serebii.net/pokemon/art/076.png','1.40 m','300.0 kg',16,11),(77,'Ponyta','http://www.serebii.net/pokemon/art/077.png','0.99 m','30.0 kg',7,NULL),(78,'Rapidash','http://www.serebii.net/pokemon/art/078.png','1.70 m','95.0 kg',7,NULL),(79,'Slowpoke','http://www.serebii.net/pokemon/art/079.png','1.19 m','36.0 kg',18,15),(80,'Slowbro','http://www.serebii.net/pokemon/art/080.png','1.60 m','78.5 kg',18,15),(81,'Magnemite','http://www.serebii.net/pokemon/art/081.png','0.30 m','6.0 kg',4,NULL),(82,'Magneton','http://www.serebii.net/pokemon/art/082.png','0.99 m','60.0 kg',4,NULL),(83,'Farfetch`d','http://www.serebii.net/pokemon/art/083.png','0.79 m','15.0 kg',13,8),(84,'Doduo','http://www.serebii.net/pokemon/art/084.png','1.40 m','39.2 kg',13,8),(85,'Dodrio','http://www.serebii.net/pokemon/art/085.png','1.80 m','85.2 kg',13,8),(86,'Seel','http://www.serebii.net/pokemon/art/086.png','1.09 m','90.0 kg',18,NULL),(87,'Dewgong','http://www.serebii.net/pokemon/art/087.png','1.70 m','120.0 kg',18,12),(88,'Grimer','http://www.serebii.net/pokemon/art/088.png','0.89 m','30.0 kg',14,NULL),(89,'Muk','http://www.serebii.net/pokemon/art/089.png','1.19 m','30.0 kg',14,NULL),(90,'Shellder','http://www.serebii.net/pokemon/art/090.png','0.30 m','4.0 kg',18,NULL),(91,'Cloyster','http://www.serebii.net/pokemon/art/091.png','1.50 m','132.5 kg',18,12),(92,'Gastly','http://www.serebii.net/pokemon/art/092.png','1.30 m','0.1 kg',9,14),(93,'Haunter','http://www.serebii.net/pokemon/art/093.png','1.60 m','0.1 kg',9,14),(94,'Gengar','http://www.serebii.net/pokemon/art/094.png','1.50 m','40.5 kg',9,14),(95,'Onix','http://www.serebii.net/pokemon/art/095.png','8.79 m','210.0 kg',16,11),(96,'Drowzee','http://www.serebii.net/pokemon/art/096.png','0.99 m','32.4 kg',15,NULL),(97,'Hypno','http://www.serebii.net/pokemon/art/097.png','1.60 m','75.6 kg',15,NULL),(98,'Krabby','http://www.serebii.net/pokemon/art/098.png','0.41 m','6.5 kg',18,NULL),(99,'Kingler','http://www.serebii.net/pokemon/art/099.png','1.30 m','60.0 kg',18,NULL),(100,'Voltorb','http://www.serebii.net/pokemon/art/100.png','0.51 m','10.4 kg',4,NULL),(101,'Electrode','http://www.serebii.net/pokemon/art/101.png','1.19 m','66.6 kg',4,NULL),(102,'Exeggcute','http://www.serebii.net/pokemon/art/102.png','0.41 m','2.5 kg',10,15),(103,'Exeggutor','http://www.serebii.net/pokemon/art/103.png','2.01 m','120.0 kg',10,15),(104,'Cubone','http://www.serebii.net/pokemon/art/104.png','0.41 m','6.5 kg',11,NULL),(105,'Marowak','http://www.serebii.net/pokemon/art/105.png','0.99 m','45.0 kg',11,NULL),(106,'Hitmonlee','http://www.serebii.net/pokemon/art/106.png','1.50 m','49.8 kg',6,NULL),(107,'Hitmonchan','http://www.serebii.net/pokemon/art/107.png','1.40 m','50.2 kg',6,NULL),(108,'Lickitung','http://www.serebii.net/pokemon/art/108.png','1.19 m','65.5 kg',13,NULL),(109,'Koffing','http://www.serebii.net/pokemon/art/109.png','0.61 m','1.0 kg',14,NULL),(110,'Weezing','http://www.serebii.net/pokemon/art/110.png','1.19 m','9.5 kg',14,NULL),(111,'Rhyhorn','http://www.serebii.net/pokemon/art/111.png','0.99 m','115.0 kg',11,16),(112,'Rhydon','http://www.serebii.net/pokemon/art/112.png','1.91 m','120.0 kg',11,16),(113,'Chansey','http://www.serebii.net/pokemon/art/113.png','1.09 m','34.6 kg',13,NULL),(114,'Tangela','http://www.serebii.net/pokemon/art/114.png','0.99 m','35.0 kg',10,NULL),(115,'Kangaskhan','http://www.serebii.net/pokemon/art/115.png','2.21 m','80.0 kg',13,NULL),(116,'Horsea','http://www.serebii.net/pokemon/art/116.png','0.41 m','8.0 kg',18,NULL),(117,'Seadra','http://www.serebii.net/pokemon/art/117.png','1.19 m','25.0 kg',18,NULL),(118,'Goldeen','http://www.serebii.net/pokemon/art/118.png','0.61 m','15.0 kg',18,NULL),(119,'Seaking','http://www.serebii.net/pokemon/art/119.png','1.30 m','39.0 kg',18,NULL),(120,'Staryu','http://www.serebii.net/pokemon/art/120.png','0.79 m','34.5 kg',18,NULL),(121,'Starmie','http://www.serebii.net/pokemon/art/121.png','1.09 m','80.0 kg',18,15),(122,'Mr. Mime','http://www.serebii.net/pokemon/art/122.png','1.30 m','54.5 kg',15,NULL),(123,'Scyther','http://www.serebii.net/pokemon/art/123.png','1.50 m','56.0 kg',1,8),(124,'Jynx','http://www.serebii.net/pokemon/art/124.png','1.40 m','40.6 kg',12,15),(125,'Electabuzz','http://www.serebii.net/pokemon/art/125.png','1.09 m','30.0 kg',4,NULL),(126,'Magmar','http://www.serebii.net/pokemon/art/126.png','1.30 m','44.5 kg',7,NULL),(127,'Pinsir','http://www.serebii.net/pokemon/art/127.png','1.50 m','55.0 kg',1,NULL),(128,'Tauros','http://www.serebii.net/pokemon/art/128.png','1.40 m','88.4 kg',13,NULL),(129,'Magikarp','http://www.serebii.net/pokemon/art/129.png','0.89 m','10.0 kg',18,NULL),(130,'Gyarados','http://www.serebii.net/pokemon/art/130.png','6.50 m','235.0 kg',18,8),(131,'Lapras','http://www.serebii.net/pokemon/art/131.png','2.49 m','220.0 kg',18,12),(132,'Ditto','http://www.serebii.net/pokemon/art/132.png','0.30 m','4.0 kg',13,NULL),(133,'Eevee','http://www.serebii.net/pokemon/art/133.png','0.30 m','6.5 kg',13,NULL),(134,'Vaporeon','http://www.serebii.net/pokemon/art/134.png','0.99 m','29.0 kg',18,NULL),(135,'Jolteon','http://www.serebii.net/pokemon/art/135.png','0.79 m','24.5 kg',4,NULL),(136,'Flareon','http://www.serebii.net/pokemon/art/136.png','0.89 m','25.0 kg',7,NULL),(137,'Porygon','http://www.serebii.net/pokemon/art/137.png','0.79 m','36.5 kg',13,NULL),(138,'Omanyte','http://www.serebii.net/pokemon/art/138.png','0.41 m','7.5 kg',16,18),(139,'Omastar','http://www.serebii.net/pokemon/art/139.png','0.99 m','35.0 kg',16,18),(140,'Kabuto','http://www.serebii.net/pokemon/art/140.png','0.51 m','11.5 kg',16,18),(141,'Kabutops','http://www.serebii.net/pokemon/art/141.png','1.30 m','40.5 kg',16,18),(142,'Aerodactyl','http://www.serebii.net/pokemon/art/142.png','1.80 m','59.0 kg',16,8),(143,'Snorlax','http://www.serebii.net/pokemon/art/143.png','2.11 m','460.0 kg',13,NULL),(144,'Articuno','http://www.serebii.net/pokemon/art/144.png','1.70 m','55.4 kg',12,8),(145,'Zapdos','http://www.serebii.net/pokemon/art/145.png','1.60 m','52.6 kg',4,8),(146,'Moltres','http://www.serebii.net/pokemon/art/146.png','2.01 m','60.0 kg',7,8),(147,'Dratini','http://www.serebii.net/pokemon/art/147.png','1.80 m','3.3 kg',3,NULL),(148,'Dragonair','http://www.serebii.net/pokemon/art/148.png','3.99 m','16.5 kg',3,NULL),(149,'Dragonite','http://www.serebii.net/pokemon/art/149.png','2.21 m','210.0 kg',3,8),(150,'Mewtwo','http://www.serebii.net/pokemon/art/150.png','2.01 m','122.0 kg',15,NULL),(151,'Mew','http://www.serebii.net/pokemon/art/151.png','0.41 m','4.0 kg',15,NULL);
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

-- Dump completed on 2022-05-15 18:16:47
