-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-01-2024 a las 03:14:29
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
-- Base de datos: `lagartostore`
--
CREATE DATABASE IF NOT EXISTS `lagartostore` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lagartostore`;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `caja`
--

CREATE TABLE `caja` (
  `caja_id` int(5) NOT NULL,
  `caja_numero` int(5) NOT NULL,
  `caja_nombre` varchar(100) NOT NULL,
  `caja_efectivo` decimal(30,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `caja`
--

INSERT INTO `caja` (`caja_id`, `caja_numero`, `caja_nombre`, `caja_efectivo`) VALUES
(1, 1, 'Caja Principal', 1053.00),
(4, 2, 'caja secundaria', 0.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categoria`
--

CREATE TABLE `categoria` (
  `categoria_id` int(7) NOT NULL,
  `categoria_nombre` varchar(50) NOT NULL,
  `categoria_ubicacion` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `categoria`
--

INSERT INTO `categoria` (`categoria_id`, `categoria_nombre`, `categoria_ubicacion`) VALUES
(6, 'pintura automotriz', 'almacen 2'),
(7, 'pintura de tránsito', 'almacen 3'),
(8, 'pintura látex', 'almacen 4'),
(9, 'bases', 'almacen 1'),
(10, 'diluyentes', 'almacen 5');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `cliente_id` int(10) NOT NULL,
  `cliente_tipo_documento` varchar(20) NOT NULL,
  `cliente_numero_documento` varchar(35) NOT NULL,
  `cliente_nombre` varchar(50) NOT NULL,
  `cliente_apellido` varchar(50) NOT NULL,
  `cliente_provincia` varchar(30) NOT NULL,
  `cliente_ciudad` varchar(30) NOT NULL,
  `cliente_direccion` varchar(70) NOT NULL,
  `cliente_telefono` varchar(20) NOT NULL,
  `cliente_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `cliente`
--

INSERT INTO `cliente` (`cliente_id`, `cliente_tipo_documento`, `cliente_numero_documento`, `cliente_nombre`, `cliente_apellido`, `cliente_provincia`, `cliente_ciudad`, `cliente_direccion`, `cliente_telefono`, `cliente_email`) VALUES
(1, 'Otro', 'N/A', 'Publico', 'General', 'N/A', 'N/A', 'N/A', 'N/A', 'N/A'),
(9, 'DNI', '74843455', 'Frank Joel', 'Lizarme Peceros', 'Andahuaylas', 'Andahuaylas', 'jr. puente nuevo', '987568734', 'frank123@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empresa`
--

CREATE TABLE `empresa` (
  `empresa_id` int(11) NOT NULL,
  `empresa_nombre` varchar(90) NOT NULL,
  `empresa_telefono` varchar(20) NOT NULL,
  `empresa_email` varchar(50) NOT NULL,
  `empresa_direccion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `empresa`
--

INSERT INTO `empresa` (`empresa_id`, `empresa_nombre`, `empresa_telefono`, `empresa_email`, `empresa_direccion`) VALUES
(1, 'Lagarto Store', '916099300', 'lagartostore@gmail.com', 'Av. las fresias');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `producto_id` int(20) NOT NULL,
  `producto_codigo` varchar(77) NOT NULL,
  `producto_nombre` varchar(100) NOT NULL,
  `producto_stock_total` int(25) NOT NULL,
  `producto_tipo_unidad` varchar(20) NOT NULL,
  `producto_precio_compra` decimal(30,2) NOT NULL,
  `producto_precio_venta` decimal(30,2) NOT NULL,
  `producto_marca` varchar(35) NOT NULL,
  `producto_color` varchar(35) NOT NULL,
  `producto_estado` varchar(20) NOT NULL,
  `producto_foto` varchar(500) NOT NULL,
  `categoria_id` int(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`producto_id`, `producto_codigo`, `producto_nombre`, `producto_stock_total`, `producto_tipo_unidad`, `producto_precio_compra`, `producto_precio_venta`, `producto_marca`, `producto_color`, `producto_estado`, `producto_foto`, `categoria_id`) VALUES
(10, 'IMP1', 'imprimante', 27, 'Galon', 20.00, 28.00, 'CPP', 'transparente', '', 'IMP1_75.png', 9),
(11, 'IMP4', 'pasta fina', 29, 'Galon', 28.00, 34.00, 'CPP', 'blanco', '', 'IMP4_70.png', 9),
(12, 'IMP5', 'sellador', 33, 'Galon', 20.00, 27.00, 'CPP', 'transparente', '', 'IMP5_52.png', 9),
(13, 'IMP7', 'imprimante para muros', 39, 'Galon', 60.00, 70.00, 'CPP', 'blanquecino', '', 'IMP7_1.png', 9),
(14, 'IMP9', 'temple fino sinolit', 20, 'Kilogramo', 50.00, 57.00, 'CPP', 'blanco', '', 'IMP9_17.png', 9),
(15, 'IMP8', 'temple pato', 25, 'Kilogramo', 26.00, 31.00, 'CPP', 'blanco', '', 'IMP8_39.png', 9),
(16, 'SAT1', 'satinado', 50, 'Galon', 87.00, 98.00, 'CPP', 'según cartilla', '', 'SAT1_23.png', 8),
(17, 'SAT2', 'duralatex', 43, 'Galon', 62.00, 70.00, 'CPP', 'según cartilla', '', 'SAT2_88.png', 8),
(18, 'SAT3', 'pato', 89, 'Galon', 33.00, 40.00, 'CPP', 'según cartilla', '', 'SAT3_99.png', 8),
(19, 'SAT4', 'pato plus', 55, 'Galon', 43.00, 50.00, 'CPP', 'según cartilla', '', 'SAT4_59.png', 8),
(20, 'PINA1', 'base antigravilla', 22, 'Galon', 34.00, 40.00, 'CPP', 'negro', '', 'PINA1_63.png', 6),
(21, 'PINA2', 'perla liquida', 15, 'Galon', 41.00, 49.00, 'CPP', 'según cartilla', '', 'PINA2_15.png', 6),
(22, 'PINA3', 'imprimación de poliuretano', 43, 'Galon', 44.00, 56.00, 'CPP', 'blanco', '', 'PINA3_59.png', 6),
(23, 'PINA4', 'reductor de imprimación de poliuretano', 23, 'Galon', 50.00, 66.00, 'CPP', 'transparente', '', 'PINA4_65.png', 6),
(24, 'PINA5', 'catalizador de imprimación de poliuretano', 40, 'Galon', 55.00, 67.00, 'CPP', 'blanco', '', 'PINA5_52.png', 6),
(25, 'PINA6', 'Barniz de poliuretano', 19, 'Galon', 44.00, 56.00, 'CPP', 'transparente', '', 'PINA6_37.png', 6),
(26, 'PINA7', 'reductor de barniz de poliretano', 45, 'Galon', 23.00, 28.00, 'CPP', 'transparente', '', 'PINA7_42.png', 6),
(27, 'PINA8', 'catalizador de barniz de poliretano', 44, 'Galon', 26.00, 31.00, 'CPP', 'transparente', '', 'PINA8_89.png', 6),
(28, 'PINA9', 'monocapa de poliuretano', 3, 'Galon', 34.00, 40.00, 'CPP', 'según cartilla', '', 'PINA9_9.png', 6),
(29, 'TRANS1', 'esmalte para tráfico', 55, 'Galon', 81.00, 92.00, 'CPP', 'blanco', '', 'TRANS1_39.png', 7),
(30, 'TIN1', 'thinner acrilico', 59, 'Litro', 13.00, 16.00, 'CPP', 'transparente', '', 'TIN1_20.png', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `usuario_id` int(7) NOT NULL,
  `usuario_nombre` varchar(50) NOT NULL,
  `usuario_apellido` varchar(50) NOT NULL,
  `usuario_email` varchar(50) NOT NULL,
  `usuario_usuario` varchar(30) NOT NULL,
  `usuario_clave` varchar(535) NOT NULL,
  `usuario_foto` varchar(200) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`usuario_id`, `usuario_nombre`, `usuario_apellido`, `usuario_email`, `usuario_usuario`, `usuario_clave`, `usuario_foto`, `caja_id`) VALUES
(1, 'jose luis', 'galindo cardenas', 'jos3lo9@gmail.com', 'joselo', '$2y$10$OaSFiWb8tVMgNHFXxkfWWetLF2wAanuP74cRxEv97UGd5im0o1gHG', 'jose_luis_14.jpg', 1),
(10, 'Wilfredo', 'Ccopa Granados', 'ccopa@gmail.com', 'ccopa', '$2y$10$zOumMz2o2033AfTVCIcP7eXMNv5jBT.zUVWAn1sq601A0h1SYKl5m', 'Wilfredo_78.png', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `venta_id` int(30) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `venta_fecha` date NOT NULL,
  `venta_hora` varchar(17) NOT NULL,
  `venta_total` decimal(30,2) NOT NULL,
  `venta_pagado` decimal(30,2) NOT NULL,
  `venta_cambio` decimal(30,2) NOT NULL,
  `usuario_id` int(7) NOT NULL,
  `cliente_id` int(10) NOT NULL,
  `caja_id` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`venta_id`, `venta_codigo`, `venta_fecha`, `venta_hora`, `venta_total`, `venta_pagado`, `venta_cambio`, `usuario_id`, `cliente_id`, `caja_id`) VALUES
(7, 'T1Z6W8V6W9-1', '2024-01-07', '05:47 pm', 98.00, 100.00, 2.00, 1, 1, 1),
(8, 'A4W6A3Z2T7-2', '2024-01-07', '05:51 pm', 34.00, 40.00, 6.00, 1, 1, 1),
(9, 'B3W4R5I5E5-3', '2024-01-07', '07:10 pm', 244.00, 300.00, 56.00, 1, 1, 1),
(10, 'R2X0Q6Y6T2-4', '2024-01-08', '01:37 pm', 424.00, 500.00, 76.00, 1, 1, 1),
(11, 'S4Z2N0E2C5-5', '2024-01-08', '04:36 pm', 166.00, 200.00, 34.00, 1, 1, 1),
(12, 'E6D1B2P1Y4-6', '2024-01-08', '04:42 pm', 87.00, 100.00, 13.00, 1, 9, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta_detalle`
--

CREATE TABLE `venta_detalle` (
  `venta_detalle_id` int(100) NOT NULL,
  `venta_detalle_cantidad` int(10) NOT NULL,
  `venta_detalle_precio_compra` decimal(30,2) NOT NULL,
  `venta_detalle_precio_venta` decimal(30,2) NOT NULL,
  `venta_detalle_total` decimal(30,2) NOT NULL,
  `venta_detalle_descripcion` varchar(200) NOT NULL,
  `venta_codigo` varchar(200) NOT NULL,
  `producto_id` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `venta_detalle`
--

INSERT INTO `venta_detalle` (`venta_detalle_id`, `venta_detalle_cantidad`, `venta_detalle_precio_compra`, `venta_detalle_precio_venta`, `venta_detalle_total`, `venta_detalle_descripcion`, `venta_codigo`, `producto_id`) VALUES
(8, 1, 20.00, 28.00, 28.00, 'imprimante', 'T1Z6W8V6W9-1', 10),
(9, 1, 60.00, 70.00, 70.00, 'imprimante para muros', 'T1Z6W8V6W9-1', 13),
(10, 1, 28.00, 34.00, 34.00, 'pasta fina', 'A4W6A3Z2T7-2', 11),
(11, 2, 44.00, 56.00, 112.00, 'Barniz de poliuretano', 'B3W4R5I5E5-3', 25),
(12, 1, 34.00, 40.00, 40.00, 'base antigravilla', 'B3W4R5I5E5-3', 20),
(13, 1, 81.00, 92.00, 92.00, 'esmalte para tráfico', 'B3W4R5I5E5-3', 29),
(14, 4, 81.00, 92.00, 368.00, 'esmalte para tráfico', 'R2X0Q6Y6T2-4', 29),
(15, 2, 20.00, 28.00, 56.00, 'imprimante', 'R2X0Q6Y6T2-4', 10),
(16, 1, 44.00, 56.00, 56.00, 'Barniz de poliuretano', 'S4Z2N0E2C5-5', 25),
(17, 1, 62.00, 70.00, 70.00, 'duralatex', 'S4Z2N0E2C5-5', 17),
(18, 1, 33.00, 40.00, 40.00, 'pato', 'S4Z2N0E2C5-5', 18),
(19, 1, 44.00, 56.00, 56.00, 'Barniz de poliuretano', 'E6D1B2P1Y4-6', 25),
(20, 1, 26.00, 31.00, 31.00, 'catalizador de barniz de poliretano', 'E6D1B2P1Y4-6', 27);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `caja`
--
ALTER TABLE `caja`
  ADD PRIMARY KEY (`caja_id`);

--
-- Indices de la tabla `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`categoria_id`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`cliente_id`);

--
-- Indices de la tabla `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`empresa_id`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`producto_id`),
  ADD KEY `categoria_id` (`categoria_id`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`usuario_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`venta_id`),
  ADD UNIQUE KEY `venta_codigo` (`venta_codigo`),
  ADD KEY `usuario_id` (`usuario_id`),
  ADD KEY `cliente_id` (`cliente_id`),
  ADD KEY `caja_id` (`caja_id`);

--
-- Indices de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD PRIMARY KEY (`venta_detalle_id`),
  ADD KEY `venta_id` (`venta_codigo`),
  ADD KEY `producto_id` (`producto_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `caja`
--
ALTER TABLE `caja`
  MODIFY `caja_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `categoria`
--
ALTER TABLE `categoria`
  MODIFY `categoria_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `cliente`
--
ALTER TABLE `cliente`
  MODIFY `cliente_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `empresa`
--
ALTER TABLE `empresa`
  MODIFY `empresa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `producto_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `usuario_id` int(7) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `venta_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  MODIFY `venta_detalle_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`categoria_id`) REFERENCES `categoria` (`categoria_id`);

--
-- Filtros para la tabla `venta`
--
ALTER TABLE `venta`
  ADD CONSTRAINT `venta_ibfk_1` FOREIGN KEY (`usuario_id`) REFERENCES `usuario` (`usuario_id`),
  ADD CONSTRAINT `venta_ibfk_2` FOREIGN KEY (`cliente_id`) REFERENCES `cliente` (`cliente_id`),
  ADD CONSTRAINT `venta_ibfk_3` FOREIGN KEY (`caja_id`) REFERENCES `caja` (`caja_id`);

--
-- Filtros para la tabla `venta_detalle`
--
ALTER TABLE `venta_detalle`
  ADD CONSTRAINT `venta_detalle_ibfk_2` FOREIGN KEY (`producto_id`) REFERENCES `producto` (`producto_id`),
  ADD CONSTRAINT `venta_detalle_ibfk_3` FOREIGN KEY (`venta_codigo`) REFERENCES `venta` (`venta_codigo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
