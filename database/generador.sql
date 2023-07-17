-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-07-2023 a las 06:23:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(109, 1, '23014582', '6', 'DO', 'Boveda', '2023-07-13 04:19:01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipocodigos`
--

CREATE TABLE `tipocodigos` (
  `id` int(11) NOT NULL,
  `name` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tipocodigos`
--

INSERT INTO `tipocodigos` (`id`, `name`) VALUES
(1, 'RR'),
(2, 'CP');

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `registros`
--
ALTER TABLE `registros`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- AUTO_INCREMENT de la tabla `tipocodigos`
--
ALTER TABLE `tipocodigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
