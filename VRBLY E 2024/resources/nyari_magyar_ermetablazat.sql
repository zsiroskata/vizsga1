-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Ápr 12. 09:14
-- Kiszolgáló verziója: 10.4.27-MariaDB
-- PHP verzió: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `paralimpia`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `nyari_magyar_ermetablazat`
--

CREATE TABLE `nyari_magyar_ermetablazat` (
  `id` int(11) NOT NULL,
  `orszag` varchar(20) NOT NULL,
  `varos` varchar(20) NOT NULL,
  `ev` int(11) NOT NULL,
  `arany` int(11) DEFAULT NULL,
  `ezust` int(11) DEFAULT NULL,
  `bronz` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `nyari_magyar_ermetablazat`
--

INSERT INTO `nyari_magyar_ermetablazat` (`id`, `orszag`, `varos`, `ev`, `arany`, `ezust`, `bronz`) VALUES
(1, 'Olaszország', 'Róma', 1960, 0, 0, 0),
(2, 'Japán', 'Tokió', 1964, 0, 0, 0),
(3, 'Izrael', 'Tel Aviv', 1968, 0, 0, 0),
(4, 'Németország', 'Heidelberg', 1972, 0, 0, 1),
(5, 'Kanada', 'Torontó', 1976, 1, 0, 1),
(6, 'Hollandia', 'Arnheim', 1980, 0, 0, 0),
(7, 'Egyesült Államok', 'New York', 1984, 13, 11, 5),
(8, 'Dél-Korea', 'Szöul', 1988, 0, 5, 7),
(9, 'Spanyolország', 'Barcelona', 1992, 4, 3, 4),
(10, 'Egyesült Államok', 'Atlanta', 1996, 5, 2, 3),
(11, 'Ausztrália', 'Sydney', 2000, 4, 5, 14),
(12, 'Görögország', 'Athén', 2004, 1, 8, 10),
(13, 'Kína', 'Peking', 2008, 1, 0, 5),
(14, 'Egyesült Királyság', 'London', 2012, 2, 6, 6),
(15, 'Brazília', 'Rio de Janeiro', 2016, 1, 8, 9),
(16, 'Japán', 'Tokió', 2020, 7, 5, 4);

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `nyari_magyar_ermetablazat`
--
ALTER TABLE `nyari_magyar_ermetablazat`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `nyari_magyar_ermetablazat`
--
ALTER TABLE `nyari_magyar_ermetablazat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
