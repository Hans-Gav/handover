-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2025 at 12:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `skanet`
--

-- --------------------------------------------------------

--
-- Table structure for table `api`
--

CREATE TABLE `api` (
  `id_api` int(11) NOT NULL,
  `key` text DEFAULT NULL,
  `chat_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `api`
--

INSERT INTO `api` (`id_api`, `key`, `chat_id`) VALUES
(1, 'api-key-12345', 'chat_id_1'),
(2, 'api-key-67890', 'chat_id_2');

-- --------------------------------------------------------

--
-- Table structure for table `aset`
--

CREATE TABLE `aset` (
  `id_aset` int(11) NOT NULL,
  `serial_number` varchar(255) NOT NULL,
  `tahun` year(4) DEFAULT NULL,
  `status_aset` enum('aktif','tidak_aktif','loss') DEFAULT 'aktif',
  `tanggal_beli` date DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `no_ip` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `aset`
--

INSERT INTO `aset` (`id_aset`, `serial_number`, `tahun`, `status_aset`, `tanggal_beli`, `id_customer`, `id_item`, `no_ip`) VALUES
(1, 'SN12345', '2023', 'aktif', '2025-04-01', 6, 1, '192.168.0.1'),
(2, 'SN67890', '2024', 'aktif', '2025-04-02', 5, 2, '192.168.0.2'),
(28, 'SN005', '2022', 'tidak_aktif', '2025-04-02', 7, 2, '192.168.0.3'),
(29, 'SN006', '2022', 'aktif', '2022-01-01', 8, 6, 'IP006'),
(30, 'SN007', '2022', 'aktif', '2022-01-01', NULL, 7, 'IP007'),
(31, 'SN008', '2022', 'aktif', '2022-01-01', NULL, 8, 'IP008'),
(33, 'SN010', '2022', 'aktif', '2022-01-01', NULL, 10, 'IP010');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id_customer` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `handphone` varchar(20) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `desa` varchar(100) DEFAULT NULL,
  `kecamatan` varchar(100) DEFAULT NULL,
  `kabupaten` varchar(100) DEFAULT NULL,
  `provinsi` varchar(100) DEFAULT NULL,
  `area` varchar(100) DEFAULT NULL,
  `tanggal_daftar` date DEFAULT NULL,
  `status_cust` enum('aktif','tidak_aktif') DEFAULT 'aktif',
  `id_paket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id_customer`, `nama`, `handphone`, `email`, `alamat`, `desa`, `kecamatan`, `kabupaten`, `provinsi`, `area`, `tanggal_daftar`, `status_cust`, `id_paket`) VALUES
(1, 'John Doe', '081234567890', 'johndoe@email.com', 'Jl. Merdeka No.1', 'Desa A', 'Kecamatan A', 'Kabupaten A', 'Provinsi A', 'Area 1', '2025-04-01', 'tidak_aktif', NULL),
(2, 'Jane Smith', '082345678901', 'janesmith@email.com', 'Jl. Kebon Jeruk No.2', 'Desa B', 'Kecamatan B', 'Kabupaten B', 'Provinsi B', 'Area 2', '2025-04-02', 'tidak_aktif', NULL),
(3, 'Joko', '082211522222', 'jokosusiol@gmail.com', 'Jl SukaBakti 12', 'Jonggol New', 'Rawabasah', 'Bogor', 'Jawa Barat', 'Bogor', '2025-04-27', 'tidak_aktif', NULL),
(4, 'HANDI IBRAHIM', '081234567890', 'handiibrahim@gmail.com', 'Tangerang', 'Kuta Baru', 'Pasar Kemis', 'tangerang', 'banten', '51', '2025-04-28', 'tidak_aktif', 1),
(5, 'Tile', '0822111222234', 'tile@gmail.com', 'Tangerang Sukabaru', 'Kuta Baru', 'Kecamatan A', 'Kabupaten A', 'Provinsi A', 'Area 21', '2025-04-29', 'aktif', 1),
(6, 'Susilo Bambang Kartoyono', '0213327271', 'sbk@gmail.com', 'Jakarta pinggir dikit', 'Rawa Rondo', 'Rondo Selatan', 'Rondo Hedon', 'Jakarta Pinggir', 'Area Terlarang', '2025-04-30', 'aktif', 1),
(7, 'restu zt mfbb', '021232131231', 'rt@gmail.com', 'janda', 'janda1', 'janda2', 'janda3', 'janda4', 'janda5', '2025-04-30', 'aktif', 2),
(8, 'Susilo Bambang ', '0213327271', 'rt@gmail.com', 'random', '1', '2', '3', '4', '5', '2025-05-13', 'aktif', 2);

-- --------------------------------------------------------

--
-- Table structure for table `invoice`
--

CREATE TABLE `invoice` (
  `id_invoice` int(11) NOT NULL,
  `no_invoice` varchar(100) DEFAULT NULL,
  `tanggal_invoice` date DEFAULT NULL,
  `status_invoice` enum('bayar','tidak bayar','telat bayar') DEFAULT 'tidak bayar',
  `tanggal_bayar` date DEFAULT NULL,
  `status_kirim` enum('dikirim','belum dikirim') DEFAULT 'belum dikirim',
  `ket_invoice` text DEFAULT NULL,
  `file` varchar(255) DEFAULT NULL,
  `id_customer` int(11) DEFAULT NULL,
  `id_paket` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `invoice`
--

INSERT INTO `invoice` (`id_invoice`, `no_invoice`, `tanggal_invoice`, `status_invoice`, `tanggal_bayar`, `status_kirim`, `ket_invoice`, `file`, `id_customer`, `id_paket`) VALUES
(1, 'INV-001', '2025-03-01', 'bayar', '2025-03-01', 'dikirim', 'Pembayaran sukses untuk paket 100Mbps', 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-001.pdf', 1, 1),
(2, 'INV-002', '2025-03-02', 'bayar', '2025-03-02', 'dikirim', 'Paket 150Mbps belum dibayar', 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-002.pdf', 2, 2),
(3, 'INV-20250429-f975d', '2025-04-29', 'bayar', '2025-04-29', 'dikirim', NULL, 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-20250429-f975d.pdf', 3, 1),
(4, 'INV-20250429-7f040', '2025-04-29', 'bayar', '2025-04-29', 'dikirim', NULL, NULL, 1, 1),
(5, 'INV-20250429-99409', '2025-04-29', 'bayar', '2025-04-29', 'dikirim', NULL, 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-20250429-99409.pdf', 2, 1),
(6, 'INV-20250429-0c39a', '2025-04-29', 'bayar', '2025-04-29', 'dikirim', NULL, 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-20250429-0c39a.pdf', 5, 1),
(7, 'INV-20250430-cdf93', '2025-04-30', 'bayar', '2025-04-30', 'dikirim', NULL, 'C:\\xampp\\htdocs\\skanet\\invoices/INV-INV-20250430-cdf93.pdf', 6, 1),
(8, 'INV-20250430-c8f74', '2025-04-30', 'bayar', '2025-04-30', 'dikirim', NULL, NULL, 7, 2),
(9, 'INV-20250513-d3081', '2025-05-13', 'bayar', '2025-05-13', 'belum dikirim', NULL, NULL, 5, 1),
(10, 'INV-20250513-df30c', '2025-05-13', 'telat bayar', NULL, 'belum dikirim', NULL, NULL, 6, 1),
(11, 'INV-20250513-f015f', '2025-05-13', 'tidak bayar', NULL, 'belum dikirim', NULL, NULL, 7, 2),
(12, 'INV-20250513-e34bb', '2025-05-13', 'tidak bayar', NULL, 'belum dikirim', NULL, NULL, 8, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ip`
--

CREATE TABLE `ip` (
  `no_ip` varchar(50) NOT NULL,
  `status_ip` enum('aktif','tidak_aktif') DEFAULT 'aktif'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ip`
--

INSERT INTO `ip` (`no_ip`, `status_ip`) VALUES
('192.168.0.1', 'aktif'),
('192.168.0.2', 'aktif'),
('192.168.0.3', 'aktif'),
('192.168.0.4', 'aktif'),
('192.168.0.5', 'aktif'),
('IP004', 'aktif'),
('IP005', 'aktif'),
('IP006', 'aktif'),
('IP007', 'aktif'),
('IP008', 'aktif'),
('IP009', 'aktif'),
('IP010', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `item`
--

CREATE TABLE `item` (
  `id_item` int(11) NOT NULL,
  `item` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `harga` decimal(15,2) DEFAULT NULL,
  `qty_item` decimal(10,2) DEFAULT 0.00,
  `unit` varchar(50) NOT NULL,
  `tanggal_input` date DEFAULT NULL,
  `tanggal_update` date DEFAULT NULL,
  `id_vendor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `item`
--

INSERT INTO `item` (`id_item`, `item`, `merk`, `type`, `harga`, `qty_item`, `unit`, `tanggal_input`, `tanggal_update`, `id_vendor`) VALUES
(1, 'Router XYZ', 'Brand A', 'Router', 1500000.00, 43.00, 'pcs', '2025-04-01', '2025-04-02', 1),
(2, 'Switch ABC', 'Brand B', 'Switch', 2000000.00, 12.00, 'pcs', '2025-04-01', '2025-04-02', 2),
(3, 'Kabel Cat 5', 'Cat 5', 'kabel', 500000.00, 480.00, 'meter', '2025-04-01', '2025-04-02', 2),
(4, 'Item 1', 'Merk A', 'Type A', 1000000.00, 9.00, 'dus', '2022-01-01', '2022-01-01', 1),
(5, 'Item 2', 'Merk A', 'Type A', 2000000.00, 9.00, 'meter', '2022-01-01', '2022-01-01', 1),
(6, 'Item 3', 'Merk A', 'Type A', 3000000.00, 9.00, 'qty', '2022-01-01', '2022-01-01', 1),
(7, 'Item 4', 'Merk A', 'Type A', 4000000.00, 10.00, 'qty', '2022-01-01', '2022-01-01', 1),
(8, 'Item 5', 'Merk A', 'Type A', 5000000.00, 10.00, 'qty', '2022-01-01', '2022-01-01', 1),
(10, 'Item 7', 'Merk A', 'Type A', 7000000.00, 10.00, 'qty', '2022-01-01', '2022-01-01', 1),
(14, 'Kabel Lan Cat 5e', 'Cucucnguk', 'Kabel', 5212332.00, 1.00, 'meter', NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `id_log` int(11) NOT NULL,
  `no_log` varchar(50) DEFAULT NULL,
  `aktifitas` text DEFAULT NULL,
  `status_log` enum('open','progress','close') DEFAULT 'open',
  `waktu_mulai` datetime DEFAULT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `ket_log` text DEFAULT NULL,
  `id_item` int(11) DEFAULT NULL,
  `qty` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`id_log`, `no_log`, `aktifitas`, `status_log`, `waktu_mulai`, `waktu_selesai`, `ket_log`, `id_item`, `qty`) VALUES
(1, 'LOG-001', 'Instalasi Router di kantor', 'close', '2025-04-01 09:00:00', '2025-04-01 12:00:00', 'Instalasi selesai di customer A', 1, 2),
(2, 'LOG-002', 'Penggantian Switch di rumah', 'close', '2025-04-02 10:00:00', '2025-04-02 13:00:00', 'Penggantian selesai di customer B', 2, 1),
(3, 'LOG-1746005374', 'Pemasangan Baru', 'close', '2025-04-30 11:36:39', '2025-04-30 11:36:52', 'sedang di kerjakan oleh joko', 1, 2),
(4, 'LOG-1746006031', 'Pemasangan Baru', 'close', '2025-04-30 16:40:37', '2025-04-30 16:40:50', 'done', 3, 12),
(5, 'LOG-1746006271', 'Pemasangan Baru', 'close', '2025-04-30 16:44:34', '2025-04-30 16:44:38', 'selesai', 2, 1),
(6, 'LOG-1746006576', 'pencabutan', 'close', '2025-04-30 16:49:40', '2025-04-30 16:49:51', 'selesai pasang dan pengecekan', 2, 1),
(7, 'LOG-1746007287', 'Pemasangan Baru', 'close', '2025-04-30 17:01:38', '2025-04-30 17:01:42', 'don', 1, 1),
(8, 'LOG-1746007870', 'Pemasangan Baru', 'close', '2025-04-30 17:13:11', '2025-04-30 17:13:16', 'gagal', 1, 1),
(13, 'LOG-1746008334', 'Pemasangan Baru', 'close', '2025-04-30 17:19:32', '2025-04-30 17:19:39', 'selesai pasang dan pengecekan', 1, 1),
(14, 'LOG-1746008334', 'Pemasangan Baru', 'close', '2025-04-30 17:19:34', '2025-04-30 17:19:43', 'sedang di kerjakan oleh joko', 2, 1),
(15, 'LOG-1746008546', 'Pemasangan Baru sudah selesai', 'close', '2025-04-30 17:22:30', '2025-04-30 17:22:39', 'selesai pasang dan pengecekan', 1, 1),
(16, 'LOG-1746008546', 'Pemasangan Baru sudah selesai', 'close', '2025-04-30 17:22:26', '2025-04-30 17:22:39', NULL, 2, 1),
(17, 'LOG-1746008546', 'Pemasangan Baru sudah selesai', 'close', '2025-04-30 17:22:26', '2025-04-30 17:22:39', NULL, 3, 2),
(18, 'LOG-1746153189', 'Pemasangan Baru rumah kontlo', 'close', '2025-05-02 09:43:22', '2025-05-02 10:33:06', 'selesai', 1, 2),
(19, 'LOG-1746153189', 'Pemasangan Baru rumah kontlo', 'close', '2025-05-02 09:33:09', '2025-04-30 17:22:39', NULL, 2, 2),
(20, 'LOG-1746153630', 'Pergantian kabel di sawah', 'close', '2025-05-02 09:43:25', '2025-05-02 10:40:26', 'done', 3, 20),
(21, 'LOG-1746153852', 'Pergantian Switch rusak di SD kita', 'close', '2025-05-02 10:40:39', '2025-05-02 10:40:44', 'done', 2, 3),
(22, 'LOG-1746157285', 'Pemasangan Baru', 'close', '2025-05-02 10:41:45', '2025-05-02 10:41:51', 'done', 1, 1),
(23, 'LOG-1746157285', 'Pemasangan Baru', 'close', '2025-05-02 10:41:25', '2025-05-02 10:41:51', NULL, 2, 1),
(24, 'LOG-1746157617', 'Pemasangan Baru', 'close', '2025-05-02 10:47:02', '2025-05-02 10:51:56', '1', 1, 1),
(25, 'LOG-1746157617', 'Pemasangan Baru', 'close', '2025-05-02 10:47:02', '2025-05-02 10:51:56', '1', 2, 1),
(26, 'LOG-1746157700', 'Pemasangan Baru sudah selesai', 'progress', '2025-05-02 10:48:48', NULL, NULL, 4, 1),
(27, 'LOG-1746157700', 'Pemasangan Baru sudah selesai', 'progress', '2025-05-02 10:48:48', NULL, NULL, 5, 1),
(28, 'LOG-1746157700', 'Pemasangan Baru sudah selesai', 'progress', '2025-05-02 10:48:48', NULL, NULL, 6, 1);

-- --------------------------------------------------------

--
-- Table structure for table `paket`
--

CREATE TABLE `paket` (
  `id_paket` int(11) NOT NULL,
  `kode_paket` varchar(100) DEFAULT NULL,
  `nama_paket` varchar(255) DEFAULT NULL,
  `harga` decimal(15,2) DEFAULT NULL,
  `speed` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket`
--

INSERT INTO `paket` (`id_paket`, `kode_paket`, `nama_paket`, `harga`, `speed`, `keterangan`) VALUES
(1, 'PKT-001', 'Paket 100Mbps', 500000.00, '100 Mbps', 'Paket internet cepat untuk kantor'),
(2, 'PKT-002', 'Paket 150Mbps', 750000.00, '150 Mbps', 'Paket internet cepat untuk rumah'),
(3, 'PKT-25Mbps-prm', 'Promo 3 Bulan 25 Mbps', 225000.00, '25 Mbps', 'Paket 3 Bulan promo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('super admin','admin','finance','teknisi') NOT NULL,
  `created_date` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `create_by` varchar(100) DEFAULT NULL,
  `status` enum('active','inactive') DEFAULT 'active',
  `last_login` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created_date`, `updated_at`, `create_by`, `status`, `last_login`) VALUES
(1, 'superadmin1', 'ba21767ae494afe5a2165dcb3338c5323e9907050e34542c405d575cc31bf527', 'super admin', '2025-04-23 09:23:25', '2025-05-13 16:29:34', 'system', 'active', '2025-05-13 16:29:34'),
(2, 'admin1', '749f09bade8aca755660eeb17792da880218d4fbdc4e25fbec279d7fe9f65d70', 'admin', '2025-04-23 09:23:25', '2025-04-23 09:23:25', 'superadmin1', 'active', NULL),
(3, 'finance1', '48f7312924d74358e75294e3b3613f2319d99e944184b69550f528577ca082fb', 'finance', '2025-04-23 09:23:25', '2025-04-23 09:23:25', 'superadmin1', 'active', NULL),
(4, 'teknisi1', '96588e0d4f00a3c33356525a502d13e1fb99540ad2cbfa4443400283dd9bf8c2', 'teknisi', '2025-04-23 09:23:25', '2025-04-23 10:18:59', 'admin1', 'active', '2025-04-23 05:18:59'),
(5, 'restu', '$2y$10$CDTtKMoAiS9sV/l4d.8/6e.VjpuXZSV8SwTc3GWflXB/Uzb1AgrDW', 'super admin', '2025-04-23 06:14:38', '2025-04-23 17:11:43', 'superadmin1', 'active', NULL),
(6, 'ambon', '$2y$10$.AFGYu2/TLuWHwCwzZ15CeNyAU0ux9jOpOYQNvuhL4zTacApCyEpW', 'teknisi', '2025-04-23 06:23:30', '2025-04-23 17:11:48', 'superadmin1', 'active', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `id_vendor` int(11) NOT NULL,
  `nama_vendor` varchar(255) DEFAULT NULL,
  `alamat_vendor` text DEFAULT NULL,
  `telepon_vendor` varchar(20) DEFAULT NULL,
  `email_vendor` varchar(255) DEFAULT NULL,
  `pic_vendor` varchar(255) DEFAULT NULL,
  `status_vendor` enum('aktif','tidak_aktif') DEFAULT 'aktif',
  `type_vendor` varchar(100) DEFAULT NULL,
  `tanggal_join` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`id_vendor`, `nama_vendor`, `alamat_vendor`, `telepon_vendor`, `email_vendor`, `pic_vendor`, `status_vendor`, `type_vendor`, `tanggal_join`) VALUES
(1, 'Vendor 1', 'Jl. Raya No.1', '085123456789', 'vendor1@email.com', 'PIC Vendor 1', 'aktif', 'offline', '2025-03-01'),
(2, 'Vendor 2', 'Jl. Merdeka No.2', '085987654321', 'vendor2@email.com', 'PIC Vendor 2', 'aktif', 'online', '2025-03-02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `api`
--
ALTER TABLE `api`
  ADD PRIMARY KEY (`id_api`);

--
-- Indexes for table `aset`
--
ALTER TABLE `aset`
  ADD PRIMARY KEY (`id_aset`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_item` (`id_item`),
  ADD KEY `no_ip` (`no_ip`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id_customer`),
  ADD KEY `fk_customer_paket` (`id_paket`);

--
-- Indexes for table `invoice`
--
ALTER TABLE `invoice`
  ADD PRIMARY KEY (`id_invoice`),
  ADD KEY `id_customer` (`id_customer`),
  ADD KEY `id_paket` (`id_paket`);

--
-- Indexes for table `ip`
--
ALTER TABLE `ip`
  ADD PRIMARY KEY (`no_ip`);

--
-- Indexes for table `item`
--
ALTER TABLE `item`
  ADD PRIMARY KEY (`id_item`),
  ADD KEY `id_vendor` (`id_vendor`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`id_log`),
  ADD KEY `id_item` (`id_item`);

--
-- Indexes for table `paket`
--
ALTER TABLE `paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`id_vendor`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `api`
--
ALTER TABLE `api`
  MODIFY `id_api` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `aset`
--
ALTER TABLE `aset`
  MODIFY `id_aset` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id_customer` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `invoice`
--
ALTER TABLE `invoice`
  MODIFY `id_invoice` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `item`
--
ALTER TABLE `item`
  MODIFY `id_item` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `log`
--
ALTER TABLE `log`
  MODIFY `id_log` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `paket`
--
ALTER TABLE `paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `id_vendor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `aset`
--
ALTER TABLE `aset`
  ADD CONSTRAINT `aset_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `aset_ibfk_2` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`),
  ADD CONSTRAINT `aset_ibfk_3` FOREIGN KEY (`no_ip`) REFERENCES `ip` (`no_ip`);

--
-- Constraints for table `customer`
--
ALTER TABLE `customer`
  ADD CONSTRAINT `fk_customer_paket` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`);

--
-- Constraints for table `invoice`
--
ALTER TABLE `invoice`
  ADD CONSTRAINT `invoice_ibfk_1` FOREIGN KEY (`id_customer`) REFERENCES `customer` (`id_customer`),
  ADD CONSTRAINT `invoice_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `paket` (`id_paket`);

--
-- Constraints for table `item`
--
ALTER TABLE `item`
  ADD CONSTRAINT `item_ibfk_1` FOREIGN KEY (`id_vendor`) REFERENCES `vendor` (`id_vendor`);

--
-- Constraints for table `log`
--
ALTER TABLE `log`
  ADD CONSTRAINT `log_ibfk_1` FOREIGN KEY (`id_item`) REFERENCES `item` (`id_item`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
