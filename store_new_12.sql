-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 12, 2020 at 02:55 PM
-- Server version: 5.7.29-0ubuntu0.18.04.1
-- PHP Version: 7.2.29-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
-- Table structure for table `address_book`
--

CREATE TABLE `address_book` (
  `address_book_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `entry_gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `entry_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `entry_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_country_id` int(11) NOT NULL DEFAULT '0',
  `entry_zone_id` int(11) NOT NULL DEFAULT '0',
  `entry_latitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `entry_longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `alert_settings`
--

CREATE TABLE `alert_settings` (
  `alert_id` int(11) NOT NULL,
  `create_customer_email` tinyint(1) NOT NULL DEFAULT '0',
  `create_customer_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_status_notification` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_email` tinyint(1) NOT NULL DEFAULT '0',
  `new_product_notification` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_email` tinyint(1) NOT NULL DEFAULT '0',
  `forgot_notification` tinyint(1) NOT NULL DEFAULT '0',
  `news_email` tinyint(1) NOT NULL DEFAULT '0',
  `news_notification` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_email` tinyint(1) NOT NULL DEFAULT '0',
  `contact_us_notification` tinyint(1) NOT NULL DEFAULT '0',
  `order_email` tinyint(1) NOT NULL DEFAULT '0',
  `order_notification` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `alert_settings`
--

INSERT INTO `alert_settings` (`alert_id`, `create_customer_email`, `create_customer_notification`, `order_status_email`, `order_status_notification`, `new_product_email`, `new_product_notification`, `forgot_email`, `forgot_notification`, `news_email`, `news_notification`, `contact_us_email`, `contact_us_notification`, `order_email`, `order_notification`) VALUES
(1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `api_calls_list`
--

CREATE TABLE `api_calls_list` (
  `id` int(11) NOT NULL,
  `nonce` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_group` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_html_text` text COLLATE utf8mb4_unicode_ci,
  `expires_impressions` int(11) DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `date_scheduled` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `date_status_change` datetime DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `type` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners_history`
--

CREATE TABLE `banners_history` (
  `banners_history_id` int(11) NOT NULL,
  `banners_id` int(11) NOT NULL,
  `banners_shown` int(11) NOT NULL DEFAULT '0',
  `banners_clicked` int(11) NOT NULL DEFAULT '0',
  `banners_history_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `block_ips`
--

CREATE TABLE `block_ips` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_image`, `categories_icon`, `parent_id`, `sort_order`, `date_added`, `last_modified`, `categories_slug`, `categories_status`, `created_at`, `updated_at`) VALUES
(1, '214', '118', 477, NULL, NULL, NULL, 'womens-fashion', 1, NULL, '2020-04-11 08:20:30'),
(2, NULL, '', 477, NULL, NULL, NULL, 'clothes', 1, NULL, '2020-04-11 08:24:57'),
(3, NULL, '', 2, NULL, NULL, NULL, 'womens-dresses', 1, NULL, NULL),
(4, NULL, '', 3, NULL, NULL, NULL, 'casual-dresses', 1, NULL, NULL),
(5, NULL, '', 3, NULL, NULL, NULL, 'party-dresses', 1, NULL, NULL),
(6, NULL, '', 3, NULL, NULL, NULL, 'evening-dresses', 1, NULL, NULL),
(7, NULL, '', 2, NULL, NULL, NULL, 'womens-tops-tees', 1, NULL, NULL),
(8, NULL, '', 7, NULL, NULL, NULL, 'womens-blouses-button-down-shirts', 1, NULL, NULL),
(9, NULL, '', 7, NULL, NULL, NULL, 'womens-knits-tees', 1, NULL, NULL),
(10, NULL, '', 7, NULL, NULL, NULL, 'womens-tunics', 1, NULL, NULL),
(11, NULL, '', 7, NULL, NULL, NULL, 'womens-fashion-hoodies-sweatshirts', 1, NULL, NULL),
(12, NULL, '', 2, NULL, NULL, NULL, 'womens-pants', 1, NULL, NULL),
(13, NULL, '', 12, NULL, NULL, NULL, 'womens-jeans', 1, NULL, NULL),
(14, NULL, '', 12, NULL, NULL, NULL, 'womens-leggings', 1, NULL, NULL),
(15, NULL, '', 2, NULL, NULL, NULL, 'womens-skirts', 1, NULL, NULL),
(16, NULL, '', 2, NULL, NULL, NULL, 'womens-jumpsuits-rompers-overalls', 1, NULL, NULL),
(17, NULL, '', 2, NULL, NULL, NULL, 'womens-coats-jackets-vests', 1, NULL, NULL),
(18, NULL, '', 17, NULL, NULL, NULL, 'womens-wool-pea-coats', 1, NULL, NULL),
(19, NULL, '', 17, NULL, NULL, NULL, 'womens-casual-jackets', 1, NULL, NULL),
(20, NULL, '', 17, NULL, NULL, NULL, 'womens-vests', 1, NULL, NULL),
(21, NULL, '', 17, NULL, NULL, NULL, 'womens-denim-jackets', 1, NULL, NULL),
(22, NULL, '', 17, NULL, NULL, NULL, 'womens-fur-faux-fur', 1, NULL, NULL),
(23, NULL, '', 2, NULL, NULL, NULL, 'womens-sweaters', 1, NULL, NULL),
(24, NULL, '', 23, NULL, NULL, NULL, 'womens-cardigans', 1, NULL, NULL),
(25, NULL, '', 23, NULL, NULL, NULL, 'womens-pullovers', 1, NULL, NULL),
(26, NULL, '', 23, NULL, NULL, NULL, 'womens-vests-sweaters', 1, NULL, NULL),
(27, NULL, '', 2, NULL, NULL, NULL, 'womens-suiting-blazers', 1, NULL, NULL),
(28, NULL, '', 2, NULL, NULL, NULL, 'womens-active-clothing', 1, NULL, NULL),
(29, NULL, '', 28, NULL, NULL, NULL, 'womens-active-shirts-tees', 1, NULL, NULL),
(30, NULL, '', 28, NULL, NULL, NULL, 'womens-active-hoodies', 1, NULL, NULL),
(31, NULL, '', 28, NULL, NULL, NULL, 'womens-active-pants', 1, NULL, NULL),
(32, NULL, '', 28, NULL, NULL, NULL, 'womens-active-leggings', 1, NULL, NULL),
(33, NULL, '', 28, NULL, NULL, NULL, 'womens-active-sports-bras', 1, NULL, NULL),
(34, NULL, '', 2, NULL, NULL, NULL, 'womens-swimsuits-cover-ups', 1, NULL, NULL),
(35, NULL, '', 34, NULL, NULL, NULL, 'womens-bikinis-swimsuit', 1, NULL, NULL),
(36, NULL, '', 34, NULL, NULL, NULL, 'womens-one-piece-swimwear', 1, NULL, NULL),
(37, NULL, '', 34, NULL, NULL, NULL, 'womens-cover-ups', 1, NULL, NULL),
(38, NULL, '', 2, NULL, NULL, NULL, 'womens-lingerie-sleep-lounge', 1, NULL, NULL),
(39, NULL, '', 38, NULL, NULL, NULL, 'womens-lingerie', 1, NULL, NULL),
(40, NULL, '', 39, NULL, NULL, NULL, 'womens-panties', 1, NULL, NULL),
(41, NULL, '', 39, NULL, NULL, NULL, 'womens-baby-dolls-chemises', 1, NULL, NULL),
(42, NULL, '', 39, NULL, NULL, NULL, 'womens-bras', 1, NULL, NULL),
(43, NULL, '', 38, NULL, NULL, NULL, 'womens-sleep-lounge', 1, NULL, NULL),
(44, NULL, '', 43, NULL, NULL, NULL, 'womens-lingerie-sets', 1, NULL, NULL),
(45, NULL, '', 43, NULL, NULL, NULL, 'womens-nightgowns-sleepshirts', 1, NULL, NULL),
(46, NULL, '', 43, NULL, NULL, NULL, 'womens-robes', 1, NULL, NULL),
(47, NULL, '', 2, NULL, NULL, NULL, 'womens-scarves-wraps', 1, NULL, NULL),
(48, NULL, '', 2, NULL, NULL, NULL, 'womens-socks-hosiery', 1, NULL, NULL),
(49, NULL, '', 1, NULL, NULL, NULL, 'womens-jewelry-accessories', 1, NULL, NULL),
(50, NULL, '', 49, NULL, NULL, NULL, 'womens-sunglasses', 1, NULL, NULL),
(51, NULL, '', 50, NULL, NULL, NULL, 'womens-accessories-sunglasses', 1, NULL, NULL),
(52, NULL, '', 50, NULL, NULL, NULL, 'prescription-eyewear-frames', 1, NULL, NULL),
(53, NULL, '', 50, NULL, NULL, NULL, 'womens-eyeglass-cases', 1, NULL, NULL),
(54, NULL, '', 49, NULL, NULL, NULL, 'womens-hats-caps', 1, NULL, NULL),
(55, NULL, '', 49, NULL, NULL, NULL, 'hair-accessories', 1, NULL, NULL),
(56, NULL, '', 49, NULL, NULL, NULL, 'womens-keyrings-keychains', 1, NULL, NULL),
(57, NULL, '', 49, NULL, NULL, NULL, 'womens-belts', 1, NULL, NULL),
(58, NULL, '', 49, NULL, NULL, NULL, 'womens-gloves-mittens', 1, NULL, NULL),
(59, NULL, '', 1, NULL, NULL, NULL, 'womens-bags', 1, NULL, NULL),
(60, NULL, '', 59, NULL, NULL, NULL, 'womens-shoulder-hand-bags', 1, NULL, NULL),
(61, NULL, '', 59, NULL, NULL, NULL, 'womens-cross-weist-bags', 1, NULL, NULL),
(62, NULL, '', 59, NULL, NULL, NULL, 'womens-luggage-backpacks', 1, NULL, NULL),
(63, NULL, '', 59, NULL, NULL, NULL, 'womens-clutches', 1, NULL, NULL),
(64, NULL, '', 59, NULL, NULL, NULL, 'womens-wallets-card-cases-money-organizers', 1, NULL, NULL),
(65, NULL, '', 1, NULL, NULL, NULL, 'womens-shoes', 1, NULL, NULL),
(66, NULL, '', 65, NULL, NULL, NULL, 'womens-sandals-slippers', 1, NULL, NULL),
(67, NULL, '', 66, NULL, NULL, NULL, 'womens-heeled-sandals', 1, NULL, NULL),
(68, NULL, '', 66, NULL, NULL, NULL, 'womens-flats-sandals', 1, NULL, NULL),
(69, NULL, '', 65, NULL, NULL, NULL, 'womens-boots', 1, NULL, NULL),
(70, NULL, '', 69, NULL, NULL, NULL, 'womens-ankle-bootie', 1, NULL, NULL),
(71, NULL, '', 69, NULL, NULL, NULL, 'womens-mid-calf-boots', 1, NULL, NULL),
(72, NULL, '', 69, NULL, NULL, NULL, 'womens-over-the-knee-boots', 1, NULL, NULL),
(73, NULL, '', 69, NULL, NULL, NULL, 'womens-knee-high-boots', 1, NULL, NULL),
(74, NULL, '', 65, NULL, NULL, NULL, 'womens-flats', 1, NULL, NULL),
(75, NULL, '', 65, NULL, NULL, NULL, 'womens-sneakers', 1, NULL, NULL),
(76, NULL, '', 65, NULL, NULL, NULL, 'womens-slippers', 1, NULL, NULL),
(77, NULL, '', 65, NULL, NULL, NULL, 'womens-high-heels', 1, NULL, NULL),
(78, NULL, '', 77, NULL, NULL, NULL, 'high-heels', 1, NULL, NULL),
(79, NULL, '', 77, NULL, NULL, NULL, 'mid-heels', 1, NULL, NULL),
(80, NULL, '', 77, NULL, NULL, NULL, 'low-heels', 1, NULL, NULL),
(81, NULL, '', 65, NULL, NULL, NULL, 'womens-athletic-shoes', 1, NULL, NULL),
(82, NULL, '', 65, NULL, NULL, NULL, 'roadwalker-women-casual-shoes', 1, NULL, NULL),
(83, NULL, '', 1, NULL, NULL, NULL, 'womens-maternity', 1, NULL, NULL),
(84, NULL, '', 83, NULL, NULL, NULL, 'womens-maternity-tops-tees', 1, NULL, NULL),
(85, NULL, '', 83, NULL, NULL, NULL, 'maternity-dresses', 1, NULL, NULL),
(86, NULL, '', 83, NULL, NULL, NULL, 'womens-maternity-pants-capris', 1, NULL, NULL),
(87, NULL, '', 83, NULL, NULL, NULL, 'womens-maternity-sleep-lounge', 1, NULL, NULL),
(88, NULL, '', 1, NULL, NULL, NULL, 'womens-plus-size', 1, NULL, NULL),
(89, NULL, '', 88, NULL, NULL, NULL, 'womens-plus-size-blazers-jackets', 1, NULL, NULL),
(90, NULL, '', 88, NULL, NULL, NULL, 'womens-plus-size-tops-tees', 1, NULL, NULL),
(91, NULL, '', 88, NULL, NULL, NULL, 'womens-plus-size-shorts', 1, NULL, NULL),
(92, NULL, '', 1, NULL, NULL, NULL, 'isdal-generic-fashion-women', 1, NULL, NULL),
(93, NULL, '', 477, NULL, NULL, NULL, 'mens-fashion', 1, NULL, NULL),
(94, NULL, '', 93, NULL, NULL, NULL, 'men-clothing', 1, NULL, NULL),
(95, NULL, '', 94, NULL, NULL, NULL, 'mens-shirts', 1, NULL, NULL),
(96, NULL, '', 95, NULL, NULL, NULL, 'mens-t-shirts', 1, NULL, NULL),
(97, NULL, '', 95, NULL, NULL, NULL, 'mens-casual-button-down-shirts', 1, NULL, NULL),
(98, NULL, '', 95, NULL, NULL, NULL, 'mens-dress-shirts', 1, NULL, NULL),
(99, NULL, '', 95, NULL, NULL, NULL, 'mens-polos', 1, NULL, NULL),
(100, NULL, '', 94, NULL, NULL, NULL, 'mens-hoodies-sweatshirts', 1, NULL, NULL),
(101, NULL, '', 100, NULL, NULL, NULL, 'mens-hoodies', 1, NULL, NULL),
(102, NULL, '', 100, NULL, NULL, NULL, 'mens-sweatshirts', 1, NULL, NULL),
(103, NULL, '', 94, NULL, NULL, NULL, 'mens-jackets-coats', 1, NULL, NULL),
(104, NULL, '', 103, NULL, NULL, NULL, 'mens-lightweight-jackets', 1, NULL, NULL),
(105, NULL, '', 103, NULL, NULL, NULL, 'mens-vests', 1, NULL, NULL),
(106, NULL, '', 103, NULL, NULL, NULL, 'mens-trench-rain-jackets', 1, NULL, NULL),
(107, NULL, '', 103, NULL, NULL, NULL, 'mens-pullovers', 1, NULL, NULL),
(108, NULL, '', 103, NULL, NULL, NULL, 'mens-cardigans', 1, NULL, NULL),
(109, NULL, '', 94, NULL, NULL, NULL, 'mens-suit', 1, NULL, NULL),
(110, NULL, '', 109, NULL, NULL, NULL, 'mens-blazers', 1, NULL, NULL),
(111, NULL, '', 109, NULL, NULL, NULL, 'mens-suit', 1, NULL, NULL),
(112, NULL, '', 94, NULL, NULL, NULL, 'mens-pants', 1, NULL, NULL),
(113, NULL, '', 112, NULL, NULL, NULL, 'mens-calssic', 1, NULL, NULL),
(114, NULL, '', 112, NULL, NULL, NULL, 'mens-jeans', 1, NULL, NULL),
(115, NULL, '', 112, NULL, NULL, NULL, 'mens-shorts', 1, NULL, NULL),
(116, NULL, '', 94, NULL, NULL, NULL, 'men-activewear', 1, NULL, NULL),
(117, NULL, '', 116, NULL, NULL, NULL, 'mens-activewear-shirts-tees', 1, NULL, NULL),
(118, NULL, '', 116, NULL, NULL, NULL, 'mens-activewear-pants', 1, NULL, NULL),
(119, NULL, '', 116, NULL, NULL, NULL, 'mens-activewear-hoodies', 1, NULL, NULL),
(120, NULL, '', 116, NULL, NULL, NULL, 'mens-swimwear', 1, NULL, NULL),
(121, NULL, '', 94, NULL, NULL, NULL, 'mens-underwear', 1, NULL, NULL),
(122, NULL, '', 121, NULL, NULL, NULL, 'mens-undershirts-vests-singlets', 1, NULL, NULL),
(123, NULL, '', 121, NULL, NULL, NULL, 'mens-boxer-briefs', 1, NULL, NULL),
(124, NULL, '', 94, NULL, NULL, NULL, 'mens-sleep-lounge', 1, NULL, NULL),
(125, NULL, '', 94, NULL, NULL, NULL, 'mens-robes', 1, NULL, NULL),
(126, NULL, '', 94, NULL, NULL, NULL, 'mens-socks', 1, NULL, NULL),
(127, NULL, '', 93, NULL, NULL, NULL, 'mens-shoes', 1, NULL, NULL),
(128, NULL, '', 128, NULL, NULL, NULL, 'mens-casual', 1, NULL, NULL),
(129, NULL, '', 128, NULL, NULL, NULL, 'men-sneakers', 1, NULL, NULL),
(130, NULL, '', 128, NULL, NULL, NULL, 'men-sandals', 1, NULL, NULL),
(131, NULL, '', 128, NULL, NULL, NULL, 'mens-athletic-shoes', 1, NULL, NULL),
(132, NULL, '', 128, NULL, NULL, NULL, 'mens-slippers', 1, NULL, NULL),
(133, NULL, '', 128, NULL, NULL, NULL, 'mens-boots', 1, NULL, NULL),
(134, NULL, '', 93, NULL, NULL, NULL, 'mens-fashion-accessories', 1, NULL, NULL),
(135, NULL, '', 134, NULL, NULL, NULL, 'mens-sunglasses-eyewear-accessories', 1, NULL, NULL),
(136, NULL, '', 135, NULL, NULL, NULL, 'mens-sunglasses', 1, NULL, NULL),
(137, NULL, '', 135, NULL, NULL, NULL, 'mens-prescription-eyewear-frames', 1, NULL, NULL),
(138, NULL, '', 135, NULL, NULL, NULL, 'mens-eyeglass-cases', 1, NULL, NULL),
(139, NULL, '', 134, NULL, NULL, NULL, 'mens-hats-caps', 1, NULL, NULL),
(140, NULL, '', 134, NULL, NULL, NULL, 'mens-keyrings-keychains', 1, NULL, NULL),
(141, NULL, '', 134, NULL, NULL, NULL, 'mens-belts', 1, NULL, NULL),
(142, NULL, '', 134, NULL, NULL, NULL, 'mens-ties', 1, NULL, NULL),
(143, NULL, '', 134, NULL, NULL, NULL, 'mens-gloves-mittens', 1, NULL, NULL),
(144, NULL, '', 134, NULL, NULL, NULL, 'mens-cuff-links-shirt-studs-tie-clips', 1, NULL, NULL),
(145, NULL, '', 134, NULL, NULL, NULL, 'mens-scarves', 1, NULL, NULL),
(146, NULL, '', 134, NULL, NULL, NULL, 'mens-bracelets-necklaces-rings', 1, NULL, NULL),
(147, NULL, '', 93, NULL, NULL, NULL, 'mens-wallets-card-cases-money-organizers', 1, NULL, NULL),
(148, NULL, '', 477, NULL, NULL, NULL, 'watches', 1, NULL, NULL),
(149, NULL, '', 148, NULL, NULL, NULL, 'mens-watches', 1, NULL, NULL),
(150, NULL, '', 149, NULL, NULL, NULL, 'mens-casual-watches', 1, NULL, NULL),
(151, NULL, '', 149, NULL, NULL, NULL, 'mens-sports-watches', 1, NULL, NULL),
(152, NULL, '', 149, NULL, NULL, NULL, 'mens-formal-watches', 1, NULL, NULL),
(153, NULL, '', 148, NULL, NULL, NULL, 'women-watches', 1, NULL, NULL),
(154, NULL, '', 153, NULL, NULL, NULL, 'women-casual-watches', 1, NULL, NULL),
(155, NULL, '', 153, NULL, NULL, NULL, 'women-sports-watches', 1, NULL, NULL),
(156, NULL, '', 153, NULL, NULL, NULL, 'women-formal-watches', 1, NULL, NULL),
(157, NULL, '', 153, NULL, NULL, NULL, 'womens-bracelet-strap-watches', 1, NULL, NULL),
(158, NULL, '', 477, NULL, NULL, NULL, 'kids-fashion', 1, NULL, NULL),
(159, NULL, '', 158, NULL, NULL, NULL, 'teen-girls-fashion', 1, NULL, NULL),
(160, NULL, '', 159, NULL, NULL, NULL, 'teen-girls-clothes', 1, NULL, NULL),
(161, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-dresses', 1, NULL, NULL),
(162, NULL, '', 160, NULL, NULL, NULL, 'girls-fashion-sets', 1, NULL, NULL),
(163, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-pyjamas-night-dress', 1, NULL, NULL),
(164, NULL, '', 160, NULL, NULL, NULL, 'girls-t-shirts-vests-polos', 1, NULL, NULL),
(165, NULL, '', 160, NULL, NULL, NULL, 'girls-socks-tights', 1, NULL, NULL),
(166, NULL, '', 160, NULL, NULL, NULL, 'girls-pants-capris', 1, NULL, NULL),
(167, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-playsuits-jumpsuits', 1, NULL, NULL),
(168, NULL, '', 160, NULL, NULL, NULL, 'girls-fashion-hoodies-sweatshirts', 1, NULL, NULL),
(169, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-swimwear', 1, NULL, NULL),
(170, NULL, '', 160, NULL, NULL, NULL, 'girls-sweatshirts', 1, NULL, NULL),
(171, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-shorts', 1, NULL, NULL),
(172, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-jeans', 1, NULL, NULL),
(173, NULL, '', 160, NULL, NULL, NULL, 'girls-skirts-scooters-skorts', 1, NULL, NULL),
(174, NULL, '', 160, NULL, NULL, NULL, 'girls-trousers-leggings', 1, NULL, NULL),
(175, NULL, '', 160, NULL, NULL, NULL, 'girl-jackets-coats', 1, NULL, NULL),
(176, NULL, '', 160, NULL, NULL, NULL, 'teen-girls-underwear-socks', 1, NULL, NULL),
(177, NULL, '', 159, NULL, NULL, NULL, 'girls-fashion-accessories', 1, NULL, NULL),
(178, NULL, '', 177, NULL, NULL, NULL, 'fashion-hats-caps', 1, NULL, NULL),
(179, NULL, '', 177, NULL, NULL, NULL, 'girls-fashion-sunglasses', 1, NULL, NULL),
(180, NULL, '', 177, NULL, NULL, NULL, 'girls-fashion-scarves', 1, NULL, NULL),
(181, NULL, '', 177, NULL, NULL, NULL, 'girls-fashion-belts', 1, NULL, NULL),
(182, NULL, '', 177, NULL, NULL, NULL, 'teen-girls-watches-sunglasses', 1, NULL, NULL),
(183, NULL, '', 159, NULL, NULL, NULL, 'girls-shoes', 1, NULL, NULL),
(184, NULL, '', 183, NULL, NULL, NULL, 'girls-sneakers', 1, NULL, NULL),
(185, NULL, '', 183, NULL, NULL, NULL, 'girls-flats', 1, NULL, NULL),
(186, NULL, '', 183, NULL, NULL, NULL, 'girls-boots', 1, NULL, NULL),
(187, NULL, '', 183, NULL, NULL, NULL, 'girls-sandals-flip-flops', 1, NULL, NULL),
(188, NULL, '', 183, NULL, NULL, NULL, 'girls-slippers', 1, NULL, NULL),
(189, NULL, '', 183, NULL, NULL, NULL, 'girls-pumps-shoes', 1, NULL, NULL),
(190, NULL, '', 159, NULL, NULL, NULL, 'girls-bags', 1, NULL, NULL),
(191, NULL, '', 158, NULL, NULL, NULL, 'boys-fashion', 1, NULL, NULL),
(192, NULL, '', 191, NULL, NULL, NULL, 'boys-clothing', 1, NULL, NULL),
(193, NULL, '', 192, NULL, NULL, NULL, 'boys-tops-tees', 1, NULL, NULL),
(194, NULL, '', 192, NULL, NULL, NULL, 'boys-sets', 1, NULL, NULL),
(195, NULL, '', 192, NULL, NULL, NULL, 'boys-sleepwear', 1, NULL, NULL),
(196, NULL, '', 192, NULL, NULL, NULL, 'boy-hoodies-sweatshirts', 1, NULL, NULL),
(197, NULL, '', 192, NULL, NULL, NULL, 'boys-pants', 1, NULL, NULL),
(198, NULL, '', 192, NULL, NULL, NULL, 'boys-socks', 1, NULL, NULL),
(199, NULL, '', 192, NULL, NULL, NULL, 'boys-sweaters', 1, NULL, NULL),
(200, NULL, '', 192, NULL, NULL, NULL, 'boys-button-down-dress-shirts', 1, NULL, NULL),
(201, NULL, '', 192, NULL, NULL, NULL, 'boys-coats-jackets-gilets', 1, NULL, NULL),
(202, NULL, '', 192, NULL, NULL, NULL, 'boys-jeans', 1, NULL, NULL),
(203, NULL, '', 192, NULL, NULL, NULL, 'boys-shorts', 1, NULL, NULL),
(204, NULL, '', 192, NULL, NULL, NULL, 'boys-swimwear', 1, NULL, NULL),
(205, NULL, '', 192, NULL, NULL, NULL, 'boys-underwear', 1, NULL, NULL),
(206, NULL, '', 192, NULL, NULL, NULL, 'boys-active-clothing', 1, NULL, NULL),
(207, NULL, '', 192, NULL, NULL, NULL, 'boys-overalls', 1, NULL, NULL),
(208, NULL, '', 192, NULL, NULL, NULL, 'boys-suits-sport-coats', 1, NULL, NULL),
(209, NULL, '', 191, NULL, NULL, NULL, 'boys-shoes', 1, NULL, NULL),
(210, NULL, '', 210, NULL, NULL, NULL, 'boys-sneakers', 1, NULL, NULL),
(211, NULL, '', 210, NULL, NULL, NULL, 'boys-athletic-shoes', 1, NULL, NULL),
(212, NULL, '', 210, NULL, NULL, NULL, 'boys-boots', 1, NULL, NULL),
(213, NULL, '', 210, NULL, NULL, NULL, 'boys-casual', 1, NULL, NULL),
(214, NULL, '', 210, NULL, NULL, NULL, 'boys-sandals-flip-flops', 1, NULL, NULL),
(215, NULL, '', 210, NULL, NULL, NULL, 'boys-slippers', 1, NULL, NULL),
(216, NULL, '', 191, NULL, NULL, NULL, 'boys-watches', 1, NULL, NULL),
(217, NULL, '', 191, NULL, NULL, NULL, 'boys-fashion-accessories', 1, NULL, NULL),
(218, NULL, '', 217, NULL, NULL, NULL, 'boys-hats-caps', 1, NULL, NULL),
(219, NULL, '', 217, NULL, NULL, NULL, 'boys-sunglasses-eyewear', 1, NULL, NULL),
(220, NULL, '', 217, NULL, NULL, NULL, 'boys-suspenders', 1, NULL, NULL),
(221, NULL, '', 217, NULL, NULL, NULL, 'boys-belts', 1, NULL, NULL),
(222, NULL, '', 191, NULL, NULL, NULL, 'boys-bags', 1, NULL, NULL),
(223, NULL, '', 477, NULL, NULL, NULL, 'baby', 1, NULL, NULL),
(224, NULL, '', 223, NULL, NULL, NULL, 'baby-clothing', 1, NULL, NULL),
(225, NULL, '', 224, NULL, NULL, NULL, 'baby-bodysuits', 1, NULL, NULL),
(226, NULL, '', 224, NULL, NULL, NULL, 'baby-clothing-sets', 1, NULL, NULL),
(227, NULL, '', 224, NULL, NULL, NULL, 'baby-underwear-baselayers', 1, NULL, NULL),
(228, 'https://i.picsum.photos/id/280/200/300.jpg', 'https://i.picsum.photos/id/280/200/300.jpg', 0, NULL, NULL, NULL, 'womens-make-up', 1, NULL, NULL),
(229, NULL, '', 228, NULL, NULL, NULL, 'makeup-palettes', 1, NULL, NULL),
(230, NULL, '', 228, NULL, NULL, NULL, 'womens-face-make-up', 1, NULL, NULL),
(231, NULL, '', 230, NULL, NULL, NULL, 'face-foundation-makeup', 1, NULL, NULL),
(232, NULL, '', 230, NULL, NULL, NULL, 'concealers-neutralizers-makeup', 1, NULL, NULL),
(233, NULL, '', 230, NULL, NULL, NULL, 'face-powder-makeup', 1, NULL, NULL),
(234, NULL, '', 230, NULL, NULL, NULL, 'womens-cheeks-make-up-makeup', 1, NULL, NULL),
(235, NULL, '', 230, NULL, NULL, NULL, 'bronzers-highlighters-makeup', 1, NULL, NULL),
(236, NULL, '', 230, NULL, NULL, NULL, 'foundation-primers-makeup', 1, NULL, NULL),
(237, NULL, '', 230, NULL, NULL, NULL, 'contour-creams-makeup', 1, NULL, NULL),
(238, NULL, '', 228, NULL, NULL, NULL, 'nail-makeup', 1, NULL, NULL),
(239, NULL, '', 238, NULL, NULL, NULL, 'nail-art-makeup', 1, NULL, NULL),
(240, NULL, '', 238, NULL, NULL, NULL, 'nail-polish-makeup', 1, NULL, NULL),
(241, NULL, '', 238, NULL, NULL, NULL, 'nail-treatments-makeup', 1, NULL, NULL),
(242, NULL, '', 238, NULL, NULL, NULL, 'nail-polish-remover-makeup', 1, NULL, NULL),
(243, NULL, '', 238, NULL, NULL, NULL, 'nail-nail-treatments-solution-makeup', 1, NULL, NULL),
(244, NULL, '', 228, NULL, NULL, NULL, 'lips-make-up', 1, NULL, NULL),
(245, NULL, '', 244, NULL, NULL, NULL, 'lipstick-makeup', 1, NULL, NULL),
(246, NULL, '', 244, NULL, NULL, NULL, 'lip-glosses-makeup', 1, NULL, NULL),
(247, NULL, '', 244, NULL, NULL, NULL, 'lip-liners-makeup', 1, NULL, NULL),
(248, NULL, '', 244, NULL, NULL, NULL, 'lip-stains-makeup', 1, NULL, NULL),
(249, NULL, '', 228, NULL, NULL, NULL, 'eyes-makeup', 1, NULL, NULL),
(250, NULL, '', 250, NULL, NULL, NULL, 'eyeliner-makeup', 1, NULL, NULL),
(251, NULL, '', 250, NULL, NULL, NULL, 'eyes-mascara', 1, NULL, NULL),
(252, NULL, '', 250, NULL, NULL, NULL, 'eyebrow-color-makeup', 1, NULL, NULL),
(253, NULL, '', 250, NULL, NULL, NULL, 'eyelash-enhancers-primers-makeup', 1, NULL, NULL),
(254, NULL, '', 250, NULL, NULL, NULL, 'eyeliner-shadow-combinations-makeup', 1, NULL, NULL),
(255, NULL, '', 228, NULL, NULL, NULL, 'facial-makeup-brushes-tools', 1, NULL, NULL),
(256, NULL, '', 255, NULL, NULL, NULL, 'facial-makeup-brushes-tools', 1, NULL, NULL),
(257, NULL, '', 255, NULL, NULL, NULL, 'eye-lip-makeup', 1, NULL, NULL),
(258, NULL, '', 255, NULL, NULL, NULL, 'lip-brushes', 1, NULL, NULL),
(259, NULL, '', 255, NULL, NULL, NULL, 'bags-cases', 1, NULL, NULL),
(260, NULL, '', 255, NULL, NULL, NULL, 'cotton-balls-swabs', 1, NULL, NULL),
(261, NULL, '', 228, NULL, NULL, NULL, 'makeup-remover', 1, NULL, NULL),
(262, NULL, '', 261, NULL, NULL, NULL, 'face-makeup-remover', 1, NULL, NULL),
(263, NULL, '', 261, NULL, NULL, NULL, 'eye-makeup-remover', 1, NULL, NULL),
(264, NULL, '', 228, NULL, NULL, NULL, 'body-makeup', 1, NULL, NULL),
(265, NULL, '', 264, NULL, NULL, NULL, 'sun-block-sun-tan', 1, NULL, NULL),
(266, NULL, '', 264, NULL, NULL, NULL, 'temporary-tattoos', 1, NULL, NULL),
(267, NULL, '', 264, NULL, NULL, NULL, 'bronzing-powder-makeup', 1, NULL, NULL),
(268, NULL, '', 264, NULL, NULL, NULL, 'personal-care-d', 1, NULL, NULL),
(269, NULL, '', 228, NULL, NULL, NULL, 'skin-care-prducts', 1, NULL, NULL),
(270, NULL, '', 269, NULL, NULL, NULL, 'styling-products-shave-hair-removal', 1, NULL, NULL),
(271, NULL, '', 269, NULL, NULL, NULL, 'styling-products-mens-bathshower', 1, NULL, NULL),
(272, NULL, '', 269, NULL, NULL, NULL, 'hair-care-d', 1, NULL, NULL),
(273, NULL, '', 228, NULL, NULL, NULL, 'hair-shampoos-conditioner', 1, NULL, NULL),
(274, NULL, '', 273, NULL, NULL, NULL, 'hair-styling-mousses-foams-oils', 1, NULL, NULL),
(275, NULL, '', 273, NULL, NULL, NULL, 'hair-care-styling-tools-appliances-d', 1, NULL, NULL),
(276, NULL, '', 273, NULL, NULL, NULL, 'hair-accessories', 1, NULL, NULL),
(277, NULL, '', 273, NULL, NULL, NULL, 'extension-wigs-acessories', 1, NULL, NULL),
(278, NULL, '', 273, NULL, NULL, NULL, 'hair-cutting-tools', 1, NULL, NULL),
(279, NULL, '', 273, NULL, NULL, NULL, 'hair-colouring-products', 1, NULL, NULL),
(280, NULL, '', 228, NULL, NULL, NULL, 'skin-care-tools', 1, NULL, NULL),
(281, NULL, '', 280, NULL, NULL, NULL, 'microdermabrasion-exfoliating-devices', 1, NULL, NULL),
(282, NULL, '', 280, NULL, NULL, NULL, 'beauty-powered-facial-cleansing-devices-accessories', 1, NULL, NULL),
(283, NULL, '', 280, NULL, NULL, NULL, 'feet-hand-nail-tools', 1, NULL, NULL),
(284, NULL, '', 228, NULL, NULL, NULL, 'oral-care', 1, NULL, NULL),
(285, NULL, '', 284, NULL, NULL, NULL, 'toothbrushes', 1, NULL, NULL),
(286, NULL, '', 284, NULL, NULL, NULL, 'toothpast-whitening', 1, NULL, NULL),
(287, NULL, '', 284, NULL, NULL, NULL, 'mouthwash-breath-fresheners', 1, NULL, NULL),
(288, NULL, '', 284, NULL, NULL, NULL, 'dental-floss-picks', 1, NULL, NULL),
(289, NULL, '', 228, NULL, NULL, NULL, 'fragrances', 1, NULL, NULL),
(290, NULL, '', 289, NULL, NULL, NULL, 'womens-fragrances', 1, NULL, NULL),
(291, NULL, '', 291, NULL, NULL, NULL, 'womens-eau-de-parfum-fragrances', 1, NULL, NULL),
(292, NULL, '', 291, NULL, NULL, NULL, 'womens-body-sprays-fragrances', 1, NULL, NULL),
(293, NULL, '', 291, NULL, NULL, NULL, 'womens-body-splah', 1, NULL, NULL),
(294, NULL, '', 289, NULL, NULL, NULL, 'mens-fragrances', 1, NULL, NULL),
(295, NULL, '', 294, NULL, NULL, NULL, 'mens-eau-de-parfum-fragrances', 1, NULL, NULL),
(296, NULL, '', 294, NULL, NULL, NULL, 'mens-body-sprays-fragrances', 1, NULL, NULL),
(297, NULL, '', 294, NULL, NULL, NULL, 'mens-eau-de-body-splah', 1, NULL, NULL),
(298, NULL, '', 294, NULL, NULL, NULL, 'mens-cologne-fragrances', 1, NULL, NULL),
(299, NULL, '', 0, NULL, NULL, NULL, 'grocery', 1, NULL, NULL),
(300, NULL, '', 299, NULL, NULL, NULL, 'household-cleaning', 1, NULL, NULL),
(301, NULL, '', 300, NULL, NULL, NULL, 'household-cleaning-tools', 1, NULL, NULL),
(302, NULL, '', 300, NULL, NULL, NULL, 'household-grocery-kitchen-oven-cleaners', 1, NULL, NULL),
(303, NULL, '', 300, NULL, NULL, NULL, 'all-purpose-cleaners', 1, NULL, NULL),
(304, NULL, '', 300, NULL, NULL, NULL, 'household-disinfectant-wipes', 1, NULL, NULL),
(305, NULL, '', 300, NULL, NULL, NULL, 'household-cleaning-glass-cleaners', 1, NULL, NULL),
(306, NULL, '', 300, NULL, NULL, NULL, 'carpet-cleaners-deodorizers-d', 1, NULL, NULL),
(307, NULL, '', 300, NULL, NULL, NULL, 'household-floor-cleaners', 1, NULL, NULL),
(308, NULL, '', 300, NULL, NULL, NULL, 'wood-polish-care-d', 1, NULL, NULL),
(309, NULL, '', 300, NULL, NULL, NULL, 'household-cleaning-paper-towels-d', 1, NULL, NULL),
(310, NULL, '', 299, NULL, NULL, NULL, 'air-fresheners', 1, NULL, NULL),
(311, NULL, '', 310, NULL, NULL, NULL, 'sprays-air-fresheners', 1, NULL, NULL),
(312, NULL, '', 310, NULL, NULL, NULL, 'electric-air-fresheners', 1, NULL, NULL),
(313, NULL, '', 310, NULL, NULL, NULL, 'solids-liquids-air-fresheners', 1, NULL, NULL),
(314, NULL, '', 299, NULL, NULL, NULL, 'laundry-supplies', 1, NULL, NULL),
(315, NULL, '', 314, NULL, NULL, NULL, 'powders-detergent', 1, NULL, NULL),
(316, NULL, '', 314, NULL, NULL, NULL, 'liquid-detergent', 1, NULL, NULL),
(317, NULL, '', 314, NULL, NULL, NULL, 'fabric-softner-laundry-bleach', 1, NULL, NULL),
(318, NULL, '', 314, NULL, NULL, NULL, 'stain-removal', 1, NULL, NULL),
(319, NULL, '', 299, NULL, NULL, NULL, 'paper-plastic-household-supplies', 1, NULL, NULL),
(320, NULL, '', 319, NULL, NULL, NULL, 'disposable-food-storage', 1, NULL, NULL),
(321, NULL, '', 319, NULL, NULL, NULL, 'disposable-drinkware-paper-plastic', 1, NULL, NULL),
(322, NULL, '', 319, NULL, NULL, NULL, 'facial-tissues', 1, NULL, NULL),
(323, NULL, '', 319, NULL, NULL, NULL, 'wet-wipes', 1, NULL, NULL),
(324, NULL, '', 319, NULL, NULL, NULL, 'trash-compost-lawn-bags', 1, NULL, NULL),
(325, NULL, '', 319, NULL, NULL, NULL, 'paper-towels', 1, NULL, NULL),
(326, NULL, '', 319, NULL, NULL, NULL, 'disposable-plates-bowls-cutlery', 1, NULL, NULL),
(327, NULL, '', 299, NULL, NULL, NULL, 'beverages', 1, NULL, NULL),
(328, NULL, '', 327, NULL, NULL, NULL, 'soft-drinks', 1, NULL, NULL),
(329, NULL, '', 327, NULL, NULL, NULL, 'juice-drinks', 1, NULL, NULL),
(330, NULL, '', 327, NULL, NULL, NULL, 'powdered-drink-mixes-flavorings', 1, NULL, NULL),
(331, NULL, '', 327, NULL, NULL, NULL, 'grocery-milk-cream', 1, NULL, NULL),
(332, NULL, '', 327, NULL, NULL, NULL, 'energy-drinks', 1, NULL, NULL),
(333, NULL, '', 299, NULL, NULL, NULL, 'food-cupboard-supplies', 1, NULL, NULL),
(334, NULL, '', 333, NULL, NULL, NULL, 'cooking-oil', 1, NULL, NULL),
(335, NULL, '', 334, NULL, NULL, NULL, 'vegetable-oil', 1, NULL, NULL),
(336, NULL, '', 334, NULL, NULL, NULL, 'ghee', 1, NULL, NULL),
(337, NULL, '', 334, NULL, NULL, NULL, 'frying-oil-blended-oil', 1, NULL, NULL),
(338, NULL, '', 334, NULL, NULL, NULL, 'olive-oil-5071', 1, NULL, NULL),
(339, NULL, '', 333, NULL, NULL, NULL, 'pasta-noodles', 1, NULL, NULL),
(340, NULL, '', 339, NULL, NULL, NULL, 'pasta', 1, NULL, NULL),
(341, NULL, '', 339, NULL, NULL, NULL, 'noodles', 1, NULL, NULL),
(342, NULL, '', 333, NULL, NULL, NULL, 'crisps-snacks-nuts', 1, NULL, NULL),
(343, NULL, '', 333, NULL, NULL, NULL, 'sauce-dressings', 1, NULL, NULL),
(344, NULL, '', 343, NULL, NULL, NULL, 'mustard-bbq-sauce-others', 1, NULL, NULL),
(345, NULL, '', 343, NULL, NULL, NULL, 'vinegar', 1, NULL, NULL),
(346, NULL, '', 343, NULL, NULL, NULL, 'ketchup', 1, NULL, NULL),
(347, NULL, '', 343, NULL, NULL, NULL, 'tomato-sauce', 1, NULL, NULL),
(348, NULL, '', 343, NULL, NULL, NULL, 'salad-dressing', 1, NULL, NULL),
(349, NULL, '', 343, NULL, NULL, NULL, 'mayonnaise', 1, NULL, NULL),
(350, NULL, '', 333, NULL, NULL, NULL, 'grains-rice', 1, NULL, NULL),
(351, NULL, '', 350, NULL, NULL, NULL, 'other-rice', 1, NULL, NULL),
(352, NULL, '', 350, NULL, NULL, NULL, 'basmati-rice', 1, NULL, NULL),
(353, NULL, '', 350, NULL, NULL, NULL, 'grains-pulses', 1, NULL, NULL),
(354, NULL, '', 333, NULL, NULL, NULL, 'tins-cans-grocery', 1, NULL, NULL),
(355, NULL, '', 333, NULL, NULL, NULL, 'cubes-stocks-cooking-spices', 1, NULL, NULL),
(356, NULL, '', 333, NULL, NULL, NULL, 'mixed-spices-seasonings', 1, NULL, NULL),
(357, NULL, '', 299, NULL, NULL, NULL, 'cooking-baking', 1, NULL, NULL),
(358, NULL, '', 357, NULL, NULL, NULL, 'dried-fruits-raisins', 1, NULL, NULL),
(359, NULL, '', 357, NULL, NULL, NULL, 'grocery-seeds-nuts', 1, NULL, NULL),
(360, NULL, '', 357, NULL, NULL, NULL, 'syrups-sugars-sweeteners', 1, NULL, NULL),
(361, NULL, '', 357, NULL, NULL, NULL, 'flours-meals-breadcrumbs-seasoned-coatings', 1, NULL, NULL),
(362, NULL, '', 299, NULL, NULL, NULL, 'canned-jarred-packaged-foods', 1, NULL, NULL),
(363, NULL, '', 362, NULL, NULL, NULL, 'candy-chocolate-halva', 1, NULL, NULL),
(364, NULL, '', 362, NULL, NULL, NULL, 'jams', 1, NULL, NULL),
(365, NULL, '', 362, NULL, NULL, NULL, 'canned-jarred-packaged-foods-antipasto', 1, NULL, NULL),
(366, NULL, '', 362, NULL, NULL, NULL, 'tinned-vegetables', 1, NULL, NULL),
(367, NULL, '', 362, NULL, NULL, NULL, 'canned-jarred-beans-peas', 1, NULL, NULL),
(368, NULL, '', 362, NULL, NULL, NULL, 'canned-fish', 1, NULL, NULL),
(369, NULL, '', 299, NULL, NULL, NULL, 'candy-chocolate', 1, NULL, NULL),
(370, NULL, '', 369, NULL, NULL, NULL, 'candy-chocolate-assortments', 1, NULL, NULL),
(371, NULL, '', 369, NULL, NULL, NULL, 'candy-chocolate-bars', 1, NULL, NULL),
(372, NULL, '', 369, NULL, NULL, NULL, 'candy-chocolate-gifts', 1, NULL, NULL),
(373, NULL, '', 369, NULL, NULL, NULL, 'grocery-sweet-biscuits', 1, NULL, NULL),
(374, NULL, '', 369, NULL, NULL, NULL, 'pancake-waffle-baking-mixes', 1, NULL, NULL),
(375, NULL, '', 369, NULL, NULL, NULL, 'fruity-candy', 1, NULL, NULL),
(376, NULL, '', 369, NULL, NULL, NULL, 'chewing-gum-suckers-lollipops', 1, NULL, NULL),
(377, NULL, '', 299, NULL, NULL, NULL, 'household-batteries', 1, NULL, NULL),
(378, NULL, '', 299, NULL, NULL, NULL, 'grocery-mathces-fire-lighters', 1, NULL, NULL),
(379, NULL, '', 0, NULL, NULL, NULL, 'computer', 1, NULL, NULL),
(380, NULL, '', 379, NULL, NULL, NULL, 'computer', 1, NULL, NULL),
(381, NULL, '', 380, NULL, NULL, NULL, 'laptops', 1, NULL, NULL),
(382, NULL, '', 380, NULL, NULL, NULL, 'macbooks', 1, NULL, NULL),
(383, NULL, '', 380, NULL, NULL, NULL, 'tower-desktops', 1, NULL, NULL),
(384, NULL, '', 380, NULL, NULL, NULL, 'all-in-ones-desktops', 1, NULL, NULL),
(385, NULL, '', 380, NULL, NULL, NULL, 'desktop-computers', 1, NULL, NULL),
(386, NULL, '', 379, NULL, NULL, NULL, 'computer-components', 1, NULL, NULL),
(387, NULL, '', 386, NULL, NULL, NULL, 'computer-components-external-sound-cards', 1, NULL, NULL),
(388, NULL, '', 386, NULL, NULL, NULL, 'laptop-replacement-parts', 1, NULL, NULL),
(389, NULL, '', 386, NULL, NULL, NULL, 'computer-components-fans-cooling', 1, NULL, NULL),
(390, NULL, '', 386, NULL, NULL, NULL, 'internal-hd', 1, NULL, NULL),
(391, NULL, '', 386, NULL, NULL, NULL, 'internal-solid-state-drives', 1, NULL, NULL),
(392, NULL, '', 386, NULL, NULL, NULL, 'computer-components-graphics-cards', 1, NULL, NULL),
(393, NULL, '', 386, NULL, NULL, NULL, 'computer-motherboards', 1, NULL, NULL),
(394, NULL, '', 386, NULL, NULL, NULL, 'computer-components-memory', 1, NULL, NULL),
(395, NULL, '', 386, NULL, NULL, NULL, 'computer-power-supplies', 1, NULL, NULL),
(396, NULL, '', 386, NULL, NULL, NULL, 'computer-components-computer-cases', 1, NULL, NULL),
(397, NULL, '', 386, NULL, NULL, NULL, 'computer-components-cpu-processors', 1, NULL, NULL),
(398, NULL, '', 386, NULL, NULL, NULL, 'computer-components-external-optical-drives', 1, NULL, NULL),
(399, NULL, '', 386, NULL, NULL, NULL, 'ocmputer-components-kvm-switches', 1, NULL, NULL),
(400, NULL, '', 386, NULL, NULL, NULL, 'computer-network-cards', 1, NULL, NULL),
(401, NULL, '', 386, NULL, NULL, NULL, 'internal-optical-drives', 1, NULL, NULL),
(402, NULL, '', 386, NULL, NULL, NULL, 'internal-memory-card-readers', 1, NULL, NULL),
(403, NULL, '', 379, NULL, NULL, NULL, 'printers', 1, NULL, NULL),
(404, NULL, '', 403, NULL, NULL, NULL, 'laser-printers', 1, NULL, NULL),
(405, NULL, '', 403, NULL, NULL, NULL, 'label-printers', 1, NULL, NULL),
(406, NULL, '', 403, NULL, NULL, NULL, 'inkjet-printers', 1, NULL, NULL),
(407, NULL, '', 379, NULL, NULL, NULL, 'monitors', 1, NULL, NULL),
(408, NULL, '', 379, NULL, NULL, NULL, 'scanners', 1, NULL, NULL),
(409, NULL, '', 379, NULL, NULL, NULL, 'servres', 1, NULL, NULL),
(410, NULL, '', 379, NULL, NULL, NULL, 'computer-data-storage', 1, NULL, NULL),
(411, NULL, '', 410, NULL, NULL, NULL, 'flash-drives', 1, NULL, NULL),
(412, NULL, '', 410, NULL, NULL, NULL, 'external-hd', 1, NULL, NULL),
(413, NULL, '', 410, NULL, NULL, NULL, 'external-solid-state-drives', 1, NULL, NULL),
(414, NULL, '', 410, NULL, NULL, NULL, 'network-attached-storage', 1, NULL, NULL),
(415, NULL, '', 379, NULL, NULL, NULL, 'networking', 1, NULL, NULL),
(416, NULL, '', 415, NULL, NULL, NULL, 'computer-networking-routers', 1, NULL, NULL),
(417, NULL, '', 415, NULL, NULL, NULL, 'computer-network-switch', 1, NULL, NULL),
(418, NULL, '', 415, NULL, NULL, NULL, 'computer-networking-repeaters', 1, NULL, NULL),
(419, NULL, '', 415, NULL, NULL, NULL, 'networking-modems', 1, NULL, NULL),
(420, NULL, '', 379, NULL, NULL, NULL, 'computing-accessories', 1, NULL, NULL),
(421, NULL, '', 420, NULL, NULL, NULL, 'accessories-keyboard', 1, NULL, NULL),
(422, NULL, '', 420, NULL, NULL, NULL, 'accessories-mouse', 1, NULL, NULL),
(423, NULL, '', 420, NULL, NULL, NULL, 'keyboard-mouse-combos', 1, NULL, NULL),
(424, NULL, '', 420, NULL, NULL, NULL, 'computer-game-hardware', 1, NULL, NULL),
(425, NULL, '', 420, NULL, NULL, NULL, 'computer-cable-adapters', 1, NULL, NULL),
(426, NULL, '', 420, NULL, NULL, NULL, 'hard-drive-accessories', 1, NULL, NULL),
(427, NULL, '', 420, NULL, NULL, NULL, 'computer-cables-interconnects', 1, NULL, NULL),
(428, NULL, '', 420, NULL, NULL, NULL, 'printer-ink-toner', 1, NULL, NULL),
(429, NULL, '', 420, NULL, NULL, NULL, 'computer-blank-media', 1, NULL, NULL),
(430, NULL, '', 420, NULL, NULL, NULL, 'computer-memory-cards', 1, NULL, NULL),
(431, NULL, '', 420, NULL, NULL, NULL, 'computer-speakers', 1, NULL, NULL),
(432, NULL, '', 420, NULL, NULL, NULL, 'computer-microphones', 1, NULL, NULL),
(433, NULL, '', 420, NULL, NULL, NULL, 'computer-webcams', 1, NULL, NULL),
(434, NULL, '', 420, NULL, NULL, NULL, 'battery-backup-ups', 1, NULL, NULL),
(435, NULL, '', 420, NULL, NULL, NULL, 'computer-surge-protectors', 1, NULL, NULL),
(436, NULL, '', 420, NULL, NULL, NULL, 'computer-monitor-accessories', 1, NULL, NULL),
(437, NULL, '', 420, NULL, NULL, NULL, 'video-projector-accessories-d', 1, NULL, NULL),
(438, NULL, '', 420, NULL, NULL, NULL, 'laptop-accessories', 1, NULL, NULL),
(439, NULL, '', 420, NULL, NULL, NULL, 'laptop-bags-cases-sleeves', 1, NULL, NULL),
(440, NULL, '', 420, NULL, NULL, NULL, 'laptop-chargers-adapters', 1, NULL, NULL),
(441, NULL, '', 420, NULL, NULL, NULL, 'laptop-replacement-screens', 1, NULL, NULL),
(442, NULL, '', 420, NULL, NULL, NULL, 'laptop-accessories-batteries', 1, NULL, NULL),
(443, NULL, '', 420, NULL, NULL, NULL, 'cooling-pads-external-fans', 1, NULL, NULL),
(444, NULL, '', 420, NULL, NULL, NULL, 'laptop-accessories-stands', 1, NULL, NULL),
(445, NULL, '', 420, NULL, NULL, NULL, 'laptop-accessories-mounts', 1, NULL, NULL),
(446, NULL, '', 0, NULL, NULL, NULL, 'home-appliances', 1, NULL, NULL),
(447, NULL, '', 446, NULL, NULL, NULL, 'televisions', 1, NULL, NULL),
(448, NULL, '', 446, NULL, NULL, NULL, 'appliances-fridges-freezers', 1, NULL, NULL),
(449, NULL, '', 446, NULL, NULL, NULL, 'appliances-washers-dryers', 1, NULL, NULL),
(450, NULL, '', 446, NULL, NULL, NULL, 'range-hoods', 1, NULL, NULL),
(451, NULL, '', 446, NULL, NULL, NULL, 'air-conditioners', 1, NULL, NULL),
(452, NULL, '', 446, NULL, NULL, NULL, 'ovens-and-microwave', 1, NULL, NULL),
(453, NULL, '', 446, NULL, NULL, NULL, 'freezers', 1, NULL, NULL),
(454, NULL, '', 446, NULL, NULL, NULL, 'dishwashers', 1, NULL, NULL),
(455, NULL, '', 446, NULL, NULL, NULL, 'large-appliance-accessories', 1, NULL, NULL),
(456, NULL, '', 446, NULL, NULL, NULL, 'recivers', 1, NULL, NULL),
(457, NULL, '', 446, NULL, NULL, NULL, 'home-theater-andsound-systems', 1, NULL, NULL),
(458, NULL, '', 0, NULL, NULL, NULL, 'mobile', 1, NULL, NULL),
(459, NULL, '', 458, NULL, NULL, NULL, 'mobile', 1, NULL, NULL),
(460, NULL, '', 459, NULL, NULL, NULL, 'android-phones', 1, NULL, NULL),
(461, NULL, '', 459, NULL, NULL, NULL, 'ios-phones', 1, NULL, NULL),
(462, NULL, '', 458, NULL, NULL, NULL, 'tablets', 1, NULL, NULL),
(463, NULL, '', 458, NULL, NULL, NULL, 'smart-watches', 1, NULL, NULL),
(464, NULL, '', 458, NULL, NULL, NULL, 'virtual-reality-phones-tablets', 1, NULL, NULL),
(465, NULL, '', 458, NULL, NULL, NULL, 'mobile-accessories', 1, NULL, NULL),
(466, NULL, '', 463, NULL, NULL, NULL, 'mobile-phone-bluetooth-headsets', 1, NULL, NULL),
(467, NULL, '', 463, NULL, NULL, NULL, 'mobile-phone-chargers', 1, NULL, NULL),
(468, NULL, '', 463, NULL, NULL, NULL, 'mobile-phone-memory-cards', 1, NULL, NULL),
(469, NULL, '', 463, NULL, NULL, NULL, 'mobile-phone-cases-covers', 1, NULL, NULL),
(470, NULL, '', 463, NULL, NULL, NULL, 'mobile-phone-screen-protectors', 1, NULL, NULL),
(471, NULL, '', 463, NULL, NULL, NULL, 'selfie-sticks-tripods', 1, NULL, NULL),
(472, NULL, '', 463, NULL, NULL, NULL, 'mobile-game-controllers', 1, NULL, NULL),
(473, NULL, '', 463, NULL, NULL, NULL, 'mobile-phones-car-accessories', 1, NULL, NULL),
(474, NULL, '', 458, NULL, NULL, NULL, 'mobile-phone-replacement-parts', 1, NULL, NULL),
(475, NULL, '', 466, NULL, NULL, NULL, 'mobile-phone-chargers-adaptors', 1, NULL, NULL),
(476, NULL, '', 466, NULL, NULL, NULL, 'mobile-phone-batteries', 1, NULL, NULL),
(477, NULL, '', 0, NULL, NULL, NULL, 'fashion', 1, NULL, NULL),
(478, NULL, '', 466, NULL, NULL, NULL, 'mobile-phone-accessories-cables', 1, NULL, NULL),
(479, NULL, '', 466, NULL, NULL, NULL, 'sim-related-accessories', 1, NULL, NULL),
(480, NULL, '', 466, NULL, NULL, NULL, 'smartphone-cameras-lenses', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `categories_description`
--

CREATE TABLE `categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories_description`
--

INSERT INTO `categories_description` (`categories_description_id`, `categories_id`, `language_id`, `categories_name`) VALUES
(1, 477, 1, 'fashion'),
(2, 477, 2, 'الازياء'),
(3, 1, 1, 'Womens Fashion'),
(4, 1, 2, 'ازياء  حريمي'),
(5, 2, 1, 'Clothes'),
(6, 2, 2, 'ملابس'),
(7, 3, 1, 'Womens Dresses'),
(8, 3, 2, 'فساتين'),
(9, 4, 1, 'Casual Dresses'),
(10, 4, 2, 'فساتين كاجوال'),
(11, 5, 1, 'Party Dresses'),
(12, 5, 2, 'فساتين للحفلات'),
(13, 6, 1, 'Evening Dresses'),
(14, 6, 2, 'فساتين للسهرة'),
(15, 7, 1, 'Womens Tops Tees'),
(16, 7, 2, 'توب & تيشيرت'),
(17, 8, 1, 'Womens Blouses Button Down Shirt'),
(18, 8, 2, 'بلوزات وقمصان بزراير'),
(19, 9, 1, 'Womens Knits Tees'),
(20, 9, 2, 'تيشيرتات'),
(21, 10, 1, 'Womens Tunics'),
(22, 10, 2, 'السترات و التونك'),
(23, 11, 1, 'Womens Fashion Hoodies Sweatshir'),
(24, 11, 2, 'هوديز وسويت شيرتات'),
(25, 12, 1, 'Womens Pants'),
(26, 12, 2, 'بنطلونات'),
(27, 13, 1, 'Womens Jeans'),
(28, 13, 2, 'جينز'),
(29, 14, 1, 'Womens Leggings'),
(30, 14, 2, 'بنطلونات استرتش'),
(31, 15, 1, 'Womens Skirts'),
(32, 15, 2, 'جيبات'),
(33, 16, 1, 'Womens Jumpsuits Rompers Overall'),
(34, 16, 2, 'سالوبيتات & سالوبيتات بدون أكمام'),
(35, 17, 1, 'Womens Coats Jackets Vests'),
(36, 17, 2, 'جواكيت وبلاطي'),
(37, 18, 1, 'Womens Wool Pea Coats'),
(38, 18, 2, 'معاطف الصوف'),
(39, 19, 1, 'Womens Casual Jackets'),
(40, 19, 2, 'جواكيت كاجوال'),
(41, 20, 1, 'Womens Vests'),
(42, 20, 2, 'فيستات'),
(43, 21, 1, 'Womens Denim Jackets'),
(44, 21, 2, 'جواكيت جينز'),
(45, 22, 1, 'Womens Fur Faux Fur'),
(46, 22, 2, 'الفراء '),
(47, 23, 1, 'Womens Sweaters'),
(48, 23, 2, 'بلوفرات و كارديجان'),
(49, 24, 1, 'Womens Cardigans'),
(50, 24, 2, 'كاردياجن'),
(51, 25, 1, 'Womens Pullovers'),
(52, 25, 2, 'بلوفرات'),
(53, 26, 1, 'Womens Vests Sweaters'),
(54, 26, 2, 'سترات'),
(55, 27, 1, 'Womens Suiting Blazers'),
(56, 27, 2, 'بدل وبليزرات'),
(57, 28, 1, 'Womens Active Clothing'),
(58, 28, 2, 'ملابس رياضية'),
(59, 29, 1, 'Womens Active Shirts Tees'),
(60, 29, 2, 'تيشيرتات رياضية'),
(61, 30, 1, 'Womens Active Hoodies'),
(62, 30, 2, 'هوديز رياضية'),
(63, 31, 1, 'Womens Active Pants'),
(64, 31, 2, 'بنطلونات رياضية'),
(65, 32, 1, 'Womens Active Leggings'),
(66, 32, 2, 'ليجنز رياضية'),
(67, 33, 1, 'Womens Active Sports Bras'),
(68, 33, 2, 'حمالات رياضية'),
(69, 34, 1, 'Womens Swimsuits Cover Ups'),
(70, 34, 2, 'مايوهات وكاش مايوه'),
(71, 35, 1, 'Womens Bikinis Swimsuit'),
(72, 35, 2, 'مايوه قطعتين'),
(73, 36, 1, 'Womens One Piece Swimwear'),
(74, 36, 2, 'مايوه  قطعة واحدة'),
(75, 37, 1, 'Womens Cover Ups'),
(76, 37, 2, 'كاش مايوه'),
(77, 38, 1, 'Womens Lingerie Sleep Lounge'),
(78, 38, 2, 'الملابس الداخلية واللانجري'),
(79, 39, 1, 'Womens Lingerie'),
(80, 39, 2, 'لانجري'),
(81, 40, 1, 'Womens Panties'),
(82, 40, 2, 'بانتيهات'),
(83, 41, 1, 'Womens Baby Dolls Chemises'),
(84, 41, 2, 'قمصان نوم'),
(85, 42, 1, 'Womens Bras'),
(86, 42, 2, 'حمالات الصدر'),
(87, 43, 1, 'Womens Sleep Lounge'),
(88, 43, 2, 'ملابس نوم'),
(89, 44, 1, 'Womens Lingerie Sets'),
(90, 44, 2, 'بيجامات'),
(91, 45, 1, 'Womens Nightgowns Sleepshirts'),
(92, 45, 2, 'قمصان نوم'),
(93, 46, 1, 'Womens Robes'),
(94, 46, 2, 'ارواب'),
(95, 47, 1, 'Womens Scarves Wraps'),
(96, 47, 2, 'سكارفات و ايشاربات'),
(97, 48, 1, 'Womens Socks Hosiery'),
(98, 48, 2, 'شرابات'),
(99, 49, 1, 'Womens Jewelry Accessories'),
(100, 49, 2, 'مجوهرات و اكسسوارات'),
(101, 50, 1, 'Womens Sunglasses'),
(102, 50, 2, 'النظارات الشمسية وإكسسوارات النظ'),
(103, 51, 1, 'Womens Accessories Sunglasses'),
(104, 51, 2, 'نظارات شمسيه'),
(105, 52, 1, 'Prescription Eyewear Frames'),
(106, 52, 2, 'نظارات طبية'),
(107, 53, 1, 'Womens Eyeglass Cases'),
(108, 53, 2, 'اكسسوارات النظارات'),
(109, 54, 1, 'Womens Hats Caps'),
(110, 54, 2, 'كابات'),
(111, 55, 1, 'Hair Accessories'),
(112, 55, 2, 'اكسسوارات شعر'),
(113, 56, 1, 'Womens Keyrings Keychains'),
(114, 56, 2, 'ميدالية مفاتيح'),
(115, 57, 1, 'Womens Belts'),
(116, 57, 2, 'أحزمة'),
(117, 58, 1, 'Womens Gloves Mittens'),
(118, 58, 2, 'جوانتيات'),
(119, 59, 1, 'Womens Bags'),
(120, 59, 2, 'شنط'),
(121, 60, 1, 'Womens Shoulder Hand Bags'),
(122, 60, 2, 'حقائب اليد و الكتف'),
(123, 61, 1, 'Womens Cross Weist Bags'),
(124, 61, 2, 'حقائب  وسط و كروس'),
(125, 62, 1, 'Womens Luggage Backpacks'),
(126, 62, 2, 'حقائب الظهر'),
(127, 63, 1, 'Womens Clutches'),
(128, 63, 2, 'شنط سواريه'),
(129, 64, 1, 'Womens Wallets Card Cases Money '),
(130, 64, 2, 'محافظ وحافظات بطاقات ونقود'),
(131, 65, 1, 'Womens Shoes'),
(132, 65, 2, 'احذية'),
(133, 66, 1, 'Womens Sandals Slippers'),
(134, 66, 2, 'صنادل'),
(135, 67, 1, 'Womens Heeled Sandals'),
(136, 67, 2, 'صنادل بكعب عالي'),
(137, 68, 1, 'Womens Flats Sandals'),
(138, 68, 2, 'صنادل فلات'),
(139, 69, 1, 'Womens Boots'),
(140, 69, 2, 'بووت'),
(141, 70, 1, 'Womens Ankle Bootie'),
(142, 70, 2, 'بوت قصير'),
(143, 71, 1, 'Womens Mid Calf Boots'),
(144, 71, 2, 'بوت منتصف الساق'),
(145, 72, 1, 'Womens Over The Knee Boots'),
(146, 72, 2, 'بوت علي الركبه '),
(147, 73, 1, 'Womens Knee High Boots'),
(148, 73, 2, 'بوت اعلي الركبه '),
(149, 74, 1, 'Womens Flats'),
(150, 74, 2, 'حذاء فلات'),
(151, 75, 1, 'Womens Sneakers'),
(152, 75, 2, 'سنيكرز'),
(153, 76, 1, 'Womens Slippers'),
(154, 76, 2, 'شباشب'),
(155, 77, 1, 'Womens High Heels'),
(156, 77, 2, 'حذاء كلاسيكي'),
(157, 78, 1, 'High Heels'),
(158, 78, 2, 'حذاء بكعب طويل'),
(159, 79, 1, 'Mid Heels'),
(160, 79, 2, 'حذاء بكعب وسط'),
(161, 80, 1, 'Low Heels'),
(162, 80, 2, 'حذاء بكعب قصير'),
(163, 81, 1, 'Womens Athletic Shoes'),
(164, 81, 2, 'حذاء رياضي'),
(165, 82, 1, 'Roadwalker Women Casual Shoes'),
(166, 82, 2, 'حذاء كاجوال'),
(167, 83, 1, 'Womens Maternity'),
(168, 83, 2, 'الحمل و الامومه'),
(169, 84, 1, 'Womens Maternity Tops Tees'),
(170, 84, 2, 'توب وتيشيرت'),
(171, 85, 1, 'Maternity Dresses'),
(172, 85, 2, 'فساتين'),
(173, 86, 1, 'Womens Maternity Pants Capris'),
(174, 86, 2, 'بنطلونات'),
(175, 87, 1, 'Womens Maternity Sleep Lounge'),
(176, 87, 2, 'ملابس نوم'),
(177, 88, 1, 'Womens Plus Size'),
(178, 88, 2, 'مقاسات كبيرة'),
(179, 89, 1, 'Womens Plus Size Blazers Jackets'),
(180, 89, 2, 'بليزر وجاكيتات'),
(181, 90, 1, 'Womens Plus Size Tops Tees'),
(182, 90, 2, 'ملابس علوية وتيشيرت'),
(183, 91, 1, 'Womens Plus Size Shorts'),
(184, 91, 2, 'بنطلونات و شورتات'),
(185, 92, 1, 'Isdal Generic Fashion Women'),
(186, 92, 2, 'اسدال و عباية'),
(187, 93, 1, 'Mens Fashion'),
(188, 93, 2, 'ازياء رجالى'),
(189, 94, 1, 'Men Clothing'),
(190, 94, 2, 'ملابس رجالي'),
(191, 95, 1, 'Mens Shirts'),
(192, 95, 2, 'توب رجالي'),
(193, 96, 1, 'Mens T Shirts'),
(194, 96, 2, 'تي شيرت رجالي'),
(195, 97, 1, 'Mens Casual Button Down Shirts'),
(196, 97, 2, 'قمصان كاجوال رجالي'),
(197, 98, 1, 'Mens Dress Shirts'),
(198, 98, 2, 'قمصان فورمال رجالي'),
(199, 99, 1, 'Mens Polos'),
(200, 99, 2, 'تيشرتات بولو رجالي'),
(201, 100, 1, 'Mens Hoodies Sweatshirts'),
(202, 100, 2, 'هوديز وسويت شيرتات رجالي'),
(203, 101, 1, 'Mens Hoodies'),
(204, 101, 2, 'هوديز رجالي'),
(205, 102, 1, 'Mens Sweatshirts'),
(206, 102, 2, 'سويت شيرتات رجالي'),
(207, 103, 1, 'Mens Jackets Coats'),
(208, 103, 2, 'جواكيت رجالي'),
(209, 104, 1, 'Mens Lightweight Jackets'),
(210, 104, 2, 'جواكيت رجالي'),
(211, 105, 1, 'Mens Vests'),
(212, 105, 2, 'فيستات رجالي'),
(213, 106, 1, 'Mens Trench Rain Jackets'),
(214, 106, 2, 'معاطف رجالي'),
(215, 107, 1, 'Mens Pullovers'),
(216, 107, 2, 'بلوفرات رجالي'),
(217, 108, 1, 'Mens Cardigans'),
(218, 108, 2, 'كارديجان رجالي'),
(219, 109, 1, 'Mens Suit'),
(220, 109, 2, 'بدل رجالي'),
(221, 110, 1, 'Mens Blazers'),
(222, 110, 2, 'بليزرات'),
(223, 111, 1, 'Mens Suit'),
(224, 111, 2, 'بدلة'),
(225, 112, 1, 'Mens Pants'),
(226, 112, 2, 'بنطلونات رجالي'),
(227, 113, 1, 'Mens Calssic'),
(228, 113, 2, 'بنطلون قماش'),
(229, 114, 1, 'Mens Jeans'),
(230, 114, 2, 'جينز رجالي'),
(231, 115, 1, 'Mens Shorts'),
(232, 115, 2, 'شورتات رجالي'),
(233, 116, 1, 'Men Activewear'),
(234, 116, 2, 'ملابس رياضية رجالي'),
(235, 117, 1, 'Mens Activewear Shirts Tees'),
(236, 117, 2, 'تي شيرتات رياضية'),
(237, 118, 1, 'Mens Activewear Pants'),
(238, 118, 2, 'بنطلونات و شورتات رياضية'),
(239, 119, 1, 'Mens Activewear Hoodies'),
(240, 119, 2, 'هوديز رياضية'),
(241, 120, 1, 'Mens Swimwear'),
(242, 120, 2, 'ملابس سباحة رجالي'),
(243, 121, 1, 'Mens Underwear'),
(244, 121, 2, 'ملابس داخلية رجالي'),
(245, 122, 1, 'Mens Undershirts Vests Singlets'),
(246, 122, 2, 'فانلات داخلية رجالي'),
(247, 123, 1, 'Mens Boxer Briefs'),
(248, 123, 2, 'بوكسرات و ملابس تحتية رجالي'),
(249, 124, 1, 'Mens Sleep Lounge'),
(250, 124, 2, 'ملابس النوم رجالي'),
(251, 125, 1, 'Mens Robes'),
(252, 125, 2, 'الجلباب'),
(253, 126, 1, 'Mens Socks'),
(254, 126, 2, 'شرابات رجالي'),
(255, 127, 1, 'Mens Shoes'),
(256, 127, 2, 'أحذية رجالي'),
(257, 128, 1, 'Mens Casual'),
(258, 128, 2, 'أحذية كاجوال رجالي'),
(259, 129, 1, 'Men Sneakers'),
(260, 129, 2, 'سنيكرز رجالي'),
(261, 130, 1, 'Men Sandals'),
(262, 130, 2, 'صنادل رجالي'),
(263, 131, 1, 'Mens Athletic Shoes'),
(264, 131, 2, 'أحذية رياضية رجالي'),
(265, 132, 1, 'Mens Slippers'),
(266, 132, 2, 'شباشب رجالى'),
(267, 133, 1, 'Mens Boots'),
(268, 133, 2, 'بوت رجالي'),
(269, 134, 1, 'Mens Fashion Accessories'),
(270, 134, 2, 'اكسسوارات رجالي'),
(271, 135, 1, 'Mens Sunglasses Eyewear Accessor'),
(272, 135, 2, 'النظارات الشمسية واكسسوارات النظ'),
(273, 136, 1, 'Mens Sunglasses'),
(274, 136, 2, 'نظارات شمسيه رجالي'),
(275, 137, 1, 'Mens Prescription Eyewear Frames'),
(276, 137, 2, 'النظارات الطبية رجالي'),
(277, 138, 1, 'Mens Eyeglass Cases'),
(278, 138, 2, 'اكسسوارات النظارات رجالي'),
(279, 139, 1, 'Mens Hats Caps'),
(280, 139, 2, 'كابات رجالي'),
(281, 140, 1, 'Mens Keyrings Keychains'),
(282, 140, 2, 'ميدالية مفاتيح رجالي'),
(283, 141, 1, 'Mens Belts'),
(284, 141, 2, 'أحزمة رجالي'),
(285, 142, 1, 'Mens Ties '),
(286, 142, 2, 'ربطات العنق رجالي'),
(287, 143, 1, 'Mens Gloves Mittens'),
(288, 143, 2, 'جوانتيات رجالي'),
(289, 144, 1, 'Mens Cuff Links Shirt Studs Tie '),
(290, 144, 2, ' زراير الاساور والقميص ودبوس الك'),
(291, 145, 1, 'Mens Scarves'),
(292, 145, 2, 'سكارفات رجالي'),
(293, 146, 1, 'Mens Bracelets Necklaces Rings'),
(294, 146, 2, 'أساور و سلاسل و خواتم رجالي'),
(295, 147, 1, 'Mens Wallets Card Cases Money Or'),
(296, 147, 2, 'محافظ وحافظات بطاقات ونقود رجالي'),
(297, 148, 1, 'Watches'),
(298, 148, 2, 'ساعات'),
(299, 149, 1, 'Mens Watches'),
(300, 149, 2, 'ساعات رجالي'),
(301, 150, 1, 'Mens Casual Watches'),
(302, 150, 2, 'كاجوال رجالي'),
(303, 151, 1, 'Mens Sports Watches'),
(304, 151, 2, 'رياضي رجالي'),
(305, 152, 1, 'Mens Formal Watches'),
(306, 152, 2, 'كلاسيك رجالي'),
(307, 153, 1, 'Women Watches'),
(308, 153, 2, 'ساعات حريمى'),
(309, 154, 1, 'Women Casual Watches'),
(310, 154, 2, 'كاجوال حريمي'),
(311, 155, 1, 'Women Sports Watches'),
(312, 155, 2, 'رياضي حريمي'),
(313, 156, 1, 'Women Formal Watches'),
(314, 156, 2, 'كلاسيك حريمي'),
(315, 157, 1, 'Womens Bracelet Strap Watches'),
(316, 157, 2, 'اسورة معدن حريمي'),
(317, 158, 1, 'Kids Fashion'),
(318, 158, 2, 'ازياء أطفال'),
(319, 159, 1, 'Teen Girls Fashion'),
(320, 159, 2, 'ملابس بنات'),
(321, 160, 1, 'Teen Girls Clothes'),
(322, 160, 2, 'ملابس أطفال بناتي'),
(323, 161, 1, 'Teen Girls Dresses'),
(324, 161, 2, 'فساتين أطفال بناتي'),
(325, 162, 1, 'Girls Fashion Sets'),
(326, 162, 2, 'اطقم ملابس اطفال بناتي'),
(327, 163, 1, 'Teen Girls Pyjamas Night Dress'),
(328, 163, 2, 'ملابس النوم أطفال بناتي'),
(329, 164, 1, 'Girls T Shirts Vests Polos'),
(330, 164, 2, 'توب أطفال بناتي'),
(331, 165, 1, 'Girls Socks Tights'),
(332, 165, 2, 'شرابات وكولونات أطفال بناتي'),
(333, 166, 1, 'Girls Pants Capris'),
(334, 166, 2, 'بنطلونات أطفال بناتي'),
(335, 167, 1, 'Teen Girls Playsuits Jumpsuits'),
(336, 167, 2, 'سالوبيتات أطفال بناتي'),
(337, 168, 1, 'Girls Fashion Hoodies Sweatshirt'),
(338, 168, 2, 'هوديز وسويت شيرتات أطفال بناتي'),
(339, 169, 1, 'Teen Girls Swimwear'),
(340, 169, 2, 'ملابس سباحة أطفال بناتي'),
(341, 170, 1, 'Girls Sweatshirts'),
(342, 170, 2, 'سويترات أطفال بناتي'),
(343, 171, 1, 'Teen Girls Shorts'),
(344, 171, 2, 'شورتات أطفال بناتي'),
(345, 172, 1, 'Teen Girls Jeans'),
(346, 172, 2, 'جينز أطفال بناتي'),
(347, 173, 1, 'Girls Skirts Scooters Skorts'),
(348, 173, 2, 'جيبات وجيب شورت أطفال بناتي'),
(349, 174, 1, 'Girls Trousers Leggings'),
(350, 174, 2, 'بنطلون ليجن أطفال بناتي'),
(351, 175, 1, 'Girl Jackets Coats'),
(352, 175, 2, 'جواكت أطفال بناتي'),
(353, 176, 1, 'Teen Girls Underwear Socks'),
(354, 176, 2, 'ملابس داخلية أطفال بناتي'),
(355, 177, 1, 'Girls Fashion Accessories'),
(356, 177, 2, 'اكسسوارات أطفال بناتي'),
(357, 178, 1, 'Fashion Hats Caps'),
(358, 178, 2, 'قبعات  أطفال بناتي'),
(359, 179, 1, 'Girls Fashion Sunglasses'),
(360, 179, 2, 'نظارات شمسيه أطفال بناتي'),
(361, 180, 1, 'Girls Fashion Scarves'),
(362, 180, 2, 'سكارفات أطفال بناتي'),
(363, 181, 1, 'Girls Fashion Belts'),
(364, 181, 2, 'أحزمة أطفال بناتي'),
(365, 182, 1, 'Teen Girls Watches Sunglasses'),
(366, 182, 2, 'ساعات أطفال بناتي'),
(367, 183, 1, 'Girls Shoes'),
(368, 183, 2, 'أحذية أطفال بناتي'),
(369, 184, 1, 'Girls Sneakers'),
(370, 184, 2, 'أحذية رياضية أطفال بناتي'),
(371, 185, 1, 'Girls Flats'),
(372, 185, 2, 'أحذية فلات أطفال بناتي'),
(373, 186, 1, 'Girls Boots'),
(374, 186, 2, 'أحذية بوت أطفال بناتي'),
(375, 187, 1, 'Girls Sandals Flip Flops'),
(376, 187, 2, 'صنادل أطفال بناتي'),
(377, 188, 1, 'Girls Slippers'),
(378, 188, 2, 'شباشب أطفال بناتي'),
(379, 189, 1, 'Girls Pumps Shoes'),
(380, 189, 2, 'حذاء كلاسيكي أطفال بناتي'),
(381, 190, 1, 'Girls Bags'),
(382, 190, 2, 'شنط أطفال بناتي'),
(383, 191, 1, 'Boys Fashion'),
(384, 191, 2, 'ملابس أولاد'),
(385, 192, 1, 'Boys Clothing'),
(386, 192, 2, 'ملابس أطفال ولادي'),
(387, 193, 1, 'Boys Tops Tees'),
(388, 193, 2, 'تيشيرتات أطفال ولادي'),
(389, 194, 1, 'Boys Sets'),
(390, 194, 2, 'اطقم ملابس اطفال ولادي'),
(391, 195, 1, 'Boys Sleepwear'),
(392, 195, 2, 'ملابس نوم أطفال ولادي'),
(393, 196, 1, 'Boy Hoodies Sweatshirts'),
(394, 196, 2, 'هوديز و سويت شيرت اطفال ولادي'),
(395, 197, 1, 'Boys Pants'),
(396, 197, 2, 'بنطلونات اطفال ولادي'),
(397, 198, 1, 'Boys Socks'),
(398, 198, 2, 'شرابات اطفال ولادي'),
(399, 199, 1, 'Boys Sweaters'),
(400, 199, 2, 'سويترات أطفال ولادي'),
(401, 200, 1, 'Boys Button Down Dress Shirts'),
(402, 200, 2, 'قمصان أطفال ولادي'),
(403, 201, 1, 'Boys Coats Jackets Gilets'),
(404, 201, 2, 'جواكت أطفال ولادي'),
(405, 202, 1, 'Boys Jeans'),
(406, 202, 2, 'جينز أطفال ولادي'),
(407, 203, 1, 'Boys Shorts'),
(408, 203, 2, 'شورتات اطفال ولادي'),
(409, 204, 1, 'Boys Swimwear'),
(410, 204, 2, 'ملابس سباحة أطفال ولادي'),
(411, 205, 1, 'Boys Underwear'),
(412, 205, 2, 'ملابس داخلية أطفال ولادي'),
(413, 206, 1, 'Boys Active Clothing'),
(414, 206, 2, 'ملابس رياضية أطفال ولادي'),
(415, 207, 1, 'Boys Overalls'),
(416, 207, 2, 'سالوبيتات أطفال ولادي'),
(417, 208, 1, 'Boys Suits Sport Coats'),
(418, 208, 2, 'بدل أطفال ولادي'),
(419, 209, 1, 'Boys Shoes'),
(420, 209, 2, 'أحذية أطفال ولادي'),
(421, 210, 1, 'Boys Sneakers'),
(422, 210, 2, 'سنيكرز أطفال ولادي'),
(423, 211, 1, 'Boys Athletic Shoes'),
(424, 211, 2, ' أحذية رياضية أطفال ولادي'),
(425, 212, 1, 'Boys Boots'),
(426, 212, 2, 'بوت أطفال ولادي'),
(427, 213, 1, 'Boys Casual'),
(428, 213, 2, 'أحذية كاجوال أطفال ولادي'),
(429, 214, 1, 'Boys Sandals Flip Flops'),
(430, 214, 2, 'صنادل و سابو أطفال ولادي'),
(431, 215, 1, 'Boys Slippers'),
(432, 215, 2, 'شباشب أطفال ولادي'),
(433, 216, 1, 'Boys Watches'),
(434, 216, 2, 'ساعات اطفال ولادي'),
(435, 217, 1, 'Boys Fashion Accessories'),
(436, 217, 2, 'اكسسوارات أطفال ولادي'),
(437, 218, 1, 'Boys Hats Caps'),
(438, 218, 2, 'طواقي وكابات أطفال ولادي'),
(439, 219, 1, 'Boys Sunglasses Eyewear'),
(440, 219, 2, 'نظارات شمسيه أطفال ولادي'),
(441, 220, 1, 'Boys Suspenders'),
(442, 220, 2, 'حمالات بنطلون أطفال ولادي'),
(443, 221, 1, 'Boys Belts'),
(444, 221, 2, 'أحزمة أطفال ولادي'),
(445, 222, 1, 'Boys Bags'),
(446, 222, 2, 'شنط أطفال ولادي'),
(447, 223, 1, 'Baby'),
(448, 223, 2, 'حديثي الولادة'),
(449, 224, 1, 'Baby Clothing'),
(450, 224, 2, 'ملابس حديثي الولادة'),
(451, 225, 1, 'Baby Bodysuits'),
(452, 225, 2, 'سالوبيت أطفال'),
(453, 226, 1, 'Baby Clothing Sets'),
(454, 226, 2, 'اطقم ملابس حديثي الولادة'),
(455, 227, 1, 'Baby Underwear Baselayers'),
(456, 227, 2, 'بنطلونات داخلية ومشمع للحفاض ومل'),
(457, 228, 1, 'Womens Make Up'),
(458, 228, 2, 'مكياج'),
(459, 229, 1, 'Makeup Palettes'),
(460, 229, 2, 'علب ادوات تجميل كامله'),
(461, 230, 1, 'Womens Face Make Up'),
(462, 230, 2, 'مكياج الوجه'),
(463, 231, 1, 'Face Foundation Makeup'),
(464, 231, 2, 'كريم أساس'),
(465, 232, 1, 'Concealers Neutralizers Makeup'),
(466, 232, 2, 'كونسيلر وموحد للون البشرة'),
(467, 233, 1, 'Face Powder Makeup'),
(468, 233, 2, 'بودرة'),
(469, 234, 1, 'Womens Cheeks Make Up Makeup'),
(470, 234, 2, 'أحمر خدود'),
(471, 235, 1, 'Bronzers Highlighters Makeup'),
(472, 235, 2, 'برونزر وهايلايتر'),
(473, 236, 1, 'Foundation Primers Makeup'),
(474, 236, 2, 'برايمر'),
(475, 237, 1, 'Contour Creams Makeup'),
(476, 237, 2, 'كريمات كونتور'),
(477, 238, 1, 'Nail Makeup'),
(478, 238, 2, 'طلاء الأظافر'),
(479, 239, 1, 'Nail Art Makeup'),
(480, 239, 2, 'اكسسورات تزيين الأظافر'),
(481, 240, 1, 'Nail Polish Makeup'),
(482, 240, 2, 'طلاء اظافر'),
(483, 241, 1, 'Nail Treatments Makeup'),
(484, 241, 2, 'مستحضرات علاج الأظافر'),
(485, 242, 1, 'Nail Polish Remover Makeup'),
(486, 242, 2, 'مزيل طلاء الأظافر'),
(487, 243, 1, 'Nail Nail Treatments Solution Ma'),
(488, 243, 2, 'مستحضرات تقوية الأظافر'),
(489, 244, 1, 'Lips Make Up'),
(490, 244, 2, 'أحمر شفاة'),
(491, 245, 1, 'Lipstick Makeup'),
(492, 245, 2, 'أحمر شفاة'),
(493, 246, 1, 'Lip Glosses Makeup'),
(494, 246, 2, 'ملمع شفاة'),
(495, 247, 1, 'Lip Liners Makeup'),
(496, 247, 2, 'محدد شفاة'),
(497, 248, 1, 'Lip Stains Makeup'),
(498, 248, 2, 'أحمر شفاه سائل'),
(499, 249, 1, 'Eyes Makeup'),
(500, 249, 2, 'مكياج عيون'),
(501, 250, 1, 'Eyeliner Makeup'),
(502, 250, 2, 'كحل'),
(503, 251, 1, 'Eyes Mascara'),
(504, 251, 2, 'ماسكرا'),
(505, 252, 1, 'Eyebrow Color Makeup'),
(506, 252, 2, 'لون الحاجب'),
(507, 253, 1, 'Eyelash Enhancers Primers Makeup'),
(508, 253, 2, 'رموش صناعيه'),
(509, 254, 1, 'Eyeliner Shadow Combinations Mak'),
(510, 254, 2, 'ايلاينر و ايشادو'),
(511, 255, 1, 'Facial Makeup Brushes Tools'),
(512, 255, 2, 'فرش مكياج'),
(513, 256, 1, 'Facial Makeup Brushes Tools'),
(514, 256, 2, 'فرش مكياج الوجه'),
(515, 257, 1, 'Eye Lip Makeup'),
(516, 257, 2, 'فرش مكياج العيون و الشفاه'),
(517, 258, 1, 'Lip Brushes'),
(518, 258, 2, 'فرش الشفاه'),
(519, 259, 1, 'Bags Cases'),
(520, 259, 2, 'شنط مكياج'),
(521, 260, 1, 'Cotton Balls Swabs'),
(522, 260, 2, 'كرات القطن'),
(523, 261, 1, 'Makeup Remover'),
(524, 261, 2, 'مزيل المكياج'),
(525, 262, 1, 'Face Makeup Remover'),
(526, 262, 2, 'مزيل المكياج الوجه'),
(527, 263, 1, 'Eye Makeup Remover'),
(528, 263, 2, 'مزيل المكياج العيون'),
(529, 264, 1, 'Body Makeup'),
(530, 264, 2, 'منتجات العنايه بالجسم'),
(531, 265, 1, 'Sun Block Sun Tan'),
(532, 265, 2, 'كريمات ضد الشمس و كريمات اسمرار '),
(533, 266, 1, 'Temporary Tattoos'),
(534, 266, 2, 'وشم مؤقت'),
(535, 267, 1, 'Bronzing Powder Makeup'),
(536, 267, 2, 'برونزر للجسم'),
(537, 268, 1, 'Personal Care D'),
(538, 268, 2, 'منتجات العناية شخصية'),
(539, 269, 1, 'Skin Care Prducts'),
(540, 269, 2, 'العناية بالبشرة'),
(541, 270, 1, 'Styling Products Shave Hair Remo'),
(542, 270, 2, 'حلاقة وإزالة الشعر'),
(543, 271, 1, 'Styling Products Mens Bathshower'),
(544, 271, 2, 'اكسسوارات الحمام والاستحمام'),
(545, 272, 1, 'Hair Care D'),
(546, 272, 2, 'العناية بالشعر'),
(547, 273, 1, 'Hair Shampoos Conditioner'),
(548, 273, 2, 'شامبو و بلسم'),
(549, 274, 1, 'Hair Styling Mousses Foams  Oils'),
(550, 274, 2, 'كريمات و زيوت تصفيف و تغذيه الشع'),
(551, 275, 1, 'Hair Care Styling Tools Applianc'),
(552, 275, 2, 'أجهزة تصفيف الشعر'),
(553, 276, 1, 'Hair Accessories '),
(554, 276, 2, 'إكسسوارات الشعر'),
(555, 277, 1, 'Extension Wigs Acessories'),
(556, 277, 2, 'اكستنشن، باروكه واكسسوارات'),
(557, 278, 1, 'Hair Cutting Tools'),
(558, 278, 2, 'أدوات قص الشعر'),
(559, 279, 1, 'Hair Colouring Products'),
(560, 279, 2, 'صبغات شعر'),
(561, 280, 1, 'Skin Care Tools'),
(562, 280, 2, 'أدوات العناية بالبشرة'),
(563, 281, 1, 'Microdermabrasion Exfoliating De'),
(564, 281, 2, 'اجهزه تقشير البشره'),
(565, 282, 1, 'Beauty Powered Facial Cleansing '),
(566, 282, 2, 'اجهزه تنظيف البشرة'),
(567, 283, 1, 'Feet Hand Nail Tools'),
(568, 283, 2, 'منتجات العناية بالأقدام والأيدي '),
(569, 284, 1, 'Oral Care'),
(570, 284, 2, 'العناية بالفم'),
(571, 285, 1, 'Toothbrushes'),
(572, 285, 2, 'فرشاة أسنان'),
(573, 286, 1, 'Toothpast Whitening'),
(574, 286, 2, 'معجون و مبيض ألاسنان'),
(575, 287, 1, 'Mouthwash Breath Fresheners'),
(576, 287, 2, 'غسول الفم و معطرات التنفس'),
(577, 288, 1, 'Dental Floss Picks/'),
(578, 288, 2, 'خيط تنظيف الأسنان والخلة'),
(579, 289, 1, 'Fragrances'),
(580, 289, 2, 'العطور'),
(581, 290, 1, 'Womens Fragrances'),
(582, 290, 2, 'عطور حريمى'),
(583, 291, 1, 'Womens Eau De Parfum Fragrances'),
(584, 291, 2, 'بيرفيم'),
(585, 292, 1, 'Womens Body Sprays Fragrances'),
(586, 292, 2, 'سبراي للجسم'),
(587, 293, 1, 'Womens Body  Splah'),
(588, 293, 2, 'سبلاش للجسم'),
(589, 294, 1, 'Mens Fragrances'),
(590, 294, 2, 'عطور رجالي'),
(591, 295, 1, 'Mens Eau De Parfum Fragrances'),
(592, 295, 2, 'بيرفيم'),
(593, 296, 1, 'Mens Body Sprays Fragrances'),
(594, 296, 2, 'سبراي للجسم'),
(595, 297, 1, 'Mens Eau De Body  Splah'),
(596, 297, 2, 'سبلاش للجسم'),
(597, 298, 1, 'Mens Cologne Fragrances'),
(598, 298, 2, 'كولونيا بعد الحلاقه'),
(599, 299, 1, 'Grocery'),
(600, 299, 2, 'البقالة'),
(601, 300, 1, 'Household Cleaning'),
(602, 300, 2, 'منظفات منزلية'),
(603, 301, 1, 'Household Cleaning Tools'),
(604, 301, 2, 'أدوات تنظيف'),
(605, 302, 1, 'Household Grocery Kitchen Oven C'),
(606, 302, 2, 'منظفات مطبخ'),
(607, 303, 1, 'All Purpose Cleaners'),
(608, 303, 2, 'منظفات متعددة الأغراض'),
(609, 304, 1, 'Household Disinfectant Wipes'),
(610, 304, 2, 'منتجات مطهرة'),
(611, 305, 1, 'Household Cleaning Glass Cleaner'),
(612, 305, 2, 'منظفات زجاج'),
(613, 306, 1, 'Carpet Cleaners Deodorizers D'),
(614, 306, 2, 'منظفات السجاد والمُعطرات'),
(615, 307, 1, 'Household Floor Cleaners'),
(616, 307, 2, 'منظفات أرضيات'),
(617, 308, 1, 'Wood Polish Care D'),
(618, 308, 2, 'منتجات طلاء والعناية بالخشب'),
(619, 309, 1, 'Household Cleaning Paper Towels '),
(620, 309, 2, 'مناديل ورق'),
(621, 310, 1, 'Air Fresheners'),
(622, 310, 2, 'معطر جو'),
(623, 311, 1, 'Sprays Air Fresheners'),
(624, 311, 2, 'بخاخ'),
(625, 312, 1, 'Electric Air Fresheners'),
(626, 312, 2, 'كهربائية'),
(627, 313, 1, 'Solids Liquids Air Fresheners'),
(628, 313, 2, 'معطر صلب وسائل'),
(629, 314, 1, 'Laundry Supplies'),
(630, 314, 2, 'منظفات ومساحيق الغسيل'),
(631, 315, 1, 'Powders Detergent'),
(632, 315, 2, 'مسحوق غسيل'),
(633, 316, 1, 'Liquid Detergent'),
(634, 316, 2, 'جل غسيل'),
(635, 317, 1, 'Fabric Softner Laundry Bleach'),
(636, 317, 2, 'مبيض و منعم الملابس'),
(637, 318, 1, 'Stain Removal'),
(638, 318, 2, 'مزيل بقع'),
(639, 319, 1, 'Paper Plastic Household Supplies'),
(640, 319, 2, 'المنتجات الورقية والبلاستكية'),
(641, 320, 1, 'Disposable Food Storage'),
(642, 320, 2, 'منتجات تخزين الطعام للإستعمال مر'),
(643, 321, 1, 'Disposable Drinkware Paper Plast'),
(644, 321, 2, 'أكواب للاستخدام الواحد'),
(645, 322, 1, 'Facial Tissues'),
(646, 322, 2, 'مناديل الوجه'),
(647, 323, 1, 'Wet Wipes'),
(648, 323, 2, 'ورق تواليت ومناديل وبخاخات'),
(649, 324, 1, 'Trash Compost Lawn Bags'),
(650, 324, 2, 'أكياس القمامة وباسكيت القمامة'),
(651, 325, 1, 'Paper Towels'),
(652, 325, 2, 'مناشف ورقية'),
(653, 326, 1, 'Disposable Plates Bowls Cutlery'),
(654, 326, 2, 'أطباق للاستخدام الواحد'),
(655, 327, 1, 'Beverages'),
(656, 327, 2, 'مشروبات'),
(657, 328, 1, 'Soft Drinks'),
(658, 328, 2, 'مشروبات غازية'),
(659, 329, 1, 'Juice Drinks'),
(660, 329, 2, 'عصائر'),
(661, 330, 1, 'Powdered Drink Mixes Flavorings'),
(662, 330, 2, 'مشروبات بودرة مخففة ونكهات'),
(663, 331, 1, 'Grocery Milk Cream'),
(664, 331, 2, 'الحليب والكريمة'),
(665, 332, 1, 'Energy Drinks'),
(666, 332, 2, 'مشروبات الطاقة'),
(667, 333, 1, 'Food Cupboard Supplies'),
(668, 333, 2, 'مستلزمات الطعام'),
(669, 334, 1, 'Cooking Oil'),
(670, 334, 2, 'زيوت الطبخ'),
(671, 335, 1, 'Vegetable Oil'),
(672, 335, 2, 'زيت نباتي'),
(673, 336, 1, 'Ghee'),
(674, 336, 2, 'السمن'),
(675, 337, 1, 'Frying Oil Blended Oil'),
(676, 337, 2, 'زيت القليه'),
(677, 338, 1, 'Olive Oil 5071'),
(678, 338, 2, 'زيت الزيتون'),
(679, 339, 1, 'Pasta Noodles'),
(680, 339, 2, 'مكرونه ونودلز'),
(681, 340, 1, 'Pasta'),
(682, 340, 2, 'مكرونه'),
(683, 341, 1, 'Noodles'),
(684, 341, 2, 'نودلز'),
(685, 342, 1, 'Crisps Snacks Nuts'),
(686, 342, 2, 'مقرمشات وأكلات التسلية'),
(687, 343, 1, 'Sauce Dressings'),
(688, 343, 2, 'صوصات'),
(689, 344, 1, 'Mustard Bbq Sauce Others'),
(690, 344, 2, 'مسترد وصوص الباربكيو'),
(691, 345, 1, 'Vinegar'),
(692, 345, 2, 'الخل'),
(693, 346, 1, 'Ketchup'),
(694, 346, 2, 'كاتشب'),
(695, 347, 1, 'Tomato Sauce'),
(696, 347, 2, 'صلصه الطماطم'),
(697, 348, 1, 'Salad Dressing'),
(698, 348, 2, 'صوص السلطه'),
(699, 349, 1, 'Mayonnaise'),
(700, 349, 2, 'مايونيز'),
(701, 350, 1, 'Grains Rice'),
(702, 350, 2, 'الأرز والبقوليات'),
(703, 351, 1, 'Other Rice'),
(704, 351, 2, 'أرز أبيض'),
(705, 352, 1, 'Basmati Rice'),
(706, 352, 2, 'أرز بسمتي'),
(707, 353, 1, 'Grains Pulses'),
(708, 353, 2, 'الحبوب والبقوليات'),
(709, 354, 1, 'Tins Cans Grocery'),
(710, 354, 2, 'معلبات'),
(711, 355, 1, 'Cubes Stocks Cooking Spices'),
(712, 355, 2, 'مكعبات المرق  و  التوابل'),
(713, 356, 1, 'Mixed Spices Seasonings'),
(714, 356, 2, 'التوابل والبهارات'),
(715, 357, 1, 'Cooking Baking'),
(716, 357, 2, 'تجهيزات الخبيز'),
(717, 358, 1, 'Dried Fruits Raisins'),
(718, 358, 2, 'فواكه مجففة'),
(719, 359, 1, 'Grocery Seeds Nuts'),
(720, 359, 2, 'مكسرات وبذور'),
(721, 360, 1, 'Syrups Sugars Sweeteners'),
(722, 360, 2, 'السكريات و المُحليات'),
(723, 361, 1, 'Flours Meals Breadcrumbs Seasone'),
(724, 361, 2, 'الدقيق و بقسماط مطحون'),
(725, 362, 1, 'Canned Jarred Packaged Foods'),
(726, 362, 2, 'الأغذية المُعلبة'),
(727, 363, 1, 'Candy Chocolate Halva'),
(728, 363, 2, 'حلاوة طحينة'),
(729, 364, 1, 'Jams'),
(730, 364, 2, 'المربى '),
(731, 365, 1, 'Canned Jarred Packaged Foods Ant'),
(732, 365, 2, 'مقبلات'),
(733, 366, 1, 'Tinned Vegetables'),
(734, 366, 2, 'خضروات'),
(735, 367, 1, 'Canned Jarred Beans Peas'),
(736, 367, 2, 'بقوليات'),
(737, 368, 1, 'Canned Fish'),
(738, 368, 2, 'اسماك معلبه'),
(739, 369, 1, 'Candy Chocolate'),
(740, 369, 2, 'حلويات وشيكولاته'),
(741, 370, 1, 'Candy Chocolate Assortments'),
(742, 370, 2, ' الشوكولاته'),
(743, 371, 1, 'Candy Chocolate Bars'),
(744, 371, 2, 'شيكولاته بار'),
(745, 372, 1, 'Candy Chocolate Gifts'),
(746, 372, 2, 'هدايا الحلوي والشيكولاتة'),
(747, 373, 1, 'Grocery Sweet Biscuits'),
(748, 373, 2, 'البسكويت والكوكيز'),
(749, 374, 1, 'Pancake Waffle Baking Mixes'),
(750, 374, 2, 'بان كيك و وافل ومخبوزات مختلفة'),
(751, 375, 1, 'Fruity Candy'),
(752, 375, 2, 'حلوى بالفواكه'),
(753, 376, 1, 'Chewing Gum Suckers Lollipops'),
(754, 376, 2, 'لبان و مصاصات'),
(755, 377, 1, 'Household Batteries'),
(756, 377, 2, 'بطاريات منزلية'),
(757, 378, 1, 'Grocery Mathces Fire Lighters'),
(758, 378, 2, 'الولاعات و الكبريت'),
(759, 379, 1, 'Computer'),
(760, 379, 2, 'الكمبيوتر'),
(761, 380, 1, 'Computer'),
(762, 380, 2, 'الكمبيوتر'),
(763, 381, 1, 'Laptops'),
(764, 381, 2, 'لاب توب'),
(765, 382, 1, 'Macbooks'),
(766, 382, 2, 'ماك بوك'),
(767, 383, 1, 'Tower Desktops'),
(768, 383, 2, 'أجهزة كمبيوتر رأسية'),
(769, 384, 1, 'All In Ones Desktops'),
(770, 384, 2, 'All In Ones'),
(771, 385, 1, 'Desktop Computers'),
(772, 385, 2, 'أجهزة كمبيوتر صغيرة'),
(773, 386, 1, 'Computer Components'),
(774, 386, 2, 'مكونات الكمبيوتر'),
(775, 387, 1, 'Computer Components External Sou'),
(776, 387, 2, 'بطاقات الصوت الخارجية'),
(777, 388, 1, 'Laptop Replacement Parts'),
(778, 388, 2, 'قطع غيارالاب توب'),
(779, 389, 1, 'Computer Components Fans Cooling'),
(780, 389, 2, 'المراوح والتبريد'),
(781, 390, 1, 'Internal Hd'),
(782, 390, 2, 'هارد داريف داخلي'),
(783, 391, 1, 'Internal Solid State Drives'),
(784, 391, 2, 'محركات الأقراص الصلبة الداخلية'),
(785, 392, 1, 'Computer Components Graphics Car'),
(786, 392, 2, 'كروت الشاشه'),
(787, 393, 1, 'Computer Motherboards'),
(788, 393, 2, 'مازربورد'),
(789, 394, 1, 'Computer Components Memory'),
(790, 394, 2, 'ذاكره عشوائيه'),
(791, 395, 1, 'Computer Power Supplies'),
(792, 395, 2, 'مزودات الطاقة'),
(793, 396, 1, 'Computer Components Computer Cas'),
(794, 396, 2, 'صندوق الكمبيوتر'),
(795, 397, 1, 'Computer Components Cpu Processo'),
(796, 397, 2, 'وحدة المعالجة المركزية (Cpu)'),
(797, 398, 1, 'Computer Components External Opt'),
(798, 398, 2, 'محركات الأقراص الضوئية الخارجية'),
(799, 399, 1, 'Ocmputer Components Kvm Switches'),
(800, 399, 2, 'مفاتيح Kvm'),
(801, 400, 1, 'Computer Network Cards'),
(802, 400, 2, 'كارت الشبكة'),
(803, 401, 1, 'Internal Optical Drives'),
(804, 401, 2, 'محركات الأقراص الضوئية الداخلية'),
(805, 402, 1, 'Internal Memory Card Readers'),
(806, 402, 2, 'القراء الداخلية لبطاقات الذاكرة'),
(807, 403, 1, 'Printers'),
(808, 403, 2, 'طابعات'),
(809, 404, 1, 'Laser Printers'),
(810, 404, 2, 'طابعات ليزر'),
(811, 405, 1, 'Label Printers'),
(812, 405, 2, 'طابعات ملصقات'),
(813, 406, 1, 'Inkjet Printers'),
(814, 406, 2, 'طابعات نافثة للحبر'),
(815, 407, 1, 'Monitors'),
(816, 407, 2, 'شاشات'),
(817, 408, 1, 'Scanners'),
(818, 408, 2, 'ماسح الضوئي'),
(819, 409, 1, 'Servres'),
(820, 409, 2, 'سيرفر'),
(821, 410, 1, 'Computer Data Storage'),
(822, 410, 2, 'تخزين البيانات'),
(823, 411, 1, 'Flash Drives'),
(824, 411, 2, 'فلاشات Usb'),
(825, 412, 1, 'External Hd'),
(826, 412, 2, 'هارد ديسك خارجي'),
(827, 413, 1, 'External Solid State Drives'),
(828, 413, 2, 'محركات الأقراص الصلبة الخارجية'),
(829, 414, 1, 'Network Attached Storage'),
(830, 414, 2, 'وحدات التخزين المتصلة بالشبكات'),
(831, 415, 1, 'Networking'),
(832, 415, 2, ' الشبكات'),
(833, 416, 1, 'Computer Networking Routers'),
(834, 416, 2, 'راوتر'),
(835, 417, 1, 'Computer Network Switch'),
(836, 417, 2, 'سوتش'),
(837, 418, 1, 'Computer Networking Repeaters'),
(838, 418, 2, 'جهاز تكرار الإشارة اللاسلكية'),
(839, 419, 1, 'Networking Modems'),
(840, 419, 2, 'أجهزة المودم'),
(841, 420, 1, 'Computing Accessories'),
(842, 420, 2, 'اكسسوارات كمبيوتر'),
(843, 421, 1, 'Accessories Keyboard'),
(844, 421, 2, 'لوحة المفاتيح'),
(845, 422, 1, 'Accessories Mouse'),
(846, 422, 2, 'ماوس'),
(847, 423, 1, 'Keyboard Mouse Combos'),
(848, 423, 2, 'لوحة المفاتيح والماوس'),
(849, 424, 1, 'Computer Game Hardware'),
(850, 424, 2, 'مستلزمات ألعاب الكمبيوتر'),
(851, 425, 1, 'Computer Cable Adapters'),
(852, 425, 2, 'محولات كابل الكمبيوتر'),
(853, 426, 1, 'Hard Drive Accessories'),
(854, 426, 2, 'اكسسوارات الهارد ديسك'),
(855, 427, 1, 'Computer Cables Interconnects'),
(856, 427, 2, 'الكابلات والموصلات'),
(857, 428, 1, 'Printer Ink Toner'),
(858, 428, 2, 'حبارة الطابعة وحبر الطباعة'),
(859, 429, 1, 'Computer Blank Media'),
(860, 429, 2, 'اسطوانة'),
(861, 430, 1, 'Computer Memory Cards'),
(862, 430, 2, 'كروت الذاكرة'),
(863, 431, 1, 'Computer Speakers'),
(864, 431, 2, 'سماعات الكمبيوتر'),
(865, 432, 1, 'Computer Microphones'),
(866, 432, 2, 'ميكروفونات الكمبيوتر'),
(867, 433, 1, 'Computer Webcams'),
(868, 433, 2, 'كاميرات الويب'),
(869, 434, 1, 'Battery Backup Ups'),
(870, 434, 2, 'مزود طاقة مستمر (Ups)'),
(871, 435, 1, 'Computer Surge Protectors'),
(872, 435, 2, 'مشترك كهرباء'),
(873, 436, 1, 'Computer Monitor Accessories'),
(874, 436, 2, 'ملحقات الشاشة'),
(875, 437, 1, 'Video Projector Accessories D'),
(876, 437, 2, 'ملحقات أجهزة العرض'),
(877, 438, 1, 'Laptop Accessories'),
(878, 438, 2, 'مستلزمات لاب توب'),
(879, 439, 1, 'Laptop Bags Cases Sleeves'),
(880, 439, 2, 'حقائب وجرابات وحافظات'),
(881, 440, 1, 'Laptop Chargers Adapters'),
(882, 440, 2, 'الشواحن والمحولات'),
(883, 441, 1, 'Laptop Replacement Screens'),
(884, 441, 2, 'الشاشات البديلة'),
(885, 442, 1, 'Laptop Accessories Batteries'),
(886, 442, 2, 'البطاريات'),
(887, 443, 1, 'Cooling Pads External Fans'),
(888, 443, 2, 'التبريد والمراوح الخارجية'),
(889, 444, 1, 'Laptop Accessories Stands'),
(890, 444, 2, 'ستاندات لاب توب'),
(891, 445, 1, 'Laptop Accessories Mounts'),
(892, 445, 2, 'حامل لاب توب'),
(893, 446, 1, 'Home Appliances'),
(894, 446, 2, 'الاجهزه المنزليه'),
(895, 447, 1, 'Televisions'),
(896, 447, 2, 'التلفزيونات'),
(897, 448, 1, 'Appliances Fridges Freezers'),
(898, 448, 2, 'الثلاجات'),
(899, 449, 1, 'Appliances Washers Dryers'),
(900, 449, 2, 'غسالات ملابس'),
(901, 450, 1, 'Range Hoods'),
(902, 450, 2, 'شفاطات '),
(903, 451, 1, 'Air Conditioners'),
(904, 451, 2, 'أجهزة التكييف'),
(905, 452, 1, 'Ovens & Microwave'),
(906, 452, 2, 'فرن  و ميكروويف '),
(907, 453, 1, 'Freezers'),
(908, 453, 2, 'فريزر'),
(909, 454, 1, 'Dishwashers'),
(910, 454, 2, 'غسالة أطباق'),
(911, 455, 1, 'Large Appliance Accessories'),
(912, 455, 2, 'إكسسوارات الأجهزة الكهربائية'),
(913, 456, 1, 'Recivers'),
(914, 456, 2, 'اجهزه استقبال فضائي ريسيفر'),
(915, 457, 1, 'Home Theater &Sound Systems'),
(916, 457, 2, 'اجهزه المسرح المنزلي و انظمه الص'),
(917, 458, 1, 'Mobile '),
(918, 458, 2, 'موبايل'),
(919, 459, 1, 'Mobile '),
(920, 459, 2, 'موبايل'),
(921, 460, 1, 'Android Phones'),
(922, 460, 2, 'موبيلات اندرويد'),
(923, 461, 1, 'Ios Phones'),
(924, 461, 2, 'موبيلات ايفون'),
(925, 462, 1, 'Tablets'),
(926, 462, 2, 'تابلت '),
(927, 463, 1, 'Smart Watches'),
(928, 463, 2, 'ساعات ذكية'),
(929, 464, 1, 'Virtual Reality Phones Tablets'),
(930, 464, 2, 'نظارات الواقع الإفتراضي'),
(931, 465, 1, 'Mobile Accessories'),
(932, 465, 2, 'اكسسوارت موبايل'),
(933, 466, 1, 'Mobile Phone Bluetooth Headsets'),
(934, 466, 2, 'سماعات سلكية'),
(935, 467, 1, 'Mobile Phone Chargers'),
(936, 467, 2, 'سماعات رأس بلوتوث'),
(937, 468, 1, 'Mobile Phone Memory Cards'),
(938, 468, 2, 'شواحن'),
(939, 469, 1, 'Mobile Phone Cases Covers'),
(940, 469, 2, 'بطاقات الذاكرة'),
(941, 470, 1, 'Mobile Phone Screen Protectors'),
(942, 470, 2, 'جراب الموبيل'),
(943, 471, 1, 'Selfie Sticks Tripods'),
(944, 471, 2, 'لاصقه للشاشه'),
(945, 472, 1, 'Mobile Game Controllers'),
(946, 472, 2, 'سيلفي ستيك وحوامل ثلاثية'),
(947, 473, 1, 'Mobile Phones Car Accessories'),
(948, 473, 2, 'اكسسوارات السيارات'),
(949, 474, 1, 'Mobile Phone Replacement Parts'),
(950, 474, 2, 'قطع غيار'),
(951, 475, 1, 'Mobile Phone Chargers Adaptors'),
(952, 475, 2, 'البطاريات '),
(953, 476, 1, 'Mobile Phone Batteries'),
(954, 476, 2, 'الشواحن والمحولات'),
(955, 478, 1, 'Mobile Phone Accessories Cables'),
(956, 478, 2, 'كابلات الشواحن '),
(957, 479, 1, 'Sim Related Accessories'),
(958, 479, 2, 'ملحقات بطاقات Sim'),
(959, 480, 1, 'Smartphone Cameras Lenses'),
(960, 480, 2, 'عدسات كاميرات الهواتف الذكية');

-- --------------------------------------------------------

--
-- Table structure for table `categories_role`
--

CREATE TABLE `categories_role` (
  `categories_role_id` int(11) NOT NULL,
  `categories_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `compare`
--

CREATE TABLE `compare` (
  `id` int(11) NOT NULL,
  `product_ids` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `constant_banners`
--

CREATE TABLE `constant_banners` (
  `banners_id` int(11) NOT NULL,
  `banners_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `languages_id` int(11) NOT NULL,
  `type` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `constant_banners`
--

INSERT INTO `constant_banners` (`banners_id`, `banners_title`, `banners_url`, `banners_image`, `date_added`, `status`, `languages_id`, `type`) VALUES
(1, 'style0', '', '86', '2019-09-08 18:43:14', 1, 1, '1'),
(2, 'style0', '', '86', '2019-09-08 18:43:25', 1, 1, '2'),
(3, 'banner1', '', '83', '2019-09-08 18:43:34', 1, 1, '3'),
(4, 'banner1', '', '83', '2019-09-08 18:43:42', 1, 1, '4'),
(5, 'banner1', '', '83', '2019-09-08 18:44:15', 1, 1, '5'),
(6, 'banner2_3_4', '', '239', '2019-09-10 08:50:55', 1, 1, '6'),
(7, 'banner2_3_4', '', '238', '2019-09-10 08:54:18', 1, 1, '7'),
(8, 'banner2_3_4', '', '237', '2019-09-10 08:54:28', 1, 1, '8'),
(9, 'banner2_3_4', '', '236', '2019-09-10 08:54:38', 1, 1, '9'),
(10, 'banner5_6', '', '92', '2019-09-10 09:31:13', 1, 1, '10'),
(11, 'banner5_6', '', '92', '2019-09-10 09:31:24', 1, 1, '11'),
(12, 'banner5_6', '', '92', '2019-09-10 09:31:35', 1, 1, '12'),
(13, 'banner5_6', '', '92', '2019-09-10 09:32:18', 1, 1, '13'),
(14, 'banner5_6', '', '91', '2019-09-10 09:32:28', 1, 1, '14'),
(15, 'banner7_8', '', '95', '2019-09-10 09:52:02', 1, 1, '15'),
(16, 'banner7_8', '', '96', '2019-09-10 09:52:29', 1, 1, '16'),
(17, 'banner7_8', '', '96', '2019-09-10 09:47:56', 1, 1, '17'),
(18, 'banner7_8', '', '94', '2019-09-10 09:48:05', 1, 1, '18'),
(19, 'banner9', '', '97', '2019-09-10 10:19:03', 1, 1, '19'),
(20, 'banner9', '', '97', '2019-09-10 10:19:13', 1, 1, '20'),
(21, 'banner10_11_12', '', '98', '2019-09-10 10:26:12', 1, 1, '21'),
(22, 'banner10_11_12', '', '96', '2019-09-10 10:26:30', 1, 1, '22'),
(23, 'banner10_11_12', '', '96', '2019-09-10 10:26:41', 1, 1, '23'),
(24, 'banner10_11_12', '', '99', '2019-09-10 10:26:54', 1, 1, '24'),
(25, 'banner13_14_15', '', '100', '2019-09-10 11:01:09', 1, 1, '25'),
(26, 'banner13_14_15', '', '101', '2019-09-10 11:01:27', 1, 1, '26'),
(27, 'banner13_14_15', '', '101', '2019-09-10 11:02:12', 1, 1, '27'),
(28, 'banner13_14_15', '', '101', '2019-09-10 11:02:23', 1, 1, '28'),
(29, 'banner13_14_15', '', '101', '2019-09-10 11:02:36', 1, 1, '29'),
(30, 'banner16_17', '', '104', '2019-09-10 11:19:45', 1, 1, '30'),
(31, 'banner16_17', '', '104', '2019-09-10 11:19:58', 1, 1, '31'),
(32, 'banner16_17', '', '105', '2019-09-10 11:21:00', 1, 1, '32'),
(33, 'banner18_19', '', '116', '2019-09-10 11:30:35', 1, 1, '33'),
(34, 'banner18_19', '', '116', '2019-09-10 11:30:49', 1, 1, '34'),
(35, 'banner18_19', '', '96', '2019-09-10 11:31:04', 1, 1, '35'),
(36, 'banner18_19', '', '96', '2019-09-10 11:31:20', 1, 1, '36'),
(37, 'banner18_19', '', '115', '2019-09-10 11:31:54', 1, 1, '37'),
(38, 'banner18_19', '', '115', '2019-09-10 11:32:06', 1, 1, '38'),
(39, 'ad_banner1', '', '107', '2019-09-11 06:17:45', 1, 1, '39'),
(40, 'ad_banner2', '', '106', '2019-09-11 06:17:58', 1, 1, '40'),
(41, 'style0', '', '86', '0000-00-00 00:00:00', 1, 2, '1'),
(42, 'style0', '', '86', '0000-00-00 00:00:00', 1, 2, '2'),
(43, 'banner1', '', '83', '0000-00-00 00:00:00', 1, 2, '3'),
(44, 'banner1', '', '83', '0000-00-00 00:00:00', 1, 2, '4'),
(45, 'banner1', '', '83', '0000-00-00 00:00:00', 1, 2, '5'),
(46, 'banner2_3_4', '', '239', '0000-00-00 00:00:00', 1, 2, '6'),
(47, 'banner2_3_4', '', '238', '0000-00-00 00:00:00', 1, 2, '7'),
(48, 'banner2_3_4', '', '237', '0000-00-00 00:00:00', 1, 2, '8'),
(49, 'banner2_3_4', '', '236', '0000-00-00 00:00:00', 1, 2, '9'),
(50, 'banner5_6', '', '92', '0000-00-00 00:00:00', 1, 2, '10'),
(51, 'banner5_6', '', '92', '0000-00-00 00:00:00', 1, 2, '11'),
(52, 'banner5_6', '', '92', '0000-00-00 00:00:00', 1, 2, '12'),
(53, 'banner5_6', '', '92', '0000-00-00 00:00:00', 1, 2, '13'),
(54, 'banner5_6', '', '91', '0000-00-00 00:00:00', 1, 2, '14'),
(55, 'banner7_8', '', '95', '0000-00-00 00:00:00', 1, 2, '15'),
(56, 'banner7_8', '', '96', '0000-00-00 00:00:00', 1, 2, '16'),
(57, 'banner7_8', '', '96', '0000-00-00 00:00:00', 1, 2, '17'),
(58, 'banner7_8', '', '94', '0000-00-00 00:00:00', 1, 2, '18'),
(59, 'banner9', '', '97', '0000-00-00 00:00:00', 1, 2, '19'),
(60, 'banner9', '', '97', '0000-00-00 00:00:00', 1, 2, '20'),
(61, 'banner10_11_12', '', '98', '0000-00-00 00:00:00', 1, 2, '21'),
(62, 'banner10_11_12', '', '96', '0000-00-00 00:00:00', 1, 2, '22'),
(63, 'banner10_11_12', '', '96', '0000-00-00 00:00:00', 1, 2, '23'),
(64, 'banner10_11_12', '', '99', '0000-00-00 00:00:00', 1, 2, '24'),
(65, 'banner13_14_15', '', '100', '0000-00-00 00:00:00', 1, 2, '25'),
(66, 'banner13_14_15', '', '101', '0000-00-00 00:00:00', 1, 2, '26'),
(67, 'banner13_14_15', '', '101', '0000-00-00 00:00:00', 1, 2, '27'),
(68, 'banner13_14_15', '', '101', '0000-00-00 00:00:00', 1, 2, '28'),
(69, 'banner13_14_15', '', '101', '0000-00-00 00:00:00', 1, 2, '29'),
(70, 'banner16_17', '', '104', '0000-00-00 00:00:00', 1, 2, '30'),
(71, 'banner16_17', '', '104', '0000-00-00 00:00:00', 1, 2, '31'),
(72, 'banner16_17', '', '105', '0000-00-00 00:00:00', 1, 2, '32'),
(73, 'banner18_19', '', '116', '0000-00-00 00:00:00', 1, 2, '33'),
(74, 'banner18_19', '', '116', '0000-00-00 00:00:00', 1, 2, '34'),
(75, 'banner18_19', '', '96', '0000-00-00 00:00:00', 1, 2, '35'),
(76, 'banner18_19', '', '96', '0000-00-00 00:00:00', 1, 2, '36'),
(77, 'banner18_19', '', '115', '0000-00-00 00:00:00', 1, 2, '37'),
(78, 'banner18_19', '', '115', '0000-00-00 00:00:00', 1, 2, '38'),
(79, 'ad_banner1', '', '107', '0000-00-00 00:00:00', 1, 2, '39'),
(80, 'ad_banner2', '', '106', '0000-00-00 00:00:00', 1, 2, '40'),
(81, 'ad_banner3', '', '107', '0000-00-00 00:00:00', 1, 1, '41'),
(82, 'ad_banner3', '', '107', '0000-00-00 00:00:00', 1, 2, '41');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `countries_id` int(11) NOT NULL,
  `countries_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_2` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_iso_code_3` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_format_id` int(11) NOT NULL,
  `country_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`countries_id`, `countries_name`, `countries_iso_code_2`, `countries_iso_code_3`, `address_format_id`, `country_code`) VALUES
(1, 'Afghanistan', 'AF', 'AFG', 1, NULL),
(2, 'Albania', 'AL', 'ALB', 1, NULL),
(3, 'Algeria', 'DZ', 'DZA', 1, NULL),
(4, 'American Samoa', 'AS', 'ASM', 1, NULL),
(5, 'Andorra', 'AD', 'AND', 1, NULL),
(6, 'Angola', 'AO', 'AGO', 1, NULL),
(7, 'Anguilla', 'AI', 'AIA', 1, NULL),
(8, 'Antarctica', 'AQ', 'ATA', 1, NULL),
(9, 'Antigua and Barbuda', 'AG', 'ATG', 1, NULL),
(10, 'Argentina', 'AR', 'ARG', 1, NULL),
(11, 'Armenia', 'AM', 'ARM', 1, NULL),
(12, 'Aruba', 'AW', 'ABW', 1, NULL),
(13, 'Australia', 'AU', 'AUS', 1, NULL),
(14, 'Austria', 'AT', 'AUT', 5, NULL),
(15, 'Azerbaijan', 'AZ', 'AZE', 1, NULL),
(16, 'Bahamas', 'BS', 'BHS', 1, NULL),
(17, 'Bahrain', 'BH', 'BHR', 1, NULL),
(18, 'Bangladesh', 'BD', 'BGD', 1, NULL),
(19, 'Barbados', 'BB', 'BRB', 1, NULL),
(20, 'Belarus', 'BY', 'BLR', 1, NULL),
(21, 'Belgium', 'BE', 'BEL', 1, NULL),
(22, 'Belize', 'BZ', 'BLZ', 1, NULL),
(23, 'Benin', 'BJ', 'BEN', 1, NULL),
(24, 'Bermuda', 'BM', 'BMU', 1, NULL),
(25, 'Bhutan', 'BT', 'BTN', 1, NULL),
(26, 'Bolivia', 'BO', 'BOL', 1, NULL),
(27, 'Bosnia and Herzegowina', 'BA', 'BIH', 1, NULL),
(28, 'Botswana', 'BW', 'BWA', 1, NULL),
(29, 'Bouvet Island', 'BV', 'BVT', 1, NULL),
(30, 'Brazil', 'BR', 'BRA', 1, NULL),
(31, 'British Indian Ocean Territory', 'IO', 'IOT', 1, NULL),
(32, 'Brunei Darussalam', 'BN', 'BRN', 1, NULL),
(33, 'Bulgaria', 'BG', 'BGR', 1, NULL),
(34, 'Burkina Faso', 'BF', 'BFA', 1, NULL),
(35, 'Burundi', 'BI', 'BDI', 1, NULL),
(36, 'Cambodia', 'KH', 'KHM', 1, NULL),
(37, 'Cameroon', 'CM', 'CMR', 1, NULL),
(38, 'Canada', 'CA', 'CAN', 1, NULL),
(39, 'Cape Verde', 'CV', 'CPV', 1, NULL),
(40, 'Cayman Islands', 'KY', 'CYM', 1, NULL),
(41, 'Central African Republic', 'CF', 'CAF', 1, NULL),
(42, 'Chad', 'TD', 'TCD', 1, NULL),
(43, 'Chile', 'CL', 'CHL', 1, NULL),
(44, 'China', 'CN', 'CHN', 1, NULL),
(45, 'Christmas Island', 'CX', 'CXR', 1, NULL),
(46, 'Cocos (Keeling) Islands', 'CC', 'CCK', 1, NULL),
(47, 'Colombia', 'CO', 'COL', 1, NULL),
(48, 'Comoros', 'KM', 'COM', 1, NULL),
(49, 'Congo', 'CG', 'COG', 1, NULL),
(50, 'Cook Islands', 'CK', 'COK', 1, NULL),
(51, 'Costa Rica', 'CR', 'CRI', 1, NULL),
(52, 'Cote D\'Ivoire', 'CI', 'CIV', 1, NULL),
(53, 'Croatia', 'HR', 'HRV', 1, NULL),
(54, 'Cuba', 'CU', 'CUB', 1, NULL),
(55, 'Cyprus', 'CY', 'CYP', 1, NULL),
(56, 'Czech Republic', 'CZ', 'CZE', 1, NULL),
(57, 'Denmark', 'DK', 'DNK', 1, NULL),
(58, 'Djibouti', 'DJ', 'DJI', 1, NULL),
(59, 'Dominica', 'DM', 'DMA', 1, NULL),
(60, 'Dominican Republic', 'DO', 'DOM', 1, NULL),
(61, 'East Timor', 'TP', 'TMP', 1, NULL),
(62, 'Ecuador', 'EC', 'ECU', 1, NULL),
(63, 'Egypt', 'EG', 'EGY', 1, NULL),
(64, 'El Salvador', 'SV', 'SLV', 1, NULL),
(65, 'Equatorial Guinea', 'GQ', 'GNQ', 1, NULL),
(66, 'Eritrea', 'ER', 'ERI', 1, NULL),
(67, 'Estonia', 'EE', 'EST', 1, NULL),
(68, 'Ethiopia', 'ET', 'ETH', 1, NULL),
(69, 'Falkland Islands (Malvinas)', 'FK', 'FLK', 1, NULL),
(70, 'Faroe Islands', 'FO', 'FRO', 1, NULL),
(71, 'Fiji', 'FJ', 'FJI', 1, NULL),
(72, 'Finland', 'FI', 'FIN', 1, NULL),
(73, 'France', 'FR', 'FRA', 1, NULL),
(74, 'France, Metropolitan', 'FX', 'FXX', 1, NULL),
(75, 'French Guiana', 'GF', 'GUF', 1, NULL),
(76, 'French Polynesia', 'PF', 'PYF', 1, NULL),
(77, 'French Southern Territories', 'TF', 'ATF', 1, NULL),
(78, 'Gabon', 'GA', 'GAB', 1, NULL),
(79, 'Gambia', 'GM', 'GMB', 1, NULL),
(80, 'Georgia', 'GE', 'GEO', 1, NULL),
(81, 'Germany', 'DE', 'DEU', 5, NULL),
(82, 'Ghana', 'GH', 'GHA', 1, NULL),
(83, 'Gibraltar', 'GI', 'GIB', 1, NULL),
(84, 'Greece', 'GR', 'GRC', 1, NULL),
(85, 'Greenland', 'GL', 'GRL', 1, NULL),
(86, 'Grenada', 'GD', 'GRD', 1, NULL),
(87, 'Guadeloupe', 'GP', 'GLP', 1, NULL),
(88, 'Guam', 'GU', 'GUM', 1, NULL),
(89, 'Guatemala', 'GT', 'GTM', 1, NULL),
(90, 'Guinea', 'GN', 'GIN', 1, NULL),
(91, 'Guinea-bissau', 'GW', 'GNB', 1, NULL),
(92, 'Guyana', 'GY', 'GUY', 1, NULL),
(93, 'Haiti', 'HT', 'HTI', 1, NULL),
(94, 'Heard and Mc Donald Islands', 'HM', 'HMD', 1, NULL),
(95, 'Honduras', 'HN', 'HND', 1, NULL),
(96, 'Hong Kong', 'HK', 'HKG', 1, NULL),
(97, 'Hungary', 'HU', 'HUN', 1, NULL),
(98, 'Iceland', 'IS', 'ISL', 1, NULL),
(99, 'India', 'IN', 'IND', 1, NULL),
(100, 'Indonesia', 'ID', 'IDN', 1, NULL),
(101, 'Iran (Islamic Republic of)', 'IR', 'IRN', 1, NULL),
(102, 'Iraq', 'IQ', 'IRQ', 1, NULL),
(103, 'Ireland', 'IE', 'IRL', 1, NULL),
(104, 'Israel', 'IL', 'ISR', 1, NULL),
(105, 'Italy', 'IT', 'ITA', 1, NULL),
(106, 'Jamaica', 'JM', 'JAM', 1, NULL),
(107, 'Japan', 'JP', 'JPN', 1, NULL),
(108, 'Jordan', 'JO', 'JOR', 1, NULL),
(109, 'Kazakhstan', 'KZ', 'KAZ', 1, NULL),
(110, 'Kenya', 'KE', 'KEN', 1, NULL),
(111, 'Kiribati', 'KI', 'KIR', 1, NULL),
(112, 'Korea, Democratic People\'s Republic of', 'KP', 'PRK', 1, NULL),
(113, 'Korea, Republic of', 'KR', 'KOR', 1, NULL),
(114, 'Kuwait', 'KW', 'KWT', 1, NULL),
(115, 'Kyrgyzstan', 'KG', 'KGZ', 1, NULL),
(116, 'Lao People\'s Democratic Republic', 'LA', 'LAO', 1, NULL),
(117, 'Latvia', 'LV', 'LVA', 1, NULL),
(118, 'Lebanon', 'LB', 'LBN', 1, NULL),
(119, 'Lesotho', 'LS', 'LSO', 1, NULL),
(120, 'Liberia', 'LR', 'LBR', 1, NULL),
(121, 'Libyan Arab Jamahiriya', 'LY', 'LBY', 1, NULL),
(122, 'Liechtenstein', 'LI', 'LIE', 1, NULL),
(123, 'Lithuania', 'LT', 'LTU', 1, NULL),
(124, 'Luxembourg', 'LU', 'LUX', 1, NULL),
(125, 'Macau', 'MO', 'MAC', 1, NULL),
(126, 'Macedonia, The Former Yugoslav Republic of', 'MK', 'MKD', 1, NULL),
(127, 'Madagascar', 'MG', 'MDG', 1, NULL),
(128, 'Malawi', 'MW', 'MWI', 1, NULL),
(129, 'Malaysia', 'MY', 'MYS', 1, NULL),
(130, 'Maldives', 'MV', 'MDV', 1, NULL),
(131, 'Mali', 'ML', 'MLI', 1, NULL),
(132, 'Malta', 'MT', 'MLT', 1, NULL),
(133, 'Marshall Islands', 'MH', 'MHL', 1, NULL),
(134, 'Martinique', 'MQ', 'MTQ', 1, NULL),
(135, 'Mauritania', 'MR', 'MRT', 1, NULL),
(136, 'Mauritius', 'MU', 'MUS', 1, NULL),
(137, 'Mayotte', 'YT', 'MYT', 1, NULL),
(138, 'Mexico', 'MX', 'MEX', 1, NULL),
(139, 'Micronesia, Federated States of', 'FM', 'FSM', 1, NULL),
(140, 'Moldova, Republic of', 'MD', 'MDA', 1, NULL),
(141, 'Monaco', 'MC', 'MCO', 1, NULL),
(142, 'Mongolia', 'MN', 'MNG', 1, NULL),
(143, 'Montserrat', 'MS', 'MSR', 1, NULL),
(144, 'Morocco', 'MA', 'MAR', 1, NULL),
(145, 'Mozambique', 'MZ', 'MOZ', 1, NULL),
(146, 'Myanmar', 'MM', 'MMR', 1, NULL),
(147, 'Namibia', 'NA', 'NAM', 1, NULL),
(148, 'Nauru', 'NR', 'NRU', 1, NULL),
(149, 'Nepal', 'NP', 'NPL', 1, NULL),
(150, 'Netherlands', 'NL', 'NLD', 1, NULL),
(151, 'Netherlands Antilles', 'AN', 'ANT', 1, NULL),
(152, 'New Caledonia', 'NC', 'NCL', 1, NULL),
(153, 'New Zealand', 'NZ', 'NZL', 1, NULL),
(154, 'Nicaragua', 'NI', 'NIC', 1, NULL),
(155, 'Niger', 'NE', 'NER', 1, NULL),
(156, 'Nigeria', 'NG', 'NGA', 1, NULL),
(157, 'Niue', 'NU', 'NIU', 1, NULL),
(158, 'Norfolk Island', 'NF', 'NFK', 1, NULL),
(159, 'Northern Mariana Islands', 'MP', 'MNP', 1, NULL),
(160, 'Norway', 'NO', 'NOR', 1, NULL),
(161, 'Oman', 'OM', 'OMN', 1, NULL),
(162, 'Pakistan', 'PK', 'PAK', 1, NULL),
(163, 'Palau', 'PW', 'PLW', 1, NULL),
(164, 'Panama', 'PA', 'PAN', 1, NULL),
(165, 'Papua New Guinea', 'PG', 'PNG', 1, NULL),
(166, 'Paraguay', 'PY', 'PRY', 1, NULL),
(167, 'Peru', 'PE', 'PER', 1, NULL),
(168, 'Philippines', 'PH', 'PHL', 1, NULL),
(169, 'Pitcairn', 'PN', 'PCN', 1, NULL),
(170, 'Poland', 'PL', 'POL', 1, NULL),
(171, 'Portugal', 'PT', 'PRT', 1, NULL),
(172, 'Puerto Rico', 'PR', 'PRI', 1, NULL),
(173, 'Qatar', 'QA', 'QAT', 1, NULL),
(174, 'Reunion', 'RE', 'REU', 1, NULL),
(175, 'Romania', 'RO', 'ROM', 1, NULL),
(176, 'Russian Federation', 'RU', 'RUS', 1, NULL),
(177, 'Rwanda', 'RW', 'RWA', 1, NULL),
(178, 'Saint Kitts and Nevis', 'KN', 'KNA', 1, NULL),
(179, 'Saint Lucia', 'LC', 'LCA', 1, NULL),
(180, 'Saint Vincent and the Grenadines', 'VC', 'VCT', 1, NULL),
(181, 'Samoa', 'WS', 'WSM', 1, NULL),
(182, 'San Marino', 'SM', 'SMR', 1, NULL),
(183, 'Sao Tome and Principe', 'ST', 'STP', 1, NULL),
(184, 'Saudi Arabia', 'SA', 'SAU', 1, NULL),
(185, 'Senegal', 'SN', 'SEN', 1, NULL),
(186, 'Seychelles', 'SC', 'SYC', 1, NULL),
(187, 'Sierra Leone', 'SL', 'SLE', 1, NULL),
(188, 'Singapore', 'SG', 'SGP', 4, NULL),
(189, 'Slovakia (Slovak Republic)', 'SK', 'SVK', 1, NULL),
(190, 'Slovenia', 'SI', 'SVN', 1, NULL),
(191, 'Solomon Islands', 'SB', 'SLB', 1, NULL),
(192, 'Somalia', 'SO', 'SOM', 1, NULL),
(193, 'South Africa', 'ZA', 'ZAF', 1, NULL),
(194, 'South Georgia and the South Sandwich Islands', 'GS', 'SGS', 1, NULL),
(195, 'Spain', 'ES', 'ESP', 3, NULL),
(196, 'Sri Lanka', 'LK', 'LKA', 1, NULL),
(197, 'St. Helena', 'SH', 'SHN', 1, NULL),
(198, 'St. Pierre and Miquelon', 'PM', 'SPM', 1, NULL),
(199, 'Sudan', 'SD', 'SDN', 1, NULL),
(200, 'Suriname', 'SR', 'SUR', 1, NULL),
(201, 'Svalbard and Jan Mayen Islands', 'SJ', 'SJM', 1, NULL),
(202, 'Swaziland', 'SZ', 'SWZ', 1, NULL),
(203, 'Sweden', 'SE', 'SWE', 1, NULL),
(204, 'Switzerland', 'CH', 'CHE', 1, NULL),
(205, 'Syrian Arab Republic', 'SY', 'SYR', 1, NULL),
(206, 'Taiwan', 'TW', 'TWN', 1, NULL),
(207, 'Tajikistan', 'TJ', 'TJK', 1, NULL),
(208, 'Tanzania, United Republic of', 'TZ', 'TZA', 1, NULL),
(209, 'Thailand', 'TH', 'THA', 1, NULL),
(210, 'Togo', 'TG', 'TGO', 1, NULL),
(211, 'Tokelau', 'TK', 'TKL', 1, NULL),
(212, 'Tonga', 'TO', 'TON', 1, NULL),
(213, 'Trinidad and Tobago', 'TT', 'TTO', 1, NULL),
(214, 'Tunisia', 'TN', 'TUN', 1, NULL),
(215, 'Turkey', 'TR', 'TUR', 1, NULL),
(216, 'Turkmenistan', 'TM', 'TKM', 1, NULL),
(217, 'Turks and Caicos Islands', 'TC', 'TCA', 1, NULL),
(218, 'Tuvalu', 'TV', 'TUV', 1, NULL),
(219, 'Uganda', 'UG', 'UGA', 1, NULL),
(220, 'Ukraine', 'UA', 'UKR', 1, NULL),
(221, 'United Arab Emirates', 'AE', 'ARE', 1, NULL),
(222, 'United Kingdom', 'GB', 'GBR', 1, NULL),
(223, 'United States', 'US', 'USA', 2, NULL),
(224, 'United States Minor Outlying Islands', 'UM', 'UMI', 1, NULL),
(225, 'Uruguay', 'UY', 'URY', 1, NULL),
(226, 'Uzbekistan', 'UZ', 'UZB', 1, NULL),
(227, 'Vanuatu', 'VU', 'VUT', 1, NULL),
(228, 'Vatican City State (Holy See)', 'VA', 'VAT', 1, NULL),
(229, 'Venezuela', 'VE', 'VEN', 1, NULL),
(230, 'Viet Nam', 'VN', 'VNM', 1, NULL),
(231, 'Virgin Islands (British)', 'VG', 'VGB', 1, NULL),
(232, 'Virgin Islands (U.S.)', 'VI', 'VIR', 1, NULL),
(233, 'Wallis and Futuna Islands', 'WF', 'WLF', 1, NULL),
(234, 'Western Sahara', 'EH', 'ESH', 1, NULL),
(235, 'Yemen', 'YE', 'YEM', 1, NULL),
(236, 'Yugoslavia', 'YU', 'YUG', 1, NULL),
(237, 'Zaire', 'ZR', 'ZAR', 1, NULL),
(238, 'Zambia', 'ZM', 'ZMB', 1, NULL),
(239, 'Zimbabwe', 'ZW', 'ZWE', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `coupans_id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `discount_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'Options: fixed_cart, percent, fixed_product and percent_product. Default: fixed_cart.',
  `amount` int(11) NOT NULL,
  `expiry_date` datetime NOT NULL,
  `usage_count` int(11) NOT NULL,
  `individual_use` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usage_limit` int(11) DEFAULT NULL,
  `usage_limit_per_user` int(11) DEFAULT NULL,
  `limit_usage_to_x_items` int(11) NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exclude_sale_items` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount` decimal(10,2) NOT NULL,
  `maximum_amount` decimal(10,2) NOT NULL,
  `email_restrictions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `used_by` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int(11) NOT NULL,
  `title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thousands_point` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_places` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `value` double(13,8) DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_current` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `title`, `code`, `symbol_left`, `symbol_right`, `decimal_point`, `thousands_point`, `decimal_places`, `created_at`, `updated_at`, `value`, `is_default`, `status`, `is_current`) VALUES
(1, 'EGP', 'EGP', 'EGP', NULL, NULL, NULL, '2', '2019-10-11 10:09:42', '2019-10-11 10:09:42', 3.67000000, 0, 1, 1),
(10, 'U.S. Dollar', 'USD', '$', NULL, NULL, NULL, '2', '2019-09-06 06:33:11', '2019-09-06 06:33:11', 1.00000000, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currency_record`
--

CREATE TABLE `currency_record` (
  `id` int(11) NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currency_record`
--

INSERT INTO `currency_record` (`id`, `code`, `currency_name`) VALUES
(1, 'AED', 'United Arab Emirates Dirham'),
(2, 'AFN', 'Afghan Afghani'),
(3, 'ALL', 'Albanian Lek'),
(4, 'AMD', 'Armenian Dram'),
(5, 'ANG', 'Netherlands Antillean Guilder'),
(6, 'AOA', 'Angolan Kwanza'),
(7, 'ARS', 'Argentine Peso'),
(8, 'AUD', 'Australian Dollar'),
(9, 'AWG', 'Aruban Florin'),
(10, 'AZN', 'Azerbaijani Manat'),
(11, 'BAM', 'Bosnia-Herzegovina Convertible Mark'),
(12, 'BBD', 'Barbadian Dollar'),
(13, 'BDT', 'Bangladeshi Taka'),
(14, 'BGN', 'Bulgarian Lev'),
(15, 'BHD', 'Bahraini Dinar'),
(16, 'BIF', 'Burundian Franc'),
(17, 'BMD', 'Bermudan Dollar'),
(18, 'BND', 'Brunei Dollar'),
(19, 'BOB', 'Bolivian Boliviano'),
(20, 'BRL', 'Brazilian Real'),
(21, 'BSD', 'Bahamian Dollar'),
(22, 'BTC', 'Bitcoin'),
(23, 'BTN', 'Bhutanese Ngultrum'),
(24, 'BWP', 'Botswanan Pula'),
(25, 'BYN', 'Belarusian Ruble'),
(26, 'BZD', 'Belize Dollar'),
(27, 'CAD', 'Canadian Dollar'),
(28, 'CDF', 'Congolese Franc'),
(29, 'CHF', 'Swiss Franc'),
(30, 'CLF', 'Chilean Unit of Account (UF)'),
(31, 'CLP', 'Chilean Peso'),
(32, 'CNH', 'Chinese Yuan (Offshore)'),
(33, 'CNY', 'Chinese Yuan'),
(34, 'COP', 'Colombian Peso'),
(35, 'CRC', 'Costa Rican Colón'),
(36, 'CUC', 'Cuban Convertible Peso'),
(37, 'CUP', 'Cuban Peso'),
(38, 'CVE', 'Cape Verdean Escudo'),
(39, 'CZK', 'Czech Republic Koruna'),
(40, 'DJF', 'Djiboutian Franc'),
(41, 'DKK', 'Danish Krone'),
(42, 'DOP', 'Dominican Peso'),
(43, 'DZD', 'Algerian Dinar'),
(44, 'EGP', 'Egyptian Pound'),
(45, 'ERN', 'Eritrean Nakfa'),
(46, 'ETB', 'Ethiopian Birr'),
(47, 'EUR', 'Euro'),
(48, 'FJD', 'Fijian Dollar'),
(49, 'FKP', 'Falkland Islands Pound'),
(50, 'GBP', 'British Pound Sterling'),
(51, 'GEL', 'Georgian Lari'),
(52, 'GGP', 'Guernsey Pound'),
(53, 'GHS', 'Ghanaian Cedi'),
(54, 'GIP', 'Gibraltar Pound'),
(55, 'GMD', 'Gambian Dalasi'),
(56, 'GNF', 'Guinean Franc'),
(57, 'GTQ', 'Guatemalan Quetzal'),
(58, 'GYD', 'Guyanaese Dollar'),
(59, 'HKD', 'Hong Kong Dollar'),
(60, 'HNL', 'Honduran Lempira'),
(61, 'HRK', 'Croatian Kuna'),
(62, 'HTG', 'Haitian Gourde'),
(63, 'HUF', 'Hungarian Forint'),
(64, 'IDR', 'Indonesian Rupiah'),
(65, 'ILS', 'Israeli New Sheqel'),
(66, 'IMP', 'Manx pound'),
(67, 'INR', 'Indian Rupee'),
(68, 'IQD', 'Iraqi Dinar'),
(69, 'IRR', 'Iranian Rial'),
(70, 'ISK', 'Icelandic Króna'),
(71, 'JEP', 'Jersey Pound'),
(72, 'JMD', 'Jamaican Dollar'),
(73, 'JOD', 'Jordanian Dinar'),
(74, 'JPY', 'Japanese Yen'),
(75, 'KES', 'Kenyan Shilling'),
(76, 'KGS', 'Kyrgystani Som'),
(77, 'KHR', 'Cambodian Riel'),
(78, 'KMF', 'Comorian Franc'),
(79, 'KPW', 'North Korean Won'),
(80, 'KRW', 'South Korean Won'),
(81, 'KWD', 'Kuwaiti Dinar'),
(82, 'KYD', 'Cayman Islands Dollar'),
(83, 'KZT', 'Kazakhstani Tenge'),
(84, 'LAK', 'Laotian Kip'),
(85, 'LBP', 'Lebanese Pound'),
(86, 'LKR', 'Sri Lankan Rupee'),
(87, 'LRD', 'Liberian Dollar'),
(88, 'LSL', 'Lesotho Loti'),
(89, 'LYD', 'Libyan Dinar'),
(90, 'MAD', 'Moroccan Dirham'),
(91, 'MDL', 'Moldovan Leu'),
(92, 'MGA', 'Malagasy Ariary'),
(93, 'MKD', 'Macedonian Denar'),
(94, 'MMK', 'Myanma Kyat'),
(95, 'MNT', 'Mongolian Tugrik'),
(96, 'MOP', 'Macanese Pataca'),
(97, 'MRO', 'Mauritanian Ouguiya (pre-2018)'),
(98, 'MRU', 'Mauritanian Ouguiya'),
(99, 'MUR', 'Mauritian Rupee'),
(100, 'MVR', 'Maldivian Rufiyaa'),
(101, 'MWK', 'Malawian Kwacha'),
(102, 'MXN', 'Mexican Peso'),
(103, 'MYR', 'Malaysian Ringgit'),
(104, 'MZN', 'Mozambican Metical'),
(105, 'NAD', 'Namibian Dollar'),
(106, 'NGN', 'Nigerian Naira'),
(107, 'NIO', 'Nicaraguan Córdoba'),
(108, 'NOK', 'Norwegian Krone'),
(109, 'NPR', 'Nepalese Rupee'),
(110, 'NZD', 'New Zealand Dollar'),
(111, 'OMR', 'Omani Rial'),
(112, 'PAB', 'Panamanian Balboa'),
(113, 'PEN', 'Peruvian Nuevo Sol'),
(114, 'PGK', 'Papua New Guinean Kina'),
(115, 'PHP', 'Philippine Peso'),
(116, 'PKR', 'Pakistani Rupee'),
(117, 'PLN', 'Polish Zloty'),
(118, 'PYG', 'Paraguayan Guarani'),
(119, 'QAR', 'Qatari Rial'),
(120, 'RON', 'Romanian Leu'),
(121, 'RSD', 'Serbian Dinar'),
(122, 'RUB', 'Russian Ruble'),
(123, 'RWF', 'Rwandan Franc'),
(124, 'SAR', 'Saudi Riyal'),
(125, 'SBD', 'Solomon Islands Dollar'),
(126, 'SCR', 'Seychellois Rupee'),
(127, 'SDG', 'Sudanese Pound'),
(128, 'SEK', 'Swedish Krona'),
(129, 'SGD', 'Singapore Dollar'),
(130, 'SHP', 'Saint Helena Pound'),
(131, 'SLL', 'Sierra Leonean Leone'),
(132, 'SOS', 'Somali Shilling'),
(133, 'SRD', 'Surinamese Dollar'),
(134, 'SSP', 'South Sudanese Pound'),
(135, 'STD', 'São Tomé and Príncipe Dobra (pre-2018)'),
(136, 'STN', 'São Tomé and Príncipe Dobra'),
(137, 'SVC', 'Salvadoran Colón'),
(138, 'SYP', 'Syrian Pound'),
(139, 'SZL', 'Swazi Lilangeni'),
(140, 'THB', 'Thai Baht'),
(141, 'TJS', 'Tajikistani Somoni'),
(142, 'TMT', 'Turkmenistani Manat'),
(143, 'TND', 'Tunisian Dinar'),
(144, 'TOP', 'Tongan Pa\'anga'),
(145, 'TRY', 'Turkish Lira'),
(146, 'TTD', 'Trinidad and Tobago Dollar'),
(147, 'TWD', 'New Taiwan Dollar'),
(148, 'TZS', 'Tanzanian Shilling'),
(149, 'UAH', 'Ukrainian Hryvnia'),
(150, 'UGX', 'Ugandan Shilling'),
(151, 'USD', 'United States Dollar'),
(152, 'UYU', 'Uruguayan Peso'),
(153, 'UZS', 'Uzbekistan Som'),
(154, 'VEF', 'Venezuelan Bolívar Fuerte'),
(155, 'VND', 'Vietnamese Dong'),
(156, 'VUV', 'Vanuatu Vatu'),
(157, 'WST', 'Samoan Tala'),
(158, 'XAF', 'CFA Franc BEAC'),
(159, 'XAG', 'Silver Ounce'),
(160, 'XAU', 'Gold Ounce'),
(161, 'XCD', 'East Caribbean Dollar'),
(162, 'XDR', 'Special Drawing Rights'),
(163, 'XOF', 'CFA Franc BCEAO'),
(164, 'XPD', 'Palladium Ounce'),
(165, 'XPF', 'CFP Franc'),
(166, 'XPT', 'Platinum Ounce'),
(167, 'YER', 'Yemeni Rial'),
(168, 'ZAR', 'South African Rand'),
(169, 'ZMW', 'Zambian Kwacha'),
(170, 'ZWL', 'Zimbabwean Dollar');

-- --------------------------------------------------------

--
-- Table structure for table `current_theme`
--

CREATE TABLE `current_theme` (
  `id` int(11) NOT NULL,
  `top_offer` int(11) NOT NULL,
  `header` int(11) NOT NULL,
  `carousel` int(11) NOT NULL,
  `banner` int(11) NOT NULL,
  `footer` int(11) NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` int(11) NOT NULL,
  `news` int(11) NOT NULL,
  `detail` int(11) NOT NULL,
  `shop` int(11) NOT NULL,
  `contact` int(11) NOT NULL,
  `login` int(11) NOT NULL,
  `transitions` int(11) NOT NULL,
  `banner_two` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `current_theme`
--

INSERT INTO `current_theme` (`id`, `top_offer`, `header`, `carousel`, `banner`, `footer`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banner_two`) VALUES
(1, 1, 2, 1, 3, 1, '[{\n                    \"id\": 10,\n                    \"name\": \"Second Ad Section\",\n                    \"order\": 1,\n                    \"file_name\": \"sec_ad_banner\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Second Ad Section\"\n                }, {\n                    \"id\": 5,\n                    \"name\": \"Categories\",\n                    \"order\": 2,\n                    \"file_name\": \"categories\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/categories.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/categories-cross.jpg\",\n                    \"alt\": \"Categories\"\n                }, {\n                    \"id\": 1,\n                    \"name\": \"Banner Section\",\n                    \"order\": 3,\n                    \"file_name\": \"banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/banner_section.jpg\",\n                    \"alt\": \"Banner Section\"\n                }, {\n                    \"id\": 9,\n                    \"name\": \"Top Selling\",\n                    \"order\": 4,\n                    \"file_name\": \"top\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/top.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/top-cross.jpg\",\n                    \"alt\": \"Top Selling\"\n                }, {\n                    \"id\": 8,\n                    \"name\": \"Newest Product Section\",\n                    \"order\": 5,\n                    \"file_name\": \"newest_product\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/newest_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/newest_product-cross.jpg\",\n                    \"alt\": \"Newest Product Section\"\n                }, {\n                    \"id\": 11,\n                    \"name\": \"Tab Products View\",\n                    \"order\": 6,\n                    \"file_name\": \"tab\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/tab.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/tab-cross.jpg\",\n                    \"alt\": \"Tab Products View\"\n                }, {\n                    \"id\": 3,\n                    \"name\": \"Special Products Section\",\n                    \"order\": 7,\n                    \"file_name\": \"special\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/special_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/special_product-cross.jpg\",\n                    \"alt\": \"Special Products Section\"\n                }, {\n                    \"id\": 2,\n                    \"name\": \"Flash Sale Section\",\n                    \"order\": 8,\n                    \"file_name\": \"flash_sale_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/flash_sale_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/flash_sale_section-cross.jpg\",\n                    \"alt\": \"Flash Sale Section\"\n                }, {\n                    \"id\": 4,\n                    \"name\": \"Ad Section\",\n                    \"order\": 9,\n                    \"file_name\": \"ad_banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/ad_banner_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/ad_banner_section-cross.jpg\",\n                    \"alt\": \"Ad Section\"\n                }, {\n                    \"id\": 6,\n                    \"name\": \"Blog Section\",\n                    \"order\": 10,\n                    \"file_name\": \"blog_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/blog_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/blog_section-cross.jpg\",\n                    \"alt\": \"Blog Section\"\n                }, {\n                    \"id\": 12,\n                    \"name\": \"Banner 2 Section\",\n                    \"order\": 11,\n                    \"file_name\": \"banner_two_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Banner 2 Section\"\n                }, {\n                    \"id\": 7,\n                    \"name\": \"Info Boxes\",\n                    \"order\": 12,\n                    \"file_name\": \"info_boxes\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/info_boxes.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/info_boxes-cross.jpg\",\n                    \"alt\": \"Info Boxes\"\n                }]\n                ', 1, 1, 1, 5, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customers_id` int(11) NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `customers_fax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_newsletter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket`
--

CREATE TABLE `customers_basket` (
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_basket_quantity` int(11) NOT NULL,
  `final_price` decimal(15,2) DEFAULT NULL,
  `customers_basket_date_added` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_order` tinyint(1) NOT NULL DEFAULT '0',
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_basket_attributes`
--

CREATE TABLE `customers_basket_attributes` (
  `customers_basket_attributes_id` int(11) NOT NULL,
  `customers_basket_id` int(11) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `products_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_id` int(11) NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customers_info`
--

CREATE TABLE `customers_info` (
  `customers_info_id` int(11) NOT NULL,
  `customers_info_date_of_last_logon` datetime DEFAULT NULL,
  `customers_info_number_of_logons` int(11) DEFAULT NULL,
  `customers_info_date_account_created` datetime DEFAULT NULL,
  `customers_info_date_account_last_modified` datetime DEFAULT NULL,
  `global_product_notifications` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE `devices` (
  `id` int(11) NOT NULL,
  `device_id` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `device_type` int(11) NOT NULL DEFAULT '1',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `ram` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `processor` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_os` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latittude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `device_model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `operating_system` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `browser_info` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_notify` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flash_sale`
--

CREATE TABLE `flash_sale` (
  `flash_sale_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `flash_sale_products_price` decimal(15,2) NOT NULL,
  `flash_sale_date_added` int(11) NOT NULL,
  `flash_sale_last_modified` int(11) NOT NULL,
  `flash_start_date` int(11) NOT NULL,
  `flash_expires_date` int(11) NOT NULL,
  `flash_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flate_rate`
--

CREATE TABLE `flate_rate` (
  `id` int(11) NOT NULL,
  `flate_rate` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flate_rate`
--

INSERT INTO `flate_rate` (`id`, `flate_rate`, `currency`) VALUES
(1, '45', 'EGP');

-- --------------------------------------------------------

--
-- Table structure for table `front_end_theme_content`
--

CREATE TABLE `front_end_theme_content` (
  `id` int(11) NOT NULL,
  `top_offers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `headers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carousels` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `footers` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_section_order` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cart` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `news` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shop` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `login` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `transitions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banners_two` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `front_end_theme_content`
--

INSERT INTO `front_end_theme_content` (`id`, `top_offers`, `headers`, `carousels`, `banners`, `footers`, `product_section_order`, `cart`, `news`, `detail`, `shop`, `contact`, `login`, `transitions`, `banners_two`) VALUES
(1, '', '[\n{\n\"id\": 1,\n\"name\": \"Header One\",\n\"image\": \"images/prototypes/header1.jpg\",\n\"alt\" : \"header One\" \n},\n{\n\"id\": 2,\n\"name\": \"Header Two\",\n\"image\": \"images/prototypes/header2.jpg\",\n\"alt\" : \"header Two\" \n},\n{\n\"id\": 3,\n\"name\": \"Header Three\",\n\"image\": \"images/prototypes/header3.jpg\",\n\"alt\" : \"header Three\" \n},\n{\n\"id\": 4,\n\"name\": \"Header Four\",\n\"image\": \"images/prototypes/header4.jpg\",\n\"alt\" : \"header Four\" \n},\n{\n\"id\": 5,\n\"name\": \"Header Five\",\n\"image\": \"images/prototypes/header5.jpg\",\n\"alt\" : \"header Five\" \n},\n{\n\"id\": 6,\n\"name\": \"Header Six\",\n\"image\": \"images/prototypes/header6.jpg\",\n\"alt\" : \"header Six\" \n},\n{\n\"id\": 7,\n\"name\": \"Header Seven\",\n\"image\": \"images/prototypes/header7.jpg\",\n\"alt\" : \"header Seven\" \n},\n{\n\"id\": 8,\n\"name\": \"Header Eight\",\n\"image\": \"images/prototypes/header8.jpg\",\n\"alt\" : \"header Eight\" \n},\n{\n\"id\": 9,\n\"name\": \"Header Nine\",\n\"image\": \"images/prototypes/header9.jpg\",\n\"alt\" : \"header Nine\" \n},\n{\n\"id\": 10,\n\"name\": \"Header Ten\",\n\"image\": \"images/prototypes/header10.jpg\",\n\"alt\" : \"header Ten\" \n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Bootstrap Carousel Content Full Screen\",\n\"image\": \"images/prototypes/carousal1.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Screen\"\n},\n{\n\"id\": 2,\n\"name\": \"Bootstrap Carousel Content Full Width\",\n\"image\": \"images/prototypes/carousal2.jpg\",\n\"alt\": \"Bootstrap Carousel Content Full Width\"\n},\n{\n\"id\": 3,\n\"name\": \"Bootstrap Carousel Content with Left Banner\",\n\"image\": \"images/prototypes/carousal3.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Left Banner\"\n},\n{\n\"id\": 4,\n\"name\": \"Bootstrap Carousel Content with Navigation\",\n\"image\": \"images/prototypes/carousal4.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Navigation\"\n},\n{\n\"id\": 5,\n\"name\": \"Bootstrap Carousel Content with Right Banner\",\n\"image\": \"images/prototypes/carousal5.jpg\",\n\"alt\": \"Bootstrap Carousel Content with Right Banner\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Banner One\",\n\"image\": \"images/prototypes/banner1.jpg\",\n\"alt\": \"Banner One\"\n},\n{\n\"id\": 2,\n\"name\": \"Banner Two\",\n\"image\": \"images/prototypes/banner2.jpg\",\n\"alt\": \"Banner Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Banner Three\",\n\"image\": \"images/prototypes/banner3.jpg\",\n\"alt\": \"Banner Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Banner Four\",\n\"image\": \"images/prototypes/banner4.jpg\",\n\"alt\": \"Banner Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Banner Five\",\n\"image\": \"images/prototypes/banner5.jpg\",\n\"alt\": \"Banner Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Banner Six\",\n\"image\": \"images/prototypes/banner6.jpg\",\n\"alt\": \"Banner Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Banner Seven\",\n\"image\": \"images/prototypes/banner7.jpg\",\n\"alt\": \"Banner Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Banner Eight\",\n\"image\": \"images/prototypes/banner8.jpg\",\n\"alt\": \"Banner Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Banner Nine\",\n\"image\": \"images/prototypes/banner9.jpg\",\n\"alt\": \"Banner Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Banner Ten\",\n\"image\": \"images/prototypes/banner10.jpg\",\n\"alt\": \"Banner Ten\"\n},\n{\n\"id\": 11,\n\"name\": \"Banner Eleven\",\n\"image\": \"images/prototypes/banner11.jpg\",\n\"alt\": \"Banner Eleven\"\n},\n{\n\"id\": 12,\n\"name\": \"Banner Twelve\",\n\"image\": \"images/prototypes/banner12.jpg\",\n\"alt\": \"Banner Twelve\"\n},\n{\n\"id\": 13,\n\"name\": \"Banner Thirteen\",\n\"image\": \"images/prototypes/banner13.jpg\",\n\"alt\": \"Banner Thirteen\"\n},\n{\n\"id\": 14,\n\"name\": \"Banner Fourteen\",\n\"image\": \"images/prototypes/banner14.jpg\",\n\"alt\": \"Banner Fourteen\"\n},\n{\n\"id\": 15,\n\"name\": \"Banner Fifteen\",\n\"image\": \"images/prototypes/banner15.jpg\",\n\"alt\": \"Banner Fifteen\"\n},\n{\n\"id\": 16,\n\"name\": \"Banner Sixteen\",\n\"image\": \"images/prototypes/banner16.jpg\",\n\"alt\": \"Banner Sixteen\"\n},\n{\n\"id\": 17,\n\"name\": \"Banner Seventeen\",\n\"image\": \"images/prototypes/banner17.jpg\",\n\"alt\": \"Banner Seventeen\"\n},\n{\n\"id\": 18,\n\"name\": \"Banner Eighteen\",\n\"image\": \"images/prototypes/banner18.jpg\",\n\"alt\": \"Banner Eighteen\"\n},\n{\n\"id\": 19,\n\"name\": \"Banner Nineteen\",\n\"image\": \"images/prototypes/banner19.jpg\",\n\"alt\": \"Banner Nineteen\"\n}\n]', '[\n{\n\"id\": 1,\n\"name\": \"Footer One\",\n\"image\": \"images/prototypes/footer1.png\",\n\"alt\" : \"Footer One\"\n},\n{\n\"id\": 2,\n\"name\": \"Footer Two\",\n\"image\": \"images/prototypes/footer2.png\",\n\"alt\" : \"Footer Two\"\n},\n{\n\"id\": 3,\n\"name\": \"Footer Three\",\n\"image\": \"images/prototypes/footer3.png\",\n\"alt\" : \"Footer Three\"\n},\n{\n\"id\": 4,\n\"name\": \"Footer Four\",\n\"image\": \"images/prototypes/footer4.png\",\n\"alt\" : \"Footer Four\"\n},\n{\n\"id\": 5,\n\"name\": \"Footer Five\",\n\"image\": \"images/prototypes/footer5.png\",\n\"alt\" : \"Footer Five\"\n},\n{\n\"id\": 6,\n\"name\": \"Footer Six\",\n\"image\": \"images/prototypes/footer6.png\",\n\"alt\" : \"Footer Six\"\n},\n{\n\"id\": 7,\n\"name\": \"Footer Seven\",\n\"image\": \"images/prototypes/footer7.png\",\n\"alt\" : \"Footer Seven\"\n},\n{\n\"id\": 8,\n\"name\": \"Footer Eight\",\n\"image\": \"images/prototypes/footer8.png\",\n\"alt\" : \"Footer Eight\"\n},\n{\n\"id\": 9,\n\"name\": \"Footer Nine\",\n\"image\": \"images/prototypes/footer9.png\",\n\"alt\" : \"Footer Nine\"\n},\n{\n\"id\": 10,\n\"name\": \"Footer Ten\",\n\"image\": \"images/prototypes/footer10.png\",\n\"alt\" : \"Footer Ten\"\n}\n]', '[{\n                    \"id\": 10,\n                    \"name\": \"Second Ad Section\",\n                    \"order\": 1,\n                    \"file_name\": \"sec_ad_banner\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Second Ad Section\"\n                }, {\n                    \"id\": 5,\n                    \"name\": \"Categories\",\n                    \"order\": 2,\n                    \"file_name\": \"categories\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/categories.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/categories-cross.jpg\",\n                    \"alt\": \"Categories\"\n                }, {\n                    \"id\": 1,\n                    \"name\": \"Banner Section\",\n                    \"order\": 3,\n                    \"file_name\": \"banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/banner_section.jpg\",\n                    \"alt\": \"Banner Section\"\n                }, {\n                    \"id\": 9,\n                    \"name\": \"Top Selling\",\n                    \"order\": 4,\n                    \"file_name\": \"top\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/top.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/top-cross.jpg\",\n                    \"alt\": \"Top Selling\"\n                }, {\n                    \"id\": 8,\n                    \"name\": \"Newest Product Section\",\n                    \"order\": 5,\n                    \"file_name\": \"newest_product\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/newest_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/newest_product-cross.jpg\",\n                    \"alt\": \"Newest Product Section\"\n                }, {\n                    \"id\": 11,\n                    \"name\": \"Tab Products View\",\n                    \"order\": 6,\n                    \"file_name\": \"tab\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/tab.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/tab-cross.jpg\",\n                    \"alt\": \"Tab Products View\"\n                }, {\n                    \"id\": 3,\n                    \"name\": \"Special Products Section\",\n                    \"order\": 7,\n                    \"file_name\": \"special\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/special_product.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/special_product-cross.jpg\",\n                    \"alt\": \"Special Products Section\"\n                }, {\n                    \"id\": 2,\n                    \"name\": \"Flash Sale Section\",\n                    \"order\": 8,\n                    \"file_name\": \"flash_sale_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/flash_sale_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/flash_sale_section-cross.jpg\",\n                    \"alt\": \"Flash Sale Section\"\n                }, {\n                    \"id\": 4,\n                    \"name\": \"Ad Section\",\n                    \"order\": 9,\n                    \"file_name\": \"ad_banner_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/ad_banner_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/ad_banner_section-cross.jpg\",\n                    \"alt\": \"Ad Section\"\n                }, {\n                    \"id\": 6,\n                    \"name\": \"Blog Section\",\n                    \"order\": 10,\n                    \"file_name\": \"blog_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/blog_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/blog_section-cross.jpg\",\n                    \"alt\": \"Blog Section\"\n                }, {\n                    \"id\": 12,\n                    \"name\": \"Banner 2 Section\",\n                    \"order\": 11,\n                    \"file_name\": \"banner_two_section\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/sec_ad_section.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/sec_ad_section-cross.jpg\",\n                    \"alt\": \"Banner 2 Section\"\n                }, {\n                    \"id\": 7,\n                    \"name\": \"Info Boxes\",\n                    \"order\": 12,\n                    \"file_name\": \"info_boxes\",\n                    \"status\": 1,\n                    \"image\": \"images\\/prototypes\\/info_boxes.jpg\",\n                    \"disabled_image\": \"images\\/prototypes\\/info_boxes-cross.jpg\",\n                    \"alt\": \"Info Boxes\"\n                }]\n                ', '[      {         \"id\":1,       \"name\":\"Cart One\"    },    {         \"id\":2,       \"name\":\"Cart Two\"    }     ]', '[      {         \"id\":1,       \"name\":\"News One\"    },    {         \"id\":2,       \"name\":\"News Two\"    }     ]', '[  \n{  \n\"id\":1,\n\"name\":\"Product Detail Page One\"\n},\n{  \n\"id\":2,\n\"name\":\"Product Detail Page Two\"\n},\n{  \n\"id\":3,\n\"name\":\"Product Detail Page Three\"\n},\n{  \n\"id\":4,\n\"name\":\"Product Detail Page Four\"\n},\n{  \n\"id\":5,\n\"name\":\"Product Detail Page Five\"\n},\n{  \n\"id\":6,\n\"name\":\"Product Detail Page Six\"\n}\n\n]', '[      {         \"id\":1,       \"name\":\"Shop Page One\"    },    {         \"id\":2,       \"name\":\"Shop Page Two\"    },    {         \"id\":3,       \"name\":\"Shop Page Three\"    },    {         \"id\":4,       \"name\":\"Shop Page Four\"    },    {         \"id\":5,       \"name\":\"Shop Page Five\"    }     ]', '[      {         \"id\":1,       \"name\":\"Contact Page One\"    },    {         \"id\":2,       \"name\":\"Contact Page Two\"    } ]', '[      {         \"id\":1,       \"name\":\"Login Page One\"    },    {         \"id\":2,       \"name\":\"Login Page Two\"    } ]', '[ { \"id\":1, \"name\":\"Transition Zoomin\" }, { \"id\":2, \"name\":\"Transition Flashing\" }, { \"id\":3, \"name\":\"Transition Shine\" }, { \"id\":4, \"name\":\"Transition Circle\" }, { \"id\":5, \"name\":\"Transition Opacity\" } ]', '[ { \"id\": 1, \"name\": \"Banner One\", \"image\": \"images/prototypes/banner1.jpg\", \"alt\": \"Banner One\" }, { \"id\": 2, \"name\": \"Banner Two\", \"image\": \"images/prototypes/banner2.jpg\", \"alt\": \"Banner Two\" }, { \"id\": 3, \"name\": \"Banner Three\", \"image\": \"images/prototypes/banner3.jpg\", \"alt\": \"Banner Three\" }, { \"id\": 4, \"name\": \"Banner Four\", \"image\": \"images/prototypes/banner4.jpg\", \"alt\": \"Banner Four\" }, { \"id\": 5, \"name\": \"Banner Five\", \"image\": \"images/prototypes/banner5.jpg\", \"alt\": \"Banner Five\" }, { \"id\": 6, \"name\": \"Banner Six\", \"image\": \"images/prototypes/banner6.jpg\", \"alt\": \"Banner Six\" }, { \"id\": 7, \"name\": \"Banner Seven\", \"image\": \"images/prototypes/banner7.jpg\", \"alt\": \"Banner Seven\" }, { \"id\": 8, \"name\": \"Banner Eight\", \"image\": \"images/prototypes/banner8.jpg\", \"alt\": \"Banner Eight\" }, { \"id\": 9, \"name\": \"Banner Nine\", \"image\": \"images/prototypes/banner9.jpg\", \"alt\": \"Banner Nine\" }, { \"id\": 10, \"name\": \"Banner Ten\", \"image\": \"images/prototypes/banner10.jpg\", \"alt\": \"Banner Ten\" }, { \"id\": 11, \"name\": \"Banner Eleven\", \"image\": \"images/prototypes/banner11.jpg\", \"alt\": \"Banner Eleven\" }, { \"id\": 12, \"name\": \"Banner Twelve\", \"image\": \"images/prototypes/banner12.jpg\", \"alt\": \"Banner Twelve\" }, { \"id\": 13, \"name\": \"Banner Thirteen\", \"image\": \"images/prototypes/banner13.jpg\", \"alt\": \"Banner Thirteen\" }, { \"id\": 14, \"name\": \"Banner Fourteen\", \"image\": \"images/prototypes/banner14.jpg\", \"alt\": \"Banner Fourteen\" }, { \"id\": 15, \"name\": \"Banner Fifteen\", \"image\": \"images/prototypes/banner15.jpg\", \"alt\": \"Banner Fifteen\" }, { \"id\": 16, \"name\": \"Banner Sixteen\", \"image\": \"images/prototypes/banner16.jpg\", \"alt\": \"Banner Sixteen\" }, { \"id\": 17, \"name\": \"Banner Seventeen\", \"image\": \"images/prototypes/banner17.jpg\", \"alt\": \"Banner Seventeen\" }, { \"id\": 18, \"name\": \"Banner Eighteen\", \"image\": \"images/prototypes/banner18.jpg\", \"alt\": \"Banner Eighteen\" }, { \"id\": 19, \"name\": \"Banner Nineteen\", \"image\": \"images/prototypes/banner19.jpg\", \"alt\": \"Banner Nineteen\" } ]');

-- --------------------------------------------------------

--
-- Table structure for table `geo_zones`
--

CREATE TABLE `geo_zones` (
  `geo_zone_id` int(11) NOT NULL,
  `geo_zone_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geo_zone_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `home_banners`
--

CREATE TABLE `home_banners` (
  `home_banners_id` bigint(20) UNSIGNED NOT NULL,
  `banner_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `text` text COLLATE utf8mb4_unicode_ci,
  `image` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `home_banners`
--

INSERT INTO `home_banners` (`home_banners_id`, `banner_name`, `language_id`, `text`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banners_1', 1, '', 156, '2020-04-10 10:54:47', '2020-04-10 10:54:47'),
(2, 'banners_2', 1, '', 204, '2020-04-10 10:54:47', '2020-04-10 10:54:47'),
(3, 'banners_3', 1, '', 235, '2020-04-10 10:54:47', '2020-04-10 10:54:47'),
(4, 'banners_1', 2, '', 156, '2020-04-10 10:54:47', '2020-04-10 10:54:47'),
(5, 'banners_2', 2, '', 204, '2020-04-10 10:54:47', '2020-04-10 10:54:47'),
(6, 'banners_3', 2, '', 235, '2020-04-10 10:54:47', '2020-04-10 10:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `http_call_record`
--

CREATE TABLE `http_call_record` (
  `id` int(11) NOT NULL,
  `device_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ping_time` datetime DEFAULT NULL,
  `difference_from_previous` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `name`, `user_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(3, 'XUF1110211.png', 1, NULL, NULL, NULL),
(4, '0S9Uj10711.png', 1, NULL, NULL, NULL),
(5, '49YbL10411.png', 1, NULL, NULL, NULL),
(83, 'JqYfZ11207.jpg', 1, NULL, NULL, NULL),
(84, '6Q4Qy11507.jpg', 1, NULL, NULL, NULL),
(85, 'jOVnc11207.jpg', 1, NULL, NULL, NULL),
(86, 'Ake4A11107.jpg', 1, NULL, NULL, NULL),
(89, 'nDQtA11407.jpg', 1, NULL, NULL, NULL),
(90, 'ueyod11407.jpg', 1, NULL, NULL, NULL),
(91, 'xD6MF11207.jpg', 1, NULL, NULL, NULL),
(92, 'YZyoU11507.jpg', 1, NULL, NULL, NULL),
(93, 'RLshK11309.jpg', 1, NULL, NULL, NULL),
(94, 'pTZdI11309.jpg', 1, NULL, NULL, NULL),
(95, '2t7BU11909.jpg', 1, NULL, NULL, NULL),
(96, 'O0cLp11909.jpg', 1, NULL, NULL, NULL),
(97, 'ncXhn11709.jpg', 1, NULL, NULL, NULL),
(98, '3876V11310.jpg', 1, NULL, NULL, NULL),
(99, '80IGj11510.jpg', 1, NULL, NULL, NULL),
(100, 'ueeqM11410.jpg', 1, NULL, NULL, NULL),
(101, 'UrgVW11410.jpg', 1, NULL, NULL, NULL),
(102, 'a18kN11510.jpg', 1, NULL, NULL, NULL),
(103, 'qQM0R11310.jpg', 1, NULL, NULL, NULL),
(104, 'VrhhT11510.jpg', 1, NULL, NULL, NULL),
(105, 'gSkR011310.jpg', 1, NULL, NULL, NULL),
(106, 'DXoxt11610.jpg', 1, NULL, NULL, NULL),
(107, 'N4WSZ11310.jpg', 1, NULL, NULL, NULL),
(108, 'z9MLR11610.jpg', 1, NULL, NULL, NULL),
(109, 'YNVyV11410.jpg', 1, NULL, NULL, NULL),
(110, 'YinE411810.jpg', 1, NULL, NULL, NULL),
(111, '97VNC11210.jpg', 1, NULL, NULL, NULL),
(114, 'zZZ2n11710.jpg', 1, NULL, NULL, NULL),
(115, 'vMNsa11710.jpg', 1, NULL, NULL, NULL),
(116, 'qujIz11610.jpg', 1, NULL, NULL, NULL),
(118, 'PJG0C11511.jpg', 1, NULL, NULL, NULL),
(119, 'SKOMJ11512.jpg', 1, NULL, NULL, NULL),
(120, 'newsletter.jpg', 1, NULL, NULL, NULL),
(121, 'juK3I09709.png', 1, NULL, NULL, NULL),
(122, 'DXD0B09109.png', 1, NULL, NULL, NULL),
(123, 'lf4KL09409.png', 1, NULL, NULL, NULL),
(124, 'v6rSH09109.png', 1, NULL, NULL, NULL),
(125, 'EZ06709309.png', 1, NULL, NULL, NULL),
(126, 'UzwJF09509.png', 1, NULL, NULL, NULL),
(127, 'yqOvT09409.png', 1, NULL, NULL, NULL),
(128, 'gKtid09509.png', 1, NULL, NULL, NULL),
(129, 'c0ebV09209.png', 1, NULL, NULL, NULL),
(130, '7GlqZ09609.png', 1, NULL, NULL, NULL),
(131, 'L0iB809709.png', 1, NULL, NULL, NULL),
(132, 'EffVf09809.png', 1, NULL, NULL, NULL),
(133, 'oqVgQ09109.png', 1, NULL, NULL, NULL),
(134, '07uzf09509.jpeg', 1, NULL, NULL, NULL),
(135, 'blr2w09609.jpg', 1, NULL, NULL, NULL),
(136, 'GRoMC09209.jpg', 1, NULL, NULL, NULL),
(137, 'XddaX09409.jpg', 1, NULL, NULL, NULL),
(138, 'B46Mp09809.jpg', 1, NULL, NULL, NULL),
(139, '69EIB09609.jpg', 1, NULL, NULL, NULL),
(140, 'p2Cks09901.jpg', 1, NULL, NULL, NULL),
(141, 'dZIoD10410.jpg', 1, NULL, NULL, NULL),
(142, '1T84x10810.jpg', 1, NULL, NULL, NULL),
(143, 'zU99p10710.jpg', 1, NULL, NULL, NULL),
(144, 'Zr05310110.jpg', 1, NULL, NULL, NULL),
(145, '1YRki10110.jpg', 1, NULL, NULL, NULL),
(146, 'jaqfN10510.jpg', 1, NULL, NULL, NULL),
(147, 'US1xU10910.jpg', 1, NULL, NULL, NULL),
(148, 'yZJGq10710.jpg', 1, NULL, NULL, NULL),
(149, '5JTdt10910.jpg', 1, NULL, NULL, NULL),
(150, 'g3FGm10710.jpg', 1, NULL, NULL, NULL),
(151, 'Fk9bD10710.jpg', 1, NULL, NULL, NULL),
(152, 'lrwYy10110.jpg', 1, NULL, NULL, NULL),
(153, 'sv0Mc10910.jpg', 1, NULL, NULL, NULL),
(154, '7FatN10910.jpg', 1, NULL, NULL, NULL),
(155, 'ero7m10510.jpg', 1, NULL, NULL, NULL),
(156, 'vmJp010310.jpg', 1, NULL, NULL, NULL),
(157, 'IfYVT10910.jpg', 1, NULL, NULL, NULL),
(158, 'UMblI10310.jpg', 1, NULL, NULL, NULL),
(159, 'OOUnS10610.jpg', 1, NULL, NULL, NULL),
(160, 'kKjfe10310.jpg', 1, NULL, NULL, NULL),
(161, 'U85zC10210.jpg', 1, NULL, NULL, NULL),
(162, '4ET8o10310.jpg', 1, NULL, NULL, NULL),
(163, 'p4JvZ10510.jpg', 1, NULL, NULL, NULL),
(164, 'VnKU510810.jpg', 1, NULL, NULL, NULL),
(165, 'l1lSu10910.jpg', 1, NULL, NULL, NULL),
(166, 'E3LBu10410.jpg', 1, NULL, NULL, NULL),
(167, 'W1ySe10110.jpg', 1, NULL, NULL, NULL),
(168, 'lSbaD10210.jpg', 1, NULL, NULL, NULL),
(169, '1Vnk910810.jpg', 1, NULL, NULL, NULL),
(170, 'epfUb10110.jpg', 1, NULL, NULL, NULL),
(171, 'xJS0O10910.jpg', 1, NULL, NULL, NULL),
(172, '21r2710910.jpg', 1, NULL, NULL, NULL),
(173, 'kimEA10510.jpg', 1, NULL, NULL, NULL),
(174, 'XDgJi10310.jpg', 1, NULL, NULL, NULL),
(175, '1xViN10110.jpg', 1, NULL, NULL, NULL),
(176, 'O2cfV10510.jpg', 1, NULL, NULL, NULL),
(177, 'tnf4Y10310.jpg', 1, NULL, NULL, NULL),
(178, 'XJlRk10710.jpg', 1, NULL, NULL, NULL),
(179, 'OCTXe10610.jpg', 1, NULL, NULL, NULL),
(180, 'Xi37L10510.jpg', 1, NULL, NULL, NULL),
(181, 'M0vrU10910.jpg', 1, NULL, NULL, NULL),
(182, 'FReie10410.jpg', 1, NULL, NULL, NULL),
(183, 'D5Sh910210.jpg', 1, NULL, NULL, NULL),
(184, 'sACl810310.jpg', 1, NULL, NULL, NULL),
(185, 'i42uK10810.jpg', 1, NULL, NULL, NULL),
(186, 'yQQ9Y10810.jpg', 1, NULL, NULL, NULL),
(187, 'VdMen10210.jpg', 1, NULL, NULL, NULL),
(188, 'qaqPQ10910.jpg', 1, NULL, NULL, NULL),
(189, 'hT8FT10310.jpg', 1, NULL, NULL, NULL),
(190, 'PMLsi10910.jpg', 1, NULL, NULL, NULL),
(191, 'HynSL10710.jpg', 1, NULL, NULL, NULL),
(192, 'OpwDB10210.jpg', 1, NULL, NULL, NULL),
(193, '4kq1X10810.jpg', 1, NULL, NULL, NULL),
(194, 'Rg3Vz10110.jpg', 1, NULL, NULL, NULL),
(195, 'LoUfL10510.jpg', 1, NULL, NULL, NULL),
(196, 'e38pa10610.jpg', 1, NULL, NULL, NULL),
(197, 'OM5Af10310.jpg', 1, NULL, NULL, NULL),
(198, 'UMQOt10210.jpg', 1, NULL, NULL, NULL),
(199, 'H3QKW10510.jpg', 1, NULL, NULL, NULL),
(200, 'NTt8p10310.jpg', 1, NULL, NULL, NULL),
(201, 'xbHFv10510.jpg', 1, NULL, NULL, NULL),
(202, 'Lwn6410310.jpg', 1, NULL, NULL, NULL),
(203, 'eF4AF10110.jpg', 1, NULL, NULL, NULL),
(204, 'p1T8A10810.jpg', 1, NULL, NULL, NULL),
(205, 'OyXNK10210.jpg', 1, NULL, NULL, NULL),
(206, '9V3Ga10610.jpg', 1, NULL, NULL, NULL),
(207, 'l1k3210410.jpg', 1, NULL, NULL, NULL),
(208, 'Lh7Od10510.jpg', 1, NULL, NULL, NULL),
(209, 'uISSG10510.jpg', 1, NULL, NULL, NULL),
(210, 'RCVIt10810.jpg', 1, NULL, NULL, NULL),
(211, 'VpOFJ10210.jpg', 1, NULL, NULL, NULL),
(212, 'UiBw810910.jpg', 1, NULL, NULL, NULL),
(213, 'FpZ8M10810.jpg', 1, NULL, NULL, NULL),
(214, 'NCJ6p10910.jpg', 1, NULL, NULL, NULL),
(215, 'zK8aW10910.png', 1, NULL, NULL, NULL),
(216, 'quBGX10410.png', 1, NULL, NULL, NULL),
(217, 'RhV8R10210.png', 1, NULL, NULL, NULL),
(218, 'tz8Oc10110.png', 1, NULL, NULL, NULL),
(219, '8upk910710.png', 1, NULL, NULL, NULL),
(220, 'Nhi7I10310.png', 1, NULL, NULL, NULL),
(221, 'QjQVN10110.png', 1, NULL, NULL, NULL),
(222, 'tm6uG10510.png', 1, NULL, NULL, NULL),
(223, 'RT6se10110.png', 1, NULL, NULL, NULL),
(224, 'jWyQI10210.png', 1, NULL, NULL, NULL),
(225, 'WO03810310.png', 1, NULL, NULL, NULL),
(226, 'v0Cij10910.png', 1, NULL, NULL, NULL),
(227, 'etchc10610.png', 1, NULL, NULL, NULL),
(228, '7urib10210.png', 1, NULL, NULL, NULL),
(229, 'nb0XP10110.png', 1, NULL, NULL, NULL),
(230, 'lHEah10410.png', 1, NULL, NULL, NULL),
(231, 'ZGNMz10410.png', 1, NULL, NULL, NULL),
(232, 'CgHVT10610.png', 1, NULL, NULL, NULL),
(233, 'Tg8q010110.png', 1, NULL, NULL, NULL),
(234, 'iGSi410110.png', 1, NULL, NULL, NULL),
(235, 'oOXMn10910.jpg', 1, NULL, NULL, NULL),
(236, 'i9BGB11212.jpg', 1, NULL, NULL, NULL),
(237, 'k2ybT11312.jpg', 1, NULL, NULL, NULL),
(238, '3aq3c11112.jpg', 1, NULL, NULL, NULL),
(239, 'FdOXW11412.jpg', 1, NULL, NULL, NULL),
(240, '8vOM311308.jpg', 1, NULL, NULL, NULL),
(241, 'FPCs511608.jpg', 1, NULL, NULL, NULL),
(242, 'wjwEa11208.jpg', 1, NULL, NULL, NULL),
(243, 'fjQqj11908.png', 1, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `image_categories`
--

CREATE TABLE `image_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `image_id` int(10) UNSIGNED NOT NULL,
  `image_type` enum('ACTUAL','THUMBNAIL','LARGE','MEDIUM') COLLATE utf8mb4_unicode_ci NOT NULL,
  `height` int(11) NOT NULL,
  `width` int(11) NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_categories`
--

INSERT INTO `image_categories` (`id`, `image_id`, `image_type`, `height`, `width`, `path`, `created_at`, `updated_at`) VALUES
(84, 83, 'ACTUAL', 277, 370, 'images/media/2019/10/JqYfZ11207.jpg', NULL, NULL),
(85, 83, 'THUMBNAIL', 112, 150, 'images/media/2019/10/thumbnail1570778231JqYfZ11207.jpg', NULL, NULL),
(86, 84, 'ACTUAL', 301, 770, 'images/media/2019/10/6Q4Qy11507.jpg', NULL, NULL),
(87, 85, 'ACTUAL', 550, 368, 'images/media/2019/10/jOVnc11207.jpg', NULL, NULL),
(88, 85, 'THUMBNAIL', 150, 100, 'images/media/2019/10/thumbnail1570778446jOVnc11207.jpg', NULL, NULL),
(89, 85, 'MEDIUM', 400, 268, 'images/media/2019/10/medium1570778446jOVnc11207.jpg', NULL, NULL),
(90, 86, 'ACTUAL', 220, 370, 'images/media/2019/10/Ake4A11107.jpg', NULL, NULL),
(91, 86, 'THUMBNAIL', 89, 150, 'images/media/2019/10/thumbnail1570778447Ake4A11107.jpg', NULL, NULL),
(96, 89, 'ACTUAL', 229, 270, 'images/media/2019/10/nDQtA11407.jpg', NULL, NULL),
(97, 89, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778680nDQtA11407.jpg', NULL, NULL),
(98, 90, 'ACTUAL', 298, 568, 'images/media/2019/10/ueyod11407.jpg', NULL, NULL),
(99, 90, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570778749ueyod11407.jpg', NULL, NULL),
(100, 90, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570778749ueyod11407.jpg', NULL, NULL),
(101, 91, 'ACTUAL', 490, 570, 'images/media/2019/10/xD6MF11207.jpg', NULL, NULL),
(102, 91, 'THUMBNAIL', 129, 150, 'images/media/2019/10/thumbnail1570778967xD6MF11207.jpg', NULL, NULL),
(103, 91, 'MEDIUM', 344, 400, 'images/media/2019/10/medium1570778967xD6MF11207.jpg', NULL, NULL),
(104, 92, 'ACTUAL', 229, 270, 'images/media/2019/10/YZyoU11507.jpg', NULL, NULL),
(105, 92, 'THUMBNAIL', 127, 150, 'images/media/2019/10/thumbnail1570778968YZyoU11507.jpg', NULL, NULL),
(106, 93, 'ACTUAL', 301, 770, 'images/media/2019/10/RLshK11309.jpg', NULL, NULL),
(107, 93, 'THUMBNAIL', 59, 150, 'images/media/2019/10/thumbnail1570787475RLshK11309.jpg', NULL, NULL),
(108, 93, 'MEDIUM', 156, 400, 'images/media/2019/10/medium1570787476RLshK11309.jpg', NULL, NULL),
(109, 94, 'ACTUAL', 211, 570, 'images/media/2019/10/pTZdI11309.jpg', NULL, NULL),
(110, 94, 'THUMBNAIL', 56, 150, 'images/media/2019/10/thumbnail1570787731pTZdI11309.jpg', NULL, NULL),
(111, 94, 'MEDIUM', 148, 400, 'images/media/2019/10/medium1570787731pTZdI11309.jpg', NULL, NULL),
(112, 95, 'ACTUAL', 451, 570, 'images/media/2019/10/2t7BU11909.jpg', NULL, NULL),
(113, 95, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707877532t7BU11909.jpg', NULL, NULL),
(114, 95, 'MEDIUM', 316, 400, 'images/media/2019/10/medium15707877542t7BU11909.jpg', NULL, NULL),
(115, 96, 'ACTUAL', 211, 270, 'images/media/2019/10/O0cLp11909.jpg', NULL, NULL),
(116, 96, 'THUMBNAIL', 117, 150, 'images/media/2019/10/thumbnail1570787792O0cLp11909.jpg', NULL, NULL),
(117, 97, 'ACTUAL', 298, 568, 'images/media/2019/10/ncXhn11709.jpg', NULL, NULL),
(118, 97, 'THUMBNAIL', 79, 150, 'images/media/2019/10/thumbnail1570787936ncXhn11709.jpg', NULL, NULL),
(119, 97, 'MEDIUM', 210, 400, 'images/media/2019/10/medium1570787936ncXhn11709.jpg', NULL, NULL),
(120, 98, 'ACTUAL', 452, 569, 'images/media/2019/10/3876V11310.jpg', NULL, NULL),
(121, 98, 'THUMBNAIL', 119, 150, 'images/media/2019/10/thumbnail15707880203876V11310.jpg', NULL, NULL),
(122, 98, 'MEDIUM', 318, 400, 'images/media/2019/10/medium15707880213876V11310.jpg', NULL, NULL),
(123, 99, 'ACTUAL', 451, 271, 'images/media/2019/10/80IGj11510.jpg', NULL, NULL),
(124, 99, 'THUMBNAIL', 150, 90, 'images/media/2019/10/thumbnail157078802180IGj11510.jpg', NULL, NULL),
(125, 99, 'MEDIUM', 400, 240, 'images/media/2019/10/medium157078802180IGj11510.jpg', NULL, NULL),
(126, 100, 'ACTUAL', 493, 370, 'images/media/2019/10/ueeqM11410.jpg', NULL, NULL),
(127, 100, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788170ueeqM11410.jpg', NULL, NULL),
(128, 100, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788171ueeqM11410.jpg', NULL, NULL),
(129, 101, 'ACTUAL', 230, 370, 'images/media/2019/10/UrgVW11410.jpg', NULL, NULL),
(130, 101, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788171UrgVW11410.jpg', NULL, NULL),
(131, 102, 'ACTUAL', 230, 370, 'images/media/2019/10/a18kN11510.jpg', NULL, NULL),
(132, 102, 'THUMBNAIL', 93, 150, 'images/media/2019/10/thumbnail1570788301a18kN11510.jpg', NULL, NULL),
(133, 103, 'ACTUAL', 493, 370, 'images/media/2019/10/qQM0R11310.jpg', NULL, NULL),
(134, 103, 'THUMBNAIL', 150, 113, 'images/media/2019/10/thumbnail1570788302qQM0R11310.jpg', NULL, NULL),
(135, 103, 'MEDIUM', 400, 300, 'images/media/2019/10/medium1570788302qQM0R11310.jpg', NULL, NULL),
(136, 104, 'ACTUAL', 259, 770, 'images/media/2019/10/VrhhT11510.jpg', NULL, NULL),
(137, 104, 'THUMBNAIL', 50, 150, 'images/media/2019/10/thumbnail1570788382VrhhT11510.jpg', NULL, NULL),
(138, 104, 'MEDIUM', 135, 400, 'images/media/2019/10/medium1570788382VrhhT11510.jpg', NULL, NULL),
(139, 105, 'ACTUAL', 546, 372, 'images/media/2019/10/gSkR011310.jpg', NULL, NULL),
(140, 105, 'THUMBNAIL', 150, 102, 'images/media/2019/10/thumbnail1570788383gSkR011310.jpg', NULL, NULL),
(141, 105, 'MEDIUM', 400, 273, 'images/media/2019/10/medium1570788383gSkR011310.jpg', NULL, NULL),
(142, 106, 'ACTUAL', 430, 1599, 'images/media/2019/10/DXoxt11610.jpg', NULL, NULL),
(143, 106, 'THUMBNAIL', 40, 150, 'images/media/2019/10/thumbnail1570789393DXoxt11610.jpg', NULL, NULL),
(144, 106, 'MEDIUM', 108, 400, 'images/media/2019/10/medium1570789394DXoxt11610.jpg', NULL, NULL),
(145, 106, 'LARGE', 242, 900, 'images/media/2019/10/large1570789394DXoxt11610.jpg', NULL, NULL),
(146, 107, 'ACTUAL', 236, 1169, 'images/media/2019/10/N4WSZ11310.jpg', NULL, NULL),
(147, 107, 'THUMBNAIL', 30, 150, 'images/media/2019/10/thumbnail1570789395N4WSZ11310.jpg', NULL, NULL),
(148, 107, 'MEDIUM', 81, 400, 'images/media/2019/10/medium1570789395N4WSZ11310.jpg', NULL, NULL),
(149, 107, 'LARGE', 182, 900, 'images/media/2019/10/large1570789395N4WSZ11310.jpg', NULL, NULL),
(150, 108, 'ACTUAL', 421, 1170, 'images/media/2019/10/z9MLR11610.jpg', NULL, NULL),
(151, 108, 'THUMBNAIL', 54, 150, 'images/media/2019/10/thumbnail1570789643z9MLR11610.jpg', NULL, NULL),
(152, 108, 'MEDIUM', 144, 400, 'images/media/2019/10/medium1570789643z9MLR11610.jpg', NULL, NULL),
(153, 108, 'LARGE', 324, 900, 'images/media/2019/10/large1570789644z9MLR11610.jpg', NULL, NULL),
(154, 109, 'ACTUAL', 418, 885, 'images/media/2019/10/YNVyV11410.jpg', NULL, NULL),
(155, 109, 'THUMBNAIL', 71, 150, 'images/media/2019/10/thumbnail1570789935YNVyV11410.jpg', NULL, NULL),
(156, 109, 'MEDIUM', 189, 400, 'images/media/2019/10/medium1570789935YNVyV11410.jpg', NULL, NULL),
(157, 110, 'ACTUAL', 387, 770, 'images/media/2019/10/YinE411810.jpg', NULL, NULL),
(158, 110, 'THUMBNAIL', 75, 150, 'images/media/2019/10/thumbnail1570790072YinE411810.jpg', NULL, NULL),
(159, 110, 'MEDIUM', 201, 400, 'images/media/2019/10/medium1570790072YinE411810.jpg', NULL, NULL),
(160, 111, 'ACTUAL', 421, 1600, 'images/media/2019/10/97VNC11210.jpg', NULL, NULL),
(161, 111, 'THUMBNAIL', 39, 150, 'images/media/2019/10/thumbnail157079031897VNC11210.jpg', NULL, NULL),
(162, 111, 'MEDIUM', 105, 400, 'images/media/2019/10/medium157079031997VNC11210.jpg', NULL, NULL),
(163, 111, 'LARGE', 237, 900, 'images/media/2019/10/large157079031997VNC11210.jpg', NULL, NULL),
(168, 114, 'ACTUAL', 179, 370, 'images/media/2019/10/zZZ2n11710.jpg', NULL, NULL),
(169, 114, 'THUMBNAIL', 73, 150, 'images/media/2019/10/thumbnail1570790472zZZ2n11710.jpg', NULL, NULL),
(170, 115, 'ACTUAL', 211, 370, 'images/media/2019/10/vMNsa11710.jpg', NULL, NULL),
(171, 115, 'THUMBNAIL', 86, 150, 'images/media/2019/10/thumbnail1570790553vMNsa11710.jpg', NULL, NULL),
(172, 116, 'ACTUAL', 208, 465, 'images/media/2019/10/qujIz11610.jpg', NULL, NULL),
(173, 116, 'THUMBNAIL', 67, 150, 'images/media/2019/10/thumbnail1570790554qujIz11610.jpg', NULL, NULL),
(174, 116, 'MEDIUM', 179, 400, 'images/media/2019/10/medium1570790554qujIz11610.jpg', NULL, NULL),
(176, 118, 'ACTUAL', 20, 30, 'images/media/2019/10/PJG0C11511.jpg', NULL, NULL),
(177, 119, 'ACTUAL', 20, 30, 'images/media/2019/10/SKOMJ11512.jpg', NULL, NULL),
(178, 120, 'ACTUAL', 20, 30, 'images/media/2019/10/newsletter.jpg', NULL, NULL),
(179, 121, 'ACTUAL', 117, 117, 'images/media/2020/04/juK3I09709.png', NULL, NULL),
(180, 122, 'ACTUAL', 123, 185, 'images/media/2020/04/DXD0B09109.png', NULL, NULL),
(181, 122, 'THUMBNAIL', 100, 150, 'images/media/2020/04/thumbnail1586422901DXD0B09109.png', NULL, NULL),
(182, 123, 'ACTUAL', 421, 1600, 'images/media/2020/04/lf4KL09409.png', NULL, NULL),
(183, 123, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423050lf4KL09409.png', NULL, NULL),
(184, 123, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423050lf4KL09409.png', NULL, NULL),
(185, 123, 'LARGE', 237, 900, 'images/media/2020/04/large1586423050lf4KL09409.png', NULL, NULL),
(186, 124, 'ACTUAL', 421, 1600, 'images/media/2020/04/v6rSH09109.png', NULL, NULL),
(187, 124, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423051v6rSH09109.png', NULL, NULL),
(188, 124, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423051v6rSH09109.png', NULL, NULL),
(189, 124, 'LARGE', 237, 900, 'images/media/2020/04/large1586423051v6rSH09109.png', NULL, NULL),
(190, 125, 'ACTUAL', 421, 1600, 'images/media/2020/04/EZ06709309.png', NULL, NULL),
(191, 125, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423061EZ06709309.png', NULL, NULL),
(192, 125, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423061EZ06709309.png', NULL, NULL),
(193, 125, 'LARGE', 237, 900, 'images/media/2020/04/large1586423061EZ06709309.png', NULL, NULL),
(194, 126, 'ACTUAL', 421, 1600, 'images/media/2020/04/UzwJF09509.png', NULL, NULL),
(195, 126, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423073UzwJF09509.png', NULL, NULL),
(196, 126, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423073UzwJF09509.png', NULL, NULL),
(197, 126, 'LARGE', 237, 900, 'images/media/2020/04/large1586423073UzwJF09509.png', NULL, NULL),
(198, 127, 'ACTUAL', 421, 1600, 'images/media/2020/04/yqOvT09409.png', NULL, NULL),
(199, 127, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423080yqOvT09409.png', NULL, NULL),
(200, 127, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423081yqOvT09409.png', NULL, NULL),
(201, 127, 'LARGE', 237, 900, 'images/media/2020/04/large1586423081yqOvT09409.png', NULL, NULL),
(202, 128, 'ACTUAL', 421, 1600, 'images/media/2020/04/gKtid09509.png', NULL, NULL),
(203, 128, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423081gKtid09509.png', NULL, NULL),
(204, 128, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423081gKtid09509.png', NULL, NULL),
(205, 129, 'ACTUAL', 421, 1600, 'images/media/2020/04/c0ebV09209.png', NULL, NULL),
(206, 129, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423090c0ebV09209.png', NULL, NULL),
(207, 129, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423090c0ebV09209.png', NULL, NULL),
(208, 129, 'LARGE', 237, 900, 'images/media/2020/04/large1586423090c0ebV09209.png', NULL, NULL),
(209, 130, 'ACTUAL', 421, 1600, 'images/media/2020/04/7GlqZ09609.png', NULL, NULL),
(210, 130, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail15864231017GlqZ09609.png', NULL, NULL),
(211, 130, 'MEDIUM', 105, 400, 'images/media/2020/04/medium15864231017GlqZ09609.png', NULL, NULL),
(212, 131, 'ACTUAL', 421, 1600, 'images/media/2020/04/L0iB809709.png', NULL, NULL),
(213, 131, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423102L0iB809709.png', NULL, NULL),
(214, 131, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423102L0iB809709.png', NULL, NULL),
(215, 131, 'LARGE', 237, 900, 'images/media/2020/04/large1586423102L0iB809709.png', NULL, NULL),
(216, 132, 'ACTUAL', 421, 1600, 'images/media/2020/04/EffVf09809.png', NULL, NULL),
(217, 132, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423114EffVf09809.png', NULL, NULL),
(218, 132, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423114EffVf09809.png', NULL, NULL),
(219, 132, 'LARGE', 237, 900, 'images/media/2020/04/large1586423114EffVf09809.png', NULL, NULL),
(220, 133, 'ACTUAL', 421, 1600, 'images/media/2020/04/oqVgQ09109.png', NULL, NULL),
(221, 133, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586423117oqVgQ09109.png', NULL, NULL),
(222, 133, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586423117oqVgQ09109.png', NULL, NULL),
(223, 133, 'LARGE', 237, 900, 'images/media/2020/04/large1586423117oqVgQ09109.png', NULL, NULL),
(224, 134, 'ACTUAL', 613, 829, 'images/media/2020/04/07uzf09509.jpeg', NULL, NULL),
(225, 134, 'THUMBNAIL', 111, 150, 'images/media/2020/04/thumbnail158642318407uzf09509.jpeg', NULL, NULL),
(226, 134, 'MEDIUM', 296, 400, 'images/media/2020/04/medium158642318407uzf09509.jpeg', NULL, NULL),
(227, 135, 'ACTUAL', 197, 474, 'images/media/2020/04/blr2w09609.jpg', NULL, NULL),
(228, 135, 'THUMBNAIL', 62, 150, 'images/media/2020/04/thumbnail1586424619blr2w09609.jpg', NULL, NULL),
(229, 135, 'MEDIUM', 166, 400, 'images/media/2020/04/medium1586424619blr2w09609.jpg', NULL, NULL),
(230, 136, 'ACTUAL', 460, 1100, 'images/media/2020/04/GRoMC09209.jpg', NULL, NULL),
(231, 136, 'THUMBNAIL', 63, 150, 'images/media/2020/04/thumbnail1586424627GRoMC09209.jpg', NULL, NULL),
(232, 136, 'MEDIUM', 167, 400, 'images/media/2020/04/medium1586424627GRoMC09209.jpg', NULL, NULL),
(233, 136, 'LARGE', 376, 900, 'images/media/2020/04/large1586424627GRoMC09209.jpg', NULL, NULL),
(234, 137, 'ACTUAL', 460, 1100, 'images/media/2020/04/XddaX09409.jpg', NULL, NULL),
(235, 137, 'THUMBNAIL', 63, 150, 'images/media/2020/04/thumbnail1586424632XddaX09409.jpg', NULL, NULL),
(236, 137, 'MEDIUM', 167, 400, 'images/media/2020/04/medium1586424632XddaX09409.jpg', NULL, NULL),
(237, 137, 'LARGE', 376, 900, 'images/media/2020/04/large1586424632XddaX09409.jpg', NULL, NULL),
(238, 138, 'ACTUAL', 524, 626, 'images/media/2020/04/B46Mp09809.jpg', NULL, NULL),
(239, 138, 'THUMBNAIL', 126, 150, 'images/media/2020/04/thumbnail1586424638B46Mp09809.jpg', NULL, NULL),
(240, 138, 'MEDIUM', 335, 400, 'images/media/2020/04/medium1586424638B46Mp09809.jpg', NULL, NULL),
(241, 139, 'ACTUAL', 197, 474, 'images/media/2020/04/69EIB09609.jpg', NULL, NULL),
(242, 139, 'THUMBNAIL', 62, 150, 'images/media/2020/04/thumbnail158642464269EIB09609.jpg', NULL, NULL),
(243, 139, 'MEDIUM', 166, 400, 'images/media/2020/04/medium158642464269EIB09609.jpg', NULL, NULL),
(244, 140, 'ACTUAL', 300, 200, 'images/media/2020/04/p2Cks09901.jpg', NULL, NULL),
(245, 140, 'THUMBNAIL', 150, 100, 'images/media/2020/04/thumbnail1586438740p2Cks09901.jpg', NULL, NULL),
(246, 141, 'ACTUAL', 284, 250, 'images/media/2020/04/dZIoD10410.jpg', NULL, NULL),
(247, 141, 'THUMBNAIL', 150, 132, 'images/media/2020/04/thumbnail1586512856dZIoD10410.jpg', NULL, NULL),
(248, 142, 'ACTUAL', 284, 250, 'images/media/2020/04/1T84x10810.jpg', NULL, NULL),
(249, 142, 'THUMBNAIL', 150, 132, 'images/media/2020/04/thumbnail15865128581T84x10810.jpg', NULL, NULL),
(250, 143, 'ACTUAL', 548, 370, 'images/media/2020/04/zU99p10710.jpg', NULL, NULL),
(251, 143, 'THUMBNAIL', 150, 101, 'images/media/2020/04/thumbnail1586512889zU99p10710.jpg', NULL, NULL),
(252, 143, 'MEDIUM', 400, 270, 'images/media/2020/04/medium1586512889zU99p10710.jpg', NULL, NULL),
(253, 144, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Zr05310110.jpg', NULL, NULL),
(254, 144, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586512893Zr05310110.jpg', NULL, NULL),
(255, 144, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586512893Zr05310110.jpg', NULL, NULL),
(256, 144, 'LARGE', 900, 900, 'images/media/2020/04/large1586512893Zr05310110.jpg', NULL, NULL),
(257, 145, 'ACTUAL', 1024, 1024, 'images/media/2020/04/1YRki10110.jpg', NULL, NULL),
(258, 145, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15865132941YRki10110.jpg', NULL, NULL),
(259, 145, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15865132941YRki10110.jpg', NULL, NULL),
(260, 145, 'LARGE', 900, 900, 'images/media/2020/04/large15865132941YRki10110.jpg', NULL, NULL),
(261, 146, 'ACTUAL', 1024, 1024, 'images/media/2020/04/jaqfN10510.jpg', NULL, NULL),
(262, 146, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513571jaqfN10510.jpg', NULL, NULL),
(263, 147, 'ACTUAL', 1024, 1024, 'images/media/2020/04/US1xU10910.jpg', NULL, NULL),
(264, 146, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513572jaqfN10510.jpg', NULL, NULL),
(265, 147, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513572US1xU10910.jpg', NULL, NULL),
(266, 147, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513572US1xU10910.jpg', NULL, NULL),
(267, 146, 'LARGE', 900, 900, 'images/media/2020/04/large1586513572jaqfN10510.jpg', NULL, NULL),
(268, 147, 'LARGE', 900, 900, 'images/media/2020/04/large1586513572US1xU10910.jpg', NULL, NULL),
(269, 148, 'ACTUAL', 1024, 1024, 'images/media/2020/04/yZJGq10710.jpg', NULL, NULL),
(270, 149, 'ACTUAL', 1024, 1024, 'images/media/2020/04/5JTdt10910.jpg', NULL, NULL),
(271, 148, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513572yZJGq10710.jpg', NULL, NULL),
(272, 149, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15865135725JTdt10910.jpg', NULL, NULL),
(273, 148, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513572yZJGq10710.jpg', NULL, NULL),
(274, 149, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15865135725JTdt10910.jpg', NULL, NULL),
(275, 148, 'LARGE', 900, 900, 'images/media/2020/04/large1586513572yZJGq10710.jpg', NULL, NULL),
(276, 149, 'LARGE', 900, 900, 'images/media/2020/04/large15865135725JTdt10910.jpg', NULL, NULL),
(277, 150, 'ACTUAL', 252, 1067, 'images/media/2020/04/g3FGm10710.jpg', NULL, NULL),
(278, 150, 'THUMBNAIL', 35, 150, 'images/media/2020/04/thumbnail1586513583g3FGm10710.jpg', NULL, NULL),
(279, 150, 'MEDIUM', 94, 400, 'images/media/2020/04/medium1586513583g3FGm10710.jpg', NULL, NULL),
(280, 150, 'LARGE', 213, 900, 'images/media/2020/04/large1586513583g3FGm10710.jpg', NULL, NULL),
(281, 151, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Fk9bD10710.jpg', NULL, NULL),
(282, 151, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513584Fk9bD10710.jpg', NULL, NULL),
(283, 152, 'ACTUAL', 1024, 1024, 'images/media/2020/04/lrwYy10110.jpg', NULL, NULL),
(284, 151, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513584Fk9bD10710.jpg', NULL, NULL),
(285, 152, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513584lrwYy10110.jpg', NULL, NULL),
(286, 152, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513584lrwYy10110.jpg', NULL, NULL),
(287, 151, 'LARGE', 900, 900, 'images/media/2020/04/large1586513584Fk9bD10710.jpg', NULL, NULL),
(288, 152, 'LARGE', 900, 900, 'images/media/2020/04/large1586513584lrwYy10110.jpg', NULL, NULL),
(289, 153, 'ACTUAL', 1024, 1024, 'images/media/2020/04/sv0Mc10910.jpg', NULL, NULL),
(290, 154, 'ACTUAL', 1024, 1024, 'images/media/2020/04/7FatN10910.jpg', NULL, NULL),
(291, 153, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513585sv0Mc10910.jpg', NULL, NULL),
(292, 154, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15865135857FatN10910.jpg', NULL, NULL),
(293, 153, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513585sv0Mc10910.jpg', NULL, NULL),
(294, 154, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15865135857FatN10910.jpg', NULL, NULL),
(295, 153, 'LARGE', 900, 900, 'images/media/2020/04/large1586513585sv0Mc10910.jpg', NULL, NULL),
(296, 154, 'LARGE', 900, 900, 'images/media/2020/04/large15865135857FatN10910.jpg', NULL, NULL),
(297, 155, 'ACTUAL', 270, 1067, 'images/media/2020/04/ero7m10510.jpg', NULL, NULL),
(298, 156, 'ACTUAL', 236, 1171, 'images/media/2020/04/vmJp010310.jpg', NULL, NULL),
(299, 155, 'THUMBNAIL', 38, 150, 'images/media/2020/04/thumbnail1586513589ero7m10510.jpg', NULL, NULL),
(300, 156, 'THUMBNAIL', 30, 150, 'images/media/2020/04/thumbnail1586513589vmJp010310.jpg', NULL, NULL),
(301, 155, 'MEDIUM', 101, 400, 'images/media/2020/04/medium1586513589ero7m10510.jpg', NULL, NULL),
(302, 156, 'MEDIUM', 81, 400, 'images/media/2020/04/medium1586513589vmJp010310.jpg', NULL, NULL),
(303, 155, 'LARGE', 228, 900, 'images/media/2020/04/large1586513589ero7m10510.jpg', NULL, NULL),
(304, 156, 'LARGE', 181, 900, 'images/media/2020/04/large1586513589vmJp010310.jpg', NULL, NULL),
(305, 157, 'ACTUAL', 147, 1067, 'images/media/2020/04/IfYVT10910.jpg', NULL, NULL),
(306, 158, 'ACTUAL', 53, 512, 'images/media/2020/04/UMblI10310.jpg', NULL, NULL),
(307, 157, 'THUMBNAIL', 21, 150, 'images/media/2020/04/thumbnail1586513589IfYVT10910.jpg', NULL, NULL),
(308, 158, 'THUMBNAIL', 16, 150, 'images/media/2020/04/thumbnail1586513589UMblI10310.jpg', NULL, NULL),
(309, 158, 'MEDIUM', 41, 400, 'images/media/2020/04/medium1586513589UMblI10310.jpg', NULL, NULL),
(310, 157, 'MEDIUM', 55, 400, 'images/media/2020/04/medium1586513589IfYVT10910.jpg', NULL, NULL),
(311, 157, 'LARGE', 124, 900, 'images/media/2020/04/large1586513589IfYVT10910.jpg', NULL, NULL),
(312, 159, 'ACTUAL', 240, 370, 'images/media/2020/04/OOUnS10610.jpg', NULL, NULL),
(313, 159, 'THUMBNAIL', 97, 150, 'images/media/2020/04/thumbnail1586513591OOUnS10610.jpg', NULL, NULL),
(314, 160, 'ACTUAL', 1024, 1024, 'images/media/2020/04/kKjfe10310.jpg', NULL, NULL),
(315, 161, 'ACTUAL', 421, 1600, 'images/media/2020/04/U85zC10210.jpg', NULL, NULL),
(316, 160, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513604kKjfe10310.jpg', NULL, NULL),
(317, 161, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586513604U85zC10210.jpg', NULL, NULL),
(318, 160, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513604kKjfe10310.jpg', NULL, NULL),
(319, 161, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586513604U85zC10210.jpg', NULL, NULL),
(320, 161, 'LARGE', 237, 900, 'images/media/2020/04/large1586513604U85zC10210.jpg', NULL, NULL),
(321, 160, 'LARGE', 900, 900, 'images/media/2020/04/large1586513604kKjfe10310.jpg', NULL, NULL),
(322, 162, 'ACTUAL', 1024, 1024, 'images/media/2020/04/4ET8o10310.jpg', NULL, NULL),
(323, 162, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15865136094ET8o10310.jpg', NULL, NULL),
(324, 163, 'ACTUAL', 421, 1600, 'images/media/2020/04/p4JvZ10510.jpg', NULL, NULL),
(325, 162, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15865136094ET8o10310.jpg', NULL, NULL),
(326, 163, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586513609p4JvZ10510.jpg', NULL, NULL),
(327, 163, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586513609p4JvZ10510.jpg', NULL, NULL),
(328, 163, 'LARGE', 237, 900, 'images/media/2020/04/large1586513609p4JvZ10510.jpg', NULL, NULL),
(329, 162, 'LARGE', 900, 900, 'images/media/2020/04/large15865136094ET8o10310.jpg', NULL, NULL),
(330, 164, 'ACTUAL', 217, 366, 'images/media/2020/04/VnKU510810.jpg', NULL, NULL),
(331, 164, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586513636VnKU510810.jpg', NULL, NULL),
(332, 165, 'ACTUAL', 1024, 1024, 'images/media/2020/04/l1lSu10910.jpg', NULL, NULL),
(333, 165, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513637l1lSu10910.jpg', NULL, NULL),
(334, 165, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513637l1lSu10910.jpg', NULL, NULL),
(335, 165, 'LARGE', 900, 900, 'images/media/2020/04/large1586513637l1lSu10910.jpg', NULL, NULL),
(336, 166, 'ACTUAL', 1024, 1024, 'images/media/2020/04/E3LBu10410.jpg', NULL, NULL),
(337, 166, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513637E3LBu10410.jpg', NULL, NULL),
(338, 166, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513637E3LBu10410.jpg', NULL, NULL),
(339, 166, 'LARGE', 900, 900, 'images/media/2020/04/large1586513637E3LBu10410.jpg', NULL, NULL),
(340, 167, 'ACTUAL', 1024, 1024, 'images/media/2020/04/W1ySe10110.jpg', NULL, NULL),
(341, 167, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513637W1ySe10110.jpg', NULL, NULL),
(342, 167, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513637W1ySe10110.jpg', NULL, NULL),
(343, 167, 'LARGE', 900, 900, 'images/media/2020/04/large1586513637W1ySe10110.jpg', NULL, NULL),
(344, 168, 'ACTUAL', 1024, 1024, 'images/media/2020/04/lSbaD10210.jpg', NULL, NULL),
(345, 168, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513638lSbaD10210.jpg', NULL, NULL),
(346, 168, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513638lSbaD10210.jpg', NULL, NULL),
(347, 169, 'ACTUAL', 421, 1600, 'images/media/2020/04/1Vnk910810.jpg', NULL, NULL),
(348, 168, 'LARGE', 900, 900, 'images/media/2020/04/large1586513638lSbaD10210.jpg', NULL, NULL),
(349, 169, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail15865136381Vnk910810.jpg', NULL, NULL),
(350, 169, 'MEDIUM', 105, 400, 'images/media/2020/04/medium15865136381Vnk910810.jpg', NULL, NULL),
(351, 169, 'LARGE', 237, 900, 'images/media/2020/04/large15865136381Vnk910810.jpg', NULL, NULL),
(352, 170, 'ACTUAL', 298, 769, 'images/media/2020/04/epfUb10110.jpg', NULL, NULL),
(353, 170, 'THUMBNAIL', 58, 150, 'images/media/2020/04/thumbnail1586513638epfUb10110.jpg', NULL, NULL),
(354, 170, 'MEDIUM', 155, 400, 'images/media/2020/04/medium1586513638epfUb10110.jpg', NULL, NULL),
(355, 171, 'ACTUAL', 1024, 1024, 'images/media/2020/04/xJS0O10910.jpg', NULL, NULL),
(356, 171, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513638xJS0O10910.jpg', NULL, NULL),
(357, 172, 'ACTUAL', 1024, 1024, 'images/media/2020/04/21r2710910.jpg', NULL, NULL),
(358, 171, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513638xJS0O10910.jpg', NULL, NULL),
(359, 172, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail158651363921r2710910.jpg', NULL, NULL),
(360, 172, 'MEDIUM', 400, 400, 'images/media/2020/04/medium158651363921r2710910.jpg', NULL, NULL),
(361, 171, 'LARGE', 900, 900, 'images/media/2020/04/large1586513639xJS0O10910.jpg', NULL, NULL),
(362, 172, 'LARGE', 900, 900, 'images/media/2020/04/large158651363921r2710910.jpg', NULL, NULL),
(363, 173, 'ACTUAL', 1024, 1024, 'images/media/2020/04/kimEA10510.jpg', NULL, NULL),
(364, 173, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513639kimEA10510.jpg', NULL, NULL),
(365, 173, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513639kimEA10510.jpg', NULL, NULL),
(366, 174, 'ACTUAL', 1024, 1024, 'images/media/2020/04/XDgJi10310.jpg', NULL, NULL),
(367, 174, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513639XDgJi10310.jpg', NULL, NULL),
(368, 173, 'LARGE', 900, 900, 'images/media/2020/04/large1586513639kimEA10510.jpg', NULL, NULL),
(369, 174, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513639XDgJi10310.jpg', NULL, NULL),
(370, 174, 'LARGE', 900, 900, 'images/media/2020/04/large1586513640XDgJi10310.jpg', NULL, NULL),
(371, 175, 'ACTUAL', 240, 370, 'images/media/2020/04/1xViN10110.jpg', NULL, NULL),
(372, 175, 'THUMBNAIL', 97, 150, 'images/media/2020/04/thumbnail15865136401xViN10110.jpg', NULL, NULL),
(373, 176, 'ACTUAL', 240, 370, 'images/media/2020/04/O2cfV10510.jpg', NULL, NULL),
(374, 176, 'THUMBNAIL', 97, 150, 'images/media/2020/04/thumbnail1586513640O2cfV10510.jpg', NULL, NULL),
(375, 177, 'ACTUAL', 1024, 1024, 'images/media/2020/04/tnf4Y10310.jpg', NULL, NULL),
(376, 177, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513640tnf4Y10310.jpg', NULL, NULL),
(377, 178, 'ACTUAL', 1024, 1024, 'images/media/2020/04/XJlRk10710.jpg', NULL, NULL),
(378, 177, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513640tnf4Y10310.jpg', NULL, NULL),
(379, 178, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513640XJlRk10710.jpg', NULL, NULL),
(380, 177, 'LARGE', 900, 900, 'images/media/2020/04/large1586513640tnf4Y10310.jpg', NULL, NULL),
(381, 178, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513640XJlRk10710.jpg', NULL, NULL),
(382, 178, 'LARGE', 900, 900, 'images/media/2020/04/large1586513641XJlRk10710.jpg', NULL, NULL),
(383, 179, 'ACTUAL', 1024, 1024, 'images/media/2020/04/OCTXe10610.jpg', NULL, NULL),
(384, 179, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513641OCTXe10610.jpg', NULL, NULL),
(385, 180, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Xi37L10510.jpg', NULL, NULL),
(386, 179, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513641OCTXe10610.jpg', NULL, NULL),
(387, 180, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513641Xi37L10510.jpg', NULL, NULL),
(388, 180, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513641Xi37L10510.jpg', NULL, NULL),
(389, 179, 'LARGE', 900, 900, 'images/media/2020/04/large1586513641OCTXe10610.jpg', NULL, NULL),
(390, 180, 'LARGE', 900, 900, 'images/media/2020/04/large1586513641Xi37L10510.jpg', NULL, NULL),
(391, 181, 'ACTUAL', 217, 366, 'images/media/2020/04/M0vrU10910.jpg', NULL, NULL),
(392, 181, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586513642M0vrU10910.jpg', NULL, NULL),
(393, 182, 'ACTUAL', 1024, 1024, 'images/media/2020/04/FReie10410.jpg', NULL, NULL),
(394, 182, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513642FReie10410.jpg', NULL, NULL),
(395, 182, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513642FReie10410.jpg', NULL, NULL),
(396, 182, 'LARGE', 900, 900, 'images/media/2020/04/large1586513642FReie10410.jpg', NULL, NULL),
(397, 183, 'ACTUAL', 1024, 1024, 'images/media/2020/04/D5Sh910210.jpg', NULL, NULL),
(398, 183, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513642D5Sh910210.jpg', NULL, NULL),
(399, 183, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513642D5Sh910210.jpg', NULL, NULL),
(400, 183, 'LARGE', 900, 900, 'images/media/2020/04/large1586513642D5Sh910210.jpg', NULL, NULL),
(401, 184, 'ACTUAL', 217, 366, 'images/media/2020/04/sACl810310.jpg', NULL, NULL),
(402, 184, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586513670sACl810310.jpg', NULL, NULL),
(403, 185, 'ACTUAL', 1024, 1024, 'images/media/2020/04/i42uK10810.jpg', NULL, NULL),
(404, 185, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513670i42uK10810.jpg', NULL, NULL),
(405, 186, 'ACTUAL', 1024, 1024, 'images/media/2020/04/yQQ9Y10810.jpg', NULL, NULL),
(406, 185, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513670i42uK10810.jpg', NULL, NULL),
(407, 186, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513670yQQ9Y10810.jpg', NULL, NULL),
(408, 186, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513670yQQ9Y10810.jpg', NULL, NULL),
(409, 185, 'LARGE', 900, 900, 'images/media/2020/04/large1586513670i42uK10810.jpg', NULL, NULL),
(410, 186, 'LARGE', 900, 900, 'images/media/2020/04/large1586513671yQQ9Y10810.jpg', NULL, NULL),
(411, 187, 'ACTUAL', 1024, 1024, 'images/media/2020/04/VdMen10210.jpg', NULL, NULL),
(412, 188, 'ACTUAL', 1024, 1024, 'images/media/2020/04/qaqPQ10910.jpg', NULL, NULL),
(413, 187, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513671VdMen10210.jpg', NULL, NULL),
(414, 188, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513671qaqPQ10910.jpg', NULL, NULL),
(415, 187, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513671VdMen10210.jpg', NULL, NULL),
(416, 188, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513671qaqPQ10910.jpg', NULL, NULL),
(417, 187, 'LARGE', 900, 900, 'images/media/2020/04/large1586513671VdMen10210.jpg', NULL, NULL),
(418, 188, 'LARGE', 900, 900, 'images/media/2020/04/large1586513671qaqPQ10910.jpg', NULL, NULL),
(419, 189, 'ACTUAL', 298, 769, 'images/media/2020/04/hT8FT10310.jpg', NULL, NULL),
(420, 189, 'THUMBNAIL', 58, 150, 'images/media/2020/04/thumbnail1586513672hT8FT10310.jpg', NULL, NULL),
(421, 190, 'ACTUAL', 421, 1600, 'images/media/2020/04/PMLsi10910.jpg', NULL, NULL),
(422, 189, 'MEDIUM', 155, 400, 'images/media/2020/04/medium1586513672hT8FT10310.jpg', NULL, NULL),
(423, 190, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586513672PMLsi10910.jpg', NULL, NULL),
(424, 190, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586513672PMLsi10910.jpg', NULL, NULL),
(425, 190, 'LARGE', 237, 900, 'images/media/2020/04/large1586513672PMLsi10910.jpg', NULL, NULL),
(426, 191, 'ACTUAL', 1024, 1024, 'images/media/2020/04/HynSL10710.jpg', NULL, NULL),
(427, 192, 'ACTUAL', 1024, 1024, 'images/media/2020/04/OpwDB10210.jpg', NULL, NULL),
(428, 191, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513672HynSL10710.jpg', NULL, NULL),
(429, 192, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513672OpwDB10210.jpg', NULL, NULL),
(430, 191, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513673HynSL10710.jpg', NULL, NULL),
(431, 192, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513673OpwDB10210.jpg', NULL, NULL),
(432, 191, 'LARGE', 900, 900, 'images/media/2020/04/large1586513673HynSL10710.jpg', NULL, NULL),
(433, 192, 'LARGE', 900, 900, 'images/media/2020/04/large1586513673OpwDB10210.jpg', NULL, NULL),
(434, 193, 'ACTUAL', 1024, 1024, 'images/media/2020/04/4kq1X10810.jpg', NULL, NULL),
(435, 193, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15865136734kq1X10810.jpg', NULL, NULL),
(436, 193, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15865136734kq1X10810.jpg', NULL, NULL),
(437, 194, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Rg3Vz10110.jpg', NULL, NULL),
(438, 193, 'LARGE', 900, 900, 'images/media/2020/04/large15865136734kq1X10810.jpg', NULL, NULL),
(439, 194, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513674Rg3Vz10110.jpg', NULL, NULL),
(440, 194, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513674Rg3Vz10110.jpg', NULL, NULL),
(441, 195, 'ACTUAL', 240, 370, 'images/media/2020/04/LoUfL10510.jpg', NULL, NULL),
(442, 195, 'THUMBNAIL', 97, 150, 'images/media/2020/04/thumbnail1586513674LoUfL10510.jpg', NULL, NULL),
(443, 194, 'LARGE', 900, 900, 'images/media/2020/04/large1586513674Rg3Vz10110.jpg', NULL, NULL),
(444, 196, 'ACTUAL', 284, 250, 'images/media/2020/04/e38pa10610.jpg', NULL, NULL),
(445, 197, 'ACTUAL', 1024, 1024, 'images/media/2020/04/OM5Af10310.jpg', NULL, NULL),
(446, 196, 'THUMBNAIL', 150, 132, 'images/media/2020/04/thumbnail1586513674e38pa10610.jpg', NULL, NULL),
(447, 197, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513674OM5Af10310.jpg', NULL, NULL),
(448, 197, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513674OM5Af10310.jpg', NULL, NULL),
(449, 198, 'ACTUAL', 284, 250, 'images/media/2020/04/UMQOt10210.jpg', NULL, NULL),
(450, 197, 'LARGE', 900, 900, 'images/media/2020/04/large1586513674OM5Af10310.jpg', NULL, NULL),
(451, 198, 'THUMBNAIL', 150, 132, 'images/media/2020/04/thumbnail1586513674UMQOt10210.jpg', NULL, NULL),
(452, 199, 'ACTUAL', 421, 1600, 'images/media/2020/04/H3QKW10510.jpg', NULL, NULL),
(453, 199, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586513675H3QKW10510.jpg', NULL, NULL),
(454, 199, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586513675H3QKW10510.jpg', NULL, NULL),
(455, 200, 'ACTUAL', 1024, 1024, 'images/media/2020/04/NTt8p10310.jpg', NULL, NULL),
(456, 199, 'LARGE', 237, 900, 'images/media/2020/04/large1586513675H3QKW10510.jpg', NULL, NULL),
(457, 200, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513675NTt8p10310.jpg', NULL, NULL),
(458, 200, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513675NTt8p10310.jpg', NULL, NULL),
(459, 200, 'LARGE', 900, 900, 'images/media/2020/04/large1586513675NTt8p10310.jpg', NULL, NULL),
(460, 201, 'ACTUAL', 1024, 1024, 'images/media/2020/04/xbHFv10510.jpg', NULL, NULL),
(461, 201, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513675xbHFv10510.jpg', NULL, NULL),
(462, 201, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513675xbHFv10510.jpg', NULL, NULL),
(463, 202, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Lwn6410310.jpg', NULL, NULL),
(464, 201, 'LARGE', 900, 900, 'images/media/2020/04/large1586513675xbHFv10510.jpg', NULL, NULL),
(465, 202, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513675Lwn6410310.jpg', NULL, NULL),
(466, 202, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513676Lwn6410310.jpg', NULL, NULL),
(467, 202, 'LARGE', 900, 900, 'images/media/2020/04/large1586513676Lwn6410310.jpg', NULL, NULL),
(468, 203, 'ACTUAL', 1024, 1024, 'images/media/2020/04/eF4AF10110.jpg', NULL, NULL),
(469, 203, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513676eF4AF10110.jpg', NULL, NULL),
(470, 203, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513676eF4AF10110.jpg', NULL, NULL),
(471, 203, 'LARGE', 900, 900, 'images/media/2020/04/large1586513676eF4AF10110.jpg', NULL, NULL),
(472, 204, 'ACTUAL', 430, 1599, 'images/media/2020/04/p1T8A10810.jpg', NULL, NULL),
(473, 204, 'THUMBNAIL', 40, 150, 'images/media/2020/04/thumbnail1586513685p1T8A10810.jpg', NULL, NULL),
(474, 204, 'MEDIUM', 108, 400, 'images/media/2020/04/medium1586513685p1T8A10810.jpg', NULL, NULL),
(475, 205, 'ACTUAL', 1024, 1024, 'images/media/2020/04/OyXNK10210.jpg', NULL, NULL),
(476, 204, 'LARGE', 242, 900, 'images/media/2020/04/large1586513685p1T8A10810.jpg', NULL, NULL),
(477, 205, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513685OyXNK10210.jpg', NULL, NULL),
(478, 205, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513686OyXNK10210.jpg', NULL, NULL),
(479, 205, 'LARGE', 900, 900, 'images/media/2020/04/large1586513686OyXNK10210.jpg', NULL, NULL),
(480, 206, 'ACTUAL', 240, 370, 'images/media/2020/04/9V3Ga10610.jpg', NULL, NULL),
(481, 206, 'THUMBNAIL', 97, 150, 'images/media/2020/04/thumbnail15865136869V3Ga10610.jpg', NULL, NULL),
(482, 207, 'ACTUAL', 421, 1600, 'images/media/2020/04/l1k3210410.jpg', NULL, NULL),
(483, 207, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586513686l1k3210410.jpg', NULL, NULL),
(484, 207, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586513686l1k3210410.jpg', NULL, NULL),
(485, 207, 'LARGE', 237, 900, 'images/media/2020/04/large1586513686l1k3210410.jpg', NULL, NULL),
(486, 208, 'ACTUAL', 1024, 1024, 'images/media/2020/04/Lh7Od10510.jpg', NULL, NULL),
(487, 209, 'ACTUAL', 1024, 1024, 'images/media/2020/04/uISSG10510.jpg', NULL, NULL),
(488, 208, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513687Lh7Od10510.jpg', NULL, NULL),
(489, 209, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513687uISSG10510.jpg', NULL, NULL),
(490, 208, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513687Lh7Od10510.jpg', NULL, NULL),
(491, 209, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513687uISSG10510.jpg', NULL, NULL),
(492, 209, 'LARGE', 900, 900, 'images/media/2020/04/large1586513687uISSG10510.jpg', NULL, NULL),
(493, 208, 'LARGE', 900, 900, 'images/media/2020/04/large1586513687Lh7Od10510.jpg', NULL, NULL),
(494, 210, 'ACTUAL', 1024, 1024, 'images/media/2020/04/RCVIt10810.jpg', NULL, NULL),
(495, 211, 'ACTUAL', 1024, 1024, 'images/media/2020/04/VpOFJ10210.jpg', NULL, NULL),
(496, 210, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513687RCVIt10810.jpg', NULL, NULL),
(497, 211, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513687VpOFJ10210.jpg', NULL, NULL),
(498, 210, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513688RCVIt10810.jpg', NULL, NULL),
(499, 211, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513688VpOFJ10210.jpg', NULL, NULL),
(500, 210, 'LARGE', 900, 900, 'images/media/2020/04/large1586513688RCVIt10810.jpg', NULL, NULL),
(501, 211, 'LARGE', 900, 900, 'images/media/2020/04/large1586513688VpOFJ10210.jpg', NULL, NULL),
(502, 212, 'ACTUAL', 217, 366, 'images/media/2020/04/UiBw810910.jpg', NULL, NULL),
(503, 212, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586513688UiBw810910.jpg', NULL, NULL),
(504, 213, 'ACTUAL', 1024, 1024, 'images/media/2020/04/FpZ8M10810.jpg', NULL, NULL),
(505, 213, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513688FpZ8M10810.jpg', NULL, NULL),
(506, 213, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513688FpZ8M10810.jpg', NULL, NULL),
(507, 214, 'ACTUAL', 1024, 1024, 'images/media/2020/04/NCJ6p10910.jpg', NULL, NULL),
(508, 213, 'LARGE', 900, 900, 'images/media/2020/04/large1586513689FpZ8M10810.jpg', NULL, NULL),
(509, 214, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586513689NCJ6p10910.jpg', NULL, NULL),
(510, 214, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586513689NCJ6p10910.jpg', NULL, NULL),
(511, 214, 'LARGE', 900, 900, 'images/media/2020/04/large1586513689NCJ6p10910.jpg', NULL, NULL),
(512, 215, 'ACTUAL', 421, 1600, 'images/media/2020/04/zK8aW10910.png', NULL, NULL),
(513, 215, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515430zK8aW10910.png', NULL, NULL),
(514, 215, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515431zK8aW10910.png', NULL, NULL),
(515, 215, 'LARGE', 237, 900, 'images/media/2020/04/large1586515431zK8aW10910.png', NULL, NULL),
(516, 216, 'ACTUAL', 421, 1600, 'images/media/2020/04/quBGX10410.png', NULL, NULL),
(517, 216, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515434quBGX10410.png', NULL, NULL),
(518, 216, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515434quBGX10410.png', NULL, NULL),
(519, 216, 'LARGE', 237, 900, 'images/media/2020/04/large1586515434quBGX10410.png', NULL, NULL),
(520, 217, 'ACTUAL', 570, 451, 'images/media/2020/04/RhV8R10210.png', NULL, NULL),
(521, 217, 'THUMBNAIL', 150, 119, 'images/media/2020/04/thumbnail1586515549RhV8R10210.png', NULL, NULL),
(522, 218, 'ACTUAL', 879, 1125, 'images/media/2020/04/tz8Oc10110.png', NULL, NULL),
(523, 217, 'MEDIUM', 400, 316, 'images/media/2020/04/medium1586515549RhV8R10210.png', NULL, NULL),
(524, 218, 'THUMBNAIL', 117, 150, 'images/media/2020/04/thumbnail1586515549tz8Oc10110.png', NULL, NULL),
(525, 218, 'MEDIUM', 313, 400, 'images/media/2020/04/medium1586515550tz8Oc10110.png', NULL, NULL),
(526, 218, 'LARGE', 703, 900, 'images/media/2020/04/large1586515550tz8Oc10110.png', NULL, NULL),
(527, 219, 'ACTUAL', 421, 1600, 'images/media/2020/04/8upk910710.png', NULL, NULL),
(528, 219, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail15865155518upk910710.png', NULL, NULL),
(529, 220, 'ACTUAL', 879, 1958, 'images/media/2020/04/Nhi7I10310.png', NULL, NULL),
(530, 219, 'MEDIUM', 105, 400, 'images/media/2020/04/medium15865155518upk910710.png', NULL, NULL),
(531, 220, 'THUMBNAIL', 67, 150, 'images/media/2020/04/thumbnail1586515551Nhi7I10310.png', NULL, NULL),
(532, 219, 'LARGE', 237, 900, 'images/media/2020/04/large15865155518upk910710.png', NULL, NULL),
(533, 220, 'MEDIUM', 180, 400, 'images/media/2020/04/medium1586515551Nhi7I10310.png', NULL, NULL),
(534, 221, 'ACTUAL', 421, 1600, 'images/media/2020/04/QjQVN10110.png', NULL, NULL),
(535, 220, 'LARGE', 404, 900, 'images/media/2020/04/large1586515551Nhi7I10310.png', NULL, NULL),
(536, 221, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515551QjQVN10110.png', NULL, NULL),
(537, 221, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515551QjQVN10110.png', NULL, NULL),
(538, 221, 'LARGE', 237, 900, 'images/media/2020/04/large1586515551QjQVN10110.png', NULL, NULL),
(539, 222, 'ACTUAL', 421, 1600, 'images/media/2020/04/tm6uG10510.png', NULL, NULL),
(540, 222, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515552tm6uG10510.png', NULL, NULL),
(541, 222, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515552tm6uG10510.png', NULL, NULL),
(542, 223, 'ACTUAL', 421, 1600, 'images/media/2020/04/RT6se10110.png', NULL, NULL),
(543, 223, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515552RT6se10110.png', NULL, NULL),
(544, 222, 'LARGE', 237, 900, 'images/media/2020/04/large1586515552tm6uG10510.png', NULL, NULL),
(545, 223, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515552RT6se10110.png', NULL, NULL),
(546, 223, 'LARGE', 237, 900, 'images/media/2020/04/large1586515552RT6se10110.png', NULL, NULL),
(547, 224, 'ACTUAL', 421, 1600, 'images/media/2020/04/jWyQI10210.png', NULL, NULL),
(548, 224, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515553jWyQI10210.png', NULL, NULL),
(549, 224, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515553jWyQI10210.png', NULL, NULL),
(550, 224, 'LARGE', 237, 900, 'images/media/2020/04/large1586515553jWyQI10210.png', NULL, NULL),
(551, 225, 'ACTUAL', 421, 1600, 'images/media/2020/04/WO03810310.png', NULL, NULL),
(552, 225, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515553WO03810310.png', NULL, NULL),
(553, 225, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515553WO03810310.png', NULL, NULL),
(554, 226, 'ACTUAL', 421, 1600, 'images/media/2020/04/v0Cij10910.png', NULL, NULL),
(555, 225, 'LARGE', 237, 900, 'images/media/2020/04/large1586515553WO03810310.png', NULL, NULL),
(556, 226, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515553v0Cij10910.png', NULL, NULL),
(557, 226, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515553v0Cij10910.png', NULL, NULL),
(558, 226, 'LARGE', 237, 900, 'images/media/2020/04/large1586515553v0Cij10910.png', NULL, NULL),
(559, 227, 'ACTUAL', 421, 1600, 'images/media/2020/04/etchc10610.png', NULL, NULL),
(560, 227, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515554etchc10610.png', NULL, NULL),
(561, 227, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515554etchc10610.png', NULL, NULL),
(562, 228, 'ACTUAL', 570, 451, 'images/media/2020/04/7urib10210.png', NULL, NULL),
(563, 228, 'THUMBNAIL', 150, 119, 'images/media/2020/04/thumbnail15865155547urib10210.png', NULL, NULL),
(564, 228, 'MEDIUM', 400, 316, 'images/media/2020/04/medium15865155547urib10210.png', NULL, NULL),
(565, 227, 'LARGE', 237, 900, 'images/media/2020/04/large1586515554etchc10610.png', NULL, NULL),
(566, 229, 'ACTUAL', 421, 1600, 'images/media/2020/04/nb0XP10110.png', NULL, NULL),
(567, 229, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515554nb0XP10110.png', NULL, NULL),
(568, 229, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515554nb0XP10110.png', NULL, NULL),
(569, 229, 'LARGE', 237, 900, 'images/media/2020/04/large1586515554nb0XP10110.png', NULL, NULL),
(570, 230, 'ACTUAL', 421, 1600, 'images/media/2020/04/lHEah10410.png', NULL, NULL),
(571, 230, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515555lHEah10410.png', NULL, NULL),
(572, 230, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515555lHEah10410.png', NULL, NULL),
(573, 230, 'LARGE', 237, 900, 'images/media/2020/04/large1586515555lHEah10410.png', NULL, NULL),
(574, 231, 'ACTUAL', 879, 1125, 'images/media/2020/04/ZGNMz10410.png', NULL, NULL),
(575, 231, 'THUMBNAIL', 117, 150, 'images/media/2020/04/thumbnail1586515555ZGNMz10410.png', NULL, NULL),
(576, 231, 'MEDIUM', 313, 400, 'images/media/2020/04/medium1586515555ZGNMz10410.png', NULL, NULL),
(577, 232, 'ACTUAL', 421, 1600, 'images/media/2020/04/CgHVT10610.png', NULL, NULL),
(578, 232, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515555CgHVT10610.png', NULL, NULL),
(579, 231, 'LARGE', 703, 900, 'images/media/2020/04/large1586515555ZGNMz10410.png', NULL, NULL),
(580, 232, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515555CgHVT10610.png', NULL, NULL),
(581, 233, 'ACTUAL', 421, 1600, 'images/media/2020/04/Tg8q010110.png', NULL, NULL),
(582, 233, 'THUMBNAIL', 39, 150, 'images/media/2020/04/thumbnail1586515556Tg8q010110.png', NULL, NULL),
(583, 233, 'MEDIUM', 105, 400, 'images/media/2020/04/medium1586515556Tg8q010110.png', NULL, NULL),
(584, 234, 'ACTUAL', 120, 120, 'images/media/2020/04/iGSi410110.png', NULL, NULL),
(585, 233, 'LARGE', 237, 900, 'images/media/2020/04/large1586515556Tg8q010110.png', NULL, NULL),
(586, 235, 'ACTUAL', 885, 1673, 'images/media/2020/04/oOXMn10910.jpg', NULL, NULL),
(587, 235, 'THUMBNAIL', 79, 150, 'images/media/2020/04/thumbnail1586515953oOXMn10910.jpg', NULL, NULL),
(588, 235, 'MEDIUM', 212, 400, 'images/media/2020/04/medium1586515953oOXMn10910.jpg', NULL, NULL),
(589, 235, 'LARGE', 476, 900, 'images/media/2020/04/large1586515953oOXMn10910.jpg', NULL, NULL),
(590, 236, 'ACTUAL', 217, 366, 'images/media/2020/04/i9BGB11212.jpg', NULL, NULL),
(591, 236, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586608541i9BGB11212.jpg', NULL, NULL),
(592, 237, 'ACTUAL', 217, 366, 'images/media/2020/04/k2ybT11312.jpg', NULL, NULL),
(593, 237, 'THUMBNAIL', 89, 150, 'images/media/2020/04/thumbnail1586608552k2ybT11312.jpg', NULL, NULL),
(594, 238, 'ACTUAL', 548, 370, 'images/media/2020/04/3aq3c11112.jpg', NULL, NULL),
(595, 238, 'THUMBNAIL', 150, 101, 'images/media/2020/04/thumbnail15866085633aq3c11112.jpg', NULL, NULL),
(596, 238, 'MEDIUM', 400, 270, 'images/media/2020/04/medium15866085633aq3c11112.jpg', NULL, NULL),
(597, 239, 'ACTUAL', 298, 769, 'images/media/2020/04/FdOXW11412.jpg', NULL, NULL),
(598, 239, 'THUMBNAIL', 58, 150, 'images/media/2020/04/thumbnail1586608586FdOXW11412.jpg', NULL, NULL),
(599, 239, 'MEDIUM', 155, 400, 'images/media/2020/04/medium1586608586FdOXW11412.jpg', NULL, NULL),
(600, 240, 'ACTUAL', 1024, 1024, 'images/media/2020/04/8vOM311308.jpg', NULL, NULL),
(601, 241, 'ACTUAL', 1024, 1024, 'images/media/2020/04/FPCs511608.jpg', NULL, NULL),
(602, 240, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail15866352318vOM311308.jpg', NULL, NULL),
(603, 241, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586635231FPCs511608.jpg', NULL, NULL),
(604, 240, 'MEDIUM', 400, 400, 'images/media/2020/04/medium15866352318vOM311308.jpg', NULL, NULL),
(605, 241, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586635231FPCs511608.jpg', NULL, NULL),
(606, 240, 'LARGE', 900, 900, 'images/media/2020/04/large15866352318vOM311308.jpg', NULL, NULL),
(607, 241, 'LARGE', 900, 900, 'images/media/2020/04/large1586635231FPCs511608.jpg', NULL, NULL),
(608, 242, 'ACTUAL', 1024, 1024, 'images/media/2020/04/wjwEa11208.jpg', NULL, NULL),
(609, 242, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586635231wjwEa11208.jpg', NULL, NULL),
(610, 242, 'MEDIUM', 400, 400, 'images/media/2020/04/medium1586635232wjwEa11208.jpg', NULL, NULL),
(611, 242, 'LARGE', 900, 900, 'images/media/2020/04/large1586635232wjwEa11208.jpg', NULL, NULL),
(612, 243, 'ACTUAL', 159, 159, 'images/media/2020/04/fjQqj11908.png', NULL, NULL),
(613, 243, 'THUMBNAIL', 150, 150, 'images/media/2020/04/thumbnail1586638343fjQqj11908.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `inventory_ref_id` int(11) NOT NULL,
  `admin_id` int(11) NOT NULL,
  `added_date` int(11) NOT NULL,
  `reference_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stock` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `purchase_price` decimal(10,2) NOT NULL,
  `stock_type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`inventory_ref_id`, `admin_id`, `added_date`, `reference_code`, `stock`, `products_id`, `purchase_price`, `stock_type`, `created_at`, `updated_at`) VALUES
(1, 1, 0, '123', 100, 1, '500.00', 'in', '2020-04-11 08:04:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `inventory_detail`
--

CREATE TABLE `inventory_detail` (
  `inventory_ref_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `labels`
--

CREATE TABLE `labels` (
  `label_id` int(11) NOT NULL,
  `label_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `labels`
--

INSERT INTO `labels` (`label_id`, `label_name`) VALUES
(1, 'I\'ve forgotten my password?'),
(2, 'Creating an account means you’re okay with shopify\'s Terms of Service, Privacy Policy'),
(872, 'Login with'),
(873, 'or'),
(874, 'Email'),
(875, 'Password'),
(876, 'Register'),
(877, 'Forgot Password'),
(878, 'Send'),
(879, 'About Us'),
(880, 'Categories'),
(881, 'Contact Us'),
(882, 'Name'),
(883, 'Your Messsage'),
(884, 'Please connect to the internet'),
(885, 'Recently Viewed'),
(886, 'Products are available.'),
(887, 'Top Seller'),
(888, 'Special Deals'),
(889, 'Most Liked'),
(890, 'All Categories'),
(891, 'Deals'),
(892, 'REMOVE'),
(893, 'Intro'),
(894, 'Skip Intro'),
(895, 'Got It!'),
(896, 'Order Detail'),
(897, 'Price Detail'),
(898, 'Total'),
(899, 'Sub Total'),
(900, 'Shipping'),
(901, 'Product Details'),
(902, 'New'),
(903, 'Out of Stock'),
(904, 'In Stock'),
(905, 'Add to Cart'),
(906, 'ADD TO CART'),
(907, 'Product Description'),
(908, 'Techincal details'),
(909, 'OFF'),
(910, 'No Products Found'),
(911, 'Reset Filters'),
(912, 'Search'),
(913, 'Main Categories'),
(914, 'Sub Categories'),
(915, 'Shipping method'),
(916, 'Thank You'),
(917, 'Thank you for shopping with us.'),
(918, 'My Orders'),
(919, 'Continue Shopping'),
(920, 'Favourite'),
(921, 'Your wish List is empty'),
(922, 'Continue Adding'),
(923, 'Explore'),
(924, 'Word Press Post Detail'),
(925, 'Go Back'),
(926, 'Top Sellers'),
(927, 'News'),
(928, 'Enter keyword'),
(929, 'Settings'),
(930, 'Shop'),
(931, 'Reset'),
(932, 'Select Language'),
(933, 'OUT OF STOCK'),
(934, 'Newest'),
(935, 'Refund Policy'),
(936, 'Privacy Policy'),
(937, 'Term and Services'),
(938, 'Skip'),
(939, 'Top Dishes'),
(940, 'Recipe of Day'),
(941, 'Food Categories'),
(942, 'Coupon Code'),
(943, 'Coupon Amount'),
(944, 'coupon code'),
(945, 'Coupon'),
(946, 'Note to the buyer'),
(947, 'Explore More'),
(948, 'All'),
(949, 'A - Z'),
(950, 'Z - A'),
(951, 'Price : high - low'),
(952, 'Price : low - high'),
(953, 'Special Products'),
(954, 'Sort Products'),
(955, 'Cancel'),
(956, 'most liked'),
(957, 'special'),
(958, 'top seller'),
(959, 'newest'),
(960, 'Likes'),
(961, 'My Account'),
(962, 'Mobile'),
(963, 'Date of Birth'),
(964, 'Update'),
(965, 'Current Password'),
(966, 'New Password'),
(967, 'Change Password'),
(968, 'Customer Orders'),
(969, 'Order Status'),
(970, 'Orders ID'),
(971, 'Product Price'),
(972, 'No. of Products'),
(973, 'Date'),
(974, 'Customer Address'),
(975, 'Please add your new shipping address for the futher processing of the your order'),
(976, 'Add new Address'),
(977, 'Create an Account'),
(978, 'First Name'),
(979, 'Last Name'),
(980, 'Already Memeber?'),
(981, 'Billing Info'),
(982, 'Address'),
(983, 'Phone'),
(984, 'Same as Shipping Address'),
(985, 'Next'),
(986, 'Order'),
(987, 'Billing Address'),
(988, 'Shipping Method'),
(989, 'Products'),
(990, 'SubTotal'),
(991, 'Products Price'),
(992, 'Tax'),
(993, 'Shipping Cost'),
(994, 'Order Notes'),
(995, 'Payment'),
(996, 'Card Number'),
(997, 'Expiration Date'),
(998, 'Expiration'),
(999, 'Error: invalid card number!'),
(1000, 'Error: invalid expiry date!'),
(1001, 'Error: invalid cvc number!'),
(1002, 'Continue'),
(1003, 'My Cart'),
(1004, 'Your cart is empty'),
(1005, 'continue shopping'),
(1006, 'Price'),
(1007, 'Quantity'),
(1008, 'by'),
(1009, 'View'),
(1010, 'Remove'),
(1011, 'Proceed'),
(1012, 'Shipping Address'),
(1013, 'Country'),
(1014, 'other'),
(1015, 'Zone'),
(1016, 'City'),
(1017, 'Post code'),
(1018, 'State'),
(1019, 'Update Address'),
(1020, 'Save Address'),
(1021, 'Login & Register'),
(1022, 'Please login or create an account for free'),
(1023, 'Log Out'),
(1024, 'My Wish List'),
(1025, 'Filters'),
(1026, 'Price Range'),
(1027, 'Close'),
(1028, 'Apply'),
(1029, 'Clear'),
(1030, 'Menu'),
(1031, 'Home'),
(1033, 'Creating an account means you’re okay with our'),
(1034, 'Login'),
(1035, 'Turn on/off Local Notifications'),
(1036, 'Turn on/off Notifications'),
(1037, 'Change Language'),
(1038, 'Official Website'),
(1039, 'Rate Us'),
(1040, 'Share'),
(1041, 'Edit Profile'),
(1042, 'A percentage discount for the entire cart'),
(1043, 'A fixed total discount for the entire cart'),
(1044, 'A fixed total discount for selected products only'),
(1045, 'A percentage discount for selected products only'),
(1047, 'Network Connected Reloading Data'),
(1048, 'Sort by'),
(1049, 'Flash Sale'),
(1050, 'ok'),
(1051, 'Number'),
(1052, 'Expire Month'),
(1053, 'Expire Year'),
(1054, 'Payment Method'),
(1055, 'Status'),
(1056, 'And'),
(1057, 'cccc'),
(1058, 'All Products'),
(1059, 'Coupon Codes List'),
(1060, 'Custom Orders'),
(1061, 'DETAILS'),
(1062, 'Deals Products'),
(1063, 'Discount ends in'),
(1064, 'Featured Products'),
(1065, 'Most Liked Products'),
(1066, 'Newest Products'),
(1067, 'On Sale Products'),
(1068, 'Posts'),
(1069, 'Safe Payment'),
(1070, 'Secure Online Paymen'),
(1071, 'Select Currency'),
(1072, 'Terms and Services'),
(1073, 'Top Seller Products'),
(1074, 'Wish List'),
(1075, 'Product Quantity is Limited!'),
(1076, 'Error server not reponding'),
(1077, 'Please Enter Your New Password!'),
(1078, 'Please Enter Your Current Password!'),
(1079, 'Current Password is Wrong!'),
(1080, 'Product Not Available With these Attributes!'),
(1081, 'Please enter something'),
(1082, 'Disconnected'),
(1083, 'Connected'),
(1084, 'Error logging into Facebook'),
(1085, 'Error Check Login Status Facebook'),
(1086, 'Please enter coupon code!'),
(1087, 'Error or render dialog closed without being successful'),
(1088, 'Error in configuration'),
(1089, 'Error in initialization, maybe PayPal isnt supported or something else'),
(1090, 'Sorry Coupon is Expired'),
(1091, 'Sorry your Cart total is low than coupon min limit!'),
(1092, 'Sorry your Cart total is Higher than coupon Max limit!'),
(1093, 'Sorry, this coupon is not valid for this email address!'),
(1094, 'Sorry, this coupon is not valid for sale items.'),
(1095, 'Coupon code already applied!'),
(1096, 'Sorry Individual Use Coupon is already applied any other coupon cannot be applied with it !'),
(1097, 'Coupon usage limit has been reached.'),
(1098, 'Account');

-- --------------------------------------------------------

--
-- Table structure for table `label_value`
--

CREATE TABLE `label_value` (
  `label_value_id` int(11) NOT NULL,
  `label_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `label_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `label_value`
--

INSERT INTO `label_value` (`label_value_id`, `label_value`, `language_id`, `label_id`) VALUES
(1297, 'Home', 1, 1031),
(1298, 'Menu', 1, 1030),
(1299, 'Clear', 1, 1029),
(1300, 'Apply', 1, 1028),
(1301, 'Close', 1, 1027),
(1302, 'Price Range', 1, 1026),
(1303, 'Filters', 1, 1025),
(1304, 'My Wish List', 1, 1024),
(1305, 'Log Out', 1, 1023),
(1306, 'Please login or create an account for free', 1, 1022),
(1307, 'login & Register', 1, 1021),
(1308, 'Save Address', 1, 1020),
(1309, 'State', 1, 1018),
(1310, 'Update Address', 1, 1019),
(1311, 'Post code', 1, 1017),
(1312, 'City', 1, 1016),
(1313, 'Zone', 1, 1015),
(1314, 'other', 1, 1014),
(1315, 'Country', 1, 1013),
(1316, 'Shipping Address', 1, 1012),
(1317, 'Proceed', 1, 1011),
(1318, 'Remove', 1, 1010),
(1319, 'by', 1, 1008),
(1320, 'View', 1, 1009),
(1321, 'Quantity', 1, 1007),
(1322, 'Price', 1, 1006),
(1323, 'continue shopping', 1, 1005),
(1324, 'Your cart is empty', 1, 1004),
(1325, 'My Cart', 1, 1003),
(1326, 'Continue', 1, 1002),
(1327, 'Error: invalid cvc number!', 1, 1001),
(1328, 'Error: invalid expiry date!', 1, 1000),
(1329, 'Error: invalid card number!', 1, 999),
(1330, 'Expiration', 1, 998),
(1331, 'Expiration Date', 1, 997),
(1332, 'Card Number', 1, 996),
(1333, 'Payment', 1, 995),
(1334, 'Order Notes', 1, 994),
(1335, 'Shipping Cost', 1, 993),
(1336, 'Tax', 1, 992),
(1337, 'Products Price', 1, 991),
(1338, 'SubTotal', 1, 990),
(1339, 'Products', 1, 989),
(1340, 'Shipping Method', 1, 988),
(1341, 'Billing Address', 1, 987),
(1342, 'Order', 1, 986),
(1343, 'Next', 1, 985),
(1344, 'Same as Shipping Address', 1, 984),
(1345, 'Billing Info', 1, 981),
(1346, 'Address', 1, 982),
(1347, 'Phone', 1, 983),
(1348, 'Already Memeber?', 1, 980),
(1349, 'Last Name', 1, 979),
(1350, 'First Name', 1, 978),
(1351, 'Create an Account', 1, 977),
(1352, 'Add new Address', 1, 976),
(1353, 'Please add your new shipping address for the futher processing of the your order', 1, 975),
(1354, 'Order Status', 1, 969),
(1355, 'Orders ID', 1, 970),
(1356, 'Product Price', 1, 971),
(1357, 'No. of Products', 1, 972),
(1358, 'Date', 1, 973),
(1359, 'Customer Address', 1, 974),
(1360, 'Customer Orders', 1, 968),
(1361, 'Change Password', 1, 967),
(1362, 'New Password', 1, 966),
(1363, 'Current Password', 1, 965),
(1364, 'Update', 1, 964),
(1365, 'Date of Birth', 1, 963),
(1366, 'Mobile', 1, 962),
(1367, 'My Account', 1, 961),
(1368, 'Likes', 1, 960),
(1369, 'Newest', 1, 959),
(1370, 'Top Seller', 1, 958),
(1371, 'Special', 1, 957),
(1372, 'Most Liked', 1, 956),
(1373, 'Cancel', 1, 955),
(1374, 'Sort Products', 1, 954),
(1375, 'Special Products', 1, 953),
(1376, 'Price : low - high', 1, 952),
(1377, 'Price : high - low', 1, 951),
(1378, 'Z - A', 1, 950),
(1379, 'A - Z', 1, 949),
(1380, 'All', 1, 948),
(1381, 'Explore More', 1, 947),
(1382, 'Note to the buyer', 1, 946),
(1383, 'Coupon', 1, 945),
(1384, 'coupon code', 1, 944),
(1385, 'Coupon Amount', 1, 943),
(1386, 'Coupon Code', 1, 942),
(1387, 'Food Categories', 1, 941),
(1388, 'Recipe of Day', 1, 940),
(1389, 'Top Dishes', 1, 939),
(1390, 'Skip', 1, 938),
(1391, 'Term and Services', 1, 937),
(1392, 'Privacy Policy', 1, 936),
(1393, 'Refund Policy', 1, 935),
(1394, 'Newest', 1, 934),
(1395, 'OUT OF STOCK', 1, 933),
(1396, 'Select Language', 1, 932),
(1397, 'Reset', 1, 931),
(1398, 'Shop', 1, 930),
(1399, 'Settings', 1, 929),
(1400, 'Enter keyword', 1, 928),
(1401, 'News', 1, 927),
(1402, 'Top Sellers', 1, 926),
(1403, 'Go Back', 1, 925),
(1404, 'Word Press Post Detail', 1, 924),
(1405, 'Explore', 1, 923),
(1406, 'Continue Adding', 1, 922),
(1407, 'Your wish List is empty', 1, 921),
(1408, 'Favourite', 1, 920),
(1409, 'Continue Shopping', 1, 919),
(1410, 'My Orders', 1, 918),
(1411, 'Thank you for shopping with us.', 1, 917),
(1412, 'Thank You', 1, 916),
(1413, 'Shipping method', 1, 915),
(1414, 'Sub Categories', 1, 914),
(1415, 'Main Categories', 1, 913),
(1416, 'Search', 1, 912),
(1417, 'Reset Filters', 1, 911),
(1418, 'No Products Found', 1, 910),
(1419, 'OFF', 1, 909),
(1420, 'Techincal details', 1, 908),
(1421, 'Product Description', 1, 907),
(1422, 'ADD TO CART', 1, 906),
(1423, 'Add to Cart', 1, 905),
(1424, 'In Stock', 1, 904),
(1425, 'Out of Stock', 1, 903),
(1426, 'New', 1, 902),
(1427, 'Product Details', 1, 901),
(1428, 'Shipping', 1, 900),
(1429, 'Sub Total', 1, 899),
(1430, 'Total', 1, 898),
(1431, 'Price Detail', 1, 897),
(1432, 'Order Detail', 1, 896),
(1433, 'Got It!', 1, 895),
(1434, 'Skip Intro', 1, 894),
(1435, 'Intro', 1, 893),
(1436, 'REMOVE', 1, 892),
(1437, 'Deals', 1, 891),
(1438, 'All Categories', 1, 890),
(1439, 'Most Liked', 1, 889),
(1440, 'Special Deals', 1, 888),
(1441, 'Top Seller', 1, 887),
(1442, 'Products are available.', 1, 886),
(1443, 'Recently Viewed', 1, 885),
(1444, 'Please connect to the internet', 1, 884),
(1445, 'Contact Us', 1, 881),
(1446, 'Name', 1, 882),
(1447, 'Your Message', 1, 883),
(1448, 'Categories', 1, 880),
(1449, 'About Us', 1, 879),
(1450, 'Send', 1, 878),
(1451, 'Forgot Password', 1, 877),
(1452, 'Register', 1, 876),
(1453, 'Password', 1, 875),
(1454, 'Email', 1, 874),
(1455, 'or', 1, 873),
(1456, 'Login with', 1, 872),
(1457, 'Creating an account means you\'re okay with shopify\'s Terms of Service, Privacy Policy', 1, 2),
(1458, 'I\'ve forgotten my password?', 1, 1),
(1459, NULL, 1, NULL),
(1462, 'Creating an account means you’re okay with our', 1, 1033),
(1465, 'Login', 1, 1034),
(1468, 'Turn on/off Local Notifications', 1, 1035),
(1471, 'Turn on/off Notifications', 1, 1036),
(1474, 'Change Language', 1, 1037),
(1477, 'Official Website', 1, 1038),
(1480, 'Rate Us', 1, 1039),
(1483, 'Share', 1, 1040),
(1486, 'Edit Profile', 1, 1041),
(1489, 'A percentage discount for the entire cart', 1, 1042),
(1492, 'A fixed total discount for the entire cart', 1, 1043),
(1495, 'A fixed total discount for selected products only', 1, 1044),
(1498, 'A percentage discount for selected products only', 1, 1045),
(1501, 'Network Connected Reloading Data', 1, 1047),
(1503, 'Sort by', 1, 1048),
(1505, 'Flash Sale', 1, 1049),
(1507, 'ok', 1, 1050),
(1509, 'Number', 1, 1051),
(1511, 'Expire Month', 1, 1052),
(1513, 'Expire Year', 1, 1053),
(1515, 'Payment Method', 1, 1054),
(1517, 'Status', 1, 1055),
(1519, 'And', 1, 1056),
(1520, NULL, 2, NULL),
(1521, NULL, 1, 1072),
(1522, NULL, 2, 1072),
(1523, NULL, 1, 1073),
(1524, NULL, 2, 1073),
(1525, NULL, 1, 1074),
(1526, NULL, 2, 1074),
(1527, NULL, 1, 1075),
(1528, NULL, 2, 1075),
(1529, NULL, 1, 1076),
(1530, NULL, 2, 1076),
(1531, NULL, 1, 1077),
(1532, NULL, 2, 1077),
(1533, NULL, 1, 1078),
(1534, NULL, 2, 1078),
(1535, NULL, 1, 1079),
(1536, NULL, 2, 1079),
(1537, NULL, 1, 1080),
(1538, NULL, 2, 1080),
(1539, NULL, 1, 1081),
(1540, NULL, 2, 1081),
(1541, NULL, 1, 1082),
(1542, NULL, 2, 1082),
(1543, NULL, 1, 1083),
(1544, NULL, 2, 1083),
(1545, NULL, 1, 1084),
(1546, NULL, 2, 1084),
(1547, NULL, 1, 1085),
(1548, NULL, 2, 1085),
(1549, NULL, 1, 1086),
(1550, NULL, 2, 1086),
(1551, NULL, 1, 1087),
(1552, NULL, 2, 1087),
(1553, NULL, 1, 1088),
(1554, NULL, 2, 1088),
(1555, NULL, 1, 1089),
(1556, NULL, 2, 1089),
(1557, NULL, 1, 1090),
(1558, NULL, 2, 1090),
(1559, NULL, 1, 1091),
(1560, NULL, 2, 1091),
(1561, NULL, 1, 1092),
(1562, NULL, 2, 1092),
(1563, NULL, 1, 1093),
(1564, NULL, 2, 1093),
(1565, NULL, 1, 1094),
(1566, NULL, 2, 1094),
(1567, NULL, 1, 1095),
(1568, NULL, 2, 1095),
(1569, NULL, 1, 1096),
(1570, NULL, 2, 1096),
(1571, NULL, 1, 1097),
(1572, NULL, 2, 1097),
(1573, 'Account', 1, 1098),
(1574, NULL, 2, 1098),
(1575, NULL, 2, 1020),
(1576, NULL, 2, 1021),
(1577, NULL, 2, 1022),
(1578, NULL, 2, 1023),
(1579, NULL, 2, 1024),
(1580, NULL, 2, 1025),
(1581, NULL, 2, 1026),
(1582, NULL, 2, 1027),
(1583, NULL, 2, 1028),
(1584, NULL, 2, 1029),
(1585, NULL, 2, 1030),
(1586, NULL, 2, 1031),
(1587, NULL, 2, 1033),
(1588, NULL, 2, 1034),
(1589, NULL, 2, 1035),
(1590, NULL, 2, 1036),
(1591, NULL, 2, 1037),
(1592, NULL, 2, 1038),
(1593, NULL, 2, 1039),
(1594, NULL, 2, 1040),
(1595, NULL, 2, 1041),
(1596, NULL, 2, 1042),
(1597, NULL, 2, 1043),
(1598, NULL, 2, 1044),
(1599, NULL, 2, 1045),
(1600, NULL, 2, 1047),
(1601, NULL, 2, 1048),
(1602, NULL, 2, 1049),
(1603, NULL, 2, 1050),
(1604, NULL, 2, 1051),
(1605, NULL, 2, 1052),
(1606, NULL, 2, 1053),
(1607, NULL, 2, 1054),
(1608, NULL, 2, 1055),
(1609, NULL, 2, 1056),
(1610, NULL, 1, 1057),
(1611, NULL, 2, 1057),
(1612, 'All Products', 1, 1058),
(1613, NULL, 2, 1058),
(1614, 'Coupon Codes List', 1, 1059),
(1615, NULL, 2, 1059),
(1616, 'Custom Orders', 1, 1060),
(1617, NULL, 2, 1060),
(1618, 'DETAILS', 1, 1061),
(1619, NULL, 2, 1061),
(1620, 'Deals Products', 1, 1062),
(1621, NULL, 2, 1062),
(1622, 'Discount ends in', 1, 1063),
(1623, NULL, 2, 1063),
(1624, 'Featured Products', 1, 1064),
(1625, NULL, 2, 1064),
(1626, 'Most Liked Products', 1, 1065),
(1627, NULL, 2, 1065),
(1628, 'Newest Products', 1, 1066),
(1629, NULL, 2, 1066),
(1630, 'On Sale Products', 1, 1067),
(1631, NULL, 2, 1067),
(1632, 'Posts', 1, 1068),
(1633, NULL, 2, 1068),
(1634, 'Safe Payment', 1, 1069),
(1635, NULL, 2, 1069),
(1636, 'Secure Online Paymen', 1, 1070),
(1637, NULL, 2, 1070),
(1638, 'Select Currency', 1, 1071),
(1639, NULL, 2, 1071);

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `languages_id` int(11) NOT NULL,
  `name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` char(6) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `directory` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `direction` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `is_default` tinyint(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`languages_id`, `name`, `code`, `image`, `directory`, `sort_order`, `direction`, `status`, `is_default`) VALUES
(1, 'English', 'en', '118', NULL, 1, 'ltr', 1, 0),
(2, 'Arabic', 'ar', '122', NULL, 2, 'rtl', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `liked_products`
--

CREATE TABLE `liked_products` (
  `like_id` int(11) NOT NULL,
  `liked_products_id` int(11) NOT NULL,
  `liked_customers_id` int(11) NOT NULL,
  `date_liked` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_min_max`
--

CREATE TABLE `manage_min_max` (
  `min_max_id` int(11) NOT NULL,
  `min_level` int(11) NOT NULL,
  `max_level` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `inventory_ref_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manage_role`
--

CREATE TABLE `manage_role` (
  `manage_role_id` int(11) NOT NULL,
  `user_types_id` tinyint(1) NOT NULL DEFAULT '0',
  `dashboard_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_view` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_create` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_update` tinyint(1) NOT NULL DEFAULT '0',
  `manufacturer_delete` tinyint(1) NOT NULL DEFAULT '0',
  `categories_view` tinyint(1) NOT NULL DEFAULT '0',
  `categories_create` tinyint(1) NOT NULL DEFAULT '0',
  `categories_update` tinyint(1) NOT NULL DEFAULT '0',
  `categories_delete` tinyint(1) NOT NULL DEFAULT '0',
  `products_view` tinyint(1) NOT NULL DEFAULT '0',
  `products_create` tinyint(1) NOT NULL DEFAULT '0',
  `products_update` tinyint(1) NOT NULL DEFAULT '0',
  `products_delete` tinyint(1) NOT NULL DEFAULT '0',
  `news_view` tinyint(1) NOT NULL DEFAULT '0',
  `news_create` tinyint(1) NOT NULL DEFAULT '0',
  `news_update` tinyint(1) NOT NULL DEFAULT '0',
  `news_delete` tinyint(1) NOT NULL DEFAULT '0',
  `customers_view` tinyint(1) NOT NULL DEFAULT '0',
  `customers_create` tinyint(1) NOT NULL DEFAULT '0',
  `customers_update` tinyint(1) NOT NULL DEFAULT '0',
  `customers_delete` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_view` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_create` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_update` tinyint(1) NOT NULL DEFAULT '0',
  `tax_location_delete` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_view` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_create` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_update` tinyint(1) NOT NULL DEFAULT '0',
  `coupons_delete` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_view` tinyint(1) NOT NULL DEFAULT '0',
  `notifications_send` tinyint(1) NOT NULL DEFAULT '0',
  `orders_view` tinyint(1) NOT NULL DEFAULT '0',
  `orders_confirm` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_view` tinyint(1) NOT NULL DEFAULT '0',
  `payment_methods_update` tinyint(1) NOT NULL DEFAULT '0',
  `reports_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `website_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `application_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_view` tinyint(1) NOT NULL DEFAULT '0',
  `general_setting_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_view` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_create` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_update` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_delete` tinyint(1) NOT NULL DEFAULT '0',
  `language_view` tinyint(1) NOT NULL DEFAULT '0',
  `language_create` tinyint(1) NOT NULL DEFAULT '0',
  `language_update` tinyint(1) NOT NULL DEFAULT '0',
  `language_delete` tinyint(1) NOT NULL DEFAULT '0',
  `profile_view` tinyint(1) NOT NULL DEFAULT '0',
  `profile_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_view` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_create` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_update` tinyint(1) NOT NULL DEFAULT '0',
  `admintype_delete` tinyint(1) NOT NULL DEFAULT '0',
  `manage_admins_role` tinyint(1) NOT NULL DEFAULT '0',
  `add_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_media` tinyint(1) NOT NULL DEFAULT '0',
  `view_media` tinyint(1) NOT NULL DEFAULT '0',
  `delete_media` tinyint(1) NOT NULL DEFAULT '0',
  `edit_management` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_view` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_update` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manage_role`
--

INSERT INTO `manage_role` (`manage_role_id`, `user_types_id`, `dashboard_view`, `manufacturer_view`, `manufacturer_create`, `manufacturer_update`, `manufacturer_delete`, `categories_view`, `categories_create`, `categories_update`, `categories_delete`, `products_view`, `products_create`, `products_update`, `products_delete`, `news_view`, `news_create`, `news_update`, `news_delete`, `customers_view`, `customers_create`, `customers_update`, `customers_delete`, `tax_location_view`, `tax_location_create`, `tax_location_update`, `tax_location_delete`, `coupons_view`, `coupons_create`, `coupons_update`, `coupons_delete`, `notifications_view`, `notifications_send`, `orders_view`, `orders_confirm`, `shipping_methods_view`, `shipping_methods_update`, `payment_methods_view`, `payment_methods_update`, `reports_view`, `website_setting_view`, `website_setting_update`, `application_setting_view`, `application_setting_update`, `general_setting_view`, `general_setting_update`, `manage_admins_view`, `manage_admins_create`, `manage_admins_update`, `manage_admins_delete`, `language_view`, `language_create`, `language_update`, `language_delete`, `profile_view`, `profile_update`, `admintype_view`, `admintype_create`, `admintype_update`, `admintype_delete`, `manage_admins_role`, `add_media`, `edit_media`, `view_media`, `delete_media`, `edit_management`, `reviews_view`, `reviews_update`) VALUES
(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 11, 1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers`
--

CREATE TABLE `manufacturers` (
  `manufacturers_id` int(10) UNSIGNED NOT NULL,
  `manufacturer_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturers_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_added` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturers_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `manufacturers_info`
--

CREATE TABLE `manufacturers_info` (
  `manufacturers_id` int(11) NOT NULL,
  `languages_id` int(11) NOT NULL,
  `manufacturers_url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_clicked` int(11) NOT NULL DEFAULT '0',
  `date_last_click` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(11) NOT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `sub_sort_order` int(11) DEFAULT NULL,
  `parent_id` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  `external_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_id` int(11) DEFAULT NULL,
  `status` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `sort_order`, `sub_sort_order`, `parent_id`, `type`, `external_link`, `link`, `page_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, 0, 1, NULL, '/', 1, 1, NULL, NULL),
(2, 2, NULL, 0, 0, NULL, 'shop', 1, 1, NULL, NULL),
(3, 4, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(18, NULL, 4, 3, 1, NULL, '/page?name=about-us', 1, 1, NULL, NULL),
(19, NULL, 2, 3, 1, NULL, '/page?name=privacy-policy', 1, 1, NULL, NULL),
(20, 5, NULL, 0, 1, NULL, '#', NULL, 1, NULL, NULL),
(22, 6, NULL, 0, 1, NULL, 'contact', 1, 1, NULL, NULL),
(24, NULL, 3, 3, 1, NULL, 'page?name=about-us', 1, 1, NULL, NULL),
(25, NULL, 1, 3, 1, NULL, 'page?name=privacy-policy', 1, 1, NULL, NULL),
(26, 7, NULL, 0, 0, NULL, NULL, NULL, 1, NULL, NULL),
(27, NULL, 8, 2, 0, NULL, NULL, NULL, 1, NULL, NULL),
(28, NULL, 8, 2, 0, NULL, NULL, NULL, 1, NULL, NULL),
(29, NULL, 8, 2, 0, NULL, NULL, NULL, 1, NULL, NULL),
(30, NULL, 8, 2, 1, NULL, 'http://54.90.151.211/shop?category=mobile', 1, 1, NULL, NULL),
(31, NULL, 8, 26, 0, NULL, NULL, NULL, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu_translation`
--

CREATE TABLE `menu_translation` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `menu_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_translation`
--

INSERT INTO `menu_translation` (`id`, `menu_id`, `language_id`, `menu_name`) VALUES
(2, 1, 1, 'Home'),
(3, 1, 2, 'الرئيسية'),
(11, 2, 1, 'SHOP'),
(12, 2, 2, 'المتجر'),
(25, 3, 1, 'INFO PAGES'),
(26, 3, 2, 'INFO PAGES'),
(33, 18, 1, 'About Us'),
(34, 18, 2, 'About Us'),
(35, 19, 1, 'Privacy Policy'),
(36, 19, 2, 'Privacy Policy'),
(37, 20, 1, 'News'),
(38, 20, 2, 'News'),
(39, 21, 1, 'Demo'),
(40, 21, 2, 'Demo'),
(41, 22, 1, 'Contact Us'),
(42, 22, 2, 'Contact Us'),
(45, 24, 1, 'Sub Menu 1'),
(46, 24, 2, 'Sub Menu 1'),
(47, 25, 1, 'Sub Menu 12'),
(48, 25, 2, 'Sub Menu 12'),
(49, 26, 1, 'Fashon'),
(50, 26, 2, 'الازياء و الموضه'),
(51, 27, 1, 'Fashon'),
(52, 27, 2, 'الازياء و الموضه'),
(53, 28, 1, 'appliances'),
(54, 28, 2, 'الاجهزه المنزليه'),
(55, 29, 1, 'Computers'),
(56, 29, 2, 'الكومبيوتر و اكسسوراته'),
(57, 30, 1, 'Phones & Tablets'),
(58, 30, 2, 'الموبيل و التابلت'),
(59, 31, 1, 'Women Fashion'),
(60, 31, 2, 'ازياء السيدات');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_09_24_122557_create_address_book_table', 1),
(2, '2019_09_24_122557_create_alert_settings_table', 1),
(3, '2019_09_24_122557_create_api_calls_list_table', 1),
(4, '2019_09_24_122557_create_banners_history_table', 1),
(5, '2019_09_24_122557_create_banners_table', 1),
(6, '2019_09_24_122557_create_block_ips_table', 1),
(7, '2019_09_24_122557_create_categories_description_table', 1),
(8, '2019_09_24_122557_create_categories_role_table', 1),
(9, '2019_09_24_122557_create_categories_table', 1),
(10, '2019_09_24_122557_create_compare_table', 1),
(11, '2019_09_24_122557_create_constant_banners_table', 1),
(12, '2019_09_24_122557_create_countries_table', 1),
(13, '2019_09_24_122557_create_coupons_table', 1),
(14, '2019_09_24_122557_create_currencies_table', 1),
(15, '2019_09_24_122557_create_currency_record_table', 1),
(16, '2019_09_24_122557_create_current_theme_table', 1),
(17, '2019_09_24_122557_create_customers_basket_attributes_table', 1),
(18, '2019_09_24_122557_create_customers_basket_table', 1),
(19, '2019_09_24_122557_create_customers_info_table', 1),
(20, '2019_09_24_122557_create_customers_table', 1),
(21, '2019_09_24_122557_create_devices_table', 1),
(22, '2019_09_24_122557_create_flash_sale_table', 1),
(23, '2019_09_24_122557_create_flate_rate_table', 1),
(24, '2019_09_24_122557_create_front_end_theme_content_table', 1),
(25, '2019_09_24_122557_create_geo_zones_table', 1),
(26, '2019_09_24_122557_create_http_call_record_table', 1),
(27, '2019_09_24_122557_create_image_categories_table', 1),
(28, '2019_09_24_122557_create_images_table', 1),
(29, '2019_09_24_122557_create_inventory_detail_table', 1),
(30, '2019_09_24_122557_create_inventory_table', 1),
(31, '2019_09_24_122557_create_label_value_table', 1),
(32, '2019_09_24_122557_create_labels_table', 1),
(33, '2019_09_24_122557_create_languages_table', 1),
(34, '2019_09_24_122557_create_liked_products_table', 1),
(35, '2019_09_24_122557_create_manage_min_max_table', 1),
(36, '2019_09_24_122557_create_manage_role_table', 1),
(37, '2019_09_24_122557_create_manufacturers_info_table', 1),
(38, '2019_09_24_122557_create_manufacturers_table', 1),
(39, '2019_09_24_122557_create_news_categories_description_table', 1),
(40, '2019_09_24_122557_create_news_categories_table', 1),
(41, '2019_09_24_122557_create_news_description_table', 1),
(42, '2019_09_24_122557_create_news_table', 1),
(43, '2019_09_24_122557_create_news_to_news_categories_table', 1),
(44, '2019_09_24_122557_create_orders_products_attributes_table', 1),
(45, '2019_09_24_122557_create_orders_products_table', 1),
(46, '2019_09_24_122557_create_orders_status_description_table', 1),
(47, '2019_09_24_122557_create_orders_status_history_table', 1),
(48, '2019_09_24_122557_create_orders_status_table', 1),
(49, '2019_09_24_122557_create_orders_table', 1),
(50, '2019_09_24_122557_create_orders_total_table', 1),
(51, '2019_09_24_122557_create_pages_description_table', 1),
(52, '2019_09_24_122557_create_pages_table', 1),
(53, '2019_09_24_122557_create_payment_description_table', 1),
(54, '2019_09_24_122557_create_payment_methods_detail_table', 1),
(55, '2019_09_24_122557_create_payment_methods_table', 1),
(56, '2019_09_24_122557_create_permissions_table', 1),
(57, '2019_09_24_122557_create_products_attributes_table', 1),
(58, '2019_09_24_122557_create_products_description_table', 1),
(59, '2019_09_24_122557_create_products_images_table', 1),
(60, '2019_09_24_122557_create_products_options_descriptions_table', 1),
(61, '2019_09_24_122557_create_products_options_table', 1),
(62, '2019_09_24_122557_create_products_options_values_descriptions_table', 1),
(63, '2019_09_24_122557_create_products_options_values_table', 1),
(64, '2019_09_24_122557_create_products_shipping_rates_table', 1),
(65, '2019_09_24_122557_create_products_table', 1),
(66, '2019_09_24_122557_create_products_to_categories_table', 1),
(67, '2019_09_24_122557_create_reviews_description_table', 1),
(68, '2019_09_24_122557_create_reviews_table', 1),
(69, '2019_09_24_122557_create_sessions_table', 1),
(70, '2019_09_24_122557_create_settings_table', 1),
(71, '2019_09_24_122557_create_shipping_description_table', 1),
(72, '2019_09_24_122557_create_shipping_methods_table', 1),
(73, '2019_09_24_122557_create_sliders_images_table', 1),
(74, '2019_09_24_122557_create_specials_table', 1),
(75, '2019_09_24_122557_create_tax_class_table', 1),
(76, '2019_09_24_122557_create_tax_rates_table', 1),
(77, '2019_09_24_122557_create_units_descriptions_table', 1),
(78, '2019_09_24_122557_create_units_table', 1),
(79, '2019_09_24_122557_create_ups_shipping_table', 1),
(80, '2019_09_24_122557_create_user_to_address_table', 1),
(81, '2019_09_24_122557_create_user_types_table', 1),
(82, '2019_09_24_122557_create_users_table', 1),
(83, '2019_09_24_122557_create_whos_online_table', 1),
(84, '2019_09_24_122557_create_zones_table', 1),
(85, '2019_09_24_122557_create_zones_to_geo_zones_table', 1),
(86, '2019_12_11_070737_create_menus_table', 1),
(87, '2019_12_11_070821_create_menu_translation_table', 1),
(88, '2020_02_04_121358_top_offers', 1),
(89, '2020_03_25_141022_create_home_banners', 1);

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `news_id` int(11) NOT NULL,
  `news_image` text COLLATE utf8mb4_unicode_ci,
  `news_date_added` datetime NOT NULL,
  `news_last_modified` datetime DEFAULT NULL,
  `news_status` tinyint(1) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `news_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

CREATE TABLE `news_categories` (
  `categories_id` int(11) NOT NULL,
  `categories_image` text COLLATE utf8mb4_unicode_ci,
  `categories_icon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `sort_order` int(11) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `news_categories_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_categories_description`
--

CREATE TABLE `news_categories_description` (
  `categories_description_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL DEFAULT '0',
  `language_id` int(11) NOT NULL DEFAULT '1',
  `categories_name` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_description`
--

CREATE TABLE `news_description` (
  `language_id` int(11) NOT NULL DEFAULT '1',
  `news_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `news_id` int(11) NOT NULL,
  `news_description` text COLLATE utf8mb4_unicode_ci,
  `news_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `news_viewed` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news_to_news_categories`
--

CREATE TABLE `news_to_news_categories` (
  `news_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orders_id` int(11) NOT NULL,
  `total_tax` decimal(7,2) NOT NULL,
  `customers_id` int(11) NOT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customers_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customers_address_format_id` int(11) DEFAULT NULL,
  `delivery_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_address_format_id` int(11) DEFAULT NULL,
  `billing_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_suburb` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postcode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address_format_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_owner` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_number` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc_expires` varchar(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_purchased` datetime DEFAULT NULL,
  `orders_date_finished` datetime DEFAULT NULL,
  `currency` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_value` decimal(14,6) DEFAULT NULL,
  `order_price` decimal(10,2) NOT NULL,
  `shipping_cost` decimal(10,2) NOT NULL,
  `shipping_method` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_duration` int(11) DEFAULT NULL,
  `order_information` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `coupon_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_amount` int(11) NOT NULL,
  `exclude_product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excluded_product_categories` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `product_ids` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ordered_source` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1: Website, 2: App',
  `delivery_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products`
--

CREATE TABLE `orders_products` (
  `orders_products_id` int(11) NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `orders_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_model` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_price` decimal(15,2) NOT NULL,
  `final_price` decimal(15,2) NOT NULL,
  `products_tax` decimal(7,0) NOT NULL,
  `products_quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_products_attributes`
--

CREATE TABLE `orders_products_attributes` (
  `orders_products_attributes_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_products_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `products_options` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_status`
--

CREATE TABLE `orders_status` (
  `orders_status_id` int(11) NOT NULL,
  `public_flag` int(11) DEFAULT '0',
  `downloads_flag` int(11) DEFAULT '0',
  `role_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status`
--

INSERT INTO `orders_status` (`orders_status_id`, `public_flag`, `downloads_flag`, `role_id`) VALUES
(1, 0, 0, 2),
(2, 0, 0, 2),
(3, 0, 0, 2),
(4, 0, 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_description`
--

CREATE TABLE `orders_status_description` (
  `orders_status_description_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `orders_status_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders_status_description`
--

INSERT INTO `orders_status_description` (`orders_status_description_id`, `orders_status_id`, `orders_status_name`, `language_id`) VALUES
(1, 1, 'Pending', 1),
(2, 2, 'Completed', 1),
(3, 3, 'Cancel', 1),
(4, 4, 'Return', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders_status_history`
--

CREATE TABLE `orders_status_history` (
  `orders_status_history_id` int(11) NOT NULL,
  `orders_id` int(11) NOT NULL,
  `orders_status_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `customer_notified` int(11) DEFAULT '0',
  `comments` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders_total`
--

CREATE TABLE `orders_total` (
  `orders_total_id` int(10) UNSIGNED NOT NULL,
  `orders_id` int(11) NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(15,4) NOT NULL,
  `class` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `page_id` int(11) NOT NULL,
  `slug` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `type` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`page_id`, `slug`, `status`, `type`) VALUES
(1, 'privacy-policy', 1, 1),
(2, 'term-services', 1, 1),
(3, 'refund-policy', 1, 1),
(4, 'about-us', 1, 1),
(5, 'privacy-policy', 1, 2),
(6, 'term-services', 1, 2),
(7, 'refund-policy', 1, 2),
(8, 'about-us', 1, 2),
(9, 'cookies', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pages_description`
--

CREATE TABLE `pages_description` (
  `page_description_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `page_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages_description`
--

INSERT INTO `pages_description` (`page_description_id`, `name`, `description`, `language_id`, `page_id`) VALUES
(1, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>\n', 1, 1),
(4, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>\n', 1, 2),
(7, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>\n', 1, 3),
(10, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\n\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\n\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\n\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\n\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\n\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\n\n<ul>\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\n<li>Etiam eleifend ex eu interdum varius.</li>\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\n</ul>\n\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>\n\n<p>&nbsp;</p>', 1, 4),
(13, 'Privacy Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>', 1, 5),
(16, 'Term & Services', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>', 1, 6),
(19, 'Refund Policy', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy</p>\n\n<p>text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen</p>\n\n<p>book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially</p>\n\n<p>unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages,</p>\n\n<p>and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Lorem</p>\n\n<p>Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard</p>\n\n<p>dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type</p>\n\n<p>specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining</p>\n\n<p>essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum</p>\n\n<p>passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem</p>\n\n<p>Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s</p>\n\n<p>standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make</p>\n\n<p>a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been</p>\n\n<p>the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled</p>\n\n<p>it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting,</p>\n\n<p>remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing</p>\n\n<p>Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions</p>\n\n<p>of Lorem Ipsum.</p>', 1, 7),
(22, 'About Us', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\n\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\n\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\n\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\n\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\n\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\n\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\n\n<ul>\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\n<li>Etiam eleifend ex eu interdum varius.</li>\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\n</ul>\n\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 8),
(23, 'Cookies', '<h2><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></h2>\n\n<p><strong>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</strong></p>\n\n<p>Cras non justo sed nulla finibus pulvinar sit amet et neque. Duis et odio vitae orci mattis gravida. Nullam vel tincidunt ex. Praesent vel neque egestas arcu feugiat venenatis. Donec eget dolor quis justo tempus mattis. Phasellus dictum nunc ut dapibus dictum. Etiam vel leo nulla. Ut eu mi hendrerit, eleifend lacus sed, dictum neque.</p>\n\n<p>Aliquam non convallis nibh. Donec luctus purus magna, et commodo urna fermentum sed. Cras vel ex blandit, pretium nulla id, efficitur massa. Suspendisse potenti. Maecenas vel vehicula velit. Etiam quis orci molestie, elementum nisl eget, ultricies felis. Ut condimentum quam ut mi scelerisque accumsan. Suspendisse potenti. Etiam orci purus, iaculis sit amet ornare sit amet, finibus sed ligula. Quisque et mollis libero, sit amet consectetur augue. Vestibulum posuere pellentesque enim, in facilisis diam dictum eget. Phasellus sed vestibulum urna, in aliquet felis. Vivamus quis lacus id est ornare faucibus at id nulla.</p>\n\n<h2>Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.</h2>\n\n<p>Nulla justo lectus, sollicitudin at lorem eu, sollicitudin molestie augue. Maecenas egestas facilisis dolor mattis feugiat. Donec sed orci tellus. Maecenas tortor ipsum, varius vel dolor nec, bibendum porttitor felis. Mauris rutrum tristique vehicula. Sed ullamcorper nisl non erat pharetra, sit amet mattis enim posuere. Nulla convallis fringilla tortor, at vestibulum mauris cursus eget. Ut semper sollicitudin odio, sed molestie libero luctus quis. Integer viverra rutrum diam non maximus. Maecenas pellentesque tortor et sapien fermentum laoreet non et est. Phasellus felis quam, laoreet rhoncus erat eget, tempor condimentum massa. Integer gravida turpis id suscipit bibendum. Phasellus pellentesque venenatis erat, ut maximus justo vulputate sed. Vestibulum maximus enim ligula, non suscipit lectus dignissim vel. Suspendisse eleifend lorem egestas, tristique ligula id, condimentum est.</p>\n\n<p>Mauris nulla nulla, laoreet at auctor quis, bibendum rutrum neque. Donec eu ligula mi. Nam cursus vulputate semper. Phasellus facilisis mollis tellus, interdum laoreet justo rutrum pulvinar. Praesent molestie, nibh sed ultrices porttitor, nulla tortor volutpat enim, quis auctor est sem et orci. Proin lacinia vestibulum ex ut convallis. Phasellus tempus odio purus.</p>\n\n<ul>\n<li>Nam lacinia urna eu arcu auctor, eget euismod metus sagittis.</li>\n<li>Etiam eleifend ex eu interdum varius.</li>\n<li>Nunc dapibus purus eu felis tincidunt, vel rhoncus erat tristique.</li>\n<li>Aenean nec augue sit amet lorem blandit ultrices.</li>\n<li>Nullam at lacus eleifend, pulvinar velit tempor, auctor nisi.</li>\n</ul>\n\n<p>Nunc accumsan tincidunt augue sed blandit. Duis et dignissim nisi. Phasellus sed ligula velit. Etiam rhoncus aliquet magna, nec volutpat nulla imperdiet et. Nunc vel tincidunt magna. Vestibulum lacinia odio a metus placerat maximus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam et faucibus neque. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean et metus malesuada, ullamcorper dui vel, convallis est. Donec congue libero sed turpis porta consequat. Suspendisse potenti. Aliquam pharetra nibh in magna iaculis, non elementum ipsum luctus.</p>', 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `payment_description`
--

CREATE TABLE `payment_description` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `sub_name_1` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_name_2` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_description`
--

INSERT INTO `payment_description` (`id`, `payment_methods_id`, `name`, `language_id`, `sub_name_1`, `sub_name_2`) VALUES
(1, 1, 'Braintree', 1, 'Credit Card', 'Paypal'),
(4, 2, 'Stripe', 1, '', ''),
(5, 3, 'Paypal', 1, '', ''),
(6, 4, 'Cash on Delivery', 1, '', ''),
(7, 5, 'Instamojo', 1, '', ''),
(8, 0, 'Cybersoure', 1, '', ''),
(9, 6, 'Hyperpay', 1, '', ''),
(10, 7, 'Razor Pay', 1, '', ''),
(11, 8, 'PayTm', 1, '', ''),
(12, 8, 'Lorum Epsum', 2, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_methods_id` int(11) NOT NULL,
  `payment_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `environment` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_methods_id`, `payment_method`, `status`, `environment`, `created_at`, `updated_at`) VALUES
(1, 'braintree', 1, 0, '2019-09-18 14:40:13', '0000-00-00 00:00:00'),
(2, 'stripe', 1, 0, '2019-09-18 14:56:17', '0000-00-00 00:00:00'),
(3, 'paypal', 1, 0, '2019-09-18 14:56:04', '0000-00-00 00:00:00'),
(4, 'cash_on_delivery', 1, 0, '2019-09-18 14:56:37', '0000-00-00 00:00:00'),
(5, 'instamojo', 1, 0, '2019-09-18 14:57:23', '0000-00-00 00:00:00'),
(6, 'hyperpay', 1, 0, '2019-09-18 14:56:44', '0000-00-00 00:00:00'),
(7, 'razor_pay', 1, 0, '2019-09-18 14:56:44', '0000-00-00 00:00:00'),
(8, 'pay_tm', 1, 0, '2019-09-18 14:56:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods_detail`
--

CREATE TABLE `payment_methods_detail` (
  `id` int(11) NOT NULL,
  `payment_methods_id` int(11) NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_methods_detail`
--

INSERT INTO `payment_methods_detail` (`id`, `payment_methods_id`, `key`, `value`) VALUES
(3, 1, 'merchant_id', 'wrv3cwbft6n3bg5g'),
(4, 1, 'public_key', '2bz5kxcj2gs3hdbx'),
(5, 1, 'private_key', '55ae08cb061e36dca59aaf2a883190bf'),
(9, 2, 'secret_key', 'sk_test_Gsz7jL4wRikI8YFaNzbwxKOF'),
(10, 2, 'publishable_key', 'pk_test_cCAEC6EejawuAvsvR9bhKrGR'),
(15, 3, 'id', 'AULJ0Q_kdXwEbi7PCBunUBJc4Kkg2vvdazF8kJoywAV9_i7iJMQphB9NLwdR0v2BAUlLF974iTrynbys'),
(18, 3, 'payment_currency', 'USD'),
(21, 5, 'api_key', 'c5a348bd5fcb4c866074c48e9c77c6c4'),
(22, 5, 'auth_token', '99448897defb4423b921fe47e0851b86'),
(23, 5, 'client_id', 'test_9l7MW8I7c2bwIw7q0koc6B1j5NrvzyhasQh'),
(24, 5, 'client_secret', 'test_m9Ey3Jqp9AfmyWKmUMktt4K3g1uMIdapledVRRYJha7WinxOsBVV5900QMlwvv3l2zRmzcYDEOKPh1cvnVedkAKtHOFFpJbqcoNCNrjx1FtZhtDMkEJFv9MJuXD'),
(32, 6, 'userid', '8a82941865340dc8016537cdac1e0841'),
(33, 6, 'password', 'sXrYy8pnsf'),
(34, 6, 'entityid', '8a82941865340dc8016537ce08db0845'),
(35, 7, 'RAZORPAY_KEY', 'rzp_test_izyMwtDZYAQeSA'),
(36, 7, 'RAZORPAY_SECRET', 'LBIgacPG7Da6mdOARfig205j'),
(37, 8, 'paytm_mid', 'QROqBU67944622696360'),
(39, 8, 'paytm_key', 'w#5bJEFYV5EU4vnP'),
(40, 8, 'current_domain_name', '');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(11) NOT NULL,
  `role_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `products_id` int(11) NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_quantity` int(11) NOT NULL,
  `products_model` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_image` text COLLATE utf8mb4_unicode_ci,
  `products_price` decimal(15,2) NOT NULL,
  `products_date_added` datetime NOT NULL,
  `products_last_modified` datetime DEFAULT NULL,
  `products_date_available` datetime DEFAULT NULL,
  `products_weight` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_weight_unit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_status` tinyint(1) NOT NULL,
  `is_current` tinyint(1) NOT NULL,
  `products_tax_class_id` int(11) NOT NULL,
  `manufacturers_id` int(11) DEFAULT NULL,
  `products_ordered` int(11) NOT NULL DEFAULT '0',
  `products_liked` int(11) NOT NULL,
  `low_limit` int(11) NOT NULL,
  `is_feature` tinyint(1) NOT NULL DEFAULT '0',
  `products_slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_type` int(11) NOT NULL DEFAULT '0',
  `products_min_order` int(11) NOT NULL DEFAULT '1',
  `products_max_stock` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`products_id`, `admin_id`, `products_quantity`, `products_model`, `products_image`, `products_price`, `products_date_added`, `products_last_modified`, `products_date_available`, `products_weight`, `products_weight_unit`, `products_status`, `is_current`, `products_tax_class_id`, `manufacturers_id`, `products_ordered`, `products_liked`, `low_limit`, `is_feature`, `products_slug`, `products_type`, `products_min_order`, `products_max_stock`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, NULL, '240', '999.00', '0000-00-00 00:00:00', NULL, NULL, '.9', 'Kilogram', 1, 1, 0, NULL, 0, 0, 0, 0, 'straight-long-coat', 0, 1, NULL, '2020-04-11 08:04:03', '2020-04-11 08:05:55'),
(2, NULL, 0, '11111', '243', '18000.00', '0000-00-00 00:00:00', NULL, NULL, '300', 'Gram', 1, 1, 0, NULL, 0, 0, 0, 0, 'apple-iphone-11-pro-max', 0, 1, 1, '2020-04-11 08:55:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_attributes`
--

CREATE TABLE `products_attributes` (
  `products_attributes_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `options_id` int(11) NOT NULL,
  `options_values_id` int(11) NOT NULL,
  `options_values_price` decimal(15,2) NOT NULL,
  `price_prefix` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products_description`
--

CREATE TABLE `products_description` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL DEFAULT '1',
  `products_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `products_description` text COLLATE utf8mb4_unicode_ci,
  `products_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_viewed` int(11) DEFAULT '0',
  `products_left_banner` text COLLATE utf8mb4_unicode_ci,
  `products_left_banner_start_date` int(11) DEFAULT NULL,
  `products_left_banner_expire_date` int(11) DEFAULT NULL,
  `products_right_banner` text COLLATE utf8mb4_unicode_ci,
  `products_right_banner_start_date` int(11) DEFAULT NULL,
  `products_right_banner_expire_date` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_description`
--

INSERT INTO `products_description` (`id`, `products_id`, `language_id`, `products_name`, `products_description`, `products_url`, `products_viewed`, `products_left_banner`, `products_left_banner_start_date`, `products_left_banner_expire_date`, `products_right_banner`, `products_right_banner_start_date`, `products_right_banner_expire_date`) VALUES
(1, 1, 1, 'Straight long coat', '<p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(2, 1, 2, 'معطف طويل مستقيم', '<p>ذلك وبعدما وقوعها، أم, تُصب ونتج حول عن. أن فرنسا لمحاكم تلك, يكن ان وتتحمّل الساحلية. يذكر الأول إتفاقية مما أي, كلّ ٣٠ دفّة العالم. بها بـ عقبت السفن الثالث, الأول الانجليزية أخر أي, فكان أفاق عدد بل. واتّجه قُدُماً التخطيط بل لان, والنفيس وبالتحديد، يتم عل, إذ بعد تحرير ترتيب الوزراء. أم السبب التّحول واشتدّت يتم, ٣٠ أضف ليركز قتيل، المعاهدات, أم مئات الشرق، أخر. أوسع الطريق هو جعل, كل وجهان الصين الضروري عرض. خيار قادة لعملة على ما, فسقط الشمال ما بعض. حتى في مليارات والإتحاد, هو كلا لفرنسا الخطّة, عرض أي المضي الصين. أضف تاريخ لإنعدام الولايات في. بعد ليرتفع التحالف التجارية هو, هو الذود لإعلان كلّ, ثمّة المجتمع الإكتفاء يبق ثم. ثم جُل وترك وانتهاءً التقليدي. هو إيو محاولات البولندي. عرض عل كردة ميناء المنتصر, كان لدحر أوسع فرنسية ان. منتصف بالرّغم لم أخذ. بـ دون لهذه نهاية وباستثناء. عرض الآخر لليابان الأوروبية تم, قد التي كُلفة المتساقطة، ذلك. مرجع لكون سياسة مع أخر. وحتى النفط بالسيطرة مع ومن, وفي أم واحدة الشهير. أخذ عن وأزيز بمحاولة الأمريكية. بال كل ووصف منتصف ولاتّساع, يكن و الأول الإتحاد. حدى بـ ايطاليا، الأثناء،, هو بلاده العصبة فصل, والتي يعادل نفس بل. مكن المنتصر والروسية الموسوعة أم. أن بحق فقامت حادثة الرئيسية, هذه تعداد وعُرفت بتطويق أم. هذه أهّل مقاومة الاندونيسية قد, انه وبدون واستمرت كل. حتى وبدون فكانت الإطلاق في, بعد تصفح سكان وقامت أم, يكن الأمم إستعمل أم. وبعض الأمم بـ ذات, إجلاء استدعى الأوروبية، أما عن, ما جنوب الدول الأمور بلا. كان الخاسر الساحل أن, و أضف يتمكن مكثّفة. كلّ الجوي تجهيز الأوروبي في, سقطت الطريق أوراقهم في بين. هامش بالحرب الباهضة لكل قد. عل صفحة عُقر وتنامت أخذ. أطراف العناد كلّ بل. حتى للسيطرة المتاخمة عل. طوكيو الشهيرة جهة أن, من جعل يونيو الأولية, عن جعل سقطت الستار. بشكل بمعارضة بالمطالبة ٣٠ ذات, قد بعض إبّان ماليزيا، الأوروبي. ذات ما وجهان الأوروبيّون, يقوم استمرار وتم إذ, أوراقهم الانجليزية يبق عن. حدى ٣٠ الصفحات الأوربيين, أراض الأولى فقد ان, وبعد بتخصيص ثم بعد. عدم هو ساعة الساحلية, أن بينما السيطرة أضف. وبحلول استعملت تعد بـ. تم للصين أصقاع الفترة نفس. سابق لمحاكم عن حول, أي بلا جنوب والإتحاد التغييرات. كلّ ان مئات الأمور الشتاء،. عن بعض أحكم تكبّد العصبة, يتم ٢٠٠٤ بالمحور العالمية هو. رجوعهم الحدود الإتحاد لان عن, كما و مليون وهولندا،. بسبب استبدال وتتحمّل لم عدد, قائمة بتحدّي بالسيطرة الى ما. يقوم الشطر العمليات كما و, عل نفس لفشل نهاية. عن حكومة بتطويق أخذ, مايو مرجع معقل هو لكل. ذلك قد بتطويق الضغوط, مع تحت ودول تزامناً. يرتبط بالسيطرة حتى من, وتم عن ٢٠٠٤ الجنود بريطانيا-فرنسا. وبولندا الأرواح إذ أضف, نفس هو إبّان للمجهود بالمحور, قبل ثم معاملة بالمحور بالتوقيع.</p>', NULL, 0, NULL, 0, 0, NULL, 0, 0),
(3, 2, 1, 'Apple iPhone 11 Pro Max', '<p>Apple iPhone 11 Pro Max</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL),
(4, 2, 2, 'ايفون برو ماكس 11', '<p>ايفون برو ماكس 11</p>', NULL, 0, '', NULL, NULL, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_images`
--

CREATE TABLE `products_images` (
  `id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci,
  `htmlcontent` text COLLATE utf8mb4_unicode_ci,
  `sort_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_images`
--

INSERT INTO `products_images` (`id`, `products_id`, `image`, `htmlcontent`, `sort_order`) VALUES
(1, 1, '240', NULL, 1),
(2, 1, '242', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_options`
--

CREATE TABLE `products_options` (
  `products_options_id` int(11) NOT NULL,
  `products_options_name` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options`
--

INSERT INTO `products_options` (`products_options_id`, `products_options_name`) VALUES
(1, 'Color'),
(2, 'Size');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_descriptions`
--

CREATE TABLE `products_options_descriptions` (
  `products_options_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_options_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_descriptions`
--

INSERT INTO `products_options_descriptions` (`products_options_descriptions_id`, `language_id`, `options_name`, `products_options_id`) VALUES
(1, 1, 'Color', 1),
(2, 2, 'اللون', 1),
(3, 1, 'Size', 2),
(4, 2, 'الحجم', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values`
--

CREATE TABLE `products_options_values` (
  `products_options_values_id` int(11) NOT NULL,
  `products_options_id` int(11) NOT NULL,
  `products_options_values_name` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values`
--

INSERT INTO `products_options_values` (`products_options_values_id`, `products_options_id`, `products_options_values_name`) VALUES
(1, 1, 'Red, Pink, Sky Blue, Purple,'),
(2, 2, 'Small, Medium, Large, XL,');

-- --------------------------------------------------------

--
-- Table structure for table `products_options_values_descriptions`
--

CREATE TABLE `products_options_values_descriptions` (
  `products_options_values_descriptions_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `options_values_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `products_options_values_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_options_values_descriptions`
--

INSERT INTO `products_options_values_descriptions` (`products_options_values_descriptions_id`, `language_id`, `options_values_name`, `products_options_values_id`) VALUES
(1, 1, 'Red, Pink, Sky Blue, Purple,', 1),
(2, 2, 'أحمر, زهري, السماء الزرقاء, أرجواني,', 1),
(3, 1, 'Small, Medium, Large, XL,', 2),
(4, 2, 'صغير, متوسط, كبير, كبير جدا,', 2);

-- --------------------------------------------------------

--
-- Table structure for table `products_shipping_rates`
--

CREATE TABLE `products_shipping_rates` (
  `products_shipping_rates_id` int(11) NOT NULL,
  `weight_from` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_to` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_price` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `products_shipping_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_shipping_rates`
--

INSERT INTO `products_shipping_rates` (`products_shipping_rates_id`, `weight_from`, `weight_to`, `weight_price`, `unit_id`, `products_shipping_status`) VALUES
(1, '0', '10', 10, 1, 1),
(2, '10', '20', 10, 1, 1),
(3, '20', '30', 10, 1, 1),
(4, '30', '50', 50, 1, 1),
(5, '50', '100000', 70, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products_to_categories`
--

CREATE TABLE `products_to_categories` (
  `products_to_categories_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products_to_categories`
--

INSERT INTO `products_to_categories` (`products_to_categories_id`, `products_id`, `categories_id`) VALUES
(9, 1, 477),
(10, 1, 1),
(11, 1, 2),
(12, 1, 17),
(13, 2, 458),
(14, 2, 459),
(15, 2, 461);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `reviews_id` int(11) NOT NULL,
  `admin_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `products_id` int(11) NOT NULL,
  `customers_id` int(11) DEFAULT NULL,
  `customers_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviews_rating` int(11) DEFAULT NULL,
  `reviews_status` tinyint(1) NOT NULL DEFAULT '0',
  `reviews_read` int(11) NOT NULL DEFAULT '0',
  `vendors_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reviews_description`
--

CREATE TABLE `reviews_description` (
  `id` int(11) NOT NULL,
  `review_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `reviews_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `sesskey` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiry` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `value`, `created_at`, `updated_at`) VALUES
(1, 'facebook_app_id', 'FB_CLIENT_ID', '2018-04-26 22:00:00', '2019-11-01 04:58:53'),
(2, 'facebook_secret_id', 'FB_SECRET_KEY', '2018-04-26 22:00:00', '2019-11-01 04:58:53'),
(3, 'facebook_login', '1', '2018-04-26 22:00:00', '2019-11-01 04:58:53'),
(4, 'contact_us_email', 'vectorcoder@gmail.com', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(5, 'address', 'address', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(6, 'city', 'City', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(7, 'state', 'State', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(8, 'zip', 'Zip', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(9, 'country', 'Country', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(10, 'latitude', 'Latitude', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(11, 'longitude', 'Longitude', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(12, 'phone_no', '+92 312 1234567', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(13, 'fcm_android', '', '2018-04-26 22:00:00', '2019-02-05 09:42:15'),
(14, 'fcm_ios', NULL, '2018-04-26 22:00:00', NULL),
(15, 'fcm_desktop', NULL, '2018-04-26 22:00:00', NULL),
(16, 'website_logo', 'images/media/2020/04/07uzf09509.jpeg', '2018-04-26 22:00:00', '2020-04-09 12:36:48'),
(17, 'fcm_android_sender_id', NULL, '2018-04-26 22:00:00', NULL),
(18, 'fcm_ios_sender_id', '', '2018-04-26 22:00:00', '2019-02-05 09:42:15'),
(19, 'app_name', '', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(20, 'currency_symbol', '$', '2018-04-26 22:00:00', '2018-11-19 05:26:01'),
(21, 'new_product_duration', '20', '2018-04-26 22:00:00', '2019-10-21 05:36:53'),
(22, 'notification_title', 'Ionic Ecommerce', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(23, 'notification_text', 'A bundle of products waiting for you!', '2018-04-26 22:00:00', NULL),
(24, 'lazzy_loading_effect', 'Detail', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(25, 'footer_button', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(26, 'cart_button', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(27, 'featured_category', NULL, '2018-04-26 22:00:00', NULL),
(28, 'notification_duration', 'year', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(29, 'home_style', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(30, 'wish_list_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(31, 'edit_profile_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(32, 'shipping_address_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(33, 'my_orders_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(34, 'contact_us_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(35, 'about_us_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(36, 'news_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(37, 'intro_page', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(38, 'setting_page', '1', '2018-04-26 22:00:00', NULL),
(39, 'share_app', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(40, 'rate_app', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(41, 'site_url', 'URL', '2018-04-26 22:00:00', '2018-11-19 05:26:01'),
(42, 'admob', '0', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(43, 'admob_id', 'ID', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(44, 'ad_unit_id_banner', 'Unit ID', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(45, 'ad_unit_id_interstitial', 'Indestrial', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(46, 'category_style', '4', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(47, 'package_name', 'package name', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(48, 'google_analytic_id', 'test', '2018-04-26 22:00:00', '2019-05-15 08:58:30'),
(49, 'themes', 'themeone', '2018-04-26 22:00:00', NULL),
(50, 'company_name', '#', '2018-04-26 22:00:00', '2019-10-07 07:52:24'),
(51, 'facebook_url', '#', '2018-04-26 22:00:00', '2020-04-11 08:35:59'),
(52, 'google_url', '#', '2018-04-26 22:00:00', '2020-04-11 08:35:59'),
(53, 'twitter_url', '#', '2018-04-26 22:00:00', '2020-04-11 08:35:59'),
(54, 'linked_in', '#', '2018-04-26 22:00:00', '2020-04-11 08:35:59'),
(55, 'default_notification', 'onesignal', '2018-04-26 22:00:00', '2019-02-05 09:42:15'),
(56, 'onesignal_app_id', '6053d948-b8f6-472a-87e4-379fa89f78d8', '2018-04-26 22:00:00', '2019-02-05 09:42:15'),
(57, 'onesignal_sender_id', '50877237723', '2018-04-26 22:00:00', '2019-02-05 09:42:15'),
(58, 'ios_admob', '1', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(59, 'ios_admob_id', 'AdMob ID', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(60, 'ios_ad_unit_id_banner', 'Unit ID Banner', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(61, 'ios_ad_unit_id_interstitial', 'ID Interstitial', '2018-04-26 22:00:00', '2019-05-15 08:58:05'),
(62, 'google_login', '1', NULL, '2019-11-01 04:58:36'),
(63, 'google_app_id', NULL, NULL, NULL),
(64, 'google_secret_id', NULL, NULL, NULL),
(65, 'google_callback_url', NULL, NULL, NULL),
(66, 'facebook_callback_url', NULL, NULL, NULL),
(67, 'is_app_purchased', '1', NULL, '2018-05-04 01:24:44'),
(68, 'is_web_purchased', '1', NULL, '2018-05-04 01:24:44'),
(69, 'consumer_key', 'dadb7a7c1557917902724bbbf5', NULL, '2019-05-15 08:58:22'),
(70, 'consumer_secret', '3ba77f821557917902b1d57373', NULL, '2019-05-15 08:58:22'),
(71, 'order_email', 'orders@gmail.com', NULL, '2019-10-21 05:36:53'),
(72, 'website_themes', '1', NULL, NULL),
(73, 'seo_title', '', NULL, '2018-11-19 05:21:57'),
(74, 'seo_metatag', '', NULL, '2018-11-19 05:21:57'),
(75, 'seo_keyword', '', NULL, '2018-11-19 05:21:57'),
(76, 'seo_description', '', NULL, '2018-11-19 05:21:57'),
(77, 'before_head_tag', '', NULL, '2018-11-19 05:22:15'),
(78, 'end_body_tag', 'name', NULL, '2020-04-11 08:35:59'),
(79, 'sitename_logo', 'ECommerce', NULL, '2020-04-11 08:35:59'),
(80, 'website_name', '<strong>E</strong>COMMERCE', NULL, '2018-11-19 05:22:25'),
(81, 'web_home_pages_style', 'two', NULL, '2018-11-19 05:22:25'),
(82, 'web_color_style', 'app.theme.2', NULL, '2020-04-09 08:56:52'),
(83, 'free_shipping_limit', '400', NULL, '2019-10-21 05:36:53'),
(84, 'app_icon_image', 'icon', NULL, '2019-02-05 08:12:59'),
(85, 'twilio_status', '0', NULL, NULL),
(86, 'twilio_authy_api_id', '1213213', NULL, NULL),
(87, 'favicon', 'images/media/2020/04/07uzf09509.jpeg', NULL, '2020-04-11 08:35:59'),
(88, 'Thumbnail_height', '150', NULL, NULL),
(89, 'Thumbnail_width', '150', NULL, NULL),
(90, 'Medium_height', '400', NULL, NULL),
(91, 'Medium_width', '400', NULL, NULL),
(92, 'Large_height', '900', NULL, NULL),
(93, 'Large_width', '900', NULL, NULL),
(94, 'environmentt', 'local', NULL, '2019-10-21 05:36:53'),
(95, 'maintenance_text', 'https://example.com', NULL, '2019-10-21 05:36:53'),
(96, 'package_charge_taxt', '0', NULL, NULL),
(97, 'order_commission', '0', NULL, NULL),
(98, 'all_items_price_included_tax', 'yes', NULL, NULL),
(99, 'all_items_price_included_tax_value', '0', NULL, NULL),
(100, 'driver_accept_multiple_order', '1', NULL, NULL),
(101, 'min_order_price', '100', NULL, '2019-10-21 05:36:53'),
(102, 'youtube_link', '0', NULL, NULL),
(103, 'external_website_link', 'http://localhost', NULL, '2019-10-21 05:36:53'),
(104, 'google_map_api', '', NULL, '2019-10-21 05:36:53'),
(105, 'is_pos_purchased', '0', NULL, NULL),
(106, 'admin_version', '4.0.12', NULL, NULL),
(107, 'app_version', '4.0.12', NULL, NULL),
(108, 'web_version', '4.0.12', NULL, NULL),
(109, 'pos_version', '0', NULL, NULL),
(110, 'android_app_link', '#', NULL, NULL),
(111, 'iphone_app_link', '#', NULL, NULL),
(112, 'about_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2020-04-11 08:35:59'),
(113, 'contact_content', 'Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum Lorum Ipsum Upsum Kupsum Jipsum Mipsum', NULL, '2020-04-11 08:35:59'),
(114, 'contents', NULL, NULL, NULL),
(115, 'fb_redirect_url', 'http://YOUR_DOMAIN_NAME/login/facebook/callback', NULL, '2019-11-01 04:58:53'),
(116, 'google_client_id', 'GOOGLE_CLIENT_ID', NULL, '2019-11-01 04:58:36'),
(117, 'google_client_secret', 'GOOGLE_SECRET_KEY', NULL, '2019-11-01 04:58:36'),
(118, 'google_redirect_url', 'http://YOUR_DOMAIN_NAME/login/google/callback', NULL, '2019-11-01 04:58:36'),
(119, 'newsletter', '1', NULL, '2020-04-11 12:52:54'),
(120, 'allow_cookies', '1', NULL, '2020-04-11 08:35:59'),
(121, 'card_style', '1', NULL, '2019-11-01 04:58:36'),
(122, 'banner_style', '1', NULL, '2019-11-01 04:58:36'),
(123, 'mail_chimp_api', '', NULL, '2020-04-11 12:52:54'),
(124, 'mail_chimp_list_id', '', NULL, '2020-04-11 12:52:54'),
(125, 'newsletter_image', 'images/media/2020/04/FpZ8M10810.jpg', NULL, '2020-04-11 12:52:54');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_description`
--

CREATE TABLE `shipping_description` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `table_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_labels` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_description`
--

INSERT INTO `shipping_description` (`id`, `name`, `language_id`, `table_name`, `sub_labels`) VALUES
(1, 'Free Shipping', 1, 'free_shipping', ''),
(4, 'Local Pickup', 1, 'local_pickup', ''),
(7, 'Flat Rate', 1, 'flate_rate', ''),
(10, 'UPS Shipping', 1, 'ups_shipping', '{\"nextDayAir\":\"Next Day Air\",\"secondDayAir\":\"2nd Day Air\",\"ground\":\"Ground\",\"threeDaySelect\":\"3 Day Select\",\"nextDayAirSaver\":\"Next Day AirSaver\",\"nextDayAirEarlyAM\":\"Next Day Air Early A.M.\",\"secondndDayAirAM\":\"2nd Day Air A.M.\"}'),
(13, 'Shipping Price', 1, 'shipping_by_weight', ''),
(14, 'جنيه مصري', 2, 'flate_rate', ''),
(15, 'سعر الشحن', 2, 'shipping_by_weight', ''),
(16, 'جنيه مصري', 2, 'local_pickup', '');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_methods`
--

CREATE TABLE `shipping_methods` (
  `shipping_methods_id` int(11) NOT NULL,
  `methods_type_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDefault` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `table_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shipping_methods`
--

INSERT INTO `shipping_methods` (`shipping_methods_id`, `methods_type_link`, `isDefault`, `status`, `table_name`) VALUES
(1, 'upsShipping', 0, 0, 'ups_shipping'),
(2, 'freeShipping', 0, 0, 'free_shipping'),
(3, 'localPickup', 0, 0, 'local_pickup'),
(4, 'flateRate', 1, 1, 'flate_rate'),
(5, 'shippingByWeight', 0, 1, 'shipping_by_weight');

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
(1, 'ewgrege', '', 5, '169', '', '', '2020-07-08 00:00:00', '2019-09-08 18:44:49', 1, 'product', NULL, 1),
(2, 'frgergege', '', 5, '199', '', '', '2020-10-14 00:00:00', '2019-09-08 18:45:10', 1, 'product', NULL, 1),
(3, 'dgdthrh', '', 5, '235', '', '', '2019-09-18 00:00:00', '2019-09-08 18:45:40', 1, 'product', NULL, 1),
(4, 'sdasdasdass', '', 1, '128', '', '', '2020-07-15 00:00:00', '2019-09-10 08:26:49', 1, 'product', NULL, 1),
(5, 'fdsfds', '', 1, '132', '', '', '2020-08-14 00:00:00', '2019-09-10 08:27:04', 1, 'product', NULL, 1),
(6, 'fsfsfsfss', '', 1, '126', '', '', '2030-01-30 00:00:00', '2019-09-10 08:27:21', 1, 'product', NULL, 1),
(7, 'fdssdfsf', '', 2, '108', '', '', '2020-11-19 00:00:00', '2019-09-10 08:28:18', 1, 'product', NULL, 1),
(8, 'dasdada', '', 2, '108', '', '', '2021-07-14 00:00:00', '2019-09-10 08:28:31', 1, 'product', NULL, 1),
(9, 'dad', '', 2, '108', '', '', '2020-06-24 00:00:00', '2019-09-10 08:28:49', 1, 'product', NULL, 1),
(10, 'daadsd', '', 3, '110', '', '', '2021-10-20 00:00:00', '2019-09-10 08:29:41', 1, 'product', NULL, 1),
(11, 'sasdasd', '', 3, '110', '', '', '2020-07-15 00:00:00', '2019-09-10 08:29:58', 1, 'product', NULL, 1),
(12, 'ewef', '', 3, '110', '', '', '2021-07-15 00:00:00', '2019-09-10 08:30:13', 1, 'product', NULL, 1),
(13, 'fvtrgr', '', 4, '109', '', '', '2021-06-15 00:00:00', '2019-09-10 12:29:16', 1, 'product', NULL, 1),
(14, 't4tt', '', 4, '109', '', '', '2021-10-25 00:00:00', '2019-09-10 12:29:33', 1, 'product', NULL, 1),
(15, '4t4t4', '', 4, '109', '', '', '2022-07-07 00:00:00', '2019-09-10 12:29:50', 1, 'product', NULL, 1),
(16, 'ewgrege', '', 5, '230', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(17, 'frgergege', '', 5, '219', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(18, 'dgdthrh', '', 5, '226', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(19, 'sdasdasdass', '', 1, '224', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(20, 'fdsfds', '', 1, '227', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(21, 'fsfsfsfss', '', 1, '232', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(22, 'fdssdfsf', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(23, 'dasdada', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(24, 'dad', '', 2, '108', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(25, 'daadsd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(26, 'sasdasd', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(27, 'ewef', '', 3, '110', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(28, 'fvtrgr', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(29, 't4tt', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2),
(30, '4t4t4', '', 4, '109', '', '', '0000-00-00 00:00:00', '2019-10-11 06:51:42', 1, 'product', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `specials`
--

CREATE TABLE `specials` (
  `specials_id` int(11) NOT NULL,
  `products_id` int(11) NOT NULL,
  `specials_new_products_price` decimal(15,2) NOT NULL,
  `specials_date_added` int(11) NOT NULL,
  `specials_last_modified` int(11) NOT NULL,
  `expires_date` int(11) NOT NULL,
  `date_status_change` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_class`
--

CREATE TABLE `tax_class` (
  `tax_class_id` int(11) NOT NULL,
  `tax_class_title` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_description` text COLLATE utf8mb4_unicode_ci,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `tax_rates_id` int(11) NOT NULL,
  `tax_zone_id` int(11) NOT NULL,
  `tax_class_id` int(11) NOT NULL,
  `tax_priority` int(11) DEFAULT '1',
  `tax_rate` decimal(7,2) NOT NULL,
  `tax_description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `top_offers`
--

CREATE TABLE `top_offers` (
  `top_offers_id` int(11) NOT NULL,
  `top_offers_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `language_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `top_offers`
--

INSERT INTO `top_offers` (`top_offers_id`, `top_offers_text`, `language_id`, `created_at`, `updated_at`) VALUES
(1, '<p>Get<strong> UPTO 40% OFF </strong>on your 1st order <strong> <a href=\\\"#\\\"> More details </a> </strong></p>', 1, '2020-04-09 09:24:09', '2020-04-10 09:47:59'),
(2, '<p>احصل علي <strong> عروض رمضان و خصم 40% </strong>علي طلبك الاول  <strong> <a href=\\\"#\\\">  اضغط هنا للتفاصيل </a> </strong></p>', 2, '2020-04-09 09:24:09', '2020-04-10 09:47:59');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `unit_id` int(10) UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`unit_id`, `is_active`, `date_added`, `last_modified`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL, '2019-01-01 06:04:18', '2019-01-01 06:04:18'),
(2, 1, NULL, NULL, '2019-01-01 06:04:18', '2019-01-01 06:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `units_descriptions`
--

CREATE TABLE `units_descriptions` (
  `units_description_id` int(10) UNSIGNED NOT NULL,
  `units_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `languages_id` int(11) NOT NULL,
  `unit_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units_descriptions`
--

INSERT INTO `units_descriptions` (`units_description_id`, `units_name`, `languages_id`, `unit_id`, `created_at`, `updated_at`) VALUES
(1, 'Gram', 1, 1, '2019-01-01 06:04:18', '2019-01-01 06:04:18'),
(2, 'غرام', 2, 1, '2019-01-01 06:04:18', '2019-01-01 06:04:18'),
(3, 'Kilogram', 1, 2, '2019-01-01 06:04:18', '2019-01-01 06:04:18'),
(4, 'كيلوغرام', 2, 2, '2019-01-01 06:04:18', '2019-01-01 06:04:18');

-- --------------------------------------------------------

--
-- Table structure for table `ups_shipping`
--

CREATE TABLE `ups_shipping` (
  `ups_id` int(11) NOT NULL,
  `pickup_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `isDisplayCal` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `serviceType` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shippingEnvironment` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `person_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_line_2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_of_package` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_height` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parcel_width` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ups_shipping`
--

INSERT INTO `ups_shipping` (`ups_id`, `pickup_method`, `isDisplayCal`, `serviceType`, `shippingEnvironment`, `user_name`, `access_key`, `password`, `person_name`, `company_name`, `phone_number`, `address_line_1`, `address_line_2`, `country`, `state`, `post_code`, `city`, `no_of_package`, `parcel_height`, `parcel_width`, `title`) VALUES
(1, '07', '', 'US_01,US_02,US_03,US_12,US_13,US_14,US_59', '0', 'nyblueprint', 'FCD7C8F94CB5EF46', 'delfia11', '', '', '', 'D Ground', '', 'US', 'NY', '10312', 'New York City', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_address_id` int(11) NOT NULL DEFAULT '0',
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `is_seen` tinyint(1) NOT NULL DEFAULT '0',
  `phone_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auth_id_tiwilo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` varchar(33) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `user_name`, `first_name`, `last_name`, `gender`, `default_address_id`, `country_code`, `phone`, `email`, `password`, `avatar`, `status`, `is_seen`, `phone_verified`, `remember_token`, `auth_id_tiwilo`, `dob`, `created_at`, `updated_at`) VALUES
(1, 1, 'ahmed', 'yousry', 'yousry', NULL, 0, NULL, NULL, 'ayousry943@gmail.com', '$2y$10$T.8t5sqUQ.ktFFIq2f.hG.qRz5lpWBV/eVupNmo6/OHIu.FBNu/pe', NULL, '1', 0, NULL, NULL, NULL, NULL, '2020-04-08 10:09:43', '2020-04-08 10:09:43');

-- --------------------------------------------------------

--
-- Table structure for table `user_to_address`
--

CREATE TABLE `user_to_address` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address_book_id` int(11) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_types`
--

CREATE TABLE `user_types` (
  `user_types_id` int(11) NOT NULL,
  `user_types_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  `isActive` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_types`
--

INSERT INTO `user_types` (`user_types_id`, `user_types_name`, `created_at`, `updated_at`, `isActive`) VALUES
(1, 'Super Admin', 1534774230, NULL, 1),
(2, 'Customers', 1534777027, NULL, 1),
(3, 'Vendors', 1538390209, NULL, 1),
(4, 'Delivery Guy', 1542965906, NULL, 1),
(5, 'Test 1', 1542965906, NULL, 1),
(6, 'Test 2', 1542965906, NULL, 1),
(7, 'Test 3', 1542965906, NULL, 1),
(8, 'Test 4', 1542965906, NULL, 1),
(9, 'Test 5', 1542965906, NULL, 1),
(10, 'Test 6', 1542965906, NULL, 1),
(11, 'seller', 1586694541, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `whos_online`
--

CREATE TABLE `whos_online` (
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_id` varchar(128) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_entry` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time_last_click` varchar(14) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_page_url` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zones`
--

CREATE TABLE `zones` (
  `zone_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_code` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `zones`
--

INSERT INTO `zones` (`zone_id`, `zone_country_id`, `zone_code`, `zone_name`) VALUES
(1, 223, 'AL', 'Alabama'),
(2, 223, 'AK', 'Alaska'),
(3, 223, 'AS', 'American Samoa'),
(4, 223, 'AZ', 'Arizona'),
(5, 223, 'AR', 'Arkansas'),
(6, 223, 'AF', 'Armed Forces Africa'),
(7, 223, 'AA', 'Armed Forces Americas'),
(8, 223, 'AC', 'Armed Forces Canada'),
(9, 223, 'AE', 'Armed Forces Europe'),
(10, 223, 'AM', 'Armed Forces Middle East'),
(11, 223, 'AP', 'Armed Forces Pacific'),
(12, 223, 'CA', 'California'),
(13, 223, 'CO', 'Colorado'),
(14, 223, 'CT', 'Connecticut'),
(15, 223, 'DE', 'Delaware'),
(16, 223, 'DC', 'District of Columbia'),
(17, 223, 'FM', 'Federated States Of Micronesia'),
(18, 223, 'FL', 'Florida'),
(19, 223, 'GA', 'Georgia'),
(20, 223, 'GU', 'Guam'),
(21, 223, 'HI', 'Hawaii'),
(22, 223, 'ID', 'Idaho'),
(23, 223, 'IL', 'Illinois'),
(24, 223, 'IN', 'Indiana'),
(25, 223, 'IA', 'Iowa'),
(26, 223, 'KS', 'Kansas'),
(27, 223, 'KY', 'Kentucky'),
(28, 223, 'LA', 'Louisiana'),
(29, 223, 'ME', 'Maine'),
(30, 223, 'MH', 'Marshall Islands'),
(31, 223, 'MD', 'Maryland'),
(32, 223, 'MA', 'Massachusetts'),
(33, 223, 'MI', 'Michigan'),
(34, 223, 'MN', 'Minnesota'),
(35, 223, 'MS', 'Mississippi'),
(36, 223, 'MO', 'Missouri'),
(37, 223, 'MT', 'Montana'),
(38, 223, 'NE', 'Nebraska'),
(39, 223, 'NV', 'Nevada'),
(40, 223, 'NH', 'New Hampshire'),
(41, 223, 'NJ', 'New Jersey'),
(42, 223, 'NM', 'New Mexico'),
(43, 223, 'NY', 'New York'),
(44, 223, 'NC', 'North Carolina'),
(45, 223, 'ND', 'North Dakota'),
(46, 223, 'MP', 'Northern Mariana Islands'),
(47, 223, 'OH', 'Ohio'),
(48, 223, 'OK', 'Oklahoma'),
(49, 223, 'OR', 'Oregon'),
(50, 223, 'PW', 'Palau'),
(51, 223, 'PA', 'Pennsylvania'),
(52, 223, 'PR', 'Puerto Rico'),
(53, 223, 'RI', 'Rhode Island'),
(54, 223, 'SC', 'South Carolina'),
(55, 223, 'SD', 'South Dakota'),
(56, 223, 'TN', 'Tennessee'),
(57, 223, 'TX', 'Texas'),
(58, 223, 'UT', 'Utah'),
(59, 223, 'VT', 'Vermont'),
(60, 223, 'VI', 'Virgin Islands'),
(61, 223, 'VA', 'Virginia'),
(62, 223, 'WA', 'Washington'),
(63, 223, 'WV', 'West Virginia'),
(64, 223, 'WI', 'Wisconsin'),
(65, 223, 'WY', 'Wyoming'),
(66, 38, 'AB', 'Alberta'),
(67, 38, 'BC', 'British Columbia'),
(68, 38, 'MB', 'Manitoba'),
(69, 38, 'NF', 'Newfoundland'),
(70, 38, 'NB', 'New Brunswick'),
(71, 38, 'NS', 'Nova Scotia'),
(72, 38, 'NT', 'Northwest Territories'),
(73, 38, 'NU', 'Nunavut'),
(74, 38, 'ON', 'Ontario'),
(75, 38, 'PE', 'Prince Edward Island'),
(76, 38, 'QC', 'Quebec'),
(77, 38, 'SK', 'Saskatchewan'),
(78, 38, 'YT', 'Yukon Territory'),
(79, 81, 'NDS', 'Niedersachsen'),
(80, 81, 'BAW', 'Baden-Württemberg'),
(81, 81, 'BAY', 'Bayern'),
(82, 81, 'BER', 'Berlin'),
(83, 81, 'BRG', 'Brandenburg'),
(84, 81, 'BRE', 'Bremen'),
(85, 81, 'HAM', 'Hamburg'),
(86, 81, 'HES', 'Hessen'),
(87, 81, 'MEC', 'Mecklenburg-Vorpommern'),
(88, 81, 'NRW', 'Nordrhein-Westfalen'),
(89, 81, 'RHE', 'Rheinland-Pfalz'),
(90, 81, 'SAR', 'Saarland'),
(91, 81, 'SAS', 'Sachsen'),
(92, 81, 'SAC', 'Sachsen-Anhalt'),
(93, 81, 'SCN', 'Schleswig-Holstein'),
(94, 81, 'THE', 'Thüringen'),
(95, 14, 'WI', 'Wien'),
(96, 14, 'NO', 'Niederösterreich'),
(97, 14, 'OO', 'Oberösterreich'),
(98, 14, 'SB', 'Salzburg'),
(99, 14, 'KN', 'Kärnten'),
(100, 14, 'ST', 'Steiermark'),
(101, 14, 'TI', 'Tirol'),
(102, 14, 'BL', 'Burgenland'),
(103, 14, 'VB', 'Voralberg'),
(104, 204, 'AG', 'Aargau'),
(105, 204, 'AI', 'Appenzell Innerrhoden'),
(106, 204, 'AR', 'Appenzell Ausserrhoden'),
(107, 204, 'BE', 'Bern'),
(108, 204, 'BL', 'Basel-Landschaft'),
(109, 204, 'BS', 'Basel-Stadt'),
(110, 204, 'FR', 'Freiburg'),
(111, 204, 'GE', 'Genf'),
(112, 204, 'GL', 'Glarus'),
(113, 204, 'JU', 'Graubünden'),
(114, 204, 'JU', 'Jura'),
(115, 204, 'LU', 'Luzern'),
(116, 204, 'NE', 'Neuenburg'),
(117, 204, 'NW', 'Nidwalden'),
(118, 204, 'OW', 'Obwalden'),
(119, 204, 'SG', 'St. Gallen'),
(120, 204, 'SH', 'Schaffhausen'),
(121, 204, 'SO', 'Solothurn'),
(122, 204, 'SZ', 'Schwyz'),
(123, 204, 'TG', 'Thurgau'),
(124, 204, 'TI', 'Tessin'),
(125, 204, 'UR', 'Uri'),
(126, 204, 'VD', 'Waadt'),
(127, 204, 'VS', 'Wallis'),
(128, 204, 'ZG', 'Zug'),
(129, 204, 'ZH', 'Zürich'),
(130, 195, 'A Coruña', 'A Coruña'),
(131, 195, 'Alava', 'Alava'),
(132, 195, 'Albacete', 'Albacete'),
(133, 195, 'Alicante', 'Alicante'),
(134, 195, 'Almeria', 'Almeria'),
(135, 195, 'Asturias', 'Asturias'),
(136, 195, 'Avila', 'Avila'),
(137, 195, 'Badajoz', 'Badajoz'),
(138, 195, 'Baleares', 'Baleares'),
(139, 195, 'Barcelona', 'Barcelona'),
(140, 195, 'Burgos', 'Burgos'),
(141, 195, 'Caceres', 'Caceres'),
(142, 195, 'Cadiz', 'Cadiz'),
(143, 195, 'Cantabria', 'Cantabria'),
(144, 195, 'Castellon', 'Castellon'),
(145, 195, 'Ceuta', 'Ceuta'),
(146, 195, 'Ciudad Real', 'Ciudad Real'),
(147, 195, 'Cordoba', 'Cordoba'),
(148, 195, 'Cuenca', 'Cuenca'),
(149, 195, 'Girona', 'Girona'),
(150, 195, 'Granada', 'Granada'),
(151, 195, 'Guadalajara', 'Guadalajara'),
(152, 195, 'Guipuzcoa', 'Guipuzcoa'),
(153, 195, 'Huelva', 'Huelva'),
(154, 195, 'Huesca', 'Huesca'),
(155, 195, 'Jaen', 'Jaen'),
(156, 195, 'La Rioja', 'La Rioja'),
(157, 195, 'Las Palmas', 'Las Palmas'),
(158, 195, 'Leon', 'Leon'),
(159, 195, 'Lleida', 'Lleida'),
(160, 195, 'Lugo', 'Lugo'),
(161, 195, 'Madrid', 'Madrid'),
(162, 195, 'Malaga', 'Malaga'),
(163, 195, 'Melilla', 'Melilla'),
(164, 195, 'Murcia', 'Murcia'),
(165, 195, 'Navarra', 'Navarra'),
(166, 195, 'Ourense', 'Ourense'),
(167, 195, 'Palencia', 'Palencia'),
(168, 195, 'Pontevedra', 'Pontevedra'),
(169, 195, 'Salamanca', 'Salamanca'),
(170, 195, 'Santa Cruz de Tenerife', 'Santa Cruz de Tenerife'),
(171, 195, 'Segovia', 'Segovia'),
(172, 195, 'Sevilla', 'Sevilla'),
(173, 195, 'Soria', 'Soria'),
(174, 195, 'Tarragona', 'Tarragona'),
(175, 195, 'Teruel', 'Teruel'),
(176, 195, 'Toledo', 'Toledo'),
(177, 195, 'Valencia', 'Valencia'),
(178, 195, 'Valladolid', 'Valladolid'),
(179, 195, 'Vizcaya', 'Vizcaya'),
(180, 195, 'Zamora', 'Zamora'),
(181, 195, 'Zaragoza', 'Zaragoza');

-- --------------------------------------------------------

--
-- Table structure for table `zones_to_geo_zones`
--

CREATE TABLE `zones_to_geo_zones` (
  `association_id` int(11) NOT NULL,
  `zone_country_id` int(11) NOT NULL,
  `zone_id` int(11) DEFAULT NULL,
  `geo_zone_id` int(11) DEFAULT NULL,
  `last_modified` datetime DEFAULT NULL,
  `date_added` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address_book`
--
ALTER TABLE `address_book`
  ADD PRIMARY KEY (`address_book_id`),
  ADD KEY `idx_address_book_customers_id` (`user_id`);

--
-- Indexes for table `alert_settings`
--
ALTER TABLE `alert_settings`
  ADD PRIMARY KEY (`alert_id`);

--
-- Indexes for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`banners_id`),
  ADD KEY `idx_banners_group` (`banners_group`);

--
-- Indexes for table `banners_history`
--
ALTER TABLE `banners_history`
  ADD PRIMARY KEY (`banners_history_id`),
  ADD KEY `idx_banners_history_banners_id` (`banners_id`);

--
-- Indexes for table `block_ips`
--
ALTER TABLE `block_ips`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `categories_description`
--
ALTER TABLE `categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `categories_role`
--
ALTER TABLE `categories_role`
  ADD PRIMARY KEY (`categories_role_id`);

--
-- Indexes for table `compare`
--
ALTER TABLE `compare`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `constant_banners`
--
ALTER TABLE `constant_banners`
  ADD PRIMARY KEY (`banners_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`countries_id`),
  ADD KEY `IDX_COUNTRIES_NAME` (`countries_name`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`coupans_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_currencies_code` (`code`);

--
-- Indexes for table `currency_record`
--
ALTER TABLE `currency_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_theme`
--
ALTER TABLE `current_theme`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customers_id`);

--
-- Indexes for table `customers_basket`
--
ALTER TABLE `customers_basket`
  ADD PRIMARY KEY (`customers_basket_id`),
  ADD KEY `idx_customers_basket_customers_id` (`customers_id`);

--
-- Indexes for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  ADD PRIMARY KEY (`customers_basket_attributes_id`),
  ADD KEY `idx_customers_basket_att_customers_id` (`customers_id`);

--
-- Indexes for table `customers_info`
--
ALTER TABLE `customers_info`
  ADD PRIMARY KEY (`customers_info_id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flash_sale`
--
ALTER TABLE `flash_sale`
  ADD PRIMARY KEY (`flash_sale_id`),
  ADD KEY `products_id` (`products_id`);

--
-- Indexes for table `flate_rate`
--
ALTER TABLE `flate_rate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `geo_zones`
--
ALTER TABLE `geo_zones`
  ADD PRIMARY KEY (`geo_zone_id`);

--
-- Indexes for table `home_banners`
--
ALTER TABLE `home_banners`
  ADD PRIMARY KEY (`home_banners_id`);

--
-- Indexes for table `http_call_record`
--
ALTER TABLE `http_call_record`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_categories`
--
ALTER TABLE `image_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`inventory_ref_id`);

--
-- Indexes for table `labels`
--
ALTER TABLE `labels`
  ADD PRIMARY KEY (`label_id`);

--
-- Indexes for table `label_value`
--
ALTER TABLE `label_value`
  ADD PRIMARY KEY (`label_value_id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`languages_id`),
  ADD KEY `IDX_LANGUAGES_NAME` (`name`);

--
-- Indexes for table `liked_products`
--
ALTER TABLE `liked_products`
  ADD PRIMARY KEY (`like_id`);

--
-- Indexes for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  ADD PRIMARY KEY (`min_max_id`);

--
-- Indexes for table `manage_role`
--
ALTER TABLE `manage_role`
  ADD PRIMARY KEY (`manage_role_id`);

--
-- Indexes for table `manufacturers`
--
ALTER TABLE `manufacturers`
  ADD PRIMARY KEY (`manufacturers_id`);

--
-- Indexes for table `manufacturers_info`
--
ALTER TABLE `manufacturers_info`
  ADD PRIMARY KEY (`manufacturers_id`,`languages_id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_translation`
--
ALTER TABLE `menu_translation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`news_id`),
  ADD KEY `idx_products_date_added` (`news_date_added`);

--
-- Indexes for table `news_categories`
--
ALTER TABLE `news_categories`
  ADD PRIMARY KEY (`categories_id`),
  ADD KEY `idx_categories_parent_id` (`parent_id`);

--
-- Indexes for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  ADD PRIMARY KEY (`categories_description_id`),
  ADD KEY `idx_categories_name` (`categories_name`);

--
-- Indexes for table `news_description`
--
ALTER TABLE `news_description`
  ADD KEY `products_name` (`news_name`);

--
-- Indexes for table `news_to_news_categories`
--
ALTER TABLE `news_to_news_categories`
  ADD PRIMARY KEY (`news_id`,`categories_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orders_id`),
  ADD KEY `idx_orders_customers_id` (`customers_id`);

--
-- Indexes for table `orders_products`
--
ALTER TABLE `orders_products`
  ADD PRIMARY KEY (`orders_products_id`),
  ADD KEY `idx_orders_products_orders_id` (`orders_id`),
  ADD KEY `idx_orders_products_products_id` (`products_id`);

--
-- Indexes for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  ADD PRIMARY KEY (`orders_products_attributes_id`),
  ADD KEY `idx_orders_products_att_orders_id` (`orders_id`);

--
-- Indexes for table `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`orders_status_id`);

--
-- Indexes for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  ADD PRIMARY KEY (`orders_status_description_id`);

--
-- Indexes for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  ADD PRIMARY KEY (`orders_status_history_id`),
  ADD KEY `idx_orders_status_history_orders_id` (`orders_id`);

--
-- Indexes for table `orders_total`
--
ALTER TABLE `orders_total`
  ADD PRIMARY KEY (`orders_total_id`),
  ADD KEY `idx_orders_total_orders_id` (`orders_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`page_id`);

--
-- Indexes for table `pages_description`
--
ALTER TABLE `pages_description`
  ADD PRIMARY KEY (`page_description_id`);

--
-- Indexes for table `payment_description`
--
ALTER TABLE `payment_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_methods_id`);

--
-- Indexes for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`products_id`),
  ADD KEY `idx_products_model` (`products_model`),
  ADD KEY `idx_products_date_added` (`products_date_added`);

--
-- Indexes for table `products_attributes`
--
ALTER TABLE `products_attributes`
  ADD PRIMARY KEY (`products_attributes_id`),
  ADD KEY `idx_products_attributes_products_id` (`products_id`);

--
-- Indexes for table `products_description`
--
ALTER TABLE `products_description`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_name` (`products_name`);

--
-- Indexes for table `products_images`
--
ALTER TABLE `products_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_images_prodid` (`products_id`);

--
-- Indexes for table `products_options`
--
ALTER TABLE `products_options`
  ADD PRIMARY KEY (`products_options_id`);

--
-- Indexes for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  ADD PRIMARY KEY (`products_options_descriptions_id`);

--
-- Indexes for table `products_options_values`
--
ALTER TABLE `products_options_values`
  ADD PRIMARY KEY (`products_options_values_id`);

--
-- Indexes for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  ADD PRIMARY KEY (`products_options_values_descriptions_id`);

--
-- Indexes for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  ADD PRIMARY KEY (`products_shipping_rates_id`);

--
-- Indexes for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  ADD PRIMARY KEY (`products_to_categories_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`reviews_id`),
  ADD KEY `idx_reviews_products_id` (`products_id`),
  ADD KEY `idx_reviews_customers_id` (`customers_id`);

--
-- Indexes for table `reviews_description`
--
ALTER TABLE `reviews_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`sesskey`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_name_unique` (`name`);

--
-- Indexes for table `shipping_description`
--
ALTER TABLE `shipping_description`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  ADD PRIMARY KEY (`shipping_methods_id`);

--
-- Indexes for table `sliders_images`
--
ALTER TABLE `sliders_images`
  ADD PRIMARY KEY (`sliders_id`);

--
-- Indexes for table `specials`
--
ALTER TABLE `specials`
  ADD PRIMARY KEY (`specials_id`),
  ADD KEY `idx_specials_products_id` (`products_id`);

--
-- Indexes for table `tax_class`
--
ALTER TABLE `tax_class`
  ADD PRIMARY KEY (`tax_class_id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`tax_rates_id`);

--
-- Indexes for table `top_offers`
--
ALTER TABLE `top_offers`
  ADD PRIMARY KEY (`top_offers_id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`unit_id`);

--
-- Indexes for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  ADD PRIMARY KEY (`units_description_id`);

--
-- Indexes for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  ADD PRIMARY KEY (`ups_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_to_address`
--
ALTER TABLE `user_to_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_types`
--
ALTER TABLE `user_types`
  ADD PRIMARY KEY (`user_types_id`);

--
-- Indexes for table `whos_online`
--
ALTER TABLE `whos_online`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `zones`
--
ALTER TABLE `zones`
  ADD PRIMARY KEY (`zone_id`),
  ADD KEY `idx_zones_country_id` (`zone_country_id`);

--
-- Indexes for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  ADD PRIMARY KEY (`association_id`),
  ADD KEY `idx_zones_to_geo_zones_country_id` (`zone_country_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address_book`
--
ALTER TABLE `address_book`
  MODIFY `address_book_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `alert_settings`
--
ALTER TABLE `alert_settings`
  MODIFY `alert_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `api_calls_list`
--
ALTER TABLE `api_calls_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `banners_history`
--
ALTER TABLE `banners_history`
  MODIFY `banners_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `block_ips`
--
ALTER TABLE `block_ips`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=481;
--
-- AUTO_INCREMENT for table `categories_description`
--
ALTER TABLE `categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=961;
--
-- AUTO_INCREMENT for table `categories_role`
--
ALTER TABLE `categories_role`
  MODIFY `categories_role_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `compare`
--
ALTER TABLE `compare`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `constant_banners`
--
ALTER TABLE `constant_banners`
  MODIFY `banners_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `countries_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;
--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `coupans_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `currency_record`
--
ALTER TABLE `currency_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=171;
--
-- AUTO_INCREMENT for table `current_theme`
--
ALTER TABLE `current_theme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customers_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket`
--
ALTER TABLE `customers_basket`
  MODIFY `customers_basket_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `customers_basket_attributes`
--
ALTER TABLE `customers_basket_attributes`
  MODIFY `customers_basket_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flash_sale`
--
ALTER TABLE `flash_sale`
  MODIFY `flash_sale_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `flate_rate`
--
ALTER TABLE `flate_rate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `front_end_theme_content`
--
ALTER TABLE `front_end_theme_content`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `geo_zones`
--
ALTER TABLE `geo_zones`
  MODIFY `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `home_banners`
--
ALTER TABLE `home_banners`
  MODIFY `home_banners_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `http_call_record`
--
ALTER TABLE `http_call_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=244;
--
-- AUTO_INCREMENT for table `image_categories`
--
ALTER TABLE `image_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=614;
--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `inventory_ref_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `labels`
--
ALTER TABLE `labels`
  MODIFY `label_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1099;
--
-- AUTO_INCREMENT for table `label_value`
--
ALTER TABLE `label_value`
  MODIFY `label_value_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1640;
--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `languages_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `liked_products`
--
ALTER TABLE `liked_products`
  MODIFY `like_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manage_min_max`
--
ALTER TABLE `manage_min_max`
  MODIFY `min_max_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `manage_role`
--
ALTER TABLE `manage_role`
  MODIFY `manage_role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `manufacturers`
--
ALTER TABLE `manufacturers`
  MODIFY `manufacturers_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `menu_translation`
--
ALTER TABLE `menu_translation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=90;
--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `news_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_categories`
--
ALTER TABLE `news_categories`
  MODIFY `categories_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `news_categories_description`
--
ALTER TABLE `news_categories_description`
  MODIFY `categories_description_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orders_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products`
--
ALTER TABLE `orders_products`
  MODIFY `orders_products_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_products_attributes`
--
ALTER TABLE `orders_products_attributes`
  MODIFY `orders_products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `orders_status_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders_status_description`
--
ALTER TABLE `orders_status_description`
  MODIFY `orders_status_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `orders_status_history`
--
ALTER TABLE `orders_status_history`
  MODIFY `orders_status_history_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders_total`
--
ALTER TABLE `orders_total`
  MODIFY `orders_total_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `page_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pages_description`
--
ALTER TABLE `pages_description`
  MODIFY `page_description_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `payment_description`
--
ALTER TABLE `payment_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `payment_methods_detail`
--
ALTER TABLE `payment_methods_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `products_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_attributes`
--
ALTER TABLE `products_attributes`
  MODIFY `products_attributes_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `products_description`
--
ALTER TABLE `products_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products_images`
--
ALTER TABLE `products_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_options`
--
ALTER TABLE `products_options`
  MODIFY `products_options_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_options_descriptions`
--
ALTER TABLE `products_options_descriptions`
  MODIFY `products_options_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products_options_values`
--
ALTER TABLE `products_options_values`
  MODIFY `products_options_values_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `products_options_values_descriptions`
--
ALTER TABLE `products_options_values_descriptions`
  MODIFY `products_options_values_descriptions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `products_shipping_rates`
--
ALTER TABLE `products_shipping_rates`
  MODIFY `products_shipping_rates_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products_to_categories`
--
ALTER TABLE `products_to_categories`
  MODIFY `products_to_categories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `reviews_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reviews_description`
--
ALTER TABLE `reviews_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;
--
-- AUTO_INCREMENT for table `shipping_description`
--
ALTER TABLE `shipping_description`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `shipping_methods`
--
ALTER TABLE `shipping_methods`
  MODIFY `shipping_methods_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `sliders_images`
--
ALTER TABLE `sliders_images`
  MODIFY `sliders_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `specials`
--
ALTER TABLE `specials`
  MODIFY `specials_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_class`
--
ALTER TABLE `tax_class`
  MODIFY `tax_class_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `tax_rates_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `top_offers`
--
ALTER TABLE `top_offers`
  MODIFY `top_offers_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `unit_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `units_descriptions`
--
ALTER TABLE `units_descriptions`
  MODIFY `units_description_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `ups_shipping`
--
ALTER TABLE `ups_shipping`
  MODIFY `ups_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_to_address`
--
ALTER TABLE `user_to_address`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user_types`
--
ALTER TABLE `user_types`
  MODIFY `user_types_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `zones`
--
ALTER TABLE `zones`
  MODIFY `zone_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
--
-- AUTO_INCREMENT for table `zones_to_geo_zones`
--
ALTER TABLE `zones_to_geo_zones`
  MODIFY `association_id` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
