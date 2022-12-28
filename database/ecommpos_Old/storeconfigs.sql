-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 12:43 PM
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
(69, 'website', '', '2021-08-25 06:39:44', '2021-08-25 06:39:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `storeconfigs`
--
ALTER TABLE `storeconfigs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `storeconfigs`
--
ALTER TABLE `storeconfigs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
