-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2025 at 08:15 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `delivery_order_tracking_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` int(11) NOT NULL,
  `Address_Details` text NOT NULL,
  `customer_id` int(11) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL,
  `district` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `Address_Details`, `customer_id`, `Longitude`, `Latitude`, `district`) VALUES
(11, 'vgh6+7mx, beirut, lebanon', 1, 35.512661933898926, 33.877470517600386, 'beirut'),
(12, 'vffx+h9c, abou chaker, bayrut, lebanon', 1, 35.49837112426758, 33.87429941787057, 'beirut'),
(13, 'vgc6+f49 horsh beirut, bayrut, lebanon', 1, 35.51012992858887, 33.87112820031404, 'beirut');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `Seller_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `Seller_id`, `Name`) VALUES
(14, 2, 'Kids Outfits'),
(15, 2, 'baby\'s clothes'),
(16, 2, 'Shoes&Socks'),
(17, 2, 'Others'),
(18, 5, 'Chicken'),
(19, 5, 'pickles'),
(20, 6, 'مقالي'),
(21, 6, 'ورق عنب'),
(24, 5, 'Poultry'),
(25, 2, 'Baby Products'),
(26, 6, 'Home-Cooked Food');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `Name`, `Email`, `Password`, `Phone`) VALUES
(1, 'mohamad', '72130514@students.liu.edu.lb', '$2y$10$xUO/mEcLiik6/5PsU9n7N.eppS37CnGj0BR/7ixiZIQWWC7E.OZOm', '12121212');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_agent`
--

CREATE TABLE `delivery_agent` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `is_available` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `delivery_agent`
--

INSERT INTO `delivery_agent` (`id`, `Name`, `Email`, `Password`, `Phone`, `is_available`) VALUES
(1, 'Ali Fawaz', 'alifawazceng@gmail.com', 'FgSgNpE9O4HoOIT7kJMmFw==', '+961 76079715', 0);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image_path` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`id`, `product_id`, `image_path`) VALUES
(33, 34, 'pictures/2/14/34/1.jpg'),
(34, 34, 'pictures/2/14/34/2.jpg'),
(35, 34, 'pictures/2/14/34/3.jpg'),
(36, 35, 'pictures/2/14/35/1.jpg'),
(37, 35, 'pictures/2/14/35/2.jpg'),
(38, 35, 'pictures/2/14/35/3.jpg'),
(39, 36, 'pictures/2/14/36/1.jpg'),
(40, 36, 'pictures/2/14/36/2.jpg'),
(41, 36, 'pictures/2/14/36/3.jpg'),
(42, 37, 'pictures/2/14/37/1.jpg'),
(43, 37, 'pictures/2/14/37/2.jpg'),
(44, 37, 'pictures/2/14/37/3.jpg'),
(45, 37, 'pictures/2/14/37/4.jpg'),
(46, 38, 'pictures/2/15/38/1.jpg'),
(47, 38, 'pictures/2/15/38/2.jpg'),
(48, 38, 'pictures/2/15/38/3.jpg'),
(49, 39, 'pictures/2/15/39/1.jpg'),
(50, 39, 'pictures/2/15/39/2.jpg'),
(51, 39, 'pictures/2/15/39/3.jpg'),
(52, 40, 'pictures/2/15/40/1.jpg'),
(53, 40, 'pictures/2/15/40/2.jpg'),
(54, 40, 'pictures/2/15/40/3.jpg'),
(55, 41, 'pictures/2/15/41/1.jpg'),
(56, 41, 'pictures/2/15/41/2.jpg'),
(57, 41, 'pictures/2/15/41/3.jpg'),
(58, 41, 'pictures/2/15/41/4.jpg'),
(59, 41, 'pictures/2/15/41/5.jpg'),
(60, 41, 'pictures/2/15/41/6.jpg'),
(61, 42, 'pictures/2/16/42/1.jpg'),
(62, 42, 'pictures/2/16/42/2.jpg'),
(63, 42, 'pictures/2/16/42/3.jpg'),
(64, 42, 'pictures/2/16/42/4.jpg'),
(65, 43, 'pictures/2/16/43/1.jpg'),
(66, 43, 'pictures/2/16/43/2.jpg'),
(67, 44, 'pictures/2/16/44/1.jpg'),
(68, 44, 'pictures/2/16/44/2.jpg'),
(69, 44, 'pictures/2/16/44/3.jpg'),
(70, 44, 'pictures/2/16/44/4.jpg'),
(71, 45, 'pictures/2/15/45/1.jpg'),
(72, 45, 'pictures/2/15/45/2.jpg'),
(73, 45, 'pictures/2/15/45/3.jpg'),
(74, 46, 'pictures/2/17/46/1.jpg'),
(75, 46, 'pictures/2/17/46/2.jpg'),
(76, 46, 'pictures/2/17/46/3.jpg'),
(77, 47, 'pictures/5/18/47/1.jpg'),
(78, 48, 'pictures/5/18/48/1.jpg'),
(79, 49, 'pictures/5/18/49/1.jpg'),
(80, 50, 'pictures/5/18/50/1.jpg'),
(81, 51, 'pictures/5/19/51/1.jpg'),
(82, 52, 'pictures/5/19/52/1.jpg'),
(83, 53, 'pictures/5/19/53/1.jpg'),
(84, 54, 'pictures/6/20/54/1.jpg'),
(85, 55, 'pictures/6/21/55/1.jpg'),
(86, 56, 'pictures/6/21/56/1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `Status` varchar(20) NOT NULL DEFAULT 'pending',
  `Total_Price` decimal(10,2) NOT NULL DEFAULT 0.00,
  `Date_Time` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL,
  `delivery_Agent_id` int(11) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `Status`, `Total_Price`, `Date_Time`, `customer_id`, `delivery_Agent_id`, `district`, `latitude`, `longitude`, `address_id`) VALUES
(7, 'delivered', 7.00, '2025-05-03 11:47:09', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(8, 'delivered', 28.00, '2025-05-03 11:49:03', 1, 1, 'beirut', 33.871128200314, 35.510129928589, 13),
(9, 'delivered', 100.00, '2025-05-18 12:37:37', 1, 1, 'beirut', 33.874299417871, 35.498371124268, 12),
(10, 'delivered', 116.00, '2025-05-20 10:19:05', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(11, 'delivered', 97.94, '2025-05-20 10:34:14', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(12, 'delivered', 212.00, '2025-05-21 09:51:00', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(13, 'delivered', 137.25, '2025-05-21 09:51:25', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(14, 'delivered', 44.00, '2025-05-21 09:51:50', 1, 1, 'beirut', 33.874299417871, 35.498371124268, 12),
(15, 'pending', 22.00, '2025-05-22 13:41:09', 1, 1, 'beirut', 33.8774705176, 35.512661933899, 11),
(16, 'pending', 34.00, '2025-05-22 13:41:28', 1, 1, 'beirut', 33.874299417871, 35.498371124268, 12),
(17, 'pending', 20.00, '2025-05-28 11:36:47', 1, NULL, 'beirut', 33.8774705176, 35.512661933899, 11),
(18, 'pending', 39.00, '2025-05-28 15:54:49', 1, NULL, 'beirut', 33.871128200314, 35.510129928589, 13);

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(11) NOT NULL,
  `Product_id` int(11) NOT NULL,
  `Order_id` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `Product_id`, `Order_id`, `Quantity`) VALUES
(14, 54, 7, 1),
(15, 54, 8, 4),
(16, 34, 9, 4),
(17, 35, 9, 3),
(18, 36, 9, 3),
(19, 37, 9, 3),
(20, 56, 10, 2),
(21, 83, 10, 2),
(22, 54, 10, 1),
(23, 55, 10, 4),
(24, 48, 11, 2),
(25, 47, 11, 3),
(26, 61, 11, 6),
(27, 48, 12, 9),
(28, 49, 12, 9),
(29, 50, 12, 8),
(30, 54, 13, 11),
(31, 55, 13, 1),
(32, 56, 13, 1),
(33, 82, 13, 1),
(34, 83, 13, 1),
(35, 84, 13, 1),
(36, 34, 14, 4),
(37, 45, 14, 7),
(38, 34, 15, 1),
(39, 35, 15, 1),
(40, 36, 15, 1),
(41, 47, 16, 2),
(42, 48, 16, 1),
(43, 49, 16, 1),
(44, 54, 17, 1),
(45, 55, 17, 1),
(46, 48, 18, 3);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `Price` decimal(10,2) NOT NULL,
  `amount` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `Name`, `description`, `Price`, `amount`) VALUES
(34, 14, 'Almandi', 'High quality in the world for kids (boys)  Jeans wear Size:60', 4.00, -13),
(35, 14, 'miu miu', 'Bijama (boys) size:60', 6.00, -4),
(36, 14, 'BE Brave', 'Turkish made outfit (boys)  for size 8', 12.00, 1),
(37, 14, 'MK', 'Syrian Outfit for girls size of 2', 10.00, 0),
(38, 15, 'Alex Vivan', 'Syrian made for size of 3', 15.00, 3),
(39, 15, 'Avarol', 'made in lebanon size of 3', 5.00, 7),
(40, 15, 'Avarol (no drawings)', 'made in lebanon size of 3', 5.00, 6),
(41, 15, 'Murat Baby Collection', 'turkish made outfit for baby boys size 0-3', 14.00, 3),
(42, 16, 'Fashion', 'shoes for kids (black)', 6.00, 2),
(43, 16, 'cotton shoes', 'homemade home shoes for babies', 2.00, 5),
(44, 16, 'socks', 'there is for all size for both boys and girls', 2.00, 62),
(45, 15, 'underwears', 'underwears for baby boys', 4.00, 7),
(46, 17, 'PMB', 'Colonia Infantil Baby Cologne', 5.00, 3),
(47, 18, 'فخاد ني', '3 كلغ', 7.00, 0),
(48, 18, 'مسحب', '2كلغ', 13.00, -3),
(49, 18, 'جوانح', '3كلغ', 7.00, 4),
(50, 18, 'فروج ني', 'فروج كامل 1كلغ', 4.00, 1),
(51, 19, 'كبيس خيار ', '1كلغ', 2.00, 13),
(52, 19, 'كبيس لفت', '1 كلغ', 1.00, 13),
(53, 19, 'كبيس مشكل', '1 كلغ', 1.00, 13),
(54, 20, 'كبب', 'دزينة', 7.00, -9),
(55, 21, 'ورق عنب بالزيت', 'كيلو ورق عنب ب زيت', 13.00, 6),
(56, 21, ' ورق عنب باللحمة', 'كيلو ورق عنب باللحمة', 17.00, 12),
(60, 14, 'Diaper Pack', '', 15.99, 40),
(61, 18, 'Fresh Chicken Breast', '', 8.49, 34),
(62, 19, 'Stuffed Grape Leaves', '', 12.00, 40),
(67, 24, 'Fresh Chicken Breast', '', 8.49, 40),
(68, 24, 'Fresh Chicken Breast', '', 8.49, 40),
(69, 24, 'Grilled Chicken Thighs', '', 9.25, 38),
(70, 24, 'Whole Roasted Chicken', '', 12.00, 36),
(71, 24, 'Spicy Chicken Wings', '', 7.75, 40),
(72, 24, 'Chicken Shawarma Strips', '', 6.99, 38),
(79, 25, 'Organic Baby Wipes', '', 4.99, 40),
(80, 25, 'Baby Shampoo', '', 3.49, 40),
(81, 25, 'Infant Formula', '', 12.99, 40),
(82, 26, 'Stuffed Grape Leaves', '', 10.00, 38),
(83, 26, 'Beef Kibbeh', '', 11.50, 37),
(84, 26, 'Home-baked Fatayer', '', 8.75, 39);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `Rating` int(11) DEFAULT NULL CHECK (`Rating` between 1 and 5),
  `Comments` text DEFAULT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE `seller` (
  `id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Phone` varchar(20) NOT NULL,
  `Type` varchar(100) NOT NULL,
  `Longitude` double NOT NULL,
  `Latitude` double NOT NULL,
  `Address` text NOT NULL,
  `logo_path` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `seller`
--

INSERT INTO `seller` (`id`, `Name`, `Email`, `Password`, `Phone`, `Type`, `Longitude`, `Latitude`, `Address`, `logo_path`) VALUES
(2, 'Baby Dream', 'alifawaz2003july@gmail.com', '$2y$10$6UggVzbSQyKFJIgdLKrfSOVt7h53XtPfWUTvMraLwIMzQg.bN419a', '76079715', 'Baby Products', 35.3828864, 33.1874304, 'Tibnine, Bint Jbeil District, Nabatieh Governorate, 1702, Lebanon', 'seller/Icons/2.jpg'),
(5, 'Online Chicken', 'halawe.hala1991@gmail.com', '$2y$10$Njt/ZjEg4iEirw1cGEW7Tu927bnj4d3xxOK5RkTRu3ZJkWa2UvTUy', '71603183', 'Poultry', 35.39509296257923, 33.19035915515289, 'Tibnine, Bint Jbeil District, Nabatieh Governorate, 1702, Lebanon', 'seller/Icons/5.jpg'),
(6, 'Halawi/Fawaz Home Food', 'hala.halawi1991@gmail.com', '$2y$10$O3daQzXOj3E2Q0T5vSiXFe09uZ0eUKg9wHGZGGSSc2EW.fWPRY0oO', '81090624', 'Home-Cooked Food', 35.4103302951777, 33.19240498098129, 'Tibnine, Bint Jbeil District, Nabatieh Governorate, 1702, Lebanon', 'seller/Icons/6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `shoptypes`
--

CREATE TABLE `shoptypes` (
  `ID` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shoptypes`
--

INSERT INTO `shoptypes` (`ID`, `type`) VALUES
(1, 'Grocery'),
(2, 'Food'),
(3, 'Clothes'),
(4, 'Shoes'),
(5, 'Clothes & Shoes'),
(6, 'Pharmacy'),
(7, 'Electronics'),
(8, 'Electricals'),
(9, 'Home Electronics'),
(10, 'Phones'),
(11, 'Computers');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `ID` int(11) NOT NULL,
  `Shop` tinyint(4) NOT NULL DEFAULT 0,
  `shop_warehouse` tinyint(4) NOT NULL DEFAULT 0,
  `warehouse` tinyint(4) NOT NULL DEFAULT 0,
  `warehouse_customer` tinyint(4) NOT NULL DEFAULT 0,
  `customer` tinyint(4) NOT NULL DEFAULT 0,
  `orderItem_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`ID`, `Shop`, `shop_warehouse`, `warehouse`, `warehouse_customer`, `customer`, `orderItem_id`) VALUES
(1, 1, 0, 0, 0, 0, 20),
(2, 1, 0, 0, 0, 0, 21),
(3, 1, 0, 0, 0, 0, 22),
(4, 1, 0, 0, 0, 0, 23),
(5, 1, 0, 0, 0, 0, 24),
(6, 1, 0, 0, 0, 0, 25),
(7, 1, 0, 0, 0, 0, 26),
(8, 1, 0, 0, 0, 0, 27),
(9, 1, 0, 0, 0, 0, 28),
(10, 1, 0, 0, 0, 0, 29),
(11, 1, 0, 0, 0, 0, 30),
(12, 1, 0, 0, 0, 0, 31),
(13, 1, 0, 0, 0, 0, 32),
(14, 1, 0, 0, 0, 0, 33),
(15, 1, 0, 0, 0, 0, 34),
(16, 1, 0, 0, 0, 0, 35),
(17, 1, 0, 0, 0, 0, 36),
(18, 1, 0, 0, 0, 0, 37),
(19, 1, 0, 0, 0, 0, 38),
(20, 1, 0, 0, 0, 0, 39),
(21, 1, 0, 0, 0, 0, 40),
(22, 1, 0, 0, 0, 0, 41),
(23, 1, 0, 0, 0, 0, 42),
(24, 1, 0, 0, 0, 0, 43);

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE `tracking` (
  `agent_id` int(11) DEFAULT NULL,
  `latitude` double DEFAULT NULL,
  `longitude` double DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tracking`
--

INSERT INTO `tracking` (`agent_id`, `latitude`, `longitude`, `timestamp`) VALUES
(1, 33.2834, 35.2291, '2025-05-30 20:20:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Seller_id` (`Seller_id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `delivery_agent`
--
ALTER TABLE `delivery_agent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `delivery_Agent_id` (`delivery_Agent_id`),
  ADD KEY `address_id` (`address_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Product_id` (`Product_id`),
  ADD KEY `Order_id` (`Order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `review`
--
ALTER TABLE `review`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `seller`
--
ALTER TABLE `seller`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- Indexes for table `shoptypes`
--
ALTER TABLE `shoptypes`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `orderItem_id` (`orderItem_id`);

--
-- Indexes for table `tracking`
--
ALTER TABLE `tracking`
  ADD UNIQUE KEY `agent_id_2` (`agent_id`),
  ADD KEY `agent_id` (`agent_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `delivery_agent`
--
ALTER TABLE `delivery_agent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `review`
--
ALTER TABLE `review`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `seller`
--
ALTER TABLE `seller`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `shoptypes`
--
ALTER TABLE `shoptypes`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `address_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category`
--
ALTER TABLE `category`
  ADD CONSTRAINT `category_ibfk_1` FOREIGN KEY (`Seller_id`) REFERENCES `seller` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_address_fk` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_agent_fk` FOREIGN KEY (`delivery_Agent_id`) REFERENCES `delivery_agent` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `order_customer_fk` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`Order_id`) REFERENCES `order` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `review`
--
ALTER TABLE `review`
  ADD CONSTRAINT `review_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `review_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `status`
--
ALTER TABLE `status`
  ADD CONSTRAINT `status_ibfk_1` FOREIGN KEY (`orderItem_id`) REFERENCES `order_items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tracking`
--
ALTER TABLE `tracking`
  ADD CONSTRAINT `tracking_ibfk_1` FOREIGN KEY (`agent_id`) REFERENCES `delivery_agent` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
