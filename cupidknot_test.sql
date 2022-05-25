-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 25, 2022 at 11:07 AM
-- Server version: 5.7.36
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cupidknot_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
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
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_05_24_132414_create-preferred_partner-table', 1),
(6, '2022_05_25_041501_create-preferred_ocupations-table', 1),
(7, '2022_05_25_041909_create-preferred_family_types-table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `preferred_family_types`
--

DROP TABLE IF EXISTS `preferred_family_types`;
CREATE TABLE IF NOT EXISTS `preferred_family_types` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) NOT NULL,
  `family_type_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferred_family_types`
--

INSERT INTO `preferred_family_types` (`id`, `partner_id`, `family_type_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(2, 1, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(3, 2, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(4, 2, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(5, 3, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(6, 3, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(7, 4, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(8, 4, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(9, 5, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(10, 5, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(11, 6, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(12, 6, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(13, 7, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(14, 7, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(15, 8, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(16, 8, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(17, 9, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(18, 9, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(19, 10, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(20, 10, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(21, 11, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(22, 11, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(23, 12, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(24, 12, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(25, 13, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(26, 13, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(27, 14, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(28, 14, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(29, 15, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(30, 15, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(31, 16, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(32, 16, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(33, 17, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(34, 17, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(35, 18, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(36, 18, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(37, 19, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(38, 19, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(39, 20, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(40, 20, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(41, 21, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(42, 21, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(43, 22, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(44, 22, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(45, 23, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(46, 23, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(47, 24, 1, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(48, 24, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(49, 25, 1, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(50, 25, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(51, 26, 2, '2022-05-25 00:34:36', '2022-05-25 00:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `preferred_occupations`
--

DROP TABLE IF EXISTS `preferred_occupations`;
CREATE TABLE IF NOT EXISTS `preferred_occupations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `partner_id` int(11) NOT NULL,
  `occupation_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferred_occupations`
--

INSERT INTO `preferred_occupations` (`id`, `partner_id`, `occupation_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(2, 1, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(3, 1, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(4, 2, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(5, 2, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(6, 2, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(7, 3, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(8, 3, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(9, 3, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(10, 4, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(11, 4, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(12, 4, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(13, 5, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(14, 5, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(15, 5, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(16, 6, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(17, 6, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(18, 6, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(19, 7, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(20, 7, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(21, 7, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(22, 8, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(23, 8, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(24, 8, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(25, 9, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(26, 9, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(27, 9, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(28, 10, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(29, 10, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(30, 10, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(31, 11, 1, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(32, 11, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(33, 11, 3, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(34, 12, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(35, 12, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(36, 12, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(37, 13, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(38, 13, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(39, 13, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(40, 14, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(41, 14, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(42, 14, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(43, 15, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(44, 15, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(45, 15, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(46, 16, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(47, 16, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(48, 16, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(49, 17, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(50, 17, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(51, 17, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(52, 18, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(53, 18, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(54, 18, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(55, 19, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(56, 19, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(57, 19, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(58, 20, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(59, 20, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(60, 20, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(61, 21, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(62, 21, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(63, 21, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(64, 22, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(65, 22, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(66, 22, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(67, 23, 1, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(68, 23, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(69, 23, 3, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(70, 24, 1, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(71, 24, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(72, 24, 3, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(73, 25, 1, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(74, 25, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(75, 25, 3, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(76, 26, 1, '2022-05-25 00:34:36', '2022-05-25 00:34:36'),
(77, 26, 2, '2022-05-25 00:34:36', '2022-05-25 00:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `preferred_partners`
--

DROP TABLE IF EXISTS `preferred_partners`;
CREATE TABLE IF NOT EXISTS `preferred_partners` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `preferred_income_from` int(11) NOT NULL,
  `preferred_income_to` int(11) NOT NULL,
  `preferred_manglik` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `preferred_partners`
--

INSERT INTO `preferred_partners` (`id`, `user_id`, `preferred_income_from`, `preferred_income_to`, `preferred_manglik`, `created_at`, `updated_at`) VALUES
(1, 1, 5, 492, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(2, 2, 1, 440, 'no', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(3, 3, 5, 497, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(4, 4, 9, 373, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(5, 5, 10, 363, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(6, 6, 6, 423, 'no', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(7, 7, 1, 402, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(8, 8, 2, 456, 'yes', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(9, 9, 5, 324, 'no', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(10, 10, 10, 427, 'no', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(11, 11, 2, 424, 'no', '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(12, 12, 3, 314, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(13, 13, 5, 334, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(14, 14, 10, 497, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(15, 15, 2, 477, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(16, 16, 4, 362, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(17, 17, 8, 344, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(18, 18, 7, 442, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(19, 19, 9, 409, 'yes', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(20, 20, 5, 437, 'yes', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(21, 21, 8, 497, 'no', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(22, 22, 7, 350, 'yes', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(23, 23, 5, 392, 'yes', '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(24, 24, 3, 330, 'yes', '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(25, 25, 1, 473, 'yes', '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(26, 26, 50, 500, 'yes', '2022-05-25 00:34:36', '2022-05-25 00:34:36');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` enum('male','female') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dob` date NOT NULL,
  `income` int(100) NOT NULL,
  `occupation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `family_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manglik` enum('yes','no') COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_type` int(11) NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `gender`, `dob`, `income`, `occupation`, `family_type`, `manglik`, `remember_token`, `user_type`, `created_at`, `updated_at`) VALUES
(1, 'Gilberto Stiedemann', 'alvis.berge@example.org', NULL, '$2y$10$UFS9p18nQM4lxK.ExJtZh.wDBTYbioLsnFBDbcXWw7EAflgC2.lJ.', 'male', '1981-06-02', 126, '2', '2', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(2, 'Dr. Loyal Shanahan', 'terrell.lemke@example.net', NULL, '$2y$10$D.oPhWv8a5GeODaOyytYH.TE0ShMI8WW/RUswMSnO5au1TyhfGJCG', 'female', '1983-10-18', 427, '3', '1', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(3, 'Alba Nikolaus', 'mschoen@example.org', NULL, '$2y$10$mnQcpmVGqr2qpBqB9wSHk.Cd./faOca4oJr1iQcHPyDqj1PxtU5iq', 'male', '2006-08-31', 24, '1', '2', 'no', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(4, 'Leila Keebler IV', 'torey38@example.com', NULL, '$2y$10$6iqtqE1psI/hrcyrgMHur.6L0cKJf0CaXR4OHSiLazNtcqeq22VqK', 'male', '1972-03-23', 481, '3', '1', 'no', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(5, 'Lacey Mueller MD', 'xborer@example.org', NULL, '$2y$10$Y1d11Hfb1qgdNm/8NxB2oOdW2hPeo1KlXJsyprKhztsFKthzh7JQS', 'female', '2022-03-17', 32, '3', '2', 'no', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(6, 'Miss Claudia Turcotte', 'geovany.kunze@example.net', NULL, '$2y$10$T8ZkOnzlyuSqtAaiWT.jOeQMR5qgqDppMktGhdGyR/6vN646qajsa', 'female', '2007-10-22', 448, '1', '2', 'no', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(7, 'Prof. Jermain Armstrong', 'cartwright.gideon@example.com', NULL, '$2y$10$aff3i.S48VwSwK8AaFq/ne6w8Y.DzeVez9zpOENv5hItgCa3uvZV.', 'female', '1983-03-23', 12, '2', '1', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(8, 'Dr. Connor Funk V', 'genesis34@example.net', NULL, '$2y$10$3nYARRY.LrzX5427hC3Hqudg7aw2CKfic0JDpzsFweQj797JPCAPi', 'male', '2006-10-03', 349, '3', '1', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(9, 'Hal Marquardt', 'jarrett33@example.com', NULL, '$2y$10$1I93ngbgTLwBL0nOuaBBeuvUyWkjGGzHOfThEeYPA8co9fTOvqczG', 'female', '2006-09-03', 70, '2', '1', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(10, 'Prof. Eliezer Nitzsche', 'hconn@example.com', NULL, '$2y$10$QYEH9IXRwCMaFx5Rn1uzveunQFUGAfGfZ2SOErM0r/VBv8xyl/U2q', 'male', '1986-01-05', 349, '1', '2', 'yes', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(11, 'Alvera Spinka MD', 'kaya.bogisich@example.com', NULL, '$2y$10$WR3QS2EUFOeza0mqXHUT5.NsOKjWzE4/kbYV2EMW/E/kpV9JvbFKu', 'male', '1984-04-08', 98, '1', '2', 'no', NULL, 2, '2022-05-25 00:32:55', '2022-05-25 00:32:55'),
(12, 'Keon Kiehn', 'koss.wilma@example.com', NULL, '$2y$10$5OLck9AzrItwJ8uiKlThXeOxXAxi9ASbdL3wCMEuUsSaV9BLM.i8a', 'male', '2016-04-09', 299, '3', '2', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(13, 'Dayton Kiehn', 'nakia49@example.org', NULL, '$2y$10$teybu22nBK3QLo8YOmvb/u2FnoVYXBTNlhkJ5sdJXhkZBeMvE2Qyu', 'male', '1985-08-05', 477, '2', '2', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(14, 'Alison Hahn', 'ipagac@example.com', NULL, '$2y$10$i0SADw57/ajjQVhsZKon9OOxJkrQ8Oa5WRMb.RiYo84Y9l0Yd6UFq', 'male', '2000-04-10', 125, '2', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(15, 'Ms. Lempi Predovic', 'muller.jeff@example.com', NULL, '$2y$10$CMmWfchiq8rsym5UeR4yzuZDKIlF9UNDI6Eq9YaRDG3QzU5Axph1W', 'female', '1994-10-19', 414, '2', '2', 'no', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(16, 'Prof. Nayeli Becker', 'ythompson@example.net', NULL, '$2y$10$dKN68gXQfmCVZd9vsglGRO6OXnhLh1TGTpA8Wrb6./fguS5eb4Pbe', 'female', '2013-03-28', 241, '2', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(17, 'Raul Ullrich', 'sborer@example.com', NULL, '$2y$10$E9MoCUTFM0aX5gPLxvadeu4C5qzUQk3PUukmGZSnF0zJT1LE2gMcG', 'male', '1973-12-10', 87, '2', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(18, 'Kitty Wintheiser', 'bhoeger@example.org', NULL, '$2y$10$oJiHZkm/2DobhIcsLZY91u9jt1nSw3IgVpwSsYiwsVyXF.Gu8QxNy', 'male', '2018-02-06', 107, '1', '1', 'no', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(19, 'Selina Johns', 'donald.cartwright@example.org', NULL, '$2y$10$R0GRqDpz0M35Ca6uY6eLieSjbBa93fM5hXdbRXznGFlay4mzbaF66', 'female', '1978-05-30', 54, '3', '2', 'no', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(20, 'Charles Weimann', 'pbins@example.org', NULL, '$2y$10$obD329aQzy0ohqrw4eOLquIPP41Vq0MIHHclXazTgWMrxv2Oevo36', 'male', '2003-03-29', 74, '1', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(21, 'Eloise Hane PhD', 'koss.berneice@example.net', NULL, '$2y$10$w86tpK6oNRM3tVp3ecy1le15pBXD/5leRUO6BM.Bh2Gkfl5xO8sre', 'male', '1995-05-06', 369, '3', '2', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(22, 'Kaelyn Barrows', 'qgleichner@example.net', NULL, '$2y$10$.hMyEn/f3lchD2Qr5aPhaeefUZk7sY0MXnko28ZUsQAB5rabi/bzu', 'female', '1989-07-08', 7, '1', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(23, 'Dr. Monty Stroman', 'adrienne94@example.net', NULL, '$2y$10$l2wHSVgzHqn0Sy8Q0k5BQuh9VnCNyO/wlwjrg4juAotvf.dmgctCO', 'female', '2012-05-17', 421, '3', '1', 'yes', NULL, 2, '2022-05-25 00:32:56', '2022-05-25 00:32:56'),
(24, 'Fatima Hamill', 'elsa10@example.org', NULL, '$2y$10$iFCpBPhRF26YLG732jl.2OAdlJx0ck0pJy5QGCfo0xzcOnEDiR6oO', 'male', '1989-10-06', 127, '3', '2', 'yes', NULL, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(25, 'Noel Abshire', 'gutmann.orlo@example.com', NULL, '$2y$10$nnE40xZzM2Eb4WYoxeBQLexRXT/uGer9sC.jJQ2GgfO3hO6J4RQfq', 'female', '2015-12-28', 345, '3', '2', 'yes', NULL, 2, '2022-05-25 00:32:57', '2022-05-25 00:32:57'),
(26, 'Payal', 'payalpandav.21@gmail.com', NULL, '$2y$10$8b8snmBXuqNGU0LZ7lGGFuV1yW6Y4E2rjxF5maqAkC0kyHzbnMcSq', 'female', '2022-05-01', 200, '1', '1', 'no', NULL, 2, '2022-05-25 00:34:36', '2022-05-25 00:34:36'),
(27, 'Admin', 'admin@gmail.com', NULL, '$2y$10$kdgo9fxq7rB0VIsP3ctIzuYQSZAeBWVrfFKWbZGuSSvGM9FMrfEOm', 'female', '1972-07-24', 498, '3', '1', 'no', NULL, 1, '2022-05-25 04:30:52', '2022-05-25 04:30:52');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
