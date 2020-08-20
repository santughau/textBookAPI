-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 20, 2020 at 05:36 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `textbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `id` int(11) NOT NULL,
  `className` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`id`, `className`) VALUES
(1, 'पहिला '),
(2, 'दुसरा '),
(3, 'तिसरा '),
(4, 'चौथा '),
(5, 'पाचवा '),
(6, 'सहावा '),
(7, 'सातवा '),
(8, 'आठवा '),
(9, 'नववा '),
(10, 'दहावा ');

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `id` int(11) NOT NULL,
  `classId` int(11) NOT NULL,
  `subjectName` varchar(255) NOT NULL,
  `pdfLink` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`id`, `classId`, `subjectName`, `pdfLink`, `image`) VALUES
(1, 1, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/101030001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/101030001.jpg'),
(2, 1, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/101030004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/101030004.jpg'),
(3, 1, 'खेळू, करू, शिकू', 'http://cart.ebalbharati.in/BalBooks/pdfs/101000620.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/101000620.jpg'),
(4, 1, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/103030035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/103030035.jpg'),
(5, 1, 'गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/103030004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/103030004.jpg'),
(6, 2, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/201030001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/201030001.jpg'),
(7, 2, 'गणित(  मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/201030004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/201030004.jpg'),
(8, 2, 'खेळू, करू, शिकू', 'http://cart.ebalbharati.in/BalBooks/pdfs/201000620.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/201000620.jpg'),
(9, 2, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/203030035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/203030035.jpg'),
(10, 2, 'गणित ( इंग्रजी ) ', 'http://cart.ebalbharati.in/BalBooks/pdfs/203030004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/203030004.jpg'),
(11, 3, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/301020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/301020001.jpg'),
(12, 3, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/301020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/301020035.jpg'),
(13, 3, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/301020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/301020004.jpg'),
(14, 3, 'खेळू, करू, शिकू', 'http://cart.ebalbharati.in/BalBooks/pdfs/301000620.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/301000620.jpg'),
(15, 3, 'परिसर अभ्यास', 'http://cart.ebalbharati.in/BalBooks/pdfs/301000559.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/301000559.jpg'),
(16, 3, 'गणित (  इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/303020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/303020004.jpg'),
(17, 4, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/401020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/401000541.jpg'),
(18, 4, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/401020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/401020035.jpg'),
(19, 4, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/401020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/401020004.jpg'),
(20, 4, 'परिसर अभ्यास भाग-१ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/401000541.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/401000541.jpg'),
(21, 4, 'परिसर अभ्यास भाग-2 (  मराठी ) ', 'http://cart.ebalbharati.in/BalBooks/pdfs/401000542.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/401000542.jpg'),
(22, 4, 'परिसर अभ्यास भाग-१ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/403000541.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/403000541.jpg'),
(23, 4, 'परिसर अभ्यास भाग-2(  इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/403000542.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/403000542.jpg'),
(24, 4, ' गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/403020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/403020004.jpg'),
(25, 5, ' बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/501020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/501020001.jpg'),
(26, 5, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/501020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/501020035.jpg'),
(27, 5, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/501020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/501020004.jpg'),
(28, 5, 'सुलभभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/502020020.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/502020020.jpg'),
(29, 5, ' परिसर अभ्यास भाग-१ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/501000541.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/501000541.jpg'),
(30, 5, 'परिसर अभ्यास भाग-२ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/501000542.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/501000542.jpg'),
(31, 5, 'परिसर अभ्यास भाग-१ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/503000541.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/503000541.jpg'),
(32, 5, 'परिसर अभ्यास भाग-२ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/503000542.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/503000542.jpg'),
(33, 5, 'गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/503020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/503020004.jpg'),
(34, 6, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/601020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/601020001.jpg'),
(35, 6, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/601020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/601020004.jpg'),
(36, 6, 'सामान्य विज्ञान ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/601020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/601020012.jpg'),
(37, 6, 'इतिहास व नागरिकशास्त्र', 'http://cart.ebalbharati.in/BalBooks/pdfs/601000584.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/601000584.jpg'),
(38, 6, 'भूगोल ', 'http://cart.ebalbharati.in/BalBooks/pdfs/601020011.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/601020011.jpg'),
(39, 6, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/603020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/603020035.jpg'),
(40, 6, 'सुलभभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/602020020.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/602020020.jpg'),
(41, 6, 'गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/603020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/603020004.jpg'),
(42, 6, 'सामान्य विज्ञान (  इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/603020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/603020012.jpg'),
(43, 7, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/701020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/701020001.jpg'),
(44, 7, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/701020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/701020004.jpg'),
(45, 7, 'सामान्य विज्ञान ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/701020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/701020012.jpg'),
(46, 7, 'इतिहास व नागरिकशास्त्र', 'http://cart.ebalbharati.in/BalBooks/pdfs/701000584.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/701000584.jpg'),
(47, 7, 'भूगोल', 'http://cart.ebalbharati.in/BalBooks/pdfs/701020011.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/701020011.jpg'),
(48, 7, 'माय इंग्लिश बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/703020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/703020035.jpg'),
(49, 7, 'सुलभभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/702020020.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/702020020.jpg'),
(50, 7, 'गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/703020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/703020004.jpg'),
(51, 7, 'सामान्य विज्ञान ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/703020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/703020012.jpg'),
(52, 8, 'बालभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/801020001.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801020001.jpg'),
(53, 8, 'गणित ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/801020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801020004.jpg'),
(54, 8, 'सामान्य विज्ञान ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/801020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801020012.jpg'),
(55, 8, 'इतिहास व नागरिकशास्त्र', 'http://cart.ebalbharati.in/BalBooks/pdfs/801000584.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801000584.jpg'),
(56, 8, 'भूगोल', 'http://cart.ebalbharati.in/BalBooks/pdfs/801020011.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801020011.jpg'),
(57, 8, 'माय इंग्लिश बुक इंग्रजी', 'http://cart.ebalbharati.in/BalBooks/pdfs/803020035.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/803020035.jpg'),
(58, 8, 'संस्कृतम् आमोद:(संपूर्ण) ', 'http://cart.ebalbharati.in/BalBooks/pdfs/801000604.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/801000604.jpg'),
(59, 8, 'सुलभभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/802020020.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/802020020.jpg'),
(60, 8, 'गणित ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/803020004.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/803020004.jpg'),
(61, 8, 'सामान्य विज्ञान ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/803020012.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/803020012.jpg'),
(62, 9, 'कुमारभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/901030024.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901030024.jpg'),
(63, 9, 'गणित भाग-१ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/901000608.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901000608.jpg'),
(64, 9, 'गणित भाग - २ (मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/901000609.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901000609.jpg'),
(65, 9, 'विज्ञान आणि तंत्रज्ञान ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/901020456.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901020456.jpg'),
(66, 9, 'इतिहास व राज्यशास्त्र', 'http://cart.ebalbharati.in/BalBooks/pdfs/901010491.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901010491.jpg'),
(67, 9, 'भूगोल', 'http://cart.ebalbharati.in/BalBooks/pdfs/901020011.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901020011.jpg'),
(68, 9, 'माय इंग्लिश कोर्स बुक इंग्रजी', 'http://cart.ebalbharati.in/BalBooks/pdfs/903000607.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/903000607.jpg'),
(69, 9, 'स्व-विकास व कलारसास्वाद', 'http://cart.ebalbharati.in/BalBooks/pdfs/901000610.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901000610.jpg'),
(70, 9, 'संरक्षण शास्त्र', 'http://cart.ebalbharati.in/BalBooks/pdfs/901000611.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901000611.jpg'),
(71, 9, 'संस्कृतम् आमोद: (संपूर्ण) ', 'http://cart.ebalbharati.in/BalBooks/pdfs/901000604.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/901000604.jpg'),
(72, 9, 'लोकभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/902030027.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/902030027.jpg'),
(73, 9, 'विज्ञान आणि तंत्रज्ञान इंग्रजी', 'http://cart.ebalbharati.in/BalBooks/pdfs/903020456.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/903020456.jpg'),
(74, 9, 'गणित भाग-१ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/903000608.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/903000608.jpg'),
(75, 9, 'गणित भाग-२ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/903000609.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/903000609.jpg'),
(76, 10, 'कुमारभारती मराठी', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001030024.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001030024.jpg'),
(77, 10, 'गणित भाग - १ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000608.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000608.jpg'),
(78, 10, 'गणित भाग - २ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000609.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000609.jpg'),
(79, 10, 'सायन्स ऍन्ड टेक्नॉलॉजी भाग-१ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000265.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000265.jpg'),
(80, 10, 'सायन्स ऍन्ड टेक्नॉलॉजी भाग-२ ( मराठी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000270.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000270.jpg'),
(81, 10, 'इतिहास व राज्यशास्त्र ', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001010491.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001010491.jpg'),
(82, 10, 'संरक्षणशास्त्र कार्यपुस्तिका', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000611.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000611.jpg'),
(83, 10, 'भूगोल', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001020011.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001020011.jpg'),
(84, 10, 'माय इंग्लिश कोर्स बुक', 'http://cart.ebalbharati.in/BalBooks/pdfs/1003000607.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1003000607.jpg'),
(85, 10, 'संस्कृतम् आमोद: (संपूर्ण) ', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000604.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000604.jpg'),
(86, 10, 'लॊकभारती हिंदी', 'http://cart.ebalbharati.in/BalBooks/pdfs/1002030027.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1002030027.jpg'),
(87, 10, 'स्व-विकास व कलारसास्वाद', 'http://cart.ebalbharati.in/BalBooks/pdfs/1001000610.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1001000610.jpg'),
(88, 10, 'सायन्स ऍन्ड टेक्नॉलॉजी भाग-१ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1003000265.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1003000265.jpg'),
(89, 10, 'सायन्स ऍन्ड टेक्नॉलॉजी भाग-२ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1003000270.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1003000270.jpg'),
(90, 10, 'गणित भाग - १ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1003000608.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1003000608.jpg'),
(91, 10, 'गणित भाग - २ ( इंग्रजी )', 'http://cart.ebalbharati.in/BalBooks/pdfs/1003000609.pdf', 'http://cart.ebalbharati.in/BalBooks/BookCovers/1003000609.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
