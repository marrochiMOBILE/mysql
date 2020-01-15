-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Jan 2020 pada 07.57
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
-- Database: `database-aritmatika`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `avg` ()  NO SQL
BEGIN
SELECT avg(harga) FROM tbl_barang;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `count` ()  NO SQL
BEGIN
SELECT COUNT(harga) AS hargaDWP FROM tbl_barang;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `max` ()  NO SQL
BEGIN
SELECT max(harga) FROM tbl_barang;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `min` ()  NO SQL
BEGIN
SELECT min(harga) FROM tbl_barang;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `sum` ()  NO SQL
BEGIN
SELECT sum(harga) FROM tbl_barang;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang`
--

CREATE TABLE `tbl_barang` (
  `id` int(11) NOT NULL,
  `barang` varchar(100) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `tharga` int(11) NOT NULL,
  `laba` int(11) NOT NULL,
  `tlaba` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_barang`
--

INSERT INTO `tbl_barang` (`id`, `barang`, `jumlah`, `harga`, `tharga`, `laba`, `tlaba`) VALUES
(1, 'sukro', 300, 500, 0, 100, 0),
(2, 'yakult', 123, 2500, 0, 500, 0),
(3, 'beybrand', 50, 10000, 0, 1000, 0),
(4, 'kacang garuda', 300, 500, 0, 50, 0);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_barang`
--
ALTER TABLE `tbl_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
