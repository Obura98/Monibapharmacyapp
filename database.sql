-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2016 at 12:55 AM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `luciana`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_purchase` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL,
  `total_amount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_price`, `product_purchase`, `product_quantity`, `date_added`, `day`, `month`, `year`, `total_amount`) VALUES
(1, 'Juice Fanta', 1000, 700, 30, '2015-09-27 16:13:47', 27, 9, 2015, 30000),
(2, 'Juice Pepsi diet', 1000, 200, 25, '2015-09-27 16:14:39', 27, 9, 2015, 25000),
(3, 'Juice pepsi', 1000, 0, 24, '2015-09-27 16:16:15', 27, 9, 2015, 24000),
(4, 'Juice novida', 1000, 0, 24, '2015-09-27 16:18:08', 27, 9, 2015, 24000),
(5, 'Juice sprite', 1000, 0, 24, '2015-09-27 16:21:37', 27, 9, 2015, 24000),
(6, 'Juice mirinda', 1000, 0, 24, '2015-09-27 16:30:49', 27, 9, 2015, 24000),
(7, 'Juice coca', 1000, 0, 24, '2015-09-28 04:29:51', 28, 9, 2015, 24000),
(8, 'juice twist', 500, 0, 22, '2015-09-28 04:30:17', 28, 9, 2015, 11000),
(9, 'juice pera', 600, 0, 48, '2015-09-28 04:35:19', 28, 9, 2015, 28800),
(10, 'juice azam energy', 500, 0, 48, '2015-09-28 04:36:07', 28, 9, 2015, 24000),
(11, 'juice coca zero', 1000, 0, 24, '2015-09-28 04:36:35', 28, 9, 2015, 24000),
(12, 'juice malt kahawa', 500, 0, 24, '2015-09-28 04:37:08', 28, 9, 2015, 12000),
(13, 'juice azam 1ltr', 3000, 0, 5, '2015-09-28 04:39:52', 28, 9, 2015, 15000),
(14, 'juice pride chupa', 400, 0, 24, '2015-09-28 04:41:06', 28, 9, 2015, 9600),
(15, 'juice pride chupa', 400, 0, 24, '2015-09-28 04:41:39', 28, 9, 2015, 9600),
(16, 'juice sayona', 500, 0, 48, '2015-09-28 04:59:34', 28, 9, 2015, 24000),
(17, 'juice cola kubwa', 1000, 0, 24, '2015-09-28 05:01:41', 28, 9, 2015, 24000),
(18, 'juice cola ndogo', 500, 0, 48, '2015-09-28 05:02:04', 28, 9, 2015, 24000),
(19, 'juice fursana kubwa', 1000, 0, 24, '2015-09-28 05:02:55', 28, 9, 2015, 24000),
(20, 'juice fursana ndogo', 500, 0, 48, '2015-09-28 05:05:08', 28, 9, 2015, 24000),
(21, 'juice azam embe', 600, 0, 48, '2015-09-28 05:05:53', 28, 9, 2015, 28800),
(22, 'juice pride glass', 400, 0, 24, '2015-09-28 05:09:16', 28, 9, 2015, 9600),
(23, 'juice tropical ndogo', 1000, 0, 24, '2015-09-28 05:10:42', 28, 9, 2015, 24000);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `sales_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `total_price` int(11) NOT NULL,
  `date_added` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `day` int(2) NOT NULL,
  `month` int(2) NOT NULL,
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`sales_id`, `product_id`, `quantity`, `total_price`, `date_added`, `day`, `month`, `year`) VALUES
(1, 13, 1, 3000, '2016-04-01 07:00:09', 1, 4, 2016),
(2, 8, 2, 1000, '2016-04-01 07:00:42', 1, 4, 2016);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) NOT NULL,
  `role` text NOT NULL,
  `password` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `role`, `password`) VALUES
('Admin', 'Admin', '0c7540eb7e65b553ec1ba6b20de79608'),
('Saler', 'Saler', '46d713c23fef5791bfe199fe4d08f12e ');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`sales_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `sales`
--
ALTER TABLE `sales`
  MODIFY `sales_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
