-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2022 at 02:12 AM
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
(113, 'أحمد راسم النفيس', NULL, '2022-06-20 22:03:52', '2022-06-20 22:03:52');

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

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
