-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2019 pada 15.51
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
-- Database: `database-like`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `mencariAkhiran-O` ()  NO SQL
BEGIN
SELECT * FROM tbl_like WHERE nama LIKE '%o';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mencariAwalan-a` ()  NO SQL
BEGIN
SELECT * FROM tbl_like WHERE nama LIKE 'a%';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `mengandung-KdanN` ()  NO SQL
BEGIN
SELECT * FROM tbl_like WHERE nama LIKE '%k%n%';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `Not-Like` ()  NO SQL
BEGIN
SELECT * FROM tbl_like WHERE nama NOT LIKE 'a%';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `yangMengandung-J` ()  NO SQL
BEGIN
SELECT * FROM tbl_like WHERE nama LIKE '%j%';
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_like`
--

CREATE TABLE `tbl_like` (
  `idUser` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `umur` int(3) NOT NULL,
  `penghasilan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_like`
--

INSERT INTO `tbl_like` (`idUser`, `nama`, `umur`, `penghasilan`) VALUES
(1, 'khusnul khotimah', 33, 3000),
(2, 'ijal junaidi', 23, 2000),
(3, 'syakban robaniah', 25, 5000),
(4, 'edin erlindo', 25, 9000),
(5, 'ukay', 41, 7000),
(6, 'erdo ekay', 28, 4000),
(7, 'anda sukanda', 43, 6700),
(8, 'hernih', 22, 8762);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_like`
--
ALTER TABLE `tbl_like`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_like`
--
ALTER TABLE `tbl_like`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
