-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Mar 2022 pada 04.01
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `smk_igasar`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `Kd_Matkul` varchar(16) NOT NULL,
  `Nm_Matkul` varchar(32) NOT NULL,
  `SKS` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`Kd_Matkul`, `Nm_Matkul`, `SKS`) VALUES
('K0A01', 'Algoritma Pemrograman I', 4),
('K0A02', 'Algoritma Pemrograman II', 4),
('U0001', 'Agama', 2),
('U0002', 'Bahasa Indonesia', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_mhs`
--

CREATE TABLE `tbl_mhs` (
  `NIM` int(16) NOT NULL,
  `Nama` varchar(64) NOT NULL,
  `Jurusan` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_mhs`
--

INSERT INTO `tbl_mhs` (`NIM`, `Nama`, `Jurusan`) VALUES
(3206001, 'Rani', 'MI'),
(4106001, 'Aria', 'IF'),
(4107123, 'Sari', 'IF'),
(41020006, 'Indra', 'Tek. Informatika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_nilai`
--

CREATE TABLE `tbl_nilai` (
  `NIM` int(16) NOT NULL,
  `Kd_Matkul` varchar(16) NOT NULL,
  `Kelas` varchar(16) NOT NULL,
  `Nilai` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tbl_nilai`
--

INSERT INTO `tbl_nilai` (`NIM`, `Kd_Matkul`, `Kelas`, `Nilai`) VALUES
(4106001, 'U0001', 'IF-2A', 'A'),
(3206001, 'U0001', 'MI-2A', 'B'),
(4106001, 'K0A01', 'GABUNG', 'C'),
(4107123, 'K0A01', 'GABUNG', 'B'),
(4106001, 'K0A02', 'GABUNG', 'A');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`Kd_Matkul`);

--
-- Indeks untuk tabel `tbl_mhs`
--
ALTER TABLE `tbl_mhs`
  ADD PRIMARY KEY (`NIM`);

--
-- Indeks untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD KEY `NIM` (`NIM`),
  ADD KEY `Kd_Matkul` (`Kd_Matkul`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_nilai`
--
ALTER TABLE `tbl_nilai`
  ADD CONSTRAINT `tbl_nilai_ibfk_1` FOREIGN KEY (`NIM`) REFERENCES `tbl_mhs` (`NIM`),
  ADD CONSTRAINT `tbl_nilai_ibfk_2` FOREIGN KEY (`Kd_Matkul`) REFERENCES `tbl_matkul` (`Kd_Matkul`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
