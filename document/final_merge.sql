-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 02, 2018 at 11:01 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Áo thun', 1, '2018-07-02 14:01:45', '2018-07-02 14:01:45'),
(2, 'Hoodie', 1, '2018-07-02 14:01:45', '2018-07-02 14:01:45'),
(3, 'Giày', 1, '2018-07-02 14:01:45', '2018-07-02 14:01:45'),
(4, 'Legging', 1, '2018-07-02 20:29:19', '2018-07-02 20:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `cityName` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityName`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Hồ Chí Minh', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(2, 'Hà Nội', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(3, 'Hải Phòng', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(4, 'Đà Nẵng', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(5, 'Bình Thuận', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(6, 'Bà Rịa - Vũng Tàu', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(7, 'Long An', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(8, 'Tiền Giang', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(9, 'Ninh Thuận', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(10, 'Daklak', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(11, 'Quảng Ngãi', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(12, 'Thanh Hóa', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(13, 'Bình Định', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10'),
(14, 'Quảng Nam', 1, '2018-07-02 14:01:57', '2018-07-02 14:03:10');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skuCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `skuCode`, `created_at`, `updated_at`) VALUES
(10, 'pd3_sku1_1.jpg', 'pd3_sku1', '2018-07-02 14:26:56', '2018-07-02 14:26:56'),
(11, 'pd3_sku2_1.jpg', 'pd3_sku2', '2018-07-02 14:27:09', '2018-07-02 14:27:09'),
(12, 'pd5_sku1_1.jpg', 'pd5_sku1', '2018-07-02 15:25:40', '2018-07-02 15:25:40'),
(13, 'pd5_sku2_1.jpg', 'pd5_sku2', '2018-07-02 15:25:56', '2018-07-02 15:25:56'),
(14, 'pd5_sku3_1.jpg', 'pd5_sku3', '2018-07-02 15:26:08', '2018-07-02 15:26:08'),
(15, 'pd6_sku1_1.jpg', 'pd6_sku1', '2018-07-02 15:28:18', '2018-07-02 15:28:18'),
(16, 'pd6_sku2_1.jpg', 'pd6_sku2', '2018-07-02 15:28:46', '2018-07-02 15:28:46'),
(17, 'pd4_sku1_1.jpg', 'pd4_sku1', '2018-07-02 15:38:24', '2018-07-02 15:38:24'),
(18, 'pd4_sku2_1.jpg', 'pd4_sku2', '2018-07-02 15:38:43', '2018-07-02 15:38:43'),
(19, 'pd4_sku3_1.jpg', 'pd4_sku3', '2018-07-02 15:38:59', '2018-07-02 15:38:59'),
(20, 'pd7_sku1_1.jpg', 'pd7_sku1', '2018-07-02 19:59:44', '2018-07-02 19:59:44'),
(21, 'pd7_sku2_1.jpg', 'pd7_sku2', '2018-07-02 19:59:57', '2018-07-02 19:59:57'),
(22, 'pd7_sku3_1.jpg', 'pd7_sku3', '2018-07-02 20:00:07', '2018-07-02 20:00:07'),
(23, 'pd7_sku4_1.jpg', 'pd7_sku4', '2018-07-02 20:00:19', '2018-07-02 20:00:19'),
(24, 'pd7_sku5_1.jpg', 'pd7_sku5', '2018-07-02 20:00:34', '2018-07-02 20:00:34'),
(25, 'pd7_sku6_1.jpg', 'pd7_sku6', '2018-07-02 20:00:56', '2018-07-02 20:00:56'),
(26, 'pd7_sku7_1.jpg', 'pd7_sku7', '2018-07-02 20:01:04', '2018-07-02 20:01:04'),
(27, 'pd7_sku8_1.jpg', 'pd7_sku8', '2018-07-02 20:01:14', '2018-07-02 20:01:14'),
(28, 'pd7_sku9_1.jpg', 'pd7_sku9', '2018-07-02 20:01:24', '2018-07-02 20:01:24'),
(29, 'pd8_sku1_1.jpg', 'pd8_sku1', '2018-07-02 20:02:10', '2018-07-02 20:02:10'),
(30, 'pd8_sku2_1.jpg', 'pd8_sku2', '2018-07-02 20:02:20', '2018-07-02 20:02:20'),
(31, 'pd8_sku3_1.jpg', 'pd8_sku3', '2018-07-02 20:02:33', '2018-07-02 20:02:33'),
(32, 'pd8_sku4_1.jpg', 'pd8_sku4', '2018-07-02 20:02:42', '2018-07-02 20:02:42'),
(33, 'pd8_sku5_1.jpg', 'pd8_sku5', '2018-07-02 20:02:59', '2018-07-02 20:02:59'),
(34, 'pd8_sku6_1.jpg', 'pd8_sku6', '2018-07-02 20:03:15', '2018-07-02 20:03:15'),
(35, 'pd8_sku7_1.jpg', 'pd8_sku7', '2018-07-02 20:03:24', '2018-07-02 20:03:24'),
(36, 'pd8_sku8_1.jpg', 'pd8_sku8', '2018-07-02 20:03:32', '2018-07-02 20:03:32'),
(37, 'pd9_sku1_1.jpg', 'pd9_sku1', '2018-07-02 20:08:31', '2018-07-02 20:08:31'),
(38, 'pd9_sku2_1.jpg', 'pd9_sku2', '2018-07-02 20:08:43', '2018-07-02 20:08:43'),
(39, 'pd9_sku3_1.jpg', 'pd9_sku3', '2018-07-02 20:08:59', '2018-07-02 20:08:59'),
(40, 'pd9_sku4_1.png', 'pd9_sku4', '2018-07-02 20:09:12', '2018-07-02 20:09:12'),
(41, 'pd9_sku5_1.png', 'pd9_sku5', '2018-07-02 20:09:22', '2018-07-02 20:09:22'),
(42, 'pd10_sku1_1.jpg', 'pd10_sku1', '2018-07-02 20:13:48', '2018-07-02 20:13:48'),
(43, 'pd10_sku2_1.jpg', 'pd10_sku2', '2018-07-02 20:14:02', '2018-07-02 20:14:02'),
(44, 'pd10_sku3_1.jpg', 'pd10_sku3', '2018-07-02 20:14:15', '2018-07-02 20:14:15'),
(45, 'pd10_sku4_1.jpg', 'pd10_sku4', '2018-07-02 20:14:26', '2018-07-02 20:14:26'),
(46, 'pd11_sku1_1.jpg', 'pd11_sku1', '2018-07-02 20:15:34', '2018-07-02 20:15:34'),
(47, 'pd11_sku2_1.jpg', 'pd11_sku2', '2018-07-02 20:15:46', '2018-07-02 20:15:46'),
(48, 'pd11_sku3_1.jpg', 'pd11_sku3', '2018-07-02 20:15:56', '2018-07-02 20:15:56'),
(49, 'pd11_sku4_1.jpg', 'pd11_sku4', '2018-07-02 20:16:06', '2018-07-02 20:16:06'),
(50, 'pd12_sku1_1.jpg', 'pd12_sku1', '2018-07-02 20:17:14', '2018-07-02 20:17:14'),
(51, 'pd12_sku2_1.jpg', 'pd12_sku2', '2018-07-02 20:17:26', '2018-07-02 20:17:26'),
(52, 'pd12_sku3_1.jpg', 'pd12_sku3', '2018-07-02 20:17:37', '2018-07-02 20:17:37'),
(53, 'pd12_sku4_1.jpg', 'pd12_sku4', '2018-07-02 20:18:52', '2018-07-02 20:18:52'),
(54, 'pd13_sku1_1.jpg', 'pd13_sku1', '2018-07-02 20:20:27', '2018-07-02 20:20:27'),
(55, 'pd13_sku2_1.jpg', 'pd13_sku2', '2018-07-02 20:20:37', '2018-07-02 20:20:37'),
(56, 'pd13_sku3_1.jpg', 'pd13_sku3', '2018-07-02 20:20:50', '2018-07-02 20:20:50'),
(57, 'pd13_sku4_1.jpg', 'pd13_sku4', '2018-07-02 20:21:07', '2018-07-02 20:21:07'),
(58, 'pd13_sku5_1.jpg', 'pd13_sku5', '2018-07-02 20:21:18', '2018-07-02 20:21:18'),
(59, 'pd13_sku6_1.jpg', 'pd13_sku6', '2018-07-02 20:21:26', '2018-07-02 20:21:26'),
(60, 'pd14_sku1_1.jpg', 'pd14_sku1', '2018-07-02 20:27:02', '2018-07-02 20:27:02'),
(61, 'pd14_sku2_1.jpg', 'pd14_sku2', '2018-07-02 20:27:13', '2018-07-02 20:27:13'),
(62, 'pd15_sku1_1.jpg', 'pd15_sku1', '2018-07-02 20:30:36', '2018-07-02 20:30:36'),
(63, 'pd15_sku2_1.jpg', 'pd15_sku2', '2018-07-02 20:30:42', '2018-07-02 20:30:42'),
(64, 'pd15_sku3_1.jpg', 'pd15_sku3', '2018-07-02 20:30:53', '2018-07-02 20:30:53'),
(65, 'pd15_sku4_1.jpg', 'pd15_sku4', '2018-07-02 20:31:05', '2018-07-02 20:31:05'),
(66, 'pd17_sku1_1.jpg', 'pd17_sku1', '2018-07-02 20:35:07', '2018-07-02 20:35:07'),
(67, 'pd17_sku2_1.jpg', 'pd17_sku2', '2018-07-02 20:35:18', '2018-07-02 20:35:18'),
(68, 'pd17_sku3_1.jpg', 'pd17_sku3', '2018-07-02 20:35:29', '2018-07-02 20:35:29'),
(69, 'pd16_sku1_1.jpg', 'pd16_sku1', '2018-07-02 20:35:50', '2018-07-02 20:35:50'),
(70, 'pd16_sku2_1.jpg', 'pd16_sku2', '2018-07-02 20:35:57', '2018-07-02 20:35:57'),
(71, 'pd16_sku3_1.jpg', 'pd16_sku3', '2018-07-02 20:36:07', '2018-07-02 20:36:07'),
(72, 'pd18_sku1_1.jpg', 'pd18_sku1', '2018-07-02 20:38:49', '2018-07-02 20:38:49'),
(73, 'pd18_sku2_1.jpg', 'pd18_sku2', '2018-07-02 20:39:01', '2018-07-02 20:39:01'),
(74, 'pd18_sku3_1.jpg', 'pd18_sku3', '2018-07-02 20:39:16', '2018-07-02 20:39:16'),
(75, 'pd18_sku4_1.jpg', 'pd18_sku4', '2018-07-02 20:39:30', '2018-07-02 20:39:30'),
(76, 'pd19_sku1_1.jpg', 'pd19_sku1', '2018-07-02 20:41:05', '2018-07-02 20:41:05'),
(77, 'pd19_sku2_1.jpg', 'pd19_sku2', '2018-07-02 20:41:13', '2018-07-02 20:41:13'),
(78, 'pd19_sku3_1.jpg', 'pd19_sku3', '2018-07-02 20:41:23', '2018-07-02 20:41:23'),
(79, 'pd19_sku4_1.jpg', 'pd19_sku4', '2018-07-02 20:41:30', '2018-07-02 20:41:30'),
(80, 'pd19_sku5_1.jpg', 'pd19_sku5', '2018-07-02 20:41:39', '2018-07-02 20:41:39'),
(81, 'pd19_sku6_1.jpg', 'pd19_sku6', '2018-07-02 20:41:49', '2018-07-02 20:41:49'),
(82, 'pd19_sku7_1.jpg', 'pd19_sku7', '2018-07-02 20:41:50', '2018-07-02 20:41:50');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `optionName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `optionName`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 'Màu sắc', 1, '2018-07-02 14:03:56', '2018-07-02 14:03:56'),
(2, 'Size', 1, '2018-07-02 14:03:56', '2018-07-02 14:03:56'),
(3, 'Chất liệu', 1, '2018-07-02 15:37:35', '2018-07-02 15:37:35');

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `valueName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `optionID`, `valueName`, `isActive`, `created_at`, `updated_at`) VALUES
(1, 1, 'red', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(2, 1, 'blue', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(3, 1, 'green', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(4, 1, 'black', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(5, 1, 'white', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(6, 2, 'S', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(7, 2, 'M', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(8, 2, 'L', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(9, 2, 'XL', 1, '2018-07-02 14:04:07', '2018-07-02 14:04:07'),
(10, 2, '40', 1, '2018-07-02 15:37:50', '2018-07-02 15:37:50'),
(11, 2, '41', 1, '2018-07-02 15:37:54', '2018-07-02 15:37:54'),
(12, 2, '42', 1, '2018-07-02 15:37:57', '2018-07-02 15:37:57'),
(13, 2, '39', 1, '2018-07-02 15:38:02', '2018-07-02 15:38:02'),
(14, 3, 'Nỉ', 1, '2018-07-02 20:04:20', '2018-07-02 20:04:20'),
(15, 3, 'Da', 1, '2018-07-02 20:04:22', '2018-07-02 20:04:22'),
(16, 3, 'Cotton', 1, '2018-07-02 20:04:28', '2018-07-02 20:04:28'),
(17, 1, 'grey', 1, '2018-07-02 20:18:17', '2018-07-02 20:18:17'),
(18, 1, 'yellow', 1, '2018-07-02 20:18:25', '2018-07-02 20:18:25');

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `skus` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `payment_type`
--

INSERT INTO `payment_type` (`id`, `type`, `created_at`, `updated_at`) VALUES
(1, 'COD', '2018-07-02 14:04:38', '2018-07-02 14:04:38'),
(2, 'Thẻ debit', '2018-07-02 14:04:38', '2018-07-02 14:04:38'),
(3, 'Thẻ tín dụng', '2018-07-02 14:04:38', '2018-07-02 14:04:38');

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `productID`, `price`, `startdate`, `enddate`, `created_at`, `updated_at`) VALUES
(4, 3, 200000, '2018-07-02 21:24:23', NULL, '2018-07-02 14:24:23', '2018-07-02 14:24:23'),
(5, 4, 890000, '2018-07-02 21:41:38', NULL, '2018-07-02 14:41:38', '2018-07-02 14:41:38'),
(6, 5, 300000, '2018-07-02 22:25:14', NULL, '2018-07-02 15:25:14', '2018-07-02 15:25:14'),
(7, 6, 200000, '2018-07-02 22:27:56', NULL, '2018-07-02 15:27:56', '2018-07-02 15:27:56'),
(8, 7, 199000, '2018-07-03 02:59:16', NULL, '2018-07-02 19:59:16', '2018-07-02 19:59:16'),
(9, 8, 280000, '2018-07-03 03:01:53', NULL, '2018-07-02 20:01:53', '2018-07-02 20:01:53'),
(10, 9, 320000, '2018-07-03 03:08:14', NULL, '2018-07-02 20:08:14', '2018-07-02 20:08:14'),
(11, 10, 630000, '2018-07-03 03:13:31', NULL, '2018-07-02 20:13:31', '2018-07-02 20:13:31'),
(12, 11, 720000, '2018-07-03 03:15:15', NULL, '2018-07-02 20:15:15', '2018-07-02 20:15:15'),
(13, 12, 990000, '2018-07-03 03:16:47', NULL, '2018-07-02 20:16:47', '2018-07-02 20:16:47'),
(14, 13, 180000, '2018-07-03 03:20:09', NULL, '2018-07-02 20:20:09', '2018-07-02 20:20:09'),
(15, 14, 240000, '2018-07-03 03:26:41', NULL, '2018-07-02 20:26:41', '2018-07-02 20:26:41'),
(16, 15, 1000000, '2018-07-03 03:30:19', NULL, '2018-07-02 20:30:19', '2018-07-02 20:30:19'),
(17, 16, 230000, '2018-07-03 03:34:01', NULL, '2018-07-02 20:34:01', '2018-07-02 20:34:01'),
(18, 17, 240000, '2018-07-03 03:34:35', NULL, '2018-07-02 20:34:35', '2018-07-02 20:34:35'),
(19, 18, 500000, '2018-07-03 03:38:33', NULL, '2018-07-02 20:38:33', '2018-07-02 20:38:33'),
(20, 19, 80000, '2018-07-03 03:40:52', NULL, '2018-07-02 20:40:52', '2018-07-02 20:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `productName` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `productDescript` text COLLATE utf8_unicode_ci,
  `categoryID` int(11) DEFAULT NULL,
  `defaultImage` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `active` tinyint(1) DEFAULT '1',
  `price` int(11) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productDescript`, `categoryID`, `defaultImage`, `active`, `price`, `created_at`, `updated_at`) VALUES
(3, 'Áo thun uống rượu', 'Áo thun cute phomaique', 1, 'product_1.jpg', 0, 200000, '2018-07-02 07:24:23', '2018-07-02 15:27:27'),
(4, 'Biti\'s Hunter Nam Midnight X 2', 'Tinh thần: Là sản phầm thuộc dòng cao cấp Biti’s Hunter X, lấy ý tưởng từ trải nghiệm thành phố khi màn đêm buông xuống, chiến binh mới nhất Midnight Black mang theo vẻ đẹp phản ánh trọn cuộc sống về đêm của thành phố, của ánh đèn đường đô thị phồn hoa, tấp nập, đồng hành cùng những người trẻ trên hành trình “Đi và trải nghiệm”.  Thiết kế: khoác trên mình màu đen huyển bí - một sự bứt phá về mặt hình ảnh và thẩm mỹ.', 3, 'product_2.jpg', 1, 890000, '2018-07-02 07:41:38', '2018-07-02 07:41:38'),
(5, 'Cute Hoodie', 'Áo hoodie cute xinh xắn', 2, 'product_3.jpg', 1, 300000, '2018-07-02 15:25:14', '2018-07-02 15:25:14'),
(6, 'Áo thun nghiện rượu', 'Áo thun cute phomaique!', 1, 'product_4.jpg', 1, 200000, '2018-07-02 15:27:56', '2018-07-02 15:27:56'),
(7, 'Meowica America', 'Áo thun dành cho Hoàng Thượng, Báo đen', 1, 'product_5.jpg', 1, 199000, '2018-07-02 19:59:16', '2018-07-02 19:59:16'),
(8, 'NES Game - Blow Me!', 'Relive the good old days when we all had to work hard to make our games load.', 2, 'product_6.jpg', 1, 280000, '2018-07-02 20:01:53', '2018-07-02 20:01:53'),
(9, 'GIÀY THỂ THAO NAM DA MỀM ĐẸP THOÁNG', 'Thiết kế trẻ trung Dễ dàng phối trang phục Chất liệu cao cấp Mũi giày tròn Đế bằng cao su tổng hợp; xẻ rãnh chống trơn trượt', 3, 'product_7.jpg', 1, 320000, '2018-07-02 20:08:14', '2018-07-02 20:08:14'),
(10, 'Bitis Hunter Feast 3', 'Giày thể thao Bitis Hunter Feast 3 Sơn tùng có phần thân gia công từ chất liệu lưới Air Mesh, giúp thông thoáng, tạo cảm giác mát mẻ cho đôi chân của bạn trong quá trình vận động.', 3, 'product_8.jpg', 1, 630000, '2018-07-02 20:13:31', '2018-07-02 20:13:31'),
(11, 'Bitis Hunter Liteknit II', 'Biti\'s Hunter New Liteknit. Sở hữu nhiều cải tiến về công nghệ lẫn thiết kế, hứa hẹn sẽ gặt hái nhiều thành công. So với sản phẩm trước, phiên bản mới có sự thay đổi ở chất liệu quai dệt. Áp dụng công nghệ quai dệt mới có tên gọi Liteknit, có lỗ thoát khí giúp tạo sự thông thoáng. Bên cạnh đó, giày có kiểu dáng và cấu trúc mới đáp ứng các yêu cầu năng động giới trẻ, phù hợp với các hoạt động thể thao và sử dụng thường nhật. Phần đế từ chất liệu phylon siêu nhẹ, kết hợp đế tiếp đất cao su tạo sự ma sát tốt, chống trơn trượt, giúp người mang di chuyển thoải mái và dễ dàng.', 3, 'product_9.jpg', 1, 720000, '2018-07-02 20:15:15', '2018-07-02 20:15:15'),
(12, 'Bitis Hunter LightOut', 'Công nghệ Liteknit với quai dệt có lỗ thoát khí thông thoáng Phần đế từ chất liệu phylon siêu nhẹ Đế tiếp đất từ chất liệu cao su cao cấp Thiết kế thời trang, phong cách năng động', 3, 'product_10.jpg', 1, 990000, '2018-07-02 20:16:47', '2018-07-02 20:16:47'),
(13, 'Áo thun NesGame', 'Relive the good old days when we all had to work hard to make our games load.', 1, 'product_11.jpg', 1, 180000, '2018-07-02 20:20:09', '2018-07-02 20:20:09'),
(14, 'FORGIVEN HOODIES', '*I\'m not Perfect I\'m just FORGIVEN HOODIE', 2, 'product_12.jpg', 1, 240000, '2018-07-02 20:26:41', '2018-07-02 20:26:41'),
(15, 'Quần tập yoga nỉ', 'Thiết kế trẻ trung Dễ dàng phối trang phục Chất liệu cao cấp Mũi giày tròn Đế bằng cao su tổng hợp; xẻ rãnh chống trơn trượt', 4, 'product_13.jpg', 1, 1000000, '2018-07-02 20:30:19', '2018-07-02 20:30:19'),
(16, 'Hoodie Huge Robot', 'Huge Robot design by Freepik For more robots https://teespring.com/stores/robots-robot-hoodie-tshirt-top', 2, 'product_14.jpg', 1, 230000, '2018-07-02 20:34:01', '2018-07-02 20:34:01'),
(17, 'Áo hoodie bạch tuộc', 'Thiết kế trẻ trung Dễ dàng phối trang phục Chất liệu cao cấp Mũi giày tròn Đế bằng cao su tổng hợp; xẻ rãnh chống trơn trượt', 2, 'product_15.jpg', 1, 240000, '2018-07-02 20:34:35', '2018-07-02 20:34:35'),
(18, 'Áo khoác Ma bư', 'Thiết kế trẻ trung Dễ dàng phối trang phục Chất liệu cao cấp Mũi giày tròn Đế bằng cao su tổng hợp; xẻ rãnh chống trơn trượt', 2, 'product_16.jpg', 1, 500000, '2018-07-02 20:38:33', '2018-07-02 20:38:33'),
(19, 'Áo Thun Nam KiriMaru Basic', 'Áo thun tay dài - Chất liệu CVC 4 chiều, bề mặt mịn mượt và đẹp  - Thành phần PE trong sợi vải tăng độ bền, thích hợp với thời tiết mát mẻ.  - Công nghệ đặc biệt trong may dệt, hạn chế tối đa sự nhăn vải. - Thiết kế form tay dài đơn giản, dễ dàng mặc với nhiều trang phục khác nhau. - Nhiều màu sắc xu hướng để lựa chọn.', 1, 'product_17.jpg', 1, 80000, '2018-07-02 20:40:52', '2018-07-02 20:40:52');

--
-- Triggers `products`
--
DELIMITER $$
CREATE TRIGGER `tg_price` BEFORE UPDATE ON `products` FOR EACH ROW begin
   declare v_price int(11);
   select price into @v_price  from products where id = new.id;
   if (new.price <> @v_price)
   then
   	begin
   		update pricelist set enddate=CURRENT_TIME() WHERE productID=NEW.id;
        insert into pricelist(productID,price, startdate) values (New.id,NEW.price,CURRENT_TIME());
     end;
   end if;
end
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `tg_price_insert` AFTER INSERT ON `products` FOR EACH ROW begin
   declare v_price int(11);
   select price into @v_price  from products where id = new.id;
        insert into pricelist(productID,price, startdate) values (New.id,NEW.price,CURRENT_TIME());
   
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `sale_order`
--

CREATE TABLE `sale_order` (
  `id` int(11) NOT NULL,
  `paymentType` int(11) DEFAULT NULL,
  `shipper` int(11) DEFAULT NULL,
  `customer` int(11) DEFAULT NULL,
  `orderedDate` datetime DEFAULT NULL,
  `shippedDate` datetime DEFAULT NULL,
  `orderPhone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderAddress1` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderAddress2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `orderCity` int(11) DEFAULT NULL,
  `orderCountry` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `stt` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `companyName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skus`
--

CREATE TABLE `skus` (
  `productID` int(11) DEFAULT NULL,
  `skuCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `inStock` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skus`
--

INSERT INTO `skus` (`productID`, `skuCode`, `inStock`, `active`, `created_at`, `updated_at`) VALUES
(10, 'pd10_sku1', 10, 1, '2018-07-02 20:13:48', '2018-07-02 20:13:48'),
(10, 'pd10_sku2', 1, 1, '2018-07-02 20:14:02', '2018-07-02 20:14:02'),
(10, 'pd10_sku3', 10, 1, '2018-07-02 20:14:14', '2018-07-02 20:14:14'),
(10, 'pd10_sku4', 10, 1, '2018-07-02 20:14:26', '2018-07-02 20:14:26'),
(11, 'pd11_sku1', 1, 1, '2018-07-02 20:15:34', '2018-07-02 20:15:34'),
(11, 'pd11_sku2', 1, 1, '2018-07-02 20:15:46', '2018-07-02 20:15:46'),
(11, 'pd11_sku3', 1, 1, '2018-07-02 20:15:55', '2018-07-02 20:15:55'),
(11, 'pd11_sku4', 1, 1, '2018-07-02 20:16:06', '2018-07-02 20:16:06'),
(12, 'pd12_sku1', 10, 1, '2018-07-02 20:17:14', '2018-07-02 20:17:14'),
(12, 'pd12_sku2', 0, 1, '2018-07-02 20:17:26', '2018-07-02 20:17:26'),
(12, 'pd12_sku3', 19, 1, '2018-07-02 20:17:36', '2018-07-02 20:17:36'),
(12, 'pd12_sku4', 19, 1, '2018-07-02 20:18:51', '2018-07-02 20:18:51'),
(13, 'pd13_sku1', 0, 1, '2018-07-02 20:20:27', '2018-07-02 20:20:27'),
(13, 'pd13_sku2', 10, 1, '2018-07-02 20:20:37', '2018-07-02 20:20:37'),
(13, 'pd13_sku3', 0, 1, '2018-07-02 20:20:50', '2018-07-02 20:20:50'),
(13, 'pd13_sku4', 10, 1, '2018-07-02 20:21:07', '2018-07-02 20:21:07'),
(13, 'pd13_sku5', 10, 1, '2018-07-02 20:21:18', '2018-07-02 20:21:18'),
(13, 'pd13_sku6', 19, 1, '2018-07-02 20:21:26', '2018-07-02 20:21:26'),
(14, 'pd14_sku1', 0, 1, '2018-07-02 20:27:01', '2018-07-02 20:27:01'),
(14, 'pd14_sku2', 0, 1, '2018-07-02 20:27:12', '2018-07-02 20:27:12'),
(15, 'pd15_sku1', 10, 1, '2018-07-02 20:30:35', '2018-07-02 20:30:35'),
(15, 'pd15_sku2', 10, 1, '2018-07-02 20:30:42', '2018-07-02 20:30:42'),
(15, 'pd15_sku3', 10, 1, '2018-07-02 20:30:53', '2018-07-02 20:30:53'),
(15, 'pd15_sku4', 10, 1, '2018-07-02 20:31:05', '2018-07-02 20:31:05'),
(16, 'pd16_sku1', 0, 1, '2018-07-02 20:35:49', '2018-07-02 20:35:49'),
(16, 'pd16_sku2', 0, 1, '2018-07-02 20:35:57', '2018-07-02 20:35:57'),
(16, 'pd16_sku3', 10, 1, '2018-07-02 20:36:06', '2018-07-02 20:36:06'),
(17, 'pd17_sku1', 10, 1, '2018-07-02 20:35:07', '2018-07-02 20:35:07'),
(17, 'pd17_sku2', 10, 1, '2018-07-02 20:35:18', '2018-07-02 20:35:18'),
(17, 'pd17_sku3', 10, 1, '2018-07-02 20:35:28', '2018-07-02 20:35:28'),
(18, 'pd18_sku1', 10, 1, '2018-07-02 20:38:49', '2018-07-02 20:38:49'),
(18, 'pd18_sku2', 19, 1, '2018-07-02 20:39:01', '2018-07-02 20:39:01'),
(18, 'pd18_sku3', 10, 1, '2018-07-02 20:39:16', '2018-07-02 20:39:16'),
(18, 'pd18_sku4', 19, 1, '2018-07-02 20:39:30', '2018-07-02 20:39:30'),
(19, 'pd19_sku1', 10, 1, '2018-07-02 20:41:05', '2018-07-02 20:41:05'),
(19, 'pd19_sku2', 10, 1, '2018-07-02 20:41:13', '2018-07-02 20:41:13'),
(19, 'pd19_sku3', 0, 1, '2018-07-02 20:41:23', '2018-07-02 20:41:23'),
(19, 'pd19_sku4', 0, 1, '2018-07-02 20:41:30', '2018-07-02 20:41:30'),
(19, 'pd19_sku5', 10, 1, '2018-07-02 20:41:38', '2018-07-02 20:41:38'),
(19, 'pd19_sku6', 10, 1, '2018-07-02 20:41:49', '2018-07-02 20:41:49'),
(19, 'pd19_sku7', 10, 1, '2018-07-02 20:41:50', '2018-07-02 20:41:50'),
(3, 'pd3_sku1', 2, 1, '2018-07-02 07:26:55', '2018-07-02 07:26:55'),
(3, 'pd3_sku2', 3, 1, '2018-07-02 07:27:09', '2018-07-02 07:27:09'),
(4, 'pd4_sku1', 0, 1, '2018-07-02 15:38:24', '2018-07-02 15:38:24'),
(4, 'pd4_sku2', 0, 1, '2018-07-02 15:38:43', '2018-07-02 15:38:43'),
(4, 'pd4_sku3', 10, 1, '2018-07-02 15:38:59', '2018-07-02 15:38:59'),
(5, 'pd5_sku1', 10, 1, '2018-07-02 15:25:40', '2018-07-02 15:25:40'),
(5, 'pd5_sku2', 10, 1, '2018-07-02 15:25:56', '2018-07-02 15:25:56'),
(5, 'pd5_sku3', 10, 1, '2018-07-02 15:26:08', '2018-07-02 15:26:08'),
(6, 'pd6_sku1', 10, 1, '2018-07-02 15:28:17', '2018-07-02 15:28:17'),
(6, 'pd6_sku2', 10, 1, '2018-07-02 15:28:45', '2018-07-02 15:28:45'),
(7, 'pd7_sku1', 10, 1, '2018-07-02 19:59:43', '2018-07-02 19:59:43'),
(7, 'pd7_sku2', 10, 1, '2018-07-02 19:59:57', '2018-07-02 19:59:57'),
(7, 'pd7_sku3', 10, 1, '2018-07-02 20:00:06', '2018-07-02 20:00:06'),
(7, 'pd7_sku4', 10, 1, '2018-07-02 20:00:18', '2018-07-02 20:00:18'),
(7, 'pd7_sku5', 10, 1, '2018-07-02 20:00:33', '2018-07-02 20:00:33'),
(7, 'pd7_sku6', 10, 1, '2018-07-02 20:00:56', '2018-07-02 20:00:56'),
(7, 'pd7_sku7', 0, 1, '2018-07-02 20:01:03', '2018-07-02 20:01:03'),
(7, 'pd7_sku8', 10, 1, '2018-07-02 20:01:14', '2018-07-02 20:01:14'),
(7, 'pd7_sku9', 10, 1, '2018-07-02 20:01:24', '2018-07-02 20:01:24'),
(8, 'pd8_sku1', 10, 1, '2018-07-02 20:02:10', '2018-07-02 20:02:10'),
(8, 'pd8_sku2', 10, 1, '2018-07-02 20:02:20', '2018-07-02 20:02:20'),
(8, 'pd8_sku3', 10, 1, '2018-07-02 20:02:33', '2018-07-02 20:02:33'),
(8, 'pd8_sku4', 10, 1, '2018-07-02 20:02:42', '2018-07-02 20:02:42'),
(8, 'pd8_sku5', 0, 1, '2018-07-02 20:02:58', '2018-07-02 20:02:58'),
(8, 'pd8_sku6', 0, 1, '2018-07-02 20:03:15', '2018-07-02 20:03:15'),
(8, 'pd8_sku7', 10, 1, '2018-07-02 20:03:24', '2018-07-02 20:03:24'),
(8, 'pd8_sku8', 10, 1, '2018-07-02 20:03:32', '2018-07-02 20:03:32'),
(9, 'pd9_sku1', 10, 1, '2018-07-02 20:08:31', '2018-07-02 20:08:31'),
(9, 'pd9_sku2', 10, 1, '2018-07-02 20:08:43', '2018-07-02 20:08:43'),
(9, 'pd9_sku3', 10, 1, '2018-07-02 20:08:58', '2018-07-02 20:08:58'),
(9, 'pd9_sku4', 10, 1, '2018-07-02 20:09:11', '2018-07-02 20:09:11'),
(9, 'pd9_sku5', 10, 1, '2018-07-02 20:09:22', '2018-07-02 20:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `stt_order`
--

CREATE TABLE `stt_order` (
  `id` int(11) NOT NULL,
  `sttName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stt_order`
--

INSERT INTO `stt_order` (`id`, `sttName`, `created_at`, `updated_at`) VALUES
(1, 'draft', '2018-07-02 14:05:53', '2018-07-02 14:05:54'),
(2, 'shipping', '2018-07-02 14:05:53', '2018-07-02 14:05:54'),
(3, 'paid', '2018-07-02 14:05:53', '2018-07-02 14:05:54'),
(4, 'canceled', '2018-07-02 14:05:53', '2018-07-02 14:05:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) NOT NULL,
  `firstName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `lastName` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `verified` tinyint(1) DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `address2` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` int(11) DEFAULT NULL,
  `country` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isAdmin` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `verified`, `phone`, `address`, `address2`, `city`, `country`, `remember_token`, `isAdmin`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Chi', 'Truong', 'miriki@gmail.com', '$2y$12$rvNv5gfMFrSWptN4PfvrR.lZO1ZqedaU7hXYxxq9NMN0n9arkkYsC', 1, NULL, NULL, NULL, NULL, NULL, 'ws28XkJUgvQLTzrBoNYv3MxkmxuDhm2knLWk4wPdOwnlFnQud1XE88jy0Cyw', 0, NULL, NULL, 1),
(2, 'MInh', 'Doan', 'namminhlp@gmail.com', '$2y$12$rvNv5gfMFrSWptN4PfvrR.lZO1ZqedaU7hXYxxq9NMN0n9arkkYsC', 1, NULL, NULL, NULL, NULL, NULL, 'BaJdasOht19IQcQ9qX87EjsOo6lrhPcM6iN3CpPDVlpqaSx9yO8tOPJYlnkz', 1, NULL, NULL, 1),
(3, 'Minh', 'Đoàn', 'minhdoan@gmail.com', '$2y$12$l.L.a.DDaoVbTMBlSlWQpuqanGRe4x1jxicH3/Y7V2JVqSa/NRTkS', 1, '0123456789', 'KTX khu B', 'Thủ Đức', 1, 'Vietnam', '4fHhRMHtihhFZXUppp6MdJ0lX1WtMWed2mrOgiurhW5iix9nbv7b48lNlAdS', 0, '2018-07-02 15:53:41', '2018-07-02 15:53:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `skuCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `optionID` int(11) NOT NULL,
  `valueID` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`skuCode`, `optionID`, `valueID`, `created_at`, `updated_at`) VALUES
('pd10_sku1', 1, 2, '2018-07-02 20:13:48', '2018-07-02 20:13:48'),
('pd10_sku1', 2, 10, '2018-07-02 20:13:48', '2018-07-02 20:13:48'),
('pd10_sku2', 1, 2, '2018-07-02 20:14:02', '2018-07-02 20:14:02'),
('pd10_sku2', 2, 11, '2018-07-02 20:14:02', '2018-07-02 20:14:02'),
('pd10_sku3', 1, 3, '2018-07-02 20:14:15', '2018-07-02 20:14:15'),
('pd10_sku3', 2, 10, '2018-07-02 20:14:15', '2018-07-02 20:14:15'),
('pd10_sku4', 1, 3, '2018-07-02 20:14:26', '2018-07-02 20:14:26'),
('pd10_sku4', 2, 11, '2018-07-02 20:14:26', '2018-07-02 20:14:26'),
('pd11_sku1', 1, 4, '2018-07-02 20:15:34', '2018-07-02 20:15:34'),
('pd11_sku1', 2, 10, '2018-07-02 20:15:34', '2018-07-02 20:15:34'),
('pd11_sku2', 1, 1, '2018-07-02 20:15:46', '2018-07-02 20:15:46'),
('pd11_sku2', 2, 10, '2018-07-02 20:15:46', '2018-07-02 20:15:46'),
('pd11_sku3', 1, 1, '2018-07-02 20:15:55', '2018-07-02 20:15:55'),
('pd11_sku3', 2, 11, '2018-07-02 20:15:56', '2018-07-02 20:15:56'),
('pd11_sku4', 1, 1, '2018-07-02 20:16:06', '2018-07-02 20:16:06'),
('pd11_sku4', 2, 12, '2018-07-02 20:16:06', '2018-07-02 20:16:06'),
('pd12_sku1', 1, 4, '2018-07-02 20:17:14', '2018-07-02 20:17:14'),
('pd12_sku1', 2, 11, '2018-07-02 20:17:14', '2018-07-02 20:17:14'),
('pd12_sku2', 1, 5, '2018-07-02 20:17:26', '2018-07-02 20:17:26'),
('pd12_sku2', 2, 11, '2018-07-02 20:17:26', '2018-07-02 20:17:26'),
('pd12_sku3', 1, 5, '2018-07-02 20:17:37', '2018-07-02 20:17:37'),
('pd12_sku3', 2, 12, '2018-07-02 20:17:37', '2018-07-02 20:17:37'),
('pd12_sku4', 1, 17, '2018-07-02 20:18:51', '2018-07-02 20:18:51'),
('pd12_sku4', 2, 11, '2018-07-02 20:18:52', '2018-07-02 20:18:52'),
('pd13_sku1', 1, 2, '2018-07-02 20:20:27', '2018-07-02 20:20:27'),
('pd13_sku1', 2, 10, '2018-07-02 20:20:27', '2018-07-02 20:20:27'),
('pd13_sku2', 1, 2, '2018-07-02 20:20:37', '2018-07-02 20:20:37'),
('pd13_sku2', 2, 11, '2018-07-02 20:20:37', '2018-07-02 20:20:37'),
('pd13_sku3', 1, 18, '2018-07-02 20:20:50', '2018-07-02 20:20:50'),
('pd13_sku3', 2, 10, '2018-07-02 20:20:50', '2018-07-02 20:20:50'),
('pd13_sku4', 1, 18, '2018-07-02 20:21:07', '2018-07-02 20:21:07'),
('pd13_sku4', 2, 8, '2018-07-02 20:21:07', '2018-07-02 20:21:07'),
('pd13_sku5', 1, 3, '2018-07-02 20:21:18', '2018-07-02 20:21:18'),
('pd13_sku5', 2, 7, '2018-07-02 20:21:18', '2018-07-02 20:21:18'),
('pd13_sku6', 1, 3, '2018-07-02 20:21:26', '2018-07-02 20:21:26'),
('pd13_sku6', 2, 8, '2018-07-02 20:21:26', '2018-07-02 20:21:26'),
('pd14_sku1', 1, 17, '2018-07-02 20:27:01', '2018-07-02 20:27:01'),
('pd14_sku1', 2, 8, '2018-07-02 20:27:01', '2018-07-02 20:27:01'),
('pd14_sku2', 1, 1, '2018-07-02 20:27:13', '2018-07-02 20:27:13'),
('pd14_sku2', 2, 7, '2018-07-02 20:27:13', '2018-07-02 20:27:13'),
('pd15_sku1', 1, 4, '2018-07-02 20:30:35', '2018-07-02 20:30:35'),
('pd15_sku1', 3, 16, '2018-07-02 20:30:36', '2018-07-02 20:30:36'),
('pd15_sku2', 1, 4, '2018-07-02 20:30:42', '2018-07-02 20:30:42'),
('pd15_sku2', 3, 16, '2018-07-02 20:30:42', '2018-07-02 20:30:42'),
('pd15_sku3', 1, 2, '2018-07-02 20:30:53', '2018-07-02 20:30:53'),
('pd15_sku3', 3, 16, '2018-07-02 20:30:53', '2018-07-02 20:30:53'),
('pd15_sku4', 1, 2, '2018-07-02 20:31:05', '2018-07-02 20:31:05'),
('pd15_sku4', 3, 16, '2018-07-02 20:31:05', '2018-07-02 20:31:05'),
('pd16_sku1', 1, 3, '2018-07-02 20:35:50', '2018-07-02 20:35:50'),
('pd16_sku1', 2, 7, '2018-07-02 20:35:50', '2018-07-02 20:35:50'),
('pd16_sku1', 3, 14, '2018-07-02 20:35:50', '2018-07-02 20:35:50'),
('pd16_sku2', 1, 3, '2018-07-02 20:35:57', '2018-07-02 20:35:57'),
('pd16_sku2', 2, 7, '2018-07-02 20:35:57', '2018-07-02 20:35:57'),
('pd16_sku2', 3, 15, '2018-07-02 20:35:57', '2018-07-02 20:35:57'),
('pd16_sku3', 1, 3, '2018-07-02 20:36:06', '2018-07-02 20:36:06'),
('pd16_sku3', 2, 8, '2018-07-02 20:36:06', '2018-07-02 20:36:06'),
('pd16_sku3', 3, 14, '2018-07-02 20:36:07', '2018-07-02 20:36:07'),
('pd17_sku1', 1, 2, '2018-07-02 20:35:07', '2018-07-02 20:35:07'),
('pd17_sku1', 2, 7, '2018-07-02 20:35:07', '2018-07-02 20:35:07'),
('pd17_sku2', 1, 5, '2018-07-02 20:35:18', '2018-07-02 20:35:18'),
('pd17_sku2', 2, 7, '2018-07-02 20:35:18', '2018-07-02 20:35:18'),
('pd17_sku3', 1, 5, '2018-07-02 20:35:28', '2018-07-02 20:35:28'),
('pd17_sku3', 2, 8, '2018-07-02 20:35:28', '2018-07-02 20:35:28'),
('pd18_sku1', 1, 4, '2018-07-02 20:38:49', '2018-07-02 20:38:49'),
('pd18_sku1', 3, 15, '2018-07-02 20:38:49', '2018-07-02 20:38:49'),
('pd18_sku2', 1, 4, '2018-07-02 20:39:01', '2018-07-02 20:39:01'),
('pd18_sku2', 3, 14, '2018-07-02 20:39:01', '2018-07-02 20:39:01'),
('pd18_sku3', 1, 17, '2018-07-02 20:39:16', '2018-07-02 20:39:16'),
('pd18_sku3', 3, 16, '2018-07-02 20:39:16', '2018-07-02 20:39:16'),
('pd18_sku4', 1, 17, '2018-07-02 20:39:30', '2018-07-02 20:39:30'),
('pd18_sku4', 3, 15, '2018-07-02 20:39:30', '2018-07-02 20:39:30'),
('pd19_sku1', 1, 3, '2018-07-02 20:41:05', '2018-07-02 20:41:05'),
('pd19_sku1', 2, 8, '2018-07-02 20:41:05', '2018-07-02 20:41:05'),
('pd19_sku2', 1, 3, '2018-07-02 20:41:13', '2018-07-02 20:41:13'),
('pd19_sku2', 2, 7, '2018-07-02 20:41:13', '2018-07-02 20:41:13'),
('pd19_sku3', 1, 1, '2018-07-02 20:41:23', '2018-07-02 20:41:23'),
('pd19_sku3', 2, 7, '2018-07-02 20:41:23', '2018-07-02 20:41:23'),
('pd19_sku4', 1, 1, '2018-07-02 20:41:30', '2018-07-02 20:41:30'),
('pd19_sku4', 2, 7, '2018-07-02 20:41:30', '2018-07-02 20:41:30'),
('pd19_sku5', 1, 5, '2018-07-02 20:41:39', '2018-07-02 20:41:39'),
('pd19_sku5', 2, 7, '2018-07-02 20:41:39', '2018-07-02 20:41:39'),
('pd19_sku6', 1, 5, '2018-07-02 20:41:49', '2018-07-02 20:41:49'),
('pd19_sku6', 2, 7, '2018-07-02 20:41:49', '2018-07-02 20:41:49'),
('pd19_sku7', 1, 5, '2018-07-02 20:41:50', '2018-07-02 20:41:50'),
('pd19_sku7', 2, 7, '2018-07-02 20:41:50', '2018-07-02 20:41:50'),
('pd3_sku1', 1, 1, '2018-07-02 07:26:56', '2018-07-02 07:26:56'),
('pd3_sku1', 2, 6, '2018-07-02 07:26:56', '2018-07-02 07:26:56'),
('pd3_sku2', 1, 1, '2018-07-02 07:27:09', '2018-07-02 07:27:09'),
('pd3_sku2', 2, 7, '2018-07-02 07:27:09', '2018-07-02 07:27:09'),
('pd4_sku1', 1, 4, '2018-07-02 15:38:24', '2018-07-02 15:38:24'),
('pd4_sku1', 2, 13, '2018-07-02 15:38:24', '2018-07-02 15:38:24'),
('pd4_sku2', 1, 4, '2018-07-02 15:38:43', '2018-07-02 15:38:43'),
('pd4_sku2', 2, 11, '2018-07-02 15:38:43', '2018-07-02 15:38:43'),
('pd4_sku3', 1, 4, '2018-07-02 15:38:59', '2018-07-02 15:38:59'),
('pd4_sku3', 2, 12, '2018-07-02 15:38:59', '2018-07-02 15:38:59'),
('pd5_sku1', 1, 5, '2018-07-02 15:25:40', '2018-07-02 15:25:40'),
('pd5_sku1', 2, 6, '2018-07-02 15:25:40', '2018-07-02 15:25:40'),
('pd5_sku2', 1, 5, '2018-07-02 15:25:56', '2018-07-02 15:25:56'),
('pd5_sku2', 2, 8, '2018-07-02 15:25:56', '2018-07-02 15:25:56'),
('pd5_sku3', 1, 2, '2018-07-02 15:26:08', '2018-07-02 15:26:08'),
('pd5_sku3', 2, 8, '2018-07-02 15:26:08', '2018-07-02 15:26:08'),
('pd6_sku1', 1, 4, '2018-07-02 15:28:17', '2018-07-02 15:28:17'),
('pd6_sku1', 2, 7, '2018-07-02 15:28:18', '2018-07-02 15:28:18'),
('pd6_sku2', 1, 4, '2018-07-02 15:28:46', '2018-07-02 15:28:46'),
('pd6_sku2', 2, 8, '2018-07-02 15:28:46', '2018-07-02 15:28:46'),
('pd7_sku1', 1, 4, '2018-07-02 19:59:43', '2018-07-02 19:59:43'),
('pd7_sku1', 2, 6, '2018-07-02 19:59:44', '2018-07-02 19:59:44'),
('pd7_sku2', 1, 4, '2018-07-02 19:59:57', '2018-07-02 19:59:57'),
('pd7_sku2', 2, 7, '2018-07-02 19:59:57', '2018-07-02 19:59:57'),
('pd7_sku3', 1, 4, '2018-07-02 20:00:06', '2018-07-02 20:00:06'),
('pd7_sku3', 2, 8, '2018-07-02 20:00:07', '2018-07-02 20:00:07'),
('pd7_sku4', 1, 3, '2018-07-02 20:00:18', '2018-07-02 20:00:18'),
('pd7_sku4', 2, 8, '2018-07-02 20:00:19', '2018-07-02 20:00:19'),
('pd7_sku5', 1, 3, '2018-07-02 20:00:33', '2018-07-02 20:00:33'),
('pd7_sku5', 2, 7, '2018-07-02 20:00:34', '2018-07-02 20:00:34'),
('pd7_sku6', 1, 2, '2018-07-02 20:00:56', '2018-07-02 20:00:56'),
('pd7_sku6', 2, 8, '2018-07-02 20:00:56', '2018-07-02 20:00:56'),
('pd7_sku7', 1, 2, '2018-07-02 20:01:03', '2018-07-02 20:01:03'),
('pd7_sku7', 2, 7, '2018-07-02 20:01:04', '2018-07-02 20:01:04'),
('pd7_sku8', 1, 5, '2018-07-02 20:01:14', '2018-07-02 20:01:14'),
('pd7_sku8', 2, 7, '2018-07-02 20:01:14', '2018-07-02 20:01:14'),
('pd7_sku9', 1, 5, '2018-07-02 20:01:24', '2018-07-02 20:01:24'),
('pd7_sku9', 2, 8, '2018-07-02 20:01:24', '2018-07-02 20:01:24'),
('pd8_sku1', 1, 5, '2018-07-02 20:02:10', '2018-07-02 20:02:10'),
('pd8_sku1', 2, 8, '2018-07-02 20:02:10', '2018-07-02 20:02:10'),
('pd8_sku2', 1, 5, '2018-07-02 20:02:20', '2018-07-02 20:02:20'),
('pd8_sku2', 2, 7, '2018-07-02 20:02:20', '2018-07-02 20:02:20'),
('pd8_sku3', 1, 4, '2018-07-02 20:02:33', '2018-07-02 20:02:33'),
('pd8_sku3', 2, 8, '2018-07-02 20:02:33', '2018-07-02 20:02:33'),
('pd8_sku4', 1, 4, '2018-07-02 20:02:42', '2018-07-02 20:02:42'),
('pd8_sku4', 2, 7, '2018-07-02 20:02:42', '2018-07-02 20:02:42'),
('pd8_sku5', 1, 2, '2018-07-02 20:02:58', '2018-07-02 20:02:58'),
('pd8_sku5', 2, 7, '2018-07-02 20:02:59', '2018-07-02 20:02:59'),
('pd8_sku6', 1, 2, '2018-07-02 20:03:15', '2018-07-02 20:03:15'),
('pd8_sku6', 2, 9, '2018-07-02 20:03:15', '2018-07-02 20:03:15'),
('pd8_sku7', 1, 1, '2018-07-02 20:03:24', '2018-07-02 20:03:24'),
('pd8_sku7', 2, 9, '2018-07-02 20:03:24', '2018-07-02 20:03:24'),
('pd8_sku8', 1, 1, '2018-07-02 20:03:32', '2018-07-02 20:03:32'),
('pd8_sku8', 2, 8, '2018-07-02 20:03:32', '2018-07-02 20:03:32'),
('pd9_sku1', 1, 4, '2018-07-02 20:08:31', '2018-07-02 20:08:31'),
('pd9_sku1', 2, 10, '2018-07-02 20:08:31', '2018-07-02 20:08:31'),
('pd9_sku1', 3, 15, '2018-07-02 20:08:31', '2018-07-02 20:08:31'),
('pd9_sku2', 1, 4, '2018-07-02 20:08:43', '2018-07-02 20:08:43'),
('pd9_sku2', 2, 11, '2018-07-02 20:08:43', '2018-07-02 20:08:43'),
('pd9_sku2', 3, 15, '2018-07-02 20:08:43', '2018-07-02 20:08:43'),
('pd9_sku3', 1, 4, '2018-07-02 20:08:59', '2018-07-02 20:08:59'),
('pd9_sku3', 2, 12, '2018-07-02 20:08:59', '2018-07-02 20:08:59'),
('pd9_sku3', 3, 15, '2018-07-02 20:08:59', '2018-07-02 20:08:59'),
('pd9_sku4', 1, 1, '2018-07-02 20:09:11', '2018-07-02 20:09:11'),
('pd9_sku4', 2, 10, '2018-07-02 20:09:12', '2018-07-02 20:09:12'),
('pd9_sku4', 3, 15, '2018-07-02 20:09:12', '2018-07-02 20:09:12'),
('pd9_sku5', 1, 1, '2018-07-02 20:09:22', '2018-07-02 20:09:22'),
('pd9_sku5', 2, 11, '2018-07-02 20:09:22', '2018-07-02 20:09:22'),
('pd9_sku5', 3, 15, '2018-07-02 20:09:22', '2018-07-02 20:09:22');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cityName` (`cityName`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skuCode` (`skuCode`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `option_values`
--
ALTER TABLE `option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `optionID` (`optionID`);

--
-- Indexes for table `order_line`
--
ALTER TABLE `order_line`
  ADD PRIMARY KEY (`id`),
  ADD KEY `skus` (`skus`),
  ADD KEY `orderID` (`orderID`);

--
-- Indexes for table `payment_type`
--
ALTER TABLE `payment_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_price` (`productID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categoryID` (`categoryID`);

--
-- Indexes for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stt` (`stt`),
  ADD KEY `paymentType` (`paymentType`),
  ADD KEY `shipper` (`shipper`),
  ADD KEY `orderCity` (`orderCity`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skus`
--
ALTER TABLE `skus`
  ADD PRIMARY KEY (`skuCode`),
  ADD KEY `fk_product_skus` (`productID`);

--
-- Indexes for table `stt_order`
--
ALTER TABLE `stt_order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `fk_city_user` (`city`);

--
-- Indexes for table `variants`
--
ALTER TABLE `variants`
  ADD PRIMARY KEY (`skuCode`,`optionID`),
  ADD KEY `valueID` (`valueID`),
  ADD KEY `optionID` (`optionID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `sale_order`
--
ALTER TABLE `sale_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stt_order`
--
ALTER TABLE `stt_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`skuCode`) REFERENCES `skus` (`skuCode`);

--
-- Constraints for table `option_values`
--
ALTER TABLE `option_values`
  ADD CONSTRAINT `option_values_ibfk_1` FOREIGN KEY (`optionID`) REFERENCES `options` (`id`);

--
-- Constraints for table `order_line`
--
ALTER TABLE `order_line`
  ADD CONSTRAINT `order_line_ibfk_1` FOREIGN KEY (`skus`) REFERENCES `skus` (`skuCode`),
  ADD CONSTRAINT `order_line_ibfk_2` FOREIGN KEY (`orderID`) REFERENCES `sale_order` (`id`);

--
-- Constraints for table `pricelist`
--
ALTER TABLE `pricelist`
  ADD CONSTRAINT `fk_product_price` FOREIGN KEY (`productID`) REFERENCES `products` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categoryID`) REFERENCES `categories` (`id`);

--
-- Constraints for table `sale_order`
--
ALTER TABLE `sale_order`
  ADD CONSTRAINT `sale_order_ibfk_1` FOREIGN KEY (`stt`) REFERENCES `stt_order` (`id`),
  ADD CONSTRAINT `sale_order_ibfk_2` FOREIGN KEY (`paymentType`) REFERENCES `payment_type` (`id`),
  ADD CONSTRAINT `sale_order_ibfk_3` FOREIGN KEY (`shipper`) REFERENCES `shipper` (`id`),
  ADD CONSTRAINT `sale_order_ibfk_4` FOREIGN KEY (`orderCity`) REFERENCES `city` (`id`);

--
-- Constraints for table `skus`
--
ALTER TABLE `skus`
  ADD CONSTRAINT `fk_product_skus` FOREIGN KEY (`productID`) REFERENCES `products` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `fk_city_user` FOREIGN KEY (`city`) REFERENCES `city` (`id`);

--
-- Constraints for table `variants`
--
ALTER TABLE `variants`
  ADD CONSTRAINT `variants_ibfk_1` FOREIGN KEY (`valueID`) REFERENCES `option_values` (`id`),
  ADD CONSTRAINT `variants_ibfk_2` FOREIGN KEY (`skuCode`) REFERENCES `skus` (`skuCode`),
  ADD CONSTRAINT `variants_ibfk_3` FOREIGN KEY (`optionID`) REFERENCES `options` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
