/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 10.4.24-MariaDB : Database - shahid_associate
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`shahid_associate` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `shahid_associate`;

/*Table structure for table `banks` */

DROP TABLE IF EXISTS `banks`;

CREATE TABLE `banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` int(11) DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `banks` */

insert  into `banks`(`id`,`name`,`short_name`,`branch_code`,`address`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Al Baraka Bank (Pakistan)','ewr234',234234,'234234234',1,'2022-06-29 14:32:04','2022-06-29 14:41:14','2022-06-29 14:41:14'),
(2,'Allied Bank Limited','432423423',4234,'234234234',1,'2022-06-29 14:41:12','2022-07-25 14:32:43',NULL),
(3,'Askari Bank Limited',NULL,0,NULL,1,NULL,NULL,NULL),
(4,'Bank Al Falah Limited',NULL,0,NULL,1,NULL,NULL,NULL),
(5,'Bank Al Habib Limited ',NULL,0,NULL,1,NULL,NULL,NULL),
(6,'BankIslami Pakistan\r\nLimited',NULL,0,NULL,1,NULL,NULL,NULL),
(7,'Dubai Islamic Bank\r\nPakistan Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(8,'Faysal Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(9,'First Women Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(10,'Habib Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(11,'Standard Chartered Bank\r\n(Pakistan) Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(12,'Habib Metropolitan Bank\r\nLimited',NULL,0,NULL,1,NULL,NULL,NULL),
(13,'JS Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(14,'MCB Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(15,'Meezan Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(16,'National Bank Limited ',NULL,1,NULL,1,NULL,NULL,NULL),
(17,'Samba Bank Limited ',NULL,1,NULL,1,NULL,NULL,NULL),
(18,'Sindh Bank Limited ',NULL,1,NULL,1,NULL,NULL,NULL),
(19,'Silkbank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(20,'Soneri Bank Limited ',NULL,1,NULL,1,NULL,NULL,NULL),
(21,'Summit Bank Limited',NULL,1,NULL,1,NULL,NULL,NULL),
(22,'The Bank of Khyber',NULL,1,NULL,1,NULL,NULL,NULL),
(23,'The Bank of Punjab',NULL,1,NULL,1,NULL,NULL,NULL),
(24,'United Bank Limited ',NULL,1,NULL,1,NULL,NULL,NULL);

/*Table structure for table `company_banks` */

DROP TABLE IF EXISTS `company_banks`;

CREATE TABLE `company_banks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `bank_id` int(11) DEFAULT 0,
  `account_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` int(11) DEFAULT 0,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iban_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company_banks` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
