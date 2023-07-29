-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.27-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for laravelcrud
CREATE DATABASE IF NOT EXISTS `laravelcrud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `laravelcrud`;

-- Dumping structure for table laravelcrud.employees
CREATE TABLE IF NOT EXISTS `employees` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) NOT NULL,
  `jabatan` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `alamat` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=204 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.employees: ~196 rows (approximately)
INSERT INTO `employees` (`id`, `nama`, `jabatan`, `jenis_kelamin`, `alamat`, `created_at`, `updated_at`) VALUES
	(7, 'James Kim Edit', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-29 01:31:06'),
	(8, 'Olivia Chen', 'Fullstack', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(9, 'Robert Gupta', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(10, 'Emma Rodriguez', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(11, 'Daniel Tan', 'Fullstack', 'Laki-laki', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(12, 'Ava Liu', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(13, 'David Hernandez', 'Web Dev', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(14, 'Mia Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(15, 'Joseph Kim', 'Backend', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(16, 'Sofia Park', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(17, 'Thomas Kim', 'Mobile Dev', 'Laki-laki', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(18, 'Isabella Wong', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(19, 'Liam Chen', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(20, 'Amelia Tan', 'Backend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(21, 'Benjamin Nguyen', 'Frontend', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(22, 'Evelyn Kim', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(23, 'Lucas Wang', 'Web Dev', 'Laki-laki', 'Medan', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(24, 'Harper Lee', 'Fullstack', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(25, 'Alexander Hernandez', 'Backend', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(26, 'Abigail Smith', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(27, 'Daniel Nguyen', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(28, 'Madison Kim', 'Mobile Dev', 'Perempuan', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(29, 'Josephine Wang', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(30, 'Henry Tan', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(31, 'Charlotte Kim', 'Backend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(32, 'Matthew Park', 'Frontend', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(33, 'Ella Nguyen', 'Mobile Dev', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(34, 'Michaela Wong', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(35, 'Lucas Hernandez', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(36, 'Aria Lee', 'Backend', 'Perempuan', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(37, 'Daniel Kim', 'Frontend', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(38, 'Avery Tan', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(39, 'Benjamin Wang', 'Web Dev', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(40, 'Sophie Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(41, 'Emma Kim', 'Backend', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(42, 'Jackson Park', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(43, 'Samantha Tan', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(44, 'James Hernandez', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(45, 'Lily Chen', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(46, 'Lucas Lee', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(48, 'Aiden Wang', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(49, 'Mila Kim', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(50, 'Alexander Tan', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(51, 'Luna Smith', 'Backend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(52, 'Oliver Park', 'Frontend', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(53, 'Scarlett Hernandez', 'Mobile Dev', 'Perempuan', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(54, 'Avery Lee', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(55, 'Ella Kim', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(56, 'Elijah Nguyen', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(57, 'Eva Wang', 'Frontend', 'Perempuan', 'Yogyakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(58, 'Mason Park', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(59, 'Abigail Tan', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(60, 'Ethan Kim', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(61, 'Aria Hernandez', 'Backend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(62, 'Emily Lee', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(63, 'Carter Nguyen', 'Mobile Dev', 'Laki-laki', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(64, 'Elizabeth Wang', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(65, 'Sebastian Tan', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(66, 'Addison Kim', 'Backend', 'Perempuan', 'Semarang', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(67, 'Grace Park', 'Frontend', 'Perempuan', 'Bandung', '2023-07-28 09:31:24', '2023-07-28 09:31:24'),
	(68, 'Henry Hernandez', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(69, 'Evelyn Nguyen', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(70, 'Eli Lee', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(71, 'Aria Kim', 'Backend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(72, 'Amelia Park', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(73, 'Gabriel Tan', 'Mobile Dev', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(74, 'Scarlett Hernandez', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(75, 'Avery Lee', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(76, 'Chloe Nguyen', 'Backend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(77, 'Eli Wang', 'Frontend', 'Laki-laki', 'Medan', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(78, 'Grace Kim', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(79, 'Oliver Park', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(80, 'Charlotte Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(81, 'Daniel Kim', 'Backend', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(82, 'Lily Park', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(83, 'Ella Tan', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(84, 'Noah Hernandez', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(85, 'Evelyn Lee', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(86, 'Elijah Nguyen', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(87, 'Eva Wang', 'Frontend', 'Perempuan', 'Yogyakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(88, 'Mason Park', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(89, 'Abigail Tan', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(90, 'Ethan Kim', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(91, 'Aria Hernandez', 'Backend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(92, 'Emily Lee', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(93, 'Carter Nguyen', 'Mobile Dev', 'Laki-laki', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(94, 'Elizabeth Wang', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(95, 'Sebastian Tan', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(96, 'Addison Kim', 'Backend', 'Perempuan', 'Semarang', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(97, 'Sophia Tan', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(98, 'Daniel Kim', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(99, 'Isabella Lee', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(100, 'Aiden Nguyen', 'Mobile Dev', 'Laki-laki', 'Yogyakarta', '2023-07-28 09:31:25', '2023-07-28 09:31:25'),
	(101, 'TEST add', 'Front End', 'Laki-laki', 'Jakarta', '2023-07-29 00:55:01', '2023-07-29 00:55:01'),
	(102, 'TEST ADD', 'Front End', 'Laki-laki', 'Jl. bukit duri utara no.23 , tebet, jakarta selatan', '2023-07-29 01:03:34', '2023-07-29 01:03:34'),
	(103, 'Test ADD 2', 'Front End', 'Laki-laki', 'Jakarta', '2023-07-29 01:29:28', '2023-07-29 01:29:28'),
	(104, 'John Doe', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(105, 'Jane Smith', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(106, 'Michael Brown', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(107, 'Emily Johnson', 'Backend', 'Perempuan', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(108, 'William Lee', 'Fullstack', 'Laki-laki', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(109, 'Sophia Wang', 'Frontend', 'Perempuan', 'Medan', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(110, 'James Kim', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(111, 'Olivia Chen', 'Fullstack', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(112, 'Robert Gupta', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(113, 'Emma Rodriguez', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(114, 'Daniel Tan', 'Fullstack', 'Laki-laki', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(115, 'Ava Liu', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(116, 'David Hernandez', 'Web Dev', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(117, 'Mia Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(118, 'Joseph Kim', 'Backend', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(119, 'Sofia Park', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(120, 'Thomas Kim', 'Mobile Dev', 'Laki-laki', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(121, 'Isabella Wong', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(122, 'Liam Chen', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(123, 'Amelia Tan', 'Backend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(124, 'Benjamin Nguyen', 'Frontend', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(125, 'Evelyn Kim', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(126, 'Lucas Wang', 'Web Dev', 'Laki-laki', 'Medan', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(127, 'Harper Lee', 'Fullstack', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(128, 'Alexander Hernandez', 'Backend', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(129, 'Abigail Smith', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(130, 'Daniel Nguyen', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(131, 'Madison Kim', 'Mobile Dev', 'Perempuan', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(132, 'Josephine Wang', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(133, 'Henry Tan', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(134, 'Charlotte Kim', 'Backend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(135, 'Matthew Park', 'Frontend', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(136, 'Ella Nguyen', 'Mobile Dev', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(137, 'Michaela Wong', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(138, 'Lucas Hernandez', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(139, 'Aria Lee', 'Backend', 'Perempuan', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(140, 'Daniel Kim', 'Frontend', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(141, 'Avery Tan', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(142, 'Benjamin Wang', 'Web Dev', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(143, 'Sophie Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(144, 'Emma Kim', 'Backend', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(145, 'Jackson Park', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(146, 'Samantha Tan', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(147, 'James Hernandez', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(148, 'Lily Chen', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(149, 'Lucas Lee', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(150, 'Chloe Nguyen', 'Frontend', 'Perempuan', 'Medan', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(151, 'Aiden Wang', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(152, 'Mila Kim', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(153, 'Alexander Tan', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(154, 'Luna Smith', 'Backend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(155, 'Oliver Park', 'Frontend', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(156, 'Scarlett Hernandez', 'Mobile Dev', 'Perempuan', 'Semarang', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(157, 'Avery Lee', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(158, 'Ella Kim', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(159, 'Elijah Nguyen', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(160, 'Eva Wang', 'Frontend', 'Perempuan', 'Yogyakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(161, 'Mason Park', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(162, 'Abigail Tan', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:21', '2023-07-29 01:31:21'),
	(163, 'Ethan Kim', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(164, 'Aria Hernandez', 'Backend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(165, 'Emily Lee', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(166, 'Carter Nguyen', 'Mobile Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(167, 'Elizabeth Wang', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(168, 'Sebastian Tan', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(169, 'Addison Kim', 'Backend', 'Perempuan', 'Semarang', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(170, 'Grace Park', 'Frontend', 'Perempuan', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(171, 'Henry Hernandez', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(172, 'Evelyn Nguyen', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(173, 'Eli Lee', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(174, 'Aria Kim', 'Backend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(175, 'Amelia Park', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(176, 'Gabriel Tan', 'Mobile Dev', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(177, 'Scarlett Hernandez', 'Web Dev', 'Perempuan', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(178, 'Avery Lee', 'Fullstack', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(179, 'Chloe Nguyen', 'Backend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(180, 'Eli Wang', 'Frontend', 'Laki-laki', 'Medan', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(181, 'Grace Kim', 'Mobile Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(182, 'Oliver Park', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(183, 'Charlotte Nguyen', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(184, 'Daniel Kim', 'Backend', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(185, 'Lily Park', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(186, 'Ella Tan', 'Mobile Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(187, 'Noah Hernandez', 'Web Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(188, 'Evelyn Lee', 'Fullstack', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(189, 'Elijah Nguyen', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(190, 'Eva Wang', 'Frontend', 'Perempuan', 'Yogyakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(191, 'Mason Park', 'Mobile Dev', 'Laki-laki', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(192, 'Abigail Tan', 'Web Dev', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(193, 'Ethan Kim', 'Fullstack', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(194, 'Aria Hernandez', 'Backend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(195, 'Emily Lee', 'Frontend', 'Perempuan', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(196, 'Carter Nguyen', 'Mobile Dev', 'Laki-laki', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(197, 'Elizabeth Wang', 'Web Dev', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(198, 'Sebastian Tan', 'Fullstack', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(199, 'Addison Kim', 'Backend', 'Perempuan', 'Semarang', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(200, 'Sophia Tan', 'Frontend', 'Perempuan', 'Surabaya', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(201, 'Daniel Kim', 'Backend', 'Laki-laki', 'Jakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(202, 'Isabella Lee', 'Fullstack', 'Perempuan', 'Bandung', '2023-07-29 01:31:22', '2023-07-29 01:31:22'),
	(203, 'Aiden Nguyen', 'Mobile Dev', 'Laki-laki', 'Yogyakarta', '2023-07-29 01:31:22', '2023-07-29 01:31:22');

-- Dumping structure for table laravelcrud.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table laravelcrud.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.migrations: ~5 rows (approximately)
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(5, '2023_07_28_145942_create_employees_table', 1);

-- Dumping structure for table laravelcrud.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.password_reset_tokens: ~0 rows (approximately)

-- Dumping structure for table laravelcrud.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table laravelcrud.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table laravelcrud.users: ~0 rows (approximately)

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
