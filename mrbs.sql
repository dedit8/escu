-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 18-10-2022 a las 15:45:35
-- Versión del servidor: 8.0.27
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mrbs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_area`
--

DROP TABLE IF EXISTS `mrbs_area`;
CREATE TABLE IF NOT EXISTS `mrbs_area` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint NOT NULL DEFAULT '0',
  `area_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_key` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `timezone` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `area_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `resolution` int DEFAULT NULL,
  `default_duration` int DEFAULT NULL,
  `default_duration_all_day` tinyint NOT NULL DEFAULT '0',
  `morningstarts` int DEFAULT NULL,
  `morningstarts_minutes` int DEFAULT NULL,
  `eveningends` int DEFAULT NULL,
  `eveningends_minutes` int DEFAULT NULL,
  `private_enabled` tinyint DEFAULT NULL,
  `private_default` tinyint DEFAULT NULL,
  `private_mandatory` tinyint DEFAULT NULL,
  `private_override` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_create_ahead_enabled` tinyint DEFAULT NULL,
  `min_create_ahead_secs` int DEFAULT NULL,
  `max_create_ahead_enabled` tinyint DEFAULT NULL,
  `max_create_ahead_secs` int DEFAULT NULL,
  `min_delete_ahead_enabled` tinyint DEFAULT NULL,
  `min_delete_ahead_secs` int DEFAULT NULL,
  `max_delete_ahead_enabled` tinyint DEFAULT NULL,
  `max_delete_ahead_secs` int DEFAULT NULL,
  `max_per_day_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_day` int NOT NULL DEFAULT '0',
  `max_per_week_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_week` int NOT NULL DEFAULT '0',
  `max_per_month_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_month` int NOT NULL DEFAULT '0',
  `max_per_year_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_year` int NOT NULL DEFAULT '0',
  `max_per_future_enabled` tinyint NOT NULL DEFAULT '0',
  `max_per_future` int NOT NULL DEFAULT '0',
  `max_secs_per_day_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_day` int NOT NULL DEFAULT '0',
  `max_secs_per_week_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_week` int NOT NULL DEFAULT '0',
  `max_secs_per_month_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_month` int NOT NULL DEFAULT '0',
  `max_secs_per_year_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_year` int NOT NULL DEFAULT '0',
  `max_secs_per_future_enabled` tinyint NOT NULL DEFAULT '0',
  `max_secs_per_future` int NOT NULL DEFAULT '0',
  `max_duration_enabled` tinyint NOT NULL DEFAULT '0',
  `max_duration_secs` int NOT NULL DEFAULT '0',
  `max_duration_periods` int NOT NULL DEFAULT '0',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `approval_enabled` tinyint DEFAULT NULL,
  `reminders_enabled` tinyint DEFAULT NULL,
  `enable_periods` tinyint DEFAULT NULL,
  `periods` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `confirmation_enabled` tinyint DEFAULT NULL,
  `confirmed_default` tinyint DEFAULT NULL,
  `times_along_top` tinyint NOT NULL DEFAULT '0',
  `default_type` char(1) NOT NULL DEFAULT 'E',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_area_name` (`area_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_area`
--

INSERT INTO `mrbs_area` (`id`, `disabled`, `area_name`, `sort_key`, `timezone`, `area_admin_email`, `resolution`, `default_duration`, `default_duration_all_day`, `morningstarts`, `morningstarts_minutes`, `eveningends`, `eveningends_minutes`, `private_enabled`, `private_default`, `private_mandatory`, `private_override`, `min_create_ahead_enabled`, `min_create_ahead_secs`, `max_create_ahead_enabled`, `max_create_ahead_secs`, `min_delete_ahead_enabled`, `min_delete_ahead_secs`, `max_delete_ahead_enabled`, `max_delete_ahead_secs`, `max_per_day_enabled`, `max_per_day`, `max_per_week_enabled`, `max_per_week`, `max_per_month_enabled`, `max_per_month`, `max_per_year_enabled`, `max_per_year`, `max_per_future_enabled`, `max_per_future`, `max_secs_per_day_enabled`, `max_secs_per_day`, `max_secs_per_week_enabled`, `max_secs_per_week`, `max_secs_per_month_enabled`, `max_secs_per_month`, `max_secs_per_year_enabled`, `max_secs_per_year`, `max_secs_per_future_enabled`, `max_secs_per_future`, `max_duration_enabled`, `max_duration_secs`, `max_duration_periods`, `custom_html`, `approval_enabled`, `reminders_enabled`, `enable_periods`, `periods`, `confirmation_enabled`, `confirmed_default`, `times_along_top`, `default_type`) VALUES
(1, 0, 'districto e', 'districto e', 'America/Argentina/Cordoba', '', 1800, 3600, 0, 8, 0, 11, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 1, '[\"8:00\",\"8:30\",\"9:00\",\"9:30\",\"10:00\",\"10:30\",\"11:00\",\"11:30\",\"14:00\",\"14:30\",\"15:00\",\"15:30\",\"16:00\",\"16:30\",\"17:00\",\"17:30\",\"18:00\",\"18:30\",\"19:00\",\"19:30\",\"20:00\",\"20.30 \"]', 1, 1, 0, 'I'),
(2, 0, 'proyector', 'proyector', 'America/Argentina/Cordoba', '', 1800, 3600, 0, 7, 0, 18, 30, 0, 0, 0, 'none', 0, 0, 0, 604800, 0, 0, 0, 604800, 0, 1, 0, 5, 0, 10, 0, 50, 0, 100, 0, 7200, 0, 36000, 0, 90000, 0, 360000, 0, 360000, 0, 7200, 2, NULL, 0, 1, 1, '[\"8:00\",\"8:30\",\"9:00\",\"9:30\",\"10:00\",\"10:30\",\"11:00\",\"11:30\",\"14:00\",\"14:30\",\"15:00\",\"15:30\",\"16:00\",\"16:30\",\"17:00\",\"17:30\",\"18:00\",\"18:30\",\"19:00\",\"19:30\",\"20:00\",\"20.30\"]', 1, 1, 0, 'I');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_entry`
--

DROP TABLE IF EXISTS `mrbs_entry`;
CREATE TABLE IF NOT EXISTS `mrbs_entry` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `entry_type` int NOT NULL DEFAULT '0',
  `repeat_id` int DEFAULT NULL,
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  `ical_recur_id` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_registration` tinyint NOT NULL DEFAULT '0',
  `registrant_limit` int NOT NULL DEFAULT '0',
  `registrant_limit_enabled` tinyint NOT NULL DEFAULT '1',
  `registration_opens` int NOT NULL DEFAULT '1209600' COMMENT 'Seconds before the start time',
  `registration_opens_enabled` tinyint NOT NULL DEFAULT '0',
  `registration_closes` int NOT NULL DEFAULT '0' COMMENT 'Seconds before the start_time',
  `registration_closes_enabled` tinyint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `repeat_id` (`repeat_id`),
  KEY `idxStartTime` (`start_time`),
  KEY `idxEndTime` (`end_time`),
  KEY `idxRoomStartEnd` (`room_id`,`start_time`,`end_time`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_entry`
--

INSERT INTO `mrbs_entry` (`id`, `start_time`, `end_time`, `entry_type`, `repeat_id`, `room_id`, `timestamp`, `create_by`, `modified_by`, `name`, `type`, `description`, `status`, `reminded`, `info_time`, `info_user`, `info_text`, `ical_uid`, `ical_sequence`, `ical_recur_id`, `allow_registration`, `registrant_limit`, `registrant_limit_enabled`, `registration_opens`, `registration_opens_enabled`, `registration_closes`, `registration_closes_enabled`) VALUES
(1, 1665831600, 1665838800, 0, NULL, 1, '2022-10-15 13:12:07', 'dedit8', '', 'compu', 'I', 'dd', 0, NULL, NULL, NULL, NULL, 'MRBS-634ab1a78f7b9-05535711@localhost', 0, NULL, 0, 0, 1, 1209600, 0, 0, 0),
(2, 1665831600, 1665835200, 0, NULL, 2, '2022-10-15 13:12:36', 'dedit8', '', 'ww', 'I', 'dd', 0, NULL, NULL, NULL, NULL, 'MRBS-634ab1c4eb043-5bdb65f0@localhost', 0, NULL, 0, 0, 1, 1209600, 0, 0, 0),
(3, 1665840600, 1665844200, 0, NULL, 1, '2022-10-15 13:18:46', 'dedit8', '', 'Guillermo', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-634ab33605021-9165075e@localhost', 0, NULL, 0, 0, 1, 1209600, 0, 0, 0),
(14, 1665846420, 1665846480, 0, NULL, 5, '2022-10-15 13:58:12', 'dedit8', 'dedit8', 'www', 'I', '', 0, NULL, NULL, NULL, NULL, 'MRBS-634aba02e1921-1a079395@localhost', 4, NULL, 0, 0, 0, 1209600, 0, 0, 0),
(16, 1665327840, 1665328080, 0, NULL, 1, '2022-10-15 14:01:15', 'dedit8', 'dedit8', 'programasion', 'I', 'Nombre de quien realiza la reserva[]\r\nNúmero de teléfono[]\r\nSecretaría o área que reserva[]\r\nNombre del Docente[]', 0, NULL, NULL, NULL, NULL, 'MRBS-634abd0980e17-0d421a49@localhost', 1, '', 0, 0, 1, 1209600, 0, 0, 0),
(18, 1665846000, 1665846480, 0, NULL, 1, '2022-10-15 14:10:48', 'dedit8', 'dedit8', 'refrigerasion', 'I', 'Nombre de quien realiza la reserva[guillermo]\r\nNúmero de teléfono[3462368526]\r\nSecretaría o área que reserva[munisipalidad]\r\nNombre del Docente[juan]', 0, NULL, NULL, NULL, NULL, 'MRBS-634abf3e496c6-1c591bba@localhost', 1, '', 0, 0, 1, 1209600, 0, 0, 0),
(19, 1665846720, 1665846780, 0, NULL, 3, '2022-10-15 17:51:01', 'dedit8', '', 'wds', 'I', 'Nombre de quien realiza la reserva[]\r\nNúmero de teléfono[]\r\nSecretaría o área que reserva[]\r\nNombre del Docente[]', 0, NULL, NULL, NULL, NULL, 'MRBS-634af305eef45-14a92ecc@localhost', 0, NULL, 0, 0, 1, 1209600, 0, 0, 0),
(20, 1666105260, 1666105500, 0, NULL, 1, '2022-10-18 15:36:39', 'dedit8', '', 'hola', 'I', 'Nombre de quien realiza la reserva[]\r\nNúmero de teléfono[]\r\nSecretaría o área que reserva[]\r\nNombre del Docente[]', 0, NULL, NULL, NULL, NULL, 'MRBS-634ec80798e5b-a6e7bfc1@localhost', 0, NULL, 0, 0, 1, 1209600, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_participants`
--

DROP TABLE IF EXISTS `mrbs_participants`;
CREATE TABLE IF NOT EXISTS `mrbs_participants` (
  `id` int NOT NULL AUTO_INCREMENT,
  `entry_id` int NOT NULL,
  `username` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `create_by` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_entryid_username` (`entry_id`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_repeat`
--

DROP TABLE IF EXISTS `mrbs_repeat`;
CREATE TABLE IF NOT EXISTS `mrbs_repeat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `start_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `end_time` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_type` int NOT NULL DEFAULT '0',
  `end_date` int NOT NULL DEFAULT '0' COMMENT 'Unix timestamp',
  `rep_opt` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `room_id` int NOT NULL DEFAULT '1',
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `create_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `modified_by` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` char(1) NOT NULL DEFAULT 'E',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `rep_interval` smallint NOT NULL DEFAULT '1',
  `month_absolute` smallint DEFAULT NULL,
  `month_relative` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `reminded` int DEFAULT NULL,
  `info_time` int DEFAULT NULL,
  `info_user` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info_text` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ical_uid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ical_sequence` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `room_id` (`room_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_room`
--

DROP TABLE IF EXISTS `mrbs_room`;
CREATE TABLE IF NOT EXISTS `mrbs_room` (
  `id` int NOT NULL AUTO_INCREMENT,
  `disabled` tinyint NOT NULL DEFAULT '0',
  `area_id` int NOT NULL DEFAULT '0',
  `room_name` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `sort_key` varchar(55) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `capacity` int NOT NULL DEFAULT '0',
  `room_admin_email` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `invalid_types` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'JSON encoded',
  `custom_html` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_room_name` (`area_id`,`room_name`),
  KEY `idxSortKey` (`sort_key`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_room`
--

INSERT INTO `mrbs_room` (`id`, `disabled`, `area_id`, `room_name`, `sort_key`, `description`, `capacity`, `room_admin_email`, `invalid_types`, `custom_html`) VALUES
(1, 0, 1, 'aula 1 (50 persona, mesas', 'aula 1 (50 persona, mesas', '50 persona, mesas taller', 50, '', NULL, NULL),
(2, 0, 1, 'aula 4 (30 persona, pupitres)', 'aula 4 (30 persona, pupitres)', '30 persona, pupitres', 30, '', NULL, NULL),
(3, 0, 1, 'aula 5 (30 persona, pupitres)', 'aula 5 (30 persona, pupitres)', '30 persona, pupitres', 30, '', NULL, NULL),
(4, 0, 1, 'aula 6 (30 persona, pupitres)', 'aula 6 (30 persona, pupitres)', '30 persona, pupitres', 30, '', NULL, NULL),
(5, 0, 1, 'aula 7 sum (50 persona, mesas taller)', 'aula 7 sum (50 persona, mesas taller)', '50 persona, mesas taller', 50, '', NULL, NULL),
(6, 0, 1, 'aula 8 informática (10 puestos)', 'aula 8 informática (10 puestos)', 'informática 10 puestos', 10, '', NULL, NULL),
(7, 0, 2, 'proyector 1', 'proyector 1', '', 0, '', NULL, NULL),
(8, 0, 2, 'proyector 2', 'proyector 2', '', 0, '', NULL, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_sessions`
--

DROP TABLE IF EXISTS `mrbs_sessions`;
CREATE TABLE IF NOT EXISTS `mrbs_sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access` int UNSIGNED DEFAULT NULL,
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `idxAccess` (`access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_sessions`
--

INSERT INTO `mrbs_sessions` (`id`, `access`, `data`) VALUES
('pk6eg7jdsgftjsvn4fu19hr5ib', 1666107452, 'csrf_token|s:64:\"1228b009b77ddf8cfbeed0dd56308155c0bbcdd8464c18b12647cc698f81929c\";user|O:9:\"MRBS\\User\":4:{s:8:\"username\";s:6:\"dedit8\";s:12:\"display_name\";s:6:\"dedit8\";s:5:\"email\";s:6:\"dedit8\";s:5:\"level\";i:2;}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_users`
--

DROP TABLE IF EXISTS `mrbs_users`;
CREATE TABLE IF NOT EXISTS `mrbs_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `level` smallint NOT NULL DEFAULT '0',
  `name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(75) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `last_login` int NOT NULL DEFAULT '0',
  `reset_key_hash` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reset_key_expiry` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_users`
--

INSERT INTO `mrbs_users` (`id`, `level`, `name`, `display_name`, `password_hash`, `email`, `timestamp`, `last_login`, `reset_key_hash`, `reset_key_expiry`) VALUES
(1, 2, 'dedit8', 'dedit8', '3315', 'guillermojesus15@gmail.com', '2022-10-15 13:03:39', 0, '$2y$10$LDsnVnQEOT6pfukKBgF7euAGOLuQQO3Ng.TZRLQKcBXbGPBNgiqlG', 1665924971);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_variables`
--

DROP TABLE IF EXISTS `mrbs_variables`;
CREATE TABLE IF NOT EXISTS `mrbs_variables` (
  `id` int NOT NULL AUTO_INCREMENT,
  `variable_name` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `variable_content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_variable_name` (`variable_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `mrbs_variables`
--

INSERT INTO `mrbs_variables` (`id`, `variable_name`, `variable_content`) VALUES
(1, 'db_version', '82'),
(2, 'local_db_version', '1');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mrbs_zoneinfo`
--

DROP TABLE IF EXISTS `mrbs_zoneinfo`;
CREATE TABLE IF NOT EXISTS `mrbs_zoneinfo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `timezone` varchar(127) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `outlook_compatible` tinyint UNSIGNED NOT NULL DEFAULT '0',
  `vtimezone` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_updated` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uq_timezone` (`timezone`,`outlook_compatible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `mrbs_entry`
--
ALTER TABLE `mrbs_entry`
  ADD CONSTRAINT `mrbs_entry_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE,
  ADD CONSTRAINT `mrbs_entry_ibfk_2` FOREIGN KEY (`repeat_id`) REFERENCES `mrbs_repeat` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mrbs_participants`
--
ALTER TABLE `mrbs_participants`
  ADD CONSTRAINT `mrbs_participants_ibfk_1` FOREIGN KEY (`entry_id`) REFERENCES `mrbs_entry` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `mrbs_repeat`
--
ALTER TABLE `mrbs_repeat`
  ADD CONSTRAINT `mrbs_repeat_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `mrbs_room` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

--
-- Filtros para la tabla `mrbs_room`
--
ALTER TABLE `mrbs_room`
  ADD CONSTRAINT `mrbs_room_ibfk_1` FOREIGN KEY (`area_id`) REFERENCES `mrbs_area` (`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
