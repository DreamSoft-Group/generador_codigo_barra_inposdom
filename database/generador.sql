-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-07-2023 a las 19:11:35
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
  `cantidad` int(11) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `registros`
--

INSERT INTO `registros` (`id`, `codI`, `secuencial`, `checkDigit`, `codF`, `destino`, `cantidad`, `create_date`) VALUES
(1, 1, '23014450', '8', 'DO', 'BOVEDA', 1, '2023-07-19 02:35:15'),
(2, 2, '12345678', '5', 'DO', 'BOVEDA', 1, '2023-07-19 02:35:20'),
(3, 2, '12345686', '0', 'DO', 'Boveda', 8, '2023-07-19 02:35:53'),
(5, 1, '23014452', '5', 'DO', 'Boveda', 2, '2023-07-19 02:36:01'),
(6, 2, '12345688', '7', 'DO', 'Boveda', 2, '2023-07-19 02:34:16'),
(8, 2, '12345690', '0', 'DO', 'Boveda', 2, '2023-07-19 14:44:36'),
(10, 1, '23014454', '2', 'DO', 'Boveda', 2, '2023-07-19 17:11:03');

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `username`, `password`, `nombre`) VALUES
(1, 'melquisedec', '123456', 'Genesis M. Sarante'),
(2, 'Josem03', 'Jose0304', 'Jose Miguel T.');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `tipocodigos`
--
ALTER TABLE `tipocodigos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
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
