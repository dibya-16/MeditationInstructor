-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 19, 2022 at 07:42 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `meditationinstructor`
--

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `announcement` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `announcement`, `created_at`, `updated_at`) VALUES
(1, 'sdxfcgvnbhmj,k m,jh', '2022-11-05 16:37:07', '2022-11-05 16:37:07'),
(2, 'asdfghjkl', '2022-12-10 13:19:04', '2022-12-10 13:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `InstructorId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheduleTime` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `clientName`, `clientId`, `InstructorId`, `topic`, `scheduleTime`, `date`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Asif', '1', '1', 'vcxbcgnvhj', '6:30pm', '7/11/2022', 'Accept', NULL, '2022-11-06 13:51:42'),
(2, 'Faiyaz', '2', '1', 'jhldhsf', '7:00pm', '8/11/2022', 'Accept', NULL, '2022-12-13 06:14:33'),
(3, 'Rajib', '4', '2', 'dfg', '6:30', '7/11/2022', 'Cancel', NULL, '2022-11-06 14:40:54'),
(4, 'Rahat', '3', '1', 'hdjkg', '5:30', '6/11/2022', 'Cancel', NULL, '2022-12-11 21:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clientId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clientName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `feedback` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `clientId`, `clientName`, `feedback`, `created_at`, `updated_at`) VALUES
(1, '2', 'Faiyaz', 'dfghuiju', '2022-11-06 11:55:43', '2022-11-06 11:55:43'),
(2, '2', 'Faiyaz', 'scdvfbgfhg', '2022-11-06 11:55:49', '2022-11-06 11:55:49'),
(3, '1', 'Faiyaz', 'sadfgtcyjhcfdx', '2022-12-10 13:41:44', '2022-12-10 13:41:44');

-- --------------------------------------------------------

--
-- Table structure for table `instructors`
--

CREATE TABLE `instructors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructors`
--

INSERT INTO `instructors` (`id`, `name`, `email`, `phoneNo`, `address`, `password`, `confirmPassword`, `created_at`, `updated_at`) VALUES
(1, 'Dibya', 'dibya@gmail.com', '01681044231', 'Tangail', '1234', '1234', '2022-11-05 16:36:11', '2022-12-10 15:28:30'),
(2, 'Atika', 'atika@gmail.com', '0173976375', 'Dhaka', '2345', '2345', '2022-11-06 14:35:47', '2022-12-10 15:29:45'),
(3, 'ASIF KAMAL TIAS', 'asifkamaltias@gmail.com', '01839385832', 'Dhaka', 'Asdf1234', 'Asdf1234', '2022-12-03 05:29:25', '2022-12-03 05:29:25'),
(4, 'HHHHH', 'hh@gmail.com', '64848484', 'Dhaka', 'Asdf1234', 'Asdf1234', '2022-12-03 05:30:18', '2022-12-03 05:30:18'),
(5, 'rj', 'rj@gmail.com', '76545678', 'Dhaka', '1234', '1234', '2022-12-04 15:30:01', '2022-12-04 15:30:01'),
(8, 'bk', 'bk@gmail.com', '098765', 'Tangail', '1234', '1234', '2022-12-04 15:33:17', '2022-12-04 15:33:17'),
(9, 'shams', 'shams@gmail.com', '0987654', 'Rajshahi', '1234', '1234', '2022-12-04 21:33:23', '2022-12-04 21:33:23'),
(10, 'ww', 'ww@gmail.com', '76543', 'Dhaka', '0987', '0987', '2022-12-04 22:35:39', '2022-12-04 22:35:39'),
(11, 'rk', 'rk@gmail.com', '01839', 'Dhaka', '4567', '4567', '2022-12-04 22:43:01', '2022-12-04 22:43:01'),
(12, 'TIAS', 'asifkamaltias@gmail.com', '0173976373', 'DHAKA', 'Asdf1234', 'Asdf1234', '2022-12-09 08:29:06', '2022-12-09 08:29:06');

-- --------------------------------------------------------

--
-- Table structure for table `instructor_otps`
--

CREATE TABLE `instructor_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phoneNo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `confirmPassword` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `instructor_tokens`
--

CREATE TABLE `instructor_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `instructor_id` bigint(20) NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `instructor_tokens`
--

INSERT INTO `instructor_tokens` (`id`, `instructor_id`, `token`, `created_at`, `expires_at`) VALUES
(9, 1, 'frmnO3EioZMVpGSdNAwF8NL0GUfKxcKa', '2022-12-09 07:45:28', '2022-12-09 13:17:21'),
(10, 1, 'BAeLOkxTOgJAstaIoU3c3zl4arkpfP37', '2022-12-09 13:17:39', '2022-12-09 13:57:34'),
(11, 3, 'LbNLOLQOBw8YTrgm3HGr2pAGsuwkatrc', '2022-12-09 14:30:03', NULL),
(12, 1, 'Ay7SbZpKhqpWXYNKSQYTHzFBxhH8UppG', '2022-12-10 14:18:07', NULL),
(13, 1, 'H2N8bKdvqVChwB0xEHSTiFg3FDtTOibN', '2022-12-10 14:26:29', NULL),
(14, 1, 'fJMmGwzvu0IHnv1OqkVJC2UPOrcyIJA8', '2022-12-10 16:09:57', NULL),
(15, 1, 'iSSS5PNsct3ELsA6a1Mnzwb4KJIDnJMR', '2022-12-10 16:09:58', NULL),
(16, 1, 'SXcZrgZ5kelUMFI52pVCXfFPVSKZJyEi', '2022-12-10 19:13:12', NULL),
(17, 2, 'TgrqTUZHFui1FFrUkljgM9hHCi2G7AP2', '2022-12-10 21:29:18', NULL),
(18, 1, '11qQgfJpk5EpmhA9r6qeMuGQc9XpLPlQ', '2022-12-10 21:56:07', NULL),
(19, 1, 'MiLiDD7DC2VY92FHXXTkA7xjp8Amnh0n', '2022-12-11 21:06:01', '2022-12-11 21:17:03'),
(20, 1, '5nmSvbXT6s1p9no0GFh90IGf7lSFT2OM', '2022-12-11 21:21:11', '2022-12-11 22:19:23'),
(21, 13, 'tZyrVpnZFD1CK9YrQMWyfSgYWwtiOZyA', '2022-12-11 22:44:36', NULL),
(22, 1, 'j83d9SHsbqMwDin6VA1C1V4PnkcUQ1Kz', '2022-12-12 03:06:26', '2022-12-12 03:12:30'),
(23, 1, 'UJ0aIBBbe2HSLuCHnU1jVSWQSkKagzMK', '2022-12-12 03:14:50', '2022-12-12 03:18:26'),
(24, 1, 'fnQpnYw8OtOckPjzX2elfiwN7B2PCkuK', '2022-12-12 03:51:21', '2022-12-12 03:51:46'),
(25, 1, 'bVvgff3GhDDNZTGiyauIDKM61gyaiKrG', '2022-12-12 03:52:29', '2022-12-12 03:53:05'),
(26, 1, 'I5LKUcLED84HsFru9sYO2vhM7dPJvZf5', '2022-12-12 04:02:46', NULL),
(27, 1, 'fTNAs02lGyf7KEtKPEdjJ06JyliF0Yyc', '2022-12-13 12:11:29', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_11_04_064622_create_instructors_table', 1),
(6, '2022_11_05_112310_create_appointments_table', 1),
(7, '2022_11_05_210530_create_announcements_table', 1),
(8, '2022_11_05_215027_create_feedbacks_table', 1),
(9, '2022_11_05_221915_create_feedbacks_table', 2),
(10, '2022_12_09_062228_create_instructor_tokens_table', 3),
(11, '2022_12_09_135052_create_instructor_otps_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructors`
--
ALTER TABLE `instructors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_otps`
--
ALTER TABLE `instructor_otps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `instructor_tokens`
--
ALTER TABLE `instructor_tokens`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `instructors`
--
ALTER TABLE `instructors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `instructor_otps`
--
ALTER TABLE `instructor_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `instructor_tokens`
--
ALTER TABLE `instructor_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
