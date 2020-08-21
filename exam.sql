-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Agu 2020 pada 17.36
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `aktifitas`
--

CREATE TABLE `aktifitas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `detailsoals`
--

CREATE TABLE `detailsoals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_soal` int(11) NOT NULL,
  `jenis` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `soal` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `audio` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pila` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilb` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pilc` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `pild` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pile` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kunci` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` decimal(5,2) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sesi` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detailsoals`
--

INSERT INTO `detailsoals` (`id`, `id_soal`, `jenis`, `soal`, `audio`, `pila`, `pilb`, `pilc`, `pild`, `pile`, `kunci`, `score`, `id_user`, `status`, `sesi`, `created_at`, `updated_at`) VALUES
(1, 3, '1', '<p>kgkgk</p>', NULL, '<p>hh</p>', '<p>dd</p>', '<p>ss</p>', '<p>aa</p>', '<p>ff</p>', 'B', '100.00', 3, 'Y', 'cf17fde3c6f4c756edab161a9c06112b', '2020-08-20 07:13:46', '2020-08-20 07:13:46'),
(2, 3, '1', '<p>khkss</p>', NULL, '<p>ee</p>', '<p>aa</p>', '<p>gg</p>', '<p>rr</p>', '<p>ww</p>', 'E', '100.00', 3, 'N', '04cc018bedea93a46b5043198c85e8c8', '2020-08-20 07:14:49', '2020-08-20 07:14:49');

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_soal_esays`
--

CREATE TABLE `detail_soal_esays` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_soal` int(11) NOT NULL,
  `soal` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `detail_soal_esays`
--

INSERT INTO `detail_soal_esays` (`id`, `id_soal`, `soal`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '<p>Jelaskan apa yang kamu ketahui tentang LEA</p>', 'Y', '2020-08-20 03:55:29', '2020-08-20 03:55:29'),
(2, 1, '<p>Apa film favoritmu?</p>', 'Y', '2020-08-20 03:55:50', '2020-08-20 21:34:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `distribusisoals`
--

CREATE TABLE `distribusisoals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_kelas` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `distribusisoals`
--

INSERT INTO `distribusisoals` (`id`, `id_soal`, `id_kelas`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2020-08-20 07:10:29', '2020-08-20 07:10:29'),
(2, 1, 2, '2020-08-20 07:10:30', '2020-08-20 07:10:30'),
(7, 3, 1, '2020-08-20 08:20:43', '2020-08-20 08:20:43'),
(8, 3, 2, '2020-08-20 08:20:44', '2020-08-20 08:20:44'),
(9, 3, 3, '2020-08-20 08:20:46', '2020-08-20 08:20:46');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawabs`
--

CREATE TABLE `jawabs` (
  `id` int(10) UNSIGNED NOT NULL,
  `no_soal_id` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_soal` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pilihan` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` decimal(8,2) NOT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisi` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `jawabs`
--

INSERT INTO `jawabs` (`id`, `no_soal_id`, `id_soal`, `id_user`, `id_kelas`, `nama`, `pilihan`, `score`, `status`, `revisi`, `created_at`, `updated_at`) VALUES
(1, '1', 3, 6, 1, 'hanifa alwi', 'B', '100.00', '1', 0, '2020-08-20 07:15:51', '2020-08-20 07:15:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jawab_esays`
--

CREATE TABLE `jawab_esays` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_detail_soal_esay` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jawab` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `score` decimal(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_wali` int(11) DEFAULT NULL,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id`, `id_wali`, `nama`, `created_at`, `updated_at`) VALUES
(1, 3, 'Biologi 1', '2020-08-18 00:15:08', '2020-08-18 00:15:08'),
(2, 4, 'Fisika 1', '2020-08-18 00:15:20', '2020-08-18 00:15:20'),
(3, 8, 'Kimia 1', '2020-08-20 08:13:27', '2020-08-20 08:13:27'),
(4, 5, 'English 1', '2020-08-21 07:15:51', '2020-08-21 07:15:51');

-- --------------------------------------------------------

--
-- Struktur dari tabel `materis`
--

CREATE TABLE `materis` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `isi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hits` int(11) DEFAULT NULL,
  `sesi` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_12_20_005232_create_schools_table', 1),
(4, '2018_12_20_010114_create_aktifitas_table', 1),
(5, '2018_12_20_010319_create_detailsoals_table', 1),
(6, '2018_12_20_010716_create_distribusisoals_table', 1),
(7, '2018_12_20_010836_create_jawabs_table', 1),
(8, '2018_12_20_011157_create_kelas_table', 1),
(9, '2018_12_20_011323_create_materis_table', 1),
(10, '2018_12_20_011523_create_soals_table', 1),
(11, '2020_05_24_073243_create_detail_soal_essays', 1),
(12, '2020_05_24_073408_create_jawab_essays', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `schools`
--

CREATE TABLE `schools` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `header` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `motto` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `schools`
--

INSERT INTO `schools` (`id`, `nama`, `alamat`, `logo`, `header`, `motto`, `created_at`, `updated_at`) VALUES
(1, 'Sekolah Bangsa', 'Jalan Agung Raya I No.26D', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `soals`
--

CREATE TABLE `soals` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `materi` int(11) DEFAULT NULL,
  `paket` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deskripsi` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kkm` decimal(8,2) DEFAULT NULL,
  `waktu` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tampil` varchar(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `soals`
--

INSERT INTO `soals` (`id`, `id_user`, `jenis`, `materi`, `paket`, `deskripsi`, `kkm`, `waktu`, `tampil`, `created_at`, `updated_at`) VALUES
(1, 3, '1', NULL, 'ujian tengah semester ganjil', 'ini ujian yaa', '75.00', '60', NULL, '2020-08-19 06:44:58', '2020-08-19 06:44:58'),
(2, 3, '1', NULL, 'ulangan harian', 'Materi Minggu ini', '75.00', '60', NULL, '2020-08-20 00:39:08', '2020-08-20 00:39:08'),
(3, 4, '1', NULL, 'ujian tengah semester ganjil', 'baa lai tuu', '75.00', '60', NULL, '2020-08-20 04:12:24', '2020-08-20 04:12:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_kelas` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_induk` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nisn` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jk` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status_sekolah` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sekolah_asal` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `id_kelas`, `nama`, `no_induk`, `nisn`, `jk`, `status`, `gambar`, `status_sekolah`, `sekolah_asal`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, NULL, 'Dinda Fitria', '1811521001', NULL, 'P', 'A', NULL, 'Y', NULL, 'dynda.fitr31@gmail.com', '$2y$10$Pt1dlowNCQ13Ydz5MCY56.YNvbrOjvMHemJUueOvXSOQ2yjYRV9Jy', 'aeLF81fjsxdhMN29rYmxmbewCnw4xpWTVassHE0DjXO93PFMAra7w8wfx8lr', NULL, '2020-08-19 06:30:34'),
(4, NULL, 'Rivaldo Agusti', '1811521008', NULL, 'L', 'G', NULL, NULL, NULL, 'rivaldo@gmail.com', '$2y$10$xtUzhTugY.g4cxSUntKJtObTXuD9SScqsSY/POwlJEfnzDwyz.bLe', 'n0HLL2c2UmZ3phDBeQuaw0XxXQnv4CkqHreOzYhhCrsAFgfgkMey6l4QpsWw', '2020-08-18 00:02:08', '2020-08-18 00:02:08'),
(5, NULL, 'Ginda Teguh Imani', '1911521002', NULL, 'L', 'G', NULL, NULL, NULL, 'ginda19@gmail.com', '$2y$10$X88IriIZGMqcFeghkLuQR.EszRVpT6zFVSluS3j2gOcbNiAclrHzu', NULL, '2020-08-18 00:14:29', '2020-08-20 21:31:06'),
(6, '1', 'hanifa alwi', '123', '1811521011', 'P', 'S', NULL, 'Y', NULL, '123@gmail.com', '$2y$10$JZjZH.XvETQ0wNwQWCrA9OvFzfyiI.L7tI2HGAceKCyvusf4rfJHC', 'G1My1MpdbNsFk8ELkGZ5gt85z4AzcvdGRNrXeB40KWI7ftQT98rNKwQrChJG', '2020-08-18 00:19:55', '2020-08-19 07:06:59'),
(7, '2', 'lathifa hardi', '124', '1811521003', 'P', 'S', NULL, 'Y', NULL, '124@examlea.com', '$2y$10$d7h1xYLWeIsEs3fsHo7uRux9beX0qJxXK7Bp1QSXouSaxZMd39s.O', NULL, '2020-08-18 00:25:55', '2020-08-18 00:25:55'),
(8, NULL, 'Nadhila Jimin', '1811521013', NULL, 'P', 'G', NULL, NULL, NULL, 'dila@gmail.com', '$2y$10$vg/1Q.7k6PaR1yD.FvraNuvrV1yUM1OVL/IrjkdfQaIm5UegLn.nK', NULL, '2020-08-20 08:12:30', '2020-08-20 21:31:30'),
(9, '3', 'Annisa Suprima', '999', '1811521015', 'P', 'S', NULL, 'Y', NULL, '999@examlea.com', '$2y$10$eCeSdIAKxlVlqSUXZUhGBuR2Wgf2JbzbS1dqDqapMVnzf5Q9gjwue', NULL, '2020-08-20 08:14:25', '2020-08-20 21:32:53');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detailsoals`
--
ALTER TABLE `detailsoals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `detail_soal_esays`
--
ALTER TABLE `detail_soal_esays`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `distribusisoals`
--
ALTER TABLE `distribusisoals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawabs`
--
ALTER TABLE `jawabs`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jawab_esays`
--
ALTER TABLE `jawab_esays`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `materis`
--
ALTER TABLE `materis`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `schools`
--
ALTER TABLE `schools`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `soals`
--
ALTER TABLE `soals`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `aktifitas`
--
ALTER TABLE `aktifitas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `detailsoals`
--
ALTER TABLE `detailsoals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `detail_soal_esays`
--
ALTER TABLE `detail_soal_esays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `distribusisoals`
--
ALTER TABLE `distribusisoals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `jawabs`
--
ALTER TABLE `jawabs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jawab_esays`
--
ALTER TABLE `jawab_esays`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `materis`
--
ALTER TABLE `materis`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT untuk tabel `schools`
--
ALTER TABLE `schools`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `soals`
--
ALTER TABLE `soals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
