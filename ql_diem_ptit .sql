-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2022 at 04:21 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ql_diem_ptit`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbldangkihoc`
--

CREATE TABLE `tbldangkihoc` (
  `idDangKiHoc` int(11) NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `idSinhVien` int(11) NOT NULL,
  `idMonHocKiHoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldangkihoc`
--

INSERT INTO `tbldangkihoc` (`idDangKiHoc`, `ghichu`, `idSinhVien`, `idMonHocKiHoc`) VALUES
(5, '', 1, 8),
(6, '', 1, 9),
(7, '', 1, 10),
(8, '', 1, 11),
(9, '', 1, 12),
(10, '', 1, 13),
(11, '', 1, 14);

-- --------------------------------------------------------

--
-- Table structure for table `tbldaudiem`
--

CREATE TABLE `tbldaudiem` (
  `idDauDiem` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `mota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbldaudiem`
--

INSERT INTO `tbldaudiem` (`idDauDiem`, `ten`, `mota`) VALUES
(1, 'Chuyên cần', ''),
(2, 'Kiểm tra', ''),
(3, 'Thực Hành', ''),
(4, 'Bài Tập', ''),
(5, 'Thi', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblhocki`
--

CREATE TABLE `tblhocki` (
  `idHocKi` int(11) NOT NULL,
  `ten` varchar(10) NOT NULL,
  `mota` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblhocki`
--

INSERT INTO `tblhocki` (`idHocKi`, `ten`, `mota`) VALUES
(1, 'Kỳ 1', ''),
(2, 'Kỳ 2', ''),
(3, 'Kỳ 3', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblketqua`
--

CREATE TABLE `tblketqua` (
  `idKetQua` int(11) NOT NULL,
  `diem` float NOT NULL,
  `ghichu` varchar(255) DEFAULT NULL,
  `idDangKiHoc` int(11) NOT NULL,
  `idMonHocDauDiem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblketqua`
--

INSERT INTO `tblketqua` (`idKetQua`, `diem`, `ghichu`, `idDangKiHoc`, `idMonHocDauDiem`) VALUES
(19, 10, '', 5, 23),
(20, 7, '', 5, 24),
(21, 8, '', 5, 25),
(22, 9, '', 5, 26),
(23, 10, '', 6, 19),
(24, 8, '', 6, 20),
(25, 8, '', 6, 21),
(26, 8.5, '', 6, 22),
(27, 5, '', 7, 27),
(28, 10, '', 7, 28),
(29, 5, '', 7, 29),
(30, 8.5, '', 7, 30),
(31, 9, '', 8, 31),
(32, 7, '', 8, 32),
(33, 8, '', 8, 33),
(34, 10, '', 9, 34),
(35, 6, '', 9, 35),
(36, 5, '', 9, 36),
(37, 5, '', 9, 37),
(38, 7, '', 10, 38),
(39, 5, '', 10, 39),
(40, 7, '', 10, 40),
(41, 10, '', 11, 41),
(42, 3.5, '', 11, 42),
(43, 10, '', 11, 43),
(44, 3, '', 11, 44);

-- --------------------------------------------------------

--
-- Table structure for table `tblkihoc`
--

CREATE TABLE `tblkihoc` (
  `idKiHoc` int(11) NOT NULL,
  `danghoc` int(11) NOT NULL,
  `dangdk` int(11) NOT NULL,
  `idNamHoc` int(11) NOT NULL,
  `idHocKi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblkihoc`
--

INSERT INTO `tblkihoc` (`idKiHoc`, `danghoc`, `dangdk`, `idNamHoc`, `idHocKi`) VALUES
(11, 1, 1, 1, 1),
(12, 1, 1, 1, 2),
(13, 1, 1, 1, 3),
(14, 1, 1, 2, 1),
(15, 1, 1, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tblmonhoc`
--

CREATE TABLE `tblmonhoc` (
  `idMonHoc` int(11) NOT NULL,
  `ten` varchar(255) NOT NULL,
  `maMH` varchar(255) NOT NULL,
  `soTC` int(10) NOT NULL,
  `mota` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmonhoc`
--

INSERT INTO `tblmonhoc` (`idMonHoc`, `ten`, `maMH`, `soTC`, `mota`) VALUES
(1, 'Giải tích 1', 'BAS1203', 3, ''),
(2, 'Đại số', 'BAS1201', 3, ''),
(3, 'Tin học cơ sở 1', 'INT1154', 2, ''),
(4, 'Những nguyên lý cơ bản của Chủ nghĩa Mác Lênin 1', 'BAS1111', 2, ''),
(5, 'Giải tích 2', 'BAS1204', 3, ''),
(6, 'Những nguyên lý cơ bản của Chủ nghĩa Mác Lênin 2', 'BAS1112', 3, ''),
(7, 'Tin học cơ sở 2', 'INT1155', 2, ''),
(8, 'Xác suất thống kê', 'BAS1226', 2, ''),
(9, 'Vật lý 1 và thí nghiệm', 'BAS1224', 4, ''),
(10, 'Kỹ thuật số', 'ELE1433', 2, ''),
(11, 'Ngôn ngữ lập trình C++', 'INT1339', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `tblmonhocdaudiem`
--

CREATE TABLE `tblmonhocdaudiem` (
  `idMonHocDauDiem` int(11) NOT NULL,
  `title` float NOT NULL,
  `idMonHoc` int(11) NOT NULL,
  `idDauDiem` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmonhocdaudiem`
--

INSERT INTO `tblmonhocdaudiem` (`idMonHocDauDiem`, `title`, `idMonHoc`, `idDauDiem`) VALUES
(19, 0.1, 2, 1),
(20, 0.1, 2, 2),
(21, 0.1, 2, 4),
(22, 0.7, 2, 5),
(23, 0.1, 1, 1),
(24, 0.1, 1, 2),
(25, 0.1, 1, 4),
(26, 0.7, 1, 5),
(27, 0.1, 3, 1),
(28, 0.1, 3, 2),
(29, 0.1, 3, 3),
(30, 0.7, 3, 5),
(31, 0.1, 4, 1),
(32, 0.2, 4, 2),
(33, 0.7, 4, 5),
(34, 0.1, 5, 1),
(35, 0.1, 5, 2),
(36, 0.1, 5, 4),
(37, 0.7, 5, 5),
(38, 0.1, 6, 1),
(39, 0.2, 6, 2),
(40, 0.7, 6, 5),
(41, 0.1, 7, 1),
(42, 0.1, 7, 2),
(43, 0.1, 7, 3),
(44, 0.7, 7, 5),
(45, 0.1, 8, 1),
(46, 0.1, 8, 2),
(47, 0.1, 8, 4),
(48, 0.7, 8, 5),
(49, 0.1, 9, 1),
(50, 0.1, 9, 2),
(51, 0.2, 9, 3),
(52, 0.6, 9, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tblmonhockihoc`
--

CREATE TABLE `tblmonhockihoc` (
  `idMonHocKiHoc` int(11) NOT NULL,
  `idMonHoc` int(11) NOT NULL,
  `idKiHoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblmonhockihoc`
--

INSERT INTO `tblmonhockihoc` (`idMonHocKiHoc`, `idMonHoc`, `idKiHoc`) VALUES
(8, 1, 11),
(9, 2, 11),
(10, 3, 11),
(11, 4, 11),
(12, 5, 12),
(13, 6, 12),
(14, 7, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tblnamhoc`
--

CREATE TABLE `tblnamhoc` (
  `idNamHoc` int(11) NOT NULL,
  `ten` varchar(25) NOT NULL,
  `mota` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblnamhoc`
--

INSERT INTO `tblnamhoc` (`idNamHoc`, `ten`, `mota`) VALUES
(1, '2018-2019', ''),
(2, '2019-2020', ''),
(3, '2020-2021', ''),
(4, '2021-2022', ''),
(5, '2022-2023', ''),
(6, '2023-2024', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblsinhvien`
--

CREATE TABLE `tblsinhvien` (
  `idSinhVien` int(11) NOT NULL,
  `maSV` varchar(15) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tblsinhvien`
--

INSERT INTO `tblsinhvien` (`idSinhVien`, `maSV`, `ten`, `username`, `password`, `email`, `phone`, `address`) VALUES
(1, 'B18DCCN617', 'Nguyễn Ngọc Thành', 'admin', 'admin', 'admin@gmail.com', '0123456789', 'BG'),
(2, 'B18DCCN618', 'Nguyễn Văn Khánh', '1', '1', '1@gmail.com', '0123456789', 'BG'),
(3, 'B18DCCN619', 'Lê Thị Nhàn', '2', '2', '2@gmail.com', '0123456789', 'HN'),
(4, 'B18DCCN122', 'Phạm Đức Minh', '3', '3', '3@gmail.com', '0123456789', 'HB'),
(5, 'B18DCCN517', 'Ngô Quốc Sang', '4', '4', '4@gmail.com', '0123456789', 'TN');

-- --------------------------------------------------------

--
-- Stand-in structure for view `testview`
-- (See below for the actual view)
--
CREATE TABLE `testview` (
`idSinhVien` int(11)
,`maSV` varchar(15)
,`fullname` varchar(50)
,`idDangKiHoc` int(11)
,`idMonHocKiHoc` int(11)
,`idMonHoc` int(11)
,`idKiHoc` int(11)
,`danghoc` int(11)
,`idNamHoc` int(11)
,`idHocKi` int(11)
,`tenhocky` varchar(10)
,`namhoc` varchar(25)
,`monhoc` varchar(255)
,`soTC` int(10)
,`idMonHocDauDiem` int(11)
,`title` float
,`idDauDiem` int(11)
,`tendaudiem` varchar(255)
,`idKetQua` int(11)
,`diem` float
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `viewall`
-- (See below for the actual view)
--
CREATE TABLE `viewall` (
`idSinhVien` int(11)
,`maSV` varchar(15)
,`fullname` varchar(50)
,`idDangKiHoc` int(11)
,`idMonHocKiHoc` int(11)
,`idMonHoc` int(11)
,`idKiHoc` int(11)
,`danghoc` int(11)
,`idNamHoc` int(11)
,`idHocKi` int(11)
,`tenhocky` varchar(10)
,`namhoc` varchar(25)
,`maMH` varchar(255)
,`monhoc` varchar(255)
,`soTC` int(10)
,`idMonHocDauDiem` int(11)
,`title` float
,`idDauDiem` int(11)
,`tendaudiem` varchar(255)
,`idKetQua` int(11)
,`diem` float
);

-- --------------------------------------------------------

--
-- Structure for view `testview`
--
DROP TABLE IF EXISTS `testview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `testview`  AS SELECT `tblsinhvien`.`idSinhVien` AS `idSinhVien`, `tblsinhvien`.`maSV` AS `maSV`, `tblsinhvien`.`ten` AS `fullname`, `tbldangkihoc`.`idDangKiHoc` AS `idDangKiHoc`, `tblmonhockihoc`.`idMonHocKiHoc` AS `idMonHocKiHoc`, `tblmonhoc`.`idMonHoc` AS `idMonHoc`, `tblkihoc`.`idKiHoc` AS `idKiHoc`, `tblkihoc`.`danghoc` AS `danghoc`, `tblnamhoc`.`idNamHoc` AS `idNamHoc`, `tblhocki`.`idHocKi` AS `idHocKi`, `tblhocki`.`ten` AS `tenhocky`, `tblnamhoc`.`ten` AS `namhoc`, `tblmonhoc`.`ten` AS `monhoc`, `tblmonhoc`.`soTC` AS `soTC`, `tblmonhocdaudiem`.`idMonHocDauDiem` AS `idMonHocDauDiem`, `tblmonhocdaudiem`.`title` AS `title`, `tbldaudiem`.`idDauDiem` AS `idDauDiem`, `tbldaudiem`.`ten` AS `tendaudiem`, `tblketqua`.`idKetQua` AS `idKetQua`, `tblketqua`.`diem` AS `diem` FROM (((((((((`tblsinhvien` join `tblnamhoc`) join `tblmonhoc`) join `tbldaudiem`) join `tblhocki`) join `tblkihoc` on(`tblnamhoc`.`idNamHoc` = `tblkihoc`.`idNamHoc` and `tblhocki`.`idHocKi` = `tblkihoc`.`idHocKi`)) join `tblmonhockihoc` on(`tblmonhoc`.`idMonHoc` = `tblmonhockihoc`.`idMonHoc` and `tblkihoc`.`idKiHoc` = `tblmonhockihoc`.`idKiHoc`)) join `tbldangkihoc` on(`tbldangkihoc`.`idSinhVien` = `tblsinhvien`.`idSinhVien` and `tbldangkihoc`.`idMonHocKiHoc` = `tblmonhockihoc`.`idMonHocKiHoc`)) join `tblmonhocdaudiem` on(`tblmonhocdaudiem`.`idMonHoc` = `tblmonhoc`.`idMonHoc` and `tbldaudiem`.`idDauDiem` = `tblmonhocdaudiem`.`idDauDiem`)) join `tblketqua` on(`tbldangkihoc`.`idDangKiHoc` = `tblketqua`.`idDangKiHoc` and `tblmonhocdaudiem`.`idMonHocDauDiem` = `tblketqua`.`idMonHocDauDiem`)) ;

-- --------------------------------------------------------

--
-- Structure for view `viewall`
--
DROP TABLE IF EXISTS `viewall`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `viewall`  AS SELECT `tblsinhvien`.`idSinhVien` AS `idSinhVien`, `tblsinhvien`.`maSV` AS `maSV`, `tblsinhvien`.`ten` AS `fullname`, `tbldangkihoc`.`idDangKiHoc` AS `idDangKiHoc`, `tblmonhockihoc`.`idMonHocKiHoc` AS `idMonHocKiHoc`, `tblmonhoc`.`idMonHoc` AS `idMonHoc`, `tblkihoc`.`idKiHoc` AS `idKiHoc`, `tblkihoc`.`danghoc` AS `danghoc`, `tblnamhoc`.`idNamHoc` AS `idNamHoc`, `tblhocki`.`idHocKi` AS `idHocKi`, `tblhocki`.`ten` AS `tenhocky`, `tblnamhoc`.`ten` AS `namhoc`, `tblmonhoc`.`maMH` AS `maMH`, `tblmonhoc`.`ten` AS `monhoc`, `tblmonhoc`.`soTC` AS `soTC`, `tblmonhocdaudiem`.`idMonHocDauDiem` AS `idMonHocDauDiem`, `tblmonhocdaudiem`.`title` AS `title`, `tbldaudiem`.`idDauDiem` AS `idDauDiem`, `tbldaudiem`.`ten` AS `tendaudiem`, `tblketqua`.`idKetQua` AS `idKetQua`, `tblketqua`.`diem` AS `diem` FROM (((((((((`tblsinhvien` join `tblnamhoc`) join `tblmonhoc`) join `tbldaudiem`) join `tblhocki`) join `tblkihoc` on(`tblnamhoc`.`idNamHoc` = `tblkihoc`.`idNamHoc` and `tblhocki`.`idHocKi` = `tblkihoc`.`idHocKi`)) join `tblmonhockihoc` on(`tblmonhoc`.`idMonHoc` = `tblmonhockihoc`.`idMonHoc` and `tblkihoc`.`idKiHoc` = `tblmonhockihoc`.`idKiHoc`)) join `tbldangkihoc` on(`tbldangkihoc`.`idSinhVien` = `tblsinhvien`.`idSinhVien` and `tbldangkihoc`.`idMonHocKiHoc` = `tblmonhockihoc`.`idMonHocKiHoc`)) join `tblmonhocdaudiem` on(`tblmonhocdaudiem`.`idMonHoc` = `tblmonhoc`.`idMonHoc` and `tbldaudiem`.`idDauDiem` = `tblmonhocdaudiem`.`idDauDiem`)) join `tblketqua` on(`tbldangkihoc`.`idDangKiHoc` = `tblketqua`.`idDangKiHoc` and `tblmonhocdaudiem`.`idMonHocDauDiem` = `tblketqua`.`idMonHocDauDiem`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbldangkihoc`
--
ALTER TABLE `tbldangkihoc`
  ADD PRIMARY KEY (`idDangKiHoc`),
  ADD KEY `idSinhVien` (`idSinhVien`),
  ADD KEY `idMonHocKiHoc` (`idMonHocKiHoc`);

--
-- Indexes for table `tbldaudiem`
--
ALTER TABLE `tbldaudiem`
  ADD PRIMARY KEY (`idDauDiem`);

--
-- Indexes for table `tblhocki`
--
ALTER TABLE `tblhocki`
  ADD PRIMARY KEY (`idHocKi`);

--
-- Indexes for table `tblketqua`
--
ALTER TABLE `tblketqua`
  ADD PRIMARY KEY (`idKetQua`),
  ADD KEY `idDangKiHoc` (`idDangKiHoc`),
  ADD KEY `idMonHocDauDiem` (`idMonHocDauDiem`);

--
-- Indexes for table `tblkihoc`
--
ALTER TABLE `tblkihoc`
  ADD PRIMARY KEY (`idKiHoc`),
  ADD KEY `idHocKi` (`idHocKi`),
  ADD KEY `idNamHoc` (`idNamHoc`);

--
-- Indexes for table `tblmonhoc`
--
ALTER TABLE `tblmonhoc`
  ADD PRIMARY KEY (`idMonHoc`);

--
-- Indexes for table `tblmonhocdaudiem`
--
ALTER TABLE `tblmonhocdaudiem`
  ADD PRIMARY KEY (`idMonHocDauDiem`),
  ADD KEY `idMonHoc` (`idMonHoc`),
  ADD KEY `idDauDiem` (`idDauDiem`);

--
-- Indexes for table `tblmonhockihoc`
--
ALTER TABLE `tblmonhockihoc`
  ADD PRIMARY KEY (`idMonHocKiHoc`),
  ADD KEY `idKiHoc` (`idKiHoc`),
  ADD KEY `idMonHoc` (`idMonHoc`);

--
-- Indexes for table `tblnamhoc`
--
ALTER TABLE `tblnamhoc`
  ADD PRIMARY KEY (`idNamHoc`);

--
-- Indexes for table `tblsinhvien`
--
ALTER TABLE `tblsinhvien`
  ADD PRIMARY KEY (`idSinhVien`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbldangkihoc`
--
ALTER TABLE `tbldangkihoc`
  MODIFY `idDangKiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbldaudiem`
--
ALTER TABLE `tbldaudiem`
  MODIFY `idDauDiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblhocki`
--
ALTER TABLE `tblhocki`
  MODIFY `idHocKi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblketqua`
--
ALTER TABLE `tblketqua`
  MODIFY `idKetQua` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tblkihoc`
--
ALTER TABLE `tblkihoc`
  MODIFY `idKiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblmonhoc`
--
ALTER TABLE `tblmonhoc`
  MODIFY `idMonHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tblmonhocdaudiem`
--
ALTER TABLE `tblmonhocdaudiem`
  MODIFY `idMonHocDauDiem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tblmonhockihoc`
--
ALTER TABLE `tblmonhockihoc`
  MODIFY `idMonHocKiHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tblnamhoc`
--
ALTER TABLE `tblnamhoc`
  MODIFY `idNamHoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblsinhvien`
--
ALTER TABLE `tblsinhvien`
  MODIFY `idSinhVien` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbldangkihoc`
--
ALTER TABLE `tbldangkihoc`
  ADD CONSTRAINT `tbldangkihoc_ibfk_1` FOREIGN KEY (`idSinhVien`) REFERENCES `tblsinhvien` (`idSinhVien`),
  ADD CONSTRAINT `tbldangkihoc_ibfk_2` FOREIGN KEY (`idMonHocKiHoc`) REFERENCES `tblmonhockihoc` (`idMonHocKiHoc`);

--
-- Constraints for table `tblketqua`
--
ALTER TABLE `tblketqua`
  ADD CONSTRAINT `tblketqua_ibfk_1` FOREIGN KEY (`idDangKiHoc`) REFERENCES `tbldangkihoc` (`idDangKiHoc`),
  ADD CONSTRAINT `tblketqua_ibfk_2` FOREIGN KEY (`idMonHocDauDiem`) REFERENCES `tblmonhocdaudiem` (`idMonHocDauDiem`);

--
-- Constraints for table `tblkihoc`
--
ALTER TABLE `tblkihoc`
  ADD CONSTRAINT `tblkihoc_ibfk_1` FOREIGN KEY (`idHocKi`) REFERENCES `tblhocki` (`idHocKi`),
  ADD CONSTRAINT `tblkihoc_ibfk_2` FOREIGN KEY (`idNamHoc`) REFERENCES `tblnamhoc` (`idNamHoc`);

--
-- Constraints for table `tblmonhocdaudiem`
--
ALTER TABLE `tblmonhocdaudiem`
  ADD CONSTRAINT `tblmonhocdaudiem_ibfk_1` FOREIGN KEY (`idMonHoc`) REFERENCES `tblmonhoc` (`idMonHoc`),
  ADD CONSTRAINT `tblmonhocdaudiem_ibfk_2` FOREIGN KEY (`idDauDiem`) REFERENCES `tbldaudiem` (`idDauDiem`);

--
-- Constraints for table `tblmonhockihoc`
--
ALTER TABLE `tblmonhockihoc`
  ADD CONSTRAINT `tblmonhockihoc_ibfk_1` FOREIGN KEY (`idKiHoc`) REFERENCES `tblkihoc` (`idKiHoc`),
  ADD CONSTRAINT `tblmonhockihoc_ibfk_2` FOREIGN KEY (`idMonHoc`) REFERENCES `tblmonhoc` (`idMonHoc`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
