-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2022 at 04:34 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `r45_project_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attributes`
--

INSERT INTO `attributes` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Type Kabel', '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(3, 'Type Klakson', '2022-12-27 01:35:40', '2022-12-27 01:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `attribute_values`
--

CREATE TABLE `attribute_values` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attribute_values`
--

INSERT INTO `attribute_values` (`id`, `value`, `attribute_id`, `created_at`, `updated_at`) VALUES
(4, '0.50 mm/20M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(5, ' 0.80 mm/20M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(6, ' 1.25 mm/20M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(7, ' 0.85 mm', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(8, ' 500 A', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(9, ' 200 A \"LOWIN\"', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(10, ' 100 A', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(11, ' 16 mm 24 V', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(12, ' 25 mm 24 V', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(13, ' 10mm x 100M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(14, ' 15mm x 50M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(15, ' 19mm x 150M', 2, '2022-12-27 01:34:16', '2022-12-27 01:34:16'),
(16, 'Dise. 12V ND', 3, '2022-12-27 01:35:40', '2022-12-27 01:35:40'),
(17, ' Dise. 24V(+kabel) ND', 3, '2022-12-27 01:35:40', '2022-12-27 01:35:40'),
(18, ' Keong 12V ND', 3, '2022-12-27 01:35:40', '2022-12-27 01:35:40'),
(19, ' Keong Waterproof 12V ND', 3, '2022-12-27 01:35:40', '2022-12-27 01:35:40'),
(20, ' Keong Waterprooof', 3, '2022-12-27 01:35:40', '2022-12-27 01:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `tempusertoken` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `parent_id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 'Kabel', NULL, '2022-12-27 01:22:18', '2022-12-27 01:22:18'),
(2, 0, 'Lampu', NULL, '2022-12-27 01:22:32', '2022-12-27 01:22:32'),
(3, 0, 'Plat', NULL, '2022-12-27 01:22:38', '2022-12-27 01:22:38'),
(4, 0, 'Kunci Stir', NULL, '2022-12-27 01:22:44', '2022-12-27 01:22:44'),
(5, 0, 'Central Lock', NULL, '2022-12-27 01:22:51', '2022-12-27 01:22:51'),
(6, 0, 'Door Lock', NULL, '2022-12-27 01:22:57', '2022-12-27 01:22:57'),
(7, 0, 'Klakson', NULL, '2022-12-27 01:23:04', '2022-12-27 01:23:04'),
(8, 0, 'Terminal', NULL, '2022-12-27 01:23:09', '2022-12-27 01:23:09'),
(9, 0, 'Kepala Aki', NULL, '2022-12-27 01:23:16', '2022-12-27 01:23:16'),
(10, 0, 'Double Tip', NULL, '2022-12-27 01:23:22', '2022-12-27 01:23:22'),
(11, 0, 'Electrical', NULL, '2022-12-27 01:23:35', '2022-12-27 01:23:35'),
(12, 0, 'PW', NULL, '2022-12-27 01:23:40', '2022-12-27 01:23:40'),
(13, 0, 'Kipas Angin', NULL, '2022-12-27 01:23:47', '2022-12-27 01:23:47'),
(14, 0, 'Socket', NULL, '2022-12-27 01:23:51', '2022-12-27 01:23:51'),
(15, 0, 'Relay', NULL, '2022-12-27 01:23:59', '2022-12-27 01:23:59'),
(16, 0, 'Sekering', NULL, '2022-12-27 01:24:10', '2022-12-27 01:24:10'),
(17, 0, 'Antena Mobil', NULL, '2022-12-27 01:24:17', '2022-12-27 01:24:17'),
(18, 0, 'Fitting Aki', NULL, '2022-12-27 01:24:23', '2022-12-27 01:24:23'),
(19, 0, 'Alarm', NULL, '2022-12-27 01:24:28', '2022-12-27 01:24:28'),
(20, 0, 'Dynamo', NULL, '2022-12-27 01:24:33', '2022-12-27 01:24:33'),
(21, 0, 'Lap', NULL, '2022-12-27 01:24:39', '2022-12-27 01:24:39'),
(22, 0, 'Pedal Gas', NULL, '2022-12-27 01:24:45', '2022-12-27 01:24:45'),
(23, 0, 'Sensor Parking', NULL, '2022-12-27 01:24:51', '2022-12-27 01:24:51'),
(24, 0, 'Charger', NULL, '2022-12-27 01:24:57', '2022-12-27 01:24:57'),
(25, 0, 'Kaca Spion', NULL, '2022-12-27 01:25:02', '2022-12-27 01:25:02'),
(26, 0, 'Penahan Lumpur', NULL, '2022-12-27 01:25:08', '2022-12-27 01:25:08'),
(27, 0, 'Saklar', NULL, '2022-12-27 01:25:15', '2022-12-27 01:25:15'),
(28, 0, 'Compound', NULL, '2022-12-27 01:25:22', '2022-12-27 01:25:22'),
(29, 0, 'Roda', NULL, '2022-12-27 01:25:31', '2022-12-27 01:25:31'),
(30, 0, 'Safety Belt', NULL, '2022-12-27 01:25:42', '2022-12-27 01:25:42'),
(31, 0, 'Fire Stop', NULL, '2022-12-27 01:25:48', '2022-12-27 01:25:48'),
(32, 0, 'Parfum', NULL, '2022-12-27 01:25:53', '2022-12-27 01:25:53'),
(33, 0, 'Reflector', NULL, '2022-12-27 01:26:02', '2022-12-27 01:26:02'),
(34, 0, 'Talang Air', NULL, '2022-12-27 01:26:08', '2022-12-27 01:26:08'),
(35, 0, 'Sarung Jok', NULL, '2022-12-27 01:26:16', '2022-12-27 01:26:16'),
(36, 0, 'Karpet', NULL, '2022-12-27 01:26:21', '2022-12-27 01:26:21'),
(37, 0, 'Tutup Radiator', NULL, '2022-12-27 01:26:27', '2022-12-27 01:26:27'),
(38, 0, 'Wiper', NULL, '2022-12-27 01:26:32', '2022-12-27 01:26:32'),
(39, 0, 'Pully Assy', NULL, '2022-12-27 01:26:39', '2022-12-27 01:26:39'),
(40, 0, 'Peredam Panas', NULL, '2022-12-27 01:26:45', '2022-12-27 01:26:45'),
(41, 0, 'Dongkrak', NULL, '2022-12-27 01:26:51', '2022-12-27 01:26:51'),
(42, 0, 'Dudukan Plat', NULL, '2022-12-27 01:27:01', '2022-12-27 01:27:01'),
(43, 0, 'Tatakan', NULL, '2022-12-27 01:27:06', '2022-12-27 01:27:06'),
(44, 0, 'Interjection', NULL, '2022-12-27 01:27:14', '2022-12-27 01:27:14'),
(45, 0, 'Auto Lighter', NULL, '2022-12-27 01:27:38', '2022-12-27 01:27:38');

-- --------------------------------------------------------

--
-- Table structure for table `categories_items`
--

CREATE TABLE `categories_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_items`
--

INSERT INTO `categories_items` (`id`, `category_id`, `item_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 2, NULL, NULL),
(3, 1, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) NOT NULL,
  `coupon_validity` date DEFAULT NULL,
  `price_limit` double(8,2) DEFAULT NULL,
  `used` int(11) NOT NULL DEFAULT 0 COMMENT 'How Many time used this coupon',
  `max_used` int(11) DEFAULT NULL COMMENT 'How Many time you want  used this coupon',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `first_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` set('m','f','o') COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) DEFAULT NULL,
  `discount` int(11) NOT NULL,
  `taxable` tinyint(4) DEFAULT 0,
  `comments` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `first_name`, `last_name`, `gender`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `company`, `account`, `total`, `discount`, `taxable`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'Angga', 'Budi', 'm', 'anggabudi@gmail.com', '08111209926', 'Puri', 'Puri Indah', 'Jakarta', 'Jakarta Barat', '12312', 'Indonesia', 'Perseorangan', '8993124124', '0.00', 9, 0, 'Customer dapat diskon', '2022-12-27 20:47:33', '2022-12-27 20:47:33');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loginname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` set('m','f','o') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `employeeid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `loginname`, `user_id`, `password`, `role`, `first_name`, `last_name`, `gender`, `phone`, `email`, `image`, `employeeid`, `created_at`, `updated_at`) VALUES
(1, 'Joko', 4, '$2y$10$l3xHNdpo4AdSApmfaKxg9OFk17TOa7u5dzZLOL8EhSsEV40xN5/G.', '6', 'Joko', 'Purwanto', 'm', '08111209926', 'jokopurwanto@gmail.com', 'Joko.png', '1111', '2022-12-27 20:56:47', '2022-12-27 20:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `giftcards`
--

CREATE TABLE `giftcards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `card_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expire_date` date NOT NULL,
  `value` int(11) NOT NULL,
  `card_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `item_id`, `name`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, '36250136226e4b510df692e6c5fbc049.jpg', 'uploads/product/36250136226e4b510df692e6c5fbc049.jpg', '2022-12-27 20:41:22', '2022-12-27 20:41:22'),
(2, 1, '8dc2c2964f6cd66040bdf4261e065388.jpg', 'uploads/product/8dc2c2964f6cd66040bdf4261e065388.jpg', '2022-12-27 20:41:22', '2022-12-27 20:41:22'),
(3, 2, '655391346eff1fb8210ec2bf79fe9388.jpg', 'uploads/product/655391346eff1fb8210ec2bf79fe9388.jpg', '2022-12-27 20:54:37', '2022-12-27 20:54:37'),
(4, 2, 'acc8568fec84b11deb8a517c862cf0c7.webp', 'uploads/product/acc8568fec84b11deb8a517c862cf0c7.webp', '2022-12-27 20:54:37', '2022-12-27 20:54:37'),
(5, 3, 'acf768aa117c392c3772b08263f1bc23.jpg', 'uploads/product/acf768aa117c392c3772b08263f1bc23.jpg', '2022-12-28 01:21:11', '2022-12-28 01:21:11'),
(6, 3, '93e894c79dc636b25e1fdb4493e24589.jpg', 'uploads/product/93e894c79dc636b25e1fdb4493e24589.jpg', '2022-12-28 01:21:11', '2022-12-28 01:21:11');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cost_price` decimal(8,2) NOT NULL,
  `unit_price` decimal(8,2) NOT NULL,
  `reorder_level` int(11) DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit` set('gm','kg','lb','piece','dozon','l','ml','inch','foot','set','roll') COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseimage` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt_description` tinyint(4) DEFAULT 0,
  `has_serial` tinyint(4) DEFAULT 0,
  `serialno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax1` tinyint(4) DEFAULT NULL,
  `tax2` tinyint(4) DEFAULT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `loc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'item location in store',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `name`, `supplier_id`, `sku`, `description`, `cost_price`, `unit_price`, `reorder_level`, `quantity`, `unit`, `baseimage`, `alt_description`, `has_serial`, `serialno`, `tax1`, `tax2`, `attributes`, `loc`, `created_at`, `updated_at`) VALUES
(1, 'Kabel Bintik (Jepang)', 1, '123456', 'Kabel', '17050.00', '29000.00', 1, 0, 'piece', 'uploads/product/1672198882.jpg', 0, 0, NULL, 10, NULL, '{\"Type Kabel\":[\"0.50 mm\\/20M\"]}', 'Jakarta', '2022-12-27 20:41:22', '2022-12-28 08:31:38'),
(2, 'Kabel Jumper', 1, '234567', 'Kabel Jumper', '65000.00', '85000.00', 1, 2, 'piece', 'uploads/product/1672199677.jpg', 0, 0, NULL, 0, NULL, '{\"Type Kabel\":[\"500 A\"]}', 'Jakarta', '2022-12-27 20:54:37', '2022-12-28 08:33:21'),
(3, 'Kabel Set MX-H PRO', 1, '345678', NULL, '97500.00', '120000.00', NULL, 5, 'set', 'uploads/product/1672215670.jpg', 0, 0, NULL, NULL, NULL, 'null', 'Indonesia', '2022-12-28 01:21:10', '2022-12-28 08:33:21');

-- --------------------------------------------------------

--
-- Table structure for table `item_kits`
--

CREATE TABLE `item_kits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_kit_products`
--

CREATE TABLE `item_kit_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `item_kits_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_01_182948_create_customers_table', 1),
(5, '2019_09_02_184906_create_suppliers_table', 1),
(6, '2019_09_03_041344_create_categories_table', 1),
(7, '2019_09_04_184055_create_items_table', 1),
(8, '2019_09_05_184457_create_item_kits_table', 1),
(9, '2019_09_06_045603_create_item_kit_products_table', 1),
(10, '2019_09_07_185922_create_employees_table', 1),
(11, '2019_09_08_185622_create_sales_table', 1),
(12, '2019_09_09_053519_create_sales_items_table', 1),
(13, '2019_09_30_190649_create_storeconfigs_table', 2),
(14, '2021_08_25_064541_create_categories_items_table', 3),
(15, '2021_08_25_064810_create_images_table', 3),
(16, '2019_09_12_044949_create_carts_table', 4),
(17, '2021_08_11_185345_create_receivings_table', 4),
(18, '2021_08_11_185346_receivings_items', 4),
(19, '2021_08_11_190220_create_giftcards_table', 4),
(20, '2021_09_04_165908_create_attributes_table', 4),
(21, '2021_09_04_170043_create_attribute_values_table', 4),
(22, '2021_09_04_170043_create_wishlists_table', 4),
(23, '2021_09_09_094251_create_coupons_table', 4),
(24, '2021_09_09_094646_create_who_useds_table', 4),
(25, '2021_09_12_070934_add_order_status_user_id_in_sales', 4),
(26, '2021_09_12_072445_create_shipping_details_table', 4),
(27, '2021_09_12_124732_add_full_name_to_ship', 4),
(28, '2021_09_17_112302_add_user_id_to_employee', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('admin@gmail.com', '$2y$10$yZ5GjGot3nOfif7i.zp6x.a4tCiSGbHBEs7sh7YRAcF6Dt48ELI8u', '2022-12-27 00:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `receivings`
--

CREATE TABLE `receivings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` double(8,2) NOT NULL,
  `discount` double(8,2) NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finaltotal` double(8,2) NOT NULL,
  `payment_type` set('cash','bkash','nagad','ucash','rocket') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` set('incomplete','due','complete','partial') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `receivings_items`
--

CREATE TABLE `receivings_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `receivings_id` bigint(20) UNSIGNED DEFAULT NULL,
  `items_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double(8,2) NOT NULL,
  `unit_price` double(8,2) NOT NULL,
  `discount_percent` double(8,2) NOT NULL,
  `cost_price` double(8,2) NOT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` bigint(20) UNSIGNED DEFAULT NULL,
  `employee_id` bigint(20) UNSIGNED DEFAULT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double NOT NULL,
  `discount` double NOT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `finaltotal` double NOT NULL,
  `payment_type` set('cash','bkash','nagad','ucash','rocket') COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` set('incomplete','due','complete','partial') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sale_type` set('store','web') COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `order_status` set('pending','processing','shipped') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`id`, `invoice_id`, `customer_id`, `employee_id`, `comments`, `total`, `discount`, `coupon`, `finaltotal`, `payment_type`, `payment_status`, `sale_type`, `user_id`, `created_at`, `updated_at`, `order_status`) VALUES
(1, '45-645464110', 1, 1, NULL, 530000, 0, 'nocoupon', 530000, 'cash', 'complete', 'store', NULL, '2022-12-28 02:00:44', NULL, 'pending'),
(2, '45-645464111', 1, 1, 'hutang', 456860, -0, 'nocoupon', 456860, 'ucash', 'incomplete', 'store', NULL, '2022-12-28 08:31:38', NULL, 'pending'),
(3, '45-645464112', 1, 1, 'cicil', 495000, -0, 'nocoupon', 495000, 'cash', 'partial', 'store', NULL, '2022-12-28 08:33:21', NULL, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `sales_items`
--

CREATE TABLE `sales_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED DEFAULT NULL,
  `items_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` double NOT NULL,
  `unit_price` double NOT NULL,
  `cost_price` double NOT NULL,
  `discount_percent` double NOT NULL DEFAULT 0,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`attributes`)),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sales_items`
--

INSERT INTO `sales_items` (`id`, `sales_id`, `items_id`, `quantity`, `unit_price`, `cost_price`, `discount_percent`, `attributes`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 3, 120000, 97500, 0, 'null', '2022-12-28 02:00:44', NULL),
(2, 1, 2, 2, 85000, 65000, 0, '{\"Type Kabel\":[\"500 A\"]}', '2022-12-28 02:00:44', NULL),
(3, 2, 1, 1, 29000, 17050, 0, '{\"Type Kabel\":[\"0.50 mm\\/20M\"]}', '2022-12-28 08:31:38', NULL),
(4, 2, 1, 4, 29000, 17050, 0, '{\"Type Kabel\":[\"0.50 mm\\/20M\"]}', '2022-12-28 08:31:38', NULL),
(5, 2, 2, 3, 85000, 65000, 0, '{\"Type Kabel\":[\"500 A\"]}', '2022-12-28 08:31:38', NULL),
(6, 3, 2, 3, 85000, 65000, 0, '{\"Type Kabel\":[\"500 A\"]}', '2022-12-28 08:33:21', NULL),
(7, 3, 3, 2, 120000, 97500, 0, 'null', '2022-12-28 08:33:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shipping_details`
--

CREATE TABLE `shipping_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sales_id` bigint(20) UNSIGNED DEFAULT NULL,
  `full_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `storeconfigs`
--

CREATE TABLE `storeconfigs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storeconfigs`
--

INSERT INTO `storeconfigs` (`id`, `key`, `value`, `created_at`, `updated_at`) VALUES
(1, 'address', '123 Nowhere street', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(2, 'barcode_content', 'id', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(3, 'barcode_first_row', 'category', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(4, 'barcode_font', 'Arial', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(5, 'barcode_font_size', '10', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(6, 'barcode_generate_if_empty', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(7, 'barcode_height', '50', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(8, 'barcode_num_in_row', '2', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(9, 'barcode_page_cellspacing', '20', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(10, 'barcode_page_width', '100', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(11, 'barcode_quality', '100', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(12, 'barcode_second_row', 'item_code', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(13, 'barcode_third_row', 'unit_price', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(14, 'barcode_type', 'Code39', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(15, 'barcode_width', '250', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(16, 'company', 'Open Source Point of Sale', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(17, 'companylogo', '1632045538.png', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(18, 'country_codes', 'us', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(19, 'currency_decimals', '2', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(20, 'currency_symbol', '$', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(21, 'dateformat', 'Y/m/d', '2021-08-25 06:39:44', '2022-12-27 01:20:33'),
(22, 'default_sales_discount', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(23, 'default_tax_rate', '8', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(24, 'email', 'changeme@example.com', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(25, 'fax', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(26, 'invoice_default_comments', 'This is a default comment', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(27, 'invoice_email_message', 'Dear $CU, In attachment the receipt for sale $INV', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(28, 'invoice_enable', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(29, 'language', 'en:english', '2021-08-25 06:39:44', '2022-12-27 01:19:17'),
(30, 'language_code', 'en', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(31, 'lines_per_page', '25', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(32, 'mailpath', '/usr/sbin/sendmail', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(33, 'msg_msg', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(34, 'msg_pwd', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(35, 'msg_src', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(36, 'msg_uid', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(37, 'notify_horizontal_position', 'center', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(38, 'notify_vertical_position', 'bottom', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(39, 'number_locale', 'en_US', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(40, 'payment_options_order', 'cashdebitcredit', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(41, 'phone', '555-555-5555', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(42, 'print_bottom_margin', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(43, 'print_footer', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(44, 'print_header', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(45, 'print_left_margin', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(46, 'print_right_margin', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(47, 'print_silently', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(48, 'print_top_margin', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(49, 'protocol', 'mail', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(50, 'quantity_decimals', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(51, 'receipt_show_description', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(52, 'receipt_show_serialnumber', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(53, 'receipt_show_taxes', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(54, 'receipt_show_total_discount', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(55, 'receipt_template', 'receipt_default', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(56, 'recv_invoice_format', '$CO', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(57, 'return_policy', 'Test', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(58, 'sales_invoice_format', '$CO', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(59, 'smtp_crypto', 'ssl', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(60, 'smtp_port', '465', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(61, 'smtp_timeout', '5', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(62, 'statistics', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(63, 'tax_decimals', '2', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(64, 'tax_included', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(65, 'theme', 'left', '2021-08-25 06:39:44', '2022-12-27 01:17:52'),
(66, 'thousands_separator', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(67, 'timeformat', 'H:i:s', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(68, 'timezone', 'Asia/Jakarta', '2021-08-25 06:39:44', '2022-12-27 01:20:33'),
(69, 'website', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(70, 'symble', 'Rp', '2022-12-27 01:19:42', '2022-12-27 01:19:42'),
(71, 'ccode', '+62', '2022-12-27 01:20:33', '2022-12-27 01:20:33');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agency_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` set('m','f','o') COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comments` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`id`, `company_name`, `agency_name`, `account_number`, `first_name`, `last_name`, `gender`, `phone`, `email`, `address1`, `address2`, `city`, `state`, `zip`, `country`, `comments`, `created_at`, `updated_at`) VALUES
(1, 'Krakatau', 'Krakatau', '00000000', 'Krakatau', 'Krakatau', 'm', '085768120220', 'krakatau@gmail.com', 'Casablanca', 'Casablanca', 'Jakarta', 'Jakarta Barat', '12312', 'Indonesia', 'Supplier Jakarta', NULL, NULL),
(2, 'Naga Berlian', 'Naga Berlian', '00000000', 'Naga', 'Berlian', 'm', '085768120220', 'nagaberlian@gmail.com', 'Puri', 'Puri Indah', 'Jakarta Barat', 'DKI Jakarta', '123123', 'Indonesia', 'Supplier Lampu', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` set('1','2','3','4','5') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '2',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `role`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, '$2a$12$Dy5usThYSzKCLRpdn6QCWeno.SBJvEUdiYRRc9qBZelKDI5H6/bIW\n', '1', NULL, '2021-08-25 00:23:54', '2021-08-25 00:23:54'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$ccIaiFmVV.um.uLIaz5t6.4lKaEYPhLbH.05I0JT4ax9rRIwGzmWC', '2', NULL, '2021-08-27 23:09:51', '2021-08-27 23:09:51'),
(3, 'Reinert Yosua Rumagit', 'reinertyosua24@gmail.com', NULL, '$2y$10$HU.eNCWhZqHmUiQwJnVhg.HpSADGFLcicRx1bnTbXSGnKPy5IXPhy', '1', NULL, '2022-12-27 01:00:12', '2022-12-27 01:00:12'),
(4, 'Joko', 'jokopurwanto@gmail.com', NULL, '$2y$10$l3xHNdpo4AdSApmfaKxg9OFk17TOa7u5dzZLOL8EhSsEV40xN5/G.', '5', NULL, '2022-12-27 20:56:47', '2022-12-27 20:56:47');

-- --------------------------------------------------------

--
-- Table structure for table `who_useds`
--

CREATE TABLE `who_useds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `coupon_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `item_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attribute_values_attribute_id_foreign` (`attribute_id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_item_id_foreign` (`item_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories_items`
--
ALTER TABLE `categories_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_items_category_id_foreign` (`category_id`),
  ADD KEY `categories_items_item_id_foreign` (`item_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD KEY `employees_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD PRIMARY KEY (`id`),
  ADD KEY `giftcards_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_item_id_foreign` (`item_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `items_supplier_id_foreign` (`supplier_id`);

--
-- Indexes for table `item_kits`
--
ALTER TABLE `item_kits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `item_kit_products`
--
ALTER TABLE `item_kit_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `item_kit_products_item_kits_id_foreign` (`item_kits_id`),
  ADD KEY `item_kit_products_item_id_foreign` (`item_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `receivings`
--
ALTER TABLE `receivings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receivings_supplier_id_foreign` (`supplier_id`),
  ADD KEY `receivings_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `receivings_items`
--
ALTER TABLE `receivings_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `receivings_items_receivings_id_foreign` (`receivings_id`),
  ADD KEY `receivings_items_items_id_foreign` (`items_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_employee_id_foreign` (`employee_id`),
  ADD KEY `sales_user_id_foreign` (`user_id`);

--
-- Indexes for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_items_sales_id_foreign` (`sales_id`),
  ADD KEY `sales_items_items_id_foreign` (`items_id`);

--
-- Indexes for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shipping_details_sales_id_foreign` (`sales_id`);

--
-- Indexes for table `storeconfigs`
--
ALTER TABLE `storeconfigs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `who_useds`
--
ALTER TABLE `who_useds`
  ADD PRIMARY KEY (`id`),
  ADD KEY `who_useds_user_id_foreign` (`user_id`),
  ADD KEY `who_useds_coupon_id_foreign` (`coupon_id`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `wishlists_user_id_foreign` (`user_id`),
  ADD KEY `wishlists_item_id_foreign` (`item_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `attribute_values`
--
ALTER TABLE `attribute_values`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `categories_items`
--
ALTER TABLE `categories_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `giftcards`
--
ALTER TABLE `giftcards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `item_kits`
--
ALTER TABLE `item_kits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `item_kit_products`
--
ALTER TABLE `item_kit_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `receivings`
--
ALTER TABLE `receivings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `receivings_items`
--
ALTER TABLE `receivings_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sales_items`
--
ALTER TABLE `sales_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `shipping_details`
--
ALTER TABLE `shipping_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storeconfigs`
--
ALTER TABLE `storeconfigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `who_useds`
--
ALTER TABLE `who_useds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attribute_values`
--
ALTER TABLE `attribute_values`
  ADD CONSTRAINT `attribute_values_attribute_id_foreign` FOREIGN KEY (`attribute_id`) REFERENCES `attributes` (`id`);

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `categories_items`
--
ALTER TABLE `categories_items`
  ADD CONSTRAINT `categories_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `employees`
--
ALTER TABLE `employees`
  ADD CONSTRAINT `employees_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `giftcards`
--
ALTER TABLE `giftcards`
  ADD CONSTRAINT `giftcards_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `item_kit_products`
--
ALTER TABLE `item_kit_products`
  ADD CONSTRAINT `item_kit_products_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_kit_products_item_kits_id_foreign` FOREIGN KEY (`item_kits_id`) REFERENCES `item_kits` (`id`);

--
-- Constraints for table `receivings`
--
ALTER TABLE `receivings`
  ADD CONSTRAINT `receivings_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `receivings_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`id`);

--
-- Constraints for table `receivings_items`
--
ALTER TABLE `receivings_items`
  ADD CONSTRAINT `receivings_items_items_id_foreign` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `receivings_items_receivings_id_foreign` FOREIGN KEY (`receivings_id`) REFERENCES `receivings` (`id`);

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sales_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`),
  ADD CONSTRAINT `sales_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD CONSTRAINT `sales_items_items_id_foreign` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `sales_items_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `shipping_details`
--
ALTER TABLE `shipping_details`
  ADD CONSTRAINT `shipping_details_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);

--
-- Constraints for table `who_useds`
--
ALTER TABLE `who_useds`
  ADD CONSTRAINT `who_useds_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `coupons` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `who_useds_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD CONSTRAINT `wishlists_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
