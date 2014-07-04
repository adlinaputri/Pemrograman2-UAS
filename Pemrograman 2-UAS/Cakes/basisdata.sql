-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 04 Jul 2014 pada 05.09
-- Versi Server: 5.6.11
-- Versi PHP: 5.5.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `basisdata`
--
CREATE DATABASE IF NOT EXISTS `basisdata` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `basisdata`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `jk` varchar(20) NOT NULL,
  `tgl` date NOT NULL,
  `alamat` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id_user`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_user`, `nama`, `jk`, `tgl`, `alamat`, `email`, `phone`, `username`, `password`) VALUES
(8, 'Adlina Putri', 'Perempuan', '1994-02-16', 'Jl. Mawar', 'adlinaputri22@gmail.com', '0218703931', 'adlinaputri', 'adlina13'),
(9, 'andri', 'Laki-laki', '1980-01-01', 'jl. Batu', 'andriocta@gmail.com', '0218873931', 'andriocta', '23456'),
(10, 'aaaaa', 'Laki-laki', '1980-01-01', 'aaaa', 'aaaa@aaa.com', '123123', 'qwe', 'qwe'),
(11, '', 'Laki-laki', '1980-01-01', '', '', '', '', ''),
(12, 'Adlina Putri', 'Perempuan', '1994-02-16', 'Jl. Mawar', 'adlinaputri22@gmail.com', '0218703931', 'adlinaputri', '12345'),
(13, 'Rita Faria', 'Perempuan', '1994-05-07', 'Jl. Apel', 'ritafaria@gamil.com', '02187793781', 'ritafaria', '23456');

-- --------------------------------------------------------

--
-- Struktur dari tabel `biodata`
--

CREATE TABLE IF NOT EXISTS `biodata` (
  `kode` varchar(5) NOT NULL,
  `nama` varchar(45) NOT NULL,
  `kelamin` varchar(20) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `ortu` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `biodata`
--

INSERT INTO `biodata` (`kode`, `nama`, `kelamin`, `alamat`, `ortu`) VALUES
('11111', 'Ghazali', 'Laki-laki', 'Sigli', 'Zulkifli'),
('11112', 'Julinda', 'Perempuan', 'Ulim', 'Yusuf'),
('11113', 'Monicha', 'Perempuan', 'Bambi', 'Rahman'),
('11113', 'Andrian', 'Laki-laki', 'Bambi', 'Ramli'),
('11115', 'Andrian', 'Laki-laki', 'Krung', 'Ramli'),
('12345', 'Reza', 'Laki-laki', 'Desa', 'Kure');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pesan`
--

CREATE TABLE IF NOT EXISTS `pesan` (
  `id_produk` varchar(5) NOT NULL,
  `id_pemesanan` varchar(5) NOT NULL,
  `tanggal_antar` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id_kategori` int(11) NOT NULL AUTO_INCREMENT,
  `id_produk` varchar(5) NOT NULL,
  `nama_produk` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  PRIMARY KEY (`id_kategori`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id_kategori`, `id_produk`, `nama_produk`, `harga`) VALUES
(2, 'A133', 'Bunny Cupcakes', 75000),
(3, 'A112', 'Flower Cupcakes', 65000),
(4, 'A111', 'Rose Cupcake', 78000),
(5, 'A111', 'Flower Cupcakes', 45000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` varchar(5) NOT NULL,
  `id_pemesanan` varchar(5) NOT NULL,
  `id_user` varchar(5) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `phone` int(11) NOT NULL,
  `total_bayar` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
