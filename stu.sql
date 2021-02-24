/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 50724
 Source Host           : 123.57.155.137:3306
 Source Schema         : stu

 Target Server Type    : MySQL
 Target Server Version : 50724
 File Encoding         : 65001

 Date: 06/07/2020 20:55:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for stu_msg
-- ----------------------------
DROP TABLE IF EXISTS `stu_msg`;
CREATE TABLE `stu_msg`  (
  `stu_id` varchar(13) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `stu_name` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_class` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_grade` varchar(5) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `stu_major` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`stu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of stu_msg
-- ----------------------------
INSERT INTO `stu_msg` VALUES ('2017101110102', '司马昭', '物联网2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017102990103', '司马璠', '物联网2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017102990951', '路人甲', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017103020309', '司马洁', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110000', '冯提莫', '', '', '');
INSERT INTO `stu_msg` VALUES ('2017105110104', '司马芸儿', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110105', '司马婷然', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110108', '司马芳蕙', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110112', '长野放', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110139', '安德玛', '2017级', '计科3班', '计科');
INSERT INTO `stu_msg` VALUES ('2017105110153', '诸葛望', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110155', '诸葛岚岚', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110205', '诸葛项明', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110208', '李云', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110211', '李兴国', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110212', '单昕雨', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110213', '单正平', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110216', '崔雪', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110222', '崔妍歌', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110224', '都雅诗', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110225', '秦铁柱', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110227', '秦铁柱', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110228', '都爰', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110229', '秦铁柱', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110230', '上官昊明', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110231', '上官素', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110232', '董仕', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110233', '金平萱', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110234', '雷兴文', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110237', '雷民', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110239', '科比梅梅', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110241', '司徒昭阳', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110242', '司马辛', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110243', '上官甲辰', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110244', '呼延丑', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110245', '澹台土', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110246', '乌雅柔兆', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110247', '公孙乙卯', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110248', '富察未', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110249', '杜摄提格', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110250', '欧阳哲茂', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110252', '秦鸿风', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110253', '秦学', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110254', '鲍鸿羲', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110256', '鲍哲瀚', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110300', '梅雅隽', '计科3班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110301', '梅浩涆', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110302', '冯初雪', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110304', '冯淼淼', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110305', '朱燕岚', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110313', '刘邦', '网络技术方向2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110314', '秦铁柱', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110315', '杨茂学', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110316', '汪怜双', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110317', '汪合瑞', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110318', '师雯', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110319', '师冷', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110320', '莫莫莫', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110321', '张天爱', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110322', '李沁', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110323', '徐璐', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110324', '柯南', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110325', '毛利小五郎', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110327', '宫城良田', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110328', '詹姆斯.恩', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110329', '任斌斌', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110330', '路人乙', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110331', '赵淑静', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110332', '任欣嘉', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110334', '张书南', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110335', '宋歆美', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110337', '刘璞瑜', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110339', '王清懿', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110340', '王娅静', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110342', '张涵涵', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110343', '刘云韶', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110344', '申屠飞航', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110345', '宇文嘉容', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110346', '张芷云', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110348', '胡书意', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110349', '胡雅寒', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110350', '邓代芙', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110351', '邓辰良', '物联网1班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110353', '夏静枫', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110355', '夏问萍', '网络技术2班', '2017级', '计算机科学与技术');
INSERT INTO `stu_msg` VALUES ('2017105110356', '国子明', '物联网1班', '2017级', '计算机科学与技术');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `name` char(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `tel` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('123', '123', '18503643825');
INSERT INTO `user` VALUES ('222', '222', '18503643825');
INSERT INTO `user` VALUES ('233', '123', '123456');
INSERT INTO `user` VALUES ('32', '22', '18503643825');
INSERT INTO `user` VALUES ('334', '111', '');
INSERT INTO `user` VALUES ('444', '444', '18503643825');
INSERT INTO `user` VALUES ('45643', '0', '18503643825');
INSERT INTO `user` VALUES ('666', '666', '18503643825');
INSERT INTO `user` VALUES ('8898', '000', '89888888888');
INSERT INTO `user` VALUES ('admin', 'admin', '13322222222');
INSERT INTO `user` VALUES ('asd', '123', '18503643825');
INSERT INTO `user` VALUES ('asdf', '123', '123456');
INSERT INTO `user` VALUES ('CNDeku', '123456', '18500000000');
INSERT INTO `user` VALUES ('CN_Deku', '321', '18503643825');
INSERT INTO `user` VALUES ('dafdsg', '123456', '18503643825');
INSERT INTO `user` VALUES ('dcon', '123', '12154111111');
INSERT INTO `user` VALUES ('Erin', '123456', '18060616670');
INSERT INTO `user` VALUES ('fdsa', '123', '18503643825');
INSERT INTO `user` VALUES ('gina', '123456', '18503643855');
INSERT INTO `user` VALUES ('heting', '123456', '18503874444');
INSERT INTO `user` VALUES ('hjk', '', '18503643825');
INSERT INTO `user` VALUES ('jia', '123456', '12345678910');
INSERT INTO `user` VALUES ('lkj', '123', '18503643825');
INSERT INTO `user` VALUES ('mnb', '123', '18544444444');
INSERT INTO `user` VALUES ('tyuy', '123', '18503643825');
INSERT INTO `user` VALUES ('uio', '123', '18503643825');
INSERT INTO `user` VALUES ('user', '123', '18503643825');
INSERT INTO `user` VALUES ('wqre', '111', '18503643825');
INSERT INTO `user` VALUES ('yui', '19981102', '18503643825');
INSERT INTO `user` VALUES ('zhangsan', '123456', '15500000000');
INSERT INTO `user` VALUES ('zxc', '123', '18503643825');

SET FOREIGN_KEY_CHECKS = 1;
