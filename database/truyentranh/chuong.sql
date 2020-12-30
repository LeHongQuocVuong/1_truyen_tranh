-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.1.29-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table truyentranh.chuong
CREATE TABLE IF NOT EXISTS `chuong` (
  `chuong_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `chuong_so` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `chuong_ten` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `chuong_noidung` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_id` int(11) unsigned NOT NULL,
  PRIMARY KEY (`chuong_id`),
  KEY `FK_chuong_truyen` (`truyen_id`),
  CONSTRAINT `FK_chuong_truyen` FOREIGN KEY (`truyen_id`) REFERENCES `truyen` (`truyen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table truyentranh.chuong: ~2 rows (approximately)
/*!40000 ALTER TABLE `chuong` DISABLE KEYS */;
INSERT INTO `chuong` (`chuong_id`, `chuong_so`, `chuong_ten`, `chuong_noidung`, `truyen_id`) VALUES
	(1, '1', 'Mở đầu', 'asdfsdaf asdfsdafasa fasdf', 1),
	(4, '2', 'Chương 1', 'asdfsadf ádfsdaf', 1),
	(5, '3', 'Chương 2', 'asdfsdaf asdfas dfasdf', 1),
	(6, '1', 'Mở đầu', 'asdfasdf sadfasdfsad ', 2),
	(8, '2', 'Chương 1', 'asdfsdaf asdf ádfasdf', 2);
/*!40000 ALTER TABLE `chuong` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
