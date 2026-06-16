-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 16, 2026 at 01:14 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_appointment_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointments`
--

CREATE TABLE `appointments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `doctor_id` bigint(20) UNSIGNED NOT NULL,
  `patient_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('Scheduled','Completed','Cancelled') NOT NULL,
  `appointment_datetime` datetime NOT NULL,
  `duration` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `appointments`
--

INSERT INTO `appointments` (`id`, `doctor_id`, `patient_id`, `status`, `appointment_datetime`, `duration`, `created_at`, `updated_at`) VALUES
(1, 33, 28, 'Scheduled', '2026-06-30 20:45:34', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(2, 33, 27, 'Completed', '2026-06-09 18:45:40', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(3, 31, 36, 'Scheduled', '2026-05-24 18:48:14', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(4, 16, 21, 'Scheduled', '2026-07-15 02:26:54', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(5, 40, 17, 'Scheduled', '2026-07-14 20:14:02', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(6, 27, 39, 'Completed', '2026-07-03 17:00:55', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(7, 1, 36, 'Scheduled', '2026-07-21 11:02:19', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(8, 36, 17, 'Cancelled', '2026-06-26 15:50:48', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(9, 23, 16, 'Completed', '2026-06-06 02:28:52', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(10, 3, 44, 'Cancelled', '2026-07-20 13:51:04', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(11, 21, 43, 'Scheduled', '2026-06-30 16:32:42', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(12, 4, 41, 'Scheduled', '2026-05-20 07:04:55', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(13, 27, 43, 'Scheduled', '2026-06-23 14:40:29', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(14, 36, 44, 'Completed', '2026-08-17 20:27:47', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(15, 8, 33, 'Completed', '2026-06-10 17:54:17', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(16, 37, 33, 'Scheduled', '2026-07-04 04:54:19', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(17, 50, 38, 'Cancelled', '2026-07-11 05:52:44', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(18, 23, 50, 'Completed', '2026-08-16 11:04:09', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(19, 30, 10, 'Cancelled', '2026-05-16 19:11:30', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(20, 21, 18, 'Cancelled', '2026-08-21 09:19:32', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(21, 36, 23, 'Scheduled', '2026-06-27 19:48:20', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(22, 11, 40, 'Scheduled', '2026-05-21 20:35:58', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(23, 1, 8, 'Completed', '2026-06-22 13:44:39', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(24, 25, 40, 'Scheduled', '2026-08-29 06:20:45', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(25, 48, 5, 'Scheduled', '2026-07-10 13:12:59', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(26, 9, 38, 'Scheduled', '2026-07-01 01:43:59', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(27, 46, 30, 'Cancelled', '2026-09-10 03:58:23', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(28, 1, 42, 'Cancelled', '2026-09-02 18:42:29', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(29, 37, 15, 'Cancelled', '2026-07-03 22:17:50', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(30, 45, 9, 'Cancelled', '2026-08-12 17:13:13', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(31, 24, 5, 'Completed', '2026-07-04 15:33:43', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(32, 49, 50, 'Scheduled', '2026-06-13 06:22:55', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(33, 24, 2, 'Cancelled', '2026-06-11 19:59:40', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(34, 30, 39, 'Cancelled', '2026-07-08 13:54:09', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(35, 23, 35, 'Completed', '2026-09-10 22:27:43', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(36, 30, 7, 'Scheduled', '2026-08-09 04:48:23', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(37, 35, 41, 'Completed', '2026-07-29 19:27:52', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(38, 11, 3, 'Completed', '2026-08-26 22:52:14', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(39, 4, 40, 'Cancelled', '2026-08-16 07:47:52', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(40, 45, 42, 'Scheduled', '2026-08-16 03:59:18', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(41, 38, 44, 'Cancelled', '2026-07-21 04:19:00', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(42, 30, 11, 'Scheduled', '2026-06-26 22:07:22', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(43, 12, 1, 'Scheduled', '2026-07-10 06:25:42', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(44, 27, 32, 'Cancelled', '2026-07-28 03:59:40', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(45, 27, 28, 'Completed', '2026-07-24 20:24:03', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(46, 12, 3, 'Completed', '2026-08-01 19:29:43', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(47, 3, 11, 'Completed', '2026-07-05 08:44:05', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(48, 41, 41, 'Cancelled', '2026-09-13 02:36:44', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(49, 48, 14, 'Scheduled', '2026-07-07 10:29:30', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(50, 11, 49, 'Cancelled', '2026-05-25 18:28:11', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(51, 15, 30, 'Completed', '2026-07-16 14:48:46', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(52, 32, 6, 'Scheduled', '2026-07-10 16:39:40', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(53, 38, 16, 'Completed', '2026-06-25 10:47:07', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(54, 32, 48, 'Scheduled', '2026-05-19 19:14:15', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(55, 38, 47, 'Scheduled', '2026-08-29 01:44:24', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(56, 13, 13, 'Cancelled', '2026-06-17 07:04:17', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(57, 42, 29, 'Scheduled', '2026-07-08 03:46:39', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(58, 13, 44, 'Completed', '2026-06-22 02:29:28', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(59, 5, 48, 'Completed', '2026-07-02 08:50:56', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(60, 36, 35, 'Completed', '2026-06-16 03:46:16', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(61, 2, 35, 'Cancelled', '2026-08-16 02:45:01', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(62, 25, 32, 'Cancelled', '2026-07-01 21:01:44', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(63, 18, 28, 'Cancelled', '2026-07-28 09:35:22', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(64, 4, 45, 'Cancelled', '2026-07-17 03:00:02', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(65, 43, 28, 'Completed', '2026-09-09 05:41:34', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(66, 43, 48, 'Completed', '2026-09-05 08:38:50', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(67, 46, 44, 'Cancelled', '2026-06-16 06:04:37', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(68, 42, 4, 'Cancelled', '2026-07-09 18:57:56', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(69, 10, 15, 'Scheduled', '2026-08-30 09:04:10', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(70, 4, 9, 'Scheduled', '2026-09-08 16:52:55', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(71, 32, 31, 'Scheduled', '2026-07-20 07:33:04', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(72, 5, 49, 'Scheduled', '2026-05-31 06:20:26', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(73, 18, 19, 'Cancelled', '2026-08-28 05:19:34', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(74, 32, 28, 'Completed', '2026-08-29 15:59:21', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(75, 50, 24, 'Cancelled', '2026-05-26 07:32:27', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(76, 27, 37, 'Cancelled', '2026-08-21 18:23:34', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(77, 28, 30, 'Scheduled', '2026-07-14 20:45:32', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(78, 28, 13, 'Completed', '2026-06-20 03:48:39', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(79, 14, 13, 'Scheduled', '2026-09-01 18:23:55', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(80, 6, 3, 'Scheduled', '2026-05-29 18:13:38', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(81, 50, 23, 'Scheduled', '2026-05-16 11:43:24', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(82, 15, 37, 'Scheduled', '2026-06-23 20:00:00', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(83, 21, 15, 'Completed', '2026-06-24 02:13:37', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(84, 22, 13, 'Cancelled', '2026-06-13 22:49:33', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(85, 8, 43, 'Scheduled', '2026-09-06 15:53:56', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(86, 49, 38, 'Cancelled', '2026-09-12 11:09:46', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(87, 47, 36, 'Scheduled', '2026-06-02 14:56:38', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(88, 14, 8, 'Completed', '2026-08-19 06:00:12', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(89, 25, 23, 'Scheduled', '2026-05-28 22:10:07', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(90, 28, 28, 'Cancelled', '2026-07-28 00:44:24', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(91, 34, 23, 'Cancelled', '2026-06-24 18:27:51', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(92, 26, 1, 'Completed', '2026-08-14 04:11:55', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(93, 25, 44, 'Scheduled', '2026-08-13 18:39:51', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(94, 10, 46, 'Cancelled', '2026-07-08 00:56:55', 60, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(95, 4, 49, 'Cancelled', '2026-05-24 00:43:43', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(96, 25, 2, 'Completed', '2026-06-27 16:21:07', 15, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(97, 39, 10, 'Cancelled', '2026-07-14 23:49:14', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(98, 36, 27, 'Scheduled', '2026-06-26 14:19:00', 15, '2026-06-16 01:49:34', '2026-06-16 04:08:01'),
(99, 50, 34, 'Completed', '2026-07-10 18:14:29', 45, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(100, 36, 14, 'Scheduled', '2026-05-18 17:16:28', 30, '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(101, 2, 12, 'Completed', '2026-06-18 14:13:00', 6, '2026-06-16 03:14:31', '2026-06-16 03:14:31'),
(102, 1, 9, 'Scheduled', '2026-06-18 14:24:00', 5, '2026-06-16 03:24:14', '2026-06-16 03:24:14'),
(103, 2, 9, 'Completed', '2026-06-17 14:39:00', 21, '2026-06-16 03:39:12', '2026-06-16 03:39:12'),
(104, 1, 11, 'Scheduled', '2026-06-26 14:43:00', 21, '2026-06-16 03:43:27', '2026-06-16 03:43:27'),
(105, 1, 12, 'Scheduled', '2026-06-16 15:04:00', 45, '2026-06-16 04:04:52', '2026-06-16 04:57:55'),
(106, 1, 8, 'Scheduled', '2026-06-16 15:58:00', 45, '2026-06-16 04:59:09', '2026-06-16 04:59:09'),
(107, 1, 6, 'Scheduled', '2026-06-16 17:02:00', 46, '2026-06-16 05:02:17', '2026-06-16 05:02:17'),
(108, 2, 8, 'Scheduled', '2026-06-17 16:36:00', 35, '2026-06-16 05:39:07', '2026-06-16 05:39:07'),
(109, 2, 3, 'Scheduled', '2026-06-17 09:42:00', 50, '2026-06-16 05:40:41', '2026-06-16 05:43:07');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'et molestiae', 'Nobis qui quia quasi dolor.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(2, 'ducimus et', 'Aperiam consequatur quia exercitationem maiores sit sit harum sit.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(3, 'nam blanditiis', 'Et quisquam at maxime labore eos deserunt dolorem.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(4, 'velit fugiat', 'Corrupti aut dicta sed aut.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(5, 'doloribus quisquam', 'Quibusdam neque debitis sunt sed omnis provident qui.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(6, 'eum consequatur', 'Minus est sapiente odio necessitatibus.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(7, 'expedita sed', 'Est vel cumque officia tenetur ab.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(8, 'aut rerum', 'Soluta laborum ut voluptatem necessitatibus.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(9, 'reprehenderit non', 'Aut in officiis sit rem consequatur.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(10, 'et corporis', 'Eaque porro autem vel ut.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(11, 'expedita optio', 'Reprehenderit qui inventore quaerat ducimus sit autem.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(12, 'et modi', 'Aut unde ex voluptas dolorem tenetur voluptatem dolor.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(13, 'aliquid voluptas', 'Fuga esse vel sit sapiente laborum omnis eos minus.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(14, 'non ad', 'Aliquam cum ab ut reprehenderit eos.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(15, 'aut qui', 'Commodi sit qui aperiam iure.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(16, 'minima ipsam', 'Ratione eum aut hic non.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(17, 'sunt pariatur', 'Veritatis consequatur quam quas occaecati ratione et.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(18, 'aliquam omnis', 'Dolore molestias dolores eius.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(19, 'autem voluptatem', 'Quasi alias laborum laudantium amet eius atque.', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(20, 'ea explicabo', 'Earum est ut assumenda dolorem autem quis quae.', '2026-06-16 01:49:34', '2026-06-16 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `department_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `specialization` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `department_id`, `name`, `specialization`, `email`, `phone`, `created_at`, `updated_at`) VALUES
(1, 11, 'Rogers Nolan', 'Dermatology', 'zander90@example.com', '+1-959-753-6802', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(2, 11, 'Germaine Roob Jr.', 'Pediatrics', 'bcrist@example.net', '820-910-6240', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(3, 5, 'Rosanna Hane', 'Cardiology', 'qhomenick@example.net', '+1-272-652-3224', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(4, 11, 'Cruz Dicki', 'Orthopedics', 'mdickens@example.org', '848-586-7231', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(5, 10, 'Steve Ratke', 'Dermatology', 'schmeler.shawn@example.com', '+14589474446', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(6, 11, 'Clair Reichel', 'Pediatrics', 'cole.weston@example.org', '540.498.0903', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(7, 5, 'Dr. Ruth Jenkins III', 'Pediatrics', 'keshawn.wuckert@example.org', '(651) 971-2461', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(8, 5, 'Charles Raynor', 'Dermatology', 'assunta.altenwerth@example.net', '(947) 499-9739', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(9, 11, 'Frederik Funk DDS', 'Neurology', 'gspinka@example.org', '+1.949.284.4318', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(10, 18, 'Nova Dicki', 'Orthopedics', 'brain.cole@example.net', '1-989-440-0968', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(11, 8, 'Flo Kling', 'Dermatology', 'ignatius61@example.org', '(432) 466-4636', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(12, 16, 'Aliza Jenkins', 'Orthopedics', 'zreichel@example.net', '1-848-590-4267', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(13, 20, 'Ova Lemke', 'Neurology', 'labadie.liliana@example.net', '(213) 529-8135', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(14, 4, 'Prof. Will Mann', 'Neurology', 'pearlie.yost@example.com', '740-559-3409', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(15, 4, 'Mr. Russ Goyette', 'Pediatrics', 'carlos.white@example.net', '+1-737-622-1420', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(16, 13, 'Darion Mante', 'Orthopedics', 'tyra42@example.com', '+1-248-344-6947', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(17, 14, 'Gay Emmerich II', 'Dermatology', 'eugene.senger@example.net', '315-339-4808', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(18, 12, 'Dr. Skylar Halvorson', 'Cardiology', 'nolan.reagan@example.com', '(651) 453-0059', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(19, 18, 'Dr. Remington Blanda', 'Neurology', 'esperanza.collins@example.org', '+1-646-767-6285', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(20, 7, 'Prof. Kennedy Pacocha PhD', 'Neurology', 'korey.bernhard@example.org', '+1-463-649-6285', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(21, 13, 'Payton Parisian', 'Orthopedics', 'kkshlerin@example.com', '925.615.9845', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(22, 10, 'General Grant', 'Dermatology', 'lauryn66@example.org', '(743) 969-2507', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(23, 15, 'Magnus Dickinson', 'Cardiology', 'igrady@example.net', '434.313.3851', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(24, 7, 'Antwan Hand', 'Cardiology', 'laura.kuhn@example.com', '918-865-6412', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(25, 6, 'Cassidy Parisian', 'Neurology', 'torphy.george@example.org', '773-676-6427', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(26, 9, 'Cortney Kirlin', 'Orthopedics', 'zulauf.molly@example.org', '458.423.0937', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(27, 18, 'Eleonore Luettgen', 'Pediatrics', 'hartmann.lorenzo@example.com', '+1.678.789.3760', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(28, 4, 'Genesis Parisian', 'Dermatology', 'jbeatty@example.com', '+1 (732) 335-9198', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(29, 2, 'Patrick Greenholt', 'Pediatrics', 'lucie.dach@example.net', '445.919.9368', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(30, 17, 'Nicole Stamm', 'Neurology', 'niko93@example.net', '+1 (820) 264-1203', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(31, 3, 'Shawna Sauer PhD', 'Pediatrics', 'pbaumbach@example.com', '1-743-520-3580', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(32, 5, 'Mrs. Opal Stamm Jr.', 'Orthopedics', 'maritza98@example.org', '1-814-473-8645', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(33, 5, 'Francisco Fahey Sr.', 'Dermatology', 'jacobi.warren@example.org', '843-886-2420', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(34, 20, 'Rose Gutmann', 'Orthopedics', 'brigitte51@example.org', '+14427564501', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(35, 10, 'Grover Bins MD', 'Dermatology', 'cora.mertz@example.org', '+15347422758', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(36, 19, 'Prof. Gardner Hansen', 'Pediatrics', 'beaulah75@example.org', '1-534-572-6910', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(37, 18, 'Dr. Alejandrin Hirthe', 'Orthopedics', 'gfriesen@example.net', '757.912.4490', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(38, 8, 'Dr. Jena Kovacek', 'Dermatology', 'allene54@example.com', '201.308.8252', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(39, 10, 'Miss Noelia Klocko', 'Pediatrics', 'wisozk.clementina@example.org', '+1-959-641-2019', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(40, 12, 'Prof. Travis Stehr', 'Neurology', 'fanny45@example.org', '(872) 875-5602', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(41, 17, 'Reed Abbott', 'Neurology', 'dimitri14@example.net', '1-534-477-9075', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(42, 20, 'Hermann Macejkovic', 'Orthopedics', 'arne45@example.org', '(541) 930-9742', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(43, 6, 'Rory Wolff', 'Dermatology', 'lesly30@example.net', '689.472.4181', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(44, 8, 'Bert Greenholt', 'Pediatrics', 'luettgen.chanelle@example.org', '+1 (757) 465-2234', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(45, 20, 'Reanna Tromp', 'Cardiology', 'ritchie.simone@example.net', '1-814-766-2165', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(46, 4, 'Concepcion Rippin', 'Neurology', 'vdickens@example.org', '(564) 458-3222', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(47, 9, 'Dr. Brooklyn Emmerich', 'Dermatology', 'tom.macejkovic@example.net', '+1.956.935.9541', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(48, 3, 'Lorine Roob II', 'Pediatrics', 'gharber@example.net', '+1-986-673-1987', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(49, 13, 'Kavon Bins', 'Dermatology', 'bertrand21@example.net', '+1-838-401-6190', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(50, 2, 'Mr. Trevion Bradtke Jr.', 'Orthopedics', 'loren02@example.net', '+1.513.601.0821', '2026-06-16 01:49:34', '2026-06-16 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2026_06_16_062533_create_departments_table', 1),
(6, '2026_06_16_062534_create_doctors_table', 1),
(7, '2026_06_16_062607_create_patients_table', 1),
(8, '2026_06_16_063446_create_appointments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `email`, `phone`, `dob`, `created_at`, `updated_at`) VALUES
(1, 'Mrs. Alberta Williamson', 'sadye.cronin@example.net', '0038147982', '2001-12-14', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(2, 'Haven Padberg', 'jblanda@example.com', '6452290362', '1974-10-24', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(3, 'Gabrielle Ward Sr.', 'micah26@example.com', '5586353632', '2023-09-12', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(4, 'Kenyatta Stroman', 'odell94@example.org', '0922670343', '1986-12-20', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(5, 'Fay Collins', 'tpagac@example.com', '6157895812', '1992-08-02', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(6, 'Dr. Khalil Lynch DVM', 'stella04@example.com', '2809677000', '2024-07-30', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(7, 'Kyle Dare II', 'barrett.schumm@example.org', '2968888036', '2008-03-27', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(8, 'Miss Eleanora Sporer', 'janelle16@example.org', '8322443002', '2022-05-14', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(9, 'Eden Cole', 'hilario.nolan@example.com', '8274142815', '2014-06-14', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(10, 'Brennan Torp', 'allie22@example.net', '2646618825', '1975-07-24', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(11, 'Dr. Leora Cummings II', 'ivy69@example.org', '2794208592', '1989-04-30', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(12, 'Ole Waelchi', 'doug.hoppe@example.net', '3642878449', '2002-01-04', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(13, 'Iliana O\'Connell', 'leland.zemlak@example.com', '7621467584', '2009-01-20', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(14, 'Jailyn Walker II', 'duncan.weber@example.org', '6490967193', '1984-04-11', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(15, 'Destiny O\'Connell', 'darwin43@example.com', '3456247328', '2013-08-22', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(16, 'Eloisa O\'Kon', 'nlowe@example.net', '3070577248', '1989-05-07', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(17, 'Dakota Ferry', 'orunte@example.org', '0331240673', '1993-11-28', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(18, 'Magnolia Little', 'johnston.johnathan@example.com', '9036178192', '1992-01-01', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(19, 'Dr. Forest Simonis', 'fahey.guiseppe@example.net', '2798514379', '1987-03-02', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(20, 'Gia Hettinger', 'qchamplin@example.com', '6419139139', '1997-06-08', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(21, 'Prof. Dolores O\'Reilly I', 'vincenzo85@example.com', '6551929424', '1977-11-26', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(22, 'Ruby Haley', 'monahan.amely@example.org', '2443174843', '2012-04-29', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(23, 'Prof. Lexie Runolfsson', 'bosco.justyn@example.org', '6020323223', '1979-03-02', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(24, 'Dr. Ellsworth Schamberger III', 'shyann.nitzsche@example.net', '2308281753', '1992-12-20', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(25, 'Prof. Eriberto Pfannerstill I', 'jaylen.schinner@example.com', '5529996860', '2002-02-19', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(26, 'Ivy Champlin', 'madonna.batz@example.com', '2345989981', '2018-04-03', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(27, 'Willard O\'Reilly', 'gquitzon@example.net', '8322323743', '1983-03-20', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(28, 'Mr. Gene Franecki', 'irutherford@example.net', '6921563846', '1987-06-23', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(29, 'Kenton Russel', 'meda.osinski@example.net', '4349981232', '2022-05-19', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(30, 'Carrie Vandervort', 'petra.rutherford@example.org', '6734994206', '2024-08-21', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(31, 'Arden Blanda', 'alaina.beatty@example.org', '1702334270', '1986-09-29', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(32, 'Ila Haley', 'keon78@example.com', '9554912386', '1986-03-31', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(33, 'Dr. Elenor Hammes DVM', 'schaefer.karli@example.net', '4932636003', '2004-12-02', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(34, 'Rigoberto Schmeler', 'maybell.okeefe@example.net', '1138069183', '2023-06-19', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(35, 'Jessica Shields', 'donato84@example.net', '3494315891', '1974-10-09', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(36, 'Stephany Swift IV', 'aklocko@example.com', '2137500592', '1991-09-20', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(37, 'Flo Kozey', 'cummings.stewart@example.org', '9292783877', '1971-08-06', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(38, 'Clare Koelpin III', 'kub.yesenia@example.net', '9052165592', '1982-02-16', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(39, 'Bertram Lang', 'nash.murazik@example.org', '6533394008', '1983-04-30', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(40, 'Curtis Kutch', 'lavon81@example.net', '9369882385', '1975-04-25', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(41, 'Mr. Domenico Terry', 'amalia.gislason@example.net', '7979525211', '2011-06-08', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(42, 'Dr. Margret Marvin DDS', 'hettie18@example.com', '6318757382', '2008-09-08', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(43, 'Mrs. Annamae Flatley I', 'boehm.reagan@example.com', '3142460285', '1977-09-14', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(44, 'Vito Ebert', 'reva13@example.net', '9585937054', '2022-09-23', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(45, 'Vena Wilkinson', 'lucy77@example.org', '2295739375', '1978-06-19', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(46, 'Zack Ryan', 'ruben.tremblay@example.org', '5267514033', '1998-03-09', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(47, 'Vincenza Keebler', 'darrick.herzog@example.com', '9139806175', '2016-01-21', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(48, 'Prof. Toby Feest', 'shana86@example.com', '3417049587', '2026-06-14', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(49, 'Chloe Sauer', 'greenholt.hermann@example.org', '9766762192', '1970-01-23', '2026-06-16 01:49:34', '2026-06-16 01:49:34'),
(50, 'Miss Jacquelyn Hills V', 'aurelie36@example.com', '2037314349', '2002-01-05', '2026-06-16 01:49:34', '2026-06-16 01:49:34');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointments`
--
ALTER TABLE `appointments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appointments_doctor_id_foreign` (`doctor_id`),
  ADD KEY `appointments_patient_id_foreign` (`patient_id`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departments_name_unique` (`name`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `doctors_email_unique` (`email`),
  ADD KEY `doctors_department_id_foreign` (`department_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `patients_email_unique` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `appointments`
--
ALTER TABLE `appointments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT for table `departments`
--
ALTER TABLE `departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointments`
--
ALTER TABLE `appointments`
  ADD CONSTRAINT `appointments_doctor_id_foreign` FOREIGN KEY (`doctor_id`) REFERENCES `doctors` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `appointments_patient_id_foreign` FOREIGN KEY (`patient_id`) REFERENCES `patients` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `doctors`
--
ALTER TABLE `doctors`
  ADD CONSTRAINT `doctors_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `departments` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
