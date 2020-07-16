-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 16, 2020 at 11:39 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sita`
--

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `nip` varchar(11) NOT NULL DEFAULT '',
  `nidn` int(11) DEFAULT NULL,
  `nik` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL DEFAULT '',
  `gelar_depan` varchar(30) DEFAULT '',
  `gelar_belakang` varchar(30) DEFAULT '',
  `tempat` varchar(30) DEFAULT '',
  `tgl_lahir` date DEFAULT NULL,
  `no_hp` varchar(12) DEFAULT '',
  `pend_s1` varchar(50) DEFAULT '',
  `pend_s2` varchar(50) DEFAULT '',
  `pend_s3` varchar(30) DEFAULT '',
  `bidang_ilmu` varchar(30) DEFAULT '',
  `alamat_pt` varchar(35) DEFAULT '',
  `asesor_1` varchar(50) DEFAULT '',
  `asesor_2` varchar(50) DEFAULT '',
  `email` varchar(30) DEFAULT '',
  `jab_fungsional` varchar(20) DEFAULT '',
  `jenis` varchar(30) DEFAULT '',
  `no_sertifikat` int(11) DEFAULT NULL,
  `foto_ktp` text DEFAULT NULL,
  `prodi` varchar(30) DEFAULT NULL,
  `jurusan` varchar(30) DEFAULT NULL,
  `nama_pt` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `id_user`, `nip`, `nidn`, `nik`, `nama`, `gelar_depan`, `gelar_belakang`, `tempat`, `tgl_lahir`, `no_hp`, `pend_s1`, `pend_s2`, `pend_s3`, `bidang_ilmu`, `alamat_pt`, `asesor_1`, `asesor_2`, `email`, `jab_fungsional`, `jenis`, `no_sertifikat`, `foto_ktp`, `prodi`, `jurusan`, `nama_pt`) VALUES
(7, 11, '19711110199', 10117109, 2147483647, 'Rudy Ariyanto', '', 'S.T., M.Cs.', 'Banyuwangi', '1971-10-07', '08123399764', 'Teknik Elektro, Universitas Brawijaya', 'Ilmu Komputer, Universitas Gajah Mada', '', 'Teknik Informatika', 'JL. Soekarno Hatta No. 9 Malang', 'Ir. Deddy Kusbianto P.A., MMKOM', 'Ekojono, ST., M.Kom', 'rudy@polinema.ac.id', 'Lektor Kepala', 'Dosen biasa', NULL, 'KTP2.jpg.jpg', 'Teknik Informatika', 'Teknologi Informasi', 'Politeknik Negeri Malang');

-- --------------------------------------------------------

--
-- Table structure for table `kb_pendidikan`
--

CREATE TABLE `kb_pendidikan` (
  `id_kbp` int(11) NOT NULL,
  `nomor_kbp` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_pendidikan`
--

INSERT INTO `kb_pendidikan` (`id_kbp`, `nomor_kbp`, `jenis_kegiatan`, `bk_buktipenugasan`, `bk_sks`, `masa_penugasan`, `kinerja_sks`, `semester`, `tahun_ajaran`, `rekomendasi`, `kb_dokumen`, `id_user`) VALUES
(44, '1', 'MK Dasar Pemrograman', '', 2, '6 Bulan', 2, '1', '2019/2020', 'Selesai', 'RA_ST 2019-2020.pdf', 11),
(45, '45', 'MK Praktikum Dasar Pemrograman', 'RA_ST 2019-2020.pdf', 2, '6 Bulan', 2, '1', '2019/2020', 'Selesai', 'RA_ST 2019-2020.pdf', 11);

-- --------------------------------------------------------

--
-- Table structure for table `kb_pendidikan_temp`
--

CREATE TABLE `kb_pendidikan_temp` (
  `id_kbp_temp` int(11) NOT NULL,
  `nomor_kbp` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kb_penelitian`
--

CREATE TABLE `kb_penelitian` (
  `id_kbpl` int(11) NOT NULL,
  `nomor_kbpl` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_penelitian`
--

INSERT INTO `kb_penelitian` (`id_kbpl`, `nomor_kbpl`, `jenis_kegiatan`, `bk_buktipenugasan`, `bk_sks`, `masa_penugasan`, `kinerja_sks`, `semester`, `tahun_ajaran`, `rekomendasi`, `kb_dokumen`, `id_user`) VALUES
(18, '1', 'Integrated Tracer Study Berdas', 'RA_Cahya, Rudy, Arie, Subhi.pdf', 1, '1 Tahun', 1, '1', '2019/2020', 'Selesai', 'RA_Cahya, Rudy, Arie, Subhi.pdf', 11),
(19, '19', 'Isemantic-UDINUS', 'RA_Efran, Cahya, Rudy.pdf', 1, '6 Bulan', 1, '1', '2019/2020', 'Selesai', 'RA_Efran, Cahya, Rudy.pdf', 11);

-- --------------------------------------------------------

--
-- Table structure for table `kb_penelitian_temp`
--

CREATE TABLE `kb_penelitian_temp` (
  `id_kbpl_temp` int(11) NOT NULL,
  `nomor_kbpl` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kb_pengabdian_masy`
--

CREATE TABLE `kb_pengabdian_masy` (
  `id_kbpm` int(11) NOT NULL,
  `nomor_kbpm` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_pengabdian_masy`
--

INSERT INTO `kb_pengabdian_masy` (`id_kbpm`, `nomor_kbpm`, `jenis_kegiatan`, `bk_buktipenugasan`, `bk_sks`, `masa_penugasan`, `kinerja_sks`, `semester`, `tahun_ajaran`, `rekomendasi`, `kb_dokumen`, `id_user`) VALUES
(12, '1', 'Pembuatan Website dan Pelatiha', 'RA_ST Pengabdian.pdf', 1, '1 Tahun', 1, '1', '2019/2020', 'Selesai', 'RA_ST Pengabdian.pdf', 11);

-- --------------------------------------------------------

--
-- Table structure for table `kb_pengabdian_masy_temp`
--

CREATE TABLE `kb_pengabdian_masy_temp` (
  `id_kbpm_temp` int(11) NOT NULL,
  `nomor_kbpm` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kb_penunjang_lain`
--

CREATE TABLE `kb_penunjang_lain` (
  `id_kbpn` int(11) NOT NULL,
  `nomor_kbpn` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `semester` varchar(15) NOT NULL,
  `tahun_ajaran` varchar(20) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kb_penunjang_lain`
--

INSERT INTO `kb_penunjang_lain` (`id_kbpn`, `nomor_kbpn`, `jenis_kegiatan`, `bk_buktipenugasan`, `bk_sks`, `masa_penugasan`, `kinerja_sks`, `semester`, `tahun_ajaran`, `rekomendasi`, `kb_dokumen`, `id_user`) VALUES
(23, '1', 'Panitia Pelaksanaan Tugas Akhi', '', 2, '1 Tahun', 2, '1', '2019/2020', 'Selesai', 'RA_Penunjang.pdf', 11),
(24, '24', '', 'RA_ST Pengabdian.pdf', 0, '', 0, '-- Please Selec', '-- Please Select --', '-- Please Select --', 'RA_ST Pengabdian.pdf', 11);

-- --------------------------------------------------------

--
-- Table structure for table `kb_penunjang_lain_temp`
--

CREATE TABLE `kb_penunjang_lain_temp` (
  `id_kbp_temp` int(11) NOT NULL,
  `nomor_kbpn` varchar(10) NOT NULL,
  `jenis_kegiatan` varchar(30) NOT NULL,
  `bk_buktipenugasan` text NOT NULL,
  `bk_sks` int(11) NOT NULL,
  `masa_penugasan` varchar(30) NOT NULL,
  `kinerja_sks` int(11) NOT NULL,
  `rekomendasi` varchar(30) NOT NULL,
  `kb_dokumen` text NOT NULL,
  `id_user` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `kewajiban_khusus`
--

CREATE TABLE `kewajiban_khusus` (
  `id_kewajiban` int(11) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `judul_karya` varchar(30) NOT NULL,
  `jenis_karya` varchar(20) NOT NULL,
  `forum_publikasi` text NOT NULL,
  `bukti_dokumen` text NOT NULL,
  `id_user` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id` int(11) NOT NULL,
  `url` varchar(450) DEFAULT NULL,
  `time` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `name` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id`, `url`, `time`, `name`, `status`) VALUES
(1, 'assets/poltek.png', '2020-07-16 06:40:52', 'poltek', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id` int(11) UNSIGNED NOT NULL,
  `tahun` varchar(30) DEFAULT NULL,
  `semester` varchar(30) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tahun_ajaran`
--

INSERT INTO `tahun_ajaran` (`id`, `tahun`, `semester`, `status`) VALUES
(2, '2019/2020', 'Genap', '1'),
(3, '2020/2021', 'Ganjil', '0');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(30) NOT NULL,
  `level` enum('admin','pegawai') DEFAULT NULL,
  `nama_user` varchar(30) DEFAULT NULL,
  `nip` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `level`, `nama_user`, `nip`) VALUES
(1, 'admin', 'admin', 'admin', 'Admin', '1234'),
(11, 'RudyAriyanto', '123123', 'pegawai', 'Rudy Ariyanto', 'Rudy Ariyanto');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`),
  ADD UNIQUE KEY `nip` (`nip`),
  ADD UNIQUE KEY `nidn` (`nidn`),
  ADD UNIQUE KEY `nik` (`nik`);

--
-- Indexes for table `kb_pendidikan`
--
ALTER TABLE `kb_pendidikan`
  ADD PRIMARY KEY (`id_kbp`);

--
-- Indexes for table `kb_pendidikan_temp`
--
ALTER TABLE `kb_pendidikan_temp`
  ADD PRIMARY KEY (`id_kbp_temp`);

--
-- Indexes for table `kb_penelitian`
--
ALTER TABLE `kb_penelitian`
  ADD PRIMARY KEY (`id_kbpl`);

--
-- Indexes for table `kb_penelitian_temp`
--
ALTER TABLE `kb_penelitian_temp`
  ADD PRIMARY KEY (`id_kbpl_temp`);

--
-- Indexes for table `kb_pengabdian_masy`
--
ALTER TABLE `kb_pengabdian_masy`
  ADD PRIMARY KEY (`id_kbpm`);

--
-- Indexes for table `kb_pengabdian_masy_temp`
--
ALTER TABLE `kb_pengabdian_masy_temp`
  ADD PRIMARY KEY (`id_kbpm_temp`);

--
-- Indexes for table `kb_penunjang_lain`
--
ALTER TABLE `kb_penunjang_lain`
  ADD PRIMARY KEY (`id_kbpn`);

--
-- Indexes for table `kb_penunjang_lain_temp`
--
ALTER TABLE `kb_penunjang_lain_temp`
  ADD PRIMARY KEY (`id_kbp_temp`);

--
-- Indexes for table `kewajiban_khusus`
--
ALTER TABLE `kewajiban_khusus`
  ADD PRIMARY KEY (`id_kewajiban`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `nip` (`nip`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `kb_pendidikan`
--
ALTER TABLE `kb_pendidikan`
  MODIFY `id_kbp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `kb_pendidikan_temp`
--
ALTER TABLE `kb_pendidikan_temp`
  MODIFY `id_kbp_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `kb_penelitian`
--
ALTER TABLE `kb_penelitian`
  MODIFY `id_kbpl` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kb_penelitian_temp`
--
ALTER TABLE `kb_penelitian_temp`
  MODIFY `id_kbpl_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `kb_pengabdian_masy`
--
ALTER TABLE `kb_pengabdian_masy`
  MODIFY `id_kbpm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `kb_pengabdian_masy_temp`
--
ALTER TABLE `kb_pengabdian_masy_temp`
  MODIFY `id_kbpm_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `kb_penunjang_lain`
--
ALTER TABLE `kb_penunjang_lain`
  MODIFY `id_kbpn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `kb_penunjang_lain_temp`
--
ALTER TABLE `kb_penunjang_lain_temp`
  MODIFY `id_kbp_temp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kewajiban_khusus`
--
ALTER TABLE `kewajiban_khusus`
  MODIFY `id_kewajiban` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
