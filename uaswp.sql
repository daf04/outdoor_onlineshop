-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 28, 2022 at 05:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.3.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uaswp`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(1, '', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+62895364764371', 'aldrichdaffazalfansyah04@gmail.com', 'Kosambi, Tangerang');

-- --------------------------------------------------------

--
-- Table structure for table `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(7, 'Carrier'),
(8, 'Tenda'),
(9, 'Sepatu'),
(10, 'Headlamp');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(1) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `date_created`) VALUES
(38, 0, 'Tiger Claw', 650000, '<p>Tiger Claw 2.0 adalah sepatu low cut yang dirancang untuk kegiatan hiking ringan dan pemakaian harian. Teknologi heel support system pada sepatu ini dapat menyangga pergelangan kaki guna menunjang kaki agar tetap stabil saat berjalan. Sepatu ini juga didukung outsole berbahan rubbber untuk cengkraman yang lebih baik. Bagian dalam sepatu didukung insole Ortholite yang memberikan bantalan, breathable (memiliki daya evaporasi tinggi yang mampu menguapkan kelembapan sehingga mudah kering), dan ringan untuk menjaga kaki tetap nyaman. Dilengkapi juga dengan rubber toe protector yang berfungsi untuk perlindungan pada kaki bagian depan dari gesekan dan benturan.</p>\r\n', 'produk1644035152.jpg', 1, '2022-02-05 04:25:52'),
(39, 0, 'Tarantula 2.0', 1250000, '<p>Tarantula 2.0 adalah mid-cut hybrid shoes yang dirancang untuk kegiatan hiking dan approach. Material utama sepatu ini adalah Nubuck leather yang menawarkan ketahanan. Sepatu ini menggunakan outsole Vibram Predator 625K dan insole Ortholite untuk bantalan yang lebih baik.<br />\r\n&nbsp;</p>\r\n', 'produk1644035234.jpg', 1, '2022-02-05 04:27:14'),
(40, 0, 'Anaconda 2.5', 1000000, '<p>Anaconda 2.5 adalah sepatu approach low-cut yang dirancang untuk kegiatan approach (rock climbing). Sistem konstruksi gusset pada sepatu berfungsi untuk mencegah langsung masuknya elemen seperti kerikil ataupun air dari bagian atas sepatu. Bagian dalam sepatu didukung insole Ortholite yang memberikan bantalan, breathable (memiliki daya evaporasi tinggi yang mampu menguapkan kelembapan sehingga mudah kering), dan ringan untuk menjaga kaki tetap nyaman.</p>\r\n', 'produk1644035277.jpg', 1, '2022-02-05 04:27:57'),
(41, 0, 'Cypress Tx', 1350000, '<p>Cypress TX adalah mid-cut shoes yang dirancang untuk kegiatan hiking dan trekking. Dengan material utama Nubuck leather pada bagian upper yang nyaman dipakai, sepatu ini menggunakan outsole Vibram Tubava dan insole Ortholite untuk bantalan yang lebih baik.</p>\r\n', 'produk1644035314.jpg', 1, '2022-02-05 04:28:34'),
(42, 0, 'Python', 1150000, '<p>PYTHON adalah high-cut shoes yang hadir untuk memberikan keamanan dan kenyamanan untuk kegiatan penjelajahan di iklim tropis. Sepatu berdesain tangguh ini terbuat dari material nubuck leather yang dikombinasikan dengan Cordura&Acirc;&reg; yang memiliki daya tahan kuat. Untuk kenyamanan ekstra, sepatu ini juga dilengkapi dengan Ortholite&Acirc;&reg; insole, serta Vibram&Acirc;&reg; Winkler outsole dengan komponen rubber memberikan traksi terbaik dan daya cengkram kuat di berbagai medan.</p>\r\n', 'produk1644035362.jpg', 1, '2022-02-05 04:29:22'),
(43, 0, 'Pollock', 1200000, '<p>Sepatu hiking Pollock dirancang untuk petualangan outdoor di berbagai medan seperti tanah. lumpur, curam batu, kerikil, rumput dll. Materi Suede di bagian atas terdapat campuran dengan kain polyester dan sistem konstruksi booties memungkinkan boot untuk tetap karakter yang kuat dan tahan air yang selalu tetap kering. Sol Vibram akan membuat tumit Anda lebih nyaman dan kaki tidak cepat letih. The Tecnology heel shield system akan membantu pergelangan kaki dan kaki menjadi lebih kokoh dan lebih stabil dalam setiap jenis medan.</p>\r\n', 'produk1644035415.jpg', 1, '2022-02-05 04:30:15'),
(44, 0, 'Apollo', 249000, '<p>Apollo adalah perlengkapan wajib bagi para petualang luar ruang. Lampu kepala yang tahan air dengan rating IPX4 ini dilengkapi dengan fitur pencahayaan hingga 80 lumen untuk memberikan penerangan dan lampu LED merah untuk membantumu lebih mudah terlihat meski dari kejauhan, khususnya pada saat situasi darurat. Bagian lampu mudah disesuaikan untuk mencegah nyeri leher. Produk ini memiliki dua tombol switch, untuk pengoperasian manual tekan tombol switch ON/OFF berwarna oranye, dan pengoperasian melalui sensor inframerah dengan menekan tombol switch berwarna putih. Sangat cocok digunakan untuk kegiatan outdoor seperti kemping, hiking, dan trekking. Panjang tali : 54cm. Lingkar kepala paling cocok : 54cm. Dimensi: 65 x 42 x 51 mm</p>\r\n', 'produk1644035469.jpg', 1, '2022-02-05 04:31:09'),
(45, 0, 'Axial', 224000, '<p>Axial Pro adalah perlengkapan penting bagi para petualang luar ruang. Lampu kepala berbobot ringan ini dapat digunakan dalam keadaan menyala hingga 48 jam dengan jangkauan maksimal 65 meter. Lampu ini juga tahan air dengan level IPX6. Sangat cocok digunakan untuk kegiatan outdoor seperti kemping, hiking, trekking, dan susur gua.</p>\r\n', 'produk1644035529.jpg', 1, '2022-02-05 04:32:09'),
(46, 0, 'Horragalles', 125000, '<p>Horagalles adalah perlengkapan penting bagi para petualang luar ruang. Lampu kepala ini memiliki 5 fungsi pencahayaan, yakni 4 LED / 8 LED/ 14 LED / 14 LED Flashing / Off. Sangat cocok digunakan untuk kegiatan outdoor seperti kemping, hiking, trekking, dan susur gua.</p>\r\n', 'produk1644035574.jpg', 1, '2022-02-05 04:32:54'),
(47, 0, 'Shira 1P Tents', 1215000, '<p>hira 1P adalah tenda kemah untuk kapasitas 1 orang yang cocok digunakan untuk kegiatan berkemah. Tenda ini memiliki tiang rangka berbahan aluminium yang mudah dipasangkan, satu akses pintu masuk dan mesh sebagai ventilasi. Ketika tidak dipakai, Anda bisa menyimpannya kembali di carry bag.</p>\r\n', 'produk1644035627.jpg', 1, '2022-02-05 04:33:47'),
(48, 0, 'Senaru 2P Tents', 1200000, '<p>Senaru 2P adalah tenda kemah untuk kapasitas 2 orang yang cocok digunakan untuk kegiatan berkemah dan hiking. Tenda ini memiliki tiang rangka berbahan duraluminium yang mudah dipasangkan, satu akses pintu masuk dan mesh sebagai ventilasi. Ketika tidak dipakai, Anda bisa menyimpannya kembali di carry bag. Inner tent: (60+140+60) x 150cm x 100cm, Packing size: 60x40x25 cm</p>\r\n', 'produk1644035700.jpg', 1, '2022-02-05 04:35:00'),
(49, 0, 'Shipton 3P Tents', 2050000, '<p>Shipton 3P adalah tenda kemah untuk kapasitas 3 orang yang cocok digunakan untuk kegiatan berkemah dan hiking. Tenda ini memiliki tiang rangka berbahan duraluminium yang mudah dipasangkan, satu akses pintu masuk dan mesh sebagai ventilasi. Ketika tidak dipakai, Anda bisa menyimpannya kembali di carry bag. Inner tent: (210+50) x 180cm x 120cm, Packing size: 62x48x30 cm</p>\r\n', 'produk1644035770.jpg', 1, '2022-02-05 04:36:10'),
(50, 0, 'Equator Lite 45L', 1250000, '<p>Equator 45 adalah tas carrier berkapasitas 45 liter yang dirancang untuk kegiatan trekking dan hiking selama 1-2 hari. Tas ini memiliki kompartemen utama dengan pemisah/sekat dan kompartemen eksternal, seperti saku samping, saku tutup atas, dan saku hip belt untuk menjaga barang bawaan Anda tetap aman dan terjaga. Tas ini juga dilengkapi dengan teknologi backsystem Aerovent Trek yang membuat sirkulasi udara di punggung Anda lebih optimal. Equator 45 juga memiliki fitur-fitur lain untuk mendukung perannya sebagai tas carrier ideal untuk perjalanan trekking Anda seperti pengikat trekking pole, kompartemen untuk menyimpan water bladder, tali kompresi samping, dan rain cover untuk melindungi tas dari air hujan.</p>\r\n', 'produk1644035820.jpg', 1, '2022-02-05 04:37:00'),
(51, 0, 'Excelsior 75+15 1F', 1750000, '<p>EXCELSIOR 75+15L adalah carrier kapasitas 75+15lt. yang dirancang untuk kegiatan ekspedisi dan perjalanan panjang. DilengkapiERGOSPINO Dual frame Technology. Bahan Nylon &amp; Cordura 420D dipakai di seluruh bagian badan luar carrier agar menjamin kekuatancarrier dan mengatasi pemakaian yang ekstrim. Tulang belakang manusia adalah bagian penting yang berfungsi sebagai penyangga utama tubuh manusia untuk berdiri tegak maupunberjalan. Membawa beban berat dalam durasi waktu panjang yang lazim dilakukan dalam kegiatan outdoor, membuat tulang belakangbekerja keras sehingga rawan menyebabkan resiko cedera pada tulang belakang. Melalui serangkaian tahapan riset, Eiger menghadirkanERGOSPINO, backsystem berteknologi dual frame yang dapat mengurangi resiko cedera pada tulang belakang sekaligus meningkatkankenyamanan dan stabilitas saat membawa beban dalam kegiatan outdoor.</p>\r\n', 'produk1644035881.jpg', 1, '2022-02-05 04:38:01'),
(52, 0, 'Eliptic Solaris', 1350000, '<p>Eliptic Solaris 65L adalah tas carrier berkapasitas 65 liter yang dirancang untuk kegiatan trekking berdurasi panjang (lebih dari 5 hari).Dilengkapi backsystem Aerovoid V System Adjustability Backsystem Technology. dengan internal frame dari bahan duralium yang memilikikekuatan dan kelenturan yang baik. Bahan Polyester dan Nylon dipakai diseluruh bagian badan luar carrier menjamin kekuatan carrier.</p>\r\n', 'produk1644035928.jpg', 1, '2022-02-05 04:38:48'),
(53, 0, 'Equator Trex 65L', 1950000, '<p>Equator Trek 65 adalah tas carrier berkapasitas 65 liter yang dirancang untuk mengakomodasi kebutuhan kegiatan trekking selama 2-5 hari. Dibuat menggunakan bahan nilon yang awet dan kuat, tas ini dilengkapi teknologi Ergocomfort backsystem yang dirancang secara ergonomis melalui pengaturan praktis pada bagian punggung untuk menyesuaikan ukuran torso agar sesuai dengan pengguna.</p>\r\n', 'produk1644035970.jpg', 1, '2022-02-05 04:39:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
