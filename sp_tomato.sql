-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Jul 2021 pada 15.10
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
(2, 'HP13', 'G32'),
(3, 'HP13', 'G33'),
(4, 'HP13', 'G34'),
(5, 'HP12', 'G30'),
(6, 'HP12', 'G31'),
(7, 'HP11', 'G28'),
(8, 'HP11', 'G29'),
(9, 'HP10', 'G26'),
(10, 'HP10', 'G27'),
(11, 'HP09', 'G23'),
(12, 'HP09', 'G24'),
(13, 'HP09', 'G25'),
(14, 'HP08', 'G21'),
(15, 'HP08', 'G22'),
(19, 'HP06', 'G01'),
(20, 'HP06', 'G15'),
(21, 'HP06', 'G16'),
(22, 'HP06', 'G17'),
(23, 'HP05', 'G01'),
(30, 'HP03', 'G03'),
(31, 'HP03', 'G09'),
(32, 'HP02', 'G01'),
(33, 'HP02', 'G02'),
(34, 'HP02', 'G06'),
(35, 'HP02', 'G07'),
(36, 'HP02', 'G08'),
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
(64, 'HP07', 'G19');

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
('HP02', 'Layu Bakteri', 'menggunakan teknologi sambung pucuk, dengan cara memotong bagian batang tanaman thomat lalu celupkan ke air beberapa menit sehingga lendir putih keruh akan mengalir keluar'),
('HP03', 'Mozaik', 'apabila tanaman thomat sudah terinfeksi virus tersebut maka tidak dapat sembuh dari virus tersebut, namun dapat dicegah dengan cara gunakan bibit tanaman yang sehat, jangan tanam dengan jenis yang sama dalam jangka waktu minimal 7 bulan, tanam pada suhu 70 derajat selama 2-4 hari untuk mengerakdiksi virus yang terbawa dalam endosperm.'),
('HP04', 'Bercak Daun Septoria', 'dapat ditangani dengan cara memotong bagian batang yang terinfeksi.'),
('HP05', 'Bercak Cokelat', 'apabila tanaman thomat sudah terinfeksi virus tersebut maka tidak dapat sembuh dari virus tersebut, namun dapat dicegah dengan cara gunakan bibit tanaman yang sehat, jangan tanam dengan jenis yang sama dalam jangka waktu minimal 7 bulan, tanam pada suhu 70 derajat selama 2-4 hari untuk mengerakdiksi virus yang terbawa dalam endosperm.'),
('HP06', 'Antraknos', 'apabila tanaman tomat telah terinveksi virus tersebut maka dapat dicegah dengan cara memperlebar jarak tanam, rajin melakukan penyiraman dan melakukan penyemprotan fungisida sistemik seminggu sekali.'),
('HP07', 'Busuk Daun', 'Non kimiawi, antara lain dengan mengatur waktu tanam dimusim kemarau dan pergiliran (rotasi) tanaman dengan jenis yang bukan inang penyakit busuk daun.\r\nKimiawi, disemprot fungisida yang efektif seperti Difolatan 4 F atau Dithane M-45 0,2'),
('HP08', 'Busuk Buah Rhizoctonia', 'pengendaliannya dapat dilakukan dengan cara membersihkan gulma, sehingga tidak ada tempat persembunyian bagi ulat ini. Secara kimiawi dapat disemprot dengan insektisida coracron, regent atau prevaton'),
('HP09', 'Busuk Buah antraknosa', 'pengendaliannya dapat dilakukan dengan cara membersihkan gulma, membuang dan membunuh ulat secara manual. Secara kimiawi dapat disemprot dengan insektisida abamectin, regent atau prevaton.'),
('HP10', 'Penyakit Layu', 'pemangkasan daun yang terserang atau dimakan oleh ulat jengkal atau penyemprotan insektisida, regent atau prevaton.'),
('HP11', 'Bercak Bakteri', 'dengan menggunakan mulsa plastik perak, dan penyemprotan akarisida berbahan aktif abamectin.'),
('HP12', 'Penyakit Bercak Daun', 'berdasarkan kultur teknis adalah pembersihan lahan dari gulma, berdasarkan mekanis dengan menggunakan perangkap kuning yang telah dioleskan dengan vaselin, oli atau minyak goreng pada perangkap tersebut, berdasarkan biologis dengan membudidayakan musuh alami hama penggorok daun yaitu liriomyza sp. berdasarkan kimia dengan menyemprotkan pestisida dari golongan hidroklorin.'),
('HP13', 'Layu Cendawan', 'menggunakan perangkap lalat buah untuk mengurangi populasi lalat buah. Kebersihan dan sanitasi area budidaya harus diperhatikan dan penyemprotan insektisida curacron.'),
('HP14', 'Bercak (Bacterial speck)', 'M'),
('HP15', 'Penyakit Kerdil', 'M'),
('HP16', 'Bercak Kering dan Mati Urat', 'M'),
('HP17', 'Kuning dan Daun Menggulung', 'M'),
('HP18', 'Bengkak Akar', 'M'),
('HP19', 'Blossom End Rot', 'M'),
('HP20', 'Tomato Yellow Leaf Curl Virus', 'M'),
('HP21', 'Busuk Batang Didymella sp', 'M');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
