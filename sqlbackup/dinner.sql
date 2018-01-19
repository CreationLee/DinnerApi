-- phpMyAdmin SQL Dump
-- version phpStudy 2014
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 �?01 �?19 �?09:14
-- 服务器版本: 5.7.17
-- PHP 版本: 5.6.27

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `dinner`
--

-- --------------------------------------------------------

--
-- 表的结构 `admin_menu`
--

CREATE TABLE IF NOT EXISTS `admin_menu` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `order` int(11) NOT NULL DEFAULT '0',
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uri` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `admin_menu`
--

INSERT INTO `admin_menu` (`id`, `parent_id`, `order`, `title`, `icon`, `uri`, `created_at`, `updated_at`) VALUES
(1, 0, 1, 'Index', 'fa-bar-chart', '/', NULL, NULL),
(2, 0, 2, 'Admin', 'fa-tasks', '', NULL, NULL),
(3, 2, 3, 'Users', 'fa-users', 'auth/users', NULL, NULL),
(4, 2, 4, 'Roles', 'fa-user', 'auth/roles', NULL, NULL),
(5, 2, 5, 'Permission', 'fa-ban', 'auth/permissions', NULL, NULL),
(6, 2, 6, 'Menu', 'fa-bars', 'auth/menu', NULL, NULL),
(7, 2, 7, 'Operation log', 'fa-history', 'auth/logs', NULL, NULL),
(8, 2, 0, '餐厅', 'fa-coffee', '/restaurant', '2017-12-22 01:19:54', '2017-12-25 17:19:04'),
(9, 0, 0, '餐厅菜单', 'fa-book', 'carte', '2017-12-25 17:19:39', '2017-12-25 17:19:39'),
(10, 0, 0, '菜单分类', 'fa-paperclip', 'dishcategory', '2017-12-25 17:44:35', '2017-12-25 17:44:35');

-- --------------------------------------------------------

--
-- 表的结构 `admin_operation_log`
--

CREATE TABLE IF NOT EXISTS `admin_operation_log` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `input` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `admin_operation_log_user_id_index` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=330 ;

--
-- 转存表中的数据 `admin_operation_log`
--

INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-21 23:23:20', '2017-12-21 23:23:20'),
(2, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-21 23:24:37', '2017-12-21 23:24:37'),
(3, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-21 23:24:50', '2017-12-21 23:24:50'),
(4, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:03', '2017-12-21 23:25:03'),
(5, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:15', '2017-12-21 23:25:15'),
(6, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:18', '2017-12-21 23:25:18'),
(7, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:20', '2017-12-21 23:25:20'),
(8, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:27', '2017-12-21 23:25:27'),
(9, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-21 23:25:50', '2017-12-21 23:25:50'),
(10, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-21 23:26:44', '2017-12-21 23:26:44'),
(11, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-21 23:27:09', '2017-12-21 23:27:09'),
(12, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-21 23:27:29', '2017-12-21 23:27:29'),
(13, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-21 23:27:40', '2017-12-21 23:27:40'),
(14, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/permissions":null,"_pjax":"#pjax-container"}', '2017-12-21 23:34:15', '2017-12-21 23:34:15'),
(15, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-21 23:34:56', '2017-12-21 23:34:56'),
(16, 1, 'admin/auth/roles/1/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles\\/1\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-21 23:35:02', '2017-12-21 23:35:02'),
(17, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-21 23:35:31', '2017-12-21 23:35:31'),
(18, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null}', '2017-12-22 00:15:57', '2017-12-22 00:15:57'),
(19, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-22 01:03:48', '2017-12-22 01:03:48'),
(20, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null}', '2017-12-22 01:04:45', '2017-12-22 01:04:45'),
(21, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles\\/create":null,"_pjax":"#pjax-container"}', '2017-12-22 01:04:51', '2017-12-22 01:04:51'),
(22, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-22 01:04:56', '2017-12-22 01:04:56'),
(23, 1, 'admin/auth/roles/create', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles\\/create":null,"_pjax":"#pjax-container"}', '2017-12-22 01:05:00', '2017-12-22 01:05:00'),
(24, 1, 'admin/auth/roles', 'POST', '127.0.0.1', '{"slug":"\\u9910\\u5385","name":"\\u9910\\u5385\\u7ba1\\u7406\\u5458","permissions":["2","3","4",null],"_token":"BZQX5sXeYwpnNxKfFRqNhLN2IDf0gmHSVTDL9H0b","_previous_":"http:\\/\\/dinner.me\\/admin\\/auth\\/roles","\\/admin\\/auth\\/roles":null}', '2017-12-22 01:05:46', '2017-12-22 01:05:46'),
(25, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null}', '2017-12-22 01:05:47', '2017-12-22 01:05:47'),
(26, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/permissions":null,"_pjax":"#pjax-container"}', '2017-12-22 01:05:57', '2017-12-22 01:05:57'),
(27, 1, 'admin/auth/permissions/create', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/permissions\\/create":null,"_pjax":"#pjax-container"}', '2017-12-22 01:06:02', '2017-12-22 01:06:02'),
(28, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/permissions":null,"_pjax":"#pjax-container"}', '2017-12-22 01:06:20', '2017-12-22 01:06:20'),
(29, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-22 01:09:03', '2017-12-22 01:09:03'),
(30, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 01:09:16', '2017-12-22 01:09:16'),
(31, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-22 01:09:32', '2017-12-22 01:09:32'),
(32, 1, 'admin/auth/setting', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/setting":null,"_pjax":"#pjax-container"}', '2017-12-22 01:10:04', '2017-12-22 01:10:04'),
(33, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-22 01:10:19', '2017-12-22 01:10:19'),
(34, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"2","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/admin\\/restaurant\\/index","roles":["1",null],"_token":"BZQX5sXeYwpnNxKfFRqNhLN2IDf0gmHSVTDL9H0b","\\/admin\\/auth\\/menu":null}', '2017-12-22 01:19:54', '2017-12-22 01:19:54'),
(35, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 01:19:55', '2017-12-22 01:19:55'),
(36, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 01:20:00', '2017-12-22 01:20:00'),
(37, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-22 01:20:46', '2017-12-22 01:20:46'),
(38, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null}', '2017-12-22 01:59:29', '2017-12-22 01:59:29'),
(39, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-22 01:59:34', '2017-12-22 01:59:34'),
(40, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null}', '2017-12-22 02:03:03', '2017-12-22 02:03:03'),
(41, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null}', '2017-12-22 02:10:40', '2017-12-22 02:10:40'),
(42, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-22 02:13:18', '2017-12-22 02:13:18'),
(43, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-22 02:13:23', '2017-12-22 02:13:23'),
(44, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/restaurant\\/index","roles":["1",null],"_token":"BZQX5sXeYwpnNxKfFRqNhLN2IDf0gmHSVTDL9H0b","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/auth\\/menu","\\/admin\\/auth\\/menu\\/8":null}', '2017-12-22 02:13:30', '2017-12-22 02:13:30'),
(45, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:13:30', '2017-12-22 02:13:30'),
(46, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null}', '2017-12-22 02:13:47', '2017-12-22 02:13:47'),
(47, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null}', '2017-12-22 02:13:49', '2017-12-22 02:13:49'),
(48, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null}', '2017-12-22 02:13:50', '2017-12-22 02:13:50'),
(49, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/restaurant\\/index","roles":["1",null],"_token":"BZQX5sXeYwpnNxKfFRqNhLN2IDf0gmHSVTDL9H0b","_method":"PUT","\\/admin\\/auth\\/menu\\/8":null}', '2017-12-22 02:14:00', '2017-12-22 02:14:00'),
(50, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:14:01', '2017-12-22 02:14:01'),
(51, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:14:16', '2017-12-22 02:14:16'),
(52, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:16:10', '2017-12-22 02:16:10'),
(53, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:17:28', '2017-12-22 02:17:28'),
(54, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:17:29', '2017-12-22 02:17:29'),
(55, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:17:30', '2017-12-22 02:17:30'),
(56, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:17:31', '2017-12-22 02:17:31'),
(57, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:17:38', '2017-12-22 02:17:38'),
(58, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null,"_pjax":"#pjax-container"}', '2017-12-22 02:17:41', '2017-12-22 02:17:41'),
(59, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:17:42', '2017-12-22 02:17:42'),
(60, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:18:43', '2017-12-22 02:18:43'),
(61, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:18:44', '2017-12-22 02:18:44'),
(62, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:18:45', '2017-12-22 02:18:45'),
(63, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:18:45', '2017-12-22 02:18:45'),
(64, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:19:52', '2017-12-22 02:19:52'),
(65, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:20:47', '2017-12-22 02:20:47'),
(66, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:21:17', '2017-12-22 02:21:17'),
(67, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-22 02:22:01', '2017-12-22 02:22:01'),
(68, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-22 02:22:15', '2017-12-22 02:22:15'),
(69, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null,"_pjax":"#pjax-container"}', '2017-12-22 02:22:20', '2017-12-22 02:22:20'),
(70, 1, 'admin/restaurant/index', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/index":null}', '2017-12-22 02:22:20', '2017-12-22 02:22:20'),
(71, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-22 02:22:27', '2017-12-22 02:22:27'),
(72, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-22 02:22:30', '2017-12-22 02:22:30'),
(73, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/restaurant","roles":["1",null],"_token":"BZQX5sXeYwpnNxKfFRqNhLN2IDf0gmHSVTDL9H0b","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/auth\\/menu","\\/admin\\/auth\\/menu\\/8":null}', '2017-12-22 02:22:37', '2017-12-22 02:22:37'),
(74, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:22:37', '2017-12-22 02:22:37'),
(75, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-22 02:22:40', '2017-12-22 02:22:40'),
(76, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-22 02:22:44', '2017-12-22 02:22:44'),
(77, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-24 17:17:35', '2017-12-24 17:17:35'),
(78, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:17:42', '2017-12-24 17:17:42'),
(79, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null,"_pjax":"#pjax-container"}', '2017-12-24 17:18:42', '2017-12-24 17:18:42'),
(80, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:18:46', '2017-12-24 17:18:46'),
(81, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null,"_pjax":"#pjax-container"}', '2017-12-24 17:18:57', '2017-12-24 17:18:57'),
(82, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:19:00', '2017-12-24 17:19:00'),
(83, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null,"_pjax":"#pjax-container"}', '2017-12-24 17:19:11', '2017-12-24 17:19:11'),
(84, 1, 'admin/restaurant', 'POST', '127.0.0.1', '{"name":"\\u4eba\\u8089\\u94fa","announce":"\\u8bd5\\u8bd5","table_num":"2","contact":"\\u963f\\u4e09","phone":"1556532468","category":"\\u6ce8\\u518c","address":"\\u5927\\u660e\\u6e56","_token":"c2VEAk36iX8s9uvaeJKcnJUr292ZC3TIV9d5GBUt","_previous_":"http:\\/\\/dinner.me\\/admin\\/restaurant","\\/admin\\/restaurant":null}', '2017-12-24 17:19:58', '2017-12-24 17:19:58'),
(85, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:19:58', '2017-12-24 17:19:58'),
(86, 1, 'admin/restaurant', 'POST', '127.0.0.1', '{"name":"\\u4eba\\u8089\\u94fa","announce":"\\u8bd5\\u8bd5","table_num":"2","contact":"\\u963f\\u4e09","phone":"1556532468","category":"\\u6ce8\\u518c","address":"\\u5927\\u660e\\u6e56","_token":"c2VEAk36iX8s9uvaeJKcnJUr292ZC3TIV9d5GBUt","\\/admin\\/restaurant":null}', '2017-12-24 17:20:29', '2017-12-24 17:20:29'),
(87, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:20:29', '2017-12-24 17:20:29'),
(88, 1, 'admin/restaurant', 'POST', '127.0.0.1', '{"name":"\\u4eba\\u8089\\u94fa","announce":"\\u8bd5\\u8bd5","table_num":"2","contact":"\\u963f\\u4e09","phone":"1556532468","category":"\\u6ce8\\u518c","address":"\\u5927\\u660e\\u6e56","_token":"c2VEAk36iX8s9uvaeJKcnJUr292ZC3TIV9d5GBUt","\\/admin\\/restaurant":null}', '2017-12-24 17:24:55', '2017-12-24 17:24:55'),
(89, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:24:55', '2017-12-24 17:24:55'),
(90, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:25:12', '2017-12-24 17:25:12'),
(91, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:25:14', '2017-12-24 17:25:14'),
(92, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null,"_pjax":"#pjax-container"}', '2017-12-24 17:25:16', '2017-12-24 17:25:16'),
(93, 1, 'admin/restaurant', 'POST', '127.0.0.1', '{"name":"\\u4e09\\u661f","announce":"\\u98d2\\u98d2","table_num":"1","contact":"\\u963f\\u4e09","phone":"1884895","category":"\\u897f\\u9910","address":"\\u5927\\u524d\\u95e8","_token":"c2VEAk36iX8s9uvaeJKcnJUr292ZC3TIV9d5GBUt","_previous_":"http:\\/\\/dinner.me\\/admin\\/restaurant","\\/admin\\/restaurant":null}', '2017-12-24 17:25:44', '2017-12-24 17:25:44'),
(94, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-24 17:25:44', '2017-12-24 17:25:44'),
(95, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null,"_pjax":"#pjax-container"}', '2017-12-24 17:27:51', '2017-12-24 17:27:51'),
(96, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:35:28', '2017-12-24 17:35:28'),
(97, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:35:50', '2017-12-24 17:35:50'),
(98, 1, 'admin/restaurant/create', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant\\/create":null}', '2017-12-24 17:36:22', '2017-12-24 17:36:22'),
(99, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-24 17:36:25', '2017-12-24 17:36:25'),
(100, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-24 17:46:08', '2017-12-24 17:46:08'),
(101, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-24 17:47:21', '2017-12-24 17:47:21'),
(102, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-24 17:51:38', '2017-12-24 17:51:38'),
(103, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-24 17:51:40', '2017-12-24 17:51:40'),
(104, 1, 'admin/auth/permissions', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/permissions":null,"_pjax":"#pjax-container"}', '2017-12-24 17:51:42', '2017-12-24 17:51:42'),
(105, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-24 17:51:47', '2017-12-24 17:51:47'),
(106, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-24 17:51:55', '2017-12-24 17:51:55'),
(107, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-24 17:52:00', '2017-12-24 17:52:00'),
(108, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-24 17:52:30', '2017-12-24 17:52:30'),
(109, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 17:12:46', '2017-12-25 17:12:46'),
(110, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-25 17:12:52', '2017-12-25 17:12:52'),
(111, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-25 17:13:01', '2017-12-25 17:13:01'),
(112, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-25 17:16:51', '2017-12-25 17:16:51'),
(113, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null}', '2017-12-25 17:17:32', '2017-12-25 17:17:32'),
(114, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-25 17:17:40', '2017-12-25 17:17:40'),
(115, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":null,"icon":"fa-book","uri":"carte","roles":["1","2",null],"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/auth\\/menu":null}', '2017-12-25 17:18:13', '2017-12-25 17:18:13'),
(116, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:18:13', '2017-12-25 17:18:13'),
(117, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:18:15', '2017-12-25 17:18:15'),
(118, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-25 17:18:23', '2017-12-25 17:18:23'),
(119, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"0","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/restaurant","roles":["1",null],"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/auth\\/menu","\\/admin\\/auth\\/menu\\/8":null}', '2017-12-25 17:18:34', '2017-12-25 17:18:34'),
(120, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:18:35', '2017-12-25 17:18:35'),
(121, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:18:36', '2017-12-25 17:18:36'),
(122, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-25 17:18:39', '2017-12-25 17:18:39'),
(123, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-25 17:18:51', '2017-12-25 17:18:51'),
(124, 1, 'admin/auth/menu/8/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu\\/8\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-25 17:18:57', '2017-12-25 17:18:57'),
(125, 1, 'admin/auth/menu/8', 'PUT', '127.0.0.1', '{"parent_id":"2","title":"\\u9910\\u5385","icon":"fa-coffee","uri":"\\/restaurant","roles":["1",null],"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/auth\\/menu","\\/admin\\/auth\\/menu\\/8":null}', '2017-12-25 17:19:04', '2017-12-25 17:19:04'),
(126, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:19:04', '2017-12-25 17:19:04'),
(127, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u9910\\u5385\\u83dc\\u5355","icon":"fa-book","uri":"carte","roles":["1","2",null],"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/auth\\/menu":null}', '2017-12-25 17:19:39', '2017-12-25 17:19:39'),
(128, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:19:40', '2017-12-25 17:19:40'),
(129, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:19:45', '2017-12-25 17:19:45'),
(130, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:32:15', '2017-12-25 17:32:15'),
(131, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 17:32:17', '2017-12-25 17:32:17'),
(132, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-25 17:40:34', '2017-12-25 17:40:34'),
(133, 1, 'admin/auth/menu', 'POST', '127.0.0.1', '{"parent_id":"0","title":"\\u83dc\\u5355\\u5206\\u7c7b","icon":"fa-paperclip","uri":"dishcategory","roles":["1","2",null],"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/auth\\/menu":null}', '2017-12-25 17:44:35', '2017-12-25 17:44:35'),
(134, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:44:35', '2017-12-25 17:44:35'),
(135, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:45:34', '2017-12-25 17:45:34'),
(136, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null}', '2017-12-25 17:52:04', '2017-12-25 17:52:04'),
(137, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 17:52:07', '2017-12-25 17:52:07'),
(138, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:09:02', '2017-12-25 18:09:02'),
(139, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:12:16', '2017-12-25 18:12:16'),
(140, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:20:12', '2017-12-25 18:20:12'),
(141, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:20:28', '2017-12-25 18:20:28'),
(142, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:20:29', '2017-12-25 18:20:29'),
(143, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:20:45', '2017-12-25 18:20:45'),
(144, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:21:22', '2017-12-25 18:21:22'),
(145, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:21:30', '2017-12-25 18:21:30'),
(146, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:21:31', '2017-12-25 18:21:31'),
(147, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:21:32', '2017-12-25 18:21:32'),
(148, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 18:21:35', '2017-12-25 18:21:35'),
(149, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:24:02', '2017-12-25 18:24:02'),
(150, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:24:04', '2017-12-25 18:24:04'),
(151, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:24:05', '2017-12-25 18:24:05'),
(152, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:24:06', '2017-12-25 18:24:06'),
(153, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 18:24:08', '2017-12-25 18:24:08'),
(154, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:28:54', '2017-12-25 18:28:54'),
(155, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:31:34', '2017-12-25 18:31:34'),
(156, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:34:09', '2017-12-25 18:34:09'),
(157, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:34:44', '2017-12-25 18:34:44'),
(158, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:34:52', '2017-12-25 18:34:52'),
(159, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:37:02', '2017-12-25 18:37:02'),
(160, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:37:42', '2017-12-25 18:37:42'),
(161, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:37:57', '2017-12-25 18:37:57'),
(162, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:38:13', '2017-12-25 18:38:13'),
(163, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:38:37', '2017-12-25 18:38:37'),
(164, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":null,"_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/dishcategory":null}', '2017-12-25 18:38:59', '2017-12-25 18:38:59'),
(165, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null}', '2017-12-25 18:38:59', '2017-12-25 18:38:59'),
(166, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u70ed\\u9500","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/dishcategory":null}', '2017-12-25 18:39:24', '2017-12-25 18:39:24'),
(167, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:39:24', '2017-12-25 18:39:24'),
(168, 1, 'admin/dishcategory/1/edit', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/1\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-25 18:39:41', '2017-12-25 18:39:41'),
(169, 1, 'admin/dishcategory/1', 'PUT', '127.0.0.1', '{"name":"\\u70ed\\u5356","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory?%2Fadmin%2Fdishcategory","\\/admin\\/dishcategory\\/1":null}', '2017-12-25 18:40:04', '2017-12-25 18:40:04'),
(170, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:40:04', '2017-12-25 18:40:04'),
(171, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 18:40:07', '2017-12-25 18:40:07'),
(172, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 18:40:10', '2017-12-25 18:40:10'),
(173, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:40:28', '2017-12-25 18:40:28'),
(174, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u70ed\\u9500","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory","\\/admin\\/dishcategory":null}', '2017-12-25 18:40:34', '2017-12-25 18:40:34'),
(175, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:40:35', '2017-12-25 18:40:35'),
(176, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:40:40', '2017-12-25 18:40:40'),
(177, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u51c9\\u83dc","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory","\\/admin\\/dishcategory":null}', '2017-12-25 18:41:00', '2017-12-25 18:41:00'),
(178, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:41:00', '2017-12-25 18:41:00'),
(179, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:41:02', '2017-12-25 18:41:02'),
(180, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u6d77\\u9c9c","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory","\\/admin\\/dishcategory":null}', '2017-12-25 18:41:07', '2017-12-25 18:41:07'),
(181, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:41:07', '2017-12-25 18:41:07'),
(182, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:41:19', '2017-12-25 18:41:19'),
(183, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u70ed\\u83dc","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory","\\/admin\\/dishcategory":null}', '2017-12-25 18:41:25', '2017-12-25 18:41:25'),
(184, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:41:25', '2017-12-25 18:41:25'),
(185, 1, 'admin/dishcategory/create', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory\\/create":null,"_pjax":"#pjax-container"}', '2017-12-25 18:41:27', '2017-12-25 18:41:27'),
(186, 1, 'admin/dishcategory', 'POST', '127.0.0.1', '{"name":"\\u4f18\\u9009","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/dishcategory","\\/admin\\/dishcategory":null}', '2017-12-25 18:41:32', '2017-12-25 18:41:32'),
(187, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null}', '2017-12-25 18:41:33', '2017-12-25 18:41:33'),
(188, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 18:41:40', '2017-12-25 18:41:40'),
(189, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:11:54', '2017-12-25 19:11:54'),
(190, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:12:22', '2017-12-25 19:12:22'),
(191, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:12:44', '2017-12-25 19:12:44'),
(192, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:13:25', '2017-12-25 19:13:25'),
(193, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:15:26', '2017-12-25 19:15:26'),
(194, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:15:27', '2017-12-25 19:15:27'),
(195, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:15:28', '2017-12-25 19:15:28'),
(196, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:15:53', '2017-12-25 19:15:53'),
(197, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:15:55', '2017-12-25 19:15:55'),
(198, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:16:15', '2017-12-25 19:16:15'),
(199, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:16:15', '2017-12-25 19:16:15'),
(200, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:16:22', '2017-12-25 19:16:22'),
(201, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:16:42', '2017-12-25 19:16:42'),
(202, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:17:35', '2017-12-25 19:17:35'),
(203, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:17:47', '2017-12-25 19:17:47'),
(204, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:17:59', '2017-12-25 19:17:59'),
(205, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:01', '2017-12-25 19:18:01'),
(206, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:02', '2017-12-25 19:18:02'),
(207, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:03', '2017-12-25 19:18:03'),
(208, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:49', '2017-12-25 19:18:49'),
(209, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:51', '2017-12-25 19:18:51'),
(210, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:52', '2017-12-25 19:18:52'),
(211, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:18:53', '2017-12-25 19:18:53'),
(212, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:22:37', '2017-12-25 19:22:37'),
(213, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:23:33', '2017-12-25 19:23:33'),
(214, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:23:42', '2017-12-25 19:23:42'),
(215, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:24:12', '2017-12-25 19:24:12'),
(216, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:29:38', '2017-12-25 19:29:38'),
(217, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:29:47', '2017-12-25 19:29:47'),
(218, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:33:59', '2017-12-25 19:33:59'),
(219, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 19:34:22', '2017-12-25 19:34:22'),
(220, 1, 'admin/auth/login', 'GET', '127.0.0.1', '[]', '2017-12-25 19:48:27', '2017-12-25 19:48:27'),
(221, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 19:48:32', '2017-12-25 19:48:32'),
(222, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 19:48:55', '2017-12-25 19:48:55'),
(223, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 19:49:00', '2017-12-25 19:49:00'),
(224, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 19:49:44', '2017-12-25 19:49:44'),
(225, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 19:49:45', '2017-12-25 19:49:45'),
(226, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 21:03:45', '2017-12-25 21:03:45'),
(227, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:04:01', '2017-12-25 21:04:01'),
(228, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 21:04:03', '2017-12-25 21:04:03'),
(229, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 21:20:07', '2017-12-25 21:20:07'),
(230, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 21:20:10', '2017-12-25 21:20:10'),
(231, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:20:12', '2017-12-25 21:20:12'),
(232, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:20:51', '2017-12-25 21:20:51'),
(233, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:22:47', '2017-12-25 21:22:47'),
(234, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:23:07', '2017-12-25 21:23:07'),
(235, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:28:26', '2017-12-25 21:28:26'),
(236, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:28:59', '2017-12-25 21:28:59'),
(237, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:30:40', '2017-12-25 21:30:40'),
(238, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:30:59', '2017-12-25 21:30:59'),
(239, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:31:08', '2017-12-25 21:31:08'),
(240, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-25 21:31:16', '2017-12-25 21:31:16'),
(241, 1, 'admin/auth/menu', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/menu":null,"_pjax":"#pjax-container"}', '2017-12-25 21:31:19', '2017-12-25 21:31:19'),
(242, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:31:45', '2017-12-25 21:31:45'),
(243, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:35:36', '2017-12-25 21:35:36'),
(244, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:36:11', '2017-12-25 21:36:11'),
(245, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 21:39:57', '2017-12-25 21:39:57'),
(246, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 21:42:58', '2017-12-25 21:42:58'),
(247, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:43:01', '2017-12-25 21:43:01'),
(248, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 21:56:00', '2017-12-25 21:56:00'),
(249, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:56:05', '2017-12-25 21:56:05'),
(250, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 21:56:05', '2017-12-25 21:56:05'),
(251, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:56:25', '2017-12-25 21:56:25'),
(252, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 21:56:26', '2017-12-25 21:56:26'),
(253, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:56:40', '2017-12-25 21:56:40'),
(254, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 21:56:41', '2017-12-25 21:56:41'),
(255, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 21:56:43', '2017-12-25 21:56:43'),
(256, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 21:58:28', '2017-12-25 21:58:28'),
(257, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:00:05', '2017-12-25 22:00:05'),
(258, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:00:10', '2017-12-25 22:00:10'),
(259, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:00:30', '2017-12-25 22:00:30'),
(260, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 22:00:50', '2017-12-25 22:00:50'),
(261, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:00:52', '2017-12-25 22:00:52'),
(262, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:01:03', '2017-12-25 22:01:03'),
(263, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":null,"name":null,"price":"0","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/admin\\/carte","\\/admin\\/carte":null}', '2017-12-25 22:01:07', '2017-12-25 22:01:07'),
(264, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:01:07', '2017-12-25 22:01:07'),
(265, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"2","name":"\\u5927\\u95f8\\u87f9","price":"15.5","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/carte":null}', '2017-12-25 22:02:37', '2017-12-25 22:02:37'),
(266, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:02:37', '2017-12-25 22:02:37'),
(267, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"2","name":"\\u5927\\u95f8\\u87f9","price":"15.5","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/carte":null}', '2017-12-25 22:03:10', '2017-12-25 22:03:10'),
(268, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:03:10', '2017-12-25 22:03:10'),
(269, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"2","name":"\\u5927\\u95f8\\u87f9","price":"15.5","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/carte":null}', '2017-12-25 22:03:32', '2017-12-25 22:03:32'),
(270, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:03:33', '2017-12-25 22:03:33'),
(271, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"2","name":"\\u6d77\\u9c9c\\u62fc\\u76d8","price":"360","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","\\/admin\\/carte":null}', '2017-12-25 22:07:06', '2017-12-25 22:07:06'),
(272, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:07:06', '2017-12-25 22:07:06'),
(273, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"1","name":"\\u8d1d\\u58f3","price":"440","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/carte?%2Fadmin%2Fcarte","\\/admin\\/carte":null}', '2017-12-25 22:07:25', '2017-12-25 22:07:25'),
(274, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:07:25', '2017-12-25 22:07:25'),
(275, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"1","name":"\\u9f99\\u867e","price":"120","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin\\/carte?%2Fadmin%2Fcarte","\\/admin\\/carte":null}', '2017-12-25 22:07:56', '2017-12-25 22:07:56'),
(276, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:07:56', '2017-12-25 22:07:56'),
(277, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:09:15', '2017-12-25 22:09:15'),
(278, 1, 'admin/carte', 'POST', '127.0.0.1', '{"dish_catgory_id":"1","name":"\\u751f\\u9c7c\\u7247","price":"1524","is_recommend":"0","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_previous_":"http:\\/\\/dinner.me\\/admin?%2Fadmin","\\/admin\\/carte":null}', '2017-12-25 22:09:47', '2017-12-25 22:09:47'),
(279, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 22:09:47', '2017-12-25 22:09:47'),
(280, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:09:52', '2017-12-25 22:09:52'),
(281, 1, 'admin', 'GET', '127.0.0.1', '[]', '2017-12-25 22:16:15', '2017-12-25 22:16:15'),
(282, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:16:30', '2017-12-25 22:16:30'),
(283, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:30:23', '2017-12-25 22:30:23'),
(284, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:32:34', '2017-12-25 22:32:34'),
(285, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:32:54', '2017-12-25 22:32:54'),
(286, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:34:43', '2017-12-25 22:34:43'),
(287, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:37:09', '2017-12-25 22:37:09'),
(288, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:40:50', '2017-12-25 22:40:50'),
(289, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:41:11', '2017-12-25 22:41:11'),
(290, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:41:42', '2017-12-25 22:41:42'),
(291, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:42:00', '2017-12-25 22:42:00'),
(292, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:43:07', '2017-12-25 22:43:07'),
(293, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:43:09', '2017-12-25 22:43:09'),
(294, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:43:15', '2017-12-25 22:43:15'),
(295, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:43:23', '2017-12-25 22:43:23'),
(296, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:43:43', '2017-12-25 22:43:43'),
(297, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:44:18', '2017-12-25 22:44:18'),
(298, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:45:24', '2017-12-25 22:45:24'),
(299, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:46:17', '2017-12-25 22:46:17'),
(300, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:46:43', '2017-12-25 22:46:43'),
(301, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:46:49', '2017-12-25 22:46:49'),
(302, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:47:10', '2017-12-25 22:47:10'),
(303, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 22:51:21', '2017-12-25 22:51:21'),
(304, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 22:51:23', '2017-12-25 22:51:23'),
(305, 1, 'admin/carte/3/edit', 'GET', '127.0.0.1', '{"\\/admin\\/carte\\/3\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-25 22:52:02', '2017-12-25 22:52:02'),
(306, 1, 'admin/carte/3/edit', 'GET', '127.0.0.1', '{"\\/admin\\/carte\\/3\\/edit":null}', '2017-12-25 22:52:32', '2017-12-25 22:52:32'),
(307, 1, 'admin/carte/3', 'PUT', '127.0.0.1', '{"dish_catgory_id":"1","name":"\\u8d1d\\u58f3\\u7c7b","price":"440.00","_token":"O5zvNuZuGhTvoIvvTPYvIsv1d6y3xnoHU4bJOCJO","_method":"PUT","_previous_":"http:\\/\\/dinner.me\\/admin\\/carte?%2Fadmin%2Fcarte","\\/admin\\/carte\\/3":null}', '2017-12-25 22:53:26', '2017-12-25 22:53:26'),
(308, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 22:53:27', '2017-12-25 22:53:27'),
(309, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null}', '2017-12-25 23:01:07', '2017-12-25 23:01:07'),
(310, 1, 'admin/auth/users', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users":null,"_pjax":"#pjax-container"}', '2017-12-25 23:04:52', '2017-12-25 23:04:52'),
(311, 1, 'admin/auth/users/2/edit', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/users\\/2\\/edit":null,"_pjax":"#pjax-container"}', '2017-12-25 23:04:59', '2017-12-25 23:04:59'),
(312, 1, 'admin/auth/roles', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/roles":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:11', '2017-12-25 23:05:11'),
(313, 1, 'admin/auth/logout', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/logout":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:22', '2017-12-25 23:05:22'),
(314, 2, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 23:05:27', '2017-12-25 23:05:27'),
(315, 2, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:32', '2017-12-25 23:05:32'),
(316, 2, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:34', '2017-12-25 23:05:34'),
(317, 2, 'admin', 'GET', '127.0.0.1', '{"\\/admin\\/":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:43', '2017-12-25 23:05:43'),
(318, 2, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:45', '2017-12-25 23:05:45'),
(319, 2, 'admin/auth/logout', 'GET', '127.0.0.1', '{"\\/admin\\/auth\\/logout":null,"_pjax":"#pjax-container"}', '2017-12-25 23:05:59', '2017-12-25 23:05:59'),
(320, 1, 'admin', 'GET', '127.0.0.1', '{"\\/admin":null}', '2017-12-25 23:06:07', '2017-12-25 23:06:07'),
(321, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 23:06:27', '2017-12-25 23:06:27'),
(322, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"\\/admin\\/dishcategory":null,"_pjax":"#pjax-container"}', '2017-12-25 23:06:28', '2017-12-25 23:06:28'),
(323, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 23:06:32', '2017-12-25 23:06:32'),
(324, 1, 'admin/restaurant', 'GET', '127.0.0.1', '{"\\/admin\\/restaurant":null,"_pjax":"#pjax-container"}', '2017-12-25 23:06:34', '2017-12-25 23:06:34'),
(325, 1, 'admin/carte', 'GET', '127.0.0.1', '{"\\/admin\\/carte":null,"_pjax":"#pjax-container"}', '2017-12-25 23:06:41', '2017-12-25 23:06:41'),
(326, 1, 'admin', 'GET', '127.0.0.1', '[]', '2018-01-04 23:39:38', '2018-01-04 23:39:38'),
(327, 1, 'admin/carte', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-01-04 23:39:45', '2018-01-04 23:39:45'),
(328, 1, 'admin/dishcategory', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-01-04 23:39:49', '2018-01-04 23:39:49');
INSERT INTO `admin_operation_log` (`id`, `user_id`, `path`, `method`, `ip`, `input`, `created_at`, `updated_at`) VALUES
(329, 1, 'admin/carte', 'GET', '127.0.0.1', '{"_pjax":"#pjax-container"}', '2018-01-04 23:39:50', '2018-01-04 23:39:50');

-- --------------------------------------------------------

--
-- 表的结构 `admin_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_permissions` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `http_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `http_path` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_permissions_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `admin_permissions`
--

INSERT INTO `admin_permissions` (`id`, `name`, `slug`, `http_method`, `http_path`, `created_at`, `updated_at`) VALUES
(1, 'All permission', '*', '', '*', NULL, NULL),
(2, 'Dashboard', 'dashboard', 'GET', '/', NULL, NULL),
(3, 'Login', 'auth.login', '', '/auth/login\r\n/auth/logout', NULL, NULL),
(4, 'User setting', 'auth.setting', 'GET,PUT', '/auth/setting', NULL, NULL),
(5, 'Auth management', 'auth.management', '', '/auth/roles\r\n/auth/permissions\r\n/auth/menu\r\n/auth/logs', NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_roles`
--

CREATE TABLE IF NOT EXISTS `admin_roles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_roles_name_unique` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'administrator', '2017-12-21 22:19:42', '2017-12-21 22:19:42'),
(2, '餐厅管理员', '餐厅', '2017-12-22 01:05:47', '2017-12-22 01:05:47');

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_menu`
--

CREATE TABLE IF NOT EXISTS `admin_role_menu` (
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_menu_role_id_menu_id_index` (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_menu`
--

INSERT INTO `admin_role_menu` (`role_id`, `menu_id`, `created_at`, `updated_at`) VALUES
(1, 2, NULL, NULL),
(1, 8, NULL, NULL),
(1, 9, NULL, NULL),
(2, 9, NULL, NULL),
(1, 10, NULL, NULL),
(2, 10, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_role_permissions` (
  `role_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_permissions_role_id_permission_id_index` (`role_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_permissions`
--

INSERT INTO `admin_role_permissions` (`role_id`, `permission_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 3, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_role_users`
--

CREATE TABLE IF NOT EXISTS `admin_role_users` (
  `role_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_role_users_role_id_user_id_index` (`role_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- 转存表中的数据 `admin_role_users`
--

INSERT INTO `admin_role_users` (`role_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, NULL, NULL),
(2, 2, NULL, NULL),
(2, 4, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `admin_users`
--

CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(190) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_users_username_unique` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `name`, `avatar`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$zwDqaB/nHFZ63nMTTWz.g.Rdq2XNNEskExZh45tCUZTCHbnuPpkjK', 'Administrator', NULL, 'WJRD3Rgd9BFI4KIGpak5OhD9gN9gv66GPEoyAZCkLqDq8iCG1G1LM6XUSVxk', '2017-12-21 22:19:42', '2017-12-21 22:19:42'),
(2, '1556532468', '$2y$10$DJQe1POZO8ooWcwip8mo4.xrRm6mqsBvDjkHfQIL5fD2LHOio9IA.', '人肉铺', NULL, 'dbeWt1o5kyQZ6sqndJQftXd3TbuZ4iR6KVAQ3g4n8BL2fddSVl46MuqKc0TN', '2017-12-24 17:20:29', '2017-12-24 17:20:29'),
(4, '1884895', '$2y$10$wJzJxDDRxF1JXqJOFL3o1ermPf.yVLxCRXpkU9bAVuZISglDGT.mC', '三星', NULL, NULL, '2017-12-24 17:25:44', '2017-12-24 17:25:44');

-- --------------------------------------------------------

--
-- 表的结构 `admin_user_permissions`
--

CREATE TABLE IF NOT EXISTS `admin_user_permissions` (
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  KEY `admin_user_permissions_user_id_permission_id_index` (`user_id`,`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uniqueid` varchar(255) NOT NULL COMMENT '微信的主键id',
  `info` varchar(255) DEFAULT NULL COMMENT '各种信息',
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `dishes`
--

CREATE TABLE IF NOT EXISTS `dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dish_catgory_id` int(11) NOT NULL COMMENT '菜单分类id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `photo` varchar(255) DEFAULT NULL COMMENT '菜的图片',
  `price` decimal(10,2) NOT NULL COMMENT '价格',
  `is_recommend` int(2) unsigned zerofill NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `dishes`
--

INSERT INTO `dishes` (`id`, `dish_catgory_id`, `name`, `photo`, `price`, `is_recommend`, `created_at`, `updated_at`) VALUES
(1, 2, '大闸蟹', 'image/b7d49275e49b942269b9464db344f5ce.jpg', '15.50', 00, '2017-12-26 06:03:33', '2017-12-26 06:03:33'),
(2, 2, '海鲜拼盘', 'image/3bb37c3fd6882a52483b3db65d515270.jpg', '360.00', 00, '2017-12-26 06:07:06', '2017-12-26 06:07:06'),
(3, 1, '贝壳类', 'image/6f735e5233524921d3c64af12a2306fc.jpg', '440.00', 00, '2017-12-26 06:07:25', '2017-12-26 06:53:27'),
(4, 1, '龙虾', 'image/17b81538392bdcb71dac30521961f024.jpg', '120.00', 00, '2017-12-26 06:07:56', '2017-12-26 06:07:56'),
(5, 1, '生鱼片', 'image/809a940d1ec26ea7b2b676d93312c203.jpg', '1524.00', 00, '2017-12-26 06:09:47', '2017-12-26 06:09:47');

-- --------------------------------------------------------

--
-- 表的结构 `dish_categories`
--

CREATE TABLE IF NOT EXISTS `dish_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) DEFAULT NULL COMMENT '餐厅id',
  `name` varchar(255) NOT NULL COMMENT '名称',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- 转存表中的数据 `dish_categories`
--

INSERT INTO `dish_categories` (`id`, `restaurant_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 1, '热卖', '2017-12-26 02:39:24', '2017-12-26 02:40:04'),
(2, 1, '热销', '2017-12-26 02:40:34', '2017-12-26 02:40:34'),
(3, 1, '凉菜', '2017-12-26 02:41:00', '2017-12-26 02:41:00'),
(4, 1, '海鲜', '2017-12-26 02:41:07', '2017-12-26 02:41:07'),
(5, 1, '热菜', '2017-12-26 02:41:25', '2017-12-26 02:41:25'),
(6, 1, '优选', '2017-12-26 02:41:32', '2017-12-26 02:41:32');

-- --------------------------------------------------------

--
-- 表的结构 `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_04_173148_create_admin_tables', 1);

-- --------------------------------------------------------

--
-- 表的结构 `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL COMMENT '顾客id',
  `order_status` int(2) unsigned zerofill NOT NULL DEFAULT '00' COMMENT '订单状态0：未支付 1：已支付',
  `type` int(2) unsigned zerofill NOT NULL COMMENT '0：堂食1：外带',
  `table_id` int(11) DEFAULT NULL COMMENT '几号桌',
  `customer_number` int(11) DEFAULT NULL COMMENT '几个人（可选）',
  `pay_type` int(2) unsigned zerofill NOT NULL COMMENT '0：微信 1：线下（尚前不用)',
  `cost` decimal(10,2) NOT NULL COMMENT '价格',
  `paid` int(11) unsigned zerofill NOT NULL COMMENT '实际支付',
  `create_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `order_dishes`
--

CREATE TABLE IF NOT EXISTS `order_dishes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL COMMENT '订单id',
  `dish_id` int(11) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- 表的结构 `restaurants`
--

CREATE TABLE IF NOT EXISTS `restaurants` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0' COMMENT '关联后台管理员',
  `name` varchar(100) CHARACTER SET utf8 NOT NULL COMMENT '名称',
  `logo` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT 'logo',
  `bg_pic` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '背景图',
  `announce` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `is_delete` int(2) NOT NULL DEFAULT '0' COMMENT '软删除',
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `table_num` int(11) DEFAULT NULL COMMENT '桌子数量',
  `contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `category` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '餐厅分类',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '餐厅 地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `restaurants`
--

INSERT INTO `restaurants` (`id`, `user_id`, `name`, `logo`, `bg_pic`, `announce`, `is_delete`, `created_at`, `updated_at`, `table_num`, `contact`, `phone`, `category`, `address`) VALUES
(1, 1, '三星', 'image/33921b753e355067924a3275ad69169b.jpg', NULL, '飒飒', 0, '2017-12-25 01:25:44', '2017-12-25 01:25:44', 1, '阿三', '1884895', '西餐', '大前门');

-- --------------------------------------------------------

--
-- 表的结构 `restaurant_info`
--

CREATE TABLE IF NOT EXISTS `restaurant_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `restaurant_id` int(11) NOT NULL COMMENT '关联餐厅id',
  `table_num` int(11) DEFAULT NULL COMMENT '桌子数量',
  `contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系人',
  `phone` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '联系电话',
  `category` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '餐厅分类',
  `address` varchar(255) CHARACTER SET utf8 DEFAULT NULL COMMENT '餐厅 地址',
  `create_at` datetime DEFAULT NULL,
  `update_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
