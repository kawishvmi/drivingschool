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

/*Table structure for table `account_transactions` */

DROP TABLE IF EXISTS `account_transactions`;

CREATE TABLE `account_transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `account_id` int(11) DEFAULT 0,
  `transaction_type` enum('assets','liabilities','equity','revenue','expenses') COLLATE utf8mb4_unicode_ci DEFAULT 'assets',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit` double(8,2) DEFAULT 0.00,
  `credit` double(8,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `account_transactions` */

insert  into `account_transactions`(`id`,`invoice_number`,`date`,`account_id`,`transaction_type`,`type`,`description`,`debit`,`credit`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'SA-TRANSACTION-000001','2022-08-20',1,'equity','','Cash Account Company Initial',500000.00,0.00,'2022-08-20 03:36:17','2022-08-20 03:36:17',NULL),
(2,'SA-TRANSACTION-000001','2022-08-20',11,'equity','','Capital Account',0.00,500000.00,'2022-08-20 03:36:17','2022-08-20 03:36:17',NULL),
(35,'SA-TRANSACTION-000002','2022-08-23',7,NULL,'Assets','Chair',4000.00,0.00,'2022-08-23 03:19:23','2022-08-23 03:19:23',NULL),
(36,'SA-TRANSACTION-000002','2022-08-23',1,NULL,'Cash Account','Chair',0.00,4000.00,'2022-08-23 03:19:23','2022-08-23 03:19:23',NULL),
(37,'SA-TRANSACTION-000003','2022-08-23',7,NULL,'Assets','byke',6500.00,0.00,'2022-08-23 03:20:24','2022-08-23 03:20:24',NULL),
(38,'SA-TRANSACTION-000003','2022-08-23',1,NULL,'Cash Account','byke',0.00,6500.00,'2022-08-23 03:20:24','2022-08-23 03:20:24',NULL),
(39,'SA-TRANSACTION-000004','2022-08-23',8,NULL,'Inventory','wood material',3500.00,0.00,'2022-08-23 03:21:43','2022-08-23 03:21:43',NULL),
(40,'SA-TRANSACTION-000004','2022-08-23',64,NULL,'Project Account','wood material',0.00,3500.00,'2022-08-23 03:21:43','2022-08-23 03:21:43',NULL),
(41,'SA-TRANSACTION-000005','2022-08-23',6,NULL,'Purchase Invoice','AA Associates  Samsung',5400.00,0.00,'2022-08-23 03:22:50','2022-08-23 03:22:50',NULL),
(42,'SA-TRANSACTION-000005','2022-08-23',65,NULL,'Supplier','AA Associates  Samsung',0.00,5400.00,'2022-08-23 03:22:50','2022-08-23 03:22:50',NULL),
(43,'SA-TRANSACTION-000006','2022-08-23',65,NULL,'company','AA Associates  ABC Sale Good',700.00,0.00,'2022-08-23 03:27:06','2022-08-23 03:27:06',NULL),
(44,'SA-TRANSACTION-000006','2022-08-23',5,NULL,'Customer','AA Associates  ABC Sale Good',0.00,700.00,'2022-08-23 03:27:06','2022-08-23 03:27:06',NULL),
(45,'SA-TRANSACTION-000007','2022-08-23',1,NULL,'Received','Account Title roshan  Account No53454534',4500.00,0.00,'2022-08-23 03:30:01','2022-08-23 03:30:01',NULL),
(46,'SA-TRANSACTION-000007','2022-08-23',64,NULL,'send','Account Title roshan Account No53454534',0.00,4500.00,'2022-08-23 03:30:01','2022-08-23 03:30:01',NULL);

/*Table structure for table `accounts` */

DROP TABLE IF EXISTS `accounts`;

CREATE TABLE `accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` int(11) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entity_id` int(11) DEFAULT 0,
  `parent` int(11) DEFAULT 0,
  `opening_balance` double(15,2) DEFAULT 0.00,
  `available_balance` double(15,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `accounts` */

insert  into `accounts`(`id`,`account_number`,`account_no`,`name`,`name_type`,`entity_id`,`parent`,`opening_balance`,`available_balance`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'SA-AC-000001',0,'Company','company',0,0,0.00,-18200.00,'2022-08-20 07:29:02','2022-08-23 03:30:01',NULL),
(2,'SA-AC-000002',0,'Employees','employee',0,1,0.00,0.00,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(3,'SA-AC-000003',0,'Sub-Contractor	\r\n','sub-contractor	',0,1,0.00,0.00,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(4,'SA-AC-000004',0,'Projects','project',0,1,0.00,0.00,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(5,'SA-AC-000005',0,'Customer','sale-invoice	',0,1,0.00,-2200.00,'2022-08-20 07:29:02','2022-08-23 03:27:06',NULL),
(6,'SA-AC-000006',0,'Supplier','purchase-invoice	',0,1,0.00,5400.00,'2022-08-20 07:29:02','2022-08-23 03:22:50',NULL),
(7,'SA-AC-000007',0,'Assets','assets',0,1,0.00,19800.00,'2022-08-20 07:29:02','2022-08-23 03:20:24',NULL),
(8,'SA-AC-000008',0,'Inventory Material','inventory-material',0,1,0.00,4100.00,'2022-08-20 07:29:02','2022-08-23 03:21:43',NULL),
(11,'SA-AC-000000',0,'Capital Account','capital-account',0,0,0.00,0.00,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(63,'SA-AC-000004 1',0,'Roshan','project',5,4,20000.00,0.00,'2022-08-22 16:15:35','2022-08-22 16:15:35',NULL),
(64,'SA-AC-000004 2',0,'Water Plant','project',1,4,40000.00,-11100.00,'2022-08-23 01:59:19','2022-08-23 03:30:01',NULL),
(65,'SA-AC-000003 1',0,'AA Associates','sub-contractor',1,3,0.00,2100.00,'2022-08-23 02:19:48','2022-08-23 03:27:06',NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `banks` */

insert  into `banks`(`id`,`name`,`short_name`,`branch_code`,`address`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'South city ','ewr234',234234,'234234234',1,'2022-06-29 14:32:04','2022-06-29 14:41:14','2022-06-29 14:41:14'),
(2,'HBL','432423423',4234,'234234234',1,'2022-06-29 14:41:12','2022-07-25 14:32:43',NULL);

/*Table structure for table `companies` */

DROP TABLE IF EXISTS `companies`;

CREATE TABLE `companies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_type_id` int(11) NOT NULL DEFAULT 0,
  `company_category_id` int(11) NOT NULL DEFAULT 0,
  `company_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_contact` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `companies` */

insert  into `companies`(`id`,`name`,`company_type_id`,`company_category_id`,`company_address`,`company_contact`,`company_email`,`company_website`,`photo`,`cnic_photo`,`company_logo`,`agreement_copy`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'AA Associates',2,0,'karachi','3243-2______',NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-23 02:19:48','2022-08-23 02:19:48',NULL);

/*Table structure for table `company_categories` */

DROP TABLE IF EXISTS `company_categories`;

CREATE TABLE `company_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company_categories` */

insert  into `company_categories`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Firm Category 1',1,NULL,NULL,NULL),
(2,'Firm Category 2',1,NULL,NULL,NULL),
(3,'Firm Category 3',1,NULL,NULL,NULL),
(4,'Firm Category 4',1,NULL,NULL,NULL);

/*Table structure for table `company_contact_people` */

DROP TABLE IF EXISTS `company_contact_people`;

CREATE TABLE `company_contact_people` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company_contact_people` */

insert  into `company_contact_people`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Owner',1,NULL,NULL,NULL),
(2,'CEO',1,NULL,NULL,NULL),
(3,'Business Development Manager',1,NULL,NULL,NULL),
(4,'Director',1,NULL,NULL,NULL),
(5,'Manager',1,NULL,NULL,NULL),
(6,'General Manager',1,NULL,NULL,NULL);

/*Table structure for table `company_contact_person_information` */

DROP TABLE IF EXISTS `company_contact_person_information`;

CREATE TABLE `company_contact_person_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `company_id` int(11) NOT NULL DEFAULT 0,
  `company_contact_person_id` int(11) DEFAULT 0,
  `contact_person` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cell_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `person_email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company_contact_person_information` */

insert  into `company_contact_person_information`(`id`,`company_id`,`company_contact_person_id`,`contact_person`,`cnic`,`cell_number`,`company_email`,`person_email`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,1,'Ali','46546-5465465-4','6545-4654654','xyz@gmail.com','abc@gmail.com',0,'2022-07-03 08:33:49','2022-07-03 08:39:39',NULL),
(2,2,2,'Ali','46546-5456664-6','0321-3213213','adewli@gmail.com','aewbc@gmail.com',0,'2022-08-01 15:01:33','2022-08-01 15:01:33',NULL),
(3,3,2,'Ali','46546-5456664-6','0321-3213213','adewli@gmail.com','aewbc@gmail.com',0,'2022-08-01 15:01:46','2022-08-01 15:01:46',NULL),
(4,4,2,'Ali','65465-4656546-6','0321-3213212','ali@gmail.com','abc@gmail.com',0,'2022-08-03 07:46:49','2022-08-03 07:46:49',NULL),
(5,5,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-04 09:28:24','2022-08-04 09:28:24',NULL),
(6,6,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:00:47','2022-08-18 16:00:47',NULL),
(7,7,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:01:17','2022-08-18 16:01:17',NULL),
(8,8,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:02:27','2022-08-18 16:02:27',NULL),
(9,9,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:02:44','2022-08-18 16:02:44',NULL),
(10,10,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:04:01','2022-08-18 16:04:01',NULL),
(11,11,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:04:53','2022-08-18 16:04:53',NULL),
(12,12,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:05:01','2022-08-18 16:05:01',NULL),
(13,13,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:05:25','2022-08-18 16:05:25',NULL),
(14,14,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-18 16:06:34','2022-08-18 16:06:34',NULL),
(15,1,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:38:00','2022-08-19 09:38:00',NULL),
(16,2,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:41:48','2022-08-19 09:41:48',NULL),
(17,3,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:44:41','2022-08-19 09:44:41',NULL),
(18,4,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:11:45','2022-08-19 10:11:45',NULL),
(19,5,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-20 07:27:58','2022-08-20 07:27:58',NULL),
(20,1,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-23 02:19:48','2022-08-23 02:19:48',NULL);

/*Table structure for table `company_types` */

DROP TABLE IF EXISTS `company_types`;

CREATE TABLE `company_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `company_types` */

insert  into `company_types`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Supplier',1,NULL,NULL,NULL),
(2,'Contractor',1,NULL,NULL,NULL),
(3,'Sub Contractor',1,NULL,NULL,NULL);

/*Table structure for table `departments` */

DROP TABLE IF EXISTS `departments`;

CREATE TABLE `departments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `departments` */

insert  into `departments`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Admin',1,NULL,NULL,NULL),
(2,'Accounts',1,NULL,NULL,NULL),
(3,'Section Incharge',1,NULL,NULL,NULL),
(4,'Engineer',1,NULL,NULL,NULL);

/*Table structure for table `designations` */

DROP TABLE IF EXISTS `designations`;

CREATE TABLE `designations` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `designations` */

insert  into `designations`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Accountant',1,NULL,NULL,NULL),
(2,'Engineer',1,NULL,NULL,NULL),
(3,'Labour',1,NULL,NULL,NULL);

/*Table structure for table `employee_bank_accounts` */

DROP TABLE IF EXISTS `employee_bank_accounts`;

CREATE TABLE `employee_bank_accounts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) DEFAULT 0,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `branch_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_id` int(11) DEFAULT 0,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee_bank_accounts` */

insert  into `employee_bank_accounts`(`id`,`employee_id`,`title`,`branch_code`,`account_number`,`bank_id`,`address`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,NULL,NULL,NULL,NULL,'2022-08-19 09:20:34','2022-08-19 09:20:34',NULL),
(2,2,NULL,NULL,NULL,NULL,NULL,'2022-08-19 09:34:10','2022-08-19 09:34:10',NULL),
(3,3,NULL,NULL,NULL,NULL,NULL,'2022-08-19 09:34:31','2022-08-19 09:34:31',NULL),
(4,4,NULL,NULL,NULL,NULL,NULL,'2022-08-19 09:34:51','2022-08-19 09:34:51',NULL),
(5,5,NULL,NULL,NULL,NULL,NULL,'2022-08-19 09:37:29','2022-08-19 09:37:29',NULL),
(6,6,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:10:03','2022-08-19 10:10:03',NULL),
(7,7,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:10:35','2022-08-19 10:10:35',NULL),
(8,8,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:11:07','2022-08-19 10:11:07',NULL),
(9,9,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:11:31','2022-08-19 10:11:31',NULL);

/*Table structure for table `employee_references` */

DROP TABLE IF EXISTS `employee_references`;

CREATE TABLE `employee_references` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `employee_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee_references` */

insert  into `employee_references`(`id`,`employee_id`,`name`,`contact_number`,`cnic`,`email`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,NULL,NULL,NULL,'2022-08-19 09:20:34','2022-08-19 09:20:34',NULL),
(2,2,NULL,NULL,NULL,NULL,'2022-08-19 09:34:10','2022-08-19 09:34:10',NULL),
(3,3,NULL,NULL,NULL,NULL,'2022-08-19 09:34:31','2022-08-19 09:34:31',NULL),
(4,4,NULL,NULL,NULL,NULL,'2022-08-19 09:34:51','2022-08-19 09:34:51',NULL),
(5,5,NULL,NULL,NULL,NULL,'2022-08-19 09:37:29','2022-08-19 09:37:29',NULL),
(6,6,NULL,NULL,NULL,NULL,'2022-08-19 10:10:03','2022-08-19 10:10:03',NULL),
(7,7,NULL,NULL,NULL,NULL,'2022-08-19 10:10:35','2022-08-19 10:10:35',NULL),
(8,8,NULL,NULL,NULL,NULL,'2022-08-19 10:11:07','2022-08-19 10:11:07',NULL),
(9,9,NULL,NULL,NULL,NULL,'2022-08-19 10:11:31','2022-08-19 10:11:31',NULL);

/*Table structure for table `employee_types` */

DROP TABLE IF EXISTS `employee_types`;

CREATE TABLE `employee_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employee_types` */

insert  into `employee_types`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Permanent',1,NULL,NULL,NULL),
(2,'Temporary',1,NULL,NULL,NULL),
(3,'Dailybase',1,NULL,NULL,NULL);

/*Table structure for table `employees` */

DROP TABLE IF EXISTS `employees`;

CREATE TABLE `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `profile_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `father_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `employee_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `current_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(11) DEFAULT 0,
  `designation_id` int(11) DEFAULT 0,
  `employee_type_id` int(11) DEFAULT 0,
  `joining_date` date DEFAULT NULL,
  `release_date` date DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `employees_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `employees` */

insert  into `employees`(`id`,`profile_photo`,`cnic_photo`,`name`,`father_name`,`employee_id`,`cnic`,`contact_number`,`other_number`,`email`,`current_address`,`permanent_address`,`department_id`,`designation_id`,`employee_type_id`,`joining_date`,`release_date`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,NULL,NULL,'South city Hospital','423423423','SA-0001','42342-3423423-4','4234-4234234',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:20:34','2022-08-19 09:20:34',NULL),
(2,NULL,NULL,'rwerwe','rwer','SA-00002','32312-3123123-1','____-3123123',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:34:10','2022-08-19 09:34:10',NULL),
(3,NULL,NULL,'rwer','rewr','SA-00003','__423-4______-_','____-____432',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:34:31','2022-08-19 09:34:31',NULL),
(4,NULL,NULL,'rwerw','ree','SA-00004','4234_-_______-_','____-423____',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:34:51','2022-08-19 09:34:51',NULL),
(5,NULL,NULL,'rewt','5345','SA-00005','5345_-_______-_','___5-345____',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 09:37:29','2022-08-19 09:37:29',NULL),
(6,NULL,NULL,'Roshan','Lakhani','SA-00006','43223-4______-_','____-423423_',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:10:03','2022-08-19 10:10:03',NULL),
(7,NULL,NULL,'Roshan Lakhani','rewe','SA-00007','23423-4______-_','2342-3______',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:10:35','2022-08-19 10:10:35',NULL),
(8,NULL,NULL,'rwewe','rwerwe','SA-00008','42353-4______-_','____-_53543_',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:11:07','2022-08-19 10:11:07',NULL),
(9,NULL,NULL,'423423','423','SA-00009','42342-3______-_','____-423____',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:11:31','2022-08-19 10:11:31',NULL);

/*Table structure for table `failed_jobs` */

DROP TABLE IF EXISTS `failed_jobs`;

CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `failed_jobs` */

/*Table structure for table `general_assets` */

DROP TABLE IF EXISTS `general_assets`;

CREATE TABLE `general_assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `asset_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_entry` date DEFAULT NULL,
  `date_of_purchased` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit_price` double(12,2) DEFAULT 0.00,
  `total_amount` double(12,2) DEFAULT 0.00,
  `advanced` double(12,2) DEFAULT 0.00,
  `balanced` double(12,2) DEFAULT 0.00,
  `upload_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `general_assets` */

insert  into `general_assets`(`id`,`asset_picture`,`name`,`date_of_entry`,`date_of_purchased`,`description`,`purchased_from`,`purchased_for`,`supplier_name`,`contact_number`,`email`,`invoice_number`,`quantity`,`unit_price`,`total_amount`,`advanced`,`balanced`,`upload_bill`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(2,'1660968857266952.png','office chair','2022-08-10','2022-08-15','office chair','Lakhani','ahmed','ahmed khan','4234-2342343','rosharnrwerwe@gmail.com','2',432,23.00,3500.00,0.00,0.00,'1660968857588624.png',0,'2022-08-20 04:14:17','2022-08-20 04:14:17',NULL),
(3,'1661218879320374.png','rwe','2022-06-21','2022-08-23','rwe','ew','rwe','324','3242-3423423','qwerqeqw@gmail.com','4324',43,32.00,5000.00,0.00,0.00,'1661218879969345.png',0,'2022-08-23 01:41:19','2022-08-23 01:41:19',NULL),
(4,'1661218959486822.png','werwerwerwe','2022-08-23','2022-08-23','werwerw','rerwr','rewrwe','ewrwe','4234-324____','roshan@gmail.com','42',43,43.00,800.00,0.00,0.00,'1661218959488805.png',0,'2022-08-23 01:42:39','2022-08-23 01:42:39',NULL),
(5,'1661224763379172.png','Chair','2022-08-23','2022-08-23','chair','Lakhani','ahmed','ahmed khan','1321-3213213','roshan@gmail.com','23',232,13.00,4000.00,0.00,0.00,'1661224763724123.png',0,'2022-08-23 03:19:23','2022-08-23 03:19:23',NULL);

/*Table structure for table `inventory_materials` */

DROP TABLE IF EXISTS `inventory_materials`;

CREATE TABLE `inventory_materials` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT 0,
  `asset_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_of_purchased` date NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit_price` double(12,2) NOT NULL DEFAULT 0.00,
  `total_amount` double(12,2) NOT NULL DEFAULT 0.00,
  `advanced` double(12,2) NOT NULL DEFAULT 0.00,
  `balanced` double(12,2) NOT NULL DEFAULT 0.00,
  `purchased_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `upload_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `inventory_materials` */

insert  into `inventory_materials`(`id`,`project_id`,`asset_picture`,`name`,`date_of_purchased`,`description`,`quantity`,`unit_price`,`total_amount`,`advanced`,`balanced`,`purchased_from`,`supplier_name`,`contact_number`,`upload_bill`,`created_at`,`updated_at`,`deleted_at`) values 
(2,1,'1660927358635319.png','ABC inventory','2022-08-18','ABC inventory',24,3.00,4000.00,0.00,0.00,'443','43','0321-3213213','1660927358567590.png','2022-08-19 16:42:38','2022-08-19 16:42:38',NULL),
(3,1,'1661220793449762.png','ABC','2022-08-23','abc',23,1221.00,600.00,0.00,0.00,'Lakhani','ahmed khan','____-______3','1661220793558442.png','2022-08-23 02:13:13','2022-08-23 02:13:13',NULL),
(4,1,'1661224903365220.png','wood material','2022-08-23','wood material',43,12.00,3500.00,0.00,0.00,'Lakhani','ahmed khan','3123-1231212','1661224903707340.png','2022-08-23 03:21:43','2022-08-23 03:21:43',NULL);

/*Table structure for table `jv_projects` */

DROP TABLE IF EXISTS `jv_projects`;

CREATE TABLE `jv_projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT 0,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `jv_projects` */

/*Table structure for table `jv_projects_bk` */

DROP TABLE IF EXISTS `jv_projects_bk`;

CREATE TABLE `jv_projects_bk` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jv_projects_bk` */

/*Table structure for table `ledger_balance_histories` */

DROP TABLE IF EXISTS `ledger_balance_histories`;

CREATE TABLE `ledger_balance_histories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_type` enum('assets','liabilities') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` enum('dr','cr') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit` double(15,2) DEFAULT 0.00,
  `withdraw` double(15,2) DEFAULT 0.00,
  `current_balance` double(15,2) DEFAULT 0.00,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `ledger_balance_histories` */

insert  into `ledger_balance_histories`(`id`,`description`,`account_number`,`entry_type`,`payment_type`,`reference`,`deposit`,`withdraw`,`current_balance`,`date`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Roshan','SA-AC-000004 1',NULL,'cr',NULL,0.00,0.00,20000.00,'2022-08-22','2022-08-22 16:15:35','2022-08-22 16:15:35',NULL),
(2,'rwe','SA-AC-000001',NULL,'dr',NULL,0.00,5000.00,-5000.00,'2022-08-23',NULL,NULL,NULL),
(3,'werwerwerwe','SA-AC-000001',NULL,'dr',NULL,0.00,800.00,-5800.00,'2022-08-23',NULL,NULL,NULL),
(4,'car','SA-AC-000001',NULL,'dr',NULL,0.00,3500.00,-9300.00,'2022-08-23',NULL,NULL,NULL),
(5,'Water Plant','SA-AC-000004 2',NULL,'cr',NULL,0.00,0.00,40000.00,'2022-08-23','2022-08-23 01:59:19','2022-08-23 01:59:19',NULL),
(6,'ABC','SA-AC-000001',NULL,'dr',NULL,0.00,600.00,-9900.00,'2022-08-23',NULL,NULL,NULL),
(7,'AA Associates  12341','SA-AC-000001',NULL,'cr',NULL,100.00,0.00,-9800.00,'2022-08-23',NULL,NULL,NULL),
(8,'AA Associates  2323','SA-AC-000001',NULL,'cr',NULL,500.00,0.00,-9300.00,'2022-08-23',NULL,NULL,NULL),
(9,'AA Associates  Samsung','SA-AC-000001',NULL,'cr',NULL,600.00,0.00,-8700.00,'2022-08-23',NULL,NULL,NULL),
(10,'AA Associates  Vivo','SA-AC-000001',NULL,'cr',NULL,300.00,0.00,-8400.00,'2022-08-23',NULL,NULL,NULL),
(11,'Account Title roshan  Account No# 42525','SA-AC-000004 2',NULL,'dr',NULL,0.00,2500.00,37500.00,'2022-08-23',NULL,NULL,NULL),
(12,'Account Title roshan  Account No# 42525','SA-AC-000001',NULL,'cr',NULL,2500.00,0.00,-5900.00,'2022-08-23',NULL,NULL,NULL),
(13,'Chair','SA-AC-000001',NULL,'dr',NULL,0.00,4000.00,-9900.00,'2022-08-23',NULL,NULL,NULL),
(14,'byke','SA-AC-000001',NULL,'dr',NULL,0.00,6500.00,-16400.00,'2022-08-23',NULL,NULL,NULL),
(15,'wood material','SA-AC-000001',NULL,'dr',NULL,0.00,3500.00,-19900.00,'2022-08-23',NULL,NULL,NULL),
(16,'AA Associates  Samsung','SA-AC-000001',NULL,'dr',NULL,0.00,5400.00,-25300.00,'2022-08-23',NULL,NULL,NULL),
(17,'AA Associates  ABC Sale Good','SA-AC-000001',NULL,'cr',NULL,700.00,0.00,-24600.00,'2022-08-23',NULL,NULL,NULL),
(18,'Account Title roshan  Account No# 53454534','SA-AC-000004 2',NULL,'dr',NULL,0.00,4500.00,33000.00,'2022-08-23',NULL,NULL,NULL),
(19,'Account Title roshan  Account No# 53454534','SA-AC-000001',NULL,'cr',NULL,4500.00,0.00,-20100.00,'2022-08-23',NULL,NULL,NULL);

/*Table structure for table `migrations` */

DROP TABLE IF EXISTS `migrations`;

CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `migrations` */

insert  into `migrations`(`id`,`migration`,`batch`) values 
(1,'2014_10_12_000000_create_users_table',1),
(2,'2014_10_12_100000_create_password_resets_table',1),
(3,'2019_08_19_000000_create_failed_jobs_table',1),
(4,'2019_12_14_000001_create_personal_access_tokens_table',1),
(5,'2022_06_15_185750_create_departments_table',1),
(6,'2022_06_15_185830_create_designations_table',1),
(7,'2022_06_15_185853_create_employee_types_table',1),
(8,'2022_06_15_185909_create_banks_table',1),
(9,'2022_06_15_190012_create_company_types_table',1),
(10,'2022_06_15_190108_create_company_categories_table',1),
(11,'2022_06_15_190227_create_company_contact_people_table',1),
(12,'2022_06_15_190310_create_project_categories_table',1),
(13,'2022_06_15_190340_create_project_types_table',1),
(14,'2022_06_15_190410_create_project_project_managers_table',1),
(15,'2022_06_15_190812_create_project_architect_designers_table',1),
(16,'2022_06_15_190833_create_project_team_leaders_table',1),
(17,'2022_06_15_190849_create_project_statuses_table',1),
(18,'2022_06_15_191047_create_employees_table',1),
(19,'2022_06_15_191103_create_companies_table',1),
(20,'2022_06_15_191118_create_projects_table',1),
(21,'2022_06_15_195941_create_employee_references_table',1),
(22,'2022_06_15_195959_create_employee_bank_accounts_table',1),
(23,'2022_06_16_033235_create_company_contact_person_information_table',1),
(24,'2022_06_16_071235_create_project_clients_table',1),
(25,'2022_06_16_071320_create_project_counsultants_table',1),
(26,'2022_06_16_071406_create_project_information_table',1),
(27,'2022_06_16_071504_create_project_assign_contractors_table',1),
(28,'2022_06_16_071526_create_project_documents_table',1),
(29,'2022_06_17_155931_create_project_assign_contractor_names_table',1),
(30,'2022_06_17_160145_create_project_assign_jobs_table',1),
(31,'2022_06_23_162523_create_general_assets_table',1),
(32,'2022_06_23_162645_create_vehicle_assets_table',1),
(33,'2022_06_23_162731_create_inventory_materials_table',1),
(34,'2022_07_25_064255_create_jv_projects_table',2),
(35,'2022_07_27_125257_create_purchase_invoices_table',2),
(36,'2022_07_27_133806_create_purchase_invoice_items_table',2),
(37,'2022_07_28_034319_create_sales_invoices_table',3),
(38,'2022_07_28_034457_create_sales_invoice_items_table',3);

/*Table structure for table `password_resets` */

DROP TABLE IF EXISTS `password_resets`;

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `password_resets` */

/*Table structure for table `personal_access_tokens` */

DROP TABLE IF EXISTS `personal_access_tokens`;

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `personal_access_tokens` */

/*Table structure for table `project_architect_designers` */

DROP TABLE IF EXISTS `project_architect_designers`;

CREATE TABLE `project_architect_designers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_architect_designers` */

/*Table structure for table `project_assign_contractor_names` */

DROP TABLE IF EXISTS `project_assign_contractor_names`;

CREATE TABLE `project_assign_contractor_names` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_assign_contractor_names` */

/*Table structure for table `project_assign_contractors` */

DROP TABLE IF EXISTS `project_assign_contractors`;

CREATE TABLE `project_assign_contractors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `project_contractor_id` int(11) NOT NULL DEFAULT 0,
  `project_assign_job_id` int(11) NOT NULL DEFAULT 0,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_assign_contractors` */

/*Table structure for table `project_assign_jobs` */

DROP TABLE IF EXISTS `project_assign_jobs`;

CREATE TABLE `project_assign_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_assign_jobs` */

/*Table structure for table `project_boqs` */

DROP TABLE IF EXISTS `project_boqs`;

CREATE TABLE `project_boqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_boqs` */

insert  into `project_boqs`(`id`,`project_id`,`documents`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'1660945427145601.pdf','2022-08-19 21:43:47','2022-08-19 21:43:47',NULL),
(2,1,'1660945427476012.pdf','2022-08-19 21:43:47','2022-08-19 21:43:47',NULL);

/*Table structure for table `project_categories` */

DROP TABLE IF EXISTS `project_categories`;

CREATE TABLE `project_categories` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_categories` */

insert  into `project_categories`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Government',1,NULL,NULL,NULL),
(2,'Semi Government',1,NULL,NULL,NULL),
(3,'Private',1,NULL,NULL,NULL);

/*Table structure for table `project_clients` */

DROP TABLE IF EXISTS `project_clients`;

CREATE TABLE `project_clients` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cnic_photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agreement_copy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_clients` */

insert  into `project_clients`(`id`,`project_id`,`name`,`contact_number`,`email`,`cnic_photo`,`agreement_copy`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,NULL,NULL,NULL,NULL,'2022-08-19 08:28:21','2022-08-19 08:28:21',NULL),
(2,2,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:12:23','2022-08-19 10:12:23',NULL),
(3,3,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:13:47','2022-08-19 10:13:47',NULL),
(4,4,NULL,NULL,NULL,NULL,NULL,'2022-08-19 10:14:32','2022-08-19 10:14:32',NULL),
(5,5,NULL,NULL,NULL,NULL,NULL,'2022-08-19 11:04:14','2022-08-19 11:04:14',NULL),
(6,6,NULL,NULL,NULL,NULL,NULL,'2022-08-19 11:07:04','2022-08-19 11:07:04',NULL),
(7,7,NULL,NULL,NULL,NULL,NULL,'2022-08-19 11:10:48','2022-08-19 11:10:48',NULL),
(8,8,NULL,NULL,NULL,NULL,NULL,'2022-08-19 16:05:34','2022-08-19 16:05:34',NULL),
(9,1,NULL,NULL,NULL,NULL,NULL,'2022-08-19 16:10:05','2022-08-19 16:10:05',NULL),
(10,1,NULL,NULL,NULL,NULL,NULL,'2022-08-19 16:31:06','2022-08-19 16:31:06',NULL),
(11,2,NULL,NULL,NULL,NULL,NULL,'2022-08-20 03:35:17','2022-08-20 03:35:17',NULL),
(12,3,NULL,NULL,NULL,NULL,NULL,'2022-08-22 06:55:46','2022-08-22 06:55:46',NULL),
(13,4,NULL,NULL,NULL,NULL,NULL,'2022-08-22 08:37:56','2022-08-22 08:37:56',NULL),
(14,5,NULL,NULL,NULL,NULL,NULL,'2022-08-22 16:15:35','2022-08-22 16:15:35',NULL),
(15,1,NULL,NULL,NULL,NULL,NULL,'2022-08-23 01:59:19','2022-08-23 01:59:19',NULL);

/*Table structure for table `project_counsultants` */

DROP TABLE IF EXISTS `project_counsultants`;

CREATE TABLE `project_counsultants` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_counsultants` */

insert  into `project_counsultants`(`id`,`project_id`,`name`,`contact_number`,`email`,`address`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,NULL,NULL,NULL,'2022-08-19 08:28:21','2022-08-19 08:28:21',NULL),
(2,2,NULL,NULL,NULL,NULL,'2022-08-19 10:12:23','2022-08-19 10:12:23',NULL),
(3,3,NULL,NULL,NULL,NULL,'2022-08-19 10:13:47','2022-08-19 10:13:47',NULL),
(4,4,NULL,NULL,NULL,NULL,'2022-08-19 10:14:32','2022-08-19 10:14:32',NULL),
(5,5,NULL,NULL,NULL,NULL,'2022-08-19 11:04:14','2022-08-19 11:04:14',NULL),
(6,6,NULL,NULL,NULL,NULL,'2022-08-19 11:07:04','2022-08-19 11:07:04',NULL),
(7,7,NULL,NULL,NULL,NULL,'2022-08-19 11:10:48','2022-08-19 11:10:48',NULL),
(8,8,NULL,NULL,NULL,NULL,'2022-08-19 16:05:34','2022-08-19 16:05:34',NULL),
(9,1,NULL,NULL,NULL,NULL,'2022-08-19 16:10:05','2022-08-19 16:10:05',NULL),
(10,1,NULL,NULL,NULL,NULL,'2022-08-19 16:31:06','2022-08-19 16:31:06',NULL),
(11,2,NULL,NULL,NULL,NULL,'2022-08-20 03:35:17','2022-08-20 03:35:17',NULL),
(12,3,NULL,NULL,NULL,NULL,'2022-08-22 06:55:46','2022-08-22 06:55:46',NULL),
(13,4,NULL,NULL,NULL,NULL,'2022-08-22 08:37:56','2022-08-22 08:37:56',NULL),
(14,5,NULL,NULL,NULL,NULL,'2022-08-22 16:15:35','2022-08-22 16:15:35',NULL),
(15,1,NULL,NULL,NULL,NULL,'2022-08-23 01:59:19','2022-08-23 01:59:19',NULL);

/*Table structure for table `project_documents` */

DROP TABLE IF EXISTS `project_documents`;

CREATE TABLE `project_documents` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `documents` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_documents` */

/*Table structure for table `project_information` */

DROP TABLE IF EXISTS `project_information`;

CREATE TABLE `project_information` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `project_manager_id` int(11) DEFAULT 0,
  `project_architect_designer_id` int(11) DEFAULT 0,
  `project_team_leader_id` int(11) DEFAULT 0,
  `project_instruction` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_status_id` int(11) DEFAULT 0,
  `project_progress` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_information` */

insert  into `project_information`(`id`,`project_id`,`project_manager_id`,`project_architect_designer_id`,`project_team_leader_id`,`project_instruction`,`project_status_id`,`project_progress`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 08:28:21','2022-08-19 08:28:21',NULL),
(2,2,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:12:23','2022-08-19 10:12:23',NULL),
(3,3,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:13:47','2022-08-19 10:13:47',NULL),
(4,4,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 10:14:32','2022-08-19 10:14:32',NULL),
(5,5,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 11:04:14','2022-08-19 11:04:14',NULL),
(6,6,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 11:07:04','2022-08-19 11:07:04',NULL),
(7,7,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 11:10:48','2022-08-19 11:10:48',NULL),
(8,8,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 16:05:34','2022-08-19 16:05:34',NULL),
(9,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 16:10:05','2022-08-19 16:10:05',NULL),
(10,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-19 16:31:06','2022-08-19 16:31:06',NULL),
(11,2,NULL,NULL,NULL,NULL,NULL,0,'2022-08-20 03:35:17','2022-08-20 03:35:17',NULL),
(12,3,NULL,NULL,NULL,NULL,NULL,0,'2022-08-22 06:55:46','2022-08-22 06:55:46',NULL),
(13,4,NULL,NULL,NULL,NULL,NULL,0,'2022-08-22 08:37:56','2022-08-22 08:37:56',NULL),
(14,5,NULL,NULL,NULL,NULL,NULL,0,'2022-08-22 16:15:35','2022-08-22 16:15:35',NULL),
(15,1,NULL,NULL,NULL,NULL,NULL,0,'2022-08-23 01:59:19','2022-08-23 01:59:19',NULL);

/*Table structure for table `project_payments` */

DROP TABLE IF EXISTS `project_payments`;

CREATE TABLE `project_payments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int(11) NOT NULL DEFAULT 0,
  `payment_type` enum('check','cash') COLLATE utf8mb4_unicode_ci DEFAULT 'check',
  `sender_title` varchar(234) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_account` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sender_amount` double(10,2) DEFAULT 0.00,
  `receipt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_payments` */

insert  into `project_payments`(`id`,`project_id`,`payment_type`,`sender_title`,`sender_account`,`sender_amount`,`receipt`,`date`,`created_at`,`updated_at`,`deleted_at`) values 
(1,2,'check','Roshan Kumar','423423423423',3000.00,NULL,'2022-08-20','2022-08-20 03:36:17','2022-08-20 03:36:17',NULL),
(2,2,'cash','Jawaid','878675676',4500.00,NULL,'2022-08-20','2022-08-20 03:42:38','2022-08-20 03:42:38',NULL),
(3,2,'check','roshan','2324324',2500.00,NULL,'2022-08-20','2022-08-20 04:16:11','2022-08-20 04:16:11',NULL),
(4,3,'check','roshan','2324324',5000.00,NULL,'2022-08-22','2022-08-22 06:56:03','2022-08-22 06:56:03',NULL),
(5,4,'check','roshan','2324324',3000.00,NULL,'2022-08-22','2022-08-22 08:38:46','2022-08-22 08:38:46',NULL),
(6,1,'check','roshan','42525',2500.00,NULL,'2022-08-23','2022-08-23 02:55:46','2022-08-23 02:55:46',NULL),
(7,1,'check','roshan','53454534',4500.00,NULL,'2022-08-23','2022-08-23 03:30:01','2022-08-23 03:30:01',NULL);

/*Table structure for table `project_project_managers` */

DROP TABLE IF EXISTS `project_project_managers`;

CREATE TABLE `project_project_managers` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_project_managers` */

/*Table structure for table `project_statuses` */

DROP TABLE IF EXISTS `project_statuses`;

CREATE TABLE `project_statuses` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `progress` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_statuses` */

insert  into `project_statuses`(`id`,`title`,`progress`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'On Hold',0,NULL,NULL,NULL),
(2,'Designing',20,NULL,NULL,NULL),
(3,'Diging',40,NULL,NULL,NULL),
(4,'Structure',60,NULL,NULL,NULL),
(5,'Finishing',80,NULL,NULL,NULL),
(6,'Success',100,NULL,NULL,NULL);

/*Table structure for table `project_team_leaders` */

DROP TABLE IF EXISTS `project_team_leaders`;

CREATE TABLE `project_team_leaders` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_team_leaders` */

/*Table structure for table `project_types` */

DROP TABLE IF EXISTS `project_types`;

CREATE TABLE `project_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `project_types` */

insert  into `project_types`(`id`,`title`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Home',1,NULL,NULL,NULL),
(2,'Bungalow',1,NULL,NULL,NULL),
(3,'Apartment',1,NULL,NULL,NULL),
(4,'Res/Comm Building',1,NULL,NULL,NULL),
(5,'Office',1,NULL,NULL,NULL),
(6,'Villa',1,NULL,NULL,NULL),
(7,'Road',1,NULL,NULL,NULL);

/*Table structure for table `projects` */

DROP TABLE IF EXISTS `projects`;

CREATE TABLE `projects` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project_type_id` int(11) DEFAULT 0,
  `project_category_id` int(11) DEFAULT 0,
  `project_details` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_budget` double(12,2) DEFAULT 0.00,
  `total_amount_spent` double(12,2) DEFAULT 0.00,
  `start_date` date DEFAULT NULL,
  `completion_date` date DEFAULT NULL,
  `company_website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `boq` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `projects` */

insert  into `projects`(`id`,`name`,`project_type_id`,`project_category_id`,`project_details`,`project_address`,`estimated_budget`,`total_amount_spent`,`start_date`,`completion_date`,`company_website`,`boq`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'Water Plant',0,2,'water plant','DHA City',40000.00,NULL,NULL,NULL,NULL,NULL,'2022-08-23 01:59:19','2022-08-23 01:59:19',NULL);

/*Table structure for table `purchase_invoice_items` */

DROP TABLE IF EXISTS `purchase_invoice_items`;

CREATE TABLE `purchase_invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `purchase_invoice_id` int(11) DEFAULT 0,
  `item_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `rate` double(12,2) NOT NULL DEFAULT 0.00,
  `amount` double(12,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchase_invoice_items` */

insert  into `purchase_invoice_items`(`id`,`purchase_invoice_id`,`item_description`,`quantity`,`rate`,`amount`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'Samsung',33,23.00,759.00,'2022-08-20 07:28:21','2022-08-20 07:28:21',NULL),
(2,2,'Samsung',1340,4.00,5360.00,'2022-08-23 03:22:50','2022-08-23 03:22:50',NULL);

/*Table structure for table `purchase_invoices` */

DROP TABLE IF EXISTS `purchase_invoices`;

CREATE TABLE `purchase_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT 0,
  `invoice_date` date DEFAULT NULL,
  `total_amount` double(12,2) DEFAULT 0.00,
  `tax` double(12,2) DEFAULT 0.00,
  `gross_total` double(12,2) DEFAULT 0.00,
  `upload_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `purchase_invoices` */

insert  into `purchase_invoices`(`id`,`invoice_number`,`company_id`,`invoice_date`,`total_amount`,`tax`,`gross_total`,`upload_bill`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'SA-PURCHASE-000001',5,'2022-08-16',800.00,41.00,759.00,NULL,'2022-08-20 07:28:21','2022-08-20 07:28:21',NULL),
(2,'SA-PURCHASE-000002',1,'2022-08-23',5400.00,40.00,5360.00,NULL,'2022-08-23 03:22:50','2022-08-23 03:22:50',NULL);

/*Table structure for table `sales_invoice_items` */

DROP TABLE IF EXISTS `sales_invoice_items`;

CREATE TABLE `sales_invoice_items` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sale_invoice_id` int(11) DEFAULT 0,
  `item_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `rate` double(12,2) DEFAULT 0.00,
  `amount` double(12,2) DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sales_invoice_items` */

insert  into `sales_invoice_items`(`id`,`sale_invoice_id`,`item_description`,`quantity`,`rate`,`amount`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'Vivo',23,23.00,529.00,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(2,2,'12341',23,4.00,92.00,'2022-08-23 02:38:56','2022-08-23 02:38:56',NULL),
(3,3,'2323',123,4.00,492.00,'2022-08-23 02:42:48','2022-08-23 02:42:48',NULL),
(4,4,'Samsung',134,4.00,536.00,'2022-08-23 02:47:29','2022-08-23 02:47:29',NULL),
(5,5,'Vivo',2,124.00,248.00,'2022-08-23 02:50:12','2022-08-23 02:50:12',NULL),
(6,6,'ABC Sale Good',250,2.00,500.00,'2022-08-23 03:27:06','2022-08-23 03:27:06',NULL);

/*Table structure for table `sales_invoices` */

DROP TABLE IF EXISTS `sales_invoices`;

CREATE TABLE `sales_invoices` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_id` int(11) DEFAULT 0,
  `invoice_date` date DEFAULT NULL,
  `total_amount` double(12,2) DEFAULT 0.00,
  `tax` double(12,2) DEFAULT 0.00,
  `gross_total` double(12,2) DEFAULT 0.00,
  `upload_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `sales_invoices` */

insert  into `sales_invoices`(`id`,`invoice_number`,`company_id`,`invoice_date`,`total_amount`,`tax`,`gross_total`,`upload_bill`,`created_at`,`updated_at`,`deleted_at`) values 
(1,'SA-SALE-000001',5,'2022-08-17',600.00,71.00,529.00,NULL,'2022-08-20 07:29:02','2022-08-20 07:29:02',NULL),
(2,'SA-SALE-000002',1,'2022-12-31',100.00,8.00,92.00,NULL,'2022-08-23 02:38:56','2022-08-23 02:38:56',NULL),
(3,'SA-SALE-000003',1,'2022-08-23',500.00,8.00,492.00,NULL,'2022-08-23 02:42:48','2022-08-23 02:42:48',NULL),
(4,'SA-SALE-000004',1,'2022-08-23',600.00,64.00,536.00,NULL,'2022-08-23 02:47:29','2022-08-23 02:47:29',NULL),
(5,'SA-SALE-000005',1,'2022-08-23',300.00,52.00,248.00,NULL,'2022-08-23 02:50:12','2022-08-23 02:50:12',NULL),
(6,'SA-SALE-000006',1,'2022-08-23',700.00,200.00,500.00,NULL,'2022-08-23 03:27:06','2022-08-23 03:27:06',NULL);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `role_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `users` */

insert  into `users`(`id`,`role_id`,`name`,`email`,`email_verified_at`,`password`,`remember_token`,`token`,`status`,`created_at`,`updated_at`,`deleted_at`) values 
(1,1,'Administrator','admin@admin.com',NULL,'$2y$10$NLCZQaoQ3.3vWQrj3gBnn.3ZwQIDZZMOmWrwIpDhMQ05legMReqfS',NULL,'8811459','1','2022-06-29 19:20:00','2022-08-03 12:13:35',NULL);

/*Table structure for table `vehicle_assets` */

DROP TABLE IF EXISTS `vehicle_assets`;

CREATE TABLE `vehicle_assets` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `asset_picture` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `condition` enum('new','old') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `date_of_entry` date DEFAULT NULL,
  `date_of_purchased` date DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased_from` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchased_for` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(11) DEFAULT 0,
  `unit_price` double(12,2) NOT NULL DEFAULT 0.00,
  `total_amount` double(12,2) NOT NULL DEFAULT 0.00,
  `advanced` double(12,2) NOT NULL DEFAULT 0.00,
  `balanced` double(12,2) NOT NULL DEFAULT 0.00,
  `upload_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `vehicle_assets` */

insert  into `vehicle_assets`(`id`,`name`,`asset_picture`,`condition`,`date_of_entry`,`date_of_purchased`,`description`,`vehicle_number`,`vehicle_model`,`purchased_from`,`purchased_for`,`supplier_name`,`contact_number`,`email`,`invoice_number`,`quantity`,`unit_price`,`total_amount`,`advanced`,`balanced`,`upload_bill`,`created_at`,`updated_at`,`deleted_at`) values 
(6,'motor cycle','1660927195306015.png','old','2022-08-03','2022-08-02','motor cycle','432','423','423','423','423','4234-234____','qwe4234rqeqw@gmail.com','43',43,43.00,5000.00,0.00,0.00,'1660927195944938.png','2022-08-19 16:39:55','2022-08-19 16:39:55',NULL),
(7,'car','1661219112567884.png','old','2022-08-23','2022-08-23','car','234','43','23','23','23','2323-2______','roshan@gmail.com','23',23,23.00,3500.00,0.00,0.00,'1661219112259994.png','2022-08-23 01:45:12','2022-08-23 01:45:12',NULL),
(8,'byke','1661224824412999.png','old','2022-08-23','2022-08-23','byke','23','43','Lakhani','ahmed','ahmed khan','2312-3131231','qwerqeqw@gmail.com','23',23,23.00,6500.00,0.00,0.00,'1661224824990826.png','2022-08-23 03:20:24','2022-08-23 03:20:24',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
