-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2021 at 05:33 PM
-- Server version: 10.4.16-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hypegame`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Sports', NULL, NULL),
(2, 'Adventure', NULL, NULL),
(3, 'Action', NULL, NULL),
(4, 'Character Role Play', NULL, NULL),
(5, 'Warfare', NULL, NULL),
(6, 'RPF', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `category_game`
--

CREATE TABLE `category_game` (
  `game_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_hype_game`
--

CREATE TABLE `category_hype_game` (
  `hype_game_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_hype_game`
--

INSERT INTO `category_hype_game` (`hype_game_id`, `category_id`) VALUES
(12, 1),
(2, 2),
(2, 3),
(2, 4),
(9, 2),
(9, 3),
(9, 5),
(10, 3),
(10, 6),
(11, 2),
(11, 3),
(11, 4),
(2, 5),
(13, 1);

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
-- Table structure for table `games`
--

CREATE TABLE `games` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `games`
--

INSERT INTO `games` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'FIFA', 'EA Sports', NULL, NULL),
(2, 'PES', 'Konami', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_category`
--

CREATE TABLE `game_category` (
  `game_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game_editions`
--

CREATE TABLE `game_editions` (
  `id` int(10) UNSIGNED NOT NULL,
  `edition_id` int(11) NOT NULL,
  `hype_game_id` int(10) UNSIGNED NOT NULL,
  `edition_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_editions`
--

INSERT INTO `game_editions` (`id`, `edition_id`, `hype_game_id`, `edition_name`, `created_at`, `updated_at`) VALUES
(1, 1, 12, 'FIFA 12', NULL, NULL),
(2, 2, 12, 'FIFA 14', NULL, NULL),
(4, 4, 12, 'FIFA 18', NULL, NULL),
(5, 5, 12, 'FIFA 21', NULL, NULL),
(6, 6, 2, 'The Division 2', NULL, NULL),
(7, 7, 9, 'Prey 11', NULL, NULL),
(8, 8, 13, 'PES 12', NULL, NULL),
(9, 9, 13, 'PES 16', NULL, NULL),
(10, 10, 13, 'PES 21', NULL, NULL),
(11, 11, 10, 'Injustice I', '2021-11-17 15:19:18', NULL),
(12, 12, 10, 'Injustice II', '2021-11-17 15:19:18', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_edition_platform`
--

CREATE TABLE `game_edition_platform` (
  `game_edition_id` int(10) UNSIGNED NOT NULL,
  `platform_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_edition_platform`
--

INSERT INTO `game_edition_platform` (`game_edition_id`, `platform_id`) VALUES
(8, 1),
(9, 1),
(10, 1),
(8, 6),
(8, 1),
(10, 4),
(10, 5),
(7, 3),
(6, 6),
(5, 4),
(1, 8),
(6, 9),
(7, 7),
(11, 2),
(12, 4),
(12, 2);

-- --------------------------------------------------------

--
-- Table structure for table `game_platforms`
--

CREATE TABLE `game_platforms` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `platform_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `edition_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_platforms`
--

INSERT INTO `game_platforms` (`id`, `name`, `platform_code`, `edition_id`, `created_at`, `updated_at`) VALUES
(1, 'Play Station 3', 'PS3', 1, NULL, NULL),
(2, 'Play Station 3', 'PS3', 2, NULL, NULL),
(3, 'X Box One Series', 'XBox', 1, NULL, NULL),
(4, 'X Box One Series', 'XBox', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `game_prices`
--

CREATE TABLE `game_prices` (
  `hype_game_id` int(10) UNSIGNED NOT NULL,
  `price` double(8,2) NOT NULL,
  `edition_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game_prices`
--

INSERT INTO `game_prices` (`hype_game_id`, `price`, `edition_id`, `created_at`, `updated_at`) VALUES
(1, 40.00, 1, NULL, NULL),
(2, 50.00, 6, NULL, NULL),
(4, 20.00, 2, NULL, NULL),
(6, 55.85, 4, NULL, NULL),
(7, 59.99, 5, NULL, NULL),
(8, 38.90, 8, NULL, NULL),
(9, 40.00, 9, NULL, NULL),
(10, 43.85, 10, NULL, NULL),
(11, 48.55, 7, NULL, NULL),
(12, 40.99, 11, '2021-11-17 15:21:35', NULL),
(13, 45.68, 12, '2021-11-17 15:21:35', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hype_games`
--

CREATE TABLE `hype_games` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hype_games`
--

INSERT INTO `hype_games` (`id`, `name`, `description`, `created_at`, `updated_at`, `image_path`) VALUES
(2, 'The Division 2', 'Tom Clancy\'s The Division II', NULL, '2021-11-09 19:17:27', '1636485447-The Division 2.png'),
(9, 'Prey 2', 'The prey becomes the predator', '2021-11-09 19:19:16', '2021-11-09 19:19:16', '1636485555-Prey 2.png'),
(10, 'Injustice', 'Fight for supremacy', '2021-11-09 19:20:14', '2021-11-09 19:20:14', '1636485614-Injustice.jpg'),
(11, 'Destiny', 'In the hands of fate', '2021-11-09 19:21:28', '2021-11-09 19:21:28', '1636485688-Destiny.jpg'),
(12, 'FIFA', 'EA Sports', '2021-11-09 19:22:34', '2021-11-09 20:53:46', '1636491226-FIFA.jpg'),
(13, 'PES', 'Konami', '2021-11-15 16:46:14', '2021-11-15 16:46:14', '1636994772-PES.jpg');

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
(5, '2021_11_05_204514_create_hype_games_table', 1),
(6, '2021_11_07_195424_add_image_to_games_table', 2),
(9, '2021_11_09_203439_create_game_editions_table', 3),
(12, '2021_11_10_102436_create_categories_table', 4),
(15, '2021_11_10_103710_create_game_categories_table', 5),
(18, '2021_11_10_220303_create_release_dates_table', 6),
(20, '2021_11_11_120407_create_game_prices_table', 7),
(21, '2021_11_13_130947_create_game_plaforms_table', 8),
(28, '2021_11_13_131918_create_game_platforms_table', 9),
(29, '2021_11_13_154830_create_categories_table', 10),
(30, '2021_11_13_155908_create_games_table', 10),
(38, '2021_11_13_162144_create_game_categories_table', 11),
(47, '2021_11_16_102735_create_platforms_table', 12),
(48, '2021_11_16_104832_create_edition_platforms_table', 12);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `platforms`
--

CREATE TABLE `platforms` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `platforms`
--

INSERT INTO `platforms` (`id`, `name`, `code`, `created_at`, `updated_at`) VALUES
(1, 'Play Station 2', 'PS2', NULL, NULL),
(2, 'Play Station 3', 'PS3', NULL, NULL),
(3, 'Play Station 4', 'PS4', NULL, NULL),
(4, 'Play Station 5', 'PS5', NULL, NULL),
(5, 'XBox One Series', 'XBox-1', NULL, NULL),
(6, 'Personal Computer', 'PC', NULL, NULL),
(7, 'Nintendo Wii', 'Nintendo', NULL, NULL),
(8, 'Play Station Portable', 'PSP', NULL, NULL),
(9, 'Play Station Vista', 'PSV', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `release_dates`
--

CREATE TABLE `release_dates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `edition_id` int(10) UNSIGNED NOT NULL,
  `release_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `release_dates`
--

INSERT INTO `release_dates` (`id`, `edition_id`, `release_date`) VALUES
(4, 1, '2012-09-01'),
(5, 2, '2014-09-01'),
(6, 4, '2018-09-01'),
(7, 5, '2021-09-01'),
(8, 6, '2016-09-01'),
(9, 8, '2012-09-01'),
(10, 9, '2016-09-01'),
(11, 10, '2021-09-01'),
(12, 7, '2019-09-01'),
(13, 11, '2018-09-01'),
(14, 12, '2020-09-01');

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_game`
--
ALTER TABLE `category_game`
  ADD KEY `category_game_game_id_foreign` (`game_id`),
  ADD KEY `category_game_category_id_foreign` (`category_id`);

--
-- Indexes for table `category_hype_game`
--
ALTER TABLE `category_hype_game`
  ADD KEY `category_hype_game_hype_game_id_foreign` (`hype_game_id`),
  ADD KEY `category_hype_game_category_id_foreign` (`category_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `game_category`
--
ALTER TABLE `game_category`
  ADD KEY `game_category_game_id_foreign` (`game_id`),
  ADD KEY `game_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `game_editions`
--
ALTER TABLE `game_editions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_editions_hype_game_id_foreign` (`hype_game_id`);

--
-- Indexes for table `game_edition_platform`
--
ALTER TABLE `game_edition_platform`
  ADD KEY `game_edition_platform_game_edition_id_foreign` (`game_edition_id`),
  ADD KEY `game_edition_platform_platform_id_foreign` (`platform_id`);

--
-- Indexes for table `game_platforms`
--
ALTER TABLE `game_platforms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_platforms_edition_id_foreign` (`edition_id`);

--
-- Indexes for table `game_prices`
--
ALTER TABLE `game_prices`
  ADD PRIMARY KEY (`hype_game_id`),
  ADD KEY `game_prices_edition_id_foreign` (`edition_id`);

--
-- Indexes for table `hype_games`
--
ALTER TABLE `hype_games`
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
-- Indexes for table `platforms`
--
ALTER TABLE `platforms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `release_dates`
--
ALTER TABLE `release_dates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `release_dates_edition_id_foreign` (`edition_id`);

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
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `game_editions`
--
ALTER TABLE `game_editions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `game_platforms`
--
ALTER TABLE `game_platforms`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `game_prices`
--
ALTER TABLE `game_prices`
  MODIFY `hype_game_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `hype_games`
--
ALTER TABLE `hype_games`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `platforms`
--
ALTER TABLE `platforms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `release_dates`
--
ALTER TABLE `release_dates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `category_game`
--
ALTER TABLE `category_game`
  ADD CONSTRAINT `category_game_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_game_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `hype_games` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_hype_game`
--
ALTER TABLE `category_hype_game`
  ADD CONSTRAINT `category_hype_game_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `category_hype_game_hype_game_id_foreign` FOREIGN KEY (`hype_game_id`) REFERENCES `hype_games` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_category`
--
ALTER TABLE `game_category`
  ADD CONSTRAINT `game_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_category_game_id_foreign` FOREIGN KEY (`game_id`) REFERENCES `games` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_editions`
--
ALTER TABLE `game_editions`
  ADD CONSTRAINT `game_editions_hype_game_id_foreign` FOREIGN KEY (`hype_game_id`) REFERENCES `hype_games` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_edition_platform`
--
ALTER TABLE `game_edition_platform`
  ADD CONSTRAINT `game_edition_platform_game_edition_id_foreign` FOREIGN KEY (`game_edition_id`) REFERENCES `game_editions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `game_edition_platform_platform_id_foreign` FOREIGN KEY (`platform_id`) REFERENCES `platforms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_platforms`
--
ALTER TABLE `game_platforms`
  ADD CONSTRAINT `game_platforms_edition_id_foreign` FOREIGN KEY (`edition_id`) REFERENCES `game_editions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game_prices`
--
ALTER TABLE `game_prices`
  ADD CONSTRAINT `game_prices_edition_id_foreign` FOREIGN KEY (`edition_id`) REFERENCES `game_editions` (`id`);

--
-- Constraints for table `release_dates`
--
ALTER TABLE `release_dates`
  ADD CONSTRAINT `release_dates_edition_id_foreign` FOREIGN KEY (`edition_id`) REFERENCES `game_editions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
