-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2021 a las 02:02:06
-- Versión del servidor: 10.4.13-MariaDB
-- Versión de PHP: 7.3.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fdigisign`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimedia`
--

CREATE TABLE `multimedia` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `src` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimedia`
--

INSERT INTO `multimedia` (`id`, `name`, `src`, `type`, `createdAt`, `updatedAt`) VALUES
(1, 'Video de Navidad', 'http://localhost:3001/player/VIDEO-1617025709618.mp4', 'video/mp4', '2021-03-19 13:56:32', '2021-03-29 13:58:04'),
(2, 'Video Paisaje', 'http://localhost:3001/player/VIDEO-1617026969156.mp4', 'video/mp4', '2021-03-19 13:57:04', '2021-04-08 12:23:21'),
(4, 'Cancion de Prueba', 'http://localhost:3001/player/camilo-kesi.mp3', 'audio/mp3', '2021-03-29 16:13:47', '2021-03-29 16:13:47'),
(5, 'Video Test', 'http://localhost:3001/player/VIDEO-1617805014930.mp4', 'video/mp4', '2021-04-07 14:16:55', '2021-04-07 14:16:55'),
(6, 'Video Test 2', 'http://localhost:3001/player/VIDEO-1617807071800.mp4', 'video/mp4', '2021-04-07 14:51:11', '2021-04-07 14:51:11'),
(7, 'Video Test 3', 'http://localhost:3001/player/VIDEO-1617807143103.mp4', 'video/mp4', '2021-04-07 14:52:23', '2021-04-07 14:52:23'),
(8, 'Video Test 3', 'http://localhost:3001/player/VIDEO-1617809118126.mp4', 'video/mp4', '2021-04-07 15:25:18', '2021-04-07 15:25:18'),
(9, 'Prueba int', 'http://localhost:3001/player/VIDEO-1617813954160.mp4', 'video/mp4', '2021-04-07 16:45:54', '2021-04-07 16:45:54'),
(12, 'Full Test', 'http://localhost:3001/player/VIDEO-1617815111848.mp4', 'video/mp4', '2021-04-07 17:05:11', '2021-04-07 17:05:11'),
(13, 'Full Full', 'http://localhost:3001/player/VIDEO-1617815398198.mp4', 'video/mp4', '2021-04-07 17:09:58', '2021-04-07 17:09:58'),
(14, 'archivo', 'http://localhost:3001/player/MULTIMEDIA-1617819747339.mp3', 'audio/mpeg', '2021-04-07 18:22:27', '2021-04-07 18:22:27'),
(15, 'Video 10', 'http://localhost:3001/player/MULTIMEDIA-1617826742984.mp4', 'video/mp4', '2021-04-07 20:19:03', '2021-04-07 20:19:03'),
(16, 'Cancion Camilo', 'http://localhost:3001/player/MULTIMEDIA-1617884857481.mp3', 'audio/mpeg', '2021-04-08 12:27:37', '2021-04-08 12:27:37'),
(17, 'Grabacion 5', 'http://localhost:3001/player/multimedia-1624302211658.mp4', 'video/mp4', '2021-06-21 19:03:31', '2021-06-21 19:03:31'),
(18, 'Grab 4', 'http://localhost:3001/player/multimedia-1624302277774.mp4', 'video/mp4', '2021-06-21 19:04:38', '2021-06-21 19:04:38'),
(19, 'iceland', 'http://localhost:3001/player/multimedia-1624302784714.mp4', 'video/mp4', '2021-06-21 19:13:05', '2021-06-21 19:13:05'),
(20, 'cov01', 'http://localhost:3001/player/multimedia-1630676713082.mp4', 'video/mp4', '2021-09-03 13:45:13', '2021-09-03 13:45:13');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `multimediaplaylist`
--

CREATE TABLE `multimediaplaylist` (
  `multimediaId` int(11) NOT NULL,
  `playlistId` int(11) NOT NULL,
  `position` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `multimediaplaylist`
--

INSERT INTO `multimediaplaylist` (`multimediaId`, `playlistId`, `position`, `createdAt`, `updatedAt`) VALUES
(2, 1, 1, '2021-04-21 20:35:25', '2021-09-03 13:48:46'),
(2, 3, 2, '2021-04-21 20:23:01', '2021-04-21 20:23:01'),
(4, 1, 3, '2021-04-21 12:22:23', '2021-09-03 13:48:46'),
(15, 1, 4, '2021-04-21 13:04:25', '2021-09-03 13:48:46'),
(16, 2, 1, '2021-04-20 12:16:40', '2021-04-20 12:16:40'),
(16, 3, 1, '2021-04-21 20:22:54', '2021-04-21 20:22:54'),
(20, 1, 2, '2021-09-03 13:45:39', '2021-09-03 13:48:46');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `playlist`
--

CREATE TABLE `playlist` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `createdAt`, `updatedAt`) VALUES
(1, 'Playlist Institucional', '2021-03-19 13:58:39', '2021-04-10 12:34:51'),
(2, 'Playlist Divertido', '2021-03-19 13:58:58', '2021-03-19 13:58:58'),
(3, 'test35', '2021-04-10 02:48:53', '2021-04-10 02:48:53');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstName` varchar(255) DEFAULT NULL,
  `lastName` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(150) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `username`, `firstName`, `lastName`, `email`, `password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', 'Francisco', 'Tejada', 'f.tejada@lafabril.com.do', '$2a$10$2OB3LM8uOcAEhvylQjy7xuJiNmImCM/C3/3ZbmD1Wu75bgKd/QRuy', '2021-03-30 18:51:11', '2021-03-30 18:51:11');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `viewer`
--

CREATE TABLE `viewer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `pin` varchar(255) NOT NULL,
  `playlistId` int(11) DEFAULT NULL,
  `nowplaying` int(11) DEFAULT 1,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `viewer`
--

INSERT INTO `viewer` (`id`, `name`, `pin`, `playlistId`, `nowplaying`, `createdAt`, `updatedAt`) VALUES
(1, 'TV Room', '202101', 1, 1, '2021-03-23 13:40:37', '2021-03-25 16:45:35'),
(2, 'Recepcion', '202102', 2, 1, '2021-03-24 19:29:58', '2021-03-25 16:45:42'),
(3, 'Recepcion 2', '202103', 1, 1, '2021-03-24 19:36:17', '2021-03-24 19:36:17');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `multimediaplaylist`
--
ALTER TABLE `multimediaplaylist`
  ADD PRIMARY KEY (`multimediaId`,`playlistId`),
  ADD UNIQUE KEY `multimediaplaylist_playlistId_multimediaId_unique` (`multimediaId`,`playlistId`),
  ADD KEY `playlistId` (`playlistId`);

--
-- Indices de la tabla `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `viewer`
--
ALTER TABLE `viewer`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pin` (`pin`),
  ADD KEY `playlistId` (`playlistId`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `viewer`
--
ALTER TABLE `viewer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `multimediaplaylist`
--
ALTER TABLE `multimediaplaylist`
  ADD CONSTRAINT `multimediaplaylist_ibfk_1` FOREIGN KEY (`multimediaId`) REFERENCES `multimedia` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `multimediaplaylist_ibfk_2` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `viewer`
--
ALTER TABLE `viewer`
  ADD CONSTRAINT `viewer_ibfk_1` FOREIGN KEY (`playlistId`) REFERENCES `playlist` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
