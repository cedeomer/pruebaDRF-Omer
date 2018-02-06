-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2018 a las 17:35:16
-- Versión del servidor: 5.7.11
-- Versión de PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebaDjango`
--

-- --------------------------------------------------------



--
-- Estructura de tabla para la tabla `tb_status`
--

CREATE TABLE `tb_status` (
  `idStatus` int(11) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_status`
--

INSERT INTO `tb_status` (`idStatus`, `status`) VALUES
(1, 'Active'),
(2, 'Inactive');

-- --------------------------------------------------------


--
-- Estructura de tabla para la tabla `tb_country`
--

CREATE TABLE `tb_country` (
  `idCountry` int(11) NOT NULL,
  `nameCountry` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `idStatus` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_country`
--

INSERT INTO `tb_country` (`idCountry`, `nameCountry`, `description`, `idstatus_id`) VALUES
(1, 'Venezuela', '', 1),
(2, 'Colombia', '', 1),
(3, 'Argentina', '', 1),
(4, 'Chile', '', 1),
(5, 'Ecuador', '', 1),
(6, 'Perú', '', 1);



-- --------------------------------------------------------
--
-- Estructura de tabla para la tabla `tb_city`
--

CREATE TABLE `tb_city` (
  `idCity` int(11) NOT NULL,
  `nameCity` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `idStatus` int(11) DEFAULT NULL,
  `idCountry` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_city`
--

INSERT INTO `tb_city` (`idCity`, `nameCity`, `description`, `idStatus`, `idCountry`) VALUES
(1, 'Bogota', '', 1, 2),
(2, 'Cali', '', 1, 2),
(3, 'Medellin', '', 1, 2),
(4, 'Cucuta', '', 1, 2),
(5, 'Barranquilla', '', 1, 2),
(6, 'Pasto', '', 1, 2);

-- --------------------------------------------------------



--
-- Estructura de tabla para la tabla `tb_store`
--

CREATE TABLE `tb_store` (
  `idStore` int(11) NOT NULL,
  `nameStore` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `address` varchar(500) DEFAULT NULL,
  `phoneStore` varchar(200) DEFAULT NULL,
  `mailStore` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `lat` varchar(200) DEFAULT NULL,
  `lon` varchar(200) DEFAULT NULL,
  `dateRegister` timestamp NULL DEFAULT NULL,
  `idCity` int(11) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_store`
--

INSERT INTO `tb_store` (`idStore`, `nameStore`, `description`, `address`, `phoneStore`, `mailStore`, `website`, `lat`, `lon`, `dateRegister`, `idCity`, `idStatus`) VALUES
(1, 'Tienda 1', 'prueba', 'prueba', '1234567', 'prueba@gmail.com', 'prueba.com', NULL, NULL, NULL, 1, 1),
(2, 'Tienda 2', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(3, 'Tienda 3', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(4, 'Tienda 4', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 1),
(5, 'Tienda 5', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(6, 'Tienda 6', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(7, 'Tienda 7', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, 1),
(8, 'Tienda 8', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(9, 'Tienda 9', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1),
(10, 'Tienda 10', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_user`
--

CREATE TABLE `tb_user` (
  `idUser` int(11) NOT NULL,
  `userName` varchar(200) DEFAULT NULL,
  `mailUser` varchar(200) DEFAULT NULL,
  `firstName` varchar(200) DEFAULT NULL,
  `lastName` varchar(200) DEFAULT NULL,
  `dni` varchar(200) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `dateOfBirth` timestamp NULL DEFAULT NULL,
  `phoneUser` varchar(200) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL,
  `passUser` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `userName`, `mailUser`, `firstName`, `lastName`, `dni`, `address`, `dateOfBirth`, `phoneUser`, `idStatus`, `passUser`) VALUES
(1, 'usuario1', NULL, NULL, NULL, '123456', NULL, NULL, NULL, 1, NULL),
(2, 'usuario2', NULL, NULL, NULL, '1234567', NULL, NULL, NULL, 1, NULL),
(3, 'usuario3', NULL, NULL, NULL, '12345678', NULL, NULL, NULL, 1, NULL),
(4, 'usuario4', NULL, NULL, NULL, '12345653', NULL, NULL, NULL, 1, NULL),
(5, 'usuario5', NULL, NULL, NULL, '3432432423', NULL, NULL, NULL, 1, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_user_store`
--

CREATE TABLE `tb_user_store` (
  `idUserStore` int(11) NOT NULL,
  `idUser` int(11) DEFAULT NULL,
  `idStore` int(11) DEFAULT NULL,
  `idStatus` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_user_store`
--

INSERT INTO `tb_user_store` (`idUserStore`, `idUser`, `idStore`, `idStatus`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 2, 1, 1),
(7, 2, 5, 1),
(8, 2, 6, 1),
(9, 2, 7, 1),
(10, 2, 8, 1),
(11, 2, 9, 1),
(12, 3, 1, 1),
(13, 3, 2, 1),
(14, 3, 3, 1),
(15, 3, 4, 1),
(16, 3, 5, 1),
(17, 4, 5, 1),
(18, 4, 6, 1),
(19, 4, 7, 1),
(20, 4, 8, 1),
(21, 4, 9, 1),
(22, 4, 10, 1),
(23, 5, 1, 1),
(24, 5, 2, 1),
(25, 5, 3, 1),
(26, 5, 4, 1),
(27, 5, 5, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_city`
--
ALTER TABLE `tb_city`
  ADD PRIMARY KEY (`idCity`);

--
-- Indices de la tabla `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`idCountry`);

--
-- Indices de la tabla `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indices de la tabla `tb_store`
--
ALTER TABLE `tb_store`
  ADD PRIMARY KEY (`idStore`);

--
-- Indices de la tabla `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `dni` (`dni`);

--
-- Indices de la tabla `tb_user_store`
--
ALTER TABLE `tb_user_store`
  ADD PRIMARY KEY (`idUserStore`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tb_city`
--
ALTER TABLE `tb_city`
  MODIFY `idCity` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT de la tabla `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `tb_store`
--
ALTER TABLE `tb_store`
  MODIFY `idStore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT de la tabla `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `tb_user_store`
--
ALTER TABLE `tb_user_store`
  MODIFY `idUserStore` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
