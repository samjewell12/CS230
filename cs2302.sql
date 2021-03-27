-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2021 at 11:34 AM
-- Server version: 5.7.33-0ubuntu0.18.04.1
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs2302`
--

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `pid` int(11) NOT NULL,
  `title` varchar(60) CHARACTER SET utf16 NOT NULL,
  `descript` text CHARACTER SET utf16 NOT NULL,
  `picpath` varchar(80) CHARACTER SET utf16 NOT NULL,
  `upload_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `rating` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`pid`, `title`, `descript`, `picpath`, `upload_date`, `rating`) VALUES
(1, 'title', 'qwe', '../gallery/6052e0eee24c33.85762199.jpg', '2021-03-18 01:11:10', NULL),
(2, 'dsa', 'asd', '../gallery/6052e106c316b9.56145620.jpeg', '2021-03-18 01:11:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `revid` int(11) NOT NULL COMMENT 'id for review',
  `itemid` int(11) NOT NULL COMMENT 'item reviewed',
  `uname` varchar(80) CHARACTER SET utf16 NOT NULL COMMENT 'user revuiewing',
  `title` varchar(60) CHARACTER SET utf16 NOT NULL,
  `reviewtext` text CHARACTER SET utf16 NOT NULL,
  `revdate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ratingnum` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`revid`, `itemid`, `uname`, `title`, `reviewtext`, `revdate`, `ratingnum`, `status`) VALUES
(1, 7, '123', '123', '123', '2021-03-26 21:03:04', 4, 1),
(2, 7, '123', 'bruhh', 'bRUH', '2021-03-26 21:03:38', 4, 1),
(3, 7, '123', 'comand', 'con', '2021-03-26 21:03:47', 5, 1),
(4, 7, '123', 'gang', 'gagn', '2021-03-26 21:03:56', 5, 1),
(5, 7, 'teest', 'test', 'test', '2021-03-26 22:07:24', 4, 1),
(6, 7, 'teest', 'bruh', 'vasd', '2021-03-26 22:07:29', 4, 1),
(7, 7, 'teest', 'sda', 'das', '2021-03-26 22:07:34', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `something`
--

CREATE TABLE `something` (
  `pid` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `profpic` varchar(50) NOT NULL DEFAULT '../images/default.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `something`
--

INSERT INTO `something` (`pid`, `fname`, `lname`, `profpic`) VALUES
(1, 'teest', 'teest', '../profiles/604b2429b099b3.74742418.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(50) DEFAULT NULL,
  `lname` varchar(50) DEFAULT NULL,
  `uname` varchar(50) DEFAULT NULL,
  `password` varchar(120) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user database for signup and signin';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `lname`, `uname`, `password`, `email`) VALUES
(1, '123', '123', '123', '$2y$10$tXx293QL/56MnDVKpcHgJeCw63ErBU3ZeBcyATEmXggA8mGkNgfs6', 'bruh@bruh.com'),
(2, 'momento', 'de', 'bruhhh', '$2y$10$I7JTDa9b8Z2hrKPCdXS/duIWGAnFYt3zFfNpcN3g.HnpMlXBB1q6.', '123@123.com'),
(3, 'test', 'test', 'test', '$2y$10$nsqE/urgaRvsIa8WWP0.Z.u4GFQJES65KQCCtv/AJ5BveNn9rp2xS', 'test@test.com'),
(4, 'teet', 'teet', 'teet', '$2y$10$oANfd59Y5s3JZpDno1gMB.lbfmGfG8FlzAfvUJRzyo6SAi.WaIceS', 'teet@teet.com'),
(5, 'teets', 'teets', 'teets', '$2y$10$b6zM35PXSejmnRcKA2KF1OAs1LD4pyDcuttLlYvwXqWmSNcJZLez.', 'teets@teet.com'),
(6, 'teest', 'teest', 'teest', '$2y$10$9oQ0b8TPaYSfBUWGfxiQ2.ygS7gEdyV5yap7bX0wunZx.eG5bovRa', 'teest@teest.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`revid`);

--
-- Indexes for table `something`
--
ALTER TABLE `something`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `revid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'id for review', AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `something`
--
ALTER TABLE `something`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
