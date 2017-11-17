-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 17 Νοε 2017 στις 09:19:02
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
-- Δομή πίνακα για τον πίνακα `selected_classes_table`
--

DROP TABLE IF EXISTS `selected_classes_table`;
CREATE TABLE IF NOT EXISTS `selected_classes_table` (
  `student_username` varchar(30) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `class_time` time(3) NOT NULL,
  `class_day` varchar(9) NOT NULL,
  `price` int(4) NOT NULL,
  KEY `student_username` (`student_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `selected_classes_table`
--

INSERT INTO `selected_classes_table` (`student_username`, `class_name`, `class_time`, `class_day`, `price`) VALUES
('maria11', 'hip-hop', '12:00:00.000', 'monday', 50),
('melina01', 'bellydance', '13:00:00.000', 'tuesday', 30);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `selected_classes_table`
--
ALTER TABLE `selected_classes_table`
  ADD CONSTRAINT `selected_classes_table_ibfk_1` FOREIGN KEY (`student_username`) REFERENCES `student_table` (`student_username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
