-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Nov 13, 2022 at 08:47 PM
-- Server version: 8.0.31-0ubuntu0.20.04.1
-- PHP Version: 8.0.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `speed`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` bigint UNSIGNED NOT NULL,
  `log_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `causer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `causer_id` bigint UNSIGNED DEFAULT NULL,
  `properties` json DEFAULT NULL,
  `batch_uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `address` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `lat` decimal(10,7) NOT NULL,
  `lng` decimal(10,7) NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `city_id`, `address`, `lat`, `lng`, `user_id`, `is_primary`) VALUES
(1, '2022-06-16 10:38:34', '2022-06-29 12:48:50', NULL, 'address name edited', 2, 'address', '30.0000000', '31.0000000', 2, 0),
(2, '2022-06-16 16:58:46', '2022-08-14 16:55:16', NULL, 'home1', 6, 'hiii', '30.0131089', '31.2088517', 5, 1),
(3, '2022-06-29 12:48:38', '2022-06-29 12:48:50', NULL, 'address name', 1, 'address', '30.0000000', '31.0000000', 2, 0),
(4, '2022-06-29 12:48:42', '2022-06-29 12:48:50', NULL, 'address name', 1, 'address', '30.0000000', '31.0000000', 2, 0),
(5, '2022-06-29 12:48:44', '2022-06-29 12:48:50', NULL, 'address name', 1, 'address', '30.0000000', '31.0000000', 2, 0),
(6, '2022-06-29 12:48:48', '2022-06-29 12:48:50', NULL, 'address name', 1, 'address', '30.0000000', '31.0000000', 2, 0),
(7, '2022-06-29 12:48:50', '2022-06-29 12:48:50', NULL, 'address name', 1, 'address', '30.0000000', '31.0000000', 2, 1),
(8, '2022-06-29 16:38:25', '2022-06-29 16:45:29', '2022-06-29 16:45:29', 'address name', 1, 'address', '30.0000000', '31.0000000', 4, 0),
(9, '2022-06-29 18:04:48', '2022-06-29 18:04:48', NULL, 'home', 2, 'jjjj', '30.0131089', '31.2088517', 4, 1),
(10, '2022-06-29 18:31:52', '2022-06-29 18:31:52', NULL, 'job', 2, 'hhhhh', '30.0130550', '31.2088517', 4, 0),
(11, '2022-08-14 13:30:10', '2022-08-14 13:30:10', NULL, '6', 2, 'maadi cairo\n6 ibnelkhatab st', '30.0085084', '31.3133486', 22, 0),
(12, '2022-08-14 15:32:35', '2022-08-14 16:55:20', '2022-08-14 16:55:20', 'job', 5, '333Giza haram', '5.1753163', '23.8182316', 5, 0),
(13, '2022-08-15 12:06:06', '2022-08-15 12:06:06', NULL, 'اتك', 5, 'تنلف', '30.0084622', '31.3131500', 22, 0),
(14, '2022-08-23 13:53:09', '2022-08-23 13:53:09', NULL, 'المعادى', 6, '٥ ش ٩ المقطم', '30.0084292', '31.3131894', 21, 1),
(15, '2022-09-05 15:11:39', '2022-09-05 15:11:39', NULL, 'hom', 4, 'nnm', '37.4220477', '-122.0839998', 15, 1),
(16, '2022-09-07 15:35:49', '2022-09-07 15:35:49', NULL, 'bbbb', 4, 'bnbn', '37.4219983', '-122.0840000', 15, 0),
(17, '2022-09-08 15:52:21', '2022-09-08 15:52:21', NULL, 'mokattam', 4, '9ش المقطم', '30.0080850', '31.3101071', 27, 1),
(18, '2022-09-11 13:17:59', '2022-09-11 13:17:59', NULL, 'شغل', 44, '٦ عمر بن الخطاب تقسيم المساحة', '29.9872915', '31.2825887', 21, 0);

-- --------------------------------------------------------

--
-- Table structure for table `banks`
--

CREATE TABLE `banks` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`, `image`) VALUES
(1, '{\"en\":\"Brand name\",\"ar\":\"\\u0628\\u0631\\u0627\\u0646\\u062f \\u0661\"}', '2022-06-16 10:57:24', '2022-08-17 11:05:03', '2022-08-17 11:05:03', 'uploads/images/165832126044'),
(2, '{\"en\":\"Brand\",\"ar\":\"\\u0628\\u0631\\u0627\\u0646\\u062f \\u0662\"}', '2022-06-16 10:57:43', '2022-08-17 11:04:57', '2022-08-17 11:04:57', 'uploads/images/165832127075'),
(3, '{\"en\":\"eufy\",\"ar\":\"\\u0627\\u0648\\u0641\\u0649\"}', '2022-08-14 10:53:46', '2022-08-24 13:19:12', NULL, 'uploads/images/166133995222'),
(4, '{\"en\":\"Western Digital\",\"ar\":\"\\u0648\\u064a\\u0633\\u062a\\u0631\\u0646 \\u062f\\u064a\\u062c\\u064a\\u062a\\u0627\\u0644\"}', '2022-08-17 11:05:48', '2022-08-25 12:47:41', NULL, 'uploads/images/166142446199'),
(5, '{\"en\":\"hikvision\",\"ar\":\"\\u0647\\u064a\\u0643\\u0641\\u064a\\u062c\\u0646\"}', '2022-08-17 11:33:46', '2022-08-24 11:40:29', NULL, 'uploads/images/166133402998'),
(6, '{\"en\":\"ExTell\",\"ar\":\"\\u0627\\u064a \\u0627\\u0643\\u0633 \\u062a\\u064a\\u0644\"}', '2022-08-24 11:41:38', '2022-08-25 12:42:03', NULL, 'uploads/images/166142412326');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED DEFAULT NULL,
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `quantity` int NOT NULL DEFAULT '1',
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'item'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `updated_at`, `user_id`, `item_id`, `coupon_id`, `quantity`, `type`) VALUES
(85, '2022-09-07 16:29:27', '2022-09-07 16:29:27', 15, 15, NULL, 1, 'item'),
(91, '2022-09-13 14:36:59', '2022-09-13 14:36:59', 29, 16, NULL, 1, 'item');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upper_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `image`, `upper_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '{\"en\":\"main category\",\"ar\":\"\\u0642\\u0633\\u0645 \\u0627\\u0633\\u0627\\u0633\\u0649\"}', 'uploads/images/165828808456', NULL, '2022-06-16 11:09:55', '2022-08-22 14:02:40', '2022-08-22 14:02:40'),
(2, '{\"en\":\"sub category\",\"ar\":\"\\u0642\\u0633\\u0645 \\u0641\\u0631\\u0639\\u0649\"}', '/tmp/phpSZ4yCe', 1, '2022-06-16 11:17:06', '2022-06-16 11:17:06', NULL),
(3, '{\"en\":\"Security Thermal Cameras\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627\\u062a \\u0623\\u0645\\u0646\\u064a\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629\"}', 'uploads/images/166134040988', NULL, '2022-08-11 12:43:11', '2022-08-24 13:26:49', NULL),
(4, '{\"en\":\"WD HARDS\",\"ar\":\"\\u0647\\u0627\\u0631\\u062f\\u0627\\u062a\"}', 'uploads/images/166072767456', NULL, '2022-08-17 11:14:34', '2022-08-17 11:14:34', NULL),
(5, '{\"en\":\"Hard Disk Drive\",\"ar\":\"\\u0647\\u0627\\u0631\\u062f \\u062f\\u064a\\u0633\\u0643\"}', '/tmp/phpWxjFaJ', 4, '2022-08-17 11:16:29', '2022-08-17 11:16:29', NULL),
(6, '{\"en\":\"Access Control\",\"ar\":\"\\u0648\\u062d\\u062f\\u0627\\u062a \\u062a\\u062d\\u0643\\u0645\"}', 'uploads/images/166072918595', NULL, '2022-08-17 11:39:45', '2022-08-17 11:39:45', NULL),
(7, '{\"en\":\"Finger Print\",\"ar\":\"\\u0627\\u0644\\u0628\\u0635\\u0645\\u0629\"}', '/tmp/phpCQkY8K', 6, '2022-08-17 11:41:08', '2022-08-17 11:41:08', NULL),
(8, '{\"en\":\"Face Recognition\",\"ar\":\"\\u0645\\u0645\\u064a\\u0632 \\u0627\\u0644\\u0648\\u062c\\u0648\\u0647\"}', 'uploads/images/166073684531', NULL, '2022-08-17 13:47:25', '2022-08-18 11:50:49', '2022-08-18 11:50:49'),
(9, '{\"en\":\"Face Recognition\",\"ar\":\"\\u062a\\u0645\\u064a\\u064a\\u0632 \\u0627\\u0644\\u0648\\u062c\\u0648\\u0647\"}', '/tmp/php9qnCGa', 6, '2022-08-18 11:50:12', '2022-08-18 11:50:12', NULL),
(10, '{\"en\":\"Visitor\",\"ar\":\"\\u0627\\u0644\\u0632\\u0627\\u0626\\u0631\"}', '/tmp/phpdcqxS7', 6, '2022-08-18 11:52:06', '2022-08-18 11:52:06', NULL),
(11, '{\"en\":\"heat pro\",\"ar\":\"\\u0647\\u0648\\u062a \\u0628\\u0631\\u0648\"}', '/tmp/php2rPqih', 1, '2022-08-22 11:55:54', '2022-08-22 11:56:55', '2022-08-22 11:56:55'),
(12, '{\"en\":\"HeatPro Series\",\"ar\":\"\\u0647\\u0648\\u062a \\u0628\\u0631\\u0648\"}', '/tmp/phpOS1Qcs', 3, '2022-08-22 11:57:29', '2022-08-25 15:14:10', NULL),
(13, '{\"en\":\"Bullet Series\",\"ar\":\"\\u0628\\u0627\\u064a\\u0644\\u0648\\u062a\"}', '/tmp/phpfdjojR', 3, '2022-08-24 13:31:37', '2022-08-24 13:31:37', NULL),
(14, '{\"en\":\"Speed Dome Series\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627\\u062a \\u062f\\u0648\\u0645\"}', '/tmp/phpbgHjrT', 3, '2022-08-24 13:33:58', '2022-08-24 13:33:58', NULL),
(15, '{\"en\":\"Display and Control\",\"ar\":\"\\u0627\\u0644\\u0639\\u0631\\u0636 \\u0648\\u0627\\u0644\\u062a\\u062d\\u0643\\u0645\"}', 'uploads/images/166194455269', NULL, '2022-08-31 13:15:52', '2022-08-31 13:15:52', NULL),
(16, '{\"en\":\"LCD Video Wall\",\"ar\":\"\\u062d\\u0627\\u0626\\u0637 \\u0641\\u064a\\u062f\\u064a\\u0648 LCD\"}', '/tmp/phpUGSjMb', 15, '2022-08-31 13:16:53', '2022-08-31 13:16:53', NULL),
(17, '{\"en\":\"Digital Signage\",\"ar\":\"\\u0623\\u0644\\u0634\\u0627\\u0634\\u0627\\u062a \\u0627\\u0644\\u0631\\u0642\\u0645\\u064a\\u0629\"}', '/tmp/phpsZoA4d', 15, '2022-08-31 13:19:06', '2022-08-31 13:19:06', NULL),
(18, '{\"en\":\"LED Display\",\"ar\":\"\\u0634\\u0627\\u0634\\u0627\\u062a LED\"}', '/tmp/phpJwue0B', 15, '2022-08-31 13:20:16', '2022-08-31 13:20:16', NULL),
(19, '{\"en\":\"Interactive Flat Panels\",\"ar\":\"\\u0644\\u0648\\u062d\\u0627\\u062a \\u0645\\u0633\\u0637\\u062d\\u0629 \\u062a\\u0641\\u0627\\u0639\\u0644\\u064a\\u0629\"}', '/tmp/phptIHUJd', 15, '2022-08-31 13:21:15', '2022-08-31 13:21:15', NULL),
(20, '{\"en\":\"Controllers\",\"ar\":\"\\u0648\\u062d\\u062f\\u0627\\u062a \\u062a\\u062d\\u0643\\u0645\"}', '/tmp/phpvL7YUe', 15, '2022-08-31 13:22:11', '2022-08-31 13:22:11', NULL),
(21, '{\"en\":\"Monitors\",\"ar\":\"\\u0627\\u0644\\u0634\\u0627\\u0634\\u0627\\u062a\"}', '/tmp/phprfP2ty', 15, '2022-08-31 13:24:10', '2022-08-31 13:24:10', NULL),
(22, '{\"en\":\"Network Cameras\",\"ar\":\"\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627\\u062a \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629\"}', 'uploads/images/166194513038', NULL, '2022-08-31 13:25:30', '2022-08-31 13:25:30', NULL),
(23, '{\"en\":\"DeepinView Series\",\"ar\":\"\\u0633\\u0644\\u0633\\u0644\\u0629 DeepinView\"}', 'uploads/images/166194726878', NULL, '2022-08-31 14:01:08', '2022-08-31 14:09:02', '2022-08-31 14:09:02'),
(24, '{\"en\":\"DeepinView Series\",\"ar\":\"\\u0633\\u0644\\u0633\\u0644\\u0629 DeepinView\"}', '/tmp/phpz2b6ci', 22, '2022-08-31 14:09:32', '2022-08-31 14:09:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chat_channels`
--

CREATE TABLE `chat_channels` (
  `id` bigint UNSIGNED NOT NULL,
  `admin_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_channels`
--

INSERT INTO `chat_channels` (`id`, `admin_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 2, '2022-07-17 09:06:54', '2022-07-17 09:06:54'),
(2, 1, 2, '2022-07-17 09:52:00', '2022-07-17 09:52:00'),
(3, 1, 2, '2022-07-17 09:52:47', '2022-07-17 09:52:47'),
(4, 1, 2, '2022-07-17 09:58:05', '2022-07-17 09:58:05'),
(5, 1, 5, '2022-07-18 10:49:47', '2022-07-18 10:49:47'),
(6, 1, 22, '2022-08-14 13:34:59', '2022-08-14 13:34:59'),
(7, 1, 21, '2022-08-23 14:28:48', '2022-08-23 14:28:48'),
(8, 1, 27, '2022-09-08 15:53:06', '2022-09-08 15:53:06');

-- --------------------------------------------------------

--
-- Table structure for table `chat_messages`
--

CREATE TABLE `chat_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `channel_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `from_id` bigint UNSIGNED NOT NULL,
  `to_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_messages`
--

INSERT INTO `chat_messages` (`id`, `channel_id`, `message`, `image`, `from_id`, `to_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'test 123', '', 2, 59, '2022-07-17 09:07:29', '2022-07-17 09:07:29'),
(2, 1, 'test 123', '', 2, 59, '2022-07-17 09:07:39', '2022-07-17 09:07:39'),
(3, 2, 'test 123', '', 2, 1, '2022-07-17 09:53:26', '2022-07-17 09:53:26'),
(4, 2, 'test 123', '', 2, 1, '2022-07-17 09:53:28', '2022-07-17 09:53:28'),
(5, 2, 'test 123', '', 2, 1, '2022-07-17 09:57:46', '2022-07-17 09:57:46'),
(6, 2, 'test 123', '', 2, 1, '2022-07-17 09:57:48', '2022-07-17 09:57:48'),
(7, 2, 'test 123', '', 2, 1, '2022-07-17 09:58:02', '2022-07-17 09:58:02'),
(8, 1, 'test 123', '', 2, 1, '2022-07-17 13:46:28', '2022-07-17 13:46:28'),
(9, 5, 'welcom', '', 5, 1, '2022-07-18 10:50:17', '2022-07-18 10:50:17'),
(10, 5, 'hi', '', 5, 1, '2022-07-18 11:32:28', '2022-07-18 11:32:28'),
(11, 5, 'good', '', 5, 1, '2022-07-18 11:48:53', '2022-07-18 11:48:53'),
(12, 1, '123123', NULL, 1, 2, '2022-08-01 02:21:06', '2022-08-01 02:21:06'),
(13, 1, '1313', NULL, 1, 2, '2022-08-01 02:41:25', '2022-08-01 02:41:25'),
(14, 5, 'hi', NULL, 1, 5, '2022-08-02 09:17:44', '2022-08-02 09:17:44'),
(15, 5, 'good', NULL, 1, 5, '2022-08-02 09:21:46', '2022-08-02 09:21:46'),
(16, 5, 'hi', NULL, 1, 5, '2022-08-02 09:23:37', '2022-08-02 09:23:37'),
(17, 2, '123', NULL, 1, 2, '2022-08-06 00:27:58', '2022-08-06 00:27:58'),
(18, 2, '123', NULL, 1, 2, '2022-08-06 00:27:59', '2022-08-06 00:27:59'),
(19, 2, 'i', NULL, 1, 2, '2022-08-06 00:53:50', '2022-08-06 00:53:50'),
(20, 2, 'i', NULL, 1, 2, '2022-08-06 00:53:51', '2022-08-06 00:53:51'),
(21, 2, '123123', NULL, 1, 2, '2022-08-06 01:06:20', '2022-08-06 01:06:20'),
(22, 2, '123123', NULL, 1, 2, '2022-08-06 01:06:25', '2022-08-06 01:06:25'),
(23, 2, '123123', NULL, 1, 2, '2022-08-06 01:06:30', '2022-08-06 01:06:30'),
(24, 2, '123123', NULL, 1, 2, '2022-08-06 01:06:33', '2022-08-06 01:06:33'),
(25, 5, 'hi', NULL, 1, 5, '2022-08-11 11:51:13', '2022-08-11 11:51:13'),
(26, 5, 'hello', NULL, 1, 5, '2022-08-11 11:51:37', '2022-08-11 11:51:37'),
(27, 5, 'hi', NULL, 1, 5, '2022-08-11 11:51:58', '2022-08-11 11:51:58'),
(28, 5, 'good', NULL, 1, 5, '2022-08-11 11:58:02', '2022-08-11 11:58:02'),
(29, 5, 'hi', NULL, 1, 5, '2022-08-11 11:58:46', '2022-08-11 11:58:46'),
(30, 1, 'ijihji', NULL, 1, 2, '2022-08-14 10:57:55', '2022-08-14 10:57:55'),
(31, 6, 'hi', '', 22, 1, '2022-08-14 13:35:04', '2022-08-14 13:35:04'),
(32, 6, 'hi', '', 22, 1, '2022-08-14 13:35:04', '2022-08-14 13:35:04'),
(33, 6, 'ana anaa', '', 22, 1, '2022-08-14 13:35:12', '2022-08-14 13:35:12'),
(34, 7, 'هاى', '', 21, 1, '2022-08-23 14:28:58', '2022-08-23 14:28:58'),
(35, 7, 'hi', NULL, 1, 21, '2022-08-23 14:29:35', '2022-08-23 14:29:35'),
(36, 6, 'msaa el 5eer', NULL, 1, 22, '2022-09-07 12:01:49', '2022-09-07 12:01:49'),
(37, 7, 'ih', NULL, 1, 21, '2022-09-08 15:05:23', '2022-09-08 15:05:23'),
(38, 6, 'hi', NULL, 1, 22, '2022-09-08 15:06:20', '2022-09-08 15:06:20'),
(39, 8, 'hi', '', 27, 1, '2022-09-08 15:53:12', '2022-09-08 15:53:12'),
(40, 6, 'hi', NULL, 1, 22, '2022-09-11 14:18:54', '2022-09-11 14:18:54');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `upper_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `upper_id`) VALUES
(1, '2022-06-16 10:39:58', '2022-06-16 10:39:58', NULL, '{\"en\":\"Cairo\",\"ar\":\"\\u0627\\u0644\\u0642\\u0627\\u0647\\u0631\\u0629\"}', NULL),
(2, '2022-06-16 10:39:58', '2022-08-23 15:46:51', '2022-08-23 15:46:51', '{\"en\":\"dka\",\"ar\":\"\\u0627\\u0644\\u062f\\u0642\\u0644\\u064a\\u0629\"}', 1),
(3, '2022-06-16 16:43:45', '2022-06-16 16:43:45', NULL, '{\"en\":\"giza\",\"ar\":\"\\u0627\\u0644\\u062c\\u064a\\u0632\\u0629\"}', NULL),
(4, '2022-06-16 16:44:05', '2022-06-16 16:44:05', NULL, '{\"en\":\"fisal\",\"ar\":\"\\u0641\\u064a\\u0635\\u0644\"}', 3),
(5, '2022-06-16 16:44:20', '2022-08-21 11:05:44', '2022-08-21 11:05:44', '{\"en\":\"alharam\",\"ar\":\"\\u0627\\u0644\\u0647\\u0631\\u0645\"}', 3),
(6, '2022-06-16 16:44:34', '2022-06-16 16:44:34', NULL, '{\"en\":\"shobra\",\"ar\":\"\\u0634\\u0628\\u0631\\u0627\"}', 1),
(7, '2022-06-16 16:44:58', '2022-08-21 11:06:21', '2022-08-21 11:06:21', '{\"en\":\"dka\",\"ar\":\"\\u0627\\u0644\\u062f\\u0642\\u0644\\u064a\\u0629\"}', NULL),
(8, '2022-06-16 16:45:14', '2022-08-21 11:05:25', '2022-08-21 11:05:25', '{\"en\":\"Mansoura\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0635\\u0648\\u0631\\u0629\"}', 7),
(9, '2022-06-16 16:45:31', '2022-08-21 11:05:29', '2022-08-21 11:05:29', '{\"en\":\"nabarou\",\"ar\":\"\\u0646\\u0628\\u0631\\u0648\\u0647\"}', 7),
(10, '2022-08-22 11:32:44', '2022-08-22 11:32:44', NULL, '{\"en\":\"Dakahlia\",\"ar\":\"\\u0627\\u0644\\u062f\\u0642\\u0647\\u0644\\u064a\\u0629\"}', NULL),
(11, '2022-08-22 11:33:30', '2022-08-22 11:33:30', NULL, '{\"en\":\"Red Sea\",\"ar\":\"\\u0627\\u0644\\u0628\\u062d\\u0631 \\u0627\\u0644\\u0623\\u062d\\u0645\\u0631\"}', NULL),
(12, '2022-08-22 11:33:55', '2022-08-22 11:33:55', NULL, '{\"en\":\"Beheira\",\"ar\":\"\\u0627\\u0644\\u0628\\u062d\\u064a\\u0631\\u0629\"}', NULL),
(13, '2022-08-22 11:34:11', '2022-08-22 11:34:11', NULL, '{\"en\":\"Faiyum\",\"ar\":\"\\u0627\\u0644\\u0641\\u064a\\u0648\\u0645\"}', NULL),
(14, '2022-08-22 11:34:28', '2022-08-22 11:34:28', NULL, '{\"en\":\"Gharbia\",\"ar\":\"\\u0627\\u0644\\u063a\\u0631\\u0628\\u064a\\u0629\"}', NULL),
(15, '2022-08-22 11:34:49', '2022-08-22 11:34:49', NULL, '{\"en\":\"Alexandria\",\"ar\":\"\\u0627\\u0644\\u0627\\u0633\\u0643\\u0646\\u062f\\u0631\\u064a\\u0629\"}', NULL),
(16, '2022-08-22 11:35:07', '2022-08-22 11:35:07', NULL, '{\"en\":\"Ismailia\",\"ar\":\"\\u0627\\u0644\\u0623\\u0633\\u0645\\u0627\\u0639\\u0644\\u064a\\u0629\"}', NULL),
(17, '2022-08-22 11:35:23', '2022-08-22 11:35:23', NULL, '{\"en\":\"Monufia\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u0648\\u0641\\u064a\\u0629\"}', NULL),
(18, '2022-08-22 11:35:40', '2022-08-22 11:35:40', NULL, '{\"en\":\"Suez\",\"ar\":\"\\u0627\\u0644\\u0633\\u0648\\u064a\\u0633\"}', NULL),
(19, '2022-08-22 11:35:54', '2022-08-22 11:35:54', NULL, '{\"en\":\"Al Sharqia\",\"ar\":\"\\u0627\\u0644\\u0634\\u0631\\u0642\\u064a\\u0629\"}', NULL),
(20, '2022-08-22 11:36:16', '2022-08-22 11:36:16', NULL, '{\"en\":\"Qalyubia\",\"ar\":\"\\u0627\\u0644\\u0642\\u0644\\u064a\\u0648\\u0628\\u064a\\u0629\"}', NULL),
(21, '2022-08-22 11:36:31', '2022-08-22 11:36:31', NULL, '{\"en\":\"Minya\",\"ar\":\"\\u0627\\u0644\\u0645\\u0646\\u064a\\u0627\"}', NULL),
(22, '2022-08-22 11:36:46', '2022-08-22 11:36:46', NULL, '{\"en\":\"Beni Suef\",\"ar\":\"\\u0628\\u0646\\u0649 \\u0633\\u0648\\u064a\\u0641\"}', NULL),
(23, '2022-08-22 11:37:02', '2022-08-22 11:37:02', NULL, '{\"en\":\"Asyut\",\"ar\":\"\\u0623\\u0633\\u064a\\u0648\\u0637\"}', NULL),
(24, '2022-08-22 11:37:16', '2022-08-22 11:37:16', NULL, '{\"en\":\"Aswan\",\"ar\":\"\\u0627\\u0633\\u0648\\u0627\\u0646\"}', NULL),
(25, '2022-08-22 11:37:36', '2022-08-22 11:37:36', NULL, '{\"en\":\"Luxor\",\"ar\":\"\\u0627\\u0644\\u0627\\u0642\\u0635\\u0631\"}', NULL),
(26, '2022-08-22 11:37:59', '2022-08-22 11:37:59', NULL, '{\"en\":\"North Sinai\",\"ar\":\"\\u0634\\u0645\\u0627\\u0644 \\u0633\\u064a\\u0646\\u0627\\u0621\"}', NULL),
(27, '2022-08-22 11:38:19', '2022-08-22 11:38:19', NULL, '{\"en\":\"South Sinai\",\"ar\":\"\\u062c\\u0646\\u0648\\u0628 \\u0633\\u064a\\u0646\\u0627\\u0621\"}', NULL),
(28, '2022-08-22 11:38:32', '2022-08-22 11:38:32', NULL, '{\"en\":\"Sohag\",\"ar\":\"\\u0633\\u0648\\u0647\\u0627\\u062c\"}', NULL),
(29, '2022-08-22 11:38:53', '2022-08-22 11:38:53', NULL, '{\"en\":\"Qena\",\"ar\":\"\\u0642\\u0646\\u0627\"}', NULL),
(30, '2022-08-22 11:39:08', '2022-08-22 11:39:08', NULL, '{\"en\":\"Matrouh\",\"ar\":\"\\u0645\\u0637\\u0631\\u0648\\u062d\"}', NULL),
(31, '2022-08-22 11:39:33', '2022-08-22 11:39:33', NULL, '{\"en\":\"Kafr elSheikh\",\"ar\":\"\\u0643\\u0641\\u0631 \\u0627\\u0644\\u0634\\u064a\\u062e\"}', NULL),
(32, '2022-08-22 11:39:50', '2022-08-22 11:39:50', NULL, '{\"en\":\"Damietta\",\"ar\":\"\\u062f\\u0645\\u064a\\u0627\\u0637\"}', NULL),
(33, '2022-08-22 11:40:06', '2022-08-22 11:40:06', NULL, '{\"en\":\"Port Said\",\"ar\":\"\\u0628\\u0648\\u0631 \\u0633\\u0639\\u064a\\u062f\"}', NULL),
(34, '2022-08-22 11:40:29', '2022-08-22 11:40:29', NULL, '{\"en\":\"New Valley\",\"ar\":\"\\u0627\\u0644\\u0648\\u0627\\u062f\\u0649 \\u0627\\u0644\\u062c\\u062f\\u064a\\u062f\"}', NULL),
(35, '2022-08-22 11:42:03', '2022-08-24 11:00:53', '2022-08-24 11:00:53', '{\"en\":\"Almaza\",\"ar\":\"\\u0627\\u0644\\u0645\\u0627\\u0638\\u0629\"}', NULL),
(36, '2022-08-22 11:42:23', '2022-08-24 11:00:50', '2022-08-24 11:00:50', '{\"en\":\"AlMukattam\",\"ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0637\\u0645\"}', NULL),
(37, '2022-08-22 11:42:45', '2022-08-24 11:00:47', '2022-08-24 11:00:47', '{\"en\":\"Madinat An Nasr\",\"ar\":\"\\u0645\\u062f\\u064a\\u0646\\u0629 \\u0646\\u0635\\u0631\"}', NULL),
(38, '2022-08-22 12:09:59', '2022-08-24 11:00:39', '2022-08-24 11:00:39', '{\"en\":\"AlMaadi\",\"ar\":\"\\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\\u0649\"}', NULL),
(39, '2022-08-22 15:01:06', '2022-08-24 11:00:36', '2022-08-24 11:00:36', '{\"en\":\"alharam\",\"ar\":\"\\u0627\\u0644\\u0647\\u0631\\u0645\"}', NULL),
(40, '2022-08-23 10:17:48', '2022-08-24 11:00:30', '2022-08-24 11:00:30', '{\"en\":\"test\",\"ar\":\"\\u062a\\u0633\\u062a\"}', NULL),
(41, '2022-08-23 10:22:05', '2022-08-23 10:22:10', '2022-08-23 10:22:10', '{\"en\":\"test\",\"ar\":\"\\u062a\\u0633\\u062a\"}', 1),
(42, '2022-08-23 12:43:49', '2022-08-23 12:43:59', '2022-08-23 12:43:59', '{\"en\":\"hhhh\",\"ar\":\"\\u0644\\u0644\\u0644\"}', 1),
(43, '2022-08-23 15:44:53', '2022-08-23 15:44:53', NULL, '{\"en\":\"Almoattam\",\"ar\":\"\\u0627\\u0644\\u0645\\u0642\\u0637\\u0645\"}', 1),
(44, '2022-08-24 11:01:31', '2022-08-24 11:01:31', NULL, '{\"en\":\"El Maadi\",\"ar\":\"\\u0627\\u0644\\u0645\\u0639\\u0627\\u062f\\u0649\"}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `created_at`, `updated_at`, `name`, `mobile`, `title`, `message`) VALUES
(1, '2022-06-23 11:26:38', '2022-06-23 11:26:38', 'name', '0123456789', 'email@email.com', 'eded'),
(2, '2022-06-26 10:57:27', '2022-06-26 10:57:27', 'name', '0123456789', 'email@email.com', 'eded'),
(3, '2022-06-29 12:52:27', '2022-06-29 12:52:27', 'name', '0123456789', 'title', 'eded'),
(5, '2022-06-30 10:04:11', '2022-06-30 10:04:11', 'mahmoud ezzat', '01001051097', 'deded', 'ccddc'),
(6, '2022-08-14 13:35:39', '2022-08-14 13:35:39', 'eman amin', '01010904147', 'eman.speed4trading@gmail.com', 'ghhfb'),
(7, '2022-08-23 14:28:42', '2022-08-23 14:28:42', 'fasel', '01005030166', 'الو', 'التتببابي');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`, `location`, `date`) VALUES
(1, NULL, '2022-08-23 14:18:46', NULL, '{\"en\":\"Title\",\"ar\":\"\\u0639\\u0646\\u0648\\u0627\\u0646\"}', '{\"en\":\"English content\",\"ar\":\"\\u0645\\u062d\\u062a\\u0648\\u0649 \\u0639\\u0631\\u0628\\u0649\"}', 'الجيزة', '2022-06-20'),
(2, NULL, NULL, NULL, 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى\r\nتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى\r\nتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'الجيزة', '2022-06-20');

-- --------------------------------------------------------

--
-- Table structure for table `event_images`
--

CREATE TABLE `event_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_images`
--

INSERT INTO `event_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `event_id`, `url`, `type`) VALUES
(1, NULL, '2022-08-23 12:49:21', NULL, 1, 'uploads/images/166125176173', 'image'),
(2, NULL, '2022-08-22 12:06:14', '2022-08-22 12:06:14', 1, 'uploads/images/164630808458download.jpeg', 'image'),
(3, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image'),
(4, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image'),
(5, '2022-08-21 00:26:15', '2022-08-22 12:06:18', '2022-08-22 12:06:18', 1, 'uploads/images/166103437528', '0'),
(6, '2022-08-22 12:06:34', '2022-08-23 12:49:55', NULL, 1, 'uploads/images/166125179559', 'image'),
(7, '2022-08-22 12:06:55', '2022-08-23 12:50:03', '2022-08-23 12:50:03', 1, 'uploads/images/166117846947', '1');

-- --------------------------------------------------------

--
-- Table structure for table `event_reservations`
--

CREATE TABLE `event_reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `event_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_reservations`
--

INSERT INTO `event_reservations` (`id`, `created_at`, `updated_at`, `deleted_at`, `event_id`, `user_id`, `status`, `cancel_reason`) VALUES
(1, '2022-06-20 12:56:13', '2022-06-20 12:56:13', NULL, 1, 2, 'new', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `question` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `created_at`, `updated_at`, `deleted_at`, `question`, `answer`, `language`) VALUES
(1, NULL, '2022-09-01 12:24:17', NULL, 'How to prepare ?', 'from desktop', 'en'),
(2, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(3, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(4, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(5, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(6, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(7, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(8, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(9, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(10, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(11, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(12, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(13, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(14, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(15, NULL, NULL, NULL, 'Question ?', 'Answer', 'en'),
(16, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(17, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(18, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(19, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(20, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(21, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(22, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(23, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(24, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(25, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(26, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(27, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(28, NULL, NULL, NULL, 'سؤال ؟', 'اجابة', 'ar'),
(29, '2022-08-30 15:23:45', '2022-08-30 15:23:45', NULL, 'كيفية برمجة كاميرا؟', 'اسأل الاول', 'ar');

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `favourable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `favourable_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `favourites`
--

INSERT INTO `favourites` (`id`, `favourable_type`, `favourable_id`, `user_id`, `created_at`, `updated_at`) VALUES
(7, 'App\\Models\\Item', 2, 4, '2022-06-29 17:57:36', '2022-06-29 17:57:36'),
(9, 'App\\Models\\Item', 3, 4, '2022-06-29 18:35:07', '2022-06-29 18:35:07'),
(15, 'App\\Models\\Item', 3, 15, '2022-08-09 17:47:59', '2022-08-09 17:47:59'),
(16, 'App\\Models\\Item', 2, 15, '2022-08-09 17:48:00', '2022-08-09 17:48:00'),
(20, 'App\\Models\\Item', 1, 2, '2022-08-11 15:19:48', '2022-08-11 15:19:48'),
(22, 'App\\Models\\Item', 5, 22, '2022-08-17 11:29:53', '2022-08-17 11:29:53'),
(24, 'App\\Models\\Item', 6, 5, '2022-08-18 13:16:39', '2022-08-18 13:16:39'),
(29, 'App\\Models\\Item', 5, 21, '2022-08-23 13:53:52', '2022-08-23 13:53:52'),
(31, 'App\\Models\\Item', 15, 29, '2022-09-13 14:35:46', '2022-09-13 14:35:46'),
(32, 'App\\Models\\Item', 16, 29, '2022-09-13 14:36:53', '2022-09-13 14:36:53'),
(33, 'App\\Models\\Item', 10, 21, '2022-09-13 15:02:01', '2022-09-13 15:02:01');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` json NOT NULL,
  `brand_id` bigint UNSIGNED NOT NULL,
  `category_id` bigint UNSIGNED NOT NULL,
  `points_to_gain` int NOT NULL DEFAULT '0',
  `point_to_get` int NOT NULL DEFAULT '0',
  `user_manual` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` decimal(8,2) NOT NULL,
  `old_price` decimal(8,2) DEFAULT NULL,
  `details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `image_resolution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lens_resolution` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `movement` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `night_capturing` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recording_mode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `internal_storage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `part_number` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(1, NULL, '2022-08-17 11:17:03', '2022-08-17 11:17:03', '{\"ar\": \"معدة ١\", \"en\": \"Equipment\"}', 2, 2, 10, 1000, NULL, '10.00', '15.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(2, NULL, '2022-08-17 11:17:06', '2022-08-17 11:17:06', '{\"ar\": \"معدة ١\", \"en\": \"Equipment2\"}', 1, 2, 10, 1000, NULL, '100.00', '150.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(3, NULL, '2022-08-17 11:17:14', '2022-08-17 11:17:14', '{\"ar\": \"معدة ١\", \"en\": \"Equipment3\"}', 1, 2, 10, 1000, NULL, '500.00', '1005.00', NULL, NULL, NULL, NULL, NULL, NULL, NULL, ''),
(4, '2022-08-14 10:56:24', '2022-08-24 13:35:16', '2022-08-24 13:35:16', '{\"ar\": \"كاميرات حرارية\", \"en\": \"thermal camera\"}', 3, 12, 5, 10, NULL, '500.00', '700.00', '{\"en\":\"<p>qweqwe<\\/p>\",\"ar\":\"<p>qweqwe<\\/p>\"}', '50', '201', '36', 'yes', 'yes', '250', ''),
(5, '2022-08-17 11:26:40', '2022-09-05 13:15:00', NULL, '{\"ar\": \"هاردات بربل\", \"en\": \"WD Purple Surveillance\"}', 4, 5, 5, 10, 'uploads/user_manual/166237650071test.pdf', '10000.00', NULL, '{\"en\":\"<p>Behavior analysis function, based on deep learning algorithm: line crossing, intrusion, region entrance and exit<br \\/>\\r\\nTemperature exception alarm for fire prevention<br \\/>\\r\\nFire detection algorithm<br \\/>\\r\\n384&times; 288 (the resolution of output image is 384 &times; 288) resolution 17 &mu;m, VOx UFPA, NETD &le; 40 mK (25 &deg;C, F# = 1.1)<br \\/>\\r\\nImage processing technology: Liner, histogram, and self-adaptive thermal AGC mode, DDE, 3D DNR<br \\/>\\r\\nHigh quality detector with 10 years guarantee<br \\/>\\r\\nSmart tracking: Panorama tracking, Event tracking and Multi-scene patrol tracking<br \\/>\\r\\nSmart tracking linkage: thermal view and optical view<br \\/>\\r\\nThermal channel supports EIS, conflicted with intelligent function<\\/p>\",\"ar\":\"<p>\\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \\u060c \\u0628\\u0646\\u0627\\u0621\\u064b \\u0639\\u0644\\u0649 \\u062e\\u0648\\u0627\\u0631\\u0632\\u0645\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0642: \\u0639\\u0628\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0637 \\u060c \\u0648\\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u060c \\u0648\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0621 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0644\\u0645\\u0646\\u0639 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0642 \\u062e\\u0648\\u0627\\u0631\\u0632\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 384 &times; 288 (\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0646\\u0627\\u062a\\u062c\\u0629 384 &times; 288) \\u062f\\u0642\\u0629 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u060c VOx UFPA \\u060c NETD &le; 40 \\u0645\\u0644\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a = 1.1) \\u062a\\u0642\\u0646\\u064a\\u0629 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631: \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0638\\u0645\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0633\\u0645 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u064a \\u060c \\u0648\\u0648\\u0636\\u0639 AGC \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641\\u064a \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a \\u060c DDE \\u060c 3D DNR \\u0643\\u0627\\u0634\\u0641 \\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0645\\u0639 \\u0636\\u0645\\u0627\\u0646 10 \\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0630\\u0643\\u064a: \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0628\\u0627\\u0646\\u0648\\u0631\\u0627\\u0645\\u064a \\u0648\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0623\\u062d\\u062f\\u0627\\u062b \\u0648\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u062f\\u0648\\u0631\\u064a\\u0627\\u062a \\u0645\\u062a\\u0639\\u062f\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0634\\u0627\\u0647\\u062f \\u0631\\u0628\\u0637 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0630\\u0643\\u064a: \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u062a\\u062f\\u0639\\u0645 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 EIS \\u060c \\u062a\\u062a\\u0639\\u0627\\u0631\\u0636 \\u0645\\u0639 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, '1 tira', '55555'),
(6, '2022-08-17 14:50:50', '2022-08-24 13:34:57', '2022-08-24 13:34:57', '{\"ar\": \"تست\", \"en\": \"test\"}', 3, 2, 1212, 1212, 'uploads/user_manual/166074065018', '20.00', '30.00', '<p>1212</p>', '12', '12', '12', '12', '12', '12', ''),
(7, '2022-08-17 14:53:04', '2022-08-17 14:53:37', '2022-08-17 14:53:37', '{\"ar\": \"لللا\", \"en\": \"jj\"}', 3, 2, 10, 10, NULL, '20.00', NULL, '<p>hhhhhhh</p>', '20', '20', '30', '20', '20', '20', ''),
(8, '2022-08-23 10:26:05', '2022-08-24 13:35:01', '2022-08-24 13:35:01', '{\"ar\": \"تست\", \"en\": \"test\"}', 3, 12, 4, 1, NULL, '10.00', '15.00', '<p>ثغ</p>', NULL, NULL, NULL, NULL, NULL, NULL, ''),
(9, '2022-08-24 14:37:45', '2022-08-24 14:46:21', '2022-08-24 14:46:21', '{\"ar\": \"تتتا\", \"en\": \"hhhhh\"}', 3, 12, 25, 25, NULL, '250.00', NULL, '{\"en\":\"<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\",\"ar\":\"<p>hhhhhhhh<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\\r\\n\\r\\n<p>hhhhhhhhjjljkjjjjkljkljkjjk jkjjjkjjkjkjkjkjkjkj.&nbsp; jjjkjkjkjkjjkjkjkjkjkjkjkjkjkjkjkjkjk<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'hhjjh'),
(10, '2022-08-24 15:12:24', '2022-09-05 13:18:22', NULL, '{\"ar\": \"كاميرات الشبكة الحرارية والبصرية ثنائية\", \"en\": \"Thermal Optical Bispectrum Network Speed Dome\"}', 5, 12, 10, 200, 'uploads/user_manual/166237670212test.pdf', '1500.00', '2000.00', '{\"en\":\"<ul>\\r\\n\\t<li>Behavior analysis function, based on deep learning algorithm: line crossing, intrusion, region entrance and exit<\\/li>\\r\\n\\t<li>Temperature exception alarm for fire prevention<\\/li>\\r\\n\\t<li>Fire detection algorithm<\\/li>\\r\\n\\t<li>384&times; 288 (the resolution of output image is 384 &times; 288) resolution 17 &mu;m, VOx UFPA, NETD &le; 40 mK (25 &deg;C, F# = 1.1)<\\/li>\\r\\n\\t<li>Image processing technology: Liner, histogram, and self-adaptive thermal AGC mode, DDE, 3D DNR<\\/li>\\r\\n\\t<li>High quality detector with 10 years guarantee<\\/li>\\r\\n\\t<li>Smart tracking: Panorama tracking, Event tracking and Multi-scene patrol tracking<\\/li>\\r\\n\\t<li>Smart tracking linkage: thermal view and optical view<\\/li>\\r\\n\\t<li>Thermal channel supports EIS, conflicted with intelligent function<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0648\\u0638\\u064a\\u0641\\u0629 \\u062a\\u062d\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0633\\u0644\\u0648\\u0643 \\u060c \\u0628\\u0646\\u0627\\u0621\\u064b \\u0639\\u0644\\u0649 \\u062e\\u0648\\u0627\\u0631\\u0632\\u0645\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0645\\u064a\\u0642: \\u0639\\u0628\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0637 \\u060c \\u0648\\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u060c \\u0648\\u062f\\u062e\\u0648\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0633\\u062a\\u062b\\u0646\\u0627\\u0621 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0644\\u0645\\u0646\\u0639 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0642 \\u062e\\u0648\\u0627\\u0631\\u0632\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 384 &times; 288 (\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0646\\u0627\\u062a\\u062c\\u0629 384 &times; 288) \\u062f\\u0642\\u0629 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u060c VOx UFPA \\u060c NETD &le; 40 \\u0645\\u0644\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a = 1.1) \\u062a\\u0642\\u0646\\u064a\\u0629 \\u0645\\u0639\\u0627\\u0644\\u062c\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631: \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0627\\u0644\\u0645\\u0644\\u0627\\u062d\\u064a\\u0629 \\u0627\\u0644\\u0645\\u0646\\u062a\\u0638\\u0645\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0633\\u0645 \\u0627\\u0644\\u0628\\u064a\\u0627\\u0646\\u064a \\u060c \\u0648\\u0648\\u0636\\u0639 AGC \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641\\u064a \\u0627\\u0644\\u0630\\u0627\\u062a\\u064a \\u060c DDE \\u060c 3D DNR \\u0643\\u0627\\u0634\\u0641 \\u0639\\u0627\\u0644\\u064a \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0645\\u0639 \\u0636\\u0645\\u0627\\u0646 10 \\u0633\\u0646\\u0648\\u0627\\u062a \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0630\\u0643\\u064a: \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0628\\u0627\\u0646\\u0648\\u0631\\u0627\\u0645\\u064a \\u0648\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0623\\u062d\\u062f\\u0627\\u062b \\u0648\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u062f\\u0648\\u0631\\u064a\\u0627\\u062a \\u0645\\u062a\\u0639\\u062f\\u062f\\u0629 \\u0627\\u0644\\u0645\\u0634\\u0627\\u0647\\u062f \\u0631\\u0628\\u0637 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0630\\u0643\\u064a: \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u062a\\u062f\\u0639\\u0645 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 EIS \\u060c \\u062a\\u062a\\u0639\\u0627\\u0631\\u0636 \\u0645\\u0639 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629<\\/p>\\r\\n\\r\\n<p>&nbsp;<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD1117-2/PA'),
(11, '2022-08-25 10:43:37', '2022-09-05 13:19:51', NULL, '{\"ar\": \"كاميرات الشبكة الحرارية والبصرية ثنائية 2\", \"en\": \"Thermal & Optical Bi-spectrum Network Speed Dome\"}', 5, 12, 10, 500, 'uploads/user_manual/166237679135test.pdf', '2500.00', '3000.00', '{\"en\":\"<ul>\\r\\n\\t<li>Thermal Module<\\/li>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution256 &times; 192 (the resolution of output image is 1280 &times; 720)<\\/li>\\r\\n\\t<li>Pixel Interval12 &mu;m<\\/li>\\r\\n\\t<li>Response Waveband8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETDLess than 35 mK (@25 &deg;C,F#=1.0)<\\/li>\\r\\n\\t<li>Focal Length10 mm<\\/li>\\r\\n\\t<li>Focus ModeAthermalized<\\/li>\\r\\n\\t<li>IFOV1.70 mrad<\\/li>\\r\\n\\t<li>ApertureF1.0<\\/li>\\r\\n\\t<li>Field Of View18&deg; &times; 13.5&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance1.2m<\\/li>\\r\\n\\t<li>Digital Zoom&times;2, &times;4, &times;8<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Optical Module<\\/li>\\r\\n\\t<li>Image Sensor1\\/2.8&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520, 4 MP<\\/li>\\r\\n\\t<li>Min. IlluminationColor: 0.05 Lux @(F1.2\\uff0cAGC ON), B\\/W: 0.01 Lux @(F1.2\\uff0cAGC ON)<\\/li>\\r\\n\\t<li>Field Of View58.4&deg; &times; 33.8&deg; (H &times; V) to 2.14&deg; &times; 1.2&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Focal Length4.8-153 mm, 32x<\\/li>\\r\\n\\t<li>Aperture (Range)F1.2-F4.4<\\/li>\\r\\n\\t<li>Focus ModeAuto &amp; Semi-auto &amp; Manual<\\/li>\\r\\n\\t<li>Shutter Speed1s to 1\\/100,000s<\\/li>\\r\\n\\t<li>WDR120 dB<\\/li>\\r\\n\\t<li>Optical DefogYes<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Image Effect<\\/li>\\r\\n\\t<li>Picture In PictureDisplay partial image of thermal channel on the full screen of optical channel<\\/li>\\r\\n\\t<li>Target ColorationSupported in white hot and black hot mode.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>PTZ<\\/li>\\r\\n\\t<li>Movement RangePan: 360&deg; Continuous Rotate; Tilt: From -5&deg; to + 90&deg; (auto flip)<\\/li>\\r\\n\\t<li>Pan SpeedConfigurable, From 0.1&deg;\\/s to 200&deg;\\/s, Preset Speed: 240&deg;\\/s<\\/li>\\r\\n\\t<li>Tilt SpeedConfigurable, From 0.1&deg;\\/s to 105&deg;\\/s, Preset Speed: 200&deg;\\/s<\\/li>\\r\\n\\t<li>Proportional ZoomYes<\\/li>\\r\\n\\t<li>Presets300 in total, 273 are configurable.<\\/li>\\r\\n\\t<li>Patrol Scan8; Up to 32 Presets Per Patrol<\\/li>\\r\\n\\t<li>Pattern Scan4; More Than 10 Minutes Per Pattern<\\/li>\\r\\n\\t<li>Power Off MemoryYes<\\/li>\\r\\n\\t<li>ParkPreset\\/Pattern Scan\\/Patrol Scan\\/Auto Scan\\/Tilt Scan\\/Random Scan\\/Frame Scan\\/Panorama Scan<\\/li>\\r\\n\\t<li>PT StatusTurn On\\/Turn Off<\\/li>\\r\\n\\t<li>Scheduled TaskPreset\\/Pattern Scan\\/Patrol Scan\\/Auto Scan\\/Tilt Scan\\/Random Scan\\/Frame Scan\\/Panorama Scan\\/Doom Reboot\\/Doom Adjust\\/Aux Output<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Illuminator<\\/li>\\r\\n\\t<li>IR DistanceUp to 100m<\\/li>\\r\\n\\t<li>IR Intensity And AngleAutomatically adjusted<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Smart Function<\\/li>\\r\\n\\t<li>VCASupport 4 VCA rule types (Line Crossing, Intrusion, Region Entrance, and Region Exiting), up to 10 scenes and 8 VCA rules for each scene<\\/li>\\r\\n\\t<li>Temperature MeasurementSupport 3 temperature measurement rule types, 273 presets as scene, 21 rules of each scene (10 points, 10 areas, and 1 line)<\\/li>\\r\\n\\t<li>Temperature Range-20 &deg;C to 150 &deg;C (-4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn;14.4 &deg;F)<\\/li>\\r\\n\\t<li>Fire DetectionDynamic fire detection, up to 10 fire points detectable.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Video And Audio<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>Optical channel<\\/p>\\r\\n\\r\\n\\t<p>50 Hz:25 fps (2688 &times; 1520\\uff0c1920&times;1080, 1280&times;960, 1280&times;720)<\\/p>\\r\\n\\r\\n\\t<p>60 Hz:30 fps (2688 &times; 1520\\uff0c1920&times;1080, 1280&times;960, 1280&times;720)<\\/p>\\r\\n\\r\\n\\t<p>Thermal channel<\\/p>\\r\\n\\r\\n\\t<p>25 fps (1920&times;1080, 1280&times;960,1280&times;720, 704 &times; 576, 640 &times;512, 256&times; 192)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub-Stream\\r\\n\\t<p>Optical channel<\\/p>\\r\\n\\r\\n\\t<p>50 Hz:25 fps (704 &times; 576, 352 &times; 288)<\\/p>\\r\\n\\r\\n\\t<p>60 Hz:30 fps (704 &times; 576, 352 &times; 288)<\\/p>\\r\\n\\r\\n\\t<p>Thermal channel<\\/p>\\r\\n\\r\\n\\t<p>25 fps (704 &times; 576, 640 &times;512, 256 &times; 192)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main stream: H.265+\\/H.265\\/H.264+\\/ H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG .711u\\/G.711a\\/G.722.1\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, Qos, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>Network StorageMicroSD\\/SDHC\\/SDXC card (up to 256 G) local storage, and NAS (NFS, SMB\\/CIFS), auto network replenishment (ANR)<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, third-party management platform, ONVIF (Profile S, Profile G, Profile T)<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and password), MAC address binding, HTTPS encryption, IEEE 802.1x access control, IP address filtering<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0+, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Interface<\\/li>\\r\\n\\t<li>Alarm Input7-ch inputs (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output2-ch relay outputs, alarm response actions configurable<\\/li>\\r\\n\\t<li>Alarm ActionPreset\\/Patrol Scan\\/Pattern Scan\\/SD Card Record\\/Relay Output\\/Smart capture\\/FTP upload\\/Email linkage<\\/li>\\r\\n\\t<li>Audio Input1, 3.5 mm Mic in\\/Line in interface. Line input: 2 - 2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/li>\\r\\n\\t<li>Audio OutputLinear Level; Impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Analog Video Output1.0 V [p-p]\\/75 &Omega;, BNC for thermal channel<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Web Client Language\\r\\n\\t<p>32 languages<\\/p>\\r\\n\\r\\n\\t<p>English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Supply\\r\\n\\t<p>24VAC &plusmn; 20%, two-core terminal block<\\/p>\\r\\n\\r\\n\\t<p>48VDC &plusmn; 20%, two-core terminal block<\\/p>\\r\\n\\r\\n\\t<p>Hi-PoE<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>24 VAC &plusmn; 20%: 0.88 A, max. 30 W<\\/p>\\r\\n\\r\\n\\t<p>48 VDC &plusmn; 20%: 0.625 A, max. 30 W<\\/p>\\r\\n\\r\\n\\t<p>Hi-PoE (Max. 30 W)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Working Temperature\\/HumidityFrom -40&deg;C to 65&deg;C (-40&deg;F to 149&deg;F); Humidity: 95% or Less<\\/li>\\r\\n\\t<li>Protection LevelIP66 Standard; TVS 6000V Lightning Protection, Surge Protection and Voltage Transient Protection<\\/li>\\r\\n\\t<li>Dimension305 mm &times; 185 mm &times; 163 mm (12.01 &quot; &times; 7.28 &quot; &times; 6.42 &quot;)<\\/li>\\r\\n\\t<li>Approx. 3.9Kg (8.6lb)<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0645\\u0635\\u0641\\u0648\\u0641\\u0627\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f\\u0629 \\u0645\\u0646 \\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u0627\\u0644\\u062f\\u0642\\u0629 256 &times; 192 (\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0646\\u0627\\u062a\\u062c\\u0629 1280 &times; 720) \\u0627\\u0644\\u0641\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0632\\u0645\\u0646\\u064a \\u0644\\u0644\\u0628\\u0643\\u0633\\u0644 12 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0646\\u0637\\u0627\\u0642 \\u0645\\u0648\\u062c\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629: 8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0623\\u0642\\u0644 \\u0645\\u0646 35 \\u0645\\u0644\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (@ 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a # = 1.0) \\u0627\\u0644\\u0637\\u0648\\u0644 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 10 \\u0645\\u0644\\u0645 \\u0648\\u0636\\u0639 \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 IFOV1.70 \\u0645\\u0631\\u0627\\u062f \\u0627\\u0644\\u0641\\u062a\\u062d\\u0629: F1.0 \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 18 \\u062f\\u0631\\u062c\\u0629 &times; 13.5 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 1.2m \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a &times; 2 \\u060c &times; 4 \\u060c &times; 8 \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 1 \\/ 2.8 &quot;CMOS \\u0644\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u062c\\u064a \\u0627\\u0644\\u062f\\u0642\\u0629 2688 &times; 1520 \\u060c 4 \\u0645\\u064a\\u062c\\u0627 \\u0628\\u0643\\u0633\\u0644 \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0644\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0621\\u0629: 0.05 \\u0644\\u0648\\u0643\\u0633 @ (F1.2 \\uff0c AGC ON) \\u060c B \\/ W: 0.01 Lux @ (F1.2 \\uff0c AGC ON) \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 58.4 \\u062f\\u0631\\u062c\\u0629 &times; 33.8 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u0625\\u0644\\u0649 2.14 \\u062f\\u0631\\u062c\\u0629 &times; 1.2 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u0627\\u0644\\u0637\\u0648\\u0644 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a4.8-153 \\u0645\\u0645 \\u060c 32x \\u0627\\u0644\\u0641\\u062a\\u062d\\u0629 (\\u0627\\u0644\\u0645\\u062f\\u0649) F1.2-F4.4 \\u0648\\u0636\\u0639 \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632: \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0648\\u0634\\u0628\\u0647 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0648\\u064a\\u062f\\u0648\\u064a \\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u063a\\u0627\\u0644\\u0642 \\u0645\\u0646 1 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 1 \\/ 100\\u060c000 \\u062b\\u0627\\u0646\\u064a\\u0629 WDR120 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644 \\u0628\\u0635\\u0631\\u064a Defog \\u0646\\u0639\\u0645 \\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 Picture In Picture \\u064a\\u0639\\u0631\\u0636 \\u0635\\u0648\\u0631\\u0629 \\u062c\\u0632\\u0626\\u064a\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0627\\u0634\\u0629 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0636\\u0648\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u062f\\u0641 \\u0645\\u062f\\u0639\\u0648\\u0645 \\u0641\\u064a \\u0648\\u0636\\u0639 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646. PTZ \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062d\\u0631\\u0643\\u0629: 360 \\u062f\\u0631\\u062c\\u0629 \\u062f\\u0648\\u0631\\u0627\\u0646 \\u0645\\u0633\\u062a\\u0645\\u0631 \\u061b \\u0627\\u0644\\u0625\\u0645\\u0627\\u0644\\u0629: \\u0645\\u0646 -5 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0625\\u0644\\u0649 + 90 \\u062f\\u0631\\u062c\\u0629 (\\u0642\\u0644\\u0628 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a) \\u062d\\u0631\\u0645\\u0627\\u0646 \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0647\\u064a\\u0626\\u0629 \\u060c \\u0645\\u0646 0.1 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 200 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627: 240 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0625\\u0645\\u0627\\u0644\\u0629 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0647\\u064a\\u0626\\u0629 \\u060c \\u0645\\u0646 0.1 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 105 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0633\\u0631\\u0639\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627: 200 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u0628\\u064a\\u0631 \\u0627\\u0644\\u0646\\u0633\\u0628\\u064a \\u0646\\u0639\\u0645 \\u0627\\u0644\\u0645\\u0633\\u0628\\u0642\\u0629 300 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 \\u060c 273 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646. \\u0641\\u062d\\u0635 \\u062f\\u0648\\u0631\\u064a\\u0629 \\u061b \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064b\\u0627 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627 \\u0644\\u0643\\u0644 \\u062f\\u0648\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062d \\u0627\\u0644\\u0646\\u0645\\u0637 4 \\u061b \\u0623\\u0643\\u062b\\u0631 \\u0645\\u0646 10 \\u062f\\u0642\\u0627\\u0626\\u0642 \\u0644\\u0643\\u0644 \\u0646\\u0645\\u0637 \\u0630\\u0627\\u0643\\u0631\\u0629 \\u0625\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644 \\u0646\\u0639\\u0645 ParkPreset \\/ \\u0645\\u0633\\u062d \\u0646\\u0645\\u0637 \\/ \\u0641\\u062d\\u0635 \\u062f\\u0648\\u0631\\u064a\\u0629 \\/ \\u0645\\u0633\\u062d \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\/ \\u0645\\u0633\\u062d \\u0645\\u0627\\u0626\\u0644 \\/ \\u0645\\u0633\\u062d \\u0639\\u0634\\u0648\\u0627\\u0626\\u064a \\/ \\u0645\\u0633\\u062d \\u0625\\u0637\\u0627\\u0631 \\/ \\u0645\\u0633\\u062d \\u0628\\u0627\\u0646\\u0648\\u0631\\u0627\\u0645\\u064a \\u062d\\u0627\\u0644\\u0629 PTTurn \\u062a\\u0634\\u063a\\u064a\\u0644 \\/ \\u0625\\u064a\\u0642\\u0627\\u0641 \\u0627\\u0644\\u0645\\u0647\\u0627\\u0645 \\u0627\\u0644\\u0645\\u062c\\u062f\\u0648\\u0644\\u0629 \\/ \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0633\\u0628\\u0642 \\/ \\u0645\\u0633\\u062d \\u0627\\u0644\\u0646\\u0645\\u0637 \\/ \\u0641\\u062d\\u0635 \\u0627\\u0644\\u062f\\u0648\\u0631\\u064a\\u0627\\u062a \\/ \\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\/ \\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u0645\\u0627\\u0626\\u0644 \\/ \\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u0639\\u0634\\u0648\\u0627\\u0626\\u064a \\/ \\u0645\\u0633\\u062d \\u0627\\u0644\\u0625\\u0637\\u0627\\u0631 \\/ \\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u0628\\u0627\\u0646\\u0648\\u0631\\u0627\\u0645\\u064a \\/ \\u0625\\u0639\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0634\\u063a\\u064a\\u0644 \\/ \\u0636\\u0628\\u0637 \\u0627\\u0644\\u0645\\u0648\\u062a \\/ \\u0625\\u062e\\u0631\\u0627\\u062c Aux \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631 \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621: \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 100 \\u0645\\u062a\\u0631 \\u0634\\u062f\\u0629 \\u0648\\u0632\\u0627\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u064a\\u062a\\u0645 \\u0636\\u0628\\u0637\\u0647\\u0627 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u064b\\u0627 \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0630\\u0643\\u064a\\u0629 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0642\\u0648\\u0627\\u0639\\u062f VCASupport 4 VCA (\\u062a\\u0642\\u0627\\u0637\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0648\\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u0648\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629) \\u060c \\u062d\\u062a\\u0649 10 \\u0645\\u0634\\u0627\\u0647\\u062f \\u0648 8 \\u0642\\u0648\\u0627\\u0639\\u062f VCA \\u0644\\u0643\\u0644 \\u0645\\u0634\\u0647\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629: \\u062f\\u0639\\u0645 3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u060c \\u0648 273 \\u0625\\u0639\\u062f\\u0627\\u062f\\u064b\\u0627 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627 \\u0643\\u0645\\u0634\\u0647\\u062f \\u060c \\u0648 21 \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0644\\u0643\\u0644 \\u0645\\u0634\\u0647\\u062f (10 \\u0646\\u0642\\u0627\\u0637 \\u060c \\u0648 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648\\u062e\\u0637 \\u0648\\u0627\\u062d\\u062f) \\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 -20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 302 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 &plusmn; 8 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (&plusmn; 14.4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a \\u0644\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0643\\u062a\\u0634\\u0627\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 10 \\u0646\\u0642\\u0627\\u0637 \\u062d\\u0631\\u064a\\u0642. \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0642\\u0646\\u0627\\u0629 \\u0628\\u0635\\u0631\\u064a\\u0629 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 &times; 1920 &times; 1080 \\u060c 1280 &times; 960 \\u060c 1280 &times; 720) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 &times; 1920 &times; 1080 \\u060c 1280 &times; 960 \\u060c 1280 &times; 720) \\u0642\\u0646\\u0627\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1920 &times; 1080 \\u060c 1280 &times; 960 \\u060c 1280 &times; 720 \\u060c 704 &times; 576 \\u060c 640 &times; 512 \\u060c 256 &times; 192) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a \\u0642\\u0646\\u0627\\u0629 \\u0628\\u0635\\u0631\\u064a\\u0629 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288) \\u0642\\u0646\\u0627\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 640 &times; 512 \\u060c 256 &times; 192) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 + \\/ H.265 \\/ H.264 + \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G .711u \\/ G.711a \\/ G.722.1 \\/ MP2L2 \\/ G.726 \\/ PCM \\u0634\\u0628\\u0643\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a IPv4 \\/ IPv6 \\u060c HTTP \\u060c HTTPS \\u060c 802.1x \\u060c Qos \\u060c FTP \\u060c SMTP \\u060c UPnP \\u060c SNMP \\u060c DNS \\u060c DDNS \\u060c NTP \\u060c RTSP \\u060c RTCP \\u060c RTP \\u060c TCP \\u060c UDP \\u060c IGMP \\u060c ICMP \\u060c DHCP \\u060c PPPOE \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\/ SDHC \\/ SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u064a\\u062c\\u0627 \\u0628\\u0627\\u064a\\u062a) \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0645\\u062d\\u0644\\u064a \\u060c \\u0648 NAS (NFS \\u060c SMB \\/ CIFS) \\u060c \\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 (ANR) APIISAPI \\u060c HIKVISION SDK \\u060c \\u0645\\u0646\\u0635\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0637\\u0631\\u0641 \\u062b\\u0627\\u0644\\u062b \\u060c ONVIF (\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a S \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a G \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a T) \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646 \\u062d\\u062a\\u0649 20 \\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\/ \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641 \\u062d\\u062a\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064b\\u0627 \\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644 \\u060c \\u0627\\u0644\\u0645\\u0634\\u063a\\u0644 \\u060c \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (\\u0627\\u0644\\u0645\\u0639\\u0631\\u0641 \\u0648\\u0643\\u0644\\u0645\\u0629 \\u0627\\u0644\\u0645\\u0631\\u0648\\u0631) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 IEEE 802.1x \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP ClientiVMS-4200 \\u060c Hik-Connect \\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11 \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0628\\u062f\\u0648\\u0646 \\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629): Chrome 57.0 + \\u060c Firefox 52.0 + \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629: Chrome 57.0+\\u060c Firefox 52.0 + \\u0648\\u0627\\u062c\\u0647\\u0647 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 7-ch (0-5 VDC) \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0627\\u0644\\u0625\\u062e\\u0631\\u0627\\u062c 2-ch \\u0627\\u0644\\u062a\\u062a\\u0627\\u0628\\u0639 \\u060c \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0634\\u0643\\u0644\\u064a \\u0625\\u062c\\u0631\\u0627\\u0621 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0633\\u0628\\u0642 \\/ \\u0645\\u0633\\u062d \\u062f\\u0648\\u0631\\u064a\\u0629 \\/ \\u0645\\u0633\\u062d \\u0646\\u0645\\u0637 \\/ \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0628\\u0637\\u0627\\u0642\\u0629 SD \\/ \\u0625\\u062e\\u0631\\u0627\\u062c \\u0645\\u0631\\u062d\\u0644 \\/ \\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0630\\u0643\\u064a \\/ \\u062a\\u062d\\u0645\\u064a\\u0644 FTP \\/ \\u0631\\u0628\\u0637 \\u0628\\u0631\\u064a\\u062f \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c \\u0645\\u062f\\u062e\\u0644 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 3.5 \\u0645\\u0644\\u0645 \\/ \\u0648\\u0627\\u062c\\u0647\\u0629 \\u062e\\u0637\\u064a\\u0629. \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2 - 2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a: \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a \\u061b \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629: 600 \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 \\u062e\\u0631\\u062c \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u0646\\u0627\\u0638\\u0631\\u064a 1.0 \\u0641\\u0648\\u0644\\u062a [p-p] \\/ 75 \\u0623\\u0648\\u0645 \\u060c BNC \\u0644\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0642\\u0646\\u0627\\u0629 \\u0639\\u0627\\u0645 \\u0644\\u063a\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0648\\u064a\\u0628 32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644) \\u0645\\u0632\\u0648\\u062f \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 24VAC &plusmn; 20\\u066a \\u060c \\u0643\\u062a\\u0644\\u0629 \\u0637\\u0631\\u0641\\u064a\\u0629 \\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0646\\u0648\\u0627\\u0629 48VDC &plusmn; 20\\u066a \\u060c \\u0643\\u062a\\u0644\\u0629 \\u0637\\u0631\\u0641\\u064a\\u0629 \\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0646\\u0648\\u0627\\u0629 \\u0645\\u0631\\u062d\\u0628\\u0627 \\u0628\\u0648 \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 24 \\u0641\\u0648\\u0644\\u062a \\u062a\\u064a\\u0627\\u0631 \\u0645\\u062a\\u0631\\u062f\\u062f &plusmn; 20\\u066a: 0.88 \\u0623\\u0645\\u0628\\u064a\\u0631 \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 30 \\u0648\\u0627\\u0637 48 VDC &plusmn; 20\\u066a: 0.625 \\u0623\\u0645\\u0628\\u064a\\u0631 \\u060c \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 30 \\u0648\\u0627\\u0637 Hi-PoE (\\u0628\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649 30 \\u0648\\u0627\\u0637) \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 \\u0645\\u0646 -40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u061b \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629: 95\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 IP66 \\u0642\\u064a\\u0627\\u0633\\u064a \\u061b \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642 TVS 6000V \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0648\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0647\\u062f \\u0627\\u0644\\u0639\\u0627\\u0628\\u0631 \\u0627\\u0644\\u0623\\u0628\\u0639\\u0627\\u062f 305 \\u0645\\u0645 &times; 185 \\u0645\\u0645 &times; 163 \\u0645\\u0645 (12.01 \\u0628\\u0648\\u0635\\u0629 &times; 7.28 \\u0628\\u0648\\u0635\\u0629 &times; 6.42 \\u0628\\u0648\\u0635\\u0629) \\u062a\\u0642\\u0631\\u064a\\u0628\\u0627. 3.9 \\u0643\\u062c\\u0645 (8.6 \\u0631\\u0637\\u0644)<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD4228-10/W');
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(12, '2022-08-25 11:16:06', '2022-09-05 13:25:56', NULL, '{\"ar\": \"كاميرا رصاصة شبكية حرارية وبصرية ثنائية\", \"en\": \"Thermal  Optical Bispectrum Network Bullet Camera\"}', 5, 12, 20, 300, 'uploads/user_manual/166237715630test.pdf', '3000.00', '5000.00', '{\"en\":\"<p><span style=\\\"font-size:16px\\\"><strong>Thermal Module<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution384 &times; 288<\\/li>\\r\\n\\t<li>Pixel Interval17 &mu;m<\\/li>\\r\\n\\t<li>Response Waveband8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETDLess than 35 mK (@25 &deg;C,F#=1.0)<\\/li>\\r\\n\\t<li>Focal Length15 mm<\\/li>\\r\\n\\t<li>IFOV1.13 mrad<\\/li>\\r\\n\\t<li>Field Of View24.5&deg; &times; 18.5&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance2.5 m<\\/li>\\r\\n\\t<li>ApertureF1.0<\\/li>\\r\\n\\t<li>Digital Zoom&times;2, &times;4, &times;8<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<p><span style=\\\"font-size:16px\\\"><strong>Optical Module<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<ol>\\r\\n\\t<li>Image Sensor1\\/2.7&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520, 4 MP<\\/li>\\r\\n\\t<li>Min. IlluminationColor: 0.0089 Lux @(F1.6, AGC ON), B\\/W: 0.0018 Lux @(F1.6, AGC ON)<\\/li>\\r\\n\\t<li>Shutter Speed1s to 1\\/100,000s<\\/li>\\r\\n\\t<li>Focal Length6 mm<\\/li>\\r\\n\\t<li>Field Of View51.7&deg; &times; 28&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Aperture (Range)F1.6<\\/li>\\r\\n\\t<li>WDR120 dB<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Image Effect<\\/li>\\r\\n\\t<li>Bi-Spectrum Image FusionDisplay the details of optical channel on thermal channel<\\/li>\\r\\n\\t<li>Picture In PictureDisplay partial image of thermal channel on the full screen of optical channel<\\/li>\\r\\n\\t<li>Target ColorationYes. Supported in white hot and black hot mode.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Illuminator<\\/li>\\r\\n\\t<li>IR DistanceUp to 40 m<\\/li>\\r\\n\\t<li>IR Intensity And AngleAutomatically adjusted<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Smart Function<\\/li>\\r\\n\\t<li>VCA4 VCA rule types (line crossing, intrusion, region entrance, and region exiting), up to 8 VCA rules in total.<\\/li>\\r\\n\\t<li>Temperature Measurement3 temperature measurement rule types, 21 rules in total (10 points, 10 areas, and 1 line).<\\/li>\\r\\n\\t<li>Temperature Range-20 &deg;C to 150 &deg;C (-4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn;14.4 &deg;F)<\\/li>\\r\\n\\t<li>Fire DetectionDynamic fire detection, up to 10 fire points detectable.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Video And Audio<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>Thermal:<\\/p>\\r\\n\\r\\n\\t<p>25 fps (1280 &times; 720, 704 &times; 576, 640 &times; 480, 352 &times; 288, 320 &times; 240);Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720);Optical:<\\/p>\\r\\n\\r\\n\\t<p>60Hz: 30 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub Stream\\r\\n\\t<p>Thermal: 25 fps (704 &times; 576, 352 &times; 288, 320 &times; 240);Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (704 &times; 576, 352 &times; 288, 176 &times; 144);Optical:<\\/p>\\r\\n\\r\\n\\t<p>60 Hz: 30 fps (704 &times; 480, 352 &times; 240, 176 &times; 120)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG .711u\\/G.711a\\/G.722.1\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, Qos, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>Network StorageMicroSD\\/SDHC\\/SDXC card (up to 256 G) local storage, and NAS (NFS, SMB\\/CIFS), auto network replenishment (ANR)<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, and third-party management platform, ONVIF (Profile S, Profile G, Profile T)<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and PW), MAC address binding, HTTPS encryption, IEEE 802.1x(EAP-MD5, EAP-TLS), access control, IP address filtering<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0+, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Interface<\\/li>\\r\\n\\t<li>Alarm Input2-ch inputs (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output2-ch relay outputs, alarm response actions configurable<\\/li>\\r\\n\\t<li>Alarm ActionSD recording\\/Relay output\\/Smart capture\\/FTP upload\\/Email linkage<\\/li>\\r\\n\\t<li>Audio Input1, 3.5 mm Mic in\\/Line in interface. Line input: 2 - 2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/li>\\r\\n\\t<li>Audio OutputLinear Level; Impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Web Client Language\\r\\n\\t<p>32 languages<\\/p>\\r\\n\\r\\n\\t<p>English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>PowerPoE (802.3af, class 3): 44 V to 57 V, 0.22 A to 0.17 A<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>18 VAC to 30 VAC: 0.38 A to 0.22 A, max. 9 W<\\/p>\\r\\n\\r\\n\\t<p>9 VDC to 15 VDC: 0.63 A to 1.06 A, max. 9 W<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3): 44 V to 57 V, 0.22 A to 0.17 A, max. 9.5 W<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Work Temperature\\/HumidityFrom -40&deg;C to 65&deg;C (-40&deg;F to 149&deg;F); Humidity: 95% or Less<\\/li>\\r\\n\\t<li>Protection Level\\r\\n\\t<p>IP67 Standard<\\/p>\\r\\n\\r\\n\\t<p>TVS 6000 V lightning protection, surge protection, voltage transient protection<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Dimension376.1 mm &times; 119.1 mm &times; 118.1 mm (14.81&quot; &times; 4.68&quot; &times; 4.65&quot;)<\\/li>\\r\\n\\t<li>Approx. 1.82 kg (4.01 lb)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Detection Range Table\\/Wide Range Coverage<\\/li>\\r\\n\\t<li>Detection Range For Humans (1.8&times;0.5m)441 m<\\/li>\\r\\n\\t<li>Detection Range For Vehicles (4.0&times;1.4m)1353 m<\\/li>\\r\\n\\t<li>Recognition Range For Humans (1.8&times;0.5m)110 m<\\/li>\\r\\n\\t<li>Recognition Range For Vehicles (4.0&times;1.4m)338 m<\\/li>\\r\\n\\t<li>Identification Range For Humans (1.8&times;0.5m)55 m<\\/li>\\r\\n\\t<li>Identification Range For Vehicles (4.0&times;1.4m)169 m<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Detection Range Table\\/Smart Function Range<\\/li>\\r\\n\\t<li>VCA Range For Humans110 m<\\/li>\\r\\n\\t<li>VCA Range For Vehicles309 m<\\/li>\\r\\n\\t<li>Temperature Measurement Range For Object (2m&times;2m)351 m<\\/li>\\r\\n\\t<li>Temperature Measurement Range For Object (1m&times;1m)177 m<\\/li>\\r\\n\\t<li>Fire Detection Range For Object (2m&times;2m)882 m<\\/li>\\r\\n\\t<li>Fire Detection Range For Object (1m&times;1m)441 m<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0641\\u0627\\u0626\\u0641 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f \\u0628\\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 384 &times; 288 \\u0641\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0628\\u0643\\u0633\\u0644 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0646\\u0637\\u0627\\u0642 \\u0645\\u0648\\u062c\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 NETD \\u0623\\u0642\\u0644 \\u0645\\u0646 35 \\u0645\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (@ 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a # = 1.0) \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 15 \\u0645\\u0644\\u0645 IFOV 1.13 \\u0645\\u0631\\u0627\\u062f \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 24.5 \\u062f\\u0631\\u062c\\u0629 &times; 18.5 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0641\\u0629 2.5 \\u0645 \\u0641\\u062a\\u062d\\u0629 F1.0 \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a &times; 2 \\u060c &times; 4 \\u060c &times; 8 \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 1 \\/ 2.7 &quot;\\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645\\u064a CMOS \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 2688 &times; 1520 \\u060c 4 \\u0645\\u064a\\u062c\\u0627\\u0628\\u0643\\u0633\\u0644 \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0625\\u0636\\u0627\\u0621\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646: 0.0089 Lux @ (F1.6\\u060c AGC ON)\\u060c B \\/ W: 0.0018 Lux @ (F1.6\\u060c AGC ON) \\u0633\\u0631\\u0639\\u0629 \\u0645\\u0635\\u0631\\u0627\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0645\\u0646 1s \\u0625\\u0644\\u0649 1 \\/ 100\\u060c000 \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 6 \\u0645\\u0644\\u0645 \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 51.7 \\u062f\\u0631\\u062c\\u0629 &times; 28 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u0627\\u0644\\u0641\\u062a\\u062d\\u0629 (\\u0627\\u0644\\u0645\\u062f\\u0649) F1.6 WDR 120 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644 \\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u062f\\u0645\\u062c \\u0635\\u0648\\u0631\\u0629 \\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0637\\u064a\\u0641 \\u0639\\u0631\\u0636 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0636\\u0648\\u0626\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0635\\u0648\\u0631 \\u0641\\u064a \\u0635\\u0648\\u0631 \\u0639\\u0631\\u0636 \\u0635\\u0648\\u0631\\u0629 \\u062c\\u0632\\u0626\\u064a\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0627\\u0634\\u0629 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0636\\u0648\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0647\\u062f\\u0641 \\u0627\\u0644\\u062a\\u0644\\u0648\\u064a\\u0646 \\u0646\\u0639\\u0645. \\u0645\\u062f\\u0639\\u0648\\u0645 \\u0641\\u064a \\u0648\\u0636\\u0639 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646. \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631 \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 40 \\u0645 \\u0643\\u062b\\u0627\\u0641\\u0629 \\u0648\\u0632\\u0627\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u062a\\u0645 \\u0636\\u0628\\u0637\\u0647 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u064b\\u0627 \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0630\\u0643\\u064a\\u0629 VCA 4 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f VCA (\\u062a\\u0642\\u0627\\u0637\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u060c \\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u0648\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629) \\u060c \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 8 \\u0642\\u0648\\u0627\\u0639\\u062f VCA \\u0641\\u064a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639. \\u0642\\u064a\\u0627\\u0633 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u060c \\u0625\\u062c\\u0645\\u0627\\u0644\\u064a 21 \\u0642\\u0627\\u0639\\u062f\\u0629 (10 \\u0646\\u0642\\u0627\\u0637 \\u060c 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648\\u062e\\u0637 \\u0648\\u0627\\u062d\\u062f). \\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 -20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 302 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 &plusmn; 8 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (&plusmn; 14.4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0642 \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0643\\u062a\\u0634\\u0627\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 10 \\u0646\\u0642\\u0627\\u0637 \\u062d\\u0631\\u064a\\u0642. \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u062d\\u0631\\u0627\\u0631\\u064a: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u060c 704 &times; 576 \\u060c 640 &times; 480 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u061b \\u0628\\u0635\\u0631\\u064a: 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) \\u061b \\u0628\\u0635\\u0631\\u064a: 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a \\u062d\\u0631\\u0627\\u0631\\u064a: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u061b \\u0628\\u0635\\u0631\\u064a: 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 176 &times; 144) \\u061b \\u0628\\u0635\\u0631\\u064a: 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 480\\u060c 352 &times; 240\\u060c 176 &times; 120) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G.711u \\/ G.711a \\/ G.722.1 \\/ MP2L2 \\/ G.726 \\/ PCM \\u0634\\u0628\\u0643\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a IPv4 \\/ IPv6 \\u060c HTTP \\u060c HTTPS \\u060c 802.1x \\u060c Qos \\u060c FTP \\u060c SMTP \\u060c UPnP \\u060c SNMP \\u060c DNS \\u060c DDNS \\u060c NTP \\u060c RTSP \\u060c RTCP \\u060c RTP \\u060c TCP \\u060c UDP \\u060c IGMP \\u060c ICMP \\u060c DHCP \\u060c PPPOE \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\/ SDHC \\/ SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u064a\\u062c\\u0627 \\u0628\\u0627\\u064a\\u062a) \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0645\\u062d\\u0644\\u064a \\u060c \\u0648 NAS (NFS \\u060c SMB \\/ CIFS) \\u060c \\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 (ANR) API ISAPI \\u0648 HIKVISION SDK \\u0648\\u0645\\u0646\\u0635\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062c\\u0647\\u0629 \\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u060c ONVIF (\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a S \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a G \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a T) \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 20 \\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\/ \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064b\\u0627 \\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0645\\u0633\\u0624\\u0648\\u0644 \\u060c \\u0639\\u0627\\u0645\\u0644 \\u060c \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (\\u0627\\u0644\\u0645\\u0639\\u0631\\u0641 \\u0648 PW) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c IEEE 802.1x (EAP-MD5 \\u060c EAP-TLS) \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP \\u0639\\u0645\\u064a\\u0644 iVMS-4200 \\u060c Hik-Connect \\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11 \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0628\\u062f\\u0648\\u0646 \\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629): Chrome 57.0 + \\u060c Firefox 52.0 + \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629: Chrome 57.0+\\u060c Firefox 52.0 + \\u0648\\u0627\\u062c\\u0647\\u0647 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a 2-ch (0-5 VDC) \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u062e\\u0631\\u062c\\u0627\\u062a \\u0645\\u0631\\u062d\\u0644 2-ch \\u060c \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u062a\\u0633\\u062c\\u064a\\u0644 SD \\/ \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u0645\\u0631\\u062d\\u0644 \\/ \\u0627\\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0630\\u0643\\u064a \\/ \\u062a\\u062d\\u0645\\u064a\\u0644 FTP \\/ \\u0631\\u0628\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c 3.5 \\u0645\\u0644\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629. \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2 - 2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629: 600 \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 \\u0639\\u0627\\u0645 \\u0644\\u063a\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0648\\u064a\\u0628 32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644) \\u0642\\u0648\\u0629 PoE (802.3af \\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3): 44 \\u0641\\u0648\\u0644\\u062a \\u0625\\u0644\\u0649 57 \\u0641\\u0648\\u0644\\u062a \\u060c 0.22 \\u0623 \\u0625\\u0644\\u0649 0.17 \\u0623 \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 18 VAC \\u0625\\u0644\\u0649 30 VAC: 0.38 A \\u0625\\u0644\\u0649 0.22 A \\u060c \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 9 \\u0648\\u0627\\u0637 9 VDC \\u0625\\u0644\\u0649 15 VDC: 0.63 A \\u0625\\u0644\\u0649 1.06 A \\u060c \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 9 \\u0648\\u0627\\u0637 PoE (802.3af \\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3): 44 V \\u0625\\u0644\\u0649 57 V \\u060c 0.22 A \\u0625\\u0644\\u0649 0.17 A \\u060c \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 9.5 \\u0648\\u0627\\u0637 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 \\u0645\\u0646 -40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u061b \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629: 95\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0639\\u064a\\u0627\\u0631 IP67 \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642 TVS 6000 V \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0639\\u0627\\u0628\\u0631\\u0629 \\u0644\\u0644\\u062c\\u0647\\u062f \\u0627\\u0644\\u0628\\u0639\\u062f 376.1 \\u0645\\u0644\\u0645 &times; 119.1 \\u0645\\u0644\\u0645 &times; 118.1 \\u0645\\u0644\\u0645 (14.81 &times; 4.68 &times; 4.65 \\u0628\\u0648\\u0635\\u0627\\u062a) \\u062a\\u0642\\u0631\\u064a\\u0628\\u0627. 1.82 \\u0643\\u062c\\u0645 (4.01 \\u0623\\u0631\\u0637\\u0627\\u0644) \\u062c\\u062f\\u0648\\u0644 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\/ \\u062a\\u063a\\u0637\\u064a\\u0629 \\u0648\\u0627\\u0633\\u0639\\u0629 \\u0627\\u0644\\u0646\\u0637\\u0627\\u0642 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0644\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 441 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 1353 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 110 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 338 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0644\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 55 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 169 \\u0645 \\u062c\\u062f\\u0648\\u0644 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\/ \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 VCA \\u0644\\u0644\\u0628\\u0634\\u0631 110 \\u0645 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 VCA \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a 309 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 (2 \\u0645 &times; 2 \\u0645) 351 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 (1 \\u0645 &times; 1 \\u0645) 177 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0644\\u0644\\u0623\\u062c\\u0633\\u0627\\u0645 (2 \\u0645 &times; 2 \\u0645) 882 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0644\\u0644\\u0643\\u0627\\u0626\\u0646 (1 \\u0645 &times; 1 \\u0645) 441 \\u0645<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD2637-15/P  Thermal Products Security Thermal Cameras Bullet Series');
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(13, '2022-08-25 11:21:30', '2022-09-05 13:26:40', NULL, '{\"ar\": \"نظام تتبع الربط الحراري الذكي\", \"en\": \"Thermal Smart Linkage Tracking System\"}', 5, 12, 40, 500, 'uploads/user_manual/166237719924test.pdf', '3000.00', '4500.00', '{\"en\":\"<ol>\\r\\n\\t<li>System Function<\\/li>\\r\\n\\t<li>Click LinkageOne-Touch connection between bi-spectrum bullet camera and PTZ camera beforehand via VMS client<\\/li>\\r\\n\\t<li>Tracking ModeManual\\/Auto<\\/li>\\r\\n\\t<li>Manual TrackingDrawing an area in VMS client within the field of the bullet camera, leading the PTZ camera zooming in<\\/li>\\r\\n\\t<li>Multi-Targets TrackingUp to 30 targets simultaneously<\\/li>\\r\\n\\t<li>Event TrackingIntrusion Detection, Line Crossing Detection<\\/li>\\r\\n\\t<li>Tracking DurationConfigurable in VMS client for PTZ tracking<\\/li>\\r\\n\\t<li>Temperature Measurement3 temperature measurement rule types; 21 rules in total (10 points, 10 areas, and 1 line)<\\/li>\\r\\n<\\/ol>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Temperature Range- 20 &deg;C to 150 &deg;C (- 4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn; 14.4 &deg;F)<\\/li>\\r\\n\\t<li>Fire DetectionDynamic fire detection, up to 10 fire points detectable.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Bullet Camera- Thermal Module<\\/li>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution384 &times; 288<\\/li>\\r\\n\\t<li>Pixel Pitch17 &mu;m<\\/li>\\r\\n\\t<li>Spectral Range8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETD (Noise Equivalent Temperature Difference)&le; 35 mk (@ 25 &deg;C,F# = 1.0)<\\/li>\\r\\n\\t<li>Focal Length25 mm<\\/li>\\r\\n\\t<li>IFOV0.68 mrad<\\/li>\\r\\n\\t<li>Field Of View14.9&deg; &times; 11.2&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance13m<\\/li>\\r\\n\\t<li>ApertureF1.0<\\/li>\\r\\n\\t<li>Digital Zoom&times;2, &times;4, &times;8<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Bullet Camera- Optical Module<\\/li>\\r\\n\\t<li>Image Sensor1\\/2.7&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520, 4 MP<\\/li>\\r\\n\\t<li>Shutter Speed1s to 1\\/100,000s<\\/li>\\r\\n\\t<li>Min. IlluminationColor: 0.0089 Lux @(F1.6, AGC ON), B\\/W: 0.0018 Lux @(F1.6, AGC ON)<\\/li>\\r\\n\\t<li>Focal Length12 mm<\\/li>\\r\\n\\t<li>Field Of View25.25&deg; &times; 14.44&deg; (H &times; V)<\\/li>\\r\\n\\t<li>ApertureF1.6<\\/li>\\r\\n\\t<li>WDR120 dB<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Bullet Camera- General<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>Optical channel<\\/p>\\r\\n\\r\\n\\t<p>50 HZ: 25 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>60 HZ: 30 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>Thermal channel<\\/p>\\r\\n\\r\\n\\t<p>25 fps (1280 &times; 720, 704 &times; 576, 640 &times; 480, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub-Stream\\r\\n\\t<p>Optical channel<\\/p>\\r\\n\\r\\n\\t<p>50 HZ: 25 fps (704 &times; 576, 352 &times; 288, 176 &times; 144)<\\/p>\\r\\n\\r\\n\\t<p>60 HZ: 30 fps (704 &times; 480, 352 &times; 240, 176 &times; 120)<\\/p>\\r\\n\\r\\n\\t<p>Thermal channel<\\/p>\\r\\n\\r\\n\\t<p>25 fps (704 &times; 576, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG.711alaw\\/G.711ulaw\\/G.722.1\\/G.726\\/MP2L2\\/OPUS\\/PCM<\\/li>\\r\\n\\t<li>Alarm Input\\r\\n\\t<p>2, alarm input (0-5 VDC)<\\/p>\\r\\n\\r\\n\\t<p>2, alarm output<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Alarm Output2-ch relay outputs, alarm response actions configurable<\\/li>\\r\\n\\t<li>Audio Input\\r\\n\\t<p>1, 3.5 mm Mic in\\/Line in interface.<\\/p>\\r\\n\\r\\n\\t<p>Line input: 2-2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/p>\\r\\n\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio OutputLinear level, impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Optical Speed Dome<\\/li>\\r\\n\\t<li>Image Sensor1\\/1.8&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Min. IlluminationColor: 0.002 Lux @ (F1.5, AGC ON), B\\/W: 0.0002 Lux @ (F1.5, AGC ON), 0 Lux with IR<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520<\\/li>\\r\\n\\t<li>Focal Length6.0 - 252 mm, 42 &times; optical zoom<\\/li>\\r\\n\\t<li>Zoom SpeedApprox. 4.8 s (Optical, Wide-Tele)<\\/li>\\r\\n\\t<li>Digital Zoom16 x<\\/li>\\r\\n\\t<li>Field Of View58.7&deg; to 2.0&deg; (Wide-Tele)<\\/li>\\r\\n\\t<li>Working Distance100 mm to 1500 mm (Wide-Tele)<\\/li>\\r\\n\\t<li>Aperture RangeF1.2 to F4.6<\\/li>\\r\\n\\t<li>Shutter Speed1 s to 30,000 s<\\/li>\\r\\n\\t<li>WDR140 dB<\\/li>\\r\\n\\t<li>Image Enhancement3D DNR, EIS, HLC\\/BLC, SVC<\\/li>\\r\\n\\t<li>AGCAuto\\/Manual<\\/li>\\r\\n\\t<li>White BalanceAuto\\/Manual\\/ATW (Auto-tracking White Balance)\\/Indoor\\/Outdoor\\/Daylight Lamp\\/Sodium Lamp<\\/li>\\r\\n\\t<li>Day &amp; NightIR cut filter<\\/li>\\r\\n\\t<li>IR SupplementUp to 500 m<\\/li>\\r\\n\\t<li>Privacy Mask24 programmable privacy masks<\\/li>\\r\\n\\t<li>Optical DefogYes<\\/li>\\r\\n\\t<li>Pan Speedconfigurable from 0.1&deg; to 210&deg;\\/s; preset speed: 280&deg;\\/s<\\/li>\\r\\n\\t<li>Tilt Speedconfigurable from 0.1&deg; to 150&deg;\\/s, preset speed 250&deg;\\/s<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>60 Hz: 30 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub-Stream\\r\\n\\t<p>60 Hz: 30 fps (704 &times; 480, 352 &times; 240, 176 &times; 120)<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (704 &times; 576, 352 &times; 288, 176 &times; 144)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Third Stream\\r\\n\\t<p>50 Hz: 25 fps (1920 &times; 1080, 1280 &times; 960, 1280 &times; 720, 704 &times; 576, 352 &times; 288, 176 &times; 144)<\\/p>\\r\\n\\r\\n\\t<p>60 Hz: 30 fps (1920 &times; 1080, 1280 &times; 960, 1280 &times; 720, 704 &times; 480, 352 &times; 240, 176 &times; 120)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265+\\/H.265\\/H.264+\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\r\\n\\t<p>Third Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG .711u\\/G.711a\\/G.722.1\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n\\t<li>Alarm ActionPreset, Patrol Scan, Pattern Scan, Memory Card Video Record, Trigger Recording, Notify Surveillance Center, Upload to FTP\\/Memory Card\\/NAS, Send Email<\\/li>\\r\\n\\t<li>Alarm Input7, alarm input (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output2, alarm output<\\/li>\\r\\n\\t<li>Audio Input\\r\\n\\t<p>1, 3.5 mm Mic in\\/Line in interface.<\\/p>\\r\\n\\r\\n\\t<p>Line input: 2-2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/p>\\r\\n\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio OutputLinear level, impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, QoS, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>Network StorageMicroSD\\/SDHC\\/SDXC card (up to 256 G) local storage, and NAS (NFS, SMB\\/CIFS), auto network replenishment (ANR)<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, open network video interface<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and PW), MAC address binding, HTTPS encryption, IEEE 802.1x(EAP-MD5, EAP-TLS), access control, IP address filtering<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0+, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Adjustment Range\\r\\n\\t<p>Network Camera (Universal Joint Module): Pan: 90&deg;, Tilt: - 45&deg; to 45&deg;<\\/p>\\r\\n\\r\\n\\t<p>Speed Dome: Pan: 360&deg;, Tilt: - 20&deg; to 90&deg;, Auto Flip<\\/p>\\r\\n\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>MountPole Mount<\\/li>\\r\\n\\t<li>Menu Language\\r\\n\\t<p>32 languages<\\/p>\\r\\n\\r\\n\\t<p>English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Supply\\r\\n\\t<p>24 VAC&plusmn;25%,one power supply for whole system<\\/p>\\r\\n\\r\\n\\t<p>&nbsp;<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>max. 70 W<\\/p>\\r\\n\\r\\n\\t<p>Speed Dome Consumption: max.60W (If powered separately)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Working Temperature\\/Humidity\\r\\n\\t<p>- 40 &deg;C to 65 &deg;C (- 40 &deg;F to 149 &deg;F);<\\/p>\\r\\n\\r\\n\\t<p>Humidity: 90% or Less<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Protection LevelIP66 Standard; TVS 6000V Lightning Protection, Surge Protection and Voltage Transient Protection<\\/li>\\r\\n\\t<li>Dimensions&Phi;266.6 mm &times; 573.5 mm &times; 699.8 mm (&Phi;10.5&quot; &times; 22.6&quot; &times; 27.5&quot;)<\\/li>\\r\\n\\t<li>10.89 kg (Approx. 24.0 lb)<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0627\\u0646\\u0642\\u0631 \\u0641\\u0648\\u0642 \\u0627\\u0644\\u0627\\u0631\\u062a\\u0628\\u0627\\u0637 \\u0627\\u062a\\u0635\\u0627\\u0644 \\u0628\\u0644\\u0645\\u0633\\u0629 \\u0648\\u0627\\u062d\\u062f\\u0629 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0637\\u064a\\u0641 \\u0648\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 PTZ \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627 \\u0639\\u0628\\u0631 \\u0639\\u0645\\u064a\\u0644 VMS \\u0648\\u0636\\u0639 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u064a\\u062f\\u0648\\u064a \\/ \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u064a\\u062f\\u0648\\u064a \\u0631\\u0633\\u0645 \\u0645\\u0646\\u0637\\u0642\\u0629 \\u0641\\u064a \\u0639\\u0645\\u064a\\u0644 VMS \\u062f\\u0627\\u062e\\u0644 \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0646\\u0642\\u0637\\u064a\\u0629 \\u060c \\u0645\\u0645\\u0627 \\u064a\\u0624\\u062f\\u064a \\u0625\\u0644\\u0649 \\u062a\\u0643\\u0628\\u064a\\u0631 \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 PTZ \\u062a\\u062a\\u0628\\u0639 \\u0645\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0623\\u0647\\u062f\\u0627\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 30 \\u0647\\u062f\\u0641\\u064b\\u0627 \\u0641\\u064a \\u0648\\u0642\\u062a \\u0648\\u0627\\u062d\\u062f \\u062a\\u062a\\u0628\\u0639 \\u0627\\u0644\\u0623\\u062d\\u062f\\u0627\\u062b \\u0643\\u0634\\u0641 \\u0627\\u0644\\u062a\\u0633\\u0644\\u0644 \\u060c \\u0643\\u0634\\u0641 \\u062a\\u0642\\u0627\\u0637\\u0639 \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0645\\u062f\\u0629 \\u0627\\u0644\\u062a\\u062a\\u0628\\u0639 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0641\\u064a \\u0639\\u0645\\u064a\\u0644 VMS \\u0644\\u062a\\u062a\\u0628\\u0639 PTZ \\u0642\\u064a\\u0627\\u0633 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u061b \\u0625\\u062c\\u0645\\u0627\\u0644\\u064a 21 \\u0642\\u0627\\u0639\\u062f\\u0629 (10 \\u0646\\u0642\\u0627\\u0637 \\u060c 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648\\u0633\\u0637\\u0631 \\u0648\\u0627\\u062d\\u062f) \\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 - 20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (- 4 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 302 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 &plusmn; 8 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (&plusmn; 14.4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0642 \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0643\\u062a\\u0634\\u0627\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 10 \\u0646\\u0642\\u0627\\u0637 \\u062d\\u0631\\u064a\\u0642. \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0631\\u0635\\u0627\\u0635\\u0629 - \\u0648\\u062d\\u062f\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0641\\u0627\\u0626\\u0641 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f \\u0628\\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 384 &times; 288 \\u0645\\u0633\\u0627\\u062d\\u0629 \\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0627\\u0644\\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0637\\u064a\\u0641\\u064a 8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 NETD (\\u0627\\u062e\\u062a\\u0644\\u0627\\u0641 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0645\\u0643\\u0627\\u0641\\u0626\\u0629 \\u0644\\u0644\\u0636\\u0648\\u0636\\u0627\\u0621) &le; 35 \\u0645\\u0644\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (@ 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a # = 1.0) \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 25 \\u0645\\u0644\\u0645 IFOV 0.68 \\u0645\\u0631\\u0627\\u062f \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644 \\u0631\\u0623\\u064a 14.9 \\u062f\\u0631\\u062c\\u0629 &times; 11.2 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0641\\u0629 13 \\u0645 \\u0641\\u062a\\u062d\\u0629 F1.0 \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a &times; 2 \\u060c &times; 4 \\u060c &times; 8 \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0631\\u0635\\u0627\\u0635\\u0629 - \\u0648\\u062d\\u062f\\u0629 \\u0628\\u0635\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 1 \\/ 2.7 &quot;\\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645\\u064a CMOS \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 2688 &times; 1520 \\u060c 4 \\u0645\\u064a\\u062c\\u0627\\u0628\\u0643\\u0633\\u0644 \\u0633\\u0631\\u0639\\u0629 \\u0645\\u0635\\u0631\\u0627\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0645\\u0646 1s \\u0625\\u0644\\u0649 1 \\/ 100\\u060c000 \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0625\\u0636\\u0627\\u0621\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646: 0.0089 Lux @ (F1.6\\u060c AGC ON)\\u060c B \\/ W: 0.0018 Lux @ (F1.6\\u060c AGC ON) \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 12 \\u0645\\u0644\\u0645 \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 25.25 \\u062f\\u0631\\u062c\\u0629 &times; 14.44 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u0641\\u062a\\u062d\\u0629 F1.6 WDR 120 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644 \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0631\\u0635\\u0627\\u0635\\u0629- \\u0639\\u0627\\u0645 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0642\\u0646\\u0627\\u0629 \\u0628\\u0635\\u0631\\u064a\\u0629 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) \\u0642\\u0646\\u0627\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u060c 704 &times; 576 \\u060c 640 &times; 480 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a \\u0642\\u0646\\u0627\\u0629 \\u0628\\u0635\\u0631\\u064a\\u0629 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 176 &times; 144) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 480\\u060c 352 &times; 240\\u060c 176 &times; 120) \\u0642\\u0646\\u0627\\u0629 \\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G.711alaw \\/ G.711ulaw \\/ G.722.1 \\/ G.726 \\/ MP2L2 \\/ OPUS \\/ PCM \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 2 \\u060c \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (0-5 VDC) 2 \\u060c \\u062e\\u0631\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u062e\\u0631\\u062c\\u0627\\u062a \\u0645\\u0631\\u062d\\u0644 2-ch \\u060c \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c 3.5 \\u0645\\u0644\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629. \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2-2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a \\u060c \\u0627\\u0644\\u0645\\u0639\\u0627\\u0648\\u0642\\u0629: 600 \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 \\u0642\\u0628\\u0629 \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0636\\u0648\\u0626\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 1 \\/ 1.8 &quot;\\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u062c\\u064a CMOS \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0625\\u0636\\u0627\\u0621\\u0629 \\u0627\\u0644\\u0644\\u0648\\u0646: 0.002 Lux @ (F1.5\\u060c AGC ON)\\u060c B \\/ W: 0.0002 Lux @ (F1.5\\u060c AGC ON)\\u060c 0 Lux with IR \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 2688 &times; 1520 \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 6.0 - 252 \\u0645\\u0645\\u060c 42 &times; \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0628\\u0635\\u0631\\u064a \\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0632\\u0648\\u0648\\u0645 \\u062a\\u0642\\u0631\\u064a\\u0628\\u0627. 4.8 \\u062b\\u0627\\u0646\\u064a\\u0629 (\\u0628\\u0635\\u0631\\u064a \\u060c \\u0639\\u0646 \\u0628\\u0639\\u062f \\u0648\\u0627\\u0633\\u0639) \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a 16 &times; \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 58.7 \\u062f\\u0631\\u062c\\u0629 \\u0625\\u0644\\u0649 2.0 \\u062f\\u0631\\u062c\\u0629 (\\u0639\\u0644\\u0649 \\u0646\\u0637\\u0627\\u0642 \\u0648\\u0627\\u0633\\u0639 \\u0639\\u0646 \\u0628\\u0639\\u062f) \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 100 \\u0645\\u0645 \\u0625\\u0644\\u0649 1500 \\u0645\\u0645 (\\u0639\\u0631\\u064a\\u0636 \\u0639\\u0646 \\u0628\\u0639\\u062f) \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0641\\u062a\\u062d\\u0629 F1.2 \\u0625\\u0644\\u0649 F4.6 \\u0633\\u0631\\u0639\\u0629 \\u0645\\u0635\\u0631\\u0627\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 1 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 30000 \\u062b\\u0627\\u0646\\u064a\\u0629 WDR 140 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644 \\u062a\\u062d\\u0633\\u064a\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 3D DNR \\u060c EIS \\u060c HLC \\/ BLC \\u060c SVC AGC \\u062f\\u0644\\u064a\\u0644 \\u0627\\u0644\\u0633\\u064a\\u0627\\u0631\\u0627\\u062a \\u062a\\u0648\\u0627\\u0632\\u0646 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\/ \\u064a\\u062f\\u0648\\u064a \\/ ATW (\\u062a\\u062a\\u0628\\u0639 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u062a\\u0648\\u0627\\u0632\\u0646 \\u0627\\u0644\\u0644\\u0648\\u0646 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636) \\/ \\u062f\\u0627\\u062e\\u0644\\u064a \\/ \\u062e\\u0627\\u0631\\u062c\\u064a \\/ \\u0645\\u0635\\u0628\\u0627\\u062d \\u0636\\u0648\\u0621 \\u0627\\u0644\\u0646\\u0647\\u0627\\u0631 \\/ \\u0645\\u0635\\u0628\\u0627\\u062d \\u0627\\u0644\\u0635\\u0648\\u062f\\u064a\\u0648\\u0645 \\u0644\\u064a\\u0644\\u0627 \\u0646\\u0647\\u0627\\u0631\\u0627 \\u0645\\u0631\\u0634\\u062d \\u0642\\u0637\\u0639 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u0645\\u0644\\u062d\\u0642 IR \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 500 \\u0645 \\u0642\\u0646\\u0627\\u0639 \\u0627\\u0644\\u062e\\u0635\\u0648\\u0635\\u064a\\u0629 24 \\u0642\\u0646\\u0627\\u0639 \\u062e\\u0635\\u0648\\u0635\\u064a\\u0629 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0628\\u0631\\u0645\\u062c\\u0629 \\u0645\\u0632\\u064a\\u0644 \\u0627\\u0644\\u0636\\u0628\\u0627\\u0628 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a \\u0646\\u0639\\u0645 \\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u0642\\u0644\\u0627\\u0629 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0645\\u0646 0.1 \\u062f\\u0631\\u062c\\u0629 \\u0625\\u0644\\u0649 210 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u061b \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627: 280 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u064a\\u0644 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0645\\u0646 0.1 \\u062f\\u0631\\u062c\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627 250 \\u062f\\u0631\\u062c\\u0629 \\/ \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 480\\u060c 352 &times; 240\\u060c 176 &times; 120) 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 176 &times; 144) \\u062b\\u0627\\u0644\\u062b \\u062a\\u064a\\u0627\\u0631 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1920 &times; 1080 \\u060c 1280 &times; 960 \\u060c 1280 &times; 720 \\u060c 704 &times; 576 \\u060c 352 &times; 288 \\u060c 176 &times; 144) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1920 &times; 1080 \\u060c 1280 &times; 960 \\u060c 1280 &times; 720 \\u060c 704 &times; 480 \\u060c 352 &times; 240 \\u060c 176 &times; 120) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 + \\/ H.265 \\/ H.264 + \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0627\\u0644\\u062f\\u0641\\u0642 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G.711u \\/ G.711a \\/ G.722.1 \\/ MP2L2 \\/ G.726 \\/ PCM \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0644\\u0625\\u0639\\u062f\\u0627\\u062f \\u0627\\u0644\\u0645\\u0633\\u0628\\u0642 \\u060c \\u0641\\u062d\\u0635 \\u062f\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0645\\u0633\\u062d \\u0627\\u0644\\u0646\\u0645\\u0637 \\u060c \\u0633\\u062c\\u0644 \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0630\\u0627\\u0643\\u0631\\u0629 \\u060c \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u0632\\u0646\\u0627\\u062f \\u060c \\u0625\\u062e\\u0637\\u0627\\u0631 \\u0645\\u0631\\u0643\\u0632 \\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 \\u060c \\u062a\\u062d\\u0645\\u064a\\u0644 \\u0625\\u0644\\u0649 FTP \\/ \\u0628\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0630\\u0627\\u0643\\u0631\\u0629 \\/ NAS \\u060c \\u0625\\u0631\\u0633\\u0627\\u0644 \\u0628\\u0631\\u064a\\u062f \\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 7 \\u060c \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (0-5 VDC) \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0646\\u062a\\u0627\\u062c | 2 \\u060c \\u062e\\u0631\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c 3.5 \\u0645\\u0644\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629. \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2-2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a \\u060c \\u0627\\u0644\\u0645\\u0639\\u0627\\u0648\\u0642\\u0629: 600 \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 \\u0634\\u0628\\u0643\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a IPv4 \\/ IPv6 \\u0648 HTTP \\u0648 HTTPS \\u0648 802.1x \\u0648 QoS \\u0648 FTP \\u0648 SMTP \\u0648 UPnP \\u0648 SNMP \\u0648 DNS \\u0648 DDNS \\u0648 NTP \\u0648 RTSP \\u0648 RTCP \\u0648 RTP \\u0648 TCP \\u0648 UDP \\u0648 IGMP \\u0648 ICMP \\u0648 DHCP \\u0648 PPPOE \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\/ SDHC \\/ SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u064a\\u062c\\u0627 \\u0628\\u0627\\u064a\\u062a) \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0645\\u062d\\u0644\\u064a \\u060c \\u0648 NAS (NFS \\u060c SMB \\/ CIFS) \\u060c \\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 (ANR) API ISAPI \\u060c HIKVISION SDK \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0641\\u064a\\u062f\\u064a\\u0648 \\u0645\\u0641\\u062a\\u0648\\u062d\\u0629 \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 20 \\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\/ \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064b\\u0627 \\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0645\\u0633\\u0624\\u0648\\u0644 \\u060c \\u0639\\u0627\\u0645\\u0644 \\u060c \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (\\u0627\\u0644\\u0645\\u0639\\u0631\\u0641 \\u0648 PW) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c IEEE 802.1x (EAP-MD5 \\u060c EAP-TLS) \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP \\u0639\\u0645\\u064a\\u0644 iVMS-4200 \\u060c Hik-Connect \\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11 \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u062c\\u0627\\u0646\\u064a \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a\\u0629): Chrome 57.0 + \\u060c Firefox 52.0 + \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629: Chrome 57.0+\\u060c Firefox 52.0 + \\u0639\\u0627\\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 (\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062a\\u0648\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a\\u0629): Pan: 90 &deg; \\u060c Tilt: - 45 &deg; to 45 &deg; \\u0642\\u0628\\u0629 \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629: \\u0627\\u0644\\u0645\\u0642\\u0644\\u0627\\u0629: 360 \\u062f\\u0631\\u062c\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0645\\u0627\\u0644\\u0629: - 20 \\u062f\\u0631\\u062c\\u0629 \\u0625\\u0644\\u0649 90 \\u062f\\u0631\\u062c\\u0629 \\u060c \\u0642\\u0644\\u0628 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u062a\\u062a\\u0639\\u062f\\u062f \\u0627\\u0644\\u0642\\u0637\\u0628 \\u062c\\u0628\\u0644 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0642\\u0627\\u0626\\u0645\\u0629 32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644) \\u0645\\u0632\\u0648\\u062f \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 24 VAC &plusmn; 25\\u066a \\u060c \\u0645\\u0635\\u062f\\u0631 \\u0637\\u0627\\u0642\\u0629 \\u0648\\u0627\\u062d\\u062f \\u0644\\u0644\\u0646\\u0638\\u0627\\u0645 \\u0628\\u0623\\u0643\\u0645\\u0644\\u0647 \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 \\u0627\\u0644\\u0623\\u0639\\u0644\\u0649. 70 \\u0648\\u0627\\u0637 \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0642\\u0628\\u0629 \\u0627\\u0644\\u0633\\u0631\\u0639\\u0629: \\u0628\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649 60 \\u0648\\u0627\\u062a (\\u0625\\u0630\\u0627 \\u0643\\u0627\\u0646\\u062a \\u062a\\u0639\\u0645\\u0644 \\u0628\\u0634\\u0643\\u0644 \\u0645\\u0646\\u0641\\u0635\\u0644) \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 - 40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (- 40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u061b \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629: 90\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0639\\u064a\\u0627\\u0631 IP66 \\u061b \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642 TVS 6000V \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0648\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0647\\u062f \\u0627\\u0644\\u0639\\u0627\\u0628\\u0631 \\u0623\\u0628\\u0639\\u0627\\u062f &Phi;266.6 \\u0645\\u0645 &times; 573.5 \\u0645\\u0645 &times; 699.8 \\u0645\\u0645 (&Phi;10.5 \\u0628\\u0648\\u0635\\u0629 &times; 22.6 \\u0628\\u0648\\u0635\\u0629 &times; 27.5 \\u0628\\u0648\\u0635\\u0629) 10.89 \\u0643\\u062c\\u0645 (24.0 \\u0631\\u0637\\u0644\\u0627\\u064b \\u062a\\u0642\\u0631\\u064a\\u0628\\u064b\\u0627)<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TX3742-25P/P');
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(14, '2022-08-25 11:34:37', '2022-09-05 13:26:19', NULL, '{\"ar\": \"كاميرا برج شبكي حراري وبصري ثنائي\", \"en\": \"Thermal & Optical Bi-Spectrum Network Turret Camera\"}', 5, 12, 50, 300, 'uploads/user_manual/166237717951test.pdf', '3000.00', '5000.00', '{\"en\":\"<ul>\\r\\n\\t<li>Thermal Module<\\/li>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution160 &times; 120<\\/li>\\r\\n\\t<li>Pixel Pitch17 &mu;m<\\/li>\\r\\n\\t<li>Spectral Range8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETD&lt; 40 mK (@ 25 &deg;C, F# = 1.1)<\\/li>\\r\\n\\t<li>Focal Length1.8 mm<\\/li>\\r\\n\\t<li>IFOV9.44 mrad<\\/li>\\r\\n\\t<li>Field Of View90.0&deg; &times; 66.4&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance0.1 m<\\/li>\\r\\n\\t<li>ApertureF1.1<\\/li>\\r\\n\\t<li>Digital Zoom&times; 2, &times; 4<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Optical Module<\\/li>\\r\\n\\t<li>Image Sensor1\\/2.7&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520<\\/li>\\r\\n\\t<li>Min. Illumination0.0176Lux @(F2.25,AGC ON) ,0 Lux with IR<\\/li>\\r\\n\\t<li>Shutter Speed1 s to 1\\/100,000 s<\\/li>\\r\\n\\t<li>Focal Length2 mm<\\/li>\\r\\n\\t<li>Field Of View119.3&deg; &times; 93.3&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Aperture (Range)F2.25<\\/li>\\r\\n\\t<li>WDR120 dB<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Image Effect<\\/li>\\r\\n\\t<li>Target ColorationYes. Supported in white hot and black hot mode.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Illuminator<\\/li>\\r\\n\\t<li>IR DistanceUp to 15 m<\\/li>\\r\\n\\t<li>IR Intensity And AngleAutomatically adjusted<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Audible And Visual Alarm<\\/li>\\r\\n\\t<li>White Light RangeUp to 30 m<\\/li>\\r\\n\\t<li>Visual AlarmYes. White light alarm with adjustable flashing frequencies<\\/li>\\r\\n\\t<li>Audio Alarm\\r\\n\\t<p>Yes, for two types of audible alarm (VCA, Temperature)<\\/p>\\r\\n\\r\\n\\t<p>2 preset voice alerts (one for each)<\\/p>\\r\\n\\r\\n\\t<p>6 importable user-defined voice alerts (4 options shared in the two types)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Smart Function<\\/li>\\r\\n\\t<li>VCA4 VCA rule types (line crossing, intrusion, region entrance, and region exiting), up to 8 VCA rules in total.<\\/li>\\r\\n\\t<li>Temperature Measurement3 temperature measurement rule types, 21 rules in total (10 points, 10 areas, and 1 line)<\\/li>\\r\\n\\t<li>Temperature Range- 20 &deg;C to 150 &deg;C (- 4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn; 14.4 &deg;F)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Video And Audio<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>Thermal:<\\/p>\\r\\n\\r\\n\\t<p>25 fps (1280 &times; 720, 704 &times; 576, 640 &times; 480, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>60Hz: 30 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub-Stream\\r\\n\\t<p>Thermal:<\\/p>\\r\\n\\r\\n\\t<p>25 fps (704 &times; 576, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (704 &times; 576, 352 &times; 288)<\\/p>\\r\\n\\r\\n\\t<p>60 Hz: 30 fps (704 &times; 480, 352 &times; 240)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG.722.1\\/G.711ulaw\\/G.711alaw\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, QoS, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>Network StorageMicroSD\\/SDHC\\/SDXC card (up to 256 G) local storage, NAS (NFS, SMB\\/CIFS), Auto Network Replenishment (ANR)<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, third-party management platform,<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and PW), MAC address binding, HTTPS encryption, IEEE 802.1x(EAP-MD5, EAP-TLS), access control, IP address filtering<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Interface<\\/li>\\r\\n\\t<li>Alarm Input1, alarm input (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output1, alarm output (alarm response actions configurable)<\\/li>\\r\\n\\t<li>Alarm ActionSD recording\\/Relay output\\/Smart capture\\/FTP upload\\/Email linkage<\\/li>\\r\\n\\t<li>Audio Input\\r\\n\\t<p>1, 3.5 mm Mic in\\/Line in interface<\\/p>\\r\\n\\r\\n\\t<p>Line input: 2 - 2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio OutputLinear level, impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface (half duplex)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Web Client Language32 languages English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/li>\\r\\n\\t<li>Power Supply\\r\\n\\t<p>12 VDC &plusmn; 25%, &phi; 5.5 mm coaxial power plug<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>12 VDC &plusmn; 25%: 0.5 A, Max 6 W<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3): 42.5 V to 57 V, 0.14 A to 0.22 A, Max 6.5 W<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Working Temperature\\/Humidity\\r\\n\\t<p>Temperature: - 40 &deg;C to 65 &deg;C (- 40 &deg;F to 149 &deg;F)<\\/p>\\r\\n\\r\\n\\t<p>Humidity: 95% or less<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Protection Level\\r\\n\\t<p>IP66 Standard<\\/p>\\r\\n\\r\\n\\t<p>TVS 6000V lightning protection, surge protection, voltage transient protection<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Dimensions138.3 mm &times; 138.3 mm &times; 123.1 mm (5.45&quot; &times; 5.45&quot; &times; 4.85 &quot;)<\\/li>\\r\\n\\t<li>940 g (2.07 lb)<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0641\\u0627\\u0626\\u0641 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f \\u0628\\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 160 &times; 120 \\u0645\\u0633\\u0627\\u062d\\u0629 \\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0627\\u0644\\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0637\\u064a\\u0641\\u064a 8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 NETD &lt;40 \\u0645\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (@ 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a # = 1.1) \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 1.8 \\u0645\\u0644\\u0645 IFOV 9.44 \\u0645\\u0631\\u0627\\u062f \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 90.0 \\u062f\\u0631\\u062c\\u0629 &times; 66.4 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0641\\u0629 0.1 \\u0645 \\u0641\\u062a\\u062d\\u0629 F1.1 \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a &times; 2 \\u060c &times; 4 \\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 1 \\/ 2.7 &quot;\\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u0642\\u062f\\u0645\\u064a CMOS \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 2688 &times; 1520 \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0625\\u0636\\u0627\\u0621\\u0629 0.0176Lux @ (F2.25\\u060c AGC ON)\\u060c 0 Lux \\u0645\\u0639 IR \\u0633\\u0631\\u0639\\u0629 \\u0645\\u0635\\u0631\\u0627\\u0639 \\u0627\\u0644\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627 1 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 1 \\/ 100\\u060c000 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 2 \\u0645\\u0645 \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 119.3 \\u062f\\u0631\\u062c\\u0629 &times; 93.3 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u0627\\u0644\\u0641\\u062a\\u062d\\u0629 (\\u0627\\u0644\\u0645\\u062f\\u0649) F2.25 WDR 120 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644 \\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0647\\u062f\\u0641 \\u0627\\u0644\\u062a\\u0644\\u0648\\u064a\\u0646 \\u0646\\u0639\\u0645. \\u0645\\u062f\\u0639\\u0648\\u0645 \\u0641\\u064a \\u0648\\u0636\\u0639 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646. \\u0627\\u0644\\u0645\\u0646\\u0648\\u0631 \\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 15 \\u0645 \\u0643\\u062b\\u0627\\u0641\\u0629 \\u0648\\u0632\\u0627\\u0648\\u064a\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u062a\\u0645 \\u0636\\u0628\\u0637\\u0647 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u064b\\u0627 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0633\\u0645\\u0648\\u0639 \\u0648\\u0645\\u0631\\u0626\\u064a \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 30 \\u0645 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0631\\u0626\\u064a \\u0646\\u0639\\u0645. \\u0645\\u0646\\u0628\\u0647 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0628\\u062a\\u0631\\u062f\\u062f\\u0627\\u062a \\u0648\\u0627\\u0645\\u0636\\u0629 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0635\\u0648\\u062a\\u064a \\u0646\\u0639\\u0645 \\u060c \\u0644\\u0646\\u0648\\u0639\\u064a\\u0646 \\u0645\\u0646 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631\\u0627\\u062a \\u0627\\u0644\\u0635\\u0648\\u062a\\u064a\\u0629 (VCA \\u060c \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629) 2 \\u062a\\u0646\\u0628\\u064a\\u0647\\u0627\\u062a \\u0635\\u0648\\u062a\\u064a\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u064b\\u0627 (\\u0648\\u0627\\u062d\\u062f \\u0644\\u0643\\u0644 \\u0645\\u0646\\u0647\\u0645\\u0627) 6 \\u0635\\u0648\\u062a \\u0645\\u062d\\u062f\\u062f \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u062a\\u0646\\u0628\\u064a\\u0647\\u0627\\u062a (4 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a \\u0645\\u0634\\u062a\\u0631\\u0643\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0646\\u0648\\u0639\\u064a\\u0646) \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0630\\u0643\\u064a\\u0629 VCA 4 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f VCA (\\u0639\\u0628\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0648\\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u0648\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629) \\u060c \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 8 \\u0642\\u0648\\u0627\\u0639\\u062f VCA \\u0641\\u064a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639. \\u0642\\u064a\\u0627\\u0633 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u060c \\u0625\\u062c\\u0645\\u0627\\u0644\\u064a 21 \\u0642\\u0627\\u0639\\u062f\\u0629 (10 \\u0646\\u0642\\u0627\\u0637 \\u060c 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648\\u062e\\u0637 \\u0648\\u0627\\u062d\\u062f) \\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 - 20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (- 4 \\u062f\\u0631\\u062c\\u0627\\u062a \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 302 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 &plusmn; 8 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (&plusmn; 14.4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u062d\\u0631\\u0627\\u0631\\u064a: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u060c 704 &times; 576 \\u060c 640 &times; 480 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u0628\\u0635\\u0631\\u064a: 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u060c 1920 &times; 1080 \\u060c 1280 &times; 720) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a \\u062d\\u0631\\u0627\\u0631\\u064a: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u0628\\u0635\\u0631\\u064a: 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288) 60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 480\\u060c 352 &times; 240) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G.722.1 \\/ G.711ulaw \\/ G.711alaw \\/ MP2L2 \\/ G.726 \\/ PCM \\u0634\\u0628\\u0643\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a IPv4 \\/ IPv6 \\u060c HTTP \\u060c HTTPS \\u060c 802.1x \\u060c \\u062c\\u0648\\u062f\\u0629 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u060c FTP \\u060c SMTP \\u060c UPnP \\u060c SNMP \\u060c DNS \\u060c DDNS \\u060c NTP \\u060c RTSP \\u060c RTCP \\u060c RTP \\u060c TCP \\u060c UDP \\u060c IGMP \\u060c ICMP \\u060c DHCP \\u060c PPPOE \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\/ SDHC \\/ SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u064a\\u062c\\u0627 \\u0628\\u0627\\u064a\\u062a) \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0645\\u062d\\u0644\\u064a \\u060c NAS (NFS \\u060c SMB \\/ CIFS) \\u060c \\u062a\\u062c\\u062f\\u064a\\u062f \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 (ANR) API ISAPI \\u060c HIKVISION SDK \\u060c \\u0645\\u0646\\u0635\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0637\\u0631\\u0641 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b \\u060c \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 20 \\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\/ \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064b\\u0627 \\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0645\\u0633\\u0624\\u0648\\u0644 \\u060c \\u0639\\u0627\\u0645\\u0644 \\u060c \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (\\u0627\\u0644\\u0645\\u0639\\u0631\\u0641 \\u0648 PW) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c IEEE 802.1x (EAP-MD5 \\u060c EAP-TLS) \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP \\u0639\\u0645\\u064a\\u0644 iVMS-4200 \\u060c Hik-Connect \\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11 \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0628\\u062f\\u0648\\u0646 \\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0625\\u0636\\u0627\\u0641\\u064a\\u0629): Chrome 57.0 + \\u060c Firefox 52.0 + \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629: Chrome 57.0 +\\u060c Firefox 52.0 + \\u0648\\u0627\\u062c\\u0647\\u0647 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 1 \\u060c \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (0-5 VDC) \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 1 \\u060c \\u062e\\u0631\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (\\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0634\\u0643\\u0644\\u064a) \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u062a\\u0633\\u062c\\u064a\\u0644 SD \\/ \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u0645\\u0631\\u062d\\u0644 \\/ \\u0627\\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0630\\u0643\\u064a \\/ \\u062a\\u062d\\u0645\\u064a\\u0644 FTP \\/ \\u0631\\u0628\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c 3.5 \\u0645\\u0644\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2 - 2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a \\u062e\\u0637\\u064a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0648\\u0627\\u0644\\u0645\\u0642\\u0627\\u0648\\u0645\\u0629: 600 &Omega; \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 (\\u0646\\u0635\\u0641 \\u0645\\u0632\\u062f\\u0648\\u062c) \\u0639\\u0627\\u0645 \\u0644\\u063a\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0648\\u064a\\u0628 32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644) \\u0645\\u0632\\u0648\\u062f \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 12 VDC &plusmn; 25\\u066a \\u060c &phi; 5.5 \\u0645\\u0645 \\u0642\\u0627\\u0628\\u0633 \\u0637\\u0627\\u0642\\u0629 \\u0645\\u062d\\u0648\\u0631\\u064a PoE (802.3af \\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3) \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 12 \\u0641\\u0648\\u0644\\u062a \\u062a\\u064a\\u0627\\u0631 \\u0645\\u0633\\u062a\\u0645\\u0631 &plusmn; 25\\u066a: 0.5 \\u0623\\u0645\\u0628\\u064a\\u0631 \\u060c 6 \\u0648\\u0627\\u0637 \\u0628\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649 PoE (802.3af \\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3): 42.5 V \\u0625\\u0644\\u0649 57 V \\u060c 0.14 A \\u0625\\u0644\\u0649 0.22 A \\u060c \\u0628\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649 6.5 \\u0648\\u0627\\u0637 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629: - 40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (- 40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629: 95\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0639\\u064a\\u0627\\u0631 IP66 \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642 TVS 6000V \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0639\\u0627\\u0628\\u0631\\u0629 \\u0644\\u0644\\u062c\\u0647\\u062f \\u0623\\u0628\\u0639\\u0627\\u062f 138.3 \\u0645\\u0645 &times; 138.3 \\u0645\\u0645 &times; 123.1 \\u0645\\u0645 (5.45 \\u0628\\u0648\\u0635\\u0629 &times; 5.45 \\u0628\\u0648\\u0635\\u0629 &times; 4.85 \\u0628\\u0648\\u0635\\u0627\\u062a) 940 \\u062c\\u0631\\u0627\\u0645 (2.07 \\u0631\\u0637\\u0644)<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD1217-2/QA');
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(15, '2022-08-25 12:28:07', '2022-09-05 13:26:31', NULL, '{\"ar\": \"كاميرا برج شبكي حراري\", \"en\": \"Thermal Network Turret Camera\"}', 5, 12, 12, 45, 'uploads/user_manual/166237719125test.pdf', '500.00', '1500.00', '{\"en\":\"<ul>\\r\\n\\t<li>Thermal Module<\\/li>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution160 &times; 120 (the resolution of output image is 320 &times; 240)<\\/li>\\r\\n\\t<li>Pixel Interval17 &mu;m<\\/li>\\r\\n\\t<li>Response Waveband8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETDLess than 40 mK (@ 25 &deg;C,F#=1.1)<\\/li>\\r\\n\\t<li>Focal Length1.8 mm<\\/li>\\r\\n\\t<li>IFOV9.44 mrad<\\/li>\\r\\n\\t<li>Field Of View90&deg; &times; 66.4&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance0.1 m<\\/li>\\r\\n\\t<li>ApertureF1.1<\\/li>\\r\\n\\t<li>Digital Zoom&times;2, &times;4, &times;8<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Image Effect<\\/li>\\r\\n\\t<li>Target ColorationYes. Supported in white hot and black hot mode.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Audible And Visual Alarm<\\/li>\\r\\n\\t<li>White Light RangeUp to 30 m<\\/li>\\r\\n\\t<li>Visual AlarmYes. White light used as the visual alarm, flashing frequency adjustable<\\/li>\\r\\n\\t<li>Audio AlarmYes. 6 audio alarms are supported to cover all kinds of alarm.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Smart Function<\\/li>\\r\\n\\t<li>VCA4 VCA rule types (Line Crossing, Intrusion, Region Entrance, and Region Exiting), up to 8 VCA rules totally.<\\/li>\\r\\n\\t<li>Temperature Measurement3 temperature measurement rule types, 21 rules in total (10 points, 10 areas, and 1 line).<\\/li>\\r\\n\\t<li>Temperature Range-20 &deg;C to 150 &deg;C (-4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn;14.4 &deg;F)<\\/li>\\r\\n\\t<li>Fire DetectionDynamic fire detection, up to 10 fire points detectable.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Video And Audio<\\/li>\\r\\n\\t<li>Main Stream50 Hz: 25 fps (1280 &times; 720, 704 &times; 576, 640 &times; 480, 352 &times; 288, 320 &times; 240)<\\/li>\\r\\n\\t<li>Sub-Stream50 Hz: 25 fps (704 &times; 576, 352 &times; 288, 320 &times; 240)<\\/li>\\r\\n\\t<li>Third Stream50 Hz: 25 fps (1280 &times; 720, 704 &times; 576, 352 &times; 288, 320 &times; 240)<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\r\\n\\t<p>Third Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG .711u\\/G.711a\\/G.722.1\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, Qos, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, third-party management platform, ONVIF (Profile S, Profile G, Profile T)<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and PW), MAC address binding, HTTPS encryption, IEEE 802.1x(EAP-MD5, EAP-TLS), access control, IP address filtering<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0+, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Network StorageBuilt-in MicroSD card slot, supporting MicroSD\\/SDHC\\/SDXC card (up to 256 G), supports manual\\/alarm recording<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Interface<\\/li>\\r\\n\\t<li>Alarm Input1-ch inputs (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output1-ch relay outputs, alarm response actions configurable<\\/li>\\r\\n\\t<li>Alarm ActionSD recording\\/Relay output\\/Smart capture\\/FTP upload\\/Email linkage<\\/li>\\r\\n\\t<li>Audio Input1, 3.5 mm Mic in\\/Line in interface. Line input: 2 - 2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/li>\\r\\n\\t<li>Audio OutputLinear Level; Impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Web Client Language\\r\\n\\t<p>32 languages<\\/p>\\r\\n\\r\\n\\t<p>English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Supply\\r\\n\\t<p>12 VDC &plusmn; 20%, two-core terminal block<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>12 VDC &plusmn; 20%: 0.4 A, max. 4.5 W<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3): 42.5 V to 57 V, 0.14 A to 0.22 A, max. 5 W<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Working Temperature\\/Humidity\\r\\n\\t<p>-40 &deg;C to 65 &deg;C (-40 &deg;F to 149 &deg;F)<\\/p>\\r\\n\\r\\n\\t<p>95% or less<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Protection LevelIP66 Standard; TVS 6000V Lightning Protection, Surge Protection and Voltage Transient Protection<\\/li>\\r\\n\\t<li>Dimensions138.3 mm &times; 138.3 mm &times; 123.1 mm (5.45 &quot; &times; 5.45&quot; &times; 4.85 &quot;)<\\/li>\\r\\n\\t<li>920 g (2.03 lb)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Detection Range Table\\/Wide Range Coverage<\\/li>\\r\\n\\t<li>Detection Range For Humans (1.8&times;0.5m)53 m<\\/li>\\r\\n\\t<li>Detection Range For Vehicles (4.0&times;1.4m)162 m<\\/li>\\r\\n\\t<li>Recognition Range For Humans (1.8&times;0.5m)13 m<\\/li>\\r\\n\\t<li>Recognition Range For Vehicles (4.0&times;1.4m)41 m<\\/li>\\r\\n\\t<li>Identification Range For Humans (1.8&times;0.5m)7 m<\\/li>\\r\\n\\t<li>Identification Range For Vehicles (4.0&times;1.4m)20 m<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Detection Range Table\\/Smart Function Range<\\/li>\\r\\n\\t<li>VCA Range For Humans14 m<\\/li>\\r\\n\\t<li>VCA Range For Vehicles42 m<\\/li>\\r\\n\\t<li>Temperature Measurement Range For Object (2m&times;2m)44 m<\\/li>\\r\\n\\t<li>Temperature Measurement Range For Object (1m&times;1m)22 m<\\/li>\\r\\n\\t<li>Fire Detection Range For Object (2m&times;2m)108 m<\\/li>\\r\\n\\t<li>Fire Detection Range For Object (1m&times;1m)54 m<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<p>\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0635\\u0641\\u0627\\u0626\\u0641 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f \\u0628\\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u0627\\u0644\\u0642\\u0631\\u0627\\u0631 160 &times; 120 (\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0646\\u0627\\u062a\\u062c\\u0629 320 &times; 240) \\u0641\\u0627\\u0635\\u0644 \\u0627\\u0644\\u0628\\u0643\\u0633\\u0644 17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0646\\u0637\\u0627\\u0642 \\u0645\\u0648\\u062c\\u0629 \\u0627\\u0644\\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 NETD \\u0623\\u0642\\u0644 \\u0645\\u0646 40 \\u0645\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (@ 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u060c \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a # = 1.1) \\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a 1.8 \\u0645\\u0644\\u0645 IFOV 9.44 \\u0645\\u0631\\u0627\\u062f \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629 90 \\u062f\\u0631\\u062c\\u0629 &times; 66.4 \\u062f\\u0631\\u062c\\u0629 (\\u0623\\u0641\\u0642\\u064a &times; \\u0631\\u0623\\u0633\\u064a) \\u062f\\u0642\\u064a\\u0642\\u0629. \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0633\\u0627\\u0641\\u0629 0.1 \\u0645 \\u0641\\u062a\\u062d\\u0629 F1.1 \\u062a\\u0642\\u0631\\u064a\\u0628 \\u0631\\u0642\\u0645\\u064a &times; 2 \\u060c &times; 4 \\u060c &times; 8 \\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629 \\u0627\\u0644\\u0647\\u062f\\u0641 \\u0627\\u0644\\u062a\\u0644\\u0648\\u064a\\u0646 \\u0646\\u0639\\u0645. \\u0645\\u062f\\u0639\\u0648\\u0645 \\u0641\\u064a \\u0648\\u0636\\u0639 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646. \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0633\\u0645\\u0648\\u0639 \\u0648\\u0645\\u0631\\u0626\\u064a \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u062a\\u0635\\u0644 \\u0625\\u0644\\u0649 30 \\u0645 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0631\\u0626\\u064a \\u0646\\u0639\\u0645. \\u064a\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0643\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0631\\u0626\\u064a \\u060c \\u062a\\u0631\\u062f\\u062f \\u0648\\u0627\\u0645\\u0636 \\u0642\\u0627\\u0628\\u0644 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644 \\u0625\\u0646\\u0630\\u0627\\u0631 \\u0635\\u0648\\u062a\\u064a \\u0646\\u0639\\u0645. \\u064a\\u062a\\u0645 \\u062f\\u0639\\u0645 6 \\u0645\\u0646\\u0628\\u0647\\u0627\\u062a \\u0635\\u0648\\u062a\\u064a\\u0629 \\u0644\\u062a\\u063a\\u0637\\u064a\\u0629 \\u062c\\u0645\\u064a\\u0639 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631. \\u0648\\u0638\\u064a\\u0641\\u0629 \\u0630\\u0643\\u064a\\u0629 VCA 4 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f VCA (\\u062a\\u0642\\u0627\\u0637\\u0639 \\u0627\\u0644\\u062e\\u0637 \\u0648\\u0627\\u0644\\u062a\\u0637\\u0641\\u0644 \\u0648\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629 \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629) \\u060c \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 8 \\u0642\\u0648\\u0627\\u0639\\u062f VCA \\u062a\\u0645\\u0627\\u0645\\u064b\\u0627. \\u0642\\u064a\\u0627\\u0633 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u060c \\u0625\\u062c\\u0645\\u0627\\u0644\\u064a 21 \\u0642\\u0627\\u0639\\u062f\\u0629 (10 \\u0646\\u0642\\u0627\\u0637 \\u060c 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648\\u062e\\u0637 \\u0648\\u0627\\u062d\\u062f). \\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 -20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 150 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 302 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 &plusmn; 8 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (&plusmn; 14.4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) \\u0646\\u0627\\u0631 \\u0643\\u0634\\u0641 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u064a\\u0642 \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0643\\u062a\\u0634\\u0627\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 10 \\u0646\\u0642\\u0627\\u0637 \\u062d\\u0631\\u064a\\u0642. \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u060c 704 &times; 576 \\u060c 640 &times; 480 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u062b\\u0627\\u0644\\u062b \\u062a\\u064a\\u0627\\u0631 50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u064b\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u060c 704 &times; 576 \\u060c 352 &times; 288 \\u060c 320 &times; 240) \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265 \\/ H.264 \\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a: H.265 \\/ H.264 \\/ MJPEG \\u0627\\u0644\\u062f\\u0641\\u0642 \\u0627\\u0644\\u062b\\u0627\\u0644\\u062b: H.265 \\/ H.264 \\/ MJPEG \\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a G.711u \\/ G.711a \\/ G.722.1 \\/ MP2L2 \\/ G.726 \\/ PCM \\u0634\\u0628\\u0643\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644 \\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a IPv4 \\/ IPv6 \\u060c HTTP \\u060c HTTPS \\u060c 802.1x \\u060c Qos \\u060c FTP \\u060c SMTP \\u060c UPnP \\u060c SNMP \\u060c DNS \\u060c DDNS \\u060c NTP \\u060c RTSP \\u060c RTCP \\u060c RTP \\u060c TCP \\u060c UDP \\u060c IGMP \\u060c ICMP \\u060c DHCP \\u060c PPPoE API ISAPI \\u060c HIKVISION SDK \\u060c \\u0645\\u0646\\u0635\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u062c\\u0647\\u0629 \\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u060c ONVIF (\\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a S \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a G \\u060c \\u0627\\u0644\\u0645\\u0644\\u0641 \\u0627\\u0644\\u0634\\u062e\\u0635\\u064a T) \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (\\u0627\\u0644\\u0645\\u0639\\u0631\\u0641 \\u0648 PW) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c IEEE 802.1x (EAP-MD5 \\u060c EAP-TLS) \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 20 \\u0642\\u0646\\u0627\\u0629 \\u0639\\u0645\\u064a\\u0644 iVMS-4200 \\u060c Hik-Connect \\u0645\\u062a\\u0635\\u0641\\u062d \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0645\\u0633\\u0645\\u0648\\u062d \\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11 \\u064a\\u0639\\u064a\\u0634 \\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0636 (\\u062e\\u0627\\u0644\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0643\\u0648\\u0646\\u0627\\u062a \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a\\u0629): Chrome 57.0 +\\u060c Firefox 52.0 + \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629: Chrome 57.0+\\u060c Firefox 52.0 + \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629 \\u0641\\u062a\\u062d\\u0629 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\u0645\\u062f\\u0645\\u062c\\u0629 \\u060c \\u062a\\u062f\\u0639\\u0645 \\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD \\/ SDHC \\/ SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u064a\\u062c\\u0627) \\u060c \\u0648\\u062a\\u062f\\u0639\\u0645 \\u0627\\u0644\\u062a\\u0633\\u062c\\u064a\\u0644 \\u0627\\u0644\\u064a\\u062f\\u0648\\u064a \\/ \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\/ \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0636\\u064a\\u0641 \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u064b\\u0627 \\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0645\\u0633\\u0624\\u0648\\u0644 \\u060c \\u0639\\u0627\\u0645\\u0644 \\u060c \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0648\\u0627\\u062c\\u0647\\u0647 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0645\\u062f\\u062e\\u0644\\u0627\\u062a 1-ch (0-5 VDC) \\u0646\\u062a\\u064a\\u062c\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u062e\\u0631\\u062c\\u0627\\u062a \\u0645\\u0631\\u062d\\u0644 1-ch \\u060c \\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646 \\u0639\\u0645\\u0644 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u062a\\u0633\\u062c\\u064a\\u0644 SD \\/ \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u0645\\u0631\\u062d\\u0644 \\/ \\u0627\\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0630\\u0643\\u064a \\/ \\u062a\\u062d\\u0645\\u064a\\u0644 FTP \\/ \\u0631\\u0628\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a 1 \\u060c 3.5 \\u0645\\u0644\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629. \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062e\\u0637: 2 - 2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u062e\\u0631\\u062c: 1 K&Omega; &plusmn; 10\\u066a \\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629: 600 \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644\\u0627\\u062a 1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641. 1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 \\u0639\\u0627\\u0645 \\u0644\\u063a\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0648\\u064a\\u0628 32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u060c \\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u060c \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u060c \\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u060c \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644) \\u0645\\u0632\\u0648\\u062f \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 12 VDC &plusmn; 20\\u066a \\u060c \\u0643\\u062a\\u0644\\u0629 \\u0637\\u0631\\u0641\\u064a\\u0629 \\u062b\\u0646\\u0627\\u0626\\u064a\\u0629 \\u0627\\u0644\\u0646\\u0648\\u0627\\u0629 PoE (802.3af \\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3) \\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629 12 \\u0641\\u0648\\u0644\\u062a \\u062a\\u064a\\u0627\\u0631 \\u0645\\u0633\\u062a\\u0645\\u0631 &plusmn; 20\\u066a: 0.4 \\u0623 \\u060c \\u062d\\u062f \\u0623\\u0642\\u0635\\u0649. 4.5 \\u0648\\u0627\\u0637 PoE (802.3af\\u060c class 3): 42.5 V to 57 V\\u060c 0.14 A to 0.22 A\\u060c max. 5 \\u0648\\u0627\\u0637 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629 -40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a) 95\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644 \\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0639\\u064a\\u0627\\u0631 IP66 \\u061b \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642 TVS 6000V \\u060c \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0632\\u064a\\u0627\\u062f\\u0629 \\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0648\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0647\\u062f \\u0627\\u0644\\u0639\\u0627\\u0628\\u0631 \\u0623\\u0628\\u0639\\u0627\\u062f 138.3 \\u0645\\u0645 &times; 138.3 \\u0645\\u0645 &times; 123.1 \\u0645\\u0645 (5.45 \\u0628\\u0648\\u0635\\u0629 &times; 5.45 \\u0628\\u0648\\u0635\\u0629 &times; 4.85 \\u0628\\u0648\\u0635\\u0627\\u062a) 920 \\u062c\\u0631\\u0627\\u0645 (2.03 \\u0631\\u0637\\u0644) \\u062c\\u062f\\u0648\\u0644 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\/ \\u062a\\u063a\\u0637\\u064a\\u0629 \\u0648\\u0627\\u0633\\u0639\\u0629 \\u0627\\u0644\\u0646\\u0637\\u0627\\u0642 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0644\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 53 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 162 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 13 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u0641 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 41 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0644\\u0644\\u0628\\u0634\\u0631 (1.8 &times; 0.5 \\u0645) 7 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u062a\\u0639\\u0631\\u064a\\u0641 \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a (4.0 &times; 1.4 \\u0645) 20 \\u0645 \\u062c\\u062f\\u0648\\u0644 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\/ \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 VCA \\u0644\\u0644\\u0628\\u0634\\u0631 14 \\u0645 \\u0645\\u062c\\u0645\\u0648\\u0639\\u0629 VCA \\u0644\\u0644\\u0645\\u0631\\u0643\\u0628\\u0627\\u062a 42 \\u0645 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0642\\u064a\\u0627\\u0633 \\u0644\\u0644\\u0643\\u0627\\u0626\\u0646 (2 \\u0645 &times; 2 \\u0645) 44 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062c\\u0633\\u0645 (1 \\u0645 &times; 1 \\u0645) 22 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0644\\u0644\\u0623\\u062c\\u0633\\u0627\\u0645 (2 \\u0645 &times; 2 \\u0645) 108 \\u0645 \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642 \\u0644\\u0644\\u0643\\u0627\\u0626\\u0646 (1 \\u0645 &times; 1 \\u0645) 54 \\u0645<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD1117-2/PA');
INSERT INTO `items` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `brand_id`, `category_id`, `points_to_gain`, `point_to_get`, `user_manual`, `price`, `old_price`, `details`, `image_resolution`, `lens_resolution`, `movement`, `night_capturing`, `recording_mode`, `internal_storage`, `part_number`) VALUES
(16, '2022-08-25 12:38:55', '2022-08-25 12:38:55', NULL, '{\"ar\": \"كاميراالحرارية والبصرية ثنائية\", \"en\": \"Thermal & Optical Bi-Spectrum Network Turret Camera\"}', 5, 12, 20, 99, NULL, '200.00', '305.00', '{\"en\":\"<ul>\\r\\n\\t<li>Thermal Module<\\/li>\\r\\n\\t<li>Image SensorVanadium Oxide Uncooled Focal Plane Arrays<\\/li>\\r\\n\\t<li>Resolution160 &times; 120<\\/li>\\r\\n\\t<li>Pixel Pitch17 &mu;m<\\/li>\\r\\n\\t<li>Spectral Range8 &mu;m to 14 &mu;m<\\/li>\\r\\n\\t<li>NETD&lt; 40 mK (@ 25 &deg;C, F# = 1.1)<\\/li>\\r\\n\\t<li>Focal Length3.1 mm<\\/li>\\r\\n\\t<li>IFOV5.48 mrad<\\/li>\\r\\n\\t<li>Field Of View50.0&deg; &times; 37.2&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Min. Focusing Distance0.2 m<\\/li>\\r\\n\\t<li>ApertureF1.1<\\/li>\\r\\n\\t<li>Digital Zoom&times; 2, &times; 4<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Optical Module<\\/li>\\r\\n\\t<li>Image Sensor1\\/2.7&quot; Progressive Scan CMOS<\\/li>\\r\\n\\t<li>Resolution2688 &times; 1520<\\/li>\\r\\n\\t<li>Min. Illumination0.0089Lux @(F1.6,AGC ON) ,0 Lux with IR<\\/li>\\r\\n\\t<li>Shutter Speed1 s to 1\\/100,000 s<\\/li>\\r\\n\\t<li>Focal Length4 mm<\\/li>\\r\\n\\t<li>Field Of View84.0&deg; &times; 44.8&deg; (H &times; V)<\\/li>\\r\\n\\t<li>Aperture (Range)F1.6<\\/li>\\r\\n\\t<li>WDR120 dB<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Image Effect<\\/li>\\r\\n\\t<li>Target ColorationYes. Supported in white hot and black hot mode.<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Illuminator<\\/li>\\r\\n\\t<li>IR DistanceUp to 15 m<\\/li>\\r\\n\\t<li>IR Intensity And AngleAutomatically adjusted<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Audible And Visual Alarm<\\/li>\\r\\n\\t<li>White Light RangeUp to 30 m<\\/li>\\r\\n\\t<li>Visual AlarmYes. White light alarm with adjustable flashing frequencies<\\/li>\\r\\n\\t<li>Audio Alarm\\r\\n\\t<p>Yes, for two types of audible alarm (VCA, Temperature)<\\/p>\\r\\n\\r\\n\\t<p>2 preset voice alerts (one for each)<\\/p>\\r\\n\\r\\n\\t<p>6 importable user-defined voice alerts (4 options shared in the two types)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Smart Function<\\/li>\\r\\n\\t<li>VCA4 VCA rule types (line crossing, intrusion, region entrance, and region exiting), up to 8 VCA rules in total.<\\/li>\\r\\n\\t<li>Temperature Measurement3 temperature measurement rule types, 21 rules in total (10 points, 10 areas, and 1 line)<\\/li>\\r\\n\\t<li>Temperature Range- 20 &deg;C to 150 &deg;C (- 4 &deg;F to 302 &deg;F)<\\/li>\\r\\n\\t<li>Temperature Accuracy&plusmn; 8 &deg;C (&plusmn; 14.4 &deg;F)<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Video And Audio<\\/li>\\r\\n\\t<li>Main Stream\\r\\n\\t<p>Thermal:<\\/p>\\r\\n\\r\\n\\t<p>25 fps (1280 &times; 720, 704 &times; 576, 640 &times; 480, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>60Hz: 30 fps (2688 &times; 1520, 1920 &times; 1080, 1280 &times; 720)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Sub-Stream\\r\\n\\t<p>Thermal:<\\/p>\\r\\n\\r\\n\\t<p>25 fps (704 &times; 576, 352 &times; 288, 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>Optical:<\\/p>\\r\\n\\r\\n\\t<p>50 Hz: 25 fps (704 &times; 576, 352 &times; 288)<\\/p>\\r\\n\\r\\n\\t<p>60 Hz: 30 fps (704 &times; 480, 352 &times; 240)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Video Compression\\r\\n\\t<p>Main Stream: H.265\\/H.264<\\/p>\\r\\n\\r\\n\\t<p>Sub-Stream: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio CompressionG.722.1\\/G.711ulaw\\/G.711alaw\\/MP2L2\\/G.726\\/PCM<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Network<\\/li>\\r\\n\\t<li>ProtocolsIPv4\\/IPv6, HTTP, HTTPS, 802.1x, QoS, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/li>\\r\\n\\t<li>Network StorageMicroSD\\/SDHC\\/SDXC card (up to 256 G) local storage, NAS (NFS, SMB\\/CIFS), Auto Network Replenishment (ANR)<\\/li>\\r\\n\\t<li>APIISAPI, HIKVISION SDK, third-party management platform,<\\/li>\\r\\n\\t<li>Simultaneous Live ViewUp to 20 channels<\\/li>\\r\\n\\t<li>User\\/Host LevelUp to 32 users, 3 levels: Administrator, Operator, User<\\/li>\\r\\n\\t<li>SecurityUser authentication (ID and PW), MAC address binding, HTTPS encryption, IEEE 802.1x(EAP-MD5, EAP-TLS), access control, IP address filtering<\\/li>\\r\\n\\t<li>ClientiVMS-4200, Hik-Connect<\\/li>\\r\\n\\t<li>Web Browser\\r\\n\\t<p>Live view (plug-in allowed) : Internet Explorer 11<\\/p>\\r\\n\\r\\n\\t<p>Live view (plug-in free) : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>Local service : Chrome 57.0 +, Firefox 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>Interface<\\/li>\\r\\n\\t<li>Alarm Input1, alarm input (0-5 VDC)<\\/li>\\r\\n\\t<li>Alarm Output1, alarm output (alarm response actions configurable)<\\/li>\\r\\n\\t<li>Alarm ActionSD recording\\/Relay output\\/Smart capture\\/FTP upload\\/Email linkage<\\/li>\\r\\n\\t<li>Audio Input\\r\\n\\t<p>1, 3.5 mm Mic in\\/Line in interface<\\/p>\\r\\n\\r\\n\\t<p>Line input: 2 - 2.4 V [p-p], output impedance: 1 K&Omega; &plusmn; 10%<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Audio OutputLinear level, impedance: 600 &Omega;<\\/li>\\r\\n\\t<li>Communication Interface\\r\\n\\t<p>1, RJ45 10 M\\/100 M Self-adaptive Ethernet interface.<\\/p>\\r\\n\\r\\n\\t<p>1, RS-485 interface (half duplex)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul>\\r\\n\\t<li>General<\\/li>\\r\\n\\t<li>Web Client Language32 languages English, Russian, Estonian, Bulgarian, Hungarian, Greek, German, Italian, Czech, Slovak, French, Polish, Dutch, Portuguese, Spanish, Romanian, Danish, Swedish, Norwegian, Finnish, Croatian, Slovenian, Serbian, Turkish, Korean, Traditional Chinese, Thai, Vietnamese, Japanese, Latvian, Lithuanian, Portuguese (Brazil)<\\/li>\\r\\n\\t<li>Power Supply\\r\\n\\t<p>12 VDC &plusmn; 25%, &phi; 5.5 mm coaxial power plug<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Power Consumption\\r\\n\\t<p>12 VDC &plusmn; 25%: 0.5 A, Max 6 W<\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af, class 3): 42.5 V to 57 V, 0.14 A to 0.22 A, Max 6.5 W<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Working Temperature\\/Humidity\\r\\n\\t<p>Temperature: - 40 &deg;C to 65 &deg;C (- 40 &deg;F to 149 &deg;F)<\\/p>\\r\\n\\r\\n\\t<p>Humidity: 95% or less<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Protection Level\\r\\n\\t<p>IP66 Standard<\\/p>\\r\\n\\r\\n\\t<p>TVS 6000V lightning protection, surge protection, voltage transient protection<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li>Dimensions138.3 mm &times; 138.3 mm &times; 123.1 mm (5.45&quot; &times; 5.45&quot; &times; 4.85 &quot;)<\\/li>\\r\\n\\t<li>940 g (2.07 lb)<\\/li>\\r\\n<\\/ul>\",\"ar\":\"<ul style=\\\"list-style-type:none\\\">\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#d7000f\\\">\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631<\\/span><span style=\\\"color:#000000\\\">\\u0623\\u0643\\u0633\\u064a\\u062f \\u0627\\u0644\\u0641\\u0627\\u0646\\u0627\\u062f\\u064a\\u0648\\u0645 \\u063a\\u064a\\u0631 \\u0627\\u0644\\u0645\\u0628\\u0631\\u062f\\u0629 \\u0635\\u0641\\u0627\\u0626\\u0641 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u062f\\u0642\\u0629<\\/span><span style=\\\"color:#000000\\\">160 &times; 120<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0628\\u0643\\u0633\\u0644 \\u0627\\u0644\\u0645\\u0644\\u0639\\u0628<\\/span><span style=\\\"color:#000000\\\">17 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0645\\u062f\\u0649 \\u0627\\u0644\\u0637\\u064a\\u0641\\u064a<\\/span><span style=\\\"color:#000000\\\">8 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631 \\u0625\\u0644\\u0649 14 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0645\\u062a\\u0631<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0646\\u062a\\u062f<\\/span><span style=\\\"color:#000000\\\">&lt; 40 \\u0645\\u0644\\u0644\\u064a \\u0643\\u0644\\u0641\\u0646 (\\u0639\\u0646\\u062f 25 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629\\u060c F#=1.1)<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a<\\/span><span style=\\\"color:#000000\\\">3.1 \\u0645\\u0644\\u0645<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">IFOV<\\/span><span style=\\\"color:#000000\\\">5.48 \\u0645\\u0631\\u0627\\u062f<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629<\\/span><span style=\\\"color:#000000\\\">50 \\u062f\\u0631\\u062c\\u0629 &times; 37.2 \\u062f\\u0631\\u062c\\u0629 (H &times; V)<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0644\\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0632 \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a<\\/span><span style=\\\"color:#000000\\\">0.2 \\u0645<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0641\\u0631\\u062c<\\/span><span style=\\\"color:#000000\\\">F 1.1<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0632\\u0648\\u0645 \\u0631\\u0642\\u0645\\u064a<\\/span><span style=\\\"color:#000000\\\">&times;2, &times;4<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0627\\u0644\\u0648\\u062d\\u062f\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0645\\u0633\\u062a\\u0634\\u0639\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631<\\/span><span style=\\\"color:#000000\\\">1\\/2.7 &quot;\\u0627\\u0644\\u0645\\u0633\\u062d \\u0627\\u0644\\u062a\\u062f\\u0631\\u064a\\u062c\\u064a CMOS<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062f\\u0642\\u0629<\\/span><span style=\\\"color:#000000\\\">2688 &times; 1520<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u062f\\u0646\\u0649 \\u0645\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0621\\u0629<\\/span><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0644\\u0648\\u0646: 0.0176 \\u0644\\u0648\\u0643\\u0633 @ (F2.25\\u060c AGC \\u0639\\u0644\\u0649)\\u060c B \\/ W: 0.0035 \\u0644\\u0648\\u0643\\u0633 @ (F2.25\\u060c AGC ON)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0633\\u0631\\u0639\\u0629 \\u0627\\u0644\\u063a\\u0627\\u0644\\u0642<\\/span><span style=\\\"color:#000000\\\">1 \\u062b\\u0627\\u0646\\u064a\\u0629 \\u0625\\u0644\\u0649 1\\/100,000 \\u062b\\u0627\\u0646\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0628\\u0639\\u062f \\u0627\\u0644\\u0628\\u0624\\u0631\\u064a<\\/span><span style=\\\"color:#000000\\\">4 \\u0645\\u0645<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0631\\u0624\\u064a\\u0629<\\/span><span style=\\\"color:#000000\\\">84 \\u062f\\u0631\\u062c\\u0629 &times; 44.8 \\u062f\\u0631\\u062c\\u0629 (H &times; V)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0641\\u062a\\u062d\\u0629 \\u0627\\u0644\\u0639\\u062f\\u0633\\u0629 (\\u0627\\u0644\\u0645\\u062f\\u0649)<\\/span><span style=\\\"color:#000000\\\">\\u0648\\u0627\\u0648 2.3<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062a\\u0642\\u0631\\u064a\\u0631 \\u0627\\u0644\\u062a\\u0646\\u0645\\u064a\\u0629 \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a<\\/span><span style=\\\"color:#000000\\\">120 \\u062f\\u064a\\u0633\\u064a\\u0628\\u0644<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u062a\\u0623\\u062b\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062f\\u0645\\u062c \\u0627\\u0644\\u0635\\u0648\\u0631 \\u062b\\u0646\\u0627\\u0626\\u064a \\u0627\\u0644\\u0637\\u064a\\u0641<\\/span><span style=\\\"color:#000000\\\">\\u0639\\u0631\\u0636 \\u062a\\u0641\\u0627\\u0635\\u064a\\u0644 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0635\\u0648\\u0631\\u0629 \\u062f\\u0627\\u062e\\u0644 \\u0635\\u0648\\u0631\\u0629<\\/span><span style=\\\"color:#000000\\\">\\u0639\\u0631\\u0636 \\u0635\\u0648\\u0631\\u0629 \\u062c\\u0632\\u0626\\u064a\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u064a\\u0629 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0634\\u0627\\u0634\\u0629 \\u0627\\u0644\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0644\\u0644\\u0642\\u0646\\u0627\\u0629 \\u0627\\u0644\\u0628\\u0635\\u0631\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062a\\u0644\\u0648\\u064a\\u0646 \\u0627\\u0644\\u0645\\u0633\\u062a\\u0647\\u062f\\u0641<\\/span><span style=\\\"color:#000000\\\">\\u0646\\u0639\\u0645.&nbsp;\\u0645\\u062f\\u0639\\u0648\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0636\\u0639 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646 \\u0648\\u0627\\u0644\\u0623\\u0633\\u0648\\u062f \\u0627\\u0644\\u0633\\u0627\\u062e\\u0646.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0645\\u0636\\u064a\\u0626\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0645\\u0633\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621<\\/span><span style=\\\"color:#000000\\\">\\u062d\\u062a\\u0649 15 \\u0645<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0643\\u062b\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0623\\u0634\\u0639\\u0629 \\u062a\\u062d\\u062a \\u0627\\u0644\\u062d\\u0645\\u0631\\u0627\\u0621 \\u0648\\u0632\\u0627\\u0648\\u064a\\u062a\\u0647\\u0627<\\/span><span style=\\\"color:#000000\\\">\\u064a\\u062a\\u0645 \\u0636\\u0628\\u0637\\u0647 \\u062a\\u0644\\u0642\\u0627\\u0626\\u064a\\u0627<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0633\\u0645\\u0648\\u0639 \\u0648\\u0645\\u0631\\u0626\\u064a<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636<\\/span><span style=\\\"color:#000000\\\">\\u062d\\u062a\\u0649 30 \\u0645\\u062a\\u0631<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0645\\u0631\\u0626\\u064a<\\/span><span style=\\\"color:#000000\\\">\\u0646\\u0639\\u0645.&nbsp;\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0644\\u0636\\u0648\\u0621 \\u0627\\u0644\\u0623\\u0628\\u064a\\u0636 \\u0645\\u0639 \\u062a\\u0631\\u062f\\u062f\\u0627\\u062a \\u0648\\u0645\\u064a\\u0636 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0635\\u0648\\u062a\\u064a<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u0646\\u0639\\u0645\\u060c \\u0644\\u062b\\u0644\\u0627\\u062b\\u0629 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0644\\u0645\\u0633\\u0645\\u0648\\u0639\\u0629 (VCA\\u060c \\u0648\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629\\u060c \\u0648\\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062a\\u062f\\u062e\\u064a\\u0646)<\\/span><\\/p>\\r\\n\\r\\n\\t<p>3 \\u062a\\u0646\\u0628\\u064a\\u0647\\u0627\\u062a \\u0635\\u0648\\u062a\\u064a\\u0629 \\u0645\\u062d\\u062f\\u062f\\u0629 \\u0645\\u0633\\u0628\\u0642\\u0627 (\\u0648\\u0627\\u062d\\u062f \\u0644\\u0643\\u0644 \\u0645\\u0646\\u0647\\u0627)<\\/p>\\r\\n\\r\\n\\t<p>6 \\u062a\\u0646\\u0628\\u064a\\u0647\\u0627\\u062a \\u0635\\u0648\\u062a\\u064a\\u0629 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u0627\\u0633\\u062a\\u064a\\u0631\\u0627\\u062f \\u0645\\u0639\\u0631\\u0641\\u0629 \\u0645\\u0646 \\u0642\\u0628\\u0644 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (6 \\u062e\\u064a\\u0627\\u0631\\u0627\\u062a \\u0645\\u0634\\u062a\\u0631\\u0643\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0623\\u0646\\u0648\\u0627\\u0639 \\u0627\\u0644\\u062b\\u0644\\u0627\\u062b\\u0629)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0648\\u0638\\u064a\\u0641\\u0629 \\u0630\\u0643\\u064a\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">VCA<\\/span><span style=\\\"color:#000000\\\">4 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f VCA (\\u0639\\u0628\\u0648\\u0631 \\u0627\\u0644\\u062e\\u0637\\u060c \\u0648\\u0627\\u0644\\u0627\\u0642\\u062a\\u062d\\u0627\\u0645\\u060c \\u0648\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629\\u060c \\u0648\\u0627\\u0644\\u062e\\u0631\\u0648\\u062c \\u0645\\u0646 \\u0627\\u0644\\u0645\\u0646\\u0637\\u0642\\u0629)\\u060c \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 8 \\u0642\\u0648\\u0627\\u0639\\u062f VCA \\u0641\\u064a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639.<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629<\\/span><span style=\\\"color:#000000\\\">3 \\u0623\\u0646\\u0648\\u0627\\u0639 \\u0645\\u0646 \\u0642\\u0648\\u0627\\u0639\\u062f \\u0642\\u064a\\u0627\\u0633 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629 \\u060c \\u0648 21 \\u0642\\u0627\\u0639\\u062f\\u0629 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062c\\u0645\\u0648\\u0639 (10 \\u0646\\u0642\\u0627\\u0637 \\u060c \\u0648 10 \\u0645\\u0646\\u0627\\u0637\\u0642 \\u060c \\u0648 1 \\u0633\\u0637\\u0631)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0646\\u0637\\u0627\\u0642 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629<\\/span><span style=\\\"color:#000000\\\">-20 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 550 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-4 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 1022 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a)\\u061b<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062f\\u0642\\u0629 \\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629<\\/span><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062d\\u062f \\u0627\\u0644\\u0623\\u0642\\u0635\\u0649 (&plusmn;2 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629\\u060c &plusmn;2\\u066a)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0643\\u0634\\u0641 \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642<\\/span><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0643\\u0634\\u0641 \\u0627\\u0644\\u062f\\u064a\\u0646\\u0627\\u0645\\u064a\\u0643\\u064a \\u0639\\u0646 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0626\\u0642\\u060c \\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 10 \\u0646\\u0642\\u0627\\u0637 \\u062d\\u0631\\u064a\\u0642 \\u064a\\u0645\\u0643\\u0646 \\u0627\\u0643\\u062a\\u0634\\u0627\\u0641\\u0647\\u0627.<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648 \\u0648\\u0627\\u0644\\u0635\\u0648\\u062a<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u062d\\u0631\\u0627\\u0631\\u064a:<\\/span><\\/p>\\r\\n\\r\\n\\t<p>25 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (1280 &times; 720 \\u0648 704 &times; 576 \\u0648 640 &times; 480 \\u0648 352 &times; 288 \\u0648 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>\\u0628\\u0635\\u0631\\u064a:<\\/p>\\r\\n\\r\\n\\t<p>50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u06481920 &times; 1080 \\u06481280 &times; 720)<\\/p>\\r\\n\\r\\n\\t<p>60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (2688 &times; 1520 \\u06481920 &times; 1080 \\u06481280 &times; 720)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062a\\u064a\\u0627\\u0631 \\u0641\\u0631\\u0639\\u064a<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u062d\\u0631\\u0627\\u0631\\u064a:<\\/span><\\/p>\\r\\n\\r\\n\\t<p>25 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576\\u060c 352 &times; 288\\u060c 320 &times; 240)<\\/p>\\r\\n\\r\\n\\t<p>\\u0628\\u0635\\u0631\\u064a:<\\/p>\\r\\n\\r\\n\\t<p>50 \\u0647\\u0631\\u062a\\u0632: 25 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 576 \\u0648352 &times; 288 \\u0648176 &times; 144)<\\/p>\\r\\n\\r\\n\\t<p>60 \\u0647\\u0631\\u062a\\u0632: 30 \\u0625\\u0637\\u0627\\u0631\\u0627 \\u0641\\u064a \\u0627\\u0644\\u062b\\u0627\\u0646\\u064a\\u0629 (704 &times; 480 \\u0648352 &times; 240 \\u0648176 &times; 120)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0636\\u063a\\u0637 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0631\\u0626\\u064a\\u0633\\u064a: H.265\\/H.264<\\/span><\\/p>\\r\\n\\r\\n\\t<p>\\u0627\\u0644\\u062a\\u064a\\u0627\\u0631 \\u0627\\u0644\\u0641\\u0631\\u0639\\u064a: H.265\\/H.264\\/MJPEG<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0636\\u063a\\u0637 \\u0627\\u0644\\u0635\\u0648\\u062a<\\/span><span style=\\\"color:#000000\\\">G.722.1\\/G.711ulaw\\/G.711alaw\\/MP2L2\\/G.726\\/PCM<\\/span><\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0634\\u0628\\u0643\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0628\\u0631\\u0648\\u062a\\u0648\\u0643\\u0648\\u0644\\u0627\\u062a<\\/span><span style=\\\"color:#000000\\\">IPv4\\/IPv6, HTTP, HTTPS, 802.1x, \\u062c\\u0648\\u062f\\u0629 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0629, FTP, SMTP, UPnP, SNMP, DNS, DDNS, NTP, RTSP, RTCP, RTP, TCP, UDP, IGMP, ICMP, DHCP, PPPoE<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062a\\u062e\\u0632\\u064a\\u0646 \\u0627\\u0644\\u0634\\u0628\\u0643\\u0629<\\/span><span style=\\\"color:#000000\\\">\\u0628\\u0637\\u0627\\u0642\\u0629 MicroSD\\/SDHC\\/SDXC (\\u062d\\u062a\\u0649 256 \\u062c\\u0645) \\u0633\\u0639\\u0629 \\u062a\\u062e\\u0632\\u064a\\u0646 \\u0645\\u062d\\u0644\\u064a\\u0629\\u060c NAS (NFS\\u060c SMB\\/CIFS)\\u060c \\u0627\\u0644\\u062a\\u062c\\u062f\\u064a\\u062f \\u0627\\u0644\\u062a\\u0644\\u0642\\u0627\\u0626\\u064a \\u0644\\u0644\\u0634\\u0628\\u0643\\u0629 (ANR)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0648\\u0627\\u062c\\u0647\\u0629 \\u0628\\u0631\\u0645\\u062c\\u0629 \\u0627\\u0644\\u062a\\u0637\\u0628\\u064a\\u0642\\u0627\\u062a (API)<\\/span><span style=\\\"color:#000000\\\">ISAPI \\u060c HIKVISION SDK \\u060c \\u0645\\u0646\\u0635\\u0629 \\u0625\\u062f\\u0627\\u0631\\u0629 \\u0627\\u0644\\u062c\\u0647\\u0627\\u062a \\u0627\\u0644\\u062e\\u0627\\u0631\\u062c\\u064a\\u0629 \\u060c<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 \\u0645\\u062a\\u0632\\u0627\\u0645\\u0646<\\/span><span style=\\\"color:#000000\\\">\\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 20 \\u0642\\u0646\\u0627\\u0629<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\/\\u0627\\u0644\\u0645\\u0636\\u064a\\u0641<\\/span><span style=\\\"color:#000000\\\">\\u0645\\u0627 \\u064a\\u0635\\u0644 \\u0625\\u0644\\u0649 32 \\u0645\\u0633\\u062a\\u062e\\u062f\\u0645\\u0627\\u060c 3 \\u0645\\u0633\\u062a\\u0648\\u064a\\u0627\\u062a: \\u0627\\u0644\\u0645\\u0633\\u0624\\u0648\\u0644\\u060c \\u0627\\u0644\\u0645\\u0634\\u063a\\u0644\\u060c \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0623\\u0645\\u0646<\\/span><span style=\\\"color:#000000\\\">\\u0645\\u0635\\u0627\\u062f\\u0642\\u0629 \\u0627\\u0644\\u0645\\u0633\\u062a\\u062e\\u062f\\u0645 (ID \\u0648 PW) \\u060c \\u0631\\u0628\\u0637 \\u0639\\u0646\\u0648\\u0627\\u0646 MAC \\u060c \\u062a\\u0634\\u0641\\u064a\\u0631 HTTPS \\u060c IEEE 802.1x (EAP-MD5 \\u060c EAP-TLS) \\u060c \\u0627\\u0644\\u062a\\u062d\\u0643\\u0645 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u060c \\u062a\\u0635\\u0641\\u064a\\u0629 \\u0639\\u0646\\u0648\\u0627\\u0646 IP<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0639\\u0645\\u064a\\u0644<\\/span><span style=\\\"color:#000000\\\">iVMS-4200, \\u0647\\u064a\\u0643 \\u0643\\u0648\\u0646\\u064a\\u0643\\u062a<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0645\\u064f\\u062a\\u064e\\u0635\\u0652\\u0641\\u064e\\u062d \\u0648\\u0650\\u0628<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u0637\\u0631\\u064a\\u0642\\u0629 \\u0627\\u0644\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0645\\u0628\\u0627\\u0634\\u0631\\u0629 (\\u064a\\u0633\\u0645\\u062d \\u0628\\u0627\\u0644\\u0645\\u0643\\u0648\\u0646 \\u0627\\u0644\\u0625\\u0636\\u0627\\u0641\\u064a): Internet Explorer 11<\\/span><\\/p>\\r\\n\\r\\n\\t<p>\\u0639\\u0631\\u0636 \\u0645\\u0628\\u0627\\u0634\\u0631 (\\u0628\\u062f\\u0648\\u0646 \\u0645\\u0643\\u0648\\u0646 \\u0625\\u0636\\u0627\\u0641\\u064a): Chrome 57.0 + \\u060c Firefox 52.0 +<\\/p>\\r\\n\\r\\n\\t<p>\\u0627\\u0644\\u062e\\u062f\\u0645\\u0629 \\u0627\\u0644\\u0645\\u062d\\u0644\\u064a\\u0629 : \\u0643\\u0631\\u0648\\u0645 57.0+ \\u060c \\u0641\\u0627\\u064a\\u0631\\u0641\\u0648\\u0643\\u0633 52.0 +<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul dir=\\\"rtl\\\" style=\\\"list-style-type:none\\\">\\r\\n\\t<li><span style=\\\"color:#d7000f\\\">\\u0648\\u0627\\u062c\\u0647\\u0647<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647<\\/span><span style=\\\"color:#000000\\\">1 \\u060c \\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (0-5 VDC)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u062e\\u0631\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647<\\/span><span style=\\\"color:#000000\\\">1 \\u060c \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 (\\u0625\\u062c\\u0631\\u0627\\u0621\\u0627\\u062a \\u0627\\u0633\\u062a\\u062c\\u0627\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0646\\u0628\\u064a\\u0647 \\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0644\\u062a\\u0643\\u0648\\u064a\\u0646)<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u0646\\u0630\\u0627\\u0631 \\u0627\\u0644\\u0639\\u0645\\u0644<\\/span><span style=\\\"color:#000000\\\">\\u062a\\u0633\\u062c\\u064a\\u0644 SD \\/ \\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u062a\\u0631\\u062d\\u064a\\u0644 \\/ \\u0627\\u0644\\u0627\\u0644\\u062a\\u0642\\u0627\\u0637 \\u0627\\u0644\\u0630\\u0643\\u064a \\/ \\u062a\\u062d\\u0645\\u064a\\u0644 FTP \\/ \\u0631\\u0628\\u0637 \\u0627\\u0644\\u0628\\u0631\\u064a\\u062f \\u0627\\u0644\\u0625\\u0644\\u0643\\u062a\\u0631\\u0648\\u0646\\u064a<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u062f\\u062e\\u0627\\u0644 \\u0627\\u0644\\u0635\\u0648\\u062a<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">1 \\u060c 3.5 \\u0645\\u0645 \\u0645\\u064a\\u0643\\u0631\\u0648\\u0641\\u0648\\u0646 \\u0641\\u064a \\/ \\u062e\\u0637 \\u0641\\u064a \\u0627\\u0644\\u0648\\u0627\\u062c\\u0647\\u0629<\\/span><\\/p>\\r\\n\\r\\n\\t<p>\\u0645\\u062f\\u062e\\u0644 \\u0627\\u0644\\u062e\\u0637: 2 - 2.4 \\u0641\\u0648\\u0644\\u062a [p-p] \\u060c \\u0645\\u0642\\u0627\\u0648\\u0645\\u0629 \\u0627\\u0644\\u0625\\u062e\\u0631\\u0627\\u062c: 1 K&Omega; &plusmn; 10\\u066a<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0625\\u062e\\u0631\\u0627\\u062c \\u0627\\u0644\\u0635\\u0648\\u062a<\\/span><span style=\\\"color:#000000\\\">\\u0627\\u0644\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062e\\u0637\\u064a\\u060c \\u0627\\u0644\\u0645\\u0642\\u0627\\u0648\\u0645\\u0629: 600 &Omega;<\\/span><\\/li>\\r\\n\\t<li><span style=\\\"color:#000000\\\">\\u0648\\u0627\\u062c\\u0647\\u0629 \\u0627\\u0644\\u0627\\u062a\\u0635\\u0627\\u0644<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">1 \\u060c RJ45 10 M \\/ 100 M \\u0648\\u0627\\u062c\\u0647\\u0629 \\u0625\\u064a\\u062b\\u0631\\u0646\\u062a \\u0630\\u0627\\u062a\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0643\\u064a\\u0641.<\\/span><\\/p>\\r\\n\\r\\n\\t<p>1 \\u060c \\u0648\\u0627\\u062c\\u0647\\u0629 RS-485 (\\u0646\\u0635\\u0641 \\u062f\\u0648\\u0628\\u0644\\u0643\\u0633)<\\/p>\\r\\n\\t<\\/li>\\r\\n<\\/ul>\\r\\n\\r\\n<ul style=\\\"list-style-type:none\\\">\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#d7000f\\\">\\u0639\\u0627\\u0645<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0644\\u063a\\u0629 \\u0639\\u0645\\u064a\\u0644 \\u0627\\u0644\\u0648\\u064a\\u0628<\\/span><span style=\\\"color:#000000\\\">32 \\u0644\\u063a\\u0629 \\u0627\\u0644\\u0625\\u0646\\u062c\\u0644\\u064a\\u0632\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0631\\u0648\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0633\\u062a\\u0648\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0644\\u063a\\u0627\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0645\\u062c\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u064a\\u0648\\u0646\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0623\\u0644\\u0645\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u064a\\u0637\\u0627\\u0644\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0634\\u064a\\u0643\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u0627\\u0643\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0631\\u0646\\u0633\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0647\\u0648\\u0644\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0625\\u0633\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0631\\u0648\\u0645\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062f\\u0646\\u0645\\u0627\\u0631\\u0643\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0648\\u064a\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0646\\u0631\\u0648\\u064a\\u062c\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u0646\\u0644\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0643\\u0631\\u0648\\u0627\\u062a\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0633\\u0644\\u0648\\u0641\\u064a\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0635\\u0631\\u0628\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0631\\u0643\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0643\\u0648\\u0631\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0635\\u064a\\u0646\\u064a\\u0629 \\u0627\\u0644\\u062a\\u0642\\u0644\\u064a\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u062a\\u0627\\u064a\\u0644\\u0627\\u0646\\u062f\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0641\\u064a\\u062a\\u0646\\u0627\\u0645\\u064a\\u0629 \\u0648\\u0627\\u0644\\u064a\\u0627\\u0628\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u0627\\u062a\\u0641\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0644\\u064a\\u062a\\u0648\\u0627\\u0646\\u064a\\u0629 \\u0648\\u0627\\u0644\\u0628\\u0631\\u062a\\u063a\\u0627\\u0644\\u064a\\u0629 (\\u0627\\u0644\\u0628\\u0631\\u0627\\u0632\\u064a\\u0644)<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0645\\u062f\\u0627\\u062f\\u0627\\u062a \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">12 VDC &plusmn; 25\\u066a \\u060c &phi; 5.5 \\u0645\\u0645 \\u0642\\u0627\\u0628\\u0633 \\u0637\\u0627\\u0642\\u0629 \\u0645\\u062d\\u0648\\u0631\\u064a<\\/span><\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af\\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3)<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0633\\u062a\\u0647\\u0644\\u0627\\u0643 \\u0627\\u0644\\u0637\\u0627\\u0642\\u0629<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">12 \\u0641\\u0648\\u0644\\u062a \\u062a\\u064a\\u0627\\u0631 \\u0645\\u0633\\u062a\\u0645\\u0631 &plusmn; 25\\u066a: 0.5 \\u0623\\u0645\\u0628\\u064a\\u0631\\u060c 6 \\u0648\\u0627\\u062a \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649<\\/span><\\/p>\\r\\n\\r\\n\\t<p>PoE (802.3af\\u060c \\u0627\\u0644\\u0641\\u0626\\u0629 3): 42.5 \\u0641\\u0648\\u0644\\u062a \\u0625\\u0644\\u0649 57 \\u0641\\u0648\\u0644\\u062a\\u060c 0.14 \\u0623\\u0645\\u0628\\u064a\\u0631 \\u0625\\u0644\\u0649 0.22 \\u0623\\u0645\\u0628\\u064a\\u0631\\u060c 6.5 \\u0648\\u0627\\u062a \\u0643\\u062d\\u062f \\u0623\\u0642\\u0635\\u0649<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u062f\\u0631\\u062c\\u0629 \\u062d\\u0631\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644 \\/ \\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">\\u062f\\u0631\\u062c\\u0629 \\u0627\\u0644\\u062d\\u0631\\u0627\\u0631\\u0629: -40 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 \\u0625\\u0644\\u0649 65 \\u062f\\u0631\\u062c\\u0629 \\u0645\\u0626\\u0648\\u064a\\u0629 (-40 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a \\u0625\\u0644\\u0649 149 \\u062f\\u0631\\u062c\\u0629 \\u0641\\u0647\\u0631\\u0646\\u0647\\u0627\\u064a\\u062a)<\\/span><\\/p>\\r\\n\\r\\n\\t<p>\\u0627\\u0644\\u0631\\u0637\\u0648\\u0628\\u0629: 95\\u066a \\u0623\\u0648 \\u0623\\u0642\\u0644<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0645\\u0633\\u062a\\u0648\\u0649 \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629<\\/span>\\r\\n\\t<p><span style=\\\"color:#000000\\\">IP66 \\u0642\\u064a\\u0627\\u0633\\u064a<\\/span><\\/p>\\r\\n\\r\\n\\t<p>TVS 6000V \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0635\\u0648\\u0627\\u0639\\u0642\\u060c \\u0627\\u0644\\u062d\\u0645\\u0627\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0644\\u0637\\u0641\\u0631\\u0629\\u060c \\u0627\\u0644\\u062c\\u0647\\u062f \\u062d\\u0645\\u0627\\u064a\\u0629 \\u0639\\u0627\\u0628\\u0631\\u0629<\\/p>\\r\\n\\t<\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#000000\\\">\\u0627\\u0628\\u0639\\u0627\\u062f<\\/span><span style=\\\"color:#000000\\\">138.3 \\u0645\\u0644\\u0645 &times; 138.3 \\u0645\\u0644\\u0645 &times; 123.1 \\u0645\\u0644\\u0645 (5.45 \\u0628\\u0648\\u0635\\u0627\\u062a &times; 5.45 \\u0628\\u0648\\u0635\\u0627\\u062a &times; 4.85 \\u0628\\u0648\\u0635\\u0627\\u062a)<\\/span><\\/li>\\r\\n\\t<li dir=\\\"rtl\\\" style=\\\"text-align: right;\\\"><span style=\\\"color:#0f0f5f\\\"><span style=\\\"background-color:rgba(1, 233, 175, 0.5)\\\">940 \\u062c\\u0645 (2.07 \\u0631\\u0637\\u0644)<\\/span><\\/span><\\/li>\\r\\n<\\/ul>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'DS-2TD1217-2/QA'),
(17, '2022-08-25 12:58:19', '2022-08-25 12:59:01', '2022-08-25 12:59:01', '{\"ar\": \"لللل\", \"en\": \"hhhh\"}', 3, 12, 25, 25, NULL, '2000.00', '2000.00', '{\"en\":\"<p>ggggg<\\/p>\",\"ar\":\"<p>ggggg<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'hhhhh'),
(18, '2022-08-25 13:04:34', '2022-08-25 13:04:44', '2022-08-25 13:04:44', '{\"ar\": \"تست\", \"en\": \"test\"}', 3, 5, 500, 5000, 'uploads/user_manual/166142547455', '500.00', '600.00', '{\"en\":\"<p>123<\\/p>\",\"ar\":\"<p>123<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, '123456789'),
(19, '2022-08-25 13:09:57', '2022-08-25 13:10:13', '2022-08-25 13:10:13', '{\"ar\": \"اللل\", \"en\": \"hgg\"}', 3, 13, 25, 25, NULL, '2000.00', '200.00', '{\"en\":\"<p>huuhhj<\\/p>\",\"ar\":\"<p>\\u0627\\u0627\\u0627\\u0627\\u0627<\\/p>\"}', NULL, NULL, NULL, NULL, NULL, NULL, 'gvvg');

-- --------------------------------------------------------

--
-- Table structure for table `item_images`
--

CREATE TABLE `item_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_images`
--

INSERT INTO `item_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `item_id`, `url`) VALUES
(1, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg'),
(2, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg'),
(3, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg'),
(4, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg'),
(5, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg'),
(6, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg'),
(7, NULL, NULL, NULL, 3, 'uploads/images/164630808458download.jpeg'),
(8, NULL, NULL, NULL, 3, 'uploads/images/164630808458download.jpeg'),
(9, '2022-08-18 13:14:06', '2022-08-22 11:50:11', NULL, 4, 'uploads/images/166116181111'),
(10, '2022-08-18 13:14:43', '2022-08-18 13:16:39', NULL, 4, 'uploads/images/166082139934'),
(11, '2022-08-18 13:16:46', '2022-08-18 13:16:46', NULL, 4, 'uploads/images/166082140622'),
(12, '2022-08-18 14:47:42', '2022-08-18 14:47:51', NULL, 4, 'uploads/images/166082687170'),
(13, '2022-08-25 13:04:34', '2022-08-25 13:04:34', NULL, 18, 'uploads/image/166142547466'),
(14, '2022-08-25 13:09:57', '2022-08-25 13:09:57', NULL, 19, 'uploads/image/166142579740'),
(15, '2022-08-25 13:48:30', '2022-08-25 13:48:30', NULL, 16, 'uploads/images/166142811073'),
(16, '2022-08-25 13:48:47', '2022-08-25 13:48:47', NULL, 15, 'uploads/images/166142812772'),
(17, '2022-08-25 13:48:49', '2022-08-25 13:48:49', NULL, 15, 'uploads/images/166142812945'),
(18, '2022-08-25 13:49:04', '2022-08-25 13:49:04', NULL, 14, 'uploads/images/166142814432'),
(19, '2022-08-25 13:49:38', '2022-08-25 13:49:38', NULL, 10, 'uploads/images/166142817830');

-- --------------------------------------------------------

--
-- Table structure for table `item_rates`
--

CREATE TABLE `item_rates` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rate` int NOT NULL,
  `comment` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_rates`
--

INSERT INTO `item_rates` (`id`, `created_at`, `updated_at`, `deleted_at`, `item_id`, `user_id`, `rate`, `comment`) VALUES
(1, '2022-06-20 08:27:06', '2022-06-20 08:27:06', NULL, 1, 2, 5, 'Very good quality'),
(2, '2022-06-20 08:27:11', '2022-06-20 08:27:11', NULL, 1, 2, 5, 'Very good quality');

-- --------------------------------------------------------

--
-- Table structure for table `item_solution`
--

CREATE TABLE `item_solution` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `solution_id` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `item_solution`
--

INSERT INTO `item_solution` (`id`, `created_at`, `updated_at`, `item_id`, `solution_id`) VALUES
(1, NULL, NULL, 12, '3'),
(2, NULL, NULL, 14, '3'),
(3, NULL, NULL, 13, '3');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_category_id` bigint UNSIGNED NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `description`, `notes`, `job_category_id`, `city_id`) VALUES
(1, NULL, '2022-08-22 12:17:53', NULL, '{\"en\":\"Graphic Designer\",\"ar\":\"\\u062c\\u0631\\u0627\\u0641\\u064a\\u0643 \\u062f\\u064a\\u0632\\u0627\\u064a\\u0646\\u0631\"}', '{\"en\":\"Hamilton Innovative, headquartered in Mount Pleasant, SC, United States was established in 2004. The company focusses on graphic & web design and marketing, they offer a number of services including online marketing, website design \\/ development, mobile website, identity branding \\/ logo design, media collateral \\/ print design and domain \\/ web hosting \\/ e-mail.\",\"ar\":\"\\u0645\\u0642\\u0627\\u0628\\u0644\\u0629 \\u0627\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u0623\\u0648 \\u0627\\u0644\\u0645\\u062f\\u064a\\u0631 \\u0627\\u0644\\u0641\\u0646\\u064a \\u0644\\u062a\\u062d\\u062f\\u064a\\u062f \\u0646\\u0637\\u0627\\u0642 \\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639.\\r\\n\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0627\\u0644\\u0645\\u0634\\u0648\\u0631\\u0629 \\u0644\\u0644\\u0639\\u0645\\u0644\\u0627\\u0621 \\u062d\\u0648\\u0644 \\u0643\\u064a\\u0641\\u064a\\u0629 \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u062c\\u0645\\u0647\\u0648\\u0631\\u0647\\u0645.\\r\\n\\u0636\\u0628\\u0637 \\u0631\\u0633\\u0627\\u0644\\u0629 \\u0627\\u0644\\u0642\\u0637\\u0639.\\r\\n\\u062a\\u0637\\u0648\\u064a\\u0631 \\u0627\\u0644\\u0635\\u0648\\u0631 \\u0623\\u0648 \\u0627\\u0644\\u0641\\u064a\\u062f\\u064a\\u0648\\u0647\\u0627\\u062a \\u0627\\u0644\\u0645\\u0642\\u0627\\u0628\\u0644\\u0629 \\u0644\\u0643\\u0644 \\u0645\\u0634\\u0631\\u0648\\u0639.\\r\\n\\u0627\\u062e\\u062a\\u064a\\u0627\\u0631 \\u0623\\u0641\\u0636\\u0644 \\u0627\\u0644\\u0623\\u0644\\u0648\\u0627\\u0646 \\u0648\\u0627\\u0644\\u062e\\u0637\\u0648\\u0637 \\u0648\\u0627\\u0644\\u062a\\u062e\\u0637\\u064a\\u0637\\u0627\\u062a.\\r\\n\\u0639\\u0631\\u0636 \\u0627\\u0644\\u0642\\u0637\\u0639 \\u0639\\u0644\\u0649 \\u0627\\u0644\\u0645\\u062e\\u0631\\u062c \\u0627\\u0644\\u0641\\u0646\\u064a.\\r\\n\\u0627\\u0644\\u062a\\u062d\\u0642\\u0642 \\u0645\\u0646 \\u0627\\u0644\\u0623\\u062c\\u0632\\u0627\\u0621 \\u0648\\u0627\\u0644\\u0642\\u064a\\u0627\\u0645 \\u0628\\u0625\\u062c\\u0631\\u0627\\u0621 \\u0627\\u0644\\u062a\\u0639\\u062f\\u064a\\u0644\\u0627\\u062a \\u0627\\u0644\\u0636\\u0631\\u0648\\u0631\\u064a\\u0629.\\r\\n\\u0625\\u0646\\u0634\\u0627\\u0621 \\u0635\\u0641\\u062d\\u0627\\u062a \\u0627\\u0644\\u0648\\u064a\\u0628.\"}', '{\"en\":\"nothing\",\"ar\":\"\\u0644\\u0627 \\u064a\\u0648\\u062c\\u062f\"}', 1, 1),
(2, '2022-08-31 15:18:38', '2022-08-31 15:18:38', NULL, '{\"en\":\"asdf\",\"ar\":\"asd\"}', '{\"ar\":null}', '{\"ar\":null}', 2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int NOT NULL,
  `degree` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` bigint UNSIGNED NOT NULL,
  `cv` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`, `age`, `degree`, `phone`, `email`, `city_id`, `cv`, `job_id`) VALUES
(1, '2022-07-04 12:29:44', '2022-08-31 18:21:57', '2022-08-31 18:21:57', 'Wael', 34, 'b degree', '0100078132', 'wael.moharram@gmail.com', 1, 'uploads/cv/165693778442', 0),
(2, '2022-07-04 16:34:34', '2022-08-31 18:22:01', '2022-08-31 18:22:01', 'hhhh', 32, 'jj', '01001051097', 'mmezzat23@gmail.com', 2, 'uploads/cv/165695247396', 0),
(3, '2022-07-04 16:34:43', '2022-08-31 18:22:06', '2022-08-31 18:22:06', 'hhhh', 32, 'jj', '01001051097', 'mmezzat23@gmail.com', 2, 'uploads/cv/165695248370', 0),
(4, '2022-07-05 13:02:40', '2022-08-31 18:22:09', '2022-08-31 18:22:09', 'Wael', 34, 'b degree', '0100078132', 'wael.moharram@gmail.com', 1, 'uploads/cv/165702616097', 1),
(5, '2022-08-31 18:21:16', '2022-08-31 18:22:13', '2022-08-31 18:22:13', 'Wael', 34, 'b degree', '0100078132', 'wael.moharram@gmail.com', 1, 'uploads/cv/166196287665eng_khaledezzat.pdf', 2),
(6, '2022-08-31 18:29:11', '2022-08-31 18:29:37', '2022-08-31 18:29:37', 'Wael', 34, 'b degree', '0100078132', 'wael.moharram@gmail.com', 1, 'uploads/cv/166196335185eng_khaledezzat.pdf', 2),
(7, '2022-09-08 17:24:34', '2022-09-08 17:24:51', '2022-09-08 17:24:51', 'Wael', 34, 'b degree', '0100078132', 'wael.moharram@gmail.com', 1, 'uploads/cv/166265067470eng_khaledezzat.pdf', 2),
(8, '2022-09-11 12:34:49', '2022-09-11 12:35:25', '2022-09-11 12:35:25', 'vvv', 32, 'gggg', '01001051097', 'mmezzat23@gmail.com', 6, 'uploads/cv/166289248994Mahmoud ezzat_ios developer.pdf', 1),
(9, '2022-09-13 11:50:14', '2022-09-13 13:29:52', '2022-09-13 13:29:52', 'ggg', 23, 'hhj', '01001051097', 'mmezzat23@gmail.com', 4, 'uploads/cv/166306261451mahmoud ezzat_ios developer.pdf', 1),
(10, '2022-09-13 13:35:24', '2022-09-13 13:35:24', NULL, 'gogo', 25, 'god', '0112589632', 'eg@gmail.com', 6, 'uploads/cv/16630689244397442e41-f003-4378-8037-632a06934beb.pdf', 1);

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--

CREATE TABLE `job_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `job_categories`
--

INSERT INTO `job_categories` (`id`, `created_at`, `updated_at`, `deleted_at`, `name`) VALUES
(1, NULL, '2022-08-22 12:08:57', NULL, '{\"en\":\"Marketing\",\"ar\":\"\\u0627\\u0644\\u062a\\u0633\\u0648\\u064a\\u0642\"}'),
(2, '2022-08-29 11:08:33', '2022-08-29 11:08:33', NULL, '{\"en\":\"Sales\",\"ar\":\"\\u0645\\u0628\\u064a\\u0639\\u0627\\u062a\"}');

-- --------------------------------------------------------

--
-- Table structure for table `ltm_translations`
--

CREATE TABLE `ltm_translations` (
  `id` bigint UNSIGNED NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `locale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `group` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `ltm_translations`
--

INSERT INTO `ltm_translations` (`id`, `status`, `locale`, `group`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 0, 'en', 'auth', 'failed', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(2, 0, 'en', 'auth', 'throttle', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(3, 0, 'en', 'auth', 'password', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(4, 0, 'en', '_json', 'Whoops! Something went wrong.', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(5, 0, 'en', '_json', 'Forgot your password? No problem. Just let us know your email address and we will email you a password reset link that will allow you to choose a new one.', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(6, 0, 'en', '_json', 'Email', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(7, 0, 'en', '_json', 'Email Password Reset Link', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(8, 0, 'en', '_json', 'Password', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(9, 0, 'en', '_json', 'Remember me', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(10, 0, 'en', '_json', 'Forgot your password?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(11, 0, 'en', '_json', 'Log in', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(12, 0, 'en', '_json', 'Name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(13, 0, 'en', '_json', 'Confirm Password', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(14, 0, 'en', '_json', 'Already registered?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(15, 0, 'en', '_json', 'Register', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(16, 0, 'en', '_json', 'This is a secure area of the application. Please confirm your password before continuing.', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(17, 0, 'en', '_json', 'Confirm', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(18, 0, 'en', '_json', 'Reset Password', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(19, 0, 'en', '_json', 'A new verification link has been sent to the email address you provided during registration.', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(20, 0, 'en', '_json', 'Resend Verification Email', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(21, 0, 'en', '_json', 'Log Out', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(22, 0, 'en', '_json', 'Dashboard', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(23, 0, 'en', '_json', 'Edit profile', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(24, 0, 'en', '_json', 'Full name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(25, 0, 'en', '_json', 'Confirm password', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(26, 0, 'en', '_json', 'Title', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(27, 0, 'en', '_json', 'Description', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(28, 0, 'en', '_json', 'Usage', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(29, 0, 'en', '_json', 'City', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(30, 0, 'en', '_json', 'Show', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(31, 0, 'en', '_json', '#', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(32, 0, 'en', '_json', 'Client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(33, 0, 'en', '_json', 'Total price', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(34, 0, 'en', '_json', 'Status', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(35, 0, 'en', '_json', 'Payment method', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(36, 0, 'en', '_json', 'Options', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(37, 0, 'en', '_json', 'Show order', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(38, 0, 'en', '_json', 'Order ID', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(39, 0, 'en', '_json', 'Order Date', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(40, 0, 'en', '_json', 'User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(41, 0, 'en', '_json', 'Information', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(42, 0, 'en', '_json', 'User Name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(43, 0, 'en', '_json', 'User Email', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(44, 0, 'en', '_json', 'User Phone', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(45, 0, 'en', '_json', 'Payment Type', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(46, 0, 'en', '_json', 'Payment Method', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(47, 0, 'en', '_json', 'Order Content', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(48, 0, 'en', '_json', 'Items', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(49, 0, 'en', '_json', 'Quantity', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(50, 0, 'en', '_json', 'Price', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(51, 0, 'en', '_json', 'Total', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(52, 0, 'en', '_json', 'shipping', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(53, 0, 'en', '_json', 'Vat', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(54, 0, 'en', '_json', 'Coupon', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(55, 0, 'en', '_json', 'Address ', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(56, 0, 'en', '_json', 'Map location', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(57, 0, 'en', '_json', 'Orders', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(58, 0, 'en', '_json', 'Add new slider', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(59, 0, 'en', '_json', 'Edit Client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(60, 0, 'en', '_json', 'Mobile', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(61, 0, 'en', '_json', 'Active', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(62, 0, 'en', '_json', 'Suspend', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(63, 0, 'en', '_json', 'All', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(64, 0, 'en', '_json', 'Image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(65, 0, 'en', '_json', 'Type', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(66, 0, 'en', '_json', 'Individual', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(67, 0, 'en', '_json', 'Company', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(68, 0, 'en', '_json', 'Select type', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(69, 0, 'en', '_json', 'ID Image - Commercial record image\n', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(70, 0, 'en', '_json', 'Select city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(71, 0, 'en', '_json', 'Edit', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(72, 0, 'en', '_json', 'Delete', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(73, 0, 'en', '_json', 'Points', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(74, 0, 'en', '_json', 'Restore', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(75, 0, 'en', '_json', 'Show Client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(76, 0, 'en', '_json', 'Archived Client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(77, 0, 'en', '_json', 'Filter', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(78, 0, 'en', '_json', 'Reset filter', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(79, 0, 'en', '_json', 'Add new client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(80, 0, 'en', '_json', 'Create Client', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(81, 0, 'en', '_json', 'Edit sub-category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(82, 0, 'en', '_json', 'Slider image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(83, 0, 'en', '_json', 'Category name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(84, 0, 'en', '_json', 'Category name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(85, 0, 'en', '_json', 'Edit category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(86, 0, 'en', '_json', 'Delete category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(87, 0, 'en', '_json', 'Name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(88, 0, 'en', '_json', 'Name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(89, 0, 'en', '_json', 'Show sub category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(90, 0, 'en', '_json', 'Sub Categories', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(91, 0, 'en', '_json', 'Add new sub category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(92, 0, 'en', '_json', 'Create sub category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(93, 0, 'en', '_json', 'Edit Option', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(94, 0, 'en', '_json', 'Edit option', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(95, 0, 'en', '_json', 'Key', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(96, 0, 'en', '_json', 'Value', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(97, 0, 'en', '_json', 'Edit brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(98, 0, 'en', '_json', 'Brand image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(99, 0, 'en', '_json', 'Brand name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(100, 0, 'en', '_json', 'Brand name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(101, 0, 'en', '_json', 'Delete brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(102, 0, 'en', '_json', 'Show brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(103, 0, 'en', '_json', 'Brands', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(104, 0, 'en', '_json', 'Add new brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(105, 0, 'en', '_json', 'Create brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(106, 0, 'en', '_json', 'Chat', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(107, 0, 'en', '_json', 'Type your message or use speech to text', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(108, 0, 'en', '_json', 'Send', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(109, 0, 'en', '_json', 'Edit governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(110, 0, 'en', '_json', 'Delete boundaries', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(111, 0, 'en', '_json', 'Governorate name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(112, 0, 'en', '_json', 'Governorate name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(113, 0, 'en', '_json', 'Delete governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(114, 0, 'en', '_json', 'Show governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(115, 0, 'en', '_json', 'Governorates', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(116, 0, 'en', '_json', 'Add new governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(117, 0, 'en', '_json', 'Create governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(118, 0, 'en', '_json', 'Edit city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(119, 0, 'en', '_json', 'City name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(120, 0, 'en', '_json', 'City name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(121, 0, 'en', '_json', 'Governorate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(122, 0, 'en', '_json', 'Delete city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(123, 0, 'en', '_json', 'Show city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(124, 0, 'en', '_json', 'Cities', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(125, 0, 'en', '_json', 'Add new city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(126, 0, 'en', '_json', 'Create city', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(127, 0, 'en', '_json', 'Sub categories of ', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(128, 0, 'en', '_json', 'Show category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(129, 0, 'en', '_json', 'Categories', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(130, 0, 'en', '_json', 'Add new category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(131, 0, 'en', '_json', 'Create category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(132, 0, 'en', '_json', 'Reason', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(133, 0, 'en', '_json', 'First name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(134, 0, 'en', '_json', 'Close', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(135, 0, 'en', '_json', 'Re open ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(136, 0, 'en', '_json', 'Re open', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(137, 0, 'en', '_json', 'Are you sure you want to re open task ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(138, 0, 'en', '_json', 'Finish ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(139, 0, 'en', '_json', 'Finish', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(140, 0, 'en', '_json', 'Are you sure you want to finish task ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(141, 0, 'en', '_json', 'Are you sure ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(142, 0, 'en', '_json', 'Make payment', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(143, 0, 'en', '_json', 'Are you sure you want to MAke the payment ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(144, 0, 'en', '_json', 'Make the payment', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(145, 0, 'en', '_json', 'Delete User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(146, 0, 'en', '_json', 'Are you sure you want to delete record ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(147, 0, 'en', '_json', 'Save', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(148, 0, 'en', '_json', 'Reset', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(149, 0, 'en', '_json', 'Rate task', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(150, 0, 'en', '_json', 'Rate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(151, 0, 'en', '_json', 'Select employee', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(152, 0, 'en', '_json', 'Assign', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(153, 0, 'en', '_json', 'Restore User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(154, 0, 'en', '_json', 'Are you sure you want to restore record ?', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(155, 0, 'en', '_json', 'Profile', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(156, 0, 'en', '_json', 'Switch theme', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(157, 0, 'en', '_json', 'Log out', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(158, 0, 'en', '_json', 'Home', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(159, 0, 'en', '_json', 'Users', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(160, 0, 'en', '_json', 'Clients', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(161, 0, 'en', '_json', 'Providers', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(162, 0, 'en', '_json', 'Promo codes', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(163, 0, 'en', '_json', 'Sliders', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(164, 0, 'en', '_json', 'Contact', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(165, 0, 'en', '_json', 'Send Notifications', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(166, 0, 'en', '_json', 'System options', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(167, 0, 'en', '_json', 'Edit Vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(168, 0, 'en', '_json', 'Driving license Image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(169, 0, 'en', '_json', 'Working license Image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(170, 0, 'en', '_json', 'Disapprove', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(171, 0, 'en', '_json', 'Approve', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(172, 0, 'en', '_json', 'Show Vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(173, 0, 'en', '_json', 'Archived Vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(174, 0, 'en', '_json', 'Vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(175, 0, 'en', '_json', 'Add new vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(176, 0, 'en', '_json', 'Create Vendor', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(177, 0, 'en', '_json', 'Edit pages', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(178, 0, 'en', '_json', 'Content in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(179, 0, 'en', '_json', 'Content in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(180, 0, 'en', '_json', 'Edit Page', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(181, 0, 'en', '_json', 'Pages', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(182, 0, 'en', '_json', 'Create page', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(183, 0, 'en', '_json', 'Edit sliders', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(184, 0, 'en', '_json', 'Delete sliders', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(185, 0, 'en', '_json', 'Create slider', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(186, 0, 'en', '_json', 'Show offer', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(187, 0, 'en', '_json', 'Provider', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(188, 0, 'en', '_json', 'Offers', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(189, 0, 'en', '_json', 'Message', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(190, 0, 'en', '_json', 'Delete contact', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(191, 0, 'en', '_json', 'Show contacts', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(192, 0, 'en', '_json', 'Contacts sections', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(193, 0, 'en', '_json', 'Edit User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(194, 0, 'en', '_json', 'Middle name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(195, 0, 'en', '_json', 'Last name', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(196, 0, 'en', '_json', 'National ID', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(197, 0, 'en', '_json', 'National ID Image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(198, 0, 'en', '_json', 'Birthdate', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(199, 0, 'en', '_json', 'Nationality', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(200, 0, 'en', '_json', 'Select nationality', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(201, 0, 'en', '_json', 'Car brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(202, 0, 'en', '_json', 'Car model', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(203, 0, 'en', '_json', 'Car year', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(204, 0, 'en', '_json', 'Car plate number', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(205, 0, 'en', '_json', 'Car license image', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(206, 0, 'en', '_json', 'Bank', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(207, 0, 'en', '_json', 'Bank account owner', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(208, 0, 'en', '_json', 'Bank IBAN', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(209, 0, 'en', '_json', 'Bank account number', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(210, 0, 'en', '_json', 'Show User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(211, 0, 'en', '_json', 'Archived User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(212, 0, 'en', '_json', 'Add new user', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(213, 0, 'en', '_json', 'Create User', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(214, 0, 'en', '_json', 'Edit item', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(215, 0, 'en', '_json', 'Item name in English', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(216, 0, 'en', '_json', 'Item name in Arabic', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(217, 0, 'en', '_json', 'Old price - if exist', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(218, 0, 'en', '_json', 'Brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(219, 0, 'en', '_json', 'Select brand', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(220, 0, 'en', '_json', 'Category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(221, 0, 'en', '_json', 'Select category', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(222, 0, 'en', '_json', 'Point to gain - when buy the item ', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(223, 0, 'en', '_json', 'Point to get - get by client points', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(224, 0, 'en', '_json', 'User manual', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(225, 0, 'en', '_json', 'Details', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(226, 0, 'en', '_json', 'Compare section ', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(227, 0, 'en', '_json', 'Image resolution', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(228, 0, 'en', '_json', 'Lens resolution', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(229, 0, 'en', '_json', 'Movement', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(230, 0, 'en', '_json', 'Night capturing', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(231, 0, 'en', '_json', 'Recording mode', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(232, 0, 'en', '_json', 'Internal storage', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(233, 0, 'en', '_json', 'Delete item', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(234, 0, 'en', '_json', 'Show item', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(235, 0, 'en', '_json', 'Add new item', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(236, 0, 'en', '_json', 'Create item', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(237, 0, 'en', '_json', 'Search task by date', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(238, 0, 'en', '_json', 'From date', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(239, 0, 'en', '_json', 'To date', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(240, 0, 'en', '_json', 'Select User ', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(241, 0, 'en', '_json', 'Search', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(242, 0, 'en', '_json', 'Statistics', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(243, 0, 'en', '_json', 'Clients count', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(244, 0, 'en', '_json', 'Providers count', NULL, '2022-08-02 20:14:50', '2022-08-02 20:14:50'),
(245, 0, 'en', '_json', 'Orders count', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(246, 0, 'en', '_json', 'Items count', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(247, 0, 'en', '_json', 'Categories count', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(248, 0, 'en', '_json', 'Edit Provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(249, 0, 'en', '_json', 'ID Image', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(250, 0, 'en', '_json', 'Bank name', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(251, 0, 'en', '_json', 'Has transportation services ?', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(252, 0, 'en', '_json', 'Yes', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(253, 0, 'en', '_json', 'No', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(254, 0, 'en', '_json', 'Has Rent services ?', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(255, 0, 'en', '_json', 'Has Sell services ?', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(256, 0, 'en', '_json', 'Company name', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(257, 0, 'en', '_json', 'Company tax number', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(258, 0, 'en', '_json', 'Company commercial record number', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(259, 0, 'en', '_json', 'Show Provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(260, 0, 'en', '_json', 'Archived Provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(261, 0, 'en', '_json', 'Add new provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(262, 0, 'en', '_json', 'Create Provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(263, 0, 'en', '_json', 'Edit role', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(264, 0, 'en', '_json', 'Delete role', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(265, 0, 'en', '_json', 'Add new role', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(266, 0, 'en', '_json', 'Create role', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(267, 0, 'en', '_json', 'Edit promocode', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(268, 0, 'en', '_json', 'Code', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(269, 0, 'en', '_json', 'Percent', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(270, 0, 'en', '_json', 'Number to use', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(271, 0, 'en', '_json', '%', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(272, 0, 'en', '_json', 'Delete promocode', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(273, 0, 'en', '_json', 'Number of use', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(274, 0, 'en', '_json', 'Used', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(275, 0, 'en', '_json', 'Remaining', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(276, 0, 'en', '_json', 'Show promocode', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(277, 0, 'en', '_json', 'Promocodes', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(278, 0, 'en', '_json', 'Add new promocode', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(279, 0, 'en', '_json', 'Create promocode', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(280, 0, 'en', '_json', 'Edit equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(281, 0, 'en', '_json', 'Equipment name in English', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(282, 0, 'en', '_json', 'Equipment name in Arabic', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(283, 0, 'en', '_json', 'Delete equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(284, 0, 'en', '_json', 'Show equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(285, 0, 'en', '_json', 'Equipments', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(286, 0, 'en', '_json', 'Add new equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(287, 0, 'en', '_json', 'Create equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(288, 0, 'en', '_json', 'created at', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(289, 0, 'en', '_json', 'notifications', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(290, 0, 'en', '_json', 'Add new notification', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(291, 0, 'en', '_json', 'Create notification', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(292, 0, 'en', '_json', 'ID image', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(293, 0, 'en', '_json', 'Account number', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(294, 0, 'en', '_json', 'IBAN', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(295, 0, 'en', '_json', 'Transportation services', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(296, 0, 'en', '_json', 'Rent services', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(297, 0, 'en', '_json', 'Sell services', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(298, 0, 'en', '_json', 'Driving license image', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(299, 0, 'en', '_json', 'Working license image', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(300, 0, 'en', '_json', 'numbers of use', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(301, 0, 'en', '_json', 'Item', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(302, 0, 'en', '_json', 'Comment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(303, 0, 'en', '_json', 'Equipment', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(304, 0, 'en', '_json', 'Note', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(305, 0, 'en', '_json', 'Latitude', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(306, 0, 'en', '_json', 'Longitude', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(307, 0, 'en', '_json', 'Event list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(308, 0, 'en', '_json', 'Show  event', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(309, 0, 'en', '_json', 'Can not apply for same event twice', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(310, 0, 'en', '_json', 'Reservation done', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(311, 0, 'en', '_json', 'report loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(312, 0, 'en', '_json', 'Room list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(313, 0, 'en', '_json', 'Show  room', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(314, 0, 'en', '_json', 'Jobs loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(315, 0, 'en', '_json', 'Job loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(316, 0, 'en', '_json', 'Can not apply for same job twice', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(317, 0, 'en', '_json', 'Sent successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(318, 0, 'en', '_json', 'page loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(319, 0, 'en', '_json', 'Settings loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(320, 0, 'en', '_json', ' loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(321, 0, 'en', '_json', 'results', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(322, 0, 'en', '_json', 'Addresses loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(323, 0, 'en', '_json', 'Created successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(324, 0, 'en', '_json', 'Edited successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(325, 0, 'en', '_json', 'Address deleted', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(326, 0, 'en', '_json', 'Brands loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(327, 0, 'en', '_json', 'Nationalities loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(328, 0, 'en', '_json', 'Items list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(329, 0, 'en', '_json', 'Show item rates', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(330, 0, 'en', '_json', 'Item change favourite status successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(331, 0, 'en', '_json', 'Favourites', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(332, 0, 'en', '_json', 'Item rated successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(333, 0, 'en', '_json', 'Order rated successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(334, 0, 'en', '_json', 'Governorates loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(335, 0, 'en', '_json', 'Cities loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(336, 0, 'en', '_json', 'Orders loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(337, 0, 'en', '_json', 'Order created successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(338, 0, 'en', '_json', 'You are not this order provider', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(339, 0, 'en', '_json', 'Order not new', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(340, 0, 'en', '_json', 'Not authorized', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(341, 0, 'en', '_json', 'Order accepted successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(342, 0, 'en', '_json', 'Not your order', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(343, 0, 'en', '_json', 'Order not prices', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(344, 0, 'en', '_json', 'Order paid successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(345, 0, 'en', '_json', 'Invoice url', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(346, 0, 'en', '_json', 'Order already calcelled', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(347, 0, 'en', '_json', 'Can not cancel finished order', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(348, 0, 'en', '_json', 'Order cancelled', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(349, 0, 'en', '_json', 'Order must be working to finish it', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(350, 0, 'en', '_json', 'Order finished', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(351, 0, 'en', '_json', 'Check SMS code', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(352, 0, 'en', '_json', 'Order not found', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(353, 0, 'en', '_json', 'The code is not valid.', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(354, 0, 'en', '_json', 'Confirmed Order', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(355, 0, 'en', '_json', 'Order rated', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(356, 0, 'en', '_json', 'Order details', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(357, 0, 'en', '_json', 'No item to compare', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(358, 0, 'en', '_json', 'Items loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(359, 0, 'en', '_json', 'Main categories loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(360, 0, 'en', '_json', 'Sub categories loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(361, 0, 'en', '_json', 'Stores loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(362, 0, 'en', '_json', 'errors', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(363, 0, 'en', '_json', 'Store created successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(364, 0, 'en', '_json', 'Store Not found', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(365, 0, 'en', '_json', 'Store updated successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(366, 0, 'en', '_json', 'Offers loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(367, 0, 'en', '_json', 'Offer created successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(368, 0, 'en', '_json', 'Offer Edited successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(369, 0, 'en', '_json', 'Offer Deleted successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(370, 0, 'en', '_json', 'Offer change favourite status successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(371, 0, 'en', '_json', 'Comment created successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(372, 0, 'en', '_json', 'Offer switched successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(373, 0, 'en', '_json', 'Offer not found', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(374, 0, 'en', '_json', 'Offer rated', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(375, 0, 'en', '_json', 'User information', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(376, 0, 'en', '_json', 'Check your mobile', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(377, 0, 'en', '_json', 'Profile updated', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(378, 0, 'en', '_json', 'Your password incorrect.', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(379, 0, 'en', '_json', 'User Deleted successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(380, 0, 'en', '_json', 'You have new active orders need action.', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(381, 0, 'en', '_json', 'User Availability updated successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(382, 0, 'en', '_json', 'Please check lat lng.', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(383, 0, 'en', '_json', 'No city', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(384, 0, 'en', '_json', 'City id', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(385, 0, 'en', '_json', 'Loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(386, 0, 'en', '_json', 'Training list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(387, 0, 'en', '_json', 'Show  training', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(388, 0, 'en', '_json', 'Can not apply for same training twice', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(389, 0, 'en', '_json', 'Chat list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(390, 0, 'en', '_json', 'Messages list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(391, 0, 'en', '_json', 'Send successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(392, 0, 'en', '_json', 'Message sent', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(393, 0, 'en', '_json', 'Your account need to verify mobile', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(394, 0, 'en', '_json', 'Please check you information', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(395, 0, 'en', '_json', 'Created', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(396, 0, 'en', '_json', 'User not found', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(397, 0, 'en', '_json', 'Confirmation code is :CODE', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(398, 0, 'en', '_json', 'Logged out successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(399, 0, 'en', '_json', 'Show speed training', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(400, 0, 'en', '_json', 'Solution list', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(401, 0, 'en', '_json', 'Show  solution', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(402, 0, 'en', '_json', 'Cart', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(403, 0, 'en', '_json', 'Cart DEtails', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(404, 0, 'en', '_json', 'Item added to cart', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(405, 0, 'en', '_json', 'Cart updated successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(406, 0, 'en', '_json', 'Item deleted from cart', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(407, 0, 'en', '_json', 'Order created Successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(408, 0, 'en', '_json', 'Notification loaded', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(409, 0, 'en', '_json', 'All notification deleted', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(410, 0, 'en', '_json', 'Notification deleted', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(411, 0, 'en', '_json', 'Device token is required', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(412, 0, 'en', '_json', 'Token updated', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(413, 0, 'en', '_json', 'Notification has been changed', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(414, 0, 'en', '_json', 'Added successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(415, 0, 'en', '_json', 'Deleted successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(416, 0, 'en', '_json', 'Can not delete yourself', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(417, 0, 'en', '_json', 'Status changed successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(418, 0, 'en', '_json', 'Changed successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(419, 0, 'en', '_json', 'Restored successfully', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(420, 0, 'en', '_json', 'SMS Sent Successfully.', NULL, '2022-08-02 20:14:51', '2022-08-02 20:14:51'),
(421, 0, 'en', '_json', 'Edit training reservation', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(422, 0, 'en', '_json', 'Training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(423, 0, 'en', '_json', 'New', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(424, 0, 'en', '_json', 'Cancelled', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(425, 0, 'en', '_json', 'Cancel reason - if exist', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(426, 0, 'en', '_json', 'Edit training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(427, 0, 'en', '_json', 'Delete training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(428, 0, 'en', '_json', 'Show training reservation', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(429, 0, 'en', '_json', 'Training reservations', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(430, 0, 'en', '_json', 'Change status', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(431, 0, 'en', '_json', 'Edit solution image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(432, 0, 'en', '_json', 'imsge', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(433, 0, 'en', '_json', 'Video', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(434, 0, 'en', '_json', 'Edit solution-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(435, 0, 'en', '_json', 'Delete solution-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(436, 0, 'en', '_json', 'solution', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(437, 0, 'en', '_json', 'Show solution', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(438, 0, 'en', '_json', 'Images', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(439, 0, 'en', '_json', 'Add new image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(440, 0, 'en', '_json', 'Create solution image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(441, 0, 'en', '_json', 'Edit room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(442, 0, 'en', '_json', 'Content', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(443, 0, 'en', '_json', 'Delete room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(444, 0, 'en', '_json', 'Room image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(445, 0, 'en', '_json', 'Show room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(446, 0, 'en', '_json', 'Rooms', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(447, 0, 'en', '_json', 'Add new room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(448, 0, 'en', '_json', 'Create room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(449, 0, 'en', '_json', 'Edit job category', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(450, 0, 'en', '_json', 'Show job category', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(451, 0, 'en', '_json', 'Job categories', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(452, 0, 'en', '_json', 'Add new job category', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(453, 0, 'en', '_json', 'Create job category', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(454, 0, 'en', '_json', 'Edit speed training reservation', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(455, 0, 'en', '_json', 'Show speed training reservation', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(456, 0, 'en', '_json', 'Speed Training reservations', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(457, 0, 'en', '_json', 'Date', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(458, 0, 'en', '_json', 'Location', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(459, 0, 'en', '_json', 'Training image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(460, 0, 'en', '_json', 'Show training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(461, 0, 'en', '_json', 'Trainings', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(462, 0, 'en', '_json', 'Add new training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(463, 0, 'en', '_json', 'Create training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(464, 0, 'en', '_json', 'Edit training image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(465, 0, 'en', '_json', 'Edit training-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(466, 0, 'en', '_json', 'Delete training-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(467, 0, 'en', '_json', 'training', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(468, 0, 'en', '_json', 'Create training image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(469, 0, 'en', '_json', 'Shipping', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(470, 0, 'en', '_json', 'Cancel', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(471, 0, 'en', '_json', 'Confirm order', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(472, 0, 'en', '_json', 'delivery', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(473, 0, 'en', '_json', 'Services', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(474, 0, 'en', '_json', 'Events', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(475, 0, 'en', '_json', 'Event reservations', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(476, 0, 'en', '_json', 'Jobs', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(477, 0, 'en', '_json', 'Room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(478, 0, 'en', '_json', 'Solutions', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(479, 0, 'en', '_json', 'training reservations', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(480, 0, 'en', '_json', 'Speed Trainings', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(481, 0, 'en', '_json', 'Speed training reservations', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(482, 0, 'en', '_json', 'Edit event image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(483, 0, 'en', '_json', 'Edit event-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(484, 0, 'en', '_json', 'Delete event-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(485, 0, 'en', '_json', 'event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(486, 0, 'en', '_json', 'Show event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(487, 0, 'en', '_json', 'Create event image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(488, 0, 'en', '_json', 'Edit event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(489, 0, 'en', '_json', 'Delete event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(490, 0, 'en', '_json', 'Event image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(491, 0, 'en', '_json', 'Add new event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(492, 0, 'en', '_json', 'Create event', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(493, 0, 'en', '_json', 'Edit room image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(494, 0, 'en', '_json', 'Edit room-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(495, 0, 'en', '_json', 'Delete room-image', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(496, 0, 'en', '_json', 'room', NULL, '2022-08-21 16:18:17', '2022-08-21 16:18:17'),
(497, 0, 'en', '_json', 'Create room image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(498, 0, 'en', '_json', 'Edit speed training', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(499, 0, 'en', '_json', 'Add new speed training', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(500, 0, 'en', '_json', 'Sub category', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(501, 0, 'en', '_json', 'Select sub category', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(502, 0, 'en', '_json', 'Edit job', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(503, 0, 'en', '_json', 'job title in English', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(504, 0, 'en', '_json', 'job title in Arabic', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(505, 0, 'en', '_json', 'job description in English', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(506, 0, 'en', '_json', 'job description in Arabic', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(507, 0, 'en', '_json', 'job notes in English', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(508, 0, 'en', '_json', 'job notes in Arabic', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(509, 0, 'en', '_json', 'Delete job', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(510, 0, 'en', '_json', 'Show job', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(511, 0, 'en', '_json', 'jobs', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(512, 0, 'en', '_json', 'Add new job', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(513, 0, 'en', '_json', 'Create job', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(514, 0, 'en', '_json', 'Edit solution', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(515, 0, 'en', '_json', 'Delete solution', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(516, 0, 'en', '_json', 'Solution image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(517, 0, 'en', '_json', 'Add new solution', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(518, 0, 'en', '_json', 'Create solution', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(519, 0, 'en', '_json', 'Edit item image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(520, 0, 'en', '_json', 'Edit item-image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(521, 0, 'en', '_json', 'Delete item-image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(522, 0, 'en', '_json', 'item', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(523, 0, 'en', '_json', 'Create item image', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(524, 0, 'en', '_json', 'Edit event reservation', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(525, 0, 'en', '_json', 'Event', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(526, 0, 'en', '_json', 'Show event reservation', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(527, 0, 'en', '_json', 'Order confirmed successfully', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(528, 0, 'en', '_json', 'Order shipping successfully', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(529, 0, 'en', '_json', 'Order delivered successfully', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(530, 0, 'en', '_json', 'Order cancelled successfully', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18'),
(531, 0, 'en', '_json', 'Order finished successfully', NULL, '2022-08-21 16:18:18', '2022-08-21 16:18:18');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_04_02_193005_create_translations_table', 1),
(2, '2014_10_12_000000_create_users_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2017_03_03_100000_create_options_table', 1),
(5, '2019_08_19_000000_create_failed_jobs_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2021_05_08_000001_create_categories_table', 1),
(10, '2021_05_08_000003_create_brands_table', 1),
(11, '2021_10_21_091937_create_cities_table', 1),
(12, '2021_10_21_091937_create_nationalities_table', 1),
(13, '2021_10_21_091937_create_pages_table', 1),
(14, '2021_10_24_103504_create_banks_table', 1),
(15, '2021_10_31_111738_create_orders_table', 1),
(16, '2021_11_01_123823_create_order_logs_table', 1),
(17, '2021_11_02_001732_create_contact_us_table', 1),
(18, '2021_11_09_001732_create_sliders_table', 1),
(19, '2021_11_10_164536_create_user_devices_token_table', 1),
(20, '2021_12_01_000000_create_user_changes_table', 1),
(21, '2022_03_02_144550_create_permission_tables', 1),
(22, '2022_04_13_121331_add_sms_code_to_users_table', 2),
(23, '2022_04_17_093958_add_api_token_to_users_table', 2),
(24, '2022_06_08_093958_add_data_to_cities_table', 3),
(25, '2022_06_16_090118_create_addresses_table', 4),
(26, '2022_06_16_105836_add_image_to_brands_table', 5),
(27, '2022_06_19_135639_create_items_table', 6),
(28, '2022_06_20_061721_create_item_images_table', 7),
(29, '2022_05_18_062219_create_favourites_table', 8),
(30, '2022_06_20_081301_create_item_rates_table', 9),
(31, '2022_06_20_094021_create_speed_trainings_table', 10),
(32, '2022_06_20_094022_create_speed_training_images_table', 10),
(33, '2022_06_20_103905_create_speed_training_reservations_table', 10),
(34, '2022_06_20_094021_create_trainings_table', 11),
(35, '2022_06_20_094022_create_training_images_table', 11),
(36, '2022_06_20_103905_create_training_reservations_table', 11),
(37, '2022_06_20_094021_create_events_table', 12),
(38, '2022_06_20_103905_create_event_reservations_table', 12),
(39, '2022_06_20_094022_create_event_images_table', 13),
(40, '2022_06_20_114021_create_rooms_table', 14),
(41, '2022_06_20_114022_create_room_images_table', 14),
(42, '2022_06_20_124021_create_solutions_table', 15),
(43, '2022_06_20_124022_create_solution_images_table', 15),
(44, '2022_06_23_125245_add_type_to_sliders', 16),
(45, '2022_06_23_131142_add_details_to_items_table', 17),
(46, '2022_06_27_101256_create_carts_table', 17),
(47, '2022_06_29_021613_add_points_to_users_table', 18),
(48, '2022_06_29_084903_create_orders_table', 19),
(49, '2022_06_29_093622_create_order_details_table', 19),
(50, '2022_06_29_113505_add_inputs_to_items_table', 19),
(51, '2022_07_04_090044_create_job_categories_table', 20),
(52, '2022_07_04_090045_create_jobs_table', 20),
(53, '2022_07_04_091323_create_job_applications_table', 20),
(54, '2022_07_05_091712_create_activity_log_table', 21),
(55, '2022_07_05_091713_add_event_column_to_activity_log_table', 21),
(56, '2022_07_05_091714_add_batch_uuid_column_to_activity_log_table', 21),
(57, '2022_07_05_125611_add_job_id_to_job_applications_table', 21),
(58, '2022_07_05_133528_add_type_to_training_images_table', 22),
(59, '2022_07_05_133546_add_type_to_speed_training_images_table', 22),
(60, '2022_07_05_133600_add_type_to_event_images_table', 22),
(61, '2022_07_05_133931_add_type_to_solution_images_table', 22),
(62, '2022_07_05_173347_add_company_inputs_to_users_table', 23),
(63, '2022_07_06_065307_add_social_login_inputs_to_users_table', 24),
(64, '2022_07_06_075406_create_promocodes_table', 24),
(65, '2022_07_06_101219_add_inputs_to_orders_table', 25),
(66, '2022_07_07_134109_create_faqs_table', 26),
(67, '2022_03_17_104947_create_chat_channels_table', 27),
(68, '2022_03_17_105829_create_chat_messages_table', 27),
(69, '2022_07_18_082132_create_rates_table', 28),
(70, '2022_07_18_093543_add_comment_to_rates_table', 28),
(71, '2022_07_20_095333_add_image_to_users_table', 29),
(72, '2021_11_10_142044_create_notifications_table', 30),
(73, '2022_07_20_111412_add_new_mobile_to_users_table', 31),
(74, '2022_07_25_131928_add_data_to_notifications_table', 32),
(75, '2022_08_23_132942_add_part_number_to_items_table', 33),
(76, '2022_08_31_120031_add_date_to_to_trainings_table', 34),
(77, '2022_08_31_153414_add_item_id_to_solutions_table', 35),
(78, '2022_10_31_093136_add_tax_image_to_users_table', 36),
(79, '2022_10_31_140822_add_target_to_sliders_table', 37),
(80, '2022_11_13_000001_create_item_solution_table', 38);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nationalities`
--

CREATE TABLE `nationalities` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `notifiable_id` bigint UNSIGNED DEFAULT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `click_action` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'FLUTTER_NOTIFICATION_CLICK'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `notifiable_type`, `notifiable_id`, `data`, `read_at`, `created_at`, `updated_at`, `order_id`, `title`, `click_action`) VALUES
(1, 'notification', 'App\\Models\\User', 2, '\"Test notification\"', NULL, '2022-08-01 02:57:16', NULL, NULL, 'Title', 'FLUTTER_NOTIFICATION_CLICK'),
(2, 'notification', 'App\\Models\\User', 5, '\"Test notification 1\"', NULL, '2022-08-01 00:00:00', NULL, NULL, 'Title', 'FLUTTER_NOTIFICATION_CLICK'),
(3, 'notification', 'App\\Models\\User', 5, '\"Test notification 2\"', NULL, '2022-01-10 02:57:38', NULL, NULL, 'Title', 'FLUTTER_NOTIFICATION_CLICK'),
(4, 'notification', 'App\\Models\\User', 5, '\"Test notification 3\"', NULL, '2022-01-10 00:00:00', NULL, NULL, 'Title', 'FLUTTER_NOTIFICATION_CLICK'),
(5, 'notification', 'App\\Models\\User', 5, '\"Test notification 4\"', NULL, '2022-01-01 02:58:14', NULL, NULL, 'Title', 'FLUTTER_NOTIFICATION_CLICK'),
(6, 'notification', NULL, NULL, '\"message test dashboard\"', NULL, '2022-08-01 01:07:19', '2022-08-01 01:07:19', NULL, 'title test dashboard', 'FLUTTER_NOTIFICATION_CLICK'),
(7, 'notification', NULL, NULL, '\"body\"', NULL, '2022-08-02 09:18:32', '2022-08-02 09:18:32', NULL, 'title', 'FLUTTER_NOTIFICATION_CLICK'),
(8, 'notification', NULL, NULL, '\"ddc\"', NULL, '2022-08-02 09:24:29', '2022-08-02 09:24:29', NULL, 'dcd', 'FLUTTER_NOTIFICATION_CLICK'),
(9, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(10, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(11, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(12, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(13, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(14, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(15, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(16, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(17, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(18, 'notification', 'App\\Models\\User', NULL, '\"test test\"', NULL, '2022-08-14 13:39:20', '2022-08-14 13:39:20', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(19, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:17', '2022-08-22 12:33:17', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(20, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:17', '2022-08-22 12:33:17', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(21, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:17', '2022-08-22 12:33:17', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(22, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:17', '2022-08-22 12:33:17', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(23, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:17', '2022-08-22 12:33:17', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(24, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:18', '2022-08-22 12:33:18', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(25, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:18', '2022-08-22 12:33:18', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(26, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:18', '2022-08-22 12:33:18', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(27, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:18', '2022-08-22 12:33:18', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(28, 'notification', 'App\\Models\\User', NULL, '\"test test 33\"', NULL, '2022-08-22 12:33:18', '2022-08-22 12:33:18', NULL, 'test test', 'FLUTTER_NOTIFICATION_CLICK'),
(29, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(30, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(31, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(32, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(33, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(34, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(35, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(36, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(37, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(38, 'notification', 'App\\Models\\User', NULL, '\"jjjjjk\"', NULL, '2022-08-22 16:37:30', '2022-08-22 16:37:30', NULL, 'hhhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(39, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(40, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(41, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(42, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(43, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(44, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(45, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:20', '2022-09-05 15:01:20', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(46, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:21', '2022-09-05 15:01:21', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(47, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:21', '2022-09-05 15:01:21', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(48, 'notification', 'App\\Models\\User', NULL, '\"ghghhg\"', NULL, '2022-09-05 15:01:21', '2022-09-05 15:01:21', NULL, 'gyhgh', 'FLUTTER_NOTIFICATION_CLICK'),
(49, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(50, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(51, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(52, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(53, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(54, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(55, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(56, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(57, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(58, 'notification', 'App\\Models\\User', NULL, '\"not\"', NULL, '2022-09-06 16:42:01', '2022-09-06 16:42:01', NULL, 'notification', 'FLUTTER_NOTIFICATION_CLICK'),
(59, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(60, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(61, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(62, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(63, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(64, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(65, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(66, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(67, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(68, 'notification', 'App\\Models\\User', NULL, '\"kjjkkj\"', NULL, '2022-09-06 16:42:32', '2022-09-06 16:42:32', NULL, 'hhjhj', 'FLUTTER_NOTIFICATION_CLICK'),
(69, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(70, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(71, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(72, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(73, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(74, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(75, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(76, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(77, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(78, 'notification', 'App\\Models\\User', NULL, '\"jjjh\"', NULL, '2022-09-06 17:30:41', '2022-09-06 17:30:41', NULL, 'hhjjhjh', 'FLUTTER_NOTIFICATION_CLICK'),
(79, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(80, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(81, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(82, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(83, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(84, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(85, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(86, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(87, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(88, 'notification', 'App\\Models\\User', NULL, '\"hbnbnbn\"', NULL, '2022-09-06 17:33:02', '2022-09-06 17:33:02', NULL, 'hhhj', 'FLUTTER_NOTIFICATION_CLICK'),
(89, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(90, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(91, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(92, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(93, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(94, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(95, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(96, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(97, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(98, 'notification', 'App\\Models\\User', NULL, '\"test for all\"', NULL, '2022-09-07 11:14:05', '2022-09-07 11:14:05', NULL, 'test for all', 'FLUTTER_NOTIFICATION_CLICK'),
(99, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(100, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(101, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(102, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(103, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(104, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(105, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(106, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(107, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(108, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:50:04', '2022-09-07 13:50:04', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(109, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(110, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(111, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(112, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(113, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(114, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(115, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(116, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(117, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(118, 'notification', 'App\\Models\\User', NULL, '\"nnmmn\"', NULL, '2022-09-07 13:50:52', '2022-09-07 13:50:52', NULL, 'jjkj', 'FLUTTER_NOTIFICATION_CLICK'),
(119, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(120, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(121, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(122, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(123, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(124, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(125, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(126, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(127, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(128, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:09', '2022-09-07 13:54:09', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(129, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:43', '2022-09-07 13:54:43', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(130, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(131, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(132, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(133, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(134, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(135, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(136, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(137, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(138, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:54:44', '2022-09-07 13:54:44', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(139, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(140, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(141, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(142, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(143, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(144, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(145, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(146, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(147, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(148, 'notification', 'App\\Models\\User', NULL, '\"test\"', NULL, '2022-09-07 13:56:19', '2022-09-07 13:56:19', NULL, 'test', 'FLUTTER_NOTIFICATION_CLICK'),
(149, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(150, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(151, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(152, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(153, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(154, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(155, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(156, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(157, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(158, 'notification', 'App\\Models\\User', NULL, '\"gbbb\"', NULL, '2022-09-07 13:59:17', '2022-09-07 13:59:17', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(159, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(160, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(161, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(162, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(163, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(164, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(165, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(166, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(167, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(168, 'notification', 'App\\Models\\User', NULL, '\"bbbbbb\"', NULL, '2022-09-07 14:00:19', '2022-09-07 14:00:19', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(169, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(170, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(171, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(172, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(173, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(174, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(175, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(176, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(177, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(178, 'notification', 'App\\Models\\User', NULL, '\"vvv\"', NULL, '2022-09-07 14:00:58', '2022-09-07 14:00:58', NULL, 'hhhbhh', 'FLUTTER_NOTIFICATION_CLICK'),
(179, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(180, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(181, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(182, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(183, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(184, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(185, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(186, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(187, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(188, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(189, 'notification', 'App\\Models\\User', NULL, '\"hhhh\"', NULL, '2022-09-13 13:39:05', '2022-09-13 13:39:05', NULL, 'hhh', 'FLUTTER_NOTIFICATION_CLICK'),
(190, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(191, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(192, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(193, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(194, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(195, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(196, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(197, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(198, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(199, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(200, 'notification', 'App\\Models\\User', NULL, '\"ghggh\"', NULL, '2022-09-13 13:41:27', '2022-09-13 13:41:27', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(201, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(202, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(203, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(204, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(205, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(206, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(207, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(208, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(209, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(210, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK'),
(211, 'notification', 'App\\Models\\User', NULL, '\"ghghgh\"', NULL, '2022-09-13 13:45:31', '2022-09-13 13:45:31', NULL, 'ggg', 'FLUTTER_NOTIFICATION_CLICK');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `key`, `value`) VALUES
(1, 'vat', '\"10\"'),
(2, 'foacebook_url', '\"https://www.facebook.com/speedfortrading/?ref=pages_you_manage\"'),
(4, 'twitter_url', '\"https://twitter.com/SPEED4_TRADING\"'),
(5, 'linkedin_url', '\"https://www.linkedin.com/company/18994795/admin/\"'),
(6, 'youtube_url', '\"https://www.youtube.com/channel/UCSw96UMqRsjwWp70S3EfVzw\"'),
(7, 'phone', '\"16454\"');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `provider_id` bigint UNSIGNED DEFAULT NULL,
  `address_id` bigint UNSIGNED NOT NULL,
  `vat` decimal(15,2) NOT NULL DEFAULT '0.00',
  `coupon_id` bigint UNSIGNED DEFAULT NULL,
  `discount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `shipping` decimal(8,2) NOT NULL DEFAULT '0.00',
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `confirmed_at` datetime DEFAULT NULL,
  `shipping_at` datetime DEFAULT NULL,
  `delivered_at` datetime DEFAULT NULL,
  `cancelled_at` datetime DEFAULT NULL,
  `payment_method` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'cash',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `created_at`, `updated_at`, `deleted_at`, `user_id`, `provider_id`, `address_id`, `vat`, `coupon_id`, `discount`, `shipping`, `price`, `confirmed_at`, `shipping_at`, `delivered_at`, `cancelled_at`, `payment_method`, `name`, `mobile`, `payment_status`) VALUES
(1, '2022-06-29 14:04:21', '2022-07-07 13:57:52', NULL, 5, 1, 1, '1.50', NULL, '2.00', '2.00', '11.50', NULL, NULL, NULL, '2022-07-07 13:57:52', 'cash', '', '', 0),
(2, '2022-06-29 14:04:21', NULL, NULL, 5, 1, 1, '1.50', NULL, '2.00', '2.00', '11.50', '2022-06-29 14:06:14', NULL, NULL, NULL, 'cash', '', '', 0),
(3, '2022-06-29 14:04:21', NULL, NULL, 5, 1, 1, '1.50', NULL, '2.00', '2.00', '11.50', '2022-06-29 14:06:14', '2022-06-29 14:06:27', NULL, NULL, 'cash', '', '', 0),
(4, '2022-06-29 14:04:21', NULL, NULL, 2, 1, 1, '1.50', NULL, '2.00', '2.00', '11.50', '2022-06-29 14:06:14', '2022-06-29 14:06:27', '2022-06-29 14:06:48', NULL, 'cash', '', '', 1),
(5, '2022-06-29 14:04:21', NULL, NULL, 5, 1, 1, '1.50', NULL, '2.00', '2.00', '11.50', '2022-06-29 14:06:14', '2022-06-29 14:06:27', '2022-06-29 14:06:48', '2022-06-29 14:07:00', 'cash', '', '', 0),
(6, '2022-07-06 11:14:50', '2022-08-06 05:25:58', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', '2022-08-06 05:22:10', '2022-08-06 05:23:52', '2022-08-06 05:25:58', NULL, 'cash', 'Wael', '01000788132', 1),
(7, '2022-07-06 11:14:58', '2022-07-06 11:14:58', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(8, '2022-07-06 11:15:26', '2022-07-06 11:15:26', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(9, '2022-07-06 11:16:57', '2022-07-06 11:16:57', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(10, '2022-07-06 11:17:02', '2022-07-06 11:17:02', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(11, '2022-07-06 11:17:49', '2022-07-06 11:17:49', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(12, '2022-07-06 11:17:52', '2022-07-06 11:17:52', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(13, '2022-07-06 11:19:03', '2022-07-06 11:19:03', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(14, '2022-07-06 11:19:37', '2022-07-06 11:19:37', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(15, '2022-07-06 11:19:40', '2022-07-06 11:19:40', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(16, '2022-07-06 11:19:43', '2022-07-06 11:19:43', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(17, '2022-07-06 11:19:46', '2022-07-06 11:19:46', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(18, '2022-07-06 11:19:55', '2022-07-06 11:19:55', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(19, '2022-07-06 11:20:40', '2022-07-06 11:20:40', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(20, '2022-07-06 11:20:44', '2022-07-06 11:20:44', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(21, '2022-07-06 11:20:47', '2022-07-06 11:20:47', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(22, '2022-07-06 11:20:50', '2022-07-06 11:20:50', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(23, '2022-07-06 11:21:22', '2022-07-06 11:21:22', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(24, '2022-07-06 11:25:22', '2022-07-06 11:25:22', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', '2022-07-18 14:07:25', NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(25, '2022-07-06 11:25:37', '2022-07-06 11:25:37', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(26, '2022-07-06 11:25:40', '2022-07-06 11:25:40', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(27, '2022-07-06 11:27:12', '2022-07-06 11:27:12', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(28, '2022-07-06 11:29:21', '2022-07-06 11:29:21', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(29, '2022-07-06 11:30:51', '2022-07-06 11:30:51', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(30, '2022-07-06 11:33:39', '2022-07-06 11:33:39', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(31, '2022-07-06 11:37:41', '2022-07-06 11:37:41', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(32, '2022-07-06 11:40:23', '2022-07-06 11:40:23', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(33, '2022-07-06 11:44:26', '2022-07-06 11:44:26', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(34, '2022-07-06 11:44:45', '2022-07-06 11:44:45', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(35, '2022-07-06 11:51:22', '2022-07-06 11:51:22', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(36, '2022-07-06 12:07:53', '2022-07-06 12:07:53', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(37, '2022-07-06 12:08:44', '2022-07-06 12:08:44', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(38, '2022-07-06 13:03:43', '2022-07-06 13:03:43', NULL, 5, NULL, 1, '1.50', 1, '1.00', '2.00', '10.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(39, '2022-07-06 13:21:58', '2022-07-07 14:41:22', NULL, 5, NULL, 9, '540.00', NULL, '0.00', '2.00', '3600.00', NULL, NULL, NULL, '2022-07-07 14:41:22', 'cash', 'mahmoud ezzat', '01001051097', 1),
(40, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 5, NULL, 9, '540.00', NULL, '0.00', '2.00', '3600.00', NULL, NULL, NULL, NULL, 'online', 'mahmoud ezzat', '01001051097', 0),
(41, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 5, NULL, 9, '540.00', NULL, '0.00', '2.00', '3600.00', NULL, NULL, NULL, NULL, 'online', 'mahmoud ezzat', '01001051097', 0),
(42, '2022-07-06 13:41:45', '2022-07-07 14:37:11', NULL, 5, NULL, 9, '540.00', NULL, '0.00', '2.00', '3600.00', NULL, NULL, NULL, '2022-07-07 14:37:11', 'online', 'mahmoud ezzat', '01001051097', 1),
(43, '2022-07-18 09:40:33', '2022-07-18 09:40:33', NULL, 5, NULL, 2, '75.00', NULL, '0.00', '2.00', '500.00', NULL, NULL, NULL, NULL, 'cash', 'mahmoud ezzat', '01001051097', 1),
(44, '2022-07-18 10:27:53', '2022-07-18 10:27:53', NULL, 5, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(45, '2022-07-18 10:29:07', '2022-07-18 10:29:07', NULL, 5, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(46, '2022-07-18 10:29:10', '2022-07-18 10:29:10', NULL, 5, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(47, '2022-07-18 10:29:29', '2022-07-18 10:29:29', NULL, 5, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'cash', 'Wael', '01000788132', 1),
(48, '2022-07-18 10:52:20', '2022-08-22 11:48:44', NULL, 5, NULL, 2, '75.00', NULL, '0.00', '2.00', '500.00', '2022-08-22 11:48:40', '2022-08-22 11:48:44', NULL, NULL, 'cash', 'mahmoud ezzat', '01001051097', 1),
(49, '2022-07-18 11:26:34', '2022-08-14 12:24:31', NULL, 5, NULL, 2, '75.00', NULL, '0.00', '2.00', '500.00', '2022-08-14 12:24:28', '2022-08-14 12:24:31', NULL, NULL, 'cash', 'mahmoud ezzat', '01001051097', 1),
(50, '2022-09-05 15:16:40', '2022-09-05 15:16:40', NULL, 15, NULL, 15, '252256250.00', NULL, '0.00', '2.00', '1000.00', NULL, NULL, NULL, NULL, 'online', 'mahmoud ezzat', '01001051097', 0),
(51, '2022-09-05 15:19:53', '2022-09-05 15:19:53', NULL, 15, NULL, 15, '60.00', NULL, '0.00', '2.00', '600.00', NULL, NULL, NULL, NULL, 'cash', 'mahmoud ezzat', '01001051097', 1),
(52, '2022-09-05 15:27:05', '2022-09-05 15:27:05', NULL, 2, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(53, '2022-09-05 15:28:19', '2022-09-05 15:28:19', NULL, 2, NULL, 1, '0.00', 1, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'online', 'Wael', '01000788132', 0),
(54, '2022-09-05 15:43:05', '2022-09-05 15:43:05', NULL, 15, NULL, 15, '140.00', NULL, '0.00', '2.00', '1400.00', NULL, NULL, NULL, NULL, 'cash', 'mahmoud ezzat', '01001051097', 1),
(55, '2022-09-08 14:55:13', '2022-09-11 15:15:26', NULL, 21, NULL, 14, '3450.00', NULL, '0.00', '2.00', '34500.00', '2022-09-11 14:19:14', '2022-09-11 15:15:26', NULL, NULL, 'online', 'Eman Amin', '01005030166', 0),
(56, '2022-09-08 14:55:35', '2022-09-11 15:15:25', NULL, 21, NULL, 14, '0.00', NULL, '0.00', '2.00', '0.00', '2022-09-11 14:19:12', '2022-09-11 15:15:25', NULL, NULL, 'cash', 'Eman Amin', '01005030166', 1),
(57, '2022-09-08 14:56:43', '2022-09-11 15:15:28', NULL, 21, NULL, 14, '60.00', NULL, '0.00', '2.00', '600.00', '2022-09-11 14:19:08', '2022-09-11 15:15:28', NULL, NULL, 'cash', 'Eman Amin', '01005030166', 1),
(58, '2022-09-08 15:52:28', '2022-09-08 15:52:28', NULL, 27, NULL, 17, '300.00', NULL, '0.00', '2.00', '3000.00', NULL, NULL, NULL, NULL, 'cash', 'essam', '010008793', 1),
(59, '2022-09-11 13:20:18', '2022-09-13 13:27:15', NULL, 21, NULL, 18, '450.00', NULL, '0.00', '2.00', '4500.00', '2022-09-11 14:19:15', '2022-09-11 15:15:23', '2022-09-13 13:27:15', NULL, 'cash', 'Eman Amin', '01005030166', 1),
(60, '2022-09-13 11:42:12', '2022-09-13 13:27:14', NULL, 21, NULL, 14, '1000.00', NULL, '0.00', '2.00', '10000.00', '2022-09-13 13:26:29', '2022-09-13 13:26:52', '2022-09-13 13:27:14', NULL, 'online', 'Eman Amin', '01005030166', 0),
(61, '2022-09-13 11:42:12', '2022-09-13 13:27:13', NULL, 21, NULL, 14, '0.00', NULL, '0.00', '2.00', '0.00', '2022-09-13 13:26:27', '2022-09-13 13:26:43', '2022-09-13 13:27:13', NULL, 'online', 'Eman Amin', '01005030166', 0),
(62, '2022-09-13 11:42:13', '2022-09-13 13:27:10', NULL, 21, NULL, 14, '0.00', NULL, '0.00', '2.00', '0.00', '2022-09-13 13:26:26', '2022-09-13 13:26:43', '2022-09-13 13:27:10', NULL, 'online', 'Eman Amin', '01005030166', 0),
(63, '2022-09-13 11:42:13', '2022-09-13 13:27:09', NULL, 21, NULL, 14, '0.00', NULL, '0.00', '2.00', '0.00', '2022-09-13 13:26:25', '2022-09-13 13:26:42', '2022-09-13 13:27:09', NULL, 'online', 'Eman Amin', '01005030166', 0),
(64, '2022-09-13 15:02:58', '2022-09-13 15:02:58', NULL, 21, NULL, 14, '1500.00', NULL, '0.00', '2.00', '15000.00', NULL, NULL, NULL, NULL, 'online', 'Eman Amin', '01005030166', 0),
(65, '2022-09-13 15:03:09', '2022-09-13 15:03:09', NULL, 21, NULL, 14, '0.00', NULL, '0.00', '2.00', '0.00', NULL, NULL, NULL, NULL, 'cash', 'Eman Amin', '01005030166', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT '0.00',
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `created_at`, `updated_at`, `deleted_at`, `order_id`, `item_id`, `price`, `quantity`) VALUES
(1, '2022-06-29 14:05:17', NULL, NULL, 1, 1, '10.00', 1),
(2, '2022-06-29 14:05:17', NULL, NULL, 2, 1, '10.00', 1),
(3, '2022-06-29 14:05:17', NULL, NULL, 3, 1, '10.00', 1),
(4, '2022-06-29 14:05:17', NULL, NULL, 4, 1, '10.00', 1),
(5, '2022-06-29 14:05:17', NULL, NULL, 5, 1, '10.00', 1),
(6, '2022-07-06 11:14:50', '2022-07-06 11:14:50', NULL, 6, 1, '10.00', 1),
(7, '2022-07-06 11:14:58', '2022-07-06 11:14:58', NULL, 7, 1, '10.00', 1),
(8, '2022-07-06 11:15:26', '2022-07-06 11:15:26', NULL, 8, 1, '10.00', 1),
(9, '2022-07-06 11:16:57', '2022-07-06 11:16:57', NULL, 9, 1, '10.00', 1),
(10, '2022-07-06 11:17:03', '2022-07-06 11:17:03', NULL, 10, 1, '10.00', 1),
(11, '2022-07-06 11:17:49', '2022-07-06 11:17:49', NULL, 11, 1, '10.00', 1),
(12, '2022-07-06 11:17:52', '2022-07-06 11:17:52', NULL, 12, 1, '10.00', 1),
(13, '2022-07-06 11:19:04', '2022-07-06 11:19:04', NULL, 13, 1, '10.00', 1),
(14, '2022-07-06 11:19:37', '2022-07-06 11:19:37', NULL, 14, 1, '10.00', 1),
(15, '2022-07-06 11:19:40', '2022-07-06 11:19:40', NULL, 15, 1, '10.00', 1),
(16, '2022-07-06 11:19:43', '2022-07-06 11:19:43', NULL, 16, 1, '10.00', 1),
(17, '2022-07-06 11:19:46', '2022-07-06 11:19:46', NULL, 17, 1, '10.00', 1),
(18, '2022-07-06 11:19:55', '2022-07-06 11:19:55', NULL, 18, 1, '10.00', 1),
(19, '2022-07-06 11:20:40', '2022-07-06 11:20:40', NULL, 19, 1, '10.00', 1),
(20, '2022-07-06 11:20:44', '2022-07-06 11:20:44', NULL, 20, 1, '10.00', 1),
(21, '2022-07-06 11:20:47', '2022-07-06 11:20:47', NULL, 21, 1, '10.00', 1),
(22, '2022-07-06 11:20:50', '2022-07-06 11:20:50', NULL, 22, 1, '10.00', 1),
(23, '2022-07-06 11:21:22', '2022-07-06 11:21:22', NULL, 23, 1, '10.00', 1),
(24, '2022-07-06 11:25:22', '2022-07-06 11:25:22', NULL, 24, 1, '10.00', 1),
(25, '2022-07-06 11:25:37', '2022-07-06 11:25:37', NULL, 25, 1, '10.00', 1),
(26, '2022-07-06 11:25:40', '2022-07-06 11:25:40', NULL, 26, 1, '10.00', 1),
(27, '2022-07-06 11:27:12', '2022-07-06 11:27:12', NULL, 27, 1, '10.00', 1),
(28, '2022-07-06 11:29:21', '2022-07-06 11:29:21', NULL, 28, 1, '10.00', 1),
(29, '2022-07-06 11:30:51', '2022-07-06 11:30:51', NULL, 29, 1, '10.00', 1),
(30, '2022-07-06 11:33:39', '2022-07-06 11:33:39', NULL, 30, 1, '10.00', 1),
(31, '2022-07-06 11:37:41', '2022-07-06 11:37:41', NULL, 31, 1, '10.00', 1),
(32, '2022-07-06 11:40:23', '2022-07-06 11:40:23', NULL, 32, 1, '10.00', 1),
(33, '2022-07-06 11:44:26', '2022-07-06 11:44:26', NULL, 33, 1, '10.00', 1),
(34, '2022-07-06 11:44:45', '2022-07-06 11:44:45', NULL, 34, 1, '10.00', 1),
(35, '2022-07-06 11:51:22', '2022-07-06 11:51:22', NULL, 35, 1, '10.00', 1),
(36, '2022-07-06 12:07:53', '2022-07-06 12:07:53', NULL, 36, 1, '10.00', 1),
(37, '2022-07-06 12:08:44', '2022-07-06 12:08:44', NULL, 37, 1, '10.00', 1),
(38, '2022-07-06 13:03:43', '2022-07-06 13:03:43', NULL, 38, 1, '10.00', 1),
(39, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 3, '500.00', 3),
(40, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 3, '500.00', 1),
(41, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 2, '100.00', 1),
(42, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 3, '500.00', 1),
(43, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 3, '500.00', 1),
(44, '2022-07-06 13:21:58', '2022-07-06 13:21:58', NULL, 39, 3, '500.00', 1),
(45, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 3, '500.00', 3),
(46, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 3, '500.00', 1),
(47, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 2, '100.00', 1),
(48, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 3, '500.00', 1),
(49, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 3, '500.00', 1),
(50, '2022-07-06 13:35:59', '2022-07-06 13:35:59', NULL, 40, 3, '500.00', 1),
(51, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 3, '500.00', 3),
(52, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 3, '500.00', 1),
(53, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 2, '100.00', 1),
(54, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 3, '500.00', 1),
(55, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 3, '500.00', 1),
(56, '2022-07-06 13:38:48', '2022-07-06 13:38:48', NULL, 41, 3, '500.00', 1),
(57, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 3, '500.00', 3),
(58, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 3, '500.00', 1),
(59, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 2, '100.00', 1),
(60, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 3, '500.00', 1),
(61, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 3, '500.00', 1),
(62, '2022-07-06 13:41:45', '2022-07-06 13:41:45', NULL, 42, 3, '500.00', 1),
(63, '2022-07-18 09:40:33', '2022-07-18 09:40:33', NULL, 43, 3, '500.00', 1),
(64, '2022-07-18 10:52:20', '2022-07-18 10:52:20', NULL, 48, 3, '500.00', 1),
(65, '2022-07-18 11:26:34', '2022-07-18 11:26:34', NULL, 49, 3, '500.00', 1),
(66, '2022-09-05 15:16:40', '2022-09-05 15:16:40', NULL, 50, 16, '200.00', 5),
(67, '2022-09-05 15:19:53', '2022-09-05 15:19:53', NULL, 51, 16, '200.00', 3),
(68, '2022-09-05 15:43:05', '2022-09-05 15:43:05', NULL, 54, 16, '200.00', 2),
(69, '2022-09-05 15:43:05', '2022-09-05 15:43:05', NULL, 54, 15, '500.00', 2),
(70, '2022-09-08 14:55:13', '2022-09-08 14:55:13', NULL, 55, 5, '10000.00', 3),
(71, '2022-09-08 14:55:13', '2022-09-08 14:55:13', NULL, 55, 10, '1500.00', 3),
(72, '2022-09-08 14:56:43', '2022-09-08 14:56:43', NULL, 57, 16, '200.00', 3),
(73, '2022-09-08 15:52:28', '2022-09-08 15:52:28', NULL, 58, 10, '1500.00', 2),
(74, '2022-09-11 13:20:18', '2022-09-11 13:20:18', NULL, 59, 10, '1500.00', 3),
(75, '2022-09-13 11:42:12', '2022-09-13 11:42:12', NULL, 60, 5, '10000.00', 1),
(76, '2022-09-13 15:02:58', '2022-09-13 15:02:58', NULL, 64, 13, '3000.00', 3),
(77, '2022-09-13 15:02:58', '2022-09-13 15:02:58', NULL, 64, 10, '1500.00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `order_logs`
--

CREATE TABLE `order_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `log` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_logs`
--

INSERT INTO `order_logs` (`id`, `created_at`, `updated_at`, `order_id`, `user_id`, `log`) VALUES
(1, '2022-07-07 13:55:53', '2022-07-07 13:55:53', 1, 2, 'user cancel order'),
(2, '2022-07-07 13:55:56', '2022-07-07 13:55:56', 1, 2, 'user cancel order'),
(3, '2022-07-07 13:56:33', '2022-07-07 13:56:33', 1, 2, 'user cancel order'),
(4, '2022-07-07 13:57:48', '2022-07-07 13:57:48', 1, 2, 'user cancel order'),
(5, '2022-07-07 13:57:52', '2022-07-07 13:57:52', 1, 2, 'user cancel order'),
(6, '2022-07-07 14:37:11', '2022-07-07 14:37:11', 42, 4, 'user cancel order'),
(7, '2022-07-07 14:41:22', '2022-07-07 14:41:22', 39, 4, 'user cancel order');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `created_at`, `updated_at`, `title`, `content`) VALUES
(1, NULL, '2022-08-29 12:06:43', 'about us', '{\"en\":\"<p><strong>Speed \\u200b\\u200bSecurity Systems Trading is one of the first leading companies in the field of security surveillance in Egypt and the Arab world. The company provides all possible solutions for security and surveillance systems, starting from the possibility of providing surveillance cameras with all capabilities that serve all sectors Businesses, homes, companies and national projects<\\/strong><\\/p>\\r\\n\\r\\n<p><strong><span style=\\\"color:#c0392b\\\">The following is a simplified presentation of some of the services that the company provides to its clients:-<\\/span><\\/strong><\\/p>\\r\\n\\r\\n<p><strong>1- Agent of Hikvision International and Ezviz <\\/strong><\\/p>\\r\\n\\r\\n<p><strong>2- Surveillance Cameras <\\/strong><\\/p>\\r\\n\\r\\n<p><strong>3- Time Attendance<\\/strong><\\/p>\\r\\n\\r\\n<p><strong>4- Security Systems <\\/strong><\\/p>\\r\\n\\r\\n<p><strong>5- All integrated solutions for all security systems<\\/strong><\\/p>\",\"ar\":\"<p dir=\\\"rtl\\\"><strong>\\u062a\\u0639\\u062a\\u0628\\u0631 \\u0634\\u0631\\u0643\\u0629 \\u0633\\u0640\\u0640\\u0640\\u0628\\u064a\\u062f \\u0644\\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0645\\u0646\\u064a\\u0629 \\u0645\\u0646 \\u0627\\u0648\\u0644\\u064a \\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0627\\u0644\\u0631\\u0627\\u0626\\u062f\\u0629 \\u0641\\u064a \\u0645\\u062c\\u0627\\u0644 \\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0646\\u064a\\u0629 \\u0641\\u064a \\u0645\\u0635\\u0631 \\u0648\\u0627\\u0644\\u0639\\u0627\\u0644\\u0645 \\u0627\\u0644\\u0639\\u0631\\u0628\\u064a \\u0648\\u062a\\u0642\\u0648\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629&nbsp;\\u0628\\u062a\\u0642\\u062f\\u064a\\u0645 \\u0643\\u0627\\u0641\\u0629 \\u0627\\u0644\\u062d\\u0644\\u0648\\u0644 \\u0627\\u0644\\u0645\\u0645\\u0643\\u0646\\u0629 \\u0627\\u0644\\u062e\\u0627\\u0635\\u0629 \\u0628\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0645\\u0646 \\u0648\\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 \\u0628\\u062f\\u0627\\u064b \\u0645\\u0646 \\u0627\\u0645\\u0643\\u0627\\u0646\\u064a\\u0629 \\u062a\\u0648\\u0641\\u064a\\u0631 \\u0643\\u0627\\u0645\\u064a\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 \\u0628\\u0643\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0643\\u0627\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u062e\\u062f\\u0645 \\u0643\\u0627\\u0641\\u0629 \\u0642\\u0637\\u0627\\u0639\\u0627\\u062a<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>\\u0627\\u0644\\u0627\\u0639\\u0645\\u0627\\u0644 \\u0648\\u0627\\u0644\\u0645\\u0646\\u0627\\u0632\\u0644 \\u0648\\u0627\\u0644\\u0634\\u0631\\u0643\\u0627\\u062a \\u0648\\u0627\\u0644\\u0645\\u0634\\u0631\\u0648\\u0639\\u0627\\u062a \\u0627\\u0644\\u0642\\u0648\\u0645\\u064a\\u0629<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><span style=\\\"color:#c0392b\\\"><strong>\\u0648\\u0641\\u064a\\u0645\\u0627 \\u064a\\u0644\\u064a \\u0639\\u0631\\u0636 \\u0645\\u0628\\u0633\\u0637 \\u0644\\u0628\\u0639\\u0636 \\u0627\\u0644\\u062e\\u062f\\u0645\\u0627\\u062a \\u0627\\u0644\\u062a\\u064a \\u062a\\u0642\\u0648\\u0645 \\u0627\\u0644\\u0634\\u0631\\u0643\\u0629 \\u0628\\u062a\\u0642\\u062f\\u064a\\u0645\\u0647\\u0627 \\u0644\\u0639\\u0645\\u0644\\u0627\\u0626\\u0647\\u0627:-<\\/strong><\\/span><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>1-\\u0648\\u0643\\u064a\\u0644 \\u0634\\u0631\\u0643\\u0629 Hikvision \\u0627\\u0644\\u0639\\u0627\\u0644\\u0645\\u064a\\u0629 \\u0648\\u0634\\u0631\\u0643\\u0629 Ezviz<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>2-\\u0643\\u0627\\u0645\\u064a\\u0631\\u0627\\u062a \\u0627\\u0644\\u0645\\u0631\\u0627\\u0642\\u0628\\u0629 Surveillance Cameras<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>3-\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u062d\\u0636\\u0648\\u0631 \\u0648\\u0627\\u0644\\u0627\\u0646\\u0635\\u0631\\u0627\\u0641 Time Attendance<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>4-\\u0627\\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0623\\u0645\\u0646\\u064a\\u0629 Security Systems<\\/strong><\\/p>\\r\\n\\r\\n<p dir=\\\"rtl\\\"><strong>5-\\u0643\\u0627\\u0641\\u0629 \\u0627\\u0644\\u062d\\u0644\\u0648\\u0644 \\u0627\\u0644\\u0645\\u062a\\u0643\\u0627\\u0645\\u0644\\u0629 \\u0644\\u0643\\u0627\\u0641\\u0629 \\u0627\\u0644\\u0627\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0646\\u064a\\u0629<\\/strong><\\/p>\"}'),
(2, NULL, NULL, 'terms', '{\"en\":\"Terms section\",\"ar\":\"\\u0645\\u0635\\u0631\\u0649\"}'),
(3, NULL, NULL, 'policy', '{\"en\":\"Policy section\",\"ar\":\"\\u0645\\u0635\\u0631\\u0649\"}'),
(4, NULL, NULL, 'faq', '{\"en\":\"FAQ Section\",\"ar\":\"\\u0645\\u0635\\u0631\\u0649\"}');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@email.com', '$2y$10$.onXqI0tlzrbuCLnDB0LsO0yd8bIqxe6BYudnZq/8KqFsWa3Tpawe', '2022-09-08 10:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(18, 'App\\Models\\User', 3, 'Mobile:token', '924c49bd4341e184d2584dc91aab36b39964af995a1b046727cfbbd9026686c1', '[\"*\"]', '2022-08-31 21:57:58', '2022-06-12 17:27:23', '2022-08-31 21:57:58'),
(36, 'App\\Models\\User', 6, 'Mobile:token', '8223c1a154446da60a5f246571eb466f257b0e865c61470e2f97950fbcc61784', '[\"*\"]', NULL, '2022-07-04 14:10:55', '2022-07-04 14:10:55'),
(37, 'App\\Models\\User', 7, 'Mobile:token', '47985c32e52e12c7a8faddf2e350f9934ae7eedfa9b3843e2ebc728b08e595d9', '[\"*\"]', NULL, '2022-07-04 14:13:55', '2022-07-04 14:13:55'),
(38, 'App\\Models\\User', 8, 'Mobile:token', 'bc7685175657618e11a963531dbaa02769796b0116eaf75d7677e05a277ba27e', '[\"*\"]', NULL, '2022-07-04 14:15:29', '2022-07-04 14:15:29'),
(39, 'App\\Models\\User', 9, 'Mobile:token', 'cfc55f47931dcfcb993f6cf18b90cd42616de69581e5d8d5a6b514505ecada4f', '[\"*\"]', NULL, '2022-07-04 14:26:28', '2022-07-04 14:26:28'),
(40, 'App\\Models\\User', 13, 'Mobile:token', 'a05c8c6bb3a79bcb183bafd4b117122f469bccaa29ac705cde0393b1b3ed87fc', '[\"*\"]', NULL, '2022-07-06 12:56:15', '2022-07-06 12:56:15'),
(48, 'App\\Models\\User', 14, 'Mobile:token', '570ea4a6d6dfb566805470acb2bff8699d2d3090fc5fdc5c60de8f163c537f4d', '[\"*\"]', '2022-07-07 14:31:07', '2022-07-07 13:48:31', '2022-07-07 14:31:07'),
(50, 'App\\Models\\User', 4, 'Mobile:token', 'abffd146a1df54ccc89dbe3ca6ba5a0bd21248da6637e3e1c6fe5f346464646f', '[\"*\"]', '2022-07-07 15:36:32', '2022-07-07 15:33:56', '2022-07-07 15:36:32'),
(88, 'App\\Models\\User', 22, 'Mobile:token', 'f9a37a28bc478ccc8da4499373db049dadca994cd25659c93027ed2e5bb22e7f', '[\"*\"]', '2022-08-22 15:30:30', '2022-08-14 13:28:31', '2022-08-22 15:30:30'),
(96, 'App\\Models\\User', 5, 'Mobile:token', 'f5da99bf41ba1c3155ad5f2d37726f49c039de395e8fa40781819eafd1f8eca3', '[\"*\"]', '2022-08-25 12:34:21', '2022-08-22 16:36:21', '2022-08-25 12:34:21'),
(119, 'App\\Models\\User', 2, 'Mobile:token', '9d817fa369ec55dcdc59c71d1dfe6e6384ec988a60e98f99eab9443e9b3e4373', '[\"*\"]', '2022-09-05 15:28:19', '2022-09-05 15:27:02', '2022-09-05 15:28:19'),
(133, 'App\\Models\\User', 27, 'Mobile:token', 'a9ac75d058fa72302c58b0198b7e04fe5c3cb043fbdd642e2e196c83ed3e8d88', '[\"*\"]', '2022-09-15 16:13:22', '2022-09-08 15:50:34', '2022-09-15 16:13:22'),
(146, 'App\\Models\\User', 29, 'Mobile:token', '13f9e779b30c75af795468fae9404e1a6bdb939caaa747bff47373703b76bdd2', '[\"*\"]', '2022-10-17 11:10:18', '2022-09-13 14:35:27', '2022-10-17 11:10:18'),
(147, 'App\\Models\\User', 15, 'Mobile:token', 'cf2d01c72c6caec7f235e44de6a8cd1588907b8a80fb952d7cd930d1563641f9', '[\"*\"]', '2022-09-14 14:30:53', '2022-09-13 15:07:57', '2022-09-14 14:30:53'),
(149, 'App\\Models\\User', 21, 'Mobile:token', 'a321e97fad3068ebdfa125336133f60b3b9340b207f2516952c240b256003117', '[\"*\"]', '2022-10-12 22:17:35', '2022-09-14 15:19:37', '2022-10-12 22:17:35');

-- --------------------------------------------------------

--
-- Table structure for table `promocodes`
--

CREATE TABLE `promocodes` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `percent` decimal(8,2) NOT NULL,
  `from_date` date DEFAULT NULL,
  `to_date` date DEFAULT NULL,
  `to_use` int DEFAULT NULL,
  `used` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promocodes`
--

INSERT INTO `promocodes` (`id`, `created_at`, `updated_at`, `deleted_at`, `code`, `percent`, `from_date`, `to_date`, `to_use`, `used`) VALUES
(1, NULL, '2022-09-05 15:28:19', NULL, 'testcode', '10.00', '2021-02-01', '2023-06-21', 50, 2),
(2, '2022-08-23 14:54:44', '2022-08-23 14:54:44', NULL, 'speed258', '20.00', '2022-08-23', '2022-08-27', 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rates`
--

CREATE TABLE `rates` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `rate` int NOT NULL,
  `comment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rates`
--

INSERT INTO `rates` (`id`, `created_at`, `updated_at`, `item_id`, `order_id`, `user_id`, `rate`, `comment`) VALUES
(1, '2022-07-18 12:05:59', '2022-07-18 12:05:59', 1, 1, 2, 5, 'Very good quality'),
(2, '2022-07-18 12:06:02', '2022-07-18 12:06:02', 1, 1, 2, 5, 'Very good quality'),
(3, '2022-07-24 09:14:04', '2022-07-24 09:14:04', 1, 5, 5, 5, 'good'),
(4, '2022-07-25 08:55:42', '2022-07-25 08:55:42', 1, 4, 2, 5, 'Very good quality'),
(5, '2022-07-25 08:56:04', '2022-07-25 08:56:04', 1, 4, 2, 1, 'Very good quality'),
(6, '2022-07-25 08:56:06', '2022-07-25 08:56:06', 1, 4, 2, 1, 'Very good quality'),
(7, '2022-07-25 09:06:52', '2022-07-25 09:06:52', 1, 4, 2, 1, 'Very good quality'),
(8, '2022-07-25 09:06:53', '2022-07-25 09:06:53', 1, 4, 2, 1, 'Very good quality');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rooms`
--

CREATE TABLE `rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rooms`
--

INSERT INTO `rooms` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`) VALUES
(1, NULL, '2022-08-23 14:22:51', '2022-08-23 14:22:51', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى'),
(2, NULL, '2022-08-23 14:22:55', '2022-08-23 14:22:55', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوىتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى'),
(3, '2022-08-23 14:41:52', '2022-08-23 14:41:52', NULL, '{\"en\":\"hhh\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}', '{\"en\":\"hhj\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}'),
(4, '2022-08-29 11:56:44', '2022-08-29 11:56:44', NULL, '{\"en\":\"work shop\",\"ar\":\"\\u0648\\u0631\\u0643 \\u0634\\u0648\\u0628\"}', '{\"en\":\"work shop\",\"ar\":\"\\u0634\\u063a\\u0644\"}');

-- --------------------------------------------------------

--
-- Table structure for table `room_images`
--

CREATE TABLE `room_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `room_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `room_images`
--

INSERT INTO `room_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `room_id`, `url`) VALUES
(1, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg'),
(2, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg'),
(3, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg'),
(4, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg'),
(5, '2022-08-23 14:41:52', '2022-08-23 14:41:52', NULL, 3, 'uploads/images/166125851296'),
(6, '2022-08-29 11:56:44', '2022-08-29 11:56:44', NULL, 4, 'uploads/images/166176700488');

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image',
  `target_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `created_at`, `updated_at`, `image`, `type`, `target_type`, `target_id`) VALUES
(4, '2022-08-15 12:30:28', '2022-11-13 22:35:21', 'uploads/images/166055942828', 'image', 'item', 5),
(5, '2022-08-15 12:30:52', '2022-08-15 12:30:52', 'uploads/images/166055945255', 'image', NULL, NULL),
(6, '2022-08-15 12:31:36', '2022-08-15 12:31:36', 'uploads/images/166055949613', 'image', NULL, NULL),
(13, '2022-08-29 11:57:58', '2022-08-29 11:57:58', 'https://www.youtube.com/watch?v=iIBxDKZVm1I', 'video', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `solutions`
--

CREATE TABLE `solutions` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solutions`
--

INSERT INTO `solutions` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`) VALUES
(1, NULL, '2022-08-23 14:32:10', '2022-08-23 14:32:10', 'Retail', '<h3><strong>Store Entrances/Exits:</strong></h3>\r\n\r\n<p>LightFighter camera technology allows for clear visibility and excellent video quality, even in harsh sunlight and high contrast conditions.</p>'),
(2, NULL, '2022-08-23 14:32:14', '2022-08-23 14:32:14', 'Education', '<p>Protecting campuses has become more complicated. Aside from the longstanding challenges associated with protecting students, staff, and visitors from physical harm, and protecting physical assets from theft and vandalism, the pandemic pushed classrooms to remote activity, challenging schools further. Now, with students and staff returning to campuses, facilitating smarter and more secure campuses is critical.</p>'),
(3, '2022-08-23 14:42:37', '2022-08-31 21:34:28', NULL, '{\"en\":\"Education\",\"ar\":\"\\u062a\\u0639\\u0644\\u064a\\u0645\"}', '{\"en\":\"Smart classrooms for every student and every subject\\r\\nWith advanced AI technologies, Hikvision accelerates construction of digital and smart campuses. And by implementing AI-empowered remote learning systems, students can learn more easily, comfortably and effectively via remote online classrooms. And with intelligent on-campus devices, students learning in schools can enjoy easier access to diversified information, while teachers and school administrators can also record and share quality educational resources among different schools, greatly improving learning and teaching experience.\",\"ar\":\"\\u0644\\u0643\\u0644 \\u0637\\u0627\\u0644\\u0628 \\u0648\\u0644\\u0643\\u0644 \\u0645\\u0627\\u062f\\u0629 \\u0628\\u0641\\u0636\\u0644 \\u062a\\u0642\\u0646\\u064a\\u0627\\u062a \\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a \\u0627\\u0644\\u0645\\u062a\\u0642\\u062f\\u0645\\u0629 \\u060c \\u062a\\u0633\\u0631\\u0639 Hikvision \\u0625\\u0646\\u0634\\u0627\\u0621 \\u062d\\u0631\\u0645 \\u062c\\u0627\\u0645\\u0639\\u064a \\u0631\\u0642\\u0645\\u064a \\u0648\\u0630\\u0643\\u064a. \\u0648\\u0645\\u0646 \\u062e\\u0644\\u0627\\u0644 \\u062a\\u0646\\u0641\\u064a\\u0630 \\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0639\\u0646 \\u0628\\u0639\\u062f \\u0627\\u0644\\u0645\\u062f\\u0639\\u0648\\u0645\\u0629 \\u0628\\u0627\\u0644\\u0630\\u0643\\u0627\\u0621 \\u0627\\u0644\\u0627\\u0635\\u0637\\u0646\\u0627\\u0639\\u064a \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0648\\u0631\\u0627\\u062d\\u0629 \\u0648\\u0641\\u0639\\u0627\\u0644\\u064a\\u0629 \\u0623\\u0643\\u0628\\u0631 \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0641\\u0635\\u0648\\u0644 \\u0627\\u0644\\u062f\\u0631\\u0627\\u0633\\u064a\\u0629 \\u0639\\u0646 \\u0628\\u064f\\u0639\\u062f \\u0639\\u0628\\u0631 \\u0627\\u0644\\u0625\\u0646\\u062a\\u0631\\u0646\\u062a. \\u0648\\u0628\\u0627\\u0633\\u062a\\u062e\\u062f\\u0627\\u0645 \\u0627\\u0644\\u0623\\u062c\\u0647\\u0632\\u0629 \\u0627\\u0644\\u0630\\u0643\\u064a\\u0629 \\u062f\\u0627\\u062e\\u0644 \\u0627\\u0644\\u062d\\u0631\\u0645 \\u0627\\u0644\\u062c\\u0627\\u0645\\u0639\\u064a \\u060c \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0644\\u0637\\u0644\\u0627\\u0628 \\u0627\\u0644\\u0630\\u064a\\u0646 \\u064a\\u062a\\u0639\\u0644\\u0645\\u0648\\u0646 \\u0641\\u064a \\u0627\\u0644\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0627\\u0633\\u062a\\u0645\\u062a\\u0627\\u0639 \\u0628\\u0633\\u0647\\u0648\\u0644\\u0629 \\u0627\\u0644\\u0648\\u0635\\u0648\\u0644 \\u0625\\u0644\\u0649 \\u0627\\u0644\\u0645\\u0639\\u0644\\u0648\\u0645\\u0627\\u062a \\u0627\\u0644\\u0645\\u062a\\u0646\\u0648\\u0639\\u0629 \\u060c \\u0628\\u064a\\u0646\\u0645\\u0627 \\u064a\\u0645\\u0643\\u0646 \\u0644\\u0644\\u0645\\u062f\\u0631\\u0633\\u064a\\u0646 \\u0648\\u0645\\u062f\\u064a\\u0631\\u064a \\u0627\\u0644\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0623\\u064a\\u0636\\u064b\\u0627 \\u062a\\u0633\\u062c\\u064a\\u0644 \\u0648\\u0645\\u0634\\u0627\\u0631\\u0643\\u0629 \\u0627\\u0644\\u0645\\u0648\\u0627\\u0631\\u062f \\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645\\u064a\\u0629 \\u0639\\u0627\\u0644\\u064a\\u0629 \\u0627\\u0644\\u062c\\u0648\\u062f\\u0629 \\u0628\\u064a\\u0646 \\u0627\\u0644\\u0645\\u062f\\u0627\\u0631\\u0633 \\u0627\\u0644\\u0645\\u062e\\u062a\\u0644\\u0641\\u0629 \\u060c \\u0645\\u0645\\u0627 \\u064a\\u0624\\u062f\\u064a \\u0625\\u0644\\u0649 \\u062a\\u062d\\u0633\\u064a\\u0646 \\u062a\\u062c\\u0631\\u0628\\u0629 \\u0627\\u0644\\u062a\\u0639\\u0644\\u0645 \\u0648\\u0627\\u0644\\u062a\\u0639\\u0644\\u064a\\u0645 \\u0628\\u0634\\u0643\\u0644 \\u0643\\u0628\\u064a\\u0631.\"}'),
(4, '2022-08-31 19:35:07', '2022-08-31 19:35:40', '2022-08-31 19:35:40', '{\"en\":\"jbhh\",\"ar\":\"\\u0627\\u062d\\u0627\"}', '{\"en\":\"hghhh\",\"ar\":\"\\u0627\\u0627\\u0627\\u0627\\u0627\\u0627\"}'),
(5, '2022-08-31 22:06:22', '2022-08-31 22:06:29', '2022-08-31 22:06:29', '{\"en\":\"hhh\",\"ar\":\"\\u0644\\u0644\"}', '{\"en\":\"ghgh\",\"ar\":\"\\u0644\\u0644\\u0644\\u0628\\u0644\\u0628\"}');

-- --------------------------------------------------------

--
-- Table structure for table `solution_images`
--

CREATE TABLE `solution_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `solution_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `solution_images`
--

INSERT INTO `solution_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `solution_id`, `url`, `type`) VALUES
(1, NULL, '2022-08-22 12:21:29', NULL, 1, 'uploads/images/166116368994', '0'),
(2, NULL, '2022-08-22 12:21:41', '2022-08-22 12:21:41', 1, 'uploads/images/164630808458download.jpeg', 'image'),
(3, NULL, '2022-08-22 12:24:26', NULL, 2, 'uploads/images/166116386610', '0'),
(4, NULL, '2022-08-22 12:24:15', '2022-08-22 12:24:15', 2, 'uploads/images/164630808458download.jpeg', 'image'),
(5, '2022-08-22 12:22:50', '2022-08-22 12:22:50', NULL, 1, 'uploads/images/166116377015', '0'),
(6, '2022-08-23 14:42:37', '2022-08-29 11:07:02', NULL, 3, 'uploads/images/166176402258', 'image'),
(7, '2022-08-31 19:35:07', '2022-08-31 19:35:07', NULL, 4, 'uploads/images/166196730789269707918_4918475964870610_7332106161504583692_n.jpeg', 'image'),
(8, '2022-08-31 22:06:22', '2022-08-31 22:06:22', NULL, 5, 'uploads/images/166197638215166116279438', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `speed_trainings`
--

CREATE TABLE `speed_trainings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `date_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speed_trainings`
--

INSERT INTO `speed_trainings` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`, `location`, `date`, `date_to`) VALUES
(1, NULL, '2022-08-23 15:09:55', '2022-08-23 15:09:55', '{\"en\":\"hh\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}', '{\"en\":\"bbb\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}', 'الجيزة', '2022-06-30', NULL),
(2, NULL, '2022-08-23 15:09:22', '2022-08-23 15:09:22', '{\"en\":\"hhbh\",\"ar\":\"bhhbh\"}', '{\"en\":\"bjbbb\",\"ar\":\"nbjhbh\"}', 'الجيزة', '2022-09-01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `speed_training_images`
--

CREATE TABLE `speed_training_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `speed_training_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speed_training_images`
--

INSERT INTO `speed_training_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `speed_training_id`, `url`, `type`) VALUES
(1, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg', 'image'),
(2, NULL, NULL, NULL, 1, 'uploads/images/164630808458download.jpeg', 'image'),
(3, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image'),
(4, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `speed_training_reservations`
--

CREATE TABLE `speed_training_reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `speed_training_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `speed_training_reservations`
--

INSERT INTO `speed_training_reservations` (`id`, `created_at`, `updated_at`, `deleted_at`, `speed_training_id`, `user_id`, `status`, `cancel_reason`) VALUES
(1, '2022-06-20 12:35:07', '2022-06-20 12:35:07', NULL, 1, 2, 'new', NULL),
(2, '2022-06-20 12:36:07', '2022-06-20 12:36:07', NULL, 1, 2, 'new', NULL),
(3, '2022-06-20 12:36:09', '2022-06-20 12:36:09', NULL, 1, 2, 'new', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trainings`
--

CREATE TABLE `trainings` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `date_to` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trainings`
--

INSERT INTO `trainings` (`id`, `created_at`, `updated_at`, `deleted_at`, `title`, `content`, `location`, `date`, `date_to`) VALUES
(1, NULL, '2022-08-23 14:32:37', '2022-08-23 14:32:37', 'HCSA non video', '<p>بالتعاون مع المرجاوى</p>', 'الجيزة', '2022-06-21', NULL),
(2, NULL, '2022-08-23 14:32:41', '2022-08-23 14:32:41', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'تدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى\r\nتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى\r\nتدريب شهادة معتمدة من هيكفيجن فى الجيزة بالتعاون مع المرجاوى', 'الجيزة', '2022-06-20', NULL),
(3, '2022-08-23 14:43:37', '2022-08-23 14:44:50', '2022-08-23 14:44:50', '{\"en\":\"jnjj\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}', '{\"en\":\"jnjnj\",\"ar\":\"\\u0627\\u0647\\u0644\\u0627\"}', 'جيزة', '2022-08-31', NULL),
(4, '2022-08-29 10:25:52', '2022-08-31 18:00:46', NULL, '{\"en\":\"HSCA CERTIFICATED\",\"ar\":\"\\u0634\\u0647\\u0627\\u062f\\u0629 HCSA\"}', '{\"en\":\"Reserve your place in the HCSA - CCTV training with a certificate approved by Hikvision, sponsored by Speed \\u200b\\u200bSecurity Systems Trading, and Skyway Canal\",\"ar\":\"\\u0627\\u062d\\u062c\\u0632 \\u0645\\u0643\\u0627\\u0646\\u0643 \\u0641\\u0649 \\u062a\\u062f\\u0631\\u064a\\u0628 HCSA - CCTV  \\u0628\\u0634\\u0647\\u0627\\u062f\\u0629 \\u0645\\u0639\\u062a\\u0645\\u062f\\u0647 \\u0645\\u0646 Hikvision , \\u0628\\u0631\\u0639\\u0627\\u064a\\u0629 \\u0634\\u0631\\u0643\\u0629 \\u0633\\u0628\\u064a\\u062f \\u0644\\u062a\\u062c\\u0627\\u0631\\u0629 \\u0627\\u0644\\u0623\\u0646\\u0638\\u0645\\u0629 \\u0627\\u0644\\u0627\\u0645\\u0646\\u064a\\u0629, \\u0648\\u0634\\u0631\\u0643\\u0629 \\u0633\\u0643\\u0627\\u064a \\u0648\\u0627\\u064a \\u0627\\u0644\\u0642\\u0646\\u0627\\u0644\"}', 'السويس', '2022-09-01', '2022-09-03');

-- --------------------------------------------------------

--
-- Table structure for table `training_images`
--

CREATE TABLE `training_images` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `training_id` bigint UNSIGNED NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'image'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_images`
--

INSERT INTO `training_images` (`id`, `created_at`, `updated_at`, `deleted_at`, `training_id`, `url`, `type`) VALUES
(1, NULL, '2022-08-22 12:26:03', '2022-08-22 12:26:03', 1, 'uploads/images/164630808458download.jpeg', 'image'),
(2, NULL, '2022-08-23 11:54:50', NULL, 1, 'https://www.youtube.com/watch?v=oT2DQ2eUMWU', 'video'),
(3, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image'),
(4, NULL, NULL, NULL, 2, 'uploads/images/164630808458download.jpeg', 'image'),
(5, '2022-08-29 10:26:28', '2022-08-29 10:26:28', NULL, 4, 'uploads/images/166176158865', 'image');

-- --------------------------------------------------------

--
-- Table structure for table `training_reservations`
--

CREATE TABLE `training_reservations` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `training_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `cancel_reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `training_reservations`
--

INSERT INTO `training_reservations` (`id`, `created_at`, `updated_at`, `deleted_at`, `training_id`, `user_id`, `status`, `cancel_reason`) VALUES
(1, '2022-06-20 12:39:34', '2022-06-20 12:39:34', NULL, 1, 2, 'new', NULL),
(2, '2022-08-31 18:06:26', '2022-08-31 18:06:26', NULL, 4, 15, 'new', NULL),
(3, '2022-09-01 11:01:01', '2022-09-01 11:01:01', NULL, 4, 21, 'new', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_theme` tinyint(1) NOT NULL DEFAULT '1',
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'new',
  `notification_status` tinyint(1) NOT NULL DEFAULT '1',
  `main_role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'admin',
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `sms_code` int DEFAULT NULL,
  `api_token` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `points` int NOT NULL DEFAULT '0',
  `company_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_tax_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_commercial_record_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `apple_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `new_mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_tax_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_commercial_record_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `mobile`, `password`, `default_theme`, `status`, `notification_status`, `main_role`, `remember_token`, `created_at`, `updated_at`, `deleted_at`, `sms_code`, `api_token`, `points`, `company_name`, `company_tax_number`, `company_commercial_record_number`, `facebook_token`, `google_token`, `apple_token`, `image`, `new_mobile`, `company_tax_image`, `company_commercial_record_image`) VALUES
(1, 'Admin', 'admin@email.com', NULL, '01000788133', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 0, 'active', 1, 'admin', 'c1cBhMNblbLMIeKfP309mtl8XC89Hi4DkOr7U1WyH7bnwmYifJ0XfXftQixU', '2022-06-29 14:17:54', '2022-08-14 11:11:25', NULL, NULL, NULL, 200, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(2, 'wael', 'wael.moharram@gmail.com', NULL, '01000788908', '$2y$10$mbdtETKoXfgHD.EeV02nm.M/jYlJS1ySwUYvv3KbRWXcl6lOc7pY6', 1, 'active', 0, 'client', NULL, '2022-06-10 22:29:55', '2022-09-05 15:27:02', NULL, 123456, '119|NnM0noMxa5QAptCFmNburkiRDLKF85EPrOEFpvzs', 500, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(3, 'wael', 'waelmoharrammm@gmail.com', NULL, '01001051095', '$2y$10$/3au7lCm26gkenu3CFHC5exDjuIMAXBShJE3agSzMAeQncq2ZeUMy', 1, 'active', 1, 'client', NULL, '2022-06-12 14:10:08', '2022-06-12 17:27:23', NULL, 123456, '18|ari6UO9kDGGj0skIOlandlUEAd4Rb09i8gJq4fyJ', 3000, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(4, 'mahmoud ezzat', 'mmezzat23@gmail.com', NULL, '01003691149', '$2y$10$FgfLWg9VsduhU9VyyD.Lc.XiUW2.fMa4D2L8tp.pYXR7j1qDOc8Fi', 1, 'active', 1, 'client', NULL, '2022-06-12 16:28:16', '2022-07-07 15:34:49', NULL, 874100, '50|r9YqbcJpKs41PJnwGvAXd9d99BFAEgyDfJcgOtQZ', 2000, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(5, 'mahmoud ezzat', 'mh@mh.com', NULL, '01551097697', '$2y$10$hmSXCTmhxn4tDnmoNM7s6ezoa0Y25Kx/JLGu1c.z9lxBFmRUEkR6u', 1, 'active', 1, 'client', NULL, '2022-06-12 16:32:27', '2022-08-22 16:36:21', NULL, 124844, '96|9K3uz8nzDec35F8CBKY19K9ha95cFi6RsYstRWWG', 1500, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', '01551097697', NULL, NULL),
(9, 'wael', 'mail@waelmoharram.com', NULL, '01000788132', '$2y$10$A7YkgxtyN5OTvgp2Tht4EehQdHb6C5CCZYPnNdIZ8CZxOzbBbg99u', 1, 'new', 1, 'client', NULL, '2022-07-04 14:26:28', '2022-07-04 14:26:28', NULL, 772276, '39|wMSS2i8mtaB1H89UInJMXfh4covtlmXKe9J1rFX4', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(10, 'wael', 'wael.moharramc@gmail.com', NULL, '010007889088', '$2y$10$5/jfXI4xj7Ybv0ya5HBKI.aRThNzqCikCH0PUIIYC5n30BWNmqkbO', 1, 'new', 1, 'service_provider', NULL, '2022-07-05 17:40:42', '2022-07-05 17:40:42', NULL, NULL, NULL, 0, 'tech', '123', '123', NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(11, 'mo', 'm@m.com', NULL, '01061246102', '$2y$10$bbgwzneOZ9L3QsneI2tUtOhDqRg44sIGOP3QZhG5V7lLK6TMM1BqG', 1, 'new', 1, 'service_provider', NULL, '2022-07-06 11:28:14', '2022-07-06 11:28:14', NULL, NULL, NULL, 0, 'hhhh', '555555', '555555', NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(12, 'wael', 'wa2el.moharramc@gmail.com', NULL, '010007889089', '$2y$10$UtbHWWbs1IWYFYsShQqhxe6m3PBNAPfEWR.gmyznqS15Pdnm7FaPK', 1, 'active', 1, 'service_provider', NULL, '2022-07-06 11:30:19', '2022-07-20 12:17:11', NULL, NULL, NULL, 0, 'tech', '123', '123', NULL, NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(13, 'wael', 'wael.moharramss@gmail.com', NULL, '01000788999', '$2y$10$98P.SC5lFkUi82uSHjrsnO7Wq1EfaXuWrpL6TQKGQmDJBRqMMJgEa', 1, 'new', 1, 'client', NULL, '2022-07-06 12:56:15', '2022-07-06 12:56:15', NULL, NULL, '40|v9v9Ubc7qUPRyEL0f5WZ2LECRyCRX7cKEtRSgEN8', 0, NULL, NULL, NULL, '123123', NULL, NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(14, '4/0AdQt8qhrQJnzeGDnOpJXpOmfu1xfNm1-IZwgApHUgve2xtnQ3iIRJXdbP6XjfXOz3iT0ow', 'moh237116@gmail.com', NULL, NULL, '$2y$10$CnjnnXIvyHbjacRAPE0jY.HFX7S9qoccJmGfi79crB1HrYQTwiFEW', 1, 'new', 1, 'client', NULL, '2022-07-07 13:48:31', '2022-07-07 13:48:31', NULL, NULL, '48|j0NNZaxeiz4odijJiJrZhUWPem49LCDB8pUUH6Jp', 0, NULL, NULL, NULL, NULL, '114965038912698213965', NULL, 'assets/dashboard/resources/app-assets/images/logo.png', NULL, NULL, NULL),
(15, 'mahmoud ezzat', 'z@z.com', NULL, '01001051097', '$2y$10$wOlIraSk8JJcil5.PjOAD.iMMh.bqLMNhv5xklqRncIACJ8qxhypq', 1, 'active', 1, 'client', NULL, '2022-08-07 14:29:16', '2022-09-13 15:07:57', NULL, 824181, '147|A3iBN6u1y2aA3qRt1OVoj9zpgEC4VxQL0AGXZwm9', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'mohamed', 'bb@bb.com', NULL, '01001234567', '$2y$10$Lbn.hMOpHEz/rMTE0XpvseMPXiUKsy5Yst2t1z0T7a6LJX5Zms.j2', 1, 'new', 1, 'service_provider', NULL, '2022-08-07 20:15:53', '2022-08-07 20:15:53', NULL, NULL, NULL, 0, 'Mac', '2345645', '45566666', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'jjjjjjj', 'mmm@mm.com', NULL, '01233456789', '$2y$10$1oZMy.tFJO7qGDpklEdt6OeaeM8.067NOCflRPG8SbrT83JtkX4au', 1, 'new', 1, 'service_provider', NULL, '2022-08-07 20:19:50', '2022-08-07 20:19:50', NULL, NULL, NULL, 0, 'hhhj', '55454545', '445444555', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'jhjhjjhjh', 'hhhj@ghg.com', NULL, '01234567989', '$2y$10$p30LJIs90MQR1Snzg2bA7enlN1TaunbgubF0iCkN3vRiEDDYxnh8u', 1, 'new', 1, 'service_provider', NULL, '2022-08-07 20:22:22', '2022-08-07 20:22:22', NULL, NULL, NULL, 0, 'bvvbvbvb', '5454545', '122455555', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'jhjjhjhh', 'jjj@hhjhj.com', NULL, '01001234566', '$2y$10$97BIkLT9KaPi62q0P3wXLulXdpeK1hpcPy2MoDQkESc.k55Lrr6lK', 1, 'new', 1, 'service_provider', NULL, '2022-08-07 20:24:47', '2022-08-07 20:24:47', NULL, NULL, NULL, 0, 'hhhgh', '45545456', '545454555', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'jhhjjhjjh', 'hhh@gg.com', NULL, '01001234569', '$2y$10$iOIZsmNTL1Z74cHaKw6P/.S6KC00OtBIs0NEN2KcG5VFR8b6/ExSS', 1, 'new', 1, 'service_provider', NULL, '2022-08-07 20:28:59', '2022-08-07 20:28:59', NULL, NULL, NULL, 0, 'hhhggh', '445454545', '45545454554', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'Eman Amin', 'eman.speed4trading@gmail.com', NULL, '01005030166', '$2y$10$W7ZkFnx/JGoqFFBbr.uj5ugXlVXM9RKFdqCq5BhoX0jZ0dnc4K0ie', 1, 'active', 1, 'client', NULL, '2022-08-14 11:03:14', '2022-09-14 15:19:37', NULL, 410711, '149|II7EazI2PMLUwSqT78v7H1u8pJeTCnBdbZOw7X05', 0, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/images/166046779473', NULL, NULL, NULL),
(22, 'eman amin', 'emyhm19@gmail.com', NULL, '01010904147', '$2y$10$0EwrA0ldG52fi/j7rfp5IuHvB4pE/cld9.vzixsNEMR8kYDcNDIWS', 1, 'active', 1, 'client', NULL, '2022-08-14 13:25:08', '2022-08-23 12:33:34', NULL, 505952, '88|awVcgV5Rj6wjbXsk9Rp3nmVwHoCXlxXOCZmqjA2z', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'te', 'admitn@email.com', NULL, '01000000000', '$2y$10$TKhvsev5byQuq7A6DTok4OUtbPwLnpz7v9lOcwOsS/OfM2wnHUVqC', 1, 'active', 1, 'admin', NULL, '2022-08-18 15:08:59', '2022-08-18 15:08:59', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, 'uploads/images/166082813942', NULL, NULL, NULL),
(24, 'رفعت فهمى', 'go@gmail.com', NULL, '01050028942', '$2y$10$oWokzz3q4v2EjaejNB3Tnu0F16TY7Xnxz4Rd34ID1iqfO73dcf.m.', 1, 'active', 1, 'service_provider', NULL, '2022-09-01 11:41:14', '2022-09-01 12:11:29', NULL, NULL, NULL, 0, 'الحسن والحسين', '852963475', '852369', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'vgvgg', 'hhhh@gg.com', NULL, '0123456898', '$2y$10$9iWp6DcSA//q.BMP4Llx7ek9Ik2R7d4pOgWEJgAEgaWk0FoVresUS', 1, 'new', 1, 'service_provider', NULL, '2022-09-01 12:30:10', '2022-09-01 12:30:10', NULL, NULL, NULL, 0, 'gggg', '4445445', '55555565665', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(26, 'رفعت السلاموتى', 'a@gmail.com', NULL, '01085639852', '$2y$10$FD07pIL9JCSSp2zomDj9GOIjQykzidcuVdIe5QD1un5P4j8PIAyH.', 1, 'active', 1, 'service_provider', NULL, '2022-09-01 13:20:55', '2022-09-01 13:42:11', NULL, NULL, '113|LtcIymPivsXQXxgfZQWkpm5d4hDQA6u8Eh5edcWk', 0, 'سبيد', '0852680', '8556808', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(27, 'essam', 'essam672022@gmail.com', NULL, '010008793', '$2y$10$8ejzfWH/8IE9xJL52Se7QucweqQaCCmgeM7X46NtlDg0w.l6Bb0QO', 1, 'active', 1, 'client', NULL, '2022-09-08 15:50:20', '2022-09-08 15:50:34', NULL, 734208, '133|cNbrOenDVC0E4tsdTG7gkAXqZ2d1ypyhDfktcQsj', 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(28, 'عزيز', 'emy@gmail.com', NULL, '01010203574', '$2y$10$3mXuTH/STPU8emF1xCx1sOf36r5TmnV3I9hU6WJLGlDSssuP.UNLu', 1, 'new', 1, 'service_provider', NULL, '2022-09-11 11:12:54', '2022-09-11 11:12:54', NULL, NULL, NULL, 0, 'هيومن كريتف', '0852369', '0555748', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(29, 'mahmoud abdulatif', 'abdulatifmahmoud96@gmail.com', NULL, NULL, '$2y$10$jQFK0uSlIwa0b7DwlU.S9.LWnClAjI4FkLfgzcaNOIXWq.9RsYXfu', 1, 'new', 1, 'client', NULL, '2022-09-13 14:35:27', '2022-09-13 14:35:27', NULL, NULL, '146|kZ0kdwvR9VT64DKwhaMoldklK3KqzHWpbeNEw2rL', 0, NULL, NULL, NULL, NULL, '112623324628896038009', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_changes`
--

CREATE TABLE `user_changes` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_devices_token`
--

CREATE TABLE `user_devices_token` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_devices_token`
--

INSERT INTO `user_devices_token` (`id`, `user_id`, `token`) VALUES
(1, 5, 'f-R21rDQRUGPG9dRKRi6eh:APA91bFAIwmt0TsSbqkZnAYbG06MUggNuT9HdxQOTQP6GF9kq7DfNlzxfxGU8-cHcVCKnGUtMd7I4XDGxX8PZe_sy4FdY2RSDMY3ybqplrOuyBrguE-G-MfFiMvBDZuw4jVRYKHoFZ1t'),
(4, 2, 'fx7VO-KNR5yHQ5te_q_f7o:APA91bFS1TkU74Z9LU_xCLJ36JwDzgC_69LOn_3LlqWtctfGJNYCFqUUAyTyU7A20NR2jtX3dFg48UzSRMr1yTjaPyHIEe4cEMNHPLL9bpLIyI402-_-FZYb2kO5rUYNrYeTlGJok-E144'),
(5, 15, 'dlZzs6u5QeqGN6YKtfD0eB:APA91bGB0gSauC9pk0ML6oCJL-GfsNjLmTSq4z6DKlqZAWAwguvYW6MARgsIut_y_koc60e-VoZk8fLs5ZaghdOPYhOmRIKEKBI_FhiPjMM7Rf-J45Kzc3Ys8pxedbtiRrC8DNxz5Txv'),
(6, 22, 'ezo_Pyp6TZGNmoOsizIDYT:APA91bGGFCkxjubJXJRaNNDq3ASkhrVvvg1qFxS7iCnKk1o4YyMfX_w-FdG3PkJZ73sfLSLAxuwjh8kPCPQR_bP1_yO31UyBdAFc7RFn7vss83Hp6v2QxrBiI_Uw94jTwASPOamYwM4A'),
(7, 21, 'enKPFE_nQKyYIfN8Dv5fGa:APA91bHXaKc0NJhN7Chi_EJ57H-d4IKF3YDhKv_D5Wmt37vJYswB8HX6SkTBh5-od32aWCjLfueaelKSIcn_JU_h_6PvVhbpsjCQ3xb37QKKrddUP0dFDn3knQ1_TPv1h8Gc_EvFz6jE'),
(8, 26, 'ddhRvwYgSMG80MIr8h0zr3:APA91bHjJJSEVgy3njV7xQK2mphzT8uYlCu-GH9j12FxiLu61k0UgWFhZfXEgnoMEAzaF1D4c5EeQAiULW8QtbJ5sxJsxfcGDdsEIjZHOPQzpSdfVNP17mf9K-EY4E2Yh7HHQBx0bYIa'),
(9, 27, 'doBBoPDsQpO3p_mB7K2yZH:APA91bH923v8PvR5T3hvdDLTqnr4NMW39APIJSNqDELv5I1pbxgQvztNYgWptrGnsK41XPT8bcXjnutf5rqptGbgvDAzFtoxOlOaTZm_A1xCTJLMU5t8zNuFfFIGfV0kXSspPytlf2Kp'),
(10, 29, 'fhY_bddnRrCQ9TNvr3eVn0:APA91bHnyV_nfoANWtY2SL9V9H0CExa1j9TlKpq9lvnYOXudV7CDY_LGpEPWLfvSOsJEhhaQLvW3PoGtBTOqXwN2r_6TeMp5AFzau0storPNh3u27I1wfd9iIjJuzKnmT5dOPsZcYEGp');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject_type`,`subject_id`),
  ADD KEY `causer` (`causer_type`,`causer_id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banks`
--
ALTER TABLE `banks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_channels`
--
ALTER TABLE `chat_channels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_messages`
--
ALTER TABLE `chat_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_images`
--
ALTER TABLE `event_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_reservations`
--
ALTER TABLE `event_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `favourites_favourable_type_favourable_id_index` (`favourable_type`,`favourable_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_images`
--
ALTER TABLE `item_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_rates`
--
ALTER TABLE `item_rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_solution`
--
ALTER TABLE `item_solution`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_categories`
--
ALTER TABLE `job_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `nationalities`
--
ALTER TABLE `nationalities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `options_key_unique` (`key`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_logs`
--
ALTER TABLE `order_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `promocodes`
--
ALTER TABLE `promocodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `rooms`
--
ALTER TABLE `rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room_images`
--
ALTER TABLE `room_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sliders_target_type_target_id_index` (`target_type`,`target_id`);

--
-- Indexes for table `solutions`
--
ALTER TABLE `solutions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `solution_images`
--
ALTER TABLE `solution_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed_trainings`
--
ALTER TABLE `speed_trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed_training_images`
--
ALTER TABLE `speed_training_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `speed_training_reservations`
--
ALTER TABLE `speed_training_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trainings`
--
ALTER TABLE `trainings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_images`
--
ALTER TABLE `training_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `training_reservations`
--
ALTER TABLE `training_reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `user_changes`
--
ALTER TABLE `user_changes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_devices_token`
--
ALTER TABLE `user_devices_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `banks`
--
ALTER TABLE `banks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=93;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `chat_channels`
--
ALTER TABLE `chat_channels`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `chat_messages`
--
ALTER TABLE `chat_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_images`
--
ALTER TABLE `event_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `event_reservations`
--
ALTER TABLE `event_reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `item_images`
--
ALTER TABLE `item_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `item_rates`
--
ALTER TABLE `item_rates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `item_solution`
--
ALTER TABLE `item_solution`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `job_categories`
--
ALTER TABLE `job_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ltm_translations`
--
ALTER TABLE `ltm_translations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=532;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `nationalities`
--
ALTER TABLE `nationalities`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `order_logs`
--
ALTER TABLE `order_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=150;

--
-- AUTO_INCREMENT for table `promocodes`
--
ALTER TABLE `promocodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rooms`
--
ALTER TABLE `rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `room_images`
--
ALTER TABLE `room_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `solutions`
--
ALTER TABLE `solutions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `solution_images`
--
ALTER TABLE `solution_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `speed_trainings`
--
ALTER TABLE `speed_trainings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speed_training_images`
--
ALTER TABLE `speed_training_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `speed_training_reservations`
--
ALTER TABLE `speed_training_reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trainings`
--
ALTER TABLE `trainings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `training_images`
--
ALTER TABLE `training_images`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `training_reservations`
--
ALTER TABLE `training_reservations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `user_changes`
--
ALTER TABLE `user_changes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_devices_token`
--
ALTER TABLE `user_devices_token`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
