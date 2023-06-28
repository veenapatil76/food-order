-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2021 at 06:52 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food-order`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(10) UNSIGNED NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `full_name`, `username`, `password`) VALUES
(12, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3'),
(13, 'Dhiren Rathod', 'dhiren.rathod', 'ed4227734ed75d343320b6a5fd16ce57'),
(14, 'Yash Ghelani', 'yash.ghelani', '3999f2d98e2ee06ea4332582d3b79191');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `title`, `image_name`, `featured`, `active`) VALUES
(4, 'Pizza', 'Food_Category_557.jpg', 'Yes', 'Yes'),
(5, 'Burger', 'Food_Category_23.jpg', 'Yes', 'Yes'),
(8, 'Dabeli', 'Food_Category_976.jpg', 'Yes', 'Yes'),
(9, 'samosa', 'Food_Category_701.jpg', 'No', 'Yes'),
(10, 'Vadapav', 'Food_Category_207.jpg', 'No', 'Yes'),
(11, 'Dhokla', 'Food_Category_524.jpg', 'No', 'Yes'),
(12, 'SandWich', 'Food_Category_222.jpg', 'No', 'Yes'),
(13, 'Dosa', 'Food_Category_716.jpg', 'No', 'Yes'),
(14, 'Panipuri', 'Food_Category_987.jpg', 'No', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_contact`
--

CREATE TABLE `tbl_contact` (
  `id` int(10) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_contact`
--

INSERT INTO `tbl_contact` (`id`, `name`, `email`, `subject`, `message`) VALUES
(1, 'Rathod Dhirenkumar Mohanbhai', 'dhiren.m.rathod@gmail.com', 'Appriciation', 'Hello Dhiren Your Work is Greate..!'),
(2, 'Yash Ghelani', 'yash@gmail.com', 'jay ho', 'moje moj..');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_food`
--

CREATE TABLE `tbl_food` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `featured` varchar(10) NOT NULL,
  `active` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_food`
--

INSERT INTO `tbl_food` (`id`, `title`, `description`, `price`, `image_name`, `category_id`, `featured`, `active`) VALUES
(4, 'dahipuri', 'panipuri with dahi', '15.00', 'Food-Name-9441.jpg', 14, 'Yes', 'Yes'),
(5, 'simple panipuri', 'sweet panipuri', '10.00', 'Food-Name-9902.jpg', 14, 'No', 'Yes'),
(6, 'Ragada puri', 'panipuri with ragada', '12.00', 'Food-Name-1723.jpg', 14, 'No', 'Yes'),
(7, 'oil dabeli', 'simple oil dabeli', '7.00', 'Food-Name-5687.jpg', 8, 'Yes', 'Yes'),
(8, 'Butter Dabeli', 'special dabeli with butter', '15.00', 'Food-Name-3355.jpg', 8, 'No', 'Yes'),
(9, 'oil vadapav', 'simple oil vadapav', '10.00', 'Food-Name-1562.jpg', 10, 'Yes', 'Yes'),
(10, 'Butter Vadapav', 'vadapav with butter', '20.00', 'Food-Name-5312.jpg', 10, 'No', 'Yes'),
(11, 'khaman dhokla', 'testy gujarati khaman', '20.00', 'Food-Name-2314.jpg', 11, 'Yes', 'Yes'),
(12, 'khandvi', 'gujarati khandvi ', '15.00', 'Food-Name-3299.jpg', 11, 'No', 'Yes'),
(13, 'white dhookla', 'simple white gujarati dhokla', '12.00', 'Food-Name-3904.jpg', 11, 'No', 'Yes'),
(14, 'masala dosa', 'testy south indian masala dosa', '30.00', 'Food-Name-3856.jpg', 13, 'Yes', 'Yes'),
(15, 'simple dosa', 'simple south indian dosa', '25.00', 'Food-Name-7583.jpg', 13, 'No', 'Yes'),
(16, 'simple samosa', 'simple indian samosa', '10.00', 'Food-Name-5391.jpg', 9, 'Yes', 'Yes'),
(17, 'special samosa', 'samosa with greate indian masala', '25.00', 'Food-Name-74.jpg', 9, 'No', 'Yes'),
(18, 'vagitable sandwich', 'vagitables with sandwich', '20.00', 'Food-Name-5843.jpg', 12, 'Yes', 'Yes'),
(19, 'chokolate sandwich', 'chokolate with sandwich', '30.00', 'Food-Name-4954.jpg', 12, 'No', 'Yes'),
(20, 'margherita pizza', 'very testy and famous pizza', '50.00', 'Food-Name-5771.jpg', 4, 'Yes', 'Yes'),
(21, 'simple pizza', 'average pizza', '30.00', 'Food-Name-1564.jpg', 4, 'No', 'Yes'),
(22, 'simple burger', 'avarage burger', '20.00', 'Food-Name-2660.jpg', 5, 'No', 'Yes'),
(23, 'special burger', 'very testy burger', '30.00', 'Food-Name-9815.jpg', 5, 'Yes', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `id` int(10) UNSIGNED NOT NULL,
  `food` varchar(150) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `qty` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `order_date` datetime NOT NULL,
  `status` varchar(50) NOT NULL,
  `customer_name` varchar(150) NOT NULL,
  `customer_contact` varchar(20) NOT NULL,
  `customer_email` varchar(150) NOT NULL,
  `customer_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`id`, `food`, `price`, `qty`, `total`, `order_date`, `status`, `customer_name`, `customer_contact`, `customer_email`, `customer_address`) VALUES
(4, 'simple samosa', '10.00', 2, '20.00', '2021-06-27 06:47:18', 'Delivered', 'Rathod Dhirenkumar Mohanbhai', '7016566323', 'dhiren.m.rathod@gmail.com', 'Near pandya seri, Nadoda vas, Baspa, taluka - sami, Dist - Patan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_food`
--
ALTER TABLE `tbl_food`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_contact`
--
ALTER TABLE `tbl_contact`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_food`
--
ALTER TABLE `tbl_food`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
