-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 23, 2020 at 02:08 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mprod`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Maher Haddad', 'admin', 123456789, 'admin@m-prodution.com', '5a105e8b9d40e1329780d62ea2265d8a', '2020-07-31 10:48:13');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `ID` int(10) NOT NULL,
  `BookingID` int(10) DEFAULT NULL,
  `ServiceID` int(10) DEFAULT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `EventDate` varchar(200) DEFAULT NULL,
  `EventStartingtime` varchar(200) DEFAULT NULL,
  `EventEndingtime` varchar(200) DEFAULT NULL,
  `VenueAddress` mediumtext,
  `EventType` varchar(200) DEFAULT NULL,
  `AdditionalInformation` mediumtext,
  `BookingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Remark` varchar(200) DEFAULT NULL,
  `Status` varchar(200) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`ID`, `BookingID`, `ServiceID`, `Name`, `MobileNumber`, `Email`, `EventDate`, `EventStartingtime`, `EventEndingtime`, `VenueAddress`, `EventType`, `AdditionalInformation`, `BookingDate`, `Remark`, `Status`, `UpdationDate`) VALUES
(8, 324267621, 1, 'maher', 2222222222, 'maher@maher.de', '2020-12-12', '3 p.m', '7 p.m', 's.a.e institute', 'Birthday Party', 'nothing more', '2020-07-28 10:06:16', '20% angebot auf dem total rechnung', 'Approved', '2020-07-28 10:07:24'),
(9, 676197561, 2, 'S.A.E HAMBURG', 1234567890, 'Stuff@saehamburg.de', '2020-08-24', '6 p.m', '10 p.m', 'FeldStrasse - Hamburg', 'Birthday Party', 'we would like to get offer list as soon as possible.', '2020-08-02 11:33:22', 'Contacting within Two Days', 'Approved', '2020-08-02 11:34:33'),
(10, 385210325, 6, 'Nicole', 1233312333, 'Nicole@jerry.de', '2020-08-04', '10 p.m', '3 a.m', 'wandsbeker Chausse 101', 'Birthday Party', 'We suggest to rent the equipments for two days', '2020-08-02 11:37:53', 'we do not rent equipments\r\ninstalling and reassemble only at the sama day', 'Cancelled', '2020-08-02 11:39:46'),
(11, 721408093, 1, 'layal', 1241241231, 'layal@nassr.de', '2021-01-01', '3 p.m', '9 p.m', 'Tartous', 'Cocktail', 'please contact us directly', '2020-08-03 14:19:10', 'contacting in two days', 'Approved', '2020-08-03 14:21:07');

-- --------------------------------------------------------

--
-- Table structure for table `tbleventtype`
--

CREATE TABLE `tbleventtype` (
  `ID` int(10) NOT NULL,
  `EventType` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbleventtype`
--

INSERT INTO `tbleventtype` (`ID`, `EventType`, `CreationDate`) VALUES
(1, 'Anniversary', '2020-08-12 06:01:39'),
(2, 'Birthday Party', '2020-08-12 06:02:34'),
(3, 'Charity', '2020-08-12 06:02:43'),
(4, 'Cocktail', '2020-08-12 06:03:00'),
(5, 'College', '2020-08-12 06:03:11'),
(6, 'Community', '2020-08-12 06:03:24'),
(7, 'Concert', '2020-08-12 06:03:35'),
(8, 'Engagement', '2020-08-12 06:03:51'),
(9, 'Get Together', '2020-08-12 06:04:04'),
(10, 'Government', '2020-08-12 06:04:15'),
(11, 'Night Club', '2020-08-12 06:04:26'),
(13, 'Post Wedding', '2020-08-12 06:05:01'),
(14, 'Pre Engagement', '2020-08-12 06:05:18'),
(15, 'Religious', '2020-08-12 06:05:27'),
(16, 'Sangeet', '2020-08-12 06:05:43'),
(17, 'Social', '2020-08-12 06:05:58'),
(18, 'Wedding', '2020-08-12 06:06:07');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(100) DEFAULT NULL,
  `PageTitle` mediumtext,
  `PageDescription` mediumtext,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', '<b><font color=\"#ff0099\"><font size=\"5\">Your Online Production Portal</font><font size=\"5\">&nbsp;</font></font></b><div><font color=\"#ff0099\"><b style=\"\">M-Production&nbsp;</b><b style=\"\">is one of the Internet\'s largest and trusted Online DJ Booking Service. M-Production has done several placements locally &amp; globally for top artists.&nbsp;</b></font><div><br></div></div><div><font size=\"4\" color=\"#ffffff\">*This Text is generated by the Admin Dashboard-Pages-About us, section.</font></div>', NULL, NULL, '2020-08-23 13:16:37'),
(2, 'contactus', 'Contact Us', 'Mariusweg - 22043/Hamburg - Germany', 'info@gmail.com', 1234567890, '2020-08-17 11:25:33');

-- --------------------------------------------------------

--
-- Table structure for table `tblservice`
--

CREATE TABLE `tblservice` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `SerDes` varchar(250) NOT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblservice`
--

INSERT INTO `tblservice` (`ID`, `ServiceName`, `SerDes`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Wedding DJ', '(we install the DJ equipment before your ceremony or after your wedding breakfast)', '799,99', '2020-08-07 06:17:43'),
(2, 'Party DJ', '(we install the DJ equipment 1 hour before your selected event start time)', '699,99', '2020-08-07 06:18:32'),
(3, 'Ceremony Music', 'Our ceremony music service is a popular add on to our wedding DJ stay all day hire.', '649,99', '2020-08-07 06:19:14'),
(4, 'Photo Booth Hire', '(early equipment setup included)', '499,99', '2020-08-07 06:19:51'),
(5, 'Karaoke Add-on', 'Karaoke is a great alternative to a disco. It’s perfect for staff parties and children’s parties.', '449,99', '2020-08-07 06:20:36'),
(6, 'Uplighters', 'Uplighters are bright lighting fixtures which are installed on the floor and shine a vibrant wash of colour over the walls of your venue', '199,99', '2020-08-07 06:21:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `Name` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Message` mediumtext,
  `MsgDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `IsRead` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `Name`, `MobileNumber`, `Email`, `Message`, `MsgDate`, `IsRead`) VALUES
(5, 'user', 1122334455, 'user@gmail.com', 'Testing daten bank', '2020-07-26 18:23:30', 1),
(6, 'maher', 123123123, 'test@gmail.sas', 'i am testing my database\r\n', '2020-07-28 09:04:54', 1),
(7, 'maher', 2222222222, 'maher@maher.de', 'testing number 2', '2020-07-28 10:05:06', 1),
(8, 'Jonas', 3333333333, 'jonas@Dark123.de', 'hello there,\r\ncan we come to your Store to check out the equipments you offer . we are preparing for a big event', '2020-08-02 11:41:30', 1),
(9, 'layal', 1231231231, 'layal@nassr.de', 'hi there', '2020-08-03 14:19:49', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ServiceID` (`ServiceID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EventType` (`EventType`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservice`
--
ALTER TABLE `tblservice`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID` (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbleventtype`
--
ALTER TABLE `tbleventtype`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservice`
--
ALTER TABLE `tblservice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
