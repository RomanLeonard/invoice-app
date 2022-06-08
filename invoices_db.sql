-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2022 at 04:53 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `invoices_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `cui` varchar(255) NOT NULL,
  `onrc` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `iban` varchar(255) NOT NULL,
  `bank` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `cui`, `onrc`, `address`, `iban`, `bank`, `mobile`, `email`) VALUES
(16, '14134134', '', '', '134134', '', '', '', ''),
(17, '1313134', '', '', '134314134', '', '', '', ''),
(18, '1313134', '', '', '134314134', '', '', '', ''),
(19, '1212', '', '', '34314', '', '', '', ''),
(20, '123123', '', '', '123', '', '', '', ''),
(21, '134134', '', '', '134', '', '', '', ''),
(22, '134134', '', '', '134', '', '', '', ''),
(23, '134134', '', '', '134', '', '', '', ''),
(24, '134134', '', '', '134', '', '', '', ''),
(25, '134134', '', '', '134', '', '', '', ''),
(26, '134134', '', '', '134', '', '', '', ''),
(27, '134134', '', '', '134', '', '', '', ''),
(28, '134134', '', '', '134', '', '', '', ''),
(29, '134134', '', '', '134', '', '', '', ''),
(30, '134134', '', '', '134', '', '', '', ''),
(31, '134134', '', '', '134', '', '', '', ''),
(32, '134134', '', '', '134', '', '', '', ''),
(33, '134134', '', '', '134', '', '', '', ''),
(34, '134134', '', '', '134', '', '', '', ''),
(35, '134134', '', '', '134', '', '', '', ''),
(36, '134134', '', '', '134', '', '', '', ''),
(37, '134134', '', '', '134', '', '', '', ''),
(38, '134134', '', '', '134', '', '', '', ''),
(39, '134134', '', '', '134', '', '', '', ''),
(40, '134134', '', '', '134', '', '', '', ''),
(41, '123123', '', '', '12313', '', '', '', ''),
(42, '123', '', '', '131', '', '', '', ''),
(43, '123', '', '', '131', '', '', '', ''),
(44, '123', '', '', '131', '', '', '', ''),
(45, '123', '', '', '131', '', '', '', ''),
(46, '123', '', '', '131', '', '', '', ''),
(47, '123', '', '', '131', '', '', '', ''),
(48, '123', '', '', '131', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(11) NOT NULL,
  `serial` varchar(50) NOT NULL,
  `number` int(11) NOT NULL,
  `date` date NOT NULL,
  `client_id` int(11) NOT NULL,
  `items` text NOT NULL,
  `price_total` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `serial`, `number`, `date`, `client_id`, `items`, `price_total`) VALUES
(3, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(4, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(5, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(6, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(7, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(8, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(9, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(10, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(11, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(12, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(13, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(14, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(15, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(16, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(17, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(18, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(19, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(20, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(21, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(22, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(23, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(24, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(25, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(26, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(27, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(28, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(29, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(30, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(31, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(32, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(33, 'BIZ', 206, '0000-00-00', 1, '1', 245),
(34, 'BIZ', 206, '0000-00-00', 1, '1', 245);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `um` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` int(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `client_id`, `invoice_id`, `um`, `quantity`, `price`) VALUES
(2, 1, 1, 'buc', 1, 245),
(3, 1, 1, 'buc', 1, 245),
(4, 1, 1, 'buc', 1, 245),
(5, 1, 1, 'buc', 1, 245),
(6, 1, 1, 'buc', 1, 245),
(7, 1, 1, 'buc', 1, 245),
(8, 1, 1, 'buc', 1, 245),
(9, 1, 1, 'buc', 1, 245),
(10, 1, 1, 'buc', 1, 245),
(11, 1, 1, 'buc', 1, 245),
(12, 1, 1, 'buc', 1, 245),
(13, 1, 1, 'buc', 1, 245),
(14, 1, 1, 'buc', 1, 245),
(15, 1, 1, 'buc', 1, 245),
(16, 1, 1, 'buc', 1, 245),
(17, 1, 1, 'buc', 1, 245),
(18, 1, 1, 'buc', 1, 245),
(19, 1, 1, 'buc', 1, 245),
(20, 1, 1, 'buc', 1, 245),
(21, 1, 1, 'buc', 1, 245),
(22, 1, 1, 'buc', 1, 245),
(23, 1, 1, 'buc', 1, 245),
(24, 1, 1, 'buc', 1, 245),
(25, 1, 1, 'buc', 1, 245),
(26, 1, 1, 'buc', 1, 245),
(27, 1, 1, 'buc', 1, 245),
(28, 1, 1, 'buc', 1, 245),
(29, 1, 1, 'buc', 1, 245),
(30, 1, 1, 'buc', 1, 245),
(31, 1, 1, 'buc', 1, 245),
(32, 1, 1, 'buc', 1, 245),
(33, 1, 1, 'buc', 1, 245);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
