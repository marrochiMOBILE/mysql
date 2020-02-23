-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Feb 2020 pada 08.33
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `copy_isi_table`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `copyIsiTable` ()  NO SQL
BEGIN
INSERT INTO tbl_barangterjual SELECT * FROM tbl_listbarang;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `copyIsiTable2` ()  NO SQL
BEGIN
INSERT INTO tbl_barangterjual SELECT * FROM
tbl_listbarang WHERE harga < 3000;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barangterjual`
--

CREATE TABLE `tbl_barangterjual` (
  `idBarang` int(11) NOT NULL,
  `namaBarang` varchar(50) NOT NULL,
  `Merek` varchar(50) NOT NULL,
  `Agen` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_barangterjual`
--

INSERT INTO `tbl_barangterjual` (`idBarang`, `namaBarang`, `Merek`, `Agen`, `tanggal`, `harga`) VALUES
(1, 'kacang garuda', 'garuda', 'pt_indehoy', '2020-02-24 10:18:44', 1500),
(2, 'kacang dua kelinci', 'dua kelinci', 'pt_murah meriah', '2020-02-19 01:17:17', 5000),
(23, 'sambel balado', 'garuda', 'pt_indehoy', '2020-02-24 10:18:44', 1500),
(25, 'cingcau', 'dua kelinci', 'pt_murah meriah', '2020-02-19 01:17:17', 5000),
(28, 'sayang', 'dua kelinci', 'pt_murah meriah', '2020-02-19 01:17:17', 2000),
(29, 'cinta', 'garuda', 'pt_indehoy', '2020-02-24 10:18:44', 1500);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_listbarang`
--

CREATE TABLE `tbl_listbarang` (
  `idBarang` int(11) NOT NULL,
  `namaBarang` varchar(50) NOT NULL,
  `Merek` varchar(50) NOT NULL,
  `Agen` varchar(50) NOT NULL,
  `tanggal` datetime NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_listbarang`
--

INSERT INTO `tbl_listbarang` (`idBarang`, `namaBarang`, `Merek`, `Agen`, `tanggal`, `harga`) VALUES
(28, 'sayang', 'dua kelinci', 'pt_murah meriah', '2020-02-19 01:17:17', 2000),
(29, 'cinta', 'garuda', 'pt_indehoy', '2020-02-24 10:18:44', 1500);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barangterjual`
--
ALTER TABLE `tbl_barangterjual`
  ADD PRIMARY KEY (`idBarang`);

--
-- Indeks untuk tabel `tbl_listbarang`
--
ALTER TABLE `tbl_listbarang`
  ADD PRIMARY KEY (`idBarang`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barangterjual`
--
ALTER TABLE `tbl_barangterjual`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `tbl_listbarang`
--
ALTER TABLE `tbl_listbarang`
  MODIFY `idBarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
