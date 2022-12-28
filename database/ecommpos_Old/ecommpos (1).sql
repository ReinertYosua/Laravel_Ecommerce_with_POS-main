-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2021 at 01:21 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommpos`
--

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
  `address2` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `discount` int(11) NOT NULL,
  `taxable` tinyint(4) NOT NULL DEFAULT 0,
  `comments` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `loginname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `reorder_level` int(11) NOT NULL,
  `quantity` double NOT NULL,
  `unit` set('gm','kg','lb','piece','dozon','l','ml','inch','foot','set','roll') COLLATE utf8mb4_unicode_ci NOT NULL,
  `baseimage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_description` tinyint(4) NOT NULL DEFAULT 0,
  `has_serial` tinyint(4) NOT NULL DEFAULT 0,
  `serialno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax1` tinyint(4) DEFAULT NULL,
  `tax2` tinyint(4) DEFAULT NULL,
  `attributes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL CHECK (json_valid(`attributes`)),
  `loc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'item location in store',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(15, '2021_08_25_064810_create_images_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(16, 'company', 'Open Source Point of Sale 333', '2021-08-25 06:39:44', '2021-08-27 22:20:14'),
(17, 'company_logo', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(18, 'country_codes', 'us', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(19, 'currency_decimals', '2', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(20, 'currency_symbol', '$', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(21, 'dateformat', 'm/d/Y', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(22, 'default_sales_discount', '0', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(23, 'default_tax_rate', '8', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(24, 'email', 'changeme@example.com', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(25, 'fax', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(26, 'invoice_default_comments', 'This is a default comment', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(27, 'invoice_email_message', 'Dear $CU, In attachment the receipt for sale $INV', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(28, 'invoice_enable', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(29, 'language', 'english', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
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
(65, 'theme', 'flatly', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(66, 'thousands_separator', '1', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(67, 'timeformat', 'H:i:s', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(68, 'timezone', 'America/New_York', '2021-08-25 06:39:44', '2021-08-25 06:39:44'),
(69, 'website', 'http://ecommpos.com', '2021-08-25 06:39:44', '2021-08-27 22:20:59'),
(76, 'established', '1953', '2021-08-27 22:21:32', '2021-08-27 22:21:32');

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
(1, 'admin', 'admin@gmail.com', NULL, '$2y$10$oE/tLVnnwe8CgSVMg5hBTO6pHTocciMUu8ANFM4s25d9tIYTujKeC', '1', NULL, '2021-08-25 00:23:54', '2021-08-25 00:23:54'),
(2, 'test', 'test@gmail.com', NULL, '$2y$10$ccIaiFmVV.um.uLIaz5t6.4lKaEYPhLbH.05I0JT4ax9rRIwGzmWC', '2', NULL, '2021-08-27 23:09:51', '2021-08-27 23:09:51');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_customer_id_foreign` (`customer_id`),
  ADD KEY `sales_employee_id_foreign` (`employee_id`);

--
-- Indexes for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sales_items_sales_id_foreign` (`sales_id`),
  ADD KEY `sales_items_items_id_foreign` (`items_id`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories_items`
--
ALTER TABLE `categories_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sales_items`
--
ALTER TABLE `sales_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `storeconfigs`
--
ALTER TABLE `storeconfigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_items`
--
ALTER TABLE `categories_items`
  ADD CONSTRAINT `categories_items_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `categories_items_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`);

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
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`),
  ADD CONSTRAINT `sales_employee_id_foreign` FOREIGN KEY (`employee_id`) REFERENCES `employees` (`id`);

--
-- Constraints for table `sales_items`
--
ALTER TABLE `sales_items`
  ADD CONSTRAINT `sales_items_items_id_foreign` FOREIGN KEY (`items_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `sales_items_sales_id_foreign` FOREIGN KEY (`sales_id`) REFERENCES `sales` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
