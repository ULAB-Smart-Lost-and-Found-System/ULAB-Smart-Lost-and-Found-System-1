-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 24, 2025 at 11:31 AM
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
-- Database: `ulab_smart_lost_and_found_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `ulab_pass` varchar(20) DEFAULT NULL,
  `department` varchar(50) DEFAULT 'N/A',
  `email` varchar(100) DEFAULT NULL,
  `created_date` date DEFAULT curdate()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `ulab_pass`, `department`, `email`, `created_date`) VALUES
(1, 'Mst. Maimuna Hossain Maliha', '233014068', 'CSE', 'maimuna.hossain.cse@ulab.edu.bd', '2025-08-23'),
(2, 'Sumaya Akter', '242011272', 'BBA', 'sumaya.akter.bba@ulab.edu.bd', '2025-08-23'),
(3, 'Jannatul Bushra Mou', '242013120', 'DEH', 'jannatul.bushra1.deh@ulab.edu.bd', '2025-08-23'),
(4, 'Asif Ahamad', '223014215', 'CSE', 'asif.ahamad.cse@ulab.edu.bd', '2025-08-23'),
(5, 'Md Samiul Alam', '223014176', 'CSE', 'samiul.alam.cse@ulab.edu.bd', '2025-08-23'),
(6, 'Hasinar Khatun Laboni', '223011203', 'BBA', 'hasina.khatun.bba@ulab.edu.bd', '2025-08-23'),
(7, 'Nahida Afrin', '163014022', 'CSE', 'nahida.afrin.cse@ulab.edu.bd', '2025-08-23'),
(8, 'Shakil Ahmed Shawon', '201014081', 'CSE', 'shakil.ahmed.cse@ulab.edu.bd', '2025-08-23'),
(9, 'S.M.Ehasan Ul Islam', '241016002', 'EEE', 'ehasanul.islam.eee@ulab.edu.bd ', '2025-08-23'),
(10, 'Abonti Kanta Mandal', '221014057', 'CSE', 'abonti.kanta.cse@ulab.edu.bd', '2025-08-23'),
(11, 'Md. Abdullah Ahsan Sanim', '233014177', 'CSE', 'abdullah.ahsan.cse@ulab.edu.bd', '2025-08-23'),
(12, 'TANJINA JAMAL', '241011063', 'BBA', 'tanjina.jamal.bba@ulab.edu.bd', '2025-08-23'),
(13, 'Halima Khatoon Oni', '172014040', 'CSE', 'halima.khatun.cse@ulab.edu.bd', '2025-08-23'),
(14, 'MD.Sharif Hasan', '233017008', 'BBA', 'sharif.hasan.bba@ulab.edu.bd', '2025-08-23'),
(15, 'Afrida haque Maria', '212014009', 'CSE', 'afrida.haque.cse@ulab.edu.bd', '2025-08-23'),
(16, 'Md Nayeem Ahmed', '183014038', 'CSE', 'nayeem.ahmed1.cse@ulab.edu.bd', '2025-08-23'),
(17, 'Manish Chowdhury', '242013052', 'DEH', 'manish.chowdhury.deh@ulab.edu.bd', '2025-08-23'),
(18, 'Nusrat Jahann Suchana', '171014014', 'CSE', 'nusrat.jahan7.cse@ulab.edu.bd', '2025-08-23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `ulab_pass` (`ulab_pass`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
