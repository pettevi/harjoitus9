-- MySQL dump 10.13  Distrib 5.6.35, for Win32 (AMD64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	5.6.35

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
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `book` (
  `book_id` smallint(6) NOT NULL,
  `book_name` varchar(255) DEFAULT NULL,
  `author` varchar(255) DEFAULT NULL,
  `isbn` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`book_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES (1,'Everything You Ever Wanted to Know','Upton','082305649x'),(2,'Photography','Vilppu','205711499'),(3,'Drawing Manual Vilppu','Zelanshi','1892053039'),(4,'TBA','Zelanshi','0534613932'),(5,'Shaping Space','Speight','0534613934'),(6,'Art Since 1940','Speight','0131839780'),(7,'Make it in Clay','Stokstad','0076417011'),(8,'Art History Vol II & ala carte lab','Stokstad','205795617'),(9,'Accounting Concepts','Albrecht','1111287856'),(10,'Intermediate Accounting ','Stice','0538479736'),(11,'Management Info Systems','Marakas','9780073376813'),(12,'Management','Williams','9780757524028'),(13,'Leadership Wisdom of Jesus','Manz','9781609940041'),(14,'Business Law Today','Miller','9780324786156'),(15,'Management Info Systems','Marakas','9780073376813');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrow`
--

DROP TABLE IF EXISTS `borrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrow` (
  `book_id` smallint(6) NOT NULL,
  `borrower_id` smallint(6) DEFAULT NULL,
  `borrow_date` date DEFAULT NULL,
  `return_date` date DEFAULT NULL,
  PRIMARY KEY (`book_id`),
  KEY `borrower_id` (`borrower_id`),
  CONSTRAINT `borrow_ibfk_1` FOREIGN KEY (`book_id`) REFERENCES `book` (`book_id`),
  CONSTRAINT `borrow_ibfk_2` FOREIGN KEY (`borrower_id`) REFERENCES `borrower` (`borrower_id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrow`
--

LOCK TABLES `borrow` WRITE;
/*!40000 ALTER TABLE `borrow` DISABLE KEYS */;
INSERT INTO `borrow` VALUES (1,6,'2017-11-05','2017-11-26'),(3,2,'2017-11-05','2017-11-26'),(4,1,'2017-10-13','2017-11-03'),(6,2,'2017-10-23','2017-11-13'),(8,2,'2017-11-02','2017-11-23'),(10,20,'2017-11-12','2017-12-03'),(12,20,'2017-11-12','2017-12-03'),(14,20,'2017-11-16','2017-12-07'),(15,20,'2017-11-16','2017-12-07');
/*!40000 ALTER TABLE `borrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `borrower`
--

DROP TABLE IF EXISTS `borrower`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `borrower` (
  `borrower_id` smallint(6) NOT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `streetAddress` varchar(255) DEFAULT NULL,
  `postalCode` char(5) DEFAULT NULL,
  PRIMARY KEY (`borrower_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `borrower`
--

LOCK TABLES `borrower` WRITE;
/*!40000 ALTER TABLE `borrower` DISABLE KEYS */;
INSERT INTO `borrower` VALUES (1,'Kay','Naquin','050-555','Kotkantie 2','90100'),(2,'Leonard','Rowden','050-123','Uusikatu 4','90101'),(3,'Terry','Kinney','050-333','Isokatu 6','90102'),(4,'Carla','Stclair','041-444','Torikatu 7','90103'),(5,'Delores','Isom','041-888','Tapulikuja 9','90104'),(6,'Ralph','Shane','040-999','Tuulentie 33','90100'),(7,'Norman','Yarborough','040-222','Kotkantie 2','90101'),(8,'Todd','Pastore','040-555','Uusikatu 66','90102'),(9,'Norma','Weatherspoon','050-559','Isokatu 77','90103'),(10,'Janice','Matthew','050-129','Torikatu 33','90104'),(11,'Thomas','Larry','050-339','Tapulikuja 12','90100'),(12,'Curtis','Fitzpatrick','041-442','Tuulentie 11','90101'),(13,'Lynda','Strauss','041-880','Isokatu 2','90102'),(14,'Matthew','Klug','040-993','Uusikatu 33','90103'),(15,'Larry','Thoma','040-224','Kotkantie 6','90104'),(16,'Arthur','Dowdy','040-557','Uusikatu 4','90100'),(17,'Viola','Willis','042-111','Isokatu 66','90101'),(18,'Annette','Wilks','042-222','Torikatu 24','90102'),(19,'Harold','Bibb','042-333','Tapulikuja 7','90103'),(20,'Marvin','Heflin','042-444','Tuulentie 4','90104');
/*!40000 ALTER TABLE `borrower` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-08-06 13:19:48
