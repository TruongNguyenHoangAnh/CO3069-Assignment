SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;


CREATE TABLE IF NOT EXISTS `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

INSERT INTO `group` (`id`, `name`, `description`, `createdAt`, `updatedAt`) VALUES
(1, 'Dev', 'developer', '2022-01-16 09:35:34', '2022-01-16 09:35:34'),
(2, 'Leader', 'Leader bla bla', '2022-01-29 09:41:04', '2022-01-29 09:41:04'),
(3, 'Customer', 'Our customer', '2022-01-29 09:41:04', '2022-01-29 09:41:04'),
(4, 'Guest', 'view only', '2022-02-01 07:53:19', '2022-02-01 07:53:19');

CREATE TABLE IF NOT EXISTS `group_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `groupId` int(11) DEFAULT NULL,
  `roleId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=utf8mb4;

INSERT INTO `group_role` (`id`, `groupId`, `roleId`, `createdAt`, `updatedAt`) VALUES
(58, 1, 39, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(59, 1, 38, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(60, 1, 37, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(61, 1, 36, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(62, 1, 35, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(63, 1, 34, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(64, 1, 33, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(65, 1, 32, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(66, 1, 31, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(67, 1, 30, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(68, 1, 29, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(69, 1, 28, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(70, 1, 27, '2022-02-06 08:21:59', '2022-02-06 08:21:59'),
(71, 3, 27, '2022-02-06 08:26:33', '2022-02-06 08:26:33'),
(72, 4, 38, '2022-02-06 13:02:42', '2022-02-06 13:02:42'),
(73, 4, 37, '2022-02-06 13:02:42', '2022-02-06 13:02:42'),
(74, 4, 36, '2022-02-06 13:02:42', '2022-02-06 13:02:42'),
(75, 4, 35, '2022-02-06 13:02:42', '2022-02-06 13:02:42'),
(76, 4, 34, '2022-02-06 13:02:42', '2022-02-06 13:02:42'),
(77, 4, 27, '2022-02-06 13:02:42', '2022-02-06 13:02:42');

CREATE TABLE IF NOT EXISTS `project` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `startDate` varchar(255) DEFAULT NULL,
  `customerId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `project_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `projectId` int(11) DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE IF NOT EXISTS `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=utf8mb4;

INSERT INTO `role` (`id`, `url`, `description`, `createdAt`, `updatedAt`) VALUES
(27, '/user/read', 'Show list users', '2022-01-16 09:36:24', '2022-01-16 09:36:24'),
(28, '/user/update', 'Update a user', '2022-01-16 09:36:24', '2022-01-16 09:36:24'),
(29, '/user/delete', 'Delete a user', '2022-01-16 09:36:24', '2022-01-16 09:36:24'),
(30, '/group/update', 'Update a group', '2022-02-02 02:45:29', '2022-02-02 02:45:29'),
(31, '/group/delete', 'Delete a group', '2022-02-02 02:45:29', '2022-02-02 02:45:29'),
(32, '/group/create', 'Create a group', '2022-02-02 02:45:29', '2022-02-02 02:45:29'),
(33, '/user/create', 'Create a user', '2022-01-16 09:36:24', '2022-01-16 09:36:24'),
(34, '/group/read', 'Show list groups', '2022-02-02 02:45:29', '2022-02-02 02:45:29'),
(35, '/role/create', 'Create a role', '2022-02-03 10:13:43', '2022-02-03 10:13:43'),
(36, '/role/read', 'Display list roles', '2022-02-03 11:05:21', '2022-02-03 11:05:21'),
(37, '/role/delete', 'Delete a role', '2022-02-03 11:07:18', '2022-02-03 11:07:18'),
(38, '/role/by-group', 'Get list roles by a group', '2022-02-03 14:47:16', '2022-02-03 14:47:16'),
(39, '/role/assign-to-group', 'Assign roles to a group', '2022-02-04 01:23:31', '2022-02-04 01:23:31'),
(44, 'sdf', 'asdfasdf', '2022-02-06 13:04:23', '2022-02-06 13:04:23');

CREATE TABLE IF NOT EXISTS `sequelizemeta` (
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `sequelizemeta` (`name`) VALUES
('20220114021534-create-user.js'),
('migrate-group-role.js'),
('migrate-group.js'),
('migrate-project-user.js'),
('migrate-project.js'),
('migrate-role.js');

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4;

INSERT INTO `user` (`id`, `email`, `password`, `username`, `address`, `sex`, `phone`, `groupId`, `createdAt`, `updatedAt`) VALUES
(18, 'test2@gmail.com', 'asdfasf', 'asdfasfd', 'asfdasdf', 'afdasfd', NULL, NULL, '2022-01-29 09:13:35', '2022-01-29 09:13:35'),
(19, 'test3@gmail.com', 'asdfasfd', 'asfasf', 'asfasfd', 'asfasf', 'asdfasfaf', NULL, '2022-01-29 09:14:18', '2022-01-29 09:14:18'),
(20, 'test4@gmail.com', 'asfasf', 'asfasf', 'asfasf', 'asfasf', 'asfasf', NULL, '2022-01-29 09:14:18', '2022-01-29 09:14:18'),
(21, 'testCreate@gmail.com', 'asdfasf', 'asdfasf', 'asfasf', '', '125545555', NULL, '2022-01-29 10:06:42', '2022-01-29 10:06:42'),
(22, 'abc@gmail.com', 'asdfasf', 'asdfasf', 'asfasf', '', '125545555', 3, '2022-01-29 10:08:30', '2022-01-29 10:08:30'),
(23, 'asdfasf@gmail.com', 'asdfaf', 'asdfasd', 'asdfasdf', '', 'asdfasf', 3, '2022-01-29 10:19:11', '2022-01-29 10:19:11'),
(24, 'testBug@gmail.com', 'asdfaf', 'asdf', 'asdfasf', '', 'asdf', 3, '2022-01-29 10:21:07', '2022-01-29 10:21:07'),
(25, 'testbug2@gmail.com', 'asdfasfaf', '', '', 'Other', 'asfasf', 2, '2022-01-29 10:22:02', '2022-01-29 10:22:02'),
(26, 'bug3@hmai.com', 'asdfaf', 'adsf', 'asdfaf', '', 'asdfaf', 4, '2022-01-29 10:23:17', '2022-01-29 10:23:17'),
(27, 'asdfasdf@gmail.com', 'asdfasf', '', '', '', 'asdfasdf', 3, '2022-01-29 10:23:33', '2022-01-29 10:23:33'),
(28, 'a@gmail.com', '$2a$10$QADGQaLvBP/zp8PnF8hHqOkUGlLX5daMVPY2oNwJ3vmbr.RWpXTim', 'hoi dan it', NULL, NULL, '12233333', NULL, '2022-01-30 00:46:35', '2022-01-30 00:46:35'),
(29, 'b@gmail.com', '$2a$10$Z.d0qv6uJ/kiHNHl4gMt4ex4.YbyXpET5yF2/HzIZmZyRXKoWTV9G', 'asdfa', '', '', 'asfasfd', 2, '2022-01-30 01:14:22', '2022-01-30 01:14:22'),
(30, 'c@gmail.com', '$2a$10$yfEb1nQyHCPnFWC1pou68eP45.SgHcXgwVAKJ84iHING3Caj/6Z.m', 'asdfaf', NULL, NULL, 'asdffa', 3, '2022-01-30 02:00:31', '2022-01-30 02:00:31'),
(31, 'd2gmai.com', '$2a$10$yfEb1nQyHCPnFWC1pou68ek0OyyjQQb9BEQzhiMDQrDck5PxtRJzO', 'asdf', '', '', 'asdfasdfasfasfasdfasfd', 3, '2022-01-30 02:01:02', '2022-01-30 02:01:02'),
(32, 'e2gmai.com', '$2a$10$yfEb1nQyHCPnFWC1pou68emflaFY.lGrCuEO.Z3gy6f4H.vkyP6yu', 'eric', 'asdfaaaaaaaaaaaaaaaaaaaaaaa', '', '147855', 3, '2022-01-30 02:03:54', '2022-01-30 14:06:04'),
(33, 'f@gmao.co.sdf', '$2a$10$yfEb1nQyHCPnFWC1pou68eP45.SgHcXgwVAKJ84iHING3Caj/6Z.m', 'test axios', 'ha noi', NULL, 'sadfasdf', 2, '2022-01-30 02:04:14', '2022-01-31 02:27:36'),
(37, 'asdfasf', '$2a$10$26lbphEOIv84R8WTn4T3.OlzqbPviKpwozA54ZPKhpZGQYQms/WRu', 'asdfasf', 'asfdasfd', '', 'asdfasfdasf', 3, '2022-02-01 15:50:04', '2022-02-01 15:50:04'),
(38, 'aaa@gmail.com', '$2a$10$t5w4x2buCnWCqVVEAJTNdOP4dJ86WnUmzm61A2Dz6TeTUjTSATiW2', 'asdfasdf', NULL, NULL, '12fasfd', 4, '2022-02-05 12:58:55', '2022-02-05 12:58:55'),
(40, 'dev@gmail.com', '$2a$10$sL3.93Lm6ig0qO/r8vMro.tq7bpmAYcn3ypNtfxvJaJYdENPsZcl6', 'Dev Role', NULL, NULL, '0123478955', 1, '2022-02-06 08:25:43', '2022-02-06 08:25:43'),
(41, 'guest@gmail.com', '$2a$10$sL3.93Lm6ig0qO/r8vMro.tq7bpmAYcn3ypNtfxvJaJYdENPsZcl6', 'Guest Role', NULL, NULL, '123456', 4, '2022-02-06 08:26:03', '2022-02-06 08:26:03'),
(42, 'asdf@gmailc.om', '$2a$10$gwRwDRekTv8Nfa9joq1xNeAik1CxxNTXZILYEBnSZHqIZeVVsqh1a', 'asdf', '', '', 'asdfsdf', 3, '2022-04-29 16:12:34', '2022-04-29 16:12:34');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
userrolegroup