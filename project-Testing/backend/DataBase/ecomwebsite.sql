-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 21, 2024 at 11:06 AM
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
-- Database: `ecomwebsite`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `a_id` int(11) NOT NULL,
  `a_username` varchar(50) NOT NULL,
  `a_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`a_id`, `a_username`, `a_password`) VALUES
(1, 'admin', 'password123');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`c_id`, `product_id`) VALUES
(21, 69),
(27, 63),
(28, 68),
(29, 66);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`id`, `email`) VALUES
(7, 'user@gmail.com'),
(9, 'dummy@gmail.com'),


-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `o_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`o_id`, `product_id`, `date`, `price`) VALUES
(12, 40, '2024-02-17', 999),
(13, 56, '2024-02-17', 899),
(14, 66, '2024-02-17', 1299),
(15, 40, '2024-02-18', 1599),
(16, 56, '2024-02-18', 1299),
(17, 66, '2024-02-18', 1566),
(18, 40, '2024-02-17', 999),
(19, 40, '2024-02-17', 899),
(20, 56, '2024-02-17', 999),
(21, 66, '2024-02-18', 999),
(22, 56, '2024-02-19', 999),
(23, 56, '2024-02-19', 1299),
(24, 40, '2024-02-19', 999),
(25, 66, '2024-02-19', 799),
(26, 66, '2024-02-20', 899),
(27, 66, '2024-02-20', 999),
(28, 66, '2024-02-20', 899),
(29, 66, '2024-02-20', 799),
(30, 40, '2024-02-20', 999),
(31, 40, '2024-02-20', 899),
(32, 56, '2024-02-20', 1299),
(33, 56, '2024-02-20', 1399),
(34, 56, '2024-02-20', 999),
(35, 50, '2024-02-21', 999),
(36, 50, '2024-02-21', 999),
(37, 40, '2024-02-21', 799),
(38, 56, '2024-02-21', 899),
(39, 66, '2024-02-21', 999),
(40, 66, '2024-02-21', 899),
(41, 40, '2024-02-21', 999),
(42, 40, '2024-02-21', 999),
(43, 56, '2024-02-18', 999),
(44, 56, '2024-02-18', 899);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `pay_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `amount` int(11) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`pay_id`, `user_id`, `type`, `date`, `amount`, `status`) VALUES
(1, 1, 'online', '2024-02-03', 999, 'paid'),
(2, 1, 'offline', '2024-02-03', 888, 'paid');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `image` varchar(250) NOT NULL,
  `description` varchar(250) NOT NULL,
  `category` text NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `title`, `image`, `description`, `category`, `price`) VALUES
(40, 'Nike', 'image_1707676964521.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1599),
(41, 'Nike', 'image_1707676979396.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1699),
(42, 'Nike', 'image_1707677002412.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1299),
(43, 'Nike', 'image_1707677015454.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1499),
(44, 'Nike', 'image_1707677029796.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1799),
(45, 'Nike', 'image_1707677040214.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 999),
(46, 'Nike', 'image_1707677051642.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1999),
(47, 'Nike', 'image_1707677064287.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'men', 1899),
(48, 'Nike', 'image_1707677108120.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 1399),
(54, 'Shoes', 'image_1707677232448.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 899),
(56, 'High Hills', 'image_1707677396013.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 999),
(57, 'High Hills', 'image_1707677413534.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 899),
(58, 'High Hills', 'image_1707677426167.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 799),
(59, 'High Hills', 'image_1707677443918.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 1299),
(62, 'High Hills', 'image_1707677481880.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 1299),
(63, 'Flat', 'image_1707677493507.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 999),
(65, 'Shoes', 'image_1707677600675.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'women', 1299),
(66, 'Nike', 'image_1707678169341.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 1299),
(67, 'Shoes', 'image_1707678313413.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 999),
(68, 'Nike Air', 'image_1707678459072.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 1599),
(69, 'Nike Air', 'image_1707678472021.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 1599),
(70, 'Nike Air', 'image_1707678488873.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed ac justo eu neque cursus ullamcorper. Nulla facilisi. Mauris efficitur augue eget diam accumsan, ', 'kids', 1999);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`u_id`, `fname`, `lname`, `mail`, `pass`) VALUES
(20, 'User', 'LastName', 'user@gmail.com', '123456789'),

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `w_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wishlist`
--

INSERT INTO `wishlist` (`w_id`, `product_id`) VALUES
(3, 40),
(9, 66),
(10, 70);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`a_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`pay_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`w_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `pay_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `w_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
