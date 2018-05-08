/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50140
Source Host           : localhost:3306
Source Database       : my_db

Target Server Type    : MYSQL
Target Server Version : 50140
File Encoding         : 65001

Date: 2016-03-19 10:54:58
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for t_admins
-- ----------------------------
DROP TABLE IF EXISTS `t_admins`;
CREATE TABLE `t_admins` (
  `id` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_admins
-- ----------------------------
INSERT INTO `t_admins` VALUES ('admin', 'admin');

-- ----------------------------
-- Table structure for t_autos
-- ----------------------------
DROP TABLE IF EXISTS `t_autos`;
CREATE TABLE `t_autos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianHao` varchar(40) NOT NULL,
  `km` int(11) NOT NULL,
  `price` float NOT NULL,
  `storeNum` int(11) NOT NULL,
  `xingHao` varchar(40) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_autos
-- ----------------------------
INSERT INTO `t_autos` VALUES ('1', '1111111111111', '20000', '100000', '3', 'Renaut');
INSERT INTO `t_autos` VALUES ('2', '334236711223', '5000', '7850', '2', 'Ferrai');
INSERT INTO `t_autos` VALUES ('3', '9872372989', '4000', '3000', '1', 'Ford');
INSERT INTO `t_autos` VALUES ('4', '74821974274', '7900', '20000', '4', 'Landrower');

-- ----------------------------
-- Table structure for t_motos
-- ----------------------------
DROP TABLE IF EXISTS `t_motos`;
CREATE TABLE `t_motos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianHao` varchar(40) NOT NULL,
  `km` int(11) NOT NULL,
  `price` float NOT NULL,
  `storeNum` int(11) NOT NULL,
  `horsepower` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_motos
-- ----------------------------
INSERT INTO `t_motos` VALUES ('1', '10001', '6000', '500', '3', '250');
INSERT INTO `t_motos` VALUES ('2', '10002', '590', '600', '3', '150');
INSERT INTO `t_motos` VALUES ('3', '10003', '1000', '430', '4', '300');

-- ----------------------------
-- Table structure for t_orders
-- ----------------------------
DROP TABLE IF EXISTS `t_orders`;
CREATE TABLE `t_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bianHao` varchar(40) NOT NULL,
  `xingHao` varchar(40) NOT NULL,
  `km` int(11) NOT NULL,
  `price` float NOT NULL,
  `startTime` varchar(40) NOT NULL,
  `endTime` varchar(40) NOT NULL,
  `renterName` varchar(40) NOT NULL,
  `hourseNunber` int(11) NOT NULL,
  `type` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_orders
-- ----------------------------
INSERT INTO `t_orders` VALUES ('1', '74821974274', 'Landrower', '7900', '20000', '2016/03/11', '2016/03/24', 'yaozeliang', '0', '0');
INSERT INTO `t_orders` VALUES ('2', '10003', '', '1000', '430', '2016/03/09', '2016/03/16', 'yaozeliang', '300', '1');

-- ----------------------------
-- Table structure for t_renters
-- ----------------------------
DROP TABLE IF EXISTS `t_renters`;
CREATE TABLE `t_renters` (
  `id` varchar(40) NOT NULL,
  `password` varchar(40) NOT NULL,
  `familyName` varchar(40) NOT NULL,
  `lastName` varchar(40) NOT NULL,
  `houseNum` varchar(40) NOT NULL,
  `street` varchar(40) NOT NULL,
  `postcode` varchar(40) NOT NULL,
  `city` varchar(40) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_renters
-- ----------------------------
INSERT INTO `t_renters` VALUES ('liangjiayu', '1', 'liang', 'jiayu', '66', 'berlioz', '94400', 'Lyon');
INSERT INTO `t_renters` VALUES ('yaozeliang', '1', 'yao', 'zeliang', '13', 'Lalo', '94400', 'Paris');
