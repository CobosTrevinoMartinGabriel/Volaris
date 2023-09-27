-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 27-09-2023 a las 08:03:17
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `volaris`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `avion`
--

CREATE TABLE `avion` (
  `idAvion` int(50) NOT NULL,
  `idVuelo` int(50) NOT NULL,
  `capacidadCombus` varchar(50) NOT NULL,
  `emisionCarbono` varchar(50) NOT NULL,
  `nAsientos` int(50) NOT NULL,
  `aeropuertoActual` int(100) NOT NULL,
  `Velocidad` varchar(50) NOT NULL,
  `Pantallas` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cliente`
--

CREATE TABLE `cliente` (
  `IdCliente` int(50) NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  `aPaterno` varchar(100) NOT NULL,
  `aMaterno` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `CURP` varchar(50) NOT NULL,
  `nTelefono` varchar(12) NOT NULL,
  `Contrasena` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleado`
--

CREATE TABLE `empleado` (
  `idEmpleado` int(50) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `aPaterno` varchar(50) NOT NULL,
  `aMaterno` varchar(50) NOT NULL,
  `Sueldo` int(50) NOT NULL,
  `Telefono` varchar(12) NOT NULL,
  `Aeropuerto` int(100) NOT NULL,
  `Cargo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equipaje`
--

CREATE TABLE `equipaje` (
  `idEquipaje` int(50) NOT NULL,
  `idCliente` int(50) NOT NULL,
  `Peso(gr)` int(50) NOT NULL,
  `tipoEquipaje` varchar(50) NOT NULL,
  `idVuelo` int(50) NOT NULL,
  `Size` varchar(30) NOT NULL,
  `equipajeMano` tinyint(1) NOT NULL,
  `pesoMano` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pago`
--

CREATE TABLE `pago` (
  `idPago` int(50) NOT NULL,
  `idPaquete` int(50) NOT NULL,
  `Metodo` varchar(50) NOT NULL,
  `idCliente` int(50) NOT NULL,
  `Subtotal` int(50) NOT NULL,
  `IVA` int(50) NOT NULL,
  `Total` int(50) NOT NULL,
  `idEmpleado` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paquete`
--

CREATE TABLE `paquete` (
  `idPaquete` int(50) NOT NULL,
  `duracion` varchar(100) NOT NULL,
  `nHotel` varchar(150) NOT NULL,
  `idCliente` int(50) NOT NULL,
  `idVuelo` int(50) NOT NULL,
  `Precio` int(50) NOT NULL,
  `nHabitaciones` int(50) NOT NULL,
  `nViajeros` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `vuelo`
--

CREATE TABLE `vuelo` (
  `idVuelo` int(50) NOT NULL,
  `idPaquete` int(50) NOT NULL,
  `diaSalida` date NOT NULL,
  `diaRegreso` date NOT NULL,
  `idAvion` int(50) NOT NULL,
  `Asiento` varchar(10) NOT NULL,
  `Costo` int(50) NOT NULL,
  `Destino` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `avion`
--
ALTER TABLE `avion`
  ADD PRIMARY KEY (`idAvion`);

--
-- Indices de la tabla `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`IdCliente`);

--
-- Indices de la tabla `empleado`
--
ALTER TABLE `empleado`
  ADD PRIMARY KEY (`idEmpleado`);

--
-- Indices de la tabla `equipaje`
--
ALTER TABLE `equipaje`
  ADD PRIMARY KEY (`idEquipaje`);

--
-- Indices de la tabla `pago`
--
ALTER TABLE `pago`
  ADD PRIMARY KEY (`idPago`);

--
-- Indices de la tabla `paquete`
--
ALTER TABLE `paquete`
  ADD PRIMARY KEY (`idPaquete`);

--
-- Indices de la tabla `vuelo`
--
ALTER TABLE `vuelo`
  ADD PRIMARY KEY (`idVuelo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
