-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2020 at 07:23 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.3.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `registro`
--

-- --------------------------------------------------------

--
-- Table structure for table `persona`
--

CREATE TABLE `persona` (
  `ID` int(11) NOT NULL,
  `Nombre` text DEFAULT NULL,
  `Apellidos` text DEFAULT NULL,
  `Tipo_Documento` text DEFAULT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `Fecha_Nacimiento` varchar(50) DEFAULT NULL,
  `Fecha_Vinculacion` varchar(50) DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Salario` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `persona`
--

INSERT INTO `persona` (`ID`, `Nombre`, `Apellidos`, `Tipo_Documento`, `Documento`, `Fecha_Nacimiento`, `Fecha_Vinculacion`, `Cargo`, `Salario`) VALUES
(1, 'Cesar2', 'Puentes ', '1022372935', 'CC', '28-DIC-1991', '?', 'Desarrollador', 22500000),
(2, 'David', 'Puentes', 'null', 'null', 'null', 'null', 'null', 0),
(20, '1', '1', '1', '1', '1', '1', '1', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `persona4`
--

CREATE TABLE `persona4` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(50) DEFAULT NULL,
  `Apellidos` varchar(50) DEFAULT NULL,
  `TipoDocumento` varchar(50) DEFAULT NULL,
  `Documento` varchar(50) DEFAULT NULL,
  `FechaNacimiento` tinytext DEFAULT NULL,
  `FechaVinculacion` tinytext DEFAULT NULL,
  `Cargo` varchar(50) DEFAULT NULL,
  `Salario` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `persona`
--
ALTER TABLE `persona`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `persona4`
--
ALTER TABLE `persona4`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `persona`
--
ALTER TABLE `persona`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `persona4`
--
ALTER TABLE `persona4`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
