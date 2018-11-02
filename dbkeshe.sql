/*
MySQL Data Transfer
Source Host: localhost
Source Database: dbkeshe
Target Host: localhost
Target Database: dbkeshe
Date: 2018/6/8 9:32:22
*/

SET FOREIGN_KEY_CHECKS=0;
-- ----------------------------
-- Table structure for admin
-- ----------------------------
DROP TABLE IF EXISTS `admin`;
CREATE TABLE `admin` (
  `aid` int(11) NOT NULL auto_increment,
  `username` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `sex` varchar(2) default NULL,
  `email` varchar(32) default NULL,
  `phone` varchar(32) default NULL,
  `birthday` date default NULL,
  `role` varchar(32) default 'admin',
  PRIMARY KEY  (`aid`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for data
-- ----------------------------
DROP TABLE IF EXISTS `data`;
CREATE TABLE `data` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(32) default NULL,
  `author` varchar(32) default NULL,
  `path` varchar(255) default NULL,
  `time` date default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for forum
-- ----------------------------
DROP TABLE IF EXISTS `forum`;
CREATE TABLE `forum` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(255) default NULL,
  `author` varchar(32) default NULL,
  `time` date default NULL,
  `content` varchar(255) default NULL,
  `type` varchar(32) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for forum_reply
-- ----------------------------
DROP TABLE IF EXISTS `forum_reply`;
CREATE TABLE `forum_reply` (
  `id` int(11) NOT NULL auto_increment,
  `forumid` int(11) default NULL,
  `author` varchar(32) default NULL,
  `content` text,
  `lou` int(11) default NULL,
  `time` date default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for student
-- ----------------------------
DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `sid` int(11) NOT NULL auto_increment,
  `username` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `sex` varchar(2) default NULL,
  `email` varchar(32) default NULL,
  `phone` varchar(32) default NULL,
  `birthday` date default NULL,
  `role` varchar(32) default 'student',
  PRIMARY KEY  (`sid`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for teacher
-- ----------------------------
DROP TABLE IF EXISTS `teacher`;
CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL auto_increment,
  `username` varchar(32) default NULL,
  `password` varchar(32) default NULL,
  `sex` varchar(2) default NULL,
  `email` varchar(32) default NULL,
  `phone` varchar(32) default NULL,
  `birthday` date default NULL,
  `role` varchar(32) default 'teacher',
  PRIMARY KEY  (`tid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for test
-- ----------------------------
DROP TABLE IF EXISTS `test`;
CREATE TABLE `test` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(32) default NULL,
  `author` varchar(32) default NULL,
  `path` varchar(255) default NULL,
  `time` date default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for video
-- ----------------------------
DROP TABLE IF EXISTS `video`;
CREATE TABLE `video` (
  `id` int(11) NOT NULL auto_increment,
  `title` varchar(32) default NULL,
  `author` varchar(32) default NULL,
  `path` varchar(255) default NULL,
  `time` date default NULL,
  `remark` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records 
-- ----------------------------
INSERT INTO `admin` VALUES ('1', 'admin', '123', null, null, null, null, 'admin');
INSERT INTO `data` VALUES ('22', '资料1.docx', '王老师', 'upload\\f1ffbd58-df9f-4290-a3fe-801a846c3b22_资料1.docx', '2018-06-07', null);
INSERT INTO `data` VALUES ('23', '资料2.docx', '王老师', 'upload\\866ac9f5-f185-48a7-98e5-2f4f54b65340_资料2.docx', '2018-06-07', null);
INSERT INTO `forum` VALUES ('2', '卡尔稍微调整了下就这么多讨论的，至宝投票不支持下吗？', '张三', '2018-06-01', '感觉这个调整就是为了平衡出门那14点智力，线上至少允许你切技能了。不然你切过去再切回来80点蓝就白白浪费了(尤其天火还没k到头)。\r\n这次调整卡尔又开始受重视，至宝投票请大家支持一下啊。\r\n隐隐感觉今年火枪要赢，使用数排在前面的英雄就这2个了，你们再乱投矮子就要得逞了啊。', '网事杂谈');
INSERT INTO `forum` VALUES ('3', ' ESL ONE 伯明翰 2018全球总决赛(VP夺冠) ', '张三', '2018-06-01', 'ESL One伯明翰站，这将是本赛季，TI8前倒数第二个M*jor，也将是在英国举办的第一个Dot*2 M*jor赛事。本次比赛将于5月23日-27日举行，届时来自世界各地的12支顶尖战队将在英国伯明翰汇聚一堂，为了100万美元的奖金和1500点赛事积分展开战斗。', '我要求助');
INSERT INTO `forum` VALUES ('4', 'Window*服务用 Procce** 调用 exe 卡住', '', '2018-06-01', 'Window* 服务和 exe 都是我写的。\r\nWindow*服务的功能： 通用的定时功能， 通过配置动态创建定时器， 通过 Procce** 调用外部的 exe 文件。\r\nexe 也是 C# 写的， 功能是对目标文件夹中文件的一些压缩、复制、移动的一些操作。\r\n', '技术交流');
INSERT INTO `forum` VALUES ('5', '去俄罗斯', '张三', '2018-06-02', '俄罗斯', '技术交流');
INSERT INTO `forum` VALUES ('6', '*哈哈哈哈哈', '张三', '2018-06-02', '*', '灌水');
INSERT INTO `forum` VALUES ('7', '**捱三顶五无无无无无无无', 'admin', '2018-06-04', '阿萨德', '灌水');
INSERT INTO `forum` VALUES ('8', '*11111233333', 'admin', '2018-06-05', '*', '技术交流');
INSERT INTO `forum` VALUES ('9', '请问王老师电话是多少？', 'admin', '2018-06-07', '请问王老师电话是多少，我有急事找她', '我要求助');
INSERT INTO `forum` VALUES ('10', '公选课课表通知', 'admin', '2018-06-07', '1', '网事杂谈');
INSERT INTO `forum` VALUES ('11', '网络工程16下学期课程表安排', 'admin', '2018-06-07', '1', '技术交流');
INSERT INTO `forum` VALUES ('12', '大四毕业了，清仓大处理', 'admin', '2018-06-07', '1', '灌水');
INSERT INTO `forum` VALUES ('13', '南昌同学，请周五上午到我办公室一趟', 'admin', '2018-06-07', '1', '网事杂谈');
INSERT INTO `forum` VALUES ('14', '老师好，暑假什么时候放假呀？', 'admin', '2018-06-07', '家里有些安排，想提前问一下老师什么时候放暑假，不知道老师有消息没有。', '我要求助');
INSERT INTO `forum_reply` VALUES ('20', '2', '张三', '阿', '1', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('21', '2', '张三', '阿', '2', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('22', '3', '张三', '阿', '1', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('23', '3', '张三', '阿', '2', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('24', '3', '张三', '阿', '3', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('25', '3', '张三', '阿', '4', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('26', '3', '张三', '阿', '5', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('27', '3', '张三', '俄罗斯', '6', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('28', '3', '张三', '', '7', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('29', '5', '张三', '是', '1', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('30', '5', '张三', '是', '2', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('31', '4', '', '阿达', '1', '2018-05-31');
INSERT INTO `forum_reply` VALUES ('32', '5', '张三', '阿萨德', '3', '2018-06-01');
INSERT INTO `forum_reply` VALUES ('33', '5', '张三', '阿萨德', '4', '2018-06-01');
INSERT INTO `forum_reply` VALUES ('34', '4', '张三', '俄罗斯', '2', '2018-06-02');
INSERT INTO `forum_reply` VALUES ('35', '6', '张三', '*', '1', '2018-06-02');
INSERT INTO `forum_reply` VALUES ('36', '4', '张三', '*', '3', '2018-06-02');
INSERT INTO `forum_reply` VALUES ('37', '4', '张三', '阿', '4', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('38', '4', '张三', '阿', '5', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('39', '4', '张三', '阿', '6', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('40', '4', '张三', '阿', '7', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('41', '4', '张三', '阿', '8', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('42', '4', '张三', '阿', '9', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('43', '4', '张三', '阿', '10', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('44', '4', '张三', '阿', '11', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('45', '4', '张三', '阿', '12', '2018-06-03');
INSERT INTO `forum_reply` VALUES ('46', '7', 'admin', '阿萨德', '1', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('47', '7', 'admin', '阿萨德', '2', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('48', '7', 'admin', '阿达', '3', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('49', '7', 'admin', '阿萨德', '4', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('50', '7', 'admin', '阿达', '5', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('51', '7', 'admin', '阿达', '6', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('52', '7', 'admin', '阿萨德', '7', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('53', '7', '朱强', '恩', '8', '2018-06-04');
INSERT INTO `forum_reply` VALUES ('54', '8', 'admin', '去', '1', '2018-06-05');
INSERT INTO `forum_reply` VALUES ('55', '8', 'admin', '去', '2', '2018-06-05');
INSERT INTO `forum_reply` VALUES ('56', '8', 'admin', '去', '3', '2018-06-05');
INSERT INTO `forum_reply` VALUES ('57', '8', 'admin', '去', '4', '2018-06-05');
INSERT INTO `forum_reply` VALUES ('58', '5', 'admin', '啊啊啊啊啊啊啊啊', '5', '2018-06-05');
INSERT INTO `forum_reply` VALUES ('59', '9', 'admin', '1393393339', '1', '2018-06-07');
INSERT INTO `student` VALUES ('23', '张三', '123', '男', '123', '13', '2016-06-06', 'student');
INSERT INTO `student` VALUES ('24', '张正光', '123', '男', '975129758@qq.com', '123', '2018-06-04', 'student');
INSERT INTO `teacher` VALUES ('1', '王立伟', '123', '女', '123@qq.com', '123', '1996-03-27', 'teacher');
INSERT INTO `teacher` VALUES ('2', '朱强', '123', '男', '975129758@qq.com', '123', '2018-06-04', 'teacher');
INSERT INTO `test` VALUES ('16', '邮箱验证.txt', 'zzg', 'upload\\0eae0c87-633c-4f83-8c68-8be29e1082bd_邮箱验证.txt', '2018-05-30', null);
INSERT INTO `test` VALUES ('17', '网络162班13号张正光.rar', 'zzg', 'upload\\9f9d9cd3-bf54-41d5-b277-21fd4742ccdf_网络162班13号张正光.rar', '2018-05-30', null);
INSERT INTO `test` VALUES ('18', '2.注册-用户名是否唯一验证.avi', 'zzg', 'upload\\11b043f5-8c59-4c84-959f-b484207459df_2.注册-用户名是否唯一验证.avi', '2018-05-30', null);
INSERT INTO `test` VALUES ('19', '新建 Microsoft Word 文档.docx', 'zzg', 'upload\\c0cbe020-296c-4be5-99c3-a975fd35592f_新建 Microsoft Word 文档.docx', '2018-05-30', null);
INSERT INTO `test` VALUES ('20', '人际交往报告.docx', 'zzg', 'upload\\ba81b8ea-6c27-4d9c-977e-c2f56d452b65_人际交往报告.docx', '2018-05-31', null);
INSERT INTO `test` VALUES ('21', '网络162南昌12.docx', 'zzg', 'upload\\37cce1b3-8e30-4517-8f3b-d03e86b20f33_网络162南昌12.docx', '2018-05-31', null);
INSERT INTO `test` VALUES ('22', '人际交往报告.docx', 'zzg', 'upload\\1baa2009-7a83-407b-9e94-b744663d3fe1_人际交往报告.docx', '2018-05-31', null);
INSERT INTO `test` VALUES ('28', '人际交往报告.docx', 'zzg', 'upload\\45219dc2-ea97-4c62-88e9-b4ac4786730c_人际交往报告.docx', '2018-05-31', null);
INSERT INTO `test` VALUES ('29', '网络162 张正光13.docx', '阿萨德', 'upload\\9fe9268f-c26a-4365-aaaf-41bb4b2f24db_网络162 张正光13.docx', '2018-06-01', null);
INSERT INTO `test` VALUES ('30', '网络162南昌12.docx', '啊啊', 'upload\\255ab661-d463-4ce1-b589-5b9ad752b87d_网络162南昌12.docx', '2018-06-03', null);
INSERT INTO `test` VALUES ('31', '1.docx', 'zzg', 'upload\\dd4fe54e-eeb0-43c9-adae-8ec395d80f4f_1.docx', '2018-06-03', null);
INSERT INTO `video` VALUES ('32', '网络162班12号南昌13号张正光.mp4', 'zzg', 'upload\\648c6ee8-0c21-49b0-8a1e-8686551908fc_网络162班12号南昌13号张正光.mp4', '2018-06-05', null);
INSERT INTO `video` VALUES ('33', '网络162班12号南昌13号张正光.mp4', '王老师', 'upload\\7b2451df-8b49-4897-bdd8-5b15696fa7f9_网络162班12号南昌13号张正光.mp4', '2018-06-07', null);
