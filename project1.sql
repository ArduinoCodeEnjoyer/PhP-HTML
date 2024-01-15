-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 15, 2024 at 05:05 AM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project1`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dht22`
--

CREATE TABLE `tbl_dht22` (
  `ID` int(11) NOT NULL,
  `TEMP` float NOT NULL,
  `HUMID` float NOT NULL,
  `DMY` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_smartfarm_iot`
--

CREATE TABLE `tbl_smartfarm_iot` (
  `id` int(11) NOT NULL,
  `zone` varchar(200) COLLATE utf8_bin NOT NULL,
  `board` varchar(50) COLLATE utf8_bin NOT NULL,
  `temp` float NOT NULL,
  `humid` float NOT NULL,
  `dmy` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `tbl_smartfarm_iot`
--

INSERT INTO `tbl_smartfarm_iot` (`id`, `zone`, `board`, `temp`, `humid`, `dmy`) VALUES
(1, 'Zone A', 'ESP32', 25.5, 68.7, '2024-01-15 11:24:13'),
(2, 'Zone B', 'ESP8266', 30, 75.4, '2024-01-15 11:26:59'),
(3, 'Zone C', 'Arduino Nano IoT33', 19.2, 24.8, '2024-01-15 11:27:42'),
(5, '', '', 0, 0, '2024-01-15 11:49:05'),
(6, 'zone B ', '', 0, 0, '2024-01-15 11:50:34'),
(7, 'zone B ', 'Raspberry Pi Pico', 0, 0, '2024-01-15 11:52:05'),
(8, 'zone B ', 'Raspberry Pi Pico ', -1, 2.35, '2024-01-15 11:54:30'),
(9, 'zone B ', 'POP32 ', -1, 2.35, '2024-01-15 11:55:24'),
(10, 'zone C ', 'POP32 ', -1, 2.35, '2024-01-15 11:55:33');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dht22`
--
ALTER TABLE `tbl_dht22`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbl_smartfarm_iot`
--
ALTER TABLE `tbl_smartfarm_iot`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dht22`
--
ALTER TABLE `tbl_dht22`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_smartfarm_iot`
--
ALTER TABLE `tbl_smartfarm_iot`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
