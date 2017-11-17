-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 17 Νοε 2017 στις 09:11:57
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
-- Δομή πίνακα για τον πίνακα `borrowed_costume`
--

DROP TABLE IF EXISTS `borrowed_costume`;
CREATE TABLE IF NOT EXISTS `borrowed_costume` (
  `student_username` varchar(30) NOT NULL,
  `costume_id` int(4) NOT NULL,
  `borrowed_date_of_borrowing` date NOT NULL,
  `borrowed_date_of_return` date NOT NULL,
  KEY `student_username` (`student_username`),
  KEY `student_username_2` (`student_username`),
  KEY `costume_id` (`costume_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `borrowed_costume`
--

INSERT INTO `borrowed_costume` (`student_username`, `costume_id`, `borrowed_date_of_borrowing`, `borrowed_date_of_return`) VALUES
('melina01', 1, '2017-11-14', '2017-11-21'),
('maria11', 2, '2017-11-14', '2017-11-16');

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `borrowed_costume`
--
ALTER TABLE `borrowed_costume`
  ADD CONSTRAINT `borrowed_costume_ibfk_1` FOREIGN KEY (`student_username`) REFERENCES `student_table` (`student_username`),
  ADD CONSTRAINT `borrowed_costume_ibfk_2` FOREIGN KEY (`costume_id`) REFERENCES `costume_table` (`costume_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
