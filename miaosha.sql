/*
Navicat MySQL Data Transfer

Source Server         : DeepLean
Source Server Version : 50721
Source Host           : 192.168.133.128:3306
Source Database       : miaosha

Target Server Type    : MYSQL
Target Server Version : 50721
File Encoding         : 65001

Date: 2018-05-06 23:31:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for demo_user
-- ----------------------------
DROP TABLE IF EXISTS `demo_user`;
CREATE TABLE `demo_user` (
  `id` int(10) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of demo_user
-- ----------------------------
INSERT INTO `demo_user` VALUES ('1', 'wuguoquan');

-- ----------------------------
-- Table structure for general_goods
-- ----------------------------
DROP TABLE IF EXISTS `general_goods`;
CREATE TABLE `general_goods` (
  `id` bigint(20) NOT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_title` varchar(255) DEFAULT NULL,
  `goods_img` varchar(255) DEFAULT NULL,
  `goods_detail` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_stock` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of general_goods
-- ----------------------------
INSERT INTO `general_goods` VALUES ('1', 'iphoneX', 'Apple iPhone', '/img/iphonex.png', 'Apple iPhone', '10000.00', '10');
INSERT INTO `general_goods` VALUES ('2', '华为Mate10', 'Huawei Mate', '/img/mate10.png', 'Huawei Mate', '5000.00', '10');

-- ----------------------------
-- Table structure for general_order
-- ----------------------------
DROP TABLE IF EXISTS `general_order`;
CREATE TABLE `general_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `delivery_addr_id` bigint(20) DEFAULT NULL,
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_count` int(10) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `order_channel` tinyint(4) DEFAULT NULL,
  `status` tinyint(4) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `pay_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of general_order
-- ----------------------------

-- ----------------------------
-- Table structure for miaosha_goods
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_goods`;
CREATE TABLE `miaosha_goods` (
  `id` bigint(20) NOT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  `miaosha_price` decimal(10,2) DEFAULT NULL,
  `stock_count` int(10) DEFAULT NULL,
  `start_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `end_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_goods
-- ----------------------------
INSERT INTO `miaosha_goods` VALUES ('1', '1', '5000.00', '4', '2018-05-06 05:16:16', '2018-05-06 05:16:16');
INSERT INTO `miaosha_goods` VALUES ('2', '2', '3000.00', '5', '2018-05-06 17:32:56', '2018-05-06 17:32:58');

-- ----------------------------
-- Table structure for miaosha_order
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_order`;
CREATE TABLE `miaosha_order` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `order_id` bigint(20) DEFAULT NULL,
  `goods_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_order
-- ----------------------------

-- ----------------------------
-- Table structure for miaosha_user
-- ----------------------------
DROP TABLE IF EXISTS `miaosha_user`;
CREATE TABLE `miaosha_user` (
  `id` bigint(20) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `password` varchar(32) NOT NULL,
  `salt` varchar(10) NOT NULL,
  `head` varchar(255) DEFAULT NULL,
  `register_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `last_login_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `login_count` int(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of miaosha_user
-- ----------------------------
INSERT INTO `miaosha_user` VALUES ('13510573720', 'wuguoquan', 'b7797cce01b4b131b433b6acf4add449', '1a2b3c4d', null, '2018-04-06 20:26:07', '2018-04-07 11:26:02', '1');
