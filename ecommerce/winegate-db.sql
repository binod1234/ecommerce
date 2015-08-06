-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2015 at 08:15 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `winegate-db`
--
CREATE DATABASE IF NOT EXISTS `u568377051_wint` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `winegate-db`;

-- --------------------------------------------------------

--
-- Table structure for table `wg_address`
--

CREATE TABLE IF NOT EXISTS `wg_address` (
  `address_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `address1` varchar(100) NOT NULL,
  `address2` varchar(100) NOT NULL,
  `city` varchar(20) NOT NULL,
  `county` varchar(20) NOT NULL,
  `post_code` varchar(20) NOT NULL,
  PRIMARY KEY (`address_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wg_address`
--

INSERT INTO `wg_address` (`address_id`, `order_id`, `address1`, `address2`, `city`, `county`, `post_code`) VALUES
(1, 1, 'TEST', 'TESET', 'TEST', 'Greater London', '00987'),
(2, 2, 'TEST', 'TESET', 'TEST', 'Greater London', '00987');

-- --------------------------------------------------------

--
-- Table structure for table `wg_admin`
--

CREATE TABLE IF NOT EXISTS `wg_admin` (
  `admin_id` int(4) NOT NULL AUTO_INCREMENT,
  `username` varchar(15) NOT NULL DEFAULT '',
  `password` varchar(15) NOT NULL DEFAULT '',
  UNIQUE KEY `admin_id` (`admin_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `wg_admin`
--

INSERT INTO `wg_admin` (`admin_id`, `username`, `password`) VALUES
(4, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `wg_cart`
--

CREATE TABLE IF NOT EXISTS `wg_cart` (
  `cart_id` int(10) NOT NULL AUTO_INCREMENT,
  `cart_session` varchar(100) NOT NULL DEFAULT '',
  `item_id` int(10) NOT NULL DEFAULT '0',
  `item_price` float NOT NULL DEFAULT '0',
  `item_name` varchar(100) NOT NULL DEFAULT '',
  `item_quantity` int(2) NOT NULL DEFAULT '1',
  `item_total_price` float NOT NULL DEFAULT '0',
  `item_image` varchar(100) NOT NULL,
  `cart_status` varchar(10) NOT NULL,
  `order_id` varchar(10) NOT NULL,
  PRIMARY KEY (`cart_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=160 ;

--
-- Dumping data for table `wg_cart`
--

INSERT INTO `wg_cart` (`cart_id`, `cart_session`, `item_id`, `item_price`, `item_name`, `item_quantity`, `item_total_price`, `item_image`, `cart_status`, `order_id`) VALUES
(158, '4dsr139k5ho4o4q0gtmjd8mmh5', 1, 1000, 'test Product', 3, 3000, 'images/uploads/test_Product_1_small..jpg', 'saved', '1'),
(159, 'oi4j7l3nsn4kduindmulgvqo34', 5, 1200, 'Product 3', 3, 3600, 'images/uploads/Product_3_5_small..jpg', 'saved', '2');

-- --------------------------------------------------------

--
-- Table structure for table `wg_categories`
--

CREATE TABLE IF NOT EXISTS `wg_categories` (
  `cat_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `cat_name` varchar(30) NOT NULL DEFAULT '',
  `status` varchar(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`cat_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=57 ;

--
-- Dumping data for table `wg_categories`
--

INSERT INTO `wg_categories` (`cat_id`, `cat_name`, `status`) VALUES
(55, 'test', '1'),
(56, 'test1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `wg_cities`
--

CREATE TABLE IF NOT EXISTS `wg_cities` (
  `city_id` int(11) NOT NULL AUTO_INCREMENT,
  `city_name` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`city_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=357 ;

-- --------------------------------------------------------

--
-- Table structure for table `wg_items`
--

CREATE TABLE IF NOT EXISTS `wg_items` (
  `cat_id` int(10) NOT NULL DEFAULT '0',
  `item_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `item_name` varchar(250) NOT NULL DEFAULT '',
  `item_price` float NOT NULL DEFAULT '0',
  `item_desc` text NOT NULL,
  `item_status` tinyint(1) NOT NULL DEFAULT '0',
  `thumbnail` varchar(100) NOT NULL DEFAULT '',
  `big_image` varchar(100) NOT NULL DEFAULT '',
  `medium_image` varchar(100) NOT NULL,
  `item_stock` int(10) NOT NULL,
  PRIMARY KEY (`item_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=35 ;

--
-- Dumping data for table `wg_items`
--

INSERT INTO `wg_items` (`cat_id`, `item_id`, `item_name`, `item_price`, `item_desc`, `item_status`, `thumbnail`, `big_image`, `medium_image`, `item_stock`) VALUES
(56, 1, 'test Product', 1000, 'asdfasdf', 0, 'images/uploads/test_Product_1_small..jpg', 'images/uploads/test_Product_1..jpg', 'images/uploads/test_Product_1_med..jpg', 10),
(55, 2, 'Check 1', 1200, 'asdfasdf', 0, 'images/uploads/Check_1_2_small..jpg', 'images/uploads/Check_1_2..jpg', 'images/uploads/Check_1_2_med..jpg', 12),
(55, 3, 'another 1', 1000, 'asdfasdf', 0, 'images/uploads/another_1_3_small..jpg', 'images/uploads/another_1_3..jpg', 'images/uploads/another_1_3_med..jpg', 1),
(55, 4, 'Product 1', 1200, 'asdfasdf', 0, 'images/uploads/Product_1_4_small..jpg', 'images/uploads/Product_1_4..jpg', 'images/uploads/Product_1_4_med..jpg', 1111),
(55, 5, 'Product 3', 1200, 'dddd', 0, 'images/uploads/Product_3_5_small..jpg', 'images/uploads/Product_3_5..jpg', 'images/uploads/Product_3_5_med..jpg', 12),
(55, 6, 'Product 4', 2100, 'sadfasd', 0, 'images/uploads/Product_4_6_small..jpg', 'images/uploads/Product_4_6..jpg', 'images/uploads/Product_4_6_med..jpg', 12),
(55, 7, 'Product 5', 1200, 'sdfsdf', 0, 'images/uploads/Product_5_7_small..jpg', 'images/uploads/Product_5_7..jpg', 'images/uploads/Product_5_7_med..jpg', 1),
(55, 8, 'Product 6', 12, 'asdfasd', 0, 'images/uploads/Product_6_8_small..jpg', 'images/uploads/Product_6_8..jpg', 'images/uploads/Product_6_8_med..jpg', 12),
(55, 9, 'Product 7', 1200, 'asdfsd', 0, 'images/uploads/Product_7_9_small..jpg', 'images/uploads/Product_7_9..jpg', 'images/uploads/Product_7_9_med..jpg', 1),
(55, 10, 'Product 9', 1200, 'sdsdf', 0, 'images/uploads/Product_9_10_small..jpg', 'images/uploads/Product_9_10..jpg', 'images/uploads/Product_9_10_med..jpg', 12),
(55, 11, 'Product 9', 1200, 'sdsdf', 0, 'images/uploads/Product_9_11_small..jpg', 'images/uploads/Product_9_11..jpg', 'images/uploads/Product_9_11_med..jpg', 12),
(55, 12, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_12_small..jpg', 'images/uploads/Product_10_12..jpg', 'images/uploads/Product_10_12_med..jpg', 12),
(55, 13, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_13_small..jpg', 'images/uploads/Product_10_13..jpg', 'images/uploads/Product_10_13_med..jpg', 12),
(55, 14, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_14_small..jpg', 'images/uploads/Product_10_14..jpg', 'images/uploads/Product_10_14_med..jpg', 12),
(55, 15, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_15_small..jpg', 'images/uploads/Product_10_15..jpg', 'images/uploads/Product_10_15_med..jpg', 12),
(55, 16, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_16_small..jpg', 'images/uploads/Product_10_16..jpg', 'images/uploads/Product_10_16_med..jpg', 12),
(55, 17, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_17_small..jpg', 'images/uploads/Product_10_17..jpg', 'images/uploads/Product_10_17_med..jpg', 12),
(55, 18, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_18_small..jpg', 'images/uploads/Product_10_18..jpg', 'images/uploads/Product_10_18_med..jpg', 12),
(55, 19, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_19_small..jpg', 'images/uploads/Product_10_19..jpg', 'images/uploads/Product_10_19_med..jpg', 12),
(55, 20, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_20_small..jpg', 'images/uploads/Product_10_20..jpg', 'images/uploads/Product_10_20_med..jpg', 12),
(55, 21, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_21_small..jpg', 'images/uploads/Product_10_21..jpg', 'images/uploads/Product_10_21_med..jpg', 12),
(55, 22, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_22_small..jpg', 'images/uploads/Product_10_22..jpg', 'images/uploads/Product_10_22_med..jpg', 12),
(55, 23, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_23_small..jpg', 'images/uploads/Product_10_23..jpg', 'images/uploads/Product_10_23_med..jpg', 12),
(55, 24, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_24_small..jpg', 'images/uploads/Product_10_24..jpg', 'images/uploads/Product_10_24_med..jpg', 12),
(55, 25, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_25_small..jpg', 'images/uploads/Product_10_25..jpg', 'images/uploads/Product_10_25_med..jpg', 12),
(55, 26, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_26_small..jpg', 'images/uploads/Product_10_26..jpg', 'images/uploads/Product_10_26_med..jpg', 12),
(55, 27, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_27_small..jpg', 'images/uploads/Product_10_27..jpg', 'images/uploads/Product_10_27_med..jpg', 12),
(55, 28, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_28_small..jpg', 'images/uploads/Product_10_28..jpg', 'images/uploads/Product_10_28_med..jpg', 12),
(55, 29, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_29_small..jpg', 'images/uploads/Product_10_29..jpg', 'images/uploads/Product_10_29_med..jpg', 12),
(55, 30, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_30_small..jpg', 'images/uploads/Product_10_30..jpg', 'images/uploads/Product_10_30_med..jpg', 12),
(55, 31, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_31_small..jpg', 'images/uploads/Product_10_31..jpg', 'images/uploads/Product_10_31_med..jpg', 12),
(55, 32, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_32_small..jpg', 'images/uploads/Product_10_32..jpg', 'images/uploads/Product_10_32_med..jpg', 12),
(55, 33, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_33_small..jpg', 'images/uploads/Product_10_33..jpg', 'images/uploads/Product_10_33_med..jpg', 12),
(55, 34, 'Product 10', 12, 'sdfsdf', 0, 'images/uploads/Product_10_34_small..jpg', 'images/uploads/Product_10_34..jpg', 'images/uploads/Product_10_34_med..jpg', 12);

-- --------------------------------------------------------

--
-- Table structure for table `wg_orders`
--

CREATE TABLE IF NOT EXISTS `wg_orders` (
  `order_id` int(10) NOT NULL AUTO_INCREMENT,
  `cart_session` varchar(100) NOT NULL,
  `user_id` varchar(20) NOT NULL DEFAULT '0',
  `sub_total` varchar(10) NOT NULL,
  `vat` varchar(10) NOT NULL,
  `total_price` double NOT NULL DEFAULT '0',
  `order_date` varchar(50) NOT NULL DEFAULT '',
  `shipment_date` varchar(50) NOT NULL DEFAULT '',
  `order_status` varchar(15) NOT NULL DEFAULT 'New',
  `ipaddress` varchar(30) NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `wg_orders`
--

INSERT INTO `wg_orders` (`order_id`, `cart_session`, `user_id`, `sub_total`, `vat`, `total_price`, `order_date`, `shipment_date`, `order_status`, `ipaddress`) VALUES
(1, '4dsr139k5ho4o4q0gtmjd8mmh5', '1', '3000', '600', 3600, '2015-06-10 17:55:56', '', 'dispatched', '::1'),
(2, 'oi4j7l3nsn4kduindmulgvqo34', '1', '3600', '720', 4320, '2015-06-14 19:32:31', '', 'new', '::1');

-- --------------------------------------------------------

--
-- Table structure for table `wg_order_messages`
--

CREATE TABLE IF NOT EXISTS `wg_order_messages` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(10) NOT NULL,
  `message` text NOT NULL,
  `sender` varchar(10) NOT NULL,
  `sentdate` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1709 ;

-- --------------------------------------------------------

--
-- Table structure for table `wg_testimonials`
--

CREATE TABLE IF NOT EXISTS `wg_testimonials` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) NOT NULL,
  `country` varchar(30) NOT NULL,
  `totalorders` varchar(10) NOT NULL,
  `ratings` varchar(1) NOT NULL,
  `testimonial` text NOT NULL,
  `date` varchar(30) NOT NULL,
  `approved` varchar(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

-- --------------------------------------------------------

--
-- Table structure for table `wg_users`
--

CREATE TABLE IF NOT EXISTS `wg_users` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL DEFAULT '',
  `user_pass` varchar(10) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `date_joined` varchar(50) NOT NULL DEFAULT '',
  `company_name` char(20) NOT NULL DEFAULT '1',
  `account_type` varchar(20) NOT NULL DEFAULT 'None',
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wg_users`
--

INSERT INTO `wg_users` (`user_id`, `full_name`, `user_pass`, `email`, `date_joined`, `company_name`, `account_type`) VALUES
(1, 'Umesh Ghimire', 'admin1234', 'me.umeshuser@gmail.com', '2015-06-10 17:55:45', 'test', 'personal');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
