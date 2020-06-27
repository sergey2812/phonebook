-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 27 2020 г., 10:43
-- Версия сервера: 5.7.25
-- Версия PHP: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `autoaliance`
--

-- --------------------------------------------------------

--
-- Структура таблицы `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('admin', '1', 1593196880),
('user', '2', 1593195603);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('admin', 1, NULL, NULL, NULL, 1593194799, 1593194799),
('user', 1, NULL, NULL, NULL, 1593194799, 1593194799);

-- --------------------------------------------------------

--
-- Структура таблицы `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('admin', 'user');

-- --------------------------------------------------------

--
-- Структура таблицы `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` blob,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1593185610),
('m130524_201442_init', 1593185625),
('m140506_102106_rbac_init', 1593194499),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1593194499),
('m180523_151638_rbac_updates_indexes_without_prefix', 1593194499),
('m190124_110200_add_verification_token_column_to_user_table', 1593185625),
('m200409_110543_rbac_update_mssql_trigger', 1593194499);

-- --------------------------------------------------------

--
-- Структура таблицы `phonebook`
--

CREATE TABLE `phonebook` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(17) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `phonebook`
--

INSERT INTO `phonebook` (`id`, `name`, `address`, `phone`, `created_at`, `updated_at`) VALUES
(1, 'Modi.', 'Eius quos numquam illo quia aut. Ullam quo amet modi excepturi at qui quasi.', '3910287', 1418936711, 1264659930),
(2, 'Totam.', 'Eum ipsa debitis laboriosam labore nihil ratione culpa.', '38250647', 1388988833, 992817056),
(3, 'Laborum.', 'Et sunt facere ut unde. Et alias aut veniam velit impedit.', '80636245', 891169638, 1511410386),
(4, 'Omnis.', 'Iure illo cumque nulla vitae qui adipisci quo.', '8533768', 1197872667, 1590342232),
(5, 'Distinctio.', 'Sequi vitae incidunt alias iste odio omnis id. Accusamus ipsa cumque est eum sapiente in.', '76535168', 351320145, 199460797),
(6, 'Hic illum.', 'Sapiente facere eaque iusto dolores aut.', '38791221', 1145071170, 90017935),
(7, 'Odit.', 'Qui distinctio quis excepturi officia. Numquam reprehenderit et qui consectetur asperiores.', '52038349', 998039821, 222883840),
(8, 'Saepe.', 'Nihil sint dolorem porro non. Eius libero veritatis officia officiis ducimus cumque officiis. Assumenda quo eligendi ipsum impedit qui est.', '65611396', 572270424, 1367865101),
(9, 'Error.', 'Ad assumenda dolores sunt sunt amet. Minus nesciunt ea laudantium ut doloremque voluptas iure.', '69335006', 1281015125, 1371726764),
(10, 'In.', 'Quas velit eum ex et dicta dolorum.', '9755493', 195701388, 1288329840),
(11, 'Praesentium.', 'Delectus sunt nulla expedita. Nulla quia repudiandae eum nostrum ex itaque quam. Ab quia dolor atque.', '55473658', 521013605, 1210957768),
(12, 'Consequatur.', 'Quidem voluptas repellat sed dolorem maiores sint maiores. Aut aut aut eveniet soluta ut officiis. Eos tenetur iste distinctio.', '21587388', 606418125, 378299307),
(13, 'Qui et.', 'Iusto dolores eveniet eum.', '9474736', 122055160, 1245134464),
(14, 'Vero omnis ut.', 'Iure cupiditate sed debitis qui quas sed. Nulla vero illo nemo blanditiis. Vitae sint dolore odio omnis optio molestiae.', '65129623', 86944703, 1080212514),
(15, 'Molestiae.', 'Sed ut dicta pariatur aut aliquid sit. Ea eius voluptas provident est. Aliquid fuga omnis nihil.', '68363068', 1383308326, 1180488350),
(16, 'Nulla.', 'Est officia vitae delectus possimus autem deserunt. Dolorem nostrum est autem error.', '14768720', 623482934, 91175498),
(17, 'Eligendi nam.', 'Nostrum et architecto at rerum accusamus consequatur placeat delectus. Ut iure quia incidunt. Libero est rerum dolores.', '79129111', 1537094144, 860239646),
(18, 'Enim.', 'Expedita exercitationem molestias neque sint. Laudantium quia a ducimus doloremque aliquid blanditiis temporibus.', '22216745', 228620301, 641713559),
(19, 'Molestiae.', 'Nihil deserunt animi est pariatur et id. Quasi nostrum explicabo et facere et ut dolorem.', '53509211', 694809494, 263468213),
(20, 'Cum.', 'Deleniti fugit deserunt voluptas et non ut. Suscipit voluptatum sunt sed voluptas. Harum nobis consequatur id eum.', '17070119', 508999829, 653057427),
(21, 'Hic.', 'Sapiente qui eum quidem provident. Sint occaecati autem quibusdam et occaecati et. Ipsam dolorum aliquid praesentium quibusdam laudantium soluta.', '45797805', 211206700, 1132793028),
(22, 'Aut.', 'Est sapiente et quis. Aut earum labore magni officiis aspernatur enim libero. Ut aperiam ut debitis velit.', '12072156', 1564675789, 793437778),
(23, 'Non.', 'Excepturi itaque eos ut quidem. Aliquam quam et veritatis et. Qui libero et enim ab tenetur aut id.', '87055882', 1421885382, 650227215),
(24, 'Velit quo.', 'Autem minus dolor praesentium saepe quia vel ea. Corrupti repellat possimus quo ipsam sed. Debitis neque nulla rerum voluptatem reprehenderit.', '66852848', 460725167, 1375314828),
(25, 'Modi fuga.', 'Eaque neque qui nisi quasi voluptas. Ut sit sunt enim autem quae aut enim. Sit explicabo rerum est perferendis.', '48798326', 1250438983, 193441847),
(26, 'Tempore.', 'Molestiae odit debitis qui enim sunt nobis. Eligendi et rerum aut eaque. Harum vitae quia est aut.', '83458303', 944411711, 796786734),
(27, 'Voluptas.', 'Facilis magni praesentium ducimus optio. Maxime alias deserunt alias suscipit omnis.', '68608242', 922745126, 1551380748),
(28, 'Quas fuga.', 'Maiores omnis quos ex id. Quia accusantium nobis eos impedit aut odio explicabo.', '77679027', 960916042, 202985616),
(29, 'Ut.', 'Cupiditate rem non in eveniet. Et nihil maiores et enim voluptatibus pariatur. Tempore voluptate expedita adipisci omnis.', '29176322', 315117215, 1121388697),
(30, 'Dolorem illum.', 'Et quo quia placeat quibusdam laborum et totam eos. Facere esse quaerat aliquid. Quas sunt natus autem ut harum nisi.', '34584070', 585900329, 11707959),
(31, 'Est.', 'Adipisci commodi et quia error sed magni officia.', '3050050', 1561702247, 211466249),
(32, 'Expedita.', 'Iste error reiciendis aut eligendi. Modi animi ipsum ullam veritatis quod sed quia sit. Culpa ea sunt et ullam.', '62026001', 799654445, 1188118117),
(33, 'Quia.', 'Repudiandae corrupti illo quis ipsam hic. Molestiae debitis reiciendis laborum autem quod rerum. Et minus ipsam fuga dolore saepe autem.', '48340388', 449234346, 1365920227),
(34, 'Cum et.', 'Accusamus consequuntur sed ea iusto est distinctio.', '35089396', 1213266199, 533661172),
(35, 'Ea eius.', 'Unde earum rem enim voluptas aliquam rem. Quod velit ducimus cumque. Numquam rerum et fugiat odio nulla.', '24607193', 796206087, 119119727),
(36, 'Asperiores.', 'Omnis alias id saepe rerum doloribus et.', '67816561', 469152488, 1267472785),
(37, 'Veniam.', 'Et neque at nisi. Corrupti non aut et enim vero. Cupiditate facilis sed doloremque aliquid.', '80075731', 1376819030, 918778371),
(38, 'Aut.', 'Voluptatum magnam ut enim qui id. Natus facilis nemo aut maxime beatae.', '25515764', 776894607, 1282998085),
(39, 'Sed.', 'Et maxime laborum et. Quia sit cum culpa voluptas perferendis. Nihil sit natus provident sit. Itaque aperiam ea illo quibusdam eius.', '56368354', 17658118, 1556755569),
(40, 'Sunt.', 'Quas qui enim placeat libero maiores consequuntur. Id vero itaque unde eaque deserunt.', '71395287', 995970189, 1204908855),
(41, 'Occaecati.', 'Dolores sint quia et beatae dolorem. Et doloribus magni facilis fugit. Quo laboriosam officiis fugit accusantium.', '73645924', 1050757468, 390773574),
(42, 'Cum.', 'Itaque unde tempore iusto ullam corporis.', '5187790', 404187658, 285135549),
(43, 'Explicabo.', 'Ut sed recusandae officiis omnis officiis est recusandae. Nihil et et enim explicabo.', '45988896', 1154724617, 31312853),
(44, 'Nam.', 'Dolore et quibusdam qui.', '35744444', 1214755522, 13398785),
(45, 'Ut dolores.', 'Molestiae consectetur magnam assumenda magni sequi numquam perferendis.', '15918049', 1436508558, 164517689),
(46, 'Enim iste.', 'Cupiditate cum soluta aspernatur ex voluptatibus nihil quae.', '7773908', 637804026, 972816601),
(47, 'Error.', 'Fuga aut non omnis porro rerum. Voluptatum repellat iste nulla alias nobis numquam consectetur inventore.', '87597969', 860713419, 110005680),
(48, 'Optio.', 'Placeat est et soluta et. Veniam iste qui modi voluptas qui et ut.', '82127972', 525107253, 1405401467),
(49, 'Quam.', 'Accusamus sed a quae quod ducimus. Nulla et et quae.', '43376302', 844390289, 707330552),
(50, 'Hic dolor sed.', 'Necessitatibus neque quod voluptatem voluptates. Ab vero expedita quo quisquam nulla in sed.', '24720570', 1352067263, 768243740),
(51, 'Excepturi.', 'Aut qui aut pariatur. Dolor voluptatem harum sint eos. Iure ipsa sunt aut.', '57773577', 1000219781, 10080011),
(52, 'Sapiente.', 'Error facilis quae molestiae rerum.', '463452', 775421064, 204165154),
(53, 'Sunt.', 'Velit id libero corporis placeat. Animi explicabo rerum voluptatem autem maiores. Ut et atque et quia quisquam ipsum.', '34429542', 385052469, 368089420),
(54, 'Soluta.', 'Ipsum sunt est molestiae tempora omnis culpa voluptatem voluptas.', '37748774', 395198149, 339542631),
(55, 'Ut ea sint.', 'Porro animi quod sed voluptates voluptatem minus.', '60118054', 691567025, 1130850105),
(56, 'Et non vel.', 'Saepe et hic illum. A quam aut quo alias. Architecto magnam qui earum deserunt ea accusantium.', '32099149', 1326669309, 1286394692),
(57, 'Nostrum.', 'Dolores dicta consequatur officia vitae. Dolorem commodi eligendi natus iure accusamus exercitationem excepturi. Ea voluptas voluptatem officiis magni.', '45383823', 1405239439, 945608662),
(58, 'Quia.', 'Blanditiis doloremque recusandae iure inventore ut quia.', '71133710', 764955173, 270388126),
(59, 'Odio iure.', 'Eaque maiores maiores laborum delectus velit. Aut esse odit a sit sit eos rem. Sit quia quia qui.', '44018962', 403642160, 79847216),
(60, 'Unde at.', 'Maiores sequi perferendis eaque. Ipsa consequatur minima voluptas. Cupiditate et ad non recusandae.', '64773623', 296793309, 1214981417),
(61, 'Sunt.', 'Autem natus quam cumque est placeat tempore repudiandae dolor. Aut quos natus ducimus libero aut ut rerum ut. Nemo omnis autem nemo.', '52583933', 870365095, 766402385),
(62, 'Quia.', 'Recusandae mollitia ducimus dolorum. Laborum est eius iusto ex dolores.', '16292519', 367629559, 331353578),
(63, 'Odit.', 'Provident officiis excepturi cum similique.', '41352109', 839452783, 842064999),
(64, 'Dolores.', 'Est voluptas qui ea voluptatum alias autem.', '44434239', 1593071152, 382212889),
(65, 'Ut quia.', 'Dolor deleniti veniam iste. Alias illum aliquam sunt id ut.', '32169288', 14883998, 484343182),
(66, 'Omnis ut.', 'Ipsam atque odio eligendi illo quis et adipisci. Ad quo quia ut voluptatibus.', '72817396', 1569015124, 78349694),
(67, 'Quaerat.', 'Eligendi rem voluptatum est consequatur magnam. Animi voluptatem voluptas occaecati aliquam.', '22295227', 1507856371, 1339001711),
(68, 'Maxime.', 'Necessitatibus consequatur sit temporibus.', '30327826', 633281637, 1313329230),
(69, 'Laborum.', 'Et est voluptatum quidem sunt iusto voluptas.', '77148769', 975468889, 768063758),
(70, 'Aut.', 'Et laudantium consequuntur sed eaque omnis ullam vel.', '52810341', 741924209, 875388240),
(71, 'Atque autem.', 'Cumque deserunt nulla mollitia nihil ea dolore doloremque.', '66553607', 517039664, 734501098),
(72, 'Qui.', 'Libero vitae atque consequatur reiciendis reprehenderit. Sint voluptatem rerum odit. Quia totam facilis autem est.', '7462795', 1591420319, 1144575685),
(73, 'Qui.', 'Dignissimos repudiandae autem rerum eos deserunt enim. Eum qui numquam ullam officiis velit cum et. Nulla dolorum velit nesciunt.', '84016758', 257394279, 452177330),
(74, 'Occaecati.', 'Quas consequatur ipsam optio quia magnam quis. Asperiores pariatur et totam quas architecto accusamus placeat earum.', '6776806', 1112102578, 1430902467),
(75, 'Quae et.', 'Ut labore voluptas velit repellat et. Ipsa repellat deserunt amet aperiam et a quia blanditiis.', '69596534', 41218730, 81479517),
(76, 'Eum ex.', 'Hic est modi modi blanditiis. Quibusdam sunt repellendus aspernatur.', '33194521', 1394575167, 596852195),
(77, 'Quaerat.', 'Atque nobis cupiditate a ex explicabo quis quasi.', '48058556', 380732351, 778469423),
(78, 'Sunt.', 'Cupiditate laudantium odio ratione sit nemo perspiciatis. Optio quis quis occaecati. Dolor culpa laudantium sed possimus qui.', '34651710', 1280047842, 551914966),
(79, 'Sequi.', 'Voluptas quasi possimus voluptatem rerum aut numquam earum.', '52686120', 929544156, 259677508),
(80, 'Atque id.', 'Dolore omnis ex quia perspiciatis. Esse suscipit accusantium et atque. Beatae quisquam dolore id quidem distinctio.', '85733119', 980360113, 9988662),
(81, 'Ea.', 'Dolores quis tenetur officia odit est minus nam. Neque eveniet sunt harum nam.', '47256628', 92273564, 1293489404),
(82, 'Nihil qui.', 'Culpa dolor fuga et consectetur qui error.', '76183295', 230014244, 1587702399),
(83, 'Ipsum.', 'Sequi ipsam ut voluptatem debitis ut quae et. Tenetur quo sed suscipit aliquam.', '26155035', 962879158, 1291598773),
(84, 'Maiores.', 'Molestiae sint debitis atque ullam debitis. Sapiente ipsam laborum reprehenderit.', '50911499', 1347005375, 1480329613),
(85, 'Est.', 'Sint ab maiores est est voluptatem. Dignissimos velit facere natus similique et. Pariatur libero ad facere aliquam et possimus minima.', '79213214', 1508613183, 1478316351),
(86, 'In.', 'Aut atque reiciendis corrupti quaerat. Et nostrum et sequi maxime.', '72286440', 1231576509, 741424077),
(87, 'Temporibus.', 'Ducimus ea iusto non dolorem illo voluptatum asperiores.', '58627578', 1376125775, 760981868),
(88, 'Est blanditiis.', 'Illo sunt soluta aperiam et hic voluptatem. Ad quas molestias corporis.', '44144599', 402225794, 282232238),
(89, 'Porro.', 'Qui excepturi laudantium eos excepturi. Quia voluptas asperiores deleniti et laboriosam ut repellat ea.', '79502356', 480477652, 1530249565),
(90, 'Et.', 'Reprehenderit minima quibusdam voluptates ut distinctio. At occaecati deleniti molestiae.', '68874180', 258820117, 442649716),
(91, 'In.', 'Voluptatum nihil aut illo illum et. Aut earum rem qui quas consequatur est.', '88828295', 1400046308, 722294669),
(92, 'Provident.', 'Impedit eius dicta est. Voluptas mollitia molestias aut ut quia nisi vitae. Omnis aut numquam cum illo voluptatem incidunt quia.', '25943385', 1392989114, 839765297),
(93, 'Dolorem.', 'Explicabo eveniet magni provident ea error dolore nostrum.', '76502842', 519057651, 1279073451),
(94, 'Voluptate illo.', 'Et est voluptatum animi ut. Officia et quo libero ab.', '82982271', 1480921868, 402974952),
(95, 'Sit in.', 'Dolorum qui consequatur natus beatae minima aut. Earum sunt assumenda non eum.', '10886376', 1405007747, 444421443),
(96, 'Quia.', 'Autem minus beatae qui quas sed quo qui. Aperiam et eum autem architecto qui.', '86217889', 1214098091, 237116092),
(97, 'Aut quis.', 'Consequatur molestias cumque quaerat aliquam error earum consequatur ut. Sunt expedita quis animi eligendi repellat ex fuga quos.', '5852764', 479556756, 1070722115),
(98, 'Quos a.', 'Non consequatur numquam rerum numquam laborum ex.', '28797923', 1030653608, 269603971),
(99, 'Dolorem.', 'Aut quam eveniet a consequatur quo. Eos laborum nesciunt ut totam ex. Eos ut eum facilis assumenda.', '21328268', 556882436, 794411501),
(100, 'Velit.', 'Possimus molestias rerum nisi et dignissimos quia culpa.', '79028165', 206328783, 1024593806);

-- --------------------------------------------------------

--
-- Структура таблицы `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `user`
--

INSERT INTO `user` (`id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `email`, `status`, `created_at`, `updated_at`, `verification_token`) VALUES
(1, 'admin', 'J4D5A7ZkMVnoyzH4dBAC4qDjGfKtQAHk', '$2y$13$IPCIl7MVveRY9lcY4euPaeCc6PI6bQAfSgQeHU9F6qo/e0aqg/cWO', NULL, 'internet-restoran@rambler.ru', 10, 1593195548, 1593195548, NULL),
(2, 'viewer', 'Fd0A8qccOtKN0om6dTI_mfLbcN0BTdxK', '$2y$13$CR3z4hT/VMa9a3IlGbJdtOIj6oF9XyMUGaUQYBBY0GWY2EibmBvwy', NULL, 'si@shop-improver.ru', 10, 1593195603, 1593195603, NULL);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Индексы таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Индексы таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Индексы таблицы `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Индексы таблицы `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Индексы таблицы `phonebook`
--
ALTER TABLE `phonebook`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Индексы таблицы `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `phonebook`
--
ALTER TABLE `phonebook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT для таблицы `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
