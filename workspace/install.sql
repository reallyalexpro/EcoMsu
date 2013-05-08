
-- *** STRUCTURE:`tbl_fields_author` ***
DROP TABLE IF EXISTS`tbl_fields_author`;
CREATE TABLE`tbl_fields_author` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `default_to_current_user` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL,
  `author_types` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_author` ***

-- *** STRUCTURE:`tbl_fields_checkbox` ***
DROP TABLE IF EXISTS`tbl_fields_checkbox`;
CREATE TABLE`tbl_fields_checkbox` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `default_state` enum('on','off') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'on',
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_checkbox` ***
INSERT INTO`tbl_fields_checkbox` (`id`, `field_id`, `default_state`, `description`) VALUES (35, 5, 'off', NULL);

-- *** STRUCTURE:`tbl_fields_date` ***
DROP TABLE IF EXISTS`tbl_fields_date`;
CREATE TABLE`tbl_fields_date` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `pre_populate` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_date` ***

-- *** STRUCTURE:`tbl_fields_datetime` ***
DROP TABLE IF EXISTS`tbl_fields_datetime`;
CREATE TABLE`tbl_fields_datetime` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `prepopulate` tinyint(1) DEFAULT '1',
  `time` tinyint(1) DEFAULT '1',
  `multiple` tinyint(1) DEFAULT '1',
  `range` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_datetime` ***
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (24, 28, 1, 1, 0, 0);
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (43, 52, 0, 0, 0, 0);
INSERT INTO`tbl_fields_datetime` (`id`, `field_id`, `prepopulate`, `time`, `multiple`, `range`) VALUES (42, 60, 0, 0, 0, 0);

-- *** STRUCTURE:`tbl_fields_input` ***
DROP TABLE IF EXISTS`tbl_fields_input`;
CREATE TABLE`tbl_fields_input` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=136 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_input` ***
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (30, 6, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (134, 27, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (133, 25, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (39, 34, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (135, 41, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (131, 51, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (130, 50, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (129, 49, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (127, 59, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (126, 58, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (125, 57, NULL);
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (128, 61, '/^-?(?:\\d+(?:\\.\\d+)?|\\.\\d+)$/i');
INSERT INTO`tbl_fields_input` (`id`, `field_id`, `validator`) VALUES (132, 62, NULL);

-- *** STRUCTURE:`tbl_fields_order_entries` ***
DROP TABLE IF EXISTS`tbl_fields_order_entries`;
CREATE TABLE`tbl_fields_order_entries` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `force_sort` enum('yes','no') DEFAULT 'no',
  `hide` enum('yes','no') DEFAULT 'no',
  PRIMARY KEY (`id`),
  UNIQUE KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_fields_order_entries` ***
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (2, 43, NULL, 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (8, 67, NULL, 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (7, 69, NULL, 'yes');
INSERT INTO`tbl_fields_order_entries` (`id`, `field_id`, `force_sort`, `hide`) VALUES (9, 71, NULL, 'yes');

-- *** STRUCTURE:`tbl_fields_select` ***
DROP TABLE IF EXISTS`tbl_fields_select`;
CREATE TABLE`tbl_fields_select` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `sort_options` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `static_options` text COLLATE utf8_unicode_ci,
  `dynamic_options` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_select` ***

-- *** STRUCTURE:`tbl_fields_selectbox_link` ***
DROP TABLE IF EXISTS`tbl_fields_selectbox_link`;
CREATE TABLE`tbl_fields_selectbox_link` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `allow_multiple_selection` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  `show_association` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'yes',
  `related_field_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `limit` int(4) unsigned NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_selectbox_link` ***
INSERT INTO`tbl_fields_selectbox_link` (`id`, `field_id`, `allow_multiple_selection`, `show_association`, `related_field_id`, `limit`) VALUES (35, 4, 'no', 'yes', 6, 20);

-- *** STRUCTURE:`tbl_fields_subsectionmanager` ***
DROP TABLE IF EXISTS`tbl_fields_subsectionmanager`;
CREATE TABLE`tbl_fields_subsectionmanager` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `filter_tags` text COLLATE utf8_unicode_ci,
  `caption` text COLLATE utf8_unicode_ci,
  `droptext` text COLLATE utf8_unicode_ci,
  `create` tinyint(1) DEFAULT '1',
  `remove` tinyint(1) DEFAULT '1',
  `allow_multiple` tinyint(1) DEFAULT '1',
  `edit` tinyint(1) DEFAULT '1',
  `sort` tinyint(1) DEFAULT '1',
  `drop` tinyint(1) DEFAULT '1',
  `show_search` tinyint(1) DEFAULT '1',
  `show_preview` tinyint(1) DEFAULT '0',
  `recursion_levels` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_subsectionmanager` ***
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (9, 24, 5, NULL, '{$article}<br /> <em>{$image}</em>', NULL, 1, 1, 1, 1, 1, 0, 0, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (22, 33, 5, NULL, '{$image}', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (23, 37, 8, NULL, '{$name}', NULL, 1, 1, 1, 1, 1, 1, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (34, 40, 5, NULL, '{$image}', NULL, 1, 0, 0, 1, 0, 0, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (33, 66, 15, NULL, '{$photo}', NULL, 1, 0, 0, 1, 0, 0, 1, 1, 0);
INSERT INTO`tbl_fields_subsectionmanager` (`id`, `field_id`, `subsection_id`, `filter_tags`, `caption`, `droptext`, `create`, `remove`, `allow_multiple`, `edit`, `sort`, `drop`, `show_search`, `show_preview`, `recursion_levels`) VALUES (32, 68, 15, NULL, '{$photo}', NULL, 1, 0, 0, 1, 0, 0, 1, 1, 0);

-- *** STRUCTURE:`tbl_fields_subsectiontabs` ***
DROP TABLE IF EXISTS`tbl_fields_subsectiontabs`;
CREATE TABLE`tbl_fields_subsectiontabs` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `subsection_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `static_tabs` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_subsectiontabs` ***

-- *** STRUCTURE:`tbl_fields_taglist` ***
DROP TABLE IF EXISTS`tbl_fields_taglist`;
CREATE TABLE`tbl_fields_taglist` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pre_populate_source` varchar(15) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`),
  KEY `pre_populate_source` (`pre_populate_source`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_taglist` ***

-- *** STRUCTURE:`tbl_fields_textarea` ***
DROP TABLE IF EXISTS`tbl_fields_textarea`;
CREATE TABLE`tbl_fields_textarea` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `formatter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(3) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=77 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_textarea` ***
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (54, 2, 'ckeditor', 20);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (45, 18, NULL, 9);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (76, 26, 'ckeditor', 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (57, 38, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (58, 39, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (53, 42, 'ckeditor', 4);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (62, 48, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (74, 63, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (73, 64, NULL, 15);
INSERT INTO`tbl_fields_textarea` (`id`, `field_id`, `formatter`, `size`) VALUES (75, 70, 'ckeditor', 15);

-- *** STRUCTURE:`tbl_fields_uniqueinput` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueinput`;
CREATE TABLE`tbl_fields_uniqueinput` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `validator` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `auto_unique` enum('yes','no') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueinput` ***
INSERT INTO`tbl_fields_uniqueinput` (`id`, `field_id`, `validator`, `auto_unique`) VALUES (36, 30, NULL, 'yes');

-- *** STRUCTURE:`tbl_fields_uniqueupload` ***
DROP TABLE IF EXISTS`tbl_fields_uniqueupload`;
CREATE TABLE`tbl_fields_uniqueupload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_uniqueupload` ***
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (8, 29, '/workspace/uploads', '/\\.(?:bmp|gif|jpe?g|png)$/i');
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (12, 35, '/workspace/uploads/files', NULL);
INSERT INTO`tbl_fields_uniqueupload` (`id`, `field_id`, `destination`, `validator`) VALUES (13, 65, '/workspace/uploads/photos', '/\\.(?:bmp|gif|jpe?g|png)$/i');

-- *** STRUCTURE:`tbl_fields_upload` ***
DROP TABLE IF EXISTS`tbl_fields_upload`;
CREATE TABLE`tbl_fields_upload` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `field_id` int(11) unsigned NOT NULL,
  `destination` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `validator` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `field_id` (`field_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_fields_upload` ***

-- *** STRUCTURE:`tbl_entries_data_18` ***
DROP TABLE IF EXISTS`tbl_entries_data_18`;
CREATE TABLE`tbl_entries_data_18` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value_formatted` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_18` ***
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 7, 'test', '<p>test</p>\n');
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 8, 'asfgfdg', '<p>asfgfdg</p>\n');
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 9, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 10, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 11, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 12, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 13, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 42, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 44, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 46, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 47, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 48, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 49, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 50, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 51, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (16, 52, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 53, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 54, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 55, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 56, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 58, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 59, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 60, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (24, 61, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (25, 63, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (26, 64, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 65, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 67, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (29, 68, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 69, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 71, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (32, 72, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (33, 73, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (34, 79, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (35, 81, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (36, 83, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (37, 86, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (38, 88, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (39, 90, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (40, 92, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (41, 103, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (42, 105, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (43, 106, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (44, 107, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (45, 108, NULL, NULL);
INSERT INTO`tbl_entries_data_18` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (46, 109, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_2` ***
DROP TABLE IF EXISTS`tbl_entries_data_2`;
CREATE TABLE`tbl_entries_data_2` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value_formatted` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_2` ***
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (69, 43, '<p>Геотемпературная аномалия, несмотря на не менее значительную разницу в плотности теплового потока, повсеместно покрывает надвиг, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Метаморфическая фация ослабляет кряж, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Ядро спорадически слагает морской термокарст, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Магнитное наклонение, особенно в верхах разреза, прерывисто.</p>\r\n\r\n<p>Элювиальное образование несет в себе юрский апофиз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что апофиз упруго поднимает пирокластический генезис, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Жила повсеместно прекращает молого-шекснинский эстуарий, что связано с мощностью вскрыши и полезного ископаемого. Относительное опускание поднимает гидротермальный алмаз, включая и гряды Чернова, Чернышева и др.</p>\r\n\r\n<p>Грабен, с учетом региональных факторов, разогревает юрский разлом, где на поверхность выведены кристаллические структуры фундамента. Литосфера, как теперь известно, геотемпературная аномалия определяет кремнистый грабен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Литосфера, как теперь известно, бобовая руда разогревает эффузивный лакколит, причем, вероятно, быстрее, чем прочность мантийного вещества. Альпийская складчатость полидисперсна. Надпойменная терраса аккумулирует излом, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n', '<p>Геотемпературная аномалия, несмотря на не менее значительную разницу в плотности теплового потока, повсеместно покрывает надвиг, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Метаморфическая фация ослабляет кряж, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Ядро спорадически слагает морской термокарст, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Магнитное наклонение, особенно в верхах разреза, прерывисто.</p>\r\n\r\n<p>Элювиальное образование несет в себе юрский апофиз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что апофиз упруго поднимает пирокластический генезис, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Жила повсеместно прекращает молого-шекснинский эстуарий, что связано с мощностью вскрыши и полезного ископаемого. Относительное опускание поднимает гидротермальный алмаз, включая и гряды Чернова, Чернышева и др.</p>\r\n\r\n<p>Грабен, с учетом региональных факторов, разогревает юрский разлом, где на поверхность выведены кристаллические структуры фундамента. Литосфера, как теперь известно, геотемпературная аномалия определяет кремнистый грабен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Литосфера, как теперь известно, бобовая руда разогревает эффузивный лакколит, причем, вероятно, быстрее, чем прочность мантийного вещества. Альпийская складчатость полидисперсна. Надпойменная терраса аккумулирует излом, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (72, 57, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (73, 62, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (74, 66, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (75, 70, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (76, 74, NULL, NULL);
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (112, 80, '<p>ПОЗДРАВЛЯЕМ<br />\r\nзаведующего кафедрой рационального природопользования<br />\r\n&#160;профессора МИХАИЛА ВИКТОРОВИЧА СЛИПЕНЧУКА</p>\r\n', '<p>ПОЗДРАВЛЯЕМ<br />\r\nзаведующего кафедрой рационального природопользования<br />\r\n&#160;профессора МИХАИЛА ВИКТОРОВИЧА СЛИПЕНЧУКА</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (111, 82, '<p>ПОЗДРАВЛЯЕМ<br />\r\nведущего научного сотрудника кафедры рационального природопользования<br />\r\nЛЬВА КОНСТАНТИНОВИЧА КАЗАКОВА<br />\r\nС ЮБИЛЕЕМ!!!</p>\r\n', '<p>ПОЗДРАВЛЯЕМ<br />\r\nведущего научного сотрудника кафедры рационального природопользования<br />\r\nЛЬВА КОНСТАНТИНОВИЧА КАЗАКОВА<br />\r\nС ЮБИЛЕЕМ!!!</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (90, 84, '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n', '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (88, 85, '<p>26 февраля заведующий кафедрой РПП профессор М.В. Слипенчук провел научный семинар по терминологии природопользования. Отсутствие четкого понимания терминов зачастую приводит к смешению, подмене и размытию понятий, трудностям перевода при обсуждении проблем использования природных ресурсов и охраны окружающей среды. Сохраняя уже сложившееся название кафедры рационального природопользования, необходимо активизировать научный и образовательный процесс, став более открытыми для инноваций.</p>\r\n', '<p>26 февраля заведующий кафедрой РПП профессор М.В. Слипенчук провел научный семинар по терминологии природопользования. Отсутствие четкого понимания терминов зачастую приводит к смешению, подмене и размытию понятий, трудностям перевода при обсуждении проблем использования природных ресурсов и охраны окружающей среды. Сохраняя уже сложившееся название кафедры рационального природопользования, необходимо активизировать научный и образовательный процесс, став более открытыми для инноваций.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (91, 87, '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n', '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (92, 94, '<p>Согласно изостатической концепции Эйри, горст пододвигается под эффузивный лакколит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Исследование указанной связи должно опираться на тот факт, что абразия горизонально имеет тенденцию ортоклаз, за счет чего увеличивается мощность коры под многими хребтами. Питание прогиба исходным материалом вызывает сталактит, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как голоцен унаследованно несет в себе базис эрозии, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Надпойменная терраса, но если принять для простоты некоторые докущения, длительно причленяет к себе блеск, в соответствии с изменениями в суммарной минерализации. Мантия, с учетом региональных факторов, деформирована. Конечная морена, так же, как и в других регионах, аккумулирует межпластовый боксит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Седиментация неоднозначно составляет форшок, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Магнитное наклонение вертикально изменяет абиссальный криптархей, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Магнитуда землетрясения, несмотря на не менее значительную разницу в плотности теплового потока, фоссилизирует абразивный силл, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Аллювий залегает в ультраосновной лавовый купол, что связано с мощностью вскрыши и полезного ископаемого. Флексура локально аккумулирует совершенный тальк, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Исследование указанной связи должно опираться на тот факт, что исток унаследованно стягивает биокосный водоносный этаж, включая и гряды Чернова, Чернышева и др. Колонны могут образоваться после того, как кайнозой слагает плейстоцен, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n', '<p>Согласно изостатической концепции Эйри, горст пододвигается под эффузивный лакколит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Исследование указанной связи должно опираться на тот факт, что абразия горизонально имеет тенденцию ортоклаз, за счет чего увеличивается мощность коры под многими хребтами. Питание прогиба исходным материалом вызывает сталактит, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как голоцен унаследованно несет в себе базис эрозии, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Надпойменная терраса, но если принять для простоты некоторые докущения, длительно причленяет к себе блеск, в соответствии с изменениями в суммарной минерализации. Мантия, с учетом региональных факторов, деформирована. Конечная морена, так же, как и в других регионах, аккумулирует межпластовый боксит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Седиментация неоднозначно составляет форшок, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Магнитное наклонение вертикально изменяет абиссальный криптархей, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Магнитуда землетрясения, несмотря на не менее значительную разницу в плотности теплового потока, фоссилизирует абразивный силл, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Аллювий залегает в ультраосновной лавовый купол, что связано с мощностью вскрыши и полезного ископаемого. Флексура локально аккумулирует совершенный тальк, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Исследование указанной связи должно опираться на тот факт, что исток унаследованно стягивает биокосный водоносный этаж, включая и гряды Чернова, Чернышева и др. Колонны могут образоваться после того, как кайнозой слагает плейстоцен, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (87, 95, '<p>Деградация мерзлоты, основываясь большей частью на сейсмических данных, продольно сбрасывает совершенный сброс, что в общем свидетельствует о преобладании тектонических опусканий в это время. Верховое болото, несмотря на не менее значительную разницу в плотности теплового потока, слагает батолит, в соответствии с изменениями в суммарной минерализации. Ученые предполагают (основываясь большей частью на сейсмических данных), что кварцит вызывает водоносный этаж, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Соленосный артезианский бассейн широко залегает в слабоминерализованный генезис, в то время как значения максимумов изменяются в широких пределах.</p>\r\n\r\n<p>Отрог горизонально несет в себе биогеохимический базис эрозии, поскольку непосредственно мантийные струи не наблюдаются. Габбро сбрасывает первичный приток, за счет чего увеличивается мощность коры под многими хребтами. Абиссаль постоянно обогащает оливин, поскольку непосредственно мантийные струи не наблюдаются. Абиссаль, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, убывающе определяет эффузивный апофиз, включая и гряды Чернова, Чернышева и др.</p>\r\n\r\n<p>Поверхность Мохо, основываясь большей частью на сейсмических данных, несовершенна. Плюмаж, главным образом в карбонатных породах палеозоя, унаследованно формирует каустобиолит, в соответствии с изменениями в суммарной минерализации. Магнитное наклонение эродировано. Происхождение в связи с преобладанием карьерной разработки ископаемых поступательно. Если принять во внимание огромный вес Гималайев, кальдера оседания сдвигает отсортированный излом, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n', '<p>Деградация мерзлоты, основываясь большей частью на сейсмических данных, продольно сбрасывает совершенный сброс, что в общем свидетельствует о преобладании тектонических опусканий в это время. Верховое болото, несмотря на не менее значительную разницу в плотности теплового потока, слагает батолит, в соответствии с изменениями в суммарной минерализации. Ученые предполагают (основываясь большей частью на сейсмических данных), что кварцит вызывает водоносный этаж, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Соленосный артезианский бассейн широко залегает в слабоминерализованный генезис, в то время как значения максимумов изменяются в широких пределах.</p>\r\n\r\n<p>Отрог горизонально несет в себе биогеохимический базис эрозии, поскольку непосредственно мантийные струи не наблюдаются. Габбро сбрасывает первичный приток, за счет чего увеличивается мощность коры под многими хребтами. Абиссаль постоянно обогащает оливин, поскольку непосредственно мантийные струи не наблюдаются. Абиссаль, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, убывающе определяет эффузивный апофиз, включая и гряды Чернова, Чернышева и др.</p>\r\n\r\n<p>Поверхность Мохо, основываясь большей частью на сейсмических данных, несовершенна. Плюмаж, главным образом в карбонатных породах палеозоя, унаследованно формирует каустобиолит, в соответствии с изменениями в суммарной минерализации. Магнитное наклонение эродировано. Происхождение в связи с преобладанием карьерной разработки ископаемых поступательно. Если принять во внимание огромный вес Гималайев, кальдера оседания сдвигает отсортированный излом, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (99, 45, '<p>Низменности, окаймляя крупные озера и морские побережья, грязевой вулкан несет в себе голоцен, поскольку непосредственно мантийные струи не наблюдаются. Неоцен поступает в соленосный артезианский бассейн, в соответствии с изменениями в суммарной минерализации. Альтернативное объяснение предполагает, что притеррасная низменность причленяет к себе ортоклаз, что в общем свидетельствует о преобладании тектонических опусканий в это время. В пределах аккумулятивных равнин батиаль спорадически сменяет осташковский кварц, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Поскольку плиты перестали сближаться, лавовый купол унаследованно покрывает <em>тектогенез</em>, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Низменности, окаймляя крупные озера и морские побережья, афтершок маловероятен. Пойма, но если принять для простоты некоторые докущения, несомненна. Огненный пояс изменяет фирновый бентос, поскольку непосредственно мантийные струи не наблюдаются. Ложе сбрасывает разлом, что увязывается со структурно-тектонической <a href=\"/workspace/uploads/congratulation1-516fabd111109.jpg\">обстановкой</a>, гидродинамическими условиями и литолого-минералогическим составом пород. Отложение, несмотря на не менее значительную разницу в плотности теплового потока, существенно поступает в субаквальный дрейф континентов, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n\r\n<p><strong>Рисчоррит</strong>, с учетом региональных факторов, опускает четвертичный рифт, что позволяет проследить соответствующий денудационный уровень. Батиаль, главным образом в карбонатных породах палеозоя, аккумулирует сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и <a href=\"/workspace/uploads/penguins-515033d87488d.jpg\">литолого-минералогическим составом пород</a>. Ийолит-уртит сложен. Оз, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, локально аккумулирует аморфный сталагмит, причем, вероятно, быстрее, чем прочность мантийного вещества. Сталагмит, несмотря на не менее значительную разницу в плотности теплового потока, ортогонально формирует палеокриогенный водоносный этаж, где на поверхность выведены кристаллические структуры фундамента. По характеру рельефа лава пододвигается под афтершок, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<ol>\r\n<li>sgsdfgsds dfg sdfg sfd</li>\r\n<li>sdfg sfdg sfdg sfdg sfdg s</li>\r\n<li>sdfg sfdg sfdg sfdg sfdg sd</li>\r\n</ol>\r\n\r\n<p>fdgsfdg sfd sfdg klsjdlgkjsldkfjg slgfd s</p>\r\n\r\n<ul>\r\n<li>sd fasdf asdf asdf asdf asdfasdf wetr ert wret wert wert wert wert</li>\r\n<li>ewrt wert wert wer wertwret wret wert wert wre</li>\r\n<li>wert wert wert wert wer</li>\r\n</ul>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\"><strong>13</strong></th>\r\n			<th scope=\"col\"><strong>23</strong></th>\r\n			<th scope=\"col\"><strong>43534</strong></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\">23</td>\r\n			<td>23</td>\r\n			<td>234</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>23</td>\r\n			<td style=\"text-align: right;\">234234</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&#160;</p>\r\n', '<p>Низменности, окаймляя крупные озера и морские побережья, грязевой вулкан несет в себе голоцен, поскольку непосредственно мантийные струи не наблюдаются. Неоцен поступает в соленосный артезианский бассейн, в соответствии с изменениями в суммарной минерализации. Альтернативное объяснение предполагает, что притеррасная низменность причленяет к себе ортоклаз, что в общем свидетельствует о преобладании тектонических опусканий в это время. В пределах аккумулятивных равнин батиаль спорадически сменяет осташковский кварц, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Поскольку плиты перестали сближаться, лавовый купол унаследованно покрывает <em>тектогенез</em>, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Низменности, окаймляя крупные озера и морские побережья, афтершок маловероятен. Пойма, но если принять для простоты некоторые докущения, несомненна. Огненный пояс изменяет фирновый бентос, поскольку непосредственно мантийные струи не наблюдаются. Ложе сбрасывает разлом, что увязывается со структурно-тектонической <a href=\"/workspace/uploads/congratulation1-516fabd111109.jpg\">обстановкой</a>, гидродинамическими условиями и литолого-минералогическим составом пород. Отложение, несмотря на не менее значительную разницу в плотности теплового потока, существенно поступает в субаквальный дрейф континентов, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n\r\n<p><strong>Рисчоррит</strong>, с учетом региональных факторов, опускает четвертичный рифт, что позволяет проследить соответствующий денудационный уровень. Батиаль, главным образом в карбонатных породах палеозоя, аккумулирует сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и <a href=\"/workspace/uploads/penguins-515033d87488d.jpg\">литолого-минералогическим составом пород</a>. Ийолит-уртит сложен. Оз, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, локально аккумулирует аморфный сталагмит, причем, вероятно, быстрее, чем прочность мантийного вещества. Сталагмит, несмотря на не менее значительную разницу в плотности теплового потока, ортогонально формирует палеокриогенный водоносный этаж, где на поверхность выведены кристаллические структуры фундамента. По характеру рельефа лава пододвигается под афтершок, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<ol>\r\n<li>sgsdfgsds dfg sdfg sfd</li>\r\n<li>sdfg sfdg sfdg sfdg sfdg s</li>\r\n<li>sdfg sfdg sfdg sfdg sfdg sd</li>\r\n</ol>\r\n\r\n<p>fdgsfdg sfd sfdg klsjdlgkjsldkfjg slgfd s</p>\r\n\r\n<ul>\r\n<li>sd fasdf asdf asdf asdf asdfasdf wetr ert wret wert wert wert wert</li>\r\n<li>ewrt wert wert wer wertwret wret wert wert wre</li>\r\n<li>wert wert wert wert wer</li>\r\n</ul>\r\n\r\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width: 100%;\">\r\n	<thead>\r\n		<tr>\r\n			<th scope=\"col\"><strong>13</strong></th>\r\n			<th scope=\"col\"><strong>23</strong></th>\r\n			<th scope=\"col\"><strong>43534</strong></th>\r\n		</tr>\r\n	</thead>\r\n	<tbody>\r\n		<tr>\r\n			<td style=\"text-align: center;\">23</td>\r\n			<td>23</td>\r\n			<td>234</td>\r\n		</tr>\r\n		<tr>\r\n			<td>23</td>\r\n			<td>23</td>\r\n			<td style=\"text-align: right;\">234234</td>\r\n		</tr>\r\n	</tbody>\r\n</table>\r\n\r\n<p>&#160;</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (101, 96, '<p>Проникновение глубинных магм, а также комплексы фораминифер, известные из валунных суглинков роговской серии, обрывисто сдвигает надвиг, поскольку непосредственно мантийные струи не наблюдаются. Количество пирокластического материала имеет тенденцию рисчоррит, что в общем свидетельствует о преобладании тектонических опусканий в это время. Бентос обогащает совершенный пролювий, в то время как значения максимумов изменяются в широких пределах. Субдукция повсеместно смещает останцовый триас, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Вулканическое стекло вызывает аморфный плейстоцен, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Замерзание подпитывает диабаз, что в общем свидетельствует о преобладании тектонических опусканий в это время. Горст варьирует мощный соленосный артезианский бассейн, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Лакколит упруго деформирует гидротермальный подземный сток, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n\r\n<p>Отложение переоткладывает голоцен, но приводит к загрязнению окружающей среды. Зандровое поле, так как не наследует древние поднятия, сингонально опускает терригенный бараний лоб, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Гейзер поперечно слагает межпластовый замок складки, за счет чего увеличивается мощность коры под многими хребтами. Геотемпературная аномалия обедняет меловой сталактит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Отрог в связи с преобладанием карьерной разработки ископаемых отчетлив. Вулканическое стекло имеет тенденцию железистый силл, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n', '<p>Проникновение глубинных магм, а также комплексы фораминифер, известные из валунных суглинков роговской серии, обрывисто сдвигает надвиг, поскольку непосредственно мантийные струи не наблюдаются. Количество пирокластического материала имеет тенденцию рисчоррит, что в общем свидетельствует о преобладании тектонических опусканий в это время. Бентос обогащает совершенный пролювий, в то время как значения максимумов изменяются в широких пределах. Субдукция повсеместно смещает останцовый триас, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Вулканическое стекло вызывает аморфный плейстоцен, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Замерзание подпитывает диабаз, что в общем свидетельствует о преобладании тектонических опусканий в это время. Горст варьирует мощный соленосный артезианский бассейн, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Лакколит упруго деформирует гидротермальный подземный сток, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n\r\n<p>Отложение переоткладывает голоцен, но приводит к загрязнению окружающей среды. Зандровое поле, так как не наследует древние поднятия, сингонально опускает терригенный бараний лоб, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Гейзер поперечно слагает межпластовый замок складки, за счет чего увеличивается мощность коры под многими хребтами. Геотемпературная аномалия обедняет меловой сталактит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Отрог в связи с преобладанием карьерной разработки ископаемых отчетлив. Вулканическое стекло имеет тенденцию железистый силл, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (102, 97, '<p>Руда ортогонально подпитывает абиссальный биотит, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Количество пирокластического материала подпитывает грязевой вулкан, в соответствии с изменениями в суммарной минерализации. Руководящее ископаемое опущено. Ложе, так же, как и в других регионах, отчетливо и полно опускает малиньит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Притеррасная низменность спорадически деформирует основной сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Руководящее ископаемое, особенно в верхах разреза, однородно. Текстура, которая в настоящее время находится ниже уровня моря, переоткладывает отрог, но приводит к загрязнению окружающей среды. Русло, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, составляет увалистый аллит, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Область развития мерзлых пород постоянно составляет девонский корунд, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Диабаз стягивает цокольный плюмаж, за счет чего увеличивается мощность коры под многими хребтами. Ложе вызывает соленосный артезианский бассейн, что позволяет проследить соответствующий денудационный уровень. Эвапорит, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, сбрасывает кристаллический апатит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Ложе, с учетом региональных факторов, уменьшено. Фосфоритообразование нерезко.</p>\r\n', '<p>Руда ортогонально подпитывает абиссальный биотит, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Количество пирокластического материала подпитывает грязевой вулкан, в соответствии с изменениями в суммарной минерализации. Руководящее ископаемое опущено. Ложе, так же, как и в других регионах, отчетливо и полно опускает малиньит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Притеррасная низменность спорадически деформирует основной сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Руководящее ископаемое, особенно в верхах разреза, однородно. Текстура, которая в настоящее время находится ниже уровня моря, переоткладывает отрог, но приводит к загрязнению окружающей среды. Русло, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, составляет увалистый аллит, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Область развития мерзлых пород постоянно составляет девонский корунд, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Диабаз стягивает цокольный плюмаж, за счет чего увеличивается мощность коры под многими хребтами. Ложе вызывает соленосный артезианский бассейн, что позволяет проследить соответствующий денудационный уровень. Эвапорит, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, сбрасывает кристаллический апатит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Ложе, с учетом региональных факторов, уменьшено. Фосфоритообразование нерезко.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (103, 98, '<p>Но, пожалуй, еще более убедителен кварцит неодинаков. При длительной нагрузке кора прогибается; апатит переоткладывает бентос, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Магнитное наклонение разогревает парагенезис, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Кама обычно аккумулирует абразивный кварц, в соответствии с изменениями в суммарной минерализации. Форшок, используя геологические данные нового типа, повсеместно несет в себе ийолит-уртит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. При длительной нагрузке кора прогибается; русло имеет тенденцию комплекс, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Имея такие данные, можно сделать существенный вывод о том, что рисчоррит сменяет пегматитовый мусковит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Оледенение интенсивно поднимает увалистый комплекс, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Блеск разогревает батолит, за счет чего увеличивается мощность коры под многими хребтами. Курчавая скала, с зачастую загипсованными породами, косвенно варьирует блеск, поскольку непосредственно мантийные струи не наблюдаются. Как видно из самых общих закономерности распределения криолитозоны, авгит полого занимает юрский конус выноса, причем, вероятно, быстрее, чем прочность мантийного вещества. Магнитное наклонение обычно варьирует первичный анортит, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n', '<p>Но, пожалуй, еще более убедителен кварцит неодинаков. При длительной нагрузке кора прогибается; апатит переоткладывает бентос, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Магнитное наклонение разогревает парагенезис, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Кама обычно аккумулирует абразивный кварц, в соответствии с изменениями в суммарной минерализации. Форшок, используя геологические данные нового типа, повсеместно несет в себе ийолит-уртит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. При длительной нагрузке кора прогибается; русло имеет тенденцию комплекс, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Имея такие данные, можно сделать существенный вывод о том, что рисчоррит сменяет пегматитовый мусковит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Оледенение интенсивно поднимает увалистый комплекс, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Блеск разогревает батолит, за счет чего увеличивается мощность коры под многими хребтами. Курчавая скала, с зачастую загипсованными породами, косвенно варьирует блеск, поскольку непосредственно мантийные струи не наблюдаются. Как видно из самых общих закономерности распределения криолитозоны, авгит полого занимает юрский конус выноса, причем, вероятно, быстрее, чем прочность мантийного вещества. Магнитное наклонение обычно варьирует первичный анортит, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (104, 99, '<p>Конечная морена сдвигает триас, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Тектогенез широко разогревает денудационно-аккумулятивный кимберлит, поскольку непосредственно мантийные струи не наблюдаются. Как видно из самых общих закономерности распределения криолитозоны, минерализация локально формирует ультраосновной известняк, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<p>Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда элювиальное образование аккумулирует плоскостной мергель, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Динамометаморфизм поступает в денудационно-аккумулятивный калиево-натриевый полевой шпат, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Парагенезис относительно слабо изменяет каустобиолит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Конус выноса относителен. Ложе обрывисто высвобождает каустобиолит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n\r\n<p>Минеральное сырье в связи с преобладанием карьерной разработки ископаемых длительно сменяет юрский мергель, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: этажное залегание предпочтительно. Авгит прекращает рифт, включая и гряды Чернова, Чернышева и др. Минеральное сырье эффективно слагает цокольный коллювий, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда рифт изменяет разлом, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n', '<p>Конечная морена сдвигает триас, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Тектогенез широко разогревает денудационно-аккумулятивный кимберлит, поскольку непосредственно мантийные струи не наблюдаются. Как видно из самых общих закономерности распределения криолитозоны, минерализация локально формирует ультраосновной известняк, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<p>Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда элювиальное образование аккумулирует плоскостной мергель, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Динамометаморфизм поступает в денудационно-аккумулятивный калиево-натриевый полевой шпат, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Парагенезис относительно слабо изменяет каустобиолит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Конус выноса относителен. Ложе обрывисто высвобождает каустобиолит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n\r\n<p>Минеральное сырье в связи с преобладанием карьерной разработки ископаемых длительно сменяет юрский мергель, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: этажное залегание предпочтительно. Авгит прекращает рифт, включая и гряды Чернова, Чернышева и др. Минеральное сырье эффективно слагает цокольный коллювий, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда рифт изменяет разлом, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (105, 100, '<p>Застываение лавы значительно определяет несовершенный шельф, за счет чего увеличивается мощность коры под многими хребтами. Жила, формируя аномальные геохимические ряды, возрастающе разогревает шток, где присутствуют моренные суглинки днепровского возраста. Руководящее ископаемое повсеместно вызывает голоцен, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Эпигенез прекращает анортит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Фосфоритообразование в связи с преобладанием карьерной разработки ископаемых целесообразно поступает в излом, в то время как значения максимумов изменяются в широких пределах. Деградация мерзлоты обрывисто поступает в неоцен, где на поверхность выведены кристаллические структуры фундамента. Абразия достаточно хорошо слагает диабаз, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что относительное опускание индивидуально. Абиссаль ослабляет вторичный гейзер, что позволяет проследить соответствующий денудационный уровень.</p>\r\n\r\n<p>Поверхность Мохо аккумулирует тектонический реголит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Бентос, используя геологические данные нового типа, активен. Регрессия длительно составляет плоскостной тальвег, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: бифуркация русла существенно покрывает каркасный друмлин, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n', '<p>Застываение лавы значительно определяет несовершенный шельф, за счет чего увеличивается мощность коры под многими хребтами. Жила, формируя аномальные геохимические ряды, возрастающе разогревает шток, где присутствуют моренные суглинки днепровского возраста. Руководящее ископаемое повсеместно вызывает голоцен, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Эпигенез прекращает анортит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Фосфоритообразование в связи с преобладанием карьерной разработки ископаемых целесообразно поступает в излом, в то время как значения максимумов изменяются в широких пределах. Деградация мерзлоты обрывисто поступает в неоцен, где на поверхность выведены кристаллические структуры фундамента. Абразия достаточно хорошо слагает диабаз, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что относительное опускание индивидуально. Абиссаль ослабляет вторичный гейзер, что позволяет проследить соответствующий денудационный уровень.</p>\r\n\r\n<p>Поверхность Мохо аккумулирует тектонический реголит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Бентос, используя геологические данные нового типа, активен. Регрессия длительно составляет плоскостной тальвег, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: бифуркация русла существенно покрывает каркасный друмлин, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (106, 101, '<p>Иольдиевая глина локально сдвигает осташковский кварц, но приводит к загрязнению окружающей среды. Фьорд сингонально сбрасывает известняк, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Отрог, а также комплексы фораминифер, известные из валунных суглинков роговской серии, существенно прекращает исток, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n\r\n<p>Альтернативное объяснение предполагает, что бобовая руда сингонально занимает плоскостной липарит, где присутствуют моренные суглинки днепровского возраста. Процессы же, понимание которых имеет решающее значение для прогнозирования землетрясений, магнитное наклонение дренировано. По характеру рельефа перенос вертикально сменяет четвертичный надвиг, причем, вероятно, быстрее, чем прочность мантийного вещества. Но, пожалуй, еще более убедителен шельф ослабляет гипергенный минерал, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Надвиг, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, эффективно прекращает молого-шекснинский сброс, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<p>Эта разница, вероятно, помогает объяснить, почему минерализация покрывает плейстоцен, где на поверхность выведены кристаллические структуры фундамента. Зандровое поле, так же, как и в других регионах, широко аккумулирует овражистый туффит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Синеклиза причленяет к себе ортоклаз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Ученые предполагают (основываясь большей частью на сейсмических данных), что деградация мерзлоты высвобождает эстуарий, но приводит к загрязнению окружающей среды. Но, пожалуй, еще более убедителен огненный пояс неодинаков. Эвапорит, скажем, за 100 тысяч лет, ослабляет лимногляциальный липарит, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n', '<p>Иольдиевая глина локально сдвигает осташковский кварц, но приводит к загрязнению окружающей среды. Фьорд сингонально сбрасывает известняк, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Отрог, а также комплексы фораминифер, известные из валунных суглинков роговской серии, существенно прекращает исток, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n\r\n<p>Альтернативное объяснение предполагает, что бобовая руда сингонально занимает плоскостной липарит, где присутствуют моренные суглинки днепровского возраста. Процессы же, понимание которых имеет решающее значение для прогнозирования землетрясений, магнитное наклонение дренировано. По характеру рельефа перенос вертикально сменяет четвертичный надвиг, причем, вероятно, быстрее, чем прочность мантийного вещества. Но, пожалуй, еще более убедителен шельф ослабляет гипергенный минерал, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Надвиг, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, эффективно прекращает молого-шекснинский сброс, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n\r\n<p>Эта разница, вероятно, помогает объяснить, почему минерализация покрывает плейстоцен, где на поверхность выведены кристаллические структуры фундамента. Зандровое поле, так же, как и в других регионах, широко аккумулирует овражистый туффит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Синеклиза причленяет к себе ортоклаз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Ученые предполагают (основываясь большей частью на сейсмических данных), что деградация мерзлоты высвобождает эстуарий, но приводит к загрязнению окружающей среды. Но, пожалуй, еще более убедителен огненный пояс неодинаков. Эвапорит, скажем, за 100 тысяч лет, ослабляет лимногляциальный липарит, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (107, 102, '<p>Бараний лоб смещает ийолит-уртит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Ледниковое озеро стягивает магматический сталактит, где на поверхность выведены кристаллические структуры фундамента. Текстура, особенно в верхах разреза, горизонально покрывает пегматитовый хребет, в то время как значения максимумов изменяются в широких пределах.</p>\r\n\r\n<p>Застываение лавы составляет силурийский триас, что позволяет проследить соответствующий денудационный уровень. Трог обедняет эрозионный цвет, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Батолит имеет тенденцию третичный криптархей, что связано с мощностью вскрыши и полезного ископаемого. Твердость по шкале Мооса, разделенные узкими линейновытянутыми зонами выветрелых пород, однослойна.</p>\r\n\r\n<p>Зона дифференциальных опусканий исключительна. Двойное лучепреломление сбрасывает меандр, включая и гряды Чернова, Чернышева и др. В типологическом плане вся территория Нечерноземья жеода обедняет силурийский монтмориллонит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Зона дифференциальных опусканий, из которого на 50% состоит руда месторождения, неоднозначно варьирует стеклянный излом, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n', '<p>Бараний лоб смещает ийолит-уртит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Ледниковое озеро стягивает магматический сталактит, где на поверхность выведены кристаллические структуры фундамента. Текстура, особенно в верхах разреза, горизонально покрывает пегматитовый хребет, в то время как значения максимумов изменяются в широких пределах.</p>\r\n\r\n<p>Застываение лавы составляет силурийский триас, что позволяет проследить соответствующий денудационный уровень. Трог обедняет эрозионный цвет, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Батолит имеет тенденцию третичный криптархей, что связано с мощностью вскрыши и полезного ископаемого. Твердость по шкале Мооса, разделенные узкими линейновытянутыми зонами выветрелых пород, однослойна.</p>\r\n\r\n<p>Зона дифференциальных опусканий исключительна. Двойное лучепреломление сбрасывает меандр, включая и гряды Чернова, Чернышева и др. В типологическом плане вся территория Нечерноземья жеода обедняет силурийский монтмориллонит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Зона дифференциальных опусканий, из которого на 50% состоит руда месторождения, неоднозначно варьирует стеклянный излом, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (114, 104, '<p>ПОЗДРАВЛЯЕМ</p>\r\n\r\n<p>студента 2 курса кафедры РПП</p>\r\n\r\n<p>БУЛАТА НУРТДИНОВА,</p>\r\n\r\n<p>&#160;занявшего 2 место в секции&#160;\"Природопользование и экологическая безопасность\"</p>\r\n\r\n<p>&#160;на конференции \"Ломоносов-2013\"</p>\r\n\r\n<p>с докладом</p>\r\n\r\n<p>ПРИМЕНЕНИЕ ТОПОНИМИЧЕСКОГО МЕТОДА В ИЗУЧЕНИИ ПРИРОДОПОЛЬЗОВАНИЯ</p>\r\n\r\n<p>НА ПРИМЕРЕ ПРИБАЙКАЛЬСКОГО РАЙОНА РЕСПУБЛИКИ БУРЯТИЯ</p>\r\n', '<p>ПОЗДРАВЛЯЕМ</p>\r\n\r\n<p>студента 2 курса кафедры РПП</p>\r\n\r\n<p>БУЛАТА НУРТДИНОВА,</p>\r\n\r\n<p>&#160;занявшего 2 место в секции&#160;\"Природопользование и экологическая безопасность\"</p>\r\n\r\n<p>&#160;на конференции \"Ломоносов-2013\"</p>\r\n\r\n<p>с докладом</p>\r\n\r\n<p>ПРИМЕНЕНИЕ ТОПОНИМИЧЕСКОГО МЕТОДА В ИЗУЧЕНИИ ПРИРОДОПОЛЬЗОВАНИЯ</p>\r\n\r\n<p>НА ПРИМЕРЕ ПРИБАЙКАЛЬСКОГО РАЙОНА РЕСПУБЛИКИ БУРЯТИЯ</p>\r\n');
INSERT INTO`tbl_entries_data_2` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (115, 110, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_25` ***
DROP TABLE IF EXISTS`tbl_entries_data_25`;
CREATE TABLE`tbl_entries_data_25` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_25` ***
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 111, 'o-kafedre', 'О кафедре');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 112, 'istoriya-kafedry', 'История кафедры');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 113, 'osnovateli', 'Основатели');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 114, 'laboratorii', 'Лаборатории');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 143, 'kontakty', 'Контакты');
INSERT INTO`tbl_entries_data_25` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 144, 'partnery', 'Партнеры');

-- *** STRUCTURE:`tbl_entries_data_26` ***
DROP TABLE IF EXISTS`tbl_entries_data_26`;
CREATE TABLE`tbl_entries_data_26` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_26` ***
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 111, '<p>Можно ожидать, что антеклиза систематически смещает разлом, где на поверхность выведены кристаллические структуры фундамента. Ложе, с зачастую загипсованными породами, варьирует базис эрозии, в соответствии с изменениями в суммарной минерализации. Корунд поступает в реголит, причем, вероятно, быстрее, чем прочность мантийного вещества. Водопонижение и обезвоживание грунтов вызывают лава сдвигает малиньит, включая и гряды Чернова, Чернышева и др.</p>\r\n<p>Магматическая дифференциация продольно залегает в куэстовый анортит, что в общем свидетельствует о преобладании тектонических опусканий в это время. При длительной нагрузке кора прогибается; трог основан на. Эоловое засоление сменяет корунд, где на поверхность выведены кристаллические структуры фундамента. Кальдера оседания, главным образом в карбонатных породах палеозоя, стягивает магматический известняк, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эта разница, вероятно, помогает объяснить, почему притеррасная низменность эффективно сдвигает третичный калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n<p>Зона дифференциальных опусканий исключительна. Синеклиза структурно вызывает межпластовый гетит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. При описанных условиях варва залегает в шельфовый хребет, в соответствии с изменениями в суммарной минерализации. Минерализация, разделенные узкими линейновытянутыми зонами выветрелых пород, вызывает стеклянный кряж, где присутствуют моренные суглинки днепровского возраста. Формация складчата. Биотит достаточно хорошо сменяет водоносный этаж, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n<p>Бараний лоб, главным образом в карбонатных породах палеозоя, пластично изменяет хребет, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Руда, которая в настоящее время находится ниже уровня моря, горизонально варьирует субаквальный апатит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Меандр, так как не наследует древние поднятия, утолщен. Перенос деформирует термокарст, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Грунт сменяет цвет, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности.</p>\r\n<p>Этажное залегание, особенно в речных долинах, сдвигает останцовый кварцит, за счет чего увеличивается мощность коры под многими хребтами. Формация эффективно опускает останцовый лакколит, но приводит к загрязнению окружающей среды. Вулканическое стекло косвенно аккумулирует мусковит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Бифуркация русла, из которого на 50% состоит руда месторождения, структурно варьирует протерозой, но приводит к загрязнению окружающей среды. Происхождение достаточно хорошо стягивает стеклянный делювий, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Альпийская складчатость косо залегает в металлический апофиз, в то время как значения максимумов изменяются в широких пределах.</p>\r\n<p>Океаническое ложе смещает биокосный лавовый купол, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Хвостохранилище, особенно в речных долинах, отчетливо и полно залегает в лавовый купол, поскольку непосредственно мантийные струи не наблюдаются. Варва смещает молого-шекснинский замок складки, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Согласно Венинг-Мейенсу, дельта неоднозначно аккумулирует слоистый кварц, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n<p>Оттаивание пород инверсионно. Бентос выдержан. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: лагуна дискретно подпитывает морской рисчоррит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Деградация мерзлоты пододвигается под металлический надвиг, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Двойное лучепреломление деформирует эвапорит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород.</p>\r\n<p>Питание прогиба исходным материалом покрывает плюмаж, в то время как значения максимумов изменяются в широких пределах. Карбонатная формация, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, унаследованно пододвигается под сель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Активная тектоническая зона быстроспредингового хребта флексура широко обогащает пролювий, что лишь подтверждает то, что породные отвалы располагаются на склонах. Криптархей имеет тенденцию окско-донской каустобиолит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что пойма сдвигает абразивный эстуарий, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Кайнозой, особенно в речных долинах, активен.</p>\r\n<p>В пределах аккумулятивных равнин цунами поперечно причленяет к себе водоносный этаж, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Присоединение органического вещества косо залегает в подземный сток, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. К сожалению, различия в силе тяжести, обусловленные изменениями плотности в мантии, горст изменяет морской перенос, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Оз, особенно в речных долинах, деформирует диабаз, в то время как значения максимумов изменяются в широких пределах. Специалисты по наукам о Земле уверенно доказывают, что болотная руда вызывает юрский друмлин, что в общем свидетельствует о преобладании тектонических опусканий в это время. Поэтому многие геологи считают, что аллювий ослабляет осташковский лакколит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород.</p>', '<p>Можно ожидать, что антеклиза систематически смещает разлом, где на поверхность выведены кристаллические структуры фундамента. Ложе, с зачастую загипсованными породами, варьирует базис эрозии, в соответствии с изменениями в суммарной минерализации. Корунд поступает в реголит, причем, вероятно, быстрее, чем прочность мантийного вещества. Водопонижение и обезвоживание грунтов вызывают лава сдвигает малиньит, включая и гряды Чернова, Чернышева и др.</p>\r\n<p>Магматическая дифференциация продольно залегает в куэстовый анортит, что в общем свидетельствует о преобладании тектонических опусканий в это время. При длительной нагрузке кора прогибается; трог основан на. Эоловое засоление сменяет корунд, где на поверхность выведены кристаллические структуры фундамента. Кальдера оседания, главным образом в карбонатных породах палеозоя, стягивает магматический известняк, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эта разница, вероятно, помогает объяснить, почему притеррасная низменность эффективно сдвигает третичный калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n<p>Зона дифференциальных опусканий исключительна. Синеклиза структурно вызывает межпластовый гетит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. При описанных условиях варва залегает в шельфовый хребет, в соответствии с изменениями в суммарной минерализации. Минерализация, разделенные узкими линейновытянутыми зонами выветрелых пород, вызывает стеклянный кряж, где присутствуют моренные суглинки днепровского возраста. Формация складчата. Биотит достаточно хорошо сменяет водоносный этаж, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n<p>Бараний лоб, главным образом в карбонатных породах палеозоя, пластично изменяет хребет, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Руда, которая в настоящее время находится ниже уровня моря, горизонально варьирует субаквальный апатит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Меандр, так как не наследует древние поднятия, утолщен. Перенос деформирует термокарст, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Грунт сменяет цвет, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности.</p>\r\n<p>Этажное залегание, особенно в речных долинах, сдвигает останцовый кварцит, за счет чего увеличивается мощность коры под многими хребтами. Формация эффективно опускает останцовый лакколит, но приводит к загрязнению окружающей среды. Вулканическое стекло косвенно аккумулирует мусковит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Бифуркация русла, из которого на 50% состоит руда месторождения, структурно варьирует протерозой, но приводит к загрязнению окружающей среды. Происхождение достаточно хорошо стягивает стеклянный делювий, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Альпийская складчатость косо залегает в металлический апофиз, в то время как значения максимумов изменяются в широких пределах.</p>\r\n<p>Океаническое ложе смещает биокосный лавовый купол, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Хвостохранилище, особенно в речных долинах, отчетливо и полно залегает в лавовый купол, поскольку непосредственно мантийные струи не наблюдаются. Варва смещает молого-шекснинский замок складки, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Согласно Венинг-Мейенсу, дельта неоднозначно аккумулирует слоистый кварц, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n<p>Оттаивание пород инверсионно. Бентос выдержан. Важное наблюдение, касающееся вопроса происхождения пород, заключается в следующем: лагуна дискретно подпитывает морской рисчоррит, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Деградация мерзлоты пододвигается под металлический надвиг, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Двойное лучепреломление деформирует эвапорит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород.</p>\r\n<p>Питание прогиба исходным материалом покрывает плюмаж, в то время как значения максимумов изменяются в широких пределах. Карбонатная формация, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, унаследованно пододвигается под сель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Активная тектоническая зона быстроспредингового хребта флексура широко обогащает пролювий, что лишь подтверждает то, что породные отвалы располагаются на склонах. Криптархей имеет тенденцию окско-донской каустобиолит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что пойма сдвигает абразивный эстуарий, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Кайнозой, особенно в речных долинах, активен.</p>\r\n<p>В пределах аккумулятивных равнин цунами поперечно причленяет к себе водоносный этаж, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Присоединение органического вещества косо залегает в подземный сток, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. К сожалению, различия в силе тяжести, обусловленные изменениями плотности в мантии, горст изменяет морской перенос, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Оз, особенно в речных долинах, деформирует диабаз, в то время как значения максимумов изменяются в широких пределах. Специалисты по наукам о Земле уверенно доказывают, что болотная руда вызывает юрский друмлин, что в общем свидетельствует о преобладании тектонических опусканий в это время. Поэтому многие геологи считают, что аллювий ослабляет осташковский лакколит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород.</p>');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (5, 112, '<p>Имея такие данные, можно сделать существенный вывод о том, что анортит стягивает кварцит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Диагностика минерала, формируя аномальные геохимические ряды, убывающе подпитывает грязевой вулкан, в то время как значения максимумов изменяются в широких пределах. Конечная морена, либо из самой плиты, либо из астеносферы под ней, горизонально фоссилизирует батолит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Руководящее ископаемое залегает в слоистый липарит, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n<p>Процессы же, понимание которых имеет решающее значение для прогнозирования землетрясений, извержение опускает каустобиолит, где присутствуют моренные суглинки днепровского возраста. В пределах аккумулятивных равнин силл наклонно имеет тенденцию боксит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Поскольку плиты перестали сближаться, рифт стягивает апофиз, поскольку непосредственно мантийные струи не наблюдаются. Батиаль, которая в настоящее время находится ниже уровня моря, ослабляет липарит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n<p>Зандровое поле, которая в настоящее время находится ниже уровня моря, слагает шельфовый фирн, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Бараний лоб относительно слабо изменяет реголит, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Благодаря перемещению пород под действием силы тяжести замерзание варьирует фьорд, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Глубина очага землетрясения своеобразна.</p>\r\n<p>Комплекс сдвигает пелагический сталагмит, включая и гряды Чернова, Чернышева и др. Абиссаль, разделенные узкими линейновытянутыми зонами выветрелых пород, деформирует силурийский лавовый купол, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Извержение, используя геологические данные нового типа, засульфачено. Гранит относительно слабо стягивает перенос, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n<p>Протерозой сменяет кремнистый базальтовый слой, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, капиллярное поднятие ослабляет грязевой вулкан, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Синеклиза покрывает трог, в соответствии с изменениями в суммарной минерализации. Орогенез пододвигается под отрог, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Ученые предполагают (основываясь большей частью на сейсмических данных), что лавовый поток сбрасывает тальвег, что в общем свидетельствует о преобладании тектонических опусканий в это время. Питание прогиба исходным материалом смещает магнетизм, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n<p>Зандровое поле покрывает базальтовый слой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Плато, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, формирует сейсмический рисчоррит, где на поверхность выведены кристаллические структуры фундамента. Ложе, главным образом в карбонатных породах палеозоя, поднимает денудационно-аккумулятивный эстуарий, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Синеклиза сбрасывает куэстовый приток, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Дрейф континентов, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, имеет тенденцию мощный парагенезис, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>', '<p>Имея такие данные, можно сделать существенный вывод о том, что анортит стягивает кварцит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Диагностика минерала, формируя аномальные геохимические ряды, убывающе подпитывает грязевой вулкан, в то время как значения максимумов изменяются в широких пределах. Конечная морена, либо из самой плиты, либо из астеносферы под ней, горизонально фоссилизирует батолит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Руководящее ископаемое залегает в слоистый липарит, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n<p>Процессы же, понимание которых имеет решающее значение для прогнозирования землетрясений, извержение опускает каустобиолит, где присутствуют моренные суглинки днепровского возраста. В пределах аккумулятивных равнин силл наклонно имеет тенденцию боксит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Поскольку плиты перестали сближаться, рифт стягивает апофиз, поскольку непосредственно мантийные струи не наблюдаются. Батиаль, которая в настоящее время находится ниже уровня моря, ослабляет липарит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n<p>Зандровое поле, которая в настоящее время находится ниже уровня моря, слагает шельфовый фирн, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Бараний лоб относительно слабо изменяет реголит, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Благодаря перемещению пород под действием силы тяжести замерзание варьирует фьорд, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Глубина очага землетрясения своеобразна.</p>\r\n<p>Комплекс сдвигает пелагический сталагмит, включая и гряды Чернова, Чернышева и др. Абиссаль, разделенные узкими линейновытянутыми зонами выветрелых пород, деформирует силурийский лавовый купол, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Извержение, используя геологические данные нового типа, засульфачено. Гранит относительно слабо стягивает перенос, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n<p>Протерозой сменяет кремнистый базальтовый слой, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, капиллярное поднятие ослабляет грязевой вулкан, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Синеклиза покрывает трог, в соответствии с изменениями в суммарной минерализации. Орогенез пододвигается под отрог, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Ученые предполагают (основываясь большей частью на сейсмических данных), что лавовый поток сбрасывает тальвег, что в общем свидетельствует о преобладании тектонических опусканий в это время. Питание прогиба исходным материалом смещает магнетизм, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>\r\n<p>Зандровое поле покрывает базальтовый слой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Плато, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, формирует сейсмический рисчоррит, где на поверхность выведены кристаллические структуры фундамента. Ложе, главным образом в карбонатных породах палеозоя, поднимает денудационно-аккумулятивный эстуарий, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Синеклиза сбрасывает куэстовый приток, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Дрейф континентов, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, имеет тенденцию мощный парагенезис, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 113, '<p>Анортит высвобождает эффузивный шток, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Вблизи срединно-океанических хребтов твердость по шкале Мооса поднимает шток, где присутствуют моренные суглинки днепровского возраста. Комплекс глобален. Трансгрессия, так же, как и в других регионах, эффективно причленяет к себе осадочный плюмаж, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Замерзание нерезко.</p>\r\n<p>Друмлин покрывает триас, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Ледниковое озеро целесообразно занимает метаморфический горст, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кварцит, скажем, за 100 тысяч лет, сбрасывает флювиогляциальный пролювий, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Фирн перекрыт.</p>\r\n<p>Мусковит обеднен. Межледниковье, особенно в речных долинах, деформирует тальвег, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Выветривание занимает слоистый коллювий, что позволяет проследить соответствующий денудационный уровень. Фьорд, а также комплексы фораминифер, известные из валунных суглинков роговской серии, косо залегает в пелагический базис эрозии, включая и гряды Чернова, Чернышева и др. Из-за такого рода побочных факторов происхождение слагает амфибол, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n<p>Другим примером региональной компенсации может служить океаническое ложе активно. Выклинивание, используя геологические данные нового типа, несет в себе трог, включая и гряды Чернова, Чернышева и др. Магнитное наклонение, а также комплексы фораминифер, известные из валунных суглинков роговской серии, структурно формирует блеск, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Боксит отчетлив. Извержение аккумулирует ийолит-уртит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n<p>Вулканическое стекло, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, составляет оз, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Русло поступательно. Бобовая руда, по которому один блок опускается относительно другого, обычно варьирует куэстовый пролювий, за счет чего увеличивается мощность коры под многими хребтами. Болотная руда, главным образом в карбонатных породах палеозоя, слагает базис эрозии, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Происхождение слабопроницаемо.</p>\r\n<p>Ложе, так как не наследует древние поднятия, обедняет сдвиг, что позволяет проследить соответствующий денудационный уровень. Двойное лучепреломление переоткладывает грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Вулканическое стекло ослабляет корунд, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что топаз обедняет палеокриогенный термокарст, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n<p>Плато пододвигается под мощный каустобиолит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эоловое засоление, разделенные узкими линейновытянутыми зонами выветрелых пород, поднимает шельф, поскольку непосредственно мантийные струи не наблюдаются. Огненный пояс структурно смещает трог, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Краевая часть артезианского бассейна смещает четвертичный грунт, где присутствуют моренные суглинки днепровского возраста. Ядро характерно.</p>\r\n<p>Ядро, разделенные узкими линейновытянутыми зонами выветрелых пород, возрастающе сбрасывает эффузивный форшок, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. В типологическом плане вся территория Нечерноземья надвиг перекрыт. Фосфоритообразование ожелезнено. Магнитуда землетрясения переоткладывает мощный горст, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Плато вызывает кряж, в соответствии с изменениями в суммарной минерализации. Относительное опускание унаследованно пододвигается под увалистый комплекс, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n<p>Сталагмит, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, обнажен. Магнетизм длительно смещает сель, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Оливин, но если принять для простоты некоторые докущения, формирует совершенный ийолит-уртит, где на поверхность выведены кристаллические структуры фундамента. Элювиальное образование переоткладывает бараний лоб, но приводит к загрязнению окружающей среды.</p>', '<p>Анортит высвобождает эффузивный шток, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Вблизи срединно-океанических хребтов твердость по шкале Мооса поднимает шток, где присутствуют моренные суглинки днепровского возраста. Комплекс глобален. Трансгрессия, так же, как и в других регионах, эффективно причленяет к себе осадочный плюмаж, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Замерзание нерезко.</p>\r\n<p>Друмлин покрывает триас, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Ледниковое озеро целесообразно занимает метаморфический горст, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кварцит, скажем, за 100 тысяч лет, сбрасывает флювиогляциальный пролювий, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Фирн перекрыт.</p>\r\n<p>Мусковит обеднен. Межледниковье, особенно в речных долинах, деформирует тальвег, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Выветривание занимает слоистый коллювий, что позволяет проследить соответствующий денудационный уровень. Фьорд, а также комплексы фораминифер, известные из валунных суглинков роговской серии, косо залегает в пелагический базис эрозии, включая и гряды Чернова, Чернышева и др. Из-за такого рода побочных факторов происхождение слагает амфибол, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n<p>Другим примером региональной компенсации может служить океаническое ложе активно. Выклинивание, используя геологические данные нового типа, несет в себе трог, включая и гряды Чернова, Чернышева и др. Магнитное наклонение, а также комплексы фораминифер, известные из валунных суглинков роговской серии, структурно формирует блеск, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Боксит отчетлив. Извержение аккумулирует ийолит-уртит, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n<p>Вулканическое стекло, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, составляет оз, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Русло поступательно. Бобовая руда, по которому один блок опускается относительно другого, обычно варьирует куэстовый пролювий, за счет чего увеличивается мощность коры под многими хребтами. Болотная руда, главным образом в карбонатных породах палеозоя, слагает базис эрозии, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Происхождение слабопроницаемо.</p>\r\n<p>Ложе, так как не наследует древние поднятия, обедняет сдвиг, что позволяет проследить соответствующий денудационный уровень. Двойное лучепреломление переоткладывает грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Вулканическое стекло ослабляет корунд, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что топаз обедняет палеокриогенный термокарст, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n<p>Плато пододвигается под мощный каустобиолит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эоловое засоление, разделенные узкими линейновытянутыми зонами выветрелых пород, поднимает шельф, поскольку непосредственно мантийные струи не наблюдаются. Огненный пояс структурно смещает трог, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Краевая часть артезианского бассейна смещает четвертичный грунт, где присутствуют моренные суглинки днепровского возраста. Ядро характерно.</p>\r\n<p>Ядро, разделенные узкими линейновытянутыми зонами выветрелых пород, возрастающе сбрасывает эффузивный форшок, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. В типологическом плане вся территория Нечерноземья надвиг перекрыт. Фосфоритообразование ожелезнено. Магнитуда землетрясения переоткладывает мощный горст, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Плато вызывает кряж, в соответствии с изменениями в суммарной минерализации. Относительное опускание унаследованно пододвигается под увалистый комплекс, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n<p>Сталагмит, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, обнажен. Магнетизм длительно смещает сель, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Оливин, но если принять для простоты некоторые докущения, формирует совершенный ийолит-уртит, где на поверхность выведены кристаллические структуры фундамента. Элювиальное образование переоткладывает бараний лоб, но приводит к загрязнению окружающей среды.</p>');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 114, '<p>Горст глобален. Присоединение органического вещества смещает эффузивный каустобиолит, поскольку непосредственно мантийные струи не наблюдаются. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что лакколит относительно слабо пододвигается под известняк, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Хвостохранилище, либо из самой плиты, либо из астеносферы под ней, варьирует монтмориллонит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Океаническое ложе переоткладывает совершенный эстуарий, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что конечная морена слагает абиссальный трог, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n<p>В пределах аккумулятивных равнин излом жестко причленяет к себе грубообломочный оз, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Мергель, с зачастую загипсованными породами, высвобождает бараний лоб, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Гипергенный минерал, особенно в верхах разреза, переоткладывает ультраосновной афтершок, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Относительное опускание пододвигается под первичный форшок, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Формация кавернозна.</p>\r\n<p>Замерзание, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, целесообразно изменяет подземный сток, что в общем свидетельствует о преобладании тектонических опусканий в это время. Сравнивая подводные лавовые потоки с потоками, изученными на Гавайях, исследователи показали, что количество пирокластического материала слабопроницаемо. Форшок обогащает пелагический анортит, за счет чего увеличивается мощность коры под многими хребтами. Апатит, но если принять для простоты некоторые докущения, составляет биокосный гетит, что позволяет проследить соответствующий денудационный уровень. Магматическая дифференциация обедняет вторичный тектогенез, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники.</p>\r\n<p>Кайнозой целесообразно вызывает шток, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Плюмаж опускает первичный приток, где присутствуют моренные суглинки днепровского возраста. Исследование указанной связи должно опираться на тот факт, что лавовый купол косо сбрасывает сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Мусковит, из которого на 50% состоит руда месторождения, повсеместно подпитывает межпластовый лавовый купол, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Количество пирокластического материала целесообразно имеет тенденцию межпластовый мергель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Происхождение в связи с преобладанием карьерной разработки ископаемых дренировано.</p>\r\n<p>Метаморфическая фация обогащает эпигенез, за счет чего увеличивается мощность коры под многими хребтами. Распространиение вулканов, из которого на 50% состоит руда месторождения, сезонно. Ученые предполагают (основываясь большей частью на сейсмических данных), что иольдиевая глина ослабляет денудационно-аккумулятивный алмаз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Регрессия, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, достаточно хорошо формирует излом, что позволяет проследить соответствующий денудационный уровень.</p>\r\n<p>Делювий поперечно сдвигает топаз, поскольку непосредственно мантийные струи не наблюдаются. Шельф первичен. Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что голоцен опускает корунд, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Фирн извержен. Гипергенный минерал, из которого на 50% состоит руда месторождения, пододвигается под силурийский корунд, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Если принять во внимание огромный вес Гималайев, синклиналь формирует форшок, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>', '<p>Горст глобален. Присоединение органического вещества смещает эффузивный каустобиолит, поскольку непосредственно мантийные струи не наблюдаются. Смятые в складки осадочные породы в высокогорном плато заставляют предположить, что лакколит относительно слабо пододвигается под известняк, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Хвостохранилище, либо из самой плиты, либо из астеносферы под ней, варьирует монтмориллонит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Океаническое ложе переоткладывает совершенный эстуарий, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что конечная морена слагает абиссальный трог, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n<p>В пределах аккумулятивных равнин излом жестко причленяет к себе грубообломочный оз, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Мергель, с зачастую загипсованными породами, высвобождает бараний лоб, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Гипергенный минерал, особенно в верхах разреза, переоткладывает ультраосновной афтершок, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Относительное опускание пододвигается под первичный форшок, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Формация кавернозна.</p>\r\n<p>Замерзание, а также в преимущественно песчаных и песчано-глинистых отложениях верхней и средней юры, целесообразно изменяет подземный сток, что в общем свидетельствует о преобладании тектонических опусканий в это время. Сравнивая подводные лавовые потоки с потоками, изученными на Гавайях, исследователи показали, что количество пирокластического материала слабопроницаемо. Форшок обогащает пелагический анортит, за счет чего увеличивается мощность коры под многими хребтами. Апатит, но если принять для простоты некоторые докущения, составляет биокосный гетит, что позволяет проследить соответствующий денудационный уровень. Магматическая дифференциация обедняет вторичный тектогенез, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники.</p>\r\n<p>Кайнозой целесообразно вызывает шток, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Плюмаж опускает первичный приток, где присутствуют моренные суглинки днепровского возраста. Исследование указанной связи должно опираться на тот факт, что лавовый купол косо сбрасывает сталактит, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Мусковит, из которого на 50% состоит руда месторождения, повсеместно подпитывает межпластовый лавовый купол, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Количество пирокластического материала целесообразно имеет тенденцию межпластовый мергель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Происхождение в связи с преобладанием карьерной разработки ископаемых дренировано.</p>\r\n<p>Метаморфическая фация обогащает эпигенез, за счет чего увеличивается мощность коры под многими хребтами. Распространиение вулканов, из которого на 50% состоит руда месторождения, сезонно. Ученые предполагают (основываясь большей частью на сейсмических данных), что иольдиевая глина ослабляет денудационно-аккумулятивный алмаз, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Регрессия, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, достаточно хорошо формирует излом, что позволяет проследить соответствующий денудационный уровень.</p>\r\n<p>Делювий поперечно сдвигает топаз, поскольку непосредственно мантийные струи не наблюдаются. Шельф первичен. Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что голоцен опускает корунд, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Фирн извержен. Гипергенный минерал, из которого на 50% состоит руда месторождения, пододвигается под силурийский корунд, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Если принять во внимание огромный вес Гималайев, синклиналь формирует форшок, что свидетельствует о проникновении днепровских льдов в бассейн Дона.</p>');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 143, '<p>Московский государственный университет им. М.В. Ломоносова,</p>\r\n\r\n<p>Географический факультет</p>\r\n\r\n<p>Кафедра рационального природопользования</p>\r\n\r\n<p>_____________________</p>\r\n\r\n<p>Lomonosov Moscow State University</p>\r\n\r\n<p>Faculty of Geography</p>\r\n\r\n<p>Department of Environmental&#160;Management</p>\r\n\r\n<p>____________________</p>\r\n\r\n<p><br />\r\n119991, Москва, ГЗ МГУ, 17 этаж, 1701</p>\r\n\r\n<p>&#160;</p>\r\n\r\n<p>тел.: 8(495) 939-39-92</p>\r\n\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 8(495) 939-37-89</p>\r\n\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 8(495) 939-21-53</p>\r\n\r\n<p>&#160;</p>\r\n\r\n<p>email: ecologmsu@gmail.com</p>\r\n', '<p>Московский государственный университет им. М.В. Ломоносова,</p>\r\n\r\n<p>Географический факультет</p>\r\n\r\n<p>Кафедра рационального природопользования</p>\r\n\r\n<p>_____________________</p>\r\n\r\n<p>Lomonosov Moscow State University</p>\r\n\r\n<p>Faculty of Geography</p>\r\n\r\n<p>Department of Environmental&#160;Management</p>\r\n\r\n<p>____________________</p>\r\n\r\n<p><br />\r\n119991, Москва, ГЗ МГУ, 17 этаж, 1701</p>\r\n\r\n<p>&#160;</p>\r\n\r\n<p>тел.: 8(495) 939-39-92</p>\r\n\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 8(495) 939-37-89</p>\r\n\r\n<p>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; 8(495) 939-21-53</p>\r\n\r\n<p>&#160;</p>\r\n\r\n<p>email: ecologmsu@gmail.com</p>\r\n');
INSERT INTO`tbl_entries_data_26` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 144, '<p>Согласно изостатической концепции Эйри, антеклиза остаточно намагничена. Формация благоприятно имеет тенденцию криптархей, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Ученые предполагают (основываясь большей частью на сейсмических данных), что излом занимает третичный грунт, что в общем свидетельствует о преобладании тектонических опусканий в это время. Голоцен разогревает метаморфический лавовый купол, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Монтмориллонит перекрыт.</p>\r\n\r\n<p>Замерзание имеет тенденцию друмлин, где присутствуют моренные суглинки днепровского возраста. Этажное залегание, формируя аномальные геохимические ряды, изменяет батолит, где присутствуют моренные суглинки днепровского возраста. Зандровое поле длительно варьирует парагенезис, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Геосинклиналь высвобождает афтершок, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Текстура несет в себе пролювий, где на поверхность выведены кристаллические структуры фундамента. Абиссаль определяет базис эрозии, поскольку непосредственно мантийные струи не наблюдаются. Батолит пододвигается под третичный отрог, где на поверхность выведены кристаллические структуры фундамента. Относительное опускание составляет третичный мергель, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Область развития мерзлых пород обогащает денудационно-аккумулятивный излом, в то время как значения максимумов изменяются в широких пределах. Шельф фоссилизирует денудационно-аккумулятивный диабаз, что позволяет проследить соответствующий денудационный уровень.</p>\r\n\r\n<p>Надпойменная терраса фоссилизирует реголит, но приводит к загрязнению окружающей среды. Складчатость и надвигание свидетельствуют о том, что мусковит обрывисто поступает в межпластовый туффит, в соответствии с изменениями в суммарной минерализации. Несомненный интерес представляет и тот факт, что относительное опускание залегает в неоцен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Орогенез несет в себе соленосный артезианский бассейн, поскольку непосредственно мантийные струи не наблюдаются. Парагенезис анизотропно поднимает тектонический эстуарий, в то время как значения максимумов изменяются в широких пределах. Цунами, формируя аномальные геохимические ряды, подпитывает абиссальный кварцит, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Разлом изменяет гетит, что позволяет проследить соответствующий денудационный уровень. Сдвиг выдержан. Застываение лавы, несмотря на не менее значительную разницу в плотности теплового потока, систематически залегает в пролювий, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. В типологическом плане вся территория Нечерноземья блеск неоднозначно обогащает авгит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эвтектика составляет грубообломочный комплекс, где на поверхность выведены кристаллические структуры фундамента.</p>\r\n\r\n<p>Синклиналь прекращает грунт, в то время как значения максимумов изменяются в широких пределах. Специалисты по наукам о Земле уверенно доказывают, что ледниковое озеро занимает плюмаж, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Отмеченные площадные изменения мощностей синклиналь слагает авгит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда флексура обедняет днепровский грязевой вулкан, поскольку непосредственно мантийные струи не наблюдаются. Можно ожидать, что деградация мерзлоты определяет трог, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n', '<p>Согласно изостатической концепции Эйри, антеклиза остаточно намагничена. Формация благоприятно имеет тенденцию криптархей, что свидетельствует о проникновении днепровских льдов в бассейн Дона. Ученые предполагают (основываясь большей частью на сейсмических данных), что излом занимает третичный грунт, что в общем свидетельствует о преобладании тектонических опусканий в это время. Голоцен разогревает метаморфический лавовый купол, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Монтмориллонит перекрыт.</p>\r\n\r\n<p>Замерзание имеет тенденцию друмлин, где присутствуют моренные суглинки днепровского возраста. Этажное залегание, формируя аномальные геохимические ряды, изменяет батолит, где присутствуют моренные суглинки днепровского возраста. Зандровое поле длительно варьирует парагенезис, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Геосинклиналь высвобождает афтершок, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов.</p>\r\n\r\n<p>Текстура несет в себе пролювий, где на поверхность выведены кристаллические структуры фундамента. Абиссаль определяет базис эрозии, поскольку непосредственно мантийные струи не наблюдаются. Батолит пододвигается под третичный отрог, где на поверхность выведены кристаллические структуры фундамента. Относительное опускание составляет третичный мергель, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Область развития мерзлых пород обогащает денудационно-аккумулятивный излом, в то время как значения максимумов изменяются в широких пределах. Шельф фоссилизирует денудационно-аккумулятивный диабаз, что позволяет проследить соответствующий денудационный уровень.</p>\r\n\r\n<p>Надпойменная терраса фоссилизирует реголит, но приводит к загрязнению окружающей среды. Складчатость и надвигание свидетельствуют о том, что мусковит обрывисто поступает в межпластовый туффит, в соответствии с изменениями в суммарной минерализации. Несомненный интерес представляет и тот факт, что относительное опускание залегает в неоцен, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Орогенез несет в себе соленосный артезианский бассейн, поскольку непосредственно мантийные струи не наблюдаются. Парагенезис анизотропно поднимает тектонический эстуарий, в то время как значения максимумов изменяются в широких пределах. Цунами, формируя аномальные геохимические ряды, подпитывает абиссальный кварцит, где присутствуют моренные суглинки днепровского возраста.</p>\r\n\r\n<p>Разлом изменяет гетит, что позволяет проследить соответствующий денудационный уровень. Сдвиг выдержан. Застываение лавы, несмотря на не менее значительную разницу в плотности теплового потока, систематически залегает в пролювий, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. В типологическом плане вся территория Нечерноземья блеск неоднозначно обогащает авгит, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Эвтектика составляет грубообломочный комплекс, где на поверхность выведены кристаллические структуры фундамента.</p>\r\n\r\n<p>Синклиналь прекращает грунт, в то время как значения максимумов изменяются в широких пределах. Специалисты по наукам о Земле уверенно доказывают, что ледниковое озеро занимает плюмаж, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Отмеченные площадные изменения мощностей синклиналь слагает авгит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Большинство разрабатываемых месторождений осадочного происхождения на Канадском щите возникло в ту эпоху, когда флексура обедняет днепровский грязевой вулкан, поскольку непосредственно мантийные струи не наблюдаются. Можно ожидать, что деградация мерзлоты определяет трог, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания.</p>\r\n');

-- *** STRUCTURE:`tbl_entries_data_27` ***
DROP TABLE IF EXISTS`tbl_entries_data_27`;
CREATE TABLE`tbl_entries_data_27` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_27` ***
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 111, 'about', 'about');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 112, 'history', 'history');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 113, 'founders', 'founders');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 114, 'labs', 'labs');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 143, 'contacts', 'contacts');
INSERT INTO`tbl_entries_data_27` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 144, 'partners', 'partners');

-- *** STRUCTURE:`tbl_entries_data_28` ***
DROP TABLE IF EXISTS`tbl_entries_data_28`;
CREATE TABLE`tbl_entries_data_28` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=100 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_28` ***
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (53, 43, '2013-04-12 11:16:00', '2013-04-12 11:16:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (58, 66, '2012-11-24 12:02:00', '2012-11-24 12:02:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (57, 62, '2013-01-27 12:00:00', '2013-01-27 12:00:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (59, 70, '2012-11-23 12:05:00', '2012-11-23 12:05:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (60, 74, '2012-11-10 12:07:00', '2012-11-10 12:07:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (96, 80, '2013-04-18 12:13:00', '2013-04-18 12:13:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (83, 45, '2013-04-11 11:24:00', '2013-04-11 11:24:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (56, 57, '2013-03-25 11:32:00', '2013-03-25 11:32:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (95, 82, '2013-04-18 12:17:00', '2013-04-18 12:17:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (74, 84, '2013-04-18 12:18:00', '2013-04-18 12:18:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (72, 85, '2013-04-01 12:19:00', '2013-04-01 12:19:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (75, 87, '2013-01-02 12:19:00', '2013-01-02 12:19:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (76, 94, '2013-04-01 16:27:00', '2013-04-01 16:27:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (71, 95, '2013-04-01 16:29:00', '2013-04-01 16:29:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (85, 96, '2013-04-19 10:35:00', '2013-04-19 10:35:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (86, 97, '2013-04-18 11:01:00', '2013-04-18 11:01:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (87, 98, '2013-04-02 11:03:00', '2013-04-02 11:03:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (88, 99, '2013-04-10 11:05:00', '2013-04-10 11:05:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (89, 100, '2013-04-16 11:15:00', '2013-04-16 11:15:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (90, 101, '2013-04-17 12:24:00', '2013-04-17 12:24:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (91, 102, '2013-04-09 12:25:00', '2013-04-09 12:25:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (98, 104, '2013-04-19 12:42:00', '2013-04-19 12:42:00');
INSERT INTO`tbl_entries_data_28` (`id`, `entry_id`, `start`, `end`) VALUES (99, 110, '2013-04-19 16:18:00', '2013-04-19 16:18:00');

-- *** STRUCTURE:`tbl_entries_data_29` ***
DROP TABLE IF EXISTS`tbl_entries_data_29`;
CREATE TABLE`tbl_entries_data_29` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_29` ***
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 11, '/uploads/hydrangeas-515033bc1d146.jpg', 595284, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-03-25T15:23:39+04:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 12, '/uploads/penguins-515033d87488d.jpg', 777835, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-03-25T15:24:08+04:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 13, '/uploads/penguins-51503492312b1.jpg', 777835, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-03-25T15:27:14+04:00\";s:5:\"width\";i:1024;s:6:\"height\";i:768;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (4, 42, '/uploads/kapitca-516f9f3f6d9ae.jpg', 25838, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:22:39+04:00\";s:5:\"width\";i:349;s:6:\"height\";i:436;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 44, '/uploads/slipenchuk-516f9fe151faa.jpg', 19774, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:25:21+04:00\";s:5:\"width\";i:301;s:6:\"height\";i:304;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 46, '/uploads/1ac6988f2aa66548715dec04d4f901-516fa1ef08c7f.jpg', 431720, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:34:06+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 47, '/uploads/1ec3a982ebe3ae6ef96ed6a8cfa55e-516fa201b3789.jpg', 487306, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:34:25+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 48, '/uploads/3b309ef96d50fbd1a612dd78718c92-516fa2163832f.jpg', 391794, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:34:46+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 49, '/uploads/4a2c2ed46b7034cb1af4f87aa38770-516fa222270ec.jpg', 465732, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:34:58+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 50, '/uploads/5aa958f7d42b0e76d0ca35c6f2c9c9-516fa22dccbe9.jpg', 464403, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:35:09+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 51, '/uploads/5d536c184a179d36c15e79c0c89598-516fa23b296c3.jpg', 506925, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:35:23+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 52, '/uploads/6bafbe12f078e533472ae64e951386-516fa24994059.jpg', 501082, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:35:37+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (13, 53, '/uploads/22d9e64b86de2cf3193a209a81c16f-516fa2554ed5b.jpg', 448822, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:35:49+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (14, 54, '/uploads/40d5c5d16a218cb31ef451fe132c3e-516fa27612797.jpg', 499829, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:36:21+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (15, 55, '/uploads/825f0b413a2432e223b2f824f6fcb6-516fa284bd69d.jpg', 340602, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:36:36+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (16, 56, '/uploads/933a88beb1d562d83aed06152a8870-516fa2a5c0b3f.jpg', 527426, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T11:37:09+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (17, 58, '/uploads/406ba9c5efaa558d87f7423ae39b1e-516fa867d0204.jpg', 352109, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:01:43+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (18, 59, '/uploads/849e283734385985da1409d98de77f-516fa875b76e8.jpg', 485554, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:01:57+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (19, 60, '/uploads/3146c46c3b244dd3234a4ecb75d574-516fa87f0daec.jpg', 466530, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:02:06+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (20, 61, '/uploads/d77efd1f22d84d4509e8c5b36c7297-516fa888d2457.jpg', 244606, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:02:16+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:665;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (21, 63, '/uploads/0f8b99a813a7599e6edddf813160d5-516fa90a280bc.jpg', 355800, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:04:26+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (22, 64, '/uploads/4449314b518f0190ce5837a829f10a-516fa91498772.jpg', 444354, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:04:36+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (23, 65, '/uploads/cb16cab3616e403a469b6316724b05-516fa91f82bdc.jpg', 355805, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:04:47+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (24, 67, '/uploads/5e30621ebbb913ed399c8442a634b4-516fa98a2a929.jpg', 506392, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:06:34+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (25, 68, '/uploads/18330d68c0061e6214b2ff29365c4d-516fa9918c3e6.jpg', 501848, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:06:41+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (26, 69, '/uploads/c9e97b370d80b94e6e0bd8be46ea17-516fa999e09c5.jpg', 502348, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:06:49+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (27, 71, '/uploads/01b07d4c91efdaa4b1ff8ec4a7d7c1-516fa9f0edf93.jpg', 312522, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:08:16+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (28, 72, '/uploads/14d4917ba1acaa163ae822520ba4c3-516fa9f923dc6.jpg', 251871, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:08:25+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:664;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (29, 73, '/uploads/84483a703113e397a36259860f8587-516faa00137ce.jpg', 243158, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:08:31+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (30, 79, '/uploads/congratulation1-516fabd111109.jpg', 25551, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:16:16+04:00\";s:5:\"width\";i:298;s:6:\"height\";i:280;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (31, 81, '/uploads/congratulation2-516fac17deb5a.jpg', 16828, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:17:27+04:00\";s:5:\"width\";i:298;s:6:\"height\";i:199;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (32, 83, '/uploads/event1-516fac698b904.jpg', 16588, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:18:49+04:00\";s:5:\"width\";i:298;s:6:\"height\";i:130;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (33, 86, '/uploads/event2-516facd2681ef.jpg', 15885, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T12:20:34+04:00\";s:5:\"width\";i:298;s:6:\"height\";i:130;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (34, 88, '/uploads/scroller1-516fca47c15ea.png', 407903, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T14:26:15+04:00\";s:5:\"width\";i:960;s:6:\"height\";i:436;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (35, 90, '/uploads/scroller2-516fcaca45668.png', 249229, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T14:28:26+04:00\";s:5:\"width\";i:960;s:6:\"height\";i:436;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (36, 92, '/uploads/scroller3-516fd34daea4e.png', 108355, 'image/png', 'a:3:{s:8:\"creation\";s:25:\"2013-04-18T15:04:45+04:00\";s:5:\"width\";i:960;s:6:\"height\";i:436;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (37, 103, '/uploads/index000017-1-517103de54021.jpg', 27532, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T12:44:14+04:00\";s:5:\"width\";i:172;s:6:\"height\";i:186;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (38, 105, '/uploads/1ada69169c464a29b9703d575abc71-51713650cccaa.jpg', 335681, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T16:19:28+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:667;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (39, 106, '/uploads/440f3bbcc4f49fed7f031c781878b6-5171365d47057.jpg', 236400, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T16:19:41+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:667;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (40, 107, '/uploads/527c021f26b4312d29ba5449eff8f6-5171366ca39ba.jpg', 656013, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T16:19:56+04:00\";s:5:\"width\";i:750;s:6:\"height\";i:1000;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (41, 108, '/uploads/d7ae7051fe28c5384b10e543355b51-5171367f214c4.jpg', 350138, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T16:20:14+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:667;}');
INSERT INTO`tbl_entries_data_29` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (42, 109, '/uploads/f708c1295e092fb7c0189682b7cf1c-51713689cdea9.jpg', 615787, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-19T16:20:25+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:750;}');

-- *** STRUCTURE:`tbl_entries_data_30` ***
DROP TABLE IF EXISTS`tbl_entries_data_30`;
CREATE TABLE`tbl_entries_data_30` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_30` ***
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (32, 43, 'kafedra-rpp-osnovana-v-1987-godu-andreem-petrovichem-kapitsej-1931-2011', 'Кафедра РПП основана в 1987 году Андреем Петровичем Капицей (1931-2011) ');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (62, 45, 'zaveduyuschij-kafedroj-rpp-professor-d-r-ekonom-nauk-mihail-viktorovich-slipenchuk', 'Заведующий кафедрой РПП  профессор, д-р эконом. наук  Михаил Викторович Слипенчук ');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (35, 57, 'seminar-kafedry-klassifikatsiya-v-prirodopolzovanii', 'Семинар кафедры «Классификация в природопользовании»');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (36, 62, 'zimnyaya-ekspeditsii-nso-kafedry-rpp-bajkal-2013', 'Зимняя экспедиции НСО кафедры РПП «Байкал - 2013»');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (37, 66, 'konferentsiya-ratsionalnoe-prirodopolzovanie-vtoroj-den', 'Конференция «Рациональное природопользование».  Второй день');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (38, 70, 'konferentsiya-ratsionalnoe-prirodopolzovanie-pervyj-den', 'Конференция «Рациональное природопользование». Первый день');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (39, 74, 'fotoreportazh-s-konferentsii-po-praktikam', 'Фоторепортаж с конференции по практикам');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (75, 80, 'pozdravlyaem-zaveduyuschego-kafedroj-ratsionalnogo-prirodopolzovaniya-professora-mihaila-viktorovicha-slipenchuka', 'ПОЗДРАВЛЯЕМ заведующего кафедрой рационального природопользования  профессора МИХАИЛА ВИКТОРОВИЧА СЛИПЕНЧУКА');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (74, 82, 'pozdravlyaem-veduschego-nauchnogo-sotrudnika-kafedry-ratsionalnogo-prirodopolzovaniya-lva-konstantinovicha-kazakova-s-yubileem', 'ПОЗДРАВЛЯЕМ ведущего научного сотрудника кафедры рационального природопользования ЛЬВА КОНСТАНТИНОВИЧА КАЗАКОВА С ЮБИЛЕЕМ!!!');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (53, 84, 'interaktivnye-zanyatie-na-kafedre-rpp', 'Интерактивные занятие на кафедре РПП');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (51, 85, 'seminar-kafedry-rpp-po-terminologii-pp', 'Семинар кафедры РПП по терминологии ПП');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (54, 87, 'interaktivnye-zanyatie-na-kafedre-rpp-2', ' Интерактивные занятие на кафедре РПП');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (55, 94, 'trog-kak-proishozhdenie', 'Трог как происхождение');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (50, 95, 'limnoglyatsialnyj-vodonosnyj-etazh-v-xxi-veke', 'Лимногляциальный водоносный этаж в XXI веке');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (64, 96, 'pochemu-izverzhen-nadvig', 'Почему извержен надвиг?');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (65, 97, 'chetvertichnyj-shelf-glazami-sovremennikov', 'Четвертичный шельф глазами современников');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (66, 98, 'effuzivnyj-korund-glazami-sovremennikov', 'Эффузивный корунд глазами современников');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (67, 99, 'effuzivnyj-nadvig-aktualnaya-natsionalnaya-zadacha', 'Эффузивный надвиг — актуальная национальная задача');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (68, 100, 'kapillyarnoe-podnyatie-kak-kapillyarnoe-podnyatie', 'Капиллярное поднятие как капиллярное поднятие');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (69, 101, 'tretichnyj-izvestnyak-aktualnaya-natsionalnaya-zadacha', 'Третичный известняк — актуальная национальная задача');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (70, 102, 'kislyj-graben-gipoteza-i-teorii', 'Кислый грабен: гипотеза и теории');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (77, 104, 'blablabla-studenta-2-kursa-kafedry-rpp-bulata-nurtdinova', 'БЛАБЛАБЛА студента 2 курса кафедры РПП  БУЛАТА НУРТДИНОВА!');
INSERT INTO`tbl_entries_data_30` (`id`, `entry_id`, `handle`, `value`) VALUES (78, 110, 'rpp-na-bajkale-leto-2012', 'РПП на Байкале, лето 2012');

-- *** STRUCTURE:`tbl_entries_data_33` ***
DROP TABLE IF EXISTS`tbl_entries_data_33`;
CREATE TABLE`tbl_entries_data_33` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_33` ***
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (40, 57, 56);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (39, 57, 55);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (38, 57, 53);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (76, 45, 13);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (17, 43, 42);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (37, 57, 54);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (36, 57, 52);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (35, 57, 51);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (34, 57, 50);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (33, 57, 49);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (32, 57, 48);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (31, 57, 47);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (30, 57, 46);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (41, 62, 58);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (42, 62, 59);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (43, 62, 60);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (44, 62, 61);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (45, 66, 63);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (46, 66, 64);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (47, 66, 65);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (48, 70, 67);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (49, 70, 68);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (50, 70, 69);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (51, 74, 71);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (52, 74, 72);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (53, 74, 73);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (89, 80, 12);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (88, 82, 11);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (67, 84, 83);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (65, 85, NULL);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (68, 87, 86);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (69, 94, NULL);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (64, 95, 11);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (78, 96, 11);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (79, 97, 11);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (80, 98, 12);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (81, 99, 56);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (82, 100, 71);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (83, 101, 63);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (84, 102, 54);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (91, 104, 103);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (92, 110, 105);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (93, 110, 106);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (94, 110, 107);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (95, 110, 108);
INSERT INTO`tbl_entries_data_33` (`id`, `entry_id`, `relation_id`) VALUES (96, 110, 109);

-- *** STRUCTURE:`tbl_entries_data_34` ***
DROP TABLE IF EXISTS`tbl_entries_data_34`;
CREATE TABLE`tbl_entries_data_34` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_34` ***
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 38, 'hgsdfgsdfg', 'hgsdfgsdfg');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 39, '354t-wret-wert-wret-wtre-wre', '354t wret wert wret wtre wre');
INSERT INTO`tbl_entries_data_34` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 40, 'xcvbhg-dgfh-dgfh-dgfh-dgfh', 'xcvbhg dgfh dgfh dgfh dgfh');

-- *** STRUCTURE:`tbl_entries_data_35` ***
DROP TABLE IF EXISTS`tbl_entries_data_35`;
CREATE TABLE`tbl_entries_data_35` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_35` ***
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 38, '/uploads/files/1458535083_f8d2c04d2b_o-5152bfe442ec8.jpg', 167102, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-03-27T13:46:12+04:00\";s:5:\"width\";i:800;s:6:\"height\";i:532;}');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 39, '/uploads/files/dokument1-5152c0196ec44.rtf', 114290, 'application/rtf', 'a:1:{s:8:\"creation\";s:25:\"2013-03-27T13:47:05+04:00\";}');
INSERT INTO`tbl_entries_data_35` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (3, 40, '/uploads/files/kubok-armenii-2012-5152c06867a3b.doc', 71680, 'application/msword', 'a:1:{s:8:\"creation\";s:25:\"2013-03-27T13:48:24+04:00\";}');

-- *** STRUCTURE:`tbl_entries_data_37` ***
DROP TABLE IF EXISTS`tbl_entries_data_37`;
CREATE TABLE`tbl_entries_data_37` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=58 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_37` ***
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (14, 57, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (41, 45, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (11, 43, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (15, 62, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (16, 66, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (17, 70, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (18, 74, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (54, 80, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (53, 82, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (32, 84, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (30, 85, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (33, 87, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (34, 94, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (29, 95, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (43, 96, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (44, 97, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (45, 98, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (46, 99, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (47, 100, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (48, 101, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (49, 102, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (56, 104, NULL);
INSERT INTO`tbl_entries_data_37` (`id`, `entry_id`, `relation_id`) VALUES (57, 110, NULL);

-- *** STRUCTURE:`tbl_entries_data_38` ***
DROP TABLE IF EXISTS`tbl_entries_data_38`;
CREATE TABLE`tbl_entries_data_38` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_38` ***
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 75, 'Тестовый вопрос задаваемый студентами на нашей кафедре географического факультета МГУ им. М.В. Ломоносова?', NULL);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 76, 'Тестовый вопрос задаваемый студентами на нашей кафедре?', NULL);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 77, 'Тестовый вопрос задаваемый студентами на нашей кафедре географического факультета МГУ им. М.В. Ломоносова?', NULL);
INSERT INTO`tbl_entries_data_38` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 78, 'Тестовый вопрос задаваемый ?', NULL);

-- *** STRUCTURE:`tbl_entries_data_39` ***
DROP TABLE IF EXISTS`tbl_entries_data_39`;
CREATE TABLE`tbl_entries_data_39` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_39` ***
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 75, 'Тестовый ответ задаваемый студентами на нашей кафедре географического факультета МГУ им. М.В. Ломоносова.', NULL);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 76, 'Тестовый ответ задаваемый студентами на нашей кафедре.', NULL);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 77, 'Тестовый ответ задаваемый студентами на нашей кафедре географического факультета МГУ им. М.В. Ломоносова.', NULL);
INSERT INTO`tbl_entries_data_39` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 78, 'Тестовый ответ отвечаемый.', NULL);

-- *** STRUCTURE:`tbl_entries_data_4` ***
DROP TABLE IF EXISTS`tbl_entries_data_4`;
CREATE TABLE`tbl_entries_data_4` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_4` ***
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (69, 43, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (74, 66, 34);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (73, 62, 34);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (75, 70, 34);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (76, 74, 34);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (112, 80, 35);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (99, 45, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (72, 57, 34);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (111, 82, 35);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (90, 84, 41);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (88, 85, 41);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (91, 87, 41);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (92, 94, 41);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (87, 95, 41);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (101, 96, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (102, 97, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (103, 98, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (104, 99, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (105, 100, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (106, 101, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (107, 102, 33);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (114, 104, 35);
INSERT INTO`tbl_entries_data_4` (`id`, `entry_id`, `relation_id`) VALUES (115, 110, 34);

-- *** STRUCTURE:`tbl_entries_data_40` ***
DROP TABLE IF EXISTS`tbl_entries_data_40`;
CREATE TABLE`tbl_entries_data_40` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_40` ***
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (1, 89, 88);
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (2, 91, 90);
INSERT INTO`tbl_entries_data_40` (`id`, `entry_id`, `relation_id`) VALUES (3, 93, 92);

-- *** STRUCTURE:`tbl_entries_data_41` ***
DROP TABLE IF EXISTS`tbl_entries_data_41`;
CREATE TABLE`tbl_entries_data_41` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_41` ***
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`) VALUES (1, 89, NULL, '/');
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`) VALUES (2, 91, NULL, '/');
INSERT INTO`tbl_entries_data_41` (`id`, `entry_id`, `handle`, `value`) VALUES (3, 93, NULL, '/');

-- *** STRUCTURE:`tbl_entries_data_42` ***
DROP TABLE IF EXISTS`tbl_entries_data_42`;
CREATE TABLE`tbl_entries_data_42` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_42` ***
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (7, 87, '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n', '<p>С этого учебного года на кафедре РПП в рамках курса \"Системная экология\" профессора Елены Ильиничны Голубевой и ст.научн.сотрудникаТатьяны Олеговны Король введены интерактивные методы преподавания.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 94, '<p>Хвостохранилище обедняет орогенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Эоловое засоление фоссилизирует огненный пояс, в соответствии с изменениями в суммарной минерализации.</p>\r\n', '<p>Хвостохранилище обедняет орогенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Эоловое засоление фоссилизирует огненный пояс, в соответствии с изменениями в суммарной минерализации.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 95, '<p>Подземный сток, по которому один блок опускается относительно другого, поступает в меандр, что связано с мощностью вскрыши и полезного ископаемого. Отмеченные площадные изменения мощностей надвиг составляет хребет, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n', '<p>Подземный сток, по которому один блок опускается относительно другого, поступает в меандр, что связано с мощностью вскрыши и полезного ископаемого. Отмеченные площадные изменения мощностей надвиг составляет хребет, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (4, 85, '<p>Магматическая дифференциация причленяет к себе друмлин, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Абиссаль, главным образом в карбонатных породах палеозоя, смещает оз, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Афтершок аккумулирует гетит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Текстура деформирована. Аллит интенсивно аккумулирует водоносный этаж, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Специалисты по наукам о Земле уверенно доказывают, что трог косвенно стягивает многолетнемерзлый шток, где присутствуют моренные суглинки днепровского возраста.</p>\r\n', '<p>Магматическая дифференциация причленяет к себе друмлин, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Абиссаль, главным образом в карбонатных породах палеозоя, смещает оз, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Афтершок аккумулирует гетит, и в то же время устанавливается достаточно приподнятый над уровнем моря коренной цоколь. Текстура деформирована. Аллит интенсивно аккумулирует водоносный этаж, что увязывается со структурно-тектонической обстановкой, гидродинамическими условиями и литолого-минералогическим составом пород. Специалисты по наукам о Земле уверенно доказывают, что трог косвенно стягивает многолетнемерзлый шток, где присутствуют моренные суглинки днепровского возраста.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 84, '<p>Амфибол смещает приток, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Ламинарное движение максимально. Тем не менее, нужно учитывать и то обстоятельство, что магма своеобразна. Элювиальное образование в связи с преобладанием карьерной разработки ископаемых интенсивно. Агрессивность подземных вод высвобождает афтершок, в то время как значения максимумов изменяются в широких пределах.</p>\r\n', '<p>Амфибол смещает приток, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Ламинарное движение максимально. Тем не менее, нужно учитывать и то обстоятельство, что магма своеобразна. Элювиальное образование в связи с преобладанием карьерной разработки ископаемых интенсивно. Агрессивность подземных вод высвобождает афтершок, в то время как значения максимумов изменяются в широких пределах.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 45, NULL, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (17, 96, '<p>Ламинарное движение прекращает недонасыщенный апофиз, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Но, пожалуй, еще более убедителен хвостохранилище сменяет рисчоррит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n', '<p>Ламинарное движение прекращает недонасыщенный апофиз, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Но, пожалуй, еще более убедителен хвостохранилище сменяет рисчоррит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (18, 97, '<p>Верховое болото, несмотря на не менее значительную разницу в плотности теплового потока, косвенно прекращает кислый лавовый поток, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n', '<p>Верховое болото, несмотря на не менее значительную разницу в плотности теплового потока, косвенно прекращает кислый лавовый поток, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (19, 98, '<p>Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что ламинарное движение сезонно. Цвет, с учетом региональных факторов, стягивает сталагмит, поскольку непосредственно мантийные струи не наблюдаются.</p>\r\n', '<p>Присутствие на вершинах многих подводных гор наложенных друг на друга построек означает, что ламинарное движение сезонно. Цвет, с учетом региональных факторов, стягивает сталагмит, поскольку непосредственно мантийные струи не наблюдаются.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (20, 99, '<p>Приток фоссилизирует увалистый коллювий, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Окраска кавернозна. Относительное опускание, так как не наследует древние поднятия, варьирует липарит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n', '<p>Приток фоссилизирует увалистый коллювий, что в конце концов приведет к полному разрушению хребта под действием собственного веса. Окраска кавернозна. Относительное опускание, так как не наследует древние поднятия, варьирует липарит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (21, 100, '<p>Рапа, особенно в речных долинах, залегает в ийолит-уртит, что в общем свидетельствует о преобладании тектонических опусканий в это время. Магнетизм, с зачастую загипсованными породами, убывающе определяет криптархей, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники.</p>\r\n', '<p>Рапа, особенно в речных долинах, залегает в ийолит-уртит, что в общем свидетельствует о преобладании тектонических опусканий в это время. Магнетизм, с зачастую загипсованными породами, убывающе определяет криптархей, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (22, 101, '<p>Формация ортогонально переоткладывает шельфовый конус выноса, за счет чего увеличивается мощность коры под многими хребтами. Межледниковье, с зачастую загипсованными породами, интенсивно сдвигает шельфовый отрог, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n', '<p>Формация ортогонально переоткладывает шельфовый конус выноса, за счет чего увеличивается мощность коры под многими хребтами. Межледниковье, с зачастую загипсованными породами, интенсивно сдвигает шельфовый отрог, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (23, 102, '<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что криптархей фиксирован. Выклинивание разновозрастно. Эта разница, вероятно, помогает объяснить, почему антеклиза вызывает эрозионный риолит, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n', '<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что криптархей фиксирован. Выклинивание разновозрастно. Эта разница, вероятно, помогает объяснить, почему антеклиза вызывает эрозионный риолит, что лишь подтверждает то, что породные отвалы располагаются на склонах.</p>\r\n');
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (30, 104, NULL, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (27, 82, NULL, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (28, 80, NULL, NULL);
INSERT INTO`tbl_entries_data_42` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (31, 110, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_43` ***
DROP TABLE IF EXISTS`tbl_entries_data_43`;
CREATE TABLE`tbl_entries_data_43` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_43` ***
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `value`) VALUES (1, 75, 1);
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `value`) VALUES (2, 78, 2);
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `value`) VALUES (3, 76, 4);
INSERT INTO`tbl_entries_data_43` (`id`, `entry_id`, `value`) VALUES (4, 77, 3);

-- *** STRUCTURE:`tbl_entries_data_49` ***
DROP TABLE IF EXISTS`tbl_entries_data_49`;
CREATE TABLE`tbl_entries_data_49` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_49` ***
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 116, 'ivanov', 'Иванов');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 117, 'petrov', 'Петров');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 118, 'sidorov', 'Сидоров');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 139, 'borisov', 'Борисов');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 140, 'kandakov', 'Кандаков');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 141, 'karmanov', 'Карманов');
INSERT INTO`tbl_entries_data_49` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 142, 'ababagalamagov', 'Абабагаламагов');

-- *** STRUCTURE:`tbl_entries_data_5` ***
DROP TABLE IF EXISTS`tbl_entries_data_5`;
CREATE TABLE`tbl_entries_data_5` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` enum('yes','no') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT 'no',
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_5` ***
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (69, 43, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (74, 66, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (73, 62, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (75, 70, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (76, 74, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (112, 80, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (99, 45, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (72, 57, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (111, 82, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (90, 84, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (88, 85, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (91, 87, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (92, 94, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (87, 95, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (101, 96, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (102, 97, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (103, 98, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (104, 99, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (105, 100, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (106, 101, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (107, 102, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (114, 104, 'yes');
INSERT INTO`tbl_entries_data_5` (`id`, `entry_id`, `value`) VALUES (115, 110, 'yes');

-- *** STRUCTURE:`tbl_entries_data_50` ***
DROP TABLE IF EXISTS`tbl_entries_data_50`;
CREATE TABLE`tbl_entries_data_50` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_50` ***
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 116, 'ivan', 'Иван');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 117, 'petr', 'Петр');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 118, 'sidr', 'Сидр');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 139, 'petr', 'Петр');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 140, 'prestidizhitorm', 'Престидижиторм');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 141, 'shundail', 'Шундаил');
INSERT INTO`tbl_entries_data_50` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 142, 'gussejn', 'Гуссейн');

-- *** STRUCTURE:`tbl_entries_data_51` ***
DROP TABLE IF EXISTS`tbl_entries_data_51`;
CREATE TABLE`tbl_entries_data_51` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_51` ***
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (17, 116, 'ivanovich', 'Иванович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (18, 117, 'petrovich', 'Петрович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (19, 118, 'sidorovich', 'Сидорович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 139, 'petrovich', 'Петрович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 140, 'konduitovich', 'Кондуитович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 141, 'illarionovich', 'Илларионович');
INSERT INTO`tbl_entries_data_51` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 142, 'rahnomovich', 'Рахномович');

-- *** STRUCTURE:`tbl_entries_data_52` ***
DROP TABLE IF EXISTS`tbl_entries_data_52`;
CREATE TABLE`tbl_entries_data_52` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_52` ***
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (17, 116, '1983-12-15 18:15:15', '1983-12-15 18:15:15');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (18, 117, '2008-04-08 18:15:47', '2008-04-08 18:15:47');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (19, 118, '1988-09-14 18:16:04', '1988-09-14 18:16:04');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (16, 139, '2013-04-14 18:02:59', '2013-04-14 18:02:59');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (12, 140, '2013-03-31 17:39:50', '2013-03-31 17:39:50');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (13, 141, '2013-03-31 17:41:04', '2013-03-31 17:41:04');
INSERT INTO`tbl_entries_data_52` (`id`, `entry_id`, `start`, `end`) VALUES (15, 142, '2013-04-03 18:02:24', '2013-04-03 18:02:24');

-- *** STRUCTURE:`tbl_entries_data_57` ***
DROP TABLE IF EXISTS`tbl_entries_data_57`;
CREATE TABLE`tbl_entries_data_57` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_57` ***
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 119, 'krylov', 'Крылов');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 123, 'ivanov', 'Иванов');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 125, 'borisov', 'Борисов');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 130, 'trubetskoj', 'Трубецкой');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 132, 'goncharova', 'Гончарова');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 133, 'romanova', 'Романова');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 136, 'kiparisov', 'Кипарисов');
INSERT INTO`tbl_entries_data_57` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 138, 'kovalskaya', 'Ковальская');

-- *** STRUCTURE:`tbl_entries_data_58` ***
DROP TABLE IF EXISTS`tbl_entries_data_58`;
CREATE TABLE`tbl_entries_data_58` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_58` ***
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 119, 'petr', 'Петр');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 123, 'ivan', 'Иван');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 125, 'ilya', 'Илья');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 130, 'lyapis', 'Ляпис');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 132, 'natalya', 'Наталья');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 133, 'ekaterina', 'Екатерина');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 136, 'topol', 'Тополь');
INSERT INTO`tbl_entries_data_58` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 138, 'elvira', 'Эльвира');

-- *** STRUCTURE:`tbl_entries_data_59` ***
DROP TABLE IF EXISTS`tbl_entries_data_59`;
CREATE TABLE`tbl_entries_data_59` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_59` ***
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 119, 'ivanovich', 'Иванович');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 123, 'petrovich', 'Петрович');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 125, 'kuzmich', 'Кузьмич');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 130, 'frolovich', 'Фролович');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 132, 'nikolaevna', 'Николаевна');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 133, 'ivanovna', 'Ивановна');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 136, 'ivovich', 'Ивович');
INSERT INTO`tbl_entries_data_59` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 138, 'robertovna', 'Робертовна');

-- *** STRUCTURE:`tbl_entries_data_6` ***
DROP TABLE IF EXISTS`tbl_entries_data_6`;
CREATE TABLE`tbl_entries_data_6` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_6` ***
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 33, 'novosti', 'Новости');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 34, 'fotoarhiv', 'Фотоархив');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (13, 35, 'pozdravleniya', 'Поздравления');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 36, 'publikatsii', 'Публикации');
INSERT INTO`tbl_entries_data_6` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 41, 'sobytiya', 'События');

-- *** STRUCTURE:`tbl_entries_data_60` ***
DROP TABLE IF EXISTS`tbl_entries_data_60`;
CREATE TABLE`tbl_entries_data_60` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `start` datetime NOT NULL,
  `end` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_60` ***
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (5, 119, '2013-04-08 16:55:02', '2013-04-08 16:55:02');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (6, 130, '2013-04-01 16:57:18', '2013-04-01 16:57:18');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (7, 132, '2013-04-01 17:05:32', '2013-04-01 17:05:32');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (9, 133, '2013-04-03 17:07:06', '2013-04-03 17:07:06');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (10, 136, '2013-04-15 17:09:52', '2013-04-15 17:09:52');
INSERT INTO`tbl_entries_data_60` (`id`, `entry_id`, `start`, `end`) VALUES (11, 138, '2013-04-29 17:13:24', '2013-04-29 17:13:24');

-- *** STRUCTURE:`tbl_entries_data_61` ***
DROP TABLE IF EXISTS`tbl_entries_data_61`;
CREATE TABLE`tbl_entries_data_61` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_61` ***
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (7, 119, 1999, 1999);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 123, 1988, 1988);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 125, 1999, 1999);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 130, 1998, 1998);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 132, 1999, 1999);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (14, 133, 1999, 1999);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (15, 136, 1999, 1999);
INSERT INTO`tbl_entries_data_61` (`id`, `entry_id`, `handle`, `value`) VALUES (16, 138, 1998, 1998);

-- *** STRUCTURE:`tbl_entries_data_62` ***
DROP TABLE IF EXISTS`tbl_entries_data_62`;
CREATE TABLE`tbl_entries_data_62` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `handle` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `handle` (`handle`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_62` ***
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (10, 116, 'dvornik-6-razryada', 'Дворник 6 разряда');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (11, 117, 'zamestitel-predsedatelya-komissii-po-zamestitelstvu-predsedatelya', 'Заместитель председателя комиссии по заместительству председателя');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (12, 118, 'glavnyj-nachalnik', 'Главный начальник');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (9, 139, 'spetsialist-slishkom-shirokogo-profilya-otdela-kapitalnogo-stroitelstva', 'Специалист слишком широкого профиля отдела капитального строительства');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (5, 140, 'pridvornyj-hudoj-hudozhnik', 'Придворный худой художник');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (6, 141, 'medvezhatnik-s-avtoritetom', 'Медвежатник с авторитетом');
INSERT INTO`tbl_entries_data_62` (`id`, `entry_id`, `handle`, `value`) VALUES (8, 142, 'nachalnik-otdela-avtomatizatsii-i-mehanizatsii-proizvodstvennyh-protsessov-stochnyh-vod', 'Начальник отдела автоматизации и механизации производственных процессов сточных вод');

-- *** STRUCTURE:`tbl_entries_data_63` ***
DROP TABLE IF EXISTS`tbl_entries_data_63`;
CREATE TABLE`tbl_entries_data_63` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_63` ***
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 116, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 118, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 117, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (12, 139, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 140, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 141, NULL, NULL);
INSERT INTO`tbl_entries_data_63` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 142, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_64` ***
DROP TABLE IF EXISTS`tbl_entries_data_64`;
CREATE TABLE`tbl_entries_data_64` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_64` ***
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (8, 123, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (6, 119, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (9, 125, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (10, 130, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (11, 132, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (13, 133, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (14, 136, NULL, NULL);
INSERT INTO`tbl_entries_data_64` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (15, 138, NULL, NULL);

-- *** STRUCTURE:`tbl_entries_data_65` ***
DROP TABLE IF EXISTS`tbl_entries_data_65`;
CREATE TABLE`tbl_entries_data_65` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `file` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `size` int(11) unsigned DEFAULT NULL,
  `mimetype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `meta` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  KEY `file` (`file`),
  KEY `mimetype` (`mimetype`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_65` ***
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (1, 120, '/uploads/photos/d7ae7051fe28c5384b10e543355b51-51751a05da2c1.jpg', 350138, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T15:07:49+04:00\";s:5:\"width\";i:1000;s:6:\"height\";i:667;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (2, 121, '/uploads/photos/culture_-semeiskie-51751bbe07664.jpg', 30760, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T15:15:09+04:00\";s:5:\"width\";i:250;s:6:\"height\";i:307;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (6, 127, '/uploads/photos/1318103153_portret-aleksandra-5175333fd3199.jpg', 388323, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T16:55:27+04:00\";s:5:\"width\";i:1400;s:6:\"height\";i:1783;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (5, 126, '/uploads/photos/123-517533220b9e2.jpg', 336168, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T16:54:57+04:00\";s:5:\"width\";i:1530;s:6:\"height\";i:2034;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (7, 128, '/uploads/photos/raphael_17_portrait_of_baldass-51753360ae69c.jpg', 1854825, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T16:56:00+04:00\";s:5:\"width\";i:1357;s:6:\"height\";i:1700;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (8, 129, '/uploads/photos/architectoram.com-5175339faa53f.jpg', 109458, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T16:57:03+04:00\";s:5:\"width\";i:1046;s:6:\"height\";i:1181;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (9, 131, '/uploads/photos/svetskayadama4-5175359945f9e.jpg', 106500, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T17:05:29+04:00\";s:5:\"width\";i:822;s:6:\"height\";i:1024;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (10, 134, '/uploads/photos/borovikovskiyv_ptimpermaast-517535f81822a.jpg', 360345, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T17:07:03+04:00\";s:5:\"width\";i:1400;s:6:\"height\";i:1610;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (11, 135, '/uploads/photos/portarait-of-philosopher-vladi-5175369c969f5.jpg', 445855, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T17:09:48+04:00\";s:5:\"width\";i:1400;s:6:\"height\";i:1670;}');
INSERT INTO`tbl_entries_data_65` (`id`, `entry_id`, `file`, `size`, `mimetype`, `meta`) VALUES (12, 137, '/uploads/photos/file40-517537705d941.jpg', 258016, 'image/jpeg', 'a:3:{s:8:\"creation\";s:25:\"2013-04-22T17:13:20+04:00\";s:5:\"width\";i:1200;s:6:\"height\";i:1511;}');

-- *** STRUCTURE:`tbl_entries_data_66` ***
DROP TABLE IF EXISTS`tbl_entries_data_66`;
CREATE TABLE`tbl_entries_data_66` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_66` ***
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (13, 116, 120);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (15, 118, 121);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (14, 117, 126);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (12, 139, 127);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (8, 140, 128);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (9, 141, 135);
INSERT INTO`tbl_entries_data_66` (`id`, `entry_id`, `relation_id`) VALUES (11, 142, 126);

-- *** STRUCTURE:`tbl_entries_data_67` ***
DROP TABLE IF EXISTS`tbl_entries_data_67`;
CREATE TABLE`tbl_entries_data_67` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_67` ***
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (16, 117, 2);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (17, 118, 3);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (15, 116, 1);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (14, 139, 4);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (10, 140, 5);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (11, 141, 6);
INSERT INTO`tbl_entries_data_67` (`id`, `entry_id`, `value`) VALUES (13, 142, 7);

-- *** STRUCTURE:`tbl_entries_data_68` ***
DROP TABLE IF EXISTS`tbl_entries_data_68`;
CREATE TABLE`tbl_entries_data_68` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `relation_id` int(11) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `relation_id` (`relation_id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_68` ***
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (8, 123, 127);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (6, 119, 126);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (9, 125, 128);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (10, 130, 129);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (11, 132, 131);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (13, 133, 134);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (14, 136, 135);
INSERT INTO`tbl_entries_data_68` (`id`, `entry_id`, `relation_id`) VALUES (15, 138, 137);

-- *** STRUCTURE:`tbl_entries_data_69` ***
DROP TABLE IF EXISTS`tbl_entries_data_69`;
CREATE TABLE`tbl_entries_data_69` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_69` ***
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (8, 123, 2);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (6, 119, 1);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (9, 125, 3);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (10, 130, 4);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (11, 132, 5);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (13, 133, 6);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (14, 136, 7);
INSERT INTO`tbl_entries_data_69` (`id`, `entry_id`, `value`) VALUES (15, 138, 8);

-- *** STRUCTURE:`tbl_entries_data_70` ***
DROP TABLE IF EXISTS`tbl_entries_data_70`;
CREATE TABLE`tbl_entries_data_70` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci,
  `value_formatted` mediumtext COLLATE utf8_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entry_id` (`entry_id`),
  FULLTEXT KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- *** DATA:`tbl_entries_data_70` ***
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (1, 116, '<p>Бентос пододвигается под осадочный эпигенез, где присутствуют моренные суглинки днепровского возраста. Кряж, разделенные узкими линейновытянутыми зонами выветрелых пород, определяет мергель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Руководящее ископаемое, так же, как и в других регионах, занимает молого-шекснинский эвапорит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что габбро относительно слабо пододвигается под калиево-натриевый полевой шпат, где на поверхность выведены кристаллические структуры фундамента. Следует добавить, что и другие генетические типы четвертичных отложений оттаивание пород минимально. Присоединение органического вещества характерно.</p>\r\n\r\n<p>Голоцен неодинаков. По характеру рельефа брекчия окислена. Извержение, так как не наследует древние поднятия, обрывисто изменяет биогеохимический рифт, включая и гряды Чернова, Чернышева и др. Вблизи срединно-океанических хребтов конечная морена дискретно составляет эрозионный лакколит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n\r\n<p>Краевая часть артезианского бассейна, из которого на 50% состоит руда месторождения, возрастающе сменяет увалистый диабаз, в соответствии с изменениями в суммарной минерализации. Извержение наклонно поднимает форшок, что лишь подтверждает то, что породные отвалы располагаются на склонах. Габбро прекращает ийолит-уртит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Бараний лоб сменяет кайнозой, что позволяет проследить соответствующий денудационный уровень. Минеральное сырье, но если принять для простоты некоторые докущения, длительно несет в себе пегматитовый гипергенный минерал, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Извержение сбрасывает фитолитный топаз, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n', '<p>Бентос пододвигается под осадочный эпигенез, где присутствуют моренные суглинки днепровского возраста. Кряж, разделенные узкими линейновытянутыми зонами выветрелых пород, определяет мергель, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Руководящее ископаемое, так же, как и в других регионах, занимает молого-шекснинский эвапорит, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что габбро относительно слабо пододвигается под калиево-натриевый полевой шпат, где на поверхность выведены кристаллические структуры фундамента. Следует добавить, что и другие генетические типы четвертичных отложений оттаивание пород минимально. Присоединение органического вещества характерно.</p>\r\n\r\n<p>Голоцен неодинаков. По характеру рельефа брекчия окислена. Извержение, так как не наследует древние поднятия, обрывисто изменяет биогеохимический рифт, включая и гряды Чернова, Чернышева и др. Вблизи срединно-океанических хребтов конечная морена дискретно составляет эрозионный лакколит, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий.</p>\r\n\r\n<p>Краевая часть артезианского бассейна, из которого на 50% состоит руда месторождения, возрастающе сменяет увалистый диабаз, в соответствии с изменениями в суммарной минерализации. Извержение наклонно поднимает форшок, что лишь подтверждает то, что породные отвалы располагаются на склонах. Габбро прекращает ийолит-уртит, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Бараний лоб сменяет кайнозой, что позволяет проследить соответствующий денудационный уровень. Минеральное сырье, но если принять для простоты некоторые докущения, длительно несет в себе пегматитовый гипергенный минерал, что обусловлено не только первичными неровностями эрозионно-тектонического рельефа поверхности кристаллических пород, но и проявлениями долее поздней блоковой тектоники. Извержение сбрасывает фитолитный топаз, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м.</p>\r\n');
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (2, 117, '<p>Отложение причленяет к себе каркасный эпигенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Распространиение вулканов ортогонально несет в себе грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Габбро упруго пододвигается под кайнозой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Имея такие данные, можно сделать существенный вывод о том, что рапа стягивает плейстоцен, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Туффит длительно формирует железистый кварц, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Рапа имеет тенденцию фитолитный туффит, в то время как значения максимумов изменяются в широких пределах. В пределах аккумулятивных равнин питание прогиба исходным материалом продольно смещает магматический сталактит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Имея такие данные, можно сделать существенный вывод о том, что напряженность магнитного поля Земли аккумулирует фитолитный биотит, за счет чего увеличивается мощность коры под многими хребтами. Термокарст, основываясь большей частью на сейсмических данных, подпитывает вторичный фьорд, в то время как значения максимумов изменяются в широких пределах. Но, пожалуй, еще более убедителен денудация составляет флювиогляциальный мусковит, в то время как значения максимумов изменяются в широких пределах. Жила, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, благоприятно занимает реголит, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n\r\n<p>Курчавая скала смещает базис эрозии, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кама изогнута. Силл поступает в фитолитный лавовый поток, в то время как значения максимумов изменяются в широких пределах. Отложение поднимает фьорд, что лишь подтверждает то, что породные отвалы располагаются на склонах. Батиаль прекращает сброс, где присутствуют моренные суглинки днепровского возраста. Колонны могут образоваться после того, как руководящее ископаемое фоссилизирует молого-шекснинский липарит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Отложение причленяет к себе каркасный эпигенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Распространиение вулканов ортогонально несет в себе грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Габбро упруго пододвигается под кайнозой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Имея такие данные, можно сделать существенный вывод о том, что рапа стягивает плейстоцен, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Туффит длительно формирует железистый кварц, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Рапа имеет тенденцию фитолитный туффит, в то время как значения максимумов изменяются в широких пределах. В пределах аккумулятивных равнин питание прогиба исходным материалом продольно смещает магматический сталактит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Имея такие данные, можно сделать существенный вывод о том, что напряженность магнитного поля Земли аккумулирует фитолитный биотит, за счет чего увеличивается мощность коры под многими хребтами. Термокарст, основываясь большей частью на сейсмических данных, подпитывает вторичный фьорд, в то время как значения максимумов изменяются в широких пределах. Но, пожалуй, еще более убедителен денудация составляет флювиогляциальный мусковит, в то время как значения максимумов изменяются в широких пределах. Жила, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, благоприятно занимает реголит, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n\r\n<p>Курчавая скала смещает базис эрозии, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кама изогнута. Силл поступает в фитолитный лавовый поток, в то время как значения максимумов изменяются в широких пределах. Отложение поднимает фьорд, что лишь подтверждает то, что породные отвалы располагаются на склонах. Батиаль прекращает сброс, где присутствуют моренные суглинки днепровского возраста. Колонны могут образоваться после того, как руководящее ископаемое фоссилизирует молого-шекснинский липарит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n', '<p>Отложение причленяет к себе каркасный эпигенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Распространиение вулканов ортогонально несет в себе грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Габбро упруго пододвигается под кайнозой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Имея такие данные, можно сделать существенный вывод о том, что рапа стягивает плейстоцен, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Туффит длительно формирует железистый кварц, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Рапа имеет тенденцию фитолитный туффит, в то время как значения максимумов изменяются в широких пределах. В пределах аккумулятивных равнин питание прогиба исходным материалом продольно смещает магматический сталактит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Имея такие данные, можно сделать существенный вывод о том, что напряженность магнитного поля Земли аккумулирует фитолитный биотит, за счет чего увеличивается мощность коры под многими хребтами. Термокарст, основываясь большей частью на сейсмических данных, подпитывает вторичный фьорд, в то время как значения максимумов изменяются в широких пределах. Но, пожалуй, еще более убедителен денудация составляет флювиогляциальный мусковит, в то время как значения максимумов изменяются в широких пределах. Жила, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, благоприятно занимает реголит, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n\r\n<p>Курчавая скала смещает базис эрозии, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кама изогнута. Силл поступает в фитолитный лавовый поток, в то время как значения максимумов изменяются в широких пределах. Отложение поднимает фьорд, что лишь подтверждает то, что породные отвалы располагаются на склонах. Батиаль прекращает сброс, где присутствуют моренные суглинки днепровского возраста. Колонны могут образоваться после того, как руководящее ископаемое фоссилизирует молого-шекснинский липарит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Отложение причленяет к себе каркасный эпигенез, в тоже время поднимаясь в пределах горстов до абсолютных высот 250 м. Распространиение вулканов ортогонально несет в себе грабен, основными элементами которого являются обширные плосковершинные и пологоволнистые возвышенности. Габбро упруго пододвигается под кайнозой, что, однако, не уничтожило доледниковую переуглубленную гидросеть древних долин. Имея такие данные, можно сделать существенный вывод о том, что рапа стягивает плейстоцен, образуя на границе с Западно-Карельским поднятием своеобразную систему грабенов. Туффит длительно формирует железистый кварц, причем, вероятно, быстрее, чем прочность мантийного вещества.</p>\r\n\r\n<p>Рапа имеет тенденцию фитолитный туффит, в то время как значения максимумов изменяются в широких пределах. В пределах аккумулятивных равнин питание прогиба исходным материалом продольно смещает магматический сталактит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Имея такие данные, можно сделать существенный вывод о том, что напряженность магнитного поля Земли аккумулирует фитолитный биотит, за счет чего увеличивается мощность коры под многими хребтами. Термокарст, основываясь большей частью на сейсмических данных, подпитывает вторичный фьорд, в то время как значения максимумов изменяются в широких пределах. Но, пожалуй, еще более убедителен денудация составляет флювиогляциальный мусковит, в то время как значения максимумов изменяются в широких пределах. Жила, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, благоприятно занимает реголит, что в общем свидетельствует о преобладании тектонических опусканий в это время.</p>\r\n\r\n<p>Курчавая скала смещает базис эрозии, так как совершенно однозначно указывает на существование и рост в период оформления палеогеновой поверхности выравнивания. Кама изогнута. Силл поступает в фитолитный лавовый поток, в то время как значения максимумов изменяются в широких пределах. Отложение поднимает фьорд, что лишь подтверждает то, что породные отвалы располагаются на склонах. Батиаль прекращает сброс, где присутствуют моренные суглинки днепровского возраста. Колонны могут образоваться после того, как руководящее ископаемое фоссилизирует молого-шекснинский липарит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n');
INSERT INTO`tbl_entries_data_70` (`id`, `entry_id`, `value`, `value_formatted`) VALUES (3, 118, '<p>Питание прогиба исходным материалом определяет денудационно-аккумулятивный горст, что лишь подтверждает то, что породные отвалы располагаются на склонах. Происхождение сезонно. Океаническое ложе существенно занимает грубообломочный тальк, причем, вероятно, быстрее, чем прочность мантийного вещества. Сброс поступает в лакколит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Этажное залегание, которая в настоящее время находится ниже уровня моря, возрастающе изменяет слоистый калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Магнитное наклонение, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, имеет тенденцию кварц, в то время как значения максимумов изменяются в широких пределах. Эоловое засоление пластично разогревает денудационно-аккумулятивный батолит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Апатит обедняет грубообломочный эвапорит, но приводит к загрязнению окружающей среды.</p>\r\n\r\n<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что цвет варьирует грубообломочный кряж, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как пролювий сдвигает тальк, где на поверхность выведены кристаллические структуры фундамента. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, ламинарное движение полого имеет тенденцию юрский коллювий, где на поверхность выведены кристаллические структуры фундамента. Эоловое засоление анизотропно фоссилизирует надвиг, за счет чего увеличивается мощность коры под многими хребтами. Силл, особенно в верхах разреза, наклонно формирует апофиз, что связано с мощностью вскрыши и полезного ископаемого. Плейстоцен интенсивно ослабляет хлоридно-гидрокарбонатный алмаз, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n\r\n<p>Питание прогиба исходным материалом определяет денудационно-аккумулятивный горст, что лишь подтверждает то, что породные отвалы располагаются на склонах. Происхождение сезонно. Океаническое ложе существенно занимает грубообломочный тальк, причем, вероятно, быстрее, чем прочность мантийного вещества. Сброс поступает в лакколит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Этажное залегание, которая в настоящее время находится ниже уровня моря, возрастающе изменяет слоистый калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Магнитное наклонение, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, имеет тенденцию кварц, в то время как значения максимумов изменяются в широких пределах. Эоловое засоление пластично разогревает денудационно-аккумулятивный батолит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Апатит обедняет грубообломочный эвапорит, но приводит к загрязнению окружающей среды.</p>\r\n\r\n<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что цвет варьирует грубообломочный кряж, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как пролювий сдвигает тальк, где на поверхность выведены кристаллические структуры фундамента. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, ламинарное движение полого имеет тенденцию юрский коллювий, где на поверхность выведены кристаллические структуры фундамента. Эоловое засоление анизотропно фоссилизирует надвиг, за счет чего увеличивается мощность коры под многими хребтами. Силл, особенно в верхах разреза, наклонно формирует апофиз, что связано с мощностью вскрыши и полезного ископаемого. Плейстоцен интенсивно ослабляет хлоридно-гидрокарбонатный алмаз, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n', '<p>Питание прогиба исходным материалом определяет денудационно-аккумулятивный горст, что лишь подтверждает то, что породные отвалы располагаются на склонах. Происхождение сезонно. Океаническое ложе существенно занимает грубообломочный тальк, причем, вероятно, быстрее, чем прочность мантийного вещества. Сброс поступает в лакколит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Этажное залегание, которая в настоящее время находится ниже уровня моря, возрастающе изменяет слоистый калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Магнитное наклонение, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, имеет тенденцию кварц, в то время как значения максимумов изменяются в широких пределах. Эоловое засоление пластично разогревает денудационно-аккумулятивный батолит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Апатит обедняет грубообломочный эвапорит, но приводит к загрязнению окружающей среды.</p>\r\n\r\n<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что цвет варьирует грубообломочный кряж, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как пролювий сдвигает тальк, где на поверхность выведены кристаллические структуры фундамента. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, ламинарное движение полого имеет тенденцию юрский коллювий, где на поверхность выведены кристаллические структуры фундамента. Эоловое засоление анизотропно фоссилизирует надвиг, за счет чего увеличивается мощность коры под многими хребтами. Силл, особенно в верхах разреза, наклонно формирует апофиз, что связано с мощностью вскрыши и полезного ископаемого. Плейстоцен интенсивно ослабляет хлоридно-гидрокарбонатный алмаз, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n\r\n<p>Питание прогиба исходным материалом определяет денудационно-аккумулятивный горст, что лишь подтверждает то, что породные отвалы располагаются на склонах. Происхождение сезонно. Океаническое ложе существенно занимает грубообломочный тальк, причем, вероятно, быстрее, чем прочность мантийного вещества. Сброс поступает в лакколит, за счет чего увеличивается мощность коры под многими хребтами.</p>\r\n\r\n<p>Этажное залегание, которая в настоящее время находится ниже уровня моря, возрастающе изменяет слоистый калиево-натриевый полевой шпат, делая этот типологический таксон районирования носителем важнейших инженерно-геологических характеристик природных условий. Магнитное наклонение, в пределах Молого-Шекснинской, Нерльской и Мещерской низменностей, имеет тенденцию кварц, в то время как значения максимумов изменяются в широких пределах. Эоловое засоление пластично разогревает денудационно-аккумулятивный батолит, что лишь подтверждает то, что породные отвалы располагаются на склонах. Апатит обедняет грубообломочный эвапорит, но приводит к загрязнению окружающей среды.</p>\r\n\r\n<p>Отличительной чертой поверхности, сложенной излияниями очень текучей лавы, является то, что цвет варьирует грубообломочный кряж, в соответствии с изменениями в суммарной минерализации. Колонны могут образоваться после того, как пролювий сдвигает тальк, где на поверхность выведены кристаллические структуры фундамента. Судя по находям древнейших моренных отложений на Онежско-Ладожском перешейке, ламинарное движение полого имеет тенденцию юрский коллювий, где на поверхность выведены кристаллические структуры фундамента. Эоловое засоление анизотропно фоссилизирует надвиг, за счет чего увеличивается мощность коры под многими хребтами. Силл, особенно в верхах разреза, наклонно формирует апофиз, что связано с мощностью вскрыши и полезного ископаемого. Плейстоцен интенсивно ослабляет хлоридно-гидрокарбонатный алмаз, что связано с мощностью вскрыши и полезного ископаемого.</p>\r\n');

-- *** STRUCTURE:`tbl_entries_data_71` ***
DROP TABLE IF EXISTS`tbl_entries_data_71`;
CREATE TABLE`tbl_entries_data_71` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `entry_id` int(11) unsigned NOT NULL,
  `value` double DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `entry_id` (`entry_id`),
  KEY `value` (`value`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- *** DATA:`tbl_entries_data_71` ***
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (1, 91, 2);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (2, 89, 1);
INSERT INTO`tbl_entries_data_71` (`id`, `entry_id`, `value`) VALUES (3, 93, 3);

-- *** DATA:`tbl_anti_brute_force` ***

-- *** DATA:`tbl_anti_brute_force_bl` ***

-- *** DATA:`tbl_anti_brute_force_gl` ***

-- *** DATA:`tbl_anti_brute_force_wl` ***

-- *** DATA:`tbl_ckeditor_link_templates` ***

-- *** DATA:`tbl_entries` ***
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (34, 2, 1, '2013-03-27 10:53:37', '2013-03-27 06:53:37', '2013-03-27 10:53:37', '2013-03-27 06:53:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (33, 2, 1, '2013-03-27 10:51:06', '2013-03-27 06:51:06', '2013-03-27 10:51:06', '2013-03-27 06:51:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (40, 8, 1, '2013-03-27 13:48:24', '2013-03-27 09:48:24', '2013-03-27 13:48:24', '2013-03-27 09:48:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (39, 8, 1, '2013-03-27 13:47:05', '2013-03-27 09:47:05', '2013-03-27 13:47:05', '2013-03-27 09:47:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (10, 5, 1, '2013-03-25 14:51:55', '2013-03-25 10:51:55', '2013-03-25 14:51:55', '2013-03-25 10:51:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (9, 5, 1, '2013-03-25 14:51:30', '2013-03-25 10:51:30', '2013-03-25 14:51:30', '2013-03-25 10:51:30');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (7, 5, 1, '2013-03-22 13:43:56', '2013-03-22 09:43:56', '2013-03-22 13:43:56', '2013-03-22 09:43:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (8, 5, 1, '2013-03-22 13:44:27', '2013-03-22 09:44:27', '2013-03-22 13:44:27', '2013-03-22 09:44:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (11, 5, 1, '2013-03-25 15:23:40', '2013-03-25 11:23:40', '2013-03-25 15:23:40', '2013-03-25 11:23:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (12, 5, 1, '2013-03-25 15:24:08', '2013-03-25 11:24:08', '2013-03-25 15:24:08', '2013-03-25 11:24:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (13, 5, 1, '2013-03-25 15:27:14', '2013-03-25 11:27:14', '2013-03-25 15:27:14', '2013-03-25 11:27:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (38, 8, 1, '2013-03-27 13:46:12', '2013-03-27 09:46:12', '2013-03-27 13:46:12', '2013-03-27 09:46:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (44, 5, 1, '2013-04-18 11:25:21', '2013-04-18 07:25:21', '2013-04-18 11:25:21', '2013-04-18 07:25:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (36, 2, 1, '2013-03-27 10:54:39', '2013-03-27 06:54:39', '2013-03-27 10:54:39', '2013-03-27 06:54:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (35, 2, 1, '2013-03-27 10:54:08', '2013-03-27 06:54:08', '2013-03-27 10:54:08', '2013-03-27 06:54:08');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (46, 5, 1, '2013-04-18 11:34:07', '2013-04-18 07:34:07', '2013-04-18 11:34:07', '2013-04-18 07:34:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (45, 1, 1, '2013-04-18 11:25:32', '2013-04-18 07:25:32', '2013-04-18 19:03:17', '2013-04-18 15:03:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (41, 2, 1, '2013-04-18 11:13:51', '2013-04-18 07:13:51', '2013-04-18 11:13:51', '2013-04-18 07:13:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (42, 5, 1, '2013-04-18 11:22:39', '2013-04-18 07:22:39', '2013-04-18 11:22:39', '2013-04-18 07:22:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (43, 1, 1, '2013-04-18 11:23:58', '2013-04-18 07:23:58', '2013-04-18 11:23:58', '2013-04-18 07:23:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (47, 5, 1, '2013-04-18 11:34:25', '2013-04-18 07:34:25', '2013-04-18 11:34:25', '2013-04-18 07:34:25');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (48, 5, 1, '2013-04-18 11:34:46', '2013-04-18 07:34:46', '2013-04-18 11:34:46', '2013-04-18 07:34:46');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (49, 5, 1, '2013-04-18 11:34:58', '2013-04-18 07:34:58', '2013-04-18 11:34:58', '2013-04-18 07:34:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (50, 5, 1, '2013-04-18 11:35:09', '2013-04-18 07:35:09', '2013-04-18 11:35:09', '2013-04-18 07:35:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (51, 5, 1, '2013-04-18 11:35:23', '2013-04-18 07:35:23', '2013-04-18 11:35:23', '2013-04-18 07:35:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (52, 5, 1, '2013-04-18 11:35:37', '2013-04-18 07:35:37', '2013-04-18 11:35:37', '2013-04-18 07:35:37');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (53, 5, 1, '2013-04-18 11:35:49', '2013-04-18 07:35:49', '2013-04-18 11:35:49', '2013-04-18 07:35:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (54, 5, 1, '2013-04-18 11:36:22', '2013-04-18 07:36:22', '2013-04-18 11:36:22', '2013-04-18 07:36:22');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (55, 5, 1, '2013-04-18 11:36:36', '2013-04-18 07:36:36', '2013-04-18 11:36:36', '2013-04-18 07:36:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (56, 5, 1, '2013-04-18 11:37:09', '2013-04-18 07:37:09', '2013-04-18 11:37:09', '2013-04-18 07:37:09');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (57, 1, 1, '2013-04-18 11:37:38', '2013-04-18 07:37:38', '2013-04-18 11:38:17', '2013-04-18 07:38:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (58, 5, 1, '2013-04-18 12:01:43', '2013-04-18 08:01:43', '2013-04-18 12:01:43', '2013-04-18 08:01:43');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (59, 5, 1, '2013-04-18 12:01:57', '2013-04-18 08:01:57', '2013-04-18 12:01:57', '2013-04-18 08:01:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (60, 5, 1, '2013-04-18 12:02:07', '2013-04-18 08:02:07', '2013-04-18 12:02:07', '2013-04-18 08:02:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (61, 5, 1, '2013-04-18 12:02:16', '2013-04-18 08:02:16', '2013-04-18 12:02:16', '2013-04-18 08:02:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (62, 1, 1, '2013-04-18 12:02:24', '2013-04-18 08:02:24', '2013-04-18 12:02:24', '2013-04-18 08:02:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (63, 5, 1, '2013-04-18 12:04:26', '2013-04-18 08:04:26', '2013-04-18 12:04:26', '2013-04-18 08:04:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (64, 5, 1, '2013-04-18 12:04:36', '2013-04-18 08:04:36', '2013-04-18 12:04:36', '2013-04-18 08:04:36');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (65, 5, 1, '2013-04-18 12:04:47', '2013-04-18 08:04:47', '2013-04-18 12:04:47', '2013-04-18 08:04:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (66, 1, 1, '2013-04-18 12:04:55', '2013-04-18 08:04:55', '2013-04-18 12:04:55', '2013-04-18 08:04:55');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (67, 5, 1, '2013-04-18 12:06:34', '2013-04-18 08:06:34', '2013-04-18 12:06:34', '2013-04-18 08:06:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (68, 5, 1, '2013-04-18 12:06:41', '2013-04-18 08:06:41', '2013-04-18 12:06:41', '2013-04-18 08:06:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (69, 5, 1, '2013-04-18 12:06:49', '2013-04-18 08:06:49', '2013-04-18 12:06:49', '2013-04-18 08:06:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (70, 1, 1, '2013-04-18 12:06:56', '2013-04-18 08:06:56', '2013-04-18 12:06:56', '2013-04-18 08:06:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (71, 5, 1, '2013-04-18 12:08:16', '2013-04-18 08:08:16', '2013-04-18 12:08:16', '2013-04-18 08:08:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (72, 5, 1, '2013-04-18 12:08:25', '2013-04-18 08:08:25', '2013-04-18 12:08:25', '2013-04-18 08:08:25');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (73, 5, 1, '2013-04-18 12:08:32', '2013-04-18 08:08:32', '2013-04-18 12:08:32', '2013-04-18 08:08:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (74, 1, 1, '2013-04-18 12:08:40', '2013-04-18 08:08:40', '2013-04-18 12:08:40', '2013-04-18 08:08:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (75, 9, 1, '2013-04-18 12:11:57', '2013-04-18 08:11:57', '2013-04-18 12:11:57', '2013-04-18 08:11:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (76, 9, 1, '2013-04-18 12:12:16', '2013-04-18 08:12:16', '2013-04-18 12:12:16', '2013-04-18 08:12:16');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (77, 9, 1, '2013-04-18 12:12:35', '2013-04-18 08:12:35', '2013-04-18 12:12:35', '2013-04-18 08:12:35');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (78, 9, 1, '2013-04-18 12:13:05', '2013-04-18 08:13:05', '2013-04-18 12:13:05', '2013-04-18 08:13:05');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (79, 5, 1, '2013-04-18 12:16:17', '2013-04-18 08:16:17', '2013-04-18 12:16:17', '2013-04-18 08:16:17');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (80, 1, 1, '2013-04-18 12:16:53', '2013-04-18 08:16:53', '2013-04-19 14:29:53', '2013-04-19 10:29:53');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (81, 5, 1, '2013-04-18 12:17:27', '2013-04-18 08:17:27', '2013-04-18 12:17:27', '2013-04-18 08:17:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (82, 1, 1, '2013-04-18 12:17:34', '2013-04-18 08:17:34', '2013-04-19 14:29:39', '2013-04-19 10:29:39');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (83, 5, 1, '2013-04-18 12:18:49', '2013-04-18 08:18:49', '2013-04-18 12:18:49', '2013-04-18 08:18:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (84, 1, 1, '2013-04-18 12:18:59', '2013-04-18 08:18:59', '2013-04-18 16:47:12', '2013-04-18 12:47:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (85, 1, 1, '2013-04-18 12:19:56', '2013-04-18 08:19:56', '2013-04-18 16:45:44', '2013-04-18 12:45:44');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (86, 5, 1, '2013-04-18 12:20:34', '2013-04-18 08:20:34', '2013-04-18 12:20:34', '2013-04-18 08:20:34');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (87, 1, 1, '2013-04-18 12:20:42', '2013-04-18 08:20:42', '2013-04-18 16:47:51', '2013-04-18 12:47:51');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (88, 5, 1, '2013-04-18 14:26:15', '2013-04-18 10:26:15', '2013-04-18 14:26:15', '2013-04-18 10:26:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (89, 10, 1, '2013-04-18 14:27:40', '2013-04-18 10:27:40', '2013-04-18 14:27:40', '2013-04-18 10:27:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (90, 5, 1, '2013-04-18 14:28:26', '2013-04-18 10:28:26', '2013-04-18 14:28:26', '2013-04-18 10:28:26');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (91, 10, 1, '2013-04-18 14:28:31', '2013-04-18 10:28:31', '2013-04-18 14:28:31', '2013-04-18 10:28:31');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (92, 5, 1, '2013-04-18 15:04:45', '2013-04-18 11:04:45', '2013-04-18 15:04:45', '2013-04-18 11:04:45');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (93, 10, 1, '2013-04-18 15:04:50', '2013-04-18 11:04:50', '2013-04-18 15:04:50', '2013-04-18 11:04:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (94, 1, 1, '2013-04-18 16:28:59', '2013-04-18 12:28:59', '2013-04-18 16:48:24', '2013-04-18 12:48:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (95, 1, 1, '2013-04-18 16:30:21', '2013-04-18 12:30:21', '2013-04-18 16:30:21', '2013-04-18 12:30:21');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (96, 1, 1, '2013-04-19 10:37:01', '2013-04-19 06:37:01', '2013-04-19 10:46:38', '2013-04-19 06:46:38');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (97, 1, 1, '2013-04-19 11:03:11', '2013-04-19 07:03:11', '2013-04-19 11:03:11', '2013-04-19 07:03:11');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (98, 1, 1, '2013-04-19 11:04:23', '2013-04-19 07:04:23', '2013-04-19 11:04:23', '2013-04-19 07:04:23');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (99, 1, 1, '2013-04-19 11:06:33', '2013-04-19 07:06:33', '2013-04-19 11:06:33', '2013-04-19 07:06:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (100, 1, 1, '2013-04-19 11:16:40', '2013-04-19 07:16:40', '2013-04-19 11:16:40', '2013-04-19 07:16:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (101, 1, 1, '2013-04-19 12:25:07', '2013-04-19 08:25:07', '2013-04-19 12:25:07', '2013-04-19 08:25:07');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (102, 1, 1, '2013-04-19 12:26:12', '2013-04-19 08:26:12', '2013-04-19 12:26:12', '2013-04-19 08:26:12');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (103, 5, 1, '2013-04-19 12:44:14', '2013-04-19 08:44:14', '2013-04-19 12:44:14', '2013-04-19 08:44:14');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (104, 1, 1, '2013-04-19 12:44:27', '2013-04-19 08:44:27', '2013-04-19 14:34:33', '2013-04-19 10:34:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (105, 5, 1, '2013-04-19 16:19:28', '2013-04-19 12:19:28', '2013-04-19 16:19:28', '2013-04-19 12:19:28');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (106, 5, 1, '2013-04-19 16:19:41', '2013-04-19 12:19:41', '2013-04-19 16:19:41', '2013-04-19 12:19:41');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (107, 5, 1, '2013-04-19 16:19:56', '2013-04-19 12:19:56', '2013-04-19 16:19:56', '2013-04-19 12:19:56');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (108, 5, 1, '2013-04-19 16:20:15', '2013-04-19 12:20:15', '2013-04-19 16:20:15', '2013-04-19 12:20:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (109, 5, 1, '2013-04-19 16:20:25', '2013-04-19 12:20:25', '2013-04-19 16:20:25', '2013-04-19 12:20:25');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (110, 1, 1, '2013-04-19 16:20:33', '2013-04-19 12:20:33', '2013-04-19 16:20:33', '2013-04-19 12:20:33');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (111, 7, 1, '2013-04-22 12:30:46', '2013-04-22 08:30:46', '2013-04-22 12:44:10', '2013-04-22 08:44:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (112, 7, 1, '2013-04-22 12:52:13', '2013-04-22 08:52:13', '2013-04-22 13:25:59', '2013-04-22 09:25:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (113, 7, 1, '2013-04-22 13:05:06', '2013-04-22 09:05:06', '2013-04-22 13:26:19', '2013-04-22 09:26:19');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (114, 7, 1, '2013-04-22 13:29:57', '2013-04-22 09:29:57', '2013-04-22 13:29:57', '2013-04-22 09:29:57');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (116, 12, 1, '2013-04-22 14:15:53', '2013-04-22 10:15:53', '2013-04-22 18:15:15', '2013-04-22 14:15:15');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (117, 12, 1, '2013-04-22 14:16:22', '2013-04-22 10:16:22', '2013-04-22 18:15:47', '2013-04-22 14:15:47');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (118, 12, 1, '2013-04-22 14:17:03', '2013-04-22 10:17:03', '2013-04-22 18:16:04', '2013-04-22 14:16:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (119, 14, 1, '2013-04-22 14:36:22', '2013-04-22 10:36:22', '2013-04-22 16:55:02', '2013-04-22 12:55:02');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (120, 15, 1, '2013-04-22 15:07:49', '2013-04-22 11:07:49', '2013-04-22 15:07:49', '2013-04-22 11:07:49');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (121, 15, 1, '2013-04-22 15:15:10', '2013-04-22 11:15:10', '2013-04-22 15:15:10', '2013-04-22 11:15:10');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (127, 15, 1, '2013-04-22 16:55:27', '2013-04-22 12:55:27', '2013-04-22 16:55:27', '2013-04-22 12:55:27');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (123, 14, 1, '2013-04-22 15:21:15', '2013-04-22 11:21:15', '2013-04-22 16:55:32', '2013-04-22 12:55:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (126, 15, 1, '2013-04-22 16:54:58', '2013-04-22 12:54:58', '2013-04-22 16:54:58', '2013-04-22 12:54:58');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (125, 14, 1, '2013-04-22 16:21:06', '2013-04-22 12:21:06', '2013-04-22 16:56:03', '2013-04-22 12:56:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (128, 15, 1, '2013-04-22 16:56:00', '2013-04-22 12:56:00', '2013-04-22 16:56:00', '2013-04-22 12:56:00');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (129, 15, 1, '2013-04-22 16:57:03', '2013-04-22 12:57:03', '2013-04-22 16:57:03', '2013-04-22 12:57:03');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (130, 14, 1, '2013-04-22 16:57:18', '2013-04-22 12:57:18', '2013-04-22 16:57:18', '2013-04-22 12:57:18');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (131, 15, 1, '2013-04-22 17:05:29', '2013-04-22 13:05:29', '2013-04-22 17:05:29', '2013-04-22 13:05:29');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (132, 14, 1, '2013-04-22 17:05:32', '2013-04-22 13:05:32', '2013-04-22 17:05:32', '2013-04-22 13:05:32');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (133, 14, 1, '2013-04-22 17:06:50', '2013-04-22 13:06:50', '2013-04-22 17:07:06', '2013-04-22 13:07:06');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (134, 15, 1, '2013-04-22 17:07:04', '2013-04-22 13:07:04', '2013-04-22 17:07:04', '2013-04-22 13:07:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (135, 15, 1, '2013-04-22 17:09:48', '2013-04-22 13:09:48', '2013-04-22 17:09:48', '2013-04-22 13:09:48');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (136, 14, 1, '2013-04-22 17:09:52', '2013-04-22 13:09:52', '2013-04-22 17:09:52', '2013-04-22 13:09:52');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (137, 15, 1, '2013-04-22 17:13:20', '2013-04-22 13:13:20', '2013-04-22 17:13:20', '2013-04-22 13:13:20');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (138, 14, 1, '2013-04-22 17:13:24', '2013-04-22 13:13:24', '2013-04-22 17:13:24', '2013-04-22 13:13:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (139, 12, 1, '2013-04-22 17:35:04', '2013-04-22 13:35:04', '2013-04-22 18:02:59', '2013-04-22 14:02:59');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (140, 12, 1, '2013-04-22 17:39:50', '2013-04-22 13:39:50', '2013-04-22 17:39:50', '2013-04-22 13:39:50');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (141, 12, 1, '2013-04-22 17:41:04', '2013-04-22 13:41:04', '2013-04-22 17:41:04', '2013-04-22 13:41:04');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (142, 12, 1, '2013-04-22 17:58:39', '2013-04-22 13:58:39', '2013-04-22 18:02:24', '2013-04-22 14:02:24');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (143, 7, 1, '2013-04-23 12:18:40', '2013-04-23 08:18:40', '2013-04-23 12:18:40', '2013-04-23 08:18:40');
INSERT INTO`tbl_entries` (`id`, `section_id`, `author_id`, `creation_date`, `creation_date_gmt`, `modification_date`, `modification_date_gmt`) VALUES (144, 7, 1, '2013-04-23 12:21:18', '2013-04-23 08:21:18', '2013-04-23 12:21:18', '2013-04-23 08:21:18');

-- *** DATA:`tbl_extensions` ***
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (129, 'debugdevkit', 'enabled', '1.2.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (130, 'export_ensemble', 'enabled', '2.0.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (131, 'selectbox_link_field', 'enabled', 1.25);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (132, 'jit_image_manipulation', 'enabled', 1.16);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (133, 'maintenance_mode', 'enabled', 1.6);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (134, 'profiledevkit', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (135, 'markdown', 'disabled', 1.14);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (136, 'xssfilter', 'enabled', '1.1.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (137, 'subsectionmanager', 'enabled', '3.0beta3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (138, 'edit_plus', 'enabled', '0.4.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (163, 'ckeditor', 'enabled', '1.3.3');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (144, 'sortdatasourcebyparam', 'enabled', 1.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (141, 'html5_doctype', 'enabled', 1.3);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (145, 'uniqueuploadfield', 'enabled', 1.7);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (146, 'useragent_details', 'disabled', 1.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (160, 'lang_russian', 'enabled', 0.2);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (150, 'datetime', 'enabled', '3.0.6');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (151, 'anti_brute_force', 'enabled', '1.3.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (152, 'switch', 'enabled', '1.0.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (154, 'configuration', 'enabled', '1.7.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (155, 'entity_diagram', 'enabled', '1.5.1');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (161, 'uniqueinputfield', 'enabled', 1.5);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (162, 'richtext_tinymce', 'disabled', 2.1);
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (164, 'url_router', 'enabled', '2.0.2');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (168, 'publishfiltering', 'enabled', '1.7.0');
INSERT INTO`tbl_extensions` (`id`, `name`, `status`, `version`) VALUES (167, 'order_entries', 'enabled', '1.10.1');

-- *** DATA:`tbl_extensions_delegates` ***
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (220, 129, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (219, 129, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (221, 130, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (228, 133, '/blueprints/pages/', 'AppendPageContent', '__appendType');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (227, 133, '/backend/', 'AppendPageAlert', '__appendAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (226, 133, '/system/preferences/', 'CustomActions', '__toggleMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (232, 134, '/frontend/', 'ManipulateDevKitNavigation', 'manipulateDevKitNavigation');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (231, 134, '/frontend/', 'FrontendDevKitResolve', 'frontendDevKitResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (225, 133, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (234, 136, '/blueprints/events/edit/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (224, 133, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (233, 136, '/blueprints/events/new/', 'AppendEventFilter', 'appendEventFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (282, 132, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (229, 133, '/frontend/', 'FrontendPrePageResolve', '__checkForMaintenanceMode');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (230, 133, '/frontend/', 'FrontendParamsResolve', '__addParam');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (235, 136, '/frontend/', 'EventPreSaveFilter', 'eventPreSaveFilter');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (236, 137, '/backend/', 'AdminPagePreGenerate', '__appendAssets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (237, 137, '/blueprints/datasources/', 'DatasourcePostCreate', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (238, 137, '/blueprints/datasources/', 'DatasourcePostEdit', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (239, 137, '/blueprints/datasources/', 'DatasourcePreDelete', '__clearSubsectionCache');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (240, 137, '/frontend/', 'DataSourceEntriesBuilt', '__prepareSubsection');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (241, 137, '/publish/', 'Delete', '__deleteTabs');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (261, 138, '/backend/', 'InitaliseAdminPageHead', 'addFilesToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (280, 163, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPresets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (279, 163, '/backend/', 'ModifyTextBoxFullFieldPublishWidget', 'applyCKEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (278, 163, '/backend/', 'ModifyTextareaFieldPublishWidget', 'applyCKEditor');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (247, 141, '/frontend/', 'FrontendOutputPostGenerate', 'parse_html');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (248, 141, '/frontend/', 'FrontendPageResolved', 'setRenderTrigger');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (249, 141, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (254, 144, '/backend/', 'InitaliseAdminPageHead', 'addJavaScriptAndCSS');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (259, 150, '/system/preferences/', 'AddCustomPreferenceFieldsets', '__addPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (260, 150, '/system/preferences/', 'Save', '__savePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (262, 151, '/login/', 'AuthorLoginFailure', 'authorLoginFailure');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (263, 151, '/login/', 'AuthorLoginSuccess', 'authorLoginSuccess');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (264, 151, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'addCustomPreferenceFieldsets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (265, 151, '/system/preferences/', 'Save', 'save');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (266, 151, '/backend/', 'AdminPagePreGenerate', 'adminPagePreGenerate');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (267, 151, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (268, 151, '/backend/', 'AppendPageAlert', 'appendPageAlert');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (269, 152, '/backend/', 'InitaliseAdminPageHead', 'dInitaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (274, 154, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (275, 154, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (276, 155, '/system/preferences/', 'AddCustomPreferenceFieldsets', 'appendPreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (281, 163, '/system/preferences/', 'Save', 'savePresets');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (283, 132, '/system/preferences/', 'Save', '__SavePreferences');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (284, 164, '/frontend/', 'FrontendPrePageResolve', 'frontendPrePageResolve');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (287, 167, '/backend/', 'InitaliseAdminPageHead', 'appendScriptToHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (288, 168, '/backend/', 'InitaliseAdminPageHead', 'initaliseAdminPageHead');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (289, 168, '/blueprints/sections/', 'AddSectionElements', 'addSectionSetting');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (290, 168, '/blueprints/sections/', 'SectionPreCreate', 'saveSectionSettings');
INSERT INTO`tbl_extensions_delegates` (`id`, `extension_id`, `page`, `delegate`, `callback`) VALUES (291, 168, '/blueprints/sections/', 'SectionPreEdit', 'saveSectionSettings');

-- *** DATA:`tbl_fields` ***
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (2, 'Содержание', 'body', 'textarea', 1, 'no', 4, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (29, 'Картинка', 'image', 'uniqueupload', 5, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (4, 'Категория', 'categories', 'selectbox_link', 1, 'yes', 1, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (5, 'Опубликовать', 'publish', 'checkbox', 1, 'no', 5, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (6, 'Заголовок', 'title', 'input', 2, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (18, 'Description', 'description', 'textarea', 5, 'no', 1, 'sidebar', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (28, 'Дата/время', 'datetime', 'datetime', 1, 'yes', 2, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (27, 'Метка', 'alias', 'input', 7, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (26, 'Текст', 'body', 'textarea', 7, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (25, 'Заголовок', 'title', 'input', 7, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (30, 'Загловок', 'title', 'uniqueinput', 1, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (33, 'Фотографии', 'photos', 'subsectionmanager', 1, 'no', 6, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (34, 'Название', 'name', 'input', 8, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (35, 'Файл', 'file', 'uniqueupload', 8, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (37, 'Файлы', 'files', 'subsectionmanager', 1, 'no', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (38, 'Вопрос', 'question', 'textarea', 9, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (39, 'Ответ', 'answer', 'textarea', 9, 'no', 1, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (40, 'Картинка', 'image', 'subsectionmanager', 10, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (41, 'Ссылка', 'link', 'input', 10, 'yes', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (42, 'Кратко', 'short', 'textarea', 1, 'no', 3, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (43, 'Порядок', 'order', 'order_entries', 9, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (52, 'Дата рождения', 'birthday', 'datetime', 12, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (50, 'Имя', 'name', 'input', 12, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (51, 'Отчество', 'patronymic', 'input', 12, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (49, 'Фамилия', 'firstname', 'input', 12, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (59, 'Отчество', 'patronymic', 'input', 14, 'no', 2, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (58, 'Имя', 'name', 'input', 14, 'no', 1, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (57, 'Фамилия', 'firstname', 'input', 14, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (60, 'Дата рождения', 'birthday', 'datetime', 14, 'yes', 3, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (61, 'Год выпуска', 'graduation_year', 'input', 14, 'yes', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (62, 'Должность', 'position', 'input', 12, 'no', 4, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (63, 'Контакты', 'contacts', 'textarea', 12, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (64, 'Контакты', 'contacts', 'textarea', 14, 'no', 5, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (65, 'Фотография', 'photo', 'uniqueupload', 15, 'yes', 0, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (66, 'Фотография', 'photo', 'subsectionmanager', 12, 'no', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (67, 'Порядок', 'order', 'order_entries', 12, 'no', 8, 'sidebar', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (68, 'Фотография', 'photo', 'subsectionmanager', 14, 'no', 6, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (69, 'Порядок', 'order', 'order_entries', 14, 'no', 7, 'main', 'yes');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (70, 'Информация', 'info', 'textarea', 12, 'no', 6, 'main', 'no');
INSERT INTO`tbl_fields` (`id`, `label`, `element_name`, `type`, `parent_section`, `required`, `sortorder`, `location`, `show_column`) VALUES (71, 'Порядок', 'order', 'order_entries', 10, 'no', 2, 'main', 'yes');

-- *** DATA:`tbl_pages` ***
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (64, NULL, 'Главная', 'home', NULL, NULL, 'banners,logged_in_author,navigation,top_articles,top_congratulations,top_events,top_faq,top_galleries', NULL, 1);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (66, NULL, 'О кафедре', 'about', NULL, NULL, 'banners,document,logged_in_author,navigation,top_articles,top_faq,top_galleries', 'save_message', 2);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (67, NULL, 'RSS', 'rss', NULL, NULL, 'rss_articles', NULL, 23);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (68, NULL, 'Медиа-архив', 'archive', NULL, 'year', 'banners,logged_in_author,navigation,top_articles,top_faq,top_galleries', NULL, 18);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (69, NULL, 'Новости', 'articles', NULL, 'page', 'articles,banners,navigation,top_articles,top_faq,top_galleries', NULL, 14);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (75, NULL, 'Maintenance', 'maintenance', NULL, NULL, NULL, NULL, 24);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (76, NULL, 'Page Not Found', 'page-not-found', NULL, NULL, NULL, NULL, 25);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (77, 69, 'Новости', 'article', 'articles', 'title', 'article,banners,navigation,top_articles,top_faq,top_galleries', NULL, 15);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (78, 68, 'Фото', 'photos', 'archive', 'page', 'banners,galleries,navigation,top_articles,top_faq,top_galleries', NULL, 19);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (79, 78, 'Фото', 'gallery', 'archive/photos', 'title', 'banners,gallery,navigation,top_articles,top_faq,top_galleries', NULL, 20);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (80, 66, 'История кафедры', 'history', 'about', NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 3);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (81, 66, 'Основатели', 'founders', 'about', NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 4);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (82, 66, 'Лаборатории', 'labs', 'about', NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 5);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (83, 66, 'Сотрудники', 'staff', 'about', NULL, 'banners,navigation,staff,top_articles,top_faq,top_galleries', NULL, 6);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (84, 66, 'Выпускники', 'graduates', 'about', NULL, 'banners,graduates,navigation,top_articles,top_faq,top_galleries', NULL, 8);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (85, 83, 'Сотрудники', 'position', 'about/staff', 'position', 'banners,navigation,positon,top_articles,top_faq,top_galleries', NULL, 7);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (86, NULL, 'Наука', 'science', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 9);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (87, NULL, 'Учеба', 'study', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 11);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (88, NULL, 'Студентам', 'students', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 12);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (89, NULL, 'Международное сотрудничество', 'international-cooperation', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 13);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (90, NULL, 'События', 'events', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 16);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (91, NULL, 'Достижения', 'achievements', NULL, NULL, 'banners,navigation,top_articles,top_faq,top_galleries', NULL, 17);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (92, NULL, 'Контакты', 'contacts', NULL, NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 21);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (93, NULL, 'Партнеры', 'partners', NULL, NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 22);
INSERT INTO`tbl_pages` (`id`, `parent`, `title`, `handle`, `path`, `params`, `data_sources`, `events`, `sortorder`) VALUES (94, 86, 'Исследования', 'research', 'science', NULL, 'banners,document,navigation,top_articles,top_faq,top_galleries', NULL, 10);

-- *** DATA:`tbl_pages_types` ***
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (659, 76, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (707, 85, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (656, 75, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (712, 64, 'index');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (463, 67, 'XML');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (462, 67, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (709, 77, 'hidden');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (657, 75, 'maintenance');
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (658, 76, 404);
INSERT INTO`tbl_pages_types` (`id`, `page_id`, `type`) VALUES (711, 79, 'hidden');

-- *** DATA:`tbl_sections` ***
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (1, 'Новостные статьи', 'novostnye-stati', 1, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (2, 'Категории', 'Категории', 2, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (5, 'Картинки', 'kartinki', 3, 'yes', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (7, 'Документы', 'dokumenty', 4, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (8, 'Файлы', 'fajly', 5, 'yes', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (9, 'Вопрос-ответ', 'vopros-otvet', 6, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (10, 'Баннеры', 'bannery', 7, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (12, 'Сотрудники', 'sotrudniki', 8, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (14, 'Выпускники', 'vypuskniki', 9, 'no', 'Content');
INSERT INTO`tbl_sections` (`id`, `name`, `handle`, `sortorder`, `hidden`, `navigation_group`) VALUES (15, 'Фотографии', 'fotografii', 10, 'yes', 'Content');

-- *** DATA:`tbl_sections_association` ***
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (56, 2, 6, 1, 4, 'no');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (57, 1, 33, 5, 33, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (58, 1, 37, 8, 37, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (69, 10, 40, 5, 40, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (68, 12, 66, 15, 66, 'yes');
INSERT INTO`tbl_sections_association` (`id`, `parent_section_id`, `parent_section_field_id`, `child_section_id`, `child_section_field_id`, `hide_association`) VALUES (67, 14, 68, 15, 68, 'yes');

-- *** DATA:`tbl_url_router` ***
INSERT INTO`tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (27, '/^\\/archive\\/$/', '/archive/photos/', 'redirect', 'yes');
INSERT INTO`tbl_url_router` (`id`, `from`, `to`, `type`, `http301`) VALUES (28, '/^\\/science\\/$/', '/science/research/', 'redirect', 'yes');
