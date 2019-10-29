/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50553
Source Host           : localhost:3306
Source Database       : shop

Target Server Type    : MYSQL
Target Server Version : 50553
File Encoding         : 65001

Date: 2019-10-29 16:30:30
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth
-- ----------------------------
DROP TABLE IF EXISTS `auth`;
CREATE TABLE `auth` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `auth_name` varchar(255) DEFAULT NULL,
  `route` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth
-- ----------------------------
INSERT INTO `auth` VALUES ('11', '商品管理', null, '1', '0');
INSERT INTO `auth` VALUES ('12', '商品分类管理', null, '1', '0');
INSERT INTO `auth` VALUES ('13', '会员管理', null, '1', '0');
INSERT INTO `auth` VALUES ('14', '商品列表', 'Admin/Goods/goodsList', '2', '11');
INSERT INTO `auth` VALUES ('15', '商品添加', 'Admin/Goods/goodsAdd', '2', '11');
INSERT INTO `auth` VALUES ('16', '商品分类添加', 'Admin/Cate/cateAdd', '2', '12');
INSERT INTO `auth` VALUES ('17', '商品分类列表', 'Admin/Cate/cateList', '2', '12');
INSERT INTO `auth` VALUES ('18', '会员添加', 'Admin/Member/memberAdd', '2', '13');
INSERT INTO `auth` VALUES ('19', '会员列表', 'Admin/Member/memberList', '2', '13');
INSERT INTO `auth` VALUES ('20', '管理员管理', '', '1', '0');
INSERT INTO `auth` VALUES ('21', '角色管理', null, '1', '0');
INSERT INTO `auth` VALUES ('22', '权限管理', null, '1', '0');
INSERT INTO `auth` VALUES ('23', '管理员添加', 'Admin/Manager/managerAdd', '2', '20');
INSERT INTO `auth` VALUES ('24', '管理员列表', 'Admin/Manager/managerList', '2', '20');
INSERT INTO `auth` VALUES ('25', '角色添加', 'Admin/Role/roleAdd', '2', '21');
INSERT INTO `auth` VALUES ('26', '角色列表', 'Admin/Role/roleList', '2', '21');
INSERT INTO `auth` VALUES ('27', '权限添加', 'Admin/Auth/authAdd', '2', '22');
INSERT INTO `auth` VALUES ('28', '权限列表', 'Admin/Auth/authList', '2', '22');

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS `cart`;
CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) DEFAULT NULL,
  `gid` int(11) DEFAULT NULL,
  `num` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cart
-- ----------------------------
INSERT INTO `cart` VALUES ('19', '12', '5', '3');
INSERT INTO `cart` VALUES ('22', '12', '8', '2');
INSERT INTO `cart` VALUES ('11', '11', '29', '3');
INSERT INTO `cart` VALUES ('13', '11', '8', '5');
INSERT INTO `cart` VALUES ('14', '11', '5', '1');
INSERT INTO `cart` VALUES ('24', '12', '10', '2');

-- ----------------------------
-- Table structure for category
-- ----------------------------
DROP TABLE IF EXISTS `category`;
CREATE TABLE `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cate_name` varchar(255) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of category
-- ----------------------------
INSERT INTO `category` VALUES ('1', '服装', '0', '1');
INSERT INTO `category` VALUES ('2', '家电', '0', '2');
INSERT INTO `category` VALUES ('3', '手机', '0', '3');
INSERT INTO `category` VALUES ('4', '男装', '1', '1,4');
INSERT INTO `category` VALUES ('5', '女装', '1', '1,5');
INSERT INTO `category` VALUES ('6', '洗衣机', '2', '2,6');
INSERT INTO `category` VALUES ('7', '冰箱', '2', '2,7');
INSERT INTO `category` VALUES ('8', '智能机', '3', '3,8');
INSERT INTO `category` VALUES ('9', '老年机', '3', '3,9');
INSERT INTO `category` VALUES ('10', '衬衣', '4', '1,4,10');
INSERT INTO `category` VALUES ('11', '裤子', '4', '1,4,11');
INSERT INTO `category` VALUES ('12', '裙子', '5', '1,5,12');
INSERT INTO `category` VALUES ('13', '打底裤', '5', '1,5,13');
INSERT INTO `category` VALUES ('14', '全自动洗衣机', '6', '2,6,14');
INSERT INTO `category` VALUES ('15', '半自动洗衣机', '6', '2,6,15');
INSERT INTO `category` VALUES ('16', '单开门冰箱', '7', '2,7,16');
INSERT INTO `category` VALUES ('17', '双开门冰箱', '7', '2,7,17');
INSERT INTO `category` VALUES ('18', '4G手机', '8', '3,8,18');
INSERT INTO `category` VALUES ('19', '5G手机', '8', '3,8,19');
INSERT INTO `category` VALUES ('20', '诺基亚', '9', '3,9,20');
INSERT INTO `category` VALUES ('21', '摩托罗拉', '9', '3,9,21');
INSERT INTO `category` VALUES ('22', '汉服', '4', '1,4,22');

-- ----------------------------
-- Table structure for goods
-- ----------------------------
DROP TABLE IF EXISTS `goods`;
CREATE TABLE `goods` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `addr` varchar(255) DEFAULT '1' COMMENT '1代表中国2.美国',
  `goods_name` varchar(255) DEFAULT NULL,
  `goods_price` decimal(10,2) DEFAULT NULL,
  `goods_num` int(11) DEFAULT NULL,
  `goods_pic` varchar(255) DEFAULT NULL,
  `goods_detail` varchar(255) DEFAULT NULL,
  `cate_id` int(11) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  `is_hot` tinyint(255) DEFAULT '0',
  `sort` int(11) DEFAULT NULL,
  `hit` int(255) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of goods
-- ----------------------------
INSERT INTO `goods` VALUES ('3', '1', '牛仔裤', '2.00', '100', '4.jpg15717139968015.jpg', null, '11', null, '0', '10', '4');
INSERT INTO `goods` VALUES ('4', '2', '运动裤', '10.00', '100', 'b2.jpg15717140084665.jpg', null, '11', null, '0', '11', '1');
INSERT INTO `goods` VALUES ('5', '1', '超短裙', '3.00', '100', 'b1.jpg15717140198466.jpg', null, '12', null, '0', null, '2');
INSERT INTO `goods` VALUES ('6', '1', '迷你裙', '4.00', '100', '7.jpg15717140307084.jpg', null, '12', null, '0', null, '1');
INSERT INTO `goods` VALUES ('7', '1', '黑色打底裤', '201.00', '100', null, null, '13', null, '0', null, '1');
INSERT INTO `goods` VALUES ('8', '1', '豹纹打底裤', '101.00', '100', '6.jpg15717140441976.jpg', null, '13', null, '0', null, '1');
INSERT INTO `goods` VALUES ('9', '2', '海尔全自动洗衣机', '418.00', '100', '19.jpg15717251782717.jpg', null, '14', null, '0', null, '1');
INSERT INTO `goods` VALUES ('10', '2', '美的全自动洗衣机', '6.00', '100', '10.jpg15717251931974.jpg', null, '14', null, '0', '13', '1');
INSERT INTO `goods` VALUES ('11', '2', '小天鹅半自动洗衣机', '401.00', '100', '14.jpg15717252059878.jpg', null, '15', null, '0', null, '1');
INSERT INTO `goods` VALUES ('1', '2', '格子衫', '18.00', '100', '24.jpg15717252185876.jpg', null, '10', null, '0', '1000', '1');
INSERT INTO `goods` VALUES ('2', '2', '条纹衫', '201.00', '100', '22.jpg15717252513635.jpg', null, '10', null, '0', null, '1');
INSERT INTO `goods` VALUES ('12', '2', '大天鹅半自动洗衣机', '4.00', '100', '18.jpg15717252887666.jpg', null, '15', null, '0', null, '1');
INSERT INTO `goods` VALUES ('13', '1', '美的单开门冰箱', '1.00', '100', '16.jpg15717253008546.jpg', null, '16', null, '0', null, '1');
INSERT INTO `goods` VALUES ('14', '1', '格力单开门冰箱', '200.00', '100', '11.jpg15717253332296.jpg', null, '16', null, '0', null, '1');
INSERT INTO `goods` VALUES ('15', '1', '奥克斯双开门冰箱', '200.00', '100', '13.jpg15717253072252.jpg', null, '17', null, '0', null, '1');
INSERT INTO `goods` VALUES ('16', '1', '小米双开门冰箱', '2.00', '100', null, null, '17', null, '0', null, '1');
INSERT INTO `goods` VALUES ('17', '2', '小米4G手机', '501.00', '100', '6.jpg15717253447551.jpg', null, '18', null, '0', null, '1');
INSERT INTO `goods` VALUES ('18', '2', '大米4G手机', '60.00', '100', null, null, '18', null, '0', null, '1');
INSERT INTO `goods` VALUES ('19', '3', '华为5G手机', '3.00', '100', null, null, '19', null, '0', null, '1');
INSERT INTO `goods` VALUES ('20', '3', '三星5G手机', '301.00', '100', null, null, '19', null, '0', null, '1');
INSERT INTO `goods` VALUES ('21', '3', '诺基亚1', '578.00', '100', null, null, '20', null, '0', null, '1');
INSERT INTO `goods` VALUES ('22', '3', '诺基亚2', '150.00', '100', null, null, '20', null, '0', null, '1');
INSERT INTO `goods` VALUES ('23', '3', '摩托罗拉1', '236.00', '100', '14.jpg15717253547417.jpg', null, '21', null, '0', null, '1');
INSERT INTO `goods` VALUES ('24', '3', '摩托罗拉2', '2.00', '100', '23.jpg15717252374838.jpg', null, '21', null, '0', null, '1');
INSERT INTO `goods` VALUES ('25', '3', 'jk裙子', '10.00', '100', '2.jpg15716428196739.jpg', '这是一条好看的裙子啊', '13', '1571638267', '0', null, '1');
INSERT INTO `goods` VALUES ('27', '3', '海澜之家衬衣', '1000.00', '100', 'u=2240097917,393031479&fm=26&gp=0.jpg15716424865661.jpg', '<strong><span style=\"background-color:#E53333;\">衬衣</span></strong>', '10', '1571641105', '0', null, '1');
INSERT INTO `goods` VALUES ('29', '2', 'jk裙子校服', '10001.00', '100', '5.jpg15716424518532.jpg', '1111', '12', '1571642438', '0', null, '1');

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_name` varchar(255) DEFAULT NULL,
  `admin_pass` varchar(32) DEFAULT NULL,
  `status` enum('2','1') DEFAULT '1',
  `flag` varchar(255) DEFAULT NULL,
  `add_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('1', 'admin', 'ff92a240d11b05ebd392348c35f781b2', '1', ' 53f139e187e60f8376343990737b8fec', '1571107485');
INSERT INTO `manager` VALUES ('14', 'xiaobai', 'ff92a240d11b05ebd392348c35f781b2', '1', '694157b9b17f21ee76e806fd8b489030', '1572231585');
INSERT INTO `manager` VALUES ('16', 'dabai', 'ff92a240d11b05ebd392348c35f781b2', '1', '9546eced7cc0145e4f588271dc00755a', '1572321758');
INSERT INTO `manager` VALUES ('17', 'laowang', 'ff92a240d11b05ebd392348c35f781b2', null, 'bc54db6bc1ce67d0145727c76e13ef5b', '1572321809');
INSERT INTO `manager` VALUES ('18', 'xiaowang', 'ff92a240d11b05ebd392348c35f781b2', '1', '6a594c63e316c917600a046d3893f627', '1572321900');

-- ----------------------------
-- Table structure for manager_role
-- ----------------------------
DROP TABLE IF EXISTS `manager_role`;
CREATE TABLE `manager_role` (
  `manager_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of manager_role
-- ----------------------------
INSERT INTO `manager_role` VALUES ('14', '1');
INSERT INTO `manager_role` VALUES ('16', '7');
INSERT INTO `manager_role` VALUES ('17', '7');
INSERT INTO `manager_role` VALUES ('18', '7');

-- ----------------------------
-- Table structure for member
-- ----------------------------
DROP TABLE IF EXISTS `member`;
CREATE TABLE `member` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `uname` varchar(32) DEFAULT NULL COMMENT '用户名',
  `upass` char(32) DEFAULT NULL COMMENT '密码',
  `phone` char(11) DEFAULT NULL,
  `sex` enum('2','1','0') DEFAULT '0',
  `code` varchar(255) DEFAULT NULL,
  `status` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `uname` (`uname`) COMMENT '用户名'
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of member
-- ----------------------------
INSERT INTO `member` VALUES ('10', 'daming', '670b14728ad9902aecba32e22fa4f6bd', null, '2', '', '2');
INSERT INTO `member` VALUES ('9', 'xiaoming', '670b14728ad9902aecba32e22fa4f6bd', null, '1', '483463a64bb96df1f27f63a429bf1f1e', '2');
INSERT INTO `member` VALUES ('11', 'zhangsan', '670b14728ad9902aecba32e22fa4f6bd', null, '0', 'ee8c0ca61407023c8ede182e04b4358e', '1');
INSERT INTO `member` VALUES ('12', 'lisi', '670b14728ad9902aecba32e22fa4f6bd', null, '0', 'c821757ade6c3914d909f13f6a509194', '1');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('1', '经理');
INSERT INTO `role` VALUES ('7', '主管');

-- ----------------------------
-- Table structure for role_auth
-- ----------------------------
DROP TABLE IF EXISTS `role_auth`;
CREATE TABLE `role_auth` (
  `role_id` int(11) DEFAULT NULL,
  `auth_id` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_auth
-- ----------------------------
INSERT INTO `role_auth` VALUES ('6', '1');
INSERT INTO `role_auth` VALUES ('6', '2');
INSERT INTO `role_auth` VALUES ('6', '3');
INSERT INTO `role_auth` VALUES ('6', '4');
INSERT INTO `role_auth` VALUES ('6', '5');
INSERT INTO `role_auth` VALUES ('6', '6');
INSERT INTO `role_auth` VALUES ('6', '7');
INSERT INTO `role_auth` VALUES ('1', '17');
INSERT INTO `role_auth` VALUES ('1', '16');
INSERT INTO `role_auth` VALUES ('1', '12');
INSERT INTO `role_auth` VALUES ('7', '11');
INSERT INTO `role_auth` VALUES ('7', '14');
INSERT INTO `role_auth` VALUES ('7', '15');
