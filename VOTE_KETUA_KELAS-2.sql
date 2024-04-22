-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 22, 2024 at 03:36 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `VOTE_KETUA_KELAS`
--

-- --------------------------------------------------------

--
-- Table structure for table `kandinat`
--

CREATE TABLE `kandinat` (
  `Absen` int(255) NOT NULL,
  `Nama` varchar(255) NOT NULL,
  `Voted` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kandinat`
--

INSERT INTO `kandinat` (`Absen`, `Nama`, `Voted`) VALUES
(1, 'Denis Setiawan', 3),
(2, 'Riandra Kurniawansyah', 7);

-- --------------------------------------------------------

--
-- Table structure for table `Logreg`
--

CREATE TABLE `Logreg` (
  `Absen` tinyint(1) NOT NULL,
  `Password` int(255) NOT NULL,
  `has_voted` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Logreg`
--

INSERT INTO `Logreg` (`Absen`, `Password`, `has_voted`) VALUES
(1, 11, 1),
(2, 22, 1),
(3, 33, 0),
(4, 444, 0),
(5, 5, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kandinat`
--
ALTER TABLE `kandinat`
  ADD UNIQUE KEY `ID` (`Absen`);

--
-- Indexes for table `Logreg`
--
ALTER TABLE `Logreg`
  ADD PRIMARY KEY (`Absen`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
