-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 09, 2023 at 08:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bytegalore`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password`) VALUES
(1, 'admin1', 'password1'),
(2, 'admin2', 'password2'),
(3, 'admin3', 'password3');

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `num_people` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `food_order` text NOT NULL,
  `special_request` text NOT NULL,
  `total_order` decimal(10,2) NOT NULL,
  `reservation_fee` decimal(10,2) NOT NULL,
  `proof_of_payment` varchar(255) NOT NULL,
  `reference_number` varchar(255) DEFAULT NULL,
  `appointment_time` time NOT NULL,
  `appointment_date` date NOT NULL,
  `booking_datetime` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `user_id`, `num_people`, `quantity`, `food_order`, `special_request`, `total_order`, `reservation_fee`, `proof_of_payment`, `reference_number`, `appointment_time`, `appointment_date`, `booking_datetime`, `status`) VALUES
(39, 0, 0, 0, '', '', 0.00, 0.00, '', '1234234234', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(40, 0, 0, 0, '', '', 0.00, 0.00, '', '1234567', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(42, 0, 0, 0, '', '', 0.00, 0.00, '', '12334245', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(47, 0, 0, 0, '', '', 0.00, 0.00, '', 'llkjlkjlklk', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(49, 0, 0, 0, '', '', 0.00, 0.00, '', '1231231231', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(54, NULL, 0, 0, '', '', 0.00, 0.00, '', '12312313', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(57, NULL, 0, 0, '', '', 0.00, 0.00, '', '1234234234', '00:00:00', '0000-00-00', '0000-00-00 00:00:00', 'Pending'),
(58, 11, 5, 0, 'a:2:{i:0;s:1:\"3\";i:1;s:1:\"4\";}', 'dadasdasd', 0.00, 0.00, '', NULL, '19:27:00', '2023-06-02', '2023-05-31 19:25:22', 'Approve'),
(80, 10, 2, 5, 'a:2:{i:0;a:2:{s:4:\"name\";s:32:\"Chicken Inasal (Grilled Chicken)\";s:8:\"quantity\";s:1:\"3\";}i:1;a:2:{s:4:\"name\";s:21:\"Sisig (Sizzling Pork)\";s:8:\"quantity\";s:1:\"2\";}}', 'test 2', 1250.00, 250.00, '', '654654', '23:46:00', '2023-06-09', '2023-06-08 19:46:09', 'Approve'),
(82, 10, 2, 2, 'a:1:{i:0;a:2:{s:4:\"name\";s:19:\"Lechon (Roast Pork)\";s:8:\"quantity\";s:1:\"2\";}}', 'final test', 700.00, 140.00, '', NULL, '07:53:00', '2023-06-09', '2023-06-08 19:53:29', 'Pending'),
(83, 4, 5, 10, 'a:3:{i:0;a:2:{s:4:\"name\";s:19:\"Lechon (Roast Pork)\";s:8:\"quantity\";s:1:\"5\";}i:1;a:2:{s:4:\"name\";s:21:\"Lumpia (Spring Rolls)\";s:8:\"quantity\";s:1:\"4\";}i:2;a:2:{s:4:\"name\";s:39:\"Kare-Kare (Oxtail Stew in Peanut Sauce)\";s:8:\"quantity\";s:1:\"1\";}}', 'Request Msg', 3000.00, 600.00, '', 'hello1234', '08:10:00', '2023-06-22', '2023-06-09 00:03:46', 'Approve'),
(84, 13, 5, 15, 'a:3:{i:0;a:2:{s:4:\"name\";s:19:\"Lechon (Roast Pork)\";s:8:\"quantity\";s:1:\"5\";}i:1;a:2:{s:4:\"name\";s:21:\"Lumpia (Spring Rolls)\";s:8:\"quantity\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:36:\"Pancit (Filipino Stir-Fried Noodles)\";s:8:\"quantity\";s:1:\"5\";}}', 'Testing', 3750.00, 750.00, '', NULL, '08:25:00', '2023-06-21', '2023-06-09 02:20:36', 'Pending'),
(85, 14, 5, 15, 'a:3:{i:0;a:2:{s:4:\"name\";s:19:\"Lechon (Roast Pork)\";s:8:\"quantity\";s:1:\"5\";}i:1;a:2:{s:4:\"name\";s:21:\"Lumpia (Spring Rolls)\";s:8:\"quantity\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:36:\"Pancit (Filipino Stir-Fried Noodles)\";s:8:\"quantity\";s:1:\"5\";}}', '', 3750.00, 750.00, '', 'hellotest1234world', '07:25:00', '2023-06-14', '2023-06-09 02:23:24', 'Pending'),
(86, 17, 5, 18, 'a:4:{i:0;a:2:{s:4:\"name\";s:19:\"Lechon (Roast Pork)\";s:8:\"quantity\";s:1:\"5\";}i:1;a:2:{s:4:\"name\";s:21:\"Lumpia (Spring Rolls)\";s:8:\"quantity\";s:1:\"5\";}i:2;a:2:{s:4:\"name\";s:36:\"Pancit (Filipino Stir-Fried Noodles)\";s:8:\"quantity\";s:1:\"5\";}i:3;a:2:{s:4:\"name\";s:39:\"Kare-Kare (Oxtail Stew in Peanut Sauce)\";s:8:\"quantity\";s:1:\"3\";}}', 'Request Msg', 4500.00, 900.00, '', NULL, '20:05:00', '2023-06-20', '2023-06-09 02:42:10', 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `contact_submissions`
--

CREATE TABLE `contact_submissions` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `food_menu`
--

CREATE TABLE `food_menu` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `food_menu`
--

INSERT INTO `food_menu` (`id`, `name`, `price`) VALUES
(1, 'Lechon (Roast Pork)', 350.00),
(2, 'Lumpia (Spring Rolls)', 250.00),
(3, 'Pancit (Filipino Stir-Fried Noodles)', 150.00),
(4, 'Kare-Kare (Oxtail Stew in Peanut Sauce)', 250.00),
(5, 'Chicken Adobo', 200.00),
(6, 'Garlic Rice', 150.00),
(7, 'Sinigang (Tamarind Soup with Shrimp)', 200.00),
(8, 'Halo-Halo (Mixed Dessert with Shaved Ice)', 150.00),
(9, 'Beef Caldereta (Spicy Beef Stew)', 250.00),
(10, 'Bicol Express (Spicy Pork Stew in Coconut Milk)', 200.00),
(11, 'Chicken Inasal (Grilled Chicken)', 250.00),
(12, 'Sisig (Sizzling Pork)', 250.00);

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`id`, `email`) VALUES
(1, 'yurialfrance05@gmail.com'),
(2, 'tanggol@gmail.com'),
(3, 'hehe@gmail.com'),
(4, 'contact@gmail.com'),
(5, 'asdasd@gmail.com'),
(8, 'jmsmodelo2022@plm.edu.ph');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(225) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `profile_picture` varchar(1) NOT NULL,
  `contact_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `profile_picture`, `contact_number`) VALUES
(9, 'Jamilynn Modelo', 'jam@gmail.com', '$2y$10$6uJhN/O7ZQBXozDcJpPzMeXyZQe.pPhxxJ21VVeZoadQJqUXMSeg6', 'u', '0943455'),
(10, 'Daniel Aquiatan', 'asdasd@gmail.com', '$2y$10$ydMhMNlIYmfLpe.e3Dyq8eedAN.G/Sy297HzukEtaKdjf1G9RzqiS', '', '09282669898'),
(17, 'Yuri Alfrance', 'yuri@gmail.com', '$2y$10$k1TzPjSTktFfc8i0FegX6.yb4o9leDN.F33dE06V08fKvpT1.ly8y', '', '091324');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `food_menu`
--
ALTER TABLE `food_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
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
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `contact_submissions`
--
ALTER TABLE `contact_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `food_menu`
--
ALTER TABLE `food_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(225) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
