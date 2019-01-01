-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.2.3-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table bread.activations
CREATE TABLE IF NOT EXISTS `activations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.activations: ~13 rows (approximately)
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
	(1, 1, 'wHcbkzpgQja5OoOyaapsDyNRlv10t6Nj', 1, '2018-03-07 07:25:12', '2018-03-07 07:25:12', '2018-03-07 07:25:12'),
	(2, 3, 'UYnsGxKvlbmbZNpc8afbOk4wO8S1g7SN', 1, '2018-03-08 05:56:21', '2018-03-08 05:56:21', '2018-03-08 05:56:21'),
	(3, 4, '2Xm4TE2tW0IRxzmeiB7SRd0Tsy6Aek9f', 1, '2018-03-08 06:32:39', '2018-03-08 06:32:39', '2018-03-08 06:32:39'),
	(4, 5, 'Yn6J67Rk1ysH9EuVFBSTfKnR75jBXGba', 1, '2018-03-09 07:13:22', '2018-03-09 07:13:22', '2018-03-09 07:13:22'),
	(5, 6, 'A3JwyeQFeUXIAGbLHuOP3gZzesZ3ZtqA', 1, '2018-03-10 11:36:28', '2018-03-10 11:36:28', '2018-03-10 11:36:28'),
	(6, 7, 'b4cuI5cJNgXwFDhMieQ6oqRcYjplK20Z', 1, '2018-04-20 15:18:35', '2018-04-20 15:18:35', '2018-04-20 15:18:35'),
	(7, 8, 'bEMgYunFQTpTmia6AJYviTjU0l7XL6jY', 1, '2018-05-15 06:11:28', '2018-05-15 06:11:28', '2018-05-15 06:11:28'),
	(8, 9, 'ZyRaJY22OdmjqfBdsPvNnqwRjMHlzg9J', 1, '2018-11-04 07:14:25', '2018-11-04 07:14:25', '2018-11-04 07:14:25'),
	(9, 10, 'p5GCy4YGkLFwVj4h3rDin7k9QjatbXLE', 1, '2018-11-04 07:19:02', '2018-11-04 07:19:02', '2018-11-04 07:19:02'),
	(10, 11, 'rKZCJgBp04Osost780mBjaHm4Ud4BJNp', 1, '2018-11-04 07:19:58', '2018-11-04 07:19:58', '2018-11-04 07:19:58'),
	(11, 12, 'dqJJnd8tAtkQQYpEieTOIQzLicpXbB5n', 1, '2018-11-04 07:21:55', '2018-11-04 07:21:55', '2018-11-04 07:21:55'),
	(12, 13, 'oLMAs9C6vSNWr7VRdLS1cEtSr0J3guf2', 1, '2018-11-04 07:44:29', '2018-11-04 07:44:29', '2018-11-04 07:44:29'),
	(13, 14, 'ZxrYYFl6pwrgBriPC43CILygAlbuKGte', 1, '2018-11-04 07:56:18', '2018-11-04 07:56:18', '2018-11-04 07:56:18'),
	(14, 15, 'HR9stsk6VNLwmanBqYbWaq5KskjOOJB0', 1, '2018-12-05 15:24:00', '2018-12-05 15:24:00', '2018-12-05 15:24:00');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;

-- Dumping structure for table bread.addresses
CREATE TABLE IF NOT EXISTS `addresses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `area_id` int(10) unsigned NOT NULL,
  `block` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `road_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `house_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.addresses: ~0 rows (approximately)
/*!40000 ALTER TABLE `addresses` DISABLE KEYS */;
INSERT INTO `addresses` (`id`, `branch_id`, `area_id`, `block`, `road_no`, `house_no`, `house_name`, `floor`, `created_at`, `updated_at`) VALUES
	(1, NULL, 1, NULL, NULL, '78', 'Rose', '6', '2018-10-24 11:08:02', '2018-10-24 11:08:02');
/*!40000 ALTER TABLE `addresses` ENABLE KEYS */;

-- Dumping structure for table bread.areas
CREATE TABLE IF NOT EXISTS `areas` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `district_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `areas_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.areas: ~0 rows (approximately)
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
INSERT INTO `areas` (`id`, `district_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 1, 'Mohakhali', 'mohakhali', '2018-10-24 11:03:43', '2018-10-24 11:03:43');
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;

-- Dumping structure for table bread.branches
CREATE TABLE IF NOT EXISTS `branches` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `area_id` int(10) unsigned NOT NULL,
  `address_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `branches_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.branches: ~0 rows (approximately)
/*!40000 ALTER TABLE `branches` DISABLE KEYS */;
/*!40000 ALTER TABLE `branches` ENABLE KEYS */;

-- Dumping structure for table bread.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `department_id` int(10) unsigned NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categories_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.categories: ~0 rows (approximately)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `branch_id`, `department_id`, `name`, `slug`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(1, NULL, 4, 'Bread', 'bread', 'images/Category/1540379670.jpg', '2018-10-24 11:14:30', '2018-10-24 11:14:30');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Dumping structure for table bread.departments
CREATE TABLE IF NOT EXISTS `departments` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `departments_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.departments: ~2 rows (approximately)
/*!40000 ALTER TABLE `departments` DISABLE KEYS */;
INSERT INTO `departments` (`id`, `branch_id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'Grochary', 'grochary', '2018-03-06 09:19:22', '2018-03-06 09:19:22'),
	(3, NULL, 'Asset', 'asset', '2018-07-25 10:23:44', '2018-07-25 10:23:44'),
	(4, NULL, 'Foods', 'foods', '2018-10-24 11:13:31', '2018-10-24 11:13:31');
/*!40000 ALTER TABLE `departments` ENABLE KEYS */;

-- Dumping structure for table bread.districts
CREATE TABLE IF NOT EXISTS `districts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `districts_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.districts: ~2 rows (approximately)
/*!40000 ALTER TABLE `districts` DISABLE KEYS */;
INSERT INTO `districts` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Dhaka', 'dhaka', '2018-03-06 09:15:50', '2018-07-25 06:22:29'),
	(3, 'Barisal', 'barisal', '2018-07-25 06:25:17', '2018-07-25 06:25:17');
/*!40000 ALTER TABLE `districts` ENABLE KEYS */;

-- Dumping structure for table bread.expenses
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(8,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.expenses: ~3 rows (approximately)
/*!40000 ALTER TABLE `expenses` DISABLE KEYS */;
INSERT INTO `expenses` (`id`, `user_id`, `title`, `description`, `amount`, `created_at`, `updated_at`) VALUES
	(1, 3, 'tea', 'For Five Persons', 50, '2018-03-08 08:50:12', '2018-03-08 08:50:12'),
	(2, 3, 'transport', 'Barisal To Dhaka', 5000, '2018-03-08 09:09:08', '2018-03-08 09:09:08'),
	(3, 6, 'tea', 'For 3 Persons', 40, '2018-05-15 05:51:24', '2018-05-15 05:51:24');
/*!40000 ALTER TABLE `expenses` ENABLE KEYS */;

-- Dumping structure for table bread.gifts
CREATE TABLE IF NOT EXISTS `gifts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` decimal(6,0) NOT NULL,
  `thumbnail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `gifts_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.gifts: ~6 rows (approximately)
/*!40000 ALTER TABLE `gifts` DISABLE KEYS */;
INSERT INTO `gifts` (`id`, `name`, `slug`, `points`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(1, 'Pen', 'pen', 5, 'images/Gifts/1531633585.jpg', '2018-03-06 10:21:42', '2018-07-15 05:46:33'),
	(2, 'Hand Wash', 'hand-wash', 20, 'images/Gifts/1531633506.png', '2018-03-09 05:47:58', '2018-07-15 05:45:11'),
	(3, 'Mobile', 'mobile', 5000, 'images/Gifts/1531633524.jpg', '2018-03-09 05:48:12', '2018-07-15 05:45:29'),
	(4, 'Bi cycle', 'bi-cycle', 3000, 'images/Gifts/1531633483.jpg', '2018-03-09 05:48:32', '2018-07-15 05:44:50'),
	(5, 'Android tv', 'android-tv', 4000, 'images/Gifts/1531389449.png', '2018-03-09 05:48:47', '2018-07-12 10:20:41'),
	(7, 'School Bag', 'school-bag', 500, 'images/Gifts/1531388069.jpg', '2018-07-12 09:34:29', '2018-07-12 10:20:21');
/*!40000 ALTER TABLE `gifts` ENABLE KEYS */;

-- Dumping structure for table bread.images
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `imageable_id` int(10) unsigned DEFAULT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `src` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `images_src_unique` (`src`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.images: ~9 rows (approximately)
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
INSERT INTO `images` (`id`, `imageable_id`, `imageable_type`, `type`, `status`, `src`, `created_at`, `updated_at`) VALUES
	(1, 1, 'category', 'Thumbnail', 1, 'images/Category/1540379670.jpg', '2018-10-24 11:14:30', '2018-10-24 11:14:30'),
	(2, 1, 'product', 'Thumbnail', 1, 'images/products/1540379773.jpg', '2018-10-24 11:16:13', '2018-10-24 11:16:13'),
	(3, 1, 'product', 'Details', 1, 'images/products/1540380245.jpg', '2018-10-24 11:24:05', '2018-10-24 11:24:05'),
	(4, 1, 'product', 'Details', 1, 'images/products/1540381043.jpg', '2018-10-24 11:37:23', '2018-10-24 11:37:23'),
	(6, NULL, '', 'main-slider', 1, 'images/site/1540446595.jpg', '2018-10-25 05:49:55', '2018-11-26 17:38:39'),
	(7, NULL, NULL, 'main-slider', 1, 'images/site/1542613847.jpg', '2018-11-19 13:50:47', '2018-11-26 17:38:42'),
	(8, NULL, NULL, 'main-slider', 1, 'images/site/1543146878.jpg', '2018-11-25 17:54:38', '2018-11-26 17:40:31'),
	(9, NULL, NULL, 'main-slider', 0, 'images/site/1543146900.jpg', '2018-11-25 17:55:00', '2018-11-26 17:38:50'),
	(10, NULL, NULL, 'main-slider', 0, 'images/site/1543147046.jpg', '2018-11-25 17:57:26', '2018-11-26 17:38:52');
/*!40000 ALTER TABLE `images` ENABLE KEYS */;

-- Dumping structure for table bread.image_details
CREATE TABLE IF NOT EXISTS `image_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `image_id` int(10) unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.image_details: ~2 rows (approximately)
/*!40000 ALTER TABLE `image_details` DISABLE KEYS */;
INSERT INTO `image_details` (`id`, `image_id`, `title`, `body`, `created_at`, `updated_at`) VALUES
	(1, 6, 'Hello', 'Test 2', '2018-11-26 17:04:34', '2018-11-26 17:33:02'),
	(2, 7, 'Another Test', 'Description 2', '2018-11-26 17:34:09', '2018-11-26 17:34:15');
/*!40000 ALTER TABLE `image_details` ENABLE KEYS */;

-- Dumping structure for table bread.inquiries
CREATE TABLE IF NOT EXISTS `inquiries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.inquiries: ~4 rows (approximately)
/*!40000 ALTER TABLE `inquiries` DISABLE KEYS */;
INSERT INTO `inquiries` (`id`, `name`, `email`, `subject`, `message`, `read_at`, `created_at`, `updated_at`) VALUES
	(1, 'Neher', 'neher@eclsystem.com', 'Test', 'Test message', '2018-11-08 13:43:15', '2018-11-08 06:39:17', '2018-11-08 13:43:15'),
	(2, 'Neher', 'neher@eclsystem.com', 'Test2', 'Test message', '2018-11-08 13:43:20', '2018-11-08 06:39:17', '2018-11-08 13:43:20'),
	(3, 'Shreshtha', 'shreshtha@gmail.com', 'Another Test', 'Hello ...', '2018-11-08 13:43:08', '2018-11-08 13:26:48', '2018-11-08 13:43:08'),
	(4, 'Shreshtha', 'shreshtha@gmail.com', 'Another Test2', 'Hello Bread', '2018-11-19 12:33:57', '2018-11-08 14:17:02', '2018-11-19 12:33:57'),
	(5, 'Jhon', 'jhon@gmail.com', 'I want to be your patner', 'Hello Neher. I want to be your partner in your business.', NULL, '2018-11-19 10:24:44', '2018-11-19 10:24:44');
/*!40000 ALTER TABLE `inquiries` ENABLE KEYS */;

-- Dumping structure for table bread.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.migrations: ~21 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_07_02_230147_migration_cartalyst_sentinel', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_02_18_072039_create_departments_table', 1),
	(4, '2018_02_18_072233_create_categories_table', 1),
	(5, '2018_02_18_072249_create_gifts_table', 1),
	(6, '2018_02_18_072303_create_branches_table', 1),
	(7, '2018_02_18_072321_create_products_table', 1),
	(8, '2018_02_18_083024_create_images_table', 1),
	(9, '2018_02_18_083716_create_packages_table', 1),
	(10, '2018_02_18_083742_create_mix_packages_table', 1),
	(11, '2018_02_18_083800_create_prices_table', 1),
	(12, '2018_02_18_084850_create_purchases_table', 1),
	(13, '2018_02_18_084909_create_trets_table', 1),
	(14, '2018_02_18_084921_create_stocks_table', 1),
	(15, '2018_02_18_085022_create_expences_table', 1),
	(16, '2018_02_18_085040_create_adderesses_table', 1),
	(17, '2018_02_20_060101_create_areas_table', 1),
	(18, '2018_02_20_060425_create_districts_table', 1),
	(23, '2018_10_27_072348_create_orders_table', 2),
	(24, '2018_10_27_072423_create_order_details_table', 2),
	(25, '2018_11_08_061952_create_inquiries_table', 2),
	(26, '2018_11_20_123221_create_image_details_table', 3);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table bread.mix_products
CREATE TABLE IF NOT EXISTS `mix_products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `mix_packages_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.mix_products: ~0 rows (approximately)
/*!40000 ALTER TABLE `mix_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `mix_products` ENABLE KEYS */;

-- Dumping structure for table bread.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `s_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `payment_status` tinyint(4) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.orders: ~2 rows (approximately)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `user_id`, `s_address`, `notes`, `status`, `payment_status`, `created_at`, `updated_at`) VALUES
	(1, 13, 'Dilu Road, Moghbazar', NULL, 0, 0, '2018-11-11 15:17:01', '2018-11-11 15:17:01'),
	(2, 13, 'Dilu Road, Moghbazar', NULL, 0, 0, '2018-11-11 15:18:13', '2018-11-11 15:18:13'),
	(3, 13, 'Dilu Road, Moghbazar', NULL, 0, 0, '2018-11-19 12:23:14', '2018-11-19 12:23:14'),
	(4, 3, 'Arjat para, Mohakhali', NULL, 1, 0, '2018-11-26 10:45:39', '2018-11-26 14:58:23'),
	(5, 15, 'White House (6th floor),Rajshahi', NULL, 0, 0, '2018-12-05 15:24:19', '2018-12-05 15:24:19');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Dumping structure for table bread.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `order_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `price` decimal(6,2) NOT NULL,
  `quantity` decimal(5,0) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.order_details: ~8 rows (approximately)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
	(1, 1, 1, 1200.00, 9),
	(2, 2, 1, 1200.00, 1),
	(3, 3, 1, 8.00, 5),
	(4, 4, 1, 8.00, 3),
	(5, 5, 1, 8.00, 13),
	(6, 5, 3, 8.00, 6),
	(7, 5, 4, 8.00, 1),
	(8, 5, 5, 8.00, 21);
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Dumping structure for table bread.packages
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `packageable_id` int(10) unsigned NOT NULL,
  `packageable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `hit_count` decimal(10,0) unsigned DEFAULT 0,
  `thumbnail` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `packages_slug_unique` (`slug`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.packages: ~0 rows (approximately)
/*!40000 ALTER TABLE `packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `packages` ENABLE KEYS */;

-- Dumping structure for table bread.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table bread.persistences
CREATE TABLE IF NOT EXISTS `persistences` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `persistences_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.persistences: ~0 rows (approximately)
/*!40000 ALTER TABLE `persistences` DISABLE KEYS */;
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
	(1, 3, 'scuadwiEOVBsEjWtTjO27qPFpi6fflC7', '2018-12-20 11:57:56', '2018-12-20 11:57:56');
/*!40000 ALTER TABLE `persistences` ENABLE KEYS */;

-- Dumping structure for table bread.prices
CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `priceable_id` int(10) unsigned NOT NULL,
  `priceable_type` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.prices: ~0 rows (approximately)
/*!40000 ALTER TABLE `prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `prices` ENABLE KEYS */;

-- Dumping structure for table bread.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `informations` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hit_count` decimal(10,0) unsigned DEFAULT NULL,
  `price` decimal(6,2) DEFAULT NULL,
  `old_price` decimal(6,2) unsigned DEFAULT NULL,
  `for_sale` tinyint(1) NOT NULL,
  `thumbnail` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `products_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.products: ~5 rows (approximately)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `category_id`, `branch_id`, `name`, `description`, `informations`, `slug`, `unit`, `hit_count`, `price`, `old_price`, `for_sale`, `thumbnail`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'Boiled Floor Bread', '<ol>\r\n	<li>Pure floor and warer are used for making bread.</li>\r\n	<li>One piece of bread is 75g.</li>\r\n	<li>Bread is very soft.&nbsp;</li>\r\n</ol>', '<ol>\r\n	<li>One piece of bread contains 150 kcl</li>\r\n	<li>Fat is 0 g</li>\r\n	<li>Protin is 3.6 g</li>\r\n</ol>', 'boiled-floor-bread1', 'PCS', 10, 8.00, NULL, 1, 'images/products/1540379773.jpg', '2018-10-24 11:16:13', '2018-11-27 11:42:50'),
	(2, 1, NULL, 'Boiled Floor Bread 2', '<ol>\r\n	<li>Pure floor and warer are used for making bread.</li>\r\n	<li>One piece of bread is 75g.</li>\r\n	<li>Bread is very soft.&nbsp;</li>\r\n</ol>', '<ol>\r\n	<li>One piece of bread contains 150 kcl</li>\r\n	<li>Fat is 0 g</li>\r\n	<li>Protin is 3.6 g</li>\r\n</ol>', 'boiled-floor-bread2', 'PCS', 10, 10.00, NULL, 1, 'images/products/1540379773.jpg', '2018-10-24 11:16:13', '2018-11-27 11:42:50'),
	(3, 1, NULL, 'Boiled Floor Bread 3', '<ol>\r\n	<li>Pure floor and warer are used for making bread.</li>\r\n	<li>One piece of bread is 75g.</li>\r\n	<li>Bread is very soft.&nbsp;</li>\r\n</ol>', '<ol>\r\n	<li>One piece of bread contains 150 kcl</li>\r\n	<li>Fat is 0 g</li>\r\n	<li>Protin is 3.6 g</li>\r\n</ol>', 'boiled-floor-bread3', 'PCS', 200, 12.00, NULL, 1, 'images/products/1540379773.jpg', '2018-10-24 11:16:13', '2018-11-27 11:42:50'),
	(4, 1, NULL, 'Boiled Floor Bread 4', '<ol>\r\n	<li>Pure floor and warer are used for making bread.</li>\r\n	<li>One piece of bread is 75g.</li>\r\n	<li>Bread is very soft.&nbsp;</li>\r\n</ol>', '<ol>\r\n	<li>One piece of bread contains 150 kcl</li>\r\n	<li>Fat is 0 g</li>\r\n	<li>Protin is 3.6 g</li>\r\n</ol>', 'boiled-floor-bread4', 'PCS', 20, 14.00, NULL, 1, 'images/products/1540379773.jpg', '2018-10-24 11:16:13', '2018-11-27 11:42:50'),
	(5, 1, NULL, 'Boiled Floor Bread 5', '<ol>\r\n	<li>Pure floor and warer are used for making bread.</li>\r\n	<li>One piece of bread is 75g.</li>\r\n	<li>Bread is very soft.&nbsp;</li>\r\n</ol>', '<ol>\r\n	<li>One piece of bread contains 150 kcl</li>\r\n	<li>Fat is 0 g</li>\r\n	<li>Protin is 3.6 g</li>\r\n</ol>', 'boiled-floor-bread5', 'PCS', 30, 16.00, NULL, 1, 'images/products/1540379773.jpg', '2018-11-29 11:42:50', '2018-11-27 11:42:50');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Dumping structure for table bread.purchases
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `buyer_id` int(10) unsigned NOT NULL,
  `merchant_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `branch_id` int(10) unsigned NOT NULL,
  `quantity` decimal(8,0) NOT NULL,
  `deposit` decimal(8,0) DEFAULT 0,
  `tret` decimal(8,0) DEFAULT 0,
  `price` decimal(8,0) NOT NULL,
  `update_stock` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.purchases: ~0 rows (approximately)
/*!40000 ALTER TABLE `purchases` DISABLE KEYS */;
/*!40000 ALTER TABLE `purchases` ENABLE KEYS */;

-- Dumping structure for table bread.reminders
CREATE TABLE IF NOT EXISTS `reminders` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.reminders: ~0 rows (approximately)
/*!40000 ALTER TABLE `reminders` DISABLE KEYS */;
/*!40000 ALTER TABLE `reminders` ENABLE KEYS */;

-- Dumping structure for table bread.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(3,0) DEFAULT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.roles: ~6 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `slug`, `name`, `weight`, `permissions`, `created_at`, `updated_at`) VALUES
	(1, 'admen', 'Admen', 100, NULL, '2018-03-06 10:17:22', '2018-04-18 15:10:52'),
	(3, 'buyer', 'Buyer', 50, NULL, '2018-03-08 06:31:53', '2018-05-15 06:07:35'),
	(4, 'customer', 'Customer', 999, NULL, '2018-03-09 05:49:31', '2018-04-20 06:33:20'),
	(5, 'managing_director', 'Managing Director', 150, NULL, '2018-03-09 05:49:44', '2018-05-15 06:01:20'),
	(6, 'delevery_boy', 'Delevery boy', 55, NULL, '2018-03-09 05:49:59', '2018-05-15 06:09:44'),
	(8, 'manager', 'Manager', 80, NULL, '2018-05-15 06:02:37', '2018-05-15 06:02:37');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table bread.role_users
CREATE TABLE IF NOT EXISTS `role_users` (
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.role_users: ~8 rows (approximately)
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
	(3, 1, '2018-03-08 05:56:22', '2018-03-08 05:56:22'),
	(5, 1, '2018-03-09 07:13:22', '2018-03-09 07:13:22'),
	(6, 3, '2018-03-10 11:36:28', '2018-03-10 11:36:28'),
	(8, 8, '2018-05-15 06:11:29', '2018-05-15 06:11:29'),
	(9, 4, '2018-11-04 07:14:26', '2018-11-04 07:14:26'),
	(10, 4, '2018-11-04 07:19:02', '2018-11-04 07:19:02'),
	(11, 4, '2018-11-04 07:19:59', '2018-11-04 07:19:59'),
	(12, 4, '2018-11-04 07:21:55', '2018-11-04 07:21:55'),
	(13, 4, '2018-11-04 07:44:29', '2018-11-04 07:44:29'),
	(14, 4, '2018-11-04 07:56:18', '2018-11-04 07:56:18'),
	(15, 4, '2018-12-05 15:24:00', '2018-12-05 15:24:00');
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;

-- Dumping structure for table bread.stocks
CREATE TABLE IF NOT EXISTS `stocks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) unsigned NOT NULL,
  `product_id` int(10) unsigned NOT NULL,
  `deposit` decimal(8,0) NOT NULL,
  `withdraw` decimal(8,0) NOT NULL DEFAULT 0,
  `balance` decimal(8,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.stocks: ~0 rows (approximately)
/*!40000 ALTER TABLE `stocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `stocks` ENABLE KEYS */;

-- Dumping structure for table bread.throttle
CREATE TABLE IF NOT EXISTS `throttle` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(10) unsigned DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `throttle_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.throttle: ~26 rows (approximately)
/*!40000 ALTER TABLE `throttle` DISABLE KEYS */;
INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
	(1, NULL, 'global', NULL, '2018-10-24 10:38:44', '2018-10-24 10:38:44'),
	(2, NULL, 'ip', '127.0.0.1', '2018-10-24 10:38:44', '2018-10-24 10:38:44'),
	(3, NULL, 'global', NULL, '2018-10-24 10:39:07', '2018-10-24 10:39:07'),
	(4, NULL, 'ip', '127.0.0.1', '2018-10-24 10:39:07', '2018-10-24 10:39:07'),
	(5, NULL, 'global', NULL, '2018-10-24 10:39:25', '2018-10-24 10:39:25'),
	(6, NULL, 'ip', '127.0.0.1', '2018-10-24 10:39:25', '2018-10-24 10:39:25'),
	(7, NULL, 'global', NULL, '2018-10-24 10:39:55', '2018-10-24 10:39:55'),
	(8, NULL, 'ip', '127.0.0.1', '2018-10-24 10:39:55', '2018-10-24 10:39:55'),
	(9, NULL, 'global', NULL, '2018-11-26 10:49:41', '2018-11-26 10:49:41'),
	(10, NULL, 'ip', '127.0.0.1', '2018-11-26 10:49:41', '2018-11-26 10:49:41'),
	(11, 3, 'user', NULL, '2018-11-26 10:49:41', '2018-11-26 10:49:41'),
	(12, NULL, 'global', NULL, '2018-11-26 10:49:50', '2018-11-26 10:49:50'),
	(13, NULL, 'ip', '127.0.0.1', '2018-11-26 10:49:50', '2018-11-26 10:49:50'),
	(14, 3, 'user', NULL, '2018-11-26 10:49:50', '2018-11-26 10:49:50'),
	(15, NULL, 'global', NULL, '2018-11-26 10:49:57', '2018-11-26 10:49:57'),
	(16, NULL, 'ip', '127.0.0.1', '2018-11-26 10:49:57', '2018-11-26 10:49:57'),
	(17, 3, 'user', NULL, '2018-11-26 10:49:57', '2018-11-26 10:49:57'),
	(18, NULL, 'global', NULL, '2018-11-26 10:50:03', '2018-11-26 10:50:03'),
	(19, NULL, 'ip', '127.0.0.1', '2018-11-26 10:50:03', '2018-11-26 10:50:03'),
	(20, 3, 'user', NULL, '2018-11-26 10:50:03', '2018-11-26 10:50:03'),
	(21, NULL, 'global', NULL, '2018-11-26 10:50:09', '2018-11-26 10:50:09'),
	(22, NULL, 'ip', '127.0.0.1', '2018-11-26 10:50:09', '2018-11-26 10:50:09'),
	(23, 3, 'user', NULL, '2018-11-26 10:50:09', '2018-11-26 10:50:09'),
	(24, NULL, 'global', NULL, '2018-11-26 10:50:13', '2018-11-26 10:50:13'),
	(25, NULL, 'ip', '127.0.0.1', '2018-11-26 10:50:13', '2018-11-26 10:50:13'),
	(26, 3, 'user', NULL, '2018-11-26 10:50:13', '2018-11-26 10:50:13');
/*!40000 ALTER TABLE `throttle` ENABLE KEYS */;

-- Dumping structure for table bread.trets
CREATE TABLE IF NOT EXISTS `trets` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `stock_id` int(10) unsigned NOT NULL,
  `reason` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` decimal(8,0) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.trets: ~0 rows (approximately)
/*!40000 ALTER TABLE `trets` DISABLE KEYS */;
/*!40000 ALTER TABLE `trets` ENABLE KEYS */;

-- Dumping structure for table bread.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `branch_id` int(10) unsigned DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` decimal(6,0) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_mobile_unique` (`mobile`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table bread.users: ~12 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `branch_id`, `mobile`, `name`, `address`, `points`, `password`, `permissions`, `last_login`, `created_at`, `updated_at`) VALUES
	(3, 1, '01784255196', 'Admin', NULL, 100, '$2y$10$WN15GCnF6IsJo/C6KYHsc.pV2nTSskGKYIhHISskHvZdkluGsPhWK', NULL, '2018-12-20 11:57:56', '2018-03-08 05:56:21', '2018-12-20 11:57:56'),
	(4, 1, '01784255111', 'Marchant', NULL, 0, '$2y$10$M2nCkps8ougSXwubhZYMIuPZ8Y13JztyaBfIwD80/0SLLtb7Qu10e', NULL, NULL, '2018-03-08 06:32:39', '2018-03-08 06:32:39'),
	(5, 1, '01765768609', 'Admin', NULL, 0, '$2y$10$krIXbjHasYkPtwVINVhMAOmFRDv3F4t9wy2qy4pXAUuZOZssNH1fG', NULL, '2018-05-15 05:50:17', '2018-03-09 07:13:22', '2018-05-15 05:50:17'),
	(6, 1, '01784255199', 'Buyer', NULL, 0, '$2y$10$Md4XMRqfJ3DfbPOBi3hSf.P8t0MHbVLjEIg7CGFAwb5v48b2ci0u6', NULL, '2018-05-15 05:50:32', '2018-03-10 11:36:28', '2018-05-15 05:50:32'),
	(7, 1, '0178425166', 'Marchant', NULL, 0, '$2y$10$HczcMjTPi2KiicCxIeRFyu1TiVsxerpFAlS3s5CKYeh/UNJH5g0RC', NULL, NULL, '2018-04-20 15:18:35', '2018-04-20 15:18:35'),
	(8, 1, '01784255188', 'Manager', NULL, 0, '$2y$10$WN15GCnF6IsJo/C6KYHsc.pV2nTSskGKYIhHISskHvZdkluGsPhWK', NULL, '2018-07-12 08:55:02', '2018-05-15 06:11:28', '2018-07-12 08:55:02'),
	(9, NULL, '01729893142', 'Neher Ranjan Halder', NULL, 0, '$2y$10$PhnvHo65hadfdCFWQUx4LOroHNxxdo/sED9r8TMgoS2JrWK7zWXgy', NULL, NULL, '2018-11-04 07:14:25', '2018-11-04 07:14:25'),
	(10, NULL, '01784124521', 'Somed Ali', NULL, 0, '$2y$10$A0FnXBVm.5H3nInqBI/9yethwdN4ROwP7pxi9QHlcclLVojXmt79e', NULL, NULL, '2018-11-04 07:19:02', '2018-11-04 07:19:02'),
	(11, NULL, '01784250000', 'Neher Ranjan Halder', NULL, 0, '$2y$10$1BezeGoZv1cAcmXrMC5E8.V3dbxSlD9rxx/nrblrgBLVz2DXjMn3G', NULL, NULL, '2018-11-04 07:19:58', '2018-11-04 07:19:58'),
	(12, NULL, '01784255222', 'Neher Ranjan Halder', NULL, 0, '$2y$10$pnBUJc9GAR8avbAN5/VYs.YCHqE7tR0fmB2GivqyvjT4mSrnE2.tK', NULL, '2018-11-04 07:21:55', '2018-11-04 07:21:55', '2018-11-04 07:21:55'),
	(13, NULL, '01784251245', 'Neher Ranjan Halder', 'Dilu Road, Moghbazar', 0, '$2y$10$3WYPavWN4cbSLOp4f3IT7ujmIDcqyzMDa.gYaa2aLCgfLKebFL7pu', NULL, '2018-11-19 12:22:36', '2018-11-04 07:44:29', '2018-11-19 12:22:36'),
	(14, NULL, '01765788609', 'Shreshtha', 'Rajshahi, Bangladesh', 0, '$2y$10$OEGmAl/HHlzoF05VCwkfS.cxlphj7e1YYibj5P5swLwKfyHFgnIJO', NULL, '2018-11-04 07:56:18', '2018-11-04 07:56:17', '2018-11-04 07:56:18'),
	(15, NULL, '01765768600', 'Shreshtha', 'White House (6th floor),Rajshahi', 0, '$2y$10$MC6Y9Vl19QhB02GKjUzOp.f5jm4p3p5gN1Qn5foreAc95ro6jewlS', NULL, '2018-12-05 15:24:00', '2018-12-05 15:24:00', '2018-12-05 15:24:00');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
