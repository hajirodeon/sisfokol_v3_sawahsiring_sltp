-- phpMyAdmin SQL Dump
-- version 2.10.3
-- http://www.phpmyadmin.net
-- 
-- Host: localhost
-- Generation Time: Nov 14, 2010 at 10:44 AM
-- Server version: 5.1.41
-- PHP Version: 5.3.2-1ubuntu4

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

-- 
-- Database: `sisfokol_v3_sltp`
-- 

-- --------------------------------------------------------

-- 
-- Table structure for table `adminx`
-- 

CREATE TABLE `adminx` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL DEFAULT '',
  `passwordx` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `adminx`
-- 

INSERT INTO `adminx` (`kd`, `usernamex`, `passwordx`) VALUES ('e4ea2f7dfb2e5c51e38998599e90afc2', 'admin', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

-- 
-- Table structure for table `admin_ks`
-- 

CREATE TABLE `admin_ks` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_pegawai` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `admin_ks`
-- 

INSERT INTO `admin_ks` (`kd`, `kd_pegawai`) VALUES ('348bfd3c654a8dfb111be785507f8558', 'f8521322d5f22044ab5bf49de4a81b27');

-- --------------------------------------------------------

-- 
-- Table structure for table `admin_tu`
-- 

CREATE TABLE `admin_tu` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_pegawai` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `admin_tu`
-- 

INSERT INTO `admin_tu` (`kd`, `kd_pegawai`) VALUES ('e63f6d0b87685afcf3c8600361066bfe', '8cd74c008c54c1ed1731a3dbe055f935');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_brg`
-- 

CREATE TABLE `inv_brg` (
  `kd` varchar(50) NOT NULL,
  `kode` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_brg`
-- 

INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('89a604cca445fdaf05f223d48d1e2d8c', 'BR0001', 'Gunting');
INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('020919fb5a2e6034b8cabbe08ac1ba0d', 'BR0002', 'Penggaris Kayu Besar');
INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('c544d4968d73bea79164c352651734a5', 'BR0003', 'Papan Tulis');
INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('812f13b24e536dd9f7f184882e826401', 'BR0004', 'Meja Lipat');
INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('8f8f089be50be74bbef64102f2144eed', 'BR0005', 'Kursi Lipat');
INSERT INTO `inv_brg` (`kd`, `kode`, `nama`) VALUES ('40b414426795f13813766d784a407e79', '11', '11');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_brg_kelas`
-- 

CREATE TABLE `inv_brg_kelas` (
  `kd` varchar(50) NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `kd_kelas` varchar(50) NOT NULL,
  `jml` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_brg_kelas`
-- 

INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('59a653662b06a9859c20c7ab45d29f8a', '40b414426795f13813766d784a407e79', '27de8f38a90dd1755acd801abefcbb42', '');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('2d1a78aa7d56b8c4a4a363bbed7d4f38', '40b414426795f13813766d784a407e79', '2df89d4a12f44a5cc897d6814760687d', '1');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('fd1ffe9a90ae6dff1dc596805052cabb', '40b414426795f13813766d784a407e79', '3be17d09596cd245484fed3a4f5576eb', '');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('502007fad38507b807bf024ad4399c5c', '020919fb5a2e6034b8cabbe08ac1ba0d', '', '2');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('56abd4ed4eb981ff1cf946972ae56662', '89a604cca445fdaf05f223d48d1e2d8c', '', '2');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('98a51131daf3377185f24849260ea585', '89a604cca445fdaf05f223d48d1e2d8c', '27de8f38a90dd1755acd801abefcbb42', '5');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('137674f0200beff8c24ed4545d39bf3a', '020919fb5a2e6034b8cabbe08ac1ba0d', '', '1');
INSERT INTO `inv_brg_kelas` (`kd`, `kd_brg`, `kd_kelas`, `jml`) VALUES ('c588e709b0b8da1255f5ac1c30ab96df', '40b414426795f13813766d784a407e79', '', '6');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_brg_pengadaan`
-- 

CREATE TABLE `inv_brg_pengadaan` (
  `kd` varchar(50) NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `no_seri` varchar(50) NOT NULL,
  `merk` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `jenis_bahan` varchar(50) NOT NULL,
  `tahun_buat` varchar(4) NOT NULL,
  `tahun_beli` varchar(4) NOT NULL,
  `sumber_dana` varchar(50) NOT NULL,
  `jml` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_brg_pengadaan`
-- 

INSERT INTO `inv_brg_pengadaan` (`kd`, `kd_brg`, `no_seri`, `merk`, `model`, `jenis_bahan`, `tahun_buat`, `tahun_beli`, `sumber_dana`, `jml`) VALUES ('6ecfd685ad714907e603b565984e8631', '020919fb5a2e6034b8cabbe08ac1ba0d', '7', '6', '5', '4', '22', '3', '4', '6');
INSERT INTO `inv_brg_pengadaan` (`kd`, `kd_brg`, `no_seri`, `merk`, `model`, `jenis_bahan`, `tahun_buat`, `tahun_beli`, `sumber_dana`, `jml`) VALUES ('3a9b3acc803490fc7aef1b3eef0b19f4', '89a604cca445fdaf05f223d48d1e2d8c', '1234567', '1', '1', '1', '1', '1', '1', '10');
INSERT INTO `inv_brg_pengadaan` (`kd`, `kd_brg`, `no_seri`, `merk`, `model`, `jenis_bahan`, `tahun_buat`, `tahun_beli`, `sumber_dana`, `jml`) VALUES ('3a19d84ca1b823dd625e29690a42a6e5', '40b414426795f13813766d784a407e79', '1', '2', '3', '4', '5', '6', '78', '8');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_lab`
-- 

CREATE TABLE `inv_lab` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `lab` varchar(255) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_lab`
-- 

INSERT INTO `inv_lab` (`kd`, `lab`) VALUES ('c9d80946867450cc7b91a09061b4bb7b', 'Komputer');
INSERT INTO `inv_lab` (`kd`, `lab`) VALUES ('658bd3c4f4991b833046c2d34865c38b', 'Kimia');
INSERT INTO `inv_lab` (`kd`, `lab`) VALUES ('76fe41ffbdc7d350d79933d29b964237', 'Bahasa');
INSERT INTO `inv_lab` (`kd`, `lab`) VALUES ('00ed678a5f8c877227611637f45d7236', 'Biologi');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_peng_lab`
-- 

CREATE TABLE `inv_peng_lab` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_lab` varchar(50) NOT NULL DEFAULT '',
  `tgl` date NOT NULL DEFAULT '0000-00-00',
  `kd_jam` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_ruang` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_peng_lab`
-- 

INSERT INTO `inv_peng_lab` (`kd`, `kd_lab`, `tgl`, `kd_jam`, `kd_kelas`, `kd_ruang`) VALUES ('6856dbf9d08b8b4c91a84e044c459cb9', '00ed678a5f8c877227611637f45d7236', '2009-03-03', 'f341e7faba39e62971b3d538c92e82df', '3be17d09596cd245484fed3a4f5576eb', 'af2e94e92ff53b8592d7c1fdaf0c9edc');
INSERT INTO `inv_peng_lab` (`kd`, `kd_lab`, `tgl`, `kd_jam`, `kd_kelas`, `kd_ruang`) VALUES ('16ef06105c105528ed6b06fc1491bd6b', '76fe41ffbdc7d350d79933d29b964237', '2007-01-01', 'b049b4d3490463a7c3db3cea5fc1fa10', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733');
INSERT INTO `inv_peng_lab` (`kd`, `kd_lab`, `tgl`, `kd_jam`, `kd_kelas`, `kd_ruang`) VALUES ('f13bdca2c63c2b14c7554daa3ef1da97', '76fe41ffbdc7d350d79933d29b964237', '2007-01-05', 'b049b4d3490463a7c3db3cea5fc1fa10', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733');
INSERT INTO `inv_peng_lab` (`kd`, `kd_lab`, `tgl`, `kd_jam`, `kd_kelas`, `kd_ruang`) VALUES ('22b4788e7b18804870875113de68988b', 'c9d80946867450cc7b91a09061b4bb7b', '2008-02-02', '3be17d09596cd245484fed3a4f5576eb', '3be17d09596cd245484fed3a4f5576eb', 'b9f286b3403b958369e0ec3423f1a733');
INSERT INTO `inv_peng_lab` (`kd`, `kd_lab`, `tgl`, `kd_jam`, `kd_kelas`, `kd_ruang`) VALUES ('d6294112aa4c059d634f46d213797503', 'c9d80946867450cc7b91a09061b4bb7b', '2007-01-01', 'b049b4d3490463a7c3db3cea5fc1fa10', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733');

-- --------------------------------------------------------

-- 
-- Table structure for table `inv_stock`
-- 

CREATE TABLE `inv_stock` (
  `kd` varchar(50) NOT NULL,
  `kd_brg` varchar(50) NOT NULL,
  `jml` varchar(10) NOT NULL DEFAULT '0',
  `jml_bagus` varchar(10) NOT NULL DEFAULT '0',
  `jml_sedang` varchar(10) NOT NULL DEFAULT '0',
  `jml_rusak` varchar(10) NOT NULL DEFAULT '0',
  `jml_hilang` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `inv_stock`
-- 

INSERT INTO `inv_stock` (`kd`, `kd_brg`, `jml`, `jml_bagus`, `jml_sedang`, `jml_rusak`, `jml_hilang`) VALUES ('0b9b6096ed4b97bd8c1960850849ab27', '020919fb5a2e6034b8cabbe08ac1ba0d', '16', '7', '4', '3', '5');
INSERT INTO `inv_stock` (`kd`, `kd_brg`, `jml`, `jml_bagus`, `jml_sedang`, `jml_rusak`, `jml_hilang`) VALUES ('09110d343e3ed748fb1df60d996917c8', '89a604cca445fdaf05f223d48d1e2d8c', '10', '10', '0', '0', '0');
INSERT INTO `inv_stock` (`kd`, `kd_brg`, `jml`, `jml_bagus`, `jml_sedang`, `jml_rusak`, `jml_hilang`) VALUES ('a397e5bfe1822490268c5e8e7f659d4e', '40b414426795f13813766d784a407e79', '17', '17', '', '', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `jadwal`
-- 

CREATE TABLE `jadwal` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_ruang` varchar(50) NOT NULL DEFAULT '',
  `kd_hari` varchar(50) NOT NULL DEFAULT '',
  `kd_jam` varchar(50) NOT NULL DEFAULT '',
  `kd_guru_mapel` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `jadwal`
-- 

INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('36dba06c77aaf002485b418a1c68bbaa', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '3bd672f690029e9b72e83b8ad1b2f8ae', 'b049b4d3490463a7c3db3cea5fc1fa10', '8d7887e708e9022e535545ef7e8cdbda');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('48b69b81e01c53f988e0e301da5c9c60', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '3bd672f690029e9b72e83b8ad1b2f8ae', '3be17d09596cd245484fed3a4f5576eb', '01c4a367629fce625230d83ea8d0a4ec');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('9461cdb921e17b8874ce16f05e8db2a1', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '3bd672f690029e9b72e83b8ad1b2f8ae', 'f341e7faba39e62971b3d538c92e82df', '01c4a367629fce625230d83ea8d0a4ec');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('1b27f9b6e6abf459a6d62597c4dc2015', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '7d73752ca4d67f433696f6848afbb107', '21ddd50a146dfd554ddac33c19a21be5', 'b68e8711ad0c22383bf1434de795602d');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('cc4c77a70479e6823fcbead1384021f4', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'f88bd7a685a66f4f73219524c1f9e417', 'f341e7faba39e62971b3d538c92e82df', 'b68e8711ad0c22383bf1434de795602d');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('4aee91edad47f67126505223bdce845f', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b0f139e46f9efe22e22dba86f523d0fa', '3be17d09596cd245484fed3a4f5576eb', '8d7887e708e9022e535545ef7e8cdbda');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('ae7ca04f9e87df9545ba92ed6be2c475', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'd7c1803d15c88bd82eb4a702b57647f4', '4fcf418adddd67383212bc1d22c61e98', '73c1850e7a9a229b5303af4c5b484181');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('d49421eba6ec45a91d8f34601c024218', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '3bd672f690029e9b72e83b8ad1b2f8ae', '9b0001d3a5a4c413f0bb8e697b0e513f', 'dd5795cba4b4865fb0129c7030f7b156');
INSERT INTO `jadwal` (`kd`, `kd_tapel`, `kd_smt`, `kd_kelas`, `kd_ruang`, `kd_hari`, `kd_jam`, `kd_guru_mapel`) VALUES ('d49421eba6ec45a91d8f34601c024218', '2a771e8ba89dd288743d4839d61185bc', 'b060de380c57384744177849d22fb584', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '3bd672f690029e9b72e83b8ad1b2f8ae', 'f78e58e3d8d18775f418762e9426b43d', 'dd5795cba4b4865fb0129c7030f7b156');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_absensi`
-- 

CREATE TABLE `m_absensi` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `absensi` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_absensi`
-- 

INSERT INTO `m_absensi` (`kd`, `absensi`) VALUES ('d1e7c66e6fb18e8e8478c286ac485b44', 'Sakit');
INSERT INTO `m_absensi` (`kd`, `absensi`) VALUES ('1bb73a74f58b3ba76720a0f3ab332e59', 'Ijin');
INSERT INTO `m_absensi` (`kd`, `absensi`) VALUES ('4fcf418adddd67383212bc1d22c61e98', 'Tanpa Keterangan');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_agama`
-- 

CREATE TABLE `m_agama` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `agama` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_agama`
-- 

INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('1fa739bfa7fc7ff5ebbb1944c9c8084a', 'Islam');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('caa9acb7cdcdf3a49d26281ec61867f5', 'Kristen');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('13db0d7c61769bdbba15cd6d5f4c86f5', 'Katolik');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('f9dae408b40e9097a3fd7ce0cd2e4120', 'Budha');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('2e40a5fdb46adb1029fcc51d7571e48c', 'Hindu');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('ca2b29701f90679012558724658b1fc8', 'Kong Hu Chu');
INSERT INTO `m_agama` (`kd`, `agama`) VALUES ('49204f7eab33f980e6b98f0442a17640', 'Kepercayaan');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_akta`
-- 

CREATE TABLE `m_akta` (
  `kd` varchar(50) NOT NULL,
  `akta` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_akta`
-- 

INSERT INTO `m_akta` (`kd`, `akta`) VALUES ('20296bbc8d345279e7c3fc0413c4d60e', 'Akta 3');
INSERT INTO `m_akta` (`kd`, `akta`) VALUES ('fd4dc3aba82f486aa9c6ec60445ffa6b', 'Akta 4');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_ekstra`
-- 

CREATE TABLE `m_ekstra` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `ekstra` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_ekstra`
-- 

INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('3497319974c63ee32ca758f7d24b37b3', 'Kepanduan');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('0dc704879c3f55d88679abd6acd99d51', 'Tapak Suci');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('163c3b94b1707ba18bd8adb74587c179', 'Basket');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('40a9b1401bebc29d47f6fdb71ea603f8', 'Paskibra');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('76fcf4589702a0c082805f9678339788', 'Karate');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('e776d14ba18f49dd274ad45f2a27583a', 'PMR');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('951178296270eec3522cd7ffdbae4f3a', 'Tae Kwon Do');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('aaff4bcfcaa595218fbca83667c64c95', 'Kungfu');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('4f598504624dd39f0f3f7c759b7e86e2', 'Sepak Bola');
INSERT INTO `m_ekstra` (`kd`, `ekstra`) VALUES ('8058997b7cd574ba47173868f93facd7', 'Musik');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_golongan`
-- 

CREATE TABLE `m_golongan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `golongan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_golongan`
-- 

INSERT INTO `m_golongan` (`kd`, `golongan`) VALUES ('82ba4795616e0288f375a255db7ceffd', '1');
INSERT INTO `m_golongan` (`kd`, `golongan`) VALUES ('03d4e1d05551bc9934e133b25db47760', '2');
INSERT INTO `m_golongan` (`kd`, `golongan`) VALUES ('f294b10662da8af71146e265a3157cfb', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_guru`
-- 

CREATE TABLE `m_guru` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_pegawai` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_guru`
-- 

INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('c77f69ccdc6aad0910f23fd656c19261', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'fd81e50177b43431264d5a9c8499b2a9');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('7d73752ca4d67f433696f6848afbb107', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '8d804e81dcaa079c870be3138edf8006');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('0d4073aca49c4cbe0d441ba7b947a031', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '8ce91ca2473b2f64575ef9284bf36640');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('57aa3b059247cb6ded92fb69c723e8d6', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '3be17d09596cd245484fed3a4f5576eb');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('e0533a3c7e0d813195f095fc7217dc03', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '8581148fda4cba20aa220b5bea5585d5');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('fb80bfef3775adb38538ecee6b93be0f', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '8ce91ca2473b2f64575ef9284bf36640');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('f135cb913492af5b099a6e09cb57b3ab', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'edc5b859d5d26ed9c06a34ac72c2aed5');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('5437ac49120428e5b464ff492b030a2c', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '2df89d4a12f44a5cc897d6814760687d');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('8cbd5a2353c0813626de8960326748f7', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'fd81e50177b43431264d5a9c8499b2a9');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('4a8637c1ee34155315115fa4c8ffe609', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '8d804e81dcaa079c870be3138edf8006');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('4f9b10765aa44810f098333aa3f1fbce', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', 'edc5b859d5d26ed9c06a34ac72c2aed5');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('0513aa22c98841121f05d3952febea98', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', '8581148fda4cba20aa220b5bea5585d5');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('50691f531e155f82474ae005461127cd', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', '2df89d4a12f44a5cc897d6814760687d');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('97aacd5fe0789b7c859d79c99af133d9', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', '8ce91ca2473b2f64575ef9284bf36640');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('452446d904e8370fc0d6d911686a0ce0', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', '8d804e81dcaa079c870be3138edf8006');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('463525d6ec375887e546d4ee250f4c2b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '3be17d09596cd245484fed3a4f5576eb');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('f5a1d68f40e868a0f92b0d6c7991ea6a', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '2df89d4a12f44a5cc897d6814760687d');
INSERT INTO `m_guru` (`kd`, `kd_tapel`, `kd_kelas`, `kd_pegawai`) VALUES ('3f735050e15a091defe648c4d9847ddb', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '9f545dc8f390f4c8c779bb25c326cbb3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_guru_mapel`
-- 

CREATE TABLE `m_guru_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_guru` varchar(50) NOT NULL DEFAULT '',
  `kd_ruang` varchar(50) NOT NULL DEFAULT '',
  `kd_mapel` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_guru_mapel`
-- 

INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('298e289af25f55d318abdfc191198530', '3d0ecba6af6b76496a9bad0fff80af43', 'b9f286b3403b958369e0ec3423f1a733', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('f0fdd8df809f4a55f84f2d2d6363e7a1', '5c5b76553d21e1aa2bcbbd55aec09b41', 'b9f286b3403b958369e0ec3423f1a733', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('21ddd50a146dfd554ddac33c19a21be5', '3d0ecba6af6b76496a9bad0fff80af43', 'b9f286b3403b958369e0ec3423f1a733', 'fc76ca9f6ebcf0f34ab21b55cefdb912');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('59a44dc24088badd73202367003e7064', '5c5b76553d21e1aa2bcbbd55aec09b41', 'b9f286b3403b958369e0ec3423f1a733', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('07e77cfcac013c4a011b50d521611b3e', '1bb73a74f58b3ba76720a0f3ab332e59', '75b107399d4a2d26ccdc4817f8c7c8ed', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('3bd672f690029e9b72e83b8ad1b2f8ae', '29dfb4f490cf1855897561d5d6fdf59d', 'b9f286b3403b958369e0ec3423f1a733', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('33a7d0150879ab43089e531039c2d60c', '2ac3f4b47d993636357ab698e36a167f', 'b9f286b3403b958369e0ec3423f1a733', '6e09ea4152ea4e26c83f7d60c3c37be6');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('38a80108a0594a2cb9bbe34b036538a6', '2ac3f4b47d993636357ab698e36a167f', 'b9f286b3403b958369e0ec3423f1a733', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('e3153e17980b9a118145948cdd2d884a', 'aa947a10c3177f11379ce9fd1f5976f6', 'b9f286b3403b958369e0ec3423f1a733', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('98c1a7a2e6013a128168cb9be449ca8c', 'dc40e589d2b506ed0b86c47346fe68ce', 'b9f286b3403b958369e0ec3423f1a733', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('52355c293be55acda94f62f81631e755', '306deafc4624b7016706b0484964c99d', 'b9f286b3403b958369e0ec3423f1a733', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('0ea6f9fa1b303efcefcec9d2a9deb351', 'dc40e589d2b506ed0b86c47346fe68ce', 'b9f286b3403b958369e0ec3423f1a733', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('4d6f161735e1081c3c00c8d3666896ba', '29dfb4f490cf1855897561d5d6fdf59d', '75b107399d4a2d26ccdc4817f8c7c8ed', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('0e1ece3d552f2a2093df270b7ab30caf', '29dfb4f490cf1855897561d5d6fdf59d', '4b011fa0d4299e61fc27b1fa1432a1b4', '50bae4d47d12fa0cf23403a12f34be0d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('7274d1cb7966b62fa48beca3d67e5d99', 'e94ce13d82a4cecc43d04854029cf048', 'b9f286b3403b958369e0ec3423f1a733', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('7e42d9ac3ac4577368ab725d161e2672', 'e94ce13d82a4cecc43d04854029cf048', 'b9f286b3403b958369e0ec3423f1a733', '6e09ea4152ea4e26c83f7d60c3c37be6');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('1e452ea94e0e03e368859a95f3da6ab3', 'e94ce13d82a4cecc43d04854029cf048', 'af2e94e92ff53b8592d7c1fdaf0c9edc', '558dc5761abfa074e9b9f6ef52499a4d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('d5541046a0181da6c4c4142893f9db63', '2b80ca30c19541c6299cb39435fcff32', '75b107399d4a2d26ccdc4817f8c7c8ed', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('5853fa7283cfd3999e6a0969dd13431e', 'e94ce13d82a4cecc43d04854029cf048', 'b9f286b3403b958369e0ec3423f1a733', '558dc5761abfa074e9b9f6ef52499a4d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('b0f139e46f9efe22e22dba86f523d0fa', 'aa947a10c3177f11379ce9fd1f5976f6', 'b9f286b3403b958369e0ec3423f1a733', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('5e3e35497db28a58d7b8fb92baed035f', 'aa947a10c3177f11379ce9fd1f5976f6', 'b9f286b3403b958369e0ec3423f1a733', '50bae4d47d12fa0cf23403a12f34be0d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('b68e8711ad0c22383bf1434de795602d', 'c77f69ccdc6aad0910f23fd656c19261', 'b9f286b3403b958369e0ec3423f1a733', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('01c4a367629fce625230d83ea8d0a4ec', '0d4073aca49c4cbe0d441ba7b947a031', 'b9f286b3403b958369e0ec3423f1a733', '50bae4d47d12fa0cf23403a12f34be0d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('8d7887e708e9022e535545ef7e8cdbda', '7d73752ca4d67f433696f6848afbb107', 'b9f286b3403b958369e0ec3423f1a733', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('af07d1bd4b01753703b238d620b85899', '0d4073aca49c4cbe0d441ba7b947a031', 'b9f286b3403b958369e0ec3423f1a733', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('af51c232b6591c3734ba21e8a16ed3ed', '7d73752ca4d67f433696f6848afbb107', 'b9f286b3403b958369e0ec3423f1a733', 'c89e31c6134d92194320f6661e446dfb');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('eb5b43f50d4d178d78beba3acba6c890', '7d73752ca4d67f433696f6848afbb107', '75b107399d4a2d26ccdc4817f8c7c8ed', 'c89e31c6134d92194320f6661e446dfb');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('ac5a3b8d248cd5dd1ac8ed45b122aec8', '7d73752ca4d67f433696f6848afbb107', 'b9f286b3403b958369e0ec3423f1a733', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('73c1850e7a9a229b5303af4c5b484181', '463525d6ec375887e546d4ee250f4c2b', 'b9f286b3403b958369e0ec3423f1a733', 'c89e31c6134d92194320f6661e446dfb');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('494b1d74c6eecf755128fa531cb83892', 'c77f69ccdc6aad0910f23fd656c19261', 'b9f286b3403b958369e0ec3423f1a733', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('15c729ca83a74e52d0960d2a434f1daf', 'c77f69ccdc6aad0910f23fd656c19261', 'b9f286b3403b958369e0ec3423f1a733', 'c89e31c6134d92194320f6661e446dfb');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('dd5795cba4b4865fb0129c7030f7b156', '0d4073aca49c4cbe0d441ba7b947a031', 'b9f286b3403b958369e0ec3423f1a733', '8c5d87f3695190b00ffc7ab43e8aed24');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('0e40db71cc55f7fbb1f94915a52b2431', 'c77f69ccdc6aad0910f23fd656c19261', 'b9f286b3403b958369e0ec3423f1a733', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('d5ef76383ad403ad20a1434cd3dbc876', 'e0533a3c7e0d813195f095fc7217dc03', 'af2e94e92ff53b8592d7c1fdaf0c9edc', '777d350703dbd13d393a90457c6e9201');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('ab3ad5e02a0a9cb3858a3ce08cb3b2ce', '0d4073aca49c4cbe0d441ba7b947a031', 'b9f286b3403b958369e0ec3423f1a733', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('4e6b61597240b652b0c82d8dcfbd536c', '4a8637c1ee34155315115fa4c8ffe609', 'af2e94e92ff53b8592d7c1fdaf0c9edc', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_guru_mapel` (`kd`, `kd_guru`, `kd_ruang`, `kd_mapel`) VALUES ('b24d33dce54bcb055cc58a77114181c2', '4a8637c1ee34155315115fa4c8ffe609', '75b107399d4a2d26ccdc4817f8c7c8ed', '39dbbf4078f620cd28d241706729e457');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_hari`
-- 

CREATE TABLE `m_hari` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `no` char(1) NOT NULL DEFAULT '',
  `hari` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_hari`
-- 

INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('3bd672f690029e9b72e83b8ad1b2f8ae', '1', 'Senin');
INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('d7c1803d15c88bd82eb4a702b57647f4', '2', 'Selasa');
INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('7d73752ca4d67f433696f6848afbb107', '3', 'Rabu');
INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('f88bd7a685a66f4f73219524c1f9e417', '4', 'Kamis');
INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('4fcf418adddd67383212bc1d22c61e98', '5', 'Jum''at');
INSERT INTO `m_hari` (`kd`, `no`, `hari`) VALUES ('b0f139e46f9efe22e22dba86f523d0fa', '6', 'Sabtu');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_ijazah`
-- 

CREATE TABLE `m_ijazah` (
  `kd` varchar(50) NOT NULL,
  `ijazah` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_ijazah`
-- 

INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('7e9c4f81efa7a4a17474cb7969db36ca', 'S1');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('18a448cef0991b012fa96db82f9b9ef3', 'D III');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('fb73fb01775f6fb97ead55a219f179f8', 'S2');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('0960ac522396310eb4ff29db114e81cb', 'D IV');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('16497238bd931d9dc1151d469a42d2ff', 'SMA');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('f9bf654e0f1297bef49519bc6fae0ce0', 'D II');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('92a3b66f9dd6907a1573ac45bd20d85b', 'SD');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('2aba8bb893e540a14a225691ad854384', 'SMP');
INSERT INTO `m_ijazah` (`kd`, `ijazah`) VALUES ('dbb93ba7f11c88deb4f468de85827a36', 'SLTA');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_jabatan`
-- 

CREATE TABLE `m_jabatan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `jabatan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_jabatan`
-- 

INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('9b381c97c759b1066e58b2f26bda40a1', 'x');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('ce132b57bdf8b227ba09cce73ad88f91', 'y');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('13625166e41e264b7d034a0eb0b5f293', 'z');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('9b381c97c759b1066e58b2f26bda40a1', 'Kepala Sekolah');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('ce132b57bdf8b227ba09cce73ad88f91', 'Guru Pembina');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('13625166e41e264b7d034a0eb0b5f293', 'Guru Dewasa Tk. I');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('58e8dfdc7905e969285c61efb3a118d9', 'Guru Madya Tk. I');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('a728fa08dc4c37785f18f89e37cbc634', 'Guru Madya');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('8998124baa043bf1b45d873a8249d4b0', 'Kepala Tata Usaha');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('62e6546183b1d93d1ea313fd1a9027a2', 'Pelaksana');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('87c78b9cf602521947d9cee2f221faee', 'Guru Tidak Tetap');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('fc7a2d467dd97e5125e788a9dbb34cd3', 'Petugas Perpustakaan');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('b98b4ea54a3ecc439961f5cf0ff2e2eb', 'Petugas Kebersihan');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('7c25650e210eb0a77cf798139783e953', 'Satpam');
INSERT INTO `m_jabatan` (`kd`, `jabatan`) VALUES ('d343b77f000db7fb30c95c3b0ff5b8f7', 'Staf Tata Usaha');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_jam`
-- 

CREATE TABLE `m_jam` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `jam` char(2) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_jam`
-- 

INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('b049b4d3490463a7c3db3cea5fc1fa10', '1');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('3be17d09596cd245484fed3a4f5576eb', '2');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('f341e7faba39e62971b3d538c92e82df', '3');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('02c979304d20859b2fe5c9135c0c269b', '4');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('21ddd50a146dfd554ddac33c19a21be5', '5');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('4fcf418adddd67383212bc1d22c61e98', '6');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('9b0001d3a5a4c413f0bb8e697b0e513f', '7');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('f78e58e3d8d18775f418762e9426b43d', '8');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('1bb73a74f58b3ba76720a0f3ab332e59', '9');
INSERT INTO `m_jam` (`kd`, `jam`) VALUES ('0973ddebfca6c421a4e1ce28a4d29ea9', '10');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_kelamin`
-- 

CREATE TABLE `m_kelamin` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kelamin` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_kelamin`
-- 

INSERT INTO `m_kelamin` (`kd`, `kelamin`) VALUES ('4fcf418adddd67383212bc1d22c61e98', 'Pria');
INSERT INTO `m_kelamin` (`kd`, `kelamin`) VALUES ('29dfb4f490cf1855897561d5d6fdf59d', 'Wanita');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_kelas`
-- 

CREATE TABLE `m_kelas` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `no` char(1) NOT NULL DEFAULT '',
  `kelas` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_kelas`
-- 

INSERT INTO `m_kelas` (`kd`, `no`, `kelas`) VALUES ('27de8f38a90dd1755acd801abefcbb42', '1', 'VII');
INSERT INTO `m_kelas` (`kd`, `no`, `kelas`) VALUES ('2df89d4a12f44a5cc897d6814760687d', '2', 'VIII');
INSERT INTO `m_kelas` (`kd`, `no`, `kelas`) VALUES ('3be17d09596cd245484fed3a4f5576eb', '3', 'IX');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_mapel`
-- 

CREATE TABLE `m_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `no` char(3) NOT NULL DEFAULT '0',
  `no_sub` char(3) NOT NULL DEFAULT '0',
  `pel` varchar(100) NOT NULL DEFAULT '',
  `xpel` varchar(100) NOT NULL DEFAULT '',
  `kkm` varchar(2) NOT NULL DEFAULT '0',
  `mulo` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_mapel`
-- 

INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('4598dd5b9ac644eaec4af76c548743be', '03', '1', 'Bahasa dan Sastra Indonesia', 'Bhs. Indonesia', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('d8022de243b4ce12b64f03a48158d39f', '04', '1', 'Bahasa Inggris', 'Bhs. Inggris', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('20f1b5c9f861b328fcd14dd92d82f8c6', '05', '1', 'Matematika', 'Matematika', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('fc76ca9f6ebcf0f34ab21b55cefdb912', '06', '1', 'Biologi', 'Biologi', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('39dbbf4078f620cd28d241706729e457', '01', '1', 'Pendidikan Agama', 'Agama', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('777d350703dbd13d393a90457c6e9201', '02', '1', 'Pendidikan Kewarganegaraan', 'PPkn', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('1c867c0c756b35bc24301b0403fa556a', '06', '2', 'Fisika', 'Fisika', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('ec5a224ccc0e8c42b34814d6fa12ab2d', '06', '3', 'Kimia', 'Kimia', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('c89e31c6134d92194320f6661e446dfb', '07', '1', 'Sejarah', 'Sejarah', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('1dfd318eedf35421b15fa6ba62943d1b', '07', '2', 'Geografi', 'Geografi', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('0d1df429750588af821f6010d4fbd517', '07', '3', 'Ekonomi', 'Ekonomi', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('ddd64f6ea96d9dbb668a15e2dbd3c8ad', '08', '1', 'Seni Musik', 'Seni Musik', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('6e09ea4152ea4e26c83f7d60c3c37be6', '08', '2', 'Seni Lukis', 'Seni Lukis', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('d94a6e5799011e19a614e6a915f4ece4', '08', '3', 'Seni Kerawitan', 'Seni Kerawitan', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('50bae4d47d12fa0cf23403a12f34be0d', '09', '1', 'Pendidikan Jasmani', 'Penjaskes', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('8afc44d568dbc8e74709b598628e8330', '10', '1', 'TIK', 'TIK', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('8c5d87f3695190b00ffc7ab43e8aed24', '12', '1', 'Elektronika', 'Elektronika', '65', 'true');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('41c9a05798d429b2579aacc27e80a33c', '12', '2', 'Otomotif', 'Otomotif', '65', 'true');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('177b3163ea9bb8bf687516bb3be4e53e', '12', '3', 'Tata Boga', 'Boga', '65', 'true');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('01b2dc906085b14bc0dc367427903448', '12', '4', 'Tata Busana', 'Busana', '65', 'true');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('558dc5761abfa074e9b9f6ef52499a4d', '11', '1', 'Bahasa Daerah', 'Bhs. Daerah', '65', 'true');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('2cf403a3a59ce18ecbf70048a4de2547', '08', '4', 'Seni Tari', 'Seni Tari', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('a89e9a351d467e38fe7979967d2d00b1', '07', '4', 'Sosiologi', 'Sosiologi', '65', 'false');
INSERT INTO `m_mapel` (`kd`, `no`, `no_sub`, `pel`, `xpel`, `kkm`, `mulo`) VALUES ('494b1891475f681b8768e8a2f47343cc', '08', '5', 'Seni Budaya', 'Seni Budaya', '65', 'false');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_mapel_kelas`
-- 

CREATE TABLE `m_mapel_kelas` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_mapel` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_mapel_kelas`
-- 

INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('e56ea9bb5f4a31873f8cd7d0fe06a209', '27de8f38a90dd1755acd801abefcbb42', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('be7d78ba9d105a2d81dd0857c8550e50', '27de8f38a90dd1755acd801abefcbb42', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('ab2d682ab6c68e4ca7472e878e785d36', '27de8f38a90dd1755acd801abefcbb42', '8afc44d568dbc8e74709b598628e8330');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('a4c327b9cf14c6287de9459c21a127cb', '27de8f38a90dd1755acd801abefcbb42', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('02c979304d20859b2fe5c9135c0c269b', '27de8f38a90dd1755acd801abefcbb42', '0d1df429750588af821f6010d4fbd517');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('a39f1c0ad1d1acccd528ee926610d62c', '27de8f38a90dd1755acd801abefcbb42', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('2ad05dff86453904845d36bfcd77b1bf', '2df89d4a12f44a5cc897d6814760687d', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('b27af523b1e748ff53790d51aad24e67', '2df89d4a12f44a5cc897d6814760687d', 'fc76ca9f6ebcf0f34ab21b55cefdb912');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('648662471c96024573f80d1aa99ea2fd', '2df89d4a12f44a5cc897d6814760687d', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('f8f6db6882b912e8bae247b8563b8c7a', '2df89d4a12f44a5cc897d6814760687d', 'ec5a224ccc0e8c42b34814d6fa12ab2d');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('24d3a87fe4ab39b9729466d15d0c8fa0', '2df89d4a12f44a5cc897d6814760687d', '0d1df429750588af821f6010d4fbd517');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('2c7fcf42bc49b99aba63ebcd445688c4', '2df89d4a12f44a5cc897d6814760687d', '1dfd318eedf35421b15fa6ba62943d1b');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('340fac9c0dc0155f0257ca4cc16e9df9', '2df89d4a12f44a5cc897d6814760687d', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('aa14f1b150d404c761fed442c0a6ff24', '2df89d4a12f44a5cc897d6814760687d', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('a519b2de96158827087563fe888af6fb', '2df89d4a12f44a5cc897d6814760687d', '777d350703dbd13d393a90457c6e9201');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('a5e6082fdcab9972842f9996abdc351c', '3be17d09596cd245484fed3a4f5576eb', 'd8022de243b4ce12b64f03a48158d39f');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('b3f04b45d59386526435df88dadd02b2', '3be17d09596cd245484fed3a4f5576eb', 'fc76ca9f6ebcf0f34ab21b55cefdb912');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('ae2274c8cf94275b59a6ab6b36dc1ce2', '3be17d09596cd245484fed3a4f5576eb', '1c867c0c756b35bc24301b0403fa556a');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('482b87b474eed982bd3ff701f87d5d0e', '3be17d09596cd245484fed3a4f5576eb', '0d1df429750588af821f6010d4fbd517');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('0827fa93178a4621c830080403d00523', '3be17d09596cd245484fed3a4f5576eb', '1dfd318eedf35421b15fa6ba62943d1b');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('7c365651de5c18cafd88e460469df8ec', '3be17d09596cd245484fed3a4f5576eb', '4598dd5b9ac644eaec4af76c548743be');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('4bf137c34770372e11da1e22054a5a20', '27de8f38a90dd1755acd801abefcbb42', '558dc5761abfa074e9b9f6ef52499a4d');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('e21298b6dfee549351dea46e190cc004', '27de8f38a90dd1755acd801abefcbb42', '50bae4d47d12fa0cf23403a12f34be0d');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('23080b35aab6f109a7879bb98282316b', '27de8f38a90dd1755acd801abefcbb42', 'c89e31c6134d92194320f6661e446dfb');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('aaa5742d7e5c7359b2dbc661a30820ba', '27de8f38a90dd1755acd801abefcbb42', '177b3163ea9bb8bf687516bb3be4e53e');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('1eea246d2a9db7e5fb412c7e1ced4790', '27de8f38a90dd1755acd801abefcbb42', '39dbbf4078f620cd28d241706729e457');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('843a69d52616f7d5bc4f7282c8453489', '27de8f38a90dd1755acd801abefcbb42', '777d350703dbd13d393a90457c6e9201');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('ef69875379a050cc5f4633d26526f25f', '27de8f38a90dd1755acd801abefcbb42', '20f1b5c9f861b328fcd14dd92d82f8c6');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('9db8ecffbe790c8c61d80e66621b1721', '27de8f38a90dd1755acd801abefcbb42', 'fc76ca9f6ebcf0f34ab21b55cefdb912');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('72a54848f176c7b19c790616aad1f05b', '27de8f38a90dd1755acd801abefcbb42', '1dfd318eedf35421b15fa6ba62943d1b');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('fa0c4e5978f1640d25e49dd396c31747', '27de8f38a90dd1755acd801abefcbb42', 'a89e9a351d467e38fe7979967d2d00b1');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('9642454bb24197bd14c153326f5fbb65', '27de8f38a90dd1755acd801abefcbb42', '494b1891475f681b8768e8a2f47343cc');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('40aad2f41f6de7b881bd786cf15037fd', '27de8f38a90dd1755acd801abefcbb42', '01b2dc906085b14bc0dc367427903448');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('478eaf05a68eeadc7cd6f9ab054e5f92', '27de8f38a90dd1755acd801abefcbb42', '8c5d87f3695190b00ffc7ab43e8aed24');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('9d3441e991118e0464f59caa96075ea0', '27de8f38a90dd1755acd801abefcbb42', '4b4482e766f4d0a5b6ae431c8c1612f9');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('93edf00717663ce3c5b7dc1f8c775333', '27de8f38a90dd1755acd801abefcbb42', '73cdab54d987bd6259ccc0daac8c481c');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('247a6880411eb9afaca9459d074dfec7', '27de8f38a90dd1755acd801abefcbb42', '2e69eb74766efbce3bd52b01ef9602e2');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('65bac7416d5b8d650f8c2901523dbb04', '27de8f38a90dd1755acd801abefcbb42', '32853cf00a41dede364788cf632a8cae');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('ee63da6f3bb1c71329c1bf6dc1892878', '27de8f38a90dd1755acd801abefcbb42', 'edb49a8a420fe3e98798dec2c32ab6bd');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('1c2605cd3f54811e15e6e60f417175ef', '27de8f38a90dd1755acd801abefcbb42', 'e98c577f6e0d07957031bfbb5f0c5f0d');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('7bd0608db66031ab14db0cb1cf8c4488', '27de8f38a90dd1755acd801abefcbb42', 'c39a07f94ab222ec0106be107d21cf14');
INSERT INTO `m_mapel_kelas` (`kd`, `kd_kelas`, `kd_mapel`) VALUES ('3a90108cd32c61e5a93ef799a942dc01', '3be17d09596cd245484fed3a4f5576eb', 'c89e31c6134d92194320f6661e446dfb');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pangkat`
-- 

CREATE TABLE `m_pangkat` (
  `kd` varchar(50) NOT NULL,
  `pangkat` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pangkat`
-- 

INSERT INTO `m_pangkat` (`kd`, `pangkat`) VALUES ('c0011836f1202e3d5213e40fea29a377', 'Pembina');
INSERT INTO `m_pangkat` (`kd`, `pangkat`) VALUES ('550be00f355817a5bf3d27bc02d6398f', 'Penata Tk. I');
INSERT INTO `m_pangkat` (`kd`, `pangkat`) VALUES ('f5a11b8d79a774ea94242a2ad2768d97', 'Penata Muda Tk. I');
INSERT INTO `m_pangkat` (`kd`, `pangkat`) VALUES ('88ab28fb5217f51e69a3e40f0943d931', 'Penata');
INSERT INTO `m_pangkat` (`kd`, `pangkat`) VALUES ('a1d14d562ff19d0260ce5f70a288d324', 'Pengatur Tk. I');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai`
-- 

CREATE TABLE `m_pegawai` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(50) NOT NULL,
  `passwordx` varchar(50) NOT NULL DEFAULT '',
  `nip` varchar(50) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `kode` varchar(10) NOT NULL,
  `no_karpeg` varchar(10) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kd_kelamin` varchar(50) NOT NULL,
  `kd_agama` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `gol_darah` varchar(10) NOT NULL,
  `filex` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai`
-- 

INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('8581148fda4cba20aa220b5bea5585d5', '120002', '98e8e5d9fb7d1f55d0ab70b7ffbca62b', '120002', '', 'Budi Raharjo', 'x', 'x', '1', '1900-01-01', '', '', '1', '1', '', '54021.jpg', '2008-08-14 13:00:19');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('fd81e50177b43431264d5a9c8499b2a9', '120003', '665a3abd55c0eb9242ae61187b48cd7b', '120003', '', 'Rusmanto Maryanto', '', '', '', '0000-00-00', '', '', '', '', '', '', '2008-08-17 15:06:58');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('8d804e81dcaa079c870be3138edf8006', '120001', 'df906bde6d2bb9848a5f23b35c3cf7df', '120001', '120001', 'Onno W. Purbo', '1', '1', '', '1900-01-01', '', '', '1', '1', '', '', '2008-07-04 14:47:31');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('8ce91ca2473b2f64575ef9284bf36640', '120004', 'fd6112d052e082ed3555cf2a0a655ea2', '120004', '', 'Anton R. Pardede', '', '', '', '0000-00-00', '', '', '', '', '', '', '2008-07-04 09:10:28');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('2df89d4a12f44a5cc897d6814760687d', '120005', '3203c2cc45642fd235ba5d1fc3d98a08', '120005', '', 'Jim Geovedi', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('3be17d09596cd245484fed3a4f5576eb', '120006', 'c3101780f81c15ad09ad901e98c68fc4', '120006', '', 'Ariya Hidayat', '', '', '', '0000-00-00', '', '', '', '', '', '', '2008-08-14 13:00:34');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('edc5b859d5d26ed9c06a34ac72c2aed5', '120007', 'f809499433d9f18de33a30c9e4e64e08', '120007', '', 'Alan Cox', '', '', '', '0000-00-00', '', '', '', '', '', '', '2008-06-29 11:59:30');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('45e13fe0fba53e8ad0642c139bf0f7c9', '120008', '55bb5123744ed940aed9f0896f41bcc1', '120008', '', 'David Faure', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('f8521322d5f22044ab5bf49de4a81b27', '1200010', 'ac85f460ae845d24b8cb33a771e72a08', '1200010', '', 'Richard M. Stallman', '3', '3', '3', '1903-03-03', '', '', '3', '3', '', '54003.jpg', '2009-07-24 11:53:33');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('a12f117d9ea5572828c4e13e5507b1a5', '1200013', 'afd06feefbb98811df9a69adff74797f', '1200013', '1200013', 'George Staikos', '888', '888', '7', '1902-02-06', '', '', '87', '53', '', 'bs23034.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('002d8634798be7bded45c82e6a9c69d4', '120009', '9a36ff6edf42edd904855c78f0f516c6', '120009', '120009', 'Waldo Bastian', '8', '7', '5', '1906-05-07', '', '', '987', '545', '', '54010.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('864ca069180ae7c4acbb6ecac3148381', '1200016', 'a345e2a6be4b14cc8cc707af659ec4a9', '1200016', '120006', 'I Made Wiryana', '4', '4', '4', '1900-01-01', '', '', '4', '4', '', '56104.jpg', '2010-11-14 08:52:30');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('b37a3675ceb2e32d4b1fb9864231ee4a', '1200018', 'b709bbdc979585d95d97903878b1b921', '1200018', '1200018', 'Frans Thamura', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('9f545dc8f390f4c8c779bb25c326cbb3', '1200014', 'f7ce90efeffb747720d5f91f6dac6a7b', '1200014', '1200014', 'Daniel Molkentin', '3', '4', '6', '1904-03-03', '', '', '5', '6', '', '54301.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('5352c372add482e5f2d6e67a6f8be681', '1200011', '3b0e07868badc3a2eb00ca2da180af64', '1200011', '1200011', 'Noprianto', '5', '4', '5', '1902-03-03', '', '', '7', '5', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('8cd74c008c54c1ed1731a3dbe055f935', '1200017', '052df9f146039cb52f1e631355c1b47f', '1200017', '1200017', 'Reza Ervani', '', '', '', '0000-00-00', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('850a678c48b6f41b58d0b5678c6042bf', '1200012', 'c2590aaf080c4d1f9a15c3b97bf4726b', '1200012', '1200012', 'Michael S. Sunggiardi', '777', '777', '777', '1902-03-03', '', '', '777', '777', '777', '', '0000-00-00 00:00:00');
INSERT INTO `m_pegawai` (`kd`, `usernamex`, `passwordx`, `nip`, `nuptk`, `nama`, `kode`, `no_karpeg`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `alamat`, `telp`, `gol_darah`, `filex`, `postdate`) VALUES ('8df3c8cfd8e00cf41e120b3c02f7458f', '1200015', 'ffcd8ca24575d2a6f400afc93f914b66', '1200015', '1200015', 'Linus Torvald', '555', '44', '22', '0000-00-00', '', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_diklat`
-- 

CREATE TABLE `m_pegawai_diklat` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `penyelenggara` varchar(50) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `lama` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_diklat`
-- 

INSERT INTO `m_pegawai_diklat` (`kd`, `kd_pegawai`, `nama`, `penyelenggara`, `tempat`, `tahun`, `lama`) VALUES ('2c01f90efb7e969f31187f2abe96ae61', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '8', '7', '6', '5', '4');
INSERT INTO `m_pegawai_diklat` (`kd`, `kd_pegawai`, `nama`, `penyelenggara`, `tempat`, `tahun`, `lama`) VALUES ('f9840be13fb5f4246b32738b692afec7', '850a678c48b6f41b58d0b5678c6042bf', '777', '', '', '', '');
INSERT INTO `m_pegawai_diklat` (`kd`, `kd_pegawai`, `nama`, `penyelenggara`, `tempat`, `tahun`, `lama`) VALUES ('3b4af707ff4ba0ee945c13b10d72aa09', '002d8634798be7bded45c82e6a9c69d4', '12', '23', '34', '45', '56');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_keluarga`
-- 

CREATE TABLE `m_pegawai_keluarga` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `status_kawin` enum('true','false') NOT NULL DEFAULT 'false',
  `tgl_nikah` date NOT NULL,
  `nama_pasangan` varchar(30) NOT NULL,
  `tmp_lahir_pasangan` varchar(50) NOT NULL,
  `tgl_lahir_pasangan` date NOT NULL,
  `pekerjaan_pasangan` varchar(50) NOT NULL,
  `nip_pasangan` varchar(30) NOT NULL,
  `gaji_pasangan` varchar(10) NOT NULL,
  `anak1_nama` varchar(30) NOT NULL,
  `anak1_tmp_lahir` varchar(50) NOT NULL,
  `anak1_tgl_lahir` date NOT NULL,
  `anak1_kelamin` varchar(1) NOT NULL,
  `anak1_sekolah` varchar(50) NOT NULL,
  `anak1_tunjangan` varchar(10) NOT NULL,
  `anak2_nama` varchar(30) NOT NULL,
  `anak2_tmp_lahir` varchar(50) NOT NULL,
  `anak2_tgl_lahir` date NOT NULL,
  `anak2_kelamin` varchar(1) NOT NULL,
  `anak2_sekolah` varchar(50) NOT NULL,
  `anak2_tunjangan` varchar(10) NOT NULL,
  `anak3_nama` varchar(30) NOT NULL,
  `anak3_tmp_lahir` varchar(50) NOT NULL,
  `anak3_tgl_lahir` date NOT NULL,
  `anak3_kelamin` varchar(1) NOT NULL,
  `anak3_sekolah` varchar(50) NOT NULL,
  `anak3_tunjangan` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_keluarga`
-- 

INSERT INTO `m_pegawai_keluarga` (`kd`, `kd_pegawai`, `nama_ayah`, `nama_ibu`, `status_kawin`, `tgl_nikah`, `nama_pasangan`, `tmp_lahir_pasangan`, `tgl_lahir_pasangan`, `pekerjaan_pasangan`, `nip_pasangan`, `gaji_pasangan`, `anak1_nama`, `anak1_tmp_lahir`, `anak1_tgl_lahir`, `anak1_kelamin`, `anak1_sekolah`, `anak1_tunjangan`, `anak2_nama`, `anak2_tmp_lahir`, `anak2_tgl_lahir`, `anak2_kelamin`, `anak2_sekolah`, `anak2_tunjangan`, `anak3_nama`, `anak3_tmp_lahir`, `anak3_tgl_lahir`, `anak3_kelamin`, `anak3_sekolah`, `anak3_tunjangan`) VALUES ('46bf0e171ac4d418b4d4bcce5508a0b0', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '9', '8', 'true', '1903-03-01', '7', '6', '1908-07-08', '5', '4', '4500000', '1', '2', '1901-02-01', 'L', '3', '4', '5', '6', '1902-03-03', 'P', '7', '8', '9', '8', '1904-04-01', 'L', '7', '6');
INSERT INTO `m_pegawai_keluarga` (`kd`, `kd_pegawai`, `nama_ayah`, `nama_ibu`, `status_kawin`, `tgl_nikah`, `nama_pasangan`, `tmp_lahir_pasangan`, `tgl_lahir_pasangan`, `pekerjaan_pasangan`, `nip_pasangan`, `gaji_pasangan`, `anak1_nama`, `anak1_tmp_lahir`, `anak1_tgl_lahir`, `anak1_kelamin`, `anak1_sekolah`, `anak1_tunjangan`, `anak2_nama`, `anak2_tmp_lahir`, `anak2_tgl_lahir`, `anak2_kelamin`, `anak2_sekolah`, `anak2_tunjangan`, `anak3_nama`, `anak3_tmp_lahir`, `anak3_tgl_lahir`, `anak3_kelamin`, `anak3_sekolah`, `anak3_tunjangan`) VALUES ('cae5709f0f168d026c55dd25532e1f71', '850a678c48b6f41b58d0b5678c6042bf', '777', '', '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '', '', '', '0000-00-00', '', '', '');
INSERT INTO `m_pegawai_keluarga` (`kd`, `kd_pegawai`, `nama_ayah`, `nama_ibu`, `status_kawin`, `tgl_nikah`, `nama_pasangan`, `tmp_lahir_pasangan`, `tgl_lahir_pasangan`, `pekerjaan_pasangan`, `nip_pasangan`, `gaji_pasangan`, `anak1_nama`, `anak1_tmp_lahir`, `anak1_tgl_lahir`, `anak1_kelamin`, `anak1_sekolah`, `anak1_tunjangan`, `anak2_nama`, `anak2_tmp_lahir`, `anak2_tgl_lahir`, `anak2_kelamin`, `anak2_sekolah`, `anak2_tunjangan`, `anak3_nama`, `anak3_tmp_lahir`, `anak3_tgl_lahir`, `anak3_kelamin`, `anak3_sekolah`, `anak3_tunjangan`) VALUES ('ed5b7b661fb4578574d2cdca0651b9cf', '002d8634798be7bded45c82e6a9c69d4', '1', '1', 'false', '1902-03-03', '1', '1', '1901-03-02', '1', '1', '1000000', '1', '2', '1904-05-04', 'P', '1', '1', '1', '4', '1904-08-07', 'L', '1', '1', '1', '5', '1903-10-05', 'L', '1', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_mengajar`
-- 

CREATE TABLE `m_pegawai_mengajar` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `mengajar1` varchar(50) NOT NULL,
  `jml_jam1` varchar(3) NOT NULL,
  `mengajar2` varchar(50) NOT NULL,
  `jml_jam2` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_mengajar`
-- 

INSERT INTO `m_pegawai_mengajar` (`kd`, `kd_pegawai`, `mengajar1`, `jml_jam1`, `mengajar2`, `jml_jam2`) VALUES ('0fede5042ef268ad353284b5d6d3029c', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '9', '8', '7', '6');
INSERT INTO `m_pegawai_mengajar` (`kd`, `kd_pegawai`, `mengajar1`, `jml_jam1`, `mengajar2`, `jml_jam2`) VALUES ('49f6fafede90c49971013307e8bbe08f', '850a678c48b6f41b58d0b5678c6042bf', '777', '', '', '');
INSERT INTO `m_pegawai_mengajar` (`kd`, `kd_pegawai`, `mengajar1`, `jml_jam1`, `mengajar2`, `jml_jam2`) VALUES ('326e80fcf6d569c73b9b89a6a3550f15', '002d8634798be7bded45c82e6a9c69d4', '9', '8', '7', '6');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_mk`
-- 

CREATE TABLE `m_pegawai_mk` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `sk_bln` varchar(2) NOT NULL,
  `sk_thn` varchar(2) NOT NULL,
  `s_bln` varchar(2) NOT NULL,
  `s_thn` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_mk`
-- 

INSERT INTO `m_pegawai_mk` (`kd`, `kd_pegawai`, `sk_bln`, `sk_thn`, `s_bln`, `s_thn`) VALUES ('50f88422ff4ec01329ec315de28cbbe5', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '8', '9', '6', '7');
INSERT INTO `m_pegawai_mk` (`kd`, `kd_pegawai`, `sk_bln`, `sk_thn`, `s_bln`, `s_thn`) VALUES ('b2bbce78d08544387a7e4a27ed8bf550', '850a678c48b6f41b58d0b5678c6042bf', '', '7', '', '');
INSERT INTO `m_pegawai_mk` (`kd`, `kd_pegawai`, `sk_bln`, `sk_thn`, `s_bln`, `s_thn`) VALUES ('0b5dd389cda2e5b16abbb37b6d9a10be', '002d8634798be7bded45c82e6a9c69d4', '2', '1', '4', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_pekerjaan`
-- 

CREATE TABLE `m_pegawai_pekerjaan` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `kd_status` varchar(50) NOT NULL,
  `kd_pangkat` varchar(50) NOT NULL,
  `kd_golongan` varchar(50) NOT NULL,
  `kd_jabatan` varchar(50) NOT NULL,
  `tmt_awal` date NOT NULL,
  `tmt_akhir` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_pekerjaan`
-- 

INSERT INTO `m_pegawai_pekerjaan` (`kd`, `kd_pegawai`, `kd_status`, `kd_pangkat`, `kd_golongan`, `kd_jabatan`, `tmt_awal`, `tmt_akhir`) VALUES ('ea27e021a5f82036adbb2a0dcc8eea9b', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '23603a737226f6c7eebb30371195f7f7', 'f5a11b8d79a774ea94242a2ad2768d97', 'fb8c62a2d44d3be35907c71fd6ab3d5a', '9b381c97c759b1066e58b2f26bda40a1', '2005-06-08', '2011-03-13');
INSERT INTO `m_pegawai_pekerjaan` (`kd`, `kd_pegawai`, `kd_status`, `kd_pangkat`, `kd_golongan`, `kd_jabatan`, `tmt_awal`, `tmt_akhir`) VALUES ('12572fed4ebee13e0ebde9faad6a0c6d', '850a678c48b6f41b58d0b5678c6042bf', '111361548ac89412a890b23dbbd146b4', '', '', '', '0000-00-00', '0000-00-00');
INSERT INTO `m_pegawai_pekerjaan` (`kd`, `kd_pegawai`, `kd_status`, `kd_pangkat`, `kd_golongan`, `kd_jabatan`, `tmt_awal`, `tmt_akhir`) VALUES ('8945a6dec008a6fffa1de1098bd37fae', '002d8634798be7bded45c82e6a9c69d4', '111361548ac89412a890b23dbbd146b4', 'c0011836f1202e3d5213e40fea29a377', '82ba4795616e0288f375a255db7ceffd', '13625166e41e264b7d034a0eb0b5f293', '2003-02-02', '2002-04-02');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pegawai_pendidikan`
-- 

CREATE TABLE `m_pegawai_pendidikan` (
  `kd` varchar(50) NOT NULL,
  `kd_pegawai` varchar(50) NOT NULL,
  `kd_ijazah` varchar(50) NOT NULL,
  `kd_akta` varchar(50) NOT NULL,
  `thn_lulus` varchar(4) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `nama_pt` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pegawai_pendidikan`
-- 

INSERT INTO `m_pegawai_pendidikan` (`kd`, `kd_pegawai`, `kd_ijazah`, `kd_akta`, `thn_lulus`, `jurusan`, `nama_pt`) VALUES ('dbc18253832b14aa22221449f184d8ae', 'b2a1d8c15c8dff1a8b67d51dee48a4cb', '7e9c4f81efa7a4a17474cb7969db36ca', '5aafd81c2b2a6ca2c0d75a4b3987b0df', '1999', 'komputer', 'BINUS Jakarta');
INSERT INTO `m_pegawai_pendidikan` (`kd`, `kd_pegawai`, `kd_ijazah`, `kd_akta`, `thn_lulus`, `jurusan`, `nama_pt`) VALUES ('7540b3b9e0ad69fa61d04da9bb970246', '850a678c48b6f41b58d0b5678c6042bf', 'f9bf654e0f1297bef49519bc6fae0ce0', '', '', '', '');
INSERT INTO `m_pegawai_pendidikan` (`kd`, `kd_pegawai`, `kd_ijazah`, `kd_akta`, `thn_lulus`, `jurusan`, `nama_pt`) VALUES ('53671d37b01f449a489d34ed198dc3c8', '002d8634798be7bded45c82e6a9c69d4', '7e9c4f81efa7a4a17474cb7969db36ca', 'fd4dc3aba82f486aa9c6ec60445ffa6b', '1', '2', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pekerjaan`
-- 

CREATE TABLE `m_pekerjaan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `pekerjaan` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pekerjaan`
-- 

INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('6f1bea764bfc1a9c922ea2a3bf44c385', 'Petani');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('adbacfabfd5c0a3c1fb80ab8eb7cfc32', 'Peternak');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('526c71a8228143920305231b2de99835', 'Pedagang');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('7c7b8cb0c524398f2e274ecc007b7ed8', 'Swasta');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('1547709580cf585120bd02d7323e9623', 'Guru');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('268d16f5b9a4a796a4ab50d960bf0a30', 'Wiraswasta');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('776216b04964f5a58f9cc5d7fa63c49b', 'PNS');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('862c7786d621470f6504b6c37ae54bb6', 'Dokter');
INSERT INTO `m_pekerjaan` (`kd`, `pekerjaan`) VALUES ('483c8cb7a08984a3838352cac37e232f', 'Buruh');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_pribadi`
-- 

CREATE TABLE `m_pribadi` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `pribadi` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_pribadi`
-- 

INSERT INTO `m_pribadi` (`kd`, `pribadi`) VALUES ('1239a2153fdca93a77792920147fefde', 'Akhlak');
INSERT INTO `m_pribadi` (`kd`, `pribadi`) VALUES ('a4d9cab25b9808fa86d64a087c5f4ffc', 'Kerajinan / Kedisiplinan');
INSERT INTO `m_pribadi` (`kd`, `pribadi`) VALUES ('6a595f8953ed5f907a13915f61306d48', 'Kerapihan');
INSERT INTO `m_pribadi` (`kd`, `pribadi`) VALUES ('64ee4bc0b699bfa57084c09e7b217aee', 'Kebersihan');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_ruang`
-- 

CREATE TABLE `m_ruang` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `ruang` varchar(5) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_ruang`
-- 

INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('b9f286b3403b958369e0ec3423f1a733', 'A');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('af2e94e92ff53b8592d7c1fdaf0c9edc', 'B');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('75b107399d4a2d26ccdc4817f8c7c8ed', 'C');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('f1d8793368955b20185eebc6cc532a3d', 'D');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('4b011fa0d4299e61fc27b1fa1432a1b4', 'E');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('93bc41195da04813f69b7de11d91e905', 'F');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('094a3243e824a39f51d1f90069ec4626', 'G');
INSERT INTO `m_ruang` (`kd`, `ruang`) VALUES ('8d67b61afe73f0f481e5ee826cd6406a', 'H');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_sikap`
-- 

CREATE TABLE `m_sikap` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `sikap` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_sikap`
-- 

INSERT INTO `m_sikap` (`kd`, `sikap`) VALUES ('00ed678a5f8c877227611637f45d7236', 'A');
INSERT INTO `m_sikap` (`kd`, `sikap`) VALUES ('5e676cdbcd2d981d17eb01e2f140424a', 'B');
INSERT INTO `m_sikap` (`kd`, `sikap`) VALUES ('d1bb4677907c3066abba8f8f7b0d3434', 'C');
INSERT INTO `m_sikap` (`kd`, `sikap`) VALUES ('0136894393158e45a1857e97593cf98a', 'D');
INSERT INTO `m_sikap` (`kd`, `sikap`) VALUES ('f78e58e3d8d18775f418762e9426b43d', 'E');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa`
-- 

CREATE TABLE `m_siswa` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `usernamex` varchar(15) NOT NULL DEFAULT '',
  `passwordx` varchar(50) NOT NULL DEFAULT '',
  `nis` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL DEFAULT '',
  `panggilan` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kd_kelamin` varchar(50) NOT NULL,
  `kd_agama` varchar(50) NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `jml_sdr_kandung` varchar(2) NOT NULL,
  `jml_sdr_tiri` varchar(2) NOT NULL,
  `jml_sdr_angkat` varchar(2) NOT NULL,
  `yatim_piatu` varchar(50) NOT NULL,
  `bhs_harian` varchar(50) NOT NULL,
  `filex` varchar(255) NOT NULL,
  `postdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa`
-- 

INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('20a672f750d99eedfc25358f6ad823e9', '8100035', '4799486f8670f30db3640b79f86cb0d6', '8100035', 'Desi Ratnasari', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2008-08-14 12:59:37');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('9b0001d3a5a4c413f0bb8e697b0e513f', '8100036', '9015b912f37a420ce38247714c7b0155', '8100036', 'Parto', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('d1bb4677907c3066abba8f8f7b0d3434', '810004', '948992f6f0ba19fa18a22b9fd09462b7', '810004', 'M. Khosim Aminy', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('5656ff51c3172fc75985e4b5c9acead8', '8100037', 'a5812761de782dea12f7626ec9d9302c', '8100037', 'Dian Sastro', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('1239a2153fdca93a77792920147fefde', '8100038', 'e99d151a03e7d31987b167dc5ed51850', '8100038', 'Nicolas Saputra', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('f78e58e3d8d18775f418762e9426b43d', '810001', '618c33d941af5715164a5135b9da69dd', '810001', 'Agus Muhajir', '', 'x', '1900-01-01', '4fcf418adddd67383212bc1d22c61e98', '1fa739bfa7fc7ff5ebbb1944c9c8084a', '', '', '', '', '', '', '', 'os37066.jpg', '2009-08-02 04:38:43');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('e0ddb27a1258a4cd5fe31f5f0f3413ad', '810003', 'f5373342f72ff1d8b05a7682f606b2ad', '810003', 'Novie Norwandani', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2008-11-10 10:44:08');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('828b3ff12044b06ea2883e49d9f0c8ca', '810005', 'dca2912687c9a58c47ffb39aa547369a', '810005', 'Indra', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('9df67984eb5b17402c198697043f4f79', '8100039', '19bb1059bdca4773ffd996c962de4ae3', '8100039', 'Mariana Renata', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('aa3f24c48079c1f8377b03dde903c8fb', '810002', 'e64f54e62c586c9841358abe3f5a486b', '810002', 'Julius Adi H.', 'x', '1', '1900-01-01', '4fcf418adddd67383212bc1d22c61e98', 'caa9acb7cdcdf3a49d26281ec61867f5', 'x', '1', '1', '1', '1', 'xstrix', 'x', '54096.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('b89ab967948944e2d81d2760f8f8ef85', '8100040', '3295c76acbf4caaed33c36b1b5fc2cb1', '8100040', 'Baim Wong', '66', '66', '1901-02-02', '29dfb4f490cf1855897561d5d6fdf59d', '2e40a5fdb46adb1029fcc51d7571e48c', '66', '66', '66', '66', '66', 'Anak Piatu', '66', '56230.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('75b29bf554a57479ada10a3ba8e5e6c4', '8100041', '45c48cce2e2d7fbdea1afc51c7c6ad26', '8100041', 'Pasha Ungu', '9', '9', '1904-11-02', '4fcf418adddd67383212bc1d22c61e98', '1fa739bfa7fc7ff5ebbb1944c9c8084a', '9', '9', '9', '9', '9', 'xstrix', 'Indonesia, Arab', 'hyjghgg.jpg', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('343718ea1520a27b980015414a4cf76c', '8100042', '8f14e45fceea167a5a36dedd4bea2543', '8100042', 'GIGI', '79', '79', '1902-01-01', '4fcf418adddd67383212bc1d22c61e98', '13db0d7c61769bdbba15cd6d5f4c86f5', '79', '79', '79', '79', '79', '79', '79', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('a63ef49c2828772057d9fe4cf7a802da', '8100043', '', '8100043', 'Jamrud', '', '', '0000-00-00', '4fcf418adddd67383212bc1d22c61e98', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('a7fa29ce85d53c1c9ef1167cee2c759a', '8100044', '', '8100044', 'Slank', '', '', '0000-00-00', '29dfb4f490cf1855897561d5d6fdf59d', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('a0bf430b44836e927fef6d2202d58c77', '8100045', '', '8100045', 'Nabila Syakib', '', '', '0000-00-00', '4fcf418adddd67383212bc1d22c61e98', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('e4d3df4d6f5e2efba1c4fd2bd02020fd', '8100046', '', '8100046', 'Paramitha Rusady', '', '', '0000-00-00', '4fcf418adddd67383212bc1d22c61e98', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('7a38ddd4f62fa4752d84f42d180fceb0', '8100047', '', '8100047', 'Dini Aminarti', '', '', '0000-00-00', '29dfb4f490cf1855897561d5d6fdf59d', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('0e5267e7c36c7632be0d77268227da57', '810006', '6efc53139ba1416418a6c6e584a25f2d', '810006', 'Hima P.', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('1b225a69d9cae82e37b519e7414400f2', '810007', '74fa942e1fcca16180802a2607c47bfb', '810007', 'Nur Faizah', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('f2f413dd8d2e990ea9237da3e85da7fd', '810008', 'f73e5d79a2915bfec31c4525053fb0ca', '810008', 'Erika Sandy Putri', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('b2da94a37523f3470522ca1c6b24a01a', '810009', '62db76f37331c2f7cb948ffe027d078b', '810009', 'Danang', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('11cfe1d90e135a00921b7840a2f2344b', '8100010', '74d1afc10c4ae48e53655c81a4efe5f5', '8100010', 'Budiyantoro', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('55c5057ef6ff1ec5bf13abfa9c50c355', '8100011', '4d26c36f6ce122e082221bed14847ce5', '8100011', 'Vicky', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('955502590c5a96118ee2094bdb67b0da', '8100012', 'a85dd6fd3108020ec7d8767887e0e276', '8100012', 'Henny R.', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('6efd409ae577467870c6a953c795e354', '8100013', '8602cd355cf46f00d90b998d1316a09f', '8100013', 'Nia', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('c55d3e4e70156bcbb7ca36f99decfd16', '8100014', '19693dcf5b8c2cfe3962233333870930', '8100014', 'Dian', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('39649f774ae93f2c89744803a5f02b98', '8100016', 'fa6d855e29ec9f0332a530f5d204485c', '8100016', 'Ulfah', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('323c7e218fe4e7a5024ad8876d7aba61', '8100015', '890fe0beee35fca4bd50d7980cf1626f', '8100015', 'Yvux Purba', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('d0a08bdd829a4bc434eee62ad72a0d51', '8100017', '4325df74ab7d6afcfa8361da20e22512', '8100017', 'Ifa', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('9ac37c64bc6a6b9047d10d672b48c9be', '8100018', '7fbaeda8eaae0917e81b863b391b8066', '8100018', 'Esti', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('5f9669d6a9d83c78c29e9588e0bfe673', '8100019', '58b33c7d22d653c245c4fc6ccca5d12f', '8100019', 'Susan', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '2010-11-14 08:52:19');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('75d2955e361d2953471f64faf05a7af2', '8100020', '8108a23ebcd017caf6b6eb23a05fbda6', '8100020', 'Dedy', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('8fb2b0711fea15b4823d347e4776600a', '8100021', 'e24b59259dbd42b512760b0524eb7fdb', '8100021', 'Yuni', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('4f02ede76296b003f512032785e5c19e', '8100022', 'b1d8665988c2d74d0e32a64258bbe02d', '8100022', 'Windi Aji', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('4c30e2eb6684359f4c8baa77313e5a50', '8100023', 'fb00d92665f38ddfec13cccb15fe05cb', '8100023', 'Eka', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('953caf11ce76653b10ff61ff8a3a13bc', '8100024', '2c366cf9b9fd0d02df7fb3d0a7a8f156', '8100024', 'Agus Black', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('b8178962fbfb9b0be71d3d7a7297d3eb', '8100025', 'a09b6c8c012ec3b2d48e89c422f342b1', '8100025', 'Herni', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('7dd230c57099924bfa4a02e1b62151c6', '8100026', '0c57c4599fba1f8f323b1fafd12aea43', '8100026', 'Aslam', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('cd522621df3b6e6ddb40788e9d2984c3', '8100028', '7be96668231c8a9c82693fc683d27add', '8100028', 'Amru', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('0a246af7bd397521f108ce21368f1d36', '8100027', '9727e71f4333bf46a7de5ed9d7d52200', '8100027', 'Didik', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('2787382f3b83f03c407eba8de660bd16', '8100029', 'bfe9c5c497285922ec5532d642a38b0f', '8100029', 'Nungky', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('639f03bd658dc30affafaa63a897b4d3', '8100030', '12157b6b17bf8ca4a2bf207bb3b56236', '8100030', 'Maya', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('2040c4401658a0dbe07325e910feec1f', '8100031', '9e53442929bb8e5c1cb340aac68b4b2f', '8100031', 'Budi Gedi', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('8129daed93e584be5ac5ee9e5623b06b', '8100032', '5ddb6989f4d038a2741e9f7ee6dacaee', '8100032', 'Candra', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('34a64fb4deab766b70ec00c5e30af2b7', '8100033', '0bf01c4dc00295a4462559b649bdea10', '8100033', 'Budi M', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');
INSERT INTO `m_siswa` (`kd`, `usernamex`, `passwordx`, `nis`, `nama`, `panggilan`, `tmp_lahir`, `tgl_lahir`, `kd_kelamin`, `kd_agama`, `warga_negara`, `anak_ke`, `jml_sdr_kandung`, `jml_sdr_tiri`, `jml_sdr_angkat`, `yatim_piatu`, `bhs_harian`, `filex`, `postdate`) VALUES ('2b88a29ea1d2419963b3b514d401953e', '8100034', '07a10db554ed1fdcf81e1ae051a1d51e', '8100034', 'Eksan', '', '', '0000-00-00', '', '', '', '', '', '', '', '', '', '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_ayah`
-- 

CREATE TABLE `m_siswa_ayah` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kd_agama` varchar(50) NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `kd_pekerjaan` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `hidup` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_ayah`
-- 

INSERT INTO `m_siswa_ayah` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`, `hidup`) VALUES ('e88d12b78146622b4d3d91e4b34b7547', '75b29bf554a57479ada10a3ba8e5e6c4', '12', '2', '1902-02-02', '1fa739bfa7fc7ff5ebbb1944c9c8084a', '2', '2', '1547709580cf585120bd02d7323e9623', '2', '2', '2', '2');
INSERT INTO `m_siswa_ayah` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`, `hidup`) VALUES ('c593016a46c458adcd94ff03981631f9', 'b89ab967948944e2d81d2760f8f8ef85', '1', '2', '1902-03-03', '13db0d7c61769bdbba15cd6d5f4c86f5', '8', '7', '1547709580cf585120bd02d7323e9623', '6500433', '8', '6', '4');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_diterima`
-- 

CREATE TABLE `m_siswa_diterima` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `kelas` varchar(5) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_diterima`
-- 

INSERT INTO `m_siswa_diterima` (`kd`, `kd_siswa`, `kelas`, `tgl`) VALUES ('cd1a083381ba4c4b5a9446077f2c34b6', '75b29bf554a57479ada10a3ba8e5e6c4', '9', '2013-12-11');
INSERT INTO `m_siswa_diterima` (`kd`, `kd_siswa`, `kelas`, `tgl`) VALUES ('94b63b3751f27be16efbdc84393ba9a5', 'b89ab967948944e2d81d2760f8f8ef85', '3', '2003-04-03');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_hobi`
-- 

CREATE TABLE `m_siswa_hobi` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `kesenian` varchar(50) NOT NULL,
  `olah_raga` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `lain_lain` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_hobi`
-- 

INSERT INTO `m_siswa_hobi` (`kd`, `kd_siswa`, `kesenian`, `olah_raga`, `organisasi`, `lain_lain`) VALUES ('fd697e49f07b0be2bb6e51c686e7d94a', '75b29bf554a57479ada10a3ba8e5e6c4', '1', '2', '3', '4');
INSERT INTO `m_siswa_hobi` (`kd`, `kd_siswa`, `kesenian`, `olah_raga`, `organisasi`, `lain_lain`) VALUES ('94f17511aa44e185c4cd5af5a3a910d4', 'b89ab967948944e2d81d2760f8f8ef85', '9', '8', '7', '6');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_ibu`
-- 

CREATE TABLE `m_siswa_ibu` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kd_agama` varchar(50) NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `kd_pekerjaan` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL,
  `hidup` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_ibu`
-- 

INSERT INTO `m_siswa_ibu` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`, `hidup`) VALUES ('2d0946c003cde6ad738c4440c4d79b12', '75b29bf554a57479ada10a3ba8e5e6c4', '36', '6', '1902-04-04', '13db0d7c61769bdbba15cd6d5f4c86f5', '6', '6', '526c71a8228143920305231b2de99835', '6', '6', '6', '6');
INSERT INTO `m_siswa_ibu` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`, `hidup`) VALUES ('89e00b7aeee5ce4c9f6b7bc0f5d6a268', 'b89ab967948944e2d81d2760f8f8ef85', '9', '8', '1903-02-07', '13db0d7c61769bdbba15cd6d5f4c86f5', '7', '6', '1547709580cf585120bd02d7323e9623', '4500000', '3', '2', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_kesehatan`
-- 

CREATE TABLE `m_siswa_kesehatan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `gol_darah` varchar(10) NOT NULL,
  `penyakit` varchar(50) NOT NULL,
  `kelainan` varchar(50) NOT NULL,
  `tinggi` varchar(3) NOT NULL,
  `berat` varchar(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_kesehatan`
-- 

INSERT INTO `m_siswa_kesehatan` (`kd`, `kd_siswa`, `gol_darah`, `penyakit`, `kelainan`, `tinggi`, `berat`) VALUES ('4685e56200bfda3f61bd6da25dd5aeb0', '75b29bf554a57479ada10a3ba8e5e6c4', 'xux', 'x', 'x', '8', '8');
INSERT INTO `m_siswa_kesehatan` (`kd`, `kd_siswa`, `gol_darah`, `penyakit`, `kelainan`, `tinggi`, `berat`) VALUES ('bc3c1c5e21c0cf72c27d2d260dba24a5', 'b89ab967948944e2d81d2760f8f8ef85', '1', '2', '3', '4', '5');
INSERT INTO `m_siswa_kesehatan` (`kd`, `kd_siswa`, `gol_darah`, `penyakit`, `kelainan`, `tinggi`, `berat`) VALUES ('f2ed99ad62827277cdf117fbc0bfcccd', 'aa3f24c48079c1f8377b03dde903c8fb', 'x', 'x', 'x', '170', '70');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_pendidikan`
-- 

CREATE TABLE `m_siswa_pendidikan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `lulusan` varchar(100) NOT NULL,
  `tgl_sttb` date NOT NULL,
  `no_sttb` varchar(50) NOT NULL,
  `lama` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_pendidikan`
-- 

INSERT INTO `m_siswa_pendidikan` (`kd`, `kd_siswa`, `lulusan`, `tgl_sttb`, `no_sttb`, `lama`) VALUES ('98ad8e2bfe3918fc60261cac74867dce', '75b29bf554a57479ada10a3ba8e5e6c4', '1', '2004-03-02', '5', '6');
INSERT INTO `m_siswa_pendidikan` (`kd`, `kd_siswa`, `lulusan`, `tgl_sttb`, `no_sttb`, `lama`) VALUES ('94b63b3751f27be16efbdc84393ba9a5', 'b89ab967948944e2d81d2760f8f8ef85', '9', '2004-03-03', '8', '6');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_perkembangan`
-- 

CREATE TABLE `m_siswa_perkembangan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `bea_siswa` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `alasan` varchar(50) NOT NULL,
  `tamat` varchar(50) NOT NULL,
  `no_sttb` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_perkembangan`
-- 

INSERT INTO `m_siswa_perkembangan` (`kd`, `kd_siswa`, `bea_siswa`, `tgl`, `alasan`, `tamat`, `no_sttb`) VALUES ('9fbc9aea639c0424ee631215765272c4', '75b29bf554a57479ada10a3ba8e5e6c4', '24', '2007-04-04', '4', '4', '5');
INSERT INTO `m_siswa_perkembangan` (`kd`, `kd_siswa`, `bea_siswa`, `tgl`, `alasan`, `tamat`, `no_sttb`) VALUES ('1083d0c41333f784b01545aad6a1cfed', 'b89ab967948944e2d81d2760f8f8ef85', '8', '2003-04-03', '9', '4', '5');
INSERT INTO `m_siswa_perkembangan` (`kd`, `kd_siswa`, `bea_siswa`, `tgl`, `alasan`, `tamat`, `no_sttb`) VALUES ('e34708786cc4c0cf32a508173b09efb9', 'aa3f24c48079c1f8377b03dde903c8fb', '1', '2001-03-05', '1', '2', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_pindahan`
-- 

CREATE TABLE `m_siswa_pindahan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `dari` varchar(100) NOT NULL,
  `alasan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_pindahan`
-- 

INSERT INTO `m_siswa_pindahan` (`kd`, `kd_siswa`, `dari`, `alasan`) VALUES ('7f612504a589267111a4f8c640d6de76', '75b29bf554a57479ada10a3ba8e5e6c4', '7', '8');
INSERT INTO `m_siswa_pindahan` (`kd`, `kd_siswa`, `dari`, `alasan`) VALUES ('94b63b3751f27be16efbdc84393ba9a5', 'b89ab967948944e2d81d2760f8f8ef85', '5', '4');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_selesai`
-- 

CREATE TABLE `m_siswa_selesai` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `melanjutkan_di` varchar(50) NOT NULL,
  `bekerja` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `instansi` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_selesai`
-- 

INSERT INTO `m_siswa_selesai` (`kd`, `kd_siswa`, `melanjutkan_di`, `bekerja`, `tgl`, `instansi`, `penghasilan`) VALUES ('385a4af04597bf949891f0a537c0f34b', '75b29bf554a57479ada10a3ba8e5e6c4', '2911', '11', '2007-04-11', '11', '1500000');
INSERT INTO `m_siswa_selesai` (`kd`, `kd_siswa`, `melanjutkan_di`, `bekerja`, `tgl`, `instansi`, `penghasilan`) VALUES ('61e3cf80e42588fb690246ed5bc33b5b', 'b89ab967948944e2d81d2760f8f8ef85', 'x', 'x', '2003-03-03', 'x', '8000000');
INSERT INTO `m_siswa_selesai` (`kd`, `kd_siswa`, `melanjutkan_di`, `bekerja`, `tgl`, `instansi`, `penghasilan`) VALUES ('083effa3ec430a8581e6a888efac5888', 'aa3f24c48079c1f8377b03dde903c8fb', 'x', 'x', '2000-01-01', 'x', '1');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_tmp_tinggal`
-- 

CREATE TABLE `m_siswa_tmp_tinggal` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(100) NOT NULL,
  `tinggal_dgn` varchar(50) NOT NULL,
  `jarak` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_tmp_tinggal`
-- 

INSERT INTO `m_siswa_tmp_tinggal` (`kd`, `kd_siswa`, `alamat`, `telp`, `tinggal_dgn`, `jarak`) VALUES ('880a217a73698170b3fa87d5ae00a2d6', '75b29bf554a57479ada10a3ba8e5e6c4', 'xy', 'y', 'Saudara', 'y');
INSERT INTO `m_siswa_tmp_tinggal` (`kd`, `kd_siswa`, `alamat`, `telp`, `tinggal_dgn`, `jarak`) VALUES ('4b1564a13ac827f3a639777326a94f93', 'b89ab967948944e2d81d2760f8f8ef85', '8', '7', 'Saudara', '4');
INSERT INTO `m_siswa_tmp_tinggal` (`kd`, `kd_siswa`, `alamat`, `telp`, `tinggal_dgn`, `jarak`) VALUES ('edda96419a67f66c78282ed60c6c6490', 'aa3f24c48079c1f8377b03dde903c8fb', 'x', 'y', 'Orang Tua', 'x');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_siswa_wali`
-- 

CREATE TABLE `m_siswa_wali` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `tmp_lahir` varchar(30) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `kd_agama` varchar(50) NOT NULL,
  `warga_negara` varchar(50) NOT NULL,
  `pendidikan` varchar(50) NOT NULL,
  `kd_pekerjaan` varchar(50) NOT NULL,
  `penghasilan` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `telp` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_siswa_wali`
-- 

INSERT INTO `m_siswa_wali` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`) VALUES ('2858607c4d79a4db42f86e4b8ef18751', '75b29bf554a57479ada10a3ba8e5e6c4', 'x4', '4', '1901-01-04', '2e40a5fdb46adb1029fcc51d7571e48c', '4', '4', '862c7786d621470f6504b6c37ae54bb6', '4', '4', '4');
INSERT INTO `m_siswa_wali` (`kd`, `kd_siswa`, `nama`, `tmp_lahir`, `tgl_lahir`, `kd_agama`, `warga_negara`, `pendidikan`, `kd_pekerjaan`, `penghasilan`, `alamat`, `telp`) VALUES ('669a06608a356b1222c212383df9c101', 'b89ab967948944e2d81d2760f8f8ef85', '8', '7', '1903-04-03', '49204f7eab33f980e6b98f0442a17640', '8', '7', '1547709580cf585120bd02d7323e9623', '5900578', '4', '3');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_smt`
-- 

CREATE TABLE `m_smt` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `no` varchar(1) NOT NULL,
  `smt` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_smt`
-- 

INSERT INTO `m_smt` (`kd`, `no`, `smt`) VALUES ('b060de380c57384744177849d22fb584', '1', 'Ganjil');
INSERT INTO `m_smt` (`kd`, `no`, `smt`) VALUES ('900e28393edf271632735d0bb6e9b31c', '2', 'Genap');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_status`
-- 

CREATE TABLE `m_status` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_status`
-- 

INSERT INTO `m_status` (`kd`, `status`) VALUES ('111361548ac89412a890b23dbbd146b4', 'Tetap');
INSERT INTO `m_status` (`kd`, `status`) VALUES ('23603a737226f6c7eebb30371195f7f7', 'Honorer');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_tapel`
-- 

CREATE TABLE `m_tapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `tahun1` varchar(4) NOT NULL DEFAULT '',
  `tahun2` varchar(4) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_tapel`
-- 

INSERT INTO `m_tapel` (`kd`, `tahun1`, `tahun2`) VALUES ('2a771e8ba89dd288743d4839d61185bc', '2009', '2010');
INSERT INTO `m_tapel` (`kd`, `tahun1`, `tahun2`) VALUES ('d13e816e1bd8d00e0e5824fc430faf25', '2010', '2011');
INSERT INTO `m_tapel` (`kd`, `tahun1`, `tahun2`) VALUES ('dc69250cdecc762faba7452f38a49192', '2011', '2012');
INSERT INTO `m_tapel` (`kd`, `tahun1`, `tahun2`) VALUES ('0c03dbdd9e164b7638c23174953d3989', '2012', '2013');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_uang_gedung`
-- 

CREATE TABLE `m_uang_gedung` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `nilai` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_uang_gedung`
-- 

INSERT INTO `m_uang_gedung` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('cefc9a3a9dcc568bcad726dde2b71e7c', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '500000');
INSERT INTO `m_uang_gedung` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d1e7c66e6fb18e8e8478c286ac485b44', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '500000');
INSERT INTO `m_uang_gedung` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('52d85b27271296730f538f4fb5ddba01', 'dc69250cdecc762faba7452f38a49192', '27de8f38a90dd1755acd801abefcbb42', '23333');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_uang_lain`
-- 

CREATE TABLE `m_uang_lain` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `nilai` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_uang_lain`
-- 

INSERT INTO `m_uang_lain` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d726cf836b61df5cc2897df1e42be505', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '10000');
INSERT INTO `m_uang_lain` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d1e7c66e6fb18e8e8478c286ac485b44', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '10000');
INSERT INTO `m_uang_lain` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('52d85b27271296730f538f4fb5ddba01', 'dc69250cdecc762faba7452f38a49192', '27de8f38a90dd1755acd801abefcbb42', '77777');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_uang_spp`
-- 

CREATE TABLE `m_uang_spp` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `nilai` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_uang_spp`
-- 

INSERT INTO `m_uang_spp` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d726cf836b61df5cc2897df1e42be505', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '30000');
INSERT INTO `m_uang_spp` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d1e7c66e6fb18e8e8478c286ac485b44', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '20000');
INSERT INTO `m_uang_spp` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('52d85b27271296730f538f4fb5ddba01', 'dc69250cdecc762faba7452f38a49192', '27de8f38a90dd1755acd801abefcbb42', '66666');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_uang_ujian`
-- 

CREATE TABLE `m_uang_ujian` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `nilai` varchar(10) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_uang_ujian`
-- 

INSERT INTO `m_uang_ujian` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d726cf836b61df5cc2897df1e42be505', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '50000');
INSERT INTO `m_uang_ujian` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('d1e7c66e6fb18e8e8478c286ac485b44', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '10000');
INSERT INTO `m_uang_ujian` (`kd`, `kd_tapel`, `kd_kelas`, `nilai`) VALUES ('52d85b27271296730f538f4fb5ddba01', 'dc69250cdecc762faba7452f38a49192', '27de8f38a90dd1755acd801abefcbb42', '44455');

-- --------------------------------------------------------

-- 
-- Table structure for table `m_walikelas`
-- 

CREATE TABLE `m_walikelas` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_ruang` varchar(50) NOT NULL DEFAULT '',
  `kd_pegawai` varchar(50) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `m_walikelas`
-- 

INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('90b16eab296f9111eb17721cc3ac5aca', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'af2e94e92ff53b8592d7c1fdaf0c9edc', 'fd81e50177b43431264d5a9c8499b2a9');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('fb5eeb36adb08beeb85b0830a158504c', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '75b107399d4a2d26ccdc4817f8c7c8ed', '8df3c8cfd8e00cf41e120b3c02f7458f');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('49dcbb1713507401fb20d33b59ae605f', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '8d804e81dcaa079c870be3138edf8006');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('9f32176678defa22002146e0f75c17dd', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'b9f286b3403b958369e0ec3423f1a733', 'fd81e50177b43431264d5a9c8499b2a9');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('5e676cdbcd2d981d17eb01e2f140424a', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'af2e94e92ff53b8592d7c1fdaf0c9edc', '8ce91ca2473b2f64575ef9284bf36640');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('a777c6ee5d2c44554f0602ea16d36f5b', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', '75b107399d4a2d26ccdc4817f8c7c8ed', '3be17d09596cd245484fed3a4f5576eb');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('a9097c06d10b68acdb4bc02751f6baec', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', '75b107399d4a2d26ccdc4817f8c7c8ed', '3be17d09596cd245484fed3a4f5576eb');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('c962b5a2ce1861370106ac7b8044c90f', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', 'af2e94e92ff53b8592d7c1fdaf0c9edc', '3be17d09596cd245484fed3a4f5576eb');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('2792aae3c6e5f0257bd7d3f35d3dd611', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', 'b9f286b3403b958369e0ec3423f1a733', 'edc5b859d5d26ed9c06a34ac72c2aed5');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('75c4449ac034ff4b90b444f158a10484', 'dc69250cdecc762faba7452f38a49192', '2df89d4a12f44a5cc897d6814760687d', '75b107399d4a2d26ccdc4817f8c7c8ed', 'fd81e50177b43431264d5a9c8499b2a9');
INSERT INTO `m_walikelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_pegawai`) VALUES ('0a22d93efbd570fa9e5365bec034a8d2', 'dc69250cdecc762faba7452f38a49192', '2df89d4a12f44a5cc897d6814760687d', 'af2e94e92ff53b8592d7c1fdaf0c9edc', 'f8521322d5f22044ab5bf49de4a81b27');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_absensi`
-- 

CREATE TABLE `siswa_absensi` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_absensi` varchar(50) NOT NULL DEFAULT '',
  `tgl` date NOT NULL DEFAULT '0000-00-00',
  `jam` time NOT NULL DEFAULT '00:00:00',
  `keperluan` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_absensi`
-- 

INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('0f8f1acec82db9374eb535741603828a', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-01', '00:00:00', 'o');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('715d57bd7401dd74447f5faa87423c54', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-02', '00:00:00', 'u');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4c690dc70a9ad646c9d1666c05db77ba', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-03', '00:00:00', 'y');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('424c91ec6d41baca6388a694f71c73c5', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-04', '00:00:00', 'n');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('fc316836574cf4203bebdea6b078c08f', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-05', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a4d9cab25b9808fa86d64a087c5f4ffc', '7c3a68f7ad86846a2f9764361d3566dd', 'd1e7c66e6fb18e8e8478c286ac485b44', '2008-01-06', '17:45:00', 'r');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e61fffb5e51c695b9461ab21469718af', '7c3a68f7ad86846a2f9764361d3566dd', 'd1e7c66e6fb18e8e8478c286ac485b44', '2008-01-07', '00:00:00', 'y');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('87c5f2e7ae8cd94198d35a0316f5cb79', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-08', '00:00:00', 'e');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('3b8ffcfa14bfe48e9a4261f33500e858', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-09', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('7129b399ba41aa13a57f05f8836776bb', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-10', '00:00:00', 'h');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5ef65cdca6802cd3b890899a12973f62', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-11', '00:00:00', 'fd');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('7f4c216ce01c12f3b65bf4de191fe771', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-12', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('322e1eddff629cb76aeaa382e4453527', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-13', '00:00:00', 'f');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('6a6d930a4fe9736d2d5c5043b79c593b', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-14', '00:00:00', 'f');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5e5b037da28c02d558d30b100d07e37b', '7c3a68f7ad86846a2f9764361d3566dd', '1bb73a74f58b3ba76720a0f3ab332e59', '2008-01-15', '00:00:00', 'trrr');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('ae90c057a27c8b37b3a2f63171fd30f2', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-16', '00:00:00', 'tyyyyu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('761f1c9068eba981c46978edeb6f4599', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-17', '00:00:00', 'sd');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('6a595f8953ed5f907a13915f61306d48', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-18', '00:00:00', 'fuuuu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('75923bfce281e73256a6d19e982d875a', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-19', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('12f88a75793bc57eed5fa88904c6e462', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-20', '00:00:00', 'gsd');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('0b2a8e50004c7639a1f6252f6e9ebc61', '7c3a68f7ad86846a2f9764361d3566dd', '1bb73a74f58b3ba76720a0f3ab332e59', '2008-01-21', '09:57:00', 'gh');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('64ee4bc0b699bfa57084c09e7b217aee', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-22', '00:00:00', 'wagu tenan lah....');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a52d1c9d8f31a9390086307b18afeb28', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-23', '00:00:00', 'df');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('31f55e8805fac480264002174d851ed2', '7c3a68f7ad86846a2f9764361d3566dd', 'd1e7c66e6fb18e8e8478c286ac485b44', '2008-01-24', '11:00:00', 'siti');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9418f61669b36ee9fa42151f1dcccb8b', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-25', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('98f70a14d48d69ab4a4b6bbe74e4f519', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-26', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('56bf702ac53adfe89087e361cc5e7cd8', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-27', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('8dba3b3e7e44f56638fac2f50b39f924', '7c3a68f7ad86846a2f9764361d3566dd', '4fcf418adddd67383212bc1d22c61e98', '2008-01-28', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2c0ffc4b2bc60e7fdc59a9bba80d2a1a', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-29', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9000ce4af908698bc823f4fbaa0ae3a9', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-30', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('00f1983ba5a9579289480a0b735dcb62', '7c3a68f7ad86846a2f9764361d3566dd', '', '2008-01-31', '00:00:00', 'wagu');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('24efb439207bb032373ee04242c3ea58', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-01', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('36327eaefa4a690bc0ac6e39462e60b8', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-02', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('157756e9672b380102431d4e303dbb7e', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-03', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5f608d8a5a1e4045300b5ddb664259e4', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-04', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c6556b80ecdc1e14cc906e3064b4596c', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-05', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('421f70c85f445a7eab64e64fd0d292b6', '4996201dc16847071cbbc69cfdd44260', 'd1e7c66e6fb18e8e8478c286ac485b44', '2008-01-06', '10:30:00', 'xstrix');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f46388cb434e4c4ae4b0ef5d7284e37c', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-07', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f6d84d465d6344657e9f02c171411477', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-08', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9f2aa8660c4d251bff8ef57c75f3024b', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-09', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('cea608f0790dd6cb6271053f3ac0ea49', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-10', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a8c47b04c999816f0a29ab88f51a22ea', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-11', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('361a3a6f72f5a49a5ea3c96b84c44f45', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-12', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c0e6a8363d4111c32d5d6d2a33667c9c', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-13', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('25ff5dc21b07df2563b5e32c9b9673c7', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-14', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('fe37084c1f6bd123e22866791b46167c', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-15', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('cd28bb9ed9aee9d02ac06b2e911018b2', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-16', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2e07fa40a927cf1c9cfb1a2e789dd215', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-17', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4c1a109613bf2f74b2cc30bbf16a01c6', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-18', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('3cd009dd1c2328b68ff2744b2fb37ec6', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-19', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('16aa853a0837f847c82734dfb56d6bde', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-20', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('78c4d8ddc48cae2be65191510917350f', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-21', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('b8865eb6a6bd093bf189fffe207d744e', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-22', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('7cb929c0cc9d63bde4c126f57cdc4414', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-23', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1d9abd7b2e02b33b7f090e4d8b1ad5dc', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-24', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('b3f4400f61cec5df25f17b50281ccadf', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-25', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a0d0ce22d74b6f8ef2992c83d6706295', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-26', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('cbd373e27e6252200a7a6b75ffcd005c', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-27', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c7ab3b0afb453ceb86f1d9ad9b5b7dd9', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-28', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e85929c39321b0505b9cd4488f7e8726', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-29', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c6591fc6a2ecd1a59b5f87f175988a4f', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-30', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('31ed0e59d62055f006cd69efb2f12bc9', '4996201dc16847071cbbc69cfdd44260', '', '2008-01-31', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2bd8bec538a7d6903e98390f134b5bf5', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '1bb73a74f58b3ba76720a0f3ab332e59', '2008-01-01', '01:01:00', 'x');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f6f0d365bd270be1ef6016b70e8b5a33', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd1e7c66e6fb18e8e8478c286ac485b44', '2008-01-02', '03:04:00', 'x');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('556ffd367d052bc94038cb92d8419266', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-03', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('64286464c9615e953ab16515478225d0', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-04', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f06187f9b0f81bbc4a3b6a72c12054bd', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-05', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('db4fedbd16bdbc7540b313b892379b94', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-06', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e3d960fc4d61f9287d2bdd9abfb40a8a', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-07', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('50e0c019c548a9fd3832feb1fdcfaff0', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-08', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('71ec9962b4fc827547a976aefd9f6c25', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-09', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('0a93910f52cf0fdbde86efdab233ac6c', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-10', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1f3676891959d83ed7d124fe3f7d3fce', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-11', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('28de7752a3450a23dc4937aadddb5481', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-12', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e697b828c1d17e39d11b569014d1c96e', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-13', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('98f2d53764fe5bb799885c838cdd3b53', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-14', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e41d6265e71e10711640102623a6fcc3', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-15', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4a795608eda5a9d460fc80dae9ad34c6', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-16', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('779b61de8564e15f60bf002ae5374a3b', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-17', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('350b687a81ea3d57694443dc57906759', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-18', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('67d030bc0b544b980a289d8a5a9b98ca', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-19', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e346160829cd4ed99bde73aba472ae02', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-20', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('fde7f275ab5d9b076e9cb9c5a83adcf7', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-21', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e85d2f8d0f89e5529a5e04cc37849662', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-22', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e7a34a27954de837cc838a346defc8f4', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-23', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('6bc9fcabed7a5beb0b5c1edf3ca7e1b0', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-24', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5adacaa2851d7ffcebb7ba50057f4d2a', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-25', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('afa96b70264f653a4b08fc609d8d4658', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-26', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e3d2056ac1960f5041c791f64bb31a95', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-27', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('ffdd0870d39cc585fb282d6883420dc7', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-28', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('06ae1cafcf6351903e57da6ad43a1b9b', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-29', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2b20decace0a17390689f84a77013870', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-30', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('11a85519ebf98f2047a765145a4ac714', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', '2008-01-31', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('7c5aa7b0f8cdd05db95713131b950603', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-01', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1aae7ff3ced611f84bc9d88571e8425f', 'd1bb4677907c3066abba8f8f7b0d3434', '1bb73a74f58b3ba76720a0f3ab332e59', '2008-01-02', '07:06:00', 'x');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5658b0c44704b932dda2a10471a51382', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-03', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('8412b73210033c314b76a7dfbdded544', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-04', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9f55cfbb7f0e86b2942103a6f58b120e', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-05', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e72de6f1a5bfce4070a3ffdf615b5fd8', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-06', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('3dfdb9feddee97e7928d77227e47c646', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-07', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1ef531ca72a59f182b7e231af668701d', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-08', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('63468f630dab563161a7be38e1c7f972', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-09', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f203ce910160446d5141e6ab39ccd413', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-10', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('cf8f0d8aefc47beddab7969be6c97866', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-11', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9adb589f5c709aa32ee5824447f4fa3e', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-12', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('58886197f020afdde7adbb75189eeab7', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-13', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e8d31b2755e00e03a72d79d13a9b15fc', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-14', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('ffb151c81f3240fded97c3a785ab9d35', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-15', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('0938015ada596c3c3ad656f58707fe1a', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-16', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4f42de3453c6de32ab76082fd50ebe96', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-17', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('ea9e1697eafd9f19bba57fa63817c191', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-18', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5a9f9af01b72d7aa32e4bbfbbdaed97a', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-19', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2bc0bfe2476245e3764cf48cea5875f6', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-20', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('bbad715775e69f989e6bd8c1ad53e4f2', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-21', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('05b2788caf4fbf2ec4c15c68e8ba63b5', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-22', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('857f3317baae0469c2e158bab09aa2d1', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-23', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('bfa164e5c5fbb588727e649584eb501d', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-24', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('693d5de96a840103c8c31bf0de2ac75b', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-25', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('dcf45e3cc4473831b54a986221ca6393', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-26', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('38539c845422c55bb490dfc36950199b', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-27', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('12a5428937476421bb1ba560d224de12', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-28', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('30ed5d03ae7f0297c2ccfb02002e2463', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-29', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c27f99dd15e1934e0d24d0e63b7e4f8a', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-30', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('9af8a0b051313fc5dc07cd1f77d6dd3d', 'd1bb4677907c3066abba8f8f7b0d3434', '', '2008-01-31', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1a39a9d5f7a9ef97cbe4f7d41a626e9d', 'f78e58e3d8d18775f418762e9426b43d', '1bb73a74f58b3ba76720a0f3ab332e59', '2009-07-01', '23:44:00', 'xx');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('b5e5b892a5279f218b18c2698a23db8f', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-02', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a37141a162f38c6fe1b0e469315a7b2c', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-03', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('58d929be79de147ffe2fe81212af4b31', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-04', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('c9d2be11480ccd2af663d3c5c291ec1c', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-05', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('6fbd187281f9ec64774b44416a2eaa79', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-06', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('800ed86d1f815a4b05e922962cac0459', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-07', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('78cd3267e6361173977c5eb6b3a82486', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-08', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4dc3d3ba0c73fbf7351092846ef90ec5', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-09', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('1e95b5dbc98b15bde905a18904586580', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-10', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('edd47b879ce5d01701ae3c93afa4cf3c', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-11', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4936535da8eec4c6a69f8efc75c278ce', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-12', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('172e9231fee32c6863193a2dbaa7a661', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-13', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('79b9e3f8a59538c6d3975cc8ad37ddd7', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-14', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('f7a4fa70ab8c8b2895c34924b702fc0b', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-15', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e04a75e563782e2d1e60b65e807d4959', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-16', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('fe37a4fea6d4e3469b525e939ee67e1e', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-17', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('67a9cb64e9bf086a3101d10c9fd59dd4', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-18', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('4896ee6016fc7a538b20de50fbf3e011', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-19', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('11a8499c24fd07781bb44ba56cd23dfc', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-20', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('08d6bd725791a724df32e62c2c7a8671', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-21', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('a3f7eb4eff334d7cdc65f282060f0c73', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-22', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('cdd8ea5cd5387e6bac74bd89a654455c', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-23', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('210666c15bb4842a38fc0d7bfb88e042', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-24', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('3eb43399e021ffb3a0c44b25fcf9af28', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-25', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('d1dd9dcd0078bcb195f324e3da7f1ca7', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-26', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('2d70f26fe7503aabbc8f4e9b2754f04f', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-27', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('987dab1b768f3afd0e841693b53ce664', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-28', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('70dfb396e0734e4074b37f9b37e28d17', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-29', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('5952214955940d30c202e69596c5a064', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-30', '00:00:00', '');
INSERT INTO `siswa_absensi` (`kd`, `kd_siswa_kelas`, `kd_absensi`, `tgl`, `jam`, `keperluan`) VALUES ('e0ebbba8c54cc0e451c132b2bfc193ce', 'f78e58e3d8d18775f418762e9426b43d', '', '2009-07-31', '00:00:00', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_catatan`
-- 

CREATE TABLE `siswa_catatan` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `catatan` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_catatan`
-- 

INSERT INTO `siswa_catatan` (`kd`, `kd_siswa_kelas`, `kd_smt`, `catatan`) VALUES ('8936b2f9c18266f5008b0e95842b9d7c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'aaaaaaaaaaaaxxx');
INSERT INTO `siswa_catatan` (`kd`, `kd_siswa_kelas`, `kd_smt`, `catatan`) VALUES ('05542c1f9428f3d4d0b3f5e05aa1a610', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'eeeexxx');
INSERT INTO `siswa_catatan` (`kd`, `kd_siswa_kelas`, `kd_smt`, `catatan`) VALUES ('a3e648d73c15234e10e3f146a7344ef0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'xxx');
INSERT INTO `siswa_catatan` (`kd`, `kd_siswa_kelas`, `kd_smt`, `catatan`) VALUES ('e0c4856a4ffd9ab759a84b5137cddcfe', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'xxx');
INSERT INTO `siswa_catatan` (`kd`, `kd_siswa_kelas`, `kd_smt`, `catatan`) VALUES ('a3668b670349ee9505dab9f2a93f07a1', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'xxx');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_ekstra`
-- 

CREATE TABLE `siswa_ekstra` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_ekstra` varchar(50) NOT NULL,
  `predikat` varchar(1) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_ekstra`
-- 

INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('d0bd40f7688b08f27a22b34e85f42eaf', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '40a9b1401bebc29d47f6fdb71ea603f8', 'C', 'zs');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('b2f58198c211ff08d1097e30853f496e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '76fcf4589702a0c082805f9678339788', 'B', 'yx');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('dfb446e9bf3596ba3a6bc9b4a274a497', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '163c3b94b1707ba18bd8adb74587c179', 'A', 'x');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('434a4dc1cf29497dd03832dc82faab90', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '163c3b94b1707ba18bd8adb74587c179', 'A', 'xx');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('99e04e67f4fa749217dcdc45a6297120', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '76fcf4589702a0c082805f9678339788', 'C', 'y');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('4b702c48c6eaeea38b63b9e813ddd0ba', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '40a9b1401bebc29d47f6fdb71ea603f8', 'B', 'z');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('1e18e4eb016ac0958c9a31acc932ea1b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '76fcf4589702a0c082805f9678339788', 'A', 'x');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('6a8a6ee0a3a5c5b30f460ef26107c796', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '163c3b94b1707ba18bd8adb74587c179', 'B', 'xxx');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('c7ce7a1ed2abc9ab011cc35df25d2029', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'aaff4bcfcaa595218fbca83667c64c95', 'C', 'yhn');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('cf047dab9b461253a50a84430e1d68f5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '40a9b1401bebc29d47f6fdb71ea603f8', 'C', 'z');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('2e8d5abe2441b58f68b99f6ccba3f10a', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', '76fcf4589702a0c082805f9678339788', '', '');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('7439fccfa6cc2dc30783514011ab20ae', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', '40a9b1401bebc29d47f6fdb71ea603f8', '', '');
INSERT INTO `siswa_ekstra` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_ekstra`, `predikat`, `ket`) VALUES ('d87fd0a954c3fd9e4bebba2eebc0b8ef', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '76fcf4589702a0c082805f9678339788', 'A', 's');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_kelas`
-- 

CREATE TABLE `siswa_kelas` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_ruang` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa` varchar(50) NOT NULL DEFAULT '',
  `no_absen` char(2) NOT NULL DEFAULT '',
  `status` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_kelas`
-- 

INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('5656ff51c3172fc75985e4b5c9acead8', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', 'b9f286b3403b958369e0ec3423f1a733', '5656ff51c3172fc75985e4b5c9acead8', '01', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('20a672f750d99eedfc25358f6ad823e9', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'b9f286b3403b958369e0ec3423f1a733', '20a672f750d99eedfc25358f6ad823e9', '02', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('9b0001d3a5a4c413f0bb8e697b0e513f', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'b9f286b3403b958369e0ec3423f1a733', '9b0001d3a5a4c413f0bb8e697b0e513f', '01', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('d1bb4677907c3066abba8f8f7b0d3434', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'd1bb4677907c3066abba8f8f7b0d3434', '03', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('1239a2153fdca93a77792920147fefde', '2a771e8ba89dd288743d4839d61185bc', '3be17d09596cd245484fed3a4f5576eb', 'b9f286b3403b958369e0ec3423f1a733', '1239a2153fdca93a77792920147fefde', '02', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('f78e58e3d8d18775f418762e9426b43d', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'f78e58e3d8d18775f418762e9426b43d', '01', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('9f053182c0baf443eb5a128c079e66f1', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', 'd1bb4677907c3066abba8f8f7b0d3434', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('745151372e41f279049e15b8581101fe', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '828b3ff12044b06ea2883e49d9f0c8ca', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('da79d7a0df7a9674215684e59fae3f99', '2a771e8ba89dd288743d4839d61185bc', '2df89d4a12f44a5cc897d6814760687d', 'b9f286b3403b958369e0ec3423f1a733', '9df67984eb5b17402c198697043f4f79', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('707eec219afc171e0ca0c8edddb9c2dc', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('42c41be520e6d2b8fdc65c195d4cb17b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'aa3f24c48079c1f8377b03dde903c8fb', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('fcf53650ad936a726ed8543b5f161176', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', 'f78e58e3d8d18775f418762e9426b43d', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('c1a56add45d549f8b5d255a38766ee10', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '0e5267e7c36c7632be0d77268227da57', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('d7665d82933b2c133cd170a26ecdb4eb', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '1b225a69d9cae82e37b519e7414400f2', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('25e067eac4bae9935662bd1910140758', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'f2f413dd8d2e990ea9237da3e85da7fd', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('5ec98879784b1b34d9c435ef9cbc46c9', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'b2da94a37523f3470522ca1c6b24a01a', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('e4164c4684a11dc6280980fdad528d63', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '11cfe1d90e135a00921b7840a2f2344b', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('df40e522e4a806316da97e07c489245e', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '55c5057ef6ff1ec5bf13abfa9c50c355', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('1fb13fb80626eddda11a8ac150f332d2', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '955502590c5a96118ee2094bdb67b0da', '02', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('5cddbd065046defaa55ebde48c90bbf0', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '6efd409ae577467870c6a953c795e354', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('18af94eb25e22c5c701909ee1ebd5030', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'c55d3e4e70156bcbb7ca36f99decfd16', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('b4181b15cc347d62bffc6f6a0232c16c', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '39649f774ae93f2c89744803a5f02b98', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('b2851dde70ca3f8d96c289cd09abcc31', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '323c7e218fe4e7a5024ad8876d7aba61', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('abdb3896947ef4e9d15c23b8be674b7b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'd0a08bdd829a4bc434eee62ad72a0d51', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('2598986cd23729e49576c1172fdda43b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '9ac37c64bc6a6b9047d10d672b48c9be', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('e8581df77e3752faa1330a2555cfbb6c', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '5f9669d6a9d83c78c29e9588e0bfe673', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('d86d1f4604aebbce1354b8d76595a8b8', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '75d2955e361d2953471f64faf05a7af2', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('aa94222cdb141089821b6991e0d18939', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '8fb2b0711fea15b4823d347e4776600a', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('87350eda7c87a088b5e51cec40721f85', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '4f02ede76296b003f512032785e5c19e', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('3c9c1036652e2ee0737448d2650d59da', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '4c30e2eb6684359f4c8baa77313e5a50', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('81ab2b00bbcda427aee7125e4ff0e2d5', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '953caf11ce76653b10ff61ff8a3a13bc', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('90688d86531ecceec6edd103025473cd', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'b8178962fbfb9b0be71d3d7a7297d3eb', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('f80bb9e9996ea60a2c2cc9e2d41df72d', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '7dd230c57099924bfa4a02e1b62151c6', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('6547e7fe5711a6a680bfd0e9f6a12db8', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', 'cd522621df3b6e6ddb40788e9d2984c3', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('0169f594c22c832b89e07af0f55b7c87', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '0a246af7bd397521f108ce21368f1d36', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('1ef93cefaa4829cd78ef4978aba3fd7c', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', '2787382f3b83f03c407eba8de660bd16', '00', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('1b703ce39d9c21a42ef0613da447837e', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '639f03bd658dc30affafaa63a897b4d3', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('29338185a452b735ee859f0d24e577f6', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '2040c4401658a0dbe07325e910feec1f', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('6c8c4cc4bde53d551da1a5523f4ee3af', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '8129daed93e584be5ac5ee9e5623b06b', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('f2cce067dbd7b00ce63d4a13dcc38f37', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '34a64fb4deab766b70ec00c5e30af2b7', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('a9b71ad6a57587cff5706612eebc72e5', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', '', '2b88a29ea1d2419963b3b514d401953e', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('7adefd1aae250ff255f41ad1773e87a1', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('38d003a5e4a702f2d5474ce85dd3d8a9', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '828b3ff12044b06ea2883e49d9f0c8ca', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('c79e3a57fa5c5bff557e8a96999a94a4', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', 'f2f413dd8d2e990ea9237da3e85da7fd', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('635d59bd9813db8ef244b155d4a5b9dc', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '955502590c5a96118ee2094bdb67b0da', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('77bb1ea4d34bbb3bafb591cef77ab8f6', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '323c7e218fe4e7a5024ad8876d7aba61', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('68b474144752565b151e5b1e4d810d34', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '4f02ede76296b003f512032785e5c19e', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('a3b147739455ef0754407996f13688be', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '2787382f3b83f03c407eba8de660bd16', '', 'false');
INSERT INTO `siswa_kelas` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_siswa`, `no_absen`, `status`) VALUES ('6f26022698b50d737afe14349d1a54e0', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', '', '', '', 'false');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_lulus`
-- 

CREATE TABLE `siswa_lulus` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL,
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `lulus` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_lulus`
-- 

INSERT INTO `siswa_lulus` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `lulus`) VALUES ('57de8f3735d5f466eeb29bd90e6160f4', '1239a2153fdca93a77792920147fefde', 'd13e816e1bd8d00e0e5824fc430faf25', 'false');
INSERT INTO `siswa_lulus` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `lulus`) VALUES ('4e0ebde1a79be9d520e5a645c6698aa1', '5656ff51c3172fc75985e4b5c9acead8', 'd13e816e1bd8d00e0e5824fc430faf25', 'true');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_naik`
-- 

CREATE TABLE `siswa_naik` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL,
  `kd_tapel` varchar(50) NOT NULL DEFAULT '',
  `kd_kelas` varchar(50) NOT NULL,
  `naik` enum('true','false') NOT NULL DEFAULT 'false'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_naik`
-- 

INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('fcf53650ad936a726ed8543b5f161176', 'f78e58e3d8d18775f418762e9426b43d', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('9f053182c0baf443eb5a128c079e66f1', 'd1bb4677907c3066abba8f8f7b0d3434', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('d1cd723ad917404b0e2d1091fc16ae03', 'fcf53650ad936a726ed8543b5f161176', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('7adefd1aae250ff255f41ad1773e87a1', '7adefd1aae250ff255f41ad1773e87a1', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('a5dc77c892f5ae1d032d030a22611038', '9f053182c0baf443eb5a128c079e66f1', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('38d003a5e4a702f2d5474ce85dd3d8a9', '38d003a5e4a702f2d5474ce85dd3d8a9', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('c79e3a57fa5c5bff557e8a96999a94a4', 'c79e3a57fa5c5bff557e8a96999a94a4', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('635d59bd9813db8ef244b155d4a5b9dc', '635d59bd9813db8ef244b155d4a5b9dc', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('77bb1ea4d34bbb3bafb591cef77ab8f6', '77bb1ea4d34bbb3bafb591cef77ab8f6', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('68b474144752565b151e5b1e4d810d34', '68b474144752565b151e5b1e4d810d34', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('a3b147739455ef0754407996f13688be', 'a3b147739455ef0754407996f13688be', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');
INSERT INTO `siswa_naik` (`kd`, `kd_siswa_kelas`, `kd_tapel`, `kd_kelas`, `naik`) VALUES ('6f26022698b50d737afe14349d1a54e0', '6f26022698b50d737afe14349d1a54e0', 'd13e816e1bd8d00e0e5824fc430faf25', '2df89d4a12f44a5cc897d6814760687d', 'true');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_nh`
-- 

CREATE TABLE `siswa_nh` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_mapel` varchar(50) NOT NULL DEFAULT '',
  `nilkd` varchar(15) NOT NULL DEFAULT '',
  `nilai` char(3) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_nh`
-- 

INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('148e9c63cd538ced5d83353da9c5fd2d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('203a253418ebdd25e57261ae0780ff6f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6f38353486f6a59fd038ab94311a7e7f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('749b3caa39516e1ecfaef801947f9671', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7a93ccdc68a20fa1471bb64779cd6786', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ac83369332020dec864c126220d16dc', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('43712fb2cda2b4fe31a76ec6a1423f9c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('23a51a0b695d0b617226e24a29d1e552', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b308f7e5543fa1f9197038f8e58b0c79', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb24d60ffd0e23ae8bf8446449b75aea', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e0a37a4655418b91e83e85f791e3f295', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ca9bf30ef2be0a3398b7c15e594b7401', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef10c9ee93a5e26888ed136af64f650a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('25894b32ea65083929889c0d1264ab33', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('89a3efdc8eab9e16099d4abdff515225', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2d352d1258ac181e70ef7d07784146aa', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b6bc332f61e5bb6526a017ef94a3a7a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bce59f31bb5171fcf06697ebbf604112', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fb8d752e543ab04091ecaf9e486520b5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f99e10a5254ae69e48cb785948b1bd2b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b708211f27ab4b9fab818fb1917ab200', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8f4a0d0e55a715aad7e172e5bedad0f5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('27c69dffbaacab069d57ec02706fc0b3', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('31a271bf09c5cf68fbc1757ab1604d98', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9c5c00be0bcd91c3b02e4c6a95bb3aaa', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a32133452e5e868c4039aaf5735b6607', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cd486bacbe88f9b87306f9657011f69b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('91339a59aca145628b913f606533f88a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '11');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c22fca4d3a9419f641b6d89316434b4d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('224eed9931fed7df29b59241ba2a57e8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '45');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be28ec3b31100136bd6984330a5f438e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('12492ee67bef11cc02f53b08deab2a46', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '77');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f34b7fecef9084fcd5405206058a58d4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '65');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('74ac16434fff3ac1879fea355f337e5c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b08e09fd5f95e327a71102263d1fad71', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e4ce73ceab913b7f278e6ffdd5275c4c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e372a32e113a252a6a4879dc4d837cde', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '11');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bde973c46ce6ac66376a0b267133e790', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('625b4ef345b3b14ddf08bd24fd5d3386', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '45');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be9100fa805167fb0c077591a1ba82d9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2bb2683d71e1f144f38b3b4a32299eb1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '77');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b0610457b21064aa02d2e76cded61b01', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '65');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ec5a6b6dd85f1dd31b6fea0e08130fa', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('67d1662385347c304e596fe47c63d45e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('80cddbe28f616c0b8aa35e995dbf0ae0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b6526521840ff96c0d0d189a4d93f26e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '11');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('35828113e9e74ffae8cce8ddce12a96f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('97583345071d1d4ca34d5d656e5e9693', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '45');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2a4dfdb87c153463d94b345c7323fab5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2ce6d5470609d5db96bd5a071a0c70ed', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '77');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c7590c53b1ae31f0b6a334de5b9752bf', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '65');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3a664caa049a09f3772f8146c106b359', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('38316d29f6234d0a3ee5786733c75456', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e6d91e07173b879ec97985d4091e1334', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9d377074b1f8722e0ff7145266879896', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0ddd38837f38f2a0d403e1ff7c5e48ad', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a97c8ca4c02b1124d474ad095396e919', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('31977b1f2b6de1666f11ef89be7f3506', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('663436551122ce7531d8d6a426ee7f6f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d474eba8d5309e61d206e53bc79a2fe7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('38ffd0b7951567370d7f5880bdc4a773', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1821cae08c33bbfb7302077fe806149c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('922d4c2fe7bb635680c1c74e5b6f4bd9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2e3c82b5a8774953b99480338e110204', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1d4e535acd42182a5ab937ff816fee2f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e45f6d9a3a18d4fdffae941244aae65d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ebab246ff45d9e8f15fd5904755b3150', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f6d336680fc234de043c49ef12a4f871', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f1af9154ecb39dfb0e1c2c3e3ed761d7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bf60f1bf8f8c8f4178275a85c3ff3db9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5e016f100134ccc568cf05935422f6fd', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('faa41a15ec8c2c8743c08cf2a9673e8c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f740acc09e16ceff7ecbdf6817baa00f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('74ca467c12db002bb603dcb30c32eb34', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('966e0ea4bd036e6eadfbefd5aa6aae8f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('977332dc9bea59fe3203ca5bdf53d69a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3bccde97d659b16ba56522481cdfb397', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2502c7bba0bd99331bf7f1b2d347cce0', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3e6ceb1ea6c9501808c1f6bd2126594', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('99ebe2f623fb8726a6f8e24c932a8641', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('13bf1eed7dfd05d01dfcc05572e031ba', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('14e5eb8419d156566d29ed32e810537c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a225a6978b49b73bd9cc6f0e17ca41d5', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('37ccb9771bdb09b3339a1966e73d45a1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b85e2e69a20514bea2cff98ddc2ff66', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dcc0351c2dc91bf243c2bf86f5473e6d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2490b9aff7cf1d046bfaead34b653a1c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0db8df75b964f5332f8ce7156469a05b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8f17286ec61758b2dd0013bb569cdf2c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be8f12dfa836bddb2dcca6059042b4a3', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9fbd0d96e7ec556268ba062e0ea7953b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c9f88979eb6c31e47eb788a18d29e19c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('273f8567f130e7518873b192d06c532e', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f6034dad8b5cc4bdaac4cb356b4985f0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('262c1d210c270dc7a320e77063bf5284', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('722f1c3f0198f7a41218016bc2f689f4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8ed653e2f74c82c2eb03371548aeb43e', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('17fcdb453ca3746d772b4caa77b659e2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ad9ed6006fbc57a0ee98397ee17fe576', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e33ca952505d049a01ef5b866d31f16d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2ea7679d3b2b43807567068e4977352d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bb3eeaffc6f18dc3bb6281d74ad05937', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5d71afbf3061a4684067d0615d1327ab', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('57a56c8f4f7a6d089579282fa61195e9', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d91c01c5556b909ccd0d04e1af83e91c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('eb55c3ca0478ba1234162b54776bbb43', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e113cdd4bf4e0887b1fc4c9c85abc263', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d9d2ef73c5e1ad903e03e04efeb9647a', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1b17093a77c2091f3e19b2c10696c9e0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7513fb7ce81539cad40ff4fabeb47a6c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d15fbf9fe981877193457143f0d14879', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f808a6e78bbb239c24f2faf3887ebe7', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('02aa3b5d405682e756c85b8ca09752f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a7bffeb2d2274e073798646dc1ead3d7', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('37e4924cf35d246aa32501d85da23d1f', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('925839574fdd7f95943958a67b12dff0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '65');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('52bb56be08f256d0427ed351026c06dd', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('728ad2c84defeea3fdeb6f141029b45f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b706fb8756d3aff7e75cce56e844a35', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('59f75ddb81bd1d4e38b1d5dae07003e1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('331e6c9167ba0af58aba522519b5dfaf', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('60d561ba0ddf31024d74cb45cdab7efa', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d235615cad63877eba3cda5b6fe4174e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7d07ee804393c0432687a3d3b9e345d9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ab05348632729459cdf718cc96841168', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fc3623f93734358042f6050ee1f7bd73', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa8fa4f9822d1edb00055fd0fc31aab0', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1a2c1fa72e337cd21bfc0be1e1d6da31', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5b5693cc275877f0bab2732adfd485d0', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f7ce9bfe46f0f3e9e5bfd1fc372bb935', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f5b3bd9c66b37338abd7f3626b4f3637', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('eb3167763cf5657f3881ad4db5fecb48', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('90d0b96e4f992bc7fbdb010a7c21bf89', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9c6cee7457b6e5ab2a21d31b59fb317d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f0c17bdb4fb6c980116471aac7d3b46e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b57925d27120ced9f13a065276a7475b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a13600be12dd97961d7c3c5bda557b25', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d7ea4e8f26d9c3b04062ae5dec0c4e35', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ddd4b8d6f184659f37fed333d0b1c8d5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2ae175e98fb09790699f5d09823a29e7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f773392c269676b723615110e2ce122a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b94de3854ec2c3b12558811b9af6d81', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ebdade8ace7bc67f1fa90f8ca6059501', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4608a0b4879c662a84717abea3c99653', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c4cb8a4a41d7720f751cf19e32449519', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e646284cc260a68e427c36ccd1ec1a1a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('03f2b29614dbf96bba2c73fdaff55898', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6ba990baa9a0e27a22e44b75fe0e507f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5b4c4047058be026c4f789ac1e419ca3', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d23b9a1a1cbcca5793bc3cc20df36974', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4fd37d15236468521c912d717fd60ca7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '23');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('22bbfa90d26e143ae515556fefc33e12', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('46cce0da6d70ff498b701610ab3f52b4', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('70b81421a7eef33a9aff74e3d95902f9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6c93e95d9787a21ddb51e32caecf4d14', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3be07ccc2fd187120c07153332182ba', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e724ed0df65a3e6545b01a4b54a69398', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3dbb67fa5eafb1715c500a35515ee339', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a7add7d1604a6b2c0051ba0b71ad57c2', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8cb6d7631a7854e34b946e5f979ecc1d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5d4cf8ed03a0e9dd5abe0df96fd887c3', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('12693a7a6cbe9cc51a0179f05b28d363', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('27b560507c8c07865a49fbb08b2e6041', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ce33f6080b6ed8cfd256af6b37bdea02', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be0e6c5ee84ebed96eef45d653afec88', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('165fe8f944aef53992d5822d2cdf53f9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b6bb45e98f943668a694b8a65de7ab6a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('158cae5c31aad171f320e64a28c50c3e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b590a771f2f78bb196f7f7424e0648fc', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e4c9014707c0eecd4c9b7c1a9862ef9c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d74106412c95509444b188aeed7eede4', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3069d94a4a35178a1df1bae8b192776', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b2308cd78bb8b99f9c4577d5c6e54629', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b519672b06d5a732a393f4f2fe668ad', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b5a7e2a7174bfa116054f23447024096', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bef486865e080436f45fd49b616b1e90', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('198850bd709673abc3e03d43b3c752e5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7c47123c3a8d908dc03fad8418ae009d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5d84c04a43f677c89f85e65673df88d8', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b4602381a427e730db2ebcae2b65a897', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d62f3691f0718c12a2704a4d771a29de', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('770acc7c78ba65d6682de8df9882abe8', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ffdcc04983f7f5411c3d57710fa3ed93', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bc2902be9c8e3708a472415384853ddd', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('af46aa621c289798c899a40f48a59a02', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b45f33c1c16182b1a11cbc4e28de5423', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a4c36b6ba8e2425478818582a8fedf9c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('52b54019dfd911c94f628af76a8271d5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b9d68d08fbe84b878ba8c7a1f4310d0', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8957aa25bb909e60008a48739be25eaa', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a381f73607c6ad5323dbdc92508b3b1a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4bc76ddb20a72c8ee2529947baf6aca3', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9ee112166592b63c09fbcf743cda09a9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e20d5d390c17947480522e4c792c41f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4bdce4792c804948aca225915669853e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b1a0b03d4074fe99fc22e49f9327eede', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c904f1d968cf2f63f8921ca7b4da8d27', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1461f09030e7799613d90f91ff6715d3', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c7e0a0871bdb476cf095fb2c878ff2df', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cef092ce522854a986adedee1c3a95dc', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('04ce973e10d61467a2826ee79763a8e6', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3f43ee329b68b19e2c4afb03a1ef47ab', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d5e8c036adbc00595e3821fd66cb1b78', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('af9366dd906b6fd24c9b7ceac49011dd', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('68037ab2b03a5e9281dc53d7b4612da7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2a0537675f84c423371f5b395b553360', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8425cf66d89d253926b4557ecfbf8605', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '3NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e08f0f6290d592ede8136b0f81fb59f1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f1cd78130e87ba1c8a342e9f6e499a2b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('662793844d212ca3ef391f4877509224', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ce8c0d69f37a05fd72da30d5ee2425d7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('474a51a53f88cbea8f82118172857ca1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dba457dc66d9ee7d27a354b3f3bcdaf8', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('235fe4b65b03978a6dafb3e5666d9c9d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d54c52d5e4bb9912583072cff85d89eb', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('126d126472b1787ba4eaa3c61d31547d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('48b75b883f299326dbef46d6e796032d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('93fa7015a4749883805e2d0b89c144db', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e1154be5c1c85705cc73eed438004aba', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bb75a2c30691af73a96df904e59c89fa', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b7cfb7422351ce90264c6f4827ede0cf', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ca21a8dc4fca4e4da6b9188060d1ed0f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dd7c70326e811485f7b59c06d7afa3df', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef45cf11c87aaf1bfc63e3de143b20c5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f62f2edbfde683023486e99f1e760fa1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('638207a81524c5fa931fafcff3a64198', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8916068f90dcc5e1994261f6aadc430a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ba1fc085d95b9c624fcf3fcbfe473184', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('10afc23cce875f7071e788749ba5b927', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ff1d32a32b9fec5517205253ae599d93', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e67c78fa00b029c6223f7ccb13d3fde7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e98ee41fd46a2e0ab4e5f85acabe5f06', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4213dee1daa33d4775cb22ce077c32e4', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fde2fc314eec41f7c1bf86ff64d37a44', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('459c49fc88b9d0ca5d5c76d4ff855bd1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f7419e7d4929953d52ffa8225112822c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8c6d8a5cbd066f0972a895bb3ff1b139', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7bbb4a3b41a9827588d0f5bb7609909a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d7545e93813c394f81d8f6c280a8a933', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f64d3fd1de41326e3b023571eae6c613', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa642df41e943c61e0dc30109cf91a7a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b4958c1339421e67b475bd01b191bac', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9990f6282711d9aab2eff8429e230397', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4caa264c98ab99d15c9e73f4795d0f4f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('026ea2cd8c3906a6dcb96e019e499a97', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a9c35961914efb69b1a56bcbde75d6dc', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a110d9cac221897b289c2b4a6bde2916', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('394781da9f67ce8a4e694d09414bec32', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5b4b7d03d124dbff1266f4c3b8684ec4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('68e6833e3374f36d0ef6b62dd3d7e396', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9381e2b3ba7c012eb4024412bd07a80c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('00893dd002f7f06471f27b5be8423a9e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d45b134265e41c75ab8747e41054f3d5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1f0781d3daa470656269359250fdd03e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f4409691d8d20fb7f906a5b790422691', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0ba18220c4ccf1e65b1e2fff56b2797b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c77803a87099b6759655bd3d63963317', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2e2b3c290714c2a1a777fb39e82682b8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('53a0e562acfc8e24b9b2a0763eb00d98', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f052ad13acfd407c522d52fcb6798ff2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3614c995f4e20f9e56b8a6f5bab3f047', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0f6cf244f4d243c188622a25f3ee88af', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef7a0f72133541405f07c04960560616', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('58075000d38256de17166553687ef083', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a0ebcdd7968cb3d97cc181eebb011e75', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6fde5017251f2659593055f751387ac4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a1ed5c7741cb165b744ceac889255338', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6bfb0b6c551f4ddc5cc45994d36da7ca', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e1cf4f0df01a326e87453b40259504d9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a51dc1b1cb97c4f953e2cbc53b00c742', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cd3cdb16369307f2db87fa2056d55c53', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d1d7bbe8c36c97d97752df35e9c4cf55', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d9a3bcbe5e401b10b5bc921f95e0bc0c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e43e771d257dbd5b8c9c59ad9aee6b2b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8ed97f324a8645117a1933baacb879ef', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c764a1b6ae61a9a2a09c9bd38eb6888d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('89c3950601eb47de9bf2f6b597e60a60', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c395a14e6e34c2b8e21eb68a0295dad9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a4b8e463f8be0ea0fa4ead17bc2144c3', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('94d7e46c2f57db3e55f4fc6906d1f3f7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f177ca3b18922dd0401468f4811bb68f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3e94c7fffada3e33e7a5836f662ed1c1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3718f60616682e6ca3b81af885e19c1d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('35c20df47c94609ff016b61b64802f69', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('47a50156b9faef841e6b6fa38ba1a2b5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4de0d7b780f6a57974df14842df2d6a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('32f0c7162eb22ddcef0ce81409009e35', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6ba56df24aac9a051d6d2ed9b407eafe', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2b051605a599535117b58c5c4843efc9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa488c53780df820f5015ad9c3edbda0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5d9a841461ef0e58229ab6557db5be11', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a08153200805bc6d4782108d82f3e762', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3867547076a1ed88ba2bfc71978ac3c0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('849fde06d9eaceb6866dadb4b6b5944b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5de4a4f2ff18c7c96dd51368e21222ae', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7dba46156a75df8b3bc67760ec419205', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('67d1c7c7559fed55042426c05257e64c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8a6de507733bc9250afb35edaa2ad4ef', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6c4d1792ce10f62df4b24ca9c6b1aac9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c28c88c2605f40d237fb91bb28b36baa', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0a019c6d905009612307b02ba10ec46f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d7acd94df88dbeb56a06c1313af35af7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34cf5c4ba22db553d83d17e2c919e204', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3f8e18aa7c2c668e23154bcb6fb3cd38', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e2ed7bfe3a11916a3d74fddf9a9df104', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('60ed5ba6668f9ee451016cd4f13a27d5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('770836948eac6b0d92fb5b241592b8b4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c60e82bff3bc1262febf39d4c3c3dd6a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ed44b75ef3176b54420fa71dfa5ef4ed', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6ab0607aa8de18f8e6afd0d168452fca', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8c811569810fecfd718d145f5d163125', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c16aceb75f3cc0818b36841f4bb054d5', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5555091b24fdeae0923dbcdccf8c9eb6', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c1acf1cdaca0aa0218f7c7fc2b99f94c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a4f0e3a2b53b325c8005fa966f90df42', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8756a3e79eeb511f5d3bd5c64990e855', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fcb2581dd51d5b8a3530900916cfa31c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6cb3d577352cf2fb3e445598bd8171d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a9717981d8223c3aae91c2891311203c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51cfc0127307f901f7c69b62ded5c88d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('876de74cb0cc64cc66f784f2b9e677d8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('40a8145ad0d4f97381e1aef8a4556d65', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('895b50303a1a2eacdfb2c139f3bb8884', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e890ffbb1b98923d6f7108d6dc66008c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fc5619f7359d8b4d5b50d511cfcc7c8d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6602efc29e3acb9d3bf40c9c802c0437', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8ab9aa484956d87fa147b852a1144ef8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR2', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a70c6ad5264807120c4ca22a957f9681', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4bd217c25cd0e0f131ac57a96ff9a1fb', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('62912cfe1e2423f3f797962ce949df40', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ea970f0b1c86145e900517add6f5523d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3c5895cbef99613810a73e9008e18609', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ddea29dac344b3b49c232aa0933c4bea', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('74e76600874d66ec2006b9f592304d40', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1bfe1e31a2ccd80e981a4ca6cdb7574d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5a38d6f185d4b605fbbc0293bddb7f84', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR2', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5aa338d3ed100ce3aaee146f46e393aa', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8e8d41f232c9d2dd6c8de217dc4132a6', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2cfd867157c6e8496f8ffff92ba58746', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('781785f991cb8020dbdfb7be8524d248', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8f4ae7f8013e8eba55cf2a6d63fd9412', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('43973b909448714c06e8ba8b72976f8d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('75fbdffb767d4623b7b7a3fa3067eb5d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4582fbcab8deb3ccedefaba874ec28e4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bf4e14d9c005267ccc5e8148dc2d6c0d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '1NR2', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5b952624dd9fccc6a23ebbefb298781f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('36e3d58bd2c8381dceabd28adf1856a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f31dcb1b1d0b4396843e474aeac96be0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '2NR2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f4090599f27bcbce72aa348036a7906', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7e84bb8dc23e78ecc1ec6ee0f4e2d0bc', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('302e18c0d2397a55214e5c14b30f6de2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '3NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d703b3112f66a8172dbf99b60a8f97db', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('480b7005421d8030f0afe737de8e3049', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('71a2e1b1ef63e6babe553d0c21d73159', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cea1a8eb048f3fd437062c5598054d37', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('585269878bfe856b8aa8436455f6b3b4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c24dcdfbe22f9ffdce77846944aa8a67', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('451f087b88bda68d63a9764c8c65201b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f9a3b616e47ee354165ca12b4fe4d045', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('27308d775c4f6863967d9f22f18a293d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9a3a5957c16352116e0518482346c433', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7054199cbd88bd75fa1436be5a8c4915', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e8bc63b035cbda29653c54df2ae057de', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f6aa4720aab087e20930db8b2f914673', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0b05e99b86b922973387ed8ed22468af', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('15091500d1c6237e4d201b7a51a01f2a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3156d2f47b0a25376503571f1b19e2c8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5858b8ef0ece718b953e97c1cc5cd08e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('daa078881e7bf39f395ef5220482c867', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8046c05e40edd199b8a4066d86a8b3a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ade0f3ce32610d3a49d64ed8aa7e1485', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a28e14eb7f00ea6553846d180f71db9f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f50b07f4f6eaca659b26cbf57c2b1775', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4e35cfa0bf1ebbac62fa22681a92ebce', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0dc4721bb0ba8a9c54266749a9648f0d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5a5b34d2de0c1b84007f006b07ec6611', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2aa9414f9b2168d6064cf1a8044b7fa6', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a1621a8854d8baa2c3a2a1b5c6eacace', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('96391ebf754627e8264a9e05d6097bb0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f6f036b721aff48219475e1227a46493', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8cdb3a415472bfdbcc23caa8ac27a382', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c128af5da1173e6c6af4946080060fc7', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c9bef18e7057557c0a90a084eb65c8b8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('03c6866a96aec5bb09564c025915be19', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8ec1d2be628372c606b947c35947d878', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6a30e912230eba24afd2f27d66a4fdd7', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e2244a13edd5012dbefef18df36f3b72', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('67c4393ff44fb8b9922973fd4875c5a6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0b92024e860a7ff3e3a45a924c654341', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cdd4daca83ffa802f4910dd252f7766a', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('90b2901522223ded7faa7fc68c8272cd', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b1f721c54506aaa90b40d9344a952c08', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('47735a9deac5945247b4f9d5bb58bc8e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('11d608bd8bf1538870ccbbb07c5e8819', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('835ae57eef5eb6cd6fa9f007bc869b08', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('28f0f6ec7a9ce522bd933992d6f71c4d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('58dbde916f9927e9c30c828b857f1f69', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9fe01acde838103beef7726afe9abf8b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c2507f06f611bf495b8231225fa3b08d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f6aa52088c70ff92a3b93a3f1a1e9d9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('03b274b5b82139a06a327121ac472e09', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8d27e473a939c07e3bd54b683c64da8e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('567ffdd89e315f9dcbef098ca9cfc6c6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8108df5ac338d248868992afc282d018', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('460d19a441259bf3ca7e45f719261a92', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ff1a81319f399a1c0f4f4c3bef9886c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('847b1121ca4cdd578e4beb64be3ed87e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51ef85db1040cdf02702d891a9e6cdfc', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('75f7c339c9d26d6ee29c313e75e24ca1', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a9d80a2f5422662a8b3684fb9b4f905d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8bd4d03a6bcac8e9ef30a1f7f893d75a', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('21e55086a42c10f24e6e62cb399548b9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6154fc6b35e9db6432d2715fce412074', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('523a983233c789c35574ff1247199de7', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('044b4fa77d3c2addd5f3accff0c35498', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0d8510e18ce2c612508b5847704f70ee', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('576169e5619b53d147c46c6e41173321', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('688c1224b18f2da074eee4f38614366f', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('42ebe4927e111d0345915ba45373f28d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f6abe169a3f359b164215e67a0def8c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4b4a8793201aa6bcf2396f827d516379', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0517984cff028b015cf1fc89eeccfbdd', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e9e338b502351a55f42bafab6b5423c3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3366d6e590669ad74ea009c394028b7e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa6b4bc77999986dec653ef4a3949eb0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5a3367596dc7209df81ae66f27a2c545', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('20019627526e89d0e4daf3463b4e7cc8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bd75dada6d648adf267cd72670cf0505', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d6b6974c8aef30d315c9814c8248ac21', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '2NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('43c8f1f3f5cf2b9e486179d336877fbc', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('54b793c2b6542452b8d4525b2977f577', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9e956faba6e0ea4222ebeb6ed75febe9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7888d03af8c8e77c76fa4dd354881ff9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('193d6a02748f6707ba42c61813df6689', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3bb0cb013e725fd1f802917347c61553', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5a9289f45096d8756c2ef008fa37644c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('594308e16bb4d5de2e50e574c94190c8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('410fafcab19229d54d0091e6328fa436', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0596bfeb383de5a23995d85bcfcd87a2', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('82f0120c37ccef4f6709f85b821804b0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d118d3e329b3e67aaaf738fbc5113f2b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('edd1be1df72ca0fe0bcaf35fb60b0f7b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fe7df292db283ae586a0191439375575', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('22743922dde6d22ed1c707a5d6654ec6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f90e6ff09a6c14772e3df2070bd74d82', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51f7f49d2f05b6d62008a4d2c6912929', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3bf5df7b9705fbfdf83c14d5ffbd9ade', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a7430772ba49b744e8a28984dcc89c2d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('724ba474a3c57836902378826cf745ca', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1227bd3f35eeb4448c84473890a61fee', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dc0da8e015589128fd249b2d3d13596e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d61c6543c878b4282ecd292b7ab256f8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('876ed3220f7f35d8765ca8fe081241ef', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1818fcbf56f8f00a9156b244e3ae8224', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b57b2fb9b47e43fc1259ebb5d5fbacd', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4efa6b7e737c1ddb29a85a5d7d140e31', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '2NR2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9598f759d331e577234b8a634df79c94', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1cbdf37ae782fcef0bb9a2406e2b1f3b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e06da9e24041f907faec9ac8461ae91', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '3NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0969f4be5b72eec9c98def79501c343c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fccce002a8ef22d11a39ec9f9dee62c1', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8e93aefd8ed467aca23e33959477c984', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('da4c69160ea48e5b346107ad7fc0cd47', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('84bdcbe8c9615fc494f00915f01874e9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e18bcba132fc6d9c28a205436884e163', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fd0ad70ffee46336cfdb552b49e21b1d', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('edff5cc229acc9c4e3250fae59131b0b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d3379a4767491028b679ef090fe13777', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9d95cc5aa588494fa45ce0c896a9ff54', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3d244d777b30db1a4e4b62c5acd61b28', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('660574eb60c18708574bb140eb56f7f1', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f03261ad3826182a013d54c90271cbe9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('363d9c61869162d2f00a87e39fc491ca', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('874acd74598496bcdfb53a5014a0f34b', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('90e031026abaaf6ac2e70d29bcbfc31e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('187b39b63a1880aacd365bed5076e3a1', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0873832be7cb1ea0b5502712c5786217', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('62ed957db9b465fc9928a0c41319c03c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('637aa2fe4ffa44083ab6ecaf672fb0c9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aeec90e3f6b8f1dd9a2517bb06741be3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('830b5ef7e562b42f18507151179fe3b4', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f77e4969305dbf27ab18bd70dbf18de0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('32ac6194c7bf6a8e684f9200a00b874c', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a9fd038ade8bb6fdbbd65bd9c379c493', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('979e592ab31d2c7b89358bc139d1a142', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2e496e87a9dc70151d2864cab69aa218', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa11961a8840d6ef22f19664895f74b2', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('278b960dd9eea7ee1ebaf18b64bbd43c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('27caebb5f76aa107d39493176425d954', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9026352e43b9056cf8a04f9c090e27f5', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ff601d426addae8fe1723ce630b31400', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2059f90bbbdb0396401c5c4c13c77942', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('05b347dbb0231e4621174450b8da8e8a', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b5a3f5e01d798f7e32ede647b8bf5d1d', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('62e2fc10627fc5151d1766c52ec5d88e', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('80c1b44e247450a614dce44c1b979af1', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3f3c6dc2e408c3f16ba355b881cbb63', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a3ea636eca0af9605dccbc52857e1656', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('591007db744db7640fff5bb99802899c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1ea909f8c5fe1a3e8118d49293434f00', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3cb5398cc7f3cb0596fdc4cc8a11c3ee', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('703f4873392eab7c5decee3674fb6db1', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('447db2732ca9a9ed4ee5b9b0568e7398', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('728eeb2baadc22403b114ee3119ed501', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a10ab821300157a9df20fc5d1d12ff45', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('418d6c02a4f445f2b6b107ba04c067c2', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0fa5b3b3ef16e14110921b150f9ec425', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bec3942065d73ba970d818b5512feac4', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('126ea133f3e332673bc5ba4b78d14177', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ba1d1d687eb3828edd0b2be78a326b2c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ced6d4ec485ecbfd47bbd99505198c5', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '01');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('95c3a630a98b93a60a1abfa6994c7e33', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b6aa0da211c16fddb6c47c885b417830', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b26e5e7c695e4c80397321adcccb6c12', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6068bf378946d1445ee10d0c6f0f6db', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '89');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a8ff5ff6b7c56827b7d1da285a9d95d0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('312e0d0d7daa0819905921cd5c56becc', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('efc1b4150e18b6b3cff55b5ced6d6a20', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f9259e339a601fe53d84e18ead82ed6', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('75085131b0c4cf46405acc333be0adf9', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f0dfa375aee57735d0bd0dd98ae6e624', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('edcec4a8b0f02d3982e5a394326eb700', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c36c0c60f42495cb5651e644fcbfb371', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b1d7fb0d75c5263037ae18f13e7b1158', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '89');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3be585be7e179207e5a8aa33a429d87a', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8069c948c874c477765950425d5b4b71', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6f7c0d79f117e0dd39ba52a1a9aaf85', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5547ef16f5eb885844c08d944484da9e', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f3952b899f55a9f630d1671b97e6447', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f4941a2288f37721b3a6128ec6610e23', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('19d8f9b0cd169e9c0e23115ac0a91484', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b664091633e3f2eff32638a217edd5a2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f76690161ab7dbf61b0f189342c45c96', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR1', '89');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3a63f0957581389e5807a723f8e6fdc0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '1NR2', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('503303917b17087bf273f1c96b699c1a', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('87566504689ce71ce355a5ff5e5d0e22', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR1', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('86206028e03f401d85af4ee61beb9cd7', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '2NR2', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a38c0cbaa8b39f0dbbd896a795647ab5', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0b5108683bd447062b8dc3218e2e10d1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e41a2387216179196684b7bb837f4cd', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5b380e76089a9e114d84e5df25b01f7a', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('317bbd2ee74d38a7ef019ce80e7a6f4d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d0e26c7061fdfeb46284e479576c687b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '75');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2713ed3de65e78d32510f2403ed48c2d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e249f6eec041d2bc47820871910dee00', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('64d16c61121e328263383dfd78b7b9a3', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '67');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('21df894983b592138e67c6ce7a062c06', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '59');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('75de92f80212f01980dd9368352f64a6', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('94077b4923a4fc55394c7c822c9c4254', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ac4247ff6378bfb710a9a890fa25f2c4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f41d049f28b19ea1f47318fea8a61db5', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0aaace6938a49d14c53b11c876092857', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '75');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d28448c6806bcd9ec5c023c8898173b3', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('eb56d1d61545e3ee2f364d33946ce0a6', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('978b5428cf15c4ca2946c469df4605e2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '67');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('35c94d5bf2b9b687adb8c4af41577ca4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '59');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('de1c470fad2d920db8d05a6d9317dd16', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cac9b5bbe53016b71994e15e8967b252', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d4d59b9eb79f423e658effd486d1cf0b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d5d331d68437c70cfd675afcafb75493', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR1', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1828623c850c529ef93813428d0bea84', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '1NR2', '75');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b396c20d280f933fac8a0184b66521a1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f602b8996fdf9ea22cc88c7aacd14947', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR1', '98');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0231acecde26a79cc142f42c50de22d6', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '2NR2', '67');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9646bb9ef60f472c7925dde48d796f06', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '59');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('46933088a55e861259a62bd13ee976d2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR1', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e504b90826598bfead0ff92eb8d0dec0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '3NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c7a658b098a7c8a4e02493bcd3306b83', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9a9e5bae117060af189aa9c53590231a', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('74b89115573e73ccb4115e56f492fa0f', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e8437dd91c57c90310002b36f4a93452', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b2d1913c154f4cbdabf788d29d4159f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f110d6790dd0225b63cb2ebee87779f4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cab389cdb87578e8063e9b52ebbe4aba', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('488a414ab82b8fea916ab772a18f3d73', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR1', '02');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('abd9799ad512715c6de399623d98dabf', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '3NR2', '03');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2796ff00384eb16b3fb64a3df38ce465', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH1', '69');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b35a228480457bb3b0484382e389bf25', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '1NR1', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('279eca5a0dcc80490b0f89c9c654bce4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '1NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fda48c6b4cc0ad70573e731631ae42d4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH2', '89');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('eceab8683574f983e153ee8721f50e84', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '2NR1', '87');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b17eb76555c0d731b64c69bd55367949', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '2NR2', '79');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7baeca3457053182fba06311785f69b5', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH3', '67');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('346ac6f8671acedc9478146405ad1f25', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '3NR1', '89');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('65ff806f68c41542ea9cd00cff2403d0', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '3NR2', '68');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a8398cb253e175ffdad114b22ff8e451', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH1', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa163f219ba8557bbc0f102e61ef8127', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '1NR1', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3e646d1cfd8d83e2636742ba0e3b36b8', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '1NR2', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9873c7b175c9da71c3e9b5a64b14dad3', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH2', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8977bafa3ef1596bb5e4b72d31b426af', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '2NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f9e21608f3cddb2fdc67040dbf1d2506', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '2NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b83c3a34f092feada7a991e9eb3ab791', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH3', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('71e69810f26e75df66233be77f0ff18e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '3NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e01691f5b4cf2ddc40b11bdfc19d1c8d', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '3NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('006b2b8f15909a022ef5a60248b5b494', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('81ee62d5e6572c05690b3a528d5ecaf6', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6637d9b79ae3a678c150fc8b74b2f673', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b4c5fa8cc54f7b730c5357bb9caf6842', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('eb31ca865e9551a96719037292cb3f43', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('503c5db38e1c3b372796771923959ef3', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('286fb7a3bdf3f360f5733db03d7ed8e9', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('22cfa435cdac2cfb67d4b7d949a67faa', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '08');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d1d829f551294d06ad3ee345c7762581', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '07');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3fbe7eb6ac44f9cbe3bc27d779f9afef', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '06');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d00d7f32ba32d08e0d08fea1fd053d6b', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '05');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6c134d31cf1fe2ba5501b7af540ae6ff', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '04');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ea48f8928dc8f19bc87b732c090a3c2d', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '77');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3959676a51f53a878a4c66392d5e8995', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', '1NR1', '65');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e70390a638632540cbce4bf6df4865c8', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', '1NR2', '45');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b687b5b217b0bfe0e64355f04b657d4', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3fdd751531ae24166d2c272d9697419a', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', '2NR1', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7aa21742fe7aba7df7e097fc6b946e81', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', '2NR2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb97788c6bb8166e9d57c90e0b5a735e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6f6073355982e1d6d666851aaf130729', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '54');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e526fbdfda27b45cf254316cbd9c8f4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '34');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4a939e88d5dab06cc3aac655f1d66900', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '56');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('54aec53c1b11462c2fc98d42d920f8ca', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '78');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2709370aa783d2b411e012b0806a75a2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '76');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('af823a29e94e725466c070611d2531ff', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9cf2979fdddb97130a4eeea031ff6d89', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4874bacf4f2957e7498eb57a14a10175', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '1NR2', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('93938f67c398f7783ab64fc1eaea6631', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('86ed7f62936582edb307277f7408bfbd', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR1', '');
INSERT INTO `siswa_nh` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b06339b585ffef16fb6bf633a43a21c5', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '2NR2', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_nh_rata`
-- 

CREATE TABLE `siswa_nh_rata` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_mapel` varchar(50) NOT NULL DEFAULT '',
  `nilkd` char(3) NOT NULL DEFAULT '',
  `nilai` char(3) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_nh_rata`
-- 

INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1fd3843e54687f8c43589c277b5127b1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('42dc917007cb9edd90d00ca13bf5b296', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('08db550a35dfd49952402eb1e3fe2332', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1fd3843e54687f8c43589c277b5127b1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('42dc917007cb9edd90d00ca13bf5b296', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('08db550a35dfd49952402eb1e3fe2332', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1fd3843e54687f8c43589c277b5127b1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('42dc917007cb9edd90d00ca13bf5b296', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('08db550a35dfd49952402eb1e3fe2332', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ffe911fcd3c154dc458485f819a88a87', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7627bb1d6ef62bf3dbf77191c88b4e03', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d8e7779ebc8bc4d6d935ae9b2a39c949', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ffe911fcd3c154dc458485f819a88a87', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7627bb1d6ef62bf3dbf77191c88b4e03', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d8e7779ebc8bc4d6d935ae9b2a39c949', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ffe911fcd3c154dc458485f819a88a87', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7627bb1d6ef62bf3dbf77191c88b4e03', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d8e7779ebc8bc4d6d935ae9b2a39c949', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ffe911fcd3c154dc458485f819a88a87', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7627bb1d6ef62bf3dbf77191c88b4e03', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d8e7779ebc8bc4d6d935ae9b2a39c949', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5bceeb7c0f778e1e4f78e6c6242e95c1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('07c14246f209211ee1d6be84d4e2b2cd', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e32cf011c8c0cca742654bd05b6cc344', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5bceeb7c0f778e1e4f78e6c6242e95c1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('07c14246f209211ee1d6be84d4e2b2cd', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e32cf011c8c0cca742654bd05b6cc344', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5bceeb7c0f778e1e4f78e6c6242e95c1', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('07c14246f209211ee1d6be84d4e2b2cd', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e32cf011c8c0cca742654bd05b6cc344', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b296a4c7de8eaa945f77926ed6e2f1d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '45');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0882d58b1e66acdad5daa75032545180', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '77');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('23d7bb061ed24e82f26bba342666e2c2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b296a4c7de8eaa945f77926ed6e2f1d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '45');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0882d58b1e66acdad5daa75032545180', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '77');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('23d7bb061ed24e82f26bba342666e2c2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9b296a4c7de8eaa945f77926ed6e2f1d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '45');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0882d58b1e66acdad5daa75032545180', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '77');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('23d7bb061ed24e82f26bba342666e2c2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('313fbf5a8b89ba53989ab4f32623b8d9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5726595835dbe3c821e2186fa40f5a5f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ad5b2733e7193500619fe1e586bffd2b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('313fbf5a8b89ba53989ab4f32623b8d9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5726595835dbe3c821e2186fa40f5a5f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ad5b2733e7193500619fe1e586bffd2b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('313fbf5a8b89ba53989ab4f32623b8d9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5726595835dbe3c821e2186fa40f5a5f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ad5b2733e7193500619fe1e586bffd2b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f09d4cb42113a4431af5bb800c2033c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1211d242ec30c47410e8b09e8bde1b30', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2138b175b22e0b2ff516ff6bf2a163f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '65');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f09d4cb42113a4431af5bb800c2033c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1211d242ec30c47410e8b09e8bde1b30', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2138b175b22e0b2ff516ff6bf2a163f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '65');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f09d4cb42113a4431af5bb800c2033c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1211d242ec30c47410e8b09e8bde1b30', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2138b175b22e0b2ff516ff6bf2a163f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '65');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4f09d4cb42113a4431af5bb800c2033c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1211d242ec30c47410e8b09e8bde1b30', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2138b175b22e0b2ff516ff6bf2a163f2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '65');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f759e94ab0cf4f91cfd76980852bc05', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('04e1c3da81e2153d983a6215b494b7cf', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f5931794b66f564836cadd67ccb546e2', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f759e94ab0cf4f91cfd76980852bc05', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('04e1c3da81e2153d983a6215b494b7cf', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f5931794b66f564836cadd67ccb546e2', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5f759e94ab0cf4f91cfd76980852bc05', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('04e1c3da81e2153d983a6215b494b7cf', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f5931794b66f564836cadd67ccb546e2', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1111fde34272c7c3f8ab96b1ee4e72c4', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('68dfdd21ad16e05c37c52f1cbc872594', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b5c13ac863eec29aa72f495c9c490e3', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1111fde34272c7c3f8ab96b1ee4e72c4', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('68dfdd21ad16e05c37c52f1cbc872594', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b5c13ac863eec29aa72f495c9c490e3', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1111fde34272c7c3f8ab96b1ee4e72c4', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('68dfdd21ad16e05c37c52f1cbc872594', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6b5c13ac863eec29aa72f495c9c490e3', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('da733e5b7a10fa31af975bfe92d10247', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2065c137f6e5706f62ca0d1bd109ce8c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('24a459fcf218cf4fb899a935f5d43119', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('da733e5b7a10fa31af975bfe92d10247', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2065c137f6e5706f62ca0d1bd109ce8c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('24a459fcf218cf4fb899a935f5d43119', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('da733e5b7a10fa31af975bfe92d10247', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2065c137f6e5706f62ca0d1bd109ce8c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('24a459fcf218cf4fb899a935f5d43119', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('da733e5b7a10fa31af975bfe92d10247', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2065c137f6e5706f62ca0d1bd109ce8c', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('24a459fcf218cf4fb899a935f5d43119', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f92509a2c6ce3f62ccd64591480cdeb1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2d3dd0308b3bac6c01bacd015ed74f4f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('577119d3df1855554d241100df21ba1b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '23');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f92509a2c6ce3f62ccd64591480cdeb1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2d3dd0308b3bac6c01bacd015ed74f4f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('577119d3df1855554d241100df21ba1b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '23');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f92509a2c6ce3f62ccd64591480cdeb1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2d3dd0308b3bac6c01bacd015ed74f4f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('577119d3df1855554d241100df21ba1b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '23');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f92509a2c6ce3f62ccd64591480cdeb1', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2d3dd0308b3bac6c01bacd015ed74f4f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('577119d3df1855554d241100df21ba1b', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', 'NH3', '23');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b32ed7ae9a72f98876b2fc77d06716a9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('684ee06cce26099b5a919a98fd7f6817', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('490754d12d3be8889cda688ab77c17ee', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b32ed7ae9a72f98876b2fc77d06716a9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('684ee06cce26099b5a919a98fd7f6817', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('490754d12d3be8889cda688ab77c17ee', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b32ed7ae9a72f98876b2fc77d06716a9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('684ee06cce26099b5a919a98fd7f6817', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('490754d12d3be8889cda688ab77c17ee', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c6285d68ad0b3f16e6154d9a73a9b1d2', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8d990840fe3db7652d7c9f158a1bba87', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8c4da05e1363d2b5dc2ee9ff300f044', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c6285d68ad0b3f16e6154d9a73a9b1d2', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8d990840fe3db7652d7c9f158a1bba87', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8c4da05e1363d2b5dc2ee9ff300f044', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c6285d68ad0b3f16e6154d9a73a9b1d2', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8d990840fe3db7652d7c9f158a1bba87', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8c4da05e1363d2b5dc2ee9ff300f044', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f351d87b4f83f348520c16c4a546d671', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34df61e3f428f7231277fbfeff09b55c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('87411119d98c279cbd24e6bbca660684', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f351d87b4f83f348520c16c4a546d671', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34df61e3f428f7231277fbfeff09b55c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('87411119d98c279cbd24e6bbca660684', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f351d87b4f83f348520c16c4a546d671', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34df61e3f428f7231277fbfeff09b55c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('87411119d98c279cbd24e6bbca660684', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ed5e92d90301b2565b864fccbfb4fa14', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2928bd41e9baf3edcf3ea409938821ff', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b372a525f39e4150f26272b1f78e78be', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2791a816bca851b1976a27d8ae50e88f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ba27c39e2283ff91e93921dbe3238354', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('00c65498dc89cc75ff3a5e7a39edbfe7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2791a816bca851b1976a27d8ae50e88f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ba27c39e2283ff91e93921dbe3238354', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('00c65498dc89cc75ff3a5e7a39edbfe7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2791a816bca851b1976a27d8ae50e88f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ba27c39e2283ff91e93921dbe3238354', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('00c65498dc89cc75ff3a5e7a39edbfe7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('abe3f124002e87daa35c5f6e83c0dd4d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9080acd62afad2eaa69249b925a17338', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51caee9c64d807dc1938ad16e0ffaa68', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('abe3f124002e87daa35c5f6e83c0dd4d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9080acd62afad2eaa69249b925a17338', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51caee9c64d807dc1938ad16e0ffaa68', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('abe3f124002e87daa35c5f6e83c0dd4d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9080acd62afad2eaa69249b925a17338', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('51caee9c64d807dc1938ad16e0ffaa68', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c971babe7ee6e112ca5f3320833cc4a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('648896c5f74e7b10e7fa7df7538b2817', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b01b424a46633e2e89c17df45334c572', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c971babe7ee6e112ca5f3320833cc4a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('648896c5f74e7b10e7fa7df7538b2817', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b01b424a46633e2e89c17df45334c572', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c971babe7ee6e112ca5f3320833cc4a7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('648896c5f74e7b10e7fa7df7538b2817', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b01b424a46633e2e89c17df45334c572', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1a312483e14ab9a90f85cb11e91b4246', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cea90e0f7aa40cc4704fdc807b3ae4d8', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb80e3a5261ef3ed8f68d0195153c453', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1a312483e14ab9a90f85cb11e91b4246', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cea90e0f7aa40cc4704fdc807b3ae4d8', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb80e3a5261ef3ed8f68d0195153c453', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1a312483e14ab9a90f85cb11e91b4246', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cea90e0f7aa40cc4704fdc807b3ae4d8', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb80e3a5261ef3ed8f68d0195153c453', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('525349296f1a85d5631c2db5987e41f2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('73b6e91e61809d46035d6d7fa28bd513', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6ae6e5b976d2aaaa347bbbaaf4372b8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('525349296f1a85d5631c2db5987e41f2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('73b6e91e61809d46035d6d7fa28bd513', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6ae6e5b976d2aaaa347bbbaaf4372b8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('525349296f1a85d5631c2db5987e41f2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('73b6e91e61809d46035d6d7fa28bd513', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6ae6e5b976d2aaaa347bbbaaf4372b8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('824821b78d81792c7d507460170be85d', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('29e114b0279bee84d46fee034e6e01cb', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ab58b7800bb1fe7fde62884e4e5f207', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('824821b78d81792c7d507460170be85d', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('29e114b0279bee84d46fee034e6e01cb', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ab58b7800bb1fe7fde62884e4e5f207', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('824821b78d81792c7d507460170be85d', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('29e114b0279bee84d46fee034e6e01cb', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7ab58b7800bb1fe7fde62884e4e5f207', '', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4a289540e64fc9043d75d6f6a0453ed7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('297bb227788a0ef4e443168ea5e48f9d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa2c099326f3b6cd409258341a0f197f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4a289540e64fc9043d75d6f6a0453ed7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('297bb227788a0ef4e443168ea5e48f9d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa2c099326f3b6cd409258341a0f197f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4a289540e64fc9043d75d6f6a0453ed7', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('297bb227788a0ef4e443168ea5e48f9d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '78');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa2c099326f3b6cd409258341a0f197f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d9e23673131e62df8b654d9cc3706c20', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f03d54e3949b4692fde2e325c46a56b5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3768cfc6bf36a85da2b4507fc681391', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d9e23673131e62df8b654d9cc3706c20', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f03d54e3949b4692fde2e325c46a56b5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3768cfc6bf36a85da2b4507fc681391', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d9e23673131e62df8b654d9cc3706c20', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f03d54e3949b4692fde2e325c46a56b5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b3768cfc6bf36a85da2b4507fc681391', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0fd40821eb628f93978ac5f19ca85966', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7518825230670f9bf22af96dab7c6afb', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e2afe00e998f22c5f86fe0cbbfd7b8df', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0fd40821eb628f93978ac5f19ca85966', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7518825230670f9bf22af96dab7c6afb', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e2afe00e998f22c5f86fe0cbbfd7b8df', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0fd40821eb628f93978ac5f19ca85966', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7518825230670f9bf22af96dab7c6afb', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e2afe00e998f22c5f86fe0cbbfd7b8df', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ae3e6a12a1b7dfbdd89ca6ef474ebdc8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('15b94acabf88e4334c8c7a0fa6a4b848', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34e3ce0d7acb3c883ca5bff6857692e0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ae3e6a12a1b7dfbdd89ca6ef474ebdc8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('15b94acabf88e4334c8c7a0fa6a4b848', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34e3ce0d7acb3c883ca5bff6857692e0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ae3e6a12a1b7dfbdd89ca6ef474ebdc8', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('15b94acabf88e4334c8c7a0fa6a4b848', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('34e3ce0d7acb3c883ca5bff6857692e0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa9842a62feb425e05cae110982ec404', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3a4f8f45f35352f8a389c9bc63c811e3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa918e45afa2464d4ef785ab5f8772c0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa9842a62feb425e05cae110982ec404', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3a4f8f45f35352f8a389c9bc63c811e3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa918e45afa2464d4ef785ab5f8772c0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa9842a62feb425e05cae110982ec404', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3a4f8f45f35352f8a389c9bc63c811e3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '02');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aa918e45afa2464d4ef785ab5f8772c0', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '05');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d30bea9e4b4cc3b7f4985bd6327d2c89', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8eda7d3473182c5a962b77f6c2274b9a', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('575077bc386a2e650ca88c9345c2dc07', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d30bea9e4b4cc3b7f4985bd6327d2c89', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8eda7d3473182c5a962b77f6c2274b9a', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('575077bc386a2e650ca88c9345c2dc07', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '87');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d30bea9e4b4cc3b7f4985bd6327d2c89', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8eda7d3473182c5a962b77f6c2274b9a', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('575077bc386a2e650ca88c9345c2dc07', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7563dde797b76091e48b2df40f14a5f6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8086b0a44a2460c518f72d32702f1a9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be92c0fcac47bb8e43e4efefdd05161f', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7563dde797b76091e48b2df40f14a5f6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8086b0a44a2460c518f72d32702f1a9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be92c0fcac47bb8e43e4efefdd05161f', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7563dde797b76091e48b2df40f14a5f6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH1', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c8086b0a44a2460c518f72d32702f1a9', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH2', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('be92c0fcac47bb8e43e4efefdd05161f', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', 'NH3', '04');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3cae9594ce0bbcd9b4ef8f5385f9e359', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('305343027b8a3b2887ab5f16eea1f1db', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e99b730bbb678afbc99516c8ad1ad59', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3cae9594ce0bbcd9b4ef8f5385f9e359', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('305343027b8a3b2887ab5f16eea1f1db', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e99b730bbb678afbc99516c8ad1ad59', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3cae9594ce0bbcd9b4ef8f5385f9e359', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('305343027b8a3b2887ab5f16eea1f1db', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1e99b730bbb678afbc99516c8ad1ad59', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3e13ad7c33689ae448132737ec7ede67', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a502b94e0e7cd1f662ddde332d0a28cc', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ed0564b0d52cf1b9e5dd1156e5de2069', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3e13ad7c33689ae448132737ec7ede67', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a502b94e0e7cd1f662ddde332d0a28cc', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ed0564b0d52cf1b9e5dd1156e5de2069', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '0d1df429750588af821f6010d4fbd517', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d39231f0107a7f101de10bcd10b478d0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('49bfcd2c2817a30e26dd6b4d09fbb487', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0465588fbba092811b5934fd1dca40a9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d39231f0107a7f101de10bcd10b478d0', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('49bfcd2c2817a30e26dd6b4d09fbb487', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0465588fbba092811b5934fd1dca40a9', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a49b80bd7dc70828178d921e67871cb2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('45d88280a5a9ba8dd7a4fe789518d3a4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('14515c777bc2ad3eac9177e77075df3f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a49b80bd7dc70828178d921e67871cb2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('45d88280a5a9ba8dd7a4fe789518d3a4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('14515c777bc2ad3eac9177e77075df3f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '777d350703dbd13d393a90457c6e9201', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8627e5bd3e7c3bbcb33a8b269ea88c2f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6f8f15066da5c19d3b272c0ecfab150', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef09eaa6a2e4d8955165b0cbeef678d4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8627e5bd3e7c3bbcb33a8b269ea88c2f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6f8f15066da5c19d3b272c0ecfab150', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef09eaa6a2e4d8955165b0cbeef678d4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8627e5bd3e7c3bbcb33a8b269ea88c2f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a6f8f15066da5c19d3b272c0ecfab150', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ef09eaa6a2e4d8955165b0cbeef678d4', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8b45398076329c19f0744671e936470f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b4e3b1cbde3cfae8e40dbaee8f5807af', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1bafea957958594dc499afdd2147f23c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8b45398076329c19f0744671e936470f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b4e3b1cbde3cfae8e40dbaee8f5807af', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1bafea957958594dc499afdd2147f23c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8afc44d568dbc8e74709b598628e8330', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9857629038e1d7ad38e222f13fc43081', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a55266d00933a17584b0beaef2686ad5', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c3871b1bdc396ad7aa5f7889b8115339', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9857629038e1d7ad38e222f13fc43081', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a55266d00933a17584b0beaef2686ad5', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c3871b1bdc396ad7aa5f7889b8115339', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('9857629038e1d7ad38e222f13fc43081', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a55266d00933a17584b0beaef2686ad5', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c3871b1bdc396ad7aa5f7889b8115339', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '01b2dc906085b14bc0dc367427903448', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7047eff8bc0d6f5ca7bf6688c2a40ea5', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('4b101bae71b4687b4a006e2733a59577', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5e5f232979ed2653e50e4007d6208146', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb4160f5f4bf8005375381b19fabe395', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aaa9f8d4db72f7a77729959dab5cf4f4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5ba0959c1dd995028c81eea28a2023ee', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '87');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb4160f5f4bf8005375381b19fabe395', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aaa9f8d4db72f7a77729959dab5cf4f4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5ba0959c1dd995028c81eea28a2023ee', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '87');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('cb4160f5f4bf8005375381b19fabe395', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH1', '97');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('aaa9f8d4db72f7a77729959dab5cf4f4', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH2', '98');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('5ba0959c1dd995028c81eea28a2023ee', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', 'NH3', '87');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('93c992cf40e4c671ea834bf6592ec014', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH4', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('193f852c59d0e362f5fa56cd218f9c5b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH5', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0fd48a85c20340be3887c01d27c40d3f', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('97c2921410b0436372cf44340237db33', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('382af7308ae61bb563c04a8ac9266351', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', 'NH3', '03');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8e495ace7817a5ccf903433df4edeb2d', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e9ce5e406b5503f80af6bdf03f20e7cf', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d716c9cf9b8d4b7eacd7e21ed4bf13da', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4b4482e766f4d0a5b6ae431c8c1612f9', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('ae8f93bd16eb56c2facf9bcc34a96a09', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('395a80db44cc1f3b905a1e76b33675b2', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b166c193eee797163c1abe6c66743a48', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a2c58944931c61d6c71c9b16c3e0a6d6', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('63e008fd3d945efff56cb547c2b99f2a', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e0abefdf5a9d441bb9bcf129711ec0ea', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fa961c8990f3d0dc658afd199cfc7529', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c39a07f94ab222ec0106be107d21cf14', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e5438ced2260e1a0ac7313f678bc886c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c39a07f94ab222ec0106be107d21cf14', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b1dcf7b1774aa14148b33149b1b2c2a1', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'c39a07f94ab222ec0106be107d21cf14', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e55991380b31ce9b50fa1778d80e87e7', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('899830de05111e0a83459d04f4bf3b03', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('331be2e774d57856b0997438098299ee', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('80425c194998a793aa28b3da5ab51895', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'edb49a8a420fe3e98798dec2c32ab6bd', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('7a3f0824be49e135aa748bdca693918c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'edb49a8a420fe3e98798dec2c32ab6bd', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c5a8e987043f298cc1b9a176e0f81e1c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'edb49a8a420fe3e98798dec2c32ab6bd', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c12031543b325f3f2038043321671475', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '32853cf00a41dede364788cf632a8cae', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d78a651e77b9851aaa4c904533f7bc4c', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '32853cf00a41dede364788cf632a8cae', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0474b68aa3c9cffecef7cbb4dce621e8', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '32853cf00a41dede364788cf632a8cae', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d96bfc0a602f66d1296363cb4ccd5ccc', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH1', '87');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('338e95d5ea81c6583cc978317a025d78', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH2', '89');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('0086584fb31e4145a5b6136ed6f37f79', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', 'NH3', '89');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a98cbe2e347a669eff46048cd5414d9d', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('765d1b44b20e0f70d35bef1dde609a29', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('07d610b90704b1d06b2a14e8b3e824fa', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('14bde6c56d8bea3f9b56dbb7c346ebb7', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH1', '08');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('505a506a86c7354dee6092fd99b850dc', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH2', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b5b22a93bf10126d6842990269b56188', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH3', '07');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6aadee2f0bc5f6f4e0c8a74e2347d60b', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('49fc95f6a8360bb79a661ecbb9a3b79e', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dc7629c6512599990515db892fd99b0e', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('dfb650bac1201b56eda9fc7e2180b69c', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bc8d86a68dccfcb4dff1a5dfcc650942', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('d50314252ab92d664f39afb3609f91c4', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6fca6bba74873a1ddc6038627983314a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('570c2bdd12c36847abda12a13b0941f2', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bfc0ae5fd0c0cc0095cf0a70592a3a6c', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', 'NH3', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('e170a6b6ec76cf8a0b432112b14bb0fd', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('022c68d58c9bf31438079b652483a72a', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('bc0a691edb9eed031451f72d4d34addd', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8c5d87f3695190b00ffc7ab43e8aed24', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('44f90805bb13a7ccfd6d1cb4cc4f933f', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '8c5d87f3695190b00ffc7ab43e8aed24', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('1d33360b7d981e3b3e6837ecbfa64d2a', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '09');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('38f64519027d052e9fff0e2034f0d2c7', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '06');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('b0ad8c70f06a598d396c52a0ecd43d0f', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('54c8f721bf902b4da2169f5bdf2ac539', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3b47e7e3eeccd6daf000abc7a34eb5f5', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c69dea6dba73a31b11d5473d52cef709', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('c22a05d0d68ac2ca70fec84966acdfdf', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('3d4d929b0edb185ffdebd8747bd6fa3b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('fc15b82ba45e6031191ded45d32b1fdc', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('6c71d88e34a2625d47ae23691c50a95a', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('450ae2c94713a491853d459466f39f80', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH1', '77');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('8462b72100ac195d4ac9fe7a0b836423', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', 'NH2', '76');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('a9be3cd43c9f7bce253995b961cbd9b6', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'a89e9a351d467e38fe7979967d2d00b1', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('62cf1296a1265929381bd0f25ee37dd3', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'a89e9a351d467e38fe7979967d2d00b1', 'NH2', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('f9e6300b622a433c66309d71c836b74a', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH1', '00');
INSERT INTO `siswa_nh_rata` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nilkd`, `nilai`) VALUES ('2501b162ef96dbe5a8926a4bf2948997', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', 'NH2', '00');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_nilai_mapel`
-- 

CREATE TABLE `siswa_nilai_mapel` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_mapel` varchar(50) NOT NULL DEFAULT '',
  `nh` varchar(2) NOT NULL,
  `tugas` varchar(2) NOT NULL,
  `uts` varchar(2) NOT NULL,
  `uas` varchar(2) NOT NULL,
  `praktek` varchar(2) NOT NULL,
  `sikap` varchar(1) NOT NULL,
  `total_kognitif` varchar(5) NOT NULL,
  `total_psikomotorik` varchar(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_nilai_mapel`
-- 

INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('8bed3bfd26ab8fcea247d84b8928f834', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '6', '9', '8', '8', '9', 'A', '8', '9');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('e2e1d2cbc1f4b5dcbe0113d43da35331', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '43', '8', '9', '8', '8', 'A', '17', '8');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('7c60b729b383b8c6f84cdf73f5a5e32f', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '7', '8', '7', '6', '4', 'B', '72', '47');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('3935a7a164d684ddff702b15e0b63809', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '11', '3', '4', '6', '4', 'B', '64', '44');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('120495f2f327e533646141b7dcd160b5', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '70', '87', '98', '87', '63', 'B', '0', '37');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('f1ae0f6c04242ef086bc9988e696de55', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '6', '2', '3', '4', '5', 'B', '5', '5');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('8144655e89b4428c9e911d89940590c9', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '0', '9', '8', '9', '8', 'A', '81', '61');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('36e7f56cb0066bcf5eef2f0983c85bce', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '0', '8', '9', '8', '9', 'A', '34', '95');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('767cf213dfcd5958f5f4070e8a441e5e', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '0', '8', '7', '6', '6', 'B', '0', '6');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('6892ba92654bd1dc616aad82c47d0f7c', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '6', '5', '6', '7', '6', 'A', '6', '6');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('62683046659f5e71bf218428825fd50b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '7', '7', '6', '5', '7', 'B', '6', '7');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('9d08060a949b8953a4b40501898ac2f3', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '26', '38', '47', '56', '63', 'B', '0', '3');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('0ebe17ddd4645198005e987f70b9fc1b', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'fc76ca9f6ebcf0f34ab21b55cefdb912', '61', '56', '76', '78', '78', 'A', '68', '78');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('d2bb0d6bc69f637f5b0e4d51f803b6b5', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '6', '3', '4', '5', '6', 'A', '5', '6');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('b40b32324881ccf6d735cb7947b638f5', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '01b2dc906085b14bc0dc367427903448', '14', '6', '7', '8', '5', 'B', '9', '5');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('d27f156ac3ab1bfb804594326e3acee6', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '558dc5761abfa074e9b9f6ef52499a4d', '6', '8', '9', '7', '5', 'A', '7', '5');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('52bb9fbe911b005b4b86b249e80f5083', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '7', '5', '4', '7', '8', 'B', '8', '8');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('e4aa0444f32fe7edafd1d1eb563b4786', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '6', '5', '6', '7', '6', 'B', '8', '6');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('7b47129363b909e0e2e53c1a4ca9bd1b', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'd8022de243b4ce12b64f03a48158d39f', '68', '78', '76', '56', '78', 'A', '84', '78');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('6381ddb3b58b9fba22fa0b27a6757401', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '177b3163ea9bb8bf687516bb3be4e53e', '94', '89', '66', '78', '98', 'A', '101', '98');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('382fb67db3c0b93e5c2b5f7c3b4e9cc3', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '50bae4d47d12fa0cf23403a12f34be0d', '6', '5', '6', '7', '6', 'C', '8', '6');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('d0c97d955bc224c980664ec8d3de8ecc', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '73cdab54d987bd6259ccc0daac8c481c', '88', '76', '87', '66', '78', 'C', '96', '78');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('9931466326a890faa1fcb0845defd65e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '20f1b5c9f861b328fcd14dd92d82f8c6', '8', '6', '5', '4', '8', 'C', '7', '8');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('0435c2fad12740e64dc7941451a8d60e', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'c89e31c6134d92194320f6661e446dfb', '8', '6', '7', '8', '9', 'A', '7', '9');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('45ec5c9824a1d867a56e06f2690509a3', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '8', '3', '4', '5', '7', 'A', '5', '7');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('d5d108dc93070d5a3d29b6c610816f47', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '39dbbf4078f620cd28d241706729e457', '77', '53', '57', '65', '23', 'A', '63', '23');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('ba82238dc365237d4472f95f2c907616', '707eec219afc171e0ca0c8edddb9c2dc', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('48bf457ef01aa34365bbf9095f03ff7e', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('69099446e03eb86db67115ef39d4edb8', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('ab9f0aa770e355dd349d6c1b75d732be', '1fb13fb80626eddda11a8ac150f332d2', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('d5d15266013bcb5f9b2ed62441ee2a7e', 'b2851dde70ca3f8d96c289cd09abcc31', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('86e516fcdafff9fc3c9141f9ec0e3fd3', '87350eda7c87a088b5e51cec40721f85', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('9eaf570238a743c09d7697abf7de6a69', '1ef93cefaa4829cd78ef4978aba3fd7c', 'b060de380c57384744177849d22fb584', '4598dd5b9ac644eaec4af76c548743be', '', '', '', '', '', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('07b46b21fc6a55b441f5e033b4c54baf', 'f78e58e3d8d18775f418762e9426b43d', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '26', '38', '47', '56', '0', 'B', '35', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('e912e5931e8fd0f012d479d04b22f011', '707eec219afc171e0ca0c8edddb9c2dc', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('037061d210fcdfe8b8e898afffed79d3', 'd1bb4677907c3066abba8f8f7b0d3434', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '70', '87', '98', '87', '0', 'B', '68', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('b299ea1310ff1afd85a1f5dbe9960431', '745151372e41f279049e15b8581101fe', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('574fb3207db1dd3d17d897fd8d7ae6ba', '25e067eac4bae9935662bd1910140758', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('82cdcf289f9db87dd8ce426f722e8bec', '1fb13fb80626eddda11a8ac150f332d2', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('acf369dc54d257d4ec4c5416bc52d146', 'b2851dde70ca3f8d96c289cd09abcc31', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('485fe908feb44315e92370ca99ba3f6b', '87350eda7c87a088b5e51cec40721f85', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('3eff1bae88f6c97e4901ed40b3c75702', '1ef93cefaa4829cd78ef4978aba3fd7c', '900e28393edf271632735d0bb6e9b31c', '4598dd5b9ac644eaec4af76c548743be', '0', '0', '0', '0', '0', '', '0', '');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('5bf8cc02c35b360212a148fcf013c3b8', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '0', '56', '77', '76', '56', 'B', '0', '56');
INSERT INTO `siswa_nilai_mapel` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_mapel`, `nh`, `tugas`, `uts`, `uas`, `praktek`, `sikap`, `total_kognitif`, `total_psikomotorik`) VALUES ('9eaf3e1a69c8870785e36306debf4a49', '', 'b060de380c57384744177849d22fb584', '1c867c0c756b35bc24301b0403fa556a', '0', '', '', '', '', '', '0', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_pribadi`
-- 

CREATE TABLE `siswa_pribadi` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_smt` varchar(50) NOT NULL DEFAULT '',
  `kd_pribadi` varchar(50) NOT NULL,
  `predikat` varchar(1) NOT NULL,
  `ket` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_pribadi`
-- 

INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('6eb40eed10ca4f6eaa5564db29ab630e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '1239a2153fdca93a77792920147fefde', 'A', '2');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('309ae607c94a1f744869f0fa2a692beb', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '64ee4bc0b699bfa57084c09e7b217aee', 'B', '7');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('309ae607c94a1f744869f0fa2a692beb', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', 'a4d9cab25b9808fa86d64a087c5f4ffc', 'A', '4');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('6eb40eed10ca4f6eaa5564db29ab630e', 'd1bb4677907c3066abba8f8f7b0d3434', 'b060de380c57384744177849d22fb584', '6a595f8953ed5f907a13915f61306d48', 'K', '1');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('3e4316435c0a48169093a307e4cb6bf3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '1239a2153fdca93a77792920147fefde', 'A', 'x');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('3e4316435c0a48169093a307e4cb6bf3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '64ee4bc0b699bfa57084c09e7b217aee', 'B', 'y');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('3e4316435c0a48169093a307e4cb6bf3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', 'a4d9cab25b9808fa86d64a087c5f4ffc', 'C', 'z');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('3e4316435c0a48169093a307e4cb6bf3', '745151372e41f279049e15b8581101fe', 'b060de380c57384744177849d22fb584', '6a595f8953ed5f907a13915f61306d48', 'K', 'w');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('f716b96fd86d303fad7a701f322e1979', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '1239a2153fdca93a77792920147fefde', 'A', 'a');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('f716b96fd86d303fad7a701f322e1979', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '64ee4bc0b699bfa57084c09e7b217aee', 'B', 's');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('f716b96fd86d303fad7a701f322e1979', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', 'a4d9cab25b9808fa86d64a087c5f4ffc', 'C', 'd');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('f716b96fd86d303fad7a701f322e1979', 'da79d7a0df7a9674215684e59fae3f99', 'b060de380c57384744177849d22fb584', '6a595f8953ed5f907a13915f61306d48', 'K', 'f');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('b548d323995e8eafff6de9b785cff7cc', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '1239a2153fdca93a77792920147fefde', 'A', 's');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('b548d323995e8eafff6de9b785cff7cc', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '64ee4bc0b699bfa57084c09e7b217aee', '', '');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('b548d323995e8eafff6de9b785cff7cc', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', 'a4d9cab25b9808fa86d64a087c5f4ffc', '', '');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('b548d323995e8eafff6de9b785cff7cc', '25e067eac4bae9935662bd1910140758', 'b060de380c57384744177849d22fb584', '6a595f8953ed5f907a13915f61306d48', '', '');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('1df08ee666aea859f276b57f94ac24d2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '1239a2153fdca93a77792920147fefde', '', '');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('1df08ee666aea859f276b57f94ac24d2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '64ee4bc0b699bfa57084c09e7b217aee', '', '');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('1df08ee666aea859f276b57f94ac24d2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', 'a4d9cab25b9808fa86d64a087c5f4ffc', 'A', 'd');
INSERT INTO `siswa_pribadi` (`kd`, `kd_siswa_kelas`, `kd_smt`, `kd_pribadi`, `predikat`, `ket`) VALUES ('1df08ee666aea859f276b57f94ac24d2', 'f78e58e3d8d18775f418762e9426b43d', 'b060de380c57384744177849d22fb584', '6a595f8953ed5f907a13915f61306d48', '', 'xx');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_rangking`
-- 

CREATE TABLE `siswa_rangking` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_tapel` varchar(50) NOT NULL,
  `kd_kelas` varchar(50) NOT NULL,
  `kd_ruang` varchar(50) NOT NULL,
  `kd_smt` varchar(50) NOT NULL,
  `kd_siswa_kelas` varchar(50) NOT NULL,
  `total_kognitif` varchar(5) NOT NULL,
  `rata_kognitif` varchar(5) NOT NULL,
  `total_psikomotorik` varchar(5) NOT NULL,
  `rata_psikomotorik` varchar(5) NOT NULL,
  `total` varchar(5) NOT NULL,
  `rangking` varchar(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_rangking`
-- 

INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('d2bb0d6bc69f637f5b0e4d51f803b6b5', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', '745151372e41f279049e15b8581101fe', '29', '7', '24', '6', '53', '5');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('4d2391eea844fca527b8f3b32542107b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', 'f78e58e3d8d18775f418762e9426b43d', '105', '13', '173', '22', '278', '3');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('95507daf5c1e49e64fb0c5e6f3c3d732', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', 'd1bb4677907c3066abba8f8f7b0d3434', '258', '43', '253', '42', '511', '2');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('7b47129363b909e0e2e53c1a4ca9bd1b', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', 'da79d7a0df7a9674215684e59fae3f99', '353', '71', '304', '61', '657', '1');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('e4aa0444f32fe7edafd1d1eb563b4786', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', '707eec219afc171e0ca0c8edddb9c2dc', '8', '8', '6', '6', '14', '6');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('0435c2fad12740e64dc7941451a8d60e', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', '25e067eac4bae9935662bd1910140758', '70', '35', '32', '16', '102', '4');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('45ec5c9824a1d867a56e06f2690509a3', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', '87350eda7c87a088b5e51cec40721f85', '5', '5', '7', '7', '12', '7');
INSERT INTO `siswa_rangking` (`kd`, `kd_tapel`, `kd_kelas`, `kd_ruang`, `kd_smt`, `kd_siswa_kelas`, `total_kognitif`, `rata_kognitif`, `total_psikomotorik`, `rata_psikomotorik`, `total`, `rangking`) VALUES ('9eaf3e1a69c8870785e36306debf4a49', '2a771e8ba89dd288743d4839d61185bc', '27de8f38a90dd1755acd801abefcbb42', 'b9f286b3403b958369e0ec3423f1a733', 'b060de380c57384744177849d22fb584', '', '0', '0', '0', '0', '0', '8');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_uang_gedung`
-- 

CREATE TABLE `siswa_uang_gedung` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_uang_gedung` varchar(50) NOT NULL DEFAULT '',
  `tgl_bayar` date NOT NULL DEFAULT '0000-00-00',
  `ket` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_uang_gedung`
-- 

INSERT INTO `siswa_uang_gedung` (`kd`, `kd_siswa_kelas`, `kd_uang_gedung`, `tgl_bayar`, `ket`) VALUES ('6af20a984d2929e8f9f0fe1b42a87c32', '7c3a68f7ad86846a2f9764361d3566dd', 'cefc9a3a9dcc568bcad726dde2b71e7c', '2008-02-03', 'xxxx');
INSERT INTO `siswa_uang_gedung` (`kd`, `kd_siswa_kelas`, `kd_uang_gedung`, `tgl_bayar`, `ket`) VALUES ('95fa2f75ddcb8fd38d6196cc8055a12a', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'cefc9a3a9dcc568bcad726dde2b71e7c', '2008-03-02', 'xstrix');
INSERT INTO `siswa_uang_gedung` (`kd`, `kd_siswa_kelas`, `kd_uang_gedung`, `tgl_bayar`, `ket`) VALUES ('91df26fa3ed32371d5cdb3ef090ee2de', 'f78e58e3d8d18775f418762e9426b43d', 'cefc9a3a9dcc568bcad726dde2b71e7c', '2007-01-01', 'x');
INSERT INTO `siswa_uang_gedung` (`kd`, `kd_siswa_kelas`, `kd_uang_gedung`, `tgl_bayar`, `ket`) VALUES ('3d4aaeed32dfb08d83202478a2a330a6', 'd1bb4677907c3066abba8f8f7b0d3434', 'cefc9a3a9dcc568bcad726dde2b71e7c', '2009-04-03', 'x');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_uang_lain`
-- 

CREATE TABLE `siswa_uang_lain` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_uang_lain` varchar(50) NOT NULL DEFAULT '',
  `tgl_bayar` date NOT NULL DEFAULT '0000-00-00',
  `ket` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_uang_lain`
-- 

INSERT INTO `siswa_uang_lain` (`kd`, `kd_siswa_kelas`, `kd_uang_lain`, `tgl_bayar`, `ket`) VALUES ('21a97fafb926a723f1799b906974bed4', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '2008-04-13', 'yyyyy');
INSERT INTO `siswa_uang_lain` (`kd`, `kd_siswa_kelas`, `kd_uang_lain`, `tgl_bayar`, `ket`) VALUES ('7eeb0972d9404b61ba1d20afe340cfcd', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '0000-00-00', '');
INSERT INTO `siswa_uang_lain` (`kd`, `kd_siswa_kelas`, `kd_uang_lain`, `tgl_bayar`, `ket`) VALUES ('f233db7a946f6b6994f8a687f3c8732f', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '2008-03-10', 'xx');
INSERT INTO `siswa_uang_lain` (`kd`, `kd_siswa_kelas`, `kd_uang_lain`, `tgl_bayar`, `ket`) VALUES ('82c166f57ef14d234a37186b5cea9562', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '2008-09-04', 'x');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_uang_spp`
-- 

CREATE TABLE `siswa_uang_spp` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_uang_spp` varchar(50) NOT NULL DEFAULT '',
  `bln` char(2) NOT NULL DEFAULT '',
  `thn` varchar(4) NOT NULL DEFAULT '',
  `tgl_bayar` date NOT NULL DEFAULT '0000-00-00',
  `ket` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_uang_spp`
-- 

INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('0ca1c95f1a4408341e03bfd1dd62b48e', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '7', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('11d1f2aa4f59484d127b891b6dc09e0f', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '8', '2008', '0000-00-00', 'yyy');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('506358d9b05578b173c4c1e1384b5e8b', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '9', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('23eb33218ec22c8d1a4b522423738bf0', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '10', '2008', '2008-09-19', 'tt');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('6bbcfdf667842027242edc70172415d2', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '11', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ad5c33b70d9228979635506b9a0f8cad', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '12', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('7e94bdb5004bd3369b3c36857f1e7056', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '1', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('9392e170d716da4a4eca364d6d69cb0c', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '2', '2009', '2007-07-16', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('d06de7566ade25d4202d086dc78c44ec', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '3', '2009', '0000-00-00', 'rrr');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('962a1b70a68885c97ecc6501fdd9f561', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '4', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('2e5fb56d036214bb6defcf0420868c7f', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '5', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('0136894393158e45a1857e97593cf98a', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '6', '2009', '0000-00-00', 'dd');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('f3456c7313e4fa6a8931ff47a503056c', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '7', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('95475c37ac5864bfd10a7ee816a0d5d1', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '8', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('144a26e1ad960ecb976339043b80669d', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '9', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('31152f0cbe47b11bbdcc93673a2884ba', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '10', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('d191fc5e943ec8795f30f55f198a372e', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '11', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('d0b82dc41f1b7d79b7ccee8cd6c3ad6f', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '12', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('9c6347f267242f0a3e77b98381506b9c', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '1', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('24e588aa8c8d32543553cc1fdfb11e3a', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '2', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('8ce9f70bf887195fdc1a701f7076eec9', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '3', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('5a4f85df851049d7e0384103b95aca1b', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '4', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('c75eb86f5f4ed90e95444aa4685a5beb', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '5', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('394ee9845fdc13ddb4b510e3c93bf95e', '20a672f750d99eedfc25358f6ad823e9', 'd1e7c66e6fb18e8e8478c286ac485b44', '6', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('a8e57752e36aad6fc82626421a7e7471', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '7', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('c96f176649c1e3b1b8766ca8cb280d0c', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '8', '2008', '2008-06-05', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('bd4a2bcf5067756334beacbec0396746', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '9', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('2f9188dfa5c8e42c98f206870173a207', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '10', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('bfcd189a369eb06f7a2756683911333a', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '11', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ee4ec900c20666b1405c6fa5054e0244', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '12', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('a519f25edcbe998c6e4d7f21b32a7f5d', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '1', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('09102dc9b68ac3b6705e162945cd62c3', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '2', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ba330fb22929bf38d2d1cc3316a3c28b', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '3', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ac7b52d723ffeb92e8833b38a0c3c92e', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '4', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('92dc13547303cee3c62624a6fa21dd26', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '5', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('a09f7448f40e94fea81704f8466d47a0', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '6', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('03c26ff1bcf7e4aac5a316dc6c11b7bd', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '7', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('53b55af36f6e3f64c3c5dc961af31dfd', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '8', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('055ef34059424cec07104f68b2b9b2b2', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '9', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('b39005c100a8c47ce21fb7bb8527b4d6', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '10', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('c9807338eb670d4105e7014c53f19c58', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '11', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ad6c3ad1e95ac8b5d986beca11e9ff96', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '12', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('17cbc5ada65f5449447b3f36cdec2bfd', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '1', '2009', '2009-04-17', 'x');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('dd9743ee247f282f2fbdd51d90601302', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '2', '2009', '2008-10-09', 'x');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('3a034304a8463c8dfa71fc6393bba88b', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '3', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('edd1c8d014196eabc94298068c549b75', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '4', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('894ed5d2f7f549c2d6a6d46da72e6dcd', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '5', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('d888c9b94d00a8f51e595251f8879844', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '6', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('5f4ea953dc6dd125ab921eeefb3287ad', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '7', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('f67a9ec0f00a7f4bbffe3c4c6a2988a8', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '8', '2008', '2008-09-04', 'x');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('28f22689790de7c114b462a00510c50a', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '9', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('03012a69da645328bac3688cc80a7745', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '10', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('099efee402fecb7cf67518a3bd8616eb', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '11', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('36fec45736402bd927f4b56ec45ecf7b', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '12', '2008', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('47fe78077964cf0fa61e450486dcdc28', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '1', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('b184f8ad1bb795d79387063832ff01dc', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '2', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('71127e129ab16a4a949f783e497001f2', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '3', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('243bcc6b1ae48c0c0594390b40e39012', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '4', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('2e1b888af1c90a6176ce0e0b4d799ec5', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '5', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('24a042021fc999f37bcc524d2f4c7603', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '6', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('a777fff3219129f24ddc503324ac35a1', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '7', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('5107136785bbbddf397064f576a41208', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '8', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('945194ec6d8bcdb8c5ed6604a91376e8', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '9', '2009', '2010-05-02', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('4a26dbbfc000ee5abcc6f13a553303ed', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '10', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('98e46d9e49df4e927ffd28b86088880d', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '11', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('2399f57b5cf9f66f33ecfeec9dccaf89', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '12', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('96eead251319aba2f14a898ee5fce391', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '1', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('7e7fefc89c6beeebc405e44b08d30c42', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '2', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('8c34303fc511141267bee572236ca66b', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '3', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('f54141bcbfef598fbe2e6e4c959fec3e', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '4', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('40f6dbaaf97ad8dcd936635128a0f88e', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '5', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('733a5e3fd0e15da22660666f7402b7c8', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '6', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('481dc35c0730568ae796f869cb36068c', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '7', '2009', '2007-01-01', 'dsfg');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('6165a7edd252d788e89bf6e4858c36a8', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '8', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('bfb3ba2a04d36bdd2026cb9a8323e911', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '9', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('e4334e687ee6cceab1f5742111ad3dc8', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '10', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('4b22fea93402627934e141fcb066f175', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '11', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('12617f6cd8582401569a012dc0d16e7e', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '12', '2009', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('0ea872cbdecc14224fbe231c07031881', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '1', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('c5abe00243bd2aa03eb5089a56a43adb', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '2', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('73a92d1ec805d62ce3062da36259c822', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '3', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('c8d3c8f838cd16d8aca2da34023df463', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '4', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('ef990deab2b1d48dcef11b1c5947385b', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '5', '2010', '0000-00-00', '');
INSERT INTO `siswa_uang_spp` (`kd`, `kd_siswa_kelas`, `kd_uang_spp`, `bln`, `thn`, `tgl_bayar`, `ket`) VALUES ('72779d32114879a8928c6b1c6238be3c', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '6', '2010', '0000-00-00', '');

-- --------------------------------------------------------

-- 
-- Table structure for table `siswa_uang_ujian`
-- 

CREATE TABLE `siswa_uang_ujian` (
  `kd` varchar(50) NOT NULL DEFAULT '',
  `kd_siswa_kelas` varchar(50) NOT NULL DEFAULT '',
  `kd_uang_ujian` varchar(50) NOT NULL DEFAULT '',
  `tgl_bayar` date NOT NULL DEFAULT '0000-00-00',
  `ket` varchar(100) NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- 
-- Dumping data for table `siswa_uang_ujian`
-- 

INSERT INTO `siswa_uang_ujian` (`kd`, `kd_siswa_kelas`, `kd_uang_ujian`, `tgl_bayar`, `ket`) VALUES ('14707861ef5f5a79225f185c3a722ef5', '7c3a68f7ad86846a2f9764361d3566dd', 'd726cf836b61df5cc2897df1e42be505', '2008-03-05', 'hhhh');
INSERT INTO `siswa_uang_ujian` (`kd`, `kd_siswa_kelas`, `kd_uang_ujian`, `tgl_bayar`, `ket`) VALUES ('40393c2a37bdf6ab3f5ffbd9074d3ba8', 'e0ddb27a1258a4cd5fe31f5f0f3413ad', 'd726cf836b61df5cc2897df1e42be505', '2007-01-02', '');
INSERT INTO `siswa_uang_ujian` (`kd`, `kd_siswa_kelas`, `kd_uang_ujian`, `tgl_bayar`, `ket`) VALUES ('bc69d35762b79fc42ba8cc76cc853c6e', 'f78e58e3d8d18775f418762e9426b43d', 'd726cf836b61df5cc2897df1e42be505', '2007-04-06', 'x');
INSERT INTO `siswa_uang_ujian` (`kd`, `kd_siswa_kelas`, `kd_uang_ujian`, `tgl_bayar`, `ket`) VALUES ('b96b99b5b6369c15268a4b0fb023fc4f', 'd1bb4677907c3066abba8f8f7b0d3434', 'd726cf836b61df5cc2897df1e42be505', '2008-03-02', 'x');
