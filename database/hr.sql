START TRANSACTION;
SET time_zone = "+00:00";



--
-- Database: `hr`
--

-- --------------------------------------------------------

--
-- Table structure for table `billdetail`
--
CREATE TABLE `billdetail` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `bill_id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `taka_no` int(10) DEFAULT NULL,
  `rate` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) 

--
-- Dumping data for table `billdetail`
--



-- --------------------------------------------------------

--
-- Table structure for table `bill_data`
--


CREATE TABLE `bill_data` (
  `id` int(10) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` varchar(10) NOT NULL,
  `taka_no` int(10) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `rate` varchar(10) NOT NULL,
  `cust_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) 

-- --------------------------------------------------------

--
-- Table structure for table `bill_list`
--


CREATE TABLE `bill_list` (
  `bill_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) DEFAULT NULL,
  `invoice_no` varchar(10) NOT NULL,
  `sub_total` varchar(10) NOT NULL,
  `grand_total` varchar(10) NOT NULL,
  `round_off` varchar(10) NOT NULL,
  `cust_id` int(10) NOT NULL,
  `place_of_supply` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`bill_id`)
) 

--
-- Dumping data for table `bill_list`
--


-- --------------------------------------------------------

--
-- Table structure for table `customers`
--


CREATE TABLE `customers` (
  `cust_id` varchar(10) NOT NULL,
  `customer_name` varchar(50) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL,
  `gstin_no` varchar(15) DEFAULT NULL,
  `pan_no` varchar(10) DEFAULT NULL,
  `phone_no` varchar(10) DEFAULT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`cust_id`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customers`
--


--
-- Table structure for table `keys_`
--

DROP TABLE IF EXISTS `keys_`;
CREATE TABLE IF NOT EXISTS `keys_` (
  `id_no` int(11) NOT NULL,
  `key_val` varchar(19) NOT NULL,
  `valid` int(1) NOT NULL,
  PRIMARY KEY (`id_no`),
  UNIQUE KEY `key_val` (`key_val`)
) 

--


--
-- Table structure for table `products`
--


CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `product_name` varchar(30) NOT NULL,
  `available_quantity` varchar(10) DEFAULT '0',
  `hsn_no` int(10) DEFAULT NULL,
  `rate` varchar(10) NOT NULL,
  `dealer_name` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  PRIMARY KEY (`username`,`product_id`)
) 

--
-- Dumping data for table `products`
--


-- --------------------------------------------------------

--
-- Table structure for table `users`
--


CREATE TABLE `users` (
  `username` varchar(30) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `pass` varchar(50) DEFAULT NULL,
  `key_id` int(11) NOT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `key_id` (`key_id`)
) 

--
-- Dumping data for table `users`

-- --------------------------------------------------------

--
-- Table structure for table `user_detail`

CREATE TABLE `user_detail` (
  `username` varchar(30) NOT NULL,
  `company_name` varchar(30) NOT NULL,
  `addr` varchar(100) NOT NULL,
  `phone_no_1` varchar(10) NOT NULL,
  `phone_no_2` varchar(10) DEFAULT NULL,
  `gstin_no` varchar(15) DEFAULT NULL,
  `pan_no` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `bank_name` varchar(50) DEFAULT NULL,
  `bank_branch_name` varchar(50) DEFAULT NULL,
  `bank_ac_number` varchar(30) DEFAULT NULL,
  `ifsc_code` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`username`),
  UNIQUE KEY `gstin_no` (`gstin_no`),
  UNIQUE KEY `pan_no` (`pan_no`),
  UNIQUE KEY `gstin_no_2` (`gstin_no`)
) 
