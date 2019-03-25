-- phpMyAdmin SQL Dump
-- version 4.8.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 25, 2019 at 10:14 AM
-- Server version: 10.1.32-MariaDB
-- PHP Version: 7.2.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `recruitmentsystemdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `sex` varchar(1) COLLATE utf8_bin NOT NULL,
  `address` text COLLATE utf8_bin NOT NULL,
  `phone_number` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `admin_his`
--

CREATE TABLE `admin_his` (
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `postid` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `jobseeker_his`
--

CREATE TABLE `jobseeker_his` (
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `postid` bigint(20) NOT NULL,
  `status` text COLLATE utf8_bin NOT NULL,
  `feedback` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `job_posts`
--

CREATE TABLE `job_posts` (
  `id` bigint(20) NOT NULL,
  `company_name` varchar(100) COLLATE utf8_bin NOT NULL,
  `job_name` text COLLATE utf8_bin NOT NULL,
  `job_description` text COLLATE utf8_bin NOT NULL,
  `job_recruitment` text COLLATE utf8_bin NOT NULL,
  `employment_status` varchar(50) COLLATE utf8_bin NOT NULL,
  `offer` varchar(100) COLLATE utf8_bin NOT NULL,
  `experience_level` varchar(30) COLLATE utf8_bin NOT NULL,
  `skill` text COLLATE utf8_bin NOT NULL,
  `referred_language` text COLLATE utf8_bin NOT NULL,
  `company_size` varchar(100) COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `locationid` int(11) NOT NULL,
  `infor_contact` varchar(200) COLLATE utf8_bin NOT NULL,
  `date` varchar(50) COLLATE utf8_bin NOT NULL,
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `image` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `job_seeker`
--

CREATE TABLE `job_seeker` (
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `CV` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `email` varchar(100) COLLATE utf8_bin NOT NULL,
  `name` text COLLATE utf8_bin NOT NULL,
  `username` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`email`, `name`, `username`) VALUES
('admin', 'ADMIN', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(100) COLLATE utf8_bin NOT NULL,
  `password` varchar(100) COLLATE utf8_bin NOT NULL,
  `roleid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `roleid`) VALUES
('admin', 'admin', 1),
('khanhtuan623', '123', 1),
('tuan', '123456', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `admin_his`
--
ALTER TABLE `admin_his`
  ADD PRIMARY KEY (`email`,`postid`),
  ADD KEY `postid` (`postid`);

--
-- Indexes for table `jobseeker_his`
--
ALTER TABLE `jobseeker_his`
  ADD PRIMARY KEY (`email`,`postid`),
  ADD KEY `postid` (`postid`);

--
-- Indexes for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `job_posts`
--
ALTER TABLE `job_posts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`username`);

--
-- Constraints for table `admin_his`
--
ALTER TABLE `admin_his`
  ADD CONSTRAINT `admin_his_ibfk_1` FOREIGN KEY (`email`) REFERENCES `admin` (`email`),
  ADD CONSTRAINT `admin_his_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `job_posts` (`id`);

--
-- Constraints for table `jobseeker_his`
--
ALTER TABLE `jobseeker_his`
  ADD CONSTRAINT `jobseeker_his_ibfk_1` FOREIGN KEY (`email`) REFERENCES `job_seeker` (`email`),
  ADD CONSTRAINT `jobseeker_his_ibfk_2` FOREIGN KEY (`postid`) REFERENCES `job_posts` (`id`);

--
-- Constraints for table `job_posts`
--
ALTER TABLE `job_posts`
  ADD CONSTRAINT `job_posts_ibfk_1` FOREIGN KEY (`email`) REFERENCES `recruiter` (`email`);

--
-- Constraints for table `job_seeker`
--
ALTER TABLE `job_seeker`
  ADD CONSTRAINT `job_seeker_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`username`);

--
-- Constraints for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD CONSTRAINT `recruiter_ibfk_1` FOREIGN KEY (`email`) REFERENCES `user` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
