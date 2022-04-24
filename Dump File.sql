-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: localhost    Database: aptix
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add user',1,'add_user'),(2,'Can change user',1,'change_user'),(3,'Can delete user',1,'delete_user'),(4,'Can view user',1,'view_user'),(5,'Can add student',2,'add_student'),(6,'Can change student',2,'change_student'),(7,'Can delete student',2,'delete_student'),(8,'Can view student',2,'view_student'),(9,'Can add cn',3,'add_cn'),(10,'Can change cn',3,'change_cn'),(11,'Can delete cn',3,'delete_cn'),(12,'Can view cn',3,'view_cn'),(13,'Can add dbms',4,'add_dbms'),(14,'Can change dbms',4,'change_dbms'),(15,'Can delete dbms',4,'delete_dbms'),(16,'Can view dbms',4,'view_dbms'),(17,'Can add java',5,'add_java'),(18,'Can change java',5,'change_java'),(19,'Can delete java',5,'delete_java'),(20,'Can view java',5,'view_java'),(21,'Can add os',6,'add_os'),(22,'Can change os',6,'change_os'),(23,'Can delete os',6,'delete_os'),(24,'Can view os',6,'view_os'),(25,'Can add python',7,'add_python'),(26,'Can change python',7,'change_python'),(27,'Can delete python',7,'delete_python'),(28,'Can view python',7,'view_python'),(29,'Can add result',8,'add_result'),(30,'Can change result',8,'change_result'),(31,'Can delete result',8,'delete_result'),(32,'Can view result',8,'view_result'),(33,'Can add log entry',9,'add_logentry'),(34,'Can change log entry',9,'change_logentry'),(35,'Can delete log entry',9,'delete_logentry'),(36,'Can view log entry',9,'view_logentry'),(37,'Can add permission',10,'add_permission'),(38,'Can change permission',10,'change_permission'),(39,'Can delete permission',10,'delete_permission'),(40,'Can view permission',10,'view_permission'),(41,'Can add group',11,'add_group'),(42,'Can change group',11,'change_group'),(43,'Can delete group',11,'delete_group'),(44,'Can view group',11,'view_group'),(45,'Can add content type',12,'add_contenttype'),(46,'Can change content type',12,'change_contenttype'),(47,'Can delete content type',12,'delete_contenttype'),(48,'Can view content type',12,'view_contenttype'),(49,'Can add session',13,'add_session'),(50,'Can change session',13,'change_session'),(51,'Can delete session',13,'delete_session'),(52,'Can view session',13,'view_session');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_Profiles_user_email` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_Profiles_user_email` FOREIGN KEY (`user_id`) REFERENCES `profiles_user` (`email`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (9,'admin','logentry'),(11,'auth','group'),(10,'auth','permission'),(12,'contenttypes','contenttype'),(2,'Profiles','student'),(1,'Profiles','user'),(13,'sessions','session'),(3,'Test','cn'),(4,'Test','dbms'),(5,'Test','java'),(6,'Test','os'),(7,'Test','python'),(8,'Test','result');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-04-09 09:25:23.160158'),(2,'contenttypes','0002_remove_content_type_name','2022-04-09 09:25:33.843017'),(3,'auth','0001_initial','2022-04-09 09:25:53.589057'),(4,'auth','0002_alter_permission_name_max_length','2022-04-09 09:25:58.479590'),(5,'auth','0003_alter_user_email_max_length','2022-04-09 09:25:58.669799'),(6,'auth','0004_alter_user_username_opts','2022-04-09 09:25:59.072581'),(7,'auth','0005_alter_user_last_login_null','2022-04-09 09:25:59.441591'),(8,'auth','0006_require_contenttypes_0002','2022-04-09 09:25:59.614025'),(9,'auth','0007_alter_validators_add_error_messages','2022-04-09 09:25:59.889234'),(10,'auth','0008_alter_user_username_max_length','2022-04-09 09:26:00.185386'),(11,'auth','0009_alter_user_last_name_max_length','2022-04-09 09:26:00.592552'),(12,'auth','0010_alter_group_name_max_length','2022-04-09 09:26:01.369505'),(13,'auth','0011_update_proxy_permissions','2022-04-09 09:26:01.508476'),(14,'auth','0012_alter_user_first_name_max_length','2022-04-09 09:26:02.433569'),(15,'Profiles','0001_initial','2022-04-09 09:26:42.430773'),(16,'Test','0001_initial','2022-04-09 09:26:59.566380'),(17,'admin','0001_initial','2022-04-09 09:27:14.526101'),(18,'admin','0002_logentry_remove_auto_add','2022-04-09 09:27:14.839587'),(19,'admin','0003_logentry_add_action_flag_choices','2022-04-09 09:27:14.961243'),(20,'sessions','0001_initial','2022-04-09 09:27:22.984606'),(21,'Test','0002_alter_cn_correct_alter_dbms_correct_and_more','2022-04-09 16:25:51.421682');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('l25jk31fv13cqaty2sy76bc09jeur94v','.eJxVzDsOwjAQBNC7uEYW8TprhwrRc4ZovWuTALGlfCrE3UlQCmimmTfzUi0tc9cuUxzbXtRJkQx9Pn9TcxnU4VcE4kfMG5M75VtZRZ7HPuiN6L2d9LVIfF52-3fQ0dSt6xQkGsQQ0LJBrsABOiFIksDa5gjWR2d9nbgGiOioQmeahMmyY_KVen8AvWU9Rg:1nd7PH:tT5uQ7rArzZm0ZfBI-lssLfhe7vK7Zlcv0h6TJKi9XA','2022-04-23 09:29:23.274621');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_student`
--

DROP TABLE IF EXISTS `profiles_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_student` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(10) NOT NULL,
  `user_id` varchar(254) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `Profiles_student_user_id_1e8607c4_fk_Profiles_user_email` FOREIGN KEY (`user_id`) REFERENCES `profiles_user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_student`
--

LOCK TABLES `profiles_student` WRITE;
/*!40000 ALTER TABLE `profiles_student` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_user`
--

DROP TABLE IF EXISTS `profiles_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `email` varchar(254) NOT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_user`
--

LOCK TABLES `profiles_user` WRITE;
/*!40000 ALTER TABLE `profiles_user` DISABLE KEYS */;
INSERT INTO `profiles_user` VALUES ('pbkdf2_sha256$320000$IZWxTdof0UmCT1N2fWxLwp$gCAx1h/Ns2nEHhzAOnI9xO8YtBorw3HhKySkyfvWtRw=','2022-04-09 09:29:22.928758',1,'admin','admin',1,1,'2022-04-09 09:29:12.732701','admin@admin.com');
/*!40000 ALTER TABLE `profiles_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_user_groups`
--

DROP TABLE IF EXISTS `profiles_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(254) NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Profiles_user_groups_user_id_group_id_431b81a7_uniq` (`user_id`,`group_id`),
  KEY `Profiles_user_groups_group_id_d63ec24e_fk_auth_group_id` (`group_id`),
  CONSTRAINT `Profiles_user_groups_group_id_d63ec24e_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `Profiles_user_groups_user_id_14214b74_fk_Profiles_user_email` FOREIGN KEY (`user_id`) REFERENCES `profiles_user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_user_groups`
--

LOCK TABLES `profiles_user_groups` WRITE;
/*!40000 ALTER TABLE `profiles_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles_user_user_permissions`
--

DROP TABLE IF EXISTS `profiles_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profiles_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` varchar(254) NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Profiles_user_user_permi_user_id_permission_id_487be939_uniq` (`user_id`,`permission_id`),
  KEY `Profiles_user_user_p_permission_id_6a473fb0_fk_auth_perm` (`permission_id`),
  CONSTRAINT `Profiles_user_user_p_permission_id_6a473fb0_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `Profiles_user_user_p_user_id_6883a224_fk_Profiles_` FOREIGN KEY (`user_id`) REFERENCES `profiles_user` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles_user_user_permissions`
--

LOCK TABLES `profiles_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `profiles_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `profiles_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_cn`
--

DROP TABLE IF EXISTS `test_cn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_cn` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `A` varchar(128) DEFAULT NULL,
  `B` varchar(128) DEFAULT NULL,
  `C` varchar(128) DEFAULT NULL,
  `D` varchar(128) DEFAULT NULL,
  `correct` varchar(1) NOT NULL,
  `difficulty` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_cn`
--

LOCK TABLES `test_cn` WRITE;
/*!40000 ALTER TABLE `test_cn` DISABLE KEYS */;
INSERT INTO `test_cn` VALUES (1,'Which type of topology is best suited for large businesses which must carefully control and coordinate the operation of distributed branch outlets?','Ring\n','Local area\n','Hierarchical\n','Star','D','1'),(2,'Which of these is a standard interface for serial data transmission?\n\n','ASCII\n','RS232C\n','2\n','Centronics','B','1'),(3,' Which of the following transmission directions listed is not a legitimate channel?\n\n','Simplex\n','Half Duplex\n','Full Duplex\n','Double Duplex','D','1'),(4,'\"Parity bits\" are used for which of the following purposes?\n\n','Encryption of data\n','To transmit faster\n','To detect errors\n','To identify the user','C','1'),(5,'What kind of transmission medium is most appropriate to carry data in a computer network that is exposed to electrical interferences?\n\n','Unshielded twisted pair\n','Optical fiber\n','Coaxial cable\n','Microwave','B','1'),(6,'A collection of hyperlinked documents on the internet forms the ?.?\n','World Wide Web (WWW)\n','E-mail system\n','Mailing list\n\n','Hypertext markup languageE-mail system','A','1'),(7,'The location of a resource on the internet is given by its?\n\n','Protocol\n','URL\n','E-mail address\n','ICQ','B','1'),(8,'The term HTTP stands for?\n\n','Hyper terminal tracing program\n','Hypertext tracing protocol\n','Hypertext transfer protocol\n','Hypertext transfer program','C','1'),(9,' A proxy server is used as the computer?\n','with external access\n','acting as a backup\n','performing file handling\n','accessing user permissions','A','1'),(10,' Which one of the following would breach the integrity of a system?\n\n','Looking the room to prevent theft\n','Full access rights for all users\n','Fitting the system with an anti-theft device\n','Protecting the device against willful or accidental damage','B','1'),(11,' Which software prevents the external access to a system?\n\n','Firewall\n\n','Gateway\n','Router\n','Virus checker','A','2'),(12,'Which one of the following is a valid email address?\n\n','javat@point.com\n','gmail.com\n','tpoint@.com\n','javatpoint@books','A','2'),(13,'Which of the following best describes uploading information?\n\n','Sorting data on a disk drive\n','Sending information to a host computer\n','Receiving information from a host computer\n','Sorting data on a hard drive','B','2'),(14,'Which one of the following is the most common internet protocol?\n','HTML\n','NetBEUI\n','TCP/IP\n','IPX/SPX','C','2'),(15,'Software programs that allow you to legally copy files and give them away at no cost are called which of the following?\n\n','Probe ware\n','Timeshare\n','Shareware\n','Public domain','D','2'),(16,'The term FTP stands for?\n\n','File transfer program\n','File transmission protocol\n','File transfer protocol\n','File transfer protection','C','2'),(17,'At what speed does tele-computed refer?\n','Interface speed\n','Cycles per second\n','Baud rate\n','Megabyte load','C','2'),(18,'Which one of the following is not a network topology?\n\n','Star\n','Ring\n','Bus\n','Peer to Peer','D','2'),(19,'The maximum length (in bytes) of an IPv4 datagram is?\n\n','32\n\n','1024\n','65535\n','512','C','2'),(20,'Which of the following statements could be valid with respect to the ICMP (Internet Control Message Protocol)?\n','It reports all errors which occur during transmission.\n','A redirect message is used when a router notices that a packet seems to have been routed wrongly.\n','It informs routers when an incorrect path has been taken.\n','The \"destination unreachable\" type message is used when a router cannot locate the destination.','B','2'),(21,'The IP network 192.168.50.0 is to be divided into 10 equal sized subnets. Which of the following subnet masks can be used for the above requirement?\n\n','255.243.240\n','255.255.0.0\n','255.255.0\n','255.255.255','C','3'),(22,'When the mail server sends mail to other mail servers it becomes ___ ?\n','SMTP client\n','SMTP server\n','Peer\n','Master','A','3'),(23,'The length of an IPv6 address is?\n\n','32 bits\n','64 bits\n','128 bits\n','256 bits','C','3'),(24,' Consider the following:\n\nTwisted pair cables\nMicrowaves and Satellite Signals\nRepeaters\nAnalog Transmissions\nFiber optics\nWhich of the above is consider as (a) signal transmission medium is data communications?\n\n','(1) and (5)\n','(1) and (2)\n','(1) (2) and (5)\n','(1) (2) (3) and (5)','C','3'),(25,'Which of the following address belongs class A?\n\n','121.12.12.248\n','130.12.12.248\n','128.12.12.248\n','129.12.12.248','A','3'),(26,'Which of the following is correct IPv4 address?\n\n','124.201.3.1.52\n','01.200.128.123\n','300.142.210.64\n\n','128.64.0.0','D','3'),(27,'Which of the following IP addresses can be used as (a) loop-back addresses?\n','0.0.0.0\n','127.0.0.1\n','255.255.255.255\n','0.255.255.255','B','3'),(28,'The term WAN stands for?\n\n','Wide Area Net\n','Wide Access Network\n','Wide Area Network\n','Wide Access Net','C','3'),(29,'Which of the following cannot be used as a medium for 802.3 ethernet?\n\n','A thin coaxial cable\n','A twisted pair cable\n','A microwave link\n','A fiber optical cable','C','3'),(30,'What IP address class allocates 8 bits for the host identification part?\n\n','Class A\n','Class B\n','Class C\n','Class D','C','3');
/*!40000 ALTER TABLE `test_cn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_dbms`
--

DROP TABLE IF EXISTS `test_dbms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_dbms` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `A` varchar(128) DEFAULT NULL,
  `B` varchar(128) DEFAULT NULL,
  `C` varchar(128) DEFAULT NULL,
  `D` varchar(128) DEFAULT NULL,
  `correct` varchar(1) NOT NULL,
  `difficulty` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_dbms`
--

LOCK TABLES `test_dbms` WRITE;
/*!40000 ALTER TABLE `test_dbms` DISABLE KEYS */;
INSERT INTO `test_dbms` VALUES (1,'Which of the following is generally used for performing tasks like creating the structure of the relations, deleting relation?\n\n','DML(Data Manipulation Language)\n','Query\n','Relational Schema\n','DDL(Data Definition Language)','D','1'),(2,'Which of the following provides the ability to query information from the database and insert tuples into, delete tuples from, and modify tuples in the database?\n\n','DML(Data Manipulation Language)\n','DDL(Data Definition Language)\n','Query\n','Relational Schema','A','1'),(3,'The given Query can also be replaced with_______:\n\nSELECT name, course_id  \nFROM instructor, teaches  \nWHERE instructor_ID= teaches_ID;  \n','Select name,course_id from teaches,instructor where instructor_id=course_id;\n','Select name, course_id from instructor natural join teaches;\n','Select name, course_id from instructor;\n','Select course_id from instructor join teaches;','B','1'),(4,'Which one of the following given statements possibly contains the error?\n\n','select * from emp where empid = 10003;\n','select empid from emp where empid = 10006;\n','select empid from emp;\n','select empid where empid = 1009 and Lastname = \'GELLER\';','D','1'),(5,'Ready the Query carefully:\n\nSELECT emp_name  \nFROM department  \nWHERE dept_name LIKE \' _____ Computer Science\';  \nIn the above-given Query, which of the following can be placed in the Query\'s blank portion to select the \"dept_name\" that also contains Computer Science as its ending string?\n','\n&\n','_\n','%\n','$','C','1'),(6,'What do you mean by one to many relationships?\n\n','One class may have many teachers\n','One teacher can have many classes\n','Many classes may have many teachers\n','Many teachers may have many classes','B','1'),(7,' In the following Query, which of the following can be placed in the Query\'s blank portion to display the salary from highest to lowest amount, and sorting the employs name alphabetically?\n\nSELECT *  \nFROM instructor  \nORDER BY salary ____, name ___;  \nAscending, Descending\nAsc, Desc\nDesc, Asc\nAll of the above','Ascending, Descending\n','Asc, Desc\n','Desc, Asc\n','All of the above','C','1'),(8,'The given Query can be replaced with ____________:\n\nSELECT name  \nFROM instructor1  \nWHERE salary <= 100000 AND salary >= 90000;  \n\n\n\n\n\n\n\n','SELECT name  \nFROM instructor1  \nWHERE salary BETWEEN 100000 AND 90000  ','SELECT name  \nFROM instructor|  \nWHERE salary BETWEEN 90000 AND 100000;  \n','SELECT name  \nFROM instructor1  \nWHERE salary BETWEEN 90000 AND 100000;  \n','SELECT name  \nFROM instructor!  \nWHERE salary <= 90000 AND salary>=100000;  ','C','1'),(9,' A Database Management System is a type of _________software.\n','It is a type of system software\n','It is a kind of application software\n','It is a kind of general software\n','Both A and C','A','1'),(10,' The term \"FAT\" is stands for_____\n\n','File Allocation Tree\n','File Allocation Table\n','File Allocation Graph\n','All of the above','B','1'),(11,'Which of the following can be considered as the maximum size that is supported by FAT?\n\n','8GB\n','4GB\n','4TB\n','None of the above','B','2'),(12,' The term \"NTFS\" refers to which one of the following?\n\n','New Technology File System\n','New Tree File System\n','New Table type File System\n','Both A and C','A','2'),(13,'Which of the following can be considered as the maximum size that is supported by NTFS?\n\n','4GB\n','16TB\n','64TB\n','8TB','A','2'),(14,' A huge collection of the information or data accumulated form several different sources is known as ________:\n\n','Data Management\n','Data Mining\n','Data Warehouse\n','Both B and C','A','2'),(15,'Which of the following can be used to extract or filter the data & information from the data warehouse?\n\nData redundancy\nData recovery tool\nData mining\nBoth B and C','\nData redundancy\n','Data recovery tool\n','Data mining\n','Both B and C','C','2'),(16,'Which one of the following refers to the copies of the same data (or information) occupying the memory space at multiple places.\n\n','Data Repository\n','Data Inconsistency\n','Data Mining\n','Data Redundancy','D','2'),(17,'Which one of the following refers to the \"data about data\"?\n\n','Directory\n','Sub Data\n','Warehouse\n','Meta Data','D','2'),(18,' Which of the following refers to the level of data abstraction that describes exactly how the data actually stored?\n\n','Conceptual Level\n','Physical Level\n','File Level\n','Logical Level','B','2'),(19,'To which of the following the term \"DBA\" referred?\n\n','Data Bank Administrator\n','Database Administrator\n','Data Administrator\n','None of the above','B','2'),(20,'In general, a file is basically a collection of all related______.\n\n','Rows & Columns\n','Fields\n','Database\n','Records','D','2'),(21,'The term \"Data\" refers to:\n','\nThe electronic representation of the information( or data)\n','Basic information\n','Row Facts and figures\n','Both A and C','C','3'),(22,' Rows of a relation are known as the _______.\n\n','Degree\n','Tuples\n','Entity\n','All of the above','D','3'),(23,' Which of the following refers to the number of tuples in a relation?\n\n','Entity\n','Column\n','Cardinality\n','None of the above','C','3'),(24,'Which one of the following is a type of Data Manipulation Command?\n\n','Create\n','Alter\n','Delete\n','All of the above','C','3'),(25,'Which of the following command is a type of Data Definition language command?\n','\nCreate\n','Update\n','Delete\n','Merge','A','3'),(26,'Which of the following is a top-down approach in which the entity\'s higher level can be divided into two lower sub-entities?\n\n','Aggregation\n','Generalization\n','Specialization\n','\nAll of the above','B','3'),(27,' In which one of the following, the multiple lower entities are grouped (or combined) together to form a single higher-level entity?\n\nSpecialization\nGeneralization\nAggregation\nNone of the above','Specialization\n','Generalization\n','Aggregation\n','None of the above','B','3'),(28,'In a relation database, every tuples divided into the fields are known as the______.\n\n','Queries\n','Domains\n','Relations\n','All of the above','B','3'),(29,'The term \"TCL\" stands for_____.\n','\nTernary Control Language\n','Transmission Control Language\n','Transaction Central Language\n','Transaction Control Language','D','3'),(30,'In the relational table, which of the following can also be represented by the term \"attribute\"?\n\n','Entity\n','Row\n','Column\n','Both B &C','C','3');
/*!40000 ALTER TABLE `test_dbms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_java`
--

DROP TABLE IF EXISTS `test_java`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_java` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `A` varchar(128) DEFAULT NULL,
  `B` varchar(128) DEFAULT NULL,
  `C` varchar(128) DEFAULT NULL,
  `D` varchar(128) DEFAULT NULL,
  `correct` varchar(1) NOT NULL,
  `difficulty` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_java`
--

LOCK TABLES `test_java` WRITE;
/*!40000 ALTER TABLE `test_java` DISABLE KEYS */;
INSERT INTO `test_java` VALUES (1,'Which of the following option leads to the portability and security of Java?\n\n','Bytecode is executed by JVM\n','The applet makes the Java code secure and portable\n','Use of exception handling\n','Dynamic binding between objects','A','1'),(2,'Which of the following is not a Java features?\n\n','Dynamic\n','Architecture Neutral\n','Use of pointers\n','Object-oriented','C','1'),(3,'The \\u0021 article referred to as a\n\n','Unicode escape sequence\n','Octal escape\n','Hexadecimal\n','Line feed','A','1'),(4,'_____ is used to find and fix bugs in the Java programs.\n\n','JVM\n','JRE\n','JDK\n','JDB','D','1'),(5,'Which of the following is a valid declaration of a char?\n\n','char ch = \'\\utea\';\n','char ca = \'tea\';\n','char cr = \\u0223;\n','char cc = \'\\itea\';','A','1'),(6,'What is the return type of the hashCode() method in the Object class?\n','\nObject\n','int\n','long\n','void','B','1'),(7,' Which of the following is a valid long literal?\n','\nABH8097\n','L990023\n','904423\n','0xnf029L','D','1'),(8,'What does the expression float a = 35 / 0 return?\n\n','0\n','Not a Number\n','Infinity\n','Run time exception','C','1'),(9,'Evaluate the following Java expression, if x=3, y=5, and z=10:\n\n++z + y - y + z + x++\n','\n24\n','23\n','20\n','25','C','1'),(10,'Which of the following tool is used to generate API documentation in HTML format from doc comments in source code?\n\n','javap tool\n','javaw command\n','Javadoc tool\n','javah command','C','1'),(11,'Which of the following creates a List of 3 visible items and multiple selections abled?\n\n','new List(false, 3)\n','new List(3, true)\n','new List(true, 3)\n','new List(3, false)','B','2'),(12,'Which of the following for loop declaration is not valid?\n\n','for ( int i = 99; i >= 0; i / 9 )\n','for ( int i = 7; i <= 77; i += 7 )\n','for ( int i = 20; i >= 2; - -i )\n','for ( int i = 2; i <= 20; i = 2* i )','A','2'),(13,'Which method of the Class.class is used to determine the name of a class represented by the class object as a String?\n\n','getClass()\n','intern()\n','getName()\n','toString()','C','2'),(14,'In which process, a local variable has the same name as one of the instance variables?\n','\nSerialization\n','Variable Shadowing\n','Abstraction\n','Multi-threading','B','2'),(15,'Which of the following is true about the anonymous inner class?\n\n','It has only methods\n','Objects can\'t be created\n','It has a fixed class name\n','It has no class name','D','2'),(16,' Which package contains the Random class?\n','\njava.util package\n','java.lang package\n','java.awt package\n','java.io package','A','2'),(17,'What do you mean by nameless objects?\n\n','An object created by using the new keyword.\n','An object of a superclass created in the subclass.\n','An object without having any name but having a reference.\n','An object that has no reference.','D','2'),(18,'An interface with no fields or methods is known as a ______.\n','\nRunnable Interface\n','Marker Interface\n','Abstract Interface\n','CharSequence Interface','B','2'),(19,'Which of the following is an immediate subclass of the Panel class?\n\n','Applet class\n','Window class\n','Frame class\n','Dialog class','A','2'),(20,'Which option is false about the final keyword?\n\n','A final method cannot be overridden in its subclasses.\n','A final class cannot be extended.\n','A final class cannot extend other classes.\n','A final method can be inherited.','C','2'),(21,'Which of these classes are the direct subclasses of the Throwable class?\n\n','RuntimeException and Error class\n','Exception and VirtualMachineError class\n','Error and Exception class\n','IOException and VirtualMachineError class','C','3'),(22,' What do you mean by chained exceptions in Java?\n\n','Exceptions occurred by the VirtualMachineError\n','An exception caused by other exceptions\n','Exceptions occur in chains with discarding the debugging information\n','None of the above','B','3'),(23,' In which memory a String is stored, when we create a string using new operator?\n\n','Stack\n','String memory\n','Heap memory\n','Random storage space','C','3'),(24,'What is the use of the intern() method?\n\n','It returns the existing string from memory\n','It creates a new string in the database\n','It modifies the existing string in the database\n','None of the above','A','3'),(25,'Which of the following is a marker interface?\n','\nRunnable interface\n','Remote interface\n','Readable interface\n','Result interface','B','3'),(26,'Which of the following is a reserved keyword in Java?\n','\nobject\n','strictfp\n','main\n','system','B','3'),(27,'Which keyword is used for accessing the features of a package?\n','\npackage\n','import\n','extends\n','export','B','3'),(28,'In java, jar stands for_____.\n\n','Java Archive Runner\n','Java Application Resource\n','Java Application Runner\n','None of the above','D','3'),(29,' Which of the following is false?\n','\nThe rt.jar stands for the runtime jar\n','It is an optional jar file\n','It contains all the compiled class files\n','All the classes available in rt.jar is known to the JVM','B','3'),(30,'What is the use of \\w in regex?\n\n','Used for a whitespace character\n','Used for a non-whitespace character\n','Used for a word character\n','Used for a non-word character','C','3');
/*!40000 ALTER TABLE `test_java` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_os`
--

DROP TABLE IF EXISTS `test_os`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_os` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `A` varchar(128) DEFAULT NULL,
  `B` varchar(128) DEFAULT NULL,
  `C` varchar(128) DEFAULT NULL,
  `D` varchar(128) DEFAULT NULL,
  `correct` varchar(1) NOT NULL,
  `difficulty` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_os`
--

LOCK TABLES `test_os` WRITE;
/*!40000 ALTER TABLE `test_os` DISABLE KEYS */;
INSERT INTO `test_os` VALUES (1,'Which of the following is not an operating system?\n','\nWindows\n','Linux\n','Oracle\n','DOS','C','1'),(2,'What is the maximum length of the filename in DOS?\n\n','4','5','8','12','C','1'),(3,'When was the first operating system developed?\n','\n1948\n','1949\n','1950\n','1951','C','1'),(4,'When were MS windows operating systems proposed?\n','\n1994\n','1990\n','1992\n','1985','D','1'),(5,'Which of the following is the extension of Notepad?\n','\n.txt\n','.xls\n','.ppt\n','.bmp','A','1'),(6,' What else is a command interpreter called?\n\n','prompt\n','kernel\n','shell\n','command','C','1'),(7,'What is the full name of FAT?\n\n','File attribute table\n','File allocation table\n','Font attribute table\n','Format allocation table','B','1'),(8,'BIOS is used?\n\n','By operating system\n','By compiler\n','By interpreter\n','By application software','A','1'),(9,'What is the mean of the Booting in the operating system?\n\n','Restarting computer\n','Install the program\n','To scan\n','To turn off','A','1'),(10,'When does page fault occur?\n\n','The page is present in memory.\n','The deadlock occurs.\n','The page does not present in memory.\n','The buffering occurs.','C','1'),(11,' Banker\'s algorithm is used?\n\n','To prevent deadlock\n','To deadlock recovery\n','To solve the deadlock\n','None of these','A','2'),(12,'When you delete a file in your computer, where does it go?\n','\nRecycle bin\n','Hard disk\n','Taskbar\n','None of these','A','2'),(13,'Which is the Linux operating system?\n\n','Private operating system\n','Windows operating system\n','Open-source operating system\n','None of these','C','2'),(14,'What is the full name of the DSM?\n\n','Direct system module\n','Direct system memory\n','Demoralized system memory\n','Distributed shared memory','D','2'),(15,'What is the full name of the IDL?\n\n','Interface definition language\n','Interface direct language\n','Interface data library\n','None of these','A','2'),(16,' What is bootstrapping called?\n','\nCold boot\n','Cold hot boot\n','Cold hot strap\n','Hot boot','A','2'),(17,'What is the fence register used for?\n\n','To disk protection\n','To CPU protection\n','To memory protection\n','None of these','C','2'),(18,'If the page size increases, the internal fragmentation is also?..?\n\n','Decreases\n','Increases\n','Remains constant\n','None of these','B','2'),(19,' Which of the following is a single-user operating system?\n','\nWindows\n','MAC\n','Ms-Dos\n','None of these','C','2'),(20,'The size of virtual memory is based on which of the following?\n\n','CPU\n','RAM\n','Address bus\n','Data bus','C','2'),(21,'If a page number is not found in the translation lookaside buffer, then it is known as a?\n\n','Translation Lookaside Buffer miss\n','Buffer miss\n','Translation Lookaside Buffer hit\n','All of the mentioned','A','3'),(22,'Which of the following is not application software?\n\n','Windows 7\n','WordPad\n','Photoshop\n','MS-excel','A','3'),(23,'Which of the following supports Windows 64 bit?\n\n','Window XP\n','Window 2000\n','Window 1998\n','None of these','A','3'),(24,'Which of the following windows does not have a start button?\n','\nWindows 7\n','Windows 8\n','Windows XP\n','None of these','A','3'),(25,'Which of the following operating systems does not support more than one program at a time?\n','\nLinux\n','Windows\n','MAC\n','DOS','D','3'),(26,'Who provides the interface to access the services of the operating system?\n\n','API\n','System call\n','Library\n','Assembly instruction','B','3'),(27,'Where are placed the list of processes that are prepared to be executed and waiting?\n\n','Job queue\n','Ready queue\n','Execution queue\n','Process queue','B','3'),(28,' Who among the following can block the running process?\n','\nFork\n','Read\n','Down\n','All of these','B','3'),(29,'Which of the following does not interrupt the running process?\n\n','Timer interrupt\n','Device\n','Power failure\n','Scheduler process','B','3'),(30,'What is Microsoft window?\n\n','Operating system\n','Graphics program\n','Word Processing\n','Database program','A','3');
/*!40000 ALTER TABLE `test_os` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_python`
--

DROP TABLE IF EXISTS `test_python`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_python` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `question` varchar(1024) NOT NULL,
  `A` varchar(128) DEFAULT NULL,
  `B` varchar(128) DEFAULT NULL,
  `C` varchar(128) DEFAULT NULL,
  `D` varchar(128) DEFAULT NULL,
  `correct` varchar(1) NOT NULL,
  `difficulty` varchar(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_python`
--

LOCK TABLES `test_python` WRITE;
/*!40000 ALTER TABLE `test_python` DISABLE KEYS */;
INSERT INTO `test_python` VALUES (1,'What is the maximum possible length of an identifier?\n','\n16\n','32\n','64\n','None of these above','D','1'),(2,'Who developed the Python language?\n\n','Zim Den\n','Guido van Rossum\n','Niene Stom\n','Wick van Rossum','B','1'),(3,'In which year was the Python language developed?\n\n','1995\n','1972\n','1981\n','1989','D','1'),(4,'In which language is Python written?\n\n','English\n','PHP\n','C\n','All of the above','C','1'),(5,'Which one of the following is the correct extension of the Python file?\n\n','.py\n','.python\n','.p\n','None of these','A','1'),(6,'In which year was the Python 3.0 version developed?\n\n','2008\n','2000\n','2010\n','2005','A','1'),(7,'What do we use to define a block of code in Python language?\n\n','Key\n','Brackets\n','Indentation\n','None of these','C','1'),(8,'Which character is used in Python to make a single line comment?\n','\n/\n','//\n','#\n','!','C','1'),(9,'Which of the following statements is correct regarding the object-oriented programming concept in Python?\n\n','Classes are real-world entities while objects are not real\n','Objects are real-world entities while classes are not real\n','Both objects and classes are real-world entities\n','All of the above','B','1'),(10,'What is the method inside the class in python language?\n\n','Object\n','Function\n','Attribute\n','Argument','B','1'),(11,' Which of the following declarations is incorrect?\n\n','_x = 2\n','__x = 3\n','__xyz__ = 5\n','None of these','D','2'),(12,'Why does the name of local variables start with an underscore discouraged?\n\n','To identify the variable\n','It confuses the interpreter\n','It indicates a private variable of a class\n','None of these','C','2'),(13,'Which of the following is not a keyword in Python language?\n\n','val\n','raise\n','try\n','with','A','2'),(14,' Which of the following statements is correct for variable names in Python language?\n\n','All variable names must begin with an underscore.\n','Unlimited length\n','The variable name length is a maximum of 2.\n','All of the above','B','2'),(15,'Which of the following declarations is incorrect in python language?\n','\nxyzp = 5,000,000\n','x y z p = 5000 6000 7000 8000\n','x,y,z,p = 5000, 6000, 7000, 8000\n','x_y_z_p = 5,000,000','B','2'),(16,'Which of the following words cannot be a variable in python language?\n\n','_val\n','val\n','try\n','_try_','C','2'),(17,'Which of the following operators is the correct option for power(ab)?\n\n','a ^ b\n','a**b\n','a ^ ^ b\n','a ^ * b','B','2'),(18,'Which of the following precedence order is correct in Python?\n\nParentheses, Exponential, Multiplication, Division, Addition, Subtraction\nMultiplication, Division, Addition, Subtraction, Parentheses, Exponential\nDivision, Multiplication, Addition, Subtraction, Parentheses, Exponential\nExponential, Parentheses, Multiplication, Division, Addition, Subtraction','Parentheses, Exponential, Multiplication, Division, Addition, Subtraction\n','Multiplication, Division, Addition, Subtraction, Parentheses, Exponential\n','Division, Multiplication, Addition, Subtraction, Parentheses, Exponential\n','Exponential, Parentheses, Multiplication, Division, Addition, Subtraction','A','2'),(19,'Which one of the following has the same precedence level?\n','\nPower and Division\n','\nDivision, Power, Multiplication, Addition and Subtraction\n','Division and Multiplication\n','Subtraction and Division','B','2'),(20,' Which one of the following has the highest precedence in the expression?\n\n','Division\n','Subtraction\n','Power\n','Parentheses','D','2'),(21,' Which of the following functions is a built-in function in python language?\n\n','val()\n','print()\n','printF()\n','None of these','B','3'),(22,'Which one of the following syntaxes is the correct syntax to read from a simple text file stored in \'\'d:\\java.txt\'\'?\n\n','Infile = open(\'\'d:\\\\java.txt\'\', \'\'r\'\')\n','Infile = open(file=\'\'d:\\\\\\java.txt\'\', \'\'r\'\')\n','Infile = open(\'\'d:\\java.txt\'\',\'\'r\'\')\n','Infile = open.file(\'\'d:\\\\java.txt\'\',\'\'r\'\')','A','3'),(23,'The output to execute string.ascii_letters can also be obtained from:?\n\n','character\n','ascii_lowercase_string.digits\n','lowercase_string.upercase\n','ascii_lowercase+string.ascii_upercase','D','3'),(24,'Which of the following option is not a core data type in the python language?\n\n','Dictionary\n','Lists\n','Class\n','All of the above','C','3'),(25,'What error will occur when you execute the following code?\n\nMANGO = APPLE  \n','NameError\n','SyntaxError\n','TypeError\n','ValueError','A','3'),(26,'Study the following program:\n\ndef example(a):  \n    aa = a + \'1\'  \n     aa = a*1  \n    return a  \n>>>example(\"javatpoint\")  \nWhat will be the output of this statement?\n\n','hello2hello2\n','hello2\n','Cannot perform mathematical operation on strings\n','indentationError','D','3'),(27,'Which of the following data types is shown below?\n\nL = [2, 54, \'javatpoint\', 5]  \nWhat will be the output of this statement?\n\n','Dictionary\n','Tuple\n','List\n','Stack','C','3'),(28,'What happens when \'2\' == 2 is executed?\n\n','False\n','True\n','ValueError occurs\n','TypeError occurs','A','3'),(29,' Study the following statement\n\nz = {\"x\":0, \"y\":1}  \nWhich of the following is the correct statement?\n','\nx dictionary z is created\n','x and y are the keys of dictionary z\n','0 and 1 are the values of dictionary z\n','All of the above','D','3'),(30,'Study the following program:\n\nd = {0, 1, 2}  \nfor x in d:  \n    print(x)  \nWhat will be the output of this statement?\n\n','{0, 1, 2} {0, 1, 2} {0, 1, 2}\n','0 1 2\n','Syntax_Error\n','None of these above','B','3');
/*!40000 ALTER TABLE `test_python` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_result`
--

DROP TABLE IF EXISTS `test_result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_result` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `subject` varchar(32) NOT NULL,
  `score` int unsigned NOT NULL,
  `date` date NOT NULL,
  `responses` varchar(256) NOT NULL,
  `student_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Test_result_student_id_7d55784b_fk_Profiles_student_id` (`student_id`),
  CONSTRAINT `Test_result_student_id_7d55784b_fk_Profiles_student_id` FOREIGN KEY (`student_id`) REFERENCES `profiles_student` (`id`),
  CONSTRAINT `test_result_chk_1` CHECK ((`score` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_result`
--

LOCK TABLES `test_result` WRITE;
/*!40000 ALTER TABLE `test_result` DISABLE KEYS */;
/*!40000 ALTER TABLE `test_result` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-10  1:25:24
