-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-10-2024 a las 14:27:33
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
-- Base de datos: `hospitales_victor`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atencion`
--

CREATE TABLE `atencion` (
  `id_atencion` int(11) NOT NULL,
  `id_medico` int(11) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `complicaciones`
--

CREATE TABLE `complicaciones` (
  `id_complicacion` int(11) NOT NULL,
  `id_diagnostico` int(11) NOT NULL,
  `descripcion` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `diagnosticos`
--

CREATE TABLE `diagnosticos` (
  `id_diagnostico` int(11) NOT NULL,
  `codigo_diagnostico` varchar(20) NOT NULL,
  `id_paciente` int(11) NOT NULL,
  `fecha_diagnostico` date NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitales`
--

CREATE TABLE `hospitales` (
  `id_hospital` int(11) NOT NULL,
  `codigo_hospital` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `hospitales_laboratorios`
--

CREATE TABLE `hospitales_laboratorios` (
  `id_hospital_laboratorio` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL,
  `id_laboratorio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `laboratorios`
--

CREATE TABLE `laboratorios` (
  `id_laboratorio` int(11) NOT NULL,
  `codigo_laboratorio` varchar(20) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `direccion` varchar(30) NOT NULL,
  `telefono` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `medicos`
--

CREATE TABLE `medicos` (
  `id_medico` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL,
  `especialidad` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pacientes`
--

CREATE TABLE `pacientes` (
  `id_paciente` int(11) NOT NULL,
  `id_persona` int(11) NOT NULL,
  `numero_registro` varchar(20) NOT NULL,
  `id_sala` int(11) NOT NULL,
  `direccion` varchar(80) NOT NULL,
  `sexo` enum('hombre','mujer','otro','') NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `numero_cama` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id_persona` int(11) NOT NULL,
  `dni` int(9) NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salas`
--

CREATE TABLE `salas` (
  `id_sala` int(11) NOT NULL,
  `id_hospital` int(11) NOT NULL,
  `codigo_sala` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `numero_camas` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `ID_MEDICO` (`id_medico`),
  ADD KEY `ID_PACIENTE` (`id_paciente`);

--
-- Indices de la tabla `complicaciones`
--
ALTER TABLE `complicaciones`
  ADD PRIMARY KEY (`id_complicacion`),
  ADD KEY `ID_DIAGNOSTICO` (`id_diagnostico`);

--
-- Indices de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD PRIMARY KEY (`id_diagnostico`),
  ADD UNIQUE KEY `CODIGO_DIAGNOSTICO` (`codigo_diagnostico`),
  ADD KEY `ID_PACIENTE` (`id_paciente`);

--
-- Indices de la tabla `hospitales`
--
ALTER TABLE `hospitales`
  ADD PRIMARY KEY (`id_hospital`),
  ADD UNIQUE KEY `CODIGO_HOSPITAL` (`codigo_hospital`);

--
-- Indices de la tabla `hospitales_laboratorios`
--
ALTER TABLE `hospitales_laboratorios`
  ADD PRIMARY KEY (`id_hospital_laboratorio`),
  ADD KEY `ID_HOSPITAL` (`id_hospital`),
  ADD KEY `ID_LABORATORIO` (`id_laboratorio`);

--
-- Indices de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  ADD PRIMARY KEY (`id_laboratorio`),
  ADD KEY `CODIGO_LABORATORIO` (`codigo_laboratorio`);

--
-- Indices de la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD PRIMARY KEY (`id_medico`),
  ADD KEY `ID_HOSPITAL` (`id_hospital`),
  ADD KEY `ID_PERSONA` (`id_persona`);

--
-- Indices de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD PRIMARY KEY (`id_paciente`),
  ADD UNIQUE KEY `NUMERO_REGISTRO` (`numero_registro`),
  ADD KEY `ID_SALA` (`id_sala`),
  ADD KEY `ID_PERSONA` (`id_persona`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id_persona`),
  ADD UNIQUE KEY `DNI` (`dni`);

--
-- Indices de la tabla `salas`
--
ALTER TABLE `salas`
  ADD PRIMARY KEY (`id_sala`),
  ADD UNIQUE KEY `COD_SALA_NOMBRE` (`codigo_sala`,`nombre`),
  ADD KEY `ID_HOSPITAL` (`id_hospital`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atencion`
--
ALTER TABLE `atencion`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `complicaciones`
--
ALTER TABLE `complicaciones`
  MODIFY `id_complicacion` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  MODIFY `id_diagnostico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hospitales`
--
ALTER TABLE `hospitales`
  MODIFY `id_hospital` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `hospitales_laboratorios`
--
ALTER TABLE `hospitales_laboratorios`
  MODIFY `id_hospital_laboratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `laboratorios`
--
ALTER TABLE `laboratorios`
  MODIFY `id_laboratorio` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `medicos`
--
ALTER TABLE `medicos`
  MODIFY `id_medico` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `pacientes`
--
ALTER TABLE `pacientes`
  MODIFY `id_paciente` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id_persona` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `salas`
--
ALTER TABLE `salas`
  MODIFY `id_sala` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atencion`
--
ALTER TABLE `atencion`
  ADD CONSTRAINT `atencion_ibfk_1` FOREIGN KEY (`id_medico`) REFERENCES `medicos` (`id_medico`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `atencion_ibfk_2` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `complicaciones`
--
ALTER TABLE `complicaciones`
  ADD CONSTRAINT `complicaciones_ibfk_1` FOREIGN KEY (`id_diagnostico`) REFERENCES `diagnosticos` (`id_diagnostico`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `diagnosticos`
--
ALTER TABLE `diagnosticos`
  ADD CONSTRAINT `diagnosticos_ibfk_1` FOREIGN KEY (`id_paciente`) REFERENCES `pacientes` (`id_paciente`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `hospitales_laboratorios`
--
ALTER TABLE `hospitales_laboratorios`
  ADD CONSTRAINT `hospitales_laboratorios_ibfk_1` FOREIGN KEY (`id_hospital`) REFERENCES `hospitales` (`id_hospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospitales_laboratorios_ibfk_2` FOREIGN KEY (`id_laboratorio`) REFERENCES `laboratorios` (`id_laboratorio`);

--
-- Filtros para la tabla `medicos`
--
ALTER TABLE `medicos`
  ADD CONSTRAINT `medicos_ibfk_2` FOREIGN KEY (`id_hospital`) REFERENCES `hospitales` (`id_hospital`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medicos_ibfk_3` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `pacientes`
--
ALTER TABLE `pacientes`
  ADD CONSTRAINT `pacientes_ibfk_2` FOREIGN KEY (`id_sala`) REFERENCES `salas` (`id_sala`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pacientes_ibfk_3` FOREIGN KEY (`id_persona`) REFERENCES `personas` (`id_persona`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `salas`
--
ALTER TABLE `salas`
  ADD CONSTRAINT `salas_ibfk_1` FOREIGN KEY (`id_hospital`) REFERENCES `hospitales` (`id_hospital`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
