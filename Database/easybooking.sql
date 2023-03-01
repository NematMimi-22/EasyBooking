-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 01, 2023 at 09:04 PM
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
(80, 'Nqaa', 'nqaa@gmail.com', '$2y$10$xQKcZ41tc22/DzFpYdnHJOJg5cqDtRHJj92buu4EKJopr.OHV2Nou', 2, '2022-11-26 18:05:30'),
(91, 'Nemat', 'nematmimi01@gmail.com', '$2y$10$zFjs40W0OqFj67vbbCMJIernBgZnn39UQ//p2.Qjj3D8ENbeboUWu', 2, '2023-03-01 17:20:39'),
(92, 'Raneen', 'raneen@gmail.com', '$2y$10$VeJr4vujPCLYqlLRa8j7k.C/RrbDIOL8r2Ew5rsp8e4xH/hEgRXe.', 1, '2023-03-01 19:39:41');

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
(33, 'Easy Booking is a well-designed platform that offers a variety of features to help users book and manage hall reservations. The interface is intuitive and easy to navigate, and the system provides users with the ability to view availability, make bookings, and manage reservations easily. The system could be improved by adding more advanced features such as online payment processing, integration with calendars, and automated reminders for upcoming reservations.', 49),
(34, 'Easy Booking is a great addition to your services, and it offers a lot of value to your customers. The system is user-friendly, and the process of booking a hall is straightforward. However, it would be helpful to provide more information about the amenities and services available in each hall, as well as the policies and rules for using the space. This would help customers make more informed decisions about their bookings and avoid misunderstandings.', 50),
(35, 'Easy Booking is a comprehensive platform that provides users with a range of tools to book and manage hall reservations. The system is well-designed, and the interface is easy to navigate. The systems integration with other tools such as calendars and payment processing is seamless, and the system provides users with automated reminders for upcoming reservations.', 51);

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
(43, 'Good', 'Recommend', 'Good', 'Good', '', 37, 74),
(44, 'Excellent', 'Highly Recommend', 'Good', 'Good', '', 37, 78);

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
  `video_view` varchar(500) NOT NULL,
  `user_id` int NOT NULL,
  `status` enum('pending','approved','canceled') NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `halls`
--

INSERT INTO `halls` (`id`, `name`, `type`, `city`, `address`, `hall_describtion`, `image`, `image_view`, `video_view`, `user_id`, `status`) VALUES
(79, 'Elya Venues', 1, 'Al-Bireh', 'Al-Bireh', '- Illuminated Dance Floor\r\n- Air-conditioning System\r\n- Separate entrances for both men and  women\r\n- Different options of decorations', '63d6e3a211735.pdf', '63d6e3a21171a.jpg', 'elya.mp4', 42, 'approved'),
(80, 'Royal Halls', 1, 'Jifna', 'Birzeit-Jiffna', 'It has 4 halls (2 indoor halls for women and 2 outdoor halls for men). \r\n\r\nContact info: 0599221720', '63d718e83c1cf.pdf', '63d718e83c1a1.png', 'royal.mp4', 43, 'approved'),
(81, 'Ramallah Cultural Palace', 3, 'Ramallah', 'Industrial Zone', 'It can accommodate 200 people and enjoys the maximum specifications, comprehensive audio-to-visual technology, heating and cooling systems, and tables that can be moved and set as needed.', '63d72051b9c68.pdf', '63d72051b9c36.jpg', 'Null', 44, 'approved'),
(82, 'Carmel Hotel', 2, 'Ramallah(Al-Masyoun)', 'Al-Masyoon', 'Has two halls, one is for weddings and the other is for meetings.', '63d7339724ee0.pdf', '63d7339724ce1.png', 'carmel.mp4', 45, 'approved'),
(83, 'Gloria Venues', 1, 'Ramallah (Al-Irsal)', 'Al-Irsal', 'Two halls (one for men and one for women).', '63d739af19adc.pdf', '63d739af19ab7.png', 'gloria.mp4', 37, 'approved'),
(84, 'Ceaser Hotel', 3, 'Ramallah(Al-Masyoun)', 'Al-Masyoon', 'Two wedding halls for men and women and group of halls for meetings and other events.', '63d73d619d31c.pdf', '63d73d619d309.png', 'ceaser.mp4', 37, 'approved'),
(95, 'Ankars Hotel Hall ', 3, 'Ramallah(Al-Masyoun)', 'AL - Masyoon ', 'Outer hall', '', 'ankarz.png', 'Ankars.mp4', 42, 'approved'),
(97, 'Al-Qusoor', 1, 'Al-Bireh(Um Al-Sharayet)', 'Um-Al Sharayet ', 'Two halls one for men and one for women ', '', 'qosor.png', 'qosor.mp4', 42, 'approved'),
(99, 'AL Rahwan Hall', 1, 'Al-Bireh(Nablus Street)', 'ِAl-Bireh (Nablus street) ', 'Two halls one of them for men and the other for women ', '', 'rahwan.png', 'rahwan.mp4', 42, 'approved'),
(107, 'Grand Palace Hall ', 1, 'Kufur Aqab', 'Kufur Aqab - Al matar street ', 'Two halls , one for men and one for women ', '', 'grandp.png', 'grandp.mp4', 42, 'approved'),
(108, 'Grand Park Hotel Hall ', 1, 'Ramallah(Al-Masyoun)', 'Al -Masyoon ', 'One Hall', '', 'grandpark.png', 'grandpark.mp4', 42, 'approved'),
(109, 'El Mirador Hotel Hall', 3, 'Ramallah(Al-Tireh)', 'Al -Tireh , Al-Manaa Center', 'Hall for women , outer hall for men ', '', 'mir.jpg', 'mir.mp4', 42, 'approved'),
(110, 'ِAl Sufsaf', 3, 'Al-Bireh(Al-Balou)', 'Al-Berih- Balou', 'One inner hall for women  and garden for men ', '', 'safsaf.jpg', 'Null', 42, 'approved');

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
(9, '60694006CP0215638', 78, 32, 120, 'Nemat', '2023-02-18 19:39:54'),
(10, '0LC17766U4867415T', 32, 78, 61, 'Nemat', '2023-03-01 15:41:05');

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
(10, 78, 25000, 200, 600, 1000, 4000, 20000, 6001),
(11, 79, 100, 30000, 600, 1000, 4000, 20000, 6000);

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
(58, '9', 100, '2023-02-22', '15:50:00', '19:50:00', '.', 74, 37, 'approved', '2023-03-01 19:51:04', 1000),
(59, '2', 100, '2023-02-27', '20:56:00', '22:56:00', 'll', 78, 37, 'approved', '2023-03-01 19:56:21', 600);

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
(79, 'Ceaser Hotel-Meeting Hall', 2, 100, 'Address: Al-Masyoon\nService depends on the event and its organizers\nContact info: 0595111331', 'Drinks and lunch.', '63d73f7831c78.png', 84, 0, 10000);

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
(37, 'owner', '$2y$10$FhLmn9UB/hf4R6T1nJerf.rAwjYEik/eLRECmjsmiqxUKsECBZS2u', 'owner@gmail.com', 'owner', 1, '2022-12-28 22:55:30'),
(42, 'NqaaOwner', '$2y$10$AT9SOs3PTP14GqM2/xKOW.ayIBmx5phyC3VRp.omo2lsIGxg6cFh6', 'nqaaowner@gmail.com', 'owner', 1, '2023-01-29 22:32:23'),
(43, 'Royal', '$2y$10$DAHXALeBbqexQkQV.ln9o.dk2skCXwXZx3y4wZBOMw5hy8wKAhOGS', 'royal@gmail.com', 'owner', 1, '2023-01-30 02:50:57'),
(44, 'RamallahPalace', 'Palace@123', 'palace@gmail.com', 'owner', 1, '2023-01-30 03:33:41'),
(45, 'Carmel Hotel', '$2y$10$8cSzUtesztom9nB6fsUWROccQ1qnj4oD36lwlp/UBy6cfeXXk3Te2', 'carmel@gmail.com', 'owner', 1, '2023-01-30 05:00:24'),
(46, 'Gloria Venues', '$2y$10$BchaqoFkUqId/6pTq4Ospe0YkMlrwv2lsx/iTYO.K9Vhlml2j047.', 'gloria@gmail.com', 'owner', 1, '2023-01-30 05:25:23'),
(48, 'Ceaser  Hotel', '$2y$10$5qlsSchg7xE7xBv.XLUBzuZ6QN0h6vm7pnnJtlaSgv.DO9P1VDQFO', 'ceaser2@gmail.com', 'owner', 1, '2023-01-30 05:43:42'),
(49, 'Sara', '$2y$10$ZiHVf1ZwaQfJGzKjLzkAkuCW.WGG7TBlhNihze8hAz0.MFvIvETPS', 'sara@gmail.com', 'user', 1, '2023-03-01 20:01:42'),
(50, 'Ahmad', '$2y$10$MfoK9AK3umZyWeHG8JWVHOE3cska9SJ010kkvV42itlD1gSv1lg.y', 'ahmad@gmail.com', 'user', 1, '2023-03-01 20:04:45'),
(51, 'Deema', '$2y$10$L37BvHRed.oIScD8fTK8Y.vq1lfGx7gBRpeYUdiifT.ENQe2m7Ona', 'deema@gmail.com', 'user', 1, '2023-03-01 20:06:36');

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `features`
--
ALTER TABLE `features`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `feedbacks`
--
ALTER TABLE `feedbacks`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `feedback_subhall`
--
ALTER TABLE `feedback_subhall`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `halls`
--
ALTER TABLE `halls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=113;

--
-- AUTO_INCREMENT for table `images`
--
ALTER TABLE `images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `subhalls`
--
ALTER TABLE `subhalls`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

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
