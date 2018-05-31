-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Май 18 2018 г., 18:11
-- Версия сервера: 10.0.33-MariaDB-0ubuntu0.16.04.1
-- Версия PHP: 7.0.27-1+ubuntu16.04.1+deb.sury.org+1

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

INSERT INTO `around_lvivs` (`id`, `name_uk`, `name_en`, `slug`, `address_uk`, `address_en`, `title_uk`, `title_en`, `post_uk`, `post_en`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Старий Самбір та села Розлуч і Скелівка', '0', 'starij-sambir-ta-sela-rozluch-i-skelivka', 'cело Скелевка., Львовская область', '0', 'Одне з найцікавіших містечок на Прикарпатті – Старий Самбір. Маленьке, тихе, спокійне. До гір тут зовсім недалеко, врешті, Старосамбірський район вже має статус гірського.', 'ones of interests', '<p><span style="color: #1d1d1d; font-family: Helvetica, sans-serif;">Свого часу такі містечка були осередками єврейського життя в Галичині, оскільки значна частина їх мешканців, або й навіть більшість, становили євреї. Зараз від того минулого залишились лише окремі пам&rsquo;ятки, як от старосамбірська синагога та єврейський цвинтар. Між іншим, один з найстаріших в Україні, адже ховали тут ще у 16 столітті. Якщо ви хочете трохи затриматись у цих краях, то зупинитись краще не в самому містечку, а в селі Розлуч.</span><br style="color: #1d1d1d; font-family: Helvetica, sans-serif;" /><br style="color: #1d1d1d; font-family: Helvetica, sans-serif;" /><span style="color: #1d1d1d; font-family: Helvetica, sans-serif;">Як бонус, матимете чудове повітря і карпатську природу плюс джерела мінеральної воли &laquo;Нафтуся&raquo;, &laquo;Залізна&raquo; та &laquo;Содова&raquo;. При базах є і кухні. А вже наступного дня, попивши мінеральної водички, можна вирушити в село Скелівку (колишній Фельштин). У селі зберігся костел святого Мартина з оборонною баштою-дзвіницею, однак головна принада села все ж не він. Село згадується у романі чеського письменника Ярослава Гашека &laquo;Пригоди бравого вояка Швейка&raquo;. Звісно, у селі є і пам&rsquo;ятник славному вояку.</span></p>', '0', 'around-lvivs/May2018/k969GXmZd2t3VFUDHWPc.jpg', 'around-lvivs/May2018/HJFsGjSzpServVf2i5up.jpeg', 'around-lvivs/May2018/31xMBoy1nMFBoVGMjm3m.jpg', 'around-lvivs/May2018/zm0MHGDdsi3unYlkVbaV.jpeg', '2018-05-14 06:27:00', '2018-05-15 10:05:33');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT '1',
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(4, 1, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 4),
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
(16, 2, 'title', 'text', 'title', 1, 1, 1, 1, 1, 1, '', 3),
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
(39, 4, 'id', 'number', 'id', 1, 0, 0, 0, 0, 0, '', 1),
(40, 4, 'parent_id', 'select_dropdown', 'parent_id', 0, 0, 1, 1, 1, 1, '{"default":"","null":"","options":{"":"-- None --"},"relationship":{"key":"id","label":"name"}}', 2),
(41, 4, 'order', 'text', 'order', 1, 1, 1, 1, 1, 1, '{"default":1}', 3),
(42, 4, 'name', 'text', 'name', 1, 1, 1, 1, 1, 1, '', 4),
(43, 4, 'slug', 'text', 'slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name"}}', 5),
(44, 4, 'created_at', 'timestamp', 'created_at', 0, 0, 1, 0, 0, 0, '', 6),
(45, 4, 'updated_at', 'timestamp', 'updated_at', 0, 0, 0, 0, 0, 0, '', 7),
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
(91, 10, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 8),
(92, 10, 'avatar', 'image', 'фото', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(93, 10, 'baner_photo', 'image', 'Банер  картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 11),
(94, 10, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 12),
(95, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 13),
(96, 12, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(97, 12, 'gid_id', 'text', 'Gid Id', 1, 1, 1, 1, 1, 1, NULL, 2),
(98, 12, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 7),
(99, 12, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 8),
(100, 12, 'photo', 'image', 'Фото', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(101, 12, 'photo1', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 10),
(102, 12, 'photo2', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 11),
(103, 12, 'baner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 12),
(104, 12, 'name', 'text', 'Назва Екскурсіі', 1, 1, 1, 1, 1, 1, NULL, 3),
(105, 12, 'status', 'select_dropdown', 'Tip', 1, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"PUBLISHED":"опубліковано","PENDING":"не опубліковане"}}', 6),
(106, 12, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 13),
(107, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 14),
(108, 14, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(109, 14, 'name', 'text', 'Ім\'я', 1, 1, 1, 1, 1, 1, NULL, 2),
(110, 14, 'type', 'select_dropdown', 'Тип', 0, 1, 1, 1, 1, 1, '{"default":"DRAFT","options":{"mistetstvo":"Мистецтво та культура","festivals":"Фестивалі","children":"Для дітей","sport":"Спорт","business":"Бізнес конференції","theater":"Театр","DRAFT":"Не опубликовано"}}', 3),
(113, 14, 'time', 'text', 'Время', 1, 1, 1, 1, 1, 1, NULL, 6),
(114, 14, 'address', 'text_area', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 7),
(115, 14, 'number', 'text', 'Тел:', 1, 1, 1, 1, 1, 1, NULL, 8),
(116, 14, 'number2', 'text', 'Тел2:', 0, 1, 1, 1, 1, 1, NULL, 9),
(117, 14, 'email', 'text', 'email', 1, 1, 1, 1, 1, 1, NULL, 10),
(118, 14, 'title', 'text_area', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 11),
(119, 14, 'post', 'rich_text_box', 'Опис', 0, 1, 1, 1, 1, 1, NULL, 12),
(120, 14, 'photo1', 'image', 'Фото1', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 13),
(121, 14, 'photo2', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 14),
(122, 14, 'photo3', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 15),
(123, 14, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 16),
(124, 14, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 17),
(125, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18),
(126, 10, 'slug', 'text', 'Slug', 1, 0, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(127, 10, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 9),
(128, 12, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(130, 14, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(131, 14, 'date_on/off', 'text', 'Дата проведения', 1, 1, 1, 1, 1, 1, NULL, 5),
(134, 16, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(137, 16, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 14),
(138, 16, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 18),
(139, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 19),
(140, 16, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 3),
(141, 16, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{"default":"Музей","options":{"Музей":"Музей","Галерея":"Галерея"}}', 2),
(142, 16, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 4),
(143, 16, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 12),
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
(155, 18, 'name', 'text', 'Назва', 1, 1, 1, 1, 1, 1, NULL, 1),
(156, 18, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 2),
(157, 18, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 3),
(158, 18, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 4),
(159, 18, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 6),
(160, 18, 'photo1', 'image', 'Фото1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(161, 18, 'photo2', 'image', 'Фото2', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(162, 18, 'photo3', 'image', 'Фото3', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 9),
(163, 18, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 10),
(164, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(165, 18, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 5),
(166, 19, 'id', 'checkbox', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(167, 19, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 2),
(168, 19, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 3),
(169, 19, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 4),
(170, 19, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 5),
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
(190, 21, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, NULL, 1),
(191, 21, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 2),
(192, 21, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{"options":{"Театр":"Театр","Філармонії":"Філармонія"}}', 3),
(193, 21, 'address', 'text', 'Адреса', 1, 1, 1, 1, 1, 1, NULL, 4),
(194, 21, 'number', 'text', 'Тел:', 1, 1, 1, 1, 1, 1, NULL, 5),
(195, 21, 'number2', 'text', 'Тел2:', 1, 1, 1, 1, 1, 1, NULL, 6),
(196, 21, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 7),
(197, 21, 'site', 'text', 'Site', 1, 1, 1, 1, 1, 1, NULL, 8),
(198, 21, 'cost', 'rich_text_box', 'Вартість', 1, 1, 1, 1, 1, 1, NULL, 9),
(199, 21, 'schedule', 'rich_text_box', 'Графік роботи', 1, 1, 1, 1, 1, 1, NULL, 10),
(200, 21, 'title', 'text', 'Короткий опис', 1, 1, 1, 1, 1, 1, NULL, 11),
(201, 21, 'post', 'rich_text_box', 'Опис', 1, 1, 1, 1, 1, 1, NULL, 12),
(202, 21, 'banner_photo', 'image', 'Банер картинка', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 13),
(203, 21, 'photo1', 'image', 'Фото1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 14),
(204, 21, 'photo2', 'image', 'Фото2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 15),
(205, 21, 'photo3', 'image', 'Фото3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 16),
(206, 21, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 17),
(207, 21, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 18),
(208, 22, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 1),
(209, 22, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{"slugify":{"origin":"name","forceUpdate":true}}', 2),
(210, 22, 'title', 'text', 'Title', 1, 1, 1, 1, 1, 1, NULL, 3),
(211, 22, 'post', 'rich_text_box', 'Post', 1, 1, 1, 1, 1, 1, NULL, 4),
(212, 22, 'banner_photo', 'image', 'Banner Photo', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 5),
(213, 22, 'photo1', 'image', 'Photo1', 1, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 6),
(214, 22, 'photo2', 'image', 'Photo2', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 7),
(215, 22, 'photo3', 'image', 'Photo3', 0, 1, 1, 1, 1, 1, '{"resize":{"width":"1000","height":"null"},"quality":"70%","upsize":true,"thumbnails":[{"name":"medium","scale":"50%"},{"name":"small","scale":"25%"},{"name":"cropped","crop":{"width":"300","height":"250"}}]}', 8),
(216, 22, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, NULL, 9),
(218, 22, 'address', 'text', 'Address', 1, 1, 1, 1, 1, 1, NULL, 3),
(219, 22, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 11),
(220, 8, 'created_at', 'timestamp', 'Створено', 0, 1, 1, 1, 0, 0, NULL, 6),
(221, 8, 'updated_at', 'timestamp', 'Редакція', 0, 1, 1, 1, 0, 0, NULL, 7);

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
(4, 'categories', 'categories', 'Category', 'Categories', 'voyager-categories', 'TCG\\Voyager\\Models\\Category', NULL, '', '', 1, 0, '2018-04-05 09:40:12', '2018-04-05 09:40:12'),
(5, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, '2018-04-05 09:40:12', '2018-04-05 09:40:12'),
(6, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, '2018-04-05 09:40:13', '2018-04-05 09:40:13'),
(8, 'languages', 'languages', 'Language', 'Languages', NULL, 'App\\Language', NULL, NULL, NULL, 1, 0, '2018-04-19 07:40:27', '2018-04-19 07:40:27'),
(9, 'owners', 'owners', 'Owner', 'Owners', NULL, 'App\\Owner', NULL, NULL, NULL, 1, 0, '2018-04-19 07:40:35', '2018-04-19 07:40:35'),
(10, 'gids', 'gids', 'Gid', 'Gids', NULL, 'App\\Gid', NULL, NULL, NULL, 1, 0, '2018-04-19 08:01:55', '2018-04-23 07:49:44'),
(12, 'excursions', 'excursions', 'Excursion', 'Excursions', NULL, 'App\\Excursion', NULL, NULL, NULL, 1, 0, '2018-04-19 08:46:41', '2018-04-19 08:46:41'),
(14, 'developments', 'developments', 'Development', 'Developments', NULL, 'App\\Development', NULL, NULL, NULL, 1, 0, '2018-04-19 10:52:00', '2018-04-19 10:52:00'),
(16, 'museums', 'museums', 'Museum', 'Museums', NULL, 'App\\Museum', NULL, NULL, NULL, 1, 0, '2018-05-04 08:33:32', '2018-05-04 08:33:32'),
(18, 'memories', 'memories', 'Memory', 'Memories', NULL, 'App\\Memory', NULL, NULL, NULL, 1, 0, '2018-05-07 08:10:08', '2018-05-07 08:10:08'),
(19, 'public_places', 'public-places', 'Public Place', 'Public Places', NULL, 'App\\PublicPlace', NULL, NULL, NULL, 1, 0, '2018-05-07 09:59:27', '2018-05-07 09:59:27'),
(20, 'parks', 'parks', 'Park', 'Parks', NULL, 'App\\Park', NULL, NULL, NULL, 1, 0, '2018-05-07 11:10:56', '2018-05-07 11:10:56'),
(21, 'teatrs', 'teatrs', 'Teatr', 'Teatrs', NULL, 'App\\Teatr', NULL, NULL, NULL, 1, 0, '2018-05-10 11:27:47', '2018-05-10 11:27:47'),
(22, 'around_lvivs', 'around-lvivs', 'Around Lviv', 'Around Lvivs', NULL, 'App\\AroundLviv', NULL, NULL, NULL, 1, 0, '2018-05-11 06:01:15', '2018-05-11 06:01:15');

-- --------------------------------------------------------

--
-- Структура таблицы `developments`
--

CREATE TABLE `developments` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `type` enum('mistetstvo','festivals','children','sport','business','theater','DRAFT') DEFAULT 'DRAFT',
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `developments`
--

INSERT INTO `developments` (`id`, `name`, `slug`, `type`, `date_on_off`, `time`, `address`, `number`, `number2`, `email`, `title`, `post`, `photo1`, `photo2`, `photo3`, `banner_photo`, `created_at`, `updated_at`) VALUES
(1, 'Концерт Arms and Sleepers: Find the Right Place', 'koncert-arms-and-sleepers', 'festivals', '20-25 Вересня 2018', '19:00', '!FESTrepublic (вул. Старознесенська, 24-26)', '0800507577', '0800507570', 'organizer@gmail.com', 'Американський електронний/тріп-хоп дуетArms and Sleepers за свою 11-річну історію видав 26 релізів – і тепер музиканти Макс Левіс (Бостон) та Мірза Рамік (Портленд) приїдуть до Львова із цією неймовірною компіляцією.', '<p>fvcflkvnflenvef;lv we;qlkmv \'[lwd;kfdlds;dx,kefv efqvefvefv ef</p>', 'developments/April2018/pEB0iixZAuE4oKQDBdg2.jpg', 'developments/April2018/8I01X37VvBdRUDX6pLkH.jpg', 'developments/April2018/IT8mC8YT6IC8nQQtkwD8.jpeg', 'developments/April2018/7baVchjGdE0BR89opUsZ.jpg', '2018-05-03 13:37:12', '2018-05-03 10:37:12');

-- --------------------------------------------------------

--
-- Структура таблицы `excursions`
--

CREATE TABLE `excursions` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `excursions`
--

INSERT INTO `excursions` (`id`, `gid_id`, `name_uk`, `name_en`, `slug`, `status`, `title_uk`, `title_en`, `post_uk`, `post_en`, `photo`, `photo1`, `photo2`, `baner_photo`, `created_at`, `updated_at`) VALUES
(1, 8, 'Ботанический сад Львовского национального университета им. Ивана Франко', '', 'botanicheski-cad', 'PUBLISHED', 'Такого Львова Вы еще не видели! Львов — это не только уникальные архитектурные памятники, удивительные скульптуры и интересные кафе, Львов — это также город-парк с большими зелеными легкими и красивыми цветущими растениями.', '0', '<p><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Такого Львова Вы еще не видели! Львов &mdash; это не только уникальные архитектурные памятники, удивительные скульптуры и интересные кафе, Львов &mdash; это&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">также город-парк с большими зелеными легкими и красивыми цветущими растениями</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">. С приходом весны Львов превращается в большой буяющий сад с подснежниками, крокусами, рододендронами, благоухающим жасмином &hellip; Всю эту цветущих красоту Вы должны увидеть на&nbsp;</span><a style="box-sizing: inherit; color: #373737; -webkit-tap-highlight-color: transparent; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" href="http://lviv-tourist.info/ru/">экскурсии по Львову</a><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">! Поэтому для всех любителей дендропарков мы открываем двери в Ботанический сад Львова!</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад Львовского национального университета им. Ивана Франко</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;&mdash; это один из первых ботанических садов Украины и Восточной Европы, открытый 1852. В его зеленой коллекции есть множество цветущих растений, в том числе &mdash; экзотических; здесь растут первоцветы, занесенные в красную Книгу Украины, а также &mdash; растения, подаренные известными людьми Украины.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Начиная с апреля и заканчивая последним месяцем лета,&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;&mdash; это рай для любителей цветущей природы. Первоцветы, анемоны, рододендроны, горицвет, форзиции, магнолии, древовидные пионы, различные сирени, тюльпанные деревья, ирисы, лилейники, розы, кувшинки, ковыль &hellip; &mdash; далеко не полный список удивительных растений Ботанического сада Львова.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Теперь эту всю цветущую красоту можно осмотреть каждый вторник и четверг, посетив экскурсию в&nbsp;</span><strong style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Ботанический сад</strong><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">&nbsp;Львова. Квалифицированные работники-ботаники проведут увлекательную экскурсию угодьями этого уникального парко-сада, покажут удивительные растения и расскажут десятки увлекательных фактов о земной флоры.</span><br style="box-sizing: inherit; color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;" /><span style="color: #373737; font-family: \'Open Sans\', sans-serif; font-size: 15px; text-align: justify;">Давайте любоваться &nbsp;природой вместе! Запись на экскурсию нужно делать заранее</span></p>', '0', 'excursions/April2018/INvo5Vs8Y9e7sYNdSNgn.jpg', 'excursions/April2018/CAgqVvae164F61FIWqBV.jpg', 'excursions/April2018/6hZMptJN7yLV8JjOf4lG.jpg', 'excursions/April2018/3F6NdWTxlrhQJxiSKrid.jpg', '2018-04-23 06:17:00', '2018-04-23 09:21:59'),
(2, 3, 'Обзорная экскурсия по историческому центру Львова', '', 'obzornaya-ekskursiya-po-istoricheskomu-centru-l-vova', 'PUBLISHED', 'Лицензированный экскурсовод поведет Вам обзорную экскурсию по Львову древними средневековыми улочками и австрийскими проспектами, старыми кварталами, в частности русским, армянским, еврейским и знаменитой площадью Рынок, покажет ВСЕ популярные среди туристов архитектурные и скульптурные объекты, расскажет Вам о них и об образовании и развитие города Львова, документальные истории, мифы и веселые рассказы о прошлой жизни горожан', '0', '<div style="text-align: left;"><sup><span style="font-family: Arial, Helvetica, sans-serif; background-color: #ffffff;">Лицензированный экскурсовод поведет Вам обзорную экскурсию по Львову древними средневековыми улочками и австрийскими проспектами, старыми кварталами, в частности русским, армянским, еврейским и знаменитой площадью&nbsp;Рынок, покажет ВСЕ популярные среди туристов архитектурные и скульптурные объекты, расскажет Вам о них и об образовании&nbsp;и развитие города Львова, документальные истории, мифы и веселые рассказы о прошлой жизни горожан. Маршрут экскурсии: Оперный театр - Национальный Драматический театр им. М. Заньковецкой - Национальный музей - Рынок сувениров - Башня лавочников - Львовская статуя &laquo;Свободы&raquo; - проспект Свободы - Памятники поэтам Адаму Мицкевичу и Тарасу Шевченко - гостинице &laquo;Жорж&raquo; и &laquo;Европейский&raquo; - Латинский собор - Часовни Боимов и Кампианов - Костел и коллегиум иезуитов (+ интерьеры) - комплекс площади Рынок - кафе &laquo;Фреска&raquo; (+ интерьеры) - Армянский собор (+ интерьеры) и дворики - Дворцы: Бандинелли, Любомирских, К.Корнякта - Камяницы: Черная и Шольц-Вольфовичей - монастырь бернардинцев (+ интерьеры) - ансамбль Успенской церкви (+ интерьеры) - Доминиканский костел (+ интерьеры) - Пороховая башня - Оборонительные стены и бастионы - Городской и Королевский арсеналы - Памятники художнику Н. Дровняку, изобретателю керосиновой лампы Я.Зегу и И.Лукасевичу, казаку И.Пидкови, - Аптека-музей (+ интерьер) - Дом гауптвахты и &laquo;4 сезона&raquo; - мастерские Шоколада и Карамели&nbsp;&nbsp;</span><span class="copyright-span" style="box-sizing: border-box; font-family: Arial, Helvetica, sans-serif; background-color: #3699c5;"><br style="box-sizing: border-box;" /></span></sup></div>', '0', 'excursions/April2018/t9SgCND6qCKqGzfQf9HQ.jpg', 'excursions/April2018/8Z5Hqcm1t18lOoDFYqFQ.jpeg', 'excursions/April2018/IyoQhIn3nR0o3QU6YaDx.jpg', 'excursions/April2018/wtG3OSKTMXAoebIXhwLq.jpg', '2018-04-27 07:32:00', '2018-04-27 08:39:51'),
(3, 8, 'safsdfsd', '', 'safsdfsd', 'PUBLISHED', 'sdfwef', '0', '<p>sdfsdf</p>', '0', 'excursions/May2018/5NvrIWvYqdowxRuf0o14.png', NULL, NULL, 'excursions/May2018/tvy3EyVBbCrItk3tFVSC.png', '2018-05-11 10:23:01', '2018-05-11 10:23:01');

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
(3, '1', '1', '1', 0, NULL, '2018-05-16 08:11:23'),
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `memories`
--

INSERT INTO `memories` (`id`, `name_uk`, `name_en`, `slug`, `address_uk`, `address_en`, `title_uk`, `title_en`, `post_uk`, `post_en`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Площа Ринок', '', 'plosha-rinok', 'пл. Рынок, Львов, Львовская область', '', 'Площа Ринок – центр політичного, громадського, культурного і торгового життя міста протягом 500 років, серце Львова, історичний початок європеїзації України.', '', '<h6><sub><strong>Львівська Площа Ринок зберегла свою назву від ХІV століття. Вона походить від німецького &laquo;der Ring&raquo; (коло, кільце), власне за таким принципом будувалися центральні площі німецьких середньовічних міст.</strong></sub></h6>\r\n<h6><sub><strong>Саме тут, у долині ріки Полтви в середині ХІV століття німецькі колоністи за дорученням короля Казимира ІІІ започаткували класичне європейське місто з класичною ринковою площею. Польський король зводив місто за найдосконалішими тогочасними будівельними технологіями, він запросив для цієї мети ремісників та будівельників з Німеччини. У наступні століття архітектурну досконалість Ринку доповнювали італійські та австрійські архітектори.</strong></sub></h6>\r\n<h6><sub><strong>Площа Ринок у її сучасному вигляді &ndash; це нашарування архітектурних ідей багатьох творців і багатьох століть, які утім мають одну єдину особливість &ndash; незмінну узгодженість і гармонію. Тут від усіх будівель віє спокоєм, упевненістю, оптимізмом і людяністю епохи європейського ренесансу. Усі кам&rsquo;яниці площі різні й неповторні, але у той самий час наче споріднені між собою однією ідеєю. Кожна кам&rsquo;яниця &ndash; окремий і завершений образ. Тут феноменально зіставлено величину будинків з людиною,&nbsp;і ми почуваємо себе&nbsp;ніби&nbsp;&nbsp;в оточенні дуже затишного інтер&rsquo;єру. Будинки не надто високі&nbsp;й не надто малі, жоден з них не виривається із загального ансамблю своїми розмірами, висотою чи стилем. У львівських ренесансних будинках відчувається справжня музика. Несиметрично розміщені вікна &ndash; два поруч і одне ніби осторонь &ndash;мають утилітарне призначення: два вікна припадають на головну залу-світлицю, а третє&nbsp;&ndash; на бокову, господарську кімнату. Але в цій асиметрії відчувається ритм &ndash; ніби спочатку звучать дві половинки ноти, а потім одна ціла нота. Звучання Площі Ринок є неповторним.&nbsp;</strong></sub></h6>\r\n<h6><sub><strong>Львівські середньовічні патриції замовляли проекти своїх будинків здебільшого італійським архітекторам, вихідцям з північної Ломбардії та південної Швейцарії. Але італійський ренесанс не зміг у Львові зберегти свою чистоту і непорушність стилю, він був доповнений і збагачений місцевими традиціями, зокрема рисами східного українського зодчества. Таким чином протягом майже п&rsquo;яти століть творився єдиний в Україні неповторний ансамбль житлових будинків на Площі Ринок. Майже всі будинки площі і до сьогодні використовуються за своїм основним призначенням &ndash; у них мешкають львів&rsquo;яни.</strong></sub></h6>', '', 'memories/May2018/GlzXYWYLDrI3RU7Mc5a1.jpg', 'memories/May2018/Iz58dtgGOEg0NRB8kYDR.jpeg', 'memories/May2018/9Nd1lDAkLVhb1wS4ZfqV.jpg', 'memories/May2018/MNWRlOikGhsOLwB9HqwZ.jpg', '2018-05-07 08:18:00', '2018-05-15 11:23:29');

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
(2, 1, 'Медіа', 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2018-04-05 09:40:17', '2018-04-11 04:15:19', 'voyager.media.index', NULL, ''),
(3, 1, 'Новини', 'News', '', '_self', 'voyager-news', NULL, NULL, 5, '2018-04-05 09:40:17', '2018-04-19 08:38:52', 'voyager.posts.index', 'null', ''),
(4, 1, 'Користувачи', 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2018-04-05 09:40:17', '2018-04-05 09:40:17', 'voyager.users.index', NULL, ''),
(5, 1, 'Категорії', 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 11, '2018-04-05 09:40:17', '2018-05-07 07:49:03', 'voyager.categories.index', NULL, ''),
(6, 1, 'Сторінки', 'Pages', 'admin/pages', '_self', 'voyager-file-text', NULL, NULL, 10, '2018-04-05 09:40:17', '2018-05-07 07:49:03', NULL, '', ''),
(7, 1, 'Ролі', 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2018-04-05 09:40:17', '2018-04-05 09:40:17', 'voyager.roles.index', NULL, ''),
(9, 1, 'Конструктор меню', 'Menu Builder', '', '_self', 'voyager-list', NULL, NULL, 12, '2018-04-05 09:40:17', '2018-05-07 07:49:05', 'voyager.menus.index', NULL, ''),
(10, 1, 'База Данних', 'Database', '', '_self', 'voyager-data', NULL, NULL, 13, '2018-04-05 09:40:17', '2018-05-07 07:49:05', 'voyager.database.index', NULL, ''),
(11, 1, 'Компас', 'Compass', '', '_self', 'voyager-compass', NULL, NULL, 14, '2018-04-05 09:40:17', '2018-05-07 07:49:05', 'voyager.compass.index', NULL, ''),
(12, 1, 'Налаштування', 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 15, '2018-04-05 09:40:17', '2018-05-07 07:49:05', 'voyager.settings.index', NULL, ''),
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
(61, 1, 'Гид', 'Gid', '/admin/gids', '_self', 'voyager-world', NULL, NULL, 8, '2018-04-19 08:02:40', '2018-05-07 07:49:03', NULL, '', NULL),
(62, 1, 'Екскурсії', 'Excursions', '/admin/excursions', '_self', 'voyager-bomb', NULL, NULL, 9, '2018-04-19 08:49:06', '2018-05-07 07:49:03', NULL, '', NULL),
(63, 1, 'Подія', 'Event', '/admin/developments', '_self', 'voyager-documentation', NULL, NULL, 6, '2018-04-19 10:55:32', '2018-04-19 10:55:42', NULL, '', NULL),
(64, 1, 'Місця', 'Places', '', '_self', NULL, NULL, NULL, 7, '2018-05-02 07:09:50', '2018-05-07 07:49:02', NULL, '', NULL),
(66, 1, 'Театри/Філармонії', 'Theaters / Philharmonic', '/admin/teatrs', '_self', NULL, NULL, 64, 2, '2018-05-02 07:11:47', '2018-05-10 11:29:24', NULL, '', NULL),
(67, 1, 'Памʼятки', 'Sights', '/admin/memories', '_self', NULL, NULL, 64, 3, '2018-05-02 07:12:41', '2018-05-07 08:13:41', NULL, '', NULL),
(68, 1, 'Аттракції', 'Attractions', '', '_self', NULL, NULL, 64, 5, '2018-05-02 07:13:22', '2018-05-02 07:14:45', NULL, '', NULL),
(69, 1, 'Парки', 'Parks', '/admin/parks', '_self', NULL, NULL, 64, 4, '2018-05-02 07:13:59', '2018-05-07 11:11:55', NULL, '', NULL),
(70, 1, 'Громадські місця', 'Public places', '/admin/public-places', '_self', NULL, NULL, 64, 6, '2018-05-02 07:14:36', '2018-05-07 10:02:31', NULL, '', NULL),
(72, 1, 'Навколо Львова', 'Around Lviv', '/admin/around-lvivs', '_self', NULL, NULL, 64, 7, '2018-05-02 07:15:44', '2018-05-11 11:13:16', NULL, '', NULL),
(73, 1, 'Музеї та галереї', 'Museums and galleries', '/admin/museums', '_self', NULL, NULL, 64, 1, '2018-05-04 08:24:50', '2018-05-07 07:49:03', NULL, '', NULL),
(75, 1, 'Мова', 'Languages', '/admin/languages', '_self', NULL, NULL, NULL, 16, '2018-05-16 08:08:08', '2018-05-16 08:08:08', NULL, '', NULL),
(78, 1, 'Лендінги', 'Landings', '', '_self', NULL, NULL, NULL, 17, '2018-05-18 09:07:24', '2018-05-18 09:32:28', NULL, '', NULL),
(79, 1, 'Головна', 'Main Page', 'admin/landings/1', '_self', NULL, NULL, 78, 1, '2018-05-18 09:32:22', '2018-05-18 09:32:29', NULL, '', NULL),
(80, 1, 'Твій Львів', 'Your Lviv', 'admin/landings/2', '_self', NULL, NULL, 78, 2, '2018-05-18 09:33:57', '2018-05-18 09:34:05', NULL, '', NULL),
(81, 1, 'Події', 'Events', 'admin/landings/3', '_self', NULL, NULL, 78, 3, '2018-05-18 09:35:30', '2018-05-18 09:36:15', NULL, '', NULL),
(82, 1, 'Сплануй', 'Planning', 'admin/landings/4', '_self', NULL, NULL, 78, 4, '2018-05-18 09:36:10', '2018-05-18 09:36:17', NULL, '', NULL),
(83, 1, 'Бізнес', 'Business', 'admin/landings/5', '_self', NULL, NULL, 78, 5, '2018-05-18 09:37:29', '2018-05-18 09:37:34', NULL, '', NULL);

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
  `type` enum('Музей','Галерея') NOT NULL,
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
  `banner_photo` text NOT NULL,
  `photo` text NOT NULL,
  `photo1` text,
  `photo2` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `museums`
--

INSERT INTO `museums` (`id`, `type`, `name`, `slug`, `address`, `number`, `number2`, `email`, `site`, `cost`, `schedule`, `title`, `post`, `banner_photo`, `photo`, `photo1`, `photo2`, `created_at`, `updated_at`) VALUES
(2, 'Музей', 'Музей народної архітектури і побуту "Шевченківський гай"', 'muzej-narodnoyi-arhitekturi-i-pobutu-shevchenkivs-kij-gaj-', 'вул.Чернеча Гора, 1', '(032) 271 21 05', '+38 (068) 52 59 185', 'museumlviv@gmail.com', 'www.lvivskansen.org', '<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif; font-weight: 400;">Дорослий &ndash; 30 грн.,</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif; font-weight: 400;">пільговий &ndash; 20 грн.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif; font-weight: 400;">Екскурсія &ndash; 100 грн.</p>', '<ul>\r\n<li><span style="color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">9.00 &ndash; 18.00 (пн/вт/ср/чт/пт/сб/нд).</span></li>\r\n<li><span style="color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">Огляд експозиції інтер&rsquo;єрів: 10.00 &ndash; 18.00 (ср/чт/пт/сб/нд)</span><span style="color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">.</span></li>\r\n<li><span style="color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">Понеділок і вівторок &ndash; садиби зачинені.</span></li>\r\n</ul>', 'Музей народної архітектури та побуту у Львові - це музей під відкритим небом, де можна ознайомитись з побутом українців.', '<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">У Музеї кожен відвідувач зможе здійснити мандрівку як у часі &ndash; а заглибиться він, щонайменше, у двохсотлітню історію побутування українців, так і в просторі &ndash; всього лиш за кілька годин легким ходом &laquo;обійде&raquo; майже всю Західну Україну, побуває й на рівнині, й полонині і навіть на гірських рельєфах, ознайомиться із особливостями етнографічних регіонів чи історико-етнографічних груп: Бойківщини, Лемківщини, Гуцульщини, Буковини, Покуття, Поділля, Закарпаття, Львівщини.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">Музей народної архітектури та побуту у Львові імені Климентія Шептицького &ndash; один із найбільших музеїв просто неба у Європі. Тут відтворено 110 пам&rsquo;яток народної архітектури. Чи то хата під солом&rsquo;яною стріхою, чи комора заможного селянина, чи млин, а чи понад столітня школа &ndash; кожен об&rsquo;єкт є унікальним як із погляду зацікавленого фахівця, так і візитера, який хоче ближче пізнати матеріальну та духовну культуру українців. Мандруючи Музеєм, відвідувач потрапляє у своєрідні мікросела із садибами, господарсько-виробничими об&rsquo;єктами (олійнею, тартаком, пасікою, сукновальнею та ін.), сакральними спорудами (церквами, каплицями), колекція яких, до речі, є найбільшою з-поміж усіх світових.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">Родзинкою останніх років є й те, що скансен працює за концепцією &laquo;живого музею&raquo;: чи не на кожному об&rsquo;єкті відбуваються презентації давніх ремесел та майстеркласи. Соломоплетіння, ткацтво, витискання олії, ковальство, випікання хліба, гра на народних музичних інструментах &ndash; це лише невеличкий перелік атракцій, якими дивують відвідувачів народні майстри та берегині традицій і затишку в Музеї.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">Щорічні масові етнографічно-театральні дійства, які відбуваються у Музеї, привертають увагу великої кількості людей (львів&rsquo;ян і не тільки) та залишають незабутні враження від безпосередньої участі у різдвяних, великодніх, купальських святкуваннях, у міжнародних фестивалях та таємничих нічних екскурсіях.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">У музейних фондосховищах зберігається понад 21 тисяча експонатів &ndash; це колекції одягу і тканин, меблів, музичних інструментів, кераміки, прикрас, ікон, предметів церковної атрибутики, стародруки, що складає фундаментальну складову для організації тематичних виставок, презентацій, форумів та конференцій. У Музеї постійно діє щонайменше шість виставок, які задовольнять пізнавальний інтерес та естетичний смак будь-кого з відвідувачів.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">Музей завжди є відкритим для проведення різноманітних масових заходів (концертів, фестивалів), надає майданчики для відеозйомок, активно долучається до участі у благодійних акціях.</p>\r\n<p style="margin: 0px 0px 15px; padding: 0px; border: 0px; outline: 0px; font-size: 12px; vertical-align: baseline; background: transparent; color: #000000; font-family: Tahoma, sans-serif;">Автентична архітектура та барвисті сезонні краєвиди є привабливими для гостей у будь-яку пору року, а приязнь та професійність працівників Музею не залишать байдужим жодного відвідувача.</p>', 'museums/May2018/nDkmPkeYXPnJjozuKF2u.jpg', 'museums/May2018/IyvEqrL4AnfbQZnnAGw2.jpg', 'museums/May2018/vkNONDAugBhs9y34EwBq.jpeg', 'museums/May2018/NhqKXI1wus1OA8ZepUc9.jpg', '2018-05-04 10:38:57', '2018-05-15 06:35:54');

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
  `author_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `body` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `status` enum('ACTIVE','INACTIVE') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `pages`
--

INSERT INTO `pages` (`id`, `author_id`, `title`, `excerpt`, `body`, `image`, `slug`, `meta_description`, `meta_keywords`, `status`, `created_at`, `updated_at`) VALUES
(1, 3, 'gid', 'gids', '<p>bgbbgdb dgbdgbgb gb dgh b</p>', 'pages/April2018/aoAk7Sc3kx1Al5JRfMO4.jpg', 'gid', 'gids', 'gids', 'ACTIVE', '2018-04-26 10:03:41', '2018-04-26 10:03:41');

-- --------------------------------------------------------

--
-- Структура таблицы `parks`
--

CREATE TABLE `parks` (
  `id` int(10) UNSIGNED NOT NULL,
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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `parks`
--

INSERT INTO `parks` (`id`, `name`, `slug`, `address`, `title`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Парк им. Ивана Франка (бывший парк Костюшко)', 'park-im-ivana-franka', 'вул. Університетська', 'Маленькое путешествие дорожками парка Франка во Львове — аллея в сказку ближе, чем может казаться…', '<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Прогуливаясь вьющимися дорожками&nbsp;<strong style="box-sizing: border-box;">парка Франка</strong>&nbsp;в центре&nbsp;<strong style="box-sizing: border-box;">Львова</strong>, трудно себе представить, что еще несколько веков назад здесь были обычные городские поля. Основу&nbsp;<strong style="box-sizing: border-box;">парка</strong>&nbsp;заложил львовский мещанин Ян Шольц-Вольфович, продолжил его обустройство в итальянском стиле &mdash; Антонио Массари (посол Венецианской республики во Львове).</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">В дальнейшем&nbsp;<strong style="box-sizing: border-box;">парком</strong>&nbsp;занимался орден иезуитов, поскольку в то время земля перешла в их владения, а после&nbsp;&mdash; австрийское правительство (здание нынешнего университета было местом его расположения). В тот период&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;переживал не лучшие времена, так как благоустройству не оказывали должного внимания. Но предприимчивость Яна Гехта подарила этой местности второе дыхание&nbsp;&mdash; в помещении университета находилось казино, а&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;обустроили во французком стиле.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Представители светского общества часто приходили сюда на модные спектакли в летний театр, устраивали шумные забавы (фестивали). Карусели и беседки для посиделок, одна из которых до сих пор сохранилась в сердце&nbsp;<strong style="box-sizing: border-box;">парка</strong>, фейерверки, огненные шоу&nbsp;&mdash; все эти аттракционы собирали толпы зрителей.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">В середине XIX века изменили зеленые насаждения. Эти деревья до сих пор защищают от жары поклонников отдыха на свежем воздухе. Мало кто знает, что среди них есть настоящие старожилы&nbsp;&mdash; три огромных дуба, которым уже более трех столетий.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">За все время существования&nbsp;<strong style="box-sizing: border-box;">парк</strong>&nbsp;называли по-разному: Иезуитский город, парк Костюшка, теперь&nbsp;&mdash;&nbsp;<strong style="box-sizing: border-box;">парк Франка</strong>. Многие известные деятели и творческие личности упоминают его в своих записях, как любимое место прогулок.</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">&nbsp;</div>\r\n<div style="box-sizing: border-box; color: #777777; font-family: \'Open Sans\', Arial, sans-serif;" align="justify">Современное состояние и благоустройство этого места радует и жителей и гостей&nbsp;<strong style="box-sizing: border-box;">Львова</strong>. Очень популярной среди львовян является главная аллея, которая вечером превращается будто в сказочную дорогу, освещенную двумя полосами по-львовски задумчевых фонарей. Кого здесь только не встретишь &mdash; и людей пожилого возраста, играющих свои бесконечные партии в шахматы, и совсем маленьких детей, и влюбленные пары, а также тех, кто умеет уединяться среди толпы и суеты.</div>', 'parks/May2018/SIuZR7cQFuBflgMy1cKf.jpg', 'parks/May2018/kBVgqRaPultSfoLxLxGG.jpg', 'parks/May2018/j2Nm6lvJs5fPz62QBbVS.jpg', 'parks/May2018/CtONEFnXRrsAVNk80f09.jpg', '2018-05-07 11:20:00', '2018-05-15 09:19:57');

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
(66, 'browse_developments', 'developments', '2018-04-19 10:52:01', '2018-04-19 10:52:01', NULL),
(67, 'read_developments', 'developments', '2018-04-19 10:52:01', '2018-04-19 10:52:01', NULL),
(68, 'edit_developments', 'developments', '2018-04-19 10:52:01', '2018-04-19 10:52:01', NULL),
(69, 'add_developments', 'developments', '2018-04-19 10:52:01', '2018-04-19 10:52:01', NULL),
(70, 'delete_developments', 'developments', '2018-04-19 10:52:01', '2018-04-19 10:52:01', NULL),
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
(91, 'browse_teatrs', 'teatrs', '2018-05-10 11:27:47', '2018-05-10 11:27:47', NULL),
(92, 'read_teatrs', 'teatrs', '2018-05-10 11:27:47', '2018-05-10 11:27:47', NULL),
(93, 'edit_teatrs', 'teatrs', '2018-05-10 11:27:47', '2018-05-10 11:27:47', NULL),
(94, 'add_teatrs', 'teatrs', '2018-05-10 11:27:47', '2018-05-10 11:27:47', NULL),
(95, 'delete_teatrs', 'teatrs', '2018-05-10 11:27:47', '2018-05-10 11:27:47', NULL),
(96, 'browse_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(97, 'read_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(98, 'edit_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(99, 'add_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL),
(100, 'delete_around_lvivs', 'around_lvivs', '2018-05-11 06:01:16', '2018-05-11 06:01:16', NULL);

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
(66, 1),
(66, 3),
(66, 5),
(67, 1),
(67, 3),
(67, 5),
(68, 1),
(68, 3),
(68, 5),
(69, 1),
(69, 3),
(69, 5),
(70, 1),
(70, 3),
(70, 5),
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
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1);

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

INSERT INTO `public_places` (`id`, `name`, `slug`, `address`, `title`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Львівський Оперний театр', 'l-vivs-kij-opernij-teatr', 'проспект Свободи, 28', 'Львівський Оперний театр – архітектурна перлина Львова у стилі неоренесансу (1901 рік), один з найгарніших театрів Європи.', '<h4><span style="box-sizing: border-box; outline: none; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: inherit; color: #000000; font-family: Raleway, sans-serif; font-size: 12pt;">&nbsp;<span style="box-sizing: border-box; outline: none; -webkit-tap-highlight-color: transparent; -webkit-font-smoothing: inherit; font-size: 10pt;">&nbsp;</span></span><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Збудований на початку минулого століття за проектом архітектора Зиґмунта Ґорґолевського Великий театр у Львові порівнювали з Паризькою та Віденською оперою. Стоячи перед величним фасадом цієї фантастичної споруди відчуваєш всепоглинаючу потугу мистецтва, його вічність у контрасті зі швидкоплинністю людського життя. Це споруда, у якій можна знайти різні архітектурні стилі європейських країн, втілені з пишномовною імпозантністю.</span></h4>\r\n<h4><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Форми фасаду дуже складні і різноманітні: це колони, балюстради, ніші, насичені алегоричними скульптурними постатями. Над головним карнизом фасаду височать статуї восьми муз, над ними горельєфна десятифігурна композиція &laquo;Радощі і страждання життя&raquo;. Фронтон угорі завершується скульптурною тріадою крилатих бронзових постатей Генія драми і комедії, трагедії і у центрі &ndash; Слави, яка тримає золоту пальмову гілку. Ці скульптури творили видатні львівські митці Попель, Баронч, Війтович.</span><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Інтер&rsquo;єр львівської опери вражає не менше, ніж зовнішній вигляд.&nbsp;Внутрішнє убранство споруди оздоблене позолотою (на неї витратили декілька кілограмів золота), різнокольоровим мармуром, декоративними розписами і скульптурою. Чотириярусний глядацький зал має форму ліри і вміщує понад тисячу людей. Окрасою сцени є декоративна завіса &laquo;Парнас&raquo; (1900 рік) відомого у Європі живописця Генрика Семирадського &ndash; алегоричне трактування сенсу людського життя у постатях Парнасу.</span><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><br style="color: #000000; font-family: Tahoma; font-size: 12px;" /><span style="color: #000000; font-family: Tahoma; font-size: 12px;">Зал львівського оперного театру відзначається чудовою акустикою. Тут можна побачити виступи славетних оперних і балетних колективів України та гастролерів з інших країн. У львівській опері проводять нещодавно відроджені Віденські бали.</span></h4>', 'public-places/May2018/ScNk8xxKC3TYxsnZnzBE.jpeg', 'public-places/May2018/Dg5XjwQqcLob52X23ozo.jpg', 'public-places/May2018/bkwBnGEcHRputB2U5i87.jpg', 'public-places/May2018/71QKtc898eC98UUb7fyi.jpg', '2018-05-07 10:16:00', '2018-05-15 11:56:40');

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
-- Структура таблицы `teatrs`
--

CREATE TABLE `teatrs` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `slug` text NOT NULL,
  `type` enum('Театр','Філармонії') NOT NULL,
  `address` text NOT NULL,
  `number` text NOT NULL,
  `number2` text NOT NULL,
  `email` text NOT NULL,
  `site` text NOT NULL,
  `schedule` text NOT NULL,
  `title` text NOT NULL,
  `post` text NOT NULL,
  `banner_photo` text NOT NULL,
  `photo1` text NOT NULL,
  `photo2` text,
  `photo3` text,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `teatrs`
--

INSERT INTO `teatrs` (`id`, `name`, `slug`, `type`, `address`, `number`, `number2`, `email`, `site`, `schedule`, `title`, `post`, `banner_photo`, `photo1`, `photo2`, `photo3`, `created_at`, `updated_at`) VALUES
(1, 'Львівський академічний театр імені Леся Курбаса', 'l-vivs-kij-akademichnij-teatr-imeni-lesya-kurbasa', 'Театр', 'вул. Курбаса, 3, Львів', '(032) 272 92 04', '(032) 272 48 24', 'kurbas_theatre@yahoo. com', 'www. kurbas. lviv. ua', '<ul style="box-sizing: border-box; padding: 0px; margin: 0px 10px; color: #352a33; font-family: SourceSansPro; font-size: medium;">\r\n<li style="box-sizing: border-box; list-style-type: none;"><span style="box-sizing: border-box; color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;">9.00 &ndash; 21.00</span></li>\r\n<li style="box-sizing: border-box; list-style-type: none;"><span style="box-sizing: border-box; color: #000000; font-family: Tahoma, sans-serif; font-size: 11px;"> (пн/вт/ср/чт/пт/сб/нд).</span></li>\r\n<li style="box-sizing: border-box; list-style-type: none;"></li>\r\n</ul>', 'Львівський театр імені Леся Курбаса створений Володимиром Кучинським та групою молодих акторів у 1988. Театр завжди вирізнявся високоінтелектуальним і неповторним репертуаром. Зокрема, широкого визнання здобули його сценічні адаптації таких творів, як філософські діалоги Г. Сковороди «Благодарний Еродій» та «Наркіс»; «Злочин і кара» Ф. Достоєвського (вистави «Сни», «Забави для Фауста»); «Бенкет» Платона (вистави «Хвала Еросу» та «Silenius Alcibiadis»); поезії В. Стуса (драматична поема «Марко Проклятий, або Східна легенда»).', '<h4 style="text-align: left;">Театр імені Леся Курбаса &mdash; унікальний методологічний центр, який опанував і розробив цикл театральних методик та тренінгів акторської психофізики, пластики, голосу, провів серію спільних проектів з Workcenter Єжи Ґротовського (Італія), Школою драматичного мистецтва Анатолія Васільєва (Росія), Осередком театральних практик Gardzienice (Польща), Саратозьким міжнародним театральним центром (США). У 2006 році за творчі здобутки Театр імені Леся Курбаса було нагороджено найвищою українською нагородою в галузі культури &mdash; Національною премією імені Тараса Шевченка, а у 2007 році театру було присвоєно статус академічного.</h4>\r\n<h4 style="text-align: left;">З 1994 року Театр імені Курбаса проводить свій власний міжнародний театральний фестиваль &laquo;Театр: Метод і Практика&raquo;. Веде активну міжнародну діяльність, є членом міжнародної театральної мережі IETM.<br />Окрім того, Театр імені. Курбаса є унікальним для України театром-школою, що виховала не одне покоління акторів та режисерів спершу в Студії театру, а з 2001 року на базі Львівського Національного університету імені Івана Франка.</h4>\r\n<h4 style="text-align: left;">Театр розташований в будинку колишнього &laquo;Casino de Paris&raquo;, який у 1909 році збудовано за проектом архітекторів З. Федорського та С. Мацудзинського, за адресою вулиця Курбаса 3 (колишня вул.. Рейтана, 7). В міжвоєнні часи в будинку знаходився кінотеатр, в радянські часи він належав до Будинку народної творчості. З кінця 1987 року приміщення було віддане в оренду Театру імені Леся Курбаса.</h4>', 'teatrs/May2018/XXikoEfFzG8cT445wJyq.jpg', 'teatrs/May2018/IKbOR7Igs8e6CpFgZIIG.jpeg', 'teatrs/May2018/8JJ5TJI4BNCmvOCKQhc3.jpeg', 'teatrs/May2018/toT1c79JALFquvpJkB4X.jpeg', '2018-05-11 10:56:00', '2018-05-15 11:37:33');

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
(4, 1, 'zayander', 'igoritkron@gmail.com', 'users/default.png', '$2y$10$GP5wT3bfHJr3HrUy35.zFOaSLIKvc5nOLcXQPMQ/A/khr6VqXBjae', 'nCcfdez3HVXHpsLreiObLX8XKNjoIQXWYnx1zMkTDnKWYVb0tnVqTLJ7WwzH', '2018-04-10 07:33:25', '2018-04-10 07:33:25'),
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
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_parent_id_foreign` (`parent_id`);

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
-- Индексы таблицы `teatrs`
--
ALTER TABLE `teatrs`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;
--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT для таблицы `developments`
--
ALTER TABLE `developments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `excursions`
--
ALTER TABLE `excursions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
-- AUTO_INCREMENT для таблицы `owners`
--
ALTER TABLE `owners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT для таблицы `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `parks`
--
ALTER TABLE `parks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
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
-- AUTO_INCREMENT для таблицы `teatrs`
--
ALTER TABLE `teatrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
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
-- Ограничения внешнего ключа таблицы `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

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
