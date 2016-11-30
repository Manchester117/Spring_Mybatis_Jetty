/*
Navicat MySQL Data Transfer

Source Server         : localhost_MySQL
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : tourpal

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-11-29 17:52:57
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for user_info
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `user_number` varchar(50) NOT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `user_pw` varchar(50) DEFAULT NULL,
  `user_type` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`user_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

INSERT INTO `user_info` VALUES ('admin1', '管理员1', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin2', '管理员2', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin3', '管理员3', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin4', '管理员4', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin5', '管理员5', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin6', '管理员6', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin7', '管理员7', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin8', '管理员8', '123456', '管理员');
INSERT INTO `user_info` VALUES ('admin9', '管理员9', '123456', '管理员');