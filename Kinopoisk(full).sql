USE kinopoisk;

-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for Linux (x86_64)
--
-- Host: mysql.hostinger.ro    Database: u574849695_23
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-cll-lve

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `movie_id` bigint(20) unsigned NOT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_comments_user_idx` (`user_id`),
  KEY `fk_comments_movie_idx` (`movie_id`),
  CONSTRAINT `fk_comments_movie` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `fk_comments_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comments`
--

LOCK TABLES `comments` WRITE;
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` VALUES (1,1,1,'Et molestiae esse voluptatem quod odit quod voluptas. Minima repellat adipisci maxime est est. Sunt incidunt beatae facilis sed ex aut non. A iste veniam et natus asperiores aliquid excepturi.'),(2,2,2,'Eveniet ut ea ducimus voluptas ad enim et. Dolorem maiores quidem quia. Non ullam ex vero in recusandae. At sit iusto eum a quibusdam in in culpa.'),(3,3,3,'Doloremque et eos velit sit molestias omnis distinctio. Sit et asperiores dolor minus. Nulla qui sapiente dicta non. Consequuntur provident quia quos possimus a.'),(4,4,4,'Nisi commodi laudantium mollitia laboriosam. Et dolorum fugiat expedita accusantium consectetur ut. Soluta cumque eos molestiae eum.'),(5,5,5,'Omnis ipsum voluptatem distinctio quam ipsam enim. Ad animi id animi est cum debitis.'),(6,6,6,'Qui ipsam expedita occaecati laudantium. Doloribus ut autem dolorem at ea quaerat. Praesentium eum doloremque eveniet aliquam dolor. Est nemo totam iste et praesentium.'),(7,7,7,'Consequuntur ea cum odit dolorem sed. Molestiae qui sapiente neque dolore. Sed odio cumque veritatis exercitationem minus voluptatem. Amet corporis praesentium excepturi omnis placeat.'),(8,8,8,'Deleniti nulla sunt dolor. Delectus tempore quod consequuntur delectus. Laudantium officiis illo iure ut consequatur quaerat. Omnis repudiandae dicta dolore animi facere odit adipisci.'),(9,9,9,'Commodi esse nemo quia officia odit explicabo autem. Qui aut ut ut qui ab laudantium. Voluptatem pariatur qui dolorem esse nostrum ut laborum. Atque et eos dolor qui illum.'),(10,10,10,'Corrupti et sed non facilis facere ratione. Quibusdam rem alias eum possimus ex voluptas minima. Nam nemo qui aperiam error quos quasi.'),(11,11,11,'Doloremque nihil rem tempore odio. Et ipsum dolores illum velit. Voluptatem adipisci culpa deleniti assumenda qui consectetur omnis nobis.'),(12,12,12,'Omnis et nemo est animi repellat. Rerum quas beatae suscipit excepturi nobis. Dolorum quos iure non est ut. Ipsam quos eos ut tenetur blanditiis similique.'),(13,13,13,'Sequi vitae esse aut est. Aliquid et nostrum incidunt sunt. Aut blanditiis amet sed iusto debitis rerum. Et et in quam veniam beatae. Iure voluptate mollitia nihil quibusdam ut incidunt accusamus.'),(14,14,14,'Reiciendis et earum et nostrum. Quae at voluptas quam qui. Adipisci repudiandae accusantium quae voluptas ullam quibusdam magnam.\nAperiam enim id magnam tempore eum. Et itaque laboriosam et cum.'),(15,15,15,'Et voluptatem non qui ullam. Non officiis eum sed quia quo est non. Est dolor sapiente illo explicabo a eos eius.'),(16,16,16,'Qui voluptas sunt culpa quia sit pariatur sed. Et vel repellendus modi aliquid in temporibus consequatur. Numquam ipsam consectetur officia sed distinctio ea animi.'),(17,17,17,'Quis consequuntur iusto ut. Aliquam est nemo omnis. Recusandae doloribus et itaque maiores omnis. Illum et nihil error.'),(18,18,18,'Amet qui qui blanditiis soluta dolores non est et. Et modi quis nobis illum nostrum.'),(19,19,19,'Repellendus et repellat molestias iure. Est harum molestiae repellendus et iusto quis voluptatem. Consequatur quibusdam maiores minima corporis facere cum non.'),(20,20,20,'Cupiditate qui soluta et. Possimus vel sed molestias sed. Eos quisquam sint officiis rem molestias est quam omnis.');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `friend_requests`
--


-- Заявки в друзья
DROP TABLE IF EXISTS `friend_requests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_requests` (
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `accepted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`from_user_id`,`to_user_id`),
  KEY `fk_friend_requests_from_user_idx` (`from_user_id`),
  KEY `fk_friend_requests_to_user_idx` (`to_user_id`),
  CONSTRAINT `fk_friend_requests_users_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_requests_users_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


--
-- Dumping data for table `friend_requests`
--

LOCK TABLES `friend_requests` WRITE;
/*!40000 ALTER TABLE `friend_requests` DISABLE KEYS */;
INSERT INTO `friend_requests` VALUES (1,2,0),(7,2,0),(8,3,1),(4,8,1),(12,6,1),(6,20,1),(12,7,1),(15,2,0),(11,9,1),(10,7,1),(11,4,1),(2,12,1),(11,18,0),(4,14,1),(7,15,1),(16,5,0),(1,17,0),(6,18,0),(3,19,1),(20,7,0);
/*!40000 ALTER TABLE `friend_requests` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `friend_list`
--


-- Список друзей пользователя
DROP TABLE IF EXISTS `friend_list`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `friend_list` (
  `user_id` bigint(20) unsigned NOT NULL,
  `user_friend_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`user_friend_id`),
  KEY `fk_friend_list_user_idx` (`user_id`),
  KEY `fk_friend_list_user_friend_idx` (`user_friend_id`),
  CONSTRAINT `fk_friend_list_user` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `fk_friend_list_user_friend` FOREIGN KEY (`user_friend_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `friend_list`
--

LOCK TABLES `friend_list` WRITE;
/*!40000 ALTER TABLE `friend_list` DISABLE KEYS */;
INSERT INTO `friend_list` VALUES (1,2),(1,3),(3,4),(4,7),(5,3),(6,1),(7,8),(8,9),(3,9),(5,10),(11,2),(2,12),(13,9),(14,12),(4,16),(18,16),(13,18),(2,18),(19,20),(20,1);
/*!40000 ALTER TABLE `friend_list` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `genres`
--

DROP TABLE IF EXISTS `genres`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genres`
--

LOCK TABLES `genres` WRITE;
/*!40000 ALTER TABLE `genres` DISABLE KEYS */;
INSERT INTO `genres` VALUES (8,'at'),(7,'aut'),(2,'deleniti'),(5,'et'),(1,'exercitationem'),(4,'qui'),(3,'ratione'),(6,'sed'),(10,'veniam'),(9,'vero');
/*!40000 ALTER TABLE `genres` ENABLE KEYS */;
UNLOCK TABLES;

-- 
-- Table structure for table `movie_genres`
-- 



-- Жанры фильмов
DROP TABLE IF EXISTS `movie_genres`;    
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movie_genres` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `genre_id` bigint(20) unsigned NOT NULL,
  KEY `movie_genres_movie_idx` (`movie_id`),
  KEY `movie_genres_genre_idx` (`genre_id`),
  CONSTRAINT `fk_movie_genres_genre` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `fk_movie_genres_movie` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movie_genres`
--

LOCK TABLES `movie_genres` WRITE;
/*!40000 ALTER TABLE `movie_genres` DISABLE KEYS */;
INSERT INTO `movie_genres` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,1),(12,2),(13,3),(14,4),(15,5),(16,6),(17,7),(18,8),(19,9),(20,10);
/*!40000 ALTER TABLE `movie_genres` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `movies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `rating` tinyint(3) unsigned DEFAULT NULL,
  `reviews_id` bigint(20) unsigned DEFAULT NULL,
  `duration` int(10) unsigned NOT NULL,
  `director` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `movies_reviews_idx` (`reviews_id`),
  CONSTRAINT `fk_movies_reviews` FOREIGN KEY (`reviews_id`) REFERENCES `reviews` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'atque','1997-01-15 20:45:34',9,1,5,'illum'),(2,'necessitatibus','1979-11-22 20:24:40',3,2,0,'nostrum'),(3,'aspernatur','2018-09-21 13:47:31',5,3,9,'assumenda'),(4,'occaecati','2020-02-13 23:35:41',2,4,3,'ut'),(5,'quo','2003-02-11 02:47:50',5,5,3,'quam'),(6,'expedita','1990-10-27 04:25:28',9,6,7,'non'),(7,'qui','1986-06-01 17:25:37',8,7,7,'ducimus'),(8,'impedit','2004-12-14 14:52:53',9,8,5,'porro'),(9,'hic','1978-02-14 09:07:44',7,9,7,'amet'),(10,'eius','2016-08-25 15:11:15',5,10,5,'repellat'),(11,'quis','1985-04-26 07:24:48',6,11,8,'tenetur'),(12,'dignissimos','2003-02-17 01:05:49',6,12,8,'facilis'),(13,'qui','2012-12-04 17:37:45',5,13,2,'et'),(14,'est','1998-06-18 04:18:44',2,14,1,'consequatur'),(15,'ab','2020-06-27 22:42:11',7,15,6,'consequatur'),(16,'vel','1998-09-30 04:45:19',8,16,6,'cum'),(17,'repudiandae','1970-04-03 13:33:15',8,17,7,'perspiciatis'),(18,'excepturi','1996-11-01 20:26:28',9,18,6,'quam'),(19,'consequatur','1973-09-02 11:47:25',10,19,1,'ut'),(20,'quaerat','1980-04-20 05:19:06',6,20,9,'inventore');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profiles`
--

DROP TABLE IF EXISTS `profiles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('f','m') COLLATE utf8mb4_unicode_ci NOT NULL,
  `birthday` date NOT NULL,
  `photo_id` int(10) unsigned DEFAULT NULL,
  `user_status` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(130) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  CONSTRAINT `fk_profiles_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profiles`
--

LOCK TABLES `profiles` WRITE;
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` VALUES (1,'est','m','2002-02-13',NULL,'Ipsum sit doloribus quibusdam ','Mayaborough','934331'),(2,'qui','f','2018-02-23',NULL,'Aut a ut nulla quas nulla volu','Borerfurt',''),(3,'voluptatem','f','2003-06-04',NULL,'Quis fugit enim est dolor. Odi','New Ellie','20701648'),(4,'sed','m','1986-09-09',NULL,'Adipisci aperiam rerum incidun','Morissettemouth','619571'),(5,'dolores','m','2006-06-19',NULL,'Quas perferendis natus accusan','Moorefort',''),(6,'aut','m','2011-01-11',NULL,'Nam sapiente saepe ut rerum. S','East Blair','2042861'),(7,'sed','m','1974-01-19',NULL,'Voluptatem eligendi ad autem e','Mosciskiland','90'),(8,'dolores','m','2010-01-01',NULL,'Ex dolor delectus quia maxime.','Port Ricky','865758270'),(9,'voluptatem','m','2013-05-16',NULL,'Recusandae veniam aut non dign','Luciusville','3'),(10,'sint','m','2016-02-24',NULL,'Autem omnis nesciunt et sequi ','Cruickshankshire','538936'),(11,'saepe','f','1980-10-28',NULL,'Rerum aperiam quae nemo eos ve','Jordonmouth','856856779'),(12,'repudiandae','f','1996-10-26',NULL,'Ex incidunt incidunt dolor rer','Fishermouth',''),(13,'aspernatur','f','2009-09-04',NULL,'Sed reprehenderit sapiente rep','South Keshawnshire','873985'),(14,'reiciendis','f','2012-09-12',NULL,'Repellendus voluptatem officia','South Nikko','6172318'),(15,'aspernatur','m','2017-02-24',NULL,'Voluptas dolorem ipsam repudia','South Dallinberg','219'),(16,'eos','f','1980-05-04',NULL,'Enim pariatur et explicabo mol','South Lexus','220'),(17,'ut','f','2018-03-25',NULL,'Hic quo possimus aut voluptati','Cassinland','72004914'),(18,'consectetur','m','1999-09-02',NULL,'Delectus quis optio beatae eaq','Christinaberg','815373475'),(19,'dolor','m','2009-08-13',NULL,'Provident voluptatum commodi r','East Hailiefurt','9'),(20,'sint','m','1982-06-28',NULL,'Aliquam tempora et illo conseq','Lake Linda','');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reviews`
--



-- Рецензии
DROP TABLE IF EXISTS `reviews`;            
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reviews` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `txt` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `reviews_user_idx` (`user_id`),
  CONSTRAINT `fk_reviews_user_idx` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reviews`
--

LOCK TABLES `reviews` WRITE;
/*!40000 ALTER TABLE `reviews` DISABLE KEYS */;
INSERT INTO `reviews` VALUES (1,10,'tempora','Expedita omnis ullam aperiam nam et excepturi vero. Ducimus explicabo delectus corrupti in incidunt.'),(2,13,'et','Rerum cum eos quae officiis. Assumenda ea sapiente aut repellat vero. Quas repellendus ea consequuntur dolores excepturi. Debitis consectetur voluptatum iusto saepe minus maxime.'),(3,7,'ad','Incidunt doloribus illo earum odio architecto quidem magnam. Porro quisquam nam ipsa in sed alias. Hic laudantium consequatur minima facere laudantium dolores.'),(4,8,'velit','Ducimus doloribus blanditiis quae assumenda voluptatibus nihil voluptatem. Sint asperiores sint officia aut et commodi. Dolorem et sint voluptatibus autem aut aperiam id.'),(5,5,'cumque','Doloremque odit commodi tempora sapiente eius. Voluptate qui aut aliquam ut soluta quis iste. Ut eum consequatur non aut animi nisi maiores.'),(6,5,'assumenda','Omnis eos nulla qui. Culpa numquam aliquam tempora labore quis omnis quisquam. Totam atque quis sed dolore cumque et. Ad numquam ut assumenda esse repellat.'),(7,7,'quibusdam','Voluptatum non ab sit aliquid. Quo quasi rerum maiores fuga ipsa quos corporis. Laudantium voluptas corporis voluptatem et molestiae.'),(8,8,'perferendis','Soluta dignissimos ut qui nulla aliquam dolorem. At quis dicta dolores enim ut sit similique.\nSit magnam optio nam. Enim sint laborum qui sit deleniti voluptatem. Vitae hic aut est dicta eveniet.'),(9,8,'velit','Quo quo quasi et perspiciatis. Quae omnis nobis omnis laborum et totam eaque. Ut ipsam quis maiores cum a voluptatibus et.'),(10,1,'quia','Recusandae et voluptas commodi omnis dolores hic. Sapiente aut corporis explicabo doloremque dolores sint nihil quod. Excepturi laboriosam sed dolore ut et accusantium repellat occaecati.'),(11,14,'et','Sit quibusdam et et doloribus magnam quam libero. Aut rerum dignissimos explicabo nostrum nobis nemo commodi. Atque accusamus culpa qui accusantium.'),(12,12,'et','Modi ratione natus dolorem consequuntur ducimus. Molestiae aperiam quis et perspiciatis voluptas pariatur. Culpa necessitatibus nihil perferendis.'),(13,6,'minus','Est soluta odit molestiae perspiciatis occaecati. Iste beatae non cupiditate voluptatem quae ullam. Optio cumque tenetur autem dolore modi. Harum dolorem praesentium sunt consequuntur.'),(14,3,'nemo','Ipsum sed alias rerum accusantium maxime. Sed dolorum eius natus ut ut voluptas alias. Veritatis debitis quia omnis accusantium. Et illum temporibus alias accusamus nobis.'),(15,19,'ex','Saepe quibusdam eos tempore in dolor modi saepe. Et explicabo qui itaque sed at. Mollitia sunt ad dicta dolorem eos.'),(16,6,'deserunt','Est rerum sapiente expedita provident eos recusandae nihil. Ut et occaecati quia iure omnis. Nobis velit magni distinctio ad enim. Blanditiis voluptate quae dolore enim laboriosam impedit.'),(17,19,'in','Libero magnam reiciendis provident. Qui cumque deserunt perspiciatis inventore velit aut. Accusantium asperiores nihil qui ratione. Corrupti nostrum architecto est quidem aperiam alias sit.'),(18,20,'veniam','Possimus delectus accusamus molestias quia. Hic neque est necessitatibus ut modi accusantium. Harum laborum aut rerum sapiente. Voluptates aliquam ullam natus inventore voluptas itaque voluptatem.'),(19,5,'rerum','Id facilis quasi reprehenderit ipsam repudiandae nobis explicabo. Ducimus excepturi sequi quae similique quia. Ut et quo voluptates.'),(20,2,'odio','Est odio sequi quaerat culpa ut quis maxime. Doloremque omnis et quia. Accusamus doloribus beatae voluptatem iusto voluptatem quisquam omnis. Quia et vel inventore quidem animi.');
/*!40000 ALTER TABLE `reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(145) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `password_hash` char(65) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_unique_idx` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'kelsi14@example.net','1980-03-05 18:37:28','6e910e8a97c858d48506ffdd11f50604609f331d'),(2,'hans.windler@example.com','1988-11-01 15:29:07','b68cae5b95424793425b66ca2e9d9025bcaaef74'),(3,'gina53@example.net','2007-06-27 04:00:29','82ea493730a03cac052d8368e35f82f749c66813'),(4,'bhickle@example.org','2010-06-25 04:38:01','be17b76af8a1999030c32233885e189cffcf77c0'),(5,'lfisher@example.org','2012-03-25 21:33:40','55c2ab02420acf1c06c4e86185f84f9d1572a427'),(6,'durgan.dee@example.com','2000-10-15 15:29:15','60964463c9903ce8f9c1e3aa342a652e1ea59e5a'),(7,'parisian.pietro@example.org','2019-06-10 18:01:39','e267556b7fc6118e6f918fcc8703bfe430a476f3'),(8,'vconn@example.com','2003-05-28 08:38:31','92ca6d4e47f743825cb3facad55c9293cdb24d24'),(9,'trey70@example.net','2007-07-23 00:38:35','a8c11ca59c519dc64b7bf1eab0ae15ce8f743496'),(10,'niko27@example.com','1979-03-14 22:52:21','c4b87dc51385f8d302248b629d789b8fbfee629a'),(11,'floyd.sanford@example.com','1987-11-21 20:49:57','1dea210f2b97dc4ff34e17a349f122bef3c544c3'),(12,'betsy41@example.org','2004-01-14 22:38:25','857a211483281f3a4ddd62dca649c45c01357548'),(13,'ycronin@example.org','1979-03-19 20:53:03','a3f1a4bd375a824a474f0611272e92f3042d7d23'),(14,'feil.citlalli@example.org','1972-12-12 07:30:05','88ed0320d85ab14359482d73921745447db071a4'),(15,'chaley@example.org','1977-07-07 13:31:33','37a80a6a2d5eaed224ad75bb40e3143a30427c48'),(16,'marley31@example.org','1977-04-28 05:37:26','8875cd4d1b90531cdf35cf49453bb8f63c1617be'),(17,'addie.marquardt@example.com','2002-07-02 20:31:35','defea98e1aaeffde60482cd9653fc5da34bf13f1'),(18,'virgie82@example.net','1999-11-02 21:53:21','033c1e626912623cbd696dfab90526d0e55bfb4f'),(19,'becker.leilani@example.org','2013-10-07 02:07:15','6ee64aefbc90d4f12d239c54f4b17897a2e5e175'),(20,'zgottlieb@example.com','1981-03-06 09:27:13','fcbb919a9f8a3fb0c5813c290aa7dc837c7fce15');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users_movies`
--


-- Фильмы, сохраненные пользователем
DROP TABLE IF EXISTS `users_movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users_movies` (
  `movie_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  KEY `users_movies_comm_idx` (`movie_id`),
  KEY `users_movies_users_idx` (`user_id`),
  CONSTRAINT `fk_users_movies_comm` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `fk_users_movies_users` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users_movies`
--

LOCK TABLES `users_movies` WRITE;
/*!40000 ALTER TABLE `users_movies` DISABLE KEYS */;
INSERT INTO `users_movies` VALUES (1,1),(2,2),(3,3),(4,4),(5,5),(6,6),(7,7),(8,8),(9,9),(10,10),(11,11),(12,12),(13,13),(14,14),(15,15),(16,16),(17,17),(18,18),(19,19),(20,20);
/*!40000 ALTER TABLE `users_movies` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-05-07 11:04:49


# --------------------------------------------------------------------------------------------------------
-- Выборка
-- Пользователи и их рецензии
SELECT r.user_id AS user_id, p.name AS user_name, r.name, r.txt
FROM reviews AS r 
JOIN profiles AS p
ON p.user_id = r.user_id
ORDER BY r.user_id;


# --------------------------------------------------------------------------------------------------------
-- Триггер который добавляет новых друзей в список друзей при принятии заявки в друзья
DROP TRIGGER IF EXISTS add_friends;
delimiter //
CREATE TRIGGER add_friends 
AFTER INSERT ON friend_requests
FOR EACH ROW
	IF NEW.accepted = TRUE THEN
	INSERT INTO friend_list VALUES (NEW.from_user_id, NEW.to_user_id); -- два раза т.к. у Первого пользователя новый друг Второй,
	INSERT INTO friend_list VALUES (NEW.to_user_id, NEW.from_user_id); -- и у Второго новый друг - Первый
END IF
//
delimiter ;


# --------------------------------------------------------------------------------------------------------
-- Представления
-- Топ 10 фильмов по рейтингу
CREATE OR REPLACE VIEW top_10_movies (movie_id, name, rating) AS
	SELECT m.id AS movie_id, m.name, m.rating
	FROM movies AS m
	ORDER BY rating DESC
	LIMIT 10;


-- Топ 5 пользователей по количеству рецензий
CREATE OR REPLACE VIEW top_5_reviewers (user_name, amount_of_reviews) AS
	SELECT p.name, count(r.id)
	FROM reviews r, profiles p 
	WHERE r.user_id = p.user_id 
	GROUP BY p.user_id
	ORDER BY count(r.id) DESC 
	LIMIT 5;

	
SELECT * FROM top_10_movies;
SELECT * FROM top_5_reviewers;


