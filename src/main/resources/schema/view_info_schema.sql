/*
Navicat MySQL Data Transfer

Source Server         : localhost_MySQL
Source Server Version : 50625
Source Host           : localhost:3306
Source Database       : tourpal

Target Server Type    : MYSQL
Target Server Version : 50625
File Encoding         : 65001

Date: 2016-11-29 17:53:11
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for view_info
-- ----------------------------
DROP TABLE IF EXISTS `view_info`;
CREATE TABLE `view_info` (
  `view_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_number` varchar(50) DEFAULT NULL,
  `view_name` varchar(200) DEFAULT NULL,
  `view_time` datetime DEFAULT NULL,
  `view_photo` varchar(200) DEFAULT NULL,
  `view_desc` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`view_id`),
  KEY `FK_Reference_1` (`user_number`),
  CONSTRAINT `FK_Reference_1` FOREIGN KEY (`user_number`) REFERENCES `user_info` (`user_number`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;