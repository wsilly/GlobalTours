/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 80012
Source Host           : localhost:3306
Source Database       : travel_db

Target Server Type    : MYSQL
Target Server Version : 80012
File Encoding         : 65001

Date: 2018-11-20 22:46:22
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for administrator_table
-- ----------------------------
DROP TABLE IF EXISTS `administrator_table`;
CREATE TABLE `administrator_table` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_pwd` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_role` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_time` datetime DEFAULT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of administrator_table
-- ----------------------------

-- ----------------------------
-- Table structure for cooperative_merchant
-- ----------------------------
DROP TABLE IF EXISTS `cooperative_merchant`;
CREATE TABLE `cooperative_merchant` (
  `cooperative_id` int(11) NOT NULL AUTO_INCREMENT,
  `cooperative_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cooperative_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cooperative_tel` varchar(12) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cooperative_state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cooperative_address` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`cooperative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cooperative_merchant
-- ----------------------------

-- ----------------------------
-- Table structure for customer_order_list
-- ----------------------------
DROP TABLE IF EXISTS `customer_order_list`;
CREATE TABLE `customer_order_list` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `tourist_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `Custom_type` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_beg_time` datetime DEFAULT NULL,
  `customer_end_time` datetime DEFAULT NULL,
  `setout_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `setout_time` datetime DEFAULT NULL,
  `play_days` int(3) DEFAULT NULL,
  `play_days_type` int(1) DEFAULT NULL,
  `play_peoples` int(5) DEFAULT NULL,
  `play_children` int(5) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `custom_theme` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`customer_id`),
  KEY `FK_Reference_11` (`user_id`),
  KEY `FK_Reference_12` (`tourist_id`),
  CONSTRAINT `FK_Reference_11` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  CONSTRAINT `FK_Reference_12` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_destination` (`tourist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of customer_order_list
-- ----------------------------

-- ----------------------------
-- Table structure for cus_sun_table 商家字表
-- ----------------------------
DROP TABLE IF EXISTS `cus_sun_table`;
CREATE TABLE `cus_sun_table` (
  `cus_sun_id` int(11) NOT NULL AUTO_INCREMENT,
  `cooperative_id` int(11) DEFAULT NULL,
  `cus_sun_pro` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_sun_price` float DEFAULT NULL,
  `cus_sun_title` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cus_sun_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`cus_sun_id`),
  KEY `FK_Reference_8` (`cooperative_id`),
  CONSTRAINT `FK_Reference_8` FOREIGN KEY (`cooperative_id`) REFERENCES `cooperative_merchant` (`cooperative_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of cus_sun_table
-- ----------------------------

-- ----------------------------
-- Table structure for guide_table
-- ----------------------------
DROP TABLE IF EXISTS `guide_table`;
CREATE TABLE `guide_table` (
  `guide_id` int(11) NOT NULL AUTO_INCREMENT,
  `guide_name` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guide_sex` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guide_price` float DEFAULT NULL,
  `guide_age` int(3) DEFAULT NULL,
  `guide_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guide_tel` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guide_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `guide_state` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`guide_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of guide_table
-- ----------------------------

-- ----------------------------
-- Table structure for rotation_chart
-- ----------------------------
DROP TABLE IF EXISTS `rotation_chart`;
CREATE TABLE `rotation_chart` (
  `rotation_id` int(11) NOT NULL AUTO_INCREMENT,
  `rotation_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotation_type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rotation_beg_time` datetime DEFAULT NULL,
  `rotation_end_time` datetime DEFAULT NULL,
  `rotation_sequence` int(5) DEFAULT NULL,
  PRIMARY KEY (`rotation_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of rotation_chart
-- ----------------------------

-- ----------------------------
-- Table structure for scenic_spot_pic
-- ----------------------------
DROP TABLE IF EXISTS `scenic_spot_pic`;
CREATE TABLE `scenic_spot_pic` (
  `sspic_id` int(11) NOT NULL AUTO_INCREMENT,
  `tourist_id` int(11) DEFAULT NULL,
  `pic_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sspic_id`),
  KEY `FK_Reference_17` (`tourist_id`),
  CONSTRAINT `FK_Reference_17` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_destination` (`tourist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of scenic_spot_pic
-- ----------------------------

-- ----------------------------
-- Table structure for scheduling
-- ----------------------------
DROP TABLE IF EXISTS `scheduling`;
CREATE TABLE `scheduling` (
  `sched_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  `guide_id` int(11) DEFAULT NULL,
  `sched_beg_time` datetime DEFAULT NULL,
  `sched_end_time` datetime DEFAULT NULL,
  `sched_price` float DEFAULT NULL,
  `sched_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`sched_id`),
  KEY `FK_Reference_13` (`guide_id`),
  KEY `FK_Reference_14` (`tourist_id`),
  KEY `FK_Reference_15` (`user_id`),
  CONSTRAINT `FK_Reference_13` FOREIGN KEY (`guide_id`) REFERENCES `guide_table` (`guide_id`),
  CONSTRAINT `FK_Reference_14` FOREIGN KEY (`tourist_id`) REFERENCES `tourist_destination` (`tourist_id`),
  CONSTRAINT `FK_Reference_15` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of scheduling
-- ----------------------------

-- ----------------------------
-- Table structure for tourism_strategy
-- ----------------------------
DROP TABLE IF EXISTS `tourism_strategy`;
CREATE TABLE `tourism_strategy` (
  `tourism_id` int(11) NOT NULL AUTO_INCREMENT,
  `tourism_type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourism_pic` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourism_back` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourism_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tourism_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tourism_strategy
-- ----------------------------

-- ----------------------------
-- Table structure for tourist_destination
-- ----------------------------
DROP TABLE IF EXISTS `tourist_destination`;
CREATE TABLE `tourist_destination` (
  `tourist_id` int(11) NOT NULL AUTO_INCREMENT,
  `tourist_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_palce` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_price` float DEFAULT NULL,
  `tourist_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`tourist_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tourist_destination
-- ----------------------------

-- ----------------------------
-- Table structure for tourist_route
-- ----------------------------
DROP TABLE IF EXISTS `tourist_route`;
CREATE TABLE `tourist_route` (
  `route_id` int(11) NOT NULL AUTO_INCREMENT,
  `tourist_name` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_mode` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_travel` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tourist_prople` int(5) DEFAULT NULL,
  `tourist_time` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tourist_route
-- ----------------------------

-- ----------------------------
-- Table structure for tourist_scenic_table
-- ----------------------------
DROP TABLE IF EXISTS `tourist_scenic_table`;
CREATE TABLE `tourist_scenic_table` (
  `scenic_id` int(11) NOT NULL AUTO_INCREMENT,
  `route_id` int(11) DEFAULT NULL,
  `tourist_id` int(11) DEFAULT NULL,
  `tou_tourist_id` int(11) DEFAULT NULL,
  `cooperative_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`scenic_id`),
  KEY `FK_Reference_5` (`route_id`),
  KEY `FK_Reference_6` (`tou_tourist_id`),
  KEY `FK_Reference_7` (`cooperative_id`),
  KEY `FK_Reference_9` (`tourist_id`),
  CONSTRAINT `FK_Reference_5` FOREIGN KEY (`route_id`) REFERENCES `tourist_route` (`route_id`),
  CONSTRAINT `FK_Reference_6` FOREIGN KEY (`tou_tourist_id`) REFERENCES `tourist_destination` (`tourist_id`),
  CONSTRAINT `FK_Reference_7` FOREIGN KEY (`cooperative_id`) REFERENCES `cooperative_merchant` (`cooperative_id`),
  CONSTRAINT `FK_Reference_9` FOREIGN KEY (`tourist_id`) REFERENCES `customer_order_list` (`customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of tourist_scenic_table
-- ----------------------------

-- ----------------------------
-- Table structure for travel_record
-- ----------------------------
DROP TABLE IF EXISTS `travel_record`;
CREATE TABLE `travel_record` (
  `travel_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `Info_id` int(11) DEFAULT NULL,
  `route_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`travel_id`),
  KEY `FK_Reference_2` (`user_id`),
  KEY `FK_Reference_3` (`Info_id`),
  KEY `FK_Reference_4` (`route_id`),
  CONSTRAINT `FK_Reference_10` FOREIGN KEY (`user_id`) REFERENCES `customer_order_list` (`customer_id`),
  CONSTRAINT `FK_Reference_2` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`),
  CONSTRAINT `FK_Reference_3` FOREIGN KEY (`Info_id`) REFERENCES `user_information` (`info_id`),
  CONSTRAINT `FK_Reference_4` FOREIGN KEY (`route_id`) REFERENCES `tourist_route` (`route_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of travel_record
-- ----------------------------

-- ----------------------------
-- Table structure for user_evaluation
-- ----------------------------
DROP TABLE IF EXISTS `user_evaluation`;
CREATE TABLE `user_evaluation` (
  `evaluation_id` int(11) NOT NULL AUTO_INCREMENT,
  `sched_id` int(11) DEFAULT NULL,
  `evaluation_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluation_type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `evaluation_time` datetime DEFAULT NULL,
  PRIMARY KEY (`evaluation_id`),
  KEY `FK_Reference_16` (`sched_id`),
  CONSTRAINT `FK_Reference_16` FOREIGN KEY (`sched_id`) REFERENCES `scheduling` (`sched_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_evaluation
-- ----------------------------

-- ----------------------------
-- Table structure for user_information
-- ----------------------------
DROP TABLE IF EXISTS `user_information`;
CREATE TABLE `user_information` (
  `Info_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `Info_type` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info_status` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Info_display` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`Info_id`),
  KEY `FK_Reference_1` (`user_id`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_id`) REFERENCES `user_table` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_information
-- ----------------------------

-- ----------------------------
-- Table structure for user_table
-- ----------------------------
DROP TABLE IF EXISTS `user_table`;
CREATE TABLE `user_table` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_email` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_password` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_telphone` varchar(11) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_photo` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_qq_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_status` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_remark` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_createTime` timestamp NULL DEFAULT NULL,
  `User_sex` char(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `User_happy` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of user_table
-- ----------------------------
