-- phpMyAdmin SQL Dump
-- version 4.6.6deb5ubuntu0.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 06, 2023 at 03:29 AM
-- Server version: 5.7.41-0ubuntu0.18.04.1
-- PHP Version: 7.2.34-37+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp`
--

-- --------------------------------------------------------

--
-- Table structure for table `stalls`
--

CREATE TABLE `stalls` (
  `id` int(11) NOT NULL,
  `venue_row_id` int(11) NOT NULL,
  `venue_aisle_id` int(11) NOT NULL,
  `no_of_floors` int(11) DEFAULT '4',
  `no_of_rooms` int(11) DEFAULT '7',
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stalls`
--

INSERT INTO `stalls` (`id`, `venue_row_id`, `venue_aisle_id`, `no_of_floors`, `no_of_rooms`, `position`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 3, 'LEFT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(2, 1, 1, 3, 2, 'RIGHT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(3, 1, 2, 1, 2, 'LEFT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(4, 1, 2, 2, 2, 'RIGHT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(5, 2, 1, 2, 1, 'LEFT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(6, 2, 1, 1, 3, 'RIGHT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(7, 2, 2, 3, 4, 'LEFT', '2023-02-05 18:45:53', '2023-02-05 18:45:53'),
(8, 2, 2, 4, 7, 'RIGHT', '2023-02-05 18:45:53', '2023-02-05 18:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `venues`
--

CREATE TABLE `venues` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `organisation_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `venues`
--

INSERT INTO `venues` (`id`, `name`, `organisation_id`, `created_at`, `updated_at`) VALUES
(1625, 'BICC Outdoor', 35801, '2021-11-10 13:26:18', '2022-02-11 05:01:08');

-- --------------------------------------------------------

--
-- Table structure for table `venue_aisles`
--

CREATE TABLE `venue_aisles` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venue_aisles`
--

INSERT INTO `venue_aisles` (`id`, `description`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1625, '2023-02-05 18:45:51', '2023-02-05 18:45:51'),
(2, NULL, 1625, '2023-02-05 18:45:52', '2023-02-05 18:45:52');

-- --------------------------------------------------------

--
-- Table structure for table `venue_rows`
--

CREATE TABLE `venue_rows` (
  `id` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `warehouse_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `venue_rows`
--

INSERT INTO `venue_rows` (`id`, `description`, `warehouse_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1625, '2023-02-05 18:45:51', '2023-02-05 18:45:51'),
(2, NULL, 1625, '2023-02-05 18:45:51', '2023-02-05 18:45:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `stalls`
--
ALTER TABLE `stalls`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venues`
--
ALTER TABLE `venues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_aisles`
--
ALTER TABLE `venue_aisles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_rows`
--
ALTER TABLE `venue_rows`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `stalls`
--
ALTER TABLE `stalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `venues`
--
ALTER TABLE `venues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1671;
--
-- AUTO_INCREMENT for table `venue_aisles`
--
ALTER TABLE `venue_aisles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `venue_rows`
--
ALTER TABLE `venue_rows`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
