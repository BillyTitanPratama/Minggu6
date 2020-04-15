-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 19.50
-- Versi server: 10.4.11-MariaDB
-- Versi PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sewa_kendaraan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_plat` int(10) NOT NULL,
  `tahun` int(4) DEFAULT NULL,
  `tarif` int(12) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `no_ktp` int(16) DEFAULT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telepon` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `sopir`
--

CREATE TABLE `sopir` (
  `id_sopir` int(8) NOT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(40) DEFAULT NULL,
  `telepon` int(15) DEFAULT NULL,
  `sim` int(15) DEFAULT NULL,
  `tarif` int(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tipe_kendaraan`
--

CREATE TABLE `tipe_kendaraan` (
  `id_type` varchar(10) NOT NULL,
  `type` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `no_transaksi` int(13) NOT NULL,
  `tanggal_pesan` date DEFAULT NULL,
  `tanggal_pinjam` date DEFAULT NULL,
  `tanggal_kembali_rencana` date DEFAULT NULL,
  `jam_kembali_rencana` char(6) DEFAULT NULL,
  `tanggal_kembali_realisasi` date DEFAULT NULL,
  `jam_kembali_realisasi` char(6) DEFAULT NULL,
  `denda` int(15) DEFAULT NULL,
  `kilometer_pinjam` int(7) DEFAULT NULL,
  `kilometer_kembali` int(7) DEFAULT NULL,
  `bbm_pinjam` int(5) DEFAULT NULL,
  `bbm_kembali` int(5) DEFAULT NULL,
  `kondisi_mobil_pinjam` varchar(50) DEFAULT NULL,
  `kondisi_mobil_kembali` varchar(50) DEFAULT NULL,
  `kerusakan` varchar(50) DEFAULT NULL,
  `biaya_kerusakan` int(15) DEFAULT NULL,
  `biaya_bbm` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_plat`);

--
-- Indeks untuk tabel `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id_sopir`);

--
-- Indeks untuk tabel `tipe_kendaraan`
--
ALTER TABLE `tipe_kendaraan`
  ADD PRIMARY KEY (`id_type`);

--
-- Indeks untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_transaksi`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
