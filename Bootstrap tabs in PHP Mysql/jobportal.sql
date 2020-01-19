-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2020 at 12:09 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobdetails`
--

CREATE TABLE `jobdetails` (
  `images` varchar(500) NOT NULL,
  `jobid` int(30) NOT NULL,
  `jobrole` varchar(255) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `verify` varchar(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobdetails`
--

INSERT INTO `jobdetails` (`images`, `jobid`, `jobrole`, `skills`, `companyname`, `date`, `verify`) VALUES
('it_logo_2018.jpg', 1, 'IT', 'B.TECH', 'Wipro', '2020-01-14 18:30:00', '1'),
('illustration.jpg', 2, 'Automotive', 'BSC', 'TCS', '2020-01-14 08:27:17', '1'),
('NT.jpg', 3, 'Non-IT', 'BBA', 'Infosys', '2020-01-17 08:30:12', '1'),
('it_logo_2018.jpg', 4, 'IT', 'B.Tech', 'Cisco', '2020-01-16 08:33:27', '1'),
('illustration.jpg', 5, 'Automotive', 'B.E', 'EY', '2020-01-15 23:02:00', '1'),
('NT.jpg', 6, 'Non-IT', 'MCA', 'Thomson Reuters', '2020-01-15 08:35:34', '1'),
('it_logo_2018.jpg', 7, 'IT', 'M.Tech', 'Emphasys', '2020-01-14 08:36:50', '1'),
('illustration.jpg', 8, 'Automotive', 'B.tech', 'Satyam', '2020-01-18 08:39:00', '1'),
('NT.jpg', 9, 'Non-IT', 'MCA', 'Cognizant', '2020-01-15 08:40:14', '1'),
('it_logo_2018.jpg', 10, 'IT', 'MS', 'Dell', '2020-01-17 08:41:37', '1'),
('illustration.jpg', 11, 'Automotive', 'B.Com', 'ITC', '2020-01-14 08:42:47', '1'),
('NT.jpg', 12, 'Non-IT', 'MBA', 'SBI', '2020-01-15 08:43:56', '1'),
('it_logo_2018.jpg', 13, 'IT', 'MS', 'Sun Pharma', '2019-01-17 08:45:20', '0'),
('illustration.jpg', 14, 'Automotive', 'MCA', 'TCS', '2020-01-15 08:46:25', '0'),
('NT.jpg', 15, 'Non-IT', 'MCA', 'HDFC', '2020-01-14 08:47:14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `requirement`
--

CREATE TABLE `requirement` (
  `jobid` int(11) NOT NULL,
  `requirement_name` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requirement`
--

INSERT INTO `requirement` (`jobid`, `requirement_name`) VALUES
(1, 'Automotive'),
(2, 'IT'),
(3, 'Non-IT');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobdetails`
--
ALTER TABLE `jobdetails`
  ADD PRIMARY KEY (`jobid`);

--
-- Indexes for table `requirement`
--
ALTER TABLE `requirement`
  ADD PRIMARY KEY (`jobid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobdetails`
--
ALTER TABLE `jobdetails`
  MODIFY `jobid` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `requirement`
--
ALTER TABLE `requirement`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
