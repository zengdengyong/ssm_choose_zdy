/*
Navicat MySQL Data Transfer

Source Server         : mysql
Source Server Version : 50087
Source Host           : localhost:3306
Source Database       : choose_course

Target Server Type    : MYSQL
Target Server Version : 50087
File Encoding         : 65001

Date: 2019-01-16 19:38:29
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `course`
-- ----------------------------
DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `c_id` int(11) NOT NULL auto_increment COMMENT '课程id',
  `c_name` varchar(20) NOT NULL default '' COMMENT '课程名称',
  `c_score` int(11) default NULL COMMENT '学分',
  `c_remark` varchar(200) default '' COMMENT '备注',
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course
-- ----------------------------
INSERT INTO `course` VALUES ('1', '语文', '3', '备注信息');
INSERT INTO `course` VALUES ('2', '数学', '4', '备注信息');
INSERT INTO `course` VALUES ('3', '体育', '2', '备注信息');
INSERT INTO `course` VALUES ('4', '美术', '2', '备注信息');

-- ----------------------------
-- Table structure for `student`
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `s_id` int(11) NOT NULL auto_increment COMMENT '学生id',
  `s_name` varchar(20) NOT NULL default '' COMMENT '学生名字',
  `s_password` varchar(40) NOT NULL default '' COMMENT '密码',
  `s_email` varchar(40) default '' COMMENT '学生邮箱',
  `s_age` int(11) default NULL COMMENT '学生年龄',
  `s_remark` varchar(200) default '' COMMENT '备注',
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB AUTO_INCREMENT=82 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student
-- ----------------------------
INSERT INTO `student` VALUES ('1', 'zhangsan', '111', '947161829@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('2', 'lisi', '123', '17628289246@163.com', '12', '其他备注信息');
INSERT INTO `student` VALUES ('3', 'wangwu', '333', '111@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('4', 'zhaoliu', '444', '112@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('5', 'qianqi', '555', '124@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('6', 'wangba', '666', '123@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('7', 'wangwu', '333', 'test@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('8', 'zhaoliu', '444', 'test@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('9', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('10', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('11', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('12', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('13', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('14', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('15', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('16', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('17', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('18', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('19', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('20', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('21', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('22', 'wangwu', '333', 'test@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('23', 'zhaoliu', '444', 'test@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('24', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('25', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('26', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('27', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('28', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('29', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('30', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('31', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('32', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('33', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('34', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('35', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('36', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('37', 'wangwu', '333', 'test@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('38', 'zhaoliu', '444', 'test@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('39', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('40', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('41', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('42', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('43', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('44', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('45', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('46', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('47', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('48', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('49', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('50', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('51', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('52', 'wangwu', '333', 'test@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('53', 'zhaoliu', '444', 'test@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('54', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('55', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('56', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('57', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('58', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('59', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('60', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('61', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('62', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('63', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('64', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('65', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('66', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('67', 'wangwu', '333', 'test@qq.com', '14', '其他备注信息');
INSERT INTO `student` VALUES ('68', 'zhaoliu', '444', 'test@qq.com', '15', '其他备注信息');
INSERT INTO `student` VALUES ('69', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('70', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('71', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('72', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('73', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('74', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('75', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('76', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('77', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('78', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('79', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');
INSERT INTO `student` VALUES ('80', 'qianqi', '555', 'test@qq.com', '16', '其他备注信息');
INSERT INTO `student` VALUES ('81', 'wangba', '666', 'test@qq.com', '11', '其他备注信息');

-- ----------------------------
-- Table structure for `student_course`
-- ----------------------------
DROP TABLE IF EXISTS `student_course`;
CREATE TABLE `student_course` (
  `s_c_id` int(11) NOT NULL auto_increment COMMENT '学生和课程中间表id',
  `s_id` int(11) NOT NULL COMMENT '学生id',
  `c_id` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY  (`s_c_id`),
  UNIQUE KEY `sc_sid_cid_uk` (`s_id`,`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_course
-- ----------------------------
INSERT INTO `student_course` VALUES ('1', '1', '1');
INSERT INTO `student_course` VALUES ('2', '1', '2');
INSERT INTO `student_course` VALUES ('4', '1', '3');
INSERT INTO `student_course` VALUES ('3', '2', '1');

-- ----------------------------
-- Table structure for `teacher`
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `t_id` int(11) NOT NULL auto_increment COMMENT '老师id',
  `t_name` varchar(20) NOT NULL default '' COMMENT '老师名字',
  `t_remark` varchar(200) default '' COMMENT '备注',
  PRIMARY KEY  (`t_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher
-- ----------------------------
INSERT INTO `teacher` VALUES ('1', '老雷', '备注信息');
INSERT INTO `teacher` VALUES ('2', '老陈', '备注信息');
INSERT INTO `teacher` VALUES ('3', '老余', '备注信息');
INSERT INTO `teacher` VALUES ('4', '老曾', '备注信息');

-- ----------------------------
-- Table structure for `teacher_course`
-- ----------------------------
DROP TABLE IF EXISTS `teacher_course`;
CREATE TABLE `teacher_course` (
  `t_c_id` int(11) NOT NULL auto_increment COMMENT '老师和课程中间表的id',
  `t_id` int(11) NOT NULL COMMENT '老师id',
  `c_id` int(11) NOT NULL COMMENT '课程id',
  PRIMARY KEY  (`t_c_id`),
  UNIQUE KEY `tc_tid_cid_uk` (`t_id`,`c_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_course
-- ----------------------------
INSERT INTO `teacher_course` VALUES ('1', '1', '1');
INSERT INTO `teacher_course` VALUES ('5', '1', '2');
INSERT INTO `teacher_course` VALUES ('2', '2', '2');
INSERT INTO `teacher_course` VALUES ('3', '3', '3');
INSERT INTO `teacher_course` VALUES ('4', '4', '4');
