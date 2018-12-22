/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50505
Source Host           : localhost:3306
Source Database       : smart_plug

Target Server Type    : MYSQL
Target Server Version : 50505
File Encoding         : 65001

Date: 2018-12-22 15:58:15
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
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of match_p_d
-- ----------------------------
INSERT INTO `match_p_d` VALUES ('49', ' ', 'A4AE30');
INSERT INTO `match_p_d` VALUES ('50', ' ', 'A4AE30');
INSERT INTO `match_p_d` VALUES ('51', ' ', 'A4AE30');
INSERT INTO `match_p_d` VALUES ('52', ' ', '8E0D84');
INSERT INTO `match_p_d` VALUES ('53', ' ', '8E0D84');
INSERT INTO `match_p_d` VALUES ('54', ' ', '8E0D84');
INSERT INTO `match_p_d` VALUES ('55', ' ', '123456');
INSERT INTO `match_p_d` VALUES ('56', ' ', '123456');
INSERT INTO `match_p_d` VALUES ('57', ' ', '123456');

-- ----------------------------
-- Table structure for match_p_u
-- ----------------------------
DROP TABLE IF EXISTS `match_p_u`;
CREATE TABLE `match_p_u` (
  `pu_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `u_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`pu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of match_p_u
-- ----------------------------
INSERT INTO `match_p_u` VALUES ('11', 'A4AE30', '1');
INSERT INTO `match_p_u` VALUES ('12', '8E0D84', '3');
INSERT INTO `match_p_u` VALUES ('13', '123456', '3');

-- ----------------------------
-- Table structure for sp_device
-- ----------------------------
DROP TABLE IF EXISTS `sp_device`;
CREATE TABLE `sp_device` (
  `d_id` int(5) NOT NULL AUTO_INCREMENT,
  `d_name` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`d_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sp_device
-- ----------------------------

-- ----------------------------
-- Table structure for sp_log
-- ----------------------------
DROP TABLE IF EXISTS `sp_log`;
CREATE TABLE `sp_log` (
  `l_id` int(5) NOT NULL AUTO_INCREMENT,
  `p_code` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `l_unit` text COLLATE utf8mb4_unicode_ci,
  `l_datetime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `l_standtime` text COLLATE utf8mb4_unicode_ci,
  `u_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`l_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sp_log
-- ----------------------------
INSERT INTO `sp_log` VALUES ('21', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 01:35:03', null, '1');
INSERT INTO `sp_log` VALUES ('22', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 01:35:14', null, '1');
INSERT INTO `sp_log` VALUES ('23', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 01:40:26', null, '1');
INSERT INTO `sp_log` VALUES ('24', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 01:40:36', null, '1');
INSERT INTO `sp_log` VALUES ('25', 'A4AE30', 'ปิดช่องที่ 1', '2018-12-22 01:40:45', null, '1');
INSERT INTO `sp_log` VALUES ('26', 'A4AE30', 'เปิดช่องที่ 1', '2018-12-22 01:40:51', null, '1');
INSERT INTO `sp_log` VALUES ('27', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 01:41:52', null, '1');
INSERT INTO `sp_log` VALUES ('28', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 02:12:43', null, '1');
INSERT INTO `sp_log` VALUES ('29', 'A4AE30', 'เปิดช่องที่ 2', '2018-12-22 02:14:28', null, '1');
INSERT INTO `sp_log` VALUES ('30', 'A4AE30', 'เปิดช่องที่ 3', '2018-12-22 02:14:39', null, '1');
INSERT INTO `sp_log` VALUES ('31', 'A4AE30', 'เปิดช่องที่ 4', '2018-12-22 02:14:47', null, '1');
INSERT INTO `sp_log` VALUES ('32', 'A4AE30', 'เปิดช่องที่ 1', '2018-12-22 02:14:53', null, '1');
INSERT INTO `sp_log` VALUES ('33', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 02:16:07', null, '1');
INSERT INTO `sp_log` VALUES ('34', 'A4AE30', 'เปิดช่องที่ 4', '2018-12-22 02:16:09', null, '1');
INSERT INTO `sp_log` VALUES ('35', 'A4AE30', 'ปิดช่องที่ 4', '2018-12-22 02:16:11', null, '1');
INSERT INTO `sp_log` VALUES ('36', 'A4AE30', 'เปิดช่องที่ 3', '2018-12-22 02:16:13', null, '1');
INSERT INTO `sp_log` VALUES ('37', 'A4AE30', 'ปิดช่องที่ 3', '2018-12-22 02:16:14', null, '1');
INSERT INTO `sp_log` VALUES ('38', 'A4AE30', 'เปิดช่องที่ 1', '2018-12-22 02:16:15', null, '1');
INSERT INTO `sp_log` VALUES ('39', 'A4AE30', 'ปิดช่องที่ 1', '2018-12-22 02:16:17', null, '1');
INSERT INTO `sp_log` VALUES ('40', 'A4AE30', 'เปิดช่องที่ 2', '2018-12-22 02:16:18', null, '1');
INSERT INTO `sp_log` VALUES ('41', 'A4AE30', 'ปิดช่องที่ 2', '2018-12-22 02:16:19', null, '1');
INSERT INTO `sp_log` VALUES ('42', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:23:11', null, '1');
INSERT INTO `sp_log` VALUES ('43', 'A4AE30', 'เปิดช่องที่ 1', '2018-12-22 11:23:16', null, '1');
INSERT INTO `sp_log` VALUES ('44', '123', 'ปิดทั้งปลั๊ก', '2018-12-22 11:30:58', null, '1');
INSERT INTO `sp_log` VALUES ('45', '123', 'ปิดทั้งปลั๊ก', '2018-12-22 11:31:05', null, '1');
INSERT INTO `sp_log` VALUES ('46', '123', 'ปิดทั้งปลั๊ก', '2018-12-22 11:31:07', null, '1');
INSERT INTO `sp_log` VALUES ('47', 'A4AE30', 'ปิดช่องที่ 1', '2018-12-22 11:37:24', null, '1');
INSERT INTO `sp_log` VALUES ('48', 'A4AE30', 'เปิดช่องที่ 1', '2018-12-22 11:37:54', null, '1');
INSERT INTO `sp_log` VALUES ('49', 'A4AE30', 'ปิดช่องที่ 1', '2018-12-22 11:37:57', null, '1');
INSERT INTO `sp_log` VALUES ('50', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 11:37:58', null, '1');
INSERT INTO `sp_log` VALUES ('51', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:38:28', null, '1');
INSERT INTO `sp_log` VALUES ('52', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 11:38:30', null, '1');
INSERT INTO `sp_log` VALUES ('53', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:38:31', null, '1');
INSERT INTO `sp_log` VALUES ('54', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 11:38:32', null, '1');
INSERT INTO `sp_log` VALUES ('55', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:38:33', null, '1');
INSERT INTO `sp_log` VALUES ('56', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 11:38:36', null, '1');
INSERT INTO `sp_log` VALUES ('57', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:38:46', null, '1');
INSERT INTO `sp_log` VALUES ('58', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 11:42:23', null, '1');
INSERT INTO `sp_log` VALUES ('59', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 11:42:26', null, '1');
INSERT INTO `sp_log` VALUES ('60', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:29', null, '1');
INSERT INTO `sp_log` VALUES ('61', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:29', null, '1');
INSERT INTO `sp_log` VALUES ('62', 'A4AE30', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:31', null, '1');
INSERT INTO `sp_log` VALUES ('63', '123', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:31', null, '1');
INSERT INTO `sp_log` VALUES ('64', 'A4AE30', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:34', null, '1');
INSERT INTO `sp_log` VALUES ('65', '123', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:34', null, '1');
INSERT INTO `sp_log` VALUES ('66', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:35', null, '1');
INSERT INTO `sp_log` VALUES ('67', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:35', null, '1');
INSERT INTO `sp_log` VALUES ('68', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:36', null, '1');
INSERT INTO `sp_log` VALUES ('69', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:36', null, '1');
INSERT INTO `sp_log` VALUES ('70', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:37', null, '1');
INSERT INTO `sp_log` VALUES ('71', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:37', null, '1');
INSERT INTO `sp_log` VALUES ('72', 'A4AE30', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:40', null, '1');
INSERT INTO `sp_log` VALUES ('73', '123', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:40', null, '1');
INSERT INTO `sp_log` VALUES ('74', 'A4AE30', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:46', null, '1');
INSERT INTO `sp_log` VALUES ('75', '123', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:46', null, '1');
INSERT INTO `sp_log` VALUES ('76', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:50', null, '1');
INSERT INTO `sp_log` VALUES ('77', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:51', null, '1');
INSERT INTO `sp_log` VALUES ('78', 'A4AE30', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:53', null, '1');
INSERT INTO `sp_log` VALUES ('79', '123', 'เปิดทุกปลั๊ก', '2018-12-22 12:27:53', null, '1');
INSERT INTO `sp_log` VALUES ('80', 'A4AE30', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:58', null, '1');
INSERT INTO `sp_log` VALUES ('81', '123', 'ปิดทุกปลั๊ก', '2018-12-22 12:27:59', null, '1');
INSERT INTO `sp_log` VALUES ('82', 'A4AE30', 'เปิดทั้งปลั๊ก', '2018-12-22 12:36:13', null, '1');
INSERT INTO `sp_log` VALUES ('83', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 12:36:20', null, '1');
INSERT INTO `sp_log` VALUES ('84', 'A4AE30', 'เปิดช่องที่ 2', '2018-12-22 12:36:22', null, '1');
INSERT INTO `sp_log` VALUES ('85', 'A4AE30', 'ปิดช่องที่ 2', '2018-12-22 12:36:23', null, '1');
INSERT INTO `sp_log` VALUES ('86', 'A4AE30', 'เปิดช่องที่ 2', '2018-12-22 12:36:24', null, '1');
INSERT INTO `sp_log` VALUES ('87', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 12:39:37', null, '1');
INSERT INTO `sp_log` VALUES ('88', 'A4AE30', 'เปิดช่องที่ 2', '2018-12-22 12:39:40', null, '1');
INSERT INTO `sp_log` VALUES ('89', 'A4AE30', 'ปิดทั้งปลั๊ก', '2018-12-22 13:29:12', null, '1');
INSERT INTO `sp_log` VALUES ('90', 'A4AE30', 'เปิดช่องที่ 4', '2018-12-22 13:31:36', null, '1');
INSERT INTO `sp_log` VALUES ('91', 'A4AE30', 'ปิดช่องที่ 4', '2018-12-22 13:31:38', null, '1');
INSERT INTO `sp_log` VALUES ('92', 'A4AE30', 'เปิดช่องที่ 3', '2018-12-22 13:31:40', null, '1');
INSERT INTO `sp_log` VALUES ('93', 'A4AE30', 'ปิดช่องที่ 3', '2018-12-22 13:31:42', null, '1');
INSERT INTO `sp_log` VALUES ('94', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 13:58:23', null, '3');
INSERT INTO `sp_log` VALUES ('95', '8E0D84', 'ปิดช่องที่ 1', '2018-12-22 13:58:25', null, '3');
INSERT INTO `sp_log` VALUES ('96', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 13:58:27', null, '3');
INSERT INTO `sp_log` VALUES ('97', '8E0D84', 'ปิดช่องที่ 2', '2018-12-22 13:58:29', null, '3');
INSERT INTO `sp_log` VALUES ('98', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 13:58:33', null, '3');
INSERT INTO `sp_log` VALUES ('99', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 13:58:36', null, '3');
INSERT INTO `sp_log` VALUES ('100', '8E0D84', 'เปิดช่องที่ 3', '2018-12-22 13:58:38', null, '3');
INSERT INTO `sp_log` VALUES ('101', '8E0D84', 'ปิดทั้งปลั๊ก', '2018-12-22 13:58:42', null, '3');
INSERT INTO `sp_log` VALUES ('102', '8E0D84', 'เปิดทั้งปลั๊ก', '2018-12-22 13:58:47', null, '3');
INSERT INTO `sp_log` VALUES ('103', '8E0D84', 'ปิดทั้งปลั๊ก', '2018-12-22 13:58:49', null, '3');
INSERT INTO `sp_log` VALUES ('104', '8E0D84', 'เปิดทั้งปลั๊ก', '2018-12-22 13:59:41', null, '3');
INSERT INTO `sp_log` VALUES ('105', '8E0D84', 'ปิดทั้งปลั๊ก', '2018-12-22 13:59:55', null, '3');
INSERT INTO `sp_log` VALUES ('106', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:00:34', null, '3');
INSERT INTO `sp_log` VALUES ('107', '8E0D84', 'ปิดช่องที่ 1', '2018-12-22 14:00:35', null, '3');
INSERT INTO `sp_log` VALUES ('108', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 14:00:37', null, '3');
INSERT INTO `sp_log` VALUES ('109', '8E0D84', 'ปิดช่องที่ 2', '2018-12-22 14:00:38', null, '3');
INSERT INTO `sp_log` VALUES ('110', '8E0D84', 'เปิดช่องที่ 3', '2018-12-22 14:00:38', null, '3');
INSERT INTO `sp_log` VALUES ('111', '8E0D84', 'ปิดช่องที่ 3', '2018-12-22 14:00:39', null, '3');
INSERT INTO `sp_log` VALUES ('112', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:00:50', null, '3');
INSERT INTO `sp_log` VALUES ('113', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 14:00:52', null, '3');
INSERT INTO `sp_log` VALUES ('114', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 14:00:53', null, '3');
INSERT INTO `sp_log` VALUES ('115', '8E0D84', 'เปิดช่องที่ 3', '2018-12-22 14:00:53', null, '3');
INSERT INTO `sp_log` VALUES ('116', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:01:00', null, '3');
INSERT INTO `sp_log` VALUES ('117', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:01:01', null, '3');
INSERT INTO `sp_log` VALUES ('118', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 14:01:04', null, '3');
INSERT INTO `sp_log` VALUES ('119', '8E0D84', 'เปิดช่องที่ 3', '2018-12-22 14:01:20', null, '3');
INSERT INTO `sp_log` VALUES ('120', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:50:52', null, '3');
INSERT INTO `sp_log` VALUES ('121', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:50:57', null, '3');
INSERT INTO `sp_log` VALUES ('122', '8E0D84', 'ปิดช่องที่ 1', '2018-12-22 14:50:58', null, '3');
INSERT INTO `sp_log` VALUES ('123', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:51:00', null, '3');
INSERT INTO `sp_log` VALUES ('124', '8E0D84', 'เปิดช่องที่ 2', '2018-12-22 14:51:16', null, '3');
INSERT INTO `sp_log` VALUES ('125', '8E0D84', 'เปิดช่องที่ 1', '2018-12-22 14:54:32', null, '3');
INSERT INTO `sp_log` VALUES ('126', '123456', 'เปิดช่องที่ 2', '2018-12-22 14:57:00', null, '3');

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
-- Records of sp_plug
-- ----------------------------
INSERT INTO `sp_plug` VALUES ('123', null, null, '2', '12345', '123456');
INSERT INTO `sp_plug` VALUES ('Pop A', null, null, '2', 'อืม', '8E0D84');
INSERT INTO `sp_plug` VALUES ('ปลั๊กกลางบ้าน', null, null, '2', 'ชั้นสอง', 'A4AE30');

-- ----------------------------
-- Table structure for sp_plug_type
-- ----------------------------
DROP TABLE IF EXISTS `sp_plug_type`;
CREATE TABLE `sp_plug_type` (
  `pt_id` int(5) NOT NULL AUTO_INCREMENT,
  `pt_name` text COLLATE utf8mb4_unicode_ci,
  `pt_port_count` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pt_status_mqtt` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`pt_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sp_plug_type
-- ----------------------------
INSERT INTO `sp_plug_type` VALUES ('1', 'สามตา 4 ช่อง', '4', '[0,0,0,0]');
INSERT INTO `sp_plug_type` VALUES ('2', 'สมาตา 3 ช่อง', '3', '[0,0,0]');

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
  `u_type` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of sp_user
-- ----------------------------
INSERT INTO `sp_user` VALUES ('1', 'ชาญวิทย์ บุญปลื้ม', '0852114119', '01', '01', 'สมาชิก');
INSERT INTO `sp_user` VALUES ('2', 'พ่อบ้าน ใจกล้า', '0741852963', '02', '02', 'สมาชิก');
INSERT INTO `sp_user` VALUES ('3', 'ป๊อบ', '0830595756', 'popkung', '123456', 'สมาชิก');
