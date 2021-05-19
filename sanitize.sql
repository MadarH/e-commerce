-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2021 at 08:37 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sanitize`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedbacktable`
--

CREATE TABLE `feedbacktable` (
  `msgID` int(255) NOT NULL,
  `senderfName` varchar(50) NOT NULL,
  `senderlName` varchar(50) DEFAULT NULL,
  `sendereMail` varchar(100) NOT NULL,
  `senderfeedback` varchar(500) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedbacktable`
--

INSERT INTO `feedbacktable` (`msgID`, `senderfName`, `senderlName`, `sendereMail`, `senderfeedback`) VALUES
(24, 'tyntyn', 'rtg', 'vsd', 'xvds g'),
(25, 'ecfe', 'sdfn', 'urmea', 'dafaerrht'),
(26, 'madar', 'darma', 'abc@def.com', 'Hello! Testing\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `f_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `add` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `order_price` int(255) NOT NULL,
  `ID_user` int(255) NOT NULL,
  `id_product` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `des` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `cat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `qnt` int(11) NOT NULL,
  `featured` tinyint(4) NOT NULL DEFAULT 0,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `des`, `price`, `cat`, `img`, `qnt`, `featured`, `rating`) VALUES
(1, 'WAPIKE Black Face Masks, 100 Pcs Black Disposable Face Masks', '>WAPIKE Black Face Masks, 100 Pcs Black Disposable Face Masks 3 Ply Filter Protection. 100pcs black Disposable Face Masks: 3-ply With Elastic Earloops for Day-to-day protection, it has a stronger filtering effect and is more breathable. Black Mask: 3 Laye', 1750, 'masks', 'images/product-3.jpg', 999, 1, 5),
(2, '500 units Remask Air Pack', 'Dense knit polyester with durable hydrophobic treatment (165 g/m2)\r\nDouble sided viscose/polyester absorbent and antibacterial (210 g/m2)\r\nHigher protection level with nose bridge for perfect fit, Soft elastic ear loops for comfort and ease of wearing', 9050, 'masks', 'images/product-2.jpg', 1500, 1, 4),
(3, 'YIBER Disposable Protective Coverall', 'Material: made of 100% SMS Non Woven Fabric, tightly sealed to maximize the protection of dust\r\nOne-piece protective clothing with elastic hood and front zipper closure, simple and elegant, easy to put on and remove the garment.\r\nElastic cuffs, waist', 1050, 'coverall', 'images/product-1.jpg', 1451, 1, 4),
(4, 'GAUKE Nitrile Disposable Gloves, Medium,3 Mil,100 pcs, Latex-Free', 'As a synthetic material, nitrile gloves are allergen-free and are more durable and puncture resistant than latex gloves.\r\nNitrile disposable gloves are a great fit for lab work, food service, hair salons, janitorial work, light industrial applications', 1150, 'gloves', 'images/product-4.jpg', 1996, 1, 5),
(5, '3M 4530 Disposable Breathable Polypropylene Coverall', 'Flame-resistant treatment offers secondary protection against heat and flame\r\nMade with a breathable material that helps reduce heat build-up and promote comfortable wear\r\nKnit cuffs provide a soft wrist closure for increased comfort compared to elastic', 570, 'coverall', 'images/product-5.jpg', 1984, 0, 4),
(6, 'Coyacool Disposable Latex Free Gloves', 'Latex and powder free: Non-allergenic and non-irritating, the best choice for sensitive hands and food.\r\nDurable: Coyacool Synthetic Vinyl Gloves fit your hands greatly, just like your own skin, its elastic is far better than normal PVC, and won\'t rip.', 10, 'gloves', 'images/product-6.jpg', 52, 0, 3),
(7, 'KN95 Face Mask 50Pcs for Small Face', '【Only For Small Face】The length of this ear strap is more suitable for small face, it can effectively solve the problem of small face girls can not find a suitable mask. It is easy to be worn and the soft elastic ear loop design helps eliminate pressure.', 1750, 'masks', 'images/product-7.jpg', 2000, 0, 5),
(8, 'PURELL TFX Touch-Free Foam Hand Sanitizer Dispenser', 'No. 1 hand sanitizer most used by hospitals and proven to kill 99.99 percent of most common germs that may cause illness without damaging skin – even after repeated uses\r\nFormulated to be gentle on skin with four conditioners. Free of preservatives.', 470, 'sanitizer', 'images/product-8.jpg', 1500, 0, 4),
(9, 'Clorox Healthcare Bleach Germicidal Cleaner Spray, 22 Ounces', 'GERMICIDAL BLEACH: Clorox Germicidal Bleach cleaner is a ready to use disinfectant thats EPA registered to kill 50 microorganisms\r\nCONCENTRATED BLEACH FORMULA: Clean disinfect and deodorize with proven efficacy against outbreak-causing viruses like Influe', 250, 'sanitizer', 'images/product-9.jpg', 2500, 0, 3),
(10, 'Contec Finger Tip Pulse Oximeter - Blood Oxygen Saturation (SpO2) and Pulse Rate Monitor', 'ACCURATE AND RELIABLE: Designed to provide a quick, accurate way for spot-checking blood oxygen saturation levels and pulse rate while you\'re on the go. Intended for sports or recreational use.\r\nSimple operation allows it to turn on and off.', 550, 'none', 'images/product-10.jpg', 100, 0, 5),
(11, 'Ever Ready First Aid Dual Head Stethoscope - Black', 'IDEAL FOR DIAGNOSTICS - An excellent general-purpose stethoscope for all manner of medical professionals. Designed to assist doctors, nurses, and EMTs with patient diagnostics and evaluations.\r\nDUAL-HEAD STETHOSCOPE - Designed for patients of all ages.', 450, 'none', 'images/product-11.jpg', 2000, 0, 3),
(12, 'CEM DT-8806H Instant Accurate Reading Body and Surface Thermometer', 'This medical grade thermometer is equipped with advance technology and a sensitive sensor that provides accurate readings within one second.\r\nNon- contact design provides a safe and hygienic experience with little risk of cross contamination.', 690, 'none', 'images/product-12.jpg', 1500, 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `firstname`, `lastname`, `email`, `username`, `password`) VALUES
(0, 'iven', 'moonien', 'ivenmoonienxd@gmail.com', 'iven022', '81dc9bdb52d04dc20036dbd8313ed055'),
(1, 'abc', 'def', 'abc@def.cc', 'madar', 'e10adc3949ba59abbe56e057f20f883e');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  ADD PRIMARY KEY (`msgID`),
  ADD UNIQUE KEY `msgID` (`msgID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD KEY `fk_user_id` (`ID_user`),
  ADD KEY `id_product` (`id_product`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feedbacktable`
--
ALTER TABLE `feedbacktable`
  MODIFY `msgID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`ID_user`) REFERENCES `users` (`ID`),
  ADD CONSTRAINT `id_product` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
