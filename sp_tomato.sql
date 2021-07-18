-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 18 Jul 2021 pada 11.39
-- Versi server: 10.1.37-MariaDB
-- Versi PHP: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sp_tomato`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama_admin` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_admin`) VALUES
(1, 'admin', '123', 'Admin SP Tomat');

-- --------------------------------------------------------

--
-- Struktur dari tabel `basispengetahuan`
--

CREATE TABLE `basispengetahuan` (
  `id` int(11) NOT NULL,
  `kode_hp` varchar(30) NOT NULL,
  `kode_gejala` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `basispengetahuan`
--

INSERT INTO `basispengetahuan` (`id`, `kode_hp`, `kode_gejala`) VALUES
(23, 'HP05', 'G01'),
(37, 'HP01', 'G01'),
(38, 'HP01', 'G02'),
(40, 'HP01', 'G04'),
(42, 'HP01', 'G14'),
(43, 'HP01', 'G18'),
(44, 'HP01', 'G23'),
(45, 'HP01', 'G24'),
(46, 'HP04', 'G01'),
(47, 'HP04', 'G03'),
(48, 'HP04', 'G05'),
(49, 'HP04', 'G15'),
(50, 'HP04', 'G25'),
(51, 'HP05', 'G02'),
(52, 'HP05', 'G04'),
(53, 'HP05', 'G06'),
(54, 'HP05', 'G07'),
(55, 'HP05', 'G16'),
(56, 'HP05', 'G17'),
(57, 'HP05', 'G26'),
(58, 'HP05', 'G27'),
(59, 'HP07', 'G01'),
(60, 'HP07', 'G06'),
(61, 'HP07', 'G07'),
(63, 'HP07', 'G17'),
(64, 'HP07', 'G19'),
(65, 'HP08', 'G06'),
(66, 'HP08', 'G07'),
(67, 'HP08', 'G08'),
(68, 'HP08', 'G28'),
(69, 'HP09', 'G01'),
(70, 'HP09', 'G03'),
(71, 'HP09', 'G08'),
(72, 'HP09', 'G09'),
(73, 'HP09', 'G20'),
(74, 'HP10', 'G01'),
(75, 'HP10', 'G02'),
(76, 'HP10', 'G03'),
(77, 'HP10', 'G04'),
(78, 'HP10', 'G10'),
(79, 'HP10', 'G14'),
(80, 'HP10', 'G18'),
(81, 'HP11', 'G01'),
(82, 'HP11', 'G03'),
(83, 'HP11', 'G05'),
(84, 'HP11', 'G08'),
(85, 'HP11', 'G21'),
(86, 'HP11', 'G29'),
(87, 'HP12', 'G01'),
(88, 'HP12', 'G02'),
(89, 'HP12', 'G05'),
(90, 'HP12', 'G10'),
(91, 'HP12', 'G15'),
(92, 'HP12', 'G21'),
(93, 'HP12', 'G29'),
(94, 'HP06', 'G06'),
(95, 'HP06', 'G07'),
(96, 'HP06', 'G20'),
(97, 'HP13', 'G01'),
(98, 'HP13', 'G02'),
(99, 'HP13', 'G09'),
(100, 'HP02', 'G01'),
(101, 'HP02', 'G02'),
(102, 'HP02', 'G03'),
(103, 'HP02', 'G09'),
(104, 'HP02', 'G20'),
(105, 'HP14', 'G06'),
(106, 'HP14', 'G18'),
(107, 'HP03', 'G01'),
(108, 'HP03', 'G02'),
(109, 'HP03', 'G11'),
(110, 'HP03', 'G22'),
(111, 'HP03', 'G31'),
(112, 'HP15', 'G01'),
(113, 'HP15', 'G11'),
(114, 'HP15', 'G12'),
(115, 'HP15', 'G13'),
(116, 'HP15', 'G29'),
(117, 'HP15', 'G32'),
(118, 'HP16', 'G02'),
(119, 'HP16', 'G12'),
(120, 'HP16', 'G21'),
(121, 'HP16', 'G34'),
(122, 'HP17', 'G10'),
(123, 'HP17', 'G12'),
(124, 'HP17', 'G16'),
(125, 'HP17', 'G35'),
(126, 'HP17', 'G36'),
(127, 'HP17', 'G37'),
(128, 'HP18', 'G01'),
(129, 'HP18', 'G12'),
(130, 'HP18', 'G13'),
(131, 'HP18', 'G38'),
(132, 'HP18', 'G39'),
(133, 'HP19', 'G03'),
(134, 'HP19', 'G40'),
(135, 'HP19', 'G41'),
(136, 'HP21', 'G02'),
(137, 'HP21', 'G04'),
(138, 'HP21', 'G42'),
(139, 'HP20', 'G03'),
(140, 'HP20', 'G10'),
(141, 'HP20', 'G43');

-- --------------------------------------------------------

--
-- Struktur dari tabel `gejala`
--

CREATE TABLE `gejala` (
  `kode_gejala` varchar(30) NOT NULL,
  `gejala` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `gejala`
--

INSERT INTO `gejala` (`kode_gejala`, `gejala`) VALUES
('G01', 'Tanaman terlihat layu'),
('G02', 'Daun muda dan daun tua tanaman warnanya kuning'),
('G03', 'Daun tanaman menggulung, mengering dan rontok'),
('G04', 'Tanaman menjadi mati'),
('G05', 'Terdapat bercak kecil berair pada daun'),
('G06', 'Buah tanaman menjadi busuk'),
('G07', 'Pangkal buah berwarna coklat '),
('G08', 'Terdapat bercak cekung warna coklat pada buah'),
('G09', 'Akar dan batang tanaman berwarna coklat'),
('G10', 'Tanaman terlihat kerdil'),
('G11', 'Daun tanaman keriting, kerdil dan melengkung'),
('G12', 'Ukuran buah tanaman kecil'),
('G13', 'Tanaman mengalami pertumbuhan yang terhambat'),
('G14', 'Tangkai daun tanaman merunduk'),
('G15', 'Terdapat bercak coklat muda/hitam pada daun tanaman'),
('G16', 'Tanaman mengalami gugur bunga'),
('G17', 'Daun tanaman berwarna coklat samapi kehitam-hitaman'),
('G18', 'Tulang daun tanaman seperti pucat'),
('G19', 'Terdapat bercak kelabu sampai coklat pada daun'),
('G20', 'Terdapat bercak kecil berair pada buah'),
('G21', 'Tanaman mengalami gugur daun'),
('G22', 'Terdapat bisul / kutil pada buah tanaman'),
('G23', 'Pangkal tanaman berwarna coklat'),
('G24', 'Tanaman terlihat segar pada pagi dan sore hari'),
('G25', 'Terdapat bercak pada daun, batang dan petil'),
('G26', 'Terdapat bercak tidak beraturan pada daun'),
('G27', 'Daun tanaman lembab dan berair'),
('G28', 'Bercak terlihat seperti retak / pecah'),
('G29', 'Terdapat bercak warna coklat pada daun'),
('G30', 'Tanaman seperti kekurangan air'),
('G31', 'Daun tanaman mengalami perubahan yang tidak stabil'),
('G32', 'Daun muda tanaman keriting'),
('G33', 'Jumlah bunga dan bunga lebih sedikit'),
('G34', 'Terdapat bercak bintik mati pada ujung daun'),
('G35', 'Cabang dan tangkai daun cenderung tegak'),
('G36', 'Daun tanaman kecil dan mengkerut'),
('G37', 'Tanaman mengalami gugur buah'),
('G38', 'Akar tanaman kelihatanya membengkak'),
('G39', 'Warna daun tanaman tidak normal'),
('G40', 'Terdapat bercak hijau gelap pada ujung buah'),
('G41', 'Ujung buah seperti basah dan berwarna coklat kehitaman'),
('G42', 'Terdapat jamur pada batang'),
('G43', 'Tanaman lebih banyak di bawah daripada di atas');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hamapenyakit`
--

CREATE TABLE `hamapenyakit` (
  `kode_hp` varchar(30) NOT NULL,
  `hamapenyakit` varchar(30) NOT NULL,
  `solusi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hamapenyakit`
--

INSERT INTO `hamapenyakit` (`kode_hp`, `hamapenyakit`, `solusi`) VALUES
('HP01', 'Layu Fusarium', 'Non kimiawi,antara lain dengan menerapkan pola pergiliran (rotasi) tanaman yang bukan sefamili, menggunakan benih ataun bibit yang sehat, mencabut tanaman yang sakit agar tidka menular, dan menggunakan MPHP untuk meningkatkan suhu tanah.\r\nKimiawi, dengan cara mencelupkan akar bibit tomat ataupun cherry ke dalam larutan fungisida Benomyl 1.000 ppm sebelum tanam.'),
('HP02', 'Layu Bakteri', 'Mengaplikasikan beberapa Fungisida Hayati seperti Anfush atau Decoprima sebagai langkah awal sterilisasi lahan sebelum penanaman.\r\nJika sudah ada beberapa tanaman terserang, anda juga bisa aplikasikan antibiotik/anti bakteri tanaman seperti Agrept 20 WP.'),
('HP03', 'Mozaik', 'Pemberian imunisasi pada tomat dengan memberikan strain virus yang telah dilemahkan diharapkan mampu berfungsi sebagai sparing partner yang nantinya akan memiliki kemampuan untuk menolak virus yang sama dengan serangan lebih ganas. Adapun pengaruh pemberian strain virus pada tanaman tomat tidak akan terlalu merugikan disebabkan gejala yang diakibatkannya juga tidak terlalu parah sehingga produksinya tidak banyak berkurang.'),
('HP04', 'Bercak Daun Septoria', '1. Gulma beserta tanaman tomat yang mati dibersihkan dan dibakar \r\n2. Lakukan rotasi tanaman yang berbeda familinya agar penyakit tidak\r\nmenyebar \r\n3. Semprot tanaman menggunakan fungisida'),
('HP05', 'Bercak Cokelat', 'Non kimiawi,melakukan pergiliran (rotasi) tanaman, perlakuan benih direndam dalam air hangat 55°-60°C selama 15-30 menit, dan menjaga kebersihan (sanitasi) kebun.\r\nKimiawi, disemprot dengan fungisida yang efektif, seperti Brestan 60 72 WP, Dithane M-45, Daconil 75 WP, Difolatan 4 F, atau Zincofol 60 WP 2 gram bahan aktif/liter air.'),
('HP06', 'Antraknos', 'Melakukan sistem tumpangsari tanaman selama 1-2 tahun.\r\nMelapisi tanah dengan plastik mulsa, dan berikan tiang lanjaran agar tomat tidak menyentuh tanah.'),
('HP07', 'Busuk Daun', 'Non kimiawi, antara lain dengan mengatur waktu tanam dimusim kemarau dan pergiliran (rotasi) tanaman dengan jenis yang bukan inang penyakit busuk daun.\r\nKimiawi, disemprot fungisida yang efektif seperti Difolatan 4 F atau Dithane M-45 0,2'),
('HP08', 'Busuk Buah Rhizoctonia', 'Pilih benih yang tahan penyakit dan hama.\r\nMelakukan Rotasi tanaman.\r\nMencabut dan membakar gulma dan tanaman yang terserang penyakit.\r\nSemprotkan fungisida berbahan aktif chlorothalonil, interval 7-8 hari sekali.'),
('HP09', 'Busuk Buah Antraknosa', 'Melakukan sistem tumpangsari tanaman selama 1-2 tahun.\r\nMelapisi tanah dengan plastik mulsa, dan berikan tiang lanjaran agar tomat tidak menyentuh tanah.\r\nMenyemprotkan fungisida berbahan aktif kaptafol.'),
('HP10', 'Penyakit Layu', 'Semprotkan antibiotic pada bibit tanaman tomat'),
('HP11', 'Bercak Bakteri', 'Tanaman yang sakit sebaiknya dicabut dan dibakar di area yang jauh dari lahan penanaman.\r\nMenyirami tanaman dengan menggunakan air yang bersih dan terbebas dari penyakit.'),
('HP12', 'Penyakit Bercak Daun', 'Semprotkan antibiotic pada bibit tanaman tomat.'),
('HP13', 'Layu Cendawan', 'Non kimiawi,antara lain dengan menerapkan pola pergiliran (rotasi) tanaman yang bukan sefamili, menggunakan benih ataun bibit yang sehat, mencabut tanaman yang sakit agar tidka menular, dan menggunakan MPHP untuk meningkatkan suhu tanah.\r\n'),
('HP14', 'Bercak (Bacterial speck)', 'Tanaman yang sakit sebaiknya dicabut dan dibakar di area yang jauh dari lahan penanaman.'),
('HP15', 'Penyakit Kerdil', 'Pemberian imunisasi pada tomat dengan memberikan strain virus yang telah dilemahkan diharapkan mampu berfungsi sebagai sparing partner yang nantinya akan memiliki kemampuan untuk menolak virus yang sama dengan serangan lebih ganas. Adapun pengaruh pemberian strain virus pada tanaman tomat tidak akan terlalu merugikan disebabkan gejala yang diakibatkannya juga tidak terlalu parah sehingga produksinya tidak banyak berkurang.'),
('HP16', 'Bercak Kering dan Mati Urat', 'Pemberian imunisasi pada tomat dengan memberikan strain virus yang telah dilemahkan diharapkan mampu berfungsi sebagai sparing partner yang nantinya akan memiliki kemampuan untuk menolak virus yang sama dengan serangan lebih ganas. Adapun pengaruh pemberian strain virus pada tanaman tomat tidak akan terlalu merugikan disebabkan gejala yang diakibatkannya juga tidak terlalu parah sehingga produksinya tidak banyak berkurang.\r\n'),
('HP17', 'Kuning dan Daun Menggulung', 'Pemberian imunisasi pada tomat dengan memberikan strain virus yang telah dilemahkan diharapkan mampu berfungsi sebagai sparing partner yang nantinya akan memiliki kemampuan untuk menolak virus yang sama dengan serangan lebih ganas. Adapun pengaruh pemberian strain virus pada tanaman tomat tidak akan terlalu merugikan disebabkan gejala yang diakibatkannya juga tidak terlalu parah sehingga produksinya tidak banyak berkurang.'),
('HP18', 'Bengkak Akar', 'Menggunakan Nematisida, seperti DD, vapam, dan dazomet. Pestisida ini ditaburkan pada tanah tiga minggu sebelum musim tanam.\r\n'),
('HP19', 'Blossom End Rot', 'Lakukan pengapuran tanah pada saat pengolahan tanah, terutama lahan yang mudah kekurangan Ca atau pH-nya rendah. Dosis pengapuran disesuaikan dengan angka pH tanah, namun umumnya sekitar 1.000 kg per ha, dicampurkan merata dengan tanah. Kalsit, dolomit, dan zeolit adalah contoh jenis kapur yang dapat digunakan.'),
('HP20', 'Tomato Yellow Leaf Curl Virus', 'Pengendalian dapat dilakukan dengan cara mencabut dan membakar daun tomat yang terkena virus.'),
('HP21', 'Busuk Batang Didymella sp', 'Segera cabut dan musnahkan jika terdapat bibit cabe yang terinfeksi virus phytophthora.');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `basispengetahuan`
--
ALTER TABLE `basispengetahuan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`kode_gejala`);

--
-- Indeks untuk tabel `hamapenyakit`
--
ALTER TABLE `hamapenyakit`
  ADD PRIMARY KEY (`kode_hp`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `basispengetahuan`
--
ALTER TABLE `basispengetahuan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
