-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 05, 2024 at 05:17 PM
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
-- Database: `vbamspythondb`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add user', 6, 'add_customuser'),
(22, 'Can change user', 6, 'change_customuser'),
(23, 'Can delete user', 6, 'delete_customuser'),
(24, 'Can view user', 6, 'view_customuser'),
(25, 'Can add driver', 7, 'add_driver'),
(26, 'Can change driver', 7, 'change_driver'),
(27, 'Can delete driver', 7, 'delete_driver'),
(28, 'Can view driver', 7, 'view_driver'),
(29, 'Can add booking', 8, 'add_booking'),
(30, 'Can change booking', 8, 'change_booking'),
(31, 'Can delete booking', 8, 'delete_booking'),
(32, 'Can view booking', 8, 'view_booking'),
(33, 'Can add tracking', 9, 'add_tracking'),
(34, 'Can change tracking', 9, 'change_tracking'),
(35, 'Can delete tracking', 9, 'delete_tracking'),
(36, 'Can view tracking', 9, 'view_tracking');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(5, 'sessions', 'session'),
(8, 'vbamsapp', 'booking'),
(6, 'vbamsapp', 'customuser'),
(7, 'vbamsapp', 'driver'),
(9, 'vbamsapp', 'tracking');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-07-31 11:22:24.640369'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-07-31 11:22:24.711416'),
(3, 'auth', '0001_initial', '2024-07-31 11:22:24.945177'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-07-31 11:22:25.007830'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-07-31 11:22:25.017804'),
(6, 'auth', '0004_alter_user_username_opts', '2024-07-31 11:22:25.027776'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-07-31 11:22:25.040215'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-07-31 11:22:25.044205'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-07-31 11:22:25.054179'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-07-31 11:22:25.077186'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-07-31 11:22:25.093904'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-07-31 11:22:25.104877'),
(13, 'auth', '0011_update_proxy_permissions', '2024-07-31 11:22:25.118310'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-07-31 11:22:25.132066'),
(15, 'vbamsapp', '0001_initial', '2024-07-31 11:22:25.705285'),
(16, 'admin', '0001_initial', '2024-07-31 11:22:25.872877'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-07-31 11:22:25.907782'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-07-31 11:22:25.920117'),
(19, 'sessions', '0001_initial', '2024-07-31 11:22:25.951419'),
(20, 'vbamsapp', '0002_alter_booking_assignto_alter_customuser_user_type', '2024-07-31 11:43:44.929877'),
(21, 'vbamsapp', '0003_alter_customuser_user_type', '2024-07-31 11:48:03.012368'),
(22, 'vbamsapp', '0004_tracking', '2024-08-01 07:07:02.007624'),
(23, 'vbamsapp', '0005_alter_booking_email_alter_customuser_user_type', '2024-08-08 05:57:16.380680');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('yjv5u6ityx8zkl1ewosw4tx2njo2kdlh', '.eJxVjDsOwjAQBe_iGllZ_01JzxmsXXtNAsiR4qRC3B0ipYD2zcx7iYTbOqat85KmIs4CxOl3I8wPbjsod2y3Wea5rctEclfkQbu8zoWfl8P9Oxixj99a8cBODxGIQzXgQnXBKwsqWoweSRmdCSFCrBWKqpV8ZquK9s5nT0a8P83dN7A:1slVbT:TpaR6LT2Wj48Wf0Nl_uUaCf1TZB_doh8TMLBZvzk3Uw', '2024-09-17 15:37:59.970756');

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_booking`
--

CREATE TABLE `vbamsapp_booking` (
  `id` bigint(20) NOT NULL,
  `bookingnumber` int(11) NOT NULL,
  `fullname` varchar(250) NOT NULL,
  `email` varchar(254) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `pickuplocation` varchar(250) NOT NULL,
  `destination` varchar(250) NOT NULL,
  `pickupdate` varchar(250) NOT NULL,
  `pickuptime` varchar(250) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `bookingdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `assignto_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vbamsapp_booking`
--

INSERT INTO `vbamsapp_booking` (`id`, `bookingnumber`, `fullname`, `email`, `mobilenumber`, `pickuplocation`, `destination`, `pickupdate`, `pickuptime`, `remark`, `status`, `bookingdate_at`, `updated_at`, `assignto_id`) VALUES
(1, 752695687, 'Ram Kumar', 'ram@gmail.com', '7894561236', 'GIP Mall Noida', 'vdh pvt ltd', '07/31/2024', '18:45', 'Task Completed', 'Completed', '2024-07-31 11:44:35.294252', '2024-08-01 07:34:43.668133', 1),
(2, 907811931, 'Rakesh Mishra', 'rakesh@gmail.com', '6547879789', 'RDC Mall', 'xyz company', '07/31/2024', '21:48', 'On the way', 'On The Way', '2024-07-31 11:48:42.756444', '2024-08-01 11:50:57.605618', 2),
(3, 174875822, 'Mohan Das', 'mohan@gmail.com', '7894561239', 'Goregaon District', 'Vaishali', '08/01/2024', '18:50', 'Task Completed', 'Completed', '2024-07-31 11:49:42.057308', '2024-08-01 07:43:25.443336', 1),
(6, 652255881, 'Test', 'test@gmail.com', '711225555', 'Goregaon District', 'vdh pvt ltd', '08/01/2024', '11:43', 'Driver is on the way', 'On The Way', '2024-08-04 05:42:48.002995', '2024-09-02 06:45:36.985641', 1),
(7, 510798733, 'Manish Kumar', 'manish@gmail.com', '1234569879', 'Goregaon District', 'Vasant Vihar', '07/31/2024', '22:15', 'Approved', 'Approved', '2024-08-07 05:15:10.118094', '2024-09-02 06:16:20.066010', 1),
(9, 742571345, 'Rakesh Sharma', 'rakesh@gmail.com', '5567891236', 'GIP Mall Noida', 'vdh pvt ltd', '08/07/2024', '11:30', 'NA', 'Rejected', '2024-08-08 05:57:57.398264', '2024-09-03 15:38:19.888622', NULL),
(10, 834604619, 'Amit Kumar', 'amit@t.com', '1414142563', 'Nh-91 Ghaziabad UP', 'Hyndai Motors Ghaziabad', '09/03/2024', '22:55', 'Car Towed Succesfully', 'Completed', '2024-09-03 15:05:09.170621', '2024-09-03 15:07:58.886520', 1);

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_customuser`
--

CREATE TABLE `vbamsapp_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  `profile_pic` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vbamsapp_customuser`
--

INSERT INTO `vbamsapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`, `profile_pic`) VALUES
(1, 'pbkdf2_sha256$390000$o9MgHBSiW3QAYs5aFAbhue$Lld3UeoGKE90iUgbCOTijt5SyT1bbLZN0EztnLHUXgI=', '2024-09-03 15:37:59.966269', 1, 'admin', 'Admin', 'Sample', 'admin@gmail.com', 1, 1, '2024-07-31 11:23:40.307014', '1', 'media/profile_pic/software-engineer_1.png'),
(2, 'pbkdf2_sha256$390000$ulctzJPc1WoQE9xygLYJC7$pI2M8rTZ9FBv7q/uJDl1U83OXlV6qG/8gobWf7rDo7E=', '2024-09-03 15:11:00.591456', 0, 'abir123', 'Test', 'Sample', 'abir@gmail.com', 0, 1, '2024-07-31 11:32:04.965614', '2', 'media/profile_pic/face1_aiaN1l5.jpg'),
(3, 'pbkdf2_sha256$720000$Dq0iuyG23dQmMfm8V9MhF8$EFT510CCGgKMVQAo2oW2lYiOn3PLn+Xgjjd0use+ruM=', '2024-08-01 11:50:42.475300', 0, 'rahul123', 'Rahul', 'Kumar', 'rahul@gmail.com', 0, 1, '2024-07-31 11:32:52.102171', '2', 'media/profile_pic/face22_upDLAIF.jpg'),
(4, 'pbkdf2_sha256$720000$PiylUikpr7CnvuoHMZv9kx$aITKWLcPnNZ8or6stjYcS56y5yfeRqREhnQqmmHSYCs=', NULL, 0, 'rak123', 'Rakesh', 'Kumar', 'rakesh@gmail.com', 0, 1, '2024-07-31 11:34:20.674406', '2', 'media/profile_pic/face18.jpg'),
(5, 'pbkdf2_sha256$720000$dWOx6NnBWzHcCX21xLrmXy$lAbjbEkEUuUdN62zui9p5gI0w1D0/qyuKHNjdN4Hjig=', NULL, 0, 'tony123', 'Tony', 'Ferandish', 'tony@gmail.com', 0, 1, '2024-07-31 11:35:36.514025', '2', 'media/profile_pic/face7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_customuser_groups`
--

CREATE TABLE `vbamsapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_customuser_user_permissions`
--

CREATE TABLE `vbamsapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_driver`
--

CREATE TABLE `vbamsapp_driver` (
  `id` bigint(20) NOT NULL,
  `mobilenumber` varchar(11) NOT NULL,
  `driverid` varchar(6) NOT NULL,
  `address` varchar(250) NOT NULL,
  `joinigdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `admin_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vbamsapp_driver`
--

INSERT INTO `vbamsapp_driver` (`id`, `mobilenumber`, `driverid`, `address`, `joinigdate_at`, `updated_at`, `admin_id`) VALUES
(1, '8979778798', 'vba123', 'O-908, GHU, Block-7, Ghaziabad', '2024-07-31 11:32:05.741538', '2024-09-03 15:10:51.184378', 2),
(2, '7894561236', 'vba124', 'P-908, New Delhi Laxmi Nagar', '2024-07-31 11:32:52.880459', '2024-07-31 11:32:52.880459', 3),
(3, '74654987123', 'vba125', 'B 3-4 Shivala Harinagar Delhi', '2024-07-31 11:34:21.447004', '2024-07-31 11:34:21.447004', 4),
(4, '4456412356', 'vba126', 'L-708 Dhara Apartment Mohan Nagar Ghazibad', '2024-07-31 11:35:37.281778', '2024-09-03 15:08:24.858608', 5);

-- --------------------------------------------------------

--
-- Table structure for table `vbamsapp_tracking`
--

CREATE TABLE `vbamsapp_tracking` (
  `id` bigint(20) NOT NULL,
  `remark` varchar(250) NOT NULL,
  `status` varchar(250) NOT NULL,
  `creationdate_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `booking_id_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vbamsapp_tracking`
--

INSERT INTO `vbamsapp_tracking` (`id`, `remark`, `status`, `creationdate_at`, `updated_at`, `booking_id_id`) VALUES
(1, 'Task Completed', 'Completed', '2024-08-01 07:33:36.376084', '2024-08-01 07:34:43.678079', 1),
(2, 'On the way', 'On The Way', '2024-08-01 07:43:04.989344', '2024-08-01 07:43:04.989344', 3),
(3, 'Task Completed', 'Completed', '2024-08-01 07:43:25.452312', '2024-08-01 07:43:25.452312', 3),
(4, 'On the way', 'On The Way', '2024-08-01 11:50:57.616155', '2024-08-01 11:50:57.616155', 2),
(5, 'Driver is on the way', 'On The Way', '2024-09-02 06:45:36.999191', '2024-09-02 06:45:36.999191', 6),
(6, 'I am on the way', 'On The Way', '2024-09-03 15:07:40.551321', '2024-09-03 15:07:40.551321', 10),
(7, 'Car Towed Succesfully', 'Completed', '2024-09-03 15:07:58.893526', '2024-09-03 15:07:58.893526', 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_vbamsapp_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `vbamsapp_booking`
--
ALTER TABLE `vbamsapp_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobilenumber` (`mobilenumber`),
  ADD KEY `vbamsapp_booking_assignto_id_6bfa2f9a_fk_vbamsapp_driver_id` (`assignto_id`);

--
-- Indexes for table `vbamsapp_customuser`
--
ALTER TABLE `vbamsapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vbamsapp_customuser_groups`
--
ALTER TABLE `vbamsapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vbamsapp_customuser_groups_customuser_id_group_id_a3c4d289_uniq` (`customuser_id`,`group_id`),
  ADD KEY `vbamsapp_customuser_groups_group_id_af387192_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `vbamsapp_customuser_user_permissions`
--
ALTER TABLE `vbamsapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vbamsapp_customuser_user_customuser_id_permission_2ec6516e_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `vbamsapp_customuser__permission_id_4a6dd3ce_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `vbamsapp_driver`
--
ALTER TABLE `vbamsapp_driver`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `mobilenumber` (`mobilenumber`),
  ADD UNIQUE KEY `driverid` (`driverid`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `vbamsapp_tracking`
--
ALTER TABLE `vbamsapp_tracking`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vbamsapp_tracking_booking_id_id_40a3f36f_fk_vbamsapp_booking_id` (`booking_id_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `vbamsapp_booking`
--
ALTER TABLE `vbamsapp_booking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vbamsapp_customuser`
--
ALTER TABLE `vbamsapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vbamsapp_customuser_groups`
--
ALTER TABLE `vbamsapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbamsapp_customuser_user_permissions`
--
ALTER TABLE `vbamsapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `vbamsapp_driver`
--
ALTER TABLE `vbamsapp_driver`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vbamsapp_tracking`
--
ALTER TABLE `vbamsapp_tracking`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_vbamsapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `vbamsapp_customuser` (`id`);

--
-- Constraints for table `vbamsapp_booking`
--
ALTER TABLE `vbamsapp_booking`
  ADD CONSTRAINT `vbamsapp_booking_assignto_id_6bfa2f9a_fk_vbamsapp_driver_id` FOREIGN KEY (`assignto_id`) REFERENCES `vbamsapp_driver` (`id`);

--
-- Constraints for table `vbamsapp_customuser_groups`
--
ALTER TABLE `vbamsapp_customuser_groups`
  ADD CONSTRAINT `vbamsapp_customuser__customuser_id_f4f6cfcd_fk_vbamsapp_` FOREIGN KEY (`customuser_id`) REFERENCES `vbamsapp_customuser` (`id`),
  ADD CONSTRAINT `vbamsapp_customuser_groups_group_id_af387192_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `vbamsapp_customuser_user_permissions`
--
ALTER TABLE `vbamsapp_customuser_user_permissions`
  ADD CONSTRAINT `vbamsapp_customuser__customuser_id_a7683c5b_fk_vbamsapp_` FOREIGN KEY (`customuser_id`) REFERENCES `vbamsapp_customuser` (`id`),
  ADD CONSTRAINT `vbamsapp_customuser__permission_id_4a6dd3ce_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `vbamsapp_driver`
--
ALTER TABLE `vbamsapp_driver`
  ADD CONSTRAINT `vbamsapp_driver_admin_id_86bc5490_fk_vbamsapp_customuser_id` FOREIGN KEY (`admin_id`) REFERENCES `vbamsapp_customuser` (`id`);

--
-- Constraints for table `vbamsapp_tracking`
--
ALTER TABLE `vbamsapp_tracking`
  ADD CONSTRAINT `vbamsapp_tracking_booking_id_id_40a3f36f_fk_vbamsapp_booking_id` FOREIGN KEY (`booking_id_id`) REFERENCES `vbamsapp_booking` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
