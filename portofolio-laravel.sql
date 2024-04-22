-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2024 at 06:56 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portofolio-laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `halaman`
--

CREATE TABLE `halaman` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `isi`, `created_at`, `updated_at`) VALUES
(5, 'Kerja', 'Kerja', '2024-03-04 01:48:52', '2024-03-04 01:48:52'),
(6, 'Ngampus', '<p>Kampus</p>', '2024-03-04 01:49:06', '2024-03-04 01:49:06'),
(7, 'AFRI FAZIL', '<p>Orang <b>Sukses </b>Yang Menjalani Hidupnya Dengan <b>Ikhlas </b>, <b>Ikhtiar</b> dan <b>Tawakal,</b></p><p><b>Aaamiiin</b></p>', '2024-03-04 02:32:27', '2024-03-14 18:37:47'),
(8, 'Awards', '<ul><li>Juara Ngilang</li><li>Juara Tidur</li></ul>', '2024-03-04 20:59:13', '2024-03-05 00:31:47'),
(9, 'Penghargaan', '<ul><li>Juara Lomba Mikrotik&nbsp;</li><li>Juara Artikel Ilmiah Nasional</li><li>Juara Video Pembelajaran Tingkat Universitas se-Indonesia</li><li>Juara Poster Pendidikan Tingkat Nasional</li></ul>', '2024-03-14 13:42:50', '2024-03-14 18:46:52'),
(10, 'Interests', '<ul><li>Administrator Jaringan</li><li>Teknisi Jaringan</li><li>Technical Support</li><li>Consultant Jaringan</li><li>Web Developer</li></ul>', '2024-03-14 13:44:41', '2024-03-14 18:41:53'),
(11, 'Fazil', '<p>Mahsiswa</p>', '2024-03-19 05:13:28', '2024-03-19 05:13:28');

-- --------------------------------------------------------

--
-- Table structure for table `metadata`
--

CREATE TABLE `metadata` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) NOT NULL,
  `meta_value` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `metadata`
--

INSERT INTO `metadata` (`id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, '_language', 'Java, PHP, akka, ansible, apache, laravel, codeigniter, anaconda, androidstudio', '2024-03-03 22:43:20', '2024-03-14 13:41:13'),
(2, '_workflow', '<ul><li>GitHub</li><li>GitLab</li><li>JIRA</li></ul>', '2024-03-03 22:43:21', '2024-03-03 22:43:46'),
(3, '_foto', '240319124737.jpg', '2024-03-04 00:55:52', '2024-03-19 05:47:37'),
(4, '_email', 'afrifazil1@gmail.com', '2024-03-04 00:55:53', '2024-03-04 01:09:27'),
(5, '_kota', 'Padang', '2024-03-04 01:24:40', '2024-03-04 01:24:40'),
(6, '_provinsi', 'Sumatera Barat', '2024-03-04 01:24:41', '2024-03-04 01:24:41'),
(7, '_nohp', '081234567890', '2024-03-04 01:24:41', '2024-03-04 01:24:41'),
(8, '_facebook', 'Facebook', '2024-03-04 01:24:41', '2024-03-04 01:24:41'),
(9, '_twitter', 'Twitter', '2024-03-04 01:24:41', '2024-03-04 01:24:41'),
(10, '_linkedin', 'Linkedin', '2024-03-04 01:24:42', '2024-03-04 01:24:42'),
(11, '_github', 'Github', '2024-03-04 01:24:42', '2024-03-04 01:24:42'),
(12, '_halaman_about', '7', '2024-03-04 01:54:45', '2024-03-19 05:44:56'),
(13, '_halaman_interest', '10', '2024-03-04 02:07:31', '2024-03-14 13:45:01'),
(14, '_halaman_award', '9', '2024-03-04 02:07:32', '2024-03-14 13:45:01');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2024_02_28_191237_table_users_add_column_google_id', 2),
(3, '2024_03_01_165145_users_set_default_password', 3),
(4, '2024_03_02_104816_user_add_column_avatar', 4),
(5, '2024_03_02_123855_create_halamen_table', 5),
(6, '2024_03_02_195144_create_riwayats_table', 6),
(7, '2014_10_12_100000_create_password_reset_tokens_table', 7),
(8, '2019_08_19_000000_create_failed_jobs_table', 7),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 7),
(10, '2024_03_03_230333_riwayat_set_default_isi', 8),
(11, '2024_03_04_042350_create_metadata_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

-- --------------------------------------------------------

--
-- Table structure for table `riwayat`
--

CREATE TABLE `riwayat` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tipe` enum('experience','education') NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_akhir` date DEFAULT NULL,
  `info1` varchar(255) DEFAULT NULL,
  `info2` varchar(255) DEFAULT NULL,
  `info3` varchar(255) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `riwayat`
--

INSERT INTO `riwayat` (`id`, `judul`, `tipe`, `tgl_mulai`, `tgl_akhir`, `info1`, `info2`, `info3`, `isi`, `created_at`, `updated_at`) VALUES
(4, 'Universitas Negeri Padang', 'education', '2021-07-01', '2025-03-14', 'Fakultas Teknik', 'Pendidikan Teknik Informatika', '3.8', NULL, '2024-03-14 13:40:46', '2024-03-14 13:40:46'),
(5, 'Guru', 'experience', '2025-10-15', NULL, 'SMKN 1 Sintuk Toboh Gadang', NULL, NULL, '<p>Guru Kejuruan&nbsp;</p><p>Jurusan Teknik Komputer &amp; Jaringan</p>', '2024-03-14 18:48:48', '2024-03-14 18:48:48'),
(6, 'Teknisi', 'experience', '2025-01-17', '2025-09-17', 'DeTech Computer', NULL, NULL, '<p>Teknisi Komputer</p>', '2024-03-14 18:50:01', '2024-03-14 18:54:34'),
(7, 'CEO', 'experience', '2026-07-21', NULL, 'FaGuTech', NULL, NULL, '<p>Pendiri sekaligus Direktur Utama dari Family Guci Technology (FaGuTech)</p><p><b>Aaamiiin</b></p>', '2024-03-14 18:52:57', '2024-03-14 18:52:57'),
(8, 'SMKN 1 Sintuk Toboh Gadang', 'education', '2019-06-03', '2021-04-30', 'Teknik', 'Rekayasa Perangkat Lunak', '86.55', NULL, '2024-03-14 18:56:40', '2024-03-19 05:16:04'),
(9, 'MTsN Nan Sabaris', 'education', '2017-06-05', '2019-05-16', NULL, NULL, '80.40', NULL, '2024-03-14 19:02:36', '2024-03-14 19:07:09'),
(10, 'Teknisi', 'experience', '2024-03-08', '2024-03-21', 'Toko', NULL, NULL, '<p>teknik sampai sekarang</p>', '2024-03-19 05:15:04', '2024-03-19 05:15:04');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_id` text NOT NULL,
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `google_id`, `avatar`) VALUES
(1, 'Afri Fazil', 'afrifazil1@gmail.com', NULL, NULL, NULL, '2024-03-01 10:07:07', '2024-03-02 05:32:53', '113290265018606753763', '113290265018606753763.jpg');

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
-- Indexes for table `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `metadata`
--
ALTER TABLE `metadata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `riwayat`
--
ALTER TABLE `riwayat`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `metadata`
--
ALTER TABLE `metadata`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
-- AUTO_INCREMENT for table `riwayat`
--
ALTER TABLE `riwayat`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
