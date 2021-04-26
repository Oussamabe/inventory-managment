-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 21, 2020 at 04:18 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sourcecodester_posdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `cat_id` int(11) NOT NULL,
  `cat_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`cat_id`, `cat_name`) VALUES
(1, 'Bahan Bangunan'),
(2, 'Peralatan Listrik'),
(3, 'Sambungan Pipa');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice`
--

CREATE TABLE `tbl_invoice` (
  `invoice_id` int(11) NOT NULL,
  `cashier_name` varchar(100) NOT NULL,
  `order_date` date NOT NULL,
  `time_order` varchar(50) NOT NULL,
  `total` float NOT NULL,
  `paid` float NOT NULL,
  `due` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoice`
--

INSERT INTO `tbl_invoice` (`invoice_id`, `cashier_name`, `order_date`, `time_order`, `total`, `paid`, `due`) VALUES
(34, 'Koko', '2019-10-26', '10:47', 440000, 450000, -10000),
(35, 'aji', '2019-11-04', '21:20', 440000, 450000, -10000),
(36, 'aji', '2019-11-04', '22:11', 290000, 300000, -10000),
(38, 'aji', '2019-11-05', '13:13', 380000, 500000, -120000),
(41, 'aji', '2019-11-26', '11:12', 320000, 330000, -10000),
(44, 'aji', '2019-11-26', '12:07', 285000, 300000, -15000),
(46, 'aji', '2019-11-27', '18:42', 412000, 415000, -3000),
(47, 'aji', '2019-12-01', '11:45', 190000, 200000, -10000),
(49, 'aji', '2019-12-02', '22:26', 22000, 23000, -1000),
(50, 'aji', '2019-12-02', '22:32', 520000, 600000, -80000),
(51, 'aji', '2019-12-03', '09:17', 88000, 90000, -2000),
(63, 'aji', '2019-12-03', '15:51', 66000, 200000, 66000),
(64, 'aji', '2019-12-03', '15:52', 66000, 66000, 0),
(65, 'aji', '2019-12-03', '15:52', 66000, 66000, 0),
(66, 'aji', '2019-12-03', '15:52', 66000, 66000, 0),
(67, 'aji', '2019-12-03', '15:58', 329000, 330000, -1000),
(68, 'aji', '2019-12-03', '15:58', 44000, 44000, 0),
(69, 'aji', '2019-12-03', '16:01', 285000, 300000, -15000),
(70, 'aji', '2019-12-03', '16:01', 285000, 300000, -15000),
(71, 'aji', '2019-12-03', '16:08', 285000, 300000, -15000),
(72, 'aji', '2019-12-03', '16:15', 950000, 1000000, -50000),
(73, 'aji', '2019-12-03', '16:17', 190000, 200000, -10000),
(74, 'aji', '2019-12-03', '16:20', 66000, 66000, 0),
(75, 'aji', '2019-12-03', '16:26', 760000, 770000, -10000),
(76, 'aji', '2019-12-03', '16:27', 950000, 1000000, -50000),
(77, 'aji', '2019-12-03', '16:34', 190000, 200000, -10000),
(78, 'aji', '2019-12-03', '16:41', 44000, 44000, 0),
(79, 'aji', '2019-12-03', '16:43', 88000, 90000, -2000),
(80, 'aji', '2019-12-03', '16:43', 88000, 90000, -2000),
(81, 'aji', '2019-12-03', '16:57', 22000, 30000, -8000),
(82, 'aji', '2019-12-03', '16:58', 380000, 400000, -20000),
(83, 'aji', '2019-12-03', '17:00', 475000, 500000, -25000),
(84, 'aji', '2019-12-03', '17:02', 190000, 200000, -10000),
(85, 'aji', '2019-12-04', '11:28', 95000, 100000, -5000),
(86, 'aji', '2019-12-04', '11:30', 190000, 200000, -10000),
(87, 'janobe', '2020-10-21', '09:33', 239000, 239000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_invoice_detail`
--

CREATE TABLE `tbl_invoice_detail` (
  `id` int(11) NOT NULL,
  `invoice_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_code` char(6) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `price` float NOT NULL,
  `total` float NOT NULL,
  `order_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_invoice_detail`
--

INSERT INTO `tbl_invoice_detail` (`id`, `invoice_id`, `product_id`, `product_code`, `product_name`, `qty`, `price`, `total`, `order_date`) VALUES
(47, 31, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-10-25'),
(48, 31, 12, 'TT0040', 'Triplek Sedang', 1, 95000, 95000, '2019-10-25'),
(49, 32, 14, 'RR0022', 'Round Cable Clips', 2, 35000, 70000, '2019-10-26'),
(50, 32, 15, 'DA0001', 'Bola Lampu Philips', 3, 65000, 195000, '2019-10-26'),
(52, 34, 16, 'BL0004', 'Bola Lampu Philips', 2, 125000, 250000, '2019-10-26'),
(53, 34, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-10-26'),
(54, 35, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-11-04'),
(55, 35, 16, 'BL0004', 'Bola Lampu Philips', 2, 125000, 250000, '2019-11-04'),
(56, 36, 17, 'BLH001', 'Bola Lampu Hannochs', 2, 20000, 40000, '2019-11-04'),
(57, 36, 16, 'BL0004', 'Bola Lampu Philips', 2, 125000, 250000, '2019-11-04'),
(58, 37, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-11-04'),
(59, 37, 12, 'TT0040', 'Triplek Sedang', 1, 95000, 95000, '2019-11-04'),
(60, 38, 12, 'TT0040', 'Triplek Sedang', 4, 95000, 380000, '2019-11-05'),
(61, 39, 2, 'TT0001', 'Triplek Tipis', 2, 22000, 44000, '2019-11-22'),
(62, 40, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-11-26'),
(63, 41, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-11-26'),
(64, 41, 14, 'RR0022', 'Round Cable Clips', 1, 35000, 35000, '2019-11-26'),
(65, 42, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '0000-00-00'),
(66, 43, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '0000-00-00'),
(67, 44, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-11-26'),
(68, 45, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-11-26'),
(69, 45, 14, 'RR0022', 'Round Cable Clips', 2, 35000, 70000, '2019-11-26'),
(70, 46, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-11-27'),
(71, 46, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-11-27'),
(72, 46, 14, 'RR0022', 'Round Cable Clips', 3, 35000, 105000, '2019-11-27'),
(73, 47, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-12-01'),
(74, 48, 20, 'TT0022', 'Test', 2, 22000, 44000, '2019-12-01'),
(75, 49, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-12-02'),
(76, 50, 15, 'DA0001', 'Bola Lampu Philips', 8, 65000, 520000, '2019-12-02'),
(87, 0, 12, 'TT0040', 'Triplek Sedang', 0, 95000, 0, '2019-12-02'),
(88, 0, 14, 'RR0022', 'Round Cable Clips', 0, 35000, 0, '2019-12-02'),
(89, 0, 14, 'RR0022', 'Round Cable Clips', 0, 35000, 0, '2019-12-03'),
(90, 0, 14, 'RR0022', 'Round Cable Clips', 0, 35000, 0, '2019-12-03'),
(91, 0, 14, 'RR0022', 'Round Cable Clips', 2, 35000, 70000, '2019-12-03'),
(92, 0, 14, 'RR0022', 'Round Cable Clips', 0, 35000, 0, '2019-12-03'),
(93, 0, 14, 'RR0022', 'Round Cable Clips', 0, 35000, 0, '2019-12-03'),
(94, 0, 16, 'BL0004', 'Bola Lampu Philips', 0, 125000, 0, '2019-12-03'),
(95, 0, 15, 'DA0001', 'Bola Lampu Philips', 0, 65000, 0, '2019-12-03'),
(96, 0, 18, 'BB0002', 'Lorem Ipsum', 0, 22000, 0, '2019-12-03'),
(97, 0, 21, 'RR0002', 'Rounded Rumble', 3, 24000, 72000, '2019-12-03'),
(98, 0, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(99, 51, 2, 'TT0001', 'Triplek Tipis', 4, 22000, 88000, '2019-12-03'),
(103, 55, 2, 'TT0001', 'Triplek Tipis', 0, 22000, 0, '2019-12-03'),
(104, 56, 2, 'TT0001', 'Triplek Tipis', 0, 22000, 0, '2019-12-03'),
(106, 58, 2, 'TT0001', 'Triplek Tipis', 0, 22000, 0, '2019-12-03'),
(107, 59, 2, 'TT0001', 'Triplek Tipis', 0, 22000, 0, '2019-12-03'),
(110, 62, 2, 'TT0001', 'Triplek Tipis', 0, 22000, 0, '2019-12-03'),
(111, 63, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(112, 64, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(113, 65, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(114, 66, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(115, 67, 2, 'TT0001', 'Triplek Tipis', 2, 22000, 44000, '2019-12-03'),
(116, 67, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-12-03'),
(117, 68, 2, 'TT0001', 'Triplek Tipis', 2, 22000, 44000, '2019-12-03'),
(118, 69, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-12-03'),
(119, 70, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-12-03'),
(120, 71, 12, 'TT0040', 'Triplek Sedang', 3, 95000, 285000, '2019-12-03'),
(121, 72, 12, 'TT0040', 'Triplek Sedang', 10, 95000, 950000, '2019-12-03'),
(122, 73, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-12-03'),
(123, 74, 2, 'TT0001', 'Triplek Tipis', 3, 22000, 66000, '2019-12-03'),
(124, 75, 12, 'TT0040', 'Triplek Sedang', 8, 95000, 760000, '2019-12-03'),
(125, 76, 12, 'TT0040', 'Triplek Sedang', 10, 95000, 950000, '2019-12-03'),
(126, 77, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-12-03'),
(127, 78, 2, 'TT0001', 'Triplek Tipis', 2, 22000, 44000, '2019-12-03'),
(128, 79, 2, 'TT0001', 'Triplek Tipis', 4, 22000, 88000, '2019-12-03'),
(129, 80, 2, 'TT0001', 'Triplek Tipis', 4, 22000, 88000, '2019-12-03'),
(130, 81, 2, 'TT0001', 'Triplek Tipis', 1, 22000, 22000, '2019-12-03'),
(131, 82, 12, 'TT0040', 'Triplek Sedang', 4, 95000, 380000, '2019-12-03'),
(132, 83, 12, 'TT0040', 'Triplek Sedang', 5, 95000, 475000, '2019-12-03'),
(133, 84, 12, 'TT0040', 'Triplek Sedang', 2, 95000, 190000, '2019-12-03'),
(134, 85, 12, 'TT0040', 'Triplek Sedang', 1, 95000, 95000, '2019-12-04'),
(135, 86, 12, 'TT0040', 'Triplek Sedang', 1, 95000, 95000, '2019-12-04'),
(136, 86, 12, 'TT0040', 'Triplek Sedang', 1, 95000, 95000, '2019-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_code` char(6) NOT NULL,
  `product_name` varchar(200) NOT NULL,
  `product_category` varchar(200) NOT NULL,
  `purchase_price` float(10,0) NOT NULL,
  `sell_price` float(10,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `min_stock` int(11) NOT NULL,
  `product_satuan` varchar(200) NOT NULL,
  `description` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_code`, `product_name`, `product_category`, `purchase_price`, `sell_price`, `stock`, `min_stock`, `product_satuan`, `description`, `img`) VALUES
(2, 'TT0001', 'Triplek Tipis', 'Bahan Bangunan', 20000, 22000, 7, 5, 'Kg', 'Triplek 3 mm, berukuran 2440 mm x 122 mm x 3 mm', '5db30881c51a6.jpg'),
(12, 'TT0040', 'Triplek Sedang', 'Bahan Bangunan', 90000, 95000, 11, 7, 'Kg', 'Triplek 9 mm, berukuran 2440 mm x 122 mm x 9 mm', '5dc02d63143c2.jpg'),
(14, 'RR0022', 'Round Cable Clips', 'Bahan Bangunan', 33000, 35000, 8, 5, 'Kg', 'Brand GML Ukuran 17 inch', '5dc02e0ccda56.png'),
(15, 'DA0001', 'Bola Lampu Philips', 'Peralatan Listrik', 60000, 65000, 6, 5, 'Kg', 'Philips 10 W LED', '5dc02e217ddd9.png'),
(16, 'BL0004', 'Bola Lampu Philips', 'Peralatan Listrik', 120000, 125000, 10, 5, 'Ons', 'Philips 27 W LED Durable', '5db30547a3a27.jpg'),
(17, 'BLH001', 'Bola Lampu Hannochs', 'Bahan Bangunan', 18000, 20000, 10, 5, 'Ons', 'Bola Lampu Hannochs 3 Watt Basic', '5dc0305598b59.jpeg'),
(18, 'BB0002', 'Lorem Ipsum', 'Bahan Bangunan', 21000, 22000, 11, 10, 'Ons', 'Barang Lorem Ipsum', '5dd5f56f90020.png'),
(19, 'TB0001', 'Tempat Bangunan', 'Bahan Bangunan', 20000, 22000, 11, 10, 'Kg', 'Lorem Ipsum Liodardo', '5dd78301969fb.png'),
(20, 'TT0022', 'Test', 'Bahan Bangunan', 20000, 22000, 7, 2, 'Kg', 'test', '5dd7d3d1312fe.png'),
(21, 'RR0002', 'Rounded Rumble', 'Bahan Bangunan', 23000, 24000, 7, 5, 'Kg', 'Lorem Ipsum', '5dddd34658a12.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_satuan`
--

CREATE TABLE `tbl_satuan` (
  `kd_satuan` int(2) NOT NULL,
  `nm_satuan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_satuan`
--

INSERT INTO `tbl_satuan` (`kd_satuan`, `nm_satuan`) VALUES
(16, 'Kg'),
(15, 'Ons');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `fullname` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `role` varchar(15) NOT NULL,
  `is_active` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `username`, `fullname`, `password`, `role`, `is_active`) VALUES
(1, 'janobe', 'ajibagaskara08@gmail.com', 'admin', 'Admin', 1),
(3, 'Dewi', 'dewi@gmail.com', 'dewi', 'Operator', 0),
(4, 'Koko', 'koko@gmail.com', 'koko', 'Operator', 1),
(5, 'har4', 'Harianto', '1234567', 'Admin', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`cat_id`),
  ADD UNIQUE KEY `cat_name` (`cat_name`),
  ADD UNIQUE KEY `cat_name_2` (`cat_name`);

--
-- Indexes for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  ADD PRIMARY KEY (`invoice_id`);

--
-- Indexes for table `tbl_invoice_detail`
--
ALTER TABLE `tbl_invoice_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`),
  ADD UNIQUE KEY `product_code` (`product_code`,`product_name`);

--
-- Indexes for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  ADD PRIMARY KEY (`kd_satuan`),
  ADD UNIQUE KEY `nm_satuan` (`nm_satuan`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_invoice`
--
ALTER TABLE `tbl_invoice`
  MODIFY `invoice_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `tbl_invoice_detail`
--
ALTER TABLE `tbl_invoice_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_satuan`
--
ALTER TABLE `tbl_satuan`
  MODIFY `kd_satuan` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
