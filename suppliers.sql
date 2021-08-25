-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 26, 2021 at 12:32 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `suppliers`
--

-- --------------------------------------------------------

--
-- Table structure for table `ccap_suppliers`
--

CREATE TABLE `ccap_suppliers` (
  `Supplier_id` varchar(30) DEFAULT NULL,
  `Company` varchar(23) DEFAULT NULL,
  `email_address` varchar(30) DEFAULT NULL,
  `Phone` varchar(14) DEFAULT NULL,
  `Address` varchar(20) DEFAULT NULL,
  `City` varchar(17) DEFAULT NULL,
  `State` varchar(2) DEFAULT NULL,
  `posta_code` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ccap_suppliers`
--

INSERT INTO `ccap_suppliers` (`Supplier_id`, `Company`, `email_address`, `Phone`, `Address`, `City`, `State`, `posta_code`) VALUES
('SUPP-01', 'Biking Supplies Inc', 'orders@bikingsupplies.com', '(800) 555-3788', '7849 Pebble Ln', 'Boulder', 'CO', '80302'),
('SUPP-02', 'Boots Galore', 'orders@bootsgalore.com', '(541) 555-1170', '333 Windy Pines Ave', 'Mountain View', 'OR', '97701'),
('SUPP-03', 'Fitness City', 'orders@fitnesscity.biz', '(505) 555-8765', '4786 Open Greens Dr', 'Santa Fe', 'NM', '87506'),
('SUPP-04', 'Gear City', 'orders@gearcity.org', '(206) 555-8499', '13 W 32nd St', 'Seattle', 'WA', '98107'),
('SUPP-05', 'Rick\'s Sporting Shop', 'rick@ricksports.com', '(757) 555-7139', '4568 Atlantic Ave', 'Virginia Beach', 'VA', '23451'),
('SUPP-06', 'Ski Country', 'orders@skicountry.biz', '(866) 555-2877', '582 Colinas Dr', 'Los Angeles', 'CA', '90014'),
('SUPP-07', 'Snow Gear Fitters', 'orders@sgfitters.biz', '(248) 555-1000', '8629 Mandolin Way', 'Gooseneck', 'MI', '48071'),
('SUPP-08', 'Specialty Shoes', 'orders@specshoes.com', '(800) 555-5874', '382 Hialeah Way', 'Honolulu', 'HI', '96821'),
('SUPP-09', 'Sports Fitters', 'info@sportfitters.com', '(800) 555-4084', '164 Chapel Rd', 'Dayton', 'OH', '45404'),
('SUPP-10', 'Tree Country Outfitters', 'info@treecountry.biz', '(800) 555-3694', '2304 S Westhaven Dr', 'West Haven Valley', 'UT', '84119'),
('SUPP-11', 'Winter Sports Club', 'info@wintersportsclub.biz', '(800) 555-6781', '211 Mountain View Rd', 'Boulder', 'CO', '80304'),
('SUPP-12', 'Beach Water Sports Inc', 'info@watersports.biz', '(305) 555-6543', '14 South Beach Rd', 'Miami', 'FL', '33125');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
