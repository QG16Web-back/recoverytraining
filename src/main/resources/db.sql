-- MySQL dump 10.13  Distrib 5.7.16, for Linux (x86_64)
--
-- Host: localhost    Database: recovery_training
-- ------------------------------------------------------
-- Server version	5.7.16

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
-- Table structure for table `action`
--

DROP TABLE IF EXISTS `action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `action` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '动作名字',
  `fileName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '文件名字',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `action`
--

LOCK TABLES `action` WRITE;
/*!40000 ALTER TABLE `action` DISABLE KEYS */;
INSERT INTO `action` VALUES (2,'举手','举手.dll'),(3,'扩胸','扩胸.dll'),(6,'ceshidown','ceshidown.dll');
/*!40000 ALTER TABLE `action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `duser`
--

DROP TABLE IF EXISTS `duser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `duser` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(11) DEFAULT '1' COMMENT '1-男，0-女',
  `age` int(11) DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) DEFAULT NULL COMMENT 'utf8',
  `hospital` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '科室',
  `jobTitle` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '职称',
  PRIMARY KEY (`id`),
  FULLTEXT KEY `phone` (`phone`) COMMENT '账号唯一'
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `duser`
--

LOCK TABLES `duser` WRITE;
/*!40000 ALTER TABLE `duser` DISABLE KEYS */;
INSERT INTO `duser` VALUES (2,'两只蚝A',1,23,'13549991585','qgmobile','广中医','牙科','超级牙医');
/*!40000 ALTER TABLE `duser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medical_record`
--

DROP TABLE IF EXISTS `medical_record`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `medical_record` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `puserId` int(11) DEFAULT NULL,
  `duserId` int(11) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `pname` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '病患名字',
  `sex` int(11) DEFAULT NULL COMMENT '1-男，0-女',
  `pphone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '病患电话',
  `birth` datetime DEFAULT NULL COMMENT '病患生日',
  `dname` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '医生姓名',
  `dphone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '医生电话',
  `hospital` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `department` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '科室',
  `setTime` datetime DEFAULT NULL COMMENT '建立时间',
  `conditions` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '病况',
  `allergicDrug` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '过敏药物，多个，用逗号分割',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medical_record`
--

LOCK TABLES `medical_record` WRITE;
/*!40000 ALTER TABLE `medical_record` DISABLE KEYS */;
INSERT INTO `medical_record` VALUES (5,1,2,33,'gdutjason',1,'15521265445','2016-10-18 11:24:55','两只蚝','13549991585','广中医','牙科','2016-10-30 14:50:28','牙齿痛','冷酸灵');
/*!40000 ALTER TABLE `medical_record` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puser`
--

DROP TABLE IF EXISTS `puser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `age` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `sex` int(11) DEFAULT NULL COMMENT '1-男，0-女',
  `phone` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `birth` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`id`),
  UNIQUE KEY `phone` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puser`
--

LOCK TABLES `puser` WRITE;
/*!40000 ALTER TABLE `puser` DISABLE KEYS */;
INSERT INTO `puser` VALUES (1,123,'gdutjason',0,'15521265445','qgmobile','2016-10-30 15:23:56'),(2,22,'gdut',1,'13322223333','qgmobile',NULL);
/*!40000 ALTER TABLE `puser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rcstage`
--

DROP TABLE IF EXISTS `rcstage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rcstage` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `mrId` int(11) DEFAULT NULL COMMENT '所属病历',
  `num` int(11) DEFAULT NULL COMMENT '阶段数',
  `actionId` int(11) DEFAULT NULL,
  `actionName` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '动作名字',
  `matchValue` float DEFAULT NULL COMMENT '匹配值',
  `puserId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rcstage`
--

LOCK TABLES `rcstage` WRITE;
/*!40000 ALTER TABLE `rcstage` DISABLE KEYS */;
INSERT INTO `rcstage` VALUES (1,1,1,2,'举手',60.3018,1),(2,1,2,3,'扩胸',44.7989,1);
/*!40000 ALTER TABLE `rcstage` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-09-20 23:02:55
