/*
Navicat MySQL Data Transfer

Source Server         : 192.168.110.10
Source Server Version : 50158
Source Host           : 192.168.110.10:3306
Source Database       : ERP

Target Server Type    : MYSQL
Target Server Version : 50158
File Encoding         : 65001

Date: 2013-08-21 11:18:56
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `AREA`
-- ----------------------------
DROP TABLE IF EXISTS `AREA`;
CREATE TABLE `AREA` (
  `AREA_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '区域编码',
  `NAME` varchar(200) NOT NULL COMMENT '区域名称',
  `CREATED` date NOT NULL COMMENT '创建时间',
  `LASTMOD` date DEFAULT NULL COMMENT '最后修改时间',
  `STATUS` char(1) NOT NULL DEFAULT 'A' COMMENT '状态',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `PID` int(11) DEFAULT NULL COMMENT '父项区域编码',
  PRIMARY KEY (`AREA_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='区域资料';

-- ----------------------------
-- Records of AREA
-- ----------------------------

-- ----------------------------
-- Table structure for `ATTACHMENT`
-- ----------------------------
DROP TABLE IF EXISTS `ATTACHMENT`;
CREATE TABLE `ATTACHMENT` (
  `ATTACHMENT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '附件编码',
  `CREATED` date DEFAULT NULL COMMENT '创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '最后修改时间',
  `STATUS` char(1) DEFAULT 'A' COMMENT '状态',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `NAME` varchar(200) DEFAULT NULL COMMENT '附件名称',
  `PATH` varchar(500) DEFAULT NULL COMMENT '路径',
  `SYSNAME` varchar(500) DEFAULT NULL COMMENT '系统修改后的文件名',
  `TYPE` int(2) DEFAULT NULL COMMENT '附件类型',
  PRIMARY KEY (`ATTACHMENT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='附件资料';

-- ----------------------------
-- Records of ATTACHMENT
-- ----------------------------

-- ----------------------------
-- Table structure for `BRAND`
-- ----------------------------
DROP TABLE IF EXISTS `BRAND`;
CREATE TABLE `BRAND` (
  `BRAND_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '品牌编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `CREATED` date DEFAULT NULL COMMENT '创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '最后修改时间',
  `STATUS` char(1) DEFAULT 'A' COMMENT '状态',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`BRAND_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='品牌资料';

-- ----------------------------
-- Records of BRAND
-- ----------------------------
INSERT INTO `BRAND` VALUES ('1', '类别', '2013-06-27', '2013-06-27', 'A', '1', '1');
INSERT INTO `BRAND` VALUES ('2', '123123', '2013-06-27', '2013-06-27', 'A', '1', '1');

-- ----------------------------
-- Table structure for `BUG`
-- ----------------------------
DROP TABLE IF EXISTS `BUG`;
CREATE TABLE `BUG` (
  `BUG_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT 'bugID',
  `STATUS` char(1) DEFAULT NULL,
  `ATTACHMENT_URL` varchar(300) DEFAULT NULL,
  `BUG_NAME` varchar(300) DEFAULT NULL COMMENT 'bug名称',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '描述',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`BUG_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='bug表';

-- ----------------------------
-- Records of BUG
-- ----------------------------
INSERT INTO `BUG` VALUES ('7', 'A', '123123', '123123123', '<img alt=\"asdfsadf\" src=\"/erp/attached/2013/06/22/a37176fdce2b4f45b8be294981baff5e.png\" />', '2013-06-22 21:51:06', null, '1', '1');
INSERT INTO `BUG` VALUES ('8', 'A', '123123213', '123', '<a href=\"/erp/attached/2013/06/22/a54b6ce534cd4664aa0bb005da778d4a.zip\">点击打开链接</a>', '2013-06-22 21:56:56', '2013-06-22 21:56:56', '1', '1');
INSERT INTO `BUG` VALUES ('9', 'A', '2312312', '123', '12312312<a href=\"/erp/attached/2013/06/22/439f299680164588b7015a89ba3c0535.zip\">点击打开链接</a>', '2013-06-22 22:04:27', '2013-06-22 22:04:27', '1', '1');
INSERT INTO `BUG` VALUES ('10', 'A', '123123123', '123123123123', '<a href=\"/erp/attached/2013/06/22/eb34f1782a3c4c9c986f8b4675dde299.zip\">压缩文件</a>', '2013-06-22 22:09:30', null, '1', '1');
INSERT INTO `BUG` VALUES ('11', 'I', '123123123', '123', '<a href=\"/erp/attached/2013/06/22/55ae525c62534253a0f6a7842a737e52.zip\">点击打开链接</a>', '2013-06-22 22:13:12', '2013-06-22 22:42:58', '1', '1');
INSERT INTO `BUG` VALUES ('12', 'I', '312312312', '12312', '12312312312312<img alt=\"123213123\" src=\"/erp/attached/2013/06/22/e33f8437e8a34065bbe5d4b6f3e04407.png\" />123123123123', '2013-06-22 22:14:34', '2013-06-22 22:41:49', '1', '1');
INSERT INTO `BUG` VALUES ('13', 'I', '123123123', '123', '<div style=\"TEXT-ALIGN: left\"><a href=\"/erp/attached/2013/06/22/aee25c0d0a384146b19d5101f1d81808.zip\"><img alt=\"nq.jpg\" src=\"/erp2/attached/2013/07/05/c103ad4622494fe6853af2e96168030a.jpg\" />点击打开链接</a></div>', '2013-06-22 22:52:56', '2013-07-05 13:53:47', '1', '1');
INSERT INTO `BUG` VALUES ('14', 'I', '123123', '123', '<a href=\"/erp/attached/2013/06/22/cabeaf7d7cd041289b0c1994e826047b.xls\">点击打开链接</a>', '2013-06-22 22:53:42', '2013-08-05 10:09:59', '1', '1');
INSERT INTO `BUG` VALUES ('15', 'I', '123123', '123', '<a href=\"/erp/attached/2013/06/23/4d587e42e0a1428995ab82ec387829d4.rar\">点击打开链接</a>', '2013-06-23 17:09:11', '2013-08-05 10:10:01', '1', '1');
INSERT INTO `BUG` VALUES ('16', 'I', '123', '123', '<a href=\"/erp/attached/2013/06/23/f709c76a984c4659b609a1edc871109a.zip\">点击打开链接</a>', '2013-06-23 18:46:32', '2013-08-05 10:10:02', '1', '1');
INSERT INTO `BUG` VALUES ('17', 'I', '123123', '123', '', '2013-06-23 18:57:43', '2013-06-23 18:58:16', '1', '1');
INSERT INTO `BUG` VALUES ('18', 'I', '123123', '123', '<a href=\"/erp/attached/2013/06/23/daedc61a50b047eaa82600d7907ae93b.zip\">点击打开链接</a>', '2013-06-23 18:59:15', '2013-08-05 10:10:04', '1', '1');
INSERT INTO `BUG` VALUES ('19', 'I', '123123', '123', '<a href=\"/erp/attached/2013/06/23/73ce2a647af1443caaf17534135f4b03.rar\">Json天气.rar</a>', '2013-06-23 19:42:25', '2013-08-05 10:10:05', '1', '1');
INSERT INTO `BUG` VALUES ('20', 'A', '123', '123', '<a href=\"/erp/attached/2013/06/23/c427030477cb4f26b8ebd7907763270b.rar\">Json天气.rar</a>', '2013-06-23 19:53:01', '2013-06-23 19:53:01', '1', '1');
INSERT INTO `BUG` VALUES ('21', 'A', '123123123', '123', '<a href=\"/erp/attached/2013/06/24/e605129cc01842c5bb4aa95e4254f515.rar\">Json天气.rar</a>', '2013-06-24 08:40:58', '2013-06-24 08:40:58', '1', '1');
INSERT INTO `BUG` VALUES ('22', 'A', 'test', 'test', 'tes', '2013-06-24 09:02:10', null, '1', '1');
INSERT INTO `BUG` VALUES ('23', 'I', '12312', '123', '<a href=\"/erp/attached/2013/06/24/0e7b2ea75eb741a8beeb709db9dee03a.zip\">srca12306.zip</a>3123123<a href=\"/erp/attached/2013/06/24/f6415de04f6e4c9eb0170742c14cb553.docx\">笔试参考题目3.docx</a>', '2013-06-24 09:06:01', '2013-08-05 10:09:56', '1', '1');
INSERT INTO `BUG` VALUES ('24', 'A', '123123', '123123', '<a href=\"/erp2/attached/2013/08/02/1e97ac03b99d402eabf344eb9f68186f.zip\">bootstrap-master.zip</a>', '2013-07-15 15:49:23', '2013-08-02 10:50:26', '1', '1');

-- ----------------------------
-- Table structure for `CITY`
-- ----------------------------
DROP TABLE IF EXISTS `CITY`;
CREATE TABLE `CITY` (
  `CITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PROVINCE_ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `CREATED` date NOT NULL,
  `LASTMOD` date DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'A',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`CITY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='城市资料';

-- ----------------------------
-- Records of CITY
-- ----------------------------
INSERT INTO `CITY` VALUES ('1', '1', '苏州', '2013-06-25', '2013-06-25', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('2', '1', '昆山', '2013-06-25', '2013-06-25', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('3', '2', '温州', '2013-06-25', '2013-06-25', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('4', '1', '123123123', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('5', '2', '绍兴', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('6', '2', '哈哈哈哈', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('7', '1', '123123123', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('8', '1', 'tets', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('9', '1', '222', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('10', '2', 'www', '2013-06-26', '2013-06-26', 'A', '1', '1');
INSERT INTO `CITY` VALUES ('11', '2', '1121', '2013-08-05', '2013-08-05', 'A', '1', '1');

-- ----------------------------
-- Table structure for `COMPANY_INFO`
-- ----------------------------
DROP TABLE IF EXISTS `COMPANY_INFO`;
CREATE TABLE `COMPANY_INFO` (
  `COMPANY_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '公司自动ID',
  `NAME` varchar(100) DEFAULT NULL COMMENT '公司名称',
  `TEL` varchar(50) DEFAULT NULL COMMENT '公司电话',
  `FAX` varchar(50) DEFAULT NULL COMMENT '公司传真',
  `ADDRESS` varchar(255) DEFAULT NULL COMMENT '公司地址',
  `ZIP` varchar(100) DEFAULT NULL COMMENT '邮政编码',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '公司邮件地址',
  `CONTACT` varchar(100) DEFAULT NULL COMMENT '公司联络人',
  `STATUS` char(1) NOT NULL COMMENT '状态',
  `CREATED` date NOT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `MANAGER` varchar(100) DEFAULT NULL COMMENT '公司负责人',
  `BANK` varchar(100) DEFAULT NULL COMMENT '开户行',
  `BANKACCOUNT` varchar(100) DEFAULT NULL COMMENT '银行账号',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`COMPANY_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COMMENT='公司资料表';

-- ----------------------------
-- Records of COMPANY_INFO
-- ----------------------------
INSERT INTO `COMPANY_INFO` VALUES ('1', 'ttttttt', 't', 'tttt', 't', null, 'tttt@qq.com', 't', 'I', '2013-05-09', '2013-06-09', null, null, null, 't', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('2', 'ghghghghghgh', '22', '22', '22', null, '3@2.con', '111', 'I', '2013-05-09', '2013-06-14', null, null, null, '1111', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('3', '11111111', '111', '2222', '111', null, 'root@qq.com', '111', 'I', '2013-05-09', '2013-06-22', null, null, null, 'sdfsdf', '2', '1');
INSERT INTO `COMPANY_INFO` VALUES ('4', 'aaaa', 'sdf', 'sdf', 'sdf', 'sdf', 'admin@qq.com', '123', 'I', '2013-05-09', '2013-06-18', null, null, null, '123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('5', '123', '123', '123', '123', null, '123', '123', 'I', '2013-06-09', '2013-06-18', null, null, null, '123123123123123123123123', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('6', 'ggggg', '123', '123123', '1231123', null, '123', '123', 'I', '2013-06-09', '2013-06-18', null, null, null, '12312', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('7', '123oooooo', '123', '123', '123', null, '123', '123123', 'I', '2013-06-09', '2013-06-14', null, null, null, '23423423423423', null, null);
INSERT INTO `COMPANY_INFO` VALUES ('8', '斤斤计较', '123', '123', '123', null, '123', '123', 'I', '2013-06-09', '2013-06-14', null, null, null, '123123123', null, null);
INSERT INTO `COMPANY_INFO` VALUES ('9', '123', '123', '123', '123', null, '3123123', '123', 'I', '2013-06-09', '2013-06-14', null, null, null, '123123123', null, null);
INSERT INTO `COMPANY_INFO` VALUES ('10', '我的公司', '我的公司', '111111', '我的公司', null, '我的公司', '我的公司', 'I', '2013-06-09', '2013-06-14', null, null, null, 'ttttttttt', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('11', '123', '12312', '3123123', '12313', null, '1231', '2312', 'I', '2013-06-09', '2013-06-14', null, null, null, '312312312', null, null);
INSERT INTO `COMPANY_INFO` VALUES ('12', '哈哈哈哈', '12312123', '123', '123', null, '123', '123123123', 'I', '2013-06-09', '2013-06-14', null, null, null, '123123123', null, null);
INSERT INTO `COMPANY_INFO` VALUES ('13', 'kkk11', 'kkk', 'kk11', 'kk123123', null, 'kkk11', 'kkk123123', 'I', '2013-06-09', '2013-06-14', null, null, null, 'kkkk111111', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('14', 'vvvvv22222', '123', '123', '123', null, '13', '123', 'I', '2013-06-13', '2013-06-14', null, null, null, '13123123123', null, '1');
INSERT INTO `COMPANY_INFO` VALUES ('15', 'rrrrrrrr', '3123123', '1231231', '12312', null, '123@qq.com3', '3123', 'I', '2013-06-13', '2013-06-14', null, null, null, '123123123123 sdfdsfsdfsdfsdfsdf', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('16', '123', '123', '123', '123', null, '123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '13231221313231231212312312', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('17', '12312', '3123', '123', '12312', null, '3123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '12312312312312312312312312312312312312312312', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('18', '12312', '3123', '12312', '3123', null, '12312', '31231', 'I', '2013-06-18', '2013-06-18', null, null, null, '23123121312312324234234', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('19', '123', '12312', '312', '3123', null, '123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '12312312312', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('20', '123', '12312', '312', '312', null, '312', '312', 'I', '2013-06-18', '2013-06-18', null, null, null, '312312312312312312312312', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('21', '12', '3123', '123', '1321313', null, '11321', '32', 'I', '2013-06-18', '2013-06-18', null, null, null, '2312332', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('22', '123', '123', '123', '123', null, '123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '123123123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('23', '123', '31232', '123', '13132', null, '123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '123132', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('24', '123', '123', '123', '1231', null, '23', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('25', '123', '123', '123', '123', null, '123', '123', 'I', '2013-06-18', '2013-06-18', null, null, null, '123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('26', '123', '123', '123', '123123', null, '1231231', '23123', 'I', '2013-06-18', '2013-06-18', null, null, null, '23123123123123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('27', '123', '1231', '23', '1231', null, '123', '123', 'I', '2013-06-18', '2013-06-19', null, null, null, '12312312322222', '1', '2');
INSERT INTO `COMPANY_INFO` VALUES ('28', '12312', '3123', '123', '1231', null, '231', '2312', 'I', '2013-06-19', '2013-06-19', null, null, null, '312312312323423423', '2', '1');
INSERT INTO `COMPANY_INFO` VALUES ('29', '123', '123', '123', '123', null, '132', '123', 'I', '2013-06-19', '2013-06-19', null, null, null, '132123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('30', '123', '123', '123', '123', null, '123', '123', 'I', '2013-06-22', '2013-07-08', null, null, null, '123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('31', '123123', '123', '123', '123', '123', '123123@qq.com', '123', 'I', '2013-06-26', '2013-07-08', null, null, null, '123123', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('32', '12312', '3123123', '12312', '1231', null, '23123', '12312', 'I', '2013-07-08', '2013-07-09', null, null, null, '231231233', '1', '1');
INSERT INTO `COMPANY_INFO` VALUES ('33', '123123', '123', '123', '123', null, '123', '123', 'A', '2013-08-05', '2013-08-05', null, null, null, '123213', '1', '1');

-- ----------------------------
-- Table structure for `CURRENCY`
-- ----------------------------
DROP TABLE IF EXISTS `CURRENCY`;
CREATE TABLE `CURRENCY` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(55) NOT NULL,
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `SIGN` varchar(55) DEFAULT NULL,
  `CODE` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CURRENCY
-- ----------------------------
INSERT INTO `CURRENCY` VALUES ('1', '人民币', '2013-06-25', '2013-06-25', '1', '1', '1', '1');
INSERT INTO `CURRENCY` VALUES ('2', '美元', '2013-06-25', '2013-06-25', '1', '1', '1', '$');

-- ----------------------------
-- Table structure for `CUSTOMER`
-- ----------------------------
DROP TABLE IF EXISTS `CUSTOMER`;
CREATE TABLE `CUSTOMER` (
  `CUSTOMER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `NAME` varchar(200) NOT NULL,
  `MYID` varchar(55) DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'A' COMMENT 'A:正常,I:删除',
  `CREATED` date NOT NULL,
  `LASTMOD` date DEFAULT NULL,
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFIYER` int(10) DEFAULT NULL COMMENT '修改人',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '客户类型',
  `TEL` varchar(55) DEFAULT NULL,
  `FAX` varchar(55) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL,
  `EMAIL` varchar(200) DEFAULT NULL,
  `AREA_ID` int(11) DEFAULT NULL COMMENT '区域编码',
  `AREA_NAME` varchar(100) DEFAULT NULL COMMENT '区域名称',
  `PROVINCE_ID` int(11) DEFAULT NULL COMMENT '省份编码',
  `PROVINCE_NAME` varchar(55) DEFAULT NULL COMMENT '省份名称',
  `CITY_ID` int(11) DEFAULT NULL COMMENT '城市编码',
  `CITY_NAME` varchar(55) DEFAULT NULL COMMENT '城市名称',
  `ADDRESS` varchar(1000) DEFAULT NULL,
  `ZIP` varchar(20) DEFAULT NULL,
  `LEVEL_ID` int(11) DEFAULT NULL COMMENT '客户等级编码',
  `LEVEL_NAME` varchar(200) DEFAULT NULL COMMENT '客户等级名称',
  `PRICE_LEVEL` int(11) DEFAULT NULL COMMENT '价格等级',
  `CONTACT_PERIOD` int(11) DEFAULT NULL COMMENT '联系周期',
  `SOURCE_ID` int(11) DEFAULT NULL COMMENT '客户来源编码',
  `SOURCE_NAME` varchar(200) DEFAULT NULL COMMENT '客户来源名称',
  `NATURE_ID` int(11) DEFAULT NULL COMMENT '客户公司性质编码',
  `NATURE_NAME` varchar(200) DEFAULT NULL COMMENT '客户公司性质名称',
  `INDUSTRY_ID` int(11) DEFAULT NULL COMMENT '行业编码',
  `INDUSTRY_NAME` varchar(200) DEFAULT NULL COMMENT '行业名称',
  `MAIN_BUSINESS` varchar(1000) DEFAULT NULL COMMENT '主业务业',
  `SIZE_ID` int(11) DEFAULT NULL COMMENT '公司规模编码',
  `SIZE_NAME` varchar(200) DEFAULT NULL COMMENT '公司规模',
  `SETUP_DATE` datetime DEFAULT NULL COMMENT '开业年份',
  `CAPITAL` int(11) DEFAULT NULL COMMENT '注册资金',
  `CORPORATION` varchar(55) DEFAULT NULL COMMENT '法人',
  `CREDIT_ID` int(11) DEFAULT NULL COMMENT '信用编码',
  `CREDIT_NAME` varchar(55) DEFAULT NULL COMMENT '信用名称',
  `BANK` varchar(200) DEFAULT NULL,
  `ACCOUNT` varchar(55) DEFAULT NULL,
  `TAXNO` varchar(100) DEFAULT NULL COMMENT '税号',
  `SHARED` varchar(200) DEFAULT NULL COMMENT '共享人(以逗号分隔)',
  `PID` int(11) DEFAULT NULL COMMENT '客户父项(不用)',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '描述',
  `SALE_ID` int(11) DEFAULT NULL COMMENT '销售编码',
  `SALE_NAME` varchar(55) DEFAULT NULL COMMENT '销售名称',
  `SALE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '销售组织编码',
  `SALE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '销售组织名称',
  `CUSTOMER_STATUS` char(1) DEFAULT NULL COMMENT '客户状态 T:交易中，S:禁用',
  `CLASS_NAME` varchar(200) DEFAULT NULL COMMENT '客户类型名称',
  `EMP_COUNT` int(11) DEFAULT NULL,
  `TAX` int(11) DEFAULT NULL COMMENT '税率',
  `SETUP_ACCOUNT` int(11) DEFAULT NULL COMMENT '立帐方式 1:出库立账,2:开票立帐,3:不立账(不用)',
  `CURRENCY_ID` int(11) DEFAULT NULL COMMENT '币别编码',
  `CURRENCY_NAME` varchar(55) DEFAULT NULL,
  `TOTAL_SALES` varchar(55) DEFAULT NULL,
  `DEDUCTION_TAX` char(1) DEFAULT NULL COMMENT '1:不含税，2:含税',
  PRIMARY KEY (`CUSTOMER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='客户资料';

-- ----------------------------
-- Records of CUSTOMER
-- ----------------------------
INSERT INTO `CUSTOMER` VALUES ('21', 'test', '100001', 'A', '2013-06-26', '2013-06-26', '1', '1', '10', '051205555', '5011111', 'www.sina.com', 'www@163.com', null, null, null, null, '1', '苏州', '', null, '20', '一般客户', null, null, null, null, '17', '国有企业', null, '', '', '24', '1-50人', null, '50000000', '', '28', '高', '', '1111111', '', null, null, null, '', '24', 'ee', null, null, 'T', '潜在客户', '23', '5', null, '1', '人民币', '22', 'Y');
INSERT INTO `CUSTOMER` VALUES ('22', '12312', '3123123', 'A', '2013-06-26', '2013-06-26', '1', '1', '10', '123', '123', '', '', null, null, null, null, '2', '昆山', '123', null, '21', '重要客户', null, null, null, null, null, '', null, '', '', null, '', null, null, '123123213', null, '', '', '', '', null, null, null, '123', null, null, null, null, null, '潜在客户', null, null, null, null, '', '', 'Y');
INSERT INTO `CUSTOMER` VALUES ('23', '123123123', '123123', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, null, '', null, null, null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, null, null, null, null, '', null, null, null, null, '', '', 'Y');
INSERT INTO `CUSTOMER` VALUES ('24', 'test', '1001', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, '20', '一般客户', null, null, null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', '23', 'test', null, null, 'T', '', null, null, null, null, '', '', 'Y');
INSERT INTO `CUSTOMER` VALUES ('25', '12312', '3123123', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, null, '', null, null, null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, '', null, null, 'T', '', null, null, null, null, '', '', 'Y');
INSERT INTO `CUSTOMER` VALUES ('26', '123', '123', 'A', '2013-06-27', '2013-07-02', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, null, '', null, null, null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, '', null, null, 'T', '', null, null, null, null, '', '', 'Y');

-- ----------------------------
-- Table structure for `CUSTOMER_CONTACT`
-- ----------------------------
DROP TABLE IF EXISTS `CUSTOMER_CONTACT`;
CREATE TABLE `CUSTOMER_CONTACT` (
  `CONTACT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '客户联系人编码',
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '客户类型',
  `NAME` varchar(55) NOT NULL COMMENT '联系人',
  `SEX_ID` int(11) DEFAULT NULL COMMENT '性别编码',
  `CLASS_NAME` varchar(255) DEFAULT NULL COMMENT '类别名称',
  `SEX_NAME` varchar(10) DEFAULT NULL COMMENT '性别名称',
  `ORGANIZATION` varchar(255) DEFAULT NULL COMMENT '部门',
  `DUTY` varchar(255) DEFAULT NULL COMMENT '职务',
  `TEL` varchar(55) DEFAULT NULL COMMENT '电话 ',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '邮件',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `FAX` varchar(55) DEFAULT NULL COMMENT '传真',
  `QQ` varchar(25) DEFAULT NULL COMMENT 'QQ',
  `BIRTHDAY` date DEFAULT NULL COMMENT '生日',
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CUSTOMER_CONTACT
-- ----------------------------
INSERT INTO `CUSTOMER_CONTACT` VALUES ('3', '21', null, 'eee', null, null, 'M', null, 'eee', '2222', '111@163.com', null, 'eeee', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '33', '2013-06-26');
INSERT INTO `CUSTOMER_CONTACT` VALUES ('4', '22', null, '123123', null, null, 'F', null, '123', '123', '123@qq.com', null, '1', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '23', null);
INSERT INTO `CUSTOMER_CONTACT` VALUES ('5', '25', null, '123123', null, null, 'F', null, '123', '123', '123@qq.com', null, '123123', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '123', '2013-06-26');
INSERT INTO `CUSTOMER_CONTACT` VALUES ('6', '25', null, '432423', null, null, 'M', null, '23423', '4234', '234@qq.com', null, '123123123', 'I', '2013-06-26', '2013-06-26', '1', '1', null, '123', '2013-06-12');
INSERT INTO `CUSTOMER_CONTACT` VALUES ('7', '26', null, '123123', null, null, 'F', null, '123', '123', '123@qq.com', null, '123123', 'A', '2013-06-27', '2013-06-27', '1', '1', null, '123', '2013-06-10');

-- ----------------------------
-- Table structure for `CUSTOMER_TERMS`
-- ----------------------------
DROP TABLE IF EXISTS `CUSTOMER_TERMS`;
CREATE TABLE `CUSTOMER_TERMS` (
  `TERM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商交易编码',
  `STATUS` char(255) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `SUPLIER_ID` int(11) NOT NULL COMMENT '供应商编码',
  `SUPLIER_NAME` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `PAY_PERIOD` char(2) DEFAULT NULL COMMENT '结款周期',
  `PAY_METHOD` char(2) DEFAULT NULL COMMENT '结款方式',
  `PERIOD_DAY` int(11) DEFAULT NULL COMMENT '结款基准日',
  `MIN_AMOUNT` float DEFAULT NULL COMMENT '最小订货金额',
  `CURRENCY_ID` int(11) DEFAULT NULL COMMENT '币别编码',
  `CURRENCY_NAME` varchar(55) DEFAULT NULL COMMENT '币别名称',
  `INVOICE_TYPE` int(11) DEFAULT NULL COMMENT '发票类型',
  `INVOICE_FOLLOW` char(1) DEFAULT NULL COMMENT '是否随货带发票',
  `DISCOUNT_NO` int(11) DEFAULT NULL COMMENT '折扣',
  `DELIVER_TYPE` int(11) DEFAULT NULL COMMENT '配送方式',
  `FREIGHT_PAYER` int(11) DEFAULT NULL COMMENT '运费支付方式',
  `SALE_TYPE` int(11) DEFAULT NULL COMMENT '销售方式',
  `TERM_STATUS` char(1) DEFAULT NULL COMMENT '交易状态',
  PRIMARY KEY (`TERM_ID`),
  KEY `FK_SUPLIER_TERMS1` (`SUPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of CUSTOMER_TERMS
-- ----------------------------

-- ----------------------------
-- Table structure for `ENQUIRY_PURCHASE`
-- ----------------------------
DROP TABLE IF EXISTS `ENQUIRY_PURCHASE`;
CREATE TABLE `ENQUIRY_PURCHASE` (
  `ENQUIRY_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '询价单编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '询价单自编码',
  `SETUP_DATE` date NOT NULL COMMENT '询价日期',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `EFFECTIVE_DATE` date DEFAULT NULL COMMENT '有效日期',
  `REQUISITION_DESC` varchar(2000) DEFAULT NULL COMMENT '报价要求',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `SOURCE_OBJECT` int(11) DEFAULT NULL COMMENT '来源对像 1:请购单',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '对象编码',
  `ENQUIRY_UID` int(11) DEFAULT NULL COMMENT '询价人编码',
  `ENQUIRY_NAME` varchar(55) DEFAULT NULL COMMENT '询价人名称',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `ENQUIRY_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '询价人部门',
  `ENQUIRY_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '询价人部门名称',
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `CREATED` date NOT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) NOT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` date DEFAULT NULL COMMENT '审核日期',
  `AUDITE_STATUS` char(1) DEFAULT NULL COMMENT '审核状态',
  PRIMARY KEY (`ENQUIRY_ID`),
  KEY `FK_ENQUIRY_PURCHASE7` (`ENTER_ORGANIZATION_ID`),
  KEY `FK_ENQUIRY_PURCHASE1` (`PROJECT_ID`),
  KEY `FK_ENQUIRY_PURCHASE2` (`ATTACHMENT_ID`),
  KEY `FK_ENQUIRY_PURCHASE3` (`ENQUIRY_UID`),
  KEY `FK_ENQUIRY_PURCHASE4` (`ENQUIRY_ORGANIZATION_ID`),
  KEY `FK_ENQUIRY_PURCHASE5` (`ENTER_ID`),
  KEY `FK_ENQUIRY_PURCHASE6` (`AUDITE_ID`),
  KEY `FK_ENQUIRY_PURCHASE8` (`AUDITE_ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ENQUIRY_PURCHASE
-- ----------------------------

-- ----------------------------
-- Table structure for `ENQUIRY_PURCHASE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `ENQUIRY_PURCHASE_LINE`;
CREATE TABLE `ENQUIRY_PURCHASE_LINE` (
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `ITEM_NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `ENQUIRY_QTY` int(11) DEFAULT NULL COMMENT '请购数量',
  `SALE_ORDER_ID` int(11) DEFAULT NULL COMMENT '销售订单编码',
  `SALE_ORDER_MYID` varchar(55) DEFAULT NULL COMMENT '销售订单自编码',
  `SALE_ID` int(11) DEFAULT NULL COMMENT '销售单编码',
  `SALE_MYID` varchar(55) DEFAULT NULL COMMENT '销售单自编码',
  `SALE_CONTRACT_ID` int(11) DEFAULT NULL COMMENT '销售合同编码',
  `SALE_CONTRACT_MYID` varchar(55) DEFAULT NULL COMMENT '销售合同自编码',
  `PLAN_ID` int(11) DEFAULT NULL COMMENT '采购计划编码',
  `PLAN_MYID` varchar(55) DEFAULT NULL COMMENT '采购计划自编码',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ENQUIRY_ID` int(11) DEFAULT NULL COMMENT '询价单编码',
  `ENQUIRY_LID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ENQUIRY_LID`),
  KEY `FK_ENQUIRY_PURCHASE_LINE4` (`ENQUIRY_ID`),
  KEY `FK_ENQUIRY_PURCHASE_LINE1` (`ITEM_ID`),
  KEY `FK_ENQUIRY_PURCHASE_LINE2` (`BRAND_ID`),
  KEY `FK_ENQUIRY_PURCHASE_LINE3` (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='询价明细资料';

-- ----------------------------
-- Records of ENQUIRY_PURCHASE_LINE
-- ----------------------------

-- ----------------------------
-- Table structure for `ITEM`
-- ----------------------------
DROP TABLE IF EXISTS `ITEM`;
CREATE TABLE `ITEM` (
  `ITEM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `NAME` varchar(255) DEFAULT NULL COMMENT '名称',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '商品分类',
  `CLASS_NAME` varchar(200) DEFAULT NULL COMMENT '分类名称',
  `SPEC` varchar(255) DEFAULT NULL COMMENT '规格',
  `WEIGHT` double(10,2) unsigned DEFAULT NULL,
  `MAUND` varchar(10) DEFAULT NULL COMMENT '重量单位',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `PACKAGE_UNIT` varchar(55) DEFAULT NULL COMMENT '包装单位',
  `CONVERTS` int(11) DEFAULT NULL COMMENT '转换',
  `OLD_MYID` varchar(55) DEFAULT NULL COMMENT '原系统编码',
  `TAX_NO` int(11) DEFAULT NULL COMMENT '税率',
  `IS_BATCH` char(1) DEFAULT NULL COMMENT 'Y:有批次管理，N:无批次管理',
  `IS_VALID` char(1) DEFAULT NULL COMMENT 'Y:有效期管理，N:无有效期管理',
  `COST` double(18,8) unsigned DEFAULT NULL COMMENT '参考成本',
  `RETAIL_PRICE` double(18,8) unsigned DEFAULT NULL COMMENT '零售价',
  `SALE_PRICE` double(18,8) unsigned DEFAULT NULL COMMENT '销售价',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(55) DEFAULT NULL COMMENT '品牌名称',
  `CITY_ID` int(11) DEFAULT NULL COMMENT '产地编码',
  `CITY_NAME` varchar(55) DEFAULT NULL COMMENT '产地名称',
  `QUALITY_PERIOD` varchar(55) DEFAULT NULL COMMENT '保质期',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `STATUS` char(1) DEFAULT 'A',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `BARCODE` varchar(55) DEFAULT NULL,
  `IMAGE` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ITEM_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ITEM
-- ----------------------------
INSERT INTO `ITEM` VALUES ('1', '123123', '132123', '10', '潜在客户', null, null, '123', '123', null, null, null, null, 'Y', 'Y', '0.00000000', null, null, '123', '', '2', '昆山', null, '123123', '2013-06-27', '2013-06-27', 'A', '1', '1', null, '123', null);
INSERT INTO `ITEM` VALUES ('2', 'TES', 'EST', null, '', null, null, '', '', null, null, null, null, 'Y', 'Y', null, null, null, null, '', null, '', null, '', '2013-06-27', '2013-07-09', 'I', '1', '1', null, '', '<img alt=\"485条码.jpg\" src=\"/erp/attached/2013/06/27/ca425cc8c508474ca7f3f4678e5296cf.jpg\" />');
INSERT INTO `ITEM` VALUES ('3', '123123', '123123', null, '', '', null, '', '', '', null, null, null, 'Y', 'Y', '123.00000000', '123.00000000', null, null, '', null, '', null, '', '2013-06-27', '2013-07-09', 'I', '1', '1', null, '', '<img src=\"/erp/attached/2013/06/27/3430cd0bb657471a880f9397759a4cd5.png\" alt=\"search.png\" />');
INSERT INTO `ITEM` VALUES ('4', 'test', 'test', '10', '潜在客户', '', null, '', '', '个', null, null, null, 'Y', 'Y', '0.00000000', '55.00000000', null, null, '', null, '', null, '', '2013-07-02', '2013-07-02', 'A', '1', '1', null, '', null);
INSERT INTO `ITEM` VALUES ('5', '001', '花生牛奶001', '9', '经销商', '', null, '', '个', '个', '12', null, '17', 'Y', 'Y', '0.00000000', '12.00000000', null, null, '', null, '', null, '', '2013-07-02', '2013-07-02', 'A', '1', '1', null, '', null);
INSERT INTO `ITEM` VALUES ('6', '002', '花生牛奶002', '10', '潜在客户', '', null, '', '个', '个', '12', null, '17', 'Y', 'Y', '0.00000000', '12.00000000', null, null, '', null, '', null, '', '2013-07-02', '2013-07-02', 'A', '1', '1', null, '', null);
INSERT INTO `ITEM` VALUES ('7', '003', '花生牛奶003', '10', '潜在客户', '', null, '', '个', '个', '12', null, '17', 'Y', 'Y', '23.69000000', '12.00000000', null, null, '', null, '', null, '', '2013-07-02', '2013-07-02', 'A', '1', '1', null, '', null);

-- ----------------------------
-- Table structure for `ITEM_CLASS`
-- ----------------------------
DROP TABLE IF EXISTS `ITEM_CLASS`;
CREATE TABLE `ITEM_CLASS` (
  `CLASS_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '商品分类编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '类型名称',
  `PID` int(11) DEFAULT NULL COMMENT '父分类编码',
  `CREATED` date DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `STATUS` char(1) DEFAULT 'A',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`CLASS_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品分类资料';

-- ----------------------------
-- Records of ITEM_CLASS
-- ----------------------------

-- ----------------------------
-- Table structure for `LOCATION`
-- ----------------------------
DROP TABLE IF EXISTS `LOCATION`;
CREATE TABLE `LOCATION` (
  `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `WAREHOUSE_ID` int(11) DEFAULT NULL,
  `WAREHOUSE_NAME` varchar(100) DEFAULT NULL,
  `LOCATION_MYID` varchar(55) DEFAULT NULL,
  `LOCATION_NAME` varchar(100) DEFAULT NULL,
  `CLASS_ID` int(11) DEFAULT NULL,
  `CLASS_NAME` varchar(55) DEFAULT NULL,
  `LOCATION_STATUS` char(1) DEFAULT NULL,
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`LOCATION_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of LOCATION
-- ----------------------------

-- ----------------------------
-- Table structure for `LOG`
-- ----------------------------
DROP TABLE IF EXISTS `LOG`;
CREATE TABLE `LOG` (
  `LOG_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '日志自动生成ID',
  `USER_ID` int(11) DEFAULT NULL COMMENT '操作用户ID',
  `NAME` varchar(20) DEFAULT NULL COMMENT '操作用户名称',
  `LOG_DATE` datetime DEFAULT NULL COMMENT '日志生成时间',
  `TYPE` int(10) DEFAULT NULL COMMENT '日志类型: 1：安全日志 2：表示操作日志',
  `MAC` varchar(20) DEFAULT NULL COMMENT '物理地址',
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `OBJECT_TYPE` int(1) DEFAULT NULL COMMENT '对象类型 ',
  `OBJECT_ID` varchar(100) DEFAULT NULL COMMENT '操作事件写入权限编码，系统事件写入系统编码',
  `EVENT_NAME` varchar(100) DEFAULT NULL COMMENT '事件名称',
  `EVENT_RECORD` varchar(500) DEFAULT NULL COMMENT '详细描述',
  PRIMARY KEY (`LOG_ID`),
  KEY `FK_LOG1` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=1268 DEFAULT CHARSET=utf8 COMMENT='日录资料表';

-- ----------------------------
-- Records of LOG
-- ----------------------------
INSERT INTO `LOG` VALUES ('1220', '1', 'admin', '2013-07-11 09:25:48', '1', null, null, null, 'dbBackUp-20130711092548.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711092548.sql');
INSERT INTO `LOG` VALUES ('1221', '1', 'admin', '2013-07-11 09:29:28', '1', null, null, null, 'dbBackUp-20130711092928.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711092928.sql');
INSERT INTO `LOG` VALUES ('1222', '1', 'admin', '2013-07-11 09:30:13', '1', null, null, null, 'dbBackUp-20130711093013.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711093013.sql');
INSERT INTO `LOG` VALUES ('1223', '1', 'admin', '2013-07-11 10:43:16', '1', null, null, null, 'dbBackUp-20130711104316.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711104316.sql');
INSERT INTO `LOG` VALUES ('1224', '1', 'admin', '2013-07-11 10:47:22', '1', null, null, null, 'dbBackUp-20130711104722.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711104722.sql');
INSERT INTO `LOG` VALUES ('1225', null, 'system', '2013-07-11 10:58:00', '1', null, null, null, 'dbBackUp-20130711105800.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711105800.sql');
INSERT INTO `LOG` VALUES ('1226', '1', 'admin', '2013-07-11 11:11:25', '1', null, null, null, null, '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711111125.sql');
INSERT INTO `LOG` VALUES ('1227', '1', 'admin', '2013-07-11 11:23:15', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '94', 'update:Permission', '更新:com.erp.model.Permission');
INSERT INTO `LOG` VALUES ('1228', '1', 'admin', '2013-07-11 11:23:27', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '94', 'update:Permission', '更新:com.erp.model.Permission');
INSERT INTO `LOG` VALUES ('1229', null, 'system', '2013-07-11 11:27:00', '1', '**************', '**************', null, 'dbBackUp-20130711112700.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130711112700.sql');
INSERT INTO `LOG` VALUES ('1230', '1', 'admin', '2013-07-11 14:22:27', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '3', 'update:Suplier', '更新:com.erp.model.Suplier');
INSERT INTO `LOG` VALUES ('1231', '1', 'admin', '2013-07-11 14:22:27', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '3', 'update:SuplierContact', '更新:com.erp.model.SuplierContact');
INSERT INTO `LOG` VALUES ('1232', '1', 'admin', '2013-07-11 14:25:26', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '22', 'delete:UserRole', '删除:com.erp.model.UserRole');
INSERT INTO `LOG` VALUES ('1233', '1', 'admin', '2013-07-11 14:25:26', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '22', 'update:UserRole', '更新:com.erp.model.UserRole');
INSERT INTO `LOG` VALUES ('1234', '1', 'admin', '2013-07-12 12:14:15', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '86', 'update:Permission', '更新:com.erp.model.Permission');
INSERT INTO `LOG` VALUES ('1235', '1', 'admin', '2013-07-12 12:34:07', '1', '10:78:D2:C7:82:DC', '192.168.95.20', null, 'dbBackUp-20130712123407.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130712123407.sql');
INSERT INTO `LOG` VALUES ('1236', '1', 'admin', '2013-07-12 12:37:19', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '1', 'update:Project', '更新:com.erp.model.Project');
INSERT INTO `LOG` VALUES ('1237', '1', 'admin', '2013-07-12 12:37:19', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '1', 'update:ProjectFollow', '更新:com.erp.model.ProjectFollow');
INSERT INTO `LOG` VALUES ('1238', null, 'system', '2013-07-14 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130714020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130714020200.sql');
INSERT INTO `LOG` VALUES ('1239', null, 'system', '2013-07-15 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130715020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130715020200.sql');
INSERT INTO `LOG` VALUES ('1240', '1', 'admin', '2013-07-15 15:49:23', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '24', 'insert:Bug', '插入:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1241', '1', 'admin', '2013-07-15 15:49:43', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '24', 'update:Bug', '更新:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1242', '1', 'admin', '2013-07-15 15:50:10', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '24', 'update:Bug', '更新:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1243', '1', 'admin', '2013-07-17 17:00:28', '1', '10:78:D2:C7:82:DC', '192.168.95.20', null, 'dbBackUp-20130717170028.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130717170028.sql');
INSERT INTO `LOG` VALUES ('1244', null, 'system', '2013-07-18 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130718020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130718020200.sql');
INSERT INTO `LOG` VALUES ('1245', null, 'system', '2013-07-20 02:02:29', '1', '**************', '**************', null, 'dbBackUp-20130720020218.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130720020218.sql');
INSERT INTO `LOG` VALUES ('1246', null, 'system', '2013-07-21 02:02:20', '1', '**************', '**************', null, 'dbBackUp-20130721020202.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130721020202.sql');
INSERT INTO `LOG` VALUES ('1247', null, 'system', '2013-07-22 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130722020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130722020200.sql');
INSERT INTO `LOG` VALUES ('1248', null, 'system', '2013-07-26 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130726020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130726020200.sql');
INSERT INTO `LOG` VALUES ('1249', '1', 'admin', '2013-08-02 09:14:25', '1', '10:78:D2:C7:82:DC', '192.168.95.20', null, 'dbBackUp-20130802091425.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130802091425.sql');
INSERT INTO `LOG` VALUES ('1250', '1', 'admin', '2013-08-02 10:50:26', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '24', 'update:Bug', '更新:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1251', null, 'system', '2013-08-03 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130803020200.sql', '数据备份', 'D:\\work\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130803020200.sql');
INSERT INTO `LOG` VALUES ('1252', null, 'system', '2013-08-03 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130803020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130803020200.sql');
INSERT INTO `LOG` VALUES ('1253', null, 'system', '2013-08-04 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130804020200.sql', '数据备份', 'D:\\servers\\TOMCAT\\apache-tomcat-6.0.29\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130804020200.sql');
INSERT INTO `LOG` VALUES ('1254', null, 'system', '2013-08-04 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130804020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130804020200.sql');
INSERT INTO `LOG` VALUES ('1255', null, 'system', '2013-08-05 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130805020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130805020200.sql');
INSERT INTO `LOG` VALUES ('1256', '1', 'admin', '2013-08-05 10:09:30', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '6', 'update:Permission', '更新:com.erp.model.Permission');
INSERT INTO `LOG` VALUES ('1257', '1', 'admin', '2013-08-05 10:09:56', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '23', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1258', '1', 'admin', '2013-08-05 10:09:59', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '14', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1259', '1', 'admin', '2013-08-05 10:10:01', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '15', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1260', '1', 'admin', '2013-08-05 10:10:02', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '16', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1261', '1', 'admin', '2013-08-05 10:10:04', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '18', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1262', '1', 'admin', '2013-08-05 10:10:05', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '19', 'delete:Bug', '删除:com.erp.model.Bug');
INSERT INTO `LOG` VALUES ('1263', '1', 'admin', '2013-08-05 10:12:31', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '11', 'insert:City', '插入:com.erp.model.City');
INSERT INTO `LOG` VALUES ('1264', '1', 'admin', '2013-08-05 10:13:17', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '1', 'update:Project', '更新:com.erp.model.Project');
INSERT INTO `LOG` VALUES ('1265', '1', 'admin', '2013-08-05 10:13:17', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '1', 'update:ProjectFollow', '更新:com.erp.model.ProjectFollow');
INSERT INTO `LOG` VALUES ('1266', '1', 'admin', '2013-08-05 10:15:51', '2', '10:78:D2:C7:82:DC', '192.168.95.20', null, '33', 'insert:CompanyInfo', '插入:com.erp.model.CompanyInfo');
INSERT INTO `LOG` VALUES ('1267', null, 'system', '2013-08-06 02:02:00', '1', '**************', '**************', null, 'dbBackUp-20130806020200.sql', '数据备份', 'D:\\server\\apache-tomcat-7.0.41\\webapps\\erp2\\attachment\\dbBackUp\\dbBackUp-20130806020200.sql');

-- ----------------------------
-- Table structure for `ORDER_PURCHASE`
-- ----------------------------
DROP TABLE IF EXISTS `ORDER_PURCHASE`;
CREATE TABLE `ORDER_PURCHASE` (
  `ORDER_PURCHASE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MYID` varchar(55) DEFAULT NULL,
  `SETUP_DATE` datetime DEFAULT NULL,
  `WAREHOUSE_ID` int(11) DEFAULT NULL,
  `SUPLIER_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `SUPLIER_NAME` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `SUPLIER_MYID` varchar(55) DEFAULT NULL COMMENT '供应商自编码',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) DEFAULT NULL COMMENT '项目自编码',
  `SUPLIER_ADDRESS` varchar(200) DEFAULT NULL,
  `SUPLIER_CONTACT` varchar(55) DEFAULT NULL,
  `SUPLIER_TEL` varchar(55) DEFAULT NULL COMMENT '公司电话',
  `CONTACT_MOBILE` varchar(20) DEFAULT NULL COMMENT '联系人手机',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `CONTACT_FAX` varchar(20) DEFAULT NULL COMMENT '联系人传真',
  `DELIVERY_MODE` int(11) DEFAULT NULL,
  `DELIVERY_MODE_NAME` varchar(55) DEFAULT NULL,
  `ESTIMATED_DELIVERY` datetime DEFAULT NULL COMMENT '预计交货日期',
  `DELIVERY_ADDRESS` varchar(300) DEFAULT NULL,
  `ORDER_DESC` varchar(1000) DEFAULT NULL,
  `PAY_MODE` int(11) DEFAULT NULL,
  `ISINVOICE` int(2) DEFAULT NULL COMMENT '是否开票 1:是，2:否',
  `BUYER_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `BUYER_NAME` varchar(55) DEFAULT NULL COMMENT '供应商名称',
  `BUYER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '供应商组织编码',
  `BUYER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '供应商组织名称',
  `WAREHOUSE_NAME` varchar(200) DEFAULT NULL,
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` datetime DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` datetime DEFAULT NULL COMMENT '审核日期',
  `AUDITE_STATUS` char(1) DEFAULT NULL COMMENT '审核状态',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `SOURCE_OBJECT` int(11) DEFAULT NULL COMMENT '来源对像 1:请购单',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '对象编码',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '采购类型',
  `CLASS_NAME` varchar(55) DEFAULT NULL COMMENT '采购单类型名称 system_code',
  `BATCH_ID` int(11) DEFAULT NULL COMMENT '暂时不填',
  `BATCH_NO` varchar(255) DEFAULT NULL COMMENT '批号',
  `DEDUCTION_TAX` char(1) DEFAULT NULL COMMENT '1:不含税，2:含税',
  `SUPLIER_ORDER_NO` varchar(100) DEFAULT NULL,
  `AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TOTAL_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `ADVANCE_PAYMENT` double(18,8) DEFAULT '0.00000000',
  `CREATED` datetime DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` datetime DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ORDER_STATUS` char(1) DEFAULT NULL,
  `CURRENCY_ID` int(11) DEFAULT NULL,
  `CURRENCY_NAME` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ORDER_PURCHASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ORDER_PURCHASE
-- ----------------------------
INSERT INTO `ORDER_PURCHASE` VALUES ('10', 'KS-001', '2013-07-25 00:00:00', '1', '2', 'teste', 'testes', '4', '123', null, '123123', '123', null, null, null, '65', '物流公司', '2013-07-03 00:00:00', null, null, null, null, null, null, '1', '总经理室', '物流仓', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '62', '普通采购', '1', '', 'Y', '001', '37506.86000000', '6376.16000000', '43883.02000000', '120.00000000', '2013-07-03 12:22:50', '2013-07-03 14:44:58', 'A', '1', '1', null, '1', '人民币');

-- ----------------------------
-- Table structure for `ORDER_PURCHASE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `ORDER_PURCHASE_LINE`;
CREATE TABLE `ORDER_PURCHASE_LINE` (
  `ORDER_PURCHASE_LID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_PURCHASE_ID` int(11) DEFAULT NULL COMMENT '询价单编码',
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `ITEM_NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `ORDER_QTY` int(11) DEFAULT NULL COMMENT '请购数量',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` datetime DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` datetime DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `PRICE` double(18,8) DEFAULT '0.00000000',
  `TAX` double(18,8) DEFAULT '0.00000000',
  `PRICE_TAX` double(18,8) DEFAULT '0.00000000',
  `AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `PRICE_TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_NO` int(11) DEFAULT '0',
  `FACT_QTY` int(11) DEFAULT '0',
  `DISCOUNT_NO` double(18,8) DEFAULT '0.00000000',
  PRIMARY KEY (`ORDER_PURCHASE_LID`),
  KEY `FK_ORDER_PURCHASE_LINE` (`ORDER_PURCHASE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=utf8 COMMENT='询价明细资料';

-- ----------------------------
-- Records of ORDER_PURCHASE_LINE
-- ----------------------------
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('1', '2', null, '123123123', null, null, '12', null, null, '1', null, '2013-07-01 00:00:00', '2013-07-01 00:00:00', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1.00000000', '0.00000000', '0', '0', '1.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('2', '2', null, '1231', null, null, '12', null, null, '123', null, '2013-07-01 00:00:00', '2013-07-03 12:19:17', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '12.00000000', '12.00000000', '0.00000000', '0', '0', '12.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('3', '3', null, '123123', null, null, '12', null, null, '12', null, '2013-07-02 00:00:00', '2013-07-02 00:00:00', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '1.00000000', '1.00000000', '0.00000000', '0', '0', '1.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('4', '2', null, '12', null, null, '22', null, null, '2', null, '2013-07-02 00:00:00', '2013-07-03 12:19:17', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '23.00000000', '22.00000000', '0.00000000', '0', '0', '22.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('5', '4', null, '4123213', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '100.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('6', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '100.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('7', '4', null, '12312312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('8', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('9', '4', null, '12412312123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '99999.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('10', '4', null, '1231243123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('11', '4', null, '12413', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('12', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('13', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('14', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('15', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('16', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('17', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('18', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('19', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('20', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('21', '4', null, '12312312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('22', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('23', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('24', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('25', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('26', '4', null, '12312312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('27', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('28', '4', null, '124123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('29', '4', null, '12412312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('30', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('31', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('32', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('33', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('34', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('35', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('36', '4', null, '12123124', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('37', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('38', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('39', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('40', '4', null, '412123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('41', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('42', '4', null, '12412312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '100.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('43', '4', null, '12312312', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('44', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('45', '4', null, '1214324234', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('46', '4', null, '123123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '100.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('47', '4', null, '124123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('48', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('49', '4', null, '123124123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('50', '4', null, '123123213', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('51', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('52', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '100.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('53', '4', null, '123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '0.00000000', '0.00000000', '0.00000000', '5.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('54', '4', null, '124123123', null, null, null, null, null, null, null, '2013-07-02 00:00:00', '2013-07-03 12:19:16', 'I', '1', '1', '3620.00000000', '0.00000000', '0.00000000', '100.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('55', null, null, 'test', null, null, null, null, null, null, null, '2013-07-01 08:00:00', '2013-07-01 08:00:00', 'A', '1', '1', '100.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('56', null, null, 'test', null, null, null, null, null, null, null, '2013-07-02 09:00:00', '2013-07-02 09:00:00', 'A', '1', '1', '300.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('57', null, null, 'test', null, null, null, null, null, null, null, '2013-07-02 10:00:00', '2013-07-02 10:00:00', 'A', '1', '1', '500.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0.00000000', '0', '0', '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('58', '5', null, '001', '花生牛奶001', null, '个', null, null, '0', null, '2013-07-02 15:31:04', '2013-07-03 12:19:14', 'I', '1', '1', '0.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('59', '5', null, '002', '花生牛奶002', null, '个', null, null, '2', null, '2013-07-02 15:31:04', '2013-07-03 12:19:14', 'I', '1', '1', '89.88999939', null, null, '178.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('60', '5', null, '003', '花生牛奶003', null, '个', null, null, '1', null, '2013-07-02 15:31:04', '2013-07-03 12:19:14', 'I', '1', '1', '56.00000000', null, null, '56.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('61', '6', null, '001', '花生牛奶001', null, '个', null, null, '0', null, '2013-07-02 16:04:24', '2013-07-03 12:19:12', 'I', '1', '1', '12312.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('62', '6', null, '002', '花生牛奶002', null, '个', null, null, '0', null, '2013-07-02 16:18:19', '2013-07-03 12:19:12', 'I', '1', '1', '0.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('63', '6', null, '003', '花生牛奶003', null, '个', null, null, '0', null, '2013-07-02 16:18:19', '2013-07-03 12:19:12', 'I', '1', '1', '123.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('64', '7', null, '001', '花生牛奶001', null, '个', null, null, '2', null, '2013-07-02 16:33:21', '2013-07-03 12:18:18', 'I', '1', '1', '56.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('65', '7', null, '002', '花生牛奶002', null, '个', null, null, '21', null, '2013-07-02 16:33:21', '2013-07-03 12:18:18', 'I', '1', '1', '56.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('66', '7', null, '003', '花生牛奶003', null, '个', null, null, '85', null, '2013-07-02 16:33:21', '2013-07-03 12:18:18', 'I', '1', '1', '89.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('67', '8', null, '001', '花生牛奶001', null, '个', null, null, '0', null, '2013-07-02 16:36:07', '2013-07-03 12:18:12', 'I', '1', '1', '89.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('68', '8', null, '002', '花生牛奶002', null, '个', null, null, '0', null, '2013-07-02 16:41:09', '2013-07-03 12:18:12', 'I', '1', '1', '56.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('69', '8', null, '003', '花生牛奶003', null, '个', null, null, '0', null, '2013-07-02 16:41:09', '2013-07-03 12:18:12', 'I', '1', '1', '89.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('70', '8', null, '001', '花生牛奶001', null, '个', null, null, '25', null, '2013-07-02 16:41:09', '2013-07-03 12:18:12', 'I', '1', '1', '89.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('71', '8', null, '003', '花生牛奶003', null, '个', null, null, '0', null, '2013-07-02 16:41:09', '2013-07-03 12:18:12', 'I', '1', '1', '89.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('72', '8', null, '002', '花生牛奶002', null, '个', null, null, '0', null, '2013-07-02 16:41:09', '2013-07-03 12:18:12', 'I', '1', '1', '56.00000000', null, null, '0.00000000', '0.00000000', null, null, null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('73', '9', '7', '003', '花生牛奶003', null, '个', null, null, '77', null, '2013-07-02 16:48:17', '2013-07-03 12:18:06', 'I', '1', '1', '89.36000061', null, null, '0.00000000', '0.00000000', null, '17', null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('74', '9', '6', '002', '花生牛奶002', null, '个', null, null, '89', null, '2013-07-02 16:48:17', '2013-07-03 10:06:44', 'I', '1', '1', '56.31999969', null, null, '0.00000000', '0.00000000', null, '17', null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('76', '9', '5', '001.', '花生牛奶001', null, '个', null, null, '100', null, '2013-07-03 10:04:26', '2013-07-03 10:06:30', 'I', '1', '1', '0.33000001', null, null, '0.00000000', '0.00000000', null, '17', null, '0.00000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('77', '10', '5', '001', '花生牛奶001', null, '个', null, null, '500', null, '2013-07-03 12:22:50', '2013-07-03 14:44:58', 'A', '1', '1', '123.00000000', '0.00000000', null, '36900.00000000', '6273.00000000', null, '17', null, '0.60000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('78', '10', '6', '002', '花生牛奶002', null, '个', null, null, '5', null, '2013-07-03 12:22:50', '2013-07-03 14:44:58', 'A', '1', '1', '89.23000000', '0.00000000', null, '223.08000000', '37.92000000', null, '17', null, '0.50000000');
INSERT INTO `ORDER_PURCHASE_LINE` VALUES ('79', '10', '7', '003', '花生牛奶003', null, '个', null, null, '18', null, '2013-07-03 12:22:50', '2013-07-03 14:44:59', 'A', '1', '1', '23.69000000', '0.00000000', null, '383.78000000', '65.24000000', null, '17', null, '0.90000000');

-- ----------------------------
-- Table structure for `ORDER_SALE`
-- ----------------------------
DROP TABLE IF EXISTS `ORDER_SALE`;
CREATE TABLE `ORDER_SALE` (
  `ORDER_SALE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `MYID` varchar(55) DEFAULT NULL,
  `SETUP_DATE` date DEFAULT NULL,
  `SETUP_ACCOUNT` int(11) DEFAULT NULL,
  `WAREHOUSE_ID` int(11) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL COMMENT '客户编码',
  `CUSTOMER_NAME` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `CUSTOMER_MYID` varchar(55) DEFAULT NULL COMMENT '客户自编码',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) DEFAULT NULL COMMENT '项目自编码',
  `CUSTOMER_ADDRESS` varchar(200) DEFAULT NULL,
  `CUSTOMER_CONTACT` varchar(55) DEFAULT NULL,
  `CUSTOMER_TEL` varchar(55) DEFAULT NULL COMMENT '公司电话',
  `CONTACT_MOBILE` varchar(20) DEFAULT NULL COMMENT '联系人手机',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `CONTACT_FAX` varchar(20) DEFAULT NULL COMMENT '联系人传真',
  `DELIVERY_MODE` int(11) DEFAULT NULL,
  `DELIVERY_MODE_NAME` varchar(55) DEFAULT NULL,
  `ESTIMATED_DELIVERY` date DEFAULT NULL COMMENT '预计交货日期',
  `DELIVERY_ADDRESS` varchar(300) DEFAULT NULL,
  `ORDER_DESC` varchar(1000) DEFAULT NULL,
  `PAY_MODE` int(11) DEFAULT NULL,
  `ISINVOICE` int(2) DEFAULT NULL COMMENT '是否开票 1:是，2:否',
  `SALE_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `SALE_NAME` varchar(55) DEFAULT NULL COMMENT '供应商名称',
  `SALE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '客户组织编码',
  `SALE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '客户组织名称',
  `WAREHOUSE_NAME` varchar(200) DEFAULT NULL,
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` date DEFAULT NULL COMMENT '审核日期',
  `AUDITE_STATUS` char(1) DEFAULT NULL COMMENT '审核状态',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `SOURCE_OBJECT` int(11) DEFAULT NULL COMMENT '来源对像 1:请购单',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '对象编码',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '采购类型',
  `CLASS_NAME` varchar(55) DEFAULT NULL COMMENT '客户单类型名称 system_code',
  `BATCH_ID` int(11) DEFAULT NULL COMMENT '暂时不填',
  `BATCH_NO` varchar(255) DEFAULT NULL COMMENT '批号',
  `DEDUCTION_TAX` char(1) DEFAULT NULL COMMENT '1:不含税，2:含税',
  `CUSTOMER_ORDER_NO` varchar(100) DEFAULT NULL,
  `AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TOTAL_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `ADVANCE_PAYMENT` double(18,8) DEFAULT '0.00000000',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ORDER_STATUS` char(1) DEFAULT NULL,
  `CURRENCY_ID` int(11) DEFAULT NULL,
  `CURRENCY_NAME` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`ORDER_SALE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ORDER_SALE
-- ----------------------------
INSERT INTO `ORDER_SALE` VALUES ('1', '11', '2013-07-08', '1', '1', '1', '1', '1', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '1111', null, null, null, null, '0.00000000', '0.00000000', '0.00000000', '0.00000000', null, '2013-07-09', 'I', null, '1', null, null, null);
INSERT INTO `ORDER_SALE` VALUES ('2', '123123', '2013-07-09', null, null, null, '', '', null, '', null, '', '', null, null, null, null, '', null, null, null, null, null, null, '', null, '', '', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '62', '普通采购', '12', '', 'Y', null, '0.00000000', '0.00000000', '0.00000000', '0.00000000', '2013-07-09', '2013-07-09', 'I', '1', '1', null, null, '');
INSERT INTO `ORDER_SALE` VALUES ('3', '123123', '2013-07-30', null, '1', '22', '12312', '3123123', '5', '123', null, '123123', '123', null, null, null, '66', '客户自提', '2013-07-09', null, null, null, null, '123', '', null, '', '物流仓', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, '63', '紧急采购', '123', '', 'Y', '', '509.00000000', '86.53000000', '595.53000000', '0.00000000', '2013-07-09', '2013-07-09', 'A', '1', '1', null, '1', '人民币');

-- ----------------------------
-- Table structure for `ORDER_SALE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `ORDER_SALE_LINE`;
CREATE TABLE `ORDER_SALE_LINE` (
  `ORDER_SALE_LID` int(11) NOT NULL AUTO_INCREMENT,
  `ORDER_SALE_ID` int(11) DEFAULT NULL COMMENT '询价单编码',
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `ITEM_NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `ORDER_QTY` int(11) DEFAULT NULL COMMENT '请购数量',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `PRICE` double(18,8) DEFAULT '0.00000000',
  `TAX` double(18,8) DEFAULT '0.00000000',
  `PRICE_TAX` double(18,8) DEFAULT '0.00000000',
  `AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `PRICE_TAX_AMOUNT` double(18,8) DEFAULT '0.00000000',
  `TAX_NO` int(11) DEFAULT '0',
  `FACT_QTY` int(11) DEFAULT '0',
  `DISCOUNT_NO` double(18,8) DEFAULT '0.00000000',
  PRIMARY KEY (`ORDER_SALE_LID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='询价明细资料';

-- ----------------------------
-- Records of ORDER_SALE_LINE
-- ----------------------------
INSERT INTO `ORDER_SALE_LINE` VALUES ('1', '3', '5', '001', '花生牛奶001', null, '个', null, null, '5', null, '2013-07-09', '2013-07-09', 'A', '1', '1', '89.00000000', '0.00000000', '0.00000000', '445.00000000', '75.65000000', '0.00000000', '17', '0', '0.00000000');
INSERT INTO `ORDER_SALE_LINE` VALUES ('2', '3', '6', '002', '花生牛奶002', null, '个', null, null, '8', null, '2013-07-09', '2013-07-09', 'A', '1', '1', '8.00000000', '0.00000000', '0.00000000', '64.00000000', '10.88000000', '0.00000000', '17', '0', '0.00000000');

-- ----------------------------
-- Table structure for `ORGANIZATION`
-- ----------------------------
DROP TABLE IF EXISTS `ORGANIZATION`;
CREATE TABLE `ORGANIZATION` (
  `ORGANIZATION_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '组织机构自动ID',
  `COMPANY_ID` int(11) DEFAULT NULL COMMENT '从属公司ID',
  `MYID` varchar(25) DEFAULT NULL COMMENT '组织自编码',
  `PID` int(10) DEFAULT NULL COMMENT '父组织ID',
  `FULL_NAME` varchar(255) DEFAULT NULL COMMENT '组织名称',
  `ENAME` varchar(100) DEFAULT NULL COMMENT '英文名称',
  `MANAGER` int(10) DEFAULT NULL COMMENT '主负责人',
  `ICONCLS` varchar(100) DEFAULT NULL COMMENT '图标',
  `STATE` varchar(20) DEFAULT NULL,
  `ASSISTANT_MANAGER` int(10) DEFAULT NULL COMMENT '副负责人',
  `EMP_QTY` int(10) DEFAULT NULL COMMENT '编制人员数',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `SHORT_NAME` varchar(50) DEFAULT NULL COMMENT '简称',
  `TEL` varchar(50) DEFAULT NULL COMMENT '电话',
  `FAX` varchar(50) DEFAULT NULL COMMENT '传真',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ORGANIZATION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8 COMMENT='组织部门资料表';

-- ----------------------------
-- Records of ORGANIZATION
-- ----------------------------
INSERT INTO `ORGANIZATION` VALUES ('1', null, '1001', null, '总经理室', '', null, 'icon-pro', 'closed', null, null, 'A', '2013-05-27', '2013-06-14', '', '50501068', '50101068', '', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('2', null, '100101', '1', 'MIS', 'mis', null, 'icon-undo', 'closed', null, null, 'A', '2013-05-27', '2013-06-18', 'm', '', '', '123123123123123123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('3', null, '78545', '1', 'liter', '', null, 'icon-sys', 'closed', null, null, 'I', null, '2013-06-18', '', '123', '123', '', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('4', null, 'werwe', '5', 'asdfasd', '123', null, 'icon-end', 'closed', null, null, 'A', '2013-05-28', '2013-06-19', '123', '123', '123', '123123123123234234', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('5', null, '123', null, '12333', '123', null, 'icon-tip', 'closed', null, null, 'A', '2013-06-14', '2013-06-19', '123', '123', '123', '1231231', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('6', null, '3123123', '5', '123', 'sa', null, 'icon-edit', 'closed', null, null, 'I', '2013-06-14', '2013-06-18', '', '', '', '123123', '1', '2');
INSERT INTO `ORGANIZATION` VALUES ('7', null, '1111', '5', 'dte', '', null, '', 'closed', null, null, 'I', '2013-06-14', '2013-06-18', '', '', '', '', '1', '2');
INSERT INTO `ORGANIZATION` VALUES ('8', null, '123123', '7', '123', '123', null, 'icon-cancel', 'closed', null, null, 'I', '2013-06-14', '2013-06-18', '123', '123', '', '123123123123123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('9', null, '123123123', '1', '123123', '12312312', null, 'icon-tip', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123123', '123123', '123123', '123123123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('10', null, '123', '2', '123123', '123', null, 'icon-tip', 'closed', null, null, 'A', '2013-06-18', '2013-06-18', '123', '123', '123123', '1231231233123312321123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('11', null, '312312', '5', '12312', '312', null, 'icon-remove', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '3123123', '123', '1231', '23123123123123123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('12', null, '123123', '10', '123', '1231', null, 'icon-end', 'closed', null, null, 'A', '2013-06-18', '2013-06-19', '123123123', '123', '12312', '3123123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('13', null, '1231231', '12', '123123', '23', null, 'icon-remove', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123213', '33123123', '3123', '12312312123123312321', '1', '2');
INSERT INTO `ORGANIZATION` VALUES ('14', null, '123', null, '123', '12312', null, 'icon-back', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '3123123123123123', '123123', '312', '3123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('15', null, '123', null, '1231', '123', null, 'icon-tip', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123123', '123', '123123', '12312312312', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('16', null, '123', null, '123', '123', null, '', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123', '123', '123', '123312123123234234', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('17', null, '123', null, '123', '123', null, '', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123', '123', '132', '132132', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('18', null, '123', '5', '123', '123', null, '', 'closed', null, null, 'I', '2013-06-18', '2013-06-18', '123', '123', '123123', '123123', '2', '1');
INSERT INTO `ORGANIZATION` VALUES ('19', null, '12312', '5', '123', '31', null, '', 'closed', null, null, 'I', '2013-06-19', '2013-06-19', '23123', '12312', '312312', '123123', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('20', null, '123123', '1', '会议室', 'test', null, '', 'closed', null, null, 'A', '2013-06-19', '2013-06-19', '123', '123123123', '123123', '', '23', '23');
INSERT INTO `ORGANIZATION` VALUES ('21', null, 'QWEQ', '1', 'QWE', 'WE', null, '', 'closed', null, null, 'A', '2013-06-19', '2013-06-19', 'QWEQWEQ', 'WEQ', 'WEQWE', '', '1', '1');
INSERT INTO `ORGANIZATION` VALUES ('22', null, '123', null, '123', '123', null, '', 'closed', null, null, 'I', '2013-06-20', '2013-06-21', '123', '123', '123', '123123123', '1', '1');

-- ----------------------------
-- Table structure for `PARAMETER`
-- ----------------------------
DROP TABLE IF EXISTS `PARAMETER`;
CREATE TABLE `PARAMETER` (
  `PARAMETER_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '参数自动ID',
  `MYID` varchar(55) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL COMMENT '参数名称',
  `VALUE` varchar(255) DEFAULT NULL COMMENT '参数值',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `STATE` char(1) DEFAULT NULL COMMENT '是否启用',
  `EDITOR` varchar(100) DEFAULT NULL,
  `EDITOR_TYPE` varchar(100) DEFAULT NULL,
  `GROUP_TYPE` varchar(55) DEFAULT NULL COMMENT '参数类型',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`PARAMETER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='参数资料表';

-- ----------------------------
-- Records of PARAMETER
-- ----------------------------
INSERT INTO `PARAMETER` VALUES ('1', 'sysQty', '商品数量保留位数', '2342', '123123123123123123', 'Y', 'numberbox', 'numberbox', '商品参数', 'A', null, '2013-06-22', '0', '1');
INSERT INTO `PARAMETER` VALUES ('2', 'sysUnit', '商品单位保留位数', '23', '132312312', 'Y', 'numberbox', 'numberbox', '商品参数', 'A', null, '2013-06-22', '0', '1');
INSERT INTO `PARAMETER` VALUES ('3', 'sysCount', '商品合计保留位数', 'true', '123123', 'N', '{\"options\":{\"off\":false,\"on\":true},\"type\":\"checkbox\"}', 'checkbox', '商品参数', 'A', null, '2013-06-22', '0', '1');
INSERT INTO `PARAMETER` VALUES ('4', 'sysPar', '系统参数', '123', '123123123', 'Y', 'numberbox', 'numberbox', '系统设置', 'A', '2013-06-22', '2013-06-24', '1', '1');
INSERT INTO `PARAMETER` VALUES ('5', 'autoAudit', '是否自动审核', 'true', '123123', 'Y', '{\"options\":{\"off\":false,\"on\":true},\"type\":\"checkbox\"}', 'checkbox', '单据设置', 'A', '2013-07-05', '2013-07-05', '1', '1');

-- ----------------------------
-- Table structure for `PERMISSION`
-- ----------------------------
DROP TABLE IF EXISTS `PERMISSION`;
CREATE TABLE `PERMISSION` (
  `PERMISSION_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '权限代码',
  `PID` int(11) DEFAULT NULL,
  `NAME` varchar(100) DEFAULT NULL,
  `PNAME` varchar(100) DEFAULT NULL,
  `SORT` int(11) DEFAULT NULL,
  `MYID` varchar(55) DEFAULT NULL,
  `TYPE` char(1) DEFAULT NULL COMMENT 'F:FUNCTION,O:OPERATION',
  `ISUSED` char(1) DEFAULT NULL COMMENT 'Y,N',
  `STATE` varchar(20) DEFAULT NULL,
  `URL` varchar(200) DEFAULT NULL COMMENT '链接地址',
  `ICONCLS` varchar(100) DEFAULT NULL COMMENT '功能模块',
  `STATUS` char(1) NOT NULL COMMENT '状态',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `CREATED` datetime NOT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`PERMISSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COMMENT='权限资料表';

-- ----------------------------
-- Records of PERMISSION
-- ----------------------------
INSERT INTO `PERMISSION` VALUES ('1', null, '系统管理', '', '0', 'sysMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-sys', 'A', '系统管理', '2013-05-23 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('2', '1', '程式管理', '系统管理', '0', 'funMgr', 'F', 'Y', 'closed', 'jsp/function/functionMain.jsp', 'icon-pro', 'A', '程式管理', '2013-05-23 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('3', null, '公司管理', '', '0', 'compMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-comp', 'A', '公司管理', '2013-05-23 00:00:00', '2013-06-20 15:33:13', '1', '1');
INSERT INTO `PERMISSION` VALUES ('4', '1', '数据库管理', '系统管理', '2', '1123', 'F', 'Y', 'open', 'druid/index.html', 'icon-db', 'A', '123123123123123123', '2013-05-23 00:00:00', '2013-06-20 15:08:45', '1', '1');
INSERT INTO `PERMISSION` VALUES ('6', null, '物料管理', '', '1', 'itemMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-item', 'A', '', '2013-05-23 00:00:00', '2013-08-05 10:09:30', '1', '1');
INSERT INTO `PERMISSION` VALUES ('7', '1', '权限分派', '系统管理', '3', 'funOMgr', 'F', 'Y', 'closed', 'jsp/permission/permissionAssignmentMain.jsp', 'icon-config', 'A', '菜单功能分派', '2013-05-23 00:00:00', '2013-06-22 09:15:57', '1', '1');
INSERT INTO `PERMISSION` VALUES ('8', '6', '物料档案录入', '物料管理', '2', 'itemMain', 'F', 'Y', 'closed', 'jsp/itemManager/itemMain.jsp', 'icon-item', 'A', '', '2013-05-23 00:00:00', '2013-06-27 09:18:02', '1', '1');
INSERT INTO `PERMISSION` VALUES ('10', '3', '公司档案录入', '公司管理', '0', 'compMain', 'F', 'Y', 'closed', 'jsp/company/companyMain.jsp', 'icon-edit', 'A', '公司维护页面', '2013-05-24 00:00:00', '2013-06-27 08:46:23', '1', '1');
INSERT INTO `PERMISSION` VALUES ('11', '10', '公司新增', '公司管理', '1', 'compAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '公司新增', '2013-05-24 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('12', '10', '公司编辑', '公司管理', '2', 'compEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '公司编辑', '2013-05-24 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('13', '10', '公司删除', '公司管理', '3', 'compDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '公司删除', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('14', '10', '公司结束编辑', '公司管理', '4', 'compEndEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'I', '结束编辑', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('15', '10', '公司保存', '公司管理', '5', 'compSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'I', '保存', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('16', '2', '菜单功能新增', '系统管理', '4', 'funAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '菜单功能新增', '2013-05-24 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('17', '2', '菜单功能编辑', '系统管理', '5', 'funEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '菜单功能编辑', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('18', '2', '菜单功能删除', '系统管理', '6', 'funDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '菜单功能删除', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('19', '2', '菜单结束编辑', '系统管理', '7', 'funEndEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'I', '结束编辑', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('20', '2', '菜单保存', '系统管理', '8', 'funSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'I', '保存', '2013-05-24 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('21', '7', '权限分配保存', '系统管理', '9', 'perConfig', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-config', 'A', '权限分配保存', '2013-05-24 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('22', '7', '角色新增', '系统管理', '10', 'roleAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-role', 'A', '角色新增', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('23', '7', '角色编辑', '系统管理', '11', 'roleEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '角色编辑', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('24', '7', '角色删除', '系统管理', '12', 'roleDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '角色删除', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('25', '7', '角色结束编辑', '系统管理', '13', 'roleEndEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'I', '角色结束编辑', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('26', '7', '角色保存', '系统管理', '14', 'roleSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'I', '角色保存', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('27', '1', '用户管理', '系统管理', '15', 'userMain', 'F', 'Y', 'closed', 'jsp/user/userMain.jsp', 'icon-adds', 'A', '用户管理', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('28', '1', '用户角色分派', '系统管理', '16', 'userRoleMgr', 'F', 'Y', 'closed', 'jsp/roleConfig/roleConfigMain.jsp', 'icon-role', 'A', '用户角色分配', '2013-05-27 00:00:00', '2013-06-22 09:16:35', '1', '1');
INSERT INTO `PERMISSION` VALUES ('29', '27', '用户新增', '用户管理', '16', 'userAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '123123123123', '2013-05-27 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('30', '27', '用户编辑', '系统管理', '17', 'userEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('31', '27', '用户删除', '系统管理', '18', 'userDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'A', '', '2013-05-27 00:00:00', '2013-05-27 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('32', '27', '用户结束编辑', '系统管理', '19', 'userEndEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-end', 'I', '', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('33', '27', '用户保存', '系统管理', '20', 'userSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'I', '', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('34', '28', '用户角色分派', '系统管理', '21', 'userRoleConfig', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-config', 'A', '用户角色分派', '2013-05-29 00:00:00', '2013-05-29 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('35', '2', '123', '程式管理', '1', '123', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'I', '123123', '2013-06-13 00:00:00', '2013-06-13 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('36', '27', '用户del', '用户管理', '1', '123', 'F', 'Y', 'closed', '123', 'icon-cancel', 'I', '123123', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('37', '27', '用户delll', '用户管理', '123', '123', 'O', 'Y', 'open', '123', 'icon-undo', 'I', '123123123', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('38', '4', 'ttttt', '数据库管理', '123', '123123123123', 'F', 'N', 'closed', '123', 'icon-undo', 'I', '123123123123123123', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('39', null, '1123123', '', '123', '123123', 'F', 'Y', 'closed', '32123', 'icon-edit', 'I', '123123123123', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('40', '1', '组织管理', '系统管理', '6', 'orgzMgr', 'F', 'Y', 'closed', 'jsp/organization/organizationMain.jsp', 'icon-tip', 'A', '组织管理', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('41', '40', '组织增加', '组织管理', '0', 'orgzAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('42', '40', '组织编辑', '组织管理', '1', 'orgzEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-06-17 00:00:00', '2013-06-17 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('43', '40', '组织删除', '组织管理', '2', 'orgzDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-06-17 00:00:00', '2013-06-17 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('44', '1', '日志管理', '系统管理', '45', 'logMgr', 'F', 'Y', 'closed', 'jsp/logs/logsMain.jsp', 'icon-pro', 'A', '日志管理', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('45', null, '123123', '', '123', '123', 'F', 'Y', 'closed', '123', '', 'I', '123123123', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('46', '1', '123123', '系统管理', '123', '2312', 'F', 'Y', 'closed', '1231', 'icon-back', 'I', '3123123123123', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('47', '44', '日志新增', '日志管理', '1', 'logAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('48', '44', '日志编辑', '日志管理', '2', 'logEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('49', '44', '日志删除', '日志管理', '3', 'logDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'A', '', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('50', '1', '数据字典', '系统管理', '5', 'dicMgr', 'F', 'Y', 'closed', 'jsp/systemCode/systemCodeMain.jsp', 'icon-undo', 'A', '', '2013-06-19 00:00:00', '2013-06-19 14:12:08', '1', '1');
INSERT INTO `PERMISSION` VALUES ('51', '50', '字典新增', '数据字典', '0', 'dicAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('52', '50', '字典编辑', '数据字典', '1', 'dicEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('53', '50', '字典删除', '数据字典', '2', 'dicDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'A', '', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('54', '4', '123', '数据库管理', '123', '123', 'O', 'Y', 'open', '123', 'icon-edit', 'I', '123123123123', '2013-06-20 15:06:08', '2013-06-20 15:13:33', '1', '1');
INSERT INTO `PERMISSION` VALUES ('55', '4', '12312311', '数据库管理', '123', '123', 'O', 'Y', 'closed', '123', '', 'I', '123123123123123123123', '2013-06-20 15:08:01', '2013-06-20 15:10:13', '1', '1');
INSERT INTO `PERMISSION` VALUES ('56', '4', '12312311', '数据库管理', '123123', '123', 'O', 'Y', 'open', '1231', 'icon-back', 'I', '23123123', '2013-06-20 15:10:29', '2013-06-20 15:13:35', '1', '1');
INSERT INTO `PERMISSION` VALUES ('57', null, '阿斯蒂芬', '', '123123', '123', 'F', 'Y', 'closed', '123', 'icon-cancel', 'I', '123123123', '2013-06-20 15:19:50', '2013-06-20 15:20:42', '1', '1');
INSERT INTO `PERMISSION` VALUES ('58', '57', '123', '阿斯蒂芬', '123', '123123', 'F', 'Y', 'closed', '123', '', 'I', '123123', '2013-06-20 15:20:06', '2013-06-20 15:20:37', '1', '1');
INSERT INTO `PERMISSION` VALUES ('59', '1', '参数设置', '系统管理', '12', '11', 'F', 'Y', 'closed', 'jsp/sysParameter/sysParameterMain.jsp', 'icon-remove', 'A', '111', '2013-06-21 12:14:27', '2013-06-21 12:21:13', '1', '1');
INSERT INTO `PERMISSION` VALUES ('60', '59', '结束编辑', '参数设置', '1', 'parEndEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-end', 'A', '', '2013-06-22 09:23:01', '2013-06-22 09:23:01', '1', '1');
INSERT INTO `PERMISSION` VALUES ('61', '59', '删除', '参数设置', '2', 'parDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-06-22 09:23:47', '2013-06-22 09:24:23', '1', '1');
INSERT INTO `PERMISSION` VALUES ('62', '59', '保存', '参数设置', '3', 'parSave', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-save', 'A', '', '2013-06-22 09:25:11', '2013-06-22 09:25:57', '1', '1');
INSERT INTO `PERMISSION` VALUES ('63', '1', 'Bug管理', '系统管理', '9', 'bugMgr', 'F', 'Y', 'closed', 'jsp/bugManager/bugMain.jsp', 'icon-bug', 'A', '', '2013-06-22 09:45:45', '2013-06-22 14:37:19', '1', '1');
INSERT INTO `PERMISSION` VALUES ('64', '63', 'Bug新增', 'Bug管理', '9', 'bugAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-badd', 'A', '123123', '2013-06-22 10:04:54', '2013-06-22 10:43:51', '1', '1');
INSERT INTO `PERMISSION` VALUES ('65', '63', 'Bug编辑', 'Bug管理', '10', 'bugEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-bedit', 'A', '', '2013-06-22 10:05:34', '2013-06-22 10:05:34', '1', '1');
INSERT INTO `PERMISSION` VALUES ('66', '63', 'Bug删除', 'Bug管理', '11', 'bugDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-bdel', 'A', '', '2013-06-22 10:06:12', '2013-06-22 10:06:12', '1', '1');
INSERT INTO `PERMISSION` VALUES ('67', '1', 'test', '系统管理', '1', '123', 'F', 'Y', 'closed', 'jsp/bugManager/MyJsp.jsp', 'icon-bdel', 'I', '', '2013-06-22 15:54:10', '2013-06-22 22:31:02', '1', '1');
INSERT INTO `PERMISSION` VALUES ('68', null, '客户管理', '', '3', 'cstMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-role', 'A', '', '2013-06-24 09:45:45', '2013-06-24 09:45:45', '1', '1');
INSERT INTO `PERMISSION` VALUES ('69', '68', '客户档案录入', '客户管理', '1', 'cstMain', 'F', 'Y', 'closed', 'jsp/cstManager/cstMain.jsp', 'icon-edit', 'A', '123123123123', '2013-06-24 09:46:49', '2013-06-26 16:27:56', '1', '1');
INSERT INTO `PERMISSION` VALUES ('70', '69', '客户新增', '客户管理', '1', 'cstAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-06-26 12:20:09', '2013-06-26 12:20:09', '1', '1');
INSERT INTO `PERMISSION` VALUES ('71', '69', '客户编辑', '客户管理', '2', 'cstEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-ok', 'A', '', '2013-06-26 12:20:46', '2013-06-26 12:21:22', '1', '1');
INSERT INTO `PERMISSION` VALUES ('72', '69', '客户删除', '客户管理', '3', 'cstDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-06-26 12:22:05', '2013-06-26 12:22:05', '1', '1');
INSERT INTO `PERMISSION` VALUES ('73', '69', '客户联系人编辑', '客户管理', '4', 'cstConEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-config', 'A', '', '2013-06-26 12:23:15', '2013-06-26 12:23:15', '1', '1');
INSERT INTO `PERMISSION` VALUES ('74', null, '供应商管理', '', '5', 'supMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-role', 'A', '', '2013-06-26 12:27:50', '2013-06-26 12:29:22', '1', '1');
INSERT INTO `PERMISSION` VALUES ('75', '74', '供应商档案录入', '供应商管理', '1', 'supMain', 'F', 'Y', 'closed', 'jsp/supManager/supMain.jsp', 'icon-tip', 'A', '', '2013-06-26 12:28:55', '2013-06-26 16:28:17', '1', '1');
INSERT INTO `PERMISSION` VALUES ('76', '75', '供应商新增', '供应商管理', '1', 'supAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-06-26 12:30:25', '2013-06-26 12:30:25', '1', '1');
INSERT INTO `PERMISSION` VALUES ('77', '75', '供应商编辑', '供应商管理', '2', 'supEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-ok', 'A', '', '2013-06-26 12:31:10', '2013-06-26 12:31:10', '1', '1');
INSERT INTO `PERMISSION` VALUES ('78', '75', '供应商删除', '供应商管理', '3', 'supDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-06-26 12:31:59', '2013-06-26 14:05:55', '1', '1');
INSERT INTO `PERMISSION` VALUES ('79', '75', '供应商联系人编辑', '供应商管理', '4', 'supConEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-config', 'A', '', '2013-06-26 14:06:44', '2013-06-26 15:45:59', '1', '1');
INSERT INTO `PERMISSION` VALUES ('80', '8', '商品新增', '商品管理', '1', 'itemAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-06-26 15:37:38', '2013-06-26 15:37:38', '1', '1');
INSERT INTO `PERMISSION` VALUES ('81', '8', '商品编辑', '商品管理', '2', 'itemEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-ok', 'A', '', '2013-06-26 15:38:10', '2013-06-26 15:38:21', '1', '1');
INSERT INTO `PERMISSION` VALUES ('82', '8', '商品删除', '商品管理', '3', 'itemDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-cancel', 'A', '', '2013-06-26 15:38:59', '2013-06-26 15:39:18', '1', '1');
INSERT INTO `PERMISSION` VALUES ('83', '8', '商品导入', '商品管理', '4', 'itemImport', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-excel', 'I', '', '2013-06-26 15:41:54', '2013-06-26 16:30:12', '1', '1');
INSERT INTO `PERMISSION` VALUES ('84', '68', '客户档案导入', '客户管理', '2', 'cstImport', 'F', 'Y', 'closed', 'sdf', 'icon-excel', 'A', '', '2013-06-26 16:27:14', '2013-06-26 16:27:14', '1', '1');
INSERT INTO `PERMISSION` VALUES ('85', '74', '供应商档案导入', '供应商管理', '2', 'supImport', 'F', 'Y', 'closed', 'sdf', 'icon-excel', 'A', '', '2013-06-26 16:29:04', '2013-06-26 16:29:04', '1', '1');
INSERT INTO `PERMISSION` VALUES ('86', '6', '物料档案导入', '物料管理', '2', 'itemImport', 'F', 'Y', 'closed', 'jsp/docView/view.jsp', 'icon-excel', 'A', '', '2013-06-26 16:31:43', '2013-07-12 12:14:15', '1', '1');
INSERT INTO `PERMISSION` VALUES ('87', null, '项目管理', '', '5', 'projectMgr', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-sys', 'A', '', '2013-06-27 12:02:43', '2013-06-27 12:02:43', '1', '1');
INSERT INTO `PERMISSION` VALUES ('88', '87', '项目档案录入', '项目管理', '1', 'projectMain', 'F', 'Y', 'closed', 'jsp/project/projectMain.jsp', 'icon-adds', 'A', '', '2013-06-27 12:03:59', '2013-06-27 12:03:59', '1', '1');
INSERT INTO `PERMISSION` VALUES ('89', '88', '项目新增', '项目档案录入', '1', 'projectAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-06-27 12:04:39', '2013-06-27 12:04:53', '1', '1');
INSERT INTO `PERMISSION` VALUES ('90', '88', '项目编辑', '项目档案录入', '2', 'projectEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-edit', 'A', '', '2013-06-27 12:05:28', '2013-06-27 12:05:28', '1', '1');
INSERT INTO `PERMISSION` VALUES ('91', '88', '项目删除', '项目档案录入', '3', 'projectDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-ok', 'A', '', '2013-06-27 12:06:08', '2013-07-01 10:59:53', '1', '1');
INSERT INTO `PERMISSION` VALUES ('92', null, '数据备份', '', '7', 'dbBackUp', 'F', 'Y', 'closed', 'javascript:void(0);', 'icon-db', 'A', '', '2013-06-28 13:32:09', '2013-06-28 13:32:22', '1', '1');
INSERT INTO `PERMISSION` VALUES ('93', '92', '数据备份', '数据备份', '1', 'dbBackUpMain', 'F', 'Y', 'closed', 'jsp/dbBackUp/dbBackUpMain.jsp', 'icon-end', 'A', '', '2013-06-28 13:34:21', '2013-06-28 13:50:29', '1', '1');
INSERT INTO `PERMISSION` VALUES ('94', '93', '手动备份', '数据备份', '1', 'dbBackUpHand', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-pro', 'A', '', '2013-06-28 13:37:27', '2013-07-11 11:23:27', '1', '1');
INSERT INTO `PERMISSION` VALUES ('95', '93', '定时备份', '数据备份', '2', 'dbBackUpTime', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-config', 'A', '', '2013-06-28 13:38:19', '2013-06-28 13:38:19', '1', '1');
INSERT INTO `PERMISSION` VALUES ('96', '74', '采购单录入', '供应商管理', '3', 'ordPurMgr', 'F', 'Y', 'closed', 'jsp/orderPurchase/orderPurchaseMain.jsp', 'icon-adds', 'A', '', '2013-07-01 10:58:03', '2013-07-01 10:58:03', '1', '1');
INSERT INTO `PERMISSION` VALUES ('97', '96', '采购单新增', '采购单录入', '1', 'ordPurAdd', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-adds', 'A', '', '2013-07-01 10:58:58', '2013-07-01 10:58:58', '1', '1');
INSERT INTO `PERMISSION` VALUES ('98', '96', '采购单编辑', '采购单录入', '2', 'ordPurEdit', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-ok', 'A', '', '2013-07-01 10:59:44', '2013-07-01 11:01:00', '1', '1');
INSERT INTO `PERMISSION` VALUES ('99', '96', '采购单删除', '采购单录入', '3', 'ordPurDel', 'O', 'Y', 'open', 'javascript:void(0);', 'icon-remove', 'A', '', '2013-07-01 11:00:44', '2013-07-01 11:00:44', '1', '1');
INSERT INTO `PERMISSION` VALUES ('100', '68', '客户订单录入', '客户管理', '3', 'cstOrderMgr', 'F', 'Y', 'closed', 'jsp/orderSale/orderSaleMain.jsp', 'icon-end', 'A', '', '2013-07-08 15:20:54', '2013-07-08 15:23:53', '1', '1');

-- ----------------------------
-- Table structure for `PLAN_PURCHASE`
-- ----------------------------
DROP TABLE IF EXISTS `PLAN_PURCHASE`;
CREATE TABLE `PLAN_PURCHASE` (
  `PLAN_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '采购计划编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '采购单自编码',
  `DATE` date DEFAULT NULL COMMENT '计划单日期',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '计划类型编码',
  `CLASS_NAME` varchar(55) DEFAULT NULL COMMENT '计划类型名称',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(100) DEFAULT NULL COMMENT '项目名称',
  `AMOUNT` float DEFAULT NULL COMMENT '计划未税总价',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '项目描述',
  `SOURCE_OBJECT` varchar(55) DEFAULT NULL COMMENT '来源对象',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '来源对象编码',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` date DEFAULT NULL COMMENT '审核日期',
  `AUDITE_STATUS` char(1) DEFAULT NULL COMMENT '审核状态',
  `AMOUNT_TAX` double(18,8) DEFAULT NULL COMMENT '含税总价',
  PRIMARY KEY (`PLAN_ID`),
  KEY `FK_PLAN_PURCHASE1` (`CLASS_ID`),
  KEY `FK_PLAN_PURCHASE2` (`PROJECT_ID`),
  KEY `FK_PLAN_PURCHASE3` (`ATTACHMENT_ID`),
  KEY `FK_PLAN_PURCHASE4` (`ENTER_ORGANIZATION_ID`),
  KEY `FK_PLAN_PURCHASE5` (`AUDITE_ID`),
  KEY `FK_PLAN_PURCHASE6` (`ENTER_ID`),
  KEY `FK_PLAN_PURCHASE7` (`AUDITE_ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PLAN_PURCHASE
-- ----------------------------

-- ----------------------------
-- Table structure for `PLAN_PURCHASE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `PLAN_PURCHASE_LINE`;
CREATE TABLE `PLAN_PURCHASE_LINE` (
  `PLAN_LID` int(11) NOT NULL AUTO_INCREMENT,
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位编码',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(100) DEFAULT NULL COMMENT '品牌名称',
  `PLAN_QTY` int(11) DEFAULT NULL COMMENT '计划数量',
  `PRICE_TAX` double(18,8) DEFAULT NULL COMMENT '含税价格',
  `AMOUNT` double(18,8) DEFAULT NULL COMMENT '未税总价',
  `PRICE` double(18,8) DEFAULT NULL COMMENT '未税单价',
  `AMOUNT_TAX` double(18,8) DEFAULT NULL COMMENT '含税总价',
  `TAX` double(18,8) DEFAULT NULL COMMENT '税金',
  `PLAN_ID` int(11) DEFAULT NULL COMMENT '计划编码',
  `TAX_RATE` int(11) DEFAULT NULL COMMENT '税率',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  PRIMARY KEY (`PLAN_LID`),
  KEY `PLAN_PURCHASE_LINE1` (`ITEM_ID`),
  KEY `PLAN_PURCHASE_LINE2` (`BRAND_ID`),
  KEY `PLAN_PURCHASE_LINE3` (`PLAN_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PLAN_PURCHASE_LINE
-- ----------------------------

-- ----------------------------
-- Table structure for `PROJECT`
-- ----------------------------
DROP TABLE IF EXISTS `PROJECT`;
CREATE TABLE `PROJECT` (
  `PROJECT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目编码',
  `MYID` varchar(55) DEFAULT NULL,
  `NAME` varchar(200) DEFAULT NULL COMMENT '项目名称',
  `SETUP_DATE` date DEFAULT NULL COMMENT '立项日期',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '项目类型编码',
  `CLASS_NAME` varchar(200) DEFAULT NULL COMMENT '项目类型名称',
  `CUSTOMER_ID` int(11) DEFAULT NULL COMMENT '客户编码',
  `CUSTOMER_MYID` varchar(55) DEFAULT NULL COMMENT '客户自编码',
  `TEL_NO` varchar(20) DEFAULT NULL COMMENT '联系电话',
  `CONTACTS` varchar(20) DEFAULT NULL COMMENT '联系人',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机',
  `SOURCE_ID` int(11) DEFAULT NULL COMMENT '项目来源编码',
  `SOURCE_NAME` varchar(200) DEFAULT NULL COMMENT '项目来源名称',
  `BUDGET` varchar(55) DEFAULT NULL COMMENT '预算',
  `START_TIME` date DEFAULT NULL COMMENT '开始时间',
  `END_TIME` date DEFAULT NULL COMMENT '完成时间',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '项目描述',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `SHARED` varchar(200) DEFAULT NULL COMMENT '共享人(以逗号分隔)',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `MANAGER_ID` int(11) DEFAULT NULL COMMENT '项目负责人编码',
  `MANAGER_NAME` varchar(55) DEFAULT NULL COMMENT '项目负责人名称',
  `MANAGER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '项目负责人组织编码',
  `MANAGER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '项目负责人组织名称',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL,
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`PROJECT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='项目资料';

-- ----------------------------
-- Records of PROJECT
-- ----------------------------
INSERT INTO `PROJECT` VALUES ('1', '123', '123', null, '3', '中型项目', '22', '12312', '', '', '', null, '', '', null, null, '', null, null, null, '23', 'test', null, null, '2013-06-27', '2013-08-05', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('2', '123123', '123', null, null, '', null, null, '', '', null, null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-06-27', 'I', '1', '1');
INSERT INTO `PROJECT` VALUES ('3', '3123', '12312', '2013-06-20', '123', '', '22', '', '123', '123', null, '123', '', '123', '2013-07-04', '2013-06-27', '123123', null, null, null, '123', '', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('4', '123', '123', null, '123', '', null, '', '', '', null, null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('5', '123', '123', null, null, '', null, '', '', '', '123123', null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('6', '123', '123', null, null, '', '23', '123123123', '', '', '123123', null, '', '', null, null, '', null, null, null, '2', 'root', null, null, '2013-06-27', '2013-07-02', 'I', '1', '1');
INSERT INTO `PROJECT` VALUES ('7', '123123', '123', '2013-06-27', '3', '中型项目', '26', '123', '123', '123123123', '123123', '7', '熟人介绍', '123', '2013-06-27', '2013-06-27', '123123', null, null, null, '24', 'ee', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('8', '123', '123', null, null, '', null, '', '', '', '', null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-07-08', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('9', '123123', '123123', null, null, '', null, '', '', '', '', null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-07-08', 'A', '1', '1');
INSERT INTO `PROJECT` VALUES ('10', '23123123', '1231', null, null, '', null, '', '', '', '', null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-06-27', '2013-07-02', 'I', '1', '1');
INSERT INTO `PROJECT` VALUES ('11', '12323123', '123123', null, null, '', null, '', '', '', '', null, '', '', null, null, '', null, null, null, null, '', null, null, '2013-07-01', '2013-07-02', 'I', '1', '1');

-- ----------------------------
-- Table structure for `PROJECT_FOLLOW`
-- ----------------------------
DROP TABLE IF EXISTS `PROJECT_FOLLOW`;
CREATE TABLE `PROJECT_FOLLOW` (
  `FOLLOW_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '项目跟踪编码',
  `PROJECT_ID` int(11) DEFAULT NULL,
  `PROJECT_NAME` varchar(100) DEFAULT NULL,
  `CUSTOMER_ID` int(11) DEFAULT NULL,
  `CUSTOMER_NAME` varchar(200) DEFAULT NULL,
  `CONTCAT_DATE` date DEFAULT NULL,
  `CONTCAT` varchar(55) DEFAULT NULL,
  `FOLLOW_CLASS` int(11) DEFAULT NULL COMMENT '跟踪类型  followClass',
  `CLASS_NAME` varchar(55) DEFAULT NULL,
  `FOLLOW_STATUS` int(1) DEFAULT NULL COMMENT '跟踪状态  followStatus',
  `STATUS_NAME` varchar(55) DEFAULT NULL,
  `PROGRESS` int(3) DEFAULT NULL COMMENT '进度',
  `CONTENT` varchar(2000) DEFAULT NULL COMMENT '内容',
  `DESCRIPTION` varchar(2000) DEFAULT NULL,
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  PRIMARY KEY (`FOLLOW_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of PROJECT_FOLLOW
-- ----------------------------
INSERT INTO `PROJECT_FOLLOW` VALUES ('1', '1', null, null, null, '2013-06-03', '', '75', '一般跟踪', '79', '已签约', '15', '123', '123', null, null, '2013-06-27', '2013-08-05', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('2', '2', null, null, null, '2013-06-27', '123123', null, '12', null, '312', '12', '23', '123', null, null, '2013-06-27', '2013-06-27', 'I', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('3', '7', null, null, null, '2013-06-20', '123', '76', '重点跟踪', null, '123', '123', '123', '123', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('4', '8', null, null, null, '2013-06-20', '123123', '75', '一般跟踪', null, '123', '123', '123', '123', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('5', '8', null, null, null, '2013-06-20', '123', '75', '一般跟踪', null, '123', '123', '123', '123', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('6', '8', null, null, null, '2013-06-27', '123', '76', '重点跟踪', '80', '已下单', '1', '123', '123', null, null, '2013-06-27', '2013-07-08', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('7', '9', null, null, null, '2013-06-20', '123', '76', '重点跟踪', null, '123', '123', '123', '123', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('8', '9', null, null, null, '2013-06-12', '123123', '75', '一般跟踪', null, '123', '123', '123', '3123', null, null, '2013-06-27', '2013-06-27', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('9', '9', null, null, null, '2013-06-18', '123', '75', '一般跟踪', '79', '已签约', '74', '123', '123', null, null, '2013-06-27', '2013-07-08', 'A', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('10', '10', null, null, null, '2013-06-20', '123123', '76', '重点跟踪', '79', '已签约', '123', '123', '123', null, null, '2013-06-27', '2013-06-27', 'I', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('11', '10', null, null, null, '2013-06-12', '123123', '76', '重点跟踪', '80', '已下单', '75', '123', '123', null, null, '2013-06-27', '2013-07-02', 'I', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('12', '10', null, null, null, '2013-06-28', '123', '75', '一般跟踪', '79', '已签约', '100', '123', '123', null, null, '2013-06-27', '2013-07-02', 'I', '1', '1', null, null, null, null);
INSERT INTO `PROJECT_FOLLOW` VALUES ('13', '11', null, null, null, '2013-07-10', '3123', '76', '重点跟踪', '79', '已签约', '44', '123', '123', null, null, '2013-07-01', '2013-07-02', 'I', '1', '1', null, null, null, null);

-- ----------------------------
-- Table structure for `PROVINCE`
-- ----------------------------
DROP TABLE IF EXISTS `PROVINCE`;
CREATE TABLE `PROVINCE` (
  `PROVINCE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '省份',
  `AREA_ID` int(11) NOT NULL,
  `NAME` varchar(200) NOT NULL,
  `CREATED` date NOT NULL,
  `LASTMOD` date DEFAULT NULL,
  `STATUS` char(1) NOT NULL DEFAULT 'A',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`PROVINCE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='省份资料';

-- ----------------------------
-- Records of PROVINCE
-- ----------------------------
INSERT INTO `PROVINCE` VALUES ('1', '0', '江苏', '2013-06-25', '2013-06-25', 'A', '1', '1');
INSERT INTO `PROVINCE` VALUES ('2', '0', '浙江', '2013-06-25', '2013-06-25', 'A', '1', '1');

-- ----------------------------
-- Table structure for `QUOTE_PURCHASE`
-- ----------------------------
DROP TABLE IF EXISTS `QUOTE_PURCHASE`;
CREATE TABLE `QUOTE_PURCHASE` (
  `QUOTE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '报价编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '报价自编码',
  `DATE` date DEFAULT NULL COMMENT '报价日期',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '报价类型  暂时不用',
  `CLASS_NAME` varchar(55) DEFAULT NULL,
  `ENQUIRY_ID` int(11) DEFAULT NULL COMMENT '询价编码',
  `ENQUIRY_MYID` varchar(55) DEFAULT NULL COMMENT '询价自编码',
  `PROJECT_ID` int(11) DEFAULT NULL COMMENT '项目编码',
  `PROJECT_NAME` varchar(200) DEFAULT NULL COMMENT '项目自编码',
  `SUPLIER_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `SUPLIER_NAME` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `SUPLIER_MYID` varchar(55) DEFAULT NULL COMMENT '供应商自编码',
  `CONTACT_NAME` varchar(55) DEFAULT NULL COMMENT '联系人名称',
  `SUPLIER_TEL` varchar(55) DEFAULT NULL COMMENT '公司电话',
  `CONTACT_MOBILE` varchar(20) DEFAULT NULL COMMENT '联系人手机',
  `CONTACT_TEL` varchar(20) DEFAULT NULL COMMENT '联系人电话',
  `CONTACT_FAX` varchar(20) DEFAULT NULL COMMENT '联系人传真',
  `START_DATE` date DEFAULT NULL COMMENT '生效日期',
  `END_DATE` date DEFAULT NULL COMMENT '截止日期',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `AMOUNT` float DEFAULT NULL COMMENT '总价未税',
  `AMOUNT_TAX` float DEFAULT NULL COMMENT '总价含税',
  `QUOTE_DESC` varchar(2000) DEFAULT NULL COMMENT '报价说明',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `SOURCE_OBJECT` int(11) DEFAULT NULL COMMENT '来源对像 1:询价单',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '对象编码',
  `QUOTE_UID` int(11) DEFAULT NULL COMMENT '询价人编码',
  `QUOTE_NAME` varchar(55) DEFAULT NULL COMMENT '询价人名称',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `QUOTE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '询价人部门',
  `QUOTE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '询价人部门名称',
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` date DEFAULT NULL COMMENT '审核日期',
  PRIMARY KEY (`QUOTE_ID`),
  KEY `FK_QUOTE_PURCHASE1` (`CLASS_ID`),
  KEY `FK_QUOTE_PURCHASE2` (`ENQUIRY_ID`),
  KEY `FK_QUOTE_PURCHASE3` (`PROJECT_ID`),
  KEY `FK_QUOTE_PURCHASE4` (`SUPLIER_ID`),
  KEY `FK_QUOTE_PURCHASE5` (`ATTACHMENT_ID`),
  KEY `FK_QUOTE_PURCHASE6` (`QUOTE_UID`),
  KEY `FK_QUOTE_PURCHASE7` (`QUOTE_ORGANIZATION_ID`),
  KEY `FK_QUOTE_PURCHASE8` (`ENTER_ID`),
  KEY `FK_QUOTE_PURCHASE9` (`ENTER_ORGANIZATION_ID`),
  KEY `FK_QUOTE_PURCHASE10` (`AUDITE_ID`),
  KEY `FK_QUOTE_PURCHASE11` (`AUDITE_ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QUOTE_PURCHASE
-- ----------------------------

-- ----------------------------
-- Table structure for `QUOTE_PURCHASE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `QUOTE_PURCHASE_LINE`;
CREATE TABLE `QUOTE_PURCHASE_LINE` (
  `QUOTE_LID` int(11) NOT NULL AUTO_INCREMENT,
  `QUOTE_ID` int(11) DEFAULT NULL COMMENT '请购单编码',
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `ITEM_NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `QTY` int(11) DEFAULT NULL COMMENT '请购数量',
  `PRICE_TAX` float DEFAULT NULL COMMENT '含税价格',
  `AMOUNT` float DEFAULT NULL COMMENT '未税总价',
  `PRICE` float DEFAULT NULL COMMENT '未税单价',
  `AMOUNT_TAX` float DEFAULT NULL COMMENT '含税总价',
  `TAX` float DEFAULT NULL COMMENT '税金',
  `SALE_ORDER_ID` int(11) DEFAULT NULL COMMENT '销售订单编码',
  `SALE_ORDER_MYID` varchar(55) DEFAULT NULL COMMENT '销售订单自编码',
  `SALE_ID` int(11) DEFAULT NULL COMMENT '销售单编码',
  `SALE_MYID` varchar(55) DEFAULT NULL COMMENT '销售单自编码',
  `SALE_CONTRACT_ID` int(11) DEFAULT NULL COMMENT '销售合同编码',
  `SALE_CONTRACT_MYID` varchar(55) DEFAULT NULL COMMENT '销售合同自编码',
  `PLAN_ID` int(11) DEFAULT NULL COMMENT '采购计划编码',
  `PLAN_MYID` varchar(55) DEFAULT NULL COMMENT '采购计划自编码',
  `HAVE_ORDER` int(1) DEFAULT NULL COMMENT '是否下单 1:已下单，2:未下单',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  PRIMARY KEY (`QUOTE_LID`),
  KEY `FK_REQUISITION_PURCHASE_LINE1` (`ITEM_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE2` (`BRAND_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE3` (`PLAN_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE4` (`QUOTE_ID`),
  CONSTRAINT `fk_qlt` FOREIGN KEY (`QUOTE_ID`) REFERENCES `QUOTE_PURCHASE` (`QUOTE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of QUOTE_PURCHASE_LINE
-- ----------------------------

-- ----------------------------
-- Table structure for `REQUISITION_PURCHASE`
-- ----------------------------
DROP TABLE IF EXISTS `REQUISITION_PURCHASE`;
CREATE TABLE `REQUISITION_PURCHASE` (
  `REQ_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '请购单编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '请购单自编码',
  `DATE` date DEFAULT NULL COMMENT '请购日期',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '采购类型',
  `CLASS_NAME` varchar(55) DEFAULT NULL COMMENT '采购类型名称',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `WAREHOUSE_ID` int(11) DEFAULT NULL COMMENT '仓库编码',
  `SOURCE_OBJECT` char(2) DEFAULT NULL COMMENT 'P:采购计划，SO:表示销售订单',
  `OBJECT_ID` int(11) DEFAULT NULL COMMENT '来源单据编码',
  `CUSTOMER_ID` int(11) DEFAULT NULL COMMENT '客户编码',
  `CUSTOMER_NAME` varchar(200) DEFAULT NULL COMMENT '客户名称',
  `AMOUNT` double DEFAULT NULL COMMENT '未税总价',
  `AMOUNT_TAX` double DEFAULT NULL COMMENT '含税总价',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `PRINT_COUNT` int(11) DEFAULT NULL COMMENT '打印次数',
  `REQUISITION_ID` int(11) DEFAULT NULL COMMENT '请购人编码',
  `REQUISITION_NAME` varchar(55) DEFAULT NULL COMMENT '请购人名称',
  `REQUISITION_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '请购组织编码',
  `REQUISITION_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '请购组织名称',
  `ENTER_ID` int(11) DEFAULT NULL COMMENT '录入人编码',
  `ENTER_NAME` varchar(55) DEFAULT NULL COMMENT '录入人名称',
  `ENTER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '录入人组织编码',
  `ENTER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '录入人组织名称',
  `ENTER_DATE` date DEFAULT NULL COMMENT '录入日期',
  `AUDITE_ID` int(11) DEFAULT NULL COMMENT '审核人编码',
  `AUDITE_NAME` varchar(55) DEFAULT NULL COMMENT '审核人名称',
  `AUDITE_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '审核人组织编码',
  `AUDITE_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '审核人组织名称',
  `AUDITE_DATE` date DEFAULT NULL COMMENT '审核日期',
  `AUDITE_STATUS` char(1) DEFAULT NULL COMMENT '审核状态',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  `WAREHOUSE_NAME` varchar(55) DEFAULT NULL COMMENT '仓库名称',
  PRIMARY KEY (`REQ_ID`),
  KEY `FK_REQUISITION_PURCHASE1` (`CLASS_ID`),
  KEY `FK_REQUISITION_PURCHASE2` (`WAREHOUSE_ID`),
  KEY `FK_REQUISITION_PURCHASE3` (`CUSTOMER_ID`),
  KEY `FK_REQUISITION_PURCHASE4` (`ATTACHMENT_ID`),
  KEY `FK_REQUISITION_PURCHASE5` (`REQUISITION_ID`),
  KEY `FK_REQUISITION_PURCHASE6` (`REQUISITION_ORGANIZATION_ID`),
  KEY `FK_REQUISITION_PURCHASE7` (`ENTER_ID`),
  KEY `FK_REQUISITION_PURCHASE8` (`ENTER_ORGANIZATION_ID`),
  KEY `FK_REQUISITION_PURCHASE9` (`AUDITE_ID`),
  KEY `FK_REQUISITION_PURCHASE10` (`AUDITE_ORGANIZATION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of REQUISITION_PURCHASE
-- ----------------------------

-- ----------------------------
-- Table structure for `REQUISITION_PURCHASE_LINE`
-- ----------------------------
DROP TABLE IF EXISTS `REQUISITION_PURCHASE_LINE`;
CREATE TABLE `REQUISITION_PURCHASE_LINE` (
  `REQUISITION_LID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUISITION_ID` int(11) DEFAULT NULL COMMENT '请购单编码',
  `ITEM_ID` int(11) DEFAULT NULL COMMENT '商品编码',
  `MYID` varchar(55) DEFAULT NULL COMMENT '商品自编码',
  `ITEM_NAME` varchar(200) DEFAULT NULL COMMENT '商品名称',
  `SPEC` varchar(200) DEFAULT NULL COMMENT '规格',
  `UNIT` varchar(55) DEFAULT NULL COMMENT '单位',
  `BRAND_ID` int(11) DEFAULT NULL COMMENT '品牌编码',
  `BRAND_NAME` varchar(200) DEFAULT NULL COMMENT '品牌名称',
  `REQUISITION_QTY` int(11) DEFAULT NULL COMMENT '请购数量',
  `PRICE_TAX` float DEFAULT '0' COMMENT '含税价格',
  `AMOUNT` float DEFAULT '0' COMMENT '未税总价',
  `PRICE` float DEFAULT '0' COMMENT '未税单价',
  `AMOUNT_TAX` float DEFAULT '0' COMMENT '含税总价',
  `TAX` float DEFAULT '0' COMMENT '税金',
  `DELIVERY_PERIOD` date DEFAULT NULL COMMENT '交货期限',
  `HAVEORDER_QTY` int(11) DEFAULT NULL COMMENT '已下订单数量',
  `SALE_ORDER_ID` int(11) DEFAULT NULL COMMENT '销售订单编码',
  `SALE_ORDER_MYID` varchar(55) DEFAULT NULL COMMENT '销售订单自编码',
  `NEVERORDER_QTY` int(11) DEFAULT NULL COMMENT '未下单数量',
  `SALE_ID` int(11) DEFAULT NULL COMMENT '销售单编码',
  `SALE_MYID` varchar(55) DEFAULT NULL COMMENT '销售单自编码',
  `SALE_CONTRACT_ID` int(11) DEFAULT NULL COMMENT '销售合同编码',
  `SALE_CONTRACT_MYID` varchar(55) DEFAULT NULL COMMENT '销售合同自编码',
  `PLAN_ID` int(11) DEFAULT NULL COMMENT '采购计划编码',
  `PLAN_MYID` varchar(55) DEFAULT NULL COMMENT '采购计划自编码',
  `HAVE_ENQUIRY` int(1) DEFAULT NULL COMMENT '是否询价 1:已询价，2:未询价',
  `DESCRIPTION` varchar(1000) DEFAULT NULL COMMENT '备注',
  `CREATED` date DEFAULT NULL COMMENT '记录创造时间',
  `LASTMOD` date DEFAULT NULL COMMENT '记录修改时间',
  `STATUS` char(1) DEFAULT NULL COMMENT '记录状态',
  `CREATER` int(11) DEFAULT NULL COMMENT '创造人编码',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改编码',
  PRIMARY KEY (`REQUISITION_LID`),
  KEY `FK_REQUISITION_PURCHASE_LINE1` (`ITEM_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE2` (`BRAND_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE3` (`PLAN_ID`),
  KEY `FK_REQUISITION_PURCHASE_LINE4` (`REQUISITION_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of REQUISITION_PURCHASE_LINE
-- ----------------------------

-- ----------------------------
-- Table structure for `ROLE`
-- ----------------------------
DROP TABLE IF EXISTS `ROLE`;
CREATE TABLE `ROLE` (
  `ROLE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '角色编码',
  `NAME` varchar(55) DEFAULT NULL COMMENT '角色名称',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '角色描述',
  `STATUS` char(1) DEFAULT NULL COMMENT '角色状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造时间',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改时间',
  `SORT` int(10) DEFAULT NULL COMMENT '排序',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='系统角色资料';

-- ----------------------------
-- Records of ROLE
-- ----------------------------
INSERT INTO `ROLE` VALUES ('1', '系统管理角色', '管理角色', 'A', '2013-05-20 00:00:00', '2013-06-14 00:00:00', '1', '1', '1');
INSERT INTO `ROLE` VALUES ('2', '角色2', '角色2', 'A', '2013-05-20 00:00:00', '2013-06-14 00:00:00', '1', '1', '1');
INSERT INTO `ROLE` VALUES ('3', '角色311', '角色311', 'A', '2013-05-23 00:00:00', '2013-06-14 00:00:00', '22', '1', '1');
INSERT INTO `ROLE` VALUES ('4', '1111', '11111', 'A', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '3', '1', '1');
INSERT INTO `ROLE` VALUES ('5', 'akkeiei', 'eeee22222222222222', 'I', '2013-05-27 00:00:00', '2013-06-20 19:46:58', '4', '1', '1');
INSERT INTO `ROLE` VALUES ('6', 'ee', 'ee', 'I', '2013-05-27 00:00:00', '2013-06-14 00:00:00', '5', '1', '1');
INSERT INTO `ROLE` VALUES ('7', '11122ss', '123123', 'I', '2013-06-04 00:00:00', '2013-06-14 00:00:00', '6', '1', '1');
INSERT INTO `ROLE` VALUES ('8', 'rtyreyerrty123', 'asdasd', 'I', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '123', '1', '1');
INSERT INTO `ROLE` VALUES ('10', 'test', '测试角色', 'A', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '3', '1', '1');
INSERT INTO `ROLE` VALUES ('11', 'rwerwer', '3123123112312312', 'I', '2013-06-19 00:00:00', '2013-06-19 00:00:00', '12312', '1', '1');

-- ----------------------------
-- Table structure for `ROLE_PERMISSION`
-- ----------------------------
DROP TABLE IF EXISTS `ROLE_PERMISSION`;
CREATE TABLE `ROLE_PERMISSION` (
  `ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ROLE_ID` int(11) NOT NULL COMMENT '角色代码',
  `PERMISSION_ID` int(11) NOT NULL COMMENT '权限代码',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`),
  KEY `FK_ROLE_PERMISSION1` (`ROLE_ID`),
  KEY `FK_ROLE_PERMISSION2` (`PERMISSION_ID`),
  CONSTRAINT `FK_ROLE_PERMISSION1` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLE` (`ROLE_ID`),
  CONSTRAINT `FK_ROLE_PERMISSION2` FOREIGN KEY (`PERMISSION_ID`) REFERENCES `PERMISSION` (`PERMISSION_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=275 DEFAULT CHARSET=utf8 COMMENT='角色权限资料';

-- ----------------------------
-- Records of ROLE_PERMISSION
-- ----------------------------
INSERT INTO `ROLE_PERMISSION` VALUES ('165', '2', '1', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('166', '2', '2', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('167', '2', '16', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('168', '2', '17', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('169', '2', '18', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('170', '2', '19', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('171', '2', '20', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('172', '2', '4', 'A', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('173', '4', '1', 'I', '2013-06-14 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('174', '4', '4', 'I', '2013-06-14 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('175', '5', '1', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('176', '5', '2', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('177', '5', '16', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('178', '5', '17', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('179', '5', '18', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('180', '5', '4', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('181', '5', '7', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('182', '5', '21', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('183', '5', '22', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('184', '5', '23', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('185', '5', '24', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('186', '5', '27', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('187', '5', '29', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('188', '5', '30', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('189', '5', '31', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('190', '5', '28', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('191', '5', '34', 'I', '2013-06-14 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('192', '1', '1', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('193', '1', '2', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('194', '1', '16', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('195', '1', '17', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('196', '1', '18', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('197', '1', '7', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('198', '1', '21', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('199', '1', '22', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('200', '1', '23', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('201', '1', '24', 'A', '2013-06-17 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('202', '1', '27', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('203', '1', '29', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('204', '1', '30', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('205', '1', '31', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('206', '1', '28', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('207', '1', '34', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('208', '1', '40', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('209', '1', '41', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('210', '1', '42', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('211', '1', '43', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('212', '4', '2', 'I', '2013-06-18 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('213', '4', '16', 'I', '2013-06-18 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('214', '4', '17', 'I', '2013-06-18 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('215', '4', '18', 'I', '2013-06-18 00:00:00', '2013-06-19 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('216', '2', '7', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('217', '2', '21', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('218', '2', '22', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('219', '2', '23', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('220', '2', '24', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('221', '3', '1', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('222', '3', '2', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('223', '3', '16', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('224', '3', '17', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('225', '3', '18', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('226', '3', '4', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('227', '3', '7', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('228', '3', '21', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('229', '3', '22', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('230', '3', '23', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('231', '3', '24', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('232', '1', '4', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('233', '1', '44', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('234', '1', '3', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('235', '1', '10', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('236', '1', '11', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('237', '1', '12', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('238', '1', '13', 'A', '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('239', '10', '1', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('240', '10', '2', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('241', '10', '16', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('242', '10', '17', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('243', '10', '18', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('244', '10', '4', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('245', '10', '7', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('246', '10', '21', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('247', '10', '22', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('248', '10', '23', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('249', '10', '24', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('250', '10', '27', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('251', '10', '29', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('252', '10', '30', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('253', '10', '31', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('254', '10', '28', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('255', '10', '34', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('256', '10', '40', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('257', '10', '41', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('258', '10', '42', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('259', '10', '43', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('260', '10', '44', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('261', '10', '47', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('262', '10', '48', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('263', '10', '49', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('264', '10', '3', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('265', '10', '10', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('266', '10', '11', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('267', '10', '12', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('268', '10', '13', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('269', '10', '6', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('270', '10', '8', 'A', '2013-06-19 00:00:00', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('271', '10', '50', 'A', '2013-06-20 15:57:48', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('272', '10', '51', 'A', '2013-06-20 15:57:48', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('273', '10', '52', 'A', '2013-06-20 15:57:48', '2013-06-20 15:57:48', '1', '1');
INSERT INTO `ROLE_PERMISSION` VALUES ('274', '10', '53', 'A', '2013-06-20 15:57:48', '2013-06-20 15:57:48', '1', '1');

-- ----------------------------
-- Table structure for `STOCK_COUNT`
-- ----------------------------
DROP TABLE IF EXISTS `STOCK_COUNT`;
CREATE TABLE `STOCK_COUNT` (
  `STKCNT_ID` int(11) NOT NULL,
  `WAREHOUSE_ID` int(11) DEFAULT NULL,
  `WAREHOUSE_NAME` varchar(100) DEFAULT NULL,
  `ITEM_ID` int(11) DEFAULT NULL,
  `ITEM_MYID` varchar(55) DEFAULT NULL,
  `ITEM_NAME` varchar(200) DEFAULT NULL,
  `STATUS` char(1) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `BATCH_NO` varchar(55) DEFAULT NULL,
  `ITEM_SPEC` varchar(255) DEFAULT NULL,
  `MANUFACTURE_DATE` date DEFAULT NULL,
  `EXPIRE_DATE` date DEFAULT NULL,
  `ITEM_QTY` double(19,2) DEFAULT NULL,
  `GRADE_ID` int(11) DEFAULT NULL,
  `GRADE_NAME` varchar(55) DEFAULT NULL,
  `COST_PRICE` double(19,8) DEFAULT NULL,
  `COST_AMOUNT` double(19,8) DEFAULT NULL,
  `SOURCE_OBJECT` varchar(100) DEFAULT NULL,
  `OBJECT_ID` int(11) DEFAULT '0',
  `LOCATION_ID` int(11) DEFAULT NULL,
  `LOCATION_NAME` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`STKCNT_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of STOCK_COUNT
-- ----------------------------

-- ----------------------------
-- Table structure for `SUPLIER`
-- ----------------------------
DROP TABLE IF EXISTS `SUPLIER`;
CREATE TABLE `SUPLIER` (
  `SUPLIER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商编码',
  `NAME` varchar(200) DEFAULT NULL COMMENT '供应商名称',
  `MYID` varchar(55) DEFAULT NULL COMMENT '供应商自编码',
  `STATUS` char(1) DEFAULT NULL,
  `CREATED` date DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFIYER` int(10) DEFAULT NULL COMMENT '修改人',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '供应商类型',
  `TEL` varchar(55) DEFAULT NULL COMMENT '电话',
  `FAX` varchar(55) DEFAULT NULL COMMENT '传真',
  `URL` varchar(200) DEFAULT NULL COMMENT '网站',
  `EMAIL` varchar(200) DEFAULT NULL COMMENT '邮件',
  `AREA_ID` int(11) DEFAULT NULL COMMENT '区域编码',
  `AREA_NAME` varchar(100) DEFAULT NULL COMMENT '区域名称',
  `PROVINCE_ID` int(11) DEFAULT NULL COMMENT '省份编码',
  `PROVINCE_NAME` varchar(55) DEFAULT NULL COMMENT '省份名称',
  `CITY_ID` int(11) DEFAULT NULL COMMENT '城市编码',
  `CITY_NAME` varchar(55) DEFAULT NULL COMMENT '城市名称',
  `ADDRESS` varchar(1000) DEFAULT NULL COMMENT '地址',
  `ZIP` varchar(20) DEFAULT NULL COMMENT '邮政编码',
  `LEVEL_ID` int(11) DEFAULT NULL COMMENT '供应商等级编码',
  `LEVEL_NAME` varchar(200) DEFAULT NULL COMMENT '供应商等级名称',
  `SOURCE_ID` int(11) DEFAULT NULL COMMENT '供应商来源编码',
  `SOURCE_NAME` varchar(200) DEFAULT NULL COMMENT '供应商来源名称',
  `NATURE_ID` int(11) DEFAULT NULL COMMENT '供应商公司性质编码',
  `NATURE_NAME` varchar(200) DEFAULT NULL COMMENT '供应商公司性质名称',
  `INDUSTRY_ID` int(11) DEFAULT NULL COMMENT '行业编码',
  `INDUSTRY_NAME` varchar(200) DEFAULT NULL COMMENT '行业名称',
  `MAIN_BUSINESS` varchar(1000) DEFAULT NULL COMMENT '主业务业',
  `SIZE_ID` int(11) DEFAULT NULL COMMENT '公司规模编码',
  `SIZE_NAME` varchar(200) DEFAULT NULL COMMENT '公司规模',
  `SETUP_DATE` date DEFAULT NULL COMMENT '注册时间',
  `CAPITAL` int(11) DEFAULT NULL COMMENT '注册资金',
  `CORPORATION` varchar(55) DEFAULT NULL COMMENT '法人',
  `CREDIT_ID` int(11) DEFAULT NULL COMMENT '信用编码',
  `CREDIT_NAME` varchar(55) DEFAULT NULL COMMENT '信用名称',
  `BANK` varchar(200) DEFAULT NULL COMMENT '开户银行',
  `ACCOUNT` varchar(55) DEFAULT NULL COMMENT '账号',
  `TAXNO` varchar(100) DEFAULT NULL COMMENT '税号',
  `SHARED` varchar(200) DEFAULT NULL COMMENT '共享人(以逗号分隔)',
  `PID` int(11) DEFAULT NULL COMMENT '供应商父项',
  `ATTACHMENT_ID` int(11) DEFAULT NULL COMMENT '附件编码',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '描述',
  `BUYER_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `BUYER_NAME` varchar(55) DEFAULT NULL COMMENT '供应商名称',
  `BUYER_ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '供应商组织编码',
  `BUYER_ORGANIZATION_NAME` varchar(55) DEFAULT NULL COMMENT '供应商组织名称',
  `SUPLIER_STATUS` char(1) DEFAULT NULL COMMENT '客户状态 T:交易中，S:禁用',
  `CLASS_NAME` varchar(200) DEFAULT NULL COMMENT '供应商类型名称',
  `EMP_COUNT` int(11) DEFAULT NULL,
  `TOTAL_SALES` varchar(55) DEFAULT NULL COMMENT '销售额',
  `CURRENCY_ID` int(11) DEFAULT NULL COMMENT '币别编码',
  `CURRENCY_NAME` varchar(55) DEFAULT NULL,
  `DEDUCTION_TAX` char(1) DEFAULT NULL COMMENT '1:不含税，2:含税',
  `TAX` int(11) DEFAULT NULL COMMENT '税率',
  PRIMARY KEY (`SUPLIER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SUPLIER
-- ----------------------------
INSERT INTO `SUPLIER` VALUES ('1', '12312', '3123123', 'I', '2013-06-26', '2013-06-26', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, null, '', null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, '', null, null, 'T', '', null, '', null, '', 'Y', null);
INSERT INTO `SUPLIER` VALUES ('2', 'teste', 'testes', 'A', '2013-06-26', '2013-06-26', '1', '1', null, '', '', '', '', null, null, null, null, '4', '123123123', '', null, null, '', null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, '', null, null, 'T', '', null, '', null, '', 'Y', null);
INSERT INTO `SUPLIER` VALUES ('3', '123123', '123123', 'A', '2013-07-01', '2013-07-11', '1', '1', null, '', '', '', '', null, null, null, null, null, '', '', null, null, '', null, null, null, '', null, '', '', null, '', null, null, '', null, '', '', '', '', null, null, null, '', null, '', null, null, 'T', '', null, '', '1', '人民币', 'Y', null);

-- ----------------------------
-- Table structure for `SUPLIER_CONTACT`
-- ----------------------------
DROP TABLE IF EXISTS `SUPLIER_CONTACT`;
CREATE TABLE `SUPLIER_CONTACT` (
  `CONTACT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商联系人编码',
  `SUPLIER_ID` int(11) DEFAULT NULL COMMENT '供应商编码',
  `CLASS_ID` int(11) DEFAULT NULL COMMENT '联系人类型编码',
  `NAME` varchar(55) DEFAULT NULL COMMENT '联系人名称',
  `SEX_ID` int(11) DEFAULT NULL COMMENT '性别编码',
  `CLASS_NAME` varchar(255) DEFAULT NULL COMMENT '联系人类型名称',
  `SEX_NAME` varchar(10) DEFAULT NULL COMMENT '性别名称',
  `ORGANIZATION` varchar(255) DEFAULT NULL COMMENT '部门',
  `DUTY` varchar(255) DEFAULT NULL COMMENT '职务',
  `TEL` varchar(55) DEFAULT NULL COMMENT '电话',
  `EMAIL` varchar(255) DEFAULT NULL COMMENT '邮件',
  `MOBILE` varchar(20) DEFAULT NULL COMMENT '手机',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `QQ` varchar(25) DEFAULT NULL COMMENT 'QQ',
  PRIMARY KEY (`CONTACT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SUPLIER_CONTACT
-- ----------------------------
INSERT INTO `SUPLIER_CONTACT` VALUES ('2', '2', null, '123123', null, null, 'F', null, '123', '123', 'qwe@qq.com', null, '123', 'A', '2013-06-26', '2013-06-26', '1', '1', '123');
INSERT INTO `SUPLIER_CONTACT` VALUES ('3', '3', null, '12312', null, null, 'M', null, '123', '123', '123@q.com', null, '123', 'A', '2013-07-01', '2013-07-11', '1', '1', '123');

-- ----------------------------
-- Table structure for `SUPLIER_TERMS`
-- ----------------------------
DROP TABLE IF EXISTS `SUPLIER_TERMS`;
CREATE TABLE `SUPLIER_TERMS` (
  `TERM_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '供应商交易编码',
  `STATUS` char(255) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `SUPLIER_ID` int(11) NOT NULL COMMENT '供应商编码',
  `SUPLIER_NAME` varchar(100) DEFAULT NULL COMMENT '供应商名称',
  `PAY_PERIOD` char(2) DEFAULT NULL COMMENT '结款周期',
  `PAY_METHOD` char(2) DEFAULT NULL COMMENT '结款方式',
  `PERIOD_DAY` int(11) DEFAULT NULL COMMENT '结款基准日',
  `MIN_AMOUNT` float DEFAULT NULL COMMENT '最小订货金额',
  `CURRENCY_ID` int(11) DEFAULT NULL COMMENT '币别编码',
  `CURRENCY_NAME` varchar(55) DEFAULT NULL COMMENT '币别名称',
  `INVOICE_TYPE` int(11) DEFAULT NULL COMMENT '发票类型',
  `INVOICE_FOLLOW` char(1) DEFAULT NULL COMMENT '是否随货带发票',
  `DISCOUNT_NO` int(11) DEFAULT NULL COMMENT '折扣',
  `DELIVER_TYPE` int(11) DEFAULT NULL COMMENT '配送方式',
  `FREIGHT_PAYER` int(11) DEFAULT NULL COMMENT '运费支付方式',
  `SALE_TYPE` int(11) DEFAULT NULL COMMENT '销售方式',
  `TERM_STATUS` char(1) DEFAULT NULL COMMENT '交易状态',
  PRIMARY KEY (`TERM_ID`),
  KEY `FK_SUPLIER_TERMS1` (`SUPLIER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of SUPLIER_TERMS
-- ----------------------------

-- ----------------------------
-- Table structure for `SYSTEM_CODE`
-- ----------------------------
DROP TABLE IF EXISTS `SYSTEM_CODE`;
CREATE TABLE `SYSTEM_CODE` (
  `CODE_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '系统代码自动ID',
  `CODE_MYID` varchar(100) DEFAULT NULL COMMENT '系统代码编码',
  `NAME` varchar(255) DEFAULT NULL COMMENT '系统代码名称',
  `SORT` int(10) DEFAULT NULL COMMENT '系统代码排序',
  `TYPE` char(1) DEFAULT NULL COMMENT 'M模块 D词典',
  `ICONCLS` varchar(100) DEFAULT NULL,
  `STATE` varchar(20) DEFAULT NULL,
  `PERMISSIONID` int(11) DEFAULT NULL COMMENT '父项模块ID',
  `PARENT_ID` int(11) DEFAULT NULL COMMENT '系统代码父项ID',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`CODE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 COMMENT='系统代码资料';

-- ----------------------------
-- Records of SYSTEM_CODE
-- ----------------------------
INSERT INTO `SYSTEM_CODE` VALUES ('1', 'projectClass', '项目类型', null, 'D', 'icon-edit', 'closed', '1', '87', '234234234', 'A', '2013-04-19 00:00:00', '2013-06-20 14:27:20', null, '1');
INSERT INTO `SYSTEM_CODE` VALUES ('2', null, '大型项目', '1', 'D', 'icon-edit', 'open', '1', '1', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('3', null, '中型项目', '2', 'D', 'icon-edit', 'open', '1', '1', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('4', '', '小型项目', '3', 'D', 'icon-edit', 'open', '1', '1', '', 'A', '2013-04-19 00:00:00', '2013-06-19 16:51:38', null, '1');
INSERT INTO `SYSTEM_CODE` VALUES ('5', 'projectSource', '项目来源', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('6', null, '企业招标', '1', 'D', 'icon-edit', 'open', '1', '5', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('7', null, '熟人介绍', '2', 'D', 'icon-edit', 'open', '1', '5', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('8', 'customerClass', '客户类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('9', null, '经销商', '1', 'D', 'icon-edit', 'open', '1', '8', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('10', null, '潜在客户', '3', 'D', 'icon-edit', 'open', '1', '8', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('11', null, '合作伙伴', '2', 'D', 'icon-edit', 'open', '1', '8', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('12', 'customerSource', '客户来源', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('13', null, '电话来访', '1', 'D', 'icon-edit', 'open', '1', '12', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('14', null, '客户介绍', '2', 'D', 'icon-edit', 'open', '1', '12', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('15', null, '公开招标', '3', 'D', 'icon-edit', 'open', '1', '12', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('16', 'customerNature', '客户性质', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('17', null, '国有企业', '1', 'D', 'icon-edit', 'open', '1', '16', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('18', null, '私营企业', '2', 'D', 'icon-edit', 'open', '1', '16', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('19', 'customerLevel', '客户级别', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('20', null, '一般客户', '1', 'D', 'icon-edit', 'open', '1', '19', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('21', null, '重要客户', '2', 'D', 'icon-edit', 'open', '1', '19', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('22', null, 'VIP客户', '3', 'D', 'icon-edit', 'open', '1', '19', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('23', 'companySize', '公司规模', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('24', null, '1-50人', '1', 'D', 'icon-edit', 'open', '1', '23', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('25', null, '51-100人', '2', 'D', 'icon-edit', 'open', '1', '23', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('26', null, '101-200人', '3', 'D', 'icon-edit', 'open', '1', '23', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('27', 'credit', '信用', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('28', null, '高', '1', 'D', 'icon-edit', 'open', '1', '27', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('29', null, '中', '2', 'D', 'icon-edit', 'open', '1', '27', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('30', null, '低', '3', 'D', 'icon-edit', 'open', '1', '27', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('31', 'industry', '行业', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('32', null, '食品', '1', 'D', 'icon-edit', 'open', '1', '31', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('33', 'position', '职位', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('34', null, '销售', '1', 'D', 'icon-edit', 'open', '1', '33', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('35', null, '采购', '2', 'D', 'icon-edit', 'open', '1', '33', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('36', null, '仓库管理员', '3', 'D', 'icon-edit', 'open', '1', '33', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('37', 'title', '职等', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('38', null, '060', '1', 'D', 'icon-edit', 'open', '1', '37', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('39', null, '070', '2', 'D', 'icon-edit', 'open', '1', '37', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('40', null, '080', '3', 'D', 'icon-edit', 'open', '1', '37', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('41', 'sex', '性别', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('42', null, '男', '1', 'D', 'icon-edit', 'open', '1', '41', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('43', null, '女', '2', 'D', 'icon-edit', 'open', '1', '41', null, 'A', '2013-04-19 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('45', 'planClass', '计划类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-03 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('46', null, '月计划', '1', 'D', 'icon-edit', 'open', '1', '45', null, 'A', '2013-05-03 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('47', null, '季度计划', '2', 'D', 'icon-edit', 'open', '1', '45', null, 'A', '2013-05-03 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('48', null, '年计划', '3', 'D', 'icon-edit', 'open', '1', '45', null, 'A', '2013-05-03 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('50', 'suplierClass', '供应商类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('51', null, '食品供应商', '1', 'D', 'icon-edit', 'open', '1', '50', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('52', null, '百货供应商', '2', 'D', 'icon-edit', 'open', '1', '50', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('53', 'suplierContactClass', '供应商联系人类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('54', null, '业务员', '1', 'D', 'icon-edit', 'open', '1', '53', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('55', null, '业务经理', '2', 'D', 'icon-edit', 'open', '1', '53', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('56', null, '公司老总', '3', 'D', 'icon-edit', 'open', '1', '53', null, 'A', '2013-05-09 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('57', 'unit', '单位', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('58', null, '个', '1', 'D', 'icon-edit', 'open', '1', '57', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('59', null, '件', '2', 'D', 'icon-edit', 'open', '1', '57', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('60', null, '套', '3', 'D', 'icon-edit', 'open', '1', '57', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('61', 'purchaseClass', '采购类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('62', null, '普通采购', '1', 'D', 'icon-edit', 'open', '1', '61', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('63', null, '紧急采购', '2', 'D', 'icon-edit', 'open', '1', '61', null, 'A', '2013-05-10 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('64', 'deliveryMode', '交货方式', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('65', null, '物流公司', '1', 'D', 'icon-edit', 'open', '1', '64', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('66', null, '客户自提', '2', 'D', 'icon-edit', 'open', '1', '64', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('67', 'payMode', '支付方式', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('68', null, '现金', '1', 'D', 'icon-edit', 'open', '1', '67', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('69', null, '支票', '2', 'D', 'icon-edit', 'open', '1', '67', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('70', null, '转账', '3', 'D', 'icon-edit', 'open', '1', '67', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('71', 'invoiceClass', '发票类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('72', null, '增值税发票', '1', 'D', 'icon-edit', 'open', '1', '71', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('73', null, '普通发票', '2', 'D', 'icon-edit', 'open', '1', '71', null, 'A', '2013-05-11 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('74', 'followClass', '跟踪类型', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('75', null, '一般跟踪', '1', 'D', 'icon-edit', 'open', '1', '74', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('76', null, '重点跟踪', '2', 'D', 'icon-edit', 'open', '1', '74', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('77', 'followStatus', '跟踪状态', null, 'D', 'icon-edit', 'closed', '1', '87', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('78', null, '已立项', '1', 'D', 'icon-edit', 'open', '1', '77', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('79', null, '已签约', '2', 'D', 'icon-edit', 'open', '1', '77', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('80', null, '已下单', '3', 'D', 'icon-edit', 'open', '1', '77', null, 'A', '2013-05-30 00:00:00', null, null, null);
INSERT INTO `SYSTEM_CODE` VALUES ('87', '', '系统管理', null, 'M', 'icon-pro', 'closed', '1', null, '', 'A', '2013-06-19 15:33:37', '2013-06-20 14:08:11', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('89', '123', '123123', '123', 'D', 'icon-back', null, '1', '4', '123123123', 'A', '2013-06-20 10:52:10', '2013-06-20 10:52:27', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('94', '', '参数管理', null, 'M', 'icon-edit', 'closed', '6', null, '', 'A', '2013-06-20 13:32:55', '2013-06-20 14:23:33', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('105', '', 'tttttt', '111', 'D', 'icon-edit', 'closed', '6', '94', '111111', 'A', '2013-06-20 14:04:52', '2013-06-20 15:48:46', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('106', '123', '123', '123', 'D', 'icon-back', 'open', '6', '105', '123123', 'A', '2013-06-20 14:05:12', '2013-06-20 14:21:05', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('112', '123', '123', '123', 'D', 'icon-bug', 'closed', '6', '94', '132123123123123', 'A', '2013-06-22 13:45:28', '2013-06-22 13:45:46', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('113', '123', '123', '123123', 'D', 'icon-remove', 'open', '6', '105', '123123123', 'A', '2013-06-22 13:46:06', '2013-06-22 13:46:06', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('114', '123', '123', '123', 'D', 'icon-adds', 'open', '6', '112', '123123', 'A', '2013-06-22 13:46:21', '2013-06-22 13:46:37', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('115', null, '公司管理', null, 'M', 'icon-comp', 'closed', '3', null, null, 'I', '2013-06-24 08:45:34', '2013-06-24 09:39:14', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('116', 'eerte', 'testee', '1', 'D', '', 'closed', '3', '115', '', 'I', '2013-06-24 08:45:34', '2013-06-24 09:38:25', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('121', '11', 'eeeee', '2', 'D', '', 'open', '6', null, '', 'A', '2013-06-24 08:52:33', '2013-06-24 08:52:33', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('123', '123', '123', '123', 'D', '', 'open', '1', '87', '123123', 'A', '2013-06-24 08:53:26', '2013-06-24 08:53:26', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('124', '123', '123', '123', 'D', '', 'open', '6', '121', '123132132', 'A', '2013-06-24 08:53:37', '2013-06-24 08:53:37', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('125', '123', '123', '123', 'D', '', 'open', '6', '121', '132123132', 'A', '2013-06-24 08:53:58', '2013-06-24 08:53:58', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('126', '123123', '123123', '12312', 'D', '', 'closed', '3', '115', '3123123123', 'I', '2013-06-24 09:24:12', '2013-06-24 09:38:12', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('127', '123', '123', '123', 'D', '', 'closed', '3', '115', '123123123123', 'I', '2013-06-24 09:24:34', '2013-06-24 09:38:10', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('128', '123', '123', '123', 'D', '', 'open', '3', '115', '123123123', 'I', '2013-06-24 09:24:53', '2013-06-24 09:38:09', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('129', '123', 'dadaad', '123', 'D', '', 'open', '3', '115', 'dadad', 'I', '2013-06-24 09:25:41', '2013-06-24 09:38:07', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('130', '123', '123', '123', 'D', '', 'open', '3', '116', '123123', 'I', '2013-06-24 09:37:57', '2013-06-24 09:38:22', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('131', '123', '123123', '123', 'D', '', 'closed', '3', '115', '123123123', 'I', '2013-06-24 09:38:39', '2013-06-24 09:39:13', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('132', '132', '1231', '13123', 'D', '', 'open', '3', '131', '12312312313213213223', 'I', '2013-06-24 09:38:52', '2013-06-24 09:39:11', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('133', null, '公司管理', null, 'M', 'icon-comp', 'closed', '3', null, null, 'A', '2013-06-24 09:39:30', '2013-06-24 09:39:30', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('134', '123', '123123', '123123', 'D', '', 'closed', '3', '133', '123123123', 'A', '2013-06-24 09:39:30', '2013-06-24 09:39:30', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('135', '123', '123', null, 'D', '', 'open', '3', '134', '123213132123', 'A', '2013-06-24 09:39:44', '2013-06-24 09:39:44', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('136', '123', '123', '123', 'D', '', 'open', '3', '134', '123123123123', 'A', '2013-06-24 09:39:57', '2013-06-24 09:39:57', '1', '1');
INSERT INTO `SYSTEM_CODE` VALUES ('137', '', '201-500人', null, 'D', 'icon-tip', 'open', '1', '23', '', 'A', '2013-06-24 16:58:30', '2013-06-24 16:58:30', '1', '1');

-- ----------------------------
-- Table structure for `SYSTEM_INFO`
-- ----------------------------
DROP TABLE IF EXISTS `SYSTEM_INFO`;
CREATE TABLE `SYSTEM_INFO` (
  `SYSTEM_ID` int(10) NOT NULL AUTO_INCREMENT COMMENT '系统代码',
  `NAME` varchar(50) DEFAULT NULL COMMENT '系统名称',
  `VERSION` varchar(50) DEFAULT NULL COMMENT '系统版本',
  `CODE` varchar(50) DEFAULT NULL COMMENT '服务器代码',
  `LICENSED` varchar(50) DEFAULT NULL COMMENT '许可',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`SYSTEM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统资料表';

-- ----------------------------
-- Records of SYSTEM_INFO
-- ----------------------------

-- ----------------------------
-- Table structure for `TERMS`
-- ----------------------------
DROP TABLE IF EXISTS `TERMS`;
CREATE TABLE `TERMS` (
  `TERM_ID` int(11) NOT NULL,
  `STATUS` char(255) DEFAULT NULL,
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TERMS
-- ----------------------------

-- ----------------------------
-- Table structure for `TERMS_copy`
-- ----------------------------
DROP TABLE IF EXISTS `TERMS_copy`;
CREATE TABLE `TERMS_copy` (
  `TERM_ID` int(11) NOT NULL,
  `STATUS` char(255) DEFAULT NULL,
  `CREATED` date DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` date DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`TERM_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TERMS_copy
-- ----------------------------

-- ----------------------------
-- Table structure for `TEST`
-- ----------------------------
DROP TABLE IF EXISTS `TEST`;
CREATE TABLE `TEST` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `PID` int(11) DEFAULT NULL,
  `USERNAME` varchar(100) DEFAULT NULL,
  `USERPWD` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `ID` (`ID`),
  KEY `sdfsf` (`PID`),
  CONSTRAINT `sdfsf` FOREIGN KEY (`PID`) REFERENCES `TEST` (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of TEST
-- ----------------------------
INSERT INTO `TEST` VALUES ('1', null, '13123', '123123');

-- ----------------------------
-- Table structure for `USER_ROLE`
-- ----------------------------
DROP TABLE IF EXISTS `USER_ROLE`;
CREATE TABLE `USER_ROLE` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL DEFAULT '0' COMMENT '用户代码',
  `ROLE_ID` int(11) DEFAULT NULL COMMENT '角色代码',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`ID`),
  KEY `FK_USER_ROLE1` (`USER_ID`),
  KEY `FK_USER_ROLE2` (`ROLE_ID`),
  CONSTRAINT `FK_USER_ROLE1` FOREIGN KEY (`USER_ID`) REFERENCES `USERS` (`USER_ID`),
  CONSTRAINT `FK_USER_ROLE2` FOREIGN KEY (`ROLE_ID`) REFERENCES `ROLE` (`ROLE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户角色资料表';

-- ----------------------------
-- Records of USER_ROLE
-- ----------------------------
INSERT INTO `USER_ROLE` VALUES ('1', '2', '2', 'I', '2013-05-24 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('3', '2', '3', 'I', '2013-05-29 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('4', '2', '4', 'I', '2013-05-29 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('5', '2', '5', 'I', '2013-05-29 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('6', '2', '6', 'I', '2013-05-29 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('10', '1', '1', 'A', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('11', '1', '2', 'I', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('12', '1', '3', 'I', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('13', '1', '4', 'I', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('14', '1', '5', 'I', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('15', '1', '6', 'I', '2013-05-29 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('16', '2', '1', 'I', '2013-05-29 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('17', '2', '7', 'I', '2013-06-04 00:00:00', '2013-06-22 13:43:22', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('18', '13', '2', 'A', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('19', '13', '3', 'A', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('20', '13', '4', 'A', '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('21', '23', '10', 'I', '2013-06-19 00:00:00', '2013-06-22 13:42:59', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('22', '24', '10', 'A', '2013-06-21 09:21:45', '2013-07-11 14:25:26', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('23', '23', '4', 'I', '2013-06-22 13:42:32', '2013-06-22 13:42:59', '1', '1');
INSERT INTO `USER_ROLE` VALUES ('24', '23', '3', 'I', '2013-06-22 13:42:32', '2013-06-22 13:42:59', '1', '1');

-- ----------------------------
-- Table structure for `USERS`
-- ----------------------------
DROP TABLE IF EXISTS `USERS`;
CREATE TABLE `USERS` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT '用户代码',
  `MYID` varchar(50) DEFAULT NULL COMMENT '用户自编码',
  `ACCOUNT` varchar(50) DEFAULT NULL COMMENT '账号',
  `NAME` varchar(50) DEFAULT NULL COMMENT '名称',
  `ORGANIZE_ID` int(11) DEFAULT NULL COMMENT '组织代码',
  `ORGANIZE_NAME` varchar(255) DEFAULT NULL COMMENT '组织名称',
  `DUTY_ID` int(11) DEFAULT NULL COMMENT '称位代码 表:SYSTEM_CODE  position',
  `TITLE_ID` int(11) DEFAULT NULL COMMENT '职等代码 表:SYSTEM_CODE  title',
  `PASSWORD` varchar(128) DEFAULT NULL COMMENT '密码',
  `EMAIL` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `LANG` varchar(20) DEFAULT NULL COMMENT '语言',
  `THEME` varchar(20) DEFAULT NULL COMMENT '样式',
  `FIRST_VISIT` datetime DEFAULT NULL COMMENT '第一次登录',
  `PREVIOUS_VISIT` datetime DEFAULT NULL COMMENT '上一次登录',
  `LAST_VISITS` datetime DEFAULT NULL COMMENT '最后一次登录',
  `LOGIN_COUNT` int(10) DEFAULT NULL COMMENT '登录资数',
  `ISEMPLOYEE` int(1) DEFAULT NULL COMMENT '是否是职工',
  `STATUS` char(1) DEFAULT NULL COMMENT '状态',
  `IP` varchar(20) DEFAULT NULL COMMENT 'IP地址',
  `DESCRIPTION` varchar(2000) DEFAULT NULL COMMENT '备注',
  `QUESTION_ID` int(10) DEFAULT NULL COMMENT '问题代码',
  `ANSWER` varchar(100) DEFAULT NULL COMMENT '回复',
  `ISONLINE` int(1) DEFAULT NULL COMMENT '是否在线',
  `CREATED` datetime DEFAULT NULL COMMENT '创造日期',
  `LASTMOD` datetime DEFAULT NULL COMMENT '修改日期',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  `TEL` varchar(30) DEFAULT NULL COMMENT '用户电话',
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8 COMMENT='用户资料表';

-- ----------------------------
-- Records of USERS
-- ----------------------------
INSERT INTO `USERS` VALUES ('1', 'admin', 'admin', 'admin', '2', 'MIS', null, null, 'admin', '12@qq.com', null, null, null, null, null, null, null, 'A', null, '111111', null, null, null, null, '2013-06-14 00:00:00', '1', '1', '1111111');
INSERT INTO `USERS` VALUES ('2', 'root', 'root', 'root', '2', 'MIS', null, null, 'root', '123@qq.com', null, null, null, null, null, null, null, 'A', null, '12312312323', null, null, null, null, '2013-06-19 00:00:00', '1', '1', '123');
INSERT INTO `USERS` VALUES ('13', 'gsdgsgdsgdg', '123', 'twerywrt', '4', 'asdfasd', null, null, 'ert', 'ewrtewrt', null, null, null, null, null, null, null, 'I', null, '123123123', null, null, null, '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1', 'ert');
INSERT INTO `USERS` VALUES ('14', 'ttt', 'ttt', 'ttttttt', '2', 'MIS', null, null, 'tt', 'ttt', null, null, null, null, null, null, null, 'I', null, '', null, null, null, '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1', 'tt');
INSERT INTO `USERS` VALUES ('15', '234', '234', '234', '1', '总经理室', null, null, '234', '234', null, null, null, null, null, null, null, 'I', null, '234234234', null, null, null, '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1', '342');
INSERT INTO `USERS` VALUES ('16', '123', '123', '123', '2', 'MIS', null, null, '123', '123', null, null, null, null, null, null, null, 'I', null, '123123123', null, null, null, '2013-06-14 00:00:00', '2013-06-14 00:00:00', '1', '1', '123');
INSERT INTO `USERS` VALUES ('17', '12312', '31231', '2312', '5', '12333', null, null, '312', '123', null, null, null, null, null, null, null, 'I', null, '123123123123123123123324234', null, null, null, '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1', '3123');
INSERT INTO `USERS` VALUES ('18', '123', '123', '3123', '4', 'asdfasd', null, null, '123', '123', null, null, null, null, null, null, null, 'I', null, '123123123123123', null, null, null, '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1', '132');
INSERT INTO `USERS` VALUES ('19', '123', '124', '123', '2', 'MIS', null, null, '123', '123', null, null, null, null, null, null, null, 'I', null, '123123123', null, null, null, '2013-06-18 00:00:00', '2013-06-18 00:00:00', '1', '1', '123');
INSERT INTO `USERS` VALUES ('20', '123', '3123', '123', '12', '123', null, null, '123', '123', null, null, null, null, null, null, null, 'I', null, '123123123123123', null, null, null, '2013-06-18 00:00:00', '2013-06-19 00:00:00', '1', '1', '123');
INSERT INTO `USERS` VALUES ('21', 'test', 'test', 'test', '2', 'MIS', null, null, 'test', 'test@163.com', null, null, null, null, null, null, null, 'I', null, '', null, null, null, '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1', '111');
INSERT INTO `USERS` VALUES ('22', '123', '123', '123', null, '', null, null, '123', '123', null, null, null, null, null, null, null, 'I', null, '123123123', null, null, null, '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1', '123');
INSERT INTO `USERS` VALUES ('23', 'test', 'test', 'test', '1', '总经理室', null, null, 'test', 'atest', null, null, null, null, null, null, null, 'A', null, '测试账号', null, null, null, '2013-06-19 00:00:00', '2013-06-19 00:00:00', '1', '1', '123123');
INSERT INTO `USERS` VALUES ('24', 'hy', 'ww', 'ee', '1', '总经理室', null, null, 'ee', '123', null, null, null, null, null, null, null, 'A', null, '123', null, null, null, '2013-06-21 09:19:56', '2013-06-24 15:00:14', '1', '1', '123');

-- ----------------------------
-- Table structure for `WAREHOUSE`
-- ----------------------------
DROP TABLE IF EXISTS `WAREHOUSE`;
CREATE TABLE `WAREHOUSE` (
  `WAREHOUSE_ID` int(11) NOT NULL COMMENT '仓库编码',
  `NAME` varchar(55) DEFAULT NULL COMMENT '仓库名称',
  `MYID` varchar(55) DEFAULT NULL COMMENT '仓库自编码',
  `ORGANIZATION_ID` int(11) DEFAULT NULL COMMENT '部门编码',
  `ORGANIZATION_NAME` varchar(100) DEFAULT NULL COMMENT '部门名称',
  `MANAGER_ID` int(11) DEFAULT NULL COMMENT '管理人编码',
  `MANAGER_NAME` varchar(50) DEFAULT NULL COMMENT '管理员名称',
  `TEL` varchar(55) DEFAULT NULL COMMENT '电话',
  `ADDRESS` varchar(200) DEFAULT NULL COMMENT '地址',
  `DESCRIPTION` varchar(500) DEFAULT NULL COMMENT '描述',
  `CREATED` date DEFAULT NULL,
  `LASTMOD` date DEFAULT NULL,
  `STATUS` char(1) DEFAULT 'A',
  `CREATER` int(10) DEFAULT NULL COMMENT '创建人',
  `MODIFYER` int(10) DEFAULT NULL COMMENT '修改人',
  PRIMARY KEY (`WAREHOUSE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of WAREHOUSE
-- ----------------------------
INSERT INTO `WAREHOUSE` VALUES ('1', '物流仓', '12', '1', '1', '1', '1', '1', '1', '1', '2013-07-01', '2013-07-01', 'A', '1', '1');
