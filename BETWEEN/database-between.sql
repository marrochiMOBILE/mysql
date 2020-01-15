-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 31 Des 2019 pada 11.20
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
-- Database: `database-between`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `between` ()  NO SQL
BEGIN
SELECT * FROM tbl_user WHERE umur BETWEEN 22 AND 30;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `groupby` ()  NO SQL
BEGIN
SELECT * FROM tbl_user GROUP BY umur HAVING umur BETWEEN 25 and 26;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `orderby` ()  NO SQL
BEGIN
SELECT * FROM tbl_user WHERE umur BETWEEN 22 AND 30 ORDER BY umur DESC;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `nama` varchar(100) NOT NULL,
  `umur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`nama`, `umur`) VALUES
('roger kapteiin', '45'),
('husna', '26'),
('ina', '25'),
('marco', '25'),
('oca', '22'),
('kimmy', '21'),
('jarp', '32');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
