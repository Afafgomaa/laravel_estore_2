-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2020 at 01:11 PM
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
-- Database: `store_new_12`
--

-- --------------------------------------------------------

--
-- Table structure for table `sliders_images`
--

CREATE TABLE `sliders_images` (
  `sliders_id` int(11) NOT NULL,
  `sliders_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousel_id` int(11) DEFAULT NULL,
  `sliders_image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_group` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sliders_html_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `expires_date` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL,
  `type` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `languages_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders_images`
--

INSERT INTO `sliders_images` (`sliders_id`, `sliders_title`, `sliders_url`, `carousel_id`, `sliders_image`, `sliders_group`, `sliders_html_text`, `expires_date`, `date_added`, `status`, `type`, `date_status_change`, `languages_id`) VALUES
(1, 'ewgrege', '', 5, '84', '', '', '2020-07-08 00:00:00', '2019-09-08 18:44:49', 1, 'product', NULL, 1),
(2, 'frgergege', '#', 5, '17', '', '', '2020-10-14 00:00:00', '2019-09-08 18:45:10', 1, 'product', NULL, 1),
(3, 'dgdthrh', '#', 5, '18', '', '', '2019-09-18 00:00:00', '2019-09-08 18:45:40', 1, 'product', NULL, 1),
(4, 'sdasdasdass', '', 1, '89', '', '', '2020-07-15 00:00:00', '2019-09-10 08:26:49', 1, 'product', NULL, 1),
(5, 'fdsfds', '', 1, '89', '', '', '2020-08-14 00:00:00', '2019-09-10 08:27:04', 1, 'product', NULL, 1),
(6, 'fsfsfsfss', '', 1, '89', '', '', '2030-01-30 00:00:00', '2019-09-10 08:27:21', 1, 'product', NULL, 1),
(7, 'fdssdfsf', '', 2, '108', '', '', '2020-11-19 00:00:00', '2019-09-10 08:28:18', 1, 'product', NULL, 1),
(8, 'dasdada', '', 2, '108', '', '', '2021-07-14 00:00:00', '2019-09-10 08:28:31', 1, 'product', NULL, 1),
(9, 'dad', '', 2, '108', '', '', '2020-06-24 00:00:00', '2019-09-10 08:28:49', 1, 'product', NULL, 1),
(10, 'daadsd', '', 3, '110', '', '', '2021-10-20 00:00:00', '2019-09-10 08:29:41', 1, 'product', NULL, 1),
(11, 'sasdasd', '', 3, '110', '', '', '2020-07-15 00:00:00', '2019-09-10 08:29:58', 1, 'product', NULL, 1),
(12, 'ewef', '', 3, '110', '', '', '2021-07-15 00:00:00', '2019-09-10 08:30:13', 1, 'product', NULL, 1),
(13, 'fvtrgr', '', 4, '109', '', '', '2021-06-15 00:00:00', '2019-09-10 12:29:16', 1, 'product', NULL, 1),
(14, 't4tt', '', 4, '109', '', '', '2021-10-25 00:00:00', '2019-09-10 12:29:33', 1, 'product', NULL, 1),
(15, '4t4t4', '', 4, '109', '', '', '2022-07-07 00:00:00', '2019-09-10 12:29:50', 1, 'product', NULL, 1),
(16, 'ewgrege', '#', 5, '16', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(17, 'frgergege', '#', 5, '17', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(18, 'dgdthrh', '#', 5, '18', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(19, 'sdasdasdass', '', 1, '89', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(20, 'fdsfds', '', 1, '89', '', '', '2030-11-01 00:00:00', '2020-04-23 09:53:26', 1, 'product', '2020-04-23 09:53:26', 2),
(21, 'fsfsfsfss', '', 1, '89', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(22, 'fdssdfsf', '', 2, '131', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(23, 'dasdada', '', 2, '84', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(24, 'dad', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(25, 'daadsd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(26, 'sasdasd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(27, 'ewef', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(28, 'fvtrgr', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(29, 't4tt', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(30, '4t4t4', 'dfsd', 4, '109', '', '', '2021-12-14 00:00:00', '2020-04-26 10:17:09', 1, 'product', '2020-04-26 10:17:09', 2),
(31, 'hgfh', '', 1, '89', '', '', '2020-04-21 14:12:54', '2020-04-06 14:12:54', 1, 'product', NULL, 1),
(32, 'www', '', 1, '89', '', '', '2020-06-27 12:10:55', '2020-04-13 12:10:55', 1, 'product', NULL, 1),
(33, 'sssss', '', 1, '89', '', '', '2020-07-31 12:12:45', '2020-03-17 12:12:45', 1, 'product', NULL, 1),
(34, 'sara', '', 1, '89', '', '', '2020-11-28 12:26:44', '2020-04-13 12:26:44', 1, 'product', NULL, 2),
(35, 'sss', '', 1, '89', '', '', '2021-03-31 12:28:27', '2019-12-09 12:28:27', 1, 'product', NULL, 2),
(36, 'wwwww', '', 1, '89', '', '', '2021-01-30 13:03:12', '2020-04-14 13:03:12', 1, 'product', NULL, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
