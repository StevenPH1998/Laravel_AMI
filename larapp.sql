-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 02, 2024 at 08:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `larapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `list_items`
--

CREATE TABLE `list_items` (
  `id` int(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `is_complete` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `list_items`
--

INSERT INTO `list_items` (`id`, `name`, `is_complete`, `created_at`, `updated_at`) VALUES
(1, 'kean', 1, '2024-03-01 21:50:08', '2024-03-01 23:06:05'),
(2, 'kean', 1, '2024-03-01 21:51:12', '2024-03-01 23:06:07'),
(3, 'kean', 0, '2024-03-01 21:51:53', '2024-03-01 21:51:53'),
(4, 'shane', 0, '2024-03-01 22:02:21', '2024-03-01 22:02:21'),
(5, 'shsnefnjs', 0, '2024-03-01 22:05:51', '2024-03-01 22:05:51'),
(6, 'shsnefnjs', 0, '2024-03-01 22:10:28', '2024-03-01 22:10:28'),
(7, 'gemark', 1, '2024-03-01 22:12:14', '2024-03-01 23:05:46'),
(8, 'sfbbhsfb s', 0, '2024-03-01 22:13:31', '2024-03-01 22:13:31'),
(9, 'gfgf', 0, '2024-03-01 22:14:59', '2024-03-01 22:14:59'),
(10, 'enw enw', 0, '2024-03-01 22:15:23', '2024-03-01 22:15:23'),
(11, 'ds', 0, '2024-03-01 22:17:48', '2024-03-01 22:17:48'),
(12, 'ds', 0, '2024-03-01 22:17:55', '2024-03-01 22:17:55'),
(13, 'This is not a drill', 0, '2024-03-01 22:18:03', '2024-03-01 22:18:03'),
(14, 'This is not a drill', 0, '2024-03-01 22:18:22', '2024-03-01 22:18:22'),
(15, 'the jemark', 1, '2024-03-01 22:18:29', '2024-03-01 23:05:18'),
(16, 'the jemark', 0, '2024-03-01 22:19:14', '2024-03-01 22:19:14'),
(17, 'ssasa', 1, '2024-03-01 22:19:22', '2024-03-01 23:05:47'),
(18, 'gfgf', 0, '2024-03-01 22:26:32', '2024-03-01 22:26:32'),
(19, 'this is', 1, '2024-03-01 22:27:01', '2024-03-01 23:05:49'),
(20, 'wasup', 0, '2024-03-01 22:27:04', '2024-03-01 22:27:04'),
(21, 'asasa', 1, '2024-03-01 22:28:48', '2024-03-01 23:05:50'),
(22, 'asasa', 0, '2024-03-01 22:29:52', '2024-03-01 22:29:52'),
(23, 'yowww', 0, '2024-03-01 22:29:56', '2024-03-01 22:29:56'),
(24, 'come on man', 0, '2024-03-01 22:30:02', '2024-03-01 22:30:02');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2024_03_02_052400_create_list_items_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `list_items`
--
ALTER TABLE `list_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `list_items`
--
ALTER TABLE `list_items`
  MODIFY `id` int(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
