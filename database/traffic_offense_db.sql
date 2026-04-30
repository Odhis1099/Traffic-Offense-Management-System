-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 30, 2026 at 09:33 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `traffic_offense_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `drivers_list`
--

CREATE TABLE `drivers_list` (
  `id` int(30) NOT NULL,
  `license_id_no` varchar(100) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1 = active, 2 = suspended, 3 = banned',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers_list`
--

INSERT INTO `drivers_list` (`id`, `license_id_no`, `name`, `status`, `date_created`, `date_updated`) VALUES
(1, 'CDM-062314', 'James, Wafula D', 1, '2021-08-19 10:45:48', '2026-04-28 22:53:20'),
(4, 'GBN-10140715', 'Odhiambo, Richard C', 1, '2021-08-19 14:56:09', '2026-04-28 22:52:19'),
(5, 'CDM-062315', 'Erick, Otieno C', 1, '2026-04-28 23:17:27', NULL),
(6, 'GBN-10140201', 'Silali, Dan Wambu', 1, '2026-04-29 10:05:24', NULL),
(7, 'GBN-22345610', 'Elina, Wambua Njeri', 1, '2026-04-29 10:07:09', NULL),
(8, 'KHDM-4560-PP', 'Mulindo, Derrick Kariuki', 1, '2026-04-29 10:10:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `drivers_meta`
--

CREATE TABLE `drivers_meta` (
  `driver_id` int(30) DEFAULT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_updated` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `drivers_meta`
--

INSERT INTO `drivers_meta` (`driver_id`, `meta_field`, `meta_value`, `date_updated`) VALUES
(4, 'license_id_no', 'GBN-10140715', '2026-04-28 22:52:19'),
(4, 'lastname', 'Odhiambo', '2026-04-28 22:52:19'),
(4, 'firstname', 'Richard', '2026-04-28 22:52:19'),
(4, 'middlename', 'C', '2026-04-28 22:52:19'),
(4, 'dob', '2002-10-14', '2026-04-28 22:52:19'),
(4, 'present_address', 'Sample Address 123', '2026-04-28 22:52:19'),
(4, 'permanent_address', 'Parklands, Nairobi 00139', '2026-04-28 22:52:19'),
(4, 'civil_status', 'Married', '2026-04-28 22:52:19'),
(4, 'nationality', 'Kenyan', '2026-04-28 22:52:19'),
(4, 'contact', '0795957212', '2026-04-28 22:52:19'),
(4, 'license_type', 'Professional', '2026-04-28 22:52:19'),
(4, 'image_path', 'uploads/drivers/4.jpg', '2026-04-28 22:52:19'),
(4, 'driver_id', '4', '2026-04-28 22:52:19'),
(1, 'license_id_no', 'CDM-062314', '2026-04-28 22:53:20'),
(1, 'lastname', 'James', '2026-04-28 22:53:20'),
(1, 'firstname', 'Wafula', '2026-04-28 22:53:20'),
(1, 'middlename', 'D', '2026-04-28 22:53:20'),
(1, 'dob', '1997-06-23', '2026-04-28 22:53:20'),
(1, 'present_address', 'Gigiri, Nairobi 55665', '2026-04-28 22:53:20'),
(1, 'permanent_address', 'Gigiri, Nairobi 55665', '2026-04-28 22:53:20'),
(1, 'civil_status', 'Married', '2026-04-28 22:53:20'),
(1, 'nationality', 'Kenyan', '2026-04-28 22:53:20'),
(1, 'contact', '0712000000', '2026-04-28 22:53:20'),
(1, 'license_type', 'Professional', '2026-04-28 22:53:20'),
(1, 'image_path', 'uploads/drivers/1.jpg', '2026-04-28 22:53:20'),
(1, 'driver_id', '1', '2026-04-28 22:53:20'),
(5, 'license_id_no', 'CDM-062315', '2026-04-28 23:17:27'),
(5, 'lastname', 'Erick', '2026-04-28 23:17:27'),
(5, 'firstname', 'Otieno', '2026-04-28 23:17:27'),
(5, 'middlename', 'C', '2026-04-28 23:17:27'),
(5, 'dob', '2003-06-23', '2026-04-28 23:17:27'),
(5, 'present_address', 'P.O BOX 112-00100, Nairobi Tom Mboya', '2026-04-28 23:17:27'),
(5, 'permanent_address', 'P.O BOX 112-00100, Nairobi Tom Mboya', '2026-04-28 23:17:27'),
(5, 'civil_status', 'Single', '2026-04-28 23:17:27'),
(5, 'nationality', 'Kenyan', '2026-04-28 23:17:27'),
(5, 'contact', '0713000000', '2026-04-28 23:17:27'),
(5, 'license_type', 'Non-Professional', '2026-04-28 23:17:27'),
(5, 'image_path', '', '2026-04-28 23:17:27'),
(5, 'driver_id', '5', '2026-04-28 23:17:27'),
(8, 'license_id_no', 'KHDM-4560-PP', '2026-04-29 10:10:53'),
(8, 'lastname', 'Mulindo', '2026-04-29 10:10:53'),
(8, 'firstname', 'Derrick', '2026-04-29 10:10:53'),
(8, 'middlename', 'Kariuki', '2026-04-29 10:10:53'),
(8, 'dob', '1998-11-11', '2026-04-29 10:10:53'),
(8, 'present_address', 'P.O BOX 3334 NAIVASHA', '2026-04-29 10:10:53'),
(8, 'permanent_address', 'P.O BOX 3334 NAIVASHA', '2026-04-29 10:10:53'),
(8, 'civil_status', 'Single', '2026-04-29 10:10:53'),
(8, 'nationality', 'Kenyan', '2026-04-29 10:10:53'),
(8, 'contact', '0722335610', '2026-04-29 10:10:53'),
(8, 'license_type', 'Professional', '2026-04-29 10:10:53'),
(8, 'image_path', '', '2026-04-29 10:10:53'),
(8, 'driver_id', '8', '2026-04-29 10:10:53'),
(7, 'license_id_no', 'GBN-22345610', '2026-04-29 10:11:13'),
(7, 'lastname', 'Elina', '2026-04-29 10:11:13'),
(7, 'firstname', 'Wambua', '2026-04-29 10:11:13'),
(7, 'middlename', 'Njeri', '2026-04-29 10:11:13'),
(7, 'dob', '1999-03-22', '2026-04-29 10:11:13'),
(7, 'present_address', 'P.O BOX 3344  KISUMU', '2026-04-29 10:11:13'),
(7, 'permanent_address', 'P.O BOX 3344 MACHAKOS', '2026-04-29 10:11:13'),
(7, 'civil_status', 'Divorced', '2026-04-29 10:11:13'),
(7, 'nationality', 'Kenyan', '2026-04-29 10:11:13'),
(7, 'contact', '07533903312', '2026-04-29 10:11:13'),
(7, 'license_type', 'Student', '2026-04-29 10:11:13'),
(7, 'image_path', '', '2026-04-29 10:11:13'),
(7, 'driver_id', '7', '2026-04-29 10:11:13'),
(6, 'license_id_no', 'GBN-10140201', '2026-04-29 10:11:38'),
(6, 'lastname', 'Silali', '2026-04-29 10:11:38'),
(6, 'firstname', 'Dan', '2026-04-29 10:11:38'),
(6, 'middlename', 'Wambu', '2026-04-29 10:11:38'),
(6, 'dob', '1999-01-22', '2026-04-29 10:11:38'),
(6, 'present_address', 'P.O BOX 3344 MACHAKOS', '2026-04-29 10:11:38'),
(6, 'permanent_address', 'P.O BOX 3344 MACHAKOS', '2026-04-29 10:11:38'),
(6, 'civil_status', 'Married', '2026-04-29 10:11:38'),
(6, 'nationality', 'Kenyan', '2026-04-29 10:11:38'),
(6, 'contact', '074589001', '2026-04-29 10:11:38'),
(6, 'license_type', 'Student', '2026-04-29 10:11:38'),
(6, 'image_path', '', '2026-04-29 10:11:38'),
(6, 'driver_id', '6', '2026-04-29 10:11:38');

-- --------------------------------------------------------

--
-- Table structure for table `offenses`
--

CREATE TABLE `offenses` (
  `id` int(30) NOT NULL,
  `code` varchar(50) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `fine` float NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '0=Inactive, 1=Active',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offenses`
--

INSERT INTO `offenses` (`id`, `code`, `name`, `description`, `fine`, `status`, `date_created`, `date_updated`) VALUES
(4, '106', 'Using a mobile phone while driving', '&lt;p&gt;Texting or calling without hands-free device&lt;/p&gt;', 2500, 1, '2026-04-29 09:50:26', NULL),
(5, '105', 'Illegal parking', '&lt;p&gt;Parking in restricted or unauthorized areas.&lt;/p&gt;', 3000, 1, '2026-04-29 09:51:13', NULL),
(6, '107', 'Failure to wear seatbelt', '&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;sm&quot; data-start=&quot;746&quot; data-end=&quot;773&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;md&quot; data-start=&quot;773&quot; data-end=&quot;820&quot;&gt;Driver or passengers not wearing seatbelts.&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 4000, 1, '2026-04-29 09:52:11', NULL),
(7, '110', 'Dangerous overtaking', '&lt;p&gt;Overtaking where prohibited or unsafe.&lt;/p&gt;', 5000, 1, '2026-04-29 09:54:07', NULL),
(8, '101', 'Driving uninsured vehicle', '&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;sm&quot; data-start=&quot;921&quot; data-end=&quot;949&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;md&quot; data-start=&quot;949&quot; data-end=&quot;997&quot;&gt;Operating a vehicle without valid insurance.&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 8000, 1, '2026-04-29 09:55:21', NULL),
(9, '108', 'Running a red light', '&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;sm&quot; data-start=&quot;592&quot; data-end=&quot;614&quot;&gt;&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;&lt;table&gt;&lt;tbody&gt;&lt;tr&gt;&lt;td data-col-size=&quot;md&quot; data-start=&quot;614&quot; data-end=&quot;658&quot;&gt;Failing to stop at a red traffic signal.&lt;/td&gt;&lt;/tr&gt;&lt;/tbody&gt;&lt;/table&gt;', 7500, 1, '2026-04-29 09:56:07', NULL),
(10, '102', 'Driving while Drunk', '&lt;p&gt;Driving Under ther influence of drugs&lt;/p&gt;', 6000, 1, '2026-04-29 09:58:39', NULL),
(11, '103', ' Running Over Speed Limit', '&lt;p&gt;Overspeeding beyong speed limit&lt;/p&gt;', 10000, 1, '2026-04-29 09:59:52', NULL),
(12, '104', ' Driving without License', '&lt;p&gt;This traffic operates on driving without license&lt;/p&gt;', 8500, 1, '2026-04-29 10:02:49', NULL),
(13, '111', 'Dangerous overtaking', '&lt;p&gt;Overtaking where prohibited or unsafe.&lt;/p&gt;', 12000, 1, '2026-04-29 10:08:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `offense_items`
--

CREATE TABLE `offense_items` (
  `driver_offense_id` int(30) NOT NULL,
  `offense_id` int(30) DEFAULT NULL,
  `fine` float NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offense_items`
--

INSERT INTO `offense_items` (`driver_offense_id`, `offense_id`, `fine`, `status`, `date_created`) VALUES
(3, NULL, 1000, 1, '2026-04-29 22:08:00'),
(1, NULL, 650, 1, '2024-05-31 22:00:00'),
(1, NULL, 1000, 1, '2024-05-31 22:00:00'),
(1, NULL, 650, 1, '2024-05-31 22:00:00'),
(5, 7, 5000, 1, '2026-04-29 14:46:00'),
(4, 11, 10000, 1, '2026-04-29 04:15:00'),
(4, 13, 12000, 1, '2026-04-29 04:15:00'),
(4, 10, 6000, 1, '2026-04-29 04:15:00');

-- --------------------------------------------------------

--
-- Table structure for table `offense_list`
--

CREATE TABLE `offense_list` (
  `id` int(30) NOT NULL,
  `driver_id` int(30) NOT NULL,
  `officer_name` text NOT NULL,
  `officer_id` text NOT NULL,
  `ticket_no` text NOT NULL,
  `total_amount` float NOT NULL,
  `remarks` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending, 1=paid',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offense_list`
--

INSERT INTO `offense_list` (`id`, `driver_id`, `officer_name`, `officer_id`, `ticket_no`, `total_amount`, `remarks`, `status`, `date_created`, `date_updated`) VALUES
(1, 1, 'Emmanuel Wayonyi', 'OFC-789456123', '123456789', 2300, 'Sample Traffic Offense Record Only.', 1, '2024-05-31 22:00:00', '2026-04-28 22:55:22'),
(3, 4, 'Collins Wanjala', '1239', 'FR-1300', 1000, 'Paid via KCB BANK', 1, '2026-04-29 22:08:00', '2026-04-28 22:54:07'),
(4, 1, 'Emmanuel Sifuna', 'OFC-789456124', 'FR-1500', 28000, '', 1, '2026-04-29 04:15:00', '2026-04-29 10:16:04'),
(5, 5, 'Allan Watende', 'OFC-789456129', 'FR-1900', 5000, '', 1, '2026-04-29 14:46:00', '2026-04-29 10:15:23');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', ' Traffic Offense Management System '),
(6, 'short_name', 'TOMS '),
(11, 'logo', 'uploads/1777406220_traffic offense logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1629334140_traffic_bg.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Richard', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1777407240_traffic offense logo.png', NULL, 1, '2021-01-20 14:02:37', '2026-04-28 23:14:40'),
(9, 'John', 'Simiyu', 'simiyu', '1254737c076cf867dc53d60a0364f38e', 'uploads/1629336240_avatar.jpg', NULL, 2, '2021-08-19 09:24:25', '2024-11-20 17:16:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `drivers_list`
--
ALTER TABLE `drivers_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `offenses`
--
ALTER TABLE `offenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD KEY `driver_offense_id` (`driver_offense_id`),
  ADD KEY `offense_id` (`offense_id`);

--
-- Indexes for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `drivers_list`
--
ALTER TABLE `drivers_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `offenses`
--
ALTER TABLE `offenses`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `offense_list`
--
ALTER TABLE `offense_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `drivers_meta`
--
ALTER TABLE `drivers_meta`
  ADD CONSTRAINT `drivers_meta_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `offense_items`
--
ALTER TABLE `offense_items`
  ADD CONSTRAINT `offense_items_ibfk_1` FOREIGN KEY (`driver_offense_id`) REFERENCES `offense_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `offense_items_ibfk_2` FOREIGN KEY (`offense_id`) REFERENCES `offenses` (`id`) ON DELETE SET NULL ON UPDATE NO ACTION;

--
-- Constraints for table `offense_list`
--
ALTER TABLE `offense_list`
  ADD CONSTRAINT `offense_list_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
