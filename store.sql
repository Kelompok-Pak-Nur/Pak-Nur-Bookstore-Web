-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 06:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `store`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `book_id` int(11) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `book_name` varchar(255) NOT NULL,
  `book_price` int(11) NOT NULL,
  `book_stock` int(11) NOT NULL,
  `book_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`book_id`, `supplier_id`, `category_id`, `book_name`, `book_price`, `book_stock`, `book_photo`) VALUES
(21, 1, 5, 'Adab Mulia Terhadap Guru', 34500, 2, '0.jpg'),
(22, 2, 5, 'Fiqhul Haidh (Kajian Tentang Fiqih)', 40000, 2, '1.jpg'),
(23, 3, 5, 'Karakter Diri di Balik Juz Al Qur\'an', 40000, 2, '2.jpg'),
(24, 4, 5, 'Karakter Diri di Balik Juz Al Qur\'an', 50000, 2, '3.jpg'),
(25, 1, 5, 'Kisah Nabi Muhammad SAW', 34500, 2, '4.jpg'),
(26, 2, 5, 'Kisah-Kisah Rosulullah', 35000, 2, '5.jpg'),
(27, 3, 5, 'Kisah-Kisah dalam Al-Qur\'an 1 (Ulul Azmi)', 32000, 2, '6.jpg'),
(28, 4, 5, 'Petunjuk Mendapatkan Lailatul Qodar disertai dengan Hadits Shahih', 30000, 2, '7.jpg'),
(29, 1, 5, 'Seri Akhlak Mulia VI: Hidup Berhias Ilmu', 36300, 2, '8.jpg'),
(30, 2, 6, 'Anugerah Gunung Merapi', 33500, 2, '9.jpg'),
(31, 3, 6, 'Bencana Alam Geologi', 39400, 2, '10.jpg'),
(32, 4, 6, 'Efek Rumah Kaca', 38000, 2, '11.jpg'),
(33, 1, 6, 'Indahnya Budaya Tertib Lalu Lintas', 36000, 1, '12.jpg'),
(34, 2, 6, 'Keajaiban Dunia Baru 6', 30000, 2, '13.jpg'),
(35, 3, 6, 'Keajaiban Dunia Kuno 1', 30000, 1, '14.jpg'),
(36, 4, 6, 'Keajaiban Dunia Modern Jilid 5', 30000, 2, '15.jpg'),
(37, 1, 6, 'Madu Asli atau Tidak?', 37500, 2, '16.jpg'),
(38, 2, 6, 'Sampah Itu Emas', 34500, 2, '17.jpg'),
(39, 3, 6, 'Waspada Banjir dan Tanah Longsor 2', 37500, 2, '18.jpg'),
(40, 3, 7, 'Ensiklopedia Matematika Terapan Matematika dalam Makanan', 37500, 1, '19.jpg'),
(41, 4, 7, 'Gaptek, No Way 1 (Mengenal Komputer Dasar dan Aplikasi Sederhana) Ver. 1', 36000, 1, '20.jpg'),
(42, 1, 7, 'Gaptek, No Way 2 (Microsoft Word)', 33500, 2, '21.jpg'),
(43, 2, 7, 'Guru Menulis di Media Massa', 38000, 1, '22.jpg'),
(44, 3, 7, 'Ilmu dan Aplikasi Pendidikan IV \"Pendidikan Lintas Bidang\"', 93500, 2, '23.jpg'),
(45, 4, 7, 'Manfaat Tanaman Keras Indonesia', 35000, 2, '24.jpg'),
(46, 1, 7, 'Referensi Matematika dalam Kehidupan Manusia 4', 55000, 2, '25.jpg'),
(47, 2, 8, 'Ensiklopedia Sejarah dan Budaya Jilid 4 Revolusi dan kemerdekaan unifikasi dan kolonisasi', 150000, 1, '26.jpg'),
(48, 3, 8, 'Ensiklopedia Sejarah dan Budaya Jilid 7 Dibawah kolonialisme Barat', 109000, 2, '27.jpg'),
(49, 4, 8, 'Orang-Orang Belanda di Pintu Darurat', 34500, 2, '28.jpg'),
(50, 1, 8, 'Sejarah Eropa', 40000, 1, '29.jpg'),
(51, 2, 8, 'Sejarah Eropa', 50000, 1, '30.jpg'),
(52, 3, 8, 'Sejarah Nenek Moyang Jawa', 37500, 2, '31.jpg'),
(53, 4, 8, 'Sejarah Perkembangan Islam', 32000, 2, '32.jpg'),
(54, 1, 8, 'Ziarah Makam Walisongo', 38000, 2, '33.jpg'),
(55, 2, 9, 'Berjuta Keajaiban Dunia Tumbuhan', 30000, 2, '34.jpg'),
(56, 3, 9, 'Budi Daya Anggrek', 37500, 2, '35.jpg'),
(57, 4, 9, 'Budi Daya Tanaman Obat', 33500, 3, '36.jpg'),
(58, 1, 9, 'Dosa-Dosa Besar Meruntuhkan Amal dan Kebajikan', 36000, 1, '37.jpg'),
(59, 2, 9, 'Dosa-Dosa Besar Meruntuhkan Amal dan Kebajikan', 37500, 1, '38.jpg'),
(60, 3, 9, 'Kesehatan di Sekolah', 34500, 2, '39.jpg'),
(61, 4, 9, 'Kisah-Kisah dalam Al-Qur\'an 1 (Ulul Azmi)', 32000, 2, '40.jpg'),
(62, 1, 9, 'Membuat Batako', 37500, 1, '41.jpg'),
(63, 2, 9, 'Menuju Olimpiade Fisika', 98200, 1, '42.jpg'),
(64, 3, 9, 'Menuju Olimpiade Fisika', 102000, 2, '43.jpg'),
(65, 4, 9, 'Pertolongan Pertama pada Penyakit 2', 34500, 1, '44.jpg'),
(66, 1, 9, 'Selayang Pandang Gunung Lawu (Wisata dan Mitos)', 33500, 1, '45.jpg'),
(67, 2, 10, 'Ayo Berlatih Menulis Surat', 37500, 2, '46.jpg'),
(68, 3, 10, 'Ayo, Bangun untuk Salat Subuh', 30000, 2, '47.jpg'),
(69, 4, 10, 'Gaptek, No Way 1 (Mengenal Komputer Dasar dan Aplikasi Sederhana) Ver. 1', 36000, 1, '48.jpg'),
(70, 1, 10, 'Guru Menulis di Media Massa', 38000, 1, '49.jpg'),
(71, 2, 10, 'Ilmu dan Aplikasi Pendidikan IV \"Pendidikan Lintas Bidang\"', 93500, 2, '50.jpg'),
(72, 3, 10, 'Mahir Menggunakan Kamus Bahasa Indonesia', 31500, 1, '51.jpg'),
(73, 4, 10, 'Panduan Praktis Berbusana', 30000, 2, '52.jpg'),
(74, 1, 11, 'Indahnya Budaya Tertib Lalu Lintas', 36000, 1, '53.jpg'),
(75, 2, 11, 'Indahnya Budaya Tertib Lalu Lintas', 36000, 1, '54.jpg'),
(76, 3, 11, 'Selayang Pandang Gorontalo', 38500, 2, '55.jpg'),
(77, 4, 12, 'Keajaiban Adab Pertengahan 2', 30000, 1, '56.jpg'),
(78, 1, 12, 'Menggapai Kesuksesan Masa Depan', 33500, 2, '57.jpg'),
(79, 2, 12, 'Menghindari Berbagai Bencana Alam', 33300, 2, '58.jpg'),
(80, 3, 12, 'Mau Kaya Ngak Harus Kuliah 4', 37500, 2, '59.jpg'),
(81, 4, 12, 'Memajukan Daerah Tertinggal', 33500, 2, '60.jpg'),
(82, 1, 12, 'Mengenali dan Mengobati Penyakit', 34500, 2, 'gada.jpg'),
(83, 2, 12, 'Perkembangan Masyarakat pada Masa Kerajaan Hindu Buddha serta Peninggalannya', 38000, 1, '62.jpg'),
(84, 3, 12, 'Selayang Pandang Indonesiaku', 38000, 1, '63.jpg'),
(85, 4, 13, 'Menuju Olimpiade Fisika', 98200, 1, '64.jpg'),
(86, 1, 13, 'Menuju Olimpiade Fisika', 102000, 2, '65.jpg'),
(87, 2, 13, 'Menuju Olimpiade Fisika', 102000, 2, '66.jpg'),
(88, 3, 14, 'Jelajah Museum Jawa Timur dan Bali', 30000, 2, '67.jpg'),
(89, 4, 14, 'Selayang Pandang Gunung Lawu (Wisata dan Mitos)', 33500, 1, '68.jpg'),
(90, 1, 14, 'Ziarah Makam Walisongo', 38000, 2, '69.jpg'),
(91, 2, 15, 'Ensiklopedia Matematika Terapan Matematika dalam Makanan', 37500, 1, '70.jpg'),
(92, 3, 15, 'Ensiklopedia Sejarah dan Budaya Jilid 4 Revolusi dan kemerdekaan unifikasi dan kolonisasi', 150000, 1, '71.jpg'),
(93, 4, 15, 'Ensiklopedia Sejarah dan Budaya Jilid 7 Dibawah kolonialisme Barat', 109000, 2, '72.jpg'),
(94, 1, 15, 'Referensi Matematika dalam Kehidupan Manusia 4', 55000, 2, '73.jpg'),
(95, 2, 16, 'Gaptek, No Way 1 (Mengenal Komputer Dasar dan Aplikasi Sederhana) Ver. 1', 36000, 1, '74.jpg'),
(96, 3, 16, 'Ilmu dan Aplikasi Pendidikan IV \"Pendidikan Lintas Bidang\"', 93500, 2, '75.jpg'),
(97, 4, 16, 'Ilmu dan Aplikasi Pendidikan IV \"Pendidikan Lintas Bidang\"', 93500, 2, '76.jpg'),
(98, 1, 17, 'Membuat Batako', 37500, 1, '77.jpg'),
(99, 2, 18, 'Budi Daya Anggrek', 37500, 2, '78.jpg'),
(100, 3, 18, 'Budi Daya Tanaman Obat', 33500, 3, '79.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `cart_items`
--

CREATE TABLE `cart_items` (
  `customer_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `cart_item_qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`) VALUES
(5, 'Agama & Spiritualitas'),
(6, 'Alam & Lingkungan'),
(7, 'Ilmu Pengetahuan & Teknologi'),
(8, 'Biografi & Sejarah'),
(9, 'Kesehatan & Gaya Hidup'),
(10, 'Pendidikan & Pembelajaran'),
(11, 'Seni & Budaya'),
(12, 'Motivasi & Pengembangan Diri'),
(13, 'Sastra & Kesusasteraan'),
(14, 'Wisata & Travel'),
(15, 'Referensi & Ensiklopedia'),
(16, 'Pendidikan Anak & Remaja'),
(17, 'Teknik & Industri'),
(18, 'Pertanian & Perkebunan');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_phone` varchar(17) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_phone`, `customer_email`, `customer_password`) VALUES
(3, 'rahman', '085213586712', 'rahman@example.com', '$2y$10$NjROXYzsNFvMQbUcHu1GXOI/IHt62/9aD4By5ktn6rDROcNyBHBGi');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `payment_method_id` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` varchar(50) NOT NULL,
  `order_total_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_detail_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `book_id` int(11) NOT NULL,
  `order_detail_qty` int(11) NOT NULL,
  `order_detail_unit_price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_methods`
--

CREATE TABLE `payment_methods` (
  `payment_method_id` int(11) NOT NULL,
  `payment_method_name` varchar(255) NOT NULL,
  `payment_method_number` varchar(50) NOT NULL,
  `payment_method_bank` varchar(50) NOT NULL,
  `payment_method_logo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payment_methods`
--

INSERT INTO `payment_methods` (`payment_method_id`, `payment_method_name`, `payment_method_number`, `payment_method_bank`, `payment_method_logo`) VALUES
(1, 'PT Bookstore paknur', '8888888888', 'Permata', 'permata.svg'),
(2, 'PT Bookstore paknur', '8888888888', 'BCA', 'bca.svg'),
(3, 'PT Bookstore paknur', '8888888888', 'Mandiri', 'mandiri.svg');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`role_id`, `role_name`) VALUES
(1, 'administrator'),
(2, 'manager');

-- --------------------------------------------------------

--
-- Table structure for table `staffs`
--

CREATE TABLE `staffs` (
  `staff_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_phone` varchar(17) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staffs`
--

INSERT INTO `staffs` (`staff_id`, `role_id`, `staff_name`, `staff_phone`, `staff_email`, `staff_password`) VALUES
(3, 1, 'faiz', '085242242424', 'faiz@example.com', '$2y$10$qJkFUh1FAMiKC.BYIOmlgO.0IRzeS4fv6PeF0xAoiM.fFFvu4WbQu');

-- --------------------------------------------------------

--
-- Table structure for table `suppliers`
--

CREATE TABLE `suppliers` (
  `supplier_id` int(11) NOT NULL,
  `supplier_name` varchar(255) NOT NULL,
  `supplier_phone` varchar(17) NOT NULL,
  `supplier_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `suppliers`
--

INSERT INTO `suppliers` (`supplier_id`, `supplier_name`, `supplier_phone`, `supplier_address`) VALUES
(1, 'PT Nusa Bangsa', '081234567891', 'Jl. Semarang No. 33 Surabaya'),
(2, 'PT gudang Indah', '081234567891', 'Jl. Pahlawan No. 17 Samarinda'),
(3, 'PT ATK Merdeka', '081234567891', 'Jl. ahmad yani No. 19 balikpapan'),
(4, 'PT Buku pelita', '081288888889', 'Jl. Cempaka No. 27 Surabaya'),
(5, 'Gudang fauzan', '085288888888', 'Jl. perjuangan 7 samarinda');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`book_id`),
  ADD KEY `FK_category_book` (`category_id`) USING BTREE,
  ADD KEY `FK_book_supplier` (`supplier_id`) USING BTREE;

--
-- Indexes for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`customer_id`,`book_id`),
  ADD KEY `FK_cart_item_book` (`book_id`) USING BTREE;

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `FK_customer_order` (`customer_id`),
  ADD KEY `FK_payment_method_order` (`payment_method_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_detail_id`),
  ADD KEY `FK_order_detail_order` (`order_id`),
  ADD KEY `FK_order_detail_book` (`book_id`) USING BTREE;

--
-- Indexes for table `payment_methods`
--
ALTER TABLE `payment_methods`
  ADD PRIMARY KEY (`payment_method_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `staffs`
--
ALTER TABLE `staffs`
  ADD PRIMARY KEY (`staff_id`),
  ADD KEY `FK_role_staff` (`role_id`);

--
-- Indexes for table `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `book_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payment_methods`
--
ALTER TABLE `payment_methods`
  MODIFY `payment_method_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staffs`
--
ALTER TABLE `staffs`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `supplier_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `FK_category_book` FOREIGN KEY (`category_id`) REFERENCES `categories` (`category_id`),
  ADD CONSTRAINT `FK_book_supplier` FOREIGN KEY (`supplier_id`) REFERENCES `suppliers` (`supplier_id`);

--
-- Constraints for table `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FK_cart_item_customer` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FK_cart_item_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_customer_order` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`customer_id`),
  ADD CONSTRAINT `FK_payment_method_order` FOREIGN KEY (`payment_method_id`) REFERENCES `payment_methods` (`payment_method_id`);

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK_order_detail_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`),
  ADD CONSTRAINT `FK_order_detail_book` FOREIGN KEY (`book_id`) REFERENCES `books` (`book_id`);

--
-- Constraints for table `staffs`
--
ALTER TABLE `staffs`
  ADD CONSTRAINT `FK_role_staff` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
