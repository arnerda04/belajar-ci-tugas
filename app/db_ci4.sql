-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jun 2024 pada 11.41
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ci4`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `version` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `group` varchar(255) NOT NULL,
  `namespace` varchar(255) NOT NULL,
  `time` int(11) NOT NULL,
  `batch` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `version`, `class`, `group`, `namespace`, `time`, `batch`) VALUES
(1, '2024-06-03-080843', 'App\\Database\\Migrations\\User', 'default', 'App', 1717403100, 1),
(2, '2024-06-03-080921', 'App\\Database\\Migrations\\Product', 'default', 'App', 1717403100, 1),
(3, '2024-06-03-080926', 'App\\Database\\Migrations\\Transaction', 'default', 'App', 1717403100, 1),
(4, '2024-06-03-080930', 'App\\Database\\Migrations\\TransactionDetail', 'default', 'App', 1717403100, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE `product` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `harga` double NOT NULL,
  `jumlah` int(5) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id`, `nama`, `harga`, `jumlah`, `foto`, `created_at`, `updated_at`) VALUES
(1, 'ASUS TUF A15 FA506NF', 10899000, 5, 'asus_tuf_a15.jpg', '2024-06-03 08:28:43', NULL),
(2, 'Asus Vivobook 14 A1404ZA', 6899000, 7, 'asus_vivobook_14.jpg', '2024-06-03 08:28:43', NULL),
(3, 'Lenovo IdeaPad Slim 3-14IAU7', 6299000, 5, 'lenovo_idepad_slim_3.jpg', '2024-06-03 08:28:43', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction`
--

CREATE TABLE `transaction` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `total_harga` double NOT NULL,
  `alamat` text NOT NULL,
  `ongkir` double DEFAULT NULL,
  `status` int(1) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaction_detail`
--

CREATE TABLE `transaction_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `transaction_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) UNSIGNED NOT NULL,
  `jumlah` int(5) NOT NULL,
  `diskon` double DEFAULT NULL,
  `subtotal_harga` double NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` int(10) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`, `created_at`, `updated_at`) VALUES
(1, 'salwa.mandala', 'pradana.yance@yahoo.co.id', '$2y$10$CqKCG5XQtDmjcQqQIeW9.uEs738dc8hU39QcRiteehPaxsexfsZra', 'guest', '2024-06-03 08:30:08', NULL),
(2, 'jasmin44', 'ynasyidah@gmail.com', '$2y$10$x5yJZw2.ISQEmNkm9P.Hju2syetdQaKKtnvXA73I9ENCzGXdUhaqi', 'guest', '2024-06-03 08:30:08', NULL),
(3, 'bhasanah', 'rlaksita@setiawan.or.id', '$2y$10$Go2dDU5.H9Sx1zihDb2dUeqNnzf0Zm0GU0sxU7.uevIy81u/DcH/S', 'guest', '2024-06-03 08:30:08', NULL),
(4, 'banara.rajata', 'ysusanti@firgantoro.asia', '$2y$10$IHq5bRGP1PmKxmp8f1VEjuzsna2R8eIs7JFAlPd5T7KaF5rEKdU7.', 'admin', '2024-06-03 08:30:08', NULL),
(5, 'dian.winarsih', 'radika11@latupono.com', '$2y$10$RCur7wOgSnLvsB3RjhxL8O8hsSI4hy3vP0ELEd3z5nx8H7xKoueF.', 'guest', '2024-06-03 08:30:08', NULL),
(6, 'ganjaran.thamrin', 'farida.pranawa@jailani.name', '$2y$10$4XjL6x34XAS0Djj8JrePVeHjSMarbS.fUgXvTd95cCQkbm/kKP0Dy', 'admin', '2024-06-03 08:30:08', NULL),
(7, 'dongoran.ratna', 'xnovitasari@dongoran.biz.id', '$2y$10$pKIgvV8W9/S5jxqv2KkmWuAOA.A55bj43Fgcps1AO8d3NrZB3.TsW', 'guest', '2024-06-03 08:30:08', NULL),
(8, 'ozy.marbun', 'gilda.sudiati@yahoo.co.id', '$2y$10$nftC4gy6SF6Mm1RXIC3gpO3ozRaNs.7EpCSFqjjY8pph/mSbqm2nm', 'guest', '2024-06-03 08:30:08', NULL),
(9, 'napitupulu.cakrabirawa', 'alika89@irawan.or.id', '$2y$10$wUjMndfD97PR8o9FSwMQD.7OKWVwLzvy.aFikl/XEhQ3KE06DKFsy', 'guest', '2024-06-03 08:30:08', NULL),
(10, 'karsa.farida', 'haryanti.kalim@prabowo.com', '$2y$10$eYXGOS4QsUScHaW0USNw4.E79dWQidP864b15bmrLSra3VdGdBObe', 'guest', '2024-06-03 08:30:08', NULL),
(99, 'aryani', 'ar@gmail.com', '$2y$10$.5HexJWflarCP6o9x32rvuYWgDnJrCf0Qbeg7mZ7pDAQiUDgUCIP6', 'admin', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `transaction_detail`
--
ALTER TABLE `transaction_detail`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
