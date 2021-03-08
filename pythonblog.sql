-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 07:54 PM
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
-- Database: `pythonblog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `email`, `phone_num`, `msg`, `date`) VALUES
(1, 'firstguy', 'firstguy@gmail.com', '99999999999', 'hey its me my first blog', '2021-03-05 15:20:26'),
(2, '2nd guy', '2ndguy@gmail.com', '1231231234', 'Hi, this message is written in http://127.0.0.1:5000/contact contact me.', '2021-03-05 16:49:54'),
(4, '2nd guy', '2ndguy@gmail.com', '1231231234', 'Hi, this message is written in http://127.0.0.1:5000/contact contact me.', '2021-03-05 17:24:23'),
(5, '2nd guy', '2ndguy@gmail.com', '1231231234', 'Hi, this message is written in http://127.0.0.1:5000/contact contact me.', '2021-03-05 17:32:19'),
(6, '2nd guy', '2ndguy@gmail.com', '1231231234', 'Hi, this message is written in http://127.0.0.1:5000/contact contact me.', '2021-03-05 17:32:57'),
(7, '3rd guy', '3rdguy@gmail.com', '1232311234', 'Hi, this message is been sending to gmail and to the pythonblog database', '2021-03-05 18:57:27'),
(8, '3rd guy', '3rdguy@gmail.com', '1232311234', 'Hi, this message is been sending to gmail and to the pythonblog database', '2021-03-05 18:58:45'),
(9, '3rd guy', '3rdguy@gmail.com', '1232311234', 'Hi, this message is been sending to gmail and to the pythonblog database', '2021-03-05 19:16:17');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `slug` varchar(25) NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `tagline` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `content`, `date`, `slug`, `img_file`, `tagline`) VALUES
(1, 'This is my 1st post Title', 'This content is inserted from phymyadmin. Lets hope it works and show you in the front hand plus adding slug ', '2021-03-05 19:33:58', 'first-post', 'post-bg.jpg', 'This is a first post tagline'),
(2, 'This is second post', 'A template contains variables and/or expressions, which get replaced with values when a template is rendered; and tags, which control the logic of the template. The template syntax is heavily inspired by Django and Python.\r\n\r\nBelow is a minimal template that illustrates a few basics using the default Jinja configuration. We will cover the details later in this document:', '2021-03-05 22:16:04', 'second-post', 'post-bg.jpg', 'About For loop '),
(3, 'Perseverance (rover)', 'Perseverance (nicknamed Percy)[4][5] is a car-sized Mars rover designed to explore the crater Jezero on Mars as part of NASA\'s Mars 2020 mission. It was manufactured by the Jet Propulsion Laboratory and launched on 30 July 2020 at 11:50 UTC.[1] Confirmation that the rover successfully landed on Mars was received on 18 February 2021 at 20:55 UTC.[2][6] As of 4 March 2021, Perseverance has been on Mars for 14 sols (14 Earth days).\r\n\r\nPerseverance has a similar design to its predecessor rover, Curiosity, from which it was moderately upgraded. It carries seven primary payload instruments, 19 cameras, and two microphones.[7] The rover is also carrying the mini-helicopter Ingenuity, an experimental aircraft that will attempt the first powered flight on another planet.', '2021-03-05 22:49:56', 'third-post', '', 'From Wikipedia, the free encyclopedia'),
(4, 'Mars Orbiter Mission', 'The Mars Orbiter Mission (MOM), also called Mangalyaan (\"Mars-craft\", from mangala, \"Mars\" and yāna, \"craft, vehicle\"),[10][11] is a space probe orbiting Mars since 24 September 2014. It was launched on 5 November 2013 by the Indian Space Research Organisation (ISRO).[12][13][14][15] It is India\'s first interplanetary mission[16] and it made it the fourth space agency to achieve Mars orbit, after Roscosmos, NASA, and the European Space Agency.[17] It made India the first Asian nation to reach Martian orbit and the first nation in the world to do so on its maiden attempt.[18][19][20][21]\r\n\r\nThe Mars Orbiter Mission probe lifted-off from the First Launch Pad at Satish Dhawan Space Centre (Sriharikota Range SHAR), Andhra Pradesh, using a Polar Satellite Launch Vehicle (PSLV) rocket C25 at 09:08 UTC on 5 November 2013.[5][22] The launch window was approximately 20 days long and started on 28 October 2013.[6] The MOM probe spent about a month in Earth orbit, where it made a series of seven apogee-raising orbital manoeuvres before trans-Mars injection on 30 November 2013 (UTC).[23] After a 298-day transit to Mars, it was put into Mars orbit on 24 September 2014.\r\n\r\nThe mission is a \"technology demonstrator\" project to develop the technologies for designing, planning, management, and operations of an interplanetary mission.[24] It carries five scientific instruments.[25] The spacecraft is currently being monitored from the Spacecraft Control Centre at ISRO Telemetry, Tracking and Command Network (ISTRAC) in Bengaluru with support from the Indian Deep Space Network (IDSN) antennae at Bengaluru, Karnataka.[26]', '2021-03-05 22:49:56', 'fourth-post', '', 'From Wikipedia, the free encyclopedia'),
(6, 'Geosynchronous Satellite Launch Vehicle', 'Geosynchronous Satellite Launch Vehicle (GSLV) is an expendable launch system operated by the Indian Space Research Organisation (ISRO). GSLV was used in thirteen launches from 2001 to 2018, with more launches planned. Even though GSLV Mark III shares the name, it is an entirely different launch vehicle\r\nThe Geosynchronous Satellite Launch Vehicle (GSLV) project was initiated in 1990 with the objective of acquiring an Indian launch capability for geosynchronous satellites.[7][8]\r\n\r\nGSLV uses major components that are already proven in the Polar Satellite Launch Vehicle (PSLV) launch vehicles in the form of the S125/S139 solid rocket booster and the liquid-fueled Vikas engine. Due to the thrust required for injecting the satellite in a GTO orbit the third stage was to be powered by a LOX/LH2 Cryogenic engine which at that time India did not possess or had the technology know-how to build one.', '2021-03-05 22:53:10', 'sixth-post', '', 'From Wikipedia, the free encyclopedia'),
(7, 'This is from edit/0 route----website connected to the database', 'This is a list of Antarctic and Subantarctic islands.\r\nAntarctic islands are, in the strict sense, the islands around Antarctica, situated on the Antarctic Plate, and south of the Antarctic Convergence. According to the terms of the Antarctic Treaty, claims to sovereignty over lands south of 60°S are not asserted.\r\nSubantarctic islands are the islands situated near another continental mainland or on another continental plate, but biogeographically linked to the Antarctic and are part of the Antarctic realm, roughly north of and adjacent to the Antarctic Convergence.', '2021-03-06 22:03:22', 'new-post', 'img.png', 'List of Antarctic and Subantarctic islands');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
