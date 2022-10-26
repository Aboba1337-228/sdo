-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 26 2022 г., 15:19
-- Версия сервера: 10.3.22-MariaDB
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `quiz2`
--

-- --------------------------------------------------------

--
-- Структура таблицы `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Структура таблицы `materials`
--

CREATE TABLE `materials` (
  `id` int(11) NOT NULL,
  `name_materials` varchar(255) NOT NULL,
  `materials` text NOT NULL,
  `test_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `materials`
--

INSERT INTO `materials` (`id`, `name_materials`, `materials`, `test_id`) VALUES
(1, 'Материал №1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 1),
(2, 'Материал №2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 2),
(3, 'Материал №3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 3),
(4, 'Материал №4', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 4),
(5, 'Материал №5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 5),
(6, 'Материал №6', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 6);

-- --------------------------------------------------------

--
-- Структура таблицы `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `name_news` varchar(255) NOT NULL,
  `date_news` varchar(255) NOT NULL,
  `discript_news` text NOT NULL,
  `news_image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name_news`, `date_news`, `discript_news`, `news_image`) VALUES
(1, 'Приглашаем студентов, аспирантов и молодых преподавателей принять участие в конкурсе \'Атмосфера\'!', '24.02.2022', 'Стартовал новый сезон Всероссийского конкурса «Атмосфера» 2022–2023 на лучшую работу по вопросам избирательного права и избирательного процесса. В нём могут принять участие студенты, аспиранты, а также преподаватели в возрасте не старше 35 лет. На выбор - четыре номинации: - «Цифровая волна» (веб-разработки); - «Творческий циклон» (видеоролики); - «Научный фронт» (научно-исследовательские труды); - «Методстанция» (учебно-мотодические материалы). Приз в каждой из номинаций - 150 000 рублей! Напомним, в прошлом году среди победителей конкурса оказались представители Оренбургской области! Студент Бугурусланского нефтяного колледжа Руслан Кульматов и его творческая команда стали лучшими в номинации \'Творческий циклон\'. Их конкурсную работу - ролик \'Галочка\' - можно посмотреть в ВК на странице облизбиркома в разделе \'Видео\'. Конкурс проводится в два этапа. На первом, региональном, этапе отбор будет проводить Избирательная комиссия Оренбургской области. Участникам необходимо выслать работу и необходимые документы до 15 ноября 2022 года. Лучшие работы облизбирком направит для участия в федеральном этапе Всероссийского конкурса «Атмосфера» не позднее 20 декабря 2022 года. Вся подробная информация о конкурсе здесь - https://www.rcoit.ru/competitions/atmosphere2023/', 'https://galaktika-it.ru/wp-content/uploads/2020/10/novosti.jpg'),
(2, 'Приглашаем студентов, аспирантов и молодых преподавателей принять участие в конкурсе \'Атмосфера\'!', '24.02.2022', 'Стартовал новый сезон Всероссийского конкурса «Атмосфера» 2022–2023 на лучшую работу по вопросам избирательного права и избирательного процесса. В нём могут принять участие студенты, аспиранты, а также преподаватели в возрасте не старше 35 лет. На выбор - четыре номинации: - «Цифровая волна» (веб-разработки); - «Творческий циклон» (видеоролики); - «Научный фронт» (научно-исследовательские труды); - «Методстанция» (учебно-мотодические материалы). Приз в каждой из номинаций - 150 000 рублей! Напомним, в прошлом году среди победителей конкурса оказались представители Оренбургской области! Студент Бугурусланского нефтяного колледжа Руслан Кульматов и его творческая команда стали лучшими в номинации \'Творческий циклон\'. Их конкурсную работу - ролик \'Галочка\' - можно посмотреть в ВК на странице облизбиркома в разделе \'Видео\'. Конкурс проводится в два этапа. На первом, региональном, этапе отбор будет проводить Избирательная комиссия Оренбургской области. Участникам необходимо выслать работу и необходимые документы до 15 ноября 2022 года. Лучшие работы облизбирком направит для участия в федеральном этапе Всероссийского конкурса «Атмосфера» не позднее 20 декабря 2022 года. Вся подробная информация о конкурсе здесь - https://www.rcoit.ru/competitions/atmosphere2023/', 'https://galaktika-it.ru/wp-content/uploads/2020/10/novosti.jpg'),
(3, 'Приглашаем студентов, аспирантов и молодых преподавателей принять участие в конкурсе \'Атмосфера\'!', '24.02.2022', 'Стартовал новый сезон Всероссийского конкурса «Атмосфера» 2022–2023 на лучшую работу по вопросам избирательного права и избирательного процесса. В нём могут принять участие студенты, аспиранты, а также преподаватели в возрасте не старше 35 лет. На выбор - четыре номинации: - «Цифровая волна» (веб-разработки); - «Творческий циклон» (видеоролики); - «Научный фронт» (научно-исследовательские труды); - «Методстанция» (учебно-мотодические материалы). Приз в каждой из номинаций - 150 000 рублей! Напомним, в прошлом году среди победителей конкурса оказались представители Оренбургской области! Студент Бугурусланского нефтяного колледжа Руслан Кульматов и его творческая команда стали лучшими в номинации \'Творческий циклон\'. Их конкурсную работу - ролик \'Галочка\' - можно посмотреть в ВК на странице облизбиркома в разделе \'Видео\'. Конкурс проводится в два этапа. На первом, региональном, этапе отбор будет проводить Избирательная комиссия Оренбургской области. Участникам необходимо выслать работу и необходимые документы до 15 ноября 2022 года. Лучшие работы облизбирком направит для участия в федеральном этапе Всероссийского конкурса «Атмосфера» не позднее 20 декабря 2022 года. Вся подробная информация о конкурсе здесь - https://www.rcoit.ru/competitions/atmosphere2023/', 'https://galaktika-it.ru/wp-content/uploads/2020/10/novosti.jpg'),
(5, '1Приглашаем студентов, аспирантов и молодых преподавателей принять участие в конкурсе \'Атмосфера\'!', '24.02.2022', 'Стартовал новый сезон Всероссийского конкурса «Атмосфера» 2022–2023 на лучшую работу по вопросам избирательного права и избирательного процесса. В нём могут принять участие студенты, аспиранты, а также преподаватели в возрасте не старше 35 лет. На выбор - четыре номинации: - «Цифровая волна» (веб-разработки); - «Творческий циклон» (видеоролики); - «Научный фронт» (научно-исследовательские труды); - «Методстанция» (учебно-мотодические материалы). Приз в каждой из номинаций - 150 000 рублей! Напомним, в прошлом году среди победителей конкурса оказались представители Оренбургской области! Студент Бугурусланского нефтяного колледжа Руслан Кульматов и его творческая команда стали лучшими в номинации \'Творческий циклон\'. Их конкурсную работу - ролик \'Галочка\' - можно посмотреть в ВК на странице облизбиркома в разделе \'Видео\'. Конкурс проводится в два этапа. На первом, региональном, этапе отбор будет проводить Избирательная комиссия Оренбургской области. Участникам необходимо выслать работу и необходимые документы до 15 ноября 2022 года. Лучшие работы облизбирком направит для участия в федеральном этапе Всероссийского конкурса «Атмосфера» не позднее 20 декабря 2022 года. Вся подробная информация о конкурсе здесь - https://www.rcoit.ru/competitions/atmosphere2023/', 'https://galaktika-it.ru/wp-content/uploads/2020/10/novosti.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `test_otvet`
--

CREATE TABLE `test_otvet` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `verify_answer` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test_otvet`
--

INSERT INTO `test_otvet` (`id`, `test_id`, `answer`, `verify_answer`) VALUES
(1, 1, '[[\"123\",\"Ответ №432\",\"Ответ №23454\"], [\"123\",\"Ответ №3245\",\"Ответ №2453\"], [\"123\",\"Ответ №2345\",\"Ответ №12334\"], [\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №4564673\"],[\"123\",\"Ответ №12343\",\"Ответ №999999999\"]]', '[\"123\",\"123\",\"123\",\"123\",\"123\",\"123\",\"123\",\"123\",\"123\",\"123\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `test_quest`
--

CREATE TABLE `test_quest` (
  `id` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `quest` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `test_quest`
--

INSERT INTO `test_quest` (`id`, `test_id`, `quest`) VALUES
(1, 1, '[\"Уполномоченный представитель избирательного объединения имеет право\",\"Согласно избирательному законодательству на избирательный участок могут быть направлены три наблюдателя\",\"Наблюдатель вправе\",\"Дупутат(районного, городского совета) вправе\",\"Кандидат имеет право\",\"Наблюдатель не вправе\",\"При направлении наблюдателей на УИК указываются следующие данные\",\"Вправе ли кандидат присутствовать при организации выездного голосования на дому\",\"Один и тот же гражданин может быть назначен наблюдателем\",\"УИК допускает наблюдателя к работе только при условии наличия у него\"]'),
(2, 2, '[\"Вопрос №1\",\"Вопрос №2\",\"Вопрос №3\",\"Вопрос №4\",\"Вопрос №5\",\"Вопрос №6\",\"Вопрос №7\",\"Вопрос №8\",\"Вопрос №9\",\"Вопрос №10\"]'),
(3, 3, '[\"Вопрос №1\",\"Вопрос №2\",\"Вопрос №3\",\"Вопрос №4\",\"Вопрос №5\",\"Вопрос №6\",\"Вопрос №7\",\"Вопрос №8\",\"Вопрос №9\",\"Вопрос №10\"]'),
(4, 4, '[\"Вопрос №1\",\"Вопрос №2\",\"Вопрос №3\",\"Вопрос №4\",\"Вопрос №5\",\"Вопрос №6\",\"Вопрос №7\",\"Вопрос №8\",\"Вопрос №9\",\"Вопрос №10\"]'),
(5, 5, '[\"Вопрос №1\",\"Вопрос №2\",\"Вопрос №3\",\"Вопрос №4\",\"Вопрос №5\",\"Вопрос №6\",\"Вопрос №7\",\"Вопрос №8\",\"Вопрос №9\",\"Вопрос №10\"]'),
(6, 6, '[\"Вопрос №1\",\"Вопрос №2\",\"Вопрос №3\",\"Вопрос №4\",\"Вопрос №5\",\"Вопрос №6\",\"Вопрос №7\",\"Вопрос №8\",\"Вопрос №9\",\"Вопрос №10\"]');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `number`, `mail`, `password`, `city`) VALUES
(28, 'Сергеев Сергей Сергеевич', '+79999999', '1234@mail.ru', '123123', 'Самара');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `materials`
--
ALTER TABLE `materials`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test_otvet`
--
ALTER TABLE `test_otvet`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `test_quest`
--
ALTER TABLE `test_quest`
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
-- AUTO_INCREMENT для таблицы `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `materials`
--
ALTER TABLE `materials`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;

--
-- AUTO_INCREMENT для таблицы `test_otvet`
--
ALTER TABLE `test_otvet`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `test_quest`
--
ALTER TABLE `test_quest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
