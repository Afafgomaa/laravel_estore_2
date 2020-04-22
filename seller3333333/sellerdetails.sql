-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 05, 2020 at 06:58 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `buy_store`
--

-- --------------------------------------------------------

--
-- Table structure for table `sellerdetails`
--

CREATE TABLE `sellerdetails` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(75) NOT NULL,
  `Last_Name` varchar(75) DEFAULT NULL,
  `Username` varchar(75) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `confiremEmail` varchar(250) DEFAULT NULL,
  `emailForrefernce` varchar(250) DEFAULT NULL,
  `Password` varchar(100) NOT NULL,
  `ConfirmPassword` varchar(100) NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `countery` varchar(100) DEFAULT NULL,
  `zip` int(11) DEFAULT NULL,
  `resperson` varchar(100) DEFAULT NULL,
  `Zip_Code` int(11) DEFAULT NULL,
  `filefees` varchar(100) DEFAULT NULL,
  `fileimagefees` varchar(100) DEFAULT NULL,
  `numberFees` int(11) DEFAULT NULL,
  `companyName` varchar(100) DEFAULT NULL,
  `idcard` varchar(100) DEFAULT NULL,
  `address1` varchar(250) DEFAULT NULL,
  `address2` varchar(250) DEFAULT NULL,
  `numberBulding` int(11) DEFAULT NULL,
  `door` int(11) DEFAULT NULL,
  `bankname1` varchar(100) DEFAULT NULL,
  `banksymblo` varchar(100) DEFAULT NULL,
  `softcode` varchar(250) DEFAULT NULL,
  `iban` varchar(250) DEFAULT NULL,
  `namebankaccount` varchar(150) DEFAULT NULL,
  `users_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sellerdetails`
--
ALTER TABLE `sellerdetails`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sellerdetails`
--
ALTER TABLE `sellerdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
