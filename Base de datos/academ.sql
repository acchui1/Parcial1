-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:33066
-- Tiempo de generación: 17-07-2020 a las 02:01:50
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `academ`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `identificador`
--

CREATE TABLE `identificador` (
  `ci` varchar(20) NOT NULL,
  `nombre_completo` varchar(100) DEFAULT NULL,
  `f_nacimiento` varchar(20) DEFAULT NULL,
  `cod_residencia` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `identificador`
--

INSERT INTO `identificador` (`ci`, `nombre_completo`, `f_nacimiento`, `cod_residencia`) VALUES
('11651654', 'Diego Salas', '23/11/1996', 'OR'),
('1231', 'Quispe Gualberto', '13/02/1996', 'LP'),
('1232', 'Blanca Mamani', '02/11/1997', 'OR'),
('1233', 'Contreras Felipe', '17/06/1995', 'SC'),
('12345', 'Silva Moises', '19/05/1990', 'SC'),
('123456', 'Paola Mamani', '13/12/1992', 'SC'),
('1235', 'Villarroel Carmen', '02/11/1997', 'LP'),
('1236', 'Zubieta Maria', '13/12/1992', 'OR'),
('1237', 'Romero Irma', '19/05/1990', 'CB'),
('14050264', 'Ana Chui', '15/03/1998', 'LP');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas`
--

CREATE TABLE `notas` (
  `codnota` int(11) NOT NULL,
  `ci` varchar(20) NOT NULL,
  `nota` int(11) NOT NULL,
  `materia` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `notas`
--

INSERT INTO `notas` (`codnota`, `ci`, `nota`, `materia`) VALUES
(1, '11651654', 88, 'INF-281'),
(2, '11651654', 52, 'INF-282'),
(3, '11651654', 39, 'INF-319'),
(4, '11651654', 66, 'INF-320'),
(5, '1231', 77, 'INF-281'),
(6, '1231', 77, 'INF-282'),
(7, '1232', 52, 'INF-282'),
(8, '1232', 60, 'INF-319'),
(9, '1232', 14, 'INF-320'),
(10, '1233', 50, 'INF-381'),
(11, '1233', 51, 'INF-282'),
(12, '123456', 64, 'INF-281'),
(13, '123456', 71, 'INF-319'),
(14, '1235', 48, 'INF-282'),
(15, '1235', 35, 'INF-320'),
(16, '1236', 90, 'INF-320'),
(17, '1236', 56, 'INF-319'),
(18, '1237', 72, 'INF-281'),
(19, '1237', 0, 'INF-282');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `ci` varchar(20) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `passwordadmin` varchar(50) DEFAULT NULL,
  `rol` int(11) DEFAULT NULL,
  `color` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `ci`, `password`, `passwordadmin`, `rol`, `color`) VALUES
(1, '14050264', '', '14050264', 1, 'SteelBlue'),
(2, '11651654', '1234', '', 2, 'SteelBlue'),
(3, '123456', '123', '', 2, 'Crimson'),
(4, '1231', '1231', '', 2, 'LimeGreen'),
(5, '1232', '1232', '', 2, 'SteelBlue'),
(6, '1233', '1233', '', 2, 'SteelBlue'),
(7, '12345', '12345', '12345', 1, 'SteelBlue'),
(8, '1235', '1235', '', 2, 'SteelBlue'),
(9, '1236', '1236', '', 2, 'SteelBlue'),
(10, '1237', '1237', '', 2, 'SteelBlue');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `identificador`
--
ALTER TABLE `identificador`
  ADD PRIMARY KEY (`ci`);

--
-- Indices de la tabla `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`codnota`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci` (`ci`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `notas`
--
ALTER TABLE `notas`
  MODIFY `codnota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`ci`) REFERENCES `identificador` (`ci`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
