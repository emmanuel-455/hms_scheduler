-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 03, 2021 at 03:17 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `scheduler_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(30) NOT NULL,
  `patient_id` int(30) NOT NULL,
  `date_sched` datetime NOT NULL,
  `ailment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `patient_id`, `date_sched`, `ailment`, `status`, `date_created`) VALUES
(6, 6, '2021-09-09 08:00:00', 'Sample Ailment', 1, '2021-09-02 21:58:59'),
(8, 7, '2021-09-09 08:35:00', '', 0, '2021-09-02 23:08:04'),
(10, 9, '2021-09-03 09:30:00', 'Stomach ache for about 3 days', 1, '2021-09-02 23:14:50'),
(11, 10, '2021-09-03 08:00:00', 'Flesh wound', 1, '2021-09-02 23:23:05'),
(12, 11, '2021-09-03 13:00:00', 'test', 0, '2021-09-02 23:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `location`
--

CREATE TABLE `location` (
  `id` int(30) NOT NULL,
  `location` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `max_a_day` int(5) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `location`
--

INSERT INTO `location` (`id`, `location`, `description`, `max_a_day`, `date_created`, `date_updated`) VALUES
(1, 'Vaccination Location 1, Sample City, Negros Occidental', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus accumsan ac justo consequat dignissim. Nam eget pretium nisl, at tempor velit. Sed vel nisl a metus porta placerat in in neque. Praesent aliquam nisi nisl, eget porta lacus iaculis ac. Fusce dignissim et nibh vel euismod. Vestibulum eget enim metus. Ut faucibus, lectus facilisis eleifend dignissim, ligula lorem porttitor elit, eu placerat odio urna quis augue. Proin rutrum, enim in auctor rhoncus, turpis ipsum rutrum sem, nec varius purus nisi at dolor. Donec porta turpis vel erat iaculis, eget consequat mauris dapibus. Nullam euismod quam sagittis nisl maximus auctor. Duis turpis nisi, condimentum eget interdum ut, ultricies non turpis. Donec auctor a mi at commodo. Vivamus ultrices venenatis orci, vel venenatis sem pharetra ac. Ut scelerisque lorem sed purus facilisis lacinia.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 500, '2021-06-28 09:52:13', '2021-06-28 09:52:39'),
(4, 'Sample location  2', '&lt;p&gt;Sample only&lt;/p&gt;', 100, '2021-06-28 16:19:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `patient_list`
--

CREATE TABLE `patient_list` (
  `id` int(30) NOT NULL,
  `name` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_list`
--

INSERT INTO `patient_list` (`id`, `name`, `date_created`) VALUES
(6, 'John Smith', '2021-09-02 21:58:59'),
(9, 'Claire Blake', '2021-09-02 23:14:50'),
(10, 'Mike Williams', '2021-09-02 23:23:05'),
(11, 'Samantha Lou', '2021-09-02 23:44:32');

-- --------------------------------------------------------

--
-- Table structure for table `patient_meta`
--

CREATE TABLE `patient_meta` (
  `patient_id` int(30) NOT NULL,
  `meta_field` text DEFAULT NULL,
  `meta_value` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient_meta`
--

INSERT INTO `patient_meta` (`patient_id`, `meta_field`, `meta_value`, `date_created`) VALUES
(6, 'id', '6', '2021-09-02 23:12:42'),
(6, 'patient_id', '6', '2021-09-02 23:12:42'),
(6, 'name', 'John Smith', '2021-09-02 23:12:42'),
(6, 'email', 'jsmith@sample.com', '2021-09-02 23:12:42'),
(6, 'contact', '09123456789', '2021-09-02 23:12:42'),
(6, 'gender', 'Male', '2021-09-02 23:12:42'),
(6, 'dob', '1997-06-23', '2021-09-02 23:12:42'),
(6, 'address', 'Sample Address', '2021-09-02 23:12:42'),
(9, 'id', '', '2021-09-02 23:14:50'),
(9, 'patient_id', '', '2021-09-02 23:14:50'),
(9, 'name', 'Claire Blake', '2021-09-02 23:14:50'),
(9, 'email', 'cblake@sample.com', '2021-09-02 23:14:50'),
(9, 'contact', '09123789456', '2021-09-02 23:14:50'),
(9, 'gender', 'Female', '2021-09-02 23:14:50'),
(9, 'dob', '1997-06-23', '2021-09-02 23:14:50'),
(9, 'address', 'Sample Address', '2021-09-02 23:14:50'),
(10, 'id', '', '2021-09-02 23:23:05'),
(10, 'patient_id', '', '2021-09-02 23:23:05'),
(10, 'name', 'Mike Williams', '2021-09-02 23:23:05'),
(10, 'email', 'mwilliams@sample.com', '2021-09-02 23:23:05'),
(10, 'contact', '09789456321', '2021-09-02 23:23:05'),
(10, 'gender', 'Female', '2021-09-02 23:23:05'),
(10, 'dob', '1990-12-10', '2021-09-02 23:23:05'),
(10, 'address', 'Sample Address', '2021-09-02 23:23:05'),
(11, 'id', '12', '2021-09-02 23:59:40'),
(11, 'patient_id', '11', '2021-09-02 23:59:40'),
(11, 'name', 'Samantha Lou', '2021-09-02 23:59:40'),
(11, 'email', 'slou@sample.com', '2021-09-02 23:59:40'),
(11, 'contact', '09123654456', '2021-09-02 23:59:40'),
(11, 'gender', 'Female', '2021-09-02 23:59:40'),
(11, 'dob', '1990-12-07', '2021-09-02 23:59:40'),
(11, 'address', 'Sample Address', '2021-09-02 23:59:40');

-- --------------------------------------------------------

--
-- Table structure for table `schedule_settings`
--

CREATE TABLE `schedule_settings` (
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL,
  `date_create` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `schedule_settings`
--

INSERT INTO `schedule_settings` (`meta_field`, `meta_value`, `date_create`) VALUES
('day_schedule', 'Monday,Tuesday,Wednesday,Thursday,Friday', '2021-09-02 19:55:37'),
('morning_schedule', '08:00,11:00', '2021-09-02 19:55:37'),
('afternoon_schedule', '13:00,16:00', '2021-09-02 19:55:37');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Patient Appointment Scheduler System - PHP'),
(6, 'short_name', 'PASS-PHP'),
(11, 'logo', 'uploads/1630631400_clinic-logo.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1630631400_clinic-cover.jpg');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'George', 'Wilson', 'gwilson', 'd40242fb23c45206fadee4e2418f274f', 'uploads/1630598640_male.png', NULL, 0, '2021-09-03 00:04:40', '2021-09-03 00:07:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location`
--
ALTER TABLE `location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_list`
--
ALTER TABLE `patient_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patient_meta`
--
ALTER TABLE `patient_meta`
  ADD KEY `patient_id` (`patient_id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `location`
--
ALTER TABLE `location`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `patient_list`
--
ALTER TABLE `patient_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `patient_meta`
--
ALTER TABLE `patient_meta`
  ADD CONSTRAINT `patient_meta_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
