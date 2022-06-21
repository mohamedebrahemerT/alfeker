-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 10:19 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `alfeker`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(10) UNSIGNED NOT NULL,
  `AcountCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `surfID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `City` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Whatsappnumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TheNameOftheStore` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NationalID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RetypeTheEmailAddress` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `personIncharge` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `BusinessRegistrationNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VatinformationFie` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `CommercailRegistrationNo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TaxCard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Acopyofthetaxcard2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Acopyofthetaxcard` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `LegelNameCompanyName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Companyphonenumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankNameList` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bankCode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `SWIFT` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `IBAN` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AcountName` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `AcountNumber` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WhoWeAre` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VisionMission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Objectives` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alymarketcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Status` tinyint(1) DEFAULT 0,
  `righttochat` tinyint(1) DEFAULT 1,
  `Sliderpremsion` tinyint(1) DEFAULT 0,
  `Storepremsion` tinyint(1) DEFAULT 0,
  `whoPayTax` tinyint(1) DEFAULT 0,
  `level` enum('user','admin') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `percentage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `RentValue` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `moneyStatuspercentage` tinyint(1) DEFAULT 1,
  `stat_id` int(10) UNSIGNED DEFAULT NULL,
  `city_id` int(10) UNSIGNED DEFAULT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `TypeOfSale` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_id` bigint(20) DEFAULT NULL,
  `paypal` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_branch_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_swift_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `AcountCode`, `surfID`, `name`, `Country`, `City`, `phone`, `avatar`, `Whatsappnumber`, `TheNameOftheStore`, `NationalID`, `email`, `RetypeTheEmailAddress`, `password`, `password2`, `postcode`, `personIncharge`, `BusinessRegistrationNumber`, `VatinformationFie`, `CommercailRegistrationNo`, `TaxCard`, `Acopyofthetaxcard2`, `Acopyofthetaxcard`, `LegelNameCompanyName`, `Companyphonenumber`, `bankNameList`, `bankCode`, `SWIFT`, `IBAN`, `AcountName`, `AcountNumber`, `WhoWeAre`, `VisionMission`, `Objectives`, `photo`, `alymarketcode`, `desc_name_ar`, `desc_name_en`, `Status`, `righttochat`, `Sliderpremsion`, `Storepremsion`, `whoPayTax`, `level`, `percentage`, `RentValue`, `moneyStatuspercentage`, `stat_id`, `city_id`, `country_id`, `TypeOfSale`, `firstname`, `lastname`, `telephone`, `company`, `website`, `tax`, `payment`, `cheque`, `role_id`, `paypal`, `bank_name`, `bank_branch_number`, `bank_swift_code`, `bank_account_name`, `bank_account_number`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'VEN_ACC_300', '317', 'الكتب', NULL, NULL, '123456787', NULL, NULL, 'admin', NULL, 'admin@admin.com', NULL, '$2y$10$MhnXkcIXaFJp3eLxV/aCbO8LWPXt/AAFvCTIqcpkbiFPr1FUbSpUW', '$2y$10$Kpa4ZHMkYiX//oaFtpsAZuoa4zrGc.nRB6.pqNi1XI.wjtho5SYue', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1, 1, 1, 0, 'admin', NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 8, NULL, NULL, NULL, NULL, NULL, NULL, '6ykrnoNyRK8SrFy747QF58SKwSEhpmTw3RBadvfLFkdUf5YtAIQKU5LZ2uC5', '2021-02-20 11:22:06', '2022-06-19 20:56:47'),
(25, NULL, '321', 'eslam', NULL, NULL, '01023262138', NULL, NULL, NULL, NULL, 'eslam@eslam.com', NULL, '$2y$10$vkVAwr1pCRgqrlJnDKUVCeZWov2OGZ0gAd4nr1y8VP.KrIume2kEC', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 9, NULL, NULL, NULL, NULL, NULL, NULL, 'PHN0n5GhTZMjcTUjVHiEQ9V53q5xSRzrMTbvlIvkNteEEdk17OnuTXi767sT', '2021-03-03 06:31:19', '2021-03-03 06:31:39'),
(27, NULL, '322', 'eslamm', NULL, NULL, '01023262137', NULL, NULL, NULL, NULL, 'supervisor@gmail.com', NULL, '$2y$10$GUKHQtlnsHK08JgPOkjAU.SF4WrqyfzNOuG7Ysdz6qoGr3R6Q/F06', '123456', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 0, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2021-03-03 09:22:33', '2021-03-03 09:23:36');

-- --------------------------------------------------------

--
-- Table structure for table `admin_groups`
--

CREATE TABLE `admin_groups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `dep_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dep_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Groupicon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offerscategorized` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offerscategorizedName_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `offerscategorizedName_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keyword` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `dep_name_ar`, `dep_name_en`, `icon`, `Groupicon`, `description`, `offerscategorized`, `offerscategorizedName_ar`, `offerscategorizedName_en`, `keyword`, `parent`, `created_at`, `updated_at`) VALUES
(2, 'القرآن الكريم ومتعلقاته', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:29:26', '2022-06-20 20:29:26'),
(3, 'أهل البيت عليهم السلام', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:31:01', '2022-06-20 20:31:01'),
(4, 'دراسات', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-06-20 20:31:37', '2022-06-20 20:31:37'),
(5, 'السيرة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-06-20 20:32:14', '2022-06-20 20:32:14'),
(6, 'الفضائل', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-06-20 20:33:18', '2022-06-20 20:33:18'),
(7, 'العزاء', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, '2022-06-20 20:33:45', '2022-06-20 20:33:45'),
(8, 'العقائد', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:34:22', '2022-06-20 20:34:22'),
(9, 'الحديث والرواية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:35:14', '2022-06-20 20:35:14'),
(10, 'رد الشبهات', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:35:43', '2022-06-20 20:35:43'),
(11, 'قضايا الفكر المعاصر', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:36:29', '2022-06-20 20:36:29'),
(12, 'قضايا اسلامية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:37:04', '2022-06-20 20:37:04'),
(13, 'الفقه والأصول', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:37:53', '2022-06-20 20:37:53'),
(14, 'الأصول', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2022-06-20 20:38:14', '2022-06-20 20:38:14'),
(15, 'الفقه', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 13, '2022-06-20 20:38:43', '2022-06-20 20:38:43'),
(16, 'الدعاء والزيارة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:39:32', '2022-06-20 20:39:32'),
(17, 'المنطق والفلسفة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:40:10', '2022-06-20 20:40:10'),
(18, 'الأخلاق والعرفان', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:40:49', '2022-06-20 20:40:49'),
(19, 'علم الرجال والدراية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:41:25', '2022-06-20 20:41:25'),
(20, 'القصص والسير الذاتية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:42:18', '2022-06-20 20:42:18'),
(21, 'التاريخ والدراسات التاريخية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:43:37', '2022-06-20 20:43:37'),
(22, 'اللغة وعلومها', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:44:11', '2022-06-20 20:44:11'),
(23, 'المجلات العلمية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:44:51', '2022-06-20 20:44:51'),
(24, 'مجلة المنهج', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:45:57', '2022-06-20 20:45:57'),
(25, 'مجلة الاستغراب', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:46:29', '2022-06-20 20:46:29'),
(26, 'مجلة المحجة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:47:04', '2022-06-20 20:47:04'),
(27, 'مجلة دراسات علمية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:47:44', '2022-06-20 20:47:44'),
(28, 'مجلة ميراث حديث شيعة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:48:53', '2022-06-20 20:48:53'),
(29, 'مجلة تراث كربلاء', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:50:00', '2022-06-20 20:50:00'),
(30, 'مجلة تراثنا', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:50:42', '2022-06-20 20:50:42'),
(31, 'مجلة الدليل', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:51:23', '2022-06-20 20:51:23'),
(32, 'مجلة الخزانة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:51:54', '2022-06-20 20:51:54'),
(33, 'مجلة الفكر الإلكترونية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:53:51', '2022-06-20 20:53:51'),
(35, 'مجلة فقه أهل البيت', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 23, '2022-06-20 20:55:09', '2022-06-20 20:55:09'),
(36, 'الفن ودواوين الشعر', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:55:59', '2022-06-20 20:55:59'),
(37, 'الروايات الأدبية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:56:23', '2022-06-20 20:56:23'),
(38, 'علم النفس والإجتماع', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:56:54', '2022-06-20 20:56:54'),
(39, 'معارف عامة', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:57:19', '2022-06-20 20:57:19'),
(40, 'موسوعات', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:57:47', '2022-06-20 20:57:47'),
(41, 'المعاجم', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:58:16', '2022-06-20 20:58:16'),
(42, 'البرامج الدينية', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:58:38', '2022-06-20 20:58:38'),
(43, 'مكتبة الأطفال', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 20:59:39', '2022-06-20 20:59:39'),
(44, 'لغات أخرى', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-06-20 21:00:05', '2022-06-20 21:00:05'),
(45, 'Persian فارسي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:00:43', '2022-06-20 21:00:43'),
(46, 'Bengali - بنغالي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:01:24', '2022-06-20 21:01:24'),
(48, 'English - انجليزي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:02:30', '2022-06-20 21:02:30'),
(49, 'Indonesian - اندونيسي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:04:09', '2022-06-20 21:04:09'),
(50, 'French - الفرنسي', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:04:42', '2022-06-20 21:04:42'),
(51, 'Other', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 44, '2022-06-20 21:05:03', '2022-06-20 21:05:03');

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `full_file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mum_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `relation_id` int(10) UNSIGNED DEFAULT NULL,
  `photoes_id` int(11) DEFAULT NULL,
  `photoesen_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `file`, `path`, `full_file`, `mum_type`, `file_type`, `relation_id`, `photoes_id`, `photoesen_id`, `created_at`, `updated_at`) VALUES
(344, 'productes6/zoom/default/1652890781.jpg', '44865', 'productes6/zoom/thumb/1652890782.jpg', 'productes6/zoom/1652890781.jpg', 'productes6/dJz9CCaDMEZglHoaoykUpq5Wi91tBQLjiqj9wNqc.jpg', 'image/jpeg', 'productes', 6, NULL, NULL, '2022-05-18 14:19:42', '2022-05-18 14:19:42'),
(345, 'productes6/zoom/default/1652890785.jpg', '5904', 'productes6/zoom/thumb/1652890785.jpg', 'productes6/zoom/1652890785.jpg', 'productes6/nM4yHb3bMWf0rtyPZeAlqlrXQCqvNVc7lf6yRWeJ.jpg', 'image/jpeg', 'productes', 6, NULL, NULL, '2022-05-18 14:19:45', '2022-05-18 14:19:45'),
(346, 'productes6/zoom/default/1652890788.jpg', '4916', 'productes6/zoom/thumb/1652890789.jpg', 'productes6/zoom/1652890788.jpg', 'productes6/kXw9t7S4e4Y9XHZ2PzKNuJcsWVXeorbPFvwhIY9L.jpg', 'image/jpeg', 'productes', 6, NULL, NULL, '2022-05-18 14:19:49', '2022-05-18 14:19:49'),
(347, 'productes7/zoom/default/1652890867.jpg', '44915', 'productes7/zoom/thumb/1652890867.jpg', 'productes7/zoom/1652890867.jpg', 'productes7/t9FWkINZhOm8tDR3n7Mu4llBpkUgcnDJgEJrXWPd.jpg', 'image/jpeg', 'productes', 7, NULL, NULL, '2022-05-18 14:21:07', '2022-05-18 14:21:07'),
(348, 'productes7/zoom/default/1652890869.jpg', '4916', 'productes7/zoom/thumb/1652890870.jpg', 'productes7/zoom/1652890870.jpg', 'productes7/RCRWOhaSBTVIPh4tu2iCe40BO2pNGigE0RpzRy24.jpg', 'image/jpeg', 'productes', 7, NULL, NULL, '2022-05-18 14:21:10', '2022-05-18 14:21:10'),
(349, 'productes7/zoom/default/1652890874.jpg', '5904', 'productes7/zoom/thumb/1652890874.jpg', 'productes7/zoom/1652890874.jpg', 'productes7/Sr7b19cAliHLVnWaGyR05jPzWZq83xrhcNWM6BKa.jpg', 'image/jpeg', 'productes', 7, NULL, NULL, '2022-05-18 14:21:14', '2022-05-18 14:21:14'),
(350, 'productes8/zoom/default/1652890928.jpg', '5537', 'productes8/zoom/thumb/1652890928.jpg', 'productes8/zoom/1652890928.jpg', 'productes8/l4UzRRcaks5LxIK9O8aWARZWaSh3dsatEMBexG4C.jpg', 'image/jpeg', 'productes', 8, NULL, NULL, '2022-05-18 14:22:08', '2022-05-18 14:22:08'),
(351, 'productes8/zoom/default/1652890930.jpg', '4765', 'productes8/zoom/thumb/1652890931.jpg', 'productes8/zoom/1652890930.jpg', 'productes8/Qzrprk0Y290JOgmdtQyQHCBIRQLhoT8l2ugGADUt.jpg', 'image/jpeg', 'productes', 8, NULL, NULL, '2022-05-18 14:22:11', '2022-05-18 14:22:11'),
(352, 'productes8/zoom/default/1652890933.jpg', '37584', 'productes8/zoom/thumb/1652890933.jpg', 'productes8/zoom/1652890933.jpg', 'productes8/pBrRy2ALIx1jOBn0ms3CRsAWNWr9L1iwMkkADRXt.jpg', 'image/jpeg', 'productes', 8, NULL, NULL, '2022-05-18 14:22:13', '2022-05-18 14:22:13'),
(353, 'productes8/zoom/default/1652890936.jpg', '5503', 'productes8/zoom/thumb/1652890936.jpg', 'productes8/zoom/1652890936.jpg', 'productes8/BLaP9LaQZ6pjToVHxkNLp4iwsBt3lvExBdnzG695.jpg', 'image/jpeg', 'productes', 8, NULL, NULL, '2022-05-18 14:22:16', '2022-05-18 14:22:16'),
(354, 'productes8/zoom/default/1652890939.jpg', '5432', 'productes8/zoom/thumb/1652890939.jpg', 'productes8/zoom/1652890939.jpg', 'productes8/v4oCDANAvU48G5cFkKlQCvsvQ8qC1DNXyv1jlwJA.jpg', 'image/jpeg', 'productes', 8, NULL, NULL, '2022-05-18 14:22:19', '2022-05-18 14:22:19'),
(355, 'productes9/zoom/default/1652891012.jpg', '6618', 'productes9/zoom/thumb/1652891013.jpg', 'productes9/zoom/1652891012.jpg', 'productes9/wBj64isRatrCA1fY1ldcsmiSaa0rlbIXRMOtpkzt.jpg', 'image/jpeg', 'productes', 9, NULL, NULL, '2022-05-18 14:23:33', '2022-05-18 14:23:33'),
(356, 'productes9/zoom/default/1652891015.jpg', '4951', 'productes9/zoom/thumb/1652891016.jpg', 'productes9/zoom/1652891015.jpg', 'productes9/vTrYoL3Qktcg1HsexLtlOxtnWoF56AnQ0GXyQy9I.jpg', 'image/jpeg', 'productes', 9, NULL, NULL, '2022-05-18 14:23:36', '2022-05-18 14:23:36'),
(357, 'productes9/zoom/default/1652891018.jpg', '5562', 'productes9/zoom/thumb/1652891018.jpg', 'productes9/zoom/1652891018.jpg', 'productes9/vr8CKveTSiOgXgRf9AxvBKxda0d650f478NnVdUb.jpg', 'image/jpeg', 'productes', 9, NULL, NULL, '2022-05-18 14:23:38', '2022-05-18 14:23:38'),
(358, 'productes9/zoom/default/1652891021.jpg', '43467', 'productes9/zoom/thumb/1652891021.jpg', 'productes9/zoom/1652891021.jpg', 'productes9/wXpsLvnoztyoIgHFW84SnyXeI8aCG4qKP56F0Et7.jpg', 'image/jpeg', 'productes', 9, NULL, NULL, '2022-05-18 14:23:41', '2022-05-18 14:23:41'),
(359, 'productes10/zoom/default/1652891094.jpg', '5735', 'productes10/zoom/thumb/1652891094.jpg', 'productes10/zoom/1652891094.jpg', 'productes10/o21qmOvUYtU7AvOOuevgyWX0xcJ63J7Ljonvlero.jpg', 'image/jpeg', 'productes', 10, NULL, NULL, '2022-05-18 14:24:54', '2022-05-18 14:24:54'),
(360, 'productes10/zoom/default/1652891097.jpg', '7752', 'productes10/zoom/thumb/1652891097.jpg', 'productes10/zoom/1652891097.jpg', 'productes10/4hDyVgDdWpXSygC0HnfSP2R3CXy7P8WgKSyp5wAl.jpg', 'image/jpeg', 'productes', 10, NULL, NULL, '2022-05-18 14:24:57', '2022-05-18 14:24:57'),
(361, 'productes10/zoom/default/1652891100.jpg', '5935', 'productes10/zoom/thumb/1652891100.jpg', 'productes10/zoom/1652891100.jpg', 'productes10/oD9B34NvG8StVr8jj5GyT2UVp81SFY2Uf1HRhjjk.jpg', 'image/jpeg', 'productes', 10, NULL, NULL, '2022-05-18 14:25:00', '2022-05-18 14:25:00'),
(362, 'productes10/zoom/default/1652891103.jpg', '75669', 'productes10/zoom/thumb/1652891103.jpg', 'productes10/zoom/1652891103.jpg', 'productes10/9JQ8sBRBosVWAdXNajIJZMMyjUxpKW7mMVS93F9Z.jpg', 'image/jpeg', 'productes', 10, NULL, NULL, '2022-05-18 14:25:03', '2022-05-18 14:25:03'),
(363, 'productes10/zoom/default/1652891105.jpg', '5976', 'productes10/zoom/thumb/1652891106.jpg', 'productes10/zoom/1652891105.jpg', 'productes10/rKSB5XC7IjipZJhLNTOurjRJjfl8SAqXBVlNM5hU.jpg', 'image/jpeg', 'productes', 10, NULL, NULL, '2022-05-18 14:25:06', '2022-05-18 14:25:06'),
(364, 'productes11/zoom/default/1652891167.jpg', '3955', 'productes11/zoom/thumb/1652891167.jpg', 'productes11/zoom/1652891167.jpg', 'productes11/fA5yMP5kUFsrL20iHRCPJuZc512SAfNLytFHYx6N.jpg', 'image/jpeg', 'productes', 11, NULL, NULL, '2022-05-18 14:26:07', '2022-05-18 14:26:07'),
(365, 'productes11/zoom/default/1652891169.jpg', '4724', 'productes11/zoom/thumb/1652891170.jpg', 'productes11/zoom/1652891169.jpg', 'productes11/u7GcMTS4pu4IBguyZFwDgH4Y3GcDoGMXg97bQA5D.jpg', 'image/jpeg', 'productes', 11, NULL, NULL, '2022-05-18 14:26:10', '2022-05-18 14:26:10'),
(366, 'productes11/zoom/default/1652891172.jpg', '36855', 'productes11/zoom/thumb/1652891172.jpg', 'productes11/zoom/1652891172.jpg', 'productes11/tvgkxJEaKEwHvz4bhiHRVNvHlT8LQwsohpwQlrS6.jpg', 'image/jpeg', 'productes', 11, NULL, NULL, '2022-05-18 14:26:12', '2022-05-18 14:26:12'),
(367, 'productes12/zoom/default/1652891231.jpg', '3955', 'productes12/zoom/thumb/1652891231.jpg', 'productes12/zoom/1652891231.jpg', 'productes12/nvmX6EQyBhC0Bqfi2ODMuvc1qENuCSDbSUJIEIrr.jpg', 'image/jpeg', 'productes', 12, NULL, NULL, '2022-05-18 14:27:11', '2022-05-18 14:27:11'),
(368, 'productes12/zoom/default/1652891234.jpg', '4724', 'productes12/zoom/thumb/1652891234.jpg', 'productes12/zoom/1652891234.jpg', 'productes12/GXm3vvQW0MXlixWvZAE5kVYgHTiRouAMavOyX9ut.jpg', 'image/jpeg', 'productes', 12, NULL, NULL, '2022-05-18 14:27:14', '2022-05-18 14:27:14'),
(369, 'productes12/zoom/default/1652891241.jpg', '36905', 'productes12/zoom/thumb/1652891241.jpg', 'productes12/zoom/1652891241.jpg', 'productes12/CgjEKAeg219qpFU3UmiXZoWtypWpMWLaeTMgIsgf.jpg', 'image/jpeg', 'productes', 12, NULL, NULL, '2022-05-18 14:27:21', '2022-05-18 14:27:21'),
(370, 'productes13/zoom/default/1652891297.jpg', '4775', 'productes13/zoom/thumb/1652891297.jpg', 'productes13/zoom/1652891297.jpg', 'productes13/IbRrbdcIm6hAXBhVHqiD9BD2zEwPOG69QENGjAM9.jpg', 'image/jpeg', 'productes', 13, NULL, NULL, '2022-05-18 14:28:17', '2022-05-18 14:28:17'),
(371, 'productes13/zoom/default/1652891301.jpg', '4046', 'productes13/zoom/thumb/1652891301.jpg', 'productes13/zoom/1652891301.jpg', 'productes13/ONbxx8aAEm7gPzImYXi5eeoG1fDb0CjtFdQ87iAU.jpg', 'image/jpeg', 'productes', 13, NULL, NULL, '2022-05-18 14:28:21', '2022-05-18 14:28:21'),
(372, 'productes13/zoom/default/1652891304.jpg', '37964', 'productes13/zoom/thumb/1652891304.jpg', 'productes13/zoom/1652891304.jpg', 'productes13/n8sMJ5pzfbsObM5mERm6sFhMkh6z2vkV1jLKZG7i.jpg', 'image/jpeg', 'productes', 13, NULL, NULL, '2022-05-18 14:28:24', '2022-05-18 14:28:24'),
(373, 'productes13/zoom/default/1652891306.jpg', '6027', 'productes13/zoom/thumb/1652891306.jpg', 'productes13/zoom/1652891306.jpg', 'productes13/phIk2qQlFEM4uKetR3oD090YegGkYpvvBrVHPzNL.jpg', 'image/jpeg', 'productes', 13, NULL, NULL, '2022-05-18 14:28:26', '2022-05-18 14:28:26'),
(374, 'productes13/zoom/default/1652891309.jpg', '5688', 'productes13/zoom/thumb/1652891309.jpg', 'productes13/zoom/1652891309.jpg', 'productes13/AQ2CIkkvTGrrlG2yeacAQ6JwNjiFBfXBrxb5od3o.jpg', 'image/jpeg', 'productes', 13, NULL, NULL, '2022-05-18 14:28:29', '2022-05-18 14:28:29'),
(375, 'productes14/zoom/default/1652891374.jpg', '4164', 'productes14/zoom/thumb/1652891374.jpg', 'productes14/zoom/1652891374.jpg', 'productes14/XQejpn1uBSyBUavPiWoKpGjcHRvBj9NktCc70sOg.jpg', 'image/jpeg', 'productes', 14, NULL, NULL, '2022-05-18 14:29:34', '2022-05-18 14:29:34'),
(376, 'productes14/zoom/default/1652891376.jpg', '38088', 'productes14/zoom/thumb/1652891377.jpg', 'productes14/zoom/1652891376.jpg', 'productes14/AWK4Kt15LYjMn62YS4NeYQTbUK0KU1bPjcm7NdNP.jpg', 'image/jpeg', 'productes', 14, NULL, NULL, '2022-05-18 14:29:37', '2022-05-18 14:29:37'),
(377, 'productes14/zoom/default/1652891379.jpg', '4819', 'productes14/zoom/thumb/1652891379.jpg', 'productes14/zoom/1652891379.jpg', 'productes14/cJR5AV46g1bVMM4At4ZyNOF4TXDJiytdogAyQ2ZW.jpg', 'image/jpeg', 'productes', 14, NULL, NULL, '2022-05-18 14:29:39', '2022-05-18 14:29:39'),
(378, 'productes14/zoom/default/1652891382.jpg', '4592', 'productes14/zoom/thumb/1652891382.jpg', 'productes14/zoom/1652891382.jpg', 'productes14/KKA0uudzyhFNflZKJbxL88q6RlNmELQEt8hsGaTB.jpg', 'image/jpeg', 'productes', 14, NULL, NULL, '2022-05-18 14:29:42', '2022-05-18 14:29:42'),
(379, 'productes15/zoom/default/1652891619.jpg', '22874', 'productes15/zoom/thumb/1652891619.jpg', 'productes15/zoom/1652891619.jpg', 'productes15/rmDpxIU0IK7DUKgJqBIpK2iBsqvP45goOyVmT4ox.jpg', 'image/jpeg', 'productes', 15, NULL, NULL, '2022-05-18 14:33:40', '2022-05-18 14:33:40'),
(380, 'productes15/zoom/default/1652891621.jpg', '3065', 'productes15/zoom/thumb/1652891621.jpg', 'productes15/zoom/1652891621.jpg', 'productes15/v2hFUNUdMzIGoJ70gBMdMgIJj7MqVcWtAZbgLH8F.jpg', 'image/jpeg', 'productes', 15, NULL, NULL, '2022-05-18 14:33:41', '2022-05-18 14:33:41'),
(381, 'productes15/zoom/default/1652891622.jpg', '5775', 'productes15/zoom/thumb/1652891623.jpg', 'productes15/zoom/1652891622.jpg', 'productes15/kac1YPBog3ZvOgvaFKQ3vycg2Bwm9CO8NoVRq49n.jpg', 'image/jpeg', 'productes', 15, NULL, NULL, '2022-05-18 14:33:43', '2022-05-18 14:33:43'),
(382, 'productes15/zoom/default/1652891624.jpg', '5775', 'productes15/zoom/thumb/1652891624.jpg', 'productes15/zoom/1652891624.jpg', 'productes15/FrL8qwR7mlrdsQqaMHFeczWrlW14YzYBrgOl3cDK.jpg', 'image/jpeg', 'productes', 15, NULL, NULL, '2022-05-18 14:33:44', '2022-05-18 14:33:44'),
(383, 'productes15/zoom/default/1652891625.jpg', '4478', 'productes15/zoom/thumb/1652891626.jpg', 'productes15/zoom/1652891626.jpg', 'productes15/NlX0cBY2uoSN27W05FRWJ9nSzA9XRMkziunafAdW.jpg', 'image/jpeg', 'productes', 15, NULL, NULL, '2022-05-18 14:33:46', '2022-05-18 14:33:46'),
(384, 'productes16/zoom/default/1652891672.jpg', '4425', 'productes16/zoom/thumb/1652891672.jpg', 'productes16/zoom/1652891672.jpg', 'productes16/x1V2DVtXyu0BuPL9gYKlehaK8oCiGVPvaSO69aat.jpg', 'image/jpeg', 'productes', 16, NULL, NULL, '2022-05-18 14:34:32', '2022-05-18 14:34:32'),
(385, 'productes16/zoom/default/1652891674.jpg', '4333', 'productes16/zoom/thumb/1652891674.jpg', 'productes16/zoom/1652891674.jpg', 'productes16/oOd21lo0vjFvOmFxdyNrWdu7pqGJGjXXyqnSiQRk.jpg', 'image/jpeg', 'productes', 16, NULL, NULL, '2022-05-18 14:34:34', '2022-05-18 14:34:34'),
(386, 'productes16/zoom/default/1652891675.jpg', '37468', 'productes16/zoom/thumb/1652891676.jpg', 'productes16/zoom/1652891675.jpg', 'productes16/DrIG0gsU9QMVBFFuECiOvrU4YeejclivIgzgaCTr.jpg', 'image/jpeg', 'productes', 16, NULL, NULL, '2022-05-18 14:34:36', '2022-05-18 14:34:36'),
(387, 'productes16/zoom/default/1652891678.jpg', '2902', 'productes16/zoom/thumb/1652891678.jpg', 'productes16/zoom/1652891678.jpg', 'productes16/PuY1Q2RfUCfgdzZdfJMfVTH8ZaxjmPWPTb62Qa6y.jpg', 'image/jpeg', 'productes', 16, NULL, NULL, '2022-05-18 14:34:38', '2022-05-18 14:34:38'),
(388, 'productes16/zoom/default/1652891680.jpg', '4662', 'productes16/zoom/thumb/1652891680.jpg', 'productes16/zoom/1652891680.jpg', 'productes16/TgECdjUXxTSZj60cyHpMqqLYZuIXp2Nj1ARu7XrK.jpg', 'image/jpeg', 'productes', 16, NULL, NULL, '2022-05-18 14:34:40', '2022-05-18 14:34:40'),
(389, 'productes17/zoom/default/1652891783.jpg', '36640', 'productes17/zoom/thumb/1652891783.jpg', 'productes17/zoom/1652891783.jpg', 'productes17/VhDS4SFMOtZCXtLYMeXk8oUPDg8qmyLhM3pO2uKC.jpg', 'image/jpeg', 'productes', 17, NULL, NULL, '2022-05-18 14:36:23', '2022-05-18 14:36:23'),
(390, 'productes17/zoom/default/1652891785.jpg', '4642', 'productes17/zoom/thumb/1652891785.jpg', 'productes17/zoom/1652891785.jpg', 'productes17/GQarG4H0nTtGtwwUu8lhEjg1pKA8X1ux8U9vy35H.jpg', 'image/jpeg', 'productes', 17, NULL, NULL, '2022-05-18 14:36:25', '2022-05-18 14:36:25'),
(391, 'productes17/zoom/default/1652891787.jpg', '6719', 'productes17/zoom/thumb/1652891787.jpg', 'productes17/zoom/1652891787.jpg', 'productes17/hsJMKAxdbBLTFGWnBlGPDUBml23prU566XUXKfh1.jpg', 'image/jpeg', 'productes', 17, NULL, NULL, '2022-05-18 14:36:27', '2022-05-18 14:36:27'),
(392, 'productes17/zoom/default/1652891788.jpg', '5142', 'productes17/zoom/thumb/1652891789.jpg', 'productes17/zoom/1652891788.jpg', 'productes17/5K3U1p36HgDNSEN1QqVHsZ2zsZZJzNEVX40TiDtD.jpg', 'image/jpeg', 'productes', 17, NULL, NULL, '2022-05-18 14:36:29', '2022-05-18 14:36:29'),
(393, 'productes18/zoom/default/1652891893.jpg', '5131', 'productes18/zoom/thumb/1652891893.jpg', 'productes18/zoom/1652891893.jpg', 'productes18/9tVRmVvGzQcjM206KE3ZXh7uWgJPTKQCn4TvrXG4.jpg', 'image/jpeg', 'productes', 18, NULL, NULL, '2022-05-18 14:38:13', '2022-05-18 14:38:13'),
(394, 'productes18/zoom/default/1652891894.jpg', '43498', 'productes18/zoom/thumb/1652891895.jpg', 'productes18/zoom/1652891894.jpg', 'productes18/5NZ5avgh2xME3H6CT5GZRbBNtmQ2qAsSSNC0iU5r.jpg', 'image/jpeg', 'productes', 18, NULL, NULL, '2022-05-18 14:38:15', '2022-05-18 14:38:15'),
(395, 'productes18/zoom/default/1652891896.jpg', '6042', 'productes18/zoom/thumb/1652891896.jpg', 'productes18/zoom/1652891896.jpg', 'productes18/HJVWi9BqjytAfh1rqaXjSiUyzVHZtyahhdX0Ul8s.jpg', 'image/jpeg', 'productes', 18, NULL, NULL, '2022-05-18 14:38:16', '2022-05-18 14:38:16'),
(396, 'productes18/zoom/default/1652891898.jpg', '4942', 'productes18/zoom/thumb/1652891899.jpg', 'productes18/zoom/1652891899.jpg', 'productes18/dXumrVhSAKZS14QyxLYo8REDPfRqqYICOyiCCPuK.jpg', 'image/jpeg', 'productes', 18, NULL, NULL, '2022-05-18 14:38:19', '2022-05-18 14:38:19'),
(397, 'productes18/zoom/default/1652891901.jpg', '4809', 'productes18/zoom/thumb/1652891901.jpg', 'productes18/zoom/1652891901.jpg', 'productes18/8iD8VZfNbUmtMhvyJGSRCMUnT5fqHdySyr3u0o4z.jpg', 'image/jpeg', 'productes', 18, NULL, NULL, '2022-05-18 14:38:21', '2022-05-18 14:38:21'),
(398, 'productes19/zoom/default/1652892014.jpg', '5476', 'productes19/zoom/thumb/1652892015.jpg', 'productes19/zoom/1652892015.jpg', 'productes19/o664UYh24czzre5jSEs9piaKobzRQHp97IHy4d5Y.jpg', 'image/jpeg', 'productes', 19, NULL, NULL, '2022-05-18 14:40:15', '2022-05-18 14:40:15'),
(399, 'productes19/zoom/default/1652892018.jpg', '5178', 'productes19/zoom/thumb/1652892018.jpg', 'productes19/zoom/1652892018.jpg', 'productes19/ZESiRcx1gkVIyVYpVBSfcQhJSJ0DwxqECp3hm7Me.jpg', 'image/jpeg', 'productes', 19, NULL, NULL, '2022-05-18 14:40:18', '2022-05-18 14:40:18'),
(400, 'productes19/zoom/default/1652892020.jpg', '45537', 'productes19/zoom/thumb/1652892020.jpg', 'productes19/zoom/1652892020.jpg', 'productes19/YECzqo3Bj3zXzqguuhcGrm7KNhAqIBKcDNXZy3y8.jpg', 'image/jpeg', 'productes', 19, NULL, NULL, '2022-05-18 14:40:20', '2022-05-18 14:40:20'),
(401, 'productes19/zoom/default/1652892023.jpg', '6683', 'productes19/zoom/thumb/1652892023.jpg', 'productes19/zoom/1652892023.jpg', 'productes19/LedNvD0ivatCpl5XDVy20OhHOCjzIpyJixCWCktK.jpg', 'image/jpeg', 'productes', 19, NULL, NULL, '2022-05-18 14:40:23', '2022-05-18 14:40:23'),
(402, 'productes21/zoom/default/1652892181.jpg', '296255', 'productes21/zoom/thumb/1652892182.jpg', 'productes21/zoom/1652892182.jpg', 'productes21/DD9BrD8Xdmte0GqoDZvEefF8pwDXhepIbsPUkdqw.jpg', 'image/jpeg', 'productes', 21, NULL, NULL, '2022-05-18 14:43:02', '2022-05-18 14:43:02'),
(403, 'productes21/zoom/default/1652892185.jpg', '250271', 'productes21/zoom/thumb/1652892185.jpg', 'productes21/zoom/1652892185.jpg', 'productes21/CqQuj7xHs5wIKF1Dcv78TEec49j98FpWp9ikVULO.jpg', 'image/jpeg', 'productes', 21, NULL, NULL, '2022-05-18 14:43:05', '2022-05-18 14:43:05'),
(404, 'productes21/zoom/default/1652892191.jpg', '263765', 'productes21/zoom/thumb/1652892192.jpg', 'productes21/zoom/1652892191.jpg', 'productes21/pRLMbY07MGHMLYT4mEJcDelc9HqUikGYStAnoBkw.jpg', 'image/jpeg', 'productes', 21, NULL, NULL, '2022-05-18 14:43:12', '2022-05-18 14:43:12'),
(405, 'productes21/zoom/default/1652892195.jpg', '322512', 'productes21/zoom/thumb/1652892196.jpg', 'productes21/zoom/1652892195.jpg', 'productes21/B6aHP3KFOmA82SpZwJPLfswQnBdMwC2DojSyHeh4.jpg', 'image/jpeg', 'productes', 21, NULL, NULL, '2022-05-18 14:43:16', '2022-05-18 14:43:16');

-- --------------------------------------------------------

--
-- Table structure for table `menuecontroll`
--

CREATE TABLE `menuecontroll` (
  `id` int(10) UNSIGNED NOT NULL,
  `admin_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imported_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Factory_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Handicraft_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WhoWeAre_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VisionMission_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Objectives_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newes_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counteries_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cities_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `states_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departments_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trademarks_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturers_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `malls_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizes_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productes_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Coupons_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marketers_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jobs_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publicPayment_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MyAcount_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Models_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admins_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vendor_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `company_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imported_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Factory_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Handicraft_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `users_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `WhoWeAre_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VisionMission_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Objectives_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `newes_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `counteries_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cities_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `states_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `departments_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `trademarks_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturers_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `malls_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colors_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sizes_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productes_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Coupons_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Marketers_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Jobs_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `publicPayment_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `MyAcount_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Models_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menuecontroll`
--

INSERT INTO `menuecontroll` (`id`, `admin_name_ar`, `settings_name_ar`, `admins_name_ar`, `user_name_ar`, `vendor_name_ar`, `company_name_ar`, `imported_name_ar`, `Factory_name_ar`, `Handicraft_name_ar`, `users_name_ar`, `WhoWeAre_name_ar`, `VisionMission_name_ar`, `Objectives_name_ar`, `newes_name_ar`, `counteries_name_ar`, `cities_name_ar`, `states_name_ar`, `departments_name_ar`, `trademarks_name_ar`, `manufacturers_name_ar`, `shipping_name_ar`, `malls_name_ar`, `colors_name_ar`, `sizes_name_ar`, `weight_name_ar`, `productes_name_ar`, `Coupons_name_ar`, `Marketers_name_ar`, `Jobs_name_ar`, `publicPayment_name_ar`, `MyAcount_name_ar`, `Models_name_ar`, `admin_name_en`, `settings_name_en`, `admins_name_en`, `user_name_en`, `vendor_name_en`, `company_name_en`, `imported_name_en`, `Factory_name_en`, `Handicraft_name_en`, `users_name_en`, `WhoWeAre_name_en`, `VisionMission_name_en`, `Objectives_name_en`, `newes_name_en`, `counteries_name_en`, `cities_name_en`, `states_name_en`, `departments_name_en`, `trademarks_name_en`, `manufacturers_name_en`, `shipping_name_en`, `malls_name_en`, `colors_name_en`, `sizes_name_en`, `weight_name_en`, `productes_name_en`, `Coupons_name_en`, `Marketers_name_en`, `Jobs_name_en`, `publicPayment_name_en`, `MyAcount_name_en`, `Models_name_en`, `admin_id`, `created_at`, `updated_at`) VALUES
(1, 'لوحه التحكم الرئيسه ', 'الاعدادات  ', ' المدرين', '  مستخدم ', 'بائع  ', '  شركه', 'مستورد  ', 'مصنع  ', 'حرفة يدوية ', 'حسابات المستخدمين', 'من نحن ', 'رؤيتنا و رسالتنا ', 'الاهداف  ', 'الاخبار ', ' الدوله', 'المدن ', ' المناطق', 'الاقسام', 'العلامات التجارية', 'المصنعين', 'شركات الشحن', 'الممجمعات التجارية', 'الالوان', 'المقاسات', 'الوزن', 'المنتجات', 'الكيبونات', 'المسوقين ', 'الوظائف', 'طرية حساب التجار ', 'حسابي ', 'الموديلات ', 'Main Dashboard', 'Settings', 'Moderators', 'user', 'vendor', 'company', 'imported', 'Factory', 'Handcraft', 'User Accounts', 'Who are we', 'Our vision and mission', 'Objectives', 'news', 'Country', 'cities', 'Regions', 'Departments', 'trademarks', 'manufacturers', 'Shipping companies', 'Malls', 'colors', 'Sizes', 'weight', ' Products', 'Coupons', 'Marketers', 'Jobs', 'Merchant account softness', 'My Acount', 'Models', 1, '2021-02-20 11:22:08', '2021-02-20 11:22:08');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_09_12_99999_create_visitlogs_table', 1),
(4, '2018_02_25_005243_create_orders_table', 1),
(5, '2019_02_14_150923_create_tags_table', 1),
(6, '2019_04_12_224128_create_countries_table', 1),
(7, '2019_05_12_224128_create_cities_table', 1),
(8, '2019_05_13_224128_create_states_table', 1),
(9, '2019_05_14_224129_create_Student_table', 1),
(10, '2019_05_20_004315_create_tbl_samples_table', 1),
(11, '2019_05_22_125438_create_country_state_cities_table', 1),
(12, '2019_05_22_211211_create_tbl_logins_table', 1),
(13, '2019_05_22_221636_create_tbl_customers_table', 1),
(14, '2019_05_23_115933_create_apps_countries_table', 1),
(15, '2019_05_23_200136_create_posts_table', 1),
(16, '2019_05_24_200136_CreateDepartmentsTable', 1),
(17, '2019_06_09_232122_admin', 1),
(18, '2019_06_28_152409_create_trade_marks_table', 1),
(19, '2019_06_29_155040_create_manufacturers_table', 1),
(20, '2019_08_18_195939_create_shippings_table', 1),
(21, '2019_08_18_195940_create_colors_table', 1),
(22, '2019_08_23_100756_create_malls_table', 1),
(23, '2019_09_29_100756_create_sizes_table', 1),
(24, '2019_09_29_100757_create_weight_table', 1),
(25, '2019_09_29_100759_create_productes_table', 1),
(26, '2019_09_29_100760_create_files_table', 1),
(27, '2019_09_30_113240_create_other_datas_table', 1),
(28, '2019_09_30_113241_create_useruploadpdf_table', 1),
(29, '2019_09_30_113243_create_numberAcessWebsite_table', 1),
(30, '2019_09_30_113244_create_WhoWeAre_table', 1),
(31, '2019_09_30_113245_create_VisionMission_table', 1),
(32, '2019_09_30_113246_create_Coupon_table', 1),
(33, '2019_09_30_113254_create_callCenter_table', 1),
(34, '2019_09_30_113257_create_tblemployee_table', 1),
(35, '2019_09_30_113276_create_Objectives_table', 1),
(36, '2019_09_30_113277_create_newes_table', 1),
(37, '2019_09_30_113278_create_Maincategories_table', 1),
(38, '2019_09_30_113279_create_subcategories_table', 1),
(39, '2019_09_30_113280_create_DirectorWord_table', 1),
(40, '2019_09_30_113281_create_Healthyoption_table', 1),
(41, '2019_09_30_113282_create_RawMaterials_table', 1),
(42, '2019_09_30_113283_create_AdvantagesOfPipes_table', 1),
(43, '2019_09_30_113284_create_UsesOfPipes_table', 1),
(44, '2019_09_30_113285_create_WarrantyQuality_table', 1),
(45, '2019_10_1_200422_create_comments_table', 1),
(46, '2019_10_1_200423_create_AfterPaymentOrders_table', 1),
(47, '2019_10_1_200424_create_AfterPaymentorderproduct_table', 1),
(48, '2019_10_1_200425_create_AfterPyment_table', 1),
(49, '2019_10_1_200426_create_WeightAndVolumeForEachCity_table', 1),
(50, '2019_10_1_200426_create_otherdatasforShiping_table', 1),
(51, '2019_10_1_200427_create_FAQs_table', 1),
(52, '2019_10_1_200427_create_Jobss_table', 1),
(53, '2019_10_1_200428_create_OrderShareWithAllVendor_table', 1),
(54, '2019_10_1_200428_create_ourTeam_table', 1),
(55, '2019_10_25_100922_create_order_product_table', 1),
(56, '2020_02_14_150920_create_jobs_table', 1),
(57, '2020_02_14_150921_create_publicPayment_table', 1),
(58, '2020_02_14_150922_create_MenueControll_table', 1),
(59, '2020_02_14_150924_create_BannerTop_table', 1),
(60, '2020_02_14_150925_create_SellerAccount_table', 1),
(61, '2020_03_05_195246_create_cats_table', 1),
(62, '2020_03_05_195247_create_otherDataForSize_table', 1),
(63, '2020_03_05_195248_create_Models_table', 1),
(64, '2020_03_05_195248_create_otherDataForModels_table', 1),
(65, '2020_03_05_195249_create_colorNamephotoColorsiz_table', 1),
(66, '2020_03_05_195250_create_colorNamephotoColormodel_table', 1),
(67, '2020_03_05_195251_create_photoesFactory_table', 1),
(68, '2020_03_05_195252_create_BannerTopFactory_table', 1),
(69, '2020_03_05_195253_create_departmentsFactories_table', 1),
(70, '2020_03_05_195254_create_photoesEN_table', 1),
(71, '2020_03_05_195255_create_BannerTopEN_table', 1),
(72, '2020_03_05_195256_create_otherDataColorForSlider_table', 1),
(73, '2020_03_05_195257_create_otherDataColorForSliderEN_table', 1),
(74, '2020_03_05_195258_create_PurchaseAndDeliveryPolicy_table', 1),
(75, '2020_03_05_195259_create_PaymentAndDeliveryPolicy_table', 1),
(76, '2020_04_22_211825_create_messages_table', 1),
(77, '2020_04_26_170944_create_tasks_table', 1),
(78, '2020_04_26_170960_create_sendsms_table', 1),
(79, '2020_04_28_194959_create_search_histories_table', 1),
(80, '2020_04_28_194960_create_whoistarget_table', 1),
(81, '2020_04_28_194963_create_bannerForAppAndWeb_table', 1),
(82, '2020_04_28_194964_create_AffiliateRegister_table', 1),
(83, '2020_04_28_194967_create_OtherDatasٍSiZes_table', 1),
(84, '2020_04_28_194968_create_zones_table', 1),
(85, '2020_04_28_194969_create_statDistrebutionToZones_table', 1),
(86, '2021_01_24_082452_create_certificats_table', 1),
(87, '2021_01_24_111839_create_partners_table', 1),
(88, '2021_01_25_082607_create_contacts_table', 1),
(89, '2021_01_25_124423_create_addresses_table', 1),
(90, '2021_02_17_113122_create_settings_table', 1),
(91, '2019_08_19_000000_create_failed_jobs_table', 2),
(92, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(93, '2022_01_29_151105_create_admins_table', 1),
(94, '2022_05_01_040749_create_attributes_table', 3),
(98, '2022_05_01_131041_create_attribute_values_table', 4),
(100, '2022_05_02_011915_create_product_variants_table', 5),
(102, '2022_05_04_193104_add_product_id_to_coupon', 1),
(105, '2022_05_05_155359_create_user_addresses_table', 6),
(106, '2022_05_06_003735_add_addresses_to_orders', 7),
(108, '2022_05_07_235346_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `is_public` enum('yes','no') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('eslam@gmail.com', '$2y$10$PSEUGr/c23FZhTODpVclAe6CPPLuiv4hX3smf8UrgzzlmExenxa7q', '2021-03-02 06:57:29');

-- --------------------------------------------------------

--
-- Table structure for table `photoes`
--

CREATE TABLE `photoes` (
  `id` int(11) NOT NULL,
  `photoes_name_en` text NOT NULL,
  `photoes_name_ar` text NOT NULL,
  `yearPrize` text NOT NULL,
  `photo` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `photoes`
--

INSERT INTO `photoes` (`id`, `photoes_name_en`, `photoes_name_ar`, `yearPrize`, `photo`, `created_at`, `updated_at`) VALUES
(1, '', '', 'Home Slider', '', '2022-04-30 14:16:00', '2022-04-12 14:15:58');

-- --------------------------------------------------------

--
-- Table structure for table `productes`
--

CREATE TABLE `productes` (
  `id` int(10) UNSIGNED NOT NULL,
  `title_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_name_ar` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title_name_en` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content_name_en` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productzoomphoto` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `photo2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `department_id` int(10) UNSIGNED DEFAULT NULL,
  `trad_id` int(10) UNSIGNED DEFAULT NULL,
  `manuf_id` int(10) UNSIGNED DEFAULT NULL,
  `color_id` int(10) UNSIGNED DEFAULT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size_id` int(10) UNSIGNED DEFAULT NULL,
  `currency_id` int(10) UNSIGNED DEFAULT NULL,
  `price` decimal(7,3) NOT NULL DEFAULT 0.000,
  `Wholesaleprice` decimal(5,2) NOT NULL DEFAULT 0.00,
  `WholesalepriceMinNum` int(11) DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `start_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_offer_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_offer_at` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_offer` decimal(7,3) NOT NULL DEFAULT 0.000,
  `other_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight_id` int(10) UNSIGNED DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` int(11) NOT NULL DEFAULT 0,
  `reason` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `NewOrSaleOrNormalOrRatio` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `TypeOfImg` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Merchantcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `productstatus` int(11) NOT NULL DEFAULT 0,
  `add` int(11) NOT NULL DEFAULT 0,
  `stat` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` int(11) DEFAULT 0,
  `admin_id` int(10) UNSIGNED DEFAULT NULL,
  `alyMarketNeddAprove` int(11) NOT NULL DEFAULT 0,
  `discriminationForhome` int(11) NOT NULL DEFAULT 0,
  `discriminationForDpartment` int(11) NOT NULL DEFAULT 0,
  `Storepremsion` int(11) NOT NULL DEFAULT 0,
  `surfID` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alymarketcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `VideoExst` int(11) NOT NULL DEFAULT 0,
  `video` int(11) NOT NULL DEFAULT 0,
  `offerExst` int(11) NOT NULL DEFAULT 0,
  `offer_precendage` int(11) NOT NULL DEFAULT 0,
  `tag_id` int(10) UNSIGNED DEFAULT NULL,
  `Commission` decimal(10,0) DEFAULT NULL,
  `vat` int(11) DEFAULT NULL,
  `vat_value` decimal(10,0) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `productes`
--

INSERT INTO `productes` (`id`, `title_name_ar`, `content_name_ar`, `title_name_en`, `content_name_en`, `photo`, `productzoomphoto`, `photo2`, `department_id`, `trad_id`, `manuf_id`, `color_id`, `size`, `size_id`, `currency_id`, `price`, `Wholesaleprice`, `WholesalepriceMinNum`, `stock`, `start_at`, `end_at`, `start_offer_at`, `end_offer_at`, `price_offer`, `other_data`, `weight`, `weight_id`, `status`, `featured`, `reason`, `NewOrSaleOrNormalOrRatio`, `TypeOfImg`, `Merchantcode`, `productstatus`, `add`, `stat`, `tax`, `admin_id`, `alyMarketNeddAprove`, `discriminationForhome`, `discriminationForDpartment`, `Storepremsion`, `surfID`, `alymarketcode`, `VideoExst`, `video`, `offerExst`, `offer_precendage`, `tag_id`, `Commission`, `vat`, `vat_value`, `created_at`, `updated_at`) VALUES
(23, 'sadasd', NULL, NULL, NULL, 'productes23/uu5p0uqCsjLYM9T5UqdzFNwWS5ugXHoB4Lf8G7Qp.pdf', NULL, NULL, 1, 12, NULL, NULL, NULL, NULL, NULL, '0.000', '0.00', NULL, 0, NULL, NULL, NULL, NULL, '0.000', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, 1, 0, 0, 0, 0, NULL, NULL, 0, 0, 0, 0, NULL, NULL, NULL, NULL, '2022-06-19 20:31:59', '2022-06-20 20:09:49');

-- --------------------------------------------------------

--
-- Table structure for table `trade_marks`
--

CREATE TABLE `trade_marks` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `trade_marks`
--

INSERT INTO `trade_marks` (`id`, `name_ar`, `logo`, `created_at`, `updated_at`) VALUES
(13, 'ABBAS AL EID', NULL, '2022-06-20 21:07:13', '2022-06-20 21:07:13'),
(14, 'Abbas Ahmad Albostani', NULL, '2022-06-20 21:08:27', '2022-06-20 21:08:27'),
(15, 'Abdul Hamid Yudat Az Zahar', NULL, '2022-06-20 21:09:19', '2022-06-20 21:09:19'),
(16, 'Ahmad Mohammadi', NULL, '2022-06-20 21:09:47', '2022-06-20 21:09:47'),
(17, 'Allamah Ali AlQurani', NULL, '2022-06-20 21:10:12', '2022-06-20 21:10:12'),
(18, 'Alsayed Abdulmajid Al Mirdamadi', NULL, '2022-06-20 21:10:35', '2022-06-20 21:10:35'),
(19, 'Alwi husein', NULL, '2022-06-20 21:11:14', '2022-06-20 21:11:14'),
(20, 'Ayat Allah Nasir Makarim Shirazi', NULL, '2022-06-20 21:12:03', '2022-06-20 21:12:03'),
(21, 'Ayatollah Sayyed Ali AL-Sistani', NULL, '2022-06-20 21:13:37', '2022-06-20 21:13:37'),
(22, 'Ayatullah Husain Mazhahiri', NULL, '2022-06-20 21:14:41', '2022-06-20 21:14:41'),
(23, 'Ayatullah Mortaza Mutahhari', NULL, '2022-06-20 21:15:08', '2022-06-20 21:15:08'),
(24, 'Ayatullah Sayyid Ali Sistani', NULL, '2022-06-20 21:17:53', '2022-06-20 21:17:53'),
(25, 'Ayatullah Syihabudin al-Mar\'asyi', NULL, '2022-06-20 21:18:43', '2022-06-20 21:18:43'),
(26, 'Ayatullah makarim alshirazi , Ayatullah ja\'far alsubhani', NULL, '2022-06-20 21:19:11', '2022-06-20 21:19:11'),
(27, 'Dr Fakhri Mashkoor', NULL, '2022-06-20 21:19:42', '2022-06-20 21:19:42'),
(28, 'Dr Muhammed Tijani As-samawi', NULL, '2022-06-20 21:20:06', '2022-06-20 21:20:06'),
(29, 'Imam Ali Ebn AL Hossein Zain AL Abedine', NULL, '2022-06-20 21:20:21', '2022-06-20 21:20:21'),
(30, 'Imam Muhammad AL-Husainy', NULL, '2022-06-20 21:20:38', '2022-06-20 21:20:38'),
(31, 'Imam Muhammad Shirazi', NULL, '2022-06-20 21:21:15', '2022-06-20 21:21:15'),
(32, 'Majid Massoudi', NULL, '2022-06-20 21:21:33', '2022-06-20 21:21:33'),
(33, 'Mohamad jawad chiri', NULL, '2022-06-20 21:22:17', '2022-06-20 21:22:17'),
(34, 'Muhammad Ali Zenjibari', NULL, '2022-06-20 21:23:08', '2022-06-20 21:23:08'),
(35, 'Muhammed Ridha Abdul Amir Anshari', NULL, '2022-06-20 21:24:07', '2022-06-20 21:24:07'),
(36, 'Nasir Makarim Syirazi', NULL, '2022-06-20 21:24:34', '2022-06-20 21:24:34'),
(38, 'Por Muhammad Ali Shomali', NULL, '2022-06-20 21:25:54', '2022-06-20 21:25:54'),
(39, 'Prof Abulqasim Gourji', NULL, '2022-06-20 21:26:20', '2022-06-20 21:26:20'),
(40, 'SAYYID IBNU THAWUS', NULL, '2022-06-20 21:26:48', '2022-06-20 21:26:48'),
(41, 'Sayed Mohammed Hossein Tabtabai', NULL, '2022-06-20 21:27:08', '2022-06-20 21:27:08'),
(42, 'Sayed Moustafa Alqazwini', NULL, '2022-06-20 21:27:24', '2022-06-20 21:27:24'),
(43, 'Sayid Muhammad Radawi', NULL, '2022-06-20 21:27:42', '2022-06-20 21:27:42'),
(44, 'Sayyed Mohammead Hussein Tabatabai', NULL, '2022-06-20 21:28:44', '2022-06-20 21:28:44'),
(45, 'Sayyed Mojtaba Musavi Lari', NULL, '2022-06-20 21:29:20', '2022-06-20 21:29:20'),
(46, 'Sayyed Riyadh Al-hakeem', NULL, '2022-06-20 21:29:36', '2022-06-20 21:29:36'),
(47, 'Sayyid Abdul Husain Dastghaib Shirazi', NULL, '2022-06-20 21:29:50', '2022-06-20 21:29:50'),
(48, 'Sayyid Ali Reza', NULL, '2022-06-20 21:30:49', '2022-06-20 21:30:49'),
(49, 'Sayyid Fadhel Hosseini Milani', NULL, '2022-06-20 21:31:12', '2022-06-20 21:31:12'),
(50, 'Sayyid Muhammad Rizvi', NULL, '2022-06-20 21:31:43', '2022-06-20 21:31:43'),
(51, 'Syaikh Ja\'far Hadi', NULL, '2022-06-20 21:32:01', '2022-06-20 21:32:01'),
(52, 'alfeker.net', NULL, '2022-06-20 21:32:22', '2022-06-20 21:32:22'),
(53, 'd. fadhel alfaraj', NULL, '2022-06-20 21:32:46', '2022-06-20 21:32:46'),
(54, 'ibrahim Amini', NULL, '2022-06-20 21:33:01', '2022-06-20 21:33:01'),
(55, 'آثار الشيخ بهجت', NULL, '2022-06-20 21:33:22', '2022-06-20 21:33:22'),
(56, 'آرمنسترونغ', NULL, '2022-06-20 21:34:22', '2022-06-20 21:34:22'),
(57, 'آقا جمال خوانساري', NULL, '2022-06-20 21:37:54', '2022-06-20 21:37:54'),
(58, 'آقا جمال خوانساري ، سيد محمد باقر ميرداماد', NULL, '2022-06-20 21:38:12', '2022-06-20 21:38:12'),
(59, 'آية الله المشكيني', NULL, '2022-06-20 21:38:48', '2022-06-20 21:38:48'),
(60, 'أ.د عامر عبد زيد الوائلي ، هاشم الميلاني', NULL, '2022-06-20 21:39:05', '2022-06-20 21:39:05'),
(61, 'أبان بن عثمان الأحمر', NULL, '2022-06-20 21:39:22', '2022-06-20 21:39:22'),
(62, 'أبو اسحاق إبراهيم بن نوبخت', NULL, '2022-06-20 21:39:39', '2022-06-20 21:39:39'),
(63, 'أبو الحسن محمد علي مكي', NULL, '2022-06-20 21:39:56', '2022-06-20 21:39:56'),
(64, 'أبو الفضل الإسلامي', NULL, '2022-06-20 21:41:14', '2022-06-20 21:41:14'),
(65, 'أبو الفضل ساجدي', NULL, '2022-06-20 21:41:31', '2022-06-20 21:41:31'),
(66, 'أبو المعالي محمد بن محمد بن إبراهيم الكلباسي', NULL, '2022-06-20 21:41:48', '2022-06-20 21:41:48'),
(67, 'أبو جعفر بن احمد بن علي القمي الايلاقي', NULL, '2022-06-20 21:42:07', '2022-06-20 21:42:07'),
(68, 'أبو علي محمد بن همام بن سهل الكاتب الأسكافي', NULL, '2022-06-20 21:42:49', '2022-06-20 21:42:49'),
(69, 'أبو محمد الساعدي', NULL, '2022-06-20 21:43:05', '2022-06-20 21:43:05'),
(70, 'أبو محمد النعيمي', NULL, '2022-06-20 21:43:29', '2022-06-20 21:43:29'),
(71, 'أبو مخنف لوط بن يحيى الغامدي الأزدي', NULL, '2022-06-20 21:44:04', '2022-06-20 21:44:04'),
(72, 'أبو منصور محمد بن أحمد الأزهري', NULL, '2022-06-20 21:44:20', '2022-06-20 21:44:20'),
(73, 'أبوالحسن بن عبدالله البكري', NULL, '2022-06-20 21:44:39', '2022-06-20 21:44:39'),
(74, 'أبوالفضل حافظيان البابلي', NULL, '2022-06-20 21:44:57', '2022-06-20 21:44:57'),
(75, 'أبوجعفر أحمد المكي', NULL, '2022-06-20 21:45:29', '2022-06-20 21:45:29'),
(76, 'أبوجعفر محمد بن عبدالله الاسكافي', NULL, '2022-06-20 21:45:50', '2022-06-20 21:45:50'),
(77, 'أبومحمد روزبهان بقلي فسايي شيرازي', NULL, '2022-06-20 21:46:07', '2022-06-20 21:46:07'),
(78, 'أبى عبدالرحمن إسماعيل بن أحمد الحيرىّ النيسابوري', NULL, '2022-06-20 21:46:25', '2022-06-20 21:46:25'),
(79, 'أبى مخنف', NULL, '2022-06-20 21:46:46', '2022-06-20 21:46:46'),
(80, 'أبي الحسن أبي ذر محمد بن يوسف العامري النيسابوري', NULL, '2022-06-20 21:48:28', '2022-06-20 21:48:28'),
(81, 'أبي الحسن بن علي المسعودي', NULL, '2022-06-20 21:49:05', '2022-06-20 21:49:05'),
(82, 'أبي الحسن علي بن إبراهيم القمي', NULL, '2022-06-20 21:49:24', '2022-06-20 21:49:24'),
(83, 'أبي الحسن علي بن الحسين بن بابويه القمي (والد الشيخ الصدوق)', NULL, '2022-06-20 21:49:38', '2022-06-20 21:49:38'),
(84, 'أبي الحسن علي بن عبد العزيز بن أبي محمد الخليعي الموصلي الحلي', NULL, '2022-06-20 21:49:56', '2022-06-20 21:49:56'),
(85, 'أبي الحسن علي بن مهدي الطبري المامطيري', NULL, '2022-06-20 21:50:16', '2022-06-20 21:50:16'),
(86, 'أبي السعادات أسعد بن عبدالقاهر الغروي الأصفهاني', NULL, '2022-06-20 21:50:44', '2022-06-20 21:50:44'),
(87, 'أبي المؤيد الموفق بن أحمد المكي', NULL, '2022-06-20 21:51:04', '2022-06-20 21:51:04'),
(88, 'أبي المجد الشيخ محمد الرضا النجفي الأصفهاني', NULL, '2022-06-20 21:51:18', '2022-06-20 21:51:18'),
(89, 'أبي جعفر محمد بن أمير الحاج الحسيني', NULL, '2022-06-20 21:51:36', '2022-06-20 21:51:36'),
(90, 'أبي جعفر محمد بن جرير بن رستم الطبري', NULL, '2022-06-20 21:51:54', '2022-06-20 21:51:54'),
(91, 'أبي جعفر محمد بن علي بن شهرأشوب السروي المازندراني', NULL, '2022-06-20 21:52:17', '2022-06-20 21:52:17'),
(92, 'أبي عبد الله محمد بن علي بن الحسن العلوي الشجري', NULL, '2022-06-20 21:52:35', '2022-06-20 21:52:35'),
(93, 'أبي محمد يعسوب الدين رستكار الجويباري', NULL, '2022-06-20 21:52:57', '2022-06-20 21:52:57'),
(94, 'أبي نصر الفارابي', NULL, '2022-06-20 21:53:14', '2022-06-20 21:53:14'),
(95, 'أبي هفّان عبدالله بن أحمد المهزمي', NULL, '2022-06-20 21:53:32', '2022-06-20 21:53:32'),
(96, 'أثير الدين الأبهري', NULL, '2022-06-20 21:53:50', '2022-06-20 21:53:50'),
(97, 'أحد أعلام أهل السنة من القرنين السادس والسابع', NULL, '2022-06-20 21:54:08', '2022-06-20 21:54:08'),
(98, 'أحد أعلام الإمامية القرن الثامن', NULL, '2022-06-20 21:54:24', '2022-06-20 21:54:24'),
(99, 'أحد علماء القرن العاشر الهجري', NULL, '2022-06-20 21:54:49', '2022-06-20 21:54:49'),
(100, 'أحمد الازرقي', NULL, '2022-06-20 21:55:15', '2022-06-20 21:55:15'),
(101, 'أحمد العلي', NULL, '2022-06-20 21:55:36', '2022-06-20 21:55:36'),
(102, 'أحمد الهاشمي', NULL, '2022-06-20 21:57:15', '2022-06-20 21:57:15'),
(103, 'أحمد الواسطي', NULL, '2022-06-20 21:57:58', '2022-06-20 21:57:58'),
(104, 'أحمد الواعظي', NULL, '2022-06-20 21:58:17', '2022-06-20 21:58:17'),
(105, 'أحمد بن إبراهيم بن مصطفى الهاشمي الأزهري المصري', NULL, '2022-06-20 21:58:32', '2022-06-20 21:58:32'),
(106, 'أحمد بن الحسين الغضائري الواسطي البغدادي', NULL, '2022-06-20 21:58:47', '2022-06-20 21:58:47'),
(107, 'أحمد بن عبدالرضا البصري', NULL, '2022-06-20 21:59:06', '2022-06-20 21:59:06'),
(108, 'أحمد بن عبدالله الكوزه كناني', NULL, '2022-06-20 21:59:24', '2022-06-20 21:59:24'),
(109, 'أحمد بن علي بن عبد القادر تقي الدين المقريزي', NULL, '2022-06-20 21:59:51', '2022-06-20 21:59:51'),
(110, 'أحمد بن محمد بن مسكويه', NULL, '2022-06-20 22:00:05', '2022-06-20 22:00:05'),
(111, 'أحمد بن يحيى بن ناقة الكوفي', NULL, '2022-06-20 22:02:37', '2022-06-20 22:02:37'),
(112, 'أحمد حبيب قصير العاملي', NULL, '2022-06-20 22:02:56', '2022-06-20 22:02:56'),
(113, 'أحمد راسم النفيس', NULL, '2022-06-20 22:03:52', '2022-06-20 22:03:52'),
(114, 'أحمد رضا الآقادادي', NULL, '2022-06-21 09:06:51', '2022-06-21 09:06:51'),
(115, 'أحمد سعيد الدمرداش', NULL, '2022-06-21 09:07:52', '2022-06-21 09:07:52'),
(116, 'أحمد صابري الهمداني', NULL, '2022-06-21 09:08:53', '2022-06-21 09:08:53'),
(117, 'أحمد ضرابي', NULL, '2022-06-21 09:10:14', '2022-06-21 09:10:14'),
(118, 'أحمد عبد الحليم عطية', NULL, '2022-06-21 09:11:21', '2022-06-21 09:11:21'),
(119, 'أحمد فاضل السعدي', NULL, '2022-06-21 09:11:57', '2022-06-21 09:11:57'),
(120, 'أحمد فاضل الصفار', NULL, '2022-06-21 09:13:36', '2022-06-21 09:13:36'),
(121, 'أحمد فيصل', NULL, '2022-06-21 09:21:41', '2022-06-21 09:21:41'),
(122, 'أحمد كاظم البغدادي', NULL, '2022-06-21 09:22:19', '2022-06-21 09:22:19'),
(123, 'أحمد محمدي', NULL, '2022-06-21 09:33:28', '2022-06-21 09:33:28'),
(124, 'أحمد ناصر', NULL, '2022-06-21 09:34:27', '2022-06-21 09:34:27'),
(125, 'أحمد نعمة العاملي', NULL, '2022-06-21 09:34:57', '2022-06-21 09:34:57'),
(126, 'أريك بينتلي', NULL, '2022-06-21 09:35:26', '2022-06-21 09:35:26'),
(127, 'أسعد السيد كاظم القاضي', NULL, '2022-06-21 09:37:26', '2022-06-21 09:37:26'),
(128, 'أفضل الدين عمر بن علي بن غيلان - الشيخ الرئيس ابن سينا', NULL, '2022-06-21 09:37:38', '2022-06-21 09:37:38'),
(129, 'أكاديمية الحكمة العقلية', NULL, '2022-06-21 09:37:56', '2022-06-21 09:37:56'),
(130, 'أمين الإسلام أبي علي الفضل بن الحسن الطبرسي', NULL, '2022-06-21 09:38:16', '2022-06-21 09:38:16'),
(131, 'أنتوني فلو', NULL, '2022-06-21 09:40:42', '2022-06-21 09:40:42'),
(132, 'أويس كريم محمد', NULL, '2022-06-21 09:41:11', '2022-06-21 09:41:11'),
(133, 'أياد العامري', NULL, '2022-06-21 09:41:26', '2022-06-21 09:41:26'),
(134, 'إبراهيم أمين السيد', NULL, '2022-06-21 09:41:42', '2022-06-21 09:41:42'),
(135, 'إبراهيم البهشتي الدامغاني', NULL, '2022-06-21 09:42:05', '2022-06-21 09:42:05'),
(136, 'إبراهيم الكلباسي', NULL, '2022-06-21 10:34:55', '2022-06-21 10:34:55'),
(137, 'إبراهيم المنيني', NULL, '2022-06-21 10:35:10', '2022-06-21 10:35:10'),
(138, 'إبراهيم بن محمد الثقفي الكوفي', NULL, '2022-06-21 10:35:53', '2022-06-21 10:35:53'),
(139, 'إبراهيم جواد', NULL, '2022-06-21 10:36:20', '2022-06-21 10:36:20'),
(140, 'إبراهيم حسين سرور', NULL, '2022-06-21 10:36:48', '2022-06-21 10:36:48'),
(141, 'إبراهيم خميس ، محسن النجار', NULL, '2022-06-21 10:37:01', '2022-06-21 10:37:01'),
(142, 'إبراهيم شمس الدين', NULL, '2022-06-21 10:38:21', '2022-06-21 10:38:21'),
(143, 'إبراهيم غلوم', NULL, '2022-06-21 10:38:38', '2022-06-21 10:38:38'),
(144, 'إتيان جلسون', NULL, '2022-06-21 10:39:16', '2022-06-21 10:39:16'),
(145, 'إحسان العارضي', NULL, '2022-06-21 10:39:40', '2022-06-21 10:39:40'),
(146, 'إدريس الحسيني', NULL, '2022-06-21 10:39:54', '2022-06-21 10:39:54'),
(147, 'إدريس هاني', NULL, '2022-06-21 10:40:14', '2022-06-21 10:40:14'),
(148, 'إسماعيل الأنصاري الزنجاني الخوئيني', NULL, '2022-06-21 11:12:50', '2022-06-21 11:12:50'),
(149, 'إسماعيل الفاروقي', NULL, '2022-06-21 11:13:44', '2022-06-21 11:13:44'),
(150, 'إسماعيل انصاري زنجاني خوئيني', NULL, '2022-06-21 11:22:33', '2022-06-21 11:22:33'),
(151, 'إسماعيل جوهري', NULL, '2022-06-21 11:22:50', '2022-06-21 11:22:50'),
(152, 'إعداد قسم الكلام والحكمة الاسلاميين', NULL, '2022-06-21 11:23:30', '2022-06-21 11:23:30'),
(153, 'إلياس كلانتري', NULL, '2022-06-21 11:23:47', '2022-06-21 11:23:47'),
(154, 'إمتياز عليخان العرشي', NULL, '2022-06-21 11:24:28', '2022-06-21 11:24:28'),
(155, 'ابراهيم أشكناني', NULL, '2022-06-21 11:24:44', '2022-06-21 11:24:44'),
(156, 'ابن أبي الدنيا عبدالله بن محمد بن عبيد', NULL, '2022-06-21 11:25:00', '2022-06-21 11:25:00'),
(157, 'ابن النديم', NULL, '2022-06-21 11:25:26', '2022-06-21 11:25:26'),
(158, 'ابن رشد', NULL, '2022-06-21 11:25:50', '2022-06-21 11:25:50'),
(159, 'ابن عساكر', NULL, '2022-06-21 11:26:12', '2022-06-21 11:26:12'),
(160, 'ابن مردويه الإصفهاني', NULL, '2022-06-21 11:26:47', '2022-06-21 11:26:47'),
(161, 'ابن هشام الأنصاري - جمال الدين بن يوسف الأنصاري المصري', NULL, '2022-06-21 11:27:05', '2022-06-21 11:27:05'),
(162, 'احمد العلي', NULL, '2022-06-21 11:27:34', '2022-06-21 11:27:34'),
(163, 'احمد زكي تفاحة', NULL, '2022-06-21 11:27:53', '2022-06-21 11:27:53'),
(164, 'اسحق شاكر العيشى', NULL, '2022-06-21 11:29:54', '2022-06-21 11:29:54'),
(165, 'الآخوند الشيخ محمد كاظم الخراساني', NULL, '2022-06-21 11:31:30', '2022-06-21 11:31:30'),
(166, 'الآقا جمال الخوانساري', NULL, '2022-06-21 11:31:49', '2022-06-21 11:31:49'),
(167, 'الآقا حسين الخوانساري', NULL, '2022-06-21 11:32:03', '2022-06-21 11:32:03'),
(168, 'الأستاذ عباس الشيخ الرئيس', NULL, '2022-06-21 11:33:47', '2022-06-21 11:33:47'),
(169, 'الأستاذ علي أكبر الغفاري', NULL, '2022-06-21 11:34:24', '2022-06-21 11:34:24'),
(170, 'الأستاذ مظاهري', NULL, '2022-06-21 11:34:39', '2022-06-21 11:34:39'),
(171, 'الأعلمي الصغير', NULL, '2022-06-21 11:34:54', '2022-06-21 11:34:54'),
(172, 'الأمير صلاح بن إبراهيم الحسني', NULL, '2022-06-21 11:35:12', '2022-06-21 11:35:12'),
(173, 'الإمام علي بن أبي طالب ع - محمد عبده', NULL, '2022-06-21 11:35:28', '2022-06-21 11:35:28'),
(174, 'الإمام علي بن الحسين زين العابدين عليه السلام', NULL, '2022-06-21 11:36:06', '2022-06-21 11:36:06'),
(175, 'الاستاذ حسين المظاهري', NULL, '2022-06-21 11:36:27', '2022-06-21 11:36:27'),
(176, 'الاستاذ محسن قراءتي', NULL, '2022-06-21 11:36:50', '2022-06-21 11:36:50'),
(177, 'الاستاذ محمد صدر زاده', NULL, '2022-06-21 11:37:24', '2022-06-21 11:37:24'),
(178, 'الامام أبي محمد الحسن بن علي العسكري ع', NULL, '2022-06-21 11:38:01', '2022-06-21 11:38:01'),
(179, 'الإمام شمس الدين ابي علي فخار بن معد الموسوي', NULL, '2022-06-21 11:39:10', '2022-06-21 11:39:10'),
(180, 'الحاج أبو معاش', NULL, '2022-06-21 11:41:32', '2022-06-21 11:41:32'),
(181, 'الحاج أحمد بن الحاج عباس العالي', NULL, '2022-06-21 11:43:56', '2022-06-21 11:43:56'),
(182, 'لحاج الميرزا علي المشكيني الأردبيلي', NULL, '2022-06-21 11:44:09', '2022-06-21 11:44:09'),
(183, 'الحاج محمد صالح الجوهرجي', NULL, '2022-06-21 11:44:24', '2022-06-21 11:44:24'),
(184, 'الحاج محمدرضا الأسدي', NULL, '2022-06-21 11:44:42', '2022-06-21 11:44:42'),
(185, 'الحاج مصطفى الصراف', NULL, '2022-06-21 11:46:25', '2022-06-21 11:46:25'),
(186, 'الحاج معين السباك', NULL, '2022-06-21 11:53:05', '2022-06-21 11:53:05'),
(187, 'الحاج ميرزا محمد تقي الموسوي الأصفهاني', NULL, '2022-06-21 11:53:38', '2022-06-21 11:53:38'),
(188, 'الحاجة فاطمة علي الجعفر', NULL, '2022-06-21 11:54:19', '2022-06-21 11:54:19'),
(189, 'الحافظ أبو محمد جعفر بن أحمد بن علي القمي الرازي', NULL, '2022-06-21 11:54:38', '2022-06-21 11:54:38'),
(190, 'الحافظ ابن البطريق، شمس الدين يحيى بن الحسن بن الحسين الأسدي الربعي الحلي', NULL, '2022-06-21 11:54:53', '2022-06-21 11:54:53'),
(191, 'الحافظ رجب البرسي', NULL, '2022-06-21 11:55:15', '2022-06-21 11:55:15'),
(192, 'الحافظ محمد بن أحمد بن عثمان الذهبي', NULL, '2022-06-21 11:58:44', '2022-06-21 11:58:44'),
(193, 'الحافظ محمد بن أحمد بن عثمان الذهبي', NULL, '2022-06-21 11:59:25', '2022-06-21 11:59:25'),
(194, 'الحسن بن علي بن شعبة الحراني', NULL, '2022-06-21 11:59:43', '2022-06-21 11:59:43'),
(195, 'الحسين بن حمدان الخصيبي', NULL, '2022-06-21 12:00:27', '2022-06-21 12:00:27'),
(196, 'الحسين بن سعيد الأهوازي', NULL, '2022-06-21 12:00:48', '2022-06-21 12:00:48'),
(197, 'الخطيب جواد شبر', NULL, '2022-06-21 12:01:06', '2022-06-21 12:01:06'),
(198, 'الخطيب حسن البدوي', NULL, '2022-06-21 12:07:50', '2022-06-21 12:07:50'),
(199, 'الخطيب علي بن الحسين الهاشمي النجفي', NULL, '2022-06-21 12:08:30', '2022-06-21 12:08:30'),
(200, 'الخواجة نصير الدين محمد بن حسن الطوسي', NULL, '2022-06-21 12:08:44', '2022-06-21 12:08:44'),
(201, 'الدكتور أبو يعرب المرزوقي', NULL, '2022-06-21 12:08:58', '2022-06-21 12:08:58'),
(202, 'الدكتور أحمد الوائلي', NULL, '2022-06-21 12:09:13', '2022-06-21 12:09:13'),
(203, 'الدكتور أحمد جواد العتابي', NULL, '2022-06-21 12:09:26', '2022-06-21 12:09:26'),
(204, 'الدكتور أحمد راسم النفيس', NULL, '2022-06-21 12:09:38', '2022-06-21 12:09:38'),
(205, 'الدكتور أسعد وحيد قاسم', NULL, '2022-06-21 12:09:52', '2022-06-21 12:09:52'),
(206, 'الدكتور أميل بديع يعقوب', NULL, '2022-06-21 12:10:32', '2022-06-21 12:10:32'),
(207, 'الدكتور أنطوان بارا', NULL, '2022-06-21 12:10:47', '2022-06-21 12:10:47'),
(208, 'الدكتور أيمن عبد الخالق', NULL, '2022-06-21 12:11:08', '2022-06-21 12:11:08'),
(209, 'الدكتور إحسان بن صادق اللواتي', NULL, '2022-06-21 12:11:19', '2022-06-21 12:11:19'),
(210, 'الدكتور ابراهيم محمد منصور', NULL, '2022-06-21 12:12:11', '2022-06-21 12:12:11'),
(211, 'الدكتور السيد بلاسم عزيز شبيب الموسوي', NULL, '2022-06-21 12:12:24', '2022-06-21 12:12:24'),
(212, 'الدكتور السيد رضا مؤدب', NULL, '2022-06-21 12:13:02', '2022-06-21 12:13:02'),
(213, 'الدكتور السيد محمد الحسيني البهشتي', NULL, '2022-06-21 12:13:51', '2022-06-21 12:13:51'),
(214, 'الدكتور السيد محمد الحسيني القزويني', NULL, '2022-06-21 12:14:03', '2022-06-21 12:14:03'),
(215, 'الدكتور الشيخ صالح الوائلي', NULL, '2022-06-21 12:14:17', '2022-06-21 12:14:17'),
(216, 'الدكتور الشيخ عبد الحسين خسروبناه', NULL, '2022-06-21 12:14:32', '2022-06-21 12:14:32'),
(217, 'الدكتور الشيخ عبد الهادي الطهمازي', NULL, '2022-06-21 12:14:53', '2022-06-21 12:14:53'),
(218, 'الدكتور الشيخ علي العلي', NULL, '2022-06-21 12:15:03', '2022-06-21 12:15:03'),
(219, 'الدكتور الشيخ ميثم السلمان', NULL, '2022-06-21 12:15:44', '2022-06-21 12:15:44'),
(220, 'الدكتور أحمد بهشتي', NULL, '2022-06-21 12:16:32', '2022-06-21 12:16:32'),
(221, 'الدكتور باسم العلي', NULL, '2022-06-21 13:33:41', '2022-06-21 13:33:41'),
(222, 'الدكتور بسيوني عبد الفتاح فيود', NULL, '2022-06-21 13:33:57', '2022-06-21 13:33:57'),
(223, 'الدكتور جاري سمول', NULL, '2022-06-21 13:34:26', '2022-06-21 13:34:26'),
(224, 'الدكتور جعفر آل ياسين', NULL, '2022-06-21 13:34:41', '2022-06-21 13:34:41'),
(225, 'الدكتور جعفر شهيدي', NULL, '2022-06-21 13:35:05', '2022-06-21 13:35:05'),
(226, 'الدكتور جعفر عبّاس حاجي', NULL, '2022-06-21 13:35:34', '2022-06-21 13:35:34'),
(227, 'الدكتور جليل عرفان منش', NULL, '2022-06-21 13:35:51', '2022-06-21 13:35:51'),
(228, 'الدكتور جواد علي', NULL, '2022-06-21 13:36:12', '2022-06-21 13:36:12'),
(229, 'الدكتور جواد كاظم النصرالله', NULL, '2022-06-21 13:36:37', '2022-06-21 13:36:37'),
(230, 'الدكتور جودت القزويني', NULL, '2022-06-21 13:36:55', '2022-06-21 13:36:55'),
(231, 'الدكتور حاتم كريم جياد', NULL, '2022-06-21 13:37:09', '2022-06-21 13:37:09'),
(232, 'الدكتور حبيب يوسف مغنية', NULL, '2022-06-21 13:37:46', '2022-06-21 13:37:46'),
(233, 'الدكتور حسن بن أحمد اللواتي', NULL, '2022-06-21 13:40:08', '2022-06-21 13:40:08'),
(234, 'الدكتور حسن عبدالكريم الشرع', NULL, '2022-06-21 13:40:24', '2022-06-21 13:40:24'),
(235, 'الدكتور حسن عيسى الحكيم', NULL, '2022-06-21 13:40:40', '2022-06-21 13:40:40'),
(236, 'الدكتور حسن كريم ماجد الربيعي', NULL, '2022-06-21 13:40:58', '2022-06-21 13:40:58'),
(237, 'الدكتور حسن معلمي', NULL, '2022-06-21 13:41:13', '2022-06-21 13:41:13'),
(238, 'الدكتور حسين إبراهيم الحاج حسن', NULL, '2022-06-21 13:41:27', '2022-06-21 13:41:27'),
(239, 'الدكتور حسين سامي شير علي العامري', NULL, '2022-06-21 13:41:43', '2022-06-21 13:41:43'),
(240, 'الدكتور خضر محمد نبها', NULL, '2022-06-21 13:42:03', '2022-06-21 13:42:03'),
(241, 'الدكتور خنجر حمية', NULL, '2022-06-21 13:42:26', '2022-06-21 13:42:26'),
(242, 'الدكتور داود العطار', NULL, '2022-06-21 13:42:40', '2022-06-21 13:42:40'),
(243, 'الدكتور رؤوف أحمد الشمري', NULL, '2022-06-21 13:42:56', '2022-06-21 13:42:56'),
(244, 'الدكتور رشدي محمد عرسان عليان', NULL, '2022-06-21 14:05:48', '2022-06-21 14:05:48'),
(245, 'الدكتور رضا باك نجاد', NULL, '2022-06-21 14:07:41', '2022-06-21 14:07:41'),
(246, 'الدكتور رضا بن علي كرعاني', NULL, '2022-06-21 14:07:58', '2022-06-21 14:07:58'),
(247, 'الدكتور رمزي زكي', NULL, '2022-06-21 14:08:42', '2022-06-21 14:08:42'),
(248, 'الدكتور روح الله الخالقي', NULL, '2022-06-21 14:08:54', '2022-06-21 14:08:54'),
(249, 'الدكتور زهير الأعرجي', NULL, '2022-06-21 14:09:51', '2022-06-21 14:09:51'),
(250, 'الدكتور سند محمد علي البلاغي', NULL, '2022-06-21 14:10:03', '2022-06-21 14:10:03'),
(251, 'الدكتور صائب عريقات', NULL, '2022-06-21 14:10:50', '2022-06-21 14:10:50'),
(252, 'الدكتور صادق عبد الرضا علي', NULL, '2022-06-21 14:11:16', '2022-06-21 14:11:16'),
(253, 'الدكتور صبحي صالح', NULL, '2022-06-21 14:11:33', '2022-06-21 14:11:33'),
(254, 'الدكتور صفاء الخزرجي', NULL, '2022-06-21 14:11:47', '2022-06-21 14:11:47'),
(255, 'الدكتور صلاح عبد الرزاق', NULL, '2022-06-21 14:11:59', '2022-06-21 14:11:59'),
(256, 'الدكتور طراد حمادة', NULL, '2022-06-21 14:12:13', '2022-06-21 14:12:13'),
(257, 'الدكتور عباس نيكزاد', NULL, '2022-06-21 14:12:30', '2022-06-21 14:12:30'),
(258, 'الدكتور عبد الجواد الكليدار آل طعمة', NULL, '2022-06-21 14:12:45', '2022-06-21 14:12:45'),
(259, 'الدكتور عبد العظيم كريمي', NULL, '2022-06-21 14:12:59', '2022-06-21 14:12:59'),
(260, 'الدكتور عبد القادر عبد الصمد', NULL, '2022-06-21 14:13:26', '2022-06-21 14:13:26'),
(261, 'الدكتور عبد الكريم الزبيدي', NULL, '2022-06-21 14:13:40', '2022-06-21 14:13:40'),
(262, 'الدكتور عبد الهادي الحائري', NULL, '2022-06-21 14:14:02', '2022-06-21 14:14:02'),
(263, 'الدكتور عبدالأمير الأعسم', NULL, '2022-06-21 14:14:17', '2022-06-21 14:14:17'),
(264, 'الدكتور عبدالجبار ناجي', NULL, '2022-06-21 14:14:36', '2022-06-21 14:14:36'),
(265, 'الدكتور عبدالرسول الغفار', NULL, '2022-06-21 14:17:42', '2022-06-21 14:17:42'),
(266, 'الدكتور عبدالرسول الغفاري', NULL, '2022-06-21 14:17:54', '2022-06-21 14:17:54'),
(267, 'الدكتور عبدالله النصري', NULL, '2022-06-21 14:18:09', '2022-06-21 14:18:09'),
(268, 'الدكتور عبدالله اميدي فرد', NULL, '2022-06-21 14:18:23', '2022-06-21 14:18:23'),
(269, 'الدكتور عبدالهادي الفضلي', NULL, '2022-06-21 14:18:37', '2022-06-21 14:18:37'),
(270, 'الدكتور عدنان فرحان آل قاسم', NULL, '2022-06-21 14:19:33', '2022-06-21 14:19:33'),
(271, 'الدكتور عدنان هاشم الحسيني', NULL, '2022-06-21 14:19:45', '2022-06-21 14:19:45'),
(272, 'الدكتور عصام العماد', NULL, '2022-06-21 14:20:00', '2022-06-21 14:20:00'),
(273, 'الدكتور علاء الدين السيد أمير محمد القزويني', NULL, '2022-06-21 14:20:12', '2022-06-21 14:20:12'),
(274, 'الدكتور علي عبدالرحمن أبا الحسين', NULL, '2022-06-21 14:20:26', '2022-06-21 14:20:26'),
(275, 'الدكتور علي التميمي', NULL, '2022-06-21 14:20:45', '2022-06-21 14:20:45'),
(276, 'الدكتور علي الحاج حسن', NULL, '2022-06-21 14:21:00', '2022-06-21 14:21:00'),
(277, 'الدكتور علي القائمي', NULL, '2022-06-21 14:21:24', '2022-06-21 14:21:24'),
(278, 'الدكتور علي بوملحم', NULL, '2022-06-21 14:21:38', '2022-06-21 14:21:38'),
(279, 'الدكتور علي خضير حجي', NULL, '2022-06-21 14:22:17', '2022-06-21 14:22:17'),
(280, 'الدكتور علي رمضان الأوسي', NULL, '2022-06-21 14:22:44', '2022-06-21 14:22:44'),
(281, 'الدكتور علي زيعور', NULL, '2022-06-21 14:22:58', '2022-06-21 14:22:58'),
(282, 'الدكتور علي شيخ', NULL, '2022-06-21 14:23:10', '2022-06-21 14:23:10'),
(283, 'الدكتور علي مرتضى الأمين', NULL, '2022-06-21 14:23:26', '2022-06-21 14:23:26'),
(284, 'الدكتور عماد جاسم مسلم', NULL, '2022-06-21 14:23:43', '2022-06-21 14:23:43'),
(285, 'الدكتور غلام علي حداد عادل', NULL, '2022-06-21 14:24:29', '2022-06-21 14:24:29'),
(286, 'الدكتور فتح المحمدي نجارزادكان', NULL, '2022-06-21 14:24:51', '2022-06-21 14:24:51'),
(287, 'الدكتور فخرالدين قباوه', NULL, '2022-06-21 14:25:08', '2022-06-21 14:25:08'),
(288, 'الدكتور فلاح عبدالله المديرس', NULL, '2022-06-21 14:25:32', '2022-06-21 14:25:32'),
(289, 'الدكتور مجدي سعيد', NULL, '2022-06-21 14:25:47', '2022-06-21 14:25:47'),
(290, 'الدكتور محسن باقر الموسوي', NULL, '2022-06-21 14:26:00', '2022-06-21 14:26:00'),
(291, 'الدكتور محسن قدسي، مهدي فارساني، الدكتور حسين زنجاني', NULL, '2022-06-21 14:26:16', '2022-06-21 14:26:16'),
(292, 'الدكتور محسن محقق', NULL, '2022-06-21 14:26:36', '2022-06-21 14:26:36'),
(293, 'الدكتور محمد التيجاني السماوي', NULL, '2022-06-21 14:26:54', '2022-06-21 14:26:54'),
(294, 'الدكتور محمد باقر حجتي', NULL, '2022-06-21 14:27:10', '2022-06-21 14:27:10'),
(295, 'الدكتور محمد باقر سعيدي روشن', NULL, '2022-06-21 14:27:22', '2022-06-21 14:27:22'),
(296, 'الدكتور محمد بن أحمد مفتي', NULL, '2022-06-21 14:27:40', '2022-06-21 14:27:40'),
(297, 'الدكتور محمد جواد رحمتي', NULL, '2022-06-21 14:27:54', '2022-06-21 14:27:54'),
(298, 'الدكتور محمد جواد لاريجاني', NULL, '2022-06-21 14:28:09', '2022-06-21 14:28:09'),
(299, 'الدكتور محمد حسين المختاري', NULL, '2022-06-21 14:28:23', '2022-06-21 14:28:23'),
(300, 'الدكتور محمد حسين علي الصغير', NULL, '2022-06-21 14:28:40', '2022-06-21 14:28:40'),
(301, 'الدكتور محمد شمص', NULL, '2022-06-21 14:29:02', '2022-06-21 14:29:02'),
(302, 'الدكتور محمد عبدالكريم الوافي', NULL, '2022-06-21 14:29:14', '2022-06-21 14:29:14'),
(303, 'الدكتور محمد علي قرباني', NULL, '2022-06-21 14:29:29', '2022-06-21 14:29:29'),
(304, 'الدكتور محمد علي مهدوي راد', NULL, '2022-06-21 14:29:43', '2022-06-21 14:29:43'),
(305, 'الدكتور محمد محمود المندلاوي', NULL, '2022-06-21 14:30:03', '2022-06-21 14:30:03'),
(306, 'الدكتور محمد مهدي الأصفهاني', NULL, '2022-06-21 14:30:19', '2022-06-21 14:30:19'),
(307, 'الدكتور محمود البستاني', NULL, '2022-06-21 14:30:34', '2022-06-21 14:30:34'),
(308, 'الدكتور مصطفى بوهندي', NULL, '2022-06-21 14:30:47', '2022-06-21 14:30:47'),
(309, 'الدكتور مصطفى جواد', NULL, '2022-06-21 14:31:05', '2022-06-21 14:31:05'),
(310, 'الدكتور مصطفى عزيزي', NULL, '2022-06-21 14:31:21', '2022-06-21 14:31:21'),
(311, 'الدكتور مصطفى محقق داماد', NULL, '2022-06-21 14:31:35', '2022-06-21 14:31:35'),
(312, 'الدكتور منصور مير أحمدي', NULL, '2022-06-21 14:31:50', '2022-06-21 14:31:50'),
(313, 'الدكتور مهدي الحائري اليزدي', NULL, '2022-06-21 16:53:44', '2022-06-21 16:53:44'),
(314, 'الدكتور مهدي فضل الله', NULL, '2022-06-21 16:54:27', '2022-06-21 16:54:27'),
(315, 'الدكتور مهدي كلشني', NULL, '2022-06-21 17:03:21', '2022-06-21 17:03:21'),
(316, 'الدكتور ناصر رفيعي المحمدي', NULL, '2022-06-21 17:03:35', '2022-06-21 17:03:35'),
(317, 'الدكتور نوري جعفر', NULL, '2022-06-21 17:03:51', '2022-06-21 17:03:51'),
(318, 'الدكتور هوستن سميث', NULL, '2022-06-21 17:04:13', '2022-06-21 17:04:13'),
(319, 'الدكتور يحيى عبد الحسن الدوخي', NULL, '2022-06-21 17:04:26', '2022-06-21 17:04:26'),
(320, 'الدكتور يوسف جعفر سعادة', NULL, '2022-06-21 17:04:57', '2022-06-21 17:04:57'),
(321, 'الدكتورة آمال حسين خوير', NULL, '2022-06-21 17:05:21', '2022-06-21 17:05:21'),
(322, 'الدكتورة آمال حسين علوان ، الدكتورة هناء حسين علوان', NULL, '2022-06-21 17:05:41', '2022-06-21 17:05:41'),
(323, 'الدكتورة انتصار عدنان عبدالواحد العواد', NULL, '2022-06-21 17:05:55', '2022-06-21 17:05:55'),
(324, 'الدكتورة جميلة محي الدين البشتي', NULL, '2022-06-21 17:07:18', '2022-06-21 17:07:18'),
(325, 'الدكتورة دلال عباس', NULL, '2022-06-21 17:07:44', '2022-06-21 17:07:44'),
(326, 'الدكتورة فوزية الدريع', NULL, '2022-06-21 17:24:34', '2022-06-21 17:24:34'),
(327, 'الدكتورة نهلة غروي نائيني', NULL, '2022-06-21 17:25:02', '2022-06-21 17:25:02'),
(328, 'الدكنور محمد علي مهدوي راد ، فتح الله نجار زادگان ، علي فاضلي', NULL, '2022-06-21 17:25:15', '2022-06-21 17:25:15'),
(329, 'الرزينة ر. لالاني', NULL, '2022-06-21 17:26:41', '2022-06-21 17:26:41'),
(330, 'السيد أبو الصاحب الشريفي', NULL, '2022-06-21 17:26:52', '2022-06-21 17:26:52'),
(331, 'السيد أبو القاسم الموسوي الخوئي', NULL, '2022-06-21 17:27:05', '2022-06-21 17:27:05'),
(332, 'السيد أبو القاسم جعفر بن الحسين الخوانساري الجرفادقاني', NULL, '2022-06-21 17:27:23', '2022-06-21 17:27:23'),
(333, 'السيد أبو طالب الحسيني القائيني', NULL, '2022-06-21 17:27:33', '2022-06-21 17:27:33'),
(334, 'السيد أبوالحسن هاشم', NULL, '2022-06-21 17:28:36', '2022-06-21 17:28:36'),
(335, 'السيد أبوفاضل الرضوي الاردكاني', NULL, '2022-06-21 17:28:51', '2022-06-21 17:28:51'),
(336, 'السيد أبي المظفر عبدالكريم بن أحمد بن طاووس العلوي الحسيني', NULL, '2022-06-21 17:29:02', '2022-06-21 17:29:02'),
(337, 'السيد أحمد الحسيني', NULL, '2022-06-21 17:29:11', '2022-06-21 17:29:11'),
(338, 'السيد أحمد الحسيني الإشكوري', NULL, '2022-06-21 17:29:23', '2022-06-21 17:29:23'),
(339, 'السيد أحمد الحسيني الزنجاني', NULL, '2022-06-21 17:30:22', '2022-06-21 17:30:22'),
(340, 'السيد أحمد الحكيم', NULL, '2022-06-21 17:30:33', '2022-06-21 17:30:33'),
(341, 'السيد أحمد الخوانساري', NULL, '2022-06-21 17:30:45', '2022-06-21 17:30:45'),
(342, 'السيد أحمد السيد صلاح الموسوي', NULL, '2022-06-21 17:30:55', '2022-06-21 17:30:55'),
(343, 'السيد أحمد الفهري', NULL, '2022-06-21 17:31:06', '2022-06-21 17:31:06'),
(344, 'السيد أحمد الماجد', NULL, '2022-06-21 17:31:26', '2022-06-21 17:31:26'),
(345, 'السيد أحمد المستنبط', NULL, '2022-06-21 17:31:39', '2022-06-21 17:31:39'),
(346, 'السيد أحمد بن طاووس', NULL, '2022-06-21 17:31:49', '2022-06-21 17:31:49'),
(347, 'السيد أحمد بن عبد العزيز الموسوي الفالي', NULL, '2022-06-21 17:32:03', '2022-06-21 17:32:03'),
(348, 'السيد أحمد زنجاني', NULL, '2022-06-21 17:32:12', '2022-06-21 17:32:12'),
(349, 'السيد أسد الله بن محمد باقر الموسوي الشفتي', NULL, '2022-06-21 17:32:21', '2022-06-21 17:32:21'),
(350, 'السيد أمير علي الموسوي القزويني', NULL, '2022-06-21 17:32:31', '2022-06-21 17:32:31'),
(351, 'السيد إبراهيم الحجازي', NULL, '2022-06-21 17:32:42', '2022-06-21 17:32:42'),
(352, 'السيد إبراهيم الحسيني الإصطهباناتي', NULL, '2022-06-21 17:32:51', '2022-06-21 17:32:51'),
(353, 'السيد إبراهيم الموسوي الزنجاني', NULL, '2022-06-21 17:33:01', '2022-06-21 17:33:01'),
(354, 'السيد إسماعيل الصدر', NULL, '2022-06-21 17:33:19', '2022-06-21 17:33:19'),
(355, 'السيد ابن طاوس ، الكفعمي', NULL, '2022-06-21 17:33:30', '2022-06-21 17:33:30'),
(356, 'السيد اقا حسين القمي', NULL, '2022-06-21 17:33:40', '2022-06-21 17:33:40'),
(357, 'السيد الحسين بن الحسن الكركي الموسوي', NULL, '2022-06-21 17:33:54', '2022-06-21 17:33:54'),
(358, 'السيد الدكتور سعد شريف البخاتي', NULL, '2022-06-21 17:34:04', '2022-06-21 17:34:04'),
(359, 'السيد الشريف الرضي', NULL, '2022-06-21 17:34:19', '2022-06-21 17:34:19'),
(360, 'السيد الشريف محمد بن علي بن الحسين العلوي', NULL, '2022-06-21 17:34:30', '2022-06-21 17:34:30'),
(361, 'السيد العباس الحسيني الكاشاني', NULL, '2022-06-21 17:34:45', '2022-06-21 17:34:45'),
(362, 'السيد العلامة الهادي بن إبراهيم بن علي الوزير', NULL, '2022-06-21 17:34:56', '2022-06-21 17:34:56'),
(363, 'السيد المنصور بالله القاسم بن محمد آل طباطبا', NULL, '2022-06-21 17:35:07', '2022-06-21 17:35:07'),
(364, 'السيد النجفي القوجاني', NULL, '2022-06-21 17:35:18', '2022-06-21 17:35:18'),
(365, 'السيد امير محمد الكاظمي القزويني', NULL, '2022-06-21 17:35:28', '2022-06-21 17:35:28'),
(366, 'السيد أبو الفتح الدعوتي', NULL, '2022-06-21 17:35:38', '2022-06-21 17:35:38'),
(367, 'السيد باسم الهاشمي', NULL, '2022-06-21 17:35:55', '2022-06-21 17:35:55'),
(368, 'السيد باقر محمدي نسب', NULL, '2022-06-21 17:36:10', '2022-06-21 17:36:10'),
(369, 'السيد بسام خضرة', NULL, '2022-06-21 17:36:21', '2022-06-21 17:36:21'),
(370, 'السيد بسام مرتضى', NULL, '2022-06-21 17:36:31', '2022-06-21 17:36:31'),
(371, 'السيد تقي الطباطبائي القمي', NULL, '2022-06-21 17:36:46', '2022-06-21 17:36:46'),
(372, 'السيد جاسم الموسوي', NULL, '2022-06-21 17:36:58', '2022-06-21 17:36:58'),
(373, 'السيد جاسم الموسوي، الشيخ شاكر الساعدي', NULL, '2022-06-21 17:37:12', '2022-06-21 17:37:12'),
(374, 'السيد جعفر الحسيني', NULL, '2022-06-21 17:37:21', '2022-06-21 17:37:21'),
(375, 'السيد جعفر الحسيني الشيرازي', NULL, '2022-06-21 17:37:31', '2022-06-21 17:37:31'),
(376, 'السيد جعفر الحسيني القزويني', NULL, '2022-06-21 17:37:42', '2022-06-21 17:37:42'),
(377, 'السيد جعفر الحلي النجفي', NULL, '2022-06-21 17:39:08', '2022-06-21 17:39:08'),
(378, 'السيد جعفر السيد باقر الحسيني', NULL, '2022-06-21 17:39:17', '2022-06-21 17:39:17'),
(379, 'السيد جعفر بحر العلوم', NULL, '2022-06-21 17:39:28', '2022-06-21 17:39:28'),
(380, 'السيد جعفر بن محمد الحسيني السبزواري', NULL, '2022-06-21 17:39:47', '2022-06-21 17:39:47'),
(381, 'السيد جعفر بن محمد باقر بن مهدي بحر العلوم', NULL, '2022-06-21 17:39:58', '2022-06-21 17:39:58'),
(382, 'السيد جعفر سيدان', NULL, '2022-06-21 17:40:09', '2022-06-21 17:40:09'),
(383, 'السيد جعفر مرتضى العاملي', NULL, '2022-06-21 17:40:24', '2022-06-21 17:40:24'),
(384, 'السيد جلال السيد جمال الحسيني', NULL, '2022-06-21 17:40:35', '2022-06-21 17:40:35'),
(385, 'السيد جليل الموسوي', NULL, '2022-06-21 17:40:46', '2022-06-21 17:40:46'),
(386, 'السيد جمال الدين أبي الفضائل أحمد بن موسى بن طاوس', NULL, '2022-06-21 17:40:57', '2022-06-21 17:40:57'),
(387, 'السيد جواد هاشمي نجاد البلخي', NULL, '2022-06-21 17:41:09', '2022-06-21 17:41:09'),
(388, 'السيد حامد حسين الموسوي النيسابوري الهندي اللكهنوي', NULL, '2022-06-21 17:41:20', '2022-06-21 17:41:20'),
(389, 'السيد حسن الأبطحي', NULL, '2022-06-21 17:41:30', '2022-06-21 17:41:30'),
(390, 'السيد حسن الحسيني اللواساني', NULL, '2022-06-21 17:41:43', '2022-06-21 17:41:43'),
(391, 'السيد حسن الساروي المازندراني', NULL, '2022-06-21 17:41:53', '2022-06-21 17:41:53'),
(392, 'السيد حسن الشيرازي', NULL, '2022-06-21 17:42:05', '2022-06-21 17:42:05'),
(393, 'السيد حسن الصدر', NULL, '2022-06-21 17:42:14', '2022-06-21 17:42:14'),
(394, 'السيد حسن القبانجي', NULL, '2022-06-21 17:42:27', '2022-06-21 17:42:27'),
(395, 'السيد حسن الموسوي الخرسان', NULL, '2022-06-21 17:42:42', '2022-06-21 17:42:42'),
(396, 'السيد حسن الموسوي القزويني', NULL, '2022-06-21 17:42:53', '2022-06-21 17:42:53'),
(397, 'السيد حسن عزالدين بحر العلوم', NULL, '2022-06-21 17:43:06', '2022-06-21 17:43:06'),
(398, 'السيد حسن مكي العاملي', NULL, '2022-06-21 17:43:23', '2022-06-21 17:43:23'),
(399, 'السيد حسين أبو سعيدة الموسوي', NULL, '2022-06-21 17:43:33', '2022-06-21 17:43:33'),
(400, 'السيد حسين ابن السيد أحمد النجفي', NULL, '2022-06-21 17:43:51', '2022-06-21 17:43:51'),
(401, 'السيد حسين ابو سعيد الموسوي', NULL, '2022-06-21 17:44:24', '2022-06-21 17:44:24'),
(402, 'السيد حسين الرجا', NULL, '2022-06-21 17:44:32', '2022-06-21 17:44:32'),
(403, 'السيد حسين الشمس', NULL, '2022-06-21 17:44:42', '2022-06-21 17:44:42'),
(404, 'السيد حسين الصدر', NULL, '2022-06-21 17:44:55', '2022-06-21 17:44:55'),
(405, 'السيد حسين الطباطبائي البروجردي', NULL, '2022-06-21 17:45:10', '2022-06-21 17:45:10'),
(406, 'السيد حسين المدرسي', NULL, '2022-06-21 17:45:26', '2022-06-21 17:45:26'),
(407, 'السيد حسين المقدس الغريفي البحراني', NULL, '2022-06-21 17:45:41', '2022-06-21 17:45:41'),
(408, 'السيد حسين الهمداني الدرودآبادي', NULL, '2022-06-21 17:45:58', '2022-06-21 17:45:58'),
(409, 'السيد حسين بن السيد أحمد البراقي النجفي', NULL, '2022-06-21 17:46:08', '2022-06-21 17:46:08'),
(410, 'السيد حسين بن السيد شبر التوبلي البحراني', NULL, '2022-06-21 17:46:22', '2022-06-21 17:46:22'),
(411, 'السيد حسين بن السيد محمد علي الطاهر', NULL, '2022-06-21 17:46:38', '2022-06-21 17:46:38'),
(412, 'السيد حسين بن جعفر الموسوي', NULL, '2022-06-21 17:46:56', '2022-06-21 17:46:56'),
(413, 'السيد حسين بن حسن بن أحمد المقدس الغريفي', NULL, '2022-06-21 17:47:19', '2022-06-21 17:47:19'),
(414, 'السيد حسين سعيد الموسوي الخرسان', NULL, '2022-06-21 17:47:30', '2022-06-21 17:47:30'),
(415, 'السيد حسين شبر', NULL, '2022-06-21 17:47:42', '2022-06-21 17:47:42'),
(416, 'السيد حسين نجيب محمد', NULL, '2022-06-21 17:47:54', '2022-06-21 17:47:54'),
(417, 'السيد حسين نجيب محمد ، الحاج علي فرج الله خليفة', NULL, '2022-06-21 17:48:06', '2022-06-21 17:48:06'),
(418, 'السيد حسين يوسف مكي العاملي', NULL, '2022-06-21 17:48:17', '2022-06-21 17:48:17'),
(419, 'السيد حمزة بن علي بن زهرة الحلبي', NULL, '2022-06-21 17:48:33', '2022-06-21 17:48:33'),
(420, 'السيد حيدر الحسني الكاظمي', NULL, '2022-06-21 17:48:42', '2022-06-21 17:48:42'),
(421, 'السيد حيدر الحلي', NULL, '2022-06-21 17:48:52', '2022-06-21 17:48:52'),
(422, 'السيد رؤوف جمال الدين', NULL, '2022-06-21 17:49:03', '2022-06-21 17:49:03'),
(423, 'السيد رائد الحيدري', NULL, '2022-06-21 17:49:15', '2022-06-21 17:49:15'),
(424, 'السيد راضي الحسيني', NULL, '2022-06-21 17:49:25', '2022-06-21 17:49:25'),
(425, 'السيد رضا الصدر', NULL, '2022-06-21 17:49:47', '2022-06-21 17:49:47'),
(426, 'السيد رضي الدين علي بن موسى بن طاووس', NULL, '2022-06-21 17:49:59', '2022-06-21 17:49:59'),
(427, 'السيد رضي الشيرازي', NULL, '2022-06-21 17:50:10', '2022-06-21 17:50:10'),
(428, 'السيد رعد المرسومي', NULL, '2022-06-21 17:50:20', '2022-06-21 17:50:20'),
(429, 'السيد روح الله الخميني', NULL, '2022-06-21 17:50:39', '2022-06-21 17:50:39'),
(430, 'السيد رياض الحكيم', NULL, '2022-06-21 17:50:53', '2022-06-21 17:50:53'),
(431, 'السيد سامي البدري', NULL, '2022-06-21 17:51:02', '2022-06-21 17:51:02'),
(432, 'السيد سامي خضرا', NULL, '2022-06-21 17:51:31', '2022-06-21 17:51:31'),
(433, 'السيد سعيد أختر الرضوي', NULL, '2022-06-21 17:51:43', '2022-06-21 17:51:43'),
(434, 'السيد شهاب الدين المرعشي النجفي', NULL, '2022-06-21 17:52:04', '2022-06-21 17:52:04'),
(435, 'السيد صادق الحسيني الشيرازي', NULL, '2022-06-21 17:52:23', '2022-06-21 17:52:23'),
(436, 'السيد صادق المالكي', NULL, '2022-06-21 17:52:35', '2022-06-21 17:52:35'),
(437, 'السيد صادق الموسوي', NULL, '2022-06-21 17:52:51', '2022-06-21 17:52:51'),
(438, 'السيد صالح الشهرستاني', NULL, '2022-06-21 17:53:07', '2022-06-21 17:53:07'),
(439, 'السيد صالح الموسوي الخرسان', NULL, '2022-06-21 17:53:22', '2022-06-21 17:53:22'),
(440, 'السيد صباح شبر', NULL, '2022-06-21 17:53:39', '2022-06-21 17:53:39'),
(441, 'السيد صدر الدين القبانجي', NULL, '2022-06-21 17:53:56', '2022-06-21 17:53:56'),
(442, 'السيد صدرالدين الصدر', NULL, '2022-06-21 17:54:44', '2022-06-21 17:54:44'),
(443, 'السيد صفي الدين أبي عبدالله محمد بن علي الطباطبائي الحلي المعروف بـ ابن الطقطقي', NULL, '2022-06-21 17:55:01', '2022-06-21 17:55:01'),
(444, 'السيد ضياء الحسن', NULL, '2022-06-21 17:55:30', '2022-06-21 17:55:30'),
(445, 'السيد ضياء الخباز القطيفي', NULL, '2022-06-21 17:55:41', '2022-06-21 17:55:41'),
(446, 'السيد ضياء الدين أبي الرضا فضل الله بن علي الحسني الراوندي', NULL, '2022-06-21 17:55:53', '2022-06-21 17:55:53'),
(447, 'السيد طالب الخرسان', NULL, '2022-06-21 17:56:04', '2022-06-21 17:56:04'),
(448, 'السيد طيب الجزائري', NULL, '2022-06-21 17:56:13', '2022-06-21 17:56:13'),
(449, 'السيد عادل العلوي', NULL, '2022-06-21 17:56:26', '2022-06-21 17:56:26'),
(450, 'السيد عباس علي الموسوي', NULL, '2022-06-21 17:56:40', '2022-06-21 17:56:40'),
(451, 'السيد عباس نورالدين', NULL, '2022-06-21 17:56:55', '2022-06-21 17:56:55'),
(452, 'السيد عبد الأعلى الموسوي السبزواري', NULL, '2022-06-21 17:57:08', '2022-06-21 17:57:08'),
(453, 'السيد عبد الحسين دستغيب', NULL, '2022-06-21 17:57:17', '2022-06-21 17:57:17'),
(454, 'السيد عبد الحسين دستغيب', NULL, '2022-06-21 17:57:42', '2022-06-21 17:57:42'),
(455, 'السيد عبد الحسين شرف الدين الموسوي', NULL, '2022-06-21 17:57:56', '2022-06-21 17:57:56'),
(456, 'السيد عبد الرزاق المقرم', NULL, '2022-06-21 17:58:12', '2022-06-21 17:58:12'),
(457, 'السيد عبد الرزاق كمونة الحسيني', NULL, '2022-06-21 17:58:24', '2022-06-21 17:58:24'),
(458, 'السيد عبد الرسول الشريعتمداري الجهرمي', NULL, '2022-06-21 17:58:38', '2022-06-21 17:58:38'),
(459, 'السيد عبد الستار الحسني', NULL, '2022-06-21 17:58:52', '2022-06-21 17:58:52'),
(460, 'السيد عبد الصاحب الحسني العاملي', NULL, '2022-06-21 17:59:03', '2022-06-21 17:59:03'),
(461, 'السيد عبد الصاحب الحكيم', NULL, '2022-06-21 17:59:14', '2022-06-21 17:59:14'),
(462, 'السيد عبد الصاحب ناصر آل نصرالله', NULL, '2022-06-21 17:59:25', '2022-06-21 17:59:25'),
(463, 'السيد عبد الكريم آل السيد علي خان المدني', NULL, '2022-06-21 17:59:38', '2022-06-21 17:59:38'),
(464, 'السيد عبد الله شبر', NULL, '2022-06-21 18:00:16', '2022-06-21 18:00:16'),
(465, 'السيد عبد الوهاب بن علي الاسترابادي', NULL, '2022-06-21 18:01:08', '2022-06-21 18:01:08'),
(466, 'السيد عبدالأعلى الموسوي السبزواري', NULL, '2022-06-21 18:01:36', '2022-06-21 18:01:36'),
(467, 'السيد عبدالأعلى بن محمد القاضي السبزواري', NULL, '2022-06-21 18:01:47', '2022-06-21 18:01:47'),
(468, 'السيد عبدالحسين الشرع', NULL, '2022-06-21 18:01:55', '2022-06-21 18:01:55'),
(469, 'السيد عبدالحسين القزويني', NULL, '2022-06-21 18:02:08', '2022-06-21 18:02:08'),
(470, 'السيد عبدالرزاق كمونه الحسيني', NULL, '2022-06-21 18:02:30', '2022-06-21 18:02:30'),
(471, 'السيد عبدالرسول الموسوي', NULL, '2022-06-21 18:02:43', '2022-06-21 18:02:43'),
(472, 'السيد عبدالستار الجابري', NULL, '2022-06-21 18:02:53', '2022-06-21 18:02:53'),
(473, 'السيد عبدالصاحب الموسوي الريحاني', NULL, '2022-06-21 18:03:17', '2022-06-21 18:03:17'),
(474, 'السيد عبدالعزيز الطباطبائي', NULL, '2022-06-21 18:03:26', '2022-06-21 18:03:26'),
(475, 'السيد عبدالكريم الحسيني القزويني', NULL, '2022-06-21 18:03:38', '2022-06-21 18:03:38'),
(476, 'السيد عبدالكريم الموسوي الأردبيلي', NULL, '2022-06-21 18:03:53', '2022-06-21 18:03:53'),
(477, 'السيد عبدالكريم هاشمي نجاد', NULL, '2022-06-21 18:04:04', '2022-06-21 18:04:04'),
(478, 'السيد عبدالله الحسيني البصري', NULL, '2022-06-21 18:04:28', '2022-06-21 18:04:28'),
(479, 'السيد عبدالله السيد حسن الموسوي البحراني المحرقي', NULL, '2022-06-21 18:04:51', '2022-06-21 18:04:51'),
(480, 'السيد عبدالله فضل الله فحص الحسيني', NULL, '2022-06-21 18:05:24', '2022-06-21 18:05:24'),
(481, 'السيد عبدالمجيد الميردامادي', NULL, '2022-06-21 18:05:36', '2022-06-21 18:05:36'),
(482, 'السيد عبدالمحسن عبدالله السراوي', NULL, '2022-06-21 18:05:55', '2022-06-21 18:05:55'),
(483, 'السيد عبدالمطلب الموسوي الخرسان', NULL, '2022-06-21 18:06:18', '2022-06-21 18:06:18'),
(484, 'السيد عبدالمطلب بن محمد الأعرج', NULL, '2022-06-21 18:06:30', '2022-06-21 18:06:30'),
(485, 'السيد عبدالهادي الحسيني الشيرازي', NULL, '2022-06-21 18:06:41', '2022-06-21 18:06:41'),
(486, 'السيد عدنان بن السيد علوي آل عبدالجبار الموسوي البحراني', NULL, '2022-06-21 18:06:55', '2022-06-21 18:06:55'),
(487, 'السيد عز الدين الطباطبائي الحكيم', NULL, '2022-06-21 18:07:08', '2022-06-21 18:07:08'),
(488, 'السيد علي أصغر الموسوي اللاري', NULL, '2022-06-21 18:07:19', '2022-06-21 18:07:19'),
(489, 'السيد علي الحسني', NULL, '2022-06-21 18:07:35', '2022-06-21 18:07:35'),
(490, 'السيد علي الحسيني الإسترابادي النجفي', NULL, '2022-06-21 18:07:53', '2022-06-21 18:07:53'),
(491, 'السيد علي الحسيني السيستاني', NULL, '2022-06-21 18:08:06', '2022-06-21 18:08:06'),
(492, 'السيد علي الحسيني الصدر', NULL, '2022-06-21 18:08:18', '2022-06-21 18:08:18'),
(493, 'السيد علي الحسيني الميلاني', NULL, '2022-06-21 18:08:35', '2022-06-21 18:08:35'),
(494, 'السيد علي الرضوي', NULL, '2022-06-21 18:08:46', '2022-06-21 18:08:46'),
(495, 'السيد علي السيد جمال أشرف الحسيني', NULL, '2022-06-21 18:08:59', '2022-06-21 18:08:59'),
(496, 'السيد علي الشهرستاني', NULL, '2022-06-21 18:09:21', '2022-06-21 18:09:21'),
(497, 'السيد علي الطباطبائي', NULL, '2022-06-21 18:09:40', '2022-06-21 18:09:40'),
(498, 'السيد علي العزام الحسيني', NULL, '2022-06-21 18:09:54', '2022-06-21 18:09:54'),
(499, 'السيد علي العلامة الفاني', NULL, '2022-06-21 18:10:09', '2022-06-21 18:10:09'),
(500, 'السيد علي الموحد الأبطحي الأصفهاني', NULL, '2022-06-21 18:10:22', '2022-06-21 18:10:22'),
(501, 'السيد علي الموسوي البهبهاني', NULL, '2022-06-21 18:10:49', '2022-06-21 18:10:49'),
(502, 'السيد علي الموسوي الدارابي', NULL, '2022-06-21 18:10:59', '2022-06-21 18:10:59'),
(503, 'السيد علي الموسوي السبزواري', NULL, '2022-06-21 18:11:12', '2022-06-21 18:11:12'),
(504, 'السيد علي الموسوي القزويني', NULL, '2022-06-21 18:11:26', '2022-06-21 18:11:26'),
(505, 'السيد علي الهاشمي الشاهرودي', NULL, '2022-06-21 18:11:41', '2022-06-21 18:11:41'),
(506, 'السيد علي بن الحسين الهاشمي النجفي الخطيب', NULL, '2022-06-21 18:11:54', '2022-06-21 18:11:54'),
(507, 'السيد علي بن الحسين بن موسى علم الهدى', NULL, '2022-06-21 18:12:07', '2022-06-21 18:12:07'),
(508, 'السيد علي بن حسين أبو الحسن', NULL, '2022-06-21 18:12:18', '2022-06-21 18:12:18'),
(509, 'السيد علي بن حسين أبو الحسن الموسوي العاملي', NULL, '2022-06-21 18:12:30', '2022-06-21 18:12:30'),
(510, 'السيد علي بن حسين أبوالحسن العاملي', NULL, '2022-06-21 18:12:44', '2022-06-21 18:12:44'),
(511, 'السيد علي بن عبدالكريم النيلي، السيد محمد باقر الشفتي', NULL, '2022-06-21 18:12:56', '2022-06-21 18:12:56');

-- --------------------------------------------------------

--
-- Table structure for table `useruploadpdf`
--

CREATE TABLE `useruploadpdf` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `file` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitlogs`
--

CREATE TABLE `visitlogs` (
  `id` int(10) UNSIGNED NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0.0.0.0',
  `browser` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `os` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admins_stat_id_foreign` (`stat_id`),
  ADD KEY `admins_city_id_foreign` (`city_id`),
  ADD KEY `admins_country_id_foreign` (`country_id`);

--
-- Indexes for table `admin_groups`
--
ALTER TABLE `admin_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `departments_parent_foreign` (`parent`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`),
  ADD KEY `files_relation_id_foreign` (`relation_id`);

--
-- Indexes for table `menuecontroll`
--
ALTER TABLE `menuecontroll`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menuecontroll_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `models_department_id_foreign` (`department_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `photoes`
--
ALTER TABLE `photoes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productes`
--
ALTER TABLE `productes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `productes_department_id_foreign` (`department_id`),
  ADD KEY `productes_trad_id_foreign` (`trad_id`),
  ADD KEY `productes_manuf_id_foreign` (`manuf_id`),
  ADD KEY `productes_color_id_foreign` (`color_id`),
  ADD KEY `productes_size_id_foreign` (`size_id`),
  ADD KEY `productes_currency_id_foreign` (`currency_id`),
  ADD KEY `productes_weight_id_foreign` (`weight_id`),
  ADD KEY `productes_admin_id_foreign` (`admin_id`),
  ADD KEY `productes_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `trade_marks`
--
ALTER TABLE `trade_marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `useruploadpdf`
--
ALTER TABLE `useruploadpdf`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitlogs`
--
ALTER TABLE `visitlogs`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `admin_groups`
--
ALTER TABLE `admin_groups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=406;

--
-- AUTO_INCREMENT for table `menuecontroll`
--
ALTER TABLE `menuecontroll`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `models`
--
ALTER TABLE `models`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `photoes`
--
ALTER TABLE `photoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `productes`
--
ALTER TABLE `productes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `trade_marks`
--
ALTER TABLE `trade_marks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;

--
-- AUTO_INCREMENT for table `useruploadpdf`
--
ALTER TABLE `useruploadpdf`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitlogs`
--
ALTER TABLE `visitlogs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `departments`
--
ALTER TABLE `departments`
  ADD CONSTRAINT `departments_parent_foreign` FOREIGN KEY (`parent`) REFERENCES `departments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
