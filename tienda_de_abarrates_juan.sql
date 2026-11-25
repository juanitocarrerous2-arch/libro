-- phpMyAdmin SQL Dump
-- version 5.2.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 25-11-2026 a las 04:11:03
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
-- Base de datos: `tienda_de_abarrates_juan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categorias`
--

CREATE TABLE `categorias` (
  `id_categoria` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`id_categoria`, `nombre`, `descripcion`) VALUES
(1, 'harinas y pastas', 'harina de trigo, maiz, espagueti y fideos'),
(2, 'cafe y chocolate', 'cafe molido, instantaneo, cocoa y panela'),
(3, 'galletas y ponques', 'galletas dulces, saladas, wafers y tortas'),
(4, 'jugos y refrescos', 'jugos en caja, te frio, refrescos en polvo'),
(5, 'jabones y detergentes', 'jabon en barra, liquido, suavizante y cloro'),
(6, 'cuidado capilar', 'champu, acondicionador, crema para peinar'),
(7, 'higiene bucal', 'crema dental, cepillos y enjuague bucal'),
(8, 'salsas y aderezos', 'salsa de tomate, mayonesa, mostaza y vinagre'),
(9, 'granos secos', 'lenteja, garbanzo, arveja seca y maiz pira'),
(10, 'lacteos refrigerados', 'yogur, kumis, queso campesino y cuajada'),
(11, 'embutidos', 'chorizo, salchichon, jamoneta y tocineta'),
(12, 'verduras frescas', 'tomate chonto, cebolla cabezona, zanahoria y ajo'),
(13, 'frutas de temporada', 'banano, manzana, naranja, limon y papaya'),
(14, 'alimento mascotas', 'galletas, sobres humedos y arena para gato'),
(15, 'utiles y desechables', 'vasos desechables, servilletas, papel aluminio');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `saldo_pendiente` decimal(10,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `nombre`, `telefono`, `saldo_pendiente`) VALUES
(1, 'cliente mostrador', '0000000000', 0.00),
(2, 'diego alejandro rios', '3107112233', 6400.00),
(3, 'laura sofia cardenas', '3117223344', 0.00),
(4, 'miguel angel parra', '3127334455', 14000.00),
(5, 'carolina salazar', '3137445566', 0.00),
(6, 'sebastian quintero', '3147556677', 3500.00),
(7, 'tatiana beltran', '3157667788', 0.00),
(8, 'cristian camilo roa', '3167778899', 9200.00),
(9, 'juliana andrea mora', '3177889900', 0.00),
(10, 'fernando jose leon', '3187990011', 4500.00),
(11, 'angie lorena suarez', '3198001122', 0.00),
(12, 'brayan steven pardo', '3208112233', 11000.00),
(13, 'daniel felipe acosta', '3218223344', 0.00),
(14, 'yeimy paola guzman', '3228334455', 2800.00),
(15, 'nicolas santiago vega', '3008445566', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL,
  `codigo_barras` varchar(30) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio_compra` decimal(10,2) NOT NULL,
  `precio_venta` decimal(10,2) NOT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `id_categoria` int(11) NOT NULL,
  `id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `codigo_barras`, `nombre`, `precio_compra`, `precio_venta`, `stock`, `id_categoria`, `id_proveedor`) VALUES
(1, '7703002001', 'espagueti clasico 500g', 2100.00, 2900.00, 45, 1, 1),
(2, '7703002002', 'cafe molido tradicional 250g', 4800.00, 6200.00, 30, 2, 2),
(3, '7703002003', 'galletas saltin taco x3', 3600.00, 4800.00, 28, 3, 3),
(4, '7703002004', 'jugo de mango caja 1l', 3100.00, 4200.00, 20, 4, 4),
(5, '7703002005', 'jabon barra rey 300g', 2200.00, 3000.00, 50, 5, 5),
(6, '7703002006', 'champu control caida 400ml', 8500.00, 11200.00, 14, 6, 6),
(7, '7703002007', 'cepillo dental cerdas suaves', 1900.00, 3000.00, 35, 7, 7),
(8, '7703002008', 'salsa de tomate doypack 200g', 2400.00, 3400.00, 40, 8, 8),
(9, '7703002009', 'lenteja pardina libra', 2300.00, 3200.00, 65, 9, 9),
(10, '7703002010', 'queso campesino bloque 250g', 4700.00, 6300.00, 18, 10, 10),
(11, '7703002011', 'salchichon cervecero 500g', 5200.00, 7000.00, 15, 11, 11),
(12, '7703002012', 'tomate chonto libra', 1300.00, 2000.00, 55, 12, 12),
(13, '7703002013', 'banano criollo libra', 900.00, 1500.00, 60, 13, 13),
(14, '7703002014', 'sobre humedo gato salmon 85g', 2100.00, 3000.00, 32, 14, 14),
(15, '7703002015', 'paquete servilletas x100', 1800.00, 2600.00, 42, 15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `id_proveedor` int(11) NOT NULL,
  `empresa` varchar(100) NOT NULL,
  `telefono` varchar(20) NOT NULL,
  `ciudad` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`id_proveedor`, `empresa`, `telefono`, `ciudad`) VALUES
(1, 'molinos el lobo s.a.', '3104112233', 'bogota'),
(2, 'casa luker s.a.', '3114223344', 'manizales'),
(3, 'compania de galletas noel', '3124334455', 'medellin'),
(4, 'hit bebidas colombia', '3134445566', 'cali'),
(5, 'azul k s.a.', '3144556677', 'bogota'),
(6, 'henkel colombiana', '3154667788', 'soacha'),
(7, 'procter and gamble', '3164778899', 'bogota'),
(8, 'fruco alimentos', '3174889900', 'cali'),
(9, 'graneros del tolima', '3184990011', 'espinal'),
(10, 'colanta cooperativa', '3195001122', 'medellin'),
(11, 'rica rondo industria', '3205112233', 'palmira'),
(12, 'central de abastos sur', '3215223344', 'soacha'),
(13, 'fruticola del valle', '3225334455', 'armenia'),
(14, 'italcol mascotas', '3005445566', 'funza'),
(15, 'familia institucional', '3015556677', 'medellin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id_venta` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `metodo_pago` varchar(30) NOT NULL,
  `id_producto` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ventas`
--

INSERT INTO `ventas` (`id_venta`, `fecha`, `cantidad`, `total`, `metodo_pago`, `id_producto`, `id_cliente`) VALUES
(1, '2026-11-10', 3, 8700.00, 'efectivo', 1, 1),
(2, '2026-11-11', 1, 6200.00, 'fiado', 2, 2),
(3, '2026-11-12', 2, 9600.00, 'nequi', 3, 3),
(4, '2026-11-13', 2, 8400.00, 'fiado', 4, 4),
(5, '2026-11-14', 4, 12000.00, 'efectivo', 5, 5),
(6, '2026-11-15', 1, 11200.00, 'daviplata', 6, 6),
(7, '2026-11-16', 2, 6000.00, 'efectivo', 7, 7),
(8, '2026-11-17', 3, 10200.00, 'fiado', 8, 8),
(9, '2026-11-18', 4, 12800.00, 'efectivo', 9, 9),
(10, '2026-11-19', 1, 6300.00, 'nequi', 10, 10),
(11, '2026-11-20', 2, 14000.00, 'efectivo', 11, 11),
(12, '2026-11-21', 5, 10000.00, 'fiado', 12, 12),
(13, '2026-11-22', 6, 9000.00, 'efectivo', 13, 13),
(14, '2026-11-23', 3, 9000.00, 'daviplata', 14, 14),
(15, '2026-11-24', 2, 5200.00, 'efectivo', 15, 15);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id_categoria`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `codigo_barras` (`codigo_barras`),
  ADD KEY `fk_prod_categoria` (`id_categoria`),
  ADD KEY `fk_prod_proveedor` (`id_proveedor`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `fk_venta_producto` (`id_producto`),
  ADD KEY `fk_venta_cliente` (`id_cliente`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id_categoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  MODIFY `id_proveedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `productos`
--
ALTER TABLE `productos`
  ADD CONSTRAINT `fk_prod_categoria` FOREIGN KEY (`id_categoria`) REFERENCES `categorias` (`id_categoria`),
  ADD CONSTRAINT `fk_prod_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`),
  ADD CONSTRAINT `fk_venta_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
