-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jun 23, 2020 at 01:05 PM
-- Server version: 5.7.26
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `user_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `access_users` tinyint(4) NOT NULL DEFAULT '0',
  `access_orders` tinyint(4) NOT NULL DEFAULT '0',
  `access_products` tinyint(4) NOT NULL DEFAULT '0',
  `access_posts` tinyint(4) NOT NULL DEFAULT '0',
  `access_tags` tinyint(4) NOT NULL DEFAULT '0',
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `Name`, `user_name`, `access_users`, `access_orders`, `access_products`, `access_posts`, `access_tags`, `Created_at`, `Updated_at`) VALUES
(1, NULL, 'Amirilidan', 1, 1, 1, 1, 1, '2020-03-25 00:00:00', '2020-03-25 21:56:04');

-- --------------------------------------------------------

--
-- Table structure for table `admins_password`
--

DROP TABLE IF EXISTS `admins_password`;
CREATE TABLE IF NOT EXISTS `admins_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `admins_password`
--

INSERT INTO `admins_password` (`id`, `user_name`, `password`, `Created_at`, `Updated_at`) VALUES
(1, 'Amirilidan', '81dc9bdb52d04dc20036dbd8313ed055', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_phone` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL COMMENT '0 => montazer pardakht  , 1 => pardalht shode , 2 => tahvil dade shode',
  `total_price` bigint(20) NOT NULL DEFAULT '0',
  `send_type` tinyint(4) NOT NULL DEFAULT '1' COMMENT '1 => post , 2=> tipax',
  `post_rahgiri` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `date` date DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=64 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_phone`, `status`, `total_price`, `send_type`, `post_rahgiri`, `date`, `Created_at`, `Updated_at`) VALUES
(63, '09370843199', 0, 6, 2, NULL, '2020-04-26', '2020-04-26 06:08:41', '2020-04-26 06:08:41');

-- --------------------------------------------------------

--
-- Table structure for table `order_factor`
--

DROP TABLE IF EXISTS `order_factor`;
CREATE TABLE IF NOT EXISTS `order_factor` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `Amount` bigint(20) DEFAULT NULL,
  `Authority` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `ref_id` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `order_factor`
--

INSERT INTO `order_factor` (`id`, `order_id`, `Amount`, `Authority`, `ref_id`, `Created_at`, `Updated_at`) VALUES
(28, 47, 1000, '000000000000000000000000000156214959', NULL, '2020-04-19 12:40:08', '2020-04-19 12:40:08'),
(27, 46, 1000, '000000000000000000000000000156214861', '491067682911', '2020-04-19 12:39:03', '2020-04-19 12:39:23'),
(26, 46, 1000, '000000000000000000000000000156214813', NULL, '2020-04-19 12:38:25', '2020-04-19 12:38:25'),
(25, 46, 1000, '000000000000000000000000000156214769', NULL, '2020-04-19 12:37:54', '2020-04-19 12:37:54'),
(24, 45, 1000, '000000000000000000000000000156214414', NULL, '2020-04-19 12:33:58', '2020-04-19 12:33:58'),
(23, 44, NULL, NULL, ' تایید شده توسط Amirilidan ', '2020-04-16 17:33:00', '2020-04-16 17:33:00');

-- --------------------------------------------------------

--
-- Table structure for table `order_post`
--

DROP TABLE IF EXISTS `order_post`;
CREATE TABLE IF NOT EXISTS `order_post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `ostan` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `number` varchar(25) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `order_post`
--

INSERT INTO `order_post` (`id`, `order_id`, `ostan`, `city`, `post_code`, `address`, `number`, `Created_at`, `Updated_at`) VALUES
(30, 43, NULL, NULL, 'test', 'test', 'test', '2020-04-12 22:47:45', '2020-04-12 22:47:45'),
(31, 44, 'کرمان', 'رفسنجان', 'test', 'test', 'test', '2020-04-16 17:32:28', '2020-04-16 17:32:28'),
(32, 45, 'خراسان جنوبي', 'بیرجند', '616868168', '61468416', '09370843199', '2020-04-19 12:33:13', '2020-04-19 12:33:13'),
(33, 46, 'اردبيل', 'مشگین شهر', '23131', '1213213', '09370843199', '2020-04-19 12:37:30', '2020-04-19 12:37:30'),
(34, 47, 'چهارمحال بختياري', 'سامان', '303164643', 'آدرس خانه آدرس خانه آدرس خانه آدرس خانه', '09370843199', '2020-04-19 12:39:48', '2020-04-19 12:39:48'),
(35, 60, 'اردبيل', 'پارس آباد', '1111111111', 'آدرس خانه آدرس خانه آدرس خانه آدرس خانه 2222222222222222222222222', '342222451', '2020-04-26 06:05:31', '2020-04-26 06:05:31'),
(36, 61, 'آذربايجان شرقي', 'شبستر', '1111111111', 'آدرس خانه آدرس خانه آدرس خانه آدرس خانه', '09370843199', '2020-04-26 06:06:20', '2020-04-26 06:06:20'),
(37, 62, 'آذربايجان غربي', 'سیه چشمه', '22303164643', 'آدرس خانه آدرس خانه آدرس خانه آدرس خانه', '09370843199', '2020-04-26 06:07:38', '2020-04-26 06:07:38'),
(38, 63, 'خوزستان', 'بندر ماهشهر', '30316464322', 'آدرس خانه آدرس خانه آدرس خانه آدرس خانه', '342222451', '2020-04-26 06:08:45', '2020-04-26 06:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

DROP TABLE IF EXISTS `order_products`;
CREATE TABLE IF NOT EXISTS `order_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `price` bigint(20) NOT NULL DEFAULT '0',
  `total_price` bigint(20) DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `order_products`
--

INSERT INTO `order_products` (`id`, `order_id`, `product_id`, `count`, `price`, `total_price`, `Created_at`, `Updated_at`) VALUES
(27, 63, 57, 1, 6, 6, '2020-04-26 06:08:45', '2020-04-26 06:08:45'),
(26, 62, 53, 1, 1200, 1200, '2020-04-26 06:07:38', '2020-04-26 06:07:38'),
(25, 61, 57, 1, 6, 6, '2020-04-26 06:06:20', '2020-04-26 06:06:20'),
(24, 60, 53, 1, 1200, 1200, '2020-04-26 06:05:31', '2020-04-26 06:05:31'),
(23, 47, 53, 1, 1200, 1200, '2020-04-19 12:39:48', '2020-04-19 12:39:48'),
(22, 46, 53, 1, 1200, 1200, '2020-04-19 12:37:30', '2020-04-19 12:37:30'),
(21, 45, 53, 1, 1200, 1200, '2020-04-19 12:33:13', '2020-04-19 12:33:13'),
(20, 44, 53, 1, 1000, 1000, '2020-04-16 17:32:28', '2020-04-16 17:32:28');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` text COLLATE utf8_persian_ci,
  `image` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `text`, `image`, `Created_at`, `Updated_at`) VALUES
(15, 'شیوع ویروس کرونا', '<p>وزارت بهداشت ایران، روز شنبه ١٦ فروردین، اعلام کرد که شمار مبتلایان به ویروس کرونا در کشور، به ٥٥ هزار و ٧٤٣ نفر رسیده و تا کنون ٣٤٥٢ نفر در اثر ابتلا به این بیماری، جان خود را از دست داده اند.&nbsp;از سوی دیگر، با ابتلای ٧٠ نفر از پرسنل مترو و اتوبوسرانی تهران به ویروس کرونا، سه راننده تاکسی و دو راننده اتوبوس، در اثر این بیماری جان باخته اند. این در حالیست که معاون وزیر بهداشت، از ترافیک امروز تهران ابراز نگرانی کرد و علیرضا زالی رئیس ستاد مقابله با کرونا نیز تأکید کرد که خطر شیوع این ویروس، هنوز تهران را تهدید می کند. از سوی دیگر، حسن روحانی رئیس جمهوری ایران، طی جلسه ای با رؤسای کمیته های گوناگون ستاد ملی مبارزه با کرونا، اعلام کرد که طرح فاصله گذاری اجتماعی با تبدیل به طرح فاصله گذاری هوشمند، ادامه خواهد یافت و مختصات اجرای این طرح بر اساس ارزیابی های دقیق، توسط وزارت بهداشت اعلام خواهد شد.</p>', 'storage/posts/15/5e9adb965f35e.jpg', '2020-04-05 18:31:19', '2020-04-18 10:51:02'),
(16, 'test', '<p>متن پست</p>', '/storage/posts/1587502788.jpeg', '2020-04-21 20:58:05', '2020-04-21 20:59:49');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` varchar(55) COLLATE utf8_persian_ci DEFAULT NULL,
  `Name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `english_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8_persian_ci,
  `price` bigint(20) DEFAULT NULL,
  `price_off` bigint(20) DEFAULT NULL,
  `weight` float NOT NULL DEFAULT '1000' COMMENT 'به گرم',
  `is_salty` tinyint(4) NOT NULL DEFAULT '0',
  `type_packing` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `pic1` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `pic2` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `pic3` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `group_id`, `Name`, `english_name`, `description`, `price`, `price_off`, `weight`, `is_salty`, `type_packing`, `count`, `pic1`, `pic2`, `pic3`, `Created_at`, `Updated_at`) VALUES
(53, '1', 'پسته درجه 1', 'pesteDaraje1', '<p><br data-cke-filler=\"true\"></p><p>&lt;p&gt;توضیحات محصول&lt;/p&gt;</p><p><br data-cke-filler=\"true\"></p>', 1200, 1000, 1200, 1, '3', 7, 'insert/products/53/5e9acd48c86d3.jpg', 'insert/products/53/5e9acd48c8d6c.jpg', NULL, '2020-04-16 16:55:31', '2020-04-26 06:07:38'),
(57, '1', 'ttt', 'ttt', '<p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p>توضیحات محصول</p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p><p><br data-cke-filler=\"true\"></p>', 6, NULL, 8, 1, '1', 4, '/storage/products/1587503902.jpeg', '/storage/products/1587823701.jpeg', NULL, '2020-04-21 21:18:22', '2020-04-26 06:08:45');

-- --------------------------------------------------------

--
-- Table structure for table `products_attribs`
--

DROP TABLE IF EXISTS `products_attribs`;
CREATE TABLE IF NOT EXISTS `products_attribs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `description` varchar(1000) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products_attribs`
--

INSERT INTO `products_attribs` (`id`, `product_id`, `title`, `value`, `description`, `Created_at`, `Updated_at`) VALUES
(1, 2, 'نوع', 'خندان', 'توضیحات بیشتر', NULL, NULL),
(2, 2, 'رنگ', 'سبز', 'میخوای چ رنگی باشه :D', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `products_comments`
--

DROP TABLE IF EXISTS `products_comments`;
CREATE TABLE IF NOT EXISTS `products_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `user_phone` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `text` varchar(2000) COLLATE utf8_persian_ci DEFAULT NULL,
  `accepted` tinyint(4) NOT NULL DEFAULT '0',
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products_comments`
--

INSERT INTO `products_comments` (`id`, `product_id`, `user_phone`, `text`, `accepted`, `Created_at`, `Updated_at`) VALUES
(2, 2, '09370843199', 'نظر کاربر امیر رنجبر در مورد این محصول', 0, '2019-10-24 00:00:00', '2019-10-24 00:00:00'),
(3, 2, '09370843199', 'نظر کاربر امیر رنجبر در مورد این محصول', 0, '2019-10-24 00:00:00', '2019-10-24 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products_groups`
--

DROP TABLE IF EXISTS `products_groups`;
CREATE TABLE IF NOT EXISTS `products_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'نام دسته بندی',
  `description` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'توضیحات این دسته بندی در صفحه اصلی نمایش دداده میشود',
  `pic` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'در صفحه اصلی این عکس برای دسته بندی استفاده میشود',
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `products_groups`
--

INSERT INTO `products_groups` (`id`, `name`, `description`, `pic`, `Created_at`, `Updated_at`) VALUES
(1, 'احمد آقایی', 'خرید پسته به صورت عمده یا جزیی از\r\n                                                    Rppc\r\n                                                    با قیمت مناسب', 'storage/products_groups/1/1.jpg', NULL, '2020-04-06 17:48:01'),
(2, 'اکبری', 'خرید پسته به صورت عمده یا جزیی از\r\n                                                    Rppc\r\n                                                    با قیمت مناسب', 'storage/products_groups/2/2.jpg', NULL, NULL),
(3, 'فندقی', 'خرید پسته به صورت عمده یا جزیی از\r\n                                                    Rppc\r\n                                                    با قیمت مناسب', 'storage/products_groups/3/3.png', NULL, NULL),
(4, 'کله قوچی', 'خرید پسته به صورت عمده یا جزیی از\r\n                                                    Rppc\r\n                                                    با قیمت مناسب', 'storage/products_groups/4/4.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_group_tag`
--

DROP TABLE IF EXISTS `product_group_tag`;
CREATE TABLE IF NOT EXISTS `product_group_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_group_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product_group_tag`
--

INSERT INTO `product_group_tag` (`id`, `product_group_id`, `tag_id`, `Created_at`, `Updated_at`) VALUES
(1, 1, 1, NULL, NULL),
(2, 1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

DROP TABLE IF EXISTS `product_tag`;
CREATE TABLE IF NOT EXISTS `product_tag` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) DEFAULT NULL,
  `tag_id` int(11) DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `product_tag`
--

INSERT INTO `product_tag` (`id`, `product_id`, `tag_id`, `Created_at`, `Updated_at`) VALUES
(12, 52, 4, '2020-04-07 18:00:29', '2020-04-07 18:00:29'),
(11, 52, 3, '2020-04-07 18:00:29', '2020-04-07 18:00:29'),
(10, 51, 4, '2020-04-07 17:58:24', '2020-04-07 17:58:24'),
(9, 51, 3, '2020-04-07 17:56:48', '2020-04-07 17:56:48'),
(8, 51, 1, '2020-04-07 17:56:41', '2020-04-07 17:56:41');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `Created_at`, `Updated_at`) VALUES
(1, 'پسته', NULL, NULL),
(3, 'پسته خام', NULL, '2020-03-25 07:45:04'),
(4, 'مغز پسته', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `last_name`, `phone`, `email`, `Created_at`, `Updated_at`) VALUES
(17, '1', NULL, NULL, NULL, '2020-04-25 14:47:23', '2020-04-25 14:47:23'),
(18, NULL, NULL, NULL, NULL, '2020-04-25 14:48:19', '2020-04-25 14:48:19'),
(15, 'محسن', 'رنجبر', '09131912805', NULL, '2020-04-16 17:05:40', '2020-04-16 17:05:40'),
(13, 'یلدا', 'رنجبر', '09370843191', NULL, '2020-04-13 19:48:09', '2020-04-13 19:48:09'),
(16, '1', NULL, NULL, NULL, '2020-04-25 14:47:12', '2020-04-25 14:47:12'),
(12, 'امیر حسین', 'رنجبر', '09370843199', NULL, '2020-04-13 18:10:30', '2020-04-13 18:10:30'),
(11, 'enamad', 'enamad', 'enamad', 'enamad@gmail.com', NULL, NULL),
(19, NULL, NULL, NULL, NULL, '2020-04-25 15:16:35', '2020-04-25 15:16:35'),
(20, NULL, NULL, NULL, NULL, '2020-04-25 15:16:50', '2020-04-25 15:16:50'),
(21, NULL, NULL, NULL, NULL, '2020-04-25 15:21:17', '2020-04-25 15:21:17');

-- --------------------------------------------------------

--
-- Table structure for table `users_password`
--

DROP TABLE IF EXISTS `users_password`;
CREATE TABLE IF NOT EXISTS `users_password` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `reset_password` varchar(55) COLLATE utf8_persian_ci DEFAULT NULL,
  `today_sms_counts` int(11) NOT NULL DEFAULT '0',
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci;

--
-- Dumping data for table `users_password`
--

INSERT INTO `users_password` (`id`, `phone`, `password`, `reset_password`, `today_sms_counts`, `Created_at`, `Updated_at`) VALUES
(10, '09131912805', '4a4c65ad12931a278b0872930c5181db', NULL, 1, '2020-04-16 17:05:40', '2020-04-16 17:05:40'),
(8, '09370843191', '28e51fe833b8b9d9cff504bcdd02828f', NULL, 1, '2020-04-13 19:48:09', '2020-04-13 19:48:09'),
(7, '09370843199', '25d55ad283aa400af464c76d713c07ad', '3804', 3, '2020-04-13 18:10:30', '2020-04-13 19:53:53'),
(6, 'enamad', '94e8cde4612b3fd390677d42e7b22002', NULL, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_personal`
--

DROP TABLE IF EXISTS `users_personal`;
CREATE TABLE IF NOT EXISTS `users_personal` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'شماره کاربر',
  `email` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `code_melli` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL,
  `post_code` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'کد پستی',
  `address` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'ادرس',
  `city` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'استان',
  `town` varchar(255) COLLATE utf8_persian_ci DEFAULT NULL COMMENT 'شهر',
  `Created_at` datetime DEFAULT NULL,
  `Updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_persian_ci COMMENT='این داده ها نیازن برای اینکه وقتی میخوان بدت به پست';
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
