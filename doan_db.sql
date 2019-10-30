-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
<<<<<<< HEAD
-- Máy chủ: 127.0.0.1:3306
-- Thời gian đã tạo: Th10 30, 2019 lúc 12:47 PM
-- Phiên bản máy phục vụ: 5.7.26
-- Phiên bản PHP: 7.2.18
=======
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 27, 2019 at 04:06 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
<<<<<<< HEAD
-- Cơ sở dữ liệu: `doan_db`
=======
-- Database: `doan_db`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `cau_hinh_app`
=======
-- Table structure for table `cau_hinh_app`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `cau_hinh_app`;
CREATE TABLE IF NOT EXISTS `cau_hinh_app` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cau_hoi_sai` int(11) NOT NULL,
  `thoi_gian_tra_loi` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `cau_hinh_app`
=======
-- Dumping data for table `cau_hinh_app`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `cau_hinh_app` (`id`, `cau_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`) VALUES
(1, 2, 10, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `cau_hinh_diem_cau_hoi`
=======
-- Table structure for table `cau_hinh_diem_cau_hoi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `cau_hinh_diem_cau_hoi`;
CREATE TABLE IF NOT EXISTS `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `cau_hinh_diem_cau_hoi`
=======
-- Dumping data for table `cau_hinh_diem_cau_hoi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 90, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `cau_hinh_tro_giup`
=======
-- Table structure for table `cau_hinh_tro_giup`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `cau_hinh_tro_giup`;
CREATE TABLE IF NOT EXISTS `cau_hinh_tro_giup` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `loai_tro_giup` int(11) NOT NULL,
  `thu_tu` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `cau_hinh_tro_giup`
=======
-- Dumping data for table `cau_hinh_tro_giup`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `cau_hoi`
=======
-- Table structure for table `cau_hoi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `cau_hoi`;
CREATE TABLE IF NOT EXISTS `cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `noi_dung` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `linh_vuc_id` int(11) NOT NULL,
  `phuong_an_a` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_b` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_c` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phuong_an_d` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `dap_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cau_hoi_linh_vuc_id_foreign` (`linh_vuc_id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Tam giác có một góc 40 độ và một góc 50 độ là tam giác gì?', 1, 'Tam giác cân', 'Tam giác đều', 'Tam giác vuông', 'Tam giác thường', 'Tam giác vuông', '2019-10-28 07:13:03', '2019-10-28 07:13:03', NULL),
(2, 'Một byte có bao nhiêu bit ?', 1, '2', '3', '5', '8', '8', '2019-10-27 20:28:00', '2019-10-28 06:31:46', NULL),
(4, 'Tìm quy luật của các số sau: 8, 20, 44, 92 và cho biết con số tiếp theo là bao nhiêu?', 1, '184', '188', '192', '200', '188', '2019-10-28 07:16:12', '2019-10-28 07:16:12', NULL);
=======
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Loài nào là loài thuộc họ người', 1, 'Khỉ', 'Chó', 'Mèo', 'Vịt', 'Khỉ', NULL, NULL, NULL);
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `chi_tiet_luot_choi`
=======
-- Table structure for table `chi_tiet_luot_choi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `chi_tiet_luot_choi`;
CREATE TABLE IF NOT EXISTS `chi_tiet_luot_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `luot_choi_id` int(11) NOT NULL,
  `cau_hoi_id` int(11) NOT NULL,
  `phuong_an` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `chi_tiet_luot_choi`
=======
-- Dumping data for table `chi_tiet_luot_choi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 1000, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `goi_credit`
=======
-- Table structure for table `goi_credit`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `goi_credit`;
CREATE TABLE IF NOT EXISTS `goi_credit` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_goi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `goi_credit`
=======
-- Dumping data for table `goi_credit`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gói A', 100, 50000, NULL, NULL, NULL),
(2, 'Gói B', 150, 70000, NULL, NULL, NULL),
(3, 'Gói C', 200, 90000, NULL, NULL, NULL),
(4, 'Gói D', 250, 110000, NULL, NULL, NULL),
(5, 'Gói E', 300, 130000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `lich_su_mua_credit`
=======
-- Table structure for table `lich_su_mua_credit`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `lich_su_mua_credit`;
CREATE TABLE IF NOT EXISTS `lich_su_mua_credit` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoi_choi_id` int(11) NOT NULL,
  `goi_credit_id` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `so_tien` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `lich_su_mua_credit`
=======
-- Dumping data for table `lich_su_mua_credit`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 10000, NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `linh_vuc`
=======
-- Table structure for table `linh_vuc`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `linh_vuc`;
CREATE TABLE IF NOT EXISTS `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `linh_vuc`
=======
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linh_vuc`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Toán', NULL, NULL, '2019-10-22 23:41:43'),
<<<<<<< HEAD
(2, 'Vật Lý', NULL, NULL, '2019-10-26 22:26:25'),
(3, 'Hóa Học', NULL, NULL, '2019-10-26 22:26:49'),
(4, 'Ngoại Ngữ', NULL, NULL, '2019-10-26 22:27:03'),
(5, 'Sinh Học', NULL, '2019-10-11 00:54:28', '2019-10-26 22:26:37'),
(7, 'Địa Lý', NULL, '2019-10-11 01:13:25', '2019-10-26 22:26:12'),
(9, 'Công Nghệ', NULL, '2019-10-12 23:52:30', '2019-10-12 23:52:30');
=======
(2, 'Lý', NULL, NULL, NULL),
(3, 'Hóa', NULL, NULL, NULL),
(4, 'Anh', NULL, NULL, NULL),
(5, 'Sinh', NULL, '2019-10-11 00:54:28', '2019-10-11 00:54:28'),
(8, 'Sử', NULL, '2019-10-11 01:20:27', '2019-10-11 01:20:27'),
(7, 'Địa', NULL, '2019-10-11 01:13:25', '2019-10-11 01:13:25'),
(9, 'Công Nghệ', NULL, '2019-10-12 23:52:30', '2019-10-12 23:52:30'),
(10, 'Giáo dục công dân', NULL, '2019-10-12 23:53:22', '2019-10-12 23:53:22'),
(17, 'Xàm', NULL, '2019-10-23 00:24:31', '2019-10-23 00:24:31');
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `luot_choi`
=======
-- Table structure for table `luot_choi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `luot_choi`;
CREATE TABLE IF NOT EXISTS `luot_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nguoi_choi_id` int(11) NOT NULL,
  `so_cau` int(11) NOT NULL,
  `diem` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ngay_gio` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `luot_choi`
=======
-- Dumping data for table `luot_choi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '100', '11/12/2017', NULL, NULL);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `migrations`
=======
-- Table structure for table `migrations`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
<<<<<<< HEAD
-- Đang đổ dữ liệu cho bảng `migrations`
=======
-- Dumping data for table `migrations`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(12, '2019_10_05_012346_create_table_linh-vuc', 1),
(13, '2019_10_05_045354_create_table_nguoi_choi', 1),
(14, '2019_10_05_051038_create_table_lich_su_mua_credit', 1),
(15, '2019_10_05_052219_create_table_goi_credit', 1),
(16, '2019_10_05_052541_create_table_cau_hoi', 1),
(17, '2019_10_05_054054_create_table_chi_tiet_luot_choi', 1),
(18, '2019_10_05_055555_create_table_luot_choi', 1),
(19, '2019_10_05_055909_create_table_cau_hinh_diem_cau_hoi', 1),
(20, '2019_10_05_060154_create_table_cau_hinh_app', 1),
(21, '2019_10_05_060446_create_table_quan_tri_vien', 1),
(22, '2019_10_05_061115_ceate_table_cau_hinh_tro_giup', 1),
(23, '2019_10_06_234123_them_linh_vuc_controller', 1),
(24, '2019_10_09_060032_create_table_them_khoa_ngoai', 2);

-- --------------------------------------------------------

--
<<<<<<< HEAD
-- Cấu trúc bảng cho bảng `nguoi_choi`
=======
-- Table structure for table `nguoi_choi`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `nguoi_choi`;
CREATE TABLE IF NOT EXISTS `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

<<<<<<< HEAD
-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri_vien`
=======
--
-- Dumping data for table `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'TrungNB', 'trung123', 'khactrung01203375867@gmail.com', '', 10000, 10, NULL, NULL, NULL),
(2, 'ThinhBL', 'thinh123', 'thinhzjzai@gmail.com', '', 8000, 2, NULL, NULL, NULL),
(3, 'TyBT', 'ty123', 'truongthy@gmail.com', '', 9000, 3, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri_vien`
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
--

DROP TABLE IF EXISTS `quan_tri_vien`;
CREATE TABLE IF NOT EXISTS `quan_tri_vien` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ho_ten` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
<<<<<<< HEAD
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'TrungPham', '$2y$10$HGqO2Jqkt5c3kEQuCCV/Xuugw4ysuVcp5c6T/FuMcWKyjAv8oO.yu', 'Phạm Khắc Trung', NULL, NULL, NULL),
(5, 'TyTruong', '$2y$10$cHu89WB69bn8kQLxfN8oG.SpobxeITiKsGV7dj6Htl3Dqae3lo3xi', 'Trương Văn Ty', NULL, NULL, NULL),
(6, 'ThinhTran', '$2y$10$lYIfjYdrCb8ER1j3Dj4gxuCb7pRu4kt2.HJByUE5ThrWle/fEkKj.', 'Trần Văn Thịnh', NULL, NULL, NULL);
=======
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'TrungPham', '123', 'Phạm Khắc Trung', NULL, NULL, NULL),
(2, 'TyTruong', '123', 'Trương Văn Ty', NULL, NULL, NULL),
(3, 'ThinhTran', '123', 'Trần Văn Thịnh', NULL, NULL, NULL);
>>>>>>> 62d7f1d3c59a0ee4321c868bc644cd293e821a4b
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
