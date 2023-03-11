-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 02 Mar 2023 pada 02.55
-- Versi server: 10.4.27-MariaDB
-- Versi PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ukom`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `masyarakat`
--

CREATE TABLE `masyarakat` (
  `nik` int(16) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telp` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `masyarakat`
--

INSERT INTO `masyarakat` (`nik`, `nama`, `username`, `password`, `telp`) VALUES
(1, 'amel', 'lia', '12345', 12435),
(123432224, 'bambang koswara', 'bambang', '12345', 876544567),
(1244637223, 'agus septiana', 'agus', '12345', 656565376),
(2012345321, 'sumarna purwanto', 'sumarna', '12345', 876534321),
(2112345556, 'rika nur fatimah', 'rika', '12345', 628147483),
(2112351124, 'felicia hestia', 'felicia', '12345', 2147483647),
(2134567413, 'karmila suliswati', 'mila', '12345', 765432121),
(2141112782, 'reihan syahputra', 'reihan', '12345', 76512345),
(2144231345, 'rendy sutisna', 'rendy', '12345', 1233456723),
(2147483647, 'kinan rahardinan', 'kinan', '12345', 2147483647);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengaduan`
--

CREATE TABLE `pengaduan` (
  `id_pengaduan` int(16) NOT NULL,
  `tgl_pengaduan` date NOT NULL,
  `nik` int(10) NOT NULL,
  `isi_laporan` text NOT NULL,
  `foto` varchar(255) NOT NULL,
  `status` enum('0','proses','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pengaduan`
--

INSERT INTO `pengaduan` (`id_pengaduan`, `tgl_pengaduan`, `nik`, `isi_laporan`, `foto`, `status`) VALUES
(17, '2023-02-26', 2147483647, 'jalan rusak di daerah cimahi jln pasantren RT 02 RW 05 mohon segera di perbaiki karena bisa membahayakan warga yang lewat, terima kasih ', 'jalan_rusak.jpeg', 'selesai'),
(18, '2023-02-26', 2147483647, 'jembatan rusak  di daerah desa sukaharta moho segera di tangani/diperbaiki', 'jembatan_rusak.jpeg', 'selesai'),
(19, '2023-02-26', 2144231345, 'terjadi tawuran di depan sma 1 cimahi mohon agar segera di tindak lanjuti karena meresahkan warga', 'tawuran.jpeg', 'selesai'),
(20, '2023-02-26', 2012345321, 'kecelakan di jalan kebon kopi mohon agar secepatnya di berikan bantuan', 'kecelakaan.jpeg', 'proses'),
(22, '2023-02-26', 2112351124, 'saran untuk pemerintah kota cimahi untuk melakukan  pelayan di kantor kecamatan cimahi utara lebih cepat karena pelayanan yang saya dapatkan sangat lambat dan memakan banyak waktu saya, terima kasi ', '', 'proses'),
(23, '2023-02-26', 2134567413, 'pegawai di pelayanan kantor kelurahan tidak raman &  sopan mohon agar pelayanan nya di perbaiki\r\n\r\n', '', 'proses'),
(24, '2023-02-26', 123432224, 'rel kereta di cimindi rusak mohon agar segera di perbaiki karena membahayakan pengendara ', 'relkereta_rusak.jpeg', 'proses'),
(25, '2023-02-26', 123432224, 'tiang listrik roboh mohon agar segera di perbaiki', 'tianglistrik_roboh.jpeg', 'selesai'),
(26, '2023-02-26', 1244637223, 'di komplek taman asri daerah cimahi rt07 rw 08 selalu ketika malah sering terdengar knalpot motor yg sangat bising mohon agar segera di tindak lanjuti karena menganggu warga yg sedang istirahat', '', '0'),
(27, '2023-02-26', 2141112782, 'kebakaran di sekitar pasteur mohon segera dikirimkan bantuan damkar', 'kebakaran.jpeg', 'proses'),
(29, '2023-02-27', 1, 'kecelakaan lalulintas mohon kirimkan bantuan', 'kecelakaan.jpeg', '0'),
(30, '2023-02-27', 2134567413, '', '', '0'),
(31, '2023-03-02', 2134567413, 'required', '', '0'),
(32, '2023-03-02', 2134567413, 'required', '', '0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` int(10) NOT NULL,
  `nama_petugas` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `telp` int(12) NOT NULL,
  `level` enum('admin','petugas') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `nama_petugas`, `username`, `password`, `telp`, `level`) VALUES
(200606, 'Putri Nur', 'nur', '12345', 899161299, 'admin'),
(200607, 'Amelia Hidayah', 'amel', '12345', 899161277, 'petugas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tanggapan`
--

CREATE TABLE `tanggapan` (
  `id_tanggapan` int(16) NOT NULL,
  `id_pengaduan` int(16) NOT NULL,
  `tgl_tanggapan` date NOT NULL,
  `tanggapan` text NOT NULL,
  `id_petugas` int(16) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tanggapan`
--

INSERT INTO `tanggapan` (`id_tanggapan`, `id_pengaduan`, `tgl_tanggapan`, `tanggapan`, `id_petugas`) VALUES
(7, 17, '2023-02-26', 'baik akan secepatnya kami proses, terima kasih sudah melapor ', 200606),
(8, 19, '2023-02-26', 'baik kami akan segera mengirimkan pihak keamanan untuk mengamankan daerah tersebut,terima kasih sudah melapor', 200606),
(9, 25, '2023-02-26', 'baik secepatnya akan kami tangani, terimakasi sudah melapor\r\n                ', 200606),
(10, 18, '2023-02-27', '                \r\n                baik akan segera kami proses, terimakasih sudah melapor', 200606);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  ADD PRIMARY KEY (`nik`);

--
-- Indeks untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  ADD PRIMARY KEY (`id_pengaduan`);

--
-- Indeks untuk tabel `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indeks untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  ADD PRIMARY KEY (`id_tanggapan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `masyarakat`
--
ALTER TABLE `masyarakat`
  MODIFY `nik` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2147483648;

--
-- AUTO_INCREMENT untuk tabel `pengaduan`
--
ALTER TABLE `pengaduan`
  MODIFY `id_pengaduan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `petugas`
--
ALTER TABLE `petugas`
  MODIFY `id_petugas` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200612;

--
-- AUTO_INCREMENT untuk tabel `tanggapan`
--
ALTER TABLE `tanggapan`
  MODIFY `id_tanggapan` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
