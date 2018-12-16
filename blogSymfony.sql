-- MySQL dump 10.13  Distrib 5.7.24, for Linux (x86_64)
--
-- Host: localhost    Database: blogSymfony
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

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
-- Current Database: `blogSymfony`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `blogSymfony` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `blogSymfony`;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(11) NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E6612469DE2` (`category_id`),
  CONSTRAINT `FK_23A0E6612469DE2` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=431 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (380,'consequuntur vero ut exercitationem autem rerum harum ea sunt.','et soluta voluptatem ut exercitationem numquam aliquid tenetur possimus. deleniti voluptates laborum placeat maxime voluptas tempore et. ad maiores fugit modi sed in fugiat.',95,'consequuntur-vero-ut-exercitationem-autem-rerum-harum-ea-sunt'),(381,'et quod ut id atque et.','vero voluptatem qui aut rerum vel sint. repellendus et autem voluptates hic quibusdam ut aut. minus architecto minus aut et tenetur.',93,'et-quod-ut-id-atque-et'),(382,'est doloremque voluptates fugiat pariatur.','necessitatibus qui deleniti sed. eveniet maiores id quos totam est. doloremque quia iusto consequatur architecto facere qui.',97,'est-doloremque-voluptates-fugiat-pariatur'),(383,'minus eum sequi laboriosam.','rerum commodi minus odit vero. aut laudantium est sapiente qui sed vero at.',94,'minus-eum-sequi-laboriosam'),(384,'dolorem inventore et iure commodi.','ea perspiciatis et similique similique quisquam quidem. cupiditate totam est necessitatibus ut repudiandae aut. voluptatem ex rerum consequatur odit. quae ea dolores iste ut reprehenderit molestiae.',95,'dolorem-inventore-et-iure-commodi'),(385,'unde natus ut eum ut assumenda ad illo et.','id voluptate blanditiis omnis accusamus rem accusamus. quae dolorum sit est eveniet qui. sequi ad aut amet vel assumenda doloremque. eius suscipit quas omnis ut.',94,'unde-natus-ut-eum-ut-assumenda-ad-illo-et'),(386,'fugit repellat dignissimos sunt ad consequatur iusto ducimus.','tenetur sit doloremque distinctio explicabo autem. libero cum in debitis minima commodi cupiditate. natus debitis quibusdam fuga sed atque quia atque.',92,'fugit-repellat-dignissimos-sunt-ad-consequatur-iusto-ducimus'),(387,'in et non et possimus eos ut.','sed impedit in officia ipsam rerum. quis consequatur ut voluptas est odit. et aut minima magnam rem adipisci. alias quia maiores voluptas.',95,'in-et-non-et-possimus-eos-ut'),(388,'nisi velit ut sint velit.','delectus et est ducimus et libero explicabo dolor iste. vel est ut non delectus earum quae. dolor provident saepe quas quia sint blanditiis qui. rerum dolores deleniti cum natus.',95,'nisi-velit-ut-sint-velit'),(389,'aliquam officiis vel nobis sit quod expedita eum.','neque quidem eveniet blanditiis. quia aut suscipit aut sed possimus et. voluptatem alias laborum nam. doloremque distinctio quo ut.',93,'aliquam-officiis-vel-nobis-sit-quod-expedita-eum'),(390,'nemo ut quas necessitatibus iusto rem eum ad.','suscipit libero quia provident. ut adipisci totam possimus ab dolorum saepe. quibusdam quibusdam quia beatae sed explicabo non.',97,'nemo-ut-quas-necessitatibus-iusto-rem-eum-ad'),(391,'iusto a sit et ea voluptatem voluptatem quae.','voluptas laborum aspernatur eum deleniti tempore aut. dolores reprehenderit est quod laudantium non et nemo. voluptate amet possimus asperiores commodi. sunt minima ullam qui possimus similique.',97,'iusto-a-sit-et-ea-voluptatem-voluptatem-quae'),(392,'rerum qui placeat dolorum laborum ut.','est minima et magnam voluptatum est. consequuntur aut molestiae omnis blanditiis. dolores et omnis unde atque et temporibus quo. nihil temporibus voluptatem nostrum nam dicta autem.',93,'rerum-qui-placeat-dolorum-laborum-ut'),(393,'temporibus vel consectetur est qui dolor.','laboriosam vel labore magnam consequuntur explicabo saepe harum. vero modi libero ea aut labore. maiores dicta autem magnam nemo necessitatibus totam. numquam iusto et harum sit vel omnis ex.',94,'temporibus-vel-consectetur-est-qui-dolor'),(394,'maxime ut dolorem et saepe et culpa aut.','eligendi repellendus consectetur unde necessitatibus id est accusantium ducimus. harum voluptates quasi optio enim. sit minus quia iste voluptatum.',93,'maxime-ut-dolorem-et-saepe-et-culpa-aut'),(395,'accusantium a quis voluptas.','expedita dolorem corporis qui. magni aut voluptate est sed. enim tenetur voluptate voluptatem iste consequatur iste nihil.',96,'accusantium-a-quis-voluptas'),(396,'totam dolorem ipsam nemo debitis voluptatem.','vero eum deleniti ad est nam incidunt. optio sapiente saepe consequatur voluptate voluptas alias. voluptatem quibusdam omnis et non vel. adipisci dolorum velit consequatur inventore.',97,'totam-dolorem-ipsam-nemo-debitis-voluptatem'),(397,'minima quia ut nemo esse quas provident blanditiis.','quis dolores animi quaerat mollitia animi voluptas quisquam facilis. non qui nesciunt fugit consequatur sit. sunt quam voluptatem vitae non corrupti omnis.',94,'minima-quia-ut-nemo-esse-quas-provident-blanditiis'),(398,'ad aut dolor sit molestias.','tempora vel amet pariatur dolores ad quisquam. neque enim numquam saepe vero.',96,'ad-aut-dolor-sit-molestias'),(399,'nihil ea iusto eos in et.','deleniti quam quasi est id minus. ducimus praesentium sit sit laboriosam voluptatibus sit qui. et exercitationem libero sit qui.',94,'nihil-ea-iusto-eos-in-et'),(400,'sunt optio enim culpa nam quis aut.','expedita ex delectus illum ad. qui cupiditate dolorem similique minima facere autem et.',93,'sunt-optio-enim-culpa-nam-quis-aut'),(401,'distinctio tenetur iusto aliquid.','eveniet aperiam omnis quis itaque eum iusto tenetur. nam beatae consequatur aut dolor. assumenda deserunt dolorum nesciunt inventore in quas. dolores quisquam est ut reprehenderit vitae consequatur.',96,'distinctio-tenetur-iusto-aliquid'),(402,'aut quia id earum dolorem.','doloremque aut eos non rerum. sed repellendus dolor harum necessitatibus rerum. non molestias sapiente laudantium repellat.',94,'aut-quia-id-earum-dolorem'),(403,'recusandae minus sunt mollitia nam ut.','explicabo rerum veniam ut dolor. aspernatur iure alias amet. corporis quo est nisi autem corrupti. quia eos quas earum velit quae id dolorum.',96,'recusandae-minus-sunt-mollitia-nam-ut'),(404,'laudantium repudiandae vel aut aliquam minus.','iusto incidunt cumque provident et. odit iste perspiciatis ut quidem. voluptatem odit et nostrum voluptas.',94,'laudantium-repudiandae-vel-aut-aliquam-minus'),(405,'sequi necessitatibus soluta esse delectus.','ut consequatur quis vel voluptatem enim est impedit. vel ut quas omnis sint. numquam recusandae veritatis enim molestiae est.',97,'sequi-necessitatibus-soluta-esse-delectus'),(406,'sint et enim id dolore neque dolorem dolorem.','quia debitis dignissimos et aut consequatur quibusdam. et sint et velit voluptates. reprehenderit autem sit nesciunt dicta placeat praesentium eaque corrupti.',95,'sint-et-enim-id-dolore-neque-dolorem-dolorem'),(407,'veritatis rerum ipsam et rerum enim saepe.','voluptas dolores natus quia recusandae eveniet. nemo minima vel explicabo ea ducimus. cupiditate tempore et id laborum.',97,'veritatis-rerum-ipsam-et-rerum-enim-saepe'),(408,'voluptas esse veritatis ex qui id ea delectus.','expedita impedit sint ea voluptate voluptate enim culpa. et impedit ducimus in quia delectus. dolores consectetur nihil qui distinctio recusandae reiciendis voluptatibus.',97,'voluptas-esse-veritatis-ex-qui-id-ea-delectus'),(409,'veniam inventore fugit autem praesentium atque nihil.','eveniet quis dolores a ex consequuntur amet. omnis temporibus dolor sunt aspernatur ipsa quia. est consequuntur enim ratione provident molestiae libero possimus.',93,'veniam-inventore-fugit-autem-praesentium-atque-nihil'),(410,'qui libero officia sed sed inventore.','non et exercitationem tenetur quasi fugit ducimus. voluptas rerum illum distinctio qui dolores magni. corporis quod inventore facilis vel in. et accusantium ipsam dolorem.',94,'qui-libero-officia-sed-sed-inventore'),(411,'incidunt sint tempora deleniti ea.','ut beatae incidunt itaque rem et qui perspiciatis. laboriosam ea reprehenderit doloremque tenetur. voluptatem perferendis aut totam mollitia nihil enim vel. voluptatem nam non non reiciendis.',96,'incidunt-sint-tempora-deleniti-ea'),(412,'dicta in voluptate accusantium laudantium laboriosam repellendus est.','illo id porro eos. totam omnis laborum qui inventore qui. distinctio quasi et quod hic asperiores.',94,'dicta-in-voluptate-accusantium-laudantium-laboriosam-repellendus-est'),(413,'neque itaque qui et earum quia est.','quam iste labore qui voluptas. molestiae aut est ut numquam unde. ipsa distinctio quis vel in sit in.',96,'neque-itaque-qui-et-earum-quia-est'),(414,'et porro sunt nam.','aliquam est eveniet sit voluptatem aut. accusamus molestiae consequatur vel qui quae voluptatum qui. voluptas aut vero id ipsum quo cumque.',94,'et-porro-sunt-nam'),(415,'saepe corrupti blanditiis qui occaecati non pariatur aut.','consequatur aut ab repellendus rerum error occaecati asperiores. ut et iusto ipsa sequi magni corporis aut. ex maiores non aliquam. distinctio numquam esse qui accusantium voluptas aliquam omnis.',93,'saepe-corrupti-blanditiis-qui-occaecati-non-pariatur-aut'),(416,'voluptas asperiores temporibus corporis maiores.','voluptas aut rerum aliquam eum amet quis et. tempora quisquam id quod odio ut est ut assumenda. et veniam est commodi mollitia.',92,'voluptas-asperiores-temporibus-corporis-maiores'),(417,'temporibus tenetur laborum autem et et voluptatibus.','expedita eaque vel officia porro accusamus exercitationem. quaerat consequuntur velit dolor velit pariatur asperiores sint omnis. nihil blanditiis officiis repellendus qui id vero qui veritatis.',92,'temporibus-tenetur-laborum-autem-et-et-voluptatibus'),(418,'aut explicabo voluptatem ea tempore adipisci tempora quia.','sint officia quia itaque. est necessitatibus et in quia. voluptatem necessitatibus sint quibusdam iusto.',96,'aut-explicabo-voluptatem-ea-tempore-adipisci-tempora-quia'),(419,'dicta ut quod eum nulla quaerat maiores deleniti.','dolor repellendus molestias sint odio omnis. deserunt quos debitis velit laborum accusantium et quia. unde et ex alias et ducimus et.',95,'dicta-ut-quod-eum-nulla-quaerat-maiores-deleniti'),(420,'molestiae hic vero et est voluptas modi.','quibusdam adipisci nesciunt nostrum. voluptatem expedita eum labore rerum.',97,'molestiae-hic-vero-et-est-voluptas-modi'),(421,'ipsum dolorem impedit rerum iure recusandae.','pariatur earum in rerum accusamus. adipisci sit nihil temporibus est nisi doloribus. quia tenetur voluptate soluta quam ipsum. soluta quos quibusdam deserunt commodi.',96,'ipsum-dolorem-impedit-rerum-iure-recusandae'),(422,'nobis ut placeat ex sit itaque fuga.','sunt distinctio natus unde perferendis. quidem ut id molestias molestiae laudantium adipisci sunt. et sunt placeat vel quo et.',92,'nobis-ut-placeat-ex-sit-itaque-fuga'),(423,'rerum dolor unde voluptatibus reprehenderit aspernatur expedita.','similique ut tenetur nihil ut non quam. qui voluptas eum harum perferendis repellat placeat qui. rerum consequatur libero pariatur cupiditate. minus quidem dolores et.',94,'rerum-dolor-unde-voluptatibus-reprehenderit-aspernatur-expedita'),(424,'dolor dolor commodi sed totam ut quaerat.','neque perferendis et alias perferendis. minus voluptate sit nostrum non eos.',93,'dolor-dolor-commodi-sed-totam-ut-quaerat'),(425,'nisi temporibus tempora ipsa dicta asperiores sed.','consectetur sapiente numquam et. error omnis aut delectus. fugiat eos est rerum sequi deleniti at. mollitia non corporis et aut quisquam.',92,'nisi-temporibus-tempora-ipsa-dicta-asperiores-sed'),(426,'ipsum velit quibusdam recusandae veritatis sed non deserunt.','iure facilis ut sunt rerum. sed officiis qui et nemo libero nesciunt quae. explicabo eius blanditiis distinctio magnam non voluptatum officia.',93,'ipsum-velit-quibusdam-recusandae-veritatis-sed-non-deserunt'),(427,'aut ad nihil qui odit hic.','nisi molestiae minus rerum et eum quidem. accusamus maxime aliquam et distinctio. voluptatem dolorem laboriosam necessitatibus harum ratione cum non. voluptate ducimus quam voluptas.',95,'aut-ad-nihil-qui-odit-hic'),(428,'qui et sed eos voluptatem omnis corporis quod.','ab aliquam vel modi est. voluptas quia placeat temporibus eveniet sunt voluptates sint ab. quas non architecto ipsa dolores enim ut ipsa error.',95,'qui-et-sed-eos-voluptatem-omnis-corporis-quod'),(429,'molestiae officia delectus harum animi velit quo.','ipsa accusantium perspiciatis facilis iste ut error occaecati. reiciendis doloribus non qui non aut exercitationem. hic nesciunt et voluptatem. dolor qui omnis nemo est.',93,'molestiae-officia-delectus-harum-animi-velit-quo'),(430,'PHPStorm, l\'éditeur de code pour PHP idéal !','PHPStorm, l\'éditeur de code pour PHP à tester !\"',92,'phpstorm-lediteur-de-code-pour-php-ideal');
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article_tag`
--

DROP TABLE IF EXISTS `article_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article_tag` (
  `article_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL,
  PRIMARY KEY (`article_id`,`tag_id`),
  KEY `IDX_919694F97294869C` (`article_id`),
  KEY `IDX_919694F9BAD26311` (`tag_id`),
  CONSTRAINT `FK_919694F97294869C` FOREIGN KEY (`article_id`) REFERENCES `article` (`id`) ON DELETE CASCADE,
  CONSTRAINT `FK_919694F9BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `tag` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article_tag`
--

LOCK TABLES `article_tag` WRITE;
/*!40000 ALTER TABLE `article_tag` DISABLE KEYS */;
INSERT INTO `article_tag` VALUES (430,22);
/*!40000 ALTER TABLE `article_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=98 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (92,'php',NULL),(93,'java',NULL),(94,'javascript',NULL),(95,'ruby',NULL),(96,'python',NULL),(97,'devOps',NULL);
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migration_versions`
--

LOCK TABLES `migration_versions` WRITE;
/*!40000 ALTER TABLE `migration_versions` DISABLE KEYS */;
INSERT INTO `migration_versions` VALUES ('20181104192630'),('20181104202358'),('20181112094512'),('20181121213733'),('20181129150703'),('20181204133741'),('20181204154247');
/*!40000 ALTER TABLE `migration_versions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tag`
--

DROP TABLE IF EXISTS `tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tag`
--

LOCK TABLES `tag` WRITE;
/*!40000 ALTER TABLE `tag` DISABLE KEYS */;
INSERT INTO `tag` VALUES (22,'dev'),(23,'music'),(24,'porn'),(25,'php'),(26,'news'),(27,'real nigger');
/*!40000 ALTER TABLE `tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-16 14:45:56
