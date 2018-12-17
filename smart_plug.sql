/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : smart_plug

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-17 23:24:19
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for match_p_d
-- ----------------------------
DROP TABLE IF EXISTS `match_p_d`;
CREATE TABLE `match_p_d` (
  `pd_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_name` text COLLATE utf8mb4_unicode_ci,
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`pd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for match_p_u
-- ----------------------------
DROP TABLE IF EXISTS `match_p_u`;
CREATE TABLE `match_p_u` (
  `pu_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`pu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for ps_log
-- ----------------------------
DROP TABLE IF EXISTS `ps_log`;
CREATE TABLE `ps_log` (
  `l_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_unit` text COLLATE utf8mb4_unicode_ci,
  `l_datetime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `l_standtime` text COLLATE utf8mb4_unicode_ci,
  `u_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for sp_device
-- ----------------------------
DROP TABLE IF EXISTS `sp_device`;
CREATE TABLE `sp_device` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for sp_plug
-- ----------------------------
DROP TABLE IF EXISTS `sp_plug`;
CREATE TABLE `sp_plug` (
  `p_name` text COLLATE utf8mb4_unicode_ci,
  `p_location` text COLLATE utf8mb4_unicode_ci COMMENT 'latitude longitude',
  `p_img` text COLLATE utf8mb4_unicode_ci,
  `pt_id` int(5) DEFAULT NULL,
  `p_des_loca` text COLLATE utf8mb4_unicode_ci COMMENT 'description',
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`p_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for sp_plug_type
-- ----------------------------
DROP TABLE IF EXISTS `sp_plug_type`;
CREATE TABLE `sp_plug_type` (
  `pt_id` int(5) NOT NULL AUTO_INCREMENT,
  `pt_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Table structure for sp_user
-- ----------------------------
DROP TABLE IF EXISTS `sp_user`;
CREATE TABLE `sp_user` (
  `u_id` int(5) NOT NULL AUTO_INCREMENT,
  `u_fullname` text COLLATE utf8mb4_unicode_ci,
  `u_tel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
