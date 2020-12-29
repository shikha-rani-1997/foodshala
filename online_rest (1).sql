-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2020 at 02:08 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `online_rest`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `date`) VALUES
(9, 'rima', 'b536acfda7406c5ab17bb709aaa2812f', 'rima@gmail.com', '2020-12-27 06:54:20'),
(10, 'ritik', '23cdf58570e4fd7c681b48a01c46090a', 'ritik@gmail.com', '2020-12-28 12:29:22');

-- --------------------------------------------------------

--
-- Table structure for table `dishes`
--

CREATE TABLE `dishes` (
  `d_id` int(222) NOT NULL,
  `rs_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dishes`
--

INSERT INTO `dishes` (`d_id`, `rs_id`, `title`, `price`) VALUES
(18, 1, 'pani puri', '10.00'),
(19, 2, 'chicken paratha', '60.00');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE `restaurant` (
  `rs_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `url` varchar(222) NOT NULL,
  `o_hr` varchar(222) NOT NULL,
  `c_hr` varchar(222) NOT NULL,
  `o_days` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `image` text NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`rs_id`, `c_id`, `title`, `email`, `phone`, `url`, `o_hr`, `c_hr`, `o_days`, `address`, `image`, `date`) VALUES
(58, 1, 'lucky dhaba', 'lucky@gmail.com', '88888889', 'lucky.com', '9am', '6pm', 'mon-sat', 'sector11', '5fe844dcd90ac.png', '2020-12-27 08:25:00'),
(59, 2, 'mughlai', 'mughlai@gmail.com', '888888966', 'mughlai.com', '9am', '6pm', 'mon-fri', 'sector-8', '5fe84522f1af4.jpg', '2020-12-27 08:26:10'),
(60, 1, 'saladwala', 'salad@gmail.com', '7788994455', 'saladwala.com', '9am', '6pm', 'mon-sat', 'saltlake', '5fe994e67e658.jpg', '2020-12-28 08:18:46');

-- --------------------------------------------------------

--
-- Table structure for table `res_category`
--

CREATE TABLE `res_category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `res_category`
--

INSERT INTO `res_category` (`c_id`, `c_name`, `date`) VALUES
(1, 'veg', '2020-12-26 12:32:22'),
(2, 'nonveg', '2020-12-26 12:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `fullname` varchar(222) NOT NULL,
  `vegORnonveg` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `fullname`, `vegORnonveg`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'sr', 'yyyyy', 'veg', 'abc03@gmail.com', '7878787878', '4a902d1683d14ec90fccf19b85014f68', 'SECTOR-A\r\nQUARTER-4\r\njio park', 1, '2020-12-27 09:50:52'),
(34, 'shikha03', 'SHIKHA RANI', 'veg', 'sweetushikha03@gmail.com', '5858585858', '4a902d1683d14ec90fccf19b85014f68', 'SECTOR-3A', 1, '2020-12-27 09:51:16'),
(35, 'satyam', 'satyam', 'veg', 'satyam@gmail.com', '8879693621', 'fac2e376559315ac44b5ed4166f9a683', 'sector4', 1, '2020-12-28 12:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `title` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `title`, `quantity`, `price`, `status`, `date`) VALUES
(49, 33, 'pani puri', 3, '10.00', NULL, '2020-12-26 21:15:37'),
(50, 33, 'chicken paratha', 3, '60.00', NULL, '2020-12-26 21:49:00'),
(51, 33, 'chicken paratha', 3, '60.00', NULL, '2020-12-26 21:49:04'),
(52, 33, 'chicken paratha', 3, '60.00', NULL, '2020-12-26 21:49:54'),
(53, 33, 'chicken paratha', 3, '60.00', NULL, '2020-12-26 21:49:57'),
(54, 33, 'chicken paratha', 3, '60.00', NULL, '2020-12-26 22:22:01'),
(55, 33, 'chicken paratha', 1, '60.00', NULL, '2020-12-27 05:19:57'),
(56, 33, 'pani puri', 1, '10.00', NULL, '2020-12-27 05:19:57'),
(57, 33, 'chicken paratha', 1, '60.00', NULL, '2020-12-27 05:20:20'),
(58, 33, 'pani puri', 1, '10.00', NULL, '2020-12-27 05:20:20'),
(59, 33, 'chicken paratha', 1, '60.00', NULL, '2020-12-27 05:22:52'),
(60, 33, 'pani puri', 1, '10.00', NULL, '2020-12-27 05:22:52'),
(61, 33, 'chicken paratha', 1, '60.00', NULL, '2020-12-27 05:27:08'),
(62, 33, 'pani puri', 1, '10.00', NULL, '2020-12-27 05:27:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `dishes`
--
ALTER TABLE `dishes`
  ADD PRIMARY KEY (`d_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
  ADD PRIMARY KEY (`rs_id`);

--
-- Indexes for table `res_category`
--
ALTER TABLE `res_category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `dishes`
--
ALTER TABLE `dishes`
  MODIFY `d_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
  MODIFY `rs_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `res_category`
--
ALTER TABLE `res_category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
