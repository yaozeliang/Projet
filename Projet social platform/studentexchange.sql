/*
Navicat MySQL Data Transfer

Source Server         : localDB
Source Server Version : 50617
Source Host           : localhost:3306
Source Database       : studentexchange

Target Server Type    : MYSQL
Target Server Version : 50617
File Encoding         : 65001

Date: 2017-02-18 19:32:12
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `tb_admin`
-- ----------------------------
DROP TABLE IF EXISTS `tb_admin`;
CREATE TABLE `tb_admin` (
  `baseid` bigint(20) NOT NULL COMMENT '序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `username` varchar(50) DEFAULT NULL COMMENT '账号',
  `password` varchar(50) DEFAULT NULL COMMENT '密码',
  PRIMARY KEY (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='管理员';

-- ----------------------------
-- Records of tb_admin
-- ----------------------------
INSERT INTO `tb_admin` VALUES ('1', '2017-02-17 16:16:15', null, 'admin', '21232F297A57A5A743894A0E4A801FC3');

-- ----------------------------
-- Table structure for `tb_event`
-- ----------------------------
DROP TABLE IF EXISTS `tb_event`;
CREATE TABLE `tb_event` (
  `baseid` bigint(20) NOT NULL COMMENT '序列',
  `tb__baseid` bigint(20) DEFAULT NULL COMMENT '用户表_序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `name` varchar(50) DEFAULT NULL COMMENT '活动名称',
  `type` varchar(100) DEFAULT NULL COMMENT '活动类型',
  `holddate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' COMMENT '举办时间',
  `address` varchar(200) DEFAULT NULL COMMENT '地点',
  `num` int(11) DEFAULT NULL COMMENT '人数',
  `fee` float DEFAULT NULL COMMENT '费用',
  PRIMARY KEY (`baseid`),
  KEY `FK_Relationship_1` (`tb__baseid`),
  CONSTRAINT `FK_Relationship_1` FOREIGN KEY (`tb__baseid`) REFERENCES `tb_user` (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动';

-- ----------------------------
-- Records of tb_event
-- ----------------------------
INSERT INTO `tb_event` VALUES ('1', null, '2017-02-18 10:46:16', null, '1', '2', '2017-02-18 10:46:14', '3', '4', '5');

-- ----------------------------
-- Table structure for `tb_eventlog`
-- ----------------------------
DROP TABLE IF EXISTS `tb_eventlog`;
CREATE TABLE `tb_eventlog` (
  `tb__baseid2` bigint(20) NOT NULL COMMENT '基础表_序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `baseid` bigint(20) DEFAULT NULL COMMENT '序列',
  `tb__baseid` bigint(20) DEFAULT NULL COMMENT '用户表_序列',
  PRIMARY KEY (`tb__baseid2`),
  KEY `FK_Relationship_2` (`baseid`),
  KEY `FK_Relationship_3` (`tb__baseid`),
  CONSTRAINT `FK_Relationship_3` FOREIGN KEY (`tb__baseid`) REFERENCES `tb_user` (`baseid`),
  CONSTRAINT `FK_Relationship_2` FOREIGN KEY (`baseid`) REFERENCES `tb_event` (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='活动参加记录';

-- ----------------------------
-- Records of tb_eventlog
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_secondhand`
-- ----------------------------
DROP TABLE IF EXISTS `tb_secondhand`;
CREATE TABLE `tb_secondhand` (
  `baseid` bigint(20) NOT NULL COMMENT '序列',
  `tb__baseid` bigint(20) DEFAULT NULL COMMENT '用户表_序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `price` float DEFAULT NULL COMMENT '价格',
  `content` varchar(500) DEFAULT NULL COMMENT '描述',
  `name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`baseid`),
  KEY `FK_Relationship_4` (`tb__baseid`),
  CONSTRAINT `FK_Relationship_4` FOREIGN KEY (`tb__baseid`) REFERENCES `tb_user` (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二手商品';

-- ----------------------------
-- Records of tb_secondhand
-- ----------------------------
INSERT INTO `tb_secondhand` VALUES ('1', null, '2017-02-18 10:45:22', '1', '1', '1', '1');

-- ----------------------------
-- Table structure for `tb_secondhandlog`
-- ----------------------------
DROP TABLE IF EXISTS `tb_secondhandlog`;
CREATE TABLE `tb_secondhandlog` (
  `baseid` bigint(20) NOT NULL COMMENT '序列',
  `tb__baseid` bigint(20) DEFAULT NULL COMMENT '二手商_序列',
  `tb__baseid2` bigint(20) DEFAULT NULL COMMENT '用户表_序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`baseid`),
  KEY `FK_Relationship_5` (`tb__baseid`),
  KEY `FK_Relationship_6` (`tb__baseid2`),
  CONSTRAINT `FK_Relationship_6` FOREIGN KEY (`tb__baseid2`) REFERENCES `tb_user` (`baseid`),
  CONSTRAINT `FK_Relationship_5` FOREIGN KEY (`tb__baseid`) REFERENCES `tb_secondhand` (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='二手交易信息';

-- ----------------------------
-- Records of tb_secondhandlog
-- ----------------------------

-- ----------------------------
-- Table structure for `tb_user`
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user` (
  `baseid` bigint(20) NOT NULL COMMENT '序列',
  `createdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '时间',
  `state` varchar(20) DEFAULT NULL COMMENT '状态',
  `name` varchar(50) DEFAULT NULL COMMENT '姓名',
  `age` int(11) DEFAULT NULL COMMENT '年龄',
  `address` varchar(200) DEFAULT NULL COMMENT '地址',
  `phone` varchar(50) DEFAULT NULL COMMENT '电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`baseid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES ('1', '2017-02-17 19:50:11', '1', '2', '3', '4', '5', '6', '7', '8');
