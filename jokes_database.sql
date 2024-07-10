-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 10-07-2024 a las 15:12:09
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `jokes_database`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chistes`
--

CREATE TABLE `chistes` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `cuerpo` text NOT NULL,
  `autor_id` int(11) DEFAULT NULL,
  `tematica_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `chistes`
--

INSERT INTO `chistes` (`id`, `titulo`, `cuerpo`, `autor_id`, `tematica_id`) VALUES
(1, 'Chiste de humor negro 1', 'Cuerpo del chiste de humor negro 1', 1, 1),
(2, 'Chiste de humor negro 2', 'Cuerpo del chiste de humor negro 2', 1, 1),
(3, 'Chiste de humor negro 3', 'Cuerpo del chiste de humor negro 3', 1, 1),
(4, 'Chiste de humor amarillo 1', 'Cuerpo del chiste de humor amarillo 1', 1, 2),
(5, 'Chiste de humor amarillo 2', 'Cuerpo del chiste de humor amarillo 2', 1, 2),
(6, 'Chiste de humor amarillo 3', 'Cuerpo del chiste de humor amarillo 3', 1, 2),
(7, 'Chiste verde 1', 'Cuerpo del chiste verde 1', 1, 3),
(8, 'Chiste verde 2', 'Cuerpo del chiste verde 2', 1, 3),
(9, 'Chiste verde 3', 'Cuerpo del chiste verde 3', 1, 3),
(10, 'Chiste de humor negro 1', 'Cuerpo del chiste de humor negro 1', 2, 1),
(11, 'Chiste de humor negro 2', 'Cuerpo del chiste de humor negro 2', 2, 1),
(12, 'Chiste de humor negro 3', 'Cuerpo del chiste de humor negro 3', 2, 1),
(13, 'Chiste de humor amarillo 1', 'Cuerpo del chiste de humor amarillo 1', 2, 2),
(14, 'Chiste de humor amarillo 2', 'Cuerpo del chiste de humor amarillo 2', 2, 2),
(15, 'Chiste de humor amarillo 3', 'Cuerpo del chiste de humor amarillo 3', 2, 2),
(16, 'Chiste verde 1', 'Cuerpo del chiste verde 1', 2, 3),
(17, 'Chiste verde 2', 'Cuerpo del chiste verde 2', 2, 3),
(18, 'Chiste verde 3', 'Cuerpo del chiste verde 3', 2, 3),
(19, 'Chiste de humor negro 1', 'Cuerpo del chiste de humor negro 1', 3, 1),
(20, 'Chiste de humor negro 2', 'Cuerpo del chiste de humor negro 2', 3, 1),
(21, 'Chiste de humor negro 3', 'Cuerpo del chiste de humor negro 3', 3, 1),
(22, 'Chiste de humor amarillo 1', 'Cuerpo del chiste de humor amarillo 1', 3, 2),
(23, 'Chiste de humor amarillo 2', 'Cuerpo del chiste de humor amarillo 2', 3, 2),
(24, 'Chiste de humor amarillo 3', 'Cuerpo del chiste de humor amarillo 3', 3, 2),
(25, 'Chiste verde 1', 'Cuerpo del chiste verde 1', 3, 3),
(26, 'Chiste verde 2', 'Cuerpo del chiste verde 2', 3, 3),
(27, 'Chiste verde 3', 'Cuerpo del chiste verde 3', 3, 3),
(28, 'Chiste de humor negro 1', 'Cuerpo del chiste de humor negro 1', 4, 1),
(29, 'Chiste de humor negro 2', 'Cuerpo del chiste de humor negro 2', 4, 1),
(30, 'Chiste de humor negro 3', 'Cuerpo del chiste de humor negro 3', 4, 1),
(31, 'Chiste de humor amarillo 1', 'Cuerpo del chiste de humor amarillo 1', 4, 2),
(32, 'Chiste de humor amarillo 2', 'Cuerpo del chiste de humor amarillo 2', 4, 2),
(33, 'Chiste de humor amarillo 3', 'Cuerpo del chiste de humor amarillo 3', 4, 2),
(34, 'Chiste verde 1', 'Cuerpo del chiste verde 1', 4, 3),
(35, 'Chiste verde 2', 'Cuerpo del chiste verde 2', 4, 3),
(36, 'Chiste verde 3', 'Cuerpo del chiste verde 3', 4, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tematicas`
--

CREATE TABLE `tematicas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tematicas`
--

INSERT INTO `tematicas` (`id`, `nombre`) VALUES
(1, 'humor negro'),
(2, 'humor amarillo'),
(3, 'chistes verdes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `contrasena`) VALUES
(1, 'Manolito', 'password123'),
(2, 'Pepe', 'password456'),
(3, 'Isabel', 'password789'),
(4, 'Pedro', 'password321');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `chistes`
--
ALTER TABLE `chistes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `autor_id` (`autor_id`),
  ADD KEY `tematica_id` (`tematica_id`);

--
-- Indices de la tabla `tematicas`
--
ALTER TABLE `tematicas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `chistes`
--
ALTER TABLE `chistes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT de la tabla `tematicas`
--
ALTER TABLE `tematicas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `chistes`
--
ALTER TABLE `chistes`
  ADD CONSTRAINT `chistes_ibfk_1` FOREIGN KEY (`autor_id`) REFERENCES `usuarios` (`id`),
  ADD CONSTRAINT `chistes_ibfk_2` FOREIGN KEY (`tematica_id`) REFERENCES `tematicas` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
