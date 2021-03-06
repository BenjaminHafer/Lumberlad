-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 04, 2016 at 09:49 PM
-- Server version: 5.6.28
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `lumberyard2`
--

-- --------------------------------------------------------

--
-- Table structure for table `currentlumber`
--

CREATE TABLE `currentlumber` (
  `WIDTH` int(11) NOT NULL,
  `HEIGHT` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `PRICE` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='TABLE IS FOR UPLOADING LUMBER VALUES';

--
-- Dumping data for table `currentlumber`
--

INSERT INTO `currentlumber` (`WIDTH`, `HEIGHT`, `LENGTH`, `DATE`, `PRICE`) VALUES
(4, 4, 96, '2016-12-03 03:09:37', 3.5),
(2, 6, 96, '2016-12-03 03:09:37', 3.25),
(1, 6, 96, '2016-12-03 03:09:37', 2),
(4, 4, 96, '2016-12-03 19:30:11', 3.5),
(2, 6, 96, '2016-12-03 19:30:11', 3.25),
(1, 6, 96, '2016-12-03 19:30:11', 2),
(1, 0, 0, '2016-12-03 19:30:11', 0),
(4, 4, 96, '2016-12-03 19:31:43', 3.5),
(2, 6, 96, '2016-12-03 19:31:43', 3.25),
(1, 6, 96, '2016-12-03 19:31:43', 2),
(0, 1, 1, '2016-12-03 19:31:43', 0),
(4, 4, 96, '2016-12-03 19:32:55', 3.5),
(2, 6, 96, '2016-12-03 19:32:55', 3.25),
(1, 6, 96, '2016-12-03 19:32:55', 2),
(1, 1, 1, '2016-12-03 19:32:55', 1),
(4, 4, 96, '2016-12-03 19:34:31', 3.5),
(2, 6, 96, '2016-12-03 19:34:31', 3.25),
(1, 6, 96, '2016-12-03 19:34:31', 2),
(1, 1, 1, '2016-12-03 19:34:31', 1),
(4, 4, 96, '2016-12-03 19:35:39', 3.5),
(2, 6, 96, '2016-12-03 19:35:39', 3.25),
(1, 6, 96, '2016-12-03 19:35:39', 2),
(12, 12, 12, '2016-12-03 19:35:39', 0),
(2, 4, 96, '2016-12-03 19:41:32', 2),
(2, 6, 96, '2016-12-03 19:41:32', 4.5),
(4, 4, 96, '2016-12-03 19:41:32', 7.75),
(12, 12, 12, '2016-12-03 19:41:32', 1),
(2, 4, 96, '2016-12-03 19:42:00', 2),
(2, 6, 96, '2016-12-03 19:42:00', 4.5),
(4, 4, 96, '2016-12-03 19:42:00', 7.75),
(12, 12, 12, '2016-12-03 19:42:00', 1.25),
(2, 4, 96, '2016-12-03 19:52:28', 2),
(2, 6, 96, '2016-12-03 19:52:28', 4.5),
(4, 4, 96, '2016-12-03 19:52:28', 7.75),
(12, 12, 12, '2016-12-03 19:52:28', 1.25),
(2, 4, 96, '2016-12-03 19:53:16', 2),
(2, 6, 96, '2016-12-03 19:53:16', 4.5),
(4, 4, 96, '2016-12-03 19:53:16', 7.75),
(2, 4, 96, '2016-12-03 20:02:43', 2),
(2, 6, 96, '2016-12-03 20:02:43', 4.5),
(4, 4, 96, '2016-12-03 20:02:43', 7.75),
(12, 12, 12, '2016-12-03 20:02:43', 1.25),
(12, 12, 12, '2016-12-03 20:29:38', 0),
(2, 4, 96, '2016-12-03 20:30:05', 2),
(2, 6, 96, '2016-12-03 20:30:05', 4.5),
(4, 4, 96, '2016-12-03 20:30:05', 7.75),
(12, 12, 12, '2016-12-03 20:30:05', 1.25),
(2, 4, 96, '2016-12-03 20:32:05', 2),
(2, 6, 96, '2016-12-03 20:32:05', 4.5),
(4, 4, 96, '2016-12-03 20:32:05', 7.75),
(12, 12, 12, '2016-12-03 20:32:05', 1.25),
(2, 4, 96, '2016-12-03 20:36:02', 2),
(2, 6, 96, '2016-12-03 20:36:02', 4.5),
(4, 4, 96, '2016-12-03 20:36:02', 7.75),
(12, 12, 12, '2016-12-03 20:36:02', 1.25),
(2, 4, 96, '2016-12-03 20:37:03', 2),
(2, 6, 96, '2016-12-03 20:37:03', 4.5),
(4, 4, 96, '2016-12-03 20:37:03', 7.75),
(12, 12, 12, '2016-12-03 20:37:03', 1.25),
(2, 4, 96, '2016-12-03 20:37:54', 2),
(2, 6, 96, '2016-12-03 20:37:54', 4.5),
(4, 4, 96, '2016-12-03 20:37:54', 7.75),
(12, 12, 12, '2016-12-03 20:37:54', 1.25),
(2, 4, 96, '2016-12-03 20:38:37', 2),
(2, 6, 96, '2016-12-03 20:38:37', 4.5),
(4, 4, 96, '2016-12-03 20:38:37', 7.75),
(12, 12, 12, '2016-12-03 20:38:37', 1.25),
(2, 4, 96, '2016-12-03 20:39:04', 2),
(2, 6, 96, '2016-12-03 20:39:04', 4.5),
(4, 4, 96, '2016-12-03 20:39:04', 7.75),
(12, 12, 12, '2016-12-03 20:39:04', 1.25),
(2, 4, 96, '2016-12-03 20:39:12', 2),
(2, 6, 96, '2016-12-03 20:39:12', 4.5),
(4, 4, 96, '2016-12-03 20:39:12', 7.75),
(12, 12, 12, '2016-12-03 20:39:12', 1.25),
(2, 4, 96, '2016-12-03 20:39:25', 2),
(2, 6, 96, '2016-12-03 20:39:25', 4.5),
(4, 4, 96, '2016-12-03 20:39:25', 7.75),
(12, 12, 12, '2016-12-03 20:39:25', 1.25),
(2, 4, 96, '2016-12-03 20:39:32', 2),
(2, 6, 96, '2016-12-03 20:39:32', 4.5),
(4, 4, 96, '2016-12-03 20:39:32', 7.75),
(12, 12, 12, '2016-12-03 20:39:32', 1.25),
(2, 4, 96, '2016-12-03 20:39:43', 2),
(2, 6, 96, '2016-12-03 20:39:43', 4.5),
(4, 4, 96, '2016-12-03 20:39:43', 7.75),
(12, 12, 12, '2016-12-03 20:39:43', 1.25),
(2, 4, 96, '2016-12-03 20:47:52', 2),
(2, 6, 96, '2016-12-03 20:47:52', 4.5),
(4, 4, 96, '2016-12-03 20:47:52', 7.75),
(12, 12, 12, '2016-12-03 20:47:52', 1.25),
(2, 4, 96, '2016-12-03 20:52:30', 2),
(2, 6, 96, '2016-12-03 20:52:30', 4.5),
(4, 4, 96, '2016-12-03 20:52:30', 7.75),
(12, 12, 12, '2016-12-03 20:52:30', 1.25),
(2, 4, 96, '2016-12-04 00:44:58', 2),
(2, 6, 96, '2016-12-04 00:44:58', 4.5),
(4, 4, 96, '2016-12-04 00:44:58', 7.75),
(12, 12, 12, '2016-12-04 00:44:58', 1.25),
(1, 2, 96, '2016-12-04 17:50:39', 2),
(2, 4, 96, '2016-12-04 17:50:39', 4.5),
(4, 4, 96, '2016-12-04 17:50:39', 7.75),
(12, 12, 12, '2016-12-04 17:50:39', 1.25),
(1, 4, 96, '2016-12-04 17:51:34', 2),
(2, 4, 96, '2016-12-04 17:51:34', 4.5),
(4, 4, 96, '2016-12-04 17:51:34', 7.75),
(12, 12, 12, '2016-12-04 17:51:34', 1.25),
(1, 4, 96, '2016-12-04 18:35:38', 2),
(2, 4, 96, '2016-12-04 18:35:38', 4.5),
(4, 4, 96, '2016-12-04 18:35:38', 7.75),
(12, 12, 12, '2016-12-04 18:35:38', 1.25),
(1, 4, 96, '2016-12-04 18:36:17', 2),
(2, 4, 96, '2016-12-04 18:36:17', 4.5),
(4, 4, 96, '2016-12-04 18:36:17', 7.75),
(12, 12, 12, '2016-12-04 18:36:17', 1.25),
(1, 4, 96, '2016-12-04 18:36:45', 2),
(2, 4, 96, '2016-12-04 18:36:45', 4.5),
(4, 4, 96, '2016-12-04 18:36:45', 7.75),
(12, 12, 12, '2016-12-04 18:36:45', 1.25),
(1, 4, 96, '2016-12-04 18:36:57', 2),
(2, 4, 96, '2016-12-04 18:36:57', 4.5),
(4, 4, 96, '2016-12-04 18:36:57', 7.75),
(12, 12, 12, '2016-12-04 18:36:57', 1.25),
(1, 4, 96, '2016-12-04 18:37:36', 2),
(2, 4, 96, '2016-12-04 18:37:36', 4.5),
(4, 4, 96, '2016-12-04 18:37:36', 7.75),
(12, 12, 12, '2016-12-04 18:37:36', 1.25),
(1, 4, 96, '2016-12-04 20:14:28', 2),
(2, 4, 96, '2016-12-04 20:14:28', 4.5),
(4, 4, 96, '2016-12-04 20:14:28', 7.75),
(12, 12, 12, '2016-12-04 20:14:28', 1.25),
(1, 4, 96, '2016-12-04 20:17:17', 2),
(2, 4, 96, '2016-12-04 20:17:17', 4.75),
(4, 4, 96, '2016-12-04 20:17:17', 7.75),
(12, 12, 12, '2016-12-04 20:17:17', 1.1),
(12, 12, 12, '2016-12-04 20:21:16', 0),
(12, 12, 12, '2016-12-04 20:21:59', 0),
(1, 4, 96, '2016-12-04 20:25:01', 2),
(2, 4, 96, '2016-12-04 20:25:01', 4.75),
(4, 4, 96, '2016-12-04 20:25:01', 7.75),
(12, 12, 12, '2016-12-04 20:25:01', 1.1),
(1, 4, 96, '2016-12-04 20:26:50', 2),
(2, 4, 96, '2016-12-04 20:26:50', 4.5),
(4, 4, 96, '2016-12-04 20:26:50', 7.75),
(12, 12, 12, '2016-12-04 20:26:50', 1.25);

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `TYPE` varchar(15) NOT NULL,
  `count` float NOT NULL,
  `price` decimal(5,2) NOT NULL,
  `totalWorth` decimal(5,2) DEFAULT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`TYPE`, `count`, `price`, `totalWorth`, `DATE`) VALUES
('1x10', 0, '2.20', NULL, '2016-11-14 23:16:58'),
('1x12', 179, '3.00', NULL, '2016-11-14 23:16:58'),
('1x2', 117, '2.00', NULL, '2016-11-14 23:11:07'),
('1x3', 170, '4.00', NULL, '2016-11-14 23:16:58'),
('1x4', 22, '2.00', NULL, '2016-11-14 23:16:58'),
('1x6', 175, '1.00', NULL, '2016-11-14 23:16:58'),
('1x8', 178, '3.20', NULL, '2016-11-14 23:16:58'),
('2x10', 175, '3.00', NULL, '2016-11-14 23:18:37'),
('2x12', 172, '3.20', NULL, '2016-11-14 23:18:37'),
('2x2', 163, '3.00', NULL, '2016-11-14 23:16:58'),
('2x3', 166, '3.00', NULL, '2016-11-14 23:16:58'),
('2X4', 10, '4.50', '399.00', '2016-11-13 17:37:52'),
('2x6', 352, '4.50', '412.50', '2016-11-13 17:42:36'),
('2x8', 157, '1.10', NULL, '2016-11-14 23:18:37'),
('4x4', 110, '7.75', NULL, '2016-11-14 23:18:37'),
('4x6', 151, '3.00', NULL, '2016-11-14 23:18:37'),
('6x6', 144, '3.30', NULL, '2016-11-14 23:18:37'),
('8x8', 145, '5.20', NULL, '2016-11-14 23:18:37'),
('scrap', 2761.71, '1.25', '0.00', '2016-12-03 19:29:15');

-- --------------------------------------------------------

--
-- Table structure for table `inventoryreceipts`
--

CREATE TABLE `inventoryreceipts` (
  `id` int(11) NOT NULL,
  `orderNumber` int(10) NOT NULL,
  `type` varchar(10) NOT NULL,
  `count` int(11) NOT NULL,
  `price` decimal(15,2) NOT NULL,
  `total` decimal(15,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inventoryreceipts`
--

INSERT INTO `inventoryreceipts` (`id`, `orderNumber`, `type`, `count`, `price`, `total`) VALUES
(11, 0, '1x10', 49, '0.00', '0.00'),
(12, 0, '1x10', 39, '0.00', '0.00'),
(13, 0, '1x10', 38, '0.00', '0.00'),
(14, 0, '1x10', 37, '0.00', '0.00'),
(15, 0, '1x10', 36, '0.00', '0.00'),
(16, 0, '1x10', 26, '0.00', '0.00'),
(17, 0, '1x10', 25, '0.00', '0.00'),
(18, 0, '1x10', 24, '0.00', '0.00'),
(19, 4, '1x10', 23, '0.00', '0.00'),
(20, 4, '1x12', 190, '0.00', '0.00'),
(21, 4, '1x2', 100, '0.00', '0.00'),
(22, 4, '1x3', 200, '0.00', '0.00'),
(23, 4, '1x4', 200, '0.00', '0.00'),
(24, 4, '1x6', 200, '0.00', '0.00'),
(25, 4, '1x8', 200, '0.00', '0.00'),
(26, 4, '2x10', 200, '0.00', '0.00'),
(27, 4, '2x12', 200, '0.00', '0.00'),
(28, 4, '2x2', 200, '0.00', '0.00'),
(29, 4, '2x3', 200, '0.00', '0.00'),
(30, 4, '2X4', 200, '0.00', '0.00'),
(31, 4, '2X6', 200, '0.00', '0.00'),
(32, 4, '2x8', 200, '0.00', '0.00'),
(33, 4, '4x4', 200, '0.00', '0.00'),
(34, 4, '4x6', 200, '0.00', '0.00'),
(35, 4, '6x6', 200, '0.00', '0.00'),
(36, 4, '8x8', 200, '0.00', '0.00'),
(37, 5, '1x10', 22, '0.00', '0.00'),
(38, 5, '1x12', 190, '0.00', '0.00'),
(39, 5, '1x2', 100, '0.00', '0.00'),
(40, 5, '1x3', 200, '0.00', '0.00'),
(41, 5, '1x4', 200, '0.00', '0.00'),
(42, 5, '1x6', 200, '0.00', '0.00'),
(43, 5, '1x8', 200, '0.00', '0.00'),
(44, 5, '2x10', 200, '0.00', '0.00'),
(45, 5, '2x12', 200, '0.00', '0.00'),
(46, 5, '2x2', 200, '0.00', '0.00'),
(47, 5, '2x3', 200, '0.00', '0.00'),
(48, 5, '2X4', 200, '0.00', '0.00'),
(49, 5, '2X6', 200, '0.00', '0.00'),
(50, 5, '2x8', 200, '0.00', '0.00'),
(51, 5, '4x4', 200, '0.00', '0.00'),
(52, 5, '4x6', 200, '0.00', '0.00'),
(53, 5, '6x6', 200, '0.00', '0.00'),
(54, 5, '8x8', 200, '0.00', '0.00'),
(55, 6, '1x10', 21, '0.00', '0.00'),
(56, 6, '1x12', 188, '0.00', '0.00'),
(57, 6, '1x2', 97, '0.00', '0.00'),
(58, 6, '1x3', 196, '0.00', '0.00'),
(59, 7, '1x10', 19, '0.00', '0.00'),
(60, 8, '1x10', 18, '0.00', '0.00'),
(61, 9, '1x2', 93, '0.00', '0.00'),
(62, 10, '1x10', 17, '0.00', '0.00'),
(63, 11, '1x10', 16, '0.00', '0.00'),
(64, 12, '1x10', 2, '0.00', '0.00'),
(65, 13, '1x10', 7, '0.00', '0.00'),
(66, 14, '1x10', 0, '0.00', '0.00'),
(67, 14, '1x12', 186, '0.00', '0.00'),
(68, 14, '1x2', 90, '0.00', '0.00'),
(69, 14, '1x3', 184, '0.00', '0.00'),
(70, 14, '1x4', 195, '0.00', '0.00'),
(71, 14, '1x6', 194, '0.00', '0.00'),
(72, 14, '1x8', 193, '0.00', '0.00'),
(73, 14, '2x10', 192, '0.00', '0.00'),
(74, 14, '2x12', 191, '0.00', '0.00'),
(75, 14, '2x2', 190, '0.00', '0.00'),
(76, 14, '2x3', 189, '0.00', '0.00'),
(77, 14, '2X4', 188, '0.00', '0.00'),
(78, 14, '2X6', 187, '0.00', '0.00'),
(79, 14, '2x8', 186, '0.00', '0.00'),
(80, 14, '4x4', 185, '0.00', '0.00'),
(81, 14, '4x6', 184, '0.00', '0.00'),
(82, 14, '6x6', 183, '0.00', '0.00'),
(83, 14, '8x8', 182, '0.00', '0.00'),
(84, 15, '1x10', 0, '0.00', '0.00'),
(85, 15, '1x12', 2, '0.00', '0.00'),
(86, 15, '1x2', 3, '0.00', '0.00'),
(87, 15, '1x3', 4, '0.00', '0.00'),
(88, 15, '1x4', 5, '0.00', '0.00'),
(89, 15, '1x6', 6, '0.00', '0.00'),
(90, 15, '1x8', 7, '0.00', '0.00'),
(91, 15, '2x10', 8, '0.00', '0.00'),
(92, 15, '2x12', 9, '0.00', '0.00'),
(93, 15, '2x2', 10, '0.00', '0.00'),
(94, 15, '2x3', 11, '0.00', '0.00'),
(95, 15, '2X4', 12, '0.00', '0.00'),
(96, 15, '2X6', 13, '0.00', '0.00'),
(97, 15, '2x8', 14, '0.00', '0.00'),
(98, 15, '4x4', 15, '0.00', '0.00'),
(99, 15, '4x6', 16, '0.00', '0.00'),
(100, 15, '6x6', 17, '0.00', '0.00'),
(101, 15, '8x8', 18, '0.00', '0.00'),
(102, 16, '', 0, '0.00', '0.00'),
(103, 16, '', 1, '0.00', '0.00'),
(104, 16, '', 1, '0.00', '0.00'),
(105, 16, '', 2, '0.00', '0.00'),
(106, 16, '', 2, '0.00', '0.00'),
(107, 16, '', 1, '0.00', '0.00'),
(108, 16, '', 1, '0.00', '0.00'),
(109, 16, '1x10', 1, '0.00', '0.00'),
(110, 16, '1x10', 4, '0.00', '0.00'),
(111, 16, '1x10', 1, '0.00', '0.00'),
(112, 17, '1x10', 1, '0.00', '0.00'),
(113, 18, '1x10', 1, '0.00', '0.00'),
(114, 19, '1x10', 1, '0.00', '0.00'),
(115, 19, '1x12', 1, '0.00', '0.00'),
(116, 19, '1x2', 1, '0.00', '0.00'),
(117, 19, '1x3', 1, '0.00', '0.00'),
(118, 19, '1x4', 1, '0.00', '0.00'),
(119, 19, '1x6', 1, '0.00', '0.00'),
(120, 19, '1x8', 1, '0.00', '0.00'),
(121, 19, '2x10', 1, '0.00', '0.00'),
(122, 19, '2x12', 1, '0.00', '0.00'),
(123, 19, '2x2', 1, '0.00', '0.00'),
(124, 19, '2x3', 1, '0.00', '0.00'),
(125, 19, '2X4', 1, '0.00', '0.00'),
(126, 19, '2X6', 1, '0.00', '0.00'),
(127, 19, '2x8', 1, '0.00', '0.00'),
(128, 19, '4x4', 1, '0.00', '0.00'),
(129, 19, '4x6', 1, '0.00', '0.00'),
(130, 19, '6x6', 1, '0.00', '0.00'),
(131, 19, '8x8', 1, '0.00', '0.00'),
(132, 20, '1x10', 1, '0.00', '0.00'),
(133, 20, '1x12', 2, '0.00', '0.00'),
(134, 20, '', 0, '0.00', '0.00'),
(135, 21, '1x6', 3, '0.00', '0.00'),
(136, 22, '1x6', 3, '0.00', '0.00'),
(137, 23, '1x10', 30, '0.00', '0.00'),
(138, 23, '', 0, '0.00', '0.00'),
(139, 23, '1x3', 5, '0.00', '0.00'),
(140, 24, '2x2', 3, '0.00', '0.00'),
(141, 24, '4x4', 4, '0.00', '0.00'),
(142, 25, '2x2', 3, '0.00', '0.00'),
(143, 25, '4x4', 4, '0.00', '0.00'),
(144, 26, '2X4', 10, '0.00', '0.00'),
(145, 26, '6x6', 4, '0.00', '0.00'),
(146, 27, '1x2', 3000, '0.00', '0.00'),
(147, 27, '1x4', 1000, '0.00', '0.00'),
(148, 27, '2X4', 17000, '0.00', '0.00'),
(149, 27, '4x4', 4700, '0.00', '0.00'),
(150, 28, '1x10', 52, '0.00', '0.00'),
(151, 28, '1x4', 600, '0.00', '0.00'),
(152, 28, '2X4', 5500, '0.00', '0.00'),
(153, 29, '2X4', 1700, '0.00', '0.00'),
(154, 30, '1x4', 200, '2.00', '400.00');

-- --------------------------------------------------------

--
-- Table structure for table `logdemensions`
--

CREATE TABLE `logdemensions` (
  `WIDTH` int(11) NOT NULL,
  `HEIGHT` int(11) NOT NULL,
  `LENGTH` int(11) NOT NULL,
  `DATE` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='DEMENSIONS OF CUT LOGS';

--
-- Dumping data for table `logdemensions`
--

INSERT INTO `logdemensions` (`WIDTH`, `HEIGHT`, `LENGTH`, `DATE`) VALUES
(22, 24, 250, '2016-12-03 02:11:33'),
(17, 20, 305, '0000-00-00 00:00:00'),
(24, 27, 450, '0000-00-00 00:00:00'),
(45, 20, 400, '0000-00-00 00:00:00'),
(22, 20, 196, '0000-00-00 00:00:00'),
(17, 20, 305, '2016-12-03 03:08:02'),
(24, 27, 450, '2016-12-03 03:08:02'),
(45, 20, 400, '2016-12-03 03:08:02'),
(22, 20, 196, '2016-12-03 03:08:02'),
(7, 7, 300, '2016-12-03 03:57:09'),
(17, 20, 305, '2016-12-03 03:57:09'),
(24, 27, 450, '2016-12-03 03:57:09'),
(45, 20, 400, '2016-12-03 03:57:09'),
(22, 20, 196, '2016-12-03 03:57:09'),
(7, 7, 288, '2016-12-03 03:59:11'),
(17, 20, 305, '2016-12-03 03:59:11'),
(24, 27, 450, '2016-12-03 03:59:11'),
(45, 20, 400, '2016-12-03 03:59:11'),
(22, 20, 196, '2016-12-03 03:59:11'),
(7, 7, 289, '2016-12-03 04:00:17'),
(17, 20, 305, '2016-12-03 04:00:17'),
(24, 27, 450, '2016-12-03 04:00:17'),
(45, 20, 400, '2016-12-03 04:00:17'),
(22, 20, 196, '2016-12-03 04:00:17'),
(7, 7, 290, '2016-12-03 04:01:35'),
(17, 20, 305, '2016-12-03 04:01:35'),
(24, 27, 450, '2016-12-03 04:01:35'),
(45, 20, 400, '2016-12-03 04:01:35'),
(22, 20, 196, '2016-12-03 04:01:35'),
(17, 20, 305, '2016-12-03 19:17:34'),
(7, 7, 290, '2016-12-03 19:17:34'),
(24, 27, 450, '2016-12-03 19:17:34'),
(45, 20, 400, '2016-12-03 19:17:34'),
(22, 20, 196, '2016-12-03 19:17:34'),
(17, 20, 305, '2016-12-03 19:30:11'),
(7, 7, 290, '2016-12-03 19:30:11'),
(24, 27, 450, '2016-12-03 19:30:11'),
(45, 20, 400, '2016-12-03 19:30:11'),
(22, 20, 196, '2016-12-03 19:30:11'),
(17, 20, 305, '2016-12-03 19:31:43'),
(7, 7, 290, '2016-12-03 19:31:43'),
(24, 27, 450, '2016-12-03 19:31:43'),
(45, 20, 400, '2016-12-03 19:31:43'),
(22, 20, 196, '2016-12-03 19:31:43'),
(17, 20, 305, '2016-12-03 19:32:55'),
(7, 7, 290, '2016-12-03 19:32:55'),
(24, 27, 450, '2016-12-03 19:32:55'),
(45, 20, 400, '2016-12-03 19:32:55'),
(22, 20, 196, '2016-12-03 19:32:55'),
(17, 20, 305, '2016-12-03 19:34:31'),
(7, 7, 290, '2016-12-03 19:34:31'),
(24, 27, 450, '2016-12-03 19:34:31'),
(45, 20, 400, '2016-12-03 19:34:31'),
(22, 20, 196, '2016-12-03 19:34:31'),
(17, 20, 305, '2016-12-03 19:35:39'),
(7, 7, 290, '2016-12-03 19:35:39'),
(24, 27, 450, '2016-12-03 19:35:39'),
(45, 20, 400, '2016-12-03 19:35:39'),
(22, 20, 196, '2016-12-03 19:35:39'),
(24, 32, 287, '2016-12-03 19:41:32'),
(18, 16, 316, '2016-12-03 19:41:32'),
(24, 32, 287, '2016-12-03 19:42:00'),
(18, 16, 316, '2016-12-03 19:42:00'),
(24, 32, 287, '2016-12-03 19:52:28'),
(18, 16, 316, '2016-12-03 19:52:28'),
(24, 32, 287, '2016-12-03 19:53:16'),
(18, 16, 316, '2016-12-03 19:53:16'),
(24, 32, 287, '2016-12-03 20:02:43'),
(18, 16, 316, '2016-12-03 20:02:43'),
(24, 32, 287, '2016-12-03 20:30:05'),
(18, 16, 316, '2016-12-03 20:30:05'),
(24, 32, 287, '2016-12-03 20:32:05'),
(18, 16, 316, '2016-12-03 20:32:05'),
(24, 32, 287, '2016-12-03 20:36:02'),
(18, 16, 316, '2016-12-03 20:36:02'),
(24, 32, 287, '2016-12-03 20:37:03'),
(18, 16, 316, '2016-12-03 20:37:03'),
(24, 32, 287, '2016-12-03 20:37:54'),
(18, 16, 316, '2016-12-03 20:37:54'),
(24, 32, 287, '2016-12-03 20:38:37'),
(18, 16, 316, '2016-12-03 20:38:37'),
(24, 32, 287, '2016-12-03 20:39:04'),
(18, 16, 316, '2016-12-03 20:39:04'),
(24, 32, 287, '2016-12-03 20:39:12'),
(18, 16, 316, '2016-12-03 20:39:12'),
(24, 32, 287, '2016-12-03 20:39:25'),
(18, 16, 316, '2016-12-03 20:39:25'),
(24, 32, 287, '2016-12-03 20:39:32'),
(18, 16, 316, '2016-12-03 20:39:32'),
(24, 32, 287, '2016-12-03 20:39:43'),
(18, 16, 316, '2016-12-03 20:39:43'),
(24, 32, 287, '2016-12-03 20:47:52'),
(18, 16, 316, '2016-12-03 20:47:52'),
(24, 32, 287, '2016-12-03 20:52:30'),
(18, 16, 316, '2016-12-03 20:52:30'),
(24, 32, 287, '2016-12-04 00:44:58'),
(18, 16, 316, '2016-12-04 00:44:58'),
(24, 32, 287, '2016-12-04 17:50:39'),
(18, 16, 316, '2016-12-04 17:50:39'),
(21, 19, 317, '2016-12-04 17:50:39'),
(30, 31, 288, '2016-12-04 17:50:39'),
(24, 32, 287, '2016-12-04 17:51:34'),
(18, 16, 316, '2016-12-04 17:51:34'),
(21, 19, 317, '2016-12-04 17:51:34'),
(30, 31, 288, '2016-12-04 17:51:34'),
(24, 32, 287, '2016-12-04 18:35:38'),
(18, 16, 316, '2016-12-04 18:35:38'),
(21, 19, 317, '2016-12-04 18:35:38'),
(30, 31, 288, '2016-12-04 18:35:38'),
(24, 32, 287, '2016-12-04 18:36:17'),
(18, 16, 316, '2016-12-04 18:36:17'),
(21, 19, 317, '2016-12-04 18:36:17'),
(30, 31, 288, '2016-12-04 18:36:17'),
(24, 32, 287, '2016-12-04 18:36:45'),
(18, 16, 316, '2016-12-04 18:36:45'),
(21, 19, 317, '2016-12-04 18:36:45'),
(30, 31, 288, '2016-12-04 18:36:45'),
(22, 32, 99, '2016-12-04 18:36:45'),
(24, 32, 287, '2016-12-04 18:36:57'),
(18, 16, 316, '2016-12-04 18:36:57'),
(21, 19, 317, '2016-12-04 18:36:57'),
(30, 31, 288, '2016-12-04 18:36:57'),
(22, 32, 99, '2016-12-04 18:36:57'),
(2, 2, 2, '2016-12-04 18:36:57'),
(24, 32, 287, '2016-12-04 18:37:36'),
(18, 16, 316, '2016-12-04 18:37:36'),
(21, 19, 317, '2016-12-04 18:37:36'),
(30, 31, 288, '2016-12-04 18:37:36'),
(22, 32, 99, '2016-12-04 18:37:36'),
(1, 1, 1, '2016-12-04 18:37:36'),
(2, 2, 2, '2016-12-04 18:37:36'),
(24, 32, 287, '2016-12-04 20:14:28'),
(18, 16, 316, '2016-12-04 20:14:28'),
(21, 19, 317, '2016-12-04 20:14:28'),
(30, 31, 288, '2016-12-04 20:14:28'),
(22, 32, 99, '2016-12-04 20:14:28'),
(1, 1, 1, '2016-12-04 20:14:28'),
(2, 2, 2, '2016-12-04 20:14:28'),
(24, 32, 287, '2016-12-04 20:17:17'),
(18, 16, 316, '2016-12-04 20:17:17'),
(21, 19, 317, '2016-12-04 20:17:17'),
(30, 31, 288, '2016-12-04 20:17:17'),
(22, 32, 99, '2016-12-04 20:17:17'),
(1, 1, 1, '2016-12-04 20:17:17'),
(2, 2, 2, '2016-12-04 20:17:17'),
(24, 32, 287, '2016-12-04 20:25:01'),
(18, 16, 316, '2016-12-04 20:25:01'),
(21, 19, 317, '2016-12-04 20:25:01'),
(30, 31, 288, '2016-12-04 20:25:01'),
(22, 32, 99, '2016-12-04 20:25:01'),
(1, 1, 1, '2016-12-04 20:25:01'),
(2, 2, 2, '2016-12-04 20:25:01'),
(24, 32, 287, '2016-12-04 20:26:50'),
(18, 16, 316, '2016-12-04 20:26:50'),
(21, 19, 317, '2016-12-04 20:26:50'),
(30, 31, 288, '2016-12-04 20:26:50'),
(22, 32, 99, '2016-12-04 20:26:50'),
(1, 1, 1, '2016-12-04 20:26:50'),
(2, 2, 2, '2016-12-04 20:26:50');

-- --------------------------------------------------------

--
-- Table structure for table `receipts`
--

CREATE TABLE `receipts` (
  `id` int(11) NOT NULL,
  `orderNumber` int(10) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `Address` varchar(45) DEFAULT NULL,
  `City` varchar(45) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `Zip_Code` varchar(15) DEFAULT NULL,
  `DATE` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `receipts`
--

INSERT INTO `receipts` (`id`, `orderNumber`, `firstName`, `lastName`, `Address`, `City`, `State`, `Zip_Code`, `DATE`) VALUES
(19, 2, 'casdf', 'asdasd', 'asdasd', 'Quitman', 'GA', '123', '2016-11-14 22:13:00'),
(28, 3, 'asdasd', 'asd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 00:18:23'),
(29, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(30, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(31, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(32, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(33, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(34, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(35, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(37, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(38, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(39, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(41, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(43, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(44, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(45, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(46, 4, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '1231', '2016-11-15 03:26:02'),
(47, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(48, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(49, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(50, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(51, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(52, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(53, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(54, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(55, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(56, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(57, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(58, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(59, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(60, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(61, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(62, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(63, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(64, 5, 'sadasd', 'asdasd', 'asdad', 'Quitman', 'GA', 'asd', '2016-11-15 21:26:26'),
(65, 6, 'asdasd', 'asdasd', 'asdasd', 'Quitman', 'GA', '12312', '2016-11-25 23:14:51'),
(66, 7, 'dad', 'mom', '', 'Quitman', 'GA', '', '2016-11-26 22:20:42'),
(67, 8, 'dad', 'mom', '', 'Quitman', 'GA', '', '2016-11-26 22:21:41'),
(68, 9, 'dad', 'mom', '300 Cat', 'Quitman', 'GA', '12345', '2016-11-27 00:14:45'),
(69, 10, 'dad', 'mom', '333 cats', 'Quitman', 'GA', '', '2016-11-27 00:19:41'),
(70, 11, 'dad', 'mom', '300 cats', 'Quitman', 'GA', '12345', '2016-11-27 00:38:06'),
(71, 12, 'Tom', 'Brand', '200 Cats', 'Quitman', 'GA', '12345', '2016-11-27 00:46:42'),
(72, 13, 'Tom', 'Brand', '200 cats', 'Quitman', 'GA', '12345', '2016-11-27 00:49:50'),
(73, 14, 'Tim', 'Fry', '100 Cats Ln', 'Quitman', 'GA', '12345', '2016-11-27 01:12:37'),
(74, 15, 'Zed', 'Wrinkleton', '330 Dogsbetter rd', 'Quitman', 'GA', '12345', '2016-11-27 01:27:46'),
(75, 19, '', '', '', 'Quitman', 'GA', '', '2016-12-02 19:47:16'),
(76, 20, 'Bob', 'White', '100 cats', 'Quitman', 'GA', '12345', '2016-12-02 20:28:49'),
(77, 21, 'Ben ', 'Hafer', '105 BRecke', 'Homerville', 'GA', '31604', '2016-12-02 21:02:55'),
(78, 22, 'Ben ', 'Hafer', '105 BRecke', 'Homerville', 'GA', '31604', '2016-12-02 21:03:50'),
(79, 23, 'Gary ', 'Johnson', '105 Brecken', 'Quitman', 'GA', '4444', '2016-12-02 21:04:29'),
(80, 24, 'John', 'Smith', '33 Candy Lane', 'Waycross', 'GA', '31666', '2016-12-03 13:06:00'),
(81, 25, 'John', 'Smith', '33 Candy Lane', 'Waycross', 'GA', '31666', '2016-12-03 13:06:14'),
(82, 26, 'Gary ', 'Smith', '55 Bar', 'LakeCityMonticello', 'GA', '5555555', '2016-12-03 15:21:05'),
(83, 27, '', '', '', 'Quitman', 'GA', '', '2016-12-03 15:41:38'),
(84, 27, '', '', '', 'Quitman', 'GA', '', '2016-12-03 15:42:10'),
(85, 27, '', '', '', 'Quitman', 'GA', '', '2016-12-03 15:42:18'),
(86, 27, '', '', '', 'Quitman', 'GA', '', '2016-12-03 15:43:17'),
(87, 27, '', '', '', 'Quitman', 'GA', '', '2016-12-03 15:43:24'),
(88, 27, 'John ', 'Smith', '555 Garbage Lane', 'Jacksonville', 'FL', '555555', '2016-12-04 13:47:27'),
(89, 28, 'Bill', 'Smith', '444 Goarba lane', 'Nashville', 'GA', '55555', '2016-12-04 15:18:12'),
(90, 29, 'Dan ', 'Butler', '555 Smith Ddrive', 'Nashville', 'GA', '55555', '2016-12-04 15:27:58'),
(91, 30, 'Gary ', 'smith', '44 College', 'Quitman', 'GA', '33333', '2016-12-04 15:46:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`TYPE`);

--
-- Indexes for table `inventoryreceipts`
--
ALTER TABLE `inventoryreceipts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `receipts`
--
ALTER TABLE `receipts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Order_no` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `inventoryreceipts`
--
ALTER TABLE `inventoryreceipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;
--
-- AUTO_INCREMENT for table `receipts`
--
ALTER TABLE `receipts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;