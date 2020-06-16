-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
<<<<<<< HEAD
-- Generation Time: Apr 21, 2020 at 07:35 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9
=======
-- Generation Time: Apr 30, 2020 at 06:44 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `androiddeft`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cartID` int(10) NOT NULL,
  `itemName` varchar(50) NOT NULL,
  `itemID` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cartID`, `itemName`, `itemID`) VALUES
(2, 'Lense wide', 5),
(4, '800mm lense', 7),
(6, 'drone', 9);

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

CREATE TABLE `histories` (
  `id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `event` varchar(50) NOT NULL,
  `jobNumber` varchar(10) NOT NULL,
  `department` varchar(20) NOT NULL,
  `empNo` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `histories`
--

INSERT INTO `histories` (`id`, `date`, `event`, `jobNumber`, `department`, `empNo`) VALUES
(1, '2020-01-15 08:15:28', 'leo 3x3', '1', 'jokers films', '1'),
(2, '2020-01-15 08:15:28', 'lavenro wedin expo', '2', 'heavenly made', '3'),
(10, '2020-04-15 00:49:54', 'expo', '3', 'films', '4'),
(11, '2020-04-15 00:57:47', 'car expo', '4', 'film', '0'),
(12, '2020-04-19 05:18:00', 'wedding at colombo', '2363', 'camera', '0'),
(13, '2020-04-19 05:36:27', 'New year', '12', 'Candy', '0'),
(14, '2020-04-19 07:01:19', 'abc festival', '20', 'films', '1'),
(22, '2020-04-19 10:03:01', 'testing before fial', '50', 'hsja', '11000'),
(23, '2020-04-19 10:13:35', 'final testing', '51', 'testing', '1');

-- --------------------------------------------------------

--
-- Table structure for table `historyitemmap`
--

CREATE TABLE `historyitemmap` (
  `historyId` int(11) NOT NULL,
  `itemId` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `historyitemmap`
--

INSERT INTO `historyitemmap` (`historyId`, `itemId`) VALUES
(5, 2),
(5, 3),
(5, 4),
(6, 8),
(7, 8),
(9, 8),
(5, 10),
(5, 11),
(1, 1),
(1, 7),
(1, 1),
(1, 7),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(12, 10),
(12, 11),
(13, 10),
(14, 11),
(14, 10),
(15, 11),
(16, 11),
(17, 11),
(19, 11),
(20, 11),
(21, 11),
(22, 11),
(23, 11);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` int(11) NOT NULL,
  `item_type` varchar(256) NOT NULL,
  `item_name` varchar(50) NOT NULL,
  `item_model` varchar(50) NOT NULL,
  `item_qr` varchar(500) NOT NULL,
  `item_status` varchar(20) NOT NULL,
  `item_capacity` varchar(25) NOT NULL,
  `item_image` varchar(50000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `item_type`, `item_name`, `item_model`, `item_qr`, `item_status`, `item_capacity`, `item_image`) VALUES
<<<<<<< HEAD
(1, 'camera', 'Canon', 'A365', '2001618861684', 'Unavailable', '20', 'asdasdasd'),
(7, 'memory card', 'Memory card', 'amd', '1517151517884', 'Unavailable', '23', 'asdsadas'),
(8, 'sdasd', 'Drone', 'ABC', '123', 'Available', '0', 'sdasd'),
(9, 'light', 'Canon', 'flasher', '123f', 'Unavailable', '32', 'sadas');
=======
(1, 'camera', 'Canon 5D mark', 'A365', '2001618861684', 'Unavailable', '20', 'http://www.candyfactorylk.com/blog/images/can.png'),
(8, 'sdasd', 'Drone pentom 4', 'ABC', '123', 'Available', '0', 'sdasd'),
(9, 'light', 'Canon flasher', 'flasher', '123f', 'Available', '32', 'sadas'),
(10, 'speed light', 'speed light', 'canon', '222', 'Available', '2000', 'qweeewsw'),
(11, 'camera', 'nikon D610', 'd610', '444', 'Available', '500', 'ddsadsa');
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

-- --------------------------------------------------------

--
-- Table structure for table `percart`
--

CREATE TABLE `percart` (
  `pcartID` int(11) NOT NULL,
  `pitemNo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `records`
--

CREATE TABLE `records` (
  `id` int(11) NOT NULL,
  `userId` varchar(100) DEFAULT NULL,
  `historyId` varchar(100) DEFAULT NULL,
  `itemId` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `records`
--

INSERT INTO `records` (`id`, `userId`, `historyId`, `itemId`) VALUES
(1, '1', '1', 'Camera'),
(2, '1', '1', 'Stand'),
(3, '1', '1', 'Light'),
(4, '1', '1', 'Wires'),
(5, '1', '2', 'Bike'),
(6, '1', '2', 'Helmet'),
(7, '1', '3', 'Cannon'),
(8, '1', '3', 'Flash Light');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
<<<<<<< HEAD
  `ID` int(5) NOT NULL,
=======
  `id` int(5) NOT NULL,
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef
  `username` varchar(25) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `dept` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `users`
--

<<<<<<< HEAD
INSERT INTO `users` (`ID`, `username`, `email`, `password`, `name`, `dept`, `type`) VALUES
(1, 'yasas9696', 'yasas9696@gmail.com', '123', 'yas k', 'films', 'admin'),
(3, 'kulik', 'kulinda.jokersarmy@gmail.com', '123', '', 'Cyber Labs', 'Department Head'),
(4, 'barana', 'barana.jokersarmy@gmail.com', '123', '', 'CEO', 'Candy Factory Group'),
(5, 'harsha', 'harsha.jokersarmy@gmail.com', '123', '', 'Jokers Films', 'department head'),
(6, 'mac123', 'mac@gmail.com', '123', '', 'it', 'engineer'),
(7, 'sfds', 'dfs', 'dsfsdf', 'sdfsf', 'sfsf', 'sdfs');
=======
INSERT INTO `users` (`id`, `username`, `email`, `password`, `name`, `dept`, `type`) VALUES
(1, 'yas96', 'yasas9696@gmail.com', '123', 'yas kaushalya', 'cyberlabs', 'aaa'),
(3, 'kulik', 'kulinda.jokersarmy@gmail.com', '123', 'kulinda jayasen', 'Cyber Labs', 'Department Head'),
(4, 'barana', 'barana.jokersarmy@gmail.com', '123', 'barana ranasen', 'CEO', 'Candy Factory Group');
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

--
-- Indexes for dumped tables
--

--
-- Indexes for table `histories`
--
ALTER TABLE `histories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);
<<<<<<< HEAD
=======

--
-- Indexes for table `records`
--
ALTER TABLE `records`
  ADD PRIMARY KEY (`id`);
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

--
-- Indexes for table `users`
--
ALTER TABLE `users`
<<<<<<< HEAD
  ADD PRIMARY KEY (`ID`);
=======
  ADD PRIMARY KEY (`id`);
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `histories`
--
ALTER TABLE `histories`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
<<<<<<< HEAD
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
=======
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `records`
--
ALTER TABLE `records`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
<<<<<<< HEAD
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
=======
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
>>>>>>> bf351b0ee9fd2d8cf087d90ff23f669647dba7ef
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
