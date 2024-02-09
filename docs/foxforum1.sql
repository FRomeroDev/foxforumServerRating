-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: db
-- Tiempo de generación: 09-02-2024 a las 15:57:44
-- Versión del servidor: 5.7.43
-- Versión de PHP: 8.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `foxforum1`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rating`
--

CREATE TABLE `rating` (
  `id` bigint(20) NOT NULL,
  `id_user` bigint(20) NOT NULL DEFAULT '1',
  `id_reply` bigint(20) NOT NULL DEFAULT '1',
  `stars` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reply`
--

CREATE TABLE `reply` (
  `id` bigint(20) NOT NULL,
  `title` varchar(2048) COLLATE utf16_unicode_ci NOT NULL,
  `body` text COLLATE utf16_unicode_ci NOT NULL,
  `creation` datetime DEFAULT NULL,
  `id_user` bigint(20) NOT NULL DEFAULT '1',
  `id_thread` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `reply`
--

INSERT INTO `reply` (`id`, `title`, `body`, `creation`, `id_user`, `id_thread`) VALUES
(31, 'The cat shines softly or a sun sleeps. ', 'One cat shines and the sun run. Once one friend is loudly the car sleeps softly and the book shines loudly. One house fly. The friend ate. Wherever a book reads one cat sleeps brightly. The car shines and the cat reads quickly. ', '2023-03-18 06:54:55', 2, 19),
(32, 'The cat shines. ', 'The cat fly. When the cat shines quickly a house sleeps and a car barks. A cat run. While a dog reads quickly one dog is slowly. A friend fly and a sun barks softly. A dog barks or the house shines. If a friend ate the sun run quickly or one sandwich reads loudly. The friend is. The cat sleeps or one friend barks. When a birds reads one birds is slowly. As one friend barks quickly the car reads slowly. Even if a dog run quickly the sun shines loudly but the book is. One book fly but one cat ate loudly. The sandwich ate brightly but the friend reads softly. ', '2020-10-06 00:46:13', 1, 20),
(34, 'One dog barks and one car is. ', 'The friend barks but the car sleeps softly. The sandwich ate softly. A birds is or one house run loudly. While a dog barks quickly one dog reads brightly. Once one sandwich is brightly a house sleeps quickly. One sandwich fly slowly or a house ate. A book reads. One sun ate loudly. The friend reads quickly. The birds sleeps. A friend reads brightly or one sun reads. One cat sleeps brightly. ', '2022-10-02 19:33:10', 2, 18),
(35, 'Although the book reads slowly a sun ate. ', 'The cat run brightly. The birds shines softly. The car fly but a car ate slowly. The book reads and one cat fly loudly. A dog reads softly. Because a house reads slowly one cat run but one friend fly. While the birds sleeps softly the friend reads but one friend shines brightly. One car ate but a car run loudly. Whether one house run a cat is quickly and one car fly. Unless the dog shines loudly the sun is but a sun sleeps. Wherever a friend sleeps softly the sandwich run and the cat is quickly. So that a sandwich barks slowly the car reads softly but a car ate loudly. A house shines quickly. ', '2020-10-25 08:13:23', 2, 11),
(36, 'A house barks or one dog reads. ', 'So that the birds is one sun fly quickly and the sun barks brightly. The sun sleeps. The house barks softly. If one friend ate brightly the sun fly brightly or a sun is. The sandwich is or the friend shines. A car sleeps quickly and one car ate. The dog run or the dog run softly. The sun is. One dog fly but a sandwich fly. Even if a sun ate the sun ate and the sun ate brightly. A book ate quickly. Although the birds reads brightly the sandwich run quickly and the cat shines. One cat shines but one cat sleeps quickly. As the car sleeps loudly the house barks softly or one book sleeps. The sandwich barks. Where a car sleeps the friend barks quickly and one house barks softly. The sun barks loudly or the cat barks slowly. One cat shines and the cat run. ', '2021-03-17 01:50:33', 1, 12),
(37, 'Where the dog barks softly one friend shines. ', 'Until a sandwich ate the car sleeps but a dog reads brightly. Until a cat shines the cat is. Before the car ate brightly the house is softly. In order to the friend fly one birds run. One sandwich is. After a sandwich reads a car ate or one car ate loudly. The birds barks loudly and a birds is softly. A cat shines slowly. The car is but a friend barks. The cat sleeps. The birds ate but a dog ate brightly. A friend fly loudly and the birds fly. ', '2020-01-23 02:54:41', 2, 13),
(38, 'One house barks and one dog sleeps slowly. ', 'A car run softly or a cat sleeps loudly. One cat is loudly. A birds is. Whenever a sun reads loudly one sun run brightly and one book run. A sun run but one friend ate brightly. Unless one house ate one dog barks brightly and one sandwich is. The sun barks or a birds is brightly. The birds run. The friend run. Where a sandwich ate a car is. That the book sleeps loudly the car barks loudly or a friend barks brightly. Whenever a cat sleeps loudly one birds is quickly. A sun shines and the sun sleeps quickly. Even if one house run loudly a sun run and one car sleeps. One dog sleeps. Wherever one book sleeps the car barks but one car reads. One car shines brightly. A friend is but one book reads slowly. ', '2023-07-06 20:51:09', 1, 11),
(39, 'Whether one friend fly softly the dog ate loudly or a cat ate. ', 'Than a birds shines one house ate but one sun run brightly. A dog is but the house sleeps. The sandwich ate and the dog barks. Unless a birds ate brightly the cat reads. The sun run loudly. So that the birds shines a sun barks. One birds is. The birds shines slowly. So that one sandwich run a house reads brightly and a sandwich fly softly. ', '2021-04-08 00:07:36', 2, 15),
(40, 'A car sleeps and the sandwich run. ', 'The sun is brightly and a cat barks slowly. While one friend ate a sun reads and the car barks loudly. One house fly slowly. Where the dog shines one book barks and one friend fly. Until one house reads a house reads softly. ', '2021-08-06 07:04:44', 1, 17);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `thread`
--

CREATE TABLE `thread` (
  `id` bigint(20) NOT NULL,
  `title` varchar(2048) COLLATE utf16_unicode_ci NOT NULL,
  `id_user` bigint(20) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `thread`
--

INSERT INTO `thread` (`id`, `title`, `id_user`) VALUES
(11, 'While the sandwich run quickly one dog fly softly or one sandwich barks loudly. ', 1),
(12, 'A cat fly softly or the sun shines. ', 2),
(13, 'A dog sleeps softly but one car barks quickly. ', 1),
(14, 'A friend shines or one house shines brightly. ', 1),
(15, 'A sun fly. ', 2),
(16, 'The dog run or one car sleeps. ', 2),
(17, 'The sun ate loudly. ', 1),
(18, 'A sandwich shines and one friend shines softly. ', 1),
(19, 'The car is slowly but a sandwich shines slowly. ', 1),
(20, 'That a house barks quickly one house sleeps. ', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `user`
--

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `surname` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf16_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf16_unicode_ci NOT NULL,
  `password` varchar(512) COLLATE utf16_unicode_ci NOT NULL,
  `role` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_unicode_ci;

--
-- Volcado de datos para la tabla `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `lastname`, `email`, `username`, `password`, `role`) VALUES
(1, 'Pedro', 'Picapiedra', 'Roca', 'pedropicapiedra@ausiasmarch.net', 'pedropicapiedra', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 0),
(2, 'Pablo', 'Mármol', 'Granito', 'pablomarmol@ausiasmarch.net', 'pablomarmol', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(3, 'Alan', 'Briones', 'Ortega', 'alabrior0@ausiasmarch.net', 'alarir0', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(4, 'Eva', 'Aznar', 'Díaz', 'evaazndí1@ausiasmarch.net', 'evazni1', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(5, 'Alan', 'Serrano', 'Aznar', 'alaseraz2@ausiasmarch.net', 'alaerz2', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(6, 'Lucas', 'Marín', 'Ayala', 'lucmaray3@ausiasmarch.net', 'lucary3', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(7, 'Fernando', 'Ortega', 'Suárez', 'ferortsu4@ausiasmarch.net', 'ferrtu4', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(8, 'Lucas', 'Alcañiz', 'Fabra', 'lucalcfa5@ausiasmarch.net', 'luclca5', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(9, 'Raquel', 'Velarte', 'Navarro', 'raqvelna6@ausiasmarch.net', 'raqela6', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(10, 'Nieves', 'Aguilar', 'García', 'nieaguga7@ausiasmarch.net', 'niegua7', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(11, 'Lucas', 'Aznar', 'Briones', 'lucaznbr8@ausiasmarch.net', 'lucznr8', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1),
(12, 'Laura', 'Rozalén', 'Suárez', 'laurozsu9@ausiasmarch.net', 'lauozu9', 'e2cac5c5f7e52ab03441bb70e89726ddbd1f6e5b683dde05fb65e0720290179e', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rating_ibfk_1` (`id_user`),
  ADD KEY `rating_ibfk_3` (`id_reply`);

--
-- Indices de la tabla `reply`
--
ALTER TABLE `reply`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKoab9h52gp6y88xb3wtq2lj2va` (`id_user`),
  ADD KEY `FK7o7kiobsjg9bpfvmhd96sync1` (`id_thread`);

--
-- Indices de la tabla `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_user_thread` (`id_user`);

--
-- Indices de la tabla `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reply`
--
ALTER TABLE `reply`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de la tabla `thread`
--
ALTER TABLE `thread`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `rating`
--
ALTER TABLE `rating`
  ADD CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rating_ibfk_3` FOREIGN KEY (`id_reply`) REFERENCES `reply` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `reply`
--
ALTER TABLE `reply`
  ADD CONSTRAINT `FK7o7kiobsjg9bpfvmhd96sync1` FOREIGN KEY (`id_thread`) REFERENCES `thread` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FKoab9h52gp6y88xb3wtq2lj2va` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `thread`
--
ALTER TABLE `thread`
  ADD CONSTRAINT `FK_user_thread` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
