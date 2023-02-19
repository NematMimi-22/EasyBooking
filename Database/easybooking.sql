-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 19, 2023 at 05:22 PM
-- Server version: 8.0.21
-- PHP Version: 8.1.12

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
  `id` int NOT NULL,
  `name` char(200) NOT NULL,
  `email` char(255) NOT NULL,
  `password` char(200) NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1',
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
-- Table structure for table `calendar`
--

CREATE TABLE `calendar` (
  `id` int NOT NULL,
  `title` varchar(200) NOT NULL,
  `start` date NOT NULL,
  `end` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `calendar`
--

INSERT INTO `calendar` (`id`, `title`, `start`, `end`) VALUES
(1, 'event1', '2023-01-31', '2023-01-31'),
(2, 'event1', '2023-01-31', '2023-01-31');

-- --------------------------------------------------------

--
-- Table structure for table `features`
--

CREATE TABLE `features` (
  `id` int NOT NULL,
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
  `id` int NOT NULL,
  `FeedBack` varchar(500) NOT NULL,
  `user_id` int NOT NULL
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
  `id` int NOT NULL,
  `experience` varchar(200) NOT NULL,
  `Recommendation` varchar(200) NOT NULL,
  `halls_images_useful` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `payment_process` varchar(200) NOT NULL,
  `feedback` varchar(500) NOT NULL,
  `user_id` int NOT NULL,
  `hall_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `feedback_subhall`
--

INSERT INTO `feedback_subhall` (`id`, `experience`, `Recommendation`, `halls_images_useful`, `payment_process`, `feedback`, `user_id`, `hall_id`) VALUES
(1, '', '', '', '', 'NICE Hall', 35, 63),
(3, '', '', '', '', 'wow', 12, 63),
(4, '', '', '', '', 'Amazing!', 35, 63),
(5, '', '', '', '', 'best hall ever', 35, 63),
(6, '', '', '', '', 'not bad', 35, 63),
(7, '', '', '', '', 'nice', 35, 65),
(8, '', '', '', '', 'nice, nemat wedding was there', 41, 66),
(9, '', '', '', '', 'Very nice hall The views and location are just phenomenal and cannot be beaten. It was the perfect venue where you can have a ceremony and reception, no travel required and not a moment guests are waiting around. They can be at the bar enjoying themselves while the bridal party is off for photos.', 35, 78),
(10, '', '', '', '', 'Very nice Hall, I am very happy to try it!', 32, 78),
(11, 'Excellent', 'test', 'test', 'test', 'mm', 35, 78),
(12, 'Good', '', 'Yes', 'Good', ',', 35, 78),
(15, 'Excellent', 'Highly Recommend', 'Good', 'Good', ',,', 32, 78),
(16, 'Excellent', 'Highly Recommend', 'Good', 'Bad', 'rr', 32, 74),
(17, 'Good', 'Recommend', 'Bad', 'Bad', ',,,', 32, 74),
(18, 'Good', 'Recommend', 'Good', 'Good', 'm', 32, 74),
(19, 'Excellent', 'Recommend', 'Bad', 'Bad', 'n', 32, 74),
(20, 'Excellent', 'Highly Recommend', 'Good', 'Good', '', 32, 74),
(42, 'Excellent', 'Highly Recommend', 'Good', 'Good', '', 32, 74);

-- --------------------------------------------------------

--
-- Table structure for table `halls`
--

CREATE TABLE `halls` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int NOT NULL,
  `city` enum('Birzeit','Jifna','Betonya','Kufur Aqab','Ramallah','Ramallah(Al-Masayif)','Ramallah(Al-Tireh)','Ramallah (Al-Irsal)','Ramallah(Al-Masyoun)','Al-Bireh','Al-Bireh(Nablus Street)','Al-Bireh(Al-Balou)','Al-Bireh(Um Al-Sharayet)','Al-Bireh(Al-Quds Street)') NOT NULL,
  `address` varchar(255) NOT NULL,
  `hall_describtion` varchar(500) NOT NULL,
  `image` varchar(500) NOT NULL,
  `image_view` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int NOT NULL,
  `status` enum('pending','approved','canceled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `type`, `city`, `address`, `hall_describtion`, `image`, `image_view`, `user_id`, `status`) VALUES
(79, 'Elya Venues', 1, 'Al-Bireh', 'Al-Bireh', '- Illuminated Dance Floor\r\n- Air-conditioning System\r\n- Separate entrances for both men and  women\r\n- Different options of decorations', '63d6e3a211735.pdf', '63d6e3a21171a.jpg', 42, 'approved'),
(80, 'Royal Halls', 1, 'Jifna', 'Birzeit-Jiffna', 'It has 4 halls (2 indoor halls for women and 2 outdoor halls for men). \r\n\r\nContact info: 0599221720', '63d718e83c1cf.pdf', '63d718e83c1a1.png', 43, 'approved'),
(81, 'Ramallah Cultural Palace', 3, 'Ramallah', 'Industrial Zone', 'It can accommodate 200 people and enjoys the maximum specifications, comprehensive audio-to-visual technology, heating and cooling systems, and tables that can be moved and set as needed.', '63d72051b9c68.pdf', '63d72051b9c36.jpg', 44, 'approved'),
(82, 'Carmel Hotel', 2, 'Ramallah(Al-Masyoun)', 'Al-Masyoon', 'Has two halls, one is for weddings and the other is for meetings.', '63d7339724ee0.pdf', '63d7339724ce1.png', 45, 'approved'),
(83, 'Gloria Venues', 1, 'Ramallah (Al-Irsal)', 'Al-Irsal', 'Two halls (one for men and one for women).', '63d739af19adc.pdf', '63d739af19ab7.png', 37, 'approved'),
(84, 'Ceaser Hotel', 3, 'Ramallah(Al-Masyoun)', 'Al-Masyoon', 'Two wedding halls for men and women and group of halls for meetings and other events.', '63d73d619d31c.pdf', '63d73d619d309.png', 37, 'approved');

-- --------------------------------------------------------

--
-- Table structure for table `images`
--

CREATE TABLE `images` (
  `id` int NOT NULL,
  `image` varchar(255) NOT NULL,
  `uploaded_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `subhall_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `images`
--

INSERT INTO `images` (`id`, `image`, `uploaded_on`, `subhall_id`) VALUES
(79, '63d70a3c55695.PNG', '2023-01-30 02:07:24', 72),
(80, '63d70a54bdb64.PNG', '2023-01-30 02:07:48', 72),
(81, '63d70a666ba4e.PNG', '2023-01-30 02:08:06', 72),
(82, '63d70a7d8b457.PNG', '2023-01-30 02:08:29', 72),
(83, '63d70a8c551b3.PNG', '2023-01-30 02:08:44', 72),
(84, '63d70a9cbd60d.PNG', '2023-01-30 02:09:00', 72),
(85, '63d70aac4bdb5.PNG', '2023-01-30 02:09:16', 72),
(86, '63d70abbccf10.PNG', '2023-01-30 02:09:31', 72),
(87, '63d70acb2f3c1.PNG', '2023-01-30 02:09:47', 72),
(88, '63d70ade688bb.PNG', '2023-01-30 02:10:06', 72),
(89, '63d70aebbd69a.PNG', '2023-01-30 02:10:19', 72),
(90, '63d70b0b8c780.PNG', '2023-01-30 02:10:51', 72),
(91, '63d71badeff2e.PNG', '2023-01-30 03:21:49', 73),
(92, '63d71bc257291.PNG', '2023-01-30 03:22:10', 73),
(93, '63d71bd1dbc91.PNG', '2023-01-30 03:22:25', 73),
(94, '63d71bde06838.PNG', '2023-01-30 03:22:38', 73),
(95, '63d721a32f2f6.jpg', '2023-01-30 03:47:15', 74),
(96, '63d721c8c9fdd.jpg', '2023-01-30 03:47:52', 74),
(97, '63d7220712698.jpg', '2023-01-30 03:48:55', 74),
(98, '63d73b8dae655.jpg', '2023-01-30 05:37:49', 78),
(99, '63d73b9e1dd87.jpg', '2023-01-30 05:38:06', 78),
(100, '63d73ba8bfdd6.jpg', '2023-01-30 05:38:16', 78),
(101, '63d73bb53c1ab.jpg', '2023-01-30 05:38:29', 78),
(102, '63d73fda0451d.jpg', '2023-01-30 05:56:10', 79),
(103, '63d73fe570641.jpg', '2023-01-30 05:56:21', 79),
(104, '63d740140403d.jpg', '2023-01-30 05:57:08', 79);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int NOT NULL,
  `payment_id` varchar(200) NOT NULL,
  `user_id` int NOT NULL,
  `hall_id` int NOT NULL,
  `price` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `payment_id`, `user_id`, `hall_id`, `price`, `name`, `created_at`) VALUES
(1, '5CP000792Y9352448', 32, 74, 40, 'nemat', '2023-02-17 23:05:14'),
(2, '4PK05472W0928571K', 32, 74, 200, 'Nemat', '2023-02-17 23:08:30'),
(3, '3U338711DS0899407', 32, 74, 800, 'Andalus', '2023-02-17 23:09:50'),
(4, '20X209340A8241109', 74, 32, 800, 'Nemat', '2023-02-17 23:33:52'),
(5, '5JK461042R608135D', 74, 32, 1000, 'nemat', '2023-02-18 11:31:01'),
(6, '1XA969467E729242F', 74, 32, 40, 'Nemat', '2023-02-18 11:42:50'),
(7, '93695735SF889001A', 78, 32, 40, 'Nemat', '2023-02-18 12:04:10'),
(8, '07B50693SM6803521', 32, 78, 140, 'jana', '2023-02-18 19:08:31'),
(9, '60694006CP0215638', 78, 32, 120, 'Nemat', '2023-02-18 19:39:54');

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `id` int NOT NULL,
  `hall_id` int NOT NULL,
  `Sunday` int NOT NULL,
  `Monday` int NOT NULL,
  `Tuesday` int NOT NULL,
  `Wednesday` int NOT NULL,
  `Thursday` int NOT NULL,
  `Friday` int NOT NULL,
  `Saturday` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `hall_id`, `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`) VALUES
(2, 73, 7007, 200, 5000, 600, 700, 1050, 1000),
(4, 74, 100, 200, 600, 1000, 4000, 15000, 6000),
(7, 76, 100, 200, 16000, 1000, 4000, 20000, 6000),
(8, 77, 10000, 200, 600, 1000, 4000, 20000, 6000),
(9, 72, 10000, 200, 5000, 600, 700, 1050, 1000),
(10, 78, 25000, 200, 600, 1000, 4000, 20000, 6000),
(11, 79, 100, 30000, 600, 1000, 4000, 20000, 6000),
(12, 82, 1000, 4000, 5000, 300, 6000, 1000, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `hall_id` int NOT NULL,
  `rating_number` int NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `user_id`, `hall_id`, `rating_number`, `description`) VALUES
(1, 1, 74, 5, NULL),
(2, 1, 74, 5, NULL),
(3, 1, 72, 1, NULL),
(4, 35, 74, 5, 'nice'),
(5, 35, 74, 1, ''),
(6, 35, 78, 2, ''),
(7, 35, 78, 5, 'wow'),
(8, 32, 74, 3, 'nnn');

-- --------------------------------------------------------

--
-- Table structure for table `reservations`
--

CREATE TABLE `reservations` (
  `id` int NOT NULL,
  `event_type` varchar(255) NOT NULL,
  `number_guests` int NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `notes` varchar(1000) NOT NULL,
  `hall_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` enum('pending','approved','canceled') NOT NULL DEFAULT 'pending',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `reservations`
--

INSERT INTO `reservations` (`id`, `event_type`, `number_guests`, `date`, `start_time`, `end_time`, `notes`, `hall_id`, `user_id`, `status`, `created_at`, `price`) VALUES
(41, '2', 100, '2023-02-22', '16:57:00', '18:57:00', '', 78, 32, 'canceled', '2023-02-18 11:58:07', 600),
(42, '3', 100, '2023-02-27', '13:59:00', '21:59:00', 'm', 78, 32, 'approved', '2023-02-18 11:59:53', 200),
(43, '3', 200, '2023-02-28', '20:59:00', '21:59:00', 'm', 78, 32, 'canceled', '2023-02-18 12:00:13', 5000),
(44, '2', 100, '2023-02-23', '19:07:00', '20:07:00', ',', 78, 32, 'pending', '2023-02-18 19:07:49', 700),
(45, '3', 200, '2023-02-22', '19:37:00', '21:37:00', ',', 78, 32, 'approved', '2023-02-18 19:38:05', 600),
(46, '2', 200, '2023-02-28', '14:13:00', '16:13:00', 'nm', 78, 37, 'canceled', '2023-02-18 20:13:46', 5000),
(47, '3', 100, '2023-02-22', '15:18:00', '19:18:00', ',,', 78, 32, 'pending', '2023-02-19 11:18:58', 600),
(48, '2', 100, '2023-02-21', '14:00:00', '15:00:00', '', 78, 37, 'pending', '2023-02-19 12:49:43', 5000),
(49, '2', 100, '2023-03-29', '13:00:00', '14:00:00', 'done by owner', 78, 37, 'pending', '2023-02-19 12:52:12', 600),
(50, '2', 100, '2023-03-31', '16:00:00', '18:00:00', 'done by owner', 78, 37, 'approved', '2023-02-19 12:53:23', 900),
(51, '2', 100, '2023-03-18', '17:00:00', '18:30:00', 'done by owner', 78, 37, 'approved', '2023-02-19 12:56:27', 1000),
(52, '2', 100, '2023-03-23', '20:00:00', '21:30:00', 'done by owner', 79, 37, 'approved', '2023-02-19 12:59:09', 700),
(53, '9', 100, '2023-02-28', '13:30:00', '15:00:00', 'done by owner', 79, 37, 'approved', '2023-02-19 13:38:24', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `subhalls`
--

CREATE TABLE `subhalls` (
  `id` int NOT NULL,
  `name` varchar(200) NOT NULL,
  `type` int NOT NULL,
  `number_of_guests` int NOT NULL,
  `hall_describtion` varchar(500) NOT NULL,
  `services` varchar(500) NOT NULL,
  `image_view` varchar(300) NOT NULL,
  `hall_id` int NOT NULL,
  `num_of_reservation` int NOT NULL DEFAULT '0',
  `price` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `subhalls`
--

INSERT INTO `subhalls` (`id`, `name`, `type`, `number_of_guests`, `hall_describtion`, `services`, `image_view`, `hall_id`, `num_of_reservation`, `price`) VALUES
(72, 'Elya Venues-Women hall', 1, 1000, '- Address: Al-Bireh, Al-Quds Street, near the southern entrance of Al-Bireh.\r\n- Contact info: 00970597311322', '- Air-conditioning System\r\n- Ample Parking\r\n- Separate Entrance\r\n- Security Group\r\n- Special Hospitality \r\n- Waiting Room For the Bride\r\n- Electrical Elevators \r\n- DJ and huge monitors\r\n- Different options for decorations', '63d70a1843c7b.png', 79, 2, 0),
(73, 'Royal Hall-Indoor Women Hall', 1, 500, 'Address: Jifna near Birzeit\r\nContact info: 0599221720', 'Cake, flowers decorations, drinks, DJ, Dinner, and lighting. In addition, Security cameras, sound systems, and huge monitors.', '63d71a756e22d.png', 80, 0, 0),
(74, 'Ramallah Cultural Palace', 2, 200, 'It can accommodate 200 people and enjoys the maximum specifications.', 'Comprehensive audio-to-visual technology, heating, and cooling systems, and tables that can be moved and set as needed.', '63d721051bc75.jpg', 81, 4, 0),
(76, 'Elya Venues-Men hall', 1, 1000, '- Address: Al-Bireh, Al-Quds Street, near the southern entrance of Al-Bireh.\r\n- Contact info: 00970597311322', '- Air-conditioning System - Ample Parking - Separate Entrance - Security Group - Electrical Elevators - DJ and huge monitors - Different options for decorations', '63d723f09ff41.jpg', 79, 1, 20000),
(77, 'Carmel Hotel-Wedding Hall', 1, 500, 'Contact info: 02 297 2222', 'Dinner , decoration, DJ , cake , parking, and Pool in the hall', '63d735a857c62.png', 82, 6, 15000),
(78, 'Gloria Venues-Women Hall', 1, 500, 'Contact info:  0568650650  //  022955700', 'Full service , dinner is available , many decorations, condition system (high quality ), special lighting system, special sound system, 3 screens, lighting dance floor.', '63d73a8cd2203.png', 83, 3, 30000),
(79, 'Ceaser Hotel-Meeting Hall', 2, 100, 'Address: Al-Masyoon\nService depends on the event and its organizers\nContact info: 0595111331', 'Drinks and lunch.', '63d73f7831c78.png', 84, 0, 10000),
(82, 'test', 1, 200, 'It should be noted that the final exam will cover the following topics:\r\n\r\n    Instruction set principle and architecture\r\n    Measuring performance\r\n    Single-cycle processor Datapath and Control: all slides\r\n    Pipelining: all slides', 'It should be noted that the final exam will cover the following topics:\r\n\r\n    Instruction set principle and architecture\r\n    Measuring performance', '63f21d7d3c575.png', 83, 0, 7000);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
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
(32, 'jana123', '$2y$10$Awqv3purZjutuJGC9qX/GuIamGqj7F7VelEp6enBUXQrVF7R/jtf6', 'jana@gmail.com', 'user', 1, '2022-12-27 17:51:54'),
(35, 'roro', '$2y$10$B3fYiyK7H33SShNkzaAI7eUbJN1qpiXbxpTpHDJRLVQb8jl9wteqy', 'roro@gmail.com', 'user', 1, '2022-12-27 23:07:55'),
(36, 'ror', '$2y$10$EM4pA7GKkRvL3pquI1UwfOIkrdQEo0rUudNNozMb7w50kNzdFOCGy', 'ror@gmail.com', 'owner', 1, '2022-12-28 19:14:57'),
(37, 'owner', '$2y$10$FhLmn9UB/hf4R6T1nJerf.rAwjYEik/eLRECmjsmiqxUKsECBZS2u', 'owner@gmail.com', 'owner', 1, '2022-12-28 22:55:30'),
(38, 'raya', '$2y$10$736vC9QBmOlM4WLS5tNO0eDnku.ueVloJvcRgzGftA4jtFn5JR86i', 'raya@gmail.com', 'owner', 1, '2022-12-29 00:33:36'),
(39, 'status', '$2y$10$NDm9fSWBuuBkgVKlqfxjb.DS7tINhOCfvmcgL1wzNgq5qt6w1DPO2', 'status@gmail.com', 'user', 0, '2023-01-01 00:26:27'),
(40, 'Dina', '$2y$10$Eh87rJiQY8cOdtSInrkDDujSDSnk4sHX/P4hQ3i0aOOxVas32/cKK', 'dina@gmail.com', 'user', 1, '2023-01-02 14:40:05'),
(41, 'lara', '$2y$10$c3x57hXt35UTb1cdBjrSaOD8Unc/2CUukH7ofyu0Dhk4JLLAqCqrK', 'lara@gmail.com', 'user', 1, '2023-01-25 13:58:48'),
(42, 'NqaaOwner', '$2y$10$AT9SOs3PTP14GqM2/xKOW.ayIBmx5phyC3VRp.omo2lsIGxg6cFh6', 'nqaaowner@gmail.com', 'owner', 1, '2023-01-29 22:32:23'),
(43, 'Royal', '$2y$10$DAHXALeBbqexQkQV.ln9o.dk2skCXwXZx3y4wZBOMw5hy8wKAhOGS', 'royal@gmail.com', 'owner', 1, '2023-01-30 02:50:57'),
(44, 'RamallahPalace', '$2y$10$EctJGcwFIwduk6Cg.QgTeuvNG4Uig7IY656hEf4UxefHkK2buInA2', 'palace@gmail.com', 'owner', 1, '2023-01-30 03:33:41'),
(45, 'Carmel Hotel', '$2y$10$8cSzUtesztom9nB6fsUWROccQ1qnj4oD36lwlp/UBy6cfeXXk3Te2', 'carmel@gmail.com', 'owner', 1, '2023-01-30 05:00:24'),
(46, 'Gloria Venues', '$2y$10$BchaqoFkUqId/6pTq4Ospe0YkMlrwv2lsx/iTYO.K9Vhlml2j047.', 'gloria@gmail.com', 'owner', 1, '2023-01-30 05:25:23'),
(47, 'Ceaser  Hotel', '$2y$10$iNQ6GTJFv.PBD5TvS18CGuSynOF6XJGt8RB7SCPZai.c/MZgm.XsG', 'ceaser@gmail.com', 'user', 1, '2023-01-30 05:43:06'),
(48, 'Ceaser  Hotel', '$2y$10$5qlsSchg7xE7xBv.XLUBzuZ6QN0h6vm7pnnJtlaSgv.DO9P1VDQFO', 'ceaser2@gmail.com', 'owner', 1, '2023-01-30 05:43:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calendar`
--
ALTER TABLE `calendar`
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
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_hall` (`hall_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservations`
--
ALTER TABLE `reservations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `hall_id` (`hall_id`);

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `calendar`
--
ALTER TABLE `calendar`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `feedback_subhall`
--
ALTER TABLE `feedback_subhall`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=85;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `reservations`
--
ALTER TABLE `reservations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `subhalls`
--
ALTER TABLE `subhalls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

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
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `subhalls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `reservations`
--
ALTER TABLE `reservations`
  ADD CONSTRAINT `reservations_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT,
  ADD CONSTRAINT `reservations_ibfk_2` FOREIGN KEY (`hall_id`) REFERENCES `subhalls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;

--
-- Constraints for table `subhalls`
--
ALTER TABLE `subhalls`
  ADD CONSTRAINT `subhalls_ibfk_1` FOREIGN KEY (`hall_id`) REFERENCES `halls` (`id`) ON DELETE CASCADE ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
