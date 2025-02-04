-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-10-2024 a las 11:45:04
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baloncesto_profesor`
--
DROP DATABASE IF EXISTS `baloncesto_profesor`;
CREATE DATABASE IF NOT EXISTS `baloncesto_profesor` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `baloncesto_profesor`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipos`
--

CREATE TABLE `equipos` (
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `id_pabellon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id_jugador` int(11) NOT NULL,
  `id_partido` int(11) NOT NULL,
  `minutos` time NOT NULL,
  `puntos` tinyint(3) UNSIGNED NOT NULL,
  `rebotes` tinyint(3) UNSIGNED NOT NULL,
  `asistencias` tinyint(2) UNSIGNED NOT NULL,
  `faltas` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores`
--

CREATE TABLE `jugadores` (
  `id_jugador` int(11) NOT NULL,
  `id_equipo` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `dorsal` varchar(3) NOT NULL,
  `estatura` int(3) NOT NULL COMMENT 'Estatura en centímetros.'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugadores_posiciones`
--

CREATE TABLE `jugadores_posiciones` (
  `id_posicion` int(11) NOT NULL,
  `id_jugador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pabellones`
--

CREATE TABLE `pabellones` (
  `id_pabellon` int(11) NOT NULL COMMENT 'Clave principal',
  `nombre` varchar(30) NOT NULL COMMENT 'Nombre del pabellón',
  `ciudad` varchar(20) NOT NULL,
  `capacidad` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `partidos`
--

CREATE TABLE `partidos` (
  `id_partido` int(11) NOT NULL,
  `resultado` varchar(10) NOT NULL,
  `id_pabellon` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posiciones`
--

CREATE TABLE `posiciones` (
  `id_posicion` int(11) NOT NULL,
  `posicion` enum('Base','Alero','Pivot','Ala-pivot','Chupabanquillos') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD PRIMARY KEY (`id_equipo`),
  ADD UNIQUE KEY `NOMBRE` (`nombre`),
  ADD KEY `ID_PABELLON` (`id_pabellon`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD KEY `JUGADOR_PARTIDO` (`id_jugador`,`id_partido`),
  ADD KEY `id_partido` (`id_partido`);

--
-- Indices de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD PRIMARY KEY (`id_jugador`),
  ADD KEY `NOMBRE` (`id_equipo`);

--
-- Indices de la tabla `jugadores_posiciones`
--
ALTER TABLE `jugadores_posiciones`
  ADD KEY `POSION_JUGADOR` (`id_posicion`,`id_jugador`),
  ADD KEY `id_jugador` (`id_jugador`);

--
-- Indices de la tabla `pabellones`
--
ALTER TABLE `pabellones`
  ADD PRIMARY KEY (`id_pabellon`);

--
-- Indices de la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD PRIMARY KEY (`id_partido`),
  ADD KEY `ID_PABELLON` (`id_pabellon`);

--
-- Indices de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  ADD PRIMARY KEY (`id_posicion`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `equipos`
--
ALTER TABLE `equipos`
  MODIFY `id_equipo` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `jugadores`
--
ALTER TABLE `jugadores`
  MODIFY `id_jugador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pabellones`
--
ALTER TABLE `pabellones`
  MODIFY `id_pabellon` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Clave principal';

--
-- AUTO_INCREMENT de la tabla `partidos`
--
ALTER TABLE `partidos`
  MODIFY `id_partido` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `posiciones`
--
ALTER TABLE `posiciones`
  MODIFY `id_posicion` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `equipos`
--
ALTER TABLE `equipos`
  ADD CONSTRAINT `equipos_ibfk_1` FOREIGN KEY (`id_pabellon`) REFERENCES `pabellones` (`id_pabellon`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD CONSTRAINT `estadisticas_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `estadisticas_ibfk_2` FOREIGN KEY (`id_partido`) REFERENCES `partidos` (`id_partido`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadores`
--
ALTER TABLE `jugadores`
  ADD CONSTRAINT `jugadores_ibfk_1` FOREIGN KEY (`id_equipo`) REFERENCES `equipos` (`id_equipo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `jugadores_posiciones`
--
ALTER TABLE `jugadores_posiciones`
  ADD CONSTRAINT `jugadores_posiciones_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jugadores_posiciones_ibfk_2` FOREIGN KEY (`id_posicion`) REFERENCES `posiciones` (`id_posicion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `partidos`
--
ALTER TABLE `partidos`
  ADD CONSTRAINT `partidos_ibfk_1` FOREIGN KEY (`id_pabellon`) REFERENCES `pabellones` (`id_pabellon`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
