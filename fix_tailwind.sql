-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 29, 2024 at 01:46 PM
-- Server version: 8.2.0
-- PHP Version: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fix_tailwind`
--

-- --------------------------------------------------------

--
-- Table structure for table `accommodations`
--

DROP TABLE IF EXISTS `accommodations`;
CREATE TABLE IF NOT EXISTS `accommodations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext COLLATE utf8mb4_unicode_ci,
  `cover_image` longtext COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_images`
--

DROP TABLE IF EXISTS `accommodation_images`;
CREATE TABLE IF NOT EXISTS `accommodation_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `accommodation_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodation_images_accommodation_id_foreign` (`accommodation_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1714377784;', 1714377784),
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1714377784);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
CREATE TABLE IF NOT EXISTS `careers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dinings`
--

DROP TABLE IF EXISTS `dinings`;
CREATE TABLE IF NOT EXISTS `dinings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dining_images`
--

DROP TABLE IF EXISTS `dining_images`;
CREATE TABLE IF NOT EXISTS `dining_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dining_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dining_images_dining_id_foreign` (`dining_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experiences`
--

DROP TABLE IF EXISTS `experiences`;
CREATE TABLE IF NOT EXISTS `experiences` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `experience_images`
--

DROP TABLE IF EXISTS `experience_images`;
CREATE TABLE IF NOT EXISTS `experience_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `experience_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `experience_images_experience_id_foreign` (`experience_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

DROP TABLE IF EXISTS `facilities`;
CREATE TABLE IF NOT EXISTS `facilities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

DROP TABLE IF EXISTS `galleries`;
CREATE TABLE IF NOT EXISTS `galleries` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `honeymoons`
--

DROP TABLE IF EXISTS `honeymoons`;
CREATE TABLE IF NOT EXISTS `honeymoons` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `honeymoon_images`
--

DROP TABLE IF EXISTS `honeymoon_images`;
CREATE TABLE IF NOT EXISTS `honeymoon_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `honeymoon_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `honeymoon_images_honeymoon_id_foreign` (`honeymoon_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_23_080604_create_pages_table', 2),
(5, '2024_04_24_011332_create_page_images_table', 3),
(6, '2024_04_26_034156_create_experiences_table', 3),
(7, '2024_04_26_034214_create_experience_images_table', 3),
(8, '2024_04_26_034227_create_awards_table', 3),
(9, '2024_04_26_034240_create_blogs_table', 3),
(10, '2024_04_26_034247_create_careers_table', 3),
(11, '2024_04_26_034254_create_galleries_table', 3),
(12, '2024_04_26_034308_create_offers_table', 3),
(13, '2024_04_26_034317_create_press_rooms_table', 3),
(14, '2024_04_26_034323_create_settings_table', 3),
(15, '2024_04_26_034338_create_accommodations_table', 3),
(16, '2024_04_26_034343_create_accommodation_images_table', 3),
(17, '2024_04_26_034454_create_spas_table', 3),
(18, '2024_04_26_034458_create_spa_images_table', 3),
(19, '2024_04_26_034539_create_facilities_table', 3),
(20, '2024_04_26_035122_create_dinings_table', 3),
(21, '2024_04_26_035128_create_dining_images_table', 3),
(22, '2024_04_26_035136_create_honeymoons_table', 3),
(23, '2024_04_26_035142_create_honeymoon_images_table', 3),
(24, '2024_04_26_035150_create_weddings_table', 3),
(25, '2024_04_26_035154_create_wedding_images_table', 3),
(26, '2024_04_26_035246_create_pop_ups_table', 3),
(27, '2024_04_26_035252_create_mini_pop_ups_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `mini_pop_ups`
--

DROP TABLE IF EXISTS `mini_pop_ups`;
CREATE TABLE IF NOT EXISTS `mini_pop_ups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

DROP TABLE IF EXISTS `offers`;
CREATE TABLE IF NOT EXISTS `offers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext COLLATE utf8mb4_unicode_ci,
  `cover_image` longtext COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_night` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext COLLATE utf8mb4_unicode_ci,
  `button_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `title`, `slug`, `subtitle`, `excerpt`, `description`, `hero_image`, `button_text`, `button_link`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', 'Hanging Gardens of Bali', 'hanging-gardens-of-bali', NULL, NULL, '<p>Experience a gastronomic adventure that is without equal in Bali with legendary service that is the essence of Balinese hospitality. Dine while overlooking our spiritual core, \"The World\'s Best Swimming Pool\" so named by Conde Nast Traveler.</p>', 'images/page/hero_image/01HWM8WEJRJ7DTYWP5JB6M3WPY.jpg', NULL, NULL, 'Hanging Gardens, Bali Luxury Resort', 'Experience an adventure that is without equal in Bali while overlooking our spiritual core, \"The World\'s Best Swimming Pool\" so named by Conde Nast Traveler.', 1, '2024-04-28 22:32:40', '2024-04-29 05:37:14'),
(2, 'Offers', 'Exclusive Offers', 'exclusive-offers', NULL, NULL, '<p>Take advantage of the latest deals and packages from Hanging Gardens of Bali Special Offers. This includes accommodation, dining, and activities packages. Only for direct booking in our official website.</p>', 'images/page/hero_image/01HWMB9DY8RFXKX9MEFB7WBVXJ.jpg', NULL, NULL, 'Exclusive Offers', 'Take advantage of the latest deals and packages from Hanging Gardens of Bali Special Offers. This includes accommodation, dining, and activities packages.', 1, '2024-04-29 06:14:43', '2024-04-29 06:14:43'),
(3, 'Accommodation', 'Luxury Resort With Private Pool', 'luxury-resort-with-private-pool', NULL, 'Hanging Gardens of Bali has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty.', '<p>Hanging Gardens of Bali has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty. All of our villas exude a feeling of understated elegance, with trademark hand-crafted furnishings, exotic textiles, open-air dining rooms and a stunning master bathroom.</p>', 'images/page/hero_image/01HWMBJSXWFMJYBM7K501A0JSV.jpg', 'Discover Luxurious Retreats', 'accommodation.index', 'Luxury Resort With Private Pool', 'Our resort has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty. All of our villas exude a feeling of understated elegance', 1, '2024-04-29 06:19:50', '2024-04-29 08:27:27'),
(4, 'Dining', 'Three Elements Restaurant', 'three-elements-restaurant', NULL, NULL, '<p>Three Elements Restaurant has been awarded \"World Luxury Restaurant Award 2019\", and offers an à la carte selection of appetizers, entrées and desserts as well as two unique tasting menus with optional wine pairing using the highest quality products and impeccable technique to create a modern Western and Indonesian cuisine.</p>', 'images/page/hero_image/01HWMBVK698BJQ6QPJ029KT4CK.jpg', NULL, NULL, 'Three Elements Restaurant', 'Three Elements Restaurant has been awarded \"World Luxury Restaurant Award 2019\", and offers an à la carte selection of appetizers, entrées and desserts.', 1, '2024-04-29 06:24:38', '2024-04-29 06:24:38'),
(5, 'Experiences', 'Unique Experiences', 'unique-experiences', NULL, NULL, '<p>Serene surroundings, legendary service and top Balinese hospitality - a stay at Ubud luxury resort Hanging Gardens of Bali and its Once-in-a-Lifetime Experiences, promise to create special memories that you will never forget.</p>', 'images/page/hero_image/01HWMC1GN3QCS39B28FWJ779D5.jpg', NULL, NULL, 'Unique Experiences', 'Serene surroundings, legendary service and top Balinese hospitality - a stay at Hanging Gardens of Bali and its Once-in-a-Lifetime Experiences', 1, '2024-04-29 06:27:52', '2024-04-29 06:27:52'),
(6, 'Spa', 'Ultimate Spa Relaxation', 'ultimate-spa-relaxation', NULL, NULL, '<p>Not only recognized as the best Ubud honeymoon resort, but also elected by \"World Luxury Spa Awards\" as The Best “LUXURY DESTINATION SPA\" our truly luxurious Spa Collection combines natural, local ingredients and ancient techniques, to create beauty therapies and treatments that soothe the mind, rejuvenate the body and energize the soul.</p>', 'images/page/hero_image/01HWMCA6MBXTA74P0JYE7B3FYK.jpg', NULL, NULL, 'Ultimate Spa Relaxation', 'Not only recognized as the best Ubud honeymoon resort, but also elected by \"World Luxury Spa Awards\" as The Best “LUXURY DESTINATION SPA\"', 1, '2024-04-29 06:32:37', '2024-04-29 06:32:37'),
(7, 'Honeymoon', 'Perfect Honeymoon Destinations', 'perfect-honeymoon-destinations', NULL, NULL, '<p>Whether it\'s Valentine\'s Day, a honeymoon or just a romantic getaway for two, Hanging Gardens of Bali is one of the best romantic getaway spot for your unforgetable and memorable experiences.</p>', 'images/page/hero_image/01HWMCEB63175MWJMQFEMQZENG.jpg', NULL, NULL, 'Perfect Honeymoon Destinations', 'Whether it\'s Valentine\'s Day, a honeymoon or just a romantic getaway for two, Hanging Gardens of Bali is one of the best romantic getaway', 1, '2024-04-29 06:34:52', '2024-04-29 06:34:52'),
(8, 'Weddings', 'Celebrate Your Love in Style', 'celebrate-your-love-in-style', NULL, NULL, '<p>Your wedding at Hanging Gardens of Bali will create special memories that you will never forget.</p>', 'images/page/hero_image/01HWMCMR9T9NZXGXK233FSXJHJ.jpg', NULL, NULL, 'Celebrate Your Love in Style', 'Your wedding at Hanging Gardens of Bali will create special memories that you will never forget.', 1, '2024-04-29 06:38:22', '2024-04-29 06:38:22'),
(9, 'Awards', 'Awards', 'awards', NULL, NULL, '<p>Best Bali Resort Hotel Awards, our exceptional service has been recognized by many leading publications of the travel, hospitality and lifestyle sectors</p>', 'images/page/hero_image/01HWMDBGA0YECDEAF4BT5EHC1A.jpg', NULL, NULL, 'Awards', 'Best Bali Resort Hotel Awards, our exceptional service has been recognized by many leading publications of the travel, hospitality and lifestyle sectors', 1, '2024-04-29 06:50:48', '2024-04-29 06:50:48'),
(10, 'Story', 'The Story of Hanging Gardens of Bali', 'the-story-of-hanging-gardens-of-bali', NULL, NULL, '<p>The Hanging Gardens of Bali was conceived in 2003 and completed in 2005. The concept was to create something magical and authentic in the heart of the Balinese jungle: an immersive experience in a natural tropical environment.</p><p>With 700 local craftsmen using traditional materials and adapting indigenous ideas, the resort took shape in the heart of Ubud. A winding path of 88 steps leads from the reception to the restaurant; built with Feng Shui principles to mean infinity and stability of energy: an important factor when building on a 45 degree angle.</p><p>With 44 astonishing private villas to choose from, The Hanging Gardens of Bali is a remarkable destination for creating the most unforgettable memories.</p><p>Our guests can experience award-winning spa treatments, surprising gourmet creations and discrete privacy; all delivered with the warmth of Balinese hospitality at its best.</p><p>At the geographical epicenter and our spiritual core, is the World’s most remarkable Swimming Pool. It is without a doubt one of the most photographed pools and has the unique distinction of being named “The World’s Best Swimming Pool” by Condé Nast Traveller.</p><p>Designed by a specialist architect, the striking formation is suspended over the dense rainforest, giving swimmers the unique sensation of floating above the treetops.</p>', 'images/page/hero_image/01HWMDG3N7FT1Q0AJM402KQFSX.jpg', NULL, NULL, 'The Story of Hanging Gardens of Bali', 'The concept was to create something magical and authentic in the heart of the Balinese jungle: an immersive experience in a natural tropical environment.', 1, '2024-04-29 06:53:19', '2024-04-29 06:53:19'),
(11, 'Press Room', 'Press & Media Recognition', 'press-media-recognition', NULL, NULL, '<p>We are honored that our Ubud luxury resort with private pool was recognized by various press, media channels and leading publications of travel, hospitality and lifestyle sectors, both in Indonesia and internationally. Explore the latest news about our outstanding destination</p>', 'images/page/hero_image/01HWMDJA2FT01M9PEBS1CS3WCV.jpg', NULL, NULL, 'Press and Media Recognition', 'We are honored that our Ubud luxury resort with private pool was recognized by various press, media channels and leading publications of travel', 1, '2024-04-29 06:54:31', '2024-04-29 06:54:31'),
(12, 'Contact Us', 'Get in Touch', 'get-in-touch', NULL, NULL, '<p>Our Reservations team will assist you with your travel planning, operating 24/7 to be at your service and plan your ultimate Hanging Gardens of Bali experience.</p>', 'images/page/hero_image/01HWMDMSNXY61681QXJSHZQH2Q.jpg', NULL, NULL, 'Get in Touch', 'Our Reservations team will assist you with your travel planning, operating 24/7 to be at your service and plan your ultimate Hanging Gardens of Bali experience.', 1, '2024-04-29 06:55:52', '2024-04-29 06:55:52'),
(13, 'Sustainability', 'Sustainability', 'sustainability', NULL, NULL, '<h3><strong>Long-term sustainability at the core of our actions</strong></h3><p>The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge. The tiered structure of the villas and pools follows the natural contours of the land, creating a harmonious blend with the surrounding environment. Hanging Gardens of Bali incorporates sustainable and responsible tourism practices that respect and contribute to the preservation of the local environment. In addition, Hanging Gardens of Bali has undertaken efforts to preserve and protect the natural environment surrounding the resort, which remains in its original condition. The efforts also include the implementation of energy-efficient technologies, such as LED lighting, and energy-efficient appliances, to reduce the resort’s energy consumption and carbon footprint.&nbsp;<br><br>Water conservation is also important, water conservation measures have been implemented, including rainwater harvesting, water recycling, and the use of water-efficient landscaping practices. In addition, we have reduced the consumption of single-use plastic such as straws, disposable cutlery, and plastic bottles within the resort premises. Our water sterilization and purification systems provide guests with safe and clean drinking water. This can include the use of filtration systems and UV sterilization. Waste reduction and recycling: establishing waste reduction and recycling programs to minimize the amount of waste sent to landfills. This includes composting organic waste, recycling materials, and encouraging guests to participate in sustainable practices.</p><p>Finally, we prioritize the use of locally sourced and sustainable materials, as well as supporting local communities through responsible procurement practices. This extends to the sourcing of food and beverages for the resort’s dining facilities.</p><p>In addition, Hanging Gardens Of Bali use to be a precursor in sustainability and is the founder of The International Flower Competition (IFC) Foundation.</p><p>During the Covid-19 Pandemic, as many people were forced to stay at home and avoid activities outside their home, and many workers were working from home, the amount of free time at home makes people feel bored. The International Flower Competition (IFC) Foundation initiated a flower gardening competition in front of villagers\' houses of Banjar Susut, Payangan and it resulted numerous new floral creations in the rural village.</p>', 'images/page/hero_image/01HWMDQKD09147V3GV43MH8RJF.jpg', NULL, NULL, 'Sustainability', 'The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge', 1, '2024-04-29 06:57:24', '2024-04-29 06:57:43'),
(14, 'Policy & Legal', 'Policy & Legal', 'policy-legal', NULL, NULL, '<p><strong>LEGAL NOTICES</strong></p><p>HANGING GARDENS OF BALI WEBSITE TERMS OF USE</p><p>THIS IS A BINDING LEGAL AGREEMENT (this “Agreement”).</p><p>PLEASE READ THIS AGREEMENT BEFORE USING THIS SITE. LAST UPDATED 27/06/17.</p><ul><li>This Agreement governs your use of this Internet site located at hanginggardensofbali.com, including all webpages, applications, “Contents” (as defined below), and goods, services, features and functions provided or offered on or through this site (collectively, the “Site”) and is by and between Hanging Gardens of Bali (collectively “Hanging Gardens of Bali” “we”, “us” or “our”) and you, whether you are accessing the Site on your own, through an intermediary, or on behalf of any other person or entity (“you”). By viewing, accessing, posting on, interacting or communicating with, engaging in transactions of any kind on or through (including but not limited to making reservations), and/or in any other manner utilizing this Site, you hereby agree to the terms set forth herein, and in Hanging Gardens of Bali’s Privacy Policy at https://www.hanginggardensofbali.com/privacy. By Using the Application, in addition to the foregoing terms, you agree to the terms and conditions governing use of the Application as set forth in the “Application License Agreement.”</li></ul><p>We reserve the right, in our sole discretion, to modify, add, or remove portions of the terms of this Agreement at any time without notice. Unless otherwise indicated, such changes will become effective immediately upon our posting of the changes.</p><p>Please note that additional terms and conditions may apply to making reservations and/or check in and/or check out arrangements, and/or engaging in purchases and/or other transactions or activities on or through this Site or the Application. You agree to comply with the terms and conditions set forth herein and any and all such applicable additional terms and conditions.</p><p>We reserve the right in our sole discretion to revoke or deny your access to the Site and/or the Application, including, without limitation, if you violate any provision of this Agreement.</p><p><strong>RESTRICTIONS ON USE OF SITE AND CONTENT</strong></p><p>Except as set forth below with respect to “Communications” (as defined below): (i) all rights in the information, data, text, software, music, photographs, pictures, designs, graphics, logos, files, products, services, images, videos, messages, sounds, files, and other materials contained and/or displayed on the Site, the layout and design of the Site, and the selection and arrangement of material on the Site are owned or licensed by Hanging Gardens of Bali (hereinafter the “Content”); and (ii) you may not modify, alter, download, upload, post, reproduce, distribute, publish, transmit, copy, display, transfer, sell, re-sell, perform, license or sublicense the Content or use the Content to create derivative works in any form, manner or by any means, for any commercial purpose without the prior written permission of Hanging Gardens of Bali.</p><p>Subject to your compliance with the terms of this Agreement, we grant you a limited, non-exclusive, non-transferable license to access and use the Content solely in connection with your permitted use of the Site and solely for your personal and for non-commercial purposes.</p><ul><li>This Site displays or references valuable trademarks owned by Hanging Gardens (including but not limited to the “HANGING GARDENS OF BALI” mark, and the logo) used by Hanging Gardens of Bali to distinguish its services and wares (collectively, the “Marks”). The Marks and related proprietary property are protected from copying and simulation under national and international laws, and you may not reproduce, download, upload, copy or otherwise use the Marks in any manner without the express prior written permission of Hanging Gardens of Bali.&nbsp; Many of the Marks, including <strong>Hanging Gardens of Bali®</strong>, <strong>Hanging Gardens®</strong> AND <strong>Hanging Gardens Group®</strong>, and the logo Mark – are registered in the International Patent and Trademark Offices and/or in other trademark offices and agencies throughout the world. Other trademarks not owned by Hanging Gardens of Bali and referenced on this Site are the property of their respective owners.</li></ul><p>The Site may contain or reference the Marks, and/or other trademarks, service marks, trade names, patents, copyrighted materials, trade secrets, technologies, products, processes or other proprietary rights (collectively the “IP”) owned by Hanging Gardens and/or other parties. No license to or right in any such IP is granted to or conferred upon you and you may not use the IP for any purpose (including those identified in the restrictions provisions set forth below), except as otherwise permitted herein or as permitted by law.</p><p>In addition to the foregoing restrictions, you further agree that in connection with your Use of the Site, you will not in any manner:</p><ul><li>Use any devices or mechanisms, including but not limited to software, routines, malicious or unauthorized code, engines, tools, agents, robots, spiders, crawlers, data mining tools, viruses, worms, Trojan horses, malware, programs.</li><li>Provide or send us any information or data that includes any Devices;</li><li>Engage in any conduct that creates or is intended to create liability for Hanging Gardens;</li><li>Decipher, decompile, disassemble or reverse engineer any of the software used in connection with the Site; violate the restrictions in any robot exclusion headers on the Site or otherwise bypass, breach or circumvent any security or authentication measures and/or other measures employed to prevent or limit access to the Site; send any unsolicited or unauthorized advertising, promotional materials, email, junk mail, spam, chain letters or other form of solicitation; forge any TCP/IP packet header or any part of the header information in any email or newsgroup posting, or otherwise use or send altered, deceptive or false source-identifying information; impersonate or misrepresent your affiliation with any person or entity;</li><li>Engage in any conduct that: (i) infringes, misappropriates or violates any other party’s patent, copyright, trademark, trade secret, moral rights or other intellectual property rights, or rights of publicity or privacy; (ii) is fraudulent, false, misleading or deceptive; (iii) is defamatory, obscene, pornographic, vulgar or offensive; (iv) promotes discrimination, bigotry, racism, hatred, harassment or harm against any individual or group; (v) is violent or threatening or promotes violence or actions that are threatening to any person or entity; (vi) promotes illegal or harmful activities or substances; (vii) otherwise violates, or encourages any conduct that would violate, any applicable law, statute, ordinance, rule or regulation or that would give rise to civil liability;</li><li>Encourage or enable any other individual to do any of the foregoing.</li></ul><p>Additional restrictions on the Use of this Site are set forth in other provisions of this Agreement.</p><p><strong>RESERVATIONS/RENTALS AT HANGING GARDENS OF BALI</strong></p><p>You shall make only legitimate reservations in good faith for use only by you and/or your invited guests and/or others on whose behalf you are authorized to act, and not for other purposes, including without limitation, reselling, impermissibly assigning or posting on third party websites, or making speculative, false or fraudulent reservations, or any reservations in anticipation of demand. We reserve the right to cancel or modify reservations in our sole discretion for any reasons, including where it appears that a customer has engaged in fraudulent or inappropriate activity or under other circumstances where it appears that the reservations contain or resulted from a mistake or error, even if such mistake or error is ours. To contest the cancellation of a booking or freezing or closure of an account, please contact our Customer Support.</p><p><strong>THIRD PARTY SITES AND MATERIALS</strong></p><p>This Site contains links to websites and resources operated by parties other than us, who may provide goods and/or services and whose websites may link to our Site (hereinafter “Third Party Sites”). Such links are provided for your convenience only. We do not control such Third Party Sites and are not responsible for their content or accuracy. We make no warranties regarding and are not liable or responsible for them, for links displayed on such websites or for any third party materials, products, or services that you purchased, rent, lease or otherwise acquire from such Third Party Sites. The inclusion on the Site of links to Third Party Sites does not imply any endorsement or accuracy of the material on such websites or any association with their operators. You acknowledge sole responsibility for and assume all risk arising from your use of any Third Party Sites.</p><p><strong>HANGING GARDENS OF BALI’S RIGHT TO MAKE CHANGES</strong></p><p>Hanging Gardens of Bali reserves the right to make changes, corrections, cancellations and/or improvements to the Site and Content, and the products, services and programs described therein at any time without notice, including after confirmation of a transaction.</p><p><strong>DISCLAIMER AND LIMITATION OF LIABILITY AND WAIVER</strong></p><p>Your Use of the Site and the Application is at your own risk. The Site and the Application are provided “as is” and on an “as available” basis without representations or warranties of any kind, either express, implied or statutory. To the maximum extent permissible pursuant to applicable law, on behalf of the Indemnified Parties, we expressly disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose, title, non-infringement, design, accuracy, capability, sufficiency, suitability, capacity, completeness, availability or compatibility, or arising from course of dealing or course of performance.</p><p><strong>ELECTRONIC COMMUNICATIONS PRIVACY</strong></p><p>We make no guaranty of confidentiality or privacy of any Communications or information transmitted on the Site or any website linked to the Site. We will not be liable for the privacy of Communications and/or any other information, e-mail addresses, registration and identification information, disk space, confidential or trade-secret information, or any other content transmitted over networks accessed by the Site, or otherwise connected with your use of the Site.</p><p><strong>TERMS &amp; CONDITIONS:</strong></p><ul><li>Rate quoted is for 2 guests per villa / per night.</li><li>Full prepayment is required at time of booking.</li><li>Booking is non-amendable and non-refundable.</li><li>In the event of no-show (i.e should you neither use or cancel your reservation), a fee equivalent to your entire stay will be charged.</li><li>All fees and penalty are inclusive of service charge and government tax.</li></ul><p><br></p><p>CONTACT INFORMATION</p><p>If you have any questions about this Agreement please contact us at:<br>Hanging Gardens Of Bali<br>Desa Buahan Payangan, Gianyar, Bali 80571, Indonesia<br>Tel. +62 361 982700 Fax. +62 361 982800<br>E. <a href=\"mailto:reservations@hanginggardensofbali.com\"><span style=\"text-decoration: underline;\">reservations@hanginggardensofbali.com</span></a><br>W. <a href=\"https://hanginggardensofbali.com/\"><span style=\"text-decoration: underline;\">www.hanginggardensofbali.com</span></a></p><p><br></p><p>Copyright © 2005-2024 Hanging Gardens. All rights reserved.ept as otherwise provided herein, if any provision of this Agreement is found by a court to be unlawful, void, or for any reason unenforceable, then that provision shall be deemed severable from this Agreement and shall not affect the validity and enforceability of any remaining provisions.</p>', 'images/page/hero_image/01HWMDVE514KR8VFGRZBRJRVKK.jpg', NULL, NULL, 'Policy & Legal', 'We reserve the right, in our sole discretion, to modify, add, or remove portions of the terms of this Agreement at any time without notice.', 1, '2024-04-29 06:59:30', '2024-04-29 06:59:30'),
(15, 'Blog', 'Blog', 'blog', NULL, NULL, '<p>Learn more about the hidden gems in Bali, attractions to visit and our other insider tips to guide your getaway in Bali</p>', 'images/page/hero_image/01HWMDXX3SKAQ1Y8625WY3CQNA.jpg', NULL, NULL, 'Blog', 'Learn more about the hidden gems in Bali, attractions to visit and our other insider tips to guide your getaway in Bali', 1, '2024-04-29 07:00:51', '2024-04-29 07:00:51'),
(16, 'Careers', 'Careers', 'careers', NULL, NULL, '<p>A unique combination of world-class talent, unmatched design, and access to locations, cultures, and experiences few people have access to enables us to achieve our ambitions. Our team of hundreds of our employees is always looking for passionate individuals to join our growing team.</p>', 'images/page/hero_image/01HWME08VZ5XSP97ZNYSETARQ9.jpg', NULL, NULL, 'Careers', 'Our team of hundreds of our employees is always looking for passionate individuals to join our growing team.', 1, '2024-04-29 07:02:08', '2024-04-29 07:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `page_images`
--

DROP TABLE IF EXISTS `page_images`;
CREATE TABLE IF NOT EXISTS `page_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_images_page_id_foreign` (`page_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pop_ups`
--

DROP TABLE IF EXISTS `pop_ups`;
CREATE TABLE IF NOT EXISTS `pop_ups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `press_rooms`
--

DROP TABLE IF EXISTS `press_rooms`;
CREATE TABLE IF NOT EXISTS `press_rooms` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('jf08e9V0ylVXL1tAfXZpM6fCizpxArtyOZYkeuMc', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoibDgzc1EyS29hZmNwYWlkSVJ2WWdaTE1TNlZxNklGTUNMMUxndVUzcSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEyJHNhUERwUGZFZEprUFNwTTJFNzJpUWVxV2NHZ2Y5WTdObUI4c0pCMnVpTzJDMnFxcmh0cGt5IjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czozOToiaHR0cDovL2xvY2FsaG9zdDo4MDAwL3BhbmVsL2FkbWluL3BhZ2VzIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1714384125),
('JhtzdltLIeVJ3iWt0JEW0G9SIMLobBvVQOspautT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTzROa3c2VlZBVmlybkU3UWsxNjRUMFhPRGdHNGN6Y3NacVBPVGRPayI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9hY2NvbW1vZGF0aW9uIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1714384225);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spas`
--

DROP TABLE IF EXISTS `spas`;
CREATE TABLE IF NOT EXISTS `spas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `spa_images`
--

DROP TABLE IF EXISTS `spa_images`;
CREATE TABLE IF NOT EXISTS `spa_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `spa_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `spa_images_spa_id_foreign` (`spa_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@admin.com', NULL, '$2y$12$saPDpPfEdJkPSpM2E72iQeqWcGgf9Y7NmB8sJB2uiO2C2qqrhtpky', 'MJzIY4REsbzTCKNZXNTqtwMEaVnJRjzffTizt9HSIxo2hs1XQZE043kEFmQd', '2024-04-22 22:39:53', '2024-04-22 22:39:53');

-- --------------------------------------------------------

--
-- Table structure for table `weddings`
--

DROP TABLE IF EXISTS `weddings`;
CREATE TABLE IF NOT EXISTS `weddings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wedding_images`
--

DROP TABLE IF EXISTS `wedding_images`;
CREATE TABLE IF NOT EXISTS `wedding_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `wedding_images_wedding_id_foreign` (`wedding_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
