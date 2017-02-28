-- MySQL dump 10.13  Distrib 5.5.50, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: newdb
-- ------------------------------------------------------
-- Server version	5.5.50-0ubuntu0.14.04.1

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
-- Table structure for table `clazz`
--

DROP TABLE IF EXISTS `clazz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clazz` (
  `clzID` int(11) NOT NULL AUTO_INCREMENT,
  `clzName` varchar(50) NOT NULL,
  `majID` int(11) DEFAULT NULL,
  PRIMARY KEY (`clzID`),
  KEY `FK5A5AA584BCA2E15` (`majID`),
  CONSTRAINT `FK5A5AA584BCA2E15` FOREIGN KEY (`majID`) REFERENCES `major` (`majID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clazz`
--

LOCK TABLES `clazz` WRITE;
/*!40000 ALTER TABLE `clazz` DISABLE KEYS */;
INSERT INTO `clazz` VALUES (1,'汉语言文学1班',1),(2,'汉语言文学2班',1),(3,'汉语言文学(师范类)1班',2),(4,'汉语言文学(师范类)2班',2),(5,'广告学1班',3),(6,'广告学2班',3),(7,'广告学(师范类)1班',4),(8,'对外汉语1班',5),(9,'对外汉语2班',5),(10,'数学与应用数学1班',6),(11,'数学与应用数学2班',6),(12,'信息与计算机科学1班',7),(13,'英语1班',8),(14,'英语2班',8),(15,'商务英语1班',9),(16,'翻译1班',9),(17,'日语1班',10),(18,'电信1班',11),(19,'电信2班',11),(20,'电子1班',12),(21,'电子2班',12),(22,'机械1班',13),(23,'机械2班',13),(24,'物理1班',14),(25,'电子科学与技术1班',15),(26,'历史1班',16),(27,'高分子材料与工程1班',17),(28,'导航1班',22),(29,'测绘1班',23),(30,'软件工程1班',45),(31,'法律1班',41),(32,'会计1班',35),(33,'软件工程2班',45);
/*!40000 ALTER TABLE `clazz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `depart`
--

DROP TABLE IF EXISTS `depart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `depart` (
  `depID` int(11) NOT NULL AUTO_INCREMENT,
  `depName` varchar(20) NOT NULL,
  `depPresident` varchar(10) DEFAULT NULL,
  `depAddr` varchar(50) DEFAULT NULL,
  `depTel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`depID`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `depart`
--

LOCK TABLES `depart` WRITE;
/*!40000 ALTER TABLE `depart` DISABLE KEYS */;
INSERT INTO `depart` VALUES (1,'中文系','中某某','闽江学院','83761000'),(2,'数学系','数某某','闽江学院','83761001'),(3,'外语系','外某某','闽江学院','83761002'),(4,'物理学与电子信息工程系','物某某','闽江学院','83761003'),(5,'历史学系','历某某','闽江学院','83761004'),(6,'化学与化学工程系','化某某','闽江学院','83761005'),(7,'地理科学系','地某某','闽江学院','83761006'),(8,'计算机科学系','计某某','闽江学院','83761007'),(9,'旅游系','旅某某','闽江学院','83761008'),(10,'经济与管理学院','经某某','闽江学院','83761009'),(11,'法律系','法某某','闽江学院','83761010'),(12,'新华都商学院','新某某','闽江学院','83761011'),(13,'蔡继琨音乐学院','蔡某某','闽江学院','83761012'),(14,'软件学院','软某某','闽江学院','83761013'),(15,'服装与艺术工程学院','服某某','闽江学院','83761014'),(16,'交通学院','交某某','闽江学院','83761015'),(17,'海峡学院','海某某','闽江学院','83761016'),(18,'爱恩国际学院','爱某某','闽江学院','83761017');
/*!40000 ALTER TABLE `depart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `major`
--

DROP TABLE IF EXISTS `major`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `major` (
  `majID` int(11) NOT NULL AUTO_INCREMENT,
  `depID` int(11) DEFAULT NULL,
  `majName` varchar(50) NOT NULL,
  `majPresident` varchar(10) DEFAULT NULL,
  `majTel` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`majID`),
  KEY `FK62DB5B918540B8` (`depID`),
  CONSTRAINT `FK62DB5B918540B8` FOREIGN KEY (`depID`) REFERENCES `depart` (`depID`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `major`
--

LOCK TABLES `major` WRITE;
/*!40000 ALTER TABLE `major` DISABLE KEYS */;
INSERT INTO `major` VALUES (1,1,'汉语言文学','汉某某','73761000'),(2,1,'汉语言文学(师范类)','汉某','73761001'),(3,1,'广告学','广某某','73761002'),(4,1,'广告学(师范类)','广某','73761003'),(5,1,'对外汉语','对某某','73761004'),(6,2,'数学与应用数学','数某某','73761005'),(7,2,'信息与计算机科学','信某某','73761006'),(8,3,'英语(师范类)','英XX','73761007'),(9,3,'英语(商务、翻译两个方向)','英X','73761008'),(10,3,'日语','日XX','73761009'),(11,4,'电子信息工程','电XX','73761010'),(12,4,'电子信息科学与技术','电X','73761011'),(13,4,'机械电子工程','机XX','73761012'),(14,4,'物理学(师范类)','物XX','73761013'),(15,4,'电子科学与技术','电某','73761014'),(16,5,'历史学(历史信息系统)','历导','73761015'),(17,6,'高分子材料与工程','高xx','73761016'),(18,6,'轻化工程','轻XX','73761017'),(19,6,'应用化学','应XX','73761018'),(20,7,'自然地理与资源环境','自XX','73761019'),(21,7,'人文地理与城乡规划','人XX','73761020'),(22,7,'导航工程','导XX','73761021'),(23,7,'测绘工程','测XX','73761022'),(24,7,'地理信息科学(空间信息计数)','空XX','73761023'),(25,8,'计算机科学与技术(网络工程)','网XX','73761024'),(26,8,'计算机科学与技术(嵌入式应用)','嵌XX','73761025'),(27,8,'通信工程','通XX','73761026'),(28,8,'电气工程及其自动化','气XX','73761027'),(29,9,'旅游管理','旅XX','73761028'),(30,9,'酒店管理','酒XX','73761029'),(31,10,'金融学','金XX','73761030'),(32,10,'财政学','财XX','73761031'),(33,10,'国际经济与贸易','贸XX','73761032'),(34,10,'电子商务','子XX','73761033'),(35,10,'会计学','会XX','73761034'),(36,10,'工商管理','工XX','73761035'),(37,10,'市场营销','营XX','73761036'),(38,10,'交通工程','交X','73761037'),(39,10,'物流工程','流XX','73761038'),(40,11,'政治学与行政学','行XX','73761039'),(41,11,'法学','法X','73761040'),(42,12,'金融学','融X','73761041'),(43,12,'会计学','会导','73761042'),(44,13,'声乐','声X','73761043'),(45,14,'软件工程','陈兰香','73761044'),(46,15,'服装艺术设计','装XX','73761045'),(47,16,'交通工程(道路交通)','道路X','73761046'),(48,16,'交通工程(轨道运营)','轨道X','73761047'),(49,17,'广告学(创意传媒)','传XX','73761048'),(50,18,'中美合作本科','233','73761049');
/*!40000 ALTER TABLE `major` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `stuID` int(11) NOT NULL AUTO_INCREMENT,
  `stuName` varchar(50) NOT NULL,
  `stuSex` varchar(10) DEFAULT NULL,
  `stuAge` varchar(10) DEFAULT NULL,
  `stuTel` varchar(15) DEFAULT NULL,
  `stuEntry` varchar(10) DEFAULT NULL,
  `stuStatus` varchar(10) DEFAULT NULL,
  `clzID` int(11) DEFAULT NULL,
  PRIMARY KEY (`stuID`),
  KEY `FK8FFE823BE06A352E` (`clzID`),
  CONSTRAINT `FK8FFE823BE06A352E` FOREIGN KEY (`clzID`) REFERENCES `clazz` (`clzID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,'王玮俊','男','23','186123452123','2015','否',33),(2,'潘叶滕','男','23','12345678901','2015','否',33),(3,'林伟雄','男','23','12345678911','2015','否',33),(4,'张三','女','49','10210101011','2006','是',1),(5,'李四','女','19','15394401020','2016','否',12),(6,'蛤蛤','男','70','10120120301','1997','是',8),(7,'史塔克','男','20','12112112121','2014','否',22),(8,'嬴政','男','100','10210106011','100','是',26),(9,'高德','女','19','10808080808','2016','否',28);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `uID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `uname` varchar(20) NOT NULL,
  PRIMARY KEY (`uID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'admin','1111','管理员');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2016-12-26 23:13:43
