-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 30, 2020 at 10:50 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soft`
--

-- --------------------------------------------------------

--
-- Table structure for table `adress`
--

CREATE TABLE `adress` (
  `id` int(10) NOT NULL,
  `zip` varchar(20) NOT NULL,
  `road` varchar(20) NOT NULL,
  `house` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adress`
--

INSERT INTO `adress` (`id`, `zip`, `road`, `house`) VALUES
(10, '120141', 'rupnagor 211', '20'),
(11, '1201', 'rupnagor 20', '3'),
(12, '1289', 'rupnagor 20', '34');

-- --------------------------------------------------------

--
-- Table structure for table `block`
--

CREATE TABLE `block` (
  `id` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `verified` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `block`
--

INSERT INTO `block` (`id`, `date`, `verified`) VALUES
(1, '2020-07-01 02:23:00', '0'),
(2, '2020-07-01 02:23:00', '1'),
(31, '2020-07-01 02:23:00', '1');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `id` int(10) NOT NULL,
  `val` int(10) NOT NULL,
  `book` int(10) NOT NULL,
  `ad` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`id`, `val`, `book`, `ad`, `date`) VALUES
(10, 1, 1, 0, '2020-06-29 01:46:40'),
(11, 0, 0, 0, '2020-06-29 16:46:14'),
(12, 1, 0, 0, '2020-06-29 17:48:24');

-- --------------------------------------------------------

--
-- Table structure for table `book1`
--

CREATE TABLE `book1` (
  `idx` int(10) NOT NULL,
  `uid` int(11) NOT NULL,
  `hid` int(11) NOT NULL,
  `cn` int(10) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book1`
--

INSERT INTO `book1` (`idx`, `uid`, `hid`, `cn`, `date`) VALUES
(11, 31, 10, 1, '2020-07-01 00:52:22'),
(13, 31, 12, 0, '2020-07-01 01:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(10) NOT NULL,
  `name` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL,
  `region` varchar(15) NOT NULL,
  `price` int(10) NOT NULL,
  `contract` varchar(20) NOT NULL,
  `img` varchar(100) NOT NULL,
  `lift` int(10) NOT NULL,
  `floor` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `name`, `type`, `region`, `price`, `contract`, `img`, `lift`, `floor`) VALUES
(10, 'ali villa', 'normal', 'mirpur', 15978, '0163145243', 'card6.jpg', 0, 8),
(11, 'khan villa', 'normal', 'mirpur', 170000, '0163145243', 'uploads/card5.jpg', 0, 6),
(12, 'akram villa', 'high', 'mirpur', 19000, '1344124959', 'uploads/card4.jpg', 1, 7);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(10) NOT NULL,
  `bed` int(10) NOT NULL,
  `kit` int(10) NOT NULL,
  `washroom` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id`, `bed`, `kit`, `washroom`) VALUES
(10, 6, 2, 3),
(11, 3, 1, 2),
(12, 4, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(11) NOT NULL,
  `poster_id` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `status` varchar(8) NOT NULL DEFAULT 'Open',
  `type` varchar(30) NOT NULL DEFAULT 'Others',
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `poster_id`, `subject`, `description`, `status`, `type`, `date`, `deleted`) VALUES
(6, 31, 'no sub', 'just checking that ewiufjirfijfvf', 'Open', 'Support', '2020-06-29 19:10:05', 0),
(7, 31, 'no sub', 'fuck you allfgcgxfgghtrhtrg', 'Open', 'Support', '2020-06-30 01:10:09', 0),
(8, 31, 'rwerewrewr', 'eretwerewrwerwerwewrwerwer', 'Answered', 'Support', '2020-06-30 01:11:09', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_details`
--

CREATE TABLE `ticket_details` (
  `id` int(11) NOT NULL,
  `ticket_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_details`
--

INSERT INTO `ticket_details` (`id`, `ticket_id`, `user_id`, `description`, `date`) VALUES
(13, 6, 31, 'just checking that ewiufjirfijfvf', '2020-06-29 19:10:05'),
(14, 6, 1, 'ok ok ok i get it', '2020-06-29 19:10:42'),
(15, 6, 31, 'jiiiiiiii', '2020-06-30 00:57:55'),
(16, 7, 31, 'fuck you allfgcgxfgghtrhtrg', '2020-06-30 01:10:09'),
(17, 8, 31, 'eretwerewrwerwerwewrwerwer', '2020-06-30 01:11:09'),
(18, 8, 31, 'looooooooooool', '2020-06-30 01:14:36'),
(19, 8, 1, 'looooooooooooooooooooool', '2020-06-30 03:32:19'),
(20, 8, 1, 'jhooll', '2020-06-30 22:46:41');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `role` varchar(15) NOT NULL DEFAULT 'Customer',
  `name` varchar(15) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(16) NOT NULL,
  `email` varchar(35) DEFAULT NULL,
  `address` varchar(300) DEFAULT NULL,
  `contact` bigint(11) NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role`, `name`, `username`, `password`, `email`, `address`, `contact`, `verified`, `deleted`) VALUES
(1, 'Administrator', 'Admin 1', 'root', 'toor', '', 'Address 1', 9898000000, 0, 0),
(2, 'Customer', 'Customer 1', 'user1', 'pass1', 'mail2@example.com', 'Address 2', 9898000001, 1, 0),
(31, 'Customer', 'nafiz khan', 'nafiz', '12345', 'nuhanafiz@gmail.com', NULL, 12345, 1, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book1`
--
ALTER TABLE `book1`
  ADD PRIMARY KEY (`idx`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `poster_id` (`poster_id`);

--
-- Indexes for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ticket_id` (`ticket_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book1`
--
ALTER TABLE `book1`
  MODIFY `idx` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ticket_details`
--
ALTER TABLE `ticket_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tickets`
--
ALTER TABLE `tickets`
  ADD CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`poster_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ticket_details`
--
ALTER TABLE `ticket_details`
  ADD CONSTRAINT `ticket_details_ibfk_1` FOREIGN KEY (`ticket_id`) REFERENCES `tickets` (`id`),
  ADD CONSTRAINT `ticket_details_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
