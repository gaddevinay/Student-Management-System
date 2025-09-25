-- --------------------------------------------------------
-- Database: `srms`
-- --------------------------------------------------------
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

-- --------------------------------------------------------
-- Table structure for table `admin`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `admin` (`UserName`, `Password`, `updationDate`) VALUES
('admin', 'f925916e2754e5e03f75dd58a5733251', '2024-03-10 10:30:57');

-- --------------------------------------------------------
-- Table structure for table `tblclasses`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblclasses`;
CREATE TABLE `tblclasses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassName` varchar(80) DEFAULT NULL,
  `ClassNameNumeric` int(4) DEFAULT NULL,
  `Section` varchar(5) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblclasses` (`ClassName`, `ClassNameNumeric`, `Section`, `CreationDate`, `UpdationDate`) VALUES
('First', 1, 'C', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Second', 2, 'A', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Fourth', 4, 'C', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Sixth', 6, 'A', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Sixth', 6, 'B', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Seventh', 7, 'B', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Eight', 8, 'A', '2024-04-25 10:30:57', '2022-01-01 10:30:57'),
('Tenth', 10, 'A', '2024-04-25 10:30:57', NULL);

-- --------------------------------------------------------
-- Table structure for table `tblnotice`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblnotice`;
CREATE TABLE `tblnotice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `noticeTitle` varchar(255) DEFAULT NULL,
  `noticeDetails` mediumtext DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

INSERT INTO `tblnotice` (`noticeTitle`, `noticeDetails`, `postingDate`) VALUES
('Notice regarding result Delearation', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit...', '2024-05-01 14:34:58'),
('Test Notice', 'This is for testing purposes only.', '2024-05-02 14:48:32');

-- --------------------------------------------------------
-- Table structure for table `tblsubjects`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblsubjects`;
CREATE TABLE `tblsubjects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `SubjectName` varchar(100) NOT NULL,
  `SubjectCode` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblsubjects` (`SubjectName`, `SubjectCode`, `Creationdate`, `UpdationDate`) VALUES
('Maths', 'MTH01', '2024-04-25 10:30:57', NULL),
('English', 'ENG11', '2024-04-25 10:30:57', NULL),
('Science', 'SC1', '2024-04-25 10:30:57', NULL),
('Music', 'MS', '2024-04-25 10:30:57', NULL),
('Social Studies', 'SS08', '2024-04-25 10:30:57', NULL),
('Physics', 'PH03', '2024-04-25 10:30:57', NULL),
('Chemistry', 'CH65', '2024-04-25 10:30:57', NULL);

-- --------------------------------------------------------
-- Table structure for table `tblstudents`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblstudents`;
CREATE TABLE `tblstudents` (
  `StudentId` int(11) NOT NULL AUTO_INCREMENT,
  `StudentName` varchar(100) DEFAULT NULL,
  `RollId` varchar(100) DEFAULT NULL,
  `StudentEmail` varchar(100) DEFAULT NULL,
  `Gender` varchar(10) DEFAULT NULL,
  `DOB` varchar(100) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `Password` varchar(100) DEFAULT '12345',
  PRIMARY KEY (`StudentId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblstudents` (`StudentName`, `RollId`, `StudentEmail`, `Gender`, `DOB`, `ClassId`, `RegDate`, `Status`, `Password`) VALUES
('Sarita', '46456', 'info@phpgurukul.com', 'Female', '1995-03-03', 1, '2024-04-20 10:30:57', 1, '12345'),
('Anuj kumar', '10861', 'anuj@gmail.co', 'Male', '1995-02-02', 4, '2024-04-24 10:30:57', 0, '12345'),
('amit kumar', '2626', 'amit@gmail.com', 'Male', '2014-08-06', 6, '2024-04-22 10:30:57', 1, '12345'),
('rahul kumar', '990', 'rahul01@gmail.com', 'Male', '2001-02-03', 7, '2024-04-24 10:30:57', 1, '12345'),
('sanjeev singh', '122', 'sanjeev01@gmail.com', 'Male', '2002-02-03', 8, '2024-04-25 10:30:57', 1, '12345'),
('Shiv Gupta', '12345', 'shiv34534@gmail.com', 'Male', '2007-01-12', 9, '2024-05-01 15:19:40', 1, '12345');

-- --------------------------------------------------------
-- Table structure for table `tblresult`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblresult`;
CREATE TABLE `tblresult` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) DEFAULT NULL,
  `ClassId` int(11) DEFAULT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `marks` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblresult` (`StudentId`, `ClassId`, `Semester`, `SubjectId`, `marks`, `PostingDate`) VALUES
(1, 1, '1-1', 1, 80, '2024-05-10 10:30:57'),
(1, 1, '1-1', 2, 100, '2024-05-10 10:30:57'),
(1, 1, '1-1', 5, 78, '2024-05-10 10:30:57'),
(1, 1, '1-2', 1, 85, '2024-11-10 10:30:57'),
(1, 1, '1-2', 2, 95, '2024-11-10 10:30:57'),
(1, 1, '1-2', 5, 88, '2024-11-10 10:30:57');

-- --------------------------------------------------------
-- Table structure for table `tblsubjectcombination`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblsubjectcombination`;
CREATE TABLE `tblsubjectcombination` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ClassId` int(11) DEFAULT NULL,
  `SubjectId` int(11) DEFAULT NULL,
  `status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `Updationdate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------
-- Table structure for table `tblfees` (flexible fee structure)
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblfees`;
CREATE TABLE `tblfees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `Semester` varchar(10) DEFAULT NULL,
  `UniversityFee` decimal(10,2) DEFAULT NULL,
  `CollegeFee` decimal(10,2) DEFAULT NULL,
  `BusFee` decimal(10,2) DEFAULT NULL,
  `TotalFee` decimal(10,2) GENERATED ALWAYS AS (
      COALESCE(UniversityFee,0) + COALESCE(CollegeFee,0) + COALESCE(BusFee,0)
  ) STORED,
  `PaidAmount` decimal(10,2) DEFAULT 0,
  `PaymentDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- Example inserts
INSERT INTO `tblfees` (StudentId, Semester, UniversityFee, CollegeFee, BusFee, PaidAmount) VALUES
(1, '1-1', 10000, NULL, NULL, 5000),
(1, '1-2', NULL, 12000, 3000, 15000),
(2, '1-1', 20000, 20000, NULL, 40000),
(2, '1-2', NULL, NULL, 5000, 5000),
(3, '1-1', 12000, 15000, 3000, 10000);

-- --------------------------------------------------------
-- Table structure for table `tblattendance`
-- --------------------------------------------------------
DROP TABLE IF EXISTS `tblattendance`;
CREATE TABLE `tblattendance` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `StudentId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Status` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

INSERT INTO `tblattendance` (StudentId, Date, Status) VALUES
(1, '2025-08-01', 'Present'),
(1, '2025-08-02', 'Absent'),
(1, '2025-08-03', 'Present');

COMMIT;
