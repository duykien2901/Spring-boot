-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2021 at 09:31 AM
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
-- Database: `quan_ly_nhan_khau`
--

-- --------------------------------------------------------

--
-- Table structure for table `dong_gop`
--

CREATE TABLE `dong_gop` (
  `ID` int(11) NOT NULL,
  `ten_dong_gop` varchar(100) NOT NULL,
  `ngay_bat_dau` varchar(100) NOT NULL,
  `ngay_ket_thuc` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `dong_gop`
--

INSERT INTO `dong_gop` (`ID`, `ten_dong_gop`, `ngay_bat_dau`, `ngay_ket_thuc`) VALUES
(1, 'Lũ lụt', '02/12/2020', '09/12/2020'),
(3, 'ủng hộ miền trung', '01/12/2020', '30/12/2020'),
(4, 'Covid 20', '01/12/2020', '10/12/2020'),
(5, 'thiên tai', '01/06/2020', '15/12/2020'),
(6, 'người nghèo', '02/12/2020', '23/12/2020'),
(7, 'thiên tai lũ lụt ', '01/06/2020', '15/12/2020'),
(8, 'thiên tai', '01/06/2020', '15/12/2020'),
(9, 'thiên tai', '01/06/2020', '15/12/2020'),
(10, 'kk', 'kk', 'kk'),
(11, 'kk', 'kk', 'kk'),
(12, 'thiên tai', '01/06/2020', '15/12/2020'),
(13, 'thiên tai', '01/06/2020', '15/12/2020'),
(14, 'thiên tai', '01/06/2020', '15/12/2020'),
(15, 'haha', '01/06/2020', '15/12/2020'),
(16, 'kakakaka', '01/06/2020', '15/12/2020'),
(17, 'covid', '01/06/2021', '15/12/2020'),
(18, 'covid', '01/06/2021', '15/12/2020'),
(19, 'chong covid', '01/06/2021', '15/12/2020'),
(20, 'chong covid', '01/06/2021', '15/12/2020'),
(21, 'nguoi ngheo', '01/06/2021', '15/12/2020'),
(22, 'dich ta', '01/06/2021', '15/12/2020'),
(23, 'dich ta chau phi', '01/06/2021', '15/12/2020'),
(24, 'dich ta chau phi 1', '01/06/2021', '15/12/2020'),
(25, 'dich ta chau phi 2', '01/06/2021', '15/12/2020'),
(26, 'dich ta chau phi 2', '01/06/2021', '15/12/2020'),
(27, 'dich ta chau phi 3', '01/06/2021', '15/12/2020'),
(28, 'dich ta chau phi 3', '01/06/2021', '15/12/2020'),
(29, 'thiên tai ', '01/06/2020', '15/12/2020'),
(30, 'thiên tai ', '01/06/2020', '15/12/2020'),
(31, 'thiên tai ', '01/06/2020', '15/12/2020'),
(32, 'dich ta chau phi 4', '01/06/2021', '15/12/2020');

-- --------------------------------------------------------

--
-- Table structure for table `ho_khau`
--

CREATE TABLE `ho_khau` (
  `ID` int(11) NOT NULL,
  `ten_chu_ho` varchar(100) NOT NULL,
  `so_nhan_khau` int(5) NOT NULL,
  `idhk` int(11) NOT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ho_khau`
--

INSERT INTO `ho_khau` (`ID`, `ten_chu_ho`, `so_nhan_khau`, `idhk`, `tien`) VALUES
(1, 'Nguyễn Mạnh Cường', 4, 0, 0),
(2, 'Nguyễn Viết Chính', 3, 0, 0),
(3, 'Nguyễn Đào Duy Kiên', 1, 0, 0),
(4, 'Hoàng Hải Đăng', 2, 0, 0),
(5, 'Lê Duy Tuân', 2, 0, 0),
(6, 'Nguyễn Minh Quân', 3, 0, 0),
(7, 'Phạm Thành Lương', 4, 0, 0),
(8, 'Quế Ngọc Hải', 3, 0, 0),
(9, 'Trần Đình Trọng', 5, 0, 0),
(10, 'Đặng Văn Lâm', 2, 0, 0),
(11, 'Đoàn Văn Hậu', 3, 0, 0),
(12, 'Vũ Văn Thanh', 2, 0, 0),
(13, 'Đỗ Hùng Dũng', 3, 0, 0),
(14, 'Bùi Tiến Dũng', 2, 0, 0),
(15, 'Nguyễn Quang Hải', 1, 0, 0),
(16, 'Nguyễn Tuấn Anh', 2, 0, 0),
(17, 'Lương Xuân Trường', 4, 0, 0),
(18, 'Nguyễn Hoàng Đức', 3, 0, 0),
(19, 'Nguyễn Công Phượng', 2, 0, 0),
(20, 'Hà Đức Chinh', 2, 0, 0),
(21, 'Đỗ Duy Mạnh', 3, 0, 0),
(22, 'Nguyễn Văn Toàn', 2, 0, 0),
(23, 'kien', 5, 0, 0),
(23, 'kien', 4, 0, 0),
(0, 'Kien', 1, 2, 3),
(24, 'K', 4, 0, 0),
(0, 'K', 4, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `khoan_thu`
--

CREATE TABLE `khoan_thu` (
  `ID` int(11) NOT NULL,
  `ten_khoan_thu` varchar(100) NOT NULL,
  `ngay_bat_dau` varchar(100) NOT NULL,
  `ngay_ket_thuc` varchar(100) NOT NULL,
  `muc_thu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `khoan_thu`
--

INSERT INTO `khoan_thu` (`ID`, `ten_khoan_thu`, `ngay_bat_dau`, `ngay_ket_thuc`, `muc_thu`) VALUES
(4, 'Tiền Khuyến ', '9/12/2020', '10/12/2020', 50000),
(5, 'Thiên tai', '01/12/2020', '16/12/2020', 25000),
(6, 'KK', '02/12/2020', '17/12/2020', 20000),
(7, 'Y tế', '01/12/2020', '17/12/2020', 20000),
(8, 'Y tế', '01/12/2020', '10/12/2020', 20000),
(9, 'k', '01/12/2020', '11/12/2020', 20000),
(10, 'hahaa', '01/12/2020', '10/12/2020', 2000),
(11, 'tiền thuế', '01/12/2020', '24/12/2020', 2000000),
(12, 'tiền vệ sinh', '01/12/2020', '03/12/2020', 50000),
(13, 'tiền rác', '01/12/2020', '17/12/2020', 50000000);

-- --------------------------------------------------------

--
-- Table structure for table `quan_ly_dong_gop`
--

CREATE TABLE `quan_ly_dong_gop` (
  `id_donggop` int(11) NOT NULL,
  `id_hokhau` int(11) NOT NULL,
  `so_tien_dong` int(11) DEFAULT NULL,
  `id` int(11) NOT NULL,
  `idhk` int(11) NOT NULL,
  `sonk` int(11) NOT NULL,
  `tenhk` varchar(255) DEFAULT NULL,
  `tien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quan_ly_dong_gop`
--

INSERT INTO `quan_ly_dong_gop` (`id_donggop`, `id_hokhau`, `so_tien_dong`, `id`, `idhk`, `sonk`, `tenhk`, `tien`) VALUES
(1, 1, 20, 0, 0, 0, NULL, 0),
(1, 2, 200, 0, 0, 0, NULL, 0),
(1, 3, 0, 0, 0, 0, NULL, 0),
(1, 4, 0, 0, 0, 0, NULL, 0),
(1, 5, 20000, 0, 0, 0, NULL, 0),
(1, 6, 0, 0, 0, 0, NULL, 0),
(1, 7, 0, 0, 0, 0, NULL, 0),
(1, 8, 0, 0, 0, 0, NULL, 0),
(1, 9, 0, 0, 0, 0, NULL, 0),
(1, 10, 0, 0, 0, 0, NULL, 0),
(1, 11, 0, 0, 0, 0, NULL, 0),
(1, 12, 0, 0, 0, 0, NULL, 0),
(1, 13, 0, 0, 0, 0, NULL, 0),
(1, 14, 0, 0, 0, 0, NULL, 0),
(1, 15, 0, 0, 0, 0, NULL, 0),
(1, 16, 0, 0, 0, 0, NULL, 0),
(1, 17, 0, 0, 0, 0, NULL, 0),
(1, 18, 0, 0, 0, 0, NULL, 0),
(1, 19, 0, 0, 0, 0, NULL, 0),
(1, 20, 0, 0, 0, 0, NULL, 0),
(1, 21, 0, 0, 0, 0, NULL, 0),
(1, 22, 0, 0, 0, 0, NULL, 0),
(3, 1, 0, 0, 0, 0, NULL, 0),
(3, 2, 10000, 0, 0, 0, NULL, 0),
(3, 3, 20000, 0, 0, 0, NULL, 0),
(3, 4, 200000, 0, 0, 0, NULL, 0),
(3, 5, 0, 0, 0, 0, NULL, 0),
(3, 6, 0, 0, 0, 0, NULL, 0),
(3, 7, 0, 0, 0, 0, NULL, 0),
(3, 8, 0, 0, 0, 0, NULL, 0),
(3, 9, 0, 0, 0, 0, NULL, 0),
(3, 10, 0, 0, 0, 0, NULL, 0),
(3, 11, 0, 0, 0, 0, NULL, 0),
(3, 12, 0, 0, 0, 0, NULL, 0),
(3, 13, 0, 0, 0, 0, NULL, 0),
(3, 14, 0, 0, 0, 0, NULL, 0),
(3, 15, 0, 0, 0, 0, NULL, 0),
(3, 16, 0, 0, 0, 0, NULL, 0),
(3, 17, 0, 0, 0, 0, NULL, 0),
(3, 18, 0, 0, 0, 0, NULL, 0),
(3, 19, 0, 0, 0, 0, NULL, 0),
(3, 20, 0, 0, 0, 0, NULL, 0),
(3, 21, 0, 0, 0, 0, NULL, 0),
(3, 22, 0, 0, 0, 0, NULL, 0),
(4, 1, 4, 0, 0, 0, NULL, 0),
(4, 2, 3, 0, 0, 0, NULL, 0),
(4, 3, 1, 0, 0, 0, NULL, 0),
(4, 4, 2, 0, 0, 0, NULL, 0),
(4, 5, 2, 0, 0, 0, NULL, 0),
(4, 6, 3, 0, 0, 0, NULL, 0),
(4, 7, 4, 0, 0, 0, NULL, 0),
(4, 8, 3, 0, 0, 0, NULL, 0),
(4, 9, 5, 0, 0, 0, NULL, 0),
(4, 10, 2, 0, 0, 0, NULL, 0),
(4, 11, 3, 0, 0, 0, NULL, 0),
(4, 12, 2, 0, 0, 0, NULL, 0),
(4, 13, 3, 0, 0, 0, NULL, 0),
(4, 14, 2, 0, 0, 0, NULL, 0),
(4, 15, 1, 0, 0, 0, NULL, 0),
(4, 16, 2, 0, 0, 0, NULL, 0),
(4, 17, 4, 0, 0, 0, NULL, 0),
(4, 18, 3, 0, 0, 0, NULL, 0),
(4, 19, 2, 0, 0, 0, NULL, 0),
(4, 20, 2, 0, 0, 0, NULL, 0),
(4, 21, 3, 0, 0, 0, NULL, 0),
(4, 22, 2, 0, 0, 0, NULL, 0),
(6, 1, 0, 0, 0, 0, NULL, 0),
(6, 2, 0, 0, 0, 0, NULL, 0),
(6, 3, 0, 0, 0, 0, NULL, 0),
(6, 4, 0, 0, 0, 0, NULL, 0),
(6, 5, 0, 0, 0, 0, NULL, 0),
(6, 6, 0, 0, 0, 0, NULL, 0),
(6, 7, 0, 0, 0, 0, NULL, 0),
(6, 8, 0, 0, 0, 0, NULL, 0),
(6, 9, 0, 0, 0, 0, NULL, 0),
(6, 10, 0, 0, 0, 0, NULL, 0),
(6, 11, 0, 0, 0, 0, NULL, 0),
(6, 12, 0, 0, 0, 0, NULL, 0),
(6, 13, 0, 0, 0, 0, NULL, 0),
(6, 14, 0, 0, 0, 0, NULL, 0),
(6, 15, 0, 0, 0, 0, NULL, 0),
(6, 16, 0, 0, 0, 0, NULL, 0),
(6, 17, 0, 0, 0, 0, NULL, 0),
(6, 18, 0, 0, 0, 0, NULL, 0),
(6, 19, 0, 0, 0, 0, NULL, 0),
(6, 20, 0, 0, 0, 0, NULL, 0),
(6, 21, 0, 0, 0, 0, NULL, 0),
(6, 22, 0, 0, 0, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `quan_ly_thu_phi`
--

CREATE TABLE `quan_ly_thu_phi` (
  `id_khoanthu` int(11) NOT NULL,
  `id_hokhau` int(11) NOT NULL,
  `so_tien_thu` int(11) NOT NULL,
  `trang_thai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `quan_ly_thu_phi`
--

INSERT INTO `quan_ly_thu_phi` (`id_khoanthu`, `id_hokhau`, `so_tien_thu`, `trang_thai`) VALUES
(4, 1, 800000, 1),
(4, 2, 600000, 1),
(4, 3, 200000, 1),
(4, 4, 400000, 1),
(4, 5, 400000, 1),
(4, 6, 600000, 1),
(4, 7, 800000, 1),
(4, 8, 600000, 0),
(4, 9, 1000000, 0),
(4, 10, 400000, 0),
(4, 11, 600000, 0),
(4, 12, 400000, 0),
(4, 13, 600000, 0),
(4, 14, 400000, 0),
(4, 15, 200000, 0),
(4, 16, 400000, 0),
(4, 17, 800000, 0),
(4, 18, 600000, 0),
(4, 19, 400000, 0),
(4, 20, 400000, 0),
(4, 21, 600000, 0),
(4, 22, 400000, 0),
(5, 1, 80000, 1),
(5, 2, 60000, 0),
(5, 3, 20000, 1),
(5, 4, 40000, 0),
(5, 5, 40000, 0),
(5, 6, 60000, 0),
(5, 7, 80000, 0),
(5, 8, 60000, 0),
(5, 9, 100000, 0),
(5, 10, 40000, 0),
(5, 11, 60000, 0),
(5, 12, 40000, 0),
(5, 13, 60000, 0),
(5, 14, 40000, 0),
(5, 15, 20000, 0),
(5, 16, 40000, 0),
(5, 17, 80000, 0),
(5, 18, 60000, 0),
(5, 19, 40000, 0),
(5, 20, 40000, 0),
(5, 21, 60000, 0),
(5, 22, 40000, 0),
(6, 1, 8000, 0),
(6, 2, 6000, 1),
(6, 3, 2000, 0),
(6, 4, 4000, 0),
(6, 5, 4000, 0),
(6, 6, 6000, 0),
(6, 7, 8000, 0),
(6, 8, 6000, 0),
(6, 9, 10000, 0),
(6, 10, 4000, 0),
(6, 11, 6000, 0),
(6, 12, 4000, 0),
(6, 13, 6000, 0),
(6, 14, 4000, 0),
(6, 15, 2000, 0),
(6, 16, 4000, 0),
(6, 17, 8000, 0),
(6, 18, 6000, 0),
(6, 19, 4000, 0),
(6, 20, 4000, 0),
(6, 21, 6000, 0),
(6, 22, 4000, 0),
(7, 1, 80000, 0),
(7, 2, 60000, 0),
(7, 3, 20000, 0),
(7, 4, 40000, 0),
(7, 5, 40000, 0),
(7, 6, 60000, 0),
(7, 7, 80000, 0),
(7, 8, 60000, 0),
(7, 9, 100000, 0),
(7, 10, 40000, 0),
(7, 11, 60000, 0),
(7, 12, 40000, 0),
(7, 13, 60000, 0),
(7, 14, 40000, 0),
(7, 15, 20000, 0),
(7, 16, 40000, 0),
(7, 17, 80000, 0),
(7, 18, 60000, 0),
(7, 19, 40000, 0),
(7, 20, 40000, 0),
(7, 21, 60000, 0),
(7, 22, 40000, 0),
(7, 1, 80000, 0),
(7, 2, 60000, 0),
(7, 3, 20000, 0),
(7, 4, 40000, 0),
(7, 5, 40000, 0),
(7, 6, 60000, 0),
(7, 7, 80000, 0),
(7, 8, 60000, 0),
(7, 9, 100000, 0),
(7, 10, 40000, 0),
(7, 11, 60000, 0),
(7, 12, 40000, 0),
(7, 13, 60000, 0),
(7, 14, 40000, 0),
(7, 15, 20000, 0),
(7, 16, 40000, 0),
(7, 17, 80000, 0),
(7, 18, 60000, 0),
(7, 19, 40000, 0),
(7, 20, 40000, 0),
(7, 21, 60000, 0),
(7, 22, 40000, 0),
(9, 1, 80000, 0),
(9, 2, 60000, 0),
(9, 3, 20000, 0),
(9, 4, 40000, 0),
(9, 5, 40000, 0),
(9, 6, 60000, 0),
(9, 7, 80000, 0),
(9, 8, 60000, 0),
(9, 9, 100000, 0),
(9, 10, 40000, 0),
(9, 11, 60000, 0),
(9, 12, 40000, 0),
(9, 13, 60000, 0),
(9, 14, 40000, 0),
(9, 15, 20000, 0),
(9, 16, 40000, 0),
(9, 17, 80000, 0),
(9, 18, 60000, 0),
(9, 19, 40000, 0),
(9, 20, 40000, 0),
(9, 21, 60000, 0),
(9, 22, 40000, 0),
(10, 1, 8000, 0),
(10, 2, 6000, 0),
(10, 3, 2000, 0),
(10, 4, 4000, 0),
(10, 5, 4000, 0),
(10, 6, 6000, 0),
(10, 7, 8000, 0),
(10, 8, 6000, 0),
(10, 9, 10000, 0),
(10, 10, 4000, 0),
(10, 11, 6000, 0),
(10, 12, 4000, 0),
(10, 13, 6000, 0),
(10, 14, 4000, 0),
(10, 15, 2000, 0),
(10, 16, 4000, 0),
(10, 17, 8000, 0),
(10, 18, 6000, 0),
(10, 19, 4000, 0),
(10, 20, 4000, 0),
(10, 21, 6000, 0),
(10, 22, 4000, 0),
(11, 1, 8000000, 0),
(11, 2, 6000000, 0),
(11, 3, 2000000, 0),
(11, 4, 4000000, 0),
(11, 5, 4000000, 0),
(11, 6, 6000000, 0),
(11, 7, 8000000, 0),
(11, 8, 6000000, 0),
(11, 9, 10000000, 0),
(11, 10, 4000000, 0),
(11, 11, 6000000, 0),
(11, 12, 4000000, 0),
(11, 13, 6000000, 0),
(11, 14, 4000000, 0),
(11, 15, 2000000, 0),
(11, 16, 4000000, 0),
(11, 17, 8000000, 0),
(11, 18, 6000000, 0),
(11, 19, 4000000, 0),
(11, 20, 4000000, 0),
(11, 21, 6000000, 0),
(11, 22, 4000000, 0),
(12, 1, 200000, 0),
(12, 2, 150000, 0),
(12, 3, 50000, 0),
(12, 4, 100000, 0),
(12, 5, 100000, 0),
(12, 6, 150000, 0),
(12, 7, 200000, 0),
(12, 8, 150000, 0),
(12, 9, 250000, 0),
(12, 10, 100000, 0),
(12, 11, 150000, 0),
(12, 12, 100000, 0),
(12, 13, 150000, 0),
(12, 14, 100000, 0),
(12, 15, 50000, 0),
(12, 16, 100000, 0),
(12, 17, 200000, 0),
(12, 18, 150000, 0),
(12, 19, 100000, 0),
(12, 20, 100000, 0),
(12, 21, 150000, 0),
(12, 22, 100000, 0),
(13, 1, 200000000, 0),
(13, 2, 150000000, 0),
(13, 3, 50000000, 0),
(13, 4, 100000000, 0),
(13, 5, 100000000, 0),
(13, 6, 150000000, 0),
(13, 7, 200000000, 0),
(13, 8, 150000000, 0),
(13, 9, 250000000, 0),
(13, 10, 100000000, 0),
(13, 11, 150000000, 0),
(13, 12, 100000000, 0),
(13, 13, 150000000, 0),
(13, 14, 100000000, 0),
(13, 15, 50000000, 0),
(13, 16, 100000000, 0),
(13, 17, 200000000, 0),
(13, 18, 150000000, 0),
(13, 19, 100000000, 0),
(13, 20, 100000000, 0),
(13, 21, 150000000, 0),
(13, 22, 100000000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `test`
--

CREATE TABLE `test` (
  `id` int(11) NOT NULL,
  `name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `test`
--

INSERT INTO `test` (`id`, `name`) VALUES
(1, 'Kien');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `username` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'Admin', '123456'),
(35, 'Ha', '123456'),
(36, 'Haa', '123456'),
(38, 'Haaa', '$2a$10$z0ZaTdQ4mVRbo5.3ghl/7uzoWrJAg7PdBZFYgb8Z5wp2SJU9fz9dG'),
(39, 'Kien', '$2a$10$En1IdXTkeebscGCQmf0hbuLuK3LdUXfgzNWWmK8zG0jzQC34X.OEG'),
(41, 'kien1', '$2a$10$buGxXG00.OEDF9UFSfrVk.2PdFp7zZmfqaXWtOxwUyTLVrLmqMyha'),
(43, 'Kien12', '$2a$10$dsCiByHMsHT277U3sSEP4.jkqdhG1H5OtrHRjNYb56gO6layXrIfW');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dong_gop`
--
ALTER TABLE `dong_gop`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `khoan_thu`
--
ALTER TABLE `khoan_thu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `quan_ly_dong_gop`
--
ALTER TABLE `quan_ly_dong_gop`
  ADD PRIMARY KEY (`id_donggop`,`id_hokhau`),
  ADD KEY `id_hokhau` (`id_hokhau`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dong_gop`
--
ALTER TABLE `dong_gop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `khoan_thu`
--
ALTER TABLE `khoan_thu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `test`
--
ALTER TABLE `test`
  ADD CONSTRAINT `test_ibfk_1` FOREIGN KEY (`id`) REFERENCES `dong_gop` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
