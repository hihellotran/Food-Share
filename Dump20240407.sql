-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: foodshare
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.22-MariaDB

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
-- Table structure for table `author_favorites`
--

DROP TABLE IF EXISTS `author_favorites`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `author_favorites` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `author_id` varchar(255) DEFAULT NULL,
  `recipe_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipes1` (`recipe_id`),
  KEY `fk_authors1` (`author_id`),
  CONSTRAINT `fk_authors1` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_recipes1` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `author_favorites`
--

LOCK TABLES `author_favorites` WRITE;
/*!40000 ALTER TABLE `author_favorites` DISABLE KEYS */;
INSERT INTO `author_favorites` VALUES (12,'2','1'),(13,'2','9'),(14,'2','4'),(15,'2','8');
/*!40000 ALTER TABLE `author_favorites` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authors` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `account` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES ('1','tran','mail.com','tranpham','123','https://firebasestorage.googleapis.com/v0/b/fooda-8b3bf.appspot.com/o/images%2Fimage_1708970094735.jpg?alt=media&token=029007f6-840c-4f27-84b2-6e4790713cf8'),('14faf255-806e-4178-ac3a-fb8d42950dfa',' Tan Hoang',' @gmail.com','TanHoang','123','image_1708930951377.jpg'),('2','tann','mail.com','tan','123','https://firebasestorage.googleapis.com/v0/b/fooda-8b3bf.appspot.com/o/images%2Fimage_1710151431809.jpg?alt=media&token=0a6e0d65-6d13-420d-9641-f7ff0744fcdc'),('200ca45a-2b4b-4d73-947e-9acb67e3458b',NULL,NULL,'hoangtan1210','123',NULL),('3','1','1','1','1','1'),('4a968856-dc91-4f2e-bbe3-2b61be41bdbd','Masterchef',' ','masterchef','1',''),('63986923-bb3a-4264-a572-0a1e478d5618','VyNguyen123',' @gmail.com','vy','1','https://firebasestorage.googleapis.com/v0/b/fooda-8b3bf.appspot.com/o/images%2Fimage_1708970387274.jpg?alt=media&token=749395a2-d195-4cb9-b39f-0f058e0acd35'),('7e83f6a5-0966-48c9-9dcb-9c94d5d4988b','ThanhLe123',' @gmail.com','Thanh','123',''),('b2b10da2-1c2a-4636-9aa8-3df1b8522101','TanHoang',' ','tan123','1','');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipe_id` varchar(255) DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author_id_idx` (`author_id`),
  KEY `recipe_id_idx` (`recipe_id`,`author_id`),
  CONSTRAINT `fk_author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_recipe_id_comments` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (-1,'1','2','Ngon lam'),(1,'1','1','Món Này Ngon Quá Trời'),(2,'1','2','Ngon Quá À'),(3,'1','63986923-bb3a-4264-a572-0a1e478d5618','Ngon Nha'),(4,'1','2','Ngon qua'),(5,'1','2','Ngonnn'),(6,'1','2','Ngonnnnn'),(7,'1','2','1'),(8,'1','2','2'),(9,'4','2','ngon'),(10,'2','2','Ngon'),(11,'2','2','Ngonnn nhung ma phuc tap qua');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ingredients`
--

DROP TABLE IF EXISTS `ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ingredients` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ingredients`
--

LOCK TABLES `ingredients` WRITE;
/*!40000 ALTER TABLE `ingredients` DISABLE KEYS */;
INSERT INTO `ingredients` VALUES ('1','Gà','assets/ingredients/turkey.png'),('10','Đậu hũ','assets/ingredients/tofu.png'),('11','Khoai lang','assets/ingredients/sweet-potato.png'),('12','Khoai tây','assets/ingredients/potato.png'),('13','Trứng','assets/ingredients/eggs.png'),('14','Bí đỏ','assets/ingredients/vegetable.png'),('2','Bò','assets/ingredients/cow.png'),('3','Heo','assets/ingredients/pig.png'),('4','Cá','assets/ingredients/fish.png'),('5','Rau muống','assets/ingredients/vegetable.png'),('6','Cà rốt','assets/ingredients/carrot.png'),('7','Bánh Mì','assets/ingredients/bread.png'),('8','Ba rọi','assets/ingredients/pig.png'),('9','Tôm','assets/ingredients/shrimp.png');
/*!40000 ALTER TABLE `ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes`
--

DROP TABLE IF EXISTS `recipes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `cooking_time` varchar(255) DEFAULT NULL,
  `author_id` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `food_ration` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_author_id` (`author_id`),
  CONSTRAINT `fk_author_id` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes`
--

LOCK TABLES `recipes` WRITE;
/*!40000 ALTER TABLE `recipes` DISABLE KEYS */;
INSERT INTO `recipes` VALUES ('1','Bún Bò','15','2','2024-02-28 03:40:00','Bún Bò Huế',NULL,'1 người'),('10','Gà nướng muối ớt','90','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2008-05-20 12:10:20','Gà nướng muối ớt là một món ăn truyền thống của miền Nam Việt Nam, có thịt gà nướng với gia vị muối ớt thơm ngon.',NULL,'1 người'),('11','Bún chả','120','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2015-09-08 17:35:55','Bún chả là một món ăn truyền thống của miền Bắc Việt Nam, có thịt nướng và bún, ăn kèm với nước mắm chua ngọt.',NULL,'2 người'),('12','Cá kho tộ','120','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2012-11-17 10:45:40','Cá kho tộ là một món ăn truyền thống của Việt Nam, có cá kho nấu chín cùng với gia vị như nước mắm, đường và tiêu.',NULL,'1 người'),('13','Bánh xèo','60','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2019-04-22 14:20:15','Bánh xèo là một món ăn dân dã của miền Nam Việt Nam, có bột gạo, nhân bánh từ thịt, tôm và gia vị.',NULL,'1 người'),('14','Canh chua','45','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2007-08-05 11:30:25','Canh chua là một món canh truyền thống của Việt Nam, có nước dùng chua từ cà chua hoặc xoài, có thêm các loại rau và cá.',NULL,'4 người'),('15','Bánh cuốn','90','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2016-01-10 16:15:00','Bánh cuốn là một món ăn dân dã của Việt Nam, có bột gạo và nhân từ thịt heo, tôm và nấm, ăn kèm với nước mắm pha chua ngọt.',NULL,'1 người'),('2','Hủ Tiếu','60','2','2024-02-28 03:45:00','Hủ Tiết Sa Đéc',NULL,'2 người'),('38d44b75-c897-437b-9e1a-80a3f55101ab','Chao Ga','1','2','2024-03-08 17:50:42','Ngon lam,thích hợp cho mùa xuân , tết','assets/icon/testt.jpg','2'),('4','Cơm Sườn','30','63986923-bb3a-4264-a572-0a1e478d5618','2024-02-28 03:45:00','Cơm Sườn Đồng Tháp với sốt mật ong thơm béo và nước mắm kẹo',NULL,'1 người'),('5','Mỳ ý','50','63986923-bb3a-4264-a572-0a1e478d5618','2024-02-28 03:45:00','Mỳ Ý Ngon Bổ Rẻ với các nguyên liệu đơn giản',NULL,'1 người'),('6','Bún Riêu','70','63986923-bb3a-4264-a572-0a1e478d5618','2024-02-28 03:45:00','Bún riêu là một món ăn truyền thống của Việt Nam, được biết đến và ưa chuộng bởi hương vị độc đáo và hấp dẫn. Món này thường được thưởng thức vào bữa sáng hoặc bữa trưa, và có sẵn ở nhiều quán phở và quán ăn ở khắp mọi nơi trong cả nước.',NULL,'1 người'),('7','Phở bò','180','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2005-03-15 08:25:10','Phở bò là một món ăn truyền thống của Việt Nam, được làm từ bò, nước dùng hầm từ xương và các loại gia vị.',NULL,'1 người'),('8','Cơm gà','60','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','2010-07-28 15:40:30','Cơm gà là một món ăn phổ biến, có thịt gà nướng hoặc luộc, ăn kèm với cơm và nước dùng.',NULL,'1 người'),('9','Bánh mì thịt nướng','60','2','2018-12-03 09:55:45','Bánh mì thịt nướng là một loại bánh mì Việt Nam, có thịt nướng và rau sống như dưa leo, rau mùi.',NULL,'1 người'),('93e68231-bc44-48ee-8edb-38f81afab00f','Chao suon','1','2','2024-03-08 17:59:12','Ngon nhuc nach','assets/icon/testt.jpg','2'),('987adf27-ded7-45fe-9a20-57b12cb5dc34','1','120','2','2024-03-11 17:01:02','1','https://firebasestorage.googleapis.com/v0/b/fooda-8b3bf.appspot.com/o/images%2Fimage_1710152364390.jpg?alt=media&token=1532a052-808a-41d6-8242-84c73119439b','2');
/*!40000 ALTER TABLE `recipes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes_ingredients`
--

DROP TABLE IF EXISTS `recipes_ingredients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes_ingredients` (
  `id` varchar(255) NOT NULL,
  `recipe_id` varchar(255) NOT NULL,
  `ingredient_name` varchar(255) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipe_id` (`recipe_id`),
  CONSTRAINT `fk_recipe_id` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes_ingredients`
--

LOCK TABLES `recipes_ingredients` WRITE;
/*!40000 ALTER TABLE `recipes_ingredients` DISABLE KEYS */;
INSERT INTO `recipes_ingredients` VALUES ('00b78ad6-0a06-44f6-850e-6c7cd40474bd','8','Gà ta nguyên con',10),('0857cf7b-dec4-4831-9611-0a5fdfc577f4','93e68231-bc44-48ee-8edb-38f81afab00f','',10),('2ec578eb-e714-462c-bc25-3c19d4c6db2f','38d44b75-c897-437b-9e1a-80a3f55101ab','50gr hanh',10),('8e364409-5667-4443-bdae-8cb7f2af2525','987adf27-ded7-45fe-9a20-57b12cb5dc34','21',10),('a22269a8-7be8-4ba9-be76-aa6498633829','93e68231-bc44-48ee-8edb-38f81afab00f','',10),('bb55929e-07b2-4612-a954-0c497b6791b3','38d44b75-c897-437b-9e1a-80a3f55101ab','1 con gà',10),('bdd99bf4-db86-43e3-9fa5-f53201asddfar','38d44b75-c897-437b-9e1a-80a3f55101ab','ga',10),('bdd99bf4-db86-43e3-9fa5-f53201f5d339','38d44b75-c897-437b-9e1a-80a3f55101ab','1 lon gạo',10),('e495dcfb-62ef-4be3-8a84-781dc7b60780','987adf27-ded7-45fe-9a20-57b12cb5dc34','1',10),('e8d27397-7209-4e68-91e5-08c9104ab057','93e68231-bc44-48ee-8edb-38f81afab00f','1kg suon heo',10),('eb2dc731-2e95-4eea-8a45-5118e69be124','7','Bò',5),('eb2dc731-2e95-4eea-8a45-5118e69beasd','9','bánh mì',10),('eb2dc731-2e95-4eea-8a45-5118e69beba5','8','ba rọi',10);
/*!40000 ALTER TABLE `recipes_ingredients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes_like`
--

DROP TABLE IF EXISTS `recipes_like`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes_like` (
  `id` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `recipe_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `author_idx` (`author_id`),
  KEY `recipe_idx` (`recipe_id`),
  CONSTRAINT `author` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes_like`
--

LOCK TABLES `recipes_like` WRITE;
/*!40000 ALTER TABLE `recipes_like` DISABLE KEYS */;
INSERT INTO `recipes_like` VALUES ('1715d50c-5622-42fb-9b27-ebc2f0ebbd58','2','987adf27-ded7-45fe-9a20-57b12cb5dc34'),('3cd0d817-d2ec-486f-b40b-904f67e4f1f7','2','38d44b75-c897-437b-9e1a-80a3f55101ab'),('7ec5dfb3-1dd7-4e3d-bdd5-5682062ba24d','2','4'),('823daad1-a839-40eb-b32b-c58e5f867618','2','2'),('dfa2dd93-38a3-481c-8e1f-c970e6dc2470','2','93e68231-bc44-48ee-8edb-38f81afab00f');
/*!40000 ALTER TABLE `recipes_like` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recipes_rating`
--

DROP TABLE IF EXISTS `recipes_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recipes_rating` (
  `id` varchar(255) NOT NULL,
  `author_id` varchar(255) NOT NULL,
  `recipe_id` varchar(255) NOT NULL,
  `ranking` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `authors_fk_idx` (`author_id`),
  KEY `recipes_fk_idx` (`recipe_id`),
  CONSTRAINT `authors_fk` FOREIGN KEY (`author_id`) REFERENCES `authors` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `recipes_fk` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recipes_rating`
--

LOCK TABLES `recipes_rating` WRITE;
/*!40000 ALTER TABLE `recipes_rating` DISABLE KEYS */;
INSERT INTO `recipes_rating` VALUES ('1','1','93e68231-bc44-48ee-8edb-38f81afab00f',4),('2','14faf255-806e-4178-ac3a-fb8d42950dfa','93e68231-bc44-48ee-8edb-38f81afab00f',3),('3','4a968856-dc91-4f2e-bbe3-2b61be41bdbd','93e68231-bc44-48ee-8edb-38f81afab00f',4),('5b1ad266-e025-41ae-a466-caa6bae5261e','2','4',1),('896b3350-074a-499e-b6b8-96c466e0ff26','2','93e68231-bc44-48ee-8edb-38f81afab00f',5),('a030812a-0a02-4721-ab3d-0f2cfec74707','2','38d44b75-c897-437b-9e1a-80a3f55101ab',5),('a745701a-1339-4ac4-b765-829113acb765','2','2',4),('b52c1345-dfd9-4230-ad74-9b4eba8595c4','2','987adf27-ded7-45fe-9a20-57b12cb5dc34',2);
/*!40000 ALTER TABLE `recipes_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `steps`
--

DROP TABLE IF EXISTS `steps`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `steps` (
  `id` varchar(255) NOT NULL,
  `recipe_id` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `video` varchar(255) DEFAULT NULL,
  `step` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_recipe` (`recipe_id`),
  CONSTRAINT `fk_recipe` FOREIGN KEY (`recipe_id`) REFERENCES `recipes` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `steps`
--

LOCK TABLES `steps` WRITE;
/*!40000 ALTER TABLE `steps` DISABLE KEYS */;
INSERT INTO `steps` VALUES ('31f2f5b6-4726-4d15-886f-9df3dc07402e','93e68231-bc44-48ee-8edb-38f81afab00f','1','',1),('897c53e0-3ad0-4814-ba7d-68500cfc20c2','987adf27-ded7-45fe-9a20-57b12cb5dc34','1','',1),('99ff0fa3-6812-439c-a96b-e0694e21675b','987adf27-ded7-45fe-9a20-57b12cb5dc34','2','',2),('9f6e7716-82b2-49f6-b50e-697b3aafc1e0','93e68231-bc44-48ee-8edb-38f81afab00f','2','',2),('d8a52fd4-e18c-48e6-a049-353790e9d5a0','9','Trộn thịt','1',1),('d8f524d4-e17c-48e6-a049-353790e9d5a0','9','Đem nướng thịt','2',2),('d8f524d4-e18c-48e6-a049-3537asdasddf','10','Dasdasdasd','1',1),('f0900022-1afb-47bd-ae2d-25b204116864','38d44b75-c897-437b-9e1a-80a3f55101ab','2','2',2),('f09assd0022-1a7b-47bd-ae2d-25b204114','38d44b75-c897-437b-9e1a-80a3f55101ab','1','1',1);
/*!40000 ALTER TABLE `steps` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-07 22:32:11
