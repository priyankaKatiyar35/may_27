-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 27, 2026 at 01:42 PM
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
-- Database: `s&p`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_audit`
--

CREATE TABLE `admin_audit` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `email` varchar(190) DEFAULT NULL,
  `action` varchar(80) NOT NULL,
  `details` varchar(500) DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_audit`
--

INSERT INTO `admin_audit` (`id`, `user_id`, `email`, `action`, `details`, `ip`, `created_at`) VALUES
(1, 7, 'admin@example.com', 'album_create', 'Created album: my testion', '127.0.0.1', '2026-05-22 11:22:43'),
(2, 7, 'admin@example.com', 'folder_create', 'Main folder: my testion', '127.0.0.1', '2026-05-22 11:23:24'),
(3, 7, 'admin@example.com', 'subfolder_create', 'Subfolder: dgfsdfg', '127.0.0.1', '2026-05-22 11:23:37'),
(4, 7, 'admin@example.com', 'gallery_video_upload', 'Uploaded gallery video: dsfsdg', '127.0.0.1', '2026-05-25 04:38:25'),
(5, 7, 'admin@example.com', 'video_upload', 'Uploaded video #6: sample 5s [cat 3]', '127.0.0.1', '2026-05-25 04:39:34'),
(6, 7, 'admin@example.com', 'video_upload', 'Uploaded video #7: sample 5s [cat 4]', '127.0.0.1', '2026-05-25 04:40:37'),
(7, 7, 'admin@example.com', 'folder_create', 'Main folder: ashfg fgwe iyugwte rwekit wet ow', '127.0.0.1', '2026-05-25 04:42:15'),
(8, 7, 'admin@example.com', 'file_upload', 'File: pexels-kishore-illa-50611233-11472026.jpg', '127.0.0.1', '2026-05-25 04:43:02'),
(9, 7, 'admin@example.com', 'folder_create', 'Main folder: my_demo', '127.0.0.1', '2026-05-25 05:24:26'),
(10, 7, 'admin@example.com', 'file_upload', 'File: Get Unstuck - GoReDuX.pdf', '127.0.0.1', '2026-05-25 05:24:59'),
(11, 7, 'admin@example.com', 'folder_create', 'Main folder: secound', '127.0.0.1', '2026-05-25 05:25:58'),
(12, 7, 'admin@example.com', 'subfolder_create', 'Subfolder: ex', '127.0.0.1', '2026-05-25 05:26:07'),
(13, 7, 'admin@example.com', 'file_upload', 'File: Get Unstuck - GoReDuX.pdf', '127.0.0.1', '2026-05-25 05:26:45'),
(14, 7, 'admin@example.com', 'user_password_reset', '#3', '127.0.0.1', '2026-05-25 11:09:51'),
(15, 7, 'admin@example.com', 'user_create', '#8: pk@gmail.com (user)', '127.0.0.1', '2026-05-25 11:27:58');

-- --------------------------------------------------------

--
-- Table structure for table `admin_audit_log`
--

CREATE TABLE `admin_audit_log` (
  `id` int(11) NOT NULL,
  `admin_id` int(11) DEFAULT NULL,
  `action` varchar(80) NOT NULL,
  `details` text DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_audit_log`
--

INSERT INTO `admin_audit_log` (`id`, `admin_id`, `action`, `details`, `ip`, `created_at`) VALUES
(1, 1, 'login', 'Admin signed in', '127.0.0.1', '2026-05-20 15:21:19'),
(2, 1, 'logout', 'Admin signed out', '127.0.0.1', '2026-05-20 15:37:11'),
(3, 1, 'login', 'Admin signed in', '127.0.0.1', '2026-05-20 15:37:21'),
(4, 1, 'quiz_checkpoint_created', 'Video #4 @ 0.45s â€” bcg', '127.0.0.1', '2026-05-20 15:43:30'),
(5, 1, 'quiz_checkpoint_deleted', 'Checkpoint #33 removed', '127.0.0.1', '2026-05-20 15:43:38'),
(6, 1, 'login', 'Admin signed in', '127.0.0.1', '2026-05-22 10:24:21');

-- --------------------------------------------------------

--
-- Table structure for table `admin_login_attempts`
--

CREATE TABLE `admin_login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `username` varchar(120) DEFAULT NULL,
  `success` tinyint(1) NOT NULL,
  `attempted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login_attempts`
--

INSERT INTO `admin_login_attempts` (`id`, `ip`, `username`, `success`, `attempted_at`) VALUES
(1, '127.0.0.1', 'admin', 1, '2026-05-20 15:21:19'),
(2, '127.0.0.1', 'ADMIN', 1, '2026-05-20 15:37:21'),
(3, '127.0.0.1', 'admin', 1, '2026-05-22 10:24:21'),
(4, '127.0.0.1', 'admin', 0, '2026-05-22 11:08:39'),
(5, '127.0.0.1', 'admin', 0, '2026-05-22 11:08:42'),
(6, '127.0.0.1', 'admin', 0, '2026-05-22 11:08:46'),
(7, '127.0.0.1', 'admin', 0, '2026-05-22 11:09:01'),
(8, '127.0.0.1', 'admin', 0, '2026-05-22 11:10:02');

-- --------------------------------------------------------

--
-- Table structure for table `ai_file_texts`
--

CREATE TABLE `ai_file_texts` (
  `id` int(11) NOT NULL,
  `file_id` int(11) NOT NULL,
  `extracted_text` longtext DEFAULT NULL,
  `summary` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bookmarks`
--

CREATE TABLE `bookmarks` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `item_type` enum('video','album','file') NOT NULL,
  `item_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookmarks`
--

INSERT INTO `bookmarks` (`id`, `user_id`, `item_type`, `item_id`, `created_at`) VALUES
(1, 8, 'video', 7, '2026-05-27 11:37:22'),
(6, 8, 'file', 49, '2026-05-27 11:38:33');

-- --------------------------------------------------------

--
-- Table structure for table `document_extracts`
--

CREATE TABLE `document_extracts` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `full_text` longtext NOT NULL,
  `page_count` smallint(5) UNSIGNED DEFAULT 0,
  `word_count` int(10) UNSIGNED DEFAULT 0,
  `extractor` varchar(40) DEFAULT 'pdfparser',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `file_id` int(11) NOT NULL,
  `folder_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `video_link` varchar(1000) DEFAULT NULL,
  `file_desc` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`file_id`, `folder_id`, `file_name`, `file_path`, `video_link`, `file_desc`) VALUES
(48, 160, 'Get Unstuck - GoReDuX.pdf', 'uploads/Get Unstuck - GoReDuX.pdf', 'http://localhost/MediaNest_complete/Videos/video_player.php?id=6', 'check the file'),
(49, 162, 'Get Unstuck - GoReDuX.pdf', 'uploads/Get Unstuck - GoReDuX.pdf', 'http://localhost/MediaNest_complete/Videos/video_player.php?id=6', 'fiel for to check the validity');

-- --------------------------------------------------------

--
-- Table structure for table `folders`
--

CREATE TABLE `folders` (
  `albumid` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `adesc` varchar(225) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT 'active',
  `parent_folder_id` int(11) DEFAULT NULL,
  `folder_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `folders`
--

INSERT INTO `folders` (`albumid`, `name`, `adesc`, `date`, `status`, `parent_folder_id`, `folder_image`) VALUES
(160, 'my_demo', 'first file to check', '2026-05-25 05:24:26', 'active', NULL, 'uploads/pexels-kishore-illa-50611233-11333963.jpg'),
(161, 'secound', 'example', '2026-05-25 05:25:58', 'active', NULL, 'uploads/pexels-kishore-illa-50611233-11472026.jpg'),
(162, 'ex', 'no', '2026-05-25 05:26:07', 'active', 161, 'uploads/pexels-kishore-illa-50611233-11472026.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `gallery_video`
--

CREATE TABLE `gallery_video` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `title` varchar(200) NOT NULL,
  `des` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gallery_video`
--

INSERT INTO `gallery_video` (`id`, `name`, `title`, `des`) VALUES
(1, 'sample-5s_20260525_063825.mp4', 'dsfsdg', 'sdgsg');

-- --------------------------------------------------------

--
-- Table structure for table `login_attempts`
--

CREATE TABLE `login_attempts` (
  `id` int(11) NOT NULL,
  `ip` varchar(45) NOT NULL,
  `email` varchar(190) DEFAULT NULL,
  `success` tinyint(1) NOT NULL,
  `attempted_at` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login_attempts`
--

INSERT INTO `login_attempts` (`id`, `ip`, `email`, `success`, `attempted_at`) VALUES
(1, '127.0.0.1', 'anshika@gmail.com', 1, '2026-05-22 10:15:51'),
(2, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-22 11:01:19'),
(3, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-22 11:01:36'),
(4, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-22 11:02:26'),
(5, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-22 11:04:30'),
(6, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-22 11:38:05'),
(7, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-22 11:38:14'),
(8, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-22 12:36:47'),
(9, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-22 13:17:06'),
(10, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 10:04:38'),
(11, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 10:04:51'),
(12, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-25 10:05:32'),
(13, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 16:36:07'),
(14, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 16:36:17'),
(15, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 16:36:29'),
(16, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:19'),
(17, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:28'),
(18, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:34'),
(19, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:44'),
(20, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:52'),
(21, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:37:57'),
(22, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:38:52'),
(23, '127.0.0.1', 'anshika@gmail.com', 0, '2026-05-25 16:39:04'),
(24, '127.0.0.1', 'priyanka@gmail.com', 0, '2026-05-25 16:48:43'),
(25, '127.0.0.1', 'pk@gmail.com', 0, '2026-05-25 16:49:52'),
(26, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-25 17:00:00'),
(27, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-26 09:28:55'),
(28, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-26 12:53:20'),
(29, '127.0.0.1', 'pk@gmail.com', 1, '2026-05-27 10:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `news_user`
--

CREATE TABLE `news_user` (
  `id` int(11) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `news_user`
--

INSERT INTO `news_user` (`id`, `email`, `password`, `name`) VALUES
(1, 'pk@gmail.com', '12345', 'priyanka'),
(2, 'ns@gmail.com', '123', 'Neha'),
(3, 'rt@gmail.com', '12345', 'Rita');

-- --------------------------------------------------------

--
-- Table structure for table `new_post`
--

CREATE TABLE `new_post` (
  `id` int(11) NOT NULL,
  `title` varchar(225) NOT NULL,
  `content` varchar(225) NOT NULL,
  `user_id` int(11) NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `date` date NOT NULL DEFAULT current_timestamp(),
  `progress` varchar(225) NOT NULL,
  `project` varchar(225) NOT NULL,
  `cat` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `new_post`
--

INSERT INTO `new_post` (`id`, `title`, `content`, `user_id`, `start_time`, `end_time`, `date`, `progress`, `project`, `cat`) VALUES
(1, 'anything', 'abcd', 1, '25:52:45', '26:52:45', '2024-12-10', 'completed', 'abc', 'caca'),
(2, 'Configuration Management', 'sdwsfr', 1, '09:00:00', '10:00:00', '2024-12-10', 'Completed', 'CMS 24-29', 'Process'),
(3, 'Bug Triage', 'qweqw', 1, '23:45:00', '23:54:00', '2025-01-07', 'Completed', 'CMS 24-29', 'Testing'),
(5, 'Configuration Management', 'gfgfszdv', 1, '09:09:00', '10:00:00', '2025-02-06', 'Completed', 'CMS 24-29', 'Process'),
(6, 'Appraisal', 'JHGH', 1, '15:45:00', '16:56:00', '2025-02-10', 'Completed', 'CMS 24-29', 'Process');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL COMMENT 'Recipient',
  `type` varchar(40) NOT NULL COMMENT 'video_new, album_new, doc_new, quiz_new, etc',
  `title` varchar(200) NOT NULL COMMENT 'Short heading',
  `body` varchar(500) DEFAULT NULL,
  `link` varchar(300) DEFAULT NULL COMMENT 'Where the bell click takes them',
  `is_read` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `mile_phase` varchar(225) NOT NULL,
  `task` varchar(225) NOT NULL,
  `sub_task` varchar(225) NOT NULL,
  `plan_start` date NOT NULL,
  `plan_end` date NOT NULL,
  `plan_effort` varchar(225) NOT NULL,
  `res_allocated` varchar(225) NOT NULL,
  `act_item` varchar(225) NOT NULL,
  `remarks` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `task_des` varchar(225) NOT NULL,
  `user_id` int(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_options`
--

CREATE TABLE `quiz_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `question_text` text NOT NULL,
  `option_a` varchar(512) NOT NULL,
  `option_b` varchar(512) NOT NULL,
  `option_c` varchar(512) DEFAULT NULL,
  `option_d` varchar(512) DEFAULT NULL,
  `correct_option` tinyint(1) NOT NULL DEFAULT 0,
  `explanation` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_options`
--

INSERT INTO `quiz_options` (`id`, `quiz_id`, `question_text`, `option_a`, `option_b`, `option_c`, `option_d`, `correct_option`, `explanation`, `created_at`) VALUES
(35, 31, 'wrwr', 'wer', 'ewr', 'wre', 'er', 2, 'ewr', '2026-05-08 05:49:22'),
(36, 32, 'ghghk', 'hgkg', 'ghk', 'gh', 'hgk', 3, 'hgkj', '2026-05-08 05:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `quiz_responses`
--

CREATE TABLE `quiz_responses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `quiz_id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `user_ip` varchar(50) DEFAULT NULL,
  `user_session` varchar(100) DEFAULT NULL,
  `user_name` varchar(120) DEFAULT NULL,
  `group_name` varchar(120) DEFAULT NULL,
  `chosen_option` tinyint(1) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `time_taken_sec` decimal(6,2) DEFAULT NULL,
  `answered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `quiz_responses`
--

INSERT INTO `quiz_responses` (`id`, `user_id`, `quiz_id`, `video_id`, `option_id`, `user_ip`, `user_session`, `user_name`, `group_name`, `chosen_option`, `is_correct`, `time_taken_sec`, `answered_at`) VALUES
(49, NULL, 31, 5, 35, '127.0.0.1', 'o6kn6sfmorppudlj7gcuh1bqd2', 'pk', 'retertertretr', 2, 1, 1.50, '2026-05-21 09:31:08'),
(52, NULL, 32, 5, 36, '127.0.0.1', 'o6kn6sfmorppudlj7gcuh1bqd2', 'pk', 'fghhg', 3, 1, 1.21, '2026-05-21 09:31:28'),
(61, NULL, 31, 5, 35, '127.0.0.1', 'bofnpomsp81h4422m1hncpobjg', 'Guest', 'General', 2, 1, 1.30, '2026-05-22 04:43:35'),
(63, NULL, 32, 5, 36, '127.0.0.1', 'bofnpomsp81h4422m1hncpobjg', 'Guest', 'General', 3, 1, 1.90, '2026-05-22 04:43:42'),
(64, 2, 31, 5, 35, '127.0.0.1', 'miuhmn0v96hdkf8f4f6e28s6b4', 'Anshika', 'General', 2, 1, 1.37, '2026-05-22 04:46:00'),
(65, 2, 32, 5, 36, '127.0.0.1', 'miuhmn0v96hdkf8f4f6e28s6b4', 'Anshika', 'General', 3, 1, 1.13, '2026-05-22 04:46:14');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `albumid` int(11) NOT NULL,
  `name` varchar(225) NOT NULL,
  `adesc` varchar(225) NOT NULL,
  `image` varchar(225) NOT NULL,
  `event_date` date DEFAULT NULL,
  `date` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`albumid`, `name`, `adesc`, `image`, `event_date`, `date`, `status`) VALUES
(1, 'drfterterte', 'rtertert', '461087568pexels-kishore-illa-50611233-11333963.jpg', NULL, '2026-04-30 08:14:06', 'process'),
(3, 'my testion', 'my te.....................', '175022545banner_1.jpg', NULL, '2026-05-22 13:22:42', 'process');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `gid` int(11) NOT NULL,
  `aid` varchar(255) NOT NULL,
  `gname` varchar(255) NOT NULL,
  `gimages` varchar(225) NOT NULL,
  `caption` varchar(255) DEFAULT NULL,
  `date` varchar(225) NOT NULL,
  `status` varchar(225) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_login`
--

CREATE TABLE `tbl_login` (
  `lid` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `password` varchar(255) NOT NULL,
  `type` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_login`
--

INSERT INTO `tbl_login` (`lid`, `username`, `password`, `type`) VALUES
(1, 'admin', '$2y$10$zUXOH/cWL0nJfJUofhmCsejKkQZf/szHlZyZXqVWq25/nfwYfPWv2', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(190) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `full_name` varchar(120) NOT NULL,
  `group_name` varchar(80) DEFAULT NULL,
  `role` enum('user','admin') NOT NULL DEFAULT 'user',
  `created_at` datetime DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password_hash`, `full_name`, `group_name`, `role`, `created_at`, `last_login`) VALUES
(1, 'admin@medianest.local', '$2y$10$wH8XlBYwI6jL3/8.dwLbA.qB3CN3GcsXh3KePqRSvBQGKjEC4LUUu', 'Site Administrator', NULL, 'admin', '2026-05-21 16:06:03', NULL),
(7, 'admin@example.com', '$2y$10$oRDSL.URd9Ocz/Xy1fHSLepGw/s5E9ce3sdryda72ZkGMqNm4H2Py', 'Administrator', NULL, 'admin', '2026-05-22 13:14:31', NULL),
(8, 'pk@gmail.com', '$2y$10$PehBAW5fQMwfbVPi3iLtzO6HWVPtB2lur5Sfu4ZZO9iU7HQt50lrm', 'priyanka', 'ss', 'user', '2026-05-25 16:57:58', '2026-05-27 10:11:54');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `des` text DEFAULT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `name`, `title`, `des`, `category_id`) VALUES
(4, 'sample-5s.mp4', 'qweqrqrq', 'rqwrqwr', NULL),
(5, 'sample-5s.mp4', 'first_video', 'please fill the field\r\n', NULL),
(6, 'sample-5s_20260525_063934_f07846.mp4', 'sample 5s', 'safdaf', 3),
(7, 'sample-5s_20260525_064037_c22f98.mp4', 'sample 5s', 'fghf jhjfg jhfjf jhffj jhfj jkhf jkf hjf jfj', 4);

-- --------------------------------------------------------

--
-- Table structure for table `video_categories`
--

CREATE TABLE `video_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(120) NOT NULL,
  `slug` varchar(140) NOT NULL,
  `description` varchar(500) DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_categories`
--

INSERT INTO `video_categories` (`id`, `name`, `slug`, `description`, `sort_order`, `created_at`) VALUES
(1, 'Training', 'training', 'Course videos with knowledge-check quizzes.', 1, '2026-05-21 10:35:57'),
(2, 'Events', 'events', 'Event recordings and highlights.', 2, '2026-05-21 10:35:57'),
(3, 'Tutorials', 'tutorials', 'How-tos and walk-throughs.', 3, '2026-05-21 10:35:57'),
(4, 'Webinars', 'webinars', 'Recorded webinars and sessions.', 4, '2026-05-21 10:35:57');

-- --------------------------------------------------------

--
-- Table structure for table `video_progress`
--

CREATE TABLE `video_progress` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `last_position` float NOT NULL DEFAULT 0 COMMENT 'Seconds into the video',
  `duration_sec` float NOT NULL DEFAULT 0 COMMENT 'Total length (snapshot at last save)',
  `progress_pct` tinyint(3) UNSIGNED NOT NULL DEFAULT 0,
  `completed` tinyint(1) NOT NULL DEFAULT 0 COMMENT '1 once watched past 90%',
  `last_watched_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_progress`
--

INSERT INTO `video_progress` (`id`, `user_id`, `video_id`, `last_position`, `duration_sec`, `progress_pct`, `completed`, `last_watched_at`) VALUES
(1, 8, 7, 0, 5.8, 0, 1, '2026-05-27 11:37:28'),
(5, 8, 6, 0, 5.8, 0, 0, '2026-05-27 05:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `video_quizzes`
--

CREATE TABLE `video_quizzes` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `trigger_time` decimal(10,2) NOT NULL,
  `group_label` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `video_quizzes`
--

INSERT INTO `video_quizzes` (`id`, `video_id`, `trigger_time`, `group_label`, `created_at`) VALUES
(31, 5, 2.28, 'rfewr', '2026-05-08 05:49:22'),
(32, 5, 4.59, 'hjg', '2026-05-08 05:53:51');

-- --------------------------------------------------------

--
-- Table structure for table `video_summaries`
--

CREATE TABLE `video_summaries` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `summary` text NOT NULL,
  `key_topics` text DEFAULT NULL,
  `model` varchar(40) DEFAULT 'llama-3.1-8b-instant',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `video_transcripts`
--

CREATE TABLE `video_transcripts` (
  `id` int(10) UNSIGNED NOT NULL,
  `video_id` int(10) UNSIGNED NOT NULL,
  `full_text` longtext NOT NULL,
  `segments` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL COMMENT 'Word/sentence timestamps from Whisper' CHECK (json_valid(`segments`)),
  `language` varchar(10) DEFAULT 'en',
  `duration_sec` int(10) UNSIGNED DEFAULT 0,
  `model` varchar(40) DEFAULT 'whisper-large-v3-turbo',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `visitore`
--

CREATE TABLE `visitore` (
  `id` int(11) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `url_visited` text NOT NULL,
  `reference_url` text DEFAULT NULL,
  `operating_system` varchar(100) DEFAULT NULL,
  `browser_name` varchar(100) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `count` int(11) DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_audit`
--
ALTER TABLE `admin_audit`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_action` (`action`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `admin_audit_log`
--
ALTER TABLE `admin_audit_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_admin` (`admin_id`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ip_time` (`ip`,`attempted_at`);

--
-- Indexes for table `ai_file_texts`
--
ALTER TABLE `ai_file_texts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `file_id` (`file_id`);

--
-- Indexes for table `bookmarks`
--
ALTER TABLE `bookmarks`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_item` (`user_id`,`item_type`,`item_id`),
  ADD KEY `idx_user_recent` (`user_id`,`created_at`);

--
-- Indexes for table `document_extracts`
--
ALTER TABLE `document_extracts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_file` (`file_id`);
ALTER TABLE `document_extracts` ADD FULLTEXT KEY `ft_text` (`full_text`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`file_id`),
  ADD KEY `folder_id` (`folder_id`);
ALTER TABLE `files` ADD FULLTEXT KEY `ft_filedesc` (`file_name`,`file_desc`);

--
-- Indexes for table `folders`
--
ALTER TABLE `folders`
  ADD PRIMARY KEY (`albumid`);
ALTER TABLE `folders` ADD FULLTEXT KEY `ft_name_desc` (`name`,`adesc`);

--
-- Indexes for table `gallery_video`
--
ALTER TABLE `gallery_video`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_attempts`
--
ALTER TABLE `login_attempts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ip_time` (`ip`,`attempted_at`);

--
-- Indexes for table `news_user`
--
ALTER TABLE `news_user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `new_post`
--
ALTER TABLE `new_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_user_unread` (`user_id`,`is_read`,`created_at`),
  ADD KEY `idx_created` (`created_at`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `quiz_options`
--
ALTER TABLE `quiz_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `quiz_id` (`quiz_id`);

--
-- Indexes for table `quiz_responses`
--
ALTER TABLE `quiz_responses`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_video_question` (`user_name`(100),`video_id`,`option_id`),
  ADD KEY `quiz_id` (`quiz_id`),
  ADD KEY `video_id` (`video_id`),
  ADD KEY `user_session` (`user_session`),
  ADD KEY `answered_at` (`answered_at`),
  ADD KEY `idx_user_name` (`user_name`),
  ADD KEY `idx_group_name` (`group_name`),
  ADD KEY `idx_user` (`user_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`albumid`);
ALTER TABLE `tbl_album` ADD FULLTEXT KEY `ft_namedesc` (`name`,`adesc`);

--
-- Indexes for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `tbl_login`
--
ALTER TABLE `tbl_login`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_email` (`email`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_category` (`category_id`);

--
-- Indexes for table `video_categories`
--
ALTER TABLE `video_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uniq_slug` (`slug`);

--
-- Indexes for table `video_progress`
--
ALTER TABLE `video_progress`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_user_video` (`user_id`,`video_id`),
  ADD KEY `idx_user_recent` (`user_id`,`last_watched_at`);

--
-- Indexes for table `video_quizzes`
--
ALTER TABLE `video_quizzes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `video_id` (`video_id`),
  ADD KEY `trigger_time` (`trigger_time`);

--
-- Indexes for table `video_summaries`
--
ALTER TABLE `video_summaries`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_video` (`video_id`);

--
-- Indexes for table `video_transcripts`
--
ALTER TABLE `video_transcripts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `uq_video` (`video_id`);
ALTER TABLE `video_transcripts` ADD FULLTEXT KEY `ft_text` (`full_text`);

--
-- Indexes for table `visitore`
--
ALTER TABLE `visitore`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_audit`
--
ALTER TABLE `admin_audit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `admin_audit_log`
--
ALTER TABLE `admin_audit_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `admin_login_attempts`
--
ALTER TABLE `admin_login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ai_file_texts`
--
ALTER TABLE `ai_file_texts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bookmarks`
--
ALTER TABLE `bookmarks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `document_extracts`
--
ALTER TABLE `document_extracts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `folders`
--
ALTER TABLE `folders`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=163;

--
-- AUTO_INCREMENT for table `gallery_video`
--
ALTER TABLE `gallery_video`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `login_attempts`
--
ALTER TABLE `login_attempts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `news_user`
--
ALTER TABLE `news_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `new_post`
--
ALTER TABLE `new_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quiz_options`
--
ALTER TABLE `quiz_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `quiz_responses`
--
ALTER TABLE `quiz_responses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `albumid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_login`
--
ALTER TABLE `tbl_login`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `video_categories`
--
ALTER TABLE `video_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `video_progress`
--
ALTER TABLE `video_progress`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `video_quizzes`
--
ALTER TABLE `video_quizzes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `video_summaries`
--
ALTER TABLE `video_summaries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `video_transcripts`
--
ALTER TABLE `video_transcripts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitore`
--
ALTER TABLE `visitore`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ai_file_texts`
--
ALTER TABLE `ai_file_texts`
  ADD CONSTRAINT `ai_file_texts_ibfk_1` FOREIGN KEY (`file_id`) REFERENCES `files` (`file_id`) ON DELETE CASCADE;

--
-- Constraints for table `files`
--
ALTER TABLE `files`
  ADD CONSTRAINT `files_ibfk_1` FOREIGN KEY (`folder_id`) REFERENCES `folders` (`albumid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
