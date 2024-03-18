-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mariadb
-- Generation Time: Mar 04, 2024 at 04:49 PM
-- Server version: 10.4.8-MariaDB-1:10.4.8+maria~bionic
-- PHP Version: 8.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin_user_auth`
--
CREATE DATABASE IF NOT EXISTS `admin_user_auth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `admin_user_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `admin_id` varchar(225) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `dp` varchar(200) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `type` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `password` text NOT NULL,
  `admin_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`admin_id`, `fname`, `lname`, `dp`, `phone`, `email`, `type`, `status`, `password`, `admin_date`) VALUES
('aaXkjeVdxHmp_ADM', 'Tito', 'Lazaro', 'test', '2550659644211', 'tito@shirikisho.co.tz', 'root', 'created', '$2b$10$85nJzTDlp6EQInhlywRaS.xL4UgIC0JwEbnKcdtg3fwMqWd8XwJty', '2024-02-28 18:10:15'),
('bsZs72tchnGM_ADM', 'Mercy', 'Alfred', 'ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', '255678350616', 'mercy@brentles.co.tz', 'root', 'created', '$2b$10$Xu5rW/.qd.G24hofuC9UZuKcoezuk/8Mj1uzn9aFtdlBcfMy4M2RS', '2024-03-01 17:07:54'),
('CuMfnZUfpoaC_ADM', 'Daniel', 'Mwanga', 'ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', '255745341109', 'mwanga@brentles.com', 'root', 'created', '$2b$10$vhU0OVU8vw935oY0uSZ0JuNjyS.LToMuccfv4klN8/LZ9IcjVpaim', '2024-01-05 15:44:58'),
('FyYLAI7JPPT5_ADM', 'Alfred', 'Rukatila', 'test', '255712902927', 'alfred@humtech.co.tz', 'super', 'created', '$2b$10$H//SrvIQ45MXEvExPN.BuegjBh6u.zpNse4HcuSM8lq51YtXBDQ..', '2024-02-16 08:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_permissions`
--

CREATE TABLE `admin_permissions` (
  `admin_perm_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `permission_id` varchar(225) NOT NULL,
  `rel_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_permissions`
--

INSERT INTO `admin_permissions` (`admin_perm_id`, `admin_id`, `permission_id`, `rel_date`) VALUES
('21sVzfjmo2iC_PERM_ADM', 'bsZs72tchnGM_ADM', '4H48dfgWRw2Q_PERM', '2024-03-01 17:07:54'),
('21VqwZlEMuY0_PERM_ADM', 'FyYLAI7JPPT5_ADM', 'qDFvHyyu5i6Q_PERM', '2024-02-16 08:54:33'),
('3jFRl8ouS3Yd_PERM_ADM', 'bsZs72tchnGM_ADM', 'f6IOVQGu20gc_PERM', '2024-03-01 17:07:55'),
('9dH9R42GyXDB_PERM_ADM', 'aaXkjeVdxHmp_ADM', 'bypTJTPEwlBT_PERM', '2024-02-28 18:10:15'),
('aycD12riuqL2_PERM_ADM', 'aaXkjeVdxHmp_ADM', 'SbBkNbMjV7Yr_PERM', '2024-02-28 18:10:15'),
('eAbHfDQAd5MK_PERM_ADM', 'bsZs72tchnGM_ADM', 'bypTJTPEwlBT_PERM', '2024-03-01 17:07:54'),
('FAkt7QRk5yvJ_PERM_ADM', 'bsZs72tchnGM_ADM', 'cvPpk18deMbg_PERM', '2024-03-01 17:07:54'),
('G3wW581d44FE_PERM_ADM', 'FyYLAI7JPPT5_ADM', 'f6IOVQGu20gc_PERM', '2024-02-16 08:54:33'),
('IrwLC1BXFym9_PERM_ADM', 'bsZs72tchnGM_ADM', 'SbBkNbMjV7Yr_PERM', '2024-03-01 17:07:55'),
('JQO49jSECWz7_PERM_ADM', 'bsZs72tchnGM_ADM', 'qDFvHyyu5i6Q_PERM', '2024-03-01 17:07:55'),
('mS8SeyP4Fznc_PERM_ADM', 'aaXkjeVdxHmp_ADM', 'qDFvHyyu5i6Q_PERM', '2024-02-28 18:10:15'),
('NR1YbZgdPoZS_PERM_ADM', 'aaXkjeVdxHmp_ADM', '4H48dfgWRw2Q_PERM', '2024-02-28 18:10:15'),
('RWU61iF3t19r_PERM_ADM', 'FyYLAI7JPPT5_ADM', 'SbBkNbMjV7Yr_PERM', '2024-02-16 08:54:33'),
('T4NaZJwRx6KU_PERM_ADM', 'aaXkjeVdxHmp_ADM', 'cvPpk18deMbg_PERM', '2024-02-28 18:10:15'),
('tjl1l0DqnqED_PERM_ADM', 'aaXkjeVdxHmp_ADM', 'f6IOVQGu20gc_PERM', '2024-02-28 18:10:15'),
('V5UY8lrF9RRC_PERM_ADM', 'FyYLAI7JPPT5_ADM', '4H48dfgWRw2Q_PERM', '2024-02-16 08:54:33'),
('wWEhN1jGeDuu_PERM_ADM', 'FyYLAI7JPPT5_ADM', 'bypTJTPEwlBT_PERM', '2024-02-16 08:54:33'),
('zydnPA3nizOw_PERM_ADM', 'FyYLAI7JPPT5_ADM', 'cvPpk18deMbg_PERM', '2024-02-16 08:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `admin_status_type_changes`
--

CREATE TABLE `admin_status_type_changes` (
  `change_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `to_type` varchar(50) NOT NULL,
  `from_type` varchar(50) NOT NULL,
  `to_status` varchar(50) NOT NULL,
  `from_status` varchar(50) NOT NULL,
  `change_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `admin_types`
--

CREATE TABLE `admin_types` (
  `type_id` varchar(225) NOT NULL,
  `admin_type` varchar(50) NOT NULL,
  `type_number` int(4) NOT NULL,
  `type_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_types`
--

INSERT INTO `admin_types` (`type_id`, `admin_type`, `type_number`, `type_date`) VALUES
('pXDTW3gk3mS0r5_TYPE', 'super', 110, '2023-12-11 15:04:40'),
('WuQwhOx2FYKm0G_TYPE', 'root', 10, '2023-12-11 15:04:40');

-- --------------------------------------------------------

--
-- Table structure for table `blocked_ip`
--

CREATE TABLE `blocked_ip` (
  `block_id` varchar(225) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `block_expires` datetime NOT NULL,
  `block_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logins_admin`
--

CREATE TABLE `logins_admin` (
  `login_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `login_key` varchar(300) NOT NULL,
  `login_session` varchar(100) NOT NULL,
  `exipire_date` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'login',
  `login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `logins_admin`
--

INSERT INTO `logins_admin` (`login_id`, `admin_id`, `login_key`, `login_session`, `exipire_date`, `status`, `login_date`) VALUES
('0k3PRC0bdNSM_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'xqmgsc8vahhD', '$2b$10$btbNMHq1j/EO0lwLgVC1Z.trI1TdEU/6bWYghQ75ksp.D7K1bN9Gq', '2024-03-01 18:06:48', 'login', '2024-03-01 17:06:48'),
('1CZShDxwJlPx_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'JHrDFJWZfu1t', '$2b$10$FS8XCHHMMGSIUl/2oMBaO.5vCUy5xfuRBc1tF4Biz3F88Esqaukga', '2024-02-29 12:42:40', 'login', '2024-02-29 11:42:40'),
('3mzE2iJ4FRb2_ADM_LOG', 'FyYLAI7JPPT5_ADM', '8lqnkBeM0815', '$2b$10$QxIWVsAnLF1D2lrBdFy0Q.tjZtF.B2/Jy5bNlIxRZd3NwB8wBujiK', '2024-02-25 16:11:30', 'login', '2024-02-25 15:11:30'),
('3uNbRq48DgsJ_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'LSTx6gMGkH10', '$2b$10$1e0UUEdMtw6l8NkaB40a9efzL.qTSthlfFZPpss8LvICr6sFtdPla', '2024-02-29 13:35:48', 'login', '2024-02-29 12:35:48'),
('6mlynJAY28Ca_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'rWmMSul58O0t', '$2b$10$lt4mIlB.UX6c7/AlY8LDYujulH5zNm.FdQpzyF6Rtt1DzlHCH6tOu', '2024-02-23 12:52:51', 'login', '2024-02-23 11:52:51'),
('7bSu5Y8E3j9J_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'GqLMHC7Fu9Bn', '$2b$10$rby5yK9Ia1z.OOMOBTCHqOv47mECrRZWjf5AUb2ek/FG7JYuyTCHq', '2024-02-12 08:00:41', 'login', '2024-02-12 07:00:41'),
('9JcYR5QhsAcF_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'yRvi053gvHU8', '$2b$10$ysV96tb7Kk28SKvZuzURyOttO2XyBFyYBZ3PjYNGivP0xCbjKDvoq', '2024-02-29 11:23:00', 'login', '2024-02-29 10:23:00'),
('AQNIcpBlC4Ok_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'kalNnBJZlsKy', '$2b$10$.BVsZREuK/i0eihF2acuCO87qLG9F4k3AdS1f8N2W8L4eMbwEntf6', '2024-02-01 15:00:19', 'login', '2024-02-01 14:00:19'),
('aQxJPVJupIp8_ADM_LOG', 'CuMfnZUfpoaC_ADM', '8DJK21YManU5', '$2b$10$QqSH6eKSXxiYdQ6xv23Xl.8Ti0p5Bv4AQC2HM8EGOB25ptO0mozc.', '2024-02-07 11:22:34', 'login', '2024-02-07 10:22:34'),
('BSmxF7RG7I54_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'Vhax2mkCeuFw', '$2b$10$Aow1O82TiD6E0m3C97xrPu/3OUQzxQrBQ2jg7oUrZuheKSTz6BWKK', '2024-03-04 11:44:45', 'login', '2024-03-04 10:44:45'),
('cje2rkALt1aG_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'Ff2zna95vUYI', '$2b$10$nznIp2t3SagcDUZRlBj9nuEoW8syRV.TtmeVRwxoRpW/Fa8F.SXDe', '2024-01-29 06:54:35', 'login', '2024-01-29 05:54:35'),
('ClkkaGYejoib_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'J6f4h1kFCDAf', '$2b$10$0iOZh5PEemTHn7abiC9CVunHGildrrNy8r546J985WGpINVZFFFdO', '2024-01-30 11:11:57', 'login', '2024-01-30 10:11:57'),
('E8zKHxzi5kcK_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'vUbpsxGFWV7k', '$2b$10$7PO9WtreCrl0jUYU.MdXc.ItjEl3MizghHHDKbZdr/HIt1mpNtAzS', '2024-01-30 08:44:00', 'login', '2024-01-30 07:44:00'),
('f57zMrGaCVKs_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'OgST6KdAWhX5', '$2b$10$m/EAHvbpoTkLImntZPcctuZ7b/UFJOiuBdUtAY0YTuWld5HZXCpli', '2024-02-17 10:14:56', 'login', '2024-02-17 09:14:56'),
('gTdwN91NhkKf_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'QxEOSzBzOn86', '$2b$10$J3YIOcMgNkWsxWV1WPmT2OIx35pz1pnpwTOtmO6M/O7LNIVL5zEbC', '2024-02-03 06:35:59', 'login', '2024-02-03 05:35:59'),
('gWz8XOt7P5OZ_ADM_LOG', 'FyYLAI7JPPT5_ADM', '0SbBU7BAsYjH', '$2b$10$A6N4wTO0RvjKYMbGCAvtjuQG4CaPab75ywUaMErBTcMXuTgHeMQuW', '2024-02-28 15:33:30', 'login', '2024-02-28 14:33:30'),
('hAAa3XuE8LhB_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'GQw0kWMotgJR', '$2b$10$D4iXc/Tq5Ee/oOhJTDuX4ul9pu09yG7t8/2T9hIji5I5QGIAbkc5C', '2024-02-26 12:42:24', 'login', '2024-02-26 11:42:24'),
('IoqC14tNsXWu_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'zL2Bv5rYK3S4', '$2b$10$MIYYE8Pt0ChlStS0l1h.qOKFyrCmzLXYE/4sN4BnqdeJAcceJrydq', '2024-02-01 12:17:19', 'login', '2024-02-01 11:17:19'),
('j5M2WQ21ded2_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'j2HxSFUsG3sr', '$2b$10$aK03T32X9fT7LOdlHwQGKO.rHcvK9xmudCol.QMeeKGe7D2Ni.EEm', '2024-02-16 09:31:10', 'login', '2024-02-16 08:31:10'),
('Ke4mzuUAtXOr_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'PaicTDTafbfW', '$2b$10$C40hRCLBZk88c9l0H82x6OnPUGgfxGY0b6btjD0KqAU4cePLJBzZC', '2024-02-16 10:05:13', 'login', '2024-02-16 09:05:13'),
('KIss5qUOyT6p_ADM_LOG', 'CuMfnZUfpoaC_ADM', '1anQqPILJXKA', '$2b$10$AZhHyUAkL1XMsZqwgpAqfOvUaiArCGZwMHvuHiljCsPs5tBEKfTaO', '2024-01-30 08:30:02', 'login', '2024-01-30 07:30:02'),
('LGR2d6cDf0bR_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'ttplzSJzONsq', '$2b$10$.jLBkBniXlwn6u850GAmYeKUr/d/neQ9A/70G6D/wkyn6hXHZTidS', '2024-02-28 19:01:49', 'login', '2024-02-28 18:01:49'),
('LoUEILVMXTPf_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'wwQ4j4BktgYA', '$2b$10$CRMNgfOaX7hyDoKDFVVQs.LavyhAYR7Z0cqyDrUZP1BS2cTMIwGJa', '2024-02-23 12:33:43', 'login', '2024-02-23 11:33:43'),
('LOy0MuLuv53g_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'ZAA9mK4YdAbK', '$2b$10$e2AJQVB.VkMugIVSR2N71OFspavxVSX3IpKJxKBdvl9VXpy/UlwoC', '2024-02-27 11:10:43', 'login', '2024-02-27 10:10:43'),
('NzhqPityNZQ8_ADM_LOG', 'FyYLAI7JPPT5_ADM', '9rTvpGfKq76j', '$2b$10$SDUS.zXPDfFJCl5wHXw/N.w0OyI38NRskyoMPMThRzOI.Un5KVfBi', '2024-02-27 16:48:56', 'login', '2024-02-27 15:48:56'),
('PkgVSopyrYNb_ADM_LOG', 'CuMfnZUfpoaC_ADM', '1JGDA1Dmtb9x', '$2b$10$NSOlzNqhAgoD5MFhfc3yY.RDVQ8p1sNII2rwHuZlGQSh103e4HzKa', '2024-03-04 06:58:45', 'login', '2024-03-04 05:58:45'),
('qfoAguoDxrma_ADM_LOG', 'CuMfnZUfpoaC_ADM', '8vL8RBdFPIPt', '$2b$10$WXzniYFknj5OnkxqUAS/Ue.EDVGYV.GpBFDs1eTS/d.X1tj/.kHky', '2024-02-01 11:00:25', 'login', '2024-02-01 10:00:25'),
('QPtyGNcuMWld_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'iD9XEy8CRX7w', '$2b$10$IuPMUmLJBgp2dncPHMFUrOKj1aBaZGPVXJz3t0Mmv1OIoZx6qVx5e', '2024-02-16 09:18:11', 'login', '2024-02-16 08:18:11'),
('r9Z38aAalAPA_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'JaX7UjdadSIi', '$2b$10$snHrFVRUebSUL1ao1n6fq.Az6RFxMi.jkYZxgXbMVshqSR3V6Bg32', '2024-02-22 15:08:19', 'login', '2024-02-22 14:08:19'),
('RlXJrhfx37cC_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'XvsraQHTQmh2', '$2b$10$c2A205cZbZjhIvTgCIqjn.mzNoLIN96UL1gJqxGtJ0nVo3sOk5Pze', '2024-02-26 19:23:52', 'login', '2024-02-26 18:23:52'),
('rUCoY3ZUvkO4_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'gbPoPMAL1bii', '$2b$10$syS/YZ2f7p4Nnuldv9RDrOjZc3NX9jL.rATacGFgPeEtEY.l65u4y', '2024-02-01 08:23:43', 'login', '2024-02-01 07:23:43'),
('sDI27pnAOpdC_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'EFmlKQV1Lspk', '$2b$10$VgKzZiY31WG76Yp7070NueA5CAmlcvLEPMbRc0bS.F9lD0.fK1BE2', '2024-02-01 08:22:18', 'login', '2024-02-01 07:22:18'),
('sqieNQnbiM74_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'bWjZ0r3cdvJe', '$2b$10$3bJbAEdheEt4dY8UWNwEFeHGXteR0QYWEOUnpB5TfRGIokNeBhha2', '2024-02-19 09:49:41', 'login', '2024-02-19 08:49:41'),
('U3Xi4UxuMNBQ_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'ZIY2F1pWOGWu', '$2b$10$i0Dp7xNNlqf2iPKnMfzcZuWYUWEyMokqe5GJXjIW08MGUPXDzW3Cq', '2024-02-13 12:45:54', 'login', '2024-02-13 11:45:54'),
('VSAw69u5xE6S_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'bMn4JvCPyvlh', '$2b$10$Fwub05Ck6hEc/KM2ICGAuOPkFXxmPI1I8h4fxm1uczTtkPzlWBqzK', '2024-03-03 18:37:56', 'login', '2024-03-03 17:37:56'),
('W1YnmgxYjdY5_ADM_LOG', 'CuMfnZUfpoaC_ADM', 'ZXWX2P5ZvKo8', '$2b$10$RRKvqb3sfLT1n31jUULYXuMdmUqxsC8hseGkG/DYPWNy55SIPZmyy', '2024-01-25 11:22:30', 'login', '2024-01-25 10:22:30'),
('W7CofYgqGKVY_ADM_LOG', 'FyYLAI7JPPT5_ADM', '07YXk8Rh7TqH', '$2b$10$ytZov5YT0XTd2hE5V/FqjeWBf/xbsPHfR6zNaiSZJcNOoxpccohyG', '2024-02-28 12:24:23', 'login', '2024-02-28 11:24:23'),
('Wo3AbouEPFEX_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'ITtS4pFVj5Fe', '$2b$10$N4Zc0aK2ydsVENoUwy.qE.Dkd/vrGkLiNwWM/mvJJgg0xBMTN4jm6', '2024-02-19 12:21:18', 'login', '2024-02-19 11:21:18'),
('znBso1SL554X_ADM_LOG', 'FyYLAI7JPPT5_ADM', '48hOqG8yDad5', '$2b$10$IZmRG.mhSJPKHgbH/b8n4.5FPMS2sx1/DKIRchWOpTmuA2CE3SqfC', '2024-02-29 13:38:04', 'login', '2024-02-29 12:38:04'),
('ZSkBIItAnYtq_ADM_LOG', 'FyYLAI7JPPT5_ADM', 'aH1wp10BrxTR', '$2b$10$Zy/hkpQrTKjxTpS1Kz4EoeyR4Aw2dP6D65zYsuukrvJNl38B1Pu7u', '2024-02-18 10:28:51', 'login', '2024-02-18 09:28:51');

-- --------------------------------------------------------

--
-- Table structure for table `otp_config`
--

CREATE TABLE `otp_config` (
  `conf_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `key_text` text NOT NULL,
  `init_key` text NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'created',
  `conf_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `otp_config`
--

INSERT INTO `otp_config` (`conf_id`, `admin_id`, `key_text`, `init_key`, `status`, `conf_date`) VALUES
('8eQkfhldxeDWtD_CONF', 'FyYLAI7JPPT5_ADM', 'NWNiYTgwNjM0M2I0MDY1NGRmZDM4ZTI3NDJhMmVlNmVkZDExNTljNjI0MDE5NDdiMzEyNGZjNTBlNWMzMTgyMA==', 'helovf', 'active', '2024-02-16 08:55:33'),
('ONlKAwiJ3dIHSc_CONF', 'CuMfnZUfpoaC_ADM', 'ZDZjNDRiZjA4ZDc1OGUyZWVjYjA2ZTBhZWI0Mjc4NWUyYTkxYzZhZjBlYzdlOGRiYTY1YjQ1MDU0NDNkMjcwYg==', 'helovf', 'active', '2024-01-25 10:09:22');

-- --------------------------------------------------------

--
-- Table structure for table `permissions_list`
--

CREATE TABLE `permissions_list` (
  `permission_id` varchar(225) NOT NULL,
  `permission_name` varchar(100) NOT NULL,
  `permission_number` int(4) NOT NULL,
  `perm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `permissions_list`
--

INSERT INTO `permissions_list` (`permission_id`, `permission_name`, `permission_number`, `perm_date`) VALUES
('4H48dfgWRw2Q_PERM', 'add', 510, '2023-12-11 15:04:47'),
('bypTJTPEwlBT_PERM', 'root', 10, '2023-12-11 15:04:47'),
('cvPpk18deMbg_PERM', 'delete', 310, '2023-12-11 15:04:47'),
('f6IOVQGu20gc_PERM', 'edit', 110, '2023-12-11 15:04:47'),
('qDFvHyyu5i6Q_PERM', 'view', 710, '2023-12-11 15:04:47'),
('SbBkNbMjV7Yr_PERM', 'vote', 910, '2023-12-11 15:04:47');

-- --------------------------------------------------------

--
-- Table structure for table `service_auth`
--

CREATE TABLE `service_auth` (
  `service_id` varchar(225) NOT NULL,
  `service_name` varchar(100) NOT NULL,
  `service_secret` varchar(300) NOT NULL,
  `service_status` varchar(20) NOT NULL,
  `service_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `service_auth`
--

INSERT INTO `service_auth` (`service_id`, `service_name`, `service_secret`, `service_status`, `service_date`) VALUES
('fihtU01XbzYe73_SERVC', 'userService', '$2b$10$aLCP4kjmjJfUEGd.eWcUzuFOzktO6Ykf31XO0Mw3ZgN4NTmGOoT2q', 'active', '2023-12-12 10:25:12'),
('kf8fbZIAYA8q37_SERVC', 'loanService', '$2b$10$WWmAsip.U9/qPB/ZELcZ/.94zUPuKnWuhBCHVMJXKKQsRJz31hrHi', 'active', '2023-12-12 10:25:12'),
('OpKGwXXawnmCxU_SERVC', 'socialService', '$2b$10$/ng68QVzylNEl1q1.viX.ey66xYwfJiq3eSIKK4MMT76B82ivGZNG', 'active', '2023-12-12 10:25:12'),
('UPJ8Rs5KzPnnRa_SERVC', 'mediaService', '$2b$10$j9QZfnWBwoczy4yU7k.06uQ1bk8KAam0ZNmxVKJLGOc8JCfI.L7xi', 'active', '2023-12-20 12:52:52');

-- --------------------------------------------------------

--
-- Table structure for table `sign_otp`
--

CREATE TABLE `sign_otp` (
  `otp_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `otp` varchar(300) NOT NULL,
  `expire_date` datetime NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `otp_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `white_ip`
--

CREATE TABLE `white_ip` (
  `white_id` varchar(225) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `reason` text NOT NULL,
  `white_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wrong_otp_login`
--

CREATE TABLE `wrong_otp_login` (
  `wrong_id` varchar(225) NOT NULL,
  `admin_id` varchar(225) NOT NULL,
  `instance_id` varchar(50) NOT NULL,
  `countz` int(2) NOT NULL,
  `ip_address` varchar(100) NOT NULL,
  `wrong_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD PRIMARY KEY (`admin_perm_id`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `admin_status_type_changes`
--
ALTER TABLE `admin_status_type_changes`
  ADD PRIMARY KEY (`change_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `admin_types`
--
ALTER TABLE `admin_types`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `blocked_ip`
--
ALTER TABLE `blocked_ip`
  ADD PRIMARY KEY (`block_id`);

--
-- Indexes for table `logins_admin`
--
ALTER TABLE `logins_admin`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `otp_config`
--
ALTER TABLE `otp_config`
  ADD PRIMARY KEY (`conf_id`),
  ADD UNIQUE KEY `admin_id` (`admin_id`);

--
-- Indexes for table `permissions_list`
--
ALTER TABLE `permissions_list`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `service_auth`
--
ALTER TABLE `service_auth`
  ADD PRIMARY KEY (`service_id`),
  ADD UNIQUE KEY `service_name` (`service_name`);

--
-- Indexes for table `sign_otp`
--
ALTER TABLE `sign_otp`
  ADD PRIMARY KEY (`otp_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `white_ip`
--
ALTER TABLE `white_ip`
  ADD PRIMARY KEY (`white_id`);

--
-- Indexes for table `wrong_otp_login`
--
ALTER TABLE `wrong_otp_login`
  ADD PRIMARY KEY (`wrong_id`),
  ADD UNIQUE KEY `instance_id` (`instance_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_permissions`
--
ALTER TABLE `admin_permissions`
  ADD CONSTRAINT `admin_permissions_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `admin_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `permissions_list` (`permission_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `admin_status_type_changes`
--
ALTER TABLE `admin_status_type_changes`
  ADD CONSTRAINT `admin_status_type_changes_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `logins_admin`
--
ALTER TABLE `logins_admin`
  ADD CONSTRAINT `logins_admin_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `otp_config`
--
ALTER TABLE `otp_config`
  ADD CONSTRAINT `otp_config_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sign_otp`
--
ALTER TABLE `sign_otp`
  ADD CONSTRAINT `sign_otp_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wrong_otp_login`
--
ALTER TABLE `wrong_otp_login`
  ADD CONSTRAINT `wrong_otp_login_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin_details` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `media_data`
--
CREATE DATABASE IF NOT EXISTS `media_data` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `media_data`;

-- --------------------------------------------------------

--
-- Table structure for table `images_qh`
--

CREATE TABLE `images_qh` (
  `image_id_qh` varchar(225) NOT NULL,
  `image_id` varchar(225) NOT NULL,
  `image_path_qh` text NOT NULL,
  `upload_date_qh` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images_qh`
--

INSERT INTO `images_qh` (`image_id_qh`, `image_id`, `image_path_qh`, `upload_date_qh`) VALUES
('2Vm8iFEPD89Bkad9ng0QOlP73mmU0isi_IMGHIGH', 'smUrnAHVPf8XBPNjQEsDK8J8VJaF4zzN_IMGMAIN', 'media/images/1708791064129-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_high_image.webp', '2024-02-24 16:11:04'),
('3Qu3E8U8AKQ9ABIVYMf6uCWOWDOYLJW1_IMGHIGH', '9HWhYS6vDMqAwPvw8jDvQblPvRyIfNKl_IMGMAIN', 'media/images/1708598012181-image_cropper_1708597960372.jpg_high_image.webp', '2024-02-22 10:33:32'),
('4m8npAFUIECvDUlPQgk7d8E0z59HOWaH_IMGHIGH', 'hoSF2ofVB5zQMsbGYSVaTrvpGcgXqs1i_IMGMAIN', 'media/images/1709298811255-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_high_image.webp', '2024-03-01 13:13:31'),
('4mM86xkiTx1HFZoAiO7kRURVpYBLRJ60_IMGHIGH', '9cGUkt208VY0lk4tlIJ5uWOOJusNdou9_IMGMAIN', 'media/images/1708169174938-image_cropper_1708169161753.jpg_high_image.webp', '2024-02-17 11:26:14'),
('4oZIdMvYN19cIDzgqC3tbuHIZP5sFI1J_IMGHIGH', '9Oi90Gwno7fg6IzQFs5fMEjS3BBdjylB_IMGMAIN', 'media/images/1708599182326-image_cropper_1708599131904.jpg_high_image.webp', '2024-02-22 10:53:02'),
('55CChRJWl5TxhZVkl9FqE3VxVcI5Bh98_IMGHIGH', 'L8NlmWLsriD8RInPxcrFTrXW8IJNrdWB_IMGMAIN', 'media/images/1709128578591-c0ab9553-6096-4c38-a49c-540b75e47edd7358688787624572202.jpg_high_image.webp', '2024-02-28 13:56:18'),
('55n0RTRG5eTNmeje2YLkmxZ6ua4jpeSw_IMGHIGH', 'wmkZsuT5rXGRuSF8runuKcmcRArbX5vH_IMGMAIN', 'media/images/1704704420193-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_high_image.webp', '2024-01-08 09:00:20'),
('5cnzppZ4LIvb6CeiXC6Vq9lju1upewCI_IMGHIGH', 'ymONNJtNHUBwwyWHaCh7IGEvY8ZiHqLI_IMGMAIN', 'media/images/1708165664765-image_cropper_1708165597596.jpg_high_image.webp', '2024-02-17 10:27:44'),
('5ZxjMxdMX2EjoNwmoxJVjem3aiz2vR8Y_IMGHIGH', '3og0gCAF3AuP8AxMRf0bi3z2ffneSM0j_IMGMAIN', 'media/images/1703598239052-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_high_image.webp', '2023-12-26 13:43:59'),
('66UboAK7inYZmVWylhzXVwJU4Qae2wJS_IMGHIGH', 'YmD36JkpZD9CXYTxl144EcLTgCI3WTui_IMGMAIN', 'media/images/1704371486092-image_cropper_1704371407077.jpg_high_image.webp', '2024-01-04 12:31:26'),
('6uPLzHdDqJGiL5xYsCxpAXtZ3jCwUqTp_IMGHIGH', 'SM5XKtDVGDZnzYf7y1naXc7UYV7kYSFN_IMGMAIN', 'media/images/1709292568761-3db31652-0e66-4ed9-a52e-926339ab5cfb5945233535190974306.jpg_high_image.webp', '2024-03-01 11:29:28'),
('8IWthA3DVth6u4AP9v2ENyujBbx629Rp_IMGHIGH', 'HHshXRn6QE07TOS5l1uP0f4b0tFI20Bs_IMGMAIN', 'media/images/1708597322162-761b951c-45f4-4b0e-acc2-6f5251806d0a6726789841922416255.jpg_high_image.webp', '2024-02-22 10:22:02'),
('8v4MFfwi7oqdetRmebJXHpMs8xGoKKpj_IMGHIGH', '3D4qc3MdBPvxIIrJz5mnkrR2azCgLCaR_IMGMAIN', 'media/images/1709381158933-c9e3f04b-a6ff-45e4-aa50-7cde732adcfc2348161891209594580.jpg_high_image.webp', '2024-03-02 12:05:59'),
('9RAz699fUdQQZ72N1femcFmwkQGUo6yN_IMGHIGH', 'Xhg0wMFeljIQ61IobSK9dBGbk7E3o1Zh_IMGMAIN', 'media/images/1704372233077-image_cropper_1704371612984.jpg_high_image.webp', '2024-01-04 12:43:53'),
('adc5sg9tqNMaG70BlYuDr2CL58bMA93d_IMGHIGH', 'wbb3ejeGO0QsHLnoNE6YV4XC41dF6haK_IMGMAIN', 'media/images/1709380326052-image_cropper_1709380238464.jpg_high_image.webp', '2024-03-02 11:52:06'),
('AschGLhNHObgIUzldcobpb0JDSyUMpPG_IMGHIGH', 'xQMNfPtSJtu5gDLFXRPKyIzf37LkCEri_IMGMAIN', 'media/images/1704371366915-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:29:26'),
('BasiYygE5Oo5mv0iDFAb1pBGhDHfoTfA_IMGHIGH', 'VgwSVNIXFLSlSzRCOy1I30BccD1HIb3c_IMGMAIN', '/media/images/1703087329905-shirikisho_profile.png_high_image.webp', '2023-12-20 15:48:50'),
('bB6LsFwzEZDxhTXBA3qh9FQffD10H12X_IMGHIGH', 'MbHxlDbUt7YhWRM0habuc66tEqsLVOQO_IMGMAIN', 'media/images/1704267539430-image_cropper_1704267498332.jpg_high_image.webp', '2024-01-03 07:38:59'),
('bFdrK3p2PFtjpAh6CoX2ZVDk9bbvb5nb_IMGHIGH', 'Eaiw9Up1CZtfAkJKwLp0VQqHbGUPimyG_IMGMAIN', 'media/images/1709024181889-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_high_image.webp', '2024-02-27 08:56:21'),
('BHKwrKKDpotyC2SuwsBlhz8rQvUF09yi_IMGHIGH', 'ER6XhMQaiuQa71Qvard4P7SvU1lx4JXZ_IMGMAIN', 'media/images/1708942426181-2480d735-cc45-4d41-b634-f593d48bf2223826952024470443642.jpg_high_image.webp', '2024-02-26 10:13:46'),
('BkvDyxr9StmaeAJDPsOWrNUxszL1Fm4v_IMGHIGH', '4kR7UvWmsYCjJhAJrHGfcrwzfmwf6Joh_IMGMAIN', 'media/images/1709380314810-image_cropper_1709380284996.jpg_high_image.webp', '2024-03-02 11:51:54'),
('BQaNnoPLzY0elaPmQ5oZxDIj6e4J9Ufm_IMGHIGH', 'QdYHYe6o9Ep405c6QDQK1eaU7RUk9BUl_IMGMAIN', 'media/images/1706907202765-image_picker_F950D995-B7CC-4130-9AB5-332E4621762E-73670-00000C65425147E6.jpg_high_image.webp', '2024-02-02 20:53:22'),
('bRUEspuvBMzyM9WTjtucXEY7e1NiPihi_IMGHIGH', '5BdRjM6NH7hjG70OMGVxBqgjLIHZWIM5_IMGMAIN', 'media/images/1708165944080-image_cropper_1708165896357.jpg_high_image.webp', '2024-02-17 10:32:24'),
('c8JCywwPb3C6de31ldFVWaeWAWoDNToE_IMGHIGH', 'IQFB8R79FiaTAi1M1FUCKgX9AYPITHY3_IMGMAIN', 'media/images/1708942429589-d8f788a9-003b-4850-a224-8aecf6944de0569911778247695337.jpg_high_image.webp', '2024-02-26 10:13:49'),
('cHI8ui5Fr4PZxDZHQrLXnhaK0i7akLoM_IMGHIGH', 'lO8TBSdaHzFS6ZzAzTuDVWSAcitpseNZ_IMGMAIN', 'media/images/1704372737035-image_cropper_1704371612984.jpg_high_image.webp', '2024-01-04 12:52:17'),
('cjouAuVN6nsBCcvnvMLW9coECTvAJcQG_IMGHIGH', 'K0e3A2QRiLfIIqiu31PwQojAWqciW5U7_IMGMAIN', 'media/images/1709024247637-image_cropper_1709024108715.jpg_high_image.webp', '2024-02-27 08:57:27'),
('ckKIWTlURrswTi3zLYYGNlXWIZDoatFj_IMGHIGH', '9UQwmfIX6ZcBcD380hHNptr2TQ7ZQbF7_IMGMAIN', 'media/images/1704704443546-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_high_image.webp', '2024-01-08 09:00:43'),
('cn7nNQQvH01eru1QbmOeFZNsGcQoHjhR_IMGHIGH', '1casOXHAPFmXiXTSqjrkrWqNgVrUD1nc_IMGMAIN', 'media/images/1706770019680-image_picker_135B0F3D-5FD7-484B-BCD9-A7A76011D755-11203-00000A98F596AEC8.jpg_high_image.webp', '2024-02-01 06:46:59'),
('CP00nFTW4F5Z1hQf0Pw8iKNr9KnuWpxK_IMGHIGH', 'kPEQmZy3vh2ha4F6vFx4vozmSNRO4C69_IMGMAIN', 'media/images/1706777748998-image_cropper_B8A8309E-E4AA-4895-81BF-269E1331AF15-11203-00000AC17B36D369.jpg_high_image.webp', '2024-02-01 08:55:49'),
('CWPWBidLGrDqDuY719i7jLmGsHuz2RJS_IMGHIGH', 'LmpGI3JbpSdeTZfhPz4Ox7xKfvT91t4V_IMGMAIN', 'media/images/1708949889794-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_high_image.webp', '2024-02-26 12:18:09'),
('dbr3p4sCaZY9oBJKpytAF4Dc9HmtRWZF_IMGHIGH', '2LeSizzVYtYM2qp06GGrzDNXQ9v4SH5F_IMGMAIN', 'media/images/1704551408543-1703137750385-shirikisho_profile.png_high_image.webp', '2024-01-06 14:30:08'),
('dnEPPH4rmtRwXsUK8ybRAGpSABWRPGEI_IMGHIGH', 'yvaZ2ZyeDSFE3YB4HTDvTIZx2iQiKPQ6_IMGMAIN', 'media/images/1706952338890-image_picker_F2F63D34-1D18-4487-813F-DF50BDFC47E5-59689-00000CBC3F4C1A26.jpg_high_image.webp', '2024-02-03 09:25:39'),
('dQe4cOTVRtRmPDcuupjhscFsP0bqy6SH_IMGHIGH', 'v6HZBmiNLlRkTdfJ7Tf9CBe8qhnpv9Q0_IMGMAIN', 'media/images/1708597707512-image_cropper_1708597623606.jpg_high_image.webp', '2024-02-22 10:28:27'),
('E8wa28rfETqdsKDJ5taHBm8kmiG4nO17_IMGHIGH', '73YbIQprGWnBhpQ2vzjLAL06tjWuuyH5_IMGMAIN', 'media/images/1709128546159-07e7aca0-9fb0-41b0-8cef-3245f8bb14793287835785226539606.jpg_high_image.webp', '2024-02-28 13:55:46'),
('EaR4sDJ7uO9GJm0bOU7Gzo1iQHNh7KHM_IMGHIGH', 'gDJS5mOQzEJ750zOJQNkbvOmFXGf4FGk_IMGMAIN', 'media/images/1708599178617-903bb9ad-7cb6-4bd4-a0dd-d831cb358f383501874101656114326.jpg_high_image.webp', '2024-02-22 10:52:58'),
('EJjfIzXQ1sJCPBhTU5aSus92EAoaMWyE_IMGHIGH', 'louSdjOKEw5r30Z7gAumAHy2c7CtMkb8_IMGMAIN', 'media/images/1704267548766-image_cropper_1704267413444.jpg_high_image.webp', '2024-01-03 07:39:08'),
('F1vFyfEGklx0VlJSlMtL1Juz5d2UDhZY_IMGHIGH', 'y9ziiBFwEavtAH5vMAllYOriebXgUAt6_IMGMAIN', 'media/images/1708165661056-image_cropper_1708165645837.jpg_high_image.webp', '2024-02-17 10:27:41'),
('F5W2e3zLLaR1N8ekJzb7eXuu7Fn8iW6o_IMGHIGH', 'xVjhmBPLB1221cvy0VnFiOwPNelbfaDH_IMGMAIN', 'media/images/1709298792269-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_high_image.webp', '2024-03-01 13:13:12'),
('F8aI6g0X9xSLtl13uXUcYnzdKfsd5lJa_IMGHIGH', 'jhEkF9LQPfe8nyCr1Rl8av234zXacHFD_IMGMAIN', 'media/images/1708598008177-e879be18-0c63-41c3-8849-5105560c9de82404083425168951621.jpg_high_image.webp', '2024-02-22 10:33:28'),
('FKhjipnRcEvjsLMWOEBms6FlxsnDYZ7h_IMGHIGH', 'qxxDxOt26BiEpj9M4Yvi91nwmONVfFlP_IMGMAIN', 'media/images/1708599906710-image_cropper_1708599891031.jpg_high_image.webp', '2024-02-22 11:05:06'),
('FyEgRbmMjQd3xuYxSwI30P2oAlMBXo1E_IMGHIGH', 'gYCJ6QZc7n59nXSGytScMJfy8qNG7T1S_IMGMAIN', 'media/images/1705492906319-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_high_image.webp', '2024-01-17 12:01:46'),
('gc518xGkvDJqpsJx0F7NPmKMQNGAGYyZ_IMGHIGH', 'zwFZJmXqJ1oT04pRueYmWKC7lgizQj3o_IMGMAIN', 'media/images/1703137750385-shirikisho_profile.png_high_image.webp', '2023-12-21 05:49:10'),
('gLLwi4U6YGQ9AGPSh66pRjyN8fa4W80Q_IMGHIGH', 'EAx2O8KFwOJjpDyPVDHOtXDnK5QEugid_IMGMAIN', 'media/images/1703572346438-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_high_image.webp', '2023-12-26 06:32:26'),
('Gn5cRz0AHNr26wBbzoNYqjjvcYCK5R1a_IMGHIGH', 'w4BMRa1v2sZsRYaTEXirVz1XLDMd7Dag_IMGMAIN', 'media/images/1708599559353-image_cropper_1708599525533.jpg_high_image.webp', '2024-02-22 10:59:19'),
('gvYRJiaTkohwtpfmrtO8aDtSkR0rto9R_IMGHIGH', 'yEefnuZnMpvOQOaS1UpRkUYuVc1u2HMv_IMGMAIN', 'media/images/1703596233440-image_cropper_927F99FF-C446-4FB1-8163-C8A9D14BDC1D-71394-000001A77036D0E3.jpg_high_image.webp', '2023-12-26 13:10:33'),
('GYbWc2wj7Ur2aMWmrwJmCeHVGsnOYQp6_IMGHIGH', '9trAwAZ6gjAdigskxQt8Czy4gZ6m0yuT_IMGMAIN', 'media/images/1704371317562-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:28:37'),
('H0PFUmfDdPvMN45at625cqAJnz1H2qGx_IMGHIGH', 'nfQUUaxetscbKeoow0wslJuZryVxlgUU_IMGMAIN', 'media/images/1706508531900-bdeed265-b995-448c-95e8-2f225fff75954146240658243919946.jpg_high_image.webp', '2024-01-29 06:08:51'),
('hKD24wZ5LFezy1vpBlcQ5sEMbOJKcPo6_IMGHIGH', 'cH7h1FtMkdzLDCUhWSbUrfayrZwGPXcz_IMGMAIN', 'media/images/1703598246500-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_high_image.webp', '2023-12-26 13:44:06'),
('Htm26pXbdEPdSUjnNh8surW3iXHz4ud0_IMGHIGH', 'anhP28h2VkMPvzfAqjmn60PBGYOQzAxj_IMGMAIN', 'media/images/1706904293028-image_picker_DF783970-7453-47FC-89EF-5109ABA9C3CB-73670-00000C5DCDF84419.jpg_high_image.webp', '2024-02-02 20:04:53'),
('i0Vkoydbn1n2y290MZUzyNGIFSqhjGNU_IMGHIGH', 'lpFmkuUFPjYLduIl5N6RhdT2mLaQsEu6_IMGMAIN', 'media/images/1707294760882-image_cropper_927D92EB-0B3D-4276-9CF8-AFE5D175EE8A-89045-00000F33F6BCCB26.jpg_high_image.webp', '2024-02-07 08:32:41'),
('i8RIK45QQy4TZSBYDG9ZsHMSsSU9zTVj_IMGHIGH', 'LXwLByMC9UF1LdGx7kBAuD8a9Jgh8D6m_IMGMAIN', '/media/images/1703136747173-shirikisho_profile.png_high_image.webp', '2023-12-21 05:32:27'),
('IfY2ZprsrKfA6ahppOQzCeQ7wMdazmwc_IMGHIGH', 'dC3ZXzA5iZhLwQdB1gvsMu0badoA79aD_IMGMAIN', 'media/images/1709124382187-image_cropper_1709124354649.jpg_high_image.webp', '2024-02-28 12:46:22'),
('inkVWXLTSmVWoXB4mYqCHy18kN4YqGjf_IMGHIGH', 'I4B9itCTJFuWtY421TrQGHRPB4OlvQWE_IMGMAIN', 'media/images/1708600229754-image_cropper_1708600187321.jpg_high_image.webp', '2024-02-22 11:10:29'),
('IpiEvvkes6EKeDixGusu68nBLG6bJnys_IMGHIGH', 'nsxeahxebQEPEiagqslx87mLd9RVwvBy_IMGMAIN', 'media/images/1704790939074-image_cropper_1704790761561.jpg_high_image.webp', '2024-01-09 09:02:19'),
('IS6bEhnN9amsPhkgIjbgrRGV96HsE93k_IMGHIGH', 'Mpzcek5PlRgFA2Od3rg7wHe6ZD0hsYor_IMGMAIN', 'media/images/1706896326733-image_picker_DCA654F7-67C3-4648-B448-CC0474A54BB1-73670-00000C2F050A85E9.jpg_high_image.webp', '2024-02-02 17:52:06'),
('IxcArpb8es1qwknnI35EEgpP8KKZtqgP_IMGHIGH', 'HxIaMR9TunvLDbzGh82ys3Jgdidj9eAY_IMGMAIN', 'media/images/1709292573836-4fcfe5ac-174c-400f-bef9-579e101125855947578445664045451.jpg_high_image.webp', '2024-03-01 11:29:34'),
('J2tOvfOVmfYMU0I86IVBiySC5SpmtSV6_IMGHIGH', 'RpIcKj4lNHde73LusLmsjBWitc0ZxYRF_IMGMAIN', 'media/images/1707289934255-image_cropper_60833F12-5F55-43F3-AE11-B66CDFF69D98-89045-00000F1932218F1E.jpg_high_image.webp', '2024-02-07 07:12:14'),
('J9qQQeqrqfaLcelOGErsVl928llGshwW_IMGHIGH', 'OotIhtqLVBKntGWIOA49gjOncF892RLu_IMGMAIN', 'media/images/1704269906620-image_cropper_1704269890639.jpg_high_image.webp', '2024-01-03 08:18:26'),
('JBOosMr8dvRyX7kG3myoIlX4eVuk1yjM_IMGHIGH', 'sVXwXIfpsL0thgDJCEeMf3CWrvgSpoor_IMGMAIN', 'media/images/1705559892188-image_cropper_1705559865348.jpg_high_image.webp', '2024-01-18 06:38:12'),
('jnEuAX3HxLoiaxLHTRTbnPGuW8RsWF33_IMGHIGH', 'fLnoEpXQ1yCgrtNXaPgMmOyHT6VeUE4G_IMGMAIN', 'media/images/1708929573877-aac791a0-b076-49e9-bbeb-9cce4d08b7477652673047662149921.jpg_high_image.webp', '2024-02-26 06:39:34'),
('jRQ3iwlpb7nnN54Nf2MVoAx6HQPlu4wC_IMGHIGH', '5d9AHGHKRXrJ56Y09gToCltupr6gK3ov_IMGMAIN', 'media/images/1708165682064-image_cropper_1708165597596.jpg_high_image.webp', '2024-02-17 10:28:02'),
('KFHfNLkWOJ7BPZm3WzSSktBDQu7JuqLQ_IMGHIGH', 'MRWMlmI7Pc7tEQojiTsZYbmb74EbUa6M_IMGMAIN', 'media/images/1703596220329-image_cropper_7DA8DB4C-0395-430F-9C50-4730ED34A630-71394-000001A78D80B3BB.jpg_high_image.webp', '2023-12-26 13:10:20'),
('kMgBNFW7pWlDGq8ZeFxwPh6OrLyM7R7i_IMGHIGH', 'OgHV7oyE0Hr0kV4rwYAh917p20dpkKXK_IMGMAIN', 'media/images/1708949816806-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_high_image.webp', '2024-02-26 12:16:56'),
('kNFDflrwYg2zqwMFyYoX9gDSIyTloIrs_IMGHIGH', 'lYtGfsj9h3CELJeLS9boJTBpfjWNLHVv_IMGMAIN', 'media/images/1706777744477-image_picker_13D3E1A6-E515-4CF4-A070-8275172CDB77-11203-00000AC1912AE5DC.jpg_high_image.webp', '2024-02-01 08:55:44'),
('Kz5uMyAxzjxNaY1nakdkAXjlX0HWX1kr_IMGHIGH', 'gO6g5wlY1Ze0BEXY78RgUMFRwcxiRkQM_IMGMAIN', 'media/images/1708167506925-image_cropper_1708167489638.jpg_high_image.webp', '2024-02-17 10:58:26'),
('lBISVJIeI9brJjj0Ye4pTLQbwjG9YKLs_IMGHIGH', 'IpkChZ4p2nGhKCh6qb9ZPnaonYUEypuG_IMGMAIN', 'media/images/1708599911039-image_cropper_1708599854578.jpg_high_image.webp', '2024-02-22 11:05:11'),
('LbymZVy1auaeqKhe2Z6Ml9RooEWkMM7c_IMGHIGH', 'cMLnpTZbyrK4DHhxMnnWXTIydAlFuMb2_IMGMAIN', 'media/images/1709024174730-image_cropper_1709024108715.jpg_high_image.webp', '2024-02-27 08:56:14'),
('LCWFrpxcl2tOasIWlY5zFoTzZokfpk4Y_IMGHIGH', 'xLcizghJWZy4czlrZAjBdxyDlUDrFsd5_IMGMAIN', 'media/images/1704371631144-image_cropper_1704371612984.jpg_high_image.webp', '2024-01-04 12:33:51'),
('lDdZYwUneXpEl8pkMEbETd9i9zvpmv8e_IMGHIGH', 'JncRcmDj3vbdfykJCRCOiMmemBkfcads_IMGMAIN', 'media/images/1705493200079-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_high_image.webp', '2024-01-17 12:06:40'),
('LENYPoAqDzpfzZQDo1CaxUFVjuMF0Stx_IMGHIGH', 'hAAmhPAJwjrgSbMtvIA9ifi8bQia152P_IMGMAIN', 'media/images/1709024234585-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_high_image.webp', '2024-02-27 08:57:14'),
('LlEah2dXiwGdjBAAIcKKPMp5fQKCV7iJ_IMGHIGH', '8jqbBfCVimudSbspF7hKjNABOADZlGy4_IMGMAIN', 'media/images/1708439660511-f93d9dd1-79f4-42df-b8d2-aa544322fcd84932086145810993617.jpg_high_image.webp', '2024-02-20 14:34:20'),
('lLzEbAOrHJUN7q71IsYQYics2eGY7Isl_IMGHIGH', 'hYfMJdSH9KNnFEDHk9YWzpQ3RmO932v7_IMGMAIN', 'media/images/1706508536537-b92474fa-d9ab-4c7b-8341-3f331067c80c5380496020008031352.jpg_high_image.webp', '2024-01-29 06:08:56'),
('m8TthglEOO8m3X2MjlDcTjwmk9bDt72t_IMGHIGH', '2cKyPOtwC9SkaXBd4ChnEVCQsw03schT_IMGMAIN', 'media/images/1708791160218-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_high_image.webp', '2024-02-24 16:12:40'),
('MAchC2y1NQVLxuaSAfvBawNMtMuuto03_IMGHIGH', 't6AODinWywrE5MDQEaVoht6EKXcpKzzT_IMGMAIN', 'media/images/1704372240044-image_cropper_1704371612984.jpg_high_image.webp', '2024-01-04 12:44:00'),
('MDxCt3U5SBxTVvhtGESDSJuFaqNJOyrp_IMGHIGH', 'C5LihaCrrUw60X1PfLxjrNs0XyWiZTM8_IMGMAIN', 'media/images/1709024254685-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_high_image.webp', '2024-02-27 08:57:34'),
('MIoenXz15g5nZCyWKiJYY0SpFqZhUEJi_IMGHIGH', 'T7jA72xw4lvViOtw4X4DUUEWRCd5ejBh_IMGMAIN', 'media/images/1708165985862-image_cropper_1708165896357.jpg_high_image.webp', '2024-02-17 10:33:05'),
('mJ3LrUjP9dXHh52oXEjpyV2qhXYuRpUQ_IMGHIGH', 'ftvDrto0lXo4r0CX2laf3iOfx96HD5Oo_IMGMAIN', 'media/images/1703599093114-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_high_image.webp', '2023-12-26 13:58:13'),
('mPNMCKPQrgTlBGJmtuTJft6DfIGmGkCf_IMGHIGH', 'VOrYVUNock29rtmtRbmeQWRyfe9AkK6s_IMGMAIN', 'media/images/1709122977436-image_cropper_1709122841668.jpg_high_image.webp', '2024-02-28 12:22:57'),
('msQW75QbpnnBUsDdg4s2cWcRPiRMqQz8_IMGHIGH', 'dA4kkJ0IpgiEYWo7yRXdqvcPBnpQOILm_IMGMAIN', 'media/images/1708162426900-52537fef-fba4-424f-8e33-36f204f6e0a96162239675525458905.jpg_high_image.webp', '2024-02-17 09:33:46'),
('N3EBUqa0jj8q5AexV1eeCv97aG9G1mmu_IMGHIGH', 'SpI6okmeOjDXUH1gPrcbExxkfTPPJUNO_IMGMAIN', 'media/images/1708791189978-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_high_image.webp', '2024-02-24 16:13:10'),
('n96Bec1WxpE2M8etWq3sgIFlfloWxTh1_IMGHIGH', 'XicrnPDVVHmvAmmUUaU8v11ybDNnV7j4_IMGMAIN', 'media/images/1704371104671-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:25:04'),
('NBppnkg3I7iyCELqNim0MOUYfcb7Pqmb_IMGHIGH', 'JqDboQI4qRMB1Vd7dsWkjKlFiIO5mgvK_IMGMAIN', 'media/images/1708770059750-image_cropper_1708769991553.jpg_high_image.webp', '2024-02-24 10:20:59'),
('ND2Xia4VQk2GFgnLzt29VPGSWBN9i36i_IMGHIGH', 'QNm4Yxn0S4ZTmsuRrynHtWzjUiMI9gvK_IMGMAIN', 'media/images/1706770043019-image_cropper_F3894ECF-AB65-47FF-9552-18DD4F9E6958-11203-00000A98EBFDBC45.jpg_high_image.webp', '2024-02-01 06:47:23'),
('nIcDATy8pdSdvUnmUFUPb8E7p95gmlh9_IMGHIGH', 'sEzata7fVZnTDnNfWxqHHwPjcfbnqGwT_IMGMAIN', 'media/images/1708598758419-f188ac4d-50f7-49e5-98c5-568472bb1be58122157743204537228.jpg_high_image.webp', '2024-02-22 10:45:58'),
('nJAHI6pYDTcVuiqIKf5tFD3be9Q8umRs_IMGHIGH', 'cpOJh3kQw4XlNAXKywCvs1VuCH4POrVe_IMGMAIN', 'media/images/1709024229095-image_cropper_1709024108715.jpg_high_image.webp', '2024-02-27 08:57:09'),
('nJR5rQFFsvoUcx0D3bpeODyxNAJf2xXR_IMGHIGH', 'UiLmg6sHrM3Q5fsnKYeeGINuMU1x0yKh_IMGMAIN', 'media/images/1708167510316-image_cropper_1708167461311.jpg_high_image.webp', '2024-02-17 10:58:30'),
('nqNO3v0YIRhmdn2sX1UFTnUaKGF9Und4_IMGHIGH', 'UhVDiyAXzGT2FEfh6xYK5scxNw3M5elt_IMGMAIN', 'media/images/1706903779179-image_cropper_78C6FC59-15CC-40EC-B389-8691A98E7BDE-73670-00000C5BBF71DBBE.jpg_high_image.webp', '2024-02-02 19:56:19'),
('NR5H8t9fD7gjxyC6l2VRGUPZW9PGfk3U_IMGHIGH', 'WT8FJ1kFWJR0I2gmMvxsFlLSeoeYoHYC_IMGMAIN', 'media/images/1703141892004-Kazi-Pay-login.png_high_image.webp', '2023-12-21 06:58:12'),
('NRvidekzK4f6mBeLmFs1ZFtx1gV8xYD1_IMGHIGH', 'cXrXqmqtmPZAYCpLISoRwz3JTL8USRBa_IMGMAIN', 'media/images/1708166118314-image_cropper_1708165896357.jpg_high_image.webp', '2024-02-17 10:35:18'),
('NVw1DHBKCRrxC5elI5qoxL8S5D0OtGiY_IMGHIGH', 'AJW5SHcQUg3koAdieLKSuGIkygd4i6rR_IMGMAIN', 'media/images/1704371433966-image_cropper_1704371407077.jpg_high_image.webp', '2024-01-04 12:30:34'),
('nZoaeN1ZsdyS4xIlsNQ4gIJhKU1gVRcn_IMGHIGH', 'YW8wuORPzLf1azpIwz7sXKifsoeEX5Lb_IMGMAIN', 'media/images/1708949838319-image_cropper_1708949745479.jpg_high_image.webp', '2024-02-26 12:17:18'),
('nzRLh22tH2ZRXN1IHf8zCg9Y1hx2S1ZQ_IMGHIGH', '9W88sEIfNYMddRLP4E2P16zhSWtJ7nvW_IMGMAIN', 'media/images/1708165983207-image_cropper_1708165926321.jpg_high_image.webp', '2024-02-17 10:33:03'),
('Os3ZucmbYmvXOgHxsoSIwbgMsGGjUOKj_IMGHIGH', 'Yo5oy2XpLrtB2ZeS3KvyiH4pijEA2jzk_IMGMAIN', 'media/images/1704704928613-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_high_image.webp', '2024-01-08 09:08:48'),
('OSUVMJWC9RREepCXFWV4yEAU5Rustp05_IMGHIGH', 'N6T1eCBR1SfuNFdkZxlwo3lYE5yr8VvJ_IMGMAIN', 'media/images/1708165678452-image_cropper_1708165645837.jpg_high_image.webp', '2024-02-17 10:27:58'),
('Ov8cwocafgo6mC61uQmSZDFLpnUbvkqh_IMGHIGH', 'mVaov3pNc1uz3hjEhQ0VkmulB10dsveu_IMGMAIN', 'media/images/1708696896027-0860b6ae-1146-4f94-9bd1-0dbc19c699e71146998765741838511.jpg_high_image.webp', '2024-02-23 14:01:36'),
('OZlQD3GwwX6J4tww9aDgXN7zcmRqfhSp_IMGHIGH', 'QLYeL3xhwyCY39hS66q7BYUGqgmFsSmd_IMGMAIN', 'media/images/1708597703192-image_cropper_1708597687916.jpg_high_image.webp', '2024-02-22 10:28:23'),
('oZRjAHJAC9SpJRg0oZGVmy9ZJ9U0md6b_IMGHIGH', 'nfnarGjDEIE8A33rdnyWqAp8SiEpHm8x_IMGMAIN', 'media/images/1706903391915-image_cropper_1A8F3A87-EAF6-4B1D-A75D-CAD34014B947-73670-00000C598DFB4BA5.jpg_high_image.webp', '2024-02-02 19:49:51'),
('PCoOTeSuzjMnsmlD7DcfVuVuEai770QX_IMGHIGH', 'LwTjuRPUFf5CW7pNBIyQGUxdckgYTrro_IMGMAIN', 'media/images/1709122951390-image_cropper_1709122932951.jpg_high_image.webp', '2024-02-28 12:22:31'),
('PcsPTMHtZuSWrdYkL5uPQmCPeT1Pl8Vr_IMGHIGH', 'uaYdA4ruXQpvOTNw4pBhEI670p7EaZ0p_IMGMAIN', 'media/images/1707294754933-image_picker_9E578D49-3741-4B1C-86A3-23624BA31C0E-89045-00000F33FF77BC22.jpg_high_image.webp', '2024-02-07 08:32:35'),
('pgLTMOR91czhHbe1XjkGsgS0CjJA0mkw_IMGHIGH', 'PFd53G3IPjeEKHsp8ofWYQkhCIypYOB8_IMGMAIN', '/media/images/1703087778670-shirikisho_profile.png_high_image.webp', '2023-12-20 15:56:18'),
('pGmPGBfk4sKkcBLxTa8htqvonn68Uv1d_IMGHIGH', 'XG69X9gbIiMox3Uil1TLgTzar3oT3AYV_IMGMAIN', 'media/images/1708598762607-image_cropper_1708598721878.jpg_high_image.webp', '2024-02-22 10:46:02'),
('ptcUNrv0l1gJ0G0x6SXvgs3kwEmvzZVO_IMGHIGH', 'PFlRUiVRNV5IOA39gLii1GcQXQ9jwTM1_IMGMAIN', 'media/images/1708597326458-image_cropper_1708597260457.jpg_high_image.webp', '2024-02-22 10:22:06'),
('PtkhE4S09Byfsk69ZU1jUsG7nf66jXx8_IMGHIGH', 'oLhJuFinTuUEFATHJ3QVqzXAj8ek2qAz_IMGMAIN', 'media/images/1709124385995-image_cropper_1709124330864.jpg_high_image.webp', '2024-02-28 12:46:26'),
('Q51DDk4m9Od3iZYK1KHMHszSziYNmbfd_IMGHIGH', 'OqpFw7bVHrl1PJ1WMcDFHTrW03tAp3ER_IMGMAIN', 'media/images/1708929579278-da5ae302-f1ce-4c30-b75c-9fed3abeba9e6303638667650661210.jpg_high_image.webp', '2024-02-26 06:39:39'),
('qer917TuuVq4ubuk0xgt9vJrK10VAQAu_IMGHIGH', 'AOCoaWG1q0zrlZhQq2wfkieKpgZ77uU5_IMGMAIN', 'media/images/1703141804770-shirikisho_profile.png_high_image.webp', '2023-12-21 06:56:44'),
('Qt6C4Zg5kGL8PG4mVhp80XuW8Du0UhHo_IMGHIGH', '4L6dfkcKd7PR7kMa4twUOPbMqIUnhicI_IMGMAIN', 'media/images/1707289939569-image_cropper_221C451A-AF3E-45A6-9DE4-D5F029F513D3-89045-00000F191669DCD4.jpg_high_image.webp', '2024-02-07 07:12:19'),
('r8LwFNFlHPbxMjiOOEcmxGk5U9mGrAYv_IMGHIGH', 'DGhwBuvTNn3VMrzY8M1ynM6ERCdwMRxG_IMGMAIN', 'media/images/1703599112053-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_high_image.webp', '2023-12-26 13:58:32'),
('rby3MOn6URae92oc82JiJITO8Tl1o32z_IMGHIGH', 'dxrChkAsRHI3bImWcwVuPeBSDoL5pKHt_IMGMAIN', 'media/images/1703572935760-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_high_image.webp', '2023-12-26 06:42:15'),
('RcFkyxXLv5n7BVXIRYnUhsgDCDfmYQSZ_IMGHIGH', 'N8OJMfhWZcnP3iBSJn3MMJEIQhcysd3R_IMGMAIN', 'media/images/1708166115060-image_cropper_1708165926321.jpg_high_image.webp', '2024-02-17 10:35:15'),
('rD4fCFamSAyRGizJHIewihILYIMxVcgH_IMGHIGH', 'CckUVol6IPTLue8WFAwidGZA6AiqPOZq_IMGMAIN', 'media/images/1709023694227-ca4e9240-3ebd-4d6f-a239-f4dffbe3c9f94427277393898852800.jpg_high_image.webp', '2024-02-27 08:48:14'),
('RRQpYK151xPYg6gBdC6ZKud21Ogr3Hjf_IMGHIGH', 'OLlertMyL8N24vW9sWHDefJYpKLeGi1l_IMGMAIN', 'media/images/1706952275750-image_cropper_9B9B9254-E408-4F64-954E-D00621C2E4C9-59689-00000CBC5F9F12AA.jpg_high_image.webp', '2024-02-03 09:24:35'),
('rXhUxjA2nA7LTId7igbtm7qbqbbPNWOe_IMGHIGH', 'cwzMCiS8DMu67cDoD4AnhGuMqpbh4Iab_IMGMAIN', 'media/images/1709296471920-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_high_image.webp', '2024-03-01 12:34:32'),
('s11zCmyjfOD8h38S3c0TFnkYD01Zcyo7_IMGHIGH', 'msDMugw5R11oXmNr80dylfs0kOmLSd40_IMGMAIN', 'media/images/1708682955476-dd778b53-6f1b-44e8-bfb2-b7abeacb3af45286255035694682931.jpg_high_image.webp', '2024-02-23 10:09:15'),
('S4Pd38n79mYbY52wI84CHHKAwCLyUftL_IMGHIGH', 'sdcGI8TQwLH2F3f5v4runAzWP33CIFSi_IMGMAIN', 'media/images/1708428464981-84b3bc7b-44fd-46d1-b581-5e6e8aa9a7d3781005483756302703.jpg_high_image.webp', '2024-02-20 11:27:45'),
('sbyRPLa6FEki8EQFQOgXETNbwifmmGw6_IMGHIGH', 'l5o2Gi9ezQme2IxJZhhCJFXKBsQHh2vD_IMGMAIN', 'media/images/1708676634436-image_cropper_1708676579623.jpg_high_image.webp', '2024-02-23 08:23:54'),
('sDQEbXAoj7CTIm28V3v5kevvyvvSI0lV_IMGHIGH', 'fdyQ4QSstYO4vmwGdsOUmkik2dnCqW3O_IMGMAIN', 'media/images/1708950202339-image_cropper_1708949745479.jpg_high_image.webp', '2024-02-26 12:23:22'),
('Si7zdOwsyPexPADvMFWhjjVkpJKvXXUa_IMGHIGH', '1zHkqxw09L6XPbVqCwnhyEmsxqHc7fmh_IMGMAIN', 'media/images/1708428434653-388e8de9-5234-40aa-8bd9-20522ce547116947850266697007888.jpg_high_image.webp', '2024-02-20 11:27:14'),
('SRp9qZo5t81fz5mjNDs6fVYUo2zqhQVE_IMGHIGH', 'KD7Qx8PSp2OL3O4gS3G1zdNvPacruBhz_IMGMAIN', 'media/images/1708791056638-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_high_image.webp', '2024-02-24 16:10:56'),
('SvpAAxN5OqIOKpodO8F1pn8wvgSIyQVr_IMGHIGH', 'C1BDyJr2Aeg0djEmYlGXB01YKQwa5LGM_IMGMAIN', 'media/images/1709296452938-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_high_image.webp', '2024-03-01 12:34:13'),
('t3RoMBuc4VJxokxg7Fyh5f26nCFTKlDf_IMGHIGH', '4cwEyrjsaRvsia9ioRwNABrzljUiKa04_IMGMAIN', 'media/images/1703571691768-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_high_image.webp', '2023-12-26 06:21:31'),
('tAzUDpcPmDELUxtUVRYimiT5q50hR5Ou_IMGHIGH', 'Y21jD1LD3V4ltwOuuwq0jNDr1jr8PhhS_IMGMAIN', 'media/images/1708949900237-image_cropper_1708949745479.jpg_high_image.webp', '2024-02-26 12:18:20'),
('thdNpToM8WnNF5n7AIwM3aopJ1zyC7GL_IMGHIGH', 'sheuFZa45pHZEswOQetflM9oOeirIkyr_IMGMAIN', 'media/images/1703169664116-1703137750385-shirikisho_profile.png_low_image.webp_high_image.webp', '2023-12-21 14:41:04'),
('tQRrEOByz3BKNJGspefBT4ywlMDs69TK_IMGHIGH', 'gZ1fkN8iUaPk3zctqpfF1fr67CJ8vWYT_IMGMAIN', 'media/images/1708682957797-Screenshot_20211118-104029_WhatsApp.jpg_high_image.webp', '2024-02-23 10:09:17'),
('TsvjNUncauaW2S5OrWQuJVaxddJEkIhz_IMGHIGH', 'N8URY6nT8MqTlr5fU9cQheeUqKuED4Cg_IMGMAIN', '/media/images/1703091747420-shirikisho_profile.png_high_image.webp', '2023-12-20 17:02:27'),
('tumcNmWMELXfbQcygoM0wUYC3L5FseSl_IMGHIGH', 'qWY0fWSO9TSMCX9XazRbkOh7M3u5Jyxd_IMGMAIN', 'media/images/1708600506786-37a98459-6399-4f21-86d8-03e0c595e4b41026559217871337746.jpg_high_image.webp', '2024-02-22 11:15:06'),
('TUp5orXreMnAyXkU8Se9F12DWTTQleIS_IMGHIGH', 'NGLFH1v99d1f14tIr8h7YGZylbGdDxRX_IMGMAIN', 'media/images/1704704983041-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_high_image.webp', '2024-01-08 09:09:43'),
('tzxRikwgUl95ZF744x352yGe2uJBuIu9_IMGHIGH', 'Iv2TMwvH2e0sb5OUSJlnERwNEDIwAncW_IMGMAIN', 'media/images/1704371094638-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:24:54'),
('U1WGb9hIqDTh0gzDJxytbx7sNyx2e6Sb_IMGHIGH', 'Gg6PnWZGlyZLXFysf636eytWwLLhn5iH_IMGMAIN', 'media/images/1708439668787-74715e57-3e26-4f58-943a-aaac1fe533886081319330334936266.jpg_high_image.webp', '2024-02-20 14:34:29'),
('u4JfUt9duEPI4LDSTNiLNPbAfzEzbL3p_IMGHIGH', 'O4eAkwaQRt7YWd2C9eKsph1DqbrnNcSZ_IMGMAIN', 'media/images/1708683653737-ab219e32-22bb-4615-bf21-92cbfb0858c01392222992875977841.jpg_high_image.webp', '2024-02-23 10:20:53'),
('uEoQgHCiBscLSbzZ1m2joHX3T4U3D3Z4_IMGHIGH', '71IK8hyHsvzFiA6T1AgQWnDRYCb9hHmT_IMGMAIN', 'media/images/1706953161266-image_cropper_91861E2B-AE07-4B12-B4C0-C378C63A6389-59689-00000CC166AB77B4.jpg_high_image.webp', '2024-02-03 09:39:21'),
('UmWKMLIaLeGjbYQQbmW3Jzg6qWL7l5fh_IMGHIGH', 'ZJvZ6ZDZHNkOV2b4oRuPc9m4LrcOkNm7_IMGMAIN', 'media/images/1708598329315-image_cropper_1708598278780.jpg_high_image.webp', '2024-02-22 10:38:49'),
('uRMCRK6aym3EbAaYapu5Xj5JewIeSvxo_IMGHIGH', '2tBvFvLf5UJI7AEZWjIIcbD1mYTYuycP_IMGMAIN', 'media/images/1709299136600-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_high_image.webp', '2024-03-01 13:18:56'),
('uY5OskFZCuodZt3FfFy3ROXp3QUUANJe_IMGHIGH', '1dKbizW5ZH5MVUICxiuIZdht6Z00USiR_IMGMAIN', 'media/images/1709127617058-image_cropper_1709127506259.jpg_high_image.webp', '2024-02-28 13:40:17'),
('V6Tc61OnA8EYpRJ6I3LfFz9CfYLx93T2_IMGHIGH', 'PoYLevUyOuwHsC7R5zQTcWqS6f5ABZj3_IMGMAIN', 'media/images/1708696891161-6e2c2142-a966-4a18-a1d0-a4675c6bdb3f5907571963297385674.jpg_high_image.webp', '2024-02-23 14:01:31'),
('VARF5DsTZAg1iqodhkh8KY47pRYy5X7n_IMGHIGH', '72Qq9gLxT1Z6C2YMdiETkzpIUq3GhFTD_IMGMAIN', 'media/images/1709127583166-image_cropper_1709127531514.jpg_high_image.webp', '2024-02-28 13:39:43'),
('VBZrZdEyN1cLpJJAH4PLjLLQe2vdS1mM_IMGHIGH', 'MVAyoGAX1NTFqb15Bhu2voOcZezg8L5d_IMGMAIN', 'media/images/1709027763984-image_cropper_1709027746582.jpg_high_image.webp', '2024-02-27 09:56:04'),
('VC2Qxrs2pSwAqszSG2HvizypzoJeF2OA_IMGHIGH', 'kc4aaZUAZfmYtRKUw90mfo7oe5gpPFxv_IMGMAIN', 'media/images/1708791172283-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_high_image.webp', '2024-02-24 16:12:52'),
('VlUgoy2hECAigpb3WpvyonStDJgTjcds_IMGHIGH', 'NJLK5mnonJpE6aQbA4nGMHPAbfDBk1SP_IMGMAIN', 'media/images/1704372341538-image_cropper_1704371612984.jpg_high_image.webp', '2024-01-04 12:45:41'),
('VpUjpCTDwdRAN4tFTmu8zcsdPAKFKiz1_IMGHIGH', 'qt2y2BFdn7lObqr3ptQ3KjXPKHL3ufIX_IMGMAIN', 'media/images/1706903398072-image_picker_8E89BC9F-75B8-497D-B5F4-2E3B5D626BF2-73670-00000C5967F2974A.jpg_high_image.webp', '2024-02-02 19:49:58'),
('VTXDj21N7PYThjiprUEygj8ozzfgcn0T_IMGHIGH', 'VEvEQ7lZfjxMaF1YsP9GDHzt9jUMlMXp_IMGMAIN', 'media/images/1703170063845-1703137750385-shirikisho_profile.png_low_image.webp_high_image.webp', '2023-12-21 14:47:43'),
('w9s1K9Gl8PhMs2sBwsI1LTQkkLIi5o9d_IMGHIGH', 'fZapKG8nYMLbZ3liEBCLIM1BJb3xrAlH_IMGMAIN', 'media/images/1708165940233-image_cropper_1708165926321.jpg_high_image.webp', '2024-02-17 10:32:20'),
('Wkrs7x0DaRwNXtAME9jMxO2M5xPe9MCX_IMGHIGH', 'KaMiko841HSFyc5j2sZeXwZYO1TD79Fd_IMGMAIN', 'media/images/1708683661782-a58f4fe1-512a-49ee-9130-ef5e470666e12876383331376744062.jpg_high_image.webp', '2024-02-23 10:21:02'),
('Wn0tp1FGxkeP9U6CarO2xOyDAHTctRma_IMGHIGH', 'ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', 'media/images/1704790935146-image_cropper_1704790896355.jpg_high_image.webp', '2024-01-09 09:02:15'),
('WNETnvzLMLHwoBtVr70aN3S1d5NzZQJy_IMGHIGH', 'rBhWw5M4gixWVCy7CiR7RMOo7LItANXW_IMGMAIN', 'media/images/1705307661667-8b32b114-3a3d-4d71-b3ad-c2ee1a24a3237821973192545816871.jpg_high_image.webp', '2024-01-15 08:34:21'),
('WRWQDnig4lRdMuQAdJRIR7Z1x8wqh6Ov_IMGHIGH', 'J276EEgcsUosgc0qTLB9Re2OzBdKH7NM_IMGMAIN', 'media/images/1709027775178-image_cropper_1709027718976.jpg_high_image.webp', '2024-02-27 09:56:15'),
('wYXXW6Yj7uoaHCVscjqF4ymjDOwmri8Z_IMGHIGH', 'xLtQhULBXeIiYKSFEyCFsSLxGbDUHjDq_IMGMAIN', 'media/images/1704371200355-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:26:40'),
('x5PqEARNmuaDCOg87VeJTmpo4vJfuOcE_IMGHIGH', 'E32DQNUtfT1kM6wNut0bEaXmGcTADzxL_IMGMAIN', '/media/images/1703137643350-shirikisho_profile.png_high_image.webp', '2023-12-21 05:47:23'),
('xJ5cMqwkIiPTi8dHY5J5zxrta194Ejdn_IMGHIGH', 'js81Y5w9H5vXuctxaUIi1Tb5cFkzRfbw_IMGMAIN', 'media/images/1704457566708-image_cropper_1704457508237.jpg_high_image.webp', '2024-01-05 12:26:06'),
('XkaHs2qyQrbILcvF8NJwMx1EKwYz11Et_IMGHIGH', 'OFdOkoQNyjx5GAqHPjJtLck9KhMtL7vI_IMGMAIN', 'media/images/1704371326297-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:28:46'),
('Y3Tb83TaZyeyRhlMvMekdX2FgMXwF98N_IMGHIGH', 'irmrP0WjPu68xgCuGa0rm4xH3UrpXtYV_IMGMAIN', 'media/images/1708950405491-image_cropper_1708949745479.jpg_high_image.webp', '2024-02-26 12:26:45'),
('yaGIKwqaUUW8lHraMcwTNIsMfkVrzZ0o_IMGHIGH', 'enqKHKpsCaP4nX2nyjTv6xHFlJPjiiCC_IMGMAIN', 'media/images/1706787840623-image_picker_2959728C-6A61-4D6D-8B2B-C338523C7BF2-11203-00000AF96E4B8FBE.jpg_high_image.webp', '2024-02-01 11:44:00'),
('YBAfhiZ2JAtqo2F4KE4WCvNIRyzRkGcG_IMGHIGH', 'ljQry4miR2IhX6DFuRwzrIPtiUTPSbHo_IMGMAIN', 'media/images/1704371187036-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:26:27'),
('YGPKVMjB7dO7Agxa85xxYmHL806hCbpN_IMGHIGH', '92LJMMaHTzmfaOQIQKcCdVGR8UMYe6p9_IMGMAIN', 'media/images/1708169179993-image_cropper_1708169125771.jpg_high_image.webp', '2024-02-17 11:26:20'),
('YK4dnehG7xErHlXIZfYDxxxfzQw8vomx_IMGHIGH', 'RMWPNIEYheXvF95mmeirXS1LaPvE30bN_IMGMAIN', 'media/images/1708599555305-f8fd396d-b905-4135-a2f3-690394eb43cc51732956033614115.jpg_high_image.webp', '2024-02-22 10:59:15'),
('ymBVjw9bOc6Yc15tZoHnmkL3ZzQGvP4V_IMGHIGH', 'LnshmNb3sngBhOILJj0ZAbHxbrciVFIb_IMGMAIN', 'media/images/1709023689348-image_cropper_1709023638476.jpg_high_image.webp', '2024-02-27 08:48:09'),
('yn52QvJWt13mcuUkZztUj2VUt6J7IARL_IMGHIGH', '0ieouq4NQsb9Uo9FczIPi1LdBk7gZG84_IMGMAIN', 'media/images/1708600661180-6acc29d4-dcf6-492f-819d-0d89e47c4f1e8305373629186375024.jpg_high_image.webp', '2024-02-22 11:17:41'),
('yRbl567hNRrGzWetEUlAeuHrAhaINmp6_IMGHIGH', 'H28UszlIwOYpta1YIsoflrM014jrYYsk_IMGMAIN', 'media/images/1708950377462-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_high_image.webp', '2024-02-26 12:26:17'),
('YRbV6cPf5ilc32pvns1ooZkEvCckweV6_IMGHIGH', 'IbmGjSwDmWEsnSxlWEqmMrpBek6NFUaF_IMGMAIN', 'media/images/1708598325507-11dcec13-fa66-4e69-be02-5e5bde552d49613088214524313411.jpg_high_image.webp', '2024-02-22 10:38:45'),
('YrNfTi1ahzLGhYzI8WX7lwxRcUvfWSWx_IMGHIGH', 'BZqXMWLk5rASCEjsOMzXSW4truqHnQ0l_IMGMAIN', 'media/images/1708770053594-image_cropper_1708770041336.jpg_high_image.webp', '2024-02-24 10:20:53'),
('Ysen9onEBKF9GvbcsdoNHujUt1FIwI4P_IMGHIGH', 'yEYiKb9i2eBRPao8fyyTJDL3DfznroVp_IMGMAIN', 'media/images/1708676630470-4560083d-86a0-4ea7-8bb5-9a43c3797eb85179977862731130094.jpg_high_image.webp', '2024-02-23 08:23:50'),
('yvYnXsASMzKmiZ1dmsdox1Q2ScqchhDx_IMGHIGH', 'UHAGeUOUxoQEOugs8Ka6aCrkFsxpqFrg_IMGMAIN', 'media/images/1704371241041-image_cropper_1704371075984.jpg_high_image.webp', '2024-01-04 12:27:21'),
('yyfymDpKrIqejBLFXGlNLhqLHTFb3hcI_IMGHIGH', 'f8tgzikFRfjwDkpni2sH8lwsMpW1sSMP_IMGMAIN', 'media/images/1708950176760-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_high_image.webp', '2024-02-26 12:22:56'),
('Z3SlJ3yfxwBcZtgTGRgYhZwPPqWXls5Q_IMGHIGH', 'oVso28IJawQPVAxuWbE8pbSsmKSYsIER_IMGMAIN', 'media/images/1706896458958-image_picker_B14EF025-8FB7-48E1-8E68-CAA69D57CD6D-73670-00000C2EF34844E3.jpg_high_image.webp', '2024-02-02 17:54:19'),
('Z6gBrb6QuPzhbH4ECadllj6m9CpKVcZ4_IMGHIGH', 'RY7fPhkobSQa8NnrafErxHKtkK0aPHY1_IMGMAIN', 'media/images/1706787846138-image_cropper_5C503533-2918-42E1-851F-652EA8F69338-11203-00000AF963919974.jpg_high_image.webp', '2024-02-01 11:44:06'),
('z7n0p38HiHwRgkR9mEXB9UzfP47QT2A3_IMGHIGH', 'Og4TFRZzmFZULeju15Xis6V4I0HthDCW_IMGMAIN', 'media/images/1705559889885-1a4ab5c0-9b60-449d-978c-8092d75cc1928832869752204363697.jpg_high_image.webp', '2024-01-18 06:38:10'),
('zHSL4SP1y7W7PNfmzJfpqz8REpycKqqs_IMGHIGH', 'X8L5p24x03Gw2BKn1inUh1UnYYOd78il_IMGMAIN', 'media/images/1706600185954-08984944-98bd-48c6-94b2-790574c177123492253817966153328.jpg_high_image.webp', '2024-01-30 07:36:26'),
('ZnhejliU51fGii45i2ciG4orik3VJBEg_IMGHIGH', 'd8HQ4vGwtDaL9RYlqgBFUxbAs9MqBsdT_IMGMAIN', 'media/images/1709381167614-image_cropper_1709381089393.jpg_high_image.webp', '2024-03-02 12:06:07'),
('ZT6rYGAX5ZzKXVCLgwMFAj5XxkI0r30o_IMGHIGH', 'F87EqR6wlhqmiJmV3zCEVMEOb8foEJzO_IMGMAIN', 'media/images/1709299155253-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_high_image.webp', '2024-03-01 13:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `images_ql`
--

CREATE TABLE `images_ql` (
  `image_id_ql` varchar(225) NOT NULL,
  `image_id` varchar(225) NOT NULL,
  `image_path_ql` text NOT NULL,
  `upload_date_ql` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images_ql`
--

INSERT INTO `images_ql` (`image_id_ql`, `image_id`, `image_path_ql`, `upload_date_ql`) VALUES
('018cKFdYXYndeXOcBPe6DzTYIpQt3gis_IMGLOW', 'v6HZBmiNLlRkTdfJ7Tf9CBe8qhnpv9Q0_IMGMAIN', 'media/images/1708597707512-image_cropper_1708597623606.jpg_low_image.webp', '2024-02-22 10:28:27'),
('0PAE779HLgKDIOtFhqTaB2vHqiVesDqV_IMGLOW', 'dxrChkAsRHI3bImWcwVuPeBSDoL5pKHt_IMGMAIN', 'media/images/1703572935760-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_low_image.webp', '2023-12-26 06:42:15'),
('1QzzsT7MPqUd3Ah1G6ivYaKtOBklXGSF_IMGLOW', 'lO8TBSdaHzFS6ZzAzTuDVWSAcitpseNZ_IMGMAIN', 'media/images/1704372737035-image_cropper_1704371612984.jpg_low_image.webp', '2024-01-04 12:52:17'),
('1TvflRfODkAaaFmO4KbPZ3adtP3qQ8bk_IMGLOW', 'ER6XhMQaiuQa71Qvard4P7SvU1lx4JXZ_IMGMAIN', 'media/images/1708942426181-2480d735-cc45-4d41-b634-f593d48bf2223826952024470443642.jpg_low_image.webp', '2024-02-26 10:13:46'),
('2G0Meego1gO66oLn1B8RNblkMSHGOD23_IMGLOW', 'N8URY6nT8MqTlr5fU9cQheeUqKuED4Cg_IMGMAIN', '/media/images/1703091747420-shirikisho_profile.png_low_image.webp', '2023-12-20 17:02:27'),
('2kNFwLKjLarAuaVtSnHgh8anCS45X6Fs_IMGLOW', 'jhEkF9LQPfe8nyCr1Rl8av234zXacHFD_IMGMAIN', 'media/images/1708598008177-e879be18-0c63-41c3-8849-5105560c9de82404083425168951621.jpg_low_image.webp', '2024-02-22 10:33:28'),
('2pN4nGuvzbewC5at1K28pWLBHnq1Vf2U_IMGLOW', 'VOrYVUNock29rtmtRbmeQWRyfe9AkK6s_IMGMAIN', 'media/images/1709122977436-image_cropper_1709122841668.jpg_low_image.webp', '2024-02-28 12:22:57'),
('3376J0miAKoBnyNQJyrl1FUVRIKPf1KT_IMGLOW', 'LnshmNb3sngBhOILJj0ZAbHxbrciVFIb_IMGMAIN', 'media/images/1709023689348-image_cropper_1709023638476.jpg_low_image.webp', '2024-02-27 08:48:09'),
('344wXixjNElBeuko2NnVI1NFsy37LQGD_IMGLOW', '3og0gCAF3AuP8AxMRf0bi3z2ffneSM0j_IMGMAIN', 'media/images/1703598239052-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_low_image.webp', '2023-12-26 13:43:59'),
('3ompJzeRmukOsKkoK8EEaYLrwbkd0nfP_IMGLOW', '1zHkqxw09L6XPbVqCwnhyEmsxqHc7fmh_IMGMAIN', 'media/images/1708428434653-388e8de9-5234-40aa-8bd9-20522ce547116947850266697007888.jpg_low_image.webp', '2024-02-20 11:27:14'),
('3PMwx8lv7zhVJ2F1b29k3lbpPvZSasUR_IMGLOW', 'ZJvZ6ZDZHNkOV2b4oRuPc9m4LrcOkNm7_IMGMAIN', 'media/images/1708598329315-image_cropper_1708598278780.jpg_low_image.webp', '2024-02-22 10:38:49'),
('3ZvVjyJ0RHe5K8QF7gmbJLBjP2cSRVUS_IMGLOW', 'SpI6okmeOjDXUH1gPrcbExxkfTPPJUNO_IMGMAIN', 'media/images/1708791189978-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_low_image.webp', '2024-02-24 16:13:10'),
('48odE1ahwFpcQKgZCFg6dL7m1zk6Y5zi_IMGLOW', '92LJMMaHTzmfaOQIQKcCdVGR8UMYe6p9_IMGMAIN', 'media/images/1708169179993-image_cropper_1708169125771.jpg_low_image.webp', '2024-02-17 11:26:20'),
('5PEaTOyHBiFPiLyBNsjccgepjN0Cz8ZD_IMGLOW', 'RMWPNIEYheXvF95mmeirXS1LaPvE30bN_IMGMAIN', 'media/images/1708599555305-f8fd396d-b905-4135-a2f3-690394eb43cc51732956033614115.jpg_low_image.webp', '2024-02-22 10:59:15'),
('69mU8ZfPrKKTVbY3xTh6CwGTRssLZ2f2_IMGLOW', 'N6T1eCBR1SfuNFdkZxlwo3lYE5yr8VvJ_IMGMAIN', 'media/images/1708165678452-image_cropper_1708165645837.jpg_low_image.webp', '2024-02-17 10:27:58'),
('6qe32EPehJQCTgK2mUzVTY1LNFEI5s6M_IMGLOW', 'cwzMCiS8DMu67cDoD4AnhGuMqpbh4Iab_IMGMAIN', 'media/images/1709296471920-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_low_image.webp', '2024-03-01 12:34:32'),
('8q4I1xQI1BbWq1o63CgGvFFYngbQLq01_IMGLOW', 'OotIhtqLVBKntGWIOA49gjOncF892RLu_IMGMAIN', 'media/images/1704269906620-image_cropper_1704269890639.jpg_low_image.webp', '2024-01-03 08:18:26'),
('8u6liODve7huZc3r4O58dyFvI6JoMqL3_IMGLOW', 'HxIaMR9TunvLDbzGh82ys3Jgdidj9eAY_IMGMAIN', 'media/images/1709292573836-4fcfe5ac-174c-400f-bef9-579e101125855947578445664045451.jpg_low_image.webp', '2024-03-01 11:29:34'),
('951zk1TEFoVGJcnMw8vZ5vSkDZ0tGtH0_IMGLOW', 'cH7h1FtMkdzLDCUhWSbUrfayrZwGPXcz_IMGMAIN', 'media/images/1703598246500-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_low_image.webp', '2023-12-26 13:44:06'),
('9PJIChse37Jcx80Y28iwrRsFNP3eJnjX_IMGLOW', 'Iv2TMwvH2e0sb5OUSJlnERwNEDIwAncW_IMGMAIN', 'media/images/1704371094638-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:24:54'),
('9YtDpRm5gvTaDdT3f7iNKAuZXEgvLvl0_IMGLOW', '0ieouq4NQsb9Uo9FczIPi1LdBk7gZG84_IMGMAIN', 'media/images/1708600661180-6acc29d4-dcf6-492f-819d-0d89e47c4f1e8305373629186375024.jpg_low_image.webp', '2024-02-22 11:17:41'),
('a7iUIyk5v8RO6joBD8iwXZRc7alASJ7G_IMGLOW', 'RpIcKj4lNHde73LusLmsjBWitc0ZxYRF_IMGMAIN', 'media/images/1707289934255-image_cropper_60833F12-5F55-43F3-AE11-B66CDFF69D98-89045-00000F1932218F1E.jpg_low_image.webp', '2024-02-07 07:12:14'),
('acSzm1rERyVaiMgWlbdXkSIs9NeGOcU3_IMGLOW', 'rBhWw5M4gixWVCy7CiR7RMOo7LItANXW_IMGMAIN', 'media/images/1705307661667-8b32b114-3a3d-4d71-b3ad-c2ee1a24a3237821973192545816871.jpg_low_image.webp', '2024-01-15 08:34:21'),
('aGdP9v0Ggv3JNtDQ1aJWcvtVPEIHAZVR_IMGLOW', '9HWhYS6vDMqAwPvw8jDvQblPvRyIfNKl_IMGMAIN', 'media/images/1708598012181-image_cropper_1708597960372.jpg_low_image.webp', '2024-02-22 10:33:32'),
('aJlpy9JiLx2ZXfyeD5O1CeU6QqZvUaK6_IMGLOW', 'HHshXRn6QE07TOS5l1uP0f4b0tFI20Bs_IMGMAIN', 'media/images/1708597322162-761b951c-45f4-4b0e-acc2-6f5251806d0a6726789841922416255.jpg_low_image.webp', '2024-02-22 10:22:02'),
('aMa6fzM6ZDQmToymQn9HcTSQ4cAcH4Lm_IMGLOW', 'kc4aaZUAZfmYtRKUw90mfo7oe5gpPFxv_IMGMAIN', 'media/images/1708791172283-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_low_image.webp', '2024-02-24 16:12:52'),
('AVjcFq9s5c7tTLzwmcnQpb6BEirNzf7Z_IMGLOW', 'H28UszlIwOYpta1YIsoflrM014jrYYsk_IMGMAIN', 'media/images/1708950377462-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_low_image.webp', '2024-02-26 12:26:17'),
('awo77JAWpSxS0eQAJRrnPl6JCGYNSpMr_IMGLOW', 'OLlertMyL8N24vW9sWHDefJYpKLeGi1l_IMGMAIN', 'media/images/1706952275750-image_cropper_9B9B9254-E408-4F64-954E-D00621C2E4C9-59689-00000CBC5F9F12AA.jpg_low_image.webp', '2024-02-03 09:24:35'),
('azKRhgVN3CbrWCfFDrcS7g98oXG12Lgg_IMGLOW', 'gYCJ6QZc7n59nXSGytScMJfy8qNG7T1S_IMGMAIN', 'media/images/1705492906319-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_low_image.webp', '2024-01-17 12:01:46'),
('azXjwUmBtZdXIdbeqXyafBMK0qcduLar_IMGLOW', 'cpOJh3kQw4XlNAXKywCvs1VuCH4POrVe_IMGMAIN', 'media/images/1709024229095-image_cropper_1709024108715.jpg_low_image.webp', '2024-02-27 08:57:09'),
('b7HclCLchnjrqVkY0x1qPnLivpMU6Xys_IMGLOW', 'Y21jD1LD3V4ltwOuuwq0jNDr1jr8PhhS_IMGMAIN', 'media/images/1708949900237-image_cropper_1708949745479.jpg_low_image.webp', '2024-02-26 12:18:20'),
('BdADXmSZIbdeTGtg6bj73R72oGBREyCW_IMGLOW', 'gO6g5wlY1Ze0BEXY78RgUMFRwcxiRkQM_IMGMAIN', 'media/images/1708167506925-image_cropper_1708167489638.jpg_low_image.webp', '2024-02-17 10:58:26'),
('BmhRX73R48bu9RrWT8hWYPl9q7qacEUO_IMGLOW', '9cGUkt208VY0lk4tlIJ5uWOOJusNdou9_IMGMAIN', 'media/images/1708169174938-image_cropper_1708169161753.jpg_low_image.webp', '2024-02-17 11:26:14'),
('bMwxWzSgqNO6QPSdMvr5Izhi3ry2rgE9_IMGLOW', 'UhVDiyAXzGT2FEfh6xYK5scxNw3M5elt_IMGMAIN', 'media/images/1706903779179-image_cropper_78C6FC59-15CC-40EC-B389-8691A98E7BDE-73670-00000C5BBF71DBBE.jpg_low_image.webp', '2024-02-02 19:56:19'),
('BoLPAVxAQCw6Jr2fDHJ5ewaCSntGAzHp_IMGLOW', 'UHAGeUOUxoQEOugs8Ka6aCrkFsxpqFrg_IMGMAIN', 'media/images/1704371241041-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:27:21'),
('bYjtkMwrIF5dIJ2ipnW6XNr6k2hQDa8O_IMGLOW', 'Xhg0wMFeljIQ61IobSK9dBGbk7E3o1Zh_IMGMAIN', 'media/images/1704372233077-image_cropper_1704371612984.jpg_low_image.webp', '2024-01-04 12:43:53'),
('c1jXsRsCWpr435rY3SJtmoPRDQMlHXX6_IMGLOW', 'SM5XKtDVGDZnzYf7y1naXc7UYV7kYSFN_IMGMAIN', 'media/images/1709292568761-3db31652-0e66-4ed9-a52e-926339ab5cfb5945233535190974306.jpg_low_image.webp', '2024-03-01 11:29:28'),
('cLmu1aT8ZygIg4zj7GC6Wdgp1EZwc64k_IMGLOW', '2cKyPOtwC9SkaXBd4ChnEVCQsw03schT_IMGMAIN', 'media/images/1708791160218-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_low_image.webp', '2024-02-24 16:12:40'),
('cnIZPxrIcGAuCJBi5OkhwLX1OUOgwUhk_IMGLOW', 'NGLFH1v99d1f14tIr8h7YGZylbGdDxRX_IMGMAIN', 'media/images/1704704983041-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_low_image.webp', '2024-01-08 09:09:43'),
('cQrUPbeRh1Xzh31VioM7iuSU4HhT5bf5_IMGLOW', '8jqbBfCVimudSbspF7hKjNABOADZlGy4_IMGMAIN', 'media/images/1708439660511-f93d9dd1-79f4-42df-b8d2-aa544322fcd84932086145810993617.jpg_low_image.webp', '2024-02-20 14:34:20'),
('csVJjoJX3UNftCVTtO1m2cNaBxP7OKGn_IMGLOW', '5d9AHGHKRXrJ56Y09gToCltupr6gK3ov_IMGMAIN', 'media/images/1708165682064-image_cropper_1708165597596.jpg_low_image.webp', '2024-02-17 10:28:02'),
('D0ykYaKQF5MOtMtvnTAkKzL1VAilgk0v_IMGLOW', 'KaMiko841HSFyc5j2sZeXwZYO1TD79Fd_IMGMAIN', 'media/images/1708683661782-a58f4fe1-512a-49ee-9130-ef5e470666e12876383331376744062.jpg_low_image.webp', '2024-02-23 10:21:01'),
('dBN1ZLKMNjCuZfRJPwumiIuOGYtlgdOn_IMGLOW', 'hoSF2ofVB5zQMsbGYSVaTrvpGcgXqs1i_IMGMAIN', 'media/images/1709298811255-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_low_image.webp', '2024-03-01 13:13:31'),
('doC4XgqqoqkF2CRhmjmyHZE5gAPdBq4b_IMGLOW', 'OqpFw7bVHrl1PJ1WMcDFHTrW03tAp3ER_IMGMAIN', 'media/images/1708929579278-da5ae302-f1ce-4c30-b75c-9fed3abeba9e6303638667650661210.jpg_low_image.webp', '2024-02-26 06:39:39'),
('Dogc3iSiPlBvcA0SWdHo7Y8V9T4gobpw_IMGLOW', 't6AODinWywrE5MDQEaVoht6EKXcpKzzT_IMGMAIN', 'media/images/1704372240044-image_cropper_1704371612984.jpg_low_image.webp', '2024-01-04 12:44:00'),
('drLbjsQyc15P4pOei43dpy2Mg7x74cK3_IMGLOW', 'uaYdA4ruXQpvOTNw4pBhEI670p7EaZ0p_IMGMAIN', 'media/images/1707294754933-image_picker_9E578D49-3741-4B1C-86A3-23624BA31C0E-89045-00000F33FF77BC22.jpg_low_image.webp', '2024-02-07 08:32:35'),
('duna6mq56iExMvXlawxY2HhMHSSubGZb_IMGLOW', 'OgHV7oyE0Hr0kV4rwYAh917p20dpkKXK_IMGMAIN', 'media/images/1708949816806-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_low_image.webp', '2024-02-26 12:16:56'),
('e8Af91t7hOvSyWiG31lBpySFw9CNlYdz_IMGLOW', 'L8NlmWLsriD8RInPxcrFTrXW8IJNrdWB_IMGMAIN', 'media/images/1709128578591-c0ab9553-6096-4c38-a49c-540b75e47edd7358688787624572202.jpg_low_image.webp', '2024-02-28 13:56:18'),
('e9Ns9Y1DM6ihs6K1uISOHg0zNklpQmdI_IMGLOW', 'MbHxlDbUt7YhWRM0habuc66tEqsLVOQO_IMGMAIN', 'media/images/1704267539430-image_cropper_1704267498332.jpg_low_image.webp', '2024-01-03 07:38:59'),
('eknzzRdLwiJp0PmYn0xCbKSLC3Nxn01r_IMGLOW', 'sEzata7fVZnTDnNfWxqHHwPjcfbnqGwT_IMGMAIN', 'media/images/1708598758419-f188ac4d-50f7-49e5-98c5-568472bb1be58122157743204537228.jpg_low_image.webp', '2024-02-22 10:45:58'),
('EUKSBC6m2fanghrG7px2quZM1S2J7lqB_IMGLOW', 'QLYeL3xhwyCY39hS66q7BYUGqgmFsSmd_IMGMAIN', 'media/images/1708597703192-image_cropper_1708597687916.jpg_low_image.webp', '2024-02-22 10:28:23'),
('eYHeYuFWviMYjhf2snQxKujH68yrprpS_IMGLOW', '2LeSizzVYtYM2qp06GGrzDNXQ9v4SH5F_IMGMAIN', 'media/images/1704551408543-1703137750385-shirikisho_profile.png_low_image.webp', '2024-01-06 14:30:08'),
('g7zkoSDKCfrAvPTbJNCanTxCRS0CRMuF_IMGLOW', 'CckUVol6IPTLue8WFAwidGZA6AiqPOZq_IMGMAIN', 'media/images/1709023694227-ca4e9240-3ebd-4d6f-a239-f4dffbe3c9f94427277393898852800.jpg_low_image.webp', '2024-02-27 08:48:14'),
('G9wq9Jnyeyc9f5efP3FPsCtl9lRJ60dc_IMGLOW', 'AOCoaWG1q0zrlZhQq2wfkieKpgZ77uU5_IMGMAIN', 'media/images/1703141804770-shirikisho_profile.png_low_image.webp', '2023-12-21 06:56:44'),
('Gqtso0Iezs7NVWBa7bHOs1tG3yUQfpC0_IMGLOW', 'Yo5oy2XpLrtB2ZeS3KvyiH4pijEA2jzk_IMGMAIN', 'media/images/1704704928613-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_low_image.webp', '2024-01-08 09:08:48'),
('gwF7F5p8xsU2p6IqRZCiKB7EmscAuCwP_IMGLOW', 'JqDboQI4qRMB1Vd7dsWkjKlFiIO5mgvK_IMGMAIN', 'media/images/1708770059750-image_cropper_1708769991553.jpg_low_image.webp', '2024-02-24 10:20:59'),
('Hf8mDDHP2RZvtyWii6URQc4Tt2zh0BWj_IMGLOW', 'yEefnuZnMpvOQOaS1UpRkUYuVc1u2HMv_IMGMAIN', 'media/images/1703596233440-image_cropper_927F99FF-C446-4FB1-8163-C8A9D14BDC1D-71394-000001A77036D0E3.jpg_low_image.webp', '2023-12-26 13:10:33'),
('HLY9Yr86BVmeAKHqvAYPWEpyd1QhaxR6_IMGLOW', 'js81Y5w9H5vXuctxaUIi1Tb5cFkzRfbw_IMGMAIN', 'media/images/1704457566708-image_cropper_1704457508237.jpg_low_image.webp', '2024-01-05 12:26:06'),
('hOz0nLtiCrrdupDTVk0jOw1IFETsVVGK_IMGLOW', 'UiLmg6sHrM3Q5fsnKYeeGINuMU1x0yKh_IMGMAIN', 'media/images/1708167510316-image_cropper_1708167461311.jpg_low_image.webp', '2024-02-17 10:58:30'),
('hY8EUKQzTwy4BAjL4QM7btklA0BmOqMN_IMGLOW', 'f8tgzikFRfjwDkpni2sH8lwsMpW1sSMP_IMGMAIN', 'media/images/1708950176760-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_low_image.webp', '2024-02-26 12:22:56'),
('I0A2OD3J0QkaWTVkA2mP7j8Q9nZBRNzA_IMGLOW', 'fdyQ4QSstYO4vmwGdsOUmkik2dnCqW3O_IMGMAIN', 'media/images/1708950202339-image_cropper_1708949745479.jpg_low_image.webp', '2024-02-26 12:23:22'),
('i5axVU6KLeYCOXli8HfCnEJbZdalgwUr_IMGLOW', 'ymONNJtNHUBwwyWHaCh7IGEvY8ZiHqLI_IMGMAIN', 'media/images/1708165664765-image_cropper_1708165597596.jpg_low_image.webp', '2024-02-17 10:27:44'),
('iF7PRuA1aY4Q4eHtaIO9bkqbNqGQDbb9_IMGLOW', 'hYfMJdSH9KNnFEDHk9YWzpQ3RmO932v7_IMGMAIN', 'media/images/1706508536537-b92474fa-d9ab-4c7b-8341-3f331067c80c5380496020008031352.jpg_low_image.webp', '2024-01-29 06:08:56'),
('IHqr6wH2aVlLGVlAyOyHCpa6sEw025pv_IMGLOW', 'wbb3ejeGO0QsHLnoNE6YV4XC41dF6haK_IMGMAIN', 'media/images/1709380326052-image_cropper_1709380238464.jpg_low_image.webp', '2024-03-02 11:52:06'),
('iNI6ko7yaWLAxFQBBL5VTugLtF31G7fe_IMGLOW', '5BdRjM6NH7hjG70OMGVxBqgjLIHZWIM5_IMGMAIN', 'media/images/1708165944080-image_cropper_1708165896357.jpg_low_image.webp', '2024-02-17 10:32:24'),
('IPCDSK2Y56GVSLNWIN0opduVvQAkP70o_IMGLOW', '1casOXHAPFmXiXTSqjrkrWqNgVrUD1nc_IMGMAIN', 'media/images/1706770019680-image_picker_135B0F3D-5FD7-484B-BCD9-A7A76011D755-11203-00000A98F596AEC8.jpg_low_image.webp', '2024-02-01 06:46:59'),
('iqFA1ozpBGgJZYnn4i15tn8h5p94BOmH_IMGLOW', 'OFdOkoQNyjx5GAqHPjJtLck9KhMtL7vI_IMGMAIN', 'media/images/1704371326297-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:28:46'),
('IrS2LuC0niv6aflj35uhTof713kA6Aun_IMGLOW', 'lYtGfsj9h3CELJeLS9boJTBpfjWNLHVv_IMGMAIN', 'media/images/1706777744477-image_picker_13D3E1A6-E515-4CF4-A070-8275172CDB77-11203-00000AC1912AE5DC.jpg_low_image.webp', '2024-02-01 08:55:44'),
('J3aTAGikVD6W5RvhDkRrJjROe6EgEVmp_IMGLOW', 'LmpGI3JbpSdeTZfhPz4Ox7xKfvT91t4V_IMGMAIN', 'media/images/1708949889794-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_low_image.webp', '2024-02-26 12:18:09'),
('j6ZecLskzdJtr0HhZD03KuNX9KvVz4Au_IMGLOW', 'LXwLByMC9UF1LdGx7kBAuD8a9Jgh8D6m_IMGMAIN', '/media/images/1703136747173-shirikisho_profile.png_low_image.webp', '2023-12-21 05:32:27'),
('JaCaZw2NVR0p2oksSsNFWpW2g3z5LV27_IMGLOW', 'xQMNfPtSJtu5gDLFXRPKyIzf37LkCEri_IMGMAIN', 'media/images/1704371366915-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:29:26'),
('jc3vsGxWApaj85xEGzlX6uz3hTKtrLQ9_IMGLOW', 'anhP28h2VkMPvzfAqjmn60PBGYOQzAxj_IMGMAIN', 'media/images/1706904293028-image_picker_DF783970-7453-47FC-89EF-5109ABA9C3CB-73670-00000C5DCDF84419.jpg_low_image.webp', '2024-02-02 20:04:53'),
('jum0tcde4Abw7m4jVwEZt7B5heq8AFvP_IMGLOW', 'EAx2O8KFwOJjpDyPVDHOtXDnK5QEugid_IMGMAIN', 'media/images/1703572346438-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_low_image.webp', '2023-12-26 06:32:26'),
('JVi0CXmdJxWruU561hh2GkgCXoGLgInq_IMGLOW', 'louSdjOKEw5r30Z7gAumAHy2c7CtMkb8_IMGMAIN', 'media/images/1704267548766-image_cropper_1704267413444.jpg_low_image.webp', '2024-01-03 07:39:08'),
('jyrLS0KYc9tfdJPwY7ZyKaODwaZaDlIJ_IMGLOW', 'WT8FJ1kFWJR0I2gmMvxsFlLSeoeYoHYC_IMGMAIN', 'media/images/1703141892004-Kazi-Pay-login.png_low_image.webp', '2023-12-21 06:58:12'),
('Jz3ozT2h9N93CP8no1C2I7ZdX0nSRiJ7_IMGLOW', 'I4B9itCTJFuWtY421TrQGHRPB4OlvQWE_IMGMAIN', 'media/images/1708600229754-image_cropper_1708600187321.jpg_low_image.webp', '2024-02-22 11:10:29'),
('kelfSMRhQnOaIDaLhPIjB3GRK6fCtWeo_IMGLOW', 'C1BDyJr2Aeg0djEmYlGXB01YKQwa5LGM_IMGMAIN', 'media/images/1709296452938-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_low_image.webp', '2024-03-01 12:34:13'),
('KEpw3gE59EgnKHt2u906RKfLt3pjVDF3_IMGLOW', 'fZapKG8nYMLbZ3liEBCLIM1BJb3xrAlH_IMGMAIN', 'media/images/1708165940233-image_cropper_1708165926321.jpg_low_image.webp', '2024-02-17 10:32:20'),
('KfymmElAoeL4EM4bXm2Ro5IjOtCmbC7X_IMGLOW', 'cXrXqmqtmPZAYCpLISoRwz3JTL8USRBa_IMGMAIN', 'media/images/1708166118314-image_cropper_1708165896357.jpg_low_image.webp', '2024-02-17 10:35:18'),
('kOttUOF3ISFehWiU7EA43AFIl4a2M4va_IMGLOW', '4kR7UvWmsYCjJhAJrHGfcrwzfmwf6Joh_IMGMAIN', 'media/images/1709380314810-image_cropper_1709380284996.jpg_low_image.webp', '2024-03-02 11:51:54'),
('kTmOjWUCo0bk6SlkuxKMwa2ZTtEaZ2v3_IMGLOW', 'zwFZJmXqJ1oT04pRueYmWKC7lgizQj3o_IMGMAIN', 'media/images/1703137750385-shirikisho_profile.png_low_image.webp', '2023-12-21 05:49:10'),
('kWGXlb7ghmDq8TT3duUvqk7jAfSA71Vs_IMGLOW', '71IK8hyHsvzFiA6T1AgQWnDRYCb9hHmT_IMGMAIN', 'media/images/1706953161266-image_cropper_91861E2B-AE07-4B12-B4C0-C378C63A6389-59689-00000CC166AB77B4.jpg_low_image.webp', '2024-02-03 09:39:21'),
('kxLgi9YBzcSWdkn4rxa1cHWjO2BSm8Un_IMGLOW', 'kPEQmZy3vh2ha4F6vFx4vozmSNRO4C69_IMGMAIN', 'media/images/1706777748998-image_cropper_B8A8309E-E4AA-4895-81BF-269E1331AF15-11203-00000AC17B36D369.jpg_low_image.webp', '2024-02-01 08:55:49'),
('L37P0VHs51G2xv0RnXJKRNUsuFPGxx04_IMGLOW', 'BZqXMWLk5rASCEjsOMzXSW4truqHnQ0l_IMGMAIN', 'media/images/1708770053594-image_cropper_1708770041336.jpg_low_image.webp', '2024-02-24 10:20:53'),
('L7tKTUvX4aXCiEfH7VX70seMAgRUZE1g_IMGLOW', 'enqKHKpsCaP4nX2nyjTv6xHFlJPjiiCC_IMGMAIN', 'media/images/1706787840623-image_picker_2959728C-6A61-4D6D-8B2B-C338523C7BF2-11203-00000AF96E4B8FBE.jpg_low_image.webp', '2024-02-01 11:44:00'),
('lDa0YmOmRTirbTUPzSXJ5KWliqa5ItdL_IMGLOW', 'xLtQhULBXeIiYKSFEyCFsSLxGbDUHjDq_IMGMAIN', 'media/images/1704371200355-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:26:40'),
('LqbBFI9pp2psOqk9aP3U3f0XS1MmpwCg_IMGLOW', 'F87EqR6wlhqmiJmV3zCEVMEOb8foEJzO_IMGMAIN', 'media/images/1709299155253-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_low_image.webp', '2024-03-01 13:19:15'),
('M1SeKEdklgUhryye35rSJNDLdsxrV13u_IMGLOW', 'Eaiw9Up1CZtfAkJKwLp0VQqHbGUPimyG_IMGMAIN', 'media/images/1709024181889-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_low_image.webp', '2024-02-27 08:56:21'),
('MbI5YT8iKWuU47SFj6FPAA05Qg9YQFQo_IMGLOW', 'E32DQNUtfT1kM6wNut0bEaXmGcTADzxL_IMGMAIN', '/media/images/1703137643350-shirikisho_profile.png_low_image.webp', '2023-12-21 05:47:23'),
('mIaUtSQoco9ljFv09PZTXfYipcCJ0Eu0_IMGLOW', 'IQFB8R79FiaTAi1M1FUCKgX9AYPITHY3_IMGMAIN', 'media/images/1708942429589-d8f788a9-003b-4850-a224-8aecf6944de0569911778247695337.jpg_low_image.webp', '2024-02-26 10:13:49'),
('MxibzHEyOS9jW90KjuVxJ8Yh4ULW0XsI_IMGLOW', 'K0e3A2QRiLfIIqiu31PwQojAWqciW5U7_IMGMAIN', 'media/images/1709024247637-image_cropper_1709024108715.jpg_low_image.webp', '2024-02-27 08:57:27'),
('N6bqx2A70Vjmf3PHccEERkTPGyihma7d_IMGLOW', '4L6dfkcKd7PR7kMa4twUOPbMqIUnhicI_IMGMAIN', 'media/images/1707289939569-image_cropper_221C451A-AF3E-45A6-9DE4-D5F029F513D3-89045-00000F191669DCD4.jpg_low_image.webp', '2024-02-07 07:12:19'),
('NiKHAdacMWREqTkX0IYKPQ0GCE6lO6kM_IMGLOW', 'nsxeahxebQEPEiagqslx87mLd9RVwvBy_IMGMAIN', 'media/images/1704790939074-image_cropper_1704790761561.jpg_low_image.webp', '2024-01-09 09:02:19'),
('NkB0tWckDBpUZAfvxXTCjA6v7QnzS385_IMGLOW', 'KD7Qx8PSp2OL3O4gS3G1zdNvPacruBhz_IMGMAIN', 'media/images/1708791056638-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_low_image.webp', '2024-02-24 16:10:56'),
('NmV7GwRNuY4I79N0egeYqKD2cWYD25Oh_IMGLOW', 'J276EEgcsUosgc0qTLB9Re2OzBdKH7NM_IMGMAIN', 'media/images/1709027775178-image_cropper_1709027718976.jpg_low_image.webp', '2024-02-27 09:56:15'),
('NPwzPoRFpvJSMNi76lrRIWYGbrkCJKS8_IMGLOW', 'RY7fPhkobSQa8NnrafErxHKtkK0aPHY1_IMGMAIN', 'media/images/1706787846138-image_cropper_5C503533-2918-42E1-851F-652EA8F69338-11203-00000AF963919974.jpg_low_image.webp', '2024-02-01 11:44:06'),
('nWuFAltkVBWuSyZBFfKiuDR6wuJdr9Hd_IMGLOW', 'oVso28IJawQPVAxuWbE8pbSsmKSYsIER_IMGMAIN', 'media/images/1706896458958-image_picker_B14EF025-8FB7-48E1-8E68-CAA69D57CD6D-73670-00000C2EF34844E3.jpg_low_image.webp', '2024-02-02 17:54:19'),
('O84BzRW1RtVDgy5Q64CHIkvc2R6f5doV_IMGLOW', '9Oi90Gwno7fg6IzQFs5fMEjS3BBdjylB_IMGMAIN', 'media/images/1708599182326-image_cropper_1708599131904.jpg_low_image.webp', '2024-02-22 10:53:02'),
('oCnhdmjB6GuDTpTRbXnHsB7QEPs9q3Ix_IMGLOW', 'XG69X9gbIiMox3Uil1TLgTzar3oT3AYV_IMGMAIN', 'media/images/1708598762607-image_cropper_1708598721878.jpg_low_image.webp', '2024-02-22 10:46:02'),
('oDTk6sa3VBhuKmzdaXxjJcViOPBGDE1p_IMGLOW', '3D4qc3MdBPvxIIrJz5mnkrR2azCgLCaR_IMGMAIN', 'media/images/1709381158933-c9e3f04b-a6ff-45e4-aa50-7cde732adcfc2348161891209594580.jpg_low_image.webp', '2024-03-02 12:05:59'),
('orv22ft0GSNrGlm3zXDmjMH10TbNAhxO_IMGLOW', 'cMLnpTZbyrK4DHhxMnnWXTIydAlFuMb2_IMGMAIN', 'media/images/1709024174730-image_cropper_1709024108715.jpg_low_image.webp', '2024-02-27 08:56:14'),
('OSBiUZrIEFKX4r3AWpJHQ0Dh0Apcxbyz_IMGLOW', 'qt2y2BFdn7lObqr3ptQ3KjXPKHL3ufIX_IMGMAIN', 'media/images/1706903398072-image_picker_8E89BC9F-75B8-497D-B5F4-2E3B5D626BF2-73670-00000C5967F2974A.jpg_low_image.webp', '2024-02-02 19:49:58'),
('p2g7pj439g5Is4sg2BKlyvcd5bJcKiUy_IMGLOW', 'yEYiKb9i2eBRPao8fyyTJDL3DfznroVp_IMGMAIN', 'media/images/1708676630470-4560083d-86a0-4ea7-8bb5-9a43c3797eb85179977862731130094.jpg_low_image.webp', '2024-02-23 08:23:50'),
('p6awxRp5fD9mlP93yJmn1ISr0Y7f6vhC_IMGLOW', 'QdYHYe6o9Ep405c6QDQK1eaU7RUk9BUl_IMGMAIN', 'media/images/1706907202765-image_picker_F950D995-B7CC-4130-9AB5-332E4621762E-73670-00000C65425147E6.jpg_low_image.webp', '2024-02-02 20:53:22'),
('p9Kb35vt7KcjRKns49EuabXhqx4cGpwU_IMGLOW', 'wmkZsuT5rXGRuSF8runuKcmcRArbX5vH_IMGMAIN', 'media/images/1704704420193-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_low_image.webp', '2024-01-08 09:00:20'),
('pfw25lckNamISNE0Zobvj6VLLrhbBeD2_IMGLOW', 'MVAyoGAX1NTFqb15Bhu2voOcZezg8L5d_IMGMAIN', 'media/images/1709027763984-image_cropper_1709027746582.jpg_low_image.webp', '2024-02-27 09:56:04'),
('pGbJuNZKK30SOTM9GeM1jbssRyYe8eSm_IMGLOW', 'irmrP0WjPu68xgCuGa0rm4xH3UrpXtYV_IMGMAIN', 'media/images/1708950405491-image_cropper_1708949745479.jpg_low_image.webp', '2024-02-26 12:26:45'),
('phOtxge1RTy4IB3nxILZ8FiTjnAugHrC_IMGLOW', 'VgwSVNIXFLSlSzRCOy1I30BccD1HIb3c_IMGMAIN', '/media/images/1703087329905-shirikisho_profile.png_low_image.webp', '2023-12-20 15:48:50'),
('PoVZPECgC26TNr7sjHbtaQoOZx1cJrl1_IMGLOW', 'Mpzcek5PlRgFA2Od3rg7wHe6ZD0hsYor_IMGMAIN', 'media/images/1706896326733-image_picker_DCA654F7-67C3-4648-B448-CC0474A54BB1-73670-00000C2F050A85E9.jpg_low_image.webp', '2024-02-02 17:52:06'),
('Pp9JhYejYKZOof4eLJeUVH7iw97iEQZw_IMGLOW', 'yvaZ2ZyeDSFE3YB4HTDvTIZx2iQiKPQ6_IMGMAIN', 'media/images/1706952338890-image_picker_F2F63D34-1D18-4487-813F-DF50BDFC47E5-59689-00000CBC3F4C1A26.jpg_low_image.webp', '2024-02-03 09:25:38'),
('pPcV3up6OBfGXhmDg728VZ0JfBWhl1vq_IMGLOW', 'DGhwBuvTNn3VMrzY8M1ynM6ERCdwMRxG_IMGMAIN', 'media/images/1703599112053-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_low_image.webp', '2023-12-26 13:58:32'),
('q9p45dNAjFshbgaJuJJgDFgwlhMpAtoB_IMGLOW', 'fLnoEpXQ1yCgrtNXaPgMmOyHT6VeUE4G_IMGMAIN', 'media/images/1708929573877-aac791a0-b076-49e9-bbeb-9cce4d08b7477652673047662149921.jpg_low_image.webp', '2024-02-26 06:39:34'),
('QoTdIntmMORDeAhkYTNVRWKaZgOBAaN9_IMGLOW', 'xVjhmBPLB1221cvy0VnFiOwPNelbfaDH_IMGMAIN', 'media/images/1709298792269-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_low_image.webp', '2024-03-01 13:13:12'),
('qtmuZUlgMPCnyHsUcNGjzFZH2q9rYMGQ_IMGLOW', 'NJLK5mnonJpE6aQbA4nGMHPAbfDBk1SP_IMGMAIN', 'media/images/1704372341538-image_cropper_1704371612984.jpg_low_image.webp', '2024-01-04 12:45:41'),
('rgLTB4mJxIjt4n9qIeNRm63laL4p1Quj_IMGLOW', 'VEvEQ7lZfjxMaF1YsP9GDHzt9jUMlMXp_IMGMAIN', 'media/images/1703170063845-1703137750385-shirikisho_profile.png_low_image.webp_low_image.webp', '2023-12-21 14:47:43'),
('RihtyusqaL7KWj6LX4Lh9yniGXdjoGu4_IMGLOW', '9trAwAZ6gjAdigskxQt8Czy4gZ6m0yuT_IMGMAIN', 'media/images/1704371317562-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:28:37'),
('RkHC1GN7pbJWXt9KnLg8C2L5gh1AmlLt_IMGLOW', 'hAAmhPAJwjrgSbMtvIA9ifi8bQia152P_IMGMAIN', 'media/images/1709024234585-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_low_image.webp', '2024-02-27 08:57:14'),
('RsDewtOd2kxSgpcq8Nfv6wTGEo3eeWNC_IMGLOW', 'ljQry4miR2IhX6DFuRwzrIPtiUTPSbHo_IMGMAIN', 'media/images/1704371187036-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:26:27'),
('rT3l9nSUxGSzCSmc4sOW3nl0VIouJIFl_IMGLOW', 'LwTjuRPUFf5CW7pNBIyQGUxdckgYTrro_IMGMAIN', 'media/images/1709122951390-image_cropper_1709122932951.jpg_low_image.webp', '2024-02-28 12:22:31'),
('RtnVVkHDHC3VT1vTsC1JjYQbCZglwVy2_IMGLOW', 'ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', 'media/images/1704790935146-image_cropper_1704790896355.jpg_low_image.webp', '2024-01-09 09:02:15'),
('s8n1D1P41MaUpZ7VKh6wJMZD4Esyhrbb_IMGLOW', 'ftvDrto0lXo4r0CX2laf3iOfx96HD5Oo_IMGMAIN', 'media/images/1703599093114-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_low_image.webp', '2023-12-26 13:58:13'),
('s8wQFTFt2WqDpaymTR3LdSDdC4EdZN9Q_IMGLOW', 'PoYLevUyOuwHsC7R5zQTcWqS6f5ABZj3_IMGMAIN', 'media/images/1708696891161-6e2c2142-a966-4a18-a1d0-a4675c6bdb3f5907571963297385674.jpg_low_image.webp', '2024-02-23 14:01:31'),
('SEZiTb1FKnocjMW9xsA27Q2fpoLmKBLC_IMGLOW', 'QNm4Yxn0S4ZTmsuRrynHtWzjUiMI9gvK_IMGMAIN', 'media/images/1706770043019-image_cropper_F3894ECF-AB65-47FF-9552-18DD4F9E6958-11203-00000A98EBFDBC45.jpg_low_image.webp', '2024-02-01 06:47:23'),
('Sf9zfstWJ6UZyHVvyc3g3V9yXuLIivw5_IMGLOW', 'w4BMRa1v2sZsRYaTEXirVz1XLDMd7Dag_IMGMAIN', 'media/images/1708599559353-image_cropper_1708599525533.jpg_low_image.webp', '2024-02-22 10:59:19'),
('sG77ySi8OwBYOB6GGOZBlue5V4vNun7S_IMGLOW', 'MRWMlmI7Pc7tEQojiTsZYbmb74EbUa6M_IMGMAIN', 'media/images/1703596220329-image_cropper_7DA8DB4C-0395-430F-9C50-4730ED34A630-71394-000001A78D80B3BB.jpg_low_image.webp', '2023-12-26 13:10:20'),
('SKz2sS6jBNqVW79iVPNEzZ4iMMzS9Tyy_IMGLOW', 'YmD36JkpZD9CXYTxl144EcLTgCI3WTui_IMGMAIN', 'media/images/1704371486092-image_cropper_1704371407077.jpg_low_image.webp', '2024-01-04 12:31:26'),
('SqXi32Q4Elac4Ujo4il5qfYUZoaJXfJu_IMGLOW', 'xLcizghJWZy4czlrZAjBdxyDlUDrFsd5_IMGMAIN', 'media/images/1704371631144-image_cropper_1704371612984.jpg_low_image.webp', '2024-01-04 12:33:51'),
('SqZaanfzVJmNG3HJq309asepVie901m3_IMGLOW', 'C5LihaCrrUw60X1PfLxjrNs0XyWiZTM8_IMGMAIN', 'media/images/1709024254685-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_low_image.webp', '2024-02-27 08:57:34'),
('stKwZoqVg9en2ct6k2KfKZ62TYwQg4gV_IMGLOW', 'gDJS5mOQzEJ750zOJQNkbvOmFXGf4FGk_IMGMAIN', 'media/images/1708599178617-903bb9ad-7cb6-4bd4-a0dd-d831cb358f383501874101656114326.jpg_low_image.webp', '2024-02-22 10:52:58'),
('SYm14Sxe0jILsBQwL7n91d8PqValqy21_IMGLOW', 'N8OJMfhWZcnP3iBSJn3MMJEIQhcysd3R_IMGMAIN', 'media/images/1708166115060-image_cropper_1708165926321.jpg_low_image.webp', '2024-02-17 10:35:15'),
('tFW6sliF0MeCKDIC6YQekwr5Fh22Fppb_IMGLOW', 'Gg6PnWZGlyZLXFysf636eytWwLLhn5iH_IMGMAIN', 'media/images/1708439668787-74715e57-3e26-4f58-943a-aaac1fe533886081319330334936266.jpg_low_image.webp', '2024-02-20 14:34:29'),
('Tkk44gaSxn3LzNCWxN5h7ogmXJJHejnR_IMGLOW', '73YbIQprGWnBhpQ2vzjLAL06tjWuuyH5_IMGMAIN', 'media/images/1709128546159-07e7aca0-9fb0-41b0-8cef-3245f8bb14793287835785226539606.jpg_low_image.webp', '2024-02-28 13:55:46'),
('TmzBmAmrW5NZsL1oqp1YPOBxM2erzpUk_IMGLOW', 'nfnarGjDEIE8A33rdnyWqAp8SiEpHm8x_IMGMAIN', 'media/images/1706903391915-image_cropper_1A8F3A87-EAF6-4B1D-A75D-CAD34014B947-73670-00000C598DFB4BA5.jpg_low_image.webp', '2024-02-02 19:49:51'),
('TnYoQ0cqxlwuzIjBerP2Zq7jPfUJHajw_IMGLOW', 'IpkChZ4p2nGhKCh6qb9ZPnaonYUEypuG_IMGMAIN', 'media/images/1708599911039-image_cropper_1708599854578.jpg_low_image.webp', '2024-02-22 11:05:11'),
('tO8RgTubfv1NHPSG7JKXn10talnYCDiZ_IMGLOW', 'IbmGjSwDmWEsnSxlWEqmMrpBek6NFUaF_IMGMAIN', 'media/images/1708598325507-11dcec13-fa66-4e69-be02-5e5bde552d49613088214524313411.jpg_low_image.webp', '2024-02-22 10:38:45'),
('TsFrWtFMlyPNSYLeRhHcGp07LzHUvgJR_IMGLOW', 'sdcGI8TQwLH2F3f5v4runAzWP33CIFSi_IMGMAIN', 'media/images/1708428464981-84b3bc7b-44fd-46d1-b581-5e6e8aa9a7d3781005483756302703.jpg_low_image.webp', '2024-02-20 11:27:45'),
('UdGufZRS3UcIGK4rfXde52rcrrTrc6Sx_IMGLOW', 'sVXwXIfpsL0thgDJCEeMf3CWrvgSpoor_IMGMAIN', 'media/images/1705559892188-image_cropper_1705559865348.jpg_low_image.webp', '2024-01-18 06:38:12'),
('uHh9BkIjRg2EspROy1pqMxEf3MXbJYAE_IMGLOW', '2tBvFvLf5UJI7AEZWjIIcbD1mYTYuycP_IMGMAIN', 'media/images/1709299136600-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_low_image.webp', '2024-03-01 13:18:56'),
('UrfVgHGL5QCo32DS0BDD5qTqQDZ5CtVo_IMGLOW', 'dA4kkJ0IpgiEYWo7yRXdqvcPBnpQOILm_IMGMAIN', 'media/images/1708162426900-52537fef-fba4-424f-8e33-36f204f6e0a96162239675525458905.jpg_low_image.webp', '2024-02-17 09:33:46'),
('URlVXQ5r3n9OfRN1llSvK8fM2OjfWozU_IMGLOW', 'nfQUUaxetscbKeoow0wslJuZryVxlgUU_IMGMAIN', 'media/images/1706508531900-bdeed265-b995-448c-95e8-2f225fff75954146240658243919946.jpg_low_image.webp', '2024-01-29 06:08:51'),
('USTIzVcd15egQZR5bceBWX3GCiZddEe0_IMGLOW', 'PFd53G3IPjeEKHsp8ofWYQkhCIypYOB8_IMGMAIN', '/media/images/1703087778670-shirikisho_profile.png_low_image.webp', '2023-12-20 15:56:18'),
('UToJ4IxD8GwZx4dGHhugYdrYoEjHYR0f_IMGLOW', 'AJW5SHcQUg3koAdieLKSuGIkygd4i6rR_IMGMAIN', 'media/images/1704371433966-image_cropper_1704371407077.jpg_low_image.webp', '2024-01-04 12:30:34'),
('uX7I3AOJLM9vwIs4VPm3uKpc3RbOwhnR_IMGLOW', 'smUrnAHVPf8XBPNjQEsDK8J8VJaF4zzN_IMGMAIN', 'media/images/1708791064129-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_low_image.webp', '2024-02-24 16:11:04'),
('vC3HStuPO5WsT8baZDXDbwL2epZH3JPZ_IMGLOW', '4cwEyrjsaRvsia9ioRwNABrzljUiKa04_IMGMAIN', 'media/images/1703571691768-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_low_image.webp', '2023-12-26 06:21:31'),
('vduIK13f7wLNzAsbnUxMSYE83Wj2oFcl_IMGLOW', 'XicrnPDVVHmvAmmUUaU8v11ybDNnV7j4_IMGMAIN', 'media/images/1704371104671-image_cropper_1704371075984.jpg_low_image.webp', '2024-01-04 12:25:04'),
('VpYPz1GySdJuFdeGnhv5im1jnMLecue7_IMGLOW', '1dKbizW5ZH5MVUICxiuIZdht6Z00USiR_IMGMAIN', 'media/images/1709127617058-image_cropper_1709127506259.jpg_low_image.webp', '2024-02-28 13:40:17'),
('vQaH0ZUOmc04e1dZg8uhp3k3Lri786Q2_IMGLOW', 'mVaov3pNc1uz3hjEhQ0VkmulB10dsveu_IMGMAIN', 'media/images/1708696896027-0860b6ae-1146-4f94-9bd1-0dbc19c699e71146998765741838511.jpg_low_image.webp', '2024-02-23 14:01:36'),
('VxGEGLzSfuiXiw3cAQhNhQ53d7GxPaxZ_IMGLOW', 'oLhJuFinTuUEFATHJ3QVqzXAj8ek2qAz_IMGMAIN', 'media/images/1709124385995-image_cropper_1709124330864.jpg_low_image.webp', '2024-02-28 12:46:26'),
('w7yo6LJItjTJxzCbE1C6woeRBsd5eikB_IMGLOW', 'lpFmkuUFPjYLduIl5N6RhdT2mLaQsEu6_IMGMAIN', 'media/images/1707294760882-image_cropper_927D92EB-0B3D-4276-9CF8-AFE5D175EE8A-89045-00000F33F6BCCB26.jpg_low_image.webp', '2024-02-07 08:32:40'),
('WbGdCdbQQHGzIZ6QcHtCJXRuExJrBpWF_IMGLOW', 'sheuFZa45pHZEswOQetflM9oOeirIkyr_IMGMAIN', 'media/images/1703169664116-1703137750385-shirikisho_profile.png_low_image.webp_low_image.webp', '2023-12-21 14:41:04'),
('wJL8BmPocECvfL7O14G6CM4c1btdey0o_IMGLOW', 'd8HQ4vGwtDaL9RYlqgBFUxbAs9MqBsdT_IMGMAIN', 'media/images/1709381167614-image_cropper_1709381089393.jpg_low_image.webp', '2024-03-02 12:06:07'),
('wwyouu88oLTEmPN8Otcrv42PR58mcPd5_IMGLOW', 'qWY0fWSO9TSMCX9XazRbkOh7M3u5Jyxd_IMGMAIN', 'media/images/1708600506786-37a98459-6399-4f21-86d8-03e0c595e4b41026559217871337746.jpg_low_image.webp', '2024-02-22 11:15:06'),
('xaZ2t8AEFgf9NlhU8ToMWsSij4N52W4m_IMGLOW', '9W88sEIfNYMddRLP4E2P16zhSWtJ7nvW_IMGMAIN', 'media/images/1708165983207-image_cropper_1708165926321.jpg_low_image.webp', '2024-02-17 10:33:03'),
('XfCQIpv1Iw6Q83Mj6Cb6TJJ4R11jHpgV_IMGLOW', 'O4eAkwaQRt7YWd2C9eKsph1DqbrnNcSZ_IMGMAIN', 'media/images/1708683653737-ab219e32-22bb-4615-bf21-92cbfb0858c01392222992875977841.jpg_low_image.webp', '2024-02-23 10:20:53'),
('xNrfZd5JAymvyN45ly1FmFIHfPv4kSxf_IMGLOW', 'gZ1fkN8iUaPk3zctqpfF1fr67CJ8vWYT_IMGMAIN', 'media/images/1708682957797-Screenshot_20211118-104029_WhatsApp.jpg_low_image.webp', '2024-02-23 10:09:17'),
('xPPsWwaynjaqtSVLM8Y7m2BnV7qWAkVC_IMGLOW', 'dC3ZXzA5iZhLwQdB1gvsMu0badoA79aD_IMGMAIN', 'media/images/1709124382187-image_cropper_1709124354649.jpg_low_image.webp', '2024-02-28 12:46:22'),
('yFZuFnaCrWfg208deasJG6yXzURdhrFc_IMGLOW', 'JncRcmDj3vbdfykJCRCOiMmemBkfcads_IMGMAIN', 'media/images/1705493200079-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_low_image.webp', '2024-01-17 12:06:40'),
('yWeCiiK7IulPw8DwMBhwAXzBlSl9sg9Y_IMGLOW', 'l5o2Gi9ezQme2IxJZhhCJFXKBsQHh2vD_IMGMAIN', 'media/images/1708676634436-image_cropper_1708676579623.jpg_low_image.webp', '2024-02-23 08:23:54'),
('Ywi2yOc0p6GzE2nO8kIdHJ2WXE15qqnd_IMGLOW', '9UQwmfIX6ZcBcD380hHNptr2TQ7ZQbF7_IMGMAIN', 'media/images/1704704443546-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_low_image.webp', '2024-01-08 09:00:43'),
('Yy0LMmamBPpkMkxdpdKxY3CDhQeQ0IFq_IMGLOW', 'YW8wuORPzLf1azpIwz7sXKifsoeEX5Lb_IMGMAIN', 'media/images/1708949838319-image_cropper_1708949745479.jpg_low_image.webp', '2024-02-26 12:17:18'),
('YzlgCxUFBGqdvf5ABCo1XkLZdO9pEofN_IMGLOW', 'T7jA72xw4lvViOtw4X4DUUEWRCd5ejBh_IMGMAIN', 'media/images/1708165985862-image_cropper_1708165896357.jpg_low_image.webp', '2024-02-17 10:33:05'),
('z3QlnLeMb7qJ4urs5vvLJFviVVk9GxGt_IMGLOW', 'PFlRUiVRNV5IOA39gLii1GcQXQ9jwTM1_IMGMAIN', 'media/images/1708597326458-image_cropper_1708597260457.jpg_low_image.webp', '2024-02-22 10:22:06'),
('Z7LDkn6G7yJW9XOWfrYpuqy7P35aEcen_IMGLOW', 'X8L5p24x03Gw2BKn1inUh1UnYYOd78il_IMGMAIN', 'media/images/1706600185954-08984944-98bd-48c6-94b2-790574c177123492253817966153328.jpg_low_image.webp', '2024-01-30 07:36:26'),
('zAeNCzemqHAIh0fMOLx514VJ1YRdByYA_IMGLOW', '72Qq9gLxT1Z6C2YMdiETkzpIUq3GhFTD_IMGMAIN', 'media/images/1709127583166-image_cropper_1709127531514.jpg_low_image.webp', '2024-02-28 13:39:43'),
('zbAWBM82fP5LkmumMyXbauEB9al7fJ5C_IMGLOW', 'y9ziiBFwEavtAH5vMAllYOriebXgUAt6_IMGMAIN', 'media/images/1708165661056-image_cropper_1708165645837.jpg_low_image.webp', '2024-02-17 10:27:41'),
('zpB8lYyheQyJwcpeKArtsZLrJ7PXoBxW_IMGLOW', 'qxxDxOt26BiEpj9M4Yvi91nwmONVfFlP_IMGMAIN', 'media/images/1708599906710-image_cropper_1708599891031.jpg_low_image.webp', '2024-02-22 11:05:06'),
('zx1WjM7JBSYp3o1E4YTpAWwO9nWRuKkV_IMGLOW', 'Og4TFRZzmFZULeju15Xis6V4I0HthDCW_IMGMAIN', 'media/images/1705559889885-1a4ab5c0-9b60-449d-978c-8092d75cc1928832869752204363697.jpg_low_image.webp', '2024-01-18 06:38:09'),
('ZzxQ9hUpITkf5uXAhwYyAcY4keOUWMnF_IMGLOW', 'msDMugw5R11oXmNr80dylfs0kOmLSd40_IMGMAIN', 'media/images/1708682955476-dd778b53-6f1b-44e8-bfb2-b7abeacb3af45286255035694682931.jpg_low_image.webp', '2024-02-23 10:09:15');

-- --------------------------------------------------------

--
-- Table structure for table `images_qm`
--

CREATE TABLE `images_qm` (
  `image_id_qm` varchar(225) NOT NULL,
  `image_id` varchar(225) NOT NULL,
  `image_path_qm` text NOT NULL,
  `upload_date_qm` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `images_qm`
--

INSERT INTO `images_qm` (`image_id_qm`, `image_id`, `image_path_qm`, `upload_date_qm`) VALUES
('07K6E3f8IIlXXhVUkaLtV7vzIfTILir1_IMGMED', 'QLYeL3xhwyCY39hS66q7BYUGqgmFsSmd_IMGMAIN', 'media/images/1708597703192-image_cropper_1708597687916.jpg_medium_image.webp', '2024-02-22 10:28:23'),
('0demE52t4K042rIqfR2UfAPIBqSTNYFL_IMGMED', 'MRWMlmI7Pc7tEQojiTsZYbmb74EbUa6M_IMGMAIN', 'media/images/1703596220329-image_cropper_7DA8DB4C-0395-430F-9C50-4730ED34A630-71394-000001A78D80B3BB.jpg_medium_image.webp', '2023-12-26 13:10:20'),
('0F5IIVxlZzoHGg3PBRDvRzLONLvAG2Ap_IMGMED', 'yvaZ2ZyeDSFE3YB4HTDvTIZx2iQiKPQ6_IMGMAIN', 'media/images/1706952338890-image_picker_F2F63D34-1D18-4487-813F-DF50BDFC47E5-59689-00000CBC3F4C1A26.jpg_medium_image.webp', '2024-02-03 09:25:39'),
('0pTe3hoWwgltUSv5sKCOoU8KTHr3pLbD_IMGMED', 'I4B9itCTJFuWtY421TrQGHRPB4OlvQWE_IMGMAIN', 'media/images/1708600229754-image_cropper_1708600187321.jpg_medium_image.webp', '2024-02-22 11:10:29'),
('0XxZu5jcmPlRyQHwLmxLPFKtBF6S8Ict_IMGMED', 'DGhwBuvTNn3VMrzY8M1ynM6ERCdwMRxG_IMGMAIN', 'media/images/1703599112053-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_medium_image.webp', '2023-12-26 13:58:32'),
('1hU2riFDcYr7wtSlrqgsGC2mUDEJbThM_IMGMED', 'CckUVol6IPTLue8WFAwidGZA6AiqPOZq_IMGMAIN', 'media/images/1709023694227-ca4e9240-3ebd-4d6f-a239-f4dffbe3c9f94427277393898852800.jpg_medium_image.webp', '2024-02-27 08:48:14'),
('1mOsPDwDIkpVS1DVE4JP66hU7mZgP2Q2_IMGMED', 'HHshXRn6QE07TOS5l1uP0f4b0tFI20Bs_IMGMAIN', 'media/images/1708597322162-761b951c-45f4-4b0e-acc2-6f5251806d0a6726789841922416255.jpg_medium_image.webp', '2024-02-22 10:22:02'),
('1WOzqjNSlqiAsPSqHTfaZdyNt1KQXrHG_IMGMED', 'hAAmhPAJwjrgSbMtvIA9ifi8bQia152P_IMGMAIN', 'media/images/1709024234585-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_medium_image.webp', '2024-02-27 08:57:14'),
('2iCEQWoJF4VWfuPElS2LWrtBAtwdZyIb_IMGMED', 'gZ1fkN8iUaPk3zctqpfF1fr67CJ8vWYT_IMGMAIN', 'media/images/1708682957797-Screenshot_20211118-104029_WhatsApp.jpg_medium_image.webp', '2024-02-23 10:09:17'),
('2LWSTPoZpkbqYV15zTajzHN5Rs6Gv4TM_IMGMED', 'LmpGI3JbpSdeTZfhPz4Ox7xKfvT91t4V_IMGMAIN', 'media/images/1708949889794-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_medium_image.webp', '2024-02-26 12:18:09'),
('2RzvjJ0lKThiPEODsYB0YARYi8wuYAjv_IMGMED', 'LwTjuRPUFf5CW7pNBIyQGUxdckgYTrro_IMGMAIN', 'media/images/1709122951390-image_cropper_1709122932951.jpg_medium_image.webp', '2024-02-28 12:22:31'),
('2vABSGSfodUKBt2ESIbAY1uG4UunR4Bu_IMGMED', 'Yo5oy2XpLrtB2ZeS3KvyiH4pijEA2jzk_IMGMAIN', 'media/images/1704704928613-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_medium_image.webp', '2024-01-08 09:08:48'),
('3oBGxZtUuLTmkPrOkVF65XmfvhsvcvQh_IMGMED', 'L8NlmWLsriD8RInPxcrFTrXW8IJNrdWB_IMGMAIN', 'media/images/1709128578591-c0ab9553-6096-4c38-a49c-540b75e47edd7358688787624572202.jpg_medium_image.webp', '2024-02-28 13:56:18'),
('56iSdyj8aSOVBMO0JpIQUSGevlYD84XY_IMGMED', 'J276EEgcsUosgc0qTLB9Re2OzBdKH7NM_IMGMAIN', 'media/images/1709027775178-image_cropper_1709027718976.jpg_medium_image.webp', '2024-02-27 09:56:15'),
('5gBsZI7nJSeFGQrnrKdcqOwwpBgA0ZWO_IMGMED', '1casOXHAPFmXiXTSqjrkrWqNgVrUD1nc_IMGMAIN', 'media/images/1706770019680-image_picker_135B0F3D-5FD7-484B-BCD9-A7A76011D755-11203-00000A98F596AEC8.jpg_medium_image.webp', '2024-02-01 06:46:59'),
('5SwrAuAN4FOZ31hqsqFnIYKUtSx3RL9a_IMGMED', 'l5o2Gi9ezQme2IxJZhhCJFXKBsQHh2vD_IMGMAIN', 'media/images/1708676634436-image_cropper_1708676579623.jpg_medium_image.webp', '2024-02-23 08:23:54'),
('6HcbH12DSRc9DDM8o45af9saXmRrYlvm_IMGMED', 'ftvDrto0lXo4r0CX2laf3iOfx96HD5Oo_IMGMAIN', 'media/images/1703599093114-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_medium_image.webp', '2023-12-26 13:58:13'),
('6U2bot53akF2sbCoyAbbL8jeOIxWUQBf_IMGMED', 'YmD36JkpZD9CXYTxl144EcLTgCI3WTui_IMGMAIN', 'media/images/1704371486092-image_cropper_1704371407077.jpg_medium_image.webp', '2024-01-04 12:31:26'),
('79t2lJSUbtyMZJobBiQCzbmYlE5VnwVY_IMGMED', 'uaYdA4ruXQpvOTNw4pBhEI670p7EaZ0p_IMGMAIN', 'media/images/1707294754933-image_picker_9E578D49-3741-4B1C-86A3-23624BA31C0E-89045-00000F33FF77BC22.jpg_medium_image.webp', '2024-02-07 08:32:35'),
('7aAMkbQW0g26SKRem8lzR8BG3WONias7_IMGMED', 'qt2y2BFdn7lObqr3ptQ3KjXPKHL3ufIX_IMGMAIN', 'media/images/1706903398072-image_picker_8E89BC9F-75B8-497D-B5F4-2E3B5D626BF2-73670-00000C5967F2974A.jpg_medium_image.webp', '2024-02-02 19:49:58'),
('7btgsB9TlaoQis3XlAYBWQdvWqwR6QeV_IMGMED', 'qxxDxOt26BiEpj9M4Yvi91nwmONVfFlP_IMGMAIN', 'media/images/1708599906710-image_cropper_1708599891031.jpg_medium_image.webp', '2024-02-22 11:05:06'),
('7IBAOFwhMSUkjVbJxGT5UaS4YiIUS8fc_IMGMED', 'Iv2TMwvH2e0sb5OUSJlnERwNEDIwAncW_IMGMAIN', 'media/images/1704371094638-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:24:54'),
('7ypJnRc0AYpFx3ixkRIpIEu5rot71qkO_IMGMED', '4cwEyrjsaRvsia9ioRwNABrzljUiKa04_IMGMAIN', 'media/images/1703571691768-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_medium_image.webp', '2023-12-26 06:21:31'),
('8ZTb3jaaHxfOd2be22KlwY32ebWSpene_IMGMED', 'd8HQ4vGwtDaL9RYlqgBFUxbAs9MqBsdT_IMGMAIN', 'media/images/1709381167614-image_cropper_1709381089393.jpg_medium_image.webp', '2024-03-02 12:06:07'),
('9bFDaxZ7auJBaIQW42wfzsigX8cImKRR_IMGMED', '9W88sEIfNYMddRLP4E2P16zhSWtJ7nvW_IMGMAIN', 'media/images/1708165983207-image_cropper_1708165926321.jpg_medium_image.webp', '2024-02-17 10:33:03'),
('9sYsTIyw5ne0FGfHX9edgwrzXpC6pESg_IMGMED', 'E32DQNUtfT1kM6wNut0bEaXmGcTADzxL_IMGMAIN', '/media/images/1703137643350-shirikisho_profile.png_medium_image.webp', '2023-12-21 05:47:23'),
('9yIRZVVWQn7n8crHwThfwikfkSBtvxyv_IMGMED', 'jhEkF9LQPfe8nyCr1Rl8av234zXacHFD_IMGMAIN', 'media/images/1708598008177-e879be18-0c63-41c3-8849-5105560c9de82404083425168951621.jpg_medium_image.webp', '2024-02-22 10:33:28'),
('aS5RcEphSKXInfphfLa8gCgtbkWbNmIH_IMGMED', 'KaMiko841HSFyc5j2sZeXwZYO1TD79Fd_IMGMAIN', 'media/images/1708683661782-a58f4fe1-512a-49ee-9130-ef5e470666e12876383331376744062.jpg_medium_image.webp', '2024-02-23 10:21:02'),
('asPQDD3oYoidzJAxVZ5TXopwKudefh49_IMGMED', 'smUrnAHVPf8XBPNjQEsDK8J8VJaF4zzN_IMGMAIN', 'media/images/1708791064129-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_medium_image.webp', '2024-02-24 16:11:04'),
('B21jhKOTCisnBoravLrVEjIf1T4bboK6_IMGMED', 'RY7fPhkobSQa8NnrafErxHKtkK0aPHY1_IMGMAIN', 'media/images/1706787846138-image_cropper_5C503533-2918-42E1-851F-652EA8F69338-11203-00000AF963919974.jpg_medium_image.webp', '2024-02-01 11:44:06'),
('Balh4hKiakBQAHmDF6OEayzzeFKspENC_IMGMED', 'F87EqR6wlhqmiJmV3zCEVMEOb8foEJzO_IMGMAIN', 'media/images/1709299155253-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_medium_image.webp', '2024-03-01 13:19:15'),
('BCtvWhd6VlvQeibr4NWwVlXpz7mkaSIY_IMGMED', 'UiLmg6sHrM3Q5fsnKYeeGINuMU1x0yKh_IMGMAIN', 'media/images/1708167510316-image_cropper_1708167461311.jpg_medium_image.webp', '2024-02-17 10:58:30'),
('bef1hbXDXNaxX8IQKNDZz7lA7yb7D7uc_IMGMED', '72Qq9gLxT1Z6C2YMdiETkzpIUq3GhFTD_IMGMAIN', 'media/images/1709127583166-image_cropper_1709127531514.jpg_medium_image.webp', '2024-02-28 13:39:43'),
('bmwVFrVcZXfJigV6cz3rQ4jaB9aoADYN_IMGMED', '2cKyPOtwC9SkaXBd4ChnEVCQsw03schT_IMGMAIN', 'media/images/1708791160218-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_medium_image.webp', '2024-02-24 16:12:40'),
('bwi99uhR1gp1bIqAGhxvQzo9HKlT0CtR_IMGMED', '2LeSizzVYtYM2qp06GGrzDNXQ9v4SH5F_IMGMAIN', 'media/images/1704551408543-1703137750385-shirikisho_profile.png_medium_image.webp', '2024-01-06 14:30:08'),
('bZK8RLlepL22QlRUiSRPbzffNqe5KQak_IMGMED', 'IQFB8R79FiaTAi1M1FUCKgX9AYPITHY3_IMGMAIN', 'media/images/1708942429589-d8f788a9-003b-4850-a224-8aecf6944de0569911778247695337.jpg_medium_image.webp', '2024-02-26 10:13:49'),
('bzRlRoiDrMtuVCLFcHGHcmIVk2CZZYz6_IMGMED', '5d9AHGHKRXrJ56Y09gToCltupr6gK3ov_IMGMAIN', 'media/images/1708165682064-image_cropper_1708165597596.jpg_medium_image.webp', '2024-02-17 10:28:02'),
('cjRBwNhNcbsrzjHBFQKbQWnBmRwlZSTK_IMGMED', 'XicrnPDVVHmvAmmUUaU8v11ybDNnV7j4_IMGMAIN', 'media/images/1704371104671-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:25:04'),
('Cqa8e6cL77d86sT9BV7HaFV2q4JM2F5g_IMGMED', 'cwzMCiS8DMu67cDoD4AnhGuMqpbh4Iab_IMGMAIN', 'media/images/1709296471920-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_medium_image.webp', '2024-03-01 12:34:32'),
('cuxnprP72T5hwijxmLW9MmPVdPJcZdM2_IMGMED', 'louSdjOKEw5r30Z7gAumAHy2c7CtMkb8_IMGMAIN', 'media/images/1704267548766-image_cropper_1704267413444.jpg_medium_image.webp', '2024-01-03 07:39:08'),
('CUYeuxoTQ6dADIDehs95sMdqrH7wUPlz_IMGMED', 'hYfMJdSH9KNnFEDHk9YWzpQ3RmO932v7_IMGMAIN', 'media/images/1706508536537-b92474fa-d9ab-4c7b-8341-3f331067c80c5380496020008031352.jpg_medium_image.webp', '2024-01-29 06:08:56'),
('cv1dcbQ7bn7PBbyJV4BiqzQBYxH0tlEY_IMGMED', 'LnshmNb3sngBhOILJj0ZAbHxbrciVFIb_IMGMAIN', 'media/images/1709023689348-image_cropper_1709023638476.jpg_medium_image.webp', '2024-02-27 08:48:09'),
('d1fZuNoRbFupJbgiSyR0QiSIieGx9QuH_IMGMED', 'Y21jD1LD3V4ltwOuuwq0jNDr1jr8PhhS_IMGMAIN', 'media/images/1708949900237-image_cropper_1708949745479.jpg_medium_image.webp', '2024-02-26 12:18:20'),
('d3I5hg7cbf85hJa7weM6drTXg5flv293_IMGMED', 'UhVDiyAXzGT2FEfh6xYK5scxNw3M5elt_IMGMAIN', 'media/images/1706903779179-image_cropper_78C6FC59-15CC-40EC-B389-8691A98E7BDE-73670-00000C5BBF71DBBE.jpg_medium_image.webp', '2024-02-02 19:56:19'),
('ddnUejX7SnsugCMZ8CcDJStNV42INuYr_IMGMED', 'N8URY6nT8MqTlr5fU9cQheeUqKuED4Cg_IMGMAIN', '/media/images/1703091747420-shirikisho_profile.png_medium_image.webp', '2023-12-20 17:02:27'),
('DJ7zj0DB9i0IXzpyY3GG2iX9pT8wETlS_IMGMED', 'gYCJ6QZc7n59nXSGytScMJfy8qNG7T1S_IMGMAIN', 'media/images/1705492906319-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_medium_image.webp', '2024-01-17 12:01:46'),
('dJl3p2PZW63sSbADDzzAQxJIZQF4DGfR_IMGMED', 'kc4aaZUAZfmYtRKUw90mfo7oe5gpPFxv_IMGMAIN', 'media/images/1708791172283-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg_medium_image.webp', '2024-02-24 16:12:52'),
('DStu7MpzSJngpM2dz7hpOzIhG7O9LRVr_IMGMED', '3D4qc3MdBPvxIIrJz5mnkrR2azCgLCaR_IMGMAIN', 'media/images/1709381158933-c9e3f04b-a6ff-45e4-aa50-7cde732adcfc2348161891209594580.jpg_medium_image.webp', '2024-03-02 12:05:59'),
('dZyKK27mOMML988gFBB2iSefJ7GMJwIA_IMGMED', 'OFdOkoQNyjx5GAqHPjJtLck9KhMtL7vI_IMGMAIN', 'media/images/1704371326297-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:28:46'),
('e1x7BSanYZ3TBFijU6D8y4cG9bQ2kCfk_IMGMED', 'OotIhtqLVBKntGWIOA49gjOncF892RLu_IMGMAIN', 'media/images/1704269906620-image_cropper_1704269890639.jpg_medium_image.webp', '2024-01-03 08:18:26'),
('E3E3iubZDHgsCFibKj2fdlrudvcqC3pQ_IMGMED', 'oLhJuFinTuUEFATHJ3QVqzXAj8ek2qAz_IMGMAIN', 'media/images/1709124385995-image_cropper_1709124330864.jpg_medium_image.webp', '2024-02-28 12:46:26'),
('E3Nyl9AMI6p3qH216RdL4R0IsD2GiNTo_IMGMED', 'oVso28IJawQPVAxuWbE8pbSsmKSYsIER_IMGMAIN', 'media/images/1706896458958-image_picker_B14EF025-8FB7-48E1-8E68-CAA69D57CD6D-73670-00000C2EF34844E3.jpg_medium_image.webp', '2024-02-02 17:54:19'),
('E6NvCtePuxAKUzXd8eQ7tgbVWjIgHoDR_IMGMED', 'mVaov3pNc1uz3hjEhQ0VkmulB10dsveu_IMGMAIN', 'media/images/1708696896027-0860b6ae-1146-4f94-9bd1-0dbc19c699e71146998765741838511.jpg_medium_image.webp', '2024-02-23 14:01:36'),
('ecZUUVADFrlSrU4lmfe8vwuXPkre1Nd4_IMGMED', '9cGUkt208VY0lk4tlIJ5uWOOJusNdou9_IMGMAIN', 'media/images/1708169174938-image_cropper_1708169161753.jpg_medium_image.webp', '2024-02-17 11:26:14'),
('EjJKO2tipoZf7IoHfFpEaTwEk58XMPjE_IMGMED', 'IpkChZ4p2nGhKCh6qb9ZPnaonYUEypuG_IMGMAIN', 'media/images/1708599911039-image_cropper_1708599854578.jpg_medium_image.webp', '2024-02-22 11:05:11'),
('ekhHTDvrBoyFAKwhHyi5JeFEvdxvt1MO_IMGMED', 'OLlertMyL8N24vW9sWHDefJYpKLeGi1l_IMGMAIN', 'media/images/1706952275750-image_cropper_9B9B9254-E408-4F64-954E-D00621C2E4C9-59689-00000CBC5F9F12AA.jpg_medium_image.webp', '2024-02-03 09:24:35'),
('ETe7AeHKu9cFbDzt3WXduwoZTjttkLCY_IMGMED', 'w4BMRa1v2sZsRYaTEXirVz1XLDMd7Dag_IMGMAIN', 'media/images/1708599559353-image_cropper_1708599525533.jpg_medium_image.webp', '2024-02-22 10:59:19'),
('eXeJTheqPE2AxHxnDyUdKchLP9wKTVPm_IMGMED', 'H28UszlIwOYpta1YIsoflrM014jrYYsk_IMGMAIN', 'media/images/1708950377462-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_medium_image.webp', '2024-02-26 12:26:17'),
('EZuRMDF95vmkRt6qPk5BADFA6Po5ndZx_IMGMED', 'BZqXMWLk5rASCEjsOMzXSW4truqHnQ0l_IMGMAIN', 'media/images/1708770053594-image_cropper_1708770041336.jpg_medium_image.webp', '2024-02-24 10:20:53'),
('fAXpIIJ1ngRCTCtRp81afKefKPaJnJc7_IMGMED', 'XG69X9gbIiMox3Uil1TLgTzar3oT3AYV_IMGMAIN', 'media/images/1708598762607-image_cropper_1708598721878.jpg_medium_image.webp', '2024-02-22 10:46:02'),
('ftOTkG2d4L6Pd48h2OZyc2SXeHjwtojN_IMGMED', '8jqbBfCVimudSbspF7hKjNABOADZlGy4_IMGMAIN', 'media/images/1708439660511-f93d9dd1-79f4-42df-b8d2-aa544322fcd84932086145810993617.jpg_medium_image.webp', '2024-02-20 14:34:20'),
('gabbys9YamzUF37QHVLm9QSvbomOWgVo_IMGMED', 'fZapKG8nYMLbZ3liEBCLIM1BJb3xrAlH_IMGMAIN', 'media/images/1708165940233-image_cropper_1708165926321.jpg_medium_image.webp', '2024-02-17 10:32:20'),
('gbACKCQURCP9rjbR3uZ5oSnjYptvFOp3_IMGMED', 'yEYiKb9i2eBRPao8fyyTJDL3DfznroVp_IMGMAIN', 'media/images/1708676630470-4560083d-86a0-4ea7-8bb5-9a43c3797eb85179977862731130094.jpg_medium_image.webp', '2024-02-23 08:23:50'),
('gRk7vFlCPZmAlCaKfnt0wWAaq6VRqWeV_IMGMED', 'RMWPNIEYheXvF95mmeirXS1LaPvE30bN_IMGMAIN', 'media/images/1708599555305-f8fd396d-b905-4135-a2f3-690394eb43cc51732956033614115.jpg_medium_image.webp', '2024-02-22 10:59:15'),
('GunDfjgAGSvueRY6QdSWOdE7tFilZxmN_IMGMED', 'kPEQmZy3vh2ha4F6vFx4vozmSNRO4C69_IMGMAIN', 'media/images/1706777748998-image_cropper_B8A8309E-E4AA-4895-81BF-269E1331AF15-11203-00000AC17B36D369.jpg_medium_image.webp', '2024-02-01 08:55:49'),
('Gx2xvmOOAjAqznYo7JomvuRHu55PexRt_IMGMED', 'sEzata7fVZnTDnNfWxqHHwPjcfbnqGwT_IMGMAIN', 'media/images/1708598758419-f188ac4d-50f7-49e5-98c5-568472bb1be58122157743204537228.jpg_medium_image.webp', '2024-02-22 10:45:58'),
('GXyTFfpXgu5VZ7Iwn8QC0zoNq8nTOVDG_IMGMED', 'hoSF2ofVB5zQMsbGYSVaTrvpGcgXqs1i_IMGMAIN', 'media/images/1709298811255-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg_medium_image.webp', '2024-03-01 13:13:31'),
('hHxC83s5eMcb3Ql5nw6sbocpwpik9Dbb_IMGMED', 'yEefnuZnMpvOQOaS1UpRkUYuVc1u2HMv_IMGMAIN', 'media/images/1703596233440-image_cropper_927F99FF-C446-4FB1-8163-C8A9D14BDC1D-71394-000001A77036D0E3.jpg_medium_image.webp', '2023-12-26 13:10:33'),
('hM6PDYTgquYCdQCbCdLeIytWHjXGbZQd_IMGMED', 'Og4TFRZzmFZULeju15Xis6V4I0HthDCW_IMGMAIN', 'media/images/1705559889885-1a4ab5c0-9b60-449d-978c-8092d75cc1928832869752204363697.jpg_medium_image.webp', '2024-01-18 06:38:09'),
('HmSujJU4PDtheJhoua4BBByKiCHu5F7k_IMGMED', 'PFd53G3IPjeEKHsp8ofWYQkhCIypYOB8_IMGMAIN', '/media/images/1703087778670-shirikisho_profile.png_medium_image.webp', '2023-12-20 15:56:18'),
('HNgzA2J5mAYtscrgEnPeUNksUpkh7PP2_IMGMED', 'cpOJh3kQw4XlNAXKywCvs1VuCH4POrVe_IMGMAIN', 'media/images/1709024229095-image_cropper_1709024108715.jpg_medium_image.webp', '2024-02-27 08:57:09'),
('iHgTVxV8PFwKQjEzt71UJ9kaoUCXD8An_IMGMED', 'ZJvZ6ZDZHNkOV2b4oRuPc9m4LrcOkNm7_IMGMAIN', 'media/images/1708598329315-image_cropper_1708598278780.jpg_medium_image.webp', '2024-02-22 10:38:49'),
('ilJECtjxR0geKCDZ6LA1zQU6T5j6j4sZ_IMGMED', 'X8L5p24x03Gw2BKn1inUh1UnYYOd78il_IMGMAIN', 'media/images/1706600185954-08984944-98bd-48c6-94b2-790574c177123492253817966153328.jpg_medium_image.webp', '2024-01-30 07:36:26'),
('Ip53rMQY5aDOiSki434KulRIqhn7WkOi_IMGMED', 'Gg6PnWZGlyZLXFysf636eytWwLLhn5iH_IMGMAIN', 'media/images/1708439668787-74715e57-3e26-4f58-943a-aaac1fe533886081319330334936266.jpg_medium_image.webp', '2024-02-20 14:34:29'),
('ISJHM6eGoCfZTwExVwYgXLwvrHmRpmyr_IMGMED', 'ER6XhMQaiuQa71Qvard4P7SvU1lx4JXZ_IMGMAIN', 'media/images/1708942426181-2480d735-cc45-4d41-b634-f593d48bf2223826952024470443642.jpg_medium_image.webp', '2024-02-26 10:13:46'),
('iuQxW6MeI1wbyjX3AI5gd3fmbEuweuEk_IMGMED', 'js81Y5w9H5vXuctxaUIi1Tb5cFkzRfbw_IMGMAIN', 'media/images/1704457566708-image_cropper_1704457508237.jpg_medium_image.webp', '2024-01-05 12:26:06'),
('j2ljFKKHQUUs7iLcqw9w9cBW1yukOhyl_IMGMED', 'JqDboQI4qRMB1Vd7dsWkjKlFiIO5mgvK_IMGMAIN', 'media/images/1708770059750-image_cropper_1708769991553.jpg_medium_image.webp', '2024-02-24 10:20:59'),
('JF9dAImU2ZIv0fgAChZH8nrtIsNrPRww_IMGMED', 'nsxeahxebQEPEiagqslx87mLd9RVwvBy_IMGMAIN', 'media/images/1704790939074-image_cropper_1704790761561.jpg_medium_image.webp', '2024-01-09 09:02:19'),
('jiZXF1R1VqzSq7KMo67Oo3m49cAoHwgS_IMGMED', 'cH7h1FtMkdzLDCUhWSbUrfayrZwGPXcz_IMGMAIN', 'media/images/1703598246500-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg_medium_image.webp', '2023-12-26 13:44:06'),
('jWvqGKZGkeBjGJwv8sQXeUsXm8syskZ4_IMGMED', 'QNm4Yxn0S4ZTmsuRrynHtWzjUiMI9gvK_IMGMAIN', 'media/images/1706770043019-image_cropper_F3894ECF-AB65-47FF-9552-18DD4F9E6958-11203-00000A98EBFDBC45.jpg_medium_image.webp', '2024-02-01 06:47:23'),
('kaBTv4Kfs5UdIjGnkv3V1VvHERgRmdTY_IMGMED', 't6AODinWywrE5MDQEaVoht6EKXcpKzzT_IMGMAIN', 'media/images/1704372240044-image_cropper_1704371612984.jpg_medium_image.webp', '2024-01-04 12:44:00'),
('KG1perN9tVT38koVWeJRbMRasnPvn9O3_IMGMED', 'lO8TBSdaHzFS6ZzAzTuDVWSAcitpseNZ_IMGMAIN', 'media/images/1704372737035-image_cropper_1704371612984.jpg_medium_image.webp', '2024-01-04 12:52:17'),
('KLiNFxizUqkC4PVMFsjpfMjsnQ1frHQi_IMGMED', 'C5LihaCrrUw60X1PfLxjrNs0XyWiZTM8_IMGMAIN', 'media/images/1709024254685-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_medium_image.webp', '2024-02-27 08:57:34'),
('kQUonJpVQ32J5TddUxWBw17LLkq5hPZQ_IMGMED', '9Oi90Gwno7fg6IzQFs5fMEjS3BBdjylB_IMGMAIN', 'media/images/1708599182326-image_cropper_1708599131904.jpg_medium_image.webp', '2024-02-22 10:53:02'),
('KR6dGpnYSZG5y364JbQfzWnXP3lhSraV_IMGMED', 'Mpzcek5PlRgFA2Od3rg7wHe6ZD0hsYor_IMGMAIN', 'media/images/1706896326733-image_picker_DCA654F7-67C3-4648-B448-CC0474A54BB1-73670-00000C2F050A85E9.jpg_medium_image.webp', '2024-02-02 17:52:06'),
('kRNT2195nEUrcKkh3i7TFeuP996BAG6T_IMGMED', 'JncRcmDj3vbdfykJCRCOiMmemBkfcads_IMGMAIN', 'media/images/1705493200079-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg_medium_image.webp', '2024-01-17 12:06:40'),
('krutZVfC928u6otAPAXVQK70TQWR163r_IMGMED', 'fLnoEpXQ1yCgrtNXaPgMmOyHT6VeUE4G_IMGMAIN', 'media/images/1708929573877-aac791a0-b076-49e9-bbeb-9cce4d08b7477652673047662149921.jpg_medium_image.webp', '2024-02-26 06:39:34'),
('kXReEI20zHfZxZurZSUsBgx6gIqFogq1_IMGMED', 'lYtGfsj9h3CELJeLS9boJTBpfjWNLHVv_IMGMAIN', 'media/images/1706777744477-image_picker_13D3E1A6-E515-4CF4-A070-8275172CDB77-11203-00000AC1912AE5DC.jpg_medium_image.webp', '2024-02-01 08:55:44'),
('L5bcdJEnoAVTWiAmIkuNp7WojJozV70o_IMGMED', 'RpIcKj4lNHde73LusLmsjBWitc0ZxYRF_IMGMAIN', 'media/images/1707289934255-image_cropper_60833F12-5F55-43F3-AE11-B66CDFF69D98-89045-00000F1932218F1E.jpg_medium_image.webp', '2024-02-07 07:12:14'),
('LDXrZ3bCAvSOmQdI15PuFYHcTlCqfZhw_IMGMED', 'dxrChkAsRHI3bImWcwVuPeBSDoL5pKHt_IMGMAIN', 'media/images/1703572935760-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_medium_image.webp', '2023-12-26 06:42:15'),
('lF7942aZFkAvYgD0UyZubPEeR7WcfJ7v_IMGMED', 'AOCoaWG1q0zrlZhQq2wfkieKpgZ77uU5_IMGMAIN', 'media/images/1703141804770-shirikisho_profile.png_medium_image.webp', '2023-12-21 06:56:44'),
('lf7EN7gS7Twq9uyd91sREEC2lBaKVqpv_IMGMED', 'gO6g5wlY1Ze0BEXY78RgUMFRwcxiRkQM_IMGMAIN', 'media/images/1708167506925-image_cropper_1708167489638.jpg_medium_image.webp', '2024-02-17 10:58:26'),
('lGeWT0NLhgwDsN6fpwutOTDoZl8rY0KR_IMGMED', 'v6HZBmiNLlRkTdfJ7Tf9CBe8qhnpv9Q0_IMGMAIN', 'media/images/1708597707512-image_cropper_1708597623606.jpg_medium_image.webp', '2024-02-22 10:28:27'),
('lNaEFoepwUAnU7RZJQjsrn4gIO7VQo0K_IMGMED', 'xLtQhULBXeIiYKSFEyCFsSLxGbDUHjDq_IMGMAIN', 'media/images/1704371200355-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:26:40'),
('m3BLxtklPcIG7Y17K1A1n5PMXjOGUeLb_IMGMED', 'SM5XKtDVGDZnzYf7y1naXc7UYV7kYSFN_IMGMAIN', 'media/images/1709292568761-3db31652-0e66-4ed9-a52e-926339ab5cfb5945233535190974306.jpg_medium_image.webp', '2024-03-01 11:29:28'),
('M9Ijn3goydhMjE6rgJRYXJWefYTWP648_IMGMED', 'nfQUUaxetscbKeoow0wslJuZryVxlgUU_IMGMAIN', 'media/images/1706508531900-bdeed265-b995-448c-95e8-2f225fff75954146240658243919946.jpg_medium_image.webp', '2024-01-29 06:08:51'),
('MhTaiVqsqRn2Tn5q3rAYJEaCPmwQXE7Z_IMGMED', 'lpFmkuUFPjYLduIl5N6RhdT2mLaQsEu6_IMGMAIN', 'media/images/1707294760882-image_cropper_927D92EB-0B3D-4276-9CF8-AFE5D175EE8A-89045-00000F33F6BCCB26.jpg_medium_image.webp', '2024-02-07 08:32:41'),
('mki8M4OtjusGZkv9CsbZfai01JSuHWDx_IMGMED', 'Eaiw9Up1CZtfAkJKwLp0VQqHbGUPimyG_IMGMAIN', 'media/images/1709024181889-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg_medium_image.webp', '2024-02-27 08:56:21'),
('MWMyt4QKRvIkNwh03fMle6ShVryorEWJ_IMGMED', '0ieouq4NQsb9Uo9FczIPi1LdBk7gZG84_IMGMAIN', 'media/images/1708600661180-6acc29d4-dcf6-492f-819d-0d89e47c4f1e8305373629186375024.jpg_medium_image.webp', '2024-02-22 11:17:41'),
('n0LKG28A93jsbzNl826JDp564UP19QAG_IMGMED', 'UHAGeUOUxoQEOugs8Ka6aCrkFsxpqFrg_IMGMAIN', 'media/images/1704371241041-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:27:21'),
('nbDs0RX4Q4iFZTfkRjWasuV2yHRwyN9d_IMGMED', 'PoYLevUyOuwHsC7R5zQTcWqS6f5ABZj3_IMGMAIN', 'media/images/1708696891161-6e2c2142-a966-4a18-a1d0-a4675c6bdb3f5907571963297385674.jpg_medium_image.webp', '2024-02-23 14:01:31'),
('NLICT1cXZTEQLzIfefZYLHjUaabEC73n_IMGMED', 'qWY0fWSO9TSMCX9XazRbkOh7M3u5Jyxd_IMGMAIN', 'media/images/1708600506786-37a98459-6399-4f21-86d8-03e0c595e4b41026559217871337746.jpg_medium_image.webp', '2024-02-22 11:15:06'),
('nMOkMYLkpVIxK8q6Ol1ZLmXZXNeB9zS9_IMGMED', 'N6T1eCBR1SfuNFdkZxlwo3lYE5yr8VvJ_IMGMAIN', 'media/images/1708165678452-image_cropper_1708165645837.jpg_medium_image.webp', '2024-02-17 10:27:58'),
('nsjPdeQKt1mowO29QvNbToh7qCtXE0xo_IMGMED', 'EAx2O8KFwOJjpDyPVDHOtXDnK5QEugid_IMGMAIN', 'media/images/1703572346438-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg_medium_image.webp', '2023-12-26 06:32:26'),
('NSuPqsCB0aw2vx0Y7krJPlPYloHoPXU6_IMGMED', 'T7jA72xw4lvViOtw4X4DUUEWRCd5ejBh_IMGMAIN', 'media/images/1708165985862-image_cropper_1708165896357.jpg_medium_image.webp', '2024-02-17 10:33:05'),
('nwkApzEThrDDWqU6onzl1KHcsPBjoCSx_IMGMED', 'y9ziiBFwEavtAH5vMAllYOriebXgUAt6_IMGMAIN', 'media/images/1708165661056-image_cropper_1708165645837.jpg_medium_image.webp', '2024-02-17 10:27:41'),
('OkkNWdYnCDmJyUCgvKfua4pi3yvpqxn5_IMGMED', 'wmkZsuT5rXGRuSF8runuKcmcRArbX5vH_IMGMAIN', 'media/images/1704704420193-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg_medium_image.webp', '2024-01-08 09:00:20'),
('OmLFApOYDQ0EZ7PONgswdapPB6vYkJhp_IMGMED', 'sheuFZa45pHZEswOQetflM9oOeirIkyr_IMGMAIN', 'media/images/1703169664116-1703137750385-shirikisho_profile.png_low_image.webp_medium_image.webp', '2023-12-21 14:41:04'),
('OOoiJEgrXWkeMG3h33FBhDYlIvYrzOjY_IMGMED', 'SpI6okmeOjDXUH1gPrcbExxkfTPPJUNO_IMGMAIN', 'media/images/1708791189978-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_medium_image.webp', '2024-02-24 16:13:10'),
('P1x0nCD3S7ss0vCxSJaTlBWwkecMtuIa_IMGMED', '1dKbizW5ZH5MVUICxiuIZdht6Z00USiR_IMGMAIN', 'media/images/1709127617058-image_cropper_1709127506259.jpg_medium_image.webp', '2024-02-28 13:40:17'),
('p5cX0WrXd3GFRZy9dhaCNDeJFdkRSrub_IMGMED', 'ljQry4miR2IhX6DFuRwzrIPtiUTPSbHo_IMGMAIN', 'media/images/1704371187036-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:26:27'),
('PIkpXdRAGV0JLe5CAq7UdacO77u0VhbP_IMGMED', 'IbmGjSwDmWEsnSxlWEqmMrpBek6NFUaF_IMGMAIN', 'media/images/1708598325507-11dcec13-fa66-4e69-be02-5e5bde552d49613088214524313411.jpg_medium_image.webp', '2024-02-22 10:38:45'),
('PMHthf3yj9kEhDSM9owcXMwNankvoPI7_IMGMED', '71IK8hyHsvzFiA6T1AgQWnDRYCb9hHmT_IMGMAIN', 'media/images/1706953161266-image_cropper_91861E2B-AE07-4B12-B4C0-C378C63A6389-59689-00000CC166AB77B4.jpg_medium_image.webp', '2024-02-03 09:39:21'),
('pTBBE3uWJEZOLXVSZe2lOSuKI4zJq4gu_IMGMED', '4L6dfkcKd7PR7kMa4twUOPbMqIUnhicI_IMGMAIN', 'media/images/1707289939569-image_cropper_221C451A-AF3E-45A6-9DE4-D5F029F513D3-89045-00000F191669DCD4.jpg_medium_image.webp', '2024-02-07 07:12:19'),
('q5A8UbtkhBC01YTHDhpDsyc73ARibodq_IMGMED', 'NGLFH1v99d1f14tIr8h7YGZylbGdDxRX_IMGMAIN', 'media/images/1704704983041-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_medium_image.webp', '2024-01-08 09:09:43'),
('Q5LRYz1qfinnImfybxb3x3rO1RrGZimy_IMGMED', 'C1BDyJr2Aeg0djEmYlGXB01YKQwa5LGM_IMGMAIN', 'media/images/1709296452938-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_medium_image.webp', '2024-03-01 12:34:13'),
('q9zTY4teClu1r7wj9VMVA3uq2U2sSPAq_IMGMED', 'WT8FJ1kFWJR0I2gmMvxsFlLSeoeYoHYC_IMGMAIN', 'media/images/1703141892004-Kazi-Pay-login.png_medium_image.webp', '2023-12-21 06:58:12'),
('QB9F9bASJZxmeINhKBYup1yLiolYuuu7_IMGMED', '92LJMMaHTzmfaOQIQKcCdVGR8UMYe6p9_IMGMAIN', 'media/images/1708169179993-image_cropper_1708169125771.jpg_medium_image.webp', '2024-02-17 11:26:20'),
('qJqMKucltFiUl8ACzbv2hp3guXCZn6dK_IMGMED', 'wbb3ejeGO0QsHLnoNE6YV4XC41dF6haK_IMGMAIN', 'media/images/1709380326052-image_cropper_1709380238464.jpg_medium_image.webp', '2024-03-02 11:52:06'),
('QlMw5NXFZPkKVty1Sf4R75gBg5GRTyFF_IMGMED', 'msDMugw5R11oXmNr80dylfs0kOmLSd40_IMGMAIN', 'media/images/1708682955476-dd778b53-6f1b-44e8-bfb2-b7abeacb3af45286255035694682931.jpg_medium_image.webp', '2024-02-23 10:09:15'),
('qMpA8NzcTkX5RISr3qcfGsKmSVSgNpyl_IMGMED', 'LXwLByMC9UF1LdGx7kBAuD8a9Jgh8D6m_IMGMAIN', '/media/images/1703136747173-shirikisho_profile.png_medium_image.webp', '2023-12-21 05:32:27'),
('Qo0zcEklpaFgnmY7iutYhDLnqJATf9px_IMGMED', 'NJLK5mnonJpE6aQbA4nGMHPAbfDBk1SP_IMGMAIN', 'media/images/1704372341538-image_cropper_1704371612984.jpg_medium_image.webp', '2024-01-04 12:45:41'),
('RBXuuSGuEtHovsvZ7wSTpo4JgifohJaj_IMGMED', '4kR7UvWmsYCjJhAJrHGfcrwzfmwf6Joh_IMGMAIN', 'media/images/1709380314810-image_cropper_1709380284996.jpg_medium_image.webp', '2024-03-02 11:51:54'),
('rG8vwKyXREqBesYR2l2xKDXZfN0CE5XR_IMGMED', 'OgHV7oyE0Hr0kV4rwYAh917p20dpkKXK_IMGMAIN', 'media/images/1708949816806-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_medium_image.webp', '2024-02-26 12:16:56'),
('roTZ1VqTe4oC7hpw9BkJN9wguaXAbgxa_IMGMED', 'xQMNfPtSJtu5gDLFXRPKyIzf37LkCEri_IMGMAIN', 'media/images/1704371366915-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:29:26'),
('Rq1M9fPvmUTKjV7O5ihXZPAHHLx1eqoV_IMGMED', 'VOrYVUNock29rtmtRbmeQWRyfe9AkK6s_IMGMAIN', 'media/images/1709122977436-image_cropper_1709122841668.jpg_medium_image.webp', '2024-02-28 12:22:57'),
('rXgegtQ2FlOc7rlKAaQ09Y7tXRJ51YWW_IMGMED', 'VgwSVNIXFLSlSzRCOy1I30BccD1HIb3c_IMGMAIN', '/media/images/1703087329905-shirikisho_profile.png_medium_image.webp', '2023-12-20 15:48:50'),
('rY9kleJxbPMXt2pFmV3fWX29sc6Jdh98_IMGMED', 'AJW5SHcQUg3koAdieLKSuGIkygd4i6rR_IMGMAIN', 'media/images/1704371433966-image_cropper_1704371407077.jpg_medium_image.webp', '2024-01-04 12:30:34'),
('s01I0NvkpGJxiOsR9vaxpj45b8d92jc8_IMGMED', 'VEvEQ7lZfjxMaF1YsP9GDHzt9jUMlMXp_IMGMAIN', 'media/images/1703170063845-1703137750385-shirikisho_profile.png_low_image.webp_medium_image.webp', '2023-12-21 14:47:43'),
('S53jSMME36dyncLX8Jj4kabmJ6mRVdsI_IMGMED', 'nfnarGjDEIE8A33rdnyWqAp8SiEpHm8x_IMGMAIN', 'media/images/1706903391915-image_cropper_1A8F3A87-EAF6-4B1D-A75D-CAD34014B947-73670-00000C598DFB4BA5.jpg_medium_image.webp', '2024-02-02 19:49:51'),
('SMmOTAJTum65uPELngMgWwZgorHwUXuJ_IMGMED', 'dC3ZXzA5iZhLwQdB1gvsMu0badoA79aD_IMGMAIN', 'media/images/1709124382187-image_cropper_1709124354649.jpg_medium_image.webp', '2024-02-28 12:46:22'),
('sr1YyL6JDOdSfWLv5q7vtlwhTnoDSfUO_IMGMED', 'anhP28h2VkMPvzfAqjmn60PBGYOQzAxj_IMGMAIN', 'media/images/1706904293028-image_picker_DF783970-7453-47FC-89EF-5109ABA9C3CB-73670-00000C5DCDF84419.jpg_medium_image.webp', '2024-02-02 20:04:53'),
('TcnA14OK7PyEFbVSp5zGl9xhroat7di6_IMGMED', '9HWhYS6vDMqAwPvw8jDvQblPvRyIfNKl_IMGMAIN', 'media/images/1708598012181-image_cropper_1708597960372.jpg_medium_image.webp', '2024-02-22 10:33:32'),
('TGPFgzxRFWXvj9QMyG0TcUqOJEAnNeEX_IMGMED', '3og0gCAF3AuP8AxMRf0bi3z2ffneSM0j_IMGMAIN', 'media/images/1703598239052-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg_medium_image.webp', '2023-12-26 13:43:59'),
('tl94h4KedRtkV9PylEyYf7vTGcgfCUlX_IMGMED', 'OqpFw7bVHrl1PJ1WMcDFHTrW03tAp3ER_IMGMAIN', 'media/images/1708929579278-da5ae302-f1ce-4c30-b75c-9fed3abeba9e6303638667650661210.jpg_medium_image.webp', '2024-02-26 06:39:39'),
('U0BzIfS1T9CNVp3EeCeWs8AQ9U0Bhn2o_IMGMED', 'MbHxlDbUt7YhWRM0habuc66tEqsLVOQO_IMGMAIN', 'media/images/1704267539430-image_cropper_1704267498332.jpg_medium_image.webp', '2024-01-03 07:38:59'),
('UFwpZJdwEb6tWvexwEVYdNOGhAf100JY_IMGMED', 'MVAyoGAX1NTFqb15Bhu2voOcZezg8L5d_IMGMAIN', 'media/images/1709027763984-image_cropper_1709027746582.jpg_medium_image.webp', '2024-02-27 09:56:04'),
('UoUhhpNbI4J11MVu2qF871jAaUe2lZ9m_IMGMED', 'rBhWw5M4gixWVCy7CiR7RMOo7LItANXW_IMGMAIN', 'media/images/1705307661667-8b32b114-3a3d-4d71-b3ad-c2ee1a24a3237821973192545816871.jpg_medium_image.webp', '2024-01-15 08:34:21'),
('UwdBPDNqLrSZ9fuirrCmBKC9EjWw9iFb_IMGMED', '9trAwAZ6gjAdigskxQt8Czy4gZ6m0yuT_IMGMAIN', 'media/images/1704371317562-image_cropper_1704371075984.jpg_medium_image.webp', '2024-01-04 12:28:37'),
('Uxn5bNuMsaCOwYDe6lfvC3mZfWMJkOpt_IMGMED', 'N8OJMfhWZcnP3iBSJn3MMJEIQhcysd3R_IMGMAIN', 'media/images/1708166115060-image_cropper_1708165926321.jpg_medium_image.webp', '2024-02-17 10:35:15'),
('VLGZTaU2kjz8lgN0A9FxRgRgccm4KR8v_IMGMED', '5BdRjM6NH7hjG70OMGVxBqgjLIHZWIM5_IMGMAIN', 'media/images/1708165944080-image_cropper_1708165896357.jpg_medium_image.webp', '2024-02-17 10:32:24'),
('VmEzxRGn1eRueaUAwwaocrO9Z6gSDxr6_IMGMED', 'QdYHYe6o9Ep405c6QDQK1eaU7RUk9BUl_IMGMAIN', 'media/images/1706907202765-image_picker_F950D995-B7CC-4130-9AB5-332E4621762E-73670-00000C65425147E6.jpg_medium_image.webp', '2024-02-02 20:53:22'),
('VoxexMn7TzNHjYAhZjGelJk40wYXueuP_IMGMED', 'O4eAkwaQRt7YWd2C9eKsph1DqbrnNcSZ_IMGMAIN', 'media/images/1708683653737-ab219e32-22bb-4615-bf21-92cbfb0858c01392222992875977841.jpg_medium_image.webp', '2024-02-23 10:20:53'),
('vqH77Qcq47jqaeX3YxYbY60UwImzTJMW_IMGMED', '73YbIQprGWnBhpQ2vzjLAL06tjWuuyH5_IMGMAIN', 'media/images/1709128546159-07e7aca0-9fb0-41b0-8cef-3245f8bb14793287835785226539606.jpg_medium_image.webp', '2024-02-28 13:55:46'),
('vu6ACkqs6zZW5mai91483PvkcuqRzYEd_IMGMED', 'PFlRUiVRNV5IOA39gLii1GcQXQ9jwTM1_IMGMAIN', 'media/images/1708597326458-image_cropper_1708597260457.jpg_medium_image.webp', '2024-02-22 10:22:06'),
('VxPYMBzV0wAvGRMSRbnFsA2RrwaZykVM_IMGMED', 'sVXwXIfpsL0thgDJCEeMf3CWrvgSpoor_IMGMAIN', 'media/images/1705559892188-image_cropper_1705559865348.jpg_medium_image.webp', '2024-01-18 06:38:12'),
('W9NtTjMZUCv6DFXjW65RUskNJZuJChzN_IMGMED', 'enqKHKpsCaP4nX2nyjTv6xHFlJPjiiCC_IMGMAIN', 'media/images/1706787840623-image_picker_2959728C-6A61-4D6D-8B2B-C338523C7BF2-11203-00000AF96E4B8FBE.jpg_medium_image.webp', '2024-02-01 11:44:00'),
('wdtnTIgP2J2Wqhr6rZoDdJX9jmtLv9bs_IMGMED', 'HxIaMR9TunvLDbzGh82ys3Jgdidj9eAY_IMGMAIN', 'media/images/1709292573836-4fcfe5ac-174c-400f-bef9-579e101125855947578445664045451.jpg_medium_image.webp', '2024-03-01 11:29:34'),
('WHMoA9b6CsRuKjadqDvAILLtsveOExOn_IMGMED', '9UQwmfIX6ZcBcD380hHNptr2TQ7ZQbF7_IMGMAIN', 'media/images/1704704443546-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg_medium_image.webp', '2024-01-08 09:00:43'),
('WKw9WImet0lWo5e4JH9iTHi0SAiI14Lj_IMGMED', 'gDJS5mOQzEJ750zOJQNkbvOmFXGf4FGk_IMGMAIN', 'media/images/1708599178617-903bb9ad-7cb6-4bd4-a0dd-d831cb358f383501874101656114326.jpg_medium_image.webp', '2024-02-22 10:52:58'),
('WMtYYPx2zQymLHZgFgk8KXcyKYjCsnDp_IMGMED', 'sdcGI8TQwLH2F3f5v4runAzWP33CIFSi_IMGMAIN', 'media/images/1708428464981-84b3bc7b-44fd-46d1-b581-5e6e8aa9a7d3781005483756302703.jpg_medium_image.webp', '2024-02-20 11:27:45'),
('wNVtYtAdbrza0BZFIDqAp2x25sMHUkJg_IMGMED', 'ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', 'media/images/1704790935146-image_cropper_1704790896355.jpg_medium_image.webp', '2024-01-09 09:02:15'),
('WsUjOQw8Q6KI6yH9DgGCEVAVzx3Puo0h_IMGMED', 'zwFZJmXqJ1oT04pRueYmWKC7lgizQj3o_IMGMAIN', 'media/images/1703137750385-shirikisho_profile.png_medium_image.webp', '2023-12-21 05:49:10'),
('X5qdE5yzmXPQY1iqWw3ZmWo1E3xYUj9A_IMGMED', 'irmrP0WjPu68xgCuGa0rm4xH3UrpXtYV_IMGMAIN', 'media/images/1708950405491-image_cropper_1708949745479.jpg_medium_image.webp', '2024-02-26 12:26:45'),
('X8f3QhFI8IHcF0ZaqJRKHEoMyaqCIZCC_IMGMED', 'K0e3A2QRiLfIIqiu31PwQojAWqciW5U7_IMGMAIN', 'media/images/1709024247637-image_cropper_1709024108715.jpg_medium_image.webp', '2024-02-27 08:57:27'),
('XC4CujT7fcfnQMewA3J1tZl8U4voPDa9_IMGMED', '1zHkqxw09L6XPbVqCwnhyEmsxqHc7fmh_IMGMAIN', 'media/images/1708428434653-388e8de9-5234-40aa-8bd9-20522ce547116947850266697007888.jpg_medium_image.webp', '2024-02-20 11:27:14'),
('xCk2cg2M2uiZebmvVYTmirN2627l0w13_IMGMED', 'KD7Qx8PSp2OL3O4gS3G1zdNvPacruBhz_IMGMAIN', 'media/images/1708791056638-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg_medium_image.webp', '2024-02-24 16:10:56'),
('XpP8uWi9Dm4SCLRk8ueLgnRSbJwXbc1B_IMGMED', 'Xhg0wMFeljIQ61IobSK9dBGbk7E3o1Zh_IMGMAIN', 'media/images/1704372233077-image_cropper_1704371612984.jpg_medium_image.webp', '2024-01-04 12:43:53'),
('XTaWEHMA3yt6zSgBydZHfiInzuyB6Zvk_IMGMED', 'xVjhmBPLB1221cvy0VnFiOwPNelbfaDH_IMGMAIN', 'media/images/1709298792269-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_medium_image.webp', '2024-03-01 13:13:12'),
('xUKpwwec8hg1JsBI9DFRXvJipgiC1Jij_IMGMED', 'YW8wuORPzLf1azpIwz7sXKifsoeEX5Lb_IMGMAIN', 'media/images/1708949838319-image_cropper_1708949745479.jpg_medium_image.webp', '2024-02-26 12:17:18'),
('xV9IqunlWuVIqExEh9zOlXbVaSoSZ20H_IMGMED', '2tBvFvLf5UJI7AEZWjIIcbD1mYTYuycP_IMGMAIN', 'media/images/1709299136600-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg_medium_image.webp', '2024-03-01 13:18:56'),
('y4i5eZXROP6Xf495cUpw1rtg9rP3l1BA_IMGMED', 'cMLnpTZbyrK4DHhxMnnWXTIydAlFuMb2_IMGMAIN', 'media/images/1709024174730-image_cropper_1709024108715.jpg_medium_image.webp', '2024-02-27 08:56:14'),
('yiZ4rOMSrJQSLW7YCfp6hjwxDkpVgOTn_IMGMED', 'cXrXqmqtmPZAYCpLISoRwz3JTL8USRBa_IMGMAIN', 'media/images/1708166118314-image_cropper_1708165896357.jpg_medium_image.webp', '2024-02-17 10:35:18'),
('yqxOpmaoZtzwSumQkrYD1ZamWMGLzOFI_IMGMED', 'fdyQ4QSstYO4vmwGdsOUmkik2dnCqW3O_IMGMAIN', 'media/images/1708950202339-image_cropper_1708949745479.jpg_medium_image.webp', '2024-02-26 12:23:22'),
('YRtZpBN1KcoxtgVqVfM26euGhM79YUly_IMGMED', 'f8tgzikFRfjwDkpni2sH8lwsMpW1sSMP_IMGMAIN', 'media/images/1708950176760-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg_medium_image.webp', '2024-02-26 12:22:56'),
('zlkjbARXhTiLncmwHgZznXf0wZoiqrkF_IMGMED', 'ymONNJtNHUBwwyWHaCh7IGEvY8ZiHqLI_IMGMAIN', 'media/images/1708165664765-image_cropper_1708165597596.jpg_medium_image.webp', '2024-02-17 10:27:44'),
('zp7BP3Q4ypNNgDVrBPKdQtEYHAU5PhL3_IMGMED', 'dA4kkJ0IpgiEYWo7yRXdqvcPBnpQOILm_IMGMAIN', 'media/images/1708162426900-52537fef-fba4-424f-8e33-36f204f6e0a96162239675525458905.jpg_medium_image.webp', '2024-02-17 09:33:46'),
('ZxWNCuCpbS0AX3wM8Aok8lXVOwR8Q8OH_IMGMED', 'xLcizghJWZy4czlrZAjBdxyDlUDrFsd5_IMGMAIN', 'media/images/1704371631144-image_cropper_1704371612984.jpg_medium_image.webp', '2024-01-04 12:33:51');

-- --------------------------------------------------------

--
-- Table structure for table `main_images`
--

CREATE TABLE `main_images` (
  `image_id` varchar(225) NOT NULL,
  `image_path_og` text NOT NULL,
  `purpose` varchar(200) NOT NULL,
  `status` varchar(30) NOT NULL DEFAULT 'active',
  `upload_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_images`
--

INSERT INTO `main_images` (`image_id`, `image_path_og`, `purpose`, `status`, `upload_date`) VALUES
('0ieouq4NQsb9Uo9FczIPi1LdBk7gZG84_IMGMAIN', 'media/images/1708600661180-6acc29d4-dcf6-492f-819d-0d89e47c4f1e8305373629186375024.jpg', 'passport', 'active', '2024-02-22 11:17:41'),
('1casOXHAPFmXiXTSqjrkrWqNgVrUD1nc_IMGMAIN', 'media/images/1706770019680-image_picker_135B0F3D-5FD7-484B-BCD9-A7A76011D755-11203-00000A98F596AEC8.jpg', 'passport', 'active', '2024-02-01 06:46:59'),
('1dKbizW5ZH5MVUICxiuIZdht6Z00USiR_IMGMAIN', 'media/images/1709127617058-image_cropper_1709127506259.jpg', 'id', 'active', '2024-02-28 13:40:17'),
('1zHkqxw09L6XPbVqCwnhyEmsxqHc7fmh_IMGMAIN', 'media/images/1708428434653-388e8de9-5234-40aa-8bd9-20522ce547116947850266697007888.jpg', 'passport', 'active', '2024-02-20 11:27:14'),
('2cKyPOtwC9SkaXBd4ChnEVCQsw03schT_IMGMAIN', 'media/images/1708791160218-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg', 'passport', 'active', '2024-02-24 16:12:40'),
('2LeSizzVYtYM2qp06GGrzDNXQ9v4SH5F_IMGMAIN', 'media/images/1704551408543-1703137750385-shirikisho_profile.png', 'test', 'active', '2024-01-06 14:30:08'),
('2tBvFvLf5UJI7AEZWjIIcbD1mYTYuycP_IMGMAIN', 'media/images/1709299136600-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg', 'passport', 'active', '2024-03-01 13:18:56'),
('3D4qc3MdBPvxIIrJz5mnkrR2azCgLCaR_IMGMAIN', 'media/images/1709381158933-c9e3f04b-a6ff-45e4-aa50-7cde732adcfc2348161891209594580.jpg', 'passport', 'active', '2024-03-02 12:05:59'),
('3og0gCAF3AuP8AxMRf0bi3z2ffneSM0j_IMGMAIN', 'media/images/1703598239052-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg', 'passport', 'active', '2023-12-26 13:43:59'),
('4cwEyrjsaRvsia9ioRwNABrzljUiKa04_IMGMAIN', 'media/images/1703571691768-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg', 'test', 'active', '2023-12-26 06:21:31'),
('4kR7UvWmsYCjJhAJrHGfcrwzfmwf6Joh_IMGMAIN', 'media/images/1709380314810-image_cropper_1709380284996.jpg', 'passport', 'active', '2024-03-02 11:51:54'),
('4L6dfkcKd7PR7kMa4twUOPbMqIUnhicI_IMGMAIN', 'media/images/1707289939569-image_cropper_221C451A-AF3E-45A6-9DE4-D5F029F513D3-89045-00000F191669DCD4.jpg', 'id', 'active', '2024-02-07 07:12:19'),
('5BdRjM6NH7hjG70OMGVxBqgjLIHZWIM5_IMGMAIN', 'media/images/1708165944080-image_cropper_1708165896357.jpg', 'id', 'active', '2024-02-17 10:32:24'),
('5d9AHGHKRXrJ56Y09gToCltupr6gK3ov_IMGMAIN', 'media/images/1708165682064-image_cropper_1708165597596.jpg', 'id', 'active', '2024-02-17 10:28:02'),
('71IK8hyHsvzFiA6T1AgQWnDRYCb9hHmT_IMGMAIN', 'media/images/1706953161266-image_cropper_91861E2B-AE07-4B12-B4C0-C378C63A6389-59689-00000CC166AB77B4.jpg', 'passport', 'active', '2024-02-03 09:39:21'),
('72Qq9gLxT1Z6C2YMdiETkzpIUq3GhFTD_IMGMAIN', 'media/images/1709127583166-image_cropper_1709127531514.jpg', 'passport', 'active', '2024-02-28 13:39:43'),
('73YbIQprGWnBhpQ2vzjLAL06tjWuuyH5_IMGMAIN', 'media/images/1709128546159-07e7aca0-9fb0-41b0-8cef-3245f8bb14793287835785226539606.jpg', 'passport', 'active', '2024-02-28 13:55:46'),
('8jqbBfCVimudSbspF7hKjNABOADZlGy4_IMGMAIN', 'media/images/1708439660511-f93d9dd1-79f4-42df-b8d2-aa544322fcd84932086145810993617.jpg', 'passport', 'active', '2024-02-20 14:34:20'),
('92LJMMaHTzmfaOQIQKcCdVGR8UMYe6p9_IMGMAIN', 'media/images/1708169179993-image_cropper_1708169125771.jpg', 'id', 'active', '2024-02-17 11:26:20'),
('9cGUkt208VY0lk4tlIJ5uWOOJusNdou9_IMGMAIN', 'media/images/1708169174938-image_cropper_1708169161753.jpg', 'passport', 'active', '2024-02-17 11:26:14'),
('9HWhYS6vDMqAwPvw8jDvQblPvRyIfNKl_IMGMAIN', 'media/images/1708598012181-image_cropper_1708597960372.jpg', 'id', 'active', '2024-02-22 10:33:32'),
('9Oi90Gwno7fg6IzQFs5fMEjS3BBdjylB_IMGMAIN', 'media/images/1708599182326-image_cropper_1708599131904.jpg', 'id', 'active', '2024-02-22 10:53:02'),
('9trAwAZ6gjAdigskxQt8Czy4gZ6m0yuT_IMGMAIN', 'media/images/1704371317562-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:28:37'),
('9UQwmfIX6ZcBcD380hHNptr2TQ7ZQbF7_IMGMAIN', 'media/images/1704704443546-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg', 'id', 'active', '2024-01-08 09:00:43'),
('9W88sEIfNYMddRLP4E2P16zhSWtJ7nvW_IMGMAIN', 'media/images/1708165983207-image_cropper_1708165926321.jpg', 'passport', 'active', '2024-02-17 10:33:03'),
('AJW5SHcQUg3koAdieLKSuGIkygd4i6rR_IMGMAIN', 'media/images/1704371433966-image_cropper_1704371407077.jpg', 'passport', 'active', '2024-01-04 12:30:34'),
('anhP28h2VkMPvzfAqjmn60PBGYOQzAxj_IMGMAIN', 'media/images/1706904293028-image_picker_DF783970-7453-47FC-89EF-5109ABA9C3CB-73670-00000C5DCDF84419.jpg', 'id', 'active', '2024-02-02 20:04:53'),
('AOCoaWG1q0zrlZhQq2wfkieKpgZ77uU5_IMGMAIN', 'media/images/1703141804770-shirikisho_profile.png', 'test', 'active', '2023-12-21 06:56:44'),
('BZqXMWLk5rASCEjsOMzXSW4truqHnQ0l_IMGMAIN', 'media/images/1708770053594-image_cropper_1708770041336.jpg', 'passport', 'active', '2024-02-24 10:20:53'),
('C1BDyJr2Aeg0djEmYlGXB01YKQwa5LGM_IMGMAIN', 'media/images/1709296452938-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg', 'passport', 'active', '2024-03-01 12:34:13'),
('C5LihaCrrUw60X1PfLxjrNs0XyWiZTM8_IMGMAIN', 'media/images/1709024254685-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg', 'id', 'active', '2024-02-27 08:57:34'),
('CckUVol6IPTLue8WFAwidGZA6AiqPOZq_IMGMAIN', 'media/images/1709023694227-ca4e9240-3ebd-4d6f-a239-f4dffbe3c9f94427277393898852800.jpg', 'id', 'active', '2024-02-27 08:48:14'),
('cH7h1FtMkdzLDCUhWSbUrfayrZwGPXcz_IMGMAIN', 'media/images/1703598246500-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg', 'id', 'active', '2023-12-26 13:44:06'),
('cMLnpTZbyrK4DHhxMnnWXTIydAlFuMb2_IMGMAIN', 'media/images/1709024174730-image_cropper_1709024108715.jpg', 'passport', 'active', '2024-02-27 08:56:14'),
('cpOJh3kQw4XlNAXKywCvs1VuCH4POrVe_IMGMAIN', 'media/images/1709024229095-image_cropper_1709024108715.jpg', 'passport', 'active', '2024-02-27 08:57:09'),
('cwzMCiS8DMu67cDoD4AnhGuMqpbh4Iab_IMGMAIN', 'media/images/1709296471920-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg', 'id', 'active', '2024-03-01 12:34:32'),
('cXrXqmqtmPZAYCpLISoRwz3JTL8USRBa_IMGMAIN', 'media/images/1708166118314-image_cropper_1708165896357.jpg', 'id', 'active', '2024-02-17 10:35:18'),
('d8HQ4vGwtDaL9RYlqgBFUxbAs9MqBsdT_IMGMAIN', 'media/images/1709381167614-image_cropper_1709381089393.jpg', 'id', 'active', '2024-03-02 12:06:07'),
('dA4kkJ0IpgiEYWo7yRXdqvcPBnpQOILm_IMGMAIN', 'media/images/1708162426900-52537fef-fba4-424f-8e33-36f204f6e0a96162239675525458905.jpg', 'passport', 'active', '2024-02-17 09:33:46'),
('dC3ZXzA5iZhLwQdB1gvsMu0badoA79aD_IMGMAIN', 'media/images/1709124382187-image_cropper_1709124354649.jpg', 'passport', 'active', '2024-02-28 12:46:22'),
('DGhwBuvTNn3VMrzY8M1ynM6ERCdwMRxG_IMGMAIN', 'media/images/1703599112053-image_picker_F842B8D3-37E4-41F5-B7D8-14974485BD21-71394-000001B2C39153B0.jpg', 'id', 'active', '2023-12-26 13:58:32'),
('dxrChkAsRHI3bImWcwVuPeBSDoL5pKHt_IMGMAIN', 'media/images/1703572935760-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg', 'test', 'active', '2023-12-26 06:42:15'),
('E32DQNUtfT1kM6wNut0bEaXmGcTADzxL_IMGMAIN', 'media/images/1703137643350-shirikisho_profile.png', 'test', 'active', '2023-12-21 05:47:23'),
('Eaiw9Up1CZtfAkJKwLp0VQqHbGUPimyG_IMGMAIN', 'media/images/1709024181889-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg', 'id', 'active', '2024-02-27 08:56:21'),
('EAx2O8KFwOJjpDyPVDHOtXDnK5QEugid_IMGMAIN', 'media/images/1703572346438-image_cropper_B3037228-2BD7-40F0-9269-2500509B9470-71394-0000010B66FF9BBC.jpg', 'test', 'active', '2023-12-26 06:32:26'),
('enqKHKpsCaP4nX2nyjTv6xHFlJPjiiCC_IMGMAIN', 'media/images/1706787840623-image_picker_2959728C-6A61-4D6D-8B2B-C338523C7BF2-11203-00000AF96E4B8FBE.jpg', 'passport', 'active', '2024-02-01 11:44:00'),
('ER6XhMQaiuQa71Qvard4P7SvU1lx4JXZ_IMGMAIN', 'media/images/1708942426181-2480d735-cc45-4d41-b634-f593d48bf2223826952024470443642.jpg', 'passport', 'active', '2024-02-26 10:13:46'),
('F87EqR6wlhqmiJmV3zCEVMEOb8foEJzO_IMGMAIN', 'media/images/1709299155253-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg', 'id', 'active', '2024-03-01 13:19:15'),
('f8tgzikFRfjwDkpni2sH8lwsMpW1sSMP_IMGMAIN', 'media/images/1708950176760-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg', 'passport', 'active', '2024-02-26 12:22:56'),
('fdyQ4QSstYO4vmwGdsOUmkik2dnCqW3O_IMGMAIN', 'media/images/1708950202339-image_cropper_1708949745479.jpg', 'id', 'active', '2024-02-26 12:23:22'),
('fLnoEpXQ1yCgrtNXaPgMmOyHT6VeUE4G_IMGMAIN', 'media/images/1708929573877-aac791a0-b076-49e9-bbeb-9cce4d08b7477652673047662149921.jpg', 'passport', 'active', '2024-02-26 06:39:34'),
('ftvDrto0lXo4r0CX2laf3iOfx96HD5Oo_IMGMAIN', 'media/images/1703599093114-image_cropper_53DBAB25-7385-43F4-8A3E-100CB54EF29B-71394-000001B2DE9EBEFC.jpg', 'passport', 'active', '2023-12-26 13:58:13'),
('fZapKG8nYMLbZ3liEBCLIM1BJb3xrAlH_IMGMAIN', 'media/images/1708165940233-image_cropper_1708165926321.jpg', 'passport', 'active', '2024-02-17 10:32:20'),
('gDJS5mOQzEJ750zOJQNkbvOmFXGf4FGk_IMGMAIN', 'media/images/1708599178617-903bb9ad-7cb6-4bd4-a0dd-d831cb358f383501874101656114326.jpg', 'passport', 'active', '2024-02-22 10:52:58'),
('Gg6PnWZGlyZLXFysf636eytWwLLhn5iH_IMGMAIN', 'media/images/1708439668787-74715e57-3e26-4f58-943a-aaac1fe533886081319330334936266.jpg', 'id', 'active', '2024-02-20 14:34:28'),
('gO6g5wlY1Ze0BEXY78RgUMFRwcxiRkQM_IMGMAIN', 'media/images/1708167506925-image_cropper_1708167489638.jpg', 'passport', 'active', '2024-02-17 10:58:26'),
('gYCJ6QZc7n59nXSGytScMJfy8qNG7T1S_IMGMAIN', 'media/images/1705492906319-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg', 'passport', 'active', '2024-01-17 12:01:46'),
('gZ1fkN8iUaPk3zctqpfF1fr67CJ8vWYT_IMGMAIN', 'media/images/1708682957797-Screenshot_20211118-104029_WhatsApp.jpg', 'id', 'active', '2024-02-23 10:09:17'),
('H28UszlIwOYpta1YIsoflrM014jrYYsk_IMGMAIN', 'media/images/1708950377462-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg', 'passport', 'active', '2024-02-26 12:26:17'),
('hAAmhPAJwjrgSbMtvIA9ifi8bQia152P_IMGMAIN', 'media/images/1709024234585-82af6097-67a6-4806-8b10-2e81345343da2294041622456282060.jpg', 'id', 'active', '2024-02-27 08:57:14'),
('HHshXRn6QE07TOS5l1uP0f4b0tFI20Bs_IMGMAIN', 'media/images/1708597322162-761b951c-45f4-4b0e-acc2-6f5251806d0a6726789841922416255.jpg', 'passport', 'active', '2024-02-22 10:22:02'),
('hoSF2ofVB5zQMsbGYSVaTrvpGcgXqs1i_IMGMAIN', 'media/images/1709298811255-ae8297b6-1d0e-4799-8662-7a8ffe280e326976263295653326608.jpg', 'id', 'active', '2024-03-01 13:13:31'),
('HxIaMR9TunvLDbzGh82ys3Jgdidj9eAY_IMGMAIN', 'media/images/1709292573836-4fcfe5ac-174c-400f-bef9-579e101125855947578445664045451.jpg', 'id', 'active', '2024-03-01 11:29:33'),
('hYfMJdSH9KNnFEDHk9YWzpQ3RmO932v7_IMGMAIN', 'media/images/1706508536537-b92474fa-d9ab-4c7b-8341-3f331067c80c5380496020008031352.jpg', 'id', 'active', '2024-01-29 06:08:56'),
('I4B9itCTJFuWtY421TrQGHRPB4OlvQWE_IMGMAIN', 'media/images/1708600229754-image_cropper_1708600187321.jpg', 'passport', 'active', '2024-02-22 11:10:29'),
('IbmGjSwDmWEsnSxlWEqmMrpBek6NFUaF_IMGMAIN', 'media/images/1708598325507-11dcec13-fa66-4e69-be02-5e5bde552d49613088214524313411.jpg', 'passport', 'active', '2024-02-22 10:38:45'),
('IpkChZ4p2nGhKCh6qb9ZPnaonYUEypuG_IMGMAIN', 'media/images/1708599911039-image_cropper_1708599854578.jpg', 'id', 'active', '2024-02-22 11:05:11'),
('IQFB8R79FiaTAi1M1FUCKgX9AYPITHY3_IMGMAIN', 'media/images/1708942429589-d8f788a9-003b-4850-a224-8aecf6944de0569911778247695337.jpg', 'id', 'active', '2024-02-26 10:13:49'),
('irmrP0WjPu68xgCuGa0rm4xH3UrpXtYV_IMGMAIN', 'media/images/1708950405491-image_cropper_1708949745479.jpg', 'id', 'active', '2024-02-26 12:26:45'),
('Iv2TMwvH2e0sb5OUSJlnERwNEDIwAncW_IMGMAIN', 'media/images/1704371094638-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:24:54'),
('J276EEgcsUosgc0qTLB9Re2OzBdKH7NM_IMGMAIN', 'media/images/1709027775178-image_cropper_1709027718976.jpg', 'id', 'active', '2024-02-27 09:56:15'),
('jhEkF9LQPfe8nyCr1Rl8av234zXacHFD_IMGMAIN', 'media/images/1708598008177-e879be18-0c63-41c3-8849-5105560c9de82404083425168951621.jpg', 'passport', 'active', '2024-02-22 10:33:28'),
('JncRcmDj3vbdfykJCRCOiMmemBkfcads_IMGMAIN', 'media/images/1705493200079-772c169c-94ff-4488-be3d-c5074ed605cd101155875700054668.jpg', 'passport', 'active', '2024-01-17 12:06:40'),
('JqDboQI4qRMB1Vd7dsWkjKlFiIO5mgvK_IMGMAIN', 'media/images/1708770059750-image_cropper_1708769991553.jpg', 'id', 'active', '2024-02-24 10:20:59'),
('js81Y5w9H5vXuctxaUIi1Tb5cFkzRfbw_IMGMAIN', 'media/images/1704457566708-image_cropper_1704457508237.jpg', 'passport', 'active', '2024-01-05 12:26:06'),
('K0e3A2QRiLfIIqiu31PwQojAWqciW5U7_IMGMAIN', 'media/images/1709024247637-image_cropper_1709024108715.jpg', 'passport', 'active', '2024-02-27 08:57:27'),
('KaMiko841HSFyc5j2sZeXwZYO1TD79Fd_IMGMAIN', 'media/images/1708683661782-a58f4fe1-512a-49ee-9130-ef5e470666e12876383331376744062.jpg', 'id', 'active', '2024-02-23 10:21:01'),
('kc4aaZUAZfmYtRKUw90mfo7oe5gpPFxv_IMGMAIN', 'media/images/1708791172283-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg', 'id', 'active', '2024-02-24 16:12:52'),
('KD7Qx8PSp2OL3O4gS3G1zdNvPacruBhz_IMGMAIN', 'media/images/1708791056638-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg', 'passport', 'active', '2024-02-24 16:10:56'),
('kPEQmZy3vh2ha4F6vFx4vozmSNRO4C69_IMGMAIN', 'media/images/1706777748998-image_cropper_B8A8309E-E4AA-4895-81BF-269E1331AF15-11203-00000AC17B36D369.jpg', 'id', 'active', '2024-02-01 08:55:49'),
('l5o2Gi9ezQme2IxJZhhCJFXKBsQHh2vD_IMGMAIN', 'media/images/1708676634436-image_cropper_1708676579623.jpg', 'id', 'active', '2024-02-23 08:23:54'),
('L8NlmWLsriD8RInPxcrFTrXW8IJNrdWB_IMGMAIN', 'media/images/1709128578591-c0ab9553-6096-4c38-a49c-540b75e47edd7358688787624572202.jpg', 'id', 'active', '2024-02-28 13:56:18'),
('ljQry4miR2IhX6DFuRwzrIPtiUTPSbHo_IMGMAIN', 'media/images/1704371187036-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:26:27'),
('LmpGI3JbpSdeTZfhPz4Ox7xKfvT91t4V_IMGMAIN', 'media/images/1708949889794-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg', 'passport', 'active', '2024-02-26 12:18:09'),
('LnshmNb3sngBhOILJj0ZAbHxbrciVFIb_IMGMAIN', 'media/images/1709023689348-image_cropper_1709023638476.jpg', 'passport', 'active', '2024-02-27 08:48:09'),
('lO8TBSdaHzFS6ZzAzTuDVWSAcitpseNZ_IMGMAIN', 'media/images/1704372737035-image_cropper_1704371612984.jpg', 'passport', 'active', '2024-01-04 12:52:17'),
('louSdjOKEw5r30Z7gAumAHy2c7CtMkb8_IMGMAIN', 'media/images/1704267548766-image_cropper_1704267413444.jpg', 'id', 'active', '2024-01-03 07:39:08'),
('lpFmkuUFPjYLduIl5N6RhdT2mLaQsEu6_IMGMAIN', 'media/images/1707294760882-image_cropper_927D92EB-0B3D-4276-9CF8-AFE5D175EE8A-89045-00000F33F6BCCB26.jpg', 'id', 'active', '2024-02-07 08:32:40'),
('LwTjuRPUFf5CW7pNBIyQGUxdckgYTrro_IMGMAIN', 'media/images/1709122951390-image_cropper_1709122932951.jpg', 'passport', 'active', '2024-02-28 12:22:31'),
('LXwLByMC9UF1LdGx7kBAuD8a9Jgh8D6m_IMGMAIN', '/media/images/1703136747173-shirikisho_profile.png', 'test', 'active', '2023-12-21 05:32:27'),
('lYtGfsj9h3CELJeLS9boJTBpfjWNLHVv_IMGMAIN', 'media/images/1706777744477-image_picker_13D3E1A6-E515-4CF4-A070-8275172CDB77-11203-00000AC1912AE5DC.jpg', 'passport', 'active', '2024-02-01 08:55:44'),
('MbHxlDbUt7YhWRM0habuc66tEqsLVOQO_IMGMAIN', 'media/images/1704267539430-image_cropper_1704267498332.jpg', 'passport', 'active', '2024-01-03 07:38:59'),
('Mpzcek5PlRgFA2Od3rg7wHe6ZD0hsYor_IMGMAIN', 'media/images/1706896326733-image_picker_DCA654F7-67C3-4648-B448-CC0474A54BB1-73670-00000C2F050A85E9.jpg', 'passport', 'active', '2024-02-02 17:52:06'),
('MRWMlmI7Pc7tEQojiTsZYbmb74EbUa6M_IMGMAIN', 'media/images/1703596220329-image_cropper_7DA8DB4C-0395-430F-9C50-4730ED34A630-71394-000001A78D80B3BB.jpg', 'passport', 'active', '2023-12-26 13:10:20'),
('msDMugw5R11oXmNr80dylfs0kOmLSd40_IMGMAIN', 'media/images/1708682955476-dd778b53-6f1b-44e8-bfb2-b7abeacb3af45286255035694682931.jpg', 'passport', 'active', '2024-02-23 10:09:15'),
('mVaov3pNc1uz3hjEhQ0VkmulB10dsveu_IMGMAIN', 'media/images/1708696896027-0860b6ae-1146-4f94-9bd1-0dbc19c699e71146998765741838511.jpg', 'id', 'active', '2024-02-23 14:01:36'),
('MVAyoGAX1NTFqb15Bhu2voOcZezg8L5d_IMGMAIN', 'media/images/1709027763984-image_cropper_1709027746582.jpg', 'passport', 'active', '2024-02-27 09:56:04'),
('N6T1eCBR1SfuNFdkZxlwo3lYE5yr8VvJ_IMGMAIN', 'media/images/1708165678452-image_cropper_1708165645837.jpg', 'passport', 'active', '2024-02-17 10:27:58'),
('N8OJMfhWZcnP3iBSJn3MMJEIQhcysd3R_IMGMAIN', 'media/images/1708166115060-image_cropper_1708165926321.jpg', 'passport', 'active', '2024-02-17 10:35:15'),
('N8URY6nT8MqTlr5fU9cQheeUqKuED4Cg_IMGMAIN', '/media/images/1703091747420-shirikisho_profile.png', 'test', 'active', '2023-12-20 17:02:27'),
('nfnarGjDEIE8A33rdnyWqAp8SiEpHm8x_IMGMAIN', 'media/images/1706903391915-image_cropper_1A8F3A87-EAF6-4B1D-A75D-CAD34014B947-73670-00000C598DFB4BA5.jpg', 'passport', 'active', '2024-02-02 19:49:51'),
('nfQUUaxetscbKeoow0wslJuZryVxlgUU_IMGMAIN', 'media/images/1706508531900-bdeed265-b995-448c-95e8-2f225fff75954146240658243919946.jpg', 'passport', 'active', '2024-01-29 06:08:51'),
('NGLFH1v99d1f14tIr8h7YGZylbGdDxRX_IMGMAIN', 'media/images/1704704983041-image_picker_C6FA436C-647E-4DAF-90A0-2FFEF1276268-20675-00000D1F8CB214E4.jpg', 'id', 'active', '2024-01-08 09:09:43'),
('NJLK5mnonJpE6aQbA4nGMHPAbfDBk1SP_IMGMAIN', 'media/images/1704372341538-image_cropper_1704371612984.jpg', 'passport', 'active', '2024-01-04 12:45:41'),
('nsxeahxebQEPEiagqslx87mLd9RVwvBy_IMGMAIN', 'media/images/1704790939074-image_cropper_1704790761561.jpg', 'id', 'active', '2024-01-09 09:02:19'),
('O4eAkwaQRt7YWd2C9eKsph1DqbrnNcSZ_IMGMAIN', 'media/images/1708683653737-ab219e32-22bb-4615-bf21-92cbfb0858c01392222992875977841.jpg', 'passport', 'active', '2024-02-23 10:20:53'),
('OFdOkoQNyjx5GAqHPjJtLck9KhMtL7vI_IMGMAIN', 'media/images/1704371326297-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:28:46'),
('Og4TFRZzmFZULeju15Xis6V4I0HthDCW_IMGMAIN', 'media/images/1705559889885-1a4ab5c0-9b60-449d-978c-8092d75cc1928832869752204363697.jpg', 'passport', 'active', '2024-01-18 06:38:09'),
('OgHV7oyE0Hr0kV4rwYAh917p20dpkKXK_IMGMAIN', 'media/images/1708949816806-7758e01c-c73b-4359-8aef-ca196ad2fd01797366176079235446.jpg', 'passport', 'active', '2024-02-26 12:16:56'),
('oLhJuFinTuUEFATHJ3QVqzXAj8ek2qAz_IMGMAIN', 'media/images/1709124385995-image_cropper_1709124330864.jpg', 'id', 'active', '2024-02-28 12:46:26'),
('OLlertMyL8N24vW9sWHDefJYpKLeGi1l_IMGMAIN', 'media/images/1706952275750-image_cropper_9B9B9254-E408-4F64-954E-D00621C2E4C9-59689-00000CBC5F9F12AA.jpg', 'passport', 'active', '2024-02-03 09:24:35'),
('OotIhtqLVBKntGWIOA49gjOncF892RLu_IMGMAIN', 'media/images/1704269906620-image_cropper_1704269890639.jpg', 'passport', 'active', '2024-01-03 08:18:26'),
('OqpFw7bVHrl1PJ1WMcDFHTrW03tAp3ER_IMGMAIN', 'media/images/1708929579278-da5ae302-f1ce-4c30-b75c-9fed3abeba9e6303638667650661210.jpg', 'id', 'active', '2024-02-26 06:39:39'),
('oVso28IJawQPVAxuWbE8pbSsmKSYsIER_IMGMAIN', 'media/images/1706896458958-image_picker_B14EF025-8FB7-48E1-8E68-CAA69D57CD6D-73670-00000C2EF34844E3.jpg', 'id', 'active', '2024-02-02 17:54:19'),
('PFd53G3IPjeEKHsp8ofWYQkhCIypYOB8_IMGMAIN', '/media/images/1703087778670-shirikisho_profile.png', 'test', 'active', '2023-12-20 15:56:18'),
('PFlRUiVRNV5IOA39gLii1GcQXQ9jwTM1_IMGMAIN', 'media/images/1708597326458-image_cropper_1708597260457.jpg', 'id', 'active', '2024-02-22 10:22:06'),
('PoYLevUyOuwHsC7R5zQTcWqS6f5ABZj3_IMGMAIN', 'media/images/1708696891161-6e2c2142-a966-4a18-a1d0-a4675c6bdb3f5907571963297385674.jpg', 'passport', 'active', '2024-02-23 14:01:31'),
('QdYHYe6o9Ep405c6QDQK1eaU7RUk9BUl_IMGMAIN', 'media/images/1706907202765-image_picker_F950D995-B7CC-4130-9AB5-332E4621762E-73670-00000C65425147E6.jpg', 'id', 'active', '2024-02-02 20:53:22'),
('QLYeL3xhwyCY39hS66q7BYUGqgmFsSmd_IMGMAIN', 'media/images/1708597703192-image_cropper_1708597687916.jpg', 'passport', 'active', '2024-02-22 10:28:23'),
('QNm4Yxn0S4ZTmsuRrynHtWzjUiMI9gvK_IMGMAIN', 'media/images/1706770043019-image_cropper_F3894ECF-AB65-47FF-9552-18DD4F9E6958-11203-00000A98EBFDBC45.jpg', 'id', 'active', '2024-02-01 06:47:23'),
('qt2y2BFdn7lObqr3ptQ3KjXPKHL3ufIX_IMGMAIN', 'media/images/1706903398072-image_picker_8E89BC9F-75B8-497D-B5F4-2E3B5D626BF2-73670-00000C5967F2974A.jpg', 'id', 'active', '2024-02-02 19:49:58'),
('qWY0fWSO9TSMCX9XazRbkOh7M3u5Jyxd_IMGMAIN', 'media/images/1708600506786-37a98459-6399-4f21-86d8-03e0c595e4b41026559217871337746.jpg', 'passport', 'active', '2024-02-22 11:15:06'),
('qxxDxOt26BiEpj9M4Yvi91nwmONVfFlP_IMGMAIN', 'media/images/1708599906710-image_cropper_1708599891031.jpg', 'passport', 'active', '2024-02-22 11:05:06'),
('rBhWw5M4gixWVCy7CiR7RMOo7LItANXW_IMGMAIN', 'media/images/1705307661667-8b32b114-3a3d-4d71-b3ad-c2ee1a24a3237821973192545816871.jpg', 'passport', 'active', '2024-01-15 08:34:21'),
('RMWPNIEYheXvF95mmeirXS1LaPvE30bN_IMGMAIN', 'media/images/1708599555305-f8fd396d-b905-4135-a2f3-690394eb43cc51732956033614115.jpg', 'passport', 'active', '2024-02-22 10:59:15'),
('RpIcKj4lNHde73LusLmsjBWitc0ZxYRF_IMGMAIN', 'media/images/1707289934255-image_cropper_60833F12-5F55-43F3-AE11-B66CDFF69D98-89045-00000F1932218F1E.jpg', 'passport', 'active', '2024-02-07 07:12:14'),
('RY7fPhkobSQa8NnrafErxHKtkK0aPHY1_IMGMAIN', 'media/images/1706787846138-image_cropper_5C503533-2918-42E1-851F-652EA8F69338-11203-00000AF963919974.jpg', 'id', 'active', '2024-02-01 11:44:06'),
('sdcGI8TQwLH2F3f5v4runAzWP33CIFSi_IMGMAIN', 'media/images/1708428464981-84b3bc7b-44fd-46d1-b581-5e6e8aa9a7d3781005483756302703.jpg', 'id', 'active', '2024-02-20 11:27:45'),
('sEzata7fVZnTDnNfWxqHHwPjcfbnqGwT_IMGMAIN', 'media/images/1708598758419-f188ac4d-50f7-49e5-98c5-568472bb1be58122157743204537228.jpg', 'passport', 'active', '2024-02-22 10:45:58'),
('sheuFZa45pHZEswOQetflM9oOeirIkyr_IMGMAIN', 'media/images/1703169664116-1703137750385-shirikisho_profile.png_low_image.webp', 'test', 'active', '2023-12-21 14:41:04'),
('SM5XKtDVGDZnzYf7y1naXc7UYV7kYSFN_IMGMAIN', 'media/images/1709292568761-3db31652-0e66-4ed9-a52e-926339ab5cfb5945233535190974306.jpg', 'passport', 'active', '2024-03-01 11:29:28'),
('smUrnAHVPf8XBPNjQEsDK8J8VJaF4zzN_IMGMAIN', 'media/images/1708791064129-e8f3c604-74dd-45b3-a0ab-c3987e1fd1465620253711895743095.jpg', 'id', 'active', '2024-02-24 16:11:04'),
('SpI6okmeOjDXUH1gPrcbExxkfTPPJUNO_IMGMAIN', 'media/images/1708791189978-1670fb59-71a5-4821-af2a-f6781e0fcc8b5261856444316480729.jpg', 'passport', 'active', '2024-02-24 16:13:10'),
('sVXwXIfpsL0thgDJCEeMf3CWrvgSpoor_IMGMAIN', 'media/images/1705559892188-image_cropper_1705559865348.jpg', 'id', 'active', '2024-01-18 06:38:12'),
('t6AODinWywrE5MDQEaVoht6EKXcpKzzT_IMGMAIN', 'media/images/1704372240044-image_cropper_1704371612984.jpg', 'passport', 'active', '2024-01-04 12:44:00'),
('T7jA72xw4lvViOtw4X4DUUEWRCd5ejBh_IMGMAIN', 'media/images/1708165985862-image_cropper_1708165896357.jpg', 'id', 'active', '2024-02-17 10:33:05'),
('uaYdA4ruXQpvOTNw4pBhEI670p7EaZ0p_IMGMAIN', 'media/images/1707294754933-image_picker_9E578D49-3741-4B1C-86A3-23624BA31C0E-89045-00000F33FF77BC22.jpg', 'passport', 'active', '2024-02-07 08:32:35'),
('UHAGeUOUxoQEOugs8Ka6aCrkFsxpqFrg_IMGMAIN', 'media/images/1704371241041-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:27:21'),
('UhVDiyAXzGT2FEfh6xYK5scxNw3M5elt_IMGMAIN', 'media/images/1706903779179-image_cropper_78C6FC59-15CC-40EC-B389-8691A98E7BDE-73670-00000C5BBF71DBBE.jpg', 'id', 'active', '2024-02-02 19:56:19'),
('UiLmg6sHrM3Q5fsnKYeeGINuMU1x0yKh_IMGMAIN', 'media/images/1708167510316-image_cropper_1708167461311.jpg', 'id', 'active', '2024-02-17 10:58:30'),
('v6HZBmiNLlRkTdfJ7Tf9CBe8qhnpv9Q0_IMGMAIN', 'media/images/1708597707512-image_cropper_1708597623606.jpg', 'id', 'active', '2024-02-22 10:28:27'),
('VEvEQ7lZfjxMaF1YsP9GDHzt9jUMlMXp_IMGMAIN', 'media/images/1703170063845-1703137750385-shirikisho_profile.png_low_image.webp', 'test', 'active', '2023-12-21 14:47:43'),
('VgwSVNIXFLSlSzRCOy1I30BccD1HIb3c_IMGMAIN', '/media/images/1703087329905-shirikisho_profile.png', 'test', 'active', '2023-12-20 15:48:49'),
('VOrYVUNock29rtmtRbmeQWRyfe9AkK6s_IMGMAIN', 'media/images/1709122977436-image_cropper_1709122841668.jpg', 'id', 'active', '2024-02-28 12:22:57'),
('w4BMRa1v2sZsRYaTEXirVz1XLDMd7Dag_IMGMAIN', 'media/images/1708599559353-image_cropper_1708599525533.jpg', 'id', 'active', '2024-02-22 10:59:19'),
('wbb3ejeGO0QsHLnoNE6YV4XC41dF6haK_IMGMAIN', 'media/images/1709380326052-image_cropper_1709380238464.jpg', 'id', 'active', '2024-03-02 11:52:06'),
('wmkZsuT5rXGRuSF8runuKcmcRArbX5vH_IMGMAIN', 'media/images/1704704420193-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg', 'passport', 'active', '2024-01-08 09:00:20'),
('WT8FJ1kFWJR0I2gmMvxsFlLSeoeYoHYC_IMGMAIN', 'media/images/1703141892004-Kazi-Pay-login.png', 'test', 'active', '2023-12-21 06:58:12'),
('X8L5p24x03Gw2BKn1inUh1UnYYOd78il_IMGMAIN', 'media/images/1706600185954-08984944-98bd-48c6-94b2-790574c177123492253817966153328.jpg', 'passport', 'active', '2024-01-30 07:36:26'),
('XG69X9gbIiMox3Uil1TLgTzar3oT3AYV_IMGMAIN', 'media/images/1708598762607-image_cropper_1708598721878.jpg', 'id', 'active', '2024-02-22 10:46:02'),
('Xhg0wMFeljIQ61IobSK9dBGbk7E3o1Zh_IMGMAIN', 'media/images/1704372233077-image_cropper_1704371612984.jpg', 'passport', 'active', '2024-01-04 12:43:53'),
('XicrnPDVVHmvAmmUUaU8v11ybDNnV7j4_IMGMAIN', 'media/images/1704371104671-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:25:04'),
('xLcizghJWZy4czlrZAjBdxyDlUDrFsd5_IMGMAIN', 'media/images/1704371631144-image_cropper_1704371612984.jpg', 'passport', 'active', '2024-01-04 12:33:51'),
('xLtQhULBXeIiYKSFEyCFsSLxGbDUHjDq_IMGMAIN', 'media/images/1704371200355-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:26:40'),
('xQMNfPtSJtu5gDLFXRPKyIzf37LkCEri_IMGMAIN', 'media/images/1704371366915-image_cropper_1704371075984.jpg', 'passport', 'active', '2024-01-04 12:29:26'),
('xVjhmBPLB1221cvy0VnFiOwPNelbfaDH_IMGMAIN', 'media/images/1709298792269-51172b64-060c-46a5-84f8-08ee25a4f95b1310709955414966155.jpg', 'passport', 'active', '2024-03-01 13:13:12'),
('Y21jD1LD3V4ltwOuuwq0jNDr1jr8PhhS_IMGMAIN', 'media/images/1708949900237-image_cropper_1708949745479.jpg', 'id', 'active', '2024-02-26 12:18:20'),
('y9ziiBFwEavtAH5vMAllYOriebXgUAt6_IMGMAIN', 'media/images/1708165661056-image_cropper_1708165645837.jpg', 'passport', 'active', '2024-02-17 10:27:41'),
('ye50JjYzUTLoP7glLJo8DAMTgsLSKpam_IMGMAIN', 'media/images/1704790935146-image_cropper_1704790896355.jpg', 'passport', 'active', '2024-01-09 09:02:15'),
('yEefnuZnMpvOQOaS1UpRkUYuVc1u2HMv_IMGMAIN', 'media/images/1703596233440-image_cropper_927F99FF-C446-4FB1-8163-C8A9D14BDC1D-71394-000001A77036D0E3.jpg', 'id', 'active', '2023-12-26 13:10:33'),
('yEYiKb9i2eBRPao8fyyTJDL3DfznroVp_IMGMAIN', 'media/images/1708676630470-4560083d-86a0-4ea7-8bb5-9a43c3797eb85179977862731130094.jpg', 'passport', 'active', '2024-02-23 08:23:50'),
('YmD36JkpZD9CXYTxl144EcLTgCI3WTui_IMGMAIN', 'media/images/1704371486092-image_cropper_1704371407077.jpg', 'passport', 'active', '2024-01-04 12:31:26'),
('ymONNJtNHUBwwyWHaCh7IGEvY8ZiHqLI_IMGMAIN', 'media/images/1708165664765-image_cropper_1708165597596.jpg', 'id', 'active', '2024-02-17 10:27:44'),
('Yo5oy2XpLrtB2ZeS3KvyiH4pijEA2jzk_IMGMAIN', 'media/images/1704704928613-image_cropper_AC35CE84-CB72-46E0-82E5-513190F0018C-20675-00000D1FC7D87BF8.jpg', 'passport', 'active', '2024-01-08 09:08:48'),
('yvaZ2ZyeDSFE3YB4HTDvTIZx2iQiKPQ6_IMGMAIN', 'media/images/1706952338890-image_picker_F2F63D34-1D18-4487-813F-DF50BDFC47E5-59689-00000CBC3F4C1A26.jpg', 'id', 'active', '2024-02-03 09:25:38'),
('YW8wuORPzLf1azpIwz7sXKifsoeEX5Lb_IMGMAIN', 'media/images/1708949838319-image_cropper_1708949745479.jpg', 'id', 'active', '2024-02-26 12:17:18'),
('ZJvZ6ZDZHNkOV2b4oRuPc9m4LrcOkNm7_IMGMAIN', 'media/images/1708598329315-image_cropper_1708598278780.jpg', 'id', 'active', '2024-02-22 10:38:49'),
('zwFZJmXqJ1oT04pRueYmWKC7lgizQj3o_IMGMAIN', 'media/images/1703137750385-shirikisho_profile.png', 'test', 'active', '2023-12-21 05:49:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `images_qh`
--
ALTER TABLE `images_qh`
  ADD PRIMARY KEY (`image_id_qh`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `images_ql`
--
ALTER TABLE `images_ql`
  ADD PRIMARY KEY (`image_id_ql`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `images_qm`
--
ALTER TABLE `images_qm`
  ADD PRIMARY KEY (`image_id_qm`),
  ADD KEY `image_id` (`image_id`);

--
-- Indexes for table `main_images`
--
ALTER TABLE `main_images`
  ADD PRIMARY KEY (`image_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `images_qh`
--
ALTER TABLE `images_qh`
  ADD CONSTRAINT `images_qh_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `main_images` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images_ql`
--
ALTER TABLE `images_ql`
  ADD CONSTRAINT `images_ql_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `main_images` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `images_qm`
--
ALTER TABLE `images_qm`
  ADD CONSTRAINT `images_qm_ibfk_1` FOREIGN KEY (`image_id`) REFERENCES `main_images` (`image_id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `normal_user_auth`
--
CREATE DATABASE IF NOT EXISTS `normal_user_auth` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `normal_user_auth`;

-- --------------------------------------------------------

--
-- Table structure for table `chamas`
--

CREATE TABLE `chamas` (
  `chama_id` varchar(225) CHARACTER SET latin1 NOT NULL,
  `jina` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wilaya` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mkoa` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `simu` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'active',
  `chama_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chamas`
--

INSERT INTO `chamas` (`chama_id`, `jina`, `wilaya`, `mkoa`, `simu`, `email`, `status`, `chama_date`) VALUES
('5gCfdtdtg73635NGSud', 'Mapimamata', 'Temeke', 'Dar es salaam', '255713497596', 'mapimata@shirikisho.co.tz', 'active', '2024-02-03 05:55:49'),
('gsfdtdtg72635NVSud', 'Uwapite', 'Temeke', 'Dar es salaam', '255713497596', 'uwapite@shirikisho.co.tz', 'active', '2024-02-03 05:55:49'),
('gsfdtdtg73535HGSud', 'Chawapila', 'Ilala', 'Dar es salaam', '255622958539', 'chawapila@shirikisho.org', 'active', '2024-02-03 05:55:49'),
('gsfdtdtg73635NGSud', 'Umabwira', 'Ilala', 'Dar es salaam', '255656644211', 'umabwira@shirikisho.org', 'active', '2024-02-03 05:55:49'),
('gsfdvdtg73635NGSud', 'Chabbowiki', 'Kinondoni', 'Dar es salaam', '255713497596', 'Chabbowiki@shirikisho.co.tz', 'active', '2024-02-03 05:55:49'),
('gXfdtdtg73635NGSud', 'Chamapitawu', 'Ubungo', 'Dar es salaam', '255712902927', 'chamapitawu@shirikisho.co.tz', 'active', '2024-02-03 05:55:49');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `country_id` varchar(225) NOT NULL,
  `country_name` varchar(200) NOT NULL,
  `country_code` varchar(4) NOT NULL,
  `country_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`country_id`, `country_name`, `country_code`, `country_date`) VALUES
('t5lwVbe4JcGQ_CONTRY', 'Tanzania', 'TZ', '2024-01-05 17:48:06');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `district_id` varchar(225) NOT NULL,
  `district_name` varchar(200) NOT NULL,
  `district_code` varchar(10) NOT NULL,
  `region_id` varchar(225) NOT NULL,
  `district_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`district_id`, `district_name`, `district_code`, `region_id`, `district_date`) VALUES
('2T6gNRUDnCBH_DIST', 'Ubungo', '04', 'PpMOz8VqPrBV_REGIN', '2024-01-06 06:42:35'),
('8gMbB6pTMwWZ_DIST', 'Kisarawe', '01', 'eUrMJpQfE86D_REGIN', '2024-01-06 06:40:57'),
('8IgC20Bwl6Br_DIST', 'Ilala', '01', 'PpMOz8VqPrBV_REGIN', '2024-01-05 18:23:45'),
('STk6EoXItI5G_DIST', 'Kigamboni', '05', 'PpMOz8VqPrBV_REGIN', '2024-01-06 06:42:59'),
('V3PSWEr8Zn5M_DIST', 'Kinondoni', '02', 'PpMOz8VqPrBV_REGIN', '2024-01-06 06:41:43'),
('yNKbOqosTVsm_DIST', 'Temeke', '03', 'PpMOz8VqPrBV_REGIN', '2024-01-06 06:42:03');

-- --------------------------------------------------------

--
-- Table structure for table `drivers`
--

CREATE TABLE `drivers` (
  `driver_id` varchar(225) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `mname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `email` varchar(200) NOT NULL DEFAULT 'no@example.com',
  `phone` varchar(20) NOT NULL,
  `password` varchar(300) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(20) NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `residence` varchar(100) NOT NULL,
  `park_area` varchar(225) NOT NULL,
  `vehicle_number` varchar(20) NOT NULL,
  `licence_number` varchar(50) NOT NULL,
  `tin_number` varchar(20) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_number` varchar(50) NOT NULL,
  `id_picture` varchar(200) NOT NULL,
  `passport` varchar(200) NOT NULL,
  `insurance` varchar(30) NOT NULL DEFAULT 'no',
  `chama` varchar(225) NOT NULL DEFAULT 'gsfdtdtg73635NGSud',
  `kin_name` varchar(200) NOT NULL DEFAULT 'notset',
  `kin_phone` varchar(20) NOT NULL DEFAULT 'notset',
  `status` varchar(20) NOT NULL DEFAULT 'created',
  `driver_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `drivers`
--

INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('07Y7lp7wr30y_DRVER', 'Rajabu', 'Selemani', 'Kigoda', 'no@example.com', '255715484010', '$2b$10$K30TmaXB4pSV7tne1l61hOVJBeeCeW/j/OGlZTCLFXEpiQgeThtcm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'WXlZq1JIxwui_PARK', 'MC866DDY', '4006880133', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 10:53:35'),
('0Ff5CydsHMLN_DRVER', 'Yunus', 'Mustafa', 'Mustafa', 'no@example.com', '255694544779', '$2b$10$HxtPtSK.3NyiI0N/qS9.xuB46H55oHOoYRwEOe1Eq7uVwgJ65hUwa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', '02suTLI5aVrY_PARK', 'MC461DMG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:05:25'),
('0iIE3Ylu11fM_DRVER', 'Shabani', 'Hassan', 'Hassan', 'no@example.com', '255742553333', '$2b$10$eEB/9TgqIX9VOyjS2iYbgOeDE/X0W/UcH3a29auIYCyc.at2gzPre', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', '0kyMILnpGwWP_PARK', 'MC805DEG', '4000368486', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 09:55:08'),
('0JN0kdV84F0k_DRVER', 'Baharia', 'Mbaga', 'Mbaga', 'no@example.com', '255744903043', '$2b$10$Y8HKhjXVQVqFfd0X3z1/l.k/2CzxhJ.RVtC/UH111GsxtOF1r/oji', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC554DGV', '4000662825', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:54:45'),
('0KvpH09Zzl3L_DRVER', 'Winston', 'Alphonce', 'Alphonce', 'no@example.com', '255787152440', '$2b$10$fox/vP2qXaEo9y9nA6fjNugpP7m/cMXVmZkYA1VTCVkCWCfrHA.hC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'UL09soxnhaZU_PARK', 'MC562DRG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:09:19'),
('0q9xf1pPARL9_DRVER', 'Kasim', 'Deodart', 'Deodart', 'no@example.com', '255687420362', '$2b$10$h0g6xLVzYKP0rFe1ccxRzekNVg3wfR4NGyEzsla1sLdsVC4mIlKH.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'cw5bJODebF54_PARK', 'MC299DVB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:52:53'),
('0TW7J7iu567c_DRVER', 'Swedi', 'Said', 'Said', 'no@example.com', '255715660960', '$2b$10$EJLC24pQLuPz6Eh3a8icuO1xsI.yNSU/stt.Yn85Tk2cHtaw1hhw6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'dPkWDNHoiMxc_PARK', 'MC862DLB', '400047144', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 03:45:41'),
('0vBQECk9rzyn_DRVER', 'Geoffrey', 'Samson', 'Kawago', 'no@example.com', '255785928104', '$2b$10$848Y64QLG0OuzmuJ0X6yDeo4wLKRKj373uq7lufglK4Ial3ijQ0rq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISARAWE', 'SRsKwzEYK9Eg_PARK', 'MC356CZF', '4001732259', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 10:50:32'),
('0wIntbYaUX1N_DRVER', 'Yusuph', 'Ally', 'Ally', 'no@example.com', '255717183018', '$2b$10$rW1EneUxSlnPCWLLiXk7Yu8z5xrXjgcXBxQ94zw4nNGrPcbGbVUm2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKURUMLA', '2dTgMy11XIFX_PARK', 'MC720BPS', '4000216311', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:22:15'),
('0yAavaHwCBRu_DRVER', 'Masoud', 'Ibrahim', 'Ibrahim', 'no@example.com', '255719675613', '$2b$10$Q9NbEyY112VLOd6GrXnSLeNSI9euECL5tQhvxnrR4o6r6WPbjHH3a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', '2dTgMy11XIFX_PARK', 'MC905DJU', '400211512', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:21:50'),
('12ANvybSJE4W_DRVER', 'Daudi', 'Omary', 'Omary', 'no@example.com', '255688131389', '$2b$10$BwtbssF9v3tdyHjq0Stqge1kiKisbhNggNTvs.vrK6Olhoio/g1Zy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'j01Cm7TVXfQG_PARK', 'MC759DQA', '4006125527', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:16:38'),
('13RqLsden2an_DRVER', 'Ally', 'Said', 'Said', 'no@example.com', '255783757859', '$2b$10$EltJlLUaF33/yh8jbobId.xBVTnLerW5PXIcvdiHIWmdJNNpzFp12', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KEKO', 'nMEqLXzEO9wJ_PARK', 'MC977CAA', '4006979465', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:39:38'),
('14VcY4ccR0JA_DRVER', 'Cosmas', 'Steven', 'Steven', 'no@example.com', '255768912004', '$2b$10$cEZVqHQ8nohj4oJJbyLQ.uyE/N0OVeeGDnvBLHAWXG8yWkRKGhC0e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', '5XdJkCrH2sCP_PARK', 'MC518DQA', '4002569346', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:47:29'),
('17A4Fn98V2zC_DRVER', 'Bigi', 'Hamisi', 'Hamisi', 'no@example.com', '255785463333', '$2b$10$GIhJp9A71sQbgcSTrUPbp.1IfKeqj8.T7W4AXJQ9pjcQIjsn2uV3u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'dPkWDNHoiMxc_PARK', 'MC594CDF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'active', '2023-10-17 11:22:57'),
('1Bd0oPHHQKxU_DRVER', 'Blham', 'Mmanga', 'Mmanga', 'no@example.com', '255763286286', '$2b$10$EThznnQnDbB0hnp2N6jtuOuKq1pYmjBTu8bR8wURnEUNox1hQl5eK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'dPkWDNHoiMxc_PARK', 'MC164DHQ', '4000405814', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 05:08:47'),
('1BZfTflSUtAM_DRVER', 'Ally', 'Mzilai', 'Mzilai', 'no@example.com', '255785114265', '$2b$10$vUD9cwhm12BMKPFV.3dBDuzhwTHzLuzYS84P3HlhDcSJv30/YZtjG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'QR20w3XwPn7e_PARK', 'MC622DUD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 06:54:22'),
('1cnwjKENjtsF_DRVER', 'Joseph', 'Samweli', 'Samweli', 'no@example.com', '255628046505', '$2b$10$986qZqRrh3v8N5dzwa5TEeXzvcrPbVU.kfaVvL/veQd67tg1mJwYa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '31KR62AnklbN_PARK', 'MC285DVL', '4004702077', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:57:09'),
('1dpZsPb9pR7C_DRVER', 'Richard', 'Mrisho', 'Mrisho', 'no@example.com', '255693075637', '$2b$10$IAmjmXlShs6Rxx20KGzdL.5qIvXjd8MPhZz6jthHIrUKGInm5XtUG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC869DKF', '4006926167', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:11:40'),
('1erSHuY2zFWR_DRVER', 'Gwandumi', 'Jeremia', 'Jeremia', 'no@example.com', '255656906729', '$2b$10$QTl2ekFq/UXnEkxwZHhXD.I0giMPv1WjZ6SjHGZ54DRmN.NuPVAPe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', '70rWw5tOi1Q5_PARK', 'MC945DFS', '4004947522', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 11:12:13'),
('1h9gT46co6Tc_DRVER', 'Nyaseba', 'Jumanne', 'Jumanne', 'no@example.com', '255786094382', '$2b$10$6K1YggonflraWrJdMO7OPugl6Mn1gdwG8Ji2J2Dl3NKeq6RAB57aG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'g1lOlgSAOdlU_PARK', 'MC366DEC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 07:07:07'),
('1HLsNdz0boQG_DRVER', 'Hamis', 'Haji', 'Haji', 'no@example.com', '255655750522', '$2b$10$PpZOBETQDE7JkjAWc8RUT.P8uPD0SaypH8qTq.Wnq6/TtYEqrJTRC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', '02suTLI5aVrY_PARK', 'MC631CXP', '4000229346', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:35:40'),
('1QPYkF9DWFGK_DRVER', 'Yacobo', 'William', 'William', 'no@example.com', '255752371912', '$2b$10$1IgD0Rz0JGgzXc/kSkaCU.etoetCpX.MN5nZgf8NYcB0EwZaXGOZK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', '5XdJkCrH2sCP_PARK', 'MC690DYS', '4002153042', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:22:28'),
('1t03TCjWwftc_DRVER', 'Ibrahim', 'Azizi', 'Azizi', 'no@example.com', '255628208403', '$2b$10$uujEaQdCTjp6CD.mV3juaOTvRemLSV8OjKQsSamtL/FyixrTXhH1C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'yMLw9kHalHtP_PARK', 'MC959DHE', '4005402770', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:16:38'),
('1wdiwfMA4XZu_DRVER', 'Adhuman', 'Said', 'Mbega', 'no@example.com', '255689789099', '$2b$10$0fm2x3IvjdyLWa2wlWlGVeGUVZ.Zdfb8VpVDDt6nb/9dmy1YZX5vu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'j01Cm7TVXfQG_PARK', 'MC141DLC', '4002139352', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 08:40:37'),
('1yiCRPhlLAii_DRVER', 'Mohamad', 'Mohamed', 'Mohamed', 'no@example.com', '255754297403', '$2b$10$OvEuAYG2L4nXWU0Ydp4WXOxujiaStW.hj97xYGx801rXBNk9r70KC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBADA', 'A6bwD22v5ld9_PARK', 'MC596DTP', '4006894669', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:21:31'),
('1zeGewYPCjw5_DRVER', 'Sauli', 'Jonas', 'Kaaya', 'no@example.com', '255784753462', '$2b$10$xHaHCID8qJbQDl6vRCmv7.orj0oS6ppNKKlfyuj619s5RRVy9RCk6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'WXlZq1JIxwui_PARK', 'MC394DBN', '4001476261', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:45:10'),
('22DX93gGQohl_DRVER', 'Davison', 'Paschal', 'Paschal', 'no@example.com', '255625703063', '$2b$10$GvF0aSSS46g9OIOD7sgmqecyG9V/4oV/BytsHZLzJKIb4tXtRfktm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'WXlZq1JIxwui_PARK', 'MC479DXE', '4005115197', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 08:17:44'),
('26bs2EkcT3qn_DRVER', 'Jovan', 'Joseph', 'Joseph', 'no@example.com', '255785694578', '$2b$10$K0qdGw5hcR2KspUDLVy6xOHOIwJWfuRcx.e0b1M7CNGbWMd716/m.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'UL09soxnhaZU_PARK', 'MC963CKF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:01:45'),
('26Ho8aLlEQs6_DRVER', 'Elick', 'Anakreth', 'Anakreth', 'no@example.com', '255786268649', '$2b$10$CU1JuyYO.LkiLslEpDObG.rW0pBEXXU.InXX4GC8VseFl5BgEj75e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'cw5bJODebF54_PARK', 'MC697DEV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:30:41'),
('2cApIftwn7Kk_DRVER', 'Sotti', 'Thomas', 'Thomas', 'no@example.com', '255657575481', '$2b$10$Z1Rtz.EXa0cs5PGrEKN2JuvqyqbK0NeePozIpvNhxS4F9cBS1D2dC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', '5XdJkCrH2sCP_PARK', 'MC921DJW', '4003660159', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:04:57'),
('2eoNhm6qUsNV_DRVER', 'Ally', 'Maulidi', 'Maulidi', 'no@example.com', '255787919206', '$2b$10$hCY9QwINgTZ4sBE37ldVg.MRvMS/S.vUCUUS0p3tepfcQMAI3STAu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', '02suTLI5aVrY_PARK', 'MC777DHG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 08:45:40'),
('2FAk8bRXAa2v_DRVER', 'Choba', 'John', 'choba', 'no@example.com', '255764545079', '$2b$10$5CC6AvmB5mlr9mE606ptCeCfXZrUudYXwxlECvFyO5jpTfQdrb4hm', '1977-04-05', 'Mwanamume', 'Nimeolewa/Nimeoa', 'mbezi mtogani', 'dPkWDNHoiMxc_PARK', 'T 123 ACB', '4000254358421', 'notset', 'NIDA', '15629838738383', 'hYfMJdSH9KNnFEDHk9YWzpQ3RmO932v7_IMGMAIN', 'nfQUUaxetscbKeoow0wslJuZryVxlgUU_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-29 06:09:15'),
('2fOoM2NAlcbs_DRVER', 'Ally', 'Nguzo', 'Nguzo', 'no@example.com', '255715200834', '$2b$10$GgfOspUKi2J3Urorp28ps.HXkQgLnf19269P9Ho8TNgLNmzywEOUe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'doTbqRpQ6exA_PARK', 'MC923CST', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:54:51'),
('2HNVorKdFNn4_DRVER', 'Hamisi', 'Jumanne', 'Jumanne', 'no@example.com', '255683289262', '$2b$10$1IfLitS9Lavv3e.BElIlIOJAFXfhtT/sOZQUC3DHMiuyhCp2r/ybu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', '0WL6I7LTF3eJ_PARK', 'MC912DVK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 12:43:28'),
('2JQg2owYEzPX_DRVER', 'Feisali', 'Juma', 'Juma', 'no@example.com', '255712364575', '$2b$10$IzMmHW00D53YTqCVVFr3B.kBvZAspv1WGN7TR0ZgKdT/fa/gr89Du', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIANZINI', 'bncNWzVh24hB_PARK', 'MC578CEQ', '4004912320', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:29:05'),
('2oE7czPStY28_DRVER', 'Hemedi', 'Saidi', 'Saidi', 'no@example.com', '255684464141', '$2b$10$DT2j572pKweUpmQ5Ebunre88.w1Wc9JEvp0cKxphKK43ECWE/ZPgm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '02suTLI5aVrY_PARK', 'MC298DMS', '4005580619', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 07:44:22'),
('2pW8gu1gogcl_DRVER', 'Hafidhi', 'Shaibu', 'Najim', 'no@example.com', '255689512881', '$2b$10$jZFVofauYnxAr0/ZX90JGO4p1bkxiOCsYXvVLuOCsQFZESH0RvLta', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'UL09soxnhaZU_PARK', 'MC137EAY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:21:26'),
('2vphMMLTN6li_DRVER', 'Omari', 'Said', 'Said', 'no@example.com', '255715662534', '$2b$10$0dEHESD3lAWtD9XQe7qHiODlrMIs5yS8sVpFs8JjugB93OgFJvMui', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', '02suTLI5aVrY_PARK', 'MC914DVG', '4006582056', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 04:57:52'),
('2XNPqoN67mzP_DRVER', 'Azizi', 'Said', 'Said', 'no@example.com', '255693083539', '$2b$10$VLB1juk0hl1mGSrmLwDh1uFTCuuzpG0YeyIUj.YzsyQkO.z6hU02K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', '02suTLI5aVrY_PARK', 'MC603DQE', '4005688505', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:00:54'),
('317qAXoYbB3s_DRVER', 'Harudo', 'Mtipula', 'Mtipula', 'no@example.com', '255757486069', '$2b$10$ceOy4hKu05eilfIbOY.N6Oe1NDEaMZxKOyRhZgcKjomVbrROkjkBO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'dPkWDNHoiMxc_PARK', 'MC898CTX', '4006977554', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 05:10:55'),
('34rKUypMCp1b_DRVER', 'Issa', 'Omar', 'Omar', 'no@example.com', '255699657523', '$2b$10$LxeLQ0pPaA6Qv49.k0D2leRLmLn5/6Hec8.Sx0c8V4FGWIZ8fo2fy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'bncNWzVh24hB_PARK', 'MC814EBC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:00:12'),
('3BOYNS5unelh_DRVER', 'Ramadhani', 'Mohamed', 'Mohamed', 'no@example.com', '255714569176', '$2b$10$vLqE4YutFJPTc3MPVS90nO68mFXWre03uNILrkuhPnaNmDij.CVl6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'UL09soxnhaZU_PARK', 'MC377DQF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:35:56'),
('3CwkZatyVWhd_DRVER', 'Kaluu', 'Kasim', 'Kasim', 'no@example.com', '255787979785', '$2b$10$SMJbawyLan73qD2if30Qgeg38mqN2umfuO33liJUgGDunAsbfTE.C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'WXlZq1JIxwui_PARK', 'MC481EAK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:09:13'),
('3FCUkv0lq3e7_DRVER', 'Jumaa', 'Abas', 'Abas', 'no@example.com', '255689791171', '$2b$10$FYUORo09P/J28HnB4TjIO.Nv3afP8fxkvFivnYACGjzQGTOA3V2wK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANG\'OMBE', 'TbkAOqQjgkWf_PARK', 'MC753DHY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:10:17'),
('3fiPwroxtQrK_DRVER', 'Aloyce', 'Sebastian', 'Sebastian', 'no@example.com', '255652356405', '$2b$10$V0J9g4u5JH28HVQRa.JMne10VZzT.Kff7UjvMQlb2qLNyo/vwDwDy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANANYAMALA', '2dTgMy11XIFX_PARK', 'MC411DSV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:16:00'),
('3GGxvVot0xOf_DRVER', 'Ramadhan', 'Hamadi', 'Hamadi', 'no@example.com', '255716800084', '$2b$10$nINNu/5pVTHGVBsAO4F8EOBxUr.hFdf8kVKXGP0egxqpXL8hqsH6m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'TbkAOqQjgkWf_PARK', 'MC976CRY', '4006335982', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:56:04'),
('3h7AE9lKzWET_DRVER', 'Samuel', 'Gidion', 'Gidion', 'no@example.com', '255656780000', '$2b$10$f1cVkORJOod1l4jwzycNZu102y167D.PHdsrzowmZvO1g4Jvfns12', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '31KR62AnklbN_PARK', 'MC179DYU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 08:48:23'),
('3hZbPCzHYpu1_DRVER', 'Paul', 'Joseph', 'Joseph', 'no@example.com', '255675796983', '$2b$10$JESBQMWha4aRQ4YRSiq4iOtxZ9Mh9JmNpAtziGzBxn/LCwBQHXh0G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '5XdJkCrH2sCP_PARK', 'MC193DUE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:03:30'),
('3IEGTegVsHxs_DRVER', 'Chipula', 'Ahmadi', 'Ahmadi', 'no@example.com', '255712376440', '$2b$10$frhFVPeraPUaYEKAfHtA1OwXsVfwSjP.ixnP0HpFTgREecalJ1/LK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '2dTgMy11XIFX_PARK', 'MC831BZZ', '4002586703', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 07:46:51'),
('3O7IEe5kC17e_DRVER', 'Mathias', 'Makala', 'Makala', 'no@example.com', '255784204523', '$2b$10$aZB9bhqltTyfGk2TrL14Te4736mGqsuWB/BOOS/Xavs6z.LFPoBd6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUYUNI', 'dPkWDNHoiMxc_PARK', 'MC778DTC', '4001030714', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 05:51:44'),
('3oDTlhet4xB1_DRVER', 'Evalist', 'Joseph', 'Assenga', 'no@example.com', '255679666758', '$2b$10$VgnpAw1Mo105mP1qlh9DsOhZTXl/5f2OE8.anilmKqbtg.77HQByC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIANZINI', 'j01Cm7TVXfQG_PARK', 'MC950DZH', '4002653677', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 08:32:47'),
('3plz9efDtvXu_DRVER', 'Cosmas', 'Patrick', 'Minja', 'no@example.com', '255789982288', '$2b$10$Sp/XEIu/yhaIs73.Io2qcObirO7230VJneZJ7oiebYmoLtfRgUU96', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'j01Cm7TVXfQG_PARK', 'MC292DYL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-14 08:39:59'),
('3q5lF1NkjQlK_DRVER', 'Proches', 'John', 'Mushi', 'no@example.com', '255713421702', '$2b$10$OA8TEueMR2sNv9C9xwtj5elIxrHsBqZjc61q7SaPOINU.LipsIz.O', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', 'lHdBlR4qB2Zd_PARK', 'MC413BZJ', '4000128194', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:50:57'),
('3VMyKWMr7a3H_DRVER', 'Abdullah', 'Zubery', 'Zubery', 'no@example.com', '255689094655', '$2b$10$yPNVlEtVqFb4WbkDFP0jsuUxCMdbMI0SVdmn96E58pdUwKuu5dBsW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'nMEqLXzEO9wJ_PARK', 'MC704CZG', '4006876113', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:08:03'),
('3XLv557ksZ9y_DRVER', 'Juma', 'Athuman', 'Athuman', 'no@example.com', '255763888108', '$2b$10$pu.13JonRZB1RYz4NKFqC.Nb5.Pf/Lvn9QP3L1.BeXdvNvYVTiIDy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'WXlZq1JIxwui_PARK', 'MC623CFK', '4001694277', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:50:24'),
('3YqJNfM9YqSD_DRVER', 'Paul', 'Kigos', 'Kigos', 'no@example.com', '255717520079', '$2b$10$7DD/kJQGHXz7l7L9rsnuAueuKIYwEvrL6Nc/.Cr46f2mu6cykq.qa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'g1lOlgSAOdlU_PARK', 'MC487DSM', '4002576215', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 03:33:26'),
('45mGUH9tkdf1_DRVER', 'Shaibu', 'Rahisi', 'Rahisi', 'no@example.com', '255687505874', '$2b$10$Wc2VHUHw8tzZYLh8IjKzteUt2v2sqk1Nh3xozjgkJtkPyUfkWaUfW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'nMEqLXzEO9wJ_PARK', 'MC380CNU', '4006360165', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:44:08'),
('48DsK3el3ulB_DRVER', 'Jungu', 'Juma', 'Juma', 'no@example.com', '255654164498', '$2b$10$hAiOy6O1Io8tMRVLn4Quk.n13/Yx2dE7T.0IdKFKo/b/US2H3Lo..', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'WXlZq1JIxwui_PARK', 'MC443CYY', '4006727985', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:35:02'),
('4Acrd0Hxz3tz_DRVER', 'TUWILINDE', 'ULALENZE', 'ULALENZE', 'no@example.com', '255783219710', '$2b$10$Yy8xvHoQm79f4WZzyDVusedmIQTX0Vd.6Y8k6wmrJo9omORhE8prq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'TbkAOqQjgkWf_PARK', 'MC511CZL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:22:57'),
('4asQM4kpUhCR_DRVER', 'Edwin', 'Shem', 'Shem', 'no@example.com', '255757834911', '$2b$10$CYb4lb5jr6ZXvxG5Yie.5OOwK1HTeK7gyoDkxIbgT6cd1.bKE7fK.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'JANGWANI', 'dPkWDNHoiMxc_PARK', 'MC885DML', '4006979889', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:09:04'),
('4BShF1zSxzx5_DRVER', 'Joseph', 'Zephania', 'Zephania', 'no@example.com', '255787472521', '$2b$10$GLO/WIA/f2QRJOUtryTrGuK5UrCgEdKJ.dY8Kz51QoG46a1GKz1AO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'NRgnbytJvAUA_PARK', 'MC575CEX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 13:51:42'),
('4FOcxwDvA1Wn_DRVER', 'Adam', 'Nassoro', 'Nassoro', 'no@example.com', '255716756053', '$2b$10$NTZxggEmXNdNWsfms3bpdubT4L5jJw0nRFJqig7muCw/foqE5PSfi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', '31KR62AnklbN_PARK', 'MC598DAE', '4000286625', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 08:46:43'),
('4GIJrMl78Tg7_DRVER', 'Ayubu', 'Marwa', 'Taroge', 'no@example.com', '255794191606', '$2b$10$HCTIL08.LhmqNskCr2qNvOtIVOcgay0YeD1KyVI.U.QIEQMmKdty2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC279DVV', '4006382741', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 07:42:48'),
('4K5F9X7nwyZY_DRVER', 'Hamisi', 'Ismail', 'Ismail', 'no@example.com', '255686553747', '$2b$10$1p4AdDdyJVfqnZYg3TgUZeESDV/6qnqX2OdYJXbWf.N/oi2f58cNW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', '5XdJkCrH2sCP_PARK', 'MC769CVN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:03:10'),
('4LHH5EEQDP2O_DRVER', 'Gasaya', 'Daudi', 'Daudi', 'no@example.com', '255768616413', '$2b$10$i4NhZU5piB/FHwpNkBjrBOOMS/2r7qGTscgPWC0bI7b1vDrbezQ.m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC668DBF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:36:46'),
('4Mfmy9oY1oW4_DRVER', 'Waziri', 'Zakaria', 'Zakaria', 'no@example.com', '255677460861', '$2b$10$UQ2WxzPZl.ZjOC0M0B.7HeW6uKz2t/cxZuoFci36mChXiTh/cIMo.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'dPkWDNHoiMxc_PARK', 'MC303DJL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:51:14'),
('4mtayyqlFeWv_DRVER', 'Hemed', 'Ally', 'Ally', 'no@example.com', '255786573636', '$2b$10$Jj2iHGou0R1BpNGyvibFUeSw08nsMsTsX4Z6jiVB3P9J8K32.vQHK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'nMEqLXzEO9wJ_PARK', 'MC598CHC', '4002559311', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-08 09:04:30'),
('4OO1FjEYO8R4_DRVER', 'Benard', 'Sogomba', 'Sogomba', 'no@example.com', '255714654702', '$2b$10$ujejetJqvA4MouQq4f0NUu9LsJG97gp1vFjTScWKLhJhUmPDGb0le', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'dPkWDNHoiMxc_PARK', 'MC497CWD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 09:59:47'),
('4Piw79mV9xxP_DRVER', 'Paul', 'Stephano', 'Stephano', 'no@example.com', '255762644933', '$2b$10$2iq3a7ZWh5sR6kEQQFm4peZRmxCNXixe0cyR/t7efytjNckeWPwtq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '31KR62AnklbN_PARK', 'MC147DUT', '4002622989', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:05:15'),
('4PYP4pNXfbCw_DRVER', 'Salimu', 'Mahunda', 'Mahunda', 'no@example.com', '255769555273', '$2b$10$A2G9uWbTI8rXuuDHU3g3sO2J5wTSNTcasWtCk6kjmABmdNoPsSiAC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '02suTLI5aVrY_PARK', 'MC423DJS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 12:53:08'),
('4tZmLNKEzM7k_DRVER', 'Said', 'Ayubu', 'Ayubu', 'no@example.com', '255677818347', '$2b$10$s8SQoa5p6B/hNG8O8mAmV.MNLCvSZAqD/bKX1NIXCAREmNVv9GXBi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'EpCatERKC6hm_PARK', 'MC915DEN', '4006867107', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 10:25:44'),
('4uNYOQD13rwQ_DRVER', 'Ibrahim', 'Mohammed', 'Mohammed', 'no@example.com', '255683134553', '$2b$10$UtCmJq5vCA2Gt8Ib/D3/2OpB3M8TtMBpRZCLYBuuDNgZoiA7VAW86', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'cw5bJODebF54_PARK', 'MC226DLN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:37:54'),
('553NdNSpfR8O_DRVER', 'Haji', 'Juma', 'Juma', 'no@example.com', '255672611614', '$2b$10$cZ5oNZXv6co.49IfQ6WKt.P1ShQHNs9vLkjxj4KU7.xz0N76foDga', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC147CXQ', '4006285198', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 12:56:14'),
('57xn4Y55V9L3_DRVER', 'Yohana', 'E', 'Msunza', 'no@example.com', '255788129887', '$2b$10$P/eeKtaEXT8zgjlVc6jijOD9VrOnUdo8PxcUFEFLcTUg93uMod8DS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC999CZD', '4003307846', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:25:14'),
('58BfLnVi8bA0_DRVER', 'Hamza', 'Ally', 'Ally', 'no@example.com', '255682404045', '$2b$10$Q.uHao6/wxpJV0dsUBdvg.MHw/zxubai6WoeJeew8Iu26q1fbs32W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIPEKO', 'j01Cm7TVXfQG_PARK', 'MC863DSA', '4004498150', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 05:51:56'),
('5AzFLUGXDCAD_DRVER', 'Omary', 'Muhiri', 'Muhiri', 'no@example.com', '255787942954', '$2b$10$G/0zIpZf8vrcrAmGo/jPCutIrqI2AtKvr4TVAm7WJ43YNX.p4peqi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'kStcaD5Tbwy3_PARK', 'MC423CER', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 08:36:19'),
('5Cj9SpfAmOmY_DRVER', 'Jafari', 'Aeshi', 'Aeshi', 'no@example.com', '255717217391', '$2b$10$BvBsmF2h/kNLrqFe96pTYe1z/NcjJLwh1x6V5AmWaYsNloq1C41ya', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'dPkWDNHoiMxc_PARK', 'MC698DGJ', '4002636265', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 06:23:11'),
('5PrsuMhchDQB_DRVER', 'Vitaris', 'John', 'John', 'no@example.com', '255655322000', '$2b$10$n5zJO1gqC8ECiARLYEXzzuypWCfnSgn/R4AEQ0muQiURExEBrTxeS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', '2dTgMy11XIFX_PARK', 'MC114DZT', '4000246820', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:31:58'),
('5tNfNiJHR2sJ_DRVER', 'Stephen', 'Cyiril', 'Temba', 'no@example.com', '255785080186', '$2b$10$s.rjjuF6XsYWTTkVrAZnPuzuUTSXV0TiceNfe1VoKAqcZsdvAeFi.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'SRsKwzEYK9Eg_PARK', 'MC681CMV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:17:03'),
('5TzMfBG3gXN0_DRVER', 'Thomas', 'John', 'John', 'no@example.com', '255788730222', '$2b$10$hTRUdHu5yVshDj.hutYonOHITkJa1MYRWPx.Jl/jGg3WHFiscSjmu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'WXlZq1JIxwui_PARK', 'MC400DXP', '4005115195', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:53:45'),
('5zTnpgLB445x_DRVER', 'David', 'Laulence', 'Laulence', 'no@example.com', '255756506218', '$2b$10$ytXq5MskxNcBHUiHBlm.vOVXbRnrBBHLdaNaagTRoIoR53DYcnwLi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'SRsKwzEYK9Eg_PARK', 'MC932DXN', '4006362917', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:02:41'),
('60SpmhO5LOph_DRVER', 'Yusuph', 'Kondo', 'Kondo', 'no@example.com', '255743272985', '$2b$10$lLCeeVfIjr1WRJklLZiN8ebOmnUm62DQcnDtSUmSzdU8brEsiG/s.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'cw5bJODebF54_PARK', 'MC373DFA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:24:50'),
('61RxPha0b73K_DRVER', 'Vicent', 'yohana', 'mtwe', 'no@example.com', '255717250998', '$2b$10$7400VoAnKkAX6SQcmdvvAuRdMbg3hS9CAXxe5ooZdohpJBrKTek9e', '1992-10-12', 'Mwanamume', 'Nimeolewa/Nimeoa', 'yombo', 'j01Cm7TVXfQG_PARK', 'MC 402 CKB', '4001577701', 'notset', 'Leseni', '4001577701', 'd8HQ4vGwtDaL9RYlqgBFUxbAs9MqBsdT_IMGMAIN', '3D4qc3MdBPvxIIrJz5mnkrR2azCgLCaR_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Tito Lazaro mpiziwa', '255659644211', 'created', '2024-03-02 12:06:11'),
('65mMLnvv7S85_DRVER', 'Selemani', 'Mo', 'Mo', 'no@example.com', '255719993201', '$2b$10$D2mQYsqzhI2RIwIO7CMarebOz0iXwgRPLU27u94V.f1Yl95L.KRme', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'TbkAOqQjgkWf_PARK', 'MC161CXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:21:22'),
('6etKirCemMYw_DRVER', 'Gervas', 'Kiyombo', 'Kiyombo', 'no@example.com', '255754401014', '$2b$10$eglFC40CpUtC.Sd5XKfM2ekq84z2zTkN./TzS2aAsESHNWHxoWK.C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'OiZ5inFpcTde_PARK', 'MC421CWF', '40001022617', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:29:17'),
('6jzYsHN9MZXl_DRVER', 'Danieli', 'Piter', 'Piter', 'no@example.com', '255766307066', '$2b$10$yB30Wf8gtLiUgclN.6rEaOyjhUHX5KhUMONzk55FlMs3HxZLVqDxu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'dPkWDNHoiMxc_PARK', 'MC783DHE', '4006175723', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 06:15:12'),
('6S8Cn1t3i1gC_DRVER', 'Mohammed', 'Mansuli', 'Mansuli', 'no@example.com', '255789944081', '$2b$10$hcUPcwaEQlqInlpMCuRltevf2PmW/ERCGV5EUKwTGwFMJj6ranvkq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'cw5bJODebF54_PARK', 'MC596CKM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:58:24'),
('6u98nQBDkzOg_DRVER', 'Ahabu', 'James', 'James', 'no@example.com', '255749666649', '$2b$10$gDrwAmHbETRyRSccAOPjX.Z820YkSbK1HvyBqeG6YoS9dKrmGM1Iu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'WXlZq1JIxwui_PARK', 'MC911CVA', '4003066520', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:00:23'),
('6V8M8UjHcudp_DRVER', 'Nemec', 'Benardun', 'Benardun', 'no@example.com', '255757633677', '$2b$10$/JwVYpIi7m/y0lb8zWicxeRiYZqA5pJFziBO77z.vC3bM.nKWcZR2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'yMLw9kHalHtP_PARK', 'MC652DLP', '4006301211', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:27:53'),
('71Ao1eVImvvc_DRVER', 'Muslim', 'seif', 'ally', 'no@example.com', '255694887965', '$2b$10$E4ebnItvQpr.Zr0PqTE1i.0d02RKuoJQ1IUrYQ58EBuqOi1tvv6Nu', '1997-07-10', 'Mwanamume', 'Nimeolewa/Nimeoa', 'jangwani', 'dlA4LlB7B3LL_PARK', 'MC 412 DGG', '00000000', 'notset', 'Sina', 'notset', 'notset', 'I4B9itCTJFuWtY421TrQGHRPB4OlvQWE_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'John Daud mahungu', '255684502989', 'created', '2024-02-22 11:10:31'),
('71QqAUCVuVpd_DRVER', 'Abas', 'Edifonce', 'Edifonce', 'no@example.com', '255764205555', '$2b$10$6oJZIrFKD8ONDm9n5wQ72.o8/AUJyEseqiIqqrANgqVtf9SAgOtK6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', '02suTLI5aVrY_PARK', 'MC239CSN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 05:05:10'),
('77YHCxGsmHUf_DRVER', 'Juma', 'Simbila', 'Simbila', 'no@example.com', '255746159195', '$2b$10$g6H19d5lZfVQJ2zDcQ..2O0D6n5itcLqgMTb3y9s2R23hZZXDoDR.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'cw5bJODebF54_PARK', 'MC167DVL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:12:04'),
('7BQZ5oLUV5rO_DRVER', 'Jovin', 'Dennis', 'Misango', 'no@example.com', '255715184930', '$2b$10$uuDXrlPsNcqzGdIOKybGo.OGjBkUJBaXle8W7Sj19159kni9Vj3Qi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'SRsKwzEYK9Eg_PARK', 'MC459DUR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-21 10:02:58'),
('7cExq5nTDYku_DRVER', 'Swedy', 'Juma', 'Juma', 'no@example.com', '255783181311', '$2b$10$NkGNsrFJMeD9SGxn93jHdO.Oqi96DyMmhUqYXXQBJwrHrnINKgNG6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'cw5bJODebF54_PARK', 'MC639CRQ', '4000387536', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:39:14'),
('7D8jknQQwycJ_DRVER', 'Zaidu', 'Omari', 'Mwinyimvua', 'no@example.com', '255673756113', '$2b$10$uhltnL9Xv98J39/CLugbPOdZu8CA.DFBIJW2JQU1wHAO.mFgRK5H6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', 'UL09soxnhaZU_PARK', 'MC679CWP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:09:37'),
('7FaFd0hr891v_DRVER', 'Mohamed', 'Omary', 'Omary', 'no@example.com', '255788426578', '$2b$10$ewL24XDEb6ZIYpwae12tGus3bYOcZqrrtVYUFaa6B2p.cADgQCpmq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC685DTB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:41:48'),
('7FZ731vuBv1Y_DRVER', 'Atosha', 'Kazimoto', 'Kazimoto', 'no@example.com', '255756250434', '$2b$10$gz9mXUKAmSUkEESIy.z2wuu8A1FLOZWriqb5ii.BWAPr6zO1yQps.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'TbkAOqQjgkWf_PARK', 'MC424DEJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:54:00'),
('7hGG2OsNOCZG_DRVER', 'Mwaimu', 'Jumbe', 'Jumbe', 'no@example.com', '255785525380', '$2b$10$krbtV8naKkmRYRHRdbbmFOXAD1M5E7j.1ltVedyM0u3ARiWK6E4r2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '02suTLI5aVrY_PARK', 'MC242DUM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 06:08:31'),
('7j1n2Hw39UXt_DRVER', 'Justin', 'Agrey', 'Agrey', 'no@example.com', '255752472884', '$2b$10$Bh.AwiIqcwB9g3T6rhRfAetOHwr9hncEb4jqi/RDi.spvrfNknpEa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI JUU', 'SRsKwzEYK9Eg_PARK', 'MC624DMC', '4005162918', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:09:10'),
('7M13n3zDUDgH_DRVER', 'Yahya', 'Mussa', 'Mussa', 'no@example.com', '255682649263', '$2b$10$nxF382gx9woaX1Po.bqv1uTX8OewMEfczwkrpPMtSwi4ntGjjXy2C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANG\'OMBE', 'WXlZq1JIxwui_PARK', 'MC613CDF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:22:00'),
('7nsPzYhs6mJZ_DRVER', 'Hamis', 'Jumanne', 'Jumanne', 'no@example.com', '255715542266', '$2b$10$epIYR2wo3ImsUKwra3dk1eaP/I9fwRzSX3BRcnp5MgRhbrAfFEzGi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'cw5bJODebF54_PARK', 'MC319DTS', '4002597141', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 10:32:17'),
('7OBh77VQXdwj_DRVER', 'Elick', 'Alex', 'Alex', 'no@example.com', '255782814934', '$2b$10$NBqFx9biuSXtLQ2PT1Q/RuCXq/ng.T8/8Cj1bsCZS7HkC2eYly8zW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '5XdJkCrH2sCP_PARK', 'MC630CXP', '4006956912', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:22:33'),
('7q39YASW1MoH_DRVER', 'Kulwa', 'John', 'John', 'no@example.com', '255754761393', '$2b$10$JOQF0VP4CmsQVu0C9MNeMuTkoRf8NubrzBwXy6.BAtHXvKFggXYoG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC245DFU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:12:25'),
('7s1KJe29KFwr_DRVER', 'Isack', 'Mkange', 'Mkange', 'no@example.com', '255697576040', '$2b$10$9mGH97Hjnf0yrQ5.kDCKtes3lSOdIppgwiT1rQ8hPisLeuqwFLJay', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', 'dlA4LlB7B3LL_PARK', 'MC384CWB', '40006539072', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 10:50:48'),
('7uHRUsD7tHoK_DRVER', 'Valenci', 'Mtui', 'Mtui', 'no@example.com', '255757877748', '$2b$10$OH8NMibBH2Q5q7NPAXg0yO5yA6cUu/6y5U8D6uxCtxjwnL3Q4fI3i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', 'dMPDSyj5WSzj_PARK', 'MC431DQV', '400309919', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 06:01:39'),
('7XHCjQypvv7U_DRVER', 'Edson', 'Karim', 'Mligilwa', 'no@example.com', '255673188056', '$2b$10$JM4skjT0zpvsDYjELGb5HuxrRbn3JXbP1KtNQnrooYy1Hh8O3KvaS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'cw5bJODebF54_PARK', 'MC998DUK', '4000005054', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 11:08:42'),
('7XpIti7yHGrk_DRVER', 'Juma', 'Said', 'Said', 'no@example.com', '255785540132', '$2b$10$YcARUQ9sx8ZZbl5ikJDpZ.XsM0BrZdI8ywlxwmneSptu7OL8UVGZ2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', '02suTLI5aVrY_PARK', 'MC624DLL', '4004564995', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:47:02'),
('7ZImoqiQ3DCh_DRVER', 'Onesmo', 'Pangrasi', 'Pangrasi', 'no@example.com', '255654919356', '$2b$10$n8F8v/oa8k2G4OTNLVTcVeavnWxy1CrAknYNAPo9xObf1qwrPClJG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', 'TbkAOqQjgkWf_PARK', 'MC309CUL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:06:46'),
('80L7FP1M0iZ7_DRVER', 'Dickson', 'Eleutel', 'Eleutel', 'no@example.com', '255685799743', '$2b$10$.hz9DB2UnjARBzRAG3ZHcuCfXc8oBe89bN95OKNBx9XR3WDcqrEA2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', 'dlA4LlB7B3LL_PARK', 'MC615DLP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:42:34'),
('8eFxeJNVixgA_DRVER', 'Shabani', 'Yusuph', 'Yusuph', 'no@example.com', '255757141018', '$2b$10$nmmdXyvbRZK6tAeTYJtveuUuh9TFPhsZ0oqagoiRjFQf3DomroPFW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'WXlZq1JIxwui_PARK', 'MC482CQN', '4006891020', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 08:05:58'),
('8ExNe5Spt4Fo_DRVER', 'Henry', 'Milanzi', 'Milanzi', 'no@example.com', '255719667792', '$2b$10$SIrRYNrRmFtrInzFT3Ra7eZe1Q6dj0oI7wicJjwOOGSUQABY8q6Hq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'dPkWDNHoiMxc_PARK', 'MC667DMT', '4000622987', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 05:58:48'),
('8FTgQe4HBEQ5_DRVER', 'Issa', 'Ally', 'Ally', 'no@example.com', '255785892647', '$2b$10$/nYGlFd4j9kmMi2lc4fvHOnxCEOWfIyDG/c.w96UVp5ZdnGf3wsr2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC915DRE', '4003816746', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 08:08:51'),
('8hNDAvkqIvph_DRVER', 'Emiliani', 'Raphael', 'Raphael', 'no@example.com', '255657548434', '$2b$10$ylgAYTaiKism2q0sohXPWOAPH31YOEsxZr9t2lqDJ53FQOKR8PFAe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UBUNGO', 'JrtiDorkKLSN_PARK', 'MC726DUT', '400924630', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:36:43'),
('8I5w12gZlACU_DRVER', 'Gasper', 'Dismas', 'Dismas', 'no@example.com', '255755842538', '$2b$10$lA2sj2w2MHsI4DqICm3/Le8vzAlWqmlQmHW1i5hNg3WFMVjTvJKXy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'EpCatERKC6hm_PARK', 'MC253DKY', '4000972763', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 09:18:40'),
('8mP5AoXkjINg_DRVER', 'Alhamdu', 'Kiseka', 'Kiseka', 'no@example.com', '255621878383', '$2b$10$aY7JjrG4K8YUIXZkEy7/ZO5sIdPvZ63jL7BfTgxUON4gGFOVPYPr6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC353DMF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:44:07'),
('8PPIeq2JbU9Y_DRVER', 'Rajabu', 'Juma', 'Shabani', 'no@example.com', '255784649210', '$2b$10$thre5wJZBZGxRgJRJjmHkuLOJzy2yTpRIZjJlN0m0gBHSQKisoR3G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'TbkAOqQjgkWf_PARK', 'MC784CFU', '4001835313', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:27:46'),
('8SI1gCAZYFlU_DRVER', 'Antony', 'Solomon', 'Gwambasa', 'no@example.com', '255719133030', '$2b$10$/AZuCTlO.sQnk/DHXN3KLu4b5q2WrtpK5OYYI6L9qUtWKjywSebQe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'lHdBlR4qB2Zd_PARK', 'MC265DHW', '4000166812', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:56:59'),
('8SIKOPMFYMzL_DRVER', 'Salim', 'Rajabu', 'Rajabu', 'no@example.com', '255712457234', '$2b$10$gzGpbfxPvXKrxRY0U6IMeu8CiyGunPmxht29G5YcmReKPdWGxaMmq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', '31KR62AnklbN_PARK', 'MC837DQZ', '400472765', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:15:02'),
('8t339JAaGfRk_DRVER', 'Hamis', 'Omary', 'Omary', 'no@example.com', '255718261743', '$2b$10$8ZsFfhkehAY065jWFYWRvukvqPXDfGXzeMHgM84GRK/t6.hDKaWfW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', 'UL09soxnhaZU_PARK', 'MC759DUD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:08:52'),
('8xbUDPCfwukr_DRVER', 'Cosmas', 'Juma', 'Juma', 'no@example.com', '255627904068', '$2b$10$cUKGwwwo4NXyao0Xgpo4x.Jw/PBgti0AL9GT.Q23jw0Y76HWBucpa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'bncNWzVh24hB_PARK', 'MC190DQL', '4006467165', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:06:10'),
('8xIqCXtEDuGY_DRVER', 'Jafary', 'Athumani', 'Athumani', 'no@example.com', '255713632962', '$2b$10$Ka/JgYe7wxxxysHM.p6r5.NoTafSdd5ncYiR7uD1OtYlvHbYowV7e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'j01Cm7TVXfQG_PARK', 'MC405DRE', '4005764461', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:47:13'),
('92WEAjrZVU1s_DRVER', 'Ally', 'Mgombozi', 'Mgombozi', 'no@example.com', '255714503541', '$2b$10$.c6c5cMx67au5tHWIeHu3.bb/520b9mf16T9m5mnsjXl81vcUFtgG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', 'UL09soxnhaZU_PARK', 'MC121DWC', '4003192852', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:34:46'),
('948BenZACvfH_DRVER', 'John', 'Daud', 'mahungu', 'no@example.com', '255684502989', '$2b$10$g2TkryNYPZWYZHY0Rb2CgeEkQJPFC6dkdQjKBwx4DVMxZo7JCn9XG', '1999-02-22', 'Mwanamume', 'Nimeolewa/Nimeoa', 'jangwani', 'dlA4LlB7B3LL_PARK', 'MC 448 DMH', '4006775272', 'notset', 'Leseni', '4006775272', 'IpkChZ4p2nGhKCh6qb9ZPnaonYUEypuG_IMGMAIN', 'qxxDxOt26BiEpj9M4Yvi91nwmONVfFlP_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Muslim ally seif', '255694887965', 'created', '2024-02-22 11:05:13'),
('959XXc5YrPAr_DRVER', 'Simoni', 'Solo', 'Solo', 'no@example.com', '255757943355', '$2b$10$aktzDDXoIpSGXhM1.bef4.zFhrGv5bFQLBYcG4Zaf53rnmZBoMAgm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUYUNI', 'dPkWDNHoiMxc_PARK', 'MC646CYT', '4004095184', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:39:16'),
('98OrWWn7KWYV_DRVER', 'Mohammed', 'Hassan', 'Hassan', 'no@example.com', '255754277712', '$2b$10$cfUoudRVcZBFynaVhx3rk.ul5LOOIdZhzrWMd4LmFZZgxj.DQjgTy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKURUMLA', '7D5Kld7NE5K0_PARK', 'MC836CHZ', '4005331015', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 10:44:53'),
('9akhYBbS630f_DRVER', 'Said', 'Nguzo', 'Nguzo', 'no@example.com', '255653223390', '$2b$10$c5JVj8HzN1I/LhvFgXYkde6XwtMjbyuJaocQPmfvThkraBTOTxmbC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '0WL6I7LTF3eJ_PARK', 'MC642DVN', '4000085903', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 04:17:28'),
('9dSshJfJNL8H_DRVER', 'Robert', 'Elias', 'Sedekia', 'no@example.com', '255687235897', '$2b$10$m0ZKL9n/hXA/U2ArwJOjguDUP8HU7FsunlPY/0yn4RTT.NuRJ9WPa', '1991-05-02', 'Mwanamume', 'Nimeolewa/Nimeoa', 'mabibo', 'dlA4LlB7B3LL_PARK', 'MC 121 DWC', '000000000', 'notset', 'Sina', 'notset', 'notset', 'qWY0fWSO9TSMCX9XazRbkOh7M3u5Jyxd_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Hassan Martin matalus', '255710793283', 'created', '2024-02-22 11:15:08'),
('9FEt8gOAddUb_DRVER', 'Said', 'Ally', 'Mhonje', 'no@example.com', '255628001016', '$2b$10$KLw9pcbwmAs3HvMsy0adkOKZs238ST8e1p.wWRF0gXChnVm2oebJ6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'j01Cm7TVXfQG_PARK', 'MC862CVL', '4003794842', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:27:05');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('9fszvAHMyPWs_DRVER', 'Mussa', 'Sudi', 'Sudi', 'no@example.com', '255689970054', '$2b$10$WXhlwEDBwrCtU/bMFoamMe76MnAZCHWKtoz2Rohn2BzNuX1ybZzV.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'dPkWDNHoiMxc_PARK', 'MC251AVE', '4003323475', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 08:53:16'),
('9iPqaqJkVYHU_DRVER', 'Chande', 'Ally', 'Ally', 'no@example.com', '255782089785', '$2b$10$1Rm5LF9Vo1ofILwZwDphmOciZZKN9GaVbfhjxLT0WAb0Fw9ZWhgGS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'EpCatERKC6hm_PARK', 'MC760DZR', '4000612566', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 12:43:51'),
('9laRDFXltsTP_DRVER', 'Ally', 'Hamisi', 'Hamisi', 'no@example.com', '255712107409', '$2b$10$M.ej8cnXsNwYe4zjncISwezBT.nMOH4M/ACMR1Pmpmo7.rEPp6Kbm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'tZG8I6XnU13x_PARK', 'MC325EDB', '4006950815', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:24:14'),
('9LknkCfkqotO_DRVER', 'RWEZAULA', 'ALFULED', 'KWELENGELA', 'no@example.com', '255686853427', '$2b$10$Fv2fCeL.sPjJAhddRQ7WAu798QcyzZjSpLwthfoRKSNvoKbC8tJ6.', '1990-09-01', 'Mwanamume', 'Nimeolewa/Nimeoa', 'IYOMBO', 'TbkAOqQjgkWf_PARK', 'MC 293 EBD', '4005376257', 'notset', 'Leseni', '4005376257', 'gZ1fkN8iUaPk3zctqpfF1fr67CJ8vWYT_IMGMAIN', 'msDMugw5R11oXmNr80dylfs0kOmLSd40_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'ADIVENTINA ALIFULED KWELENGELA', '255766252512', 'created', '2024-02-23 10:09:19'),
('9oyvGOrsksj0_DRVER', 'Yasini', 'Izack', 'Izack', 'no@example.com', '255679835356', '$2b$10$OUfhyzO3hdhiDf5gVgpJgetY3D4XS.Wi/1zG420Dhdw0toDSB0EF6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'JrtiDorkKLSN_PARK', 'MC504DKC', '4006351559', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:17:58'),
('9pEHAaqpYizN_DRVER', 'Ramadhani', 'Kombo', 'Kombo', 'no@example.com', '255655310747', '$2b$10$4FMnhs3VMop3FF7nwc75Xep8zJ9CE5zSa5yBhvJOqxTF/8Xvo7uiO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'dPkWDNHoiMxc_PARK', 'MC684DUR', '4000743887', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:27:33'),
('9PqZxdE2RHCS_DRVER', 'Muhsini', 'Hamadi', 'Hamadi', 'no@example.com', '255657751221', '$2b$10$0zL4l8PZ.L3UHUmo5u4G1OPnDMOhvKKutYozfJrzh/jB87CXwf8xq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '31KR62AnklbN_PARK', 'MC286DVH', '4003691642', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:01:20'),
('9rag7L5xTirR_DRVER', 'Geoffrey', 'Alfred', 'Alfred', 'no@example.com', '255615684933', '$2b$10$5QFvWIgSZr6etXe7J7yaEuk0fPdWqlByVJt2tizFmVIF1nZgRUweK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC317DHD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:16:03'),
('9TdyJ3CT9C2F_DRVER', 'Hussen', 'Bakari', 'Bakari', 'no@example.com', '255686774442', '$2b$10$XsxbetUfWm.62WbHhHIB..zxXWwWQcxM0yiOQQAVEdvJvqWRgqobm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', 'j01Cm7TVXfQG_PARK', 'MC723DPR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 06:53:28'),
('9VcnVIi5RFLB_DRVER', 'Joshua', 'Matonya', 'Matonya', 'no@example.com', '255658371036', '$2b$10$bokxyVnQ4YSexD5DXPgiaO3pLGjAyAdCPL4cXkeH27axB2oSPA.0K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '7D5Kld7NE5K0_PARK', 'MC670DAP', '4000144042', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:29:21'),
('9wxoRKGhfC5E_DRVER', 'Yusuph', 'Salehe', 'Salehe', 'no@example.com', '255786284063', '$2b$10$owXPpvRL644sKwOut/Ww6uGdzxIPchTLZrbBZ2c3DS9sCe4FxZRL6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'dPkWDNHoiMxc_PARK', 'MC105DJL', '4003294751', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:57:46'),
('9yn2ugZBZ0ry_DRVER', 'James', 'William', 'William', 'no@example.com', '255659425120', '$2b$10$Wxyn6scIPI.Ib7W3pgAoX.V/QtzSziPCXpkKO1cxGh3TsJ1JpjUQW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'cw5bJODebF54_PARK', 'MC939DJJ', '4003747422', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:44:27'),
('A1TJ0qu8ZhET_DRVER', 'Salehe', 'Salila', 'Salila', 'no@example.com', '255718547281', '$2b$10$HEt.djuZXcFUNqg2WybzMufQCynGXhSWuExXvQniNaTPls2uoeVoe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SOMANGILA', '0kyMILnpGwWP_PARK', 'MC341DTR', '40001027616', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 14:18:00'),
('A25QwQVrxuy8_DRVER', 'Nasiri', 'Juma', 'Juma', 'no@example.com', '255656739431', '$2b$10$p1Z6NZeRWqETe5aKFjCWSu8A/E1IDYu28LFDxq9zFm/qs1n1iiXH2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'WAZO', 'j01Cm7TVXfQG_PARK', 'MC939DRF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 06:58:01'),
('a2DliWYY1P4J_DRVER', 'Rashid', 'Kabehe', 'Kabehe', 'no@example.com', '255713363177', '$2b$10$cZTCzXsOp3xSUGSYaj.hHuhh6EO0WjHHijS.QseR8lcBgNdnduiOy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'dPkWDNHoiMxc_PARK', 'MC676DED', '4000016766', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 03:36:29'),
('a4UPnY5gILaw_DRVER', 'Sebastian', 'Kisigo', 'Kisigo', 'no@example.com', '255623807211', '$2b$10$pzqTquuyRykA/sLofyBGoeiqvjhLtzZ/h7Kpv.xMhfVEji0zwDq.i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'nMEqLXzEO9wJ_PARK', 'MC647DNV', '4001393191', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 13:25:36'),
('a5NTuSAeNMuY_DRVER', 'Denis', 'Chalesi', 'Chalesi', 'no@example.com', '255744812125', '$2b$10$yvaBxKyjbw5a2CLe6gS.UunJ4Fr3Igz1WYTDzGi9Z/VxnwfPnnPwK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC122DLX', '4006947897', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 08:57:47'),
('Aak9HpuTuURh_DRVER', 'Andrea', 'Kija', 'Kija', 'no@example.com', '255672302828', '$2b$10$YGW4gJvELjnZCILko.cKduXq.HgbYNbbzCmoxy2zH7Atdt4J7HA9W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'tZG8I6XnU13x_PARK', 'MC932CTZ', '4005014783', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-17 12:15:06'),
('aAOyuUfMxkuZ_DRVER', 'Daudi', 'Festo', 'Festo', 'no@example.com', '255747536131', '$2b$10$oLKGOFXh998CFh9wUz4MjetlwtZUL836vks5ejEGvGHd40/QluGjG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'j01Cm7TVXfQG_PARK', 'MC127CXQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:04:23'),
('ABrJdJUaeXWo_DRVER', 'PITER', 'SAMOLA', 'SAMOLA', 'no@example.com', '255686779905', '$2b$10$Iq9mhpUG9io7l/3AztDrpONBrA7/RaS4uYfXrfjdY8fluhEq.Sv.G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', '02suTLI5aVrY_PARK', 'MC632DPK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:43:10'),
('AbXzXvczC4dI_DRVER', 'Ismail', 'Daudi', 'Ramadhani', 'no@example.com', '255657189145', '$2b$10$0JnYbivBc/jH5pgicwN9pu4m38vcdPwyOokK72MV6..wzNJkOxS6m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'SRsKwzEYK9Eg_PARK', 'MC411DDH', '4004607978', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:16:33'),
('AciUhQkTmiok_DRVER', 'Isumail', 'Sifuni', 'Sifuni', 'no@example.com', '255684763292', '$2b$10$H2B.w8J2FzwKoJIGTE9BZur48MJXdDo2FIkhVjnMBoOAPqqTCqFIq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'j01Cm7TVXfQG_PARK', 'MC831DPF', '4001443245', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:36:54'),
('aEkqZGyRmv7t_DRVER', 'Hakika', 'Titho', 'Titho', 'no@example.com', '255759205961', '$2b$10$HUFXsz4RuY/NsjsKhyxwr.qZVNP0Kr7txA74gKrAViZ1KrJf9VMA2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMBIJI', 'JrtiDorkKLSN_PARK', 'MC518DXE', '4007117291', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:56:05'),
('aePo06jZkRLr_DRVER', 'Yahaya', 'Issa', 'Issa', 'no@example.com', '255699450311', '$2b$10$g04DdDrkp7wHiwpq/XfXz./lvKOfusrPw04MCMO3YCyWPfDhV0U4e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', '02suTLI5aVrY_PARK', 'MC703DRB', '4006486709', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:22:57'),
('aErmhXGznGNj_DRVER', 'Ezaki', 'Mtipula', 'Mtipula', 'no@example.com', '255744857774', '$2b$10$Q3qD/nBy2yPnK59hqzg9pu6OMr2Cb/d.VbXqRDhHpCl8vMqWLyyMW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'dPkWDNHoiMxc_PARK', 'MC278DHJ', '4006977876', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 03:56:40'),
('agXbZ9HWAtlD_DRVER', 'Ezekia', 'Ezekiel', 'Mwani', 'no@example.com', '255718138165', '$2b$10$uHor9EjoZpPObg7FD4Gxou0JjraWqklQ1itH1ttY0qoDmqDA9fwiC', '1997-03-22', 'Mwanamume', 'Sijaoa/Sijaolewa', 'kigamboni', 'Mag6yxZI2foX_PARK', 'MC 756 DBM', '4006744414', 'notset', 'Leseni', '4006744414', 'cwzMCiS8DMu67cDoD4AnhGuMqpbh4Iab_IMGMAIN', 'C1BDyJr2Aeg0djEmYlGXB01YKQwa5LGM_IMGMAIN', 'yes', 'gsfdtdtg72635NVSud', 'DICKSON GILLIAD NNKO', '255743707104', 'created', '2024-03-01 12:34:34'),
('aGXIBV1JHXeC_DRVER', 'Salim', 'hamisi', 'mbiligwa', 'no@example.com', '255693986103', '$2b$10$rhLLtjUgj2CfEeEw8xY95uuzrwndMPskP12ogsM.aO59ZipLTiYMi', '1994-05-03', 'Mwanamume', 'Nimeolewa/Nimeoa', 'yombo', 'dlA4LlB7B3LL_PARK', 'MC 494 DMF', '4004383301', 'notset', 'Leseni', '4004383301', 'w4BMRa1v2sZsRYaTEXirVz1XLDMd7Dag_IMGMAIN', 'RMWPNIEYheXvF95mmeirXS1LaPvE30bN_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'abdallah Mohamed makono', '255674199393', 'created', '2024-02-22 10:59:21'),
('Aiduaqd77j1u_DRVER', 'Edmundi', 'Hamza', 'Hamza', 'no@example.com', '255679759200', '$2b$10$gG7/pYop8QNjdc9Wq78Dj.bAgtd8RWBMeHrNeBZ1gMjk3hR8nyXSa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC546DPR', '4007010518', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:49:09'),
('ajhhJXtoH1Z3_DRVER', 'Moses', 'Shadrack', 'Umande', 'no@example.com', '255719306599', '$2b$10$zTEkMSOFduY8LmwzBP8kt.6CmNRzTsJuXEYFP5WFvGQUUfeBDAVV6', '1993-10-23', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kiwalani', 'j01Cm7TVXfQG_PARK', 'MC 311 EDX', '4003340568', 'notset', 'Leseni', '4003340568', 'sdcGI8TQwLH2F3f5v4runAzWP33CIFSi_IMGMAIN', '1zHkqxw09L6XPbVqCwnhyEmsxqHc7fmh_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Gabriel Omary Gabriel', '255786656938', 'created', '2024-02-20 11:27:48'),
('AJUmz0bAPBJg_DRVER', 'IDRISA', 'HALIDI', 'DAMAS', 'no@example.com', '255713530410', '$2b$10$3xIYMlKphdzETRPGkAGYS.s9bbheTa9fHY6mEY6tYAdkjWHVRF0oG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'aeBWtJmiYL5E_PARK', 'MC613CZE', '4000684034', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:15:21'),
('aJXIVsvvCZtt_DRVER', 'Ramadhan', 'Hamisi', 'Hamisi', 'no@example.com', '255718133530', '$2b$10$802nI57wnPWcFe4DHUpGbemYqNVP1FzBjr2IprDwVAAYGRdlqzYw2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'cw5bJODebF54_PARK', 'MC633DWN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:33:11'),
('aKVU8TY08X8Z_DRVER', 'Issa', 'Kimunya', 'Hamisi', 'no@example.com', '255713300349', '$2b$10$Ci0HiT6C4dSdMYknhPDuZ.vU1sbQN3zUfESV7JqrPlmGGXtmJXcc.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'UL09soxnhaZU_PARK', 'MC240DJL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:00:01'),
('AMu4WZxayZNt_DRVER', 'Wiliam', 'Ryoba', 'Ryoba', 'no@example.com', '255621411003', '$2b$10$vyfYi.9svYmsvtee0.0Z2uawpfjvOF2MG9WHwopt2b9hkrQW1SbhS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'j01Cm7TVXfQG_PARK', 'MC199DVJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:47:48'),
('AQoPNwzlwZav_DRVER', 'Amoni', 'Kasian', 'Kasian', 'no@example.com', '255656994500', '$2b$10$3NidLW978.oGJO9XHEABTeuTS8MqR7j6d66QReQsy3qVBDCbQCUAO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'A6bwD22v5ld9_PARK', 'MC169CMF', '40000897402', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:44:01'),
('ARvqTAoWTBMM_DRVER', 'Joseph', 'Mduge', 'Mduge', 'no@example.com', '255769491875', '$2b$10$WNAiNq1U8pG0zkjNs0LFfOoYDoa5bPt0uR1li0FYSy78sC/a4efyS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KURASINI', '0WL6I7LTF3eJ_PARK', 'MC101DSM', '4002747975', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 04:03:22'),
('AsPlVUII9q47_DRVER', 'Ally', 'Said', 'Said', 'no@example.com', '255684838801', '$2b$10$lyzJnfXzEKc2h9mpn.Ij0Oifobe9UpN2ANnO0355nu7O63Pgv4WQ2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'cw5bJODebF54_PARK', 'MC279DRH', '4006416776', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 10:49:42'),
('AUNP3S6v1Wbc_DRVER', 'Hamimu', 'Amiri', 'Hamimu', 'no@example.com', '255686665313', '$2b$10$XXm6xTFF9NRYHCb9HBOBa.JS07ovIxdPeU8LX.3s/UI8dNQYvIJfm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'TbkAOqQjgkWf_PARK', 'MC894CUL', '4001896380', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:35:43'),
('AUP5Qhk5R4QW_DRVER', 'Fadhili', 'Robert', 'Robert', 'no@example.com', '255717503624', '$2b$10$RGfSDAwA0c8T9EciSvJFgOubErK4UBmrDBwnJZxPp8wF2jXMnbzKy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', '2dTgMy11XIFX_PARK', 'MC521CUT', '4000348934', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:15:29'),
('AzHVprRkFOYv_DRVER', 'Stephano', 'Samweli', 'Samweli', 'no@example.com', '255714948876', '$2b$10$FQwOEAds.7ASJ6vJ0wGgm.8X4F4GSD3n9JqsKd7LOcuG8aw4bxqaq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC550DST', '400071955', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:33:21'),
('azOtvh59MDaC_DRVER', 'Ramadhani', 'Muharami', 'Muharami', 'no@example.com', '255625927859', '$2b$10$oxMJwp0V.8rYHol0H8wU1uj0hOyba6XAHBucXVAr2UTTlmHgMxg9e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'j01Cm7TVXfQG_PARK', 'MC448DQF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:07:01'),
('B2MpovnH4EN5_DRVER', 'Alhaji', 'Mussa', 'Mussa', 'no@example.com', '255694585743', '$2b$10$ap85nPjDSoLe46ykS.aZK.kNn6WySADYia1SBDJUbtpUzFe9UsfS.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'tZG8I6XnU13x_PARK', 'MC139DUN', '4003759380', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:34:16'),
('b2UiUqby0rWR_DRVER', 'Ally', 'Ally', 'Ismaili', 'no@example.com', '255785212665', '$2b$10$vrM2wvrCuDjeFsDZR31W..zZpUEfL0Fd60jnQnavb0K6ZAiT4SCyC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '5XdJkCrH2sCP_PARK', 'MC759CXM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:19:18'),
('b5qLHPzFDyKO_DRVER', 'Victor', 'Roy', 'Roy', 'no@example.com', '255659208016', '$2b$10$kHQy3ICMr2knGyUda73.vOIXDWucFwEPRT1WS8sQBMta8F.8jSNZS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'LIWITI', '70rWw5tOi1Q5_PARK', 'MC321DCP', '4006011085', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 13:05:47'),
('b5rkKeh2wJR2_DRVER', 'Kasim', 'Jumanne', 'Jumanne', 'no@example.com', '255653496708', '$2b$10$VzovxWG7DHoJ49jWax7gL.AQkkgJfwYIDD4nKTVMJrhZhOog1xKlC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', 'doTbqRpQ6exA_PARK', 'MC924DGJ', '4006855485', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 13:28:52'),
('B65gd7bCzaoE_DRVER', 'Samuel', 'Antony', 'Akong\'o', 'no@example.com', '255766366400', '$2b$10$fUcjGIzVUu1Bf67K50ODpe57ikJA99nBaXuUTvgjj.ylJGrFdh/c.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'UL09soxnhaZU_PARK', 'MC558ABW', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:07:27'),
('b6OEJDwwc73Z_DRVER', 'Leonard', 'Mwakapusya', 'Mwakapusya', 'no@example.com', '255718551515', '$2b$10$qEYJe7WdC4XRa.B8qDQsbeMO9yLIvU3KsNlvmLs6QrJ2144a8O0Ey', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', '2dTgMy11XIFX_PARK', 'MC383DPU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:07:32'),
('B6wufx6dIdvS_DRVER', 'Abedi', 'Juma', 'Juma', 'no@example.com', '255789958103', '$2b$10$UqDUhmzFXr5kalgwEwQYyutfscUyJDrHG7lgm79QKnzamerI1e3pK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', '31KR62AnklbN_PARK', 'MC115DPT', '120826921', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:19:34'),
('b8v29OpsjXEF_DRVER', 'John', 'Tweve', 'Tweve', 'no@example.com', '255626532649', '$2b$10$nlZToIZbHgNK/WhgtLO0juneXYSonMcetAGCjNcb984Ch9wWnHEFm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIWALANI', 'nMEqLXzEO9wJ_PARK', 'MC364DLK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 08:01:30'),
('bAFzGJNq2S00_DRVER', 'Abysama', 'Shaibu', 'Shaibu', 'no@example.com', '255677772396', '$2b$10$5ql/MtgkRrZHS3.a2vDjBOEjvpVFw0LlNhG/OkD/IA6VpH3vkZhLC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC849DRZ', '4007115820', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 11:15:40'),
('BcXa0BuYiC1m_DRVER', 'Yasini', 'Omary', 'Omary', 'no@example.com', '255714850443', '$2b$10$SpXjKGFv2EpJHvALs0S6JupTF5fMV4Y3oIjxvy3g2CVgSvLgxAkiq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'nMEqLXzEO9wJ_PARK', 'MC535DHG', '4000930137', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:26:25'),
('bdfwXSNO87hb_DRVER', 'Abas', 'Kassimu', 'Kassimu', 'no@example.com', '255744120426', '$2b$10$0O3HMxUbUSmooFcqgBxZdOYsJaRK6ffyPHRRNKNGPwOxhJmheOstm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '02suTLI5aVrY_PARK', 'MC903DJU', '4006608152', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 06:24:54'),
('BdlYDuJiPaTH_DRVER', 'Said', 'Adir', 'Adir', 'no@example.com', '255696339353', '$2b$10$.yG8H7eW1fV.1MTWRt2eyOFGb/LAd6/kqaGvJjVptMJxMrCZOoJnm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC354ECG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:45:33'),
('BEg8KYN6IGvM_DRVER', 'Simon', 'Ngamila', 'Ngamila', 'no@example.com', '255620144767', '$2b$10$v9CtbjdXh0FVccbVvvV.YuVPW5G7WuvAwaAT1TzPRbOguNNVKdgWa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'doTbqRpQ6exA_PARK', 'MC584DEB', '4006842846', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:50:49'),
('BEttnahmDIKi_DRVER', 'Destination', 'John', 'John', 'no@example.com', '255623616018', '$2b$10$BunJ63wTr4NTlob/v1Cg/eOKU8XYJ.wFEM9XVwKYrH1EOaYKcRK1W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'cw5bJODebF54_PARK', 'MC629DMR', '400534474', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:22:26'),
('bGnGvbZ5RmoO_DRVER', 'Alex', 'Justin', 'Zakayo', 'no@example.com', '255687290341', '$2b$10$qCa5W.AFsgqk2iBi9C12l.bMYPRRybG6HAwyPw5bhiaz7QkyIriGe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'UL09soxnhaZU_PARK', 'MC413DBZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:09:43'),
('bHihp24ADjtp_DRVER', 'Selemani', 'Isihaka', 'Isihaka', 'no@example.com', '255693551511', '$2b$10$8QllRddFIQMwR0auTrsV9eHV.FY5a8G/zoQIBB6wQ3VfIHgVz.ekm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'CxnGwrRhzuDY_PARK', 'MC600MWR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 09:21:07'),
('bIzdQrTMjoww_DRVER', 'Abdulrahmani', 'Mustapha', 'Mustapha', 'no@example.com', '255715560505', '$2b$10$k.tJyXUUPNbzxdl/Lh7MC.RsCydae/sMUoiT8sS2Jo2WIa2gJZ1vG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'UL09soxnhaZU_PARK', 'MC992DRK', '4006160159', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:16:56'),
('BJH4cqfJ8vrm_DRVER', 'Said', 'Ally', 'Ally', 'no@example.com', '255785037085', '$2b$10$Ibl3Dw9HmGXagFt2WSFRtOY6mJX/YDEA3MdwpRtTw0Jk49bA65V.G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'dPkWDNHoiMxc_PARK', 'MC694CZA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:59:11'),
('Bjssli5B7IjA_DRVER', 'Alex', 'Festo', 'Festo', 'no@example.com', '255687763702', '$2b$10$WIgir2kOxsT613kl2/lo3OX3tV7b3BjWxjx5myQC3AScYKW7XCo9i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'A6bwD22v5ld9_PARK', 'MC308DRC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:51:45'),
('BKc3ohgT4YI2_DRVER', 'Salum', 'Abdallah', 'Abdallah', 'no@example.com', '255712339706', '$2b$10$sFChtdzSCIw3wgqmzLqZc.t0VBE/X7EAhxZH.NkTtCxgWhWMLIM26', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '2dTgMy11XIFX_PARK', 'MC944DHG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:29:27'),
('BkF8a2LKjb9e_DRVER', 'Ramadhani', 'Mwinyimvua', 'Hang\'orwa', 'no@example.com', '255717292726', '$2b$10$8PcgY3rpjVQFWqAjgdXE0.3PBLnIJTxpta3y4pH9S7gEtjQCzlh1a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'SRsKwzEYK9Eg_PARK', 'MC544DFM', '4000441141', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 11:22:39'),
('bKGgNrnpISsA_DRVER', 'Costantino', 'Crinus', 'Crinus', 'no@example.com', '255754595014', '$2b$10$8fFWKJ4JCwnE4ozI.IB5Ne4tVafR5ANNC92/BPmaqnKGEqU4dOA5G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'j01Cm7TVXfQG_PARK', 'MC175DWZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:10:19'),
('BlHq6jZboydk_DRVER', 'Rajabu', 'Lukuta', 'Lukuta', 'no@example.com', '255787523879', '$2b$10$qEbyPVJwGESkjlC/rU/8V.cvROjR2M2prFwIx.k/6mRHUYyThDhqu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUNJU', 'TbkAOqQjgkWf_PARK', 'MC774DPZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:30:17'),
('BLQ7hiKRaH14_DRVER', 'Godfrey', 'Abel', 'Lundera', 'no@example.com', '255745282823', '$2b$10$5fZPQEz6icrPH9DAd7uxke1/vkTAXC9/IoFXim4qout5XAHBXMhEm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'cw5bJODebF54_PARK', 'MC623EAA', '4002106411', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:52:31'),
('BQjs2Z7uDBoR_DRVER', 'Abedi', 'Mohamed', 'Mohamed', 'no@example.com', '255787548285', '$2b$10$qvL3Lk8dZcyu.qFNJ3yeSuHeZ/vdvRGB652eBPRbSi3guOYJkKK/i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'JrtiDorkKLSN_PARK', 'MC657DSC', '4003817320', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:25:25'),
('bQWBwjiw8Lcu_DRVER', 'Juma', 'Omari', 'Omari', 'no@example.com', '255787692768', '$2b$10$m3n/jJ4KaRIGhqmijIbtuOyHgFcnBAkZVW4sQ1.k6ulxlcxw70TIW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'QR20w3XwPn7e_PARK', 'MC658DSZ', '40065650013', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 06:42:55'),
('BryRLqCZHJ15_DRVER', 'Jonas', 'Charles', 'Malata', 'no@example.com', '255672283233', '$2b$10$S1GnvroR5pCAd/wWRo1fUODI0OOzwDKYiyfVs8yja78VV76CRxxuK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC169DTN', '4001645319', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 11:26:30'),
('bs4MMcnFK3jz_DRVER', 'Musa', 'Mzee', 'Mzee', 'no@example.com', '255719513305', '$2b$10$0.pAPjoumOyKvpZBGE9rJu4GAmO5dQs87g.xWsGkqIPUTSgsydjXu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC954DFG', '4000180772', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 10:59:37'),
('BToOVfKbSEjP_DRVER', 'Abubakari', 'Daniel', 'Mlewa', 'no@example.com', '255785545795', '$2b$10$3/pgdg/Rv2OJR5u8WULlw.h0egjuMPmUEnBWfYDe7XrlRS6aMD/fe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'j01Cm7TVXfQG_PARK', 'MC362DVK', '4006866526', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:16:13'),
('BUEg9woNDkFL_DRVER', 'Hickson', 'Rajabu', 'Rajabu', 'no@example.com', '255692674402', '$2b$10$2qDCpJkCQCUSV7izRC5gEOHpzyY08eGw5t32eq7I54n77H0.kG3b.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'cw5bJODebF54_PARK', 'MC593CUD', '4005798134', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:27:05'),
('bVCA3Ky7BOfY_DRVER', 'Issa', 'Suleiman', 'Suleiman', 'no@example.com', '255684366036', '$2b$10$YGQZ84XowQfxMftVF0xsgeCeUIh32D37WrLA6LK8lFo7XahyXcYA6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBADA', 'cw5bJODebF54_PARK', 'MC668DZY', '4003743818', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:42:45'),
('BVuTpXpi7mAS_DRVER', 'Alfred', 'Gratian', 'Lukatila', 'no@example.com', '255712902927', '$2b$10$Ua5ciARZcNhRHzn3qzZ0tOqxiKcNEP5xBMCMwqV9ZXka95dK5LKNG', '1990-12-23', 'Mwanamume', 'Sijaoa/Sijaolewa', 'Makongo Juu', '31KR62AnklbN_PARK', 'MC 123 ABC', '125689797', 'notset', 'NIDA', '125366526622', 'sVXwXIfpsL0thgDJCEeMf3CWrvgSpoor_IMGMAIN', 'Og4TFRZzmFZULeju15Xis6V4I0HthDCW_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-18 06:38:13'),
('bVZ4okWUtSrT_DRVER', 'Abas', 'Jastin', 'Jastin', 'no@example.com', '255656807079', '$2b$10$IUy2Ay4Llz4mEty5SSLrse7g3voO3OTzeH.sl4ZH.df/s36OBK8zi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC703DQA', '4006962765', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:53:14'),
('bwdY7GG2DMa9_DRVER', 'Frank', 'Mduda', 'Mduda', 'no@example.com', '255785657881', '$2b$10$E4fKZ9iPxlpf5J3TyjvmxOlBy3EQIwLjA9pJkpV2KHQZKDSlyM9L.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC944DQY', '4004739467', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-01 14:51:15'),
('bWvfrMp7Na6M_DRVER', 'Ibrahim', 'maliki', 'maulidi', 'no@example.com', '255782347663', '$2b$10$QPxf2hmWTakmqvc.sjgC5.kYyIZw//9fUpjINtXaw9icVanRynzzK', '1988-09-09', 'Mwanamume', 'Nimeolewa/Nimeoa', 'vingunguti', 'j01Cm7TVXfQG_PARK', 'MC 318 EEH', '4000356348', 'notset', 'Leseni', '4000356348', 'J276EEgcsUosgc0qTLB9Re2OzBdKH7NM_IMGMAIN', 'MVAyoGAX1NTFqb15Bhu2voOcZezg8L5d_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Aisha Mohammed malenga', '255678224255', 'created', '2024-02-27 09:56:17'),
('bxUxcdBJfOI7_DRVER', 'Rehema', 'Esau', 'Esau', 'no@example.com', '255757355346', '$2b$10$VzOj/SoNVGXQWgXDUkXdx.bIURIBFSUx7Kjzt/fcMCmaAmyT7wseO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'WXlZq1JIxwui_PARK', 'MC920DZH', '4007119999', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-27 07:34:14'),
('BXX5u4ubLEeO_DRVER', 'YUSUPH', 'SULEIMAN', 'MOHAMED', 'no@example.com', '255682110067', '$2b$10$NqNZxIk1F09jvcNTEn2IR.uQJZHdJJL1vMQVU5eGpANZySdql6BYO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'TbkAOqQjgkWf_PARK', 'MC460DDA', '4006549478', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:03:01'),
('BYDU5Ep2vVCE_DRVER', 'Peter', 'Musira', 'Musira', 'no@example.com', '255658508733', '$2b$10$QeauSXJq62qD59oPpt/caeJJ6D6TPwk.0EAJixzI5blWxAhbhQ9He', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC805DHD', '4000211806', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 06:40:45'),
('bYjKEpw9lukO_DRVER', 'Abdulghani', 'Hilali', 'Hilali', 'no@example.com', '255716876969', '$2b$10$lZmd6mxjSflM8uwx9UOcHubOS/b8xjpMpncQ9MwN0zcCSO86H9U46', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', '2dTgMy11XIFX_PARK', 'MC584CNH', '4001438021', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:13:18'),
('Bz3F4LdREGZH_DRVER', 'Ramadhani', 'Malago', 'Malago', 'no@example.com', '255768783974', '$2b$10$fNEMXS3wYT84TUOvgk61Rery37YFnn/FBPhwykTvMlZpgsw/1BiKC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'j01Cm7TVXfQG_PARK', 'MC342DCS', '4006432785', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 10:43:00'),
('bZOnDUJTislA_DRVER', 'Abbas', 'Issa', 'Issa', 'no@example.com', '255686186935', '$2b$10$jybeTs.BDDdSSm0ozmyJyOYLttXVuL0P1PHqy7rL9QOnZ04nVaOPa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'dlA4LlB7B3LL_PARK', 'MC190DHF', '4007093117', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:13:42'),
('C2uJHizs5qhv_DRVER', 'Lucas', 'Samson', 'Samson', 'no@example.com', '255716672055', '$2b$10$yO2RXgxg3IYgiHEAOHJpOeFa2e..ZjgveAG40IqKpeJUpIjLfAuVe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '31KR62AnklbN_PARK', 'MC354DBV', '4001165959', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:42:12'),
('C5tpChATrr8p_DRVER', 'Alistides', 'Vitalius', 'stephen', 'no@example.com', '255699815877', '$2b$10$PjLERnootleQDzKYriuHbOSQzbA/WGysJRvEv0uqrLO3i9ekmBQMm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UPANGA MAGHARIBI', 'PsXEiw6kq8HU_PARK', 'MC490BGX', '40002823771', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-06 02:30:03'),
('C7xd9VFCSIay_DRVER', 'Jonas', 'Matias', 'Charles', 'no@example.com', '255786486724', '$2b$10$5tyGoeVGUsYt4MQN9DEHhOnGqhT0qqYbf5iV4Mbwx48hclAzK28LW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC146DRX', '4006491848', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 06:42:04'),
('C872dLK7QcDJ_DRVER', 'Afami', 'Hamisi', 'Hamisi', 'no@example.com', '255677941259', '$2b$10$TXjs.TWtfPLdEjKzkyKdUeSJEVy7FVue3z0N5LWZCGeB8RWpF8xgm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'tZG8I6XnU13x_PARK', 'MC538DTB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:51:31'),
('CAYYW2uGqClA_DRVER', 'Athumani', 'Shabani', 'Mbinda', 'no@example.com', '255786199896', '$2b$10$r8kMpwGKxSH9RJQ6ae91xeMdAUhid56I8BNT1damyLRFqmznHFlkW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MKURANGA', 'lHdBlR4qB2Zd_PARK', 'MC449DFP', '4000353694', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:24:33'),
('CdC7usOodfSd_DRVER', 'Shukuru', 'Makulunge', 'Makulunge', 'no@example.com', '255789977740', '$2b$10$M3HyzPacCm4u.7fsV7ceFOv4NqNXkoKKyFpcpEq/ICrvty6iIl/hi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'bncNWzVh24hB_PARK', 'MC386EAD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:11:58'),
('cddCFD54KuF7_DRVER', 'Joseph', 'Michael', 'Michael', 'no@example.com', '255684509202', '$2b$10$aCsKamI/7/6OOBtLAJmtwecAPPW93sYsz24iojlCgwskvzITngSKy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC511DSQ', '4005214546', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:30:11'),
('cDFUHRFSOpzw_DRVER', 'Gorge', 'Omary', 'Omary', 'no@example.com', '255658351935', '$2b$10$9aHcrxB60dQvp.xTjhJUU.WdJoKcfxLnDXM/oTU/HT2sPdcgl27VK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'j01Cm7TVXfQG_PARK', 'MC750DST', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:17:02'),
('CEE336fnpQyi_DRVER', 'Ibrahim', 'Joseph', 'Joseph', 'no@example.com', '255742763843', '$2b$10$LLUUpH8PWIgklSSo2tDAeOGbH0vG9cHbTWSLr3XxCPuNthZ1NegX.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'doTbqRpQ6exA_PARK', 'MC571DKW', '4006856395', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:02:13'),
('CfK8jp9RZBJU_DRVER', 'Emmanuel', 'Isaka', 'Isaka', 'no@example.com', '255693437014', '$2b$10$MhZDX0glPIUY/gvABOhXd.W61XjmGN/xaBtWxYa7fOCyiE9EDgMm.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'nMEqLXzEO9wJ_PARK', 'MC517DAX', '4006825695', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:59:42'),
('cGWKWV3jhutm_DRVER', 'Methusela', 'Shavu', 'Shavu', 'no@example.com', '255656249627', '$2b$10$hi4J.eubtLAidySZUILaYe9YUrP9qfx4qHDCHolId2ZoxtZ4b87VC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'oFwNHpyClQvE_PARK', 'MC621DNR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 08:33:54'),
('ChwGr2oEuAPw_DRVER', 'Nsajigwa', 'Andwilile', 'Andwilile', 'no@example.com', '255715978955', '$2b$10$HkXNJK5SlQVk7EHuUmcnl.cjt/q8J2vFkqnCF.3We3/IqlNbo4txS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', '02suTLI5aVrY_PARK', 'MC296DMS', '4001397508', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:08:38'),
('Cih7auaX149D_DRVER', 'Mustakim', 'Abdallah', 'Abdallah', 'no@example.com', '255673477272', '$2b$10$yYtmtU5JmWJY5NIJMMWPbO41XkkuaLoPTDENxIbUJg8xYbrSYSUxq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'doTbqRpQ6exA_PARK', 'MC213DCE', '4006897845', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 13:23:06'),
('cImj2eA3BO5K_DRVER', 'Ramadhani', 'Abdallah', 'Abdallah', 'no@example.com', '255788248039', '$2b$10$.GOJl/ia7sSNE75oO7J3/./l1/vT/US/EIeMf0zNuggIgNN1yUtIq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', '31KR62AnklbN_PARK', 'MC231DDU', '4000691486', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:32:12'),
('CJI33iwR2zQw_DRVER', 'Josphat', 'Mkana', 'Mkana', 'no@example.com', '255782754596', '$2b$10$37jtwfcM26LFGEO6m5ysX.GKtRZtJg0AZTBlICabeXajAfkftcRd2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'JrtiDorkKLSN_PARK', 'MC346DRY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:46:06'),
('cJiDEUkz8lGj_DRVER', 'Ibrahim', 'Juma', 'Juma', 'no@example.com', '255713953679', '$2b$10$reAEu0LyYQlnt8j655188.3LxAjxT9tRDL0P3RDn1vtKyFWfUKwFu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MNYAMANI', 'TbkAOqQjgkWf_PARK', 'MC997BKQ', '4001260238', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:40:54'),
('clcJAbmQDvAi_DRVER', 'Juma', 'Mohammed', 'Mohammed', 'no@example.com', '255686255389', '$2b$10$LVpg6s/088oAIShJM0Xd1.6hi8WVP2nIRvmK4LB3D2FyKRWLgUYE.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILUNGULE', 'KSbChM4OuYcr_PARK', 'MC167CSS', '4000029595', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:35:50'),
('CNMQTb1TbZur_DRVER', 'Richard', 'Francis', 'Francis', 'no@example.com', '255744226667', '$2b$10$qj3Ln9x8FA8gCUeC5.K.S.GvDAGHe4lilUxjRfUA819RSv.SZNmN6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPUNGUNI', 'EZqBvKeM9z2E_PARK', 'MC579DSP', '4006581381', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 12:49:53'),
('cNOD8EIW9Mba_DRVER', 'Selemani', 'Abdallah', 'Abdallah', 'no@example.com', '255689217770', '$2b$10$Qxeh5oO5U1EU7q5JSb7pJu1hKhqBm8D11n8xUzY3bxtg7MxKfJY.K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'g1lOlgSAOdlU_PARK', 'MC249DGC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 10:00:30'),
('cpl5u22UsAhW_DRVER', 'Ally', 'Chilosa', 'Chilosa', 'no@example.com', '255783906222', '$2b$10$UW5vqTGf6Rbef3LPWQmMwuaUomE0l2ILQTQAfi4ey67DHQ23Qn2p6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '5XdJkCrH2sCP_PARK', 'MC708DHM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:44:28'),
('cQktfwQ6bhm6_DRVER', 'Mussa', 'Asumani', 'Asumani', 'no@example.com', '255716823497', '$2b$10$uhu0Ixa8VxD5E6jvEuJtHu56C/pQTgbalYGm1S9KKssJXdjmF3PWy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC705DRK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:17:35'),
('cR4zjse0mU0U_DRVER', 'khalidi', 'musa', 'saidi', 'no@example.com', '255623864309', '$2b$10$rP.DSkfcaa4F7mZ1D6bwcOxNapwrLMFPffg0U.buVgxQN8Wymz90.', '1990-02-08', 'Mwanamume', 'Nimeolewa/Nimeoa', 'ubungo', 'EpCatERKC6hm_PARK', 'MC 411 DJN', '4004494303', 'notset', 'Leseni', '4004494303', 'IQFB8R79FiaTAi1M1FUCKgX9AYPITHY3_IMGMAIN', 'ER6XhMQaiuQa71Qvard4P7SvU1lx4JXZ_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'fatuma juma rajabu', '255682526785', 'created', '2024-02-26 10:13:52'),
('crqVzWLtGBCn_DRVER', 'Asan', 'Mhamed', 'Mhamed', 'no@example.com', '255748953256', '$2b$10$CJkLqrqoorbO6E1/UnxvGuIGguP9O8XFvv1Hw3S/WPMuIsCU/Lsh.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC953DYU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:51:24'),
('ctuhrDKCe8Qs_DRVER', 'Nassibu', 'Salum', 'Salum', 'no@example.com', '255783592288', '$2b$10$qNndZO7qSt3eMfovrcT1Ne6SIejBrUyHNoq0qeTlnGnWcOJ3lRb36', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'EpCatERKC6hm_PARK', 'MC291DUU', '4000546541', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 09:58:22'),
('CTYiNg6aSKTL_DRVER', 'Herman', 'Anthony', 'Anthony', 'no@example.com', '255620510510', '$2b$10$6pgQt38QXDthUYQwTGC67.0REPc1NMAPm9l0BVTFAWBKWG7vl1PtW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC952DEG', '4000104928', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:24:01'),
('cu7BVtm7oqme_DRVER', 'Richard', 'Matonya', 'Sylvester', 'no@example.com', '255762417713', '$2b$10$V5PqIbtgBbi9dF8fPSUUrOTDfqyoVeN92ImFfn3YXjSr4UTHEwKXK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'OiZ5inFpcTde_PARK', 'MC973CFB', '4003664873', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:13:29'),
('CVjDCBnZD6Sq_DRVER', 'Richard', 'Sadiki', 'Sadiki', 'no@example.com', '255718119600', '$2b$10$1vMa8.5Igsy./w63.aLmiu.O1scv1Cp1Eom4QkKohSDOPxS2GA4qS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'SRsKwzEYK9Eg_PARK', 'MC111CRU', '4005183584', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 10:06:28'),
('CvZG1mBbF5zJ_DRVER', 'Moshi', 'James', 'James', 'no@example.com', '255766574391', '$2b$10$0.xo0Z9zPb8ktAcjF9DrOOecCAz2r5kTkTziHa9NASaFTB5QURKiK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUYUNI', '02suTLI5aVrY_PARK', 'MC843CZD', '4001896026', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:32:54'),
('CxtRTImSLFIk_DRVER', 'Mushi', 'Mohamedi', 'Mohamedi', 'no@example.com', '255785393696', '$2b$10$iQQ4I/nla8NSIJA6Ynr69OkxB.bF70WWSDKey.F12G0hmAnroDeam', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC105DHS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:40:37'),
('cZ574rSLwX65_DRVER', 'Shabani', 'Hamisi', 'Hamisi', 'no@example.com', '255686014678', '$2b$10$U2U/gge2MLbaUf68L02mF.UhGHiixqsZYrbukxdw7F1OJPF2KD.te', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC846CVH', '4002068477', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:00:01'),
('CzHVTLrS0h6o_DRVER', 'Steven', 'Rwehumbiza', 'Rwehumbiza', 'no@example.com', '255678922253', '$2b$10$J1HSFu0fEKokNhFn0AgvBO7SjZ4CL0MD1w3SsFSrDq89XtAzPBwQO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'EZqBvKeM9z2E_PARK', 'MC866DPD', '4003688039', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 13:18:51'),
('D0LjfieZ1n3f_DRVER', 'Mbaraka', 'Hassan', 'Hassan', 'no@example.com', '255679085655', '$2b$10$URyrVNfJ.tTRDtYYMnekGONUpRfwHVjn5BzpCr6aDvIasuoj308tW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC972DPV', '4006717595', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 09:51:13'),
('D1ccS62xWIE0_DRVER', 'Daniel', 'Suleiman', 'Mwanga', 'no@example.com', '255745341199', '$2b$10$nzfiXAnHJXCRgc6oUs.NTOFNwVpxA1WYHx.7dDnCsDBzs/b1lmZw6', '1995-04-16', 'Mwanamume', 'Sijaoa/Sijaolewa', 'Goba Mbezi Beach, Dar es Salaam', 'dPkWDNHoiMxc_PARK', 'MC 123 ABC', '7364548646', 'notset', 'NIDA', '153454785644548', 'NGLFH1v99d1f14tIr8h7YGZylbGdDxRX_IMGMAIN', 'Yo5oy2XpLrtB2ZeS3KvyiH4pijEA2jzk_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'active', '2024-01-08 09:09:44'),
('d2ptbHV6qcea_DRVER', 'France', 'Mushi', 'Mushi', 'no@example.com', '255787250987', '$2b$10$gRX/m52idP5ViCgjD.vCZOJS/b4SbXKbCXyk86V6sSl2rAD0z7146', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', '2dTgMy11XIFX_PARK', 'MC948BJG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:01:21'),
('d6ZDG9j7qyaE_DRVER', 'Ally', 'Ahmed', 'Ahmed', 'no@example.com', '255679038828', '$2b$10$isNlo4xU50YEJxsfB88jOeqJ8grfGFBXbihUl4IOZ.V3OuBeqWEn2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINONDONI', 'WXlZq1JIxwui_PARK', 'MC753DSK', '4000447571', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 08:24:19'),
('D7EEGCqp3z0L_DRVER', 'Joseph', '.G.', 'Kachinda', 'no@example.com', '255710159996', '$2b$10$E9mW8/FGZYoeLQsaCmGzZO7LGibdvxWcuMTSYtYn4AWU0uqVpX/f2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KEKO', 'j01Cm7TVXfQG_PARK', 'MC476DKX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-01 12:47:00'),
('D8NSwYYvp60B_DRVER', 'George', 'Nyambuya', 'Nyambuya', 'no@example.com', '255715152026', '$2b$10$h6Q81HPVbJjm2eE3imKN/.qSxQ3q87GDpelrvHEPIa3QZ8E8XG.QC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', '7D5Kld7NE5K0_PARK', 'MC887DPV', '4003643235', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 10:28:26'),
('dAQL3YMdnsPY_DRVER', 'Bosco', 'Deogratus', 'Deogratus', 'no@example.com', '255659509123', '$2b$10$vft5.VKUY8oBtfmQgouVEOf7sOvZrdIL398vcMJM07peCWeUHH9Xi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '31KR62AnklbN_PARK', 'MC121DJB', '4006852986', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:51:48'),
('dBhMvRGyf6Bi_DRVER', 'Nyamwelu', 'Kalembi', 'Kalembi', 'no@example.com', '255784290521', '$2b$10$a9iFwC/arw4p7h39Qvdzr.09Hf6Bhzn.hBT3B9ieSZTT8P4AvVdUK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', '6VlslIpDopdk_PARK', 'MC394DFS', '4006873743', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:08:03'),
('dCFwxPDVhYQ6_DRVER', 'Hassani', 'Rajabu', 'Rajabu', 'no@example.com', '255743236303', '$2b$10$yHstF7woVaOUPw53yBQR0OHdE8PcTpTwA4WMst1J.NlUQ7FSKfF5q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'TbkAOqQjgkWf_PARK', 'MC296DVW', '4005748415', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:44:15'),
('DdubeB2beSTN_DRVER', 'Shukulu', 'Kipala', 'Kipala', 'no@example.com', '255744510883', '$2b$10$/GUIo8mow.pmZ0tczSOlPuMekWxz8wbX0NJ0YTAX/Tl28edWKLoi.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'dPkWDNHoiMxc_PARK', 'MC106DYQ', '4003042005', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 03:31:20'),
('dDYeJa15EU8y_DRVER', 'Farisi', 'Abdul', 'Abdul', 'no@example.com', '255686428955', '$2b$10$Zfw2IH5LUSWm4nAuynhE3Ollm1QzVJ73uhU7Z9ZcP3SiLP60PtMem', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'j01Cm7TVXfQG_PARK', 'MC323DRT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 07:55:08'),
('dFpiYBiOmG89_DRVER', 'Kahange', 'Raphael', 'Mkwabu', 'no@example.com', '255784761902', '$2b$10$qEiFtemBXvR0qM0k2lo6nuRCQ59ir7F7BBCZXOWNtXEKq.cVXpoh.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'TbkAOqQjgkWf_PARK', 'MC432EAL', '4003701259', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:06:54'),
('DHq4TZIQxDCI_DRVER', 'Maulid', 'Ramadhan', 'Ramadhan', 'no@example.com', '255684972709', '$2b$10$vM2QZaTgQlMkFcGVylDUOebgtK8s9ZNHCdMuXQFohqJC8RQ0L5Nu.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UBUNGO', 'UL09soxnhaZU_PARK', 'MC774BXS', '4000211246', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:28:08'),
('dlbAEMeMJAYG_DRVER', 'Rajabu', 'Ibrahim', 'Ibrahim', 'no@example.com', '255689609820', '$2b$10$peX0iYienFecfXc11qhlJOIrzAOnoEB9ZHsjCoGbY9NK4EmCLUx3a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'nMEqLXzEO9wJ_PARK', 'MC659CXC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:30:22'),
('Dm8Vs8GTWpWL_DRVER', 'John', 'E', 'Ndahani', 'no@example.com', '255658582275', '$2b$10$4EtB9HqtWgawzx/8AtVfHOT1eg4X99dnk7AS0tl5HXYwqVf8tFZ7K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'j01Cm7TVXfQG_PARK', 'MC778DPJ', '4000689093', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 07:18:38');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('DnfR9Wsrgaev_DRVER', 'Nasibu', 'Hamisi', 'Hamisi', 'no@example.com', '255625296177', '$2b$10$Rba6UzGtJ5ja.ZJQ1dYkmOvgXURpPfbk4DAiGCGITkfXtyJpBJhOe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SINZA', '02suTLI5aVrY_PARK', 'MC937CGN', '4006418099', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:18:35'),
('dqP0sh7MnxDO_DRVER', 'Omari', 'Selemani', 'Selemani', 'no@example.com', '255687726668', '$2b$10$/xtqSbsPBHsq1S.zz2lFu.fCJ.wb6CIsTJWeA/mk/1HUs2mYKz7Qe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'yMLw9kHalHtP_PARK', 'MC758CWP', '4002653941', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 12:08:12'),
('dr3dstRux1dL_DRVER', 'Samsoni', 'Mkunyi', 'Mkunyi', 'no@example.com', '255749404798', '$2b$10$QggMlY4rPKD/d9nlqk0N1eBL9u5DXbdfFerta08liN6SwQEqRBrXu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC961DMT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:32:32'),
('dT3RNtKjxlxw_DRVER', 'Emmanuel', 'Maduhu', 'Maduhu', 'no@example.com', '255713142298', '$2b$10$UUowaa..M1IcsI.cq6LUeeAKCc5E57DrPBdfBvGDzl5clUW5OtHkm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'doTbqRpQ6exA_PARK', 'MC971DRJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:46:10'),
('dUxfQ6uGTgvu_DRVER', 'Shabani', 'Santabao', 'Santabao', 'no@example.com', '255787855596', '$2b$10$GBZhONmFcYP6//tomP194.so9FkpJTqaLtEwQxjLs1docEak5IgLS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '5XdJkCrH2sCP_PARK', 'MC178DKC', '4004945019', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:13:25'),
('dwAYycOd7oQX_DRVER', 'Josephu', 'Nkolaus', 'Nkolaus', 'no@example.com', '255786663944', '$2b$10$k4I86ktzZI3BcnbBhQKa4OwS2c9dcP47HyWwh9gEIP2f5TPhJuk2S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC283DUD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:27:12'),
('DzLCXgkzXB1X_DRVER', 'Suwedi', 'Ntahondi', 'Ntahondi', 'no@example.com', '255688261022', '$2b$10$EN1a0uHQ329.5grBNiuhkuWlrBTBU1CijVoODzt3iJMmAJuVct3g6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'TbkAOqQjgkWf_PARK', 'MC447DMK', '4002007281', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:23:40'),
('e0quNaqyxheD_DRVER', 'Corner', 'Jerome', 'Mushi', 'no@example.com', '255654530330', '$2b$10$tZtZwQf04eJkrms0ZAtcKeOrRaZJeOHSF6mkzr3QwoQI.eFjFiUmO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'LIWITI', 'UL09soxnhaZU_PARK', 'MC442CED', '4004112961', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:40:31'),
('e4VhQ9n053ma_DRVER', 'Khalid', 'Shabani', 'Ally', 'no@example.com', '255716928276', '$2b$10$REPz1aHvHQGxrIuvs6gfhONusUHVntcUDz7L/LTrfJ4fB.oODUppm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UPANGA MAGHARIBI', '2dTgMy11XIFX_PARK', 'MC587DCJ', '4000199734', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 07:05:16'),
('e6H7lwKCxNeU_DRVER', 'Said', 'Hassan', 'Hassan', 'no@example.com', '255712167026', '$2b$10$DfTnkQNhN2WWGI9hSKqYW.RnpWP2W75d1hMg6yGbTaD1qh.UE3nV6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSIGANI', '5XdJkCrH2sCP_PARK', 'MC707DBV', '4006720383', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:14:53'),
('E6x2lkuV8lNT_DRVER', 'Gozbert', 'Kamara', 'Kamara', 'no@example.com', '255755851975', '$2b$10$g7UjJtBH/JEfATAE71RUBuk892R2IBE6p/L0AXMyWmTDLZFWty/DW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'kStcaD5Tbwy3_PARK', 'MC891DJF', '4002184361', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 08:49:56'),
('e9eynasBHGy7_DRVER', 'Hamadi', 'Hamisi', 'Hamisi', 'no@example.com', '255716440306', '$2b$10$OD45SoPmhpBJbpQVuprv5ea.GGXpId9B8F8Jm8Hhesg4/OTGcMDme', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', '31KR62AnklbN_PARK', 'MC128DTM', '4000746618', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 08:51:40'),
('e9rPGQyNGYcW_DRVER', 'Mohammed', 'Ramadhani', 'Ramadhani', 'no@example.com', '255653401050', '$2b$10$bPYUferK8yej187XMOkQG.NbIgzXLJOXam61YJkojHRqQwsAzNxNq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', '5XdJkCrH2sCP_PARK', 'MC892CQF', '4000058967', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:40:11'),
('eaC7J03rd0Zm_DRVER', 'David', 'Andrew', 'Petro', 'no@example.com', '255658718474', '$2b$10$hPyL1LeYRQ0ew.EZlDq7peBeU3HHuKeRlnkzsRRnTB1iQQqdt3Xtu', '1996-02-09', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kitunda', 'doTbqRpQ6exA_PARK', 'MC 958 DBX', '4004725435', 'notset', 'Leseni', '4004725435', 'VOrYVUNock29rtmtRbmeQWRyfe9AkK6s_IMGMAIN', 'LwTjuRPUFf5CW7pNBIyQGUxdckgYTrro_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'mustapha ramadhani ntankwa', '255685881332', 'created', '2024-02-28 12:22:59'),
('EEKDvuWK65rr_DRVER', 'Isack', 'Nasoro', 'Nasoro', 'no@example.com', '255693966474', '$2b$10$CQ5iGcUKmCvr/HHA9AqkneBUsa/p.ALQ.NBS.67QEbi7WbOwdLWym', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'LUKANGA', 'bncNWzVh24hB_PARK', 'MC543DJJ', '4004537722', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:01:02'),
('eeNosffXw7w5_DRVER', 'Sayeed', 'Abubakari', 'Abubakari', 'no@example.com', '255688373507', '$2b$10$aZFkQEs/RWYA2JqS2R.CqeOe/0JxWKAB2I.zzxpwajHjeUKfZGCmm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', '02suTLI5aVrY_PARK', 'MC479DDH', '4006308365', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:30:38'),
('EFg0C3amy1yw_DRVER', 'Omari', 'Hassan', 'Hassan', 'no@example.com', '255689351543', '$2b$10$CVa984Xm0DiFA5LkrcHPJewy2S2TMXsiHqIgS/yI7FSAz/FT.j0g6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'dPkWDNHoiMxc_PARK', 'MC269DJU', '4003932757', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 09:31:50'),
('eGBFGyxrca1I_DRVER', 'Said', 'Hassan', 'Hassan', 'no@example.com', '255718369214', '$2b$10$h4x06n.vj.pVhW4Pdeo4ae.5rCjgjItLb0yCZO9.a20HCDSs8N.gO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '31KR62AnklbN_PARK', 'MC639DMT', '4001485677', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:37:33'),
('eGMaX5TzWB5N_DRVER', 'Elia', 'John', 'John', 'no@example.com', '255676301141', '$2b$10$FeNMMVsr0pqIEt..cgF8/ejoEEaZ5IEGYIzYn2s8ySN0aEWuyEdXu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'cw5bJODebF54_PARK', 'MC310DTY', '40006512290', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:04:12'),
('EH6bd0DFTqu8_DRVER', 'Amiru', 'Selemani', 'Mbeo', 'no@example.com', '255787221060', '$2b$10$Pd0phZ4sqRGA04MEspErE.1iyFEJpv/O6qLgKaA2.bDNg8Bkfw9h2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'TbkAOqQjgkWf_PARK', 'MC394DHK', '4000746793', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:19:58'),
('EiQh2VNv0mIe_DRVER', 'Omari', 'Issa', 'Issa', 'no@example.com', '255673729811', '$2b$10$Is7hPADhWhXowUmwdMgu4OGMkebwN2IsyBGDmXFZeZpu/VGpD4HSm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'dPkWDNHoiMxc_PARK', 'MC499DRC', '4006350386', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 09:13:54'),
('EjWhNIxnjs2j_DRVER', 'Imamu', 'jabil', 'Abeid', 'no@example.com', '255710315273', '$2b$10$blsD83PpvAUjviKHMuoB7ex.xL8DuYuTR.jMe7zh042GtVQFFFAYe', '1992-09-08', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kongowe', 'dlA4LlB7B3LL_PARK', 'MC 601 DAL', '100375967582', 'notset', 'Kura', '100375967582', 'XG69X9gbIiMox3Uil1TLgTzar3oT3AYV_IMGMAIN', 'sEzata7fVZnTDnNfWxqHHwPjcfbnqGwT_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'vumilia jafari Mohammed', '255682598606', 'created', '2024-02-22 10:46:04'),
('ekkmRjULbbPX_DRVER', 'David', 'Augustino', 'Augustino', 'no@example.com', '255699342720', '$2b$10$o1DK/nB53xg5.p3Fno9jROceeolgOeeGuYHvL.osCyuIG1YbIbwTu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'KSbChM4OuYcr_PARK', 'MC920DUZ', '4002608194', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 12:04:24'),
('EKLzOpHbA5IO_DRVER', 'Adamu', 'Saidi', 'Saidi', 'no@example.com', '255714518984', '$2b$10$nb9DFKWYRf/azjXu8394QehmtA6kFODgDMCHMsBfXg6DZM3ExgrH.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KWEMBE', 'UL09soxnhaZU_PARK', 'MC620DYJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:40:44'),
('eMJpzrtpYWpq_DRVER', 'Shukuru', 'Mohamed', 'Mohamed', 'no@example.com', '255656100013', '$2b$10$n541NyCTUE1PTzd2MJJXuu7gtw3Agrt9LH97TB.iQ0/DIWNBWD6Ge', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'TbkAOqQjgkWf_PARK', 'MC940CJG', '4005329077', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:01:55'),
('EUJZiJEBAorX_DRVER', 'Shabani', 'saidi', 'Mbunga', 'no@example.com', '255766630192', '$2b$10$IYfOINMOW76XFgQJjt1YCO8aBJsKo7WnpEqVatEJMANjnq0Dy9oUy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIPEKO', 'lHdBlR4qB2Zd_PARK', 'MC295DJQ', '4000736598', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:19:57'),
('EW0nDtHkPAOF_DRVER', 'Ally', 'Shabani', 'Shabani', 'no@example.com', '255688101681', '$2b$10$bGg8Vmq/BlVyntUIxdoP7Oogi7sBspvGugsSCqiXxUF9F7I6YVfHy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'dPkWDNHoiMxc_PARK', 'MC727DHM', '4002785196', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:22:01'),
('ew6ViCcyuS8m_DRVER', 'Issa', 'Rashidi', 'Rashidi', 'no@example.com', '255784318782', '$2b$10$MsVbI3b0BwVtoKERX0ILdeCauo3/dw.Nu3tu/1Jg6i5MKG8swr56i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'UL09soxnhaZU_PARK', 'MC336DDF', '4002061503', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:22:55'),
('eWUr1ZD0UEkI_DRVER', 'Suleimani', 'Iddi', 'Iddi', 'no@example.com', '255677751885', '$2b$10$T0vyEbTRbgADV7kdWDqj0uJSIcB4Ft/cPYXBbrSLWfXHYejw9Yl/e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'A6bwD22v5ld9_PARK', 'MC941DMV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 13:01:33'),
('EYfHS9mqkMkd_DRVER', 'Shukuru', 'Hussein', 'Hussein', 'no@example.com', '255674678432', '$2b$10$B90lTXPBx8cyjfcMVsEdduK6FbNTB.nilrD0.W9AYiJV759APN.Dq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'EZqBvKeM9z2E_PARK', 'MC501DTK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 13:13:30'),
('EyIzmMUgYKqK_DRVER', 'Iddiam', 'Hussein', 'Rashidi', 'no@example.com', '255683342079', '$2b$10$PRCKDTm3CR6pmG76BPh5beAt6aswJuTLN42r/zRkAJ398iEXra8Tq', '1994-06-24', 'Mwanamume', 'Nimeolewa/Nimeoa', 'mbagala', 'dlA4LlB7B3LL_PARK', 'MC 505 DYC', '4005366372', 'notset', 'Leseni', '4005366372', 'ZJvZ6ZDZHNkOV2b4oRuPc9m4LrcOkNm7_IMGMAIN', 'IbmGjSwDmWEsnSxlWEqmMrpBek6NFUaF_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Hussein Rashid Hussein', '255715707951', 'created', '2024-02-22 10:38:51'),
('eYVsx277fbsL_DRVER', 'Rajabu', 'Rashid', 'Rashid', 'no@example.com', '255754931697', '$2b$10$ERjfCdRH4lg0XPmn/d2u4.et7t92HudmRmpYU4720KQqwYovHP5cS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'EpCatERKC6hm_PARK', 'MC427DTR', '4000296131', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 09:04:37'),
('ezMp9t2dt9Gh_DRVER', 'Patrick', 'Masele', 'Masele', 'no@example.com', '255758173374', '$2b$10$aWGb3hZ0jVn65MUja/C6Geyj4fK86i4IUFEc4XogI.ZFDdHhAYrTS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'j01Cm7TVXfQG_PARK', 'MC408EAB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 09:57:59'),
('EZtBMODEzilf_DRVER', 'Lusajo', 'Manwell', 'Mwaipopo', 'no@example.com', '255762930918', '$2b$10$iw2dQAeA6PqrQm95IPu2hOuzwdEVgn52yC3b4/yilMSf94GvgL7W2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', 'WXlZq1JIxwui_PARK', 'MC820DBX', '4002915448', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 10:34:09'),
('EzTKLbZDviol_DRVER', 'Emanuel', 'Marik', 'Marik', 'no@example.com', '255656387494', '$2b$10$y/wASfJs8mIWsAtPLTpVYuo..aSYzrh5y6oSNf.UTk5gAd68/aIBG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'j01Cm7TVXfQG_PARK', 'MC950DZG', '4003875634', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 07:39:39'),
('F14Pj9Itlxpw_DRVER', 'Abu', 'Denick', 'Denick', 'no@example.com', '255718013644', '$2b$10$.W.K8.L64y6Cx2MfQ2dzMOimpcT754OgoDXzFPqyDqviyL4V1IW4y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', '02suTLI5aVrY_PARK', 'MC233DHJ', '4000931601', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:21:30'),
('F2NRw9XxsEAR_DRVER', 'Heri', 'Miraji', 'Miraji', 'no@example.com', '255714569139', '$2b$10$NXWN/t33Hy9giC34cpVgnOFEJLLszXtfhVqbNlWErK9Yfn4cScySi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', '02suTLI5aVrY_PARK', 'MC575EAQ', '4005352684', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:26:21'),
('f3dTSm3i1oHH_DRVER', 'Jackson', 'Gaston', 'Gaston', 'no@example.com', '255767226098', '$2b$10$DiZZDiZAvlKdyDlqwiyAmeqUNFjQxVXaax1RJ5a0onFQLOGC7k4PC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC968DXV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:30:10'),
('F3FL0t5n07Al_DRVER', 'Benjamin', 'daud', 'paul', 'no@example.com', '255764150757', '$2b$10$FTmIsivPUaDzWMERWKJmweqxwafDQB7hUnSQ0oC7N2d29kZtv.XO.', '1995-07-28', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kinyerezi', '5XdJkCrH2sCP_PARK', 'MC 458 APX', '4004509370', 'notset', 'Leseni', '4004509370', '1dKbizW5ZH5MVUICxiuIZdht6Z00USiR_IMGMAIN', '72Qq9gLxT1Z6C2YMdiETkzpIUq3GhFTD_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Latifah siasa said', '255654158115', 'created', '2024-02-28 13:40:19'),
('f6YFlXOrh1yw_DRVER', 'Joseph', 'Kilimo', 'Kilimo', 'no@example.com', '255763470190', '$2b$10$y0rP2xXEimSI9hHP7P9dseLTi.G7P5uzcT.XOSBFWMlJSZGrXKx02', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'doTbqRpQ6exA_PARK', 'MC112DGQ', '4002651530', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:52:57'),
('f8uQCmQRMxsm_DRVER', 'Odiro', 'Tadeo', 'Tadeo', 'no@example.com', '255756715083', '$2b$10$pBDlNQLJtn3Trz7SQzwh6OYsyR28iOS2504jDPg0DuP5cIxJEy246', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', 'KSbChM4OuYcr_PARK', 'MC756DLT', '4006949743', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:31:09'),
('F9nueEdTmRXX_DRVER', 'Hakim', 'Juma', 'Juma', 'no@example.com', '255658191316', '$2b$10$yZlXogKsAXr06zD72F0jX.oH93A4v6KQCWfqErLMw6sw4KvovTEQ6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC642DQP', '4000906815', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:33:55'),
('FdS8dgnZLjVu_DRVER', 'Jofrey', 'Jonas', 'Jonas', 'no@example.com', '255746752829', '$2b$10$vjMGIM1xgq9RpZGLx9o6Ne9R7aINvUO1U7PnQ8gORKsqpxFhbYXDq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC350CVD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:01:25'),
('FgyGnD3CF428_DRVER', 'Iddi', 'Nassoro', 'Nassoro', 'no@example.com', '255784700738', '$2b$10$5v.Cuj7JGsBD/KX6s2mei.Wg421/Z0l3B/wAqXDv1lBQ15V68wVuu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '31KR62AnklbN_PARK', 'MC344DRD', '4000400854', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 08:56:03'),
('FIjhaxDhzRRC_DRVER', 'Yaledi', 'Jobu', 'Jobu', 'no@example.com', '255683302122', '$2b$10$/gkfcmOBpYGv1eE4DqKQ.OgTpAAp119NJAnh7P5KvCaoH7Hp/NrYe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC949DFB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:16:22'),
('fJT9pw8cEu7J_DRVER', 'Lusaku', 'Mussa', 'Mussa', 'no@example.com', '255686601014', '$2b$10$m.7gbAYyGmKnp0pE590F6eUJMuKcE4GNzvR5K7ptpgPQvyWLtylcW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'cw5bJODebF54_PARK', 'MC770EAS', '4001422621', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:50:31'),
('flBCVM5jkHCt_DRVER', 'Omari', 'Said', 'Said', 'no@example.com', '255768602324', '$2b$10$ulbEmpTFo7/rKy1ge5vpDuCPf6hk/u718cK67VQia3CLio6gadI2C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'dPkWDNHoiMxc_PARK', 'MC252CVU', '4006046779', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 12:37:19'),
('fLmZ1MwBrvxK_DRVER', 'Jamali', 'Salum', 'Salum', 'no@example.com', '255683924261', '$2b$10$SHfwoFF1VZvDrjgvV0GTmOzp.P2egGSrjjX83fdCG3BDqYYcfJ8Km', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC290CUR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:45:00'),
('flrUGbnKmqsC_DRVER', 'James', 'Mkwai', 'Mkwai', 'no@example.com', '255655576646', '$2b$10$s1NNpMeCus4USe4Ckk8/DuxLa7uLwmL7HuFcHCnaaAV43tg/MeO2e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', '5XdJkCrH2sCP_PARK', 'MC138CXB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:02:58'),
('fmxZKt3xphvF_DRVER', 'Rashidi', 'Ramadhani', 'Ramadhani', 'no@example.com', '255717747438', '$2b$10$YVvVbloby3t1EZnzdX3g4uDi2M4VlB/C5YdV1yj98tsTMZipu2ysO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'A6bwD22v5ld9_PARK', 'MC250CXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:36:07'),
('fnJupK05wrs4_DRVER', 'Augustino', 'Exervey', 'Exervey', 'no@example.com', '255752094672', '$2b$10$MgziudHnOvH9m3iVmYwjoOcolZuS8/gOeBFzWjz3Eq399OjX/AMsa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'EZqBvKeM9z2E_PARK', 'MC333DGT', '4001351990', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 12:43:11'),
('fNLSTPVoY8Rt_DRVER', 'Omary', 'Soud', 'Soud', 'no@example.com', '255692506810', '$2b$10$WrZ3EY.3ukTve973SSyKLOJHlkeHS0ji0VXaure8gH8zgDQvfMbNu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ZINGIZIWA', 'j01Cm7TVXfQG_PARK', 'MC948DZG', '4000163214', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 05:39:08'),
('FPUlVdBMv29p_DRVER', 'Aziz', 'Athuman', 'Athuman', 'no@example.com', '255657068567', '$2b$10$464.G7Pa7PslFNGTGkncZ.N.2bfizWcDsSdxr2t0uJDGOO.ss5zT2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KEKO', '70rWw5tOi1Q5_PARK', 'MC173CQE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 11:01:14'),
('fRfXpKjMYjDx_DRVER', 'Shedrack', 'Richard', 'Richard', 'no@example.com', '255675298373', '$2b$10$wH2pYRsBUQPJFFUq03QZY.DPcxXEthb0kwKu7wnU3nsrOBP//qAdi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAPINGA', 'cw5bJODebF54_PARK', 'MC300BUE', '4004282247', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:12:47'),
('fTappSy26GcG_DRVER', 'SAMWEL', 'ELIAS', 'ELIAS', 'no@example.com', '255713777729', '$2b$10$barbSX..ZhqHQ6e1RQdOKecwTUQvBbCEIrw7pzHBKM9VSOrds3sjC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'dMPDSyj5WSzj_PARK', 'MC416DAM', '4004338267', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 08:50:53'),
('FtRtdcBQyUPV_DRVER', 'Abdallah', 'Hassan', 'Abdallah', 'no@example.com', '255786244422', '$2b$10$rvuVYzBo1nufdGRUYnbMqOsPCiqvrm8Gj9CeWUfapRC1RBg8B/NrK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', 'aeBWtJmiYL5E_PARK', 'MC287DHJ', '4004165726', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 08:51:35'),
('Fug2zCxYAQcz_DRVER', 'VICENT', 'Augustino', 'Augustino', 'no@example.com', '255717749188', '$2b$10$g4m94/Bc0dabKg1LmO2SjeS/ngcQ2ewOlOCabdFB1E4a5ZrbcEwiW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'dPkWDNHoiMxc_PARK', 'MC301CST', '4005371912', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:13:32'),
('fWKSLPpemqaO_DRVER', 'Adam', 'Mahenge', 'Mahenge', 'no@example.com', '255695523215', '$2b$10$bjzi4OAVd4eOdLn1iB1XgeeqFq1SNT2ysO7w28gytDWUOT/AFkjy.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'bncNWzVh24hB_PARK', 'MC303DHT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:12:38'),
('fwSHfujqbFVC_DRVER', 'Ally', 'Kalambae', 'Kalambae', 'no@example.com', '255752460048', '$2b$10$YWvHfWCeWb55YtiyypGFXO1WtK2p5LqyUtgQRvO/6USUWC.BILvfe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'bncNWzVh24hB_PARK', 'MC499DUT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:17:44'),
('FYfFam2QRVPc_DRVER', 'Kassino', 'Moses', 'Moses', 'no@example.com', '255654299809', '$2b$10$Btmz/8lMGmeZ4DRbtNoV0OeZwCrTDlYq2ZNzhi5Qhokl6eUlOXZkm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '02suTLI5aVrY_PARK', 'MC857DZQ', '4004127112', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 02:19:14'),
('FYUoeczcnl8n_DRVER', 'Martin', 'Juvenary', 'Juvenary', 'no@example.com', '255745609122', '$2b$10$N46RkBVrtiaEGkBftxz2TeN.lNVyPILJ5XCshx88WXiJW/oAqWwXO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', '5XdJkCrH2sCP_PARK', 'MC565DSG', '4006905026', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:31:21'),
('GB14Cfn1otlP_DRVER', 'Hashim', 'Mohammed', 'Mohammed', 'no@example.com', '255717450536', '$2b$10$HKIJbqOK9YXuohVHzom4KuBbMXgHIKtBhKQS7obwhtGfdFNAR8cnC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'WAZO', 'dPkWDNHoiMxc_PARK', 'MC224DMJ', '4000230479', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:47:34'),
('GbhfNs3RFNPY_DRVER', 'Rwezaula', 'Alfuled', 'Kwelengela', 'no@example.com', '255766252512', '$2b$10$lerhjspFmLnkpu3prJCa6euomZfH0nYPDhgo2N5kcGOvjcEVizbo.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'PLk9wGm9WqvA_PARK', 'MC293EBD', '4005376257', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-23 07:45:49'),
('GBPe2z6al7oN_DRVER', 'Ridhiwani', 'Hemed', 'Hemed', 'no@example.com', '255624525909', '$2b$10$FXb98Arel90kC6bsjc0b0utCPrzMwv63s9qp6KEyI4c4s3.chbEL2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'dMPDSyj5WSzj_PARK', 'MC830CUT', '4006484217', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 08:26:57'),
('gcXr4a4KhqBq_DRVER', 'Jackson', 'Peter', 'Peter', 'no@example.com', '255689839669', '$2b$10$28oOHZ5EyVlszcjPVq9ki.DYMrnQK1d46FBrnCHp/1eTiwmqu3Hla', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'cw5bJODebF54_PARK', 'MC932DPK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:13:29'),
('ge4lgOuroWXs_DRVER', 'Shariff', 'Kassim', 'Kassim', 'no@example.com', '255784625259', '$2b$10$TucaB1mSrPMl5xvBVnQ2u.kbw7M5WaFKYfxLBksihIqs9WsycdYfW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'KSbChM4OuYcr_PARK', 'MC678DRD', '4004940751', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:50:36'),
('gF1gs1ybfVtd_DRVER', 'Ibrahim', 'Yasini', 'Yasini', 'no@example.com', '255687549911', '$2b$10$TVV2/72G2A7LEFGzXaCpfO0mSm10d2HFSAicwb68gZx7TeDV96Kly', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'dPkWDNHoiMxc_PARK', 'MC517CBH', '4002580940', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:20:54'),
('Ghf5saF1Zj5d_DRVER', 'Paulo', 'Hirily', 'Makongoro', 'no@example.com', '255693113398', '$2b$10$bV.CIszIIBpBkzD8e6S/oehNWTe7ksw4JDnpKrbIaanqFjt8if3B2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'cw5bJODebF54_PARK', 'MC596DGK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:13:15'),
('ghGH2S6JfMsh_DRVER', 'Dickson', 'Komba', 'Komba', 'no@example.com', '255745222484', '$2b$10$FIi9BY1Q4NT0maYpO0mh6uFDzmyRlvNRu7O0YBboFfmZeQ5duI0uS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', '5XdJkCrH2sCP_PARK', 'MC400CMD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:29:54'),
('GIegBpIkmZeZ_DRVER', 'Juma', 'Sharafi', 'Sharafi', 'no@example.com', '255712000001', '$2b$10$CFwmm1BhK.mx0ullZrYzDO8cLVV5ACnelCPR5iBAoq112k2R.0KhG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KANONI', 'sp5bceHAxB2W_PARK', 'T123AVB', '12327171', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 05:18:10'),
('gKJ2mtn3tdQw_DRVER', 'Maneno', 'John', 'Tulimanyagwa', 'no@example.com', '255715353639', '$2b$10$eVqqbkGGatihnPhucFDGMuFKvJmfX5whyVk/FSpI37dDijekX4bn6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'j01Cm7TVXfQG_PARK', 'MC379DGA', '4001942860', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 08:16:54'),
('gKVXT3CahoTY_DRVER', 'Saidi', 'Rashidi', 'Rashidi', 'no@example.com', '255782817015', '$2b$10$kzNGJ.aCpCX5aALtjcbCE.f8T6mUcm599kfF0RG/mnLhk.Z7lV3my', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'j01Cm7TVXfQG_PARK', 'MC896DLJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:17:37'),
('gkWs0yXIWGjD_DRVER', 'Suleiman', 'Hamis', 'Hamis', 'no@example.com', '255687907975', '$2b$10$uAZZ4qBfyHzfjFXI4PmweuDilPFhyRwv2arN3.2oaD2VOfO.Gr5Yy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKURUMLA', '0WL6I7LTF3eJ_PARK', 'MC584DJM', '4000120972', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 11:55:25'),
('GNe0bHMhAV2b_DRVER', 'Yohana', 'Selemani', 'Selemani', 'no@example.com', '255674661986', '$2b$10$Px15AmJaMuFguQXOJsHGmuO9AAnXbHTOHj50js1pNPc8nd4WgjrV2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'nMEqLXzEO9wJ_PARK', 'MC317DWB', '4005203289', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 08:05:35'),
('GOEOUw68Btpt_DRVER', 'Shabiru', 'Ally', 'Ally', 'no@example.com', '255784899933', '$2b$10$sxC0TF5ogOE3zQ/AQjYtZ.I7/FGQg41BrSI53Cl5C87yFTMyqF8Cu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC762DNG', '4002541544', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:01:31'),
('GOhQgcNejvZK_DRVER', 'Hamis', 'Said', 'Said', 'no@example.com', '255718700732', '$2b$10$b8jHEnLFt52DSIlTQUwrheYGidxvRjxTga6Wmk4OpFX7yWsJAe6Ry', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC560DJC', '4001124569', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:11:25'),
('grIqXtrOlsGx_DRVER', 'Omary', 'Hatibu', 'Hatibu', 'no@example.com', '255744430441', '$2b$10$4IMDxHgVBppU5e3yKoJdauKMnt/BRe5K2yqEvIU.R0xY79sB0sJqG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'A6bwD22v5ld9_PARK', 'MC282DHE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:55:14'),
('GS0JF9yuRmYU_DRVER', 'Bakari', 'Ally', 'Ally', 'no@example.com', '255749928508', '$2b$10$Fc6w87Kuft4.pgAY8FYE.uGx8OUhzZWRsqK25Z85m1AT34uGEDZ9u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'nMEqLXzEO9wJ_PARK', 'MC586DSZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 09:47:17'),
('GSMbafGRPWGB_DRVER', 'Chacha', 'Nchancho', 'Nchancho', 'no@example.com', '255764280280', '$2b$10$81MDVsYdFR/atlYvgJdcieqrqPoHOb.mF2U2M04R.Kh91Lde10tAW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '02suTLI5aVrY_PARK', 'MC887DKX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:55:32'),
('GTpkKMVo6CbO_DRVER', 'Yasini', 'Mohamed', 'Mohamed', 'no@example.com', '255684701182', '$2b$10$CpWcZSM7PZnLR3TSEm2I6OyPOK4SNkqpp7YpnL5e/7WIw268SgOSO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBAMBA', 'WXlZq1JIxwui_PARK', 'MC879CLK', '4001696846', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 08:32:39'),
('gvr47E9fNWor_DRVER', 'Gidfrey', 'Emilias', 'Emilias', 'no@example.com', '255689948096', '$2b$10$ro5hdFWkr/pPI.4/U2DaR.WYeMSOTc6zN2cRdweCo3ElH63627P6e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'A6bwD22v5ld9_PARK', 'MC330DUU', '4001299893', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:51:44'),
('GVRGIFeoMoa2_DRVER', 'Kelvin', 'Magwaza', 'Magwaza', 'no@example.com', '255683326702', '$2b$10$g9c1IYHtQFM9j.rQvERkiuG.c.wUf73SVIyecaLiUipK9UoxVASfC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'dPkWDNHoiMxc_PARK', 'MC582CKE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 05:04:36'),
('H0QF1iiYMvLD_DRVER', 'Athumani', 'Yusuf', 'Yusuf', 'no@example.com', '255712058610', '$2b$10$rWZDukJe4KFQA.8iWxOHbe5RuQ30osygkBEmSnZ9QQJkioFDSYuRO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINONDONI', 'UL09soxnhaZU_PARK', 'MC176CCT', '4000826211', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:03:16'),
('ha5sfptpXVfy_DRVER', 'Hamza', 'Omari', 'Ngunga', 'no@example.com', '255787275167', '$2b$10$ZoDlkuwELDVHTiWJIA0v9.AU5efBZE79oeGmmYw2OI2HascLwC4Ze', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', 'cw5bJODebF54_PARK', 'MC447DNT', '4001111123', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 10:51:02'),
('HAViWuasmnCi_DRVER', 'Naingo', 'Charles', 'Charles', 'no@example.com', '255658135480', '$2b$10$i5oF70CCvoUQqr/qMRIbxuC7NFoH7K2HXsiHTeKZmghcVjiE3HW2a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', '0kyMILnpGwWP_PARK', 'MC660BYG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:29:37'),
('HbEjixE8W0MW_DRVER', 'Hassan', 'Shabani', 'Shabani', 'no@example.com', '255654197878', '$2b$10$EksoKMDz0LZYufLE/MkTp.SZxpm5WtM.MMuWdEpqUnMMvVzBQ9dri', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UPANGA MAGHARIBI', '2dTgMy11XIFX_PARK', 'MC877DQA', '4006605789', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 07:20:57'),
('HbphXjo79gAA_DRVER', 'Shabani', 'Ngama', 'Ngama', 'no@example.com', '255783244019', '$2b$10$GLzGhYzgm47C4LiG3fPOY.clpuuhFyYeB3APhizhF08jmNjWDPVuS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'dPkWDNHoiMxc_PARK', 'MC713DDG', '4006671996', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:52:52'),
('HDLgyx714aHS_DRVER', 'Abuu', 'Mahamud', 'Mahamud', 'no@example.com', '255653936690', '$2b$10$tZjdJhlJtC.NOTuDqXuqgOl7Am2PQq4Tpdsm/3twf9.EvxZtw5aY6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', 'A6bwD22v5ld9_PARK', 'MC947DCS', '4006850008', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:49:02'),
('HfSgK0ivIhum_DRVER', 'Kalenga', 'Umaya', 'Umaya', 'no@example.com', '255787910307', '$2b$10$YZjP9kVVAN2cfFnbrUMwb.74V5IyOBIslteLgroG1hcV.7Oy2S5um', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MJIMWEMA', 'cw5bJODebF54_PARK', 'MC984CPX', '4000289261', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 10:54:25'),
('HgEnC4731fHu_DRVER', 'Charles', 'H', 'Chumuika', 'no@example.com', '255689336351', '$2b$10$T9KMQImmCCWaEze94w9/lez9ptBIJ5bKDds8fMuFDURNd26nC.R7K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC292DRH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:12:50'),
('HgVdPBQGgf0l_DRVER', 'Michael', 'Japhet', 'Japhet', 'no@example.com', '255687211521', '$2b$10$M2Kry2lfWDBM2MAnRBhh5eAqStm9LZNG58DS/nj0PJEAUurpCZDM2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC121DUJ', '4000241278', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 09:35:46'),
('Hhl835Njnjq2_DRVER', 'Eustachius', 'Kajuna', 'Kajuna', 'no@example.com', '255788202930', '$2b$10$G1vNt9JDrbWeI6htQ5LrUeB/IMcDU4RVx0/rCqkP6emVE07j.gm6i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'KSbChM4OuYcr_PARK', 'MC301DSR', '4005279102', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-30 09:54:39'),
('hiV2yHiy1P8v_DRVER', 'Samweli', 'Manga', 'Manga', 'no@example.com', '255629190990', '$2b$10$5eJAKs/Mv2RKy0SfT5OQtu0vtjnpA5vOA50I5Br58nwQBEGYOgu5u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'cw5bJODebF54_PARK', 'MC571DLY', '4006450981', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:17:51'),
('hIyTSAucfxa9_DRVER', 'Nyangus', 'Gidion', 'Gidion', 'no@example.com', '255766489380', '$2b$10$Da1H9yvTX72bc8aXrlzjCu2VrkGQ1Xiq3AXXiQHe6ZVdBojR1ef6m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '02suTLI5aVrY_PARK', 'MC476CER', '4006041628', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 03:19:15'),
('HJZNV6K6mEgM_DRVER', 'Ramadhani', 'Bimo', 'Bimo', 'no@example.com', '255672561771', '$2b$10$qSvV0IPQAfzZuiJ9.4SxDuqQdp0Zn562wrWt8hTLs0MEYNOMX8TnS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'LUKANGA', 'bncNWzVh24hB_PARK', 'MC666DKV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:30:03'),
('HkalwgIbMM9L_DRVER', 'Rajabu', 'Rashidi', 'Mvaa', 'no@example.com', '255659514891', '$2b$10$xRNmZ8GtGwdXXUPWzIdCkuPj/2H7i1grPjo9/Ma67edpM6VYVyLaG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'aeBWtJmiYL5E_PARK', 'MC391DPA', '4003048941', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 08:16:12'),
('HMKQ3jgi3tPp_DRVER', 'Pasco', 'Mihayo', 'Nshilikale', 'no@example.com', '255656875888', '$2b$10$RKY2kBTmOo6MlvnUFu4.W.8FQ5A7YPvSf./cgKzczhOOpZTfB07Lq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', '2dTgMy11XIFX_PARK', 'MC397DBM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:54:54'),
('hMqIkkPpAv6T_DRVER', 'Erney', 'Michaely', 'Michaely', 'no@example.com', '255765080858', '$2b$10$zym1WVsw4OosoAmcs5p0f.eTUAkKMFui3GlNlYWF7Dz5.ulitqLte', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'TbkAOqQjgkWf_PARK', 'MC662DSX', '4001241256', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:37:16'),
('Ho38SwgUFIAX_DRVER', 'Abuu', 'Salum', 'Salum', 'no@example.com', '255714043326', '$2b$10$RF3dpyiLZ0MtTxMy3N13/uaApv89zsNnoXgdDT2/JJgiG9DrMcgyK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', '31KR62AnklbN_PARK', 'MC535DRA', '4001838436', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:46:29'),
('hoaUsh6DEYNp_DRVER', 'Goodluck', 'Mosses', 'Mosses', 'no@example.com', '255716800666', '$2b$10$Xpjw4o7dv/4y62KZPa4T9.GdwqL/pjKPyG.oMt.viynPwbELwcD4K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'tZG8I6XnU13x_PARK', 'MC902DMR', '40051379990', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-17 12:24:07'),
('hoOtD8ivBiTy_DRVER', 'Hassan', 'Bakari', 'Bakari', 'no@example.com', '255715919543', '$2b$10$AMAanni1dY4mbTU3Pe7Mku8vn4PotuWFYrVv5FzbxIL7RcohsrEDW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', '5XdJkCrH2sCP_PARK', 'MC892BYW', '4006803688', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:15:52'),
('HoSAzxN8ksy4_DRVER', 'ABAS', 'SHABANI', 'SHABANI', 'no@example.com', '255787436022', '$2b$10$KDrAuNXvWu1AUr9Xr2HRE.0A6nuDYo38AC4MCQ88WrzmO1wF3Hbhq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', '5XdJkCrH2sCP_PARK', 'MC328DMN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:34:49'),
('hPCYje20d1Ov_DRVER', 'Izaka', 'Sanga', 'Sanga', 'no@example.com', '255765323546', '$2b$10$/.crvLtwNQta31LVkfmfHe7A2u.XOCCLvx6krTBdG1pveDre7Qbfm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', '5XdJkCrH2sCP_PARK', 'MC632CHN', '4003092622', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:57:08'),
('HPdXOu5mVxKU_DRVER', 'Renatus', 'Nicholaus', 'Mpatile', 'renatusmpatile558@gmail.com', '255715470853', '$2b$10$e.OhRdt7BtEMQGd1Lrgc2umvbGNDSuZvaxs0SvJ7Sk/YgY3EspfQ6', '2006-02-11', 'Mwanamume', 'Nimeolewa/Nimeoa', 'posts, dar es salaam', 'dPkWDNHoiMxc_PARK', 'MC 234 ACX', '400043252', 'notset', 'NIDA', '19940530543723852', 'lpFmkuUFPjYLduIl5N6RhdT2mLaQsEu6_IMGMAIN', 'uaYdA4ruXQpvOTNw4pBhEI670p7EaZ0p_IMGMAIN', 'no', 'gsfdtdtg73535HGSud', 'Alfred Donald Rukatila', '255712902927', 'created', '2024-02-07 08:32:43'),
('HRx2NxAiDmpe_DRVER', 'Malicha', 'Nyang,ombe', 'Nyang,ombe', 'no@example.com', '255763779775', '$2b$10$vPriDkW3l.PUFe0nKQnn3.mHwVY7q11261oZ/UjyLwbwSY0rTaPru', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'cw5bJODebF54_PARK', 'MC662DLR', '4006888485', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 06:55:36'),
('hTonnCHi4x6A_DRVER', 'Moris', 'Edwin', 'Edwin', 'no@example.com', '255657648987', '$2b$10$o/JRGzHli2/pHAWx1LQsnu31pv2cD83t53gsnTgJQYTUIdxV3MLA2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'kStcaD5Tbwy3_PARK', 'MC442DUR', '4000245729', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 08:24:12'),
('HumMSVnzFblT_DRVER', 'Mdhamini', 'Kennedy', 'Kennedy', 'no@example.com', '255657996195', '$2b$10$WrV2VCCbFAXeR3.gG41yUO1ds6Ulu5DMasLD/RwjUdMWY5ZWcwjhC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'cw5bJODebF54_PARK', 'MC142CQF', '4001241986', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:56:46'),
('Hvs60JEQnlw8_DRVER', 'Aziz', 'Wakati', 'Wakati', 'no@example.com', '255692138670', '$2b$10$EmQakeAVe.RC6zay0mH32eUIXZ8ZvvFiA6pQu6ib4Q8klm7Vhaa42', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC965CZX', '4000173981', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 08:46:07'),
('HvxpMEpYmPri_DRVER', 'Suleiman', 'Kassim', 'Kassim', 'no@example.com', '255679163678', '$2b$10$7xpXqhZCK1PBBAAOMi0Gy.PN1lrjmx2zy1FgbTixp2EgrxtFlHLqG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'bncNWzVh24hB_PARK', 'MC254DRX', '4006952149', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 07:28:37'),
('Hw5ScDvEEZT1_DRVER', 'Juma', 'Likundumbwi', 'Likundumbwi', 'no@example.com', '255716252913', '$2b$10$KBuz4CjrPyYa17qTn3qoh.MyH8jRDYl7xjtgmxvgY4DN9CoL/MUxa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', '70rWw5tOi1Q5_PARK', 'MC924DJJ', '4001476670', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 11:24:45'),
('hW65uUVaUkB8_DRVER', 'Ramadhani', 'Habibu', 'Habibu', 'no@example.com', '255752656574', '$2b$10$PgwiyQF0RwOu7S21b5lNJ.Ga2A4hOlcV90ZlwWhQNR643dznLdVDm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'OiZ5inFpcTde_PARK', 'MC141DAJ', '4000897483', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:40:23'),
('hwvMVGXDrYh1_DRVER', 'Michael', 'Everist', 'Riganya', 'no@example.com', '255718032979', '$2b$10$Pgqo52Dczae3eiZunMXgWO9jVT4lrgzUNf5eC/sGRL0Z/qT3jwC6S', '1974-01-07', 'Mwanamume', 'Nimeolewa/Nimeoa', 'ilala', '31KR62AnklbN_PARK', 'MC 560 CHA', '12345688866', 'notset', 'Sina', 'notset', 'notset', 'gYCJ6QZc7n59nXSGytScMJfy8qNG7T1S_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'active', '2024-01-17 12:01:47'),
('hXDv9c0yTTKl_DRVER', 'Benjamin', 'Robert', 'Robert', 'no@example.com', '255715251185', '$2b$10$4hbuKzNF/AdNV/WXWmoJMOos4olSY..R3hhRF.o0Uy1cKsT/NVALS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', '2dTgMy11XIFX_PARK', 'MC741BHZ', '4000797842', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:36:48'),
('HXNp4XIzcXLa_DRVER', 'Uliza', 'Juma', 'Juma', 'no@example.com', '255713748105', '$2b$10$3fcup3pxJ17RP3RqfsiKJOpDidNboB1YoDIb.AHR3pQeiFPIRgRSa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MKURANGA', 'WXlZq1JIxwui_PARK', 'MC265DEF', '4003613000', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:19:34'),
('hzfytTf6g791_DRVER', 'ALPHONCE', 'FIDELIS', 'MLELEU', 'no@example.com', '255714078290', '$2b$10$LIuMG0benTTIjwsPkbnMEeOA98.8JZ3aPP8dgRlkMAfJg31/jXf5q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'aeBWtJmiYL5E_PARK', 'MC214CRU', '4000182373', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 08:41:00'),
('HZrI9UimyyX6_DRVER', 'Salum', 'Juma', 'Juma', 'no@example.com', '255784600911', '$2b$10$4iePm/47/O6kmkbbBUDwNuZGTqEHyM90AVfxlBKeIb.RL/t86wduK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'cw5bJODebF54_PARK', 'MC849BSX', '4000021022', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:24:43'),
('hZxjrr7udN27_DRVER', 'Ramadhani', 'Rajabu', 'Rajabu', 'no@example.com', '255678223811', '$2b$10$z7tNaSgGF/ejbOCC385ha.Tw3xCL4YD9ywjg0FNFUdLMHFeqiKffq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC194DMM', '4001877361', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:34:18'),
('I058JtUkZlPY_DRVER', 'Shukuru', 'Sufiani', 'Sufiani', 'no@example.com', '255742359999', '$2b$10$OzR94ncuGaS9qZRDkq6wXuiborucBrkCWYYc2fRi.t3LC1QO6Lpe6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UPANGA MASHARIKI', 'oFwNHpyClQvE_PARK', 'MC183CHF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 07:48:01'),
('i18iVOB4A9xi_DRVER', 'Awadh', 'Khatibu', 'Khatibu', 'no@example.com', '255715181606', '$2b$10$lon//OONK1SwMlCjKwSX3uyrSBeCaeYB1.xHXcoLaEEdsLYllxn4.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'dPkWDNHoiMxc_PARK', 'MC898CYP', '4001106151', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:54:16'),
('i4Ocb3slxCJf_DRVER', 'Ramadhan', 'Seif', 'Mwegio', 'no@example.com', '255654619471', '$2b$10$NIUIxZFuo5/0cxtQp7y6Pe1vZ6P6MM2ZGT2ao8xf8EyfTRUxPxjzu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'aeBWtJmiYL5E_PARK', 'MC501DUF', '4000049242', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:31:58'),
('i4Sw1y4SF5U5_DRVER', 'Twaha', 'Kassim', 'Kassim', 'no@example.com', '255655091066', '$2b$10$nvf5xG2nBx3Xt2QZybhkje6CUH0WGW46D8VEd4aY5R/aKkWRb59la', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'dPkWDNHoiMxc_PARK', 'MC384DZL', '4002135133', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:45:52'),
('i4UYt24FPDIB_DRVER', 'Jalia', 'Akwilini', 'Mushi', 'no@example.com', '255717682257', '$2b$10$f9tpt9Y3QOKihafEfyPPyu1bcjcQhdO1a87wFPtD2xi2AI/CHTQPS', '1993-12-12', 'Mwanamke', 'Sijaoa/Sijaolewa', 'tabata', 'doTbqRpQ6exA_PARK', 'MC 719 CZE', '4003724105', 'notset', 'Leseni', '4003724105', 'JqDboQI4qRMB1Vd7dsWkjKlFiIO5mgvK_IMGMAIN', 'BZqXMWLk5rASCEjsOMzXSW4truqHnQ0l_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Abela Alexander Ndibalema', '255744682257', 'created', '2024-02-24 10:21:01'),
('i7jP0y0z3hyb_DRVER', 'Elias', 'Matiko', 'Matiko', 'no@example.com', '255786021077', '$2b$10$M/ED118N5FdNlhgqBNfKneduOAeKbyHjzuCO3LbMHAoWPWUy0KVbe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'dPkWDNHoiMxc_PARK', 'MC430EAC', '4005702126', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 03:45:21'),
('Ia9XgFohIZtH_DRVER', 'Yohona', 'Thomas', 'Ooko', 'no@example.com', '255692885863', '$2b$10$8CTjqWcjjwBmLaEGt7uy6uziqyTVfxhLhA5eHZ1cyXG3gBrEEdLy2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC899DKX', '4002561407', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:43:17'),
('iFBH6uJslghs_DRVER', 'Mustapha', 'Swedi', 'Swedi', 'no@example.com', '255713640645', '$2b$10$cs963h2EfIzkr32.w.in2.K5.qn4EBGxFY8Pw8nNqVkZSCiRAtRQq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', '2dTgMy11XIFX_PARK', 'MC738DJA', '4001421316', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:06:33'),
('IkKCnfDfrsc7_DRVER', 'Abdallah', 'Selemani', 'Selemani', 'no@example.com', '255659302940', '$2b$10$g6l.cekyD0PC5uUh4l1nwuf1CuQ0TCafMvlkzr14AYJjVodMB9ty.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIPEKO', 'cw5bJODebF54_PARK', 'MC753DQD', '4000826217', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:47:21'),
('iKTGCzayqfFM_DRVER', 'Emanuel', 'Nyangi', 'Nyangi', 'no@example.com', '255784419667', '$2b$10$0aAo93zks1l11GQe9FKTGO5eSpUgPDPBU0cCfIe4Iwe7gjClTO83u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'bncNWzVh24hB_PARK', 'MC904DUX', '4006847048', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:53:54');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('ilurkUsehywq_DRVER', 'Alhaji', 'Yahaya', 'Yahaya', 'no@example.com', '255713322353', '$2b$10$sO14M5LKGLTngPZAh7eCEu3Q8mDcJ8bgtDRKwoC4hpWTN6Rs6oFL.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'A6bwD22v5ld9_PARK', 'MC793DGF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:27:12'),
('ilZJEeSTesMH_DRVER', 'Mikopora', 'Bakari', 'Abeid', 'no@example.com', '255712862153', '$2b$10$OWoaHc.Rh38.Gn5pM10Gju3zZxMjZEgtMnfNf6Xc3Ca26/xTXCWa2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC151CAA', '4000421847', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:16:31'),
('imVtXxNdOk3y_DRVER', 'Hamisi', 'Rajabu', 'Rajabu', 'no@example.com', '255715008282', '$2b$10$ezG8xsEAKKo1HZQ7Yy6qs.4aKIYpibgVtsohyjOJNNQiP9uaFtGeG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'doTbqRpQ6exA_PARK', 'MC984CYF', '4000513585', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:12:46'),
('iN3zLAU1n6FP_DRVER', 'Selemani', 'Hassan', 'Liwangala', 'no@example.com', '255749969095', '$2b$10$YHfw69hCikXehDsPYklK3e/Koxw926D1RZLEWL8PYx1PEwIDEYNdG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'QR20w3XwPn7e_PARK', 'MC968DEZ', '4004504659', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 07:26:35'),
('InFgkmA6MhKb_DRVER', 'Ndagiwe', 'Elisha', 'Elisha', 'no@example.com', '255716649803', '$2b$10$Gv9LwKEWS2w9KZ9GUbTqyOA52cUdyGAsHpAI2tjCciF9U40dFFFvK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'dlA4LlB7B3LL_PARK', 'MC401DGV', '4006880542', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:24:05'),
('INsrmiM4LlD7_DRVER', 'Fihili', 'Hamad', 'Hamad', 'no@example.com', '255783538331', '$2b$10$XVCx3zZweazhjr2RnGm79enGOWvEBg59H587RSGXXztPSF.D0ioL2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'JANGWANI', 'dPkWDNHoiMxc_PARK', 'MC240DET', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:18:23'),
('IoFZcobCGQYt_DRVER', 'Salum', 'Shabani', 'Shabani', 'no@example.com', '255715969634', '$2b$10$AtDjrIz1DPMYntECg/MhHOfRaEP.cWI1BKdGTRVQ40cWW8L4cMFmi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'EpCatERKC6hm_PARK', 'MC855DML', '4003229895', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 09:42:05'),
('iOimmS0hkKzM_DRVER', 'Abdalla', 'Ally', 'Kivuma', 'no@example.com', '255715300007', '$2b$10$jaoXqdGvHs80B69NQB4LV.Ol7ige7T3hgBz7IkLZRqsQmeHg4XkYO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISARAWE', 'SRsKwzEYK9Eg_PARK', 'MC714DMS', '4000244358', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 11:02:23'),
('IQhySKZyagiw_DRVER', 'Emmanuel', 'Julius', 'Julius', 'no@example.com', '255678377430', '$2b$10$IU9WHRSDrjQGv6Ly.UOiueFi5pHW2evBDbQUkfQPMuzoxuzb7iZsa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', '2dTgMy11XIFX_PARK', 'MC180DAM', '4006253341', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 07:28:55'),
('IqKj3RKFz0OR_DRVER', 'Tuliza', 'Ramadhani', 'Ramadhani', 'no@example.com', '255686222258', '$2b$10$PH4QcugqD.22IrnEVyR0zea6lJ81Yz25eQjNDUGnma6dgL0Qo9lyW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'dMPDSyj5WSzj_PARK', 'MC185DLP', '4000389371', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 06:10:25'),
('Ir2VOZjQ5QhN_DRVER', 'Jackson', 'Boniphace', 'Boniphace', 'no@example.com', '255769548588', '$2b$10$2aIz1DrTFqUMkvZS9ibxBuzFMzJqdNQV/H9wJ.k9nwA4.4M.RfXmu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'doTbqRpQ6exA_PARK', 'MC664DHR', '4005196651', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:45:26'),
('IrtmEhEG6r9z_DRVER', 'Ramadhani', 'Idd', 'Ramadhani', 'no@example.com', '255692748335', '$2b$10$EDbxhn.Y3denGYT2vgnuVe0mejFkfPUftqz2RXzbtfw0M9Njl7Th6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'UL09soxnhaZU_PARK', 'MC303DMF', '4000700605', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:20:42'),
('isetSdxikdh4_DRVER', 'Athumani', 'Swalehe', 'Swalehe', 'no@example.com', '255712429354', '$2b$10$P.asI5UR2jhPf2aDljtJsOOiJY7UAvnFqzbkN2HVUWT.zpfqHVcGu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '02suTLI5aVrY_PARK', 'MC361DUU', '4000038238', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 08:40:57'),
('IstEk1y2EJRD_DRVER', 'Zuberi', 'Idd', 'Idd', 'no@example.com', '255658589770', '$2b$10$2zWUvyOw9VOnJxnDE5n80eFXOZvXvwm0YcYxGT0f3cmAhswNxzyBG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'nMEqLXzEO9wJ_PARK', 'MC442DLN', '4006336257', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:05:58'),
('iUWZEIQN1Crk_DRVER', 'Hamis', 'Shabani', 'Shabani', 'no@example.com', '255769400401', '$2b$10$9whZVGiHA5OkoTDy5DJwEOe8rwZD7giEvKILoXeh3niOlYK3AdZPG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', 'KSbChM4OuYcr_PARK', 'MC458DWB', '4006843752', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:40:49'),
('IXQHd2SDJ27x_DRVER', 'Shadrack', 'Ogati', 'Ondieck', 'no@example.com', '255689997399', '$2b$10$0iC/0KCuI50Vd4kpEykpteB8p3TESnHdBEmzYFgP77GQvtpc.pE7a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'KNU6xYqnXWmL_PARK', 'MC440CEA', '4004481995', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:38:21'),
('iZ7ju9pwqQHF_DRVER', 'Abdul', 'Shabani', 'Shabani', 'no@example.com', '255759567441', '$2b$10$qSSW6iCtqxHtX4IUOBLlUuxaApaWJVmH1FDJuBvIhYgJHzCEv2Vf6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', '5XdJkCrH2sCP_PARK', 'MC439CRS', '400636480', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:44:51'),
('j2wGWstuR2yK_DRVER', 'Jebras', 'Sebastian', 'Sebastian', 'no@example.com', '255715123647', '$2b$10$.0LyCMZVTOmUe6AJKJbmMOJC.oejTaGXQhqca4MNaq8cv8VXiSuyG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', '2dTgMy11XIFX_PARK', 'MC363CUS', '4002214253', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:00:55'),
('j3cSIW8LgdqM_DRVER', 'Isaya', 'Jumanne', 'Jumanne', 'no@example.com', '255788562073', '$2b$10$K3ncL1fnFwzlz7.OyATzE.UCX0i.sJgkTHOYfnoI7cQgdC5P6N/ca', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'dPkWDNHoiMxc_PARK', 'MC382DHH', '4001275077', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:58:14'),
('J3gZrVSrdDtI_DRVER', 'Ibrahim', 'Said', 'Said', 'no@example.com', '255686450290', '$2b$10$sspLU0SfJlUZEBUipox0d.QUu0wYNhTJBpHTB.xYZdqogTpIrv69O', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC759CZD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:39:04'),
('j3vk0bcfkZNX_DRVER', 'Japhet', 'Jonas', 'Jonas', 'no@example.com', '255744355470', '$2b$10$cwYSwZCDJ1DDTFjwEk1vL.cFDGNfF1/GT/GHAsSFuQNTRUnbNeywu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'AZIMIO', 'yMLw9kHalHtP_PARK', 'MC129CQW', '4004902224', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:56:04'),
('J42t8q2mMd8S_DRVER', 'Hamadi', 'Idrissa', 'Idrissa', 'no@example.com', '255718778924', '$2b$10$37A.EisQvFjhCyWq4/VzpecSipeNwW4.l2A7vai/8L5bE6bXIYDDi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'j01Cm7TVXfQG_PARK', 'MC588DMM', '4006286113', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 06:21:25'),
('j51c36sjV8Nd_DRVER', 'Geofrey', 'Justine', 'Justine', 'no@example.com', '255744912621', '$2b$10$EDjenNj1M2dnqzXrHuRYxOHObIcovvZ0YZ8174eA0X1r69iSm4tlO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'dPkWDNHoiMxc_PARK', 'MC194CZK', '4000163165', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:47:15'),
('J6h6sxBcrwjc_DRVER', 'Kassim', 'Omar', 'Omar', 'no@example.com', '255784214103', '$2b$10$vQmfr7NoJ8ms4XakC6smKeJwuxRDmFy3cAT2qlwy4OIBJ.lg42IFi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'tZG8I6XnU13x_PARK', 'MC561DRC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:07:01'),
('J8DyHhTFIznx_DRVER', 'Abas', 'Rashidi', 'Rashidi', 'no@example.com', '255787828454', '$2b$10$NzgMbFxHhx8g3d/EgRyZbOUzg0NL/iWQ/0hUkXBODz3FasfFC5BWe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', 'doTbqRpQ6exA_PARK', 'MC910DUB', '4002121082', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:15:53'),
('j8qZKLSBVprT_DRVER', 'Ulaya', 'Hassan', 'Hassan', 'no@example.com', '255628885474', '$2b$10$XMZudPYJBbKQ0EsdQq/qyeNXToXD7iGvCY5b57cSh8BAQUW04f5te', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'A6bwD22v5ld9_PARK', 'MC759CRR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 06:23:44'),
('JauZ0VxUPfEN_DRVER', 'Hussen', 'Juma', 'Mteku', 'no@example.com', '255674071236', '$2b$10$4zQcMUXQjJ4fwvzl1yR8s.QO3gPkORBIq.LvF7E2ySkHzjMakdKLG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'Pdw3doO7tHQp_PARK', 'MC636DGA', '4007104845', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:26:30'),
('JBHQWnpaQFa1_DRVER', 'Daniery', 'Aizak', 'Aizak', 'no@example.com', '255767838183', '$2b$10$hBDB.QFU1jD/iy.9wIv4keVaAFqZtCwOT71EgLAgXZp9Q56UD2Ws2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'j01Cm7TVXfQG_PARK', 'MC522DRA', '4006867470', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 08:02:14'),
('jbZzYq4MA4zg_DRVER', 'Shabani', 'Juma', 'Juma', 'no@example.com', '255783818266', '$2b$10$CCHD1kQGNVj0h5mBRyFdPO6xh761FbB/hGTSi30.lpq1ucRYJMEHa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'JrtiDorkKLSN_PARK', 'MC643EAQ', '4007020589', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:41:25'),
('jdPwxqO3NkhN_DRVER', 'Lemigius', 'Christian', 'Christopher', 'no@example.com', '255687499935', '$2b$10$OWAElwS2JUo5XaEjYOjtXOy0.6FsTRjb7lxmEY8aWnUlKbcq.78Me', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISARAWE', 'SRsKwzEYK9Eg_PARK', 'MC967DYU', '4000385277', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 12:45:17'),
('jdZOArOM4dqv_DRVER', 'Antoni', 'Daudy', 'Daudy', 'no@example.com', '255713925499', '$2b$10$A2DxFYwJ41t1N165rcP0reG6QqQQN1iA5Rk89P9Me45STLkRgO.0S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'j01Cm7TVXfQG_PARK', 'MC306DCZ', '4004471941', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 04:42:47'),
('jeCmd7SH4d7H_DRVER', 'Andrew', 'Livangala', 'Livangala', 'no@example.com', '255718113999', '$2b$10$AtBSw2GownbIMDNyoeS4/u7bsjT8vNmM3EYVTQrBBZWnSmptt85HC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '02suTLI5aVrY_PARK', 'MC295DXH', '4006846076', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 09:58:54'),
('Jg4YtRZKeVkz_DRVER', 'Yahaya', 'Muhidini', 'Shabani', 'no@example.com', '255786982892', '$2b$10$K8h1PUAYDPk.JpYqWt9cmeRnCA701xBZhxvNPJ1ewBLT/t6grH5me', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', 'UL09soxnhaZU_PARK', 'MC662CCS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:02:34'),
('JgqXPDjDbElR_DRVER', 'Michael', 'Afeli', 'Afeli', 'no@example.com', '255788606467', '$2b$10$YjQ4Cf8DJhnQbGkCWF1w9.gvLkGHf0rY.ify6Mzt3XcsYQQi11MSO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '5XdJkCrH2sCP_PARK', 'MC908DQK', '400712537', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:41:13'),
('jKQ4FH4gIHG8_DRVER', 'Alawi', 'Chilumba', 'Chilumba', 'no@example.com', '255718777274', '$2b$10$76KqRMXSo3lGbtnXMwEIN.OLIGndgHIznR1/TIMQuNuKL6UnHTsuu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MKURANGA', 'UL09soxnhaZU_PARK', 'MC990CYF', '4003539781', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:29:22'),
('jloVbYS4O5FI_DRVER', 'Ismail', 'Saidi', 'Mkande', 'no@example.com', '255763933545', '$2b$10$5HwfcsMMx8fz1zkE9t1He.0McBV0BtLwcqDjo6PvB7ptRHzlfyr.W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'LIWITI', 'A6bwD22v5ld9_PARK', 'MC160DEG', '4000483836', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:37:00'),
('JM5FUFR6VECc_DRVER', 'Ayubu', 'Ramadhani', 'Ramadhani', 'no@example.com', '255676014324', '$2b$10$0lCmT7RBBHu2jU2La4uBSOIJZhD9bmtZvowiFB/WGVMGC0G0eEpr6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'cw5bJODebF54_PARK', 'MC351DVK', '4006465740', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 06:37:43'),
('JmhkquNFLYRB_DRVER', 'Rashid', 'Said', 'Said', 'no@example.com', '255687051770', '$2b$10$7hF2AJiEVzDvldxT8AWH3eKyVWz2c5X9VSljBG7h3UthwT1yuFySe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBONDEMAJI', '02suTLI5aVrY_PARK', 'MC383DHH', '4003614815', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 07:52:30'),
('jMRys8IXU39x_DRVER', 'Noel', 'Chakwe', 'Chakwe', 'no@example.com', '255686090751', '$2b$10$EFihFY3opQkFD4rOoyT7c.bXz5kgHbetHwEjd5tWPRKgp.vAfDKOu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'j01Cm7TVXfQG_PARK', 'MC402DRC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:54:18'),
('jnt88D0IAwG1_DRVER', 'Adam', 'Kassimu', 'Kassimu', 'no@example.com', '255682127035', '$2b$10$sUR2wZydf959yCyWDWdtX.VAwherpff6ysdERzqpnnqXi6DbO2MpC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'JrtiDorkKLSN_PARK', 'MC233DVH', '4001576798', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 10:53:26'),
('jnxKlpzZoolg_DRVER', 'Herberty', 'Vicent', 'Vicent', 'no@example.com', '255678466634', '$2b$10$MGRtb4sPlcEKQwa5xuvCmuDD0.v.0gzc9mUb9DbphtziC0Hbn8Xjy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'EZqBvKeM9z2E_PARK', 'MC583CNG', '4006456313', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 12:59:19'),
('JO9ETykPBS0Q_DRVER', 'Bernard', 'Shirima', 'Shirima', 'no@example.com', '255767573240', '$2b$10$1/ZjSMK6MHs3JjPMy.UZQ.bAlCO9nRErvluk7bRZPsySTCluSn2Ye', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KURASINI', 'WXlZq1JIxwui_PARK', 'MC926DVH', '4000226723', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 08:41:06'),
('joCTPl3Cw9xd_DRVER', 'Jakobo', 'Charles', 'Charles', 'no@example.com', '255620278611', '$2b$10$VcoJ1tjd4pKkAECaXNKO8.oqiLLSV8FT3LStURCEU71d0mDtQeZVe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '31KR62AnklbN_PARK', 'MC451DZX', '4006056776', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:50:43'),
('jPJP9QFaZxbN_DRVER', 'Khalfan', 'Idrissa', 'Idrissa', 'no@example.com', '255716261664', '$2b$10$uxRZMd0ErYlPUP.HXWvRqev3SrndwY5Y7V9OrXNNBPkzGmjckFIga', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'WXlZq1JIxwui_PARK', 'MC426DQS', '4001332783', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:27:59'),
('jPmezSvqvTXH_DRVER', 'Issa', 'Saidi', 'Saidi', 'no@example.com', '255624985515', '$2b$10$fTj15TBwvOMDlB6WT0h3WedRWNJYty/DX6LbRu0yXYKht5BQDUDPS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'cw5bJODebF54_PARK', 'MC924DWB', '4006505829', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:36:50'),
('jPWWkyuBd1Ap_DRVER', 'Apronary', 'Yacobo', 'Yacobo', 'no@example.com', '255655949122', '$2b$10$GAsBPnYmooRFuapMKxieL.2i58lmuvYugjObCKOkvbjBYhrv7Gt46', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', 'dlA4LlB7B3LL_PARK', 'MC597DEH', '4006913623', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:24:38'),
('jQQgtcKo13GN_DRVER', 'Emmanuel', 'Chacha', 'Chacha', 'no@example.com', '255674641912', '$2b$10$enUaGGiEZQMYDRFy6fgIu.09pjFDoLl3RGSz6u30FizZ0g0ZbTPA6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'dPkWDNHoiMxc_PARK', 'MC577DVD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 11:56:12'),
('JSWWWrwYylFS_DRVER', 'Majidi', 'Athumani', 'Athumani', 'no@example.com', '255715550509', '$2b$10$L.OYIypIABN0yAg8I5sMMOtHdq1RNx3EOYA3gM/4ZAYO4fTvMyxvu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UBUNGO', 'TbkAOqQjgkWf_PARK', 'MC506CVC', '4005332518', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:37:11'),
('jv1Dr0HDHGxo_DRVER', 'Aron', 'Naboth', 'Naboth', 'no@example.com', '255652286342', '$2b$10$xmr9LrWYjymEEgOg.HRoLulRx.2vP44W38QaKOahj0g1LiwIWzgQe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '02suTLI5aVrY_PARK', 'MC546DRE', '4006273573', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:26:45'),
('JVRa21oSeOov_DRVER', 'Ramadhani', 'Ally', 'Fadhili', 'no@example.com', '255785851478', '$2b$10$qeHjWqABna2DPrNi4Lw66Ol72tM3Eb2p2B7SAtrDANRR1DLis/X4W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '70rWw5tOi1Q5_PARK', 'MC289DLV', '4000233484', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:50:50'),
('JWj8TlareL1T_DRVER', 'Emmanuel', 'Moyo', 'Moyo', 'no@example.com', '255679277994', '$2b$10$qvYffyPDCrDl7NJ3vXnNmuQCyeePDqfZGauOAF4HG7/5xnewUTUba', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'dPkWDNHoiMxc_PARK', 'MC190DBN', '4000212842', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:01:08'),
('JWKGFXv9cMQb_DRVER', 'Optatus', 'Leonard', 'Leonard', 'no@example.com', '255783756876', '$2b$10$eOd7IH2AkYXGsbstF6UaU.X2zwdk8LFlYsaBLKRcxdgN/0sfSih2G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'cw5bJODebF54_PARK', 'MC300DSG', '4006539106', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:20:10'),
('jXfRBr3OsKHd_DRVER', 'Iddi', 'Rajabu', 'Rajabu', 'no@example.com', '255713645432', '$2b$10$J9c2cGMRwIDUMKeM/WrVCefIA48ruswdWJgW.1Fy1tqn5OhmB.1YC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ZINGIZIWA', 'JrtiDorkKLSN_PARK', 'MC866DUD', '4007010550', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 10:34:53'),
('JxtVw7MRI2TO_DRVER', 'Yasini', 'Omar', 'Omar', 'no@example.com', '255686750190', '$2b$10$cn63e9nbJDWCF.0LwEQazemnARmfeCEkb3TuOvsT84qBq3GzwCNe2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KUNDUCHI', 'QR20w3XwPn7e_PARK', 'MC622DSX', '4006892790', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 07:05:37'),
('JXWAaIu8Dleh_DRVER', 'Idd', 'Juma', 'Juma', 'no@example.com', '255659691414', '$2b$10$hbLo0.K1SqHFKB/9Pqbhhuy6QcuKUnKs.SMqy0birR79oJaG5./jC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'cw5bJODebF54_PARK', 'MC815EBY', '0659691414', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:21:01'),
('jYBsXR4oHrI5_DRVER', 'Jamali', 'Mohamedi', 'Mohamedi', 'no@example.com', '255716140822', '$2b$10$Gwr/eFDdXobk09vaiATp2eSlgKi3./0PwNZcDKtig7vVAFHoH2OfS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'bncNWzVh24hB_PARK', 'MC668DMC', '40020878223', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:48:35'),
('JyplYkMAseOB_DRVER', 'Hassan', 'Mwikwabe', 'Ngutunyi', 'no@example.com', '255785230167', '$2b$10$cqDNp86lwbK7NPbup9wU1eYg.CyzoCLLJgD3QWu4goKwKf74KBK6G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'SRsKwzEYK9Eg_PARK', 'MC804DYG', '4004338565', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:08:49'),
('Jz9sDJxQMPBU_DRVER', 'Joseph', 'Babele', 'Babele', 'no@example.com', '255623212776', '$2b$10$0I.eWRSlDokrxiX2cv1yZ.e3iKuRo90hVSHo5pzzwTyZQHEcjzfaa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'nMEqLXzEO9wJ_PARK', 'MC116EBE', '4005777994', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 09:42:24'),
('jzgLm8nbM82W_DRVER', 'Benjamin', 'Paul', 'Paul', 'no@example.com', '255782361333', '$2b$10$PKs4E1.CD4TnSQgfHwbR6eUDXSttyit3dUNReVjMRwZu7qA123p8.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '5XdJkCrH2sCP_PARK', 'MC338DQT', '4004509370', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:09:29'),
('k0ZapesQfn6P_DRVER', 'Simon', 'Isale', 'Isale', 'no@example.com', '255713570186', '$2b$10$N48AS7i7SsPlW4UtuxgwYuGdX6EqTaByX2gDt9itNmeQejI7aAKLS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', '5XdJkCrH2sCP_PARK', 'MC120CKH', '4005980893', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:17:33'),
('k1MJ0pjNA4CY_DRVER', 'Uswege', 'Daimon', 'Daimon', 'no@example.com', '255764112272', '$2b$10$Jvnast9/n9jC80.etyI6x.CLiirLjhIWtLFNqrose3llOX65y.GtK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', 'dPkWDNHoiMxc_PARK', 'MC162DMT', '4001353009', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:07:41'),
('k2nnTCedlbaH_DRVER', 'Mussa', 'Saidi', 'Saidi', 'no@example.com', '255744202055', '$2b$10$6FipohYBN0mbmwsG7eTJHujzRool8FPBr3fsJCtUC6tM.CvgqXIhW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', '7D5Kld7NE5K0_PARK', 'MC777DPA', '4000200746', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 10:40:03'),
('k63hAhE9jMjN_DRVER', 'Ramadhan', 'Kassim', 'Kassim', 'no@example.com', '255789406060', '$2b$10$k7RHBLDX7GcTIHhoExIxp.SrXNgYyzB8kCKJ84AqhacyHADI9roOe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'j01Cm7TVXfQG_PARK', 'MC624DMD', '4000419909', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 09:28:37'),
('k7BlFaT5sREo_DRVER', 'William', 'Saimon', 'Saimon', 'no@example.com', '255788905792', '$2b$10$npxP6OHCh.elBnGVNH3Ysenc5x.9YKVw4EB9Wtux0Q6jD0yxFm9w6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'yMLw9kHalHtP_PARK', 'MC845CUG', '4003701576', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:33:01'),
('K9b35lej3uzp_DRVER', 'Hussein', 'Juma', 'Juma', 'no@example.com', '255654555344', '$2b$10$ql5Xvx66SYi6/bs71VNtGeSSzX3OalA3gLcWqV.ELGfcS4YMZK4ry', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '31KR62AnklbN_PARK', 'MC832CTE', '4000962930', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:27:17'),
('K9zj3LoBUQma_DRVER', 'Mikifadi', 'Azani', 'Azani', 'no@example.com', '255715660538', '$2b$10$2P2GGmzx5R70wqQDaWYZOO8V9Ur9fuN1NBLyDkoFjgsBTM.exps/y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC113DTG', '40004880483', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 05:56:40'),
('KA6ZabOkfvtY_DRVER', 'Shadrack', 'Michael', 'Michael', 'no@example.com', '255693484080', '$2b$10$fzRakaE1rWJVGqB1/74JTu7UIy8aZD95dvGsq2HNKYRdZSM0oi3G.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'tZG8I6XnU13x_PARK', 'MC487DAN', '4006846804', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:18:46'),
('kbb6QJcI2AMS_DRVER', 'Issa', 'Issa', 'Issa', 'no@example.com', '255688817198', '$2b$10$pc.qYMp7tJFSyD6FxYUm8uudjmGtDUXIf3Ci25cy1u3lMyMs3rBny', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'g1lOlgSAOdlU_PARK', 'MC316DVP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 07:27:56'),
('KCpRP86Wh1zj_DRVER', 'Isack', 'Daudy', 'Daudy', 'no@example.com', '255742909595', '$2b$10$SLkFGyqTH90neJK37j83W.d9T/EkR3EE39wA/pFUCllhfuAxVb/4m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC877DUL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-14 08:31:36'),
('KCx1uO6FBxpZ_DRVER', 'John', 'Jerome', 'Jerome', 'no@example.com', '255694070600', '$2b$10$vp01.90/Hx9ovJuug.TX6O5mUa3lnXc6piKx6RTFuZASlQ6dbqBUy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSIGANI', 'kStcaD5Tbwy3_PARK', 'MC640DVY', '4001535264', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 09:36:10'),
('kdzGcI5UPJVN_DRVER', 'Shabani', 'Isumail', 'Isumail', 'no@example.com', '255769134204', '$2b$10$mwYs4dvCbPfgMP4TgX.odebEz3HSTSnB2YXOx2D1YJ/rlK5XlaoZO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'doTbqRpQ6exA_PARK', 'MC346DTF', '4005741109', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:22:34'),
('keyFuu1ajw0k_DRVER', 'Julius', 'Samson', 'Samson', 'no@example.com', '255719933113', '$2b$10$KmrR7RxR2N7P7fbQU.BQre4T6k8E4mpXAzSlZx4VsNd3we.R.GOgu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'nMEqLXzEO9wJ_PARK', 'MC846DYK', '4006027193', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 08:04:18'),
('KezuJ08ZBvSP_DRVER', 'STEVEN', 'TITO', 'TITO', 'no@example.com', '255784780397', '$2b$10$5S4TiEll25Kgek00hydau.ddHEsIsPLfL7wmfsrPnZd3us2tyItG2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSIGANI', 'QR20w3XwPn7e_PARK', 'MC996CMU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 07:21:07'),
('KFiaD9qTeH9u_DRVER', 'mustapha', 'ntangwa', 'ramadhani', 'no@example.com', '255685881332', '$2b$10$vjhESl0Ad9pODBRvHIxKgeSAgQ3Gx5/vyECUt/vfggW995Zdzjgme', '1993-01-02', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kitunda', 'doTbqRpQ6exA_PARK', 'MC 335 CYD', '4006837872', 'notset', 'Leseni', '4006837872', 'oLhJuFinTuUEFATHJ3QVqzXAj8ek2qAz_IMGMAIN', 'dC3ZXzA5iZhLwQdB1gvsMu0badoA79aD_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'David Andrew petro', '255658718474', 'created', '2024-02-28 12:46:27'),
('KkJVdd9188J6_DRVER', 'Benson', 'Mbali', 'Mbali', 'no@example.com', '255786364746', '$2b$10$1R9NPU4WF2rUVyJ1vZ16W.Elsd8DfByO4urwm4WifSHwe6cIWw.2e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'doTbqRpQ6exA_PARK', 'MC360DGP', '4000998477', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:27:35'),
('klX3GQ8qGQNL_DRVER', 'Sharifu', 'Rajabu', 'Rajabu', 'no@example.com', '255687562274', '$2b$10$Wp6mVYmK6Ggv78aIkDpiOuA0qeZZmVH49eitetz6UkP/Fya.Ue9u2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC724EBY', '4005276493', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:02:26'),
('KMHD54JRdLwd_DRVER', 'Juma', 'Rajabu', 'Rajabu', 'no@example.com', '255712865258', '$2b$10$Q6TiN6WAtN7s.IPlTA5rRuU5ToFIssy56m4NbUV.7wRw1g9gDlf2a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'dPkWDNHoiMxc_PARK', 'MC378CTS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 05:40:36'),
('kMmY8OxUxuXM_DRVER', 'Hamisi', 'Daniel', 'Shija', 'no@example.com', '255687522566', '$2b$10$tnKB50qJYtcExRuvGJ0Mt.w7IRr3.js4/SO9c.dL9Xx5u6hLCEBne', '1988-02-18', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kibaha', 'dlA4LlB7B3LL_PARK', 'MC 977 DVF', '4003195198', 'notset', 'Leseni', '4003195198', 'v6HZBmiNLlRkTdfJ7Tf9CBe8qhnpv9Q0_IMGMAIN', 'QLYeL3xhwyCY39hS66q7BYUGqgmFsSmd_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'abudhwahari hamadi omary', '255682140260', 'created', '2024-02-22 10:28:29'),
('KQfT79MlYEGk_DRVER', 'Patrick', 'Sabasi', 'Sabasi', 'no@example.com', '255654335505', '$2b$10$GrCVbyeVsGO6gn49om33rOnrhe6qYI8O1JQnNENsu5Xncj/mf.2nW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'cw5bJODebF54_PARK', 'MC960DZK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:37:46'),
('kqNSqAoHwgwV_DRVER', 'Steven', 'Manumbu', 'Manumbu', 'no@example.com', '255625918913', '$2b$10$gipz.qQgbc5TrT5J1zDtveQkRsmk7dDOgosWev0yWiTtQl7xAeStG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', '0WL6I7LTF3eJ_PARK', 'MC462CBQ', '4000608293', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 05:16:18'),
('kRmIXxUloUgX_DRVER', 'Hussein', 'Ramadhani', 'Seiph', 'husseinrseiph@gmail.com', '255788047669', '$2b$10$N2v9bnorRgnofEpigse8M.KAlvbLuyZAXg9Kupsz7Dg9WsaYKqpgy', '1998-04-23', 'Mwanamume', 'Nimeolewa/Nimeoa', 'msasani', 'j01Cm7TVXfQG_PARK', 'MC 691 DVR', '4004717910', 'notset', 'NIDA', '19980423151070000321', 'CckUVol6IPTLue8WFAwidGZA6AiqPOZq_IMGMAIN', 'LnshmNb3sngBhOILJj0ZAbHxbrciVFIb_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Adidas abdallah saidia', '255716939703', 'created', '2024-02-27 08:48:16'),
('kRVhdQurxepH_DRVER', 'Hassan', 'Jabiri', 'Malisa', 'no@example.com', '255688551332', '$2b$10$T.m.VqdjRtF4phlfYf84Eu/BLn4RQFYuJ.ViWGQvezyrWcv19jQ8q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'UL09soxnhaZU_PARK', 'MC607DRD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:57:27'),
('KvevSZyyaRiR_DRVER', 'Tomas', 'John', 'Pita', 'no@example.com', '255710744338', '$2b$10$D/MYpgING86f3hLsvuPKau1K.eZiCpttg1CXcpHIyq9uhC8CK5dzu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'UL09soxnhaZU_PARK', 'MC493CVS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:19:57'),
('kYKp3puG8uYI_DRVER', 'Saidi', 'Ramadhan', 'Ramadhan', 'no@example.com', '255622373260', '$2b$10$N66A7s6BXxstVaq1b3s3KeacVfHkBHO1PBI2w9APbk1jpW9h6HMCS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'cw5bJODebF54_PARK', 'MC538DJT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:22:11'),
('L1ukg52fY0Kp_DRVER', 'Mohamed', 'Said', 'Said', 'no@example.com', '255716445811', '$2b$10$X8KQ/nWHUbYS1o54/Mc7Gu0aCE6qLl9HiyH7sT2v9NT1LUnuJgyGq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'j01Cm7TVXfQG_PARK', 'MC683DZS', '4000020483', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 06:01:57'),
('l21PWCkmySvG_DRVER', 'Antipas', 'Majaliwa', 'Majaliwa', 'no@example.com', '255694409251', '$2b$10$PeSezt8gjIy91cdeu2nK1O9sdBLfnYLUh2l7h.yxktXXxhQNdBED.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'yMLw9kHalHtP_PARK', 'MC132DGX', '4005468799', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:10:49'),
('L3BxHrfI1Uca_DRVER', 'Osward', 'Moses', 'Justine', 'no@example.com', '255622168498', '$2b$10$/As5bdz6AHP/TABH/0EGsuUT55ovfjNrxxdZ9gqbJSUIcbpE28MSG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'dMPDSyj5WSzj_PARK', 'MC923DDV', '4001196592', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:03:30'),
('l40tWigNMLQr_DRVER', 'Maliki', 'Manoro', 'Manoro', 'no@example.com', '255689766539', '$2b$10$X2jXUVKG56OmbciM2JRECu/Xh22bXvzf/hR9JzueFmBGr/gg0/Gru', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'tZG8I6XnU13x_PARK', 'MC458BBZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:57:03'),
('L57GWX6UPD0Z_DRVER', 'Richard', 'Emmanuel', 'Emmanuel', 'no@example.com', '255755867356', '$2b$10$i.LdVMSkGjLVepLKtDgZa.PCvAl2yHXSJ217mpTyLYy33zuN/stwO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'dPkWDNHoiMxc_PARK', 'MC203DSV', '4000110962', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 12:25:54'),
('l7P3h46CPiV8_DRVER', 'Sweetberty', 'Onesmo', 'Cleophace', 'no@example.com', '255789841317', '$2b$10$oiUQ7cESm/gVs9ZL4Ywndeol/RN9LYQ/.sTNkVpvOdqh7LN4Wa4Ty', '2001-02-04', 'Mwanamume', 'Sijaoa/Sijaolewa', 'mbande', 'j01Cm7TVXfQG_PARK', 'MC 601 ECU', '4006512618', 'notset', 'Leseni', '4006512618', 'l5o2Gi9ezQme2IxJZhhCJFXKBsQHh2vD_IMGMAIN', 'yEYiKb9i2eBRPao8fyyTJDL3DfznroVp_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Dickson Onesmo Cleophace', '255743772531', 'created', '2024-02-23 08:23:57'),
('laEfhXHyVLzv_DRVER', 'Rajabu', 'Shabani', 'Mwamfua', 'no@example.com', '255688290923', '$2b$10$8PBnVimEKxroNtCh/dQ9ReidwQUUGOEGbzYX.SuGgC5WEF3D32256', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC764DSX', '4005806681', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:08:59'),
('LBuk4le58LhL_DRVER', 'NASIBU', 'RAMADHANI', 'MBWAMBO', 'no@example.com', '255692247099', '$2b$10$BQc8a9pa63lJOborlcBcku.80SVOhjMgx0GJkvInCAmqto/dpuYCW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', '0WL6I7LTF3eJ_PARK', 'MC443DNQ', '4004240296', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 12:33:38'),
('lEJSzsHbfE7X_DRVER', 'Abuu', 'Omary', 'Omary', 'no@example.com', '255717992277', '$2b$10$uuel4t.BkEFPPFjzsA32sOjpylqpxU/BmhcKI5llvFAPa9yVNPwCm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', '5XdJkCrH2sCP_PARK', 'MC789CQU', '4001226970', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:08:33'),
('LfABzaWN7p0K_DRVER', 'Marwa', 'Mwita', 'Waituguru', 'no@example.com', '255746273524', '$2b$10$F5Kv/Kn5JS4KJDBXD9CnXO0spoJvHed9R8GWGcVc3ZtMh5gxG6Weq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'j01Cm7TVXfQG_PARK', 'MC184DTC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:11:17'),
('lhqda2jYraUN_DRVER', 'Fares', 'Zakaria', 'Zakaria', 'no@example.com', '255717514218', '$2b$10$Bi6rnLTh4VlqQMIC.cW2UOsaJQ3PyAozjFYz.9lDvSlwvtLes09sO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUYUNI', '02suTLI5aVrY_PARK', 'MC906DKG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:17:32'),
('LKVuyihJOfH3_DRVER', 'Athumani', 'Msilikali', 'Msilikali', 'no@example.com', '255654008724', '$2b$10$fqoCoPMy6P1Q9H7MJ8YY/u1yaO94gL2ylZhdm1SKuEWDi7l2iFpmO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', 'WXlZq1JIxwui_PARK', 'MC993CQQ', '4004938198', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:26:33'),
('lkWqZWuJRxUc_DRVER', 'Mosses', 'Rwizza', 'Shelestin', 'no@example.com', '255753444426', '$2b$10$rLWa47qqENRuwRWW6.odVe/wmOurtYqOA0t5WbBP/I1.SIpoQrkaW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'j01Cm7TVXfQG_PARK', 'MC396EBJ', '40019974', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 09:44:45'),
('ln2y6B7uSxey_DRVER', 'Ramadhani', 'Hassan', 'Hassan', 'no@example.com', '255656883131', '$2b$10$B793TM0rdm2ttsbO8mfpIe6BXHx7cDDlJcqvaxc0rBG25wTVJjjXW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC768DUK', '4000155873', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:46:03'),
('LqRw7dfPLL7R_DRVER', 'Ramadhani', 'Makurungwe', 'Makurungwe', 'no@example.com', '255712637962', '$2b$10$kbWad.I4sf9MtI7orHJU5uJ33r2OWS8uozHirzxdtqesUHkx2blw2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'A6bwD22v5ld9_PARK', 'MC981DJV', '4006366518', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 02:38:55'),
('LqXOXdpsMX5F_DRVER', 'Ally', 'Mohamed', 'Mohamed', 'no@example.com', '255688387478', '$2b$10$vwDMKIpIkOjur4qbFK46Zeb680SLsifK8A1PlT.JpeuLH3AwI9A6m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILUNGULE', '02suTLI5aVrY_PARK', 'MC353CNK', '4001291506', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 07:29:14'),
('lr56cSsK3k6u_DRVER', 'Joshua', 'Barnabas', 'Barnabas', 'no@example.com', '255713071642', '$2b$10$dbaGIGfBvsbS4QgLtjrZYugPs8v3/wzhgbuA.Q1RLNCiizO0xOw2S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'WAZO', 'UL09soxnhaZU_PARK', 'MC335DDM', '4003458859', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:32:43'),
('lRghxCrCxnNA_DRVER', 'Rajabu', 'Juma', 'Juma', 'no@example.com', '255689561715', '$2b$10$ax4du5UJOT34W/MZdIDIDukpI52tzHdJNbWs2dM909H6Dsk08BzHW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', '5XdJkCrH2sCP_PARK', 'MC987CZH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:47:59'),
('LRIlqlL4lLXh_DRVER', 'Nurudi', 'Yusuphu', 'Yusuphu', 'no@example.com', '255654462105', '$2b$10$7L1PomI28FiE.jQ3cj3PmeQey1U0faKawhx9Xb.IidLsGuLvp6PMS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC987CQH', '4006457473', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:11:08'),
('LRsApW78WQ80_DRVER', 'Emmanuel', 'James', 'Mmasi', 'no@example.com', '255783182426', '$2b$10$OCx4goohcR/RVsTzbsCDFO5VRzkA/Po8hWZnEpCSoCyXd1nUuP0aS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'OiZ5inFpcTde_PARK', 'MC194DQZ', '4002352111', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:55:31'),
('LswtTgispFzl_DRVER', 'Ramadhani', 'Abdallah', 'Abdallah', 'no@example.com', '255686444313', '$2b$10$qEBmB80EDXrJvsdcpoccbuS5SZbyl2szlXlB13cS4KOOOM4hmORFi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', '31KR62AnklbN_PARK', 'MC719DZU', '4000993316', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:13:50'),
('lTrOx69RaF65_DRVER', 'Kennedy', 'John', 'John', 'no@example.com', '255688196666', '$2b$10$FSbeBiFdcmLJYTuuTIqqD.YRGt369PuBaE7mtdRHOvedSc5MQBq4a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANANYAMALA', 'WXlZq1JIxwui_PARK', 'MC968BSZ', '4000434007', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:13:50'),
('lu0agEe5GhkR_DRVER', 'Baraka', 'Matiko', 'Matiko', 'no@example.com', '255759293949', '$2b$10$.xQjLlKK/Kw1aO/QD1vkC.Gp3k7xF8ANDuqD9OuQq9SSDo6ys4dc.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', 'dPkWDNHoiMxc_PARK', 'MC699DPL', '4006943688', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 12:03:16'),
('LuLLfxPGm5qL_DRVER', 'Hassan', 'Ally', 'Ally', 'no@example.com', '255717178726', '$2b$10$Vu2HbUbQUnou3rDtBdTPj.35/ta/5CgZ9eL2PjxYxHTHJV5rRZrre', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'dPkWDNHoiMxc_PARK', 'MC599DVR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 08:59:58'),
('LW1qCyu0W0yh_DRVER', 'Senzo', 'Festo', 'Festo', 'no@example.com', '255752527478', '$2b$10$yRcEXbw..K14qV6cnu1mTuaXx7EWJRLsQXoju0TsEAyKZmK/u2y5i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'kStcaD5Tbwy3_PARK', 'MC406DLM', '4005464138', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 08:29:16'),
('LxijitStzkKB_DRVER', 'Hamis', 'Jumanne', 'Jumanne', 'no@example.com', '255762123296', '$2b$10$9T4DxJArjWlNswMbEs.Qpu.iBqSA6eymMwZ7wkEEZBrtFXYj6hLAK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', '5XdJkCrH2sCP_PARK', 'MC612DRF', '4004525858', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:39:43'),
('LyJppDQxLLC7_DRVER', 'Suleiman', 'Said', 'Said', 'no@example.com', '255653266699', '$2b$10$Mc5Lnyk/Deg0syvpOfxDYerPpHTo5wtsqHUewVmZ4zJGpiN2pK2vq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '02suTLI5aVrY_PARK', 'MC406DPR', '4002258547', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 05:12:25'),
('lZpHPjhqLnFt_DRVER', 'Iker', 'Damas', 'Damas', 'no@example.com', '255654129100', '$2b$10$N4DLXqBEMk/dG74pcI/xyOk9E7XLUgbsLfQFAKV/LfyW.jFsRaIPu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'A6bwD22v5ld9_PARK', 'MC891CEE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:05:28'),
('MAHRa3QfDC0q_DRVER', 'Paul', 'Julius', 'Julius', 'no@example.com', '255766351515', '$2b$10$RDP8jD5Pxn0HuvOZmJ9WTO2IjbduovBS8YCMha.bStxpFeZ3KOpxe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'dlA4LlB7B3LL_PARK', 'MC946DJT', '4002108974', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 06:57:41'),
('MBFprkaadldK_DRVER', 'Elizeus', 'John', 'kayanda', 'no@example.com', '255682760298', '$2b$10$A3t/4ASiRheqR9CBTaAkWOmk7RXIFtgQLDDCHiSykDwDqjg1UOcvW', '1989-04-26', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kipawa', 'doTbqRpQ6exA_PARK', 'MC 248 DZG', '4004011527', 'notset', 'Leseni', '4004011527', 'wbb3ejeGO0QsHLnoNE6YV4XC41dF6haK_IMGMAIN', '4kR7UvWmsYCjJhAJrHGfcrwzfmwf6Joh_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'nasibu Juma mchafu', '255787076924', 'created', '2024-03-02 11:52:14'),
('MBfWXGFsGNnu_DRVER', 'Tirmidhu', 'Saidi', 'Suleimani', 'no@example.com', '255659702200', '$2b$10$xR6ctwjVp2nY20syf4n4Ze9LA67izVK36gWa6QWdn6Oc4WCP.ZdR2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'cw5bJODebF54_PARK', 'MC462DQU', '4000060998', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:49:22'),
('mBgTX4qJbKOD_DRVER', 'Steven', 'Leonard', 'Leonard', 'no@example.com', '255685491715', '$2b$10$BOubgRkCaIvDlTfMLXT.FukXlCRtT45RNQMr3qnzpeoLkpFlJM21y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', '31KR62AnklbN_PARK', 'MC792DAK', '4005321446', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:19:07'),
('mEagrQtZMRt4_DRVER', 'Omary', 'Adamu', 'Adamu', 'no@example.com', '255629937120', '$2b$10$EFyamB11P.NiidC.5rgR0.9PJyXOoxRVblQBTl3cZsj5A8aBoSxSa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC390BYE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:18:26'),
('MFjVRr7VUxu1_DRVER', 'James', 'Menson', 'Menson', 'no@example.com', '255716420242', '$2b$10$y1mgsD.QHSnPOldIXcR2jur9DNr9SsrFFXNgBHDn0jSrGFuscO93W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', 'yMLw9kHalHtP_PARK', 'MC554BUY', '4003932556', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 11:22:59'),
('mfX0oPdRBMJu_DRVER', 'Allen', 'Ibrahim', 'Nyongole', 'no@example.com', '255764320125', '$2b$10$VZkswN6o0.bPvp0WLE6b3eUQANpEQ4h/h95FuAim0g0Bkl6jJlRtO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'aeBWtJmiYL5E_PARK', 'MC431DTV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:05:06'),
('MIPAo0czuzae_DRVER', 'Yusuph', 'Seif', 'Seif', 'no@example.com', '255673898944', '$2b$10$.jS4Zc.S7LpreuCFif5CBeihKrBCMA8xOriMyGt9uvoYUqoWV1HhW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '0kyMILnpGwWP_PARK', 'MC974DTC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:02:29'),
('mIsaXTQ3iogD_DRVER', 'Sadiki', 'Elias', 'Elias', 'no@example.com', '255656489991', '$2b$10$Tt5Af/.lXGsivTTcUe4Px.VPggFHjJ75bzijuoNSwkKirxbSOjldq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC213CUP', '4004445833', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-14 08:24:21'),
('mJbHi1Z1k2Hn_DRVER', 'Muhamedi', 'Abassi', 'Abassi', 'no@example.com', '255653717263', '$2b$10$N3S1zMTQ0T5XweNwJXQwROgNVGarBraLU.jrkvJzB1hP6qZmLrXwC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINONDONI', 'j01Cm7TVXfQG_PARK', 'MC354DQG', '4006297816', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 08:02:41'),
('MjNmlSaTBrEe_DRVER', 'Ambokile', 'Juma', 'Juma', 'no@example.com', '255789666666', '$2b$10$2MNNe0mVh.RcWPbB9uNJw.wa7MTdwcmF6GP.v5ULVgSrjkMhXgku2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'Xa76yqB68odh_PARK', 'T266AVB', '152727272', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-06 13:03:18'),
('mkWtIyc6BtXr_DRVER', 'Mohamed', 'Saidi', 'Saidi', 'no@example.com', '255789749493', '$2b$10$qdeLxn2GrXpkhlxNw20NvO9VEVGOID/8LaaEaTaXVvySBD5nkaGn2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC358DPT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:51:50'),
('moAMMHpTTVu3_DRVER', 'Raphael', 'Jamali', 'Jamali', 'no@example.com', '255625960917', '$2b$10$HnczsjZehml97AtfqqGwju.BtmK.29Ho0uK9d9BLuHID3nqyu1UNW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC165DBH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:26:37'),
('moxXOr3LpWSp_DRVER', 'Emmanuel', 'Kemege', 'Kemege', 'no@example.com', '255765279795', '$2b$10$McTQsx1QOwuoq7ZlcYejPuTjVvc48gG7TnXJs9hpwhyRJjeKDgKkq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC347DPR', '4003571955', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 08:47:37'),
('MRXedFN9ljYU_DRVER', 'Hamisi', 'Issa', 'Issa', 'no@example.com', '255712282621', '$2b$10$nL3uu3jfopAldrPQvv1Mdehr5AOmsMgBngpFwcXthR9SBSNcxuTjC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'UL09soxnhaZU_PARK', 'MC981BZH', '4000322157', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 05:14:01');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('msWYFXIuyfHL_DRVER', 'Jumanne', 'Salum', 'Salum', 'no@example.com', '255658738182', '$2b$10$d69ZbI8/SB54FTCV9GCqs.8fO5UrvozN79xHv4Kzp..l.cGxT023e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'dPkWDNHoiMxc_PARK', 'MC518DHY', '4006792215', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:34:59'),
('MuATksS76ajd_DRVER', 'Yusuph', 'Sekei', 'Sekei', 'no@example.com', '255657900298', '$2b$10$PxJ1GerKtmR2aOZ0b7Os6.imG7YbuMvnSHEjxJn.LQJaf1e/mYImq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANANYAMALA', 'WXlZq1JIxwui_PARK', 'MC410CXP', '4001651811', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:49:02'),
('mwHzKHbtDDmO_DRVER', 'Abusolom', 'yurick', 'yurick', 'no@example.com', '255736099483', '$2b$10$ODbgvg81b3SKfqm/NGBcTOXL/DhNpJoX/h7TIyAj8Kn/EjLSKeyqK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'JrtiDorkKLSN_PARK', 'MC616EAY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:05:28'),
('MWXDVmbXsXSV_DRVER', 'Francis', 'William', 'William', 'no@example.com', '255656854292', '$2b$10$zSzzWjzo1CQHhHFFaHf/buVClMgLdvS.nhy27a53bI7qd2B91uGuK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'dPkWDNHoiMxc_PARK', 'MC404DWY', '4003501545', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:38:04'),
('mXYoAMm8QrZc_DRVER', 'Evarist', 'Edward', 'Mathayo', 'no@example.com', '255786554710', '$2b$10$KX.9RRqIugD4ayfCzdnxVu9NSObOYRvRcYdWiG8uuvod2hXlSpxKG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'OiZ5inFpcTde_PARK', 'MC438DTX', '4006375044', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:32:10'),
('MzkWUybgpZkd_DRVER', 'Samson', 'Yohana', 'Yohana', 'no@example.com', '255620424397', '$2b$10$FWSE7VodNm5ftWVDPd9Yf.KMDL2hnH9MiFzAsugpXM0InLDKJbxSy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'KSbChM4OuYcr_PARK', 'MC447DRY', '4006761352', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-01 11:46:09'),
('n0SimGdPG0WP_DRVER', 'Said', 'Juma', 'Kauga', 'no@example.com', '255676244438', '$2b$10$1chROQshdF0Zv7P779Ull.s3JvEY4ph66.2vrEWHmmuVagrZzhMZu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'j01Cm7TVXfQG_PARK', 'MC765DVD', '4004434647', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:42:58'),
('n3yMON1T9BG4_DRVER', 'Hamini', 'Ngunde', 'Ngunde', 'no@example.com', '255717017878', '$2b$10$Dt0h8i1k2hY1awNMEtURc.YVpvIf1Y9l/y.ijomGIYckmgJxFdWZ.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'g1lOlgSAOdlU_PARK', 'MC459CZB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 07:22:17'),
('N4c0x1H8XGcI_DRVER', 'Ashimu', 'Mahamudi', 'Mahamudi', 'no@example.com', '255747917273', '$2b$10$A6iUwYKjnfVOAenqrsLjtuKZlY/DaxD0TdxUtQKpp70MIZ.o3cpum', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'j01Cm7TVXfQG_PARK', 'MC578DLV', '404566571', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-14 08:17:11'),
('N50X4JrBGaND_DRVER', 'Emmanuel', 'Makalla', 'Makalla', 'no@example.com', '255714029332', '$2b$10$2SIzUaTRsAJuTHfuOhkJ4ODvKYbYCHLdXROrLny/gr4feJH.HiRue', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'cw5bJODebF54_PARK', 'MC929DCF', '4001958817', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:08:02'),
('N9uwawNhnQQ3_DRVER', 'Ramadhani', 'Athumani', 'Selemani', 'no@example.com', '255654475207', '$2b$10$faZO9.2D18b.DX1WJM0Etup62p9.53ikyX7KOac7itYDdj/c49PI2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'JANGWANI', 'UL09soxnhaZU_PARK', 'MC288DJM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:32:09'),
('NbMZlNugnaU2_DRVER', 'Aniceth', 'Peter', 'Peter', 'no@example.com', '255755007343', '$2b$10$fNsQx3e7tphCMFLHZElXpuy87CtXgDd31ixzn.ddViUNQyevX/c7m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', 'dMPDSyj5WSzj_PARK', 'MC203DTR', '4007128817', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 09:38:35'),
('NcC7kWyDrwaJ_DRVER', 'Abdallah', 'Said', 'Said', 'no@example.com', '255686345835', '$2b$10$yHdCuLkvFuVthAGa0j/0bOM3qMvap3GFHX7E.ozhyTX9L2B6ST93i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', '02suTLI5aVrY_PARK', 'MC453BYU', '4002796700', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 09:14:19'),
('ndyq1cknz41K_DRVER', 'Musa', 'A', 'Kitabu', 'no@example.com', '255674927253', '$2b$10$TMgVDfU73PXj3qTtP6GNpeNerOL6e/be4WF59sYgtFch11FMUkBAW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'cw5bJODebF54_PARK', 'MC492DRA', '40061822000', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 06:34:20'),
('nEP3cs00yBQd_DRVER', 'Augustino', 'Pius', 'Pius', 'no@example.com', '255652217632', '$2b$10$ibv7IOfqm1GTkCYJ87s5LucXRa50fXJorLg9DI9o0PNjBRnETijiS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'j01Cm7TVXfQG_PARK', 'MC911DTE', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:32:52'),
('ngv3i92tg7Rx_DRVER', 'Magembe', 'Haroun', 'Mussa', 'no@example.com', '255717523592', '$2b$10$HowsGpL.9SRGFvMRsvzVMu6BWqG17tLIv2JAuWZgOHovh8en/Zcz6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KUNDUCHI', 'TbkAOqQjgkWf_PARK', 'MC570AAQ', '4000258899', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:53:14'),
('nKaaze12cou3_DRVER', 'Mwinyi', 'Muhammed', 'Muhammed', 'no@example.com', '255717636964', '$2b$10$VJC92dnYCwzRW34V8BO8iuMqdiNDCoHYMjRexJF.CRaRBj6Q3moCy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', '02suTLI5aVrY_PARK', 'MC986DZH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:48:32'),
('NMczkNyIvMUq_DRVER', 'Dahiya', 'Sadi', 'Sadi', 'no@example.com', '255785877274', '$2b$10$ti71aAglnxOYOrKVcaPgDu.fctNx5L9EBBOrxECRA8WUuRbmL5SYe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', '5XdJkCrH2sCP_PARK', 'MC560DXD', '4006881379', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:57:42'),
('nMe4EVFoQDr9_DRVER', 'James', 'herman', 'herman', 'no@example.com', '255745790999', '$2b$10$/gQohmN1hb2q66g432spEObpN57sjgW3vqNSIv9DTmUn2Q2boQEbS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'dPkWDNHoiMxc_PARK', 'MC784DMT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:12:39'),
('nmfm56arrE17_DRVER', 'Rutherford', 'Matto', 'Matto', 'no@example.com', '255718401833', '$2b$10$Sg.LbFUzhWv1Mw88v2nFLukOZ3/vKia9UKPFIP3P6b6BOWwyKMjhy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '02suTLI5aVrY_PARK', 'MC823DVY', '4000061296', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 12:21:23'),
('nN2fgtk8GaDg_DRVER', 'Amad', 'Hamis', 'Hamis', 'no@example.com', '255716649399', '$2b$10$g3p5QvJ7ye9/OVnMyKyr..97pOGM7PBlfMDY0P2xjL6PkwlDUgUfG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'j01Cm7TVXfQG_PARK', 'MC589DBX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:51:41'),
('nNDpGVIdyshq_DRVER', 'Sharffu', 'Khalfa', 'Khalfa', 'no@example.com', '255677484912', '$2b$10$aOzY7IJWk6ptQlBiy.gDQemQMIPmwWEU6Ys20ZBw3j9E9f1eN5oKW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'cw5bJODebF54_PARK', 'MC202DNR', '4004483864', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 06:48:03'),
('nOaBZiYxdhZB_DRVER', 'Abdul', 'Kitwana', 'Kitwana', 'no@example.com', '255699372463', '$2b$10$uePm35diRbbcCi1IpCFDtegi8.C5wVvrfXwockoyCGVjPRnSSNXDK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'dPkWDNHoiMxc_PARK', 'MC899CVL', '4006165072', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 12:35:10'),
('NoBpwGdRllCp_DRVER', 'Salmin', 'Abdulrahman', 'Abdulrahman', 'no@example.com', '255683565154', '$2b$10$tERCiatIgmIIrli1RerYaOczqtQlXlcQMc5GqbocxgAJcCvof2hdK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', 'dlA4LlB7B3LL_PARK', 'MC781DGN', '4006849211', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:29:49'),
('NoOwPNK6y6lO_DRVER', 'Peter', 'Paul', 'Paul', 'no@example.com', '255718907376', '$2b$10$5W92mAdqkrmwCpHcps5s1.pbzkIaok7p7Vh1aCC//Pnv0Pj1Xfkuu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', '5XdJkCrH2sCP_PARK', 'MC197DEH', '4003280256', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:41:40'),
('npfx9mFbNrDp_DRVER', 'RASHID', 'MSHIHILI', 'MSHIHILI', 'no@example.com', '255656922499', '$2b$10$MNQpCDwfFi3ryVsKnqoNTOcB4bIFexgJWN6eJ1FGiW79f22s/2X2y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', 'doTbqRpQ6exA_PARK', 'MC698DPU', '4003154037', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 13:04:06'),
('nQ5w35Elg4bP_DRVER', 'Emmanuel', 'Johnson', 'Bruno', 'no@example.com', '255768101025', '$2b$10$MqOejod4csIMlCgUDTYDPOr3aSL3ONFPJuOiivDQI301ClBGCtosG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', '39PDcy79pNQV_PARK', 'MC577CWD', '4001429027', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 08:33:45'),
('nTt7jCkafqGb_DRVER', 'Halidi', 'Imamu', 'Imamu', 'no@example.com', '255711873422', '$2b$10$gLI8TFngxEGjCudSszDw1.revkQEvVyKPjL9jVXvbXxbwc79xzCdi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'nMEqLXzEO9wJ_PARK', 'MC589DQG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:22:55'),
('NUl3ypmitR9K_DRVER', 'Isihaka', 'Augustino', 'Augustino', 'no@example.com', '255628918000', '$2b$10$8djOCmt739Hip032lL3QXOc2W81xGPkeQxmZs5JliOjAFxoIY9Qpm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', '0WL6I7LTF3eJ_PARK', 'MC766DRD', '4003483528', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 10:43:16'),
('nuu4QJcv2xO0_DRVER', 'Jafari', 'Musa', 'Musa', 'no@example.com', '255694161965', '$2b$10$NcU8Pc8j3mN4I3zfhmX91egpku0zz4V44zsoauQ4KqxeWCQLdZmwm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'dMPDSyj5WSzj_PARK', 'MC413DRQ', '4006890229', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 08:18:55'),
('NvyjIL3wHEt2_DRVER', 'Shawali', 'Mustapha', 'Lukanda', 'no@example.com', '255685975114', '$2b$10$WE225wSykMv5wZyeLWj1.uF5GFfeGh5ZjaFK9YMNMndo4T6UBBehC', '1994-02-01', 'Mwanamume', 'Nimeolewa/Nimeoa', 'chanika', 'dlA4LlB7B3LL_PARK', 'MC 595 CUG', '4004004988', 'notset', 'Leseni', '4004004988', '9Oi90Gwno7fg6IzQFs5fMEjS3BBdjylB_IMGMAIN', 'gDJS5mOQzEJ750zOJQNkbvOmFXGf4FGk_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'mustapha ally lukanda', '255682811932', 'created', '2024-02-22 10:53:04'),
('NwVeCBZSbDVM_DRVER', 'Athuman', 'Ijumaa', 'Idd', 'no@example.com', '255742204050', '$2b$10$XwuoXuVFrpBm6sXtlNGEM.Fo.C.uq2wuTgW1VovygSNyovq2DNckq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC788DUC', '4006920856', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 08:32:26'),
('NX7V9uTVVHAV_DRVER', 'Vitus', 'Juma', 'Juma', 'no@example.com', '255787554164', '$2b$10$WGaL1L/U1drp8HYX9zDlXuFzTzAv7ktmuS4NMfx9uGaUzKmd/PyK2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'TbkAOqQjgkWf_PARK', 'MC136CZA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:11:11'),
('nXZscotDDUpe_DRVER', 'Samson', 'Kulwa', 'Keenja', 'samikeenja@gmail.com', '255713844444', '$2b$10$LPDKLbGlRquPiESiaRDgreV1ffMPc8rkey/356DhwLXPYniX.auRy', '1991-02-11', 'Mwanamume', 'Nimeolewa/Nimeoa', 'Upanga', '0kyMILnpGwWP_PARK', 'MC 142 GFD', '4000645497563', 'notset', 'NIDA', '3847575575895877637', 'kPEQmZy3vh2ha4F6vFx4vozmSNRO4C69_IMGMAIN', 'lYtGfsj9h3CELJeLS9boJTBpfjWNLHVv_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-02-01 08:56:01'),
('Ny7doz4N38Lr_DRVER', 'Fahdi', 'Ibrahim', 'Ibrahim', 'no@example.com', '255712232328', '$2b$10$/CNkS57Uh1g6u587pHe2pepJaAZc2D30kWmwLc6dUiaADV0OsnXyq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', '5XdJkCrH2sCP_PARK', 'MC141DMC', '4005227596', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:57:58'),
('nYCoJJvcUoV2_DRVER', 'Daudi', 'Meshack', 'Meshack', 'no@example.com', '255679586404', '$2b$10$ky4aPrLpxOiMSoCYmBTfYuiOgPbLpxFiUIq7h0g8j.87/7irTNTUG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'JrtiDorkKLSN_PARK', 'MC871CZV', '4006849538', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:12:46'),
('nzmYr5biNGfO_DRVER', 'Michael', 'Piter', 'Piter', 'no@example.com', '255693511847', '$2b$10$RV4hYRIZ08hLue9QK2ZwCOyf2j.zs6jfqB2a6UO8ZJ2WmmBGJE68C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBAMBA', '02suTLI5aVrY_PARK', 'MC402DRV', '4004369041', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 08:02:00'),
('O127tefWYC7j_DRVER', 'Filipo', 'Jofrey', 'Jofrey', 'no@example.com', '255712748903', '$2b$10$EYEIxxUJQs1q8hC/h1/DueOpYS1u6uVsyencILw4GKq70AsfMlvR2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'j01Cm7TVXfQG_PARK', 'MC926DSE', '4004080955', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:18:26'),
('O4F84vzke9Es_DRVER', 'Athumani', 'Ramadhani', 'Mbalike', 'no@example.com', '255673088007', '$2b$10$z5li7RPj4LBqF1BeWJ3v6eVc4Fgl3inIEpb7J4nDWLivJm.BqIrY.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'lHdBlR4qB2Zd_PARK', 'MC463DZK', '4000293906', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:45:48'),
('Oa4aokXql1Ho_DRVER', 'Omary', 'Fadhili', 'Fadhili', 'no@example.com', '255782429416', '$2b$10$2.lSQRXEsd3xaVxqf8XAje09GzxlDOXETmzFnZ1LfSRXJbNzXI5Fa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', '2dTgMy11XIFX_PARK', 'MC255CYW', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:46:36'),
('oae2pcpoAnMA_DRVER', 'Wahabi', 'hatibu', 'bum', 'no@example.com', '255788069795', '$2b$10$zXxR2NzcRfEHwDsCUmAn8O1A8gzars/.9j0VNU.aEKjO.IrSG2GuK', '1993-02-27', 'Mwanamume', 'Nimeolewa/Nimeoa', 'm.bande magengen', 'j01Cm7TVXfQG_PARK', 'MC 243 DYN', '4006053248', 'notset', 'Leseni', '4006053248', 'KaMiko841HSFyc5j2sZeXwZYO1TD79Fd_IMGMAIN', 'O4eAkwaQRt7YWd2C9eKsph1DqbrnNcSZ_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'abirai yusufu dasi', '255785834216', 'created', '2024-02-23 10:21:06'),
('ob3j1hujeeM6_DRVER', 'Salum', 'Msa', 'Msa', 'no@example.com', '255693793807', '$2b$10$Jdd9Jw31Or2NmPYIepoCyeAz/JcFskJgZsnpCOLcvZ0TAkKiDg7Vy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC701DBJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:25:35'),
('obvdWCuhIOBc_DRVER', 'Mchembe', 'Ramadhan', 'Ramadhan', 'no@example.com', '255755244886', '$2b$10$uZjskSM/LIXfm4ZMLzjSw.ZuWNKO5lWH0JGs7V1pfMDYmGisXPV7q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UBUNGO', 'UL09soxnhaZU_PARK', 'MC320DBU', '4001196844', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:22:08'),
('OCb1RttDH62U_DRVER', 'Frank', 'Thomas', 'Thomas', 'no@example.com', '255657093828', '$2b$10$9sYQH5G5lqb.FtfGZyn7dO9j5wysJCLqe6Dl7JF.7zgYp2xy1Am/q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC168CVP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:51:19'),
('OCQVpG5beYQb_DRVER', 'Ibrahim', 'Abdallah', 'Abdallah', 'no@example.com', '255762261576', '$2b$10$DhzmO4oaTJlQmqEnPlS9puKjxhLnhOXUUIj1vfjfKw4qDx/Mt0/3K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', '5XdJkCrH2sCP_PARK', 'MC428CKL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:26:01'),
('ocUig2P0IIe2_DRVER', 'Ramadhani', 'Hassan', 'Hassan', 'no@example.com', '255715971670', '$2b$10$8FK.yMGPcmAAdl2DhiLpfe4Jz8.8pQGWgj1vmh6MldVYfNAXzkbeq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'tZG8I6XnU13x_PARK', 'MC688DBP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:34:35'),
('OD8JxmQ5TFA3_DRVER', 'Emanueli', 'Joseph', 'Joseph', 'no@example.com', '255716074296', '$2b$10$CwZLvg4cRPY3GXQCvCLUMOqFog485VRlyV044AGRZKX8bgxY88Yvu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'SRsKwzEYK9Eg_PARK', 'MC695DMK', '4000225688', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:19:40'),
('oDg62iKf1v6R_DRVER', 'Juma', 'Omari', 'Mbilu', 'no@example.com', '255713827976', '$2b$10$FcLEN4VIeW8C5s5bYFCUVuhwVr6LbeMFko4/s3kTLzM5un5nRGXUi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BONYOKWA', 'UL09soxnhaZU_PARK', 'MC658CYB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:40:30'),
('oemkYS1Pinza_DRVER', 'Chacha', 'Mwita', 'Mwita', 'no@example.com', '255620293908', '$2b$10$HDGB3zFMkCDgUN.EFWilVe89SGDSxnTycHr.NVAzvEp6j5gfHs3Hy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC124DBY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:30:08'),
('oGRvSnMNR920_DRVER', 'Denis', 'Makangala', 'Makangala', 'no@example.com', '255758990655', '$2b$10$1d.UidXS4tHTWLDyyBTVSOFJSfFG32t53G3.LcY4aa5d//8WxM6Aq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'OiZ5inFpcTde_PARK', 'MC475DHR', '4002990023', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:45:13'),
('OHqtUONmlT86_DRVER', 'Rashid', 'Omary', 'Omary', 'no@example.com', '255675373155', '$2b$10$4fQM2f93hk9ZZvXokxj4QOS8amVi1XXb5mqygyKn/7g28L2K4mcyi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBADA', '2dTgMy11XIFX_PARK', 'MC515CUZ', '4002064548', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:09:24'),
('oJ6TTFTd0eAd_DRVER', 'Ibrahim', 'Hamad', 'Hamad', 'no@example.com', '255653122270', '$2b$10$RdKWIyM/vLoPWmo1DOBM1uNU1W2mBhBkiA4.27xLZsgi3qIoIO076', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'JrtiDorkKLSN_PARK', 'MC119DZJ', '4006715865', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:00:49'),
('OJRJw3ggeTqL_DRVER', 'GWAMAKA', 'SALUM', 'SALUM', 'no@example.com', '255688246555', '$2b$10$RsoXjYn0E4s3K4EbJaSCk.YpkjRRKlSwGJDwRYt7pCZ09ZCE3mnBu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'NDUGUMBI', 'TbkAOqQjgkWf_PARK', 'MC427DHC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:02:27'),
('OKDCXglhES3d_DRVER', 'Abdi', 'Omary', 'Omary', 'no@example.com', '255784728638', '$2b$10$foISFl7lE/y4Pl8YBmbcj.mS0ljATWo9LvSFTMzNMBOI9XNoOdlve', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'dPkWDNHoiMxc_PARK', 'MC545CPV', '4000970152', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 06:33:19'),
('okkD0BAnGBJc_DRVER', 'Athumani', 'Mkodiwa', 'Mkodiwa', 'no@example.com', '255716395699', '$2b$10$H6bTmR8QOZXH9/ADLVw91.CiNQM0VWnRARsq6dARuiTYUAsb4mJ3i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'WXlZq1JIxwui_PARK', 'MC597CYT', '4000076808', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:59:08'),
('oKKyLHtbaTrN_DRVER', 'Hawadhi', 'Idd', 'Idd', 'no@example.com', '255687030276', '$2b$10$ej6gddS2waqfA7cGDlcl6OxqylXL20AIVPobmkJAZDv5PKXOGV.fe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'TbkAOqQjgkWf_PARK', 'MC509CXV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:26:46'),
('oLj0UzkpwcTC_DRVER', 'Ramadhani', 'Rashidi', 'Rashidi', 'no@example.com', '255672059309', '$2b$10$IFNF7gHDyXXKiLETQsmUx.xmC0vKbggzgeqgKnj5P5WXorPAKIabq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '2dTgMy11XIFX_PARK', 'MC516CRC', '4001239182', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 04:52:51'),
('oMvhNiablvRX_DRVER', 'Stephen', 'James', 'James', 'no@example.com', '255713630177', '$2b$10$YAPRT7XFUhpt6UQWOIAxJuwfrxRAZ.T9BfCxebgFYSvpZklkpyNWu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', '2dTgMy11XIFX_PARK', 'MC907DYV', '40014922949', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:35:44'),
('onHjoyATq6xf_DRVER', 'Daniel', 'Marwa', 'Marwa', 'no@example.com', '255714282918', '$2b$10$VW/qCsMUvwasvuTBo/cwx.MZcvXhJoXIVmyJrH8x2ti8OY0Rn0yN6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC685DZB', '4005651980', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 04:39:03'),
('oOD4QhHoygL1_DRVER', 'Bakari', 'Hemed', 'Hemed', 'no@example.com', '255652313804', '$2b$10$58wxB4I52Wj/M6GOJLooke4u6ToFZdHU/AcJixNQ8OKy1fYbxzhEa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', 'WXlZq1JIxwui_PARK', 'MC334DVN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:17:48'),
('Op6D9imwQuT1_DRVER', 'Yohana', 'Samweli', 'Samweli', 'no@example.com', '255693434062', '$2b$10$kt2eqDbzxAJmGVDc3Xi44uSSPu4WrIQYLKjkSfQRwsD7nZh5L82xC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', '5XdJkCrH2sCP_PARK', 'MC382CZQ', '4002172344', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:49:28'),
('oqBiz9zje5Ib_DRVER', 'Khalfani', 'Athumani', 'Athumani', 'no@example.com', '255715078816', '$2b$10$rerqucrdBQX33oog5vT90e8LUr6pxk9hiBH.PJXIXJX6.JCMNKRzG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'bncNWzVh24hB_PARK', 'MC518DSY', '4004755520', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 06:52:53'),
('OsRgHZxAd5ZR_DRVER', 'Donald', 'Felician', 'Kagunila', 'no@example.com', '255652441424', '$2b$10$uM6MgjoGljrGnpMvp.KV7esWVw90p72U56Oj8zdECDPfxTdG7HmNi', '1994-02-02', 'Mwanamume', 'Sijaoa/Sijaolewa', 'Upanga', 'dPkWDNHoiMxc_PARK', 'MC 256 CDE', '4000745386363', 'notset', 'NIDA', '46464864552454484', 'RY7fPhkobSQa8NnrafErxHKtkK0aPHY1_IMGMAIN', 'enqKHKpsCaP4nX2nyjTv6xHFlJPjiiCC_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-02-01 11:44:15'),
('oTMf0s85czpF_DRVER', 'John', 'Peter', 'Peter', 'no@example.com', '255759752080', '$2b$10$3SVnxeZtKOBAxZDtk/qSh.gZUYSW306P0jwC2dvYQkqpGIQ5vgwR.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '0WL6I7LTF3eJ_PARK', 'MC612DLN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 11:24:49'),
('OVmthKxVIpc6_DRVER', 'Kasim', 'Said', 'Said', 'no@example.com', '255762033426', '$2b$10$hk4Thp2pa7Kb0LVQ92Y7GO0qRK3L1aQwIk7kTrMFRFCkh3WiOt.3S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'WXlZq1JIxwui_PARK', 'MC442DDG', '400091724', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:30:20'),
('oWjaUxuzMIyi_DRVER', 'John', 'Joseph', 'Joseph', 'no@example.com', '255699753322', '$2b$10$RyOr7HXi9.84D.Qvvnm94eRWdwaK1w3VVgtKalO.7qrfgqIAjyp6K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'JrtiDorkKLSN_PARK', 'MC429CHG', '4002198154', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:29:26'),
('oxIdac0RIeFb_DRVER', 'Ally', 'Francis', 'Francis', 'no@example.com', '255686729474', '$2b$10$nkku/XVclKQmZrpf51xrBuw3Hary4FRMfGl5kLr1gzdtQC1PoP40i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '70rWw5tOi1Q5_PARK', 'MC106DPL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 13:14:42'),
('Oxyu5m9XKL4K_DRVER', 'Adam', 'Phimin', 'Phimin', 'no@example.com', '255622740252', '$2b$10$/OwJBLEpBgMcDpWmUqbC.eVIewylwAiVW/US5pcqDTkJ9SbHnF51u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'tZG8I6XnU13x_PARK', 'MC736CJJ', '4005953926', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-17 12:02:20'),
('ozpt8SK9KbPN_DRVER', 'Sephu', 'Daff', 'Daff', 'no@example.com', '255625750626', '$2b$10$NU/QDaPBoNCJglRiunyQ7OgYuzaY6wK4kcmDIC8jj0vNzbRmX2Q.S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'TbkAOqQjgkWf_PARK', 'MC242DEH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:52:42'),
('P0mtoeBmq4uj_DRVER', 'Zephania', 'Samwel', 'Samwel', 'no@example.com', '255713595100', '$2b$10$ftzhkTC6o3he95joQC5DCezRZDJoBTuvv1BqRvlc2oDMls6.T9cyO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'A6bwD22v5ld9_PARK', 'MC150CSN', '4001440834', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:46:10'),
('P2CQKvtJSdN8_DRVER', 'Suni', 'Jumanne', 'Jumanne', 'no@example.com', '255683769450', '$2b$10$JMLeVzUkCGXw0gOhzcxwaOqUrXzwdhJ.ot/PQT/ud904JbLA0asXO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'QR20w3XwPn7e_PARK', 'MC758CYS', '4003633741', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 07:39:42'),
('p5qjAUVlGDcB_DRVER', 'Sharifu', 'Hamad', 'Hamad', 'no@example.com', '255717141670', '$2b$10$blP02CICfdDQHxoUYkvPzu0URkAfFqGwMeejxEkivspu/ygKpPkoO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'KSbChM4OuYcr_PARK', 'MC654DXA', '4003897210', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 12:00:28'),
('P5vuLCGII6SK_DRVER', 'Sosipta', 'John', 'John', 'no@example.com', '255766885407', '$2b$10$aeeCFRDyDFyMOqlohhCb2./oRIsVqJFyd2YrhifzxWasfZ2t3QQhm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'j01Cm7TVXfQG_PARK', 'MC393CWF', '4001406124', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 11:35:09'),
('pbhKw1TXdPtk_DRVER', 'Lucas', 'Andrew', 'Andrew', 'no@example.com', '255716094603', '$2b$10$V/hy362crmMOCX.OFLvi/efUpMXm7ZfyOW8/AaRP3l60pOHDXEulW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', 'UL09soxnhaZU_PARK', 'MC449CNG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:22:34'),
('PCAftKmll7SP_DRVER', 'Hamidu', 'Adamu', 'Adamu', 'no@example.com', '255653862236', '$2b$10$TD2gXQ.snza.m7Aw9X0ua.tMPHeHUGWK8aORby8mhCzBQRKIW00iW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'iAvJUTjHy0PT_PARK', 'MC255DVB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 05:33:58'),
('PdJ82B9YhYwm_DRVER', 'Mkombozi', 'John', 'John', 'no@example.com', '255699360387', '$2b$10$w/SjiPRmt9LzvVIcensjyOZ8I2ThIguYjS0JAYdoek6VqyXrNJspG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC115CZJ', '4006262477', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:07:57'),
('pDpEynjNLdRW_DRVER', 'Shabani', 'Ridhiwani', 'Ridhiwani', 'no@example.com', '255678753520', '$2b$10$0C3Bye/Y4FazRAJuX8j7E.FnVQiNinqxJBaP0U4i4pO.o0E37GkVu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIANZINI', '02suTLI5aVrY_PARK', 'MC565BMH', '4001536981', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 09:51:18'),
('pFFlby6CvKKw_DRVER', 'Bahati', 'Alfons', 'Alfons', 'no@example.com', '255757862137', '$2b$10$V/qN7YTURyL6TQ4KKo2zkefjJXBpyHPNwj7q2VyOp5crTW2X78qYq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'yMLw9kHalHtP_PARK', 'MC433DGE', '4000357743', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 12:02:17'),
('Pgcz5U5BFjKm_DRVER', 'Sharfu', 'Ramazan', 'Ramazan', 'no@example.com', '255784571542', '$2b$10$TRGwDQlF2JJcjCwYMKmGhO3siJgEt4cxDabclf2S.DrpQmwI2t.ny', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'j01Cm7TVXfQG_PARK', 'MC899CEP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:03:16'),
('pgLM6W7XPD5k_DRVER', 'Hamadi', 'Hamisi', 'Hamisi', 'no@example.com', '255718438161', '$2b$10$HBh7m1YU16cw0fObHUZQEe0OJdLlnzdq7o.nrNsSZ586VekzsL.72', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIANZI', 'JrtiDorkKLSN_PARK', 'MC189DGX', '4001836478', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 10:12:02'),
('pIWqmEs5ATsA_DRVER', 'David', 'Ngailo', 'Ngailo', 'no@example.com', '255716186353', '$2b$10$T7GFnem2T3lpmgvCccqQ9eEaX/O5tfDfPxkOTHebRakHMNTD8LqwW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'QR20w3XwPn7e_PARK', 'MC152DBB', '4002510798', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 11:04:43'),
('PjI04Oxlcktj_DRVER', 'Mwinyi', 'Hashimu', 'Hashimu', 'no@example.com', '255718465343', '$2b$10$XAPYp7our6AXofyAbRffiOXmSfGZYzfWen3u2Q/qpSSAEyL.00NL2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'dPkWDNHoiMxc_PARK', 'MC603DXS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 13:18:30'),
('pJTETABbBgn6_DRVER', 'Salum', 'Said', 'Said', 'no@example.com', '255713605831', '$2b$10$.PFbMYtJ6YLa.hz58DFUNeo0rgD3202w.NkmlfNosKzmtEas6OvIi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '02suTLI5aVrY_PARK', 'MC749DQK', '4001896042', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 07:15:42'),
('PK7hvXgtJZAg_DRVER', 'Abrahman', 'Liziwani', 'Liziwani', 'no@example.com', '255784313267', '$2b$10$AR99dvwdemiNwhWiguZyTOzKsB2Qlo3IrzPMfunQe.1Ypst27iJ/S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '2dTgMy11XIFX_PARK', 'MC576CUZ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:29:25'),
('poaIAJsU0TGp_DRVER', 'Saidi', 'Norbet', 'Norbet', 'no@example.com', '255767071619', '$2b$10$8UBS0vAJPd2unFenyVLvCelQMiXOa3Y7T8.uovPQt17ug/mX3Oh7.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'TbkAOqQjgkWf_PARK', 'MC108DDV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:25:37'),
('PoU6ABTfOm0R_DRVER', 'Antipas', 'Anselim', 'Anselim', 'no@example.com', '255715920621', '$2b$10$PjLk5rOwYlyEfv6XyICQIuOq6sdkvG4j/YCUnGQLvOGmM/dd8AbK2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'UL09soxnhaZU_PARK', 'MC840CUG', '4001829761', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:42:37'),
('pryGoRFjXG6Z_DRVER', 'Aretasi', 'Mathias', 'Mathias', 'no@example.com', '255684229750', '$2b$10$Y3u74xmbfH7XzMD1CbGZ2.4/LDEWnf8FFzsbsADJhi0X815kK9y12', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KWEMBE', '31KR62AnklbN_PARK', 'MC313DCH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 09:08:17'),
('PT2sJYGL9eSk_DRVER', 'Boniphace', 'John', 'John', 'no@example.com', '255699340297', '$2b$10$xjvHwmyQ/Yv0MRcCUOf.0.qJZHbC/djqWk5MfV/fgWJv44bZWSqJi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', 'kStcaD5Tbwy3_PARK', 'MC148CFF', '4006621193', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 09:11:52'),
('pTJR9HW6FI18_DRVER', 'Juma', 'Ramadan', 'Ramadan', 'no@example.com', '255693790900', '$2b$10$0M7jDyXAvnF9859uyIGbcevOq09rkWuVJ2I2QL/RhC7/3l7H6IQuq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'bncNWzVh24hB_PARK', 'MC557DRT', '4002734222', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:40:29'),
('pTUCNoPza4Fc_DRVER', 'Zahir', 'Bakari', 'Bakari', 'no@example.com', '255784531610', '$2b$10$GgHZn4FqcSdw6mLX5oInDe3ENgDTV8jJPFjCEGdBhptCnbJWZ68Rq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'UL09soxnhaZU_PARK', 'MC462AMN', '4001142429', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:18:15'),
('pW6bCua3Ad5w_DRVER', 'Athuman', 'Omary', 'Mkumbuya', 'no@example.com', '255684817007', '$2b$10$wQnLnkNgYlDDj98puAYcqeCl94/tfmjGNfomkggUhf.8lIkVXDfWi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'j01Cm7TVXfQG_PARK', 'MC921DRB', '4007029160', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 08:01:25'),
('pxo6xHEvcmie_DRVER', 'Benjamin', 'Lusunika', 'Lusunika', 'no@example.com', '255689800049', '$2b$10$aqcWKRsDM9f1TzGOhMfjvuganCRyUGLjNDVEZHHYYaIuPyxsxm6be', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', '0WL6I7LTF3eJ_PARK', 'MC470DEH', '4006891912', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 10:37:27'),
('pxRXIwR2KPIe_DRVER', 'Twaha', 'Salum', 'Mbunju', 'no@example.com', '255653422135', '$2b$10$eq1JMMy01pmELgSWHPdl.OCHFMaKjXNZIoA7j8n8IxuBfa0v53yc.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISARAWE', 'cw5bJODebF54_PARK', 'MC158DXD', '4000182309', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 06:25:13'),
('PYW2vOxosY0a_DRVER', 'Issa', 'Athumani', 'Athumani', 'no@example.com', '255689828496', '$2b$10$jns.WsjbTJ.SFYnEfFzHeuO2MKLVbOs//JDmljNfid/Ggn7IIwLTO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKURUMLA', '2dTgMy11XIFX_PARK', 'MC262EAA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 06:41:21'),
('pzoeJILkQVXz_DRVER', 'Juma', 'Omary', 'Omary', 'no@example.com', '255718286503', '$2b$10$lVbkN.WmnyQMuG2Lb0oqr.yu6Pzh7zCCrb2zPeIljLRIL7BEO1v.O', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', '31KR62AnklbN_PARK', 'MC340CZZ', '4000709923', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 08:50:34'),
('Q0o6vtGoXSTL_DRVER', 'Nassoro', 'Yusufu', 'Yusufu', 'no@example.com', '255688222522', '$2b$10$H7nEcQ6W5rNqoSFCzx2IPekGdRcd6D6Yg9X8mCldKpDq/hhkOI2WW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'dPkWDNHoiMxc_PARK', 'MC193DCP', '4002135515', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 11:22:00'),
('q2pFxjf1tpn1_DRVER', 'Abudhwahari', 'hamadi', 'Omary', 'no@example.com', '255682140260', '$2b$10$rTHmdahK6nHUnYPgtPNqf.QlKGBXi.2.9FgoaZok3Q9JFWFTsZ39u', '1993-07-07', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kibamba', 'dlA4LlB7B3LL_PARK', 'MC 831 DGG', '4003662259', 'notset', 'Leseni', '4003662259', '9HWhYS6vDMqAwPvw8jDvQblPvRyIfNKl_IMGMAIN', 'jhEkF9LQPfe8nyCr1Rl8av234zXacHFD_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Salim hamisi biligwa', '255693986103', 'created', '2024-02-22 10:33:34'),
('Q5CaApynQaxP_DRVER', 'Adam', 'Nyutwa', 'Nyutwa', 'no@example.com', '255718366045', '$2b$10$Oez4dBfUl0OJtyHnqanLaeBdXSokIHmtOeDB78oJc1c7JgAqhKB7e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPUNGUNI', '70rWw5tOi1Q5_PARK', 'MC571DMN', '4003510249', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 11:18:47'),
('Q5slQNdDn7Fm_DRVER', 'Sena', 'Soteli', 'Masele', 'no@example.com', '255752817138', '$2b$10$/SCmnnIIWEmGK9pqPfeRTeWqWI6MeKKP4j8ETx082pCJH6OS709wW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'j01Cm7TVXfQG_PARK', 'MC778DFN', '400583766', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:35:30'),
('q5Vc5r1gIqr4_DRVER', 'Castor', 'Malukusi', 'Malukusi', 'no@example.com', '255784261781', '$2b$10$ruaRSLZj0Ez5X.T5p4ElTOP5oyW0pCPkyFGlYeVUx/AxRd7tpU7zq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'WXlZq1JIxwui_PARK', 'MC938DQD', '4000374359', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:05:01'),
('QBAQ6SoAuL57_DRVER', 'Mwita', 'Kiruka', 'Kiruka', 'no@example.com', '255717521495', '$2b$10$gXiLsxEPzNfo3hQJD47Iq.cOzntr.MWbn90BJBS8RMT1p8qiJ2ljy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'EZqBvKeM9z2E_PARK', 'MC402CPN', '4000546465', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 13:08:57'),
('QbciAXt9wW9r_DRVER', 'Omar', 'Musitafa', 'Musitafa', 'no@example.com', '255714100030', '$2b$10$clYyB2W2DZBB9hWJJS1UKu70Bx.iNp8QJO679DoLTZDTf2Yuhb3Gy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'j01Cm7TVXfQG_PARK', 'MC372DYL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:39:53'),
('qbTRfMHhSdkK_DRVER', 'Shabiru', 'Msafiri', 'Msafiri', 'no@example.com', '255782070268', '$2b$10$aGJ.MgR2GNeDpGwyxObt0e.g0hjIUqMYcqjo9zEOVa0SGf3s198ty', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'j01Cm7TVXfQG_PARK', 'MC106ECP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:12:12'),
('QCovNC3ZGide_DRVER', 'Elias', 'Eliazari', 'Eliazari', 'no@example.com', '255745835362', '$2b$10$z7zCIyLzLRLR2L7Y5ZzhAejeod6mO1k6FJ6aZrov2TnWliaShi76u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'WXlZq1JIxwui_PARK', 'MC646DQJ', '4001638847', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:36:58'),
('QdyYxsia3psM_DRVER', 'John', 'Maneth', 'Maneth', 'no@example.com', '255712128154', '$2b$10$We1ZkN529JlrFgLH1UjsFekg6HeA.FNVRxhyMprON53rBcntP8i/2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'JrtiDorkKLSN_PARK', 'MC239DTN', '4001230908', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:21:46'),
('Qf3ZkUiJ7DGM_DRVER', 'Vitus', 'Kalenga', 'Toi', 'no@example.com', '255788247149', '$2b$10$Y2TGDDFicOTCqe843YR2POiFGclIIAkT2biWwIL1R/F8FTKP45JWq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'UL09soxnhaZU_PARK', 'MC746DJP', '4003110652', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:43:01'),
('qk8CJxA3yPsY_DRVER', 'BARAKA', 'SUNGU', 'SUNGU', 'no@example.com', '255710700580', '$2b$10$J7w2hp7yyYUlhHXB8/Xqd.ncCmiHSWad1qneMye/mvc7G23rwD0z6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'TbkAOqQjgkWf_PARK', 'MC734DKS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:52:43'),
('qKBiwHie3AJw_DRVER', 'Abdalah', 'Mohamedi', 'Shekigenda', 'no@example.com', '255674199393', '$2b$10$99ZmM0dKa.Ko0zmDo4SvX.ostFlr/Pf1EVNQpgnCEW1jakIm7NPFm', '1996-05-25', 'Mwanamume', 'Nimeolewa/Nimeoa', 'Yombo vituka', 'dlA4LlB7B3LL_PARK', 'MC 699 DJM', '0000000000', 'notset', 'Sina', 'notset', 'notset', '0ieouq4NQsb9Uo9FczIPi1LdBk7gZG84_IMGMAIN', 'no', 'gsfdtdtg72635NVSud', 'Hawa khamis Sadik', '255658913697', 'created', '2024-02-22 11:17:42'),
('Ql1FNNQRBQo1_DRVER', 'JAIROS', 'CHIGALIKA', 'CHIGALIKA', 'no@example.com', '255654597744', '$2b$10$d9liGdXV3r8bAhihkGGiHee.aeXkRyaIhlsxIcepWpdgm/H1czz4K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'UL09soxnhaZU_PARK', 'MC769DDD', '4005364720', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:39:13'),
('QlYjfGUXYXlw_DRVER', 'James', 'Emmanuel', 'Emmanuel', 'no@example.com', '255689695385', '$2b$10$covr1FnOyrRbaJW5pTZa1O7DeVP2MvBxi7/kQ6gZ5NVJ71ECGMq4u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MZINGA', '5XdJkCrH2sCP_PARK', 'MC988CXE', '4006178104', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:11:28'),
('qM093VBe3TCa_DRVER', 'Hassan', 'amiri', 'amrani', 'no@example.com', '255675601739', '$2b$10$ehxxqoVRaHjS2mHVvO6RDOnad9exaTqk7wkvqF3s5wCYslgyLmwrm', '1990-10-10', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kigamboni', 'dlA4LlB7B3LL_PARK', 'MC 509 DJR', '4006355589', 'notset', 'Leseni', '4006355589', 'PFlRUiVRNV5IOA39gLii1GcQXQ9jwTM1_IMGMAIN', 'HHshXRn6QE07TOS5l1uP0f4b0tFI20Bs_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Hassan Martin matalus', '255710793283', 'created', '2024-02-22 10:22:09'),
('qmTDE86PBf3d_DRVER', 'Rashidi', 'Khamis', 'Khamis', 'no@example.com', '255711625136', '$2b$10$60AY22xkzEnnmqfngRu2veuqV487V299PxD/O4tPrNofTPRcKhVrO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'JANGWANI', '5XdJkCrH2sCP_PARK', 'MC494DCF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:24:27'),
('QOhGSrRQ5RMl_DRVER', 'Regnard', 'Thedory', 'Chewembi', 'no@example.com', '255694353553', '$2b$10$cU/pW6CMfon/j.xtxqBAtO6dyaviIaXNdUH1eIxHtYQg4gUeX1TC.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '0WL6I7LTF3eJ_PARK', 'MC599DMP', '4006453953', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:23:21'),
('qp0xGWS3VT8g_DRVER', 'IDDI', 'HASSAN', 'HASSAN', 'no@example.com', '255679993757', '$2b$10$5zCpwh18G2ezwUYRATTW9.O1jFiNCwmyuQvuUDO4Y8NCjhzGpwHdm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'dPkWDNHoiMxc_PARK', 'MC140DCE', '4002994474', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 04:51:33'),
('QpgQue2rxxWS_DRVER', 'Benito', 'Mbuya', 'Mbuya', 'no@example.com', '255713262718', '$2b$10$djnZDhcwImv4Ox8bkyI7a.WoUeo6QLxcR/wbgBpU1aEwsgJ4cna/.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'A6bwD22v5ld9_PARK', 'MC297DHU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:31:49'),
('qq2YvLgJ1S4H_DRVER', 'Hassan', 'Mussa', 'Mussa', 'no@example.com', '255713775231', '$2b$10$CiOIkA0DKNJysbp1Pp/6..AmgPLoEmzTynlVUFIyFdzTBMGJWkuAe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSIGANI', '0kyMILnpGwWP_PARK', 'MC390CMP', '4007032378', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:23:45'),
('Qqp62GDlnESJ_DRVER', 'Hassan', 'Ally', 'Ally', 'no@example.com', '255717130920', '$2b$10$u91C9chRb9evtAP0UdfwDuxRZ0yqc/KODbI2Pd0UN40vsm9uyCnEW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', '02suTLI5aVrY_PARK', 'MC584DSG', '4000430309', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 13:16:46'),
('QqtdnlmfuJsX_DRVER', 'Hassan', 'Ally', 'Hassan', 'no@example.com', '255711717177', '$2b$10$tLIumAueAWNJYzBndfjcDOKoC4S0SQ8GdOkhEwOFrjiDgwLxSNblS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBADA', 'TbkAOqQjgkWf_PARK', 'MC797BZN', '4004803110', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:57:36'),
('Qthj6bZcAlnM_DRVER', 'Ibrahim', 'Sefu', 'Sefu', 'no@example.com', '255683888715', '$2b$10$Z1awsnIVDip8gPMjqGJqjOwBp3.fOui7f1hBGlrrAjKRkNXC7h8fa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'dPkWDNHoiMxc_PARK', 'MC915DKQ', '4001101711', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:42:14'),
('QTijZVItpOYM_DRVER', 'Andrew', 'George', 'George', 'no@example.com', '255652604571', '$2b$10$K62TS8rN5wCLHF3Ntd6TgO/N3ZbUzBNMFw6DdDXNoIT0mqA.3xrnG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC879CXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:23:00'),
('qtMVQVt2T8gn_DRVER', 'Joseph', 'Mamba', 'Mamba', 'no@example.com', '255699428724', '$2b$10$10DPco1SjSDs3t05tk3m3.ppdxtfAjFXB23rGFOgADFAUgkgRbTle', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'bncNWzVh24hB_PARK', 'MC526DMK', '4006410079', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 10:57:46'),
('qurgGQR416Ov_DRVER', 'Joashi', 'Gabriel', 'Gabriel', 'no@example.com', '255686793612', '$2b$10$rDK3WhLuvrRWKdPavD/U2uMMifN.G15af.w581lwVghYKlYBA1esW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', '0kyMILnpGwWP_PARK', 'MC596CDF', '4001951364', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:35:14'),
('QV2EYGoSs7ff_DRVER', 'Jafari', 'Hamisi', 'Hamisi', 'no@example.com', '255769279367', '$2b$10$XxGVhVpSAhmv2kqYBYniHOuP3Mww3BlIuewbOgVIFHdhnvKUUQ0um', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'TbkAOqQjgkWf_PARK', 'MC543CAA', '4000187112', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:04:42'),
('qvbdsSZsPUL9_DRVER', 'Hamadi', 'Hatibu', 'Hatibu', 'no@example.com', '255788853583', '$2b$10$o5RLPS3CTXpZ8c2wxDrZtuv7jnezz6IAvbEl5Haiin/QVpH6vDXcy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'WAZO', 'dPkWDNHoiMxc_PARK', 'MC762DCY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 11:42:06'),
('QVWF22XnrkOG_DRVER', 'Jordanus', 'John', 'John', 'no@example.com', '255623956574', '$2b$10$d3Z/MEpW8lTm09lLZ4VmLeipgtNrrhrOwM6D05YXMkuaUENzaKnkW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'cw5bJODebF54_PARK', 'MC663DSM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:37:57'),
('qWmLBS0aMzFd_DRVER', 'Agrey', 'Mussa', 'Mussa', 'no@example.com', '255612892830', '$2b$10$NDd5SJJm.t8GeuK8yTgku.KwFEtickw9BNSTMyuK7tlqE6x00JnGK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '31KR62AnklbN_PARK', 'MC821DZK', '4000948933', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:47:28'),
('QwVCCnfRxUui_DRVER', 'Aman', 'Steveni', 'Steveni', 'no@example.com', '255744460307', '$2b$10$bZVClu7q8zCht5aEVRPlP.AAhxWqiNj/GrlGPdAVLbl3vJONAWMMC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '02suTLI5aVrY_PARK', 'MC573DQE', '4006459410', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 04:49:04');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('Qwz5rEvzkyUR_DRVER', 'Joseph', 'Mshandete', 'Mshandete', 'no@example.com', '255754886836', '$2b$10$sYFHeWQFBvz0Z5vMhtKpNutsSNillcvDFmJprogzsfwBsCM8Tmz9u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSASANI', 'WXlZq1JIxwui_PARK', 'MC325CSP', '4006099245', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:13:54'),
('qXhY2y07Kl7S_DRVER', 'Kondrad', 'Baptist', 'Baptist', 'no@example.com', '255652546161', '$2b$10$kinv9fwAnfYqRw4/jj3Cjuun/1ICpkGVxI65A7b6VBLBMcVSUxTx6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'EpCatERKC6hm_PARK', 'MC422DTR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 10:09:04'),
('QycFPPkKriXw_DRVER', 'Siraji', 'Muhidini', 'Muhidini', 'no@example.com', '255655128364', '$2b$10$ylvQ9P2eJ1OVMGq4ixRNyu2rPH9v/BTViBAcoandIICP1QaOCHmh6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'bncNWzVh24hB_PARK', 'MC846DRF', '40057111288', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:23:39'),
('QznwjDW8dOjy_DRVER', 'Emmanuel', 'Ntenga', 'Ntenga', 'no@example.com', '255719252266', '$2b$10$.O5lASua7CVFbiDARTesTubcmWBEHmIYEoEk3jy8Fb8mfYej8M/2y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'kStcaD5Tbwy3_PARK', 'MC537DDA', '4000791771', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 08:57:41'),
('QZW1pRFkCpXY_DRVER', 'Hussein', 'Hamza', 'Hamza', 'no@example.com', '255689269880', '$2b$10$p/xcQLKi4mUiRfJVYEFJfOLO7JMNqLLzMnbT7K810bxCIxifwuFJC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', 'dPkWDNHoiMxc_PARK', 'MC222DHK', '4004486913', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 06:09:05'),
('R0E6gGcrD76v_DRVER', 'Salimin', 'Ayubu', 'Ayubu', 'no@example.com', '255712561348', '$2b$10$AsXRB317xbWBJTcS.nkRAuHLlP92/ml8dmrasUo61KyNfXdWH2CZ6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBADA', '0kyMILnpGwWP_PARK', 'MC810CPL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:40:35'),
('r86YwmzXHPN8_DRVER', 'Robert', 'Deogratus', 'Deogratus', 'no@example.com', '255718542285', '$2b$10$0lnmPTOstctjZ6o73gILhO.mZxCgjrWswMLW4HlbKexKNXAWvilNS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '31KR62AnklbN_PARK', 'MC561CEW', '4006924971', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:57:41'),
('r8LPxxFgXMip_DRVER', 'Nahumu', 'John', 'John', 'no@example.com', '255659188013', '$2b$10$Xsz8bJbK5vfx8O0F50OnSOQMIyWyipxDSMDzWKfYuX6PAokaRROUK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '02suTLI5aVrY_PARK', 'MC507DVP', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:08:37'),
('r8Qre8JLyP2O_DRVER', 'Peter', 'Adrofu', 'Adrofu', 'no@example.com', '255658137535', '$2b$10$PPL1lws4P2aNfcHS4Fuc1.1s.V6nAHQLpU9AWYKwEAGHZtaAO0QxK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'bncNWzVh24hB_PARK', 'MC649DMK', '4006493349', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:36:09'),
('RaKd5sowIJwX_DRVER', 'Rajabu', 'Issa', 'Issa', 'no@example.com', '255718757518', '$2b$10$89tCUgTX2VcWNHbCnUSiAud9sC6wqWjCKvsxi2cJ2Bc0AfVUrC88q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', '02suTLI5aVrY_PARK', 'MC832DZR', '4006288115', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 14:54:03'),
('rbJogQIHwv4F_DRVER', 'Mwalami', 'J', 'Mnyakaya', 'no@example.com', '255757471772', '$2b$10$OaqtSyAQsHvE3JHSz7nwH.oHIZ5gwN/0pJGN6uuItVL7MFNxC.zNS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'j01Cm7TVXfQG_PARK', 'MC256DRS', '4007109899', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 07:07:44'),
('RBZ0r9wbUzaT_DRVER', 'Shabani', 'Yusuph', 'Yusuph', 'no@example.com', '255656597479', '$2b$10$wX7AcgJ6/.0QplHa9ZPSfOREe/L4dRfkCXyRE7SFrcCjE5sArEDOS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC803CUN', '4006382817', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-03 13:00:46'),
('RDHSTzpBaCZm_DRVER', 'John', 'Mwita', 'Habari', 'no@example.com', '255755048433', '$2b$10$IjPNsaN4.G/QSaZ79Xb3iuk5ENELfAL2TKJ3Fwikuw9pUXCY4xg5a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC221DLY', '4005742296', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 06:27:54'),
('re9mAprRTSKd_DRVER', 'Ally', 'Sephu', 'Sephu', 'no@example.com', '255743410342', '$2b$10$ByMhByweSXE70hs0ZFJABOGdllHi4SKYR3K1fmo.jGwDDkjpg1kvS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'dMPDSyj5WSzj_PARK', 'MC812DLS', '4002104646', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 08:11:07'),
('regTP8E7hco7_DRVER', 'Jumanne', 'Omary', 'Mmaba', 'no@example.com', '255786087888', '$2b$10$1imn3aPLi2.PlnLSieT.wujo/yPpAueE22B.43ciKxs58/7I9wJvW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHARAMBE', 'j01Cm7TVXfQG_PARK', 'MC869DXT', '4002768772', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:12:38'),
('reu7bupqNkRX_DRVER', 'Ramadhani', 'Said', 'Said', 'no@example.com', '255694332972', '$2b$10$vZO9GG/kMWaZ68U8RaHT5ellwPfSt.bslhEwzvTJclV2cglk28Abe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'bncNWzVh24hB_PARK', 'MC372DUK', '4006388689', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 07:43:36'),
('rEvPMddFv1XS_DRVER', 'Jabiri', 'Singano', 'Singano', 'no@example.com', '255682640464', '$2b$10$EMVVLDc3qGT0E7NFf9UZAO8KJIt5mQQo0TS.P5iI30YqhyMadFSDK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'bncNWzVh24hB_PARK', 'MC539DQD', '4002513570', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 09:02:37'),
('rF1qMKJSqFqG_DRVER', 'Ramadhani', 'Shafii', 'Shafii', 'no@example.com', '255684454344', '$2b$10$7f7oS9v0xkWRXj.7JcJ7l.7PhrQjKBKvn7I083nRrdZcE0AN.x8tO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'doTbqRpQ6exA_PARK', 'MC780DNW', '4006974714', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:28:21'),
('rGuoWdp55cfD_DRVER', 'Wadhifa', 'Mohamed', 'Mohamed', 'no@example.com', '255762990014', '$2b$10$l/BGDtYxJkgtSmrN/QxnXOOtbXCFfdjniRp4iFQNHyCMj2sFbyKD.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '70rWw5tOi1Q5_PARK', 'MC255DLY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 11:07:03'),
('RHhaISxdH5Ih_DRVER', 'Ally', 'Amini', 'Amini', 'no@example.com', '255612765652', '$2b$10$41QrpST17a7V4z2UlEGwIeykOb65gq2T8nj4C0rjKLfV6OSO3zw6q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'JrtiDorkKLSN_PARK', 'MC203DCL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 10:49:09'),
('rHk3b5Csb0tn_DRVER', 'Emanuel', 'Elode', 'Elode', 'no@example.com', '255620270162', '$2b$10$opgbPLEAHgK004/TWVseVOL.qytoJfhayJz9gNyhFPB5mLgP6e8j6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'JrtiDorkKLSN_PARK', 'MC185DUA', '40063307585', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:07:58'),
('RI06UdemIxhs_DRVER', 'Charles', 'Steven', 'Steven', 'no@example.com', '255659954588', '$2b$10$d/8dmBUOGOOx.ogOHldoou3/KT2x27xdRavxk16uGZjruDb4wC22i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', 'cw5bJODebF54_PARK', 'MC105DXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-14 11:01:01'),
('RiTuSKXWndkB_DRVER', 'Nicholaus', 'Kusigwa', 'Kusigwa', 'no@example.com', '255782829091', '$2b$10$QZBv9GPLnG9xwTy1/HzU5un08EVEUXF5lGtAumgXJI6oGwKJrV7Bu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'cw5bJODebF54_PARK', 'MC299CUP', '4001403431', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:49:25'),
('rJ3WJkRZub2P_DRVER', 'Ivan', 'Peter', 'Peter', 'no@example.com', '255719750740', '$2b$10$VlWZ7QMp88th7n.CIXGgmOs05McenF7u03tOW1T8GJ3HSAEBYhZ5K', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'tZG8I6XnU13x_PARK', 'MC665EAD', '4002543652', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-25 08:28:35'),
('RjipqqZm4u7Z_DRVER', 'Alex', 'Lusiano', 'Lusiano', 'no@example.com', '255714985952', '$2b$10$o.ohZhVQKDNPS8knD5oqEuexl6Y2Uns63b8BiKeH4CKUt9ju2.jvi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'TbkAOqQjgkWf_PARK', 'MC379DNT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:24:36'),
('rkrUMTTInEQL_DRVER', 'Issa', 'Dunga', 'Dunga', 'no@example.com', '255782652288', '$2b$10$EUDJXzuzoDjGjRpqeY3r2u2hIGzLIX92JxKnKCN7DvlR6gKyQCgNS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', '31KR62AnklbN_PARK', 'MC502CMM', '4002068519', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:42:17'),
('RLa0gwl6mjVA_DRVER', 'Abysama', 'Shaibu', 'Mamu', 'no@example.com', '255786210798', '$2b$10$WuAwNPX9BdeoSJ6qNLqti.xgTY27kKMptne02/p0yl/./h8IJO78W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '70rWw5tOi1Q5_PARK', 'MC849DRZ', '4007115820', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:22:01'),
('rm94OxbXhZ1e_DRVER', 'George', 'Tozil', 'Tozil', 'no@example.com', '255767199566', '$2b$10$yLv4p0afhhetEPovBBshO.86luFCOgAkFanjQ95J6fwL.pJBMy8aK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'dPkWDNHoiMxc_PARK', 'MC666DGA', '4005162192', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:25:37'),
('RoMQwyz2kX9s_DRVER', 'David', 'Sunday', 'Sunday', 'no@example.com', '255783286245', '$2b$10$azYto4pzwDa5aEYeo/VS9eADkOkm9yOvJL8i.NHzp/RJ3cFesnEp2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', '5XdJkCrH2sCP_PARK', 'MC655DTF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:20:36'),
('rpjflY4NhFLc_DRVER', 'Allyyally', 'Hamisi', 'Hamisi', 'no@example.com', '255748622322', '$2b$10$PpHhzL4J6oRcZDDw.BSZFegrPg1lRxK7BbjzI2bJ1GJfzImY.DqQO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'dlA4LlB7B3LL_PARK', 'MC400DFS', '4006877670', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:05:28'),
('Rq0RtHC8NiaG_DRVER', 'Elick', 'Julius', 'Julius', 'no@example.com', '255652505056', '$2b$10$jPUKdpHGZ8oGCMw70oZrxesyaZ279FI7kPCEW.vprimv1YZvkz6PK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '31KR62AnklbN_PARK', 'MC567DCQ', '4001722408', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:37:57'),
('rRHLaySmeJkk_DRVER', 'Chande', 'Saidi', 'Saidi', 'no@example.com', '255717620399', '$2b$10$WooT1u5IWSVKFLF9Nk09y.GBBmeEgPzxLQvVm85XaohwtHjg7jB1G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', 'cw5bJODebF54_PARK', 'MC694DWC', '4000639418', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 06:40:28'),
('rsbaCPmPJeQx_DRVER', 'FADHIL', 'JUMA', 'KASHINDE', 'no@example.com', '255714017978', '$2b$10$CxUHVNVLDChV1b3BYZN0UegfslgHX.DiO7k2I3G.NPKP/pFg0v0Wa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'TbkAOqQjgkWf_PARK', 'MC156DXB', '4002028359', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:48:01'),
('RSLjODG2tb1i_DRVER', 'Amiri', 'Ramadhani', 'Ramadhani', 'no@example.com', '255718577778', '$2b$10$PwlRUmXk7pL1FMzvRpQSGORQzoI4BrrWZSs0DKOVtXxD3b1q2Rl5C', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MWANDEGE', 'cw5bJODebF54_PARK', 'MC413DVA', '4001630161', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:31:53'),
('RtQhjxKonVRl_DRVER', 'Bichuka', 'Rajabu', 'Rajabu', 'no@example.com', '255713528556', '$2b$10$.iO1w/pgq2PchxJ9gskUyuemUgBnJjILeSuVtk1rXrVHcqMLYuSP2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'dMPDSyj5WSzj_PARK', 'MC438CKZ', '4001453791', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 08:44:29'),
('rv9ckZomg6Np_DRVER', 'Samola', 'Ramadhani', 'Ramadhani', 'no@example.com', '255684471426', '$2b$10$YvGITakq7crg/D5TWWc7augpZ.Z/ynR8Ibh9rUEvERI1aI6AaBgMu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '5XdJkCrH2sCP_PARK', 'MC581DNR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:35:31'),
('rvQzok9BjvwI_DRVER', 'HAMAD', 'SAID', 'SAID', 'no@example.com', '255687008698', '$2b$10$q5M0XB0mo4FF4IcyZvJb..YKgQxfVjhoYknqq1kfBO8Rd5NOJL.OW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '02suTLI5aVrY_PARK', 'MC226CFE', '4001471312', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-30 11:25:33'),
('rwjchFXVwgOs_DRVER', 'Hansi', 'Simon', 'Kyando', 'no@example.com', '255766554555', '$2b$10$3Rrb6WbJqAIxjOt7z8KG../5WqoMRBb2IBBteLc3YmZFKpo/NmZ06', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'aeBWtJmiYL5E_PARK', 'MC432DPK', '4004463486', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 10:32:27'),
('RWtz71AncJun_DRVER', 'Tito', 'lazaro', 'mpiziwq', 'no@example.com', '255659644211', '$2b$10$IheneNx8X.nbLQ/vLxTyROTM6li9AFuUMlPmKmv0ilWY5BbVRJ.4u', '1985-12-25', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kitunda', '31KR62AnklbN_PARK', 'MC 811 CQQ', '4000653560', 'notset', 'Sina', 'notset', 'notset', 'rBhWw5M4gixWVCy7CiR7RMOo7LItANXW_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'active', '2024-01-15 08:34:23'),
('Rxg6OHc0sbt1_DRVER', 'Abinel', 'Chomola', 'Chomola', 'no@example.com', '255717020254', '$2b$10$Bbl48ujJrFhc1i.mdgDcD.DCDLwaP7lYrD1NEMd2HZWYFBb6uszdC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBONDEMAJI', '02suTLI5aVrY_PARK', 'MC873DXT', '4001641460', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:29:42'),
('ryu9RTGBnHkN_DRVER', 'Ramadhani', 'Hussein', 'Hussein', 'no@example.com', '255717008080', '$2b$10$iYTiAy0vpfCtZo2YPJ.Or.qXlGqs79S6tTZBfD/uu6CpgQxY.3cKW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', '0WL6I7LTF3eJ_PARK', 'MC166DJS', '4000059692', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 03:55:01'),
('s0Wznygd8Ui1_DRVER', 'Kassimu', 'Omar', 'Omar', 'no@example.com', '255782246420', '$2b$10$XB17vzTdbWLrnLEbOVLgUOB708njKxJfTJvySkLdifaKWAHmv4H2e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'UL09soxnhaZU_PARK', 'MC262CVG', '400533215', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:45:20'),
('S1nQXAsqRzBX_DRVER', 'Patrick', 'Joseph', 'Joseph', 'no@example.com', '255744992387', '$2b$10$eNcvgHM7CLlHtJ8WTnWvUOn.l6VmcyKGnEFwgkxIrwc1EsTNqaIjO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'EZqBvKeM9z2E_PARK', 'MC590CMM', '4006818412', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 13:04:08'),
('S2SPNB30jK73_DRVER', 'Nicholaus', 'Kaduma', 'Kaduma', 'no@example.com', '255719134050', '$2b$10$4tCh87Un9AcvfM2Q4jsFzuyfQXbOJgUOxpHI.6RmYymZewPy7CCTq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', '0WL6I7LTF3eJ_PARK', 'MC930CPW', '4000399035', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 04:57:37'),
('s3KFp4XZGPG6_DRVER', 'Modest', 'William', 'William', 'no@example.com', '255762469949', '$2b$10$Z0RF3EL77LU.iIAKxlF/GOLSm7O7MQqeToHYmnpcrdweKVynjguey', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKONGO', '02suTLI5aVrY_PARK', 'MC516DAM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:41:35'),
('sCuDmpfOjKay_DRVER', 'Ramadhani', 'Saidi', 'Saidi', 'no@example.com', '255624092228', '$2b$10$ywd4LX/9.5VzwoTX4xdOd.kNWTG4BNWpnQQEPb3GxoVy/v4G8VABi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC603DCD', '40042940580', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 09:42:20'),
('SCwKl6KfR8UL_DRVER', 'Adam', 'Salum', 'Salum', 'no@example.com', '255787773759', '$2b$10$mOqwsP/x0t/ZR7miKHvBKeyBa1esQsAcljJI3IWEUb60VjuMIklby', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILAKALA', 'dlA4LlB7B3LL_PARK', 'MC622DCV', '4005391829', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:20:27'),
('SEFkoJyP7jlh_DRVER', 'Daud', 'Moses', 'Moses', 'no@example.com', '255745859802', '$2b$10$agXSZ/0Wcctfsqt5xby9du/snqC8K11IbZUQQkd4Tpr85StpAS8jO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'EZqBvKeM9z2E_PARK', 'MC910CRB', '400749249', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 12:37:25'),
('sFsl7PKrGUN4_DRVER', 'Nasri', 'Dominick', 'Dominick', 'no@example.com', '255788728110', '$2b$10$2JltOlj6FWLgsT1KqAP67OERydSddNCnCkROepuIH6uehYe5GTRHO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', '02suTLI5aVrY_PARK', 'MC500DTR', '4006718379', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:24:37'),
('ShFX7bf7DfYd_DRVER', 'Paul', 'Masunga', 'Masunga', 'no@example.com', '255657314803', '$2b$10$RhtYBeDe/W9.ZxlnI4OareAU4BOCu4c.6B13kFpcAfxUnGJ6Qo6Gm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'dPkWDNHoiMxc_PARK', 'MC812EAH', '400677772', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 04:54:45'),
('sHHogNt7GV6N_DRVER', 'Muhidin', 'Hussein', 'Hussein', 'no@example.com', '255679662798', '$2b$10$90bZauoMRKJPNw6SvX5TbexJATN34qreVOdI95CXA/YX46NbmxcC2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '2dTgMy11XIFX_PARK', 'MC411DEG', '4001634045', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:36:35'),
('sJ79FwIq13Q4_DRVER', 'Derick', 'Madagasikas', 'Madagasikas', 'no@example.com', '255758699780', '$2b$10$0qFiPaYrTICCK51EakY1bufrH7VGNcy7sTHL8PvJ4wN2EHYqaXPqW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'j01Cm7TVXfQG_PARK', 'MC282DWT', '4002298561', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:03:50'),
('SJhNaFPBXOz6_DRVER', 'Juma', 'Shahibu', 'Shahibu', 'no@example.com', '255758020180', '$2b$10$dBR92SE9rGBc6qnivKfLtObWgkIY3q9cepVrWK1ut.3nY/Kq33I6W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'cw5bJODebF54_PARK', 'MC533DYL', '4001325606', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:34:42'),
('Slf5vqwCYgJT_DRVER', 'Shabani', 'Nassoro', 'Nassoro', 'no@example.com', '255718219999', '$2b$10$M9SDGeRpeTGFqYljm1Wc/.PIUdOEBZ7DxRi3dZG2wTDjvuXkgr/i2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPUNGUNI', 'NRgnbytJvAUA_PARK', 'MC724CVK', '4006481146', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 13:25:05'),
('slzE9Izgozb1_DRVER', 'Juma', 'Hamis', 'Hamis', 'no@example.com', '255754027983', '$2b$10$6Lboft474gGGUgR6XrgUjuioeRNJc.7lmXnNYZi0s.8YT4cCGJ6cW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIBURUGWA', 'j01Cm7TVXfQG_PARK', 'MC828DKT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:57:20'),
('smqNeLgq2wKl_DRVER', 'Athuman', 'Tobias', 'Msuya', 'no@example.com', '255682589285', '$2b$10$2OiiHX72h5tDPT/XE2/Q.uE1szy.ytC/RkRxf/r3EDiZQqEXOVfai', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', 'aeBWtJmiYL5E_PARK', 'MC896DHN', '4004274143', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:26:47'),
('SquDU8XGt8uh_DRVER', 'Joseph', 'Gregory', 'Gregory', 'no@example.com', '255715876011', '$2b$10$RNBnlognnExVPyN8XpAmUeBCyn/48ogQcJwGMsW9nKEjdiRV2cWVm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', '0WL6I7LTF3eJ_PARK', 'MC237DBJ', '4000874489', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 04:26:06'),
('SsVuVvCsX2fS_DRVER', 'Denis', 'Peter', 'Peter', 'no@example.com', '255712001027', '$2b$10$7JyGvFu.XUV.BvN.wVgP2OzimyxubwcaKt6aLEoXrJgUTuiVaQ5Ui', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'UL09soxnhaZU_PARK', 'MC368DEB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:09:40'),
('SUT7PIkXgf9y_DRVER', 'Ayubu', 'Muhamdi', 'Athumani', 'no@example.com', '255687704739', '$2b$10$t42dbkHctRO81rY.fzxlSeJ9Uknu1AGdjC0GE75zRs4r1XS5nY3LO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC233DTR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 08:43:15'),
('SVJsb1aNQwcs_DRVER', 'Jeffy', 'Christopher', 'Christopher', 'no@example.com', '255719944900', '$2b$10$lKiJnBLSDDs3d2sHW8ifjuWAfp2KlMzpoLgyZhgRv28X0pHhF1ZgW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', 'JrtiDorkKLSN_PARK', 'MC189CXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:50:42'),
('swGBZOLcOLSk_DRVER', 'David', 'Sereste', 'Sereste', 'no@example.com', '255682993086', '$2b$10$6FRnY9TVqH093O50YtudeetmgHg6atY5fMR7uNSFxFmtDjOTbqpiK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'cw5bJODebF54_PARK', 'MC920DCS', '4001964426', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:36:47'),
('t1zydaELDLx4_DRVER', 'Selehe', 'Zuber', 'Zuber', 'no@example.com', '255712664820', '$2b$10$3MMQe6lifntzCeTp.AtM4ePoTlUqMtsO05kRw2o9B//Hxgwwqltn2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSIGANI', 'UL09soxnhaZU_PARK', 'MC416CDQ', '4001759836', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:11:17'),
('T2WIqxYb2en2_DRVER', 'Amos', 'Leonard', 'Leonard', 'no@example.com', '255717350086', '$2b$10$YG8.bNWgy3w2Na3CHB49VOiKg3Ej2goNgmbgySe6uKkPdycOl83gm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'A6bwD22v5ld9_PARK', 'MC408DLL', '4001235179', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 06:15:40'),
('T3Ggsm92tdYv_DRVER', 'Mohamed', 'Salehe', 'Sultan', 'no@example.com', '255657722743', '$2b$10$RiEhjnB6JbwxBE6nrtgP5OQHv/RdNIGI0ZIifpy48yWIuOTyUYVl6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'WXlZq1JIxwui_PARK', 'MC343DRD', '4002082825', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 05:39:43'),
('TbgjNCzUAZKp_DRVER', 'Godfrey', 'Forcus', 'Forcus', 'no@example.com', '255693122456', '$2b$10$v47DVQP1jYXyHAdRzDjJD.Vst1cC4lDYCD/KZiPrxiLmun4dPMwGi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SEGEREA', '0WL6I7LTF3eJ_PARK', 'MC864CZJ', '4006882751', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 11:46:30'),
('tBibg1BbujVD_DRVER', 'Yudof', 'Masubi', 'Masubi', 'no@example.com', '255783087494', '$2b$10$tU2bhxQ8ADH2l2k2x58tLOxVDAYk/HsF4zAO8TG2pfrDkxz5763O6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC183DNA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 10:54:35'),
('TbN28sDHY7KF_DRVER', 'Kakiyu', 'Suleiman', 'Suleiman', 'no@example.com', '255656160599', '$2b$10$ohODWtL.Qk/852uB23669.6lVllBLQXnEQNr9TGvveoMpIvk/EFfK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'TbkAOqQjgkWf_PARK', 'MC366DPK', '4000308809', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:32:22'),
('TdnNWxArB9IS_DRVER', 'Said', 'Yahaya', 'Yahaya', 'no@example.com', '255689093103', '$2b$10$xKQeF0WBPcCuNGovhdO7pehyIZDFLacJDNApSss.ZXuv.2rN4k9pC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '5XdJkCrH2sCP_PARK', 'MC369DQN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:31:54'),
('TEcyWQT7Iomz_DRVER', 'Mohammed', 'Athumani', 'Athumani', 'no@example.com', '255678093315', '$2b$10$yiSbZ21dfqqgHxurPk/AT.A.IoErDVNVr.MXmrVz1/earEUcWF.kG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'cw5bJODebF54_PARK', 'MC641DBP', '4005721446', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:26:54'),
('TeQytcspxwru_DRVER', 'Kesheni', 'Samwely', 'massawa', 'no@example.com', '255752510571', '$2b$10$/KZn26M77fx7Pu8Oq7ODje.iOiJVhOTic7nCl44gFcKfFRJEDwngi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC970DJV', '4000669080', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 08:44:58'),
('tHkJNhwmteHX_DRVER', 'Yasini', 'Iddi', 'Iddi', 'no@example.com', '255789581009', '$2b$10$icxDUFxh5V7c1jkQhIH8huOpdpEcBLEED2j5wifcEFqwb/VpFZjb.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'TbkAOqQjgkWf_PARK', 'MC362CTN', '4006492789', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:02:37'),
('TIgEdDOfloxW_DRVER', 'Justin', 'Fares', 'Fares', 'no@example.com', '255716637179', '$2b$10$7sUawYVOhAw0rwcoGwawDujVe90er5.AJvx3CPYlSsTTHrzVbKUUe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'WXlZq1JIxwui_PARK', 'MC303ABD', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:39:55'),
('TIhrcJJ38vbq_DRVER', 'Walyoba', 'Joseph', 'Joseph', 'no@example.com', '255719543282', '$2b$10$6ylqTn.HlN45ygPA/z/aQ.3Gqdwnigdz9Nt06.ZGQXMWny0kv66hW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPUNGUNI', 'dPkWDNHoiMxc_PARK', 'MC315DNC', '4006366108', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-27 04:47:06'),
('TiLCmRab0E7U_DRVER', 'Sharf', 'Juma', 'Juma', 'no@example.com', '255719141719', '$2b$10$YiZ4d9UNC7bz.8O1Qx6agOgUAalXfbAtoTWom97DqF3A6g2Oge53q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'j01Cm7TVXfQG_PARK', 'MC114DLQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 11:55:12'),
('TJ4jJbn0Ndhf_DRVER', 'Ramadhan', 'Siraji', 'Siraji', 'no@example.com', '255782225836', '$2b$10$QinZHIf5fVy1NQKHdpGh7e1I8aadHECgz2SUsI67RhNFpj4J0/DQ6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'cw5bJODebF54_PARK', 'MC603DMS', '4005175505', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:42:07'),
('tjJDRgSdmA1a_DRVER', 'Amri', 'Ibrahim', 'Ibrahim', 'no@example.com', '255752599347', '$2b$10$Dx0lEUZAQiKeUPkSZIDSoOOIZBj9mqUtcgdNIRY3VJV6O.yxK0bQy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '2dTgMy11XIFX_PARK', 'MC461CLL', '4006270261', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:42:11'),
('TLZp8sE5l82g_DRVER', 'SHILLA', 'ANTHONY', 'MWASENGA', 'no@example.com', '255716154756', '$2b$10$m0DEcKx2v85D4WIelzRBLuFHTTFGnveubHQlCr7DtKOUCZiEzNJMC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'TbkAOqQjgkWf_PARK', 'MC675CPT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:37:00'),
('tmcn6qqJ8KHz_DRVER', 'DENISON', 'RAPHAEL', 'RAPHAEL', 'no@example.com', '255714874432', '$2b$10$/Y7mX3TqnEWzuhUg7QLegu1Kv0qGaGPm/n1r/iL9lXEZ.qKjBt0/q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', '02suTLI5aVrY_PARK', 'MC132DQW', '4001236452', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 07:57:02'),
('tnCNqsRWRKQB_DRVER', 'Rajabu', 'Juma', 'Mtangalanga', 'no@example.com', '255717292938', '$2b$10$YV2tg4gv7u/JGdlkeqdToueO79rGC0OsFfZxHLpB/NAqwsqPWivW6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'UL09soxnhaZU_PARK', 'MC450BSY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 13:49:00'),
('tnnsqXnsk4nT_DRVER', 'Harubu', 'Milala', 'Milala', 'no@example.com', '255785706670', '$2b$10$SONlptc5u6.3x5YeuY37E.sJDYcVa.4PCNFdsb814ZQtStKH0Iepq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '70rWw5tOi1Q5_PARK', 'MC951DJJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-06 12:08:38'),
('TOk7ntrk3pue_DRVER', 'Amos', 'Josia', 'Josia', 'no@example.com', '255743029317', '$2b$10$7VdHgtToIaexfzYBmY7vqOsRTcJvMF1IQYsBeTlGdWhSY8AnkdS.q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', '5XdJkCrH2sCP_PARK', 'MC251DTX', '4007058765', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:07:54'),
('TP2fIYu5hXMQ_DRVER', 'Mwita', 'Marwa', 'Marwa', 'no@example.com', '255719386248', '$2b$10$6ZLQG1Pq0CnQLMDM.DMhoOvRowuTqRjZtoFr/7/zmKQK6OOwbXixm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC788DLS', '40064044267', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-30 13:08:05'),
('tPgSxem4IVgg_DRVER', 'Deus', 'Mashaka', 'Mashaka', 'no@example.com', '255687396197', '$2b$10$qFy8G2k3ViBxYyFZyaGseu6zzLubZn/VnLocOWtoBRE9Tyga/nuzy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'j01Cm7TVXfQG_PARK', 'MC313DGG', '4000577450', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 08:49:45'),
('TPiDRWJeOOyZ_DRVER', 'Vasco', 'Mikidadi', 'Mikidadi', 'no@example.com', '255699795558', '$2b$10$mccnEd6VQFP7ytNdeD0v3e.7J/hTwM.atTo3kkXg2U3u3zwGPIA2e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KAWE', 'oFwNHpyClQvE_PARK', 'MC727DHK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 09:25:44'),
('tR9oCjNWbibM_DRVER', 'Mbaraka', 'Nuhu', 'Nuhu', 'no@example.com', '255688853384', '$2b$10$VZOJRjP83Bng..2RN4iYbuIriRgQlGmv5Wk2TZy770dEXQpo2Dloy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGOGO', 'dlA4LlB7B3LL_PARK', 'MC114DPL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:46:57'),
('TsJIv7i4Hl7S_DRVER', 'Daniel', 'Suleiman', 'Mwanga', 'Shabsmwanga76@gmail.com', '255620466139', '$2b$10$UWr/D6rGr1NMLsSsE9qzuuspSd95sgHZiQiRC0pMW4V3nDNfWVwAi', '2006-02-06', 'Mwanamume', 'Sijaoa/Sijaolewa', 'Goba, Dar es Salaam', 'dPkWDNHoiMxc_PARK', 'MC 124 AAC', '123540652180', 'notset', 'Kura', '7454647454735343', 'QdYHYe6o9Ep405c6QDQK1eaU7RUk9BUl_IMGMAIN', 'nfnarGjDEIE8A33rdnyWqAp8SiEpHm8x_IMGMAIN', 'no', 'gsfdtdtg72635NVSud', 'Janice Hellow Mwanga', '0745341109', 'active', '2024-01-09 09:02:21'),
('Tt90xM1uq5m2_DRVER', 'Alexius', 'Angelus', 'Angelus', 'no@example.com', '255627512567', '$2b$10$y5xLTERC9mtaCQiUPYgYBeAWNxmSK6PnvVKmYXg/1Gaun2lQ3aMhu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TAMBANI', 'j01Cm7TVXfQG_PARK', 'MC775DRJ', '4006984739', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 07:03:28'),
('Ttvh068A8se0_DRVER', 'Bakari', 'Mohamed', 'Mohamed', 'no@example.com', '255655430722', '$2b$10$2UD6kdSITiSUNUjjDwOHlO4Hwu6mGAASG5jWVbSV2GOVV7schnoZm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', 'JrtiDorkKLSN_PARK', 'MC121DKZ', '4000138721', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:35:04'),
('Txcbmp1QKqlO_DRVER', 'Godfrey', 'Egidi', 'Egidi', 'no@example.com', '255783828005', '$2b$10$kHNhG/kL92so3XN5BabNJehyGZzVw5ZdcSyi4bA3R.AN4sG2na/T2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'UL09soxnhaZU_PARK', 'MC704CPU', '4001590061', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:12:05'),
('U2vZsKp08Y5R_DRVER', 'Mohamed', '.h.', 'Mohamed', 'no@example.com', '255622744974', '$2b$10$OuaU9NgIVcUqRO55MUfKMO1iPzMoHSXMwp5R6glkR.C7qYYJAv0cG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDALE', 'aeBWtJmiYL5E_PARK', 'MC824DZJ', '4004562579', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 08:24:51'),
('u3AECpKLHepE_DRVER', 'Christopher', 'Mussa', 'Mussa', 'no@example.com', '255657563680', '$2b$10$Vc5lteJyestUVYHmNvcKiOCE2G5QEVCrfvl5O.FIG9VAXskcnnIQC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC191DBP', '4000632258', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 07:22:35'),
('u3GpLZG8I2L5_DRVER', 'Salehe', 'Amili', 'Amili', 'no@example.com', '255756722097', '$2b$10$bWlcN8sWa40vjmjeIjUoauMJ83YX7CQTEswiKbAK0G5f7GPQ3yCSC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'WXlZq1JIxwui_PARK', 'MC369CUR', '4002105143', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 07:44:25'),
('u7XImOqYm3uJ_DRVER', 'Salum', 'Rashid', 'Kahasu', 'no@example.com', '255715158682', '$2b$10$CfJ64gVcC76isEfdGwRx2uDQYbosZt.mc/pfwyKDBIaFmQyzval02', '1989-12-22', 'Mwanamume', 'Nimeolewa/Nimeoa', 'Chanika', 'dlA4LlB7B3LL_PARK', 'MC 237 CVU', '4001307633', 'notset', 'Leseni', '4001307633', '92LJMMaHTzmfaOQIQKcCdVGR8UMYe6p9_IMGMAIN', '9cGUkt208VY0lk4tlIJ5uWOOJusNdou9_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Mwajuma Twaha Nakapala', '255653828094', 'created', '2024-02-17 11:26:22'),
('U9okCempMxzi_DRVER', 'Richard', 'w', 'melitha', 'no@example.com', '255714520134', '$2b$10$3AyN/TrUWdvGHy1pnI.6luSpGLX9YjdQkTQXd.H6z/URmB7hH9nYi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC164ASZ', '4006106811', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:37:33'),
('uaKtWUXyzo22_DRVER', 'Shabani', 'Liganya', 'Liganya', 'no@example.com', '255784624365', '$2b$10$cuXH0dp1PqP4cXzWp9EzCe3DL4rYUpK4p.asg5.X.zj6oxZ8o692S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'doTbqRpQ6exA_PARK', 'MC405DSY', '4002750556', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:20:36'),
('UawuVOxreEFH_DRVER', 'Ally', 'Mussa', 'Mussa', 'no@example.com', '255713181457', '$2b$10$P1JCiisT9bTH4v1cg0pc1Owpy8OiWH3Iho4vrWQa/LP94xDTrtPwW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'dPkWDNHoiMxc_PARK', 'MC146CSS', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:04:27'),
('ubMT3OauTv7B_DRVER', 'Hassan', 'Martin', 'Matalus', 'no@example.com', '255710793283', '$2b$10$0Vdd9A2ogOzEbB.jD3CfG.tBtBo4nrno8TIltQOi2KLKAeXJ87ayu', '1988-09-05', 'Mwanamume', 'Nimeolewa/Nimeoa', 'Majohe', 'dlA4LlB7B3LL_PARK', 'MC 522 CSS', '4004233748', 'notset', 'Leseni', '4004233748', 'UiLmg6sHrM3Q5fsnKYeeGINuMU1x0yKh_IMGMAIN', 'gO6g5wlY1Ze0BEXY78RgUMFRwcxiRkQM_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'Hassan Amiri Amlan', '255695580757', 'created', '2024-02-17 10:58:32'),
('uEoIfpjA19av_DRVER', 'Omary', 'Hussein', 'Hussein', 'no@example.com', '255788127522', '$2b$10$JWwYwaVhL1bN.E9LPD8u6OqXUKsoHgbHAfZgSZkz.jqwKxeda0GYq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC547CZB', '4006775818', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:45:19'),
('ufdPpy1bdq1u_DRVER', 'Elick', 'James', 'James', 'no@example.com', '255763014455', '$2b$10$Zkpv0unrOLdCHG/3OhYA4eNpscWirzPfOk8SQWjY6bjI/rM75Ha/e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'dlA4LlB7B3LL_PARK', 'MC283DYY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:52:51'),
('uFgEHZ9QbfQR_DRVER', 'Hamisi', 'Ramadhani', 'Mswaki', 'no@example.com', '255693488981', '$2b$10$o6Sos2DUjpqrSSqoTTQjBeXyThKiB9Lti.BMoWgw67vHVD9irZake', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMARA', 'UL09soxnhaZU_PARK', 'MC711CTM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 14:14:38'),
('uh1EJbLFNijg_DRVER', 'Bakari', 'Saidi', 'Ramadhani', 'no@example.com', '255683308329', '$2b$10$vZui1S/DveGaJXyOftT26uH7zZSkGRwNF8J4wfhNAxcXvWue.ZsgS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'SRsKwzEYK9Eg_PARK', 'MC228CNC', '4003539183', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 12:53:35'),
('UHSW7Pyelr9M_DRVER', 'Guraidi', 'Ramadhani', 'Ramadhani', 'no@example.com', '255755766653', '$2b$10$3J2OYk9SALRTJhFvjqyV9uQxeUtpQC0p2FTq3KJbON5XB35DJbRw6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPUNGUNI', 'dPkWDNHoiMxc_PARK', 'MC230DRZ', '4000063853', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:32:39'),
('UhTuButlOctd_DRVER', 'Idrisa', 'Nuhu', 'Nuhu', 'no@example.com', '255786118521', '$2b$10$0Z9xQ6fYUPTV.h4kT2Mo2.DXIf9szfQCf/sYUuzX5TGjg3ORg47Ei', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', 'dPkWDNHoiMxc_PARK', 'MC512DJN', '4000807481', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:31:12'),
('Uk8ZgLUsPhtA_DRVER', 'Shabani', 'Mussa', 'Mussa', 'no@example.com', '255748165313', '$2b$10$bPvBVf7sdyDK1No4oPMLJOfj4yk50cS7rphgiOJ1l19wa7iV66b3G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'CxnGwrRhzuDY_PARK', 'MC186CYC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 08:55:20'),
('uKKSLteiMuax_DRVER', 'Aweso', 'Yusuph', 'Kipacha', 'no@example.com', '255624095905', '$2b$10$78ICWr2F2nQMolmO/rCxOOAaQiX95OBs1tvE/I1QOSyT3/Rl7LBG2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'WXlZq1JIxwui_PARK', 'MC271CSL', '4006424763', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:48:00'),
('UltsxC3crBuT_DRVER', 'Juma', 'Mwagula', 'Mwagula', 'no@example.com', '255763293944', '$2b$10$8NsEAPbtqCpHFrm87vfspu8NBYSmzBukEkudfHfyhEarOyA.wgS2m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILUNGULE', '7D5Kld7NE5K0_PARK', 'MC928DMU', '4000327425', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 10:33:41'),
('UnTD4Hiskdrw_DRVER', 'Juma', 'Ally', 'Juma', 'no@example.com', '255693431588', '$2b$10$v8cOcm6WT43nuUGK5WqhdOiX2Vzjne71UttqVumfvjkMQ8/Th9fuu', '1988-01-01', 'Mwanamume', 'Nimeolewa/Nimeoa', 'vingunguti ', 'dlA4LlB7B3LL_PARK', 'MC 697 DZK', '4004373708', 'notset', 'Leseni', '4004373708', 'smUrnAHVPf8XBPNjQEsDK8J8VJaF4zzN_IMGMAIN', 'KD7Qx8PSp2OL3O4gS3G1zdNvPacruBhz_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Ally Juma Shunda', '255652582330', 'created', '2024-02-24 16:11:09'),
('upJjDoTFhSzr_DRVER', 'Ismail', 'Yahya', 'Yahya', 'no@example.com', '255686368806', '$2b$10$8WCvbwVcnhjLpCNPfTSrAu6VuXbeGYqhhmwaaS5Ic7zPKMF5EGg/q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', 'dPkWDNHoiMxc_PARK', 'MC847DJC', '4006916010', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 03:55:11'),
('UPTf21MtnSx7_DRVER', 'Malkin', 'Hemed', 'Hemed', 'no@example.com', '255768495228', '$2b$10$u3QRCjX47.7/eGSC93jH/eHtg0VSFgN6hkmtEeOhlJyfHtZr0wbpm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'doTbqRpQ6exA_PARK', 'MC566CNT', '4002484166', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 13:45:53'),
('uqbeFFP1JZl1_DRVER', 'Matokeo', 'Bigambe', 'Bigambe', 'no@example.com', '255746191462', '$2b$10$cU5CtpIw1/jUgOkTyggnnOT9aNhuswuL1Nb6j9BxAuPuTAWUNcd8u', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', '02suTLI5aVrY_PARK', 'MC847CPX', '4003946243', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:16:05'),
('uSAQBRIby3gR_DRVER', 'Yusuph', 'Ayubu', 'Ayubu', 'no@example.com', '255711695357', '$2b$10$bQVk8fOwPIdVZaTv3LIAT.TwrgSbwQh805ZJ.LztuXx.cqtLRf/ju', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'AZIMIO', '0kyMILnpGwWP_PARK', 'MC222DLT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:17:37'),
('UsYfV9K64Yn5_DRVER', 'Bilal', 'Yusuph', 'Juma', 'no@example.com', '255711000000', '$2b$10$10LqmiI.rLaku9Bn36cpb.NE5Dk8sZGTwv0OHCc9wIdaGDhThdPNW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'VFaoEeIAZTNp_PARK', 'T122BAQ', '15161611', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-07 01:59:55'),
('UtxjHE2jB5Ao_DRVER', 'Sharifu', 'Mohamed', 'Mohamed', 'no@example.com', '255712912277', '$2b$10$9JAhZaI/n7C6VJ6uDhIW4Od.SSRfGeYkVWrQ2zDu31iZTFLiqVtku', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'JrtiDorkKLSN_PARK', 'MC507CJL', '4005867242', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:24:39'),
('UVqDIQvqPS29_DRVER', 'Nicholaus', 'Emmanuel', 'Emmanuel', 'no@example.com', '255758507995', '$2b$10$jWrRw0ftG/W5xKBTS/13AueQMeBCw88/JxNJelRAak2GyvuK4fbje', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'HANANASIF', 'kStcaD5Tbwy3_PARK', 'MC346DUR', '4003930378', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-06 09:18:41'),
('uWePLSzfg70q_DRVER', 'Jamens', 'Mussa', 'Mussa', 'no@example.com', '255759610716', '$2b$10$RH5tBMjOX7657eYWsAHOUu59rw.xX6k9MGhCuNjSmWF8QdFVcqS4i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'j01Cm7TVXfQG_PARK', 'MC443DTR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:14:18'),
('Uwrjd78OjRLy_DRVER', 'Verianus', 'Vedasto', 'Vedasto', 'no@example.com', '255677746235', '$2b$10$U.ReGyajzDqS1khF274iAOhcO0381rf6PDpwvqZLkg4vxboXgLu7G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC943EAB', '4001159455', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 05:11:35'),
('UxeKlQXai8BH_DRVER', 'Omary', 'Ramadhani', 'Ramadhani', 'no@example.com', '255687726055', '$2b$10$QMHccCj8YepoiY1wKfUxo.5XOaGuKVeL8FZknmtZjp8F51vs7QQQS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', '02suTLI5aVrY_PARK', 'MC414CKM', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 06:36:48'),
('Uy6rQqvmoej6_DRVER', 'Fredy', 'Ambokile', 'Ambokile', 'no@example.com', '255788880063', '$2b$10$VKXd9htHq16.a0QEnUkOxu.jm1jClt7ROp4hFOskNuR8SSj1JOF3a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KWEMBE', 'dPkWDNHoiMxc_PARK', 'MC466CHJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:41:42'),
('uYlIDdiz3VgE_DRVER', 'Issa', 'Abdalla', 'Abdalla', 'no@example.com', '255687706768', '$2b$10$1Z7NDJpOQB7h4h5YRc/WEOU/wB2xkEQDs5CzdLFKkZ5DXAEkKZKf6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA KUU', 'bncNWzVh24hB_PARK', 'MC148DPV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-23 08:45:22'),
('Uz6Y0bln806I_DRVER', 'godfrey', 'Michael', 'Michael', 'no@example.com', '255710000000', '$2b$10$i4FJb3cwQmY4QjLWV.uPH.cocBj0EUJEe.Gkzm3ez8FuUfJjG9tay', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'Xa76yqB68odh_PARK', 'T123BNM', '1262721', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-06 14:51:08'),
('V2ytJ0QDiM2C_DRVER', 'Said', 'Mohammed', 'Mohammed', 'no@example.com', '255783437157', '$2b$10$e5zjC4GmPRvB9dijVVffx.eeYTGbNyIEnwCnpAHU5IWI1qLgKUYQO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '31KR62AnklbN_PARK', 'MC921DVN', '4000918245', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:29:14'),
('VclOCD2Bgisw_DRVER', 'Kelvin', 'Thobias', 'Thobias', 'no@example.com', '255686869781', '$2b$10$jEkmbRoo0Th51aXRO.n3Oee//RuBMphXfTSiy3or.o.Qu/Zgq/brK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', '02suTLI5aVrY_PARK', 'MC311DBZ', '4006612823', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 11:03:08'),
('VeYMU4ndSUpX_DRVER', 'Michael', 'Joseph', 'Joseph', 'no@example.com', '255762922983', '$2b$10$QoKOt7EEHkKL5b.KWpdsvuwXQRTG1UWqJsVxTGcHw4ruZ0Vg2VIMm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', 'KSbChM4OuYcr_PARK', 'MC734CGB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:46:24'),
('VGQMRY9tGeAt_DRVER', 'Abas', 'Jumaha', 'Jumaha', 'no@example.com', '255693805085', '$2b$10$wNzvWIHj./b/6/B/gM6YfeBwSMvkCeLVishVoYWn5H1hnkfG5mVI6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'doTbqRpQ6exA_PARK', 'MC399DED', '4006754302', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 13:27:59'),
('vIcjR4pWylxc_DRVER', 'Joffrey', 'William', 'William', 'no@example.com', '255714687301', '$2b$10$A3eHFff1rRKPmq5zhvgQM.GV1khEbU5gsM4eB20wvWZfkLsAC8oO6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '5XdJkCrH2sCP_PARK', 'MC674CYY', '4003531377', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:36:17'),
('visYgOmyDusS_DRVER', 'Jackson', 'Zakayo', 'Zakayo', 'no@example.com', '255655761614', '$2b$10$IvDdkXap4G4h/HUO3dpDluxlMwU96LXiMNpzsKTU2HWk80fNybaTS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'A6bwD22v5ld9_PARK', 'MC125DLK', '4003350514', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:33:42'),
('VjBy7gwZbWWd_DRVER', 'Joshua', 'Ali', 'Mbari', 'no@example.com', '255713530261', '$2b$10$QStM4M5lSEwVVCVhlfMc0.JjNcprjKos07l2OTlYEF7TOpngBbXmm', '1999-02-11', 'Mwanamume', 'Nimeolewa/Nimeoa', 'Tabata, Dar es salaam', 'dPkWDNHoiMxc_PARK', 'MC 125 ADC', '4000553438635', 'notset', 'NIDA', '19950416524373534243272', '4L6dfkcKd7PR7kMa4twUOPbMqIUnhicI_IMGMAIN', 'RpIcKj4lNHde73LusLmsjBWitc0ZxYRF_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Janice Malay Msaki', '255745341109', 'created', '2024-02-07 07:12:47');
INSERT INTO `drivers` (`driver_id`, `fname`, `mname`, `lname`, `email`, `phone`, `password`, `dob`, `gender`, `relationship`, `residence`, `park_area`, `vehicle_number`, `licence_number`, `tin_number`, `id_type`, `id_number`, `id_picture`, `passport`, `insurance`, `chama`, `kin_name`, `kin_phone`, `status`, `driver_date`) VALUES
('vlVd7wO0Ttr6_DRVER', 'Mwile', 'Paket', 'Paket', 'no@example.com', '255756670638', '$2b$10$jqiPcc7KBA26W9ZIbPBFBu4h/skK8sHybdbxxh/cyYkfg1vMoRiNu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIMANGA', 'cw5bJODebF54_PARK', 'MC115EAE', '4002992582', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:43:25'),
('VP79kIOt8U93_DRVER', 'Rashid', 'Selemani', 'Selemani', 'no@example.com', '255717286026', '$2b$10$qojz1NXLcMc0k6azVa7zmOZF0cR5VxWeVaMRuO2o/EZFZPFOVCCYO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', '2dTgMy11XIFX_PARK', 'MC794DMK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:47:48'),
('VpSprmkM34nT_DRVER', 'Mussa', 'Shedrack', 'Shedrack', 'no@example.com', '255765526666', '$2b$10$BnwxhQHRKp5NBjtfpEV0U.T2QXLphaSwc4GsuKznvFeflvS7E6HrW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC787DMT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 13:04:00'),
('vt0cXnjp6Tk0_DRVER', 'Omary', 'Athumani', 'Athumani', 'no@example.com', '255755249064', '$2b$10$.pY/H1bgqj51YlCbvp3eG.OqCK4ZxLEwiDBEmtFzCvq6ShhO.CzKS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', '5XdJkCrH2sCP_PARK', 'MC257DET', '4005961233', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:56:14'),
('vTDMZ7N4bWag_DRVER', 'Imaran', 'Said', 'Said', 'no@example.com', '255689250778', '$2b$10$SuIo1zVJrIbGtIqR/MVO1eqHrrsjsjHxkW1.Pw86.CthgX11jhGHG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', '02suTLI5aVrY_PARK', 'MC382CMV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 08:31:20'),
('vtthSoTwNrfU_DRVER', 'Salumu', 'Nasoro', 'Mussa', 'no@example.com', '255715251467', '$2b$10$ct8/LvtETipArq3O4PSrI.QrNW3/nMu78mSRi.u9SZ3.GMSsG/.t6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'nMEqLXzEO9wJ_PARK', 'MC613DYQ', '4002150908', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 08:12:34'),
('VU24XCsVWXT6_DRVER', 'Aicenth', 'Gesabo', 'Gesabo', 'no@example.com', '255744770527', '$2b$10$38kwpiK3lSO.QeCD4Y1TWuHGD1qj2Yto1IsbtAfE.5irO9FxLVFAK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', 'j01Cm7TVXfQG_PARK', 'MC227DXY', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:27:15'),
('VubTYTpcee2j_DRVER', 'Salum', 'Musa', 'Merykiory', 'no@example.com', '255692414644', '$2b$10$jmE7s1MlIj9Eud.IbWyB2eWpm9zur/kZE.BZS8okyY4Fi74qpDSHK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC110DEK', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:04:10'),
('VwfQZyhlMAGX_DRVER', 'Jafari', 'Mohamed', 'Mohamed', 'no@example.com', '255711354044', '$2b$10$5/BNt.uJde5UromhjRVfZeQ17FUy2p78vweevbZmzJoeEgeGIVFaW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MIANZINI', '5XdJkCrH2sCP_PARK', 'MC334DNY', '4004290643', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:28:43'),
('VwlcHeNeRAh6_DRVER', 'Seif', 'Ramadhani', 'Ramadhani', 'no@example.com', '255677932476', '$2b$10$FgMywpTtTuDdmAEc9XzWMeJf1ggvGcwoxCm6GoENbVztNCVUiCEoW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'j01Cm7TVXfQG_PARK', 'MC530DHL', '4004933580', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 05:45:45'),
('VyObOQtnGXPM_DRVER', 'Charles', 'Juma', 'Juma', 'no@example.com', '255622116826', '$2b$10$FUYSTNOIofQcaRg1dORwFuxoCRKLLzK8f0paOGr76cJscU/1DmqZy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'ILALA', '5XdJkCrH2sCP_PARK', 'MC894CZC', '4003254793', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 12:28:21'),
('VzDni1QyGu9P_DRVER', 'Said', 'Massenga', 'Massenga', 'no@example.com', '255742969444', '$2b$10$p6Tmpc8PkLU.RetMydA7ZuopvCj5axTLMmeZbw4cirt5ISYfjjWyK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'dPkWDNHoiMxc_PARK', 'MC369DLJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:34:10'),
('w49teTN5xx0v_DRVER', 'Jumanne', 'Shomari', 'Shomari', 'no@example.com', '255716325366', '$2b$10$59rbjgaMO2s68XrBNrcgWupjTse74hD.uaBjncX8zP7IUbv1qbHQC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', '02suTLI5aVrY_PARK', 'MC121DBN', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 09:17:39'),
('W7n5Yk8OgBOk_DRVER', 'Mikidadi', 'Selemani', 'Selemani', 'no@example.com', '255684565748', '$2b$10$7UoFafWWg5R0Uda2oQm.hu0vpcL0xnXtz0alt8sA2bx5L/x2xpL5a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILUNGULE', '0kyMILnpGwWP_PARK', 'MC526DGS', '4006740774', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 10:12:31'),
('wAMU1Au7kpWM_DRVER', 'Martin', 'Zakayo', 'Zakayo', 'no@example.com', '255658066055', '$2b$10$yjX2D8tBRmhFazM5rD8SPeALJRPu1EBnzkjBh4rn/eNdt4zjndMpC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', '2dTgMy11XIFX_PARK', 'MC268BPV', '4002595230', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:49:35'),
('wc3w9il4Iqai_DRVER', 'Simoni', 'Bashita', 'Bashita', 'no@example.com', '255718452298', '$2b$10$.lSj0NbYKkoosiAsXaeM5OLkYIB4SeakkRcGyjwGyivpRXcbFC2G2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'cw5bJODebF54_PARK', 'MC451CMT', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:27:49'),
('wD5Nb6Zlc39u_DRVER', 'Mussa', 'Jeremiah', 'Jeremiah', 'no@example.com', '255717527777', '$2b$10$gxNjc5/1.wZIdgi8F9XQxOA9y4ANyBBoqRKMYGm8Jmx.72GnheBVK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'A6bwD22v5ld9_PARK', 'MC448CWN', '4000046817', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 06:01:13'),
('wDoz3bqSkcgh_DRVER', 'SAidi', 'Amiri', 'Mageka', 'no@example.com', '255657717707', '$2b$10$HiynTR319E6KIM8yTlN7PuR49XOvVtNiZusQQXHax1IuA3.B1W5MC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'VLziLQKZd37I_PARK', 'MC934CXN', '4001695787', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:01:33'),
('WDwpo5hF0luU_DRVER', 'Ashirafu', 'S', 'Likongoro', 'no@example.com', '255764655051', '$2b$10$difhb8M40BaN14CP8ta5AOBBLuZ.pm1CNZupsDIXxoWKMKCyhiHrm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC381DBJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 07:29:21'),
('wfsjsFkvALHK_DRVER', 'Mazinda', 'Nicodemus', 'Nicodemus', 'no@example.com', '255758119983', '$2b$10$AxPfcRZM0O7TLi.h2uw.ZOwCqQM6VNq5jzkwBZTHd.7ZtHGvMzMQq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUYUNI', '5XdJkCrH2sCP_PARK', 'MC185BKE', '4003971530', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 09:58:58'),
('WGEPbmIJ6ahr_DRVER', 'Mussa', 'John', 'John', 'no@example.com', '255692388606', '$2b$10$/G3zk8LDywLoNLqtJ5Q6X.BPVs/7psLIcLuhvUsfeCb29QT20H7Sm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIWALANI', '5XdJkCrH2sCP_PARK', 'MC628DHE', '4006906566', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 04:53:33'),
('wHGHE23LBuqs_DRVER', 'Roman', 'Anton', 'Atanas', 'no@example.com', '255789890504', '$2b$10$s2GY8y7LENMKEWRmlhbqROisIm8EK4A0hr62zjqtyjxSz/E3fhA8y', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', 'j01Cm7TVXfQG_PARK', 'MC835DEF', '4003564778', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 09:54:45'),
('wizTfUvmHFnn_DRVER', 'Metod', 'Emanuel', 'Emanuel', 'no@example.com', '255762798716', '$2b$10$EiFY.rzAnW1gCge7w6oybOG0tIEPQxQWo2A.ork7H4FNAgjRgTjo2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'dPkWDNHoiMxc_PARK', 'MC111DUM', '4005927765', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 12:28:27'),
('wlDRmN7UFlk1_DRVER', 'Ally', 'Hamidu', 'Hamidu', 'no@example.com', '255627776597', '$2b$10$jMR5P7aV16G74eaGUc.2.uDOHZ7XWwGuQSyydvuYqQx8bk0Ubh7xy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'dPkWDNHoiMxc_PARK', 'MC588DUG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 12:43:17'),
('WlePMTBN1GuK_DRVER', 'Hamisi', 'Guma', 'Guma', 'no@example.com', '255652496781', '$2b$10$YRujxyUVDCFMgiblDDstz.xdcjLFHy.ReI..THXgmEKC3SrNMIdlO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', '2dTgMy11XIFX_PARK', 'MC494DDU', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 08:22:04'),
('WLTrrktm42tj_DRVER', 'Chacha', 'Mwita', 'Mwita', 'no@example.com', '255622052251', '$2b$10$wwFP7z1BGMT6VbRdEPWbh.8BSaAkZkLaLd/E71.1l5HI4el1nGhuu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVULE', '02suTLI5aVrY_PARK', 'MC887DKX', '4000127520', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 05:58:13'),
('wnDUycBzLsDP_DRVER', 'Nurdin', 'Mahmoud', 'Mahmoud', 'no@example.com', '255678297478', '$2b$10$C4S3Cwg8GVf2ushBDqtgJuhkd8ZJjVxF7SBiSPnmglLSPd7IYpTaq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KISUTU', 'dPkWDNHoiMxc_PARK', 'MC232CNG', '4003498251', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 05:03:05'),
('wNmhlsZnDOgq_DRVER', 'HASHIM', 'HUSSEN', 'HUSSEN', 'no@example.com', '255675669593', '$2b$10$lDyrarjcrdy1pycER0mSS.UXZsRg5/BdPLUS3kUvr3plBh6JkKtYu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '0WL6I7LTF3eJ_PARK', 'MC934DBV', '4003317777', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-13 12:24:51'),
('wOKbQPbhv1oa_DRVER', 'Feral', 'Abdulyal', 'Abdulyal', 'no@example.com', '255714337022', '$2b$10$RK5DydNYJQv98ZPZf4zGj.qDaXhR1N/saX/9l616WsD.7GOMdDf1O', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'dlA4LlB7B3LL_PARK', 'MC123DUP', '4000594956', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-04 07:29:42'),
('wQxzwcXLE4an_DRVER', 'Mugabo', 'Muhogo', 'Muhogo', 'no@example.com', '255784355005', '$2b$10$xb.BquezBUMi04UbeE0GUOz.iE0UctpKB6Lr8g2stnldbs.U42R1q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'dPkWDNHoiMxc_PARK', 'MC870DSE', '4000821488', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:16:06'),
('wRp8otqjBYKR_DRVER', 'Mussa', 'Omary', 'Omary', 'no@example.com', '255748347251', '$2b$10$nXdnulvT/nBqpZsEKyCUEeWhellMNfdqAVS5lcIZwpiXbWVIQWBzK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'JrtiDorkKLSN_PARK', 'MC678DBC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 10:57:37'),
('WvwmRyqSgHaF_DRVER', 'Johanes', 'Yustas', 'Yustas', 'no@example.com', '255652916501', '$2b$10$pfCuGT5biBPjkleCBgrphefZ2kEb4LylFhLKI5Lsl7yWcP7FpwZya', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILAKALA', 'A6bwD22v5ld9_PARK', 'MC497DTN', '4002375899', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 11:59:39'),
('wwrGzr9STsTm_DRVER', 'Lameck', 'Dea', 'Dea', 'no@example.com', '255689773946', '$2b$10$VzM/SpP3W3M/9DEHMC04pOLIDOxDnwVb7ncqarhcIlV8DsAqg/rQW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', 'cw5bJODebF54_PARK', 'MC213DPK', '4001424001', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 11:16:35'),
('WxIVHaPexhbq_DRVER', 'Godfrey', 'Joseph', 'Joseph', 'no@example.com', '255713061103', '$2b$10$yNe9.T8lkKjd6L1fjiZm2.4HnVz/BZBziL8wpqfsNJoAMR6PCTB9i', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'dPkWDNHoiMxc_PARK', 'MC531CGA', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 05:32:06'),
('WxnCLlBtulP1_DRVER', 'Jadan', 'Haruna', 'Haruna', 'no@example.com', '255787655288', '$2b$10$hUmmaIjv/Cx5D6KMpIv8.uJQ90fhPwBlzAwlX3M456ScZnaTrUAGy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBURAHATI', 'doTbqRpQ6exA_PARK', 'MC485DVQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 14:01:38'),
('WyepLb3gya8k_DRVER', 'Osiasi', 'Arbati', 'Mgina', 'no@example.com', '255652272077', '$2b$10$6lBMUZJxLCWOL8T62otIQO0gXTEvdxav2w1pwnukjZo/7a2xFhMMO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', 'j01Cm7TVXfQG_PARK', 'MC546DHC', '4000579292', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:29:54'),
('wYLyE8omZK2o_DRVER', 'Levisham', 'Abed', 'Kihongo', 'no@example.com', '255717572098', '$2b$10$fB9wIg0BuZplSKcNoqPQsurvgJtyLTEU7LkWh/Udat45Tvm7PgOe.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MJIMWEMA', 'cw5bJODebF54_PARK', 'MC884CSL', '4002209279', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 11:36:22'),
('wzce4E3Bej0m_DRVER', 'Allen', 'Tibaijuka', 'Tibaijuka', 'no@example.com', '255712900000', '$2b$10$x9bZCDxs1XEv5GjQgjRvp.uuJYIYMyChYciG7zYLorzCTk0jUczrm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', '39PDcy79pNQV_PARK', 'T299EEF', '123456', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-06 11:59:12'),
('WZKq4Qf1GHgd_DRVER', 'Ibrahim', 'Shabani', 'Ibrahm', 'no@example.com', '255685848270', '$2b$10$cDDF/OY4zJw1VKMAPwUmAejsDm4hnu4gRa3N0cyfZ2X9BuH4BUxAW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'j01Cm7TVXfQG_PARK', 'MC752DMW', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-09 06:38:02'),
('X2aVHJmALhSv_DRVER', 'Jackson', 'Msafiri', 'Peter', 'no@example.com', '255684418583', '$2b$10$wK4tWfhtupaJ3AzGthnUeO240knh7nGc6OApiKwxjpyDkk5yMIQdW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'j01Cm7TVXfQG_PARK', 'MC307CZF', '4003494421', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 07:24:53'),
('X4vdUik3Mi4c_DRVER', 'Fredlik', 'Fidel', 'Fidel', 'no@example.com', '255784787352', '$2b$10$lAF8VqxvG2roB7e8UPWzQ.NxKHinN9PG5ae4iqs/wF..FcmphQ2si', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'dMPDSyj5WSzj_PARK', 'MC614CNH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-25 09:29:22'),
('X4ztLzFOBq5K_DRVER', 'Steven', 'Gerrard', 'Gerrard', 'no@example.com', '255716658019', '$2b$10$.uDIFd7KC5ikMNYJnamsVeyYgDW3rCQy2pud.J1oC1UcX96kJbirS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '5XdJkCrH2sCP_PARK', 'MC439DNY', '4002465654', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:20:09'),
('x6jHOMFz8HbU_DRVER', 'Rahimu', 'Jabili', 'Jabili', 'no@example.com', '255774383791', '$2b$10$Upl0doafWwCPT6ZtT/gDKexsesFhiyeqFpn2UHxJboXaAQcPHtVIK', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHAMAZI', 'dPkWDNHoiMxc_PARK', 'MC856DAR', '4001306943', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 10:31:24'),
('X89s7w9ldWbO_DRVER', 'Melkiory', 'Lumatu', 'Lumatu', 'no@example.com', '255652499180', '$2b$10$ibeeJj38H3nTONiB9g8nZ.x/BEFS/E2FtazTMop7kAgMUqLo9az.O', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MNYAMANI', '0WL6I7LTF3eJ_PARK', 'MC927CZV', '4003705317', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 11:40:59'),
('x8Xvr0oLrouj_DRVER', 'Khasim', 'Hamada', 'Hamada', 'no@example.com', '255782047277', '$2b$10$3pY7P4VCkj7DF7/8RDzQrO.qlda8inTISrNku6AGClqH771fX4oOu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'AZIMIO', 'cw5bJODebF54_PARK', 'MC234DRZ', '400262589', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 07:04:33'),
('x9rSgAp9f9rv_DRVER', 'Idrisa', 'Felix', 'Felix', 'no@example.com', '255658668514', '$2b$10$1MOoh.JKQ2nHPmV2/Pl5..Il/zQuXQr7vSLTVqt8n.nlD4XAzmXzm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', 'dPkWDNHoiMxc_PARK', 'MC365DAK', '4005312643', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 12:03:49'),
('xA8F5rvbK1EQ_DRVER', 'John', 'Daniel', 'Daniel', 'no@example.com', '255711636445', '$2b$10$FmzdbPugTdK7as4zrhcWV.AfUD9fDRgEVZoyaOYLxn.JZxWJC9q5G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINONDONI', '0WL6I7LTF3eJ_PARK', 'MC195CNH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 05:03:31'),
('XDH3d7xFmbVg_DRVER', 'Geoffrey', 'Mwakalukwa', 'Mwakalukwa', 'no@example.com', '255755534419', '$2b$10$mAZ4kdquQs1HfgTA8slEt.MONzOIuT5cP280lYoK.fNWJkWDcf/7q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', '5XdJkCrH2sCP_PARK', 'MC503DMN', '4000185294', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:00:49'),
('XEhpfvk8H00z_DRVER', 'Nduwaha', 'Joshuwa', 'Joshuwa', 'no@example.com', '255763467909', '$2b$10$h9BU0qoKVTuqOkjCAYxRIe7k6ZvchJOewWcuqfHbb7Nd2EuCp6ITm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIVUKONI', 'aeBWtJmiYL5E_PARK', 'MC361DEA', '4005132698', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:36:41'),
('Xf6uWDWYDnrP_DRVER', 'Hussein', 'Ramadhan', 'Ramadhan', 'no@example.com', '255684989498', '$2b$10$55WEmAn5RJfKnP8fv1VrluZc9LHe3VeqFmiwMJnsSPaTDxpVDl2UC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', '70rWw5tOi1Q5_PARK', 'MC108DPL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 10:56:01'),
('xGZsaQssYafd_DRVER', 'Masoga', 'Tagala', 'Tagala', 'no@example.com', '255782854480', '$2b$10$DmTMNyvpOylVw1AYghsHl.hXrrD0gkXMjPDAVC5/85IJtTX5L/bk.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'g1lOlgSAOdlU_PARK', 'MC555DPH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 09:31:00'),
('xHEPNaTffBdz_DRVER', 'Mwalimu', 'Juma', 'Seleman', 'no@example.com', '255717465673', '$2b$10$Ra3pQsyWz1NLHyb6hOdYi.PYK0Yl6lzciMYHfMa.ducCDQshC4Bda', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TANDIKA', 'j01Cm7TVXfQG_PARK', 'MC281CYW', '4005425154', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-10 09:30:39'),
('XIQOh9fSLw94_DRVER', 'Mshindo', 'I', 'Mshindo', 'no@example.com', '255788533011', '$2b$10$7jp1ZFPxEjxieGuvKDs/OenQL2USr7EjAVRK3hEGDkyJrEDcoQO72', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC368DLX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:42:54'),
('xiZZ2CzImwKv_DRVER', 'Jamal', 'Rashid', 'Rashid', 'no@example.com', '255717737740', '$2b$10$JdZKH7CNR8pMr4NvI32dFuHgTMDZqmK/rToM20.ogBb6eJt19wTIW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', '31KR62AnklbN_PARK', 'MC264CTE', '4001119866', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 09:06:36'),
('Xj0vHFl9RPlA_DRVER', 'Bashiri', 'Said', 'Said', 'no@example.com', '255715387368', '$2b$10$8NpK7UInBmpWLLg5472sN..Bd6bIAEWmZxxqzZeU.JdsVRt/Gb1jG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC862DDT', '4006859300', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 09:23:46'),
('XKFoSnpGIG4R_DRVER', 'Hamadi', 'Kessy', 'Hamadi', 'no@example.com', '255719004008', '$2b$10$6sdBM9zpwAPUyei0qSv3de8WuVX3AxeKH6mV2Nxvd/n.zVyel0Juu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MJIMWEMA', 'cw5bJODebF54_PARK', 'MC496CNV', '4000010177', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-29 11:23:47'),
('xkHZ3YwNF1pX_DRVER', 'Hamis', 'Shemngoma', 'Shemngoma', 'no@example.com', '255687292587', '$2b$10$LBilKMU5S.fbkaxihD9yIuxCo8aYQZ9e4OO/xq/RR4KzGajxNMVp2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'NRgnbytJvAUA_PARK', 'MC546DAH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 13:47:03'),
('xKqvoxaHTWhS_DRVER', 'Michael', 'Simoni', 'Simoni', 'no@example.com', '255716108827', '$2b$10$8Lc3B9iVmxqEBH77qrKDB.nXyabU5ualpZ.9cfkZKHXxPHwreYtG.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', 'JrtiDorkKLSN_PARK', 'MC549DEC', '4005720647', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:02:09'),
('XLD72WzD8l1e_DRVER', 'Juma', 'Nassoro', 'Nassoro', 'no@example.com', '255693986022', '$2b$10$gK09ylSq3uGo0vPecB9VduaQ39LeP4LcUj5kquGk6Wcpr9TAFESrm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHAFUKOGE', 'cw5bJODebF54_PARK', 'MC730DUR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 06:37:25'),
('xn3ASfSQHj2E_DRVER', 'Idrisa', 'Abdallah', 'Abdallah', 'no@example.com', '255713990889', '$2b$10$u1018I4uWQ//Rdw5fme4t.6QiRIau2U5HWvtFQECMT1jG2S0XG6Xm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MANZESE', '2dTgMy11XIFX_PARK', 'MC277BTY', '4006952881', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 07:39:34'),
('Xne4I16I9GWI_DRVER', 'Tito', 'Mgaya', 'Mgaya', 'no@example.com', '255675686555', '$2b$10$uUNAy1BPbOQXTHVOYD8rZerdhJDEMd05N.10/zTT61lQeCTlAlukq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GONGO LA MBOTO', '02suTLI5aVrY_PARK', 'MC216DTR', '4003583044', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 08:53:23'),
('XonWKhRK2ZhA_DRVER', 'Ramadhan', 'Asumani', 'Asumani', 'no@example.com', '255629392638', '$2b$10$OYhdfSj7BzUVIRY.sNC7beD/rn6lYBrh9LYMl7unWe/SvcS3jF1Qe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'cw5bJODebF54_PARK', 'MC224DZQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 10:57:21'),
('xP9l3hriBTsc_DRVER', 'Hamza', 'Hashim', 'Hashim', 'no@example.com', '255719005022', '$2b$10$lpoqs7F83m5a3yVfxjX.eea18/xQTmco.AFFtp7aS0vMbWQeIajNG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', 'UL09soxnhaZU_PARK', 'MC244CPJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:33:02'),
('xqA2L561guuP_DRVER', 'Shaban', 'Uda', 'Uda', 'no@example.com', '255689441303', '$2b$10$xLs.yOWr4cNpWSS6HxQ.G.j.b7/Jzqkif1YqsSaHP3BeSdfGKGzEi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KILAKALA', 'j01Cm7TVXfQG_PARK', 'MC460DTH', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 08:20:46'),
('xTcIw2jZtBHj_DRVER', 'Joseph', 'Peter', 'Peter', 'no@example.com', '255783340404', '$2b$10$.AdD8vlDPR8/eZG4PR2.0elCVzTIwH21U/3mIzeXE1x3K7zAAPyzu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIANZI', 'A6bwD22v5ld9_PARK', 'MC447DZY', '4001718702', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:41:13'),
('XUr01BLRiRUm_DRVER', 'Halfan', 'Karim', 'Richard', 'no@example.com', '255692229448', '$2b$10$SgJc2aHM58zhuUjN3HSmz.G/Vtn6yhT8fPdNFeK2x.1lWMSHXkYNu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', 'A6bwD22v5ld9_PARK', 'MC836DSG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-05 12:12:01'),
('xuSmmGDe3piu_DRVER', 'Samweli', 'Anthony', 'Anthony', 'no@example.com', '255658334543', '$2b$10$0Cx1fEwSRB2dGegsw9k/RuksYyfCU.ifxNpH23vyTpmdyY08Wrfsy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'UL09soxnhaZU_PARK', 'MC558ABW', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 12:44:02'),
('XuyHj8VUROtO_DRVER', 'Ibrahim', 'Kasim', 'Kasim', 'no@example.com', '255677595163', '$2b$10$MnduOVqrDnfz1gGbQWWIxu50BH3EdlxLw3JkGDxBc7vsqMuMFiida', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'nMEqLXzEO9wJ_PARK', 'MC708DKF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 07:18:48'),
('xVoroyajgc1l_DRVER', 'Mustafa', 'Issa', 'Issa', 'no@example.com', '255684027722', '$2b$10$lv.i.AMmA/D1Uq4/FHRMXO/8vRUNDe4xL3SYGTjVurOoJUvkPtRkm', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'A6bwD22v5ld9_PARK', 'MC273CXX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 05:56:02'),
('xx3ekGSrppEH_DRVER', 'Jackson', 'Philipo', 'Mpanda', 'no@example.com', '255784843351', '$2b$10$ehWxI6y9R6KuNnozrGnUfOjxEuOm.JOP1WkB/jVdtFSrvC.CnAqFS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KARIAKOO', 'aeBWtJmiYL5E_PARK', 'MC760DGA', '4005078158', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 06:45:41'),
('xX8LhvlUcxBP_DRVER', 'Sabato', 'Mwita', 'Mwita', 'no@example.com', '255694370039', '$2b$10$aC92oEnFIOYqGdyVyxCZYePHN7PQu3gUBMwpWt52aFO9hO032Lzji', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'dPkWDNHoiMxc_PARK', 'MC682DXR', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 04:44:52'),
('XykFmVprgPJb_DRVER', 'STEVEN', 'WILLIAM', 'WILLIAM', 'no@example.com', '255716454351', '$2b$10$Fx3iDtOsVfA3gzf/Ezu6MObYHzP3CGYK6lBULJ6jQ4teHMV56ENri', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MABIBO', '02suTLI5aVrY_PARK', 'MC852DAH', '4006187167', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 06:01:16'),
('Y3IzaodpTW9Y_DRVER', 'Jofrey', 'Anton', 'Anton', 'no@example.com', '255748450549', '$2b$10$c5w23ENnWM3nIV07zGWPfemafYSOQzPacyXVNoOLywy2PqNL9KwPi', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'j01Cm7TVXfQG_PARK', 'MC553DSF', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:41:08'),
('Y8J55nGPt4K2_DRVER', 'Joshua', 'Damian', 'Damian', 'no@example.com', '255654131580', '$2b$10$NNeC7zPD6xWFXCCTOVtjuuM4yPV7yGPTlNdtYCL72/GUk/T9K6FMe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBEZI', 'UL09soxnhaZU_PARK', 'MC158DLJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:55:02'),
('YB5d9FiZfpiw_DRVER', 'Tolbat', 'Kashora', 'Kashora', 'no@example.com', '255716737871', '$2b$10$zs2sFQB10REEuINjTw9jEOZGSzFLIHTnD0c3cA4yhsiWu5myBTQa.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', 'WXlZq1JIxwui_PARK', 'MC823DRZ', '4000402029', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-10 06:43:33'),
('YB9XKmxBkdFp_DRVER', 'Fadhili', 'Manula', 'Manula', 'no@example.com', '255756161807', '$2b$10$hkzuUNbEZIFe7azKI/NX6ePjdk9lxQXHFzlYGpSgBjYYxRWUcV65G', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SANDALI', 'A6bwD22v5ld9_PARK', 'MC316DWB', '4000755914', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-28 06:08:49'),
('YbITu5Kn5Gjd_DRVER', 'Dotto', 'Zuberi', 'Zuberi', 'no@example.com', '255710348082', '$2b$10$alnsIyuMNQQABnOqYP9MM.seqVXE/jfmioIqoQ5SovIzdMvmsOzhq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MTONI', 'dPkWDNHoiMxc_PARK', 'MC204CRU', '4003041511', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 06:17:50'),
('ydMYYclKF4vz_DRVER', 'Petro', 'Halisoni', 'Halisoni', 'no@example.com', '255694588883', '$2b$10$yJ0gS/PXGThDyFnr3PZnKeNgdH6MWptOfadBtmT6PBvU2KGGkkcT2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UPANGA MASHARIKI', 'oFwNHpyClQvE_PARK', 'MC757CRB', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-09 09:04:39'),
('yepb4JoOQIAv_DRVER', 'James', 'John', 'John', 'no@example.com', '255687706708', '$2b$10$Wk59v9SOoToqCTYGS1NqV.f4tixKwhpS.c6r96wkrwpA9ZM4vkNPa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIJICHI', '02suTLI5aVrY_PARK', 'MC809DDC', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 04:22:35'),
('YfnZV1Rdbvx0_DRVER', 'Fadhili', 'Nassoro', 'Nassoro', 'no@example.com', '255787066981', '$2b$10$2QR0hT8OPmqeLUfLd5pBZ.PNQCXFCl1tmcpZDSNnipQQj7YFqcSFy', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VINGUNGUTI', '5XdJkCrH2sCP_PARK', 'MC240DGV', '4006904602', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:23:54'),
('YgDHuQCnUuRk_DRVER', 'Iddi', 'Bakari', 'Bakari', 'no@example.com', '255719757037', '$2b$10$SndXx33LeNXLVX5v.jTWE.JyJYvGxpIUHzp.7VEyPMCIFnEViu/4m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'dPkWDNHoiMxc_PARK', 'MC161DSG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-17 09:20:53'),
('yGyDG1PQ8EKs_DRVER', 'Salmini', 'Bashilu', 'Bashilu', 'no@example.com', '255716287637', '$2b$10$J6Wud63h0xtzASUJ7H8K3eP.IETxDYK2MQX7r4IqGMmGBuQA68Heq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'dPkWDNHoiMxc_PARK', 'MC401CLQ', '4001655933', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 05:05:41'),
('YhunJGwRmjob_DRVER', 'Mikidad', 'Msa', 'Msa', 'no@example.com', '255717597909', '$2b$10$4.Jp/PRMQCwDeXijbbHIjOgwNGq04YSM1pSTI/wKW731Ph1UVgFUC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKANGARAWE', 'j01Cm7TVXfQG_PARK', 'MC152DYJ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-30 09:01:52'),
('Yi41iST7PjuB_DRVER', 'Kassimu', 'Ramadhani', 'Ramadhani', 'no@example.com', '255657666410', '$2b$10$DQxyMP/ReX6JSV9Z45mG/.YyOZtCDz1rZf2aN8Y55LwSSNS8r6bGS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIGAMBONI', 'j01Cm7TVXfQG_PARK', 'MC944DUL', '4002223551', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-31 07:00:35'),
('YkWVsJyOGL4s_DRVER', 'Abdul', 'Nguyu', 'Nguyu', 'no@example.com', '255714270415', '$2b$10$rMItlnWEIPnHvd8z79d2UeYOGt1se5WFodvrg2unQx6NI9hxabzf6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'nMEqLXzEO9wJ_PARK', 'MC260DSS', '4006299254', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 07:52:29'),
('YNBRpb953F9G_DRVER', 'Ally', 'Ismal', 'Mikidad', 'no@example.com', '255755384216', '$2b$10$yeyQe5izUsgcIXPDboqHAOX8EnnOcFKOvdWku3o0fu3SlNGzU/YG.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'SRsKwzEYK9Eg_PARK', 'MC489DTG', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-16 11:13:04'),
('yNIksh0SllSE_DRVER', 'Magema', 'Kulwa', 'Kulwa', 'no@example.com', '255695466280', '$2b$10$SRYB6RY4D6sOhd9G3Vx2IO1HwAHO7ZRtqIhxVwzCOQTEoO8aOVW1W', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC512DVH', '4006990379', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:34:11'),
('Yo5vFtrj3LOQ_DRVER', 'Hamza', 'Kondo', 'Kondo', 'no@example.com', '255719505742', '$2b$10$Iuam3fPVAajuYpawO5r/Bu/nBGGobPgXkh/1iPBoi/kHs4/a7WF6S', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'CHANIKA', 'yMLw9kHalHtP_PARK', 'MC813DYK', '4001645183', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 12:19:53'),
('ypqWSA0fIn9Y_DRVER', 'Yosia', 'Isack', 'Isack', 'no@example.com', '255786897259', '$2b$10$5fC9VXwiGwTZYMDTchkHC.kKiixxdk2uIkBNBTUCbSE/GmMY2OMKS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '5XdJkCrH2sCP_PARK', 'MC170DLC', '4006456508', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:59:57'),
('yqYbwshq4H98_DRVER', 'Simon', 'Thomas', 'Thomas', 'no@example.com', '255782482131', '$2b$10$D4aW0mU6LRY9SaMXvEO.Te2Gg0rlNiRibPPvy7tv.AOBHEZHGvT9q', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', '5XdJkCrH2sCP_PARK', 'MC525DLQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:05:52'),
('yrLvN4mH5q5s_DRVER', 'Salum', 'Abdalla', 'Bilali', 'no@example.com', '255696372416', '$2b$10$NRmkQS/2Luu9DJpXBcYYR.9J1nH/oiAz3N51D/QB4JNA/q3oTJMW2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'PUGU', 'j01Cm7TVXfQG_PARK', 'MC134DTQ', '4007131159', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 07:16:52'),
('ytOGYjQqmdE7_DRVER', 'Frolian', 'Baslei', 'Baslei', 'no@example.com', '255712149516', '$2b$10$rANjm3fO8CZuaVyXhTsSTuMYYWbYLOIrxyIy4nQxjYVW0t9eEbXLO', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'SARANGA', 'EpCatERKC6hm_PARK', 'MC663DEB', '4000202051', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-12-02 09:34:28'),
('yvvsQt3moXNs_DRVER', 'YUSUF', 'SAID', 'SAID', 'no@example.com', '255655732228', '$2b$10$/L6rPwrsw9vKbTYvHKD76e72wSsJ/8x9sMCx97b74Up4OCJDk/vve', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'HANANASIF', 'TbkAOqQjgkWf_PARK', 'MC465DTF', '4003106973', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:10:21'),
('yWG54OBpLtuf_DRVER', 'Mursady', 'Omary', 'Omary', 'no@example.com', '255786337832', '$2b$10$9gV.SvYuzJsTNOpBGv8b7e/Fm9DHHARZsrCkspl/RVH5m79jicOXe', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TEMEKE', 'j01Cm7TVXfQG_PARK', 'MC720DQV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-30 08:12:09'),
('yWqh6PRUpWm5_DRVER', 'John', 'Eudesi', 'Eudesi', 'no@example.com', '255714779196', '$2b$10$5LT9VxsCLYIvfnUHsucRqud9M4TYptjbXoygXKTDQ0/cD1mcDQl0m', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', 'yMLw9kHalHtP_PARK', 'MC958CMF', '4001832628', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 12:26:39'),
('YXni5LaRh1nY_DRVER', 'Amin', 'Jaffari', 'Iddi', 'no@example.com', '255745679777', '$2b$10$oCZKwl7zf8CXaNp8GvTOo.z7ERLyvnIf4FiK9Oa/vWl5Rj8iDhFtK', '1976-10-05', 'Mwanamume', 'Nimeolewa/Nimeoa', 'kigamboni', 'BeqQl04C7KTt_PARK', 'MC 123 DGS', '156899878', 'notset', 'Sina', 'notset', 'notset', 'X8L5p24x03Gw2BKn1inUh1UnYYOd78il_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-30 07:36:27'),
('yxOXSrUVMKVk_DRVER', 'Joel', 'Matheo', 'Tseama', 'no@example.com', '255687637671', '$2b$10$s.HI9VIGLLOdlszdKOhqL.7Q4HvjrImd7H90/lR54QuubOV3QKlMe', '1993-04-16', 'Mwanamume', 'Nimeolewa/Nimeoa', 'azizi ally', 'doTbqRpQ6exA_PARK', 'MC 431 CYE', '4005357431', 'notset', 'NIDA', '19930416151080000325', 'irmrP0WjPu68xgCuGa0rm4xH3UrpXtYV_IMGMAIN', 'H28UszlIwOYpta1YIsoflrM014jrYYsk_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'rose fread mrati', '255758650795', 'created', '2024-02-26 12:26:48'),
('yYIBuklCwoE6_DRVER', 'Sylivester', 'Nassary', 'Nassary', 'no@example.com', '255765488241', '$2b$10$HDgozvp1i8Co662rkHN.4uNqPiI1X5.XfCUDc0tKNIVAmgAEw10Fq', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KIPAWA', 'j01Cm7TVXfQG_PARK', 'MC418DWB', '4000821267', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-08 06:12:13'),
('Z0NRX1KegYs8_DRVER', 'Tumsifu', 'Moses', 'Moses', 'no@example.com', '255713316520', '$2b$10$kdKZF7gbn3HFb/t6RAYeRu1oDLTu6uUcQhgizjdN5YJi5c8/U8fMu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'UKONGA', '31KR62AnklbN_PARK', 'MC255CTD', '4006893646', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 10:09:27'),
('z1eN3TdcZfpv_DRVER', 'Abas', 'R', 'Chigo', 'no@example.com', '255784510514', '$2b$10$47l/vm6h/oiWJwox9q3O0.9XS81/YDuzeNOnokdlrZGLyjwDH1mJG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'UL09soxnhaZU_PARK', 'MC445CTB', '4000281483', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 11:38:56'),
('z2B9H65tHkNG_DRVER', 'Michael', 'Ryoba', 'Ryoba', 'no@example.com', '255789973616', '$2b$10$DVlqY6juEshwa2qEpD.EsOH.LMkPeimOtS1c6gLII7vAFhpMs22Ra', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MSONGOLA', '02suTLI5aVrY_PARK', 'MC166DTX', '4004005136', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-24 09:07:01'),
('Z4lJgacmQJ0A_DRVER', 'Abdul', 'Hassani', 'Hassani', 'no@example.com', '255679404054', '$2b$10$yNe1WPZInu.rUmqgu2zxvuZZvu9iipCAumQHEqx5myFr/2FTjTTve', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TABATA', 'SRsKwzEYK9Eg_PARK', 'MC223CWL', '4002878868', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 09:37:11'),
('z5x068TTvAsv_DRVER', 'Stanley', 'Emanuel', 'Makunzo', 'no@example.com', '255787474030', '$2b$10$hH.1/SMBxS/h3tUD60pc5u.PgFm2AMr7A8OklZ26ZAc86fxZrpL4e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'j01Cm7TVXfQG_PARK', 'MC888CZD', '4005549662', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-20 06:53:06'),
('Z7s4BeMKbezX_DRVER', 'Aman', 'Omary', 'Omary', 'no@example.com', '255692356856', '$2b$10$2ScgEqTDULLXsgra0NuLX.wHCaa7HprsygstVrOjuSiLxLZRDFglG', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAKUMBUSHO', 'dPkWDNHoiMxc_PARK', 'MC191DZL', '4006883708', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 05:25:20'),
('z9nKkDxVif7E_DRVER', 'Rajabu', 'Mtulya', 'Mtulya', 'no@example.com', '255682049627', '$2b$10$Q/ksI0/f1/IIIXXfqK1h5OLE4jKI2E.Mb6mhCrlzljjHFo/IShD36', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MJIMWEMA', 'dPkWDNHoiMxc_PARK', 'MC398BRX', '4000092501', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-20 05:47:15'),
('Zcs99j9MYz5p_DRVER', 'Peter', 'Kaguo', 'Kaguo', 'no@example.com', '255682432521', '$2b$10$7C/jZ2TOPzoM8gEf2rhmeOX4ZSoUSVsMsBTqTiLpmLxqJRd./4d56', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'YOMBO VITUKA', 'NRgnbytJvAUA_PARK', 'MC792CPL', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 13:42:57'),
('zdenrmmWOlTx_DRVER', 'Daniel', 'Suleiman', 'Mwanga', 'shabsmwanga76@gmail.com', '255745341109', '$2b$10$WLBWJ9G7V.xTsCH7n6jKxu8Fu6hjKvgWaosDKHE0rtNfTvsr5brKO', '2006-02-07', 'Mwanamume', 'Sijaoa/Sijaolewa', 'Goba Dar es Salaam', 'dPkWDNHoiMxc_PARK', 'MC 124 EGA', '4008746926354', 'notset', 'Sina', 'notset', 'notset', '71IK8hyHsvzFiA6T1AgQWnDRYCb9hHmT_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'Alice Johnson Msaki', '255620466139', 'created', '2024-02-03 09:39:23'),
('zGSWbwEtawdY_DRVER', 'Ally', 'Mohamed', 'Mohamed', 'no@example.com', '255652088046', '$2b$10$wDUl1KB9RGjgPt7.yMgfU.d25oinfCFEf3XNnYRZhvhqWXrBXaDfS', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIKINDU', 'j01Cm7TVXfQG_PARK', 'MC708DSA', '4002533483', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 06:07:00'),
('ZheKMRCLOKfz_DRVER', 'Juma', 'Omary', 'Omary', 'no@example.com', '255712258479', '$2b$10$WO1tpFEWwz5fqX8o0n9GMOwk54NFVhun.PaL8Kwa84mLHYAtFHYQ6', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MCHIKICHINI', '5XdJkCrH2sCP_PARK', 'MC150DSF', '4005955123', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 13:38:53'),
('ZIwaZTOjHl0d_DRVER', 'Mussa', 'Mtija', 'Mtija', 'no@example.com', '255755811408', '$2b$10$1v5WzHXfZK03D4CJa8dzq.dgd19Ki2D2.VhxNaxbXUufBjemaAYEC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KITUNDA', 'dPkWDNHoiMxc_PARK', 'MC456CDZ', '4005279971', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-18 11:41:32'),
('zJcodElBYaPA_DRVER', 'Haji', 'Adamu', 'Adamu', 'no@example.com', '255782124516', '$2b$10$6GSggnS1/bR/kOlmBbL2XOaK9M15qJwoIkPngcJPxtjl1gmcQMDgC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUGURUNI', 'TbkAOqQjgkWf_PARK', 'MC151DJX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:14:07'),
('ZKsFPSaMOuKI_DRVER', 'Ramadhani', 'Muhamed', 'Muhamed', 'no@example.com', '255620202062', '$2b$10$h4YIlbfqf3kdYqvVg.OhxO.Xkee.xr4qRi0WAp4gRL4Vj9Hxr0UA.', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'VIJIBWENI', 'JrtiDorkKLSN_PARK', 'MC926DSG', '4006944273', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 12:17:35'),
('zmB07rM1bWCG_DRVER', 'Abdara', 'Hamis', 'Hamis', 'no@example.com', '255684525354', '$2b$10$oKBJToiDsnW1jmoUqep0eelJ0MO0lj/Yup2Wy9LX0BGKET4XoTmg2', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GOBA', 'JrtiDorkKLSN_PARK', 'MC969DMN', '4000056989', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-24 11:13:39'),
('ZohBV9tcBvj7_DRVER', 'Mohammed', 'Abubakari', 'Abubakari', 'no@example.com', '255757065307', '$2b$10$aTEeCmRqJ3Gx7J1qSLeMs.38AqQ5TVQb2zdgXv85rgeUCUQY9lxny', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MINAZI MIREFU', 'dPkWDNHoiMxc_PARK', 'MC515DWM', '4006866006', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-21 05:58:37'),
('zPTgNWbTDyrM_DRVER', 'Shukuru', 'Carlos', 'Carlos', 'no@example.com', '255695434422', '$2b$10$OiVV5Nwoq63TkLoPpO8Lu.EEiL.mJ64jjOSmlcC9Y347OQ48JxK4a', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAJOHE', '2dTgMy11XIFX_PARK', 'MC175DJN', '4002107514', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 05:52:27'),
('zQkde5FcE1Gy_DRVER', 'nassibu', 'Juma', 'mchafu', 'no@example.com', '255655076108', '$2b$10$8LcoN3VGNr8oc5Jsyw9iwuBdmpznefQHqtM80/4MdfdF0wiUvAxLa', '1983-11-08', 'Mwanamume', 'Nimeolewa/Nimeoa', 'mbagala kongowe', 'sFvY3OHuJ2iK_PARK', 'MC 548 DAH', '4000027180', 'notset', 'Leseni', '4000027180', 'Gg6PnWZGlyZLXFysf636eytWwLLhn5iH_IMGMAIN', '8jqbBfCVimudSbspF7hKjNABOADZlGy4_IMGMAIN', 'no', 'gsfdtdtg73635NGSud', 'lukia ramadhani juma', '255788965026', 'created', '2024-02-20 14:39:43'),
('ZqLtEy79xdfm_DRVER', 'Shaban', 'Lukanyanga', 'Lukanyanga', 'no@example.com', '255769143323', '$2b$10$thDN0yO/BiliJoFZLudQ/.dyt1qD3E8WWjSgL0SXXc/NK78gPzh7e', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'GEREZANI', 'j01Cm7TVXfQG_PARK', 'MC869DRX', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2024-01-03 12:17:29'),
('ZrNkNRN2L3m9_DRVER', 'Omari', 'Selemani', 'Selemani', 'no@example.com', '255687726664', '$2b$10$6aLd2jVVG7SbJpaWxjPgUenwylumlnbBwBWRGt84aCgZRfZH.9ATu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'BUZA', 'yMLw9kHalHtP_PARK', 'MC758CWP', '4002653941', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-22 12:33:02'),
('ztRwkSj3Ulp9_DRVER', 'Bakari', 'Muwanya', 'Issa', 'no@example.com', '255654397732', '$2b$10$zNvX78Ns1IBthOy6pifNeuGHmjg1d.TotMbuzCTfZJ9QzhM/LV0ay', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TUNGI', 'TbkAOqQjgkWf_PARK', 'MC997DCV', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-21 10:12:41'),
('ZTZhPO3qljd9_DRVER', 'swedi', 'juma', 'ramadhani', 'no@example.com', '255717125143', '$2b$10$3NoA/TyVSZta3U4T9o.6seECi5X33EmY.mvrRtnYCoQUBVic8GemG', '1992-02-10', 'Mwanamume', 'Nimeolewa/Nimeoa', 'mbagala', 'cw5bJODebF54_PARK', 'MC 639 CRQ', '4000387536', 'notset', 'Leseni', '4000387536', 'L8NlmWLsriD8RInPxcrFTrXW8IJNrdWB_IMGMAIN', '73YbIQprGWnBhpQ2vzjLAL06tjWuuyH5_IMGMAIN', 'yes', 'gsfdtdtg73635NGSud', 'salum mussa Merrikiyoli', '255692414644', 'created', '2024-02-28 13:56:21'),
('Zu4nifSQ7fDj_DRVER', 'Sabuli', 'Salum', 'Salum', 'no@example.com', '255688396006', '$2b$10$r48c4nAnOxduUrgfhuxyguEtcxpjjX3F/Z4Of0G1RF9KyjH8lCjRC', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MBAGALA', 'KSbChM4OuYcr_PARK', 'MC671DVQ', '4006735292', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-23 11:51:34'),
('zWlSf0YITyqT_DRVER', 'Adinani', 'Mohammed', 'Mohammed', 'no@example.com', '255684018108', '$2b$10$kaMNSja4VpP7SISYe61zpOCc3TbDfAO9EDb1Lx5KW0Oz4rK4Yzhiu', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'MAGOMENI', '2dTgMy11XIFX_PARK', 'MC674CZB', '4002003116', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-16 07:54:12'),
('zwrMiS70QL4U_DRVER', 'Abdalla', 'Mohamed', 'Mohamed', 'no@example.com', '255612094828', '$2b$10$lEvtoBtq7YGhBdgaPAWJROEsqwLnLTXM6crxvxM3gPHbCDpCtZPOW', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'TOANGOMA', 'dPkWDNHoiMxc_PARK', 'MC725DVQ', '0', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-10-19 04:54:02'),
('ZYvYA7TK2sug_DRVER', 'Richard', 'Medson', 'Medson', 'no@example.com', '255747431829', '$2b$10$orNp/NWCRIz3xsn392tgr.UENlqHhp8ns3xViTqKv6xt37gi6BmDa', '2022-10-05', 'mwanamume', 'Sijaoa/Sijaolewa', 'KINYEREZI', 'j01Cm7TVXfQG_PARK', 'MC800DZK', '4007130137', '0', 'notset', 'notset', 'notset', 'needed', 'notset', 'gsfdtdtg73635NGSud', 'notset', 'notset', 'created', '2023-11-11 09:35:00');

-- --------------------------------------------------------

--
-- Table structure for table `driver_logins`
--

CREATE TABLE `driver_logins` (
  `login_id` varchar(225) NOT NULL,
  `driver_id` varchar(225) NOT NULL,
  `login_key` varchar(100) NOT NULL,
  `login_session` varchar(300) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `exipire_date` datetime NOT NULL,
  `login_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_logins`
--

INSERT INTO `driver_logins` (`login_id`, `driver_id`, `login_key`, `login_session`, `status`, `exipire_date`, `login_date`) VALUES
('08SE9Zb5WkrF_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'vW5esPk41dh9_LOGKEY', '$2b$10$wr50mEWxh6eJFvEa/rph8eseHUHW5p1q1RGjXS/1UFdodJai30t3q', 'active', '2024-02-22 07:31:18', '2024-02-01 07:31:18'),
('0g2UoqvKwPXN_LOGIN', 'UnTD4Hiskdrw_DRVER', 'Wma4NmQzrSY5_LOGKEY', '$2b$10$Q88b7aE7XSbNN5./zn9S5.pzlrbTlZgXM/fqi8WMpdXo1rGPBsYpu', 'active', '2024-03-16 16:20:34', '2024-02-24 16:20:34'),
('0OugTAKkeo8C_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'Mm809YgDE1vi_LOGKEY', '$2b$10$60PT6bHWKflQTCU4xs6NteDFVwqQeoPqHYv6FD.36xswTD0sYOjAu', 'active', '2024-03-05 13:19:58', '2024-02-13 13:19:58'),
('5MWHxWZNJlX7_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'oUob7i7y9B2e_LOGKEY', '$2b$10$KK6.oCsoZ/Nbk9BeWf/fC.Au9fkiYTP5xpoNXIqE.8bHUpQFVfkI.', 'logout', '2024-02-22 11:47:27', '2024-02-01 11:47:27'),
('5SsXy3G7bl2e_LOGIN', 'D1ccS62xWIE0_DRVER', 'oatKISU2qyuk_LOGKEY', '$2b$10$7lxChjh6oDYCPw/sS84nYe4J44Zr7ICmvn/mncQCeQ7nCd6Y8Dpvm', 'logout', '2024-02-20 14:15:25', '2024-01-30 14:15:25'),
('8pPq01ITZV1J_LOGIN', 'kRmIXxUloUgX_DRVER', 'e1dpfuluiWdZ_LOGKEY', '$2b$10$afloDo6EeCU6XBUh1W50f.qd/ktFmJwzI2JLOSwkayrwZS5w8SvhO', 'active', '2024-03-19 08:49:22', '2024-02-27 08:49:22'),
('amjzOk0nsCj3_LOGIN', 'cR4zjse0mU0U_DRVER', 'QL4T4klCenuH_LOGKEY', '$2b$10$m.5a4ZZuzEAiyxcXfTFN2.t/E54mdCvnNa2NUXThDx8AIcp16EiUq', 'active', '2024-03-18 10:16:34', '2024-02-26 10:16:34'),
('BJqWn61sL1Ap_LOGIN', 'BVuTpXpi7mAS_DRVER', 't6bGl1uTzl1P_LOGKEY', '$2b$10$E4Q4RteiT.4KrXgiGMCPLuxJU6JoUoOCce.jP9YJEtNaFYT48nG8q', 'active', '2024-03-13 10:20:52', '2024-02-21 10:20:52'),
('c6pL6EBPAH71_LOGIN', 'CNMQTb1TbZur_DRVER', 'pnneOqePSPou_LOGKEY', '$2b$10$ibqH7lqTd422Mljrm2QmNeoVwWEY4RufWCtKSkiLNSlxsVzPx3YK.', 'active', '2024-03-20 05:47:12', '2024-02-28 05:47:12'),
('cpaDp1G6gf45_LOGIN', 'agXbZ9HWAtlD_DRVER', '3WBP1TLoClrR_LOGKEY', '$2b$10$rO4LLaxvj2OOTe1uS8MsUeuA9nbDnPgsLT5Q.YEmfDt1M9cO3a5dm', 'active', '2024-03-25 08:09:39', '2024-03-04 08:09:39'),
('dcbJo8CShfat_LOGIN', 'D1ccS62xWIE0_DRVER', 'zphE4l7tUDH2_LOGKEY', '$2b$10$EEJlwDVpZeIZ25Cm75e6FOZejFgnrkyeISuM.Q8/Tr1zCgfGTK722', 'logout', '2024-02-20 14:11:49', '2024-01-30 14:11:49'),
('fuYtaNgCRqt2_LOGIN', 'D1ccS62xWIE0_DRVER', 'Aw0QuSizkRIf_LOGKEY', '$2b$10$KLBhJ5BraKxKukCCA/Tzpubl0WC2Le6D/o2SYh0c7SmHZKbGZtWUq', 'logout', '2024-01-29 09:11:41', '2024-01-08 09:11:41'),
('GIFSYDHUl1v9_LOGIN', 'D1ccS62xWIE0_DRVER', '0EbtDNhe5i8y_LOGKEY', '$2b$10$JUmq.fu4DiP7Bt/hjmyD7uxR.xKMVI.GjCeHcOGGHolJk2XQPcgS2', 'active', '2024-02-07 17:12:19', '2024-01-17 17:12:19'),
('KWtlb3jCgIs0_LOGIN', 'D1ccS62xWIE0_DRVER', 'BigeTQEyTmcf_LOGKEY', '$2b$10$tQ.nhI0dUheQrHH5XpnFq.7oZU8Ez6APimr4PxjEed..ZKeUF1s26', 'logout', '2024-01-30 08:09:39', '2024-01-09 08:09:39'),
('LhIivn1Z5tQM_LOGIN', 'UnTD4Hiskdrw_DRVER', '6WJ5G0iWr9Ak_LOGKEY', '$2b$10$wNGnFrgdRR8ACPuWT.JqPOYaeAfAmxQwRLXTEnPkYfwWNKgUtH7JO', 'active', '2024-03-16 16:14:09', '2024-02-24 16:14:09'),
('LqYonIv1Ooo5_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'q62SErxgKx2X_LOGKEY', '$2b$10$c/vtNSpmjRH8gVK.nNbINuZ9.6PMD7grOU5Tbp3ZmoWb7EAHaHy3O', 'active', '2024-02-24 10:01:26', '2024-02-03 10:01:26'),
('MR2X30Sow43K_LOGIN', 'RWtz71AncJun_DRVER', 'uztft8q9ZEpf_LOGKEY', '$2b$10$fZ5RryXMGdFcqywG6xsI4OjX96f271iezh/ITFEUcsEibra7M8/EW', 'active', '2024-02-06 06:26:08', '2024-01-16 06:26:08'),
('ov8IPIWD3vry_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'EkhYqTVblDUq_LOGKEY', '$2b$10$05IbApZvzGNAC9Q3O7vUeO/rjPOyU37WrjZRDH37PuWd4Et.bTENW', 'logout', '2024-02-22 09:35:42', '2024-02-01 09:35:42'),
('Po2L4cSCild7_LOGIN', 'BVuTpXpi7mAS_DRVER', '5F4VxAxCAW2A_LOGKEY', '$2b$10$JONMVsITbUaQQnPWqaQ9L.S5aa.M5ImVWkoDSPAet0QXlqNdkvESe', 'logout', '2024-03-19 16:48:03', '2024-02-27 16:48:03'),
('Q5nNsamNzOqw_LOGIN', 'CNMQTb1TbZur_DRVER', 'z3Hkl4i2YsIJ_LOGKEY', '$2b$10$rEx12jtiPSe1YXR9oenvSe66KT9I8wjQV2zutgpcXpqcy6JgEvo36', 'logout', '2024-03-20 05:50:45', '2024-02-28 05:50:45'),
('rq7OmTE3Nws8_LOGIN', 'D1ccS62xWIE0_DRVER', 'E7e2js9OE1uv_LOGKEY', '$2b$10$kCvf4KDkXVd4O3zfED92/.RYDotLnkgALfR5KmK/b9rm.OjyOS50.', 'logout', '2024-02-21 10:54:07', '2024-01-31 10:54:07'),
('SfVkm7YxxsgX_LOGIN', 'TsJIv7i4Hl7S_DRVER', 'przCnOX2sIZV_LOGKEY', '$2b$10$FhtVztd7X/oxfU4mIp0/9uQiVZTO4qozqH69oGN3xtiAVdTl5uZjm', 'logout', '2024-01-30 09:18:59', '2024-01-09 09:18:59'),
('yDLLfbgVwUHw_LOGIN', 'agXbZ9HWAtlD_DRVER', 'cupveDZ2VDJa_LOGKEY', '$2b$10$QdyS2Zlr1ZlA1r0zJvgk9u0aczYDJUaL9OcV6eBkJIIrZm6TuAlb.', 'logout', '2024-03-25 05:27:37', '2024-03-04 05:27:37'),
('yeQjvNtFeMFu_LOGIN', 'cR4zjse0mU0U_DRVER', 'tHqQXmb0WM2b_LOGKEY', '$2b$10$a76L4UyGXDJGNCzqlYBhZuSMHuhpOO.Ln6uWVtvSo1Ew0r0rmkHKS', 'active', '2024-03-18 10:18:35', '2024-02-26 10:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `driver_uniforms`
--

CREATE TABLE `driver_uniforms` (
  `uniform_id` varchar(225) NOT NULL,
  `uniform_num` varchar(20) NOT NULL,
  `driver_id` varchar(225) NOT NULL,
  `validator_id` varchar(225) NOT NULL,
  `status` varchar(50) NOT NULL DEFAULT 'active',
  `uniform_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `driver_uniforms`
--

INSERT INTO `driver_uniforms` (`uniform_id`, `uniform_num`, `driver_id`, `validator_id`, `status`, `uniform_date`) VALUES
('B3Xt3UG69zI1_UNI', 'DSM0104-001003', '17A4Fn98V2zC_DRVER', 'TsJIv7i4Hl7S_DRVER', 'active', '2024-01-29 04:33:40'),
('C4tUdLnlCTPm_UNI', 'DSM0107-011001', 'RWtz71AncJun_DRVER', 'xipMC3yhZX6M', 'active', '2024-01-17 12:11:08'),
('IVYEJqRceNGL_UNI', 'DSM0107-011002', 'hwvMVGXDrYh1_DRVER', 'RWtz71AncJun_DRVER', 'active', '2024-01-17 12:18:46'),
('JRJRCIxmkrw9_UNI', 'DSM0104-001002', 'D1ccS62xWIE0_DRVER', 'TsJIv7i4Hl7S_DRVER', 'active', '2024-01-09 09:30:12'),
('KnyPrahAhii0_UNI', 'DSM0104-001001', 'TsJIv7i4Hl7S_DRVER', 'xipMC3yhZX6M', 'active', '2024-01-09 09:18:06'),
('V2cCjXcaAVVb_UNI', 'DSM0107-011003', 'hwvMVGXDrYh1_DRVER', 'RWtz71AncJun_DRVER', 'active', '2024-01-17 12:19:57');

-- --------------------------------------------------------

--
-- Table structure for table `leadership_types`
--

CREATE TABLE `leadership_types` (
  `type_id` varchar(225) NOT NULL,
  `type_name` varchar(100) NOT NULL,
  `type_number` int(4) NOT NULL,
  `type_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leadership_types`
--

INSERT INTO `leadership_types` (`type_id`, `type_name`, `type_number`, `type_date`) VALUES
('4QQMv4nBCSUw_LTYPE', 'Secretary', 310, '2023-12-14 07:58:32'),
('JfrDys1DIwSW_LTYPE', 'Vise chair', 110, '2023-12-14 07:58:32'),
('kDejDE8NkDpe_LTYPE', 'Chairperson', 10, '2023-12-14 07:58:32');

-- --------------------------------------------------------

--
-- Table structure for table `leaders_permissions`
--

CREATE TABLE `leaders_permissions` (
  `permission_id` varchar(225) NOT NULL,
  `permission_name` varchar(100) NOT NULL,
  `permission_number` int(4) NOT NULL,
  `perm_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaders_permissions`
--

INSERT INTO `leaders_permissions` (`permission_id`, `permission_name`, `permission_number`, `perm_date`) VALUES
('0Zi9DsxQvqMJ_LTYPE', 'Verify member', 510, '2023-12-14 07:38:18'),
('az6jNIZljyMS_LTYPE', 'Rate member', 910, '2023-12-14 07:38:18'),
('iO4LVsypDQFb_LTYPE', 'Sponsor member', 710, '2023-12-14 07:38:18'),
('rFIOUCgrHiU6_LTYPE', 'Remove member', 110, '2023-12-14 07:38:18'),
('xCGJH4KnsRU3_LTYPE', 'Register member', 310, '2023-12-14 07:38:18');

-- --------------------------------------------------------

--
-- Table structure for table `leaders_types_permissions`
--

CREATE TABLE `leaders_types_permissions` (
  `rels_id` varchar(225) NOT NULL,
  `type_id` varchar(225) NOT NULL,
  `permission_id` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `leaders_types_permissions`
--

INSERT INTO `leaders_types_permissions` (`rels_id`, `type_id`, `permission_id`) VALUES
('4dD93nDGYLLz_LPTYPE', 'kDejDE8NkDpe_LTYPE', 'iO4LVsypDQFb_LTYPE'),
('4kRHzugLCVBZ_LPTYPE', 'kDejDE8NkDpe_LTYPE', 'rFIOUCgrHiU6_LTYPE'),
('bsxPtZBaUqrA_LPTYPE', '4QQMv4nBCSUw_LTYPE', 'iO4LVsypDQFb_LTYPE'),
('bxGTbhsQrTdn_LPTYPE', '4QQMv4nBCSUw_LTYPE', 'az6jNIZljyMS_LTYPE'),
('DWoCaY1NZQEK_LPTYPE', '4QQMv4nBCSUw_LTYPE', 'xCGJH4KnsRU3_LTYPE'),
('ERgniB9ACZ7j_LPTYPE', '4QQMv4nBCSUw_LTYPE', '0Zi9DsxQvqMJ_LTYPE'),
('GhgEgGL2Sh5u_LPTYPE', 'kDejDE8NkDpe_LTYPE', 'az6jNIZljyMS_LTYPE'),
('HC7gncrCiUB8_LPTYPE', 'kDejDE8NkDpe_LTYPE', '0Zi9DsxQvqMJ_LTYPE'),
('JejnqLGDQN0A_LPTYPE', 'JfrDys1DIwSW_LTYPE', '0Zi9DsxQvqMJ_LTYPE'),
('KYFZGb3E0RBR_LPTYPE', 'JfrDys1DIwSW_LTYPE', 'iO4LVsypDQFb_LTYPE'),
('Vamzw7jcNPWq_LPTYPE', 'kDejDE8NkDpe_LTYPE', 'xCGJH4KnsRU3_LTYPE'),
('vPWTWGCcIzgs_LPTYPE', 'JfrDys1DIwSW_LTYPE', 'az6jNIZljyMS_LTYPE'),
('ZfwaBOBpNE6k_LPTYPE', 'JfrDys1DIwSW_LTYPE', 'xCGJH4KnsRU3_LTYPE');

-- --------------------------------------------------------

--
-- Table structure for table `park_areas`
--

CREATE TABLE `park_areas` (
  `park_id` varchar(225) NOT NULL,
  `park_name` varchar(200) NOT NULL,
  `park_number` varchar(20) NOT NULL,
  `last_driver_number` int(4) NOT NULL,
  `park_size` int(4) NOT NULL,
  `vehicle_type` varchar(225) NOT NULL,
  `ward` varchar(225) NOT NULL,
  `owner` varchar(100) NOT NULL DEFAULT 'halimashauri',
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `park_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `park_areas`
--

INSERT INTO `park_areas` (`park_id`, `park_name`, `park_number`, `last_driver_number`, `park_size`, `vehicle_type`, `ward`, `owner`, `status`, `park_date`) VALUES
('02suTLI5aVrY_PARK', 'Azam Take Away', 'DSM0104-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'VVxZgzqrNLpV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:14'),
('03JXOpSAiFmY_PARK', 'Toyo Group', 'DSM0316-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:42'),
('0evo3P2LkizN_PARK', 'Tupo Busy Camp', 'DSM0301-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'c7IVEP4sDd1q_WARD', 'Tarura', 'active', '2024-01-06 09:32:28'),
('0GLY4TD0Qw8m_PARK', 'PHILBERT SWAI', 'DSM0123-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'cf8sUuoQregD_WARD', 'Tarura', 'active', '2024-01-06 09:31:33'),
('0H7dVAc2OApH_PARK', 'Boda Star', 'DSM0409-002', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:56'),
('0kyMILnpGwWP_PARK', 'IFM', 'DSM0101-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:07'),
('0UjS8Pi44uYc_PARK', 'Tundwi mwendo kasi', 'DSM0505-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'y9dGXhauaMBN_WARD', 'notset', 'active', '2024-01-06 09:33:03'),
('0WL6I7LTF3eJ_PARK', 'PPF Tower', 'DSM0101-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:06'),
('12lJgFXRaJU5_PARK', 'Ukonga Banana', 'DSM0116-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:28'),
('1FeMH9hJA0Ya_PARK', 'nairobi', 'DSM0509-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:15'),
('1J7AcMa0Rj30_PARK', 'Nekuka kwa sanga', 'DSM0320-009', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:46'),
('1KxcjM5KYwq5_PARK', 'Mliman City survei Road', 'DSM0403-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'Tarura', 'active', '2024-01-06 09:32:51'),
('1mN0KNyND6Mr_PARK', 'Msikitini', 'DSM0205-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:40'),
('1MwuCsgGECeA_PARK', 'Mbezi Beach Shule', 'DSM0213-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:50'),
('1qK4x232NyvL_PARK', 'Sofan', 'DSM0211-018', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:47'),
('1ynZhiiagIdf_PARK', 'Soko la Bwawani', 'DSM0206-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'u2liJcMzNU0z_WARD', 'Tarura', 'active', '2024-01-06 09:31:42'),
('2c3W4nirPjGp_PARK', 'Pochi Nene', 'DSM0505-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'y9dGXhauaMBN_WARD', 'notset', 'active', '2024-01-06 09:33:03'),
('2dTgMy11XIFX_PARK', 'Fire Zebra', 'DSM0103-006', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:13'),
('2RHLRg8IKX5W_PARK', 'Argentina', 'DSM0203-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:38'),
('2SlDSQkkCo5R_PARK', 'KIWABA', 'DSM0414-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'kNlQJGNkKhvv_WARD', 'Tarura', 'active', '2024-01-06 09:32:59'),
('2UxUy3w1y6BD_PARK', 'Mwananyamala Hospital', 'DSM0206-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'u2liJcMzNU0z_WARD', 'Tarura', 'active', '2024-01-06 09:31:42'),
('2yvLTWhqVLsX_PARK', 'Umbaza', 'DSM0322-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('31KR62AnklbN_PARK', 'Manazi Mmoja Mashujaa', 'DSM0107-011', 3, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:20'),
('33ZGvut7KcDM_PARK', 'Tungi Stand', 'DSM0503-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:01'),
('347w3ZQ2K6wt_PARK', 'Morogoro/ Lumumba', 'DSM0108-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'AeYb00oVPWaj_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:22'),
('37LLegfu4vEv_PARK', 'Buza Makenzi group', 'DSM0317-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:44'),
('39PDcy79pNQV_PARK', 'Ferry', 'DSM0101-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:08'),
('3c1ID3qugLFj_PARK', 'Migombani Darajani', 'DSM0114-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'WvlDcbt9UoEW_WARD', 'Tarura', 'active', '2024-01-06 09:31:25'),
('3GaMgScjeQg3_PARK', 'Mjimwema Stand ya Ferry', 'DSM0506-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:05'),
('3lgH5tsdaARE_PARK', 'kimara', 'DSM0404-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'IXmhlBh42MLx_WARD', 'Tarura', 'active', '2024-01-06 09:32:52'),
('3sGp05PNu1X0_PARK', 'Keko Darajani', 'DSM0304-002', 0, 200, 'Enix74BcbwHr_VTYPE', '4cOE0cURcZh3_WARD', 'Tarura', 'active', '2024-01-06 09:32:30'),
('4C12GeJekGpZ_PARK', 'Uhuru_Swahili', 'DSM0106-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:17'),
('4ImMb1SNr4r8_PARK', 'Msongola', 'DSM0123-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'cf8sUuoQregD_WARD', 'Tarura', 'active', '2024-01-06 09:31:33'),
('4KAdEeRrYNGJ_PARK', 'Pile', 'DSM0305-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'QRIvBEgUVCea_WARD', 'notset', 'active', '2024-01-06 09:32:31'),
('4NZqQmb6zDYc_PARK', 'Feri Geti La Kivukoni', 'DSM0101-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:07'),
('4PKAnDK4Xjhf_PARK', 'Gaterunya2', 'DSM0402-005', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:50'),
('4VzxFHeiD9Af_PARK', 'Geza ulole', 'DSM0216-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:52'),
('57CC355ADGUS_PARK', 'Tiptop', 'DSM0408-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'rAMBOde7qx8Z_WARD', 'notset', 'active', '2024-01-06 09:32:55'),
('5eFobTZ9pLrx_PARK', 'Tiptop Manzese', 'DSM0408-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'rAMBOde7qx8Z_WARD', 'notset', 'active', '2024-01-06 09:32:55'),
('5hVrrNF5jbQ1_PARK', 'Unigue', 'DSM0102-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Tarura', 'active', '2024-01-06 09:31:11'),
('5qu8EM7OsZuF_PARK', 'Banzi', 'DSM0314-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:38'),
('5Vp0X7Hqf2GY_PARK', 'Sawaka', 'DSM0320-005', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:46'),
('5XdJkCrH2sCP_PARK', 'Uhuru / Kawawa', 'DSM0110-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'XgiaeW2uvaoM_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('6Ab1DBntagz6_PARK', 'Urafiki', 'DSM0403-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'Tarura', 'active', '2024-01-06 09:32:51'),
('6bjRjD0tGmKL_PARK', 'Buguruni sheli', 'DSM0111-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:24'),
('6ePMUwxJgzB3_PARK', 'Kwa Madadi [Umboma]', 'DSM0506-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:04'),
('6lOKWgVzR51Y_PARK', 'Sinza Kijiweni', 'DSM0402-008', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:50'),
('6Nu7OjDg36bo_PARK', 'Zingiziwa', 'DSM0134-002', 0, 200, 'Enix74BcbwHr_VTYPE', '38oM4HPIV6St_WARD', 'Tarura', 'active', '2024-01-06 09:31:37'),
('6QRb572tsJH9_PARK', 'SOKO LA MIHOGO', 'DSM0116-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:27'),
('6vEf7Vq1188i_PARK', 'Mabatini', 'DSM0211-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:46'),
('6VlslIpDopdk_PARK', 'Maweni/ Maliki', 'DSM0102-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:10'),
('6wijFtd5poSu_PARK', 'Big Stone', 'DSM0506-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:04'),
('70rWw5tOi1Q5_PARK', 'Samora, TANESCO', 'DSM0101-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:08'),
('76zH32CKLvJ3_PARK', 'Kawe Kanisani', 'DSM0213-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:49'),
('7D5Kld7NE5K0_PARK', 'Magole/ Allykhan Road', 'DSM0102-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:11'),
('7OHuRZNoELga_PARK', 'Migombani kinyerezi', 'DSM0125-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'UDJhRcNuCVmc_WARD', 'Tarura', 'active', '2024-01-06 09:31:34'),
('7raQ5Ep1BYdL_PARK', 'Uhuru / Livingstone', 'DSM0106-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:16'),
('8a7wKu5JmiUh_PARK', 'Muhimbili Stand', 'DSM0103-001', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:12'),
('8B9Sy5eZ95nz_PARK', 'Kituo Kipya Relini', 'DSM0119-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'JYgEmjuSr5Ct_WARD', 'Tarura', 'active', '2024-01-06 09:31:31'),
('8bQZ1fMf7rX6_PARK', 'MADAFU STAND', 'DSM0116-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:27'),
('8brIrpEjmpUM_PARK', 'Nyanza Hospital', 'DSM0508-031', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:14'),
('8HAESj2eqoDr_PARK', 'KWA MFAEKA', 'DSM0508-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:09'),
('8I2tvECxoXVo_PARK', 'Neluka shule', 'DSM0320-008', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:46'),
('8KguooNH3qxd_PARK', 'Maruzuku Farajani', 'DSM0127-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'gF4WHnB5yPVU_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('9PUYlQHKAPWK_PARK', 'Soko maziwa', 'DSM0503-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:02'),
('9voE63MWsjaN_PARK', 'Kwa Mwita', 'DSM0314-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:38'),
('a1kf1lEK7eDa_PARK', 'Lulenge', 'DSM0317-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:43'),
('A3ZtuMtvBjEd_PARK', 'Nguvu Kazi', 'DSM0509-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:16'),
('A5QD5hOxW6qW_PARK', 'Bodaboda Steven', 'DSM0508-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:08'),
('A6bwD22v5ld9_PARK', 'Suwata', 'DSM0107-003', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:18'),
('aAQ7a30xcWsF_PARK', 'Shamsiye', 'DSM0216-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:52'),
('AC36rwtJDig3_PARK', 'Matonya Kanisani', 'DSM0404-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'IXmhlBh42MLx_WARD', 'Tarura', 'active', '2024-01-06 09:32:52'),
('aDHlJujmtdUB_PARK', 'APC', 'DSM0216-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:53'),
('adjFeMyWAEI8_PARK', 'Ungindoni', 'DSM0216-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:51'),
('aeBWtJmiYL5E_PARK', 'Bargage', 'DSM0101-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:08'),
('AekFSgz5mUAa_PARK', 'Chakenge', 'DSM0123-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'cf8sUuoQregD_WARD', 'Tarura', 'active', '2024-01-06 09:31:33'),
('afqQUwYDV0Pd_PARK', 'Ukonga', 'DSM0116-020', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'notset', 'active', '2024-01-06 09:31:30'),
('agI7oM9zgsXP_PARK', 'Kagera', 'DSM0203-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:39'),
('AgU6tpF9TwV6_PARK', 'Misuma', 'DSM0211-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:45'),
('AhdNkbULCCeU_PARK', 'Kidarajani', 'DSM0503-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:01'),
('AilNtFujKMcF_PARK', 'Upanga Magharibi', 'DSM0103-009', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:14'),
('AJhHOh5q2Xyk_PARK', 'kikosi kazi kimara', 'DSM0404-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'IXmhlBh42MLx_WARD', 'Tarura', 'active', '2024-01-06 09:32:52'),
('APyDYE4Efz4a_PARK', 'Kitunda', 'DSM0120-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:32'),
('aVXufVMoDnvr_PARK', 'Mwembeladu', 'DSM0507-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:06'),
('AyP7j4YKBlww_PARK', 'Temboni 2', 'DSM0405-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'notset', 'active', '2024-01-06 09:32:54'),
('AZvyKH1sKAfT_PARK', 'Stand mpya teminal', 'DSM0509-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'notset', 'active', '2024-01-06 09:33:16'),
('b06FISEQkqfE_PARK', 'Buza mbuyuni', 'DSM0317-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:44'),
('b47GfdT2rDcq_PARK', 'KWAMKUWA', 'DSM0129-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'otMCeYahA1Ia_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('BcdZW4EYF6yF_PARK', 'Kwa mpemba', 'DSM0503-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:01'),
('BeqQl04C7KTt_PARK', 'Mwingila', 'DSM0506-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:05'),
('BfYbHjeDwuJY_PARK', 'Mashine Ya Maji:5', 'DSM0312-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'FGNkpM7Sdoje_WARD', 'Tarura', 'active', '2024-01-06 09:32:36'),
('BJbr2AanDVTp_PARK', 'Kiyombo', 'DSM0120-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:31'),
('bncNWzVh24hB_PARK', 'Msimbazi / Kiungani', 'DSM0107-004', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:18'),
('BNEjJD7WOEqr_PARK', 'Vijibweni Maputo', 'DSM0508-022', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:12'),
('bOkMcnDBtnqR_PARK', 'Sinza kumekucha kanisani', 'DSM0402-003', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:49'),
('BPP7A2zTcVPB_PARK', 'Makangarawe Bajaji', 'DSM0312-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'FGNkpM7Sdoje_WARD', 'Tarura', 'active', '2024-01-06 09:32:37'),
('Bqr7ZuCaMTcj_PARK', 'Utbz', 'DSM0322-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('BTtKkQ9l28qn_PARK', 'Kona ya Charambe', 'DSM0315-001', 0, 200, 'Enix74BcbwHr_VTYPE', '4EdcEh1WKcbz_WARD', 'Tarura', 'active', '2024-01-06 09:32:39'),
('bUYRKa3V1IVg_PARK', 'Tandamti / Swahili', 'DSM0106-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:15'),
('BW7eK0DLwt6P_PARK', 'Kwa msomali', 'DSM0508-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:10'),
('BWRX7w0eN009_PARK', 'Ujiji', 'DSM0205-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'notset', 'active', '2024-01-06 09:31:41'),
('c0mnTbqnyr2z_PARK', 'Panama', 'DSM0503-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:02'),
('c7GkmQ0yQ6EP_PARK', 'Uhuru / Swahili', 'DSM0106-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:16'),
('cB7vCsaq5TGJ_PARK', 'Kwa Wachaga', 'DSM0116-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:28'),
('cf7uesY8ObLZ_PARK', 'Magori Kibada', 'DSM0509-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:15'),
('CHcdMV9cxG5A_PARK', 'Fundi Baskeli', 'DSM0316-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:41'),
('ciM8ZxbLJYVz_PARK', 'Kanisani', 'DSM0314-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:38'),
('cKwJ942o8enO_PARK', 'Mageti nane', 'DSM0120-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:31'),
('cw5bJODebF54_PARK', 'Station', 'DSM0105-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'ZErbt5SMQpXI_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:15'),
('CxnGwrRhzuDY_PARK', 'Tungi mnadani', 'DSM0503-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:02'),
('cZLGEFbj2wff_PARK', 'Mapipa', 'DSM0201-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'dpVYrKuXaWdx_WARD', 'Tarura', 'active', '2024-01-06 09:31:37'),
('d6eh4JQPgLoR_PARK', 'Ponter', 'DSM0211-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:44'),
('D7DwzWRYskob_PARK', 'Temeke Hospital', 'DSM0301-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'c7IVEP4sDd1q_WARD', 'Tarura', 'active', '2024-01-06 09:32:28'),
('D9773gAd8VLT_PARK', 'Victoria Tanzanite', 'DSM0206-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'u2liJcMzNU0z_WARD', 'notset', 'active', '2024-01-06 09:31:42'),
('DBdqmaGraVGC_PARK', 'WAZALENDO', 'DSM0218-001', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'Tarura', 'active', '2024-01-06 09:31:53'),
('DBhv3mWjtpBq_PARK', 'Luguruni', 'DSM0411-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'BDxmrdHKQYBy_WARD', 'Tarura', 'active', '2024-01-06 09:32:58'),
('Dcx4tgp0QEvR_PARK', 'Muhimbili Primary', 'DSM0103-004', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:13'),
('deB7rC5L7Ra9_PARK', 'Tuinuane Jamii group', 'DSM0503-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:00'),
('Dg9Vwfdzrwhz_PARK', 'Deport SWKL', 'DSM0508-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:09'),
('dgAS4OWwg3d7_PARK', 'Vjb msikiti wa pili', 'DSM0508-021', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:12'),
('di4GmDYcAGLh_PARK', 'Wilayani', 'DSM0203-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:39'),
('Diq0EdgIrAK5_PARK', 'Savoi', 'DSM0317-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'notset', 'active', '2024-01-06 09:32:45'),
('dJep1SAdIvGB_PARK', 'Sigara Relini', 'DSM0313-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'vJme9b7oCQ4q_WARD', 'notset', 'active', '2024-01-06 09:32:38'),
('dlA4LlB7B3LL_PARK', 'Twiga / msimbazi', 'DSM0108-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'AeYb00oVPWaj_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:22'),
('dMPDSyj5WSzj_PARK', 'Baridi', 'DSM0105-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'ZErbt5SMQpXI_WARD', 'Tarura', 'active', '2024-01-06 09:31:15'),
('DOjPPbq5NuK1_PARK', 'Mwembeni', 'DSM0508-016', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:11'),
('DOrbkwaEgRRk_PARK', 'Buza Kwa Lulenge A', 'DSM0317-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:43'),
('doTbqRpQ6exA_PARK', 'Saba - Saba', 'DSM0106-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:15'),
('dPkWDNHoiMxc_PARK', 'Libya/Mtendeni', 'DSM0104-001', 3, 200, 'Enix74BcbwHr_VTYPE', 'VVxZgzqrNLpV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:14'),
('drRoC3masvgR_PARK', 'Africana', 'DSM0219-002', 0, 200, 'Enix74BcbwHr_VTYPE', '2yQyCepJHbzX_WARD', 'Tarura', 'active', '2024-01-06 09:32:27'),
('dTAnZypBjcdR_PARK', 'Umoja vijana kijiweni', 'DSM0404-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'IXmhlBh42MLx_WARD', 'notset', 'active', '2024-01-06 09:32:53'),
('DtDUlBBMT36Y_PARK', 'Makongo Mwisho', 'DSM0218-003', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'Tarura', 'active', '2024-01-06 09:32:26'),
('DUQbbrLdAqmI_PARK', 'Njia Panda Plani', 'DSM0127-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'gF4WHnB5yPVU_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('DV0b8rMbAdWB_PARK', 'Mzambarauni', 'DSM0116-017', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:30'),
('dx6RBPi1CfWJ_PARK', 'Makangarawe', 'DSM0317-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:44'),
('dzlARyuf68n6_PARK', 'MIKENGE/KIDAGAA', 'DSM0501-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'uIlcPBplO36c_WARD', 'Tarura', 'active', '2024-01-06 09:32:59'),
('dZVyb8lyMdId_PARK', 'Madafu', 'DSM0116-016', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:29'),
('E10bkxjmpADT_PARK', 'Kona Ya Mbutu Bajaji', 'DSM0502-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'vU293owzIW0U_WARD', 'Tarura', 'active', '2024-01-06 09:32:59'),
('e28m8Z4vinRK_PARK', 'Sangezi', 'DSM0301-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'c7IVEP4sDd1q_WARD', 'notset', 'active', '2024-01-06 09:32:28'),
('e3GBgHUkQGEA_PARK', 'Mabibo sokoni', 'DSM0409-003', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:56'),
('e47dIusJxSRP_PARK', 'Mashine ya maji no.05', 'DSM0317-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:43'),
('e645VBfWi25q_PARK', 'Kwa Hamza', 'DSM0213-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:50'),
('e6v7miElp3RV_PARK', 'BOMOCO_Oil com', 'DSM0409-004', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:56'),
('EAEBT2MoAkjp_PARK', 'Uhasubu', 'DSM0120-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:31'),
('eeKwTDIjurvG_PARK', 'Ugweno', 'DSM0307-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:33'),
('ef04YSK3jEPN_PARK', 'Mombasa Relini', 'DSM0116-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:28'),
('egMwu7C37jCA_PARK', 'Hali ya Hewa', 'DSM0126-001', 0, 200, 'Enix74BcbwHr_VTYPE', '0UfdkU8AoOsD_WARD', 'Tarura', 'active', '2024-01-06 09:31:34'),
('eigZTVU0Hs4O_PARK', 'Stephen Morris Nayopa', 'DSM0403-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'Tarura', 'active', '2024-01-06 09:32:51'),
('EkADWqACQEP7_PARK', 'Mama Zakaria', 'DSM0205-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:40'),
('eLPfBczseWQ0_PARK', 'ADMIRE BODA BODA', 'DSM0310-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'coj2zsDLTfFd_WARD', 'Tarura', 'active', '2024-01-06 09:32:34'),
('ElPO7NaQvTWH_PARK', 'Shule', 'DSM0213-016', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'notset', 'active', '2024-01-06 09:31:51'),
('enAGcQnNUfzH_PARK', 'Samosa Development Group', 'DSM0317-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:43'),
('EoqZpmUI3FLw_PARK', 'Rajani Mti Pesa', 'DSM0508-030', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:13'),
('EpCatERKC6hm_PARK', 'Mkunguni/Bibititi', 'DSM0108-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'AeYb00oVPWaj_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:22'),
('eQYRgZ54gBb5_PARK', 'Nzasa', 'DSM0321-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'mZcZtk6fxtQT_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('eVtLDw5K8EPk_PARK', 'PC Madukani', 'DSM0503-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:00'),
('eX8IHjOh9XLm_PARK', 'Makongo CCM', 'DSM0218-004', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'Tarura', 'active', '2024-01-06 09:32:26'),
('EycnVELA1IX3_PARK', 'UMABABU', 'DSM0220-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'ijavmxD5Zkod_WARD', 'Tarura', 'active', '2024-01-06 09:32:27'),
('eZl1g3372IFo_PARK', 'Mindu / Maliki', 'DSM0102-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:10'),
('EZqBvKeM9z2E_PARK', 'Lumumba/Tanda mti', 'DSM0108-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'AeYb00oVPWaj_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:22'),
('F4IqR6P79Tln_PARK', 'Bajaj stand', 'DSM0316-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:41'),
('faDhkKEIjQKf_PARK', 'Tax Market', 'DSM0207-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'I35uYsHdYkhC_WARD', 'notset', 'active', '2024-01-06 09:31:43'),
('FF2qOZHv8ZGY_PARK', 'ENGEN', 'DSM0323-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'gHC7dLhNEVuM_WARD', 'Tarura', 'active', '2024-01-06 09:32:48'),
('ffCLmi5j8WPc_PARK', 'Ukonga shule', 'DSM0116-018', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'notset', 'active', '2024-01-06 09:31:30'),
('fhVj336jdZw5_PARK', 'Maendeleo Group', 'DSM0315-002', 0, 200, 'Enix74BcbwHr_VTYPE', '4EdcEh1WKcbz_WARD', 'Tarura', 'active', '2024-01-06 09:32:39'),
('FkCCFFuTcewz_PARK', 'Moshi Bar', 'DSM0116-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:29'),
('FlfsM65FpRNe_PARK', 'Kitonga Sokoni', 'DSM0123-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'cf8sUuoQregD_WARD', 'Tarura', 'active', '2024-01-06 09:31:33'),
('fP8Fhtz9hqsU_PARK', 'Chaurembo', 'DSM0205-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:39'),
('fP8UKDL7tQY7_PARK', 'Mongo la ndege darajani', 'DSM0116-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:27'),
('fpeltnt4QsWT_PARK', 'Mtaa wa Faraja', 'DSM0305-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'QRIvBEgUVCea_WARD', 'Tarura', 'active', '2024-01-06 09:32:30'),
('fQJi10yoYORQ_PARK', 'Mkwambe', 'DSM0316-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:42'),
('fs2YWmq0nYKt_PARK', 'Njia Panda Jeshini', 'DSM0507-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:07'),
('fWAbcIH02GJP_PARK', 'Msimbazi / masasi', 'DSM0109-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('fzjFI8s4h1e2_PARK', 'Minazini', 'DSM0309-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'C55qjDu7fXGF_WARD', 'Tarura', 'active', '2024-01-06 09:32:34'),
('g1lOlgSAOdlU_PARK', 'Pile - Central', 'DSM0107-019', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'notset', 'active', '2024-01-06 09:31:21'),
('G7kJIAy8xnkG_PARK', 'Kinyerezi Darajani', 'DSM0116-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:27'),
('g82WdifW8dWH_PARK', 'Mawaba', 'DSM0315-003', 0, 200, 'Enix74BcbwHr_VTYPE', '4EdcEh1WKcbz_WARD', 'Tarura', 'active', '2024-01-06 09:32:40'),
('GkC3MvwVcS7J_PARK', 'Uhuru na Nyamwezi', 'DSM0107-013', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Tarura', 'active', '2024-01-06 09:31:20'),
('GkI98etdryKS_PARK', 'Vijibweni darajani', 'DSM0508-024', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:12'),
('glBQR99iVYeT_PARK', 'Tandamti_Livingstone', 'DSM0106-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:18'),
('GQFqjJ9HdrrL_PARK', 'Temino Sokoni', 'DSM0509-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:15'),
('GQmadyBAdPU4_PARK', 'Suka', 'DSM0405-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'notset', 'active', '2024-01-06 09:32:54'),
('GSBVdEjG6RW2_PARK', 'HAWAII', 'DSM0134-001', 0, 200, 'Enix74BcbwHr_VTYPE', '38oM4HPIV6St_WARD', 'Tarura', 'active', '2024-01-06 09:31:36'),
('GtOs3LPzQWTr_PARK', 'Nishati Madini', 'DSM0101-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:07'),
('GW7locVgZ1zS_PARK', 'MNC Bakharesa', 'DSM0127-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'gF4WHnB5yPVU_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('GwQU06KmFp8H_PARK', 'Brazil', 'DSM0203-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:38'),
('gxZ1CRKGcGUW_PARK', 'Botanic Garden', 'DSM0101-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:07'),
('GybrV1bgK4fG_PARK', 'Mugabe', 'DSM0402-004', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:49'),
('H1U4SzAvZhw7_PARK', 'Machelenga', 'DSM0205-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:40'),
('h2b0rZRVR4Jx_PARK', 'Kwa Zena Kawawa', 'DSM0213-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:50'),
('H6l0aNGvY2uc_PARK', 'Afro OIL', 'DSM0508-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:10'),
('HB968YjSpuac_PARK', 'Bwawani', 'DSM0211-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:45'),
('hefHmWOYc5An_PARK', 'Kipati Stand', 'DSM0311-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:36'),
('Hefmx9TkFSuH_PARK', 'Kimara Matengini', 'DSM0405-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'Tarura', 'active', '2024-01-06 09:32:53'),
('HfD7nz5ogTet_PARK', 'Mbande  Magengeni', 'DSM0314-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:39'),
('HHvsZiu8xnar_PARK', 'Sinza kwa Remi', 'DSM0402-001', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:49'),
('Hk8UpiB8zl2l_PARK', 'Temboni hospital', 'DSM0405-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'notset', 'active', '2024-01-06 09:32:53'),
('HlwszAjdgiUp_PARK', 'Hekima Group', 'DSM0314-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:39'),
('hQqGru2efP4Y_PARK', 'Biashara club', 'DSM0309-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'C55qjDu7fXGF_WARD', 'Tarura', 'active', '2024-01-06 09:32:34'),
('HQu0x4w146iP_PARK', 'Mwenge Stand', 'DSM0211-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:44'),
('hrvKTDaOulXW_PARK', 'Salma Kikwete', 'DSM0211-020', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:48'),
('HUMXmgDNwfYS_PARK', 'Uhuru / Nyamwezi', 'DSM0107-007', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:19'),
('huOUQZiRvg9N_PARK', 'Muhimbili  Hospital', 'DSM0103-008', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:13'),
('HzxgtilubC34_PARK', 'Njia Panda', 'DSM0130-001', 0, 200, 'Enix74BcbwHr_VTYPE', '55gdONIg7Vyp_WARD', 'Tarura', 'active', '2024-01-06 09:31:36'),
('I88VM7AE39cP_PARK', 'Double Kibin', 'DSM0306-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:31'),
('iAvJUTjHy0PT_PARK', 'Lindi/Nyamwezi', 'DSM0107-017', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Tarura', 'active', '2024-01-06 09:31:21'),
('iazoGOaXSGe7_PARK', 'Kihibwa', 'DSM0114-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'WvlDcbt9UoEW_WARD', 'Tarura', 'active', '2024-01-06 09:31:25'),
('iGAE1A26lq9j_PARK', 'Ushuani Transpoter', 'DSM0216-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:52'),
('iGtNWDgv4g60_PARK', 'Mchelenga', 'DSM0205-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:40'),
('iJdyNQJ08Yfq_PARK', 'Tanesko Buza', 'DSM0313-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'vJme9b7oCQ4q_WARD', 'notset', 'active', '2024-01-06 09:32:37'),
('iK1rOb9hi5Wb_PARK', 'Mabibo Sahara', 'DSM0409-006', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:57'),
('IO6tifOQ00ry_PARK', 'Neruka kwa sanga', 'DSM0320-007', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:46'),
('Ios4ZqU4ja8E_PARK', 'Congo_Uhuru', 'DSM0107-018', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Tarura', 'active', '2024-01-06 09:31:21'),
('iSVAopHl0IYP_PARK', 'Asimwe Kibaoni', 'DSM0508-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:09'),
('ITcKvbpF2xwA_PARK', 'Relini', 'DSM0127-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'gF4WHnB5yPVU_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('itiUm0zj9ZrG_PARK', 'Hakializi', 'DSM0211-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:45'),
('IV1JVRWNTDbc_PARK', 'Mtipesa', 'DSM0213-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:49'),
('IwbrTZ5O15SH_PARK', 'KILUNGULE', 'DSM0323-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'gHC7dLhNEVuM_WARD', 'Tarura', 'active', '2024-01-06 09:32:48'),
('iWGp3usFFLf0_PARK', 'Machimbo', 'DSM0130-002', 0, 200, 'Enix74BcbwHr_VTYPE', '55gdONIg7Vyp_WARD', 'Tarura', 'active', '2024-01-06 09:31:36'),
('iWZBKKfrebbY_PARK', 'Mbezi beach', 'DSM0219-001', 0, 200, 'Enix74BcbwHr_VTYPE', '2yQyCepJHbzX_WARD', 'Tarura', 'active', '2024-01-06 09:32:27'),
('j01Cm7TVXfQG_PARK', 'Kamata Junction', 'DSM0107-012', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:20'),
('J0OqaINNcUJr_PARK', 'Keko toroli', 'DSM0304-001', 0, 200, 'Enix74BcbwHr_VTYPE', '4cOE0cURcZh3_WARD', 'Tarura', 'active', '2024-01-06 09:32:30'),
('jByaVLFhDOTL_PARK', 'Tungi Msikitini', 'DSM0503-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:02'),
('JFp3ZqnLxn5d_PARK', 'Tungi Masister', 'DSM0503-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:00'),
('jm6k06bV3gtv_PARK', 'Njia panda kivule', 'DSM0120-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:31'),
('jrfmpo8RxHBB_PARK', 'Aljazira', 'DSM0308-001', 0, 200, 'Enix74BcbwHr_VTYPE', '0ua3q0dywl4h_WARD', 'Tarura', 'active', '2024-01-06 09:32:33'),
('JrtiDorkKLSN_PARK', 'Msimbazi / Agrey', 'DSM0109-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('jte12KGBZ6Jb_PARK', 'Mikocheni ITV', 'DSM0210-001', 0, 200, 'Enix74BcbwHr_VTYPE', '9VRhZtL5HG2u_WARD', 'Tarura', 'active', '2024-01-06 09:31:44'),
('jyoeCi4mRL2A_PARK', 'Mbagala Rangi Tatu', 'DSM0315-006', 0, 200, 'Enix74BcbwHr_VTYPE', '4EdcEh1WKcbz_WARD', 'Tarura', 'active', '2024-01-06 09:32:40'),
('k1df7wilAXcW_PARK', 'Cocacola', 'DSM0208-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'vCmH3EhYCzCT_WARD', 'Tarura', 'active', '2024-01-06 09:31:43'),
('K2ZyUIazzNsV_PARK', 'Uwanja wa mzimu', 'DSM0508-026', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:13'),
('KBcgN7RWSqMl_PARK', 'Mawasiliano', 'DSM0402-007', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:50'),
('kdSqg94zR68n_PARK', 'Usimoda Uzuri', 'DSM0408-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'rAMBOde7qx8Z_WARD', 'notset', 'active', '2024-01-06 09:32:55'),
('kHsIGrC7ULqE_PARK', 'ATM Makumbusho', 'DSM0205-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:41'),
('KI16jiSGYH42_PARK', 'Msalaba Mwekundu', 'DSM0116-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:29'),
('kN51EL6dkuIs_PARK', 'Manda na Ifunda', 'DSM0202-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'srIe98FIiJTn_WARD', 'Tarura', 'active', '2024-01-06 09:31:37'),
('KNU6xYqnXWmL_PARK', 'Livingstone na Uhuru', 'DSM0106-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:17'),
('kQ4VmOra8Eoq_PARK', 'CHAMAZI KWA MKONGO', 'DSM0314-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:38'),
('KQaHoB1HD7cD_PARK', 'Kibwa', 'DSM0114-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'WvlDcbt9UoEW_WARD', 'Tarura', 'active', '2024-01-06 09:31:26'),
('KS1akXpkUYJ5_PARK', 'Rozana', 'DSM0111-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'notset', 'active', '2024-01-06 09:31:25'),
('KSbChM4OuYcr_PARK', 'Jk Park', 'DSM0107-002', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:18'),
('KscMRrVRBDHu_PARK', 'Shentemba', 'DSM0207-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'I35uYsHdYkhC_WARD', 'notset', 'active', '2024-01-06 09:31:43'),
('kSSvng4fAPuy_PARK', 'GETI JEUSI', 'DSM0508-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:09'),
('kStcaD5Tbwy3_PARK', 'Palm Beach', 'DSM0102-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:10'),
('KTZzJjXBZdLl_PARK', 'Tembon kimara B', 'DSM0405-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'notset', 'active', '2024-01-06 09:32:54'),
('kUIqi9QSnGqs_PARK', 'Kontena', 'DSM0509-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:14'),
('KVeRnWfT3xFN_PARK', 'S/msingi vijibweni', 'DSM0508-029', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:13'),
('l5WIvbpA8RFH_PARK', 'Barabara ya Uhuru', 'DSM0107-009', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:19'),
('lD8IxjEWL7t0_PARK', 'Sabato', 'DSM0320-006', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:46'),
('lEjUbdI4LRy8_PARK', 'Njia panda ya nunge  B', 'DSM0508-033', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:14'),
('LF32JCtqQ5Kj_PARK', 'Kijitonyama', 'DSM0211-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:46'),
('lFhsCCN5iAm7_PARK', 'Umoja na upendo', 'DSM0211-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:47'),
('lHdBlR4qB2Zd_PARK', 'Uhuru / Shaurimoyo', 'DSM0107-008', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:19'),
('LptS1A6OvYWM_PARK', 'Maliasili', 'DSM0323-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'gHC7dLhNEVuM_WARD', 'Tarura', 'active', '2024-01-06 09:32:48'),
('Lrl45Krfna9t_PARK', 'Chaboko', 'DSM0311-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:35'),
('LrS0ilLAXgmc_PARK', 'Kigogo Fresh', 'DSM0121-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'mBAdtrMLo6fg_WARD', 'Tarura', 'active', '2024-01-06 09:31:32'),
('LSkH8mJoMsYw_PARK', 'Mombasa', 'DSM0116-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:27'),
('LSo4Ku0WFdFl_PARK', 'UTURIE', 'DSM0306-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:31'),
('LtUB3tzM7FeT_PARK', 'Timu Popo Ferry', 'DSM0507-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:07'),
('lwFcsZ5AsoFQ_PARK', 'Tina house', 'DSM0320-003', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:45'),
('ly0INE9jiuT7_PARK', 'Akachube', 'DSM0211-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:44'),
('LysQSykS26w7_PARK', 'MALELA (B) UBENANI', 'DSM0316-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:41'),
('lzr7VsOGFPzB_PARK', 'Pemba Center', 'DSM0505-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'y9dGXhauaMBN_WARD', 'notset', 'active', '2024-01-06 09:33:04'),
('Mag6yxZI2foX_PARK', 'Ferry Magogoni', 'DSM0507-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:07'),
('MAXQgvjmVZ9O_PARK', 'Ubungo plaza', 'DSM0403-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'Tarura', 'active', '2024-01-06 09:32:51'),
('mcgQMr8bEzkK_PARK', 'Riverside', 'DSM0403-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'notset', 'active', '2024-01-06 09:32:52'),
('mD1udGkXcoxo_PARK', 'Ubazaki', 'DSM0315-007', 0, 200, 'Enix74BcbwHr_VTYPE', '4EdcEh1WKcbz_WARD', 'Tarura', 'active', '2024-01-06 09:32:40'),
('MDrADec4Gs2e_PARK', 'Congo_Lindi', 'DSM0107-014', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Tarura', 'active', '2024-01-06 09:31:20'),
('MdwFb1x8oIxK_PARK', 'Nunge Coter', 'DSM0508-032', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:14'),
('MHTLueJNE84Y_PARK', 'Mambo ya Ndani', 'DSM0101-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:08'),
('mlyPZlhfDdeQ_PARK', 'Rozana posta', 'DSM0111-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'notset', 'active', '2024-01-06 09:31:25'),
('mmXMsKQ6j6v3_PARK', 'Mbezi beach kibao cha shule', 'DSM0213-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:48'),
('MOPRWKqCy8aj_PARK', 'Mnara wa Voda Km', 'DSM0116-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:28'),
('Mp2gEWMxfCRG_PARK', 'Mtoni Mtongani', 'DSM0308-003', 0, 200, 'Enix74BcbwHr_VTYPE', '0ua3q0dywl4h_WARD', 'Tarura', 'active', '2024-01-06 09:32:33'),
('mQJrh5aeOcT8_PARK', 'CHEREGA', 'DSM0322-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('mUlUUA14dfJ5_PARK', 'Govinda', 'DSM0114-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'WvlDcbt9UoEW_WARD', 'Tarura', 'active', '2024-01-06 09:31:26'),
('mwT42q6PU4Kn_PARK', 'Tungi Mzambarau', 'DSM0503-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:00'),
('N2yIjXEmReQo_PARK', 'Buguruni Sokoni', 'DSM0111-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:25'),
('n4GFULBlvUGB_PARK', 'Kakoni', 'DSM0211-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:45'),
('N7TQKNwSBUCH_PARK', 'Nice', 'DSM0402-006', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:50'),
('NbV1g1vZFrC5_PARK', 'Habari Maelezo', 'DSM0101-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:09'),
('nCuUDrdfDx69_PARK', 'Temboni', 'DSM0405-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'notset', 'active', '2024-01-06 09:32:54'),
('nIT9NbeGqZqu_PARK', 'Mwenge ITV', 'DSM0205-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:39'),
('NLqOnOwtddyh_PARK', 'Korogwe', 'DSM0404-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'IXmhlBh42MLx_WARD', 'Tarura', 'active', '2024-01-06 09:32:52'),
('NlYN2qWUR2Wp_PARK', 'Uwanja wa ndege', 'DSM0115-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'UXw97dEvvWx3_WARD', 'notset', 'active', '2024-01-06 09:31:26'),
('nMEqLXzEO9wJ_PARK', 'Nasra Tower', 'DSM0107-001', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:18'),
('NRgnbytJvAUA_PARK', 'Askari Monument', 'DSM0101-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:06'),
('nsidV8uhZRZr_PARK', 'MALAPA HOSTEL B', 'DSM0111-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:24'),
('NukDnJEJuLKy_PARK', 'Mchawi Mia', 'DSM0507-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:06'),
('nYo1XghZ0a5n_PARK', 'Tankini', 'DSM0507-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:07'),
('NzMxgFVuCJ6h_PARK', 'KMT', 'DSM0405-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'Tarura', 'active', '2024-01-06 09:32:53'),
('obOM0OzE3ol4_PARK', 'Matuta Mawili', 'DSM0302-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'nyyG3RyCZEWE_WARD', 'Tarura', 'active', '2024-01-06 09:32:30'),
('oBZHFhHvIPfc_PARK', 'Mbuyuni Vijibweni', 'DSM0508-018', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:11'),
('ocvEJfJWa5Fg_PARK', 'Lunguluni kibamba', 'DSM0411-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'BDxmrdHKQYBy_WARD', 'Tarura', 'active', '2024-01-06 09:32:57'),
('oczCbzdWtShF_PARK', 'Makumbusho nje', 'DSM0205-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:41'),
('odfF3WbszPtX_PARK', 'Wakatibado', 'DSM0211-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:47'),
('oFwNHpyClQvE_PARK', 'Upanga', 'DSM0102-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'notset', 'active', '2024-01-06 09:31:12'),
('OGLBjZXIj1Nf_PARK', 'Matembele', 'DSM0126-003', 0, 200, 'Enix74BcbwHr_VTYPE', '0UfdkU8AoOsD_WARD', 'Tarura', 'active', '2024-01-06 09:31:34'),
('OiZ5inFpcTde_PARK', 'Uhuru / Msimbazi', 'DSM0107-010', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:20'),
('OMDLD2ARF5tl_PARK', 'Tungi kwa pazi', 'DSM0503-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'notset', 'active', '2024-01-06 09:33:02'),
('OMSUKrLfYxFV_PARK', 'T.S.N', 'DSM0103-005', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:13'),
('opEiiZ6FS1HS_PARK', 'Tazara Mtambani', 'DSM0127-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'gF4WHnB5yPVU_WARD', 'Tarura', 'active', '2024-01-06 09:31:34'),
('OPSuzvalErXi_PARK', 'Umabaki Group', 'DSM0323-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'gHC7dLhNEVuM_WARD', 'Tarura', 'active', '2024-01-06 09:32:49'),
('Oq4KQoUDOK9f_PARK', 'Tangibovu', 'DSM0217-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'rUjjXEMNqVk8_WARD', 'notset', 'active', '2024-01-06 09:31:53'),
('oRgzGIY9LR9m_PARK', 'Maweni', 'DSM0506-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:05'),
('OrrYIo53cluC_PARK', 'Mwenge', 'DSM0218-005', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'Tarura', 'active', '2024-01-06 09:32:26'),
('OuFmbrBUF1Yf_PARK', 'Santaiza', 'DSM0509-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'notset', 'active', '2024-01-06 09:33:16'),
('OUNlV3na9pVp_PARK', 'Mbagala Rangitatu', 'DSM0311-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:35'),
('ov1Nx5LCswsO_PARK', 'Sudan', 'DSM0305-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'QRIvBEgUVCea_WARD', 'Tarura', 'active', '2024-01-06 09:32:30'),
('p31nmlfEEecv_PARK', 'Sikukuu / Uhuru', 'DSM0106-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:16'),
('P8jlGrTSCLlM_PARK', 'Tanesco', 'DSM0317-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:42'),
('PACwjMJBZDe9_PARK', 'Mabibo W', 'DSM0409-007', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:57'),
('Pdw3doO7tHQp_PARK', 'Kipata na Congo', 'DSM0107-015', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Tarura', 'active', '2024-01-06 09:31:21'),
('pECSl8BzknZE_PARK', 'Upendo bajaji group', 'DSM0120-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'notset', 'active', '2024-01-06 09:31:32'),
('pEtr3iqRa6UD_PARK', 'Magorofani', 'DSM0302-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'nyyG3RyCZEWE_WARD', 'Tarura', 'active', '2024-01-06 09:32:29'),
('PgAb9SPQ9wK6_PARK', 'Round about stand', 'DSM0322-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:48'),
('pH1J4CZ7u9Fq_PARK', 'Miti Mirefu', 'DSM0211-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:46'),
('phi1TxVN8NAM_PARK', 'Magengeni', 'DSM0211-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:46'),
('PL1kgOmGwmPk_PARK', 'Msimbazi / Tandamti', 'DSM0109-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:22'),
('pLbHqVAa7GvV_PARK', 'UN Road', 'DSM0103-007', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:13'),
('PLk9wGm9WqvA_PARK', 'Msimbazi / Magila', 'DSM0109-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('PMovlhZmSHfM_PARK', 'Kitunda Shule', 'DSM0120-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'x4yNoppkxoMj_WARD', 'Tarura', 'active', '2024-01-06 09:31:32'),
('PRZrb4JeW3Ug_PARK', 'Kwa Diwani', 'DSM0116-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:29'),
('pSSjValcW3Ds_PARK', 'KKKT', 'DSM0211-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:46'),
('PsXEiw6kq8HU_PARK', 'Fire Mataa', 'DSM0103-003', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:12'),
('PU4NlUtkf41E_PARK', 'Kipati sheli', 'DSM0310-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'coj2zsDLTfFd_WARD', 'Tarura', 'active', '2024-01-06 09:32:34'),
('puycAQlGRvMr_PARK', 'Sea Boyz', 'DSM0201-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'dpVYrKuXaWdx_WARD', 'Tarura', 'active', '2024-01-06 09:31:37'),
('pVnKqutPTFeG_PARK', 'Fire CCM', 'DSM0103-002', 0, 200, 'Enix74BcbwHr_VTYPE', '5hBugaZAZxvm_WARD', 'Tarura', 'active', '2024-01-06 09:31:12'),
('qCIv2VrBUE6o_PARK', 'Nalung\'ombe', 'DSM0106-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:17'),
('QGdxQ5mSXcYW_PARK', 'Mongi', 'DSM0203-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:38'),
('qGev59nAgKoz_PARK', 'Mama Kibonge', 'DSM0312-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'FGNkpM7Sdoje_WARD', 'Tarura', 'active', '2024-01-06 09:32:36'),
('ql1j2Pgz3WrQ_PARK', 'Tembogwaza', 'DSM0131-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'ocuMmB26F0p7_WARD', 'notset', 'active', '2024-01-06 09:31:36'),
('qnYezBmNdM72_PARK', 'Heko', 'DSM0211-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'Tarura', 'active', '2024-01-06 09:31:45'),
('qPQI4TGfjvtk_PARK', 'MWEMBE MADAFU', 'DSM0116-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:28'),
('qqrx8pnalSll_PARK', 'Teta center', 'DSM0216-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:51'),
('QR20w3XwPn7e_PARK', 'Magufuli Terminal', 'DSM0413-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'GyWjQY34XE81_WARD', 'Tarura', 'active', '2024-01-06 09:32:58'),
('qxCaRndyXwhk_PARK', 'Vetenari', 'DSM0302-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'nyyG3RyCZEWE_WARD', 'Tarura', 'active', '2024-01-06 09:32:29'),
('qzgyae8s7UcQ_PARK', 'Temeke Stirio', 'DSM0301-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'c7IVEP4sDd1q_WARD', 'Tarura', 'active', '2024-01-06 09:32:28'),
('RbUD0lvFAyNp_PARK', 'Wachawacha Buza', 'DSM0317-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'notset', 'active', '2024-01-06 09:32:44');
INSERT INTO `park_areas` (`park_id`, `park_name`, `park_number`, `last_driver_number`, `park_size`, `vehicle_type`, `ward`, `owner`, `status`, `park_date`) VALUES
('rCRCjjoVuau2_PARK', 'Tanzanian', 'DSM0211-016', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:47'),
('rguwdtCZP6SG_PARK', 'United Nation/ Maliki Road', 'DSM0102-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:10'),
('rhi53Ia7Up7P_PARK', 'Kibao cha Shule', 'DSM0213-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:49'),
('RKm8lWPmMV2Q_PARK', 'Umabamba', 'DSM0311-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:35'),
('rRwWPsHjhFmM_PARK', 'Kikosi Kazi', 'DSM0405-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'V5HPbAIPFgZn_WARD', 'Tarura', 'active', '2024-01-06 09:32:53'),
('rTClKM6dXcf8_PARK', 'Segerea kona', 'DSM0114-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'WvlDcbt9UoEW_WARD', 'notset', 'active', '2024-01-06 09:31:26'),
('ruL7e5E2cpGF_PARK', 'Makongo juu', 'DSM0218-002', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'Tarura', 'active', '2024-01-06 09:32:26'),
('Rvi3udeWGKZW_PARK', 'Mwera Kwa Gobwa', 'DSM0504-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'jMYG8WW8oY8B_WARD', 'Tarura', 'active', '2024-01-06 09:33:03'),
('RW20BLYugUlO_PARK', 'Magomeni Kanisani', 'DSM0201-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'dpVYrKuXaWdx_WARD', 'Tarura', 'active', '2024-01-06 09:31:37'),
('rXC9Dtg31AB9_PARK', 'Njia panda ya nunge  A', 'DSM0508-034', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:14'),
('rXi9PmFVbmZQ_PARK', 'Ghana & Kibo st', 'DSM0101-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:09'),
('rxSWjJpIrO82_PARK', 'Banana Ukonga', 'DSM0130-003', 0, 200, 'Enix74BcbwHr_VTYPE', '55gdONIg7Vyp_WARD', 'Tarura', 'active', '2024-01-06 09:31:36'),
('s0uk80EuXL1i_PARK', 'Msimbazi / Narung\'ombe', 'DSM0109-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('s2Ot4PNCYOji_PARK', 'Mbezi Maua', 'DSM0213-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:48'),
('Sd2NjcTOuiX0_PARK', 'Umbabu', 'DSM0205-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'notset', 'active', '2024-01-06 09:31:41'),
('sf05Ujhh4aba_PARK', 'Mbagala Zakhiem', 'DSM0311-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:35'),
('SF0PDPFZcA7N_PARK', 'Friends Corner', 'DSM0203-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:38'),
('sFvY3OHuJ2iK_PARK', 'Agakhan Hospital', 'DSM0102-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:10'),
('SgcSiFA7Wrto_PARK', 'Mbagala Mabuchani', 'DSM0321-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'mZcZtk6fxtQT_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('sin1S2PHNToh_PARK', 'Survey', 'DSM0218-006', 0, 200, 'Enix74BcbwHr_VTYPE', '2Jgfio8cKrEJ_WARD', 'notset', 'active', '2024-01-06 09:32:26'),
('SjncAJzSPTw5_PARK', 'Aziz Ally', 'DSM0308-002', 0, 200, 'Enix74BcbwHr_VTYPE', '0ua3q0dywl4h_WARD', 'Tarura', 'active', '2024-01-06 09:32:33'),
('sP2Gg8Av3RTK_PARK', 'Mizimbini', 'DSM0509-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:15'),
('sp5bceHAxB2W_PARK', 'POSTA', 'DSM0104-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'VVxZgzqrNLpV_WARD', 'Tarura', 'active', '2024-01-06 09:31:14'),
('SQLDyoZBjUCF_PARK', 'Massai Garden Kawe stand', 'DSM0213-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:49'),
('SRsKwzEYK9Eg_PARK', 'Mnazi Mmoja Hospital', 'DSM0105-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'ZErbt5SMQpXI_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:15'),
('Swcz2GQXEWUW_PARK', 'kawe sokoni', 'DSM0213-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:48'),
('szFxpxz14YVH_PARK', 'Chaboko Kisiwani', 'DSM0508-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:09'),
('sZZHVllbEy8I_PARK', 'Nolasco', 'DSM0506-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:04'),
('T1gFdB9tyNvE_PARK', 'Arafa Ugweno', 'DSM0307-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:32'),
('T1TsWcRQLZCW_PARK', 'Mkunguni', 'DSM0101-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Tarura', 'active', '2024-01-06 09:31:09'),
('t6cFMMXXUwIO_PARK', 'Mwembe Yanga', 'DSM0302-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'nyyG3RyCZEWE_WARD', 'Tarura', 'active', '2024-01-06 09:32:29'),
('TbkAOqQjgkWf_PARK', 'Mkunguni / Nyamwezi', 'DSM0106-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:16'),
('tEYcxUbf5fls_PARK', 'Vjb mwisho wa lami', 'DSM0508-020', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:11'),
('TgFc3mzq5lbS_PARK', 'Studio', 'DSM0207-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'I35uYsHdYkhC_WARD', 'notset', 'active', '2024-01-06 09:31:43'),
('tIuFMJ36PRHj_PARK', 'Berege', 'DSM0307-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:32'),
('tjK8kHJ5mXak_PARK', 'Soko jipya', 'DSM0320-004', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:45'),
('tpjYhMeGSzUX_PARK', 'TANDIKA', 'DSM0306-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:31'),
('TPpeYV7i8cz1_PARK', 'Mbweni msikitini', 'DSM0216-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:52'),
('tpuSmxyoeC0I_PARK', 'MWANDEGE', 'DSM0301-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'c7IVEP4sDd1q_WARD', 'Tarura', 'active', '2024-01-06 09:32:27'),
('TqhQDVDTcrQd_PARK', 'Magogoni One', 'DSM0503-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:00'),
('tQVrCOj8Fbso_PARK', 'Ponde Magengeni', 'DSM0316-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:41'),
('tsl29zptFy8v_PARK', 'Mwananyamala A', 'DSM0205-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:40'),
('tuK5X2tifgdD_PARK', 'Upanga Chuo', 'DSM0102-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Tarura', 'active', '2024-01-06 09:31:11'),
('tVO4puUsWKMk_PARK', 'Uwaba Mdomali', 'DSM0302-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'nyyG3RyCZEWE_WARD', 'Tarura', 'active', '2024-01-06 09:32:29'),
('TYb9luyOobYH_PARK', 'Mabavi', 'DSM0313-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'vJme9b7oCQ4q_WARD', 'Tarura', 'active', '2024-01-06 09:32:37'),
('TYx4FOVUxHxZ_PARK', 'Gobwa Gobwa', 'DSM0504-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'jMYG8WW8oY8B_WARD', 'Tarura', 'active', '2024-01-06 09:33:03'),
('tZaIpPimEqOr_PARK', 'Darajani No. 2', 'DSM0508-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:10'),
('TZd3vrDOt7NA_PARK', 'Popobawa', 'DSM0203-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:39'),
('tZG8I6XnU13x_PARK', 'Msimbazi / Mbaruku', 'DSM0107-005', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:19'),
('Tzlm0rrP0DwZ_PARK', 'Chamazi Magengeni', 'DSM0314-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'zgZzGJPgHmVY_WARD', 'Tarura', 'active', '2024-01-06 09:32:39'),
('UamFHgfnyVzR_PARK', 'KWA CHALE', 'DSM0501-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'uIlcPBplO36c_WARD', 'Tarura', 'active', '2024-01-06 09:32:59'),
('UaU91nHZRVTt_PARK', 'Manzese Agentina', 'DSM0203-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'MaJmtgfeHRYn_WARD', 'Tarura', 'active', '2024-01-06 09:31:38'),
('UbRoAJsDHoS6_PARK', 'Kwa Steven Maduka', 'DSM0508-014', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:10'),
('UeJ5kFPFt9EY_PARK', 'BUNJU B MBARA', 'DSM0220-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'ijavmxD5Zkod_WARD', 'Tarura', 'active', '2024-01-06 09:32:27'),
('UeMiFglBvwt2_PARK', 'Kibamba Hospital', 'DSM0410-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'sjMPGwA4sRtt_WARD', 'Tarura', 'active', '2024-01-06 09:32:57'),
('UGjfxiZtcHEk_PARK', 'Shule ya msingi vijibweni', 'DSM0508-028', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:13'),
('uJGKUmHnS9z7_PARK', 'Sinza madukani', 'DSM0402-002', 0, 200, 'Enix74BcbwHr_VTYPE', '0hQ411cenZjN_WARD', 'Tarura', 'active', '2024-01-06 09:32:49'),
('ujhfIPvTVBne_PARK', 'Uvumba', 'DSM0509-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'wrRrjZSiExm4_WARD', 'Tarura', 'active', '2024-01-06 09:33:15'),
('UL09soxnhaZU_PARK', 'Msimbazi Mwendokasi / Mkunguni', 'DSM0106-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:16'),
('um7PL9GdRols_PARK', 'KONGOWE MWISHO', 'DSM0322-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:47'),
('UQxeM62F8j1O_PARK', 'Ndumbwi', 'DSM0413-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'GyWjQY34XE81_WARD', 'Tarura', 'active', '2024-01-06 09:32:59'),
('USkQEqd3PTdm_PARK', 'Victoria', 'DSM0210-002', 0, 200, 'Enix74BcbwHr_VTYPE', '9VRhZtL5HG2u_WARD', 'Tarura', 'active', '2024-01-06 09:31:44'),
('UvF5cZstP2Ia_PARK', 'Foma', 'DSM0307-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:32'),
('v8RFbHJgVkkN_PARK', 'MONGO LA NDEGE', 'DSM0116-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:26'),
('v8x225KSaRwd_PARK', 'Manzese Bakhresa', 'DSM0408-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'rAMBOde7qx8Z_WARD', 'Tarura', 'active', '2024-01-06 09:32:55'),
('vAc4rcbo5x7W_PARK', 'Uhuru/Lumumba', 'DSM0105-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'ZErbt5SMQpXI_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:15'),
('vF5T5C50ET1b_PARK', 'Tandamti na Skukuu', 'DSM0106-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:17'),
('VFaoEeIAZTNp_PARK', 'Azam Marine', 'DSM0104-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'VVxZgzqrNLpV_WARD', 'Tarura', 'active', '2024-01-06 09:31:14'),
('VFMb7E00KBsy_PARK', 'Mbagala Kizuiani', 'DSM0311-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:36'),
('VG2JqnTSNV95_PARK', 'Mtaa Bandari', 'DSM0306-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:31'),
('vJOetWshBoT1_PARK', 'Mabata Group', 'DSM0307-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:33'),
('VjtcA9Q0SSvm_PARK', 'Ukwaamani', 'DSM0213-015', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'notset', 'active', '2024-01-06 09:31:51'),
('VLziLQKZd37I_PARK', 'Makumbusho Jackie\'s', 'DSM0205-009', 0, 200, 'Enix74BcbwHr_VTYPE', 'JEtrGDt7HPpx_WARD', 'Tarura', 'active', '2024-01-06 09:31:41'),
('vqPnCyTzQwro_PARK', 'Africana Puma', 'DSM0213-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:48'),
('vQtbr81P9fRK_PARK', 'Msimbazi / Muhonda', 'DSM0109-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'QSoAgD0G26b4_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:23'),
('VuYLcEe0LZ37_PARK', 'Rozana Flet', 'DSM0111-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:24'),
('vyepeds9zHk6_PARK', 'Abiola \'C\'', 'DSM0312-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'FGNkpM7Sdoje_WARD', 'Tarura', 'active', '2024-01-06 09:32:37'),
('W4evV899RS2d_PARK', 'Njia Panda Soweto', 'DSM0508-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:08'),
('w6oqOPtaVdgr_PARK', 'Zahanat mgeninani', 'DSM0320-002', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'notset', 'active', '2024-01-06 09:32:45'),
('WAKvI2NaH565_PARK', 'Vijibweni ccm', 'DSM0508-025', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:12'),
('waUKBuXfWWp2_PARK', 'Ubungo Tanesco', 'DSM0403-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'hgz1x6U2xudy_WARD', 'Tarura', 'active', '2024-01-06 09:32:51'),
('WEAgij3pEtyN_PARK', 'Ungindoni mbuyuni kwa mchina', 'DSM0506-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'notset', 'active', '2024-01-06 09:33:06'),
('wl0AjTzPYjPC_PARK', 'Regency Hospital', 'DSM0102-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:11'),
('wlpxGTkxs21f_PARK', 'Feri Mkunguni', 'DSM0507-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:06'),
('wOOkXWnjwe6s_PARK', 'Pam Beach Mti pesa', 'DSM0507-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'notset', 'active', '2024-01-06 09:33:07'),
('WqjDVVhWrz8W_PARK', 'Minazi Mikinda', 'DSM0507-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:07'),
('WqLV65dJp1VF_PARK', 'Madereva bodaboda Msumi', 'DSM0413-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'GyWjQY34XE81_WARD', 'Tarura', 'active', '2024-01-06 09:32:58'),
('WqUioGfqixHf_PARK', 'Ubungo Riverside', 'DSM0406-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'msn4cGaM7YPr_WARD', 'Tarura', 'active', '2024-01-06 09:32:55'),
('WrOwsa5kJ7ih_PARK', 'Zakhem', 'DSM0322-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'I0froZW7hygC_WARD', 'Tarura', 'active', '2024-01-06 09:32:48'),
('WWj4cVqddTNB_PARK', 'Super Market', 'DSM0317-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'notset', 'active', '2024-01-06 09:32:44'),
('Wx1iDyoB4vvt_PARK', 'Mbezi Malamba Mawili', 'DSM0413-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'GyWjQY34XE81_WARD', 'Tarura', 'active', '2024-01-06 09:32:58'),
('WXlZq1JIxwui_PARK', 'Holiday Inn', 'DSM0101-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'oS6tEKpr40fW_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:06'),
('wxnRG9pptLn3_PARK', 'NiaNjema', 'DSM0508-019', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:11'),
('X70z5KOPwMjM_PARK', 'STENDI YA SHAMBA', 'DSM0306-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:31'),
('Xa76yqB68odh_PARK', 'Buguruni Mataa', 'DSM0111-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:24'),
('xcS6Lg1Q5eue_PARK', 'Makonde', 'DSM0217-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'rUjjXEMNqVk8_WARD', 'Tarura', 'active', '2024-01-06 09:31:53'),
('XiVkFEW5jbOU_PARK', 'Muliba', 'DSM0503-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:01'),
('XK5DLTyDpuPN_PARK', 'Mwela kwa Gobwa', 'DSM0504-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'jMYG8WW8oY8B_WARD', 'Tarura', 'active', '2024-01-06 09:33:03'),
('XlX0W3HfTufe_PARK', 'Kivule ccm', 'DSM0126-002', 0, 200, 'Enix74BcbwHr_VTYPE', '0UfdkU8AoOsD_WARD', 'Tarura', 'active', '2024-01-06 09:31:34'),
('xN3qyXDaQ09o_PARK', 'Vikunai', 'DSM0316-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:42'),
('XOD7sAI3RqMG_PARK', 'Familia', 'PWN0105-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ppl14sm98DUM_WARD', 'Tarura', 'active', '2024-01-06 09:33:16'),
('Xr2teTMFbTcv_PARK', 'Unice', 'DSM0102-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'notset', 'active', '2024-01-06 09:31:12'),
('xR2w50fSnKEe_PARK', 'Mabibo Relini', 'DSM0409-005', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:56'),
('XtzUjN1ERI5w_PARK', 'Madingo mpiji', 'DSM0216-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:51'),
('xv8ZDrmaoOxJ_PARK', 'Samsara Makumbusho', 'DSM0211-019', 0, 200, 'Enix74BcbwHr_VTYPE', 'b96prvQjUoFj_WARD', 'notset', 'active', '2024-01-06 09:31:47'),
('XvdNpIXZdV4n_PARK', 'Escrow', 'DSM0508-017', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:11'),
('XvrS2Lcqsd5q_PARK', 'Mivinjeni', 'DSM0111-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'HgII39T7bqyo_WARD', 'Tarura', 'active', '2024-01-06 09:31:24'),
('xX7EJXm5iHWd_PARK', 'Uwanja wa Mhind No.1', 'DSM0508-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:08'),
('xXv8zUnudk61_PARK', 'Juliana Pub', 'DSM0213-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:49'),
('XZ6Jx5VgXB45_PARK', 'Maputo Mbweni', 'DSM0216-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'yKUhATIHRLuR_WARD', 'Tarura', 'active', '2024-01-06 09:31:52'),
('y3atIsE8OGJ0_PARK', 'Basha Net', 'DSM0506-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:05'),
('yFDaafOGcVNS_PARK', 'Mabibo Darajani', 'DSM0409-008', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Tarura', 'active', '2024-01-06 09:32:57'),
('yFg0EiEzPs0y_PARK', 'Uhasibu', 'DSM0309-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'C55qjDu7fXGF_WARD', 'Tarura', 'active', '2024-01-06 09:32:34'),
('yhWn4WXDu9ge_PARK', 'MSIKITINI KWALIMBANGA', 'DSM0125-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'UDJhRcNuCVmc_WARD', 'Tarura', 'active', '2024-01-06 09:31:33'),
('yJf6GVnVtgRP_PARK', 'Kisiwani Shule', 'DSM0508-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'Tarura', 'active', '2024-01-06 09:33:08'),
('yMLw9kHalHtP_PARK', 'Pemba_Livingstone', 'DSM0106-011', 0, 200, 'Enix74BcbwHr_VTYPE', 'JforhYHFCfdO_WARD', 'Tarura', 'active', '2024-01-06 09:31:17'),
('yo7lvLGDQG77_PARK', 'Mgulani/ Arafa', 'DSM0307-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'I52MdXPyZ0Vh_WARD', 'Tarura', 'active', '2024-01-06 09:32:32'),
('YOugTXNNuVB6_PARK', 'Vijibweni Hospital', 'DSM0508-023', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:12'),
('ysW5RSYEUyoF_PARK', 'Utu;ie', 'DSM0306-006', 0, 200, 'Enix74BcbwHr_VTYPE', 'rMAv6b5ykd9k_WARD', 'Tarura', 'active', '2024-01-06 09:32:32'),
('YVdbCrLyBYZg_PARK', 'Vingunguti Scania', 'DSM0118-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'CrkxYa2zEVqW_WARD', 'Tarura', 'active', '2024-01-06 09:31:30'),
('yvWBUaZRC9WI_PARK', 'Soweto', 'DSM0508-027', 0, 200, 'Enix74BcbwHr_VTYPE', 'vDVfP3RkA5Je_WARD', 'notset', 'active', '2024-01-06 09:33:13'),
('YXslDqb6sJMM_PARK', 'mabibo NIT', 'DSM0409-001', 0, 200, 'Enix74BcbwHr_VTYPE', '5SfoeWhpgZx2_WARD', 'Halimashauri', 'active', '2024-01-06 09:32:56'),
('YZyt4ApKlvI1_PARK', 'EXTERNAL EPZA KOKOTO', 'DSM0406-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'msn4cGaM7YPr_WARD', 'Tarura', 'active', '2024-01-06 09:32:55'),
('Z3VylQa3H0Qa_PARK', 'Msumi B na C', 'DSM0413-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'GyWjQY34XE81_WARD', 'Tarura', 'active', '2024-01-06 09:32:58'),
('Z4PseLOeG4YS_PARK', 'Misheni Center', 'DSM0320-001', 0, 200, 'Enix74BcbwHr_VTYPE', '9KpxbWTzAMpp_WARD', 'Tarura', 'active', '2024-01-06 09:32:45'),
('Z6hb0ungGm50_PARK', 'Arafa Mazizini', 'DSM0116-013', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'Tarura', 'active', '2024-01-06 09:31:29'),
('Z8Mbcf4rSx97_PARK', 'Ugindoni Mnadani', 'DSM0506-005', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:05'),
('zDpU67EkJPIh_PARK', 'kakala', 'DSM0507-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'drdMwW1bXr9U_WARD', 'Tarura', 'active', '2024-01-06 09:33:06'),
('ZE51OmoHZYom_PARK', 'Nssf Kijichi', 'DSM0316-004', 0, 200, 'Enix74BcbwHr_VTYPE', 'jTbGE96mREel_WARD', 'Tarura', 'active', '2024-01-06 09:32:41'),
('zesupuJnQvRa_PARK', 'Ukonga mombasa', 'DSM0116-019', 0, 200, 'Enix74BcbwHr_VTYPE', 'qI7TlxVE81TI_WARD', 'notset', 'active', '2024-01-06 09:31:30'),
('Zka0Bbuej0Ky_PARK', 'Kanisani Kwa Pinda', 'DSM0207-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'I35uYsHdYkhC_WARD', 'Tarura', 'active', '2024-01-06 09:31:43'),
('ZNTnVXVHQZQx_PARK', 'Uwabamara', 'DSM0311-007', 0, 200, 'Enix74BcbwHr_VTYPE', 'CQ3bildn6KJm_WARD', 'Tarura', 'active', '2024-01-06 09:32:36'),
('ZO7A9NviMr1s_PARK', 'Kwa Sangezi', 'DSM0313-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'vJme9b7oCQ4q_WARD', 'Tarura', 'active', '2024-01-06 09:32:37'),
('zoLPPFXXDWUo_PARK', 'Barakuda', 'DSM0128-001', 0, 200, 'Enix74BcbwHr_VTYPE', 'tSvjsZJwfZXB_WARD', 'Tarura', 'active', '2024-01-06 09:31:35'),
('ZruwaUbKQkBM_PARK', 'Buza Lumo', 'DSM0317-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'yWdarDwSBrMU_WARD', 'Tarura', 'active', '2024-01-06 09:32:42'),
('zSPnBTWKRCPk_PARK', 'Mama Kesi', 'DSM0213-012', 0, 200, 'Enix74BcbwHr_VTYPE', 'Ck69WqjaH1RN_WARD', 'Tarura', 'active', '2024-01-06 09:31:50'),
('zvw9agjCES2e_PARK', 'Bombadia', 'DSM0503-008', 0, 200, 'Enix74BcbwHr_VTYPE', 'S4ainxy8RsOh_WARD', 'Tarura', 'active', '2024-01-06 09:33:01'),
('zwmoomL2ALkQ_PARK', 'Uhuru / Congo', 'DSM0107-006', 0, 200, 'Enix74BcbwHr_VTYPE', '06fn6FNMHlkV_WARD', 'Halimashauri', 'active', '2024-01-06 09:31:19'),
('ZWzb09FnrK1e_PARK', 'Aura Mall', 'DSM0102-010', 0, 200, 'Enix74BcbwHr_VTYPE', 'ly8GgxiuQk68_WARD', 'Tarura', 'active', '2024-01-06 09:31:11'),
('zyjwksosXVS2_PARK', 'Msisiri B', 'DSM0206-002', 0, 200, 'Enix74BcbwHr_VTYPE', 'u2liJcMzNU0z_WARD', 'Tarura', 'active', '2024-01-06 09:31:42'),
('zZhOed0PpERO_PARK', 'Kibugumo Msikitini', 'DSM0506-003', 0, 200, 'Enix74BcbwHr_VTYPE', 'mibZOvliBJ5v_WARD', 'Tarura', 'active', '2024-01-06 09:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `park_leaders`
--

CREATE TABLE `park_leaders` (
  `leader_id` varchar(225) NOT NULL,
  `leader_type` varchar(225) NOT NULL,
  `driver_id` varchar(225) NOT NULL,
  `park_id` varchar(225) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  `leader_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `park_leaders`
--

INSERT INTO `park_leaders` (`leader_id`, `leader_type`, `driver_id`, `park_id`, `status`, `leader_date`) VALUES
('SppzARVVeGVS_LEAD', 'kDejDE8NkDpe_LTYPE', 'TsJIv7i4Hl7S_DRVER', 'dPkWDNHoiMxc_PARK', 'active', '2024-01-09 09:18:06'),
('zmn38zUTMPYy_LEAD', 'kDejDE8NkDpe_LTYPE', 'RWtz71AncJun_DRVER', '31KR62AnklbN_PARK', 'active', '2024-01-17 12:11:08');

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `region_id` varchar(225) NOT NULL,
  `region_name` varchar(200) NOT NULL,
  `region_code` varchar(10) NOT NULL,
  `country_id` varchar(225) NOT NULL,
  `region_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`region_id`, `region_name`, `region_code`, `country_id`, `region_date`) VALUES
('eUrMJpQfE86D_REGIN', 'Pwani', 'PWN', 't5lwVbe4JcGQ_CONTRY', '2024-01-06 06:26:19'),
('PpMOz8VqPrBV_REGIN', 'Dar es Salaam', 'DSM', 't5lwVbe4JcGQ_CONTRY', '2024-01-05 17:53:37');

-- --------------------------------------------------------

--
-- Table structure for table `sign_otp`
--

CREATE TABLE `sign_otp` (
  `otp_id` varchar(225) NOT NULL,
  `user_id` varchar(225) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `otp` varchar(300) NOT NULL,
  `status` varchar(50) NOT NULL,
  `expire_date` datetime NOT NULL,
  `otp_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sign_otp`
--

INSERT INTO `sign_otp` (`otp_id`, `user_id`, `phone`, `otp`, `status`, `expire_date`, `otp_date`) VALUES
('01kk4q4jjJWN_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$V2KUaZ6A/feGX5ukzr3fU.zqzpJIYLJj.MiiKSefx9dMn48qC3G96', 'active', '2024-02-01 09:20:02', '2024-02-01 09:09:02'),
('08bUcv8fhsDP_PVER', 'newRegistrationUser', '255687637671', '$2b$10$mUvVsTbxNgqJ0mR5LAp5hOC08NjIZNnolpj1f3COfPnAYPF2M/NF.', 'used', '2024-02-20 15:26:25', '2024-02-20 15:14:48'),
('0DJXPhDWFu47_PVER', 'newRegistrationUser', '255683343908', '$2b$10$JIi1s7qEBaL0F1fNzXo9deCHGv7llnI3o.7Z27Wy1dZ5vkaxia9re', 'used', '2024-02-27 10:31:47', '2024-02-27 10:20:21'),
('0GGRe9TSrRRb_PVER', 'newRegistrationUser', '255744226667', '$2b$10$ypqtgHYWCbte/8YEN3MnO.HewcoQrrvIY4hnjBqFpFk1XQaDEMKLy', 'active', '2024-02-28 05:51:58', '2024-02-28 05:40:58'),
('0JmocDHKvHhq_PVER', 'newRegistrationUser', '255782361333', '$2b$10$iopW.ohHsRuJIBO11UyDa.9wvOFO23APRpO62fDhwJ3Ba1JApHs9a', 'active', '2024-02-27 12:27:22', '2024-02-27 12:16:22'),
('0VfBiUPpjyE2_PVER', 'newRegistrationUser', '255786983163', '$2b$10$fDwbuBcx4pMWKZyIxWhcleLnOc1jq1s1ehOImj2NzajQmAbeNPISy', 'used', '2024-02-26 06:37:34', '2024-02-26 06:26:08'),
('19zYesGJiVNM_PVER', 'newRegistrationUser', '255655076108', '$2b$10$aOqZ15ww9Tajp8/LilORzudfmMSk.Uktma6L1L6b9vjnSef20T/LW', 'active', '2024-02-20 14:14:41', '2024-02-20 14:03:41'),
('1fzXApMs1r94_PVER', 'newRegistrationUser', '255787076924', '$2b$10$TuEWANpKRS6Fvfe6sjo0d.b6MFQFNYlFX93QUklOhmm.bhzTEHxye', 'used', '2024-02-24 13:26:47', '2024-02-24 13:14:57'),
('1GcpFEi6gyqk_PVER', 'newRegistrationUser', '255762420420', '$2b$10$QHqaE1ve4z2iRXcXZxII/.lf/.U6sKEwzWiqJbpMHmAYDKdDrBYce', 'active', '2024-03-03 20:12:18', '2024-03-03 20:01:18'),
('1jdnavjqhUec_PVER', 'newRegistrationUser', '255686853427', '$2b$10$PL9RLZoQFQYoLa7caFrfwejodajoUN/RHsbj0OfV989CmKRlyrP.a', 'active', '2024-02-23 09:44:22', '2024-02-23 09:33:22'),
('224Dm1PLikth_PVER', 'newRegistrationUser', '255620248710', '$2b$10$n32owClstL6ld3uViHyrA.PBV.enA8WU78NSPVCMFlI7o0kLumMYm', 'active', '2024-02-27 04:35:36', '2024-02-27 04:22:23'),
('27qk3M2qQin9_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$GeE5l8npIRNR7BTkocHVZeZ/osSr.ksZOAItUVt26VZkyqUCewEHi', 'used', '2024-01-30 14:26:24', '2024-01-30 14:15:04'),
('2tsksHgUCSqS_PVER', 'newRegistrationUser', '255718286503', '$2b$10$4XFJpdskntsrd7Ng4pVUee2KggpK13/fQEKGXg7hHCnfGASS.j5G2', 'active', '2024-03-03 18:43:27', '2024-03-03 18:32:27'),
('328Ar4shdz6v_PVER', 'fnJupK05wrs4_DRVER', '255752094672', '$2b$10$R7TX5NYBce7qrX7ZT/seaOkmXyK6lXT9b32lgLyPmjTcaQHIfLbpW', 'active', '2024-02-27 16:15:10', '2024-02-27 16:04:10'),
('33cEizwsIQyb_PVER', 'newRegistrationUser', '255620248710', '$2b$10$TcQj6mL1HaMv1ZTE9Dt4CuZxmh7B9zgO5wedFyxydbnvD2yYRRUOa', 'active', '2024-02-28 13:39:47', '2024-02-28 13:28:47'),
('3C0Qjwa8pkPk_PVER', 'newRegistrationUser', '255693431588', '$2b$10$AlMlmLUv/6DPgvrIkmTK2efRAwD.xUd.aqDn09XLdx3eqNBosKUka', 'used', '2024-02-24 13:06:00', '2024-02-24 12:53:54'),
('3eiquWskDF80_PVER', 'agXbZ9HWAtlD_DRVER', '255718138165', '$2b$10$EHyOri9hh98G8pO.pJysm.njzCiPVlJZ87uU8EAGIzYILhTHbfIDi', 'used', '2024-03-04 05:37:29', '2024-03-04 05:24:59'),
('3PDzTjUh02KI_PVER', 'newRegistrationUser', '255623864309', '$2b$10$FlAebYhL.t/TFgzTvp58O..sr7efI2byRuT6831/svhDAHzz1q1la', 'active', '2024-02-25 18:32:30', '2024-02-25 18:07:49'),
('3pzDYO6Skod4_PVER', 'newRegistrationUser', '255718032979', '$2b$10$O2IM/uDHPbyouI.qSwPDb.eReylcoY9wNIepL5NrdGAE1nkbkK7UW', 'active', '2024-02-20 14:35:04', '2024-02-20 14:24:04'),
('3QRMEuDFk4zG_PVER', 'newRegistrationUser', '255687522566', '$2b$10$WKw8ED0BaHEOn8dEzXTekuY4U41mnG4LJDx2Gc5ieSjM218ga6m2a', 'used', '2024-02-22 10:35:12', '2024-02-22 10:23:42'),
('3vaz3hDOvaaD_PVER', 'newRegistrationUser', '255716272830', '$2b$10$wnDF7oWacQyMm9u15gKwmedTZ6XEy/4kNm1RF/vy3STQt5zhTR4Qu', 'active', '2024-02-27 08:20:20', '2024-02-27 08:09:20'),
('43Cnxycp4fst_PVER', 'newRegistrationUser', '255655076108', '$2b$10$FiibUpHLxaWoTcVDdwWz9eAP5u/jyI7IzdHGwst50W0m4c53Ay02i', 'used', '2024-02-20 13:20:01', '2024-02-20 13:08:12'),
('495NaRdgQ4hB_PVER', '0SuMMK21VNdC_DRVER', '255745341109', '$2b$10$5V2NnXTz2kHvb5PoryERWeyY2Vsy4xxK9RTtT.Fbq64d9aNE1A7H6', 'active', '2023-12-15 10:13:07', '2023-12-15 10:02:07'),
('4fKLdGH6T333_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$.F806.qGzOFJuIzLnjok0ei93x/4GueCEPZtLKmv1VPAEvJY4UFRi', 'active', '2024-02-01 09:19:54', '2024-02-01 09:08:54'),
('4uJuWdrG4A7M_PVER', 'newRegistrationUser', '255752094672', '$2b$10$WFssIOy4P1UvGA9HDjt/TeAa0xfWFhuf0cq37lar.4/4r3ew/6K1i', 'active', '2024-02-27 16:09:28', '2024-02-27 15:58:28'),
('4zx7FDOJDUNZ_PVER', 'newRegistrationUser', '255679666758', '$2b$10$qZEWeAcmUUOo4vvfPi1EFO2J2wkCMZ/ScdJX2QhGskSL3lz/UJeBu', 'active', '2024-02-23 09:30:48', '2024-02-23 09:19:48'),
('52hKEh0aAyrJ_PVER', 'CNMQTb1TbZur_DRVER', '255744226667', '$2b$10$WidJGx6N34vlwRdR3FOknumvDSEoKPeYJO.Pq.mOvRFq4DR23eQJa', 'used', '2024-02-28 05:58:12', '2024-02-28 05:46:55'),
('56yxIiQn6WrC_PVER', 'newRegistrationUser', '255623864309', '$2b$10$roOzRcSo184M4cWmHJ0qFeWSrHB8mc5yGH78EuRINpYbYImniVB.y', 'active', '2024-02-24 14:49:07', '2024-02-24 14:38:07'),
('6earIKHnlLgH_PVER', 'newRegistrationUser', '255655076108', '$2b$10$XuMQglz3W2Erz0dDQo7lYODjgdRIkPFxj1qhLx63TqJ5PbCwrmeRm', 'active', '2024-02-20 14:32:21', '2024-02-20 14:21:21'),
('6IpwOpyx8R38_PVER', 'newRegistrationUser', '255745679777', '$2b$10$7BNaT5NnbYlV7qNkTprdNeYLZAriyvCwJ5MV.UF0ps/BkCIFcQS2C', 'used', '2024-01-30 07:42:57', '2024-01-30 07:31:36'),
('72vvgiuTKJx5_PVER', 'newRegistrationUser', '255749622000', '$2b$10$EfleJNveGcbSfwUFyfLhAeju1J6807MIqvoNCik3uz9XTdj5yeJXy', 'active', '2024-02-28 14:41:02', '2024-02-28 14:30:02'),
('7IbUJTSQKIgQ_PVER', 'newRegistrationUser', '255629841818', '$2b$10$mAyEO1mYcpfSR3YGLJPrJ.AIUBiT0IoVL/Kllwmj3knumVqMFYvx6', 'used', '2024-02-23 09:15:32', '2024-02-23 09:03:57'),
('7uDXvCf2l2sT_PVER', 'newRegistrationUser', '255769807371', '$2b$10$FnfJF83xygBjr3JyK9y7fOWuWnGSQPsIMA9KMG.BArhVQt5hTstUa', 'active', '2024-02-28 14:53:37', '2024-02-28 14:42:37'),
('8t4SrtfYhl13_PVER', 'newRegistrationUser', '255745341109', '$2b$10$5WRwhdT9XdR52WfJ/OA/i.CTFpFevC8owYhp3TXkXyw6vxFQ3MfYe', 'used', '2024-02-03 09:28:10', '2024-02-03 09:16:50'),
('8WIjDw8fKJzo_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$4USZD7QjS9Ejq6yGasc0heYpYr/ZbVnvK5LY5gz0Vl0rzhgJ9Svbe', 'active', '2024-02-01 09:28:45', '2024-02-01 09:17:45'),
('8Z3i5uvBsZDH_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$V12tiIaSmNMeEwToO/S/r.YSna0lUZwwmYauAK5AFTarnokHt2WjK', 'active', '2024-02-01 09:28:07', '2024-02-01 09:17:07'),
('9AMLoHqaImYK_PVER', 'newRegistrationUser', '255764150757', '$2b$10$Xr2fT.4S3XCoPbietmBu5ONCEXTio.MZ10lfCtc.XeYsNEsuLiGO6', 'used', '2024-02-28 13:44:21', '2024-02-28 13:32:59'),
('9GEVdnR2fQF0_PVER', 'newRegistrationUser', '255752094672', '$2b$10$ZoU7MZppExrFPVr8gTOuweGGaKuihqPtDf.gHbTvJTgIyWjHKcNGq', 'active', '2024-03-02 15:39:55', '2024-03-02 15:28:55'),
('9IAvz9WXOJNa_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$G7j87y4TxrbU7kqVUrFOC.KEJ.4JwkeG4ZVU11mtGCwk1hxd4/hie', 'active', '2024-01-30 11:13:44', '2024-01-30 11:02:44'),
('9tBsV7kPP0dp_PVER', 'newRegistrationUser', '255693431588', '$2b$10$MEyPMe8Uj1WsC2iZMQ88JuHkeu7rf8SY42Hv9EzS4dUqtRJbD7viy', 'used', '2024-02-23 09:23:19', '2024-02-23 09:11:38'),
('9ZrYOhu2MalY_PVER', 'newRegistrationUser', '255655076108', '$2b$10$h6c6xoqtK68TJWMX23BxUu.yPVFtVUdc0YfH62L/jPOcxK44akZdi', 'active', '2024-02-19 10:09:46', '2024-02-19 09:57:32'),
('AfsI7Og4AR7G_PVER', 'newRegistrationUser', '255623864309', '$2b$10$A1LxT9pvk4bLRuGQLkbT/ejVkA2lQQBMmpgTZWHOg0keMg7gV5aJO', 'active', '2024-02-25 13:23:24', '2024-02-25 13:12:24'),
('AhWvjiMc7p9U_PVER', 'newRegistrationUser', '255623864309', '$2b$10$O3t2YRUwWPRa3VP6FdpRr.pQxxUKA8Xt1wtvwmO2P8.YjrEID85Ly', 'active', '2024-02-25 18:14:48', '2024-02-25 18:03:48'),
('amwrZKHKQ9px_PVER', 'cR4zjse0mU0U_DRVER', '255623864309', '$2b$10$b0S3ZGHpHFMYDwMRGpA5aOuaxTlgVGQ5BEZZCSIncffFXHixno/Eq', 'used', '2024-02-26 10:27:34', '2024-02-26 10:16:09'),
('Ap0uUInQNg80_PVER', 'newRegistrationUser', '255655076108', '$2b$10$yHf3k.q73.vRCYpCDY6bSe18xrxi9Q8Ca5MmpgSm4SQdYqBuvl3Mm', 'active', '2024-02-20 14:17:34', '2024-02-20 14:06:34'),
('ArrCxDc5MRsV_PVER', 'newRegistrationUser', '255745679777', '$2b$10$z6yOdQ56j4KLzKYHe3Dl..cDa8kfPRnJ3dvIGB1l.5O2HBVNAEAF6', 'used', '2024-01-30 07:46:00', '2024-01-30 07:34:46'),
('axbpnDcnj1MH_PVER', 'newRegistrationUser', '255752094672', '$2b$10$D7OD5KI2aICItL7dhYbvQ.6hS0A1l26cc4ZYW8Btq6IeL//LXf.Wm', 'active', '2024-02-27 16:09:39', '2024-02-27 15:58:39'),
('AY6X5cPk1BMb_PVER', 'newRegistrationUser', '255684181749', '$2b$10$Zk5O2ekAW12xg0Vusenwc.U7xICWb1fa1/dDWJwA6M2WAVfXo9.Xm', 'used', '2024-02-26 06:44:07', '2024-02-26 06:32:36'),
('bBvNOIOUudij_PVER', 'newRegistrationUser', '255623864309', '$2b$10$CDnYEUI2FXLgu5VSfvpMae4PNR3KRMNWP7hDXDzlIPvNWyDNkuxY6', 'used', '2024-02-26 10:20:45', '2024-02-26 10:09:17'),
('BcDaUFPnUbCM_PVER', 'newRegistrationUser', '255716272830', '$2b$10$zcM5b317c.rV9NfxBZjYWOMECFurYlyxt9SUxIMkYEe3/e3vw0Fdm', 'used', '2024-02-28 13:52:56', '2024-02-28 13:41:09'),
('BDigofWIbLHI_PVER', 'newRegistrationUser', '255659644211', '$2b$10$bpEThXta2tzm7lW46QCtfeIy1xGiui9LYqrTS9a9Q2GeG88h8tpgm', 'used', '2024-01-15 08:40:13', '2024-01-15 08:26:50'),
('BEOmmly7ecid_PVER', 'newRegistrationUser', '255752094672', '$2b$10$tq8HNu/bYZsEqLquqnDWgO3oi8wlNo9359OR9HRe.597N4VvZZ0hS', 'active', '2024-02-27 12:10:30', '2024-02-27 11:59:30'),
('BFU2qsmZCaO7_PVER', 'newRegistrationUser', '255710793283', '$2b$10$mmRToP8oh2OKXYbonkeQW.H7nII7I/DFn2VkrLNlX1/TY72moTo8W', 'used', '2024-02-17 11:03:27', '2024-02-17 10:51:46'),
('bpa8PjmDsVTt_PVER', 'newRegistrationUser', '255623864309', '$2b$10$f1u.DLPvkns9NnY10fOMxOWtOhXmJcZ5fIml0bh/DndFeWFaSeMNK', 'active', '2024-02-24 13:53:34', '2024-02-24 13:42:34'),
('bQGyhtsCRvGH_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$7Zc/v5WCWvKKN.L09L65suD02Dg.u7qaMla1YwI9uRPJ9mI2TFyVG', 'used', '2024-01-09 09:29:58', '2024-01-09 09:18:40'),
('brEOJYyNSZPB_PVER', 'newRegistrationUser', '255655076108', '$2b$10$ak9DAdQTcpRI.eGI5iy04eW4iQTf1GVH2yOSJOGpTqbGNXafkJPVO', 'active', '2024-02-21 10:08:58', '2024-02-21 09:57:58'),
('C4qOHiYTTqEB_PVER', 'newRegistrationUser', '255655076108', '$2b$10$EDwDPR6SP13FEgKS7JaGVuFV/SZOc8AyA2MliBxwTY32UKAGudTa2', 'active', '2024-02-20 09:34:44', '2024-02-20 09:23:44'),
('c7Md6JSVZcKc_PVER', 'newRegistrationUser', '255769555273', '$2b$10$uymAgy9oqFUcudlMEMyKnumbijHBFJtqS9BXy6qa3G4B1263/CZqS', 'active', '2024-02-19 08:53:49', '2024-02-19 08:42:49'),
('cFQtw0WXuqjr_PVER', 'newRegistrationUser', '255687637671', '$2b$10$wVx0F7jCXhTnnA/KVl2UeettXubX.4N/oxaj0B20Y6y/W5WuC/eLa', 'used', '2024-02-26 12:23:54', '2024-02-26 12:12:23'),
('ClLzwpKGr3nf_PVER', 'newRegistrationUser', '255764150727', '$2b$10$.0eUfsuYgPTZlZQ9tNTvUe6G1sl8ZyaQNVcvEvU3KwZy52lkLf7/K', 'active', '2024-02-28 13:42:00', '2024-02-28 13:31:00'),
('DDhUO4VbhvIv_PVER', 'newRegistrationUser', '255620248710', '$2b$10$tvKW98.KwOqKjoPrwVw5J.0CNo5Wp6HDgHVYW5wX6bMr8rWIaARk.', 'active', '2024-02-23 13:21:18', '2024-02-23 13:10:18'),
('Dg5s5mLB1VjK_PVER', 'newRegistrationUser', '255715470853', '$2b$10$YCutBRm4IpBkzuX/z4kPsuezKYuqY3njSxcsDOsyXN7Qikz13Y7v.', 'used', '2024-02-07 08:39:45', '2024-02-07 08:28:04'),
('dIqH9N1RSiFu_PVER', 'newRegistrationUser', '255620248710', '$2b$10$I.HIbFNJb7niFuSGF6ZVfeA8J/4A5jl1sQRlPB.qMzHpwWOr71F9K', 'active', '2024-02-27 12:46:04', '2024-02-27 12:35:04'),
('DJwFaGqYcmUA_PVER', 'newRegistrationUser', '255675601739', '$2b$10$/r/k0d6s0ti0gTarOhJw7uctbNfUG3l8Bo3328JgtRn6PtuxlTUcy', 'used', '2024-02-22 10:29:07', '2024-02-22 10:17:41'),
('DmWPxBXMWrvV_PVER', 'newRegistrationUser', '255620248710', '$2b$10$M4eCSYMmBoC08YLPcL8.VOp1BIkaSEGUyAoPSW7iWu7CgpCL1Mh/a', 'active', '2024-02-24 09:02:24', '2024-02-24 08:51:24'),
('DpvYlBchQKCr_PVER', 'newRegistrationUser', '255754363728', '$2b$10$ie8YO.3oBa4OCLiDpJT2kuyWE44i4lPzsvOS893ZnZTXYK.3RI7aa', 'active', '2024-02-07 10:32:03', '2024-02-07 10:19:57'),
('dSk4Mv3qMn2i_PVER', 'newRegistrationUser', '255684502989', '$2b$10$vs0O7kL3KHOcVXRbsLFA7.84ovplaXVdUwvZqy6MpB3NCOUn1QM.i', 'used', '2024-02-22 11:12:18', '2024-02-22 11:00:50'),
('dUWHqUsP7nuj_PVER', 'newRegistrationUser', '255746297197', '$2b$10$88KDYGzu6HxJJqJT.HT2IO2bSEnWO4jQ2Ma47lA8iE37vBJoWlH/C', 'used', '2024-03-04 14:21:05', '2024-03-04 14:09:34'),
('dWtrVIAvznZm_PVER', 'newRegistrationUser', '255718138165', '$2b$10$HS7VY69db1x6zLremJJIW.g7yOZv3ZbD56vbJN2iDnOzd.00PCvbC', 'used', '2024-03-01 12:39:06', '2024-03-01 12:27:34'),
('E2WaKSWNSnxL_PVER', 'newRegistrationUser', '255682140260', '$2b$10$Pv6O.UkjpgsQrXUKd9PB7.KaIklukORhvykkRJ17FtxVgzHZ8KTGa', 'used', '2024-02-22 10:40:57', '2024-02-22 10:29:37'),
('ee3V8kP7cF5T_PVER', 'newRegistrationUser', '255620248710', '$2b$10$I/WL3tfTCPYiftSHECk6QeqAlcAr9FXvEAzindHrhhfZk2EJKTF0C', 'used', '2024-02-24 09:04:13', '2024-02-24 08:52:44'),
('EjU0sh51iP72_PVER', 'newRegistrationUser', '255693986103', '$2b$10$saKsToVH.EfexRBjr56uVOuEoOCBtn024t0cfddn6y6dmX8C5DxXO', 'used', '2024-02-22 11:07:02', '2024-02-22 10:55:42'),
('Ek0uDxStWUlT_PVER', 'newRegistrationUser', '255623864309', '$2b$10$ZrZQo2Fxy16yBzrdqG44heEnf3zWpbdWzT72T.m9JHFy.qCU2ny9C', 'active', '2024-02-25 13:34:18', '2024-02-25 13:23:18'),
('eMyiH3nslt2q_PVER', 'newRegistrationUser', '255787076924', '$2b$10$J3H.VXGJIFsbY17xu5BL8ujNiHJCi32CT6ILb8djyToR5VVwWNn42', 'used', '2024-02-20 14:35:29', '2024-02-20 14:23:28'),
('ETwFMWlNEW5G_PVER', 'newRegistrationUser', '255718050176', '$2b$10$Ge9c0SvP8y4OOHcKKwfW.eXXKEeesMh8VB9qOekE/qG471dqdua2C', 'used', '2024-03-01 09:50:58', '2024-03-01 09:39:35'),
('EvSHJx9VJ6gu_PVER', 'newRegistrationUser', '255620248710', '$2b$10$7F55ARLc9RNs4Ti8AM5IQe93w5l/zK.HtCIjSUJBPp9P/TBZsYuJ2', 'active', '2024-02-27 12:13:55', '2024-02-27 12:02:55'),
('ez6WZHjcNYbD_PVER', 'newRegistrationUser', '255752760828', '$2b$10$HJ7yLp/btB3vTuX6y7LbyuwVsMqF9PkgPWVnKlrE.ThdwHn9JfRd2', 'active', '2024-02-26 20:41:39', '2024-02-26 20:30:39'),
('ezanmynDHewH_PVER', '3oDTlhet4xB1_DRVER', '255679666758', '$2b$10$BPSUZZ8GNyTeb1hs7XVD2OTZC8nOFzHBNJvKu7UDe3aOzKBME.NLm', 'active', '2024-02-23 10:54:30', '2024-02-23 10:43:30'),
('f08TCWqvyThY_PVER', 'newRegistrationUser', '255752760828', '$2b$10$BRIZvD4ySm6Pi84rQRkkd.9KF68uIiBSrrANtaMl.0RmpJQ5KirlS', 'active', '2024-02-26 20:47:59', '2024-02-26 20:36:59'),
('f1lxYTgSCgCn_PVER', 'newRegistrationUser', '255655076108', '$2b$10$.WWfoMm8pqD/DZNmlzhF6.dCqV5oHmUlGOwoCDvJdF0dUY4EpCGy6', 'used', '2024-02-20 11:36:52', '2024-02-20 11:25:10'),
('f9sp8ySEd9U9_PVER', 'newRegistrationUser', '255655076108', '$2b$10$I12cq7eEp3sE3MxvWYg2UO9xOXDfDFD4sZ.2evHEmRYlDH4xGscpS', 'used', '2024-02-20 11:46:24', '2024-02-20 11:34:46'),
('FbGclfmSZpz2_PVER', 'newRegistrationUser', '255623864309', '$2b$10$dlQ2iWXBvRbKnxYxklVeh.Js2OwffAjbTnCPCqbJJFPl55L9FdE1m', 'used', '2024-02-23 13:56:13', '2024-02-23 13:44:42'),
('fmy0jjXY35QU_PVER', 'newRegistrationUser', '255687235897', '$2b$10$NMcldtMAF9uFMiLstCisTuV9iwk57MZMS.LgW6gkX09tpkiYmqhu2', 'used', '2024-02-22 11:23:28', '2024-02-22 11:11:56'),
('g1wx4rLIhXi0_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$n4KSsOk7A1Q6dDSFmge9HOqX9sDtT3rwfW0ZO0.Lph9a4Mqf4/M8i', 'used', '2024-01-08 09:22:41', '2024-01-08 09:11:08'),
('G3eD3qVY28Q8_PVER', 'newRegistrationUser', '255744992387', '$2b$10$OxHSippd0LpuMFrUnm3p9uIP22biz5hDb0YqQE9MG/Xu4eau1rvha', 'active', '2024-02-27 10:20:14', '2024-02-27 10:09:14'),
('GbEEy5e5BIFW_PVER', 'agXbZ9HWAtlD_DRVER', '255718138165', '$2b$10$W.bgigj7W42s0l01kSE1wuO1ee.wObyfeWOABsCwZ0lnLQy33hBAG', 'used', '2024-03-04 05:38:37', '2024-03-04 05:26:57'),
('GChOjzYwzg87_PVER', 'newRegistrationUser', '255655076108', '$2b$10$zM1aAyBVRz52OUm7FyJZROs6vUQvGh5aWI5U231zzU.L7D4x0/BAq', 'active', '2024-02-20 14:21:26', '2024-02-20 14:08:00'),
('gdSLGNYQGqJD_PVER', 'CNMQTb1TbZur_DRVER', '255744226667', '$2b$10$nvtxr.KGnz5DVE81qLHz5epPS6gcEp3aP1Gy94IO2vRLA5R34sn6a', 'used', '2024-02-28 05:57:15', '2024-02-28 05:44:31'),
('gI9dnBs28x7i_PVER', 'newRegistrationUser', '255694887965', '$2b$10$2vb3/mzRVb46nQmAsFqWp.ELi4agL9Hh3dusmkpm37ViZh/xp.QkK', 'used', '2024-02-22 11:17:32', '2024-02-22 11:06:13'),
('GkhKXov4r2Le_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$bE9TxEFyeMOzSHb/Hp3RyuknDjPVpzuiTte76ls6NoT7IStkPTYSa', 'active', '2024-02-01 09:35:26', '2024-02-01 09:24:26'),
('GPmXpYgP8Rwy_PVER', 'newRegistrationUser', '255686519100', '$2b$10$UQlTgs0DXOSUJ2CQWRoRzeZW..BfCkmPKLojHHi1dlreIKLdCvBCa', 'used', '2024-02-29 07:39:29', '2024-02-29 07:27:43'),
('GSZt3Q7b5lJM_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$.KHwzs/3x9Q9MWCtboWRguL2iflxTVyI8LRP.k/Bi4nzuwuQer8QS', 'used', '2024-02-01 11:58:27', '2024-02-01 11:47:12'),
('GXImpcSaPqd1_PVER', 'newRegistrationUser', '255713166503', '$2b$10$5lHuvc6FOeRjZzEPPmVQHeN2IdWO3jqV7RZR.lEgKllcJRacshnfi', 'active', '2024-02-23 08:35:08', '2024-02-23 08:23:02'),
('H5PMzvv9IUjj_PVER', 'newRegistrationUser', '255766252512', '$2b$10$IMjFxkxO0wQ7lAieDiu60OeMBQu2ot4tpx7iD4yYwUavNEl7CdrjC', 'active', '2024-02-23 09:43:59', '2024-02-23 09:32:59'),
('H6vB73qAaWoo_PVER', 'newRegistrationUser', '255716272830', '$2b$10$DhnNSqeIXSDRQ5ZPBUVLRexjFew1ORh3mUMO3dAHIkUaU53F2Ran2', 'active', '2024-02-27 08:27:31', '2024-02-27 08:16:31'),
('hICBXe8nkReY_PVER', 'newRegistrationUser', '255710793283', '$2b$10$3gl.ejNL7OYEeGSOTPIA7O/d/ZryEeT7jmiD4La57UUMeM6F7yIM.', 'used', '2024-02-17 09:40:10', '2024-02-17 09:28:34'),
('hiuLVId2GDwG_PVER', 'newRegistrationUser', '255747578323', '$2b$10$4gwsluudFP.tDmKk1fg7WOig.Og9soIlBtD5haT81brKIPx4luOFG', 'active', '2024-03-02 18:59:26', '2024-03-02 18:48:26'),
('HMm1UIkADTG6_PVER', 'newRegistrationUser', '255682760298', '$2b$10$GLAzfr/SBIqtuCEQIU68luq5hNyNFxWn8HNoibwg7CtkN1akXUfpa', 'used', '2024-03-02 11:57:00', '2024-03-02 11:45:37'),
('hT2jBNYF2iRY_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$nJxmuwtCZMn/aijRhmQ4ru8mnD02vQWHlhUNhyKM3TKhQQY.XpDjC', 'used', '2024-01-30 14:22:48', '2024-01-30 14:11:24'),
('HvZNpDGh1D8o_PVER', 'newRegistrationUser', '255769807371', '$2b$10$EwxbxFcgTc.dAexQlXfsoeNLcyfi3WNN0O75jsTvfTc62VmUvdzXi', 'active', '2024-02-28 15:05:19', '2024-02-28 14:50:24'),
('hzjmwypPGw5U_PVER', 'newRegistrationUser', '255683343908', '$2b$10$cD1fyPTxkrfqKXJoQPti.uqbnGY7qpNs5xlSIXtwhKmjO7Rbk5XJC', 'used', '2024-02-27 10:26:23', '2024-02-27 10:14:53'),
('I86JTja9S6Qp_PVER', 'newRegistrationUser', '255626882557', '$2b$10$cQlBX.FtgkfEbZou.9Lcwuo9OX8rI2i.JgSQDYhgBuwU2TlhFW802', 'active', '2024-03-01 12:42:20', '2024-03-01 12:30:17'),
('InJ0AxMrf0r8_PVER', 'newRegistrationUser', '255695449084', '$2b$10$1qHKRHX.C0QcGSCAeXnkruXmTAVwyWRzFaVm0hQOecoS5V9g5ppNO', 'used', '2024-02-23 09:37:20', '2024-02-23 09:25:58'),
('ISfK59uiCkQE_PVER', 'newRegistrationUser', '255766252512', '$2b$10$JbWTIHlLeCwasJFL2bYwZuEwAsjMgb2n9h2Vb1WY665o2gRl17onO', 'active', '2024-02-23 09:38:10', '2024-02-23 09:27:10'),
('itEHcGaASeDc_PVER', 'newRegistrationUser', '255718286503', '$2b$10$k1LDnwkr8fQiq.B.68dJWuYJrVK2a.1hwz6BT.s.hYd7blparay6G', 'active', '2024-03-03 18:43:08', '2024-03-03 18:32:08'),
('ixc2vvtqABFx_PVER', 'zdenrmmWOlTx_DRVER', '255745341109', '$2b$10$sJvz3bbFFpw4eBoS6.1iaeVVzHlvIKSW/kK9fTqS8HZJac/DlLG.K', 'active', '2024-02-12 09:39:30', '2024-02-12 09:28:30'),
('J7o2VuOGi1mD_PVER', 'newRegistrationUser', '255655076108', '$2b$10$C2Lr/QVe/nOIZU80wBNsauXN.uGENm6XqtDj4ZFpqYkIW4ynti.LC', 'active', '2024-02-20 11:56:25', '2024-02-20 11:45:25'),
('jD1KxNVdolJk_PVER', 'newRegistrationUser', '255764150727', '$2b$10$SFDzcXR6fA.V26iLwsOXBuOZKMBNH.h4zL3uiPg8VW0ZNwU66I1Vy', 'active', '2024-02-28 13:47:57', '2024-02-28 13:36:57'),
('jFHYCRSzw4Kq_PVER', 'newRegistrationUser', '255744992387', '$2b$10$7lsG7hGDdWNfD0RvPuVVueqnL.n95rEB4e9S6NkK8prL/4jZOmYEm', 'active', '2024-02-27 10:20:07', '2024-02-27 10:09:07'),
('JiVp1SEggoOS_PVER', 'newRegistrationUser', '255745341109', '$2b$10$/yOzKrif3x5z7sYbsCsTQO3Hy23ByDlPbmsURPsF0UVoWvr83B9CC', 'used', '2024-02-01 06:55:59', '2024-02-01 06:44:42'),
('jR2ymA8w1oZZ_PVER', 'newRegistrationUser', '255764545079', '$2b$10$k6j0Sc36EaN7DijE9/zydeRVTwlPclhExFYEiwejENvEsAJRb5OE6', 'used', '2024-01-29 06:03:14', '2024-01-29 05:51:52'),
('jvGQJvYGVnlD_PVER', 'newRegistrationUser', '255620466139', '$2b$10$9S.08ry0lLO0BZdy03gZC.CGmU7EOQRr2UfyCP.J7DNgpVsHBRLlS', 'active', '2023-12-15 12:14:07', '2023-12-15 12:03:07'),
('JwRDKTBlwheC_PVER', 'newRegistrationUser', '255752760828', '$2b$10$mEPTVFfdlPKmneT1CDXxxO8ycfeiIbpvxAh9NtTTYevjlSTmc2uL2', 'active', '2024-02-26 20:42:29', '2024-02-26 20:31:29'),
('JyDd6DWZENVl_PVER', 'newRegistrationUser', '255620248710', '$2b$10$aU7UKM9i62zj2J07Dgutyum1OyadmqmQwXdBCfNV8HI8V3giLtR7.', 'active', '2024-03-02 11:17:54', '2024-03-02 11:06:54'),
('K2p787RpVqoF_PVER', 'newRegistrationUser', '255717682257', '$2b$10$oBEe70fyqf2RUzKiZZ7Ige5gT6gB1Y23/F/aGFycbrJyCRsnivOfW', 'used', '2024-02-24 10:25:31', '2024-02-24 10:14:13'),
('KDi1ybJjcmzF_PVER', 'newRegistrationUser', '255623864309', '$2b$10$kOiXNDRd4nstYJkWxONri.8sWfsUORWOen1v7YIsg6Pyeoh0YDULm', 'used', '2024-02-25 13:09:26', '2024-02-25 12:51:27'),
('ke7CgrcRxe3l_PVER', 'newRegistrationUser', '255655076108', '$2b$10$/oOGkNHbv2.c2T1dPAdnU.A3mb64B4WMAvN.NE3wNYkFaU51A7iny', 'active', '2024-02-20 14:24:15', '2024-02-20 14:11:08'),
('kF9mV9EzDWUU_PVER', 'newRegistrationUser', '255764545079', '$2b$10$EEKpHD7mgKtwhTlLIOJc7uj0v78pNEzNWNxGXHPrVkKKjR.OTWThq', 'used', '2024-01-29 06:16:39', '2024-01-29 06:05:21'),
('KjsGhWzaxvWe_PVER', 'newRegistrationUser', '255745341109', '$2b$10$5R3RkMsDsY0jjYgZTtIYueT69NMqxjvwI0nv9kyq1mU6ZETfQVKP2', 'used', '2024-02-01 05:42:05', '2024-02-01 05:30:33'),
('KLncRLREluLv_PVER', 'newRegistrationUser', '255687637671', '$2b$10$0mrdI9SmpJDkUzqxD009M.XOEcoQYCvPi21cKMmWNVfC8wyQD3JIe', 'used', '2024-02-20 15:32:55', '2024-02-20 15:21:36'),
('kO5TMELMpXEj_PVER', 'newRegistrationUser', '255743707104', '$2b$10$loHG95eSpu19FXrn2rdqeuP9wqcd43.LobMUiPu7zVPnLfJKJ5.dW', 'used', '2024-03-01 11:32:16', '2024-03-01 11:20:47'),
('krpfWhMBJhN6_PVER', 'fNLSTPVoY8Rt_DRVER', '255692506810', '$2b$10$SuskFkhWchn5R48gUN53Lel7vjdKVTiPx9HSNjUskngCH2Szof2pe', 'used', '2024-03-04 07:12:37', '2024-03-04 06:58:39'),
('kWr2HlLseEXo_PVER', 'UnTD4Hiskdrw_DRVER', '255693431588', '$2b$10$U4QgQgRCvf5kw8C4blCTLuTEcZXvzdWcU.dlpFJnJpnQ7sNWjayAC', 'used', '2024-02-24 16:25:09', '2024-02-24 16:13:49'),
('l98PNDGelpdm_PVER', 'newRegistrationUser', '255655076108', '$2b$10$8jZMFxMiBDZ1x3lPbZ76re0KUtWbJahwiMuzpIlZ576HuCBJQUtSS', 'active', '2024-02-20 14:30:31', '2024-02-20 14:19:31'),
('lFAiZHONI8pk_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$GxXwymGEcx/S8mIk2om05u7QsKR4GbIfWurtFwTSc1cAaGItlN3Z2', 'used', '2024-02-03 10:12:26', '2024-02-03 10:00:44'),
('Lfu6cp5I4GPM_PVER', 'newRegistrationUser', '255744992387', '$2b$10$27wQALJON6i97zUi.H/sm.8zxgViYgnM4A.Yx6YCddk06oWF8CrZm', 'active', '2024-02-27 10:20:03', '2024-02-27 10:09:03'),
('lHhCknJurnLh_PVER', 'CNMQTb1TbZur_DRVER', '255744226667', '$2b$10$5ImtTkhR3UncdJ.JWFW31u3IgBl2mqGxbyygbKj2OCZCIK9SvCdHW', 'used', '2024-02-28 06:01:45', '2024-02-28 05:50:20'),
('lKpPOc0wZCjd_PVER', 'newRegistrationUser', '255743854146', '$2b$10$i7b.RMNdIuGy2BRjIOsaUuM/EL8colaFO5DkXDxcHOTIZ0l/dfkR6', 'used', '2024-03-02 11:35:46', '2024-03-02 11:23:54'),
('lmyuUGjlxPej_PVER', 'newRegistrationUser', '255718032979', '$2b$10$NUz4PwQGqrS3OzGGCZfxnOMMtaFI6PKiJ0nar.JuGyB3T.q.hZCrW', 'used', '2024-01-17 12:05:59', '2024-01-17 11:54:33'),
('lnJY3KwyJIKm_PVER', '0SuMMK21VNdC_DRVER', '255745341109', '$2b$10$sHnhMO8.tUUy5LFR4aSJJu2bAfX5SdNOfRMq2L7a1KQJbygXaZKvu', 'active', '2023-12-15 10:04:35', '2023-12-15 09:53:35'),
('LR9JsFRCqFyU_PVER', 'newRegistrationUser', '255623864309', '$2b$10$ylKAj.XM2kgiP9Ngu6LcveGKqyW.lDdswh2XAUJOXK5rLw7hH.3V.', 'active', '2024-02-25 13:28:55', '2024-02-25 13:17:55'),
('LSfvt1ioq9JO_PVER', 'newRegistrationUser', '255686853427', '$2b$10$1GQdzS9J.bSzn7v.HB4ruevYuOX7k9dZV5SvipxS6pCPB.S4zIRkC', 'used', '2024-02-23 10:00:50', '2024-02-23 09:48:44'),
('LW4rsMCoCgff_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$kJYn/hDVNHA0A1xYqjR2qeBoOhc8TFmYuKBsIPfl8phsD0gmmUgG2', 'used', '2024-01-17 17:23:19', '2024-01-17 17:11:25'),
('lY3TVdblbsp8_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$AAnvOVpKIj64da2J//5o3.bCg5fHCKtNYE05iib98bFFS5TtMJ7WC', 'active', '2024-02-01 09:28:42', '2024-02-01 09:17:42'),
('lywve2ZoPS0u_PVER', 'newRegistrationUser', '255745341109', '$2b$10$mI2kNuKCtm1QgBpHR6kn3.Uq96f4FyUFQuL6jIG2UdgNWAQmc0nZG', 'active', '2024-01-08 08:55:26', '2024-01-08 08:44:26'),
('mBJZ2KyFpilA_PVER', 'newRegistrationUser', '255656906729', '$2b$10$LO9bcdwCZREWd4WJJkLe2OFFDlBuGQnmkosxyXYsET3FMen3e7d/y', 'active', '2024-02-19 10:14:02', '2024-02-19 10:03:02'),
('mcEBrg8MkAoL_PVER', 'newRegistrationUser', '255745341109', '$2b$10$X85qy6dSM5hyCoNGsETqZOKdyceASm1B6n4Px.bpeUu6Lm/Q/zdty', 'used', '2024-01-08 09:05:20', '2024-01-08 08:52:11'),
('MeLhiSyJ9znm_PVER', 'NK8oxrAkXH2Q_DRVER', '255745341109', '$2b$10$hctwPAbkFrJnXTLduR6W9.8GnA0TQqGhluk2Zk4Z0CEcU.Zw9K78.', 'active', '2024-02-01 09:20:48', '2024-02-01 09:09:48'),
('mET2rhgdIms8_PVER', 'newRegistrationUser', '255718286503', '$2b$10$DlSD95RXYqYJ/mJZUyBoTOtvQ0wXCdyf1gEcBc/xUeZtvokFu8/mq', 'active', '2024-03-02 18:45:06', '2024-03-02 18:34:06'),
('MIMJiW98HBB8_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$aPK8Rv911LbUX5Kfxr7H..djLkTEi53j5svHPkTMLeKh8MSkG7nCm', 'active', '2024-02-01 09:21:18', '2024-02-01 09:10:18'),
('Mk4xLJSfNtYl_PVER', 'newRegistrationUser', '255745341109', '$2b$10$oO4QO36Tang8KccDHhvocOCzn0mPrhhJ1iQOA91TUNxYrDIS8kK52', 'active', '2023-12-14 16:37:50', '2023-12-14 16:26:50'),
('MlDKBZkDKeA3_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$lN80izJ2b45GZhLafQ4SLudhdMMLeAo/XWyzpFrrIfG69a0EC5crS', 'used', '2024-01-09 08:20:38', '2024-01-09 08:09:23'),
('mon1zhrI6dXc_PVER', 'newRegistrationUser', '255769807371', '$2b$10$AM0jJb9MglUVH8hjGJ2Yje/FbbQLcCVIfzTsbNoOg8aaHYntdFOnG', 'active', '2024-02-28 14:54:11', '2024-02-28 14:43:11'),
('Mp4Kew9ftGt9_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$fNQd9/kZFFVRd/V0KUCWQO4ZG88H06awfPdCk5FIryL48KAumywhG', 'active', '2024-01-17 17:20:39', '2024-01-17 17:09:39'),
('mQdrluEDre04_PVER', 'newRegistrationUser', '255743707104', '$2b$10$RezMnYZCPBrUOZRMUBV8NuhuERARPdgOu0FUN6pwEJ1vE61nrsqC2', 'active', '2024-03-01 12:39:32', '2024-03-01 12:26:22'),
('n392pXJZpJVq_PVER', 'newRegistrationUser', '255623864309', '$2b$10$vKGVIXvooC6zDNSuo6/HEOo0VTGp7Nq/gH4ztgWdVPSnNTfqEVpkq', 'active', '2024-02-25 18:01:56', '2024-02-25 17:50:56'),
('N9PxcTfVWC0p_PVER', 'newRegistrationUser', '255746104827', '$2b$10$KbP4hYsX41th0D3Gu56RJe5s1A0xsB0chNq7jfXeCTtQ2zK7kJ.k.', 'used', '2024-02-24 17:19:20', '2024-02-24 17:07:39'),
('NbzndKiS6p9B_PVER', 'NK8oxrAkXH2Q_DRVER', '255745341109', '$2b$10$Qg4HoVDkW98zBAOKJWIyPeYJxWPPE5wxL11Jukpe4JjUMZ6kwRQlK', 'used', '2024-02-01 07:01:49', '2024-02-01 06:50:33'),
('nfrVn0xW2WDl_PVER', 'newRegistrationUser', '255712902927', '$2b$10$s1CBZVaoK61GfKL99zvkrO7kjRni7OjdPrA3aURG/MrNLgc3JT0ne', 'used', '2024-01-18 06:45:32', '2024-01-18 06:34:16'),
('NiMVlbLovVgA_PVER', 'newRegistrationUser', '255747578323', '$2b$10$lSfy13ND2V2oP3iLtFG5IupFRcJGKLTVq.XHKXqYPCKMN2jA2O23W', 'used', '2024-03-02 18:55:27', '2024-03-02 18:34:54'),
('nNQTzw0sRMTX_PVER', 'newRegistrationUser', '255655076108', '$2b$10$qHgqtLvfM/JuUYWtheGcn.sA3yeJKE6BQrps5IOnkmRA4j9i6LNlO', 'active', '2024-02-20 09:42:13', '2024-02-20 09:30:09'),
('NpCg5HF9L4j2_PVER', 'newRegistrationUser', '255655076108', '$2b$10$uhMb5e3IF8NjEP8wpbXdQ.nJEa4nVQlg8UmFeLCHsq50Oxqb9F6m.', 'used', '2024-02-19 09:47:02', '2024-02-19 09:35:15'),
('nT1INXi5poBW_PVER', 'newRegistrationUser', '255655076108', '$2b$10$kEMoFJR7o4HH2z5.bKpSUODWK8Pj3jP3drVJD2ljQlqnqYGiT0.WW', 'used', '2024-02-20 10:56:34', '2024-02-20 10:45:03'),
('o7bRNB9A14JS_PVER', 'newRegistrationUser', '255744992387', '$2b$10$KO3fTN83wV7rpH3MPOYoSOdINTv0GyiTse5GlDhv16rBC0xV9qhmi', 'active', '2024-02-27 10:19:32', '2024-02-27 10:08:32'),
('odtmBoFQBXZr_PVER', 'newRegistrationUser', '255749622000', '$2b$10$K.cW5iNRxCfB9fn7YvUB9.2Jg2z7HJeISpO4u1hX5ucMNVHf3xLd.', 'active', '2024-02-28 14:38:58', '2024-02-28 14:25:17'),
('odXdlNMrjbiq_PVER', 'newRegistrationUser', '255710793283', '$2b$10$aptgdXVIrcIduFSxww8fe.q5cO3D8M918IPx9SX.5gj8CIc1bZhJO', 'used', '2024-02-17 10:35:02', '2024-02-17 10:22:52'),
('Ok8JUvITGVq2_PVER', 'newRegistrationUser', '255687734088', '$2b$10$x922XvoeEaIfk9EI9RvKgONGmLOp/Skwh4fc9IMbllGMlFCYgPjoa', 'used', '2024-03-03 08:08:24', '2024-03-03 07:56:30'),
('OoaMQ9Tjkh5n_PVER', 'newRegistrationUser', '255713530261', '$2b$10$VNSaxnpEmpDThogQQeoHk.2FzipJiXeqA.eMH9CCEPiQnE7FBOo0a', 'used', '2024-02-07 07:20:16', '2024-02-07 07:08:44'),
('oORwkeU89ylv_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$WeO9yZxqtrrKRX09SIaMse.JFytAzf/cDoJy18FWAAcFdSIcb78bS', 'used', '2024-02-13 13:30:58', '2024-02-13 13:19:37'),
('OsO0ZFkzvJgY_PVER', 'newRegistrationUser', '255752094672', '$2b$10$ocw6spMgJn08VppXypi9GOCEGEbi7151RO2vGRP6fvh3y4NtRksXm', 'active', '2024-02-27 16:09:42', '2024-02-27 15:58:42'),
('p23RWqoEdsQK_PVER', 'newRegistrationUser', '255743854146', '$2b$10$vL.WzSs6dMznvrPayuM.se6QsgoaShBYTd7nxF4ojjn3YofAqhMGm', 'used', '2024-03-02 11:47:03', '2024-03-02 11:35:40'),
('P2bjFeST8Jyw_PVER', 'newRegistrationUser', '255717250998', '$2b$10$6oD0aXqvuIiGCpInfXvtzuRfeIB5yKMGzByYajyMKSbD6AtCLFp9K', 'used', '2024-03-02 12:07:37', '2024-03-02 11:55:49'),
('p7qJ6cPXooAk_PVER', 'newRegistrationUser', '255653989877', '$2b$10$BR1GFczAqntvaPH6tASKy.T.81VweDcKTlMQhQhA095mRsc03v8IO', 'active', '2024-02-27 10:01:28', '2024-02-27 09:50:28'),
('pcF64gSNcPbk_PVER', 'newRegistrationUser', '255683343908', '$2b$10$XBiUxtrsd8/l5RUj3lts/eCSY/Gmcd/aa7N.klllRMwdIbXuFyfWy', 'used', '2024-02-27 10:23:48', '2024-02-27 10:11:32'),
('pcvBTDGoMTl9_PVER', 'BVuTpXpi7mAS_DRVER', '255712902927', '$2b$10$izi/04vDHKy64S5KqWR/lO9lLYpZdwnBi85AuhVoMxVtVpiWVWUHW', 'used', '2024-02-21 10:31:52', '2024-02-21 10:20:31'),
('PJAzlnHKYavh_PVER', 'newRegistrationUser', '255620248710', '$2b$10$URnmZ4Wd7QTATSTuFqzbVO0Bbs9fBvQEFBnDlb1JYHYceVQsZfwB.', 'active', '2024-02-23 09:35:17', '2024-02-23 09:24:17'),
('PJJ3pXyENNdV_PVER', 'newRegistrationUser', '255685975114', '$2b$10$5/AUMUeruPcAcQqfJHGiNuewsAN6nUNm4iPwC./EFchLU8k5Gohum', 'used', '2024-02-22 10:59:09', '2024-02-22 10:47:28'),
('Pk33As1gfuT9_PVER', 'newRegistrationUser', '255620466139', '$2b$10$Vre0shmVEVdN/lUGIOt/C.Pxi3zlPqhsW9SEylKOfjYRzjw22gBAy', 'active', '2024-01-17 17:19:51', '2024-01-17 17:08:51'),
('plKkW7Rpy8M9_PVER', 'cR4zjse0mU0U_DRVER', '255623864309', '$2b$10$xWfRGou0DYkzDXrxUJbu.edRVHUawHBoaaO7iIWPO8.x6c3vWnnhu', 'used', '2024-02-26 10:29:35', '2024-02-26 10:18:12'),
('pnvvS8u45xNS_PVER', 'newRegistrationUser', '255764150757', '$2b$10$vdVCWqtTHOWECgTGxXSToez98LqupYkbEDVPnMA8wc/9lC3YaOCpG', 'used', '2024-02-27 13:07:49', '2024-02-27 12:56:09'),
('PohT0SRxduUT_PVER', 'newRegistrationUser', '255762420420', '$2b$10$mBDdh/CRfUuw/zeGFGg7NOsb.u2MIVLLVZQ24AN6baxthcEmea2Vu', 'active', '2024-02-25 10:27:03', '2024-02-25 10:16:03'),
('PRN3z4uaghTe_PVER', 'newRegistrationUser', '255620248710', '$2b$10$7nbibbiAlRa9Qr9lT4UVgu5OfCdMOAt/YCuPggQ5JwwibqMCDRLp2', 'active', '2024-02-27 18:38:58', '2024-02-27 18:27:58'),
('PrzQzgjV18u4_PVER', 'newRegistrationUser', '255686853427', '$2b$10$1uEfS8jY7y/gc6OeBTSP5eacwCNbQFquR8pbcDsIPQReEIS6ZPYGK', 'active', '2024-02-23 09:55:06', '2024-02-23 09:41:41'),
('psxMWfpAjJY9_PVER', 'newRegistrationUser', '255713844444', '$2b$10$6xwTN/lXfEVBDJmJcz1Sze6RVqMhr3L46I67GVXjmDkme9YmruwaW', 'used', '2024-02-01 09:03:00', '2024-02-01 08:51:38'),
('PYF8wPlMIj3y_PVER', 'newRegistrationUser', '255620248710', '$2b$10$WxLepMcZNr2XUHHm8BuIpuMTQZZoaDPy3pncplUy3IhfYZlYJN1RW', 'active', '2024-02-26 14:32:12', '2024-02-26 14:20:00'),
('PyQ469q1JP6t_PVER', 'newRegistrationUser', '255715158682', '$2b$10$usIb16q6NYWl7N9kMQnKiezjNQ0LNZl8RBiTM5al/R4JA/kpwcgZO', 'used', '2024-02-17 11:32:51', '2024-02-17 11:21:22'),
('PzArDvYLJmkQ_PVER', 'newRegistrationUser', '255718138165', '$2b$10$xvgPaqWiRfLHtP3y.YqmpepARU1Igs70yRZjiA.kPOO/virS1OMHC', 'used', '2024-03-01 11:32:25', '2024-03-01 11:20:47'),
('Q76lqjNzFeCI_PVER', 'newRegistrationUser', '255655076108', '$2b$10$zihTU/TvWtAVLXuu5e9K7O0ZGsss7PtD.HV.ZFgO3hGHkQSIYLnhq', 'active', '2024-02-19 10:13:39', '2024-02-19 10:02:39'),
('qBISOOxVAPxh_PVER', 'newRegistrationUser', '255655076108', '$2b$10$3J3VczuwopKKWLzHVlNlw.DsSg8ZFmtby04tVuGLjIVQgL2NIfXSu', 'active', '2024-02-21 10:08:27', '2024-02-21 09:57:27'),
('QC8taPE5RQcM_PVER', 'newRegistrationUser', '255620248710', '$2b$10$NyjA7qWAjvxXB0kHwUgwLegzwVj/vDTQ21FDacvbZZsBO0vGR6g1S', 'active', '2024-02-26 14:30:01', '2024-02-26 14:19:01'),
('QfE4kMNYkWOj_PVER', 'newRegistrationUser', '255714930626', '$2b$10$JF540UqhjWs.1WZWvSRHs.MXQRRc2EXcv9JwcUzRKwR/TqiOgSgHu', 'used', '2024-01-15 09:00:46', '2024-01-15 08:49:06'),
('QjhTtk1Jm5mD_PVER', 'newRegistrationUser', '255764545079', '$2b$10$lE6Wa5XUcbkTaO1PfN01Wep1p1DLNYvDwv0hkE8BpBlKON9vC1o3O', 'used', '2024-01-29 06:00:18', '2024-01-29 05:47:34'),
('quYV2sTM5OwJ_PVER', 'newRegistrationUser', '255693434062', '$2b$10$iC8aF.0IE7dCK6q1Smnkdu6EkdPSn//y9D54A6mTu.qszD1vzM0TW', 'active', '2024-02-28 14:40:26', '2024-02-28 14:29:26'),
('qZs28guod1wg_PVER', 'newRegistrationUser', '255745679777', '$2b$10$BCK3FAitgRb2dIr8uBJ/puIWrTanJ0BHaB3SGE9NWx6tEeJlz88ma', 'used', '2024-01-30 07:32:38', '2024-01-30 07:21:00'),
('R71O9mkRZLqD_PVER', 'newRegistrationUser', '255719306599', '$2b$10$cE.V/JmmicaEg1lyTA4b2epKBGhkYtHqCZCd8mtx.oS8PakdwIpDy', 'used', '2024-02-20 11:19:53', '2024-02-20 11:08:27'),
('r9bd8TqDpRZb_PVER', 'newRegistrationUser', '255620466139', '$2b$10$1qJQUWpFxdvAkPHxBMGJ3OS3gL10Gs/5abOFCFOFumfvYLMAooKsy', 'used', '2024-01-09 09:08:06', '2024-01-09 08:56:41'),
('RHMN150LwPmU_PVER', 'UnTD4Hiskdrw_DRVER', '255693431588', '$2b$10$6cohJNzOysNNTUgnQYkb/uXM2FnNDbesREaCrSpjipZrPO0AGYd0K', 'used', '2024-02-24 16:31:34', '2024-02-24 16:18:51'),
('RJO0dd4Iai3m_PVER', 'newRegistrationUser', '255764150757', '$2b$10$yjxzVnLpIGdcmetoBJe6Y.faYjwa3ueXJ4CVuljIUQNfoaOxeiD36', 'used', '2024-02-27 12:28:29', '2024-02-27 12:16:56'),
('RKBNF4hK26cS_PVER', 'newRegistrationUser', '255710793283', '$2b$10$uABOJp1bsWym2Jb0nq/63uslCxFplT67dDQ6sc8DrkjEG.0RZHiee', 'used', '2024-02-17 10:40:18', '2024-02-17 10:28:40'),
('RlidfR634O7y_PVER', 'newRegistrationUser', '255744992387', '$2b$10$L6J./zW6nCiJQuFc.8Hq/.GcOfo.NCZdY0Hn067W95lmyCRncvlfS', 'active', '2024-02-27 10:20:17', '2024-02-27 10:09:17'),
('RMmrWtBSu5hV_PVER', 'newRegistrationUser', '255674199393', '$2b$10$oTeTj3hI/WQZp.xepNh5kOZsRseXCXK98/xnrI3kS6bKVJfRtqKz6', 'used', '2024-02-22 11:18:49', '2024-02-22 11:07:24'),
('Ryuv12QAq81j_PVER', 'newRegistrationUser', '255745341109', '$2b$10$jb34YbXVD.kHkWykT7RJh.5Ce8z7Wi/1btfHR61uYVuvEJqKQp1yW', 'active', '2023-12-14 16:41:18', '2023-12-14 16:30:18'),
('s8FR79x9m35h_PVER', 'newRegistrationUser', '255712735105', '$2b$10$gT.9z3jmR3p1fI2QBRbAQuFUhXEP74e3SykzhSVF63RYhbCwEL5XS', 'active', '2024-02-26 12:03:03', '2024-02-26 11:52:03'),
('SA7JwlJaPzjg_PVER', 'newRegistrationUser', '255623864309', '$2b$10$k9sxR3tQRJg4EvoMba6arO0M8ZP9hoawAE1uKVUQ1qldyc5ZHNykS', 'active', '2024-02-25 13:18:06', '2024-02-25 13:07:06'),
('seNz3gqTr3c4_PVER', 'newRegistrationUser', '255752094672', '$2b$10$zeFWpnMc.CTP067DigvzyOpy8Zs9/QOlB9rGE3z0kxoMTz7jaLZii', 'active', '2024-03-02 15:40:05', '2024-03-02 15:29:05'),
('sEZIAybv2clh_PVER', 'newRegistrationUser', '255686519100', '$2b$10$vVUAipav.nJeNfuffBC/H.XZNPtkhka9JttEjGjIW35jvdT3IwVDi', 'active', '2024-02-28 14:42:45', '2024-02-28 14:30:38'),
('sEzwEK8uDXhK_PVER', 'newRegistrationUser', '255762420420', '$2b$10$7VKfk2V7EyXKZuVp2MoMXO8UyqzvLeggOplhT93ZoynakOvLL4mhm', 'active', '2024-02-26 13:43:52', '2024-02-26 13:32:52'),
('SKJwbwB2Pgy7_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$hNo3.VEWM.U557MeDfxczuzwiWWQTJeV.Kla4l9lFOTWoS0apUFwe', 'active', '2024-02-01 09:24:31', '2024-02-01 09:13:31'),
('sKUtJk3z4yuJ_PVER', 'RWtz71AncJun_DRVER', '255659644211', '$2b$10$5yVIO9r7I/dsd9JsxW/5TuULoPlx65ZKIYiLKPCSpxJYxE1fnQtrG', 'used', '2024-01-16 06:37:08', '2024-01-16 06:25:50'),
('sMGAvrmxccp7_PVER', 'newRegistrationUser', '255746446062', '$2b$10$HNjRY1/U4nNld7Gy5bRciexbWHhfJpJNHlcFx1l/RJRawqgDBkfTq', 'used', '2024-02-23 11:54:58', '2024-02-23 11:42:25'),
('SmhIuTLZ0FHp_PVER', 'newRegistrationUser', '255788069795', '$2b$10$6HifkbPFT5vdKGgF1x.RQ.x9bs.ZUBv2GVzab5ip8sm7p3693Dyoy', 'used', '2024-02-23 10:19:22', '2024-02-23 10:07:48'),
('sNAklmNRUHSL_PVER', 'newRegistrationUser', '255744992387', '$2b$10$gJ2LamZ2YWqonid5bnbPceFVfgCdvL0pI9Dl18yn8.FCikV6ULAky', 'active', '2024-02-27 10:19:37', '2024-02-27 10:08:37'),
('SrmeYVjoaEkg_PVER', 'newRegistrationUser', '255683342079', '$2b$10$OPLcAKx7ftpnBGj2JPaF.ebSFHdmcJ/8OEX3mrwRqsUBSJDOb9un6', 'used', '2024-02-22 10:46:34', '2024-02-22 10:35:08'),
('SV87lsZQeBtE_PVER', 'newRegistrationUser', '255758119983', '$2b$10$Q8VWgJ30mIE/qxsQnmSyguXAh5FBvyai9fU5HBLpu0lxC5qFCdpbO', 'active', '2024-02-27 12:57:44', '2024-02-27 12:46:44'),
('sXZHsoRQRnPW_PVER', 'newRegistrationUser', '255746104827', '$2b$10$PZlsohTy3Itu4UcAKsBXRuOXWAp.Fm5fkqiebfC64245pY2BsbyPm', 'used', '2024-02-23 11:48:55', '2024-02-23 11:37:21'),
('sZifCwF004Vh_PVER', 'newRegistrationUser', '255745341109', '$2b$10$kk7i/WXBaoWPyPMZDp/72ubYQcik1nWp1EzUo8jOaxWpMtpTDyUaG', 'active', '2023-12-14 16:40:05', '2023-12-14 16:29:05'),
('sZkJiNSw2AcE_PVER', 'newRegistrationUser', '255620248710', '$2b$10$nSwLPqAy1D1s8TwpzlMZ7.pbcc39AbFSPozXplMbvbtakWIgBy4cu', 'used', '2024-02-24 08:38:53', '2024-02-24 08:26:59'),
('T1y074mmClPn_PVER', 'newRegistrationUser', '255655076108', '$2b$10$zN.Sc6mJ4rKR4jryAlnRW.eHgoW.8GxdjZZry7WHww8e7QgJ1Isgq', 'active', '2024-02-21 10:10:18', '2024-02-21 09:59:18'),
('t8AdQPk6XAGB_PVER', 'newRegistrationUser', '255685881332', '$2b$10$KPEsw8m./nv7RZnq/YATq.i9jpF8CSmYxsBu4dQ0/9cgJ026r7rHy', 'used', '2024-02-28 12:53:47', '2024-02-28 12:42:08'),
('T8Hram9i09Od_PVER', 'newRegistrationUser', '255655076108', '$2b$10$coSG6qXfs6dsvky/dyZW5u73hPCN0bAsIWj1fp8pSl73LLasOo7ru', 'active', '2024-02-21 10:09:13', '2024-02-21 09:58:13'),
('TdfYJGqKywmh_PVER', 'newRegistrationUser', '255712735105', '$2b$10$VMwRVopzSPuK/gnT17.IhOfKF1kOkcAduMYZAqqO4cRwZSiD6SmVq', 'active', '2024-02-26 12:04:17', '2024-02-26 11:53:17'),
('TMJvWr5mz3hZ_PVER', 'newRegistrationUser', '255745341109', '$2b$10$3rNeb2MHo3BnnAshH52i3uxL6baozX6uhCQb54rV4W1ILu4cNAe3.', 'used', '2024-02-03 09:47:42', '2024-02-03 09:36:19'),
('tn8PV20tSq38_PVER', 'newRegistrationUser', '255658718474', '$2b$10$wgcRW1HHYN1pZBZ9Tyr3Z.6lsu6H/VcsOqxNDKogDKIVRnWsJ9r7i', 'used', '2024-02-28 12:28:53', '2024-02-28 12:17:35'),
('TU82GFgfAsMX_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$X1Hn3K4X5XwZkZcKwzQJ2eQhpMSOcwthnHGsMgLGUIpkpfWtvtKfi', 'active', '2024-02-01 09:19:46', '2024-02-01 09:08:46'),
('U3bUlaiGEI9t_PVER', 'newRegistrationUser', '255686853427', '$2b$10$6GSopGJOKAo/WBIaNNhJN.nwb8j9LV7hSUTFlI2Q/P1jGIgE071pC', 'active', '2024-02-23 09:56:12', '2024-02-23 09:45:12'),
('u9WMguYAHpo4_PVER', 'newRegistrationUser', '255623864309', '$2b$10$HLgbr0eZVYMda/yuNKq6g.GR0XTH2lw.FZhPTxjsL0kqew.OtZWBm', 'used', '2024-02-25 13:43:29', '2024-02-25 13:31:43'),
('Ua6PtErSnG76_PVER', 'newRegistrationUser', '255655076108', '$2b$10$a.zmN3DCwxdzXQd3927a1Ox2kbR/aAzJgvzPEtGzGPmUlngAJwRJq', 'active', '2024-02-19 09:38:45', '2024-02-19 09:26:36'),
('UFXzkNATdjls_PVER', 'newRegistrationUser', '255762420420', '$2b$10$x346G0kMb/g9wNMK8PvtW.pp8iKFEjqOSOKJMaVXqtJwOcC5oCvG.', 'used', '2024-03-03 20:14:45', '2024-03-03 20:03:17'),
('UIGz5Ao06VVW_PVER', 'cR4zjse0mU0U_DRVER', '255623864309', '$2b$10$B9.RByzlqL.VoojXac7wmenOBtrkf8g9/FzROglpuvUqJPrOXfy66', 'active', '2024-02-29 08:54:02', '2024-02-29 08:41:35'),
('Urh9oksi9YOM_PVER', 'BVuTpXpi7mAS_DRVER', '255712902927', '$2b$10$fAJ1JebcPSR3em8MUj7hRevLstxnSUI3FUQ3..HrkZJ7qFZMorBtC', 'used', '2024-02-27 16:59:03', '2024-02-27 16:47:39'),
('v59pHhL2LgMy_PVER', 'newRegistrationUser', '255654028685', '$2b$10$AmvFctVyjayamsQGBcYXsevwh7ay/oYxPjDjbyZf58.MyFLl56Uf.', 'used', '2024-02-23 09:40:33', '2024-02-23 09:26:56'),
('vC3huAmzq2Ob_PVER', 'newRegistrationUser', '255626604814', '$2b$10$nYbf4BiDFwVWAhhhmeWqSewPXPaS9NLwL3bVyfYVtJyTcAO37OLI.', 'active', '2024-02-24 14:55:57', '2024-02-24 14:44:57'),
('vdT9OYTr8App_PVER', 'newRegistrationUser', '255655076108', '$2b$10$rfKPvCP4NJXOOu97l1tdZOBpAs25IL..jNTg8AuwxGaxViCnm.PEC', 'active', '2024-02-19 10:11:57', '2024-02-19 10:00:57'),
('VEVBXKkH918T_PVER', 'newRegistrationUser', '255652441424', '$2b$10$mnX4KexrVMoU5EPOmTNlGOndOAJNABljoKT9eKw.88bWSrDZ/Yiqu', 'used', '2024-02-01 11:52:38', '2024-02-01 11:41:18'),
('vevr0fXljIWM_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$8nR2i88gLAGUFUr5hOrQYur4Uj4W8NF0ndIbAwkbCmEZhKUqkRVh2', 'active', '2024-02-01 09:20:31', '2024-02-01 09:09:31'),
('vfEILKl06nLT_PVER', 'newRegistrationUser', '255752760828', '$2b$10$Cz7iUOUJtXI8uvvUIcqiS.4/PjoRSBC/pDQSOu3Kql0Eh4byZbjLu', 'active', '2024-02-26 20:45:32', '2024-02-26 20:33:04'),
('vhSRgYU0mVSa_PVER', 'newRegistrationUser', '255623864309', '$2b$10$xEGwwR5Xoika9fgP2sylF.Vn8m6rIb42E9vdDBTdvJRlj57rdL5E2', 'active', '2024-02-25 13:51:19', '2024-02-25 13:40:19'),
('VIrgXyzAw9u9_PVER', 'newRegistrationUser', '255762420420', '$2b$10$rEoYZMV.LV4Xga0mZmy/j.OeObKo6uTDAYWaAAkLXSDmYSzQJzGoG', 'active', '2024-02-25 10:22:08', '2024-02-25 10:11:08'),
('vuN0FINNugG6_PVER', 'newRegistrationUser', '255782347663', '$2b$10$WWmARaLdbmMh9LuHRMewEuqOXuoW88tnW3I8rUoFaLMQD6pd6Edge', 'used', '2024-02-27 10:03:22', '2024-02-27 09:51:47'),
('vwfqRBW0SaT1_PVER', 'newRegistrationUser', '255762420420', '$2b$10$Cw2AIUQfzZz4OEzVaVqMrOQGnJDq49zjvEb.6DtLt4/k1XACbVayC', 'used', '2024-02-26 13:56:58', '2024-02-26 13:45:23'),
('w1LDFln3Akk3_PVER', 'newRegistrationUser', '255620466139', '$2b$10$guG4K3nQDlX24G03oAgL4OjHo5niikx5j3OKjeTaEct9UVdUxYrnK', 'active', '2024-01-15 10:33:11', '2024-01-15 10:22:11'),
('WBopbY31yB31_PVER', 'newRegistrationUser', '255620248710', '$2b$10$Smp9I6S98NYUpnQjLyFGA.ZkqhPTdLEU6AAOmhEl5TBkkXSH0Jr2m', 'active', '2024-02-27 04:04:47', '2024-02-27 03:51:09'),
('Wgtz1sAZu4Q4_PVER', 'newRegistrationUser', '255693431588', '$2b$10$Dsomu.5kE.iVAcgKEaVc6OdOkswbfYIvMGyhaCXnAQqWx24Pb1ILq', 'used', '2024-02-24 16:12:10', '2024-02-24 16:00:47'),
('WJWqQ4Jb9WTI_PVER', 'kRmIXxUloUgX_DRVER', '255788047669', '$2b$10$H6W3zsY5y1gCPuGS7F.j6eEOiU6d.6CFyUHYjnq3Slvd0S0v7NT5m', 'used', '2024-02-27 09:00:21', '2024-02-27 08:48:56'),
('wK07rYMyHO11_PVER', 'newRegistrationUser', '255744992387', '$2b$10$PTVCrdWriVhx62Fi5cwuA.SYWXSCTOJ0KNaTy94Ck7IXn2Fg.hXsa', 'active', '2024-02-27 10:19:28', '2024-02-27 10:08:28'),
('WliuMQDVh2KV_PVER', 'newRegistrationUser', '255710315273', '$2b$10$YFdo.nGuXqAeyqqHbBAFAO67Z69Opav2f0i6Em31DpFZFjxwCXuLy', 'used', '2024-02-22 10:52:27', '2024-02-22 10:40:58'),
('wO26D6bJKbNy_PVER', 'newRegistrationUser', '255655076108', '$2b$10$BmcC38OTXZlTVhIlM6lgOeLKLftXSIGmSTZIUmDhUEunvmk9.pl5q', 'active', '2024-02-19 10:06:14', '2024-02-19 09:54:10'),
('WSDGQYOo8K47_PVER', 'newRegistrationUser', '255655076108', '$2b$10$uruFIv1zPndeY.dZNpda/uUG2W1npSWDsY3lzb7IztnhvhNH6gkTS', 'active', '2024-02-20 14:26:56', '2024-02-20 14:14:02'),
('WUM1GLmiSAj5_PVER', 'newRegistrationUser', '255788047669', '$2b$10$SGgCVxHXoV5XA.xybznUrOZoH1Am.JATd6PirHbhhYWg4bFLm2Kq6', 'used', '2024-02-27 08:40:56', '2024-02-27 08:29:31'),
('WviQt5HMsZQv_PVER', 'newRegistrationUser', '255655076108', '$2b$10$GEB0XBnTvAMDuWmHTr86UejolDwSdMJsEODS5huTAcBekR1zhowOK', 'used', '2024-02-20 13:04:20', '2024-02-20 12:52:09'),
('WZ9piXUa5jSr_PVER', 'newRegistrationUser', '255655076108', '$2b$10$FwZYgSiCwITWjLxPzsEueOby6lNqvcnWu3JrMKtsa.r7kthpyA9xK', 'used', '2024-02-20 14:42:04', '2024-02-20 14:30:46'),
('X6n6QVR8eKaL_PVER', 'D1ccS62xWIE0_DRVER', '255745341109', '$2b$10$i6lflA5a/Oa/wx7GbobFvugqmmIxqfnpxCPOF99JT3.kj.BU9SpJa', 'used', '2024-01-31 11:05:07', '2024-01-31 10:53:45'),
('x95NFfKXto1D_PVER', 'newRegistrationUser', '255743707104', '$2b$10$rrWQ0MKq920I6oQZpD0XOeTlhVEMVMJf0BHg1tdchculChYzL65iy', 'active', '2024-03-01 12:50:30', '2024-03-01 12:32:50'),
('X9wOPgB6SPvD_PVER', 'agXbZ9HWAtlD_DRVER', '255718138165', '$2b$10$5yZ1CcAAk10E9KxE5jF/Kul2hCe2pOejVzG/Mr4fa2312Q.hubX/G', 'used', '2024-03-04 08:20:39', '2024-03-04 08:08:12'),
('XDm0y04BrESe_PVER', 'newRegistrationUser', '255745341109', '$2b$10$6CxXSJ/jAkGqa9piMCKn6eC8EjY1SSnkX601kFmXAtm7/ns9ZTnCy', 'active', '2023-12-14 16:48:08', '2023-12-14 16:37:08'),
('xjNRZ2rVJfAv_PVER', 'newRegistrationUser', '255620248710', '$2b$10$qCTCwtkuDaOGEZG.lhPLG.UZGdlGQ8CQ7wJSdaaSCACLwR6bi9kBW', 'used', '2024-02-25 07:37:37', '2024-02-25 07:25:31'),
('Xn9era97FZav_PVER', 'newRegistrationUser', '255710793283', '$2b$10$cgjxJtaXcT26huYggCTRce2t2wui0.a01Fz6k9rLriF/MnyAvxLH6', 'active', '2024-02-17 10:32:45', '2024-02-17 10:21:45'),
('xtdcIspG3IDA_PVER', 'newRegistrationUser', '255744992387', '$2b$10$fSARFI2YqwEIhxaU64ck.e9TyhNVUiUoih6IObCVbT45hf68vpP0m', 'active', '2024-02-27 10:19:24', '2024-02-27 10:08:24'),
('xtUL9MWhyU8l_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$wYeBgFhBBZRnPHYxroBB0OlvvT6ie/gRl9krwoFK97XDLEEQI1AGO', 'used', '2024-02-01 09:46:41', '2024-02-01 09:24:31'),
('XVmYGBASiM15_PVER', 'newRegistrationUser', '255745341109', '$2b$10$E2f.T5BIgiuYNcwl/triwu3dot13en7Dj.90rNTlFNisYuu/FYyr6', 'active', '2024-01-08 08:54:12', '2024-01-08 08:43:12'),
('XYn9UgsFr9Nm_PVER', 'newRegistrationUser', '255620248710', '$2b$10$4tK6e.9H/EZRlng0m8xhdeEiuq.MJzgZTsnLsssrFmKR4K9ghT/BW', 'active', '2024-02-28 13:34:29', '2024-02-28 13:23:29'),
('YgqaTTEni8BZ_PVER', 'newRegistrationUser', '255655076108', '$2b$10$EojsaJvGrchtRp/VXlWutuVXgUKIf9Tt2i8BDIkIWnqGfXh/zRYl2', 'active', '2024-02-20 14:28:20', '2024-02-20 14:16:17'),
('ykBUIgZoIQq8_PVER', 'newRegistrationUser', '255717125143', '$2b$10$yE1gl92QFWjnBQA/Z6s06eWaLlEwm1UIGcjJjepE4OL1TlEdO1g3O', 'used', '2024-02-28 14:00:08', '2024-02-28 13:46:54'),
('yVGFAeTmWw0d_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$MA1oqQHP97cLn3rJcni4UewE0G31Hi8gp/gPF1BW2Ka5riwFF4ZVq', 'used', '2024-02-01 07:42:18', '2024-02-01 07:31:04'),
('yxnZOhRnBarv_PVER', 'newRegistrationUser', '255655076108', '$2b$10$bHh/NyxwY0ePzpZLTrjotujCMhvlhjIVfBLC82FVKIdOxs53KAE3K', 'active', '2024-02-19 10:11:37', '2024-02-19 09:58:58'),
('yyRf9gvpqKGt_PVER', 'newRegistrationUser', '255688111556', '$2b$10$DyN.4qNCUed6jpO9Pcen2OKT.2TY9Pq/aWcf9vJMP9kD65MQGonom', 'used', '2024-02-26 10:43:20', '2024-02-26 10:28:57'),
('z2n1OhzH5fsD_PVER', 'newRegistrationUser', '255710793283', '$2b$10$HVX.DuK6x4w9W6hEbn.QSOLqmzpudds.aJEaD6gtC2Zw3MNEltOaa', 'active', '2024-02-17 09:36:19', '2024-02-17 09:25:19'),
('zCfsYRkM3xo0_PVER', 'newRegistrationUser', '255746104827', '$2b$10$3S6eSkftuUf5u21wz5R36e5vUM1TqY3.bodp91c83y20qS/evW1YW', 'used', '2024-02-23 13:07:21', '2024-02-23 12:56:03'),
('ZEGTyX5OO6Rq_PVER', 'newRegistrationUser', '255744992387', '$2b$10$IReswFajek5tRnTMTTHHsu.5Nkze7kNVwe5/C0XzMIVRLEEU/Jz0a', 'active', '2024-02-27 10:20:37', '2024-02-27 10:09:37'),
('zhyhYcpIdSXE_PVER', 'newRegistrationUser', '255747578323', '$2b$10$3AEqFmEOnaHqxUjJBh45fu8ltPJapvN99Me0qtQopS6u2Rppi83gq', 'used', '2024-03-03 18:27:56', '2024-03-03 18:15:02'),
('ZmmRgYwS4WQw_PVER', 'newRegistrationUser', '255655076108', '$2b$10$f89AdO4uhRSkXoOnquYoseTKOvu/S623r/HDQgpjPGVoykbF0Ddmq', 'used', '2024-02-20 13:10:13', '2024-02-20 12:58:19'),
('zUGx0pa241SI_PVER', 'TsJIv7i4Hl7S_DRVER', '255620466139', '$2b$10$k4f.hDc5LX6QQm6xswGHtue2k27vFW06CKsY.Qqe.dy1ZTAUWsN/6', 'active', '2024-02-01 09:20:23', '2024-02-01 09:09:23'),
('ZuYHvQhSYkdp_PVER', 'newRegistrationUser', '255789841317', '$2b$10$u9DPRSUB6hn/fol6BrGM0.jpLHq1y6DER0fzRUqH55/k8RdjhGPNK', 'used', '2024-02-23 08:29:32', '2024-02-23 08:18:07'),
('ZwSZfSy69Mv1_PVER', 'newRegistrationUser', '255745341109', '$2b$10$l/x/H1qbDQLxaiqwZyrr8.2tDrUlXjG.W6jK5vol2MxpXwi/O.YlK', 'used', '2024-02-01 05:24:17', '2024-02-01 05:11:57'),
('zzTFJSltcXm4_PVER', 'newRegistrationUser', '255712902927', '$2b$10$rDBYVu/Fc9EE19QcYF2Nve7wfgz9YJdxH/PknsIRSwV9aS5u4T2FW', 'active', '2024-01-18 06:44:07', '2024-01-18 06:33:07'),
('ZzwlFJHfBOGa_PVER', 'newRegistrationUser', '255743854146', '$2b$10$p6yx4aZqmd740C8IC/ik/OuIIgwoE35lLV/TZgvvbhELBuih2TEx.', 'used', '2024-03-02 11:43:39', '2024-03-02 11:32:04');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_types`
--

CREATE TABLE `vehicle_types` (
  `v_type_id` varchar(225) NOT NULL,
  `v_type_name` varchar(100) NOT NULL,
  `weight_kg` int(12) NOT NULL,
  `people_capacity` int(4) NOT NULL,
  `start_cc` int(6) NOT NULL,
  `end_cc` int(6) NOT NULL,
  `v_type_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vehicle_types`
--

INSERT INTO `vehicle_types` (`v_type_id`, `v_type_name`, `weight_kg`, `people_capacity`, `start_cc`, `end_cc`, `v_type_date`) VALUES
('Enix74BcbwHr_VTYPE', 'Motorcycle', 500, 2, 100, 1200, '2023-12-13 19:32:56'),
('ue1A97PdHGcV_VTYPE', 'Tricycle', 1500, 4, 500, 900, '2023-12-13 19:33:50');

-- --------------------------------------------------------

--
-- Table structure for table `verified_phones`
--

CREATE TABLE `verified_phones` (
  `pverid` varchar(225) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `verification_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `verified_phones`
--

INSERT INTO `verified_phones` (`pverid`, `phone`, `status`, `verification_date`) VALUES
('04BTvs8efKbJ_PVER', '255654028685', 'active', '2024-02-23 09:29:33'),
('0xdH7VOIsDyc_PVER', '255745341109', 'active', '2024-02-01 05:13:17'),
('22mTGB0OQjRD_PVER', '255745341109', 'active', '2024-02-01 06:50:49'),
('2EPMsIxSS2QZ_PVER', '255745341109', 'active', '2024-01-08 08:54:20'),
('3db3FMDkHquW_PVER', '255687235897', 'active', '2024-02-22 11:12:28'),
('40dPFhpwhqfR_PVER', '255788047669', 'active', '2024-02-27 08:49:21'),
('49gnJDDFpOLg_PVER', '255620466139', 'active', '2024-01-09 09:18:58'),
('4QZFQcVtrHec_PVER', '255719306599', 'active', '2024-02-20 11:08:53'),
('4VnvsI4kQ8uQ_PVER', '255652441424', 'active', '2024-02-01 11:41:38'),
('4WwnptNLlQIj_PVER', '255745341109', 'active', '2024-02-01 06:44:59'),
('5p3fFfy9xwi4_PVER', '255620466139', 'active', '2024-02-13 13:19:58'),
('6lH6LMTjo0iC_PVER', '255743707104', 'active', '2024-03-01 11:21:16'),
('6qhu8k0BNtXZ_PVER', '255655076108', 'active', '2024-02-20 13:09:01'),
('6RlRQCGpioBd_PVER', '255718138165', 'active', '2024-03-04 05:27:37'),
('6tybDPL3SPYg_PVER', '255683343908', 'active', '2024-02-27 10:20:47'),
('7UaLmskeYcdB_PVER', '255685975114', 'active', '2024-02-22 10:48:09'),
('8aGWbo89UEBT_PVER', '255620466139', 'active', '2024-02-03 10:01:26'),
('8sT2tTVmrfUi_PVER', '255713844444', 'active', '2024-02-01 08:51:59'),
('9Ap0vAVbWKuq_PVER', '255655076108', 'active', '2024-02-20 11:25:52'),
('9xEhyL7DjtHL_PVER', '255745341109', 'active', '2024-01-08 09:11:41'),
('AP8lYIt0AcCj_PVER', '255683343908', 'active', '2024-02-27 10:12:48'),
('Ayv2gCALO6J4_PVER', '255712902927', 'active', '2024-02-21 10:20:52'),
('b58yhx2Rs4fg_PVER', '255620466139', 'active', '2024-02-01 11:47:26'),
('BEodPRZNmR8Y_PVER', '255716272830', 'active', '2024-02-28 13:41:55'),
('BfVX2riKgZIL_PVER', '255746104827', 'active', '2024-02-23 12:56:21'),
('bHVZOnEbW93B_PVER', '255713530261', 'active', '2024-02-07 07:09:16'),
('bMyUjrzbw6J2_PVER', '255746104827', 'active', '2024-02-23 11:37:55'),
('bxBe3KyczlXm_PVER', '255743854146', 'active', '2024-03-02 11:32:39'),
('by2bC6zCPxBA_PVER', '255683342079', 'active', '2024-02-22 10:35:34'),
('bZdKgoLK1Z9p_PVER', '255688111556', 'active', '2024-02-26 10:32:20'),
('C2gPVVaRqpDy_PVER', '255687637671', 'active', '2024-02-20 15:21:55'),
('C48rnAa2Wfgg_PVER', '255745341109', 'active', '2023-12-15 10:08:45'),
('CBKBztChtX5p_PVER', '255745341109', 'active', '2024-01-09 08:09:38'),
('cde2fUHekhyB_PVER', '255745341109', 'active', '2024-01-17 17:12:19'),
('cLXHwNIWkqrf_PVER', '255715158682', 'active', '2024-02-17 11:21:50'),
('CXkoF02Botfa_PVER', '255655076108', 'active', '2024-02-20 11:35:24'),
('CY9uorsfOq0W_PVER', '255674199393', 'active', '2024-02-22 11:07:49'),
('czlADJMHefVL_PVER', '255623864309', 'active', '2024-02-26 10:16:34'),
('dakmxDq2IGkX_PVER', '255620248710', 'active', '2024-02-24 08:27:53'),
('Db3teDaEpIyp_PVER', '255745341109', 'active', '2024-01-31 10:54:07'),
('DXtKSma6Kxwy_PVER', '255718138165', 'active', '2024-03-04 05:26:29'),
('eDZa9iliktNV_PVER', '255658718474', 'active', '2024-02-28 12:17:53'),
('eeqLtUuah4Ks_PVER', '255718050176', 'active', '2024-03-01 09:39:58'),
('Eeyimc9LMrgB_PVER', '255787076924', 'active', '2024-02-24 13:15:47'),
('EGj7ejAJ3uh9_PVER', '255743854146', 'active', '2024-03-02 11:36:02'),
('en08rGHohXro_PVER', '255623864309', 'active', '2024-02-25 12:58:26'),
('EU2FFqAtRrPK_PVER', '255788069795', 'active', '2024-02-23 10:08:22'),
('evKknjZSbK56_PVER', '255686519100', 'active', '2024-02-29 07:28:29'),
('Fg6VDYTl9Cdo_PVER', '255710793283', 'active', '2024-02-17 10:52:27'),
('fPIHMNVL7G9y_PVER', '255717682257', 'active', '2024-02-24 10:14:31'),
('FWKfl6KC7B0X_PVER', '255620466139', 'active', '2023-12-15 12:03:52'),
('g18t65IAds1I_PVER', '255747578323', 'active', '2024-03-02 18:44:27'),
('gcWHy68Nepuf_PVER', '255746446062', 'active', '2024-02-23 11:43:58'),
('gETZvzT4LKdA_PVER', '255693431588', 'active', '2024-02-24 16:20:34'),
('gmx0R72ReY2T_PVER', '255717250998', 'active', '2024-03-02 11:56:37'),
('gtmSZREy8AE7_PVER', '255747578323', 'active', '2024-03-03 18:16:56'),
('gwFYHs5pJ3gA_PVER', '255620248710', 'active', '2024-02-24 08:53:13'),
('gzMJmh5J4DPM_PVER', '255718138165', 'active', '2024-03-04 08:09:39'),
('hawHhQePpw2G_PVER', '255744226667', 'active', '2024-02-28 05:50:44'),
('HGnmcHftwIJp_PVER', '255620248710', 'active', '2024-02-25 07:26:36'),
('HllusebDxnok_PVER', '255764150757', 'active', '2024-02-28 13:33:21'),
('hMyXArlsAx65_PVER', '255685881332', 'active', '2024-02-28 12:42:47'),
('HsBMyqmH6bNf_PVER', '255718138165', 'active', '2024-03-01 11:21:24'),
('HXXQGYg4MUpp_PVER', '255717125143', 'active', '2024-02-28 13:49:08'),
('HYO0gqGtgcLx_PVER', '255684181749', 'active', '2024-02-26 06:33:07'),
('I6JisQmjQP3g_PVER', '255620466139', 'active', '2024-02-01 09:35:41'),
('IPgBMFFoG11i_PVER', '255623864309', 'active', '2024-02-26 10:18:35'),
('iTVwvl6k0gLP_PVER', '255715470853', 'active', '2024-02-07 08:28:45'),
('ivGsLLQTdjki_PVER', '255788047669', 'active', '2024-02-27 08:29:56'),
('JlrP51YILrhc_PVER', '255655076108', 'active', '2024-02-20 12:53:20'),
('jQZXtlOXyqPj_PVER', '255623864309', 'active', '2024-02-23 13:45:13'),
('JvLmMCwiMw5m_PVER', '255620466139', 'active', '2024-02-01 07:31:18'),
('jYDTYUFN2Z1K_PVER', '255762420420', 'active', '2024-02-26 13:45:58'),
('K6Wq2yUQXWN6_PVER', '255718138165', 'active', '2024-03-01 12:28:06'),
('Ky0VNO9qKdQH_PVER', '255764545079', 'active', '2024-01-29 06:05:39'),
('l5sMOnwDWDO6_PVER', '255714930626', 'active', '2024-01-15 08:49:46'),
('lCsIXQOrdaqV_PVER', '255786983163', 'active', '2024-02-26 06:26:34'),
('lpqmFUKEt1CY_PVER', '255745341109', 'active', '2024-02-01 05:31:05'),
('M2xH8BOJo4PR_PVER', '255710793283', 'active', '2024-02-17 10:24:02'),
('mCqsPfPoPLik_PVER', '255746104827', 'active', '2024-02-24 17:08:20'),
('ml5eME2HFr48_PVER', '255710793283', 'active', '2024-02-17 10:29:18'),
('MOouxsq7vzzX_PVER', '255687522566', 'active', '2024-02-22 10:24:12'),
('n0mk4zySUrzt_PVER', '255693431588', 'active', '2024-02-23 09:12:19'),
('nnkmZdSl3lJ2_PVER', '255687637671', 'active', '2024-02-20 15:15:25'),
('NpfsHJT39NY0_PVER', '255764150757', 'active', '2024-02-27 12:17:29'),
('OjDpGTTnTzAW_PVER', '255695449084', 'active', '2024-02-23 09:26:20'),
('ojWsVf8AJSlm_PVER', '255745679777', 'active', '2024-01-30 07:35:00'),
('PcCLCglE6IqB_PVER', '255744226667', 'active', '2024-02-28 05:47:12'),
('PYJrepAyR13D_PVER', '255655076108', 'active', '2024-02-20 12:59:13'),
('PZUixQ8GQmau_PVER', '255787076924', 'active', '2024-02-20 14:24:29'),
('QEu4Ob1casyx_PVER', '255623864309', 'active', '2024-02-26 10:09:45'),
('QuCSE0mPuOy3_PVER', '255655076108', 'active', '2024-02-19 09:36:02'),
('r30Tp0QXydk8_PVER', '255745341109', 'active', '2023-12-14 16:43:34'),
('R5DmoryQKAAh_PVER', '255764150757', 'active', '2024-02-27 12:56:49'),
('RY2YgkNTB3Te_PVER', '255684502989', 'active', '2024-02-22 11:01:18'),
('SGVCK0tSuSER_PVER', '255789841317', 'active', '2024-02-23 08:18:32'),
('Sj1A5odjRPvj_PVER', '255623864309', 'active', '2024-02-25 13:32:29'),
('SmgEITMslUQk_PVER', '255764545079', 'active', '2024-01-29 05:52:14'),
('sPn3UIlpMgaX_PVER', '255710315273', 'active', '2024-02-22 10:41:27'),
('sVzWhil7UAGR_PVER', '255693431588', 'active', '2024-02-24 16:01:10'),
('T0wP4DgioMLC_PVER', '255682760298', 'active', '2024-03-02 11:46:00'),
('tOagvKZJ14iU_PVER', '255620466139', 'active', '2024-01-09 08:57:06'),
('TzOrm6xYzcBI_PVER', '255659644211', 'active', '2024-01-15 08:29:13'),
('tZwjecO41vn6_PVER', '255745341109', 'active', '2024-02-03 09:17:10'),
('u0UYYZoD1LSV_PVER', '255745341109', 'active', '2024-02-03 09:36:42'),
('u5dHCyQhgvuE_PVER', '255692506810', 'active', '2024-03-04 07:01:37'),
('U68l1Tmr4UBu_PVER', '255762420420', 'active', '2024-03-03 20:03:45'),
('Uay3COCpxD8M_PVER', '255693431588', 'active', '2024-02-24 12:55:00'),
('ubsMEC2h4a1p_PVER', '255746297197', 'active', '2024-03-04 14:10:05'),
('UP7QViqxBuuY_PVER', '255693986103', 'active', '2024-02-22 10:56:01'),
('UQEIFejUIx1E_PVER', '255745341109', 'active', '2024-01-30 14:15:24'),
('UvPexSZWgSxi_PVER', '255686853427', 'active', '2024-02-23 09:49:49'),
('v4ZFiNadEzAl_PVER', '255712902927', 'active', '2024-01-18 06:34:32'),
('vCb86VX0PDnk_PVER', '255683343908', 'active', '2024-02-27 10:15:23'),
('veCGvD4vDG6f_PVER', '255687637671', 'active', '2024-02-26 12:12:54'),
('VOp5OtpOVXbv_PVER', '255682140260', 'active', '2024-02-22 10:29:57'),
('vUXRrERwgtRk_PVER', '255655076108', 'active', '2024-02-20 10:45:34'),
('wmwdLPIAm6pr_PVER', '255744226667', 'active', '2024-02-28 05:46:15'),
('WPnK2IEtotZO_PVER', '255693431588', 'active', '2024-02-24 16:14:09'),
('WQqUuhNBTWSb_PVER', '255710793283', 'active', '2024-02-17 09:29:10'),
('XJqreD1ibvA7_PVER', '255718032979', 'active', '2024-01-17 11:54:59'),
('yBS0eCtmEgTQ_PVER', '255687734088', 'active', '2024-03-03 07:57:24'),
('yHKxbPC0hmuW_PVER', '255743854146', 'active', '2024-03-02 11:24:46'),
('YhOWSJDWVjyv_PVER', '255745679777', 'active', '2024-01-30 07:31:57'),
('YMbeL1FDwQMq_PVER', '255745341109', 'active', '2024-01-30 14:11:48'),
('YnfxeoS92I9s_PVER', '255782347663', 'active', '2024-02-27 09:52:22'),
('yrJiLwZdZvti_PVER', '255675601739', 'active', '2024-02-22 10:18:07'),
('YSRBlxaj27j7_PVER', '255712902927', 'active', '2024-02-27 16:48:02'),
('YyboAwN1cnx3_PVER', '255764545079', 'active', '2024-01-29 05:49:18'),
('ZoCbmWz5SZsw_PVER', '255659644211', 'active', '2024-01-16 06:26:08'),
('ZrRPDGp66Mb3_PVER', '255745679777', 'active', '2024-01-30 07:21:38'),
('zVlqWDXVKF6M_PVER', '255655076108', 'active', '2024-02-20 14:31:04'),
('ZvmrWO63KC2a_PVER', '255629841818', 'active', '2024-02-23 09:04:31'),
('ZzVabke9LFqV_PVER', '255694887965', 'active', '2024-02-22 11:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `wards`
--

CREATE TABLE `wards` (
  `ward_id` varchar(225) NOT NULL,
  `ward_name` varchar(200) NOT NULL,
  `ward_code` varchar(10) NOT NULL,
  `district_id` varchar(225) NOT NULL,
  `ward_date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `wards`
--

INSERT INTO `wards` (`ward_id`, `ward_name`, `ward_code`, `district_id`, `ward_date`) VALUES
('06fn6FNMHlkV_WARD', 'GEREZANI', '07', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:03'),
('0hQ411cenZjN_WARD', 'SINZA', '02', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:39'),
('0ua3q0dywl4h_WARD', 'MTONI', '08', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:00'),
('0UfdkU8AoOsD_WARD', 'KIVULE', '26', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:07'),
('2Jgfio8cKrEJ_WARD', 'MAKONGO', '18', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:14'),
('2yQyCepJHbzX_WARD', 'WAZO', '19', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:14'),
('33Vw61Z4s1eM_WARD', 'KIBURUGWA', '19', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:02'),
('38oM4HPIV6St_WARD', 'ZINGIZIWA', '34', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:08'),
('4cOE0cURcZh3_WARD', 'KEKO', '04', 'yNKbOqosTVsm_DIST', '2024-01-06 09:24:59'),
('4EdcEh1WKcbz_WARD', 'CHARAMBE', '15', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:01'),
('4UkZcwUN4KLM_WARD', 'KIBUTA', '04', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:32'),
('55gdONIg7Vyp_WARD', 'KIPUNGUNI', '30', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:08'),
('5hBugaZAZxvm_WARD', 'UPANGA MAGHARIBI', '03', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:02'),
('5SfoeWhpgZx2_WARD', 'MABIBO', '09', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:41'),
('5uwRnTPxh0Lc_WARD', 'TANDALE', '04', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:11'),
('78QZYKaM9Zu0_WARD', 'MSIMBU', '14', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:34'),
('9KpxbWTzAMpp_WARD', 'KIJICHI', '20', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:02'),
('9QLSJZdHIilr_WARD', 'MSASANI', '09', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:12'),
('9VRhZtL5HG2u_WARD', 'MIKOCHENI', '10', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:12'),
('AeYb00oVPWaj_WARD', 'JANGWANI', '08', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:03'),
('b96prvQjUoFj_WARD', 'KIJITONYAMA', '11', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:12'),
('BDxmrdHKQYBy_WARD', 'KWEMBE', '11', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:41'),
('BfxwaM6pRWR6_WARD', 'KIMANGA', '13', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:04'),
('bQgMdIph2bo1_WARD', 'MANEROMANGO', '09', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:33'),
('buCG7iKmDL2M_WARD', 'KIWALANI', '17', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('C55qjDu7fXGF_WARD', 'KURASINI', '09', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:00'),
('c7IVEP4sDd1q_WARD', 'TEMEKE', '01', 'yNKbOqosTVsm_DIST', '2024-01-06 09:24:59'),
('cf8sUuoQregD_WARD', 'MSONGOLA', '23', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:06'),
('cJLTkoB8AMJx_WARD', 'KIGOGO', '12', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('Ck69WqjaH1RN_WARD', 'KAWE', '13', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('coj2zsDLTfFd_WARD', 'MBAGALA KUU', '10', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:00'),
('CQ3bildn6KJm_WARD', 'MBAGALA', '11', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:01'),
('CrkxYa2zEVqW_WARD', 'VINGUNGUTI', '18', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('dpVYrKuXaWdx_WARD', 'MAGOMENI', '01', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:10'),
('drdMwW1bXr9U_WARD', 'KIGAMBONI', '07', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:34'),
('dzC2F31wuqTY_WARD', 'MSANGA', '13', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:34'),
('EJUpuIdukC0R_WARD', 'PUGU STATION', '36', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:09'),
('FGNkpM7Sdoje_WARD', 'MAKANGARAWE', '12', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:01'),
('gF4WHnB5yPVU_WARD', 'MNYAMANI', '27', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:07'),
('gHC7dLhNEVuM_WARD', 'KILUNGULE', '23', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:03'),
('GuVYQnBMFNzx_WARD', 'CHANIKA', '24', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:06'),
('GyWjQY34XE81_WARD', 'MBEZI', '13', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:41'),
('HgII39T7bqyo_WARD', 'BUGURUNI', '11', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:04'),
('hgz1x6U2xudy_WARD', 'UBUNGO', '03', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:39'),
('HHiEgVpjO0Sg_WARD', 'MAFIZI', '08', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:33'),
('HPPefenXrZ82_WARD', 'KUNDUCHI', '14', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('I0froZW7hygC_WARD', 'KIBONDEMAJI', '22', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:03'),
('I35uYsHdYkhC_WARD', 'HANANASIF', '07', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:12'),
('I52MdXPyZ0Vh_WARD', 'TANDIKA', '07', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:00'),
('ijavmxD5Zkod_WARD', 'MABWEPANDE', '20', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:14'),
('ikFO0mhErM56_WARD', 'MAJOHE', '22', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:06'),
('IrCzZKiSN7EJ_WARD', 'KURUI', '07', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:33'),
('IXmhlBh42MLx_WARD', 'KIMARA', '04', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:40'),
('JEtrGDt7HPpx_WARD', 'MAKUMBUSHO', '05', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:11'),
('JforhYHFCfdO_WARD', 'KARIAKOO', '06', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:03'),
('jMYG8WW8oY8B_WARD', 'KISARAWE II', '04', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:34'),
('jTbGE96mREel_WARD', 'TOANGOMA', '16', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:02'),
('JYgEmjuSr5Ct_WARD', 'GONGO LA MBOTO', '19', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('kNlQJGNkKhvv_WARD', 'MSIGANI', '14', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:42'),
('LvyG6Q4PGG8G_WARD', 'CHANG\'OMBE', '03', 'yNKbOqosTVsm_DIST', '2024-01-06 09:24:59'),
('ly8GgxiuQk68_WARD', 'UPANGA MASHARIKI', '02', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:02'),
('m0h5eWDGwQAV_WARD', 'MZINGA', '35', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:09'),
('MaJmtgfeHRYn_WARD', 'NDUGUMBI', '03', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:11'),
('mBAdtrMLo6fg_WARD', 'PUGU', '21', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:06'),
('mibZOvliBJ5v_WARD', 'MJIMWEMA', '06', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:34'),
('msn4cGaM7YPr_WARD', 'MAKUBURI', '06', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:40'),
('MsNlFfiRUp0i_WARD', 'GOBA', '12', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:41'),
('mZcZtk6fxtQT_WARD', 'MIANZINI', '21', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:03'),
('N6cWYnp6aHY1_WARD', 'BUYUNI', '33', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:08'),
('nyyG3RyCZEWE_WARD', 'SANDALI', '02', 'yNKbOqosTVsm_DIST', '2024-01-06 09:24:59'),
('ocuMmB26F0p7_WARD', 'KISUKULU', '31', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:08'),
('OfRgRoceYAJf_WARD', 'BOGA', '01', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:31'),
('oS6tEKpr40fW_WARD', 'KIVUKONI', '01', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:02'),
('otMCeYahA1Ia_WARD', 'BONYOKWA', '29', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:07'),
('Ppl14sm98DUM_WARD', 'KILUVYA', '05', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:32'),
('qI7TlxVE81TI_WARD', 'UKONGA', '16', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('QRIvBEgUVCea_WARD', 'MIBURANI', '05', 'yNKbOqosTVsm_DIST', '2024-01-06 09:24:59'),
('QSoAgD0G26b4_WARD', 'MCHIKICHINI', '09', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:04'),
('rAMBOde7qx8Z_WARD', 'MANZESE', '08', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:40'),
('rAV1uo9GjvpR_WARD', 'KILAKALA', '18', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:02'),
('RHrbeVlqD0lN_WARD', 'MZENGA', '15', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:34'),
('rMAv6b5ykd9k_WARD', 'AZIMIO', '06', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:00'),
('rUjjXEMNqVk8_WARD', 'MBEZI JUU', '17', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('S4ainxy8RsOh_WARD', 'TUNGI', '03', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:33'),
('S5NOMv4Xzghf_WARD', 'MARUMBO', '11', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:33'),
('sjMPGwA4sRtt_WARD', 'KIBAMBA', '10', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:41'),
('SqsevTUnlyfu_WARD', 'TABATA', '12', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:04'),
('srIe98FIiJTn_WARD', 'MZIMUNI', '02', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:11'),
('T7bxfUcNLtVN_WARD', 'VIHINGO', '16', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:34'),
('tSvjsZJwfZXB_WARD', 'LIWITI', '28', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:07'),
('U1NNMyADn13h_WARD', 'BUNJU', '15', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('u2liJcMzNU0z_WARD', 'MWANANYAMALA', '06', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:11'),
('u6wmv26CqDqf_WARD', 'MBURAHATI', '01', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:39'),
('UDJhRcNuCVmc_WARD', 'KINYEREZI', '25', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:07'),
('uIlcPBplO36c_WARD', 'KIMBIJI', '01', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:33'),
('UXw97dEvvWx3_WARD', 'KIPAWA', '15', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('V5HPbAIPFgZn_WARD', 'SARANGA', '05', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:40'),
('vCmH3EhYCzCT_WARD', 'KINONDONI', '08', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:12'),
('vDVfP3RkA5Je_WARD', 'VIJIBWENI', '08', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:34'),
('VI14DMMoNqII_WARD', 'VIKUMBURU', '17', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:35'),
('vJme9b7oCQ4q_WARD', 'YOMBO VITUKA', '13', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:01'),
('vqgHgg4npf25_WARD', 'KISARAWE', '06', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:32'),
('vU293owzIW0U_WARD', 'SOMANGILA', '02', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:33'),
('VVxZgzqrNLpV_WARD', 'KISUTU', '04', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:03'),
('wrRrjZSiExm4_WARD', 'KIBADA', '09', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:35'),
('WvlDcbt9UoEW_WARD', 'SEGEREA', '14', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:05'),
('x4yNoppkxoMj_WARD', 'KITUNDA', '20', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:06'),
('XcuB9e37f29B_WARD', 'MINAZI MIREFU', '32', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:08'),
('XgiaeW2uvaoM_WARD', 'ILALA', '10', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:04'),
('XZANSF8dHIsv_WARD', 'CHOLE ', '02', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:32'),
('y9dGXhauaMBN_WARD', 'PEMBAMNAZI', '05', 'STk6EoXItI5G_DIST', '2024-01-06 09:22:34'),
('Ye7ogXU7ayPa_WARD', 'MASAKI', '12', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:34'),
('yKUhATIHRLuR_WARD', 'MBWENI', '16', 'V3PSWEr8Zn5M_DIST', '2024-01-06 09:23:13'),
('ynkpadrwTSBp_WARD', 'KAZIMZUMBWI', '03', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:32'),
('yVCcGV9zJHWg_WARD', 'MARUI', '10', '8gMbB6pTMwWZ_DIST', '2024-01-06 09:21:33'),
('yWdarDwSBrMU_WARD', 'BUZA', '17', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:02'),
('yz1qC05kMdyd_WARD', 'MAKURUMLA', '07', '2T6gNRUDnCBH_DIST', '2024-01-06 09:20:40'),
('ZErbt5SMQpXI_WARD', 'MCHAFUKOGE', '05', '8IgC20Bwl6Br_DIST', '2024-01-06 09:22:03'),
('zgZzGJPgHmVY_WARD', 'CHAMAZI', '14', 'yNKbOqosTVsm_DIST', '2024-01-06 09:25:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chamas`
--
ALTER TABLE `chamas`
  ADD PRIMARY KEY (`chama_id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`district_id`),
  ADD KEY `region_id` (`region_id`);

--
-- Indexes for table `drivers`
--
ALTER TABLE `drivers`
  ADD PRIMARY KEY (`driver_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `park_area` (`park_area`),
  ADD KEY `chama` (`chama`);

--
-- Indexes for table `driver_logins`
--
ALTER TABLE `driver_logins`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `login_key` (`login_key`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `driver_uniforms`
--
ALTER TABLE `driver_uniforms`
  ADD PRIMARY KEY (`uniform_id`),
  ADD KEY `validator_id` (`validator_id`),
  ADD KEY `driver_id` (`driver_id`);

--
-- Indexes for table `leadership_types`
--
ALTER TABLE `leadership_types`
  ADD PRIMARY KEY (`type_id`),
  ADD UNIQUE KEY `type_name` (`type_name`),
  ADD UNIQUE KEY `type_number` (`type_number`);

--
-- Indexes for table `leaders_permissions`
--
ALTER TABLE `leaders_permissions`
  ADD PRIMARY KEY (`permission_id`);

--
-- Indexes for table `leaders_types_permissions`
--
ALTER TABLE `leaders_types_permissions`
  ADD PRIMARY KEY (`rels_id`),
  ADD KEY `type_id` (`type_id`),
  ADD KEY `permission_id` (`permission_id`);

--
-- Indexes for table `park_areas`
--
ALTER TABLE `park_areas`
  ADD PRIMARY KEY (`park_id`),
  ADD UNIQUE KEY `park_name` (`park_name`),
  ADD KEY `vehicle_type` (`vehicle_type`),
  ADD KEY `ward` (`ward`);

--
-- Indexes for table `park_leaders`
--
ALTER TABLE `park_leaders`
  ADD PRIMARY KEY (`leader_id`),
  ADD KEY `driver_id` (`driver_id`),
  ADD KEY `park_id` (`park_id`),
  ADD KEY `leader_type` (`leader_type`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`region_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Indexes for table `sign_otp`
--
ALTER TABLE `sign_otp`
  ADD PRIMARY KEY (`otp_id`);

--
-- Indexes for table `vehicle_types`
--
ALTER TABLE `vehicle_types`
  ADD PRIMARY KEY (`v_type_id`);

--
-- Indexes for table `verified_phones`
--
ALTER TABLE `verified_phones`
  ADD PRIMARY KEY (`pverid`);

--
-- Indexes for table `wards`
--
ALTER TABLE `wards`
  ADD PRIMARY KEY (`ward_id`),
  ADD KEY `district_id` (`district_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `districts`
--
ALTER TABLE `districts`
  ADD CONSTRAINT `districts_ibfk_1` FOREIGN KEY (`region_id`) REFERENCES `regions` (`region_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `drivers`
--
ALTER TABLE `drivers`
  ADD CONSTRAINT `drivers_ibfk_1` FOREIGN KEY (`park_area`) REFERENCES `park_areas` (`park_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `drivers_ibfk_2` FOREIGN KEY (`chama`) REFERENCES `chamas` (`chama_id`) ON UPDATE CASCADE;

--
-- Constraints for table `driver_logins`
--
ALTER TABLE `driver_logins`
  ADD CONSTRAINT `driver_logins_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `driver_uniforms`
--
ALTER TABLE `driver_uniforms`
  ADD CONSTRAINT `driver_uniforms_ibfk_2` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON UPDATE CASCADE;

--
-- Constraints for table `leaders_types_permissions`
--
ALTER TABLE `leaders_types_permissions`
  ADD CONSTRAINT `leaders_types_permissions_ibfk_1` FOREIGN KEY (`type_id`) REFERENCES `leadership_types` (`type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `leaders_types_permissions_ibfk_2` FOREIGN KEY (`permission_id`) REFERENCES `leaders_permissions` (`permission_id`) ON UPDATE CASCADE;

--
-- Constraints for table `park_areas`
--
ALTER TABLE `park_areas`
  ADD CONSTRAINT `park_areas_ibfk_1` FOREIGN KEY (`vehicle_type`) REFERENCES `vehicle_types` (`v_type_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `park_areas_ibfk_2` FOREIGN KEY (`ward`) REFERENCES `wards` (`ward_id`) ON UPDATE CASCADE;

--
-- Constraints for table `park_leaders`
--
ALTER TABLE `park_leaders`
  ADD CONSTRAINT `park_leaders_ibfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`driver_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `park_leaders_ibfk_2` FOREIGN KEY (`park_id`) REFERENCES `park_areas` (`park_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `park_leaders_ibfk_3` FOREIGN KEY (`leader_type`) REFERENCES `leadership_types` (`type_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `regions`
--
ALTER TABLE `regions`
  ADD CONSTRAINT `regions_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `countries` (`country_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `wards`
--
ALTER TABLE `wards`
  ADD CONSTRAINT `wards_ibfk_1` FOREIGN KEY (`district_id`) REFERENCES `districts` (`district_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
