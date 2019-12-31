-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2019 pada 08.42
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
-- Database: `database-in`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `in` ()  NO SQL
BEGIN
SELECT * FROM tbl_in WHERE kota IN ('tanggerang','jakarta');
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `NOTIN` ()  NO SQL
BEGIN
SELECT * FROM tbl_in WHERE kota NOT IN ('tanggerang','jakarta');
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_in`
--

CREATE TABLE `tbl_in` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `negara` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_in`
--

INSERT INTO `tbl_in` (`id`, `nama`, `kota`, `negara`) VALUES
(1, 'iko suhendar', 'tanggerang', 'indonesia'),
(2, 'uwen van nestrloy', 'jakarta', 'indonesia'),
(3, 'meriam berlina', 'kuala lumpur', 'malaysia'),
(4, 'mondy', 'madinah', 'arab');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_in`
--
ALTER TABLE `tbl_in`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_in`
--
ALTER TABLE `tbl_in`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
