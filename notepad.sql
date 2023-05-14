-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2023 at 01:40 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `notes`
--

-- --------------------------------------------------------

--
-- Table structure for table `notepad`
--

CREATE TABLE `notepad` (
  `note_id` int(11) NOT NULL,
  `note_contents` text NOT NULL,
  `note_date` varchar(100) NOT NULL,
  `note_title` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notepad`
--

INSERT INTO `notepad` (`note_id`, `note_contents`, `note_date`, `note_title`) VALUES
(102, 'g7gibibibuvububuvvuvuvuvvuv', '05-13-2023', 'ivivibibibigigiguc'),
(103, 'Hello, I am Ralph Matthew Rojas Aquino.', '05-14-2023', 'About Ralph Matthew Aquino'),
(104, 'Hello, my friend\'s name is Julia and she\'s the best!', '05-14-2023', 'About Julia Baybay'),
(105, 'Hello, my other friend\'s name is Edelyn Ortiz and she\'s also one my cool friend. She\'s also just the one whose helping me in our Software Engineering 1. My other teammates in SoftEng sucks!!!!', '05-14-2023', 'Just some random note'),
(106, 'My friends are best friends in the world. Though others may not think that about them but who cares about what other people thinks, right? These friends are just absolutely the best!', '05-14-2023', 'THE BEST FRIENDS IN THE WORLD!!!'),
(107, 'Hello, World! Twinkle, twinkle, little star. How I wonder what you are? High above world so high? Like a diamond in the sky. Twinkle, twinkle, little star, how i wonder what you are!', '05-14-2023', 'Twinkle Twinkle little star!'),
(108, 'Rajeanne Princess Alphega R. Aquino, Rohanne Faith R. Aquino, Jennifer R. Aquino, Rufino F. Aquino', '05-14-2023', 'Family!'),
(109, 'Chill lang muna mga pare. Tigil muna tayo sa pag abante. Easy lang di sa nagpapakampante', '05-14-2023', 'Blade Runner');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `notepad`
--
ALTER TABLE `notepad`
  ADD PRIMARY KEY (`note_id`),
  ADD UNIQUE KEY `note_id` (`note_id`),
  ADD UNIQUE KEY `note_title` (`note_title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `notepad`
--
ALTER TABLE `notepad`
  MODIFY `note_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
