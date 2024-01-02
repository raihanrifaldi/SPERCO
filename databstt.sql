-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Bulan Mei 2023 pada 09.56
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `databstt`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `akuns`
--

CREATE TABLE `akuns` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
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
(89, '2023_03_29_013629_create_users_table', 1),
(189, '2023_03_29_014035_create_akuns_table', 2),
(190, '2023_03_29_020237_create_pengguna_table', 2),
(219, '2014_10_12_000000_create_users_table', 3),
(220, '2014_10_12_100000_create_password_resets_table', 3),
(221, '2019_08_19_000000_create_failed_jobs_table', 3),
(222, '2019_12_14_000001_create_personal_access_tokens_table', 3),
(223, '2023_03_21_015730_create_stt_table', 3),
(224, '2023_05_11_015529_create_table_sd', 3),
(225, '2023_05_17_014533_add_original_column_to_stt_table', 3),
(226, '2023_05_17_023447_add_original_column_to_table_sd', 4);

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
-- Struktur dari tabel `pengguna`
--

CREATE TABLE `pengguna` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `stt`
--

CREATE TABLE `stt` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usid` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speech` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `stt`
--

INSERT INTO `stt` (`id`, `usid`, `event`, `time`, `original`, `speech`, `created_at`, `updated_at`) VALUES
(1, 1, 'testingawdawd', '2023-05-17 09:14:00', 'adwawdawdawd', 'ini sesudah di update ya gess', '2023-05-16 19:15:03', '2023-05-16 19:25:06'),
(2, 1, 'testing', '2023-05-17 09:24:00', 'tes tes 123', 'tes tes 123', '2023-05-16 19:24:22', '2023-05-16 19:24:22'),
(3, 1, 'Testt', '2023-05-17 13:58:00', 'Halo tes 123 apa-apa Nah kalau yang ini makai paketan kan jadi misalnya orang 2 orang ngomong nanti dipisah oh kalau dia pasti tahu siapa yang ngomong ini tapi ngomongin 1432 mempunyai kembang tapi ini kalau jauh dia ada yang ngambil ada yang enggak Quraisy YouTube apa nanti bukan apa ditulisnya yang lain JavaScript itu membran sel sekarang lagi nyobain masuk kereta bisa gitu Soalnya ini kan basic-nya klien dan klien nafas susah diomongin ya langsung dari patung itu pakai kode ke pihak apa ke localhost Teletubbies Teletubbies Oh iya database kode nuklir', 'Halo tes 123 apa-apa Nah kalau yang ini makai paketan kan jadi misalnya orang 2 orang ngomong nanti dipisah oh kalau dia pasti tahu siapa yang ngomong ini tapi ngomongin 1432 mempunyai kembang tapi ini kalau jauh dia ada yang ngambil ada yang enggak Quraisy YouTube apa nanti bukan apa ditulisnya yang lain JavaScript itu membran sel sekarang lagi nyobain masuk kereta bisa gitu Soalnya ini kan basic-nya klien dan klien nafas susah diomongin ya langsung dari patung itu pakai kode ke pihak apa ke localhost Teletubbies Teletubbies Oh iya database kode nuklir awdawdawdawd', '2023-05-16 23:58:54', '2023-05-16 23:59:14'),
(4, 1, 'testing 123', '2023-05-22 10:05:00', 'halo Assalamualaikum Perkenalkan nama saya', 'halo Assalamualaikum Perkenalkan nama saya', '2023-05-21 20:05:43', '2023-05-21 20:05:43'),
(5, 2, 'Tester 1', '2023-05-26 16:30:00', 'bosan konferensi Konferensi Meja Bundar', 'bosan konferensi Konferensi Meja Bundar', '2023-05-26 02:30:33', '2023-05-26 02:30:33'),
(6, 1, 'The Testing', '2023-05-30 09:14:00', 'alaikum Assalamualaikum warahmatullahi wabarakatuh bertelur Bang Dwi makalah baru dibilang slot membeli makan roti dengan telur Anjay benar Grand Grand Grand Kok keren keren kakkoii\r\n\r\nEta wae', 'alaikum Assalamualaikum warahmatullahi wabarakatuh bertelur Bang Dwi makalah baru dibilang slot membeli makan roti dengan telur Anjay benar Grand Grand Grand Kok keren keren kakkoii\r\n\r\nEta wae', '2023-05-29 19:14:23', '2023-05-29 19:14:23'),
(7, 1, 'Stopper', '2023-05-30 14:36:00', 'betul di action halo halo Halo di mana 1 + 12 = 2 1 + 1 = 2.30 keren Omega B = 24 per 7 iya contoh singto adanya halo halo tes 123 Lock n Lock nggak peduli stop', 'betul di action halo halo Halo di mana 1 + 12 = 2 1 + 1 = 2.30 keren Omega B = 24 per 7 iya contoh singto adanya halo halo tes 123 Lock n Lock nggak peduli stop', '2023-05-30 00:37:23', '2023-05-30 00:37:23'),
(8, 3, 'Bang ical', '2023-05-30 15:06:00', 'Iya dicek lagi banget sih kesimpulan lagi tetapi lambang itu soalnya 14 Giga tadi kayaknya ini bang habisnya tempe sama martabak oke Gilang keluar keluar masuk lagi sini Bang jangan keluar ya tapi gagal gak jadi Iya marah Oh itu dia banyak Mas Dani gajinya gede aku berjanji ya Bang siap percakapan meminjam dua orang katanya bedanya mana\r\n\r\nini', 'Iya dicek lagi banget sih kesimpulan lagi tetapi lambang itu soalnya 14 Giga tadi kayaknya ini bang habisnya tempe sama martabak oke Gilang keluar keluar masuk lagi sini Bang jangan keluar ya tapi gagal gak jadi Iya marah Oh itu dia banyak Mas Dani gajinya gede aku berjanji ya Bang siap percakapan meminjam dua orang katanya bedanya mana\r\n\r\nini', '2023-05-30 01:06:25', '2023-05-30 01:06:25');

-- --------------------------------------------------------

--
-- Struktur dari tabel `table_sd`
--

CREATE TABLE `table_sd` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `usid` bigint(20) UNSIGNED NOT NULL,
  `event` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` datetime NOT NULL,
  `original` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `speech` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `table_sd`
--

INSERT INTO `table_sd` (`id`, `usid`, `event`, `time`, `original`, `speech`, `created_at`, `updated_at`) VALUES
(5, 1, 'Testinggs', '2023-05-30 09:25:00', 'SPEAKER 1 0:00:00\r\nHello, hello, hello, hello.', 'SPEAKER 1 0:00:00\r\nHello, hello, hello, hello.', '2023-05-29 19:25:55', '2023-05-29 19:25:55'),
(6, 3, 'testing', '2023-05-30 15:31:00', 'SPEAKER 1 0:00:00\r\nItu saja lah, dokter mental Dia cuma diam-diam aja, ntar dia ntar ntar ntar ntar \r\n\r\nSPEAKER 2 0:00:06\r\nPadahal dia kasih dropot, dokter mental \r\n\r\nSPEAKER 1 0:00:08\r\nGini gimana Tawak disini Di situ telur pun ada Di tengah-tengah situ \r\n\r\nSPEAKER 2 0:00:20\r\nKan pada dokter serta ya, dokter Eh, di depan penonton Wih, laksanofen \r\n\r\nSPEAKER 1 0:00:26\r\nKalo apa sih Kalo di 3, sama lah \r\n\r\nSPEAKER 2 0:00:30\r\nEh, dokter lu \r\n\r\nSPEAKER 1 0:00:32\r\nUdah lah, pake minim \r\n\r\nSPEAKER 2 0:00:34\r\nKan memang di 3 \r\n\r\nSPEAKER 1 0:00:36\r\nJadi pas di 3 Dia proper mati \r\n\r\nSPEAKER 2 0:00:40\r\nAduh, nah gitu \r\n\r\nSPEAKER 1 0:00:42\r\nAduh Aduh \r\n\r\nSPEAKER 2 0:00:46\r\nCuma tenis pencak banget sih \r\n\r\nSPEAKER 1 0:00:48\r\nEh, cukup lah satu Nanti kalo sama kloknya', 'SPEAKER 1 0:00:00\r\nItu saja lah, dokter mental Dia cuma diam-diam aja, ntar dia ntar ntar ntar ntar \r\n\r\nSPEAKER 2 0:00:06\r\nPadahal dia kasih dropot, dokter mental \r\n\r\nSPEAKER 1 0:00:08\r\nGini gimana Tawak disini Di situ telur pun ada Di tengah-tengah situ \r\n\r\nSPEAKER 2 0:00:20\r\nKan pada dokter serta ya, dokter Eh, di depan penonton Wih, laksanofen \r\n\r\nSPEAKER 1 0:00:26\r\nKalo apa sih Kalo di 3, sama lah \r\n\r\nSPEAKER 2 0:00:30\r\nEh, dokter lu \r\n\r\nSPEAKER 1 0:00:32\r\nUdah lah, pake minim \r\n\r\nSPEAKER 2 0:00:34\r\nKan memang di 3 \r\n\r\nSPEAKER 1 0:00:36\r\nJadi pas di 3 Dia proper mati \r\n\r\nSPEAKER 2 0:00:40\r\nAduh, nah gitu \r\n\r\nSPEAKER 1 0:00:42\r\nAduh Aduh \r\n\r\nSPEAKER 2 0:00:46\r\nCuma tenis pencak banget sih \r\n\r\nSPEAKER 1 0:00:48\r\nEh, cukup lah satu Nanti kalo sama kloknya', '2023-05-30 01:31:28', '2023-05-30 01:32:01'),
(7, 1, 'testing', '2023-05-30 15:34:00', 'awdawdadwdawdw', 'awdawdadwdawdw', '2023-05-30 01:34:36', '2023-05-30 01:34:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL,
  `profile_image` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `username`, `email_verified_at`, `password`, `level`, `profile_image`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin000@gmail.com', 'admin', NULL, '$2y$10$tJvQDsC2MuONLb1ZTjkcOuBLJM./x4V53OZOJR2/PhCEI/3ZArglS', '1', 'uploads/bJomMUMHvDkWRDBP5cP1y1Iz5yxQGB2uVexe88ss.jpg', NULL, '2023-05-16 19:14:28', '2023-05-25 21:39:46'),
(2, 'Duke Hazenburg', 'duke360@gmail.com', 'duke', NULL, '$2y$10$AA2tm7LA7EWfDsx3wr7wxupZlYeW0dYoviEZSFsQck0/SAFXWIE6e', '2', 'uploads/V7aLF4udeYmIXU9h1pAqoA2HiuTN7VItHHr7b1Fm.jpg', NULL, '2023-05-19 00:49:52', '2023-05-19 00:49:52'),
(3, 'Sova The Hunter', 'shackdart@gmail.com', 'sova', NULL, '$2y$10$NHm1DU/aBHL2fb.Y6EW67ucJ5uk6//VhCzb6mwVXJahydM7xH3vsK', '2', 'uploads/dKgQUEkXU0llh9zBNNnb1LeIrMpd2Oqebo1LQPJr.jpg', NULL, '2023-05-29 20:15:48', '2023-05-29 20:15:48');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `akuns`
--
ALTER TABLE `akuns`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indeks untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `stt`
--
ALTER TABLE `stt`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speecher` (`usid`);

--
-- Indeks untuk tabel `table_sd`
--
ALTER TABLE `table_sd`
  ADD PRIMARY KEY (`id`),
  ADD KEY `speechersd` (`usid`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `akuns`
--
ALTER TABLE `akuns`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT untuk tabel `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stt`
--
ALTER TABLE `stt`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `table_sd`
--
ALTER TABLE `table_sd`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `stt`
--
ALTER TABLE `stt`
  ADD CONSTRAINT `speecher` FOREIGN KEY (`usid`) REFERENCES `users` (`id`);

--
-- Ketidakleluasaan untuk tabel `table_sd`
--
ALTER TABLE `table_sd`
  ADD CONSTRAINT `speechersd` FOREIGN KEY (`usid`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
