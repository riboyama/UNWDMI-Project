-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Gegenereerd op: 30 jan 2017 om 16:24
-- Serverversie: 10.1.16-MariaDB
-- PHP-versie: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `unwdmi`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `argentina`
--

CREATE TABLE `argentina` (
  `id` int(11) NOT NULL,
  `stationId` int(11) NOT NULL,
  `visibility` float NOT NULL,
  `cloudcoverage` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='All weatherdata for Argentina.';

--
-- Gegevens worden geëxporteerd voor tabel `argentina`
--

INSERT INTO `argentina` (`id`, `stationId`, `visibility`, `cloudcoverage`) VALUES
(1, 716251, 4.5, 98.1),
(2, 720172, 12, 5.3),
(3, 875320, 16.7, 40),
(4, 766493, 16.7, 83),
(5, 718080, 16, 80.9),
(6, 276070, 4.6, 70.2),
(7, 237240, 19.7, 51.6),
(8, 723100, 16.1, 52.9),
(9, 95540, 6.6, 61.9),
(10, 804020, 34.6, 96.6),
(11, 109630, 34.1, 51),
(12, 560290, 29.2, 54.7),
(13, 726458, 27.5, 85.6),
(14, 725472, 10.8, 57.8),
(15, 373950, 12.9, 90.3),
(16, 471064, 15.6, 27),
(17, 569770, 24.6, 61.5),
(18, 725685, 33.3, 35.6),
(19, 749331, 3.3, 71.1),
(20, 723447, 12.2, 27.5),
(21, 719120, 25.3, 69.2),
(22, 102180, 19.3, 73.4),
(23, 476290, 35.8, 50.4),
(24, 239290, 29.4, 56.6),
(25, 118550, 21.5, 53.2),
(26, 419410, 9.5, 46.8),
(27, 852450, 27.9, 52.9),
(28, 77900, 19.8, 50.3),
(29, 604570, 10.3, 52.6),
(30, 239140, 11.1, 52.2),
(31, 348800, 6.2, 51.4),
(32, 268250, 9.6, 52.3),
(33, 740030, 44.5, 87.2),
(34, 478550, 12.2, 22.2),
(35, 131825, 9.7, 96.3),
(36, 723788, 44.4, 29.6),
(37, 749072, 18.3, 96.4),
(38, 100040, 9.5, 63.1),
(39, 723069, 16.9, 60.8),
(40, 959600, 17.7, 51.3),
(41, 378640, 13.6, 52),
(42, 744905, 17.3, 68.3),
(43, 156550, 6.3, 58.7),
(44, 317350, 8.1, 51.7),
(45, 725540, 6, 52.8),
(46, 722596, 10.8, 74.7),
(47, 134570, 13.3, 51.3),
(48, 726777, 15.5, 17.5),
(49, 718755, 13.1, 92.6),
(50, 621610, 19.2, 51.9),
(51, 725395, 11.9, 50.2),
(52, 917540, 33.3, 36.3),
(53, 712030, 15.2, 50.2),
(54, 722056, 13.5, 50.1),
(55, 713683, 10.5, 77.3),
(56, 959570, 33.4, 50),
(57, 722690, 66.4, 50),
(58, 722747, 15.8, 50.2),
(59, 727380, 12.9, 50),
(60, 607690, 8.4, 50.6),
(61, 911780, 18.8, 88.2),
(62, 724075, 11.5, 73.4),
(63, 742071, 14.4, 61.6),
(64, 765494, 7.8, 4.1),
(65, 584570, 8, 50.1),
(66, 943120, 23.2, 50),
(67, 982320, 16.2, 37.7),
(68, 800940, 11.9, 96.1),
(69, 723527, 21.3, 50.3),
(70, 712635, 16.6, 69.2),
(71, 538630, 13.9, 78.4),
(72, 876420, 15.4, 50.1),
(73, 577930, 9.7, 50.2),
(74, 722140, 11.7, 50.1),
(75, 804500, 11.5, 1.5),
(76, 725634, 13, 63.6),
(77, 984260, 14.1, 50.4),
(78, 620160, 10.2, 50.1),
(79, 911700, 47.5, 50.1),
(80, 579720, 10.4, 92.9),
(81, 727458, 14.5, 30.8),
(82, 589310, 14.8, 83.5),
(83, 841290, 11.1, 81.7),
(84, 740030, 43, 19.5),
(85, 964210, 17.3, 50.2),
(86, 702510, 25.9, 50.6),
(87, 726387, 11.1, 50.3),
(88, 723710, 13.8, 53.9),
(89, 968810, 14, 78.3),
(90, 724006, 15.7, 38.1),
(91, 621760, 17.6, 69.4),
(92, 948280, 16.8, 50.3),
(93, 578660, 10.8, 76.5),
(94, 725069, 15.9, 50.1),
(95, 526520, 26.5, 66),
(96, 725865, 24.6, 59.4),
(97, 600960, 9.2, 23.2),
(98, 724177, 17, 79.4),
(99, 702220, 25.9, 50.4),
(100, 839810, 11.5, 99.6),
(101, 717140, 23.5, 62.6),
(102, 722133, 11.4, 76.7),
(103, 691784, 11.1, 68.6),
(104, 582510, 17, 50.1),
(105, 727856, 16, 68.6),
(106, 718870, 35, 67.1),
(107, 726798, 32, 66.7),
(108, 725566, 20.3, 18.1),
(109, 766133, 14.1, 79.2),
(110, 723106, 12.1, 50.1),
(111, 514670, 28.1, 71.7),
(112, 716251, 3.3, 50.1),
(113, 724945, 19.5, 50.2),
(114, 541020, 27.1, 50.2),
(115, 875320, 15.2, 3.1),
(116, 724243, 14.6, 50.2),
(117, 670050, 15.8, 50.1),
(118, 727090, 2.4, 92.7),
(119, 722251, 12.9, 62.3),
(120, 959600, 20.9, 70.8),
(121, 710750, 22.4, 76.2),
(122, 588490, 10, 44.5),
(123, 948930, 17.6, 50.1),
(124, 724030, 20.6, 72.7),
(125, 720322, 7.4, 28.2),
(126, 723230, 19.7, 62.3),
(127, 678770, 38.3, 51.2),
(128, 688160, 19.7, 50),
(129, 539290, 11.8, 18.4),
(130, 716340, 16.6, 50.2),
(131, 689160, 11.6, 8.9),
(132, 723570, 16.2, 47.9),
(133, 720340, 14.1, 81.7),
(134, 787625, 11.2, 9.1),
(135, 784790, 12.2, 97.1),
(136, 865650, 12.6, 55.3),
(137, 725330, 12.4, 84.3),
(138, 723816, 43.1, 50.1),
(139, 724721, 58.9, 13.1),
(140, 725527, 13.1, 50.1),
(141, 727455, 15.6, 96.8),
(142, 717330, 15.9, 85.8),
(143, 827040, 6.9, 61),
(144, 847350, 15.8, 20.9),
(145, 728770, 60.7, 97.8),
(146, 722596, 15, 65.5),
(147, 593530, 1.1, 75.6),
(148, 679750, 37.4, 50),
(149, 723965, 23.1, 50.1),
(150, 722900, 16.1, 95.8),
(151, 718814, 22.5, 87.8),
(152, 722287, 13.2, 50),
(153, 587310, 16.8, 50.2),
(154, 726940, 17.6, 82.9),
(155, 655100, 8.6, 95.9),
(156, 716013, 15, 40.3),
(157, 729380, 22.2, 55.8),
(158, 715340, 10.8, 91.5),
(159, 723815, 35.2, 50.3),
(160, 725630, 31.7, 50),
(161, 749170, 17.6, 5.8),
(162, 505640, 18.3, 65.7),
(163, 729350, 18.9, 50.1),
(164, 722539, 15.8, 31.2),
(165, 702670, 30.3, 69.7),
(166, 723400, 15.1, 70.4),
(167, 763050, 17.6, 94.9),
(168, 718100, 22.2, 50.2),
(169, 911760, 15.6, 62.8);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `login_attempts`
--

CREATE TABLE `login_attempts` (
  `user_id` int(11) NOT NULL,
  `time` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `login_attempts`
--

INSERT INTO `login_attempts` (`user_id`, `time`) VALUES
(1, '1485696779'),
(1, '1485696798');

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `oceania`
--

CREATE TABLE `oceania` (
  `id` int(11) NOT NULL,
  `stationId` int(11) NOT NULL,
  `cloudcoverage` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='All weather data for the oceania.';

--
-- Gegevens worden geëxporteerd voor tabel `oceania`
--

INSERT INTO `oceania` (`id`, `stationId`, `cloudcoverage`) VALUES
(1, 40630, 53.9),
(2, 35771, 55),
(3, 37170, 54.4),
(4, 25920, 67.4),
(5, 478090, 50.2),
(6, 121860, 50.1),
(7, 67860, 53.4),
(8, 347120, 50),
(9, 474210, 50),
(10, 478720, 10),
(11, 403730, 61.4),
(12, 22470, 8.6),
(13, 208560, 50.1),
(14, 335620, 60.4),
(15, 325830, 50.3),
(16, 167460, 50),
(17, 250420, 59.3),
(18, 24860, 68.2),
(19, 42200, 50.2),
(20, 471850, 51.8),
(21, 171270, 61.6),
(22, 129820, 50.1),
(23, 130670, 88.3),
(24, 239330, 50),
(25, 160365, 84.5),
(26, 360640, 85),
(27, 171550, 50.2),
(28, 28750, 74.1),
(29, 305070, 50.4),
(30, 471620, 88.7),
(31, 333012, 59.9),
(32, 142460, 50.3),
(33, 255380, 81.8),
(34, 374840, 58.2),
(35, 37750, 83),
(36, 309160, 65.5),
(37, 228670, 65.8),
(38, 222170, 98),
(39, 432260, 88.6),
(40, 471064, 18.8),
(41, 171700, 79.9),
(42, 360220, 50.1),
(43, 25080, 59.8),
(44, 284190, 50.2),
(45, 85610, 25.5),
(46, 483790, 0.3),
(47, 388120, 50),
(48, 38300, 44.6),
(49, 285370, 74.8),
(50, 477060, 83.3),
(51, 76470, 72.1),
(52, 35771, 67),
(53, 410240, 93.3),
(54, 81840, 50.2),
(55, 373950, 50.1),
(56, 340470, 75.4),
(57, 109080, 55),
(58, 362080, 69.7),
(59, 81810, 50.1),
(60, 34620, 50),
(61, 287850, 50.1),
(62, 310960, 31.5),
(63, 484650, 51.1),
(64, 428670, 26.2),
(65, 75580, 50.2),
(66, 419410, 67.5),
(67, 285930, 50),
(68, 370180, 50.2),
(69, 126950, 50),
(70, 357000, 50),
(71, 22980, 3.5),
(72, 202770, 86.7),
(73, 107140, 50),
(74, 123450, 80.9),
(75, 384573, 10.4),
(76, 121630, 66.8),
(77, 36600, 50),
(78, 404520, 96.1),
(79, 66000, 73.2),
(80, 170700, 50.1),
(81, 73740, 50.3),
(82, 384032, 21.3),
(83, 432840, 25.8),
(84, 280440, 74.8),
(85, 102240, 50.1),
(86, 313620, 50.2),
(87, 287970, 50),
(88, 111440, 50.1),
(89, 31740, 50.1),
(90, 305360, 84.6),
(91, 12050, 50.1),
(92, 106190, 69.5),
(93, 63700, 50),
(94, 315610, 50.2),
(95, 31400, 92),
(96, 200260, 94.7),
(97, 163320, 94.8),
(98, 30940, 50.3),
(99, 28480, 50.1),
(100, 230780, 50.2),
(101, 101470, 79.9),
(102, 471400, 58),
(103, 486200, 71.7),
(104, 38060, 50.1),
(105, 486740, 20.8),
(106, 368590, 78.4),
(107, 24240, 50),
(108, 33180, 94.7),
(109, 24810, 16.2),
(110, 474900, 52.2);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` char(128) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  `expired` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `is_admin`, `expired`) VALUES
(1, 'test_user', '$2y$10$eB6.G5TXZY7IMzejujOusuu.vxT6rc6cAhDeACWuXIQ3DN44RpWAK', 1, 0),
(23, 'admin_user', '$2y$10$zkdF.WgaNlykWkM4U1TpyegDjo1N55VEbPHB0G9yADUiIlmDXhOvi', 1, 0),
(24, 'nietadmin', '$2y$10$KfymkapV1q5UMjSgfj/AHeU9UPAXTbeAvT8I/fONXqZwSlRTD4OcW', 0, 0),
(25, 'ronan', '$2y$10$D3zIPehQq7v8WVb9ikONQ.LWzWwcLwVvpPvuLBVf4BWNTOfF2h1EW', 0, 0);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `argentina`
--
ALTER TABLE `argentina`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `oceania`
--
ALTER TABLE `oceania`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `argentina`
--
ALTER TABLE `argentina`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;
--
-- AUTO_INCREMENT voor een tabel `oceania`
--
ALTER TABLE `oceania`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;
--
-- AUTO_INCREMENT voor een tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
