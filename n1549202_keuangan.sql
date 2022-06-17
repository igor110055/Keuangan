-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 16, 2022 at 08:51 AM
-- Server version: 10.5.15-MariaDB-cll-lve
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `n1549202_keuangan`
--

-- --------------------------------------------------------

--
-- Table structure for table `bank`
--

CREATE TABLE `bank` (
  `bank_id` int(11) NOT NULL,
  `bank_nama` varchar(255) NOT NULL,
  `bank_nomor` varchar(255) NOT NULL,
  `bank_pemilik` varchar(255) NOT NULL,
  `bank_saldo` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `bank`
--

INSERT INTO `bank` (`bank_id`, `bank_nama`, `bank_nomor`, `bank_pemilik`, `bank_saldo`) VALUES
(1, 'BANK BRI', 'Rohmanudin', '805101008019533', 105250000);

-- --------------------------------------------------------

--
-- Table structure for table `hutang`
--

CREATE TABLE `hutang` (
  `hutang_id` int(11) NOT NULL,
  `hutang_tanggal` date NOT NULL,
  `hutang_nominal` int(11) NOT NULL,
  `hutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hutang`
--

INSERT INTO `hutang` (`hutang_id`, `hutang_tanggal`, `hutang_nominal`, `hutang_keterangan`) VALUES
(2, '2019-06-01', 10000, 'Setor\r\n\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategori_id`, `kategori`) VALUES
(1, 'Lainnya'),
(6, 'Penjualan Theme Sijalu'),
(9, 'Penjualan Buku Tamu'),
(14, 'Penjualan Theme Batuah'),
(17, 'Sewa Tenda IO'),
(18, 'Koperasi Simpan Pinjam');

-- --------------------------------------------------------

--
-- Table structure for table `piutang`
--

CREATE TABLE `piutang` (
  `piutang_id` int(11) NOT NULL,
  `piutang_tanggal` date NOT NULL,
  `piutang_nominal` int(11) NOT NULL,
  `piutang_keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `piutang`
--

INSERT INTO `piutang` (`piutang_id`, `piutang_tanggal`, `piutang_nominal`, `piutang_keterangan`) VALUES
(1, '2019-06-22', 1000000, 'Hutang oleh rahman'),
(3, '2019-06-23', 70000, 'Hutang oleh jony untuk belu pulsa');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `transaksi_id` int(11) NOT NULL,
  `transaksi_tanggal` date NOT NULL,
  `transaksi_jenis` enum('Pengeluaran','Pemasukan') NOT NULL,
  `transaksi_kategori` int(11) NOT NULL,
  `transaksi_nominal` int(11) NOT NULL,
  `transaksi_keterangan` text NOT NULL,
  `transaksi_bank` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`transaksi_id`, `transaksi_tanggal`, `transaksi_jenis`, `transaksi_kategori`, `transaksi_nominal`, `transaksi_keterangan`, `transaksi_bank`) VALUES
(1, '2022-04-04', 'Pemasukan', 14, 250000, 'http://surabayaudik.id\r\n', 1),
(4, '2022-04-04', 'Pemasukan', 14, 250000, 'http://tamiajeng.my.id', 1),
(19, '2022-04-04', 'Pemasukan', 14, 250000, 'http://kedungringin.id', 1),
(20, '2022-04-04', 'Pemasukan', 14, 250000, 'http://desapakuanaji.id', 1),
(21, '2022-04-04', 'Pemasukan', 14, 250000, 'http://desapasirsakti.id', 1),
(22, '2022-04-04', 'Pemasukan', 14, 250000, 'http://mendalok.id', 1),
(23, '2022-04-04', 'Pemasukan', 14, 250000, 'http://tanjung-eran.my.id', 1),
(24, '2022-04-05', 'Pemasukan', 14, 250000, 'https://taraibangun.desa.id/', 1),
(25, '2022-04-06', 'Pemasukan', 14, 250000, 'http://gandasari.org', 1),
(26, '2022-04-07', 'Pemasukan', 14, 250000, 'http://desasukadana.id/', 1),
(27, '2022-04-07', 'Pemasukan', 14, 250000, 'http://desasumurkucing.id', 1),
(28, '2022-04-07', 'Pemasukan', 14, 250000, 'http://desa-purworejo.id', 1),
(29, '2022-04-07', 'Pemasukan', 14, 250000, 'http://desarejomulyo.id', 1),
(30, '2022-04-07', 'Pemasukan', 14, 250000, 'https://desabanarjoyo.id', 1),
(31, '2022-04-08', 'Pemasukan', 14, 250000, 'http://langkiddi.web.id', 1),
(32, '2022-04-09', 'Pemasukan', 14, 250000, 'https://desamulyaagung.id/', 1),
(33, '2022-04-09', 'Pemasukan', 14, 250000, 'https://bandaragung.id/', 1),
(34, '2022-04-09', 'Pemasukan', 14, 250000, 'https://sendang.sidesadigital.com', 1),
(35, '2022-04-09', 'Pemasukan', 14, 250000, 'http://dukuhtengah.sidesadigital.com', 1),
(36, '2022-04-12', 'Pemasukan', 14, 250000, 'http://jayasakti-at.id', 1),
(37, '2022-04-12', 'Pemasukan', 14, 250000, 'http://sukajaya-sukabumi.desa.id', 1),
(38, '2022-04-14', 'Pemasukan', 14, 250000, 'https://sidodadi-pringsewu.desa.id', 1),
(39, '2022-06-06', 'Pemasukan', 1, 50000000, 'uhgjkhkl', 1),
(40, '2022-06-06', 'Pemasukan', 1, 50000000, 'uhgjkhkl', 1),
(41, '2022-06-06', 'Pemasukan', 17, 2500000, 'Sewa Tenda Tempat Bpk Jaiman', 1),
(42, '2022-06-06', 'Pemasukan', 17, 2500000, 'Sewa Tenda Tempat Bpk Jaiman', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_nama` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_foto` varchar(100) DEFAULT NULL,
  `user_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_nama`, `user_username`, `user_password`, `user_foto`, `user_level`) VALUES
(1, 'ezzam', 'admin', '0fcb94bf66b1a38cfe3fc77557f3ca0c', '482937136_avatar.png', 'administrator'),
(2, 'Rohmanudin', 'admin', '7303deda31da64a205ede624267c666f', '482937136_avatar.png', 'administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bank`
--
ALTER TABLE `bank`
  ADD PRIMARY KEY (`bank_id`);

--
-- Indexes for table `hutang`
--
ALTER TABLE `hutang`
  ADD PRIMARY KEY (`hutang_id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `piutang`
--
ALTER TABLE `piutang`
  ADD PRIMARY KEY (`piutang_id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`transaksi_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bank`
--
ALTER TABLE `bank`
  MODIFY `bank_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `hutang`
--
ALTER TABLE `hutang`
  MODIFY `hutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `piutang`
--
ALTER TABLE `piutang`
  MODIFY `piutang_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `transaksi_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
