-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-06-2020 a las 18:58:19
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `uploadit`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `archivos`
--
CREATE DATABASE uploadit;
USE uploadit;
CREATE TABLE `archivos` (
  `id` int(11) NOT NULL,
  `user` int(11) NOT NULL,
  `ruta` varchar(100) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `size` int(50) NOT NULL,
  `publicacion` int(11) NOT NULL,
  `filtro` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `archivos`
--

INSERT INTO `archivos` (`id`, `user`, `ruta`, `tipo`, `size`, `publicacion`, `filtro`, `fecha`) VALUES
(17, 1, 'ID-17-NAME-413D01.jpg', 'image/jpeg', 10583, 17, '', '2020-05-22 05:11:12'),
(18, 1, 'ID-18-NAME-1FB93C.jpg', 'image/jpeg', 203612, 18, '', '2020-05-22 05:12:55'),
(19, 1, 'ID-19-NAME-7D6348.jpg', 'image/jpeg', 10583, 19, '', '2020-05-22 06:22:40'),
(20, 1, 'ID-20-NAME-E8AAE6.jpg', 'image/jpeg', 52300, 20, '', '2020-05-22 06:26:35'),
(21, 1, 'ID-21-NAME-58BDD9.jpg', 'image/jpeg', 126736, 21, '', '2020-05-22 06:44:07'),
(22, 1, 'ID-22-NAME-25D6EF.jpg', 'image/jpeg', 126736, 22, '', '2020-05-22 06:45:00'),
(23, 1, 'ID-23-NAME-FD721C.jpg', 'image/jpeg', 1074526, 23, '', '2020-05-22 06:45:08'),
(24, 1, 'ID-24-NAME-219AC4.jpg', 'image/jpeg', 1074526, 24, '', '2020-05-22 06:46:09'),
(25, 1, 'ID-25-NAME-34A972.jpg', 'image/jpeg', 57801, 25, '', '2020-05-22 06:46:17'),
(26, 1, 'ID-26-NAME-BE5577.jpg', 'image/png', 7633, 26, '', '2020-05-22 06:46:51'),
(27, 1, 'ID-27-NAME-780596.jpg', 'image/jpeg', 2129424, 27, '', '2020-05-22 07:18:31'),
(28, 1, 'ID-28-NAME-DB8639.jpg', 'image/jpeg', 2129424, 28, '', '2020-05-22 07:21:33'),
(29, 1, 'ID-29-NAME-2BD2AC.jpg', 'image/jpeg', 2129424, 29, '', '2020-05-22 07:23:08'),
(30, 1, 'ID-30-NAME-46152D.jpg', 'image/jpeg', 2129424, 30, '', '2020-05-22 07:23:27'),
(31, 1, 'ID-31-NAME-092C35.jpg', 'image/jpeg', 2129424, 31, '', '2020-05-22 07:23:32'),
(32, 1, 'ID-32-NAME-37ABB3.jpg', 'image/jpeg', 138343, 32, '', '2020-05-22 07:25:27'),
(33, 1, 'ID-33-NAME-A4A87C.jpg', 'image/jpeg', 138343, 33, '', '2020-05-22 07:25:52'),
(34, 1, 'ID-34-NAME-C7AC2F.jpg', 'image/jpeg', 138343, 34, '', '2020-05-22 07:26:17'),
(35, 1, 'ID-35-NAME-1EDEAD.jpg', 'image/jpeg', 138343, 35, '', '2020-05-22 07:26:31'),
(36, 1, 'ID-36-NAME-CA106A.jpg', 'image/jpeg', 138343, 36, '', '2020-05-22 07:28:06'),
(37, 1, 'ID-37-NAME-24DA95.jpg', 'image/png', 1710976, 37, '', '2020-05-22 07:28:13'),
(38, 1, 'ID-38-NAME-A8C6CE.jpg', 'image/png', 347807, 38, '', '2020-05-22 07:28:36'),
(39, 1, 'ID-39-NAME-42F74D.jpg', 'image/png', 347807, 39, '', '2020-05-22 07:29:30'),
(40, 1, 'ID-40-NAME-693DD0.jpg', 'image/png', 347807, 40, '', '2020-05-22 07:30:02'),
(41, 1, 'ID-41-NAME-C48F4A.jpg', 'image/png', 347807, 41, '', '2020-05-22 09:03:40'),
(42, 1, 'ID-42-NAME-316856.jpg', 'image/jpeg', 294729, 42, '', '2020-05-22 09:45:29'),
(43, 1, 'ID-43-NAME-74EABE.jpg', 'image/png', 153793, 43, '', '2020-05-22 10:19:31'),
(44, 1, 'ID-44-NAME-4EE564.jpg', 'image/jpeg', 21558, 44, '', '2020-05-22 10:48:44'),
(45, 1, 'ID-45-NAME-F9259C.jpg', 'image/png', 16110, 45, '', '2020-05-22 10:49:31'),
(46, 0, 'ID-46-NAME-F41E4A.jpg', 'image/png', 1710976, 46, '', '2020-05-24 22:39:57'),
(47, 0, 'ID-47-NAME-821208.jpg', 'image/png', 153793, 47, '', '2020-05-24 22:41:25'),
(48, 0, 'ID-48-NAME-714FC0.jpg', 'image/png', 153793, 48, '', '2020-05-24 22:49:40'),
(49, 0, 'ID-49-NAME-F5F841.jpg', 'image/png', 984324, 49, '', '2020-05-24 22:52:23'),
(50, 5, 'ID-50-NAME-0622BC.jpg', 'image/png', 7633, 50, '', '2020-05-27 12:30:45'),
(52, 30, 'ID-52-NAME-841A3A.jpg', 'image/jpeg', 21558, 52, '', '2020-05-27 14:29:46'),
(53, 31, 'ID-53-NAME-BEADE9.jpg', 'image/jpeg', 21558, 53, '', '2020-05-27 14:37:02'),
(54, 1, 'ID-54-NAME-8CAE55.jpg', 'image/png', 1693753, 54, '', '2020-05-28 12:08:27'),
(55, 1, 'ID-55-NAME-C78844.jpg', 'image/png', 153793, 55, '', '2020-05-28 12:08:53'),
(56, 1, 'ID-56-NAME-3AF5E1.jpg', 'image/png', 153793, 56, '', '2020-05-28 12:09:16'),
(57, 1, 'ID-57-NAME-AFB30A.jpg', 'image/png', 153793, 57, '', '2020-05-28 12:09:31'),
(58, 1, 'ID-58-NAME-CEBC5A.jpg', 'image/png', 153793, 58, '', '2020-05-28 12:09:44'),
(59, 5, 'ID-59-NAME-C35313.jpg', 'image/png', 153793, 59, '', '2020-05-28 21:51:55'),
(60, 5, 'ID-60-NAME-E69819.jpg', 'image/png', 7633, 60, '', '2020-05-28 21:53:39'),
(61, 5, 'ID-61-NAME-80DA89.jpg', 'image/png', 7633, 61, '', '2020-05-28 21:56:51'),
(62, 5, 'ID-62-NAME-B36131.jpg', 'image/jpeg', 36472, 62, '', '2020-05-28 21:57:00'),
(63, 5, 'ID-63-NAME-A1FF51.jpg', 'image/jpeg', 294729, 63, '', '2020-05-28 22:25:56'),
(64, 5, 'ID-64-NAME-667D2F.jpg', 'image/jpeg', 186397, 64, '', '2020-05-28 22:27:21'),
(65, 5, 'ID-65-NAME-37788A.jpg', 'image/jpeg', 186397, 65, '', '2020-05-29 08:50:53'),
(66, 5, 'ID-66-NAME-D12281.jpg', 'image/jpeg', 4979, 66, '', '2020-05-29 08:55:40'),
(71, 5, 'ID-71-NAME-FCF9F9.jpg', 'image/jpeg', 20849, 71, '', '2020-06-03 17:01:43'),
(72, 5, 'ID-72-NAME-CE5E81.jpg', 'image/jpeg', 188574, 72, '', '2020-06-03 17:32:37'),
(73, 5, 'ID-73-NAME-D666B1.jpg', 'image/jpeg', 20849, 73, '', '2020-06-05 09:36:47'),
(74, 86, 'ID-74-NAME-D56FB5.jpg', 'image/jpeg', 4979, 74, '', '2020-06-05 09:42:29'),
(75, 91, 'ID-75-NAME-BEDB4F.jpg', 'image/jpeg', 20849, 75, '', '2020-06-07 17:43:14'),
(76, 5, 'ID-76-NAME-021133.jpg', 'image/jpeg', 20849, 76, '', '2020-06-07 18:59:14'),
(77, 5, 'ID-77-NAME-F69D52.jpg', 'image/jpeg', 186397, 77, '', '2020-06-07 19:05:16'),
(78, 5, '', 'image/jpeg', 4979, 78, '', '2020-06-07 19:10:25'),
(79, 5, '', 'image/jpeg', 70410, 79, '', '2020-06-07 19:12:20'),
(80, 5, '', 'image/jpeg', 4979, 80, '', '2020-06-07 19:16:48'),
(81, 5, '', 'image/jpeg', 70410, 81, '', '2020-06-07 19:27:39'),
(82, 100, '', 'image/jpeg', 186397, 82, '', '2020-06-13 17:59:03'),
(83, 5, '', 'image/jpeg', 4979, 83, '', '2020-06-14 18:26:53'),
(84, 5, '', 'image/jpeg', 4979, 84, '', '2020-06-14 18:34:25'),
(85, 5, '', 'image/jpeg', 35394, 85, '', '2020-06-14 18:41:51'),
(86, 118, '', 'image/jpeg', 4979, 86, '', '2020-06-14 22:15:27'),
(87, 136, '', 'image/jpeg', 4979, 87, '', '2020-06-15 00:00:21'),
(88, 5, '', 'image/jpeg', 20849, 88, '', '2020-06-15 17:09:20'),
(89, 141, '', 'image/jpeg', 186397, 89, '', '2020-06-15 17:40:15'),
(90, 5, '', 'image/png', 148303, 90, '', '2020-06-15 17:49:38'),
(91, 5, '', 'image/png', 311606, 91, '', '2020-06-15 18:13:03'),
(92, 5, '', 'image/png', 6424, 92, '', '2020-06-15 18:13:53'),
(93, 142, '', 'image/png', 82135, 93, '', '2020-06-15 18:53:49');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `chat`
--

CREATE TABLE `chat` (
  `ID` int(11) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `texto` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `chat`
--

INSERT INTO `chat` (`ID`, `nombre`, `texto`) VALUES
(9, 'ella', 'me encanta esta pagina web'),
(10, 'ella', 'buena pagina'),
(13, 'ella', ':D');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `comentario` varchar(255) NOT NULL,
  `fecha` date NOT NULL,
  `publicacion` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comentarios`
--

INSERT INTO `comentarios` (`id`, `usuario`, `comentario`, `fecha`, `publicacion`) VALUES
(298, 'ella', 'buena musica', '2020-06-15', 85),
(299, 'ella', 'buena cancion', '2020-06-15', 81),
(302, 'ella', ':D', '2020-06-15', 85);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `id` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `usuario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `usuario` int(11) NOT NULL,
  `post` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pagina`
--

CREATE TABLE `pagina` (
  `id_pag` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `pagina`
--

INSERT INTO `pagina` (`id_pag`, `titulo`, `url`) VALUES
(1, 'home', 'home'),
(2, 'perfiluser', 'perfiluser'),
(3, 'tienda', 'indexcarrito'),
(4, 'carrito', 'mostrarcarrito');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `publicaciones`
--

CREATE TABLE `publicaciones` (
  `id` int(11) NOT NULL,
  `user` varchar(255) DEFAULT NULL,
  `descripcion` text NOT NULL,
  `ubicacion` varchar(255) NOT NULL,
  `fecha` datetime NOT NULL,
  `likes` int(11) NOT NULL,
  `titulo` text NOT NULL,
  `nombreuser` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `publicaciones`
--

INSERT INTO `publicaciones` (`id`, `user`, `descripcion`, `ubicacion`, `fecha`, `likes`, `titulo`, `nombreuser`) VALUES
(49, '1', '1.jpg', 'http://bsrmp3.online/mp3s/Pedro%20Cap%c3%b3%20-%20Tutu.mp3', '2020-05-24 22:52:23', 0, 'Aura', 'demo'),
(81, '5', '3.jpg', 'http://bsrmp3.online/mp3s/%c3%91ejo%20El%20Broko%20-%20El%20Raton.mp3', '2020-06-07 19:27:39', 0, 'Alocao', 'ella'),
(85, '5', '4.jpg', 'http://bsrmp3.online/mp3s/%c3%91ejo%20El%20Broko%20-%20El%20Raton.mp3', '2020-06-14 18:41:51', 0, 'Esta rico', 'ella');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `seguidores`
--

CREATE TABLE `seguidores` (
  `id` int(11) NOT NULL,
  `seguidor` int(11) NOT NULL,
  `seguido` int(11) NOT NULL,
  `aprobada` int(11) NOT NULL,
  `fecha` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbldetalleventa`
--

CREATE TABLE `tbldetalleventa` (
  `ID` int(11) NOT NULL,
  `IDVENTA` int(11) NOT NULL,
  `IDPRODUCTO` int(11) NOT NULL,
  `PRECIOUNITARIO` decimal(20,2) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `DESCARGADO` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tbldetalleventa`
--

INSERT INTO `tbldetalleventa` (`ID`, `IDVENTA`, `IDPRODUCTO`, `PRECIOUNITARIO`, `CANTIDAD`, `DESCARGADO`) VALUES
(10, 14, 3, '5.00', 1, 0),
(11, 14, 1, '15.00', 1, 0),
(12, 14, 5, '7.00', 1, 0),
(13, 15, 3, '5.00', 1, 0),
(14, 15, 1, '15.00', 1, 0),
(15, 15, 5, '7.00', 1, 0),
(16, 16, 3, '5.00', 1, 0),
(17, 16, 1, '15.00', 1, 0),
(18, 16, 5, '7.00', 1, 0),
(19, 17, 3, '5.00', 1, 0),
(20, 17, 1, '15.00', 1, 0),
(21, 17, 5, '7.00', 1, 0),
(22, 18, 3, '5.00', 1, 0),
(23, 18, 1, '15.00', 1, 0),
(24, 18, 5, '7.00', 1, 0),
(25, 19, 3, '5.00', 1, 0),
(26, 19, 1, '15.00', 1, 0),
(27, 19, 5, '7.00', 1, 0),
(28, 20, 3, '5.00', 1, 0),
(29, 20, 1, '15.00', 1, 0),
(30, 20, 5, '7.00', 1, 0),
(31, 21, 3, '5.00', 1, 0),
(32, 21, 1, '15.00', 1, 0),
(33, 21, 5, '7.00', 1, 0),
(34, 22, 3, '5.00', 1, 0),
(35, 22, 1, '15.00', 1, 0),
(36, 22, 5, '7.00', 1, 0),
(37, 23, 3, '5.00', 1, 0),
(38, 23, 1, '15.00', 1, 0),
(39, 23, 5, '7.00', 1, 0),
(40, 24, 3, '5.00', 1, 0),
(41, 24, 1, '15.00', 1, 0),
(42, 24, 5, '7.00', 1, 0),
(43, 25, 3, '5.00', 1, 0),
(44, 26, 3, '5.00', 1, 0),
(45, 27, 3, '5.00', 1, 0),
(46, 27, 1, '15.00', 1, 0),
(47, 28, 3, '5.00', 1, 0),
(48, 28, 1, '15.00', 1, 0),
(49, 29, 3, '5.00', 1, 0),
(50, 29, 1, '15.00', 1, 0),
(51, 30, 3, '5.00', 1, 0),
(52, 30, 1, '15.00', 1, 0),
(53, 31, 3, '5.00', 1, 0),
(54, 31, 1, '15.00', 1, 0),
(55, 32, 3, '5.00', 1, 0),
(56, 32, 1, '15.00', 1, 0),
(57, 33, 3, '5.00', 1, 0),
(58, 33, 1, '15.00', 1, 0),
(59, 34, 3, '5.00', 1, 0),
(60, 34, 1, '15.00', 1, 0),
(61, 35, 3, '5.00', 1, 0),
(62, 35, 1, '15.00', 1, 0),
(63, 36, 3, '5.00', 1, 0),
(64, 36, 1, '15.00', 1, 0),
(65, 37, 3, '5.00', 1, 0),
(66, 37, 1, '15.00', 1, 0),
(67, 38, 3, '5.00', 1, 0),
(68, 38, 1, '15.00', 1, 0),
(69, 39, 3, '5.00', 1, 0),
(70, 39, 1, '15.00', 1, 0),
(71, 40, 3, '5.00', 1, 0),
(72, 40, 1, '15.00', 1, 0),
(73, 41, 3, '5.00', 1, 0),
(74, 41, 1, '15.00', 1, 0),
(75, 42, 3, '5.00', 1, 0),
(76, 42, 1, '15.00', 1, 0),
(77, 43, 3, '5.00', 1, 0),
(78, 43, 1, '15.00', 1, 0),
(79, 44, 3, '5.00', 1, 0),
(80, 44, 1, '15.00', 1, 0),
(81, 45, 3, '5.00', 1, 0),
(82, 45, 1, '15.00', 1, 0),
(83, 46, 3, '5.00', 1, 0),
(84, 46, 1, '15.00', 1, 0),
(85, 47, 3, '5.00', 1, 0),
(86, 47, 1, '15.00', 1, 0),
(87, 48, 3, '5.00', 1, 0),
(88, 48, 1, '15.00', 1, 0),
(89, 49, 3, '5.00', 1, 0),
(90, 49, 1, '15.00', 1, 0),
(91, 49, 5, '7.00', 1, 0),
(92, 50, 3, '5.00', 1, 0),
(93, 50, 1, '15.00', 1, 0),
(94, 50, 5, '7.00', 1, 0),
(95, 51, 3, '5.00', 1, 0),
(96, 51, 1, '15.00', 1, 0),
(97, 51, 5, '7.00', 1, 0),
(98, 52, 3, '5.00', 1, 0),
(99, 52, 1, '15.00', 1, 0),
(100, 52, 5, '7.00', 1, 0),
(101, 53, 3, '5.00', 1, 0),
(102, 53, 1, '15.00', 1, 0),
(103, 53, 5, '7.00', 1, 0),
(104, 54, 3, '5.00', 1, 0),
(105, 54, 1, '15.00', 1, 0),
(106, 54, 5, '7.00', 1, 0),
(107, 55, 3, '5.00', 1, 0),
(108, 55, 1, '15.00', 1, 0),
(109, 55, 5, '7.00', 1, 0),
(110, 56, 3, '5.00', 1, 0),
(111, 56, 1, '15.00', 1, 0),
(112, 56, 5, '7.00', 1, 0),
(113, 57, 3, '5.00', 1, 0),
(114, 57, 1, '15.00', 1, 0),
(115, 57, 5, '7.00', 1, 0),
(116, 58, 3, '5.00', 1, 0),
(117, 58, 1, '15.00', 1, 0),
(118, 58, 5, '7.00', 1, 0),
(119, 59, 3, '5.00', 1, 0),
(120, 59, 1, '15.00', 1, 0),
(121, 59, 5, '7.00', 1, 0),
(122, 60, 3, '5.00', 1, 0),
(123, 60, 1, '15.00', 1, 0),
(124, 60, 5, '7.00', 1, 0),
(125, 61, 7, '3.00', 1, 0),
(126, 62, 7, '3.00', 1, 0),
(127, 63, 7, '3.00', 1, 0),
(128, 63, 3, '5.00', 1, 0),
(129, 64, 7, '3.00', 1, 0),
(130, 65, 7, '3.00', 1, 0),
(131, 66, 3, '5.00', 1, 0),
(132, 66, 5, '7.00', 1, 0),
(133, 66, 1, '15.00', 1, 0),
(134, 67, 7, '3.00', 1, 0),
(135, 68, 3, '5.00', 1, 0),
(136, 68, 5, '7.00', 1, 0),
(137, 68, 1, '15.00', 1, 0),
(138, 68, 7, '3.00', 1, 0),
(139, 69, 3, '5.00', 1, 0),
(140, 69, 5, '7.00', 1, 0),
(141, 69, 1, '15.00', 1, 0),
(142, 69, 7, '3.00', 1, 0),
(143, 70, 7, '3.00', 1, 0),
(144, 70, 1, '15.00', 1, 0),
(145, 70, 3, '5.00', 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblproductos`
--

CREATE TABLE `tblproductos` (
  `ID` int(11) NOT NULL,
  `Nombre` varchar(255) NOT NULL,
  `Precio` decimal(20,2) NOT NULL,
  `Descripcion` text NOT NULL,
  `Imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblproductos`
--

INSERT INTO `tblproductos` (`ID`, `Nombre`, `Precio`, `Descripcion`, `Imagen`) VALUES
(1, 'Partitura Romeo', '15.00', 'Partitura', 'partitura.png'),
(3, 'Partitura Bendicion', '5.00', 'Partitura ', 'partitura.png'),
(5, 'Partitura A esta es', '7.00', 'Partitura', 'partitura.png'),
(7, 'Partitura Y al tercer Día', '3.00', 'Partitura \"Y al tercer Día\"', 'partitura.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tblventas`
--

CREATE TABLE `tblventas` (
  `ID` int(11) NOT NULL,
  `ClaveTransaccion` varchar(250) NOT NULL,
  `PaypalDatos` text NOT NULL,
  `Fecha` datetime NOT NULL,
  `Correo` varchar(5000) NOT NULL,
  `Total` decimal(60,2) NOT NULL,
  `status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tblventas`
--

INSERT INTO `tblventas` (`ID`, `ClaveTransaccion`, `PaypalDatos`, `Fecha`, `Correo`, `Total`, `status`) VALUES
(1, '12345678910', '', '2020-06-17 16:37:17', 'danielagomezquintero99@gmail.com', '700.00', 'pendiente'),
(2, '23123', '', '2020-06-23 16:38:45', 'xdxd', '23.00', 'pendiente'),
(3, '23123', '', '2020-06-23 16:38:45', 'xdxdxd', '23.00', 'pendiente'),
(4, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 16:47:37', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(5, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 16:50:23', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(6, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:13:27', 'asd@gmail.com', '27.00', 'pendiente'),
(7, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:14:43', 'yolanda@gmail.com', '27.00', 'pendiente'),
(8, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:15:17', 'danielagomezquintero99@gmail.com', '15.00', 'pendiente'),
(9, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:15:40', 'danielagomezquintero99@gmail.com', '15.00', 'pendiente'),
(10, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:16:42', 'asdasdasd@gmail.com', '27.00', 'pendiente'),
(11, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:18:16', 'danielagomezquintero99@gmail.com', '7.00', 'pendiente'),
(12, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:18:30', 'danielagomezquintero99@gmail.com', '5.00', 'pendiente'),
(13, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:20:54', 'danielagomezquintero99@gmail.com', '5.00', 'pendiente'),
(14, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:21:41', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(15, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:33:46', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(16, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:34:42', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(17, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:35:22', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(18, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:57:27', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(19, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 17:59:03', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(20, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 18:00:03', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(21, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 18:00:28', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(22, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 18:00:37', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(23, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 18:00:46', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(24, 'glc00gh1mmailghgsqddfctbe5', '', '2020-06-08 18:00:51', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(25, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:36:06', 'danielagomezquintero99@gmail.com', '5.00', 'pendiente'),
(26, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:47:58', 'danielagomezquintero99@gmail.com', '5.00', 'pendiente'),
(27, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:49:20', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(28, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:51:09', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(29, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:52:34', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(30, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:58:31', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(31, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:58:52', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(32, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:59:26', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(33, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 18:59:33', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(34, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:01:59', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(35, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:09:48', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(36, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:21:28', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(37, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:36:33', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(38, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:38:40', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(39, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:41:13', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(40, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:44:49', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(41, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:50:09', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(42, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:56:34', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(43, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:58:32', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(44, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 19:59:33', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(45, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 20:12:44', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(46, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 20:17:13', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(47, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 20:17:22', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(48, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 20:19:14', 'danielagomezquintero99@gmail.com', '20.00', 'pendiente'),
(49, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:13:56', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(50, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:19:41', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(51, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:20:58', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(52, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:21:58', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(53, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:22:43', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(54, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:23:47', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(55, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:25:32', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(56, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:26:02', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(57, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:30:51', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(58, 'kkurl6m08gbnk9jmjcnpn2puc8', '', '2020-06-08 21:37:15', 'danielagomezquintero99@gmail.com', '27.00', 'pendiente'),
(59, 'kkurl6m08gbnk9jmjcnpn2puc8', '{\"id\":\"PAYID-L3PJI2I3XT01500SR689511C\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"7B765895MP7559101\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"kkurl6m08gbnk9jmjcnpn2puc8#SUDhoz9hx32jC42Rtp8RPQ==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"1KL88664VE132320G\",\"state\":\"completed\",\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"1.27\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PJI2I3XT01500SR689511C\",\"create_time\":\"2020-06-08T19:41:44Z\",\"update_time\":\"2020-06-08T19:41:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1KL88664VE132320G\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/1KL88664VE132320G/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PJI2I3XT01500SR689511C\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T19:41:29Z\",\"update_time\":\"2020-06-08T19:41:44Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PJI2I3XT01500SR689511C\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-08 21:41:24', 'danielagomezquintero99@gmail.com', '27.00', 'completo'),
(60, 'rep4eno3207srcbbabdcegi1n0', '{\"id\":\"PAYID-L3PLSCI0B754482P3908851B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"4XS91039LW0031608\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"rep4eno3207srcbbabdcegi1n0#HOgfyFUpIiACi142Yl8sEw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"93135891736988943\",\"state\":\"completed\",\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"1.27\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PLSCI0B754482P3908851B\",\"create_time\":\"2020-06-08T22:19:38Z\",\"update_time\":\"2020-06-08T22:19:38Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/93135891736988943\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/93135891736988943/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PLSCI0B754482P3908851B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T22:17:45Z\",\"update_time\":\"2020-06-08T22:19:38Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PLSCI0B754482P3908851B\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-09 00:17:40', 'danielagomezquintero99@gmail.com', '27.00', 'completo'),
(61, 'kkurl6m08gbnk9jmjcnpn2puc8', '{\"id\":\"PAYID-L3PMC6I02K20180HL592653B\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"3KG99428FJ2909708\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"kkurl6m08gbnk9jmjcnpn2puc8#JrqN8D29mlcTXvEqxZg29g==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"5S527201PT088404H\",\"state\":\"completed\",\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"0.45\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3PMC6I02K20180HL592653B\",\"create_time\":\"2020-06-08T22:54:05Z\",\"update_time\":\"2020-06-08T22:54:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5S527201PT088404H\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5S527201PT088404H/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PMC6I02K20180HL592653B\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-08T22:53:45Z\",\"update_time\":\"2020-06-08T22:54:05Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3PMC6I02K20180HL592653B\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-09 00:53:40', 'danielagomezquintero99@gmail.com', '3.00', 'completo'),
(62, 'cf057m11g6mo29fas5gaoee08g', '', '2020-06-09 17:47:07', 'danielagomezquintero99@gmail.com', '3.00', 'pendiente'),
(63, 'cf057m11g6mo29fas5gaoee08g', '{\"id\":\"PAYID-L3P6ARI1EV42746S66675329\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"2YM05979SK137901E\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"8.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"8.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"cf057m11g6mo29fas5gaoee08g#MxT8YeJjnqZNH1+ycfztwA==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"2C078499TW005090V\",\"state\":\"completed\",\"amount\":{\"total\":\"8.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"8.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"0.62\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3P6ARI1EV42746S66675329\",\"create_time\":\"2020-06-09T19:18:15Z\",\"update_time\":\"2020-06-09T19:18:15Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2C078499TW005090V\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/2C078499TW005090V/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3P6ARI1EV42746S66675329\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-09T19:17:25Z\",\"update_time\":\"2020-06-09T19:18:15Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3P6ARI1EV42746S66675329\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-09 21:10:01', 'danielagomezquintero99@gmail.com', '8.00', 'completo'),
(64, 'krmi2r6fvasv7c93pmni3nvpet', '{\"id\":\"PAYID-L3TILJI26W86983JR357811P\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"7BD284958E6967259\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"krmi2r6fvasv7c93pmni3nvpet#ggC9C9sAh+7dMdxhsdqPFg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"9BN05742VB3580747\",\"state\":\"completed\",\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"0.45\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TILJI26W86983JR357811P\",\"create_time\":\"2020-06-14T20:16:55Z\",\"update_time\":\"2020-06-14T20:16:55Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9BN05742VB3580747\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/9BN05742VB3580747/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TILJI26W86983JR357811P\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-14T20:16:37Z\",\"update_time\":\"2020-06-14T20:16:55Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TILJI26W86983JR357811P\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-14 22:16:34', 'danielagomezquintero99@gmail.com', '3.00', 'completo'),
(65, '21ksnrndv17pdt369vcntns9e3', '{\"id\":\"PAYID-L3TR6WI8TG86437F64788359\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"13C08584KH642520L\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"21ksnrndv17pdt369vcntns9e3#Z1L50KhclGc0JNWcEpsgbg==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"82644898YC556554F\",\"state\":\"completed\",\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"0.45\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TR6WI8TG86437F64788359\",\"create_time\":\"2020-06-15T07:12:43Z\",\"update_time\":\"2020-06-15T07:12:43Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/82644898YC556554F\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/82644898YC556554F/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TR6WI8TG86437F64788359\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T07:12:25Z\",\"update_time\":\"2020-06-15T07:12:43Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TR6WI8TG86437F64788359\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-15 09:12:20', 'danielagomezquintero99@gmail.com', '3.00', 'completo'),
(66, '21ksnrndv17pdt369vcntns9e3', '{\"id\":\"PAYID-L3TSB5Q3BP84284GM706713G\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"64145369VM2121238\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"21ksnrndv17pdt369vcntns9e3#EWgDISItQk4WU/lWiNWxnw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"5PG77381WH7764048\",\"state\":\"completed\",\"amount\":{\"total\":\"27.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"27.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"1.27\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TSB5Q3BP84284GM706713G\",\"create_time\":\"2020-06-15T07:19:29Z\",\"update_time\":\"2020-06-15T07:19:29Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5PG77381WH7764048\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/5PG77381WH7764048/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TSB5Q3BP84284GM706713G\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T07:19:18Z\",\"update_time\":\"2020-06-15T07:19:29Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TSB5Q3BP84284GM706713G\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-15 09:19:09', 'danielagomezquintero99@gmail.com', '27.00', 'completo'),
(67, '21ksnrndv17pdt369vcntns9e3', '{\"id\":\"PAYID-L3TY5QY7R811142GC4919244\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"41E75388L5981740D\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"21ksnrndv17pdt369vcntns9e3#gAVZBQCfnSYhKQVEW+OPjw==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"3RR01953G78152043\",\"state\":\"completed\",\"amount\":{\"total\":\"3.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"3.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"0.45\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TY5QY7R811142GC4919244\",\"create_time\":\"2020-06-15T15:08:06Z\",\"update_time\":\"2020-06-15T15:08:06Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3RR01953G78152043\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/3RR01953G78152043/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TY5QY7R811142GC4919244\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T15:07:47Z\",\"update_time\":\"2020-06-15T15:08:06Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TY5QY7R811142GC4919244\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-15 17:07:41', 'danielagomezquintero99@gmail.com', '3.00', 'completo'),
(68, '21ksnrndv17pdt369vcntns9e3', '', '2020-06-15 18:05:19', 'danielagomezquintero99@gmail.com', '30.00', 'pendiente'),
(69, '21ksnrndv17pdt369vcntns9e3', '{\"id\":\"PAYID-L3TZYZY0FA35432BG4507809\",\"intent\":\"sale\",\"state\":\"approved\",\"cart\":\"3VA98522RM923401P\",\"payer\":{\"payment_method\":\"paypal\",\"status\":\"VERIFIED\",\"payer_info\":{\"email\":\"sb-ga8gz2219003@personal.example.com\",\"first_name\":\"Daniela\",\"last_name\":\"Gómez\",\"payer_id\":\"ZANPXW57YEQ3J\",\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"},\"phone\":\"9065674006\",\"country_code\":\"ES\"}},\"transactions\":[{\"amount\":{\"total\":\"30.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"30.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payee\":{\"merchant_id\":\"RSGQ3JN6CR6LQ\",\"email\":\"juancarlosjimenez@business.example.com\"},\"description\":\"Compra de productos a ComPC\",\"custom\":\"21ksnrndv17pdt369vcntns9e3#lb2d+T7ZT5E2XPIdSD+u3Q==\",\"item_list\":{\"shipping_address\":{\"recipient_name\":\"Daniela Gómez\",\"line1\":\"calle Vilamar� 76993- 17469\",\"city\":\"Albacete\",\"state\":\"Albacete\",\"postal_code\":\"02001\",\"country_code\":\"ES\"}},\"related_resources\":[{\"sale\":{\"id\":\"55742610PH3199313\",\"state\":\"completed\",\"amount\":{\"total\":\"30.00\",\"currency\":\"EUR\",\"details\":{\"subtotal\":\"30.00\",\"shipping\":\"0.00\",\"insurance\":\"0.00\",\"handling_fee\":\"0.00\",\"shipping_discount\":\"0.00\"}},\"payment_mode\":\"INSTANT_TRANSFER\",\"protection_eligibility\":\"ELIGIBLE\",\"protection_eligibility_type\":\"ITEM_NOT_RECEIVED_ELIGIBLE,UNAUTHORIZED_PAYMENT_ELIGIBLE\",\"transaction_fee\":{\"value\":\"1.37\",\"currency\":\"EUR\"},\"parent_payment\":\"PAYID-L3TZYZY0FA35432BG4507809\",\"create_time\":\"2020-06-15T16:06:10Z\",\"update_time\":\"2020-06-15T16:06:10Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/55742610PH3199313\",\"rel\":\"self\",\"method\":\"GET\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/sale/55742610PH3199313/refund\",\"rel\":\"refund\",\"method\":\"POST\"},{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TZYZY0FA35432BG4507809\",\"rel\":\"parent_payment\",\"method\":\"GET\"}]}}]}],\"create_time\":\"2020-06-15T16:05:59Z\",\"update_time\":\"2020-06-15T16:06:10Z\",\"links\":[{\"href\":\"https://api.sandbox.paypal.com/v1/payments/payment/PAYID-L3TZYZY0FA35432BG4507809\",\"rel\":\"self\",\"method\":\"GET\"}]}', '2020-06-15 18:05:54', 'danielagomezquintero99@gmail.com', '30.00', 'completo'),
(70, '21ksnrndv17pdt369vcntns9e3', '', '2020-06-15 18:54:21', 'danielagomezquintero99@gmail.com', '23.00', 'pendiente');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` text COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `email` text COLLATE utf8_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `sex` enum('male','female') COLLATE utf8_unicode_ci DEFAULT NULL,
  `bio` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `site_language` bigint(20) UNSIGNED DEFAULT 1,
  `avatar` varchar(225) COLLATE utf8_unicode_ci NOT NULL DEFAULT 'default.png',
  `private_profile` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil es privado?',
  `verified` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta verificado?',
  `banned` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Este perfil esta baneado?',
  `code` varchar(40) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` enum('0','1') COLLATE utf8_unicode_ci NOT NULL DEFAULT '0' COMMENT 'Verifico el correo',
  `signup_date` datetime NOT NULL,
  `last_login` datetime DEFAULT NULL,
  `signup_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_ip` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `name`, `phone`, `birthday`, `sex`, `bio`, `site_language`, `avatar`, `private_profile`, `verified`, `banned`, `code`, `token`, `confirmed`, `signup_date`, `last_login`, `signup_ip`, `last_ip`) VALUES
(1, 'demo', '4d186321c1a7f0f354b297e8914ab240', 'demo@demo.com', 'Demo', NULL, '1999-02-24', 'female', 'Esto es una descripcion', 1, 'default.png', '1', '1', '0', '', '', '1', '2020-05-26 22:40:18', '2018-06-02 22:40:18', NULL, NULL),
(5, 'ella', 'ec5e1e94c042dda33822701a45eb5e30', 'ella@gmail.com', 'ella', NULL, NULL, NULL, NULL, 1, 'default.jpg', '0', '0', '0', '5ecccb9874b4a', '', '0', '2020-05-26 09:56:08', NULL, NULL, '::1');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `archivos`
--
ALTER TABLE `archivos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `pagina`
--
ALTER TABLE `pagina`
  ADD PRIMARY KEY (`id_pag`);

--
-- Indices de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `IDVENTA` (`IDVENTA`),
  ADD KEY `IDPRODUCTO` (`IDPRODUCTO`);

--
-- Indices de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  ADD PRIMARY KEY (`ID`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `archivos`
--
ALTER TABLE `archivos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `chat`
--
ALTER TABLE `chat`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=304;

--
-- AUTO_INCREMENT de la tabla `favoritos`
--
ALTER TABLE `favoritos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT de la tabla `pagina`
--
ALTER TABLE `pagina`
  MODIFY `id_pag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `publicaciones`
--
ALTER TABLE `publicaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT de la tabla `seguidores`
--
ALTER TABLE `seguidores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT de la tabla `tblproductos`
--
ALTER TABLE `tblproductos`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `tblventas`
--
ALTER TABLE `tblventas`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbldetalleventa`
--
ALTER TABLE `tbldetalleventa`
  ADD CONSTRAINT `tbldetalleventa_ibfk_1` FOREIGN KEY (`IDVENTA`) REFERENCES `tblventas` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbldetalleventa_ibfk_2` FOREIGN KEY (`IDPRODUCTO`) REFERENCES `tblproductos` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
