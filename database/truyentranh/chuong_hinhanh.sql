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

-- Dumping structure for table truyentranh.chuong_hinhanh
CREATE TABLE IF NOT EXISTS `chuong_hinhanh` (
  `chuong_hinhanh_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `chuong_id` int(11) unsigned NOT NULL,
  `chuong_hinhanh_tenhinh` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`chuong_hinhanh_id`),
  KEY `FK_chuong_hinhanh_chuong` (`chuong_id`),
  CONSTRAINT `FK_chuong_hinhanh_chuong` FOREIGN KEY (`chuong_id`) REFERENCES `chuong` (`chuong_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table truyentranh.chuong_hinhanh: ~0 rows (approximately)
/*!40000 ALTER TABLE `chuong_hinhanh` DISABLE KEYS */;
INSERT INTO `chuong_hinhanh` (`chuong_hinhanh_id`, `chuong_id`, `chuong_hinhanh_tenhinh`) VALUES
	(1, 4, 'truyentranh/TNGH/abc.jpg'),
	(2, 4, 'truyentranh/TNGH/abc.jpg'),
	(3, 4, 'truyentranh/TNGH/abc.jpg'),
	(4, 6, 'truyentranh/Doremon/abc.jpg'),
	(5, 6, 'truyentranh/Doremon/abc.jpg');
/*!40000 ALTER TABLE `chuong_hinhanh` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
