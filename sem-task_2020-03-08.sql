# ************************************************************
# Sequel Pro SQL dump
# Version 4541
#
# http://www.sequelpro.com/
# https://github.com/sequelpro/sequelpro
#
# Host: 127.0.0.1 (MySQL 5.7.29)
# Database: sem-task
# Generation Time: 2020-03-08 14:22:00 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table brands
# ------------------------------------------------------------

DROP TABLE IF EXISTS `brands`;

CREATE TABLE `brands` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `brands` WRITE;
/*!40000 ALTER TABLE `brands` DISABLE KEYS */;

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`)
VALUES
	(1,'BMW','2020-03-07 15:59:00',NULL),
	(2,'FORD','2020-03-07 16:00:00',NULL);

/*!40000 ALTER TABLE `brands` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table cars
# ------------------------------------------------------------

DROP TABLE IF EXISTS `cars`;

CREATE TABLE `cars` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `brand_id` int(11) DEFAULT NULL,
  `model` varchar(30) DEFAULT NULL,
  `transmission_type` varchar(20) DEFAULT NULL,
  `ext_color` varchar(20) DEFAULT NULL,
  `int_color` varchar(20) DEFAULT NULL,
  `year` int(11) DEFAULT NULL,
  `price` double(10,4) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES `cars` WRITE;
/*!40000 ALTER TABLE `cars` DISABLE KEYS */;

INSERT INTO `cars` (`id`, `brand_id`, `model`, `transmission_type`, `ext_color`, `int_color`, `year`, `price`, `contact`)
VALUES
	(3,2,'Explorer','Automatic','Silver','Beige',2016,13.9500,'(855)371-2378'),
	(4,2,'Expedition XLT','Automatic','White','Gray',2007,7.9500,'(855)552-1182'),
	(5,2,'Excursion Eddie Bauer','Automatic','White','Beige',2005,23.2900,'(855)432-1232'),
	(6,2,'Fiesta ST','Automatic','Orange','Black',2018,13.7700,'(855)323-5609'),
	(7,2,'Explorer Sport','Automatic','White','Black',2018,25.4900,'(855)233-8101'),
	(8,2,'Flex SEL','Automatic','Blue','Black',2016,17.4700,'(855)544-2133'),
	(9,2,'Transit Connect Titanium','Automatic','Blue','Other',2014,14.5800,'(855)234-2265'),
	(10,2,'Focus SE','Unknown','Gray','Black',2014,8.9900,'(888)897-7695'),
	(11,2,'GT Base','Manual','White','Black',2006,339.8800,'(830)234-1298'),
	(12,2,'Transit-150 Base','Automatic','White','Other',2018,18.8900,'(830)765-0987'),
	(13,2,'Fusion Energi Platinum','CVT','Silver','Beige',2017,17.5000,'(830)232-1453'),
	(14,2,'Focus ST Base','Manual','Blue','Gray',2016,13.4500,'(830)323-1166'),
	(15,2,'EcoSport Titanium','Automatic','Black','Black',2018,15.8800,'(888)987-0109'),
	(16,2,'Transit-350 XLT','Automatic','White','Gray',2018,26.8800,'(335)177-8652'),
	(17,2,'Focus RS Base','Manual','Gray','Black',2017,23.4900,'(888)980-0908'),
	(18,2,'F-150 XL','Automatic','Black','Other',2019,31.8500,'(830)765-2345'),
	(19,2,'Focus ST Base','Manual','Black','Black',2018,16.9900,'(888)762-5466'),
	(20,2,'Sedan Police Interceptor Base','Automatic','White','Black',2013,9.9900,'(330)768-9876'),
	(21,2,'Fiesta S Sedan 4D','Automanual','Other','Other',2018,5.5000,'(345)345-7645'),
	(22,2,'Edge Limited','Automatic','Other','Other',2010,3.9000,'(888)871-6526'),
	(23,2,'Sedan Police Interceptor Base','Automatic','Other','Other',2013,6.9900,'(850)654-0193'),
	(24,2,'Focus ST Base','Manual','Black','Black',2018,16.9900,'(888)762-5466'),
	(25,2,'Focus Escape SE','Automatic','Silver','Gray',2019,13.8950,'(888)543-2344'),
	(26,2,'Transit-150 Base','Automatic','White','Silver',2016,14.9000,'(804)098-8777'),
	(27,2,'E250 Cargo','Automatic','White','Gray',2010,9.9990,'(821)021-0108'),
	(28,2,'Escape S','Automatic','White','Other',2017,9.5990,'(850)343-9485'),
	(29,2,'F-250 XL','Automatic','Blue','Gray',2017,34.8510,'(351)061-6710'),
	(30,2,'E350 Super Duty XLT Wagon','Automatic','White','Gray',2001,3.9950,'(301)801-7020'),
	(31,2,'Fusion Energi Titanium','CVT','Gray','Black',2019,18.8920,'(345)789-1213'),
	(32,2,'Shelby GT350 Base','Automatic','Gray','Black',2017,42.9950,'(651)887-2617'),
	(33,2,'C-Max Energi SEL','CVT','Gray','Black',2015,11.4890,'(888)677-2291'),
	(34,2,'Focus RS Base','Manual','Blue','Black',2017,25.6580,'(920)781-1155'),
	(35,2,'Transit-150 Base','Automatic','White','Gray',2019,13.8950,'(866)455-8299'),
	(36,2,'Shelby GT350 Base','Manual','Blue','Black',2017,41.9910,'(724)678-1001'),
	(37,2,'Thunderbird Deluxe','Automatic','Yellow','Yellow',2002,4.7950,'(671)222-7856'),
	(38,2,'Focus SE','Automatic','White','Black',2014,5.9990,'(620)872-1293'),
	(39,2,'Focus RS Base','Manual','Gray','Black',2017,32.9990,'(520)876-1929'),
	(40,2,'Excursion Limited','Automatic','Black','Other',2004,5.9830,'(624)620-1109'),
	(41,2,'Explorer Sport Trac Limited','Automatic','Other','Beige',2008,9.7950,'(521)701-1029'),
	(42,2,'Explorer Sport Trac Limited','Automatic','Black','Other',2008,15.9950,'(631)334-4671'),
	(43,2,'Crown Viktoria LX','Automatic','Green','Beige',2002,3.9950,'(765)099-8276'),
	(44,2,'Transit-150 Base','Automatic','White','Gray',2016,16.4900,'(855)873-1020'),
	(45,2,'Expedition Max Limited','Automatic','Black','Black',2018,34.4920,'(801)871-3485'),
	(46,2,'Flex SEL','Automatic','Blue','Black',2016,17.4690,'(719)991-2844'),
	(47,2,'Excursion Limited','Automatic','Green','Other',2000,6.8490,'(720)680-6601'),
	(48,2,'Fusion SE','Automatic','Red','Beige',2013,6.9000,'(253)331-9100'),
	(49,2,'Transit Connect Titanium','Automatic','Blue','Other',2014,14.5800,'(866)671-8266'),
	(50,2,'Expedition EL Limited','Automatic','Black','Beige',2017,25.9500,'(402)401-2290'),
	(51,2,'Flex Limited','Automatic','Gray','Black',2017,16.9950,'(888)764-4981'),
	(52,2,'Excursion Limited','Automatic','Beige','Beige',2004,15.9940,'(515)672-1321'),
	(53,1,'Z3 2.3 Roadster','Manual','Gray','Black',2000,6.5000,'(402)872-2233'),
	(54,1,'740i','Automatic','Gray','Black',2020,93.9450,'(520)770-7021'),
	(55,1,'330i','Automatic','Blue','Black',2019,46.5450,'(888)167-2988'),
	(56,1,'M240 i','Automatic','Blue','Black',2017,25.2790,'(888)091-0988'),
	(57,1,'440 Gran Coupe i xDrive','Automatic','Black','Black',2018,32.3890,'(888)117-4712'),
	(58,1,'340 i xDrive','Automatic','White','Red',2017,25.4950,'(888)717-3161'),
	(59,1,'740 i','Automatic','Gray','Black',2019,39.9920,'(515)922-3617'),
	(60,1,'M4 Base','Automatic','White','Black',2019,45.9920,'(815)701-6001'),
	(61,1,'335 i','Manual','Black','Black',2009,6.5000,'(719)529-3369'),
	(62,1,'i3 94 Ah','Automatic','Gray','Gray',2017,17.6910,'(888)822-3161'),
	(63,1,'x7 xDrive40i','Automatic','Black','Beige',2019,74.9950,'(888)009-8166'),
	(64,1,'650 Gran Coupe i xDrive','Automatic','White','Black',2013,24.9980,'(720)451-6723'),
	(65,1,'X5 M Base ','Automatic','Gray','Black',2017,54.9990,'(877)889-1713'),
	(66,1,'528 i xDrive','Automatic','Gray','Black',2012,11.9990,'(740)133-8277'),
	(67,1,'750 Li xDrive','Automatic','Black','Black',2012,12.9990,'(630)441-4173'),
	(68,1,'X5 xDrive35i','Automatic','Black','Black',2017,32.9990,'(253)216-7199'),
	(69,1,'X5 M Base','Automatic','Black','Black',2016,51.9680,'(210)221-2199'),
	(70,1,'Z4 sDrive30i','Automatic','White','Black',2011,11.9000,'(512)544-9299'),
	(71,1,'850 i','Automatic','Silver','Other',1991,22.9900,'(713)876-6812'),
	(72,1,'Z3 2.8 Roadster','Manual','Black','Beige',1997,8.9000,'Private Seller'),
	(73,1,'650 i xDrive','Automatic','White','Brown',2017,57.9900,'(888)552-7164'),
	(74,1,'ALPINA B6 Gran Coupe Base','Automatic','Black','Black',2015,39.9950,'(401)871-7816'),
	(75,1,'Z3 Roadster','Manual','Blue','Beige',1996,8.5000,'(630)267-9182'),
	(76,1,'M850 i xDrive','Automatic','Blue','White',2019,93.0000,'(888)819-2912'),
	(77,1,'ALPINA B7 LWB','Automatic','White','Black',2013,36.7770,'(527)183-1254'),
	(78,1,'745 Li','Automatic','White','Black',2004,7.4950,'(510)726-9188'),
	(79,1,'i8 Base','Automatic','White','Brown',2015,62.8000,'(630)223-9912'),
	(80,1,'i8 Base','Automatic','White','White',2016,66.8810,'(521)373-9182'),
	(81,1,'Z3 2.8 Roadster','Automatic','Silver','Black',1998,11.9990,'(651)933-7593'),
	(82,1,'750 i','Automatic','Black','Black',2008,8.4950,'(615)274-1826'),
	(83,1,'135 i ','Manual','Black','Black',2012,19.9000,'(616)351-2846'),
	(84,1,'440 i xDrive','Automatic','Black','Beige',2018,26.9950,'(859)918-2649'),
	(85,1,'X2 sDrive28i','Automatic','Gray','Black',2018,22.9990,'(762)927-3854'),
	(86,1,'X7 xDrive40i','Automatic','Gray','White',2019,66.9000,'(420)182-9182'),
	(87,1,'Z3 2.5i Roadster','Manual','Gray','Black',2001,7.5000,'(420)512-9095'),
	(88,1,'740 i','Automatic','Silver','Brown',2012,14.5950,'(866)261-9182'),
	(89,1,'Z4 sDrive35i','Automatic','Blue','White',2009,18.5950,'(455)124-5477'),
	(90,1,'650 i','Automatic','Blue','Beige',2010,16.8800,'(904)127-8355'),
	(91,1,'i8 Base','Automatic','White','Gray',2016,66.9500,'(703)182-8274'),
	(92,1,'330i','Automatic','Gray','Beige',2019,45.3950,'(888)718-3354'),
	(93,1,'640 Gran Coupe i','Automatic','Black','Black',2013,22.9950,'(524)128-4523'),
	(94,1,'330i','Automatic','Black','Black',2019,47.1250,'(321)444-6567'),
	(95,1,'640 i','Automatic','Black','Black',2015,24.6190,'(322)331-2355'),
	(96,1,'ALPINA B7 xDrive','Automatic','White','Beige',2017,65.9950,'(661)294-9188'),
	(97,1,'M850 i xDrive','Automatic','White','Beige',2019,79.8000,'(908)235-1255'),
	(98,1,'M850 i xDrive','Automatic','Blue','Black',2019,81.5000,'(914)234-5144'),
	(99,1,'Z3 Roadster','Manual','Black','Brown',1996,3.8950,'(335)123-7634'),
	(100,1,'i3 Base','Automatic','White','Black',2014,14.9000,'(808)273-4188'),
	(101,1,'X7 xDrive40i','Automatic','Gray','Black',2019,69.4950,'(781)274-1928'),
	(102,1,'i8 Base','Automatic','Silver','Gray',2016,62.9000,'(987)274-1233');

/*!40000 ALTER TABLE `cars` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
