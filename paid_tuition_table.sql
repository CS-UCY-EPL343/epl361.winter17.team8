-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 17 Νοε 2017 στις 09:18:57
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
-- Δομή πίνακα για τον πίνακα `paid_tuition_table`
--

DROP TABLE IF EXISTS `paid_tuition_table`;
CREATE TABLE IF NOT EXISTS `paid_tuition_table` (
  `paid_tuition_month` varchar(9) NOT NULL,
  `class_name` varchar(30) NOT NULL,
  `student_username` varchar(30) NOT NULL,
  `class_price` int(4) NOT NULL,
  KEY `class_name` (`class_name`),
  KEY `student_username` (`student_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `paid_tuition_table`
--

INSERT INTO `paid_tuition_table` (`paid_tuition_month`, `class_name`, `student_username`, `class_price`) VALUES
('Januray', 'hip-hop', 'maria11', 50),
('January', 'hip-hop', 'melina01', 30);

--
-- Περιορισμοί για άχρηστους πίνακες
--

--
-- Περιορισμοί για πίνακα `paid_tuition_table`
--
ALTER TABLE `paid_tuition_table`
  ADD CONSTRAINT `paid_tuition_table_ibfk_1` FOREIGN KEY (`student_username`) REFERENCES `student_table` (`student_username`),
  ADD CONSTRAINT `paid_tuition_table_ibfk_2` FOREIGN KEY (`class_name`) REFERENCES `class_table` (`class_name`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
