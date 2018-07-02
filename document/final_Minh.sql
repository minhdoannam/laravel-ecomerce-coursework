-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 01, 2018 at 04:50 PM
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
-- Database: `test5`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `isActive`) VALUES
(1, 'Áo thun', 1),
(2, 'Hoodie', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `id` int(11) NOT NULL,
  `cityName` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`id`, `cityName`) VALUES
(6, 'Bà Rịa - Vũng Tàu'),
(13, 'Bình Định'),
(5, 'Bình Thuận'),
(10, 'Daklak'),
(4, 'Đà Nẵng'),
(2, 'Hà Nội'),
(3, 'Hải Phòng'),
(1, 'Hồ Chí Minh'),
(7, 'Long An'),
(9, 'Ninh Thuận'),
(14, 'Quảng Nam'),
(11, 'Quảng Ngãi'),
(12, 'Thanh Hóa'),
(8, 'Tiền Giang');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `url` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `skuCode` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `url`, `skuCode`) VALUES
(1, '1_black.jpg', 'TS1_1001'),
(2, '1_black.jpg', 'TS1_1002'),
(3, '1_black.jpg', 'TS1_1003'),
(4, '2_black.jpg', 'HD2_1001'),
(5, '2_black.jpg', 'HD2_1002'),
(6, '2_black.jpg', 'HD2_1003'),
(7, '2_gray.jpg', 'HD2_1004'),
(8, '2_gray.jpg', 'HD2_1005'),
(9, '2_gray.jpg', 'HD2_1006');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `optionName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `optionName`, `isActive`) VALUES
(1, 'Màu sắc', 1),
(2, 'Size', 1);

-- --------------------------------------------------------

--
-- Table structure for table `option_values`
--

CREATE TABLE `option_values` (
  `id` int(11) NOT NULL,
  `optionID` int(11) DEFAULT NULL,
  `valueName` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `isActive` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `option_values`
--

INSERT INTO `option_values` (`id`, `optionID`, `valueName`, `isActive`) VALUES
(1, 1, 'red', 1),
(2, 1, 'blue', 1),
(3, 1, 'green', 1),
(4, 1, 'black', 1),
(5, 1, 'white', 1),
(6, 2, 'S', 1),
(7, 2, 'M', 1),
(8, 2, 'L', 1),
(9, 2, 'XL', 1);

-- --------------------------------------------------------

--
-- Table structure for table `order_line`
--

CREATE TABLE `order_line` (
  `id` int(11) NOT NULL,
  `orderID` int(11) NOT NULL,
  `skus` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_type`
--

CREATE TABLE `payment_type` (
  `id` int(11) NOT NULL,
  `type` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pricelist`
--

CREATE TABLE `pricelist` (
  `id` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `price` float DEFAULT NULL,
  `startdate` datetime DEFAULT NULL,
  `enddate` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pricelist`
--

INSERT INTO `pricelist` (`id`, `productID`, `price`, `startdate`, `enddate`) VALUES
(1, 1, 150000, '2018-06-10 00:00:00', NULL),
(2, 2, 220000, '2018-06-10 00:00:00', NULL);

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
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `productName`, `productDescript`, `categoryID`, `defaultImage`, `active`) VALUES
(1, 'Cute Bulldog T-shirt', 'Áo thun dành cho mấy đứa mê chó Bulldog!\r\n\r\nÁo thun nam sành điệucó thiết kế cổ tròn, tay ngắn mang lại cho phái mạnh phong cách nam tính và lịch lãm khi mặc hàng ngày\r\nForm áo ôm vừa vặn thoải mái khi mặc hằng ngàyhay các hoạt động mang lại sự tự tin và năng động cho phái mạnh\r\nÁo trơn màu đơn giản tạo nên nét nam tính mạnh mẽ cho nam giới khi mặc, giúp phái mạnhluôn cá tính,thời thượng\r\nĐường chỉ may đẹp, tinh tế mang đến sự an tâm tuyệt đối cho nam giới khi sử dụng sản phẩm\r\nMàu sắc đa dạng, cá tính,nổi bật,dễ phối đồ, rất cuốn hút khi mặc vận động thể thao hay đi chơi\r\nChất liệu thun mềm mại, thoáng mát, thấm hút tốt, không lo hầm bí khi mặc\r\nKết hợp hài hòa được với các trang phục từ bụi bặm cá tính như quần short, quần jean đến những phong cách đơn giản cổ điển như quần tây quần kaki,..', 1, '1_black.jpg', 1),
(2, 'Cute Bulldog Hoodie', 'Áo Hoodie dành cho mấy chế mê Bulldog!\r\nChất liệu thun mềm mại co giãn tốt , thoáng mát\r\nThiết kế thời trang phù hợp xu hướng hiện nay\r\nKiểu dáng đa phong cáchĐường may tinh tế sắc sảo\r\nSize XS cho người từ 25-35 kg\r\nÁo thun được thiết kế vể đẹp trẻ trung năng động nhưng không kém phần mạnh mẽ.\r\nÁo được thiết kế đẹp, chuẩn form, đường may sắc xảo, vải cotton dày, mịn, thấm hút mồ hôi tạo sự thoải mái khi mặc!\r\nDễ dàng phối trang phục , thích hợp đi chơi đi làm đi dạo phố\r\nThích hợp cho sự kết hợp vứi quần jean, sọt,kaki!', 2, '2_black.jpg', 1);

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
  `stt` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `id` int(11) NOT NULL,
  `companyName` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `skus`
--

CREATE TABLE `skus` (
  `productID` int(11) DEFAULT NULL,
  `skuCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `inStock` int(11) DEFAULT '0',
  `active` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `skus`
--

INSERT INTO `skus` (`productID`, `skuCode`, `inStock`, `active`) VALUES
(2, 'HD2_1001', 10, 1),
(2, 'HD2_1002', 10, 1),
(2, 'HD2_1003', 10, 1),
(2, 'HD2_1004', 10, 1),
(2, 'HD2_1005', 10, 1),
(2, 'HD2_1006', 10, 1),
(1, 'TS1_1001', 10, 1),
(1, 'TS1_1002', 10, 1),
(1, 'TS1_1003', 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `stt_order`
--

CREATE TABLE `stt_order` (
  `id` int(11) NOT NULL,
  `sttName` varchar(10) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stt_order`
--

INSERT INTO `stt_order` (`id`, `sttName`) VALUES
(1, 'draft'),
(2, 'shipping'),
(3, 'paid'),
(4, 'canceled');

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
  `create_at` timestamp NULL DEFAULT NULL,
  `update_at` timestamp NULL DEFAULT NULL,
  `isActive` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstName`, `lastName`, `email`, `password`, `verified`, `phone`, `address`, `address2`, `city`, `country`, `remember_token`, `isAdmin`, `create_at`, `update_at`, `isActive`) VALUES
(1, 'Chi', 'Truong', 'mikiki@gmail.com', '$2y$12$obpJDbeUBwtluSgMrgQJ2.PWiyVEqHi9vhKOjlXaEldiLO3QTuae2', 1, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 1),
(2, 'MInh', 'Doan', 'namminhlp@gmail.com', '$2y$12$rvNv5gfMFrSWptN4PfvrR.lZO1ZqedaU7hXYxxq9NMN0n9arkkYsC', 1, NULL, NULL, NULL, NULL, NULL, 'YRp79xlSNc63aOpVtJpNDFRhK1jmWFqyb5DqOA4o4zyYmgRqTVQPwCKcLp8A', 1, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `variants`
--

CREATE TABLE `variants` (
  `skuCode` varchar(15) COLLATE utf8_unicode_ci NOT NULL,
  `optionID` int(11) NOT NULL,
  `valueID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `variants`
--

INSERT INTO `variants` (`skuCode`, `optionID`, `valueID`) VALUES
('HD2_1001', 1, 4),
('HD2_1002', 1, 4),
('HD2_1003', 1, 4),
('TS1_1001', 1, 4),
('TS1_1002', 1, 4),
('TS1_1003', 1, 4),
('HD2_1004', 1, 5),
('HD2_1005', 1, 5),
('HD2_1006', 1, 5),
('HD2_1001', 2, 6),
('HD2_1004', 2, 6),
('TS1_1001', 2, 6),
('HD2_1002', 2, 7),
('HD2_1005', 2, 7),
('TS1_1002', 2, 7),
('HD2_1003', 2, 8),
('HD2_1006', 2, 8),
('TS1_1003', 2, 8);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `option_values`
--
ALTER TABLE `option_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `order_line`
--
ALTER TABLE `order_line`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payment_type`
--
ALTER TABLE `payment_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pricelist`
--
ALTER TABLE `pricelist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
