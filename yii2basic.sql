-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2020 a las 22:28:30
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `yii2basic`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `producto`
--

CREATE TABLE `producto` (
  `id` int(11) NOT NULL,
  `productos` varchar(50) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `id_proveedor` int(30) NOT NULL,
  `precio` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `producto`
--

INSERT INTO `producto` (`id`, `productos`, `descripcion`, `id_proveedor`, `precio`) VALUES
(1, 'llanta michellin', 'para una moto con rin 17', 2, '98000'),
(3, 'Mango bille', 'Comer con sal ', 4, '15000'),
(4, 'chancletas', 'chancletas tallas 37', 4, '120000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(250) NOT NULL,
  `authKey` varchar(250) NOT NULL,
  `accessToken` varchar(250) NOT NULL,
  `activate` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `authKey`, `accessToken`, `activate`) VALUES
(1, 'angedt', 'ange.dt175@hotmail.com', 'fsbqobwqC.aMo', '80bcb00b1690c5cf88b4af7c81c81da0f9185288cb17a6d1aa608d50cf874cb16c44d3d856c050587dc0dad5273016745b8bc5fd24f8e98d3e67176ba46826214ff27d12e1c9b4912d2dde2f74fcdc2d16bfe26e12a87815a9de53301ee4127263c14ff3', 'fb41b9ea22904c5b1676cae464596b70ffc678a4a9a77303424866adf66b5b3b40ae658577365fa77537f83bc26a1d84c4eb0860f50e5aadd14d962f6152043afce6c74973e73405f3293a86efadf3100fbc313398ddf0dd4c2500b60bff9362f1084f4f', 0),
(2, 'milape', 'ajperez16@misena.edu.co', 'fsbqobwqC.aMo', 'b07853db1d0fbfac9e294981d409db8570208cea732bd799eab3ef9175c746241e959ddbc411dcfd6dae12874e468891fff9744969b5a618382b8746b292537b77e2b1f0b54584fc740221f36ba02915f83fdecbc7ecf160c1a273f581c53a5e4214ef4f', '8cbd09782f54633a635e7321b7a0046aaa3590c3b9ce7c90b21bfa10e28f6274ee69756cb8e7a029455e57a4097c2506f9424a2ce9814a7d02ce1b0df1083f349a94edb69e73d299a128c0b09a4839d29e81d2ee1e76ec93f304f3ad1f6ad9a1728ecab8', 0),
(3, 'Miguelromerop', 'mromerop@gmail.com', 'fsbqobwqC.aMo', '8a5ee62ab117a119d022405cca67173ab73e41387b7e8bfe9147881d159cba3a6e9c303c8fd42894614694857a1c0e5e8f7caa3cde6ece0ecf81c9c56fa864f04793b0d80579f1673db1e9c1f39382bcecdfc7ed6007ee42f13908a752c0082e6752ac95', 'f0e318951dac98622dc1a9786733432c0bbb0e9c019de180f464de55111318079eb9ffbf8fce592f10004189034039c8e138e43cfa046fe68e66a6ebc20123b56c826fbe0d4fd2135a11bf52b8060bef8a1ecde51bda191002b3d38e20765c75f96ffbec', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `producto`
--
ALTER TABLE `producto`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `producto`
--
ALTER TABLE `producto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
