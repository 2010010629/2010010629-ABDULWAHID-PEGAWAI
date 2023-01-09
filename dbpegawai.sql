-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 09 Jan 2023 pada 14.50
-- Versi Server: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpegawai`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `logindatabase`
--

CREATE TABLE `logindatabase` (
  `no` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `logindatabase`
--

INSERT INTO `logindatabase` (`no`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbgaji`
--

CREATE TABLE `tbgaji` (
  `NIP` varchar(20) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `JABATAN` varchar(20) NOT NULL,
  `KEHADIRAN` varchar(20) NOT NULL,
  `TUNJANGAN` varchar(20) NOT NULL,
  `GAJI_POKOK` varchar(20) NOT NULL,
  `GAJI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbgaji`
--

INSERT INTO `tbgaji` (`NIP`, `NAMA`, `JABATAN`, `KEHADIRAN`, `TUNJANGAN`, `GAJI_POKOK`, `GAJI`) VALUES
('', '', 'Admin', '', '', '', ''),
('12', 'da', 'Staff', '34', '180000', '60000', '240000'),
('123444', 'DONYKONTOL', 'Staff', '5', '180000', '3000000', '3180000'),
('143', 'GUGU', 'Staff', '12', '180000', '589000', '769000'),
('2000', 'ABDUL', 'Admin', '30', '600000', '2000000', ''),
('2010010629', 'ABDUL WAHID', 'Staff', '50', '180000', '2000000', '2180000'),
('455', 'GADDA', 'Owners', '24', '200000', '4500000', '4700000'),
('6565', 'RAHMAD', 'Owners', '34', '200000', '600000', '800000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbpegawai`
--

CREATE TABLE `tbpegawai` (
  `NIP` varchar(10) NOT NULL,
  `NAMA` varchar(20) NOT NULL,
  `AGAMA` varchar(20) NOT NULL,
  `JENIS_KELAMIN` varchar(20) NOT NULL,
  `JABATAN` varchar(20) NOT NULL,
  `ALAMAT` varchar(20) NOT NULL,
  `STATUS` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbpegawai`
--

INSERT INTO `tbpegawai` (`NIP`, `NAMA`, `AGAMA`, `JENIS_KELAMIN`, `JABATAN`, `ALAMAT`, `STATUS`) VALUES
('4', 'Risma', 'Islam', 'Pria', 'Admin Marketing', 'LAJANG', 'LAJANG'),
('5', 'Cahaya', 'Kristen', 'perempuan', 'Admin', 'Jl Raya 6', 'LAJANG'),
('6', 'Dio', 'Islam', 'Pria', 'Kapten Marketing', 'Jl Raya 7', 'LAJANG'),
('7', 'Kiki', 'Islam', 'Pria', 'Supervisor', 'Jl Raya 8', 'MENIKAH'),
('8', 'Omen', 'Hindu', 'Pria', 'HRD', 'Jl Raya 9', 'MENIKAH'),
('9', 'Apry', 'Islam', 'Pria', 'IT Support', 'Jl Raya 10', 'MENIKAH');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logindatabase`
--
ALTER TABLE `logindatabase`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbgaji`
--
ALTER TABLE `tbgaji`
  ADD PRIMARY KEY (`NIP`);

--
-- Indexes for table `tbpegawai`
--
ALTER TABLE `tbpegawai`
  ADD PRIMARY KEY (`NIP`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
