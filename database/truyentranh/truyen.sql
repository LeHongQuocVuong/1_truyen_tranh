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

-- Dumping structure for table truyentranh.truyen
CREATE TABLE IF NOT EXISTS `truyen` (
  `truyen_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `truyen_ma` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `truyen_ten` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_hinhdaidien` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_loai` tinyint(4) NOT NULL DEFAULT '0',
  `truyen_theloai` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `truyen_tacgia` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `truyen_mota_ngan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `truyen_ngaydang` datetime NOT NULL,
  PRIMARY KEY (`truyen_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table truyentranh.truyen: ~3 rows (approximately)
/*!40000 ALTER TABLE `truyen` DISABLE KEYS */;
INSERT INTO `truyen` (`truyen_id`, `truyen_ma`, `truyen_ten`, `truyen_hinhdaidien`, `truyen_loai`, `truyen_theloai`, `truyen_tacgia`, `truyen_mota_ngan`, `truyen_ngaydang`) VALUES
	(1, 'THGH', 'Tiếu ngạo giang hồ', 'tngh.jpg', 1, 'kiếm hiệp', 'Kim Dung', 'TNGH của Kim Dung', '2020-12-30 00:00:00'),
	(2, 'DOREMON', 'Doremon dài tập', 'doremon.jpg', 2, 'thiếu nhi', 'Fujico', 'Doremon', '2020-12-30 17:45:34'),
	(3, 'Conan', 'Conan', 'conan.jpg', 2, 'trinh thám', 'abc abc', 'Conan', '2020-12-30 17:46:25');
/*!40000 ALTER TABLE `truyen` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
