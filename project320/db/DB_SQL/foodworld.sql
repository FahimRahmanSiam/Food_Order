-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 02, 2019 at 07:41 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `foodworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE IF NOT EXISTS `comment` (
`c_id` int(11) NOT NULL,
  `c_name` varchar(255) NOT NULL,
  `c_date` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6),
  `comment` longtext NOT NULL,
  `rating` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`c_id`, `c_name`, `c_date`, `comment`, `rating`) VALUES
(1, 'Md. Anayet Hossain', '0000-00-00 00:00:00.000000', 'WebstaurantStore is an online restaurant supply company based in Lititz, Pennsylvania. The company offers commercial-grade equipment to the food service industry through online ordering and commercial shipping.', 5),
(3, 'Tanvir', '0000-00-00 00:00:00.000000', ' Central Penn Business Journal.[1] In 2014, Clark Associates, Inc. was also rated as the fourth largest distributor of restaurant supplies by Foodservice Equipment', 5),
(4, 'Sharita Shehnaz', '2019-03-30 18:16:15.812680', 'Central Penn Business Journal.[1] In 2014, Clark Associates, Inc. was also rated as the fourth largest distributor of restaurant supplies by Foodservice Equipment', 5),
(5, 'Rimi', '2019-03-30 18:16:30.363848', 'Burger King (BK) is an American global chain of hamburger fast food restaurants. Headquartered in the unincorporated area of Miami-Dade County, Florida, the company was founded in 1953 as InstaBurger King, a Jacksonville, Florida-based restaurant chain.', 4),
(7, 'Naina', '2019-03-30 18:16:48.905977', 'insert and select date and time from mysql', 5),
(8, 'Sojol', '2019-03-30 18:16:59.960786', 'nded in 1958 by Dan and Frank Carney. The company is known for its Italian-American cuisine menu inclu', 5);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE IF NOT EXISTS `contact` (
`contact_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`contact_id`, `name`, `email`, `phone`, `msg`) VALUES
(1, 'Siam', 'darklycan1693@gmail.com', '01613072143', 'aaaaaaaaaaaaaaaaaa'),
(2, 'niloy', 'niloyamin@yahoo.com', '01345645646', 'asdffggh');

-- --------------------------------------------------------

--
-- Table structure for table `delivery`
--

CREATE TABLE IF NOT EXISTS `delivery` (
`delivery_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `product_name` varchar(50) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_discount` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `vat` int(11) NOT NULL,
  `grand_total` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `delivery`
--

INSERT INTO `delivery` (`delivery_id`, `order_id`, `customer_name`, `product_name`, `product_price`, `product_discount`, `total`, `vat`, `grand_total`, `date`) VALUES
(1, 5, 'AAA', 'Pizza', 336, 17, 319, 48, 367, '2019-03-30 18:17:27'),
(2, 6, 'BBB', 'Pasta', 261, 8, 272, 39, 300, '2019-03-30 18:17:34'),
(3, 7, 'CCC', 'Pasta', 1882, 840, 1960, 282, 2164, '2019-03-30 18:17:42'),
(4, 8, 'DDD', 'Pasta', 1882, 840, 1960, 282, 2164, '2019-03-30 18:17:49'),
(5, 9, 'EEE', 'Pasta', 2607, 84, 2716, 391, 2998, '2019-03-30 18:17:56'),
(6, 10, 'aaaaaa', 'Pasta', 2800, 84, 2716, 391, 2998, '0000-00-00 00:00:00'),
(7, 11, 'aaaa', 'Pizza', 3500, 175, 3325, 479, 3671, '0000-00-00 00:00:00'),
(8, 12, 'aa', 'Pizza', 1750, 88, 1663, 239, 1835, '0000-00-00 00:00:00'),
(9, 13, 'ASDF', 'Pizza', 1750, 88, 1663, 249, 1912, '2019-03-30 18:18:11'),
(10, 14, 'aaaa', 'Pizza', 700, 35, 665, 100, 765, '0000-00-00 00:00:00'),
(11, 15, 'Boss', 'Pizza', 700, 35, 665, 100, 765, '2019-03-30 18:18:24');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE IF NOT EXISTS `order` (
`o_id` int(11) NOT NULL,
  `o_res_name` varchar(255) NOT NULL,
  `o_c_id` int(11) NOT NULL,
  `o_name` varchar(255) NOT NULL,
  `o_d_address` longtext NOT NULL,
  `o_phone` varchar(255) NOT NULL,
  `o_email` varchar(255) NOT NULL,
  `o_tot_amount` varchar(255) NOT NULL,
  `o_dis_amount` varchar(255) NOT NULL,
  `o_pay_amount` varchar(255) NOT NULL,
  `o_status` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1006 ;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`o_id`, `o_res_name`, `o_c_id`, `o_name`, `o_d_address`, `o_phone`, `o_email`, `o_tot_amount`, `o_dis_amount`, `o_pay_amount`, `o_status`) VALUES
(1001, 'Appeliano', 0, 'siam', 'uttara', '01111111111', 'dsas@gmail.com', '1250', '0', '1250', 'Processing'),
(1002, 'Appeliano', 0, 'esrat mimi', 'brac u', '01911111111', 'asdf@gmail.com', '1090', '0', '1090', 'Processing'),
(1003, 'Appeliano', 2, 'Esrat', 'uttara', '01987653425', 'asdfgh@gmail.com', '600', '24', '576', 'Processing'),
(1004, 'Appeliano', 0, 'niloy', 'khilgoan', '12312', 'asddas@gmail.com', '350', '0', '350', 'Processing'),
(1005, 'Appeliano', 0, 'nafisa', 'brac u', '34732749327', 'dfg@gmail.com', '1050', '0', '1050', 'Processing');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
`od_id` int(11) NOT NULL,
  `od_o_id` int(11) NOT NULL,
  `od_item_id` int(11) NOT NULL,
  `od_item_price` varchar(255) NOT NULL,
  `od_item_qty` varchar(255) NOT NULL,
  `od_amount` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`od_id`, `od_o_id`, `od_item_id`, `od_item_price`, `od_item_qty`, `od_amount`) VALUES
(1, 1001, 1, '350', '1', '350'),
(2, 1001, 2, '280', '1', '280'),
(3, 1001, 8, '250', '1', '250'),
(4, 1001, 9, '370', '1', '370'),
(5, 1002, 2, '280', '3', '840'),
(6, 1002, 8, '250', '1', '250'),
(7, 1003, 1, '350', '1', '350'),
(8, 1003, 8, '250', '1', '250'),
(9, 1004, 1, '350', '1', '350'),
(10, 1005, 1, '350', '3', '1050');

-- --------------------------------------------------------

--
-- Table structure for table `order_table`
--

CREATE TABLE IF NOT EXISTS `order_table` (
`order_id` int(11) NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `Customer_address` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `order_amount` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `order_table`
--

INSERT INTO `order_table` (`order_id`, `restaurant_name`, `product_id`, `customer_name`, `Customer_address`, `email`, `phone`, `date`, `order_amount`) VALUES
(1, 'Appeliano', 1, 'AAA', '', 'a9@yahoo.com', '016852', '2019-03-30 18:21:01', 3),
(2, 'Appeliano', 1, 'Tanvir', 'dsfdgjhjhnjkkkkkkkkkkkn<br />\r\njkkbhcgdf', 'aatanvir99@yahoo.com', '016852', '2018-04-07 16:25:45', 3),
(3, 'Cafe', 1, 'Antik', 'ughgjhfhg', 'aatanvir99@yahoo.com', '016852', '2019-03-30 18:19:18', 300),
(4, 'Cafe', 1, 'Saad', 'hlkjklm ml,', 'aatanvir99@yahoo.com', '016852', '2019-03-30 18:19:54', 288),
(5, 'Appeliano', 1, 'Nafi', 'asdasada', 'aatanvir99@yahoo.com', '11654', '2019-03-30 18:20:03', 5),
(6, 'Appeliano', 2, 'Mogno', 'asdacsdv', 'wesdsc', '5163', '2019-03-30 18:20:13', 10),
(7, 'Appeliano', 2, 'Nayeem', 'aaaaaaaa', 'aatanvir99@yahoo.com', '2161', '2019-03-30 18:20:21', 10),
(8, 'Appeliano', 2, 'Misbah', 'llllllll', 'aatanvir99@yahoo.com', '016852', '2019-03-30 18:20:29', 10),
(9, 'Appeliano', 2, 'Lmao', 'sdasdfa', 'aatanvir99@yahoo.com', '0126', '2019-03-30 18:20:38', 10),
(11, 'Appeliano', 1, 'aaaa', 'aaaaa', 'aatanvir99@yahoo.com', '1264', '2018-04-07 18:30:05', 10),
(12, 'Appeliano', 1, 'aa', 'aaaa', 'aaa', '21212', '2018-04-07 18:33:40', 5);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`product_id` int(11) NOT NULL,
  `restaurant_name` varchar(255) NOT NULL,
  `restaurant_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` double NOT NULL,
  `product_discount` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`product_id`, `restaurant_name`, `restaurant_id`, `product_name`, `product_price`, `product_discount`, `product_photo`) VALUES
(1, 'Appeliano', '1', 'Pizza', 350, 5, '005.jpg'),
(2, 'Appeliano', '1', 'Pasta', 280, 3, '002.jpg'),
(3, 'Cafe Theater', '2', 'Set Menu 1', 230, 2, 'aaa.jpg'),
(4, 'Grind House', '3', 'Set Menu 2', 250, 2, 'bbb.jpg'),
(5, 'Appeliano', '1', 'FRIED WONTHON ', 120, 0, ''),
(6, 'Appeliano', '1', 'SPRING ROLL', 250, 0, ''),
(7, 'Appeliano', '1', 'FRIED PRAWN BALL 8PE', 220, 0, ''),
(8, 'Appeliano', '1', 'FRIED WINGS', 250, 0, ''),
(9, 'Appeliano', '1', 'TOM YAM SOUP GOONG', 370, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
`r_id` int(11) NOT NULL,
  `restaurant_name` varchar(50) NOT NULL,
  `area_name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `phone` int(11) NOT NULL,
  `rat_rating` int(11) NOT NULL,
  `r_image` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`r_id`, `restaurant_name`, `area_name`, `address`, `email`, `phone`, `rat_rating`, `r_image`) VALUES
(1, 'Appeliano', 'Khilgaon', 'Sahid Baki Road, Khilgaon, Taltola, Dhaka 1219', 'appeliano@gmail.com', 1723684068, 5, 'appeliano_250.jpg'),
(2, 'Cafe Theater', 'Khilgaon', 'House - 566/A, Block-C,Khilgaon Taltola(4th Floor)', 'theater@gmail.com', 1725798139, 4, 'Cafe_Theater_250.jpg'),
(3, 'Grind House', 'Khilgaon', '566/A, Block-C, Khilgaon Taltola, Shahid Baki Road', 'grindhouse@gmail.com', 1680242691, 4, 'grind_house_250.jpg'),
(4, 'TraditionBD', 'Khilgaon', '568/C, Block C, Shahid Baki Road, Dhaka 1219', 'td_BD@gmail.com', 1723684068, 5, 'TBD_250.jpg'),
(5, 'Tune & Bite', 'Khilgaon', '566/A, Block-C, Khilgaon Taltola, Shahid Baki Rd, ', 'tune&bite@gmail.com', 1671984484, 4, 'T&T_250.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user_account`
--

CREATE TABLE IF NOT EXISTS `user_account` (
`UserID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` longtext NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Phone` varchar(255) NOT NULL,
  `Gender` varchar(255) NOT NULL,
  `UserName` varchar(60) NOT NULL,
  `Password` varchar(60) NOT NULL,
  `UserLevel` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `user_account`
--

INSERT INTO `user_account` (`UserID`, `FirstName`, `LastName`, `Address`, `Email`, `Phone`, `Gender`, `UserName`, `Password`, `UserLevel`) VALUES
(1, 'Some', 'One', '32/4 Mohammadpur<br />\r\nDhaka', 'someone@gmail.com', '01711', 'Male', 'someone', '123', 'User'),
(2, 'Esrat', 'MiMi', 'uttara', 'asdfgh@gmail.com', '01987653425', 'Female', 'Mim', '123456', 'User');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
 ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
 ADD PRIMARY KEY (`contact_id`);

--
-- Indexes for table `delivery`
--
ALTER TABLE `delivery`
 ADD PRIMARY KEY (`delivery_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
 ADD PRIMARY KEY (`o_id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
 ADD PRIMARY KEY (`od_id`);

--
-- Indexes for table `order_table`
--
ALTER TABLE `order_table`
 ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `restaurant`
--
ALTER TABLE `restaurant`
 ADD PRIMARY KEY (`r_id`);

--
-- Indexes for table `user_account`
--
ALTER TABLE `user_account`
 ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
MODIFY `contact_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `delivery`
--
ALTER TABLE `delivery`
MODIFY `delivery_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
MODIFY `o_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=1006;
--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
MODIFY `od_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `order_table`
--
ALTER TABLE `order_table`
MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `restaurant`
--
ALTER TABLE `restaurant`
MODIFY `r_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `user_account`
--
ALTER TABLE `user_account`
MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
