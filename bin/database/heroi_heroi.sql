CREATE DATABASE  IF NOT EXISTS `heroi` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `heroi`;
-- MySQL dump 10.13  Distrib 5.7.27, for Linux (x86_64)
--
-- Host: localhost    Database: heroi
-- ------------------------------------------------------
-- Server version	5.7.27-0ubuntu0.18.04.1

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
-- Table structure for table `heroi`
--

DROP TABLE IF EXISTS `heroi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `heroi` (
  `id` int(11) NOT NULL,
  `nome` varchar(45) DEFAULT NULL,
  `ataque` decimal(10,0) DEFAULT NULL,
  `defesa` decimal(10,0) DEFAULT NULL,
  `inteligencia` decimal(10,0) DEFAULT NULL,
  `poder` decimal(10,0) DEFAULT NULL,
  `velocidade` decimal(10,0) DEFAULT NULL,
  `forca` decimal(10,0) DEFAULT NULL,
  `vida` decimal(10,0) DEFAULT NULL,
  `imagem` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `heroi`
--

LOCK TABLES `heroi` WRITE;
/*!40000 ALTER TABLE `heroi` DISABLE KEYS */;
INSERT INTO `heroi` VALUES (1,'A-Bomb',64,80,38,24,0,100,10000000,NULL),(2,'Abe Sapien',85,65,88,100,0,28,10000000,NULL),(3,'Abin Sur',65,64,50,99,0,90,10000000,NULL),(4,'Abomination',95,90,63,62,0,80,10000000,NULL),(5,'Abraxas',55,100,88,100,0,63,10000000,NULL),(6,'Absorbing Man',64,100,38,98,0,80,10000000,NULL),(7,'Adam Monroe',64,100,63,100,0,10,10000000,NULL),(8,'Adam Strange',50,40,69,37,0,10,10000000,NULL),(9,'Agent 13',0,0,0,0,0,46,10000000,NULL),(10,'Agent Bob',20,5,10,5,0,8,10000000,NULL),(11,'Agent Zero',95,80,75,72,0,28,10000000,NULL),(12,'Air-Walker',40,85,50,100,0,85,10000000,NULL),(13,'Ajax',55,80,56,34,0,48,10000000,NULL),(14,'Alan Scott',32,90,63,100,0,80,10000000,NULL),(15,'Alex Mercer',50,90,50,100,0,80,10000000,NULL),(16,'Alex Woolsly',0,0,0,0,0,37,10000000,NULL),(17,'Alfred Pennyworth',55,10,63,7,0,10,10000000,NULL),(18,'Alien',60,90,50,57,0,28,10000000,NULL),(19,'Allan Quatermain',0,0,0,0,0,0,10000000,NULL),(20,'Amazo',100,100,63,100,0,100,10000000,NULL),(21,'Ammo',0,0,0,0,0,0,10000000,NULL),(22,'Ando Masahashi',0,0,0,0,0,0,10000000,NULL),(23,'Angel',75,90,75,100,0,30,10000000,NULL),(24,'Angel',42,64,63,28,0,13,10000000,NULL),(25,'Angel Dust',30,42,38,17,0,55,10000000,NULL),(26,'Angel Salvadore',60,28,38,56,0,10,10000000,NULL),(27,'Angela',0,0,0,0,0,97,10000000,NULL),(28,'Animal Man',80,85,56,73,0,48,10000000,NULL),(29,'Annihilus',64,56,75,59,0,80,10000000,NULL),(30,'Ant-Man',32,28,100,32,0,18,10000000,NULL),(31,'Ant-Man II',30,40,75,53,0,18,10000000,NULL),(32,'Anti-Monitor',90,100,88,100,0,100,10000000,NULL),(33,'Anti-Spawn',0,0,0,0,0,58,10000000,NULL),(34,'Anti-Venom',84,90,75,96,0,60,10000000,NULL),(35,'Apocalypse',60,100,100,100,0,100,10000000,NULL),(36,'Aquababy',14,14,10,37,0,16,10000000,NULL),(37,'Aqualad',60,75,63,89,0,44,10000000,NULL),(38,'Aquaman',80,80,81,100,0,85,10000000,NULL),(39,'Arachne',70,70,50,71,0,48,10000000,NULL),(40,'Archangel',42,64,63,35,0,13,10000000,NULL),(41,'Arclight',70,42,38,52,0,63,10000000,NULL),(42,'Ardina',25,80,63,100,0,100,10000000,NULL),(43,'Ares',101,80,75,84,0,82,10000000,NULL),(44,'Ariel',28,14,50,94,0,10,10000000,NULL),(45,'Armor',54,80,50,55,0,63,10000000,NULL),(46,'Arsenal',0,0,0,0,0,54,10000000,NULL),(47,'Astro Boy',0,0,0,0,0,90,10000000,NULL),(48,'Atlas',50,100,63,98,0,80,10000000,NULL),(49,'Atlas',80,100,63,27,0,100,10000000,NULL),(50,'Atom',0,0,0,0,0,0,10000000,NULL),(51,'Atom',0,0,0,0,0,0,10000000,NULL),(52,'Atom Girl',42,28,38,38,0,10,10000000,NULL),(53,'Atom II',60,45,88,40,0,10,10000000,NULL),(54,'Atom III',0,0,0,0,0,0,10000000,NULL),(55,'Atom IV',0,0,0,0,0,0,10000000,NULL),(56,'Aurora',56,60,63,74,0,10,10000000,NULL),(57,'Azazel',80,95,50,100,0,11,10000000,NULL),(58,'Azrael',80,20,63,35,0,18,10000000,NULL),(59,'Aztar',0,0,0,0,0,98,10000000,NULL),(60,'Bane',95,56,88,51,0,38,10000000,NULL),(61,'Banshee',70,40,50,63,0,10,10000000,NULL),(62,'Bantam',56,54,25,21,0,53,10000000,NULL),(63,'Batgirl',90,40,88,34,0,11,10000000,NULL),(64,'Batgirl',0,0,0,0,0,27,10000000,NULL),(65,'Batgirl III',0,0,0,0,0,43,10000000,NULL),(66,'Batgirl IV',100,56,69,46,0,12,10000000,NULL),(67,'Batgirl V',0,0,0,0,0,0,10000000,NULL),(68,'Batgirl VI',80,28,75,22,0,10,10000000,NULL),(69,'Batman',90,55,81,63,0,40,10000000,NULL),(70,'Batman',100,50,100,47,0,26,10000000,NULL),(71,'Batman II',100,28,88,36,0,11,10000000,NULL),(72,'Battlestar',74,74,50,48,0,53,10000000,NULL),(73,'Batwoman V',80,25,81,27,0,8,10000000,NULL),(74,'Beak',0,0,0,0,0,0,10000000,NULL),(75,'Beast',85,60,94,43,0,48,10000000,NULL),(76,'Beast Boy',40,70,50,79,0,28,10000000,NULL),(77,'Beetle',0,0,0,0,0,54,10000000,NULL),(78,'Ben 10',40,10,10,90,0,7,10000000,NULL),(79,'Beta Ray Bill',84,95,63,100,0,80,10000000,NULL),(80,'Beyonder',84,100,100,100,0,100,10000000,NULL),(81,'Big Barda',100,100,88,100,0,100,10000000,NULL),(82,'Big Daddy',64,32,38,22,0,10,10000000,NULL),(83,'Big Man',70,28,75,19,0,12,10000000,NULL),(84,'Bill Harken',40,60,63,27,0,36,10000000,NULL),(85,'Billy Kincaid',0,0,0,0,0,0,10000000,NULL),(86,'Binary',0,0,0,0,0,0,10000000,NULL),(87,'Bionic Woman',40,40,56,20,0,37,10000000,NULL),(88,'Bird-Brain',42,28,25,21,0,10,10000000,NULL),(89,'Bird-Man',0,0,0,0,0,0,10000000,NULL),(90,'Bird-Man II',0,0,0,0,0,0,10000000,NULL),(91,'Birdman',0,0,0,0,0,35,10000000,NULL),(92,'Bishop',65,75,63,100,0,14,10000000,NULL),(93,'Bizarro',85,100,38,100,0,95,10000000,NULL),(94,'Black Abbott',0,0,0,0,0,0,10000000,NULL),(95,'Black Adam',56,100,88,100,0,100,10000000,NULL),(96,'Black Bolt',56,84,75,100,0,67,10000000,NULL),(97,'Black Canary',80,20,63,52,0,8,10000000,NULL),(98,'Black Canary',80,15,63,45,0,8,10000000,NULL),(99,'Black Cat',70,10,75,23,0,16,10000000,NULL),(100,'Black Flash',30,80,44,100,0,10,10000000,NULL),(101,'Black Goliath',0,0,0,0,0,0,10000000,NULL),(102,'Black Knight III',70,70,63,43,0,10,10000000,NULL),(103,'Black Lightning',75,28,50,70,0,11,10000000,NULL),(104,'Black Mamba',65,42,75,88,0,10,10000000,NULL),(105,'Black Manta',85,60,75,76,0,28,10000000,NULL),(106,'Black Panther',100,60,88,41,0,16,10000000,NULL),(107,'Black Widow',100,30,75,36,0,13,10000000,NULL),(108,'Black Widow II',0,0,0,0,0,48,10000000,NULL),(109,'Blackout',65,80,63,45,0,32,10000000,NULL),(110,'Blackwing',56,32,38,20,0,10,10000000,NULL),(111,'Blackwulf',25,30,50,69,0,28,10000000,NULL),(112,'Blade',90,50,63,40,0,28,10000000,NULL),(113,'Blaquesmith',0,0,0,0,0,0,10000000,NULL),(114,'Bling!',28,90,69,52,0,14,10000000,NULL),(115,'Blink',64,28,50,77,0,8,10000000,NULL),(116,'Blizzard',0,0,0,0,0,0,10000000,NULL),(117,'Blizzard',0,0,0,0,0,72,10000000,NULL),(118,'Blizzard II',56,42,38,47,0,10,10000000,NULL),(119,'Blob',72,95,10,28,0,83,10000000,NULL),(120,'Bloodaxe',84,80,63,100,0,80,10000000,NULL),(121,'Bloodhawk',64,80,50,80,0,10,10000000,NULL),(122,'Bloodwraith',0,0,0,0,0,72,10000000,NULL),(123,'Blue Beetle',0,0,0,0,0,0,10000000,NULL),(124,'Blue Beetle',0,0,0,0,0,0,10000000,NULL),(125,'Blue Beetle II',0,0,0,0,0,45,10000000,NULL),(126,'Blue Beetle III',30,80,50,100,0,34,10000000,NULL),(127,'Boba Fett',70,36,63,68,0,10,10000000,NULL),(128,'Bolt',0,0,0,0,0,0,10000000,NULL),(129,'Bomb Queen',0,0,0,0,0,73,10000000,NULL),(130,'Boom-Boom',64,42,38,57,0,10,10000000,NULL),(131,'Boomer',0,0,0,0,0,0,10000000,NULL),(132,'Booster Gold',40,70,69,100,0,85,10000000,NULL),(133,'Box',0,0,0,0,0,0,10000000,NULL),(134,'Box III',0,0,0,0,0,0,10000000,NULL),(135,'Box IV',56,28,50,11,0,75,10000000,NULL),(136,'Brainiac',75,90,100,60,0,95,10000000,NULL),(137,'Brainiac 5',32,28,100,60,0,10,10000000,NULL),(138,'Brother Voodoo',0,0,0,0,0,65,10000000,NULL),(139,'Brundlefly',15,40,69,27,0,32,10000000,NULL),(140,'Buffy',60,70,63,48,0,28,10000000,NULL),(141,'Bullseye',70,70,50,20,0,11,10000000,NULL),(142,'Bumblebee',35,10,63,47,0,28,10000000,NULL),(143,'Bumbleboy',0,0,0,0,0,0,10000000,NULL),(144,'Bushido',70,10,38,19,0,10,10000000,NULL),(145,'Cable',80,56,88,100,0,48,10000000,NULL),(146,'Callisto',85,42,63,52,0,53,10000000,NULL),(147,'Cameron Hicks',70,28,50,51,0,10,10000000,NULL),(148,'Cannonball',56,99,50,94,0,28,10000000,NULL),(149,'Captain America',100,55,69,60,0,19,10000000,NULL),(150,'Captain Atom',80,90,81,100,0,93,10000000,NULL),(151,'Captain Britain',80,60,75,31,0,77,10000000,NULL),(152,'Captain Cold',20,20,50,28,0,10,10000000,NULL),(153,'Captain Epic',0,0,0,0,0,0,10000000,NULL),(154,'Captain Hindsight',20,30,25,10,0,10,10000000,NULL),(155,'Captain Mar-vell',0,0,0,0,0,80,10000000,NULL),(156,'Captain Marvel',75,95,88,100,0,100,10000000,NULL),(157,'Captain Marvel',90,95,84,100,0,88,10000000,NULL),(158,'Captain Marvel II',56,90,75,34,0,81,10000000,NULL),(159,'Captain Midnight',0,0,0,0,0,0,10000000,NULL),(160,'Captain Planet',60,80,50,100,0,88,10000000,NULL),(161,'Captain Universe',0,0,0,0,0,92,10000000,NULL),(162,'Carnage',90,84,63,88,0,63,10000000,NULL),(163,'Cat',0,0,0,0,0,90,10000000,NULL),(164,'Cat II',0,0,0,0,0,0,10000000,NULL),(165,'Catwoman',85,28,69,27,0,11,10000000,NULL),(166,'Cecilia Reyes',0,0,0,0,0,0,10000000,NULL),(167,'Century',100,64,88,100,0,80,10000000,NULL),(168,'Cerebra',0,0,0,0,0,57,10000000,NULL),(169,'Chamber',64,80,50,57,0,10,10000000,NULL),(170,'Chameleon',28,28,88,28,0,10,10000000,NULL),(171,'Changeling',64,42,63,64,0,10,10000000,NULL),(172,'Cheetah',70,20,38,32,0,8,10000000,NULL),(173,'Cheetah II',60,20,38,39,0,20,10000000,NULL),(174,'Cheetah III',95,80,88,78,0,100,10000000,NULL),(175,'Chromos',0,0,0,0,0,0,10000000,NULL),(176,'Chuck Norris',99,56,50,42,0,80,10000000,NULL),(177,'Citizen Steel',60,100,50,23,0,95,10000000,NULL),(178,'Claire Bennet',28,100,38,90,0,9,10000000,NULL),(179,'Clea',0,0,0,0,0,39,10000000,NULL),(180,'Cloak',56,64,63,100,0,10,10000000,NULL),(181,'Clock King',40,10,75,7,0,10,10000000,NULL),(182,'Cogliostro',0,0,0,0,0,0,10000000,NULL),(183,'Colin Wagner',0,0,0,0,0,0,10000000,NULL),(184,'Colossal Boy',0,0,0,0,0,0,10000000,NULL),(185,'Colossus',80,100,63,45,0,83,10000000,NULL),(186,'Copycat',60,25,56,54,0,10,10000000,NULL),(187,'Corsair',0,0,0,0,0,16,10000000,NULL),(188,'Cottonmouth',25,10,50,27,0,10,10000000,NULL),(189,'Crimson Crusader',0,0,0,0,0,58,10000000,NULL),(190,'Crimson Dynamo',0,0,0,0,0,65,10000000,NULL),(191,'Crystal',56,14,63,61,0,16,10000000,NULL),(192,'Curse',0,0,0,0,0,0,10000000,NULL),(193,'Cy-Gor',0,0,0,0,0,96,10000000,NULL),(194,'Cyborg',64,85,75,71,0,53,10000000,NULL),(195,'Cyborg Superman',80,100,75,100,0,93,10000000,NULL),(196,'Cyclops',80,42,75,76,0,10,10000000,NULL),(197,'Cypher',0,0,0,0,0,44,10000000,NULL),(198,'Dagger',70,42,63,52,0,10,10000000,NULL),(199,'Danny Cooper',0,0,0,0,0,0,10000000,NULL),(200,'Daphne Powell',10,10,38,56,0,10,10000000,NULL),(201,'Daredevil',100,35,75,61,0,13,10000000,NULL),(202,'Darkhawk',64,70,50,74,0,32,10000000,NULL),(203,'Darkman',28,85,75,12,0,14,10000000,NULL),(204,'Darkseid',95,100,88,100,0,100,10000000,NULL),(205,'Darkside',0,0,0,0,0,0,10000000,NULL),(206,'Darkstar',64,42,38,79,0,8,10000000,NULL),(207,'Darth Maul',100,30,56,100,0,48,10000000,NULL),(208,'Darth Vader',100,35,69,100,0,48,10000000,NULL),(209,'Dash',30,60,25,20,0,12,10000000,NULL),(210,'Data',50,40,100,56,0,32,10000000,NULL),(211,'Dazzler',55,60,63,100,0,10,10000000,NULL),(212,'Deadman',42,100,50,100,0,10,10000000,NULL),(213,'Deadpool',100,100,69,100,0,32,10000000,NULL),(214,'Deadshot',80,28,50,55,0,10,10000000,NULL),(215,'Deathlok',60,70,69,40,0,32,10000000,NULL),(216,'Deathstroke',90,100,75,47,0,30,10000000,NULL),(217,'Demogoblin',60,35,50,67,0,48,10000000,NULL),(218,'Destroyer',70,98,50,85,0,95,10000000,NULL),(219,'Diamondback',60,28,44,45,0,16,10000000,NULL),(220,'DL Hawkins',56,56,50,48,0,12,10000000,NULL),(221,'Doc Samson',70,80,75,36,0,80,10000000,NULL),(222,'Doctor Doom',84,100,100,100,0,32,10000000,NULL),(223,'Doctor Doom II',0,0,0,0,0,0,10000000,NULL),(224,'Doctor Fate',50,80,81,100,0,16,10000000,NULL),(225,'Doctor Octopus',65,40,94,53,0,48,10000000,NULL),(226,'Doctor Strange',60,84,100,100,0,10,10000000,NULL),(227,'Domino',74,28,63,49,0,10,10000000,NULL),(228,'Donatello',75,60,88,58,0,14,10000000,NULL),(229,'Donna Troy',0,0,0,0,0,89,10000000,NULL),(230,'Doomsday',90,100,75,100,0,100,10000000,NULL),(231,'Doppelganger',84,95,8,69,0,63,10000000,NULL),(232,'Dormammu',80,100,88,100,0,95,10000000,NULL),(233,'Dr Manhattan',42,100,88,100,0,100,10000000,NULL),(234,'Drax the Destroyer',65,85,56,46,0,80,10000000,NULL),(235,'Ego',28,99,88,71,0,80,10000000,NULL),(236,'Elastigirl',70,95,63,52,0,32,10000000,NULL),(237,'Electro',64,56,69,67,0,10,10000000,NULL),(238,'Elektra',100,28,63,59,0,11,10000000,NULL),(239,'Elle Bishop',42,42,50,63,0,8,10000000,NULL),(240,'Elongated Man',40,90,75,44,0,10,10000000,NULL),(241,'Emma Frost',42,90,75,100,0,63,10000000,NULL),(242,'Enchantress',40,60,63,100,0,14,10000000,NULL),(243,'Energy',0,0,0,0,0,0,10000000,NULL),(244,'ERG-1',0,0,0,0,0,0,10000000,NULL),(245,'Ethan Hunt',95,30,75,26,0,11,10000000,NULL),(246,'Etrigan',50,100,50,100,0,85,10000000,NULL),(247,'Evil Deadpool',100,100,69,100,0,32,10000000,NULL),(248,'Evilhawk',64,70,50,85,0,32,10000000,NULL),(249,'Exodus',70,28,63,100,0,81,10000000,NULL);
/*!40000 ALTER TABLE `heroi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-10-14 15:41:48
