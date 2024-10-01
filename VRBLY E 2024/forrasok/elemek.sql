-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Már 22. 11:00
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
-- Adatbázis: `backend`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `elemek`
--

CREATE TABLE `elemek` (
  `rendszam` int(3) NOT NULL,
  `fem` tinyint(1) DEFAULT NULL,
  `halmaz` char(1) NOT NULL,
  `csoport` varchar(20) NOT NULL,
  `ev` int(4) NOT NULL,
  `nev` varchar(20) NOT NULL,
  `vegyjel` varchar(2) NOT NULL,
  `felfedezo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `elemek`
--

INSERT INTO `elemek` (`rendszam`, `fem`, `halmaz`, `csoport`, `ev`, `nev`, `vegyjel`, `felfedezo`) VALUES
(1, 0, 'G', 'egyéb nemfém', 1766, 'Hidrogén', 'H', 'Henry Cavendish'),
(2, 0, 'G', 'nemesgáz', 1868, 'Hélium', 'He', 'P.J.C.Jansen 1869 J.N.Locker'),
(3, 1, 'S', 'alkálifém', 1817, 'Lítium', 'Li', 'J. A. Arvedson'),
(4, 1, 'S', 'alkáliföldfém', 1797, 'Berillium', 'Be', 'L. N. Vaquelin'),
(5, NULL, 'S', 'félfém', 1808, 'Bór', 'B', 'J. L. Gay-Lusac és Thénard'),
(6, 0, 'S', 'egyéb nemfém', 0, 'Szén', 'C', 'Ismeretlen'),
(7, 0, 'G', 'egyéb nemfém', 1772, 'Nitrogén', 'N', 'D. Rutherford'),
(8, 0, 'G', 'egyéb nemfém', 1774, 'Oxigén', 'O', 'J. Priestley'),
(9, 0, 'G', 'halogén', 1886, 'Fluor', 'F', 'H. Moissan'),
(10, 0, 'G', 'nemesgáz', 1898, 'Neon', 'Ne', 'W.Ramsay és M.W.Travers'),
(11, 1, 'S', 'alkálifém', 1807, 'Nátrium', 'Na', 'H. Davy'),
(12, 1, 'S', 'alkáliföldfém', 1808, 'Magnézium', 'Mg', 'H. Davy'),
(13, 1, 'S', 'másodfajú fém', 1825, 'Alumínium', 'Al', 'H. C. Oersted'),
(14, NULL, 'S', 'félfém', 1823, 'Szilícium', 'Si', 'J. J. Berzelius 1811 Gay-Lusac'),
(15, 0, 'S', 'egyéb nemfém', 1669, 'Foszfor', 'P', 'H. Brand'),
(16, 0, 'S', 'egyéb nemfém', 0, 'Kén', 'S', 'Ismeretlen'),
(17, 0, 'G', 'halogén', 1774, 'Klór', 'Cl', 'C. W. Scheele'),
(18, 0, 'G', 'nemesgáz', 1894, 'Argon', 'Ar', 'W.Ramsay és J.W.S.Rayleigh'),
(19, 1, 'S', 'alkálifém', 1807, 'Kálium', 'K', 'H. Davy'),
(20, 1, 'S', 'alkáliföldfém', 1808, 'Kalcium', 'Ca', 'H. Davy'),
(21, 1, 'S', 'átmenetifém', 1879, 'Szkandium', 'Sc', 'L. F. Nilson'),
(22, 1, 'S', 'átmenetifém', 1791, 'Titán', 'Ti', 'W. Gregor (oxid)'),
(23, 1, 'S', 'átmenetifém', 1831, 'Vanádium', 'V', 'N. G. Sefstr0m'),
(24, 1, 'S', 'átmenetifém', 1797, 'Króm', 'Cr', 'L. N. Vaquelin'),
(25, 1, 'S', 'átmenetifém', 1774, 'Mangán', 'Mn', 'J. G. Gahn'),
(26, 1, 'S', 'átmenetifém', 0, 'Vas', 'Fe', 'Ismeretlen'),
(27, 1, 'S', 'átmenetifém', 1735, 'Kobalt', 'Co', 'G. Brandt'),
(28, 1, 'S', 'átmenetifém', 1751, 'Nikkel', 'Ni', 'A. F. Cronstedt'),
(29, 1, 'S', 'átmenetifém', 0, 'Réz', 'Cu', 'Ismeretlen'),
(30, 1, 'S', 'átmenetifém', 1520, 'Cink', 'Zn', 'Paracelsus'),
(31, 1, 'S', 'másodfajú fém', 1875, 'Gallium', 'Ga', 'L. de Boisbaudran'),
(32, NULL, 'S', 'félfém', 1886, 'Germánium', 'Ge', 'C. Winkler'),
(33, NULL, 'S', 'félfém', 1250, 'Arzén', 'As', 'Albertus Magnus'),
(34, 0, 'S', 'egyéb nemfém', 1817, 'Szelén', 'Se', 'J. J. Berzelius'),
(35, 0, 'F', 'halogén', 1826, 'Bróm', 'Br', 'A. J. Balard'),
(36, 0, 'G', 'nemesgáz', 1898, 'Kripton', 'Kr', 'W.Ramsay és M.W.Travers'),
(37, 1, 'S', 'alkálifém', 1861, 'Rubídium', 'Rb', 'R. W. Bunsen és G. R. Kirchoff'),
(38, 1, 'S', 'alkáliföldfém', 1790, 'Stroncium', 'Sr', 'A. Crawford'),
(39, 1, 'S', 'átmenetifém', 1794, 'Ittrium', 'Y', 'J. Gadolin (oxid)'),
(40, 1, 'S', 'átmenetifém', 1791, 'Cirkónium', 'Zr', 'M. H. Klaproth (oxid)'),
(41, 1, 'S', 'átmenetifém', 1801, 'Nióbium', 'Nb', 'C. Hatchett'),
(42, 1, 'S', 'átmenetifém', 1782, 'Molibdén', 'Mo', 'P. J. Hjelm'),
(43, 1, 'S', 'átmenetifém', 1937, 'Technécium', 'Tc', 'E. Segre és G. Perrier'),
(44, 1, 'S', 'átmenetifém', 1844, 'Ruténium', 'Ru', 'C. Claus'),
(45, 1, 'S', 'átmenetifém', 1803, 'Ródium', 'Rh', 'W. H. Wollaston'),
(46, 1, 'S', 'átmenetifém', 1803, 'Palládium', 'Pd', 'W. H. Wollaston'),
(47, 1, 'S', 'átmenetifém', 0, 'Ezüst', 'Ag', 'Ismeretlen'),
(48, 1, 'S', 'átmenetifém', 1817, 'Kadmium', 'Cd', 'F.Stromeyer'),
(49, 1, 'S', 'másodfajú fém', 1863, 'Indium', 'In', 'F. Reich és T. Richter'),
(50, 1, 'S', 'másodfajú fém', 0, 'Ón', 'Sn', 'Ismeretlen'),
(51, NULL, 'S', 'félfém', 1450, 'Antimon', 'Sb', 'B. Valentinius (W. Tölde)'),
(52, NULL, 'S', 'félfém', 1782, 'Tellúr', 'Te', 'F.J. Müller'),
(53, 0, 'S', 'halogén', 1811, 'Jód', 'I', 'B. Curtois'),
(54, 0, 'G', 'nemesgáz', 1898, 'Xenon', 'Xe', 'W.Ramsay és M.W.Travers'),
(55, 1, 'S', 'alkálifém', 1860, 'Cézium', 'Cs', 'R. W. Bunsen és G. R. Kirchoff'),
(56, 1, 'S', 'alkáliföldfém', 1808, 'Bárium', 'Ba', 'H. Davy'),
(57, 1, 'S', 'lantanoida', 1839, 'Lantán', 'La', 'C. G. Mosander'),
(58, 1, 'S', 'lantanoida', 1803, 'Cérium', 'Ce', 'M. H. Klaproth (oxid)'),
(59, 1, 'S', 'lantanoida', 1885, 'Prazeodímium', 'Pr', 'G. Auer von Welsbach'),
(60, 1, 'S', 'lantanoida', 1885, 'Neodímium', 'Nd', 'G. Auer von Welsbach'),
(61, 1, 'S', 'lantanoida', 1945, 'Prométium', 'Pm', 'I.A.Marinski és L.E.Glendenin'),
(62, 1, 'S', 'lantanoida', 1879, 'Szamárium', 'Sm', 'L. de Boisbaudran'),
(63, 1, 'S', 'lantanoida', 1889, 'Európium', 'Eu', 'W. Crookes'),
(64, 1, 'S', 'lantanoida', 1880, 'Gadolínium', 'Gd', 'J. Ch. G. de Marignac'),
(65, 1, 'S', 'lantanoida', 1843, 'Terbium', 'Tb', 'C. G. Mosander'),
(66, 1, 'S', 'lantanoida', 1886, 'Diszprózium', 'Dy', 'L. de Boisbaudran'),
(67, 1, 'S', 'lantanoida', 1879, 'Holmium', 'Ho', 'P. T. Cleve'),
(68, 1, 'S', 'lantanoida', 1843, 'Erbium', 'Er', 'C. G. Mosander'),
(69, 1, 'S', 'lantanoida', 1879, 'Túlium', 'Tm', 'P. T. Cleve'),
(70, 1, 'S', 'lantanoida', 1878, 'Itterbium', 'Yb', 'J. Ch. G. de Marignac'),
(71, 1, 'S', 'lantanoida', 1907, 'Lutécium', 'Lu', 'G. Urbain'),
(72, 1, 'S', 'átmenetifém', 1923, 'Hafnium', 'Hf', 'Dirk Coster és Hevesy György'),
(73, 1, 'S', 'átmenetifém', 1802, 'Tantál', 'Ta', 'A. G. Ekeberg'),
(74, 1, 'S', 'átmenetifém', 1783, 'Volfrám', 'W', 'J. J. és F. d\'Elhuyar'),
(75, 1, 'S', 'átmenetifém', 1925, 'Rénium', 'Re', 'W. és Ida Noddack'),
(76, 1, 'S', 'átmenetifém', 1804, 'Ozmium', 'Os', 'S. Tennant'),
(77, 1, 'S', 'átmenetifém', 1804, 'Irídium', 'Ir', 'S. Tennant'),
(78, 1, 'S', 'átmenetifém', 1741, 'Platina', 'Pt', 'Ch. Wood'),
(79, 1, 'S', 'átmenetifém', 0, 'Arany', 'Au', 'Ismeretlen'),
(80, 1, 'F', 'átmenetifém', 0, 'Higany', 'Hg', 'Ismeretlen'),
(81, 1, 'S', 'másodfajú fém', 1861, 'Tallium', 'Tl', 'W. Crookes'),
(82, 1, 'S', 'másodfajú fém', 0, 'Ólom', 'Pb', 'Ismeretlen'),
(83, 1, 'S', 'másodfajú fém', 1740, 'Bizmut', 'Bi', 'I.H. Pott'),
(84, 1, 'S', 'másodfajú fém', 1898, 'Polónium', 'Po', 'Pierre és Marie Curie'),
(85, NULL, 'S', 'félfém', 1940, 'Asztácium', 'At', 'D.R. Corson, McKenzie és E.Segre'),
(86, 0, 'G', 'nemesgáz', 1900, 'Radon', 'Rn', 'F. E. Dorn'),
(87, 1, 'S', 'alkálifém', 1939, 'Francium', 'Fr', 'Margueritte Perey'),
(88, 1, 'S', 'alkáliföldfém', 1898, 'Rádium', 'Ra', 'Pierre és Marie Curie'),
(89, 1, 'S', 'aktinoida', 1899, 'Aktínium', 'Ac', 'A. Debierne'),
(90, 1, 'S', 'aktinoida', 1828, 'Tórium', 'Th', 'J. J. Berzelius'),
(91, 1, 'S', 'aktinoida', 1917, 'Protaktínium', 'Pa', 'O. Hahn és L. Meitner'),
(92, 1, 'S', 'aktinoida', 1789, 'Urán', 'U', 'M. H. Klaproth (oxid)'),
(93, 1, 'S', 'aktinoida', 1940, 'Neptúnium', 'Np', 'McMillan és O. Abelson'),
(94, 1, 'S', 'aktinoida', 1940, 'Plutónium', 'Pu', 'G.T.Seaborg és McMillan'),
(95, 1, 'S', 'aktinoida', 1944, 'Amerícium', 'Am', 'G.T.Seaborg, R.A.James, A.Ghiorso és L.O.Morgan'),
(96, 1, 'S', 'aktinoida', 1944, 'Kűrium', 'Cm', 'G.T.Seaborg, R.A.James és A.Ghiorso'),
(97, 1, 'S', 'aktinoida', 1949, 'Berkélium', 'Bk', 'G.T.Seaborg, G.G.Thompson és A.Ghiorso'),
(98, 1, 'S', 'aktinoida	', 1950, 'Kalifornium', 'Cf', 'A.Ghiorso, G.T.Seaborg'),
(99, 1, 'S', 'aktinoida', 1952, 'Einsteinium', 'Es', 'A.Ghiorso, G.T.Seaborg, G.G.Thompson, G.H.Higgins, s.m.'),
(100, 1, 'S', 'aktinoida', 1953, 'Fermium', 'Fm', 'A.Ghiorso, G.T.Seaborg, G.G.Thompson, G.H.Higgins és m.'),
(101, 1, 'S', 'aktinoida', 1955, 'Mendelévium', 'Md', 'A.Ghiorso, G.T.Seaborg, B.G.Harvey és m.'),
(102, 1, 'S', 'aktinoida', 1958, 'Nobélium', 'No', 'A.Ghiorso, G.T.Seaborg, T.Sikkeland és m.'),
(103, 1, 'S', 'aktinoida', 1961, 'Laurencium', 'Lr', 'A.Ghiorso, T.Sikkeland, R.E.Larsh és R.T.Latimer'),
(104, 1, 'N', 'átmenetifém', 1966, 'Raderfordium', 'Rf', 'C.N.Flerov ?'),
(105, 1, 'N', 'átmenetifém', 1967, 'Dubnium', 'Db', 'Dubna'),
(106, 1, 'N', 'átmenetifém', 1974, 'Sziborgium', 'Sg', 'University of California, Berkeley'),
(107, 1, 'N', 'átmenetifém', 1976, 'Bohrium', 'Bh', 'Y. Oganessian, Dubna'),
(108, 1, 'N', 'átmenetifém', 1984, 'Hasszium', 'Hs', 'Peter Armbruster és Gottfried Münzenberg'),
(109, 1, 'N', 'átmenetifém', 1982, 'Meitnérium', 'Mt', 'Peter Armbruster és Gottfried Münzenberg, GSI'),
(110, 1, 'N', 'átmenetifém', 1994, 'Darmstadtium', 'Ds', 'S. Hofmann, V. Ninov és mások, a GSI-től'),
(111, 1, 'N', 'átmenetifém', 1994, 'Röntgénium', 'Rg', 'S. Hofmann, V. Ninov és mások, a GSI-től'),
(112, 1, 'N', 'átmenetifém', 1996, 'Kopernícium', 'Cn', 'S. Hofmann, V. Ninov és mások, a GSI-től'),
(113, 1, 'N', 'másodfajú fém', 2004, 'Nihónium', 'Nh', 'Egyesített Atomkutató Intézet, Dubna és Lawrence Livermore National Laboratory'),
(114, 1, 'N', 'másodfajú fém', 1999, 'Fleróvium', 'Fl', 'Egyesített Atomkutató Intézet, Dubna'),
(115, 1, 'N', 'másodfajú fém', 2004, 'Moszkóvium', 'Mc', 'Egyesített Atomkutató Intézet, Dubna és Lawrence Livermore National Laboratory'),
(116, 1, 'N', 'másodfajú fém', 2001, 'Livermórium', 'Lv', 'Egyesített Atomkutató Intézet, Dubna'),
(117, 1, 'N', 'másodfajú fém', 2010, 'Tenesszium', 'Ts', '-'),
(118, 0, 'N', 'nemesgáz', 2006, 'Oganeszon', 'Og', 'Egyesített Atomkutató Intézet, Dubna és Lawrence Livermore National Laboratory'),
(119, 0, 'I', '', 0, 'ununennium', 'Uu', '');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `elemek`
--
ALTER TABLE `elemek`
  ADD PRIMARY KEY (`rendszam`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
