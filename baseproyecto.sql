-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 18:15:45
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `baseproyecto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_administrador` int(11) NOT NULL,
  `pass` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_administrador`, `pass`) VALUES
(987654321, '1234');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador financiero`
--

CREATE TABLE `administrador financiero` (
  `id_administradorf` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cedula`
--

CREATE TABLE `cedula` (
  `id_cc` int(11) NOT NULL,
  `datos_ndocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cedula extranjeria`
--

CREATE TABLE `cedula extranjeria` (
  `id_ce` int(11) NOT NULL,
  `datos_ndocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos`
--

CREATE TABLE `datos` (
  `num_documento` int(11) NOT NULL,
  `NombresD` varchar(45) NOT NULL,
  `ApellidosD` varchar(45) NOT NULL,
  `Fecha de expedición` varchar(45) NOT NULL,
  `Fecha nacimiento` varchar(45) NOT NULL,
  `rh` varchar(45) NOT NULL,
  `Sexo` varchar(45) NOT NULL,
  `Estatura` varchar(45) NOT NULL,
  `Grupo sanguineo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `documento de identidad`
--

CREATE TABLE `documento de identidad` (
  `id_ti` int(11) NOT NULL,
  `datos_ndocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `entradas`
--

CREATE TABLE `entradas` (
  `id_entrada` int(11) NOT NULL,
  `NombreE` varchar(45) NOT NULL,
  `proveedor de montacarga` varchar(45) NOT NULL,
  `precio` varchar(45) NOT NULL,
  `fecha entrega` varchar(45) NOT NULL,
  `tservicio_id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gerente`
--

CREATE TABLE `gerente` (
  `id_gerente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mecanico`
--

CREATE TABLE `mecanico` (
  `id_mecanico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedidos`
--

CREATE TABLE `pedidos` (
  `id_pedidos` int(11) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  `tservicio_id_servicio` int(11) NOT NULL,
  `fecha pedido` datetime NOT NULL,
  `tipodeservicio adquirido` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id_producto` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `tipo servicio` varchar(20) NOT NULL,
  `proveedor` varchar(45) NOT NULL,
  `precio` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `marca` varchar(15) NOT NULL,
  `cliente_id_cliente` int(11) NOT NULL,
  `tservicio_id_servicio` int(11) NOT NULL,
  `proveedor_id_proveedor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedor`
--

CREATE TABLE `proveedor` (
  `id_proveedor` int(11) NOT NULL,
  `Nombre producto` varchar(45) NOT NULL,
  `telefono` int(11) NOT NULL,
  `tipo producto` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reparacion`
--

CREATE TABLE `reparacion` (
  `id_reparacion` int(11) NOT NULL,
  `costo reparacion` varchar(45) NOT NULL,
  `repuestos` varchar(45) NOT NULL,
  `cantidad` varchar(45) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `tservicio_id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salidas`
--

CREATE TABLE `salidas` (
  `id_salidas` int(11) NOT NULL,
  `NombreS` varchar(45) NOT NULL,
  `fecha venta` varchar(45) NOT NULL,
  `total` varchar(45) NOT NULL,
  `tservicio_id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo de usuario`
--

CREATE TABLE `tipo de usuario` (
  `id_tipousuario` int(11) NOT NULL,
  `administrador_id_adm,inistrador` int(11) NOT NULL,
  `gerente_id_gerente` int(11) NOT NULL,
  `proveedor_id_proveedor` int(11) NOT NULL,
  `administradorf_id_administradorf` int(11) NOT NULL,
  `mecanico_id_mecanico` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo documento`
--

CREATE TABLE `tipo documento` (
  `id_documento` int(11) NOT NULL,
  `usuario_id_cliente` int(11) NOT NULL,
  `datos_ndocumento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo servicio`
--

CREATE TABLE `tipo servicio` (
  `id_servicio` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `Id_cliente` int(11) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `Nombres` varchar(20) NOT NULL,
  `Apellidos` varchar(15) NOT NULL,
  `Telefono` varchar(10) NOT NULL,
  `Direccion` varchar(45) NOT NULL,
  `Correo` varchar(45) NOT NULL,
  `Tipodeusuario` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`Id_cliente`, `pass`, `Nombres`, `Apellidos`, `Telefono`, `Direccion`, `Correo`, `Tipodeusuario`) VALUES
(987654321, '1234', 'Juan', 'Cardenas', '3456785543', 'Cra5-E56b#45Sur', 'jcardenas696@gmail.com', 'administrador'),
(1234567890, '567', 'jorgel', 'curioso', '3156785536', 'cra3#csombreroamalillo', 'jorelcuri@misena.edu.co', ' cliente'),
(1234567899, '321', 'rosa', 'pitos', '4567843321', 'cra2#csombreroamalil', 'rosapitos21@gmail.com', 'cliente');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_administrador`);

--
-- Indices de la tabla `administrador financiero`
--
ALTER TABLE `administrador financiero`
  ADD PRIMARY KEY (`id_administradorf`);

--
-- Indices de la tabla `cedula`
--
ALTER TABLE `cedula`
  ADD PRIMARY KEY (`id_cc`),
  ADD UNIQUE KEY `datos_ndocumento` (`datos_ndocumento`);

--
-- Indices de la tabla `cedula extranjeria`
--
ALTER TABLE `cedula extranjeria`
  ADD PRIMARY KEY (`id_ce`),
  ADD UNIQUE KEY `datos_ndocumento` (`datos_ndocumento`);

--
-- Indices de la tabla `datos`
--
ALTER TABLE `datos`
  ADD PRIMARY KEY (`num_documento`);

--
-- Indices de la tabla `documento de identidad`
--
ALTER TABLE `documento de identidad`
  ADD PRIMARY KEY (`id_ti`),
  ADD UNIQUE KEY `datos_ndocumento` (`datos_ndocumento`);

--
-- Indices de la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD PRIMARY KEY (`id_entrada`),
  ADD UNIQUE KEY `tservicio_id_servicio` (`tservicio_id_servicio`);

--
-- Indices de la tabla `gerente`
--
ALTER TABLE `gerente`
  ADD PRIMARY KEY (`id_gerente`);

--
-- Indices de la tabla `mecanico`
--
ALTER TABLE `mecanico`
  ADD PRIMARY KEY (`id_mecanico`);

--
-- Indices de la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD PRIMARY KEY (`id_pedidos`),
  ADD UNIQUE KEY `cliente_id_cliente` (`cliente_id_cliente`),
  ADD UNIQUE KEY `tservicio_id_servicio` (`tservicio_id_servicio`);

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id_producto`),
  ADD UNIQUE KEY `cliente_id_cliente` (`cliente_id_cliente`),
  ADD UNIQUE KEY `tservicio_id_servicio` (`tservicio_id_servicio`),
  ADD UNIQUE KEY `proveedor_id_proveedor` (`proveedor_id_proveedor`);

--
-- Indices de la tabla `proveedor`
--
ALTER TABLE `proveedor`
  ADD PRIMARY KEY (`id_proveedor`);

--
-- Indices de la tabla `reparacion`
--
ALTER TABLE `reparacion`
  ADD PRIMARY KEY (`id_reparacion`),
  ADD UNIQUE KEY `tservicio_id_servicio` (`tservicio_id_servicio`);

--
-- Indices de la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD PRIMARY KEY (`id_salidas`),
  ADD UNIQUE KEY `tservicio_id_servicio` (`tservicio_id_servicio`);

--
-- Indices de la tabla `tipo de usuario`
--
ALTER TABLE `tipo de usuario`
  ADD PRIMARY KEY (`id_tipousuario`),
  ADD UNIQUE KEY `administrador_id_adm,inistrador` (`administrador_id_adm,inistrador`),
  ADD UNIQUE KEY `gerente_id_gerente` (`gerente_id_gerente`,`proveedor_id_proveedor`,`administradorf_id_administradorf`,`mecanico_id_mecanico`),
  ADD KEY `proveedor_id_proveedor` (`proveedor_id_proveedor`),
  ADD KEY `administradorf_id_administradorf` (`administradorf_id_administradorf`),
  ADD KEY `mecanico_id_mecanico` (`mecanico_id_mecanico`);

--
-- Indices de la tabla `tipo documento`
--
ALTER TABLE `tipo documento`
  ADD PRIMARY KEY (`id_documento`),
  ADD UNIQUE KEY `usuario_id_cliente` (`usuario_id_cliente`),
  ADD UNIQUE KEY `datos_ndocumento` (`datos_ndocumento`);

--
-- Indices de la tabla `tipo servicio`
--
ALTER TABLE `tipo servicio`
  ADD PRIMARY KEY (`id_servicio`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`Id_cliente`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `cedula`
--
ALTER TABLE `cedula`
  ADD CONSTRAINT `cedula_ibfk_1` FOREIGN KEY (`id_cc`) REFERENCES `datos` (`num_documento`);

--
-- Filtros para la tabla `datos`
--
ALTER TABLE `datos`
  ADD CONSTRAINT `datos_ibfk_1` FOREIGN KEY (`num_documento`) REFERENCES `cedula extranjeria` (`id_ce`);

--
-- Filtros para la tabla `documento de identidad`
--
ALTER TABLE `documento de identidad`
  ADD CONSTRAINT `documento de identidad_ibfk_1` FOREIGN KEY (`datos_ndocumento`) REFERENCES `datos` (`num_documento`);

--
-- Filtros para la tabla `entradas`
--
ALTER TABLE `entradas`
  ADD CONSTRAINT `entradas_ibfk_1` FOREIGN KEY (`tservicio_id_servicio`) REFERENCES `tipo servicio` (`id_servicio`);

--
-- Filtros para la tabla `pedidos`
--
ALTER TABLE `pedidos`
  ADD CONSTRAINT `pedidos_ibfk_1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `usuario` (`Id_cliente`),
  ADD CONSTRAINT `pedidos_ibfk_2` FOREIGN KEY (`tservicio_id_servicio`) REFERENCES `tipo servicio` (`id_servicio`);

--
-- Filtros para la tabla `producto`
--
ALTER TABLE `producto`
  ADD CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`cliente_id_cliente`) REFERENCES `usuario` (`Id_cliente`),
  ADD CONSTRAINT `producto_ibfk_2` FOREIGN KEY (`proveedor_id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `producto_ibfk_3` FOREIGN KEY (`tservicio_id_servicio`) REFERENCES `tipo servicio` (`id_servicio`);

--
-- Filtros para la tabla `reparacion`
--
ALTER TABLE `reparacion`
  ADD CONSTRAINT `reparacion_ibfk_1` FOREIGN KEY (`tservicio_id_servicio`) REFERENCES `tipo servicio` (`id_servicio`);

--
-- Filtros para la tabla `salidas`
--
ALTER TABLE `salidas`
  ADD CONSTRAINT `salidas_ibfk_1` FOREIGN KEY (`tservicio_id_servicio`) REFERENCES `tipo servicio` (`id_servicio`);

--
-- Filtros para la tabla `tipo de usuario`
--
ALTER TABLE `tipo de usuario`
  ADD CONSTRAINT `tipo de usuario_ibfk_1` FOREIGN KEY (`id_tipousuario`) REFERENCES `usuario` (`Id_cliente`),
  ADD CONSTRAINT `tipo de usuario_ibfk_2` FOREIGN KEY (`administrador_id_adm,inistrador`) REFERENCES `administrador` (`id_administrador`),
  ADD CONSTRAINT `tipo de usuario_ibfk_3` FOREIGN KEY (`gerente_id_gerente`) REFERENCES `gerente` (`id_gerente`),
  ADD CONSTRAINT `tipo de usuario_ibfk_4` FOREIGN KEY (`proveedor_id_proveedor`) REFERENCES `proveedor` (`id_proveedor`),
  ADD CONSTRAINT `tipo de usuario_ibfk_5` FOREIGN KEY (`administradorf_id_administradorf`) REFERENCES `administrador financiero` (`id_administradorf`),
  ADD CONSTRAINT `tipo de usuario_ibfk_6` FOREIGN KEY (`mecanico_id_mecanico`) REFERENCES `mecanico` (`id_mecanico`);

--
-- Filtros para la tabla `tipo documento`
--
ALTER TABLE `tipo documento`
  ADD CONSTRAINT `tipo documento_ibfk_1` FOREIGN KEY (`usuario_id_cliente`) REFERENCES `usuario` (`Id_cliente`),
  ADD CONSTRAINT `tipo documento_ibfk_2` FOREIGN KEY (`datos_ndocumento`) REFERENCES `datos` (`num_documento`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
