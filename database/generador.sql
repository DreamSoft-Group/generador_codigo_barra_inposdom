-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-07-2023 a las 16:46:03
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `generador`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registros`
--

CREATE TABLE `registros` (
  `id` int(11) NOT NULL,
  `codI` int(11) NOT NULL,
  `secuencial` varchar(8) NOT NULL,
  `checkDigit` varchar(1) NOT NULL,
  `codF` varchar(2) NOT NULL,
  `destino` varchar(100) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `codI`, `secuencial`, `checkDigit`, `codF`, `destino`, `create_date`) VALUES
(1, 1, '12345930', '5', 'DO', 'Boveda', '2023-07-12 03:56:49'),
(3, 1, '12346000', '5', 'DO', 'Boveda', '2023-07-12 03:57:21'),
(7, 1, '12346050', '7', 'DO', 'Boveda', '2023-07-12 04:09:09'),
(9, 2, '12346150', '2', 'DO', 'Boveda', '2023-07-12 04:09:37'),
(10, 1, '12346051', '5', 'DO', 'Boveda', '2023-07-12 04:28:52'),
(12, 1, '12346151', '6', 'DO', 'Boveda', '2023-07-12 04:30:14'),
(14, 1, '12346153', '3', 'DO', 'Boveda', '2023-07-12 04:33:10'),
(16, 1, '12346165', '2', 'DO', 'Boveda', '2023-07-12 04:57:24'),
(19, 2, '12346166', '6', 'DO', 'Boveda', '2023-07-12 05:00:34'),
(20, 2, '12346170', '6', 'DO', 'Boveda', '2023-07-12 05:01:44'),
(22, 1, '12346171', '0', 'DO', 'Boveda', '2023-07-12 05:04:01'),
(24, 1, '12346181', '1', 'DO', 'Boveda', '2023-07-12 07:39:56'),
(26, 2, '12346180', '8', 'DO', 'Boveda', '2023-07-12 07:41:12'),
(27, 1, '23014450', '8', 'DO', 'BOVEDA', '2023-07-12 15:12:53'),
(28, 1, '23014460', '0', 'DO', 'Boveda', '2023-07-12 15:13:19'),
(29, 2, '12346280', '3', 'DO', 'Boveda', '2023-07-12 19:19:04'),
(30, 1, '23014470', '1', 'DO', 'Boveda', '2023-07-13 02:17:57'),
(31, 1, '23014475', '0', 'DO', 'Boveda', '2023-07-13 02:33:14'),
(33, 2, '12346285', '1', 'DO', 'Boveda', '2023-07-13 02:37:33'),
(35, 1, '23014480', '3', 'DO', 'Boveda', '2023-07-13 02:38:33'),
(37, 1, '23014485', '1', 'DO', 'Boveda', '2023-07-13 02:40:17'),
(39, 1, '23014490', '5', 'DO', 'Boveda', '2023-07-13 02:42:00'),
(41, 1, '23014495', '3', 'DO', 'Boveda', '2023-07-13 02:45:33'),
(43, 2, '12346290', '5', 'DO', 'Boveda', '2023-07-13 02:47:52'),
(45, 2, '12346295', '3', 'DO', 'Boveda', '2023-07-13 02:51:09'),
(47, 1, '23014500', '4', 'DO', 'Boveda', '2023-07-13 02:54:59'),
(49, 1, '23014505', '2', 'DO', 'Boveda', '2023-07-13 02:56:02'),
(51, 1, '23014510', '6', 'DO', 'Boveda', '2023-07-13 02:58:21'),
(53, 1, '23014515', '4', 'DO', 'Boveda', '2023-07-13 02:59:37'),
(55, 1, '23014520', '8', 'DO', 'Boveda', '2023-07-13 03:05:08'),
(57, 1, '23014528', '7', 'DO', 'Boveda', '2023-07-13 03:05:38'),
(59, 1, '23014534', '4', 'DO', 'Boveda', '2023-07-13 03:08:47'),
(61, 2, '12346300', '4', 'DO', 'Boveda', '2023-07-13 03:12:52'),
(63, 2, '12346305', '2', 'DO', 'Boveda', '2023-07-13 03:14:02'),
(65, 1, '23014536', '1', 'DO', 'Boveda', '2023-07-13 03:20:03'),
(66, 2, '12346310', '6', 'DO', 'Boveda', '2023-07-13 03:22:36'),
(68, 1, '23014538', '9', 'DO', 'Boveda', '2023-07-13 03:22:55'),
(70, 2, '12346312', '3', 'DO', 'Boveda', '2023-07-13 03:24:08'),
(71, 1, '23014540', '1', 'DO', 'Boveda', '2023-07-13 03:25:42'),
(72, 1, '23014541', '5', 'DO', 'Boveda', '2023-07-13 03:27:23'),
(73, 2, '12346313', '7', 'DO', 'Boveda', '2023-07-13 03:33:30'),
(74, 2, '12346314', '5', 'DO', 'Boveda', '2023-07-13 03:33:49'),
(75, 1, '23014542', '9', 'DO', 'Boveda', '2023-07-13 03:34:30'),
(77, 1, '23014543', '2', 'DO', 'Boveda', '2023-07-13 03:35:04'),
(78, 2, '12346315', '4', 'DO', 'Boveda', '2023-07-13 03:37:41'),
(79, 1, '23014544', '6', 'DO', 'Boveda', '2023-07-13 03:38:31'),
(80, 1, '23014549', '4', 'DO', 'Boveda', '2023-07-13 03:43:24'),
(81, 1, '23014550', '3', 'DO', 'Boveda', '2023-07-13 03:46:39'),
(83, 1, '23014551', '7', 'DO', 'Boveda', '2023-07-13 03:46:56'),
(85, 2, '12346316', '8', 'DO', 'Boveda', '2023-07-13 03:47:42'),
(86, 1, '23014552', '5', 'DO', 'Boveda', '2023-07-13 03:48:19'),
(87, 1, '23014553', '4', 'DO', 'Boveda', '2023-07-13 03:50:38'),
(89, 1, '23014554', '8', 'DO', 'Boveda', '2023-07-13 03:50:57'),
(91, 2, '12346317', '1', 'DO', 'Boveda', '2023-07-13 03:52:23'),
(93, 1, '23014555', '1', 'DO', 'Boveda', '2023-07-13 03:52:53'),
(95, 2, '12346319', '9', 'DO', 'Boveda', '2023-07-13 03:55:21'),
(97, 1, '23014560', '5', 'DO', 'Boveda', '2023-07-13 03:55:48'),
(100, 2, '12346321', '1', 'DO', 'Boveda', '2023-07-13 03:58:14'),
(101, 1, '23014561', '9', 'DO', 'Boveda', '2023-07-13 03:58:59'),
(102, 1, '23014562', '2', 'DO', 'Boveda', '2023-07-13 04:02:43'),
(103, 1, '23014563', '6', 'DO', 'Boveda', '2023-07-13 04:04:01'),
(104, 2, '12346322', '5', 'DO', 'Boveda', '2023-07-13 04:05:10'),
(105, 1, '23014564', '0', 'DO', 'Boveda', '2023-07-13 04:06:01'),
(106, 1, '23014579', '0', 'DO', 'Boveda', '2023-07-13 04:09:47'),
(107, 1, '23014580', '9', 'DO', 'Boveda', '2023-07-13 04:14:46'),
(109, 1, '23014582', '6', 'DO', 'Boveda', '2023-07-13 04:19:01'),
(110, 1, '23014584', '3', 'DO', 'Boveda', '2023-07-14 14:32:33'),
(111, 1, '23014586', '5', 'DO', 'Boveda', '2023-07-14 14:35:50'),
(112, 1, '23014588', '8', 'DO', 'Boveda', '2023-07-14 14:40:19'),
(113, 1, '23014589', '1', 'DO', 'Boveda', '2023-07-14 14:41:13'),
(114, 1, '23014590', '5', 'DO', 'Boveda', '2023-07-14 14:41:46'),
(115, 1, '23014591', '4', 'DO', 'Boveda', '2023-07-14 14:44:32'),
(116, 1, '23014592', '8', 'DO', 'Boveda', '2023-07-14 15:35:13'),
(117, 1, '23014593', '1', 'DO', 'Boveda', '2023-07-14 15:35:59'),
(119, 1, '23014595', '9', 'DO', 'Boveda', '2023-07-14 15:40:56'),
(122, 1, '23014597', '6', 'DO', 'Boveda', '2023-07-14 15:44:03'),
(124, 2, '12346324', '2', 'DO', 'Boveda', '2023-07-14 15:59:20'),
(126, 2, '12346326', '0', 'DO', 'Boveda', '2023-07-14 16:00:28'),
(128, 1, '23014599', '3', 'DO', 'Boveda', '2023-07-14 16:01:18'),
(130, 1, '23014601', '3', 'DO', 'Boveda', '2023-07-14 16:01:58'),
(132, 1, '23014603', '5', 'DO', 'Boveda', '2023-07-14 16:02:42'),
(134, 1, '23014605', '8', 'DO', 'Boveda', '2023-07-14 16:03:52'),
(136, 1, '23014607', '5', 'DO', 'Boveda', '2023-07-14 16:04:48'),
(138, 1, '23014609', '2', 'DO', 'Boveda', '2023-07-14 16:05:34'),
(140, 1, '23014611', '5', 'DO', 'Boveda', '2023-07-14 16:06:20'),
(142, 1, '23014613', '2', 'DO', 'Boveda', '2023-07-14 16:06:51'),
(145, 1, '23014615', '0', 'DO', 'Boveda', '2023-07-14 16:07:19'),
(147, 1, '23014617', '7', 'DO', 'Boveda', '2023-07-14 16:07:46'),
(149, 1, '23014619', '4', 'DO', 'Boveda', '2023-07-14 16:08:10'),
(151, 1, '23014621', '7', 'DO', 'Boveda', '2023-07-14 16:08:35'),
(153, 1, '23014623', '4', 'DO', 'Boveda', '2023-07-14 16:09:02'),
(155, 1, '23014625', '1', 'DO', 'Boveda', '2023-07-14 16:09:52'),
(158, 1, '23014629', '6', 'DO', 'Boveda', '2023-07-14 16:11:30'),
(160, 2, '12346328', '7', 'DO', 'Boveda', '2023-07-14 16:13:01'),
(162, 1, '23014631', '9', 'DO', 'Boveda', '2023-07-14 16:13:24'),
(164, 1, '23014633', '6', 'DO', 'Boveda', '2023-07-14 16:13:51'),
(166, 1, '23014635', '3', 'DO', 'Boveda', '2023-07-14 16:14:16'),
(168, 1, '23014637', '5', 'DO', 'Boveda', '2023-07-14 16:14:50'),
(170, 1, '23014639', '8', 'DO', 'Boveda', '2023-07-14 16:15:31'),
(173, 1, '23014641', '5', 'DO', 'Boveda', '2023-07-14 16:16:42'),
(175, 1, '23014643', '8', 'DO', 'Boveda', '2023-07-14 16:21:39'),
(177, 1, '23014645', '5', 'DO', 'Boveda', '2023-07-14 16:22:21'),
(179, 2, '12346330', '0', 'DO', 'Boveda', '2023-07-14 16:23:05'),
(181, 1, '23014650', '9', 'DO', 'Boveda', '2023-07-14 16:25:38'),
(184, 1, '23014655', '7', 'DO', 'Boveda', '2023-07-14 16:31:48'),
(187, 1, '23014657', '4', 'DO', 'Boveda', '2023-07-14 16:36:41'),
(190, 1, '23014659', '1', 'DO', 'Boveda', '2023-07-14 16:40:55'),
(192, 1, '23014661', '4', 'DO', 'Boveda', '2023-07-14 16:42:38'),
(194, 1, '23014663', '1', 'DO', 'Boveda', '2023-07-14 16:57:40'),
(197, 1, '23014665', '9', 'DO', 'Boveda', '2023-07-14 17:01:47'),
(199, 1, '23014667', '6', 'DO', 'Boveda', '2023-07-14 17:31:54'),
(201, 1, '23014669', '3', 'DO', 'Boveda', '2023-07-14 17:34:34'),
(203, 2, '12346332', '7', 'DO', 'Boveda', '2023-07-14 17:37:39'),
(205, 1, '23014671', '6', 'DO', 'Boveda', '2023-07-14 17:41:36'),
(207, 1, '23014673', '3', 'DO', 'Boveda', '2023-07-14 17:44:48'),
(209, 1, '23014675', '5', 'DO', 'Boveda', '2023-07-14 17:45:26'),
(212, 1, '23014677', '8', 'DO', 'Boveda', '2023-07-14 17:45:59'),
(214, 1, '23014679', '5', 'DO', 'Boveda', '2023-07-14 17:47:43'),
(216, 1, '23014681', '8', 'DO', 'Boveda', '2023-07-14 17:48:05'),
(219, 2, '12346334', '4', 'DO', 'Boveda', '2023-07-14 17:50:37'),
(222, 1, '23014683', '5', 'DO', 'Boveda', '2023-07-14 17:53:48'),
(225, 1, '23014685', '2', 'DO', 'Boveda', '2023-07-14 17:56:10'),
(228, 1, '23014687', '0', 'DO', 'Boveda', '2023-07-14 18:00:13'),
(231, 1, '23014689', '7', 'DO', 'Boveda', '2023-07-14 18:02:41'),
(234, 1, '23014691', '0', 'DO', 'Boveda', '2023-07-14 18:04:37'),
(237, 1, '23014693', '7', 'DO', 'Boveda', '2023-07-14 18:05:36'),
(239, 1, '23014695', '4', 'DO', 'Boveda', '2023-07-14 18:07:28'),
(242, 1, '23014697', '1', 'DO', 'Boveda', '2023-07-14 18:10:26'),
(244, 1, '23014699', '9', 'DO', 'Boveda', '2023-07-14 18:14:40'),
(247, 1, '23014701', '9', 'DO', 'Boveda', '2023-07-14 18:18:32'),
(249, 1, '23014703', '6', 'DO', 'Boveda', '2023-07-14 18:21:12'),
(251, 1, '23014705', '3', 'DO', 'Boveda', '2023-07-14 18:35:10'),
(254, 1, '23014707', '5', 'DO', 'Boveda', '2023-07-14 19:13:59'),
(256, 2, '12346336', '1', 'DO', 'Boveda', '2023-07-14 19:15:12'),
(258, 1, '23014709', '8', 'DO', 'Boveda', '2023-07-14 19:18:43'),
(260, 1, '23014711', '5', 'DO', 'Boveda', '2023-07-14 19:18:55'),
(262, 1, '23014713', '8', 'DO', 'Boveda', '2023-07-14 19:21:26'),
(264, 1, '23014715', '5', 'DO', 'Boveda', '2023-07-17 15:22:16'),
(266, 1, '23014717', '2', 'DO', 'Boveda', '2023-07-17 16:51:33'),
(268, 1, '23014719', '0', 'DO', 'Boveda', '2023-07-17 18:27:42'),
(269, 1, '23014721', '2', 'DO', 'Boveda', '2023-07-17 18:30:50'),
(270, 2, '12346338', '9', 'DO', 'Boveda', '2023-07-18 05:12:16'),
(271, 1, '23014723', '0', 'DO', 'Boveda', '2023-07-18 05:32:43'),
(278, 1, '23014725', '7', 'DO', 'Boveda', '2023-07-18 05:42:32'),
(280, 1, '23014727', '4', 'DO', 'Boveda', '2023-07-18 05:49:26'),
(281, 1, '23014730', '5', 'DO', 'Boveda', '2023-07-18 05:50:26'),
(283, 1, '23014731', '4', 'DO', 'Boveda', '2023-07-18 05:53:18'),
(286, 1, '23014732', '8', 'DO', 'Boveda', '2023-07-18 05:58:18'),
(288, 2, '12346339', '2', 'DO', 'Boveda', '2023-07-18 05:59:20'),
(290, 1, '23014734', '5', 'DO', 'Boveda', '2023-07-18 05:59:51'),
(292, 1, '23014735', '9', 'DO', 'Boveda', '2023-07-18 06:00:02'),
(297, 1, '23014736', '2', 'DO', 'Boveda', '2023-07-18 06:07:09'),
(299, 1, '23014737', '6', 'DO', 'Boveda', '2023-07-18 06:08:54'),
(301, 1, '23014738', '0', 'DO', 'Boveda', '2023-07-18 06:12:01'),
(303, 1, '23014739', '3', 'DO', 'Boveda', '2023-07-18 06:26:48'),
(305, 1, '23014740', '2', 'DO', 'Boveda', '2023-07-18 06:27:16'),
(307, 1, '23014741', '6', 'DO', 'Boveda', '2023-07-18 06:28:28'),
(310, 1, '23014742', '0', 'DO', 'Boveda', '2023-07-18 06:29:43'),
(314, 1, '23014743', '3', 'DO', 'Boveda', '2023-07-18 06:30:16'),
(316, 2, '12346340', '1', 'DO', 'Boveda', '2023-07-18 06:30:37'),
(318, 1, '23014744', '7', 'DO', 'Boveda', '2023-07-18 06:33:56'),
(320, 1, '23014745', '5', 'DO', 'Boveda', '2023-07-18 06:37:46'),
(321, 1, '23014747', '8', 'DO', 'Boveda', '2023-07-18 06:38:23'),
(322, 1, '23014748', '1', 'DO', 'Boveda', '2023-07-18 06:40:34'),
(324, 1, '23014750', '4', 'DO', 'Boveda', '2023-07-18 06:42:07'),
(326, 1, '23014751', '8', 'DO', 'Boveda', '2023-07-18 06:43:02'),
(329, 2, '12346341', '5', 'DO', 'Boveda', '2023-07-18 06:46:18'),
(330, 1, '23014753', '5', 'DO', 'Boveda', '2023-07-18 06:46:43'),
(332, 1, '23014755', '2', 'DO', 'Boveda', '2023-07-18 06:48:29'),
(333, 2, '12346342', '9', 'DO', 'Boveda', '2023-07-18 06:48:40'),
(334, 1, '23014756', '6', 'DO', 'Boveda', '2023-07-18 06:53:44'),
(336, 1, '23014758', '3', 'DO', 'Boveda', '2023-07-18 12:53:41'),
(337, 1, '23014759', '7', 'DO', 'Boveda', '2023-07-18 12:57:18'),
(338, 2, '12346343', '2', 'DO', 'Boveda', '2023-07-18 13:08:08'),
(340, 1, '23014760', '6', 'DO', 'Boveda', '2023-07-18 13:08:52'),
(341, 2, '12346344', '6', 'DO', 'Boveda', '2023-07-18 13:09:40'),
(342, 1, '23014762', '3', 'DO', 'Boveda', '2023-07-18 13:20:16'),
(343, 1, '23014763', '7', 'DO', 'Boveda', '2023-07-18 13:24:14'),
(344, 2, '12346346', '3', 'DO', 'Boveda', '2023-07-18 13:26:19'),
(346, 2, '12346348', '5', 'DO', 'Boveda', '2023-07-18 13:26:43'),
(347, 1, '23014764', '5', 'DO', 'Boveda', '2023-07-18 13:38:08'),
(348, 1, '23014765', '4', 'DO', 'Boveda', '2023-07-18 13:54:16'),
(351, 1, '23014766', '8', 'DO', 'Boveda', '2023-07-18 13:56:07'),
(354, 1, '23014767', '1', 'DO', 'Boveda', '2023-07-18 13:56:24'),
(355, 1, '23014768', '5', 'DO', 'Boveda', '2023-07-18 13:56:41');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocodigos`
--

CREATE TABLE `tipocodigos` (
  `id` int(11) NOT NULL,
  `name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipocodigos`
--

INSERT INTO `tipocodigos` (`id`, `name`) VALUES
(1, 'RR'),
(2, 'CP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre`) VALUES
(1, 'melquisedec', '123456', 'Genesis M. Sarante');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `registros`
--
ALTER TABLE `registros`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `secuencial` (`secuencial`),
  ADD KEY `codI` (`codI`);

--
-- Indices de la tabla `tipocodigos`
--
ALTER TABLE `tipocodigos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=356;

--
-- AUTO_INCREMENT de la tabla `tipocodigos`
--
ALTER TABLE `tipocodigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `registros`
--
ALTER TABLE `registros`
  ADD CONSTRAINT `registros_ibfk_1` FOREIGN KEY (`codI`) REFERENCES `tipocodigos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
