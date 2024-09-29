-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 25, 2023 at 05:39 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test1`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `quantity` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `catagery`
--

CREATE TABLE `catagery` (
  `id` int(11) NOT NULL,
  `catagery_name` varchar(40) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catagery`
--

INSERT INTO `catagery` (`id`, `catagery_name`, `status`) VALUES
(6, 'cricket', 1),
(7, 'hockey', 1),
(8, 'football', 1),
(9, 'vollyball', 1),
(10, 'basketball', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(10) NOT NULL,
  `pid` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `shipid` int(10) NOT NULL,
  `time_date` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `pid`, `quantity`, `shipid`, `time_date`, `status`) VALUES
(58, 1, 36, 1, 45, '2023-12-25 01:46:42.000000', 0),
(59, 79, 30, 1, 45, '2023-12-25 01:46:42.000000', 1);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `product_description` text NOT NULL,
  `product_category` int(10) NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_image` text NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `product_name`, `product_description`, `product_category`, `product_price`, `product_image`, `status`) VALUES
(30, 'basketball goal net', ' A basketball goal net, often simply referred to as a \"net,\" is an essential component of a basketball hoop. It is the part of the basketball hoop that hangs down from the rim and helps to score a basket by catching the basketball as it passes through the hoop.', 10, 4500, 'bnet2.jpeg', 1),
(31, 'basketball kit', 'The jersey is typically the most prominent part of the basketball uniform. It often displays the team\'s colors, logo, and player\'s number. The design may vary based on the team\'s preferences, but it typically includes a top with sleeves or a sleeveless design.', 10, 5600, 'bsh3.jpeg', 1),
(32, 'football', 'Traditional footballs were made from leather, but modern footballs are often made from synthetic materials like polyurethane or PVC. These materials provide consistent performance in various weather conditions.', 8, 3500, 'football1.jpeg', 1),
(33, 'football kit shoe', ' Football boot uppers can be made of various materials, including leather, synthetic materials, or a combination of both. The choice of material can impact the shoe\'s comfort, durability, and touch on the ball. Leather boots are often preferred for their natural feel and durability, while synthetic materials may offer lightweight options with added features like improved ball control.', 8, 8000, 'fsho2.jpeg', 1),
(34, 'hockey net', ' Hockey nets are typically made of steel or aluminum tubing for durability and stability. The netting itself is usually made of strong, synthetic materials that can withstand the impact of pucks or balls. In ice hockey, the netting is often designed to have a mesh-like pattern, while in field hockey, it may have smaller openings.', 7, 10000, 'hnet.jpeg', 1),
(35, 'Hockey Stick', ' Modern hockey sticks are predominantly made from composite materials, which can include various combinations of materials like carbon fiber, fiberglass, and Kevlar.', 7, 2500, 'hockey.jpeg', 1),
(36, 'hockey kit', 'hockey players wear a team jersey that typically displays the team\'s colors, logo, and player\'s number. The jersey is designed to be comfortable and allow for freedom of movement.', 7, 5700, 'hsh1.jpeg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `shipping`
--

CREATE TABLE `shipping` (
  `id` int(11) NOT NULL,
  `f_name` text NOT NULL,
  `l_name` text NOT NULL,
  `email` text NOT NULL,
  `country` text NOT NULL,
  `streetaddress` text NOT NULL,
  `town` text NOT NULL,
  `phone` text NOT NULL,
  `ordernote` text NOT NULL,
  `pids` text NOT NULL,
  `total` int(15) NOT NULL,
  `user_id` int(10) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shipping`
--

INSERT INTO `shipping` (`id`, `f_name`, `l_name`, `email`, `country`, `streetaddress`, `town`, `phone`, `ordernote`, `pids`, `total`, `user_id`, `status`) VALUES
(44, 'Amant', 'Khan', 'amanat@gmail.com', 'Pakistan', 'Zafar Colony Street No. 15 Lahore Pakistan', 'Lahore', '03225462465', 'Carefully', '12,34,56', 35000, 1, 1),
(45, 'Ahad', 'Sheraz', 'ahad@gmail.com', 'Pakistan', 'Nabi Pur', 'Sadiqabad', '03006709965', 'hello', '3630', 10200, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(15) NOT NULL,
  `name` varchar(35) NOT NULL,
  `email` text NOT NULL,
  `password` varchar(30) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `name`, `email`, `password`, `status`) VALUES
(1, 'Admin', 'admin@gmail.com', 'admin123', 1),
(2, 'Mazhar', 'Mazhar@gmail.com', 'mazhar123', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagery`
--
ALTER TABLE `catagery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping`
--
ALTER TABLE `shipping`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `catagery`
--
ALTER TABLE `catagery`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `shipping`
--
ALTER TABLE `shipping`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
