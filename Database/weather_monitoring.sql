-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: weather_monitoring
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `daily_summary`
--

DROP TABLE IF EXISTS `daily_summary`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `daily_summary` (
  `id` int NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `avg_temp` decimal(5,2) DEFAULT NULL,
  `max_temp` decimal(5,2) DEFAULT NULL,
  `min_temp` decimal(5,2) DEFAULT NULL,
  `dominant_condition` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=360 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `daily_summary`
--

LOCK TABLES `daily_summary` WRITE;
/*!40000 ALTER TABLE `daily_summary` DISABLE KEYS */;
INSERT INTO `daily_summary` VALUES (1,'2024-10-22',25.05,25.05,25.05,'Haze'),(2,'2024-10-22',29.99,29.99,29.99,'Haze'),(3,'2024-10-22',29.21,29.45,27.83,'Clouds'),(4,'2024-10-22',21.78,22.80,20.83,'Rain'),(5,'2024-10-22',26.97,26.97,26.97,'Haze'),(6,'2024-10-22',23.73,23.73,23.73,'Rain'),(7,'2024-10-22',25.05,25.05,25.05,'Haze'),(8,'2024-10-22',29.99,29.99,29.99,'Haze'),(9,'2024-10-22',29.17,29.45,27.79,'Clouds'),(10,'2024-10-22',21.78,22.80,20.83,'Rain'),(11,'2024-10-22',26.97,26.97,26.97,'Haze'),(12,'2024-10-22',23.73,23.73,23.73,'Rain'),(13,'2024-10-23',25.05,25.05,25.05,'Haze'),(14,'2024-10-23',29.99,29.99,29.99,'Haze'),(15,'2024-10-23',29.02,29.45,27.79,'Clouds'),(16,'2024-10-23',21.95,22.80,21.29,'Rain'),(17,'2024-10-23',26.97,26.97,26.97,'Haze'),(18,'2024-10-23',23.73,23.73,23.73,'Rain'),(19,'2024-10-23',24.05,24.05,24.05,'Mist'),(20,'2024-10-23',29.99,29.99,29.99,'Haze'),(21,'2024-10-23',29.02,29.45,27.79,'Clouds'),(22,'2024-10-23',21.95,22.80,21.29,'Rain'),(23,'2024-10-23',26.97,26.97,26.97,'Haze'),(24,'2024-10-23',22.73,22.73,22.73,'Rain'),(25,'2024-10-23',24.05,24.05,24.05,'Mist'),(26,'2024-10-23',29.99,29.99,29.99,'Haze'),(27,'2024-10-23',29.01,29.44,27.79,'Clouds'),(28,'2024-10-23',21.95,22.80,21.29,'Rain'),(29,'2024-10-23',26.97,26.97,26.97,'Haze'),(30,'2024-10-23',22.73,22.73,22.73,'Rain'),(31,'2024-10-23',24.05,24.05,24.05,'Mist'),(32,'2024-10-23',29.99,29.99,29.99,'Haze'),(33,'2024-10-23',29.01,29.44,27.79,'Clouds'),(34,'2024-10-23',21.78,22.80,20.83,'Rain'),(35,'2024-10-23',26.97,26.97,26.97,'Haze'),(36,'2024-10-23',22.73,22.73,22.73,'Rain'),(37,'2024-10-23',24.05,24.05,24.05,'Mist'),(38,'2024-10-23',29.99,29.99,29.99,'Haze'),(39,'2024-10-23',28.43,29.36,27.22,'Clouds'),(40,'2024-10-23',21.78,22.80,20.83,'Rain'),(41,'2024-10-23',26.97,26.97,26.97,'Haze'),(42,'2024-10-23',22.73,22.73,22.73,'Rain'),(43,'2024-10-23',24.05,24.05,24.05,'Mist'),(44,'2024-10-23',29.99,29.99,29.99,'Haze'),(45,'2024-10-23',28.49,29.44,27.22,'Clouds'),(46,'2024-10-23',21.62,22.80,20.73,'Rain'),(47,'2024-10-23',26.97,26.97,26.97,'Haze'),(48,'2024-10-23',22.73,22.73,22.73,'Rain'),(49,'2024-10-23',29.05,29.05,29.05,'Haze'),(50,'2024-10-23',31.99,31.99,30.94,'Haze'),(51,'2024-10-23',33.24,33.46,31.99,'Haze'),(52,'2024-10-23',26.89,27.80,25.83,'Haze'),(53,'2024-10-23',29.97,29.97,29.97,'Haze'),(54,'2024-10-23',29.23,29.23,28.73,'Haze'),(55,'2024-10-23',30.05,30.05,30.05,'Haze'),(56,'2024-10-23',31.99,31.99,30.94,'Haze'),(57,'2024-10-23',33.24,33.92,31.99,'Haze'),(58,'2024-10-23',27.09,27.80,25.90,'Haze'),(59,'2024-10-23',30.97,30.97,30.97,'Haze'),(60,'2024-10-23',29.23,29.23,28.73,'Haze'),(61,'2024-10-23',30.05,30.05,30.05,'Haze'),(62,'2024-10-23',31.99,31.99,30.94,'Haze'),(63,'2024-10-23',33.24,33.92,31.99,'Haze'),(64,'2024-10-23',27.09,27.80,25.90,'Haze'),(65,'2024-10-23',30.97,30.97,30.97,'Haze'),(66,'2024-10-23',29.23,29.23,28.73,'Haze'),(67,'2024-10-23',30.05,30.05,30.05,'Haze'),(68,'2024-10-23',31.99,31.99,30.94,'Haze'),(69,'2024-10-23',33.12,33.90,32.22,'Clouds'),(70,'2024-10-23',27.09,27.80,25.90,'Haze'),(71,'2024-10-23',30.97,30.97,30.97,'Haze'),(72,'2024-10-23',29.23,29.23,28.73,'Haze'),(73,'2024-10-23',30.05,30.05,30.05,'Haze'),(74,'2024-10-23',31.99,31.99,30.94,'Haze'),(75,'2024-10-23',33.12,33.90,32.22,'Clouds'),(76,'2024-10-23',27.09,27.80,25.90,'Haze'),(77,'2024-10-23',30.97,30.97,30.97,'Haze'),(78,'2024-10-23',29.23,29.23,28.73,'Haze'),(79,'2024-10-23',30.05,30.05,30.05,'Haze'),(80,'2024-10-23',32.99,32.99,30.94,'Haze'),(81,'2024-10-23',33.79,34.45,32.83,'Haze'),(82,'2024-10-23',27.23,27.80,26.79,'Haze'),(83,'2024-10-23',30.97,30.97,30.97,'Haze'),(84,'2024-10-23',29.23,29.73,29.23,'Haze'),(85,'2024-10-23',30.05,30.05,30.05,'Haze'),(86,'2024-10-23',32.99,32.99,30.94,'Haze'),(87,'2024-10-23',33.60,33.92,32.99,'Haze'),(88,'2024-10-23',27.04,27.43,25.90,'Rain'),(89,'2024-10-23',30.97,30.97,30.97,'Haze'),(90,'2024-10-23',29.23,29.73,29.23,'Haze'),(91,'2024-10-23',30.05,30.05,30.05,'Haze'),(92,'2024-10-23',32.99,32.99,30.94,'Haze'),(93,'2024-10-23',33.60,33.92,32.99,'Haze'),(94,'2024-10-23',27.21,27.95,26.79,'Rain'),(95,'2024-10-23',30.97,30.97,30.97,'Haze'),(96,'2024-10-23',29.23,29.73,29.23,'Haze'),(97,'2024-10-23',30.05,30.05,30.05,'Haze'),(98,'2024-10-23',32.99,32.99,30.94,'Haze'),(99,'2024-10-23',33.65,34.02,32.99,'Haze'),(100,'2024-10-23',27.21,27.95,26.79,'Rain'),(101,'2024-10-23',30.97,30.97,30.97,'Haze'),(102,'2024-10-23',29.23,29.73,29.23,'Haze'),(103,'2024-10-23',30.05,30.05,30.05,'Haze'),(104,'2024-10-23',32.99,32.99,30.94,'Haze'),(105,'2024-10-23',33.65,34.02,32.99,'Haze'),(106,'2024-10-23',27.33,28.80,25.90,'Rain'),(107,'2024-10-23',30.97,30.97,30.97,'Haze'),(108,'2024-10-23',29.23,29.73,29.23,'Haze'),(109,'2024-10-23',31.05,31.05,31.05,'Haze'),(110,'2024-10-23',31.99,31.99,31.94,'Smoke'),(111,'2024-10-23',33.75,34.47,32.79,'Haze'),(112,'2024-10-23',27.33,28.80,25.90,'Rain'),(113,'2024-10-23',29.97,29.97,29.97,'Rain'),(114,'2024-10-23',29.23,29.73,29.23,'Haze'),(115,'2024-10-23',31.05,31.05,31.05,'Haze'),(116,'2024-10-23',31.99,31.99,31.94,'Smoke'),(117,'2024-10-23',33.75,34.47,32.79,'Haze'),(118,'2024-10-23',27.20,28.51,26.39,'Rain'),(119,'2024-10-23',29.97,29.97,29.97,'Rain'),(120,'2024-10-23',29.23,30.73,29.23,'Haze'),(121,'2024-10-23',31.05,31.05,31.05,'Haze'),(122,'2024-10-23',31.99,31.99,31.94,'Smoke'),(123,'2024-10-23',33.75,34.47,32.79,'Haze'),(124,'2024-10-23',27.20,28.51,26.39,'Rain'),(125,'2024-10-23',29.97,29.97,29.97,'Rain'),(126,'2024-10-23',29.23,30.73,29.23,'Haze'),(127,'2024-10-23',31.05,31.05,31.05,'Haze'),(128,'2024-10-23',31.99,31.99,31.94,'Smoke'),(129,'2024-10-23',33.13,34.02,32.23,'Haze'),(130,'2024-10-23',27.20,28.51,26.39,'Rain'),(131,'2024-10-23',29.97,29.97,29.97,'Rain'),(132,'2024-10-23',29.23,30.73,29.23,'Haze'),(133,'2024-10-23',31.05,31.05,31.05,'Haze'),(134,'2024-10-23',31.99,31.99,31.94,'Smoke'),(135,'2024-10-23',33.42,34.57,32.23,'Haze'),(136,'2024-10-23',27.39,28.80,26.79,'Rain'),(137,'2024-10-23',29.97,29.97,29.97,'Rain'),(138,'2024-10-23',29.23,30.73,29.23,'Haze'),(139,'2024-10-23',31.05,31.05,31.05,'Haze'),(140,'2024-10-23',31.99,31.99,31.94,'Smoke'),(141,'2024-10-23',33.55,34.47,32.79,'Haze'),(142,'2024-10-23',27.39,28.80,26.79,'Rain'),(143,'2024-10-23',29.97,29.97,29.97,'Rain'),(144,'2024-10-23',29.23,30.73,29.23,'Haze'),(145,'2024-10-23',31.05,31.05,31.05,'Haze'),(146,'2024-10-23',32.99,32.99,32.94,'Smoke'),(147,'2024-10-23',33.53,34.47,32.23,'Haze'),(148,'2024-10-23',27.40,28.51,26.79,'Rain'),(149,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(150,'2024-10-23',29.23,30.73,29.23,'Haze'),(151,'2024-10-23',31.05,31.05,31.05,'Haze'),(152,'2024-10-23',32.99,32.99,32.94,'Smoke'),(153,'2024-10-23',33.49,34.45,32.79,'Haze'),(154,'2024-10-23',27.40,28.51,26.79,'Rain'),(155,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(156,'2024-10-23',29.23,30.73,29.23,'Haze'),(157,'2024-10-23',31.05,31.05,31.05,'Haze'),(158,'2024-10-23',32.99,32.99,32.94,'Smoke'),(159,'2024-10-23',33.49,34.45,32.79,'Haze'),(160,'2024-10-23',27.40,28.51,26.79,'Rain'),(161,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(162,'2024-10-23',29.23,30.73,29.23,'Haze'),(163,'2024-10-23',33.99,33.99,32.94,'Smoke'),(164,'2024-10-23',33.46,33.94,31.72,'Haze'),(165,'2024-10-23',31.05,31.05,31.05,'Haze'),(166,'2024-10-23',33.46,33.94,31.72,'Haze'),(167,'2024-10-23',27.58,28.51,26.79,'Rain'),(168,'2024-10-23',33.99,33.99,32.94,'Smoke'),(169,'2024-10-23',27.58,28.51,26.79,'Rain'),(170,'2024-10-23',33.46,33.94,31.72,'Haze'),(171,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(172,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(173,'2024-10-23',27.58,28.51,26.79,'Rain'),(174,'2024-10-23',31.23,31.23,30.73,'Haze'),(175,'2024-10-23',31.23,31.23,30.73,'Haze'),(176,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(177,'2024-10-23',31.23,31.23,30.73,'Haze'),(178,'2024-10-23',31.05,31.05,31.05,'Haze'),(179,'2024-10-23',33.99,33.99,32.94,'Smoke'),(180,'2024-10-23',33.26,33.94,32.27,'Haze'),(181,'2024-10-23',27.58,28.51,26.79,'Rain'),(182,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(183,'2024-10-23',31.23,31.23,30.73,'Haze'),(184,'2024-10-23',31.05,31.05,31.05,'Haze'),(185,'2024-10-23',33.99,33.99,32.94,'Smoke'),(186,'2024-10-23',33.43,33.94,32.27,'Haze'),(187,'2024-10-23',27.84,29.16,26.79,'Rain'),(188,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(189,'2024-10-23',31.23,31.23,30.73,'Haze'),(190,'2024-10-23',31.05,31.05,31.05,'Haze'),(191,'2024-10-23',33.99,33.99,32.94,'Smoke'),(192,'2024-10-23',33.43,33.94,32.27,'Haze'),(193,'2024-10-23',27.84,29.16,26.79,'Rain'),(194,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(195,'2024-10-23',31.23,31.23,30.73,'Haze'),(196,'2024-10-23',31.05,31.05,31.05,'Haze'),(197,'2024-10-23',33.99,33.99,32.94,'Smoke'),(198,'2024-10-23',33.35,34.44,31.99,'Haze'),(199,'2024-10-23',28.04,29.62,26.79,'Rain'),(200,'2024-10-23',24.97,24.97,24.97,'Thunderstorm'),(201,'2024-10-23',31.23,31.23,30.73,'Haze'),(202,'2024-10-23',26.05,26.05,26.05,'Haze'),(203,'2024-10-23',30.99,30.99,30.99,'Haze'),(204,'2024-10-23',30.00,30.05,29.57,'Mist'),(205,'2024-10-23',21.89,22.50,21.29,'Rain'),(206,'2024-10-23',25.97,25.97,25.97,'Haze'),(207,'2024-10-23',26.23,26.73,26.23,'Haze'),(208,'2024-10-23',26.05,26.05,26.05,'Haze'),(209,'2024-10-23',30.99,30.99,30.99,'Haze'),(210,'2024-10-23',29.72,30.03,28.89,'Mist'),(211,'2024-10-23',22.17,22.50,21.84,'Rain'),(212,'2024-10-23',25.97,25.97,25.97,'Haze'),(213,'2024-10-23',26.23,26.73,26.23,'Haze'),(214,'2024-10-23',25.97,25.97,25.97,'Haze'),(215,'2024-10-23',23.23,24.73,23.23,'Haze'),(216,'2024-10-24',26.05,26.05,26.05,'Haze'),(217,'2024-10-24',30.99,30.99,30.99,'Haze'),(218,'2024-10-24',29.28,30.48,28.33,'Mist'),(219,'2024-10-24',23.49,23.80,22.90,'Clouds'),(220,'2024-10-24',24.97,24.97,24.97,'Haze'),(221,'2024-10-24',23.23,25.73,23.23,'Haze'),(222,'2024-10-24',26.05,26.05,26.05,'Haze'),(223,'2024-10-24',30.99,30.99,30.99,'Haze'),(224,'2024-10-24',29.23,30.03,28.33,'Mist'),(225,'2024-10-24',23.49,23.80,22.90,'Clouds'),(226,'2024-10-24',24.97,24.97,24.97,'Haze'),(227,'2024-10-24',23.23,24.73,23.23,'Haze'),(228,'2024-10-24',26.05,26.05,26.05,'Haze'),(229,'2024-10-24',30.99,30.99,30.99,'Haze'),(230,'2024-10-24',29.91,30.03,28.90,'Mist'),(231,'2024-10-24',23.49,23.80,22.90,'Clouds'),(232,'2024-10-24',24.97,24.97,24.97,'Haze'),(233,'2024-10-24',23.23,25.73,23.23,'Haze'),(234,'2024-10-24',26.05,26.05,26.05,'Haze'),(235,'2024-10-24',30.99,30.99,30.99,'Haze'),(236,'2024-10-24',29.91,30.03,28.90,'Mist'),(237,'2024-10-24',23.26,23.80,22.50,'Clouds'),(238,'2024-10-24',24.97,24.97,24.97,'Haze'),(239,'2024-10-24',22.23,24.73,22.23,'Haze'),(240,'2024-10-24',26.05,26.05,26.05,'Haze'),(241,'2024-10-24',30.99,30.99,30.99,'Haze'),(242,'2024-10-24',29.91,30.03,28.90,'Mist'),(243,'2024-10-24',23.26,23.80,22.50,'Clouds'),(244,'2024-10-24',24.97,24.97,24.97,'Haze'),(245,'2024-10-24',22.23,24.73,22.23,'Haze'),(246,'2024-10-24',24.05,24.05,24.05,'Haze'),(247,'2024-10-24',29.99,29.99,29.99,'Haze'),(248,'2024-10-24',28.97,29.44,28.34,'Mist'),(249,'2024-10-24',21.89,21.94,21.84,'Clouds'),(250,'2024-10-24',24.97,24.97,24.97,'Haze'),(251,'2024-10-24',22.73,22.73,22.73,'Haze'),(252,'2024-10-24',24.05,24.05,24.05,'Haze'),(253,'2024-10-24',29.99,29.99,29.99,'Haze'),(254,'2024-10-24',28.97,29.44,28.34,'Mist'),(255,'2024-10-24',22.27,22.80,21.84,'Mist'),(256,'2024-10-24',24.97,24.97,24.97,'Haze'),(257,'2024-10-24',22.73,22.73,22.73,'Haze'),(258,'2024-10-24',24.05,24.05,24.05,'Haze'),(259,'2024-10-24',29.99,29.99,29.99,'Haze'),(260,'2024-10-24',28.97,29.44,27.91,'Mist'),(261,'2024-10-24',22.27,22.80,21.84,'Mist'),(262,'2024-10-24',24.97,24.97,24.97,'Haze'),(263,'2024-10-24',22.73,22.73,22.73,'Haze'),(264,'2024-10-24',24.05,24.05,24.05,'Haze'),(265,'2024-10-24',29.99,29.99,29.99,'Haze'),(266,'2024-10-24',28.97,29.44,27.91,'Mist'),(267,'2024-10-24',22.27,22.80,21.84,'Mist'),(268,'2024-10-24',24.97,24.97,24.97,'Haze'),(269,'2024-10-24',22.73,22.73,22.73,'Haze'),(270,'2024-10-24',24.05,24.05,24.05,'Haze'),(271,'2024-10-24',29.99,29.99,29.99,'Haze'),(272,'2024-10-24',28.97,29.44,27.91,'Mist'),(273,'2024-10-24',21.89,21.94,21.84,'Clouds'),(274,'2024-10-24',24.97,24.97,24.97,'Haze'),(275,'2024-10-24',22.73,22.73,22.73,'Haze'),(276,'2024-10-24',24.05,24.05,24.05,'Haze'),(277,'2024-10-24',29.99,29.99,29.99,'Haze'),(278,'2024-10-24',28.81,29.44,27.79,'Mist'),(279,'2024-10-24',21.89,21.94,20.90,'Clouds'),(280,'2024-10-24',24.97,24.97,24.97,'Haze'),(281,'2024-10-24',22.73,22.73,22.73,'Haze'),(282,'2024-10-24',24.05,24.05,24.05,'Haze'),(283,'2024-10-24',29.99,29.99,29.99,'Haze'),(284,'2024-10-24',28.69,29.44,27.79,'Mist'),(285,'2024-10-24',21.89,21.94,20.90,'Clouds'),(286,'2024-10-24',24.97,24.97,24.97,'Haze'),(287,'2024-10-24',22.73,22.73,22.73,'Haze'),(288,'2024-10-25',24.05,24.05,24.05,'Haze'),(289,'2024-10-25',29.99,29.99,29.99,'Haze'),(290,'2024-10-25',28.68,29.44,27.79,'Mist'),(291,'2024-10-25',21.89,21.94,20.90,'Clouds'),(292,'2024-10-25',24.97,24.97,24.97,'Haze'),(293,'2024-10-25',22.73,22.73,22.73,'Haze'),(294,'2024-10-25',24.05,24.05,24.05,'Haze'),(295,'2024-10-25',29.99,29.99,29.99,'Haze'),(296,'2024-10-25',28.60,29.44,27.79,'Mist'),(297,'2024-10-25',21.62,21.94,20.90,'Clouds'),(298,'2024-10-25',24.97,24.97,24.97,'Haze'),(299,'2024-10-25',22.73,22.73,22.73,'Haze'),(300,'2024-10-25',24.05,24.05,24.05,'Haze'),(301,'2024-10-25',29.99,29.99,29.99,'Haze'),(302,'2024-10-25',28.68,29.44,27.79,'Mist'),(303,'2024-10-25',21.62,21.94,20.90,'Clouds'),(304,'2024-10-25',24.97,24.97,24.97,'Haze'),(305,'2024-10-25',22.73,22.73,22.73,'Haze'),(306,'2024-10-25',24.05,24.05,24.05,'Haze'),(307,'2024-10-25',29.99,29.99,29.99,'Haze'),(308,'2024-10-25',28.60,29.44,27.79,'Mist'),(309,'2024-10-25',21.62,21.94,20.90,'Clouds'),(310,'2024-10-25',24.97,24.97,24.97,'Haze'),(311,'2024-10-25',22.73,22.73,22.73,'Haze'),(312,'2024-10-25',24.05,24.05,24.05,'Haze'),(313,'2024-10-25',29.99,29.99,29.99,'Haze'),(314,'2024-10-25',28.60,29.44,27.79,'Mist'),(315,'2024-10-25',21.62,21.94,20.90,'Clouds'),(316,'2024-10-25',24.97,24.97,24.97,'Haze'),(317,'2024-10-25',22.73,22.73,22.73,'Haze'),(318,'2024-10-25',24.05,24.05,24.05,'Haze'),(319,'2024-10-25',28.99,28.99,28.99,'Haze'),(320,'2024-10-25',28.15,28.99,27.22,'Mist'),(321,'2024-10-25',21.62,21.94,20.90,'Clouds'),(322,'2024-10-25',24.97,24.97,24.97,'Haze'),(323,'2024-10-25',22.73,22.73,22.73,'Haze'),(324,'2024-10-25',24.05,24.05,24.05,'Haze'),(325,'2024-10-25',28.99,28.99,28.99,'Haze'),(326,'2024-10-25',28.03,28.81,27.22,'Mist'),(327,'2024-10-25',21.62,21.94,20.90,'Clouds'),(328,'2024-10-25',24.97,24.97,24.97,'Haze'),(329,'2024-10-25',22.73,22.73,22.73,'Haze'),(330,'2024-10-25',24.05,24.05,24.05,'Haze'),(331,'2024-10-25',28.99,28.99,28.99,'Haze'),(332,'2024-10-25',28.01,28.81,27.35,'Mist'),(333,'2024-10-25',21.62,21.94,20.90,'Clouds'),(334,'2024-10-25',24.97,24.97,24.97,'Haze'),(335,'2024-10-25',22.73,22.73,22.73,'Haze'),(336,'2024-10-25',23.05,23.05,23.05,'Haze'),(337,'2024-10-25',28.99,28.99,28.99,'Haze'),(338,'2024-10-25',28.00,28.81,27.27,'Mist'),(339,'2024-10-25',22.11,22.80,20.90,'Mist'),(340,'2024-10-25',24.97,24.97,24.97,'Haze'),(341,'2024-10-25',22.73,22.73,22.73,'Haze'),(342,'2024-10-25',23.05,23.05,23.05,'Haze'),(343,'2024-10-25',28.99,28.99,28.99,'Haze'),(344,'2024-10-25',28.00,28.81,27.27,'Mist'),(345,'2024-10-25',22.11,22.80,20.90,'Mist'),(346,'2024-10-25',25.97,25.97,25.97,'Haze'),(347,'2024-10-25',22.73,22.73,22.73,'Haze'),(348,'2024-10-25',23.05,23.05,23.05,'Haze'),(349,'2024-10-25',28.99,28.99,28.99,'Haze'),(350,'2024-10-25',27.92,28.33,27.23,'Mist'),(351,'2024-10-25',22.11,22.80,20.90,'Mist'),(352,'2024-10-25',25.97,25.97,25.97,'Haze'),(353,'2024-10-25',22.73,22.73,22.73,'Haze'),(354,'2024-10-25',23.05,23.05,23.05,'Haze'),(355,'2024-10-25',28.99,28.99,28.99,'Haze'),(356,'2024-10-25',27.92,28.33,27.23,'Mist'),(357,'2024-10-25',22.11,22.80,20.90,'Mist'),(358,'2024-10-25',25.97,25.97,25.97,'Haze'),(359,'2024-10-25',22.73,22.73,22.73,'Haze');
/*!40000 ALTER TABLE `daily_summary` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weather_data`
--

DROP TABLE IF EXISTS `weather_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `weather_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `city` varchar(255) NOT NULL,
  `temp` decimal(5,2) NOT NULL,
  `feels_like` decimal(5,2) DEFAULT NULL,
  `main` varchar(50) DEFAULT NULL,
  `timestamp` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weather_data`
--

LOCK TABLES `weather_data` WRITE;
/*!40000 ALTER TABLE `weather_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `weather_data` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-26 16:22:57
