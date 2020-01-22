-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 22 Jan 2020 pada 16.18
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
-- Database: `database_alias`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `alias1` ()  NO SQL
BEGIN
SELECT *, namaBelakang as lastname FROM tbl_user;
-- SELECT namaDepan, namaBelakang as lastname FROM tbl_user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `alias2` ()  NO SQL
BEGIN
-- SELECT CONCAT_WS(' , ', namaDepan, namaBelakang) FROM tbl_user;
-- concat_ws untuk menghubungkan 2 collom
 SELECT CONCAT_WS(' , ', namaDepan, namaBelakang) AS 'full name' FROM tbl_user;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `namaDepan` varchar(100) NOT NULL,
  `namaBelakang` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `namaDepan`, `namaBelakang`) VALUES
(1, 'aku', 'kamu'),
(2, 'dan', 'dia'),
(3, 'cinta', 'sederhana'),
(4, 'nisa', 'sabbyan'),
(5, 'nissa', 'cantik'),
(6, 'young', 'dumb'),
(7, 'kamu', 'pergi'),
(8, 'aku', 'dia ane'),
(9, 'shes', 'gone'),
(10, 'jesika', 'alexansder');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
