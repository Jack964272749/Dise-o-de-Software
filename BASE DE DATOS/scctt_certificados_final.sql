-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-12-2025 a las 06:23:58
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `scctt_certificados_final`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `certificado`
--

CREATE TABLE `certificado` (
  `idCertificado` int(11) NOT NULL,
  `idResultado` int(11) DEFAULT NULL,
  `codigoVerificacion` varchar(50) DEFAULT NULL,
  `fechaEmision` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `certificado`
--

INSERT INTO `certificado` (`idCertificado`, `idResultado`, `codigoVerificacion`, `fechaEmision`) VALUES
(101, 101, 'C-001', '2024-03-20'),
(102, 102, 'C-002', '2024-03-25'),
(103, 103, 'C-003', '2024-04-30'),
(104, 104, 'C-004', '2024-05-05'),
(107, 107, 'C-007', '2024-06-10'),
(108, 108, 'C-008', '2024-06-19'),
(112, 112, 'C-012', '2024-07-30'),
(113, 113, 'C-013', '2024-08-04'),
(115, 115, 'C-015', '2024-03-30'),
(116, 116, 'C-016', '2024-05-04'),
(117, 117, 'C-017', '2024-06-13'),
(118, 118, 'C-018', '2024-07-09');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `informetecnico`
--

CREATE TABLE `informetecnico` (
  `idInforme` int(11) NOT NULL,
  `idSolicitud` int(11) DEFAULT NULL,
  `idSustentacion` int(11) DEFAULT NULL,
  `rutaArchivo` varchar(255) DEFAULT NULL,
  `fechaSubida` date DEFAULT NULL,
  `estadoRevision` varchar(30) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `informetecnico`
--

INSERT INTO `informetecnico` (`idInforme`, `idSolicitud`, `idSustentacion`, `rutaArchivo`, `fechaSubida`, `estadoRevision`, `observaciones`) VALUES
(101, 101, NULL, 'i_101.pdf', '2024-03-05', 'Aprobado', 'IT sin problemas'),
(102, 102, NULL, 'i_102.pdf', '2024-03-08', 'Aprobado', 'IT sin problemas'),
(103, 103, NULL, 'i_103.pdf', '2024-04-14', 'Observado', 'IT falta datos'),
(104, 104, NULL, 'i_104.pdf', '2024-04-19', 'Aprobado', 'IT ok'),
(105, 105, NULL, 'i_105.pdf', '2024-05-05', 'Aprobado', 'IT ok'),
(106, 106, NULL, 'i_106.pdf', '2024-05-07', 'Observado', 'IT corregir sección'),
(107, 107, NULL, 'i_107.pdf', '2024-05-23', 'Aprobado', 'IT ok'),
(108, 108, NULL, 'i_108.pdf', '2024-06-04', 'Aprobado', 'IT ok'),
(109, 109, NULL, 'i_109.pdf', '2024-06-09', 'Aprobado', 'IT ok'),
(110, 110, NULL, 'i_110.pdf', '2024-06-14', 'Aprobado', 'IT ok'),
(111, 111, NULL, 'i_111.pdf', '2024-07-04', 'En revisión', 'IT pendiente de comité'),
(114, 114, NULL, 'i_114.pdf', '2024-07-18', 'Pendiente', 'IT asignado'),
(115, 115, NULL, 'i_115.pdf', '2024-03-19', 'Aprobado', 'IT sin problemas'),
(116, 116, NULL, 'i_116.pdf', '2024-04-24', 'Aprobado', 'IT sin problemas'),
(117, 117, NULL, 'i_117.pdf', '2024-05-28', 'Aprobado', 'IT sin problemas'),
(118, 118, NULL, 'i_118.pdf', '2024-06-24', 'Aprobado', 'IT sin problemas'),
(119, 119, NULL, 'i_119.pdf', '2024-07-28', 'Observado', 'IT Corregir formato'),
(120, 120, NULL, 'i_120.pdf', '2024-08-01', 'En revisión', 'IT en curso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado`
--

CREATE TABLE `resultado` (
  `idResultado` int(11) NOT NULL,
  `idCertificado` int(11) DEFAULT NULL,
  `idSustentacion` int(11) DEFAULT NULL,
  `nota` decimal(4,2) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `resultado`
--

INSERT INTO `resultado` (`idResultado`, `idCertificado`, `idSustentacion`, `nota`, `fechaRegistro`) VALUES
(101, NULL, 101, 17.00, '2024-03-10'),
(102, NULL, 102, 18.00, '2024-03-15'),
(103, NULL, 103, 15.50, '2024-04-20'),
(104, NULL, 104, 16.80, '2024-04-25'),
(107, NULL, 107, 17.50, '2024-05-30'),
(108, NULL, 108, 14.00, '2024-06-09'),
(109, NULL, 109, 18.20, '2024-06-14'),
(110, NULL, 110, 15.00, '2024-06-19'),
(112, NULL, 112, 15.00, '2024-07-20'),
(113, NULL, 113, 16.00, '2024-07-25'),
(115, NULL, 115, 16.00, '2024-03-24'),
(116, NULL, 116, 17.20, '2024-04-29'),
(117, NULL, 117, 18.50, '2024-06-03'),
(118, NULL, 118, 15.80, '2024-06-29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `idSolicitud` int(11) NOT NULL,
  `idUsuario` int(11) DEFAULT NULL,
  `fechaRegistro` date DEFAULT NULL,
  `fechaSubida` date DEFAULT NULL,
  `estadoRevision` varchar(30) DEFAULT NULL,
  `observaciones` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`idSolicitud`, `idUsuario`, `fechaRegistro`, `fechaSubida`, `estadoRevision`, `observaciones`) VALUES
(101, 1, '2024-03-01', '2024-03-02', 'Aprobado', 'Rápido y conforme'),
(102, 2, '2024-03-05', '2024-03-06', 'Aprobado', 'Flujo normal'),
(103, 1, '2024-04-10', '2024-04-11', 'Aprobado', 'Excelente calidad'),
(104, 2, '2024-04-15', '2024-04-16', 'Aprobado', 'Cumple requisitos'),
(105, 1, '2024-05-01', '2024-05-02', 'Observado', 'Falta firma del director'),
(106, 2, '2024-05-03', '2024-05-04', 'Observado', 'Adjuntar informe final'),
(107, 1, '2024-05-20', '2024-05-21', 'Aprobado', 'Conforme después de corrección'),
(108, 2, '2024-06-01', '2024-06-02', 'Aprobado', 'Tiempo considerable'),
(109, 1, '2024-06-05', '2024-06-06', 'Observado', 'Error en datos personales'),
(110, 2, '2024-06-10', '2024-06-11', 'Aprobado', 'Flujo normal'),
(111, 1, '2024-07-01', '2024-07-02', 'Aprobado', 'Nuevo trámite'),
(112, 2, '2024-07-05', '2024-07-06', 'Pendiente', 'Nueva solicitud en cola'),
(113, 1, '2024-07-10', '2024-07-11', 'Pendiente', 'Esperando validación inicial'),
(114, 2, '2024-07-15', '2024-07-16', 'Pendiente', 'Recién ingresado'),
(115, 1, '2024-03-15', '2024-03-16', 'Aprobado', 'Caso de Marzo'),
(116, 2, '2024-04-20', '2024-04-21', 'Aprobado', 'Caso de Abril'),
(117, 1, '2024-05-25', '2024-05-26', 'Aprobado', 'Caso de Mayo'),
(118, 2, '2024-06-20', '2024-06-21', 'Aprobado', 'Caso de Junio'),
(119, 1, '2024-07-25', '2024-07-26', 'Observado', 'Revisar anexo'),
(120, 2, '2024-07-30', '2024-07-31', 'Pendiente', 'Caso reciente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sustentacion`
--

CREATE TABLE `sustentacion` (
  `idSustentacion` int(11) NOT NULL,
  `idInforme` int(11) DEFAULT NULL,
  `idResultado` int(11) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `hora` time DEFAULT NULL,
  `modalidad` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `sustentacion`
--

INSERT INTO `sustentacion` (`idSustentacion`, `idInforme`, `idResultado`, `fecha`, `hora`, `modalidad`) VALUES
(101, 101, NULL, '2024-03-10', '10:00:00', 'Presencial'),
(102, 102, NULL, '2024-03-15', '11:00:00', 'Virtual'),
(103, 103, NULL, '2024-04-20', '09:00:00', 'Presencial'),
(104, 104, NULL, '2024-04-25', '14:00:00', 'Virtual'),
(105, 105, NULL, '2024-05-10', '16:00:00', 'Presencial'),
(106, 106, NULL, '2024-05-15', '10:00:00', 'Virtual'),
(107, 107, NULL, '2024-05-30', '11:00:00', 'Presencial'),
(108, 108, NULL, '2024-06-09', '09:00:00', 'Virtual'),
(109, 109, NULL, '2024-06-14', '14:00:00', 'Presencial'),
(110, 110, NULL, '2024-06-19', '16:00:00', 'Virtual'),
(112, 112, NULL, '2024-07-20', '10:00:00', 'Presencial'),
(113, 113, NULL, '2024-07-25', '11:00:00', 'Virtual'),
(115, 115, NULL, '2024-03-24', '10:00:00', 'Presencial'),
(116, 116, NULL, '2024-04-29', '11:00:00', 'Virtual'),
(117, 117, NULL, '2024-06-03', '09:00:00', 'Presencial'),
(118, 118, NULL, '2024-06-29', '14:00:00', 'Virtual');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `idUsuario` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `rol` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`idUsuario`, `nombres`, `apellidos`, `correo`, `contrasena`, `rol`) VALUES
(1, 'Luis Alberto', 'Quispe Huamán', 'lquispe@upla.edu.pe', '123456', 'Estudiante'),
(2, 'María Fernanda', 'Rojas Salazar', 'mrojas@upla.edu.pe', '123456', 'Estudiante'),
(3, 'Carlos Enrique', 'Vargas Medina', 'cvargas@upla.edu.pe', '123456', 'Docente'),
(4, 'Ana Lucía', 'Gutiérrez Poma', 'agutierrez@upla.edu.pe', '123456', 'Secretaría'),
(5, 'Jorge Antonio', 'Soto Núñez', 'jsoto@upla.edu.pe', '123456', 'Administrador');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `vista_reporte_final_pb`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `vista_reporte_final_pb` (
`idSolicitud` int(11)
,`Fecha_Inicio_Tramite` date
,`Fecha_Fin_Tramite` date
,`Duracion_Dias` int(7)
,`Flag_Emitido` int(1)
,`Flag_Activo_Pendiente` int(1)
,`Estado_Actual_Flujo` varchar(30)
,`Observaciones_Tecnicas` varchar(200)
,`idUsuario` int(11)
,`Nombre_Solicitante` varchar(100)
,`Apellido_Solicitante` varchar(100)
,`Rol_Usuario` varchar(30)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `vista_reporte_final_pb`
--
DROP TABLE IF EXISTS `vista_reporte_final_pb`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vista_reporte_final_pb`  AS SELECT `s`.`idSolicitud` AS `idSolicitud`, `s`.`fechaRegistro` AS `Fecha_Inicio_Tramite`, `c`.`fechaEmision` AS `Fecha_Fin_Tramite`, to_days(`c`.`fechaEmision`) - to_days(`s`.`fechaRegistro`) AS `Duracion_Dias`, CASE WHEN `c`.`fechaEmision` is not null THEN 1 ELSE 0 END AS `Flag_Emitido`, CASE WHEN `c`.`fechaEmision` is null THEN 1 ELSE 0 END AS `Flag_Activo_Pendiente`, coalesce(`it`.`estadoRevision`,`s`.`estadoRevision`) AS `Estado_Actual_Flujo`, coalesce(`it`.`observaciones`,`s`.`observaciones`) AS `Observaciones_Tecnicas`, `u`.`idUsuario` AS `idUsuario`, `u`.`nombres` AS `Nombre_Solicitante`, `u`.`apellidos` AS `Apellido_Solicitante`, `u`.`rol` AS `Rol_Usuario` FROM (((((`solicitud` `s` left join `usuario` `u` on(`s`.`idUsuario` = `u`.`idUsuario`)) left join `informetecnico` `it` on(`s`.`idSolicitud` = `it`.`idSolicitud`)) left join `sustentacion` `su` on(`it`.`idInforme` = `su`.`idInforme`)) left join `resultado` `r` on(`su`.`idSustentacion` = `r`.`idSustentacion`)) left join `certificado` `c` on(`r`.`idResultado` = `c`.`idResultado`)) ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD PRIMARY KEY (`idCertificado`),
  ADD KEY `fk_certificado_resultado` (`idResultado`);

--
-- Indices de la tabla `informetecnico`
--
ALTER TABLE `informetecnico`
  ADD PRIMARY KEY (`idInforme`),
  ADD KEY `fk_informe_solicitud` (`idSolicitud`);

--
-- Indices de la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD PRIMARY KEY (`idResultado`),
  ADD KEY `fk_resultado_sustentacion` (`idSustentacion`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`idSolicitud`),
  ADD KEY `fk_solicitud_usuario` (`idUsuario`);

--
-- Indices de la tabla `sustentacion`
--
ALTER TABLE `sustentacion`
  ADD PRIMARY KEY (`idSustentacion`),
  ADD KEY `fk_sustentacion_informe` (`idInforme`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`idUsuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `certificado`
--
ALTER TABLE `certificado`
  MODIFY `idCertificado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `informetecnico`
--
ALTER TABLE `informetecnico`
  MODIFY `idInforme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `resultado`
--
ALTER TABLE `resultado`
  MODIFY `idResultado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `idSolicitud` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT de la tabla `sustentacion`
--
ALTER TABLE `sustentacion`
  MODIFY `idSustentacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `idUsuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `certificado`
--
ALTER TABLE `certificado`
  ADD CONSTRAINT `fk_certificado_resultado` FOREIGN KEY (`idResultado`) REFERENCES `resultado` (`idResultado`);

--
-- Filtros para la tabla `informetecnico`
--
ALTER TABLE `informetecnico`
  ADD CONSTRAINT `fk_informe_solicitud` FOREIGN KEY (`idSolicitud`) REFERENCES `solicitud` (`idSolicitud`);

--
-- Filtros para la tabla `resultado`
--
ALTER TABLE `resultado`
  ADD CONSTRAINT `fk_resultado_sustentacion` FOREIGN KEY (`idSustentacion`) REFERENCES `sustentacion` (`idSustentacion`);

--
-- Filtros para la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD CONSTRAINT `fk_solicitud_usuario` FOREIGN KEY (`idUsuario`) REFERENCES `usuario` (`idUsuario`);

--
-- Filtros para la tabla `sustentacion`
--
ALTER TABLE `sustentacion`
  ADD CONSTRAINT `fk_sustentacion_informe` FOREIGN KEY (`idInforme`) REFERENCES `informetecnico` (`idInforme`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
