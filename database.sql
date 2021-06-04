-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2021 at 04:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `position` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `slug`, `image`, `summary`, `description`, `type`, `position`, `status`, `url`, `is_active`, `user_id`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Săn hàng siêu rẻ: Smartphone giảm giá cả triệu đồng', 'san-hang-sieu-re-smartphone-giam-gia-ca-trieu-dong', 'uploads/article/1590291182_anh-bai-viet.png', '<p>Trong tầm gi&aacute; chỉ 3 triệu đồng, bạn lăn tăn kh&ocirc;ng biết liệu c&oacute; chiếc m&aacute;y t&iacute;nh bảng n&agrave;o đủ tốt để đ&aacute;p ứng được nhu cầu sử dụng h&agrave;ng ng&agrave;y của m&igrave;nh? Một số người m&aacute;ch bạn về những sản phẩm&nbsp;</p>', '<p>Săn h&agrave;ng si&ecirc;u rẻ: Smartphone giảm gi&aacute; cả triệu đồng</p>', 1, 1, NULL, NULL, 1, NULL, NULL, NULL, '2020-05-23 20:33:02', '2020-05-23 23:29:13'),
(2, 'Mua iPad uy tín – Hãy tới ngay Di Động Thông Minh – 1 đổi 1 trong 45 ngày.', 'mua-ipad-uy-tin-hay-toi-ngay-di-dong-thong-minh-1-doi-1-trong-45-ngay', 'uploads/article/1590293144_91632604_2605838396315776_3847475903265243136_n.jpg', '<p>Bạn đang gặp phải vấn để mắt th&acirc;m quầng do d&ugrave;ng điện thoại nhiều? Đừng lo lắng, hiện nay, đ&atilde; c&oacute; giải ph&aacute;p kem mắt vi kim IDENEL cực hiệu quả d&agrave;nh cho bạn. Sản phẩm đang được giảm gi&aacute; shock k&egrave;m qu&agrave; tặng cực khủng d&agrave;nh ri&ecirc;ng cho kh&aacute;ch h&agrave;ng Di Động Th&ocirc;ng Minh.&nbsp;</p>', '<p>Mua iPad uy t&iacute;n &ndash; H&atilde;y tới ngay Di Động Th&ocirc;ng Minh &ndash; 1 đổi 1 trong 45 ng&agrave;y.</p>', 1, 3, NULL, NULL, 1, NULL, 'Mua iPad uy tín – Hãy tới ngay Di Động Thông Minh – 1 đổi 1 trong 45 ngày.', 'Mua iPad uy tín – Hãy tới ngay Di Động Thông Minh – 1 đổi 1 trong 45 ngày.', '2020-05-23 20:33:29', '2020-05-23 23:28:57'),
(4, 'Realme X3 SuperZoom: Smartphone khuynh đảo phân khúc tầm trung', 'realme-x3-superzoom-smartphone-khuynh-dao-phan-khuc-tam-trung', 'uploads/article/1590296430_realme-x3-super-zoom-mat-lung.jpg', '<p>iPhone 11 Pro Max hiện vẫn đang l&agrave; một trong những chiếc smartphone tốt nhất thế giới ở thời điểm hiện tại. Trong b&agrave;i viết n&agrave;y, m&igrave;nh sẽ chia sẻ cho c&aacute;c bạn một chiếc iPhone 11 Pro Max gi&aacute; rẻ m&agrave; nếu mua n&oacute;,&nbsp;</p>', '<h2><a href=\"https://didongthongminh.vn/ban-tin-cong-nghe/realme-x3-superzoom-smartphone-khuynh-dao-phan-khuc-tam-trung\">Realme X3 SuperZoom: Smartphone khuynh đảo ph&acirc;n kh&uacute;c tầm trung</a></h2>', 1, 0, NULL, NULL, 1, NULL, NULL, NULL, '2020-05-23 22:00:30', '2020-05-23 23:30:32'),
(5, 'Lời 7 triệu khi mua iPhone 11 Pro Max bản quốc tế này?', 'loi-7-trieu-khi-mua-iphone-11-pro-max-ban-quoc-te-nay', 'uploads/article/1590296459_iphone-11-pro-max-cu-mat-lung-3-1.png', '<p>Khi thị trường sản phẩm c&ocirc;ng nghệ trở n&ecirc;n b&atilde;o h&ograve;a, nhu cầu sở hữu smartphone của người d&ugrave;ng kh&ocirc;ng đơn thuần chỉ l&agrave; một thiết bị đ&aacute;p ứng tốt mục đ&iacute;ch sử dụng thường ng&agrave;y m&agrave; họ cần nhiều hơn <strong>thế.&nbsp;</strong></p>', '<p>Ch&agrave;o mừng mọi người đ&atilde; quay trở lại với bản tin dNews tr&ecirc;n website của didongthongminh.com, ch&uacute;ng ta h&atilde;y c&ugrave;ng điểm lại những th&ocirc;ng tin th&uacute; vị nhất trong 24h của thế giới c&ocirc;ng nghệ. H&ocirc;m nay l&agrave; ng&agrave;y 31 th&aacute;ng 07.</p>\r\n\r\n<h2><strong>Samsung Galaxy Z Fold 2 5G lộ ảnh thiết kế m&agrave;n h&igrave;nh đục lỗ v&ocirc; c&ugrave;ng &ldquo;sexy&rdquo;&nbsp;</strong></h2>\r\n\r\n<p><img alt=\"\" src=\"https://cdn.didongthongminh.vn/upload_images/2020/07/samsung-galaxy-fold-2_800x450.jpg\" /></p>\r\n\r\n<p><em>H&igrave;nh ảnh minh họa Samsung Galaxy Z Fold 2</em></p>\r\n\r\n<p>Theo website MySmartprice vừa c&ocirc;ng bố loạt ảnh render của Samsung Galaxy Z Fold 2 5G với chất lượng tin cậy, tiết lộ tổng thể thiết kế của smartphone m&agrave;n h&igrave;nh gập mới n&agrave;y. Cũng theo website n&agrave;y th&igrave; mẫu m&aacute;y năm nay sẽ c&oacute; hai m&agrave;u ch&iacute;nh đ&oacute; l&agrave;: Mystic Black v&agrave; Mystic Bronze.</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh6.googleusercontent.com/Rl6y2hxpFAkLCFmmLMo2aHIPXZuSkbPV_xmntA64q80ON8Amgwq15gxScffkVAjpbt5jiyfamVG33euNMZR0QPd6gRPsFBKG0671XpINNnABA8xwVWZJjhXSEqBSMZNMMJuisqD4\" /></p>\r\n\r\n<p><em>M&agrave;u sắc của Samsung Galaxy Z Fold 2 được tiết lộ</em></p>\r\n\r\n<p>Galaxy Z Fold 2 5G sẽ c&oacute; cơ chế gập kiểu quyển s&aacute;ch v&agrave; m&agrave;n h&igrave;nh ch&iacute;nh sẽ nằm b&ecirc;n trong. Tuy nhi&ecirc;n sẽ c&oacute; một ch&uacute;t thay đổi, đ&aacute;ng n&oacute;i ở đ&acirc;y sẽ l&agrave; m&aacute;y sẽ chuyển sang m&agrave;n h&igrave;nh đục lỗ b&ecirc;n trong v&agrave; b&ecirc;n ngo&agrave;i. Viền m&agrave;n h&igrave;nh b&ecirc;n ngo&agrave;i sẽ được chế t&aacute;c mỏng hơn.</p>\r\n\r\n<p>Cơ chế bản lề mặc d&ugrave; tr&ocirc;ng sẽ hơi d&agrave;y nhưng sẽ đảm bảo sự chắc chắn hơn c&aacute;c model trước. Ch&uacute;ng ta c&oacute; thể thấy rằng ba camera sau sẽ chuyển sang nằm dọc v&agrave; k&egrave;m theo đ&oacute; l&agrave; cụm đ&egrave;n flash LED.&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh6.googleusercontent.com/A_G0NJhlbdh4zHfoKuy8IbvBAB8BpYsZnxrDLNwhF58mPZDCUhhWO_9vYjvXjCW58pjl7w7ZzNqNr7F-oR06eU1a2CwTVWGjRcfG5Fx30483fyD5l7FVjoWxjAKpEDkLOj-DF566\" /></p>\r\n\r\n<p><em>M&agrave;u sắc của Samsung Galaxy Z Fold 2 được tiết lộ</em></p>\r\n\r\n<p>Galaxy Z Fold 2 5G sẽ l&agrave; sản phẩm được ra mắt đ&uacute;ng v&agrave;o sự kiện Unpacked diễn ra v&agrave;o ng&agrave;y 05/08/2020. Gi&aacute; b&aacute;n model n&agrave;y sẽ l&agrave; 1.980 USD tương đương với 45.8 triệu đồng.</p>\r\n\r\n<h2><strong>Ra mắt Huawei TalkBand B6: V&ograve;ng tay th&ocirc;ng minh ki&ecirc;m tai nghe Bluetooth t&iacute;ch hợp t&iacute;nh năng v&ocirc; c&ugrave;ng th&uacute; vị</strong></h2>\r\n\r\n<p>Huawei vừa ch&iacute;nh thức ra mắt TalkBand B6 tại Trung Quốc, chiếc v&ograve;ng tay theo d&otilde;i ki&ecirc;m tai nghe Bluetooth. Mẫu v&ograve;ng đeo tay th&ocirc;ng minh n&agrave;y sẽ c&oacute; ba phi&ecirc;n bản: Thể thao, Thời trang v&agrave; Độc quyền với mức gi&aacute; lần lượt khoảng 3,3 triệu đồng; 3,9 triệu đồng v&agrave; 4,9 triệu đồng.</p>\r\n\r\n<p>M&aacute;y sẽ trang bị AMOLED cong 1.53 inch với độ ph&acirc;n giải 460&times;188 pixels, mật độ điểm ảnh l&agrave; 326 ppi v&agrave; trang bị con chip HiSilicon Kirin A1.</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh5.googleusercontent.com/qW1CWUQnc7wdpEO4OSuz0JenpgWIYsefRTCYPymwkUmVa8TGGTEPUIUTUnarClH7OmrwS0QV2H7RlkhN1WhmliOhnZK8YdcxFXvq2YYeA2_UreT5WkOFuuY6it4dbcAGd8uuuVnF\" /></p>\r\n\r\n<p><em>H&igrave;nh ảnh của Huawei TalkBand B6</em></p>\r\n\r\n<p>L&agrave; một thiết bị về sức khỏe, Huawei TalkBand B6 sẽ được t&iacute;ch hợp c&aacute;c cảm biến như gia tốc kế, con quay hồi chuyển, cảm biến nhịp tim, cảm biến SpO2, cảm biến xung quanh v&agrave; cảm biến Hall. Thiết bị cũng sẽ được trang bị Bluetooth 5.2 v&agrave; c&oacute; thể kết nối với smartphone tối đa l&agrave; 150m hỗ trợ Android 4.4 v&agrave; iOS 9.0 trở l&ecirc;n.</p>\r\n\r\n<p>Thiết kế của Huawei TalkBand B6 l&agrave; một điểm đ&aacute;ng khen ngợi khi chiếc v&ograve;ng tay n&agrave;y sẽ được chế t&aacute;c bởi th&eacute;p kh&ocirc;ng gỉ v&agrave; sẽ c&oacute; c&aacute;c loại d&acirc;y đeo để người d&ugrave;ng lựa chọn như: Silicon, da, kim loại. M&agrave;u sắc của v&ograve;ng tay sẽ c&oacute; 2 phi&ecirc;n bản đ&oacute; l&agrave; Obsidian Black v&agrave; Coral Red cho v&ograve;ng tay được l&agrave;m bằng silicon ngược lại v&ograve;ng tay kim loại sẽ c&oacute; m&agrave;u Titanium v&agrave; m&agrave;u Silver Grey.</p>\r\n\r\n<p><img alt=\"\" src=\"https://lh5.googleusercontent.com/DBiVILesSf1GyMCYMbp3SwPiTStOc5ASXRd01eGo03l-BKk7SeY_eEVwOjuDSBovFiDkBuDW2DGnMqJh7D4KXP03bnSrh8Hd-AWqI2HLNWkmLi7ntyGw0yzi_JBoQM4aKqMVlJ7b\" /></p>\r\n\r\n<p><em>Huawei TalkBand B6</em></p>\r\n\r\n<p>Một số t&iacute;nh năng nổi bật của Huawei TalkBand B6 c&oacute; thể kể tới như: Hỗ trợ theo d&otilde;i tập thể dục, cảnh b&aacute;o ứng dụng, thời tiết, điều khiển nhạc, theo d&otilde;i chu kỳ kinh nguyệt,&hellip; Ngo&agrave;i ra, TalkBand B6 sẽ đạt chứng nhận IP57 về khả năng chống bụi v&agrave; nước nhưng kh&ocirc;ng &aacute;p dụng cho d&acirc;y đeo bằng da. M&aacute;y sẽ được trang bị vi&ecirc;n pin 120mAh v&agrave; được sạc qua cổng USB Type-C.</p>\r\n\r\n<h2><strong>Nokia lần lượt c&ocirc;ng bố smartphone mới tại IFA 2020, Nokia 2.4 l&agrave; ph&aacute;t s&uacute;ng đầu ti&ecirc;n</strong></h2>\r\n\r\n<p>Một trong số ba sản phẩm được mong chờ của Nokia sẽ ra mắt v&agrave;o cuối năm nay đ&atilde; lộ diện. Một leaker chia sẻ phi&ecirc;n bản Nokia 2.4 sẽ l&agrave; sản phẩm Nokia Wolverine sẽ được giới thiệu tại IFA 2020 v&agrave; dự kiến ra mắt v&agrave;o th&aacute;ng 9/2020.</p>', 1, 2, NULL, NULL, 1, NULL, 'Lời 7 triệu khi mua iPhone 11 Pro Max bản quốc tế này?', 'Lời 7 triệu khi mua iPhone 11 Pro Max bản quốc tế này?', '2020-05-23 22:00:59', '2020-08-03 06:44:39');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `type` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `slug`, `image`, `url`, `target`, `description`, `type`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(3, 'MUA VSMART TRÚNG VSSMART', 'mua-vsmart-trung-vssmart', 'uploads/banner/1584932740_Vsmart_copy.png', 'https://cellphones.com.vn/mobile/vsmart.html', '1', NULL, 1, 3, 1, '2020-03-22 20:05:40', '2020-03-22 20:05:40'),
(4, 'Samsung A71', 'samsung-a71', 'uploads/banner/1583415323_Slide-samsung-galaxy-a71-min-1.png', 'https://didongthongminh.vn/', '1', NULL, 1, 4, 1, '2020-03-05 06:35:23', '2020-03-22 19:58:26'),
(5, 'HOTSALES HUAWEI NOVA 7I', 'hotsales-huawei-nova-7i', 'uploads/banner/1584932808_hotsale_nova_7i.png', 'https://cellphones.com.vn/huawei-nova-7i.html', '1', NULL, 1, 5, 1, '2020-03-22 20:06:48', '2020-03-22 20:06:48'),
(6, 'LÊN ĐỜI NOTE 10 - NOTE 10 Plus', 'len-doi-note-10-note-10-plus', 'uploads/banner/1584932903_lendoi_nte10.png', 'https://cellphones.com.vn/mobile/samsung/galaxy-note.html', '1', NULL, 1, 6, 1, '2020-03-22 20:08:23', '2020-03-22 20:08:23'),
(7, 'JBL T600BTNC GIÁ ĐỘC QUYỀN', 'jbl-t600btnc-gia-doc-quyen', 'uploads/banner/1584932951_JBL_T600BTNC_home.png', 'https://cellphones.com.vn/tai-nghe-chong-on-jbl-t600btnc.html', '1', NULL, 1, 7, 1, '2020-03-22 20:09:11', '2020-03-22 20:09:11');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `slug`, `image`, `website`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(5, 'Samsung', 'samsung', 'uploads/brand/1583329669_logo-thuong-hieu-samsung-typeface-elle-man.jpg', 'https://www.samsung.com/vn/', 2, 1, '2020-03-04 06:47:49', '2020-03-22 19:44:56'),
(6, 'Apple', 'apple', 'uploads/brand/1583409648_apple icon.jpg', 'apple.com', 1, 1, '2020-03-05 05:00:48', '2020-03-05 05:00:48'),
(7, 'Xiaomi', 'xiaomi', 'uploads/brand/1584935820_1200px-Xiaomi_logo.svg.png', 'https://www.mi.com/global', 3, 1, '2020-03-22 20:57:00', '2020-03-22 20:57:00'),
(8, 'Dell', 'dell', 'uploads/brand/1584935886_1024px-Dell_Logo.svg.png', 'dell.com', 4, 1, '2020-03-22 20:58:06', '2020-03-22 20:58:06'),
(9, 'Oppo', 'oppo', 'uploads/brand/1584935938_1521197184-brasol.vn-logo-oppo-oppo-logo.jpg', 'https://www.oppo.com/vn/', 5, 1, '2020-03-22 20:58:58', '2020-03-22 20:58:58'),
(10, 'Sony', 'sony', 'uploads/brand/1584936029_sonyview1.jpg', 'https://www.sony.com/', 6, 1, '2020-03-22 21:00:29', '2020-03-22 21:00:29'),
(11, 'Logitech', 'logitech', 'uploads/brand/1584936072_bab78b1ab6202c17519384fb90b06412.png', 'https://www.logitech.com/vi-vn', 7, 1, '2020-03-22 21:01:12', '2020-03-22 21:01:12'),
(12, 'Asus', 'asus', 'uploads/brand/1584936126_1_NwfoiV9f96_MhpmJwdinPA.png', 'https://www.asus.com/vn/', 8, 1, '2020-03-22 21:02:06', '2020-03-22 21:02:06'),
(13, 'Vsmart', 'vsmart', 'uploads/brand/1584946458_Vsmart-logo.jpg', 'https://vsmart.net/eu-vi/', 9, 1, '2020-03-22 23:54:18', '2020-03-22 23:54:18'),
(15, 'Khác', 'khac', NULL, NULL, 999, 1, '2020-04-11 21:52:35', '2020-04-11 21:52:35'),
(18, 'Samsung2', 'samsung2', NULL, 'samsung.com2', 1, 1, '2020-07-17 05:38:27', '2020-07-17 05:38:27');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `type` tinyint(4) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `image`, `parent_id`, `position`, `is_active`, `type`, `created_at`, `updated_at`) VALUES
(1, 'Điện thoại', 'dien-thoai', NULL, 0, 1, 1, 0, '2020-03-22 20:17:22', '2020-03-22 20:17:22'),
(2, 'Tablet', 'tablet', NULL, 0, 2, 1, 0, '2020-03-22 20:17:43', '2020-03-22 20:17:43'),
(3, 'Phụ kiện', 'phu-kien', NULL, 0, 3, 1, 0, '2020-03-22 20:17:53', '2020-03-22 20:17:53'),
(4, 'Laptop', 'laptop', NULL, 0, 4, 1, 0, '2020-03-22 20:18:00', '2020-03-22 20:18:00'),
(6, 'Đồng hồ', 'dong-ho', NULL, 0, 6, 1, 0, '2020-03-22 20:18:33', '2020-03-22 20:18:33'),
(7, 'Apple', 'apple', NULL, 1, 11, 1, 0, '2020-03-22 20:20:33', '2020-03-22 20:20:33'),
(8, 'Samsung', 'samsung', NULL, 1, 12, 1, 0, '2020-03-22 20:20:43', '2020-03-22 20:20:43'),
(9, 'Oppo', 'oppo', NULL, 1, 13, 1, 0, '2020-03-22 20:20:53', '2020-03-22 20:20:53'),
(11, 'Vsmart', 'vsmart', NULL, 1, 15, 1, 0, '2020-03-22 20:22:15', '2020-03-22 20:22:15'),
(13, 'Xiaomi', 'xiaomi', NULL, 6, 62, 1, 0, '2020-03-22 20:29:10', '2020-03-22 20:29:10'),
(15, 'Macbook', 'macbook', NULL, 4, 41, 1, 0, '2020-03-22 20:30:59', '2020-03-22 20:30:59'),
(16, 'Asus', 'asus', NULL, 4, 42, 1, 0, '2020-03-22 20:31:15', '2020-03-22 20:31:15'),
(17, 'Dell', 'dell', NULL, 4, 43, 1, 0, '2020-03-22 20:31:26', '2020-03-22 20:31:26'),
(18, 'Lenovo', 'lenovo', NULL, 4, 44, 1, 0, '2020-03-22 20:32:00', '2020-03-22 20:32:00'),
(19, 'Loa', 'loa', NULL, 5, 51, 1, 0, '2020-03-22 20:32:31', '2020-03-22 20:32:31'),
(20, 'Tai nghe', 'tai-nghe', NULL, 46, 52, 1, 0, '2020-03-22 20:32:42', '2020-03-22 20:32:42'),
(51, 'test', 'test', NULL, NULL, 1, 1, 1, '2021-06-03 06:21:20', '2021-06-03 06:21:20'),
(52, 'test2', 'test2', NULL, 1, 1, 1, 1, '2021-06-03 06:26:24', '2021-06-03 06:26:24'),
(53, 'test3', 'test3', NULL, 1, 2, 1, 1, '2021-06-03 06:36:21', '2021-06-03 06:36:21'),
(54, 'test4', 'test4', NULL, 1, 1, 1, 1, '2021-06-03 06:37:46', '2021-06-03 06:37:46'),
(55, 'test5', 'test5', 'uploads/category/flower_noun_002_14403.jpg', 1, 1, 1, 1, '2021-06-03 06:39:07', '2021-06-03 06:39:07');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `phone`, `email`, `content`, `created_at`, `updated_at`) VALUES
(9, 'Thao', '0987689993', 'thao@gmail.com', 'Chao ban', '2020-08-03 07:02:48', '2020-08-03 07:02:48'),
(10, 'Khanh', '0900909999', 'khang@gmail.com', 'Chao ban afasdfsd', '2020-08-14 05:51:58', '2020-08-14 05:51:58');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `percent` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent`, `created_at`, `updated_at`) VALUES
(1, 'SHOP-KM1', 1, 50000, 30, '2020-05-19 16:50:32', '2020-05-19 16:50:32'),
(2, 'SHOP-K2', 2, NULL, 50, '2020-05-19 16:52:27', '2020-05-19 16:52:27');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(7, '2014_10_12_000000_create_users_table', 1),
(8, '2014_10_12_100000_create_password_resets_table', 1),
(9, '2020_01_07_122649_create_categories_table', 1),
(10, '2020_01_09_113851_create_products_table', 1),
(11, '2020_02_06_031728_create_banners_table', 2),
(12, '2020_02_06_032831_create_banners_table', 3),
(13, '2020_02_06_125433_create_vendors_table', 4),
(14, '2020_02_06_125734_create_brands_table', 5),
(15, '2020_03_04_083632_create_products_table', 6),
(17, '2020_03_05_122445_create_contacts_table', 7),
(20, '2020_07_13_130015_create_member_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` int(11) DEFAULT 0,
  `note` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `coupon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `total` int(11) DEFAULT 0,
  `user_id` int(11) DEFAULT 0,
  `order_status_id` int(11) DEFAULT 0,
  `payment_id` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `code`, `fullname`, `email`, `address`, `address2`, `phone`, `discount`, `note`, `coupon`, `total`, `user_id`, `order_status_id`, `payment_id`, `created_at`, `updated_at`) VALUES
(9, NULL, 'Hoàng Công Dũng', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346007', 0, NULL, '0', 25970000, 0, 4, 0, '2020-05-19 12:18:21', '2020-05-19 12:18:21'),
(10, NULL, 'Hoàng Công Dũng', 'hcdung2109@gmail.com', 'HN', NULL, '0986346006', 11395000, 'AB', 'SHOP-K2', 22790000, 0, 1, 0, '2020-05-20 09:55:45', '2020-05-20 09:55:45'),
(11, 'DH-11-20052020', 'Trần Thuỷ', 'thuthuy@gmail.com', 'Long Biên , Hà nội', NULL, '0986346008', 3995000, 'ko', 'SHOP-K2', 7990000, 0, 1, 0, '2020-05-20 11:01:38', '2020-05-20 11:01:38'),
(12, 'DH-12-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 1, 0, '2020-05-21 07:41:24', '2020-05-21 07:41:24'),
(13, 'DH-13-21052020', 'Trần Thuỷ', 'dungthuy2109@gmail.com', 'HN', NULL, '0986346008', 0, NULL, NULL, 15980000, 0, 2, 0, '2020-05-21 07:42:09', '2020-05-21 07:42:09'),
(14, 'DH-14-23052020', 'Trần Thuỷ', 'hcdung2109@gmail.com', 'Bắc Ninh', 'fdfd', '0986346008', 0, 'kfdsfsdf', NULL, 23390000, 0, 3, 0, '2020-05-23 00:30:46', '2020-05-25 23:46:41'),
(15, 'DH-15-26052020', 'HCDUNG', 'hcdung2109@gmail.com', 'Tầng 6, Tòa CT Building , Đống Đa , HN', NULL, '0986346008', 0, 'Giao hàng ngoài 17h', NULL, 7990000, 0, 2, 0, '2020-05-25 23:59:42', '2020-05-26 00:05:38'),
(16, 'DH--21082020-1598017675', 'dung', 'hcdung2109@gmail.com', 'HN', NULL, '098793332', 50000, 'N', 'SHOP-KM1', -67400000, 0, 1, 0, '2020-08-21 06:47:55', '2020-08-21 06:47:55'),
(17, 'DH-21082020-1598018495', 'dung', 'admin@gmail.com', 'HN', NULL, '0986468888', 0, 'dag giao hang', NULL, 15980000, 0, 3, 0, '2020-08-21 07:01:35', '2020-08-21 07:07:35');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `name`, `image`, `sku`, `user_id`, `order_id`, `product_id`, `price`, `qty`) VALUES
(2, NULL, NULL, '', NULL, 9, 43, 17980000, 2),
(3, NULL, NULL, '', NULL, 9, 30, 7990000, 1),
(4, NULL, NULL, '', NULL, 10, 30, 7990000, 1),
(5, NULL, NULL, '', NULL, 10, 44, 14800000, 2),
(6, NULL, NULL, '', NULL, 11, 30, 7990000, 1),
(7, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 13, 30, 15980000, 2),
(8, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', NULL, 0, 14, 50, 2900000, 1),
(9, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 14, 28, 20490000, 1),
(10, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 15, 30, 7990000, 1),
(11, 'Iphone 7 Plus 32GB - NEW', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', NULL, 0, 16, 30, 47940000, 6),
(12, 'ASUS ROG Phone 2 512GB', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', NULL, 0, 16, 28, 20490000, 1),
(13, 'Oppo Reno 2F', 'uploads/product/1584946658_oppo-reno2-f-400x460.png', NULL, 0, 17, 12, 15980000, 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_status`
--

CREATE TABLE `order_status` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_status`
--

INSERT INTO `order_status` (`id`, `name`) VALUES
(1, 'Mới'),
(2, 'Đang Xử Lý'),
(3, 'Hoàn Thành'),
(4, 'Hủy');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(11) NOT NULL DEFAULT 0,
  `price` int(11) NOT NULL DEFAULT 0,
  `sale` int(11) NOT NULL DEFAULT 0,
  `position` int(11) NOT NULL DEFAULT 0,
  `is_active` int(11) NOT NULL DEFAULT 1,
  `is_hot` int(11) NOT NULL DEFAULT 0,
  `views` int(11) NOT NULL DEFAULT 0,
  `category_id` int(11) NOT NULL DEFAULT 0,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `memory` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `brand_id` int(11) NOT NULL DEFAULT 0,
  `vendor_id` int(11) NOT NULL DEFAULT 0,
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `image`, `stock`, `price`, `sale`, `position`, `is_active`, `is_hot`, `views`, `category_id`, `url`, `sku`, `color`, `memory`, `brand_id`, `vendor_id`, `summary`, `description`, `meta_title`, `meta_description`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Iphone 11 128GB Chính hãng (VN/A)', 'iphone-11-128gb-chinh-hang-vna', 'uploads/product/1584936264_iphone11-purple-select-2019.png', 10, 23990000, 22190000, 1, 1, 1, 0, 1, 'https://cellphones.com.vn/iphone-11-128gb.html', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:04:24', '2020-03-22 21:04:24'),
(2, 'Iphone 11 Pro Max 512GB Chính hãng (VN/A)', 'iphone-11-pro-max-512gb-chinh-hang-vna', 'uploads/product/1584936455_iphone-11-pro-max-gold-select-2019.jpg', 20, 43990000, 38990000, 2, 1, 1, 0, 1, 'https://cellphones.com.vn/iphone-11-pro-max-512gb.html', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:07:35', '2020-03-22 21:07:35'),
(3, 'Iphone 11 256GB Chính hãng (VN/A)', 'iphone-11-256gb-chinh-hang-vna', 'uploads/product/1584936584_iphone11-red-select-2019.jpg', 15, 25990000, 24990000, 3, 1, 0, 0, 1, 'https://cellphones.com.vn/iphone-11-256gb.html', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:09:44', '2020-03-22 21:09:44'),
(4, 'Iphone 11 Pro 256GB Chính hãng (VN/A)', 'iphone-11-pro-256gb-chinh-hang-vna', 'uploads/product/1584936656_iphone-11-pro-max-space-select-2019.jpg', 30, 34990000, 31990000, 4, 1, 0, 0, 1, NULL, NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:10:56', '2020-03-22 21:11:04'),
(5, 'Samsung Galaxy S20+ (Plus)', 'samsung-galaxy-s20-plus', 'uploads/product/1584936729_ss-20-plus-6.jpg', 50, 23990000, 19990000, 5, 1, 1, 0, 1, 'https://cellphones.com.vn/samsung-galaxy-s20-plus.html', NULL, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:12:09', '2020-03-22 21:12:09'),
(6, 'Iphone X 64GB Chính hãng (VN/A)', 'iphone-x-64gb-chinh-hang-vna', 'uploads/product/1584936812_iphone_x_64gb.jpg', 25, 19500000, 16990000, 6, 1, 0, 0, 1, 'https://didongviet.vn/iphone-x', NULL, NULL, NULL, 6, 5, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:13:32', '2020-03-22 21:13:32'),
(7, 'Iphone Xs Max 256GB Chính hãng (VN/A)', 'iphone-xs-max-256gb-chinh-hang-vna', 'uploads/product/1584936905_iphone_xs_max_256gb.jpg', 22, 19990000, 17499000, 7, 1, 1, 0, 1, 'https://didongviet.vn/iphone-xs-xs-max', NULL, NULL, NULL, 6, 5, NULL, NULL, NULL, NULL, 0, '2020-03-22 21:15:05', '2020-03-22 21:15:05'),
(8, 'Samsung Galaxy A71', 'samsung-galaxy-a71', 'uploads/product/1584946189_600_samsung-galaxy-a71_1_1.jpg', 29, 10490000, 9490000, 8, 1, 1, 0, 1, 'https://fptshop.com.vn/dien-thoai/samsung-galaxy-a71', NULL, NULL, NULL, 5, 8, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:49:49', '2020-03-22 23:49:49'),
(9, 'Iphone Xr 64GB', 'iphone-xr-64gb', 'uploads/product/1584946258_iphone_xr_64gb.jpg', 13, 16990000, 15990000, 9, 1, 0, 0, 1, 'https://fptshop.com.vn/dien-thoai/iphone-xr-64gb', NULL, NULL, NULL, 6, 8, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:50:58', '2020-03-22 23:50:58'),
(10, 'Vsmart Active 3 6GB-64GB', 'vsmart-active-3-6gb-64gb', 'uploads/product/1584946508_Vsmart-active-3-black-1.jfif', 5, 4490000, 3990000, 10, 1, 1, 0, 1, 'https://fptshop.com.vn/dien-thoai/vsmart-active-3-6gb-64gb', NULL, NULL, NULL, 13, 8, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:55:08', '2020-03-22 23:55:08'),
(11, 'Xiaomi Mi Note 10 Pro', 'xiaomi-mi-note-10-pro', 'uploads/product/1584946581_xiaomi-mi-note-10-pro-black-400x460.png', 7, 14990000, 13990000, 11, 1, 0, 0, 1, 'https://www.thegioididong.com/dtdd/xiaomi-mi-note-10-pro', NULL, NULL, NULL, 7, 6, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:56:21', '2020-03-22 23:56:21'),
(12, 'Oppo Reno 2F', 'oppo-reno-2f', 'uploads/product/1584946658_oppo-reno2-f-400x460.png', 10, 8990000, 7990000, 12, 1, 0, 0, 1, 'https://www.thegioididong.com/dtdd/oppo-reno2-f', NULL, NULL, NULL, 9, 6, NULL, NULL, NULL, NULL, 0, '2020-03-22 23:57:38', '2020-03-22 23:57:38'),
(13, 'Macbook Pro 16 inch 2019 (MVVJ2/ MVVL2) – Core i7/ 16Gb/ 512GB – NEW', 'macbook-pro-16-inch-2019-mvvj2-mvvl2-core-i7-16gb-512gb-new', 'uploads/product/1584947146_macpro16_2019.jfif', 5, 57500000, 57500000, 13, 1, 1, 0, 4, 'https://macone.vn/macbook-pro-16-inch-2019-mvvj2-mvvl2-core-i7-16gb-512gb-new/', NULL, NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:05:46', '2020-03-23 00:05:46'),
(14, 'iMac 2019 27 inch Retina 5K MRR12 – New (Full VAT)', 'imac-2019-27-inch-retina-5k-mrr12-new-full-vat', 'uploads/product/1584947228_imac27inch2019.jfif', 2, 57990000, 57990000, 14, 1, 0, 0, 4, 'https://macone.vn/imac-2019-27inch-retina-5k-mrr12-new/', 'kajima0420', NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:07:08', '2020-03-23 00:07:08'),
(15, 'Apple Watch Series 5 GPS (Nhôm/40mm) – New', 'apple-watch-series-5-gps-nhom40mm-new', 'uploads/product/1584947328_apple_watch_series_5.jpg', 28, 10490000, 10790000, 15, 1, 1, 0, 6, 'https://macone.vn/apple-watch-series-5-gps-nhom-40mm-new/', NULL, NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:08:48', '2020-03-23 00:08:48'),
(16, 'Apple Watch Series 5 GPS + Cellular ( Thép/40mm/Sport )', 'apple-watch-series-5-gps-cellular-thep40mmsport', 'uploads/product/1584947401_apple_watch_series_5_gps_celluar.jpg', 15, 19500000, 18990000, 16, 1, 1, 0, 6, 'https://macone.vn/apple-watch-series-5-gps-cellular-thep-40mm-sport-new/', NULL, NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:10:01', '2020-03-23 00:10:01'),
(17, 'Apple Watch Series 3 GPS (Nhôm/38mm) – New', 'apple-watch-series-3-gps-nhom38mm-new', 'uploads/product/1586667523_apple-watch-3-phien-ban-38-mm-400x400.jpg', 1, 6300000, 5490000, 17, 1, 0, 0, 6, NULL, NULL, NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:11:04', '2020-04-11 21:58:43'),
(18, 'Macbook Air 13 inch 2019 – Core i5 128GB 8GB RAM – NEW', 'macbook-air-13-inch-2019-core-i5-128gb-8gb-ram-new', 'uploads/product/1584947569_mac_air_2019.jpg', 6, 26790000, 26490000, 18, 1, 1, 0, 4, 'https://macone.vn/macbook-air-13-inch-2019-core-i5-128gb-8gb-ram-new-2/', 'sdtpcmt', NULL, NULL, 6, 9, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:12:49', '2020-03-23 00:12:49'),
(19, 'Samsung Galaxy Watch 42mm', 'samsung-galaxy-watch-42mm', 'uploads/product/1584947672_dong-ho-thong-minh-samsung-galaxy-watch-42mm-20-20-600x600.jpg', 2, 6990000, 6990000, 19, 1, 0, 0, 6, 'https://www.thegioididong.com/dong-ho-thong-minh/samsung-galaxy-watch-42mm', '0', NULL, NULL, 5, 6, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:14:32', '2020-03-23 00:14:32'),
(20, 'Mi Band 4', 'mi-band-4', 'uploads/product/1584947723_mi-band-4-6-600x600.jpg', 5, 850000, 750000, 20, 1, 0, 0, 6, 'https://www.thegioididong.com/dong-ho-thong-minh/mi-band-4', NULL, NULL, NULL, 7, 6, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:15:23', '2020-03-23 00:15:23'),
(21, 'Apple AirPods 2 VN/A', 'apple-airpods-2-vna', 'uploads/product/1584947820_apple airpods 2.jpg', 30, 5900000, 3650000, 21, 1, 1, 0, 20, 'https://cellphones.com.vn/apple-airpods-2.html', NULL, NULL, NULL, 6, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:17:00', '2020-03-23 00:17:00'),
(22, 'Airpods Pro', 'airpods-pro', 'uploads/product/1584947890_637094271123296138_HASP-00629662-1.jfif', 50, 7390000, 7390000, 22, 1, 1, 0, 20, 'https://fptshop.com.vn/phu-kien/apple-tai-nghe-airpods-pro', NULL, NULL, NULL, 6, 8, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:18:10', '2020-03-23 00:18:10'),
(23, 'Galaxy Buds', 'galaxy-buds', 'uploads/product/1584947979_galaxy buds.jpg', 10, 4490000, 2390000, 23, 1, 0, 0, 20, 'https://cellphones.com.vn/tai-nghe-bluetooth-samsung-galaxy-buds.html?gclid=CjwKCAjwvOHzBRBoEiwA48i6Ap-1Plvl5J3-xCX-1Kg_DJ22VnDsC6ZH1rQoNzDtwhMkWq698MjRDhoCxvAQAvD_BwE', NULL, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:19:39', '2020-03-23 00:19:39'),
(24, 'LAPTOP DELL INSPRION 7591 KJ2G41(I7 9750H 8GB / 256GB SSD/15.6FHD / VGA 3GB / Win 10 / Bạc)', 'laptop-dell-insprion-7591-kj2g41i7-9750h-8gb-256gb-ssd156fhd-vga-3gb-win-10-bac', 'uploads/product/1584948108_30089_laptop_dell_inspiron_15_7591_kj2g41_1.jpg', 10, 29990000, 2890000, 24, 1, 1, 0, 4, 'https://cellphones.com.vn/laptop-dell-insprion-7591-kj2g41-core-i7-9750h-ram-8gb-ssd-256gb-15-6inch-fhd-vga-3gb.html', NULL, NULL, NULL, 8, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:21:48', '2020-03-23 00:21:48'),
(25, 'Headphones chống ồn Sony WH-1000XM3', 'headphones-chong-on-sony-wh-1000xm3', 'uploads/product/1584948293_2068_tai_nghe_bluetooth_sony_wh_1000xm3__1__1_1.jpg', 5, 8490000, 6490000, 25, 1, 0, 0, 20, 'https://cellphones.com.vn/tai-nghe-khong-day-chong-on-sony-wh-1000-xm3.html', '0', NULL, NULL, 10, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:24:53', '2020-03-23 00:24:53'),
(26, 'Samsung Galaxy S20 Ultra', 'samsung-galaxy-s20-ultra', 'uploads/product/1584948393_600_samsung-galaxy-s20-ultra-5g.jpg', 35, 29990000, 25099000, 26, 1, 1, 0, 1, 'https://cellphones.com.vn/samsung-galaxy-s20-ultra.html?gclid=CjwKCAjwvOHzBRBoEiwA48i6ApklPr0_OfD-XUHmI6USZ7UdLMH2PMvZrHPgb4XFBPUCnH1SlnIiqxoCf3AQAvD_BwE', NULL, NULL, NULL, 5, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:26:33', '2020-03-23 00:26:33'),
(27, 'Asus Zenbook UX333FA-A4011T/Core i5-8265U', 'asus-zenbook-ux333fa-a4011tcore-i5-8265u', 'uploads/product/1584948463_637020003765248380_asus-zenbook-flip-um462da-bac-2.png', 3, 21990000, 20990000, 27, 1, 0, 0, 4, 'https://fptshop.com.vn/may-tinh-xach-tay/asus-zenbook-ux333fa-a4011t-core-i5-8265u?utm_source=masoffer&traffic_id=5e7583cf9ff3670041555447&', NULL, NULL, NULL, 12, 8, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:27:43', '2020-03-23 00:27:43'),
(28, 'ASUS ROG Phone 2 512GB', 'asus-rog-phone-2-512gb', 'uploads/product/1584948535__600x600__crop_600_asus_rog_phone2_min_1.jpg', 0, 21490000, 20490000, 28, 1, 0, 0, 1, 'https://cellphones.com.vn/asus-rog-phone-2.html?cmpid=sem_search_google&gclid=CjwKCAjwvOHzBRBoEiwA48i6AhWoww0hYgq7gdPjqqHrdL7tqJ6Gbi32VOaynb1fYSBknBNmbnmv1BoCjX4QAvD_BwE', NULL, NULL, NULL, 12, 4, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:28:55', '2020-03-23 00:28:55'),
(29, 'Tai Nghe Gaming Logitech G Pro (Gen 2) – Hàng Chính Hãng', 'tai-nghe-gaming-logitech-g-pro-gen-2-hang-chinh-hang', 'uploads/product/1584948978_a0abb6e8532b674d4bf4847b1e0819c1.png', 2, 2890000, 1990000, 29, 1, 0, 0, 20, NULL, NULL, NULL, NULL, 11, 10, NULL, NULL, NULL, NULL, 0, '2020-03-23 00:35:43', '2020-03-23 00:36:33'),
(30, 'Iphone 7 Plus 32GB - NEW', 'iphone-7-plus-32gb-new', 'uploads/product/1584949065_iphone-7-plus-gold-400x460-400x460.png', 0, 8990000, 7990000, 30, 1, 0, 0, 7, NULL, NULL, NULL, NULL, 6, 6, '<p>Đặc điểm nổi bật của iPhone 7 32GB T&igrave;m hiểu th&ecirc;m Bộ sản phẩm chuẩn: Hộp, Sạc, Tai nghe, S&aacute;ch hướng dẫn, C&aacute;p, C&acirc;y lấy sim iPhone 7 32GB vẫn mang tr&ecirc;n m&igrave;nh thiết kế quen thuộc của từ thời iPhone 6 nhưng c&oacute; nhiều thay đổi lớn về phần cứng, d&agrave;n loa stereo v&agrave; cấu h&igrave;nh cực mạnh.</p>', '<h2>vẫn mang tr&ecirc;n m&igrave;nh thiết kế quen thuộc của từ thời&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-6-32gb-gold\" target=\"_blank\">iPhone 6</a>&nbsp;nhưng c&oacute; nhiều thay đổi lớn về phần cứng, d&agrave;n loa stereo v&agrave; cấu h&igrave;nh cực mạnh.</h2>\r\n\r\n<h3>Camera trước tăng l&ecirc;n 7 MP</h3>\r\n\r\n<p>Một sự cải thiện đ&aacute;ng kể so với&nbsp;<a href=\"https://www.thegioididong.com/dtdd/iphone-6s-32gb\" target=\"_blank\">iPhone 6s</a>&nbsp;trước đ&oacute;, những tấm ảnh chụp selfie của bạn c&agrave;ng th&ecirc;m độ chi tiết v&agrave; sắc n&eacute;t.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-12.jpg\" onclick=\"return false;\"><img alt=\"Nâng câp camera trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-12.jpg\" /></a></p>\r\n\r\n<p>Bộ nhớ trong của m&aacute;y cũng được n&acirc;ng cấp l&ecirc;n 32 GB gi&uacute;p bạn thoải m&aacute;i chụp v&agrave; lưu trữ ảnh m&agrave; kh&ocirc;ng lo hết dung lượng để lưu.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-2.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera sau của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-2.jpg\" /></a></p>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; t&iacute;nh năng chụp Retina Flash gi&uacute;p bạn chụp ảnh tốt hơn ở điều kiện thiếu s&aacute;ng.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-1.jpg\" onclick=\"return false;\"><img alt=\"Ảnh chụp từ camera sau của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-1.jpg\" /></a></p>\r\n\r\n<p>Ngo&agrave;i ra, camera ph&iacute;a sau của&nbsp;<a href=\"https://www.thegioididong.com/dtdd-apple-iphone\" target=\"_blank\">điện thoại iPhone</a>&nbsp;n&agrave;y&nbsp;đ&atilde; được thiết kế gọn g&agrave;ng với đường bo mềm mại hơn, hạn chế tối đa trầy xước cho ống k&iacute;nh.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-15.jpg\" onclick=\"return false;\"><img alt=\"Thiết kế camera trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-15.jpg\" /></a></p>\r\n\r\n<h3>&Acirc;m thanh stereo ph&aacute;t ra từ 2 ph&iacute;a</h3>\r\n\r\n<p>Kh&ocirc;ng c&ograve;n kh&oacute; chịu khi bạn cầm m&aacute;y chơi game nhưng bị b&iacute;t loa như ở những phi&ecirc;n bản trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/87838/iphone-7-256gb-loa.jpg\" onclick=\"return false;\"><img alt=\"Dàn loa stereo của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/87838/iphone-7-256gb-loa.jpg\" /></a></p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/dtdd\" target=\"_blank\">Điện thoại</a>&nbsp;iPhone 7 32 GB được trang bị d&agrave;n loa tr&ecirc;n dưới cho &acirc;m thanh ph&aacute;t ra hay hơn.</p>\r\n\r\n<h3>Cảm biến v&acirc;n tay nhanh nhạy hơn</h3>\r\n\r\n<p>Gi&uacute;p bạn mở kh&oacute;a m&aacute;y chỉ trong v&agrave;i nốt nhạc, gi&uacute;p tiết kiệm thời gian cũng như bảo mật cao dữ liệu trong m&aacute;y.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-16.jpg\" onclick=\"return false;\"><img alt=\"Nút home lực tích hợp trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-16.jpg\" /></a></p>\r\n\r\n<p>Xem th&ecirc;m:&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/thiet-lap-van-tay-moi-tren-iphone-7-920010\" target=\"_blank\">Hướng dẫn bạn c&aacute;ch c&agrave;i đặt v&acirc;n tay iPhone 7</a>.</p>\r\n\r\n<h3>M&agrave;n h&igrave;nh 4.7 inch c&agrave;ng th&ecirc;m sắc n&eacute;t</h3>\r\n\r\n<p>C&ugrave;ng với đ&oacute; l&agrave; khả năng hiển thị tốt hơn dưới trời nắng, g&oacute;c nh&igrave;n nghi&ecirc;ng kh&ocirc;ng bị mất m&agrave;u.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-13.jpg\" onclick=\"return false;\"><img alt=\"Màn hình hiển thị trên điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-13.jpg\" /></a></p>\r\n\r\n<h3>Cấu h&igrave;nh mạnh mẽ thoải m&aacute;i chiến game</h3>\r\n\r\n<p>M&aacute;y t&iacute;ch hợp&nbsp;<a href=\"https://www.thegioididong.com/hoi-dap/tong-quan-ve-chip-a10-fusion-cua-apple-885052\" target=\"_blank\">chip xử l&yacute; A10</a>&nbsp;mới nhất, RAM 2 GB c&ugrave;ng hệ điều h&agrave;nh iOS lu&ocirc;n được cập nhật mới gi&uacute;p m&aacute;y vận h&agrave;nh nhẹ nh&agrave;ng v&agrave; nhanh nhạy.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-3-2.jpg\" onclick=\"return false;\"><img alt=\"Điểm Antutu Benchmark trên chiếc điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-3-2.jpg\" /></a></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><em>Clip test game nặng GTA (Nguồn: Youtube XEETECHCARE)</em></p>\r\n\r\n<h3>N&uacute;t home th&agrave;nh dạng cứng v&agrave; nhận biết cảm ứng lực</h3>\r\n\r\n<p>N&uacute;t home tr&ograve;n tr&ecirc;n iPhone 7 ch&iacute;nh thức l&agrave; dạng cứng, tức bạn sẽ kh&ocirc;ng nhấn xuống được nữa, để thao t&aacute;c tr&ecirc;n n&uacute;t n&agrave;y bạn sẽ nhấn 1 lực vừa phải đến khi n&uacute;t home run nhẹ l&ecirc;n.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-19.jpg\" onclick=\"return false;\"><img alt=\"Nâng cấp nút Home của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-19.jpg\" /></a></p>\r\n\r\n<p>Điều dễ nhận thấy nhất về iPhone 7 tiếp theo ch&iacute;nh l&agrave; mặt sau với d&atilde;y ăng-ten được giấu đi, c&ograve;n lại ngoại h&igrave;nh m&aacute;y kh&ocirc;ng thay đổi nhiều so với&nbsp;iPhone 6s&nbsp;trước đ&oacute;.</p>\r\n\r\n<p><a href=\"https://www.thegioididong.com/images/42/74110/iphone-7-tgdd-11.jpg\" onclick=\"return false;\"><img alt=\"Nâng cấp nút Home của điện thoại iPhone 7\" src=\"https://cdn.tgdd.vn/Products/Images/42/74110/iphone-7-tgdd-11.jpg\" /></a></p>', NULL, NULL, 0, '2020-03-23 00:37:45', '2020-08-17 07:16:10'),
(40, 'Samsung Galaxy Tab with S Pen (P205)', 'samsung-galaxy-tab-with-s-pen-p205', 'uploads/product/1586666383_samsung-galaxy-tab-a8-plus-p205-black-400x400.jpg', 5, 6999000, 5999000, 0, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:39:43', '2020-04-11 21:39:43'),
(41, 'iPad Mini 7.9 inch Wifi 64GB (2019)', 'ipad-mini-79-inch-wifi-64gb-2019', 'uploads/product/1586666566_ipad-mini-79-inch-wifi-2019-gold-400x400.jpg', 5, 10990000, 10490000, 1, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 6, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:42:46', '2020-04-11 21:42:46'),
(42, 'Samsung Galaxy Tab A8 8\" T295 (2019)', 'samsung-galaxy-tab-a8-8-t295-2019', 'uploads/product/1586666633_samsung-galaxy-tab-a8-plus-p205-black-400x400.jpg', 4, 4000000, 3690000, 2, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 0, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:43:53', '2020-04-11 21:47:15'),
(43, 'iPad 10.2 inch Wifi Cellular 128GB (2019)', 'ipad-102-inch-wifi-cellular-128gb-2019', 'uploads/product/1586666700_ipad-10-2-inch-wifi-cellular-128gb-2019-gray-400x400.jpg', 2, 9760000, 8990000, 3, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 6, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:45:00', '2020-04-11 21:45:00'),
(44, 'Huawei MediaPad M5 Lite', 'huawei-mediapad-m5-lite', 'uploads/product/1586666762_huawei-mediapad-m5-lite-gray-400x400.jpg', 3, 7900000, 7400000, 0, 1, 0, 0, 2, NULL, NULL, NULL, NULL, 5, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:46:02', '2020-04-11 21:46:02'),
(45, 'Acer Aspire A315 54 36QY i3 10110U (NX.HM2SV.001)', 'acer-aspire-a315-54-36qy-i3-10110u-nxhm2sv001', 'uploads/product/1586666994_acer-aspire-a315-54-36qy-i3-10110u-4gb-256gb-win10-1-400x400.jpg', 2, 10230000, 8500000, 0, 1, 0, 0, 4, NULL, NULL, NULL, NULL, 6, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:49:54', '2020-04-11 21:49:54'),
(46, 'Asus VivoBook A412FA i3 8145U', 'asus-vivobook-a412fa-i3-8145u', 'uploads/product/1586667066_asus-vivobook-a412f-i3-8145u-4gb-32gb-512gb-win10-400x400.jpg', 8, 7890000, 6900000, 0, 1, 0, 0, 4, NULL, 'EK661T', NULL, NULL, 5, 4, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:51:06', '2020-04-11 21:51:06'),
(47, 'HP 15s du0072TX i3 7020U (8WP16PA)', 'hp-15s-du0072tx-i3-7020u-8wp16pa', 'uploads/product/1586667231_hp-15s-du0072tx-i3-7020u-4gb-256gb-2gb-mx110-win10-1-400x400.jpg', 5, 22520000, 20000000, 2, 1, 0, 0, 4, NULL, NULL, NULL, NULL, 8, 4, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:53:51', '2020-04-11 21:53:51'),
(48, 'Asus VivoBook X409FA i5 8265U', 'asus-vivobook-x409fa-i5-8265u', 'uploads/product/1586667310_asus-vivobook-x409f-i5-8265u-8gb-1tb-win10-ek138t2-1-thumb-1-400x400.jpg', 2, 13800000, 12000000, 4, 1, 0, 0, 4, NULL, 'EK138T', NULL, NULL, 5, 11, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:55:10', '2020-04-11 21:55:10'),
(49, 'HP 348 G7 i5 10210U (9PH06PA)', 'hp-348-g7-i5-10210u-9ph06pa', 'uploads/product/1586667371_hp-348-g7-i5-9ph06pa-218439-1-400x400.jpg', 4, 16000000, 15700000, 0, 1, 0, 0, 4, NULL, NULL, NULL, NULL, 8, 5, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 21:56:11', '2020-04-11 21:56:11'),
(50, 'Apple Watch S5 LTE 40mm viền nhôm dây cao su', 'apple-watch-s5-lte-40mm-vien-nhom-day-cao-su', 'uploads/product/1586667604_apple-watch-s5-lte-40mm-vien-nhom-day-cao-su-ava-400x400.jpg', 2, 4000000, 2900000, 4, 1, 0, 0, 6, NULL, NULL, NULL, NULL, 6, 4, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:00:04', '2020-04-11 22:00:04'),
(51, 'Daumier DM-JLW001.SLTN.8SNI.S.M - Nam - Superman', 'daumier-dm-jlw001sltn8snism-nam-superman', 'uploads/product/1586667688_daumier-dm-jlw001-sltn-8sni-s-m-nam-1-1-400x400.jpg', 3, 3500000, 2990000, 0, 1, 0, 0, 6, NULL, NULL, NULL, NULL, 15, 0, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:01:28', '2020-04-11 22:01:28'),
(52, 'Pin sạc dự phòng Polymer 10.000mAh Xiaomi Mi 18W Fast Charge Power Bank 3', 'pin-sac-du-phong-polymer-10000mah-xiaomi-mi-18w-fast-charge-power-bank-3', 'uploads/product/1586667835_sac-du-phong-polymer-10000mah-xiaomi-mi-18w-den-1-400x400.jpg', 2, 4490000, 500000, 0, 1, 0, 0, 3, NULL, NULL, NULL, NULL, 15, 6, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:03:55', '2020-04-11 22:03:55'),
(53, 'Loa Bluetooth eSaver S12B-2 Đen', 'loa-bluetooth-esaver-s12b-2-den', 'uploads/product/1586667890_loa-bluetooth-esaver-s12b-2-den-avatar-2-400x400.jpg', 3, 300000, 2490000, 0, 1, 0, 0, 3, NULL, NULL, NULL, NULL, 5, 5, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:04:50', '2020-04-11 22:04:50'),
(54, 'Dây cáp Micro USB 1 m e.VALU LTM-01', 'day-cap-micro-usb-1-m-evalu-ltm-01', 'uploads/product/1586667963_cap-micro-1m-evalu-ltm-01-12-400x400.jpg', 2, 280000, 190000, 0, 1, 0, 0, 3, NULL, NULL, NULL, NULL, 15, 11, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:06:03', '2020-04-11 22:06:03'),
(55, 'Thẻ nhớ MicroSD 32 GB Lexar class 10 UHS-I', 'the-nho-microsd-32-gb-lexar-class-10-uhs-i', 'uploads/product/1586668015_the-nho-microsd-32gb-lexar-class-10-uhs-i-5-400x400.jpg', 3, 400000, 320000, 0, 1, 0, 0, 3, NULL, NULL, NULL, NULL, 15, 0, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:06:55', '2020-04-11 22:06:55'),
(56, 'Tai nghe Bluetooth Mozard Flex4 Đen Xanh', 'tai-nghe-bluetooth-mozard-flex4-den-xanh', 'uploads/product/1586668068_tai-nghe-bluetooth-mozard-flex4-den-xanh-1-600x600-1-400x400.jpg', 3, 200000, 190000, 0, 1, 0, 0, 3, NULL, NULL, NULL, NULL, 6, 11, '<p>tt</p>', '<p>mt</p>', NULL, NULL, 0, '2020-04-11 22:07:48', '2020-04-11 22:07:48'),
(58, 'fdsfsd', 'fdsfsd', 'uploads/product/1600432025_chutich_CHUNG.jpg', 10, 10, 12, 1, 1, 0, 0, 16, NULL, 'sdfsd', NULL, NULL, 11, 8, '<p>fs</p>', '<p>fsd</p>', NULL, NULL, 3, '2020-09-18 05:27:05', '2020-09-18 05:27:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `company` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hotline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `introduce` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `company`, `address`, `address2`, `image`, `phone`, `hotline`, `tax`, `facebook`, `email`, `introduce`, `created_at`, `updated_at`) VALUES
(1, 'Công Ty TNHH Hoàng Vinh .co,ltd.', 'Q.Đống Đa , Hà Nội', 'Q.Long Biên, Hà Nội', 'uploads/setting/1590462650_logo.png', '0886686728', '18001166', '000010', 'https://www.facebook.com/didongthongminh.vn/', 'admin@gmail.com', NULL, NULL, '2020-08-10 05:26:45');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role_id` int(11) NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`, `role_id`, `avatar`, `is_active`) VALUES
(9, 'Nguyễn Đức Chung', 'test3@gmail', '987654321', '1', NULL, NULL, 0, NULL, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT 0,
  `is_active` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `slug`, `email`, `phone`, `image`, `website`, `address`, `position`, `is_active`, `created_at`, `updated_at`) VALUES
(4, 'Cellphones', 'cellphones', 'cskh@cellphones.com.vn', '1800.2097', 'uploads/vendor/1584935240_logo.jpg', 'https://didongviet.vn/', 'Việt Nam', 1, 1, '2020-03-22 20:47:20', '2020-03-22 20:49:25'),
(5, 'Di động Việt', 'di-dong-viet', 'lienhe@didongviet.vn', '1800 6018', 'uploads/vendor/1584935377_logo-ddv-full-03.png', 'https://didongviet.vn/', 'Việt Nam', 2, 1, '2020-03-22 20:49:37', '2020-03-22 20:49:37'),
(6, 'Thế Giới Di Động', 'the-gioi-di-dong', 'cskh@thegioididong.com', '1800 1060', 'uploads/vendor/1584935523_Logo-Thegioididong-945x709.jpg', 'https://www.thegioididong.com/', 'Việt Nam', 3, 1, '2020-03-22 20:52:03', '2020-03-22 20:52:03'),
(7, 'Di Động Thông Minh', 'di-dong-thong-minh', NULL, '0945.722.268', NULL, 'https://didongthongminh.vn/', '119 Thái Thịnh, Thịnh Quang, Đống Đa, Hà Nội', 4, 1, '2020-03-22 20:54:05', '2020-03-22 20:54:05'),
(8, 'FPT Shop', 'fpt-shop', 'fptshop@fpt.com.vn', '1800 6601', 'uploads/vendor/1584935728_637133160350737542_201407171129187887_1378267132_fptshop-ver1-0-logo-color-bg-black.jpg', 'https://fptshop.com.vn/', 'Việt Nam', 5, 1, '2020-03-22 20:55:28', '2020-03-22 20:55:28'),
(9, 'Mac One', 'mac-one', 'lienhe@macone.vn', '0936096900', 'uploads/vendor/1584947052_xLogo-MacOne.png.pagespeed.ic.vtZRQ1sWEu.jpg', 'https://macone.vn/', '113 Hoàng Cầu, Q. Đống Đa, Hà Nội ( 68 Hoàng Cầu)', 6, 1, '2020-03-23 00:04:12', '2020-03-23 00:04:12'),
(10, 'Tiki', 'tiki', 'marketing@tiki.vn', '19006035', NULL, 'https://tiki.vn/', 'Ho Chi Minh City', 7, 1, '2020-03-23 00:31:28', '2020-03-23 00:31:28'),
(11, 'Khác', 'khac', NULL, NULL, NULL, NULL, NULL, 5, 1, '2020-04-11 21:53:06', '2020-04-11 21:53:06'),
(12, 'Samsung', 'samsung', 'admin@gmail.com', '0986468888', 'uploads/banner/1595254395_66zgg.png', 'samsung.com', 'Hàn Quốc', 0, 1, '2020-07-20 07:13:15', '2020-07-20 07:13:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `banners_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `brands_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `categories_slug_unique` (`slug`) USING BTREE;

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`) USING BTREE;

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_status`
--
ALTER TABLE `order_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`) USING BTREE;

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD KEY `products_slug_index` (`slug`) USING BTREE,
  ADD KEY `name` (`name`),
  ADD KEY `slug` (`slug`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `users_email_unique` (`email`) USING BTREE;

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`) USING BTREE,
  ADD UNIQUE KEY `vendors_slug_unique` (`slug`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_status`
--
ALTER TABLE `order_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
