-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 24, 2022 at 07:32 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmnm`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_translate`
--

CREATE TABLE `nv4_vi_translate` (
  `id` int(11) NOT NULL,
  `input_id` int(11) NOT NULL,
  `translated_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_translate`
--

INSERT INTO `nv4_vi_translate` (`id`, `input_id`, `translated_id`) VALUES
(1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_translate_key`
--

CREATE TABLE `nv4_vi_translate_key` (
  `id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary_lang` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_translate_key`
--

INSERT INTO `nv4_vi_translate_key` (`id`, `content`, `primary_lang`) VALUES
(1, 'sdfdsfds', ''),
(2, 'sdfdsfds', ''),
(3, 'fsfsfd', '4'),
(4, 'fsfsfd', '4'),
(5, 'dasdda', '3');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_translate_lang`
--

CREATE TABLE `nv4_vi_translate_lang` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_translate_lang`
--

INSERT INTO `nv4_vi_translate_lang` (`id`, `name`) VALUES
(1, 'fsdfsf'),
(2, 'fsdfsf'),
(3, 'sfdsds'),
(4, 'sfdfsfs');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_vi_translate`
--
ALTER TABLE `nv4_vi_translate`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_translate_key`
--
ALTER TABLE `nv4_vi_translate_key`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_translate_lang`
--
ALTER TABLE `nv4_vi_translate_lang`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_vi_translate`
--
ALTER TABLE `nv4_vi_translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nv4_vi_translate_key`
--
ALTER TABLE `nv4_vi_translate_key`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nv4_vi_translate_lang`
--
ALTER TABLE `nv4_vi_translate_lang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
