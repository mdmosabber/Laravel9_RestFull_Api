-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2022 at 08:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `restfull_api`
--

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
(5, '2016_06_01_000001_create_oauth_auth_codes_table', 2),
(6, '2016_06_01_000002_create_oauth_access_tokens_table', 2),
(7, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2),
(8, '2016_06_01_000004_create_oauth_clients_table', 2),
(9, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('13d39d7b4493985bf4b7be47d54933dce21c173fae259565d4d0b3842ba8bdff6722988770cdd692', 7, 1, 'mosbber01@gmail.com', '[]', 0, '2022-08-08 23:56:59', '2022-08-08 23:56:59', '2023-08-09 05:56:59'),
('3b19511dab35f9bc1f14479f9e082c973b6aa683a111ad789cadc499bf786b4120c90fab54acbce0', 2, 1, 'mosabber@gamil.com', '[]', 0, '2022-08-09 00:33:18', '2022-08-09 00:33:18', '2023-08-09 06:33:18'),
('6c6e3efe7d1cc79169ba17b5d26a74d1a3514809d26ea3ec950f41488bf55c70377d7b2a8ecdec3d', 7, 1, 'mosbber01@gmail.com', '[]', 0, '2022-08-09 00:32:40', '2022-08-09 00:32:40', '2023-08-09 06:32:40'),
('ce1f423c2bae3d5fd7ff5fe1e4ee8a826bece50abbad51199e30ce1c1cae113a07b65aa94b74d5dc', 1, 1, 'rana3@gmail.com', '[]', 0, '2022-08-09 00:33:01', '2022-08-09 00:33:01', '2023-08-09 06:33:01');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'TIrKHXFHUHBYVbmk3V0uFcuH522qLzuXTIyYbFeo', NULL, 'http://localhost', 1, 0, 0, '2022-08-08 00:57:24', '2022-08-08 00:57:24'),
(2, NULL, 'Laravel Password Grant Client', 'f7aVqGQ6pL79RC5U6jVQZeGs7j8CmetgaKogFd67', 'users', 'http://localhost', 0, 1, 0, '2022-08-08 00:57:24', '2022-08-08 00:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-08-08 00:57:24', '2022-08-08 00:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
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
  `access_token` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `access_token`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'rana3', 'rana3@gmail.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiY2UxZjQyM2MyYmFlM2Q1ZmQ3ZmY1ZmUxZTRlZThhODI2YmVjZTUwYWJiYWQ1MTE5OWUzMGNlMWMxY2FlMTEzYTA3YjY1YWE5NGI3NGQ1ZGMiLCJpYXQiOjE2NjAwMjY3ODEuNDYxNTksIm5iZiI6MTY2MDAyNjc4MS40NjE1OTMsImV4cCI6MTY5MTU2Mjc4MS40NTY5LCJzdWIiOiIxIiwic2NvcGVzIjpbXX0.UlqRk2S3trBfucMMujDVjLyFu0v3wK5VUDCNjXAjt5DnroWWSik6iWt0f1eYPj2Zl_r-DTnRu5mg3iXdGcsKDKKQNZPuVQwCfMrIOy61XyEwgvZEM-LcaDtv5lR1rWlBlsWfL7IzHaBMHOiyWNT5exlto305M-ISK9Jm-8RrK-rVJsOVWTuD3v5OMy_wYMycBbDvAt5vRCh8mfzZEu_sVtuIP0HqAsXob1uTWnlhwv0AEwK2ZHuvPSQnSb5bKtDFHAbCDtVg6GukcOKp1nERlytA7llSG9i_pQ-n3guOW5QLusRsxBjv6i3CxKAV2j1vRuUz4nO3q27kUanRhRffcsO-Hs2C9uph__oTcnOer6ReJ3k9RPpDq-qsGnS4UVQy1NcN_pOpbd-nxQbtpLnXY0lRAJbz0g6zEv81ciP7ejlWfbMQOX8LuyCE58KFi962Bzp5LaSl1b2sx7HISVqClUTbVrW6rtE_dRbxEIOZOT4zTB4dLMRWYwphhcSnxHOvUK4HNY_5vpATsmY9z38zqwHoxAQqKFCbfQyBExkUPneORTQ9fNtS_e-CLembc8QKYiPZEMtbyTaZe-fu0Qose1aLqbfu5KM9IVz0_-cdk5bzDSIH3Qz_G2NasMxrFRkrkGss3mEpZ-G9hwtClezM6J3fUqL7HV17LnV6gdWUhVg', NULL, '$2y$10$QRfm.VGHRxJN05K3jrnzzOUE6tBTuKKb3wS.6D2D8aNyH72VavhLu', NULL, '2022-08-08 00:29:47', '2022-08-09 00:33:01'),
(2, 'Md. Mosabber Hossen', 'mosabber@gamil.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiM2IxOTUxMWRhYjM1ZjliYzFmMTQ0NzlmOWUwODJjOTczYjZhYTY4M2ExMTFhZDc4OWNhZGM0OTliZjc4NmI0MTIwYzkwZmFiNTRhY2JjZTAiLCJpYXQiOjE2NjAwMjY3OTguMTU4NTk0LCJuYmYiOjE2NjAwMjY3OTguMTU4NTk2LCJleHAiOjE2OTE1NjI3OTguMTU0MDc5LCJzdWIiOiIyIiwic2NvcGVzIjpbXX0.SbfQTPyQ_M9oUjoOjElxQuJ_7RTk0riO_BHaw7-drdAPZ5QmrUdObc2tOaoZgZghvnVKoywsYac9KbDguyaAeo5EReD2gf5zltYATabQdmD0PSVJXy6IH_tmy3t7IUoM9iAfvQT63Glb4cxVnf1phUhycyQP-pZ7fVX1snxRE7BUbluZUyd2pVktRY6Tr7lR4b2Jmx4CBFPnCKipwUZpTbRF2cvQnStDJkkjcQ2u80s-JyyFuSR3odj_88hs3R9_ozojIjTdYe6_VJqiAQiF105_E48tB779IUFEbnGIlPAR-iLQfZaYx2lbugLhzmU98oVQJvQD7kco7Z8KaQLG_HIDLDgXJ5zPY6hC-v1X9EcDXAzY-nds6qx4rnPQ4vlF6c9gC_Z-ReyK1mRwB8Z1-s6tlSbU6Vj-y996dxbKFWCGtdg0GbOY0XRoOICfcgkel2R_Y-x5hShgyapIemU3TDQnGDmThx3GhwkKIsUoE0slcbS0b7HVxO-pjtIxJB6UGL3LjvjQujofhlVNutU5f1QI8bwyGDq0BTtH1rQrYJ__at62l0jXLjo2Gjd3-5FNbZig0T9ta4s1sbFz9a6B_v8LcyvZWi_KkVNSORr9PjZgjsZrD2dT-qzpaGaePU98yVvBOu4JTDAWbo4Lf5bmL434E0c_DIqtrq8_t_sNp4w', NULL, '$2y$10$pZvBOqWYo//9OtsGO2hc.usw4WXBhWdMCoTP3xcIRRIlhIstrhDou', NULL, '2022-08-08 00:31:52', '2022-08-09 00:33:18'),
(3, 'Jone', 'jone@gmail.com', '', NULL, '$2y$10$EXqpcTkSGR5Wn2xY1HV23u6UzG1.6QrAPCClzbyaHvTl8pLuCwlfe', NULL, '2022-08-08 00:32:17', '2022-08-08 00:32:17'),
(4, 'Mani', 'mani@gmail.com', '', NULL, '$2y$10$nvxffxLKF3ZIDAhpfzT0.uMlWgitzCvs4WnSED7V285n8mwLczwSi', NULL, '2022-08-08 00:32:17', '2022-08-08 00:32:17'),
(5, 'Fani', 'fani@gmail.com', '', NULL, '$2y$10$9C6WrSprcnU9qrnLTjQ2PulJu0PdKiPGsTaUzieTRz9HGxMKubbW6', NULL, '2022-08-08 00:32:17', '2022-08-08 00:32:17'),
(6, 'Md. Abir Hossen', 'abir@gmail.com', '', NULL, '$2y$10$LWr9.KIT64zVBREFgaIZQ.vdaptB8dz90r7uFFRqacemSWldg.PVO', NULL, '2022-08-08 00:32:59', '2022-08-08 00:32:59'),
(7, 'Mosabber', 'mosbber01@gmail.com', 'eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9.eyJhdWQiOiIxIiwianRpIjoiNmM2ZTNlZmU3ZDFjYzc5MTY5YmExN2I1ZDI2YTc0ZDFhMzUxNDgwOWQyNmVhM2VjOTUwZjQxNDg4YmY1NWM3MDM3N2Q3YjJhOGVjZGVjM2QiLCJpYXQiOjE2NjAwMjY3NjAuNjM1OTg3LCJuYmYiOjE2NjAwMjY3NjAuNjM1OTksImV4cCI6MTY5MTU2Mjc2MC42MjY1MDQsInN1YiI6IjciLCJzY29wZXMiOltdfQ.GNdAThDKeBgVETzza2a1XWWVMEA1y24WQ5nws4ZGLOStm3wD64oUQBPUU1ibNB3_5q97kCE_eTbencFgRbKUqUiaq0Mzl-eFJ4UrBL-LcFcupD6nzadYOfatODh_sVjf8AmVbsOAYZLcIQzMCcfJova86aL-4WzOUM5yRlids5CGC9VxCOxa9IMBoyZcrMPfV1XrYy8IsJGttR8Pnuoc1y-NQLqJbT_gMgei1OiE_BZMsRj14bT3IsRMf2cKD10x0R9lsQ6G5e_69oKOgfOhHPAmBjud-TGYCrnF4IAjE2bdOMbzzRGez_-t8fIDY2fCg1UeHMK1SJnF4VdqHbUgWKuffPMUf95xondC0QKRrtNE8lkHSKU0U9zm1fIzMH-SzVgXaDOXiDBKGNVfJvtbY9Cs6w6iRtBQjLWApbA0EdNEYsKqKRV_2v6zjjp_wI5z2NUZ88xL6ye4x3IWK_SA24vnjtxA4GcvOd7k-QGJEuGm6opLcTNI7G8KWjr2XIxNL5yvh4BtUkbTGPzas1_7jqlrmDFKIToPoD2XvteSO4W9L1daBxge4gnwPlnwUgL4B00nDciaI6f_ghC_Qdt4rI8wNOSyiSYtaOGb4sw_1QG9iGGjRDsmsTd0a1xUiVz6rODsflszrToGthaGevWQ8kDO4VTCDebpraSA9ftTqfM', NULL, '$2y$10$dlSvAIlhOObf3Bq2AxOdvuIy3a9xRHf2rmQP5Bfd2VlY0wvw.51du', NULL, '2022-08-08 23:56:58', '2022-08-09 00:32:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
