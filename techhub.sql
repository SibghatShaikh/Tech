-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2021 at 11:54 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `techhub`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE `accessories` (
  `AccId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `accessories`
--

INSERT INTO `accessories` (`AccId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(9001, 'WALTON WKS004WN KEYBOARD', 240, 'Skyland', 'null'),
(9002, 'RK ROYAL KLUDGE RK71 RGB KEYBOARD (BLACK)', 3999, 'TechLand', 'https://techbroll.com/2019/04/royal-kludge-rk71-mechanical-keyboard-review.html#:~:text=Design%20and%20Construction,have%20the%20royal%20kludge%20logo.'),
(9003, 'Razer Huntsman Elite Opto-Mechanical Keyboard', 16300, 'StarTech', 'https://www.youtube.com/watch?v=sVZXxbdLn7Q'),
(9004, 'WALTON WMS025WN WIRED MOUSE', 175, 'TechLand', 'null'),
(9005, 'RAZER VIPER MINI ULTRA-LIGHTWEIGHT GAMING MOUSE', 2299, 'Skyland', 'https://www.youtube.com/watch?v=esQhZd31Jt4'),
(9006, 'Razer Viper Ultimate RGB Wireless Gaming Mouse', 10300, 'StarTech', 'https://www.rtings.com/mouse/reviews/razer/viper-ultimate'),
(9007, 'A4TECH BLOODY P91S RGB GAMING MOUSE', 1800, 'StarTech', 'https://www.youtube.com/watch?v=vV0l_Wljj1Q'),
(9008, 'A4TECH BLOODY J95S 2 FIRE HIGH PRECISE RGB GAMING MOUSE', 2100, 'TechLand', 'https://www.youtube.com/watch?v=skk9LbJE7YE'),
(9009, 'GIGABYTE AORUS M2 6200 DPI OPTICAL RGB GAMING MOUSE', 1200, 'TechLand', 'https://www.youtube.com/watch?v=ZfERTC7Z5eY'),
(9010, 'CORSAIR HARPOON RGB WIRELESS GAMING MOUSE', 4800, 'StarTech', ' https://www.youtube.com/watch?v=1wQWwvbpEUY'),
(9011, 'RAPOO V500 PRO MECHANICAL GAMING KEYBOARD (YELLOW BLUE)', 3300, 'StartTech', 'https://www.youtube.com/watch?v=B9mFDwSt7vM'),
(9012, 'ASUS TUF GAMING K1 RGB KEYBOARD', 3700, 'TechLand', ' https://www.youtube.com/watch?v=ngCWb0jxUIE'),
(9013, 'GIGABYTE AORUS K1 MECHANICAL GAMING KEYBOARD (CHERRY MX RED)', 7000, ' TechLand', ' https://www.youtube.com/watch?v=bhLN58vPpGw'),
(9014, ' HAVIT H2028U USB 7.1 GAMING HEADSET (BLACK) ', 2200, 'StarTech', 'https://www.youtube.com/watch?v=fsEF-gR3tTk'),
(9015, 'FANTECH HQ52S TONE PLUS RGB GAMING HEADPHONE', 1350, 'TechHub', ' https://www.youtube.com/watch?v=EQmMbB-OI38'),
(9016, 'CORSAIR VOID RGB ELITE 7.1 SURROUND SOUND USB PREMIUM GAMING HEADSET (WHITE)', 7500, 'StarTech', 'https://www.youtube.com/watch?v=PxFUjLXo6xA');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$ChmqfsuQ6pBdOnSzLEgN51$Cc1Pw9MTtdQJg9zcJEX/Om71g+cyv81y8RdhVAJaPM4=', '2021-05-24 21:37:24.471686', 1, 'Sibghat', '', '', 'sibghatrshaikh@gmail.com', 1, 1, '2021-05-24 21:36:32.472601'),
(2, 'pbkdf2_sha256$260000$LSpfomqlfQeuRIOZLpRlsR$TtpDEjqmCTAC45q5Sy07Hvx1qGDFATK8d8VtF1FPHw4=', NULL, 1, 'Sayed', '', '', 'sayed.harun@northsouth.edu', 1, 1, '2021-05-24 21:48:07.000000'),
(3, 'pbkdf2_sha256$260000$FdSX4AenKeoKm0Ad2ernAF$xnU6KcUxU43OsTFuoN+NcFDxWW0hPsuHo7U62gEFuNE=', NULL, 1, 'Newaz', '', '', 'mohammad.newaz@northsouth.edu', 1, 1, '2021-05-24 21:49:26.000000');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `benchmark_gpu`
--

CREATE TABLE `benchmark_gpu` (
  `GpuId` int(11) NOT NULL,
  `BenchmarkValue` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `benchmark_gpu`
--

INSERT INTO `benchmark_gpu` (`GpuId`, `BenchmarkValue`) VALUES
(3001, 3.4),
(3002, 12.9),
(3003, 14.7),
(3004, 22.7),
(3005, 31),
(3006, 43.2),
(3007, 46.5),
(3008, 60.1),
(3009, 70.7),
(3010, 76.2),
(3011, 89),
(3012, 131),
(3013, 87),
(3014, 118),
(3015, 153);

-- --------------------------------------------------------

--
-- Table structure for table `benchmark_processor`
--

CREATE TABLE `benchmark_processor` (
  `ProcessorId` int(11) NOT NULL,
  `BenchmarkValue` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `benchmark_processor`
--

INSERT INTO `benchmark_processor` (`ProcessorId`, `BenchmarkValue`) VALUES
(4001, 71),
(4002, 79.8),
(4003, 84),
(4004, 85.3),
(4005, 87.8),
(4006, 97.5),
(4007, 98.4),
(4008, 97.5),
(4009, 102),
(4010, 76.5),
(4011, 84.6),
(4012, 83.4),
(4013, 96.5),
(4014, 87),
(4015, 99.1),
(4016, 101);

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `Serial` int(8) NOT NULL,
  `CategoryName` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`Serial`, `CategoryName`) VALUES
(1, 'Processor'),
(2, 'Graphics Card'),
(3, 'RAM'),
(4, 'Hard Drive and SSD'),
(5, 'Monitor'),
(6, 'Power Supply'),
(7, 'Motherboard'),
(8, 'Accessories');

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
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2021-05-24 21:45:22.517604', '5017', 'Psu object (5017)', 1, '[{\"added\": {}}]', 9, 1),
(2, '2021-05-24 21:46:03.107003', '5017', 'Psu object (5017)', 3, '', 9, 1),
(3, '2021-05-24 21:48:07.593690', '2', 'Sayed', 1, '[{\"added\": {}}]', 4, 1),
(4, '2021-05-24 21:49:27.095379', '3', 'Newaz', 1, '[{\"added\": {}}]', 4, 1),
(5, '2021-05-24 21:50:03.676620', '3', 'Newaz', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\"]}}]', 4, 1),
(6, '2021-05-24 21:50:44.465839', '2', 'Sayed', 2, '[{\"changed\": {\"fields\": [\"Email address\", \"Staff status\", \"Superuser status\"]}}]', 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'Tech', 'accessories'),
(8, 'Tech', 'gpu'),
(9, 'Tech', 'psu');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2021-05-08 18:19:23.379927'),
(2, 'auth', '0001_initial', '2021-05-08 18:19:24.105040'),
(3, 'admin', '0001_initial', '2021-05-08 18:19:24.303376'),
(4, 'admin', '0002_logentry_remove_auto_add', '2021-05-08 18:19:24.314723'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2021-05-08 18:19:24.325387'),
(6, 'contenttypes', '0002_remove_content_type_name', '2021-05-08 18:19:24.395351'),
(7, 'auth', '0002_alter_permission_name_max_length', '2021-05-08 18:19:24.470700'),
(8, 'auth', '0003_alter_user_email_max_length', '2021-05-08 18:19:24.530248'),
(9, 'auth', '0004_alter_user_username_opts', '2021-05-08 18:19:24.545522'),
(10, 'auth', '0005_alter_user_last_login_null', '2021-05-08 18:19:24.608327'),
(11, 'auth', '0006_require_contenttypes_0002', '2021-05-08 18:19:24.608327'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2021-05-08 18:19:24.623628'),
(13, 'auth', '0008_alter_user_username_max_length', '2021-05-08 18:19:24.639284'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2021-05-08 18:19:24.654903'),
(15, 'auth', '0010_alter_group_name_max_length', '2021-05-08 18:19:24.733296'),
(16, 'auth', '0011_update_proxy_permissions', '2021-05-08 18:19:24.748914'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2021-05-08 18:19:24.764536'),
(18, 'sessions', '0001_initial', '2021-05-08 18:19:24.811401');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('p6l3m4z19mr5jxdlbm5emwmizmz32xrk', '.eJxVjEEOwiAQRe_C2hCYlgFcuvcMZOgMUjVtUtqV8e7apAvd_vfef6lE21rT1mRJI6uzsur0u2UaHjLtgO803WY9zNO6jFnvij5o09eZ5Xk53L-DSq1-6z4GE72UyMaV6JhhAITsCAoTMheLPXski0hdsJkxgA8C4gyIdE69P-c-N-Q:1llITy:medI9aHnrJe9OOKW-8cziwaRxDlG41WZAskCgEMu0uo', '2021-06-07 21:51:30.485780');

-- --------------------------------------------------------

--
-- Table structure for table `gpu`
--

CREATE TABLE `gpu` (
  `GpuId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL,
  `BenchmarkValue` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `gpu`
--

INSERT INTO `gpu` (`GpuId`, `Model`, `Price`, `ShopName`, `ReviewLink`, `BenchmarkValue`) VALUES
(3001, 'COLORFUL GEFORCE GT710-2GD3-V 2GB GRAPHICS CARD', 3900, 'TechLand', 'https://www.youtube.com/watch?v=r3-_nYkYWFY', 3.4),
(3002, 'BIOSTAR RADEON RX550 2GB GDDR5 GRAPHICS CARD', 7000, 'TechLand', 'https://www.amazon.com/product-reviews/B0887VC9HK?reviewerType=all_reviews', 12.9),
(3003, 'ZOTAC GeForce GT 1030 Low Profile 2GB GDDR5 Graphics Card', 7300, 'StarTech', 'https://www.notebookcheck.net/Zotac-GeForce-GT-1030-Review.229134.0.html', 14.7),
(3004, 'XFX RADEON RX 560 4GB GRAPHICS CARD', 10200, 'TechLand', 'https://versus.com/en/xfx-radeon-rx-560-single-fan-oc-4gb', 22.7),
(3005, 'COLORFUL IGAME GEFORCE GTX 1050TI VULCAN U 4GB GRAPHICS CARD', 14300, 'TechLand', 'https://tech4gamers.com/colorful-igame-geforce-gtx-1050ti-vulkan-u-4g-ec/', 31),
(3006, 'ZOTAC GAMING GEFORCE GTX 1650 OC 4GB GRAPHICS CARD', 13800, 'TechLand', 'https://www.guru3d.com/articles-pages/zotac-geforce-gtx-1650-gaming-4gb-review,1.html', 43.2),
(3007, 'Sapphire Pulse Radeon RX 570 4GB GDDR5 HDMI DP Graphics card', 12700, 'StarTech', 'https://hexus.net/tech/reviews/graphics/108460-sapphire-radeon-rx-570-pulse-oc-4gb/', 46.5),
(3008, 'MSI GeForce GTX 1650 Super Ventus XS OC 4GB Graphics Card', 16500, 'StarTech', 'https://versus.com/en/msi-geforce-gtx-1650-super-ventus-xs-oc', 60.1),
(3009, 'ZOTAC GAMING GEFORCE GTX 1660 SUPER TWIN FAN 6GB GRAPHICS CARD', 44000, 'TechLand', 'https://www.pcmag.com/reviews/zotac-geforce-gtx-1660-super-twin-fan', 70.7),
(3010, 'Colorful iGame GeForce 1660 TI ULTRA 6GB-V Graphics Card', 27500, 'StarTech', 'https://versus.com/en/colorful-igame-geforce-gtx-1660-ti-ultra', 76.2),
(3011, 'ZOTAC GAMING GEFORCE RTX 2060 AMP 6GB GRAPHICS CARD', 50500, 'TechLand', 'https://www.pcmag.com/reviews/zotac-geforce-rtx-2060-amp', 89),
(3012, 'GALAX GEFORCE RTX 3060 1-CLICK OC 12GB GDDR6 GRAPHICS CARD', 65000, 'StarTech', 'https://www.youtube.com/watch?v=M4PVeM50wL8', 131),
(3013, 'GIGABYTE RADEON RX 5600 XT GAMING OC 6GB GRAPHICS CARD', 52000, 'TechLand', 'https://www.tomshardware.com/reviews/gigabyte-rx-5600-xt-gaming-oc-6g', 87),
(3014, 'Sapphire PULSE AMD Radeon RX 6700 XT 12GB RDNA GDDR6 Graphics Card', 82900, 'StarTech', 'https://www.pcgamer.com/sapphire-nitro-plus-radeon-rx-6700-xt-review-benchmarks/', 118),
(3015, 'Gigabyte GeForce RTX 3070 Gaming OC 8GB Graphics Card', 100000, 'TechLand', 'https://www.techpowerup.com/review/gigabyte-geforce-rtx-3070-gaming-oc/', 153);

-- --------------------------------------------------------

--
-- Table structure for table `hddandssd`
--

CREATE TABLE `hddandssd` (
  `DriveId` int(8) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hddandssd`
--

INSERT INTO `hddandssd` (`DriveId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(7001, 'TOSHIBA 1TB 7200 RPM SATA HARD DISK', 3500, 'TechLand', NULL),
(7002, 'Toshiba 2TB Sata Desktop Hard Disk', 5070, 'StarTech', NULL),
(7003, 'TOSHIBA 3TB SATA DESKTOP HARD DISK', 6700, 'TechLand', NULL),
(7004, 'WESTERN DIGITAL WD40PURZ 4TB PURPLE', 7999, 'TechLand', NULL),
(7005, 'RAMSTA R600 M.2 2280 128GB SATA3 SSD', 1799, 'TechLand', NULL),
(7006, 'TWINMOS 256GB M.2 SSD', 2800, 'Skyland', NULL),
(7007, 'TwinMOS TW300 512GB M.2 SSD', 4950, 'StarTech', NULL),
(7008, 'NETAC N535N 1TB M.2 2280 SSD', 8700, 'TechLand', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `monitor`
--

CREATE TABLE `monitor` (
  `MonitorId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monitor`
--

INSERT INTO `monitor` (`MonitorId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(10001, 'ACER K202HQL 19.5 Inch 720p LED Monitor', 5000, 'StarTech', 'null'),
(10002, 'AOC 22B1HS 21.5 INCH FHD SLIM BORDERLESS LED IPS MONITOR', 8900, 'TechLand', 'null'),
(10003, 'HP X24IH 23.8 INCH 144HZ LED FHD FREESYNC IPS GAMING MONITOR', 22500, 'TechLand', 'https://www.rtings.com/monitor/reviews/hp/x24ih'),
(10004, 'XIAOMI XMMNT27HQ 27-INCH IPS QHD 165HZ GAMING MONITOR', 36300, 'TechLand', 'https://www.youtube.com/watch?v=PCebWiIg0QI'),
(10005, 'Xiaomi Mi 34\" 144Hz FreeSync Curved Monitor', 42000, 'StarTech', 'https://www.youtube.com/watch?v=1hMAw8xCd0Y'),
(10006, 'LG 27GN950-B 27\" 4K UHD Nano IPS Ultragear 144Hz G-SYNC Gaming Monitor', 107500, 'StarTech', 'https://www.youtube.com/watch?v=55pUgm6V4_Q'),
(10007, 'BENQ GL2070 19.5 INCH LED EYE-CARE MONITOR', 10500, 'TechLand', ' https://www.youtube.com/watch?v=xKRJaR-WiOE'),
(10008, 'BENQ GW2480 23.8 INCH EYE-CARE IPS MONITOR ', 15500, ' TechLand ', 'https://www.amazon.com/product-reviews/B072XCZSSW) (https://www.youtube.com/watch?v=_vUge8nW8MM'),
(10009, ' BENQ EW2480 24-INCH HDR FREESYNC IPS MONITOR', 20500, 'SkyLand', ' https://www.youtube.com/watch?v=SnL2DrswQLE'),
(10010, 'SAMSUNG LS22R350 22 INCH 75HZ FHD LED GAMING MONITOR', 10800, 'SkyLand', 'https://www.youtube.com/watch?v=Q2fncQuuKvY&t=476s'),
(10011, 'SAMSUNG F24T350FHW 24 INCH IPS LED MONITOR', 14500, 'StarTech', ' https://www.youtube.com/watch?v=iZjCOr2AES4'),
(10012, 'SAMSUNG S24F350 24 INCH FULL HD BLACK LED MONITOR ', 15000, 'StarTech', 'https://www.youtube.com/watch?v=UiA3-mZ98b8'),
(10013, 'MSI OPTIX G24VC 23.6\" FULL HD CURVED GAMING MONITOR', 15999, 'StarTech', ' https://www.youtube.com/watch?v=oNIsPyTWBMo'),
(10014, 'MSI OPTIX G241VC 24 INCH FULL HD CURVED GAMING MONITOR (WITH HDMI CABLE)', 18000, 'StarTech', ' https://www.youtube.com/watch?v=WvfSbOCWFd0'),
(10015, 'ASUS VZ229HE 21.5 INCH ULTRA-SLIM FRAMELESS EYE CARE FHD IPS MONITOR', 11400, 'StarTech', ' https://www.youtube.com/watch?v=ISSqKHsi0aA'),
(10016, 'ASUS TUF GAMING VG249Q1R 23.8 INCH 165HZ LED IPS GAMING MONITOR', 25500, 'TechLand', 'https://www.youtube.com/watch?v=wXka-Av9wxk'),
(10017, ' DELL S2421HN 24 INCH FHD LCD IPS MONITOR', 15500, 'TechLand', ' https://www.youtube.com/watch?v=26uXBJeZ4PI'),
(10018, 'GIGABYTE G27FC 27 INCH CURVED 165 HZ ADAPTIVE-SYNC VA GAMING MONITOR', 26800, 'TechLand', 'https://www.youtube.com/watch?v=0czX41CKsdQ'),
(10019, ' LG 22MN430M 22-INCH FULL HD IPS MONITOR', 9990, 'TechLand', ' https://www.youtube.com/watch?v=0b0ZnlA4r-M'),
(10020, 'VIEWSONIC VX2276-SH 22 INCH IPS MONITOR', 10800, 'TechLand', 'https://www.youtube.com/watch?v=jMLTC-003CE');

-- --------------------------------------------------------

--
-- Table structure for table `motherboard`
--

CREATE TABLE `motherboard` (
  `MotherboardId` int(8) NOT NULL,
  `Model` varchar(50) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `motherboard`
--

INSERT INTO `motherboard` (`MotherboardId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(6001, 'MSI H310M-PRO-VD MICRO-ATX MOTHEBOARD', 6100, 'TechLand', 'https://pangoly.com/en/review/msi-h310m-pro-vd'),
(6002, 'ASROCK H410M-HDV 10th gen motherboard', 7100, 'TechLand', 'https://versus.com/en/asrock-h410m-hdv'),
(6003, 'Biostar b365mhc', 6300, 'Skyland', 'https://www.techpowerup.com/257432/biostar-launches-the-b365mhc-micro-atx-motherboard'),
(6004, 'MSI B460M PRO 10TH GEN INTEL MOTHERBOARD', 7700, 'TechLand', 'https://pangoly.com/en/review/msi-b460m-pro'),
(6005, 'Gigabyte Intel Z390 D Advanced Thermal Design ATX ', 9000, 'StarTech', 'https://versus.com/en/gigabyte-z390-d'),
(6006, 'MSI Z490-A PRO 10th Gen Intel ATX Motherboard', 15900, 'StarTech', 'https://www.amazon.com/product-reviews/B0876HPVHX'),
(6007, 'MSI A520M-A Pro', 6700, 'StarTech', 'https://versus.com/en/msi-a520m-a-pro'),
(6008, 'GIGABYTE B450M H ULTRA DURABLE', 6300, 'TechLand', 'https://versus.com/en/gigabyte-b450m-h'),
(6009, 'MSI B550M-A PRO AM4', 9200, 'StarTech', 'https://www.youtube.com/watch?v=Qf0-JoQLeJo'),
(6010, 'GIGABYTE X570 Ud', 14500, 'SkyLand', 'https://tiny-reviews.com/reviews/1798-review-on-gigabyte-x570-ud-motherboard-am4-atx');

-- --------------------------------------------------------

--
-- Table structure for table `processor`
--

CREATE TABLE `processor` (
  `ProcessorId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(30) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL,
  `BenchmarkValue` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `processor`
--

INSERT INTO `processor` (`ProcessorId`, `Model`, `Price`, `ShopName`, `ReviewLink`, `BenchmarkValue`) VALUES
(4001, 'Intel Pentium Gold G6400 10th gen Coffee Lake Processor', 5800, 'TechLand', 'https://www.pcmag.com/reviews/intel-pentium-gold-g6400', 71),
(4002, 'INTEL CORE I3 9100F 9TH GEN PROCESSOR', 7300, 'TechLand', 'https://www.legitreviews.com/intel-core-i3-9100-4-core-processor-review_213639', 79.8),
(4003, 'INTEL CORE I3-10100 10TH GEN PROCESSOR', 12500, 'TechLand', 'https://www.pcmag.com/reviews/intel-core-i3-10100', 84),
(4004, 'INTEL CORE I5 9400F 9TH GEN PROCESSOR', 12500, 'StarTech', 'https://www.tomshardware.com/reviews/intel-core-i5-9400f-cpu-integrated-graphics,6107.html', 85.3),
(4005, 'Intel 10th Gen Core i5-10400F Processor', 13900, 'StarTech', 'https://www.techpowerup.com/review/intel-core-i5-10400f/', 87.8),
(4006, 'INTEL CORE I7-9700K 9TH GEN PROCESSOR', 30400, 'Skyland', 'https://www.pcmag.com/reviews/intel-core-i7-9700k', 97.5),
(4007, 'INTEL CORE I7-10700K OCTA CORE 10TH GENERATION PROCESSOR', 31800, 'TechLand', 'https://www.windowscentral.com/intel-core-i7-10700k-review', 98.4),
(4008, 'INTEL CORE I9-9900K 9TH GENERATION PROCESSOR', 34000, 'TechLand', 'https://www.techradar.com/reviews/intel-core-i9-9900k-review', 97.5),
(4009, 'INTEL CORE I9-10900K 10TH GEN 10 CORE PROCESSOR', 45000, 'TechLand', 'https://www.tomshardware.com/reviews/intel-core-i9-10900k-cpu-review', 102),
(4010, 'AMD Ryzen 3 3100 Desktop Processor With Wraith Stealth Cooling Solution', 11500, 'StarTech', 'https://www.techradar.com/reviews/amd-ryzen-3-3100', 76.5),
(4011, 'AMD RYZEN 5 3500X 6 CORE 6 THREAD PROCESSOR', 13600, 'Skyland', 'https://www.techspot.com/review/1966-amd-ryzen-5-3500x/', 84.6),
(4012, 'AMD RYZEN 5 3600 6 CORE 6 THREAD PROCESSOR', 16500, 'TechLand', 'https://www.tomshardware.com/reviews/amd-ryzen-5-3600-review,6287.html', 83.4),
(4013, 'AMD RYZEN 5 5600X PROCESSOR 3.7 GHZ UP TO 4.6GHZ SIX-CORE AM4 PROCESSOR', 32000, 'TechLand', 'https://www.tomshardware.com/reviews/amd-ryzen-5-5600x-zen-3-review', 96.5),
(4014, 'AMD Ryzen 7 3700X Processor', 27500, 'StarTech', 'https://www.techradar.com/reviews/amd-ryzen-7-3700x', 87),
(4015, 'AMD RYZEN 7 5800X PROCESSOR', 43500, 'StarTech', 'https://www.techradar.com/reviews/amd-ryzen-7-5800x', 99.1),
(4016, 'AMD RYZEN 9 5900X PROCESSOR', 57500, 'Skyland', 'https://www.techradar.com/reviews/amd-ryzen-9-5900x', 101);

-- --------------------------------------------------------

--
-- Table structure for table `psu`
--

CREATE TABLE `psu` (
  `PsuId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `psu`
--

INSERT INTO `psu` (`PsuId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(5001, 'ANTEC ATOM 350W 350 WATT POWER SUPPLY', 2250, 'TechLand', 'https://www.youtube.com/watch?v=N_ZkZ801bC0'),
(5002, 'DEEPCOOL DN450 450W 80 PLUS 230V POWER SUPPLY', 3050, 'SkyLand', 'https://uae.microless.com/product/deepcool-dn450-450w-80-plus-230v-eu-certified-atx-power-supply-dp-230eu-dn450/'),
(5003, 'DEEPCOOL DA500 500W 80 PLUS BRONZE POWER SUPPLY', 4000, 'TechLand', 'https://www.eteknix.com/deep-cool-da500-aurora-500w-power-supply-review/'),
(5004, 'GIGABYTE P550B 550W 80 PLUS BRONZE CERTIFIED POWER SUPPLY', 3999, 'TechLand', 'https://www.funkykit.com/reviews/power-supplies/gigabyte-p550b-power-supply-review/'),
(5005, 'Montech Beta 650w 80 plus Bronze psu', 5100, 'TechLand', 'https://www.amazon.com/Montech-Certified-Japanese-Capacitors-Continuous/product-reviews/B084Q9NH11?reviewerType=all_reviews'),
(5006, 'ANTEC NEOECO NE700G ZEN 700W 80PLUS Gold', 7700, 'TechLand', 'https://www.thefpsreview.com/2020/11/11/antec-neo-eco-gold-zen-700w-power-supply-review/'),
(5007, 'Cooler Master MWE 750W V2 Non-Modular 80 Plus Bronze Certified Power Supply', 7700, 'StarTech', 'https://www.eteknix.com/cooler-master-mwe-gold-750-v2-power-supply-review/'),
(5008, 'DEEPCOOL DQ850-M-V2L 850W 80 PLUS GOLD FULL MODULAR POWER SUPPLY', 9500, 'TechLand', 'https://www.tomshardware.com/reviews/deepcool-gamerstorm-dq-m-v2l-850w-power-supply-review'),
(5009, ' CORSAIR CX750M 750W 80 PLUS BRONZE CERTIFIED SEMI MODULAR ATX POWER SUPPLY', 9000, 'TechLand', 'https://www.youtube.com/watch?v=DlTLCyM62qU'),
(5010, 'CORSAIR CX550F RGB 550 WATT 80 PLUS BRONZE CERTIFIED FULLY MODULAR RGB POWER SUPPLY', 7800, 'TechLand', ' https://www.youtube.com/watch?v=VxXIwooAoG4'),
(5011, ' CORSAIR RM SERIES RM850 850 WATT 80 PLUS GOLD CERTIFIED FULLY MODULAR POWER SUPPLY', 1300, 'SkyLand', 'https://www.youtube.com/watch?v=8u_izntn4WA'),
(5012, 'CORSAIR CV SERIES CV650 650 WATT 80 PLUS BRONZE CERTIFIED POWER SUPPLY', 5700, 'SkyLand', 'https://www.youtube.com/watch?v=n3inT6W-4Ps'),
(5013, 'THERMALTAKE SMART BM2 550W 80 PLUS BRONZE SEMI-MODULAR POWER SUPPLY', 6200, 'SkyLand', 'https://www.youtube.com/watch?v=N3nOQEHKlPU'),
(5014, 'GAMDIAS KRATOS P1-750G 750W ADDRESSABLE RGB GOLD CERTIFIED POWER SUPPLY', 8000, 'TechLand', 'https://www.youtube.com/watch?v=_tJZsUlz8eA'),
(5015, 'GIGABYTE P750GM 750 WATT 80+ GOLD CERTIFIED POWER SUPPLY ', 8500, 'TechLand', 'https://www.youtube.com/watch?v=hS0Mjw3BW94'),
(5016, ' GIGABYTE AORUS P850W 80+ GOLD CERTIFIED MODULAR POWER SUPPLY ', 12500, 'TechLand', 'https://www.youtube.com/watch?v=IkoH5xRepH4');

-- --------------------------------------------------------

--
-- Table structure for table `ram`
--

CREATE TABLE `ram` (
  `RamId` int(8) NOT NULL,
  `Model` varchar(100) NOT NULL,
  `Price` int(10) NOT NULL,
  `ShopName` varchar(20) DEFAULT NULL,
  `ReviewLink` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ram`
--

INSERT INTO `ram` (`RamId`, `Model`, `Price`, `ShopName`, `ReviewLink`) VALUES
(8001, 'GEIL PRISTINE 4GB DDR4 2400MHZ', 1900, 'TechLand', NULL),
(8002, 'TRANSCEND 4GB DDR4 2666MHZ', 2300, 'StarTech', NULL),
(8003, 'RAMSTA 8GB DDR4 2400MHZ', 2800, 'TechLand', NULL),
(8004, 'APACER 8GB DDR4 2666MHZ', 2900, 'TechLand', NULL),
(8005, 'THERMALTAKE H-ONE 8GB DDR4 3000MHZ', 3400, 'Skyland', NULL),
(8006, 'G.SKILL TRIDENT Z 4GB DDR4 3200MHZ', 4000, 'TechLand', NULL),
(8007, 'Team Elite Plus 16GB DDR4 2400MHz', 5500, 'StarTech', NULL),
(8008, 'Transcend 16GB DDR4 2666Mhz', 8000, 'StarTech', NULL),
(8009, 'TEAM T-FORCE DARK 16GB DDR4 3200MHZ', 8000, 'TechLand', NULL),
(8010, 'G.SKILL TRIDENT Z ROYAL RGB 8GB DDR4 4266MHZ DESKTOP RAM', 9800, 'TechLand', NULL),
(8011, 'SILICON POWER XPOWER TURBINE 8GB 3200MHZ DDR4 UDIMM GAMING RAM', 4800, 'TechLand', NULL),
(8012, 'TWINMOS 8GB 3200MHZ DDR4 DESKTOP RAM', 4500, 'TechLand', NULL),
(8013, 'CORSAIR DOMINATOR PLATINUM RGB 8 DDR4 3600MHZ DESKTOP RAM', 7800, 'TechLand', NULL),
(8014, 'CORSAIR VENGEANCE RGB PRO 16GB DDR4 3600MHZ DESKTOP RAM', 9200, 'TechLand', NULL),
(8015, 'PATRIOT VIPER STEEL 16GB 3200MHZ DDR4 GAMING DESKTOP RAM', 8500, 'TechLand', NULL),
(8016, 'PNY XLR8 GAMING EPIC-X RGB 8GB DDR4 3200MHZ DESKTOP RAM', 5100, 'TechLand', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `recommendedshops`
--

CREATE TABLE `recommendedshops` (
  `ShopId` int(8) NOT NULL,
  `Name` varchar(25) NOT NULL,
  `Link` varchar(2083) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `recommendedshops`
--

INSERT INTO `recommendedshops` (`ShopId`, `Name`, `Link`) VALUES
(201, 'StarTech', 'https://www.startech.com.bd/'),
(202, 'TechLand', 'https://www.techlandbd.com/'),
(203, 'Ryans', 'https://www.ryanscomputers.com/'),
(204, 'UCC', 'https://ucc-bd.com/'),
(205, 'SkyLand', 'https://www.skyland.com.bd/'),
(206, 'GlobalBrand', 'https://www.globalbrand.com.bd/');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accessories`
--
ALTER TABLE `accessories`
  ADD PRIMARY KEY (`AccId`);

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
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `benchmark_gpu`
--
ALTER TABLE `benchmark_gpu`
  ADD KEY `GpuId` (`GpuId`);

--
-- Indexes for table `benchmark_processor`
--
ALTER TABLE `benchmark_processor`
  ADD KEY `ProcessorId` (`ProcessorId`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`Serial`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `gpu`
--
ALTER TABLE `gpu`
  ADD PRIMARY KEY (`GpuId`);

--
-- Indexes for table `hddandssd`
--
ALTER TABLE `hddandssd`
  ADD PRIMARY KEY (`DriveId`);

--
-- Indexes for table `monitor`
--
ALTER TABLE `monitor`
  ADD PRIMARY KEY (`MonitorId`);

--
-- Indexes for table `motherboard`
--
ALTER TABLE `motherboard`
  ADD PRIMARY KEY (`MotherboardId`);

--
-- Indexes for table `processor`
--
ALTER TABLE `processor`
  ADD PRIMARY KEY (`ProcessorId`);

--
-- Indexes for table `psu`
--
ALTER TABLE `psu`
  ADD PRIMARY KEY (`PsuId`);

--
-- Indexes for table `ram`
--
ALTER TABLE `ram`
  ADD PRIMARY KEY (`RamId`);

--
-- Indexes for table `recommendedshops`
--
ALTER TABLE `recommendedshops`
  ADD PRIMARY KEY (`ShopId`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `benchmark_gpu`
--
ALTER TABLE `benchmark_gpu`
  ADD CONSTRAINT `benchmark_gpu_ibfk_1` FOREIGN KEY (`GpuId`) REFERENCES `gpu` (`GpuId`) ON DELETE CASCADE;

--
-- Constraints for table `benchmark_processor`
--
ALTER TABLE `benchmark_processor`
  ADD CONSTRAINT `benchmark_processor_ibfk_1` FOREIGN KEY (`ProcessorId`) REFERENCES `processor` (`ProcessorId`) ON DELETE CASCADE;

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
