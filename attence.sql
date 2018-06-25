/*
Navicat MySQL Data Transfer

Source Server         : aliyun
Source Server Version : 50722
Source Host           : 119.23.34.67:3306
Source Database       : attence

Target Server Type    : MYSQL
Target Server Version : 50722
File Encoding         : 65001

Date: 2018-06-24 01:08:20
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `courseID` int(11) NOT NULL AUTO_INCREMENT,
  `course` varchar(255) NOT NULL,
  `courseNO` varchar(255) NOT NULL,
  `teacherNO` varchar(255) NOT NULL,
  `classroom` varchar(255) DEFAULT NULL,
  `week` int(11) DEFAULT NULL,
  `start` varchar(20) DEFAULT NULL,
  `end` varchar(20) DEFAULT NULL,
  `period` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`courseID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '计算机工程实训', 'C170327001', 'T170327001', '数计中-307', '3', '8:20', '8:30', '1-11');

-- ----------------------------
-- Table structure for `record_attence`
-- ----------------------------
DROP TABLE IF EXISTS `record_attence`;
CREATE TABLE `record_attence` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `studentNO` varchar(255) NOT NULL,
  `courseNO` varchar(255) NOT NULL,
  `time` bigint(20) NOT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_attence
-- ----------------------------
INSERT INTO `record_attence` VALUES ('1', 'N170327022', 'C170327001', '1529423038980');
INSERT INTO `record_attence` VALUES ('2', 'N170327022', 'C170327001', '1529496604804');

-- ----------------------------
-- Table structure for `record_course`
-- ----------------------------
DROP TABLE IF EXISTS `record_course`;
CREATE TABLE `record_course` (
  `recordID` int(11) NOT NULL AUTO_INCREMENT,
  `studentNO` varchar(255) NOT NULL,
  `courseNO` varchar(255) NOT NULL,
  PRIMARY KEY (`recordID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of record_course
-- ----------------------------
INSERT INTO `record_course` VALUES ('1', 'N170327022', 'C170327001');
INSERT INTO `record_course` VALUES ('2', 'N170327036', 'C170327001');
INSERT INTO `record_course` VALUES ('3', 'N170327055', 'C170327001');
INSERT INTO `record_course` VALUES ('4', 'N170327049', 'C170327001');

-- ----------------------------
-- Table structure for `role_menu`
-- ----------------------------
DROP TABLE IF EXISTS `role_menu`;
CREATE TABLE `role_menu` (
  `menuID` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL,
  `menu` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menuID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of role_menu
-- ----------------------------

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `studentID` int(11) NOT NULL AUTO_INCREMENT,
  `studentNO` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  `major` varchar(255) NOT NULL,
  PRIMARY KEY (`studentID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'N170327022', '郭鸿清', '男', '数计学院', '计算机技术');
INSERT INTO `student` VALUES ('2', 'N170327036', '李坤辉', '男', '数计学院', '计算机技术');
INSERT INTO `student` VALUES ('3', 'N170327055', '苏培泳', '男', '数计学院', '计算机技术');
INSERT INTO `student` VALUES ('4', 'N170327049', '骆慧伦', '女', '数计学院', '计算机技术');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `teacherID` int(11) NOT NULL,
  `teacherNO` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `institute` varchar(255) NOT NULL,
  PRIMARY KEY (`teacherID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', 'T170327001', '池老标', '男', '数计学院');
INSERT INTO `teacher` VALUES ('2', 'T170327002', 'xiaolong', '男', '数计学院');

-- ----------------------------
-- Table structure for `user`
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `roleID` int(11) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `passwd` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `roleNO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`userID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('3', '0', 'admin', '123456', '11111111111', 'A001');
INSERT INTO `user` VALUES ('4', '1', 'teacher', '123456', '11111111111', 'T170327001');
INSERT INTO `user` VALUES ('5', '2', 'student', '123456', '11111111111', 'N170327022');
INSERT INTO `user` VALUES ('6', '2', 'jack', '123123', '11111111111', 'N170327055');
INSERT INTO `user` VALUES ('7', '2', 'kangkang', '123456', '11111111111', 'N170327036');
INSERT INTO `user` VALUES ('9', '2', 'lhl', '123123', '1111111111', 'N170327049');
INSERT INTO `user` VALUES ('10', '1', '123123', '123456', '12312312312', 'T170327002');
