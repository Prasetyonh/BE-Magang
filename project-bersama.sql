-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 26 Jul 2022 pada 08.52
-- Versi server: 10.4.13-MariaDB
-- Versi PHP: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project-bersama`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cuti`
--

CREATE TABLE `cuti` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `cuti`
--

INSERT INTO `cuti` (`id`, `user_id`, `name`, `tanggal`, `keterangan`, `createdAt`, `updatedAt`) VALUES
(1, 'johnny', 'Johnny Depp', '2022-07-12', 'Menikah', '2022-07-18 17:17:20', '2022-07-18 17:17:20'),
(2, 'billiejoe', 'Billie Joe', '2022-07-22', 'Manggung', '2022-07-18 17:17:48', '2022-07-18 17:17:48'),
(3, 'billgates', 'Bill Gates', '2022-06-27', 'Sakit', '2022-07-18 17:33:12', '2022-07-18 17:33:12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawan`
--

CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) DEFAULT NULL,
  `fullname` varchar(255) DEFAULT NULL,
  `statuspernikahan` varchar(255) DEFAULT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `identitas` varchar(255) DEFAULT NULL,
  `divisi` varchar(255) DEFAULT NULL,
  `tanggalmasuk` varchar(255) DEFAULT NULL,
  `statuskaryawan` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `posisi` varchar(255) DEFAULT NULL,
  `site` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `createdby` varchar(255) DEFAULT NULL,
  `createdate` varchar(255) DEFAULT NULL,
  `pendidikan` varchar(255) DEFAULT NULL,
  `institusi` varchar(255) DEFAULT NULL,
  `tempatlahir` varchar(255) DEFAULT NULL,
  `tanggallahir` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `role_trello` varchar(255) DEFAULT NULL,
  `nikkaryawan` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `createddby` varchar(255) DEFAULT NULL,
  `updateat` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `karyawan`
--

INSERT INTO `karyawan` (`id`, `user_id`, `fullname`, `statuspernikahan`, `nik`, `identitas`, `divisi`, `tanggalmasuk`, `statuskaryawan`, `email`, `phone`, `alamat`, `posisi`, `site`, `telegram`, `createdby`, `createdate`, `pendidikan`, `institusi`, `tempatlahir`, `tanggallahir`, `status`, `role_trello`, `nikkaryawan`, `jurusan`, `createddby`, `updateat`, `createdAt`, `updatedAt`) VALUES
(49, 'markz', 'Mark Zuckerberg', 'Jomblo', '33020102049101', 'KTP', 'BSO', '2016-04-09', 'Tetap', 'markz@facebook.com', '081231231352', 'Jl Kantil, Bantul', 'Developer', 'Bantul', 'markz', 'admin@mail.com', '2022-05-18 11:43:24', 'S1', 'Harvard University', 'Jakarta', '1991-07-12', 'Active', 'admin Developer', '20160904', 'TI', NULL, NULL, '2022-05-18 04:43:25', '2022-07-19 11:12:15'),
(50, 'testing2', 'test 2', 'Kawin', '3302012301191001', 'KTP', 'Developer', '2019-03-12', 'Tetap', 'test2@mail.com', '081231092313', 'Jl Kenanga, Bantul', 'Staff', 'Jogja', 'tes2', 'prasetyonurhidayat@gmail.com', '2022-05-18 11:46:15', 'SMA/SMK', 'SMK Mantap', 'Jakarta', '1992-04-23', 'Active', 'admin PMO', '2013009', 'RPL', NULL, NULL, '2022-05-18 04:46:17', '2022-06-26 15:44:02'),
(53, 'billgates', 'Bill Gates', 'Cerai Hidup', '33002123091', 'KTP', 'Digital Marketing', '2019-10-19', 'Tetap', 'billgates@mail.com', '08129192831', 'Jl jalan, Solo', 'Staff', 'Jogja', 'billgates', 'admin@mail.com', '2022-05-20 12:29:19', 'S1', 'UGM', 'Solo', '1997-11-12', 'Active', 'admin Developer', '20191910', 'TI', NULL, NULL, '2022-05-20 05:29:20', '2022-07-18 18:55:04'),
(54, 'john.lennon', 'John Lennon', 'Kawin', '19019284912', 'PASSPORT', 'BSO', '2018-04-27', 'Tetap', 'johnlenon@gmail.com', '08123918321', 'Jl Mawar, Yogyakarta', 'Project Manager', 'Yogyakarta', 'johnlennon', 'admin@mail.com', '2022-05-21 09:00:34', 'S2', 'Harvard University', 'Yogyakarta', '1989-02-17', 'Active', 'Developer admin', '20180428', 'TI', NULL, NULL, '2022-05-21 02:00:37', '2022-06-29 09:58:04'),
(57, 'test3', 'Testing 3', 'Kawin', '19019284912', 'SIM', 'Developer', '2022-05-26', 'Non-Tetap', 'test3@mail.com', '08123918321', 'Jl Mawar, Yogyakarta', 'Project Manager', 'Yogyakarta', 'johnlennon', 'admin@mail.com', '2022-05-24', 'S1', 'Harvard University', 'Yogyakarta', '2001-02-19', 'Active', 'Developer admin', '20180428', 'TI', NULL, NULL, '2022-05-24 06:19:59', '2022-06-29 09:56:37'),
(63, 'johnny', 'Johnny Depp', 'Kawin', '19019284912', 'PASSPORT', 'Developer', '2019-05-15', 'Tetap', 'johnny@gmail.com', '08123912312', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'johnny', 'admin@mail.com', '2022-06-23 07:27:21', 'S2', 'Harvard University', 'Yogyakarta', '1989-11-25', 'Active', '-', '20190515', 'TI', NULL, NULL, '2022-06-23 00:27:25', '2022-06-29 09:57:25'),
(64, 'testingdemo', 'testingdemo updated', 'Belum Kawin', '23124252341234', 'SIM', 'Developer', '2020-02-01', 'Non-Tetap', 'testingdemo@mail.com', '08123019291', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'demo', 'admin@mail.com', '2022-06-29 10:23:17', 'S2', 'Harvard University', 'Yogyakarta', '1987-03-09', 'resign', '-', '20200201', 'TI', NULL, NULL, '2022-06-29 03:23:29', '2022-07-18 18:58:56'),
(65, 'testing123', 'Testing 123 updated', 'Kawin', '123791289291', 'SIM', 'Developer', '2021-09-01', 'Non-Tetap', 'testing123@mail.com', '08123101231', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'testing123', 'admin@mail.com', '2022-06-29 10:33:45', 'S2', 'Harvard University', 'Yogyakarta', '1989-01-09', 'Active', '-', '20210901', 'TI', NULL, NULL, '2022-06-29 03:33:56', '2022-06-29 03:35:40'),
(66, 'freddiemercury', 'Freddie Mercury', 'Kawin', '87123012839112', 'PASSPORT', 'BSO', '2018-02-09', 'Non-Tetap', 'freddie@mail.com', '08129391281', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'freddiem', 'admin@mail.com', '2022-06-29 11:07:20', 'S2', 'Harvard University', 'Yogyakarta', '1986-01-09', 'Active', '-', '20180209', 'TI', NULL, NULL, '2022-06-29 04:07:33', '2022-07-03 17:18:10'),
(67, 'billiejoe', 'Billie Joe', 'Kawin', '45547290234', 'PASSPORT', 'Digital Marketing', '2021-06-04', 'Non-Tetap', 'billiejoe@mail.com', '08972618231', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'billiejoe', 'admin@mail.com', '2022-07-04 00:08:31', 'S1', 'Harvard University', 'Yogyakarta', '1995-02-26', 'Active', '-', '20210604', 'Management', NULL, NULL, '2022-07-03 17:08:34', '2022-07-18 18:42:45'),
(72, 'tesssst', 'tesssttt', 'Kawin', '19831201', 'PASSPORT', 'Developer', '2022-07-03', 'Tetap', 'asdad@mail.com', '089121221333', 'Jl Mawar, Yogyakarta', 'Staff', 'Yogyakarta', 'testing123', 'admin@mail.com', '2022-07-04 00:59:48', 'S1', 'Harvard University', 'Yogyakarta', '2022-07-01', 'Active', '-', '20200625', 'TI', NULL, NULL, '2022-07-03 17:59:51', '2022-07-07 18:55:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `role_id` int(11) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `roles`
--

INSERT INTO `roles` (`id`, `role_id`, `role_name`, `createdAt`, `updatedAt`) VALUES
(2, 1, 'HRD', '2022-04-20 11:07:10', '2022-04-20 11:07:10'),
(3, 2, 'PMO Admin', '2022-04-20 11:09:31', '2022-04-20 11:09:31'),
(4, 3, 'PMO Employee', '2022-04-21 16:56:16', '2022-04-21 16:56:16'),
(5, 4, 'BSO Admin', '2022-07-26 06:48:20', '2022-07-26 06:48:20'),
(6, 5, 'BSO Employee', '2022-07-26 06:48:35', '2022-07-26 06:48:35'),
(7, 6, 'SDO Admin', '2022-07-26 06:48:56', '2022-07-26 06:48:56'),
(8, 7, 'SDO Employee', '2022-07-26 06:49:10', '2022-07-26 06:49:10'),
(9, 8, 'Trello Admin', '2022-07-26 06:49:37', '2022-07-26 06:49:37'),
(10, 9, 'Project Manager', '2022-07-26 06:49:56', '2022-07-26 06:49:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text DEFAULT NULL,
  `role` int(11) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `refresh_token`, `role`, `createdAt`, `updatedAt`) VALUES
(26, 'Prasetyo Nur Hidayat', 'prasetyonh@mail.com', '$2b$10$yxtsxWcNlvn7fb2jyaDrKueYlqcG1bnn/rL181nltNMjjZPj/LgNC', NULL, 2, '2022-04-26 09:12:42', '2022-07-26 05:02:30'),
(27, 'admin', 'admin@mail.com', '$2b$10$VqPEt7ZzemnonoTU5WXLD.9djIHURnL27c7rD5VsIpqBM7ECqe9Iy', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjI3LCJuYW1lIjoiYWRtaW4iLCJlbWFpbCI6ImFkbWluQG1haWwuY29tIiwiaWF0IjoxNjU4ODE0NTQ4LCJleHAiOjE2NTg5MDA5NDh9.ziop21hEUDLV_h9vXwZNHeM3SpgDUGhkBTXCEAxToEQ', 1, '2022-05-18 04:22:12', '2022-07-26 05:49:08');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cuti`
--
ALTER TABLE `cuti`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cuti`
--
ALTER TABLE `cuti`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `karyawan`
--
ALTER TABLE `karyawan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT untuk tabel `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
