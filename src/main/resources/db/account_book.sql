/*
 Navicat Premium Data Transfer

 Source Server         : ubuntu
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 111.231.244.96:3306
 Source Schema         : account_book

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 23/04/2019 12:45:09
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_expenses
-- ----------------------------
DROP TABLE IF EXISTS `t_expenses`;
CREATE TABLE `t_expenses` (
  `id` varchar(64) NOT NULL,
  `month` varchar(6) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `type` varchar(32) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_expenses
-- ----------------------------
BEGIN;
INSERT INTO `t_expenses` VALUES ('17598a8f82d8424dbb50026b315662db', '201903', 414.40, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('294aacbe91bf41699bff6e54f018b7b0', '201904', 5000.00, '车险/保养', '王超');
INSERT INTO `t_expenses` VALUES ('2ef1c1278e474e048b001b0d93cc6a8d', '201912', 5084.00, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('4555b2b164a64a2189169ea277d56fd6', '201904', 1799.67, '京东', '王超');
INSERT INTO `t_expenses` VALUES ('475eaf1fdeb84baebf0a6ed24c1ca7fb', '201910', 84.00, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('608cf4e59d7c4ac3bd24e7814f76e14e', '201907', 444.00, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('62a81bd9ef3e4016b10f8c16b7425ac6', '201906', 458.80, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('82431596fc6c446086f69e0055e39e68', '201908', 30458.80, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('9efb9c61e3254b728adfd7fd83582103', '201909', 86.80, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('a4eae7d69e264e689958bb6c3a05e568', '201905', 444.00, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('b6fb05025e284004bc03f46f5783e5c6', '201903', 1932.27, '京东', '王超');
INSERT INTO `t_expenses` VALUES ('cee5debe7e5b46b081615b69701ea02c', '201903', 1633.96, '支付花', '王超');
INSERT INTO `t_expenses` VALUES ('cf99d763beed4ae681b4c4eb2f427fc5', '201905', 6000.00, '房租', '王超');
INSERT INTO `t_expenses` VALUES ('da4253604d3c41858a03f5b5770098e3', '201911', 86.80, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('da5e19cd7f1d45bbaaaca486156cbfe9', '201904', 458.80, '支付宝', '王超');
INSERT INTO `t_expenses` VALUES ('ea36a8a6f3e44d378a3dee1f3591fe24', '202001', 2024.80, '支付宝', '王超');
COMMIT;

-- ----------------------------
-- Table structure for t_month
-- ----------------------------
DROP TABLE IF EXISTS `t_month`;
CREATE TABLE `t_month` (
  `id` varchar(32) NOT NULL,
  `month_name` varchar(6) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_month
-- ----------------------------
BEGIN;
INSERT INTO `t_month` VALUES (';jgia', '201908');
INSERT INTO `t_month` VALUES ('aalfei', '201909');
INSERT INTO `t_month` VALUES ('aifeain;', '202009');
INSERT INTO `t_month` VALUES ('ajifneai', '202005');
INSERT INTO `t_month` VALUES ('faaae', '201905');
INSERT INTO `t_month` VALUES ('faiefeni', '201911');
INSERT INTO `t_month` VALUES ('feianf', '202012');
INSERT INTO `t_month` VALUES ('feinafi', '202008');
INSERT INTO `t_month` VALUES ('fejianfa', '202011');
INSERT INTO `t_month` VALUES ('fejienfi', '202002');
INSERT INTO `t_month` VALUES ('fgenafi', '202001');
INSERT INTO `t_month` VALUES ('fjeainfeia', '202003');
INSERT INTO `t_month` VALUES ('gei', '201904');
INSERT INTO `t_month` VALUES ('ia;i;afei', '202006');
INSERT INTO `t_month` VALUES ('ing', '201906');
INSERT INTO `t_month` VALUES ('ingiei', '201903');
INSERT INTO `t_month` VALUES ('lajfe', '201907');
INSERT INTO `t_month` VALUES ('lfaine', '201910');
INSERT INTO `t_month` VALUES ('nfiaf', '202010');
INSERT INTO `t_month` VALUES ('ngiefi', '201912');
INSERT INTO `t_month` VALUES ('nifeafeai', '202004');
INSERT INTO `t_month` VALUES ('nvnfei', '202007');
COMMIT;

-- ----------------------------
-- Table structure for t_pay_method
-- ----------------------------
DROP TABLE IF EXISTS `t_pay_method`;
CREATE TABLE `t_pay_method` (
  `id` varchar(32) NOT NULL,
  `pay_method` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of t_pay_method
-- ----------------------------
BEGIN;
INSERT INTO `t_pay_method` VALUES ('aflfealifenige', '京东');
INSERT INTO `t_pay_method` VALUES ('alfaefeinge', '房租');
INSERT INTO `t_pay_method` VALUES ('feafe', '其他');
INSERT INTO `t_pay_method` VALUES ('feiageingei', '车险/保养');
INSERT INTO `t_pay_method` VALUES ('fieanf', '支付花');
INSERT INTO `t_pay_method` VALUES ('ienfe', '支付宝');
INSERT INTO `t_pay_method` VALUES ('lafejinga;', '微信');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
