-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Bulan Mei 2023 pada 17.55
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `KodeBarang` varchar(15) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `HargaBeli` int(30) NOT NULL,
  `HargaJual` int(30) NOT NULL,
  `Stock` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `beli`
--

CREATE TABLE `beli` (
  `NoBeli` varchar(20) NOT NULL,
  `KodeBarang` varchar(50) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `TanggalBeli` date NOT NULL,
  `HargaBeli` int(20) NOT NULL,
  `Jumlah` int(20) NOT NULL,
  `TotalHarga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `jual`
--

CREATE TABLE `jual` (
  `KodeTransaksi` varchar(20) NOT NULL,
  `TanggalTransaksi` date NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `KodeBarang` varchar(20) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `HargaJual` int(20) NOT NULL,
  `Jumlah` int(20) NOT NULL,
  `TotalHarga` int(20) NOT NULL,
  `UangBayar` int(20) NOT NULL,
  `UangKembali` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `login`
--

CREATE TABLE `login` (
  `NoId` varchar(20) NOT NULL,
  `UserName` varchar(50) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `Password` varchar(30) NOT NULL,
  `HakAkses` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `login`
--

INSERT INTO `login` (`NoId`, `UserName`, `Nama`, `Password`, `HakAkses`) VALUES
('U001', 'kasir', 'kasir', '123456', 'Kasir'),
('U002', 'pemilik', 'pemilik', '123456', 'Pemilik'),
('U003', 'persedia', 'pesedia', '123456', 'Persediaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `KodeSupplier` varchar(15) NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `NoTelepon` varchar(20) NOT NULL,
  `Alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`KodeBarang`);

--
-- Indeks untuk tabel `beli`
--
ALTER TABLE `beli`
  ADD PRIMARY KEY (`NoBeli`);

--
-- Indeks untuk tabel `jual`
--
ALTER TABLE `jual`
  ADD PRIMARY KEY (`KodeTransaksi`);

--
-- Indeks untuk tabel `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`NoId`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`KodeSupplier`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
