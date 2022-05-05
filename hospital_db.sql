-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hospital
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `emergency`
--

DROP TABLE IF EXISTS `emergency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `emergency` (
  `EmergencyID` bigint NOT NULL AUTO_INCREMENT,
  `Emergency` varchar(200) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Mobile` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`EmergencyID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `emergency`
--

LOCK TABLES `emergency` WRITE;
/*!40000 ALTER TABLE `emergency` DISABLE KEYS */;
INSERT INTO `emergency` VALUES (2,'A+','Ayush Kumar','9876543210'),(6,'dialysis','Ayush Kumar','9876543210'),(10,'dialysis','Emergency Name ','1111111111');
/*!40000 ALTER TABLE `emergency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
  `Name` varchar(50) DEFAULT NULL,
  `Mobile` bigint DEFAULT NULL,
  `Enquiry` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES ('Ashutosh Choudhary',9876543213,'dddd'),('Ashutosh Choudhary',7870880329,'ggggg'),('Anand ',1231231231,'o blood group'),('Temp Name',3333333333,'Temp Enquiry');
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `id` int NOT NULL AUTO_INCREMENT,
  `img_name` varchar(50) DEFAULT NULL,
  `caption` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (1,'neurology.jpeg','Neurology'),(2,'neurosurgery.jpg','Neurosurgery'),(3,'Nephrology.jpg','Nephrology'),(4,'cardiology.jpg','Cardiology'),(5,'obstetrics_gynecology.jpg','Gynecology & Obstetrics'),(6,'Oncology.jpeg','Oncology'),(7,'Physiotherapy.jpg','Physiotherapy'),(9,'Dialysis.jpeg','Dialysis');
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `services` (
  `Patient_no` bigint NOT NULL AUTO_INCREMENT,
  `Service` varchar(50) DEFAULT NULL,
  `Name` varchar(100) DEFAULT NULL,
  `Phone` bigint DEFAULT NULL,
  `Date` varchar(10) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Blood` varchar(4) DEFAULT NULL,
  `Gender` varchar(30) DEFAULT NULL,
  `Address` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`Patient_no`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `services`
--

LOCK TABLES `services` WRITE;
/*!40000 ALTER TABLE `services` DISABLE KEYS */;
INSERT INTO `services` VALUES (2,'Oncology','Ashutosh Choudhary',9876543210,'2022-01-06',90,'O-','male','ffsdf'),(8,'Gynecology & Obstetrics','Ravi Ranjan',9834526178,'2022-02-01',34,'AB+','others','Dhanbad'),(11,'Dialysis','Ashutosh',9999999999,'2021-12-31',21,'O+','male','New Station Bihar'),(14,'Neurology','Temp Name',2222222222,'2022-01-25',35,'O-','male','Temp Address ,1');
/*!40000 ALTER TABLE `services` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 20:33:41
