-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2024 at 04:07 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `food_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `password`) VALUES
(1, 'admincafe', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(3, 'admin1', '8cb2237d0679ca88db6464eac60da96345513964');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `pid`, `name`, `price`, `quantity`, `image`) VALUES
(7, 8, 7, 'Hoppers ', 80, 1, 'Hoppers.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `description`, `image`) VALUES
(3, 'Date Night ', 'Free cocktail', 'Red, Brown And Green Minimalist Retro Vintage Bar Restaurant Date Night Valentines Couple Cocktail Event Marketing Poster.png');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(4, 8, 'Sajali', 'sajalisupunya@gmail.com', '716187256', 'Thankyou for the great service ');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(3, 8, 'Sajali Supunya', '0705284500', 'sajalisupunya@gmail.com', 'debit card', '23, welisara, mahabage, gamapaha, 11010', 'Hoppers  (80 x 1) - Kottu Roti (vegetables, and meat or egg, seasoned with spices.) (1200 x 1) - ', 1280, '2024-08-06', 'completed'),
(4, 8, 'Sajali Supunya', '0705284500', 'sajalisupunya@gmail.com', 'cash on delivery', '23, welisara, mahabage, gamapaha, 11010', 'Paneer Butter Masala (600 x 1) - ', 600, '2024-08-06', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`) VALUES
(7, 'Hoppers ', 'srilankan', 80, 'Hoppers.jpg'),
(8, 'String Hoppers (10)', 'srilankan', 70, 'String Hopper.jpeg'),
(9, 'Kottu Roti (vegetables, and meat or egg, seasoned with spices.)', 'srilankan', 1200, 'Kottu Roti.jpg'),
(10, 'Pittu', 'srilankan', 80, 'Pittu.jpg'),
(11, 'Chicken Tikka Masala', 'indian', 2350, 'Chicken Tikka Masala indian.jpg'),
(12, 'Biryani', 'indian', 1800, 'Biryani indian.jpg'),
(13, 'Paneer Butter Masala', 'indian', 600, 'Paneer Butter Masala indian.jpg'),
(14, 'Masoor Dal', 'indian', 800, 'Masoor Dal indian.jpg'),
(15, 'Samosas', 'indian', 150, 'Samosas indian.jpg'),
(16, 'Pizza Margherita', 'italian', 2500, 'Pizza Margherita italian.jpg'),
(17, 'Pasta Carbonara', 'italian', 2090, 'Pasta Carbonara italian.jpg'),
(18, 'Lasagna', 'italian', 1500, 'Lasagna italian.jpg'),
(19, 'Risotto', 'italian', 1060, 'Risotto italian.jpg'),
(20, 'Tiramisu', 'italian', 1900, 'Tiramisu italian.jpg'),
(21, 'Sweet and Sour Chicken', 'chinese', 520, 'Sweet and Sour Chicken chinese.jpg'),
(22, 'Kung Pao Chicken', 'chinese', 2554, 'Kung Pao Chicken chinese.jpg'),
(23, 'Dumplings (8 pcs)', 'chinese', 1800, 'Dumplings chinese.jpg'),
(24, 'Mapo Tofu', 'chinese', 4000, 'Mapo Tofu chinese.jpg'),
(25, 'Peking Duck', 'chinese', 1500, 'Peking Duck chinese.jpg'),
(26, 'Sushi (small)', 'japanese', 4000, 'Sushi japan.jpg'),
(27, 'Ramen', 'japanese', 800, 'Ramen japan.jpg'),
(28, 'Tempura', 'japanese', 500, 'Tempura japan.jpg'),
(29, 'Takoyaki ', 'japanese', 1600, 'Takoyaki japan.jpg'),
(30, 'Okonomiyaki', 'japanese', 1500, 'Okonomiyaki japan.jpg'),
(31, 'Coffee', 'drinks', 600, 'Coffee drink.webp'),
(32, 'Green Tea', 'drinks', 600, 'Green Tea drink.webp'),
(33, 'Lemonade', 'drinks', 400, 'Lemonade drink.webp'),
(34, 'Smoothie', 'drinks', 700, 'Smoothie drink.jpg'),
(35, 'Iced Tea', 'drinks', 500, 'Iced Tea drink.webp'),
(36, 'Hot Chocolate', 'drinks', 800, 'Hot Chocolate drink.jpg'),
(37, 'Mojito', 'drinks', 650, 'Mojito drink.webp'),
(38, 'Beer', 'drinks', 600, 'Beer drink.webp'),
(39, 'Wine', 'drinks', 600, 'Wine drink.webp');

-- --------------------------------------------------------

--
-- Table structure for table `promotions`
--

CREATE TABLE `promotions` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `promotions`
--

INSERT INTO `promotions` (`id`, `title`, `description`, `image`) VALUES
(4, 'Special Promotion ', 'Enjoy a delicious 15% off on all sushi specials at The Gallery Café this weekend!', 'Orange and Black Modern Food Promotion Facebook Post.jpg'),
(6, 'Special Pizza Sale ', 'Don\'t miss our special pizza sale this week at The Gallery Café - savor your favorite pizzas at unbeatable prices!', 'Red and Yellow Bold Special Pizza Sale Instagram Post.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `guests` varchar(20) NOT NULL,
  `message` text DEFAULT NULL,
  `states` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservation`
--

INSERT INTO `reservation` (`id`, `user_id`, `name`, `email`, `number`, `date`, `time`, `guests`, `message`, `states`) VALUES
(5, 8, 'Sajali Supunya', 'sajalisupunya@gmail.com', '42343', '2024-08-21', '11:54:00', '7', 'Arrange a special table ', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `password`) VALUES
(3, 'staffcafe', 'cfa1150f1787186742a9a884b73a43d8cf219f9b'),
(5, 'staff8', 'cfa1150f1787186742a9a884b73a43d8cf219f9b'),
(6, 'staff69', 'cfa1150f1787186742a9a884b73a43d8cf219f9b'),
(7, 'blablabla', 'cd3f0c85b158c08a2b113464991810cf2cdfc387'),
(9, 'staffnum1', '69df79bef9287d3bcb8f104a408b06de6a108fd8'),
(10, 'staff456', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2'),
(11, 'satfffff', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `number` varchar(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `number`, `password`, `address`) VALUES
(7, 'user', 'user@mail.com', '0710203714', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', '111, 222, Area 51, Welipitiya, Denipitiya, SP, Sri  lanka - 81730'),
(8, 'Sajali Supunyaa', 'sajalisupunya@gmail.com', '0705284500', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', '23, welisara, mahabage, gamapaha, 11010'),
(9, 'Rehansaaa', 'rehansadewlini@gmail.com', '716313142', '9a3e61b6bcc8abec08f195526c3132d5a4a98cc0', '');

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
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
