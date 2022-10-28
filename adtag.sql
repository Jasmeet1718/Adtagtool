-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2022 at 01:14 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `adtag`
--

-- --------------------------------------------------------

--
-- Table structure for table `adtagdata`
--

CREATE TABLE `adtagdata` (
  `id` int(100) NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `create_time` time NOT NULL DEFAULT current_timestamp(),
  `developer_name` varchar(200) NOT NULL,
  `update_time` datetime NOT NULL DEFAULT current_timestamp(),
  `update_developer_name` varchar(255) NOT NULL,
  `active_time` datetime NOT NULL,
  `analytic_name` varchar(100) NOT NULL,
  `adtag_type` varchar(100) NOT NULL,
  `geo` varchar(100) NOT NULL,
  `fcat_n` varchar(8) NOT NULL,
  `campaign_name` varchar(100) NOT NULL,
  `master_client` varchar(100) NOT NULL,
  `client` varchar(100) NOT NULL,
  `fcat` varchar(100) NOT NULL,
  `publisher` varchar(100) NOT NULL,
  `dims` varchar(200) NOT NULL,
  `status` varchar(12) NOT NULL,
  `approval` varchar(3) NOT NULL DEFAULT '0',
  `client_name` varchar(200) NOT NULL,
  `client_time` datetime NOT NULL,
  `remark` varchar(1000) NOT NULL,
  `status_v` varchar(20) NOT NULL DEFAULT 'staging',
  `veena_name` varchar(100) NOT NULL,
  `veena_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `adtagdata`
--

INSERT INTO `adtagdata` (`id`, `date`, `create_time`, `developer_name`, `update_time`, `update_developer_name`, `active_time`, `analytic_name`, `adtag_type`, `geo`, `fcat_n`, `campaign_name`, `master_client`, `client`, `fcat`, `publisher`, `dims`, `status`, `approval`, `client_name`, `client_time`, `remark`, `status_v`, `veena_name`, `veena_time`) VALUES
(125, '2022-09-24', '13:12:38', '', '2022-10-26 20:40:06', 'jasmeet.singh@hockeycurve.com', '2022-10-13 12:49:10', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', 'true', 'fcat_nan', 'test125', 'plum', 'plumgeo', '', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', 'GTG', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:50:30'),
(126, '2022-09-24', '13:12:38', '', '0000-00-00 00:00:00', '', '2022-10-13 11:38:10', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', 'true', '', 'pavan geo demo', 'plum', 'plumgeo', 'plumone', 'oneindia', '300x250', 'active', '0', '', '0000-00-00 00:00:00', '2', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:10:11'),
(127, '2022-09-26', '13:12:38', '', '0000-00-00 00:00:00', '', '2022-10-13 11:52:16', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', '', 'plum search', 'plum', 'plumsearch', 'pldc4js', 'oneindia', '300x250', 'active', '0', '', '0000-00-00 00:00:00', 'gtg', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:22:41'),
(128, '2022-10-03', '13:12:38', '', '2022-10-21 21:34:57', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', 'Dv360', 'true', 'fcat_nan', 'made by jasmeet', 'apv', 'aprimeauto', 'jsmet', 'DBM', '300x250,300x600,320x480', 'staging', '0', '', '0000-00-00 00:00:00', '4', 'active', 'apowar@hockeycurve.com', '2022-10-13 03:16:56'),
(129, '2022-10-03', '13:16:20', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Dv360', '', '', 'test on oct3 13:16', 'mpl', 'mpl1auto', 'mpljs', 'oneindia', '300x250', 'active', '1', 'MPL', '0000-00-00 00:00:00', '5', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:39:57'),
(130, '2022-10-03', '13:18:15', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Dv360', '', '', 'test on oct3 13:20', 'mpl', 'mpl1auto', 'mpljs', 'oneindia', '300x250', 'active', '0', '', '0000-00-00 00:00:00', '6', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:40:02'),
(131, '2022-10-03', '13:20:58', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', '', '', 'demo title', 'mpl', 'mpl1auto', 'mpljs', 'oneindia', '300x250', 'active', '0', '', '0000-00-00 00:00:00', '7', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:40:11'),
(132, '2022-10-03', '14:12:16', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', '', '', 'APV-lord of the rings', 'apv', 'aprimeauto', 'jsvide', 'oneindia', '300x250', 'active', '1', '', '0000-00-00 00:00:00', '8', 'active', 'apowar@hockeycurve.com', '2022-10-13 11:42:43'),
(133, '2022-10-03', '15:19:47', '', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Dv360', '', '', 'mpl ki ad', 'mpl', 'mpl1auto', 'mpljs', 'oneindia', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '9', 'active', 'apowar@hockeycurve.com', '2022-10-13 12:47:36'),
(134, '2022-10-03', '19:23:29', 'jasmeet.singh@hockeycurve.com', '2022-10-27 12:30:39', 'jasmeet.singh@hockeycurve.com', '2022-10-03 15:50:45', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', 'fcat_nan', 'jasmeet', 'apv', 'aprimeauto', '', 'DBM', '300x250,300x600,160x600,320x480', 'active', '0', '', '0000-00-00 00:00:00', '10', 'active', 'apowar@hockeycurve.com', '2022-10-27 17:56:08'),
(136, '2022-10-04', '19:25:02', 'jasmeet.singh@hockeycurve.com', '2022-10-22 11:51:02', 'jasmeet.singh@hockeycurve.com', '2022-10-04 11:44:49', 'raj.p@hockeycurve.com', 'Dv360', '', 'fcat_nan', 'saleem GTG', 'apv', 'aprimeauto', 'apammu', 'tv9', '300x250,160x600,320x50,320x480', 'active', '1', '', '0000-00-00 00:00:00', '11', 'active', 'apowar@hockeycurve.com', '2022-10-27 17:56:18'),
(137, '2022-10-04', '15:35:39', 'sapna.g@hockeycurve.com', '2022-10-22 12:03:32', 'jasmeet.singh@hockeycurve.com', '2022-10-04 16:05:51', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', 'fcat_nan', 'Aprime', 'apv', 'aprimeauto', 'kgftoen', '', '300x250', 'active', '1', 'Amazon Prime', '0000-00-00 00:00:00', '12', 'active', 'apowar@hockeycurve.com', '2022-10-28 12:33:33'),
(138, '2022-10-04', '16:23:22', 'mohamed.s@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-04 16:24:03', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'APV - Maja Ma - Launch - Watch Now - Phase 2 - Indian Express', 'apv', 'aprimeauto', 'jamaj', '', '160x600,300x250', 'active', '1', 'Amazon Prime', '0000-00-00 00:00:00', '13', 'staging', 'apowar@hockeycurve.com', '2022-10-28 12:54:24'),
(139, '2022-10-04', '16:27:56', 'mohamed.s@hockeycurve.com', '2022-10-21 19:31:28', 'jasmeet.singh@hockeycurve.com', '2022-10-04 16:28:44', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'jasmeet', 'apv', 'aprimeauto', 'jsmet', '', '160x600', 'active', '1', 'Amazon Prime', '0000-00-00 00:00:00', '14', 'staging', 'apowar@hockeycurve.com', '2022-10-28 12:49:24'),
(140, '2022-10-05', '14:33:43', 'mohamed.s@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-06 11:25:20', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'APV - Maja Ma - Launch - Watch Now', 'apv', 'aprimeauto', 'majaidivas', '', '300x250', 'staging', '1', 'Amazon Prime', '2022-10-05 14:50:45', '15', 'staging', 'apowar@hockeycurve.com', '2022-10-28 12:49:25'),
(141, '2022-10-06', '12:39:56', 'mohamed.s@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-06 12:40:53', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'APV - Maja Ma - Watch Now', 'apv', 'aprimeauto', 'majpkl', '', '300x250', 'active', '1', 'Amazon Prime', '2022-10-06 12:41:23', '16', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:21'),
(142, '2022-10-06', '16:59:28', 'mohamed.s@hockeycurve.com', '2022-10-21 21:27:26', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', 'Dv360', 'true', 'fcat_nan', 'Hiveminds - Tanishq  - Canvas Flip', 'tanishq', 'tanishqflip', 'tnhqfp', '', '300x600', 'active', '1', 'tanishq', '2022-10-08 14:27:04', '17', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:24'),
(143, '2022-10-06', '18:13:51', 'mohamed.s@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-06 18:17:04', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', '', 'Hiveminds - Tanishq - Dc1', 'tanishq', 'tanishqvideo', 'tjasvid', '', '300x600', 'active', '1', 'tanishq', '2022-10-06 18:34:34', '18', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:28'),
(144, '2022-10-07', '16:52:51', 'jasmeet.singh@hockeycurve.com', '2022-10-22 14:39:21', 'jasmeet.singh@hockeycurve.com', '2022-10-07 16:54:17', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', 'fcat_nan', 'final test ', 'apv', 'aprimeauto', 'mpljs', 'oneindia', '300x250', 'active', '1', 'Amazon Prime', '2022-10-07 16:54:31', '19', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:31'),
(145, '2022-10-07', '17:01:32', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-07 17:04:24', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'saleem ki demand pe ', 'apv', 'aprimeauto', 'saleemjs', '', '300x250', 'staging', '1', 'Amazon Prime', '2022-10-07 17:04:37', '20', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:34'),
(146, '2022-10-07', '17:46:41', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-07 17:48:38', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'Test for veena', 'mpl', 'mpl1auto', 'mpljs', '', '300x250', 'active', '1', 'MPL', '2022-10-07 17:49:14', '21', 'staging', 'apowar@hockeycurve.com', '2022-10-13 11:08:37'),
(147, '2022-10-07', '18:16:40', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-07 18:18:21', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'tanishq video', 'tanishq', 'tanishqvideo', 'tjasvid', '', '300x600', 'active', '1', 'tanishq', '2022-10-08 13:01:57', '22\n', 'active', 'apowar@hockeycurve.com', '2022-10-13 10:14:56'),
(148, '2022-10-08', '14:46:59', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-08 14:48:55', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'jass demo ', 'apv', 'mpl1auto', 'mpljs', '', '300x250', 'active', '1', 'Amazon Prime', '2022-10-08 14:50:28', '23', 'active', 'apowar@hockeycurve.com', '2022-10-13 10:12:48'),
(149, '2022-10-08', '14:52:40', 'mohamed.s@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-08 14:56:15', 'vishwadeep.sonawale@hockeycurve.com', 'Dv360', '', '', 'final test by saleem', 'tanishq', 'tanishqcaros', 'tancrdc', '', '300x600', 'active', '1', 'tanishq', '2022-10-08 14:57:06', '24', 'active', 'apowar@hockeycurve.com', '2022-10-13 12:41:12'),
(150, '2022-10-10', '15:22:51', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '2022-10-10 15:35:36', 'vishwadeep.sonawale@hockeycurve.com', 'DCM', '', '', 'Demo on 10/10', 'mpl', 'mpl1auto', 'mpljs', '', '300x250', 'active', '1', 'MPL', '2022-10-10 15:36:04', '25', 'active', 'apowar@hockeycurve.com', '0000-00-00 00:00:00'),
(151, '2022-10-10', '20:01:16', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', '', '', 'pooja ad on 10/10', 'mpl', 'mpl1auto', 'mpljs', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '26', 'active', 'apowar@hockeycurve.com', '0000-00-00 00:00:00'),
(152, '2022-10-13', '12:02:49', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Dv360', '', '', 'oct 13', 'tanishq', 'tanishqvideo', 'tjasvid', '', '300x600', 'staging', '0', '', '0000-00-00 00:00:00', 'GTG', 'active', 'apowar@hockeycurve.com', '2022-10-13 12:04:21'),
(153, '2022-10-13', '12:22:44', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', '', '', 'MPL', 'mpl', 'mpl1auto', 'mpljs', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '27\n', 'active', 'apowar@hockeycurve.com', '2022-10-13 12:28:46'),
(154, '2022-10-13', '03:21:34', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', '', '', 'APV-lord of the rings', 'apv', 'aprimeauto', 'freejas', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00'),
(155, '2022-10-17', '16:00:49', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', 'fcat_nan', '', 'smdd', 'ds', 'scac', '', '', 'sdaad', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00'),
(156, '2022-10-17', '16:36:03', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', 'fcat_nan', '', 'fcat none test', 'tanishq', 'mpl1auto', 'Nan', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00'),
(157, '2022-10-17', '16:36:16', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'DCM', 'fcat_nan', '', 'test', 'tanishq', 'mpl1auto', '', '', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00'),
(158, '2022-10-17', '16:59:00', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', '0000-00-00 00:00:00', '', 'Dv360', 'fcat_nan', '', 'fcat', 'fcat', 'mpl1auto', '', '', '300x600', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00'),
(159, '2022-10-26', '20:30:08', 'jasmeet.singh@hockeycurve.com', '2022-10-26 20:38:06', 'jasmeet.singh@hockeycurve.com', '0000-00-00 00:00:00', '', 'Dv360', '', 'fcat_nan', 'demo title', 'apv', 'mpl1auto', 'hello', 'oneindia', '300x250', 'staging', '0', '', '0000-00-00 00:00:00', '', 'staging', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(15) NOT NULL,
  `team` varchar(15) NOT NULL,
  `role` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `team`, `role`) VALUES
(1, 'mohamed.s@hockeycurve.com', 'garud', 'Garud', 0),
(2, 'sapna.g@hockeycurve.com', 'nischay', 'Nischay', 0),
(3, 'vishwadeep.sonawale@hockeycurve.com', 'gati', 'Gati', 1),
(4, 'Amazon Prime', 'aprime', 'apv', 2),
(5, 'MPL', 'mpl', 'mpl', 2),
(6, 'jasmeet.singh@hockeycurve.com', 'garud', 'Garud', 0),
(7, 'mahesh.b@hockeycurve.com', 'nischay', 'Nischay', 0),
(8, 'mridul@hockeycurve.com', 'nischay', 'Nischay', 0),
(9, 'pavan.vichare@hockeycurve.com', 'garud', 'Garud', 0),
(10, 'pooja@hockeycurve.com', 'nischay', 'Nischay', 0),
(11, 'adithi@hockeycurve.com', ' nischay', 'Nischay', 0),
(12, 'aneeshk@hockeycurve.com', 'garud', 'Garud', 0),
(13, 'prathamesh.bhagwat@hockeycurve.com', 'garud', 'Garud', 0),
(14, 'nikhil.g@hockeycurve.com', 'garud', 'Garud', 0),
(15, 'nikita.d@hockeycurve.com', 'veena', 'Veena', 3),
(16, 'siddhi.phalke@hockeycurve.com', 'veena', 'Veena', 3),
(17, 'raj.p@hockeycurve.com', 'gati', 'Gati', 1),
(18, 'hariharanv@hockeycurve.com', 'veena', 'Veena', 3),
(19, 'tejshwini@hockeycurve.com', 'veena', 'Veena', 3),
(20, 'apowar@hockeycurve.com', 'veena', 'Veena', 3),
(21, 'ninad.ganu@hockeycurve.com', 'veena', 'Veena', 3),
(22, 'bavika@hockeycurve.com', 'veena', 'Veena', 3),
(23, 'dinesh@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(24, 'priya.rajput@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(25, 'naved.chowdhary@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(26, 'manish.madhavi@hockeycurve.com', 'lakshay', 'Lakshay', 0),
(27, 'tanishq', 'tanishq', 'tanishq', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adtagdata`
--
ALTER TABLE `adtagdata`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adtagdata`
--
ALTER TABLE `adtagdata`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
