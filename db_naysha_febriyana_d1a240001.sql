-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2025 pada 06.44
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_naysha febriyana_d1a240001`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_about`
--

CREATE TABLE `tbl_about` (
  `id_about` int(2) NOT NULL,
  `about` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_about`
--

INSERT INTO `tbl_about` (`id_about`, `about`) VALUES
(1, 'Saya adalah mahasiswa yang aktif, bertanggung jawab, dan memiliki semangat belajar tinggi. Saya tertarik pada pengembangan diri, kerja tim, serta siap menghadapi tantangan untuk mencapai tujuan akademik dan profesional.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_artikel`
--

CREATE TABLE `tbl_artikel` (
  `id_artikel` int(5) NOT NULL,
  `nama_artikel` text NOT NULL,
  `isi_artikel` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_artikel`
--

INSERT INTO `tbl_artikel` (`id_artikel`, `nama_artikel`, `isi_artikel`) VALUES
(1, 'Pentingnya Menjaga Kesehatan Mental di Era Digital', 'Di era digital saat ini, kemudahan akses informasi dan komunikasi membawa banyak manfaat bagi kehidupan. Namun, di balik kemajuan teknologi, terdapat tantangan baru yang dapat memengaruhi kesehatan mental, terutama di kalangan remaja dan dewasa muda. Media sosial, misalnya, sering kali menjadi tempat munculnya tekanan sosial, perbandingan diri, dan cyberbullying.\r\n\r\nKesehatan mental sama pentingnya dengan kesehatan fisik. Gangguan seperti stres, kecemasan, dan depresi dapat muncul jika seseorang tidak mampu mengelola beban emosional yang ditimbulkan dari lingkungan digital. Oleh karena itu, penting bagi kita untuk bijak dalam menggunakan teknologi. Mengatur waktu penggunaan gadget, beristirahat dari media sosial, dan menjaga komunikasi sehat dengan orang-orang terdekat bisa menjadi langkah awal menjaga kesehatan mental.\r\n\r\nSelain itu, jangan ragu untuk mencari bantuan profesional jika merasa kewalahan. Psikolog dan konselor siap membantu memberikan solusi dan dukungan yang dibutuhkan. Dengan menjaga kesehatan mental, kita dapat hidup lebih seimbang, produktif, dan bahagia di tengah arus digital yang cepat.');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_gallery`
--

CREATE TABLE `tbl_gallery` (
  `id_gallery` int(5) NOT NULL,
  `judul` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_gallery`
--

INSERT INTO `tbl_gallery` (`id_gallery`, `judul`, `foto`) VALUES
(1, 'foto 1', 'Empat Teman dengan Senyum Ceria (1).png'),
(2, 'foto 2', 'WhatsApp Image 2025-06-16 at 13.59.15_5488b807.jpg'),
(3, 'foto 3', 'foto1.jpg'),
(4, 'foto 4', 'bersma.jpg'),
(5, 'foto 5', 'WhatsApp Image 2025-06-16 at 14.11.18_416badf5.jpg'),
(6, 'foto 6', 'WhatsApp Image 2025-06-19 at 13.37.36_86e2a85a.jpg'),
(7, 'foto 7', 'WhatsApp Image 2025-06-19 at 13.37.36_1799bad9.jpg'),
(8, 'foto 8', 'WhatsApp Image 2025-06-19 at 13.37.36_f07e2363.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL COMMENT 'none_3'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `password`) VALUES
('naysha', 'naysha'),
('tbl_artike', 'tbl_artike'),
('tbl_artike', 'tbl_artike');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  ADD PRIMARY KEY (`id_artikel`);

--
-- Indeks untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tbl_about`
--
ALTER TABLE `tbl_about`
  MODIFY `id_about` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `tbl_artikel`
--
ALTER TABLE `tbl_artikel`
  MODIFY `id_artikel` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `tbl_gallery`
--
ALTER TABLE `tbl_gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
