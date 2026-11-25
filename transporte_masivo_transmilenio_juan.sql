-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2026 a las 04:24:24
-- Versión del servidor: 10.11.19-MariaDB
-- Versión de PHP: 8.3.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `transporte_masivo_transmilenio_juan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `buses`
--

CREATE TABLE `buses` (
  `id_bus` int(11) NOT NULL,
  `numero_interno` varchar(15) NOT NULL,
  `placa` varchar(10) NOT NULL,
  `tipo_bus` varchar(30) NOT NULL,
  `capacidad_pasajeros` int(11) NOT NULL,
  `tecnologia` varchar(30) NOT NULL,
  `id_ruta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `buses`
--

INSERT INTO `buses` (`id_bus`, `numero_interno`, `placa`, `tipo_bus`, `capacidad_pasajeros`, `tecnologia`, `id_ruta`) VALUES
(301, 'k1001', 'wcl-412', 'biartikulado', 250, 'gas natural euro vi', 201),
(302, 'k1002', 'wcl-415', 'biarticulado', 250, 'gas natural euro vi', 202),
(303, 'a2010', 'sxy-890', 'articulado', 160, 'electrico', 203),
(304, 'b3045', 'vfr-231', 'biarticulado', 250, 'gas natural euro vi', 204),
(305, 'c4012', 'tgb-564', 'artikulado', 160, 'electrico', 205),
(306, 'c4018', 'tgb-599', 'articulado', 160, 'electrico', 206),
(307, 'd5022', 'yhn-771', 'articulado', 160, 'disel euro v', 207),
(308, 'e6033', 'ujm-104', 'biarticulado', 250, 'gas natural euro vi', 208),
(309, 'f7041', 'ikl-328', 'articulado', 160, 'electrico', 209),
(310, 'g8055', 'opq-912', 'biarticulado', 250, 'gas natural euro vi', 210);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estaciones`
--

CREATE TABLE `estaciones` (
  `id_estacion` int(11) NOT NULL,
  `nombre_estacion` varchar(100) NOT NULL,
  `tipo_estacion` varchar(30) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `id_troncal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `estaciones`
--

INSERT INTO `estaciones` (`id_estacion`, `nombre_estacion`, `tipo_estacion`, `direccion`, `id_troncal`) VALUES
(101, 'calle 72', 'sensilla', 'av caracas con calle 72', 1),
(102, 'portal norte', 'portal', 'autopista norte con calle 175', 2),
(103, 'portal suba', 'portal', 'av suba con av ciudad de cali', 3),
(104, 'portal 80', 'portal', 'calle 80 con carrera 100', 4),
(105, 'ricaurte', 'intercanbio', 'av nqs con calle 13', 5),
(106, 'portal americas', 'portal', 'av ciudad de cali con villavicensio', 6),
(107, 'portal sur', 'portal', 'autopista sur con carrera 73', 7),
(108, 'portal usme', 'portal', 'av caracas sur con calle 65 sur', 8),
(109, 'las aguas', 'sencilla', 'carrera 3 con calle 18', 9),
(110, 'portal el dorado', 'portal', 'av el dorado con carrera 93', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rutas`
--

CREATE TABLE `rutas` (
  `id_ruta` int(11) NOT NULL,
  `codigo_ruta` varchar(10) NOT NULL,
  `tipo_servicio` varchar(30) NOT NULL,
  `horario_operacion` varchar(50) NOT NULL,
  `tarifa_pesos` int(11) NOT NULL,
  `id_estacion_origen` int(11) NOT NULL,
  `id_estacion_destino` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `rutas`
--

INSERT INTO `rutas` (`id_ruta`, `codigo_ruta`, `tipo_servicio`, `horario_operacion`, `tarifa_pesos`, `id_estacion_origen`, `id_estacion_destino`) VALUES
(201, 'b75', 'expreso', 'l-s 04:30 - 23:00', 3550, 108, 102),
(202, 'h75', 'espreso', 'l-s 05:00 - 23:00', 3550, 102, 108),
(203, 'c15', 'expreso', 'l-s 04:30 - 23:00', 3550, 108, 103),
(204, 'd10', 'expreso', 'l-s 04:30 - 23:00', 3550, 102, 104),
(205, 'f23', 'expreso', 'l-s 05:00 - 23:00', 3550, 109, 106),
(206, 'j23', 'espreso', 'l-s 05:00 - 23:00', 3550, 106, 109),
(207, 'g43', 'expreso', 'l-v 05:00 - 22:30', 3550, 104, 107),
(208, 'k10', 'expreso', 'l-s 04:30 - 23:00', 3550, 108, 110),
(209, 'b70', 'expreso', 'l-v 15:00 - 20:00', 3550, 109, 102),
(210, 'a60', 'expreso', 'l-v 05:30 - 21:00', 3550, 106, 101);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `troncales`
--

CREATE TABLE `troncales` (
  `id_troncal` int(11) NOT NULL,
  `letra_zona` varchar(5) NOT NULL,
  `nombre_troncal` varchar(100) NOT NULL,
  `corredor_vial` varchar(100) NOT NULL,
  `longitud_km` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `troncales`
--

INSERT INTO `troncales` (`id_troncal`, `letra_zona`, `nombre_troncal`, `corredor_vial`, `longitud_km`) VALUES
(1, 'a', 'caracas', 'abenida caracas', 11.50),
(2, 'b', 'autonorte', 'autopista norte', 10.20),
(3, 'c', 'suba', 'avenida suba', 10.80),
(4, 'd', 'calle 80', 'avenida calle ochenta', 10.10),
(5, 'e', 'nqs sentral', 'avenida nqs carrera 30', 9.40),
(6, 'f', 'americas', 'avenida de las amerikas', 12.60),
(7, 'g', 'nqs sur', 'autopista surr', 11.80),
(8, 'h', 'caracas sur', 'avenida caracas sur', 9.70),
(9, 'j', 'eje anbiental', 'avenida jimenez', 2.30),
(10, 'k', 'calle 26', 'avenida el dorao', 11.40);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `buses`
--
ALTER TABLE `buses`
  ADD PRIMARY KEY (`id_bus`),
  ADD KEY `fk_buses_ruta` (`id_ruta`);

--
-- Indices de la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD PRIMARY KEY (`id_estacion`),
  ADD KEY `fk_estaciones_troncal` (`id_troncal`);

--
-- Indices de la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD PRIMARY KEY (`id_ruta`),
  ADD KEY `fk_rutas_origen` (`id_estacion_origen`),
  ADD KEY `fk_rutas_destino` (`id_estacion_destino`);

--
-- Indices de la tabla `troncales`
--
ALTER TABLE `troncales`
  ADD PRIMARY KEY (`id_troncal`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `buses`
--
ALTER TABLE `buses`
  ADD CONSTRAINT `fk_buses_ruta` FOREIGN KEY (`id_ruta`) REFERENCES `rutas` (`id_ruta`);

--
-- Filtros para la tabla `estaciones`
--
ALTER TABLE `estaciones`
  ADD CONSTRAINT `fk_estaciones_troncal` FOREIGN KEY (`id_troncal`) REFERENCES `troncales` (`id_troncal`);

--
-- Filtros para la tabla `rutas`
--
ALTER TABLE `rutas`
  ADD CONSTRAINT `fk_rutas_destino` FOREIGN KEY (`id_estacion_destino`) REFERENCES `estaciones` (`id_estacion`),
  ADD CONSTRAINT `fk_rutas_origen` FOREIGN KEY (`id_estacion_origen`) REFERENCES `estaciones` (`id_estacion`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
