-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Des 2019 pada 15.15
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
-- Database: `practice01-mysql`
--

DELIMITER $$
--
-- Prosedur
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `selectAnd` ()  NO SQL
BEGIN
SELECT * FROM user WHERE statusPerkawinan='belom nikah' AND kec='legok';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `SelectAs` ()  NO SQL
BEGIN
SELECT namaDepan AS FirsName , namaBelakang   FROM user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectFull` ()  NO SQL
BEGIN
SELECT * FROM user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectKurangDari` ()  NO SQL
BEGIN
SELECT * FROM user WHERE tahunLahir < 1997;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectLebihDari` ()  NO SQL
BEGIN
SELECT * FROM user WHERE tahunLahir > 1997;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectOr` ()  NO SQL
BEGIN
SELECT * FROM user WHERE statusPerkawinan='belom nikah' OR kec='legok';
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectOrAnd` ()  NO SQL
BEGIN
SELECT * FROM user WHERE rt=1 AND rw=9 OR rw=2 ;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectSamaDengan` ()  NO SQL
BEGIN
SELECT * FROM user WHERE tahunLahir = 1997;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectSebagian` ()  NO SQL
BEGIN
SELECT namaDepan, namaBelakang FROM user;
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `selectTidakSamaDengan` ()  NO SQL
BEGIN
SELECT * FROM user WHERE tahunLahir != 1997;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `namaDepan` varchar(100) NOT NULL,
  `namaBelakang` varchar(100) NOT NULL,
  `tempatLahir` varchar(100) NOT NULL,
  `tanggalLahir` int(2) NOT NULL,
  `bulanLahir` int(2) NOT NULL,
  `tahunLahir` int(4) NOT NULL,
  `jenisKelamin` enum('pria','perempuan') NOT NULL,
  `kampung` varchar(100) NOT NULL,
  `rt` int(2) NOT NULL,
  `rw` int(3) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kec` varchar(100) NOT NULL,
  `agama` enum('islam','kristen','budha','hindu') NOT NULL,
  `statusPerkawinan` enum('belom nikah','menikah') NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `kewarnegaraan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `namaDepan`, `namaBelakang`, `tempatLahir`, `tanggalLahir`, `bulanLahir`, `tahunLahir`, `jenisKelamin`, `kampung`, `rt`, `rw`, `desa`, `kec`, `agama`, `statusPerkawinan`, `pekerjaan`, `kewarnegaraan`) VALUES
(1, 'marrochi', '', 'tanggerang', 12, 11, 1997, 'pria', 'cirarab', 1, 2, 'cirarab', 'legok', 'islam', 'belom nikah', 'mahasiswa', 'wni'),
(2, 'erdin', 'erlindo', 'tanggerang', 6, 12, 1995, 'pria', 'cirarab', 1, 2, 'cirarab', 'legok', 'islam', 'belom nikah', 'mahasiswa', 'wni'),
(3, 'mila', 'kamila', 'bogor', 12, 7, 1999, 'pria', 'bungaok', 8, 9, 'bungaok', 'legok', 'hindu', 'menikah', 'wiraswasta', 'wni'),
(4, 'indra', 'mahendar', 'bogor', 12, 7, 1991, 'pria', 'bungaok', 2, 9, 'bungaok', 'legok', 'hindu', 'menikah', 'wiraswasta', 'wni');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
