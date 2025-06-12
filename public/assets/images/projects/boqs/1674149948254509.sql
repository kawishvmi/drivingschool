/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - gamezone
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`gamezone` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `gamezone`;

/*Table structure for table `games` */

DROP TABLE IF EXISTS `games`;

CREATE TABLE `games` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(234) NOT NULL,
  `sub_title` varchar(234) NOT NULL,
  `url` varchar(234) DEFAULT NULL,
  `banner` varchar(234) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image1` varchar(234) DEFAULT NULL,
  `image2` varchar(234) DEFAULT NULL,
  `image3` varchar(234) DEFAULT NULL,
  `image4` varchar(234) DEFAULT NULL,
  `image5` varchar(234) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `games` */

insert  into `games`(`id`,`title`,`sub_title`,`url`,`banner`,`description`,`image1`,`image2`,`image3`,`image4`,`image5`,`created_at`,`updated_at`) values 
(7,'title updated','Sub titile updated','abc.com.pk','1665404053222610.jpg','  fsfsdfsdfs','1666986360112801.png','1667104069904907.png','1667104112444317.png','1665404132215141.png','1665407390979071.png','2022-11-06 12:57:34','2022-11-07 10:29:40'),
(8,'Title','Sub Title:','rwerwerwerwe','1665114424596698.jpg','<p>rewerewrwer</p><p>rwerwerwer</p>','1665114424596698.jpg','1665114424855584.jpg','1667104112444317.png','1666706346242674.jpg','1665114423799058.jpg','2022-11-07 09:54:04','2022-11-07 10:17:40'),
(9,'Title','Sub Title:','rwerwerwerwe','1665114424596698.jpg','<p>wrwerwerwerwerwe</p><p>rwerwerwerwer</p>','1665114424710041.jpg','1665114424980984.jpg','1665404132550931.jpg','1665390639673086.jpg','1667443763746401.jpg','2022-11-07 09:54:48',NULL),
(10,'Titlerwerw 123','Sub Title:rwerwe 123','rwerwerwerwe rwerwe 123','1665114424596698.jpg','   <p> rwerwer rwere</p><p>rwer werwerwer</p><p>rwerw rwerwere 123</p>','1666986360112801.png','1667104069904907.png','1667104112444317.png','1665404087119088.jpg','1667104112444317.png','2022-11-07 09:59:34','2022-11-07 10:26:32');

/*Table structure for table `home_sliders` */

DROP TABLE IF EXISTS `home_sliders`;

CREATE TABLE `home_sliders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `web_image` varchar(100) NOT NULL,
  `mobile_image` varchar(100) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `home_sliders` */

insert  into `home_sliders`(`id`,`web_image`,`mobile_image`,`created_at`,`updated_at`) values 
(1,'Home_09.jpg','HM8.jpg','2022-11-14 19:54:26',NULL),
(2,'Home_07.jpg','HM7.jpg','2022-11-14 19:54:39',NULL),
(3,'Home_06.jpg','HM6.jpg','2022-11-14 19:55:38','2022-11-14 19:55:47'),
(4,'Home_05.jpg','HM5.jpg','2022-11-14 19:56:22',NULL);

/*Table structure for table `portfolioes` */

DROP TABLE IF EXISTS `portfolioes`;

CREATE TABLE `portfolioes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(234) NOT NULL,
  `sub_title` varchar(234) NOT NULL,
  `url` varchar(234) DEFAULT NULL,
  `image` varchar(234) DEFAULT NULL,
  `mobile_image` varchar(234) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

/*Data for the table `portfolioes` */

insert  into `portfolioes`(`id`,`title`,`sub_title`,`url`,`image`,`mobile_image`,`created_at`,`updated_at`) values 
(1,'SODA BALLZ','IN HOUSE','abc.com.pk','M1.jpg','pM1.jpg','2022-11-15 13:34:43',NULL),
(2,'COMPANY REEL','UNTH STUDIOS 2021','abc.com.pk','M2.jpg','pM2.jpg','2022-11-15 13:36:36',NULL),
(3,'NBK','HEELON','abc.com.pk','M4.jpg','pM4.jpg','2022-11-15 13:37:11',NULL),
(4,'NIPPON PAINT','VISION','abc.com.pk','M3.jpg','pM3.jpg','2022-11-15 13:38:31',NULL);

/*Table structure for table `shortfilms` */

DROP TABLE IF EXISTS `shortfilms`;

CREATE TABLE `shortfilms` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(234) NOT NULL,
  `sub_title` varchar(234) NOT NULL,
  `url` varchar(234) DEFAULT NULL,
  `banner` varchar(234) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `image1` varchar(234) DEFAULT NULL,
  `image2` varchar(234) DEFAULT NULL,
  `image3` varchar(234) DEFAULT NULL,
  `image4` varchar(234) DEFAULT NULL,
  `image5` varchar(234) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4;

/*Data for the table `shortfilms` */

insert  into `shortfilms`(`id`,`title`,`sub_title`,`url`,`banner`,`description`,`image1`,`image2`,`image3`,`image4`,`image5`,`created_at`,`updated_at`) values 
(7,'title updated','Sub titile updated','abc.com.pk','1665404053222610.jpg','  fsfsdfsdfs','1666986360112801.png','1667104069904907.png','1667104112444317.png','1665404132215141.png','1665407390979071.png','2022-11-06 12:57:34','2022-11-07 10:29:40'),
(8,'Title','Sub Title:','rwerwerwerwe','1665114424596698.jpg','<p>rewerewrwer</p><p>rwerwerwer</p>','1665114424596698.jpg','1665114424855584.jpg','1667104112444317.png','1666706346242674.jpg','1665114423799058.jpg','2022-11-07 09:54:04','2022-11-07 10:17:40'),
(9,'Title','Sub Title:','rwerwerwerwe','1665114424596698.jpg','<p>wrwerwerwerwerwe</p><p>rwerwerwerwer</p>','1665114424710041.jpg','1665114424980984.jpg','1665404132550931.jpg','1665390639673086.jpg','1667443763746401.jpg','2022-11-07 09:54:48',NULL),
(10,'Titlerwerw 123','Sub Title:rwerwe 123','rwerwerwerwe rwerwe 123','1665114424596698.jpg','   <p> rwerwer rwere</p><p>rwer werwerwer</p><p>rwerw rwerwere 123</p>','1666986360112801.png','1667104069904907.png','1667104112444317.png','1665404087119088.jpg','1667104112444317.png','2022-11-07 09:59:34','2022-11-07 10:26:32');

/*Table structure for table `teams` */

DROP TABLE IF EXISTS `teams`;

CREATE TABLE `teams` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `team` varchar(123) DEFAULT NULL,
  `name` varchar(234) NOT NULL,
  `designation` varchar(234) NOT NULL,
  `profile` varchar(234) DEFAULT NULL,
  `summary` longblob DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4;

/*Data for the table `teams` */

insert  into `teams`(`id`,`team`,`name`,`designation`,`profile`,`summary`,`created_at`,`updated_at`) values 
(2,'0','1665114424465796.jpg','1665114424481839.jpg',NULL,NULL,'2022-11-06 08:09:44',NULL),
(3,'0','1665404053222610.jpg','1665390639673086.jpg',NULL,NULL,'2022-11-06 12:10:26',NULL),
(4,'0','fsdfsd','fsdfsdf','1665114424596698.jpg','rwerwerwerwe','2022-11-06 12:40:34',NULL),
(6,'0','rwer','werwerwe','1664292229279588.jpg','rwe','2022-11-06 12:48:44',NULL),
(7,'0','raj','PHP','mobile-banner.jpg',' <p> abc.com.pkvxv xcbbfghfg</p><p>g fhghfghfghfg</p><p><br></p>','2022-11-06 12:57:34','2022-11-11 10:06:11'),
(8,'upper_team','Roshan','tester','trading-website.png','<p>fsdfsd fsdfsdfsdfs</p><p>&nbsp;sgdgdfg</p>','2022-11-11 09:18:41',NULL),
(9,'upper_team','Roshan','tester','trading-website.png','<p>fsdfsd fsdfsdfsdfs</p><p>&nbsp;sgdgdfg</p>','2022-11-11 09:28:00',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `create_datetime` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`email`,`password`,`create_datetime`) values 
(2,'administrator','admin@admin.com','0192023a7bbd73250516f069df18b500','2022-10-22 15:18:54');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
