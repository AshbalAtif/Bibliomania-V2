-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2024 at 07:26 PM
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
-- Database: `bibliomania-db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_table`
--

CREATE TABLE `admin_table` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DatePromoted` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_table`
--

INSERT INTO `admin_table` (`id`, `Username`, `Name`, `Age`, `Gender`, `DatePromoted`, `createdAt`, `updatedAt`) VALUES
(1, 'AshbalAtif', 'Ashbal Atif', 20, 'Male', '2024-04-01', '2024-05-21 19:13:20', '2024-05-21 19:13:20'),
(2, 'HusseinTheAhmad', 'Hussein Ahmad', 20, 'Male', '2024-04-01', '2024-05-21 19:14:09', '2024-05-21 19:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `book_table`
--

CREATE TABLE `book_table` (
  `id` int(11) NOT NULL,
  `Title` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `Author` varchar(255) DEFAULT NULL,
  `YearPublished` int(11) DEFAULT NULL,
  `Publisher` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_table`
--

INSERT INTO `book_table` (`id`, `Title`, `ISBN`, `Author`, `YearPublished`, `Publisher`, `createdAt`, `updatedAt`) VALUES
(1, 'The Great Gatsby', '978-3-16-148410-0', 'F. Scott Fitzgerald', 1925, 'Scribner', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(2, '1984', '978-0-452-28423-4', 'George Orwell', 1949, 'Signet Classic', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(3, 'To Kill a Mockingbird', '978-0-06-112008-4', 'Harper Lee', 1960, 'J.B. Lippincott & Co.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(4, 'Pride and Prejudice', '978-0-19-953556-9', 'Jane Austen', 1813, 'T. Egerton', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(5, 'The Catcher in the Rye', '978-0-316-76948-0', 'J.D. Salinger', 1951, 'Little, Brown and Company', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(6, 'The Hobbit', '978-0-618-00221-3', 'J.R.R. Tolkien', 1937, 'George Allen & Unwin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(7, 'Fahrenheit 451', '978-1-4516-7331-9', 'Ray Bradbury', 1953, 'Ballantine Books', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(8, 'Moby-Dick', '978-0-14-243724-7', 'Herman Melville', 1851, 'Harper & Brothers', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(9, 'War and Peace', '978-0-14-044793-4', 'Leo Tolstoy', 1869, 'The Russian Messenger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(10, 'The Odyssey', '978-0-14-026886-7', 'Homer', -800, 'Penguin Classics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(11, 'Brave New World', '978-0-06-085052-4', 'Aldous Huxley', 1932, 'Chatto & Windus', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(12, 'The Catch-22', '978-0-684-83339-9', 'Joseph Heller', 1961, 'Simon & Schuster', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(13, 'Jane Eyre', '978-0-14-144114-6', 'Charlotte Brontë', 1847, 'Smith, Elder & Co.', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(14, 'Crime and Punishment', '978-0-14-044913-6', 'Fyodor Dostoevsky', 1866, 'The Russian Messenger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(15, 'Wuthering Heights', '978-0-14-143955-6', 'Emily Brontë', 1847, 'Thomas Cautley Newby', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(16, 'The Brothers Karamazov', '978-0-14-044924-2', 'Fyodor Dostoevsky', 1880, 'The Russian Messenger', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(17, 'The Lord of the Rings', '978-0-618-12902-6', 'J.R.R. Tolkien', 1954, 'George Allen & Unwin', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(18, 'Don Quixote', '978-0-06-093434-7', 'Miguel de Cervantes', 1605, 'Francisco de Robles', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(19, 'Ulysses', '978-0-679-72276-9', 'James Joyce', 1922, 'Sylvia Beach', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(20, 'One Hundred Years of Solitude', '978-0-06-088328-7', 'Gabriel Garcia Marquez', 1967, 'Harper & Row', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(21, 'Les Misérables', '978-0-14-044430-8', 'Victor Hugo', 1862, 'A. Lacroix, Verboeckhoven & Cie', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(22, 'The Divine Comedy', '978-0-14-243722-3', 'Dante Alighieri', 1320, 'Giovanni Boccaccio', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(23, 'In Search of Lost Time', '978-0-14-243796-4', 'Marcel Proust', 1913, 'Grasset and Gallimard', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(24, 'The Count of Monte Cristo', '978-0-14-044926-6', 'Alexandre Dumas', 1844, 'Penguin Classics', '0000-00-00 00:00:00', '0000-00-00 00:00:00'),
(25, 'Slaughterhouse-Five', '978-0-385-33384-9', 'Kurt Vonnegut', 1969, 'Delacorte Press', '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `borrowedbooks_table`
--

CREATE TABLE `borrowedbooks_table` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `IssuanceDate` date DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrowedbooks_table`
--

INSERT INTO `borrowedbooks_table` (`id`, `Username`, `ISBN`, `IssuanceDate`, `DueDate`, `createdAt`, `updatedAt`) VALUES
(1, 'JohnDoe', '978-1-4516-7331-9', '2024-05-07', '2024-05-14', '2024-05-21 19:05:47', '2024-05-21 19:05:47'),
(2, 'JohnDoe', '978-0-452-28423-4', '2024-05-08', '2024-05-15', '2024-05-21 19:06:19', '2024-05-21 19:06:19'),
(3, 'JaneDoe', '978-0-618-12902-6', '2024-05-15', '2024-05-22', '2024-05-21 19:06:52', '2024-05-21 19:06:52');

-- --------------------------------------------------------

--
-- Table structure for table `borrower_table`
--

CREATE TABLE `borrower_table` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `DateOfMembership` date DEFAULT NULL,
  `Preferences` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `borrower_table`
--

INSERT INTO `borrower_table` (`id`, `Username`, `Name`, `Age`, `Gender`, `Email`, `DateOfMembership`, `Preferences`, `createdAt`, `updatedAt`) VALUES
(1, 'JohnDoe', 'John Doe', 21, 'Male', 'johndoe@gmail.com', '2024-05-01', 'Dystopia', '2024-05-21 19:04:02', '2024-05-21 19:04:02'),
(2, 'JaneDoe', 'Jane Doe', 21, 'Female', 'janedoe@gmail.com', '2024-04-30', 'Fantasy', '2024-05-21 19:04:43', '2024-05-21 19:04:43');

-- --------------------------------------------------------

--
-- Table structure for table `copy_table`
--

CREATE TABLE `copy_table` (
  `id` int(11) NOT NULL,
  `ISBN` varchar(255) DEFAULT NULL,
  `DiffId` varchar(255) DEFAULT NULL,
  `LibBranchId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `copy_table`
--

INSERT INTO `copy_table` (`id`, `ISBN`, `DiffId`, `LibBranchId`, `createdAt`, `updatedAt`) VALUES
(1, '978-0-618-12902-6', '4', 'PK-100', '2024-05-21 19:08:56', '2024-05-21 19:08:56'),
(2, '978-0-452-28423-4', '5', 'PK-124', '2024-05-21 19:09:27', '2024-05-21 19:09:27'),
(3, '978-1-4516-7331-9', '3', 'BR-123', '2024-05-21 19:10:23', '2024-05-21 19:10:23');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Name` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `DateJoined` date DEFAULT NULL,
  `LibBranchId` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `Username`, `Name`, `Age`, `Gender`, `DateJoined`, `LibBranchId`, `createdAt`, `updatedAt`) VALUES
(1, 'IdrisKemal', 'Idris Kemal', 18, 'Male', '2024-03-01', 'PK-100', '2024-05-21 19:18:21', '2024-05-21 19:18:21'),
(2, 'MohidAhmed', 'Mohid Ahmed', 19, 'Male', '2024-02-15', 'PK-124', '2024-05-21 19:19:09', '2024-05-21 19:19:09');

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` enum('Admin','Employee','Borrower') NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `Username`, `Password`, `Role`, `createdAt`, `updatedAt`) VALUES
(2, 'JohnDoe', 'johndoe123', 'Borrower', '2024-05-21 17:21:45', '2024-05-21 17:21:45'),
(3, 'JaneDoe', 'janedoe123', 'Borrower', '2024-05-21 17:22:00', '2024-05-21 17:22:00'),
(4, 'HusseinTheAhmad', 'hussein123', 'Admin', '2024-05-21 17:22:23', '2024-05-21 17:22:23'),
(5, 'AshbalAtif', 'ashbal123', 'Admin', '2024-05-21 17:22:35', '2024-05-21 17:22:35'),
(6, 'IdrisKemal', 'idris123', 'Employee', '2024-05-21 17:23:12', '2024-05-21 17:23:12'),
(7, 'MohidAhmed', 'mohid123', 'Employee', '2024-05-21 17:25:36', '2024-05-21 17:25:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_table`
--
ALTER TABLE `admin_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `book_table`
--
ALTER TABLE `book_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `borrowedbooks_table`
--
ALTER TABLE `borrowedbooks_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `borrower_table`
--
ALTER TABLE `borrower_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `copy_table`
--
ALTER TABLE `copy_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ISBN` (`ISBN`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`Username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_table`
--
ALTER TABLE `admin_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `book_table`
--
ALTER TABLE `book_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `borrowedbooks_table`
--
ALTER TABLE `borrowedbooks_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `borrower_table`
--
ALTER TABLE `borrower_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `copy_table`
--
ALTER TABLE `copy_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
