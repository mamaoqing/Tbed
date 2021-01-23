/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MariaDB
 Source Server Version : 100413
 Source Host           : localhost:3306
 Source Schema         : pic

 Target Server Type    : MariaDB
 Target Server Version : 100413
 File Encoding         : 65001

 Date: 23/01/2021 16:14:54
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
INSERT INTO `config` VALUES (1, 4, 1, '请叫我师哥-图床', '网站由JAVA语言编写应用SpringBoot框架开发，前端全部组件由BootStrap/Layui框架编写。', 'https://hellohao-cloud.oss-cn-beijing.aliyuncs.com/Pexels.mp4', '1', '<a rel=\"nofollow\" target=\"_blank\">鲁ICP备20003264号-1</a>', '也许...|这将是最好用的图床', 'console.log(\'\\n\' + \' %c 师哥出品，必属精品！ \' + \'\\n\', \'color: #fadfa3; background: #030307; padding:5px 0;\');', 'http://172.16.0.31:8081', 'http://pic.qjwsg.com/2021/01/23/c8fb80123041021.jpg', 'http://pic.qjwsg.com/2021/01/23/271100123041024.jpg', 1, '', '', '', 1);

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
INSERT INTO `emailconfig` VALUES (1, 'xxxx@163.com', '', 'smtp.163.com', '', '', 1);

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
INSERT INTO `group` VALUES (1, '默认群组', 4);

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
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compressed;

-- ----------------------------
-- Records of imgdata
-- ----------------------------
INSERT INTO `imgdata` VALUES (45, '2021/01/16/TOIMG590660116020947N.jpg', 'http://127.0.0.1:8081/2021/01/16/TOIMG590660116020947N.jpg', 0, '2021-01-16', 167, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'f6ba82e15831594e21ef9b37e75e5214');
INSERT INTO `imgdata` VALUES (46, '2021/01/16/TOIMGa6df20116021234N.jpg', 'http://127.0.0.1:8081/2021/01/16/TOIMGa6df20116021234N.jpg', 1, '2021-01-16', 276, '0:0:0:0:0:0:0:1', 5, 0, NULL, '965eb8b91e7f599c3e8feaad5be88c66');
INSERT INTO `imgdata` VALUES (48, '2021/01/16/TOIMGa9abe0116022709N.jpg', 'http://127.0.0.1:8081/2021/01/16/TOIMGa9abe0116022709N.jpg', 2, '2021-01-16', 221, '0:0:0:0:0:0:0:1', 5, 0, NULL, '535572c1b0d163dbd86be94b9da1e281');
INSERT INTO `imgdata` VALUES (49, '2021/01/16/TOIMG3d5ee0116022910N.jpg', 'http://127.0.0.1:8081/2021/01/16/TOIMG3d5ee0116022910N.jpg', 2, '2021-01-16', 706, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'c67108e14da4da14904886d263380cc7');
INSERT INTO `imgdata` VALUES (50, '2021/01/16/TOIMG031440116023015N.jpg', 'http://127.0.0.1:8081/2021/01/16/TOIMG031440116023015N.jpg', 2, '2021-01-16', 22, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'c5a7d33b3f92a3540df187b0ca7dadf0');
INSERT INTO `imgdata` VALUES (51, '2021/01/16/TOIMG0355d0116030230N.png', 'http://172.16.0.31:8081/2021/01/16/TOIMG0355d0116030230N.png', 0, '2021-01-16', 7, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'db2e0e7e641fc2c0d9500edbc46e5616');
INSERT INTO `imgdata` VALUES (52, '2021/01/23/TOIMG81bb70123032432N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG81bb70123032432N.jpg', 1, '2021-01-23', 71, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'bdb83d55482b855986bec6e09c1d0018');
INSERT INTO `imgdata` VALUES (53, '2021/01/23/TOIMG568800123032644N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG568800123032644N.jpg', 0, '2021-01-23', 64, '0:0:0:0:0:0:0:1', 5, 0, NULL, '6a13e5f64c84e89dc3b19d6137c73fb9');
INSERT INTO `imgdata` VALUES (54, '2021/01/23/TOIMG696070123032930N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG696070123032930N.jpg', 0, '2021-01-23', 157, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'c0d3a74ad87a5f679b536cfbc49e406c');
INSERT INTO `imgdata` VALUES (55, '2021/01/23/TOIMGd6d840123033218N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMGd6d840123033218N.jpg', 0, '2021-01-23', 100, '0:0:0:0:0:0:0:1', 5, 0, NULL, '0dff225c140f13c62947b58eace9e8f8');
INSERT INTO `imgdata` VALUES (56, '2021/01/23/TOIMG25b5d0123033417N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG25b5d0123033417N.jpg', 0, '2021-01-23', 129, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'e5c60d632d67f0777bc4b0d00a27eb03');
INSERT INTO `imgdata` VALUES (57, '2021/01/23/TOIMG2c8a10123033539N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG2c8a10123033539N.jpg', 0, '2021-01-23', 137, '0:0:0:0:0:0:0:1', 5, 0, NULL, '70f0f251b62aaa4dfdf0e99873ef1172');
INSERT INTO `imgdata` VALUES (58, '2021/01/23/TOIMG1c79c0123033911N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG1c79c0123033911N.jpg', 0, '2021-01-23', 76, '0:0:0:0:0:0:0:1', 5, 0, NULL, 'bd76052bfad9e8073a2a6e8fdc0b7523');
INSERT INTO `imgdata` VALUES (59, '2021/01/23/TOIMG6fd880123034109N.jpg', 'http://172.16.0.31:8081/2021/01/23/TOIMG6fd880123034109N.jpg', 1, '2021-01-23', 149, '0:0:0:0:0:0:0:1', 5, 0, NULL, '6b71f42864569bf6eeb194086ab64376');
INSERT INTO `imgdata` VALUES (60, '2021/01/23/ce94d0123034736.jpg', 'http://pic.qjwsg.com/2021/01/23/ce94d0123034736.jpg', 1, '2021-01-23', 169, '0:0:0:0:0:0:0:1', 4, 0, NULL, '35d2e194583fcd895100ac67109e8c50');
INSERT INTO `imgdata` VALUES (61, '2021/01/23/c8fb80123041021.jpg', 'http://pic.qjwsg.com/2021/01/23/c8fb80123041021.jpg', 1, '2021-01-23', 1038, '0:0:0:0:0:0:0:1', 4, 0, NULL, '043d31e80a97bd4a8cac1d392e922fdf');
INSERT INTO `imgdata` VALUES (62, '2021/01/23/271100123041024.jpg', 'http://pic.qjwsg.com/2021/01/23/271100123041024.jpg', 1, '2021-01-23', 1683, '0:0:0:0:0:0:0:1', 4, 0, NULL, 'ae2ca0e41a4dfd0f3f4c1d0b436e8113');

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
INSERT INTO `keys` VALUES (4, 'MnpsPsK12-y2VK9me0oRbayXu2oHuOb6-Xrf0oiL', 'v-GpS1fDcKe-6S7Ao8Zh6vcxaXKPiQfLGq9S47Re', '1', 'shigepic', 'http://pic.qjwsg.com', 4);
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
INSERT INTO `uploadconfig` VALUES (1, 3, 15, 1, 5, 'gif,jpg,jpeg,bmp,png', 2, 1, 1, 500, 1024, '');

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
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (1, 'admin', 'YWRtaW4=', 'admin', '2019-06-12', 2, '9ec8deac05e14c03a274cacd85283bc6', 1, 2048, 1);
INSERT INTO `user` VALUES (2, 'mq', 'MTIzNDU2', '15065200919@163.com', '2021-01-16', 1, '9ec9c77877784eba895eeb3ff63a5621', 1, 1024, 1);
INSERT INTO `user` VALUES (3, 'aaa', 'MTIzNDU2', 'luyuna1121@163.com', '2021-01-16', 1, 'a20293461fae4da58c8a079c521034bf', 1, 1024, 1);
INSERT INTO `user` VALUES (4, 'yjh', 'MTIzNDU2', '1925170491@qq.com', '2021-01-16', 1, 'c931406b47ad43b0ab95c8d73e24f45d', 1, 1024, 1);
INSERT INTO `user` VALUES (7, 'fda', 'MTIzNDU2', '1070202601@qq.com', '2021-01-16', 1, '67a394b232384623a599d24725841c0e', 1, 1024, 1);

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
