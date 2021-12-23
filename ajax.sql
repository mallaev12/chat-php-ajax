-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Дек 20 2021 г., 16:26
-- Версия сервера: 8.0.24
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `ajax`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chat`
--

CREATE TABLE `chat` (
  `id` int NOT NULL,
  `login` varchar(20) COLLATE utf8_bin NOT NULL,
  `chat` text CHARACTER SET utf8 COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `chat`
--

INSERT INTO `chat` (`id`, `login`, `chat`) VALUES
(1, 'agrum', 'asd'),
(2, 'agrum', 'asd'),
(3, 'agrum', 'asd'),
(4, 'agrum', 'asd'),
(5, 'agrum', 'asd'),
(6, 'agrum', 'Логотип для мойки'),
(7, 'agrum', 'Логотип для мойки'),
(8, 'agrum', 'Логотип для мойки'),
(9, 'agrum', 'Логотип для мойки'),
(10, 'agrum', 'Логотип для мойки'),
(11, 'agrum', 'Логотип для мойки'),
(12, 'agrum', 'Логотип для мойки'),
(13, 'agrum', 'Логотип для мойки'),
(14, 'agrum', 'Логотип для мойки'),
(15, 'agrum', 'Логотип для мойки'),
(16, 'agrum', 'Логотип для мойки'),
(17, 'admin', 'Хей привет'),
(18, 'admin', 'Хей привет'),
(19, 'admin', 'Хей привет'),
(20, 'admin', 'Пока'),
(21, 'admin', 'Привет'),
(22, 'admin', 'Хей привет'),
(23, 'agrum', 'Привет админ'),
(24, 'admin', 'Пока'),
(25, 'agrum', 'asd'),
(26, 'agrum', 'asd'),
(216, 'agrum', 'Новосибинвест'),
(217, 'agrum', 'Хей привет'),
(218, 'admin', 'Логотип \"НовосибИнвест\"'),
(219, 'admin', 'Хей привет'),
(220, 'agrum', 'Привет админ'),
(221, 'admin', 'asd'),
(222, 'admin', 'Хей привет'),
(223, 'agrum', 'Привет админ'),
(224, 'admin', 'Как дела?'),
(225, 'agrum', 'Хорошо'),
(226, 'agrum', 'Пока'),
(227, 'admin', 'Пока агрум'),
(228, 'agrum', 'Пока'),
(229, 'admin', 'Хей привет'),
(230, 'admin', '');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `login` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `login`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'agrum', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chat`
--
ALTER TABLE `chat`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
