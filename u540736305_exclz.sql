
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 11, 2016 at 07:03 PM
-- Server version: 10.0.20-MariaDB-log
-- PHP Version: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `u540736305_exclz`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `categoryid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `categoryname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `categorytitle` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`categoryid`),
  UNIQUE KEY `categoryname` (`categoryname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categoryid`, `categoryname`, `categorytitle`) VALUES
('ELEC_CAT', 'Electronic', 'Electonics Items like mobiles,laptops etc.'),
('FASH_CAT', 'Fashion', 'Fashion items like tshirts, shirts, jeans etc'),
('BOOK_CAT', 'Books', 'Book items like Novels, magzines etc'),
('FOOD_CAT', 'Food', 'Grocerry items like sugar,wheat,fruits etc');

-- --------------------------------------------------------

--
-- Table structure for table `manufacturer`
--

CREATE TABLE IF NOT EXISTS `manufacturer` (
  `manuid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manuname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manutitle` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`manuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufacturer`
--

INSERT INTO `manufacturer` (`manuid`, `manuname`, `manutitle`) VALUES
('PUMA_MANU', 'PUMA', 'XXXXX'),
('ADIDAS_MANU', 'ADIDAS', 'XXXXX'),
('DELL_MANU', 'DELL', 'XXXXX'),
('LENOVO_MANU', 'LENOVO Manufacturer', 'XXXXX'),
('HP_MANU', 'HP Entreprices', 'XXXXX'),
('LOGITECH_MANU', 'LOGITECH', 'XXXXX'),
('JBL_MANU', 'JBL', 'XXXXX'),
('PHILIPS_MANU', 'PHILIPS', 'XXXXX'),
('INTEX_MANU', 'INTEX', 'XXXXX'),
('EPSON_MANU', 'EPSON', 'XXXXX'),
('BANANA_MANU', 'BANANA', 'XXXXX'),
('APPLE_MANU', 'APPLE', 'XXXXX'),
('MANGO_MANU', 'MANGO', 'XXXXX'),
('ORANGE_MANU', 'ORANGE', 'XXXXX'),
('SAPNA_MANU', 'SAPNA', 'XXXXX'),
('CLETT_MANU', 'CLETT', 'XXXXX'),
('DEEPA_MANU', 'DEEPA', 'XXXXX'),
('WINN_MANU', 'WINN', 'XXXXX'),
('PEARSON_MANU', 'PEARSON', 'XXXXX'),
('WILEY_MANU', 'WILEY', 'XXXXX'),
('WEKA_MANU', 'WEKA', 'XXXXX');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `transactionid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `items` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `gender` int(2) NOT NULL,
  `location` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`transactionid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=61 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`transactionid`, `userid`, `items`, `gender`, `location`) VALUES
(42, 'REHAN12312', 'HP_LAP_11-ptu7, LENOVO_LAP_14lu-90, EPSON_PRINTER_6, EPSON_PRINTER_5, HP_PRINTER_3, DELL_KEYBOARD_3, INTEX_SPEAKER_5', 1, '12.934308333333336,77.535'),
(41, 'REHAN12312', 'LENOVO_vibe-121, LOGITECH_MOUSE_2', 1, '12.92775,77.5433633333333'),
(40, 'REHAN12312', 'ADIDAS_CASUALTSHIRT_', 1, '12.92775,77.5433633333333'),
(39, 'REHAN12312', 'APPLE_2', 1, '12.92775,77.5433633333333'),
(38, 'REHAN12312', 'ORANGE_1', 1, '12.92775,77.5433633333333'),
(37, 'REHAN12312', 'BANANA_2', 1, '12.92775,77.5433633333333'),
(36, 'Syedtemp94', 'LENOVO_k4_1122, LENOVO_k3_1551', 1, '12.9286832,77.5455068'),
(35, 'REHAN12312', 'PUMA_SPORTSTSHIRT_11, PUMA_SPORTSTJEANS_12', 1, '12.9350135,77.5367732'),
(58, 'Syedtemp94', 'LENOVO_k4_1122', 1, '0.0,0.0'),
(33, 'REHAN12312', 'LENOVO_k3_1551', 1, '12.927632,77.5429072'),
(32, 'REHAN12312', 'ADIDAS_CASUALSHIRT_1, PUMA_CASUALSHIRT_116', 1, '12.9275411,77.5428644'),
(31, '6', 'BANANA_3, LENOVO_vibe-121', 1, '12.9353887,77.534489'),
(30, '6', 'BANANA_3', 1, '12.9276799,77.5429987'),
(29, '6', 'APPLE_2, ORANGE_2, BANANA_3', 1, '12.9276799,77.5429987'),
(28, '6', 'APPLE_2, ORANGE_2, BANANA_3', 1, '12.9276799,77.5429987'),
(27, '6', 'APPLE_2, ORANGE_2, BANANA_3', 1, '12.9276799,77.5429987'),
(26, '6', 'ADIDAS_SPORTSSHIRT_1, PUMA_SPORTSSHIRT_115, LENOVO_prime-3333', 1, '12.9276842,77.5430883'),
(43, 'REHAN12312', 'HP_LAP_11-ptu7, LENOVO_LAP_14lu-90, EPSON_PRINTER_6, EPSON_PRINTER_5, HP_PRINTER_3, DELL_KEYBOARD_3, INTEX_SPEAKER_5', 1, '12.934308333333336,77.535'),
(44, 'Syedtemp94', 'HP_LAP_11-ptu7', 1, '12.9343,77.53506333333333'),
(45, 'Syedtemp94', 'JBL_SPEAKER_4', 1, '12.9343,77.53506333333333'),
(46, 'Syedtemp94', 'JBL_SPEAKER_1', 1, '12.9343,77.53506333333333'),
(47, 'Syedtemp94', 'INTEX_SPEAKER_2', 1, '12.9343,77.53506333333333'),
(48, 'Syedtemp94', 'PHILIPS_SPEAKER_6', 1, '12.934285,77.535069999999'),
(49, 'Syedtemp94', 'BANANA_1', 1, '12.934285,77.535069999999'),
(50, 'Syedtemp94', 'MANGO_2', 1, '12.934285,77.535069999999'),
(51, 'Syedtemp94', 'PUMA_SPORTSTJEANS_12', 1, '12.949108333333333,77.527'),
(52, 'Syedtemp94', 'EPSON_PRINTER_6', 1, '12.949108333333333,77.527'),
(53, 'Syedtemp94', 'EPSON_PRINTER_1', 1, '12.949108333333333,77.527'),
(54, 'Syedtemp94', 'HP_PRINTER_1', 1, '12.949108333333333,77.527'),
(55, 'Syedtemp94', 'LOGITECH_KEYBOARD_4', 1, '12.949108333333333,77.527'),
(56, 'Syedtemp94', 'LENOVO_LAP_14lu-90, LOGITECH_MOUSE_3', 1, '12.927775,77.542936666666'),
(57, 'Syedtemp94', 'LENOVO_k3_1551', 1, '12.927775,77.542936666666'),
(59, 'Syedtemp94', 'LENOVO_vibe-121', 1, '0.0,0.0'),
(60, 'Syedtemp94', 'HP_LAP_11-ptu7', 1, '0.0,0.0');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `productid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `manuid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `productname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `description` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `price` int(6) NOT NULL,
  `stockcount` int(5) NOT NULL,
  `image_url` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(2) NOT NULL,
  `ratings` double NOT NULL,
  `no_of_ratings` int(10) NOT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `subid`, `manuid`, `productname`, `description`, `price`, `stockcount`, `image_url`, `discount`, `ratings`, `no_of_ratings`) VALUES
('HP_LAP_14lu-90', 'LAPTOP_SUB', 'HP_MANU', 'HP Laptop - 14lu-90', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 50000, 6, 'htttp://image.com/1', 0, 0, 0),
('LENOVO_k3_1551', 'MOBILE_SUB', 'LENOVO_MANU', 'Lenovo k3 Note', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 15000, 2, 'htttp://image.com/1', 20, 3.4, 10),
('LENOVO_LAP_14lu-90', 'LAPTOP_SUB', 'LENOVO_MANU', 'LENONO Laptop - 14lu', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 48000, 9, 'htttp://image.com/1', 0, 0, 0),
('LENOVO_k4_1122', 'MOBILE_SUB', 'LENOVO_MANU', 'Lenovo k4 note', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 11000, 5, 'htttp://image.com/1', 80, 4.5, 100),
('HP_LAP_11-ptu7', 'LAPTOP_SUB', 'HP_MANU', 'HP Laptop - 11-ptu7', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 30000, 3, 'htttp://image.com/1', 20, 3.2, 10),
('LENOVO_vibe-121', 'MOBILE_SUB', 'LENOVO_MANU', 'Lenovo Vibe Shot', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 18000, 2, 'htttp://image.com/1', 20, 3.2, 10),
('LENOVO_LAP_11f-90', 'LAPTOP_SUB', 'LENOVO_MANU', 'LENONO Laptop - 11f-', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 63000, 9, 'htttp://image.com/1', 20, 3.2, 10),
('LENOVO_prime-3333', 'MOBILE_SUB', 'LENOVO_MANU', 'Lenovo Prime-3333', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 8000, 5, 'htttp://image.com/1', 20, 3.2, 10),
('ADIDAS_SPORTSTSHIRT_', 'TSHIRTS_SUB', 'ADIDAS_MANU', 'ADIDAD SPORTS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1400, 9, 'HTTP://WWW.GOOGLE.COM/1', 5, 4.9, 9),
('ADIDAS_CASUALTSHIRT_', '', 'ADIDAS_MANU', 'ADIDAD CASUAL WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1900, 10, 'HTTP://WWW.GOOGLE.COM/1', 8, 4, 6),
('PUMA_SPORTSTSHIRT_11', 'TSHIRTS_SUB', 'PUMA_MANU', 'PUMA SPORTS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1100, 9, 'HTTP://WWW.GOOGLE.COM/1', 10, 4.2, 1),
('PUMA_CASUALTSHIRT_11', 'TSHIRTS_SUB', 'PUMA_MANU', 'PUMA CASUAL WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 600, 9, 'HTTP://WWW.GOOGLE.COM/1', 11, 2.2, 9),
('ADIDAS_SPORTSSHIRT_1', 'SHIRTS_SUB', 'ADIDAS_MANU', 'ADIDAD SPORTS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1400, 9, 'HTTP://WWW.GOOGLE.COM/1', 10, 4.6, 1),
('ADIDAS_CASUALSHIRT_1', 'SHIRTS_SUB', 'ADIDAS_MANU', 'ADIDAD SPORTS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1400, 9, 'HTTP://WWW.GOOGLE.COM/1', 5, 4.9, 9),
('PUMA_SPORTSSHIRT_115', 'SHIRTS_SUB', 'PUMA_MANU', 'PUMA SPORTS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1100, 9, 'HTTP://WWW.GOOGLE.COM/1', 10, 4.2, 1),
('PUMA_CASUALSHIRT_116', 'SHIRTS_SUB', 'PUMA_MANU', 'PUMA CASUAL WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 600, 9, 'HTTP://WWW.GOOGLE.COM/1', 11, 2.2, 9),
('ADIDAS_SPORTSJEANS_1', 'JEANS_SUB', 'ADIDAS_MANU', 'ADIDAD JEANS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 2100, 20, 'HTTP://WWW.GOOGLE.COM/1', 18, 3.3, 9),
('ADIDAS_SPORTSTJEANS_', 'JEANS_SUB', 'ADIDAS_MANU', 'ADIDAD JEANS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1850, 25, 'HTTP://WWW.GOOGLE.COM/1', 15, 1.2, 9),
('PUMA_SPORTSJEANS_123', 'JEANS_SUB', 'PUMA_MANU', 'PUMA JEANS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 2000, 20, 'HTTP://WWW.GOOGLE.COM/1', 18, 3.3, 9),
('PUMA_SPORTSTJEANS_12', 'JEANS_SUB', 'PUMA_MANU', 'PUMA JEANS WEAR', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1450, 25, 'HTTP://WWW.GOOGLE.COM/1', 15, 1.2, 9),
('LOGITECH_MOUSE_1', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH M156', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 900, 20, 'HTTP://WWW.GOOGLE.COM/1', 18, 3.6, 15),
('LOGITECH_MOUSE_2', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH B100', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 300, 50, 'HTTP://WWW.GOOGLE.COM/1', 30, 3.9, 25),
('LOGITECH_MOUSE_3', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH M100', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 25, 'HTTP://WWW.GOOGLE.COM/1', 28, 2.9, 18),
('LOGITECH_MOUSE_4', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH M90', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 350, 20, 'HTTP://WWW.GOOGLE.COM/1', 58, 3.2, 35),
('LOGITECH_MOUSE_5', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH M165', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 28, 'HTTP://WWW.GOOGLE.COM/1', 28, 3.3, 25),
('DELL_MOUSE_1', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM16', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 600, 28, 'HTTP://WWW.GOOGLE.COM/1', 28, 3.7, 25),
('DELL_MOUSE_2', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM26', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 38, 'HTTP://WWW.GOOGLE.COM/1', 30, 3.2, 35),
('DELL_MOUSE_3', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM36', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 500, 24, 'HTTP://WWW.GOOGLE.COM/1', 36, 3.6, 40),
('DELL_MOUSE_4', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM46', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 650, 36, 'HTTP://WWW.GOOGLE.COM/1', 40, 3.4, 30),
('DELL_MOUSE_5', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM28', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 620, 21, 'HTTP://WWW.GOOGLE.COM/1', 23, 3.9, 27),
('DELL_MOUSE_6', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL WM32', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 580, 28, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.1, 25),
('JBL_SPEAKER_1', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL FLIP2', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 5800, 50, 'HTTP://WWW.GOOGLE.COM/1', 40, 4.8, 55),
('JBL_SPEAKER_2', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL PULSE2', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 4800, 50, 'HTTP://WWW.GOOGLE.COM/1', 28, 4.8, 45),
('JBL_SPEAKER_3', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL CHARGE2', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 3600, 50, 'HTTP://WWW.GOOGLE.COM/1', 36, 4.9, 35),
('JBL_SPEAKER_4', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL PULSE6', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 5200, 50, 'HTTP://WWW.GOOGLE.COM/1', 35, 4.7, 40),
('JBL_SPEAKER_5', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL CHARGE3', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 2900, 50, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.6, 38),
('JBL_SPEAKER_6', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL XTREME', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 3200, 50, 'HTTP://WWW.GOOGLE.COM/1', 25, 4.5, 26),
('JBL_SPEAKER_7', 'ACCESSORIES_SUB', 'JBL_MANU', 'JBL FLIP4', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 4500, 50, 'HTTP://WWW.GOOGLE.COM/1', 29, 4.8, 34),
('PHILIPS_SPEAKER_1', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT50W', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 29, 4.5, 34),
('PHILIPS_SPEAKER_2', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT50X', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.6, 24),
('PHILIPS_SPEAKER_3', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT70W', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 15, 4.7, 26),
('PHILIPS_SPEAKER_4', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT56W', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 50, 4.4, 30),
('PHILIPS_SPEAKER_5', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT40X', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 39, 4.5, 34),
('PHILIPS_SPEAKER_6', 'ACCESSORIES_SUB', 'PHILIPS_MANU', 'PHILIPS BT80T', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1500, 50, 'HTTP://WWW.GOOGLE.COM/1', 26, 4.6, 35),
('INTEX_SPEAKER_1', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T2020', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 900, 40, 'HTTP://WWW.GOOGLE.COM/1', 36, 3.6, 35),
('INTEX_SPEAKER_2', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T2030', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 800, 30, 'HTTP://WWW.GOOGLE.COM/1', 26, 3.6, 25),
('INTEX_SPEAKER_3', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T2140', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 850, 45, 'HTTP://WWW.GOOGLE.COM/1', 46, 3.8, 30),
('INTEX_SPEAKER_4', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T2250', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 1000, 28, 'HTTP://WWW.GOOGLE.COM/1', 24, 4.1, 39),
('INTEX_SPEAKER_5', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T3020', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 750, 36, 'HTTP://WWW.GOOGLE.COM/1', 39, 3.9, 34),
('INTEX_SPEAKER_6', 'ACCESSORIES_SUB', 'INTEX_MANU', 'INTEX T3120', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 800, 40, 'HTTP://WWW.GOOGLE.COM/1', 26, 3.6, 35),
('LOGITECH_KEYBOARD_1', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH K156', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 900, 20, 'HTTP://WWW.GOOGLE.COM/1', 18, 3.6, 15),
('LOGITECH_KEYBOARD_2', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH K100', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 300, 50, 'HTTP://WWW.GOOGLE.COM/1', 30, 3.9, 25),
('LOGITECH_KEYBOARD_3', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH K100', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 25, 'HTTP://WWW.GOOGLE.COM/1', 28, 2.9, 18),
('LOGITECH_KEYBOARD_4', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH K90', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 350, 20, 'HTTP://WWW.GOOGLE.COM/1', 58, 3.2, 35),
('LOGITECH_KEYBOARD_5', 'ACCESSORIES_SUB', 'LOGITECH_MANU', 'LOGITECH K165', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 28, 'HTTP://WWW.GOOGLE.COM/1', 28, 3.3, 25),
('DELL_KEYBOARD_1', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM16', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 600, 28, 'HTTP://WWW.GOOGLE.COM/1', 28, 3.7, 25),
('DELL_KEYBOARD_2', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM26', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 38, 'HTTP://WWW.GOOGLE.COM/1', 30, 3.2, 35),
('DELL_KEYBOARD_3', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM36', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 500, 24, 'HTTP://WWW.GOOGLE.COM/1', 36, 3.6, 40),
('DELL_KEYBOARD_4', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM46', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 650, 36, 'HTTP://WWW.GOOGLE.COM/1', 40, 3.4, 30),
('DELL_KEYBOARD_5', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM28', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 620, 21, 'HTTP://WWW.GOOGLE.COM/1', 23, 3.9, 27),
('DELL_KEYBOARD_6', 'ACCESSORIES_SUB', 'DELL_MANU', 'DELL KM32', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 580, 28, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.1, 25),
('HP_PRINTER_1', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M120', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 10000, 40, 'HTTP://WWW.GOOGLE.COM/1', 26, 4.6, 35),
('HP_PRINTER_2', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M126', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 7000, 40, 'HTTP://WWW.GOOGLE.COM/1', 36, 3.9, 45),
('HP_PRINTER_3', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M420', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 8000, 40, 'HTTP://WWW.GOOGLE.COM/1', 22, 4.5, 20),
('HP_PRINTER_4', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M520', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 8500, 40, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.8, 30),
('HP_PRINTER_5', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M620', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 7500, 40, 'HTTP://WWW.GOOGLE.COM/1', 35, 4.2, 34),
('HP_PRINTER_6', 'ACCESSORIES_SUB', 'HP_MANU', 'HP INKJET M180', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 9000, 40, 'HTTP://WWW.GOOGLE.COM/1', 26, 4.1, 38),
('EPSON_PRINTER_1', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M120', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 10000, 20, 'HTTP://WWW.GOOGLE.COM/1', 26, 4.6, 25),
('EPSON_PRINTER_2', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M126', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 7000, 30, 'HTTP://WWW.GOOGLE.COM/1', 36, 3.9, 15),
('EPSON_PRINTER_3', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M420', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 8000, 45, 'HTTP://WWW.GOOGLE.COM/1', 22, 3.5, 20),
('EPSON_PRINTER_4', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M520', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 8500, 37, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.8, 30),
('EPSON_PRINTER_5', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M620', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 7500, 42, 'HTTP://WWW.GOOGLE.COM/1', 35, 4, 24),
('EPSON_PRINTER_6', 'ACCESSORIES_SUB', 'EPSON_MANU', 'EPSON INKJET M180', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 9000, 43, 'HTTP://WWW.GOOGLE.COM/1', 26, 4.1, 18),
('APPLE_1', 'FRUITS_SUB', 'APPLE_MANU', 'KASHMIR APPLE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 200, 40, 'HTTP://WWW.GOOGLE.COM/1', 10, 4.1, 18),
('APPLE_2', 'FRUITS_SUB', 'APPLE_MANU', 'APPLE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 150, 60, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.8, 14),
('MANGO_1', 'FRUITS_SUB', 'MANGO_MANU', 'BADAM MANGO', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 200, 40, 'HTTP://WWW.GOOGLE.COM/1', 10, 4.1, 18),
('MANGO_2', 'FRUITS_SUB', 'MANGO_MANU', 'TOTAPURI MANGO', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 250, 60, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.8, 14),
('MANGO_3', 'FRUITS_SUB', 'MANGO_MANU', 'RASPURI MANGO', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 210, 50, 'HTTP://WWW.GOOGLE.COM/1', 15, 3.6, 14),
('ORANGE_1', 'FRUITS_SUB', 'ORANGE_MANU', 'LQ ORANGE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 180, 40, 'HTTP://WWW.GOOGLE.COM/1', 10, 3.6, 18),
('ORANGE_2', 'FRUITS_SUB', 'ORANGE_MANU', 'MQ ORANGE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 200, 60, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.8, 14),
('ORANGE_3', 'FRUITS_SUB', 'ORANGE_MANU', 'HQ ORANGE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 230, 50, 'HTTP://WWW.GOOGLE.COM/1', 15, 4.1, 16),
('BANANA_1', 'FRUITS_SUB', 'BANANA_MANU', 'LQ BANANA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 40, 40, 'HTTP://WWW.GOOGLE.COM/1', 10, 3.6, 11),
('BANANA_2', 'FRUITS_SUB', 'BANANA_MANU', 'MQ BANANA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 50, 60, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.7, 13),
('BANANA_3', 'FRUITS_SUB', 'BANANA_MANU', 'HQ BANANA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 60, 50, 'HTTP://WWW.GOOGLE.COM/1', 15, 4.3, 16),
('BOOK_1', 'BOOK_SUB', 'SAPNA_MANU', 'ONE DARK NIGHT', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 250, 100, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.5, 18),
('BOOK_2', 'BOOK_SUB', 'CLETT_MANU', 'WINGS OF FIRE', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 350, 100, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.5, 38),
('BOOK_3', 'BOOK_SUB', 'DEEPA_MANU', 'THE GOAL', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 280, 100, 'HTTP://WWW.GOOGLE.COM/1', 20, 3.7, 28),
('BOOK_4', 'BOOK_SUB', 'SAPNA_MANU', 'THE LOLITA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 350, 200, 'HTTP://WWW.GOOGLE.COM/1', 10, 3.2, 16),
('BOOK_5', 'BOOK_SUB', 'WINN_MANU', 'LORD OF THE FILES', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 400, 80, 'HTTP://WWW.GOOGLE.COM/1', 25, 3.8, 26),
('BOOK_6', 'BOOK_SUB', 'SAPNA_MANU', 'CATCH 22', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 250, 100, 'HTTP://WWW.GOOGLE.COM/1', 40, 3.5, 24),
('BOOK_7', 'BOOK_SUB', 'PEARSON_MANU', 'TOM JONES', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 450, 200, 'HTTP://WWW.GOOGLE.COM/1', 30, 3.1, 32),
('BOOK_8', 'BOOK_SUB', 'WILEY_MANU', 'EMMA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 300, 150, 'HTTP://WWW.GOOGLE.COM/1', 35, 3.9, 40),
('BOOK_9', 'BOOK_SUB', 'CLETT_MANU', 'CLARISSA', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 450, 80, 'HTTP://WWW.GOOGLE.COM/1', 25, 4.2, 28),
('BOOK_10', 'BOOK_SUB', 'WEKA_MANU', 'SYBIL', 'Intel Core i3 Processor\r\n4 GB DDR3 RAM\r\nDOS Operating System\r\n500 GB HDD\r\n15.6 inch Display', 250, 200, 'HTTP://WWW.GOOGLE.COM/1', 30, 4.5, 15);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE IF NOT EXISTS `rating` (
  `userid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `productid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `rating_review` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `action` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`userid`, `productid`, `rating_review`, `action`) VALUES
('121', 'Elect12', 'OK', 2),
('8', 'DELL_MOUSE_1', 'NOT GOOD', 7),
('1', 'LENOVO_k3_1551', 'dfff', 3),
('121', 'Elect12', 'OK', 2),
('112121', 'Elect12', 'OK', 2),
('1', 'LENOVO_prime-3333', 'satisfactory', 4),
('1', 'LENOVO_prime-3333', 'ghhh', 2),
('1', 'LENOVO_prime-3333', '', 2),
('1', 'LENOVO_prime-3333', '', 2),
('1', 'LENOVO_prime-3333', 'ffuttrfghh', 1),
('1', 'LENOVO_prime-3333', 'ghhjj', 2),
('1', 'LENOVO_k4_1122', 'ghuuggghg', 2),
('Syedtemp94', 'LENOVO_vibe-121', 'ghthhh', 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE IF NOT EXISTS `sales` (
  `saleid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `productid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`saleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subcategories`
--

CREATE TABLE IF NOT EXISTS `subcategories` (
  `subid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `categoryid` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subname` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `subtitle` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`subid`),
  UNIQUE KEY `subname` (`subname`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subcategories`
--

INSERT INTO `subcategories` (`subid`, `categoryid`, `subname`, `subtitle`) VALUES
('LAPTOP_SUB', 'ELEC_CAT', 'Laptops', 'HP laptops, lenovo laptops etc'),
('MOBILE_SUB', 'ELEC_CAT', 'Mobiles', 'Lenovo mobiles, Samsung mobiles etc'),
('ACCESSORIES_SUB', 'ELEC_CAT', 'Accessories', 'mouse,keyboard,speakers etc'),
('TSHIRTS_SUB', 'FASH_CAT', 'Tshirts', 'Adidas tshirt, Puma tshirt etc'),
('SHIRTS_SUB', 'FASH_CAT', 'Shirts', 'Adidas shirts, Puma shirts etc'),
('JEANS_SUB', 'FASH_CAT', 'Jeans', 'Adidas jeans, Puma jeans etc'),
('FRUITS_SUB', 'FOOD_CAT', 'Fruits', 'Apple,Banana,Mango etc'),
('BOOK_SUB', 'BOOK_CAT', 'Books', 'Novels');

-- --------------------------------------------------------

--
-- Table structure for table `tracking`
--

CREATE TABLE IF NOT EXISTS `tracking` (
  `trackid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `userid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `productid` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `count` int(5) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`trackid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `userid` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(25) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `mobile` int(10) NOT NULL,
  `gender` int(1) NOT NULL,
  `age` int(3) NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `email`, `password`, `mobile`, `gender`, `age`, `address`) VALUES
('REHAN12312', '121221', 'rehanshikkalgar@gmail.com', 'REHAN123@', 0, 1, 21, ''),
('rehan783', 'rehan', 'rehanshikkalgar7865@gmail', '12121212@', 2147483647, 1, 21, ''),
('Syedtemp94', 'Syedtemp', 'tempthings@gmail.com', '123456', 2147483647, 1, 22, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
