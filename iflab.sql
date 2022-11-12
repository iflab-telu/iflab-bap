-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 12, 2022 at 04:07 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `iflab`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `singkatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `nama`, `singkatan`) VALUES
(1, 'Perancangan Dan Pemrograman Web', 'Webpro'),
(2, 'Perancangan Perangkat Lunak', 'PPL'),
(3, 'Algoritma Pemrograman', 'ALPRO'),
(4, 'Aplikasi Berbasis Platform', 'ABP'),
(5, 'Jaringan Komputer', 'JARKOM'),
(6, 'Sistem Operasi', 'SISOP'),
(7, 'Sistem Paralel dan Terdistribusi', 'SISTER'),
(8, 'Struktur Data', 'STD'),
(9, 'Pemrograman Berorientasi Objek', 'PBO');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id` int(11) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `content` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id`, `parent_id`, `name`, `content`) VALUES
(1, 1, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1p96_3BLvkVQ_kqz7xFxdw2mgykqZdsWUK11cIZrz0Qo/edit#gid=0'),
(2, 2, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1lJpCAj_Rdc442ylONeT_RhTFBWo1gXic/edit#gid=1463698863'),
(3, 2, 'BAP', 'https://docs.google.com/forms/d/e/1FAIpQLSdCsYZzw2LY7tBZ0lZMQideSJResR1ktGPqRbYvThrDYnChXA/viewform'),
(4, 2, 'Absensi', 'https://docs.google.com/spreadsheets/d/1Ifu20YwUJ8jNDwq_sRviFzXDwcMv-X9zI9f5h02y16Q/edit#gid=0'),
(5, 1, 'BAP', 'https://docs.google.com/forms/d/e/1FAIpQLScFPfQuraT3oWnJpstHdIFCu9Z2RibThNpVJsQqW1o57uAAAw/viewform'),
(6, 1, 'ABSENSI', 'https://docs.google.com/spreadsheets/d/1_Q4mWkaCGzKc1NGAe7i7JvcpxTeyM4svXRtZ1zXIyEA/edit#gid=0'),
(7, 3, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1-1-VMu9uBJy_zT-OQAye9R_FDpdtWEvcS1L6_Yu_6rk/edit?usp=sharing'),
(8, 3, 'BAP', 'http://tiny.cc/BAPALPRO2223-1'),
(9, 3, 'ABSENSI', 'https://drive.google.com/drive/folders/1lIrK7Q5og3eFg5MG8HaSNoeW8bBTOygF?usp=sharing'),
(10, 4, 'Info Umum', 'https://docs.google.com/spreadsheets/d/158o18SLHaZX155zhvYhZ-LYfKkRtuofPWgJZ_YIY2FQ/edit?usp=sharing'),
(11, 4, 'BAP', 'http://tiny.cc/BAPABP2223-1'),
(12, 4, 'ABSENSI', 'https://drive.google.com/drive/folders/16wJu8jQTuuAevMTZ3IG5NorzTCi6iqbr?usp=sharing'),
(13, 5, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1oKxkMvaBlVlQYIHyKGPgaM1uRzEifPRT2xUesTjQ4Bg/edit?usp=sharing'),
(14, 5, 'BAP', 'http://tiny.cc/BAPpraktikumJarkom2223'),
(15, 5, 'ABSENSI', 'http://tiny.cc/AbsensiJarkom2223'),
(17, 6, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1Ai1FJFeMfZNAboKxU44NWE6E3bS3m4PsGYtmWr3LSk4/edit?usp=sharing'),
(18, 6, 'BAP', 'http://tiny.cc/BAPSISOP2223GANJIL'),
(19, 6, 'ABSENSI', 'http://tiny.cc/AbsensiSisop2223'),
(20, 7, 'Info Umum', 'https://docs.google.com/spreadsheets/d/1hLwQUcdEOVmxlCLApN4o51R7j_YQXgOuqusNkWnC5zI/edit?usp=sharing'),
(21, 7, 'BAP', 'http://tiny.cc/BAPpraktikumSister2223'),
(22, 7, 'ABSENSI', 'http://tiny.cc/ABSENSISTER2223'),
(23, 8, 'Info Umum', 'https://docs.google.com/spreadsheets/d/13GloECtguubJoEaVlCi-7OViTaWGnG300w0i3X3l6KE/edit?usp=sharing'),
(24, 8, 'BAP', 'http://tiny.cc/BAPpraktikumSTD2223'),
(25, 8, 'ABSENSI', 'http://tiny.cc/AbsensiSTD2223'),
(26, 9, 'Info Umum', 'https://docs.google.com/spreadsheets/d/14notMBancuHSf72bo_bcadrtgkErHkWx8ObfmEC7-Jk/edit?usp=sharing'),
(27, 9, 'BAP', 'http://tiny.cc/BAPPraktikumPBO2223'),
(28, 9, 'ABSENSI', 'http://tiny.cc/AbsensiPBO2223');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `nama`, `link`) VALUES
(1, 'Link Mata Kuliah', '#course');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
