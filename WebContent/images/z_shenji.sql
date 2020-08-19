/*
MySQL Data Transfer
Source Host: localhost
Source Database: z_shenji
Target Host: localhost
Target Database: z_shenji
Date: 2010-5-17 12:51:42
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for t_catagory
-- ----------------------------
CREATE TABLE `t_catagory` (
  `catagory_id` int(11) NOT NULL,
  `catagory_name` varchar(255) default NULL,
  `catagory_discription` varchar(255) default NULL,
  `discription_one1` varchar(255) default NULL,
  `discription_one3` varchar(255) default NULL,
  `discription_one2` int(11) default NULL,
  `discription_one4` date default NULL,
  PRIMARY KEY  (`catagory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_question
-- ----------------------------
CREATE TABLE `t_question` (
  `question_id` int(11) NOT NULL,
  `question_title` varchar(255) default NULL,
  `question_content` varchar(5000) default NULL,
  `question_date` varchar(255) default NULL,
  `question_upateDate` varchar(255) default NULL,
  `question_status` varchar(255) default NULL,
  `question_frequency` int(11) default NULL,
  `frequency_catagory_id` int(11) default NULL,
  `frequency_user_id` int(11) default NULL,
  `frequency_one1` varchar(255) default NULL,
  `frequency_one2` varchar(255) default NULL,
  `frequency_one3` varchar(255) default NULL,
  `frequency_one4` int(11) default NULL,
  `frequency_one5` int(11) default NULL,
  `frequency_one6` date default NULL,
  `frequency_one7` int(11) default '222',
  `frequency_one8` int(11) default '2222',
  PRIMARY KEY  (`question_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
CREATE TABLE `t_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) default NULL,
  `user_pw` varchar(255) default NULL,
  `user_type` int(11) default NULL,
  `user_one2` varchar(255) default NULL,
  `user_one3` int(11) default NULL,
  `user_one4` int(11) default NULL,
  `user_one5` varchar(255) default NULL,
  `user_one6` varchar(255) default NULL,
  `user_one7` varchar(255) default NULL,
  `user_one8` varchar(255) default NULL,
  `user_one9` varchar(255) default NULL,
  `user_one10` varchar(255) default NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `t_catagory` VALUES ('1', '审计相关问题1', '审计相关问题1审计相关问题1审计相关问题1', null, null, null, null);
INSERT INTO `t_catagory` VALUES ('2', '审计相关问题2', '审计相关问题2审计相关问题2', null, null, null, null);
INSERT INTO `t_catagory` VALUES ('3', '审计相关问题3', '审计相关问题3审计相关问题3审计相关问题3', null, null, null, null);
INSERT INTO `t_question` VALUES ('31', null, '审计相关问题1审计相关问题1审计相关问题1', '2010-5-17 12:51:14', null, null, '0', '1', '5', '6', '审计相关问题1', null, '0', null, null, '1', null);
INSERT INTO `t_user` VALUES ('1', 's', 's', '0', null, null, null, null, null, null, null, null, null);
INSERT INTO `t_user` VALUES ('3', '1', '1', '1', null, null, null, '1', '111', '1111', null, null, null);
INSERT INTO `t_user` VALUES ('4', '5', '5', '1', null, null, null, '5', '5', '5', null, null, null);
INSERT INTO `t_user` VALUES ('5', '6', '6', '1', null, null, null, '6', '6', '6d', null, null, null);
INSERT INTO `t_user` VALUES ('6', '6', '6', '1', null, null, null, '6', '6', '6', null, null, null);
