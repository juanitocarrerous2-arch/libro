-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-11-2026 a las 21:12:17
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
-- Base de datos: `sena_db_sql`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ficha_grupos`
--

CREATE TABLE `ficha_grupos` (
  `id_ficha` int(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `numero_de_ficha` int(10) NOT NULL,
  `id_aprendiz` varchar(10) NOT NULL,
  `programa` varchar(50) NOT NULL,
  `id_instructor` int(10) NOT NULL,
  `estado` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ficha_grupos`
--

INSERT INTO `ficha_grupos` (`id_ficha`, `fecha_inicio`, `fecha_fin`, `numero_de_ficha`, `id_aprendiz`, `programa`, `id_instructor`, `estado`) VALUES
(1, '2026-02-01', '2027-08-01', 2873451, '1', 'analisis y desarrollo de software', 1, 1),
(2, '2026-02-01', '2027-08-01', 2873452, '2', 'analisis y desarrollo de software', 2, 1),
(3, '2026-02-01', '2027-08-01', 2873453, '3', 'analisis y desarrollo de software', 3, 1),
(4, '2026-02-01', '2027-08-01', 2873454, '4', 'analisis y desarrollo de software', 4, 1),
(5, '2026-02-01', '2027-08-01', 2873455, '5', 'analisis y desarrollo de software', 5, 1),
(6, '2026-03-01', '2027-09-01', 2873456, '6', 'analisis y desarrollo de software', 6, 1),
(7, '2026-03-01', '2027-09-01', 2873457, '7', 'analisis y desarrollo de software', 7, 1),
(8, '2026-03-01', '2027-09-01', 2873458, '8', 'analisis y desarrollo de software', 8, 1),
(9, '2026-03-01', '2027-09-01', 2873459, '9', 'analisis y desarrollo de software', 9, 1),
(10, '2026-03-01', '2027-09-01', 2873460, '10', 'analisis y desarrollo de software', 10, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `instructores`
--

CREATE TABLE `instructores` (
  `id_instructor` int(10) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `tipo_de_doc` varchar(15) NOT NULL,
  `no_de_doc` int(10) NOT NULL,
  `especialidad` varchar(50) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `telefono` int(10) NOT NULL,
  `direccion` varchar(25) NOT NULL,
  `id_ficha` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `instructores`
--

INSERT INTO `instructores` (`id_instructor`, `nombre`, `tipo_de_doc`, `no_de_doc`, `especialidad`, `correo`, `telefono`, `direccion`, `id_ficha`) VALUES
(1, 'carlos mendez', 'cc', 101234561, 'matematicas aplicadas', 'cmendez@sena.edu.co', 300111221, 'cl 12 # 4 - 10', 1),
(2, 'laura gomez', 'cc', 101234562, 'bilinguismo ingles', 'lgomez@sena.edu.co', 300111222, 'kr 7 # 15 - 20', 2),
(3, 'andres rojas', 'cc', 101234563, 'etica y comunicacion', 'arojas@sena.edu.co', 300111223, 'tv 5 # 20 - 30', 3),
(4, 'diana torres', 'cc', 101234564, 'cultura fisica y salud', 'dtorres@sena.edu.co', 300111224, 'dg 8 # 11 - 15', 4),
(5, 'miguel vargas', 'cc', 101234565, 'bases de datos', 'mvargas@sena.edu.co', 300111225, 'cl 45 # 9 - 12', 5),
(6, 'paula castro', 'cc', 101234566, 'programacion de software', 'pcastro@sena.edu.co', 300111226, 'kr 19 # 3 - 40', 6),
(7, 'diego silva', 'cc', 101234567, 'control de versiones git', 'dsilva@sena.edu.co', 300111227, 'cl 22 # 14 - 08', 7),
(8, 'sandra morales', 'cc', 101234568, 'desarrollo web frontend', 'smorales@sena.edu.co', 300111228, 'kr 30 # 8 - 50', 8),
(9, 'johan perez', 'cc', 101234569, 'calidad y pruebas de software', 'jperez@sena.edu.co', 300111229, 'cl 18 # 27 - 11', 9),
(10, 'natalia ruiz', 'cc', 101234570, 'analisis de requisitos', 'nruiz@sena.edu.co', 300111230, 'kr 11 # 6 - 25', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_administrativos`
--

CREATE TABLE `tb_administrativos` (
  `id_admin` int(11) NOT NULL,
  `nombre_ad` varchar(25) DEFAULT NULL,
  `telefono_ad` bigint(10) DEFAULT NULL,
  `dependencia_ad` varchar(30) DEFAULT NULL,
  `correo_ad` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_administrativos`
--

INSERT INTO `tb_administrativos` (`id_admin`, `nombre_ad`, `telefono_ad`, `dependencia_ad`, `correo_ad`) VALUES
(1, 'carlos', 300234867, 'direccion_general', 'carlos123@gmail.com'),
(2, 'ana', 310456789, 'recursos_humanos', 'ana456@gmail.com'),
(3, 'luis', 320123987, 'finanzas', 'luis789@gmail.com'),
(4, 'maria', 315678123, 'tecnologia', 'maria321@gmail.com'),
(5, 'jorge', 301987654, 'logistica', 'jorge654@gmail.com'),
(6, 'sofia', 312345678, 'marketing', 'sofia987@gmail.com'),
(7, 'david', 311876543, 'juridica', 'david111@gmail.com'),
(8, 'laura', 313222333, 'comunicaciones', 'laura222@gmail.com'),
(9, 'andres', 314444555, 'mantenimiento', 'andres333@gmail.com'),
(10, 'camila', 316777888, 'calidad', 'camila444@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_aprendices`
--

CREATE TABLE `tb_aprendices` (
  `id_aprendiz` int(10) NOT NULL,
  `nombre_ap` varchar(35) NOT NULL,
  `tipo_doc` varchar(15) NOT NULL,
  `numero_doc` int(10) NOT NULL,
  `telefono` int(10) NOT NULL,
  `correo` varchar(40) NOT NULL,
  `direccion` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_aprendices`
--

INSERT INTO `tb_aprendices` (`id_aprendiz`, `nombre_ap`, `tipo_doc`, `numero_doc`, `telefono`, `correo`, `direccion`) VALUES
(1, 'felipe carrero', 'cc', 107000001, 310200101, 'fcarrero@soy.sena.edu.co', 'cl 10 # 2 - 14'),
(2, 'veronica lopez', 'cc', 107000002, 310200102, 'vlopez@soy.sena.edu.co', 'kr 4 # 12 - 30'),
(3, 'juan castaneda', 'ti', 107000003, 310200103, 'jcastaneda@soy.sena.edu.co', 'tv 9 # 7 - 22'),
(4, 'maria fernandez', 'cc', 107000004, 310200104, 'mfernandez@soy.sena.edu.co', 'dg 3 # 18 - 05'),
(5, 'sebastian diaz', 'cc', 107000005, 310200105, 'sdiaz@soy.sena.edu.co', 'cl 25 # 6 - 41'),
(6, 'isabella moreno', 'ti', 107000006, 310200106, 'imoreno@soy.sena.edu.co', 'kr 14 # 9 - 19'),
(7, 'kevin ramirez', 'cc', 107000007, 310200107, 'kramirez@soy.sena.edu.co', 'cl 8 # 21 - 33'),
(8, 'lina ospina', 'cc', 107000008, 310200108, 'lospina@soy.sena.edu.co', 'kr 2 # 15 - 09'),
(9, 'samuel gutierrez', 'ti', 107000009, 310200109, 'sgutierrez@soy.sena.edu.co', 'tv 12 # 4 - 27'),
(10, 'valeria jimenez', 'cc', 107000010, 310200110, 'vjimenez@soy.sena.edu.co', 'cl 31 # 10 - 16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tb_competencia`
--

CREATE TABLE `tb_competencia` (
  `id_competencia` int(10) NOT NULL,
  `competencia` varchar(60) NOT NULL,
  `cod_compe` varchar(25) NOT NULL,
  `descripcion` varchar(120) NOT NULL,
  `duracion` int(11) NOT NULL,
  `id_instructor` int(10) NOT NULL,
  `id_aprendiz` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tb_competencia`
--

INSERT INTO `tb_competencia` (`id_competencia`, `competencia`, `cod_compe`, `descripcion`, `duracion`, `id_instructor`, `id_aprendiz`) VALUES
(1, 'razonamiento cuantitativo', '240201528', 'aplicar elementos de matematica en la resolucion de problemas', 48, 1, 1),
(2, 'interaccion en ingles', '240202501', 'comprender textos en ingles en formato escrito y auditivo', 96, 2, 2),
(3, 'etica y cultura de paz', '240201526', 'promover la interaccion idonea consigo mismo y con los demas', 48, 3, 3),
(4, 'promocion de vida saludable', '330301022', 'establecer habitos de vida saludable mediante la actividad fisica', 48, 4, 4),
(5, 'gestion de bases de datos', '220501096', 'disenar y construir bases de datos segun requerimientos del cliente', 120, 5, 5),
(6, 'programacion de software', '220501095', 'desarrollar software aplicando principios de programacion estructurada', 192, 6, 6),
(7, 'control de versiones', '220501097', 'implementar estrategias de control de versiones para el codigo fuente', 64, 7, 7),
(8, 'ecosistema web frontend', '220501098', 'construir interfaces de usuario funcionales y adaptables', 96, 8, 8),
(9, 'pruebas de software', '220501099', 'ejecutar planes de prueba para asegurar la calidad del producto', 64, 9, 9),
(10, 'analisis de requisitos', '220501100', 'especificar los requerimientos del software segun necesidades del negocio', 96, 10, 10);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ficha_grupos`
--
ALTER TABLE `ficha_grupos`
  ADD PRIMARY KEY (`id_ficha`),
  ADD KEY `id_instructor` (`id_instructor`);

--
-- Indices de la tabla `instructores`
--
ALTER TABLE `instructores`
  ADD PRIMARY KEY (`id_instructor`);

--
-- Indices de la tabla `tb_administrativos`
--
ALTER TABLE `tb_administrativos`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indices de la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD PRIMARY KEY (`id_aprendiz`);

--
-- Indices de la tabla `tb_competencia`
--
ALTER TABLE `tb_competencia`
  ADD PRIMARY KEY (`id_competencia`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ficha_grupos`
--
ALTER TABLE `ficha_grupos`
  ADD CONSTRAINT `fk_ficha_competencia` FOREIGN KEY (`id_ficha`) REFERENCES `tb_competencia` (`id_competencia`) ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_ficha_instructor` FOREIGN KEY (`id_instructor`) REFERENCES `instructores` (`id_instructor`) ON UPDATE CASCADE;

--
-- Filtros para la tabla `tb_aprendices`
--
ALTER TABLE `tb_aprendices`
  ADD CONSTRAINT `fk_aprendiz_ficha` FOREIGN KEY (`id_aprendiz`) REFERENCES `ficha_grupos` (`id_ficha`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
