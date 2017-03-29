-- phpMyAdmin SQL Dump
-- version 4.6.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 14, 2017 at 08:40 AM
-- Server version: 5.7.13
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo`
--

-- --------------------------------------------------------

--
-- Table structure for table `robots`
--

DROP TABLE IF EXISTS robots;
CREATE TABLE robots (
  id int(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  top varchar(10) DEFAULT NULL,
  torso varchar(10) DEFAULT NULL,
  bottom varchar(10) DEFAULT NULL,
  date date DEFAULT NULL,
  price int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `robot`
--


INSERT INTO robots (top,torso,bottom,date,price) VALUES
  ( '12234A1', '90062R2', '3276C3', '2012-1-1', 1),
  ('00002A1', '7890B2', 'ABCDC3', '2012-1-1', 1),
  ('06BFB1', 'AABB0C2', 'ADC23R3', '2012-1-1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `parts`
--

DROP TABLE IF EXISTS parts;
CREATE TABLE parts (
  id int(8) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  ca varchar(10) NOT NULL,
  pic varchar(10) DEFAULT NULL,
  plant varchar(20) DEFAULT NULL,
  date date DEFAULT NULL,
  unitprice int(10) DEFAULT NULL,
  type varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `parts`
--

INSERT INTO parts (id, ca, pic, plant, date, unitprice, type) VALUES
('12234A1', 'a1', 'Apple', '2010-01-01', 10, 'top'),
('00002A1', 'a1', 'Durian', '2016-01-12', 10, 'top'),
('06BFB1', 'b1', 'Apple', '2017-01-01', 10, 'top'),
('7890B2', 'b2', 'Apple', '2016-01-12', 10, 'torso'),
('AABB0C2', 'c2', 'Banana', '2016-03-12', 10, 'torso'),
('3276C3', 'c3', 'Durian', '2016-01-12', 10, 'bottom'),
('ABCDC3', 'c3', 'Red Umbrella', '2016-01-12', 10, 'bottom'),
('0011R1', 'r1', 'Banana', '2016-04-05', 10, 'top'),
('90062R2', 'r2', 'Running man', '2016-01-12', 10, 'torso'),
('ADC23R3', 'r3', 'Red Umbrella', '2016-01-12', 10, 'bottom'),
('90786W2', 'w2', 'Durian', '2017-01-12', 10, 'torso'),
('AD454W3', 'w3', 'Banana', '2017-01-12', 10, 'bottom');

-- --------------------------------------------------------

--
-- Table structure for table `histories`
--

DROP TABLE IF EXISTS histories;
CREATE TABLE histories (
  id int NOT NULL PRIMARY KEY AUTO_INCREMENT,
  type varchar(20) DEFAULT NULL,
  partstype varchar(1024) DEFAULT NULL,
  date varchar(40) DEFAULT NULL,
  price int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `histories`
--

INSERT INTO histories (type, partstype, date, price)
  VALUES
  ('Purchased Box', '12234A1 00002A1 06BFB1 7890B2 AABB0C2 3276C3 ABCDC3 0011R1 90062R2 ADC23R3', '10:30pm April 15 2014', 100),
  ('Purchased Box', '90786W2 AD454W3', '08:30pm April 17 2014', 20),
  ('Robot Assembly', '12234A1 90062R2 276C3', '05:30pm April 15 2014', 0),
  ('Robot Assembly', '00002A1 7890B2 ABCDC3', '04:30pm April 19 2014', 0),
  ('Robot Assembly', '06BFB1 AABB0C2 ADC23R3', '03:30pm April 21 2014', 0),
  ('Return Part(s)', '90786W2 AD454W3', '07:30am April 28 2014', 10),
  ('Sold Robot', '12234A1 90062R2 276C3', '03:30am April 28 2014', 25),
  ('Sold Robot', '00002A1 7890B2 ABCDC3', '01:30am April 25 2014', 100);


