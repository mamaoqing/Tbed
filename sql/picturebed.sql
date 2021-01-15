/*
 Navicat Premium Data Transfer

 Source Server         : 172.16.0.42
 Source Server Type    : MariaDB
 Source Server Version : 100504
 Source Host           : 172.16.0.42:3306
 Source Schema         : picturebed

 Target Server Type    : MariaDB
 Target Server Version : 100504
 File Encoding         : 65001

 Date: 15/01/2021 21:22:04
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for album
-- ----------------------------
DROP TABLE IF EXISTS `album`;
CREATE TABLE `album`  (
  `albumkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `albumtitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `createdate` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `userid` int(10) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for code
-- ----------------------------
DROP TABLE IF EXISTS `code`;
CREATE TABLE `code`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `value` int(20) NOT NULL,
  `code` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of code
-- ----------------------------
INSERT INTO `code` VALUES (2, 1024, 'f70b3ec2473a658a7c922237645e00f73f1996a0095767cfa19ecd29dab26e04');
INSERT INTO `code` VALUES (3, 1024, '9799a265d89fc026f3b2c22a6bde53ebf859ed707543a6a8bd3e13e6b83131aa');
INSERT INTO `code` VALUES (4, 1024, 'c301b863e12bff3f7cdba2af0d7ca134c819419ff6eb3e21260a5199456efb43');
INSERT INTO `code` VALUES (5, 1024, '7279a5421d022f7e6c234d94d90a4d02d54a9053e35054276fdfc532b2433aff');
INSERT INTO `code` VALUES (6, 1024, 'ce8d66dca8f72c1b7a7aced177e2df6c4c9fa0b39d04e97280124323befae9c6');
INSERT INTO `code` VALUES (7, 1024, 'df046eef348c873acb7340565f82381255b6e4869c1e25122b3e7af28316904a');
INSERT INTO `code` VALUES (8, 1024, '78833240197a06d3fb793cd6747e84cd3c6c2323633d6bc49bb7518e98f7245f');
INSERT INTO `code` VALUES (9, 1024, '2ec0ba794ba60d7d7adcfe3cea4dd6949921d319333d890b226ebd4f463cf7e9');
INSERT INTO `code` VALUES (10, 1024, '5cb3ffd64a3ba4fdfb1716b172fa44723f698bb397471eeebcb30f27f524d70b');

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `sourcekey` int(4) NULL DEFAULT NULL,
  `emails` int(4) NULL DEFAULT NULL COMMENT '邮箱配置',
  `webname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '网站名',
  `explain` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页左下角说明',
  `video` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '视频地址',
  `backtype` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '背景类型',
  `links` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备案号',
  `notice` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '公告',
  `baidu` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '百度统计',
  `domain` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '站点域名',
  `background1` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '首页背景图',
  `background2` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传页面背景图',
  `sett` int(2) NOT NULL COMMENT '首页样式',
  `webms` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webkeywords` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `webfavicons` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `theme` int(4) NULL DEFAULT 1 COMMENT '主题',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------
INSERT INTO `config` VALUES (1, 8, 1, '请叫我师哥', '网站由JAVA语言编写应用SpringBoot框架开发，前端全部组件由BootStrap/Layui框架编写。', 'https://hellohao-cloud.oss-cn-beijing.aliyuncs.com/Pexels.mp4', '1', '<a rel=\"nofollow\" target=\"_blank\">鲁ICP备20003264号-1</a>', '也许...|这将是最好用的图床', 'console.log(\'\\n\' + \' %c 师哥出品，必属精品！ \' + \'\\n\', \'color: #fadfa3; background: #030307; padding:5px 0;\');', 'http://172.16.0.42:8088', 'http://qjwsg.com:8080/fileupload/file//icon/50a203b485f547de865efe7407205050.jpg', 'http://qjwsg.com:8080/fileupload/file//icon/3bf7cca17ddb493b886b8a9dcc0dcdd5.jpg', 1, '', '', '', 1);

-- ----------------------------
-- Table structure for emailconfig
-- ----------------------------
DROP TABLE IF EXISTS `emailconfig`;
CREATE TABLE `emailconfig`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `emails` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `emailkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '授权码',
  `emailurl` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '服务器',
  `port` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '端口',
  `emailname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户名',
  `using` int(4) NULL DEFAULT NULL COMMENT '1为可用，其他为不使用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of emailconfig
-- ----------------------------
INSERT INTO `emailconfig` VALUES (1, 'luyuna1121@163.com', '123', '123', '0', NULL, NULL);

-- ----------------------------
-- Table structure for group
-- ----------------------------
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `groupname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组名称',
  `keyid` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of group
-- ----------------------------
INSERT INTO `group` VALUES (1, '默认群组', 5);

-- ----------------------------
-- Table structure for imgandalbum
-- ----------------------------
DROP TABLE IF EXISTS `imgandalbum`;
CREATE TABLE `imgandalbum`  (
  `imgname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `albumkey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for imgdata
-- ----------------------------
DROP TABLE IF EXISTS `imgdata`;
CREATE TABLE `imgdata`  (
  `id` int(255) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `imgname` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片名',
  `imgurl` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '图片链接',
  `userid` int(10) NULL DEFAULT NULL COMMENT '用户名',
  `updatetime` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '上传时间',
  `sizes` int(255) NULL DEFAULT NULL COMMENT '文件大小',
  `abnormal` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `source` int(2) NULL DEFAULT NULL COMMENT '存储源',
  `imgtype` int(2) NULL DEFAULT NULL,
  `explains` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `md5key` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `index_md5key_url`(`md5key`, `imgurl`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 45 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compressed;

-- ----------------------------
-- Records of imgdata
-- ----------------------------
INSERT INTO `imgdata` VALUES (23, '2020/12/28/TOIMG4ea611228083701N.jpg', 'http://172.16.0.42:8088/2020/12/28/TOIMG4ea611228083701N.jpg', 1, '2020-12-28', 5, '172.16.0.37', 5, 0, NULL, 'd74da3363fb1e770537ce50383f55569');
INSERT INTO `imgdata` VALUES (24, '2020/12/28/TOIMG9e28b1228083701N.jpg', 'http://172.16.0.42:8088/2020/12/28/TOIMG9e28b1228083701N.jpg', 1, '2020-12-28', 5, '172.16.0.37', 5, 0, NULL, 'c425c741f9ecd0818d457e764d883432');
INSERT INTO `imgdata` VALUES (25, '2020/12/28/TOIMG421281228083701N.jpg', 'http://172.16.0.42:8088/2020/12/28/TOIMG421281228083701N.jpg', 1, '2020-12-28', 4, '172.16.0.37', 5, 0, NULL, '1546aa0abf8f69f2650cbf752f08503f');
INSERT INTO `imgdata` VALUES (26, '2020/12/28/TOIMGe26b71228083701N.jpg', 'http://172.16.0.42:8088/2020/12/28/TOIMGe26b71228083701N.jpg', 1, '2020-12-28', 4, '172.16.0.37', 5, 0, NULL, '66572423691d87c689ee5bc15e493b9b');
INSERT INTO `imgdata` VALUES (27, '2020/12/28/TOIMG4ee5b1228083701N.jpg', 'http://172.16.0.42:8088/2020/12/28/TOIMG4ee5b1228083701N.jpg', 1, '2020-12-28', 4, '172.16.0.37', 5, 0, NULL, 'd0283458f45f884ae25f22c2850574e9');
INSERT INTO `imgdata` VALUES (28, '2020/12/28/TOIMGc83191228090226N.png', 'http://172.16.0.42:8088/2020/12/28/TOIMGc83191228090226N.png', 1, '2020-12-28', 89, '172.16.0.37', 5, 0, NULL, '6f8fd4a68e8cc70524a888bf704c1c62');
INSERT INTO `imgdata` VALUES (29, '2020/12/28/TOIMG918d61228092634N.png', 'http://172.16.0.42:8088/2020/12/28/TOIMG918d61228092634N.png', 1, '2020-12-28', 54, '172.16.0.37', 5, 0, NULL, '6482f50aa71de369d9780395ba21e351');
INSERT INTO `imgdata` VALUES (30, '2020/12/28/TOIMG5371a1228092859N.png', 'http://172.16.0.42:8088/2020/12/28/TOIMG5371a1228092859N.png', 1, '2020-12-28', 178, '172.16.0.37', 5, 0, NULL, '1d58a77c32511b23e5dc016b203e1e2b');
INSERT INTO `imgdata` VALUES (33, '2021/01/12/TOIMG1fbfa0112074617N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG1fbfa0112074617N.jpg', 1, '2021-01-12', 71, '172.16.0.38', 5, 0, NULL, 'bdb83d55482b855986bec6e09c1d0018');
INSERT INTO `imgdata` VALUES (34, '2021/01/12/TOIMG2c2840112074618N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG2c2840112074618N.jpg', 1, '2021-01-12', 169, '172.16.0.38', 5, 0, NULL, '35d2e194583fcd895100ac67109e8c50');
INSERT INTO `imgdata` VALUES (35, '2021/01/12/TOIMG685b00112074618N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG685b00112074618N.jpg', 1, '2021-01-12', 64, '172.16.0.38', 5, 0, NULL, '6a13e5f64c84e89dc3b19d6137c73fb9');
INSERT INTO `imgdata` VALUES (36, '2021/01/12/TOIMG0f67b0112074618N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG0f67b0112074618N.jpg', 1, '2021-01-12', 87, '172.16.0.38', 5, 0, NULL, '95f4de987d14a55ef5f89e6778a45535');
INSERT INTO `imgdata` VALUES (37, '2021/01/12/TOIMGd026b0112074837N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMGd026b0112074837N.jpg', 1, '2021-01-12', 155, '172.16.0.38', 5, 0, NULL, 'bf9fb934500464f712277de3cc63f1a0');
INSERT INTO `imgdata` VALUES (38, '2021/01/12/TOIMGf8e030112074837N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMGf8e030112074837N.jpg', 1, '2021-01-12', 137, '172.16.0.38', 5, 0, NULL, '70f0f251b62aaa4dfdf0e99873ef1172');
INSERT INTO `imgdata` VALUES (39, '2021/01/12/TOIMG44ad30112074837N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG44ad30112074837N.jpg', 1, '2021-01-12', 157, '172.16.0.38', 5, 0, NULL, 'c0d3a74ad87a5f679b536cfbc49e406c');
INSERT INTO `imgdata` VALUES (40, '2021/01/12/TOIMG2a7470112075238N.jpg', 'http://172.16.0.42:8088/2021/01/12/TOIMG2a7470112075238N.jpg', 1, '2021-01-12', 71, '172.16.0.38', 5, 0, NULL, 'd3b567f6c5f8bf4de35256fd0b76302f');
INSERT INTO `imgdata` VALUES (41, '2021/01/13/TOIMGb408c0113112557N.jpeg', 'http://172.16.0.42:8088/2021/01/13/TOIMGb408c0113112557N.jpeg', 1, '2021-01-13', 309, '172.16.0.34', 5, 0, NULL, '51b2b9c4d132c73613a30ad616e765b2');
INSERT INTO `imgdata` VALUES (42, '2021/01/14/TOIMG1b0520114104737N.png', 'http://172.16.0.42:8088/2021/01/14/TOIMG1b0520114104737N.png', 1, '2021-01-14', 95, '172.16.0.35', 5, 0, NULL, '5361809e8404155d395ea9d076df298f');
INSERT INTO `imgdata` VALUES (43, '2021/01/14/TOIMG6e3b10114105636N.png', 'http://172.16.0.42:8088/2021/01/14/TOIMG6e3b10114105636N.png', 1, '2021-01-14', 180, '172.16.0.35', 5, 0, NULL, '499b66d3bb13b27f966532e4e15ab50e');
INSERT INTO `imgdata` VALUES (44, '2021/01/15/TOIMG3fa470115081016N.png', 'http://172.16.0.42:8088/2021/01/15/TOIMG3fa470115081016N.png', 0, '2021-01-15', 22, '0:0:0:0:0:0:0:1', 5, 0, NULL, '029ad091b1e02578281573e2dfc93ebb');

-- ----------------------------
-- Table structure for imgreview
-- ----------------------------
DROP TABLE IF EXISTS `imgreview`;
CREATE TABLE `imgreview`  (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `api_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `secret_key` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Using` int(4) NULL DEFAULT NULL,
  `count` int(255) NULL DEFAULT NULL COMMENT '拦截数量',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of imgreview
-- ----------------------------
INSERT INTO `imgreview` VALUES (1, NULL, NULL, NULL, 0, 0);

-- ----------------------------
-- Table structure for keys
-- ----------------------------
DROP TABLE IF EXISTS `keys`;
CREATE TABLE `keys`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `AccessKey` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `AccessSecret` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Endpoint` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `Bucketname` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `RequestAddress` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `storageType` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of keys
-- ----------------------------
INSERT INTO `keys` VALUES (1, '', '', '', '', '', 1);
INSERT INTO `keys` VALUES (2, '', '', '', '', '', 2);
INSERT INTO `keys` VALUES (3, '1', '1', '0', '1', 'http://127.0.0.1', 3);
INSERT INTO `keys` VALUES (4, '', '', '', '', '', 4);
INSERT INTO `keys` VALUES (5, '0', '0', '0', '0', '0', 5);
INSERT INTO `keys` VALUES (6, '', '', '', '', '', 6);
INSERT INTO `keys` VALUES (7, '1', '1', '127.0.0.1:21', '', 'http://127.0.0.1', 7);
INSERT INTO `keys` VALUES (8, '111', '222', '0', '333', 'http://127.0.0.1/', 8);
INSERT INTO `keys` VALUES (9, '', '', '', '', '', 9);
INSERT INTO `keys` VALUES (10, '0', '', '0', '0', '0', 10);

-- ----------------------------
-- Table structure for notice
-- ----------------------------
DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice`  (
  `id` int(4) NOT NULL,
  `text` varchar(10000) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sysconfig
-- ----------------------------
DROP TABLE IF EXISTS `sysconfig`;
CREATE TABLE `sysconfig`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `register` int(2) NOT NULL COMMENT '是否可以注册',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of sysconfig
-- ----------------------------
INSERT INTO `sysconfig` VALUES (1, 1);

-- ----------------------------
-- Table structure for uploadconfig
-- ----------------------------
DROP TABLE IF EXISTS `uploadconfig`;
CREATE TABLE `uploadconfig`  (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `filesizetourists` int(10) NULL DEFAULT NULL COMMENT '游客上传文件最大',
  `filesizeuser` int(10) NULL DEFAULT NULL COMMENT '用户上传文件最大',
  `imgcounttourists` int(10) NULL DEFAULT NULL COMMENT '游客文件总数量, 超出则不允许加入队列',
  `imgcountuser` int(10) NULL DEFAULT NULL COMMENT '用户文件总数量, 超出则不允许加入队列',
  `suffix` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '支持后缀',
  `urltype` int(2) NULL DEFAULT NULL COMMENT 'url类型',
  `isupdate` int(2) NULL DEFAULT NULL COMMENT '禁止游客上传',
  `api` int(2) NOT NULL COMMENT '开启api',
  `visitormemory` int(10) NULL DEFAULT NULL COMMENT '游客限制大小',
  `usermemory` int(10) NULL DEFAULT 0 COMMENT '用户默认大小',
  `blacklist` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of uploadconfig
-- ----------------------------
INSERT INTO `uploadconfig` VALUES (1, 3, 15, 1, 5, 'gif,jpg,jpeg,bmp,png', 2, 1, 1, 500, 10240, '');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(10) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户名',
  `password` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '密码',
  `email` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '邮箱',
  `birthder` date NULL DEFAULT NULL COMMENT '注册时间',
  `level` int(10) NULL DEFAULT NULL COMMENT '等级',
  `uid` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户唯一标识',
  `isok` int(2) NOT NULL,
  `memory` int(10) NULL DEFAULT NULL COMMENT '用户内存大小',
  `groupid` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'YWRtaW4=', 'admin', '2019-06-12', 2, 'c2af9b1f518e48c1864d97c8aa907a80', 1, 2048, 1);

-- ----------------------------
-- Table structure for usergroup
-- ----------------------------
DROP TABLE IF EXISTS `usergroup`;
CREATE TABLE `usergroup`  (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `userid` int(255) NULL DEFAULT NULL,
  `groupid` int(255) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of usergroup
-- ----------------------------
INSERT INTO `usergroup` VALUES (1, 1, 1);

SET FOREIGN_KEY_CHECKS = 1;
