-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 14, 2024 at 09:48 AM
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodations`
--

INSERT INTO `accommodations` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `hero_image`, `cover_image`, `button_label`, `button_value`, `meta_title`, `meta_description`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Hanging Gardens Pool Villa', 'Breathtaking Views', 'hanging-gardens-pool-villa', 'The Hanging Gardens Pool Villa offers breathtaking views over the rainforest, provides a sense of peace and tranquility and offers a high level of privacy and exclusivity.', '<p>The Hanging Gardens Pool Villa offers breathtaking views over the rainforest, provides a sense of peace and tranquility and offers a high level of privacy and exclusivity. The additional spacious living area sets the luxurious standards. Designed in contemporary Balinese style, each unit has an ample terrace adjacent to the infinity pool. The king-sized bedrooms are furnished with locally-spun silks and natural cottons that combine design and comfort. The Hanging Gardens Villa features a separate living room with an entertainment system, a comfy resting space and a separate bathroom for visitors to relax and enjoy.&nbsp;</p>', 'images/accommodation/hero_image/01HWPGRMNBZF2ZZP72GXM2S40P.jpg', 'images/accommodation/cover_image/01HWPGRMNJEKRK3PN6GDTVZ0MM.jpg', 'Explore', NULL, 'Hanging Gardens Pool Villa', 'The Hanging Gardens Pool Villa offers breathtaking views over the rainforest, provides a sense of peace and offers a high level of privacy and exclusivity.', NULL, 1, '2024-04-30 02:28:53', '2024-04-30 02:47:19'),
(2, 'Royal Spa Suite', NULL, 'royal-spa-suite', 'The Spa Suite has a huge spa lounge, a large bathroom with a sleek and spacious bathtub, premium linen and floor-to-ceiling glass windows.', '<p>The Spa Suite has a huge spa lounge, a large bathroom with a sleek and spacious bathtub, premium linen and floor-to-ceiling glass windows. From your private balcony, take in the stunning views of the Ubud forest preserve, the Ayung River, and the beautiful tropical gardens from your intimate balcony.&nbsp;</p>', 'images/accommodation/hero_image/01HWPS68NKWQHAE7MN6RGYDT5C.jpg', 'images/accommodation/cover_image/01HWPS68NQ4DVN2XFTFR9CXYS1.webp', 'Explore', NULL, 'Royal Spa Suite', 'The Spa Suite has a huge spa lounge, a large bathroom with a sleek and spacious bathtub, premium linen and floor-to-ceiling glass windows.', NULL, 1, '2024-04-30 04:56:08', '2024-04-30 04:56:08'),
(3, 'Riverside Pool Villa', NULL, 'riverside-pool-villa', 'These luxurious pool villas take full advantage of the peace and the serenity of the surrounding lush jungle, combined with the rhythmic sound of Ayung river and its cascading waterfalls below.', '<p>These luxurious pool villas take full advantage of the peace and the serenity of the surrounding lush jungle, combined with the rhythmic sound of Ayung river and its cascading waterfalls below. Designed in an authentic Balinese style, the Riverside Pool Villas are perched high on wooden pillars in a traditional Balinese manner and are completely linked with nature. Their expansive decks feature a private infinity pool, poolside gazebo and dining table, making them the ideal spot to relax and take in the sights and sounds of the surrounding rainforest.&nbsp;</p>', 'images/accommodation/hero_image/01HWPW766YM3TYFVGRNQNZ6JE2.webp', NULL, NULL, NULL, 'Riverside Pool Villa', 'These luxurious pool villas take full advantage of the peace and the serenity of the surrounding lush jungle, combined with the rhythmic sound of Ayung river', NULL, 1, '2024-04-30 05:49:04', '2024-05-14 06:02:30'),
(4, 'Panoramic Pool Villa', NULL, 'panoramic-pool-villa', 'Set amongst the hotel’s terraced gardens with the panoramic views of the valley, the let you hide away in total privacy and are designed to offer guests a sense of seclusion and tranquillity, allowing them to immerse themselves in the natural beauty of the Ayung River Valley. ', '<p>Set amongst the hotel’s terraced gardens with the panoramic views of the valley, the let you hide away in total privacy and are designed to offer guests a sense of seclusion and tranquillity, allowing them to immerse themselves in the natural beauty of the Ayung River Valley. A large terrace makes the perfect relaxation spot and space to embrace nature, while floor-to-ceiling windows allow the tranquil jungle atmosphere to flow into the room. The private infinity pools often overlook the lush landscape, providing a breathtaking and immersive experience.&nbsp;</p>', 'images/accommodation/hero_image/01HWPW9YB7QE8VT6R3793TPC55.webp', NULL, 'Explore', NULL, 'Panoramic Pool Villa', 'Set amongst the hotel’s terraced gardens with the panoramic views of the valley, the let you hide away in total privacy', NULL, 1, '2024-04-30 05:50:34', '2024-04-30 05:52:41'),
(5, 'Family Pool Villa', NULL, 'family-pool-villa', 'Specially designed to accommodate families, these villas feature two luxurious bedrooms and two spacious bathrooms. The upper level includes a master bedroom, an indoor/outdoor bathroom, large terrace, infinity pool and a poolside gazebo. ', '<p>Specially designed to accommodate families, these villas feature two luxurious bedrooms and two spacious bathrooms. The upper level includes a master bedroom, an indoor/outdoor bathroom, large terrace, infinity pool and a poolside gazebo. A second bedroom is located on the lower level, along with an additional bathroom and a further terrace with sunbeds.<br><br>With floor to ceiling windows on both floors, these villas offer guests spectacular views across the valley. These villas include spacious living areas and a private pool with spectacular views across the valley. Family Pool Villas aim to provide a comfortable and enjoyable stay for families, allowing them to relax and spend quality time together in a luxurious and scenic setting.&nbsp;</p>', 'images/accommodation/hero_image/01HWPWC4ZP8X76ZTV1T7TDQFHJ.jpg', NULL, 'Explore', NULL, 'Family Pool Villa', 'Specially designed to accommodate families, these villas feature two luxurious bedrooms and two spacious bathrooms.', NULL, 1, '2024-04-30 05:51:47', '2024-04-30 05:52:44');

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_facility`
--

DROP TABLE IF EXISTS `accommodation_facility`;
CREATE TABLE IF NOT EXISTS `accommodation_facility` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `accommodation_id` bigint UNSIGNED NOT NULL,
  `facility_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodation_facility_accommodation_id_foreign` (`accommodation_id`),
  KEY `accommodation_facility_facility_id_foreign` (`facility_id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodation_facility`
--

INSERT INTO `accommodation_facility` (`id`, `accommodation_id`, `facility_id`, `created_at`, `updated_at`) VALUES
(1, 3, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 3, 3, NULL, NULL),
(4, 3, 4, NULL, NULL),
(5, 3, 5, NULL, NULL),
(6, 3, 6, NULL, NULL),
(7, 3, 7, NULL, NULL),
(8, 3, 8, NULL, NULL),
(9, 3, 9, NULL, NULL),
(10, 3, 10, NULL, NULL),
(11, 3, 11, NULL, NULL),
(12, 3, 12, NULL, NULL),
(13, 3, 13, NULL, NULL),
(14, 3, 14, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accommodation_images`
--

DROP TABLE IF EXISTS `accommodation_images`;
CREATE TABLE IF NOT EXISTS `accommodation_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `accommodation_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accommodation_images_accommodation_id_foreign` (`accommodation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accommodation_images`
--

INSERT INTO `accommodation_images` (`id`, `accommodation_id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, '1', 'images/accommodation/images/01HXTYKK9A3S3R04VX1PFMWYYH.jpg', 1, '2024-05-14 06:03:27', '2024-05-14 06:03:27'),
(2, 3, '2', 'images/accommodation/images/01HXTYM0TABPAWES0ED5PX42TM.jpg', 1, '2024-05-14 06:03:41', '2024-05-14 06:03:41'),
(3, 3, '3', 'images/accommodation/images/01HXTYMEBWD07C12ZYH208WZYJ.jpg', 1, '2024-05-14 06:03:55', '2024-05-14 06:03:55'),
(4, 3, '4', 'images/accommodation/images/01HXTYMWBAXZWHP4KDXSZQZRQB.webp', 1, '2024-05-14 06:04:09', '2024-05-14 06:04:09'),
(5, 3, '5', 'images/accommodation/images/01HXTYNC81PS6FNB5FZ9BJWA5J.jpg', 1, '2024-05-14 06:04:26', '2024-05-14 06:04:26'),
(6, 3, '6', 'images/accommodation/images/01HXTYNV59CGXF77ZJVESWNHTR.jpg', 1, '2024-05-14 06:04:41', '2024-05-14 06:04:41'),
(7, 3, '7', 'images/accommodation/images/01HXTYPAB5K52QH44XF0B9NX60.jpg', 1, '2024-05-14 06:04:56', '2024-05-14 06:04:56'),
(8, 3, '8', 'images/accommodation/images/01HXTYPTY2VSEHE2HV8MGQRC1T.jpg', 1, '2024-05-14 06:05:13', '2024-05-14 06:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
CREATE TABLE IF NOT EXISTS `awards` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `awards`
--

INSERT INTO `awards` (`id`, `title`, `subtitle`, `excerpt`, `description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'LUXURY LIFESTYLE AWARDS ASIA', 'The Resort That Definately Deserves Golden Crown', 'We are delighted to share, that Hanging Gardens of Bali has recently joined the Luxury Lifestyle Awards Asia as a nominee for another award — the Golden Crown!', '<p>We are delighted to share, that Hanging Gardens of Bali has recently joined the Luxury Lifestyle Awards Asia as a nominee for another award — the Golden Crown!</p><p>Luxury Lifestyle Awards is an international Award granted to the companies in luxury segment for their initiatives and outstanding achievements.</p><p>The Gala Ceremony will take place in February 2016 in Singapore and Hanging Gardens of Bali is shortlisted in the “Best Luxury Hotel” category.</p>', 'images/awards/01HXRCYZC7JR2R22Q69QV5PBP6.jpg', 0, 1, '2024-05-13 06:16:37', '2024-05-13 06:16:37'),
(2, 'WORLD LUXURY SPA AWARDS 2017', 'Spa Collection being named as \"Luxury Hideaway Spa\"', 'With great honor and delight we would like to share a glorious victory of the Spa Collection being named “Luxury Hideaway Spa” by World Luxury Spa Awards 2017.', '<p>With great honor and delight we would like to share a glorious victory of the Spa Collection being named “Luxury Hideaway Spa” by World Luxury Spa Awards 2017.</p><p>The Award serves as recognition of sustained commitment to service excellence and outstanding achievement in the international luxury Spa and Wellness industry and hereby certifies the participation of the winner in the 2017 World Luxury Spa Awards.</p><p>The team at Hanging Gardens of Bali is delighted for a new acknowledgment of the quality of service and facilities of our Destination.</p>', 'images/awards/01HXRDXKS9TZQBNYSH5CZKEYHT.png', 0, 1, '2024-05-13 06:33:21', '2024-05-13 06:33:21'),
(3, 'MORE THAN 300 MEDIA PUBLICATIONS IN 2017', 'Has been featured in more than 300 Media Publications since the start of 2017', 'We are delighted to share, that Hanging Gardens of Bali has been featured in more than 300 Media Publications since the start of 2017.', '<p>We are delighted to share, that Hanging Gardens of Bali has been featured in more than 300 Media Publications since the start of 2017.<br><br>Big names, such as Vogue Magazine, Harpers Bazaar, Tatler, GQ, Conde Nast Traveller and Architectural Digest has featured the iconic destination and it’s magnificent swimming pool.<br><br>Not to mention, that all our International guests has admired the luxurious facilities of our Hotel and featured them on most popular social media platforms for millions of people to see.<br><br>So, when is your turn to visit Hanging Gardens of Bali?</p>', 'images/awards/01HXRG65F0J1TSV03D2DRXKT8S.png', 0, 1, '2024-05-13 07:12:58', '2024-05-14 03:59:07'),
(4, 'SMART TRAVEL ASIA READERS', 'Has been cited for Excellence as a \"Hot 25 Spa Hotel in Asia\"', 'Top ranked travel brands in Asia. It’s people who make the brands – not corporate logos – said readers, voting in Asia’s best hotels and cities and the world’s best airlines and airports.', '<p>Top ranked travel brands in Asia<br><br>It’s people who make the brands – not corporate logos – said readers, voting in Asia’s best hotels and cities and the world’s best airlines and airports.<br><br>Smart Travel Asia is the region’s dedicated online travel magazine with 1.2 million readers worldwide – frequent travellers in the know.<br><br>And we are proud to share, that Hanging Gardens of Bali has been cited for Excellence as a “Hot 25 Spa Hotel in Asia” by Smart Travel Asia readers.<br><br>The team at Hanging Gardens of Bali is delighted for a new acknowledgment of the quality of service and facilities of our Destination.</p>', 'images/awards/01HXRG81RPW53TAAPWREVPBSXT.jpg', 0, 1, '2024-05-13 07:14:00', '2024-05-13 07:14:00'),
(5, 'LUXURY TRAVEL GUIDE AWARDS 2017', 'Named as \"Luxury Resort of The Year\"', 'We are delighted to share, that Hanging Gardens of Bali has been named as a \"Luxury Resort of the Year\" by the Luxury Travel Guide Awards 2017.', '<p>We are delighted to share, that Hanging Gardens of Bali has been named as a “Luxury Resort of the Year” by&nbsp; the Luxury Travel Guide Awards 2017.<br><br>The Luxury Travel Guide Awards represent the pinnacle of travel and tourism achievement, championing the best in their respective fields; therefore to come out on top is truly an achievement for Hanging Gardens of Bali!<br><br>The team at Hanging Gardens of Bali is delighted for a new acknowledgment of the quality of service and facilities of our Destination.</p>', 'images/awards/01HXRG9MYSRYBBDTA8VXAP8Q57.jpg', 0, 1, '2024-05-13 07:14:52', '2024-05-13 07:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

DROP TABLE IF EXISTS `blogs`;
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `meta_title`, `meta_description`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'What is Lorem Ipsum?', NULL, 'what-is-lorem-ipsum', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'images/blog/01HXTKHFG1V1QKXVX06CRQR7BJ.png', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 1, 1, '2024-05-14 02:50:04', '2024-05-14 04:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1715670335;', 1715670335),
('356a192b7913b04c54574d18c28d46e6395428ab', 'i:3;', 1715670335),
('a17961fa74e9275d529f489537f179c05d50c2f3:timer', 'i:1714650500;', 1714650501),
('a17961fa74e9275d529f489537f179c05d50c2f3', 'i:1;', 1714650501);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `careers`
--

INSERT INTO `careers` (`id`, `title`, `subtitle`, `excerpt`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VACANCIES', NULL, '5 star resort Hanging Gardens of Bali, located in Banjar Susut, Buahan Village, Payangan, Gianyar - Bali, is actively looking for talents to join our company with the following positions', '<p>5 star resort Hanging Gardens of Bali, located in Banjar Susut, Buahan Village, Payangan, Gianyar - Bali, is actively looking for talents to join our company with the following positions:</p><ol><li>Asst. Marketing Manager/ Marketing Executive</li><li>Sous Chef</li><li>Housekeeping Supervisor&nbsp;</li><li>Senior Butler</li><li>Waiter/ss</li><li>Spa Therapist</li><li>Cook&nbsp;</li><li>Bell Boy Daily Worker</li></ol><p>Requirements:</p><ul><li>Proven experience minimum 3 (three) years in same position</li><li>Extensive knowledge of marketing strategies, channels, and branding (1)</li><li>Able to interact with VVIP Guest (1)</li><li>A seasoned culinary expert with a diverse skill set, adept at serving high-end clients. Creative, hands-on, and personable (2)</li><li>Proven experience in servicing high-end clients, demonstrating creativity and a hands-on approach. Possesses an outgoing personality (3)</li><li>Accomplished in serving high-end clients, with a track record of excellence. Creative, hands-on, and outgoing, available 24/7 for client needs (4)</li><li>Proficient in delivering exceptional service to high-end clientele, with a track record of excellence. Creative, hands-on, and familiar with VHP system (5)</li><li>Sound knowledge of yoga and beauty skills would be an advantage (6)</li><li>Experienced in preparing multi-cuisine dishes for high-end clients, demonstrating creativity and hands-on culinary skills (7)</li><li>Has driving license (8)</li><li>Good personality, positive attitude, highly motivated and team player</li><li>Able to join immediately</li></ul><p>If you feel that you are the perfect candidate for the position above, please send your application letter, recent resume and current photograph.</p><p>With format:</p><p>Name_Position Applied</p><p>To: <a href=\"mailto:hrm@hanginggardensofbali.com\"><span style=\"text-decoration: underline;\">hrm@hanginggardensofbali.com</span></a> cc <a href=\"mailto:hrspv@hanginggardensofbali.com\"><span style=\"text-decoration: underline;\">hrspv@hanginggardensofbali.com</span></a>&nbsp;</p>', NULL, 1, '2024-05-14 04:17:43', '2024-05-14 04:17:43');

-- --------------------------------------------------------

--
-- Table structure for table `custom_fields`
--

DROP TABLE IF EXISTS `custom_fields`;
CREATE TABLE IF NOT EXISTS `custom_fields` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `blog_id` bigint UNSIGNED NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` longtext COLLATE utf8mb4_unicode_ci,
  `secondary_image` longtext COLLATE utf8mb4_unicode_ci,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `custom_fields_blog_id_foreign` (`blog_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `custom_fields`
--

INSERT INTO `custom_fields` (`id`, `blog_id`, `layout`, `main_image`, `secondary_image`, `title`, `subtitle`, `excerpt`, `button_label`, `button_value`, `created_at`, `updated_at`) VALUES
(1, 1, 'visual-insights', 'images/blog/custom_fields/main/01HXTKHFGWYXX9JTXRJRXQ632D.png', NULL, 'Why do we use it?', NULL, 'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\',', NULL, NULL, '2024-05-14 02:50:04', '2024-05-14 02:50:04'),
(2, 1, 'dual-perspectives', 'images/blog/custom_fields/main/01HXTKKVDSC6MZTSJGN8MA6GS1.png', 'images/blog/custom_fields/secondary/01HXTKKVE0V7BMSZ7D4X7MBS6T.png', 'Where does it come from?', 'Where can I get some?', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source.', NULL, NULL, '2024-05-14 02:50:04', '2024-05-14 02:51:21');

-- --------------------------------------------------------

--
-- Table structure for table `dinings`
--

DROP TABLE IF EXISTS `dinings`;
CREATE TABLE IF NOT EXISTS `dinings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `dinings`
--

INSERT INTO `dinings` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `hero_image`, `cover_image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Lounge & Bar', NULL, 'lounge-bar', NULL, '<p>The lounge features a luxurious bar, stocked with an impressive collection of premium spirits, exotic cocktails, and vintage wines. Our expert bartenders are skilled in the art of mixology and ready to craft the perfect drink to suit your mood.</p>', 'images/dinings/01HWWQMWDV51E432984YWRCSGG.jpg', 'images/dinings/cover_image/01HWWR1MEJ1NCH6N01M6FR7C7N.jpg', 1, '2024-05-02 05:24:36', '2024-05-02 05:31:34'),
(2, 'Breakfast', NULL, 'breakfast', NULL, '<p>Start your day off right with a visit to Sunrise Delights, the ideal spot for breakfast enthusiasts seeking a blend of comfort and gourmet culinary experiences.</p>', 'images/dinings/hero_image/01HWWRJS2PNT7477Y36BEBT9E6.jpg', 'images/dinings/cover_image/01HWWRJS2RDA24487TCT6BVBAJ.jpg', 1, '2024-05-02 05:40:56', '2024-05-02 05:40:56');

-- --------------------------------------------------------

--
-- Table structure for table `dining_images`
--

DROP TABLE IF EXISTS `dining_images`;
CREATE TABLE IF NOT EXISTS `dining_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `dining_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `experiences`
--

INSERT INTO `experiences` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `price`, `per`, `button_label`, `button_value`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'VIP Butler', NULL, 'vip-butler', NULL, '<p>Enhance your stay at Hanging Gardens of Bali with our private VIP Butler who will assist you to your every need. Our VIP Butler will ensure a personalized luxury stay experience. They will assist you from check-in to check-out, preparing coffee and/or tea, prepare your bath, scheduling entertainment, arranging transportation and even be your private concierge to help you plan your day-to-day activities during your stay.</p><p><strong>Terms &amp; Conditions:</strong></p><ul><li>Advance reservation is required and butler is subject to availability</li><li>Butler service is 16 hours from 7am to 11pm daily</li><li>Full payment will be required at time of reservation</li><li>Cancellation or schedule changes can be made 24 hours prior to the reserved day</li></ul>', 'images/experiences/01HWW2KZ0APME3DWJW1189HDAG.jpg', 'IDR 3,000,000++', 'Per 6 hours', NULL, NULL, 0, 1, '2024-05-02 06:17:06', '2024-05-02 06:17:06'),
(2, 'VIP Airport Transfer', NULL, 'vip-airport-transfer', 'Begin your luxury experience with our designated VIP airport transfer from Ngurah Rai International Airport direct to mystical Ubud jungle where Hanging Gardens of Bali resides.', '<p>Begin your luxury experience with our designated VIP airport transfer from Ngurah Rai International Airport direct to mystical Ubud jungle where Hanging Gardens of Bali resides. The VIP transfer is inclusive of designated butler, baggage assistance, towels and refreshment. iPad and wi-fi is available in the vehicle as well as pre-arrival check-in.</p><p><strong>Terms &amp; Conditions:</strong></p><ul><li>Advance reservation is required and is subject to availability</li><li>Full payment will be required at time of reservation</li><li>Cancellation or schedule changes can be made 24 hours prior to the reserved day</li><li>Cancellation or schedule changes within 24 hours of reserved date will incur 100% cancelation fee</li></ul>', 'images/experiences/01HWW2P3Q37MFE5EX4ZHRHKB7H.webp', 'IDR 4,200,000++', 'Per car / one way', NULL, NULL, 0, 1, '2024-05-02 06:18:17', '2024-05-14 04:01:21'),
(3, 'The Morning Walk', NULL, 'the-morning-walk', NULL, '<p>A walk across rice paddies and river valleys to explore the Balinese medicinal plants along the way, will enhance your visit to the local villages, led by our experienced holiday guide.<br>Explore the rural lifestyle of our neighbouring village and discover fascinating aspects of day-to-day life.<br>Experience the locals\' health practices using indigenous plants, herbal remedies, roots, fruits, and vegetables, while you recharge with a refreshing drink amid the rice fields.</p>', 'images/experiences/01HWW2QTPC0BP14BSPK51T52E4.webp', 'IDR 240,000++', 'Per person', NULL, NULL, 0, 1, '2024-05-02 06:19:13', '2024-05-02 06:19:13');

-- --------------------------------------------------------

--
-- Table structure for table `experience_images`
--

DROP TABLE IF EXISTS `experience_images`;
CREATE TABLE IF NOT EXISTS `experience_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `experience_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `facilities`
--

INSERT INTO `facilities` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, '100 sqm', NULL, 'images/accommodation/facilities/01HXTVJFZ6MQ5ATTT038G6769V.png', 1, '2024-05-14 05:10:25', '2024-05-14 05:10:25'),
(2, 'Home Audio & Visual System', NULL, 'images/accommodation/facilities/01HXTVQANRGW0W9TCTXND9R5S8.png', 1, '2024-05-14 05:13:04', '2024-05-14 05:13:04'),
(3, 'Safety Box', NULL, 'images/accommodation/facilities/01HXTVV2WQA74R9YP18K1A93GP.png', 1, '2024-05-14 05:15:07', '2024-05-14 05:15:07'),
(4, 'Outdoor Gazebo & Sunbeds', NULL, 'images/accommodation/facilities/01HXTVVW7JMC04Z9JJBSCKPWT9.png', 1, '2024-05-14 05:15:33', '2024-05-14 05:15:33'),
(5, 'Coffee Tea Making Facilities', NULL, 'images/accommodation/facilities/01HXTVXRGF43CXPNQC3APND1B8.png', 1, '2024-05-14 05:16:35', '2024-05-14 05:16:35'),
(6, 'Minibar', NULL, 'images/accommodation/facilities/01HXTVY8H76N5C11YGNG5FBMZ0.png', 1, '2024-05-14 05:16:51', '2024-05-14 05:16:51'),
(7, 'Luxurious Toiletries', NULL, 'images/accommodation/facilities/01HXTVYXWKE3DEN98G50P0BQ7A.png', 1, '2024-05-14 05:17:13', '2024-05-14 05:17:13'),
(8, 'Infinity Private Pool', NULL, 'images/accommodation/facilities/01HXTWFW0D61WGXB71T278C553.png', 1, '2024-05-14 05:26:28', '2024-05-14 05:26:28'),
(9, 'King Size', NULL, 'images/accommodation/facilities/01HXTWGDHAPPHJV44GPGC3F88N.png', 1, '2024-05-14 05:26:46', '2024-05-14 05:26:46'),
(10, 'Hair Dryer', NULL, 'images/accommodation/facilities/01HXTWGXXSPS94V9XMNYNZ8A0H.png', 1, '2024-05-14 05:27:03', '2024-05-14 05:27:03'),
(11, '2 Persons', NULL, 'images/accommodation/facilities/01HXTWHNTJ5J6SM8521VGVK0Q3.png', 1, '2024-05-14 05:27:27', '2024-05-14 05:27:27'),
(12, 'Deluxe handmade terrazzo bathtub', NULL, 'images/accommodation/facilities/01HXTWJXKSJFAN5T69TSWZZSNV.png', 1, '2024-05-14 05:28:08', '2024-05-14 05:28:08'),
(13, 'Cotton Bathrobes & Slippers', NULL, 'images/accommodation/facilities/01HXTWKF8CHRP4DYFP8AW4QXGX.png', 1, '2024-05-14 05:28:26', '2024-05-14 05:28:26'),
(14, 'Wireless Internet', NULL, 'images/accommodation/facilities/01HXTWM23X9T8AP07T2SF1HAJ1.png', 1, '2024-05-14 05:28:45', '2024-05-14 05:28:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `honeymoons`
--

INSERT INTO `honeymoons` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `price`, `button_label`, `button_value`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Honeymoon Packages - 4 Days 3 Nights', NULL, 'honeymoon-packages-4-days-3-nights', NULL, '<p>Escape to a place with magnificent views, and exquisite cuisine in complete privacy. Enjoy the perfect honeymoon in Bali with your own private pool villa. Our Bali honeymoon villa combines peaceful relaxation with a thrilling adventure honeymoon. Luxuriate in our romantic selection of couples spas and other romantic moments tailored just for you...<br><br><strong>Experience:</strong></p><ul><li>3 nights in a Panoramic Pool Villa</li><li>Daily breakfast: anytime, anywhere! including 1 time floating breakfast</li><li>Honeymoon set up &amp; gift</li><li>A romantic dinner under the stars</li><li>A bottle of Champagne served at your preferred time</li><li>A 90-minute couples massage including welcome drink, foot ritual, full body oil massage and ginger tea&nbsp;</li><li>A round of sunset cocktails for the first night served at scenic lounge bar terrace</li></ul>', 'images/honeymoon/01HXGPDB4M6HCJQB41AWZ4745Y.jpg', NULL, NULL, NULL, 0, 1, '2024-05-10 06:27:49', '2024-05-10 06:27:49'),
(2, 'Honeymoon Packages - 7 Days 6 Nights', NULL, 'honeymoon-packages-7-days-6-nights', NULL, '<p>Surrounded by natural beauty, Hanging Gardens Of Bali is an idyllic Bali honeymoon villa. Our team will assist in making your Bali honeymoon package for 7 days - from a couples spa treatment to an intimate dining experience, to ensure your honeymoon in Bali become a once-in-a-lifetime experience.<br><br><strong>Experience:</strong></p><ul><li>6 nights in a Panoramic Pool Villa</li><li>Daily breakfast: anytime, anywhere! including 2 times floating breakfast</li><li>Honeymoon set up &amp; gift</li><li>A romantic dinner under the stars</li><li>A bottle of Champagne served at your preferred time</li><li>Two 90-minute couples massages including welcome drink, foot ritual, full body oil massage and ginger tea&nbsp;</li><li>A round of sunset cocktails for the first night served at scenic lounge bar terrace</li></ul>', 'images/honeymoon/01HXGPE40EBE91T3ZBXTFWMW2P.jpg', NULL, NULL, NULL, 0, 1, '2024-05-10 06:28:15', '2024-05-14 03:58:48');

-- --------------------------------------------------------

--
-- Table structure for table `honeymoon_images`
--

DROP TABLE IF EXISTS `honeymoon_images`;
CREATE TABLE IF NOT EXISTS `honeymoon_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `honeymoon_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(27, '2024_04_26_035252_create_mini_pop_ups_table', 3),
(28, '2024_05_14_094738_create_custom_fields_table', 4),
(29, '2024_05_14_125648_create_accommodation_facility_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `mini_pop_ups`
--

DROP TABLE IF EXISTS `mini_pop_ups`;
CREATE TABLE IF NOT EXISTS `mini_pop_ups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cover_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_night` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `promo_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `offers`
--

INSERT INTO `offers` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `hero_image`, `cover_image`, `button_label`, `button_value`, `min_night`, `promo_code`, `valid`, `meta_title`, `meta_description`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Millionaire Day Pass', NULL, 'millionaire-day-pass', 'Book a daycation at the iconic Hanging Gardens of Bali, we offer a Day-Pass available to everyone wishing to relax at our jungle resort.', '<p>Book a daycation at the iconic Hanging Gardens of Bali, we offer a Day-Pass available to everyone wishing to relax at our jungle resort.<br>Sip a fresh mocktail by one of our iconic pools, try our all-day dining menu, pamper yourself by experiencing our luxury Spa Collection, the choice is all yours.<br><br><strong>Experience:</strong></p><p>Welcome mocktail<br>IDR 1,000,000 F&amp;B credit<br>Pool access and towels<br>Sunbed based on availability<br><br>From <strong>IDR 1,000,000</strong> Per two persons<br><br><em>*Minimum spend at </em><strong><em>IDR 300,000</em></strong><em> F&amp;B per person, without pool access</em></p>', 'images/offers/hero_image/01HWN3CMCEC1RJQDPXNBTFKX8P.jpg', NULL, NULL, NULL, NULL, NULL, NULL, 'Millionaire Day Pass', 'Book a daycation at the iconic Hanging Gardens of Bali, we offer a Day-Pass available to everyone wishing to relax at our jungle resort.', 0, 1, '2024-04-29 06:15:54', '2024-04-29 06:15:54'),
(2, 'Direct Booking 10% Off', NULL, 'direct-booking-10-off', 'Experience the ultimate luxury staycation at Hanging Gardens Of Bali. Don\'t delay - book now and seize the opportunity to save big with no minimum stay.', '<p>Experience the ultimate luxury staycation at Hanging Gardens Of Bali. Don\'t delay - book now and seize the opportunity to save big with no minimum stay. Book your next stay directly on our website and enjoy the additional 10% Off by using code PRICEBREAKER.</p>', 'images/offers/hero_image/01HWN3EH3TJG0599YADZ7E9PR2.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'Direct Booking 10% Off', 'Experience the ultimate luxury staycation at Hanging Gardens Of Bali. Don\'t delay - book now and seize the opportunity to save big with no minimum stay.', 0, 1, '2024-04-29 06:16:56', '2024-05-14 04:01:45'),
(3, 'Family Package', NULL, 'family-package', 'Treat your family to an unforgettable 2-night journey in the Hanging Gardens of Bali\'s jungle, stay in a Family Pool Villa, and have some fun at our iconic pools.', '<p>Treat your family to an unforgettable 2-night journey in the Hanging Gardens of Bali\'s jungle, stay in a Family Pool Villa, and have some fun at our iconic pools. This is the perfect opportunity to reconnect as a family and create lasting memories.<br><br>Day 1 begins the process with a 60-minute Balinese couples massage as well as for the children. Day 2 includes a family cooking class with lunch, a fun traditional dance lesson at sunset, 60-minute foot Reflexology for parents and a once-in-a-lifetime family dinner at the temple, simply a unique experience. On the final morning embark on a walk across rice paddies and river valleys to explore the Balinese medicinal plants along the way, while you recharge with a hearty breakfast amid the rice fields.</p><p>Program:<br><strong>Day 1&nbsp;</strong></p><ul><li>Check in and orientation</li><li>60-minute Balinese couples massage + kids’ massage (from 6 years old and up to two children)</li></ul><p><strong>Day 2</strong></p><ul><li>Family cooking class</li><li>Sunset Balinese traditional dance lesson</li><li>One time 60-minute foot reflexology (parents)</li><li>Family secret temple dinner</li></ul><p><strong>Day 3</strong></p><ul><li>Morning walk and breakfast in the rice field</li></ul><p><strong>Terms &amp; Conditions:</strong></p><ul><li>Additional night: get 25% off from our Flexi Plus rates</li><li>Non-refundable 50% down payment required</li></ul>', 'images/offers/hero_image/01HWN5067QTAXBFD2A46YDVMJT.webp', NULL, NULL, NULL, NULL, NULL, NULL, 'Family Package', 'Treat your family to an unforgettable 2-night journey in the Hanging Gardens of Bali. Stay in a Family Pool Villa, and have some fun at our iconic pools.', 0, 1, '2024-04-29 06:44:03', '2024-04-29 06:44:03');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `hero_image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `page_name`, `title`, `slug`, `subtitle`, `excerpt`, `description`, `hero_image`, `button_label`, `button_value`, `meta_title`, `meta_description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Homepage', 'Hanging Gardens of Bali', 'hanging-gardens-of-bali', NULL, NULL, '<p>Experience a gastronomic adventure that is without equal in Bali with legendary service that is the essence of Balinese hospitality. Dine while overlooking our spiritual core, \"The World\'s Best Swimming Pool\" so named by Conde Nast Traveler.</p>', 'images/page/hero_image/01HWM8WEJRJ7DTYWP5JB6M3WPY.jpg', NULL, NULL, 'Hanging Gardens, Bali Luxury Resort', 'Experience an adventure that is without equal in Bali while overlooking our spiritual core, \"The World\'s Best Swimming Pool\" so named by Conde Nast Traveler.', 1, '2024-04-28 22:32:40', '2024-04-29 05:37:14'),
(2, 'Offers', 'Exclusive Offers', 'exclusive-offers', NULL, NULL, '<p>Take advantage of the latest deals and packages from Hanging Gardens of Bali Special Offers. This includes accommodation, dining, and activities packages. Only for direct booking in our official website.</p>', 'images/page/hero_image/01HWMB9DY8RFXKX9MEFB7WBVXJ.jpg', NULL, NULL, 'Exclusive Offers', 'Take advantage of the latest deals and packages from Hanging Gardens of Bali Special Offers. This includes accommodation, dining, and activities packages.', 1, '2024-04-29 06:14:43', '2024-04-29 06:14:43'),
(3, 'Accommodation', 'Luxury Resort With Private Pool', 'luxury-resort-with-private-pool', NULL, 'Hanging Gardens of Bali has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty.', '<p>Hanging Gardens of Bali has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty. All of our villas exude a feeling of understated elegance, with trademark hand-crafted furnishings, exotic textiles, open-air dining rooms and a stunning master bathroom.</p>', 'images/page/hero_image/01HWMBJSXWFMJYBM7K501A0JSV.jpg', 'Discover Luxurious Retreats', 'accommodations.index', 'Luxury Resort With Private Pool', 'Our resort has 44 luxury villas with private pools that represent Bali\'s natural and calm beauty. All of our villas exude a feeling of understated elegance', 1, '2024-04-29 06:19:50', '2024-04-30 02:06:42'),
(4, 'Restaurant', 'Three Elements Restaurant', 'three-elements-restaurant', NULL, NULL, '<p>Three Elements Restaurant has been awarded \"World Luxury Restaurant Award 2019\", and offers an à la carte selection of appetizers, entrées and desserts as well as two unique tasting menus with optional wine pairing using the highest quality products and impeccable technique to create a modern Western and Indonesian cuisine.</p>', 'images/page/hero_image/01HWMBVK698BJQ6QPJ029KT4CK.jpg', NULL, NULL, 'Three Elements Restaurant', 'Three Elements Restaurant has been awarded \"World Luxury Restaurant Award 2019\", and offers an à la carte selection of appetizers, entrées and desserts.', 1, '2024-04-29 06:24:38', '2024-05-02 04:36:43'),
(5, 'Experiences', 'Unique Experiences', 'unique-experiences', NULL, NULL, '<p>Serene surroundings, legendary service and top Balinese hospitality - a stay at Ubud luxury resort Hanging Gardens of Bali and its Once-in-a-Lifetime Experiences, promise to create special memories that you will never forget.</p>', 'images/page/hero_image/01HWMC1GN3QCS39B28FWJ779D5.jpg', NULL, NULL, 'Unique Experiences', 'Serene surroundings, legendary service and top Balinese hospitality - a stay at Hanging Gardens of Bali and its Once-in-a-Lifetime Experiences', 1, '2024-04-29 06:27:52', '2024-04-29 06:27:52'),
(6, 'Spa', 'Ultimate Spa Relaxation', 'ultimate-spa-relaxation', NULL, NULL, '<p>Not only recognized as the best Ubud honeymoon resort, but also elected by \"World Luxury Spa Awards\" as The Best “LUXURY DESTINATION SPA\" our truly luxurious Spa Collection combines natural, local ingredients and ancient techniques, to create beauty therapies and treatments that soothe the mind, rejuvenate the body and energize the soul.</p>', 'images/page/hero_image/01HWMCA6MBXTA74P0JYE7B3FYK.jpg', NULL, NULL, 'Ultimate Spa Relaxation', 'Not only recognized as the best Ubud honeymoon resort, but also elected by \"World Luxury Spa Awards\" as The Best “LUXURY DESTINATION SPA\"', 1, '2024-04-29 06:32:37', '2024-04-29 06:32:37'),
(7, 'Honeymoon', 'Perfect Honeymoon Destinations', 'perfect-honeymoon-destinations', NULL, NULL, '<p>Whether it\'s Valentine\'s Day, a honeymoon or just a romantic getaway for two, Hanging Gardens of Bali is one of the best romantic getaway spot for your unforgetable and memorable experiences.</p>', 'images/page/hero_image/01HWMCEB63175MWJMQFEMQZENG.jpg', NULL, NULL, 'Perfect Honeymoon Destinations', 'Whether it\'s Valentine\'s Day, a honeymoon or just a romantic getaway for two, Hanging Gardens of Bali is one of the best romantic getaway', 1, '2024-04-29 06:34:52', '2024-04-29 06:34:52'),
(8, 'Weddings', 'Celebrate Your Love in Style', 'celebrate-your-love-in-style', NULL, NULL, '<p>Your wedding at Hanging Gardens of Bali will create special memories that you will never forget.</p>', 'images/page/hero_image/01HXR03CKDKZVK6T7893S51KKE.jpg', NULL, NULL, 'Celebrate Your Love in Style', 'Your wedding at Hanging Gardens of Bali will create special memories that you will never forget.', 1, '2024-04-29 06:38:22', '2024-05-13 02:31:50'),
(9, 'Awards', 'Awards', 'awards', NULL, NULL, '<p>Best Bali Resort Hotel Awards, our exceptional service has been recognized by many leading publications of the travel, hospitality and lifestyle sectors</p>', 'images/page/hero_image/01HWMDBGA0YECDEAF4BT5EHC1A.jpg', NULL, NULL, 'Awards', 'Best Bali Resort Hotel Awards, our exceptional service has been recognized by many leading publications of the travel, hospitality and lifestyle sectors', 1, '2024-04-29 06:50:48', '2024-04-29 06:50:48'),
(10, 'Story', 'The Story of Hanging Gardens of Bali', 'the-story-of-hanging-gardens-of-bali', NULL, NULL, '<p>The Hanging Gardens of Bali was conceived in 2003 and completed in 2005. The concept was to create something magical and authentic in the heart of the Balinese jungle: an immersive experience in a natural tropical environment.</p><p>With 700 local craftsmen using traditional materials and adapting indigenous ideas, the resort took shape in the heart of Ubud. A winding path of 88 steps leads from the reception to the restaurant; built with Feng Shui principles to mean infinity and stability of energy: an important factor when building on a 45 degree angle.</p><p>With 44 astonishing private villas to choose from, The Hanging Gardens of Bali is a remarkable destination for creating the most unforgettable memories.</p><p>Our guests can experience award-winning spa treatments, surprising gourmet creations and discrete privacy; all delivered with the warmth of Balinese hospitality at its best.</p><p>At the geographical epicenter and our spiritual core, is the World’s most remarkable Swimming Pool. It is without a doubt one of the most photographed pools and has the unique distinction of being named “The World’s Best Swimming Pool” by Condé Nast Traveller.</p><p>Designed by a specialist architect, the striking formation is suspended over the dense rainforest, giving swimmers the unique sensation of floating above the treetops.</p>', 'images/page/hero_image/01HWMDG3N7FT1Q0AJM402KQFSX.jpg', NULL, NULL, 'The Story of Hanging Gardens of Bali', 'The concept was to create something magical and authentic in the heart of the Balinese jungle: an immersive experience in a natural tropical environment.', 0, '2024-04-29 06:53:19', '2024-05-13 08:14:37'),
(11, 'Press Room', 'Press & Media Recognition', 'press-media-recognition', NULL, NULL, '<p>We are honored that our Ubud luxury resort with private pool was recognized by various press, media channels and leading publications of travel, hospitality and lifestyle sectors, both in Indonesia and internationally. Explore the latest news about our outstanding destination</p>', 'images/page/hero_image/01HWMDJA2FT01M9PEBS1CS3WCV.jpg', NULL, NULL, 'Press and Media Recognition', 'We are honored that our Ubud luxury resort with private pool was recognized by various press, media channels and leading publications of travel', 1, '2024-04-29 06:54:31', '2024-04-29 06:54:31'),
(12, 'Contact Us', 'Get in Touch', 'get-in-touch', NULL, NULL, '<p>Our Reservations team will assist you with your travel planning, operating 24/7 to be at your service and plan your ultimate Hanging Gardens of Bali experience.</p>', 'images/page/hero_image/01HWMDMSNXY61681QXJSHZQH2Q.jpg', NULL, NULL, 'Get in Touch', 'Our Reservations team will assist you with your travel planning, operating 24/7 to be at your service and plan your ultimate Hanging Gardens of Bali experience.', 1, '2024-04-29 06:55:52', '2024-04-29 06:55:52'),
(13, 'Sustainability', 'Sustainability', 'sustainability', NULL, NULL, '<h3><strong>Long-term sustainability at the core of our actions</strong></h3><p>The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge. The tiered structure of the villas and pools follows the natural contours of the land, creating a harmonious blend with the surrounding environment. Hanging Gardens of Bali incorporates sustainable and responsible tourism practices that respect and contribute to the preservation of the local environment. In addition, Hanging Gardens of Bali has undertaken efforts to preserve and protect the natural environment surrounding the resort, which remains in its original condition. The efforts also include the implementation of energy-efficient technologies, such as LED lighting, and energy-efficient appliances, to reduce the resort’s energy consumption and carbon footprint.&nbsp;<br><br>Water conservation is also important, water conservation measures have been implemented, including rainwater harvesting, water recycling, and the use of water-efficient landscaping practices. In addition, we have reduced the consumption of single-use plastic such as straws, disposable cutlery, and plastic bottles within the resort premises. Our water sterilization and purification systems provide guests with safe and clean drinking water. This can include the use of filtration systems and UV sterilization. Waste reduction and recycling: establishing waste reduction and recycling programs to minimize the amount of waste sent to landfills. This includes composting organic waste, recycling materials, and encouraging guests to participate in sustainable practices.</p><p>Finally, we prioritize the use of locally sourced and sustainable materials, as well as supporting local communities through responsible procurement practices. This extends to the sourcing of food and beverages for the resort’s dining facilities.</p><p>In addition, Hanging Gardens Of Bali use to be a precursor in sustainability and is the founder of The International Flower Competition (IFC) Foundation.</p><p>During the Covid-19 Pandemic, as many people were forced to stay at home and avoid activities outside their home, and many workers were working from home, the amount of free time at home makes people feel bored. The International Flower Competition (IFC) Foundation initiated a flower gardening competition in front of villagers\' houses of Banjar Susut, Payangan and it resulted numerous new floral creations in the rural village.</p>', 'images/page/hero_image/01HWMDQKD09147V3GV43MH8RJF.jpg', NULL, NULL, 'Sustainability', 'The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge', 1, '2024-04-29 06:57:24', '2024-04-29 06:57:43'),
(14, 'Policy & Legal', 'Policy & Legal', 'policy-legal', NULL, NULL, '<p><strong>LEGAL NOTICES</strong></p><p>HANGING GARDENS OF BALI WEBSITE TERMS OF USE</p><p>THIS IS A BINDING LEGAL AGREEMENT (this “Agreement”).</p><p>PLEASE READ THIS AGREEMENT BEFORE USING THIS SITE. LAST UPDATED 27/06/17.</p><ul><li>This Agreement governs your use of this Internet site located at hanginggardensofbali.com, including all webpages, applications, “Contents” (as defined below), and goods, services, features and functions provided or offered on or through this site (collectively, the “Site”) and is by and between Hanging Gardens of Bali (collectively “Hanging Gardens of Bali” “we”, “us” or “our”) and you, whether you are accessing the Site on your own, through an intermediary, or on behalf of any other person or entity (“you”). By viewing, accessing, posting on, interacting or communicating with, engaging in transactions of any kind on or through (including but not limited to making reservations), and/or in any other manner utilizing this Site, you hereby agree to the terms set forth herein, and in Hanging Gardens of Bali’s Privacy Policy at https://www.hanginggardensofbali.com/privacy. By Using the Application, in addition to the foregoing terms, you agree to the terms and conditions governing use of the Application as set forth in the “Application License Agreement.”</li></ul><p>We reserve the right, in our sole discretion, to modify, add, or remove portions of the terms of this Agreement at any time without notice. Unless otherwise indicated, such changes will become effective immediately upon our posting of the changes.</p><p>Please note that additional terms and conditions may apply to making reservations and/or check in and/or check out arrangements, and/or engaging in purchases and/or other transactions or activities on or through this Site or the Application. You agree to comply with the terms and conditions set forth herein and any and all such applicable additional terms and conditions.</p><p>We reserve the right in our sole discretion to revoke or deny your access to the Site and/or the Application, including, without limitation, if you violate any provision of this Agreement.</p><p><strong>RESTRICTIONS ON USE OF SITE AND CONTENT</strong></p><p>Except as set forth below with respect to “Communications” (as defined below): (i) all rights in the information, data, text, software, music, photographs, pictures, designs, graphics, logos, files, products, services, images, videos, messages, sounds, files, and other materials contained and/or displayed on the Site, the layout and design of the Site, and the selection and arrangement of material on the Site are owned or licensed by Hanging Gardens of Bali (hereinafter the “Content”); and (ii) you may not modify, alter, download, upload, post, reproduce, distribute, publish, transmit, copy, display, transfer, sell, re-sell, perform, license or sublicense the Content or use the Content to create derivative works in any form, manner or by any means, for any commercial purpose without the prior written permission of Hanging Gardens of Bali.</p><p>Subject to your compliance with the terms of this Agreement, we grant you a limited, non-exclusive, non-transferable license to access and use the Content solely in connection with your permitted use of the Site and solely for your personal and for non-commercial purposes.</p><ul><li>This Site displays or references valuable trademarks owned by Hanging Gardens (including but not limited to the “HANGING GARDENS OF BALI” mark, and the logo) used by Hanging Gardens of Bali to distinguish its services and wares (collectively, the “Marks”). The Marks and related proprietary property are protected from copying and simulation under national and international laws, and you may not reproduce, download, upload, copy or otherwise use the Marks in any manner without the express prior written permission of Hanging Gardens of Bali.&nbsp; Many of the Marks, including <strong>Hanging Gardens of Bali®</strong>, <strong>Hanging Gardens®</strong> AND <strong>Hanging Gardens Group®</strong>, and the logo Mark – are registered in the International Patent and Trademark Offices and/or in other trademark offices and agencies throughout the world. Other trademarks not owned by Hanging Gardens of Bali and referenced on this Site are the property of their respective owners.</li></ul><p>The Site may contain or reference the Marks, and/or other trademarks, service marks, trade names, patents, copyrighted materials, trade secrets, technologies, products, processes or other proprietary rights (collectively the “IP”) owned by Hanging Gardens and/or other parties. No license to or right in any such IP is granted to or conferred upon you and you may not use the IP for any purpose (including those identified in the restrictions provisions set forth below), except as otherwise permitted herein or as permitted by law.</p><p>In addition to the foregoing restrictions, you further agree that in connection with your Use of the Site, you will not in any manner:</p><ul><li>Use any devices or mechanisms, including but not limited to software, routines, malicious or unauthorized code, engines, tools, agents, robots, spiders, crawlers, data mining tools, viruses, worms, Trojan horses, malware, programs.</li><li>Provide or send us any information or data that includes any Devices;</li><li>Engage in any conduct that creates or is intended to create liability for Hanging Gardens;</li><li>Decipher, decompile, disassemble or reverse engineer any of the software used in connection with the Site; violate the restrictions in any robot exclusion headers on the Site or otherwise bypass, breach or circumvent any security or authentication measures and/or other measures employed to prevent or limit access to the Site; send any unsolicited or unauthorized advertising, promotional materials, email, junk mail, spam, chain letters or other form of solicitation; forge any TCP/IP packet header or any part of the header information in any email or newsgroup posting, or otherwise use or send altered, deceptive or false source-identifying information; impersonate or misrepresent your affiliation with any person or entity;</li><li>Engage in any conduct that: (i) infringes, misappropriates or violates any other party’s patent, copyright, trademark, trade secret, moral rights or other intellectual property rights, or rights of publicity or privacy; (ii) is fraudulent, false, misleading or deceptive; (iii) is defamatory, obscene, pornographic, vulgar or offensive; (iv) promotes discrimination, bigotry, racism, hatred, harassment or harm against any individual or group; (v) is violent or threatening or promotes violence or actions that are threatening to any person or entity; (vi) promotes illegal or harmful activities or substances; (vii) otherwise violates, or encourages any conduct that would violate, any applicable law, statute, ordinance, rule or regulation or that would give rise to civil liability;</li><li>Encourage or enable any other individual to do any of the foregoing.</li></ul><p>Additional restrictions on the Use of this Site are set forth in other provisions of this Agreement.</p><p><strong>RESERVATIONS/RENTALS AT HANGING GARDENS OF BALI</strong></p><p>You shall make only legitimate reservations in good faith for use only by you and/or your invited guests and/or others on whose behalf you are authorized to act, and not for other purposes, including without limitation, reselling, impermissibly assigning or posting on third party websites, or making speculative, false or fraudulent reservations, or any reservations in anticipation of demand. We reserve the right to cancel or modify reservations in our sole discretion for any reasons, including where it appears that a customer has engaged in fraudulent or inappropriate activity or under other circumstances where it appears that the reservations contain or resulted from a mistake or error, even if such mistake or error is ours. To contest the cancellation of a booking or freezing or closure of an account, please contact our Customer Support.</p><p><strong>THIRD PARTY SITES AND MATERIALS</strong></p><p>This Site contains links to websites and resources operated by parties other than us, who may provide goods and/or services and whose websites may link to our Site (hereinafter “Third Party Sites”). Such links are provided for your convenience only. We do not control such Third Party Sites and are not responsible for their content or accuracy. We make no warranties regarding and are not liable or responsible for them, for links displayed on such websites or for any third party materials, products, or services that you purchased, rent, lease or otherwise acquire from such Third Party Sites. The inclusion on the Site of links to Third Party Sites does not imply any endorsement or accuracy of the material on such websites or any association with their operators. You acknowledge sole responsibility for and assume all risk arising from your use of any Third Party Sites.</p><p><strong>HANGING GARDENS OF BALI’S RIGHT TO MAKE CHANGES</strong></p><p>Hanging Gardens of Bali reserves the right to make changes, corrections, cancellations and/or improvements to the Site and Content, and the products, services and programs described therein at any time without notice, including after confirmation of a transaction.</p><p><strong>DISCLAIMER AND LIMITATION OF LIABILITY AND WAIVER</strong></p><p>Your Use of the Site and the Application is at your own risk. The Site and the Application are provided “as is” and on an “as available” basis without representations or warranties of any kind, either express, implied or statutory. To the maximum extent permissible pursuant to applicable law, on behalf of the Indemnified Parties, we expressly disclaim all warranties, express or implied, including, but not limited to, implied warranties of merchantability, fitness for a particular purpose, title, non-infringement, design, accuracy, capability, sufficiency, suitability, capacity, completeness, availability or compatibility, or arising from course of dealing or course of performance.</p><p><strong>ELECTRONIC COMMUNICATIONS PRIVACY</strong></p><p>We make no guaranty of confidentiality or privacy of any Communications or information transmitted on the Site or any website linked to the Site. We will not be liable for the privacy of Communications and/or any other information, e-mail addresses, registration and identification information, disk space, confidential or trade-secret information, or any other content transmitted over networks accessed by the Site, or otherwise connected with your use of the Site.</p><p><strong>TERMS &amp; CONDITIONS:</strong></p><ul><li>Rate quoted is for 2 guests per villa / per night.</li><li>Full prepayment is required at time of booking.</li><li>Booking is non-amendable and non-refundable.</li><li>In the event of no-show (i.e should you neither use or cancel your reservation), a fee equivalent to your entire stay will be charged.</li><li>All fees and penalty are inclusive of service charge and government tax.</li></ul><p><br></p><p>CONTACT INFORMATION</p><p>If you have any questions about this Agreement please contact us at:<br>Hanging Gardens Of Bali<br>Desa Buahan Payangan, Gianyar, Bali 80571, Indonesia<br>Tel. +62 361 982700 Fax. +62 361 982800<br>E. <a href=\"mailto:reservations@hanginggardensofbali.com\"><span style=\"text-decoration: underline;\">reservations@hanginggardensofbali.com</span></a><br>W. <a href=\"https://hanginggardensofbali.com/\"><span style=\"text-decoration: underline;\">www.hanginggardensofbali.com</span></a></p><p><br></p><p>Copyright © 2005-2024 Hanging Gardens. All rights reserved.ept as otherwise provided herein, if any provision of this Agreement is found by a court to be unlawful, void, or for any reason unenforceable, then that provision shall be deemed severable from this Agreement and shall not affect the validity and enforceability of any remaining provisions.</p>', 'images/page/hero_image/01HWMDVE514KR8VFGRZBRJRVKK.jpg', NULL, NULL, 'Policy & Legal', 'We reserve the right, in our sole discretion, to modify, add, or remove portions of the terms of this Agreement at any time without notice.', 1, '2024-04-29 06:59:30', '2024-04-29 06:59:30'),
(15, 'Story', 'Story', 'story', NULL, NULL, '<p>Learn more about the hidden gems in Bali, attractions to visit and our other insider tips to guide your getaway in Bali</p>', 'images/page/hero_image/01HWMDXX3SKAQ1Y8625WY3CQNA.jpg', NULL, NULL, 'Story', 'Learn more about the hidden gems in Bali, attractions to visit and our other insider tips to guide your getaway in Bali', 1, '2024-04-29 07:00:51', '2024-05-14 01:22:59'),
(16, 'Careers', 'Careers', 'careers', NULL, NULL, '<p>A unique combination of world-class talent, unmatched design, and access to locations, cultures, and experiences few people have access to enables us to achieve our ambitions. Our team of hundreds of our employees is always looking for passionate individuals to join our growing team.</p>', 'images/page/hero_image/01HWME08VZ5XSP97ZNYSETARQ9.jpg', NULL, NULL, 'Careers', 'Our team of hundreds of our employees is always looking for passionate individuals to join our growing team.', 1, '2024-04-29 07:02:08', '2024-04-29 07:02:08'),
(17, 'Sustainability ', 'Sustainability ', 'sustainability', NULL, NULL, '<h3><strong>Long-term sustainability at the core of our actions</strong></h3><p>The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge. The tiered structure of the villas and pools follows the natural contours of the land, creating a harmonious blend with the surrounding environment. Hanging Gardens of Bali incorporates sustainable and responsible tourism practices that respect and contribute to the preservation of the local environment. In addition, Hanging Gardens of Bali has undertaken efforts to preserve and protect the natural environment surrounding the resort, which remains in its original condition. The efforts also include the implementation of energy-efficient technologies, such as LED lighting, and energy-efficient appliances, to reduce the resort’s energy consumption and carbon footprint.&nbsp;<br><br>Water conservation is also important, water conservation measures have been implemented, including rainwater harvesting, water recycling, and the use of water-efficient landscaping practices. In addition, we have reduced the consumption of single-use plastic such as straws, disposable cutlery, and plastic bottles within the resort premises. Our water sterilization and purification systems provide guests with safe and clean drinking water. This can include the use of filtration systems and UV sterilization. Waste reduction and recycling: establishing waste reduction and recycling programs to minimize the amount of waste sent to landfills. This includes composting organic waste, recycling materials, and encouraging guests to participate in sustainable practices.<br><br>Finally, we prioritize the use of locally sourced and sustainable materials, as well as supporting local communities through responsible procurement practices. This extends to the sourcing of food and beverages for the resort’s dining facilities.<br><br>In addition, Hanging Gardens Of Bali use to be a precursor in sustainability and is the founder of The International Flower Competition (IFC) Foundation.<br><br>During the Covid-19 Pandemic, as many people were forced to stay at home and avoid activities outside their home, and many workers were working from home, the amount of free time at home makes people feel bored. The International Flower Competition (IFC) Foundation initiated a flower gardening competition in front of villagers\' houses of Banjar Susut, Payangan and it resulted numerous new floral creations in the rural village.</p><p><br></p>', 'images/page/hero_image/01HXS20V9Y4026HYDBK7NPN66P.jpg', NULL, NULL, 'Sustainability ', 'The resort is seamlessly integrated into the steep terraced landscape of the Ayung River gorge.', 1, '2024-05-13 05:24:38', '2024-05-13 05:42:06');

-- --------------------------------------------------------

--
-- Table structure for table `page_images`
--

DROP TABLE IF EXISTS `page_images`;
CREATE TABLE IF NOT EXISTS `page_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `page_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `page_images_page_id_foreign` (`page_id`)
) ENGINE=MyISAM AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page_images`
--

INSERT INTO `page_images` (`id`, `page_id`, `title`, `image`, `status`, `created_at`, `updated_at`) VALUES
(2, 5, 'pool', 'images/page/images/01HWW335XSP8JZ5NNR55PS2XTQ.jpg', 1, '2024-05-02 06:25:25', '2024-05-02 06:25:25'),
(3, 5, 'buttler', 'images/page/images/01HWW33N5HVRE5WDN6ZZBR93Z4.jpg', 1, '2024-05-02 06:25:40', '2024-05-02 06:25:40'),
(4, 5, 'morning walk', 'images/page/images/01HWW344MCH8M4G9EGYTA6SDTS.webp', 1, '2024-05-02 06:25:56', '2024-05-02 06:25:56'),
(5, 6, 'Ultimate Spa Relaxation', 'images/page/images/01HXGEKHPWWSV76EJ6YQHHCV9Z.jpg', 1, '2024-05-10 04:11:24', '2024-05-10 04:11:24'),
(6, 7, 'Honeymoon', 'images/page/images/01HXGP0ETK90AWV0E3R02NSPRK.jpg', 1, '2024-05-10 06:20:47', '2024-05-10 06:20:47'),
(7, 8, 'Weddings', 'images/page/images/01HXR03ZFMDD7WT4321K5K7AG3.jpg', 1, '2024-05-13 02:25:53', '2024-05-13 02:32:09'),
(8, 9, 'Awards', 'images/page/images/01HXR7Q3AGR1MBWDRRQ4K70315.jpg', 1, '2024-05-13 04:44:56', '2024-05-13 04:44:56'),
(9, 11, '15', 'images/page/images/01HXRM3EFHHCGS9GB75BYBBG8A.jpg', 1, '2024-05-13 08:21:23', '2024-05-13 08:21:23'),
(10, 11, '14', 'images/page/images/01HXRM402RPQTBJFF3RBCDJPYR.jpg', 1, '2024-05-13 08:21:41', '2024-05-13 08:21:41'),
(11, 11, '13', 'images/page/images/01HXRM4GAHVWRR72Q04YZ0DAY4.jpg', 1, '2024-05-13 08:21:58', '2024-05-13 08:21:58'),
(12, 11, '12', 'images/page/images/01HXRM4ZV16H8XQPFBJDRCPMMD.jpg', 1, '2024-05-13 08:22:14', '2024-05-13 08:22:14'),
(13, 11, '11', 'images/page/images/01HXRM5FSZP5H7E6XZ30EREJ1P.jpg', 1, '2024-05-13 08:22:30', '2024-05-13 08:22:30'),
(14, 11, '10', 'images/page/images/01HXRM6095AXGQBPWSESY244BZ.jpg', 1, '2024-05-13 08:22:47', '2024-05-13 08:22:47'),
(15, 11, '9', 'images/page/images/01HXRM6HR9KEQ4173HMT4M9ESZ.jpg', 1, '2024-05-13 08:23:05', '2024-05-13 08:23:05'),
(16, 11, '8', 'images/page/images/01HXRM73Z3CX444EEPWRZFRKD9.jpg', 1, '2024-05-13 08:23:24', '2024-05-13 08:23:24'),
(17, 11, '7', 'images/page/images/01HXRM7KJKTWFJ6H5XBVPE7N6E.jpg', 1, '2024-05-13 08:23:40', '2024-05-13 08:23:40'),
(18, 11, '6', 'images/page/images/01HXRM84GP2AC6DPP70QMCPZA6.jpg', 1, '2024-05-13 08:23:57', '2024-05-13 08:23:57'),
(19, 11, '5', 'images/page/images/01HXRM8MX8SM0K881MJD0YTGF8.jpg', 1, '2024-05-13 08:24:14', '2024-05-13 08:24:14'),
(20, 11, '4', 'images/page/images/01HXRM95E0FWG7AGZYB87BJRS1.jpg', 1, '2024-05-13 08:24:31', '2024-05-13 08:24:31'),
(21, 11, '3', 'images/page/images/01HXRM9QNG9Q6CTNARG73C6BZN.jpg', 1, '2024-05-13 08:24:49', '2024-05-13 08:24:49'),
(22, 11, '2', 'images/page/images/01HXRMA983JR468T9RB6ZC3R2Z.png', 1, '2024-05-13 08:25:07', '2024-05-13 08:25:07'),
(23, 11, '1', 'images/page/images/01HXRMATP32FX8PZS4YBBJ6F4M.jpg', 1, '2024-05-13 08:25:25', '2024-05-13 08:25:25');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `valid` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `press_rooms`
--

INSERT INTO `press_rooms` (`id`, `title`, `subtitle`, `excerpt`, `description`, `image`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'HANGING GARDENS OF BALI ON HIPSHOTELS', 'https://www.hiphotels.com/hotels/asia/indonesia/bali/hanging-gardens-of-bali', 'The Hanging Gardens of Bali takes the word \'breathtaking\' quite literally, to an entirely different level. With its split-level design, guests are in store for an enchanting and immersive Balinese jungle experience....', NULL, 'images/awards/01HXRMZ7RFKAKKD228BWP7TAYT.jpg', NULL, 1, '2024-05-13 08:36:34', '2024-05-13 08:38:59'),
(2, 'HANGING GARDENS OF BALI ON HOTELS IN HEAVEN', 'https://www.hotelsinheaven.com/hanging-gardens-of-bali/', 'The Hanging Gardens of Bali arise as a striking formation, suspended over the dense rainforest. Walking into your room surrounded by indigenous cocoa trees and vibrant orchids for the first time, is one of those feelings that make you wish you could experience over and over again....', NULL, 'images/awards/01HXRN93CKBJMT859B8DFQT1EH.jpg', 0, 1, '2024-05-13 08:41:57', '2024-05-14 04:01:53'),
(3, 'HANGING GARDENS OF BALI FEATURED ON WEIXIN MEDIA - 16TH FEBRUARY 2024', 'https://mp.weixin.qq.com/s/wc6vNuky8waqjp66WAoAgg', 'Explore the unparalleled luxury at the \"Hanging Gardens of Bali\". Delight in its innovative design features the world\'s first double-decker pool and indulge in a dining experience like no other, set against breathtaking views.', NULL, 'images/awards/01HXRNAJBCA756ANM9T1HEZEA1.png', NULL, 1, '2024-05-13 08:42:45', '2024-05-13 08:42:45');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('DGamjEv1Ldukb6dbq7TkBnp3pYMfYG5ZFQMZHFhL', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/124.0.0.0 Safari/537.36', 'YTo3OntzOjY6Il90b2tlbiI7czo0MDoiTTFWdnR6bUVPdkNudlJzcmpTcUFyU0lKeWpOQXVlcmtpQW1RNERreiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9vZmZlcnMiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTIkc2FQRHBQZkVkSmtQU3BNMkU3MmlRZXFXY0dnZjlZN05tQjhzSkIydWlPMkMycXFyaHRwa3kiO3M6NjoidGFibGVzIjthOjM6e3M6MTg6Ikxpc3RQYWdlc19wZXJfcGFnZSI7czozOiJhbGwiO3M6MzQ6IkZhY2lsaXRpZXNSZWxhdGlvbk1hbmFnZXJfcGVyX3BhZ2UiO3M6MzoiYWxsIjtzOjIxOiJMaXN0U2V0dGluZ3NfcGVyX3BhZ2UiO3M6MzoiYWxsIjt9czo4OiJmaWxhbWVudCI7YTowOnt9fQ==', 1715680051);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `button_label`, `button_value`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Instagram', 'Instagram', NULL, 'instagram', NULL, NULL, NULL, NULL, 'https://www.instagram.com/hanginggardensofbali/', 1, '2024-05-14 07:52:04', '2024-05-14 07:52:04'),
(2, 'Facebook', 'Facebook', NULL, 'facebook', NULL, NULL, NULL, NULL, 'https://www.facebook.com/hanginggardensbali', 1, '2024-05-14 07:52:26', '2024-05-14 07:52:26'),
(3, 'Twitter', 'Twitter', NULL, 'twitter', NULL, NULL, NULL, NULL, 'https://twitter.com/hanginggardens5', 1, '2024-05-14 07:52:44', '2024-05-14 07:52:44'),
(4, 'Youtube', 'Youtube', NULL, 'youtube', NULL, NULL, NULL, NULL, 'https://www.youtube.com/channel/UCYZegT_ueaOA7IB1addySIA', 1, '2024-05-14 07:53:12', '2024-05-14 07:53:12'),
(5, 'Phone', 'Phone', NULL, 'phone', NULL, '<p>+62 361 982 700</p>', NULL, NULL, 'tel:+62361982700', 1, '2024-05-14 07:53:55', '2024-05-14 08:29:43'),
(6, 'Address', 'Address', NULL, 'address', NULL, '<p>Desa Buahan, Payangan,<br>Bali 80571, Indonesia</p>', NULL, NULL, NULL, 1, '2024-05-14 07:54:12', '2024-05-14 08:32:31'),
(7, 'Reservations email', 'Reservations email', NULL, 'reservations-email', NULL, '<p>reservations@hanginggardensofbali.com</p>', NULL, NULL, 'mailto:reservations@hanginggardensofbali.com', 1, '2024-05-14 07:54:33', '2024-05-14 08:35:16'),
(8, 'Media email', 'Media email', NULL, 'media-email', NULL, '<p><a href=\"mailto:media@hanginggardensinternational.com\">media@hanginggardensinternational.com</a></p>', NULL, NULL, NULL, 1, '2024-05-14 07:54:55', '2024-05-14 08:18:48'),
(9, 'WA link', 'WA link', NULL, 'wa-link', NULL, '<p>http://wa.me/628113800988</p>', NULL, NULL, NULL, 1, '2024-05-14 07:55:40', '2024-05-14 08:18:48'),
(10, 'Tripadvisor', 'Tripadvisor', NULL, 'tripadvisor', NULL, '<p>https://www.tripadvisor.com/Hotel_Review-g608492-d583286-Reviews-Hanging_Gardens_of_Bali-Payangan_Gianyar_Regency_Bali.html</p>', NULL, NULL, NULL, 1, '2024-05-14 07:56:03', '2024-05-14 08:18:50'),
(11, 'Telegram', 'Telegram', NULL, 'telegram', NULL, NULL, NULL, NULL, NULL, 0, '2024-05-14 07:56:24', '2024-05-14 07:56:24');

-- --------------------------------------------------------

--
-- Table structure for table `spas`
--

DROP TABLE IF EXISTS `spas`;
CREATE TABLE IF NOT EXISTS `spas` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `per` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `spas`
--

INSERT INTO `spas` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `price`, `per`, `button_label`, `button_value`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Chi Rejuvenation', NULL, 'chi-rejuvenation', NULL, '<p>Our non-oil traditional Japanese bodywork applies kneading techniques and acupressure points along the meridian lines to stimulate and revitalise the Chi energy flow in the body, restoring your body’s natural balance and wellbeing.</p><p><strong>Inclusions</strong></p><ul><li>Aromatherapy refreshment with rosella tea</li><li>Aromatherapy foot ritual</li><li>Chi massage</li><li>Relaxing time with ginger tea</li></ul>', 'images/spa/01HXGG52437QS4EE0H5RB2VMXK.jpg', 'IDR 2,000,000++', 'per person', NULL, NULL, 0, 1, '2024-05-10 04:38:27', '2024-05-10 04:38:27'),
(2, 'Aromatic Blossoms', NULL, 'aromatic-blossoms', NULL, '<p>Celebrate the beauty and essence of fresh flowers in a bath ritual of ultimate peace and tranquillity. Immerse your body in warm, scented water, enlighten your senses and leave your skin feeling soft and youthful.</p><p><strong>Inclusions</strong></p><ul><li>Aromatherapy refreshment with rosella tea</li><li>Body bath with fresh flower and Essential oil</li><li>Relaxing time with ginger tea</li></ul><p><em>*Treatment is bookable for staying guest only</em></p>', 'images/spa/01HXGGBYC4B8PF9DCA4J2P7SZ6.jpg', 'IDR 650,000++', 'per person', NULL, NULL, 0, 1, '2024-05-10 04:42:12', '2024-05-10 04:42:12'),
(3, 'Aroma Essense', NULL, 'aroma-essense', NULL, '<p>Designed to combat signs of skin aging, this revitalizing treatment restores vitality and firmness and softens the appearance of expression lines. This incredible treatment shapes and plumps up cell volume and uplifts the contour of the face. A visibly toned and tightened skin from just one treatment.</p><p><strong>Inclusions</strong></p><ul><li>Aromatherapy refreshment with rosella tea</li><li>Aromatherapy foot ritual</li><li>90 min facial by decleor</li><li>Relaxing time with ginger tea</li></ul>', 'images/spa/01HXGGJ6ZDXBB5JWGDK2TNR52Q.jpg', 'IDR 2,000,000++', 'per person', NULL, NULL, 0, 1, '2024-05-10 04:45:38', '2024-05-10 04:45:38'),
(4, 'Angel Bliss For Young', NULL, 'angel-bliss-for-young', NULL, '<p>For our junior guests aged 6 to 13 years old. Invite your child to discover the world of wellbeing under the gentle, caring touch of a skilled therapist. Soft pressure is applied to the scalp, legs and feet and a grounding oil massage is performed on the back and the arms. This treatment greatly soothes nervous system, strengthens immune system and improve quality of sleep. An adult is requested to accompany any child under the age of 10 during the treatment.</p><p><strong>Inclusions:</strong></p><ul><li>Aromatherapy refreshment with rosella tea</li><li>Aromatherapy foot ritual</li><li>Kid massage 45min</li><li>Relaxing time with ginger tea</li></ul><p><em>*Treatment is bookable for staying guest only</em></p>', 'images/spa/01HXGGM4GPPC1CA1YY49A39785.jpg', 'IDR 850,000++', 'per person', NULL, NULL, 0, 1, '2024-05-10 04:46:41', '2024-05-10 04:46:41'),
(5, 'Aloe Avocado', NULL, 'aloe-avocado', NULL, '<p>Particularly beneficial for sun-soaked skin, this treatment involves generous application of freshly-pureed avocado, rich in Vitamins B, E and K, and fresh aloe vera gel with soothing and anti-inflammatory properties. The healing balms are gently massaged into your skin, followed by a cocoon body wrap, allowing the skin to be soothed, softened and completely hydrated</p><p><strong>Experience:</strong></p><ul><li>Aromatherapy refreshment with rosella tea</li><li>Aromatherapy foot ritual</li><li>A full body mask with avocado and aloe vera followed by a cocoon body wrap</li><li>Relaxing time with ginger tea</li></ul>', 'images/spa/01HXGGS8993WCSZ9V8DAGYEBVG.jpg', 'IDR 1,600,000++', 'per person', NULL, NULL, 0, 1, '2024-05-10 04:49:28', '2024-05-10 04:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `spa_images`
--

DROP TABLE IF EXISTS `spa_images`;
CREATE TABLE IF NOT EXISTS `spa_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `spa_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
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
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `price` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `button_value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `weddings`
--

INSERT INTO `weddings` (`id`, `title`, `subtitle`, `slug`, `excerpt`, `description`, `image`, `price`, `button_label`, `button_value`, `featured`, `status`, `created_at`, `updated_at`) VALUES
(1, 'The Intimate Wedding', NULL, 'the-intimate-wedding', NULL, '<p>Wedding ceremony venue at Twin Tiered Cascading Pool<br><br>Spend your special day intimately at a stunning riverside where the Balinese jungle meets the rushing waters of the holy Ayung River.<br><br><strong>Accommodation</strong></p><ul><li>Two nights accommodation for Bridal Couple in One Bedroom Riverside Pool Villa</li><li>Return airport transport for Bride and Groom</li><li>Daily breakfast</li><li>Honeymoon setup in villa on wedding night</li></ul><p><br><strong>Event Inclusion</strong></p><ul><li>Wedding ceremony venue at Twin Tiered Cascading Pool or Riverside Spa Gazebo</li><li>Marriage celebrant (non-legal) and commemorative ceremonial certificate</li><li>Classic wedding ceremony decoration with one wedding arch, altar table with flower arrangement, flower petals on the aisle, flower shower, wedding signboard with Bride and Groom\'s name</li><li>Standard sound system for ceremony with 3 microphone, 2 speakers and mixers</li><li>Hanging Gardens of Bali\'s wedding team to assistant during ceremony</li><li>All events and Banjar Fee</li></ul><p><br><strong>Culinary Experience</strong></p><ul><li>Wedding toast for couple with refreshing Rosella Honey Tea</li><li>2 glasses of Sparkling Wine during dinner</li><li>In Villa Dining Romantic Dinner for bridal couple</li></ul><p><br><strong>Bridal Couple</strong></p><ul><li>90 minutes Bliss Spa Treatment at The Spa Collection for bridal couple</li></ul><p><br></p>', 'images/weddings/01HXR00KT8P1347ZWV248HFTEQ.jpg', NULL, NULL, NULL, 0, 1, '2024-05-13 02:30:19', '2024-05-13 02:30:19'),
(2, 'The Hanging Gardens Wedding', NULL, 'the-hanging-gardens-wedding', NULL, '<p>Wedding ceremony venue at Twin Tiered Cascading Pool<br><br>For a truly memorable magical wedding, couples may reserve exclusive use of Hanging Gardens of Bali \"The World’s Best Swimming Pool\" for their celebration.<br><br><strong>Accommodation</strong></p><ul><li>Two nights accommodation on 5 units villa (3 units of 1 Bedroom Riverside Pool Villa and 2 units of Family Pool Villa) that can accommodate for up to 12 guests</li><li>Return airport transfer for all in house guests</li><li>Daily breakfast for all inhouse guests</li><li>1 time floating boat breakfast in Villa for Bridal Couple</li><li>Honeymoon setup in villa on wedding day</li></ul><p><br><strong>Event Inclusion</strong></p><ul><li>Wedding ceremony venue at Twin Tiered Cascading Pool or Deck (add time slot available for wedding ceremony)</li><li>Marriage celebrant (non-legal) and commemorative ceremonial certificate</li><li>Standard sound system for ceremony with 3 microphone, 2 speakers and mixers</li><li>All events and Banjar Fee</li></ul><p><br><strong>Culinary Experience</strong></p><ul><li>20 glasses of non alcoholic wedding toast with Rosella Honey Tea</li><li>2 glasses of Sparkling Wine for bridal couple\'s toast</li></ul><p><br><strong>Bride and Groom </strong></p><ul><li>90 minutes Bliss Spa Treatment at The Spa Collection for bridal couple</li></ul>', 'images/weddings/01HXR0AGFDEBCETS4E91HHGZJF.jpg', NULL, NULL, NULL, 0, 1, '2024-05-13 02:35:43', '2024-05-13 02:35:43'),
(3, 'The Hidden Palace Wedding', NULL, 'the-hidden-palace-wedding', NULL, '<p>Wedding ceremony venue at Hidden Palace Pool<br><br>Celebrate your wedding at the luxurious Hidden Palace five bedrooms villa.<br><br><strong>Accommodation</strong></p><ul><li>Two nights accommodation in Hidden Palace for up to 10 guests</li><li>Return airport transfer for all-in house guests</li><li>Daily breakfast for all-in house guests</li><li>Honeymoon setup in bridal couple\'s room on wedding day</li></ul><p><br><strong>Event Inclusion</strong></p><ul><li>Wedding ceremony venue at Hidden Palace Pool or Living Room with capacity up to 40 guests</li><li>Marriage celebrant (non-legal) and commemorative ceremonial certificate</li><li>Standard sound system for ceremony with 3 microphone, 2 speakers and mixers</li><li>All events and Banjar Fee</li></ul><p><br><strong>Culinary Experience</strong></p><ul><li>40 glasses of non alcoholic wedding toast with Rosella Honey Tea</li><li>2 glasses of Jepun by Hatten Sparkling Wine for bridal couple\'s toast</li></ul><p><br><strong>Bride and Groom</strong></p><ul><li>90 minutes Bliss Spa Treatment at The Spa Collection for bridal couple</li></ul><p><br><strong>Additional Benefits</strong></p><ul><li>Exclusively use of 2,000sqm Hidden Palace with its own funicular</li><li>Personal butler service - 24 hours</li><li>In Villa private chef and personal kitchen services</li><li>Guided morning walks and mountain bikes activity</li><li>One bottle of Champagne on ,arrival</li><li>Complimentary laundry 20 pieces per day (excluding dry cleaning &amp; express service) and is non-accumulative</li></ul>', 'images/weddings/01HXR0CTXSWA6D36XFT1X9TS1R.jpg', NULL, NULL, NULL, 0, 1, '2024-05-13 02:37:00', '2024-05-13 02:37:00');

-- --------------------------------------------------------

--
-- Table structure for table `wedding_images`
--

DROP TABLE IF EXISTS `wedding_images`;
CREATE TABLE IF NOT EXISTS `wedding_images` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `wedding_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
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
