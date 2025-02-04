-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 10:21:10
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
-- Base de datos: `aerea`
--
CREATE DATABASE IF NOT EXISTS `aerea` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `aerea`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aeropuertos`
--

CREATE TABLE `aeropuertos` (
  `ID_aeropuerto` int(11) NOT NULL,
  `codigo_aeropuerto` varchar(9) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `localidad` varchar(50) NOT NULL,
  `Pais` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aeropuertos`
--

INSERT INTO `aeropuertos` (`ID_aeropuerto`, `codigo_aeropuerto`, `nombre`, `localidad`, `Pais`) VALUES
(1, 'MAD', 'Madrid Barajas Adolfo Suarez', 'Madrid', 'España'),
(2, 'ATH', 'Aeropuerto Internacional Eleftherios Venizelos', 'Atenas', 'Grecia'),
(3, 'FDO', 'Aeropuerto Internacional de San Fernando', 'Buenos Aires', 'Argentina'),
(4, 'ALC', 'Aeropuerto de Alicante-Elche Miguel Hernández', 'Alicante', 'España');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asientos`
--

CREATE TABLE `asientos` (
  `ID_Asiento` int(11) NOT NULL,
  `Id_avion` int(11) NOT NULL,
  `numero` char(3) NOT NULL COMMENT 'Ejemplo 23A, primero el numero y luego letra',
  `fila` char(3) NOT NULL,
  `columna` char(3) NOT NULL,
  `Planta` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `asientos`
--

INSERT INTO `asientos` (`ID_Asiento`, `Id_avion`, `numero`, `fila`, `columna`, `Planta`) VALUES
(1, 1, '2', '1', '3', '0'),
(2, 1, '7', '5', '4', '1'),
(3, 2, '23a', '23', '1', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `aviones`
--

CREATE TABLE `aviones` (
  `ID_Avion` int(11) NOT NULL,
  `codigo_avion` varchar(9) NOT NULL,
  `plazas` char(3) NOT NULL COMMENT 'Sumatorio de numero de aientos por avion'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `aviones`
--

INSERT INTO `aviones` (`ID_Avion`, `codigo_avion`, `plazas`) VALUES
(1, 'Boing737', '800'),
(2, 'BT676', '500');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `ID_Cliente` int(11) NOT NULL,
  `DNI_cliente` varchar(9) NOT NULL COMMENT 'Con Letra',
  `Nombre` varchar(15) NOT NULL,
  `Apellidos` varchar(25) NOT NULL,
  `Direccion` varchar(200) NOT NULL COMMENT 'Tipo de via, nombre de via, numero, escalera, planta, puerta.',
  `Telefono` varchar(13) NOT NULL COMMENT 'Poner con prefijo, ejemplo españa: 34xxxxxxxxx'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`ID_Cliente`, `DNI_cliente`, `Nombre`, `Apellidos`, `Direccion`, `Telefono`) VALUES
(1, '48596235', 'Patricia', 'nuñez calle', 'Costa brava 20, madrid', '689598566'),
(2, '87596324', 'Julian', 'Martinez Garcia', 'Paseo de las delicias, 31, Madrid', '896578966'),
(3, '41587965', 'Alejandro', 'Martinez Gil', 'General Pintos 11, Madrid', '628987566'),
(4, '47859612', 'Ana', 'Moreno Colin', 'Gaztambide, 3, Madrid', '658789655');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `fechas_llegada`
--

CREATE TABLE `fechas_llegada` (
  `ID_Fecha_llegada` int(11) NOT NULL,
  `id_vuelo` int(11) NOT NULL,
  `fecha_llegada` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `fechas_llegada`
--

INSERT INTO `fechas_llegada` (`ID_Fecha_llegada`, `id_vuelo`, `fecha_llegada`) VALUES
(1, 1, '2024-11-07'),
(2, 2, '2024-09-25');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `ID_Reserva` int(11) NOT NULL,
  `Numero_Reserva` varchar(9) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas`
--

INSERT INTO `reservas` (`ID_Reserva`, `Numero_Reserva`, `ID_Cliente`, `Fecha`) VALUES
(1, '48869', 3, '2024-08-06'),
(2, '48552', 1, '2024-04-08'),
(3, '1559', 2, '2023-07-20'),
(4, '50225', 3, '2024-10-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas_embarques`
--

CREATE TABLE `reservas_embarques` (
  `ID_Reserva` int(11) NOT NULL,
  `id_tarjeta_embarque` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `reservas_embarques`
--

INSERT INTO `reservas_embarques` (`ID_Reserva`, `id_tarjeta_embarque`) VALUES
(1, 4),
(2, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_de_credito`
--

CREATE TABLE `tarjetas_de_credito` (
  `ID_Tarjeta_de_credito` int(11) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `Numero_tarjeta` varchar(18) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjetas_de_credito`
--

INSERT INTO `tarjetas_de_credito` (`ID_Tarjeta_de_credito`, `ID_Cliente`, `Numero_tarjeta`) VALUES
(1, 3, '4858659865892563'),
(2, 1, '7856985623657854');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tarjetas_embarque`
--

CREATE TABLE `tarjetas_embarque` (
  `ID_tarjeta_embarque` int(11) NOT NULL,
  `codigo_embarque` varchar(15) NOT NULL,
  `ID_Cliente` int(11) NOT NULL,
  `ID_asiento` int(11) NOT NULL,
  `ID_Vuelo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tarjetas_embarque`
--

INSERT INTO `tarjetas_embarque` (`ID_tarjeta_embarque`, `codigo_embarque`, `ID_Cliente`, `ID_asiento`, `ID_Vuelo`) VALUES
(3, '1', 1, 1, 1),
(4, '2', 2, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelos`
--

CREATE TABLE `vuelos` (
  `ID_vuelo` int(11) NOT NULL,
  `Id_avion` int(11) NOT NULL,
  `id_aeropuerto_salida` int(11) NOT NULL,
  `Id_aeropuerto_llegada` int(11) NOT NULL,
  `Fecha_salida` date NOT NULL,
  `codigo_vuelo` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `vuelos`
--

INSERT INTO `vuelos` (`ID_vuelo`, `Id_avion`, `id_aeropuerto_salida`, `Id_aeropuerto_llegada`, `Fecha_salida`, `codigo_vuelo`) VALUES
(1, 1, 4, 3, '2024-11-15', 'IB4567'),
(2, 2, 1, 4, '2024-10-25', 'RY234');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
  ADD PRIMARY KEY (`ID_aeropuerto`),
  ADD UNIQUE KEY `codigo_aeropuerto` (`codigo_aeropuerto`);

--
-- Indices de la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD PRIMARY KEY (`ID_Asiento`),
  ADD KEY `Id_avion` (`Id_avion`);

--
-- Indices de la tabla `aviones`
--
ALTER TABLE `aviones`
  ADD PRIMARY KEY (`ID_Avion`),
  ADD UNIQUE KEY `codigo_avion` (`codigo_avion`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`ID_Cliente`),
  ADD UNIQUE KEY `DNI_cliente` (`DNI_cliente`);

--
-- Indices de la tabla `fechas_llegada`
--
ALTER TABLE `fechas_llegada`
  ADD PRIMARY KEY (`ID_Fecha_llegada`),
  ADD KEY `id_vuelo` (`id_vuelo`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`ID_Reserva`),
  ADD UNIQUE KEY `Numero_Reserva` (`Numero_Reserva`),
  ADD UNIQUE KEY `Numero_Reserva_2` (`Numero_Reserva`),
  ADD KEY `Dni_cliente` (`Numero_Reserva`,`ID_Cliente`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `reservas_embarques`
--
ALTER TABLE `reservas_embarques`
  ADD KEY `id_tarjeta_embarque` (`ID_Reserva`,`id_tarjeta_embarque`),
  ADD KEY `id_tarjeta_embarque_2` (`id_tarjeta_embarque`);

--
-- Indices de la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  ADD PRIMARY KEY (`ID_Tarjeta_de_credito`),
  ADD UNIQUE KEY `Numero_tarjeta` (`Numero_tarjeta`),
  ADD KEY `Dni_cliente` (`ID_Cliente`);

--
-- Indices de la tabla `tarjetas_embarque`
--
ALTER TABLE `tarjetas_embarque`
  ADD PRIMARY KEY (`ID_tarjeta_embarque`),
  ADD KEY `codigo_vuelo` (`codigo_embarque`,`ID_asiento`,`ID_Vuelo`),
  ADD KEY `ID_asiento` (`ID_asiento`),
  ADD KEY `ID_Vuelo` (`ID_Vuelo`),
  ADD KEY `ID_Cliente` (`ID_Cliente`);

--
-- Indices de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD PRIMARY KEY (`ID_vuelo`),
  ADD UNIQUE KEY `codigo_vuelo` (`codigo_vuelo`),
  ADD KEY `id_aeropuerto` (`Id_avion`,`id_aeropuerto_salida`,`Id_aeropuerto_llegada`,`Fecha_salida`),
  ADD KEY `id_aeropuerto_salida` (`id_aeropuerto_salida`),
  ADD KEY `Id_aeropuerto_llegada` (`Id_aeropuerto_llegada`),
  ADD KEY `Fecha_salida` (`Fecha_salida`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `aeropuertos`
--
ALTER TABLE `aeropuertos`
  MODIFY `ID_aeropuerto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `asientos`
--
ALTER TABLE `asientos`
  MODIFY `ID_Asiento` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `aviones`
--
ALTER TABLE `aviones`
  MODIFY `ID_Avion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `ID_Cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `fechas_llegada`
--
ALTER TABLE `fechas_llegada`
  MODIFY `ID_Fecha_llegada` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `ID_Reserva` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  MODIFY `ID_Tarjeta_de_credito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tarjetas_embarque`
--
ALTER TABLE `tarjetas_embarque`
  MODIFY `ID_tarjeta_embarque` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `vuelos`
--
ALTER TABLE `vuelos`
  MODIFY `ID_vuelo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `asientos`
--
ALTER TABLE `asientos`
  ADD CONSTRAINT `asientos_ibfk_1` FOREIGN KEY (`Id_avion`) REFERENCES `aviones` (`ID_Avion`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `fechas_llegada`
--
ALTER TABLE `fechas_llegada`
  ADD CONSTRAINT `fechas_llegada_ibfk_1` FOREIGN KEY (`id_vuelo`) REFERENCES `vuelos` (`ID_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD CONSTRAINT `reservas_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reservas_embarques`
--
ALTER TABLE `reservas_embarques`
  ADD CONSTRAINT `reservas_embarques_ibfk_1` FOREIGN KEY (`ID_Reserva`) REFERENCES `reservas` (`ID_Reserva`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `reservas_embarques_ibfk_2` FOREIGN KEY (`id_tarjeta_embarque`) REFERENCES `tarjetas_embarque` (`ID_tarjeta_embarque`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetas_de_credito`
--
ALTER TABLE `tarjetas_de_credito`
  ADD CONSTRAINT `tarjetas_de_credito_ibfk_1` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tarjetas_embarque`
--
ALTER TABLE `tarjetas_embarque`
  ADD CONSTRAINT `tarjetas_embarque_ibfk_1` FOREIGN KEY (`ID_asiento`) REFERENCES `asientos` (`ID_Asiento`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tarjetas_embarque_ibfk_2` FOREIGN KEY (`ID_Vuelo`) REFERENCES `vuelos` (`ID_vuelo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tarjetas_embarque_ibfk_3` FOREIGN KEY (`ID_Cliente`) REFERENCES `clientes` (`ID_Cliente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `vuelos`
--
ALTER TABLE `vuelos`
  ADD CONSTRAINT `vuelos_ibfk_1` FOREIGN KEY (`Id_avion`) REFERENCES `aviones` (`ID_Avion`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelos_ibfk_2` FOREIGN KEY (`id_aeropuerto_salida`) REFERENCES `aeropuertos` (`ID_aeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `vuelos_ibfk_3` FOREIGN KEY (`Id_aeropuerto_llegada`) REFERENCES `aeropuertos` (`ID_aeropuerto`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
