-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Czas generowania: 23 Maj 2018, 15:47
-- Wersja serwera: 10.1.31-MariaDB
-- Wersja PHP: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `test`
--

DELIMITER $$
--
-- Procedury
--
CREATE DEFINER=`` PROCEDURE `AddGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64), `t_srid` INT)  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' ADD ', geometry_column,' GEOMETRY REF_SYSTEM_ID=', t_srid); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

CREATE DEFINER=`` PROCEDURE `DropGeometryColumn` (`catalog` VARCHAR(64), `t_schema` VARCHAR(64), `t_name` VARCHAR(64), `geometry_column` VARCHAR(64))  begin
  set @qwe= concat('ALTER TABLE ', t_schema, '.', t_name, ' DROP ', geometry_column); PREPARE ls from @qwe; execute ls; deallocate prepare ls; end$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `comments`
--

CREATE TABLE `comments` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `content` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `content`, `created_at`, `updated_at`) VALUES
(2, 1, 'Edycja', '2018-03-27 08:24:21', '2018-03-27 13:43:21'),
(4, 2, 'Tak jak chciałem ;)', '2018-03-27 08:24:21', '2018-03-27 13:58:14'),
(5, 3, 'Całkiem fajnie to idzie', '2018-03-27 08:24:21', '2018-03-27 15:52:44'),
(7, 1, 'Mama', '2018-03-27 10:31:39', '2018-03-27 13:43:27'),
(9, 1, 'Super sie udało', '2018-03-27 10:32:52', '2018-03-27 13:43:35'),
(10, 1, 'adasd', '2018-03-27 10:32:57', '2018-03-27 10:32:57'),
(11, 2, 'adad', '2018-03-27 10:33:26', '2018-03-27 13:35:48'),
(12, 2, 'Nareszcie coś wyszło ;)', '2018-03-27 10:33:41', '2018-03-27 13:58:03'),
(13, 5, 'gihioh', '2018-03-27 10:34:03', '2018-03-27 10:34:03'),
(15, 1, 'Mama', '2018-03-27 10:35:33', '2018-03-27 10:35:33'),
(40, 3, 'Edycja', '2018-03-27 10:36:42', '2018-03-27 15:52:36'),
(44, 4, 'Nowy komentarz', '2018-03-27 10:37:04', '2018-03-27 10:37:04'),
(45, 2, 'Fajno', '2018-03-27 13:44:06', '2018-03-30 13:54:15'),
(46, 2, 'Test', '2018-03-27 13:44:38', '2018-03-27 13:44:38'),
(47, 4, 'Nowy komentarz', '2018-03-27 14:05:21', '2018-03-27 14:05:21'),
(49, 6, 'kolejny', '2018-03-27 16:22:28', '2018-03-27 16:22:28'),
(50, 6, 'jeszcze jeden', '2018-03-27 16:22:31', '2018-03-27 16:22:31'),
(51, 2, 'test', '2018-03-30 14:40:53', '2018-03-30 14:41:07');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2018_03_22_182717_create_todo_table', 1),
(4, '2014_10_12_000000_create_users_table', 2),
(5, '2018_03_22_191959_create_to_dos_table', 2),
(6, '2018_03_27_101735_create_comments_table', 3),
(7, '2018_03_27_161039_create_products_table', 4),
(8, '2018_03_27_163615_create_shopping_baskets_table', 5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `description`, `amount`, `created_at`, `updated_at`) VALUES
(2, 'Kosiarka', 'Ogród', 159, 'Bardzo fajna kosiarka, która mozna czesto uzywać', 20, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(3, 'Przecinak', 'Ogród', 39, 'Przecinak spoko spoko', 10, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(4, 'Telewizor', 'Elektronika', 350, 'O led super fajny', 45, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(5, 'iPod', 'Elektronika', 229, 'Apple bardzo fajny', 199, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(6, 'Myszka', 'Elektronika', 89, 'Duze dpi', 290, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(7, 'Taczka', 'Ogród', 159, 'Bardzo duza pojemność', 20, '2018-03-27 14:26:55', '2018-03-27 14:26:55'),
(8, 'Rower', 'Sport', 400, 'Górski rower', 35, '2018-03-26 22:00:00', '2018-03-26 22:00:00'),
(10, 'Telefon', 'Elektronika', 10, 'Fajny', 30, '2018-03-30 10:32:26', '2018-03-30 10:32:26'),
(14, 'Ola', 'Cyran', 10, 'fajna', 1, '2018-03-30 13:53:39', '2018-03-30 13:53:39'),
(20, 'Ola', 'cyran', 1000000, 'new model', 1, '2018-03-30 14:42:22', '2018-03-30 14:42:22');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `shopping_baskets`
--

CREATE TABLE `shopping_baskets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `shopping_baskets`
--

INSERT INTO `shopping_baskets` (`id`, `user_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 2, 2, '2018-03-27 14:40:53', '2018-03-27 14:40:53'),
(2, 2, 3, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(3, 3, 3, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(4, 2, 4, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(5, 2, 1, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(6, 2, 5, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(7, 3, 3, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(8, 2, 6, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(9, 2, 4, '2018-03-27 14:41:54', '2018-03-27 14:41:54'),
(10, 2, 1, '2018-03-27 14:41:54', '2018-03-27 14:41:54');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `to_dos`
--

CREATE TABLE `to_dos` (
  `id` int(10) UNSIGNED NOT NULL,
  `content` varchar(160) COLLATE utf8mb4_unicode_ci NOT NULL,
  `archive` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `to_dos`
--

INSERT INTO `to_dos` (`id`, `content`, `archive`, `created_at`, `updated_at`) VALUES
(156, 'Wyjść z domu', 1, '2018-03-24 18:22:56', '2018-03-24 19:06:02'),
(161, 'Zjeść', 1, '2018-03-24 19:03:52', '2018-03-27 16:22:42'),
(163, 'Uczyć się ', 1, '2018-03-24 19:39:19', '2018-03-27 13:58:42'),
(167, 'Super', 1, '2018-03-24 19:54:48', '2018-05-23 11:43:49'),
(168, 'Czytać', 0, '2018-03-24 19:54:52', '2018-03-27 16:22:55'),
(169, 'Czytać', 1, '2018-03-27 13:58:31', '2018-05-23 11:43:50'),
(171, 'Zadanie', 0, '2018-03-27 16:22:48', '2018-03-27 16:22:48'),
(172, 'Kolejne', 0, '2018-03-27 16:22:52', '2018-03-27 16:22:52'),
(173, 'Test', 0, '2018-03-30 14:40:14', '2018-03-30 14:40:34');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id`, `name`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '6ht1CRqWza', '$2y$10$5PnUpQZphxR11acspFXNverph0Nb9C/zS5GxKWUNhhkvr.qCfuQ5S', 'z6PF4L5L2E@gmail.com', NULL, NULL),
(2, 'piogora', '$2y$10$0H/hAwseYgn.Co1SlzFxnuNReSul2pA2e6lGUINxBPlQX5GH7rKme', 'piogora@gmail.com', '2018-02-28 23:00:00', '2018-03-14 23:00:00'),
(3, 'y5E5dgad0O', '$2y$10$KXHiAFxSwYy9cjA4tNgWs.zB7x2uNw8mnfyfzd.oaRU66a9tzYhRq', 'lnB24yL7pe@gmail.com', NULL, NULL),
(4, 'C3qsHpKfTE', '$2y$10$CpIfaTY/.UCkV5Jy6toy8ONs7lBpjQv4lEZ23QuSl/vtdDeV/kk2G', 'H56ZvhSMce@gmail.com', NULL, NULL),
(5, 'HBfuJHjzHO', '$2y$10$hQf3HT5B9N2O6s9mP7kt5.3fxDygExEZpI9Wt8moIpxz082cPnPue', 'ahh3TVu5cO@gmail.com', NULL, NULL),
(6, 'oCV3a9FxXH', '$2y$10$CsFdi28igkT/bm3ZYVWCDuietOFrrdb5Apr7/ygza6w4ewwn/qzxK', 'hvit5sdLA6@gmail.com', NULL, NULL),
(7, 'HAVxjlK3Hb', '$2y$10$YVofIg.qCRDqx3TdruPUoePtyu.vt1CzlowbbNXhhaVp4b0ismff.', 'E9q5EgH0NQ@gmail.com', NULL, NULL),
(8, 'ZZ7bwOSTlo', '$2y$10$IhuCTfUkYYAntZ3zLCW5ne06NFBYJyHs6E5dnfaiFQFNh6zP.KX0G', 'iU9uTLSEsf@gmail.com', NULL, NULL),
(9, 'BugxdO0EeI', '$2y$10$/jecnd/atAbvwwMxpWMfzuzN9FjH2Cg8QPXqieRGX8USZmsQK6s/6', 'ncs6cb9Cz8@gmail.com', NULL, NULL),
(10, 'RKuhxwMSIl', '$2y$10$085.Vw.GFc4JZvHZqNBneOd0KrMDBgRayMQGrlSLEs0ovVeH2.l3u', 'qDpZ9LIjSj@gmail.com', NULL, NULL),
(11, 'MM2AHHqfnF', '$2y$10$ZYZfWBZBY/5nAsGgrOjQN.GvR.uPISsDQQj1ntBQAWVvRJLbq1xUO', 'XZy3dtBFWE@gmail.com', NULL, NULL);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `shopping_baskets`
--
ALTER TABLE `shopping_baskets`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `to_dos`
--
ALTER TABLE `to_dos`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT dla tabeli `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT dla tabeli `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT dla tabeli `shopping_baskets`
--
ALTER TABLE `shopping_baskets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT dla tabeli `to_dos`
--
ALTER TABLE `to_dos`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
