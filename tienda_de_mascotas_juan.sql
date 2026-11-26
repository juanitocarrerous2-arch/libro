-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-11-2026 a las 16:06:54
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
-- Base de datos: `tienda_de_mascotas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `atenciones`
--

CREATE TABLE `atenciones` (
  `id_atencion` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `total` float(10,2) NOT NULL,
  `id_mascota` int(11) NOT NULL,
  `id_servicio` int(11) NOT NULL,
  `id_producto` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `atenciones`
--

INSERT INTO `atenciones` (`id_atencion`, `fecha`, `total`, `id_mascota`, `id_servicio`, `id_producto`) VALUES
(1, '2026-11-01', 70000.00, 1, 1, 1),
(2, '2026-11-02', 62000.00, 2, 2, 2),
(3, '2026-11-03', 31200.00, 3, 3, 3),
(4, '2026-11-04', 57000.00, 4, 4, 4),
(5, '2026-11-05', 54000.00, 5, 5, 5),
(6, '2026-11-06', 39000.00, 6, 6, 6),
(7, '2026-11-07', 134000.00, 7, 7, 7),
(8, '2026-11-08', 89000.00, 8, 8, 8),
(9, '2026-11-09', 42500.00, 9, 9, 9),
(10, '2026-11-10', 55000.00, 10, 10, 10),
(11, '2026-11-11', 57000.00, 11, 11, 11),
(12, '2026-11-12', 44000.00, 12, 12, 12),
(13, '2026-11-13', 55500.00, 13, 13, 13),
(14, '2026-11-14', 53000.00, 14, 14, 14),
(15, '2026-11-15', 118000.00, 15, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `barrio` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `telefono`, `barrio`) VALUES
(1, 'juan felipe carrero', '3102001001', 'san mateo'),
(2, 'veronica castro', '3112001002', 'la despensa'),
(3, 'laura gomez', '3122001003', 'Comparta'),
(4, 'carlos mendoza', '3132001004', 'leon xiii'),
(5, 'maria fernanda rojas', '3142001005', 'madalena'),
(6, 'andres ruiz', '3152001006', 'suba'),
(7, 'diana carolina torres', '3162001007', 'kennedy'),
(8, 'santiago morales', '3172001008', 'fontibon'),
(9, 'paula andrea silva', '3182001009', 'soacha centro'),
(10, 'ricardo javier ortiz', '3192001010', 'engativa'),
(11, 'camila alejandra vargas', '3202001011', 'chapinero'),
(12, 'hector fabio ramirez', '3212001012', 'usaquen'),
(13, 'natalia jimenez', '3222001013', 'bosa'),
(14, 'oscar eduardo diaz', '3002001014', 'teusaquillo'),
(15, 'valeria martinez', '3012001015', 'ciudad verde');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mascotas`
--

CREATE TABLE `mascotas` (
  `id_mascota` int(11) NOT NULL,
  `nombre` varchar(10) NOT NULL,
  `especie` varchar(10) NOT NULL,
  `razza` varchar(30) NOT NULL,
  `edad_años` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mascotas`
--

INSERT INTO `mascotas` (`id_mascota`, `nombre`, `especie`, `razza`, `edad_años`, `id_cliente`) VALUES
(1, 'max', 'perro', 'criollo', 4, 1),
(2, 'luna', 'gato', 'mestizo', 2, 2),
(3, 'toby', 'perro', 'beagle', 5, 3),
(4, 'mia', 'gato', 'siames', 3, 4),
(5, 'simba', 'gato', 'persa', 1, 5),
(6, 'rocky', 'perro', 'labrador', 6, 6),
(7, 'nala', 'gato', 'carey', 2, 7),
(8, 'coco', 'perro', 'poodle', 7, 8),
(9, 'kiara', 'perro', 'golden retriever', 3, 9),
(10, 'zeus', 'perro', 'pastor aleman', 4, 10),
(11, 'lola', 'gato', 'angora', 2, 11),
(12, 'bruno', 'perro', 'french bulldog', 1, 12),
(13, 'canela', 'perro', 'schnauzer', 5, 13),
(14, 'milo', 'gato', 'naranja domestico', 3, 14),
(15, 'pelusa', 'gato', 'criollo', 4, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `tipo` varchar(20) NOT NULL,
  `precio` float(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `nombre`, `tipo`, `precio`, `stock`) VALUES
(1, 'concentrado adulto perro 2kg', 'alimento', 25000.00, 30),
(2, 'concentrado gato esterilizado 1.5kg', 'alimento', 27000.00, 25),
(3, 'sobre humedo pollo y zanahoria', 'alimento', 3200.00, 70),
(4, 'arena sanitaria aglutinante 5kg', 'higiene', 19000.00, 35),
(5, 'champu dermatologico 300ml', 'higiene', 22000.00, 20),
(6, 'pipeta antipulgas hasta 10kg', 'farmacia', 21000.00, 40),
(7, 'antiparasitario oral tableta', 'farmacia', 14000.00, 50),
(8, 'suplemento multivitaminico', 'farmacia', 34000.00, 18),
(9, 'snacks dentales x10 unidades', 'alimento', 12500.00, 45),
(10, 'juguete mordedor resistente', 'accesorio', 15000.00, 28),
(11, 'correa y collar acolchado', 'accesorio', 23000.00, 22),
(12, 'comedero antideslizante acero', 'accesorio', 18000.00, 26),
(13, 'solucion limpiadora otica', 'farmacia', 19500.00, 16),
(14, 'toallas humedas para mascotas', 'higiene', 11000.00, 40),
(15, 'guacal plastico ventilado', 'accesorio', 58000.00, 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `servicios`
--

CREATE TABLE `servicios` (
  `id_servicio` int(11) NOT NULL,
  `nombre` varchar(20) NOT NULL,
  `area` varchar(30) NOT NULL,
  `precio` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `servicios`
--

INSERT INTO `servicios` (`id_servicio`, `nombre`, `area`, `precio`) VALUES
(1, 'consulta veterinaria', 'veterinaria', 45000.00),
(2, 'vacunacion antirrabi', 'veterinaria', 35000.00),
(3, 'desparasitacion inte', 'veterinaria', 28000.00),
(4, 'bano medicado antipu', 'peluqueria', 38000.00),
(5, 'corte de pelo y cepi', 'peluqueria', 32000.00),
(6, 'limpieza de oidos y ', 'peluqueria', 18000.00),
(7, 'profilaxis dental ca', 'veterinaria', 120000.00),
(8, 'hemograma y examen b', 'veterinaria', 55000.00),
(9, 'control de peso y nu', 'veterinaria', 30000.00),
(10, 'bano relajante para ', 'peluqueria', 40000.00),
(11, 'deslanado y desenred', 'peluqueria', 34000.00),
(12, 'aplicacion de pipeta', 'veterinaria', 26000.00),
(13, 'curacion de herida l', 'veterinaria', 36000.00),
(14, 'estetica completa pe', 'peluqueria', 42000.00),
(15, 'chequeo geriatrico', 'veterinaria', 60000.00);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `atenciones`
--
ALTER TABLE `atenciones`
  ADD PRIMARY KEY (`id_atencion`),
  ADD KEY `fk_atencion_mascota` (`id_mascota`),
  ADD KEY `fk_atencion_servicio` (`id_servicio`),
  ADD KEY `fk_atencion_producto` (`id_producto`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD PRIMARY KEY (`id_mascota`),
  ADD KEY `fk_mascota_cliente` (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- Indices de la tabla `servicios`
--
ALTER TABLE `servicios`
  ADD PRIMARY KEY (`id_servicio`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `atenciones`
--
ALTER TABLE `atenciones`
  MODIFY `id_atencion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `mascotas`
--
ALTER TABLE `mascotas`
  MODIFY `id_mascota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `servicios`
--
ALTER TABLE `servicios`
  MODIFY `id_servicio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `atenciones`
--
ALTER TABLE `atenciones`
  ADD CONSTRAINT `fk_atencion_mascota` FOREIGN KEY (`id_mascota`) REFERENCES `mascotas` (`id_mascota`),
  ADD CONSTRAINT `fk_atencion_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`),
  ADD CONSTRAINT `fk_atencion_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`);

--
-- Filtros para la tabla `mascotas`
--
ALTER TABLE `mascotas`
  ADD CONSTRAINT `fk_mascota_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
