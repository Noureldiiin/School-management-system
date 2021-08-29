-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 29, 2021 at 10:26 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school management`
--
CREATE DATABASE IF NOT EXISTS `school management` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `school management`;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `cid` int(11) NOT NULL,
  `classname` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`cid`, `classname`, `section`) VALUES
(2, '3', 'B'),
(3, '2', 'A'),
(4, '1', 'A'),
(5, '5', 'D'),
(6, '5', 'C'),
(7, '5', 'C'),
(9, '8', 'B');

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `eid` int(11) NOT NULL,
  `examname` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`eid`, `examname`, `term`, `date`, `class`, `section`, `subject`) VALUES
(1, 'Final', '1st', '2021-05-19', '3', 'B', 'Arabic'),
(2, 'Midterm', '1st', '2021-05-31', '1', 'A', 'Math'),
(3, 'kgk', '1st', '2021-06-17', '2', 'D', 'Geo'),
(4, 'Final', '2nd', '2021-06-05', '3', 'A', 'Arabic'),
(5, 'Final', '2nd', '2021-06-12', '1', 'D', 'Science'),
(6, 'Final', '1st', '2021-08-31', '1', 'B', 'Math');

-- --------------------------------------------------------

--
-- Table structure for table `librarysystem`
--

CREATE TABLE `librarysystem` (
  `requestnum` int(11) NOT NULL,
  `bookname` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `librarysystem`
--

INSERT INTO `librarysystem` (`requestnum`, `bookname`, `category`) VALUES
(34, 'k', 'Programming'),
(35, 'kk', 'Programming');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `id` int(11) NOT NULL,
  `stid` int(11) NOT NULL,
  `studentname` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `term` varchar(255) NOT NULL,
  `mark` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`id`, `stid`, `studentname`, `class`, `subject`, `term`, `mark`) VALUES
(8, 5, 'Nour Mohamed', '3', 'English', '1st', 20),
(9, 6, 'Mos fff', '3', 'Arabic', '1st', 20),
(10, 7, 'gf ff', '3', 'Arabic', '1st', 20),
(11, 5, 'Nour Mohamed', '3', 'English', '1st', 20),
(12, 6, 'Mos fff', '3', 'English', '2nd', 20),
(13, 7, 'gf ff', '3', 'English', '1st', 20),
(14, 8, 'l gg', '8', 'Math', '1st', 20);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stid` int(11) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `dateofbirth` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` int(11) NOT NULL,
  `class` varchar(255) NOT NULL,
  `section` varchar(255) NOT NULL,
  `paid` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stid`, `firstname`, `lastname`, `dateofbirth`, `gender`, `phone`, `address`, `username`, `password`, `class`, `section`, `paid`) VALUES
(5, 'Nour', 'Mohamed', '2021-06-24', 'Male', 554, 'dffd', 'Noor', 123, '3', 'B', 'No'),
(6, 'Mos', 'fff', '2021-06-30', 'Male', 54854, 'dds', 'k', 123, '3', 'B', 'No'),
(7, 'gf', 'ff', '2021-06-18', 'Male', 4545, 'ssd', 'p', 123, '3', 'B', 'No'),
(8, 'l', 'gg', '2021-06-25', 'Male', 124, 'ff', 'l', 123, '8', 'C', 'No'),
(9, 'f', 'd', '2021-08-20', 'Male', 33, 's', 'gg', 123, '3', 'B', 'No'),
(11, 'f', 'h', '2021-08-14', 'Male', 2, '3', 'y', 1, '3', 'B', 'Yes'),
(12, 'c', 's', '2021-08-21', 'Male', 2, 'd', 'c', 123, '2', 'C', 'Yes'),
(13, 'j', 'h', '2021-08-20', 'Male', 5, 'l', 'o', 123, '2', 'A', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int(11) NOT NULL,
  `subjectname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `subjectname`) VALUES
(1, 'Arabic'),
(3, 'Science'),
(4, 'English'),
(5, 'Math'),
(6, 'Geo');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `qual` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `phone` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `log_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `Id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `uname` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `utype` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`Id`, `name`, `phone`, `address`, `uname`, `password`, `utype`) VALUES
(1, 'Nour', 1112481898, 'ssdsdf', 'Nour', '123', 'Admin'),
(3, 'Mohammed', 123456, 'ghjhj', 'Mohamed', '123', 'Teacher'),
(5, 'Mostafaa', 222521145, 'dsa', 'Mostafa', '123', 'Teacher'),
(6, 'l', 455, 'ff', 'l', '123', 'Admin'),
(7, 'f', 5, 'l', 'f', '123', 'Teacher'),
(8, 'K', 554, 'ffg', 'k', '123', 'Teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `exam`
--
ALTER TABLE `exam`
  ADD PRIMARY KEY (`eid`);

--
-- Indexes for table `librarysystem`
--
ALTER TABLE `librarysystem`
  ADD PRIMARY KEY (`requestnum`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `exam`
--
ALTER TABLE `exam`
  MODIFY `eid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `librarysystem`
--
ALTER TABLE `librarysystem`
  MODIFY `requestnum` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
