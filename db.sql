-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.24-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             12.0.0.6468
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table fs_laravel_be_bwa.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
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

-- Dumping data for table fs_laravel_be_bwa.failed_jobs: ~0 rows (approximately)

-- Dumping structure for table fs_laravel_be_bwa.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.migrations: ~7 rows (approximately)
INSERT IGNORE INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(66, '2014_10_12_000000_create_users_table', 1),
	(67, '2014_10_12_100000_create_password_resets_table', 1),
	(68, '2019_08_19_000000_create_failed_jobs_table', 1),
	(69, '2019_12_14_000001_create_personal_access_tokens_table', 1),
	(70, '2022_05_21_152416_create_products_table', 1),
	(71, '2022_05_21_153242_create_transactions_table', 1),
	(72, '2022_05_21_153739_create_products_galleries_table', 1);

-- Dumping structure for table fs_laravel_be_bwa.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.password_resets: ~0 rows (approximately)

-- Dumping structure for table fs_laravel_be_bwa.personal_access_tokens
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.personal_access_tokens: ~0 rows (approximately)

-- Dumping structure for table fs_laravel_be_bwa.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.products: ~4 rows (approximately)
INSERT IGNORE INTO `products` (`id`, `name`, `slug`, `type`, `description`, `price`, `quantity`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'Celana Dalam1', 'celana-dalam1', 'celana-bagus1', '<p>sss1</p>', 1112, 107, NULL, '2022-05-24 07:18:46', '2022-06-18 01:36:30'),
	(2, 'Baju Lebaran', 'baju-lebaran', 'baju', '<p>Ini adalah deskripsi</p>', 1000, 100, '2022-05-24 08:46:04', '2022-05-24 07:23:54', '2022-05-24 08:46:04'),
	(3, 'Fadilah Riczky', 'fadilah-riczky', 'sss', '<p>111</p>', 1000, 11, '2022-05-24 08:49:11', '2022-05-24 08:43:18', '2022-05-24 08:49:11'),
	(4, 'Baju Lebaran', 'baju-lebaran', 'Baju', '<p>Baju lebaran cocok untuk ke gereja</p>', 200000, 98, NULL, '2022-05-27 03:12:58', '2022-06-18 01:36:30');

-- Dumping structure for table fs_laravel_be_bwa.product_galleries
CREATE TABLE IF NOT EXISTS `product_galleries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `products_id` int(11) NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.product_galleries: ~8 rows (approximately)
INSERT IGNORE INTO `product_galleries` (`id`, `products_id`, `photo`, `is_default`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 2, 'assets/product/D4fxDncb6gfVud7sIVaSwAcFqgLxGh1KVIrgLOPw.png', 1, '2022-05-24 15:48:32', '2022-05-24 08:19:17', '2022-05-24 08:19:17'),
	(2, 2, 'assets/product/zpn6Zb7XMc841vLw8XlfWP3r7RKr92mX2jqgS76L.jpg', 0, '2022-05-24 08:26:09', '2022-05-24 08:21:11', '2022-05-24 08:26:09'),
	(3, 2, 'assets/product/iEjAk4hosxD7sSSiycnZka7YFfYcv0J56pbq0knd.png', 0, '2022-05-24 15:48:33', '2022-05-24 08:42:23', '2022-05-24 08:42:23'),
	(4, 3, 'assets/product/67wqYUP5UA4zLC5lZE22cpinmc8fgF1CvWEdaQge.jpg', 1, '2022-05-24 15:48:34', '2022-05-24 08:48:09', '2022-05-24 08:48:09'),
	(5, 3, 'assets/product/mCKxlh0WuY2p6j1S9oBRnTl48rOaLYanlWqrKiPy.jpg', 1, '2022-05-24 08:49:11', '2022-05-24 08:48:51', '2022-05-24 08:49:11'),
	(6, 3, 'assets/product/SzWdfK6xuJiN677sltNbImiv1qDs9vPSx8C8n6o2.png', 0, '2022-05-24 08:49:11', '2022-05-24 08:49:07', '2022-05-24 08:49:11'),
	(7, 4, 'assets/product/cKE5S340G1INp3v9zXl67R3Y18tXMdRmUsYOCU4e.jpg', 1, NULL, '2022-05-27 03:13:23', '2022-05-27 03:13:23'),
	(8, 4, 'assets/product/1YZPNDXgNbMcLbCKmjLRm0zqRLl3sbPE5rRZQCg2.jpg', 0, NULL, '2022-05-27 03:13:40', '2022-05-27 03:13:40');

-- Dumping structure for table fs_laravel_be_bwa.transactions
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_total` int(11) NOT NULL,
  `transaction_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.transactions: ~7 rows (approximately)
INSERT IGNORE INTO `transactions` (`id`, `uuid`, `name`, `email`, `number`, `address`, `transaction_total`, `transaction_status`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 'TRX0001', 'Fadilah Riczky1', 'friczky@gmail.com1', '0000088881', '<p>jogja1</p>', 100, 'SUCCESS', NULL, '2022-06-05 09:00:10', '2022-06-17 06:37:44'),
	(2, 'TRX94804358', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-17 23:38:13', '2022-06-17 23:38:13'),
	(3, 'TRX33286831', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-17 23:38:32', '2022-06-17 23:38:32'),
	(4, 'TRX72459933', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-17 23:39:37', '2022-06-17 23:39:37'),
	(5, 'TRX78088940', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-17 23:40:39', '2022-06-17 23:40:39'),
	(6, 'TRX94399557', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-18 01:06:48', '2022-06-18 01:06:48'),
	(7, 'TRX28848511', 'Kamu Monyet', 'haha@gmail.com', '000000099999', 'Pondok Gede', 10, 'PENDING', NULL, '2022-06-18 01:36:30', '2022-06-18 01:36:30');

-- Dumping structure for table fs_laravel_be_bwa.transaction_details
CREATE TABLE IF NOT EXISTS `transaction_details` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `transaction_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.transaction_details: ~6 rows (approximately)
INSERT IGNORE INTO `transaction_details` (`id`, `transaction_id`, `products_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 4, NULL, '2022-06-05 08:59:59', '2022-06-05 09:00:01'),
	(2, 4, 1, NULL, '2022-06-17 23:39:37', '2022-06-17 23:39:37'),
	(3, 5, 1, NULL, '2022-06-17 23:40:39', '2022-06-17 23:40:39'),
	(4, 6, 1, NULL, '2022-06-18 01:06:48', '2022-06-18 01:06:48'),
	(5, 7, 1, NULL, '2022-06-18 01:36:30', '2022-06-18 01:36:30'),
	(6, 7, 4, NULL, '2022-06-18 01:36:30', '2022-06-18 01:36:30');

-- Dumping structure for table fs_laravel_be_bwa.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table fs_laravel_be_bwa.users: ~1 rows (approximately)
INSERT IGNORE INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Fadilah Riczky', 'friczky@gmail.com', NULL, '$2y$10$JoTzPt/F6JaXEoGaH13bEeXst6cKKlLmUyw/NBcim597OnXbnzGi2', NULL, '2022-05-24 07:52:00', '2022-05-24 07:52:00');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
