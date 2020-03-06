-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 21 Feb 2020 pada 09.43
-- Versi Server: 10.1.19-MariaDB
-- PHP Version: 7.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_synchronize`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `aktif` int(11) NOT NULL,
  `id_status` int(11) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `nama`, `email`, `password`, `aktif`, `id_status`, `created_at`) VALUES
(1, 'Krishna Hendra Wijaya', 'krisna@gmail.com', '$2y$10$wl2Ug7P4ZVqDjm9EaoUQauJooTfBBal4pD919nXOPFt8QCxEteXti', 1, 1, 1580108913),
(3, 'Haifa', 'haifa@gmail.com', '$2y$10$kekWW.iP4V.pxc7uRoZtiehkZEH7a2fhBW.eHMScQHchFgp2BcD0S', 1, 1, 1580633097);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_jadwal`
--

CREATE TABLE `detail_jadwal` (
  `id_detail_jadwal` int(11) NOT NULL,
  `kegiatan` varchar(225) NOT NULL,
  `deskripsi_kegiatan` varchar(225) NOT NULL,
  `waktu` time NOT NULL,
  `gambar` text NOT NULL,
  `id_jadwal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_jadwal`
--

INSERT INTO `detail_jadwal` (`id_detail_jadwal`, `kegiatan`, `deskripsi_kegiatan`, `waktu`, `gambar`, `id_jadwal`) VALUES
(1, 'Open Gate', 'Open Gate and Check In Session', '16:30:00', '', 1),
(2, 'Opening', 'Opening event by MC', '17:00:00', 'default.png', 1),
(3, 'Open Gate', 'Open Gate and Checking Session', '16:00:00', '', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_transaksi`
--

CREATE TABLE `detail_transaksi` (
  `id_detail` int(11) NOT NULL,
  `id_tiket` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `detail_transaksi`
--

INSERT INTO `detail_transaksi` (`id_detail`, `id_tiket`, `id_transaksi`) VALUES
(2, 1, 13),
(3, 1, 13),
(4, 1, 13),
(5, 1, 13),
(6, 1, 13),
(7, 1, 14),
(8, 1, 14),
(9, 1, 14),
(10, 1, 14),
(11, 2, 15),
(12, 2, 15),
(13, 1, 16),
(14, 1, 17),
(15, 1, 18),
(16, 1, 18),
(17, 1, 19),
(18, 1, 20),
(19, 1, 20),
(20, 1, 21),
(21, 2, 22),
(22, 2, 22),
(23, 2, 22),
(24, 2, 22),
(25, 2, 23),
(26, 2, 23),
(27, 2, 23),
(28, 1, 24),
(29, 1, 24),
(30, 2, 25),
(31, 2, 25),
(32, 2, 25),
(33, 2, 25),
(34, 2, 25);

-- --------------------------------------------------------

--
-- Struktur dari tabel `dj`
--

CREATE TABLE `dj` (
  `id_dj` int(11) NOT NULL,
  `nama_dj` varchar(255) NOT NULL,
  `birth` varchar(225) NOT NULL,
  `genre` varchar(225) NOT NULL,
  `alamat` text NOT NULL,
  `sosmed` varchar(225) NOT NULL,
  `since` varchar(225) NOT NULL,
  `video` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `dj`
--

INSERT INTO `dj` (`id_dj`, `nama_dj`, `birth`, `genre`, `alamat`, `sosmed`, `since`, `video`) VALUES
(3, 'Anggie akbar', 'Malang , 04 Maret 2002', 'habbuaba', 'sssssss', 'asasas', '2019', 'awal_ladang.mp4'),
(4, 'Krishna', 'Malang , 04 Maret 2002', 'habbuaba', 'asaasa', 'asaass', '2019', '10.mp4');

-- --------------------------------------------------------

--
-- Struktur dari tabel `editable`
--

CREATE TABLE `editable` (
  `id_event` int(11) NOT NULL,
  `nama_event` varchar(255) NOT NULL,
  `about_event` text NOT NULL,
  `logo_event` text NOT NULL,
  `venue` text NOT NULL,
  `location_venue` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `editable`
--

INSERT INTO `editable` (`id_event`, `nama_event`, `about_event`, `logo_event`, `venue`, `location_venue`) VALUES
(2, 'Oh! Nais Festival', 'Festival musik yang dipadukan dengan berbagai rangkaian acara yang dikemas secara seru dan unik.', 'OH NAIS LOGO 2.png', 'Graha Cakrawala - Universitas Negeri Malang', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d14262.087279349189!2d112.6110546315304!3d-7.957466273883397!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.	1!3m3!1m2!1s0x2e78827f0d7f025b%3A0x92aef5088187b798!2sGraha%20Cakrawala%20UM!5e1!3m2!1sid!2sid!4v1577008694488!5m2!1sid!2sid');

-- --------------------------------------------------------

--
-- Struktur dari tabel `faq`
--

CREATE TABLE `faq` (
  `id_faq` int(11) NOT NULL,
  `pertanyaan` text NOT NULL,
  `jawaban` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `faq`
--

INSERT INTO `faq` (`id_faq`, `pertanyaan`, `jawaban`) VALUES
(1, 'Apa sih Oh! Nasi Festival ?', 'Oh! Nais Festival adalah sebuah event music disertai dengan bazar makanan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `guest`
--

CREATE TABLE `guest` (
  `id_guest` int(11) NOT NULL,
  `nama_guest` varchar(225) NOT NULL,
  `deskripsi` text NOT NULL,
  `genre` varchar(225) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `guest`
--

INSERT INTO `guest` (`id_guest`, `nama_guest`, `deskripsi`, `genre`, `gambar`) VALUES
(1, 'Arditho Pramono', 'Ardhito Pramono, sebuah musisi yang terkenal dengan parasnya yang tampan. Dengan lagu-lagunya yang kalem dan menyentuh membuat ia digemari para kaum hawa', 'Pop Modern', 'ardhito1.jpg'),
(2, 'Feby Putri', 'Halo semuanya namaku febi putri', 'Women Solo', 'feby1.jpg'),
(3, 'Denny Caknan', 'Denny Caknan Gendutz mau main di Galasesa', 'dangdut', 'denny12.jpg'),
(4, 'OM PMR', 'Kumpulan om om\r\n', 'orchestra', 'ompmr11.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `hari` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `hari`) VALUES
(1, 1),
(2, 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `sponsor`
--

CREATE TABLE `sponsor` (
  `id_sponsor` int(11) NOT NULL,
  `nama_sponsor` varchar(225) NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `logo_sponsor` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sponsor`
--

INSERT INTO `sponsor` (`id_sponsor`, `nama_sponsor`, `keterangan`, `logo_sponsor`) VALUES
(4, 'Intel', '', 'intel_PNG15.png'),
(5, 'Google', 'Kontrak', '1.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `status`
--

CREATE TABLE `status` (
  `id_status` int(11) NOT NULL,
  `status` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `status`
--

INSERT INTO `status` (`id_status`, `status`) VALUES
(1, 'admin'),
(2, 'member');

-- --------------------------------------------------------

--
-- Struktur dari tabel `talent`
--

CREATE TABLE `talent` (
  `id_talent` int(11) NOT NULL,
  `nama_talent` varchar(225) NOT NULL,
  `umur` varchar(225) NOT NULL,
  `contact` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tiket`
--

CREATE TABLE `tiket` (
  `id_tiket` int(11) NOT NULL,
  `kelas` varchar(225) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tiket`
--

INSERT INTO `tiket` (`id_tiket`, `kelas`, `harga`, `stok`) VALUES
(1, 'All in One', 100000, 10),
(2, 'VVIP', 150000, 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `tanggal` int(11) NOT NULL,
  `status` enum('beli','bayar','batal','selesai') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_user`, `qty`, `tanggal`, `status`) VALUES
(11, 1, 2, 1577092619, 'beli'),
(12, 1, 5, 1577092963, 'beli'),
(13, 1, 5, 1577093141, 'beli'),
(14, 1, 4, 1577351037, 'beli'),
(15, 1, 2, 1580443931, 'beli'),
(16, 1, 1, 1580632450, 'beli'),
(17, 1, 1, 1580632577, 'beli'),
(18, 1, 2, 1580632854, 'beli'),
(19, 1, 1, 1580632905, 'beli'),
(20, 1, 2, 1580633425, 'beli'),
(21, 1, 1, 1580635448, 'beli'),
(22, 1, 4, 1580639256, 'beli'),
(23, 1, 3, 1580639316, 'beli'),
(24, 1, 2, 1580639461, 'beli'),
(25, 1, 5, 1580873895, 'beli');

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `nama_user` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `password` varchar(225) NOT NULL,
  `telepon` varchar(225) NOT NULL,
  `created_at` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id_user`, `nama_user`, `email`, `password`, `telepon`, `created_at`) VALUES
(1, 'Nanak', 'nanak@edan.com', 'nanak', '0898989767', 0),
(2, 'satrio', 'satrio@gmail.com', 'satrio', '089875687586', 20300702);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  ADD PRIMARY KEY (`id_detail_jadwal`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- Indexes for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD PRIMARY KEY (`id_detail`),
  ADD KEY `id_transaksi` (`id_transaksi`),
  ADD KEY `id_tiket` (`id_tiket`);

--
-- Indexes for table `dj`
--
ALTER TABLE `dj`
  ADD PRIMARY KEY (`id_dj`);

--
-- Indexes for table `editable`
--
ALTER TABLE `editable`
  ADD PRIMARY KEY (`id_event`);

--
-- Indexes for table `faq`
--
ALTER TABLE `faq`
  ADD PRIMARY KEY (`id_faq`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id_guest`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `sponsor`
--
ALTER TABLE `sponsor`
  ADD PRIMARY KEY (`id_sponsor`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`id_status`);

--
-- Indexes for table `talent`
--
ALTER TABLE `talent`
  ADD PRIMARY KEY (`id_talent`);

--
-- Indexes for table `tiket`
--
ALTER TABLE `tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  MODIFY `id_detail_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  MODIFY `id_detail` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;
--
-- AUTO_INCREMENT for table `dj`
--
ALTER TABLE `dj`
  MODIFY `id_dj` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `editable`
--
ALTER TABLE `editable`
  MODIFY `id_event` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `faq`
--
ALTER TABLE `faq`
  MODIFY `id_faq` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id_guest` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `sponsor`
--
ALTER TABLE `sponsor`
  MODIFY `id_sponsor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `status`
--
ALTER TABLE `status`
  MODIFY `id_status` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `talent`
--
ALTER TABLE `talent`
  MODIFY `id_talent` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tiket`
--
ALTER TABLE `tiket`
  MODIFY `id_tiket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`id_status`) REFERENCES `status` (`id_status`);

--
-- Ketidakleluasaan untuk tabel `detail_jadwal`
--
ALTER TABLE `detail_jadwal`
  ADD CONSTRAINT `detail_jadwal_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `detail_transaksi`
--
ALTER TABLE `detail_transaksi`
  ADD CONSTRAINT `detail_transaksi_ibfk_2` FOREIGN KEY (`id_transaksi`) REFERENCES `transaksi` (`id_transaksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detail_transaksi_ibfk_3` FOREIGN KEY (`id_tiket`) REFERENCES `tiket` (`id_tiket`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
