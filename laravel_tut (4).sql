-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2019 at 03:31 PM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.2.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_tut`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `aid` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`aid`, `name`, `email`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@admin.com', '$2y$10$6JrPl2QMhL87ILcpzkpp2eRC9tnWj1CNac7IxQlogJo42KBE03wlG', '2019-08-09 21:57:42', '2019-08-09 21:57:42');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `c_id` bigint(20) UNSIGNED NOT NULL,
  `cname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`c_id`, `cname`, `created_at`, `updated_at`) VALUES
(1, 'MCA', '2019-07-30 08:17:51', '2019-07-30 08:17:51'),
(2, 'IMCA', '2019-07-30 08:18:00', '2019-07-30 08:18:00'),
(3, 'BE', '2019-09-26 00:17:54', '2019-09-26 00:17:54');

-- --------------------------------------------------------

--
-- Table structure for table `faculties`
--

CREATE TABLE `faculties` (
  `f_id` bigint(20) UNSIGNED NOT NULL,
  `fname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `femail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `femail_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faculties`
--

INSERT INTO `faculties` (`f_id`, `fname`, `femail`, `femail_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Sarojkumar', 'sarojlal50@gmail.com', NULL, '$2y$10$BhpwI5grvrZ/y50PT9ry9.41ZR.9DQEpi5DowcAy54vp4y2QjcBRS', NULL, '2019-07-30 08:14:12', '2019-07-30 08:14:12'),
(2, 'pk', 'pk@gmail.com', NULL, '$2y$10$vXHLq2vPoFfu9AMKH688R.30GekObktK2Jx9.AX5.4CN42DkDKM/i', NULL, '2019-07-30 08:33:41', '2019-09-25 13:56:46'),
(3, 'Shahid', 's.a.shaikhss15@gmail.com', NULL, '$2y$10$LA0molnwiVwRaC8v7HMlzesCEGO48qrjOTXGAClsPAuGf5KHPdNYW', NULL, '2019-08-22 01:40:45', '2019-09-25 14:01:34'),
(4, 'Pankaj Kalal', 'pankajgkalal@gmail.com', NULL, '$2y$10$kN7fek.0YW6BBK9id9GkTemzCtxgGS2leojupXQ9fNDgROmmdYXNa', NULL, '2019-09-07 06:13:42', '2019-09-07 06:13:42'),
(23, 'ritisha', 'ritisha@gmail.com', NULL, '$2y$10$I8JqWkp2b3HokuV0H4fMieXiGb4TdbdzECIA9KtFKnyPNeB546iuW', NULL, '2019-09-26 00:15:32', '2019-09-26 00:15:32'),
(24, 'dshjh', 'sf@gmail.com', NULL, '$2y$10$oP2eqZ9q2goFMCH44zzufuN/cLi7XKlYbALCgsdundSkCRXSmFepS', NULL, '2019-09-26 00:18:50', '2019-09-26 00:18:50');

-- --------------------------------------------------------

--
-- Table structure for table `fassignments`
--

CREATE TABLE `fassignments` (
  `assig_id` bigint(20) UNSIGNED NOT NULL,
  `document` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `desc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` int(11) NOT NULL,
  `sem_id` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `fassignments`
--

INSERT INTO `fassignments` (`assig_id`, `document`, `desc`, `f_id`, `course`, `sem_id`, `class`, `created_at`, `updated_at`) VALUES
(1, 'test.csv', 'test1', '1', 1, 2, 'A', '2019-08-12 12:36:02', '2019-08-12 12:36:02'),
(2, 'laravel_tut.sql', 'db laravel', '1', 1, 5, 'A', '2019-08-14 09:33:19', '2019-08-14 09:33:19'),
(3, 'abc.txt', 'bfbffg', '1', 1, 3, 'A', '2019-09-07 09:10:28', '2019-09-07 09:10:28'),
(4, 'TCS_ApplicationForm.pdf', 'sgh', '1', 1, 5, 'A', '2019-09-26 00:29:43', '2019-09-26 00:29:43');

-- --------------------------------------------------------

--
-- Table structure for table `marks`
--

CREATE TABLE `marks` (
  `mid` bigint(20) UNSIGNED NOT NULL,
  `assig_id` int(11) NOT NULL,
  `assig_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stud_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `marks`
--

INSERT INTO `marks` (`mid`, `assig_id`, `assig_name`, `stud_id`, `marks`, `f_id`, `created_at`, `updated_at`) VALUES
(1, 2, 'sets.py', 1, 10, 1, '2019-08-18 12:51:16', '2019-08-18 12:51:16'),
(2, 4, 'imm1294e.pdf', 1, 9, 1, '2019-09-26 23:58:00', '2019-09-26 23:58:00');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_06_27_131556_create_profs_table', 1),
(11, '2014_10_12_000000_create_users_table', 2),
(12, '2014_10_12_100000_create_password_resets_table', 2),
(13, '2019_07_08_033450_create_faculties_table', 2),
(14, '2019_07_17_142806_create_uploads_table', 2),
(15, '2019_07_25_184007_create_students_table', 2),
(16, '2019_07_27_141937_create_courses_table', 2),
(17, '2019_07_27_232254_create_sems_table', 2),
(18, '2019_08_10_030910_create_admins_table', 3),
(19, '2019_08_12_170933_create_fassignments_table', 4),
(22, '2019_08_16_144009_create_stud_assigs_table', 5),
(24, '2019_08_18_180633_create_marks_table', 6);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `profs`
--

CREATE TABLE `profs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pwd` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sems`
--

CREATE TABLE `sems` (
  `sem_id` bigint(20) UNSIGNED NOT NULL,
  `c_id` bigint(20) NOT NULL,
  `sem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sems`
--

INSERT INTO `sems` (`sem_id`, `c_id`, `sem`, `created_at`, `updated_at`) VALUES
(1, 1, 'Sem-1', '2019-07-30 08:20:02', '2019-09-24 23:10:22'),
(2, 1, 'Sem-2', '2019-07-30 08:20:11', '2019-07-30 08:20:11'),
(3, 1, 'Sem-3', '2019-07-30 08:20:19', '2019-07-30 08:20:19'),
(4, 1, 'Sem-4', '2019-07-30 08:20:32', '2019-07-30 08:20:32'),
(5, 1, 'Sem-5', '2019-07-30 08:20:48', '2019-07-30 08:20:48'),
(6, 1, 'Sem-6', '2019-07-30 08:20:56', '2019-07-30 08:20:56'),
(7, 2, 'Sem-1', '2019-07-30 08:21:24', '2019-07-30 08:21:24'),
(8, 2, 'Sem-2', '2019-07-30 08:21:32', '2019-07-30 08:21:32'),
(9, 2, 'Sem-3', '2019-09-07 06:26:28', '2019-09-07 06:26:28'),
(10, 2, 'Sem-4', '2019-09-07 06:27:36', '2019-09-07 06:27:36'),
(11, 2, 'Sem-5', '2019-09-07 06:28:14', '2019-09-07 06:28:14');

-- --------------------------------------------------------

--
-- Table structure for table `studentassigs`
--

CREATE TABLE `studentassigs` (
  `sa_id` bigint(20) UNSIGNED NOT NULL,
  `assignment` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ass_id` bigint(20) NOT NULL,
  `fid` bigint(20) NOT NULL,
  `stud_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `studentassigs`
--

INSERT INTO `studentassigs` (`sa_id`, `assignment`, `ass_id`, `fid`, `stud_id`, `created_at`, `updated_at`) VALUES
(2, 'sets.py', 2, 1, 1, '2019-08-18 06:29:18', '2019-08-18 06:29:18'),
(3, 'font-awesome.min.css', 4, 1, 1, '2019-09-26 00:32:40', '2019-09-26 00:32:40'),
(4, 'imm1294e.pdf', 4, 1, 1, '2019-09-26 00:34:32', '2019-09-26 00:34:32'),
(5, 'abc.txt', 4, 1, 1, '2019-09-26 23:55:30', '2019-09-26 23:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `sid` bigint(20) UNSIGNED NOT NULL,
  `enroll_no` bigint(20) NOT NULL,
  `sname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semail` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `course` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `class` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`sid`, `enroll_no`, `sname`, `semail`, `password`, `course`, `sem`, `class`, `created_at`, `updated_at`) VALUES
(1, 185173693045, 'Sarojkumar Rambachan Lal', 'shivasarojlal@gmail.com', '$2y$10$XuQSPQZLm6YGrOFa9oSwb.FBbrFPSZHy9E4ZX8hlT5X2ALyqpWJHK', 1, 5, 'A', '2019-07-30 10:47:34', '2019-07-30 10:47:34'),
(2, 185173693042, 'Abcd', 'abc@gmail.com', '$2y$10$V00m8v/cuPjFMMFf8z/tN.ifaVa86Qom7tE7gp8swGWzFSENYh2B.', 1, 5, 'A', '2019-07-31 04:04:13', '2019-07-31 04:04:13');

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `uid` bigint(20) UNSIGNED NOT NULL,
  `uploads` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `f_id` int(11) DEFAULT NULL,
  `course` int(11) DEFAULT NULL,
  `sem` int(11) DEFAULT NULL,
  `class` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`uid`, `uploads`, `f_id`, `course`, `sem`, `class`, `created_at`, `updated_at`) VALUES
(2, 'Certificate_Hadoop.pdf', 1, NULL, NULL, NULL, '2019-07-30 08:32:27', '2019-07-30 08:32:27'),
(3, 'jquery-3.4.1.min.js', 2, NULL, NULL, NULL, '2019-07-30 08:36:11', '2019-07-30 08:36:11'),
(4, 'BigDataUniversity BD0111EN Certificate _ Cognitive Class.pdf', 1, 1, 5, 'A', '2019-07-30 12:08:31', '2019-07-30 12:08:31'),
(5, 'imm1294e.pdf', 1, 1, 2, 'B', '2019-07-30 12:47:39', '2019-07-30 12:47:39'),
(6, 'TCS_ApplicationForm.pdf', 1, 2, 7, 'A', '2019-07-31 01:13:32', '2019-07-31 01:13:32'),
(7, 'laravel_tut (1).sql', 1, 1, 1, 'A', '2019-08-08 23:19:44', '2019-08-08 23:19:44'),
(9, 'Screenshot (71).png', 1, 1, 5, 'A', '2019-08-13 01:48:48', '2019-08-13 01:48:48'),
(10, 'Certificate_Hadoop.pdf', 1, 1, 5, 'A', '2019-08-15 08:05:21', '2019-08-15 08:05:21'),
(12, 'AuthController.php.txt', 1, 1, 5, 'A', '2019-09-26 00:27:23', '2019-09-26 00:27:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `faculties`
--
ALTER TABLE `faculties`
  ADD PRIMARY KEY (`f_id`),
  ADD UNIQUE KEY `faculties_femail_unique` (`femail`);

--
-- Indexes for table `fassignments`
--
ALTER TABLE `fassignments`
  ADD PRIMARY KEY (`assig_id`);

--
-- Indexes for table `marks`
--
ALTER TABLE `marks`
  ADD PRIMARY KEY (`mid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `profs`
--
ALTER TABLE `profs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sems`
--
ALTER TABLE `sems`
  ADD PRIMARY KEY (`sem_id`);

--
-- Indexes for table `studentassigs`
--
ALTER TABLE `studentassigs`
  ADD PRIMARY KEY (`sa_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`sid`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `aid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `c_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `faculties`
--
ALTER TABLE `faculties`
  MODIFY `f_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `fassignments`
--
ALTER TABLE `fassignments`
  MODIFY `assig_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `marks`
--
ALTER TABLE `marks`
  MODIFY `mid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `profs`
--
ALTER TABLE `profs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sems`
--
ALTER TABLE `sems`
  MODIFY `sem_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `studentassigs`
--
ALTER TABLE `studentassigs`
  MODIFY `sa_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `sid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `uploads`
--
ALTER TABLE `uploads`
  MODIFY `uid` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
