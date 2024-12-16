-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fosdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(45) DEFAULT NULL,
  `UserName` varchar(45) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin user', 'admin', 7894561238, 'test@gmail.com', 'e00cf25ad42683b3df678c61f42c6bda', '2019-04-05 07:16:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(5) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `CategoryName`, `CreationDate`) VALUES
(3, 'Itallian', '2019-04-05 10:36:01'),
(4, 'Thai', '2019-04-05 10:36:25'),
(5, 'South Indian', '2019-04-05 10:36:35'),
(6, 'North Indian', '2019-04-05 10:36:47'),
(7, 'Desserts', '2019-04-05 10:43:13'),
(8, 'Starters', '2019-04-05 10:43:45'),
(9, 'Chinease', '2019-04-24 05:43:08'),
(10, 'Test Food ', '2019-05-06 16:36:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblfood`
--

CREATE TABLE `tblfood` (
  `ID` int(10) NOT NULL,
  `CategoryName` varchar(120) DEFAULT NULL,
  `ItemName` varchar(120) DEFAULT NULL,
  `ItemPrice` varchar(120) DEFAULT NULL,
  `ItemDes` varchar(500) DEFAULT NULL,
  `Image` varchar(120) DEFAULT NULL,
  `ItemQty` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfood`
--

INSERT INTO `tblfood` (`ID`, `CategoryName`, `ItemName`, `ItemPrice`, `ItemDes`, `Image`, `ItemQty`) VALUES
(1, 'Italian', 'Corn Pizza', '180', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Medium'),
(2, 'Italian', 'Corn Pizza', '120', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet;', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Regular'),
(3, 'Italian', 'Corn Pizza', '220', 'Sprinkle with salt and pepper; let stand 20 minutes. Place pizza crust on a parchment paper-lined baking sheet', 'f97fcb777fbc60235e7cfdf991cb0cfa.jpg', 'Large'),
(4, 'Italian', 'Veg Extravaganza Pizza', '450', 'Veg ExtravaganzaA pizza that decidedly staggers', '73323ff74a39e6157cf73ad52cf15c66.jpg', 'Medium'),
(5, 'Italian', 'Veg Extravaganza Pizza', '440', 'Veg ExtravaganzaA pizza that decidedly staggers under an overload of golden corn, exotic black olives, crunchy onions', '9ed5c4756f56317810d7e364ca7f1634.jpg', 'Large'),
(6, 'North Indian', 'Chana Masala', '120', 'To make this chana masala we start with a trio of ingredients found in most Indian curriesâ€“onion, garlic, and ginger. ', '0ee2405d162c60e415bfba56a24aca8c.jpg', 'Full'),
(7, 'North Indian', 'Rajma Masala', '125', 'Rajma Masala is a much loved spicy curry in most Indian Households.                               	', '63d50ef58f33ec97cf928c05deb8ccd3.jpg', 'Full'),
(8, 'South Indian', 'Dosa', '85', 'Dosa  are served hot along with sambar, a stuffing of potatoes, and chutney.                             	', 'd984b4a23552203107391bc98dd0e4dc.jpg', 'Regular'),
(9, 'South Indian', 'Idli', '75', 'Idli are a type of savoury rice cake, originating from the Indian subcontinent and served coconut chutney.                                         	', '0cbe727a2529cc6cd8dcbd40ee53fe2c.jpg', '2 pcs'),
(10, 'South Indian', 'Vada', '60', 'Medu vada served with hot shambhar and coconut chutney ', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '50'),
(11, 'North Indian', 'Chole Bhature', '120', 'Chole Bhuture is a combination of chana masala (spicy white chickpeas) and bhatura,                                                	', 'da41d10bb09c6cfac8168435164ff0b3.jpg', '2 pcs'),
(12, 'North Indian', 'Aloo paratha', '85', ' Aloo paratha is served with butter, chutney, or Indian pickles in different parts of northern and western India.                                                 	', '8cc336b118e1feb503f9a54f3bdcdf1b.jpg', '2 pieces'),
(13, 'North Indian', 'Mix Pratha', '85', 'veg paratha soft, healthy and delicious whole wheat parathas made with mix vegetables. ... this no onion no garlic veg paratha recipe is pretty flexible.                                               	', '4b4f0a570c7f36f0db9e4f8e7fa60442.jpg', '2 pieces'),
(14, 'North Indian', 'Paneer Paratha.', '95', 'paneer paratha. paneer paratha is an indian flat bread made with cottage cheese stuffing. paneer paratha are popular breakfast recipe in punjabi homes.                                                 	', 'a19b8b7095ad0c23ddd95a28c3f85268.jpg', '2 pieces'),
(15, 'Chinease', 'Hakka Noodle', '120', 'Hakka Noodle is one our famous food which is made up by our homemade masale.                                               	', 'f8f34e70f13c6d9e982640e3b39f317b.jpg', 'full'),
(16, 'Chinese', 'Veg Chowmin', '120', 'Veg Chowmien full Plate                                                 	', '927f5a1c2bcfff25ff8a936fa98d5f2f.jpg', 'Full'),
(17, 'South Indian', 'Vada ', '40', 'Vada is a category of savoury fried snacks from India. 4p Vada                                    	', '66d5785b3c99179f5a5bb7d7d94636dd.jpg', '20'),
(18, 'North Indian', 'Dahi Vada', '30', 'Dahi vada is a type of chaat originating from the Indian subcontinent and popular throughout South Asia. 2pcs                                       	', '9eca4410ef36a4db908e81bdcbf149b7.jpg', '500');

-- --------------------------------------------------------

--
-- Table structure for table `tblfoodtracking`
--

CREATE TABLE `tblfoodtracking` (
  `ID` int(10) NOT NULL,
  `OrderId` char(50) DEFAULT NULL,
  `remark` varchar(200) DEFAULT NULL,
  `status` char(50) DEFAULT NULL,
  `StatusDate` timestamp NULL DEFAULT current_timestamp(),
  `OrderCanclledByUser` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfoodtracking`
--

INSERT INTO `tblfoodtracking` (`ID`, `OrderId`, `remark`, `status`, `StatusDate`, `OrderCanclledByUser`) VALUES
(13, '863603205', 'Pickup', 'Food Pickup', '2020-08-08 01:25:54', NULL),
(14, '863603205', 'Order Delivered Thanks ', 'Food Delivered', '2020-08-08 01:26:12', NULL),
(15, '776654497', 'Being Prepared Wait', 'Food being Prepared', '2020-08-08 01:30:06', NULL),
(16, '776654497', 'Thanks for shopping', 'Food Delivered', '2020-08-08 01:31:50', NULL),
(17, '132680681', 'Order Confirmed ', 'Order Confirmed', '2020-08-08 01:34:01', NULL),
(18, '132680681', 'Food Being Prepared wait', 'Food being Prepared', '2020-08-08 01:34:17', NULL),
(19, '132680681', 'on the way', 'Food Pickup', '2020-08-08 01:34:38', NULL),
(20, '132680681', 'Delivered ', 'Food Delivered', '2020-08-08 01:34:50', NULL),
(21, '785785380', 'OUT OF STOCK', 'Order Cancelled', '2020-08-08 01:40:30', NULL),
(22, '406104587', 'Order Confirmed', 'Order Confirmed', '2020-08-09 03:14:33', NULL),
(23, '406104587', 'Being [repared', 'Food being Prepared', '2020-08-09 03:14:48', NULL),
(24, '406104587', 'On th way', 'Food Pickup', '2020-08-09 03:15:36', NULL),
(25, '406104587', 'Thanks ', 'Food Delivered', '2020-08-09 03:16:04', NULL),
(26, '183437372', 'Confirm', 'Order Confirmed', '2020-08-09 05:31:57', NULL),
(27, '183437372', 'Being Prepared', 'Food being Prepared', '2020-08-09 05:32:27', NULL),
(28, '183437372', 'Thnaks ', 'Food Delivered', '2020-08-09 05:32:47', NULL),
(29, '248721574', 'Confirmed', 'Order Confirmed', '2020-08-11 02:59:34', NULL),
(30, '248721574', 'Being Prepared wait', 'Food being Prepared', '2020-08-11 02:59:49', NULL),
(31, '248721574', 'Thanks', 'Food Delivered', '2020-08-11 03:00:50', NULL),
(32, '211725352', 'Confirm', 'Order Confirmed', '2020-08-11 04:57:39', NULL),
(33, '211725352', 'Being Prepared', 'Food being Prepared', '2020-08-11 04:58:09', NULL),
(34, '211725352', 'Thanks', 'Food Delivered', '2020-08-11 04:58:38', NULL),
(35, '858184328', 'Confirm', 'Order Confirmed', '2020-08-11 06:11:22', NULL),
(36, '858184328', 'Being Prepared', 'Food being Prepared', '2020-08-11 06:11:44', NULL),
(37, '858184328', 'Thanks', 'Food Delivered', '2020-08-11 06:12:10', NULL),
(38, '145900627', 'df', 'Order Confirmed', '2020-08-23 06:46:30', NULL),
(39, '145900627', 'sfdf', 'Order Cancelled', '2020-08-23 06:46:41', NULL),
(40, '540237915', 'dsfsdf', 'Food being Prepared', '2020-08-23 06:47:59', NULL),
(41, '540237915', 'sdf', 'Food being Prepared', '2020-08-23 06:48:02', NULL),
(42, '540237915', 'sfdf', 'Food Pickup', '2020-08-23 06:48:05', NULL),
(43, '540237915', 'dsf', 'Food Delivered', '2020-08-23 06:48:09', NULL),
(44, '992644331', 'sdfdsf', 'Food being Prepared', '2020-08-23 06:48:58', NULL),
(45, '992644331', 'dsf', 'Food Pickup', '2020-08-23 06:49:12', NULL),
(46, '675454577', 'ds', 'Order Confirmed', '2020-09-03 13:00:53', NULL),
(47, '675454577', 'dsfd', 'Food being Prepared', '2020-09-03 13:00:57', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblorderaddresses`
--

CREATE TABLE `tblorderaddresses` (
  `ID` int(11) NOT NULL,
  `UserId` char(100) DEFAULT NULL,
  `Ordernumber` char(100) DEFAULT NULL,
  `Flatnobuldngno` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `Area` varchar(255) DEFAULT NULL,
  `Landmark` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `OrderTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `OrderFinalStatus` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorderaddresses`
--

INSERT INTO `tblorderaddresses` (`ID`, `UserId`, `Ordernumber`, `Flatnobuldngno`, `StreetName`, `Area`, `Landmark`, `City`, `OrderTime`, `OrderFinalStatus`) VALUES
(6, '7', '863603205', 'Ram mandir ', 'Near dsfjodsf', 'sdfds', 'fdsafds', 'afadsf', '2020-08-08 01:25:14', 'Food Delivered'),
(7, '8', '776654497', 'asda', 'sdasd', 'asd', 'asdsad', 'asd', '2020-08-08 01:29:20', 'Food Delivered'),
(8, '8', '132680681', 'dsfd', 'fdsf', 'dsfd', 'fsd', 'fdsfds', '2020-08-08 01:33:32', 'Food Delivered'),
(9, '8', '785785380', 'FGDF', 'GDFG', 'DFG', 'DFG', 'DFG', '2020-08-08 01:40:10', 'Order Cancelled'),
(10, '9', '406104587', 'edfdf', 'dsfs', 'dfsd', 'fsdf', 'sdf', '2020-08-09 03:13:15', 'Food Delivered'),
(11, '10', '183437372', 'sadasd', 'asd', 'asdas', 'das', 'dasd', '2020-08-09 05:31:02', 'Food Delivered'),
(12, '9', '675454577', 'sdsad', 'sadsa', 'dsad', 'sads', 'adsad', '2020-08-09 07:29:09', 'Food being Prepared'),
(13, '11', '248721574', 'ertre', 'tret', 'ret', 'reter', 'tret', '2020-08-11 02:59:07', 'Food Delivered'),
(14, '11', '864832264', 'fLAT NO 145', 'Sector -49', 'Barola', 'Near sb SCHOOL', 'Noida', '2020-08-11 04:12:34', NULL),
(15, '6', '211725352', 'df', 'dfsd', 'fds', 'fdsf', 'sd', '2020-08-11 04:56:24', 'Food Delivered'),
(16, '12', '858184328', 'Flat156', 'sector 45', 'Near ghh', 'Noida', 'up', '2020-08-11 06:10:25', 'Food Delivered'),
(17, '6', '145900627', 'ew', 'ewre', 'wrew', 'rwer', 'ewr', '2020-08-23 06:46:06', 'Order Cancelled'),
(18, '6', '540237915', 'dsf', 'dsf', 'dsf', 'dsf', 'dsf', '2020-08-23 06:47:35', 'Food Delivered'),
(19, '6', '992644331', 'dsf', 'dsfds', 'f', 'dsf', 'dsf', '2020-08-23 06:48:45', 'Food Pickup');

-- --------------------------------------------------------

--
-- Table structure for table `tblorders`
--

CREATE TABLE `tblorders` (
  `ID` int(11) NOT NULL,
  `UserId` char(10) DEFAULT NULL,
  `FoodId` char(10) DEFAULT NULL,
  `IsOrderPlaced` int(11) DEFAULT NULL,
  `OrderNumber` char(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblorders`
--

INSERT INTO `tblorders` (`ID`, `UserId`, `FoodId`, `IsOrderPlaced`, `OrderNumber`) VALUES
(6, '2', '8', NULL, NULL),
(10, '7', '1', 1, '863603205'),
(11, '7', '2', 1, '863603205'),
(12, '7', '6', 1, '863603205'),
(13, '7', '12', 1, '863603205'),
(14, '8', '1', 1, '776654497'),
(15, '8', '6', 1, '776654497'),
(16, '8', '16', 1, '776654497'),
(17, '8', '3', 1, '132680681'),
(18, '8', '5', 1, '132680681'),
(19, '8', '18', 1, '785785380'),
(20, '8', '10', NULL, NULL),
(21, '9', '2', 1, '406104587'),
(22, '9', '18', 1, '406104587'),
(23, '10', '17', 1, '183437372'),
(24, '10', '2', 1, '183437372'),
(25, '9', '1', 1, '675454577'),
(26, '11', '7', 1, '248721574'),
(27, '11', '2', 1, '248721574'),
(28, '11', '16', 1, '864832264'),
(30, '6', '2', 1, '211725352'),
(31, '6', '6', 1, '211725352'),
(32, '6', '9', 1, '211725352'),
(33, '12', '11', 1, '858184328'),
(34, '12', '6', 1, '858184328'),
(35, '6', '1', 1, '145900627'),
(36, '6', '2', 1, '540237915'),
(37, '6', '2', 1, '992644331');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FirstName`, `LastName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(6, 'Raja', 'Kumar', 'raju@fd.com', 3534634645, 'ae9a8ec8a49752ecdafb88be35c54aee', '2020-08-07 13:27:42'),
(7, 'Rohit', 'Kumar', 'rohit@fd.com', 4353452354, '7a0c2d009491f53e93ab3cc9fe8d490c', '2020-08-08 01:24:21'),
(8, 'Dinkar', 'Kumar', 'dinkar@fd.com', 937872343, '8088f1a8606f9a0b5268842e24250f56', '2020-08-08 01:28:26'),
(9, 'raja', 'singh', 'Raja@fd.com', 7656587698, '4f5dd0bf9dee2d9cf7346ffca261b2a2', '2020-08-09 03:12:23'),
(10, 'sumit', 'Singh', 'Sumit@fd.com', 976837462, 'acf496075585222511af4c1ddbcf631e', '2020-08-09 05:29:49'),
(11, 'raj', 'rajppot', 'rajs@fd.com', 4553454564, 'c89c0e6b8b7620eee538ac1325556aa7', '2020-08-11 02:58:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfood`
--
ALTER TABLE `tblfood`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`Ordernumber`);

--
-- Indexes for table `tblorders`
--
ALTER TABLE `tblorders`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `UserId` (`UserId`,`FoodId`,`OrderNumber`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblfood`
--
ALTER TABLE `tblfood`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblfoodtracking`
--
ALTER TABLE `tblfoodtracking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tblorderaddresses`
--
ALTER TABLE `tblorderaddresses`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `tblorders`
--
ALTER TABLE `tblorders`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
