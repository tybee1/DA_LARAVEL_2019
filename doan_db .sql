-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 05, 2019 at 06:00 AM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `doan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_app`
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
-- Dumping data for table `cau_hinh_app`
--

INSERT INTO `cau_hinh_app` (`id`, `cau_hoi_sai`, `thoi_gian_tra_loi`, `created_at`, `updated_at`) VALUES
(1, 5, 30, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_diem_cau_hoi`
--

DROP TABLE IF EXISTS `cau_hinh_diem_cau_hoi`;
CREATE TABLE IF NOT EXISTS `cau_hinh_diem_cau_hoi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `thu_tu` int(11) NOT NULL,
  `diem` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hinh_diem_cau_hoi`
--

INSERT INTO `cau_hinh_diem_cau_hoi` (`id`, `thu_tu`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 90, NULL, NULL),
(2, 2, 150, NULL, NULL),
(3, 3, 200, NULL, NULL),
(4, 4, 250, NULL, NULL),
(5, 5, 400, NULL, NULL),
(6, 6, 450, NULL, NULL),
(7, 7, 500, NULL, NULL),
(8, 8, 500, NULL, NULL),
(9, 9, 200, NULL, NULL),
(10, 10, 300, NULL, NULL),
(11, 11, 200, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hinh_tro_giup`
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
-- Dumping data for table `cau_hinh_tro_giup`
--

INSERT INTO `cau_hinh_tro_giup` (`id`, `loai_tro_giup`, `thu_tu`, `credit`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cau_hoi`
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
) ENGINE=MyISAM AUTO_INCREMENT=76 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cau_hoi`
--

INSERT INTO `cau_hoi` (`id`, `noi_dung`, `linh_vuc_id`, `phuong_an_a`, `phuong_an_b`, `phuong_an_c`, `phuong_an_d`, `dap_an`, `created_at`, `updated_at`, `deleted_at`) VALUES
(3, 'Tam giác có một góc 40 độ và một góc 50 độ là tam giác gì?', 1, 'Tam giác cân', 'Tam giác đều', 'Tam giác vuông', 'Tam giác thường', 'C', '2019-10-28 07:13:03', '2019-10-28 07:13:03', NULL),
(2, 'Một byte có bao nhiêu bit ?', 1, '2', '3', '5', '8', 'D', '2019-10-27 20:28:00', '2019-10-28 06:31:46', NULL),
(4, 'Tìm quy luật của các số sau: 8, 20, 44, 92 và cho biết con số tiếp theo là bao nhiêu?', 1, '184', '188', '192', '200', 'A', '2019-10-28 07:16:12', '2019-10-28 07:16:12', NULL),
(5, 'Loài nào là loài thuộc họ người', 1, 'Khỉ', 'Chó', 'Mèo', 'Vịt', 'A', NULL, NULL, NULL),
(6, ' Giải Grand Slam đầu tiên trong năm là giải nào?', 1, ' Austrlia mở rộng', ' Wimbledon', ' Roland Garos', ' Mỹ mở rộng', 'C', NULL, NULL, NULL),
(7, ' Cùng với Hà Nội T&T (vô địch V-League 2010), CLB nào của Việt Nam tham dự AFC Cup 2011?', 1, ' Sông Lam Nghệ An', ' SHB Đà Nẵng', ' Hoàng Anh Gia Lai', ' Becamex Bình Dương', 'A', NULL, NULL, NULL),
(8, ' AFC Asian Cup 2011 được tổ chức tại quốc gia nào?', 1, ' Qatar', ' Hàn Quốc', ' Nhật Bản', ' Iraq', 'A', NULL, NULL, NULL),
(9, ' Đội nào lên ngôi vô địch AFC Asian Cup 2011 tổ chức tại Qatar?', 1, ' Nhật Bản', ' Australia', ' Hàn Quốc', ' Uzbekistan', 'A', NULL, NULL, NULL),
(10, ' Việt Nam lần đầu tiên vô địch AFF Cup là vào năm nào?', 1, ' 2004', ' 2006', ' 2008', ' 2010', 'C', NULL, NULL, NULL),
(11, ' CLB nào vô địch FIFA Club World Cup 2010 tổ chức tại Qatar?', 1, ' Inter Milan', ' Real Madrid', ' Bayern Munich', ' Manchester United', 'A', NULL, NULL, NULL),
(12, ' Vận động viên đứng đầu danh sách 100 vận động viên Việt Nam tiêu biểu của năm 2010 là vận động viên Vũ Thị Hương của môn thể thao nào?', 1, ' Điền kinh', ' Cờ vua', ' Karatedo', ' Cầu lông', 'A', NULL, NULL, NULL),
(13, ' Giải đua xe đạp vòng quanh nước Pháp năm 2001 có mấy chặng đua?', 1, ' 16', ' 21', ' 26', ' 31', 'A', NULL, NULL, NULL),
(14, ' Vận động viên nào sau đây giành được huy chương vàng tại ASIAD 16 (tổ chức tại Quảng Châu-Trung Quốc 2010)', 1, ' Lê Bích Phương', ' Trương Thanh Hằng', ' Vũ Thị Hương', 'D. Lê Quang Liêm', 'A', NULL, NULL, NULL),
(15, ' Đội tuyển bóng đá nào xếp thứ ba tại World Cup 2010?', 1, ' Tây Ban Nha', ' Hà Lan', ' Đức', 'D. Uruguay', 'C', NULL, NULL, NULL),
(16, ' Trong môn quần vợt thì một năm có bao nhiêu giải Grand Slam được tổ chức?', 1, ' 3', ' 4', ' 5', ' 6', 'B', NULL, NULL, NULL),
(17, ' Tại thể vận hội Olympic trẻ lần 1-2010 tại Singapore, thể thao Việt Nam giành được 4 huy chương, trong đó vận động viên nào giành được huy chương vàng duy nhất?', 1, ' Thạch Kim Tuấn (cử tạ)', ' Nguyễn Thanh Thảo (Taekwondo)', ' Nguyễn Quốc Cương (Taekwondo)', ' Vũ Thị Trang (cầu lồng)', 'A', NULL, NULL, NULL),
(18, ' Nước nào là nước chủ nhà tại Copa America 2011?', 1, ' Argentina', ' Boliviar', ' Venezuela', 'D. Paraguay', 'A', NULL, NULL, NULL),
(19, ' Đại Ngu là quốc hiệu của triều đại nào?', 2, ' Triều Ngô', ' Triều Hồ', ' Các chúa Nguyễn', 'D. Nhà Tây Sơn', 'B', NULL, NULL, NULL),
(20, ' Các vua Hùng đặt quốc hiệu nước ta là gì?', 2, ' Văn Lang', ' Âu Lạc', ' Vạn Xuân', ' Đại Việt', 'D', NULL, NULL, NULL),
(21, ' An Dương Vương đặt quốc hiệu nước ta là gì?', 2, ' Âu Lạc', ' Vạn Xuân', ' Đại Cồ Việt', ' Đại Việt', 'A', NULL, NULL, NULL),
(22, ' Năm 1010, Lý Thái Tổ đã cho xây dựng điện nào ở trung tâm hoàng thành Thăng Long?', 2, ' Điện Kính Thiên', ' Điện Càn Nguyên', ' Điện Càn Chánh', ' Điện Càn Thành', 'B', NULL, NULL, NULL),
(23, ' Thành cổ Sơn Tây do vị vua nào xây dựng nên vào năm 1822?', 2, ' Gia Long', ' Minh Mạng', ' Thiệu Trị', ' Tự Đức', 'B', NULL, NULL, NULL),
(24, ' Vạn Thắng Vương là ai ? ', 2, ' Đinh Bộ Lĩnh', ' Lê Hoàn', ' Lê Lợi', ' Nguyễn Huệ', 'A', NULL, NULL, NULL),
(25, ' Sau khi chiến thắng quân Nam Hán vào năm 938, Ngô Quyền đã đóng đô ở đâu? ', 2, ' Hoa Lư ', ' Đại La ', ' Cổ Loa ', ' Phú Xuân', 'C', NULL, NULL, NULL),
(26, ' Từ “nhị thánh” trong câu “ Đây là nơi chiến địa buổi Trùng Hưng nhị thánh bắt Ô Mã” (Bạch Đằng giang phú ) gồm những người nào ?', 2, ' Ngô Quyền và Trần Hưng Đạo', ' Ngô Quyền và Trần Thái Tông', ' Ngô Quyền và Trần Nhân Tông', 'D. Trần Thánh Tông và Trần Nhân Tông', 'A', NULL, NULL, NULL),
(27, ' Hổ Quyền dưới thời nhà Nguyễn là một đấu trường của những cuộc tử chiến giữa hổ và loài động vật nào? ', 2, ' Bò tót ', ' Báo ', ' Voi ', 'D. Chó', 'C', NULL, NULL, NULL),
(28, ' Vị tướng nào dưới thời Hai Bà Trưng là ông tổ của lò vật Mai Động?', 2, ' Ông Đông Bảng', ' Ông Đồng', ' Tam Trinh', ' Đào Kỳ', 'C', NULL, NULL, NULL),
(29, 'Tập “Dư địa chí” được Nguyễn Trãi soạn dưới triều vua nào?', 2, ' Lê Thái Tổ   ', ' Lê Thái Tông', ' Lê Thánh Tông   ', 'D. Lê Hiến Tông', 'B', NULL, NULL, NULL),
(30, ' Ai là nhạc sĩ Việt Nam đầu tiên viết opera với tác phẩm “Cô sao” và sau đó là “Người tạc tượng”?', 3, ' Đỗ Nhuận', ' Hoàng Vân', ' Trần Hoàn', 'D. Trọng Đài', 'A', NULL, NULL, NULL),
(31, ' The ASEAN WAY-ca khúc chính thức của ASEAN là sáng tác của nhạc sĩ người nước nào?', 3, ' Thái Lan', ' Việt Nam', ' Singapore', 'D. Malaysia', 'D', NULL, NULL, NULL),
(32, ' “Mùa con ong đi lấy mật, mùa con voi xuống sông hút nước, mùa em đi phát rẫy làm nương, anh vào rừng đặt bẫy cài chông” là những câu hát nói về tháng nào?', 3, ' Tháng Giêng', ' Tháng hai', ' Tháng ba', 'D. Tháng tư', 'C', NULL, NULL, NULL),
(33, ' Bộ phim “The Social Network” về mạng xã hội nào đã đạt giải Quả cầu vàng 2011?', 3, ' Facebook', ' Twitter', ' Yahoo Plus', ' Opera', 'A', NULL, NULL, NULL),
(34, ' Lã Thanh Huyền đã tham gia bộ phim nào sau đây?', 3, ' Nhà có nhiều cửa sổ', ' Đẹp từng centimet', ' Blog nàng dâu', ' Ngôi nhà hạnh phúc', 'A', NULL, NULL, NULL),
(35, ' Tác phẩm điện ảnh \"Thập diện mai phục\" là của đạo diễn nào?', 3, ' Lý An', ' Dương Khiết', ' Trương Nghệ Mưu', ' Ngô Vũ Sâm ', 'C', NULL, NULL, NULL),
(36, ' Nam ca sĩ nào đạt giải thưởng Ca sĩ của năm tại Lễ trao giải Làn Sóng Xanh 2010?', 3, ' Đàm Vĩnh Hưng', ' Lam Trường', ' Đan Trường', 'D. Minh Quân', 'A', NULL, NULL, NULL),
(37, ' NSND  .... là giảng viên thanh nhạc đầu tiên của Nhạc viện Hà Nội, là nghệ sĩ hát opera đầu tiên của Việt Nam và là người vào vai chính của vở opera đầu tiên được dàn dựng và công diễn ở Nhà hát Lớn Hà Nội. ', 3, ' Quý Dương', ' Trần Tiến', ' Trung Kiên', 'D. Quang Thọ', 'A', NULL, NULL, NULL),
(38, ' Trong nhạc phẩm \"Hoa sữa\" nhạc sĩ Hồng Đăng còn nhắc tới loại cây nào khác?', 3, ' Bàng', ' Phượng', ' Phi lao', ' Quất', 'B', NULL, NULL, NULL),
(39, ' Ai đã lên ngôi Thần tượng âm nhạc Việt Nam 2010?', 3, ' Trần Lân Nhã', ' Trần Nguyễn Uyên Linh', ' Văn Mai Hương', 'D. Lều Phương Anh', 'B', NULL, NULL, NULL),
(40, ' Ca sĩ nào đạt giải thưởng của Hội đồng nghệ thuật trong cuộc thi “Sao Mai-Điểm hẹn” 2010?', 3, ' Minh Chuyên', ' Mỹ Như', ' Lương Viết Quang', ' Đinh Mạnh Ninh', 'C', NULL, NULL, NULL),
(41, ' Giải thưởng Emmy là giải thưởng cao quý của thể loại giải trí nào?', 3, ' Truyền hình', ' Điện ảnh', ' Âm nhạc', 'D. Thể thao', 'A', NULL, NULL, NULL),
(42, ' Bộ phim “The social Network” đạt giải gì tại lễ trao giải Quả cầu vàng lần thứ 68?', 3, ' Phim điện ảnh tâm lý/chính kịch hay nhất', ' Phim điện ảnh hài/ca nhạc hay nhất', ' Phim truyền hình tâm lý/chính kịch hay nhất', 'D. Phim truyền hình hài/ca nhạc hay nhất', 'A', NULL, NULL, NULL),
(43, ' Bộ phim \"W\"của đạo diễn Oliver Stone viết về ai?', 3, ' Geroge Walker Bush ', ' Winston Churchil', ' William Shakespear', ' Walt Disney', 'A', NULL, NULL, NULL),
(44, ' “Vội vã trở về, vội vã ra đi …” là những dòng trăn trở của nhạc sĩ Phú Quang trong bài hát Hà Nội ngày trở về. Trong ca khúc này, nhạc sĩ Phú Quang đã so sánh nỗi nhớ với dòng sông nào?', 3, ' Sông Cửu Long', ' Sông Lô', ' Sông Hồng', 'D. Sông Mã', 'C', NULL, NULL, NULL),
(45, ' Sông Bến Hải và sông Thạch Hãn nằm ở tỉnh nào?', 4, ' Quảng Bình', ' Quảng Ninh', ' Quảng Trị', 'D. Quảng Ngãi', 'C', NULL, NULL, NULL),
(46, ' Trong các cây cầu sau, cầu nào là cầu xoay?', 4, ' Cầu Thanh Trì', ' Cầu Thị Nại', ' Cầu Sông Hàn', ' Cầu Cần Thơ', 'B', NULL, NULL, NULL),
(47, ' Bùi Hữu Nghĩa, một trong bốn rồng vàng của vùng Đồng Nai xưa (tức là toàn Nam Bộ ngày nay) là tài năng ở lĩnh vực nào?', 4, ' Hoạ', ' Phú', ' Đàn', ' Thi', 'A', NULL, NULL, NULL),
(48, ' Nước nào ở khu vực Đông Nam Á không có địa giới với bất kỳ nước khác?', 4, ' Philippines', ' Malaysia', ' Lào', 'D. Thái Lan', 'A', NULL, NULL, NULL),
(49, ' Thung lũng nổi tiếng ở Mỹ với ngành công nghệ thông tin được đặt tên theo nguyên tố nào?', 4, ' Sắt', ' Silic', ' Asen', 'D. Uran', 'B', NULL, NULL, NULL),
(50, ' Tổ chức thương mại thế giới có trụ sở đặt tại quốc gia nào ?', 4, ' Bỉ', ' Thuỵ Sỹ', ' Hà Lan', 'D. Đức', 'B', NULL, NULL, NULL),
(51, ' Eo biển nào sau đây là nơi phân cách giữa châu Âu và châu Phi?', 4, ' Bosphorus', ' Bering', ' Gibraltar', ' Malacca', 'C', NULL, NULL, NULL),
(52, ' Thành phố nào của Nhật Bản bị tàn phá nặng nề nhất sau thảm hoạ động đất và sóng thần ngày 11/3/2011?', 4, ' Sendai', ' Chiba', ' Kobe', 'D. Hiroshima', 'A', NULL, NULL, NULL),
(53, ' Địa danh nào còn thiếu trong câu ca dao ', 4, ' Phú Yên', ' Khánh Hoà', ' Long An', 'D. Bình Định', 'D', NULL, NULL, NULL),
(54, ' Bối cảnh của câu chuyện tỉnh Romeo và Juliet là thành phố nào của nước Ý?', 4, ' Venice', ' Milan', ' Rome', ' Verona', 'D', NULL, NULL, NULL),
(55, ' Ngân hàng trung ương châu Âu (ECB) có trụ sở đặt tại thành phố nào?', 4, ' Brussel', ' Frankurt', ' Paris', 'D. Geneva', 'B', NULL, NULL, NULL),
(56, '  Địa danh \"Cần Giuộc\" trong bài \"Văn Tế nghĩa Sĩ Cần Giuộc\" hiện nay nằm ở tỉnh nào ? ', 4, ' Long An ', ' Tiền Giang ', ' An Giang ', 'D. Cần Thơ', 'A', NULL, NULL, NULL),
(57, ' Bộ phận đất nổi, nhỏ hơn lục địa, xung quanh có biển và đại dương bao quanh gọi là gì ?', 4, ' Đảo', ' Quần đảo', ' Hải đảo', 'D. Quốc đảo', 'B', NULL, NULL, NULL),
(58, ' Cầu Phú Mỹ-cây cầu đẹp và hiện đại nhất thành phố Hồ Chí Minh có hình dáng của chữ cái nào?', 4, ' T', ' H', ' L', ' M', 'B', NULL, NULL, NULL),
(59, ' Các trung tâm công nghiệp lớn như Tokyo, Kyoto, Yokohama, Nagoia, Osaka nằm trên hòn đảo nào có diện tích rộng nhất, dân số đông nhất và kinh tế phát triển nhất trong quần đảo Nhật Bản?', 4, ' Hokkaido', ' Honsu', ' Shikoku', 'D. Kyusyu', 'B', NULL, NULL, NULL),
(60, ' Quốc gia nào sau đây có chung đường biên giới cả trên đất liên và trên biển với Việt Nam?', 4, ' Thái Lan', ' Lào', ' Trung Quốc', 'D. Indonesia', 'C', NULL, NULL, NULL),
(61, ' Trụ sở của Ban thư ký ASEAN được đặt tại quốc gia nào sau đây?', 4, ' Thái Lan', ' Singapore', ' Malaysia', 'D. Indonesia', 'D', NULL, NULL, NULL),
(62, ' Vịnh nào sau đây không nằm trong CLB các vịnh biển đẹp nhất thế giới (World Bay)?', 4, ' Vịnh Nha Trang (Khánh Hoà)', ' Vịnh Lăng Cô (Thừa Thiên Huế)', ' Vịnh Xuân Đài (Phú Yên)', 'D. Vịnh Hạ Long (Quảng Ninh)', 'A', NULL, NULL, NULL),
(63, ' Một hòn đảo của tỉnh Quảng Ngãi nơi được mệnh danh là \"Vương quốc hành tỏi\". Đó là đảo nào?', 4, ' Đảo Lý Sơn', ' Đảo Cồn Cỏ', ' Đảo Thổ Chu', ' Đảo Phú Quốc', 'A', NULL, NULL, NULL),
(64, ' Châu lục nào tiếp giáp với cả Đại Tây Dương và Ấn Độ Dương?', 4, ' Châu Á', ' Châu Phi', ' Châu Âu', 'D. Châu Mỹ ', 'B', NULL, NULL, NULL),
(65, ' \"Điêu tàn\" là tập thơ đầu tiên của nhà thơ nào?', 5, ' Anh Thơ', ' Thế Lữ', ' Bích Khê', 'D. Chế Lan Viên', 'D', NULL, NULL, NULL),
(66, ' Điền từ còn thiếu trong câu thành ngữ', 5, ' Lính-Tướng', ' Chồng-Vợ', ' Nước-Lửa', 'D. Chó-Mèo', 'C', NULL, NULL, NULL),
(67, ' Truyện “Vợ chồng A Phủ” trong tập truyện Tây Bắc của nhà văn Tô Hoài viết về người dân tộc nào?', 5, ' Vân Kiều', ' Thái', ' H’Mông', 'D. Tày', 'D', NULL, NULL, NULL),
(68, ' Tác phẩm \"Thuỷ hử\" của Thi Nại Am diễn ra vào triều đại nào của Trung Quốc?  ', 5, ' Triều Tống                 ', ' Triều Nguyên                  ', ' Triều Minh                  ', 'D. Triều Thanh', 'A', NULL, NULL, NULL),
(69, ' Truyền kỳ mạn lục, một tác phẩm được đánh giá là \" thiên cổ kỳ bút\", là \"áng văn hay của bậc đại gia\", là sáng tác của ai?', 5, ' Nguyễn Trãi', ' Nguyễn Bỉnh Khiêm', ' Nguyễn Dữ', 'D. Nguyễn Du', 'C', NULL, NULL, NULL),
(70, ' Nhà thơ Chế Lan Viên (Phan Ngọc Hoan', 5, ' Nhật Lệ', ' Thạch Hãn ', ' Thu Bồn', ' Bến Hải', 'C', NULL, NULL, NULL),
(71, ' Nhà văn nào đại diện cho Việt Nam nhận Giải thưởng văn học Đông Nam Á 2010?', 5, ' Nguyễn Nhật Ánh (Cho tôi xin một vé đi tuổi thơ)', ' Cao Duy Sơn (Ngôi nhà xưa bên suối)', ' Nguyễn Thị Ngọc Tư (Cánh đồng bất tận) ', ' Trần Văn Tuấn (Rừng thiêng nước trong)', 'A', NULL, NULL, NULL),
(72, ' Chuyện kể đêm Noel, Dế mèn trong lò sưởi là những tác phẩm của nhà văn nào sau đây?', 5, ' Mark Twain', ' Charles Dicken', ' Adersen', ' Jean de La Fontaine', 'C', NULL, NULL, NULL),
(73, ' Có câu tục ngữ\"...hết bị đòn,...còn mất vợ\"? ', 5, ' Ăn ', ' Uống ', ' Ở ', ' Mặc', 'A', NULL, NULL, NULL),
(74, ' Ngọn núi nào được nhắc tới trong bài thơ \"Quê mẹ\" của Tố Hữu?', 5, ' Thiên Thai', ' Ngự Bình', ' Non Nước', ' Hồng Lĩnh', 'A', NULL, NULL, NULL),
(75, ' Tác phẩm “Dị hương” của nhà văn Sương Nguyệt Minh đạt giải thưởng của Hội nhà văn Việt Nam năm 2010 thuộc thể loại nào?', 5, ' Thơ', ' Tập truyện ngắn', ' Tiểu thuyết', 'D. Văn học dịch', 'B', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `chi_tiet_luot_choi`
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
-- Dumping data for table `chi_tiet_luot_choi`
--

INSERT INTO `chi_tiet_luot_choi` (`id`, `luot_choi_id`, `cau_hoi_id`, `phuong_an`, `diem`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 'A', 1000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `goi_credit`
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
-- Dumping data for table `goi_credit`
--

INSERT INTO `goi_credit` (`id`, `ten_goi`, `credit`, `so_tien`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Gói A', 100, 50000, NULL, NULL, NULL),
(2, 'Gói B', 150, 70000, NULL, NULL, NULL),
(3, 'Gói C', 200, 90000, NULL, NULL, NULL),
(4, 'Gói D', 250, 110000, NULL, NULL, NULL),
(5, 'Gói E', 300, 130000, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lich_su_mua_credit`
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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `lich_su_mua_credit`
--

INSERT INTO `lich_su_mua_credit` (`id`, `nguoi_choi_id`, `goi_credit_id`, `credit`, `so_tien`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 100, 10000, NULL, NULL),
(2, 4, 1, 100, 50000, '2019-11-30 23:03:02', '2019-11-30 23:03:02'),
(3, 4, 2, 150, 70000, '2019-11-30 23:05:45', '2019-11-30 23:05:45');

-- --------------------------------------------------------

--
-- Table structure for table `linh_vuc`
--

DROP TABLE IF EXISTS `linh_vuc`;
CREATE TABLE IF NOT EXISTS `linh_vuc` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_linh_vuc` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `linh_vuc`
--

INSERT INTO `linh_vuc` (`id`, `ten_linh_vuc`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Thể Thao', NULL, NULL, '2019-11-13 05:45:44'),
(2, 'Lịch Sử', NULL, NULL, '2019-10-26 22:26:25'),
(3, 'Âm nhạc - Phim', NULL, NULL, '2019-10-26 22:26:49'),
(4, 'Địa Lý', NULL, NULL, '2019-10-26 22:27:03'),
(5, 'Văn Học', NULL, '2019-10-11 00:54:28', '2019-10-26 22:26:37'),
(7, 'Văn hóa - Sự kiện', '2019-11-13 05:47:49', '2019-10-11 01:13:25', '2019-11-13 05:47:49'),
(8, 'Khoa Học Tự Nhiên', NULL, NULL, NULL),
(6, 'Y Học', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `luot_choi`
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
-- Dumping data for table `luot_choi`
--

INSERT INTO `luot_choi` (`id`, `nguoi_choi_id`, `so_cau`, `diem`, `ngay_gio`, `created_at`, `updated_at`) VALUES
(1, 1, 4, '100', '11/12/2017', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
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
-- Table structure for table `nguoi_choi`
--

DROP TABLE IF EXISTS `nguoi_choi`;
CREATE TABLE IF NOT EXISTS `nguoi_choi` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `ten_dang_nhap` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mat_khau` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hinh_dai_dien` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `diem_cao_nhat` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nguoi_choi`
--

INSERT INTO `nguoi_choi` (`id`, `ten_dang_nhap`, `mat_khau`, `email`, `hinh_dai_dien`, `diem_cao_nhat`, `credit`, `deleted_at`, `created_at`, `updated_at`) VALUES
(4, 'truongvanty', '$2y$10$1580SONTEg3LqkAcwl8Sy.fy/io/X7tgtMU5S2Xe.omjzec2rteRu', 'truongthy1627@gmail.com', 'truongvanty', 0, 450, NULL, '2019-11-02 20:09:40', '2019-11-30 23:05:45'),
(5, 'tylagi123', '$2y$10$hclHGXW/fO/KP0enqdo8hOKVHFDEquiDJvgRiq03DRU.CQZECKjRa', 'tyty@gmail.com', 'null.png', 0, 0, NULL, '2019-11-02 21:32:41', '2019-11-02 21:32:41'),
(6, '123456', '$2y$10$CIr0a1up95jgzOjculS/E.sJnppyeG7M5tn8TZrUUZ6UCvNfRkDVC', 'nhabe@gmail.com', 'null.png', 0, 0, NULL, '2019-11-06 07:23:54', '2019-11-06 07:23:54'),
(7, '12313213', '$2y$10$7brmu5i/.9xbLGY7pmArhOeBgCswjC8BFROMJOTdzKzNnwYXq.5jy', 'wrwer', 'null.png', 0, 0, NULL, '2019-11-11 23:20:55', '2019-11-11 23:20:55'),
(8, 'tylagi', '$2y$10$s0/AbrwhNJ0hdAl4T.ka0.lucuUmWcCNv09hFPy///zxqS8dvTNXy', 'tyty@gmail.com', 'null.png', 0, 0, NULL, '2019-11-12 23:52:45', '2019-11-12 23:52:45');

-- --------------------------------------------------------

--
-- Table structure for table `quan_tri_vien`
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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `quan_tri_vien`
--

INSERT INTO `quan_tri_vien` (`id`, `ten_dang_nhap`, `mat_khau`, `ho_ten`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'TrungPham', '$2y$10$HGqO2Jqkt5c3kEQuCCV/Xuugw4ysuVcp5c6T/FuMcWKyjAv8oO.yu', 'Phạm Khắc Trung', NULL, NULL, NULL),
(5, 'TyTruong', '$2y$10$cHu89WB69bn8kQLxfN8oG.SpobxeITiKsGV7dj6Htl3Dqae3lo3xi', 'Trương Văn Ty', NULL, NULL, NULL),
(6, 'ThinhTran', '$2y$10$lYIfjYdrCb8ER1j3Dj4gxuCb7pRu4kt2.HJByUE5ThrWle/fEkKj.', 'Trần Văn Thịnh', NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
