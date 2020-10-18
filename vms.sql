-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2020 at 11:49 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vms`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(100) NOT NULL,
  `department_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department_name`) VALUES
(1, 'CSE'),
(2, 'Juvenile'),
(3, 'Not Assigned'),
(4, 'Kitchen'),
(5, 'Cell Blocks'),
(6, 'Sanitation'),
(7, 'MAIN OFFICE'),
(8, 'Correction Dept'),
(9, 'new');

-- --------------------------------------------------------

--
-- Table structure for table `emp_table`
--

CREATE TABLE `emp_table` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` int(15) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `age` int(10) NOT NULL,
  `skills` varchar(50) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `sentence` varchar(100) NOT NULL,
  `behave` varchar(150) NOT NULL,
  `comment` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emp_table`
--

INSERT INTO `emp_table` (`id`, `name`, `phone`, `gender`, `age`, `skills`, `department_name`, `sentence`, `behave`, `comment`) VALUES
(4, 'george kimani', 789564230, 'Male', 56, 'machine operator', 'CSE', '15yrs', 'calm and collected', 'Prisoner is showing signs of depression'),
(5, 'JG Kamotho', 722568943, 'Male', 56, 'cyclist', 'CSE', '10yrs', 'serial offender', 'Prisoner is okay'),
(6, 'anisa', 298651320, 'Female', 28, 'cleaner', 'CSE', '2 yrs', 'First time offender', 'prisoner needs counselling'),
(7, 'kariuki chotara', 789564230, 'Male', 69, 'banker', 'CSE', '3 years', 'mischevious', 'prisoner needs medical attention'),
(8, 'anisa taru', 756849623, 'Female', 23, 'chef', 'CSE', '8 yrs', 'mild but dangerous', 'prisoner is showing slights signs of pneumonia'),
(9, 'anisa', 756849623, 'Male', 56, 'truck driver', 'CSE', '5 years', 'moderate', 'prisoner is fine'),
(10, 'k abubakar', 789564230, 'Female', 28, 'farmer', 'CSE', '12 years', 'serial offender', 'prisoner to serve 3 months in solitary confinement'),
(11, 'kariuki chotara', 0, 'Male', 57, 'farmer', 'Cell Blocks', '2.5 years', 'First time offender', 'prisoner to meet parole board in 3 months'),
(12, 'jm kariuki', 722568943, 'Male', 63, 'businessman', 'Correction Dept', '4 years', 'moderate', 'prisoner is well behaved'),
(13, 'Jm weru Kamotho', 722568943, 'Male', 56, 'farmer', 'Not Assigned', '1 years', 'serial offender', 'Prisoner is showing signs of asthma attacks');

-- --------------------------------------------------------

--
-- Table structure for table `forgot`
--

CREATE TABLE `forgot` (
  `id` int(10) NOT NULL,
  `username` varchar(200) NOT NULL,
  `OTP` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `forgot`
--

INSERT INTO `forgot` (`id`, `username`, `OTP`) VALUES
(3, 'swaleh', 6485),
(4, 'abubakar', 8794),
(5, 'admin', 4119);

-- --------------------------------------------------------

--
-- Table structure for table `inquery`
--

CREATE TABLE `inquery` (
  `Id` int(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Phone` varchar(100) NOT NULL,
  `Image` varchar(55555) NOT NULL,
  `Department` varchar(100) NOT NULL,
  `Person_Meet` varchar(100) NOT NULL,
  `In_Time` varchar(5) NOT NULL,
  `Out_Time` varchar(5) NOT NULL,
  `qr_code` varchar(2500) NOT NULL,
  `Date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `inquery`
--

INSERT INTO `inquery` (`Id`, `Name`, `Gender`, `Phone`, `Image`, `Department`, `Person_Meet`, `In_Time`, `Out_Time`, `qr_code`, `Date`) VALUES
(57, 'johnie', 'male', '0722000000', 'images/1630314954.png', 'IT', 'Karan Mahajan', '08:16', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1468733582&choe=&chld=|>', '2020-02-26'),
(58, 'johnie', 'male', '0722000000', 'images/868010506.png', 'CSE', 'Karan Mahajan', '08:16', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1242436026&choe=&chld=|>', '2020-02-26'),
(59, 'johnie', 'male', '0722000000', 'images/752264943.png', 'CSE', 'Karan Mahajan', '08:21', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1463156004&choe=&chld=|>', '2020-02-26'),
(60, 'johnie', 'male', '0722000000', 'images/2048857766.png', 'CSE', 'Karan Mahajan', '08:22', '08:30', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=747847319&choe=&chld=|>', '2020-02-26'),
(63, 'johnie', 'male', '0723586963', 'images/1472906461.png', 'CSE', 'Karan Mahajan', '10:03', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1457479574&choe=&chld=|>', '2020-02-27'),
(64, 'marco polo', 'female', '0710456789', 'images/780197593.png', 'CSE', 'johnie yuma', '10:10', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=320904658&choe=&chld=|>', '2020-02-27'),
(65, 'james ndau', 'male', '0789564231', 'images/371354926.png', 'APPLIED SCIENCE', 'johnie yuma', '10:15', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=722537630&choe=&chld=|>', '2020-02-27'),
(66, 'james ndau', 'male', '0789564231', 'images/443749572.png', 'CSE', 'Karan Mahajan', '10:32', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1382167082&choe=&chld=|>', '2020-02-27'),
(67, 'james ndau', 'male', '0789564231', 'images/1456505684.png', 'CSE', 'Karan Mahajan', '10:32', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=2081277861&choe=&chld=|>', '2020-02-27'),
(68, 'james ndau', 'male', '0789564231', '', 'CSE', 'Karan Mahajan', '08:04', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=75280135&choe=&chld=|>', '2020-02-27'),
(69, 'james ndau', 'male', '0789564231', '12345', 'CSE', 'Karan Mahajan', '08:05', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=107300697&choe=&chld=|>', '2020-02-27'),
(70, 'james ndau', 'male', '0789564231', '12345', 'CSE', 'Karan Mahajan', '08:16', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=591404396&choe=&chld=|>', '2020-02-27'),
(71, '', 'male', '0756849623', '12345', 'CSE', 'Karanja Kimura', '04:51', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=241994986&choe=&chld=|>', '2020-03-02'),
(72, '', 'male', '0756849623', '12345', 'CSE', 'Karanja Kimura', '04:52', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1173192082&choe=&chld=|>', '2020-03-02'),
(73, 'anisa', 'male', '0756849623', '12345', 'CSE', 'Karanja Kimura', '04:56', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=761592113&choe=&chld=|>', '2020-03-02'),
(74, '', '', '0756897456', '12345', 'CSE', 'Karanja Kimura', '06:18', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=2043850299&choe=&chld=|>', '2020-03-02'),
(75, 'k abubakar', 'male', '1234567890', '12345', 'Not Assigned', 'Karanja Kimura', '12:45', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1816094260&choe=&chld=|>', '2020-03-03'),
(76, 'k abubakar', 'female', '0000000000', '12345', 'Not Assigned', 'kariuki chotara', '03:39', '06:25', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=510265097&choe=&chld=|>', '2020-03-04'),
(77, 'JG Kamotho', 'male', '0789564230', '12345', 'Not Assigned', 'george kimani', '03:42', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1118989856&choe=&chld=|>', '2020-03-04'),
(78, 'JG Kamotho', 'male', '0789564230', '12345', 'CSE', 'george kimani', '03:43', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=299989807&choe=&chld=|>', '2020-03-04'),
(79, 'JG Kamotho', 'male', '0789564230', '12345', 'CSE', 'george kimani', '03:44', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1651208803&choe=&chld=|>', '2020-03-04'),
(80, 'anisa taru', 'female', '0756849623', '12345', 'Cell Blocks', 'george kimani', '03:44', '06:25', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=107033810&choe=&chld=|>', '2020-03-04'),
(81, 'kariuki chotara', 'male', '0298651320', '12345', 'Not Assigned', 'george kimani', '03:45', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=336507652&choe=&chld=|>', '2020-03-04'),
(82, 'kariuki chotara', 'male', '0298651320', '12345', 'CSE', 'george kimani', '03:46', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1591770085&choe=&chld=|>', '2020-03-04'),
(83, '', '', '0756897456', '12345', 'CSE', 'george kimani', '03:51', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=569136129&choe=&chld=|>', '2020-03-04'),
(84, 'anisa taru', 'female', '0722568943', '12345', 'Kitchen', 'george kimani', '03:54', '06:25', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1814171091&choe=&chld=|>', '2020-03-04'),
(85, 'JG Kamotho', 'male', '0795468759', '12345', 'Cell Blocks', 'george kimani', '03:54', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=1864059417&choe=&chld=|>', '2020-03-04'),
(86, 'abedi', 'male', '0756428723', '12345', 'Not Assigned', 'k abubakar', '02:41', '', 'https://chart.googleapis.com/chart?cht=qr&chs=120x120&chl=898587686&choe=&chld=|>', '2020-03-05');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(10) NOT NULL,
  `username` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `password` varchar(500) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `image` varchar(500) NOT NULL,
  `user` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `username`, `name`, `gender`, `password`, `phone`, `image`, `user`) VALUES
(3, 'admin', 'swaleh', 'Female', '123', '0722000000', 'FACES.jpg', 'admin'),
(11, 'warden', 'warden', 'Male', '7861', '0721000223', 'googles-new-logo-5078286822539264.2-hp.gif', 'warden'),
(13, 'user', 'k abubakar', 'Male', '321', '0789564231', 'coffe.jpg', 'visitor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_name`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indexes for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD PRIMARY KEY (`id`),
  ADD KEY `department_name` (`department_name`);

--
-- Indexes for table `forgot`
--
ALTER TABLE `forgot`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquery`
--
ALTER TABLE `inquery`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `emp_table`
--
ALTER TABLE `emp_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `forgot`
--
ALTER TABLE `forgot`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `inquery`
--
ALTER TABLE `inquery`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `login_user`
--
ALTER TABLE `login_user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `emp_table`
--
ALTER TABLE `emp_table`
  ADD CONSTRAINT `emp_table_ibfk_1` FOREIGN KEY (`department_name`) REFERENCES `department` (`department_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
