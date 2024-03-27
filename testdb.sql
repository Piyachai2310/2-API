-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2024 at 05:41 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `testdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(64) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `image_url` varchar(128) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_type_id`, `price`, `image_url`, `stock`) VALUES
(0, 'SSD', 3, 12000, '', 10),
(1, 'AMD AM4 ATHLON 3000G (NEXT)', 1, 3090, '1.webp', 10),
(2, 'INTEL CORE I3-10100 LGA 1200', 1, 2780, '2.webp', 5),
(3, 'MSI B560 PRO-E', 2, 2780, '3.webp', 7),
(4, 'GIGABYTE B560M GAMING HD (REV. 1.1)', 2, 2950, '4.webp', 4),
(5, 'DD4(2400) 4GB HYNIX 8 CHIP', 3, 670, '5.webp', 12);

-- --------------------------------------------------------

--
-- Table structure for table `product_types`
--

CREATE TABLE `product_types` (
  `product_type_id` int(11) NOT NULL,
  `product_type_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `product_types`
--

INSERT INTO `product_types` (`product_type_id`, `product_type_name`) VALUES
(1, 'CPU'),
(2, 'Mainboard'),
(3, 'RAM');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'Administrator'),
(2, 'General');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(32) NOT NULL,
  `user_pwd` varchar(32) NOT NULL,
  `first_name` varchar(64) NOT NULL,
  `last_name` varchar(64) NOT NULL,
  `email` varchar(64) NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_thai_520_w2;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pwd`, `first_name`, `last_name`, `email`, `role_id`) VALUES
(1, 'test1', 'dbc4d84bfcfe2284ba11beffb853a8c4', 'Jonh', 'Wick', 'jonh.w@gmail.com', 1),
(2, 'test2', '934b535800b1cba8f96a5d72f72f1611', 'Pater', 'Parker', 'parker.p@gmail.com', 2),
(3, 'test3', 'bd549ce3f2544d155095e65076460205', 'Piyachai', 'Narongsab', 'tartar@gmail.com', 2),
(4, 'admin', '71860c77c6745379b0d44304d66b6a13', 'valorent', 'game', 'valorent@gmail.com', 2),
(5, 'pond', 'fa246d0262c3925617b0c72bb20eeb1d', 'pond', 'handsome', 'pond.p@gmail.com', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `product_types`
--
ALTER TABLE `product_types`
  ADD PRIMARY KEY (`product_type_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `role_id` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
