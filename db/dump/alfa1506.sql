-- MySQL dump 10.13  Distrib 5.1.61, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: alfa
-- ------------------------------------------------------
-- Server version	5.1.61-0+squeeze1

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
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Presidente Kennedy','2012-02-10 16:43:36','2012-02-10 16:43:36'),(2,'São Francisco de Itabapoana','2012-02-10 16:43:36','2012-02-10 16:43:36');
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_users`
--

DROP TABLE IF EXISTS `cities_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_users` (
  `city_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_users`
--

LOCK TABLES `cities_users` WRITE;
/*!40000 ALTER TABLE `cities_users` DISABLE KEYS */;
INSERT INTO `cities_users` VALUES (2,2,'2012-02-10 17:58:12','2012-02-10 17:58:12'),(1,3,'2012-02-14 19:24:01','2012-02-14 19:24:01'),(2,4,'2012-02-14 19:27:53','2012-02-14 19:27:53'),(2,5,'2012-02-14 19:32:20','2012-02-14 19:32:20'),(2,6,'2012-02-14 19:33:53','2012-02-14 19:33:53'),(2,7,'2012-02-14 19:35:56','2012-02-14 19:35:56'),(2,8,'2012-02-14 19:36:45','2012-02-14 19:36:45'),(2,9,'2012-02-14 19:38:31','2012-02-14 19:38:31'),(2,10,'2012-02-14 19:39:27','2012-02-14 19:39:27'),(2,11,'2012-02-14 19:40:10','2012-02-14 19:40:10'),(2,12,'2012-02-14 19:41:12','2012-02-14 19:41:12'),(2,13,'2012-02-14 19:42:00','2012-02-14 19:42:00'),(2,14,'2012-02-14 19:43:23','2012-02-14 19:43:23'),(2,15,'2012-03-21 18:38:24','2012-03-21 18:38:24');
/*!40000 ALTER TABLE `cities_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinators`
--

DROP TABLE IF EXISTS `coordinators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date_to_students` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ethnicity` int(11) DEFAULT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civil_status` int(11) DEFAULT NULL,
  `rg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professional_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professional_serie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_or_marriage_certificate_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sons_number` int(11) DEFAULT NULL,
  `first_son_age` int(11) DEFAULT NULL,
  `second_son_age` int(11) DEFAULT NULL,
  `third_son_age` int(11) DEFAULT NULL,
  `forth_son_age` int(11) DEFAULT NULL,
  `education_level` int(11) DEFAULT NULL,
  `education_level_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `familiar_income` int(11) DEFAULT NULL,
  `house` int(11) DEFAULT NULL,
  `house_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_type` int(11) DEFAULT NULL,
  `special_need` tinyint(1) DEFAULT NULL,
  `political_affiliation` int(11) DEFAULT NULL,
  `political_party` int(11) DEFAULT NULL,
  `political_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `religion_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `association` int(11) DEFAULT NULL,
  `association_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cooperative` int(11) DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinators`
--

LOCK TABLES `coordinators` WRITE;
/*!40000 ALTER TABLE `coordinators` DISABLE KEYS */;
INSERT INTO `coordinators` VALUES (1,'Géssica Fontana Costalonga','2011-09-05',NULL,1,'1988-05-11',0,'Itapemirim','Espirito Santo',0,'',1,'2.247.956-ES','124.458.477-02','0298 5440 1473','','','4734','',0,NULL,NULL,NULL,NULL,3,'Psicóloga',NULL,0,'',0,0,3,2,NULL,0,'',0,'',0,16,'2012-01-19 14:22:13','2012-01-19 18:12:27'),(2,'Fabiula Peçanha da Silva','2012-01-19',NULL,1,'2012-01-19',0,'','',0,'',0,'','','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,0,'',0,NULL,0,0,NULL,0,'',0,'',0,17,'2012-01-19 14:36:21','2012-01-19 14:36:21'),(3,'Soraia Teixeira','2011-04-04',NULL,1,'1946-11-07',3,'São Francisco de Itabapoana','RJ',0,'Rua Reinandim Mendes de Oliveira, 12 - Centro, São Francisco de Itabapoana',3,'090441049','','','','','','',2,19,14,NULL,NULL,3,'ADM',NULL,1,'',0,0,0,0,NULL,1,'',0,'',0,49,'2012-02-06 13:57:42','2012-02-24 23:47:55');
/*!40000 ALTER TABLE `coordinators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinators_education_exps`
--

DROP TABLE IF EXISTS `coordinators_education_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinators_education_exps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `years` int(11) DEFAULT NULL,
  `popular_education_years` int(11) DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `education_exp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinators_education_exps`
--

LOCK TABLES `coordinators_education_exps` WRITE;
/*!40000 ALTER TABLE `coordinators_education_exps` DISABLE KEYS */;
/*!40000 ALTER TABLE `coordinators_education_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinators_professional_exps`
--

DROP TABLE IF EXISTS `coordinators_professional_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinators_professional_exps` (
  `coordinator_id` int(11) DEFAULT NULL,
  `professional_exp_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinators_professional_exps`
--

LOCK TABLES `coordinators_professional_exps` WRITE;
/*!40000 ALTER TABLE `coordinators_professional_exps` DISABLE KEYS */;
INSERT INTO `coordinators_professional_exps` VALUES (1,4,'2012-01-19 16:00:48','2012-01-19 16:00:48'),(3,4,'2012-02-06 13:57:42','2012-02-06 13:57:42');
/*!40000 ALTER TABLE `coordinators_professional_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coordinators_rooms`
--

DROP TABLE IF EXISTS `coordinators_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coordinators_rooms` (
  `coordinator_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coordinators_rooms`
--

LOCK TABLES `coordinators_rooms` WRITE;
/*!40000 ALTER TABLE `coordinators_rooms` DISABLE KEYS */;
INSERT INTO `coordinators_rooms` VALUES (1,1,'2012-01-19 14:24:37','2012-01-19 14:24:37'),(2,3,'2012-01-19 14:37:42','2012-01-19 14:37:42'),(1,4,'2012-01-19 18:01:04','2012-01-19 18:01:04'),(1,2,'2012-01-19 18:01:25','2012-01-19 18:01:25'),(1,5,'2012-01-19 18:01:46','2012-01-19 18:01:46'),(1,6,'2012-01-19 18:02:11','2012-01-19 18:02:11'),(1,7,'2012-01-19 18:02:35','2012-01-19 18:02:35'),(1,8,'2012-01-19 18:02:53','2012-01-19 18:02:53'),(1,9,'2012-01-19 18:03:13','2012-01-19 18:03:13'),(1,10,'2012-01-19 18:03:34','2012-01-19 18:03:34'),(1,11,'2012-01-19 18:03:55','2012-01-19 18:03:55'),(1,12,'2012-01-19 18:04:14','2012-01-19 18:04:14'),(1,13,'2012-01-19 18:04:39','2012-01-19 18:04:39'),(1,14,'2012-01-19 18:05:11','2012-01-19 18:05:11'),(1,15,'2012-01-19 18:05:33','2012-01-19 18:05:33'),(2,16,'2012-01-24 14:11:39','2012-01-24 14:11:39'),(2,24,'2012-01-24 14:18:40','2012-01-24 14:18:40'),(2,25,'2012-01-24 14:19:13','2012-01-24 14:19:13'),(2,26,'2012-01-24 14:19:56','2012-01-24 14:19:56'),(2,27,'2012-01-24 14:20:23','2012-01-24 14:20:23'),(2,28,'2012-01-24 14:20:46','2012-01-24 14:20:46'),(2,29,'2012-01-24 14:27:10','2012-01-24 14:27:10'),(2,19,'2012-01-24 14:29:12','2012-01-24 14:29:12'),(2,20,'2012-01-24 14:29:26','2012-01-24 14:29:26'),(2,21,'2012-01-24 14:29:38','2012-01-24 14:29:38'),(2,22,'2012-01-24 14:29:52','2012-01-24 14:29:52'),(2,23,'2012-01-24 14:30:08','2012-01-24 14:30:08'),(3,35,'2012-02-06 15:03:16','2012-02-06 15:03:16'),(3,30,'2012-02-08 17:36:05','2012-02-08 17:36:05'),(3,38,'2012-02-08 17:54:33','2012-02-08 17:54:33'),(3,44,'2012-02-09 13:34:30','2012-02-09 13:34:30'),(1,50,'2012-06-15 18:46:16','2012-06-15 18:46:16');
/*!40000 ALTER TABLE `coordinators_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores`
--

DROP TABLE IF EXISTS `cores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `city` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `community` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `community_type` int(11) DEFAULT NULL,
  `place` int(11) DEFAULT NULL,
  `place_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `institution_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `responsible` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `main_activity` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `board` tinyint(1) DEFAULT NULL,
  `board_type` int(11) DEFAULT NULL,
  `total_seats` int(11) DEFAULT NULL,
  `illumination_type` int(11) DEFAULT NULL,
  `illumination_type_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `illumination_condition` int(11) DEFAULT NULL,
  `another_place` tinyint(1) DEFAULT NULL,
  `another_place_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `bathroom` tinyint(1) DEFAULT NULL,
  `kitchen` tinyint(1) DEFAULT NULL,
  `coordenation_analysis` text COLLATE utf8_unicode_ci,
  `visit_on` date DEFAULT NULL,
  `who_visited` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores`
--

LOCK TABLES `cores` WRITE;
/*!40000 ALTER TABLE `cores` DISABLE KEYS */;
INSERT INTO `cores` VALUES (1,'São Francisco de Itabapoana','Lagoa Feia','Estrada Lagoa Feia , s/n, Assentamento Tipity, Travessão de Barra, São Francisco de Itabapoana/ RJ   ',0,6,'Residência','','','','',1,0,0,0,0,'',1,1,'cozinha, sala, banheiro ',1,1,'','2011-06-22','','2011-06-22 12:44:31','2012-02-10 16:58:38',2,NULL),(2,'São Francisco de Itabapoana','Lagoa Feia','Estrada Lagoa Feia , s/n, Assentamento Tipity, Travessão de Barra, São Francisco de Itabapoana/ RJ',0,6,'Residência','','','','',1,0,0,0,0,'',1,1,'cozinha, sala, banheiro',1,1,'','2011-06-22','','2011-06-22 13:04:33','2012-02-10 16:58:38',2,NULL),(6,'São Francisco de Itabapoana','Vilão','Rua projetada c,snº cep 28230.000',1,6,'Residência','Residência','Angela marcia s.sinflorio santos','ANGELAMARCIA22@GMAIL.COM','',1,0,0,0,0,'',0,0,'BANHEIRO E COZINHA',1,1,'','2011-06-22','','2011-06-22 14:18:18','2012-02-10 16:58:38',2,NULL),(7,'São Francisco de Itabapoana','Nova Belém','Estrada Nova Belém',1,1,'','Igreja Batista de Nova Belém','Alexandre Silva dos Santos','','Igreja',2,0,0,1,0,'',0,1,'salas',1,1,'','2011-06-22','','2011-06-22 14:25:14','2012-02-10 16:58:38',2,NULL),(8,'São Francisco de Itabapoana','Nova Belém','Estrada Nova Belém',1,1,'','Congregação Batista de Nova Belém','Alexandre Silva dos Santos','','Cultos',0,0,0,0,0,'',0,1,'banheiro',1,0,'','2011-06-22','','2011-06-22 14:49:23','2012-02-10 16:58:38',2,NULL),(9,'São Francisco de Itabapoana','Ponto de Cacimbas ','Rodovia Simão Mansur, nº 135 , RJ ',2,4,'','Igreja Batista de Ponto de Cacimba','Mário Alves da Cruz','marioalvesdacruz@yahoo.com.br','Igreja',1,0,0,1,0,'',0,0,'',1,1,'','2011-06-22','','2011-06-22 15:11:47','2012-02-16 12:46:57',2,NULL),(10,'São Francisco de Itabapoana','Ponto de Cacimbas','Rodovia Simão Hansur, nº 135 , RJ',2,4,'','Igreja Batista de Ponto de Cacimba','Mário Alves da Cruz','','Igreja',1,0,0,1,0,'',0,1,'',1,1,'','2011-06-22','','2011-06-22 15:18:56','2012-02-10 16:58:38',2,NULL),(12,'São Francisco de Itabapoana','Deserto Feliz','RJ 204 Oásis - Deserto Feliz - Sitio Oásis -',1,6,'casa cedida','casa cedida','Juliana Lemos','ju-lemos2011@htmail.com','casa',0,0,0,1,0,'',1,0,'',0,0,'','2011-06-01','','2011-06-22 15:34:59','2012-02-16 12:09:06',2,NULL),(15,'Presidente Kennedy','Cacimbinha','Zona Rural,Cacimbinha,Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,0,0,'',0,0,'',NULL,NULL,'','2012-01-09','','2012-01-09 16:37:17','2012-02-10 17:00:29',1,NULL),(16,'Presidente Kennedy','Santo Eduardo','Zona Rural',1,6,'Escola','','','','Escola',0,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 14:20:26','2012-02-10 17:00:29',1,NULL),(17,'Presidente Kennedy','Santa Fé','Zona Rural, Santa Fé, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-19','','2012-01-19 14:34:15','2012-02-10 17:00:29',1,NULL),(18,'Presidente Kennedy','Jibóia (Cantinho do Céu)','Zona Rural,Jiboia Presidente Kennedy',1,6,'Residência','Secretaria Municipal de Educação','','','',0,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-19','','2012-01-19 14:39:10','2012-02-10 17:00:30',1,NULL),(19,'Presidente Kennedy','Santana Feliz','Zona Rural,Santana Feliz, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,1,0,'',0,0,'Uma sala',NULL,NULL,'','2012-01-19','','2012-01-19 14:40:36','2012-02-10 17:00:30',1,NULL),(20,'Presidente Kennedy','Boa Esperança - Jibóia','Zona Rural, Boa Esperança, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',1,0,0,1,0,'',0,0,'Saa na casa de uma aluna em Areinha',NULL,NULL,'','2012-01-19','','2012-01-19 14:41:36','2012-02-10 17:00:30',1,NULL),(21,'Presidente Kennedy','São Bento','Zona Rural',1,6,'Escola','','','','',0,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:05:45','2012-02-10 17:00:30',1,NULL),(22,'Presidente Kennedy','Jaqueira','Zona Rural',1,6,'Escola','','','','Escola',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:18:59','2012-02-10 17:00:30',1,NULL),(23,'Presidente Kennedy','Jaqueira','Zona Rural',1,6,'Escola','','','','Escola',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:22:31','2012-02-10 17:00:30',1,NULL),(24,'Presidente Kennedy','Jaqueira','Zona Rural',1,6,'Escola','','','','Escola',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:24:26','2012-02-10 17:00:30',1,NULL),(25,'Presidente Kennedy','Leonel','Zona Rural',1,6,'Escola','Escola Unidocente de Leonel','','','Escola',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:26:55','2012-02-10 17:00:30',1,NULL),(26,'Presidente Kennedy','Presidente Kennedy','Zona Rural',1,6,'Escola','Escola Vilmo Ornelas Sarlo','','','Escola',1,0,0,0,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:29:49','2012-02-10 17:00:30',1,NULL),(27,'Presidente Kennedy','Presidente Kennedy','Zona Rural',2,6,'Escola','Escola Vilmo Ornelas Sarlo','Dalva','','Escola',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:31:56','2012-02-10 17:00:30',1,NULL),(28,'Presidente Kennedy','Presidente Kennedy','Zona Rural',2,6,'Escola','Escola Vilmo Ornelas Sarlo','Dalva','','',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:33:47','2012-02-10 17:00:30',1,NULL),(29,'Presidente Kennedy','Galos','Zona Rural',1,6,'Escola','Escola Unidocente Galos','','','',1,0,0,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:35:41','2012-02-10 17:00:30',1,NULL),(30,'Presidente Kennedy','Monte Belo','Zona Rural',1,1,'','Igreja Católica Nossa Senhora da Penha','','','Igreja',0,0,1,0,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:38:01','2012-02-10 17:00:30',1,NULL),(31,'Presidente Kennedy','Pernambuco','Zona Rural',1,0,'','Movimento Sem Terra','','','',0,0,1,1,0,'',0,0,'Patio',NULL,NULL,'','2012-01-19','','2012-01-19 16:40:25','2012-02-10 17:00:30',1,NULL),(32,'Presidente Kennedy','São Paulo','Zona Rural',1,6,'Ginásio de esportes','Ginásio Poliesportivo de São Paulo','','','Esportes e eventos em geral.',2,0,1,1,0,'',1,0,'',NULL,NULL,'','2012-01-19','','2012-01-19 16:43:04','2012-02-10 17:00:30',1,NULL),(33,'Presidente Kennedy','Santa Lúcia','Zona Rural',1,6,'Escola','Escola Unidocente de Santa Lúcia','','','',1,0,0,1,0,'',0,NULL,'',NULL,NULL,'','2012-01-19','','2012-01-19 16:44:57','2012-02-10 17:00:30',1,NULL),(34,'Presidente Kennedy','Mineirinho','Zona Rural, Mineirinho, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,0,0,'',0,0,'Outra sala na mesma escola',NULL,NULL,'','2012-01-24','','2012-01-24 12:30:16','2012-02-10 17:00:30',1,NULL),(35,'Presidente Kennedy','Gromogol','Zona Rural, Gromogol, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:31:30','2012-02-10 17:00:30',1,NULL),(36,'Presidente Kennedy','Santana Feliz','Zona Rural,Santana Feliz, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','',0,NULL,0,0,0,'',0,NULL,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:38:06','2012-02-10 17:00:31',1,NULL),(37,'Presidente Kennedy','São Salvador','Zona Rural,São Salvador, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',1,0,0,1,0,'',0,0,'Outras salas na escola e salão de Igreja',NULL,NULL,'','2012-01-24','','2012-01-24 12:39:06','2012-02-10 17:00:31',1,NULL),(38,'Presidente Kennedy','Praia de Marobá','Zona Rural, Praia de marobá, Presidente Kennedy',0,6,'Escola','Secretaria Municipal de Educação','','','',1,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:40:05','2012-02-10 17:00:31',1,NULL),(39,'Presidente Kennedy','Boa Esperança - Jiboia','Zona Rural,Jiboia Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',1,0,0,1,0,'',0,0,'Salão Igreja Metodista',NULL,NULL,'','2012-01-24','','2012-01-24 12:41:12','2012-02-10 17:00:31',1,NULL),(40,'Presidente Kennedy','Boa Esperança - Jiboia','Zona Rural,Jiboia Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',0,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:41:58','2012-02-10 17:00:31',1,NULL),(41,'Presidente Kennedy','Jiboia (Cantinho do Céu)','Zona Rural,Jiboia, Presidente Kennedy',1,6,'Residência','Secretaria Municipal de Educação','','','',0,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:43:32','2012-02-10 17:00:31',1,NULL),(42,'Presidente Kennedy','Boa Esperança - Jiboia','Zona Rural,Boa Esperança, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',1,0,0,0,0,'',0,NULL,'',NULL,NULL,'','2012-01-24','','2012-01-24 12:44:13','2012-02-10 17:00:31',1,NULL),(43,'Presidente Kennedy','São Salvador','Zona Rural,São Salvador, Presidente Kennedy',1,6,'Escola','Secretaria Municipal de Educação','','','Escola',1,0,0,1,0,'',0,NULL,'',NULL,NULL,'','2012-01-24','','2012-01-24 14:23:14','2012-02-10 17:00:31',1,NULL),(44,'São Francisco de Itabapoana','Barra de Itabapoana (1ª Igreja e Capatazia)','Rua Nova nº 55- Barra de Itabapoana',0,4,'','Barra de Itabapoana (1ª  Igreja e Capatazia)','Délio Câmara','','Igreja',0,0,0,1,0,'',0,1,'Cozinha e banheiro',NULL,NULL,'','2012-02-06','','2012-02-06 14:32:30','2012-02-16 12:25:45',2,NULL),(45,'São Francisco de Itabapoana','Guaxindiba','Av. Campista  Nº 40       ',0,6,'Ponto Comercial','Ponto Comercial','Mônica Pereira dos Santos','hanuchath@.hotmail.com','',1,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-02-06','','2012-02-06 14:35:26','2012-02-10 16:58:40',2,NULL),(46,'São francisco de itabapoana','Morro Alegre ','',0,1,'','Igreja Batista de Morro Alegre','Zelita cerqueira v dela cruz','','',0,0,0,0,0,'',0,1,'BANHEIRO E COZINHA',NULL,NULL,'','2012-02-06','','2012-02-06 14:37:06','2012-02-16 12:06:29',2,NULL),(48,'São Francisco de Itabapoana','Gargaú','Rua Maximiliano Afonso de Andrade   Número (25)',0,1,'','Igreja Assembléia de Deus Ministério de Madureira','Jesuel Ventura Barreto','98677677','Igreja',0,0,0,0,0,'',0,0,'Pátio,cozinha',NULL,NULL,'','2012-02-06','','2012-02-06 16:23:00','2012-02-10 16:58:40',2,NULL),(49,'são francisco de itabapoana','Vilão','Rua projetada c  -  snº cep 28230.000',1,6,'residência','Residência','Angela Marcia S.Sinflorio Santos','ANGELAMARCIA22@GMAIL.COM','',1,0,0,0,0,'',0,1,'BANHEIRO E COZINHA',NULL,NULL,'','2012-02-06','','2012-02-06 16:54:02','2012-02-16 12:43:09',2,NULL),(53,'São Francisco de Itabapoana','   Ladeira das Pedras ','Rua Projetada A, Nº 48',1,4,'','Igreja Batista em Ladeira das Pedras','Pastor Alcindo Pereira Henriques','','',0,0,1,1,0,'',0,1,'Banheiro e cozinha',NULL,NULL,'','2012-02-08','','2012-02-08 17:37:23','2012-02-16 12:17:42',2,NULL),(54,'São francisco de itabapoana','Ponto de Cacimbas','Rodovia Simão mansur n°135 -RJ, São Francisco de Itabapoana Cep:28230.000',2,4,'','Igreja Batista de Ponto de Cacimbas','Mario Alves da Cruz','marioalvesdacruz.@yahoo.com.br','Igreja',1,0,0,1,0,'',0,0,'',NULL,NULL,'','2012-02-08','','2012-02-08 17:38:46','2012-02-10 16:58:40',2,NULL),(56,'São Francisco de Itabapoana','Ladeira das Pedras','Rua Projetada A, Nº 48',1,4,'','Igreja Batista em Ladeira das Pedras','Pastor Alcindo Pereira Henriques','','',0,0,1,1,0,'',0,1,'Banheiro e Cozinha',NULL,NULL,'','2012-02-08','','2012-02-08 17:40:35','2012-02-16 12:18:12',2,NULL),(60,'São Francisco deIitabapoana','São Francisco de Itabapoana','R:Zenita Pinheiro de Brito s/nº',2,1,'','Igreja Batista Luz de Betel','Pastor Wilson Cardoso de Brito ','','',0,0,0,0,0,'',0,0,'',NULL,NULL,'','2012-02-08','','2012-02-08 17:53:05','2012-02-10 16:58:40',2,NULL),(61,'São Francisco de Itabapoana','Barra de Itabapoana (capatazia)','Rua da Praia n13, Barra de Itabapoana',0,0,'','Capatazia de Pescadores da Colonia z-1','Nurieves Minguta dos S. Pessanha','nurieve@yahoo.com.br','atendimento dos pescadores locais no caso de dúvidas, informações, avisos e cadastramentos relativos a profissão.',0,0,0,0,0,'',1,0,'varanda',NULL,NULL,'','2012-02-08','','2012-02-08 17:53:10','2012-02-10 16:58:40',2,NULL),(62,'São Francisco de Itabapoana','Barra de Itabapoana(Curumim)','Rua Antônio da Silva Ferreira N°55 -Barra de Itabapoana(Ingá), Cep:28230.000',0,6,'Curumim','Curumim de Barra de Itabapoana','Fátima Ornelas (diretora Roberta)','rosianefernandesdesouza@gmail.com','',0,0,0,1,0,'',0,1,'Cozinha e banheiro',NULL,NULL,'','2012-02-09','','2012-02-09 12:19:08','2012-02-16 12:15:17',2,NULL),(64,'São Francisco de Itabapoana','Buena','Rua Boa Esperança n259',1,6,'casa cedida','minha residência','Valéria Cristina Conceição da Penha Pereira','valériaccpp@yahoo.com.br','morada (residência)',0,NULL,0,0,0,'',0,NULL,'',NULL,NULL,'','2012-02-09','','2012-02-09 13:32:30','2012-02-10 16:58:40',2,NULL),(65,'São francisco de itabapoana','Manguinhos','Avenida Beira Mar Manguinhos',1,6,'Casa','Residência','Luiz Cesar de Azevedo  Werneck','','Residência',1,0,0,0,0,'',1,0,'Sala,banheiro e cozinha',NULL,NULL,'','2012-02-09','','2012-02-09 14:08:41','2012-02-10 16:58:40',2,NULL),(66,'São Francisco de Itabapoana','Barrinha','Estrada  Campos -Barra -Barrinha, São Francisco de Itabapoana Cep:28230.00',1,6,'Bar','Bar da prima Veroka','Vera Lucia  Dias Camargo de Souza','','Bar',2,0,0,0,0,'',1,0,'Cozinha e banheiro',NULL,NULL,'','2012-02-09','','2012-02-09 14:21:05','2012-02-10 16:58:40',2,NULL),(67,'São Francisco de itabapoana','Praça João Pessoa -  Natanny','Rua Waldemar Xavier Nunes  -  Nº 3',2,6,'Residência','Residência','Natanny  Ribeiro Henriques','','',1,0,0,0,0,'',0,0,'Varanda',NULL,NULL,'','2012-02-09','','2012-02-09 14:35:27','2012-02-10 16:58:41',2,NULL),(68,'São Francisco de Itabapoana','Praça João Pessoa (Boca da Areia)','R:Antônio Henriques Pessanha    n°196',1,6,'Residência','','Jocivaldo Gomes Miranda','','',0,0,0,0,0,'',0,0,'banheiro, cozinha e sala.',NULL,NULL,'','2012-02-10','','2012-02-10 14:04:27','2012-02-10 16:58:41',2,NULL);
/*!40000 ALTER TABLE `cores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores_desk_types`
--

DROP TABLE IF EXISTS `cores_desk_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores_desk_types` (
  `core_id` int(11) DEFAULT NULL,
  `desk_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores_desk_types`
--

LOCK TABLES `cores_desk_types` WRITE;
/*!40000 ALTER TABLE `cores_desk_types` DISABLE KEYS */;
INSERT INTO `cores_desk_types` VALUES (7,3,'2011-06-22 14:25:14','2011-06-22 14:25:14'),(12,1,'2011-06-22 15:34:59','2011-06-22 15:34:59'),(16,1,'2012-01-19 16:13:22','2012-01-19 16:13:22'),(21,1,'2012-01-19 16:14:48','2012-01-19 16:14:48'),(22,1,'2012-01-19 16:18:59','2012-01-19 16:18:59'),(23,1,'2012-01-19 16:22:31','2012-01-19 16:22:31'),(24,1,'2012-01-19 16:24:26','2012-01-19 16:24:26'),(25,1,'2012-01-19 16:26:55','2012-01-19 16:26:55'),(26,1,'2012-01-19 16:29:49','2012-01-19 16:29:49'),(27,1,'2012-01-19 16:31:56','2012-01-19 16:31:56'),(28,1,'2012-01-19 16:33:47','2012-01-19 16:33:47'),(29,1,'2012-01-19 16:35:41','2012-01-19 16:35:41'),(30,1,'2012-01-19 16:38:01','2012-01-19 16:38:01'),(32,1,'2012-01-19 16:43:04','2012-01-19 16:43:04'),(33,1,'2012-01-19 16:44:57','2012-01-19 16:44:57'),(43,1,'2012-01-27 03:04:11','2012-01-27 03:04:11'),(20,1,'2012-01-27 03:08:09','2012-01-27 03:08:09'),(39,1,'2012-01-27 03:11:02','2012-01-27 03:11:02'),(40,1,'2012-01-27 03:13:35','2012-01-27 03:13:35'),(42,1,'2012-01-27 03:15:48','2012-01-27 03:15:48'),(17,1,'2012-01-27 03:22:24','2012-01-27 03:22:24'),(34,1,'2012-01-27 03:24:56','2012-01-27 03:24:56'),(35,1,'2012-01-27 03:27:12','2012-01-27 03:27:12'),(19,1,'2012-01-27 03:29:57','2012-01-27 03:29:57'),(38,1,'2012-01-27 03:31:41','2012-01-27 03:31:41'),(15,1,'2012-01-27 03:33:29','2012-01-27 03:33:29'),(37,1,'2012-01-27 03:36:08','2012-01-27 03:36:08'),(44,3,'2012-02-06 14:32:30','2012-02-06 14:32:30'),(45,3,'2012-02-06 14:35:26','2012-02-06 14:35:26'),(46,3,'2012-02-06 14:37:06','2012-02-06 14:37:06'),(53,3,'2012-02-08 17:37:23','2012-02-08 17:37:23'),(54,3,'2012-02-08 17:38:46','2012-02-08 17:38:46'),(56,3,'2012-02-08 17:40:35','2012-02-08 17:40:35'),(60,3,'2012-02-08 17:53:05','2012-02-08 17:53:05'),(62,1,'2012-02-09 12:19:08','2012-02-09 12:19:08'),(68,3,'2012-02-10 14:04:27','2012-02-10 14:04:27');
/*!40000 ALTER TABLE `cores_desk_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores_displacements`
--

DROP TABLE IF EXISTS `cores_displacements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores_displacements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displacement_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `displacement_type` int(11) DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `displacement_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores_displacements`
--

LOCK TABLES `cores_displacements` WRITE;
/*!40000 ALTER TABLE `cores_displacements` DISABLE KEYS */;
INSERT INTO `cores_displacements` VALUES (1,'',0,1,1,'2011-06-22 12:44:31','2011-06-22 12:44:31'),(2,'',1,1,1,'2011-06-22 12:44:31','2011-06-22 12:44:31'),(3,'',0,2,1,'2011-06-22 13:04:33','2011-06-22 13:04:33'),(4,'',1,2,1,'2011-06-22 13:04:33','2011-06-22 13:04:33');
/*!40000 ALTER TABLE `cores_displacements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores_partner_resources`
--

DROP TABLE IF EXISTS `cores_partner_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores_partner_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `partner_resource_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=112 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores_partner_resources`
--

LOCK TABLES `cores_partner_resources` WRITE;
/*!40000 ALTER TABLE `cores_partner_resources` DISABLE KEYS */;
INSERT INTO `cores_partner_resources` VALUES (1,NULL,7,2,'2011-06-22 14:25:14','2011-06-22 14:25:14'),(2,NULL,8,2,'2011-06-22 14:49:23','2011-06-22 14:49:23'),(3,'sala, cozinha e banheiro',9,1,'2011-06-22 15:11:47','2011-06-22 15:11:47'),(4,'sala, cozinha e banheiro',10,1,'2011-06-22 15:18:56','2011-06-22 15:18:56'),(5,'salão sem banheiro',11,1,'2011-06-22 15:30:03','2011-06-22 15:30:03'),(6,'salão sem banheiro',12,1,'2011-06-22 15:34:59','2011-06-22 15:34:59'),(7,'Secretaria Municipal de Educação',16,1,'2012-01-19 14:20:26','2012-01-19 14:20:26'),(8,NULL,16,2,'2012-01-19 14:20:26','2012-01-19 14:20:26'),(9,NULL,16,3,'2012-01-19 14:20:26','2012-01-19 14:20:26'),(10,NULL,17,1,'2012-01-19 14:34:15','2012-01-19 14:34:15'),(11,NULL,17,2,'2012-01-19 14:34:15','2012-01-19 14:34:15'),(12,NULL,17,3,'2012-01-19 14:34:15','2012-01-19 14:34:15'),(13,NULL,21,1,'2012-01-19 16:14:48','2012-01-19 16:14:48'),(14,NULL,21,2,'2012-01-19 16:14:48','2012-01-19 16:14:48'),(15,NULL,21,3,'2012-01-19 16:14:48','2012-01-19 16:14:48'),(16,'Secretaria Municipal de Educação',22,1,'2012-01-19 16:18:59','2012-01-19 16:18:59'),(17,NULL,22,2,'2012-01-19 16:18:59','2012-01-19 16:18:59'),(18,NULL,22,3,'2012-01-19 16:18:59','2012-01-19 16:18:59'),(19,'Secretaria Municipal de Educação',23,1,'2012-01-19 16:22:31','2012-01-19 16:22:31'),(20,NULL,23,2,'2012-01-19 16:22:31','2012-01-19 16:22:31'),(21,NULL,23,3,'2012-01-19 16:22:31','2012-01-19 16:22:31'),(22,'Secretaria Municipal de Educação',24,1,'2012-01-19 16:24:26','2012-01-19 16:24:26'),(23,NULL,24,2,'2012-01-19 16:24:26','2012-01-19 16:24:26'),(24,NULL,24,3,'2012-01-19 16:24:26','2012-01-19 16:24:26'),(25,'Secretaria Municipal de Educação',25,1,'2012-01-19 16:26:55','2012-01-19 16:26:55'),(26,NULL,25,2,'2012-01-19 16:26:55','2012-01-19 16:26:55'),(27,NULL,25,3,'2012-01-19 16:26:55','2012-01-19 16:26:55'),(28,'Secretaria Municipal de Educação',26,1,'2012-01-19 16:29:49','2012-01-19 16:29:49'),(29,NULL,26,2,'2012-01-19 16:29:49','2012-01-19 16:29:49'),(30,NULL,26,3,'2012-01-19 16:29:49','2012-01-19 16:29:49'),(31,'Secretaria Municipal de Educação',27,1,'2012-01-19 16:31:56','2012-01-19 16:31:56'),(32,NULL,27,2,'2012-01-19 16:31:56','2012-01-19 16:31:56'),(33,NULL,27,3,'2012-01-19 16:31:56','2012-01-19 16:31:56'),(34,'Secretaria Municipal de Educação',28,1,'2012-01-19 16:33:47','2012-01-19 16:33:47'),(35,NULL,28,2,'2012-01-19 16:33:47','2012-01-19 16:33:47'),(36,NULL,28,3,'2012-01-19 16:33:47','2012-01-19 16:33:47'),(37,'Secretaria Municipal de Educação',29,1,'2012-01-19 16:35:41','2012-01-19 16:35:42'),(38,NULL,29,2,'2012-01-19 16:35:41','2012-01-19 16:35:41'),(39,NULL,29,3,'2012-01-19 16:35:41','2012-01-19 16:35:41'),(40,'Secretaria Municipal de Educação',30,1,'2012-01-19 16:38:01','2012-01-19 16:38:01'),(41,NULL,30,2,'2012-01-19 16:38:01','2012-01-19 16:38:01'),(42,NULL,30,3,'2012-01-19 16:38:01','2012-01-19 16:38:01'),(43,'Secretaria Municipal de Educação',31,1,'2012-01-19 16:40:25','2012-01-19 16:40:25'),(44,NULL,31,2,'2012-01-19 16:40:25','2012-01-19 16:40:25'),(45,NULL,31,3,'2012-01-19 16:40:25','2012-01-19 16:40:25'),(46,'Secretaria Municipal de Educação',32,1,'2012-01-19 16:43:04','2012-01-19 16:43:04'),(47,NULL,32,2,'2012-01-19 16:43:04','2012-01-19 16:43:04'),(48,NULL,32,3,'2012-01-19 16:43:04','2012-01-19 16:43:04'),(49,'Secretaria Municipal de Educação',33,1,'2012-01-19 16:44:57','2012-01-19 16:44:57'),(50,NULL,33,2,'2012-01-19 16:44:57','2012-01-19 16:44:57'),(51,NULL,33,3,'2012-01-19 16:44:57','2012-01-19 16:44:57'),(52,'Secretaria Municipal de Educação',34,1,'2012-01-24 12:30:16','2012-01-24 12:30:17'),(53,NULL,34,2,'2012-01-24 12:30:16','2012-01-24 12:30:16'),(54,NULL,34,3,'2012-01-24 12:30:16','2012-01-24 12:30:16'),(55,'Secretaria Municipal de Educação',35,1,'2012-01-24 12:31:30','2012-01-24 12:31:30'),(56,NULL,35,2,'2012-01-24 12:31:30','2012-01-24 12:31:30'),(57,NULL,35,3,'2012-01-24 12:31:30','2012-01-24 12:31:30'),(58,NULL,18,1,'2012-01-24 12:36:16','2012-01-24 12:36:16'),(59,NULL,18,2,'2012-01-24 12:36:16','2012-01-24 12:36:16'),(60,NULL,18,3,'2012-01-24 12:36:16','2012-01-24 12:36:16'),(61,NULL,20,1,'2012-01-24 12:37:08','2012-01-24 12:37:08'),(62,NULL,20,2,'2012-01-24 12:37:08','2012-01-24 12:37:08'),(63,NULL,20,3,'2012-01-24 12:37:08','2012-01-24 12:37:08'),(64,NULL,36,1,'2012-01-24 12:38:06','2012-01-24 12:38:06'),(65,NULL,36,2,'2012-01-24 12:38:06','2012-01-24 12:38:06'),(66,NULL,36,3,'2012-01-24 12:38:06','2012-01-24 12:38:06'),(67,NULL,37,1,'2012-01-24 12:39:06','2012-01-24 12:39:06'),(68,NULL,37,2,'2012-01-24 12:39:06','2012-01-24 12:39:06'),(69,NULL,37,3,'2012-01-24 12:39:06','2012-01-24 12:39:06'),(70,NULL,38,1,'2012-01-24 12:40:05','2012-01-24 12:40:05'),(71,NULL,38,2,'2012-01-24 12:40:05','2012-01-24 12:40:05'),(72,NULL,38,3,'2012-01-24 12:40:05','2012-01-24 12:40:05'),(73,NULL,39,1,'2012-01-24 12:41:12','2012-01-24 12:41:12'),(74,NULL,39,2,'2012-01-24 12:41:12','2012-01-24 12:41:12'),(75,NULL,39,3,'2012-01-24 12:41:12','2012-01-24 12:41:12'),(76,NULL,40,1,'2012-01-24 12:41:58','2012-01-24 12:41:58'),(77,NULL,40,2,'2012-01-24 12:41:58','2012-01-24 12:41:58'),(78,NULL,40,3,'2012-01-24 12:41:58','2012-01-24 12:41:58'),(79,NULL,41,1,'2012-01-24 12:43:32','2012-01-24 12:43:32'),(80,NULL,41,2,'2012-01-24 12:43:32','2012-01-24 12:43:32'),(81,NULL,41,3,'2012-01-24 12:43:32','2012-01-24 12:43:32'),(82,NULL,42,1,'2012-01-24 12:44:13','2012-01-24 12:44:13'),(83,NULL,42,2,'2012-01-24 12:44:13','2012-01-24 12:44:13'),(84,NULL,42,3,'2012-01-24 12:44:13','2012-01-24 12:44:13'),(85,NULL,15,1,'2012-01-24 12:45:00','2012-01-24 12:45:00'),(86,NULL,15,2,'2012-01-24 12:45:00','2012-01-24 12:45:00'),(87,NULL,15,3,'2012-01-24 12:45:00','2012-01-24 12:45:00'),(88,NULL,43,1,'2012-01-24 14:23:14','2012-01-24 14:23:14'),(89,NULL,43,2,'2012-01-24 14:23:14','2012-01-24 14:23:14'),(90,NULL,43,3,'2012-01-24 14:23:14','2012-01-24 14:23:14'),(91,NULL,19,1,'2012-01-27 03:29:57','2012-01-27 03:29:57'),(92,NULL,19,2,'2012-01-27 03:29:57','2012-01-27 03:29:57'),(93,NULL,19,3,'2012-01-27 03:29:57','2012-01-27 03:29:57'),(94,'Somente o local',44,1,'2012-02-06 14:32:30','2012-02-06 14:32:30'),(95,'somente o local',45,1,'2012-02-06 14:35:26','2012-02-06 14:35:26'),(96,'somente o local',46,1,'2012-02-06 14:37:06','2012-02-06 14:37:06'),(97,'DOIS CÔMODOS',47,1,'2012-02-06 14:39:31','2012-02-06 14:39:31'),(98,'BANHEIRO,SALA',48,1,'2012-02-06 16:23:00','2012-02-06 16:23:00'),(99,'banheiro , cazinha e sala',53,1,'2012-02-08 17:37:23','2012-02-08 17:37:23'),(100,'Sala, cozinha e banheiro',54,1,'2012-02-08 17:38:46','2012-02-08 17:38:46'),(101,'banheiro , cazinha e sala',55,1,'2012-02-08 17:39:24','2012-02-08 17:39:24'),(102,'banheiro , cazinha e sala',56,1,'2012-02-08 17:40:35','2012-02-08 17:40:35'),(103,'banheiro , cazinha e sala',57,1,'2012-02-08 17:41:45','2012-02-08 17:41:46'),(104,NULL,60,1,'2012-02-08 17:53:05','2012-02-08 17:53:05'),(105,NULL,60,2,'2012-02-08 17:53:05','2012-02-08 17:53:05'),(106,'o espaço que foi cedido',61,1,'2012-02-08 17:53:10','2012-02-08 17:53:10'),(107,'Quadros,mesas ,carteiras e outros',62,1,'2012-02-09 12:19:08','2012-02-09 12:19:08'),(108,'sala cozinha e banheiro',64,1,'2012-02-09 13:32:30','2012-02-09 13:32:30'),(109,'Sala, cozinha e banheiro',65,1,'2012-02-09 14:08:41','2012-02-09 14:08:41'),(110,'Sala e banheiro',66,1,'2012-02-09 14:21:05','2012-02-09 14:21:05'),(111,'Espaço',67,1,'2012-02-09 14:35:27','2012-02-09 14:35:27');
/*!40000 ALTER TABLE `cores_partner_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cores_seat_types`
--

DROP TABLE IF EXISTS `cores_seat_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cores_seat_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_type_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `seat_type_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cores_seat_types`
--

LOCK TABLES `cores_seat_types` WRITE;
/*!40000 ALTER TABLE `cores_seat_types` DISABLE KEYS */;
INSERT INTO `cores_seat_types` VALUES (1,NULL,1,6,'2011-06-22 12:44:31','2011-06-22 12:44:31'),(2,NULL,2,6,'2011-06-22 13:04:33','2011-06-22 13:04:33'),(3,NULL,3,3,'2011-06-22 13:30:21','2011-06-22 13:30:21'),(4,NULL,4,3,'2011-06-22 13:42:35','2011-06-22 13:42:35'),(5,'Plástico',7,1,'2011-06-22 14:25:14','2011-06-22 14:25:14'),(6,NULL,8,2,'2011-06-22 14:49:23','2011-06-22 14:49:23'),(7,NULL,9,2,'2011-06-22 15:11:47','2011-06-22 15:11:47'),(8,NULL,10,2,'2011-06-22 15:18:56','2011-06-22 15:18:56'),(9,NULL,11,6,'2011-06-22 15:30:03','2011-06-22 15:30:03'),(10,NULL,12,6,'2011-06-22 15:34:59','2011-06-22 15:34:59'),(11,NULL,17,1,'2012-01-19 14:34:15','2012-01-19 14:34:15'),(12,NULL,16,3,'2012-01-19 16:13:22','2012-01-19 16:13:22'),(13,NULL,21,3,'2012-01-19 16:14:48','2012-01-19 16:14:48'),(14,NULL,22,3,'2012-01-19 16:18:59','2012-01-19 16:18:59'),(15,NULL,23,3,'2012-01-19 16:22:31','2012-01-19 16:22:31'),(16,NULL,24,3,'2012-01-19 16:24:26','2012-01-19 16:24:26'),(17,NULL,25,3,'2012-01-19 16:26:55','2012-01-19 16:26:55'),(18,NULL,26,3,'2012-01-19 16:29:49','2012-01-19 16:29:49'),(19,NULL,27,3,'2012-01-19 16:31:56','2012-01-19 16:31:56'),(20,NULL,28,3,'2012-01-19 16:33:47','2012-01-19 16:33:47'),(21,NULL,29,3,'2012-01-19 16:35:42','2012-01-19 16:35:42'),(22,NULL,30,3,'2012-01-19 16:38:01','2012-01-19 16:38:01'),(23,NULL,31,4,'2012-01-19 16:40:25','2012-01-19 16:40:25'),(24,NULL,32,3,'2012-01-19 16:43:04','2012-01-19 16:43:04'),(25,NULL,33,3,'2012-01-19 16:44:57','2012-01-19 16:44:57'),(26,NULL,43,3,'2012-01-27 03:04:11','2012-01-27 03:04:11'),(27,NULL,20,3,'2012-01-27 03:08:09','2012-01-27 03:08:09'),(28,NULL,39,3,'2012-01-27 03:11:02','2012-01-27 03:11:02'),(29,NULL,40,3,'2012-01-27 03:13:35','2012-01-27 03:13:35'),(30,NULL,42,3,'2012-01-27 03:15:48','2012-01-27 03:15:48'),(31,NULL,18,4,'2012-01-27 03:18:27','2012-01-27 03:18:27'),(32,NULL,41,4,'2012-01-27 03:20:43','2012-01-27 03:20:43'),(33,NULL,17,3,'2012-01-27 03:22:24','2012-01-27 03:22:24'),(34,NULL,34,3,'2012-01-27 03:24:56','2012-01-27 03:24:56'),(35,NULL,35,3,'2012-01-27 03:27:12','2012-01-27 03:27:12'),(36,NULL,19,3,'2012-01-27 03:29:57','2012-01-27 03:29:57'),(37,NULL,38,4,'2012-01-27 03:31:41','2012-01-27 03:31:41'),(38,NULL,15,3,'2012-01-27 03:33:29','2012-01-27 03:33:29'),(39,NULL,15,4,'2012-01-27 03:33:29','2012-01-27 03:33:29'),(40,NULL,37,3,'2012-01-27 03:36:08','2012-01-27 03:36:08'),(41,NULL,44,2,'2012-02-06 14:32:30','2012-02-06 14:32:30'),(42,'Brancas de plástico',45,1,'2012-02-06 14:35:26','2012-02-06 14:35:26'),(43,'Brancas de plastico',46,1,'2012-02-06 14:37:06','2012-02-06 14:37:06'),(44,NULL,48,6,'2012-02-06 16:23:00','2012-02-06 16:23:00'),(45,NULL,49,6,'2012-02-06 16:54:02','2012-02-06 16:54:02'),(46,NULL,5,1,'2012-02-08 13:05:12','2012-02-08 13:05:12'),(47,NULL,5,5,'2012-02-08 13:05:12','2012-02-08 13:05:12'),(48,'branca',53,1,'2012-02-08 17:37:23','2012-02-08 17:37:23'),(49,NULL,54,2,'2012-02-08 17:38:46','2012-02-08 17:38:46'),(50,'branca',55,1,'2012-02-08 17:39:24','2012-02-08 17:39:24'),(51,'branca',56,1,'2012-02-08 17:40:35','2012-02-08 17:40:35'),(52,'branca',57,1,'2012-02-08 17:41:45','2012-02-08 17:41:46'),(53,NULL,60,2,'2012-02-08 17:53:05','2012-02-08 17:53:05'),(54,NULL,61,6,'2012-02-08 17:53:10','2012-02-08 17:53:10'),(55,NULL,62,3,'2012-02-09 12:19:08','2012-02-09 12:19:08'),(56,NULL,63,6,'2012-02-09 12:55:33','2012-02-09 12:55:33'),(57,NULL,64,6,'2012-02-09 13:32:30','2012-02-09 13:32:30'),(58,NULL,65,6,'2012-02-09 14:08:41','2012-02-09 14:08:41'),(59,NULL,66,6,'2012-02-09 14:21:05','2012-02-09 14:21:05'),(60,NULL,68,5,'2012-02-10 14:04:27','2012-02-10 14:04:27');
/*!40000 ALTER TABLE `cores_seat_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `desk_types`
--

DROP TABLE IF EXISTS `desk_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `desk_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `desk_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `desk_types`
--

LOCK TABLES `desk_types` WRITE;
/*!40000 ALTER TABLE `desk_types` DISABLE KEYS */;
INSERT INTO `desk_types` VALUES (1,'Carteiras escolares','2011-06-17 21:18:17','2011-06-17 21:18:17'),(2,'Mesas redondas','2011-06-17 21:18:17','2011-06-17 21:18:17'),(3,'Mesas de plástico','2011-06-17 21:18:17','2011-06-17 21:18:17'),(4,'Tábua e cavalete','2011-06-17 21:18:17','2011-06-17 21:18:17'),(5,'Carteiras escolares','2012-02-10 16:43:34','2012-02-10 16:43:34'),(6,'Mesas redondas','2012-02-10 16:43:35','2012-02-10 16:43:35'),(7,'Mesas de plástico','2012-02-10 16:43:35','2012-02-10 16:43:35'),(8,'Tábua e cavalete','2012-02-10 16:43:35','2012-02-10 16:43:35');
/*!40000 ALTER TABLE `desk_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `displacements`
--

DROP TABLE IF EXISTS `displacements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `displacements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `displacement` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `displacements`
--

LOCK TABLES `displacements` WRITE;
/*!40000 ALTER TABLE `displacements` DISABLE KEYS */;
INSERT INTO `displacements` VALUES (1,'A pé','2011-06-17 21:18:18','2011-06-17 21:18:18'),(2,'De motocicleta','2011-06-17 21:18:18','2011-06-17 21:18:18'),(3,'De barco','2011-06-17 21:18:18','2011-06-17 21:18:18'),(4,'De bicicleta','2011-06-17 21:18:18','2011-06-17 21:18:18'),(5,'Carro','2011-06-17 21:18:18','2011-06-17 21:18:18'),(6,'Charrete','2011-06-17 21:18:18','2011-06-17 21:18:18'),(7,'Em lombo de animal','2011-06-17 21:18:18','2011-06-17 21:18:18'),(8,'Ônibus','2011-06-17 21:18:18','2011-06-17 21:18:18'),(9,'Outro','2011-06-17 21:18:18','2011-06-17 21:18:18'),(10,'A pé','2012-02-10 16:43:35','2012-02-10 16:43:35'),(11,'De motocicleta','2012-02-10 16:43:35','2012-02-10 16:43:35'),(12,'De barco','2012-02-10 16:43:35','2012-02-10 16:43:35'),(13,'De bicicleta','2012-02-10 16:43:35','2012-02-10 16:43:35'),(14,'Carro','2012-02-10 16:43:35','2012-02-10 16:43:35'),(15,'Charrete','2012-02-10 16:43:36','2012-02-10 16:43:36'),(16,'Em lombo de animal','2012-02-10 16:43:36','2012-02-10 16:43:36'),(17,'Ônibus','2012-02-10 16:43:36','2012-02-10 16:43:36'),(18,'Outro','2012-02-10 16:43:36','2012-02-10 16:43:36');
/*!40000 ALTER TABLE `displacements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `education_exps`
--

DROP TABLE IF EXISTS `education_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `education_exps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `education_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `education_exps`
--

LOCK TABLES `education_exps` WRITE;
/*!40000 ALTER TABLE `education_exps` DISABLE KEYS */;
INSERT INTO `education_exps` VALUES (1,'Pública','2011-06-17 21:18:18','2011-06-17 21:18:18'),(2,'Privada','2011-06-17 21:18:18','2011-06-17 21:18:18'),(3,'Estágio','2011-06-17 21:18:19','2011-06-17 21:18:19'),(4,'Pública','2012-02-10 16:43:36','2012-02-10 16:43:36'),(5,'Privada','2012-02-10 16:43:36','2012-02-10 16:43:36'),(6,'Estágio','2012-02-10 16:43:36','2012-02-10 16:43:36');
/*!40000 ALTER TABLE `education_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educators`
--

DROP TABLE IF EXISTS `educators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educators` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `start_date_to_students` date DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ethnicity` int(11) DEFAULT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civil_status` int(11) DEFAULT NULL,
  `rg` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cpf` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `voter_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professional_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `professional_serie` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `birth_or_marriage_certificate_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sons_number` int(11) DEFAULT NULL,
  `first_son_age` int(11) DEFAULT NULL,
  `second_son_age` int(11) DEFAULT NULL,
  `third_son_age` int(11) DEFAULT NULL,
  `forth_son_age` int(11) DEFAULT NULL,
  `education_level` int(11) DEFAULT NULL,
  `education_level_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `familiar_income` int(11) DEFAULT NULL,
  `house` int(11) DEFAULT NULL,
  `house_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_type` int(11) DEFAULT NULL,
  `special_need` tinyint(1) DEFAULT NULL,
  `political_affiliation` int(11) DEFAULT NULL,
  `political_party` int(11) DEFAULT NULL,
  `political_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `religion_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `association` int(11) DEFAULT NULL,
  `association_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `cooperative` int(11) DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educators`
--

LOCK TABLES `educators` WRITE;
/*!40000 ALTER TABLE `educators` DISABLE KEYS */;
INSERT INTO `educators` VALUES (1,'Angela Márcia Silva Sinflório Santos','2011-05-02',NULL,1,'2007-02-21',4,'Campos dos Goitacazes','RJ',0,'Rua Projetada c, vilão',0,'09.776.902-0','069.901.097-77','0921548503-96','37340','143','1.577','',2,13,7,NULL,NULL,1,'',NULL,0,'',0,0,3,0,NULL,6,'',0,'',0,6,'2011-06-22 17:05:00','2012-02-16 12:56:03'),(2,'Cecilia Gomes de Freitas','2011-04-18',NULL,1,'2011-11-30',0,'Campos dos Goitacazes','RJ',1,'Rua Projeto, Praça João Pessoa CEP: 28230-000',1,'24.630.988-4','133.326.047','1416.58510370','32876','156','','',0,NULL,NULL,NULL,NULL,0,'',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,3,'2011-06-22 17:58:05','2011-06-22 17:58:05'),(3,'Eduardo de Souza Laurindo','2011-09-05',NULL,0,'1976-12-30',3,'São Francisco e Itabapoana','Rio de Janeiro',1,'Rua da Ponte, n 33, Barra do Itabapoana, CEP. 28.230-000',1,'11224355-5','074.202.847-09','','','','','',0,NULL,NULL,NULL,NULL,3,'Pedagogia',NULL,3,'',0,0,0,0,NULL,0,'',0,'',0,16,'2012-01-19 14:24:13','2012-01-19 16:50:58'),(4,'Rágina Candido da Silva ','2011-09-05',NULL,1,'1992-12-28',0,'Itapemirim','Espirito Santo',0,'Fazenda Pau Brasil, São Bento, Presidente Kennedy, CEP. 29.350-000',0,'3.122.558','135.458.147-42','','','','','',0,NULL,NULL,NULL,NULL,2,'Pedagogia',NULL,0,'',0,0,3,0,NULL,1,'',0,'',0,17,'2012-01-19 14:35:31','2012-01-24 13:04:07'),(5,'Ederlina Salmar do Carmo Barreto','2011-09-05',NULL,1,'1975-10-17',2,'Itapemirim','Espirito Santo',0,'Liberdade, Zona rural, S/N, Presidente Kennedy, CEP. 29350.000',0,'','096.726.907-54','','','','','',1,7,NULL,NULL,NULL,3,'Pedagogia',NULL,0,'',0,0,3,0,NULL,1,'',0,'',0,18,'2012-01-19 14:46:14','2012-01-24 12:58:43'),(6,'Andréa dos Santos Guimarães','2011-09-05',NULL,1,'1970-08-30',4,'São Francisco e Itabapoana','Rio de Janeiro',1,'Rua Flor Diniz n 50, Bairro Travessão de Barra, São Francisco de Itabapoana.',1,'23780712003-3','017.784.547-39','','','','','',1,18,NULL,NULL,NULL,1,'',NULL,0,'',0,0,2,0,NULL,0,'',0,'',0,29,'2012-01-19 16:57:16','2012-01-19 16:57:16'),(7,'Fernanda das Neves Minas','2011-09-05',NULL,1,'1985-06-09',2,'Presidente Kennedy','Espirito Santo',1,'Rua Dona Cabocla, n 29, Centro. CEP. 29.350-000',1,'1968411','102.123.577-60','','','','','',0,NULL,NULL,NULL,NULL,3,'Normal Superior',NULL,1,'',0,0,0,0,NULL,0,'',0,'',0,30,'2012-01-19 17:01:16','2012-01-19 17:01:16'),(8,'Juliana Silva Andriêta','2011-09-19',NULL,1,'1982-06-19',0,'Alegre','Espirito Santo',1,'Rua Olegário Fricks, n 342, centro. CEP. 29.350-000',0,'','097.171.037-63','','','','','',1,3,NULL,NULL,NULL,1,'',NULL,1,'',0,0,3,0,NULL,0,'',0,'',0,32,'2012-01-19 17:05:34','2012-02-10 12:17:50'),(9,'Leila Raquel da Silva Rodrigues','2011-09-16',NULL,0,'2012-01-19',0,'São João da Barra','Rio de Janeiro',0,'Presidente Kennedy, Centro',1,'11559975-5','076.708.657-09','','','','','',0,NULL,NULL,NULL,NULL,3,'Ciências Biológicas',NULL,1,'',0,0,3,0,NULL,1,'',0,'',0,25,'2012-01-19 17:09:32','2012-01-19 18:20:46'),(11,'Anile dos Santos Freire','2011-09-05',NULL,1,'1974-11-27',0,'São João da Barra','Rio de Janeiro',1,'Rua Atila Vivacqua, Centro, Presidente Kennedy',3,'09628077-1','027.070.567-82','','','','','',2,17,14,NULL,NULL,1,'',NULL,1,'',0,0,3,0,NULL,1,'',0,'',0,26,'2012-01-19 17:19:27','2012-01-19 17:19:27'),(12,'Maria Izabel Amaro Hernandes','2011-09-05',NULL,1,'1965-04-30',0,'Rio Novo do Sul','Espirito Santo',1,'Rua Otávio Grégio, n 08, Ferroviários, Cachoeiro de Itapemirim',0,'742066','001.723.117-63','','','','','',1,22,NULL,NULL,NULL,4,'Geografia do Brasil/Ed. ambiental',NULL,0,'',0,0,2,2,NULL,1,'',0,'',0,27,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(13,'Kátia Cruz Ferreira Pinto','2011-09-05',NULL,1,'1975-09-17',0,'Presidente Kennedy','Espirito Santo',0,'Rua projetada, s/n, São bento, Presidente Kennedy',0,'1374356','071.793.727-57','','','','','',1,14,NULL,NULL,NULL,4,'Educação Inclusiva e Gestão Integrada',NULL,0,'',0,NULL,3,0,NULL,0,'',0,'',0,21,'2012-01-19 17:33:19','2012-01-19 17:33:19'),(14,'Joanete Maria Coutinho Rangel  Abreu','2011-09-05',NULL,1,'1961-04-01',0,'Rio de Janeiro','Rio de Janeiro',0,'Zona Rural, Fazenda São Bento, Presidente Kennedy',0,'04853083-6','743.532.687-91','','','','','',2,13,8,NULL,NULL,4,'Lingua Inglesa',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,31,'2012-01-19 17:37:56','2012-01-19 17:37:56'),(15,'Marcela dos Santos Guimarães','2011-09-05',NULL,1,'1981-07-13',0,'Vila do Itapemirim','Espirito Santo',1,'Rua Estrel Dalva, n 11, Barra do Itabapoana, São Francisco de Itabapoana',0,'13080545-0','094.341.457-16','','','','','',0,NULL,NULL,NULL,NULL,3,'Ciências Biológicas',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,22,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(16,'Shirle dos Santos Mota Carvalho','2011-09-05',NULL,1,'1971-09-17',0,'São Francisco e Itabapoana','Rio de Janeiro',1,'Rua Renvil Ferreira, n 10, Barra do Itabapoana, São Francisco de Itabapoana',0,'09565158-4','027.063.587-42','','','','','',3,19,14,12,NULL,1,'',NULL,0,'',0,0,0,0,NULL,1,'',0,'',0,23,'2012-01-19 17:48:42','2012-01-19 17:48:42'),(17,'Luciano Antônio Paixão','2011-09-05',NULL,0,'1981-03-27',0,'Baixo Guandu','Espirito Santo',0,'Rua Projetada s/n, Boa Vista do Sul. CEP. 29330-000',0,'1821393','091.280.437-82','','','','','',2,3,3,NULL,NULL,3,'Pedagogia/Teologia',NULL,1,'',0,0,0,1,NULL,1,'',0,'',0,24,'2012-01-19 17:53:04','2012-01-19 17:53:04'),(18,'Sônia Maria Gomes Almeida','2011-09-20',NULL,1,'1964-01-05',0,'','',0,'',0,'04853083-6','818.285.517-91','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,3,'',3,0,3,0,NULL,0,'',0,'',0,33,'2012-01-19 17:56:01','2012-01-19 18:21:18'),(19,'Rosimara Pereira de Paiva','2011-09-05',NULL,1,'1982-12-09',0,'São Francisco do Itabapoana','Rio de Janeiro',0,'Rua Andrelino Machado, n 06, Travessão da Barra, São Francisco do Itabapoana',1,'13080568-2','095.479.557-13','','','','','',0,NULL,NULL,NULL,NULL,1,'',NULL,0,'',0,0,3,0,NULL,1,'',0,'',0,41,'2012-01-24 13:08:20','2012-01-24 13:08:20'),(20,'Zenivânia dos Santos Rodrigues','2011-09-05',NULL,1,'1978-12-02',0,'São Francisco do Itabapoana','Rio de Janeiro',1,'Rua Sandoval Andrades, n 34, Barra do Itabapoana, São Francisco de Itabapoana',1,'12835405-7','101.556.497-60','','','','','',3,11,9,7,NULL,1,'',NULL,2,'',0,0,3,0,NULL,0,'',0,'',0,39,'2012-01-24 13:14:25','2012-01-24 13:14:25'),(21,'Eloisa dos Santos Rodrigues Malte','2011-09-05',NULL,1,'1963-04-01',0,'São Francisco de Itabapoana','Rio de Janeiro',1,'Rua do Barbosa, n 13, Centro, Barra de Itabapoana',0,'08364808-9','885.560.427-91','','','','','',1,17,NULL,NULL,NULL,2,'Geografia',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,40,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(22,'Raquel Baião Nogueira Ferri','2011-09-05',NULL,1,'1972-07-03',4,'Cachoeiro do Itapemirim','Espirito Santo',1,'Rua Antônio Mauricio de Oliveira, n 14, Paraiso, Cachoeiro de Itapemirim, CEP. 29.304-120',0,'12158372-8','019.788.077-08','','','','','',3,20,14,11,NULL,3,'Recursos Humanos',NULL,2,'',0,0,3,0,NULL,0,'',0,'',0,42,'2012-01-24 13:24:01','2012-01-24 13:24:01'),(23,'Regina Celia Gomes de Souza','2011-09-05',NULL,1,'1965-12-28',0,'São João da Barra','Rio de Janeiro',1,'Rua São Joaquim, n 69, Barra de Itabapoana, São Francisco de Itabapoana',3,'07796012-8','953.660.757-34','','','','','',2,18,5,NULL,NULL,2,'História',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,42,'2012-01-24 13:28:48','2012-01-24 13:28:48'),(24,'Ana Moreira Reis','2011-09-05',NULL,1,'1971-05-16',0,'São Francisco de Itabapoana','Rio de Janeiro',1,'Rua Alberto Andrade Simões , n 52, Barra do Itabapoana',3,'09.369.794-4','017.772.727-69','','','','','',1,7,NULL,NULL,NULL,3,'Pedagogia',NULL,1,'',0,0,3,0,NULL,0,'',0,'',0,34,'2012-01-24 13:48:34','2012-01-24 13:48:34'),(25,'Therezinha Alves da Silva','2011-09-05',NULL,1,'1954-09-13',2,'Mimoso do Sul','Espirito Santo',0,'Zona Rural,Gromogol, Presidente Kennedy',0,'1.44.673','003.258.877-13','','','','','',0,NULL,NULL,NULL,NULL,4,'Gestão Educacional, alfabetização especial',NULL,0,'',0,0,0,0,NULL,0,'',0,'',0,35,'2012-01-24 13:51:59','2012-01-24 13:51:59'),(26,'Lubia Mara Carvalho Costa','2011-09-05',NULL,1,'1962-10-29',0,'Cachoeiro do Itapemirim','Espirito Santo',0,'Zona Rural,Santana Feliz, Presidente Kennedy',0,'603290','761.761.187-00','','','','','',4,21,20,14,12,2,'Pedagogia',NULL,0,'',0,0,3,0,NULL,1,'',0,'',0,19,'2012-01-24 13:55:31','2012-01-24 13:55:31'),(27,'Mônica Cristina Orequio de Souza','2011-09-05',NULL,1,'1974-08-12',0,'Cachoeiro do Itapemirim','Espirito Santo',0,'Rua Projetada S/N, Zona Rural, São Salvador, Presidente Kennedy, CEP. 29.350-000',0,'1.204.695','034.537.387-13','','','','','',2,9,1,NULL,NULL,4,'Inspeção Escolar e Psicopedagogia',NULL,0,'',0,0,0,0,NULL,1,'',0,'',0,37,'2012-01-24 14:00:41','2012-01-24 14:00:41'),(28,'Vanerlúcia Vieira dos Santos','2011-09-05',NULL,1,'1986-02-06',2,'Campos dos Goytacazes','Rio de Janeiro',0,'Rua projetada S/N, Marobá, presidente Kennedy, CEP. 29.350-000',1,'22.179.966-1','122.566.107-21','','','','','',1,4,NULL,NULL,NULL,2,'Pedagogia',NULL,1,'',0,0,3,0,NULL,1,'',0,'',0,38,'2012-01-24 14:05:01','2012-01-24 14:05:01'),(29,'Enilda Gomes de Souza Silva','2011-09-05',NULL,1,'1960-10-09',0,'São João da Barra','Rio de Janeiro',1,'Rua Nova, n 39, Barra do Itabapoana, São Francisco de Itabapoana, CEP. 28.230-000',0,'064654254','007.140.217-92','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,0,'',0,0,0,0,NULL,1,'',0,'',0,15,'2012-01-24 14:08:41','2012-01-24 14:08:41'),(30,'Elivani da Costa Bernardo Porto','2011-09-05',NULL,1,'1967-07-05',0,'Presidente Kennedy','Espirito Santo',0,'Rua Projetada S/N, Zona Rural, São Salvador, Presidente Kennedy, CEP. 29.350-000',0,'964.316','015.233.777-63','','','','','',1,17,NULL,NULL,NULL,2,'',NULL,0,'',0,0,3,0,NULL,6,'',0,'',0,43,'2012-01-24 14:26:37','2012-01-24 14:26:37'),(32,'Juliana Da Silveira Rodrigues Lemos','2011-06-06',NULL,1,'1979-02-04',2,'CAMPOS DOS GOYTACAZES','RIO DE JANEIRO',0,'ESTADA DESERTO FELIZ RJ 204 SITIO OASIS SAO FRANCISCO DE ITABAPOANA',0,'125358752 DETRAN','087755297501','101154890353','6588711','001-rj','10231c/c','',3,16,10,4,NULL,0,'',NULL,0,'',0,0,3,0,NULL,1,'',0,'QUILOMB',0,11,'2012-02-06 14:30:07','2012-02-09 12:18:57'),(33,'Eliza Gomes de Souza Oliveira','2011-06-01',NULL,1,'1975-12-14',3,'São João da Barra','R.J',2,'Rua Nova N°55- Barra de Itabapoana,São Francisco de Itabapoana Cep:28230.000',0,'10502372-5','082661027-75','912503503/88','12142','169RJ','666','212.1571785-9',2,13,7,NULL,NULL,1,'',NULL,0,'',0,0,3,0,NULL,0,'',0,'',0,44,'2012-02-06 14:49:26','2012-02-16 13:31:34'),(34,'Joana Santos Raymundo','2011-08-19',NULL,1,'1989-06-25',2,'Cabo Frio','Rio de janeiro',1,'',1,'24.623.302-7','136.436.197-31','141657000361','','','','',1,2,NULL,NULL,NULL,1,'',NULL,0,'',0,0,3,0,NULL,1,'',0,'',0,46,'2012-02-06 14:51:31','2012-02-16 13:08:41'),(36,'Angela Marcia S. Sinflorio Santos','2011-05-02',NULL,1,'1974-02-21',4,'Campos dos Goytacazes','Rio de Janeiro',0,'R:Projetada c, s/nº',0,'09.776.902-0','069.901.097-77','0921 5485 0396','37340','143','','',2,14,7,NULL,NULL,1,'',NULL,0,'',0,0,0,0,NULL,1,'',0,'',0,5,'2012-02-06 14:58:52','2012-02-08 13:02:40'),(37,'Maria José Manhães da Silva','2011-06-27',NULL,1,'1958-02-10',0,'Campos','Rio de Janeiro',1,'Guaxindiba',0,'557591','030.811.137-09','1972261406','','','','',1,23,NULL,NULL,NULL,0,'',NULL,0,'',0,0,0,0,NULL,1,'',0,'',3,45,'2012-02-07 23:44:12','2012-02-16 12:46:32'),(38,'Ducirlei da Silva Henriques','2011-07-21',NULL,1,'2012-02-08',0,'','',0,'',0,'','','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,0,'',0,NULL,0,0,NULL,0,'',0,'',0,1,'2012-02-08 17:56:22','2012-02-08 17:56:22'),(41,'Marciana  de Fátima Viana da Silva Ferreira','2011-08-19',NULL,1,'1982-12-19',4,'Campos dos Goitacazes','Rio de Janeiro',1,'R:Projetada D s/nº - Guaxindiba',0,'20.225.734-1','095.953.947-69','110818290361','','','499/livro:B-0003','',1,5,NULL,NULL,NULL,3,'Pedagogia',NULL,0,'',0,0,3,2,NULL,0,'',0,'',0,60,'2012-02-08 18:10:06','2012-02-08 18:10:06'),(44,'','2011-06-01',NULL,1,'1989-11-11',0,'São João da Barra','rio de janeiro',2,'Rua da Ponte, n18, Barra de Itabapoana, São Francisco de  Itabapoana',1,'247801699','13846369780','139637950388','24165','157 RJ','','19041526989',0,NULL,NULL,NULL,NULL,2,'licenciatura em pedagogia',NULL,0,'',0,0,3,0,NULL,6,'',0,'',0,44,'2012-02-08 18:31:55','2012-02-08 18:31:55'),(45,'Lima Brizola de Oliveira Silva','2011-06-01',NULL,1,'1989-11-11',0,'São João da Barra','rio de janeiro',2,'Rua da Ponte, n18, Barra de Itabapoana, São Francisco de  Itabapoana',1,'247801699','13846369780','139637950388','24165','157 RJ','','19041526989',0,NULL,NULL,NULL,NULL,2,'licenciatura em pedagogia',NULL,0,'',0,0,3,0,NULL,6,'',0,'',0,61,'2012-02-08 18:34:24','2012-02-16 12:54:54'),(46,'Renata dos Santos Silva Ventura','2011-06-01',NULL,1,'1979-01-14',0,'Campos dos Goytacazes','Rio de Janeiro',2,'Rua Nelson Barros de Menezes Nº174   Gargaú    São Francisco de Itabapoana Rj  Cep:28230000',0,'11224062-7','087204937-03','1048697103/29','','','','',2,12,10,NULL,NULL,2,'pedagogia',NULL,0,'',0,0,3,2,NULL,1,'',0,'',0,48,'2012-02-09 12:15:23','2012-02-16 12:52:47'),(47,'Rosiane Fernandes de Souza','2011-06-01',NULL,1,'1974-04-09',0,'São João da Barra','Rio de Janeiro',2,'Rua Sandoval Andrada-Barra de Itabapoana Nº34, Cep:28230.000',1,'020.396.386-3','102.671.247.59','779287603/88','','','','',2,20,11,NULL,NULL,2,'Pedagogia',NULL,0,'',0,0,0,0,NULL,0,'',0,'',0,62,'2012-02-09 12:31:04','2012-02-09 17:57:57'),(48,'Renato Tereza das Chagas','2011-04-19',NULL,0,'1987-03-04',2,'São Francisco de Itabapoana','Rio de Janeiro',0,'Entrada da Areia Dourada - Praça João Pessoa , nº05  ; cep 28230-000',1,'20.895.001-5','111671787-50','119383840353','','','','',0,NULL,NULL,NULL,NULL,3,'Jornalismo',NULL,0,'',0,0,3,2,NULL,1,'',0,'',0,63,'2012-02-09 13:30:42','2012-02-09 13:30:42'),(49,'Valéria Cristina Conceição da Penha Pereira','2011-06-01',NULL,1,'1965-11-16',0,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança n259 Bairro Buena',0,'077961381 IFP RJ ','963487207 72','364509303/61','','','49','',2,23,17,NULL,NULL,1,'',NULL,0,'',0,0,3,0,NULL,7,'',0,'',0,64,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(50,'Natanny Ribeiro Henriques','2012-02-09',NULL,0,'2012-02-09',0,'','',0,'',0,'','','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,0,'',0,NULL,0,0,NULL,0,'',0,'',0,1,'2012-02-09 14:37:45','2012-02-09 14:37:45'),(51,'Tamires Felix Ferreira','2011-06-01',NULL,1,'1987-08-30',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos- Barra - Barrinha Nº511,São Francisco de Itabapoana RJ Cep:28230.000',1,'22299.444-4','121.816.517-01','135491540310','','','4655','20479602225-01',1,2,NULL,NULL,NULL,1,'',NULL,0,'',0,0,1,0,NULL,0,'',4,'Não tem',0,66,'2012-02-09 15:02:19','2012-02-09 15:02:19'),(52,'Tamires Felix Ferreira','2011-06-01',NULL,1,'1987-08-30',2,'São  João da Barra','Rio de janeiro',0,'Estrada Campos Barra  Barrinha,nº 511-cep 28230.000',1,'22299.444-4','121816517-01','135491540310','','','4655','20479602225-01',1,2,NULL,NULL,NULL,1,'',NULL,0,'',0,0,1,0,NULL,0,'',4,' Não tem',0,65,'2012-02-09 15:03:22','2012-02-09 15:03:22'),(53,'Juliana Da Silveira Rodrigues Lemos','2012-02-16',NULL,1,'1979-02-04',0,'Campos dos Goytacazes','Rio de Janeiro',0,'Sitio Oasis s/n Deserto Feliz cep 28230000',0,'','','','','','','',3,16,10,4,NULL,0,'',NULL,0,'',0,0,0,0,NULL,1,'',4,'quilombolas',0,12,'2012-02-16 13:06:14','2012-02-16 13:11:27'),(54,'Sandra','2012-02-17',NULL,0,'2012-02-17',0,'','',0,'',0,'','','','','','','',0,NULL,NULL,NULL,NULL,7,'',NULL,0,'',0,NULL,0,0,NULL,0,'',0,'',0,10,'2012-02-17 15:12:33','2012-02-17 15:12:33');
/*!40000 ALTER TABLE `educators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educators_education_exps`
--

DROP TABLE IF EXISTS `educators_education_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educators_education_exps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `years` int(11) DEFAULT NULL,
  `popular_education_years` int(11) DEFAULT NULL,
  `educator_id` int(11) DEFAULT NULL,
  `education_exp_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educators_education_exps`
--

LOCK TABLES `educators_education_exps` WRITE;
/*!40000 ALTER TABLE `educators_education_exps` DISABLE KEYS */;
INSERT INTO `educators_education_exps` VALUES (1,0,0,2,1),(2,3,1,3,1),(3,3,4,6,2),(4,0,4,7,3),(5,0,4,8,3),(6,3,3,9,1),(7,3,4,10,2),(8,3,0,11,1),(9,0,4,12,1),(10,3,4,13,1),(11,3,3,14,1),(12,3,0,15,1),(13,3,0,16,1),(14,3,0,17,1),(15,NULL,NULL,17,2),(16,3,0,5,1),(17,0,2,4,3),(18,2,4,19,1),(19,2,4,20,1),(20,NULL,NULL,20,2),(21,3,0,21,1),(22,NULL,NULL,21,2),(23,1,0,22,1),(24,NULL,NULL,22,2),(25,3,0,23,1),(26,2,4,24,2),(27,0,0,25,1),(28,3,2,26,2),(29,3,4,27,1),(30,0,4,28,1),(31,3,4,30,1),(32,0,4,33,1),(33,2,0,39,1),(34,3,0,41,1),(35,3,0,46,1),(36,0,0,47,3),(37,2,2,48,2),(38,0,0,49,1),(39,1,0,51,1),(40,1,0,52,1);
/*!40000 ALTER TABLE `educators_education_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educators_professional_exps`
--

DROP TABLE IF EXISTS `educators_professional_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educators_professional_exps` (
  `educator_id` int(11) DEFAULT NULL,
  `professional_exp_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educators_professional_exps`
--

LOCK TABLES `educators_professional_exps` WRITE;
/*!40000 ALTER TABLE `educators_professional_exps` DISABLE KEYS */;
INSERT INTO `educators_professional_exps` VALUES (1,4,'2011-06-22 17:05:00','2011-06-22 17:05:00'),(2,4,'2011-06-22 17:58:05','2011-06-22 17:58:05'),(3,3,'2012-01-19 16:50:58','2012-01-19 16:50:58'),(6,3,'2012-01-19 16:57:16','2012-01-19 16:57:16'),(7,3,'2012-01-19 17:01:16','2012-01-19 17:01:16'),(8,3,'2012-01-19 17:05:34','2012-01-19 17:05:34'),(11,4,'2012-01-19 17:19:27','2012-01-19 17:19:27'),(12,4,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(13,4,'2012-01-19 17:33:19','2012-01-19 17:33:19'),(14,4,'2012-01-19 17:37:56','2012-01-19 17:37:56'),(15,5,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(17,4,'2012-01-19 17:53:04','2012-01-19 17:53:04'),(5,4,'2012-01-24 12:51:18','2012-01-24 12:51:18'),(4,5,'2012-01-24 13:04:07','2012-01-24 13:04:07'),(19,3,'2012-01-24 13:08:20','2012-01-24 13:08:20'),(20,3,'2012-01-24 13:14:25','2012-01-24 13:14:25'),(21,3,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(21,4,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(22,2,'2012-01-24 13:24:01','2012-01-24 13:24:01'),(22,3,'2012-01-24 13:24:01','2012-01-24 13:24:01'),(24,3,'2012-01-24 13:48:34','2012-01-24 13:48:34'),(25,3,'2012-01-24 13:51:59','2012-01-24 13:51:59'),(27,4,'2012-01-24 14:00:41','2012-01-24 14:00:41'),(28,3,'2012-01-24 14:05:01','2012-01-24 14:05:01'),(30,3,'2012-01-24 14:26:37','2012-01-24 14:26:37'),(30,4,'2012-01-24 14:26:37','2012-01-24 14:26:37'),(33,5,'2012-02-06 14:49:26','2012-02-06 14:49:26'),(34,5,'2012-02-06 14:51:31','2012-02-06 14:51:31'),(36,4,'2012-02-06 14:58:52','2012-02-06 14:58:52'),(41,4,'2012-02-08 18:10:06','2012-02-08 18:10:06'),(32,4,'2012-02-09 12:18:57','2012-02-09 12:18:57'),(47,4,'2012-02-09 12:31:04','2012-02-09 12:31:04'),(49,4,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(51,4,'2012-02-09 15:02:19','2012-02-09 15:02:19'),(52,4,'2012-02-09 15:03:22','2012-02-09 15:03:22'),(37,3,'2012-02-16 12:46:32','2012-02-16 12:46:32'),(53,4,'2012-02-16 13:11:27','2012-02-16 13:11:27');
/*!40000 ALTER TABLE `educators_professional_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `educators_rooms`
--

DROP TABLE IF EXISTS `educators_rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `educators_rooms` (
  `educator_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `educators_rooms`
--

LOCK TABLES `educators_rooms` WRITE;
/*!40000 ALTER TABLE `educators_rooms` DISABLE KEYS */;
INSERT INTO `educators_rooms` VALUES (3,1,'2012-01-19 14:24:37','2012-01-19 14:24:37'),(4,3,'2012-01-19 14:37:42','2012-01-19 14:37:42'),(17,4,'2012-01-19 18:01:04','2012-01-19 18:01:04'),(16,2,'2012-01-19 18:01:25','2012-01-19 18:01:25'),(15,5,'2012-01-19 18:01:46','2012-01-19 18:01:46'),(12,6,'2012-01-19 18:02:11','2012-01-19 18:02:11'),(11,7,'2012-01-19 18:02:35','2012-01-19 18:02:35'),(9,9,'2012-01-19 18:03:13','2012-01-19 18:03:13'),(8,10,'2012-01-19 18:03:34','2012-01-19 18:03:34'),(18,11,'2012-01-19 18:03:55','2012-01-19 18:03:55'),(6,12,'2012-01-19 18:04:14','2012-01-19 18:04:14'),(7,13,'2012-01-19 18:04:39','2012-01-19 18:04:39'),(13,14,'2012-01-19 18:05:11','2012-01-19 18:05:11'),(14,15,'2012-01-19 18:05:33','2012-01-19 18:05:33'),(5,16,'2012-01-24 14:11:39','2012-01-24 14:11:39'),(19,18,'2012-01-24 14:13:18','2012-01-24 14:13:18'),(20,19,'2012-01-24 14:14:02','2012-01-24 14:14:02'),(21,20,'2012-01-24 14:14:29','2012-01-24 14:14:29'),(22,21,'2012-01-24 14:17:01','2012-01-24 14:17:01'),(23,22,'2012-01-24 14:17:40','2012-01-24 14:17:40'),(24,23,'2012-01-24 14:18:15','2012-01-24 14:18:15'),(25,24,'2012-01-24 14:18:40','2012-01-24 14:18:40'),(26,25,'2012-01-24 14:19:13','2012-01-24 14:19:13'),(27,26,'2012-01-24 14:19:56','2012-01-24 14:19:56'),(28,27,'2012-01-24 14:20:23','2012-01-24 14:20:23'),(29,28,'2012-01-24 14:20:46','2012-01-24 14:20:46'),(30,29,'2012-01-24 14:27:10','2012-01-24 14:27:10'),(1,35,'2012-02-06 15:03:16','2012-02-06 15:03:16'),(38,40,'2012-02-08 18:02:44','2012-02-08 18:02:44'),(44,38,'2012-02-08 18:31:55','2012-02-08 18:31:55'),(45,38,'2012-02-08 18:34:24','2012-02-08 18:34:24'),(49,44,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(50,48,'2012-02-09 15:04:41','2012-02-09 15:04:41'),(33,38,'2012-02-09 17:51:39','2012-02-09 17:51:39'),(46,50,'2012-02-16 12:45:37','2012-02-16 12:45:37'),(53,30,'2012-02-16 13:06:14','2012-02-16 13:06:14');
/*!40000 ALTER TABLE `educators_rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `partner_resources`
--

DROP TABLE IF EXISTS `partner_resources`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `partner_resources` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `resource` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `partner_resources`
--

LOCK TABLES `partner_resources` WRITE;
/*!40000 ALTER TABLE `partner_resources` DISABLE KEYS */;
INSERT INTO `partner_resources` VALUES (1,'Infra-estrutura','2011-06-17 21:18:18','2011-06-17 21:18:18'),(2,'Mobiliário','2011-06-17 21:18:18','2011-06-17 21:18:18'),(3,'Recursos Humanos','2011-06-17 21:18:18','2011-06-17 21:18:18'),(4,'Infra-estrutura','2012-02-10 16:43:35','2012-02-10 16:43:35'),(5,'Mobiliário','2012-02-10 16:43:35','2012-02-10 16:43:35'),(6,'Recursos Humanos','2012-02-10 16:43:35','2012-02-10 16:43:35');
/*!40000 ALTER TABLE `partner_resources` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `periods`
--

DROP TABLE IF EXISTS `periods`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `periods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `day_of_week` int(11) DEFAULT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `periods`
--

LOCK TABLES `periods` WRITE;
/*!40000 ALTER TABLE `periods` DISABLE KEYS */;
INSERT INTO `periods` VALUES (1,1,'15:00:00','21:30:00','2011-06-22 12:44:31','2011-06-22 12:44:31',NULL),(2,1,'18:30:00','21:30:00','2011-06-22 13:04:33','2011-06-22 13:04:33',NULL),(3,1,'13:00:00','13:00:00','2011-06-22 13:30:21','2011-06-22 13:30:21',NULL),(4,3,'18:00:00','21:00:00','2011-06-22 13:42:35','2011-06-22 13:42:35',NULL),(5,1,'15:00:00','18:00:00','2011-06-22 14:11:35','2011-06-22 14:11:35',NULL),(6,1,'18:30:00','21:30:00','2011-06-22 14:18:18','2011-06-22 14:18:18',NULL),(7,1,'18:00:00','21:00:00','2011-06-22 14:25:14','2011-06-22 14:25:14',NULL),(8,1,'18:00:00','21:00:00','2011-06-22 14:49:23','2011-06-22 14:49:23',NULL),(9,1,'18:00:00','21:00:00','2011-06-22 15:11:47','2011-06-22 15:11:47',NULL),(10,1,'18:00:00','21:00:00','2011-06-22 15:18:56','2011-06-22 15:18:56',NULL),(11,1,'15:00:00','18:00:00','2011-06-22 15:30:03','2012-02-16 12:06:51',NULL),(12,1,'15:00:00','18:00:00','2011-06-22 15:34:59','2012-02-16 13:21:42',NULL),(13,1,'18:00:00','21:00:00','2011-06-22 16:35:48','2011-06-22 16:35:48',NULL),(14,1,'18:00:00','21:00:00','2011-06-22 16:38:24','2011-06-22 16:38:24',NULL),(15,1,'18:30:00','21:30:00','2012-01-09 16:37:17','2012-01-27 03:33:29',NULL),(16,1,'18:00:00','21:00:00','2012-01-19 14:20:26','2012-01-19 14:20:26',NULL),(17,2,'18:00:00','21:00:00','2012-01-19 14:20:26','2012-01-19 16:13:22',NULL),(18,1,'18:00:00','21:00:00','2012-01-19 14:34:15','2012-01-19 14:34:15',NULL),(19,2,'18:00:00','21:00:00','2012-01-19 14:34:15','2012-01-27 03:22:24',NULL),(20,1,'18:30:00','21:30:00','2012-01-19 14:39:10','2012-01-27 03:18:27',NULL),(21,1,'17:30:00','20:30:00','2012-01-19 14:40:36','2012-01-27 03:29:57',NULL),(22,1,'18:40:00','21:40:00','2012-01-19 14:41:36','2012-01-27 03:08:09',NULL),(23,1,'17:30:00','20:30:00','2012-01-19 16:05:45','2012-01-19 16:05:45',NULL),(24,3,'17:30:00','20:30:00','2012-01-19 16:05:45','2012-01-19 16:05:45',NULL),(25,3,'18:00:00','21:00:00','2012-01-19 16:13:22','2012-01-19 16:13:22',NULL),(26,1,'18:40:00','21:40:00','2012-01-19 16:18:59','2012-01-19 16:18:59',NULL),(27,3,'18:40:00','21:40:00','2012-01-19 16:18:59','2012-01-19 16:18:59',NULL),(28,1,'18:30:00','21:30:00','2012-01-19 16:22:31','2012-01-19 16:22:31',NULL),(29,3,'18:30:00','21:30:00','2012-01-19 16:22:31','2012-01-19 16:22:31',NULL),(30,1,'18:40:00','21:40:00','2012-01-19 16:24:26','2012-01-19 16:24:26',NULL),(31,3,'18:40:00','21:40:00','2012-01-19 16:24:26','2012-01-19 16:24:26',NULL),(32,1,'18:20:00','21:20:00','2012-01-19 16:26:55','2012-01-19 16:26:55',NULL),(33,4,'18:20:00','21:20:00','2012-01-19 16:26:55','2012-01-19 16:26:55',NULL),(34,1,'18:30:00','21:30:00','2012-01-19 16:29:49','2012-01-19 16:29:49',NULL),(35,3,'18:30:00','21:30:00','2012-01-19 16:29:49','2012-01-19 16:29:49',NULL),(36,1,'18:30:00','21:30:00','2012-01-19 16:31:56','2012-01-19 16:31:56',NULL),(37,3,'18:30:00','21:30:00','2012-01-19 16:31:56','2012-01-19 16:31:56',NULL),(38,1,'18:30:00','21:30:00','2012-01-19 16:33:47','2012-01-19 16:33:47',NULL),(39,3,'18:30:00','21:30:00','2012-01-19 16:33:47','2012-01-19 16:33:47',NULL),(40,1,'18:00:00','21:00:00','2012-01-19 16:35:41','2012-01-19 16:35:41',NULL),(41,3,'18:00:00','21:00:00','2012-01-19 16:35:41','2012-01-19 16:35:41',NULL),(42,1,'18:00:00','21:00:00','2012-01-19 16:38:01','2012-01-19 16:38:01',NULL),(43,4,'18:00:00','21:00:00','2012-01-19 16:38:01','2012-01-19 16:38:01',NULL),(44,1,'18:30:00','21:30:00','2012-01-19 16:40:25','2012-01-19 16:40:25',NULL),(45,3,'18:30:00','21:30:00','2012-01-19 16:40:25','2012-01-19 16:40:25',NULL),(46,1,'18:30:00','21:30:00','2012-01-19 16:43:04','2012-01-19 16:43:04',NULL),(47,3,'18:30:00','21:30:00','2012-01-19 16:43:04','2012-01-19 16:43:04',NULL),(48,1,'18:00:00','21:00:00','2012-01-19 16:44:57','2012-01-19 16:44:57',NULL),(49,3,'18:00:00','21:00:00','2012-01-19 16:44:57','2012-01-19 16:44:57',NULL),(50,2,'17:30:00','20:30:00','2012-01-19 18:08:36','2012-01-19 18:08:36',NULL),(51,1,'18:00:00','21:00:00','2012-01-24 12:30:16','2012-01-27 03:24:56',NULL),(52,2,'18:00:00','21:00:00','2012-01-24 12:31:30','2012-01-27 03:27:12',NULL),(53,1,'12:00:00','12:00:00','2012-01-24 12:38:06','2012-01-24 12:38:06',NULL),(54,1,'18:30:00','21:30:00','2012-01-24 12:39:06','2012-01-27 03:36:08',NULL),(55,1,'18:30:00','21:30:00','2012-01-24 12:40:05','2012-01-27 03:31:41',NULL),(56,1,'18:00:00','21:00:00','2012-01-24 12:41:12','2012-01-27 03:11:02',NULL),(57,2,'18:00:00','21:00:00','2012-01-24 12:41:58','2012-01-27 03:13:35',NULL),(58,3,'18:30:00','21:30:00','2012-01-24 12:43:32','2012-01-27 03:20:43',NULL),(59,1,'18:00:00','21:00:00','2012-01-24 12:44:13','2012-01-27 03:15:48',NULL),(60,1,'18:30:00','21:30:00','2012-01-24 14:23:14','2012-01-27 03:04:11',NULL),(61,3,'18:30:00','21:30:00','2012-01-27 03:04:11','2012-01-27 03:04:11',NULL),(62,3,'18:00:00','21:00:00','2012-01-27 03:08:09','2012-01-27 03:08:09',NULL),(63,3,'18:00:00','21:00:00','2012-01-27 03:11:02','2012-01-27 03:11:02',NULL),(64,4,'18:00:00','21:00:00','2012-01-27 03:13:35','2012-01-27 03:13:35',NULL),(65,3,'18:00:00','21:00:00','2012-01-27 03:15:48','2012-01-27 03:15:48',NULL),(66,3,'18:30:00','21:30:00','2012-01-27 03:18:27','2012-01-27 03:18:27',NULL),(67,5,'18:30:00','21:30:00','2012-01-27 03:20:43','2012-01-27 03:20:43',NULL),(68,3,'18:00:00','21:00:00','2012-01-27 03:22:24','2012-01-27 03:22:24',NULL),(69,3,'18:00:00','21:00:00','2012-01-27 03:24:56','2012-01-27 03:24:56',NULL),(70,4,'18:00:00','21:00:00','2012-01-27 03:27:12','2012-01-27 03:27:12',NULL),(71,3,'17:30:00','20:30:00','2012-01-27 03:29:57','2012-01-27 03:29:57',NULL),(72,3,'18:30:00','21:30:00','2012-01-27 03:31:41','2012-01-27 03:31:41',NULL),(73,3,'18:30:00','21:30:00','2012-01-27 03:33:29','2012-01-27 03:33:29',NULL),(74,3,'18:30:00','21:30:00','2012-01-27 03:36:08','2012-01-27 03:36:08',NULL),(76,1,'18:30:00','21:30:00','2012-02-06 14:35:26','2012-02-08 12:58:56',NULL),(77,1,'18:00:00','21:00:00','2012-02-06 14:37:06','2012-02-06 14:37:06',NULL),(78,1,'14:00:00','21:00:00','2012-02-06 14:39:31','2012-02-06 14:39:31',NULL),(79,2,'16:30:00','20:00:00','2012-02-06 16:23:00','2012-02-06 16:23:00',NULL),(80,1,'15:00:00','18:00:00','2012-02-06 16:54:02','2012-02-06 16:54:02',NULL),(81,1,'12:00:00','12:00:00','2012-02-08 12:16:33','2012-02-08 12:16:33',NULL),(82,1,'12:00:00','12:00:00','2012-02-08 12:53:52','2012-02-08 12:53:52',NULL),(83,1,'16:00:00','16:00:00','2012-02-08 16:33:38','2012-02-08 16:33:38',NULL),(84,1,'18:00:00','21:30:00','2012-02-08 17:37:23','2012-02-08 17:37:23',NULL),(85,1,'18:00:00','21:00:00','2012-02-08 17:38:46','2012-02-08 17:38:46',NULL),(86,1,'18:00:00','21:30:00','2012-02-08 17:39:24','2012-02-08 17:39:24',NULL),(87,1,'18:00:00','21:30:00','2012-02-08 17:40:35','2012-02-08 17:40:35',NULL),(88,1,'18:00:00','21:30:00','2012-02-08 17:41:45','2012-02-08 17:41:45',NULL),(89,1,'17:00:00','17:00:00','2012-02-08 17:43:19','2012-02-08 17:43:19',NULL),(90,1,'17:00:00','17:00:00','2012-02-08 17:43:48','2012-02-08 17:43:48',NULL),(91,1,'15:00:00','18:00:00','2012-02-08 17:53:05','2012-02-08 17:53:05',NULL),(92,1,'13:00:00','16:00:00','2012-02-08 17:53:10','2012-02-09 13:56:27',NULL),(93,1,'18:00:00','21:00:00','2012-02-09 12:19:08','2012-02-09 12:19:08',NULL),(94,2,'15:00:00','18:00:00','2012-02-09 12:55:33','2012-02-09 14:32:42',NULL),(95,1,'14:00:00','17:00:00','2012-02-09 13:32:30','2012-02-09 13:51:09',NULL),(96,2,'18:00:00','21:00:00','2012-02-09 13:44:40','2012-02-16 12:42:41',NULL),(97,3,'18:00:00','21:00:00','2012-02-09 13:51:09','2012-02-09 13:51:09',NULL),(98,2,'13:00:00','16:00:00','2012-02-09 13:56:27','2012-02-16 13:26:53',NULL),(99,2,'15:00:00','18:00:00','2012-02-09 14:05:14','2012-02-16 13:21:42',NULL),(100,4,'18:00:00','21:10:00','2012-02-09 14:08:41','2012-02-09 14:08:41',NULL),(102,1,'18:00:00','21:00:00','2012-02-09 14:21:05','2012-02-09 14:21:05',NULL),(103,1,'14:00:00','17:00:00','2012-02-09 14:21:05','2012-02-16 13:09:39',NULL),(104,1,'18:30:00','21:30:00','2012-02-09 14:35:27','2012-02-09 14:35:27',NULL),(105,1,'15:00:00','18:00:00','2012-02-10 12:27:52','2012-02-10 12:27:52',NULL),(106,2,'18:30:00','21:30:00','2012-02-10 14:04:27','2012-02-10 14:04:27',NULL),(107,3,'15:00:00','18:00:00','2012-02-16 12:06:51','2012-02-16 12:06:51',NULL),(108,3,'15:00:00','18:00:00','2012-02-16 12:09:06','2012-02-16 13:21:42',NULL),(109,3,'13:00:00','16:00:00','2012-02-16 12:29:10','2012-02-16 13:26:53',NULL),(110,1,'18:00:00','21:00:00','2012-02-16 12:35:29','2012-02-16 12:35:29',NULL),(111,5,'18:00:00','21:00:00','2012-02-16 12:41:19','2012-02-16 12:41:19',NULL),(112,1,'12:00:00','12:00:00','2012-02-16 12:42:41','2012-02-16 12:42:41',NULL),(113,3,'18:30:00','21:30:00','2012-02-16 12:43:10','2012-02-16 12:43:10',NULL),(114,1,'18:00:00','21:00:00','2012-02-16 13:21:42','2012-02-23 12:59:10',NULL),(115,3,'18:00:00','21:00:00','2012-02-16 13:26:53','2012-02-16 13:26:53',NULL),(116,2,'18:00:00','21:00:00','2012-02-16 13:27:59','2012-02-23 12:59:10',NULL),(117,3,'18:00:00','21:00:00','2012-02-23 12:59:10','2012-02-23 12:59:10',NULL),(118,5,'18:00:00','21:00:00','2012-02-23 13:20:45','2012-02-23 13:20:45',NULL),(119,1,'15:00:00','15:00:00','2012-04-19 15:59:18','2012-04-19 15:59:18',38);
/*!40000 ALTER TABLE `periods` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phones`
--

DROP TABLE IF EXISTS `phones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phones` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dd` int(11) DEFAULT NULL,
  `number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone_type` int(11) DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `educator_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=218 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phones`
--

LOCK TABLES `phones` WRITE;
/*!40000 ALTER TABLE `phones` DISABLE KEYS */;
INSERT INTO `phones` VALUES (1,NULL,'9859-5410',NULL,7,NULL,NULL,NULL,'2011-06-22 14:25:14','2011-06-22 14:25:14'),(2,NULL,'9859-5410',NULL,8,NULL,NULL,NULL,'2011-06-22 14:49:23','2011-06-22 14:49:23'),(3,22,'9964-6631',NULL,9,NULL,NULL,NULL,'2011-06-22 15:11:47','2012-02-16 12:46:57'),(4,NULL,'9964-6631',NULL,10,NULL,NULL,NULL,'2011-06-22 15:18:56','2011-06-22 15:18:56'),(5,22,'2789-6225',0,NULL,NULL,6,NULL,'2012-01-19 16:57:16','2012-01-19 16:57:16'),(6,22,'9953-4004',1,NULL,NULL,6,NULL,'2012-01-19 16:57:16','2012-01-19 16:57:16'),(7,28,'9921-2044',1,NULL,NULL,7,NULL,'2012-01-19 17:01:16','2012-01-19 17:01:16'),(8,28,'9988-0314',0,NULL,NULL,8,NULL,'2012-01-19 17:05:34','2012-01-19 18:19:32'),(9,28,'9978-7087',1,NULL,NULL,8,NULL,'2012-01-19 17:05:34','2012-01-19 18:19:32'),(10,22,'2789-6127',0,NULL,NULL,9,NULL,'2012-01-19 17:09:32','2012-01-19 17:09:32'),(11,22,'9821-7961',1,NULL,NULL,9,NULL,'2012-01-19 17:09:32','2012-01-19 17:09:32'),(12,22,'2789-6762',2,NULL,NULL,9,NULL,'2012-01-19 17:09:32','2012-01-19 17:09:32'),(13,28,'3535-3096',0,NULL,NULL,10,NULL,'2012-01-19 17:13:25','2012-01-19 17:13:25'),(14,21,'7276-4699',1,NULL,NULL,10,NULL,'2012-01-19 17:13:25','2012-01-19 17:13:25'),(15,28,'9946-8194',1,NULL,NULL,11,NULL,'2012-01-19 17:19:27','2012-01-19 17:19:27'),(16,28,'3522-5852',0,NULL,NULL,12,NULL,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(17,28,'9959-9867',1,NULL,NULL,12,NULL,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(18,28,'9938-2105',2,NULL,NULL,12,NULL,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(19,28,'9884-0887',1,NULL,NULL,13,NULL,'2012-01-19 17:33:19','2012-01-19 17:33:19'),(20,28,'9924-8734',2,NULL,NULL,13,NULL,'2012-01-19 17:33:19','2012-01-19 17:33:19'),(21,28,'9904-9161',1,NULL,NULL,14,NULL,'2012-01-19 17:37:56','2012-01-19 17:37:56'),(22,22,'2789-6407',0,NULL,NULL,15,NULL,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(23,22,'9883-4143',1,NULL,NULL,15,NULL,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(24,22,'2789-6305',2,NULL,NULL,15,NULL,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(25,22,'2789-6582',0,NULL,NULL,16,NULL,'2012-01-19 17:48:42','2012-01-19 17:48:42'),(26,22,'9717-9777',1,NULL,NULL,16,NULL,'2012-01-19 17:48:42','2012-01-19 17:48:42'),(27,28,'3531-7070',0,NULL,NULL,17,NULL,'2012-01-19 17:53:04','2012-01-19 17:53:04'),(28,28,'9256-4414',1,NULL,NULL,17,NULL,'2012-01-19 17:53:04','2012-01-19 17:53:04'),(29,22,'9815-8992',1,NULL,NULL,19,NULL,'2012-01-24 13:08:20','2012-01-24 13:08:20'),(30,22,'2789-6426',0,NULL,NULL,20,NULL,'2012-01-24 13:14:25','2012-01-24 13:14:25'),(31,22,'9812-8346',1,NULL,NULL,20,NULL,'2012-01-24 13:14:25','2012-01-24 13:14:25'),(32,22,'2789-6426',0,NULL,NULL,21,NULL,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(33,22,'9812-8346',1,NULL,NULL,21,NULL,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(34,28,'9974-9025',1,NULL,NULL,22,NULL,'2012-01-24 13:24:01','2012-01-24 13:24:01'),(35,22,'2789-6515',0,NULL,NULL,23,NULL,'2012-01-24 13:28:48','2012-01-24 13:28:48'),(36,21,'9815-5629',1,NULL,NULL,24,NULL,'2012-01-24 13:48:34','2012-01-24 13:48:34'),(37,28,'9956-8315',1,NULL,NULL,25,NULL,'2012-01-24 13:51:59','2012-01-24 13:51:59'),(38,28,'9905-7332',1,NULL,NULL,26,NULL,'2012-01-24 13:55:31','2012-01-24 13:55:31'),(39,28,'9884-6283',1,NULL,NULL,27,NULL,'2012-01-24 14:00:41','2012-01-24 14:00:41'),(40,28,'3535-7157',2,NULL,NULL,27,NULL,'2012-01-24 14:00:41','2012-01-24 14:00:41'),(41,28,'9885-1972',1,NULL,NULL,28,NULL,'2012-01-24 14:05:01','2012-01-24 14:05:01'),(42,28,'3535-4000',2,NULL,NULL,28,NULL,'2012-01-24 14:05:01','2012-01-24 14:05:01'),(43,22,'2789-6235',0,NULL,NULL,29,NULL,'2012-01-24 14:08:41','2012-01-24 14:08:41'),(44,28,'3535-3114',0,NULL,NULL,30,NULL,'2012-01-24 14:26:37','2012-01-24 14:26:37'),(45,22,'98471208',0,NULL,3,NULL,NULL,'2012-02-06 13:57:42','2012-02-24 23:47:55'),(46,22,'98999650',0,NULL,NULL,32,NULL,'2012-02-06 14:30:07','2012-02-06 14:30:07'),(47,22,'98125322',1,NULL,NULL,32,NULL,'2012-02-06 14:30:07','2012-02-06 14:30:07'),(48,22,'98548111',2,NULL,NULL,32,NULL,'2012-02-06 14:30:07','2012-02-06 14:30:07'),(49,22,'98125322',NULL,47,NULL,NULL,NULL,'2012-02-06 14:39:31','2012-02-06 14:39:31'),(50,22,'98447279',0,NULL,NULL,33,NULL,'2012-02-06 14:49:26','2012-02-09 12:33:28'),(51,22,'990207172',1,NULL,NULL,33,NULL,'2012-02-06 14:49:26','2012-02-09 12:33:28'),(52,22,'98647877',0,NULL,NULL,34,NULL,'2012-02-06 14:51:31','2012-02-08 12:53:57'),(53,22,'99174964',1,NULL,NULL,34,NULL,'2012-02-06 14:51:31','2012-02-08 12:53:57'),(54,22,'99397259',1,NULL,NULL,35,NULL,'2012-02-06 14:57:57','2012-02-06 14:57:57'),(55,22,'98454014  / 99043711',2,NULL,NULL,35,NULL,'2012-02-06 14:57:57','2012-02-06 14:57:57'),(56,22,'97437707',0,NULL,NULL,36,NULL,'2012-02-06 14:58:52','2012-02-08 13:02:40'),(57,22,'99591065',NULL,48,NULL,NULL,NULL,'2012-02-06 16:23:00','2012-02-06 16:23:00'),(58,22,'97437707',NULL,49,NULL,NULL,NULL,'2012-02-06 16:54:02','2012-02-06 16:54:02'),(59,22,'98357610',0,NULL,NULL,NULL,2,'2012-02-08 15:20:03','2012-02-09 18:09:44'),(60,22,'81255404',1,NULL,NULL,NULL,5,'2012-02-08 15:35:03','2012-02-08 15:35:03'),(61,22,'97173697',0,NULL,NULL,NULL,6,'2012-02-08 15:38:13','2012-02-08 15:39:11'),(62,22,'99412221',1,NULL,NULL,NULL,8,'2012-02-08 15:41:20','2012-02-08 15:41:20'),(63,22,'99228574',0,NULL,NULL,NULL,9,'2012-02-08 15:43:59','2012-02-09 18:10:06'),(64,22,'99356413',0,NULL,NULL,NULL,11,'2012-02-08 15:45:20','2012-02-10 12:33:03'),(65,22,'27896666',0,NULL,NULL,NULL,12,'2012-02-08 15:48:17','2012-02-08 15:48:17'),(66,22,'99534997',0,NULL,NULL,NULL,13,'2012-02-08 15:50:47','2012-02-09 18:10:29'),(67,22,'98045523',1,NULL,NULL,NULL,16,'2012-02-08 15:58:52','2012-02-08 15:58:52'),(68,22,'99813468',1,NULL,NULL,NULL,19,'2012-02-08 16:00:26','2012-02-08 16:00:26'),(69,22,'99886491',0,NULL,NULL,NULL,20,'2012-02-08 16:03:00','2012-02-10 12:33:50'),(70,22,'99485050',1,NULL,NULL,NULL,24,'2012-02-08 16:08:47','2012-02-08 16:08:47'),(71,22,'98717339',1,NULL,NULL,NULL,25,'2012-02-08 16:09:41','2012-02-08 16:09:41'),(72,22,'98660322',2,NULL,NULL,NULL,27,'2012-02-08 16:15:06','2012-02-08 16:15:06'),(73,22,'98717339',0,NULL,NULL,NULL,29,'2012-02-08 16:18:38','2012-02-08 16:44:34'),(74,22,'98660322',0,NULL,NULL,NULL,31,'2012-02-08 16:22:27','2012-02-09 18:11:29'),(75,22,'99332957',0,NULL,NULL,NULL,32,'2012-02-08 16:28:16','2012-02-09 18:12:08'),(76,22,'98468074',1,NULL,NULL,NULL,33,'2012-02-08 16:28:30','2012-02-08 16:28:30'),(77,22,'99391053',1,NULL,NULL,NULL,36,'2012-02-08 16:33:21','2012-02-08 16:33:21'),(78,22,'99174964',0,NULL,NULL,NULL,37,'2012-02-08 16:37:07','2012-02-09 18:12:37'),(79,22,'98366870',0,NULL,NULL,NULL,40,'2012-02-08 16:48:32','2012-02-08 16:50:41'),(80,22,'98568693',0,NULL,NULL,NULL,44,'2012-02-08 17:09:08','2012-02-10 12:38:06'),(81,22,'98447791',0,NULL,NULL,NULL,47,'2012-02-08 17:21:54','2012-02-10 12:39:07'),(82,NULL,'022 99810458',NULL,53,NULL,NULL,NULL,'2012-02-08 17:37:23','2012-02-08 17:37:23'),(83,22,'99646631',NULL,54,NULL,NULL,NULL,'2012-02-08 17:38:46','2012-02-08 17:38:46'),(84,22,'97437622',0,NULL,NULL,NULL,50,'2012-02-08 17:38:50','2012-02-10 12:41:35'),(85,NULL,'022 99810458',NULL,55,NULL,NULL,NULL,'2012-02-08 17:39:24','2012-02-08 17:39:24'),(86,NULL,'022 99810458',NULL,56,NULL,NULL,NULL,'2012-02-08 17:40:35','2012-02-08 17:40:35'),(87,NULL,'022 99810458',NULL,57,NULL,NULL,NULL,'2012-02-08 17:41:45','2012-02-08 17:41:45'),(88,22,'99847447',NULL,61,NULL,NULL,NULL,'2012-02-08 17:53:10','2012-02-08 17:53:10'),(89,22,'98959460',0,NULL,NULL,NULL,51,'2012-02-08 17:55:56','2012-02-08 18:11:47'),(90,22,'98142080',0,NULL,NULL,39,NULL,'2012-02-08 17:56:32','2012-02-16 12:51:58'),(91,22,'98213116',1,NULL,NULL,40,NULL,'2012-02-08 18:05:52','2012-02-08 18:05:52'),(92,22,'27896505',2,NULL,NULL,40,NULL,'2012-02-08 18:05:52','2012-02-08 18:05:52'),(93,22,'98608375',0,NULL,NULL,NULL,52,'2012-02-08 18:06:59','2012-02-16 12:53:34'),(94,22,'98724618',0,NULL,NULL,NULL,53,'2012-02-08 18:08:38','2012-02-10 12:47:51'),(95,22,'27272533',0,NULL,NULL,41,NULL,'2012-02-08 18:10:06','2012-02-08 18:10:06'),(96,22,'99315324',1,NULL,NULL,41,NULL,'2012-02-08 18:10:06','2012-02-08 18:10:06'),(97,22,'99264914',1,NULL,NULL,NULL,54,'2012-02-08 18:11:37','2012-02-08 18:11:37'),(98,22,'98836808',0,NULL,NULL,NULL,55,'2012-02-08 18:15:26','2012-02-16 12:56:18'),(99,22,'99450497',1,NULL,NULL,42,NULL,'2012-02-08 18:17:39','2012-02-08 18:17:39'),(100,22,'27896505',2,NULL,NULL,42,NULL,'2012-02-08 18:17:39','2012-02-08 18:17:39'),(101,22,'98021820',1,NULL,NULL,NULL,56,'2012-02-08 18:18:36','2012-02-08 18:18:36'),(102,21,'84068133',0,NULL,NULL,NULL,57,'2012-02-08 18:21:52','2012-02-16 12:59:44'),(103,22,'99285066',1,NULL,NULL,NULL,58,'2012-02-08 18:24:36','2012-02-08 18:24:36'),(104,22,'27896505',0,NULL,NULL,43,NULL,'2012-02-08 18:26:38','2012-02-08 18:26:38'),(105,22,'99450497',1,NULL,NULL,43,NULL,'2012-02-08 18:26:38','2012-02-08 18:26:38'),(106,22,'98213116',2,NULL,NULL,43,NULL,'2012-02-08 18:26:38','2012-02-08 18:26:38'),(107,22,'98366870',0,NULL,NULL,NULL,59,'2012-02-08 18:30:18','2012-02-10 12:47:15'),(108,22,'27896505',0,NULL,NULL,44,NULL,'2012-02-08 18:31:55','2012-02-08 18:31:55'),(109,22,'99450497',1,NULL,NULL,44,NULL,'2012-02-08 18:31:55','2012-02-08 18:31:55'),(110,22,'98213116',2,NULL,NULL,44,NULL,'2012-02-08 18:31:55','2012-02-08 18:31:55'),(111,22,'98549494',1,NULL,NULL,NULL,60,'2012-02-08 18:32:49','2012-02-08 18:32:49'),(112,22,'27896505',0,NULL,NULL,45,NULL,'2012-02-08 18:34:24','2012-02-08 18:34:24'),(113,22,'99450497',1,NULL,NULL,45,NULL,'2012-02-08 18:34:24','2012-02-08 18:34:24'),(114,22,'98213116',2,NULL,NULL,45,NULL,'2012-02-08 18:34:24','2012-02-08 18:34:24'),(115,22,'97312473',1,NULL,NULL,NULL,61,'2012-02-08 18:39:19','2012-02-08 18:39:19'),(116,22,'99943506',1,NULL,NULL,NULL,62,'2012-02-08 18:39:22','2012-02-08 18:39:22'),(117,22,'98213116',1,NULL,NULL,NULL,64,'2012-02-08 18:48:16','2012-02-08 18:48:16'),(118,22,'99402614',1,NULL,NULL,NULL,65,'2012-02-08 18:49:10','2012-02-08 18:49:10'),(119,22,'98730684',1,NULL,NULL,NULL,67,'2012-02-08 18:57:08','2012-02-08 18:57:08'),(120,22,'98488748',0,NULL,NULL,NULL,69,'2012-02-08 18:57:50','2012-02-10 13:03:46'),(121,22,'99845810',1,NULL,NULL,NULL,71,'2012-02-08 19:03:11','2012-02-08 19:03:11'),(122,22,'99335235',1,NULL,NULL,NULL,73,'2012-02-08 19:04:45','2012-02-08 19:04:45'),(123,22,'99936821',0,NULL,NULL,NULL,74,'2012-02-08 19:09:31','2012-02-10 13:06:49'),(124,22,'99733065',1,NULL,NULL,NULL,75,'2012-02-08 19:10:20','2012-02-08 19:10:20'),(125,22,'27890662',0,NULL,NULL,NULL,76,'2012-02-08 19:10:33','2012-02-08 19:10:33'),(126,22,'99523230',1,NULL,NULL,NULL,78,'2012-02-08 19:14:58','2012-02-08 19:14:58'),(127,22,'98573576',0,NULL,NULL,NULL,79,'2012-02-08 19:16:27','2012-02-10 13:09:08'),(128,22,'27896445',0,NULL,NULL,NULL,80,'2012-02-08 19:19:46','2012-02-08 19:19:46'),(129,22,'99127053',1,NULL,NULL,NULL,81,'2012-02-08 19:20:27','2012-02-08 19:20:27'),(130,22,'98153367',1,NULL,NULL,NULL,84,'2012-02-09 12:03:58','2012-02-09 12:03:58'),(131,22,'98213116',0,NULL,NULL,NULL,86,'2012-02-09 12:08:33','2012-02-10 12:53:23'),(132,22,'98677677',0,NULL,NULL,46,NULL,'2012-02-09 12:15:23','2012-02-09 16:44:00'),(133,22,'99591065',1,NULL,NULL,46,NULL,'2012-02-09 12:15:23','2012-02-09 16:44:00'),(134,22,'2789.6225 /(22)99877689',NULL,62,NULL,NULL,NULL,'2012-02-09 12:19:08','2012-02-09 12:19:08'),(135,22,'98421119',1,NULL,NULL,NULL,91,'2012-02-09 12:22:26','2012-02-09 12:22:26'),(136,22,'98677677',0,NULL,NULL,NULL,92,'2012-02-09 12:27:48','2012-02-09 13:45:51'),(137,22,'99877689',0,NULL,NULL,47,NULL,'2012-02-09 12:31:04','2012-02-09 12:32:43'),(138,22,'27891919',0,NULL,NULL,NULL,95,'2012-02-09 12:34:27','2012-02-09 12:34:27'),(139,22,'98222913',0,NULL,NULL,NULL,99,'2012-02-09 12:41:41','2012-02-10 13:15:44'),(140,22,'99537960',1,NULL,NULL,NULL,100,'2012-02-09 12:45:46','2012-02-09 12:45:46'),(141,22,'27896505',0,NULL,NULL,NULL,101,'2012-02-09 12:46:16','2012-02-09 12:46:16'),(142,22,'99224863',0,NULL,NULL,NULL,102,'2012-02-09 12:55:29','2012-02-09 13:41:25'),(143,22,'99117266  / 98924184',NULL,63,NULL,NULL,NULL,'2012-02-09 12:55:33','2012-02-09 12:55:33'),(144,22,'27896333',0,NULL,NULL,NULL,103,'2012-02-09 12:59:22','2012-02-09 12:59:22'),(145,22,'98213116',0,NULL,NULL,NULL,104,'2012-02-09 13:00:25','2012-02-10 12:54:46'),(146,22,'98317483',0,NULL,NULL,NULL,105,'2012-02-09 13:01:02','2012-02-10 13:17:00'),(147,22,'97515520',0,NULL,NULL,NULL,106,'2012-02-09 13:05:30','2012-02-09 13:50:07'),(148,22,'99131601',1,NULL,NULL,NULL,107,'2012-02-09 13:05:46','2012-02-09 13:05:46'),(149,22,'99922774',0,NULL,NULL,NULL,109,'2012-02-09 13:11:51','2012-02-09 16:44:58'),(150,22,'99224863',1,NULL,NULL,NULL,116,'2012-02-09 13:26:41','2012-02-09 13:26:41'),(151,22,'97345124',1,NULL,NULL,NULL,117,'2012-02-09 13:30:08','2012-02-09 13:30:08'),(152,22,'99428981',1,NULL,NULL,48,NULL,'2012-02-09 13:30:42','2012-02-09 13:30:42'),(153,22,'27890007',NULL,64,NULL,NULL,NULL,'2012-02-09 13:32:30','2012-02-09 13:32:30'),(154,22,'99572039',NULL,64,NULL,NULL,NULL,'2012-02-09 13:32:30','2012-02-09 13:32:30'),(155,22,'97138874',1,NULL,NULL,NULL,118,'2012-02-09 13:32:38','2012-02-09 13:32:38'),(156,22,'99866181',1,NULL,NULL,NULL,119,'2012-02-09 13:37:03','2012-02-09 13:37:03'),(157,22,'27896734',0,NULL,NULL,NULL,121,'2012-02-09 13:40:14','2012-02-09 13:40:14'),(158,22,'27890007',0,NULL,NULL,49,NULL,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(159,22,'99714982',1,NULL,NULL,49,NULL,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(160,22,'27890007',2,NULL,NULL,49,NULL,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(161,NULL,'27223409',NULL,65,NULL,NULL,NULL,'2012-02-09 14:08:41','2012-02-09 14:08:41'),(162,NULL,'99832842',NULL,65,NULL,NULL,NULL,'2012-02-09 14:08:41','2012-02-09 14:08:41'),(163,22,'98045614',0,NULL,NULL,NULL,124,'2012-02-09 14:18:56','2012-02-09 14:47:11'),(164,31,'2199542278',NULL,66,NULL,NULL,NULL,'2012-02-09 14:21:05','2012-02-09 14:21:05'),(165,22,'27890092',0,NULL,NULL,NULL,126,'2012-02-09 14:27:29','2012-02-09 14:27:29'),(166,22,'27890157',0,NULL,NULL,NULL,127,'2012-02-09 14:35:42','2012-02-09 14:35:42'),(167,22,'98518268',0,NULL,NULL,NULL,128,'2012-02-09 14:36:01','2012-02-09 14:47:38'),(168,22,'99077316',0,NULL,NULL,51,NULL,'2012-02-09 15:02:19','2012-02-16 13:12:52'),(169,22,'99545196',1,NULL,NULL,51,NULL,'2012-02-09 15:02:19','2012-02-16 13:12:52'),(170,22,'99077316',1,NULL,NULL,52,NULL,'2012-02-09 15:03:22','2012-02-09 15:03:22'),(171,22,'99545196',2,NULL,NULL,52,NULL,'2012-02-09 15:03:22','2012-02-09 15:03:22'),(172,22,'98325084',1,NULL,NULL,NULL,135,'2012-02-09 16:06:16','2012-02-09 16:06:16'),(173,22,'99047731',0,NULL,NULL,NULL,136,'2012-02-09 16:07:34','2012-02-10 12:18:17'),(174,22,'99782626',0,NULL,NULL,NULL,138,'2012-02-09 16:16:43','2012-02-09 16:27:15'),(175,22,'98325084',1,NULL,NULL,NULL,139,'2012-02-09 16:18:45','2012-02-09 16:18:45'),(176,22,'98883526',0,NULL,NULL,NULL,140,'2012-02-09 16:19:38','2012-02-10 12:24:03'),(177,22,'98846989',0,NULL,NULL,NULL,142,'2012-02-09 16:28:25','2012-02-10 12:20:12'),(178,22,'98434058',1,NULL,NULL,NULL,143,'2012-02-09 16:33:36','2012-02-09 16:33:36'),(179,22,'99238450',0,NULL,NULL,NULL,144,'2012-02-09 16:39:01','2012-02-10 12:27:05'),(180,22,'98017284',0,NULL,NULL,NULL,145,'2012-02-09 16:41:01','2012-02-09 17:49:46'),(181,22,'99081870',1,NULL,NULL,NULL,146,'2012-02-09 16:48:04','2012-02-09 16:48:04'),(182,22,'98223640',1,NULL,NULL,NULL,150,'2012-02-09 17:31:50','2012-02-09 17:31:50'),(183,22,'99184473',1,NULL,NULL,NULL,151,'2012-02-09 17:34:35','2012-02-09 17:34:35'),(184,22,'99991992',1,NULL,NULL,NULL,152,'2012-02-09 17:37:36','2012-02-09 17:37:36'),(185,22,'99991992',1,NULL,NULL,NULL,153,'2012-02-09 17:37:43','2012-02-09 17:37:43'),(186,22,'97150998',0,NULL,NULL,NULL,154,'2012-02-09 17:41:19','2012-02-10 13:04:11'),(187,22,'99457969',0,NULL,NULL,NULL,155,'2012-02-09 17:44:21','2012-02-23 13:36:34'),(188,22,'98011128',1,NULL,NULL,NULL,157,'2012-02-09 17:47:12','2012-02-09 17:47:12'),(189,22,'27899853',0,NULL,NULL,NULL,161,'2012-02-09 17:57:43','2012-02-09 17:57:43'),(190,22,'94694185',0,NULL,NULL,NULL,165,'2012-02-09 18:08:56','2012-02-10 13:06:57'),(191,22,'98665564',1,NULL,NULL,NULL,171,'2012-02-09 18:32:36','2012-02-09 18:32:36'),(192,22,'99019313',1,NULL,NULL,NULL,172,'2012-02-09 18:35:24','2012-02-09 18:35:24'),(193,22,'99985466',1,NULL,NULL,NULL,173,'2012-02-09 18:41:18','2012-02-09 18:41:18'),(194,22,'98357435',0,NULL,NULL,NULL,175,'2012-02-09 18:45:38','2012-02-09 18:53:49'),(195,22,'27895423',0,NULL,NULL,NULL,176,'2012-02-09 18:49:13','2012-02-09 18:49:13'),(196,22,'27895257',0,NULL,NULL,NULL,177,'2012-02-09 18:52:53','2012-02-09 18:52:53'),(197,22,'27895257',0,NULL,NULL,NULL,179,'2012-02-09 18:59:34','2012-02-09 18:59:34'),(198,22,'99641849',0,NULL,NULL,NULL,180,'2012-02-09 19:04:26','2012-02-09 19:06:34'),(199,22,'98567081',0,NULL,NULL,NULL,181,'2012-02-09 19:16:03','2012-02-10 16:56:34'),(200,22,'98691093',1,NULL,NULL,NULL,182,'2012-02-10 12:02:49','2012-02-10 12:02:49'),(201,22,'98624590',1,NULL,NULL,NULL,185,'2012-02-10 12:21:10','2012-02-10 12:21:10'),(202,28,'3535-8059',0,NULL,NULL,NULL,186,'2012-02-10 12:22:27','2012-02-10 12:22:27'),(203,28,'9969-7725 ',1,NULL,NULL,NULL,187,'2012-02-10 12:31:30','2012-02-10 12:31:30'),(204,28,'9964-3473',1,NULL,NULL,NULL,189,'2012-02-10 12:37:26','2012-02-10 12:37:26'),(205,28,'9953-0932',1,NULL,NULL,NULL,193,'2012-02-10 12:46:07','2012-02-10 12:46:07'),(206,22,'97086309',1,NULL,NULL,NULL,194,'2012-02-10 12:49:30','2012-02-10 12:49:30'),(207,28,'9979-9948',1,NULL,NULL,NULL,195,'2012-02-10 12:51:00','2012-02-10 12:51:00'),(208,22,'99840034',1,NULL,NULL,NULL,197,'2012-02-10 12:56:01','2012-02-10 12:56:01'),(209,28,'3535-8091',0,NULL,NULL,NULL,199,'2012-02-10 13:02:05','2012-02-10 13:02:05'),(210,28,'9956-3352',1,NULL,NULL,NULL,200,'2012-02-10 13:06:59','2012-02-10 13:06:59'),(211,28,'9916-0839',1,NULL,NULL,NULL,201,'2012-02-10 13:10:37','2012-02-10 13:10:37'),(212,22,'98159344',0,NULL,NULL,NULL,203,'2012-02-10 14:45:15','2012-02-10 14:46:09'),(213,28,'9926-7041',0,NULL,NULL,NULL,204,'2012-05-07 16:13:45','2012-05-07 16:14:36'),(214,28,'9947-5301',1,NULL,NULL,NULL,206,'2012-05-07 16:19:57','2012-05-07 16:19:57'),(215,28,'9885-8880',1,NULL,NULL,NULL,207,'2012-05-07 16:22:33','2012-05-07 16:22:33'),(216,28,'9992-8292',0,NULL,NULL,NULL,208,'2012-05-07 16:24:26','2012-05-07 16:24:50'),(217,28,'9947-5301',1,NULL,NULL,NULL,209,'2012-05-07 16:27:58','2012-05-07 16:27:58');
/*!40000 ALTER TABLE `phones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presence_lists`
--

DROP TABLE IF EXISTS `presence_lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presence_lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `presence_at` date DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presence_lists`
--

LOCK TABLES `presence_lists` WRITE;
/*!40000 ALTER TABLE `presence_lists` DISABLE KEYS */;
/*!40000 ALTER TABLE `presence_lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `presence_lists_students`
--

DROP TABLE IF EXISTS `presence_lists_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `presence_lists_students` (
  `presence_list_id` int(11) DEFAULT NULL,
  `student_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `presence_lists_students`
--

LOCK TABLES `presence_lists_students` WRITE;
/*!40000 ALTER TABLE `presence_lists_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `presence_lists_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `professional_exps`
--

DROP TABLE IF EXISTS `professional_exps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `professional_exps` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `area` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `professional_exps`
--

LOCK TABLES `professional_exps` WRITE;
/*!40000 ALTER TABLE `professional_exps` DISABLE KEYS */;
INSERT INTO `professional_exps` VALUES (1,'Na agricultura','2011-06-17 21:18:18','2011-06-17 21:18:18'),(2,'Na indústria','2011-06-17 21:18:18','2011-06-17 21:18:18'),(3,'No comércio','2011-06-17 21:18:18','2011-06-17 21:18:18'),(4,'Outros','2011-06-17 21:18:18','2011-06-17 21:18:18'),(5,'Nenhuma anterior','2011-06-17 21:18:18','2011-06-17 21:18:18'),(6,'Na agricultura','2012-02-10 16:43:36','2012-02-10 16:43:36'),(7,'Na indústria','2012-02-10 16:43:36','2012-02-10 16:43:36'),(8,'No comércio','2012-02-10 16:43:36','2012-02-10 16:43:36'),(9,'Outros','2012-02-10 16:43:36','2012-02-10 16:43:36'),(10,'Nenhuma anterior','2012-02-10 16:43:36','2012-02-10 16:43:36');
/*!40000 ALTER TABLE `professional_exps` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rooms`
--

DROP TABLE IF EXISTS `rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rooms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rooms`
--

LOCK TABLES `rooms` WRITE;
/*!40000 ALTER TABLE `rooms` DISABLE KEYS */;
INSERT INTO `rooms` VALUES (1,'Santo Eduardo','2011-08-02 17:15:20','2012-06-15 18:34:47',1),(2,'Jaqueira','2011-08-02 17:15:54','2012-06-15 18:35:02',1),(3,'Santa Fé - 01','2012-01-19 14:37:42','2012-01-19 14:40:19',NULL),(4,'Jaqueira','2012-01-19 18:01:04','2012-01-19 18:01:04',NULL),(5,'Jaqueira','2012-01-19 18:01:46','2012-01-19 18:01:46',NULL),(6,'Presidente Kennedy','2012-01-19 18:02:11','2012-01-19 18:02:11',NULL),(7,'Presidente Kennedy','2012-01-19 18:02:35','2012-01-19 18:02:35',NULL),(8,'Presidente Kennedy','2012-01-19 18:02:53','2012-01-19 18:02:53',NULL),(9,'Leonel','2012-01-19 18:03:13','2012-01-19 18:03:13',NULL),(10,'São Paulo','2012-01-19 18:03:34','2012-01-19 18:03:34',NULL),(11,'Santa Lúcia','2012-01-19 18:03:55','2012-01-19 18:03:55',NULL),(12,'Galos','2012-01-19 18:04:14','2012-01-19 18:04:14',NULL),(13,'Monte Belo','2012-01-19 18:04:39','2012-01-19 18:04:39',NULL),(14,'São Bento','2012-01-19 18:05:11','2012-01-19 18:05:11',NULL),(15,'Pernambuco','2012-01-19 18:05:33','2012-01-19 18:05:33',NULL),(16,'Cantinho do Céu - 01','2012-01-24 14:11:39','2012-01-24 14:28:03',NULL),(18,'Cantinho do Céu - 02','2012-01-24 14:13:18','2012-01-24 14:13:18',NULL),(19,'Jiboia - 01','2012-01-24 14:14:02','2012-01-24 14:14:02',NULL),(20,'Jiboia - 02','2012-01-24 14:14:29','2012-01-24 14:14:29',NULL),(21,'Jiboia - 03','2012-01-24 14:17:01','2012-01-24 14:17:01',NULL),(22,'Jiboia - 04','2012-01-24 14:17:40','2012-01-24 14:17:40',NULL),(23,'Mineirinho','2012-01-24 14:18:15','2012-01-24 14:18:15',NULL),(24,'Gromogol','2012-01-24 14:18:40','2012-01-24 14:18:40',NULL),(25,'Santana Feliz','2012-01-24 14:19:13','2012-01-24 14:19:13',NULL),(26,'São Salvador - 01','2012-01-24 14:19:56','2012-01-24 14:28:27',NULL),(27,'Praia de Marobá','2012-01-24 14:20:23','2012-01-24 14:20:23',NULL),(28,'Cacimbinha','2012-01-24 14:20:46','2012-01-24 14:20:46',NULL),(29,'São Salvador - 02','2012-01-24 14:27:10','2012-01-24 14:27:10',NULL),(30,'Deserto Feliz','2012-02-06 14:41:15','2012-02-09 12:25:35',NULL),(31,'Morro Alegre','2012-02-06 14:56:32','2012-02-06 14:56:32',NULL),(34,'Guaxindiba','2012-02-06 15:02:39','2012-02-06 15:02:39',NULL),(35,'Vilão','2012-02-06 15:03:16','2012-02-16 12:46:54',NULL),(37,'Ponto de Cacimbas','2012-02-08 17:40:25','2012-02-08 17:40:25',NULL),(38,'(1ª Igreja e Capatazia)','2012-02-08 17:54:33','2012-04-19 15:59:18',1),(39,'São Francisco de Itabapoana','2012-02-08 17:55:00','2012-02-08 17:55:00',NULL),(40,'Ladeira das Pedras','2012-02-08 18:02:44','2012-02-08 18:02:44',NULL),(41,'Gargaú','2012-02-09 11:58:09','2012-02-09 11:58:09',NULL),(42,'Barra de Itabapoana(Curumim)','2012-02-09 12:20:46','2012-02-09 12:20:46',NULL),(43,'Praça João Pessoa (Boca da Areia)','2012-02-09 13:08:27','2012-02-09 14:39:30',NULL),(44,'Buena','2012-02-09 13:34:30','2012-02-09 13:34:30',NULL),(45,'Manguinhos','2012-02-09 14:14:33','2012-02-09 14:14:33',NULL),(46,'Barrinha','2012-02-09 14:22:30','2012-02-09 14:22:30',NULL),(48,'Praça João Pessoa  - Natanny','2012-02-09 15:04:41','2012-02-09 15:04:41',NULL),(49,'Barra do Itabapoana (capatazia)','2012-02-10 12:41:12','2012-02-10 12:41:12',NULL),(50,'Gargaú ','2012-02-16 12:45:37','2012-06-15 18:46:01',1);
/*!40000 ALTER TABLE `rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  UNIQUE KEY `unique_schema_migrations` (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20110608172853'),('20110608200905'),('20110608200916'),('20110608200928'),('20110608200939'),('20110608200956'),('20110608201007'),('20110608201018'),('20110608203833'),('20110609191726'),('20110609194919'),('20110609195058'),('20110609204539'),('20110613150114'),('20110613150401'),('20110613161401'),('20110613163055'),('20110613163717'),('20110615023053'),('20110615023316'),('20110615163055'),('20110615163717'),('20110617005020'),('20110617145922'),('20111202001707'),('20111215211748'),('20111215211831'),('20120209224436'),('20120209231739'),('20120210085303'),('20120302045201'),('20120302045953'),('20120306211816');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seat_types`
--

DROP TABLE IF EXISTS `seat_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seat_types` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `seat_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seat_types`
--

LOCK TABLES `seat_types` WRITE;
/*!40000 ALTER TABLE `seat_types` DISABLE KEYS */;
INSERT INTO `seat_types` VALUES (1,'Cadeiras',NULL,'2011-06-17 21:18:17','2011-06-17 21:18:17'),(2,'Bancos de madeira',NULL,'2011-06-17 21:18:17','2011-06-17 21:18:17'),(3,'Cadeiras escolares',NULL,'2011-06-17 21:18:17','2011-06-17 21:18:17'),(4,'Cadeiras universitárias',NULL,'2011-06-17 21:18:17','2011-06-17 21:18:17'),(5,'Outros',NULL,'2011-06-17 21:18:17','2011-06-17 21:18:17'),(6,'Não tem mobiliário',NULL,'2011-06-17 21:18:18','2011-06-17 21:18:18'),(7,'Cadeiras',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35'),(8,'Bancos de madeira',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35'),(9,'Cadeiras escolares',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35'),(10,'Cadeiras universitárias',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35'),(11,'Outros',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35'),(12,'Não tem mobiliário',NULL,'2012-02-10 16:43:35','2012-02-10 16:43:35');
/*!40000 ALTER TABLE `seat_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_participations`
--

DROP TABLE IF EXISTS `social_participations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `social_participations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `union_movement` tinyint(1) DEFAULT NULL,
  `union_movement_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `popular_social_movement` tinyint(1) DEFAULT NULL,
  `ong` tinyint(1) DEFAULT NULL,
  `ong_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `educator_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_participations`
--

LOCK TABLES `social_participations` WRITE;
/*!40000 ALTER TABLE `social_participations` DISABLE KEYS */;
INSERT INTO `social_participations` VALUES (1,0,'',0,0,'',1,NULL,'2012-01-19 14:22:13','2012-01-19 14:22:13'),(2,0,'',0,0,'',NULL,3,'2012-01-19 14:24:13','2012-01-19 14:24:14'),(3,0,'',0,0,'',NULL,4,'2012-01-19 14:35:31','2012-01-19 14:35:31'),(4,0,'',0,0,'',2,NULL,'2012-01-19 14:36:21','2012-01-19 14:36:22'),(5,0,'',0,0,'',NULL,5,'2012-01-19 14:46:14','2012-01-19 14:46:15'),(6,0,'',0,0,'',NULL,6,'2012-01-19 16:57:16','2012-01-19 16:57:16'),(7,0,'',0,0,'',NULL,7,'2012-01-19 17:01:16','2012-01-19 17:01:16'),(8,0,'',0,0,'',NULL,8,'2012-01-19 17:05:34','2012-01-19 17:05:34'),(9,0,'',0,0,'',NULL,9,'2012-01-19 17:09:32','2012-01-19 17:09:32'),(10,0,'',0,0,'',NULL,10,'2012-01-19 17:13:25','2012-01-19 17:13:25'),(11,0,'',0,0,'',NULL,11,'2012-01-19 17:19:27','2012-01-19 17:19:27'),(12,0,'',0,0,'',NULL,12,'2012-01-19 17:24:58','2012-01-19 17:24:58'),(13,0,'',0,0,'',NULL,13,'2012-01-19 17:33:19','2012-01-19 17:33:19'),(14,0,'',0,0,'',NULL,14,'2012-01-19 17:37:56','2012-01-19 17:37:56'),(15,0,'',0,0,'',NULL,15,'2012-01-19 17:42:52','2012-01-19 17:42:52'),(16,0,'',0,0,'',NULL,16,'2012-01-19 17:48:42','2012-01-19 17:48:43'),(17,0,'',0,0,'',NULL,17,'2012-01-19 17:53:04','2012-01-19 17:53:04'),(18,0,'',0,0,'',NULL,18,'2012-01-19 17:56:01','2012-01-19 17:56:01'),(19,0,'',0,0,'',NULL,19,'2012-01-24 13:08:20','2012-01-24 13:08:20'),(20,0,'',0,0,'',NULL,20,'2012-01-24 13:14:25','2012-01-24 13:14:25'),(21,0,'',0,0,'',NULL,21,'2012-01-24 13:19:13','2012-01-24 13:19:13'),(22,0,'',0,0,'',NULL,22,'2012-01-24 13:24:01','2012-01-24 13:24:01'),(23,1,'Sindicato dos Professores',0,0,'',NULL,23,'2012-01-24 13:28:48','2012-01-24 13:28:48'),(24,0,'',0,0,'',NULL,24,'2012-01-24 13:48:34','2012-01-24 13:48:34'),(25,0,'',0,0,'',NULL,25,'2012-01-24 13:51:59','2012-01-24 13:51:59'),(26,0,'',0,0,'',NULL,26,'2012-01-24 13:55:31','2012-01-24 13:55:31'),(27,0,'',0,0,'',NULL,27,'2012-01-24 14:00:41','2012-01-24 14:00:41'),(28,0,'',0,0,'',NULL,28,'2012-01-24 14:05:01','2012-01-24 14:05:01'),(29,0,'',0,0,'',NULL,29,'2012-01-24 14:08:41','2012-01-24 14:08:41'),(30,0,'',0,0,'',NULL,30,'2012-01-24 14:26:37','2012-01-24 14:26:37'),(31,0,'',1,1,'Várias',3,NULL,'2012-02-06 13:57:42','2012-02-06 13:57:42'),(32,0,'',0,0,'',NULL,31,'2012-02-06 14:19:29','2012-02-06 14:19:29'),(33,0,'',0,0,'',NULL,32,'2012-02-06 14:30:07','2012-02-06 14:30:08'),(34,0,'',0,0,'',NULL,33,'2012-02-06 14:49:26','2012-02-06 14:49:26'),(35,0,'',0,0,'',NULL,34,'2012-02-06 14:51:31','2012-02-06 14:51:31'),(36,0,'',0,0,'',NULL,35,'2012-02-06 14:57:57','2012-02-06 14:57:57'),(37,0,'',0,0,'',NULL,36,'2012-02-06 14:58:52','2012-02-06 14:58:52'),(38,0,'',0,0,'',4,NULL,'2012-02-07 23:41:07','2012-02-07 23:41:07'),(39,0,'',0,0,'',5,NULL,'2012-02-07 23:42:19','2012-02-07 23:42:19'),(40,0,'',0,0,'',NULL,37,'2012-02-07 23:44:12','2012-02-07 23:44:12'),(41,0,'',0,0,'',6,NULL,'2012-02-07 23:46:49','2012-02-07 23:46:49'),(42,0,'',0,0,'',NULL,38,'2012-02-08 17:56:22','2012-02-08 17:56:22'),(43,0,'',0,0,'',NULL,39,'2012-02-08 17:56:32','2012-02-08 17:56:32'),(44,0,'',0,0,'',NULL,40,'2012-02-08 18:05:52','2012-02-08 18:05:52'),(45,0,'',0,0,'',NULL,41,'2012-02-08 18:10:06','2012-02-08 18:10:06'),(46,0,'',0,0,'',NULL,42,'2012-02-08 18:17:39','2012-02-08 18:17:39'),(47,0,'',0,0,'',NULL,43,'2012-02-08 18:26:38','2012-02-08 18:26:38'),(48,0,'',0,0,'',NULL,44,'2012-02-08 18:31:55','2012-02-08 18:31:56'),(49,0,'',0,0,'',NULL,45,'2012-02-08 18:34:24','2012-02-08 18:34:24'),(50,0,'',0,0,'',NULL,46,'2012-02-09 12:15:23','2012-02-09 12:15:23'),(51,0,'',0,0,'',NULL,47,'2012-02-09 12:31:04','2012-02-09 12:31:04'),(52,0,'',0,0,'',NULL,48,'2012-02-09 13:30:42','2012-02-09 13:30:42'),(53,0,'',1,0,'',NULL,49,'2012-02-09 13:47:39','2012-02-09 13:47:39'),(54,0,'',0,0,'',NULL,50,'2012-02-09 14:37:45','2012-02-09 14:37:46'),(55,0,'',1,0,'',NULL,51,'2012-02-09 15:02:19','2012-02-09 15:02:20'),(56,0,'',1,0,'',NULL,52,'2012-02-09 15:03:22','2012-02-09 15:03:22'),(57,0,'',0,0,'',NULL,53,'2012-02-16 13:06:14','2012-02-16 13:06:14'),(58,0,'',0,0,'',NULL,54,'2012-02-17 15:12:33','2012-02-17 15:12:33');
/*!40000 ALTER TABLE `social_participations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sign_up_date_on` date DEFAULT NULL,
  `class_start_date_on` date DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ethnicity` int(11) DEFAULT NULL,
  `hometown` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zone` int(11) DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `civil_status` int(11) DEFAULT NULL,
  `education_level` int(11) DEFAULT NULL,
  `actual_condition` int(11) DEFAULT NULL,
  `profession` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `actual_occupation` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `worker_situation` int(11) DEFAULT NULL,
  `worker_situation_type` int(11) DEFAULT NULL,
  `house` int(11) DEFAULT NULL,
  `house_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `house_type` int(11) DEFAULT NULL,
  `special_need` tinyint(1) DEFAULT NULL,
  `special_need_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `religion` int(11) DEFAULT NULL,
  `religion_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `observations` text COLLATE utf8_unicode_ci,
  `educator_id` int(11) DEFAULT NULL,
  `core_id` int(11) DEFAULT NULL,
  `room_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=210 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (2,'2011-03-19','2012-02-08','Cirlene souza barrozo',5,1,'2011-06-02',0,'São francisco de Itabapoana','Rio de janeiro',0,'R:Pereira de miranda s/ nº,Marro Alegre   cep:28230-000',0,5,2,'Doméstica','Do lar',3,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 15:20:03','2012-02-09 18:09:44'),(3,'2011-04-06','2011-06-09','Marilda Santos',3,1,'1969-04-01',0,'Saõ joão da Barra','RJ',2,'Casas Populares-Barra de Itabapoana, São Francisco de Itabapoana.Cep:28230.000',0,7,2,'-','Do lar',3,1,0,'',NULL,0,'',1,'','',33,44,38,'2012-02-08 15:20:29','2012-02-09 18:01:11'),(4,'2011-04-06','2011-06-09','Olivelma de Oliveira dos Santos',3,1,'1969-10-10',4,'Saõ joão da Barra','RJ',2,'Casas Populares-Barra de Itabapoana, São Francisco de Itabapoana.Cep:28230.000',0,7,2,'-','Do lar',3,1,0,'',NULL,0,'',1,'','',33,44,38,'2012-02-08 15:28:33','2012-02-09 18:04:36'),(5,'2011-04-18','2011-04-18','Salvadora Maria Gomes Teixeira',4,1,'1963-04-01',2,'São francisco de Itabapoana','Rio de janeiro',0,'Rodovia Afonso Celso nº 22 ,Morro Alegre ',1,6,1,'Doméstica','',1,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 15:35:03','2012-02-08 15:35:03'),(6,'2011-05-01','2012-02-08','Joel Francisco de Lima',4,0,'1953-02-14',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',0,5,2,'lavrador','lavrador',1,1,0,'',NULL,0,'',0,'','frequentou até a primeira série quando criança mas não sabe quase nada',32,12,30,'2012-02-08 15:38:13','2012-02-08 15:39:11'),(7,'2011-02-04','2011-06-01','Alcino Alves dos Santos',4,0,'1966-07-05',0,'Saõ joão da Barra','RJ',2,'Rua Nova S/ N°-Barra de Itabapoana, São francisco.Cep:2830.000',0,7,2,'Pedreiro','Pedreiro',1,4,0,'',NULL,0,'',0,'','',33,44,38,'2012-02-08 15:38:20','2012-02-09 18:05:44'),(8,'2012-05-06','2011-02-08','João Batista da Mata',5,0,'1939-04-02',0,'São Francisco de Itabapoana','Rio de Janeiro',2,'Guaxindiba',3,6,1,'Carpinteiro','Comerciante',2,2,0,'',NULL,0,'',1,'','',37,45,34,'2012-02-08 15:41:20','2012-02-08 15:41:20'),(9,'2011-03-19','2011-06-02','Maria da Penha Monteiro Ferreira',4,0,'1963-11-04',0,'São francisco de Itabapoana','Rio de janeiro',0,'R:Projetada ,nº2 Morro Alegre cep 28230-000',1,6,2,'','Do lar',3,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 15:43:59','2012-02-09 18:10:06'),(10,'2011-09-26','2011-06-01','Mateus de Lima dos Santos',1,0,'1994-12-17',2,'Sao Francisco de Itabapoana','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',1,6,1,'trabalhador rural','desempregado',3,2,0,'',NULL,0,'',1,'','',32,12,30,'2012-02-08 15:44:06','2012-02-08 15:44:06'),(11,'2011-04-10','2011-04-18','Eliete soares',3,1,'1955-12-09',2,'São francisco de itabapoana','Rio de Janeiro',0,'Ultíma rua casa branca s/nº cep: 28230-000',1,5,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-08 15:45:20','2012-02-16 12:55:24'),(12,'2011-06-28','2011-06-29','Alclimedes Gomes Batista',4,0,'1963-11-01',4,'Saõ joão da Barra','RJ',2,'Tiburcio Barreto N°285- Barra de Itabapoana, São Francisco de Itabapoana. Cep:28230.000',1,7,2,'_','Peixeiro',1,4,0,'',NULL,0,'',0,'','',33,44,38,'2012-02-08 15:48:17','2012-02-09 18:06:11'),(13,'2011-03-19','2011-06-02','Maria Luzia Souza Borges',4,1,'1959-12-13',2,'São francisco de Itabapoana','Rio de janeiro',0,'R:Pereira de miranda s/ nº, 1 ,Marro Alegre   cep:28230-000',1,6,2,'Doméstica','',1,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 15:50:47','2012-02-09 18:10:29'),(14,'2011-05-01','2011-06-06','Zenildo dos Santos',4,0,'1956-10-21',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'lavrador','lavrador',1,2,2,'',NULL,0,'',0,'','',32,47,30,'2012-02-08 15:53:47','2012-02-08 15:53:47'),(15,'2011-04-04','2011-06-01','Jorge Velasco Viana',4,0,'1951-12-03',0,'Saõ joão da Barra','RJ',2,'Rua Nova S/ N°-Barra de Itabapoana, São francisco.Cep:2830.000',0,7,2,'-','Desempregado',3,2,0,'',NULL,0,'',1,'','O alfabatizador parou de estudar por motivo de saúde.',33,44,38,'2012-02-08 15:55:16','2012-02-09 18:06:45'),(16,'2011-05-02','2011-06-27','Josiel Pinto Carneiro',3,0,'1974-04-01',0,'São João da Barra','Rio de Janeiro',2,'Guaxindiba',3,7,1,'Pescador','Pescador',2,1,0,'',NULL,0,'',0,'','',37,45,34,'2012-02-08 15:58:52','2012-02-08 15:58:52'),(17,'2011-04-30','2011-06-08','José Carlos Neves Cruz',3,0,'1967-08-15',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'lavrador','lavrador',1,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 15:59:41','2012-02-08 15:59:41'),(18,'2011-04-04','2011-06-01','Moises Viana',3,0,'1975-11-30',0,'Saõ joão da Barra','RJ',2,'Rua Nova S/ N°-Barra de Itabapoana, São francisco.Cep:2830.000',0,7,2,'Pescador','Pescador',1,4,0,'',NULL,0,'',1,'','',33,44,38,'2012-02-08 16:00:04','2012-02-09 18:07:13'),(19,'2011-06-21','2012-02-08','Ivanilda Gomes da Silva Velasco',4,1,'1965-03-30',2,'Campos dos Goitacazes','Rio de janeiro',0,'R:Projetada ,nº1, Morro Alegre cep 28230-000',1,6,1,'Doméstica','',1,1,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 16:00:26','2012-02-08 16:00:26'),(20,'2011-04-05','2011-04-18','Izaltina Correia Martins',5,1,'1928-02-13',0,'São francisco de itabapoana','Rio de Janeiro',0,'Ultíma rua casa branca snº próximo a casa da Vera cep 28230-000',2,5,2,'',' Aposentado',4,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-08 16:03:00','2012-02-16 13:06:53'),(21,'2011-03-21','2011-06-06','Osmar José Caldeira da Cruz',3,0,'1980-07-26',0,'São francisco de Itabapoana','Rio de janeiro',0,'R:Projetada ,s/nº , Morro Alegre cep 28230-000',0,7,1,'','',1,1,0,'',NULL,NULL,'',0,'','',34,46,31,'2012-02-08 16:06:30','2012-02-08 16:06:30'),(22,'2011-05-01','2011-06-08','Luciano Carlos Gomes da Silva',3,0,'1973-11-16',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',1,7,2,'lavrador','lavrador',1,2,2,'',NULL,0,'',0,'','',32,12,30,'2012-02-08 16:07:28','2012-02-08 16:07:28'),(23,'2011-07-30','2011-07-30','Manoel Gonçalves Faria',4,0,'1951-11-04',0,'Saõ joão da Barra','RJ',2,'Tiburcio Barreto N°38- Barra de Itabapoana, São Francisco de Itabapoana. Cep:28230.000',0,5,2,'Lavrador ','Coveiro',1,2,0,'',NULL,0,'Visão',0,'','',33,44,38,'2012-02-08 16:07:54','2012-02-09 18:07:57'),(25,'2011-06-13','2011-07-07','Perciliana Santos de Souza',4,0,'1952-01-20',0,'São Francisco de Itabapoana','Rio de Janeiro',2,'',0,5,2,'Doméstica','Do lar',4,2,0,'',NULL,0,'',0,'','',37,45,34,'2012-02-08 16:09:41','2012-02-08 16:09:41'),(26,'2011-04-06','2011-06-09','Maria das Neves Aleixo da Silva',4,1,'1951-05-01',0,'Saõ joão da Barra','RJ',2,'Casas Populares-Barra de Itabapoana, São Francisco de Itabapoana.Cep:28230.000',0,7,2,'-','Zeladora',1,2,0,'',NULL,0,'',1,'','',33,44,38,'2012-02-08 16:12:54','2012-02-09 18:09:06'),(27,'2011-05-09','2011-05-09','Elisangela Marcelino',2,1,'1991-11-04',2,'São francisco de Itabapoana','Rio de janeiro',0,'Rodovia Afonso Celso s/nº ,Morro Alegre',4,7,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',34,46,31,'2012-02-08 16:15:06','2012-02-08 16:15:06'),(28,'2011-04-06','2011-06-09','Elizielma de Oliveira',3,1,'1976-11-02',4,'Saõ joão da Barra','RJ',0,'Casas Populares-Barra de Itabapoana, São Francisco de Itabapoana.Cep:28230.000',1,5,2,'-','Do lar',3,2,0,'',NULL,0,'',1,'','',33,44,38,'2012-02-08 16:18:23','2012-02-09 18:08:29'),(29,'2011-06-13','2011-06-27','Ivan Ferreira de Souza',5,0,'1946-11-19',2,'São Francisco de Itabapoana','Rio de Janeiro',2,'Guaxindiba',0,5,1,'Pescador','Pescador',2,2,0,'',NULL,0,'',0,'','',37,45,34,'2012-02-08 16:18:38','2012-02-08 16:44:34'),(30,'2011-05-20','2011-06-06','Lauricio de Souza Carvalho',3,0,'1966-04-20',2,'Sao Francisco de Itabapoana','Rio de Janeiro',0,'Fazenda da Penha terceiro distrito de São Francisco de Itabapoana',3,7,2,'trabalhador rural','trabalhador rural',1,1,2,'',NULL,0,'',1,'','',32,11,30,'2012-02-08 16:22:18','2012-02-08 16:22:18'),(31,'2011-05-09','2011-05-09','Sebastião Cordeiro Marcelino',4,0,'1961-02-27',4,'São francisco de Itabapoana','Rio de janeiro',0,'Rodovia Afonso Celso s/nº ,Morro Alegre',1,7,2,'Tratorista','',1,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 16:22:27','2012-02-09 18:11:29'),(32,'2011-03-19','2011-04-04','Gesônia Câmara dos Santos',4,1,'1967-11-07',2,'São francisco de Itabapoana','Rio de janeiro',0,'R:Projetada ,s/nº , Morro Alegre cep 28230-000',0,6,2,'Doméstica','',1,2,0,'',NULL,0,'',0,'','',34,46,31,'2012-02-08 16:28:16','2012-02-09 18:12:08'),(33,'2011-08-22','2011-08-22','José Amaro Firmo de Almeida',4,0,'1958-07-22',0,'São Francisco de Itabapoana','Rio de Janeiro',2,'Guaxindiba',1,5,2,'Pescador','',3,2,2,'',NULL,0,'',1,'','',37,45,34,'2012-02-08 16:28:30','2012-02-08 16:28:30'),(34,'2011-05-01','2011-06-06','Maria Benedita Lima da Silva',4,0,'1959-02-14',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',0,5,1,'lavradora','lavradora',1,1,0,'',NULL,0,'',0,'','',32,12,30,'2012-02-08 16:28:52','2012-02-08 16:28:52'),(35,'2011-05-08','2011-05-11','Lenilson Barreto de Oliveira',4,0,'1963-08-16',0,'São francisco de itabapoana','Rio de Janeiro',0,'Perto da Igreja Pentecostal s/n cep 28230.000',1,7,2,'','Trabalhador Rural',3,2,0,'',NULL,0,'',0,'','',1,49,35,'2012-02-08 16:32:16','2012-02-10 12:36:18'),(36,'2011-06-11','2011-06-27','Jordani Inácio Cruz',3,0,'1975-03-22',2,'São Francisco de Itabapoana','Rio de Janeiro',2,'Guaxindiba',0,5,2,'Pedreiro','Pedreiro',1,1,0,'',NULL,0,'',1,'','',37,45,34,'2012-02-08 16:33:21','2012-02-08 16:33:21'),(37,'2011-05-23','2011-05-23','Maria d aPenha Inacio Alvarenga Santos Raymundo',4,1,'1964-03-07',2,'São francisco de Itabapoana','Rio de janeiro',0,'Rodovia Afonso Celso s/nº ,Morro Alegre',0,5,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',34,46,31,'2012-02-08 16:37:07','2012-02-09 18:12:37'),(38,'2011-06-28','2011-06-27','Jocilia Conceição da Silva',3,1,'1971-07-15',0,'Sao Francisco de Itabapoana','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,6,1,'lavradora','lavradora',1,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 16:41:11','2012-02-08 16:41:11'),(39,'2011-08-08','2011-08-08','Maria Antonia Lima dos Santos',4,1,'1963-10-05',2,'Sao Francisco de Itabapoana','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',0,6,1,'merendeira','merendeira',1,1,0,'',NULL,0,'',0,'','',32,12,30,'2012-02-08 16:47:27','2012-02-08 16:47:27'),(41,'2011-06-20','2011-06-20','Alcino Francisco dos Santos',5,0,'1942-06-14',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',2,7,2,'','aposentado',4,1,0,'',NULL,0,'',0,'','',32,12,30,'2012-02-08 16:57:09','2012-02-08 17:04:59'),(42,'2011-05-01','2011-06-29','Ermando dos Santos',5,0,'1931-12-12',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,1,'','aposentado',4,1,0,'',NULL,0,'',0,'','',32,47,30,'2012-02-08 17:04:25','2012-02-08 17:04:25'),(43,'2011-09-26','2011-09-20','Idalina Porto da Silva',4,1,'1960-03-25',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',32,47,30,'2012-02-08 17:08:39','2012-02-08 17:08:39'),(44,'2011-04-18','2011-04-18','Maria Luiza Alves da Silva',5,1,'1948-06-03',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Principal  S/Nº Enfrente ao bar da Giseli,CEP 28230.000',0,5,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',1,49,35,'2012-02-08 17:09:08','2012-02-08 17:09:08'),(45,'2011-06-30','2011-09-19','Izabel de Lima',4,1,'1954-12-28',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 17:14:58','2012-02-08 17:14:58'),(46,'2011-05-01','2011-06-27','Nilcinéia Gomes Chagas',3,1,'1967-11-29',3,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',0,6,1,'','do lar',3,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 17:18:46','2012-02-08 17:18:46'),(47,'2011-05-14','2011-06-14','Liberato Luiz da Silva',5,0,'1935-03-18',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Principal  S/Nº Enfrente ao bar da Giseli,CEP 28230.000',0,7,2,'','Aposentado',4,2,0,'',NULL,0,'',1,'','',1,49,35,'2012-02-08 17:21:54','2012-02-08 17:21:54'),(48,'2011-04-30','2011-06-08','Zenilda Anastácio',4,1,'1955-04-08',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 17:25:02','2012-02-08 17:25:02'),(49,'2011-05-01','2011-06-27','Ana Claudia Lima',3,1,'2011-08-15',2,'São João da Barra','Rio de Janeiro',0,'Rj 204 Estrada Deserto Feliz. Deserto Feliz. São Francisco de Itabapona Rj',4,7,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',32,11,30,'2012-02-08 17:31:23','2012-02-08 17:31:23'),(50,'2011-04-05','2011-04-18','Leni da Costa Caetano',3,1,'1964-12-25',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Principal S/N°,cep 28230.000',2,5,2,'','Do lar',3,2,0,'',NULL,0,'',6,'','',1,49,35,'2012-02-08 17:38:50','2012-02-08 17:38:50'),(51,'2011-04-05','2012-04-18','Francisca Pereira de  Amorim',3,1,'1973-10-04',2,'Antonina do Norte','Ceará',0,'Rua Principal S/N ,enfrente ao bar da LENI cep 28230.000',1,5,1,'','Do lar',3,2,0,'',NULL,0,'',6,'','',1,49,35,'2012-02-08 17:55:56','2012-02-08 18:11:47'),(52,'2011-03-25','2011-04-18','Valdeia de Souza Brito',4,1,'1964-01-23',2,'São francisco de Itabapoana','RJ',0,'Estrada de Santa Luzia- Ponto de Cacimbas N°86 Cep:28230.000',1,5,2,'Costureira','Costureira',1,4,0,'',NULL,0,'',1,'','',39,54,8,'2012-02-08 18:06:59','2012-02-16 12:53:34'),(53,'2011-05-10','2011-05-10','Zelina da Conceição',3,1,'1969-02-10',2,'Campos dos Goytacazes','Rio de Janeiro',0,'Perto da Igreja Pentecostal s/n cep 28230.000',0,5,1,'','Do lar',3,2,0,'',NULL,0,'',6,'','',1,49,35,'2012-02-08 18:08:38','2012-02-08 18:08:38'),(54,'2011-05-31','2011-06-02','Alciméia Monteiro Alvarenga da Silva',4,1,'1968-06-25',0,'São João da Barra','Estado do Rio de Janeiro',0,'Rodovia Simão Mansur S/ nº - Ladeira das Pedras',0,5,1,'Doméstica','',3,2,0,'',NULL,0,'',0,'','',38,56,40,'2012-02-08 18:11:37','2012-02-08 18:11:37'),(55,'2011-03-25','2011-04-18','Romario de Souza Monteiro',4,0,'1964-01-03',2,'São francisco de Itabapoana','RJ',0,'Rua  Estrada de Santa Luzia - Ponto de Cacimbas N°86 Cep:28230.000',1,7,2,'agricultor','Trabalhador rural',1,2,0,'',NULL,0,'',1,'','',39,54,8,'2012-02-08 18:15:26','2012-02-16 12:56:18'),(57,'2011-03-26','2011-04-18','Marise Fernandes Gomes',5,1,'1945-02-13',4,'São francisco de Itabapoana','RJ',0,'Loteamento Novo-Ponto de Cacimbas S/ N° Cep:28230.000',2,7,1,'-','Do lar',4,1,0,'',NULL,0,'',1,'','',39,54,8,'2012-02-08 18:21:52','2012-02-16 12:59:44'),(59,'2011-04-10','2011-04-18','Veralicia Correia Dias',3,1,'1976-06-29',2,'Linhares','ES',0,'Rua Projetada C ,s/nº cep 28230.000',1,5,1,'Doméstica','Doméstica',1,2,0,'',NULL,0,'',0,'','',1,49,35,'2012-02-08 18:30:18','2012-02-10 12:47:15'),(60,'2011-03-16','2011-04-18','Maria Jose  do Nascimento Queiroz',3,1,'1980-12-14',0,'Porto Calvo','Alagoas',0,'Rua Rodovia Simão Mansur- Ponto de Cacimbas S/ N° Cep:28230.000',0,7,2,'-','Do lar',1,1,0,'',NULL,0,'',1,'','',39,54,37,'2012-02-08 18:32:49','2012-02-08 18:32:49'),(61,'2011-03-25','2011-04-18','Margareth Gonçalves dos Santos Tavares',3,1,'1970-12-06',4,'São francisco de Itabapoana','RJ',0,'Rua Gerônimo Gesteira Passo- Ponto deCacimbas Cep:28230.000',0,5,2,'-','Zeladora da igerja',1,1,0,'',NULL,0,'',1,'','',39,54,37,'2012-02-08 18:39:19','2012-02-08 18:39:19'),(63,'2011-04-05','2011-04-18','Emilio Faria de Souza',5,0,'1941-09-13',2,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Principal S/N°,cep 28230.000',2,5,2,'','Aposentado',4,2,0,'',NULL,0,'',0,'','',1,6,35,'2012-02-08 18:40:39','2012-02-16 12:58:45'),(65,'2011-05-30','2011-06-02','Maria José do Nascimento Ramos',4,1,'1967-11-24',2,'São João da Barra','Rio de Janeiro',0,'Rodovia Projetada A - S/ nº - Ladeira das Pedras',0,5,2,'Doméstica','Do lar',3,2,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-08 18:49:10','2012-02-08 18:49:10'),(66,'2011-04-26','2011-04-18','Luiz Manoel da Silva',5,0,'1951-12-02',0,'São francisco de Itabapoana','RJ',1,'Rua Gesteira Passo- Ponto de Cacimbas Cep:28230.000',1,7,2,'agricultor','Trabalhador rural',1,1,0,'',NULL,0,'',1,'','',39,54,37,'2012-02-08 18:49:54','2012-02-08 18:49:54'),(67,'2011-03-26','2011-04-18','Leda Chaves da Cruz',4,1,'1972-03-25',0,'São francisco de Itabapoana','RJ',0,'Rua  Estrada de Santa Luzia - Ponto de Cacimbas N°86 Cep:28230.000',0,5,2,'-','Do lar',3,1,0,'',NULL,0,'',0,'','',39,54,37,'2012-02-08 18:57:08','2012-02-08 18:57:08'),(68,'2011-05-02','2011-06-01','Laurecir Pomada Faria',4,1,'1956-07-15',0,'São João da Barra','Rio de Janeiro',2,'Rua Tibúrcio Barreto em frente ao cemitério. Barra de Itabapoana',0,5,2,'','vendedora de cosméticos e bijuterias / agricultora',2,4,0,'',NULL,0,'',1,'','',45,61,49,'2012-02-08 18:57:31','2012-02-10 12:51:02'),(69,'2011-04-05','2011-04-18','Luciana Correia da Silva',2,1,'1985-03-20',0,'São francisco de itabapoana','Rio de Janeiro',0,'Última Rua S/Nº,Primeira casa a esquerda',1,5,1,'','Do lar',3,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-08 18:57:50','2012-02-16 12:59:11'),(70,'2011-07-25','2011-07-25','Demilton Viana da Silva',5,0,'1947-01-11',4,'São francisco de Itabapoana','Rio de janeiro',1,'eSTRADA São Francisco de Itabapoana indo no sentido de Guaxindiba, cep:28230-000',1,7,2,'Agricultor','Trabalha na lavouza',1,2,0,'',NULL,0,'',0,'','',41,60,39,'2012-02-08 19:00:00','2012-02-08 19:00:00'),(71,'2011-03-26','2011-02-18','Gilda Maria Leite Crisanto',4,1,'1956-12-18',3,'São francisco de Itabapoana','RJ',0,'Rua Rodovia Simão Mansur- Ponto de Cacimbas S/ N° Cep:28230.000',0,6,1,'-','Vendedora',3,1,0,'',NULL,0,'',1,'','',39,54,37,'2012-02-08 19:03:11','2012-02-08 19:03:11'),(72,'2011-04-30','2011-06-01','Maria da Penha da Silva Rosário',3,1,'1977-10-06',4,'São João da Barra','Rio de Janeiro',2,'Rua da ponte próximo ao bar da Concenir. Barra de Itabapoana. cep 28230000',0,5,2,'','do lar',1,1,0,'',NULL,0,'',7,'nao possui nenhuma','',45,61,49,'2012-02-08 19:04:42','2012-02-10 12:52:06'),(73,'2011-05-30','2011-06-02','Vera Lúcia Machado dos Santos',4,0,'2012-02-25',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Projetada A -  nº 49 - Ladeira das Pedras',3,5,2,'Doméstica','Do lar',4,1,0,'',NULL,0,'',0,'','',38,56,40,'2012-02-08 19:04:45','2012-02-08 19:04:45'),(74,'2011-04-05','2011-04-18','Paulo Sergio Silva Brito',3,0,'1968-07-22',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua PRINCIPAL S/Nº   próximo a casa da Srª Creuza  cep 28230-000',1,5,2,'Agricultor','Trabalhador Rural',1,2,0,'',NULL,0,'',0,'','',1,6,35,'2012-02-08 19:09:31','2012-02-16 13:29:46'),(76,'2011-03-26','2011-04-18','Ezequiel Gomes de Jesus',2,0,'1982-05-21',0,'Piauí','Piauí',0,'Rua Rodovia Simão Mansur- Ponto de Cacimbas S/ N° Cep:28230.000',1,5,2,'-','-',4,1,0,'',NULL,0,'Mental',0,'','',39,54,37,'2012-02-08 19:10:33','2012-02-08 19:10:33'),(77,'2011-06-06','2011-06-06','Nilcéa Costa da Conceição Viana',3,1,'1973-06-25',4,'São João da Barra','Rio de Janeiro',2,'Rua da Amendoeira próximo a igreja presbiteriana- Barra de Itabapoana',0,5,2,'','vendedora autônoma de roupas',2,4,0,'',NULL,0,'',1,'','',45,61,49,'2012-02-08 19:11:59','2012-02-10 12:49:32'),(78,'2011-03-26','2011-04-18','Eli Rangel dos Santos',3,0,'1973-11-19',0,'São francisco de Itabapoana','RJ',0,'Rua Gerônimo Gesteira Passo- Ponto deCacimbas Cep:28230.000',4,7,2,'Pescador','Pescador',1,4,0,'',NULL,0,'',1,'','',39,54,37,'2012-02-08 19:14:58','2012-02-08 19:14:58'),(79,'2011-04-05','2011-04-18','Júlia Graziela Rangel dos Santos',2,1,'1981-04-30',2,'São francisco de itabapoana','RJ',0,'Vilão última rua s/nº  cep: 28230000',0,5,2,'','Diarista',1,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-08 19:16:27','2012-02-08 19:16:27'),(80,'2011-04-30','2011-06-01','Regiane Gomes dos Santos',2,1,'1983-03-21',4,'São João da Barra','Rio de Janeiro',2,'Rua da Praia, próximo ao super + barato',0,5,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',45,61,49,'2012-02-08 19:19:46','2012-02-10 12:49:58'),(81,'2011-03-25','2011-04-18','Edilton Barbosa da Silva',3,0,'1980-04-21',0,'Jundiá','Alagoas',0,'Rua Rodovia Simão Mansur- Ponto de Cacimbas S/ N° Cep:28230.000',4,5,2,'Curralheiro','Curralheiro',1,2,0,'',NULL,0,'',0,'','',39,54,37,'2012-02-08 19:20:27','2012-02-08 19:20:27'),(82,'2011-03-26','2011-04-18','Daud Arêa de Souza',4,0,'1966-01-21',0,'São francisco de Itabapoana','RJ',1,'Rua Gerônimo Gesteira Passo- Ponto deCacimbas Cep:28230.000',1,7,2,'-','-',4,1,0,'',NULL,0,'Deficiente  físico',1,'','',39,54,37,'2012-02-08 19:25:50','2012-02-08 19:25:50'),(83,'2011-07-20','2011-07-20','Deci Gonzaga de Oliveira',4,0,'1958-01-25',3,'São João da Barra','Rio de Janeiro',0,'Rua Projetada \"A\" - Ladeira das Pedras - São Francisco de Itabapoana  RJ CEP 28230000',1,7,2,'Trabalhador Rural','',3,2,0,'',NULL,0,'',0,'','',38,56,40,'2012-02-09 11:53:26','2012-02-09 12:29:31'),(84,'2011-03-06','2011-04-18','Iva Santos de Souza',5,1,'1941-10-30',0,'São francisco de Itabapoana','Rio de janeiro',1,'R:Salomão Arcruche s/nº - São Francisco de Itabapoana, cemtro - cep 28230-000',2,7,2,'','Do lar',4,2,0,'',NULL,0,'',0,'','',41,60,39,'2012-02-09 12:03:58','2012-02-09 12:03:58'),(85,'2011-07-06','2011-07-06','Jorge do Nascimento Ramos',5,0,'1945-03-02',2,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/Nº Ladeira da Pedras',0,5,2,'Do Lar','',1,4,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 12:06:11','2012-02-09 12:06:11'),(86,'2011-06-03','2011-06-03','Jorge Marvila da Silva',4,0,'1954-01-07',0,'Marataízes','Rio de Janeiro',2,'Rua da Ponte n18 Barra de Itabapoana',0,7,2,'Pescador','pescaria',2,3,0,'',NULL,0,'',6,'','É pescador do rio mas ás vezes sua pesca é realizada no período noturno.',45,61,49,'2012-02-09 12:08:33','2012-02-10 12:53:23'),(87,'2011-03-04','2011-04-18','Jorge Minguta',4,0,'2012-02-09',0,'São francisco de Itabapoana','Rio de janeiro',1,'Rodovia Simão MANSUR S/Nº - Volta Redonda - São Francisco de Itabapoana',1,7,2,'','Zelador',1,2,0,'',NULL,0,'',1,'','',41,60,39,'2012-02-09 12:11:33','2012-02-09 12:11:33'),(88,'2011-04-05','2011-04-18','Tenilton Alves da Cruz',4,0,'1963-06-14',2,'São francisco de Itabapoana','Rio de janeiro',0,'Rua Principal ,no quintal da dona MARIA S/N CEP 28230.000',0,5,1,'AGRICULTOR','Trabalhador rural',1,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-09 12:13:19','2012-02-09 12:13:19'),(90,'2011-06-06','2011-06-06','Sérgio Henrique Bastos',3,0,'1974-05-10',2,'São João da Barra','Rio de Janeiro',2,'Rua da Praia n99 Barra de Itabapoana',0,7,2,'Pescador','pescaria',2,3,0,'',NULL,0,'',7,'não possui religião','trabalha com pesca de mar, portanto nemsempre estará presente no núcleo.',45,61,49,'2012-02-09 12:16:08','2012-02-10 12:50:40'),(91,'2011-09-05','2011-09-05','Selma da Silva Cajueiro',4,1,'1952-03-30',0,'São francisco de Itabapoana','Rio de janeiro',1,'Santa Clara , Rua Santa Clara  - n°02',0,5,2,'','Revendedora',2,4,1,'',NULL,0,'',1,'','',41,60,39,'2012-02-09 12:22:26','2012-02-09 12:22:26'),(92,'2011-04-30','2011-06-01','Maria da Glória dos santos silva',4,1,'1953-12-10',0,'São francisco de itabapoana','Rio de Janeiro',2,'Rua Nelson Barros de Menezes S/Nº Gargaú Cep:28230000 São Francisco de Itabapoana Rj',0,5,1,'','Do lar',3,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 12:27:48','2012-02-16 12:53:37'),(93,'2011-04-16','2011-04-19','Tereza Vieira de Souza',4,1,'1961-07-05',2,'São  joão da Barra','Rio de janeiro',0,'Rua principal ,perto da casa do SR Emilio s/nº cep 28230.000',0,5,2,'','Diarista',1,2,0,'',NULL,0,'',6,'','',1,6,35,'2012-02-09 12:28:19','2012-02-16 12:59:49'),(94,'2011-07-06','2011-07-06','Joelma do Nascimento Ramos',5,1,'1945-07-30',2,'São Francisco de Itabapoana','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',0,7,2,'Do lar','',1,4,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 12:28:22','2012-02-09 12:28:22'),(95,'2011-03-08','2011-04-18','Zezi da Conceição',5,1,'1933-01-01',2,'São francisco de Itabapoana','Rio de janeiro',1,'R:Alcimeia Viana s/nº. São francisco de Itabapoana - cep:28230-000',2,5,2,'','Do lar',4,2,0,'',NULL,0,'',0,'','',41,60,39,'2012-02-09 12:34:27','2012-02-09 18:27:38'),(96,'2011-04-30','2011-06-01','Ana Claudia Moreira  Pessanha Domiciliano',3,1,'1974-09-12',0,'São João da Barra','Rio de Janeiro',2,'Rua da Ponte, próximo a mercearia santos, Barra de Itabapoana',0,7,2,'','Do lar',3,1,0,'',NULL,0,'',6,'','',45,61,49,'2012-02-09 12:36:29','2012-02-10 12:54:15'),(97,'2011-06-21','2011-06-21','Gevaldo Fernandes da Silva',4,0,'1961-08-10',0,'São João da Barra','Rio de Janeiro',0,'Rua Projetada \"A\" - Ladeira das Pedras - São Francisco de Itabapoana  RJ CEP 28230000',0,5,1,'Pedreiro','',3,1,0,'',NULL,0,'',1,'','',38,56,40,'2012-02-09 12:38:19','2012-02-09 12:38:19'),(98,'2011-06-10','2011-06-10','Valdiméia Neves da Silva',3,1,'1974-05-14',0,'São João da Barra','Rio de Janeiro',2,'Rua da Cedae( Areinha)- Barra de Itabapoana S/Nº, Cep:28230.000',3,7,2,'','Do lar',3,1,0,'',NULL,0,'',1,'','A alfabetizanda tem frequentado as aulas desde o dia que começou . Ela tem mostrado grande interesse em aprender , antes ela não sabia nem o próprio nome.',47,62,8,'2012-02-09 12:41:38','2012-02-16 13:07:37'),(99,'2011-08-15','2011-08-15','Valdemir Alves da Silva',4,0,'1963-04-29',0,' Campos dos Goytacazes','Rio de janeiro',0,'Rua projetada A S/Nº CEP 28230.000',1,5,2,'Serralheiro','Pedreiro',2,2,0,'',NULL,0,'',0,'','',1,6,35,'2012-02-09 12:41:41','2012-02-16 13:00:09'),(100,'2011-06-08','2011-06-08','Laerte Pereira Machado',4,0,'1961-02-19',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Iburí de Barra  . São Francisco do Itabapoana RJ CEP 28230000',1,5,1,'Agricultor','Agricultor',1,4,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 12:45:46','2012-02-09 12:45:46'),(101,'2011-04-30','2012-06-01','Anadir Domiciano da Silva',5,1,'1944-08-06',0,'São João da Barra','Rio de Janeiro',2,'Rua da Ponte, próximo a mercearia santos, Barra de Itabapoana cep 28230000',0,7,2,'','vendedora autônoma de roupas e cosméticos',1,2,0,'',NULL,0,'',1,'','',45,61,49,'2012-02-09 12:46:16','2012-02-10 12:51:14'),(102,'2011-05-30','2011-06-01','Dulcinéia Alvarenga da Silva',4,1,'1956-09-22',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\",  n°547  - Iburí de Barra  . São Francisco do Itabapoana RJ CEP 28230000',0,7,2,'Do Lar','',4,1,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 12:55:29','2012-02-09 13:41:25'),(103,'2011-05-01','2011-06-01','Juceni Moreira',4,1,'1962-02-04',0,'São João da Barra','Rio de Janeiro',2,'Rua Sandoval Andrades- Barra de Itabapoana Nº 52, Cep:28230.000',4,5,2,'-','Do lar',3,1,0,'',NULL,0,'',0,'','A alfabetizada não sabe escrever muito bem, mas ela consegue ler as letras e pequenas palavras. sua situação é a de quem conseguiu ser alfabetizada.',47,62,42,'2012-02-09 12:59:22','2012-02-09 12:59:22'),(104,'2011-04-28','2011-06-01','Placide Silva de Oliveira',4,1,'1962-10-18',0,'São João da Barra','Rio de Janeiro',2,'Rua da Ponte, próximo a mercearia santos e próximo á padaria do gedemar, Barra de Itabapoana cep 28230000',0,6,1,'','do lar',3,2,0,'',NULL,0,'',6,'','',45,61,49,'2012-02-09 13:00:25','2012-02-10 12:54:46'),(105,'2011-05-09','2011-05-09','Wânderson dos Santos',2,0,'1988-04-17',3,'São francisco de Itabapoana','Rio de janeiro',0,'Última rua  s/nº cep28230.000,próximo a casa da Júlia',1,5,1,'','Ajudante de pedreiro',3,2,0,'',NULL,0,'',0,'','',1,6,35,'2012-02-09 13:01:02','2012-02-16 17:42:14'),(106,'2011-04-29','2011-06-01','Jerrimara Barreto Barbosa',3,1,'1973-03-26',0,'são joão da Barra','Rio de Janeiro',2,'Rua B1 Parque Prudêncio  S/ Nº Bairro Gargaú  São Francisco de Itabapoana Rj',0,5,2,'','Aposentado',4,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 13:05:30','2012-02-16 12:54:36'),(108,'2011-05-31','2011-06-01','Jorge Nascimento de Souza',5,1,'1947-05-14',0,'São João da Barra','Rio de Janeiro',2,'Rua Renviw S/Nº- Barra de Itabapoana, Cep:28230.000',3,5,2,'Pescador','Aponsetado',1,3,0,'',NULL,0,'',1,'','O alfabentizando consegue ler algumas  palavras mas sua escrita é precária. sua situação hoje é a de quem conseguiu ser alfabetizado.',47,62,42,'2012-02-09 13:11:28','2012-02-09 13:11:28'),(109,'2011-04-30','2011-06-01','Tereza Souza dos Santos Oliveira',4,1,'1959-08-12',4,'São João da Barra','Rio de Janeiro',2,'Rua da Ponte n124 proximo ao bar da Concenir Barra de Itabapoana cep 28230000',0,6,1,'','Do lar',3,2,0,'',NULL,0,'',6,'','',45,61,49,'2012-02-09 13:11:51','2012-02-10 12:53:35'),(110,'2011-04-05','2011-04-18','Zelina de Souza Brito da Cruz',4,1,'1963-12-11',2,'São francisco de Itabapoana','Rio de janeiro',0,'Rua Principal ,no quintal da dona Maria s/nº cep 28230.000',0,5,1,'','Do lar',3,2,0,'',NULL,0,'',1,'','',1,6,35,'2012-02-09 13:12:00','2012-02-16 13:01:04'),(111,'2011-05-29','2011-06-20','Doval Ribeiro da Conceição',3,0,'1937-07-20',2,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',0,5,2,'Tratorista','Tratorista',1,2,0,'',NULL,0,'',1,'','',38,56,40,'2012-02-09 13:12:58','2012-02-09 13:12:58'),(112,'2011-06-13','2011-06-13','Gilsom Farias Gonçalves',1,0,'1971-10-25',4,'São João da Barra','Rio de Janeiro',2,'Rua da Ciribeira- Barra de Itabapoana S/ Nº',3,5,2,'Pescador','Pescaria',1,4,0,'',NULL,0,'',1,'','',47,62,42,'2012-02-09 13:16:15','2012-02-09 13:16:15'),(113,'2011-05-30','2011-06-01','Vitória Viana do Rosário',5,1,'1928-01-17',4,'São João da Barra','Rio de Janeiro',2,'Rua da Ponte  proximo ao bar da Concenir Barra de Itabapoana cep 28230000',0,5,2,'','',4,1,0,'',NULL,0,'',1,'','',45,61,49,'2012-02-09 13:18:20','2012-02-10 12:54:11'),(114,'2011-04-30','2011-06-01','Marilene Monteiro de Souza',3,1,'1969-02-18',4,'São francisco de itabapoana','Rio de Janeiro',2,'Rua B1 Parque Prudêncio s/nº  Bairro Gargaú  São Francisco de Itabapoana Rj',1,5,1,'Diarista','Diarista',3,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 13:20:02','2012-02-16 12:55:23'),(115,'2011-07-26','2011-07-26','Anderson Aleixo Belo',3,0,'1981-02-06',4,'Cachoeiro de Itapemirim','Espírito Santo',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',1,5,2,'Pedreiro','Pedreiro',1,2,0,'',NULL,NULL,'',1,'','',38,56,40,'2012-02-09 13:20:15','2012-02-09 13:20:15'),(116,'2011-05-31','2011-06-01','São João da Barra',4,0,'1958-06-20',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\"  -  n°545 - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',0,5,2,'Jardineiro ','Jardineiro ',1,1,0,'',NULL,0,'',0,'','',38,56,40,'2012-02-09 13:26:41','2012-02-09 13:26:41'),(117,'2011-06-27','2011-06-27','Geilza Brandão Marvila',3,1,'1969-12-11',0,'Antigo Município de São João da Barra','Rio de Janeiro',2,'Rua Sandoval Andrades- Barra de Itabapoana Nº 34 Cep:28230.000',3,7,2,'-','Do lar',3,1,0,'',NULL,0,'',0,'','A alfabetizanda nunca frequentou a escola e apresenta muita dificuldade de aprendizagem.Agora ela aprendeu o seu nome e já conhece o alfabeto.',47,62,42,'2012-02-09 13:30:08','2012-02-09 13:30:08'),(118,'2011-05-31','2011-06-01','Edilma Teles Junqueira dos Reis',4,0,'2011-06-24',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',2,7,1,'Do Lar','',4,1,0,'',NULL,NULL,'',1,'','',38,56,40,'2012-02-09 13:32:38','2012-02-09 13:32:38'),(119,'2011-06-08','2011-06-08','Jonisvaldo Moreira',4,0,'1960-06-11',2,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, Rua Projetada \"A\" S/n° - Ladeira das Pedras  . São Francisco do Itabapoana RJ CEP 28230000',1,7,1,'Agricultor','Agricultor',1,4,0,'',NULL,0,'',0,'','',38,56,40,'2012-02-09 13:37:03','2012-02-09 13:37:03'),(120,'2011-04-30','2011-06-16','Tânia Regina Machado de Freitas',3,1,'1967-02-11',4,'Campos dos Goytacazes','Rio de Janeiro',2,'Rua Progetada\" B\" (Barra Velha)S/Nº Gargaú  Cep:28230000   São Francisco de Itabapoana Rj',1,6,1,'Diarista','Diarista',3,2,1,'',NULL,0,'',0,'','',46,48,50,'2012-02-09 13:39:36','2012-02-16 12:56:54'),(121,'2011-09-22','2011-09-22','Edilma de Almeida Braga',4,1,'1970-01-29',0,'Antigo Município de São João da Barra','Rio de Janeiro',2,'Rua Três Marias Nº13- Barra de Itabapoana',0,6,2,'-','Do lar',1,4,0,'',NULL,0,'',1,'','A alfabentizanda já estudou algum tempo e agora sentiu vontade de voltar a estudar.',47,62,42,'2012-02-09 13:40:14','2012-02-09 13:40:14'),(122,'2011-04-30','2011-06-01','Salvador Barreto',5,0,'2011-09-11',0,'São francisco de itabapoana','Rio de Janeiro',2,'Avenida Principal  S/Nº Gargaú São Francisco de Itabapoana Rj Cep:28230000',2,6,1,'Gari','Aposentado',4,1,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 14:01:47','2012-02-16 12:58:11'),(123,'2011-05-01','2011-06-01','Ana Maria Viana',3,1,'1977-10-25',0,'Campos dos Goytacazes','Rio de Janeiro',0,'Estrada Campos Barra s/n Comunidade de Buena cep 28230000',4,5,1,'','do lar',3,1,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 14:17:16','2012-02-09 14:17:16'),(124,'2011-02-27','2011-06-27','Margarida Marques Cordeiro',4,1,'1967-02-09',4,'São francisco de itabapoana','Rio de Janeiro',2,'Rua \"A\" S/Nº Gargaú Barra Velha São francisco de Itabapoana Rj Cep:28230000',4,6,1,'DOméstica','Doméstica',3,2,0,'',NULL,0,'',0,'','',46,48,50,'2012-02-09 14:18:56','2012-02-16 12:59:18'),(125,'2011-05-01','2011-06-01','Ismarília dos Santos',4,1,'1952-02-04',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos Barra s/n Comunidade de Buena cep 28230000',2,5,1,'','Do lar',3,1,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 14:22:08','2012-02-09 14:22:08'),(126,'2011-05-02','2011-06-01','Celma Regina Lima Francisco',4,1,'1957-11-02',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos Barra s/n Comunidade de Buena cep 28230000',4,6,2,'','Do lar',3,1,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 14:27:29','2012-02-09 14:27:29'),(127,'2012-02-03','2011-05-09','Juracy Ribeiro Santana e Silva',5,1,'1944-10-24',2,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança s/n Comunidade de Buena ',0,6,1,'','Do lar',3,1,0,'',NULL,NULL,'',4,'','',49,64,44,'2012-02-09 14:35:42','2012-02-09 14:35:42'),(128,'2011-04-30','2011-06-01','Antônia Maria Madalena de Almeida',5,1,'1948-06-13',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Aciolino Manhães Nº229  Gargaú São Francisco de Itabapoana Rj  Cep:28230000',0,6,1,'Diarista','Diarista',3,2,0,'',NULL,NULL,'',1,'','',46,48,50,'2012-02-09 14:36:01','2012-02-16 13:00:08'),(129,'2011-06-27','2011-06-27','Ana Zilda Minguta dos Santos',5,0,'2011-06-10',0,'Sao Francisco de Itabapoana','Rio de Janeiro',0,'Rua  Waldemar Xavier Nunes - Nº 09 - Praça João Pessoa - 1ª Rua após o posto de saúde, 4ª casa ao lado direito  - CEP 28230977',0,5,2,'','Dona de casa',1,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 14:47:43','2012-02-09 16:20:06'),(130,'2011-05-01','2011-06-01','Maria Pereira Mata',4,1,'1953-05-14',2,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança s/n Comunidade de Buena',1,5,1,'','Do lar',3,1,0,'',NULL,0,'',1,'','',49,64,44,'2012-02-09 14:47:54','2012-02-09 14:47:54'),(131,'2011-05-03','2011-06-01','Ana Maria Nunes',4,1,'1963-08-24',0,'São João da Barra','Rio de Janeiro',0,'Estrada Campos Barra s/n Comunidade de Buena cep 28230000',1,5,2,'','do lar',3,1,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 14:59:19','2012-02-09 14:59:19'),(133,'2011-04-10','2011-04-19','Celi Cardoso',4,1,'1952-10-03',3,'Mimoso do Sul','Espirito santos',0,'R:antônio Henriques Pessanha, s/nº  ,(na esquina da aldeia)  Baca de Areia',0,7,1,'','Do lar',1,1,0,'',NULL,0,'Visual',0,'','',48,63,43,'2012-02-09 15:47:57','2012-02-10 13:01:06'),(134,'2011-04-30','2011-06-01','Renato da Penha',3,0,'1968-06-24',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos - Barra- Barrinha, São Francisco de Itabapoana Cep;28230.000',1,7,2,'Corte de cana de açúcar','Roça',1,1,0,'',NULL,0,'',0,'','',51,66,8,'2012-02-09 15:57:56','2012-02-16 13:13:44'),(135,'2011-04-30','2011-06-01','Miguel Carlos Gomes',4,0,'1958-03-29',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos - Barra - Barrinha Nº511, São Francisco de Itabapoana Cep:28230.000',1,5,1,'Pedreiro ','Obra',1,1,0,'',NULL,0,'',0,'','',51,66,46,'2012-02-09 16:06:16','2012-02-09 16:06:16'),(136,'2011-04-30','2011-06-01','Genilson da silva Neto',4,0,'1964-08-02',0,'São francisco de itabapoana','Rio de Janeiro',0,'Rua Progetada\" B\" (Barra Velha)S/Nº Gargaú  Cep:28230000   São Francisco de Itabapoana Rj',0,5,2,'Pescador','Pescador',3,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 16:07:34','2012-02-16 13:01:10'),(137,'2011-04-30','2011-06-01','José Maria da Penha',3,0,'1976-08-15',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos - Barra- Barrinha, São Francisco de Itabapoana Cep;28230.000',1,5,2,'-','Pedreiro',1,2,0,'',NULL,0,'',1,'','',51,66,46,'2012-02-09 16:11:32','2012-02-09 16:11:32'),(138,'2011-05-09','2011-05-09','Angela Maria Lopes Ferreira',4,1,'1957-12-21',2,'Campos dos Goytacazes','Rio de Janeiro',0,'Rua Alto da Colina -  Projetada P - Nº 14  - Praça João Pessoa, perto da casa ne Ivone - CEP 28230 977  ',2,7,2,'','',4,1,1,'',NULL,0,'DEficiente físico',0,'','',50,67,48,'2012-02-09 16:16:43','2012-02-09 16:27:15'),(139,'2011-04-30','2011-06-01','Claudiléia Felix Ferreira',4,1,'1965-07-02',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos - Barra - Barrinha Nº511, São Francisco de Itabapoana Cep:28230.000',1,5,1,'Diarista','Diarista',1,1,0,'',NULL,0,'',0,'','',51,66,46,'2012-02-09 16:18:45','2012-02-09 16:18:45'),(140,'2011-04-30','2011-06-01','Marcos Vinícius Barreto de Oliveira',2,0,'2011-04-23',0,'São francisco de itabapoana','Rio de Janeiro',2,'Rua da Lagoa,Beco1 Nº18 Gargaú São francisco de Itabapoana Rj Cep:28230000',1,6,1,'Pescador','Pescador',3,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 16:19:38','2012-02-16 13:01:54'),(141,'2011-07-04','2011-06-01','Claudeia Alves de Souza',5,0,'1943-09-23',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos - Barra- Barrinha, São Francisco de Itabapoana Cep;28230.000',2,5,2,'-','Do lar',4,1,0,'',NULL,0,'',5,'','',51,66,46,'2012-02-09 16:24:29','2012-02-09 16:24:29'),(142,'2011-04-30','2011-06-01','Paulo César Borges',3,0,'1975-11-12',4,'São francisco de itabapoana','Rio de Janeiro',2,'Rua Projetada\"a\" S/Nº Muritiba Gargaú São Francisco de Itabapoana Rj Cep:28230000',0,6,1,'Pescador','Pescador',3,2,0,'',NULL,0,'',1,'','',46,48,50,'2012-02-09 16:28:25','2012-02-16 13:02:32'),(143,'2011-03-04','2012-02-09','Isack dos Santos Ferreira',3,0,'1977-09-29',0,'Campos dos Goytacazes','Rio de Janeiro',0,'Rua Projetada  S/nº  - vizinha de Rodrigo do lavador, mesma rua de  Ziane ( filha de Samuiel)',0,7,1,'','Pedreiro',1,4,0,'',NULL,0,'',1,'','',50,67,48,'2012-02-09 16:33:36','2012-02-09 16:33:36'),(144,'2011-07-12','2011-07-12','Maria Izabel de Almeida Gomes',4,1,'1959-06-02',0,'São francisco de itabapoana','Rio de Janeiro',2,'Rua F,Barra Velha Nº44 Gargaú São Francisco de Itabapoana Rj Cep:28230000',1,5,1,'','Do lar',3,2,0,'',NULL,0,'',0,'','',46,48,50,'2012-02-09 16:39:01','2012-02-16 13:03:48'),(145,'2011-03-24','2012-02-09','Juarez Carlos daa Silva',4,0,'1956-07-30',2,'São João da Barra','Rio de Janeiro',0,'Rua Elias Macedo - S/ nº  - Final da rua, procurar por \"carolo\". - Rua ao lado de diego Agropecuária. ',0,5,2,'','Tratorista',1,2,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 16:41:01','2012-02-09 17:49:45'),(146,'2011-05-09','2011-05-09','Luzia Lemos de Souza',4,1,'1957-12-13',2,'São João da Barra','Rio de Janeiro',0,'Rua Projetada (colina) S/nº - Praça João Pessoa, perto do bar de Eraldo - CEP 28230 977',0,5,1,'','Do lar',1,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 16:48:04','2012-02-09 16:48:04'),(147,'2011-04-30','2011-06-04','Sandra Cristina G. de Souza Silveira',3,1,'1969-04-04',2,'Campos dos Goytacazes','Rio de janeiro',0,'Avenida Beira Mar,Manguinhos nº600 São Francisco de Itabapoana-cep28230.000',0,6,1,'','Do lar',3,2,0,'',NULL,0,'',0,'','',51,65,30,'2012-02-09 17:26:42','2012-02-23 13:33:53'),(148,'2011-05-01','2011-06-01','Gecielma Rangel dos Santos',3,1,'1967-10-05',0,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança s/n Comunidade de Buena cep 28230000',4,5,2,'','Do lar',3,1,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 17:29:46','2012-02-09 17:29:46'),(149,'2011-04-03','2011-04-19','Dionélia Dias da Silva',5,1,'1940-09-01',0,'Sã João da Barra','Rio de janeiro',0,'R:antônio Henriques Pessanha , nº190 , perto do bar de Aldo , cep 28230-000',2,6,1,'','Aposentado',4,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-09 17:31:03','2012-02-09 17:31:03'),(150,'2011-05-28','2011-06-01','Rogério da Conceição',3,0,'1971-12-20',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, município  de São francisco de Itabapoana, bairro de Ladeira das Pedras sem nº CEP 28230000',1,5,1,'Tapioqueiro','Tapioqueiro',1,4,0,'',NULL,0,'Tem deficiencia física',6,'','',38,56,40,'2012-02-09 17:31:50','2012-02-09 17:31:50'),(151,'2011-08-09','2011-08-09','Carla Viana Pereira',3,1,'1978-03-26',2,'São João da Barra','Rio de Janeiro',0,'Estrada Campos Barra s/n Comunidade de Buena cep 28230000',1,5,2,'Doméstica','Doméstica',1,2,0,'',NULL,0,'',0,'','',49,64,44,'2012-02-09 17:34:35','2012-02-09 17:34:35'),(152,'2011-05-30','2011-06-01','Vera da Conceição',4,1,'1952-09-28',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, município  de São francisco de Itabapoana, bairro de Ladeira das Pedras sem nº CEP 28230000',2,5,1,'Tapioquiero','Tapioquiero',1,4,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 17:37:36','2012-02-09 17:37:36'),(153,'2011-05-30','2011-06-01','Vera da Conceição',4,1,'1952-09-28',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, município  de São francisco de Itabapoana, bairro de Ladeira das Pedras sem nº CEP 28230000',2,5,1,'Tapioquiero','Tapioquiero',1,4,0,'',NULL,0,'',6,'','',38,56,40,'2012-02-09 17:37:43','2012-02-09 17:37:43'),(154,'2011-03-10','2011-04-19','Maria José Moreira',5,1,'2011-05-17',0,'Sã João da Barra','Rio de janeiro',0,'R:estrada da Areia dourada s/nº, Proximo ao Bar de caca , cep28230-000',1,5,1,'','Aposentado',4,2,0,'',NULL,0,'',0,'','',48,63,43,'2012-02-09 17:41:19','2012-02-09 17:41:19'),(155,'2011-04-30','2011-06-02','Nilva Alves Gonçalves',5,1,'1937-05-10',2,'São  joão da Barra','Rio de janeiro',0,'Avenida Beira Mar,Manguinhos nº05  São Francisco de Itabapoana-cep28230.000',0,6,1,'','Aposentado',4,2,0,'',NULL,0,'',1,'','',52,65,30,'2012-02-09 17:44:21','2012-02-23 13:36:34'),(156,'2011-05-02','2011-06-01','Cenilce Cardoso da Silva Leandro',4,1,'1953-11-10',2,'São João da Barra','Rio de Janeiro',0,'Rua Estrada Campos Barra s/n Comunidade de Buena cep 28230000',2,5,2,'gari','gari',1,1,0,'',NULL,0,'',1,'','',49,64,44,'2012-02-09 17:46:18','2012-02-09 17:46:18'),(157,'2011-05-29','2011-06-01','Telma Pereira da Silva',4,0,'1960-04-01',0,'São João da Barra','Rio de Janeiro',0,'Rodovia Simão Mansur, município  de São francisco de Itabapoana, bairro de Ladeira das Pedras sem nº CEP 28230000',0,5,1,'Doméstica','Doméstica',1,2,0,'',NULL,0,'',1,'','',38,56,40,'2012-02-09 17:47:12','2012-02-09 17:47:12'),(158,'2011-04-10','2011-04-19','Maria Izabel gomes Alves',4,1,'1952-01-31',2,'São francisco de Itabapoana','Rio de janeiro',0,'R:Antônio Henriques Pessanha ,n°159 - Perto da Igreja Santa Rita',1,7,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-09 17:49:31','2012-02-09 17:49:31'),(159,'2011-05-01','2011-06-01','Edilson dos Santos Galdência',4,0,'1962-05-03',2,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança s/n Comunidade de Buena cep 28230000',3,5,1,'','tercerizado',1,1,2,'',NULL,0,'',1,'','',49,64,44,'2012-02-09 17:54:32','2012-02-09 17:54:32'),(160,'2011-04-10','2011-04-19','Margarida Crisóstomo dos Santos',1,0,'2012-02-09',2,'Sã João da Barra','Rio de janeiro',0,'R:Projetada F , s/nº , perto do bar de Zezeu - cep28230-000',0,5,2,'','Do lar',1,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-09 17:57:20','2012-02-09 17:57:20'),(161,'2011-03-01','2011-05-02','Maria José Ferreira',5,0,'1933-08-12',0,'Morro do Coco','Rio de Janeiro',0,'Rua Projetada L  - Praça João Pessoa Nº 10  perto do bar de Eraldo - CEP 28230 977',2,7,2,'','Aposentada',4,1,2,'',NULL,0,'Visão',0,'','',50,67,48,'2012-02-09 17:57:43','2012-02-09 17:57:43'),(162,'2011-06-16','2011-06-01','Adenilson Sousa  Vicente',4,0,'1961-11-10',2,'','',0,'',1,7,2,'Pedreiro','Pedreiro',1,2,0,'',NULL,0,'',0,'','',51,65,30,'2012-02-09 17:59:16','2012-02-23 13:38:59'),(163,'2011-03-02','2011-05-02','Maria Soares Brito',4,1,'1959-03-16',0,'São João da Barra','Rio de Janeiro',0,'Rua Joaquim Gomes Crespo - S/ Nº  - Praça João Pessoa -  perto da antiga Parmalat - CEP 28230 977',0,7,2,'','Do lar',3,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:06:26','2012-02-09 18:07:15'),(164,'2011-05-01','2011-06-01','Zenilda Azevedo dos Santos',4,1,'1965-11-03',0,'São João da Barra','Rio de Janeiro',0,'Rua Boa Esperança s/n Comunidade de Buena',1,7,1,'','Do lar',3,1,0,'',NULL,0,'',1,'','',49,64,44,'2012-02-09 18:06:46','2012-02-09 18:06:46'),(165,'2011-04-19','2011-05-31','Antônio Gomes Rangel',4,0,'1962-01-20',2,'São francisco de Itabapoana','Rio de janeiroR',0,'R:antônio Henriques Pessanha , nº133 - proximo ao Bar do Zezeu , cep 28230-000',1,6,1,'Trabalhador Rural','Trabalhador Rural(Ordenhador',1,1,0,'',NULL,0,'Visual',0,'','',48,63,43,'2012-02-09 18:08:56','2012-02-09 18:08:56'),(166,'2011-03-14','2012-02-09','Marizete Alves de Freitas',5,1,'1950-07-31',2,'São João da Barra','Rio de Janeiro',0,'Rua Demerval Henriques Pessanha  - Nº 20  - Colina  - ( Meredeira da Escola Joaquim Gomes Crespo)',4,7,2,'','Meredeira',1,1,0,'',NULL,0,'',1,'','',50,67,48,'2012-02-09 18:15:06','2012-02-09 18:15:06'),(167,'2011-03-19','2012-02-09','Naime Teles Monteiro',5,0,'1947-05-01',1,'São João da Barra','Rio de Janeiro',1,'Rua Projetada P   -   S/nº  -  Colina   -  Pai de Loninho   - Pedreiro',0,5,2,'','Lavrador',1,4,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:22:12','2012-02-09 18:22:12'),(168,'2011-06-16','2011-06-01','Rafael Souza Barboza',3,0,'1986-06-01',2,'','Rio de janeiro',0,'',1,6,1,'','Aposentado',4,2,0,'',NULL,0,'Ele tem problema de cabeça',0,'','',51,65,30,'2012-02-09 18:22:45','2012-02-23 13:40:32'),(169,'2011-06-08','2011-04-19','Manoel Ribeiro de Souza',4,0,'1952-06-12',0,'Sã João da Barra','Rio de janeiro',0,'R:Antônio Henriques Pessanha , nº182, perto do bar do Badeco - cep  28230-000',0,6,1,'Comerciante','Comerciante',4,2,0,'',NULL,0,'auditiva',1,'','',48,63,43,'2012-02-09 18:25:19','2012-02-09 18:25:19'),(170,'2011-03-01','2011-05-02','Vania Mendes',4,1,'1951-08-30',2,'São João da Barra','Rio de Janeiro',0,'Rua Projetada L (Colina) - praça João Pessoas - N°23  -  CEP 28230-977   - Referencia - casa de dona Bahia',1,7,2,'','Do lar',3,1,0,'',NULL,0,'Visão',0,'','',50,67,48,'2012-02-09 18:26:52','2012-02-09 18:26:52'),(171,'2011-08-10','2011-08-01','Cláudio Oliveira Barreto',4,0,'1963-04-19',2,'São João da Barra','Rio de Janeiro',0,'Rua Estelita de Araujo Crespo  - S/nº  -  Perto da casa de Alessandra fotógrafa  -  Praça João Pessoa  CEP  28230-977',0,6,1,'Lavrador','Lavrador',1,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:32:36','2012-02-09 18:32:36'),(172,'2011-04-10','2011-04-19','Sonia Maria de Almeida Vieira',4,1,'1951-11-17',0,'Mimoso do Sul','Espirito santos',0,'R:Antônio Henriques Pessanha , nº153 , em frente a rua da Aldeia  -  cep 28230-000',3,7,2,'','Do lar',3,2,0,'',NULL,0,'',0,'','',48,63,43,'2012-02-09 18:35:24','2012-02-09 18:35:24'),(173,'2011-04-30','2011-06-02','Denancy Felix Ferreira',4,1,'1961-12-08',2,'São  joão da Barra','Rio de janeiro',0,'Avenida Beira Mar,Manguinhos nº 650  cep 28230.000',1,6,1,'Diarista','Diarista',1,2,0,'',NULL,0,'',0,'','',51,65,45,'2012-02-09 18:41:18','2012-02-09 18:41:18'),(175,'2011-05-09','2011-05-11','Vanda Maria Ribeiro Barbosa',4,1,'1965-06-02',0,'São João da Barra','Rio de Janeiro',0,'Estrada de Santo Amaro S/ Nº- Perto de Sr. Titinho Cep:28230.977',3,5,2,'-','Do lar',3,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:45:38','2012-02-09 18:53:49'),(176,'2011-04-04','2011-04-19','Neuza dos Santos da Costa',4,0,'1956-01-04',2,'Sã João da Barra','Rio de janeiro',0,'Boca da areia n°11 , entrada da areia dourada  -  cep28230-000',0,6,2,'','Do lar',3,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-09 18:49:13','2012-02-09 18:49:13'),(177,'2011-03-02','2011-05-02','Antonio Marcos de Oliveira',3,0,'1979-10-23',0,'São João da Barra','Rio de Janeiro',0,'Rua Projetada7- S/Nº- Entrada do Morro de Bené, Praça de João Pessoa Cep:28230.977',4,7,2,'-','Pedreiro',1,4,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:52:53','2012-02-09 19:10:09'),(178,'2011-04-10','2011-04-19','Rodrigo Peres faria',3,0,'1976-04-07',0,'Sã João da Barra','Rio de janeiro',0,'R:Antônio Henriques Pessanha , nº210 - ao lado do parque de exposição agropecuária , cep28230-000',1,6,1,'Tratorista','Trabalhador Rural (Cortador de cana)',1,2,0,'',NULL,0,'',7,'Não posui','',48,63,43,'2012-02-09 18:56:26','2012-02-09 18:56:26'),(179,'2011-05-09','2011-05-11','Janaína Sanches  Azambuja',3,1,'1975-12-08',0,'Campinhos','Rio de Janeiro',1,'Rua Projetada7- S/Nº- Entrada do Morro de Bené, Praça de João Pessoa Cep:28230.977',4,5,1,'-','Do lar',3,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 18:59:34','2012-02-10 16:58:53'),(180,'2011-03-02','2011-05-02','João Teles Monteiro',4,0,'1956-10-14',0,'São João da Barra','Rio de Janeiro',0,'Rua Projetada7- S/Nº- Entrada do Morro de Bené, Praça de João Pessoa Cep:28230.977',2,5,2,'Pescador','Pescador',1,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 19:04:26','2012-02-09 19:06:34'),(181,'2011-03-01','2012-05-02','Derli Ribeiro da Cruz',5,1,'1944-07-29',0,'São João da Barra','Rio de Janeiro',0,'Rua Walter Porto  - Praça João Pessoa  - Nº 44   - Em frente à casa de Geraldo   -   CEP  28230-977',2,7,2,'','Do lar',1,1,0,'',NULL,0,'',0,'','',50,67,48,'2012-02-09 19:16:03','2012-02-10 16:56:34'),(182,'2011-04-10','2011-04-19','Elizabete Tereza das Chagas',4,1,'1958-05-02',0,'Sã João da Barra','Rio de janeiro',0,'R:Boca da Areia nº05 (entrada da areia dourada 3ª casa) cep-28230-000',0,6,1,'Doméstica','Doméstica',3,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-10 12:02:49','2012-02-10 12:02:49'),(183,'2011-04-10','2011-04-19','Angela Maria Ribeiro da Silva',4,1,'1967-09-02',0,'Mimoso do Sul','Espirito santos',0,'R:Antônio Henriques Pessanha  s/nº (perto do salão  do Alessandro) Bca da Areia ,cep28230-000',1,6,1,'Doméstica','Doméstica',1,2,1,'',NULL,0,'',1,'','',48,63,43,'2012-02-10 12:12:40','2012-02-10 12:12:40'),(184,'2011-09-16','2011-09-19','Cedina Raimundo',3,1,'1974-08-17',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',1,6,2,'','',3,2,0,'',NULL,0,'Escuta pouco, Tem dificuldades em armazenar conteúdos.',1,'','',8,32,10,'2012-02-10 12:16:36','2012-02-10 12:16:36'),(185,'2011-03-10','2011-04-19','Maria de Lurdes Gomes Azevedo',4,1,'1949-02-10',0,'Sã João da Barra','Rio de janeiro',0,'R:Antônio Henriques Pessanha , snº (próximo ao parque de exposição agropecuária)  -  cep28230-000',1,7,2,'','Aposentado',1,2,0,'',NULL,0,'',0,'','',48,63,43,'2012-02-10 12:21:10','2012-02-10 12:21:10'),(186,'2011-09-16','2011-09-19','Fernanda Machado Louro',3,1,'1979-05-26',2,'Jucu-Viana','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',4,5,2,'','Trabalha na roça',1,2,0,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 12:22:27','2012-02-10 12:22:27'),(187,'2011-09-16','2011-09-19','Nelina Rodrigues Alves',5,1,'1942-04-19',0,'São Pedro','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',2,7,2,'','',4,1,1,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 12:31:30','2012-02-10 12:31:30'),(188,'2011-09-16','2011-09-19','Delcília Bahiense Fernandes',5,1,'2012-02-10',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',2,7,2,'','',4,1,0,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 12:34:14','2012-02-10 12:34:14'),(189,'2011-09-16','2011-09-19','Matiele Santos Henriques',2,0,'1986-09-27',0,'Vila do Itapemirim','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',4,5,2,'','Diarista',1,1,0,'',NULL,0,'',1,'','',8,32,10,'2012-02-10 12:37:26','2012-02-10 12:37:26'),(190,'2011-09-16','2011-09-19','Laura Ramos Pereira',4,1,'1962-10-04',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',0,7,2,'','Cuidadora de idoso',1,1,0,'',NULL,0,'',1,'','',8,32,10,'2012-02-10 12:40:30','2012-02-10 12:40:30'),(191,'2011-09-16','2011-09-19','Ceni Raimundo',4,1,'1958-09-11',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',1,5,2,'','',3,1,0,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 12:43:07','2012-02-10 12:43:07'),(192,'2011-03-04','2011-04-19','Maria das Graças Barboza dos Santos',4,0,'2012-02-10',0,'Sã João da Barra','Rio de janeiro',0,'R:Antônio Henriques Pessanha A - s/nº , (perto da casa de Miguel de Caçula)  Baca da Areia- cep28230-000',1,5,2,'Doméstica','Do lar',3,2,0,'',NULL,0,'Visual',0,'','',48,63,43,'2012-02-10 12:43:28','2012-02-10 12:43:28'),(193,'2011-09-16','2011-09-19','Cilberto Pereira Vieira',5,0,'1946-07-26',0,'Guaçui','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',0,6,2,'Pedreiro','Diarista',2,4,1,'',NULL,0,'',1,'','',8,32,10,'2012-02-10 12:46:07','2012-02-10 12:46:07'),(194,'2011-03-04','2011-04-19','Maria josé da Silva',4,1,'1960-08-05',2,'Sã João da Barra','Rio de janeiro',0,'R:Estrada da Areia dourada s/nº, Proximo ao Bar de cacá , cep28230-000',1,6,1,'Doméstica','Doméstica',1,2,0,'',NULL,0,'Visual',0,'','',48,63,43,'2012-02-10 12:49:30','2012-02-10 12:49:30'),(195,'2011-09-16','2011-09-19','Maria Oliveira Martins',4,1,'1953-05-20',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',2,7,2,'','',3,1,0,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 12:51:00','2012-02-10 12:51:00'),(196,'2011-09-16','2011-09-19','Tereza Inácio Rosa',4,0,'1960-01-10',2,'Colatina','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',1,7,2,'','',3,1,0,'',NULL,0,'',1,'','',8,32,10,'2012-02-10 12:53:17','2012-02-10 12:53:17'),(197,'2011-04-10','2011-04-19','Salvador Pires da Chagas',5,0,'1946-10-08',2,'São francisco de Itabapoana','Rio de janeiro',0,'R:Boca da Areia nº05 (entrada da areia dourada 3ª casa) cep-28230-000',0,5,2,'Barbeiro e Trabalhador Rural','Barbeiro e Trabalhador Rural',1,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-10 12:56:01','2012-02-10 12:56:01'),(198,'2011-09-19','2011-09-19','Juarez dos Santos Oliveira',4,0,'1960-09-27',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',1,5,2,'','Diarista',1,2,0,'',NULL,0,'',1,'','',8,32,10,'2012-02-10 12:56:27','2012-02-10 12:56:27'),(199,'2011-09-19','2011-09-19','Izaurides das Neves Lima',4,1,'1946-05-28',0,'Presidente Kennedy','ES',0,'Rua projetada, s/n, São Paulo, Presidente Kennedy',0,5,2,'','Do lar',1,1,0,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 13:02:05','2012-02-10 13:02:05'),(200,'2011-11-08','2011-11-23','Enildo Nunes Neto',3,0,'1976-11-16',4,'Cachoeiro do Itapemirim','ES',0,'Cabral, Prsidente kennedy',1,5,2,'','',4,1,0,'',NULL,0,'dificuldade motora para escrita.  Área cognitiva. Área de comunicação.',0,'','',8,32,10,'2012-02-10 13:06:59','2012-02-10 13:06:59'),(201,'2011-11-08','2011-11-23','Erivanildo Pereira da Silva',4,0,'1966-05-04',0,'Caiçara','Paraíba',0,'Cabral, Prsidente kennedy',0,5,2,'Pedreiro','Desempregado',3,1,1,'',NULL,0,'',0,'','',8,32,10,'2012-02-10 13:10:37','2012-02-10 13:10:37'),(202,'2011-12-12','2011-12-06','Arlete dos Santos Henriques',4,1,'1962-08-18',0,'Cachoeiro do Itapemirim','ES',0,'Rua projetada, n 50, São Paulo, Presidente Kennedy',2,5,2,'','',4,1,1,'',NULL,0,'Baixa acuidade visual, possui óculos.',1,'','',8,32,10,'2012-02-10 13:13:49','2012-02-10 13:13:49'),(203,'2011-04-10','2011-04-19','Alciane de Souza Gomes ',3,0,'1976-09-02',0,'Sã João da Barra','Rio de janeiro',0,'R:Antônio Henriques Pessanha nº222, (no final do parque de esposição agropecuária) boca da Areia - cep28230-000',1,6,1,'Gari','Gari',1,2,0,'',NULL,0,'',1,'','',48,63,43,'2012-02-10 14:45:15','2012-02-10 14:46:09'),(204,'2012-05-07','2012-05-07','Concenilda da Silva Cabral',3,1,'1969-06-20',2,'Cachoeiro de Itapemirim','ES',0,'Comunidade de Monte Belo',0,6,2,'Lavradora','Lavradora',3,2,0,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:13:45','2012-05-07 16:14:36'),(205,'2012-05-07','2012-05-07','Josiel Gonçalves da Conceição',4,0,'1952-04-09',0,'Presidente Kennedy','ES',0,'Comunidade de Monte Belo',0,6,2,'Lavrador','Lavrador',1,2,0,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:17:31','2012-05-07 16:17:31'),(206,'2012-05-07','2012-05-07','Derinete da Cruz Fricks',4,1,'1967-07-16',0,'Presidente Kennedy','ES',0,'Comunidade de Monte Belo',0,7,2,'Lavradora','Lavradora',3,2,2,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:19:57','2012-05-07 16:19:57'),(207,'2012-05-07','2012-05-07','Edimalva Santana de Farias',3,1,'1969-02-13',0,'Presidente Kennedy','ES',0,'Comunidade de Monte Belo',0,5,2,'Lavradora','Lavradora',3,2,0,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:22:33','2012-05-07 16:22:33'),(208,'2012-05-07','2012-05-07','Carlos Gomes',4,0,'1967-01-02',0,'Presidente Kennedy','ES',0,'Comunidade de Monte Belo',0,5,2,'Lavradora','Lavradora',1,1,0,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:24:26','2012-05-07 16:24:50'),(209,'2012-05-07','2012-05-07','Geraldo da Conceição',4,0,'1967-06-21',0,'Presidente Kennedy','ES',0,'Comunidade de Monte Belo',0,7,1,'Curralheiro','Curralheiro',1,1,2,'',NULL,0,'',7,'','',7,30,13,'2012-05-07 16:27:58','2012-05-07 16:27:58');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `crypted_password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password_salt` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `perishable_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persistence_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin` tinyint(1) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin','b2202566cb11049b092e46d994b8803740e95eab0840e73d338aa47cd27577a6fd29901ccbedc572b43bf84ea0f29d4f23ad0b8b39bbdf79fd06cc28a7753214','X9n6KGZ1yXtzcVoOEA3f','z07V43xVn14BhBRjV2T1','8aa5dc55863e8e36f15fcef045e035e172da79f9ddcac9f1ac28574b4efa4da51d136cddca1a74865b506ec9cf5fb3aec0d5562688f437e15c33f96375ac7e43',NULL,'Administrador',1,'2012-02-10 16:43:36','2012-06-15 20:10:15'),(2,'sfi','f166037613c3297fc9cc71f2a7a526cb16a76ca06fef96135cbfea73269937c9f62401941bba3b0b3998c5531fb0ca34e6a331446c8bc9a7bc37a29bcb6eb352','IxWZNliRGMu6MBNacG','1C7M7tvOFwcG1iClVYFB','6239b5a9107b949f99cfb38a703ff8bbbe17791cb4b7cc8bedd4bac199fe5d43eaa728ab9fcc6c1bb4b2c713e3ec0fc70c0b73f61be49db4d2b96452107c6217','sfi@paulofreire.org','sfi',0,'2012-02-10 17:58:12','2012-02-15 09:41:15'),(3,'pkmaroba','2a7703cda2bf8ff3d345144d9029b9bb26cb16a812dd0e25a4b703b228592aae63e8694d0f6cd920b9366d0bcc7cf6787655dd169b980393e790fc9c4259f468','HuR9vyNM7uW0dIgJbmj','nuImyVMLU8Ip4oY5Ge','803ec6dba1d8c740535461ce55aaac6a997c57ddb299032b5214d45faef0443c1a9d963dccfb95e8f7b4262124c7f06b6e16654963870c128647f2dbbc0d92a2','pk@paulofreire.org','pkmaroba',0,'2012-02-14 19:24:01','2012-06-15 18:42:23'),(4,'Alessandra','33967a903a4f3e184234318bffe88e3d5f5f42f35882b8d055102bc23996b4d816dd51d3ffaaf691bcf6e9b691238a2f286772c63e912d1e621889dae2a39140','T9C7GzNYBQHV3ptreKc','8Vbkk534UeRaCiixxaWp','447da41407dae30fe3a5ca85bfabd2c772dd29734bf5d5b6d4f3099aa2b77d04b29ada7c1c71c8a4129b09086f649823cd5fc76f04e460ccab209596157765c5','alessandra@paulofreire.org','Alessandra Rodrigues dos Santos',0,'2012-02-14 19:27:53','2012-02-14 19:44:08'),(5,'Camila','a8a75a9b47fc298c364daffacb6701758f9a1476828240eff32721c56409cf06f1cdf174987517e1ed20425a9f13714e16301a868508f6f470ff194eb3a80169','uUaBOBJeCD5mROo1uo3k','r8pyc3KYk8a9OEMb9s','310411bf719a07e9feb4e64ae9a8969d483c431c4f7a57ff3005431f140593634aa8434d72962c7ac756ad941ecd77c59eb5d3f617d4ee76d75651a60a6437df','camila.tavares@paulofreire.org','Camila Silva Tavares',0,'2012-02-14 19:32:20','2012-06-15 19:03:11'),(6,'Clarinda','ef8037f2c5b1e7d71ab59e34ede52731a7bb70bdbef4e31b2c2489be240e6fecb28787f91c282e38321d00b6d7b518cad7eb0ac4842997118d48fada26cd7ca7','tPcwK8IWVnfEnxBGe','aZya8eN1rNihL5SbF7','ef83014622db64d3e7e58d0557ab2f4410f264f8dc3da9ca49f3c8ba48686fdc1d875c7b964fd703b2ed9a652cb0aeaf1cc2c798dc2e7a4287e993819f1f5c94','clarinda.silva@paulofreire.org','Clarinda Monteiro da Silva',0,'2012-02-14 19:33:53','2012-02-14 19:33:53'),(7,'Soraia','d84c373fa5be0d6d0f7880171816e7e32976833d637e7db551fe07933eeca80301847e91ee1b01effd1379e5abf9e6054c1449d0c9e3fd50bb804483ba870a39','bhuHmbO9ktuakQGpzArz','UgpqW8fUTpx9NWvPe1J','5b3efec3a1796cef49dd6a4f56e156dbcd23e974858b1a7d1a752fcafaafca6864379f20f6f9ea08ee400136d10667cd93f204e2bd876860eafb0fc6d88b724e','soraiateixeira@paulofreire.org','Soraia Teixeira dos Santos',0,'2012-02-14 19:35:56','2012-06-15 18:42:22'),(8,'Zeny','469da902a9c9b474e5733834c56a0737f2473c54bdaefb73fcb7eddd951f862e71b0b7ae9d0516e8b82b367029c9e23d55f5a4794d1c63615855dfb5e63ba52f','ldjcrijRM2dkknioZzS','0YayLGTP1nd1gkONGRvk','995dd6000cdfde535a26c2e20e9a2218cdf6001c8901e150f85033206a41c767fddf896f3b1d3d8800d7bf54c1d4f3a143d2658fdc0dc054bd54a3479b2e61a5','zenir@paulofreire.org','Zeny Ornelas Cardoso',0,'2012-02-14 19:36:45','2012-03-19 13:49:50'),(9,'Angela','11671c8130562790639325d0ab268310eb980fd7648cbcde0a2137de37a47cfbddb0c1712e6539d680526c6175f3fe87119e0147a3d3665a17e4d6264c880782','68aq8FNYs4BUDI5ExJjb','rXYsCuRLcooUVwtIePtO','42ba891c6e5448c2b44e93a20e55831929d47c45e0e24931ba5d2535d1be3547f8c1ffa4ee02f7069b992783b1591ea3ec4df320d999b54c73c585e312cf05db','angelamarcia22@gmail.com','Angela Márcia Silva Sinflório Santos',0,'2012-02-14 19:38:31','2012-02-23 13:00:33'),(10,'Eliza','1507fc99a092ea801f680805460148f4d98c0549b45b68e2533973ddf41e6765be712444ad2cb52eb23c4282da6bc71c0ed375deb78cba5585753b5668a14013','ZYKEdkIdu3r3szwqg5n','423hxdlizIMqeQj22ae','fd9efd4d1af6a3566537543c9d92cd075aca9c78b1bcb9ce89c13236227d44107cee97ee1f8d8cb607586134a3ffb1cd21c40a4876a544f6cd737b93684032e9','elizasouza49@yahoo.com','Eliza Gomes de Souza Oliveira',0,'2012-02-14 19:39:27','2012-03-28 14:52:17'),(11,'Renata','1d013909fd9b4da8943c534126b6ccadb2c68162c4515c3519b7868ce9667db3ab74308b40d5dde88c60d599814cfb71023cd1cc14696ef5452f3eec229466cc','1UU83SxJtt3GQOkHOlB','K3anMCTy56YicunSRkn','017c50502066adef90678ee9e73ac300cdd9bdc3bb313cf457233249b4db9500dd5dcac670839ab0c4fa97e32e344c5cd81b3a5bbe343715633b5bc76fe94ccb','santossilvarenata7@gmail.com','Renata dos Santos Silva Ventura',0,'2012-02-14 19:40:10','2012-03-19 13:46:01'),(12,'Joana','9b2b6efb8d6ffab20bb4ffe17b7c9629007a52fdeb0d353f477981e7755a027b1625607452c64ea29bc6e55525e5e48eaf33ac654cb0b25b7ebc4e555b06f7bb','JYE3qDDYOpf6Hw8g9sD','PZvXivH8FWOub8GY9uU','dbc71e1c138b9fc795f364d54ff232dd4ec46801ce5d2992a66af69aaf4c3afc8553829d1b9695c002c20c72f884e096d4bc0a26268ab15424b7975d718ddf07','joana.joana.santos@gmail.com','Joana Santos Raymundo',0,'2012-02-14 19:41:12','2012-03-19 13:42:43'),(13,'Maria','23b34a267976f26a64a6b36d903f3c0a2d4ee73b3e4a5173c1fb694dae448cc4d5a26f9c71220ce1fe89cdc9a9e75904ffa994043f475e1ccf11ace89afcd618','noSbbH2sCxXV6Zsi6Hct','2qTWOgZDRbXBtQhMH2b','66a6188eb8e02f11605e0178b9ef536c77bff9720f3ed8a69939696f11b4cb5b1747f9d844f4b26b2f28a81d6b8e31329ec236ec08f0f7b9fbc3c773191989d3','zezemanhaes@gmail.com','Maria José Manhães da Silva',0,'2012-02-14 19:42:00','2012-03-27 14:08:02'),(14,'Juliana','ff5d5c47e948267da974a91de816733aa60a4f7cdc5e00774fcf28808a912c8ea8499be19c010f7f64a08fc999ed71282a21b7eae64165baba3153b07dca7f5a','689vfEpt4vlYuwF3InG','wJZ7dcVHrW8LHrP6qKZ','e60bb473c081f48208a239a695fe13fcbac91b1ef422e5b0f273cacc1e1dc40a8f394681690f5be193359b8b7275589206e260736d37276fed9ddbf23720f2d0','ju-lemos2011@hotmail.com','Juliana da Silveira Lemos',0,'2012-02-14 19:43:23','2012-03-19 13:47:27'),(15,'uelves','4e0444c99644134aee11d2255cc3483bcb7ed3893a99d49cbfe00a0d699f6b0787ce923d2e232374dd7e1793453d1d31c88155784d3cb0c0c0406583488d8530','XixBwMzJAxTOMXhJPzT','rOu9WKBdC2v9wa9y2fHJ','0d7f09a55e47342c11fc64c8aa201c0042c4df2429b61e1641f3c936e998b19f48095720486f8f9b93542330b938c01cb1ae4587de13cd52df7894a7e5ecf50b','uelves@paulofreire.org','uelves',0,'2012-03-21 18:38:24','2012-03-26 19:19:13');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `world_readings`
--

DROP TABLE IF EXISTS `world_readings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `world_readings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `have_experience` text COLLATE utf8_unicode_ci,
  `availability` text COLLATE utf8_unicode_ci,
  `availability_to_travel` tinyint(1) DEFAULT NULL,
  `need_for_literacy` text COLLATE utf8_unicode_ci,
  `can_organize_rooms` text COLLATE utf8_unicode_ci,
  `educator_wish` text COLLATE utf8_unicode_ci,
  `any_time` text COLLATE utf8_unicode_ci,
  `what_teach` text COLLATE utf8_unicode_ci,
  `young_and_old_together` text COLLATE utf8_unicode_ci,
  `list_subjects` text COLLATE utf8_unicode_ci,
  `computer_use` int(11) DEFAULT NULL,
  `what_use` int(11) DEFAULT NULL,
  `about_internet_use` int(11) DEFAULT NULL,
  `about_internet_use_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `internet_connection_type` int(11) DEFAULT NULL,
  `what_you_do_in_internet` int(11) DEFAULT NULL,
  `frequency_email_reading` int(11) DEFAULT NULL,
  `make_searches` tinyint(1) DEFAULT NULL,
  `prefered_search_engine` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `social_networking` int(11) DEFAULT NULL,
  `social_networking_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `discussion_list` int(11) DEFAULT NULL,
  `discussion_list_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `forum` int(11) DEFAULT NULL,
  `forum_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `chat` tinyint(1) DEFAULT NULL,
  `msn` tinyint(1) DEFAULT NULL,
  `use_msn_with_frequency` tinyint(1) DEFAULT NULL,
  `has_blog` tinyint(1) DEFAULT NULL,
  `share_photos_videos` tinyint(1) DEFAULT NULL,
  `e_learning` tinyint(1) DEFAULT NULL,
  `e_learning_desc` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `educator_id` int(11) DEFAULT NULL,
  `coordinator_id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `world_readings`
--

LOCK TABLES `world_readings` WRITE;
/*!40000 ALTER TABLE `world_readings` DISABLE KEYS */;
INSERT INTO `world_readings` VALUES (1,'','Não mais tenho ajudado vários amigos que estudam a tirarem suas dúvidas nas matérias  ','Estou disponível ao aluno, independente de horário e dias. Pois quero o melhor para cada um deles ',1,'Sim. pois vejo a necessidade de várias pessoas. Pois tanto os jovens e adultos de minha comunidade são vários que não foram alfabetizados, pois creio que com esse projeto de educação diminuirá o número de analfabetismo em minha comunidade. Pois se depender de mim vou me esforçar para que isso possa acontecer.   ','Sim, indo nas casas das pessoas que não foram alfabetizadas e convidando essas pessoas para entrarem nesse projeto de educação de Jovens e Adultos do Instituto Paulo Freire.','É tão bom você passar para outra pessoa aquilo que você sabe e o que esta aprendendo. é muito gratificando quando um educador, vê o seu aluno aprendendo algo tão importante que ele no tempo de sua infância não teve oportunidade para aprender.   ','Sim, porque depende da condição de horário de cada aluno','Cada aluno tem a sua dificuldade. O educador ele tem que ensinar de acordo com a dificuldade de cada aluno.','Sim, é possível por que quando há interesse e o querer. Tudo é possível.','Pedagogia\r\nInformática\r\nPsicologia\r\nPortuguês\r\nMatemática',2,1,3,'',1,3,1,0,'',4,'',1,'',0,'',0,0,0,0,0,0,'',1,NULL,'2011-06-22 19:48:19','2011-06-22 19:48:19'),(2,'ceciliagomes15@hotmail.com','Sim. Somente quando fiz estágio para o magistério. Gostei da experiência pois eles são mais interessados, mais respeitadores.','Tenho disponibilidade todos os dias e a qualquer hora.',1,'Sim. Em minha comunidade há um índice de analfabetismo muito grande. Uns porque não tiveram insentivo dos pais, etc... Também termos casos dos jovens que na maioria das vezes não tem interesse algum. Porém acho que com bastante força e vontade conseguiria organizar e despertar interesse de aprendizado a essas pessoas.  ','Sim, conseguiria. Conheço muitas pessoas em minha comunidade e com bastante diálogo, mostrando a importância da alfabetização montando uma reunião ou se fosse necessário ir a casa de um por um para mobilizá-lo a começar uma nova fase em sua vida.  ','Ao meu ver, é muito triste estar em lugar onde muitos sabem ler, escrever, interpretar e você não saber.\r\nO meu desejo é mudar essa realidade, sei que não vou conseguir mudar isso no Brasil inteiro, mas só em estar realizando esse projeto em meu município pra mim já seria uma grande vitória. E também porque no momento estou desempregada, sou professora mas infelizmente há dois meses não exerço minha função.      ','Sim. concordo plenamente. Como disse anteriormente muitas pessoas são analfabetos porque trabalham e não tem tempo para estudar. Então muitas não terão disponibilidade de dia mas podem a noite ou terão de manhã e não vá tarde etc. Por isso nos educandos que temos que oferecer disponibilidade a eles a qualquer hora ou lugar. ','Em primeiro lugar devemos ensiná-lo a querer. Professores devem ensinar aos alunos adultos tudo. Contando que muitas vezes eles não sabem ler mas sabem fazer uma conta matemática como ninguém, então precisamos saber qual é sua necessidade, o que ele tem mais dúvida, por que uns podem saber algo e outro pode não saber nada, então temos que estar a par das necessidades deles. ','Sim. Se nós que somos nós educandos acharmos que não é possível o juntamento dos jovens adultos e idosos já começaremos errados porque assim onde estará nossa inclusão social? Podemos e devemos juntá-los sim, porque além de estar ensinando e levando-o à alfabetização estaremos ensinando também a inclusão na sociedade.  ','Devemos seguir sua realidade, podemos ir para sala de aula com uma visão de aula e chegar lá, vẽ que eles querem mais, que querem aprender de outra forma. ',1,1,1,'',3,1,3,0,'google',1,'',2,'',0,'',0,1,0,0,0,0,'',2,NULL,'2011-06-22 19:54:40','2011-06-22 20:54:25');
/*!40000 ALTER TABLE `world_readings` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2012-06-15 17:21:07
