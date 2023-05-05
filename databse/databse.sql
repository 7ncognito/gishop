-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 06:44 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gi shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `image` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `image`, `email`, `password`) VALUES
(1, 'shiv', 'Screenshot 2023-02-09 215235.jpg', 'shiv@gmail.com', '20CA0025');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `cart_id` int(11) NOT NULL,
  `cust_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`cart_id`, `cust_id`, `product_id`, `quantity`) VALUES
(103, 1, 95, 1),
(109, 96, 95, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `category` varchar(100) CHARACTER SET latin1 NOT NULL,
  `fontawesome-icon` varchar(25) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `fontawesome-icon`) VALUES
(2, 'Spices', 'fa-utensils-alt'),
(92, 'Home Decor', ' fa-home'),
(99, 'food', ' fa-leaf');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cust_id` int(11) NOT NULL,
  `cust_name` varchar(100) NOT NULL,
  `cust_email` varchar(100) NOT NULL,
  `cust_pass` varchar(100) NOT NULL,
  `cust_add` varchar(200) NOT NULL,
  `cust_city` varchar(50) NOT NULL,
  `cust_postalcode` varchar(50) NOT NULL,
  `cust_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`cust_id`, `cust_name`, `cust_email`, `cust_pass`, `cust_add`, `cust_city`, `cust_postalcode`, `cust_number`) VALUES
(96, 'demo', 'demo@gmail.com', '1234', 'dholakpur', 'bheemsen', '744192', '7430809922'),
(97, 'shiv kumar', 'cypher693@outlook.com', '1111', 'JNRM, port blair', 'South Andaman', '744103', '07430809911');

-- --------------------------------------------------------

--
-- Table structure for table `customer_order`
--

CREATE TABLE `customer_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_fullname` varchar(100) NOT NULL,
  `customer_address` varchar(225) NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_pcode` int(11) NOT NULL,
  `customer_phonenumber` varchar(100) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_amount` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `products_qty` int(11) NOT NULL,
  `order_date` varchar(100) NOT NULL,
  `order_status` varchar(100) NOT NULL,
  `cancel_reason` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customer_order`
--

INSERT INTO `customer_order` (`order_id`, `customer_id`, `customer_email`, `customer_fullname`, `customer_address`, `customer_city`, `customer_pcode`, `customer_phonenumber`, `product_id`, `product_amount`, `invoice_no`, `products_qty`, `order_date`, `order_status`, `cancel_reason`) VALUES
(99, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 580891438, 1, '05-04-2023', 'delivered', ''),
(100, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 846264987, 1, '05-04-2023', 'delivered', ''),
(101, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 22668319, 1, '05-04-2023', 'cancelled', 'maja nahi aaya'),
(102, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 2144864336, 1, '16-04-2023', 'cancelled', 'fsds'),
(103, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 1788012738, 1, '16-04-2023', 'cancelled', 'dghdh'),
(104, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 238520919, 1, '16-04-2023', 'cancelled', 'kjjkn'),
(105, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 1717998400, 1, '16-04-2023', 'cancelled', 'tyw'),
(106, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 694747983, 1, '16-04-2023', 'cancelled', 'faafa'),
(107, 96, 'demo@gmail.com', 'demo', 'dholakpur', 'bheemsen', 744192, '7430809922', 95, 150, 627418212, 1, '16-04-2023', 'verified', '');

-- --------------------------------------------------------

--
-- Table structure for table `gi_product`
--

CREATE TABLE `gi_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(80) NOT NULL,
  `category` int(11) NOT NULL,
  `detail` text NOT NULL,
  `price` int(11) NOT NULL,
  `state` varchar(40) NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(100) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gi_product`
--

INSERT INTO `gi_product` (`pid`, `title`, `category`, `detail`, `price`, `state`, `image`, `date`, `status`) VALUES
(95, 'Everest, Spices', 2, '<p>taste is best mummy or everest</p>\r\n', 150, 'Chhattisgarh', 'banner1.jpg', '05-04-2023', 'publish'),
(96, 'Bamboo Basket', 92, '<p>Bamboo basket , Home Made</p>\r\n', 500, 'Assam', 'basket.jpeg', '18-04-2023', 'publish'),
(97, 'Mircha Rice', 99, '<p>naturlly harvested rice form fields&nbsp;</p>\r\n\r\n<p>no preservatives or chemicals were added</p>\r\n', 700, '', 'riceproduct.jpg', '01-05-2023', 'publish'),
(98, 'embroidered handicraft', 92, '<p>The embroidered handicraft from Chamba in Himachal Pradesh has a long history. It is believed that Guru Nanak&rsquo;s elder sister Bebe Nanaki made one in the 16th century. The Victoria and Albert Museum in London has in its collection a Chamba rumal from the 18th century that&nbsp;<a href=\"http://collections.vam.ac.uk/item/O16741/rumal-unknown/\" target=\"_blank\">depicts</a>&nbsp;&ldquo;Hindu god Krishna in a variety of poses &ndash; playing his flute or talking to the female cow-herds (gopis)&rdquo;. The handicraft lost its royal patronage after Independence, although it&rsquo;s still a common item of gift at weddings.</p>\r\n', 5000, 'Himachal Pradesh', 'uuuu.jpg', '01-05-2023', 'publish'),
(99, 'cotton yarn towel', 92, '<p>Made with cotton yarn, the towel is manufactured in the Solapur district of Maharashtra. Its application for GI certification said: &ldquo;Solapur is historically well known and owns unbeatable reputation for its uniqueness in terry towels allied product of Jacquard Chaddar. The fabric used for manufacturing terry towels</p>\r\n', 1000, 'Maharashtra', 'towel.jpg', '01-05-2023', 'publish'),
(100, 'Coconut Shell', 92, '<p>the raw materials available in a region. The coconut palm is no exception. The coconut shell, husk, wood and frond can all be used to either express creativity or create utility items. Art and craft from the coconut palm abound in coconut growing regions</p>\r\n', 800, 'Andaman & Nicobar ', 'coconut-shells.jpg', '01-05-2023', 'publish');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `state_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `state_name`) VALUES
(1, 'Andaman & Nicobar '),
(2, 'Arunachal Pradesh'),
(3, 'Assam'),
(4, 'Bihar'),
(5, 'Chhattisgarh'),
(6, 'Goa'),
(7, 'Gujarat'),
(8, 'Haryana'),
(9, 'Himachal Pradesh'),
(10, 'Jharkhand'),
(11, 'Karnataka'),
(12, 'Kerala'),
(13, 'Madhya Pradesh'),
(14, 'Maharashtra'),
(15, 'Manipur'),
(16, 'Meghalaya'),
(17, 'Mizoram'),
(18, 'Nagaland'),
(19, 'Odisha'),
(20, 'Punjab'),
(21, 'Rajasthan'),
(22, 'Sikkim'),
(23, 'Tamil Nadu'),
(24, 'Telangana'),
(25, 'Tripura'),
(26, 'Uttar Pradesh'),
(27, 'Uttarakhand'),
(28, 'West Bengal');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`cart_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`cust_id`);

--
-- Indexes for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `gi_product`
--
ALTER TABLE `gi_product`
  ADD PRIMARY KEY (`pid`),
  ADD KEY `category` (`category`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `cart_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `cust_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `customer_order`
--
ALTER TABLE `customer_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=108;

--
-- AUTO_INCREMENT for table `gi_product`
--
ALTER TABLE `gi_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `gi_product` (`pid`);

--
-- Constraints for table `customer_order`
--
ALTER TABLE `customer_order`
  ADD CONSTRAINT `customer_order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`cust_id`),
  ADD CONSTRAINT `customer_order_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `gi_product` (`pid`);

--
-- Constraints for table `gi_product`
--
ALTER TABLE `gi_product`
  ADD CONSTRAINT `gi_product_ibfk_1` FOREIGN KEY (`category`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
