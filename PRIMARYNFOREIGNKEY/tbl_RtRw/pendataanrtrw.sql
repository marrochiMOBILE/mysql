-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 24 Feb 2020 pada 03.50
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
-- Database: `pendataanrtrw`
--
CREATE DATABASE pendataanrtrw;
USE pendataanrtrw;
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rt`
--

CREATE TABLE `tbl_rt` (
  `id_rt` int(11) NOT NULL,
  `no_rt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_rt`
--

INSERT INTO `tbl_rt` (`id_rt`, `no_rt`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rtrw`
--

CREATE TABLE `tbl_rtrw` (
  `id_rtrw` int(11) NOT NULL,
  `id_rt` int(11) NOT NULL,
  `nama_rt` varchar(50) NOT NULL,
  `id_rw` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_rtrw`
--

INSERT INTO `tbl_rtrw` (`id_rtrw`, `id_rt`, `nama_rt`, `id_rw`) VALUES
(1, 1, 'joy', 2),
(2, 1, 'jono', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_rw`
--

CREATE TABLE `tbl_rw` (
  `id_rw` int(11) NOT NULL,
  `no_rw` int(11) NOT NULL,
  `nama_rw` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data untuk tabel `tbl_rw`
--

INSERT INTO `tbl_rw` (`id_rw`, `no_rw`, `nama_rw`) VALUES
(1, 1, 'jarwo'),
(2, 2, 'sopo');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_rt`
--
ALTER TABLE `tbl_rt`
  ADD PRIMARY KEY (`id_rt`);

--
-- Indeks untuk tabel `tbl_rtrw`
--
ALTER TABLE `tbl_rtrw`
  ADD PRIMARY KEY (`id_rtrw`),
  ADD KEY `id_rt` (`id_rt`),
  ADD KEY `id_rw` (`id_rw`);

--
-- Indeks untuk tabel `tbl_rw`
--
ALTER TABLE `tbl_rw`
  ADD PRIMARY KEY (`id_rw`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_rt`
--
ALTER TABLE `tbl_rt`
  MODIFY `id_rt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_rtrw`
--
ALTER TABLE `tbl_rtrw`
  MODIFY `id_rtrw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_rw`
--
ALTER TABLE `tbl_rw`
  MODIFY `id_rw` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_rtrw`
--
ALTER TABLE `tbl_rtrw`
  ADD CONSTRAINT `tbl_rtrw_ibfk_1` FOREIGN KEY (`id_rt`) REFERENCES `tbl_rt` (`id_rt`),
  ADD CONSTRAINT `tbl_rtrw_ibfk_2` FOREIGN KEY (`id_rw`) REFERENCES `tbl_rw` (`id_rw`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
