-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-02-2018 a las 07:55:14
-- Versión del servidor: 5.7.11
-- Versión de PHP: 7.0.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `pruebadjango2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_city`
--

CREATE TABLE `tb_city` (
  `idCity` int(11) NOT NULL,
  `nameCity` varchar(200) DEFAULT NULL,
  `description` longtext,
  `idcountry_id` int(11) NOT NULL,
  `idstatus_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_city`
--

INSERT INTO `tb_city` (`idCity`, `nameCity`, `description`, `idcountry_id`, `idstatus_id`) VALUES
(1, 'Bogota', '', 2, 1),
(2, 'Cali', '', 2, 1),
(3, 'Medellin', '', 2, 1),
(4, 'Cucuta', '', 2, 1),
(5, 'Barranquilla', '', 2, 1),
(6, 'Pasto', '', 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_country`
--

CREATE TABLE `tb_country` (
  `idCountry` int(11) NOT NULL,
  `nameCountry` varchar(200) DEFAULT NULL,
  `description` longtext,
  `idstatus_id` int(11) NOT NULL
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
-- Estructura de tabla para la tabla `tb_store`
--

CREATE TABLE `tb_store` (
  `idStore` int(11) NOT NULL,
  `nameStore` varchar(200) DEFAULT NULL,
  `description` longtext,
  `address` varchar(500) DEFAULT NULL,
  `phoneStore` varchar(200) DEFAULT NULL,
  `mailStore` varchar(200) DEFAULT NULL,
  `website` varchar(200) DEFAULT NULL,
  `lat` varchar(200) DEFAULT NULL,
  `lon` varchar(200) DEFAULT NULL,
  `dateRegister` datetime(6) DEFAULT NULL,
  `idcity_id` int(11) NOT NULL,
  `idstatus_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_store`
--

INSERT INTO `tb_store` (`idStore`, `nameStore`, `description`, `address`, `phoneStore`, `mailStore`, `website`, `lat`, `lon`, `dateRegister`, `idcity_id`, `idstatus_id`) VALUES
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
  `dateOfBirth` datetime(6) DEFAULT NULL,
  `phoneUser` varchar(200) DEFAULT NULL,
  `passUser` varchar(255) DEFAULT NULL,
  `idstatus_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_user`
--

INSERT INTO `tb_user` (`idUser`, `userName`, `mailUser`, `firstName`, `lastName`, `dni`, `address`, `dateOfBirth`, `phoneUser`, `passUser`, `idstatus_id`) VALUES
(1, 'usuario1', NULL, NULL, NULL, '123456', NULL, NULL, NULL, NULL, 1),
(2, 'usuario2', NULL, NULL, NULL, '1234567', NULL, NULL, NULL, NULL, 1),
(3, 'usuario3', NULL, NULL, NULL, '12345678', NULL, NULL, NULL, NULL, 1),
(4, 'usuario4', NULL, NULL, NULL, '12345653', NULL, NULL, NULL, NULL, 1),
(5, 'usuario5', NULL, NULL, NULL, '3432432423', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_user_store`
--

CREATE TABLE `tb_user_store` (
  `idUserStore` int(11) NOT NULL,
  `idstatus_id` int(11) NOT NULL,
  `idstore_id` int(11) NOT NULL,
  `iduser_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tb_user_store`
--

INSERT INTO `tb_user_store` (`idUserStore`, `idstatus_id`, `idstore_id`, `iduser_id`) VALUES
(1, 1, 1, 1),
(2, 1, 2, 1),
(3, 1, 3, 1),
(4, 1, 4, 1),
(5, 1, 5, 1),
(6, 1, 1, 2),
(7, 1, 5, 2),
(8, 1, 6, 2),
(9, 1, 7, 2),
(10, 1, 8, 2),
(11, 1, 9, 2),
(12, 1, 1, 3),
(13, 1, 2, 3),
(14, 1, 3, 3),
(15, 1, 4, 3),
(16, 1, 5, 3),
(17, 1, 5, 4),
(18, 1, 6, 4),
(19, 1, 7, 4),
(20, 1, 8, 4),
(21, 1, 9, 4),
(22, 1, 10, 4),
(23, 1, 1, 5),
(24, 1, 2, 5),
(25, 1, 3, 5),
(26, 1, 4, 5),
(27, 1, 5, 5);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tb_city`
--
ALTER TABLE `tb_city`
  ADD PRIMARY KEY (`idCity`),
  ADD KEY `tb_city_idcountry_id_e7ced75a` (`idcountry_id`),
  ADD KEY `tb_city_idstatus_id_7dd88516` (`idstatus_id`);

--
-- Indices de la tabla `tb_country`
--
ALTER TABLE `tb_country`
  ADD PRIMARY KEY (`idCountry`),
  ADD KEY `tb_country_idstatus_id_3b0cdf69` (`idstatus_id`);

--
-- Indices de la tabla `tb_status`
--
ALTER TABLE `tb_status`
  ADD PRIMARY KEY (`idStatus`);

--
-- Indices de la tabla `tb_store`
--
ALTER TABLE `tb_store`
  ADD PRIMARY KEY (`idStore`),
  ADD KEY `tb_store_idcity_id_84a26ce5` (`idcity_id`),
  ADD KEY `tb_store_idstatus_id_03454d6b` (`idstatus_id`);

--
-- Indices de la tabla `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`idUser`),
  ADD UNIQUE KEY `userName` (`userName`),
  ADD UNIQUE KEY `dni` (`dni`),
  ADD KEY `tb_user_idstatus_id_233bfff9_fk_tb_status_idStatus` (`idstatus_id`);

--
-- Indices de la tabla `tb_user_store`
--
ALTER TABLE `tb_user_store`
  ADD PRIMARY KEY (`idUserStore`),
  ADD KEY `tb_user_store_idstatus_id_356a1460` (`idstatus_id`),
  ADD KEY `tb_user_store_idstore_id_4693ea5e` (`idstore_id`),
  ADD KEY `tb_user_store_iduser_id_3ec18ed2` (`iduser_id`);

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
