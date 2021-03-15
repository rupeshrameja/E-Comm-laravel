-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2021 at 11:03 AM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online`
--

-- --------------------------------------------------------

--
-- Table structure for table `addcart`
--

CREATE TABLE `addcart` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `productid` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `delivered_date` varchar(111) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcart`
--

INSERT INTO `addcart` (`id`, `userid`, `productid`, `status`, `order_date`, `delivered_date`) VALUES
(1, 1, 16, 2, '2020-11-27 08:42:00', '2020-11-27 14:13:31'),
(2, 1, 15, 2, '2020-11-27 08:42:00', '2020-11-27 14:13:31'),
(3, 1, 2, 2, '2020-11-27 08:42:00', '2020-11-27 14:13:31'),
(4, 1, 2, 2, '2020-11-27 08:42:00', '2020-11-27 14:13:31'),
(5, 2, 17, 2, '2020-11-27 08:42:00', '2020-11-27 02:49:07pm'),
(6, 2, 15, 2, '2020-11-27 08:42:00', '2020-11-27 02:49:07pm'),
(7, 2, 14, 2, '2020-11-27 08:42:00', '2020-11-27 02:48:41pm'),
(8, 1, 16, 2, '2020-11-27 08:42:00', '2020-11-27 14:13:31'),
(9, 1, 16, 1, '2020-11-28 08:19:43', '0'),
(10, 1, 11, 1, '2020-11-28 08:34:40', '0'),
(11, 1, 14, 1, '2020-11-28 08:58:03', '0'),
(12, 1, 17, 1, '2020-11-28 09:04:01', '0'),
(13, 1, 14, 1, '2020-11-28 09:04:08', '0'),
(14, 1, 5, 1, '2020-11-28 09:04:15', '0'),
(15, 1, 11, 1, '2020-11-28 09:06:48', '0'),
(16, 1, 15, 1, '2020-11-28 09:06:53', '0'),
(17, 1, 15, 1, '2020-11-28 09:10:06', '0'),
(18, 1, 16, 1, '2020-11-30 07:31:11', '0'),
(19, 1, 16, 1, '2020-11-30 07:31:39', '0'),
(20, 1, 15, 1, '2020-11-30 07:55:40', '0'),
(21, 1, 17, 1, '2020-12-01 08:12:55', '0'),
(22, 3, 16, 2, '2020-12-27 13:21:22', '2020-12-27 06:52:12pm'),
(23, 3, 16, 2, '2020-12-27 13:21:27', '2020-12-27 06:52:12pm');

-- --------------------------------------------------------

--
-- Table structure for table `addcategory`
--

CREATE TABLE `addcategory` (
  `id` int(11) NOT NULL,
  `Category` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `addcategory`
--

INSERT INTO `addcategory` (`id`, `Category`) VALUES
(9, 'Babykids'),
(11, 'Men'),
(12, 'Women');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `Category` varchar(111) NOT NULL,
  `Subcategory` varchar(1111) NOT NULL,
  `Type` varchar(111) NOT NULL,
  `Product` varchar(111) NOT NULL,
  `Price` varchar(11) NOT NULL,
  `Photo` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `Category`, `Subcategory`, `Type`, `Product`, `Price`, `Photo`) VALUES
(1, 'dddd', 'him', 'his', 'jamphal', '12', '04.11.2020_15.22.29_REC.png'),
(2, 'Men', 'FootWear', 'Sport Shoes', 'Lightweight Gymwear Sport Running Shoes For Men Walking Shoes For Men  (Black)', '329', 'sp.jpeg'),
(3, 'Women', 'Women\'s Footwear', 'Flates', 'Women Pink Flats Sandal', '359', 'pk.jpeg'),
(4, 'Electronics', 'Mobiles', 'Mi', 'Redmi 8A Dual (Sea Blue, 32 GB)  (2 GB RAM)', '6999', 'mi-redmi.jpeg'),
(5, 'Electronics', 'Laptop', 'Lenovo', 'Lenovo Ideapad S145 Ryzen 3 Dual Core 3200U', '28990', 'lenovo.jpeg'),
(6, 'TvsAppliances', 'Televisions', 'Samsung', 'Samsung 80cm (32 inch) HD Ready LED Smart TV 2020 Edition with Voice Search  (UA32TE40FAKXXL)', '15499', 'samsung.jpeg'),
(7, 'HomeFurniture', 'HomeDecor', 'Paints', 'Asian Paints Large Sticker Sticker', '249', '3.jpeg'),
(9, 'SportsBooksAndmore', 'Sports', 'Cricket', 'PumaBat', '1539', 'bat.jpeg'),
(10, 'SportsBooksAndmore', 'Books', 'LiteratureBook', 'The Palace of Illusions: 10th Anniversary Edition  (English, Paperback, Banerjee Divakaruni Chitra)', '248', 'the-palace.jpeg'),
(11, 'SportsBooksAndmore', 'Books', 'LiteratureBook', 'The Palace of Illusions: 10th Anniversary Edition  (English, Paperback, Banerjee Divakaruni Chitra)', '248', 'the.jpeg'),
(12, 'TvsAppliances', 'Televisions', 'Samsung', 'Samsung 80cm (32 inch) HD Ready LED Smart TV 2020 Edition with Voice Search  (UA32TE40FAKXXL)', '15499', 'samsung.jpeg'),
(14, 'TvsAppliances', 'Televisions', 'Samsung', 'Samsung 80cm (32 inch) HD Ready LED Smart TV 2020 Edition with Voice Search  (UA32TE40FAKXXL)', '15499', 'samsung.jpeg'),
(15, 'Electronics', 'MobileAccesories', 'Headphones', 'BAGATELLE HBS-730 Sports Stereo Headphones Bluetooth Headset  (Black, In the Ear)', '319', 'bagatelle.jpeg'),
(16, 'Electronics', 'Speakers', 'Jbl', 'JBL Moviebar 100 Dolby Digital With Wireless Subwoofer 220 W Bluetooth Soundbar  (Black, Stereo Channel)', '10999', 'moviebar.jpeg'),
(17, 'Electronics', 'Camera', 'DSLRandMirrorLens', 'Canon EOS 3000D DSLR Camera Single Kit with 18-55 lens (16 GB Memory Card & Carry Case)  (Black)#', '19999', 'canon.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `id` int(11) NOT NULL,
  `first_name` varchar(111) NOT NULL,
  `last_name` varchar(111) NOT NULL,
  `user_name` varchar(111) NOT NULL,
  `password` varchar(111) NOT NULL,
  `address` varchar(1111) NOT NULL,
  `email` varchar(111) NOT NULL,
  `contact` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`id`, `first_name`, `last_name`, `user_name`, `password`, `address`, `email`, `contact`) VALUES
(1, 'rupesh', 'rameja', 'deathstroke97', '123', 'SAMARPIT COLONY PULON,', 'rupeshrameja24@gmail.com', '9511516588'),
(2, 'vaibhav', 'kumawat', 'vbvk007', '1234', 'SAMARPIT COLONY PULON,', 'vaibhavkumawat07@gmail.com', '9001897580'),
(3, 'shivam', 'kalra', 'shivam', '123', '111111111111', 'shivamkarda1234@gmail.com', '5654152454');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `Category_Name` varchar(111) NOT NULL,
  `Subcategory_name` varchar(1111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `Category_Name`, `Subcategory_name`) VALUES
(3, 'he', 'him'),
(4, 'Men', 'FootWear'),
(5, 'Women', 'Women\'s Footwear'),
(6, 'Electronics', 'Mobiles'),
(7, 'Electronics', 'Laptop'),
(9, 'HomeFurniture', 'HomeDecor'),
(10, 'Babykids', 'Toys'),
(11, 'SportsBooksAndmore', 'Sports'),
(12, 'SportsBooksAndmore', 'Books'),
(14, 'Electronics', 'Speakers'),
(15, 'Electronics', 'Speakers'),
(16, 'Electronics', 'Camera'),
(17, 'Men', 'Speakers'),
(18, 'Men', 'FootWear');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `id` int(11) NOT NULL,
  `Category` varchar(111) NOT NULL,
  `Subcategory` varchar(111) NOT NULL,
  `Type` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`id`, `Category`, `Subcategory`, `Type`) VALUES
(1, 'he', 'him', 'his'),
(2, 'Men', 'FootWear', 'Sport Shoes'),
(3, 'Women', 'Women\'s Footwear', 'Flates'),
(4, 'Electronics', 'Mobiles', 'Mi'),
(5, 'Electronics', 'Laptop', 'Lenovo'),
(6, 'TvsAppliances', 'Televisions', 'Samsumg'),
(7, 'TvsAppliances', 'Televisions', 'Samsung'),
(9, 'Babykids', 'Toys', 'SoftToys'),
(10, 'SportsBooksAndmore', 'Sports', 'Cricket'),
(11, 'SportsBooksAndmore', 'Books', 'LiteratureBook'),
(12, 'Electronics', 'Laptop', 'hp1112'),
(14, 'Electronics', 'Speakers', 'Jbl'),
(15, 'Electronics', 'Camera', 'DSLRandMirrorLens'),
(16, 'Men', 'FootWear', 'Sport Shoes');

-- --------------------------------------------------------

--
-- Table structure for table `view category`
--

CREATE TABLE `view category` (
  `id` int(11) NOT NULL,
  `Category` varchar(111) NOT NULL,
  `Subcategory` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addcart`
--
ALTER TABLE `addcart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addcategory`
--
ALTER TABLE `addcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `view category`
--
ALTER TABLE `view category`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addcart`
--
ALTER TABLE `addcart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `addcategory`
--
ALTER TABLE `addcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `type`
--
ALTER TABLE `type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `view category`
--
ALTER TABLE `view category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
