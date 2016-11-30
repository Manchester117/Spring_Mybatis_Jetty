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

INSERT INTO `view_info` VALUES (3, 'admin1', '某景区1', '2016-11-29 15:22:18', 'dfc4a6bd-353e-4386-859e-0e7ab3ff98bb1abc.jpg', '某景区1某景区1某景区1某景区1');
INSERT INTO `view_info` VALUES (4, 'admin1', '某景区2', '2016-11-29 15:22:28', '01e17773-b1c2-40a5-9982-7a5bc668a9736abc.jpg', '某景区2某景区2某景区2某景区2');
INSERT INTO `view_info` VALUES (5, 'admin1', '某景区3', '2016-11-29 15:22:48', 'e41fdf39-fcb0-4921-8a24-eef2bddec4267abc.jpg', '某景区3某景区3某景区3某景区3');
INSERT INTO `view_info` VALUES (6, 'admin1', '某景区4', '2016-11-29 15:23:01', 'd405827e-0eb7-4baa-be90-10bc7de029aa4abc.jpg', '某景区4某景区4某景区4某景区4');
