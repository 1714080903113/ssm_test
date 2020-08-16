/*
 Navicat Premium Data Transfer

 Source Server         : localhost_3306
 Source Server Type    : MySQL
 Source Server Version : 50725
 Source Host           : localhost:3306
 Source Schema         : huidayz

 Target Server Type    : MySQL
 Target Server Version : 50725
 File Encoding         : 65001

 Date: 24/05/2020 20:21:20
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for paotui
-- ----------------------------
DROP TABLE IF EXISTS `paotui`;
CREATE TABLE `paotui`  (
  `paotuiID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  `phone` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `wechat` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `qujianPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `qujianTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `songdaPlace` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `songdaTime` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `imageUrl` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `classify` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`paotuiID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of paotui
-- ----------------------------
INSERT INTO `paotui` VALUES (1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', '2020-05-19 17:07:49', '32131313131', '131231', 1231.00, '菜鸟驿站', NULL, '18栋A305', '18点', 'http://192.168.0.118:8080/PaotuiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.i1K6C5BUWnAH4a5dc6d9665685109c7a7892eefc7b3a.jpg', '快递帮拿');
INSERT INTO `paotui` VALUES (2, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '2020-05-24 19:51:56', '13195819231', '1313158118', 3.00, '18栋A305', '18点', NULL, NULL, NULL, '快递帮寄');
INSERT INTO `paotui` VALUES (3, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '2020-05-24 19:52:50', '13192819231', '12151581131313313131', 5.00, NULL, NULL, '测试测试', '测试', NULL, '打印');
INSERT INTO `paotui` VALUES (4, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '2020-05-24 20:08:36', '12151818', '1111', 5.00, '菜鸟驿站', NULL, '18栋A305', '19点之前', 'http://192.168.0.118:8080/PaotuiImages/tmp_73f76d36f47266d0f1b4565a2d737b8e.jpg', '快递帮拿');

-- ----------------------------
-- Table structure for renzheng
-- ----------------------------
DROP TABLE IF EXISTS `renzheng`;
CREATE TABLE `renzheng`  (
  `renzhengID` int(11) NOT NULL AUTO_INCREMENT,
  `finalImgUrl` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `studentID` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `openid` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`renzhengID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of renzheng
-- ----------------------------
INSERT INTO `renzheng` VALUES (2, 'http://192.168.0.118:8080/RenzhengImg/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.WNeuUAa0LgB23b3eae7f49afec25ef7fc03f052a2eb6.jpg', '李景根', '1714080903102', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8');

-- ----------------------------
-- Table structure for scanswerme
-- ----------------------------
DROP TABLE IF EXISTS `scanswerme`;
CREATE TABLE `scanswerme`  (
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `sccommentid` int(11) NOT NULL,
  `isWatch` int(11) NOT NULL,
  PRIMARY KEY (`openID`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for sccomment
-- ----------------------------
DROP TABLE IF EXISTS `sccomment`;
CREATE TABLE `sccomment`  (
  `scCommentID` int(11) NOT NULL AUTO_INCREMENT,
  `answerOpenID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `answerNickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `answerAvatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `targetOpenID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `targetNickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `targetAvatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `content` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scstateID` int(11) NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  PRIMARY KEY (`scCommentID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sccomment
-- ----------------------------
INSERT INTO `sccomment` VALUES (1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', NULL, NULL, NULL, '达瓦哒哒哒', 1, '2020-05-19 15:26:27');
INSERT INTO `sccomment` VALUES (2, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', '回复L', 1, '2020-05-19 15:26:37');
INSERT INTO `sccomment` VALUES (3, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', NULL, NULL, NULL, '理解力和美关系发展史的发展趋势的研究人员发现自己越来越了解自己是什么🤔', 1, '2020-05-19 15:28:14');
INSERT INTO `sccomment` VALUES (4, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', NULL, NULL, NULL, '12313', 1, '2020-05-19 15:28:18');
INSERT INTO `sccomment` VALUES (5, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', '理解力和美关系发展史的发展趋势的研究人员发现自己越来越了解自己是什么🤔', 1, '2020-05-19 15:31:56');
INSERT INTO `sccomment` VALUES (6, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', NULL, NULL, NULL, '测试测试测试', 13, '2020-05-24 19:54:40');
INSERT INTO `sccomment` VALUES (7, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', NULL, NULL, NULL, '1111', 13, '2020-05-24 19:55:17');
INSERT INTO `sccomment` VALUES (8, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '2222', 13, '2020-05-24 19:55:36');
INSERT INTO `sccomment` VALUES (9, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', NULL, NULL, NULL, '🤔🤔', 14, '2020-05-24 19:56:55');
INSERT INTO `sccomment` VALUES (10, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '??????', 14, '2020-05-24 20:02:45');
INSERT INTO `sccomment` VALUES (11, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', NULL, NULL, NULL, '😄😄', 14, '2020-05-24 20:02:55');
INSERT INTO `sccomment` VALUES (12, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'L', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', '******', 14, '2020-05-24 20:03:02');

-- ----------------------------
-- Table structure for scstate
-- ----------------------------
DROP TABLE IF EXISTS `scstate`;
CREATE TABLE `scstate`  (
  `scstateID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `admireTimes` int(11) NOT NULL,
  `finalImageList` varchar(5000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `content` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  `isTop` int(11) NOT NULL,
  PRIMARY KEY (`scstateID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 16 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of scstate
-- ----------------------------
INSERT INTO `scstate` VALUES (1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', 0, '[\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.JTxZkF5mWbbaef186430f97b6e2c6b76e2907409c1b9.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.PavDC2VtCBlL85a475a6565976a643c3525320b931b9.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.awWqeF2LggQW501080cf56aab1b8e2c819aabb0b0847.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.qmZyxCUQZoTe4a5dc6d9665685109c7a7892eefc7b3a.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.O4qQ6QbNQBPk886b3ca83c3e36eb599ae44478057087.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.7xfg7oADChHD79c5c55b9480005a1ac72711b056fbae.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.U2TwaCLNR8U8782d5257a4761224b1eabde44907660b.jpg\",\"http://192.168.0.118:8080/ScstateImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.USJNtZaSPckz20369d6950478757395e3fb0c43537ef.jpg\"]', '没有有趣的事情\n只有悲伤的事情', '2020-05-19 15:21:42', 0);
INSERT INTO `scstate` VALUES (13, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L', 0, '[\"http://192.168.0.118:8080/ScstateImages/tmp_e3a2e877b01d3fc97a359517f9f95891.jpg\",\"http://192.168.0.118:8080/ScstateImages/tmp_5cef21d24f304751fcda75bc0275785b.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_432dbb39fb0fba15dcd83d3442580c66.png\"]', '测试测试测试测试测试测试\n测试测试测试测试测试测试\n测试测试测试测试测试测试', '2020-05-24 19:23:15', 0);
INSERT INTO `scstate` VALUES (14, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L', 0, '[\"http://192.168.0.118:8080/ScstateImages/tmp_44333643ef2dd1feef564ea1e5615bec.jpg\",\"http://192.168.0.118:8080/ScstateImages/tmp_829480eef194f04b7a1b71a64edbe67f.jpg\",\"http://192.168.0.118:8080/ScstateImages/tmp_ff87d2cfbd2c5dae896e70fd96ba3900.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_610eedaa17f41ede07f342e5fbe1ef3e.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_92fb61ff12a72d28619a4c644a9d8542.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_f5a94a75cc5a97a2fcd2b3499c3be7d3.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_bb86b7644ac4604d47128435a2dab5b0.png\"]', '测试测试🚗\n鼻👃✌️', '2020-05-24 19:56:35', 0);
INSERT INTO `scstate` VALUES (15, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L', 0, '[\"http://192.168.0.118:8080/ScstateImages/tmp_ba7350ca752d0e51a179aa3964c24c92.jpg\",\"http://192.168.0.118:8080/ScstateImages/tmp_2fc2260d00bb7e1428d845b5d9201e3b.png\",\"http://192.168.0.118:8080/ScstateImages/tmp_b51ca12ed4262374045cd99e9964feb9.png\"]', '💻💻💻💻💻\n测试测试\n测试', '2020-05-24 20:03:41', 0);

-- ----------------------------
-- Table structure for showlove
-- ----------------------------
DROP TABLE IF EXISTS `showlove`;
CREATE TABLE `showlove`  (
  `showloveID` int(11) NOT NULL AUTO_INCREMENT,
  `target` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `reason` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isShow` int(11) NOT NULL,
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `finalImgUrl` varchar(3000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `formatTime` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`showloveID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of showlove
-- ----------------------------
INSERT INTO `showlove` VALUES (2, '测试测试测试', '测试测试\n测试测试\n测试', 1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '2020-05-24 19:50:19', '../../images/niming.jpg', '匿名', 'http://192.168.0.118:8080/ShowloveImages/tmp_8c4ced89527113b61312b370afbffac6.png', '05-24 50:19');
INSERT INTO `showlove` VALUES (3, '测试测试', '测试测试你', 1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '2020-05-24 19:50:51', '../../images/niming.jpg', '匿名', 'http://192.168.0.118:8080/ShowloveImages/tmp_80a2ebac2228eae7d361f027c36bed80.jpg', '05-24 50:50');

-- ----------------------------
-- Table structure for slcomment
-- ----------------------------
DROP TABLE IF EXISTS `slcomment`;
CREATE TABLE `slcomment`  (
  `showloveID` int(11) NOT NULL,
  `commentid` int(11) NOT NULL AUTO_INCREMENT,
  `commentContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  PRIMARY KEY (`commentid`) USING BTREE,
  INDEX `showloveID_slcomment`(`showloveID`) USING BTREE,
  CONSTRAINT `showloveID_slcomment` FOREIGN KEY (`showloveID`) REFERENCES `showlove` (`showloveID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for wdcomment
-- ----------------------------
DROP TABLE IF EXISTS `wdcomment`;
CREATE TABLE `wdcomment`  (
  `wendaID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL AUTO_INCREMENT,
  `commentContent` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  `admireTimes` int(11) NOT NULL,
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`commentID`) USING BTREE,
  INDEX `wendaid_wdcomment`(`wendaID`) USING BTREE,
  CONSTRAINT `wendaid_wdcomment` FOREIGN KEY (`wendaID`) REFERENCES `wenda` (`wendaID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wdcomment
-- ----------------------------
INSERT INTO `wdcomment` VALUES (7, 1, 'cadawaeeeee', '2020-05-22 21:58:51', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L');
INSERT INTO `wdcomment` VALUES (7, 2, '31231231', '2020-05-22 22:17:11', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L');
INSERT INTO `wdcomment` VALUES (7, 3, '31231231', '2020-05-22 22:17:17', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L');
INSERT INTO `wdcomment` VALUES (1, 4, '123311', '2020-05-23 22:49:01', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L');
INSERT INTO `wdcomment` VALUES (1, 5, '123311', '2020-05-23 22:49:17', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L');
INSERT INTO `wdcomment` VALUES (7, 6, '', '2020-05-24 19:51:03', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L');
INSERT INTO `wdcomment` VALUES (7, 7, 'ce\'shi', '2020-05-24 19:51:03', 0, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L');

-- ----------------------------
-- Table structure for wenda
-- ----------------------------
DROP TABLE IF EXISTS `wenda`;
CREATE TABLE `wenda`  (
  `wendaID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `finalImgUrl` varchar(4000) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NULL DEFAULT NULL,
  `watchTimes` int(11) NOT NULL,
  `question` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `detail` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  PRIMARY KEY (`wendaID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of wenda
-- ----------------------------
INSERT INTO `wenda` VALUES (1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', NULL, 0, 'chjddddddddddddddddddddddssssssssssss顶顶顶顶顶顶顶顶顶顶顶顶顶顶', 'jkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdadajkwdada', '2020-05-21 16:06:01');
INSERT INTO `wenda` VALUES (3, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', '[\"http://192.168.0.118:8080/WendaImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.kIJahZ9u40H4ef186430f97b6e2c6b76e2907409c1b9.jpg\",\"http://192.168.0.118:8080/WendaImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.tIryFCwWvnZI85a475a6565976a643c3525320b931b9.jpg\",\"http://192.168.0.118:8080/WendaImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.3WZNU35he0Jh79c5c55b9480005a1ac72711b056fbae.jpg\"]', 0, '达瓦低洼地', '哇达娃额为全额我去恶趣味去恶趣味去问恶趣味去带我去的期望的气味权威的亲卫队请问的气味当前的气味请问企鹅请问', '2020-05-21 21:11:27');
INSERT INTO `wenda` VALUES (4, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', NULL, 0, '测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2020-05-21 21:18:22');
INSERT INTO `wenda` VALUES (5, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', NULL, 0, '测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2020-05-21 21:20:11');
INSERT INTO `wenda` VALUES (6, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', NULL, 0, '测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2020-05-21 21:20:18');
INSERT INTO `wenda` VALUES (7, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 'L', '[\"http://192.168.0.118:8080/WendaImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.zOQFEkb8udWz5174d33d6f5cce911d0db9b81722f44e.jpg\"]', 0, '测试测试测试测试测试测试测试测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '2020-05-21 21:20:30');
INSERT INTO `wenda` VALUES (8, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L', '[\"http://192.168.0.118:8080/WendaImages/tmp_509950848dba49c15c6c1d8a1c91c244.jpg\",\"http://192.168.0.118:8080/WendaImages/tmp_a94edc432454a8d9e7a01e77f742ad54.jpg\",\"http://192.168.0.118:8080/WendaImages/tmp_48cc5022d79b3bc5f9cf4cdeee97e8af.jpg\"]', 0, '测试测试', '测试🚗\n测试🚽\n🍵', '2020-05-24 20:06:03');
INSERT INTO `wenda` VALUES (9, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 'L', '[\"http://192.168.0.118:8080/WendaImages/tmp_b1b23b7fc85966e92032c361482e2aea.jpg\",\"http://192.168.0.118:8080/WendaImages/tmp_0f2660949e90e728a5681a7324b0b33d.png\",\"http://192.168.0.118:8080/WendaImages/tmp_08f7f7733018d903efa1408efc063d21.png\"]', 0, '测试', '测试测试\n🐟🐟🐟🐟', '2020-05-24 20:06:54');

-- ----------------------------
-- Table structure for xianzhi
-- ----------------------------
DROP TABLE IF EXISTS `xianzhi`;
CREATE TABLE `xianzhi`  (
  `xianzhiID` int(11) NOT NULL AUTO_INCREMENT,
  `openID` varchar(80) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `formatTime` varchar(40) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `introduce` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `classify` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `location` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `wechat` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `contact` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `finalImgUrl` varchar(2000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `watchTimes` int(11) NOT NULL,
  `avatarUrl` varchar(300) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `hownew` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nickName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`xianzhiID`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xianzhi
-- ----------------------------
INSERT INTO `xianzhi` VALUES (1, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '05-17 55:53', '2020-05-17 22:55:54', '测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试', '手机', '广东省惠州市惠东县人民路23号从娃娃大大我', '132131', '123131234', '[\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.q9rnrISxbH7Oba944488d9bfa586e522746c1d2f1fe2.jpg\",\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.eOSZHMOIOeoCef186430f97b6e2c6b76e2907409c1b9.jpg\",\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.EC2nIxUkhp59acd06c4b1cb1369c3aa0acea685170c3.jpg\"]', 11, 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PbjV7DTLmot6KD4RYxqENMg/132', 31.00, '九五新', 'L');
INSERT INTO `xianzhi` VALUES (2, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '05-24 49:26', '2020-05-24 19:49:27', '测试测试测试', '测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试测试\n测试', '手机', '惠州市惠东县', '13555888', '13192819231', '[\"http://192.168.0.118:8080/XianzhiImages/tmp_c5449decc0c9ea08b1b787c273456233.gif\"]', 1, 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 410.20, '九九新', 'L');
INSERT INTO `xianzhi` VALUES (3, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '05-24 53:35', '2020-05-24 19:53:35', '测试测试', '测试测试\n测试测试\n测试', '手机', '测试', '11188888', '13192819231', '[\"http://192.168.0.118:8080/XianzhiImages/tmp_ec1bb4bacb43763e10e3e1f2c1ee2973.png\",\"http://192.168.0.118:8080/XianzhiImages/tmp_4ce497d3395025025d86940d82a5658b.png\"]', 1, 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 23.00, '九九新', 'L');
INSERT INTO `xianzhi` VALUES (4, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '05-24 04:53', '2020-05-24 20:04:53', '测试测试', '测试测试测试\n测试🚽', '手机', '测试', '111588', '1111', '[\"http://192.168.0.118:8080/XianzhiImages/tmp_27c48dab9333ca206d70a6e4a4f00652.jpg\",\"http://192.168.0.118:8080/XianzhiImages/tmp_836e5655ab6a0faa0532bb0a15fd3fd6.png\",\"http://192.168.0.118:8080/XianzhiImages/tmp_da3145a12c0276dc5f17ea260645afc5.png\"]', 4, 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 13.00, '七成新以下', 'L');
INSERT INTO `xianzhi` VALUES (5, 'o0pip5TbHOWU4unMNUZ3fE52ZoM8', '05-24 12:40', '2020-05-24 20:12:41', '测试测试测试', '测试测试\n测试测试\n测试', '电脑', '广东省惠州市惠东县人民路23号测试', '1313123', '1231312', '[\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.3MkC0XVqRMzWfdc72dbe94db1bb05ea67b1570fb79c8.jpg\",\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.nicLepmLggGL8d6e92ec88165d3357ae98cfe9f72518.jpg\",\"http://192.168.0.118:8080/XianzhiImages/wx833db212e4fd8f3e.o6zAJs_3YwJcYetYOVobU0yiNtHo.fuTJEX7X6ykd1534927a6164abf13cd6f67acc2d0780.jpg\"]', 0, 'https://wx.qlogo.cn/mmopen/vi_32/wIhkuN8Z5gp9ZMZ4X9fkzXfOCMPVDJmEobCrBY4U11yelaxoWAEBibeEvbmrGa97PQwvFKcdf2ibEHrtbibnJ8Pjw/132', 131.00, '九九新', 'L');

-- ----------------------------
-- Table structure for xzcomment
-- ----------------------------
DROP TABLE IF EXISTS `xzcomment`;
CREATE TABLE `xzcomment`  (
  `xianzhiID` int(11) NOT NULL,
  `commentID` int(11) NOT NULL AUTO_INCREMENT,
  `commentContent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `issueTime` datetime(0) NOT NULL,
  PRIMARY KEY (`commentID`) USING BTREE,
  INDEX `xianzhiID_xzcomment`(`xianzhiID`) USING BTREE,
  CONSTRAINT `xianzhiID_xzcomment` FOREIGN KEY (`xianzhiID`) REFERENCES `xianzhi` (`xianzhiID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_520_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of xzcomment
-- ----------------------------
INSERT INTO `xzcomment` VALUES (1, 1, '测试🐅', '2020-05-19 15:10:25');
INSERT INTO `xzcomment` VALUES (1, 2, '回复@1楼:回复', '2020-05-19 15:10:42');

SET FOREIGN_KEY_CHECKS = 1;
