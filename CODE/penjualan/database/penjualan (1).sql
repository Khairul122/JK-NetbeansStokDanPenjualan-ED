-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 19 Feb 2024 pada 19.56
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

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
  `Stock` varchar(30) NOT NULL,
  `Satuan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`KodeBarang`, `NamaBarang`, `HargaBeli`, `HargaJual`, `Stock`, `Satuan`) VALUES
('B001', 'Semesn', 100000, 120000, '99', ''),
('B002', 'Tes', 12, 15, '3', 'L');

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
  `id` int(11) NOT NULL,
  `KodeTransaksi` varchar(20) NOT NULL,
  `TanggalTransaksi` date NOT NULL,
  `Nama` varchar(50) NOT NULL,
  `KodeBarang` varchar(20) NOT NULL,
  `NamaBarang` varchar(50) NOT NULL,
  `HargaJual` int(20) NOT NULL,
  `Jumlah` int(20) NOT NULL,
  `TotalHarga` int(20) NOT NULL,
  `UangBayar` int(11) NOT NULL,
  `UangKembali` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jual`
--

INSERT INTO `jual` (`id`, `KodeTransaksi`, `TanggalTransaksi`, `Nama`, `KodeBarang`, `NamaBarang`, `HargaJual`, `Jumlah`, `TotalHarga`, `UangBayar`, `UangKembali`) VALUES
(49, 'TP001', '2024-02-20', 'Budi', 'B002', 'Tes', 15, 2, 30, 30, 0),
(50, 'TP002', '2024-02-20', 'Budi', 'B001', 'Semesn', 120000, 2, 240000, 250000, 9970),
(51, 'TP002', '2024-02-20', 'Budi', 'B002', 'Tes', 15, 2, 30, 250000, 9970),
(52, 'TP003', '2024-02-20', 'Budi', 'B001', 'Semesn', 120000, 2, 240000, 400000, 40000),
(53, 'TP003', '2024-02-20', 'Budi', 'B001', 'Semesn', 120000, 1, 120000, 400000, 40000),
(54, 'TP004', '2024-02-20', 'Budi', 'B002', 'Tes', 15, 2, 30, 50, 5),
(55, 'TP004', '2024-02-20', 'Budi', 'B002', 'Tes', 15, 1, 15, 50, 5);

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
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`KodeSupplier`, `Nama`, `NoTelepon`, `Alamat`) VALUES
('S001', 'Budi', '082165443677', 'Padang');

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
  ADD PRIMARY KEY (`id`);

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

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jual`
--
ALTER TABLE `jual`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
