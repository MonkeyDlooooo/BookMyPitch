-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 11, 2024 lúc 01:07 PM
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
-- Cơ sở dữ liệu: `bookmypitch`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `admin`
--

CREATE TABLE `admin` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `admin`
--

INSERT INTO `admin` (`Id`, `FullName`, `Phone`, `Email`, `Username`, `Password`, `createdAt`, `updatedAt`) VALUES
(1, 'admin', '0999666888', 'nguyenvanan@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2024-05-09 19:19:21', '2024-12-05 09:00:26');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `category`
--

CREATE TABLE `category` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Avatar` text NOT NULL,
  `Slug` text NOT NULL,
  `Type` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `category`
--

INSERT INTO `category` (`Id`, `Name`, `Avatar`, `Slug`, `Type`, `createdAt`, `updatedAt`) VALUES
(4, 'Chuyên mục ', 'http://127.0.0.1:3001/uploads/1702205588116.jpg', 'chuyen-muc-2', 1, '2023-12-06 16:26:31', '2023-12-10 10:53:16'),
(5, 'Sân Cỏ Nhân Tạo', 'http://127.0.0.1:3001/uploads/1702205865034.jpg', 'san-co-nhan-tao', 2, '2023-12-10 10:57:45', '2024-11-29 17:39:14'),
(6, 'Thể thao hằng ngày', 'http://127.0.0.1:3001/uploads/1702219094767.jpg', 'the-thao-hang-ngay', 1, '2023-12-10 14:38:14', '2024-12-06 17:49:54'),
(7, 'Thể thao', 'http://127.0.0.1:3001/uploads/1733372488398.jpg', 'the-thao', 1, '2024-12-05 04:21:28', '2024-12-05 04:21:28'),
(8, 'Sân cỏ tự nhiên', 'http://127.0.0.1:3001/uploads/1733507382509.jpg', 'san-co-tu-nhien', 2, '2024-12-06 17:49:42', '2024-12-06 17:49:42'),
(9, 'Bóng đá Việt Nam', 'http://127.0.0.1:3001/uploads/1733916488455.jfif', 'bong-da-viet-nam', 1, '2024-12-11 11:28:08', '2024-12-11 11:28:08');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `contact`
--

CREATE TABLE `contact` (
  `Id` int(11) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `Message` text NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `contact`
--

INSERT INTO `contact` (`Id`, `CustomerId`, `Message`, `createdAt`, `updatedAt`) VALUES
(1, 1, 'Nội dung liên hệ mẫu', '2024-05-09 10:50:52', '2024-05-09 10:50:52'),
(2, 1, 'Liên hệ 2', '2024-05-09 10:54:35', '2024-05-09 10:54:35'),
(3, 1, 'Tui bị lỗi hệ thống', '2024-12-06 16:03:00', '2024-12-06 16:03:00'),
(4, 10, 'Tôi cần bào trì hệ thống', '2024-12-11 03:59:30', '2024-12-11 03:59:30');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `customer`
--

CREATE TABLE `customer` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `IsOwner` int(11) NOT NULL DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `customer`
--

INSERT INTO `customer` (`Id`, `FullName`, `Phone`, `Email`, `Username`, `Password`, `IsOwner`, `createdAt`, `updatedAt`) VALUES
(1, 'Nguyễn Văn A', '0379962045', 'nguyenvana@gmail.com', 'nguyenvana', '20ca70c7c8f494c7bd1d54ad23d40cde', 1, '2023-12-27 15:58:48', '2024-12-10 20:21:46'),
(6, 'Nguyễn Văn Bình', '0966999999', 'nguyenvanb@gmail.com', 'nguyenvanb', '23280a0ad9238d00c62b0272af265c57', 0, '2023-12-27 10:08:29', '2024-12-10 19:23:40'),
(10, 'Huỳnh Chí Tín', '0355075487', 'fpthuynhchitin@gmail.com', 'fpthuynhchitin@gmail.com', '93c674bbea62adf2a5d70252e612cccd', 0, '2024-12-11 03:54:28', '2024-12-11 11:21:13');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `facility`
--

CREATE TABLE `facility` (
  `Id` int(11) NOT NULL,
  `PitchId` int(11) NOT NULL,
  `Shirt` int(11) DEFAULT 0,
  `Water` int(11) DEFAULT 0,
  `Referee` int(11) DEFAULT 0,
  `Shoe` int(11) DEFAULT 0,
  `Ball` int(11) DEFAULT 0,
  `Bathroom` int(11) DEFAULT 0,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `facility`
--

INSERT INTO `facility` (`Id`, `PitchId`, `Shirt`, `Water`, `Referee`, `Shoe`, `Ball`, `Bathroom`, `createdAt`, `updatedAt`) VALUES
(6, 7, 0, 0, 3, 0, 0, 1, '2023-12-11 10:13:38', '2023-12-11 10:15:05'),
(7, 6, 0, 0, 2, 0, 0, 0, '2023-12-11 10:20:00', '2023-12-11 10:20:13'),
(8, 8, 1, 1, 3, 1, 0, 1, '2023-12-11 11:45:23', '2023-12-23 20:47:05'),
(9, 9, 1, 1, 1, 1, 0, 0, '2024-01-20 13:23:03', '2024-11-11 16:33:57'),
(10, 10, 0, 0, 0, 0, 0, 0, '2024-11-29 05:47:06', '2024-11-29 05:48:10'),
(11, 11, 0, 0, 0, 0, 0, 0, '2024-11-29 17:39:55', '2024-11-29 17:39:57'),
(12, 12, 0, 0, 0, 0, 0, 0, '2024-11-29 17:50:05', '2024-11-29 17:50:06'),
(13, 14, 0, 0, 0, 0, 0, 0, '2024-11-29 17:53:28', '2024-11-29 17:53:28'),
(14, 15, 0, 0, 0, 0, 0, 0, '2024-12-03 20:45:08', '2024-12-03 20:45:08'),
(15, 16, 0, 0, 0, 0, 0, 0, '2024-12-04 16:49:50', '2024-12-04 16:49:50'),
(17, 18, 0, 0, 0, 0, 0, 0, '2024-12-11 04:06:29', '2024-12-11 04:06:29'),
(18, 19, 0, 0, 0, 0, 0, 0, '2024-12-11 11:56:28', '2024-12-11 11:56:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image`
--

CREATE TABLE `image` (
  `Id` int(11) NOT NULL,
  `PitchId` int(11) NOT NULL,
  `Image` text NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `image`
--

INSERT INTO `image` (`Id`, `PitchId`, `Image`, `createdAt`, `updatedAt`) VALUES
(29, 7, 'http://127.0.0.1:3001/uploads/1733917762946.jpg', '2023-12-24 00:20:53', '2024-12-11 11:49:22'),
(30, 7, 'http://127.0.0.1:3001/uploads/1733917762947.jpg', '2023-12-24 00:20:53', '2024-12-11 11:49:22'),
(31, 7, 'http://127.0.0.1:3001/uploads/1733917804101.jpg', '2023-12-24 00:20:53', '2024-12-11 11:50:04'),
(32, 7, 'http://127.0.0.1:3001/uploads/1733917804101.jpg', '2023-12-24 00:20:53', '2024-12-11 11:50:04'),
(33, 8, 'http://127.0.0.1:3001/uploads/1703378680730.jpg', '2023-12-24 00:44:10', '2023-12-24 00:44:40'),
(34, 8, 'http://127.0.0.1:3001/uploads/1703378680731.webp', '2023-12-24 00:44:10', '2023-12-24 00:44:40'),
(35, 8, 'http://127.0.0.1:3001/uploads/1703378650754.jpg', '2023-12-24 00:44:10', '2023-12-24 00:44:10'),
(36, 8, 'http://127.0.0.1:3001/uploads/1703378687839.jpg', '2023-12-24 00:44:10', '2023-12-24 00:44:47'),
(37, 9, 'http://127.0.0.1:3001/uploads/1733915910838.jpg', '2024-11-11 15:57:09', '2024-12-11 11:18:30'),
(38, 9, 'http://127.0.0.1:3001/uploads/1733915910839.jpg', '2024-11-11 15:57:09', '2024-12-11 11:18:30'),
(39, 9, 'http://127.0.0.1:3001/uploads/1733915910840.jpg', '2024-11-11 15:57:09', '2024-12-11 11:18:30'),
(40, 9, 'http://127.0.0.1:3001/uploads/1733915910863.png', '2024-11-11 15:57:09', '2024-12-11 11:18:30'),
(41, 10, 'http://127.0.0.1:3001/uploads/1733372209989.jpg', '2024-11-29 10:09:10', '2024-12-05 04:16:50'),
(42, 10, 'http://127.0.0.1:3001/uploads/1733372209990.jpg', '2024-11-29 10:09:10', '2024-12-05 04:16:50'),
(43, 10, 'http://127.0.0.1:3001/uploads/1733372209996.jpg', '2024-11-29 10:09:10', '2024-12-05 04:16:50'),
(44, 10, 'http://127.0.0.1:3001/uploads/1733372209996.jpg', '2024-11-29 10:09:10', '2024-12-05 04:16:50'),
(45, 11, 'http://127.0.0.1:3001/uploads/1733372120464.jpg', '2024-11-29 17:41:14', '2024-12-05 04:15:20'),
(46, 11, 'http://127.0.0.1:3001/uploads/1733372120473.jpg', '2024-11-29 17:41:14', '2024-12-05 04:15:20'),
(47, 11, 'http://127.0.0.1:3001/uploads/1733372120477.jpg', '2024-11-29 17:41:14', '2024-12-05 04:15:20'),
(48, 11, 'http://127.0.0.1:3001/uploads/1733372120480.jpg', '2024-11-29 17:41:14', '2024-12-05 04:15:20'),
(49, 14, 'http://127.0.0.1:3001/uploads/1733371930999.jpg', '2024-11-29 17:55:36', '2024-12-05 04:12:11'),
(50, 14, 'http://127.0.0.1:3001/uploads/1733371931000.jpg', '2024-11-29 17:55:36', '2024-12-05 04:12:11'),
(51, 14, 'http://127.0.0.1:3001/uploads/1733371931001.jpg', '2024-11-29 17:55:36', '2024-12-05 04:12:11'),
(52, 14, 'http://127.0.0.1:3001/uploads/1733371931009.png', '2024-11-29 17:55:36', '2024-12-05 04:12:11'),
(53, 15, 'http://127.0.0.1:3001/uploads/1733258727459.jpg', '2024-12-03 20:45:27', '2024-12-03 20:45:27'),
(54, 15, 'http://127.0.0.1:3001/uploads/1733258727470.jpg', '2024-12-03 20:45:27', '2024-12-03 20:45:27'),
(55, 15, 'http://127.0.0.1:3001/uploads/1733258727481.jpg', '2024-12-03 20:45:27', '2024-12-03 20:45:27'),
(56, 15, 'http://127.0.0.1:3001/uploads/1733258727489.jpg', '2024-12-03 20:45:27', '2024-12-03 20:45:27'),
(57, 16, 'http://127.0.0.1:3001/uploads/1733331036751.jpg', '2024-12-04 16:50:36', '2024-12-04 16:50:36'),
(58, 16, 'http://127.0.0.1:3001/uploads/1733331036753.jpg', '2024-12-04 16:50:36', '2024-12-04 16:50:36'),
(59, 16, 'http://127.0.0.1:3001/uploads/1733331036767.jpg', '2024-12-04 16:50:36', '2024-12-04 16:50:36'),
(60, 16, 'http://127.0.0.1:3001/uploads/1733331036774.jpg', '2024-12-04 16:50:36', '2024-12-04 16:50:36'),
(61, 12, 'http://127.0.0.1:3001/uploads/1733372014979.jpg', '2024-12-05 04:13:35', '2024-12-05 04:13:35'),
(62, 12, 'http://127.0.0.1:3001/uploads/1733372014981.jpg', '2024-12-05 04:13:35', '2024-12-05 04:13:35'),
(63, 12, 'http://127.0.0.1:3001/uploads/1733372014987.jpg', '2024-12-05 04:13:35', '2024-12-05 04:13:35'),
(64, 12, 'http://127.0.0.1:3001/uploads/1733372014997.jpg', '2024-12-05 04:13:35', '2024-12-05 04:13:35'),
(65, 18, 'http://127.0.0.1:3001/uploads/1733890048182.jpeg', '2024-12-11 04:07:28', '2024-12-11 04:07:28'),
(66, 18, 'http://127.0.0.1:3001/uploads/1733890048183.jpg', '2024-12-11 04:07:28', '2024-12-11 04:07:28'),
(67, 18, 'http://127.0.0.1:3001/uploads/1733890048185.jpg', '2024-12-11 04:07:28', '2024-12-11 04:07:28'),
(68, 18, 'http://127.0.0.1:3001/uploads/1733890048192.jpg', '2024-12-11 04:07:28', '2024-12-11 04:07:28'),
(69, 6, 'http://127.0.0.1:3001/uploads/1733916191215.jpg', '2024-12-11 11:23:11', '2024-12-11 11:23:11'),
(70, 6, 'http://127.0.0.1:3001/uploads/1733916191225.jpg', '2024-12-11 11:23:11', '2024-12-11 11:23:11'),
(71, 6, 'http://127.0.0.1:3001/uploads/1733916191235.jpg', '2024-12-11 11:23:11', '2024-12-11 11:23:11'),
(72, 6, 'http://127.0.0.1:3001/uploads/1733916191246.jpg', '2024-12-11 11:23:11', '2024-12-11 11:23:11'),
(73, 19, 'http://127.0.0.1:3001/uploads/1733918219408.jpg', '2024-12-11 11:56:59', '2024-12-11 11:56:59'),
(74, 19, 'http://127.0.0.1:3001/uploads/1733918238507.jpg', '2024-12-11 11:56:59', '2024-12-11 11:57:18'),
(75, 19, 'http://127.0.0.1:3001/uploads/1733918238507.jpg', '2024-12-11 11:56:59', '2024-12-11 11:57:18'),
(76, 19, 'http://127.0.0.1:3001/uploads/1733918238517.jpg', '2024-12-11 11:56:59', '2024-12-11 11:57:18');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `news`
--

CREATE TABLE `news` (
  `Id` int(11) NOT NULL,
  `Title` varchar(500) NOT NULL,
  `Content` text NOT NULL,
  `Avatar` text NOT NULL,
  `Tag` varchar(255) NOT NULL,
  `Slug` text NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `news`
--

INSERT INTO `news` (`Id`, `Title`, `Content`, `Avatar`, `Tag`, `Slug`, `CategoryId`, `createdAt`, `updatedAt`) VALUES
(16, 'Amorim thua trận đầu ở MU vì không \'thuộc bài\'', '<p>Trước trận đấu Arsenal, ch&uacute;ng ta đ&atilde; n&oacute;i việc Amorim nếu muốn c&oacute; điểm, chứ chưa n&oacute;i tới việc đ&aacute;nh bại đội chủ nh&agrave; ngay tại Emirates, họ cần phải h&oacute;a giải &ldquo;vũ kh&iacute; đ&aacute; phạt&rdquo; của đối thủ. Sau hiệp 1 phần n&agrave;o l&agrave;m tốt, h&agrave;ng thủ MU liền thủng lưới 2 b&agrave;n ở 45 ph&uacute;t tiếp theo từ c&aacute;c pha b&oacute;ng như thế n&agrave;y.</p>\r\n\r\n<p>Cả hai b&agrave;n thắng của đội chủ nh&agrave; đều đến từ c&aacute;c pha phạt g&oacute;c v&agrave; người ta vẫn chưa hiểu v&igrave; sao, h&agrave;ng thủ MU lại c&oacute; thể &ldquo;ng&acirc;y thơ&rdquo; tới mức để đối thủ th&iacute;ch l&agrave;m g&igrave; th&igrave; l&agrave;m trong những t&igrave;nh huống &ldquo;b&oacute;ng chết&rdquo; trong hiệp 2. Ph&uacute;t 54, Jurrien Timber ghi b&agrave;n mở tỷ số bằng một pha đ&aacute;nh đầu sau quả phạt g&oacute;c của Declan Rice. Đến ph&uacute;t 73, Saliba n&acirc;ng tỷ số l&ecirc;n 2-0 với một pha đ&aacute;nh đầu từ quả phạt g&oacute;c của Thomas Partey. B&ecirc;n ngo&agrave;i s&acirc;n, mặt Amorim lạnh tanh kh&ocirc;ng cảm x&uacute;c.</p>\r\n\r\n<p>Tất cả đều biết Arsenal sẽ l&agrave;m g&igrave; ở những t&igrave;nh huống đ&aacute; phạt g&oacute;c song chưa CLB n&agrave;o ngăn chặn nổi. Arsenal lu&ocirc;n bố tr&iacute; rất đ&ocirc;ng cầu thủ trong v&ograve;ng 5m50 của đối phương ở c&aacute;c t&igrave;nh huống phạt g&oacute;c khi trung b&igrave;nh 3,8 cầu thủ cao nhất Premier League đứng tr&ecirc;n s&acirc;n. Điều đ&oacute; khiến việc kiểm so&aacute;t v&agrave; theo k&egrave;m cầu thủ Arsenal trở n&ecirc;n v&ocirc; c&ugrave;ng kh&oacute; khăn cho bất kỳ đội b&oacute;ng n&agrave;o. Tottenham, Chelsea, Man City cũng chẳng thể chặn được, MU v&agrave;o l&uacute;c n&agrave;y th&igrave;&hellip;th&ocirc;i tạm bỏ qua. Khi l&ecirc;n nắm quyền, HLV Amorim đ&atilde; thay Andreas Georgson, trợ l&yacute; phụ tr&aacute;ch c&aacute;c t&igrave;nh huống cố định của MU dưới thời Ten Hag, bằng Carlos Fernandes nhưng điều đ&oacute; kh&ocirc;ng tạo ra sự kh&aacute;c biệt.</p>\r\n\r\n<p>Vượt qua MU, Arsenal l&agrave; đội đầu ti&ecirc;n ghi b&agrave;n từ 2 quả phạt g&oacute;c trong một trận đấu Ngoại hạng Anh trước đại k&igrave;nh địch kể từ Chelsea v&agrave;o th&aacute;ng 1 năm 2014. Để rồi, Arsenal đ&atilde; ghi được nhiều b&agrave;n thắng từ c&aacute;c quả phạt g&oacute;c hơn bất kỳ đội b&oacute;ng n&agrave;o kh&aacute;c tại Premier League kể từ đầu m&ugrave;a giải trước (21). Với c&aacute; nh&acirc;n Arteta, &ocirc;ng c&oacute; tỷ lệ chiến thắng cao nhất trong số c&aacute;c huấn luyện vi&ecirc;n đối đầu với MU 5 lần trở l&ecirc;n trong lịch sử Premier League (70%). 10 trận (7 trận thắng, 1 h&ograve;a v&agrave; 2 thua). Những thống k&ecirc; cho thấy MU cần rất nhiều thời gian để trở n&ecirc;n &ldquo;khủng khiếp&rdquo; như Arsenal trước khi nghĩ tới việc đua tranh chức v&ocirc; địch Ngoại hạng Anh.</p>\r\n\r\n<p><a href=\"https://cdn-img.thethao247.vn/origin_842x0/storage/files/ctvqt/2024/12/05/mu-arsenal-19529-timber-094006.jpg\" rel=\"nofollow noopener\"><img alt=\"\" src=\"https://cdn-img.thethao247.vn/origin_842x0/storage/files/ctvqt/2024/12/05/mu-arsenal-19529-timber-094006.jpg\" style=\"height:646px; width:1111px\" title=\"\" /></a></p>\r\n', 'http://127.0.0.1:3001/uploads/1733916394646.jfif', 'Thẻ thao 5/12', 'amorim-thua-tran-dau-o-mu-vi-khong-\'thuoc-bai\'', 7, '2024-01-04 10:21:32', '2024-12-11 11:26:34'),
(17, 'Manchester United sẽ không chi 100 triệu bảng cho cầu thủ Harry Kane', '<p>Manchester United sẽ kh&ocirc;ng theo đuổi cầu thủ Harry Kane nếu Tottenham định gi&aacute; đội trưởng tuyển Anh ở mức 100 triệu bảng.</p>\r\n\r\n<p>Cầu thủ Kane l&agrave; mục ti&ecirc;u h&agrave;ng đầu của &ocirc;ng Erik ten Hag m&ugrave;a h&egrave; n&agrave;y khi huấn luyện vi&ecirc;n của United x&aacute;c định mang một tiền đạo đẳng cấp thế giới về với Old Trafford.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, Tottenham y&ecirc;u cầu một mức ph&iacute; qu&aacute; cao cho một cầu thủ sắp bước sang tuổi 30 v&agrave;o th&aacute;ng tới, v&agrave; chỉ c&ograve;n 1 năm trong hợp đồng. Th&ecirc;m v&agrave;o đ&oacute; l&agrave; những phiền phức trong đ&agrave;m ph&aacute;n với người đứng đầu Spurs, Daniel Levy khiến United xem thỏa thuận l&agrave; một điều chắc chắn kh&ocirc;ng th&agrave;nh ở thời điểm hiện tại.</p>\r\n\r\n<p>Với c&ugrave;ng l&yacute; do, United đang loại trừ khả năng tiếp cận tiền đạo Napoli, Victor Osimhen, người được c&acirc;u lạc bộ &Yacute; định gi&aacute; 120 triệu bảng. Giống như &ocirc;ng Levy, chủ sở hữu của Napoli, Aurelio De Laurentiis, nổi tiếng l&agrave; một nh&agrave; đ&agrave;m ph&aacute;n cứng rắn.</p>\r\n\r\n<p>Tiền đạo Atalanta, Rasmus Hojlund được xem l&agrave; mục ti&ecirc;u thực tế hơn với United, ở mức 40 - 60 triệu bảng. Dane, 20 tuổi, l&agrave; một trong những triển vọng th&uacute; vị nhất của ch&acirc;u &Acirc;u, v&agrave; c&oacute; gi&aacute; bằng một nửa Kane v&agrave; Osimhen.</p>\r\n\r\n<p><img alt=\"\" src=\"https://ddk.1cdn.vn/2023/06/15/image.daidoanket.vn-images-upload-trangle-06152023-_1495-kane.png\" /></p>\r\n\r\n<p>Đội b&oacute;ng của Erik ten Hag đ&atilde; x&aacute;c định tiền đạo của Spurs l&agrave; mục ti&ecirc;u chuyển nhượng ch&iacute;nh trong m&ugrave;a h&egrave;. Ảnh: Reuters.</p>\r\n\r\n<p>Ưu ti&ecirc;n ch&iacute;nh của &ocirc;ng Ten Hag m&ugrave;a h&egrave; n&agrave;y l&agrave; một tiền đạo, thủ m&ocirc;n v&agrave; trung vệ. Lời đề nghị trị gi&aacute; 40 triệu bảng cho cầu thủ Mason Mount đ&atilde; bị Chelsea từ chối, nhưng United cảm thấy n&oacute; phản &aacute;nh gi&aacute; trị của một cầu thủ, người chỉ c&ograve;n một năm trong hợp đồng ở Stamford Bridge.</p>\r\n\r\n<p>Trong khi đ&oacute;, việc chuyển sang một thủ m&ocirc;n mới sẽ phụ thuộc v&agrave;o kết quả hợp đồng của David de Gea. Cầu thủ người T&acirc;y Ban Nha vẫn chưa k&yacute; bản hợp đồng mới l&agrave;m giảm mức lương 375.000 bảng một tuần của anh, khi chỉ c&ograve;n hơn 2 tuần trước khi anh trở th&agrave;nh cầu thủ tự do.</p>\r\n\r\n<p>Nếu De Gea ở lại, United c&oacute; thể sẽ mang đến sự cạnh tranh cho cầu thủ 32 tuổi. Nếu anh ra đi, Ten Hag sẽ t&igrave;m kiếm một cầu thủ đứng đầu mới đắt gi&aacute; hơn.</p>\r\n\r\n<p>Tuy nhi&ecirc;n, United c&oacute; thể l&agrave;m mạnh những vị tr&iacute; kh&aacute;c của đội, điều đ&oacute; phụ thuộc v&agrave;o việc cầu thủ n&agrave;o bị b&aacute;n đi. Đ&oacute; c&oacute; thể l&agrave; một trung vệ nếu Harry Maguire rời đi, v&agrave; United biết r&otilde; điều khoản mua lại Kim Min-jae trị gi&aacute; 50 triệu bảng ở Napoli, điều n&agrave;y cũng sẽ loại bỏ nhu cầu đ&agrave;m ph&aacute;n với De Laurentiis.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733916287440.png', 'chuyển nhượng', 'manchester-united-se-khong-chi-100-trieu-bang-cho-cau-thu-harry-kane', 6, '2024-12-09 18:12:18', '2024-12-11 11:40:25'),
(18, 'Hoàng Đức: ‘Tôi chơi không tốt trước Lào’', '<h1>Ho&agrave;ng Đức: &lsquo;T&ocirc;i chơi kh&ocirc;ng tốt trước L&agrave;o&rsquo;</h1>\r\n\r\n<p>Ph&uacute; ThọTiền vệ Nguyễn Ho&agrave;ng Đức l&agrave; cầu thủ l&agrave;m mất quyền kiểm so&aacute;t b&oacute;ng nhiều nhất, với 22 lần, trong trận Việt Nam thắng L&agrave;o 4-1 ở lượt ra qu&acirc;n bảng B ASEAN Cup 2024.</p>\r\n\r\n<p>Một cầu thủ được t&iacute;nh mất quyền kiểm so&aacute;t b&oacute;ng l&agrave; bất kỳ h&agrave;nh động n&agrave;o khiến đội nh&agrave; mất b&oacute;ng, c&oacute; thể l&agrave; r&ecirc; b&oacute;ng kh&ocirc;ng th&agrave;nh c&ocirc;ng, chuyền b&oacute;ng lỗi, việt vị.</p>\r\n\r\n<p>Theo&nbsp;<em>Sofascore</em>, Ho&agrave;ng Đức dẫn đầu về chỉ số n&agrave;y trong trận gặp L&agrave;o. Xếp sau trung vệ B&ugrave;i Tiến Dũng (18 lần) v&agrave; hậu vệ tr&aacute;i Khuất Văn Khang (17).</p>\r\n\r\n<p><img alt=\"Nguyễn Hoàng Đức thất vọng sau khi cú sút của Nguyễn Hai Long chệch khung thành Lào ở phút 35. Ảnh: Hiếu Lương\" src=\"https://i1-thethao.vnecdn.net/2024/12/11/nguyen-hoang-duc-viet-nam-lao-8096-6388-1733914855.jpg?w=680&amp;h=0&amp;q=100&amp;dpr=1&amp;fit=crop&amp;s=32cw0p3WG4j4yuM0bOnwMQ\" /></p>\r\n\r\n<p><iframe frameborder=\"0\" height=\"1\" id=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Thethao/thethao.affcup.detail_0\" name=\"google_ads_iframe_/27973503/Vnexpress/Desktop/Inimage/Thethao/thethao.affcup.detail_0\" sandbox=\"\" scrolling=\"no\" tabindex=\"0\" title=\"3rd party ad content\" width=\"1\"></iframe></p>\r\n\r\n<p>Nguyễn Ho&agrave;ng Đức thất vọng sau khi c&uacute; s&uacute;t của Nguyễn Hai Long chệch khung th&agrave;nh L&agrave;o ở ph&uacute;t 35. Ảnh: Hiếu Lương</p>\r\n\r\n<p>&quot;T&ocirc;i chơi chưa thật sự tốt&quot;, Ho&agrave;ng Đức n&oacute;i trước buổi tập chiều 11/12 tại s&acirc;n Việt Tr&igrave;. &quot;Trong buổi họp s&aacute;ng nay, to&agrave;n đội v&agrave; bản th&acirc;n t&ocirc;i đ&atilde; r&uacute;t kinh nghiệm để chơi tốt hơn&quot;.</p>\r\n\r\n<p>Tiền vệ sinh năm 1998 đ&aacute; tiền vệ trung t&acirc;m c&ugrave;ng Do&atilde;n Ngọc T&acirc;n, nhưng l&agrave; hai cầu thủ thấp điểm nhất của Việt Nam, với lần lượt 6,9 v&agrave; 6,7. Ba cầu thủ kh&aacute;c bị chấm dưới bảy, l&agrave; trung vệ Nguyễn Th&agrave;nh Chung (6,8), thủ m&ocirc;n Nguyễn Đ&igrave;nh Triệu (6,7) v&agrave; hậu vệ Hồ Tấn T&agrave;i (6,1) &ndash; nhưng v&agrave;o s&acirc;n ở ph&uacute;t 86 thay Trương Tiến Anh.</p>\r\n\r\n<p>Ho&agrave;ng Đức kh&ocirc;ng cho rằng việc lần đầu đ&aacute; cặp trong đội h&igrave;nh ch&iacute;nh với Do&atilde;n Ngọc T&acirc;n l&agrave; vấn đề. Cả đội đ&atilde; c&oacute; c&oacute; qu&atilde;ng thời gian hiểu nhau khi tập huấn tại H&agrave;n Quốc, v&igrave; vậy việc thi đấu cạnh ai cũng tốt v&agrave; l&agrave; quyết định từ ban huấn luyện.</p>\r\n\r\n<p>Diễn biến ch&iacute;nh trận Việt Nam thắng L&agrave;o 4-1 ở lượt ra qu&acirc;n bảng B ASEAN Cup 2024.</p>\r\n\r\n<p>Trước đối thủ yếu hơn, Việt Nam vẫn trải qua hiệp một vất vả d&ugrave; kiểm so&aacute;t b&oacute;ng 71%. Đ&acirc;y l&agrave; lần đầu ti&ecirc;n từ năm 2008, Việt Nam kh&ocirc;ng thể ghi b&agrave;n trong hiệp một trước L&agrave;o.</p>\r\n\r\n<p>&quot;Ch&uacute;ng t&ocirc;i muốn tấn c&ocirc;ng nhanh n&ecirc;n hơi vội v&agrave;ng&quot;, Ho&agrave;ng Đức cho biết. &quot;Mặt s&acirc;n của L&agrave;o cũng kh&ocirc;ng được tốt khiến đường b&oacute;ng đi c&oacute; sai số&quot;.</p>\r\n\r\n<p>Sang hiệp hai, những điều chỉnh giữa giờ gi&uacute;p Việt Nam ghi liền ba b&agrave;n trong 11 ph&uacute;t, lần lượt của Nguyễn Hai Long (58&rsquo;), Nguyễn Tiến Linh (63&rsquo;) v&agrave; Nguyễn Văn To&agrave;n (69&rsquo;). Đến ph&uacute;t 82, Nguyễn Văn Vĩ ghi b&agrave;n thứ tư v&agrave; kết th&uacute;c trận với tỷ số 4-1.</p>\r\n\r\n<p>Một ng&agrave;y sau, nh&oacute;m cầu thủ đ&aacute; ch&iacute;nh được nghỉ ngơi trọn vẹn. Nh&oacute;m dự bị v&agrave; &iacute;t thi đấu tập ri&ecirc;ng. Đến chiều c&ugrave;ng ng&agrave;y, Việt Nam l&ecirc;n đường về nước v&agrave; di chuyển l&ecirc;n Ph&uacute; Thọ. Đội kh&ocirc;ng thi đấu lượt trận thứ hai bảng B n&ecirc;n c&oacute; năm ng&agrave;y nghỉ trước khi gặp Indonesia tr&ecirc;n s&acirc;n nh&agrave; ở lượt ba. Đ&acirc;y l&agrave; lợi thế, trong khi đối thủ phải gặp L&agrave;o v&agrave;o tối mai 12/12.</p>\r\n\r\n<p>&quot;Trận đấu tới sẽ hay v&igrave; Indonesia đ&atilde; tiến bộ nhiều&quot;, Ho&agrave;ng Đức n&oacute;i. &quot;Ch&uacute;ng t&ocirc;i tập trung tập luyện v&agrave; chuẩn bị phương &aacute;n đối ph&oacute; tốt nhất&quot;.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733917152840.jfif', 'Việt Nam', 'hoang-duc:-‘toi-choi-khong-tot-truoc-lao’', 4, '2024-12-11 11:39:12', '2024-12-11 11:39:12');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `Id` int(11) NOT NULL,
  `Code` varchar(12) NOT NULL,
  `PitchId` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Total` int(11) NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `FullName` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Phone` varchar(11) NOT NULL,
  `StatusOrder` int(1) NOT NULL DEFAULT 1,
  `StatusPay` int(1) NOT NULL DEFAULT 0,
  `OwnerId` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`Id`, `Code`, `PitchId`, `Date`, `Time`, `Total`, `CustomerId`, `FullName`, `Email`, `Phone`, `StatusOrder`, `StatusPay`, `OwnerId`, `createdAt`, `updatedAt`) VALUES
(41, 'ASMXSWEVHLNY', 14, '2024-12-04', '13:15:00', 4000000, 6, 'Nguyễn Văn Bình', 'nguyenvanb@gmail.com', '0966999999', 4, 1, 1, '2024-12-02 17:14:18', '2024-12-02 17:35:45'),
(42, 'BONXENCMKCMG', 14, '2024-12-03', '01:55:00', 3500000, NULL, 'Nguyễn Văn Bình', 'nguyenvanb@gmail.com', '0966999999', 4, 1, 1, '2024-12-02 18:10:09', '2024-12-05 08:56:45'),
(43, 'KQWDBLLSFIIH', 15, '2024-12-05', '05:47:00', 50000, 6, 'Nguyễn Văn Bình', 'fpthuynhchitin@gmail.com', '0966999999', 4, 1, 6, '2024-12-03 20:46:51', '2024-12-03 20:47:36'),
(44, 'HRQURKALYUJM', 14, '2024-12-05', '16:30:00', 5000000, 6, 'Nguyễn Văn Bình', 'nguyenvanb@gmail.com', '0966999999', 4, 1, 1, '2024-12-04 19:24:00', '2024-12-05 08:56:42'),
(51, 'NKUKFKKGBGZW', 16, '2024-12-08', '21:30:00', 100000, 1, 'Nguyễn Văn An', 'nguyenvana@gmail.com', '0379962045', 4, 1, NULL, '2024-12-08 10:52:31', '2024-12-10 19:12:16'),
(52, 'TCQNIGKYWQTC', 15, '2024-12-11', '16:10:00', 50000, 1, 'Nguyễn Văn An', 'nguyenvana@gmail.com', '0379962045', 4, 1, 6, '2024-12-10 19:11:04', '2024-12-10 19:12:17'),
(53, 'YIOJVALIKSFK', 15, '2024-12-11', '21:11:00', 50000, 1, 'Nguyễn Văn An', 'nguyenvana@gmail.com', '0379962045', 0, 0, 6, '2024-12-10 19:12:03', '2024-12-10 19:12:13'),
(54, 'YKFXGAKIVNWK', 14, '2024-12-12', '13:00:00', 4000000, 10, 'Huỳnh Chí Tín', 'fpthuynhchitin@gmail.com', '0355075487', 4, 1, 1, '2024-12-11 03:56:43', '2024-12-11 11:21:03'),
(55, 'DWGTJJFBJVUA', 18, '2024-12-11', '15:00:00', 10000000, 1, 'Nguyễn Văn A', 'nguyenvana@gmail.com', '0379962045', 4, 1, 10, '2024-12-11 04:09:24', '2024-12-11 11:21:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pitchs`
--

CREATE TABLE `pitchs` (
  `Id` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Avatar` text NOT NULL,
  `Price` int(11) NOT NULL,
  `People` int(11) NOT NULL,
  `CategoryId` int(11) NOT NULL,
  `Slug` text NOT NULL,
  `CustomerId` int(11) DEFAULT NULL,
  `Address` text DEFAULT NULL,
  `Status` int(11) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `pitchs`
--

INSERT INTO `pitchs` (`Id`, `Name`, `Description`, `Avatar`, `Price`, `People`, `CategoryId`, `Slug`, `CustomerId`, `Address`, `Status`, `createdAt`, `updatedAt`) VALUES
(6, 'Sân bóng đại Học Công Nghiệp', '<p><strong>M&ocirc; tả s&acirc;n b&oacute;ng đ&aacute; 5 người:</strong></p>\r\n\r\n<p>S&acirc;n b&oacute;ng đ&aacute; 5 người l&agrave; một loại s&acirc;n nhỏ gọn, thường được sử dụng cho c&aacute;c trận đấu b&oacute;ng đ&aacute; nghiệp dư hoặc giải tr&iacute;. S&acirc;n n&agrave;y ph&ugrave; hợp với c&aacute;c nh&oacute;m nhỏ, thường bao gồm 5 cầu thủ mỗi đội (4 cầu thủ ch&iacute;nh v&agrave; 1 thủ m&ocirc;n). C&aacute;c đặc điểm của s&acirc;n b&oacute;ng đ&aacute; 5 người gồm:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>K&iacute;ch thước s&acirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>Chiều d&agrave;i: 25 - 42 m&eacute;t.</li>\r\n		<li>Chiều rộng: 16 - 25 m&eacute;t.</li>\r\n		<li>S&acirc;n c&oacute; k&iacute;ch thước nhỏ hơn nhiều so với s&acirc;n b&oacute;ng đ&aacute; 11 người, ph&ugrave; hợp với kh&ocirc;ng gian hạn chế.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mặt s&acirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>Thường sử dụng cỏ nh&acirc;n tạo hoặc cỏ tự nhi&ecirc;n được chăm s&oacute;c kỹ lưỡng.</li>\r\n		<li>Bề mặt được thiết kế để đảm bảo độ ma s&aacute;t v&agrave; giảm nguy cơ chấn thương cho người chơi.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Khu vực cầu m&ocirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>K&iacute;ch thước khung th&agrave;nh: Rộng 3 m&eacute;t, cao 2 m&eacute;t.</li>\r\n		<li>V&ugrave;ng cấm địa l&agrave; một nửa v&ograve;ng tr&ograve;n với b&aacute;n k&iacute;nh 6 m&eacute;t từ t&acirc;m khung th&agrave;nh.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n', 'http://127.0.0.1:3001/uploads/1733916164264.jpg', 1500000, 5, 5, 'cong-nghe-thong-tin1', NULL, '12 Nguyễn Văn Bảo, Phường 4 Quận Gò Vấp, Hồ Chí Minh', 1, '2023-12-10 16:08:08', '2024-12-11 11:22:44'),
(7, 'Sân vận động Phú Thọ', '<p><strong>S&acirc;n b&oacute;ng đ&aacute; 11 người</strong> l&agrave; s&acirc;n ti&ecirc;u chuẩn cho c&aacute;c trận đấu ch&iacute;nh thức, với k&iacute;ch thước lớn hơn, ph&ugrave; hợp cho 11 cầu thủ mỗi đội.</p>\r\n\r\n<ul>\r\n	<li><strong>K&iacute;ch thước:</strong> D&agrave;i 100-110m, rộng 64-75m.</li>\r\n	<li><strong>Mặt s&acirc;n:</strong> Cỏ tự nhi&ecirc;n hoặc cỏ nh&acirc;n tạo chất lượng cao.</li>\r\n	<li><strong>Khung th&agrave;nh:</strong> Rộng 7,32m, cao 2,44m.</li>\r\n	<li><strong>Vạch kẻ:</strong> Gồm c&aacute;c đường bi&ecirc;n, v&ograve;ng cấm, chấm phạt đền, v&agrave; v&ograve;ng tr&ograve;n giữa s&acirc;n.</li>\r\n	<li><strong>Sử dụng:</strong> C&aacute;c giải đấu chuy&ecirc;n nghiệp hoặc phong tr&agrave;o lớn</li>\r\n</ul>\r\n', 'http://127.0.0.1:3001/uploads/1733917733693.jpg', 1500000, 11, 8, 'san-van-dong-phu-tho', NULL, '221 Lý Thường Kiệt, Phường 9, Quận 11, Hồ Chí Minh', 1, '2023-12-10 20:10:14', '2024-12-11 11:48:53'),
(8, 'Công Nghệ Thông Tin', '<p><strong>S&acirc;n b&oacute;ng đ&aacute; 7 người</strong> l&agrave; loại s&acirc;n phổ biến trong c&aacute;c trận đấu b&aacute;n chuy&ecirc;n hoặc giải tr&iacute;, với k&iacute;ch thước vừa phải, ph&ugrave; hợp cho đội h&igrave;nh nhỏ hơn.</p>\r\n\r\n<ul>\r\n	<li><strong>K&iacute;ch thước:</strong> D&agrave;i 50-75m, rộng 30-55m.</li>\r\n	<li><strong>Mặt s&acirc;n:</strong> Cỏ tự nhi&ecirc;n hoặc cỏ nh&acirc;n tạo, đảm bảo độ bền v&agrave; an to&agrave;n khi chơi.</li>\r\n	<li><strong>Khung th&agrave;nh:</strong> Rộng 3,6m, cao 2,1m.</li>\r\n	<li><strong>Khu vực cấm địa:</strong> H&igrave;nh chữ nhật, d&agrave;i 10m, rộng 8m t&iacute;nh từ khung th&agrave;nh.</li>\r\n	<li><strong>Thời gian thi đấu:</strong> 50 ph&uacute;t (2 hiệp, mỗi hiệp 25 ph&uacute;t).</li>\r\n</ul>\r\n\r\n<p>S&acirc;n b&oacute;ng đ&aacute; 7 người ph&ugrave; hợp cho c&aacute;c nh&oacute;m chơi nghiệp dư hoặc c&aacute;c giải phong tr&agrave;o, c&acirc;n bằng giữa chiến thuật v&agrave; kỹ năng c&aacute; nh&acirc;n.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733916036478.jpg', 150000, 7, 5, 'cong-nghe-thong-tin', NULL, 'Đường Ngô Gia Tự, Tân Lập, Thành phố Nha Trang, Khánh Hòa', 0, '2023-12-11 11:20:27', '2024-12-11 11:20:36'),
(9, 'Sân bóng Hoàng Quốc Việt', '<p><strong>S&acirc;n b&oacute;ng đ&aacute; 11 người</strong> l&agrave; s&acirc;n ti&ecirc;u chuẩn cho c&aacute;c trận đấu ch&iacute;nh thức, với k&iacute;ch thước lớn hơn, ph&ugrave; hợp cho 11 cầu thủ mỗi đội.</p>\r\n\r\n<ul>\r\n	<li><strong>K&iacute;ch thước:</strong> D&agrave;i 100-110m, rộng 64-75m.</li>\r\n	<li><strong>Mặt s&acirc;n:</strong> Cỏ tự nhi&ecirc;n hoặc cỏ nh&acirc;n tạo chất lượng cao.</li>\r\n	<li><strong>Khung th&agrave;nh:</strong> Rộng 7,32m, cao 2,44m.</li>\r\n	<li><strong>Vạch kẻ:</strong> Gồm c&aacute;c đường bi&ecirc;n, v&ograve;ng cấm, chấm phạt đền, v&agrave; v&ograve;ng tr&ograve;n giữa s&acirc;n.</li>\r\n	<li><strong>Sử dụng:</strong> C&aacute;c giải đấu chuy&ecirc;n nghiệp hoặc phong tr&agrave;o lớn.</li>\r\n</ul>\r\n\r\n<p>S&acirc;n mang lại trải nghiệm đầy đủ về kỹ thuật v&agrave; chiến thuật b&oacute;ng đ&aacute; chuy&ecirc;n nghiệp.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733915809098.jpg', 1300000, 11, 8, 'san-bong-hoang-quoc-viet', NULL, '1 Đ. Lê Đức Thọ, Mỹ Đình, quận Nam Từ Liêm, Thành phố Hà Nội', 1, '2024-01-09 15:06:10', '2024-12-11 11:16:49'),
(10, 'Sân bóng mới', '<p><strong>M&ocirc; tả s&acirc;n b&oacute;ng đ&aacute; 5 người:</strong></p>\r\n\r\n<p>S&acirc;n b&oacute;ng đ&aacute; 5 người l&agrave; một loại s&acirc;n nhỏ gọn, thường được sử dụng cho c&aacute;c trận đấu b&oacute;ng đ&aacute; nghiệp dư hoặc giải tr&iacute;. S&acirc;n n&agrave;y ph&ugrave; hợp với c&aacute;c nh&oacute;m nhỏ, thường bao gồm 5 cầu thủ mỗi đội (4 cầu thủ ch&iacute;nh v&agrave; 1 thủ m&ocirc;n). C&aacute;c đặc điểm của s&acirc;n b&oacute;ng đ&aacute; 5 người gồm:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p><strong>K&iacute;ch thước s&acirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>Chiều d&agrave;i: 25 - 42 m&eacute;t.</li>\r\n		<li>Chiều rộng: 16 - 25 m&eacute;t.</li>\r\n		<li>S&acirc;n c&oacute; k&iacute;ch thước nhỏ hơn nhiều so với s&acirc;n b&oacute;ng đ&aacute; 11 người, ph&ugrave; hợp với kh&ocirc;ng gian hạn chế.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mặt s&acirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>Thường sử dụng cỏ nh&acirc;n tạo hoặc cỏ tự nhi&ecirc;n được chăm s&oacute;c kỹ lưỡng.</li>\r\n		<li>Bề mặt được thiết kế để đảm bảo độ ma s&aacute;t v&agrave; giảm nguy cơ chấn thương cho người chơi.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Khu vực cầu m&ocirc;n:</strong></p>\r\n\r\n	<ul>\r\n		<li>K&iacute;ch thước khung th&agrave;nh: Rộng 3 m&eacute;t, cao 2 m&eacute;t.</li>\r\n		<li>V&ugrave;ng cấm địa l&agrave; một nửa v&ograve;ng tr&ograve;n với b&aacute;n k&iacute;nh 6 m&eacute;t từ t&acirc;m khung th&agrave;nh.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Quy tắc thi đấu:</strong></p>\r\n\r\n	<ul>\r\n		<li>Thời gian thi đấu: 40 ph&uacute;t (chia l&agrave;m 2 hiệp, mỗi hiệp 20 ph&uacute;t).</li>\r\n		<li>Kh&ocirc;ng c&oacute; luật việt vị, tạo sự linh hoạt v&agrave; hấp dẫn trong chiến thuật.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Trang bị:</strong></p>\r\n\r\n	<ul>\r\n		<li>B&oacute;ng thi đấu c&oacute; k&iacute;ch thước nhỏ hơn so với b&oacute;ng s&acirc;n 11 người (size 4).</li>\r\n		<li>&Aacute;o tập, gi&agrave;y đinh chuy&ecirc;n dụng cho cỏ nh&acirc;n tạo hoặc cỏ tự nhi&ecirc;n.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Mục đ&iacute;ch:</strong></p>\r\n\r\n	<ul>\r\n		<li>Th&iacute;ch hợp cho c&aacute;c trận đấu giao lưu, giải tr&iacute; hoặc tập luyện kỹ năng.</li>\r\n		<li>Ph&ugrave; hợp với kh&ocirc;ng gian tại c&aacute;c khu d&acirc;n cư, trường học, hoặc trung t&acirc;m thể thao.</li>\r\n	</ul>\r\n	</li>\r\n	<li>\r\n	<p><strong>Đ&egrave;n chiếu s&aacute;ng (nếu c&oacute;):</strong></p>\r\n\r\n	<ul>\r\n		<li>C&aacute;c s&acirc;n thường được lắp đặt hệ thống chiếu s&aacute;ng để phục vụ người chơi v&agrave;o buổi tối.</li>\r\n	</ul>\r\n	</li>\r\n</ol>\r\n\r\n<p>S&acirc;n b&oacute;ng đ&aacute; 5 người l&agrave; lựa chọn phổ biến nhờ sự tiện lợi, dễ tiếp cận v&agrave; ph&ugrave; hợp với nhiều lứa tuổi.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733915664803.jpg', 700000, 5, 5, 'san-bong-moi', 1, '272/12 đường 26/3 phường Bình Hưng Hoà Quận Bình Tân thành phố Hồ Chí Minh, Việt Nam', 1, '2024-11-29 05:40:34', '2024-12-11 11:14:24'),
(11, 'Sân Bóng Góc 2', '<p>S&acirc;n b&oacute;ng đ&aacute; 7 người rộng 50-75m, d&agrave;i 30-50m, cỏ nh&acirc;n tạo cao cấp, c&oacute; vạch kẻ chuẩn x&aacute;c. Hệ thống chiếu s&aacute;ng đạt chuẩn, ph&ugrave; hợp thi đấu v&agrave; luyện tập.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733372094782.jpg', 2000000, 7, 5, 'san-bong-goc-2', 1, 'Đường Ngô Gia Tự, Tân Lập, Thành phố Nha Trang, Khánh Hòa', 1, '2024-11-29 17:37:50', '2024-12-05 04:14:54'),
(12, 'Sân Bóng Góc 3', '<p>S&acirc;n b&oacute;ng đ&aacute; 5 người k&iacute;ch thước 25-42m x 16-25m, mặt cỏ nh&acirc;n tạo chất lượng cao, đ&egrave;n LED s&aacute;ng r&otilde;. Ph&ugrave; hợp tổ chức trận đấu giao lưu, luyện tập nh&oacute;m nhỏ.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733371980862.jpg', 650000, 5, 5, 'san-bong-goc-3', 1, '24 Đường số 13, Phường Bình Hưng Hòa, Quận Bình Tân, TP Hồ Chí Minh', 1, '2024-11-29 17:44:34', '2024-12-05 04:13:10'),
(14, 'Sân Bóng Góc 4', '<p>S&acirc;n b&oacute;ng đ&aacute; 11 người rộng 100-110m, d&agrave;i 64-75m, chuẩn FIFA. Mặt cỏ nh&acirc;n tạo cao cấp, hệ thống đ&egrave;n chiếu s&aacute;ng hiện đại, ph&ugrave; hợp thi đấu chuy&ecirc;n nghiệp.</p>\r\n', 'http://127.0.0.1:3001/uploads/1733371906556.jpg', 5000000, 11, 5, 'san-bong-goc-4', 1, '1 P. Tôn Thất Tùng, Kim Liên, Quận Đống Đa, Thành phố Hà Nội', 1, '2024-11-29 17:53:28', '2024-12-11 11:21:03'),
(15, 'Huỳnh Chí Tín', '<p>S&acirc;n b&oacute;ng...</p>\r\n\r\n<p>Chi tiết s&acirc;n</p>\r\n', 'http://127.0.0.1:3001/uploads/1733258708403.jpg', 50000, 5, 5, 'huynh-chi-tin', 6, '272/12 đường 26/3 phường Bình Hưng Hoà Quận Bình Tân thành phố Hồ Chí Minh, Việt Nam', 0, '2024-12-03 20:45:08', '2024-12-10 19:23:40'),
(16, 'Huỳnh Chí Tín 2', '<p>Chi tiết s&acirc;n...</p>\r\n', 'http://127.0.0.1:3001/uploads/1733330990705.jpg', 100000, 5, 5, 'huynh-chi-tin-2', NULL, '272/12 đường 26/3 phường Bình Hưng Hoà Quận Bình Tân thành phố Hồ Chí Minh, Việt Nam', 1, '2024-12-04 16:49:50', '2024-12-10 19:12:16'),
(18, 'Sân bóng đá Công Nghiệp', '<p>S&acirc;n b&oacute;ng d&agrave;nh cho những trận cầu lớn&nbsp;</p>\r\n', 'http://127.0.0.1:3001/uploads/1733889989606.jpeg', 10000000, 7, 5, 'san-bong-da-cong-nghiep', 10, '12 Nguyễn Văn Bảo, Phường 12 Quận Gò Vấp, Hồ Chí Minh', 0, '2024-12-11 04:06:29', '2024-12-11 11:21:13'),
(19, 'Sân bóng Thanh Niên', '<ul>\r\n	<li><strong>K&iacute;ch thước:</strong> D&agrave;i 50-75m, rộng 30-55m.</li>\r\n	<li><strong>Mặt s&acirc;n:</strong> Cỏ tự nhi&ecirc;n hoặc cỏ nh&acirc;n tạo, đảm bảo độ bền v&agrave; an to&agrave;n khi chơi.</li>\r\n	<li><strong>Khung th&agrave;nh:</strong> Rộng 3,6m, cao 2,1m.</li>\r\n	<li><strong>Khu vực cấm địa:</strong> H&igrave;nh chữ nhật, d&agrave;i 10m, rộng 8m t&iacute;nh từ khung th&agrave;nh.</li>\r\n	<li><strong>Thời gian thi đấu:</strong> 50 ph&uacute;t (2 hiệp, mỗi hiệp 25 ph&uacute;t).</li>\r\n</ul>\r\n', 'http://127.0.0.1:3001/uploads/1733918188376.jpg', 100000, 5, 5, 'san-bong-thanh-nien', NULL, 'Hẻm 748/114, đường Thống Nhất, Phường 15, Gò Vấp, TP, Hồ Chí Minh', 1, '2024-12-11 11:56:28', '2024-12-11 11:56:28');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rule`
--

CREATE TABLE `rule` (
  `Id` int(11) NOT NULL,
  `PitchId` int(11) NOT NULL,
  `Rules` text DEFAULT NULL,
  `createdAt` datetime NOT NULL DEFAULT current_timestamp(),
  `updatedAt` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `rule`
--

INSERT INTO `rule` (`Id`, `PitchId`, `Rules`, `createdAt`, `updatedAt`) VALUES
(33, 6, 'aaaa', '2023-12-10 16:34:52', '2023-12-10 16:34:52'),
(34, 6, 'baaabcdes', '2023-12-10 16:34:52', '2023-12-10 16:34:52'),
(35, 6, 'cabascdw', '2023-12-10 16:34:52', '2023-12-10 16:34:52'),
(36, 6, 'd', '2023-12-10 16:34:52', '2023-12-10 16:34:52'),
(37, 6, 'ggggg', '2023-12-10 16:34:52', '2023-12-10 16:34:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `staff`
--

CREATE TABLE `staff` (
  `Id` int(11) NOT NULL,
  `FullName` varchar(255) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `CustomerId` int(11) NOT NULL,
  `createdAt` timestamp NOT NULL DEFAULT current_timestamp(),
  `updatedAt` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `staff`
--

INSERT INTO `staff` (`Id`, `FullName`, `Username`, `Password`, `CustomerId`, `createdAt`, `updatedAt`) VALUES
(2, 'Nguyễn Văn Hưng', 'nguyenvanh', '6339a24a8240eab211290f42051c0867', 1, '2024-12-03 19:38:20', '2024-12-03 20:10:40'),
(3, 'nhanvien1', 'nhanvien1', 'fcf321d09609565b7a1ce6e70f1f5056', 1, '2024-12-03 20:41:39', '2024-12-03 20:41:39'),
(5, 'Dũng lò doi', 'dungqn@gmail.com', '8d0f2422de872e5b007d0f875da21241', 8, '2024-12-06 16:07:57', '2024-12-06 16:07:57'),
(6, 'nhan vien 222', 'nhanvien2', 'fcf321d09609565b7a1ce6e70f1f5056', 10, '2024-12-11 04:11:33', '2024-12-11 04:12:17');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Chỉ mục cho bảng `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Id`);

--
-- Chỉ mục cho bảng `facility`
--
ALTER TABLE `facility`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`PitchId`);

--
-- Chỉ mục cho bảng `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`PitchId`);

--
-- Chỉ mục cho bảng `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CategoryId` (`CategoryId`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`PitchId`,`CustomerId`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Chỉ mục cho bảng `pitchs`
--
ALTER TABLE `pitchs`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `CategoryId` (`CategoryId`),
  ADD KEY `CustomerId` (`CustomerId`);

--
-- Chỉ mục cho bảng `rule`
--
ALTER TABLE `rule`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `RoomId` (`PitchId`);

--
-- Chỉ mục cho bảng `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `admin`
--
ALTER TABLE `admin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `category`
--
ALTER TABLE `category`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `contact`
--
ALTER TABLE `contact`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `customer`
--
ALTER TABLE `customer`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `facility`
--
ALTER TABLE `facility`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `image`
--
ALTER TABLE `image`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT cho bảng `news`
--
ALTER TABLE `news`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT cho bảng `pitchs`
--
ALTER TABLE `pitchs`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `rule`
--
ALTER TABLE `rule`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT cho bảng `staff`
--
ALTER TABLE `staff`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `contact`
--
ALTER TABLE `contact`
  ADD CONSTRAINT `contact_ibfk_1` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `facility`
--
ALTER TABLE `facility`
  ADD CONSTRAINT `facility_ibfk_1` FOREIGN KEY (`PitchId`) REFERENCES `pitchs` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `image_ibfk_1` FOREIGN KEY (`PitchId`) REFERENCES `pitchs` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`PitchId`) REFERENCES `pitchs` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `orders_ibfk_2` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Các ràng buộc cho bảng `pitchs`
--
ALTER TABLE `pitchs`
  ADD CONSTRAINT `pitchs_ibfk_1` FOREIGN KEY (`CategoryId`) REFERENCES `category` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `pitchs_ibfk_2` FOREIGN KEY (`CustomerId`) REFERENCES `customer` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Các ràng buộc cho bảng `rule`
--
ALTER TABLE `rule`
  ADD CONSTRAINT `rule_ibfk_1` FOREIGN KEY (`PitchId`) REFERENCES `pitchs` (`Id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
