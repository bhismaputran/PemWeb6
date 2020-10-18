-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Okt 2020 pada 17.24
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.2.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_imbpnstore`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_login`
--

CREATE TABLE `data_login` (
  `id_login` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `last_login` timestamp NOT NULL DEFAULT current_timestamp(),
  `active` set('Y','N') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `data_login`
--

INSERT INTO `data_login` (`id_login`, `email`, `password`, `created_at`, `last_login`, `active`) VALUES
(2, 'bhismaputran04@gmail.com', '56a6aba993af20da27f7cd25c9fa540d', '2020-10-15 05:31:36', '2020-10-15 05:31:36', 'Y');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nama_pegawai` varchar(100) NOT NULL,
  `alamat_pegawai` varchar(100) NOT NULL,
  `no_handphone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nama_pegawai`, `alamat_pegawai`, `no_handphone`) VALUES
(1, 'I Made Bhisma Putra Nugraha', 'Tianyar Barat, Kubu, Karangasem', '087865488316');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pemesanan` int(11) NOT NULL,
  `jmlh_dibayarkan` int(25) NOT NULL,
  `tanggal_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pemesanan`, `jmlh_dibayarkan`, `tanggal_pembayaran`) VALUES
(1, 1, 5000, '2020-10-15 10:22:24'),
(2, 2, 20000, '2020-10-15 10:23:36');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(10) NOT NULL,
  `nickname` varchar(25) NOT NULL,
  `level_karakter` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nickname`, `level_karakter`) VALUES
(449137578, '[BG] IMPEESA', 46),
(1834823388, '[BG] PRAWIRA', 54);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pemesanan`
--

CREATE TABLE `pemesanan` (
  `id_pemesanan` int(11) NOT NULL,
  `id_pembeli` int(10) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `tanggal_pemesanan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `pemesanan`
--

INSERT INTO `pemesanan` (`id_pemesanan`, `id_pembeli`, `id_produk`, `tanggal_pemesanan`) VALUES
(1, 1834823388, 1, '2020-10-14 12:54:28'),
(2, 449137578, 5, '2020-10-15 10:21:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `harga_produk` int(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_produk`, `nama_produk`, `harga_produk`, `deskripsi`) VALUES
(1, '25 Diamond Free Fire', 5000, 'Hanya dengan Rp 5.000 sudah mendapat 25 diamond Free Fire. Top Up Sekarang...'),
(2, '50 Diamond Free Fire', 8000, 'Hanya dengan Rp 8.000 sudah mendapat 50 diamond Free Fire. Top Up Sekarang...'),
(3, '70 Diamond Free Fire', 12000, 'Hanya dengan Rp 12.000 sudah mendapat 70 diamond Free Fire. Top Up Sekarang...'),
(4, '100 Diamond Free fire', 15000, 'Hanya dengan Rp 15.000 sudah mendapat 100 diamond Free Fire. Top Up Sekarang...'),
(5, '140 Diamond Free Fire', 20000, 'Hanya dengan Rp 20.000 sudah mendapat 140 diamond Free Fire. Top Up Sekarang...'),
(6, '210 Diamond Free Fire', 30000, 'Hanya dengan Rp 30.000 sudah mendapat 210 diamond Free Fire. Top Up Sekarang...'),
(9, 'Membership Mingguan', 30000, 'Hanya dengan Rp 30.000 sudah mendapat Membership Mingguan Free Fire. Top Up Sekarang...'),
(10, '720 Diamond Free Fire', 100000, 'Hanya dengan Rp 100.000 sudah mendapat 720 diamond Free Fire. Top Up Sekarang...');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `data_login`
--
ALTER TABLE `data_login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pemesanan` (`id_pemesanan`);

--
-- Indeks untuk tabel `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indeks untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`id_pemesanan`),
  ADD KEY `id_produk` (`id_produk`),
  ADD KEY `id_pembeli` (`id_pembeli`);

--
-- Indeks untuk tabel `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `data_login`
--
ALTER TABLE `data_login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `id_pemesanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pemesanan`) REFERENCES `pemesanan` (`id_pemesanan`);

--
-- Ketidakleluasaan untuk tabel `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD CONSTRAINT `pemesanan_ibfk_1` FOREIGN KEY (`id_produk`) REFERENCES `produk` (`id_produk`),
  ADD CONSTRAINT `pemesanan_ibfk_2` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
