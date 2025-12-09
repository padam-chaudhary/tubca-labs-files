CREATE DATABASE  IF NOT EXISTS `college_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `college_db`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: college_db
-- ------------------------------------------------------
-- Server version	8.0.39

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
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `batch_no` int DEFAULT NULL,
  PRIMARY KEY (`batch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batchsubjectteachers`
--

DROP TABLE IF EXISTS `batchsubjectteachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batchsubjectteachers` (
  `batch_id` int DEFAULT NULL,
  `sub_code` varchar(50) DEFAULT NULL,
  `t_id` int DEFAULT NULL,
  `fee` varchar(20) DEFAULT NULL,
  KEY `batch_id` (`batch_id`),
  KEY `t_id` (`t_id`),
  KEY `sub_code` (`sub_code`),
  CONSTRAINT `batchsubjectteachers_ibfk_1` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  CONSTRAINT `batchsubjectteachers_ibfk_2` FOREIGN KEY (`t_id`) REFERENCES `teacher` (`t_id`),
  CONSTRAINT `batchsubjectteachers_ibfk_3` FOREIGN KEY (`sub_code`) REFERENCES `subjects` (`sub_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batchsubjectteachers`
--

LOCK TABLES `batchsubjectteachers` WRITE;
/*!40000 ALTER TABLE `batchsubjectteachers` DISABLE KEYS */;
INSERT INTO `batchsubjectteachers` VALUES (1,'CAS101',1,'2000'),(2,'CAS102',2,'2500'),(3,'CAS103',3,'1800'),(4,'CAS104',4,'2200'),(5,'CAS105',5,'2400'),(6,'CAS106',1,'2100'),(7,'CAS107',2,'2300'),(8,'CAS108',3,'2600'),(1,'CAS109',4,'2700'),(2,'CAS110',5,'2800');
/*!40000 ALTER TABLE `batchsubjectteachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `coursecreditsummary`
--

DROP TABLE IF EXISTS `coursecreditsummary`;
/*!50001 DROP VIEW IF EXISTS `coursecreditsummary`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `coursecreditsummary` AS SELECT 
 1 AS `course_name`,
 1 AS `total_credit_hours`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `courses` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `credit_hrs` int NOT NULL,
  `university` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES (1,'BCA',126,'TU'),(2,'BBA',120,'PU'),(3,'BBM',120,'TU'),(4,'csit',126,'TU'),(5,'BIM',120,'TU');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `semester`
--

DROP TABLE IF EXISTS `semester`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `semester` (
  `sem_id` int NOT NULL AUTO_INCREMENT,
  `semester` int DEFAULT NULL,
  PRIMARY KEY (`sem_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `semester`
--

LOCK TABLES `semester` WRITE;
/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8);
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `specialization`
--

DROP TABLE IF EXISTS `specialization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `specialization` (
  `spe_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`spe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `specialization`
--

LOCK TABLES `specialization` WRITE;
/*!40000 ALTER TABLE `specialization` DISABLE KEYS */;
INSERT INTO `specialization` VALUES (1,'Computer Science'),(2,'Computer Science'),(3,'Mathematics'),(4,'Business Administration'),(5,'Cyber Law');
/*!40000 ALTER TABLE `specialization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `studentnamesandbatches`
--

DROP TABLE IF EXISTS `studentnamesandbatches`;
/*!50001 DROP VIEW IF EXISTS `studentnamesandbatches`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `studentnamesandbatches` AS SELECT 
 1 AS `std_id`,
 1 AS `student_name`,
 1 AS `batch`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `students` (
  `std_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `dob` date DEFAULT NULL,
  `batch` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`std_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `students_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1,'Sushant.k','2002-05-12',2078,1),(2,'Sushant.s','2004-04-06',2079,3),(3,'ram','2007-06-11',2077,2),(4,'suhesh','2004-04-06',2079,4),(5,'padam','2003-10-12',2076,5),(6,'Sumit.R','2004-06-25',2079,2),(7,'Niraj Tharu','2005-06-20',2075,1),(8,'Niruta Thapa','2004-03-25',2079,3),(9,'Namrata .G','2003-02-28',2074,1),(10,'Mahesh .K','2004-01-24',2079,2),(101,'John Doe','2005-05-15',2024,NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `studentsbackup`
--

DROP TABLE IF EXISTS `studentsbackup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `studentsbackup` (
  `std_id` int DEFAULT NULL,
  `name` text,
  `dob` text,
  `batch` int DEFAULT NULL,
  `course_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `studentsbackup`
--

LOCK TABLES `studentsbackup` WRITE;
/*!40000 ALTER TABLE `studentsbackup` DISABLE KEYS */;
INSERT INTO `studentsbackup` VALUES (1,'Sushant.k','2002-05-12',2078,1),(2,'Sushant.s','2004-04-06',2079,3),(3,'ram','2007-06-11',2077,2),(4,'suhesh','2004-04-06',2079,4),(5,'padam','2003-10-12',2076,5),(6,'Sumit.R','2004-06-25',2079,2),(7,'Niraj Tharu','2005-06-20',2075,1),(8,'Niruta Thapa','2004-03-25',2079,3),(9,'Namrata .G','2003-02-28',2074,1),(10,'Mahesh .K','2004-01-24',2079,2);
/*!40000 ALTER TABLE `studentsbackup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjectchangelog`
--

DROP TABLE IF EXISTS `subjectchangelog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjectchangelog` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sub_id` int DEFAULT NULL,
  `old_name` varchar(100) DEFAULT NULL,
  `new_name` varchar(100) DEFAULT NULL,
  `change_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjectchangelog`
--

LOCK TABLES `subjectchangelog` WRITE;
/*!40000 ALTER TABLE `subjectchangelog` DISABLE KEYS */;
/*!40000 ALTER TABLE `subjectchangelog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subjects`
--

DROP TABLE IF EXISTS `subjects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subjects` (
  `sub_id` int NOT NULL AUTO_INCREMENT,
  `sub_code` varchar(50) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `cr_hr` int DEFAULT NULL,
  `is_compulsory` tinyint(1) DEFAULT NULL,
  `sem_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`sub_id`),
  UNIQUE KEY `sub_code` (`sub_code`),
  KEY `sem_id` (`sem_id`),
  KEY `course_id` (`course_id`),
  CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`sem_id`) REFERENCES `semester` (`sem_id`),
  CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subjects`
--

LOCK TABLES `subjects` WRITE;
/*!40000 ALTER TABLE `subjects` DISABLE KEYS */;
INSERT INTO `subjects` VALUES (1,'CAS101','java',4,1,3,1),(2,'CAS102','web technology',3,1,3,1),(3,'CAS103','physics',3,1,1,4),(4,'CAS104','Simulation and Modeling',3,1,5,4),(5,'CAS105','Business Law',3,1,4,2),(6,'CAS106','Business Statistics',3,1,1,2),(7,'CAS107','Operating System',3,0,8,5),(8,'CAS108','Human Resource Management',3,1,7,5),(9,'CAS109',' Database Management',3,1,6,3),(10,'CAS110',' Business Strategy',3,1,3,3);
/*!40000 ALTER TABLE `subjects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teacher` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_married` tinyint(1) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,'Rajim Ali','Male','+977-9856492018',1,'MSc in Computer Science'),(2,'Bimal Acharya','Male','+977-9855602018',0,'Mit'),(3,'Mausam Khadka','Male','+977-9856490987',1,'PHD in Mathematics'),(4,'Mahima Shrestha','Female','+977-9812342018',0,'Master in Business Law '),(5,'Prabin Magar','male','+977-9812345678',0,'MSc in Cyber Security');
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers1`
--

DROP TABLE IF EXISTS `teachers1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `teachers1` (
  `t_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `gender` varchar(20) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `is_married` tinyint(1) DEFAULT NULL,
  `qualification` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers1`
--

LOCK TABLES `teachers1` WRITE;
/*!40000 ALTER TABLE `teachers1` DISABLE KEYS */;
INSERT INTO `teachers1` VALUES (1,'Rajim Ali','Male','+977-9856492018',1,'MSc in Computer Science'),(2,'Bimal Acharya','Male','+977-9855602018',0,'Mit'),(3,'Mausam Khadka','Male','+977-9856490987',1,'PHD in Mathematics'),(4,'Mahima Shrestha','Female','+977-9812342018',0,'Master in Business Law '),(5,'Prabin Magar','male','+977-9812345678',0,'MSc in Cyber Security');
/*!40000 ALTER TABLE `teachers1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `teachersubjects`
--

DROP TABLE IF EXISTS `teachersubjects`;
/*!50001 DROP VIEW IF EXISTS `teachersubjects`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `teachersubjects` AS SELECT 
 1 AS `teacher_name`,
 1 AS `subject_name`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `coursecreditsummary`
--

/*!50001 DROP VIEW IF EXISTS `coursecreditsummary`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `coursecreditsummary` AS select `c`.`name` AS `course_name`,sum(`s`.`cr_hr`) AS `total_credit_hours` from (`courses` `c` join `subjects` `s` on((`c`.`course_id` = `s`.`course_id`))) group by `c`.`name` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `studentnamesandbatches`
--

/*!50001 DROP VIEW IF EXISTS `studentnamesandbatches`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `studentnamesandbatches` AS select `students`.`std_id` AS `std_id`,`students`.`name` AS `student_name`,`students`.`batch` AS `batch` from `students` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `teachersubjects`
--

/*!50001 DROP VIEW IF EXISTS `teachersubjects`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `teachersubjects` AS select `t`.`name` AS `teacher_name`,`s`.`name` AS `subject_name` from ((`teacher` `t` join `batchsubjectteachers` `bst` on((`t`.`t_id` = `bst`.`t_id`))) join `subjects` `s` on((`bst`.`sub_code` = `s`.`sub_code`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-02  9:06:15
