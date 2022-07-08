-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-07-2022 a las 20:09:14
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
-- Base de datos: `grupoabrasan`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_bodega`
--

CREATE TABLE `app_bodega` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `ubicacion` varchar(600) NOT NULL,
  `encargado` varchar(300) NOT NULL,
  `obra_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_bodega`
--

INSERT INTO `app_bodega` (`id`, `nombre`, `ubicacion`, `encargado`, `obra_id`) VALUES
(1, 'Bodega 1', 'Rio Cadenas 55a, 77760 Tulum, Q.R..', 'Adriana Paola', 1),
(2, 'Bodega 2', 'Blvd. Palmas Tulum, 77765 Tulum, Q.R.', 'Adriana Paola', 2),
(3, 'Bodega 3', '----', 'Abraham', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_bodegaproductos`
--

CREATE TABLE `app_bodegaproductos` (
  `id` bigint(20) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL,
  `bodega_id` bigint(20) NOT NULL,
  `producto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_bodegaproductos`
--

INSERT INTO `app_bodegaproductos` (`id`, `cantidad`, `minimo`, `bodega_id`, `producto_id`) VALUES
(1, 109, 10, 1, 1),
(2, 26, 10, 1, 6),
(3, 60, 5, 1, 3),
(4, 13, 5, 1, 4),
(5, 10, 5, 1, 12),
(6, 9, 5, 2, 1),
(7, 102, 40, 2, 3),
(8, 89, 40, 2, 8),
(9, 18, 4, 1, 8),
(10, 110, 30, 2, 13),
(11, 150, 80, 3, 8),
(12, 20, 5, 3, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_compra`
--

CREATE TABLE `app_compra` (
  `id` bigint(20) NOT NULL,
  `compra` int(11) DEFAULT NULL,
  `solicitud_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_compra`
--

INSERT INTO `app_compra` (`id`, `compra`, `solicitud_id`) VALUES
(1, 100, 1),
(2, 20, 2),
(3, 150, 3),
(4, 140, 4),
(5, 200, 20),
(6, 92, 21),
(7, 40, 22),
(8, 400, 30),
(9, 200, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_customuser`
--

CREATE TABLE `app_customuser` (
  `id` bigint(20) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `user_type` smallint(5) UNSIGNED DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `app_customuser`
--

INSERT INTO `app_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `user_type`) VALUES
(1, 'pbkdf2_sha256$320000$IHwIS6BYYQ3Ty1GWaTWNrj$iMz182+0X3iP6H3xXAeFr3ihSkp8TT4jvhDlHf7sHc0=', '2022-07-08 17:59:03.258118', 1, 'Adriana', '', '', 'adriana@gmail.com', 1, 1, '2022-07-08 08:01:44.413338', NULL),
(2, 'pbkdf2_sha256$320000$Xza7jyPuhEX2pp7oIzIZK9$RzkAbaLBQ7luc0Wk9R2a89zOQwD7wP10CckuY32tAzU=', '2022-07-08 18:04:29.365751', 0, 'Bodega', '', '', '', 0, 1, '2022-07-08 08:26:24.605360', 2),
(3, 'pbkdf2_sha256$320000$fB6HECMbO0pe1goQ4V6bhV$jRJ4+Da791NIGRbuaATnYBQdXmkHZgLdjqn1I6HalIE=', '2022-07-08 18:05:05.345453', 0, 'Residente', '', '', '', 0, 1, '2022-07-08 08:26:46.126444', 3),
(4, 'pbkdf2_sha256$320000$4GlVB95m3l71cGiyhMI72g$40SSln+kYDmssfv0cP8Ap4peiMKvFeVkLIg5VLriGqo=', '2022-07-08 17:53:35.460619', 0, 'Bodeguero', '', '', '', 0, 1, '2022-07-08 17:52:46.253004', 2),
(5, 'pbkdf2_sha256$320000$zhRH0jloUkc6i2eV9Bimwj$NAGwM+VR0bj4Zvk37QGfj1kBClH3zW1Z/1GwRXrR9iY=', '2022-07-08 17:53:49.426638', 0, 'Residente2', '', '', '', 0, 1, '2022-07-08 17:53:22.942548', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_customuser_groups`
--

CREATE TABLE `app_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_customuser_groups`
--

INSERT INTO `app_customuser_groups` (`id`, `customuser_id`, `group_id`) VALUES
(1, 2, 2),
(2, 3, 3),
(3, 4, 2),
(4, 5, 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_customuser_user_permissions`
--

CREATE TABLE `app_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_insumos`
--

CREATE TABLE `app_insumos` (
  `id` bigint(20) NOT NULL,
  `fecha` date NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `bodegaproducto_id` bigint(20) DEFAULT NULL,
  `obra_id` bigint(20) NOT NULL,
  `villa_id` bigint(20) NOT NULL,
  `notas` varchar(800) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_insumos`
--

INSERT INTO `app_insumos` (`id`, `fecha`, `cantidad`, `bodegaproducto_id`, `obra_id`, `villa_id`, `notas`) VALUES
(1, '2022-07-08', 1, 1, 1, 1, 'Para inicio de obra...'),
(2, '2022-07-08', 7, 2, 1, 1, '.'),
(3, '2022-07-06', 30, 3, 1, 1, 'Planta Alta : 15 Planta Baja: 15'),
(4, '2022-07-07', 7, 2, 1, 1, 'Fachada'),
(5, '2022-07-08', 1, 6, 2, 2, '.'),
(6, '2022-07-05', 18, 7, 2, 2, 'Planta Baja 6 Planta Alta 12'),
(7, '2022-07-05', 13, 8, 2, 2, '.'),
(8, '2022-07-07', 10, 10, 2, 2, 'Primer Nivel : -');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_obra`
--

CREATE TABLE `app_obra` (
  `id` bigint(20) NOT NULL,
  `nombre` varchar(300) NOT NULL,
  `ubicacion` varchar(300) NOT NULL,
  `total_villas` int(11) DEFAULT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_obra`
--

INSERT INTO `app_obra` (`id`, `nombre`, `ubicacion`, `total_villas`, `status`) VALUES
(1, 'Atman Residences', 'Rio Cadenas 55a, 77760 Tulum, Q.R.', 18, '3'),
(2, 'Atman Residences 2', 'Blvd. Palmas Tulum, 77765 Tulum, Q.R.', 15, '3'),
(3, 'Atman Residences 3', '-----', 150, '3');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_producto`
--

CREATE TABLE `app_producto` (
  `id` int(11) NOT NULL,
  `clave` varchar(30) NOT NULL,
  `ubicacion` varchar(200) NOT NULL,
  `categoria` varchar(80) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `proveedor` varchar(500) NOT NULL,
  `unidad` varchar(50) NOT NULL,
  `disp` int(11) DEFAULT NULL,
  `minimo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_producto`
--

INSERT INTO `app_producto` (`id`, `clave`, `ubicacion`, `categoria`, `descripcion`, `proveedor`, `unidad`, `disp`, `minimo`) VALUES
(1, 'INV-1', 'Azotea', '1', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 'MATERAMA', '1', 5360, 200),
(2, 'INV-2', 'Azotea', '1', 'HIDRONEUMATICO 1 HP  52 LITROS (TINACO)', 'HOMEDEPOT', '1', 7890, 220),
(3, 'INV-3', 'Planta Baja', '3', 'APAGADOR SENCILLO NEGRO', 'HOMEDEPOT', '1', 2480, 1320),
(4, 'INV-4', 'Azotea', '7', 'PEGAMENTO TORO SELLADOR 18 KG (ANTES DE IMPERMEABILIZANTE CEMENTOSO)', 'BEREL', '4', 8487, 120),
(5, 'INV-5', 'Villa Tipo', '7', 'PISO PORCELANATO 59.3X59.3 ZEMENTI GRIS RECTIFICADO PORCELANITE', 'ALFER', '12', 5400, 500),
(6, 'INV-6', 'Planta Baja', '7', 'SUMINISTRO E INSTALACION DE PIEDRA GALARZA  EN FACHADAS', 'TEJAS EL AGUILA', '1', 4960, 1200),
(7, 'INV-7', 'Planta Baja', '1', 'CLIMAS  INVERTER DE 2 TONELADA 220 V', 'BOXITIO', '1', 8900, 350),
(8, 'INV-8', 'Planta Baja', '1', 'BOMBA SUMERGIBLE CJA CONTRO 1/2 HP/ OAKBS1250 4SDM2/3 (HP/4SDM2/5)', 'BOXITIO', '1', 7626, 1000),
(9, 'INV-9', 'Planta Baja', '1', 'CALENTADOR ELECTRICO RHEEM DE 3 SERVICIOS 113 LITROS 220 V', 'HOMEDEPOT', '1', 4560, 120),
(10, 'INV-10', 'Planta Baja', '1', 'PARRILLA ELECTRICA VITROCERAMICA  MODELO TT6420 MARCA TEKA', 'ALFER', '1', 7852, 123),
(11, 'INV-11', '1er Nivel', '2', 'HORNO ELECTRICO MULTIFUNCIO MODELO HBB 605 INOX, MARCA TEKA', 'ALFER', '1', 6500, 1200),
(12, 'INV-12', 'Villa Tipo', '3', 'TIMER/RELOJ 115 V INTERMATIC 15 A', 'BRUNI', '1', 7490, 300),
(13, 'INV-13', '1er Nivel', '3', 'LAMPARA TIPO REFLECTOR DE EXTERIOR NEGRO SUMERGIBLE FUENTE MR16 MARCA TECNOLITE', 'MERCADO LIBRE', '1', 3880, 150),
(14, 'INV-14', 'Villa Tipo', '3', 'VENTILADOR DE 3 ASPAS EN MADERA', 'HOMEDEPOT', '1', 7800, 300);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_recepcion`
--

CREATE TABLE `app_recepcion` (
  `id` bigint(20) NOT NULL,
  `llegada` int(11) DEFAULT NULL,
  `pendiente` int(11) DEFAULT NULL,
  `utilizado` int(11) DEFAULT NULL,
  `saldo` int(11) DEFAULT NULL,
  `solicitud_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_recepcion`
--

INSERT INTO `app_recepcion` (`id`, `llegada`, `pendiente`, `utilizado`, `saldo`, `solicitud_id`) VALUES
(1, 20, 0, 8, 102, 2),
(2, 100, 0, 23, 186, 1),
(3, 200, 0, 150, 159, 20),
(4, 92, 0, 23, 159, 21),
(5, 40, 0, 12, 68, 22),
(6, 400, 0, 80, 330, 30),
(7, 200, 0, 100, 113, 31);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_solicitud`
--

CREATE TABLE `app_solicitud` (
  `id` bigint(20) NOT NULL,
  `solicitud` varchar(300) NOT NULL,
  `fecha` date NOT NULL,
  `solicita` varchar(300) NOT NULL,
  `descripcion` varchar(300) NOT NULL,
  `cantidad` int(11) DEFAULT NULL,
  `bodegaproducto_id` bigint(20) NOT NULL,
  `obra_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_solicitud`
--

INSERT INTO `app_solicitud` (`id`, `solicitud`, `fecha`, `solicita`, `descripcion`, `cantidad`, `bodegaproducto_id`, `obra_id`) VALUES
(1, '13-A', '2022-07-08', 'Marco Morales', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 100, 1, 1),
(2, '13-A', '2022-07-08', 'Marco Morales', 'APAGADOR SENCILLO NEGRO', 20, 3, 1),
(3, '12', '2020-10-12', 'Alejandra Castro', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 120, 1, 1),
(4, '12', '2020-10-12', 'Alejandra Castro', 'APAGADOR SENCILLO NEGRO', 140, 3, 1),
(5, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(6, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 36, 3, 1),
(7, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(8, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 56, 3, 1),
(9, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(10, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 36, 3, 1),
(11, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(12, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 56, 3, 1),
(13, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(14, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 36, 3, 1),
(15, '15-D', '2021-07-10', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(16, '15-D', '2021-07-10', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 56, 3, 1),
(17, '17-B', '2022-07-08', 'Marco Morales', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 15, 1, 1),
(18, '17-B', '2022-07-08', 'Marco Morales', 'APAGADOR SENCILLO NEGRO', 69, 3, 1),
(19, '17-B', '2022-07-08', 'Marco Morales', 'SUMINISTRO E INSTALACION DE PIEDRA GALARZA  EN FACHADAS', 32, 2, 1),
(20, '21-D', '2022-07-05', 'Mariana Ruiz', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 200, 1, 1),
(21, '21-D', '2022-07-05', 'Mariana Ruiz', 'APAGADOR SENCILLO NEGRO', 92, 3, 1),
(22, '21-D', '2022-07-05', 'Mariana Ruiz', 'SUMINISTRO E INSTALACION DE PIEDRA GALARZA  EN FACHADAS', 40, 2, 1),
(23, '17-B', '2022-07-08', 'Adriana Paola', 'TIMER/RELOJ 115 V INTERMATIC 15 A', 300, 5, 1),
(24, '17-B', '2022-07-08', 'Adriana Paola', 'BOMBA SUMERGIBLE CJA CONTRO 1/2 HP/ OAKBS1250 4SDM2/3 (HP/4SDM2/5)', 120, 9, 1),
(25, '14-C', '2022-07-07', 'Adriana Paola', 'TIMER/RELOJ 115 V INTERMATIC 15 A', 200, 5, 1),
(26, '14-C', '2022-07-07', 'Adriana Paola', 'PEGAMENTO TORO SELLADOR 18 KG (ANTES DE IMPERMEABILIZANTE CEMENTOSO)', 120, 4, 1),
(27, '14-C', '2022-07-07', 'Adriana Paola', 'BOMBA SUMERGIBLE CJA CONTRO 1/2 HP/ OAKBS1250 4SDM2/3 (HP/4SDM2/5)', 400, 9, 1),
(28, '19-A', '2022-07-14', 'Adriana Paola', 'TINACO IUSA TRICAPA C/ACCESORIOS S/ FILTRO BEIGE 1100 L', 150, 6, 2),
(29, '19-A', '2022-07-14', 'Adriana Paola', 'BOMBA SUMERGIBLE CJA CONTRO 1/2 HP/ OAKBS1250 4SDM2/3 (HP/4SDM2/5)', 80, 8, 2),
(30, '13-C', '2022-07-08', 'Adriana Paola', 'TIMER/RELOJ 115 V INTERMATIC 15 A', 400, 5, 1),
(31, '13-C', '2022-07-08', 'Adriana Paola', 'PEGAMENTO TORO SELLADOR 18 KG (ANTES DE IMPERMEABILIZANTE CEMENTOSO)', 200, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `app_villa`
--

CREATE TABLE `app_villa` (
  `id` bigint(20) NOT NULL,
  `identificador` varchar(20) NOT NULL,
  `obra_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `app_villa`
--

INSERT INTO `app_villa` (`id`, `identificador`, `obra_id`) VALUES
(1, '101', 1),
(2, '201', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(1, 'admin'),
(2, 'bodega'),
(3, 'residente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6),
(7, 1, 7),
(8, 1, 8),
(9, 1, 9),
(10, 1, 10),
(11, 1, 11),
(12, 1, 12),
(13, 1, 13),
(14, 1, 14),
(15, 1, 15),
(16, 1, 16),
(17, 1, 17),
(18, 1, 18),
(19, 1, 19),
(20, 1, 20),
(21, 1, 21),
(22, 1, 22),
(23, 1, 23),
(24, 1, 24),
(25, 1, 25),
(26, 1, 26),
(27, 1, 27),
(28, 1, 28),
(29, 1, 29),
(30, 1, 30),
(31, 1, 31),
(32, 1, 32),
(33, 1, 33),
(34, 1, 34),
(35, 1, 35),
(36, 1, 36),
(37, 1, 37),
(38, 1, 38),
(39, 1, 39),
(40, 1, 40),
(41, 1, 41),
(42, 1, 42),
(43, 1, 43),
(44, 1, 44),
(45, 1, 45),
(46, 1, 46),
(47, 1, 47),
(48, 1, 48),
(49, 1, 49),
(50, 1, 50),
(51, 1, 51),
(52, 1, 52),
(53, 1, 53),
(54, 1, 54),
(55, 1, 55),
(56, 1, 56),
(57, 1, 57),
(58, 1, 58),
(59, 1, 59),
(60, 1, 60),
(61, 2, 1),
(62, 2, 2),
(63, 2, 4),
(64, 2, 6),
(65, 2, 8),
(66, 3, 4),
(67, 3, 8),
(68, 3, 21),
(69, 3, 22),
(70, 3, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add bodega', 1, 'add_bodega'),
(2, 'Can change bodega', 1, 'change_bodega'),
(3, 'Can delete bodega', 1, 'delete_bodega'),
(4, 'Can view bodega', 1, 'view_bodega'),
(5, 'Can add bodega productos', 2, 'add_bodegaproductos'),
(6, 'Can change bodega productos', 2, 'change_bodegaproductos'),
(7, 'Can delete bodega productos', 2, 'delete_bodegaproductos'),
(8, 'Can view bodega productos', 2, 'view_bodegaproductos'),
(9, 'Can add obra', 3, 'add_obra'),
(10, 'Can change obra', 3, 'change_obra'),
(11, 'Can delete obra', 3, 'delete_obra'),
(12, 'Can view obra', 3, 'view_obra'),
(13, 'Can add producto', 4, 'add_producto'),
(14, 'Can change producto', 4, 'change_producto'),
(15, 'Can delete producto', 4, 'delete_producto'),
(16, 'Can view producto', 4, 'view_producto'),
(17, 'Can add villa', 5, 'add_villa'),
(18, 'Can change villa', 5, 'change_villa'),
(19, 'Can delete villa', 5, 'delete_villa'),
(20, 'Can view villa', 5, 'view_villa'),
(21, 'Can add solicitud', 6, 'add_solicitud'),
(22, 'Can change solicitud', 6, 'change_solicitud'),
(23, 'Can delete solicitud', 6, 'delete_solicitud'),
(24, 'Can view solicitud', 6, 'view_solicitud'),
(25, 'Can add recepcion', 7, 'add_recepcion'),
(26, 'Can change recepcion', 7, 'change_recepcion'),
(27, 'Can delete recepcion', 7, 'delete_recepcion'),
(28, 'Can view recepcion', 7, 'view_recepcion'),
(29, 'Can add insumos', 8, 'add_insumos'),
(30, 'Can change insumos', 8, 'change_insumos'),
(31, 'Can delete insumos', 8, 'delete_insumos'),
(32, 'Can view insumos', 8, 'view_insumos'),
(33, 'Can add compra', 9, 'add_compra'),
(34, 'Can change compra', 9, 'change_compra'),
(35, 'Can delete compra', 9, 'delete_compra'),
(36, 'Can view compra', 9, 'view_compra'),
(37, 'Can add user', 10, 'add_customuser'),
(38, 'Can change user', 10, 'change_customuser'),
(39, 'Can delete user', 10, 'delete_customuser'),
(40, 'Can view user', 10, 'view_customuser'),
(41, 'Can add log entry', 11, 'add_logentry'),
(42, 'Can change log entry', 11, 'change_logentry'),
(43, 'Can delete log entry', 11, 'delete_logentry'),
(44, 'Can view log entry', 11, 'view_logentry'),
(45, 'Can add permission', 12, 'add_permission'),
(46, 'Can change permission', 12, 'change_permission'),
(47, 'Can delete permission', 12, 'delete_permission'),
(48, 'Can view permission', 12, 'view_permission'),
(49, 'Can add group', 13, 'add_group'),
(50, 'Can change group', 13, 'change_group'),
(51, 'Can delete group', 13, 'delete_group'),
(52, 'Can view group', 13, 'view_group'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2022-07-08 08:22:59.485548', '1', 'admin', 1, '[{\"added\": {}}]', 13, 1),
(2, '2022-07-08 08:24:33.447462', '2', 'bodega', 1, '[{\"added\": {}}]', 13, 1),
(3, '2022-07-08 08:25:16.751436', '3', 'residente', 1, '[{\"added\": {}}]', 13, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(11, 'admin', 'logentry'),
(1, 'app', 'bodega'),
(2, 'app', 'bodegaproductos'),
(9, 'app', 'compra'),
(10, 'app', 'customuser'),
(8, 'app', 'insumos'),
(3, 'app', 'obra'),
(4, 'app', 'producto'),
(7, 'app', 'recepcion'),
(6, 'app', 'solicitud'),
(5, 'app', 'villa'),
(13, 'auth', 'group'),
(12, 'auth', 'permission'),
(14, 'contenttypes', 'contenttype'),
(15, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-07-08 08:00:40.218468'),
(2, 'contenttypes', '0002_remove_content_type_name', '2022-07-08 08:00:40.532810'),
(3, 'auth', '0001_initial', '2022-07-08 08:00:42.196060'),
(4, 'auth', '0002_alter_permission_name_max_length', '2022-07-08 08:00:42.512178'),
(5, 'auth', '0003_alter_user_email_max_length', '2022-07-08 08:00:42.542417'),
(6, 'auth', '0004_alter_user_username_opts', '2022-07-08 08:00:42.634899'),
(7, 'auth', '0005_alter_user_last_login_null', '2022-07-08 08:00:42.716119'),
(8, 'auth', '0006_require_contenttypes_0002', '2022-07-08 08:00:42.876022'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2022-07-08 08:00:42.911953'),
(10, 'auth', '0008_alter_user_username_max_length', '2022-07-08 08:00:42.932350'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2022-07-08 08:00:42.970063'),
(12, 'auth', '0010_alter_group_name_max_length', '2022-07-08 08:00:43.030061'),
(13, 'auth', '0011_update_proxy_permissions', '2022-07-08 08:00:43.081067'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2022-07-08 08:00:43.113059'),
(15, 'app', '0001_initial', '2022-07-08 08:00:52.237919'),
(16, 'admin', '0001_initial', '2022-07-08 08:00:53.421491'),
(17, 'admin', '0002_logentry_remove_auto_add', '2022-07-08 08:00:53.468696'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2022-07-08 08:00:53.498763'),
(19, 'app', '0002_alter_customuser_user_type', '2022-07-08 08:00:53.984752'),
(20, 'app', '0003_alter_customuser_user_type', '2022-07-08 08:00:54.630209'),
(21, 'app', '0004_alter_customuser_user_type', '2022-07-08 08:00:55.720300'),
(22, 'app', '0005_obra_status', '2022-07-08 08:00:55.817273'),
(23, 'sessions', '0001_initial', '2022-07-08 08:00:56.186232'),
(24, 'app', '0006_insumos_notas', '2022-07-08 08:13:22.363957');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `app_bodega`
--
ALTER TABLE `app_bodega`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_bodega_obra_id_99e4f171_fk_app_obra_id` (`obra_id`);

--
-- Indices de la tabla `app_bodegaproductos`
--
ALTER TABLE `app_bodegaproductos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_bodegaproductos_producto_id_f4a011a8_fk_app_producto_id` (`producto_id`),
  ADD KEY `app_bodegaproductos_bodega_id_212948b6_fk_app_bodega_id` (`bodega_id`);

--
-- Indices de la tabla `app_compra`
--
ALTER TABLE `app_compra`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_compra_solicitud_id_3aa7ece4_fk_app_solicitud_id` (`solicitud_id`);

--
-- Indices de la tabla `app_customuser`
--
ALTER TABLE `app_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `app_customuser_groups`
--
ALTER TABLE `app_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_customuser_groups_customuser_id_group_id_a5a0ca22_uniq` (`customuser_id`,`group_id`),
  ADD KEY `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `app_customuser_user_permissions`
--
ALTER TABLE `app_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `app_customuser_user_perm_customuser_id_permission_22e31019_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `app_customuser_user__permission_id_c5920c75_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `app_insumos`
--
ALTER TABLE `app_insumos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_insumos_bodegaproducto_id_f135cc88_fk_app_bodegaproductos_id` (`bodegaproducto_id`),
  ADD KEY `app_insumos_obra_id_f442491c_fk_app_obra_id` (`obra_id`),
  ADD KEY `app_insumos_villa_id_6f4354b3_fk_app_villa_id` (`villa_id`);

--
-- Indices de la tabla `app_obra`
--
ALTER TABLE `app_obra`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `app_producto`
--
ALTER TABLE `app_producto`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clave` (`clave`);

--
-- Indices de la tabla `app_recepcion`
--
ALTER TABLE `app_recepcion`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_recepcion_solicitud_id_96b86610_fk_app_solicitud_id` (`solicitud_id`);

--
-- Indices de la tabla `app_solicitud`
--
ALTER TABLE `app_solicitud`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_solicitud_bodegaproducto_id_12507fe3_fk_app_bodeg` (`bodegaproducto_id`),
  ADD KEY `app_solicitud_obra_id_50562684_fk_app_obra_id` (`obra_id`);

--
-- Indices de la tabla `app_villa`
--
ALTER TABLE `app_villa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `app_villa_obra_id_25b199ca_fk_app_obra_id` (`obra_id`);

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_app_customuser_id` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `app_bodega`
--
ALTER TABLE `app_bodega`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `app_bodegaproductos`
--
ALTER TABLE `app_bodegaproductos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `app_compra`
--
ALTER TABLE `app_compra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `app_customuser`
--
ALTER TABLE `app_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `app_customuser_groups`
--
ALTER TABLE `app_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `app_customuser_user_permissions`
--
ALTER TABLE `app_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `app_insumos`
--
ALTER TABLE `app_insumos`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `app_obra`
--
ALTER TABLE `app_obra`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `app_producto`
--
ALTER TABLE `app_producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `app_recepcion`
--
ALTER TABLE `app_recepcion`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `app_solicitud`
--
ALTER TABLE `app_solicitud`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `app_villa`
--
ALTER TABLE `app_villa`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `app_bodega`
--
ALTER TABLE `app_bodega`
  ADD CONSTRAINT `app_bodega_obra_id_99e4f171_fk_app_obra_id` FOREIGN KEY (`obra_id`) REFERENCES `app_obra` (`id`);

--
-- Filtros para la tabla `app_bodegaproductos`
--
ALTER TABLE `app_bodegaproductos`
  ADD CONSTRAINT `app_bodegaproductos_bodega_id_212948b6_fk_app_bodega_id` FOREIGN KEY (`bodega_id`) REFERENCES `app_bodega` (`id`),
  ADD CONSTRAINT `app_bodegaproductos_producto_id_f4a011a8_fk_app_producto_id` FOREIGN KEY (`producto_id`) REFERENCES `app_producto` (`id`);

--
-- Filtros para la tabla `app_compra`
--
ALTER TABLE `app_compra`
  ADD CONSTRAINT `app_compra_solicitud_id_3aa7ece4_fk_app_solicitud_id` FOREIGN KEY (`solicitud_id`) REFERENCES `app_solicitud` (`id`);

--
-- Filtros para la tabla `app_customuser_groups`
--
ALTER TABLE `app_customuser_groups`
  ADD CONSTRAINT `app_customuser_group_customuser_id_164d073f_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
  ADD CONSTRAINT `app_customuser_groups_group_id_47e49ebd_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `app_customuser_user_permissions`
--
ALTER TABLE `app_customuser_user_permissions`
  ADD CONSTRAINT `app_customuser_user__customuser_id_4bcbaafb_fk_app_custo` FOREIGN KEY (`customuser_id`) REFERENCES `app_customuser` (`id`),
  ADD CONSTRAINT `app_customuser_user__permission_id_c5920c75_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Filtros para la tabla `app_insumos`
--
ALTER TABLE `app_insumos`
  ADD CONSTRAINT `app_insumos_bodegaproducto_id_f135cc88_fk_app_bodegaproductos_id` FOREIGN KEY (`bodegaproducto_id`) REFERENCES `app_bodegaproductos` (`id`),
  ADD CONSTRAINT `app_insumos_obra_id_f442491c_fk_app_obra_id` FOREIGN KEY (`obra_id`) REFERENCES `app_obra` (`id`),
  ADD CONSTRAINT `app_insumos_villa_id_6f4354b3_fk_app_villa_id` FOREIGN KEY (`villa_id`) REFERENCES `app_villa` (`id`);

--
-- Filtros para la tabla `app_recepcion`
--
ALTER TABLE `app_recepcion`
  ADD CONSTRAINT `app_recepcion_solicitud_id_96b86610_fk_app_solicitud_id` FOREIGN KEY (`solicitud_id`) REFERENCES `app_solicitud` (`id`);

--
-- Filtros para la tabla `app_solicitud`
--
ALTER TABLE `app_solicitud`
  ADD CONSTRAINT `app_solicitud_bodegaproducto_id_12507fe3_fk_app_bodeg` FOREIGN KEY (`bodegaproducto_id`) REFERENCES `app_bodegaproductos` (`id`),
  ADD CONSTRAINT `app_solicitud_obra_id_50562684_fk_app_obra_id` FOREIGN KEY (`obra_id`) REFERENCES `app_obra` (`id`);

--
-- Filtros para la tabla `app_villa`
--
ALTER TABLE `app_villa`
  ADD CONSTRAINT `app_villa_obra_id_25b199ca_fk_app_obra_id` FOREIGN KEY (`obra_id`) REFERENCES `app_obra` (`id`);

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_app_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `app_customuser` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
