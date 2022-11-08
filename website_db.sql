-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 08, 2021 at 03:07 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(11) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Launchpads'),
(2, 'Dj Controllers'),
(3, 'Midi Keyboards'),
(4, 'Headphones'),
(5, 'Speakers');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_category_id` int(11) NOT NULL,
  `product_price` float NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_short_desc` text NOT NULL,
  `product_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_title`, `product_category_id`, `product_price`, `product_quantity`, `product_description`, `product_short_desc`, `product_image`) VALUES
(2, 'Lowrider Chillin N Grillin Tough Phone Case', 3, 39.99, 10, 'Any fan of Lowrider will love adding this Chillin N Grillin Tough Phone Case from Lowrider to their mobile device! Made with a hard outer shell that is both shock and drop resistant, this phone case keeps your phone safe, while showing just how much you love Lowriders.', 'Lowrider Case', 'phone1.png'),
(3, 'Super Street Logo Black Tough Phone Case', 3, 39.99, 10, 'Any fan of Super Street will love adding this Logo Black Tough Phone Case from Super Street to their mobile device! Made with a hard outer shell that is both shock and drop resistant, this phone case keeps your phone safe, while showing off how much you love Super Street.', 'Super Street Black', 'phone2.png'),
(4, 'Super Street Logo Red Tough Phone Case', 3, 39.99, 10, 'Any fan of Super Street will love adding this Logo Red Tough Phone Case from Super Street to their mobile device! Made with a hard outer shell that is both shock and drop resistant, this phone case keeps your phone safe, while showing off how much you love Super Street.', 'Super Street Red', 'phone3.png'),
(5, 'NE X VALHALLA ROUND NECK T-SHIRT', 2, 84.99, 10, 'The design is inspired by the elements of restoration and modification that is align with one of Valhalla Garage project, the Projekt 934.', 'Carman Shirts', 'baju1.png'),
(6, 'NE MODS101 ROUND NECK T-SHIRT', 2, 168.99, 10, 'MODS101 video series on our social channels is aimed to educate car guys to properly and tastefully modify their car with good products and proper installation. This t-shirt is designed to commemorate the series, inspired by the first ever cars most of us grew up to build, modify and tinker around with aka the model kit cars.', 'Carman Shirts', 'baju2.png'),
(7, 'NE ADVENTURE ROUND NECK T-SHIRT', 2, 349.99, 10, 'Picking up the current hot trend locally in Malaysia, we intend on venturing into the outdoor and adventure lifestyle with modified 4x4 vehicles. Our plan were cut short due to the flood disaster but worry not, we will be doing more adventure soon!', 'Carman Shirts', 'baju3.png'),
(8, 'Four Wheeler In Gear White Mug', 1, 14.99, 10, 'Enjoy your favorite coffee, tea, or brew of choice in this stylish Four Wheeler In Gear White Mug. Featuring the Four Wheeler logo, this white mug looks just as good on your desk or in the car.', 'Mugs', 'cawan2.png'),
(9, 'Engine Masters Piston Black Mug', 1, 14.99, 10, 'Enjoy your favorite coffee, tea, or brew of choice in style with this Engine Masters Piston Black Mug. Featuring the Engine Masters logo, this black mug looks just as good on your desk or in the car.', 'Mugs', 'cawan3.png'),

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '1234'),
(2, 'afiq', 'afiq@gmail.com', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
