-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 18, 2022 at 10:37 AM
-- Server version: 5.1.53
-- PHP Version: 5.3.4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `annamalai`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `id` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `email`, `phone`, `password`, `id`) VALUES
('annamalai', 'annamalaikumar13@gmail.com', 2147483647, 'Vssa13@Kumar', 1);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `id` int(100) NOT NULL,
  `sources_location` varchar(100) NOT NULL,
  `destination_location` varchar(100) NOT NULL,
  `type_of_vehicle` varchar(100) NOT NULL,
  `date` date NOT NULL,
  `no of tolgate` int(100) NOT NULL,
  `amount` int(100) NOT NULL,
  `payment status` varchar(100) NOT NULL,
  `type of payment` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `sources_location`, `destination_location`, `type_of_vehicle`, `date`, `no of tolgate`, `amount`, `payment status`, `type of payment`) VALUES
(1, 'chennai', 'madurai', 'car', '2022-01-12', 3, 150, 'paid', 'credit card'),
(3, 'vellure', 'salam', 'bus', '2022-02-15', 2, 200, 'paid', 'credit card');

-- --------------------------------------------------------

--
-- Table structure for table `tolgate_detail`
--

CREATE TABLE IF NOT EXISTS `tolgate_detail` (
  `sno` int(100) NOT NULL,
  `sources_location` varchar(100) NOT NULL,
  `destination_location` varchar(100) NOT NULL,
  `tolgate name` varchar(100) NOT NULL,
  `tolgate address` varchar(100) NOT NULL,
  `vehicle type` varchar(100) NOT NULL,
  `amount` int(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tolgate_detail`
--

INSERT INTO `tolgate_detail` (`sno`, `sources_location`, `destination_location`, `tolgate name`, `tolgate address`, `vehicle type`, `amount`) VALUES
(1, 'chennai', 'madurai', 'chengalpatu tolgate', 'near  paranur railway station', 'car', 50),
(2, 'chennai', 'madurai', 'melmaruvathur tolgate', 'near  melmaruvathur bus stand', 'car', 50),
(3, 'chennai', 'madurai', 'vikravandi', 'nearsurya college', 'car', 50);

-- --------------------------------------------------------

--
-- Table structure for table `tolgate_list`
--

CREATE TABLE IF NOT EXISTS `tolgate_list` (
  `id` int(255) NOT NULL,
  `sources` varchar(255) NOT NULL,
  `destination` varchar(255) NOT NULL,
  `no_of_tolgate` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tolgate_list`
--

INSERT INTO `tolgate_list` (`id`, `sources`, `destination`, `no_of_tolgate`) VALUES
(1, 'chennai', 'madurai', 5),
(2, 'chennai', 'pondi', 3),
(3, 'vellure', 'salam', 2),
(4, 'coimbature', 'thirchy', 6);

-- --------------------------------------------------------

--
-- Table structure for table `travel_history`
--

CREATE TABLE IF NOT EXISTS `travel_history` (
  `id` int(255) NOT NULL,
  `sources_location` varchar(255) NOT NULL,
  `destination_location` varchar(255) NOT NULL,
  `type_of_vehicle` varchar(255) NOT NULL,
  `vehicle_number` varchar(255) NOT NULL,
  `journey_date` date NOT NULL,
  `no_of_tolgate` int(255) NOT NULL,
  `amount` int(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `travel_history`
--

INSERT INTO `travel_history` (`id`, `sources_location`, `destination_location`, `type_of_vehicle`, `vehicle_number`, `journey_date`, `no_of_tolgate`, `amount`) VALUES
(1, 'chennai', 'madurai', 'car', 'TN008', '2022-01-12', 3, 150),
(3, 'vellure', 'salam', 'bus', 'TN87', '2022-02-15', 2, 200);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `sno` int(25) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` text NOT NULL,
  `phone` int(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `name`, `email`, `phone`, `password`) VALUES
(1, 'annamalai', 'annamalaikumar13@gmail.com', 869563562, 'Vssa13@Kumar'),
(2, 'bharath', 'bharath123@gmail.com', 965632654, '631501'),
(3, 'lakshmi', 'lakshmiram008@gmail.com', 635965365, 'abcdef'),
(4, 'murgan 	', 'murganeh006@gmail.com ', 998659865, '12345678 ');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_detail`
--

CREATE TABLE IF NOT EXISTS `vehicle_detail` (
  `id` int(100) NOT NULL,
  `vehicle catagory` varchar(100) NOT NULL,
  `vehicle name` varchar(100) NOT NULL,
  `vehicle number` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_detail`
--

INSERT INTO `vehicle_detail` (`id`, `vehicle catagory`, `vehicle name`, `vehicle number`) VALUES
(1, 'car', 'benz', 'TN008'),
(1, 'car', 'suzuki', 'TN448'),
(3, 'car', 'suzuki', 'TN389'),
(3, 'car', 'HONDA', 'TN012');
