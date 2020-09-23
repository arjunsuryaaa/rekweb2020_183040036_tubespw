-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2020 at 06:10 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pw_183040036_prak`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`) VALUES
(3, 'admin', '$2y$10$JtlBlq.Yzm5CfmeZLkyUFuTCYbRhU.p4JiQK5Mg1AgWYwGNloLVfq');

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `id_buku` int(11) NOT NULL,
  `judul` varchar(64) NOT NULL,
  `pengarang` varchar(64) NOT NULL,
  `penerbit` varchar(64) NOT NULL,
  `foto` varchar(64) NOT NULL,
  `thnTerbit` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`id_buku`, `judul`, `pengarang`, `penerbit`, `foto`, `thnTerbit`) VALUES
(1, 'Sang Pemimpi', 'Andrea Hirata', 'Bentang Pustaka', 'sang_pemimpi.jpg', 2000),
(2, 'Cantik Itu Luka', 'Eka Kurniawan', 'Gramedia Pustaka Utama', 'cantik_itu_luka.jpg', 2010),
(3, 'Me And My Broken Heart', 'Wulan Fadi', 'Gagas Media', 'me_and_my_broken_heart.jpg', 2000),
(4, 'WF : The Choices We Make', 'Karma Brown', 'Elex Media Komputindo', 'the_choices_we_make.jpg', 2000),
(5, 'Perempuan Bersampur Merah', 'Intan Andaru', 'Gramedia Pustaka Utama', 'perempuan_bersampur_merah.jpg', 2000),
(6, 'Konspirasi Alam Semesta', 'Fiersa Besari', 'Media Kita', 'konspirasi_alam_semesta.jpg', 2000),
(7, 'Garis Waktu: Sebuah Perjalanan Menghapus Luka', 'Fiersa Besari', 'Media Kita', 'garis_waktu_sebuah_perjalanan_menghapus_luka.jpg', 2000),
(8, '11:11', 'Fiersa Besari', 'Agromedia Pustaka', '11_11.jpg', 2000),
(9, 'Nanti Kita Cerita Tentang Hari Ini', 'Marchella Fp', 'Kepustakaan Populer Gramedia', 'nanti_kita_cerita_tentang_hari_ini.jpg', 2000),
(10, 'Pergi', 'Tere Liye', 'Penerbit Republika', 'pergi.jpg', 2000),
(15, 'Penerima', 'Kurnia', 'Terbit Sentosa', '5cc8403142b84.jpg', 2008),
(21, 'Testing', 'Siapa', 'Siapa', '5cd5ef3bda292.jpg', 2018);

-- --------------------------------------------------------

--
-- Table structure for table `pinjam`
--

CREATE TABLE `pinjam` (
  `kode_pinjam` int(11) NOT NULL,
  `tgl_pinjam` date NOT NULL,
  `user_id` int(11) NOT NULL,
  `id_buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pinjam`
--

INSERT INTO `pinjam` (`kode_pinjam`, `tgl_pinjam`, `user_id`, `id_buku`) VALUES
(40, '2019-05-11', 3, 3),
(41, '2019-05-11', 3, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `kode_pinjam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `nama`, `email`, `username`, `password`, `photo`, `kode_pinjam`) VALUES
(2, 'Arjun Surya Atmaja', 'arjun@gmail.com', 'arjuns', '$2y$10$62W8UXNrT3EUIdUqt56Uwe1BVp3QY2m8oMJLFKxacb.0lLFoT8NPu', '5cced646d4fce.jpg', 0),
(3, 'Arjun', 'arjun@gmail.com', 'arjun123', '$2y$10$3rx7j/abh77X4zMjKsaD5uNp5w11VCa0i7ththlMTNV24l1X3yvTG', '5cd5660bbcec6.jpeg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`id_buku`);

--
-- Indexes for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD PRIMARY KEY (`kode_pinjam`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_buku` (`id_buku`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `buku`
--
ALTER TABLE `buku`
  MODIFY `id_buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pinjam`
--
ALTER TABLE `pinjam`
  MODIFY `kode_pinjam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pinjam`
--
ALTER TABLE `pinjam`
  ADD CONSTRAINT `pinjam_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  ADD CONSTRAINT `pinjam_ibfk_2` FOREIGN KEY (`id_buku`) REFERENCES `buku` (`id_buku`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
