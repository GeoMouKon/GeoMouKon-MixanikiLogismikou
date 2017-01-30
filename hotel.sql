-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Φιλοξενητής: 127.0.0.1
-- Χρόνος δημιουργίας: 28 Ιαν 2017 στις 10:51:25
-- Έκδοση διακομιστή: 10.1.13-MariaDB
-- Έκδοση PHP: 5.5.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `hotel`
--
CREATE DATABASE IF NOT EXISTS `hotel` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `hotel`;
GRANT ALL PRIVILEGES ON *.* TO 'dbuserrr'@'localhost' IDENTIFIED BY PASSWORD '*2BB44B18B6D80C90F07A8932BA668E21C8FB8F0A' WITH GRANT OPTION;

GRANT ALL PRIVILEGES ON `hotel`.* TO 'dbuserrr'@'localhost';

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `customer`
--

INSERT INTO `customer` (`id`, `name`, `surname`, `phone_number`) VALUES
(1, 'James', 'Foo', '+39-12345678'),
(2, 'Bar', 'Johnson', '+47-98438923');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `room_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `price_per_day` decimal(20,2) NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `reservation_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `reservation`
--

INSERT INTO `reservation` (`id`, `room_id`, `customer_id`, `price_per_day`, `date_from`, `date_to`, `reservation_date`) VALUES
(1, 2, 1, '90.00', '2017-04-01', '2017-05-06', '2015-05-24 19:45:37'),
(2, 2, 1, '48.00', '2019-08-27', '2019-08-31', '2015-05-24 19:45:37'),
(3, 1, 2, '105.00', '2017-09-24', '2017-10-06', '2015-06-02 21:21:14'),
(4, 1, 1, '12.00', '2017-07-19', '2017-07-23', '2016-07-07 16:36:03');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `floor` int(11) NOT NULL,
  `room_number` int(11) NOT NULL,
  `has_conditioner` int(1) NOT NULL,
  `has_tv` int(1) NOT NULL,
  `has_phone` int(1) NOT NULL,
  `available_from` date NOT NULL,
  `price_per_day` decimal(20,2) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `room`
--

INSERT INTO `room` (`id`, `floor`, `room_number`, `has_conditioner`, `has_tv`, `has_phone`, `available_from`, `price_per_day`, `description`) VALUES
(1, 1, 1, 1, 1, 1, '2017-07-04', '12.00', 'Good'),
(2, 2, 202, 0, 1, 0, '2017-07-11', '18.00', 'GoodVery'),
(3, 12, 12, 1, 1, 1, '2017-12-04', '12.00', '1221'),
(4, 12, 12, 1, 1, 1, '2017-12-04', '12.00', '12'),
(5, 15, 12, 1, 1, 1, '2017-12-04', '12.00', '12');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `rooms`
--

CREATE TABLE `rooms` (
  `ROOMNUM` int(4) DEFAULT NULL,
  `ROOMTYPE` varchar(40) DEFAULT NULL,
  `BEDSNUM` int(2) DEFAULT NULL,
  `BOOKED` tinyint(1) DEFAULT NULL,
  `CHECKIN` date DEFAULT NULL,
  `CHECKOUT` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `rooms`
--

INSERT INTO `rooms` (`ROOMNUM`, `ROOMTYPE`, `BEDSNUM`, `BOOKED`, `CHECKIN`, `CHECKOUT`) VALUES
(1, 'TYPICAL', 2, 1, '2012-05-28', '2012-06-02'),
(2, 'TYPICAL', 2, 1, '2012-06-05', '2012-06-07'),
(3, 'TYPICAL', 3, 1, '2012-07-24', '2012-07-25'),
(4, 'TYPICAL', 3, 1, '2012-07-24', '2012-07-27'),
(5, 'TYPICAL', 4, 1, '2012-06-25', '2012-07-05'),
(6, 'TYPICAL', 4, 1, '2012-06-10', '2012-06-20'),
(7, 'TYPICAL', 2, 0, '0000-00-00', '0000-00-00'),
(8, 'TYPICAL', 2, 0, '0000-00-00', '0000-00-00'),
(9, 'TYPICAL', 3, 0, '0000-00-00', '0000-00-00'),
(10, 'TYPICAL', 3, 0, '0000-00-00', '0000-00-00'),
(11, 'TYPICAL', 4, 0, '0000-00-00', '0000-00-00'),
(12, 'TYPICAL', 4, 0, '0000-00-00', '0000-00-00'),
(14, 'SUITE', 4, 0, '0000-00-00', '0000-00-00'),
(15, 'SUITE', 4, 0, '0000-00-00', '0000-00-00'),
(16, 'SUITE', 2, 0, '0000-00-00', '0000-00-00'),
(17, 'SUITE', 3, 0, '0000-00-00', '0000-00-00'),
(18, 'SUITE', 2, 1, '2012-06-09', '2012-06-18'),
(13, 'SUITE', 2, 0, '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `access_token` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Άδειασμα δεδομένων του πίνακα `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `access_token`) VALUES
(1, 'foo', '', '$2a$12$hL0rmIMjxhLqI.xr7jD1FugNWEgZNh62HuJj5.y34XBUfBWB4cppW', NULL);

--
-- Ευρετήρια για άχρηστους πίνακες
--

--
-- Ευρετήρια για πίνακα `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room_id` (`room_id`),
  ADD KEY `room_id_2` (`room_id`),
  ADD KEY `room_id_3` (`room_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `room_id_4` (`room_id`),
  ADD KEY `room_id_5` (`room_id`),
  ADD KEY `room_id_6` (`room_id`),
  ADD KEY `room_id_7` (`room_id`),
  ADD KEY `customer_id_2` (`customer_id`);

--
-- Ευρετήρια για πίνακα `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Ευρετήρια για πίνακα `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT για άχρηστους πίνακες
--

--
-- AUTO_INCREMENT για πίνακα `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT για πίνακα `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT για πίνακα `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT για πίνακα `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
