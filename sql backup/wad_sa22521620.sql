-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2023 at 05:50 PM
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
-- Database: `wad_sa22521620`
--

-- --------------------------------------------------------

--
-- Table structure for table `book 1`
--

CREATE TABLE `book 1` (
  `comment` varchar(700) NOT NULL,
  `commentid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `book 2`
--

CREATE TABLE `book 2` (
  `comment` varchar(700) NOT NULL,
  `commentid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book 2`
--

INSERT INTO `book 2` (`comment`, `commentid`, `username`) VALUES
('Very nice Story!', 3, 'Test@123.com');

-- --------------------------------------------------------

--
-- Table structure for table `book 3`
--

CREATE TABLE `book 3` (
  `comment` varchar(700) NOT NULL,
  `commentid` int(11) NOT NULL,
  `username` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` varchar(3000) NOT NULL,
  `price` int(11) NOT NULL,
  `publish` int(11) NOT NULL,
  `imagepath` varchar(500) NOT NULL,
  `addedby` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `name`, `description`, `price`, `publish`, `imagepath`, `addedby`) VALUES
(11, 'HP - 1 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 300, 1, 'covers/hp-1jp.jpg', 'Test@123.com'),
(12, 'HP - 2 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 310, 1, 'covers/hp-2p.jpg', 'Test@123.com'),
(13, 'HP - 3 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 330, 1, 'covers/hp-3jp.jpg', 'Test@123.com'),
(14, 'HP - 4 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 350, 1, 'covers/hp-4jp.jpg', 'Test@123.com'),
(15, 'HP - 5 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 380, 1, 'covers/hp-5jp.jpg', 'Test@123.com'),
(16, 'HP - 6 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 400, 1, 'covers/hp-7jp.jpg', 'Test@123.com'),
(17, 'HP - 7 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 420, 1, 'covers/hp-8jp.jpg', 'Test@123.com'),
(18, 'HP - 8 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 420, 1, 'covers/hp-9jp.jpg', 'Test@123.com'),
(19, 'HP - 9 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 440, 1, 'covers/hp-10jp.jpg', 'Test@123.com'),
(20, 'HP - 10 JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 450, 1, 'covers/hp-12jp.jpg', 'Test@123.com'),
(21, 'HP - Ex JP', '\r\nIt is the smallest Wizarding School when it comes to student population with an estimated total of 6,500 students.\r\n\r\nNot only is Mahoutokoro a small school but it is the only CURRENTLY KNOWN Wizarding School in Asia.\r\n\r\nThe school can be found in the “uninhabited” region of the Volcanic Island of Minami Iwo Jima at the top most point.\r\n\r\nThe school itself is made of a translucent white stone known as “mutton-fat jade” or Nephrite.\r\n\r\nIt resembles a pagoda— a tiered temple-like structure known widely for its symmetry and is often described as an “ornate and exquisite palace.”\r\n\r\nThe school plays Quidditch very similarly to Hogwarts and other Wizarding Schools.\r\n\r\nUnlike other schools, they are the only school that travels to and from school everyday. The students ride on the backs of a flock of giant storm petrals— beasts native to Minami Iwo Jima, Japan and their feathers are mostly dark with white underparts.\r\n\r\nMahoutokoro is also well known for its prowess in both Academics and Quidditch.\r\n\r\n', 500, 1, 'covers/hp-11jp.jpg', 'Test@123.com');

-- --------------------------------------------------------

--
-- Table structure for table `hp - 1 jp`
--

CREATE TABLE `hp - 1 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hp - 1 jp`
--

INSERT INTO `hp - 1 jp` (`comment`, `username`, `commentid`) VALUES
('Nice Book!', 'Test@123.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `hp - 2 jp`
--

CREATE TABLE `hp - 2 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 3 jp`
--

CREATE TABLE `hp - 3 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 4 jp`
--

CREATE TABLE `hp - 4 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 5 jp`
--

CREATE TABLE `hp - 5 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 6 jp`
--

CREATE TABLE `hp - 6 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 7 jp`
--

CREATE TABLE `hp - 7 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 8 jp`
--

CREATE TABLE `hp - 8 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 9 jp`
--

CREATE TABLE `hp - 9 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - 10 jp`
--

CREATE TABLE `hp - 10 jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `hp - ex jp`
--

CREATE TABLE `hp - ex jp` (
  `comment` varchar(700) NOT NULL,
  `username` varchar(100) NOT NULL,
  `commentid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `test@123.com`
--

CREATE TABLE `test@123.com` (
  `itemname` varchar(300) NOT NULL,
  `price` int(11) NOT NULL,
  `cartid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `name` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `password` varchar(10) NOT NULL,
  `cart_item` varchar(700) NOT NULL,
  `cart_price` varchar(700) NOT NULL,
  `misc` varchar(300) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`name`, `email`, `password`, `cart_item`, `cart_price`, `misc`) VALUES
('Test', 'Test@123.com', '123', '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book 1`
--
ALTER TABLE `book 1`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `book 2`
--
ALTER TABLE `book 2`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `book 3`
--
ALTER TABLE `book 3`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hp - 1 jp`
--
ALTER TABLE `hp - 1 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 2 jp`
--
ALTER TABLE `hp - 2 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 3 jp`
--
ALTER TABLE `hp - 3 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 4 jp`
--
ALTER TABLE `hp - 4 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 5 jp`
--
ALTER TABLE `hp - 5 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 6 jp`
--
ALTER TABLE `hp - 6 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 7 jp`
--
ALTER TABLE `hp - 7 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 8 jp`
--
ALTER TABLE `hp - 8 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 9 jp`
--
ALTER TABLE `hp - 9 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - 10 jp`
--
ALTER TABLE `hp - 10 jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `hp - ex jp`
--
ALTER TABLE `hp - ex jp`
  ADD PRIMARY KEY (`commentid`);

--
-- Indexes for table `test@123.com`
--
ALTER TABLE `test@123.com`
  ADD PRIMARY KEY (`cartid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book 1`
--
ALTER TABLE `book 1`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `book 2`
--
ALTER TABLE `book 2`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `book 3`
--
ALTER TABLE `book 3`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `hp - 1 jp`
--
ALTER TABLE `hp - 1 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `hp - 2 jp`
--
ALTER TABLE `hp - 2 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 3 jp`
--
ALTER TABLE `hp - 3 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 4 jp`
--
ALTER TABLE `hp - 4 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 5 jp`
--
ALTER TABLE `hp - 5 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 6 jp`
--
ALTER TABLE `hp - 6 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 7 jp`
--
ALTER TABLE `hp - 7 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 8 jp`
--
ALTER TABLE `hp - 8 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 9 jp`
--
ALTER TABLE `hp - 9 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - 10 jp`
--
ALTER TABLE `hp - 10 jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `hp - ex jp`
--
ALTER TABLE `hp - ex jp`
  MODIFY `commentid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `test@123.com`
--
ALTER TABLE `test@123.com`
  MODIFY `cartid` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
