-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 17 Νοε 2017 στις 09:14:05
-- Έκδοση διακομιστή: 5.7.19
-- Έκδοση PHP: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Βάση δεδομένων: `team8_epl361`
--

-- --------------------------------------------------------

--
-- Δομή πίνακα για τον πίνακα `costume_table`
--

DROP TABLE IF EXISTS `costume_table`;
CREATE TABLE IF NOT EXISTS `costume_table` (
  `costume_id` int(4) NOT NULL,
  `costume_name` varchar(25) NOT NULL,
  `costume_size` char(1) NOT NULL,
  `costume_colour` varchar(15) NOT NULL,
  PRIMARY KEY (`costume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `costume_table`
--

INSERT INTO `costume_table` (`costume_id`, `costume_name`, `costume_size`, `costume_colour`) VALUES
(1, 'bellydance_costume', 'M', 'pink'),
(2, 'hip-hop_costume', 'S', 'black');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
