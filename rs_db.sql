/*
 Navicat Premium Data Transfer

 Source Server         : mycon
 Source Server Type    : MySQL
 Source Server Version : 100432
 Source Host           : localhost:3306
 Source Schema         : rs_db

 Target Server Type    : MySQL
 Target Server Version : 100432
 File Encoding         : 65001

 Date: 15/10/2024 12:56:31
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for cache
-- ----------------------------
DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cache_locks
-- ----------------------------
DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks`  (
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp(0) NOT NULL DEFAULT current_timestamp(0),
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for job_batches
-- ----------------------------
DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `cancelled_at` int(11) NULL DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for jobs
-- ----------------------------
DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED NULL DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `jobs_queue_index`(`queue`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` VALUES (3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2024_10_13_144445_create_rsmaster_table', 1);
INSERT INTO `migrations` VALUES (5, '2024_10_13_144711_create_pasien__table', 1);

-- ----------------------------
-- Table structure for pasien
-- ----------------------------
DROP TABLE IF EXISTS `pasien`;
CREATE TABLE `pasien`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `id_rs` int(11) NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of pasien
-- ----------------------------
INSERT INTO `pasien` VALUES (1, 'BUDI', 'JL. ANTAPANI 1', '08677777', 'budi@email.com', 2, '2024-10-13 21:07:01', '2024-10-13 21:07:01');
INSERT INTO `pasien` VALUES (2, 'SAMMY', 'JL. GEMPOL 1', '081777722', 'sammy@email.com', 2, '2024-10-13 21:09:01', '2024-10-13 21:09:01');
INSERT INTO `pasien` VALUES (3, 'SUNSUN', 'JL. SUNTER', '08177777', 'sunsun@email.com', 3, '2024-10-13 21:10:24', '2024-10-13 21:10:24');
INSERT INTO `pasien` VALUES (5, 'IMAM', 'JL. KALIDERES', '08988998988', 'imam@email.com', 4, '2024-10-13 21:13:02', '2024-10-13 21:13:02');

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for rsmaster
-- ----------------------------
DROP TABLE IF EXISTS `rsmaster`;
CREATE TABLE `rsmaster`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT '',
  `telepon` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of rsmaster
-- ----------------------------
INSERT INTO `rsmaster` VALUES (2, 'CIPUTRA HOSPITAL', 'CITRA RAYA', '', '021297777', '2024-10-13 18:43:44', '2024-10-13 20:07:16');
INSERT INTO `rsmaster` VALUES (3, 'METRO HOSPITAL CIKUPA', 'JL. CIKUPA', '', '08123333', '2024-10-13 21:02:45', '2024-10-13 21:02:45');
INSERT INTO `rsmaster` VALUES (4, 'TIARA RS', 'CIKUPA', '', '021233333', '2024-10-14 13:05:23', '2024-10-14 13:05:23');

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `sessions_user_id_index`(`user_id`) USING BTREE,
  INDEX `sessions_last_activity_index`(`last_activity`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sessions
-- ----------------------------
INSERT INTO `sessions` VALUES ('NZ0xtrbzaOzPnMPmCs7V00BKML0ZVnT6eOhLqx7u', NULL, '127.0.0.1', 'PostmanRuntime/7.42.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiQjJtMFlxRE1xUEROeTFyUnBPNU11VTlLRER3UDhBZ3ZUQUlpbzNLaCI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzU6Imh0dHA6Ly9sb2NhbGhvc3Q6ODAwMC9nZXRwYXNpZW5ycy8zIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==', 1728960897);
INSERT INTO `sessions` VALUES ('OnivLqzpxt9VkUNrKH1Jq1Ejuc0u88fUpD8FnDwT', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoib0VRTXdXSGN3dHFySWc3VzNTUGttS2JNTnJmS0JMdTVzUm9sU2xMaSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjg6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wYXNpZW4iO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO30=', 1728971719);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp(0) NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Admin', 'admin@example.com', '2024-10-14 07:47:05', '$2y$12$soJopFl0qPOzThfZNBP44eMmk03YzX8Mb9YzKaGMC5Jdr7LmKmatu', 'ppDjwlGlJ1jNZ6pi9Zrq2yayqBl2CQwXxf5LM3NBdpsZ9NW4quRbaUax0b0D', '2024-10-14 07:47:05', '2024-10-14 07:47:05');
INSERT INTO `users` VALUES (2, 'Test User', 'test@example.com', '2024-10-14 07:56:49', '$2y$12$B.WJJaHomBVV7esUOM3GTOU9pAlaIm4jDsIVZPhwviNrmnwZPzIQq', 'ciTFkt457h', '2024-10-14 07:56:49', '2024-10-14 07:56:49');
INSERT INTO `users` VALUES (3, 'Patience Deckow', 'ian.hyatt@example.org', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'DOWj29iv22', '2024-10-15 03:07:07', '2024-10-15 03:07:07');
INSERT INTO `users` VALUES (4, 'Ida Waelchi', 'predovic.guiseppe@example.org', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', '6w83RCiM9r', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (5, 'Deborah Conn Sr.', 'ukuhlman@example.org', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', '0QbOSqA7m5', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (6, 'Cleve Durgan', 'pwyman@example.com', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', '1DA0lFGj05', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (7, 'Sabina O\'Kon', 'xwiza@example.com', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'zulYFI0A2S', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (8, 'Okey Quitzon', 'valentin.schiller@example.com', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'YeqxZdUWiO', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (9, 'Kiana Conroy', 'nthompson@example.net', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', '731Ga7IsvB', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (10, 'Kayli Altenwerth', 'klocko.lourdes@example.net', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'CJ4q2UENvH', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (11, 'Connor Bruen', 'sarah40@example.org', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'y4yvCZEH54', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (12, 'Adele Ankunding DDS', 'wunsch.rocky@example.net', '2024-10-15 03:07:07', '$2y$12$5LIXFrFeA3I/XktmkWgRL.3aNrZqUJTUCev80Kx1yZfvFMiGTlWie', 'VDLojUlCCu', '2024-10-15 03:07:08', '2024-10-15 03:07:08');
INSERT INTO `users` VALUES (13, 'Bennett Mante', 'julian16@example.net', '2024-10-15 03:17:16', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'kGYrd7CVKp', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (14, 'Karli Davis', 'hahn.jamey@example.org', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'U3brScmfrz', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (15, 'Adriana Schmeler', 'raegan.romaguera@example.com', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', '7DIOODv1QV', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (16, 'Dr. Richard McCullough', 'fae16@example.net', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'RaGnnoGVFo', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (17, 'Elbert Conn', 'leonard.kuhic@example.net', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'b1W67nInnS', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (18, 'Ms. Winona Pacocha Jr.', 'miracle.hackett@example.net', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'YmqVu5J9Wj', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (19, 'Camilla Abshire', 'amina67@example.org', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'xs85wNlNJ9', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (20, 'Vivienne Larkin III', 'vincenza.rowe@example.org', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'Pfv1s14bRR', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (21, 'Kyra Miller', 'bosinski@example.org', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'KN3LhsOnsq', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (22, 'Damien Hyatt', 'kchamplin@example.com', '2024-10-15 03:17:17', '$2y$12$UqItJ6./vJn812yjzqNZ7OPUksZLD0oEvupxViDZZaKyZEJOxwaOS', 'INGWlKFFTF', '2024-10-15 03:17:17', '2024-10-15 03:17:17');
INSERT INTO `users` VALUES (23, 'Natalie Romaguera', 'tomas.brakus@example.net', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', '5cU9Vd93SX', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (24, 'Kailee Abshire V', 'torphy.edythe@example.com', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'fPAC4J4sUR', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (25, 'Heloise Harvey', 'augusta79@example.net', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'swlFrWOWH7', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (26, 'Catharine McDermott', 'kylie32@example.com', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', '3t0z4S5e4m', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (27, 'John Renner', 'jaquelin.gerhold@example.net', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'NbA6uMHolz', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (28, 'Mr. Jessie Stiedemann', 'block.bradford@example.net', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'J5iMaTORAg', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (29, 'Jess Beatty', 'virginia69@example.org', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'EffXIXiQ5X', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (30, 'Haskell Littel', 'labadie.eloy@example.org', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'ikLwEhFJSQ', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (31, 'Rex Beier', 'parisian.judy@example.org', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', '9xy8JWYgaG', '2024-10-15 03:19:52', '2024-10-15 03:19:52');
INSERT INTO `users` VALUES (32, 'Abigale Weber', 'rylan97@example.com', '2024-10-15 03:19:52', '$2y$12$UdDKGkAg2o8nhozfu9zpkO3jycbeDqiJrduSeo1iRdF/f18zf1.vq', 'rfZAXtnrye', '2024-10-15 03:19:52', '2024-10-15 03:19:52');

SET FOREIGN_KEY_CHECKS = 1;
