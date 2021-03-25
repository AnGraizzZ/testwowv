-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Мар 25 2021 г., 13:18
-- Версия сервера: 10.4.18-MariaDB
-- Версия PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wowvendor`
--

-- --------------------------------------------------------

--
-- Структура таблицы `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `rockPosition` int(11) NOT NULL,
  `timer` int(11) NOT NULL,
  `justJump` int(11) NOT NULL,
  `rockSize` int(11) NOT NULL,
  `finish` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `data`
--

INSERT INTO `data` (`id`, `rockPosition`, `timer`, `justJump`, `rockSize`, `finish`) VALUES
(13, 276, 38, 590, 51, 'false'),
(14, 811, 10, 0, 49, 'false'),
(15, 357, 55, 656, 84, 'false'),
(16, 850, 15, 276, 41, 'false'),
(17, 312, 39, 0, 46, 'false'),
(18, 628, 52, 216, 50, 'true'),
(19, 603, 52, 536, 55, 'true'),
(20, 406, 58, 500, 52, 'true'),
(21, 420, 52, 276, 66, 'true'),
(22, 436, 52, 316, 53, 'true'),
(23, 782, 185, 336, 60, 'true'),
(24, 639, 34, 470, 75, 'false'),
(25, 767, 40, 0, 44, 'false'),
(26, 364, 51, 0, 44, 'false'),
(27, 647, 21, 216, 81, 'false'),
(28, 620, 392, 516, 66, 'true'),
(29, 604, 481, 516, 53, 'true'),
(30, 534, 391, 486, 60, 'true'),
(31, 549, 490, 438, 49, 'true'),
(32, 502, 262, 410, 70, 'true'),
(33, 402, 136, 348, 81, 'false');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
