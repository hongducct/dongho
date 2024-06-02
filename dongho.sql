-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th6 01, 2024 lúc 06:48 PM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dongho`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `addresses`
--

CREATE TABLE `addresses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `province` varchar(255) NOT NULL,
  `district` varchar(255) NOT NULL,
  `ward` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `addresses`
--

INSERT INTO `addresses` (`id`, `user_id`, `name`, `phone_number`, `province`, `district`, `ward`, `address`, `created_at`, `updated_at`) VALUES
(1, 1, 'Nguyễn Hồng Đức', '0799076901', 'Hà Tĩnh', 'Huyện Nghi Xuân', 'Xã Xuân Hồng', 'thôn 7', '2024-05-22 22:24:34', '2024-05-22 22:24:34'),
(2, 1, 'anh Đức', '0388424835', 'Hà Nội', 'Huyện Thanh Trì', 'Xã Thanh Liệt', 'ngõ 482 Kim giang', '2024-05-22 23:06:49', '2024-05-22 23:06:49'),
(3, 1, 'Test', '0999999999', 'Quảng Ninh', 'Thành phố Cẩm Phả', 'Phường Cửa Ông', 'nhà em Dung', '2024-05-23 03:56:52', '2024-05-23 03:56:52'),
(4, 3, 'Test', 'test', 'Hà Nội', 'Quận Thanh Xuân', 'Phường Khương Mai', 'VTV', '2024-05-23 08:43:09', '2024-05-23 08:43:09'),
(5, 3, 'âsda', 'sdasd', 'Điện Biên', 'Huyện Điện Biên Đông', 'Xã Pú Hồng', 'sadfsdf', '2024-05-23 09:03:49', '2024-05-23 09:03:49'),
(6, 3, 'mmm', 'mmm', 'Sơn La', 'Thành phố Sơn La', 'Phường Tô Hiệu', 'mmm', '2024-05-23 09:07:06', '2024-05-23 09:07:06'),
(7, 3, 'jjj', 'jjj', 'Hòa Bình', 'Huyện Mai Châu', 'Xã Nà Mèo', 'jjj', '2024-05-23 09:10:41', '2024-05-23 09:10:41'),
(8, 13, 'Bùi Hữu Nam', '0981315016', 'Hà Nội', 'Huyện Hoài Đức', 'Thị trấn Trạm Trôi', 'Nhà số 24, xóm chùa', '2024-05-25 08:26:16', '2024-05-25 08:26:16'),
(9, 13, 'anh Nam xóm chùa', '0987654231', 'Bắc Giang', 'Huyện Việt Yên', 'Thị trấn Nếnh', 'xxx', '2024-05-25 08:38:34', '2024-05-26 19:12:51');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `admins`
--

INSERT INTO `admins` (`id`, `avatar`, `username`, `name`, `email`, `email_verified_at`, `password`, `created_at`, `updated_at`) VALUES
(19, 'avatars/Yu15Q7qaCMswblgwsuQknVqvSO0ahlyxIloZJkvj.jpg', 'hongducctt', 'Nguyễn Hồng Đức', 'duchongkhoan100@gmail.com', NULL, '$2y$10$GeGUPRKFscVLUjtl0E2Fg./DuTTt.QqE2Cddni2n3zPTfiyrJxbzy', '2024-05-13 09:47:58', '2024-05-30 02:15:14'),
(20, 'avatars/pHPuwvk3knac4ll6wWVjSmW4HlnEdtmYhhlenNlF.jpg', 'hongduccute', 'test', 'hongduccute@gmail.com', NULL, '$2y$10$oCU2urtx5uHWIgFeAdIiHOi3mzrap2pWK2HF4oehTDmS7xzAJzCQq', '2024-05-24 01:58:17', '2024-05-24 01:59:54'),
(23, 'avatars/', 'duc', 'Duc', 'hongducct@gmail.com', NULL, '$2y$10$1OfEWM.VQNC0fPUY.2LHaOnX.kXD/XDvT3hc82pK7ixQ8PvbvY0O2', '2024-05-30 02:56:11', '2024-05-30 02:56:11');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `attributes`
--

CREATE TABLE `attributes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `movement` varchar(255) NOT NULL,
  `case` varchar(255) NOT NULL,
  `strap` varchar(255) NOT NULL,
  `water_resistance` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `attributes`
--

INSERT INTO `attributes` (`id`, `movement`, `case`, `strap`, `water_resistance`, `created_at`, `updated_at`, `product_id`) VALUES
(18, 'Quartz', 'Thép không gỉ', 'Dây đeo bằng thép không gỉ', '100 mét', '2024-05-14 08:06:44', '2024-05-14 08:06:44', 18),
(19, 'Quartz (Pin)', 'Thép không gỉ', 'Thép không gỉ', '5 ATM', '2024-05-14 08:10:40', '2024-05-14 08:10:40', 19),
(20, 'Quartz Nhật MIYOTA 2035', 'Hợp kim mạ ion vàng hồng, sử dụng công nghệ mạ IP chân không tiên tiến giúp đem lại độ sáng bóng và bền màu', 'Dây da', '3ATM (30m)', '2024-05-14 08:14:56', '2024-05-14 08:14:56', 20),
(21, 'Quartz Nhật', 'Hợp kim mạ ion, sử dụng công nghệ mạ IP chân không tiên tiến giúp đem lại độ sáng bóng và bền màu', 'Dây da Genuine Leather bền bỉ', '3ATM (30m)', '2024-05-14 08:17:37', '2024-05-14 08:17:37', 21),
(22, 'Japan Quartz', 'Brass (Chất liệu vỏ hợp kim) + Plating: Platinum (Mạ/ phủ Bạch kim)', 'Dây cao su', '3ATM', '2024-05-14 08:21:29', '2024-05-14 08:21:29', 22),
(23, 'Japan Quartz', 'Brass - Hợp kim phủ Platinum/ Thép không gỉ', 'Dây da chính hãng', '3ATM', '2024-05-14 10:27:26', '2024-05-14 10:27:26', 23),
(24, 'Japan Quartz', 'Brass - Hợp kim phủ Platinum/ Thép không gỉ', 'Dây đá CZ', '3ATM', '2024-05-14 10:43:50', '2024-05-14 10:43:50', 24),
(25, 'Japan Quartz', 'Brass - Hợp kim phủ Platinum/ Thép không gỉ', 'Dây thép không gỉ', '3ATM', '2024-05-14 10:51:45', '2024-05-14 10:51:45', 25),
(26, 'REM (rapid eye movement)', 'The classic and simple rectangle watch case features an NCVM-processed body, with a metallic finish that enhances its exquisite appearance. Its dual-colour (tarnish and silver) look also shows your good taste.', 'Dây Silicone', '5 ATM', '2024-05-14 11:01:25', '2024-05-14 11:01:25', 26),
(27, 'REM rapid eye movement', 'Viền nhôm', 'Dây cao su', 'IP6X', '2024-05-14 11:10:16', '2024-05-14 11:10:16', 27),
(28, 'REM rapid eye movement', 'Hình chữ nhật', 'Dây Silicone', 'IP67', '2024-05-14 11:14:16', '2024-05-14 11:14:16', 28),
(29, 'REM rapid eye movement', 'Hình tròn', 'Dây Silicone', 'IP67', '2024-05-14 11:17:30', '2024-05-14 11:17:30', 29),
(30, 'Dây cót', 'Chất liệu kim loại', 'Không có', 'Không', '2024-05-14 11:19:59', '2024-05-14 11:19:59', 30),
(31, 'qưeq', 'qew', 'ádas', 'ád', '2024-05-29 19:38:53', '2024-05-29 19:38:53', 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Đồng hồ Nam', NULL, NULL),
(2, 'Đồng hồ Nữ', NULL, NULL),
(4, 'Đồng hồ Thông minh', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `images`
--

CREATE TABLE `images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image_path` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `images`
--

INSERT INTO `images` (`id`, `image_path`, `created_at`, `updated_at`, `product_id`) VALUES
(26, 'images/vU1fVcu0VHM61DfI5gnMogmHD5amJ73Qia3SgMFb.webp', '2024-05-14 08:06:44', '2024-05-14 08:06:44', 18),
(27, 'images/Ul7aOK3uNJDsLV04NAsQo1OmgSLHeYM6hAQIyAaH.webp', '2024-05-14 08:06:44', '2024-05-14 08:06:44', 18),
(28, 'images/bJxGEWosFsUjUuqwR449XdUdiRW1u35WSB5ZAwQy.webp', '2024-05-14 08:06:45', '2024-05-14 08:06:45', 18),
(29, 'images/wrQp87LE7VBdNzJaRz2QEya3LlbaLZ3vqsVWoOVU.webp', '2024-05-14 08:06:45', '2024-05-14 08:06:45', 18),
(30, 'images/w8Ke6D2nqrHFf38HuKoIfttEIyYT89KAikYQbVsN.webp', '2024-05-14 08:10:40', '2024-05-14 08:10:40', 19),
(31, 'images/StJ51UtYiUFGZum2sxXrW1qqow9u3sao5X9uImqZ.webp', '2024-05-14 08:10:40', '2024-05-14 08:10:40', 19),
(32, 'images/AMqnj06ErjiVaSc0fa1t3IZHyGlRpHG8rn42yxZe.webp', '2024-05-14 08:10:40', '2024-05-14 08:10:40', 19),
(33, 'images/RQYofj17oBsNADQ8aMy8xXoyHu3I0XkrvKoDq7nk.webp', '2024-05-14 08:10:40', '2024-05-14 08:10:40', 19),
(34, 'images/mTaoRtOyBO4GOligez3p90JU2J5A3kYa9pYswjH7.webp', '2024-05-14 08:14:56', '2024-05-14 08:14:56', 20),
(35, 'images/vrpwSC0AeWqLtkZbUYaoeaP6YznM6HDsLeUwMk93.webp', '2024-05-14 08:14:56', '2024-05-14 08:14:56', 20),
(36, 'images/1YO8Zs4PibLn4kZOySig9LFVSxtkWGrwltvsADNM.webp', '2024-05-14 08:14:56', '2024-05-14 08:14:56', 20),
(37, 'images/G7xDPe9NxCZA74AJ7KumHjIEG7bK6nQeXpCjy95i.webp', '2024-05-14 08:14:56', '2024-05-14 08:14:56', 20),
(38, 'images/gyrYkmZtT7f8cbijahuJYrDRGiAIoFRrMymd1r1B.webp', '2024-05-14 08:17:37', '2024-05-14 08:17:37', 21),
(39, 'images/kPyIlyUnIHpEfXeQ0KXJ14tagLXRkZPMc7Csq0t6.webp', '2024-05-14 08:17:37', '2024-05-14 08:17:37', 21),
(40, 'images/fPblnD0UWF4ew7SdaN1jHJQWflwLYK2r2Ug3YrJS.webp', '2024-05-14 08:17:37', '2024-05-14 08:17:37', 21),
(41, 'images/vL8JVNvPHkOFrEUIfdfyLLQO1Au88psh1XkAVjpA.webp', '2024-05-14 08:17:37', '2024-05-14 08:17:37', 21),
(42, 'images/2tYjAE7nzAkXDHrQpgooOxmtmbgl68bzKeuhnkC9.webp', '2024-05-14 08:21:29', '2024-05-14 08:21:29', 22),
(43, 'images/bGwAeXS36rmgwv6iKwTfXN4K9mteDbGSYr9zFsdM.webp', '2024-05-14 08:21:29', '2024-05-14 08:21:29', 22),
(44, 'images/AJxLRVdSaD8cBm9BqDlLNkt3yG8eWQIxHBHFuhSy.jpg', '2024-05-14 10:27:26', '2024-05-14 10:27:26', 23),
(45, 'images/j8PtVDgRdjdLJLYEOl6XEPU9WnOqSbj3Opap2OFt.jpg', '2024-05-14 10:27:26', '2024-05-14 10:27:26', 23),
(46, 'images/JmmYYB4s7M9cRKeGvAKVvo2RRWtCkJxkBFAXMF6d.jpg', '2024-05-14 10:27:26', '2024-05-14 10:27:26', 23),
(47, 'images/rIYOej0TpQVaDmXpyQPg63h0fm7bjCvsXVRS1HYe.jpg', '2024-05-14 10:27:26', '2024-05-14 10:27:26', 23),
(48, 'images/9MLvHwtyggKe95CuR1BpaCi5QJvJ3Ci75at3WBfO.jpg', '2024-05-14 10:43:50', '2024-05-14 10:43:50', 24),
(49, 'images/HLy82CcvUkSkISaKc1iqtKsnCUGuDns5MkfaQcHY.jpg', '2024-05-14 10:43:50', '2024-05-14 10:43:50', 24),
(50, 'images/f4D4OxrTPHJLR6YtZ2W8uTZjYvgCunHWrJ4mrX8z.jpg', '2024-05-14 10:43:50', '2024-05-14 10:43:50', 24),
(51, 'images/YIjyUPZr8WgDhPYKUsIdc0IzBYUBjSCITYLiGClK.jpg', '2024-05-14 10:43:50', '2024-05-14 10:43:50', 24),
(52, 'images/QHXfk2fuNgN5KBasi8f0FOX6K0bvZAWuYldRWZGX.jpg', '2024-05-14 10:51:45', '2024-05-14 10:51:45', 25),
(53, 'images/rYb0g8OcBHXRcza764gBX3PzdQt4gIT8rNHbUDFG.jpg', '2024-05-14 10:51:45', '2024-05-14 10:51:45', 25),
(54, 'images/CuXbgZr7tgDPEWgze5oVmB5l8vO7YUPjGpw9BCQv.jpg', '2024-05-14 10:51:45', '2024-05-14 10:51:45', 25),
(55, 'images/co1MFIQvzcnsEmTCeaJU1EA4BL9YRZipB9o2Sjpd.jpg', '2024-05-14 10:51:45', '2024-05-14 10:51:45', 25),
(56, 'images/oN5albFsY2dB3jE4qYYt4S1P1G6dVidjdtDWkm4R.webp', '2024-05-14 11:01:25', '2024-05-14 11:01:25', 26),
(57, 'images/vOaWZ5T7OxcO7LgJiIYwCn68u5jLeHFTzGIKjpvp.webp', '2024-05-14 11:01:25', '2024-05-14 11:01:25', 26),
(58, 'images/lzNtaas2AEBdLanMUzdtPNoiHPuB2ailxX39HeGh.webp', '2024-05-14 11:01:25', '2024-05-14 11:01:25', 26),
(59, 'images/LIoC4u6pDOf2kKzsfsybf94RM26Ame8t2i0GWopj.webp', '2024-05-14 11:01:25', '2024-05-14 11:01:25', 26),
(60, 'images/N2nxdAUbbsxGuSMBKipyfvvPIT94JMGmJXoBENL4.webp', '2024-05-14 11:10:16', '2024-05-14 11:10:16', 27),
(61, 'images/u0XFs2wEXb3KlGsWsIAoCR32hzL9kbUakK8I8aHM.webp', '2024-05-14 11:10:16', '2024-05-14 11:10:16', 27),
(62, 'images/PCnG3AdbxYrILqd6RH7ovnOrMr5SFvvILA0MPnhW.webp', '2024-05-14 11:10:16', '2024-05-14 11:10:16', 27),
(63, 'images/ZVQCFnG0MTKyJLQ7dUfM946nF2J0CUhlpTWbDbZr.webp', '2024-05-14 11:10:16', '2024-05-14 11:10:16', 27),
(64, 'images/uiua4Ym2afIVxem0GyZfBoVnnemtnpJ95GkBRyiN.jpg', '2024-05-14 11:14:16', '2024-05-14 11:14:16', 28),
(65, 'images/hoenqResmDaEvP7Vp1diTr7KR63jLezzjGPCdUDW.webp', '2024-05-14 11:14:16', '2024-05-14 11:14:16', 28),
(66, 'images/uB399F89l0aAsObne7kc888OyEeOKdRi3lLn0Plf.webp', '2024-05-14 11:17:30', '2024-05-14 11:17:30', 29),
(67, 'images/JteQnZ2qVbSefUFYRMLUpoOgfgCpiSi8D9VVsZmn.webp', '2024-05-14 11:17:31', '2024-05-14 11:17:31', 29),
(68, 'images/b6Hbcpw1tRxzapWjwiueVXJe3LCya9lZL22ufqoS.webp', '2024-05-14 11:17:31', '2024-05-14 11:17:31', 29),
(69, 'images/zzZ9I9a4MmdbIuWWvOwc9tppjf6FmCzIybmsYwVp.webp', '2024-05-14 11:17:31', '2024-05-14 11:17:31', 29),
(70, 'images/JZKPT1Lpl2ofhSjWMs0k9rDwC2YOXViPPzasrkeL.webp', '2024-05-14 11:19:59', '2024-05-14 11:19:59', 30),
(71, 'images/PzRKdf72gaNsdgyFB2UJ6FSUmCC1afvLsNpz7HQ0.webp', '2024-05-14 11:19:59', '2024-05-14 11:19:59', 30),
(72, 'images/0OGAEMA63ZLIMtgp8PpifMdsamRHF2dOES1wwCMf.webp', '2024-05-14 11:19:59', '2024-05-14 11:19:59', 30),
(73, 'images/m7an0wBGbzO1cn6SQkeSpkhrulGgvFo9joBgGWO2.webp', '2024-05-14 11:19:59', '2024-05-14 11:19:59', 30),
(74, 'images/Op5DpZlk4Hi5CmbJCCzREu77Wu7HgBcpCdDuIVdq.jpg', '2024-05-29 19:38:54', '2024-05-29 19:38:54', 31),
(75, 'images/1a0QEXb4K5nIZZUMgs9y8BAjsRozInal0QWpj9WL.webp', '2024-05-29 19:38:54', '2024-05-29 19:38:54', 31),
(76, 'images/aDzxvcW43flNFSRHwtEuEtCKiZ09FSuyUgqzCExc.jpg', '2024-05-29 19:38:54', '2024-05-29 19:38:54', 31);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_000001_create_users_status_table', 1),
(3, '2014_10_12_000002_create_categories_table', 1),
(4, '2014_10_12_000003_create_products_table', 1),
(5, '2014_10_12_000004_create_product_categories_table', 1),
(6, '2014_10_12_000005_create_attributes_table', 1),
(7, '2014_10_12_000007_create_reviews_table', 1),
(8, '2014_10_12_000008_create_orders_table', 1),
(9, '2014_10_12_000009_create_order_items_table', 1),
(10, '2014_10_12_000010_create_admins_table', 1),
(11, '2014_10_12_000011_create_orders_status_table', 1),
(12, '2014_10_12_000012_create_images_table', 1),
(13, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(14, '2019_08_19_000000_create_failed_jobs_table', 1),
(15, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(16, '2024_04_04_154904_alter_order_items_table', 1),
(17, '2024_04_04_155059_alter_reviews_table', 1),
(18, '2024_04_04_155536_alter_users_table', 1),
(19, '2024_04_04_160208_alter_orders_table', 1),
(20, '2024_05_06_061554_create_carts_table', 2),
(24, '2024_05_22_151517_add_phone_field_to_users', 3),
(25, '2024_05_22_153238_create_addresses_table', 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `totalAmount` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders_status`
--

CREATE TABLE `orders_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders_status`
--

INSERT INTO `orders_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Chờ xác nhận', NULL, NULL),
(2, 'Chờ lấy hàng', NULL, NULL),
(3, 'Chờ giao hàng', NULL, NULL),
(4, 'Hoàn thành', NULL, NULL),
(5, 'Hủy', NULL, NULL),
(6, 'Trả hàng', NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `expires_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'myapp', '489d6eed85e6b6987d4af9424f341331dae608db61c11f38bf7ba73689205f5d', '[\"*\"]', NULL, NULL, '2024-05-06 07:43:30', '2024-05-06 07:43:30'),
(2, 'App\\Models\\User', 1, 'myapp', 'b4323484d9608bdc002bf880d823016d0dcf054e49655639f2147293b986c3d2', '[\"*\"]', NULL, NULL, '2024-05-06 07:44:39', '2024-05-06 07:44:39'),
(3, 'App\\Models\\User', 1, 'myapp', '3488092c525f91fed00015daf21b956e82bc0fb1c79124d4efb0232ba6828483', '[\"*\"]', NULL, NULL, '2024-05-06 07:44:47', '2024-05-06 07:44:47'),
(4, 'App\\Models\\User', 1, 'myapp', '4c9692f8ed62cab6a3a6ba22beb37040d327a9d0ffd1ea66035a1f19c0877ba5', '[\"*\"]', NULL, NULL, '2024-05-06 07:44:48', '2024-05-06 07:44:48'),
(5, 'App\\Models\\User', 1, 'myapp', '28114734934d3ef9811a03fabdb8a3e295d78e34d46bebb1b8475ab54e377a03', '[\"*\"]', NULL, NULL, '2024-05-07 06:46:59', '2024-05-07 06:46:59'),
(6, 'App\\Models\\User', 1, 'myapp', 'f58c2d466c469a5ee57c5eedf693d5317f24cfcc24a9e1e05d65513d284efee5', '[\"*\"]', NULL, NULL, '2024-05-07 07:12:33', '2024-05-07 07:12:33'),
(7, 'App\\Models\\User', 1, 'myapp', '8f9503b05eb3cfdfba54f5a02ed1ab9e4aed47cacf91533f83af18dcf8e34ecd', '[\"*\"]', NULL, NULL, '2024-05-07 07:13:41', '2024-05-07 07:13:41'),
(8, 'App\\Models\\User', 1, 'myapp', '0a2123b2d615a914ba74e6a65c01f76dd11b8ba590a9675e5808eb42d3a5cb91', '[\"*\"]', NULL, NULL, '2024-05-07 07:29:02', '2024-05-07 07:29:02'),
(9, 'App\\Models\\User', 1, 'myapp', '086c97850a7f1717326925d117f8a1a53c0666de1130b2ccab2640b8105c9706', '[\"*\"]', NULL, NULL, '2024-05-07 07:33:24', '2024-05-07 07:33:24'),
(10, 'App\\Models\\User', 1, 'myapp', '47e101d5d76b111fabe79586a0c744cfe9ba3cc397be8c343fe7fc4244679c90', '[\"*\"]', NULL, NULL, '2024-05-07 07:47:29', '2024-05-07 07:47:29'),
(11, 'App\\Models\\User', 1, 'myapp', '31cc370d6db5f42d425ff8373b1ec568ef8f1ddaf6b66dba601b485ef0a16202', '[\"*\"]', NULL, NULL, '2024-05-07 08:18:23', '2024-05-07 08:18:23'),
(12, 'App\\Models\\User', 1, 'myapp', 'e6d1f96e2cc6fe86af29a9bd5fd6a08044aad8a458230a696dac10b78a66c7e2', '[\"*\"]', NULL, NULL, '2024-05-07 08:38:32', '2024-05-07 08:38:32'),
(13, 'App\\Models\\User', 1, 'myapp', 'ef6ef61a7ed06ad9f1956191ed7ec8171fbc4a501a4db34c6125d1935a645fe0', '[\"*\"]', NULL, NULL, '2024-05-07 08:42:19', '2024-05-07 08:42:19'),
(14, 'App\\Models\\User', 1, 'myapp', '204699e9e98a2111264a473b560daa23554b0f8388435f06b06fb11b8d534890', '[\"*\"]', NULL, NULL, '2024-05-07 08:42:31', '2024-05-07 08:42:31'),
(15, 'App\\Models\\User', 1, 'myapp', 'c94593de31e619c53de3f536f4e97bf70b90be5b63dc4abc951afe95cff4b0ef', '[\"*\"]', NULL, NULL, '2024-05-07 09:40:03', '2024-05-07 09:40:03'),
(16, 'App\\Models\\User', 1, 'myapp', '546d2252d591e65591c9c18de742473611ccafc460704b24092efe991eb5fa55', '[\"*\"]', NULL, NULL, '2024-05-07 09:48:44', '2024-05-07 09:48:44'),
(17, 'App\\Models\\User', 1, 'myapp', '665c0323d256941f18263e6f77ee60994734ad11c36e200e7d87d37a711edb1a', '[\"*\"]', NULL, NULL, '2024-05-07 16:20:40', '2024-05-07 16:20:40'),
(18, 'App\\Models\\User', 1, 'myapp', 'db8f8478860d0bc56f34961af1e0594dad4ebe680bd3ce68f8e34513392bf7f9', '[\"*\"]', NULL, NULL, '2024-05-07 16:27:54', '2024-05-07 16:27:54'),
(19, 'App\\Models\\User', 1, 'myapp', 'fb81e8f802911bb1fe3496ca9acee6075b71ff4adec916e172d47e321198f08f', '[\"*\"]', NULL, NULL, '2024-05-07 16:36:29', '2024-05-07 16:36:29'),
(20, 'App\\Models\\User', 1, 'myapp', 'db9cfa464e1f862205a857a91b2b98bbab82e846217805e4fc3570ae9e10144b', '[\"*\"]', NULL, NULL, '2024-05-07 16:47:00', '2024-05-07 16:47:00'),
(21, 'App\\Models\\User', 1, 'myapp', '7dd23768834265d63efaf3fa644c28a426162457f301be91967b18aa8f0f02c1', '[\"*\"]', NULL, NULL, '2024-05-07 17:01:44', '2024-05-07 17:01:44'),
(22, 'App\\Models\\User', 1, 'myapp', '0d7da7a93f4c7340b5c4280f62c7e9107aee5900cf7a9f09b51f278182e90135', '[\"*\"]', NULL, NULL, '2024-05-07 17:30:25', '2024-05-07 17:30:25'),
(23, 'App\\Models\\User', 1, 'myapp', '2406691c889c2d41c0d8a77b0de3fcb4da200b595419b031f6ecb82d0398a5ba', '[\"*\"]', NULL, NULL, '2024-05-08 10:06:47', '2024-05-08 10:06:47'),
(24, 'App\\Models\\User', 1, 'myapp', '65233823472e131446ddbc782660b8da627e49e2eda4a9fa40064cdb2c28b503', '[\"*\"]', NULL, NULL, '2024-05-08 10:21:31', '2024-05-08 10:21:31'),
(25, 'App\\Models\\User', 1, 'myapp', '7f4b9645a2e04fa4bdf622ff916353fc6dc8cb74c5a5725d315e3514c88b2ef4', '[\"*\"]', NULL, NULL, '2024-05-08 10:43:44', '2024-05-08 10:43:44'),
(26, 'App\\Models\\User', 1, 'myapp', 'cd248c1db1c7526527ef24467acb70fe3021926bd672a2c12f1874a22df6be28', '[\"*\"]', NULL, NULL, '2024-05-08 11:53:15', '2024-05-08 11:53:15'),
(27, 'App\\Models\\User', 1, 'myapp', '885ebb639fa007d290944355cfb298553e443608ce9080ea34906d1d28937976', '[\"*\"]', NULL, NULL, '2024-05-08 11:53:35', '2024-05-08 11:53:35'),
(28, 'App\\Models\\User', 1, 'myapp', 'e04f8da49899c196e2f2b94bbb2a2565241a5250582e8b07e7c5b5b6084369ee', '[\"*\"]', NULL, NULL, '2024-05-08 11:56:04', '2024-05-08 11:56:04'),
(29, 'App\\Models\\User', 1, 'myapp', 'be1af15c86e1d43e18d9a72e6a5dc076ef3dd684efd5e90eb563e817978455c4', '[\"*\"]', NULL, NULL, '2024-05-08 11:56:38', '2024-05-08 11:56:38'),
(30, 'App\\Models\\User', 1, 'myapp', 'd764506d9afb912a5db5715c879dbfb4e0ff11da43dde383faa3f563768628cf', '[\"*\"]', NULL, NULL, '2024-05-08 11:57:38', '2024-05-08 11:57:38'),
(31, 'App\\Models\\User', 1, 'myapp', '192125f1d2e3513df17d88b13588f860410f46d754a1a99cde8992f745484c7e', '[\"*\"]', NULL, NULL, '2024-05-08 11:57:45', '2024-05-08 11:57:45'),
(32, 'App\\Models\\User', 1, 'myapp', '7135cfbfce390f7fea02dfa600166c6f76cf30795cbdca9b439828b404c5ba8f', '[\"*\"]', NULL, NULL, '2024-05-08 20:21:55', '2024-05-08 20:21:55'),
(33, 'App\\Models\\User', 1, 'myapp', '6eeb54907b33f1cdd8580b78076a2fa26d9df58278d3eb116572168f5d3f5699', '[\"*\"]', NULL, NULL, '2024-05-08 20:21:58', '2024-05-08 20:21:58'),
(34, 'App\\Models\\User', 1, 'myapp', '2e6c26e5381941e812673e10d1ee33bb61185bf3a52244d479e735f922085526', '[\"*\"]', NULL, NULL, '2024-05-08 20:28:01', '2024-05-08 20:28:01'),
(35, 'App\\Models\\User', 1, 'myapp', '5ccd9e15d11124378cd01b63429305ac4f309ebbf56e5d1ab1c26b6e8ac1cc22', '[\"*\"]', NULL, NULL, '2024-05-08 20:28:04', '2024-05-08 20:28:04'),
(36, 'App\\Models\\User', 1, 'myapp', '76832815dc9d0e5ab7c523f57808aff2447ea79a007f8e136120fe9c53c71593', '[\"*\"]', NULL, NULL, '2024-05-08 20:30:33', '2024-05-08 20:30:33'),
(37, 'App\\Models\\User', 1, 'myapp', '60bbbf050360d57a64925c5adc36c51a034556b90f96ebb240694d38d970356c', '[\"*\"]', NULL, NULL, '2024-05-08 21:15:04', '2024-05-08 21:15:04'),
(38, 'App\\Models\\User', 1, 'myapp', 'cd0286455459d4667d9614eef85d0e977fd090a38058f3fb3a1693f3803d5e27', '[\"*\"]', NULL, NULL, '2024-05-08 21:20:30', '2024-05-08 21:20:30'),
(39, 'App\\Models\\User', 3, 'myapp', '7e30fc3a598d004ad47a1a20da60dc993cf26b272783d9512fd76deb6d61d85b', '[\"*\"]', NULL, NULL, '2024-05-09 12:36:09', '2024-05-09 12:36:09'),
(40, 'App\\Models\\User', 4, 'myapp', '363f1aac5f3a7a80d183b559145db29c9aec497d69adfb4382966942f07eca62', '[\"*\"]', NULL, NULL, '2024-05-09 12:56:51', '2024-05-09 12:56:51'),
(41, 'App\\Models\\User', 5, 'myapp', '410fcf3003286de8a5cb4b1c6a2da67f5ea2e70c7b100e59248ecffe226e6330', '[\"*\"]', NULL, NULL, '2024-05-09 12:58:37', '2024-05-09 12:58:37'),
(42, 'App\\Models\\User', 3, 'myapp', '1f9ff486d111441955a5ca38a7cb027f67c20f746d29c7196c7867dc612efd3b', '[\"*\"]', NULL, NULL, '2024-05-10 02:45:30', '2024-05-10 02:45:30'),
(43, 'App\\Models\\User', 6, 'myapp', 'e760d77565c953959dfdb787a3943b5770435285a4e6f827e2b5b9640784b0f1', '[\"*\"]', NULL, NULL, '2024-05-13 08:22:32', '2024-05-13 08:22:32'),
(44, 'App\\Models\\User', 7, 'myapp', '27834be68e4355a151501e7f09e4f010a955a8c71400f3734a11a7562d487656', '[\"*\"]', NULL, NULL, '2024-05-13 08:23:06', '2024-05-13 08:23:06'),
(45, 'App\\Models\\User', 1, 'myapp', '62080eeac05b22bee8e4dd8f8b81658d0192e5aa8af1276e50182b704b93b2ff', '[\"*\"]', NULL, NULL, '2024-05-13 11:23:09', '2024-05-13 11:23:09'),
(46, 'App\\Models\\User', 1, 'myapp', '62f76814898923ec02c175711d22458c544f01331a08e2b9ca2ec37a1b8bb76d', '[\"*\"]', NULL, NULL, '2024-05-13 11:48:55', '2024-05-13 11:48:55'),
(47, 'App\\Models\\User', 1, 'myapp', '84bf4cb95a61e3b7a790bde44235de8f78ac34d64ab7b52ea2f26f7ac51eff6a', '[\"*\"]', NULL, NULL, '2024-05-13 11:53:01', '2024-05-13 11:53:01'),
(48, 'App\\Models\\User', 1, 'myapp', '070ee7365a06308b43669c358bee3ce671940c23143cc09494d807b604a974bd', '[\"*\"]', NULL, NULL, '2024-05-13 11:55:17', '2024-05-13 11:55:17'),
(49, 'App\\Models\\User', 1, 'myapp', '2f3d1478c48795953a898f380fd9437f99c4573c4c1304280cbb694b785444e8', '[\"*\"]', NULL, NULL, '2024-05-13 12:11:43', '2024-05-13 12:11:43'),
(50, 'App\\Models\\User', 1, 'myapp', '924a95d4a9acd1d5af57d0e35764ff3c5c3ddfc1f32194f749904b69e05413eb', '[\"*\"]', NULL, NULL, '2024-05-13 12:15:18', '2024-05-13 12:15:18'),
(51, 'App\\Models\\User', 1, 'myapp', '16d466ec16a028fda6125c43aeb916277a75c78e42c2af98fd1607fea4a4646e', '[\"*\"]', NULL, NULL, '2024-05-13 12:15:23', '2024-05-13 12:15:23'),
(52, 'App\\Models\\User', 1, 'myapp', '8b2de037cd592f51704f4c429dfb1e3bae29f1387f7c155de383b6735f5dfb2f', '[\"*\"]', NULL, NULL, '2024-05-13 12:18:21', '2024-05-13 12:18:21'),
(53, 'App\\Models\\User', 1, 'myapp', '1b6fc4cc86535da8a5ce44a355c7efdb832acbfa486a7d04e8a09056c8561c84', '[\"*\"]', NULL, NULL, '2024-05-13 12:24:07', '2024-05-13 12:24:07'),
(54, 'App\\Models\\User', 1, 'myapp', '5322caf987c9581fa5115d60f97e037ca2da48b9795a361aeb3cea04e51578fa', '[\"*\"]', NULL, NULL, '2024-05-14 00:38:08', '2024-05-14 00:38:08'),
(55, 'App\\Models\\User', 1, 'myapp', '5f8f0f3010a0372beb1aeb83005bd9b621bd635964c97a426585a1e028273755', '[\"*\"]', NULL, NULL, '2024-05-14 00:41:07', '2024-05-14 00:41:07'),
(56, 'App\\Models\\User', 1, 'myapp', 'a4b1d3e0efbd963999ee684b77538ab532b332c04db67c97cb5e5e36ea873ef7', '[\"*\"]', NULL, NULL, '2024-05-14 01:14:01', '2024-05-14 01:14:01'),
(57, 'App\\Models\\User', 1, 'myapp', '6f270365bc531d9ec17617013a6742f954bc66b38a1df902f10fdd8ebc3c33b8', '[\"*\"]', NULL, NULL, '2024-05-14 02:21:07', '2024-05-14 02:21:07'),
(58, 'App\\Models\\User', 1, 'myapp', '71556689195727441549ed58492581150422a2361848692dc0b59a4cca8cbd3b', '[\"*\"]', NULL, NULL, '2024-05-14 02:22:08', '2024-05-14 02:22:08'),
(59, 'App\\Models\\User', 1, 'myapp', 'f45451c13916f8fae090b2ba8bf8a96c2b3f9af5665c79e52084bbba0073b7d0', '[\"*\"]', NULL, NULL, '2024-05-14 03:19:07', '2024-05-14 03:19:07'),
(60, 'App\\Models\\User', 1, 'myapp', '723328f5bd93e665f1ab245c5c0372d1078cedae026eff4763b39c94aa6907c8', '[\"*\"]', NULL, NULL, '2024-05-14 03:19:11', '2024-05-14 03:19:11'),
(61, 'App\\Models\\User', 1, 'myapp', '7f5317a6564a8b7a60e3a2ebb69e1afe0cf8eeea2486c8d75d2b75716d28e5d7', '[\"*\"]', NULL, NULL, '2024-05-14 07:18:16', '2024-05-14 07:18:16'),
(62, 'App\\Models\\User', 1, 'myapp', '0ca129cfe81748eeef126bd7885a033e3d3a6eb017282c81121f4ce557f41e46', '[\"*\"]', NULL, NULL, '2024-05-14 09:25:55', '2024-05-14 09:25:55'),
(63, 'App\\Models\\User', 1, 'myapp', '04319e5d6431df635858a6c1c7936b2e83adae9ba5eff8fd02e31f3957abb554', '[\"*\"]', NULL, NULL, '2024-05-14 11:24:45', '2024-05-14 11:24:45'),
(64, 'App\\Models\\User', 1, 'myapp', '3b5757c1838ec3b84862a66fa717dbaecb4d5226f6678d7dc5ac7365db3fc110', '[\"*\"]', NULL, NULL, '2024-05-14 11:51:04', '2024-05-14 11:51:04'),
(65, 'App\\Models\\User', 1, 'myapp', '8d4c8d7e359170beef6ecdd693327f3ac39ae667cc5088f3f94f27918bc8e16d', '[\"*\"]', NULL, NULL, '2024-05-15 01:57:27', '2024-05-15 01:57:27'),
(66, 'App\\Models\\User', 1, 'myapp', 'e6e463363dc306ce57e10caa259d7f27f3886e746923f293d51173e9d9e20c3e', '[\"*\"]', NULL, NULL, '2024-05-15 04:11:14', '2024-05-15 04:11:14'),
(67, 'App\\Models\\User', 1, 'myapp', '41d2810f6d67a7396129158bfbe7c334a0c193b692e928e49eec5452fd745950', '[\"*\"]', NULL, NULL, '2024-05-15 06:50:56', '2024-05-15 06:50:56'),
(68, 'App\\Models\\User', 1, 'myapp', '3d87e906e20b1217adc98dbd6ed86e09bccbf9cc2811bb7d917c5b8cc7d8089e', '[\"*\"]', NULL, NULL, '2024-05-15 09:46:17', '2024-05-15 09:46:17'),
(69, 'App\\Models\\User', 1, 'myapp', 'bb37301a4b8c052c429248446d07ee982a4f90c26ddf31281e7d07f29d8cf7c4', '[\"*\"]', NULL, NULL, '2024-05-15 10:15:33', '2024-05-15 10:15:33'),
(70, 'App\\Models\\User', 1, 'myapp', 'aa7d708042abffea58efbc63bb238c097a04ede8b5006c34e5a8cc87cae19958', '[\"*\"]', NULL, NULL, '2024-05-15 10:18:52', '2024-05-15 10:18:52'),
(71, 'App\\Models\\User', 1, 'myapp', '9b93ce00c4bd867f7e7272904632798e1472e41da1b7cf9fc1106935325864c6', '[\"*\"]', NULL, NULL, '2024-05-15 10:30:00', '2024-05-15 10:30:00'),
(72, 'App\\Models\\User', 1, 'myapp', '354c5d0bed428e1e034dbeb7fea75a438867da589bafc2f05e52554f8c3245dd', '[\"*\"]', NULL, NULL, '2024-05-15 10:39:58', '2024-05-15 10:39:58'),
(73, 'App\\Models\\User', 1, 'myapp', '2055861a29996da55255ce105aa2c0caa75cb3bc549f9aaea7ed3ebe54c3644d', '[\"*\"]', NULL, NULL, '2024-05-15 10:52:21', '2024-05-15 10:52:21'),
(74, 'App\\Models\\User', 1, 'myapp', '620ee1fd0ca98a2b1b654d97bfa9bca8f668b5e04d3f5442757ebc376160d43b', '[\"*\"]', NULL, NULL, '2024-05-15 19:36:35', '2024-05-15 19:36:35'),
(75, 'App\\Models\\User', 1, 'myapp', '921dc13dc983a8df006ebf38b2144738048f363b0d931daf0d7e27f502a67646', '[\"*\"]', NULL, NULL, '2024-05-15 19:51:22', '2024-05-15 19:51:22'),
(76, 'App\\Models\\User', 1, 'myapp', '7663eb5f49193438036acaaf353c71947726058f6d56778f6bf21684ee15b1cc', '[\"*\"]', NULL, NULL, '2024-05-15 20:07:12', '2024-05-15 20:07:12'),
(77, 'App\\Models\\User', 1, 'myapp', 'a7f7e074bd4b9a9e4a37383b7deef67f974a894572f813e80b1818084e48b33d', '[\"*\"]', NULL, NULL, '2024-05-15 20:16:20', '2024-05-15 20:16:20'),
(78, 'App\\Models\\User', 1, 'myapp', '9fa593aa1f1670757c04afbb56e0bd854adacdb457630373372e3f5c57b3fabe', '[\"*\"]', NULL, NULL, '2024-05-17 01:30:38', '2024-05-17 01:30:38'),
(79, 'App\\Models\\User', 1, 'myapp', 'ed82ab21c52242c68d590b227c8f843e0c326c5c1b84eb17d5f0bb637b0fd8c0', '[\"*\"]', NULL, NULL, '2024-05-17 01:46:46', '2024-05-17 01:46:46'),
(80, 'App\\Models\\User', 1, 'myapp', '33ab0ebe66e8f46ea44099d0e2e970637b172897d284a2b651512e10e0794d2c', '[\"*\"]', NULL, NULL, '2024-05-17 01:48:15', '2024-05-17 01:48:15'),
(81, 'App\\Models\\User', 1, 'myapp', 'a51512583599b225451b046d3fb429c9acb83eb04060afe96894e61c11911c33', '[\"*\"]', NULL, NULL, '2024-05-17 02:04:22', '2024-05-17 02:04:22'),
(82, 'App\\Models\\User', 1, 'myapp', 'c6bbe4c66e5057689e6317499eee7367490cda1df89fb0597bdbfbbf0f857cec', '[\"*\"]', NULL, NULL, '2024-05-17 03:07:52', '2024-05-17 03:07:52'),
(83, 'App\\Models\\User', 1, 'myapp', '81d2030e231160a92bb0641aac352b64b3e0b96edd46998563138157c47da7ab', '[\"*\"]', NULL, NULL, '2024-05-17 03:45:58', '2024-05-17 03:45:58'),
(84, 'App\\Models\\User', 1, 'myapp', '7dd59405232b9df517cfcb04809d9186b930336b1791e20e644c58bd4107ef9a', '[\"*\"]', NULL, NULL, '2024-05-17 03:52:19', '2024-05-17 03:52:19'),
(85, 'App\\Models\\User', 1, 'myapp', 'b1ce651dad32c22d8dfff1d7a8fcbf30717853ec8e835e927ce2401d16ab3f28', '[\"*\"]', NULL, NULL, '2024-05-17 03:52:33', '2024-05-17 03:52:33'),
(86, 'App\\Models\\User', 1, 'myapp', 'cf17d3017251eeb17abaf17058e782b8613441a9e64a3f4803de0bfb156441b4', '[\"*\"]', NULL, NULL, '2024-05-17 09:45:48', '2024-05-17 09:45:48'),
(87, 'App\\Models\\User', 1, 'myapp', '9567167aaa168df3fdf481e960e105213080a333332a5f2861de00576cee04a9', '[\"*\"]', NULL, NULL, '2024-05-17 09:45:51', '2024-05-17 09:45:51'),
(88, 'App\\Models\\User', 1, 'myapp', '85ff5e1fc614eb5d887409a22398052633b412c638372a8009cbdfd4e9ad9985', '[\"*\"]', NULL, NULL, '2024-05-21 04:23:54', '2024-05-21 04:23:54'),
(89, 'App\\Models\\User', 1, 'myapp', 'a919854987f01a82f8d410ae1dae2da7e498596ba6317f58ace27ca7e9a84142', '[\"*\"]', NULL, NULL, '2024-05-21 04:37:05', '2024-05-21 04:37:05'),
(90, 'App\\Models\\User', 1, 'myapp', '0195de8c6468941441de24897534d4186933a7faeb2a6bc2db0b713ee0721de9', '[\"*\"]', NULL, NULL, '2024-05-21 10:41:53', '2024-05-21 10:41:53'),
(91, 'App\\Models\\User', 3, 'myapp', '602c44bfe6e58163a939c086c61ccfa2a8b4fcf195360d7694b7319032b196aa', '[\"*\"]', NULL, NULL, '2024-05-22 02:35:05', '2024-05-22 02:35:05'),
(92, 'App\\Models\\User', 3, 'myapp', 'b802db74c788c2f1370fe8166251acd8fd76b72f18ce42eebaceee3df4e7567a', '[\"*\"]', NULL, NULL, '2024-05-22 02:47:10', '2024-05-22 02:47:10'),
(93, 'App\\Models\\User', 3, 'myapp', 'bcaa49e6baebe734732c0d83d836ca11115fe2af242177a8a1928754e4d75819', '[\"*\"]', NULL, NULL, '2024-05-22 03:22:07', '2024-05-22 03:22:07'),
(94, 'App\\Models\\User', 3, 'myapp', '81189980450ae3cb3dcf3d2deb66a300f6f85030edf389be63348eb4db74d0cd', '[\"*\"]', NULL, NULL, '2024-05-22 03:24:06', '2024-05-22 03:24:06'),
(95, 'App\\Models\\User', 1, 'myapp', '5a285e70e805837e930a805d952de4bfba9713c1e829fe0b2cdd9ff28602897e', '[\"*\"]', NULL, NULL, '2024-05-22 10:19:21', '2024-05-22 10:19:21'),
(96, 'App\\Models\\User', 1, 'myapp', '3b1bd7e5ce28d96cebd1175b23eef36e167a0ac3f78e04b08e4468fa200c1724', '[\"*\"]', NULL, NULL, '2024-05-22 10:24:35', '2024-05-22 10:24:35'),
(97, 'App\\Models\\User', 1, 'myapp', 'bbbe3b63fa8be4c0e9a4cb317a4742bcf718873e5e997083e081e34284e29f1b', '[\"*\"]', NULL, NULL, '2024-05-22 10:51:37', '2024-05-22 10:51:37'),
(98, 'App\\Models\\User', 1, 'myapp', '551677cc30113163b3a9fc7fbe21edf1cf230d631176fa3cf085b20a6b47dd62', '[\"*\"]', NULL, NULL, '2024-05-22 10:53:44', '2024-05-22 10:53:44'),
(99, 'App\\Models\\User', 1, 'myapp', '4704d550dcbd82ffbe8c34cc1d99836324ac7b66be2ee1ae93f46c692b47fe46', '[\"*\"]', NULL, NULL, '2024-05-22 10:55:59', '2024-05-22 10:55:59'),
(100, 'App\\Models\\User', 1, 'myapp', 'e4916ac990c0a9dd7881001732ab1a91cb1c0a4e0c8218440e45b24f34f1749d', '[\"*\"]', NULL, NULL, '2024-05-22 11:42:32', '2024-05-22 11:42:32'),
(101, 'App\\Models\\User', 1, 'myapp', '1b77b1a841440644b7ddb409930516df573086fdcc340d9f393c038626298450', '[\"*\"]', NULL, NULL, '2024-05-22 11:43:54', '2024-05-22 11:43:54'),
(102, 'App\\Models\\User', 1, 'myapp', 'a3c04853cddb22f0550655c49f1991017d14e63002a912ebce7719b2d1b90473', '[\"*\"]', NULL, NULL, '2024-05-22 11:47:42', '2024-05-22 11:47:42'),
(103, 'App\\Models\\User', 1, 'myapp', 'b9e079debb85b8545392276b35d3b1a75ad080a14694565cd9d4dbeb033a7753', '[\"*\"]', NULL, NULL, '2024-05-22 12:04:44', '2024-05-22 12:04:44'),
(104, 'App\\Models\\User', 3, 'myapp', '19b9c6f9643adef4d69d0b3aabee3003d1e608dfbee7a93325f6569538b20660', '[\"*\"]', NULL, NULL, '2024-05-22 12:05:45', '2024-05-22 12:05:45'),
(105, 'App\\Models\\User', 3, 'myapp', '71525a6890c5094ffbab16d55699a3c89d3a27a000019084f27eb3ccf6b9b0fd', '[\"*\"]', NULL, NULL, '2024-05-22 12:10:56', '2024-05-22 12:10:56'),
(106, 'App\\Models\\User', 3, 'myapp', '937bdf9362cecfef020ed59f5be408be1ff52ea2205dec3ee17b20187316f85e', '[\"*\"]', NULL, NULL, '2024-05-22 12:11:09', '2024-05-22 12:11:09'),
(107, 'App\\Models\\User', 1, 'myapp', 'd2e9cba65335fc4e265e90540fd7d6ecc3084235444f0d453caea9aeef42a49c', '[\"*\"]', NULL, NULL, '2024-05-22 12:16:41', '2024-05-22 12:16:41'),
(108, 'App\\Models\\User', 1, 'myapp', '9dff6706b1d044dab69cfd24a6dec573fbe07576feb4783d8e6d7c840e8040ff', '[\"*\"]', NULL, NULL, '2024-05-22 12:35:45', '2024-05-22 12:35:45'),
(109, 'App\\Models\\User', 1, 'myapp', '08cdfd260f5376e4a31b47685566a31e59c534e13873caa695185ac08243acd9', '[\"*\"]', NULL, NULL, '2024-05-22 12:37:01', '2024-05-22 12:37:01'),
(110, 'App\\Models\\User', 1, 'myapp', '43910a526145b4d455b65d968395eda5ede3a5ff62f5d5196e6c2198c4ee2f4a', '[\"*\"]', NULL, NULL, '2024-05-22 12:42:58', '2024-05-22 12:42:58'),
(111, 'App\\Models\\User', 1, 'myapp', 'a967a65be7cbb79fb9f9490a79b0fcf35aa3b81a8553d87a2c0c9ec63319163c', '[\"*\"]', NULL, NULL, '2024-05-22 12:45:18', '2024-05-22 12:45:18'),
(112, 'App\\Models\\User', 1, 'myapp', 'ed803831b0719417a299c06da358f8e9ebf115de6acaa0b130eae233b1839532', '[\"*\"]', NULL, NULL, '2024-05-22 13:09:35', '2024-05-22 13:09:35'),
(113, 'App\\Models\\User', 1, 'myapp', '3b9b4f53a28e0f86c44b062076ae32b67fa81d37bae372461a0790906ad988dd', '[\"*\"]', NULL, NULL, '2024-05-22 13:10:03', '2024-05-22 13:10:03'),
(114, 'App\\Models\\User', 1, 'myapp', 'f8e58c963e7474b0c7ddafe42ea5bb5de62166e1f63b1b6b20af6c4c2eae3c77', '[\"*\"]', NULL, NULL, '2024-05-22 13:13:36', '2024-05-22 13:13:36'),
(115, 'App\\Models\\User', 1, 'myapp', '67dd333f9edcd277adf89faec65baad9e6194144fbff6ae2f97847defdd45c03', '[\"*\"]', NULL, NULL, '2024-05-22 13:14:20', '2024-05-22 13:14:20'),
(116, 'App\\Models\\User', 1, 'myapp', 'c5d38c6c13e30985f09214e39195b297bc44c4496e31ab10ec23092badeb6cc9', '[\"*\"]', NULL, NULL, '2024-05-22 13:18:29', '2024-05-22 13:18:29'),
(117, 'App\\Models\\User', 1, 'myapp', 'd9aa0168bd28290d725397baad4b1a4094d2b22ce78f926b5226db2586dc3615', '[\"*\"]', NULL, NULL, '2024-05-22 13:20:07', '2024-05-22 13:20:07'),
(118, 'App\\Models\\User', 1, 'myapp', '34b1724be71d63b695abff01f00e27c0177aee6e7607adc3e7b0557afcf350f0', '[\"*\"]', NULL, NULL, '2024-05-22 13:21:42', '2024-05-22 13:21:42'),
(119, 'App\\Models\\User', 1, 'myapp', '90ee647bcb93b7c1365ef89f5f34614f30272b4700abc735acfc063f10ec7af2', '[\"*\"]', NULL, NULL, '2024-05-22 13:23:09', '2024-05-22 13:23:09'),
(120, 'App\\Models\\User', 1, 'myapp', 'aa2c249f4cd817f5ccc8d83bc07b01074b49badea1bb2dfa20c18b8bd993eb6e', '[\"*\"]', NULL, NULL, '2024-05-22 13:30:11', '2024-05-22 13:30:11'),
(121, 'App\\Models\\User', 1, 'myapp', 'ce8cadbb585ca003e0e49dd6b0b879ad2dcc6d3a4b2411d73dfa6c6261cfdf05', '[\"*\"]', NULL, NULL, '2024-05-22 13:31:48', '2024-05-22 13:31:48'),
(122, 'App\\Models\\User', 1, 'myapp', '02baa0a55c54cd10c35ca230b2b2cdd46e907f73bc483ddf7e3152eced5376cd', '[\"*\"]', NULL, NULL, '2024-05-22 13:36:10', '2024-05-22 13:36:10'),
(123, 'App\\Models\\User', 1, 'myapp', 'b2f9f89167466b6fa3c28c5ab0df1f6b0c48ce0993c48f3051f417dc7324fe92', '[\"*\"]', NULL, NULL, '2024-05-22 13:38:11', '2024-05-22 13:38:11'),
(124, 'App\\Models\\User', 1, 'myapp', '81fa48e4a062264847907402c145e1892bb369d174dbba45ec58e693be40d6fc', '[\"*\"]', NULL, NULL, '2024-05-22 13:39:06', '2024-05-22 13:39:06'),
(125, 'App\\Models\\User', 1, 'myapp', '7e8b70f2690999ef82a5ada751e9e00c910550e7b61b5bdd994a962348ecdcc7', '[\"*\"]', NULL, NULL, '2024-05-22 13:39:36', '2024-05-22 13:39:36'),
(126, 'App\\Models\\User', 1, 'myapp', 'ec5884261cef0615282d7e96b6b07974b503cff6725d84d08dd17bb30881e2f3', '[\"*\"]', NULL, NULL, '2024-05-22 13:51:09', '2024-05-22 13:51:09'),
(127, 'App\\Models\\User', 3, 'myapp', '5bb1357900aab90597879448540947f3eaf419eaa9c375495aa7c4e4219e5916', '[\"*\"]', NULL, NULL, '2024-05-22 15:08:03', '2024-05-22 15:08:03'),
(128, 'App\\Models\\User', 3, 'myapp', 'b30e10ccddb597eb7ea59c2c8ec4ebcd3cfc495c702ebea8665a9b47bd277b57', '[\"*\"]', NULL, NULL, '2024-05-22 15:08:52', '2024-05-22 15:08:52'),
(129, 'App\\Models\\User', 1, 'myapp', 'c76fcb4d15c53debae4f161483efb6ba02099bc3dd8a5e84a3d74fe98bd7746b', '[\"*\"]', NULL, NULL, '2024-05-22 15:09:02', '2024-05-22 15:09:02'),
(130, 'App\\Models\\User', 1, 'myapp', '03a6dd3e67bc2fa5f9d2e5a48571334a180eeccc7533691f01d7a35b1dfb362d', '[\"*\"]', NULL, NULL, '2024-05-22 15:12:46', '2024-05-22 15:12:46'),
(131, 'App\\Models\\User', 3, 'myapp', 'b5cf209146b5597f27272a29b7bb3a353317adcb67f11597cf5fc63549a50717', '[\"*\"]', NULL, NULL, '2024-05-23 05:41:47', '2024-05-23 05:41:47'),
(132, 'App\\Models\\User', 1, 'myapp', '046aab87f11f5a6a50e825eaeb42ffca81e9b53fbe7b0b90ef8b4910d05ab1e0', '[\"*\"]', NULL, NULL, '2024-05-23 06:47:21', '2024-05-23 06:47:21'),
(133, 'App\\Models\\User', 3, 'myapp', '58e57a7af8a441d90b61d614914e3cee9de9be734203dad4d1ec825a64cac561', '[\"*\"]', NULL, NULL, '2024-05-23 08:32:59', '2024-05-23 08:32:59'),
(134, 'App\\Models\\User', 1, 'myapp', 'a849b8f2f27f707ed2eb0ffa26f60deda7e1412376a0bff948ed63eaa931b2e6', '[\"*\"]', NULL, NULL, '2024-05-23 08:35:21', '2024-05-23 08:35:21'),
(135, 'App\\Models\\User', 3, 'myapp', '4097c42fd5a6e743f85dd523691a556b6b3c5da668008fd2c117115ea3306855', '[\"*\"]', NULL, NULL, '2024-05-23 08:38:43', '2024-05-23 08:38:43'),
(136, 'App\\Models\\User', 1, 'myapp', '34c79811e95c54185d174dcf02f083e0ef9760cd5ec7f0f543f654c6826adf74', '[\"*\"]', NULL, NULL, '2024-05-23 08:40:59', '2024-05-23 08:40:59'),
(137, 'App\\Models\\User', 3, 'myapp', '76964d83c58fdabaf8b7c7ec9625473a2079b8509833d14868fc4c4e1c341c82', '[\"*\"]', NULL, NULL, '2024-05-23 08:41:27', '2024-05-23 08:41:27'),
(138, 'App\\Models\\User', 8, 'myapp', '5c4b3454b743d18e2854a8c44c30582ea8f36723c234e947fe46f227d3c0071a', '[\"*\"]', NULL, NULL, '2024-05-23 09:43:43', '2024-05-23 09:43:43'),
(139, 'App\\Models\\User', 9, 'myapp', 'ec5d376e63c7f25fc5748d7e317b586037bde25b5ea4da60a09093a42bc8a1b5', '[\"*\"]', NULL, NULL, '2024-05-23 09:45:50', '2024-05-23 09:45:50'),
(140, 'App\\Models\\User', 10, 'myapp', 'a4526f5ff902ce807e119282bc3a1e8bea67f328b11cab90ec5f575afaeb8dde', '[\"*\"]', NULL, NULL, '2024-05-23 09:47:31', '2024-05-23 09:47:31'),
(141, 'App\\Models\\User', 11, 'myapp', '5bc9316130b4badc0844237dafd83976e24fa166bdd2de6082533d2c5a00e8af', '[\"*\"]', NULL, NULL, '2024-05-23 09:52:55', '2024-05-23 09:52:55'),
(142, 'App\\Models\\User', 11, 'myapp', '2ccef01f0dc003d3d071bfc79bb310d68651b4f431338d0c80fbe788406bd9db', '[\"*\"]', NULL, NULL, '2024-05-23 09:53:19', '2024-05-23 09:53:19'),
(143, 'App\\Models\\Admin', 19, 'adminToken', 'b0260345fa68feb870b22912743def6bfcc864e34243ee39d33ab11e35f03c52', '[\"*\"]', NULL, NULL, '2024-05-23 20:07:59', '2024-05-23 20:07:59'),
(144, 'App\\Models\\Admin', 19, 'adminToken', 'f22a907363d122359168eb90b7c27babc4ab46128e1b0154f19da2d20e5acca2', '[\"*\"]', NULL, NULL, '2024-05-23 20:08:39', '2024-05-23 20:08:39'),
(145, 'App\\Models\\Admin', 19, 'adminToken', '257725d5a527a01240bc00f29ea36a5e3097a201b1052575ad993b8e0d98baf8', '[\"*\"]', NULL, NULL, '2024-05-23 20:08:42', '2024-05-23 20:08:42'),
(146, 'App\\Models\\Admin', 19, 'adminToken', '918e917b73a992c5669216ba54e1bf3d173cc4ef63821b15018dcbb10f2c29e1', '[\"*\"]', NULL, NULL, '2024-05-23 20:08:44', '2024-05-23 20:08:44'),
(147, 'App\\Models\\User', 1, 'myapp', 'c58249ca4638d8ac8aefc15569b8ac23c3c1c2467ae5e6124ae45a77d624ef5c', '[\"*\"]', NULL, NULL, '2024-05-23 20:47:24', '2024-05-23 20:47:24'),
(148, 'App\\Models\\User', 1, 'myapp', 'f85ef1c192daacbaae8b3a4cf27e140c272a3704aa98c06d08cfe28aec2d85be', '[\"*\"]', NULL, NULL, '2024-05-23 20:48:11', '2024-05-23 20:48:11'),
(149, 'App\\Models\\User', 1, 'myapp', 'a8b196d655612b0c4f2ef4dd10efb6f42d472e1f0654723d390e8d94570e639c', '[\"*\"]', NULL, NULL, '2024-05-23 20:57:24', '2024-05-23 20:57:24'),
(150, 'App\\Models\\Admin', 19, 'adminToken', '231ac453a52185c2e76bca37c77581e20e8f8199709d5c4de60e4b15114014ef', '[\"*\"]', NULL, NULL, '2024-05-23 21:16:57', '2024-05-23 21:16:57'),
(151, 'App\\Models\\Admin', 19, 'adminToken', 'e091f3f3055e0650d69314e1b46ef1e9c95ceebeaaa6cc1eee746c77dd7659e7', '[\"*\"]', NULL, NULL, '2024-05-23 21:22:06', '2024-05-23 21:22:06'),
(152, 'App\\Models\\Admin', 19, 'adminToken', 'b5f18f5b9a2b6650934ed9c9d50301a4bd5804ff380577ea8a355cb4bef49f31', '[\"*\"]', NULL, NULL, '2024-05-23 21:22:15', '2024-05-23 21:22:15'),
(153, 'App\\Models\\Admin', 19, 'adminToken', '309f8a5344d6d47f1128f9e669a8aa903b4c95eed54d5d890694bb70a2acdacb', '[\"*\"]', NULL, NULL, '2024-05-24 00:56:34', '2024-05-24 00:56:34'),
(154, 'App\\Models\\Admin', 19, 'adminToken', 'f69bbeb2cbb37f72b54403f279a67715616d4dce9c580d277f232d6536608469', '[\"*\"]', NULL, NULL, '2024-05-24 00:57:53', '2024-05-24 00:57:53'),
(155, 'App\\Models\\User', 1, 'myapp', 'd000a10ad2e09636c130e1052a622814354a2e04fa9f334ef0fe032826958aa3', '[\"*\"]', NULL, NULL, '2024-05-24 00:59:55', '2024-05-24 00:59:55'),
(156, 'App\\Models\\Admin', 20, 'adminToken', '442eef249acbd3ee2332f5a92a6305593385df19bdc33706e0cced8464009f00', '[\"*\"]', NULL, NULL, '2024-05-24 01:58:44', '2024-05-24 01:58:44'),
(157, 'App\\Models\\Admin', 20, 'adminToken', '18513ebb42f8d5c4ad59550527340ffcc0002dda778d542471f258ef0ecd46a1', '[\"*\"]', NULL, NULL, '2024-05-24 01:58:53', '2024-05-24 01:58:53'),
(158, 'App\\Models\\Admin', 19, 'adminToken', '27bf86101b37f6f214ff7ddd5d3b7bef01041a03fd6139353c0093f840e0ae2f', '[\"*\"]', NULL, NULL, '2024-05-24 02:10:43', '2024-05-24 02:10:43'),
(159, 'App\\Models\\User', 12, 'myapp', '9d7085a25505245408c56b0ec7a5a39b5bd755dd22785404b62094c2818d2eda', '[\"*\"]', NULL, NULL, '2024-05-24 20:11:56', '2024-05-24 20:11:56'),
(160, 'App\\Models\\User', 12, 'myapp', '61f2cd47c6ae9840b3bf35ba851f7d3aac040f771a419b7a4ceca2fb7eea6fe0', '[\"*\"]', NULL, NULL, '2024-05-24 20:12:53', '2024-05-24 20:12:53'),
(161, 'App\\Models\\Admin', 19, 'adminToken', '39352c08e2df3f908660a27cb9fceb50a14587db9a59e7d2a370befcfe64e83d', '[\"*\"]', NULL, NULL, '2024-05-24 20:17:58', '2024-05-24 20:17:58'),
(162, 'App\\Models\\Admin', 21, 'adminToken', '949dcb48f70b79789fadd29fc64b2d9b19c48de1099c8f2435a27e3a5e78f481', '[\"*\"]', NULL, NULL, '2024-05-24 20:22:17', '2024-05-24 20:22:17'),
(163, 'App\\Models\\Admin', 21, 'adminToken', '9a5ea50e8885412e326b960ec7e4ceb6416b0c43f8cd6cd3d4d90b6f33af3412', '[\"*\"]', NULL, NULL, '2024-05-25 08:00:04', '2024-05-25 08:00:04'),
(164, 'App\\Models\\Admin', 21, 'adminToken', 'e5ef97e787d8b1c90f59f5aaea295704ea3c74a66c977e19472c8cff54f7b185', '[\"*\"]', NULL, NULL, '2024-05-25 08:01:30', '2024-05-25 08:01:30'),
(165, 'App\\Models\\Admin', 21, 'adminToken', '1f6913d5096d6d6ea8cf5790d7e537f233d3ac835994830c3146dbe5a4594ac1', '[\"*\"]', NULL, NULL, '2024-05-25 08:01:40', '2024-05-25 08:01:40'),
(166, 'App\\Models\\User', 13, 'myapp', '2e19577b600a16429c09e1fd2f15383efff6f7c15c60fb2423e0735f02fa614c', '[\"*\"]', NULL, NULL, '2024-05-25 08:20:40', '2024-05-25 08:20:40'),
(167, 'App\\Models\\User', 13, 'myapp', 'b10afe7a1f8fc8dc22825b91b48366812058b2f376c12561a4d50d032da2f241', '[\"*\"]', NULL, NULL, '2024-05-25 08:20:52', '2024-05-25 08:20:52'),
(168, 'App\\Models\\User', 13, 'myapp', '873831f0a4df50c47b67dc1d9475e0a366da011a3e68f3858633ff80aa118dee', '[\"*\"]', NULL, NULL, '2024-05-25 08:27:13', '2024-05-25 08:27:13'),
(169, 'App\\Models\\User', 13, 'myapp', '56902681ff623ea1b5875ff38d24cf32b3830cafc5a209e70d6c495a859c607d', '[\"*\"]', NULL, NULL, '2024-05-25 08:30:35', '2024-05-25 08:30:35'),
(170, 'App\\Models\\User', 13, 'myapp', 'd8e8a5950259fa78413c639800e0048af09bbcc38d8cebe47f6981326543cdb5', '[\"*\"]', NULL, NULL, '2024-05-26 05:03:43', '2024-05-26 05:03:43'),
(171, 'App\\Models\\User', 13, 'myapp', '0d88e2e208731b10b24e7790311c5dbf585014512f9e2e9b37bf31cf49ec0de1', '[\"*\"]', NULL, NULL, '2024-05-26 05:10:29', '2024-05-26 05:10:29'),
(172, 'App\\Models\\User', 13, 'myapp', 'd63530a646e9233a68f7b41c2f135979c18bcfc282c84474faa241199dc9036e', '[\"*\"]', NULL, NULL, '2024-05-26 05:12:58', '2024-05-26 05:12:58'),
(173, 'App\\Models\\User', 13, 'myapp', '0a09e34f02a9b80cb5b8dd91adee0b810e57b85ae25a8f7c21a1912e1ad77a88', '[\"*\"]', NULL, NULL, '2024-05-26 09:41:43', '2024-05-26 09:41:43'),
(174, 'App\\Models\\Admin', 19, 'adminToken', '854b2ee55c6ec0d91159506c5e1b0c38e4b5f5925331ceaa0847e305c2fb7a31', '[\"*\"]', NULL, NULL, '2024-05-26 09:48:06', '2024-05-26 09:48:06'),
(175, 'App\\Models\\Admin', 19, 'adminToken', '6bcad8f653cad62d503c2273f7e95f7c7d0f2190bde5c7bd2abac55dc12ae5fb', '[\"*\"]', NULL, NULL, '2024-05-26 10:42:13', '2024-05-26 10:42:13'),
(176, 'App\\Models\\Admin', 19, 'adminToken', 'f03385ade35ef0bee78cd4df484b7761ff019c9427ee4c8d13071ec9fffecc80', '[\"*\"]', NULL, NULL, '2024-05-26 10:43:07', '2024-05-26 10:43:07'),
(177, 'App\\Models\\Admin', 19, 'adminToken', 'f304899878415e9b029c808f7d6df628d2f83410e39077d4ca846c11cd547131', '[\"*\"]', NULL, NULL, '2024-05-26 10:43:24', '2024-05-26 10:43:24'),
(178, 'App\\Models\\Admin', 19, 'adminToken', 'cbd4a3a35180d2934939070b2995eaf64f9fd194e4e99bddf009de025a1e0af8', '[\"*\"]', NULL, NULL, '2024-05-26 10:43:51', '2024-05-26 10:43:51'),
(179, 'App\\Models\\Admin', 19, 'adminToken', '0f7c5f5186719a34c7ec9f1fe267d173c9cd462bfeb7782f9ddb24dafa1057bf', '[\"*\"]', NULL, NULL, '2024-05-26 10:43:55', '2024-05-26 10:43:55'),
(180, 'App\\Models\\Admin', 19, 'adminToken', '3ee716adb0784f5046c4b9d1112f8a3a002a4077c9bcb9421709c36ff22b6471', '[\"*\"]', NULL, NULL, '2024-05-26 10:45:14', '2024-05-26 10:45:14'),
(181, 'App\\Models\\Admin', 19, 'adminToken', 'b2a298f281e711444ae6ac9aab671003e696acdaa8f58732cdca653eddf71498', '[\"*\"]', NULL, NULL, '2024-05-26 10:45:52', '2024-05-26 10:45:52'),
(182, 'App\\Models\\Admin', 19, 'adminToken', 'b67b92102a7394228cac1f07269763c937d321c426e79122567d780993c6e6ac', '[\"*\"]', NULL, NULL, '2024-05-26 10:53:00', '2024-05-26 10:53:00'),
(183, 'App\\Models\\Admin', 19, 'adminToken', '23ec8e5dd00f38b5328868636001abd3f00d2182520df9996922b29c63360fd8', '[\"*\"]', NULL, NULL, '2024-05-26 10:55:10', '2024-05-26 10:55:10'),
(184, 'App\\Models\\Admin', 19, 'adminToken', '8e13c150c3f6d0ce37acfc06c70001afa74cb2d49e305a55c62613f008d8f99e', '[\"*\"]', NULL, NULL, '2024-05-26 10:55:52', '2024-05-26 10:55:52'),
(185, 'App\\Models\\User', 1, 'myapp', '7310423bb7a2b8343b4a2c8b95b1052df179af16a5a56c1d8935dfb66549df51', '[\"*\"]', NULL, NULL, '2024-05-27 00:40:36', '2024-05-27 00:40:36'),
(186, 'App\\Models\\Admin', 19, 'adminToken', '1858f8cd5a0e8fca89c78290d78e8eb4ea373379991fe6280100883e85c71ecc', '[\"*\"]', NULL, NULL, '2024-05-27 01:07:23', '2024-05-27 01:07:23'),
(187, 'App\\Models\\User', 1, 'myapp', '288f341c2f49cbd5461cf79fe5fb918e4a872994e13efaa700a392ba8ea80bfa', '[\"*\"]', NULL, NULL, '2024-05-27 02:17:46', '2024-05-27 02:17:46'),
(188, 'App\\Models\\Admin', 19, 'adminToken', 'da3742aab7350c6879db51e2cc42b61b24835cee81bf1fdc873574a4b0498efa', '[\"*\"]', NULL, NULL, '2024-05-27 02:27:03', '2024-05-27 02:27:03'),
(189, 'App\\Models\\User', 1, 'myapp', 'a109c84770f4142c1e0d070c045faedbedc229dab8b783f2524ada60fd2274d6', '[\"*\"]', NULL, NULL, '2024-05-27 03:52:32', '2024-05-27 03:52:32'),
(190, 'App\\Models\\User', 1, 'myapp', 'c1316c1b1d185ad139bdfdaa117b2bd5caa17b196686362777ec9a62f504bc54', '[\"*\"]', NULL, NULL, '2024-05-27 07:58:09', '2024-05-27 07:58:09'),
(191, 'App\\Models\\User', 1, 'myapp', '57e41d66f64b569b5ae484648301bdbd280aaf54291a0cad8bfb869df6e62430', '[\"*\"]', NULL, NULL, '2024-05-27 07:58:12', '2024-05-27 07:58:12'),
(192, 'App\\Models\\Admin', 19, 'adminToken', '75561b5ee6503d9dd0063af5f0fe6dd071ff076a2a751106baf3f5084a804522', '[\"*\"]', NULL, NULL, '2024-05-27 08:14:43', '2024-05-27 08:14:43'),
(193, 'App\\Models\\User', 1, 'myapp', 'ec51fe2d6b470cbf96045a81e172471ab099fe393a68c50924a96200a23d62dd', '[\"*\"]', NULL, NULL, '2024-05-28 07:35:32', '2024-05-28 07:35:32'),
(194, 'App\\Models\\User', 1, 'myapp', '52ea7fde3568892d666f9d642ac2b202e73abcd1f85bd8dbc8e1f5d8233cc589', '[\"*\"]', NULL, NULL, '2024-05-28 07:35:33', '2024-05-28 07:35:33'),
(195, 'App\\Models\\User', 1, 'myapp', '93a412966c117d0b7ede6a9cdca7790d52bea45aac8a6a507c14c0d4c1edc93d', '[\"*\"]', NULL, NULL, '2024-05-29 19:21:56', '2024-05-29 19:21:56'),
(196, 'App\\Models\\Admin', 19, 'adminToken', 'f1c4af7ed03553e8c929b43320b9b95deea09f59cecf26c2ede7f82c237689a1', '[\"*\"]', NULL, NULL, '2024-05-29 19:35:18', '2024-05-29 19:35:18'),
(197, 'App\\Models\\Admin', 19, 'adminToken', 'ea1673606b608945f97fbdd7cacb800409b89761ae7f5c6904e2db1a5b3f5785', '[\"*\"]', NULL, NULL, '2024-05-29 19:40:22', '2024-05-29 19:40:22'),
(198, 'App\\Models\\User', 1, 'myapp', '7e048f300332835735a77ead9ff510a93c415a16cfa31b540419980f5674338d', '[\"*\"]', NULL, NULL, '2024-05-29 19:44:33', '2024-05-29 19:44:33'),
(199, 'App\\Models\\Admin', 19, 'adminToken', '0b32a73b881ec0293c9d6005aeb1ffe71a62ad9e5cab2a0906603a6aaec5ea85', '[\"*\"]', NULL, NULL, '2024-05-30 02:14:47', '2024-05-30 02:14:47'),
(200, 'App\\Models\\Admin', 19, 'adminToken', '7eb05d813d6fa10354ad7316db5661b0087208f699554afbb238ed2a46e1ec73', '[\"*\"]', NULL, NULL, '2024-05-30 02:55:27', '2024-05-30 02:55:27'),
(201, 'App\\Models\\Admin', 23, 'adminToken', '28ab05be1df91e560e627f476a6afaf04d12acf3cf03eb63bbb6f5fc32a7d137', '[\"*\"]', NULL, NULL, '2024-05-30 02:56:28', '2024-05-30 02:56:28'),
(202, 'App\\Models\\User', 1, 'myapp', '025e1bae67a5240f30dd7162b3e267c256c85f5964c257f0985b4f637bb0c938', '[\"*\"]', NULL, NULL, '2024-05-30 03:02:35', '2024-05-30 03:02:35');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `brand` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(12,0) NOT NULL,
  `stock` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `name`, `brand`, `description`, `price`, `stock`, `created_at`, `updated_at`, `category_id`) VALUES
(18, 'Đồng hồ nam dây kim loại Casio Edifice chính hãng ECB-10DB-1ADF', 'Casio', 'CÁC TÍNH NĂNG\r\n* Dòng đồng hồ kết nối điện thoại thông minh EDIFICE\r\nEDIFICE, thương hiệu đồng hồ kim loại hiệu suất cao ra đời với phương châm “Tốc độ và Thông minh”, vừa cho ra mắt dòng sản phẩm ECB-10 mới có thể kết nối với điện thoại thông minh để hiển thị giờ hiện hành với độ chính xác cao, quản lý lịch cá nhân và tự động điều chỉnh cài đặt múi giờ theo vị trí hiện tại của bạn.\r\nDòng đồng hồ ECB-10 được phát triển dựa theo tư vấn của các thành viên đội đua. Họ sử dụng Bluetooth kết nối đồng hồ với điện thoại thông minh để sắp xếp lịch trình chi tiết hàng ngày giữa các thành viên trong nhóm và cập nhật Múi giờ tự động, đảm bảo hiển thị giờ hiện hành chính xác cho dù bạn có ở bất cứ nơi đâu trên thế giới.\r\nTính năng Bộ hẹn giờ lịch mới liên kết với ứng dụng lịch trên điện thoại và hiển thị thời gian bắt đầu và kết thúc cuộc hẹn trên màn hình đồng hồ. Bạn thậm chí có thể cấu hình cài đặt để có âm báo nhắc nhở thời gian bắt đầu và kết thúc.\r\nThiết kế mặt đồng hồ cơ bản kết hợp với phần gờ hình bát giác và bốn ốc vít, gợi nhớ đến hình ảnh của một thiết bị bảo dưỡng xe đua chuyên nghiệp cùng ấn tượng về mặt cơ học. Các sọc ngang trên mặt đồng hồ tạo liên tưởng về một chiếc xe đua đang lướt quanh các cung đường với tốc độ cao.\r\nSự thông minh trong thiết kế và tính năng của mẫu đồng hồ kim mới này đã truyền tải trọn vẹn tinh thần của môn thể thao tốc độ và là sự lựa chọn hoàn hảo dành cho giới kinh doanh hiện đại hoặc những người thường xuyên phải di chuyển.\r\n\r\n* Bộ hẹn giờ lịch\r\nTính năng Bộ hẹn giờ lịch mới liên kết với ứng dụng lịch trên điện thoại để hiển thị thời gian bắt đầu và kết thúc cuộc hẹn trên màn hình đồng hồ cũng như báo cuộc hẹn bằng báo thức đồng hồ. Bạn có thể nhập và quản lý lịch qua ứng dụng lịch trên điện thoại và để đồng hồ báo các cuộc hẹn sắp tới. Bạn còn có thể sử dụng đồng hồ để điều chỉnh lịch.\r\n\r\nĐẶC ĐIỂM KỸ THUẬT\r\n* Vật liệu vỏ / vành bezel: Thép không gỉ\r\n* Chốt gập 3 chỉ với một lần bấm\r\n* Dây đeo bằng thép không gỉ\r\n* Mặt kính khoáng\r\n* Khả năng chống nước ở độ sâu 100 mét\r\n* Hai đèn LED\r\nĐèn LED cho mặt đồng hồ (Đèn LED tự động, Chiếu sáng cực mạnh, thời lượng chiếu sáng có thể lựa chọn (1,5 giây hoặc 3 giây), phát sáng sau)\r\nĐèn LED cực tím cho màn hình số (Đèn LED tự động, Chiếu sáng cực mạnh, thời lượng chiếu sáng có thể lựa chọn (1,5 giây hoặc 3 giây), phát sáng sau)\r\n* Mobile link (Kết nối không dây sử dụng Bluetooth)\r\n* Chế độ bay\r\n* Giờ thế giới\r\n38 múi giờ (38 thành phố + giờ phối hợp quốc tế), bật/tắt tiết kiệm ánh sáng ban ngày, chuyển tự động giờ mùa hè (DST), chuyển đổi Giờ địa phương/Giờ thế giới\r\n* Đồng hồ bấm giờ 1/1000 giây\r\nKhả năng đo:\r\n00\'00\'\'000~59\'59\'\'999 (cho 60 phút đầu tiên)\r\n1:00\'00\'\'0~23:59\'59\'\'9 (sau 60 phút)\r\nĐơn vị đo:\r\n1/1000 giây (cho 60 phút đầu tiên)\r\n1/10 giây (sau 60 phút)\r\nChế độ đo: Thời gian đã trôi qua, thời gian vòng chạy\r\n* Đồng hồ đếm ngược\r\nĐơn vị đo: 1 giây\r\nKhoảng đếm ngược: 24 giờ\r\nKhoảng cài đặt thời gian bắt đầu đếm ngược: 1 giây đến 24 giờ (khoảng tăng 1 giây, khoảng tăng 1 phút và khoảng tăng 1 giờ)\r\n* 5 chế độ báo thức hàng ngày\r\n* Tín hiệu thời gian hàng giờ\r\n* Tính năng chuyển kim (Kim dịch chuyển qua một bên để không che kết quả hiển thị trên màn hình kỹ thuật số)\r\n* Lịch hoàn toàn tự động (đến năm 2099)\r\n* Định dạng giờ 12/24\r\n* Bật/tắt tiếng bíp báo lịch\r\n* Bật/tắt âm nhấn nút\r\n* Chuyển đổi chế độ hiển thị ngày/tháng\r\n* Hiển thị ngày (các ngày trong tuần có thể chọn bằng sáu ngôn ngữ)\r\n* Giờ hiện hành thông thường\r\nĐồng hồ kim: 2 kim (giờ, phút (kim di chuyển 20 giây một lần)), 1 mặt số (được liên kết với từng chế độ)\r\nĐồng hồ kỹ thuật số: Giờ, phút, giây, giờ chiều, tháng, ngày, thứ\r\n* Độ chính xác: ±15 giây một tháng (không có chức năng Mobile Link)\r\n* Tuổi thọ pin xấp xỉ: 2 năm đối với pin CR2016\r\n\r\nKÍCH THƯỚC VỎ / TỔNG TRỌNG LƯỢNG\r\n* Kích thước vỏ: 51mm x 48,5mm x 12,5mm\r\n* Tổng trọng lượng: 167g', 4295000, 5, '2024-05-14 08:06:44', '2024-05-14 08:06:44', 1),
(19, 'Đồng Hồ Nam Citizen Dây Thép Không Gỉ BI5000-87A - Mặt Trắng (39mm)', 'Citizen', 'Đặc điểm nổi bật:\r\n\r\n100% đồng hồ Citizen chính hãng thương hiệu Nhật Bản.\r\n5 năm bảo hành bao gồm 1 năm chính hãng toàn cầu và 4 năm bảo hành tại hệ thống.\r\nCông nghệ Pin thạch anh, giúp đồng hồ hoạt động từ 1.5 đến 2 năm trước khi cần thay pin.\r\nMặt kính cường lực với độ chịu lực cao, hạn chế tác động va đập.\r\nDây kim loại chất liệu thép không gỉ hạn chế ăn mòn cao.\r\nKim phủ dạ quang phát sáng trong tối.\r\nChức năng lịch ngày.\r\nThiết kế thanh lịch.\r\nKích thước mặt: 39 mm\r\nĐộ rộng dây: 21 mm\r\nĐộ dày vỏ: 8 mm\r\nChống nước: 5 ATM (50M) thoải mái rửa tay, đi mưa, đi tắm (không dùng đi bơi hay lặn)', 3285000, 7, '2024-05-14 08:10:40', '2024-05-14 08:10:40', 1),
(20, 'Đồng hồ nữ dây da Julius Hàn Quốc Ja-1335', 'Julius', 'Thương hiệu: JULIUS\r\n\r\nMã sản phẩm: JA-1335\r\n\r\nDành cho: Nữ giới, yêu thích thời trang và phá cách\r\n\r\nChất liệu dây: Dây da\r\n\r\nChất liệu mặt kính: Mặt kính khoáng cao cấp trong suốt rõ nét, độ cứng cao (chống va đập tốt ở mức sinh hoạt hàng ngày)\r\n\r\nKích thước bề mặt: 24x28mm\r\n\r\nĐộ dày: 8 mm\r\n\r\nĐộ rộng của dây: 14mm\r\n\r\nKiểu khóa: Khóa gài\r\n\r\nChất liệu vỏ máy: Hợp kim mạ ion vàng hồng, sử dụng công nghệ mạ IP chân không tiên tiến giúp đem lại độ sáng bóng và bền màu\r\n\r\nMáy: Quartz Nhật MIYOTA 2035\r\n\r\nKhả năng chịu nước: Chống thấm nước 3ATM (30m) có thể đi mưa, rửa tay, rửa mặt. Tránh tiếp xúc với môi trường hóa chất như giặt đồ, tấm gội.\r\n\r\nBảo Quản: Lau chùi vệ sinh sản phẩm thường xuyên bằng giấy mền khỏi mồ hôi cơ thể và hạn chế tiếp xúc hóa chất bảo vệ màu sắc sản phẩm và pin sản phẩm lâu dài.', 899000, 4, '2024-05-14 08:14:56', '2024-05-14 08:14:56', 2),
(21, 'Đồng Hồ Nữ Julius Hàn Quốc JA-979 Dây Da', 'Julius', 'Thương hiệu: JULIUS\r\n\r\nMã sản phẩm: JA-979 (Chọn màu)\r\n\r\nDành cho: Nữ giới, yêu thích thời trang và phá cá\r\n\r\nChất liệu dây: Dây da Genuine Leather bền bỉ\r\n\r\nChất liệu mặt kính: Mặt kính khoáng cao cấp trong suốt rõ nét, độ cứng cao (chống va đập tốt ở mức sinh hoạt hằng ngày)\r\n\r\nKích thước bề mặt: 2,3cm (Mặt tròn)\r\n\r\nĐộ dày: 0,8cm\r\n\r\nTổng độ dài đồng hồ: 21,5cm\r\n\r\nĐộ rộng của dây: 0,8cm\r\n\r\nKiểu khóa: Khóa gài\r\n\r\nChất liệu vỏ máy: Hợp kim mạ ion, sử dụng công nghệ mạ IP chân không tiên tiến giúp đem lại độ sáng bóng và bền màu\r\n\r\nMáy: Quartz Nhật MIYOTA 2035 (được sản xuất bởi Citizen Nhật Bản), có lịch ngày, thứ tiện lợi\r\n\r\nKhả năng chịu nước:  Chống thấm nước 3ATM (30m) có thể đi mưa, rửa tay, rửa mặt. Tránh tiếp xúc với môi trường hóa chất như giặt đồ, tấm gội.\r\n\r\nBảo Quản: Lau chùi vệ sinh sản phẩm thường xuyên bằng giấy mềm khỏi mồ hôi cơ thể và hạn chế tiếp xúc hóa chất bảo vệ màu sắc sản phẩm và pin sản phẩm lâu dài.', 649000, 3, '2024-05-14 08:17:37', '2024-05-15 10:51:25', 2),
(22, 'Đồng hồ nữ chính hãng Shengke Korea K8047L-04 Nâu', 'Shengke', 'Shengke Korea là thương hiệu Đồng hồ nữ thời trang hàng đầu thế giới được thiết kế bởi các nhà thiết kế hàng đầu của Hàn Quốc. Nhà máy sản xuất quy mô lớn được đặt tại Trung Quốc với năng lực sản xuất đáp ứng toàn bộ nhu cầu vô cùng lớn của các khách hàng trên toàn thế giới! Đồng hồ nữ Chính Hãng Shengke Korea K8047️ ️ Thông số kỹ thuật: + Đường kính: 32mm  + Kích thước dây: 15mm + MVT: Japan Quartz (Khẳng định chất lượng hàng đầu về dòng máy Quartz) + MTL: Brass (Chất liệu vỏ hợp kim) + Plating: Platinum (Mạ/ phủ Bạch kim) + Chống nước: 3ATM + Thời hạn bảo hành: 12 tháng  -------------------------------------------------------------------------- ️ Lưu ý: Đồng hồ Shengke Korea chính hãng phải yêu cầu các yếu tố sau: (Áp dụng từ 01/7/2018) 1. Mọi đồng hồ Shengke Korea chính hãng tại Việt Nam phải có tem chống hàng giả của hãng tại đáy của sản phẩm 2. Mọi sản phẩm Shengke Korea chính hãng phải được bảo hành điện tử trên website của Shengke Việt Nam. (Bảo hành dựa theo mã Imei của sản phẩm)', 799000, 7, '2024-05-14 08:21:29', '2024-05-15 10:51:32', 2),
(23, 'Đồng hồ nữ chính hãng Royal Crown 6104 dây da đỏ', 'Royal Crown', 'Đồng hồ Royal Crown chính hãng phải đảm bảo các yếu tố như sau:\r\n1. Mọi sản phẩm đồng hồ Royal Crown đều có tem chống hàng giả Security từ hãng tại đáy của sản phẩm.\r\n2. Gần như tất cả sản phẩm Royal Crown đều có biểu tượng hãng ở núm của đồng hồ.\r\n3. Tất cả đá đính trên sản phẩm đều có chấu bám 4 cạnh rất chắc chắn chứ không phải đá dán giống các loại đồng hồ thời trang giá rẻ, thuộc dòng đá CZ có độ cứng là 8.3, mềm hơn so với Ruby là 9 và Kim cương là 10.\r\n4. Mặt số: Hầu hết các mặt số của đồng hồ Chính hãng Royal Crown đều là mặt được khảm xà cừ (vỏ trai) tự nhiên nên sẽ có các vết vân và có cảm giác ghồ ghề trên bề mặt tuy nhiên các bạn yên tâm vì mặt đã được mài phẳng thì kim đồng hồ mới hoạt động bình thường được nhé. Mặt khảm khi soi nghiêng sẽ có màu 7 sắc cầu vồng rất đẹp, độc và lạ ^^\r\nRoyal Crown là thương hiệu đồng hồ của Ý. Hiện đã có Store trên 79 quốc gia toàn thế giới. Tương tự như hãng công nghệ lớn của thế giới, các sản phẩm được lắp ráp tại nhà máy được đặt tại Trung Quốc và vẫn phải đảm bảo chất lượng theo tiêu chuẩn toàn cầu của hãng.\r\n+Đường kính: 31x31mm\r\n+Kích thước dây: 18mm\r\n+MVT (Máy): Japan Quartz (Khẳng định chất lượng HÀNG ĐẦU về dòng máy pin)\r\n+Chất liệu vỏ: Brass - Hợp kim phủ Platinum/ Thép không gỉ\r\n+Chất liệu dây: Dây da chính hãng\r\n+Chống nước: 3ATM (Đi mưa, rửa tay thoải mái - Có thể đeo đi tắm tuy nhiên shop khuyến cáo các bạn không nên dùng tầm tã, nhớ đọc kỹ HDSD kèm theo để sp luôn được bền đẹp nhé)\r\n+Thời hạn bảo hành: Bảo hành chính hãng 12 tháng, thay pin miễn phí trọn đời sp.', 2899000, 6, '2024-05-14 10:27:26', '2024-05-14 10:27:26', 2),
(24, 'ĐỒNG HỒ NỮ CHÍNH HÃNG ROYAL CROWN 3584-J-RG DÂY ĐÁ VỎ VÀNG HỒNG', 'Royal Crown', 'Royal Crown là thương hiệu đồng hồ của Ý. Hiện đã có Store trên 79 quốc gia toàn thế giới. Tương tự như hãng công nghệ lớn của thế giới, các sản phẩm được lắp ráp tại nhà máy được đặt tại Trung Quốc và vẫn phải đảm bảo chất lượng theo tiêu chuẩn toàn cầu của hãng.\r\n\r\nRoyal Crown Việt Nam hướng dẫn khách hàng những lưu ý sau khi mua sản phẩm:\r\n\r\n Từ 12/12/2017, đồng hồ Royal Crown chính hãng phải đảm bảo các yếu tố như sau:\r\n\r\nMọi sản phẩm đồng hồ Royal Crown đều có tem chống hàng giả Security từ hãng tại đáy của sản phẩm.\r\nGần như tất cả sản phẩm Royal Crown đều có biểu tượng hãng ở núm của đồng hồ.\r\nTất cả đá đính trên sản phẩm đều có chấu bám 4 cạnh rất chắc chắn chứ không phải đá dán giống các loại đồng hồ thời trang giá rẻ, thuộc dòng đá CZ có độ cứng là 8.3, mềm hơn so với Ruby là 9 và Kim cương là 10.\r\nMặt số: Hầu hết các mặt số của đồng hồ Chính hãng Royal Crown đều là mặt được khảm xà cừ (vỏ trai) tự nhiên nên sẽ có các vết vân và có cảm giác ghồ ghề trên bề mặt tuy nhiên các bạn yên tâm vì mặt đã được mài phẳng thì kim đồng hồ mới hoạt động bình thường được nhé. Mặt khảm khi soi nghiêng sẽ có màu 7 sắc cầu vồng rất đẹp, độc và lạ ^^\r\n***THÔNG SỐ KỸ THUẬT:\r\n\r\n+Đường kính: 20x35mm\r\n\r\n+Kích thước dây: 9mm\r\n\r\n+MVT (Máy): Japan Quartz (Khẳng định chất lượng HÀNG ĐẦU về dòng máy pin)\r\n\r\n+Chất liệu vỏ: Brass - Hợp kim phủ Platinum/ Thép không gỉ\r\n\r\n+Chất liệu dây: Dây đá CZ\r\n\r\n+Chống nước: 3ATM (Đi mưa, rửa tay thoải mái - Có thể đeo đi tắm tuy nhiên shop khuyến cáo các bạn không nên dùng tầm tã, nhớ đọc kỹ HDSD kèm theo để sp luôn được bền đẹp nhé) +Thời hạn bảo hành: Bảo hành chính hãng 12 tháng, thay pin miễn phí trọn đời sp.', 4899000, 3, '2024-05-14 10:43:50', '2024-05-14 10:43:50', 2),
(25, 'ĐỒNG HỒ NAM CHÍNH HÃNG ROYAL CROWN 3594M DÂY THÉP MẶT FULL ĐÁ', 'Royal Crown', 'Đồng hồ Royal Crown chính hãng phải đảm bảo các yếu tố như sau:\r\n1. Mọi sản phẩm đồng hồ Royal Crown đều có tem chống hàng giả Security từ hãng tại đáy của sản phẩm.\r\n2. Gần như tất cả sản phẩm Royal Crown đều có biểu tượng hãng ở núm của đồng hồ.\r\n3. Tất cả đá đính trên sản phẩm đều có chấu bám 4 cạnh rất chắc chắn chứ không phải đá dán giống các loại đồng hồ thời trang giá rẻ, thuộc dòng đá CZ có độ cứng là 8.3, mềm hơn so với Ruby là 9 và Kim cương là 10.\r\n4. Mặt số: Hầu hết các mặt số của đồng hồ Chính hãng Royal Crown đều là mặt được khảm xà cừ (vỏ trai) tự nhiên nên sẽ có các vết vân và có cảm giác ghồ ghề trên bề mặt tuy nhiên các bạn yên tâm vì mặt đã được mài phẳng thì kim đồng hồ mới hoạt động bình thường được nhé. Mặt khảm khi soi nghiêng sẽ có màu 7 sắc cầu vồng rất đẹp, độc và lạ ^^\r\nRoyal Crown là thương hiệu đồng hồ của Ý. Hiện đã có Store trên 79 quốc gia toàn thế giới. Tương tự như hãng công nghệ lớn của thế giới, các sản phẩm được lắp ráp tại nhà máy được đặt tại Trung Quốc và vẫn phải đảm bảo chất lượng theo tiêu chuẩn toàn cầu của hãng.\r\n+Đường kính: 37mm\r\n+MVT (Máy): Japan Quartz (Khẳng định chất lượng HÀNG ĐẦU về dòng máy pin)\r\n+Chất liệu vỏ: Brass - Hợp kim phủ Platinum/ Thép không gỉ\r\n+Chất liệu dây: Dây thép không gỉ\r\n+Chống nước: 3ATM (Đi mưa, rửa tay thoải mái - Có thể đeo đi tắm tuy nhiên shop khuyến cáo các bạn không nên dùng tầm tã, nhớ đọc kỹ HDSD kèm theo để sp luôn được bền đẹp nhé)\r\n+Thời hạn bảo hành: Bảo hành chính hãng 12 tháng, thay pin miễn phí trọn đời sp.', 16899000, 2, '2024-05-14 10:51:45', '2024-05-14 10:51:45', 1),
(26, 'Đồng Hồ Thông Minh Xiaomi Redmi Watch 3 / Watch 3 Active - Hàng Chính Hãng, Bản Quốc Tế', 'Xiaomi', 'Công nghệ màn hình: LCD\r\nKích thước màn hình: 1.83 inch\r\nĐộ phân giải: 240 x 280 Pixels\r\n\r\nThiết kế\r\nChất liệu mặt kính: Kính cường lực cong 2.5D\r\nThiết kế: Mặt chữ nhật\r\nKích thước cổ tay phù hợp: Từ 13.5 - 20 cm\r\nTrọng lượng: 41.67 gram\r\n\r\nCấu hình\r\nTương thích: Điện thoại chạy Android 6.0 trở lên\r\niPhone chạy iOS 12.0 trở lên\r\n\r\nDây đeo\r\nCó thể thay dây: Có\r\nChất liệu dây: Silicone\r\nĐộ dài dây: 135 - 200 mm\r\nBề rộng dây: Hãng không công bố\r\n\r\nTính năng\r\nNghe,gọi: Nghe gọi qua Bluetooth\r\nKháng nước: 5 ATM (đi mưa, bơi ở vùng nước nông)\r\nTiện ích sức khoẻ: Chế độ luyện tập, Theo dõi giấc ngủ, Đo nhịp tim, Đo lượng oxy trong máu\r\nTính năng Thông minh: Chế độ luyện tập, Hiển thị thông báo điện thoại, Tùy chỉnh mặt đồng hồ, Nghe gọi trên đồng hồ, Nhận thông báo cuộc gọi\r\n\r\nThông báo: Cuộc gọi, Tin nhắn\r\n\r\nPin\r\nThời lượng pin: Chế độ thông minh: 12 ngày\r\nSử dụng liên tục: 8 ngày\r\nCổng sạc: Nam châm\r\n\r\nChiếc đồng hồ đến từ nhà Xiaomi không làm các tín đồ công nghệ thất vọng bởi sở hữu nhiều điểm đáng giá trong mức giá. Sau đây là những điểm nổi bật đáng để sở hữu!\r\n\r\n- Khả năng chống nước 5ATM, thoải mái trong nhiều hoạt động như bơi lội hay lặn ống thở với độ sâu tối đa 50m\r\n\r\n- Gọi thoại Bluetooth với 1 thao tác chạm, không bỏ lỡ cuộc gọi thoại nào\r\n\r\n- Hơn 100 chế độ luyện tập, thực hành một cách chuyên nghiệp và miễn phí\r\n\r\n- Thiết kế mặt đồng hồ hình chữ nhật cùng vỏ hoàn thiện bằng kim loại, tạo dấu ấn phong cách cá nhân\r\n\r\nThiết kế mới mẻ, kết nối thông minh\r\nRedmi Watch 3 Active mang một thiết kế tinh tế với màn hình chữ nhật đơn giản và lớp vỏ được hoàn thiện từ kim loại cao cấp. Ngoài ra, bạn có thể thay đổi màu dây đeo để phù hợp với những phong cách của bạn.\r\nĐồng hồ có khả năng kết nối với điện thoại của bạn thông qua Bluetooth vô cùng nhanh chóng. Nhờ đó bạn có thể trả lời các cuộc gọi hay tin nhắn chỉ bằng một cú chạm đơn giản vào màn hình. Cho dù bạn đang làm việc hay tập thể dục những vẫn không bỏ lỡ cuộc gọi nào.\r\n\r\nMàn hình chất lượng, tính năng theo dõi sức khỏe hiện đại\r\nXiaomi Redmi Watch 3 Active sở hữu màn hình 1.83 inch siêu lớn có màu sắc phong phú, hiển thị rõ ràng. Mặt kính cường lực cong cho phép nhìn rõ hơn vẻ ngoài thanh lịch và khả năng chống mài mòn tốt hơn.\r\nĐồng hồ thông minh Xiaomi Redmi Watch 3 Active\r\nNhà sản xuất luôn đặt việc theo dõi sức khỏe của người dùng lên hàng đầu với ứng dụng theo dõi nhịp tim của bạn cả ngày và đêm. Tính năng này sẽ giúp đồng hồ luôn cập nhật nhịp tim của bạn một cách nhanh chóng nhât giúp bảo vệ sức khỏe của bạn mọi lúc mọi nơi.\r\n\r\nViên pin 289mAh cung cấp trải nghiệm liên tục trong nhiều ngày\r\nToàn bộ năng lượng hoạt động trên đồng hồ thông minh Xiaomi Redmi Watch 3 Active được cung cấp bởi viên pin 289mAh, mang tới cho người dùng trải nghiệm sử dụng liên tục trong nhiều ngày.\r\nCụ thể, khi ở chế độ thông minh, Redmi Watch 3 Active có thể hoạt động liền mạch lên tới 12 ngày. Còn khi vận hành ở chế độ sử dụng liên tục, thế hệ smartwatch Xiaomi này lại thời gian sử dụng đạt đến 8 ngày.\r\n*****Xiaomi Redmi Watch 3 Active:\r\nCông nghệ màn hình: LCD\r\nKích thước màn hình: 1.83 inch\r\nĐộ phân giải: 240 x 280 Pixels\r\n\r\nThiết kế\r\nChất liệu mặt kính: Kính cường lực cong 2.5D\r\nThiết kế: Mặt chữ nhật\r\nKích thước cổ tay phù hợp: Từ 13.5 - 20 cm\r\nTrọng lượng: 41.67 gram\r\n\r\nCấu hình\r\nTương thích: Điện thoại chạy Android 6.0 trở lên\r\niPhone chạy iOS 12.0 trở lên\r\n\r\nDây đeo\r\nCó thể thay dây: Có\r\nChất liệu dây: Silicone\r\nĐộ dài dây: 135 - 200 mm\r\nBề rộng dây: Hãng không công bố\r\n\r\nTính năng\r\nNghe,gọi: Nghe gọi qua Bluetooth\r\nKháng nước: 5 ATM (đi mưa, bơi ở vùng nước nông)thoải mái trong nhiều hoạt động như bơi lội hay lặn ống thở với độ sâu tối đa 50m\r\nTiện ích sức khoẻ: Chế độ luyện tập, Theo dõi giấc ngủ, Đo nhịp tim, Đo lượng oxy trong máu\r\nTính năng Thông minh: Chế độ luyện tập, Hiển thị thông báo điện thoại, Tùy chỉnh mặt đồng hồ, Nghe gọi trên đồng hồ, Nhận thông báo cuộc gọi\r\n\r\nThông báo: Cuộc gọi, Tin nhắn\r\n\r\nThời lượng pin: Chế độ thông minh: 12 ngày\r\nSử dụng liên tục: 8 ngày\r\nCổng sạc: Nam châm\r\n\r\nChiếc đồng hồ đến từ nhà Xiaomi không làm các tín đồ công nghệ thất vọng bởi sở hữu nhiều điểm đáng giá trong mức giá. Sau đây là những điểm nổi bật đáng để sở hữu!\r\n\r\n- Khả năng chống nước 5ATM, thoải mái trong nhiều hoạt động như bơi lội hay lặn ống thở với độ sâu tối đa 50m\r\n- Gọi thoại Bluetooth với 1 thao tác chạm, không bỏ lỡ cuộc gọi thoại nào\r\n\r\n- Hơn 100 chế độ luyện tập, thực hành một cách chuyên nghiệp và miễn phí\r\n\r\n*****Xiaomi Redmi Watch 3 :\r\n\r\nCông nghệ màn hình: LCD\r\nKích thước màn hình: 1.75 inch,Dài 42.6 mm - Ngang 36.56 mm - Dày 9.99, siêu lớn và rõ nét\r\nDễ nhìn ngay cả dưới ánh nắng mặt trời chói chang\r\nĐộ phân giải: 390 × 450 pixels\r\n\r\nThiết kế\r\nChất liệu mặt kính: Kính cường lực cong 2.5D\r\nThiết kế: Mặt chữ nhật\r\nKích thước cổ tay phù hợp: Từ 13.5 - 20 cm\r\nCấu hình\r\nTương thích: Điện thoại chạy Android 6.0 trở lên\r\niPhone chạy iOS 12.0 trở lên\r\n\r\nDây đeo\r\nCó thể thay dây: Có\r\nChất liệu dây: Silicone\r\nĐộ dài dây: 135 - 200 mm\r\nBề rộng dây: Hãng không công bố\r\n\r\nTính năng\r\n\r\nKháng nước: 5 ATM thoải mái trong nhiều hoạt động như bơi lội hay lặn ống thở với độ sâu tối đa 50m\r\n\r\nTiện ích sức khoẻ: Hơn 121 chế độ luyện tập, thực hành một cách chuyên nghiệp và miễn phí, Theo dõi giấc ngủ, Đo nhịp tim, Đo lượng oxy trong máu...\r\nTính năng Thông minh: Chế độ luyện tập, Hiển thị thông báo điện thoại, Tùy chỉnh mặt đồng hồ, Nghe gọi trên đồng hồ, Nhận thông báo cuộc gọi,Có thể thêm số liên hệ trực tiếp trên đồng hồ và cài đặt số khẩn cấp để liên hệ nhanh khi cần thiết\r\nLưu ý:Khi kết nối với điện thoại iOS thì đồng hồ có thể nhận cuộc gọi quay số thông thường hoặc cuộc gọi từ ứng dụng  Còn điện thoại Android chỉ nhận được cuộc gọi thông thường, còn cuộc gọi từ các ứng dụng đồng hồ chỉ hiển thông báo cuộc gọi nhỡ.\r\n\r\nThời lượng pin: Chế độ thông minh: 12 ngày\r\nSử dụng liên tục: 8 ngày\r\n\r\nCổng sạc: Nam châm\r\n\r\n-Chip GNSS hiện đại, độc lập được tích hợp vào đồng hồ để định vị nhanh với độ chính xác cao', 1096000, 15, '2024-05-14 11:01:25', '2024-05-14 11:01:25', 4),
(27, 'Apple Watch Series 7 GPS Sport Band (Viền Nhôm, Dây Cao Su)', 'Apple', 'Apple Watch Series 7 GPS cuối cùng cũng được trình làng trong sự kiện ra mắt iPhone 13, hứa hẹn là một trong những sản phẩm làm hài lòng fan nhà Táo khuyết.\r\n\r\nVề mặt thiết kế tổng thể, Apple Watch 7 GPS vẫn còn giữ những đường nét bo tròn sẵn có trên Series 6. Tuy nhiên, màn hình đã được thiết kế lại, tăng gần 20% diện tích màn hình và giảm đi 40% đường viền xung quanh. Bên cạnh đó, nổi bật hơn hẳn là màn hình Retina Always-On thông minh giúp bạn xem thời gian và thông tin khác mà không cần phải nâng cổ tay hay chạm trực tiếp vào màn hình.\r\n\r\nNhững cải tiến trên màn hình Apple Watch Series 7 GPS giúp tạo ra khả năng bảo vệ chống nứt tốt hơn so với các thế hệ tiền nhiệm. Không chỉ vậy, thiết bị còn đạt được xếp hạng chống bụi IP6X, chống nước ở độ sâu 50 m theo tiêu chuẩn ISO 22810:2010.\r\n\r\nVới Apple Watch Series 7 này, bạn dễ dàng theo dõi sức khỏe bản thân, gia đình với ứng dụng đo oxy trong máu với cảm biến thông minh. Ứng dụng làm nhiệm vụ chụp điện tâm đồ mọi lúc, kiểm tra nhịp tim hay thực hành chánh niệm, theo dõi sức khỏe.\r\n\r\nMột trong những tính năng khác không thể không nhắc đến của thiết bị chính là khai thác lượng lớn các bài tập rèn luyện sức khỏe cho người sử dụng. Đó có thể là bài tập thể dục tại chỗ, tập Thái cực quyền, Pilates hay đạp xe.\r\n\r\nTính năng nổi bật\r\nPhiên bản GPS cho phép bạn nhận cuộc gọi và trả lời tin nhắn ngay từ cổ tay\r\nĐo mức ôxi trong máu bằng cảm biến và ứng dụng (1)\r\nMàn hình Retina luôn bật sáng hơn 2,5 lần lúc ở ngoài trời khi bạn hạ cổ tay xuống\r\nTheo dõi hoạt động hàng ngày của bạn trên Apple Watch và xem xu hướng của bạn trong ứng dụng Thể Dục trên iPhone\r\nĐo lường các hoạt động thể dục của bạn như chạy, đi bộ, đạp xe, tập yoga, bơi lội và khiêu vũ\r\nThông báo nhịp tim nhanh hay chậm và thông báo nhịp tim không đều (2)\r\nThoải mái sử dụng ở hồ bơi hay ngoài trời với chuẩn kháng bụi IP6X ,chống nước đến 50m(3)\r\nĐồng bộ nhạc và podcast yêu thích\r\nLa bàn được tích hợp sẵn cùng các số đo độ cao theo thời gian thực\r\nSOS Khẩn Cấp giúp bạn nhận được sự trợ giúp ngay từ cổ tay (4)\r\nKhai thác lượng lớn các bài tập rèn luyện sức khỏe cho người sử dụng Trải nghiệm âm nhạc với bộ nhớ trong 32GB cùng khả năng kết nối tai nghe bluetooth\r\nCổng sạc Type C,sạc nhanh 45 phút cho 80% pin\r\nPháp lý\r\nApple Watch Series 7 tương thích với iPhone sử dụng iOS 14 trở lên.\r\n\r\n(1) Số đo từ ứng dụng Ôxi Trong Máu không được dùng cho mục đích y tế, kể cả tự chẩn đoán hoặc xin ý kiến bác sĩ và chỉ được thiết kế cho hoạt động luyện tập thông thường và mục đích chăm sóc sức khỏe.\r\n\r\n(2) Ứng dụng ECG và tính năng thông báo nhịp tim không đều chỉ khả dụng trên watchOS cũng như iOS phiên bản mới nhất, và không dành cho người dưới 22 tuổi. Ứng dụng ECG chỉ khả dụng trên Apple Watch Series 4 hoặc các phiên bản cao hơn. Tính năng thông báo nhịp tim không đều không được thiết kế dành cho người từng có kết quả chẩn đoán bị rung nhĩ (AFib).\r\n\r\n(3) Tiêu chuẩn ISO 22810:2010. Phù hợp cho các hoạt động dưới nước nông như bơi lội. Khuyến nghị không sử dụng sản phẩm dưới độ sâu cho phép và khi tham gia các hoạt động có tốc độ cao dưới nước.\r\n\r\n(4) Để sử dụng SOS Khẩn Cấp, iPhone phải ở gần bạn. Nếu iPhone không ở gần bạn, Apple Watch cần được kết nối với mạng Wi-Fi đã xác định và bạn phải thiết lập Cuộc Gọi Wi-Fi.', 7800000, 9, '2024-05-14 11:10:16', '2024-05-14 11:10:16', 4),
(28, 'Đồng Hồ Thông Minh AMA Watch Nam Nữ chống nước | Gọi điện thoại Xem tin nhắn Theo dõi Sức khỏe vận động Thiết kế nhỏ gọn Thời trang Hàng nhập khẩu', 'AMA', 'Đồng Hồ Thông Minh AMA Watch Nam Nữ chống nước | Gọi điện thoại Xem tin nhắn Theo dõi Sức khỏe vận động Thiết kế nhỏ gọn Thời trang Hàng nhập khẩu', 1232200, 8, '2024-05-14 11:14:16', '2024-05-14 11:14:16', 4),
(29, 'Đồng Hồ Thông Minh AMA H10', 'AMA', 'Đồng Hồ Thông Minh AMA H10 - Sự Hoàn Hảo Đến từ Thương hiệu AMA\r\n\r\nTrong thế giới ngày nay, công nghệ thông minh ngày càng trở nên không thể thiếu, và Đồng Hồ Thông Minh AMA H10 là sự lựa chọn hoàn hảo cho những người yêu thích thể thao và công nghệ tiên tiến. Với thiết kế mặt tròn sang trọng, chiếc đồng hồ này không chỉ là công cụ xem giờ đơn giản mà còn là biểu tượng của phong cách và tiện ích hiện đại.\r\n\r\nKiểu Dáng Thể Thao\r\n\r\nVới mặt tròn và kiểu dáng thể thao, Đồng Hồ Thông Minh AMA H10 không chỉ mang lại sự thoải mái khi đeo mà còn phản ánh đẳng cấp và năng động. Bạn có thể tự tin mang theo nó bất kỳ nơi đâu, từ buổi tập luyện sáng sớm đến cuộc hẹn quan trọng.\r\n\r\nHiệu Suất Mạnh Mẽ Với Hệ Điều Hành Android 8.1\r\n\r\nAMA H10 được trang bị hệ điều hành Android 8.1, giúp đồng hồ hoạt động mượt mà và nhanh chóng. Với RAM 2GB và bộ nhớ 16GB, bạn có đủ không gian để lưu trữ ảnh, nhạc và ứng dụng yêu thích của mình.\r\n\r\nKết Nối Và Giao Tiếp Mọi Lúc, Mọi Nơi\r\n\r\nĐồng hồ này không chỉ gắn sim độc lập, mà còn hỗ trợ kết nối Wifi, 4G và Bluetooth. Điều này mang lại trải nghiệm kết nối mạnh mẽ, đồng thời giúp bạn dễ dàng nhận cuộc gọi, tin nhắn và cập nhật từ ứng dụng yêu thích.\r\n\r\nPhù Hợp Với Mọi Lứa Tuổi\r\n\r\nVới đa dạng tính năng và thiết kế linh hoạt, Đồng Hồ Thông Minh AMA H10 phù hợp cho mọi lứa tuổi. Cho dù bạn là người yêu thể thao, nhà quản lý kỹ thuật số hay người đam mê công nghệ, chiếc đồng hồ này sẽ làm bạn hài lòng.\r\n\r\nQuản Lý Từ Xa Với Google Family Link\r\n\r\nĐặc biệt, nếu bạn là phụ huynh, AMA H10 còn hỗ trợ tính năng quản lý từ xa thông qua Google Family Link. Bạn có thể kiểm soát và theo dõi hoạt động của con cái trên đồng hồ, giúp bảo vệ họ khỏi những nội dung không phù hợp trên mạng.\r\n\r\nLời kết: Với sự kết hợp hoàn hảo giữa thiết kế thể thao và công nghệ hiện đại, Đồng Hồ Thông Minh AMA H10 là đối tác lý tưởng cho cuộc sống năng động của bạn.', 1992000, 4, '2024-05-14 11:17:30', '2024-05-14 11:17:30', 4),
(30, 'Đồng Hồ Pomodoro Hẹn Giờ 60 Phút Kim Loại Nhiều Kiểu Dáng', 'OEM', 'Đồng hồ hẹn giờ cơ học Pomodoro sử dụng cơ chế nạp dây cót để hẹn giờ mà không cần dùng pin.\r\nThời gian hẹn giờ từ 5 - 60 phút, giúp bạn trong việc học tập, làm bếp,\r\nCách dùng: vặn đồng hồ tới phút 55, sau đó điều chỉnh thời gian xuống mức bạn mong muốn. Thao tác này giúp nạp dây cót cho đồng hồ, giúp đồng hồ chạy chính xác và chuông reo lớn hơn.\r\nKhi chạy đồng hồ sẽ phát ra tiếng tích tắc từ bộ máy bên trong.\r\nSau khi đồng hồ reng, do vẫn còn cót nên bạn vẫn sẽ nghe tiếng tích tắc một lúc đến khi đồng hồ xả hết cót sẽ ngừng hẳn.\r\nChất liệu: kim loại\r\nHướng dẫn bảo quản: lau sạch đồng hồ nếu có nước hoặc chất lỏng dính vào bề mặt để tránh rỉ sét. Không ngâm đồng hồ vào nước.\r\n\r\nGiá sản phẩm trên Tiki đã bao gồm thuế theo luật hiện hành. Bên cạnh đó, tuỳ vào loại sản phẩm, hình thức và địa chỉ giao hàng mà có thể phát sinh thêm chi phí khác như phí vận chuyển, phụ phí hàng cồng kềnh, thuế nhập khẩu (đối với đơn hàng giao từ nước ngoài có giá trị trên 1 triệu đồng).....', 80000, 50, '2024-05-14 11:19:59', '2024-05-14 11:19:59', 4),
(31, 'qewas', 'adsasdas', 'sdad', 1232, 1, '2024-05-29 19:38:53', '2024-05-29 19:38:53', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `product_categories`
--

CREATE TABLE `product_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `rating` decimal(2,1) NOT NULL,
  `comment` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `username` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `change_password_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users`
--

INSERT INTO `users` (`id`, `avatar`, `username`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `login_at`, `change_password_at`, `created_at`, `updated_at`, `status_id`) VALUES
(1, 'avatars/MsxF5LIzoGJcBRJRcqZaKZkWzZxGc8QXL1qa5cAl.jpg', 'hongductest', 'Hong Duc', 'hongducct100@gmail.com', NULL, '$2y$10$Ntuo0KI5u8.SCk48XfgdFOc5AF6wRpJBOCSrqWVYrk5uR0vkk4ZWO', NULL, NULL, NULL, NULL, '2024-05-29 19:44:19', 1),
(2, NULL, 'user2', 'Hong Duc nè', 'hongducct@gmail.com', NULL, '$2y$10$1DAaf3zfJB709fNMuGo1UODEq5oUHW8hIX9m3lEk8.i53vodgxYFK', NULL, NULL, NULL, NULL, '2024-05-10 12:24:32', 1),
(3, 'avatars/1715284717.jpg', 'mylove', 'Thùy Dung', 'dungthuy2008min@gmail.com', NULL, '$2y$10$dh1Th2mC8tNoO3.wQ1tLOueing/H4hAqbEBwm2daY4elx3qgtM7rS', NULL, NULL, NULL, '2024-05-09 12:36:09', '2024-05-11 04:49:16', 1),
(4, 'avatars/1715284717.jpg', 'myloves', 'ggg', 'duchongkhoan100@gmail.com', NULL, '$2y$10$6oUF5vKvtlBUfk81zGAF7.1QzQfPugrJfUI2sGDIxWrvvrjWqWpuG', NULL, NULL, NULL, '2024-05-09 12:56:51', '2024-05-11 04:49:59', 2),
(5, 'avatars/1715284717.jpg', 'mylovess', 'ggg', 'duchongkhoan100sd@gmail.com', NULL, '$2y$10$XVIorWMJeHL3L.kIzmA61emsx3yMdl0gBsmsbicYDIDXXdk2CW7ba', NULL, NULL, NULL, '2024-05-09 12:58:37', '2024-05-10 12:33:11', 1),
(6, NULL, 'mylove123', 'sdfsdf', 'sdfsdfsdf@gmail.com', NULL, '$2y$10$TqSzK63nwFBykSg/AQ9yy.4xZhZj/kYfeh885PdgluoaQkcUNOH6u', NULL, NULL, NULL, '2024-05-13 08:22:31', '2024-05-13 08:22:31', 1),
(7, NULL, 'mylove1234', 'sdfsdf', 'sdfsdfsdfádf@gmail.com', NULL, '$2y$10$QmHQJStIWbaPutDWuWec8OxjyZ4.xE6p.2CttBqiJAQkFIE4xUbU2', NULL, NULL, NULL, '2024-05-13 08:23:06', '2024-05-13 08:23:06', 1),
(8, 'avatars/1716482622.jpg', 'hongducnguyen905', 'Nguyễn Hồng Đức', 'hongducnguyen905@gmail.com', NULL, '$2y$10$gCLyoeGd9b7B6sguNkyJSONQ7bFNsuain/4p/bA..A2xtI2o8T9Jm', NULL, NULL, NULL, '2024-05-23 09:43:43', '2024-05-23 09:43:43', 1),
(9, 'avatars/1716482750.jpg', 'hongducnguyen90511', 'Nguyễn Hồng Đức', 'hongducnguyen90511@gmail.com', NULL, '$2y$10$ZNGsZnav5g7VEac0wE6Uu.DmXnvXK7SmDEuMxiUvOy5xfB1qiFm5q', NULL, NULL, NULL, '2024-05-23 09:45:50', '2024-05-23 09:45:50', 1),
(10, 'avatars/1716482851.jpg', 'aaa', 'aaa', 'dungthuy2008mina@gmail.coaa', NULL, '$2y$10$8Z970zwf455hWvofuN6W1OOQNjqq124gtby1C.l5a1e/XWutsFfoi', NULL, NULL, NULL, '2024-05-23 09:47:31', '2024-05-23 09:47:31', 1),
(11, 'avatars/1716483174.jpg', 'hongduccute', 'Duc Nguyen', 'hongduccute@gmail.com', NULL, '$2y$10$GX4AYUqMEcMkLyxDoTrtcO9caOudk2A5p9XuSZ2NzlZH2jtbPGLmO', NULL, NULL, NULL, '2024-05-23 09:52:55', '2024-05-23 09:52:55', 1),
(12, 'avatars/xJcSpXNgu1styBEcaLbubAidX5AkgcPYlRcl1C6h.jpg', 'tuankha', 'Hoàng Tuấn Kha', 'hoangtuankha1501@gmail.com', NULL, '$2y$10$YAKA48w4sCP2i1AljZrkcubhzzFzHYCxu0yc3ZaKjkSMualqr8Ub2', NULL, NULL, NULL, '2024-05-24 20:11:56', '2024-05-24 20:16:40', 1),
(13, NULL, 'buinam', 'Bùi Hữu Nam', 'buinam536@gmail.com', NULL, '$2y$10$EuV29NJFjHR0R33XAGbUSOrZLU1GrpP/f28hj9watzfixtrxX/9Ki', NULL, NULL, NULL, '2024-05-25 08:20:40', '2024-05-26 05:24:36', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `users_status`
--

CREATE TABLE `users_status` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `users_status`
--

INSERT INTO `users_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Hoạt động', NULL, NULL),
(2, 'Tạm khóa', NULL, NULL);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `addresses_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`),
  ADD UNIQUE KEY `admins_email_unique` (`email`);

--
-- Chỉ mục cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `attributes_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Chỉ mục cho bảng `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `images_product_id_foreign` (`product_id`);

--
-- Chỉ mục cho bảng `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`),
  ADD KEY `orders_status_id_foreign` (`status_id`);

--
-- Chỉ mục cho bảng `orders_status`
--
ALTER TABLE `orders_status`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_items_product_id_foreign` (`product_id`),
  ADD KEY `order_items_order_id_foreign` (`order_id`);

--
-- Chỉ mục cho bảng `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Chỉ mục cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_product_id_foreign` (`product_id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`);

--
-- Chỉ mục cho bảng `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_status_id_foreign` (`status_id`);

--
-- Chỉ mục cho bảng `users_status`
--
ALTER TABLE `users_status`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT cho bảng `attributes`
--
ALTER TABLE `attributes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `images`
--
ALTER TABLE `images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders_status`
--
ALTER TABLE `orders_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `users_status`
--
ALTER TABLE `users_status`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `addresses`
--
ALTER TABLE `addresses`
  ADD CONSTRAINT `addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `attributes`
--
ALTER TABLE `attributes`
  ADD CONSTRAINT `attributes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `orders_status` (`id`),
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`),
  ADD CONSTRAINT `order_items_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Các ràng buộc cho bảng `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Các ràng buộc cho bảng `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `users_status` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
