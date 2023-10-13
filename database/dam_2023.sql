-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 13, 2023 lúc 02:42 PM
-- Phiên bản máy phục vụ: 10.4.28-MariaDB
-- Phiên bản PHP: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `dam_2023`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bill`
--

CREATE TABLE `bill` (
  `id` int(9) NOT NULL,
  `madh` varchar(50) NOT NULL,
  `iduser` int(6) NOT NULL,
  `nguoidat_ten` varchar(50) NOT NULL,
  `nguoidat_email` varchar(50) NOT NULL,
  `nguoidat_tel` varchar(20) DEFAULT NULL,
  `nguoidat_diachi` varchar(100) NOT NULL,
  `nguoinhan_ten` varchar(50) DEFAULT NULL,
  `nguoinhan_diachi` varchar(100) DEFAULT NULL,
  `nguoinhan_tel` varchar(20) DEFAULT NULL,
  `total` int(9) NOT NULL,
  `ship` int(6) NOT NULL DEFAULT 0,
  `voucher` int(6) NOT NULL DEFAULT 0,
  `tongthanhtoan` int(9) NOT NULL,
  `pttt` tinyint(1) NOT NULL COMMENT '0: COD; 1: ck; 2: ví điện tử'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart`
--

CREATE TABLE `cart` (
  `id` int(6) NOT NULL,
  `idpro` int(6) NOT NULL,
  `price` int(6) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `soluong` int(3) NOT NULL,
  `thanhtien` int(6) NOT NULL,
  `idbill` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `cart`
--

INSERT INTO `cart` (`id`, `idpro`, `price`, `name`, `img`, `soluong`, `thanhtien`, `idbill`) VALUES
(1, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 24),
(2, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 25),
(3, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 25),
(4, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 26),
(5, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 26),
(6, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 27),
(7, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 28),
(8, 7, 16000, 'Cà phê sữa đá', 'sp6.webp', 1, 16000, 29),
(9, 8, 25000, 'Lâu lắc', 'sp7.webp', 1, 25000, 29),
(10, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 30),
(11, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 31),
(12, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 32),
(13, 4, 12000, 'Cà phê đen', 'sp4.webp', 1, 12000, 33),
(14, 8, 25000, 'Lâu lắc', 'sp7.webp', 1, 25000, 34);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `ten` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `noidung` text NOT NULL,
  `ngaycomment` datetime NOT NULL,
  `idpro` int(11) NOT NULL,
  `iduser` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(4) NOT NULL,
  `name` varchar(50) NOT NULL,
  `home` tinyint(1) NOT NULL DEFAULT 0,
  `stt` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `name`, `home`, `stt`) VALUES
(1, 'Trà', 1, 1),
(2, 'Phụ kiện, Quà tặng', 0, 0),
(3, 'Cà phê', 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(4) NOT NULL,
  `name` varchar(100) NOT NULL,
  `img` varchar(200) NOT NULL,
  `price` int(6) NOT NULL,
  `view` int(9) NOT NULL DEFAULT 0,
  `bestseller` tinyint(1) NOT NULL DEFAULT 0,
  `iddm` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`id`, `name`, `img`, `price`, `view`, `bestseller`, `iddm`) VALUES
(1, 'Bánh mì ', 'sp1.webp', 12000, 0, 1, 2),
(2, 'Bạc xỉu đá', 'sp2.webp', 180000, 235, 1, 3),
(3, 'Bánh Ngọt', 'sp3.webp', 10000, 33, 0, 2),
(4, 'Cà phê đen', 'sp4.webp', 12000, 44, 1, 3),
(5, 'Cà phê đen đá', 'sp5.jpg', 15000, 0, 0, 1),
(7, 'Cà phê sữa đá', 'sp6.webp', 16000, 100, 0, 3),
(8, 'Lâu lắc', 'sp7.webp', 25000, 0, 0, 3),
(9, 'Cà Phê sữa pha máy', 'sp8.webp', 25000, 0, 0, 3);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `user`
--

CREATE TABLE `user` (
  `id` int(6) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `ten` varchar(50) DEFAULT NULL,
  `diachi` varchar(100) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `dienthoai` varchar(20) DEFAULT NULL,
  `role` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `ten`, `diachi`, `email`, `dienthoai`, `role`) VALUES
(1, 'Mèo', '123', 'Lê Quang Văn Quyến', 'Thôn Sen Thượng 1, Sen Thủy, Lệ Thủy, Quảng Bình', 'lequangvanquyen@gmail.com', '0813840506', 1),
(41, 'guest-592', '1234', '', '', '', '', 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bill`
--
ALTER TABLE `bill`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_bill_user` (`iduser`);

--
-- Chỉ mục cho bảng `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_cart_bill` (`idbill`),
  ADD KEY `idpro` (`idpro`);

--
-- Chỉ mục cho bảng `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idpro` (`idpro`),
  ADD KEY `iduser` (`iduser`);

--
-- Chỉ mục cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_sanpham_dm` (`iddm`);

--
-- Chỉ mục cho bảng `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bill`
--
ALTER TABLE `bill`
  MODIFY `id` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT cho bảng `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT cho bảng `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `danhmuc`
--
ALTER TABLE `danhmuc`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `user`
--
ALTER TABLE `user`
  MODIFY `id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `bill`
--
ALTER TABLE `bill`
  ADD CONSTRAINT `fk_bill_user` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`);

--
-- Các ràng buộc cho bảng `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`),
  ADD CONSTRAINT `fk_cart_bill` FOREIGN KEY (`idbill`) REFERENCES `bill` (`id`);

--
-- Các ràng buộc cho bảng `comment`
--
ALTER TABLE `comment`
  ADD CONSTRAINT `comment_ibfk_1` FOREIGN KEY (`idpro`) REFERENCES `sanpham` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `comment_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `fk_dm_sp` FOREIGN KEY (`iddm`) REFERENCES `danhmuc` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
