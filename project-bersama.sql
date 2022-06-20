/*
Navicat MySQL Data Transfer

Source Server         : App
Source Server Version : 50717
Source Host           : localhost:3306
Source Database       : project-bersama

Target Server Type    : MYSQL
Target Server Version : 50717
File Encoding         : 65001

Date: 2022-05-31 11:49:33
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cuti
-- ----------------------------
DROP TABLE IF EXISTS `cuti`;
CREATE TABLE `cuti` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_karyawan` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `tanggal` varchar(255) DEFAULT NULL,
  `keterangan` varchar(255) DEFAULT NULL,
  `createdAt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `updatedAt` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cuti
-- ----------------------------

-- ----------------------------
-- Table structure for karyawan
-- ----------------------------
DROP TABLE IF EXISTS `karyawan`;
CREATE TABLE `karyawan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
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
  `status` varchar(255) DEFAULT 'active',
  `role_trello` varchar(255) DEFAULT NULL,
  `nikkaryawan` varchar(255) DEFAULT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `createddby` varchar(255) DEFAULT NULL,
  `updateat` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of karyawan
-- ----------------------------
INSERT INTO `karyawan` VALUES ('1', 'karyo.wawan', 'Karyo Wawan', 'Duda', '1642957970001246', 'KTP', 'Developer', '2011-09-27', 'tetap', 'wawan@yahoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-07 09:55:39', '2022-05-14 08:07:39');
INSERT INTO `karyawan` VALUES ('2', 'jessie.lynn', 'Jessie Melynda', 'Single', '1642957970001111', 'KTP', 'PMO', '2021-09-27', 'tetap', 'jessie12@yahoo.com', '089899889988', 'Jl Menur', 'Project Manager', 'Jakarta', 'jessielynn', 'userLogin', '12-01-2022', 'S1', 'ITB', 'Jakarta', '21-06-1995', 'active', 'employee', '140045', 'Teknik Kimia', '', '', '2022-05-07 10:35:31', '2022-05-07 11:09:23');
INSERT INTO `karyawan` VALUES ('3', 'Sandy.Cheekss', 'Sandy Cheekss', 'rangda', '1122334444', 'SIM', 'string', '2021-09-27', 'string', 'string@gmail.com', '083string', 'sini', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-10 15:47:25', '2022-05-17 07:39:05');
INSERT INTO `karyawan` VALUES ('4', 'coba', 'coba dua', 'kawin', '122233334444', 'KTM', 'apa', '2011-09-27', 'tetap', 'wawan@yahoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-11 12:47:31', '2022-05-17 07:49:11');
INSERT INTO `karyawan` VALUES ('5', 'coba.1', 'coba dua', 'kawin', '122233334444', 'KTM', 'apa', '2011-09-27', 'tetap', 'wawan@yahoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'resign', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-11 12:51:00', '2022-05-17 08:09:46');
INSERT INTO `karyawan` VALUES ('6', 'coba.2', 'coba dua', 'kawin', '122233334444', 'KTM', 'apa', '2011-09-27', 'tetap', 'wawan@yahoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-11 14:02:17', '2022-05-17 07:49:11');
INSERT INTO `karyawan` VALUES ('7', 'coba.3', 'coba tiga', 'kawin', '122233334444', 'KTM', 'apa', '2011-09-27', 'tetap', 'wawan@yahoo.com', '089888888888', 'disitu', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-11 14:04:14', '2022-05-17 07:51:27');
INSERT INTO `karyawan` VALUES ('8', 'aku.isi', 'aku coba ubah', 'Duda', '1642957970001246', 'KTP', 'Developer', '2011-09-27', 'tetap', 'wawan@hayoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'active', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-30 02:47:04', '2022-05-30 02:53:15');
INSERT INTO `karyawan` VALUES ('9', 'coba.tambah', 'coba ubah', 'Duda', '1642957970001246', 'KTP', 'Developer', '2011-09-27', 'tetap', 'wawan@hayoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'ugm', 'pacitan', '21-06-1969', 'resign', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-30 02:57:25', '2022-05-30 03:01:01');
INSERT INTO `karyawan` VALUES ('10', 'nanang', 'nanang12', 'Duda', '1642957970001246', 'KTP', 'Developer', '2011-09-27', 'tetap', 'wawan@hayoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'Brebes', '21-06-1969', 'resign', 'admin', '201245', 'Teknik Informatika', '', '', '2022-05-30 03:08:27', '2022-05-30 03:10:06');
INSERT INTO `karyawan` VALUES ('11', 'ricki', 'ricki efendy', 'lajang', '1642957970001246', 'KTP', 'Developer', '2011-09-27', 'tetap', 'wawan@hayoo.com', '089888888888', 'Jl Cantel', 'Developer', 'Yogyakarta', 'karyowawan', 'userLogin', '12-01-2022', 'S1', 'Amikom', 'palembang', '21-06-1969', 'resign', 'user', '201245', 'Teknik Informatika', '', '', '2022-05-30 03:34:21', '2022-05-30 03:36:40');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` int(11) DEFAULT NULL,
  `role_name` varchar(255) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES ('1', '1', 'HRD', '2022-04-20 08:58:57', '2022-04-20 08:58:57');
INSERT INTO `roles` VALUES ('2', '2', 'PMO Admin', '2022-04-20 08:59:04', '2022-04-20 08:59:04');
INSERT INTO `roles` VALUES ('3', '3', 'PMO Employee', '2022-04-20 09:00:48', '2022-04-20 09:00:48');
INSERT INTO `roles` VALUES ('4', '4', 'BSO Admin', '2022-04-20 09:01:33', '2022-04-20 09:01:33');
INSERT INTO `roles` VALUES ('5', '5', 'BSO Employee', '2022-04-20 09:01:52', '2022-04-20 09:01:52');
INSERT INTO `roles` VALUES ('6', '6', 'SDO Admin', '2022-04-20 09:02:42', '2022-04-20 09:02:42');
INSERT INTO `roles` VALUES ('7', '7', 'SDO Employee', '2022-04-20 09:02:49', '2022-04-20 09:02:49');
INSERT INTO `roles` VALUES ('8', '8', 'RMO Admin', '2022-04-20 09:03:04', '2022-04-20 09:03:04');
INSERT INTO `roles` VALUES ('9', '9', 'RMO Employee', '2022-04-20 09:03:13', '2022-04-20 09:03:13');
INSERT INTO `roles` VALUES ('10', '10', 'Trello Admin', '2022-04-20 09:03:26', '2022-04-20 09:03:26');
INSERT INTO `roles` VALUES ('11', '11', 'Dummy', '2022-04-20 09:15:24', '2022-04-20 09:15:24');
INSERT INTO `roles` VALUES ('13', '55', 'coba add rolle', '2022-05-30 02:45:26', '2022-05-30 02:45:26');
INSERT INTO `roles` VALUES ('14', '66', 'coba', '2022-05-30 02:55:46', '2022-05-30 02:55:46');
INSERT INTO `roles` VALUES ('15', '77', 'coba cambah', '2022-05-30 03:06:47', '2022-05-30 03:06:47');
INSERT INTO `roles` VALUES ('16', '88', 'string', '2022-05-30 03:32:37', '2022-05-30 03:32:37');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `refresh_token` text,
  `role` int(11) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'nanang febri', 'febrinanang@gmail.com', '$2b$10$iELcngDNlNoEM3sgVBObFORyTjfTkJ/PiG4pYISNkcH6o6WrbrSFy', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjEsIm5hbWUiOiJuYW5hbmcgZmVicmkiLCJlbWFpbCI6ImZlYnJpbmFuYW5nQGdtYWlsLmNvbSIsImlhdCI6MTY1MjE4NzM1MiwiZXhwIjoxNjUyMjczNzUyfQ.s1UlUvMNy_ClrS5sFNJWDxgUsQLRqudBzZuNX8JIgD8', '10', '2022-04-18 12:02:17', '2022-05-10 12:55:52');
INSERT INTO `users` VALUES ('2', 'Febrian Tantya Putra', 'febrian@gmail.com', '$2b$10$LeWeKEGfLJwM73ku4YIVDOnj0ygIdRpbUPcTcwrzK5slxeKVELCJu', null, '10', '2022-04-19 06:22:14', '2022-04-19 13:57:14');
INSERT INTO `users` VALUES ('3', 'nanang febri 2', 'febrinanang2@gmail.com', '$2b$10$GztLUJqmdRqOhx2J9.F28uQhseQJclfyMGrSTAdOHRV1q64HvuhKK', null, '6', '2022-04-19 09:18:41', '2022-04-19 14:54:30');
INSERT INTO `users` VALUES ('4', 'nyoba', 'nyoba@gmail.com', '$2b$10$5O69KWXubZBR8riJCYGAde3wGj/xlrZJOzdMzKSmObrrMKclKiVzK', 'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJ1c2VySWQiOjQsIm5hbWUiOiJueW9iYSIsImVtYWlsIjoibnlvYmFAZ21haWwuY29tIiwiaWF0IjoxNjUyNTEyNDY2LCJleHAiOjE2NTI1OTg4NjZ9.fN7UC2FiLWXbjLWgJDxmgpOha-UoRb_s1iLn2EkvWRM', '7', '2022-04-19 14:13:40', '2022-05-14 07:14:26');
INSERT INTO `users` VALUES ('12', 'coba lagi', 'cobalagi@gmail.com', '$2b$10$mF3tVWTZ4.DJmAr9zexZ5.ntfS7K9UrcWaPSJaIMj4C1z2ENiDyF6', null, '1', '2022-04-29 10:45:59', '2022-04-29 10:45:59');
SET FOREIGN_KEY_CHECKS=1;
