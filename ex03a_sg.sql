-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 04:53 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ex03a sg`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ProjectID` int(11) NOT NULL,
  `EmployeeNumber` varchar(255) NOT NULL,
  `HoursWorked` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ProjectID`, `EmployeeNumber`, `HoursWorked`) VALUES
(1000, '1', '30'),
(1000, '10', '50'),
(1000, '16', '75'),
(1000, '17', '75'),
(1000, '6', '50'),
(1100, '1', '30'),
(1100, '10', '55'),
(1100, '11', '55'),
(1100, '6', '75'),
(1200, '3', '20'),
(1200, '6', '40'),
(1200, '7', '45'),
(1200, '8', '45'),
(1300, '3', '25'),
(1300, '6', '40'),
(1300, '8', '50'),
(1300, '9', '50'),
(1400, '1', '30'),
(1400, '10', '50'),
(1400, '16', '75'),
(1400, '17', '75'),
(1400, '6', '50'),
(1500, '1', '30'),
(1500, '10', '55'),
(1500, '11', '55'),
(1500, '6', '75'),
(1600, '3', '20'),
(1600, '6', '40'),
(1600, '7', '45'),
(1600, '8', '45');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` varchar(35) NOT NULL,
  `BudgetCode` varchar(255) NOT NULL,
  `OfficeNumber` varchar(255) NOT NULL,
  `DepartmentPhone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentName`, `BudgetCode`, `OfficeNumber`, `DepartmentPhone`) VALUES
('Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405'),
('Administration', 'BC-100-10', 'BLDG01-201', '360-285-8100'),
('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400'),
('Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300'),
('InfoSystems', 'BC-700-10', 'BLDG02-210', '360-285-8600'),
('Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200'),
('Production', 'BC-900-10', 'BLDG02-110', '360-285-8800'),
('Research and Development', 'BC-800-10', 'BLDG02-250', '360-285-8700'),
('Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-285-8500');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` varchar(255) DEFAULT NULL,
  `LastName` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `Position` varchar(255) DEFAULT NULL,
  `Supervisor` varchar(255) DEFAULT NULL,
  `OfficePhone` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeNumber`, `FirstName`, `LastName`, `Department`, `Position`, `Supervisor`, `OfficePhone`, `EmailAddress`) VALUES
(1, 'Mary', 'Jacobs', 'Administration', 'CEO', '.', '360-285-8110', 'MaryJacobs@WP.com'),
(2, 'Rosalie', 'Jackson', 'Administration', 'Adm Asst', '1', '360-285-8120', 'RosalieJackson@WP.com'),
(3, 'Richard', 'Bandalone', 'Legal', 'Attorney', '1', '360-285-8210', 'RichardBandalone@WP.com'),
(4, 'George', 'Smith', 'Human Resources', 'HR3', '1', '360-285-8310', 'GeorgeSmith@WP.com'),
(5, 'Alan', 'Adams', 'Human Resources', 'HR1', '4', '360-285-8320', 'AlanAdams@WP.com'),
(6, 'Ken', 'Evans', 'Finance', 'CFO', '1', '360-285-8410', 'KenEvans@WP.com'),
(7, 'Mary', 'Abernathy', 'Finance', 'FA3', '6', '360-285-8420', 'MaryAbernathy@WP.com'),
(8, 'Tom', 'Caruthers', 'Accounting', 'FA2', '6', '360-285-8430', 'TomCaruthers@WP.com'),
(9, 'Heather', 'Jones', 'Accounting', 'FA2', '6', '360-285-8440', 'HeatherJones@WP.com'),
(10, 'Ken', 'Numoto', 'Sales and Marketing', 'SM3', '1', '360-285-8510', 'KenNumoto@WP.com');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` varchar(255) DEFAULT NULL,
  `Department` varchar(255) DEFAULT NULL,
  `MaxHours` varchar(255) DEFAULT NULL,
  `StartDate` varchar(255) DEFAULT NULL,
  `EndDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ProjectID`, `ProjectName`, `Department`, `MaxHours`, `StartDate`, `EndDate`) VALUES
(1000, '2017 Q3 Production Plan', 'Production', '100.00', '05/10/17', '06/15/17'),
(1100, '2017 Q3 Marketing Plan', 'Sales and Marketing', '135.00', '05/10/17', '06/15/17'),
(1200, '2017 Q3 Portfolio Analysis', 'Finance', '120.00', '07/05/17', '07/25/17'),
(1300, '2017 Q3 Tax Preparation', 'Accounting', '145.00', '08/10/17', '10/15/17'),
(1400, '2017 Q4 Production Plan', 'Production', '100.00', '08/10/17', '09/15/17'),
(1500, '2017 Q4 Marketing Plan', 'Sales and Marketing', '135.00', '08/10/17', '09/15/17'),
(1600, '2017 Q4 Portfolio Analysis', 'Finance', '140.00', '10/05/17', '.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ProjectID`,`EmployeeNumber`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeNumber`),
  ADD KEY `Department` (`Department`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `Department` (`Department`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `assignment_ibfk_1` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
