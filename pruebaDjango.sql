-- phpMyAdmin SQL Dump
-- version 4.5.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2018 a las 07:18:23
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
-- Estructura de tabla para la tabla `tb_city`
--

CREATE TABLE `tb_city` (
  `idCity` int(11) NOT NULL,
  `nameCity` varchar(200) DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_spanish_ci,
  `idStatus` int(11) DEFAULT NULL,
  `idCountry` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_status`
--

CREATE TABLE `tb_status` (
  `idStatus` int(11) NOT NULL,
  `status` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

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
  MODIFY `idCity` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_country`
--
ALTER TABLE `tb_country`
  MODIFY `idCountry` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_status`
--
ALTER TABLE `tb_status`
  MODIFY `idStatus` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_store`
--
ALTER TABLE `tb_store`
  MODIFY `idStore` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tb_user_store`
--
ALTER TABLE `tb_user_store`
  MODIFY `idUserStore` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
