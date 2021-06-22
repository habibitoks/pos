-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 22, 2021 at 04:21 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-pos-tahu-coding`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `history_products`
--

CREATE TABLE `history_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qtyChange` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipe` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `history_products`
--

INSERT INTO `history_products` (`id`, `product_id`, `user_id`, `qty`, `qtyChange`, `tipe`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '10', '0', 'created product', '2021-04-28 22:21:42', '2021-04-28 22:21:42'),
(2, 2, 1, '10', '0', 'created product', '2021-04-28 22:58:05', '2021-04-28 22:58:05'),
(3, 2, 3, '10', '-1', 'decrease from transaction', '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
(4, 1, 3, '10', '-2', 'decrease from transaction', '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
(5, 3, 3, '12', '0', 'created product', '2021-04-29 05:35:12', '2021-04-29 05:35:12'),
(6, 4, 3, '10', '0', 'created product', '2021-05-27 05:48:53', '2021-05-27 05:48:53'),
(7, 4, 3, '10', '-2', 'decrease from transaction', '2021-05-27 05:50:02', '2021-05-27 05:50:02');

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
(4, '2020_05_16_070107_create_products_table', 1),
(5, '2020_05_16_072227_create_transcations_table', 1),
(6, '2020_05_16_072533_create_product_transation_table', 1),
(7, '2020_05_16_120622_create_history_products_table', 1),
(8, '2021_04_29_061134_create_permission_tables', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'setting', 'web', '2021-04-28 23:43:43', '2021-04-28 23:43:43'),
(4, 'pr0duck', 'web', '2021-04-29 00:22:05', '2021-04-29 00:22:05'),
(5, 'home', 'web', '2021-04-29 02:22:44', '2021-04-29 02:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(11) NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`, `qty`, `description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'G733QS-R938D6T-O', 60000000, 'uploads/images/1619673702h525.png', 8, 'GeForce RTX™ 3080 Laptop GPU\r\nAMD Ryzen™ 9 5000 Series\r\n17.3\"\r\n1TB M.2 NVMe™ PCIe® 3.0 x4 SSD x 2', 1, '2021-04-28 22:21:42', '2021-04-29 02:26:59'),
(2, 'ROG Strix SCAR 17 G732LXS-I78SD6T', 39000000, 'uploads/images/1619675885h525 (1).png', 9, 'GeForce RTX™ 2080 SUPER\r\nWindows 10 Home\r\n10th Gen Intel® Core™ i7\r\n17.3\"\r\n1TB + 1TB M.2 NVMe™ PCIe® 3.0 SSD (RAID 0)', 1, '2021-04-28 22:58:05', '2021-04-29 02:26:59'),
(3, 'safsf', 12, 'uploads/images/1619699711h525.png', 12, 'adaf', 3, '2021-04-29 05:35:11', '2021-04-29 05:35:11'),
(4, 'ASUS ROG ZEPHYRUS M GU502GU 2019', 23000000, 'uploads/images/1622119732LAPTOP rog.jpg', 8, 'Kondisi\r\nPernah Dipakai\r\nMerek\r\nAsus\r\nOperating System\r\nWindows\r\nProcessor\r\nIntel i7\r\nMemory RAM\r\n16 GB\r\nPenyimpanan\r\n1 TB SSD\r\nUkuran Layar\r\n15\"\r\nResolusi\r\n1920x1080\r\nGraphic Card\r\nNvidia', 3, '2021-05-27 05:48:52', '2021-05-27 05:50:02');

-- --------------------------------------------------------

--
-- Table structure for table `product_transation`
--

CREATE TABLE `product_transation` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_transation`
--

INSERT INTO `product_transation` (`id`, `product_id`, `invoices_number`, `qty`, `created_at`, `updated_at`) VALUES
(1, 2, 'INV-000001', 1, '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
(2, 1, 'INV-000001', 2, '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
(3, 4, 'INV-000002', 2, '2021-05-27 05:50:03', '2021-05-27 05:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(3, 'admin', 'web', '2021-04-28 23:43:43', '2021-04-28 23:43:43'),
(5, 'k4sir', 'web', '2021-04-29 00:22:05', '2021-04-29 00:22:05'),
(6, 'user', 'web', '2021-04-29 02:22:44', '2021-04-29 02:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transcations`
--

CREATE TABLE `transcations` (
  `invoices_number` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `pay` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transcations`
--

INSERT INTO `transcations` (`invoices_number`, `user_id`, `pay`, `total`, `created_at`, `updated_at`) VALUES
('INV-000001', 3, 200000000, 159000000, '2021-04-29 02:26:59', '2021-04-29 02:26:59'),
('INV-000002', 3, 46000000, 46000000, '2021-05-27 05:50:03', '2021-05-27 05:50:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `user_akses` int(1) NOT NULL DEFAULT 0,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `user_akses`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(15, 'habibi', 'habibi@admin.com', NULL, 1, '$2y$10$Gvp8IQkh9B8cjREvhQKSd.1hUuCopFdFlQGc2eHIVUQZNOuHk/aUm', NULL, '2021-06-17 04:51:29', '2021-06-17 04:51:29'),
(16, 'hafid', 'hafid@kasir.com', NULL, 0, '$2y$10$cPArUmtVvpJnNklq/HGqZeUnY6vfl.EmjRxeNaUwd4LG9YcV4yvlq', NULL, '2021-06-17 04:52:37', '2021-06-17 04:52:37'),
(17, 'ruchfi', 'ruchfi@kasir.com', NULL, 0, '$2y$10$mVKRsVGa/5xQkuj7IPntH.jDKDwQeB1yVHzFpJ48kAAxVC/HqZQ9u', NULL, '2021-06-17 05:32:14', '2021-06-17 05:32:14');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `history_products`
--
ALTER TABLE `history_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_transation`
--
ALTER TABLE `product_transation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `history_products`
--
ALTER TABLE `history_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_transation`
--
ALTER TABLE `product_transation`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
