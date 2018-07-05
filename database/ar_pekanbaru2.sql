-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2017 at 06:05 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ar_pekanbaru`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE IF NOT EXISTS `tb_berita` (
`id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `tanggal` datetime NOT NULL,
  `isi` text NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`id`, `judul`, `tanggal`, `isi`, `gambar`) VALUES
(1, 'AR LACAK - Aplikasi Smart Lapor Kecelakaan 2017', '2017-12-01 22:11:45', '\r\n\\t\\tDi Indonesia kecelakaan lalu lintas merupakan hal yang membutuhkan perhatian serius. Selain rendahnya kesadaran hukum pengguna jalan dalam berlalu lintas, rendahnya pengetahuan masyarakat mengenai prosedur pelaporan suatu kejadian perkara ketika terjadi kecelakaan juga menjadi kendala tersendiri bagi pihak kepolisian.\r\n\r\n\\t\\tTak jarang pihak kepolisian kesulitan untuk melakukan olah tempat kejadian perkara (TKP) yang meliputi pencarian saksi dan reka ulang kejadian. Hal tersebut juga berdampak pada korban kecelakaan yang pada akhirnya kesulitan untuk memperoleh pelayanan asuransi kecelakaan dari Jasa Raharja. Untuk itu dirancang sebuah Aplikasi Smart Lapor Kecelakaan. Aplikasi yang dibangun  terdiri dari aplikasi Android untuk pengguna dan Sistem web yang akan dioperasikan oleh administrator. Dalam melakukan perancangan aplikasi dilakukan analisa dengan alat bantu skema yaitu Unified Modeling of Language (UML) yang meliputi Use Case Diagram, Activity Diagram, dan Sequence Diagram.\r\n\r\n\\t\\tAplikasi yang telah dibangun diharapkan dapat mempercepat dan memudahkan proses pelaporan kecelakaan sehingga mendapatkan hasil yang lebih baik dan akurat.\r\n\r\nBest regards,\r\nAR Lacak-admin', '1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE IF NOT EXISTS `tb_kategori` (
`id_kategori` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama`, `keterangan`) VALUES
(-1, 'root', 'root'),
(1, 'laka', 'Kecelakaan'),
(2, 'kriminal', 'Kriminal'),
(4, 'penemuan', 'Penemuan'),
(5, 'saran', 'Saran');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kecelakaan`
--

CREATE TABLE IF NOT EXISTS `tb_kecelakaan` (
`id_kecelekaan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `waktu_pelaporan` datetime NOT NULL,
  `detail` text NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `deskripsi` text,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=231 ;

--
-- Dumping data for table `tb_kecelakaan`
--

INSERT INTO `tb_kecelakaan` (`id_kecelekaan`, `id_user`, `lokasi`, `foto`, `waktu_pelaporan`, `detail`, `lat`, `lng`, `deskripsi`, `id_kategori`) VALUES
(177, 35, 'psi uin suska', 'laka1230.png', '2017-11-30 10:26:53', 'abang ganteng', 0.46744771861995615, 101.35510465227735, '', 1),
(178, 22, 'jl subrantas', 'laka2520.png', '2017-11-30 13:29:51', 'avanza', 0.45867833333333335, 101.35704166666667, '', 1),
(179, 22, 'jl subrantas', 'laka2520.png', '2017-11-30 13:29:51', 'avanza', 0.4587233333333333, 101.35711666666666, '', 1),
(180, 22, 'depan uin', 'laka4404.png', '2017-11-30 13:30:36', 'tmp', 0.4605866666666667, 101.35806666666667, '', 2),
(181, 22, 'uin', 'laka8732.png', '2017-11-30 13:31:19', 'rektorat', 0.4631433333333333, 101.35659499999998, '', 2),
(182, 22, 'uin', 'laka957.png', '2017-12-11 13:32:08', 'mesjid uin', 0.465325, 101.35612666666665, '', 4),
(183, 22, 'uin', 'laka2608.png', '2017-11-30 13:32:37', 'islamic center', 0.4663833333333333, 101.35626833333332, '', 4),
(184, 22, 'depan fst', 'laka6945.png', '2017-11-30 13:35:52', 'jupiter mx', 0.4680683333333333, 101.35533833333332, '', 4),
(185, 34, 'apid', 'laka3503.png', '2017-11-30 14:24:56', 'kdbdb', 0.46852515, 101.35575121, '', 4),
(186, 35, 'gb', 'laka6464.png', '2017-12-11 14:26:23', 'parkiran motor', 0.46855118228769177, 101.3556979988336, '', 4),
(187, 22, 'mustamindo', 'laka7945.png', '2017-11-30 17:53:41', 'network provider', 0.4591281, 101.3545654, '', 2),
(188, 22, 'mustamindo', 'laka3626.png', '2017-11-30 19:26:37', 'elegant', 0.4601837, 101.3542551, '', 1),
(189, 22, 'perum darko', 'laka9089.png', '2017-11-30 20:35:00', 'besuk', 0.45371833333333333, 101.35774666666666, '', 1),
(190, 22, 'simp tabek', 'laka5761.png', '2017-11-30 21:01:14', 'mobil itam', 0.46419166666666667, 101.39532333333334, '', 2),
(191, 22, 'depan riau pos', 'laka6131.png', '2017-11-30 21:03:51', 'avanza hitam', 0.4641966666666667, 101.40019333333333, '', 1),
(192, 22, 'sebelah koro-koro', 'laka2573.png', '2017-11-30 21:05:16', 'central panam elektronik', 0.4641733333333333, 101.40291666666666, '', 2),
(193, 22, 'jl lobak', 'laka7192.png', '2017-11-30 21:13:49', 'jalan jalan', 0.4795716666666667, 101.40861333333332, '', 2),
(194, 22, 'lobak', 'laka1784.png', '2017-11-30 21:17:00', 'sambal api', 0.4807133333333333, 101.41839333333334, '', 2),
(195, 22, 'simp ska', 'laka3460.png', '2017-11-30 21:21:47', 'simpang macet', 0.50018, 101.41929833333333, '', 2),
(196, 22, 'jl nangka', 'laka4624.png', '2017-11-30 21:24:48', 'atm mandiri', 0.5037666666666667, 101.42783, '', 1),
(197, 22, 'jl nangka', 'laka5054.png', '2017-11-30 21:39:33', 'bongkar pasang atop ', 0.5108316666666667, 101.44070666666667, '', 1),
(198, 34, 'jalani aja dulu', 'laka6800.png', '2017-12-01 19:21:21', 'susah move on', 0.4510109, 101.3664536, '', 1),
(199, 36, 'jl garuda sakti', 'laka5431.png', '2017-12-11 10:20:54', 'galaxy juice', 0.46756448, 101.36732332, '', 1),
(221, 2, 'local', 'asd.jgp', '2017-12-11 03:16:25', 'tes krimiinal', 1.123, 3.412, NULL, 2),
(223, 1, 'local', '1.jgp', '2017-12-11 17:20:00', 'testing laka', 1, 2, 'terjadi\nsekitar 2 menit yang lalu', 2),
(224, 1, 'local', '1.jgp', '2017-12-11 17:20:00', 'testing laka', 1, 2, 'terjadi\nsekitar 2 menit yang lalu', 4),
(225, 42, 'pustaka fakultas', 'laka3803.png', '2017-12-14 10:17:05', 'terciduk heking bakend', 0.4679235, 101.3559662, 'seorang mahasiswa, tembem, ucul.', 2),
(226, 42, 'pustaka uin', 'laka1835.png', '2017-12-14 11:22:18', 'maling wifi uin', 0.4679277, 101.3559634, 'badannya kurus kering', 2),
(227, 43, 'mustamindo', 'laka598.png', '2017-12-15 14:25:17', 'bimbingan laka', 0.4632683, 101.3549841, 'terjadi bimbingan sebentar', 1),
(228, 35, 'mustamindo', 'laka701.png', '2017-12-15 14:29:58', 'pencurian henpon', 0.4601092, 101.3542232, 'terjadi pencurian kecil kecilan', 2),
(229, 22, 'mustamindo', 'laka7828.png', '2017-12-16 07:27:56', 'terciduk buka cmd', 0.4601092, 101.3542232, 'laptop asus i7 7th gen, ram 4GB ddr4, hdd 1TB, nvidia geforce 930mx, 14 inci, layar silver.', 2),
(230, 36, 'perum trilogi', 'laka4220.png', '2017-12-17 21:15:05', 'laptop', 0.4696068, 101.3610128, 'i7', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_lokasi_penting`
--

CREATE TABLE IF NOT EXISTS `tb_lokasi_penting` (
`id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `streetAddress` varchar(255) NOT NULL,
  `lat` double NOT NULL,
  `lng` double NOT NULL,
  `altitude` int(11) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `number` varchar(20) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `tb_lokasi_penting`
--

INSERT INTO `tb_lokasi_penting` (`id`, `title`, `streetAddress`, `lat`, `lng`, `altitude`, `deskripsi`, `number`, `image`) VALUES
(2, 'Polsek Sukajadi', 'Jl. Rajawali/Ababil Sukajadi, Kp. Melayu, Sukajadi, Kota Pekanbaru, Riau 28122', 0.5140479, 101.433815, 0, 'Kantor kepolisian sektor sukajadi', '076137075', 'polsek/2.jpg'),
(3, 'Polsek Tenayan Raya', 'Jl. Lintas Timur, Kulim, Tenayan Raya, Kulim, Kota', 0.475182, 101.515852, 10, 'Kantor kepolisian sektor tenan raya', '07614840924', 'polsek/3.jpg'),
(5, 'Polsek Bukit Raya', 'Jl. Jend Sudirman No.101', 0.499733, 101.454098, 0, 'Polisi Sektor Kota Bukit Raya', '0761101454098', 'polsek/5.jpg'),
(6, 'Polsek Pekanbaru Kota', 'Tanah Datar, Pekanbaru Kota, Kota Pekanbaru, Riau 28115', 0.5222099, 101.44683, 0, 'Kantor kepolisan sektor pekanbaru kota.', '0811752110', 'polsek/6.jpg'),
(7, 'Pos Gurindam 02', 'Jl. Jend Sudirman - T. Tambusai', 0.51045517, 101.44945845, 0, 'Pos Gurindam', '0761', 'polsek/7.jpg'),
(29, 'Pos Gurindam 5', 'Labuh Baru Barat, Payung Sekaki, Pekanbaru City, Riau 28292, Indonesia', 0.50076607, 101.4189557, 10, 'Pos Polisi Simpang SKA', '0761', 'polsek/29.jpg'),
(30, 'Polsek Tampan', 'Jl. HR Subrantas Gg. Keluarga, Simpang Baru, Tampan, Kota Pekanbaru, Riau 28293', 0.4651159, 101.3879237, 0, 'Kantor Kepolisian Sektor Kampar', '076164110', 'polsek/30.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_notifikasi`
--

CREATE TABLE IF NOT EXISTS `tb_notifikasi` (
  `id_kecelakaan` int(11) NOT NULL,
  `sudah_dibaca` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_notifikasi`
--

INSERT INTO `tb_notifikasi` (`id_kecelakaan`, `sudah_dibaca`) VALUES
(177, 0),
(178, 1),
(179, 0),
(180, 1),
(181, 0),
(182, 1),
(183, 0),
(184, 0),
(185, 0),
(186, 1),
(187, 1),
(188, 0),
(189, 1),
(190, 1),
(191, 1),
(192, 1),
(193, 1),
(194, 1),
(195, 1),
(196, 1),
(197, 1),
(198, 1),
(199, 1),
(221, 1),
(223, 0),
(224, 0),
(225, 1),
(226, 1),
(227, 1),
(228, 1),
(229, 1),
(230, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
`id_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nik` varchar(20) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `tempat_lahir` varchar(20) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `no_hp` varchar(15) NOT NULL,
  `foto` varchar(255) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `nik`, `nama_lengkap`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `alamat`, `pekerjaan`, `email`, `agama`, `no_hp`, `foto`) VALUES
(1, 'radinal', 'd48b87082d089e410fbf2c89e0eddbcf5707e1de', '1212', 'radinal aja', 'rengat', '1996-11-29', 'L', 'asjdhsajd', 'ASJDNASJ', 'radinal@google.com', 'islam', '', ''),
(2, 'adryan', 'fd46e6c7a7e96abc66c92de6e60df4f81d5eea70', '1145', 'Adryan Eka', 'tembilahan', '1995-10-02', 'L', 'Jl. Melati', 'Mahasiswa', 'adryan.eka.vandra@yahoo.com', 'Islam', '', ''),
(3, 'adr', 'd121dbfb8bb60587ca30d1a996ba5b6dd7fd4c34', '1145', 'adr', 'rengat', '2010-11-11', 'L', 'jl.', 'pns', 'adr@adr.com', 'islam', '', ''),
(4, 'ratih', 'ad9b746cb7e8bb62d96232e7268b8219a97e4dad', '1401119211', 'ratih sanima', 'Rengat', '1996-11-15', 'P', 'jl. rawa bening', 'Mahasiswa', 'ratihsanima@gmail.com', 'Islam', '', ''),
(5, 'apwira', 'bht57ptk', '1403112226', 'Agus Prawira', 'airmolek', '1996-08-17', 'L', 'jl.melati indah', 'Mahasiswa', 'mb.prawira@gmail.com', 'Islam', '', ''),
(7, 'dian', 'dian', '11451101941', 'Dian Afrian', 'sibolga', '1997-02-02', 'L', 'jl.  manunggal', 'Mahasiswa', 'dian@gmail.com', 'Islam', '', ''),
(9, 'rian', 'rian', '114', 'rian', 'medan', '1996-01-01', 'L', 'jl manunghal', 'pns', 'rian@google.com', 'islam', '', ''),
(10, 'ali', '12345', '123', 'ali', 'rumahsakit', '0000-00-00', 'l', 'Pku', 'ok', 'aliok', 'islam', '', ''),
(11, 'admin', '12345678', '1000', 'adr', 'remote', '0000-00-00', 'L', 'asik', 'kuli coding', 'admin@a.com', 'Islam', '', ''),
(12, 'adryan', 'adryan', '4886794', 'ajshd', 'ehxb', '0000-00-00', 'l', 'kuliah', 'kuli koding', 'ajsbdk', 'Islam', '', ''),
(13, 'dinal', '$2a$10$JTSXteqmU.y4BGrO7PXJku9f5JPpuggdhiXqJzsQfbcFjC/oITKs2', '1145', 'din', 'asd', '2016-12-30', 'l', 'jdsof', 'jsdof', 'dnjf', 'dasf', '', ''),
(15, 'nurkholis', 'nurkholis', '1145', 'nurkholis', 'tebing tinggi', '0000-00-00', 'L', 'kampar', 'mahasiswa', 'nur@kholis.com', 'islam', '', ''),
(17, 'oki', 'b49458a3171c65d27eea97c7a221fbf14dbacac6', '1145', 'oki', 'pekanbaru', '1996-01-01', 'L', 'pandau', 'mahasiswa', 'oki@prianto.com', 'islam', '', ''),
(18, 'rafi', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', '1145', 'rafi', 'rengat', '1996-11-11', 'L', 'jl hr subrantas', 'mahasiswa', 'rafi@gmail.com', 'islam', '', ''),
(19, 'tyo', '40325aff382f5a7c776d9ee142d056ae4f64d9e3', '1145', 'Tyo n', 'bayas', '1996-01-01', 'L', 'jl manunggal', 'mahasiswa', 'tyo@gmail.com', 'islam', '', ''),
(20, 'shd', '86f7e437faa5a7fce15d1ddcb9eaeaea377667b8', '9595', 'bzbz', 'nab', '2011-11-11', 'l', 'nzhs', 'p', 'bd', 'w', '', ''),
(22, 'dian', '06dbf79c9eb722f43ab495cd5f6dc7fcea841e5d', '1145', 'dian afrian', 'sibolga', '1996-10-10', 'L', 'mustamindo', 'mahasiswa', 'dian@gmail.com', 'islam', '', ''),
(23, 'radi', '246494cea8de798c118c45708b65e9a642f7ed48', '1456807965', 'sumiradi', 'pekanlama', '1996-01-01', 'l', 'jl. hangtuah', 'jualan', 'sumiradi@email.com', 'islam', '', ''),
(24, 'ali', '7c4a8d09ca3762af61e59520943dc26494f8941b', '123', 'ali', 'ok', '1990-01-01', 'l', 'Ok', 'gk', 'ali@ok', 'islam', '', ''),
(25, 'ali', '7c222fb2927d828af22f592134e8932480637c0d', '1254452', 'ali usman', 'pku', '2001-02-01', 'L', 'Pku', 'ojek', 'ali@gmail.com', 'islam', '', ''),
(27, 'dede', '8e65e20d4b7140a2e6ed067933d596228e46d380', '123', 'dede', 'pku', '2001-04-05', 'L', 'pku', 'siswa', 'dede@mail.com', 'islam', '', ''),
(28, 'randa', '8fb4b1073d1c288ae089ce8eb7ad0c16e478e919', '1145', 'randa', 'pekanbaru', '1999-01-08', 'L', 'pekanbaru', 'mahasiswa', 'randa@gmail.com', 'islam', '', ''),
(29, 'rafi', 'b5c3e091851f50070f5d8e12c5d3baec5c728043', '1145', 'rafi darwis', 'meranti', '1996-10-20', 'L', 'jl. taman karya', 'mahasiswa', 'rafi@gmail.com', 'Islam', '', ''),
(30, 'ayam', '08b970b6ec359b9bfb6374e83845c94c53897a04', '11451101781', 'ayam', 'tembilahan', '1996-05-09', 'L', 'jl ciptakarya', 'mahasiswa', 'ayam@gmail.com', 'islam', '', ''),
(31, 'ibalmard', '5cec175b165e3d5e62c9e13ce848ef6feac81bff', '11451106251', 'Muhammad Iqbal Mardhotillah', 'Pekanbaru', '1994-09-29', 'P', 'Jalan Merpati Sakti, Gg. Punai', 'Mahasiswa', 'iqbalmardhotillah29@gmail.com ', 'Islan', '', ''),
(32, 'olis', 'be77662493fbf4a05db0445d25b96c5efa1217c3', '11451101572', 'olis', 'padang mutung', '0000-00-00', 'L', 'pl.tinggi', 'kantoran', 'nurkholis_tif@yahoo.com', 'islam', '', ''),
(33, 'gilangtriwijaya', '0a1a681cbeb58d5fb6f34b4c3eb09c2806beca4e', '1401010610960002', 'Gilang Tri Wijaya', 'bangkinang', '1996-10-06', 'L', 'bangkinang', 'Mahasiswa', 'gilangtriwijaya96@gmail.com', 'Islam', '', ''),
(34, 'myhafiezers', '9e9bbce01806f4967e4a7174d8c72d8a342572da', '16482319482648461826', 'Alhafiz', 'medan', '1996-05-03', 'L', 'jalan sepakat', 'Mahasiswa', 'hafiezpber@gmail.com', 'Islam', '', ''),
(35, 'ebi', 'b75492472f903a1b0d989e21ea4f6f23b25e79f9', '1145', 'rizky febri', 'pekanbaru', '1997-02-17', 'L', 'palas', 'mahasiswa', 'ebi@mail.com', 'islam', '', ''),
(36, 'ali', 'b42a6d93d796915222f6ffb2ffdd6137d93c1cdb', '1145', 'mhd ali usman hsb', 'sibolga', '1995-01-01', 'L', 'jl hr subrantas perum trilogi', 'mahasiswa ', 'ali@mail.com', 'islam', '', ''),
(37, 'rafiud', 'b80f80ba46a156140d2356d504ee1ccd261875dc', '11451105857', 'rafiuddarojat', 'rengat', '0000-00-00', 'l', 'jln.h.r.subrantas', 'mahasiswa', 'rafi.uddarojat@gmail.com', 'islam', '', ''),
(38, 'rafiud', 'b80f80ba46a156140d2356d504ee1ccd261875dc', '11451105857', 'rafiuddarojat', 'rengat', '0000-00-00', 'l', 'jln.h.r.subrantas', 'mahasiswa', 'rafi.uddarojat@gmail.com', 'islam', '', ''),
(39, 'ridho', 'fdccfe1ccc75f260ccba3ea2351e86178f54127c', '1145', 'ridho alfathan', 'pulau kijang', '1996-01-01', 'L', 'jl manunggal', 'mahasiswa', 'ridho@mail.com', 'islam', '', ''),
(41, 'dada', 'fedd1d1122aa65028c81e16ceb85d9c73790a2fa', '12321', 'dada dodo', 'bangkinang barat', '2017-01-01', 'L', 'mustamindo F7', 'mahasiswa', 'dodo@dada.com', 'islam', '081234567890', '123.jgp'),
(42, 'mokhtar19', 'bac7e95560e964cb102fb03dcc246db85a565f8a', '11451104935', 'mokhtar', 'pekanbaru', '1996-02-19', 'l', 'jl. rawa indah', 'mahasiswa', 'mokhtarpoenya19@gmail.com', 'islam', '', ''),
(43, 'akim', '30e7475c237e75ed0799d0bef8166c1fa657ac09', '1145', 'imam alhakim', 'baganbatu', '1996-01-01', 'L', 'jl subrantas', 'mahasiswa', 'akim@mail.com', 'islam', '0812345678', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_web_user`
--

CREATE TABLE IF NOT EXISTS `tb_web_user` (
`id_web_user` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `no_identitas` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `id_kategori` int(11) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `tb_web_user`
--

INSERT INTO `tb_web_user` (`id_web_user`, `username`, `password`, `nama_lengkap`, `no_identitas`, `email`, `id_kategori`) VALUES
(15, 'root', '$2a$10$Lj.fEfo8Q7oBjKDCGloy7eD3vwZH3ruPYT6VgpzyLihfWP0adDkTK', 'Akun Root', '123', 'root@arlacak.com', -1),
(16, 'dwiki', '$2a$10$7c.whu.Go3v8PpejlRqPvOvFTbfYEWIU0KJD6rK5FTY8W1/VNX5hS', 'dwiki', '3210', 'dwiki@arlacak.com', 1),
(18, 'jajan', '$2a$10$lc9CNemYc5cEg/10jmFPq.zsoc6qB7FtmzTyQpfVZl6dgjw3Jzk7W', 'jajan', '312', 'jjajan@mail.comm', 2),
(20, 'jijin', '$2a$10$FlTPPnfdX5jA5fwo4g4Ps.MmekVOJ7cCNYvp6Wwa1OeeW2RTce0em', 'jijin', '321', 'jijin@as.om', 4),
(22, 'tyo', '$2a$10$X8GfIsA3RBA9eBZxAsowPOU7k0HZb3.lbLGpIbLjJf7492vQvMEDe', 'tyo', '345', 'tyo', 4),
(23, 'jojon', '$2a$10$AXu4ISgVnhDEq0nlVHYz6.TzKoIVghc0bK/DeUF0NiSdfDf.prpzS', 'jojon', '123', 'jojon@.mail.com', 5);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_berita`
--
ALTER TABLE `tb_berita`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kecelakaan`
--
ALTER TABLE `tb_kecelakaan`
 ADD PRIMARY KEY (`id_kecelekaan`), ADD KEY `fk_userkecelakaan` (`id_user`), ADD KEY `FK_KategoriKecelakaan` (`id_kategori`);

--
-- Indexes for table `tb_lokasi_penting`
--
ALTER TABLE `tb_lokasi_penting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_notifikasi`
--
ALTER TABLE `tb_notifikasi`
 ADD PRIMARY KEY (`id_kecelakaan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
 ADD PRIMARY KEY (`id_user`);

--
-- Indexes for table `tb_web_user`
--
ALTER TABLE `tb_web_user`
 ADD PRIMARY KEY (`id_web_user`), ADD KEY `FK_KategoriWebuser` (`id_kategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_berita`
--
ALTER TABLE `tb_berita`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tb_kecelakaan`
--
ALTER TABLE `tb_kecelakaan`
MODIFY `id_kecelekaan` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `tb_lokasi_penting`
--
ALTER TABLE `tb_lokasi_penting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `tb_web_user`
--
ALTER TABLE `tb_web_user`
MODIFY `id_web_user` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_kecelakaan`
--
ALTER TABLE `tb_kecelakaan`
ADD CONSTRAINT `FK_KategoriKecelakaan` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_kecelakaan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_kecelakaan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_kecelakaan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_kecelakaan_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_notifikasi`
--
ALTER TABLE `tb_notifikasi`
ADD CONSTRAINT `tb_notifikasi_ibfk_1` FOREIGN KEY (`id_kecelakaan`) REFERENCES `tb_kecelakaan` (`id_kecelekaan`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `tb_notifikasi_ibfk_2` FOREIGN KEY (`id_kecelakaan`) REFERENCES `tb_kecelakaan` (`id_kecelekaan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_web_user`
--
ALTER TABLE `tb_web_user`
ADD CONSTRAINT `FK_KategoriWebuser` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
