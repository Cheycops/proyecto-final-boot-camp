-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-06-2024 a las 23:12:34
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
-- Base de datos: `ganadores`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ganadoresgoty`
--

CREATE TABLE `ganadoresgoty` (
  `id` int(11) NOT NULL,
  `img` varchar(10) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `genero` varchar(100) NOT NULL,
  `desarrollador` varchar(100) NOT NULL,
  `distribuidor` varchar(150) NOT NULL,
  `plataformas` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ganadoresgoty`
--

INSERT INTO `ganadoresgoty` (`id`, `img`, `titulo`, `genero`, `desarrollador`, `distribuidor`, `plataformas`) VALUES
(1, '2014', '2014: Dragon Age Inquisition', 'Videojuego de aventura, Videojuego de rol de acción', 'BioWare', 'Electronic Arts', 'PlayStation 4, PlayStation 3, Xbox 360, Xbox One, Project xCloud, GeForce Now, Microsoft Windows'),
(2, '2015', '2015: The Witcher 3 Wild Hunt', 'ARPG (Acción-Aventura)', 'CD Projekt RED', 'Warner Bros. Interactive Entertainment, Namco Bandai Games', 'Microsoft Windows, Xbox One, Xbox Series X y Series S, PlayStation 4, PlayStation 5, Nintendo Switch\r\n\r\n'),
(3, '2016', '2016: Overwatch', 'Disparos en primera persona', 'Blizzard Entertainment', 'Blizzard Entertainment', 'Microsoft Windows, PlayStation 4, Nintendo Switch, Xbox One\r\n\r\n'),
(4, '2017', '2017: The Legend of Zelda: Breath of the Wild', 'Acción-aventura, videojuego de rol', 'Nintendo EPD, Monolith Soft', 'Nintendo', 'Wii U, Nintendo Switch'),
(5, '2018', '2018: God of War', 'Acción-Aventura, Hack and slash', 'Santa Monica Studio', 'Sony Interactive Entertainment', 'Microsoft Windows, PlayStation 4, PlayStation 5'),
(6, '2019', '2019: Sekiro: Shadows Die Twice', 'Acción-aventura', 'From Software y Yoshitaka Suzuki', 'Activision, From Software y Cubejo', 'PlayStation 4, Xbox One, Microsoft Windows, Google Stadia\r\n\r\n'),
(7, '2020', '2020: The Last of Us Parte II', 'Terror. Acción-aventura, Disparos en tercera persona', 'Naughty Dog', 'Sony Interactive Entertainment', 'PlayStation 5, PlayStation 4'),
(8, '2021', '2021: It Takes Two', 'Acción-aventura y videojuego de plataformas', 'Hazelight Studios', 'Electronic Arts', 'Microsoft Windows, PlayStation 4, PlayStation 5, Xbox One, Xbox Series X/S, Nintendo Switch'),
(9, '2022', '2022: Elden Ring', 'Rol de acción', 'FromSoftware', 'Bandai Namco Entertainment', 'PlayStation 5, PlayStation 4, Xbox Series X|S, Xbox One, Microsoft Windows'),
(10, '2023', '2023: Baldur\'s gate 3', 'Videojuego de rol', 'Larian Studios', 'Larian Studios', 'PlayStation 5, Xbox Series X|S, GeForce Now, Microsoft Windows, Mac OS');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ganadoresgoty`
--
ALTER TABLE `ganadoresgoty`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ganadoresgoty`
--
ALTER TABLE `ganadoresgoty`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
