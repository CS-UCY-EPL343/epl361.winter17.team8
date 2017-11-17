-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Φιλοξενητής: 127.0.0.1:3306
-- Χρόνος δημιουργίας: 17 Νοε 2017 στις 09:19:09
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
-- Δομή πίνακα για τον πίνακα `student_table`
--

DROP TABLE IF EXISTS `student_table`;
CREATE TABLE IF NOT EXISTS `student_table` (
  `student_username` varchar(30) NOT NULL,
  `student_password` varchar(30) NOT NULL,
  `student_name` varchar(20) NOT NULL,
  `student_surname` varchar(25) NOT NULL,
  `student_birthday` date NOT NULL,
  `student_address` varchar(50) NOT NULL,
  `student_email` varchar(40) NOT NULL,
  `student_telephone` int(4) NOT NULL,
  PRIMARY KEY (`student_username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Άδειασμα δεδομένων του πίνακα `student_table`
--

INSERT INTO `student_table` (`student_username`, `student_password`, `student_name`, `student_surname`, `student_birthday`, `student_address`, `student_email`, `student_telephone`) VALUES
('maria11', '123a', 'maria', 'nicolaou', '1997-02-11', 'makariou50', 'maria11@cs.ucy.ac.cy', 999123),
('melina01', '3456!', 'melina', 'sk', '1994-08-03', 'makariou20', 'mel@cs.ucy.ac.cy', 999345);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
