-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 09:15:08
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
-- Base de datos: `aerolinea_victor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuertos`
--

CREATE TABLE `aeropuertos` (
  `id_aeropuerto` int(11) NOT NULL,
  `cod_aeropuerto` varchar(16) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `pais` varchar(20) NOT NULL,
  `localidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `id_asiento` int(11) NOT NULL,
  `id_avion` int(11) NOT NULL,
  `numero` varchar(6) NOT NULL,
  `fila` varchar(3) NOT NULL,
  `columna` varchar(2) NOT NULL,
  `piso` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE `aviones` (
  `id_avion` int(11) NOT NULL,
  `cod_avion` varchar(16) NOT NULL,
  `plazas` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `apellidos` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL,
  `direccion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechasllegadas`
--

CREATE TABLE `fechasllegadas` (
  `id_fecha` int(11) NOT NULL,
  `id_vuelo` int(11) NOT NULL,
  `fecha_llegada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id_reserva` int(11) NOT NULL,
  `num_reserva` varchar(16) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_embarques`
--

CREATE TABLE `reservas_embarques` (
  `id_reserva` int(11) NOT NULL,
  `id_embarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetascredito`
--

CREATE TABLE `tarjetascredito` (
  `id_tarjeta` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `NumeroTarjeta` varchar(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetasembarque`
--

CREATE TABLE `tarjetasembarque` (
  `id_embarque` int(11) NOT NULL,
  `cod_embarque` varchar(16) NOT NULL,
  `id_asiento` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_vuelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `id_vuelo` int(11) NOT NULL,
  `id_avion` int(11) NOT NULL,
  `cod_vuelo` varchar(16) NOT NULL,
  `id_aeropuerto_salida` int(11) NOT NULL,
  `id_aeropuerto_llegada` int(11) NOT NULL,
  `fecha_salida` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
  ADD PRIMARY KEY (`id_aeropuerto`),
  ADD UNIQUE KEY `COD_AEROPUERTO` (`cod_aeropuerto`);

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`id_asiento`),
  ADD KEY `ID_AVION` (`id_avion`);

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD PRIMARY KEY (`id_avion`),
  ADD UNIQUE KEY `COD_AVION` (`cod_avion`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `DNI_C` (`dni`);

--
-- Indices de la tabla `fechasllegadas`
--
ALTER TABLE `fechasllegadas`
  ADD PRIMARY KEY (`id_fecha`),
  ADD KEY `ID_VUELO` (`id_vuelo`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id_reserva`),
  ADD UNIQUE KEY `NUM_RESERVA` (`num_reserva`),
  ADD KEY `ID_CLIENTE` (`id_cliente`);

--
-- Indices de la tabla `reservas_embarques`
--
ALTER TABLE `reservas_embarques`
  ADD KEY `ID_RESERVA` (`id_reserva`),
  ADD KEY `ID_EMBARQUE` (`id_embarque`);

--
-- Indices de la tabla `tarjetascredito`
--
ALTER TABLE `tarjetascredito`
  ADD PRIMARY KEY (`id_tarjeta`),
  ADD KEY `ID_CLIENTE` (`id_cliente`);

--
-- Indices de la tabla `tarjetasembarque`
--
ALTER TABLE `tarjetasembarque`
  ADD PRIMARY KEY (`id_embarque`),
  ADD UNIQUE KEY `COD_EMBARQUE` (`cod_embarque`),
  ADD KEY `ID_ASIENTO` (`id_asiento`),
  ADD KEY `ID_CLIENTE` (`id_cliente`),
  ADD KEY `ID_VUELO` (`id_vuelo`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`id_vuelo`),
  ADD UNIQUE KEY `COD_VUELO` (`cod_vuelo`),
  ADD KEY `ID_AVION` (`id_avion`),
  ADD KEY `COD_AEROPUERTO_SALIDA` (`id_aeropuerto_salida`),
  ADD KEY `COD_AEROPUERTO_LLEGADA` (`id_aeropuerto_llegada`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
  MODIFY `id_aeropuerto` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `id_asiento` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `aviones`
--
ALTER TABLE `aviones`
  MODIFY `id_avion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `fechasllegadas`
--
ALTER TABLE `fechasllegadas`
  MODIFY `id_fecha` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id_reserva` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjetascredito`
--
ALTER TABLE `tarjetascredito`
  MODIFY `id_tarjeta` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tarjetasembarque`
--
ALTER TABLE `tarjetasembarque`
  MODIFY `id_embarque` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `id_vuelo` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `asientos_ibfk_1` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id_avion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fechasllegadas`
--
ALTER TABLE `fechasllegadas`
  ADD CONSTRAINT `fechasllegadas_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas_embarques`
--
ALTER TABLE `reservas_embarques`
  ADD CONSTRAINT `reservas_embarques_ibfk_1` FOREIGN KEY (`id_reserva`) REFERENCES `reservas` (`id_reserva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_embarques_ibfk_2` FOREIGN KEY (`id_embarque`) REFERENCES `tarjetasembarque` (`id_embarque`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetascredito`
--
ALTER TABLE `tarjetascredito`
  ADD CONSTRAINT `tarjetascredito_ibfk_1` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetasembarque`
--
ALTER TABLE `tarjetasembarque`
  ADD CONSTRAINT `tarjetasembarque_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`id_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tarjetasembarque_ibfk_2` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tarjetasembarque_ibfk_3` FOREIGN KEY (`id_asiento`) REFERENCES `asientos` (`id_asiento`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`id_aeropuerto_salida`) REFERENCES `aeropuertos` (`id_aeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`id_aeropuerto_llegada`) REFERENCES `aeropuertos` (`id_aeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelos_ibfk_3` FOREIGN KEY (`id_avion`) REFERENCES `aviones` (`id_avion`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
