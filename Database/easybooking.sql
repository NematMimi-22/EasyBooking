-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 28, 2023 at 04:37 PM
-- Server version: 8.0.13
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `easybooking`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` char(200) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(200) NOT NULL,
  `type` tinyint(4) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `email`, `password`, `type`, `created_at`) VALUES
(80, 'Nqaa', 'Nqaa@gmail.com', '$2y$10$xQKcZ41tc22/DzFpYdnHJOJg5cqDtRHJj92buu4EKJopr.OHV2Nou', 2, '2022-11-26 18:05:30'),
(82, 'Malak', 'Malak@gmail.com', '$2y$10$DX6rGpBwq6GhKI67ZXPVo.pIVKaA.tPMBImRkfyDrUidK5jF4KcWi', 1, '2022-12-04 15:01:06'),
(83, 'Manar', 'manar@gmail.com', '$2y$10$p1Q70vbI604hsnDKmlavZuO1pAY/QbTYLNB3y/GFnSfs8wL0RVSKe', 1, '2022-12-11 21:57:10'),
(84, 'Nemat', 'nemat@gmail.com', '$2y$10$B/qSr3oVC8wnKM7WyO2UpeBid42JQ3Z/0hvq9fXhTIjIiMiabK0.y', 2, '2022-12-27 20:41:32'),
(85, 'huda', 'huda@gmail.com', '$2y$10$cjFcA05J0qn9blPSfzIdzuEYCNRaVwHj1tvNTmq9sUpqiYvaaJi0.', 1, '2022-12-27 20:44:42'),
(86, 'Raneen', 'raneen@gmail.com', '$2y$10$F2dVNCrHEDHxZ5CRaJwPXumJH0Jg30a.EHEtjaD.lkj1AM7nnLIg6', 2, '2022-12-27 21:14:11'),
(87, 'Deema', 'deema@gmail.com', '$2y$10$iDpOkmtYNoipJvbSzvqhmO.AkgnQ7guxfr1v6q7.q9epNfuJbAqr6', 1, '2022-12-27 23:16:19'),
(88, 'manarmimi', 'manar22@gmail.com', '$2y$10$a6yopzOfJDziDGOUBA/oPOIw1nSN7G.SWe2ZfWo3iAn7FRv4Jswei', 1, '2023-01-01 11:42:37'),
(89, 'admin', 'admin@gmail.com', '$2y$10$Klhi/guzZLfO9FjTjDD5heqG1pNzQjBlJQ9dxNwYLn8zKDMmdDRjq', 1, '2023-01-01 11:46:13'),
(90, 'test', 'test@gmail.com', '$2y$10$nWJS9BSJSc1dKfuBhqPmqOZ3pcjPPmcyTBKb2f.FSVCQJ4Dv1Lgm2', 1, '2023-01-01 11:47:30');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `icon` varchar(500) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `features`
--

INSERT INTO `features` (`id`, `name`, `icon`) VALUES
(13, 'Browsing Halls', '63a4dd93f1509.svg'),
(14, 'Fast Booking', '63a4de3fabc1f.svg'),
(15, 'Intelligent Calender', '63a4de55f39a0.svg'),
(16, 'Online Payment', '63a4de6e78225.svg');

-- --------------------------------------------------------

--
-- Table structure for table `feedbacks`
--

CREATE TABLE `feedbacks` (
  `id` int(11) NOT NULL,
  `FeedBack` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedbacks`
--

INSERT INTO `feedbacks` (`id`, `FeedBack`, `user_id`) VALUES
(27, 'What can I say?\r\n\r\nI have celebrated my birthday at the Deluxe Banquet Hall, Deluxe Lounge or Olivia for the last three years! I have celebrated other family and friend functions at this location including my children’s Christening and my family only plans their events at Deluxe! Thank you for making our events so special. You food is great, your service is the best and your hall is beautiful! The spinning chandelier is one of a kind for sure! Second to none!\r\n\r\nThank you! ', 32),
(28, 'We celebrated our moms-grandmas 90th birthday at De Luxe and we are so grateful for Albert & Raffis help for making that celebration a very memorable. Three weeks later and everyone is still raving about it! The venue is beautiful, our friends and families kept taking pictures in front of the curtains and wall decor. Everyone enjoyed the delicious food and the staff was very attentive and kind as well. We look forward to working with them again in the near future.', 40),
(29, 'I had my engagement party at De Luxe and let me tell you everybody fell in love with the hall. The food was delicious, the service was outstanding, and the decor was so lush and elegant. People will not stop telling me how gorgeous everything was. Thank you De Luxe for making my occasion so beautiful and fun!!!! I will definitely be having more parties here to come!!!', 19);

-- --------------------------------------------------------

--
-- Table structure for table `feedback_subhall`
--

CREATE TABLE `feedback_subhall` (
  `id` int(11) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hall_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback_subhall`
--

INSERT INTO `feedback_subhall` (`id`, `feedback`, `user_id`, `hall_id`) VALUES
(1, 'NICE Hall', 35, 63),
(3, 'wow', 12, 63),
(4, 'Amazing!', 35, 63),
(5, 'best hall ever', 35, 63),
(6, 'not bad', 35, 63),
(7, 'nice', 35, 65),
(8, 'nice, nemat wedding was there', 41, 66);

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `city` enum('Ramallah','Al-Bireh','Birzeit') NOT NULL,
  `address` varchar(255) NOT NULL,
  `hall_describtion` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','approved','canceled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `type`, `city`, `address`, `hall_describtion`, `image`, `image_view`, `user_id`, `status`) VALUES
(74, 'rayahall', 1, 'Ramallah', 'Ramallah em alsharayet steat', 'Ramallah em alsharayet steatRamallah em alsharayet steat', '63b92f0708571.pdf', '63b92f070856e.jpg', 38, 'approved'),
(75, 'Ownerhall', 2, 'Birzeit', 'near to Birzeit school', 'hall in Birzeit hall in Birzeit hall in Birzeit hall in Birzeit', '63b92f7ebcf4e.pdf', '63b92f7ebcf4b.jpg', 37, 'approved'),
(77, 'test', 2, 'Ramallah', 'Ramallah', 'test test test test test test test test test test test test test test test test test test test test test test test test', '63d54c8214532.pdf', '63d54c8214522.jpg', 37, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subhall_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `uploaded_on`, `subhall_id`) VALUES
(64, '63b92f215eda4.jpg', '2023-01-07 10:36:49', 61),
(66, '63b92f95185a1.jpg', '2023-01-07 10:38:45', 63),
(68, '63b9c6c2d4bf9.jpg', '2023-01-07 21:23:46', 65),
(69, '63be8e24c79d9.jpg', '2023-01-11 12:23:32', 63);

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int(11) NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `number_guests` int(11) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `notes` varchar(1000) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('pending','approved','canceled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `event_type`, `number_guests`, `date`, `start_time`, `end_time`, `notes`, `hall_id`, `user_id`, `status`) VALUES
(1, '2', 2, '2023-01-10', '09:00:00', '05:00:00', '', 61, 37, 'pending'),
(3, '3', 5, '2023-01-18', '14:00:00', '16:00:00', 'my party', 61, 35, 'approved'),
(4, '3', 10, '2023-01-21', '16:00:00', '18:00:00', 'birthday', 63, 35, 'approved'),
(5, '3', 50, '2023-01-22', '12:00:00', '15:00:00', '', 63, 35, 'approved'),
(6, '2', 20, '2023-01-26', '02:00:00', '09:00:00', '', 66, 35, 'approved'),
(8, '2', 50, '2023-01-27', '16:00:00', '20:00:00', 'nqaa wedding', 65, 35, 'approved'),
(9, '2', 50, '2023-01-28', '14:00:00', '16:00:00', 'nemat wedding', 66, 41, 'approved'),
(10, '5', 100, '2023-01-27', '20:00:00', '22:00:00', '', 65, 41, 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `subhalls`
--

CREATE TABLE `subhalls` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `number_of_guests` int(11) NOT NULL,
  `price` float NOT NULL,
  `hall_describtion` varchar(500) NOT NULL,
  `services` varchar(500) NOT NULL,
  `image_view` varchar(300) NOT NULL,
  `hall_id` int(11) NOT NULL,
  `num_of_reservation` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subhalls`
--

INSERT INTO `subhalls` (`id`, `name`, `type`, `number_of_guests`, `price`, `hall_describtion`, `services`, `image_view`, `hall_id`, `num_of_reservation`) VALUES
(61, 'rayahall--1--', 1, 500, 6000, 'Ramallah em alsharayet steatRamallah em alsharayet steat', 'Ramallah em alsharayet steatRamallah em alsharayet steatRamallah em alsharayet steat', '63b92f1722916.jpg', 74, 0),
(63, 'Ownerhall--1--', 1, 500, 6000, 'Ramallah em alsharayet steatRamallah em alsharayet steat', 'Ramallah em alsharayet steatRamallah em alsharayet steat', '63b92f905615b.jpg', 75, 2),
(65, 'ownerhall2', 1, 5007, 600, 'Ramallah em alsharayet steatRamallah em alsharayet steat', 'Ramallah em alsharayet steatRamallah em alsharayet steat', '63b9c6b5c9fb2.jpg', 75, 1),
(67, 'test1', 2, 100, 1000, 'test test test test test test test test test test test', 'test test test test test test test test test', '63d54d2f09a8d.jpg', 77, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `password` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `email` varchar(200) CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL,
  `type` enum('user','owner') CHARACTER SET utf32 COLLATE utf32_unicode_ci NOT NULL DEFAULT 'user',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `email`, `type`, `status`, `created_at`) VALUES
(9, 'Nqaa', '$2y$10$4YPkBvR68NIFBQjztEEIoelsZVZ62oUm0L.lp6vQiXsnI.6VGyu7i', 'nqaaladadwa@gmail.com', 'user', 1, '2022-12-04 01:12:09'),
(12, 'Nemat', '$2y$10$HKI8CXUgB2.84UVPc5hpvOk35b3VzxFTxYqjqdQjr6ScwQLpzj4ha', 'nemat@gmail.com', 'owner', 0, '2022-12-04 14:59:46'),
(13, 'Raneen', '$2y$10$0/yDEQebztwyX1TNRTbCo.Vlw31Zuc2iod5GBXRF/UdnSl1.QXVs6', 'raneen@gmail.com', 'owner', 1, '2022-12-04 15:03:19'),
(15, 'Nemat', '$2y$10$iEZr5U84nX4oO5GcTlLDjOvploNZgRThrE0F3PyxQxnqGH4lJtbuq', 'nematmimi01@gmail.com', 'user', 1, '2022-12-13 19:27:16'),
(16, 'Nemat', '$2y$10$AlU8HJ5aFwgqwXgoYGeQOO2j018Pb6a9cN8wdAxZoVXiltd13pR7S', 'nemat22@gmail.com', 'user', 1, '2022-12-17 09:48:43'),
(17, 'dana', '$2y$10$pQOh8yswmu5ILWAkurirHOLkPejwMbkeHVc8joAAY37V.ZrdhSCpa', 'dana@gmail.com', 'user', 1, '2022-12-20 15:21:17'),
(18, 'lama', '$2y$10$oeiVWDZssfZTk8SovJN6YO4wuofYf9TlBnkLJyWqeEIokEEmoyye6', 'lama@gmail.com', 'user', 1, '2022-12-20 16:02:31'),
(19, 'ahmad', '$2y$10$5yU5gobdLGFXx6vtImaSOuhFxAaP0/4762qMiJaZRAqK9xQbAxi0W', 'ahmad@gmail.com', 'user', 1, '2022-12-26 11:19:06'),
(21, 'amal', '$2y$10$TAvhU1bVanslGkw9XGVUvu3zY/o4IrT0QEEjf9bzyCTgr9FrxO/zW', 'amal@gmail.com', 'user', 1, '2022-12-26 14:08:07'),
(23, 'test', '$2y$10$IGyouBYOdPzUpBdjkra7kONPi.jXFAtggpGqHr41sWMKL7s7MIvgO', 'test@gmail.com', 'owner', 1, '2022-12-26 14:11:09'),
(24, 'hussain', '$2y$10$fw/PNpbDGlEb821oac4d7.7eJrYLEYoX0lNiAydYa0Axr9PXJdCEq', 'hussain@gmail.com', 'user', 1, '2022-12-26 14:38:26'),
(25, 'sarah', '$2y$10$dWSBGXru74gJOPSMTvHOPucoTS28GuN3G1Pzv8joKEQ984xGyvvpS', 'sarah@gmail.com', 'user', 1, '2022-12-26 18:26:52'),
(26, 'Eman', '$2y$10$tGfiVdgKYya01DL7I876eukdr9jsMLggodBHX0B2VNmotyTuj3IVS', 'eman@gmail.com', 'user', 1, '2022-12-27 17:02:45'),
(27, 'misk', '$2y$10$WUJIKX4x94/ervfRB1f36uQPEsj9UqYL5J30RaEaSbdav89wIHPoW', 'misk@gmail.com', 'user', 1, '2022-12-27 17:08:10'),
(28, 'ayman', '$2y$10$nxw1gYQLbrG2UmVCK7Xm0uzKxeZZ9vbtOtucDy9c3hX9Jxa39mkP6', 'ayman@gmail.com', 'user', 1, '2022-12-27 17:13:22'),
(29, 'aseel', '$2y$10$AS6DwBoXd3A7Hgs972fLROuIIu/epEXWsjZKzWRTkGkBkx0fyjkiC', 'aseel@gmail.com', 'user', 1, '2022-12-27 17:28:01'),
(30, 'raneem', '$2y$10$mwO7zdqlEEajGZ7XGPUUc.fYKhTbMfujAhqY15cPeKpSaTIvVmAo6', 'raneem@gmail.com', 'user', 1, '2022-12-27 17:47:57'),
(32, 'jana', '$2y$10$JDrZqtVU09dhRbNLRpW13u7ygIX3TPMkLvKpQmWw1GaI5wheGUFFe', 'jana@gmail.com', 'user', 1, '2022-12-27 17:51:54'),
(35, 'roro', '$2y$10$B3fYiyK7H33SShNkzaAI7eUbJN1qpiXbxpTpHDJRLVQb8jl9wteqy', 'roro@gmail.com', 'user', 1, '2022-12-27 23:07:55'),
(36, 'ror', '$2y$10$EM4pA7GKkRvL3pquI1UwfOIkrdQEo0rUudNNozMb7w50kNzdFOCGy', 'ror@gmail.com', 'owner', 1, '2022-12-28 19:14:57'),
(37, 'owner', '$2y$10$FhLmn9UB/hf4R6T1nJerf.rAwjYEik/eLRECmjsmiqxUKsECBZS2u', 'owner@gmail.com', 'owner', 1, '2022-12-28 22:55:30'),
(38, 'raya', '$2y$10$736vC9QBmOlM4WLS5tNO0eDnku.ueVloJvcRgzGftA4jtFn5JR86i', 'raya@gmail.com', 'owner', 1, '2022-12-29 00:33:36'),
(39, 'status', '$2y$10$NDm9fSWBuuBkgVKlqfxjb.DS7tINhOCfvmcgL1wzNgq5qt6w1DPO2', 'status@gmail.com', 'user', 0, '2023-01-01 00:26:27'),
(40, 'Dina', '$2y$10$Eh87rJiQY8cOdtSInrkDDujSDSnk4sHX/P4hQ3i0aOOxVas32/cKK', 'dina@gmail.com', 'user', 1, '2023-01-02 14:40:05'),
(41, 'lara', '$2y$10$c3x57hXt35UTb1cdBjrSaOD8Unc/2CUukH7ofyu0Dhk4JLLAqCqrK', 'lara@gmail.com', 'user', 1, '2023-01-25 13:58:48');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `features`
--
ALTER TABLE `features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `feedback_subhall`
--
ALTER TABLE `feedback_subhall`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `halls`
--
ALTER TABLE `halls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subhall_id` (`subhall_id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subhalls`
--
ALTER TABLE `subhalls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hall_id` (`hall_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `feedback_subhall`
--
ALTER TABLE `feedback_subhall`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subhalls`
--
ALTER TABLE `subhalls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedbacks`
--
ALTER TABLE `feedbacks`
  ADD CONSTRAINT `feedbacks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_ibfk_1` FOREIGN KEY (`subhall_id`) REFERENCES `subhalls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `subhalls`
--
ALTER TABLE `subhalls`
  ADD CONSTRAINT `subhalls_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `halls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
