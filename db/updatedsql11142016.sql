-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2016 at 10:04 AM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lims_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `activity_log_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `date` varchar(100) NOT NULL,
  `action` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`activity_log_id`, `username`, `date`, `action`) VALUES
(1, 'admin', '2016-07-15 23:37:28', 'Add School Year 2016-2017'),
(2, 'admin', '2016-07-15 23:37:46', 'Add Subject Test'),
(3, 'admin', '2016-07-23 14:50:18', 'Edit Subject CPD111'),
(4, '', '2016-07-23 14:58:01', 'Add Subject CMR111'),
(5, 'admin', '2016-07-24 14:34:33', 'Add Subject PRGLF'),
(6, 'admin', '2016-07-29 20:36:48', 'Edit User adm1001'),
(7, 'adm1001', '2016-08-15 13:56:13', 'Edit User adm1001'),
(8, '', '2016-11-14 13:37:12', 'Add User adm1001');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `answer_id` int(11) NOT NULL,
  `quiz_question_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `choices` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`answer_id`, `quiz_question_id`, `answer_text`, `choices`) VALUES
(1, 1, 'asd', 'A'),
(2, 1, 'a', 'B'),
(3, 1, 'a', 'C'),
(4, 1, 'a', 'D'),
(5, 2, 'Input', 'A'),
(6, 2, 'Output', 'B'),
(7, 2, 'None', 'C'),
(8, 2, 'All of the above.', 'D'),
(9, 3, '27', 'A'),
(10, 3, '10', 'B'),
(11, 3, '1', 'C'),
(12, 3, '0', 'D'),
(13, 4, '3', 'A'),
(14, 4, '6', 'B'),
(15, 4, '5', 'C'),
(16, 4, '2', 'D'),
(17, 5, '2', 'A'),
(18, 5, '3', 'B'),
(19, 5, '1', 'C'),
(20, 5, '5', 'D'),
(21, 6, 'Chua', 'A'),
(22, 6, 'Vergara', 'B'),
(23, 6, 'Andoy', 'C'),
(24, 6, 'Malapitan', 'D'),
(25, 7, '10', 'A'),
(26, 7, '20', 'B'),
(27, 7, '1', 'C'),
(28, 7, '3', 'D'),
(29, 8, '1', 'A'),
(30, 8, '5', 'B'),
(31, 8, '8', 'C'),
(32, 8, '10', 'D'),
(33, 9, '1000', 'A'),
(34, 9, '600', 'B'),
(35, 9, '900', 'C'),
(36, 9, '750', 'D'),
(37, 10, '1', 'A'),
(38, 10, '2', 'B'),
(39, 10, '3', 'C'),
(40, 10, '4', 'D'),
(41, 11, '', 'A'),
(42, 11, '', 'B'),
(43, 11, '', 'C'),
(44, 11, '', 'D'),
(45, 12, '10', 'A'),
(46, 12, '80', 'B'),
(47, 12, '100', 'C'),
(48, 12, '50', 'D'),
(49, 13, 'Yellow Screen', 'A'),
(50, 13, 'Blue Screen', 'B'),
(51, 13, 'Red Screen', 'C'),
(52, 13, 'Green Screen', 'D'),
(53, 14, '<br /><b>Notice</b>:  Undefined variable: a in <b>C:xampphtdocslmsedit_question.php</b> on line <b>8', 'A'),
(54, 14, '<br /><b>Notice</b>:  Undefined variable: b in <b>C:xampphtdocslmsedit_question.php</b> on line <b>8', 'B'),
(55, 14, '<br /><b>Notice</b>:  Undefined variable: c in <b>C:xampphtdocslmsedit_question.php</b> on line <b>9', 'C'),
(56, 14, '<br /><b>Notice</b>:  Undefined variable: d in <b>C:xampphtdocslmsedit_question.php</b> on line <b>9', 'D'),
(57, 8, '', 'A'),
(58, 8, '', 'B'),
(59, 8, '', 'C'),
(60, 8, '', 'D'),
(61, 9, '', 'A'),
(62, 9, '', 'B'),
(63, 9, '', 'C'),
(64, 9, '', 'D');

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(300) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`assignment_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`) VALUES
(1, 'admin/uploads/8518_File_final chap1-3 (1).docx', '2016-02-27 16:59:51', 'wag po', 1, 1, ''),
(2, 'admin/uploads/5804_File_4.docx', '2016-10-24 11:08:01', 'hig', 1, 1, 'hi'),
(4, 'admin/uploads/5145_File_2702_File_Acceptance and Approval.doc', '2016-10-26 13:39:00', 'Accept', 2, 3, 'Acceptance'),
(5, 'admin/uploads/7562_File_OJT Cover Page.docx', '2016-10-27 16:58:07', 'Lecture3', 2, 3, 'Notes');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_log`
--

CREATE TABLE `attendance_log` (
  `attendance_class_id` int(11) NOT NULL,
  `student_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `attendance_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_log`
--

INSERT INTO `attendance_log` (`attendance_class_id`, `student_id`, `firstname`, `lastname`, `attendance_date`) VALUES
(2, '3', 'Joseph', 'Valderong', '2016-07-23 15:08:42'),
(2, '3', 'Joseph', 'Valderong', '2016-07-23 15:24:41'),
(2, '3', 'Joseph', 'Valderong', '2016-07-23 15:29:13'),
(2, '4', 'Kent ', 'Andoy', '2016-07-23 15:58:20'),
(2, '3', 'Joseph', 'Valderong', '2016-07-24 14:39:18'),
(2, '3', 'Joseph', 'Valderong', '2016-07-25 21:37:53'),
(2, '3', 'Joseph', 'Valderong', '2016-07-30 07:26:00'),
(1, '1', 'Mark ', 'Buison', '2016-08-15 16:29:30'),
(2, '3', 'Joseph', 'Valderong', '2016-08-15 16:38:29'),
(2, '3', 'Joseph', 'Valderong', '2016-08-15 16:41:11'),
(1, '1', 'Mark ', 'Buison', '2016-08-15 16:41:25'),
(1, '1', 'Mark ', 'Buison', '2016-08-15 16:45:12'),
(1, '1', 'Mark ', 'Buison', '2016-08-18 13:12:20'),
(1, '1', 'Mark ', 'Buison', '2016-08-18 13:25:35'),
(1, '1', 'Mark ', 'Buison', '2016-08-18 13:38:27'),
(1, '1', 'Mark ', 'Buison', '2016-08-19 11:48:51'),
(1, '1', 'Mark ', 'Buison', '2016-08-19 13:05:26'),
(1, '1', 'Mark ', 'Buison', '2016-08-19 13:05:27'),
(1, '1', 'Mark ', 'Buison', '2016-08-20 10:31:22'),
(1, '1', 'Mark ', 'Buison', '2016-08-20 10:42:01'),
(2, '4', 'Kent ', 'Andoy', '2016-08-27 00:27:52'),
(2, '4', 'Kent ', 'Andoy', '2016-08-27 00:31:29'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 00:33:45'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 06:08:37'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 06:08:38'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 06:08:38'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 06:08:55'),
(2, '3', 'Joseph', 'Valderong', '2016-08-27 06:09:06'),
(2, '4', 'Kent ', 'Andoy', '2016-08-27 06:10:36'),
(1, '1', 'Mark ', 'Buison', '2016-08-27 06:15:57'),
(2, '4', 'Kent ', 'Andoy', '2016-08-27 06:24:13'),
(2, '4', 'Kent ', 'Andoy', '2016-08-27 06:44:39'),
(1, '1', 'Mark ', 'Buison', '2016-09-06 06:25:14'),
(1, '1', 'Mark ', 'Buison', '2016-09-07 09:55:50'),
(2, '3', 'Joseph', 'Valderong', '2016-09-07 09:56:00'),
(1, '1', 'Mark ', 'Buison', '2016-09-07 09:57:59'),
(2, '3', 'Joseph', 'Valderong', '2016-09-08 02:18:46'),
(1, '1', 'Mark ', 'Buison', '2016-09-22 13:09:43'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 13:34:17'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:26:12'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:26:30'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:26:43'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:27:05'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:27:41'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:28:18'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:28:33'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:28:46'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:29:09'),
(2, '3', 'Joseph', 'Valderong', '2016-10-18 14:29:26'),
(2, '4', 'Kent ', 'Andoy', '2016-10-18 14:29:51'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:30:15'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 14:30:25'),
(2, '3', 'Joseph', 'Valderong', '2016-10-18 14:30:36'),
(2, '4', 'Kent ', 'Andoy', '2016-10-18 14:32:03'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 15:39:59'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 18:08:43'),
(2, '3', 'Joseph', 'Valderong', '2016-10-18 18:51:43'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:22:35'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:27:08'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:35:42'),
(2, '3', 'Joseph', 'Valderong', '2016-10-18 19:42:37'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:45:18'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:46:24'),
(1, '1', 'Mark ', 'Buison', '2016-10-18 19:46:53'),
(2, '4', 'Kent ', 'Andoy', '2016-10-18 19:47:02'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:33:57'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:38:04'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:39:38'),
(2, '3', 'Joseph', 'Valderong', '2016-10-19 10:39:47'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:42:04'),
(2, '3', 'Joseph', 'Valderong', '2016-10-19 10:42:14'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:53:35'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:53:49'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:53:57'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:54:03'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:54:42'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:54:45'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:54:50'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 10:55:06'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 11:00:08'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 11:00:22'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 11:04:52'),
(2, '3', 'Joseph', 'Valderong', '2016-10-19 11:05:08'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 11:12:37'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 11:21:09'),
(1, '1', 'Mark ', 'Buison', '2016-10-19 14:40:42'),
(2, '4', 'Kent ', 'Andoy', '2016-10-19 14:46:27'),
(1, '1', 'Mark ', 'Buison', '2016-10-20 11:02:06'),
(1, '1', 'Mark ', 'Buison', '2016-10-20 22:19:08'),
(1, '1', 'Mark ', 'Buison', '2016-10-24 09:26:07'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 10:56:57'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 10:58:16'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 13:39:08'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 14:15:25'),
(2, '4', 'Kent ', 'Andoy', '2016-10-26 16:20:01'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 16:20:12'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 16:20:38'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 19:02:30'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 19:07:15'),
(2, '4', 'Kent ', 'Andoy', '2016-10-26 19:41:18'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 19:43:49'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 19:44:46'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 22:43:28'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 22:50:15'),
(1, '1', 'Mark ', 'Buison', '2016-10-26 22:54:37'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 08:52:27'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 09:26:54'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 16:23:19'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 16:23:19'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 16:23:19'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 16:40:40'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 16:59:06'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 17:07:05'),
(1, '1', 'Mark ', 'Buison', '2016-10-27 17:51:44'),
(1, '1', 'Mark ', 'Buison', '2016-11-14 16:54:54'),
(1, '1', 'Mark ', 'Buison', '2016-11-14 17:02:47');

-- --------------------------------------------------------

--
-- Table structure for table `attendance_student`
--

CREATE TABLE `attendance_student` (
  `attendance_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `firstname` varchar(30) NOT NULL,
  `lastname` varchar(30) NOT NULL,
  `attendance_name` date NOT NULL,
  `attendance_date` int(11) NOT NULL,
  `status` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`class_id`, `class_name`) VALUES
(1, 'IT4TH-4G'),
(2, 'IT4TH-2G'),
(3, 'IT2ND-1A'),
(4, 'IT2ND-1B'),
(5, 'IT2ND-1C'),
(6, 'CS2ND-1A'),
(7, 'CS2ND-1B'),
(8, 'CS2ND-1C');

-- --------------------------------------------------------

--
-- Table structure for table `class_quiz`
--

CREATE TABLE `class_quiz` (
  `class_quiz_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `quiz_time` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `class_subject_overview`
--

CREATE TABLE `class_subject_overview` (
  `class_subject_overview_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `content` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_subject_overview`
--

INSERT INTO `class_subject_overview` (`class_subject_overview_id`, `teacher_class_id`, `content`) VALUES
(1, 2, '<p>Programming</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `content`
--

CREATE TABLE `content` (
  `content_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(100) NOT NULL,
  `dean` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`department_id`, `department_name`, `dean`) VALUES
(1, 'IT Department', 'Alexander Pineda');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `event_id` int(11) NOT NULL,
  `event_title` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date_start` varchar(100) NOT NULL,
  `date_end` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(500) NOT NULL,
  `fdatein` varchar(200) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `uploaded_by` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `floc`, `fdatein`, `fdesc`, `teacher_id`, `class_id`, `fname`, `uploaded_by`) VALUES
(15, 'admin/uploads/4103_File_5275_File_Property Transfer Report Template.docx', '2016-10-26 16:19:21', 'Notes ito', 2, 2, 'Notes', 'JaimeRivera'),
(16, 'admin/uploads/3927_File_4103_File_5275_File_Property Transfer Report Template.docx', '2016-10-26 19:44:37', 'lecture', 2, 3, 'notes', 'JaimeRivera'),
(17, 'admin/uploads/1829_File_important .docx', '2016-10-27 16:58:29', 'please read', 2, 2, 'Notes', 'JaimeRivera');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(50) NOT NULL,
  `sender_name` varchar(200) NOT NULL,
  `message_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`message_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`, `message_status`) VALUES
(1, 1, 'Hi', '2016-10-26 10:56:22', 2, 'Mark  Buison', 'Jaime Rivera', ''),
(2, 1, 'Hi', '2016-10-26 10:56:23', 2, 'Mark  Buison', 'Jaime Rivera', ''),
(3, 1, 'San ka', '2016-10-26 10:56:43', 2, 'Mark  Buison', 'Jaime Rivera', ''),
(4, 2, 'Hi', '2016-10-26 19:02:12', 1, 'Jaime Rivera', 'Rose Liwayway', '');

-- --------------------------------------------------------

--
-- Table structure for table `message_sent`
--

CREATE TABLE `message_sent` (
  `message_sent_id` int(11) NOT NULL,
  `reciever_id` int(11) NOT NULL,
  `content` varchar(200) NOT NULL,
  `date_sended` varchar(100) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `reciever_name` varchar(100) NOT NULL,
  `sender_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `message_sent`
--

INSERT INTO `message_sent` (`message_sent_id`, `reciever_id`, `content`, `date_sended`, `sender_id`, `reciever_name`, `sender_name`) VALUES
(1, 1, 'Hi', '2016-10-26 10:56:22', 2, 'Mark  Buison', 'Jaime Rivera'),
(2, 1, 'Hi', '2016-10-26 10:56:23', 2, 'Mark  Buison', 'Jaime Rivera'),
(3, 1, 'San ka', '2016-10-26 10:56:44', 2, 'Mark  Buison', 'Jaime Rivera'),
(4, 2, 'Hi', '2016-10-26 19:02:12', 1, 'Jaime Rivera', 'Rose Liwayway');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(50) NOT NULL,
  `link` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `teacher_class_id`, `notification`, `date_of_notification`, `link`) VALUES
(1, 2, 'Add Seatwork file name <b>hI </b>', '2016-09-07 09:55:40', 'seatwork_student.php'),
(2, 2, 'Add Seatwork file name <b>hi</b>', '2016-10-20 22:11:28', 'seatwork_student.php'),
(3, 2, 'Add Seatwork file name <b>Gawain Upuan</b>', '2016-10-24 09:25:29', 'seatwork_student.php'),
(4, 3, 'Add Seatwork file name <b>Gawain Upuan</b>', '2016-10-24 09:25:29', 'seatwork_student.php'),
(5, 2, 'Add Seatwork file name <b>Acceptance</b>', '2016-10-26 13:38:59', 'seatwork_student.php'),
(6, 3, 'Add Seatwork file name <b>Acceptance</b>', '2016-10-26 13:39:00', 'seatwork_student.php'),
(7, 2, 'Add Downloadable Materials file name <b>Notes</b>', '2016-10-26 16:19:21', 'downloadable_student.php'),
(8, 0, 'Add Downloadable Materials file name <b>notes</b>', '2016-10-26 19:44:37', 'downloadable_student.php'),
(9, 3, 'Add Seatwork file name <b>Notes</b>', '2016-10-27 16:58:07', 'seatwork_student.php'),
(10, 2, 'Add Downloadable Materials file name <b>Notes</b>', '2016-10-27 16:58:29', 'downloadable_student.php');

-- --------------------------------------------------------

--
-- Table structure for table `notification_read`
--

CREATE TABLE `notification_read` (
  `notification_read_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_read` varchar(50) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `notification_read_teacher`
--

CREATE TABLE `notification_read_teacher` (
  `notification_read_teacher_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_read` varchar(100) NOT NULL,
  `notification_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `question_type`
--

CREATE TABLE `question_type` (
  `question_type_id` int(11) NOT NULL,
  `question_type` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `question_type`
--

INSERT INTO `question_type` (`question_type_id`, `question_type`) VALUES
(1, 'Multiple Choice'),
(2, 'True or False');

-- --------------------------------------------------------

--
-- Table structure for table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_title` varchar(50) NOT NULL,
  `quiz_description` varchar(100) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_title`, `quiz_description`, `date_added`, `teacher_id`) VALUES
(1, 'quiz1', '1', '2016-10-27 17:44:33', 2);

-- --------------------------------------------------------

--
-- Table structure for table `quiz_question`
--

CREATE TABLE `quiz_question` (
  `quiz_question_id` int(11) NOT NULL,
  `quiz_id` int(11) NOT NULL,
  `question_text` varchar(100) NOT NULL,
  `question_type_id` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `date_added` varchar(100) NOT NULL,
  `answer` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `quiz_question`
--

INSERT INTO `quiz_question` (`quiz_question_id`, `quiz_id`, `question_text`, `question_type_id`, `points`, `date_added`, `answer`) VALUES
(3, 1, '<p>Mahirap ba ang thesis</p>\r\n', 2, 0, '2016-10-27 17:45:35', 'True'),
(4, 1, '<p>Wala ba system ang dcss?</p>\r\n', 2, 0, '2016-10-27 18:15:52', 'True');

-- --------------------------------------------------------

--
-- Table structure for table `school_year`
--

CREATE TABLE `school_year` (
  `school_year_id` int(11) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_year`
--

INSERT INTO `school_year` (`school_year_id`, `school_year`) VALUES
(1, '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `session_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `login_time` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `student_id` int(11) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `class_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`student_id`, `firstname`, `lastname`, `class_id`, `username`, `password`, `location`, `status`) VALUES
(1, 'Mark ', 'Buison', 1, 'stud1001', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(3, 'Joseph', 'Valderong', 2, 'stud1002', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(4, 'Kent ', 'Andoy', 2, 'stud1003', 'test', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Registered'),
(5, 'Felipe', 'Cruz', 2, 'stud1005', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(6, 'eduard', 'malayan', 5, 'stud1006', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered'),
(7, 'Jeff', 'Reyes', 0, 'stud1007', '', 'uploads/NO-IMAGE-AVAILABLE.jpg', 'Unregistered');

-- --------------------------------------------------------

--
-- Table structure for table `student_assignment`
--

CREATE TABLE `student_assignment` (
  `student_assignment_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `assignment_fdatein` varchar(50) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `student_id` int(11) NOT NULL,
  `grade` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student_assignment`
--

INSERT INTO `student_assignment` (`student_assignment_id`, `assignment_id`, `floc`, `assignment_fdatein`, `fdesc`, `fname`, `student_id`, `grade`) VALUES
(1, 1, 'admin/uploads/6199_File_chapter-1-3.docx', '2016-02-27 17:06:58', 'wakokokoko', 'wakoko', 1, '75');

-- --------------------------------------------------------

--
-- Table structure for table `student_backpack`
--

CREATE TABLE `student_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student_class_quiz`
--

CREATE TABLE `student_class_quiz` (
  `student_class_quiz_id` int(11) NOT NULL,
  `class_quiz_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_quiz_time` varchar(100) NOT NULL,
  `grade` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `subject_id` int(11) NOT NULL,
  `subject_code` varchar(100) NOT NULL,
  `subject_title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `unit` int(11) NOT NULL,
  `Pre_req` varchar(100) NOT NULL,
  `semester` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`subject_id`, `subject_code`, `subject_title`, `category`, `description`, `unit`, `Pre_req`, `semester`) VALUES
(1, 'CPD111', 'Deployment', '', '<p>Deployment</p>\r\n', 3, '', '1st'),
(2, 'CMR111', 'Documentation', '', '<p>Research and Documentation</p>\r\n', 3, '', '1st'),
(3, 'PRGLF', 'Programming', '', '<p>Programming</p>\r\n', 3, '', '1st');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `teacher_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(200) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `department_id` int(11) NOT NULL,
  `location` varchar(200) NOT NULL,
  `about` varchar(500) NOT NULL,
  `teacher_status` varchar(20) NOT NULL,
  `teacher_stat` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`teacher_id`, `username`, `password`, `firstname`, `lastname`, `department_id`, `location`, `about`, `teacher_status`, `teacher_stat`) VALUES
(1, 'teacher1002', 'test', 'Rose', 'Liwayway', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(2, 'teacher1001', 'test', 'Jaime', 'Rivera', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(4, 'teacher1003', 'test', 'Jovy', 'Afable', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', 'Registered', ''),
(5, 'teacher1004', 'test', 'Mark', 'Mark', 0, 'uploads/NO-IMAGE-AVAILABLE.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_backpack`
--

CREATE TABLE `teacher_backpack` (
  `file_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class`
--

CREATE TABLE `teacher_class` (
  `teacher_class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `thumbnails` varchar(100) NOT NULL,
  `school_year` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class`
--

INSERT INTO `teacher_class` (`teacher_class_id`, `teacher_id`, `class_id`, `subject_id`, `thumbnails`, `school_year`) VALUES
(1, 1, 1, 1, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(2, 2, 2, 2, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(3, 2, 1, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(4, 0, 0, 0, 'admin/uploads/thumbnails.jpg', ''),
(5, 0, 0, 0, 'admin/uploads/thumbnails.jpg', 'N/A'),
(6, 0, 0, 0, 'admin/uploads/thumbnails.jpg', 'N/A'),
(7, 0, 0, 0, 'admin/uploads/thumbnails.jpg', 'N/A'),
(8, 0, 0, 0, 'admin/uploads/thumbnails.jpg', 'N/A'),
(9, 0, 0, 0, 'admin/uploads/thumbnails.jpg', 'syid'),
(10, 0, 4, 1, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(11, 0, 3, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(12, 0, 1, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(13, 0, 2, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(14, 0, 4, 2, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(15, 0, 7, 1, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(16, 0, 5, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(17, 0, 8, 3, 'admin/uploads/thumbnails.jpg', '2016-2017'),
(18, 0, 5, 1, 'admin/uploads/thumbnails.jpg', '2016-2017');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_announcements`
--

CREATE TABLE `teacher_class_announcements` (
  `teacher_class_announcements_id` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_class_student`
--

CREATE TABLE `teacher_class_student` (
  `teacher_class_student_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_class_student`
--

INSERT INTO `teacher_class_student` (`teacher_class_student_id`, `teacher_class_id`, `student_id`, `teacher_id`) VALUES
(1, 1, 1, 1),
(2, 2, 3, 2),
(3, 2, 4, 2),
(4, 3, 1, 2),
(5, 5, 7, 0),
(6, 6, 7, 0),
(7, 7, 7, 0),
(8, 8, 7, 0),
(9, 9, 7, 0),
(10, 12, 1, 0),
(11, 13, 7, 0),
(12, 14, 7, 0),
(13, 15, 7, 0),
(14, 16, 7, 0),
(15, 17, 7, 0),
(16, 18, 7, 0);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notification`
--

CREATE TABLE `teacher_notification` (
  `teacher_notification_id` int(11) NOT NULL,
  `teacher_class_id` int(11) NOT NULL,
  `notification` varchar(100) NOT NULL,
  `date_of_notification` varchar(100) NOT NULL,
  `link` varchar(100) NOT NULL,
  `student_id` int(11) NOT NULL,
  `assignment_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_shared`
--

CREATE TABLE `teacher_shared` (
  `teacher_shared_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `shared_teacher_id` int(11) NOT NULL,
  `floc` varchar(100) NOT NULL,
  `fdatein` varchar(100) NOT NULL,
  `fdesc` varchar(100) NOT NULL,
  `fname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_shared`
--

INSERT INTO `teacher_shared` (`teacher_shared_id`, `teacher_id`, `shared_teacher_id`, `floc`, `fdatein`, `fdesc`, `fname`) VALUES
(1, 2, 1, 'admin/uploads/2402_File_C_ANDUTAN-Confirmation-Message.docx', '2016-07-29 21:22:01', 'Assignment', 'My answer '),
(2, 2, 1, 'admin/uploads/2402_File_C_ANDUTAN-Confirmation-Message.docx', '2016-07-29 21:26:03', 'Assignment', 'My answer '),
(3, 2, 1, 'admin/uploads/2402_File_C_ANDUTAN-Confirmation-Message.docx', '2016-07-29 21:30:09', 'Assignment', 'My answer '),
(4, 1, 2, 'admin/uploads/4814_File_123.docx', '2016-07-29 21:32:29', 'Docu', 'Docz'),
(5, 2, 6, 'admin/uploads/5681_File_gawin.docx', '2016-07-30 15:12:15', '0', '123'),
(6, 2, 4, 'admin/uploads/4814_File_123.docx', '2016-08-20 10:31:02', 'Docu', 'Docz'),
(7, 2, 1, 'admin/uploads/4814_File_123.docx', '2016-08-20 11:04:23', 'Docu', 'Docz'),
(8, 2, 1, 'admin/uploads/4103_File_5275_File_Property Transfer Report Template.docx', '2016-10-26 18:58:57', 'Notes ito', 'Notes'),
(9, 2, 1, 'admin/uploads/4103_File_5275_File_Property Transfer Report Template.docx', '2016-10-26 19:05:44', 'Notes ito', 'Notes');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `firstname`, `lastname`) VALUES
(1, 'adm1001', 'admin', 'Jeffrey', 'Andutan');

-- --------------------------------------------------------

--
-- Table structure for table `user_log`
--

CREATE TABLE `user_log` (
  `user_log_id` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `login_date` varchar(30) NOT NULL,
  `logout_date` varchar(30) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_log`
--

INSERT INTO `user_log` (`user_log_id`, `username`, `login_date`, `logout_date`, `user_id`) VALUES
(1, 'admin', '2016-07-15 23:37:05', '2016-11-14 17:01:21', 1),
(2, 'admin', '2016-07-23 14:48:34', '2016-11-14 17:01:21', 1),
(3, 'admin', '2016-07-23 15:01:50', '2016-11-14 17:01:21', 1),
(4, 'admin', '2016-07-23 15:38:35', '2016-11-14 17:01:21', 1),
(5, 'admin', '2016-07-24 14:33:49', '2016-11-14 17:01:21', 1),
(6, 'admin', '2016-07-29 20:35:54', '2016-11-14 17:01:21', 1),
(7, 'adm1001', '2016-07-30 14:40:41', '2016-11-14 17:01:21', 1),
(8, 'adm1001', '2016-07-31 14:24:05', '2016-11-14 17:01:21', 1),
(9, 'adm1001', '2016-08-02 22:40:04', '2016-11-14 17:01:21', 1),
(10, 'adm1001', '2016-08-15 13:55:18', '2016-11-14 17:01:21', 1),
(11, 'adm1001', '2016-08-15 13:57:35', '2016-11-14 17:01:21', 1),
(12, 'adm1001', '2016-08-15 14:34:15', '2016-11-14 17:01:21', 1),
(13, 'adm1001', '2016-08-15 15:04:48', '2016-11-14 17:01:21', 1),
(14, 'adm1001', '2016-08-15 15:14:21', '2016-11-14 17:01:21', 1),
(15, 'adm1001', '2016-08-15 16:43:01', '2016-11-14 17:01:21', 1),
(16, 'adm1001', '2016-08-18 13:34:18', '2016-11-14 17:01:21', 1),
(17, 'adm1001', '2016-08-19 13:25:51', '2016-11-14 17:01:21', 1),
(18, 'adm1001', '2016-08-27 06:17:04', '2016-11-14 17:01:21', 1),
(19, 'adm1001', '2016-10-20 21:53:04', '2016-11-14 17:01:21', 1),
(20, 'adm1001', '2016-10-26 09:36:06', '2016-11-14 17:01:21', 1),
(21, 'adm1001', '2016-10-26 22:53:56', '2016-11-14 17:01:21', 1),
(22, 'adm1001', '2016-10-27 08:52:01', '2016-11-14 17:01:21', 1),
(23, 'adm1001', '2016-10-27 16:53:59', '2016-11-14 17:01:21', 1),
(24, 'adm1001', '2016-10-27 17:56:19', '2016-11-14 17:01:21', 1),
(25, 'adm1001', '2016-11-14 13:32:45', '2016-11-14 17:01:21', 1),
(26, 'adm1001', '2016-11-14 13:39:03', '2016-11-14 17:01:21', 1),
(27, 'adm1001', '2016-11-14 13:48:45', '2016-11-14 17:01:21', 1),
(28, 'adm1001', '2016-11-14 13:57:43', '2016-11-14 17:01:21', 1),
(29, 'adm1001', '2016-11-14 13:59:13', '2016-11-14 17:01:21', 1),
(30, 'adm1001', '2016-11-14 16:51:28', '2016-11-14 17:01:21', 1),
(31, 'adm1001', '2016-11-14 16:57:30', '2016-11-14 17:01:21', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`activity_log_id`);

--
-- Indexes for table `answer`
--
ALTER TABLE `answer`
  ADD PRIMARY KEY (`answer_id`);

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`assignment_id`);

--
-- Indexes for table `attendance_student`
--
ALTER TABLE `attendance_student`
  ADD PRIMARY KEY (`attendance_id`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `class_quiz`
--
ALTER TABLE `class_quiz`
  ADD PRIMARY KEY (`class_quiz_id`);

--
-- Indexes for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  ADD PRIMARY KEY (`class_subject_overview_id`);

--
-- Indexes for table `content`
--
ALTER TABLE `content`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Indexes for table `message_sent`
--
ALTER TABLE `message_sent`
  ADD PRIMARY KEY (`message_sent_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `notification_read`
--
ALTER TABLE `notification_read`
  ADD PRIMARY KEY (`notification_read_id`);

--
-- Indexes for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  ADD PRIMARY KEY (`notification_read_teacher_id`);

--
-- Indexes for table `question_type`
--
ALTER TABLE `question_type`
  ADD PRIMARY KEY (`question_type_id`);

--
-- Indexes for table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`);

--
-- Indexes for table `quiz_question`
--
ALTER TABLE `quiz_question`
  ADD PRIMARY KEY (`quiz_question_id`);

--
-- Indexes for table `school_year`
--
ALTER TABLE `school_year`
  ADD PRIMARY KEY (`school_year_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`student_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `student_assignment`
--
ALTER TABLE `student_assignment`
  ADD PRIMARY KEY (`student_assignment_id`);

--
-- Indexes for table `student_backpack`
--
ALTER TABLE `student_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  ADD PRIMARY KEY (`student_class_quiz_id`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `teacher_class`
--
ALTER TABLE `teacher_class`
  ADD PRIMARY KEY (`teacher_class_id`);

--
-- Indexes for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  ADD PRIMARY KEY (`teacher_class_announcements_id`);

--
-- Indexes for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  ADD PRIMARY KEY (`teacher_class_student_id`);

--
-- Indexes for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  ADD PRIMARY KEY (`teacher_notification_id`);

--
-- Indexes for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  ADD PRIMARY KEY (`teacher_shared_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `user_log`
--
ALTER TABLE `user_log`
  ADD PRIMARY KEY (`user_log_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `activity_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `answer`
--
ALTER TABLE `answer`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
--
-- AUTO_INCREMENT for table `assignment`
--
ALTER TABLE `assignment`
  MODIFY `assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `attendance_student`
--
ALTER TABLE `attendance_student`
  MODIFY `attendance_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `class_quiz`
--
ALTER TABLE `class_quiz`
  MODIFY `class_quiz_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_subject_overview`
--
ALTER TABLE `class_subject_overview`
  MODIFY `class_subject_overview_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `content`
--
ALTER TABLE `content`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `event_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `message_sent`
--
ALTER TABLE `message_sent`
  MODIFY `message_sent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `notification_read`
--
ALTER TABLE `notification_read`
  MODIFY `notification_read_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `notification_read_teacher`
--
ALTER TABLE `notification_read_teacher`
  MODIFY `notification_read_teacher_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `quiz_question`
--
ALTER TABLE `quiz_question`
  MODIFY `quiz_question_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `school_year`
--
ALTER TABLE `school_year`
  MODIFY `school_year_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `student_assignment`
--
ALTER TABLE `student_assignment`
  MODIFY `student_assignment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `student_backpack`
--
ALTER TABLE `student_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student_class_quiz`
--
ALTER TABLE `student_class_quiz`
  MODIFY `student_class_quiz_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `teacher_backpack`
--
ALTER TABLE `teacher_backpack`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_class`
--
ALTER TABLE `teacher_class`
  MODIFY `teacher_class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `teacher_class_announcements`
--
ALTER TABLE `teacher_class_announcements`
  MODIFY `teacher_class_announcements_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_class_student`
--
ALTER TABLE `teacher_class_student`
  MODIFY `teacher_class_student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `teacher_notification`
--
ALTER TABLE `teacher_notification`
  MODIFY `teacher_notification_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `teacher_shared`
--
ALTER TABLE `teacher_shared`
  MODIFY `teacher_shared_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `user_log`
--
ALTER TABLE `user_log`
  MODIFY `user_log_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
