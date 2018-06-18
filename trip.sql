/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 80011
 Source Host           : localhost:3306
 Source Schema         : trip

 Target Server Type    : MySQL
 Target Server Version : 80011
 File Encoding         : 65001

 Date: 18/06/2018 18:21:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for book
-- ----------------------------
DROP TABLE IF EXISTS `book`;
CREATE TABLE `book`  (
  `bookId` int(11) NOT NULL AUTO_INCREMENT,
  `hotelId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `hotelName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `postTime` datetime(0) NOT NULL,
  PRIMARY KEY (`bookId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of book
-- ----------------------------
INSERT INTO `book` VALUES (1, 1, 25, '远洋大酒店', '2018-06-18 17:41:34');

-- ----------------------------
-- Table structure for city
-- ----------------------------
DROP TABLE IF EXISTS `city`;
CREATE TABLE `city`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '城市名',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of city
-- ----------------------------
INSERT INTO `city` VALUES (1, '青岛');
INSERT INTO `city` VALUES (2, '济南');
INSERT INTO `city` VALUES (3, '北京');
INSERT INTO `city` VALUES (4, '上海');
INSERT INTO `city` VALUES (5, '深圳');
INSERT INTO `city` VALUES (6, '杭州');

-- ----------------------------
-- Table structure for collect
-- ----------------------------
DROP TABLE IF EXISTS `collect`;
CREATE TABLE `collect`  (
  `collectId` int(11) NOT NULL AUTO_INCREMENT COMMENT '收集Id',
  `travelsId` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `travelTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  PRIMARY KEY (`collectId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of collect
-- ----------------------------
INSERT INTO `collect` VALUES (1, 1, 25, '东太行');
INSERT INTO `collect` VALUES (2, 3, 25, '遇见-树山');
INSERT INTO `collect` VALUES (3, 10, 25, '世说西语');

-- ----------------------------
-- Table structure for comment
-- ----------------------------
DROP TABLE IF EXISTS `comment`;
CREATE TABLE `comment`  (
  `commentId` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `travelsId` int(11) NOT NULL,
  `travelsTitle` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `userId` int(11) NOT NULL,
  `postTime` datetime(0) NOT NULL,
  PRIMARY KEY (`commentId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comment
-- ----------------------------
INSERT INTO `comment` VALUES (2, '你有你的树山', 3, '遇见-树山', 25, '2018-06-18 10:56:15');

-- ----------------------------
-- Table structure for food
-- ----------------------------
DROP TABLE IF EXISTS `food`;
CREATE TABLE `food`  (
  `foodId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '食物名称',
  `price` decimal(10, 2) NOT NULL COMMENT '食物人均价格',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '食物描述',
  `cityId` int(11) NOT NULL COMMENT '食物所属城市',
  PRIMARY KEY (`foodId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of food
-- ----------------------------
INSERT INTO `food` VALUES (1, '牛羊肉泡馍', 20.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (2, '金线油塔', 30.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (3, '小笼荷叶卤面', 20.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (4, '眼镜山野摆汤面', 20.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (5, '老乾州浇汤挂面', 30.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (6, '榆馨牌砂锅羊肉扁食', 80.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (7, '屈崔氏药膳罐罐鸡', 100.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (8, '小元地软素包', 20.00, '\"中华名小吃\"', 1);
INSERT INTO `food` VALUES (9, '乾州馇酥', 30.00, '\"中华名小吃\"', 1);

-- ----------------------------
-- Table structure for hotel
-- ----------------------------
DROP TABLE IF EXISTS `hotel`;
CREATE TABLE `hotel`  (
  `hotelId` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '酒店名称',
  `price` decimal(10, 2) NOT NULL COMMENT '酒店价格',
  `description` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '酒店描述',
  `cityId` int(11) NOT NULL COMMENT '酒店所属城市',
  PRIMARY KEY (`hotelId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of hotel
-- ----------------------------
INSERT INTO `hotel` VALUES (1, '远洋大酒店', 272.00, '香港中路96号(麦凯乐购物中心对面) | 靠近燕儿岛路地铁站', 1);
INSERT INTO `hotel` VALUES (2, '和悦昆仑度假酒店', 413.00, '市南区金湾路6号(奥帆中心内,海尔洲际酒店南侧) | 靠近青岛奥林匹克帆船中心', 1);
INSERT INTO `hotel` VALUES (3, '金海大酒店', 333.00, '泰安路14号(火车站北侧,距地铁3号线300米) | 靠近青岛站地铁站 ', 1);
INSERT INTO `hotel` VALUES (4, '多悦酒店', 178.00, '海尔路17号(邻崂山一中/国信体育场/大拇指广场/海尔工业园/中粮可口可乐)) ', 1);
INSERT INTO `hotel` VALUES (5, '栈桥王子酒店', 342.00, '市南区太平路31号(近栈桥,火车站) | 靠近青岛站地铁站 ', 1);
INSERT INTO `hotel` VALUES (6, '世纪酒店', 500.00, '(免费自行车骑行2小时)黄岛开发区长江中路459号(近井岗山路,距金沙滩10分钟车程) | 靠近黄岛汽车总站', 1);

-- ----------------------------
-- Table structure for manager
-- ----------------------------
DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '管理员登录密码',
  PRIMARY KEY (`name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of manager
-- ----------------------------
INSERT INTO `manager` VALUES ('innovation', 'gaibianshijie');
INSERT INTO `manager` VALUES ('li', '123456');

-- ----------------------------
-- Table structure for travels
-- ----------------------------
DROP TABLE IF EXISTS `travels`;
CREATE TABLE `travels`  (
  `travelsId` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游记标题',
  `content` mediumtext CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '游记内容',
  `postTime` timestamp(0) NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP(0) COMMENT '游记发布时间',
  `userId` int(11) NOT NULL COMMENT '游记作者',
  PRIMARY KEY (`travelsId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of travels
-- ----------------------------
INSERT INTO `travels` VALUES (1, '东太行', '除了会“碎裂”的玻璃栈道，东太行还有：\r\n\r\n堪比美国科罗拉多大峡谷的丹霞地貌;\r\n\r\n有峰峦叠嶂、奇石林立、绝壁天险、雄伟壮阔的太行美景;\r\n\r\n有国内最长的云端栈道;', '2018-06-15 10:02:45', 25);
INSERT INTO `travels` VALUES (2, '曼谷', '曼谷：曼谷城市酒店推荐指数：三颗星曼谷的住宿主要考虑到要离地铁站比较近，其次就是这家店主要是前台都会讲中文，退房后七天内都可以免费寄存行李，比较符合我们的需求，我们离开曼谷前往普吉岛后把行李放在这里，回程的时候过来拿的，可以直接坐机场快线到机场。酒店提供免费早餐，一般般。房间面积不大不小刚刚好，类似于国内快捷酒店的水准。', '2018-06-15 12:13:24', 0);
INSERT INTO `travels` VALUES (3, '遇见-树山', '我想，在每个人心中都有一处安放梦想的精神乡土如果你厌倦了城市的千篇一律如果你想让时间变得缓慢下来那不如放慢自己的脚步找一处宁静淡泊的地方诗意而有情调地过上几日其实，对于世界而言我们每都是过客但是，对于树山而言我们都是归人遇见树山，遇见最美的村落遇见树山，遇见真实的自己遇见树山，遇见所有的美好', '2018-06-15 10:02:55', 25);
INSERT INTO `travels` VALUES (4, '温州之行', '温州这座城市，在大部分人眼中，是江南中一个宁静而秀气的水乡小镇， 却殊不知的这里最美的却是隐藏颇深的名山大川和壮阔瀑布。它还有着源远流长的历史文化、层出不穷的古今名人、美味实惠的海鲜小吃，三天两晚，自驾这里的大街小巷，去深度的挖掘温州的自然风景和人文文化。', '2018-05-22 13:53:16', 0);
INSERT INTO `travels` VALUES (5, '单车自驾', '位于杭州湾口的小洋山，景色真的有点出乎我们的预料。\r\n\r\n这里有跨海大桥直通上海，从上海方向自驾去普陀山的朋友，可以开车直达小洋山的客运码头，然后汽车轮渡直接去舟山本岛的三江客运码头，当然也可以像我们一样岱山岛、秀山岛一路游玩过去，非常方便。不开车的朋友，可以从南浦大桥购买车票经东海大桥直达小洋山港。', '2018-06-15 10:02:57', 25);
INSERT INTO `travels` VALUES (6, '深水港观光游览', '本来以为小洋山只是个路过随便看看的地方，从这里上跨海大桥就离开了，没想到这里的小岩礁景区、大指头景区和石龙景区，全都出乎意料的风景优美，各有特色。这些地方都可以非常近距离的看到洋山深水港，所以这几个景区也可以合称深水港观光游览区。', '2014-06-08 13:54:20', 0);
INSERT INTO `travels` VALUES (8, '越南之旅', '河内国际列车缓缓前进时，当踩着星光走入越南海关大厅时，当在河内的路边摊狼吞虎咽一碗牛肉粉时，我反复地问自己：“我真的来越南了吗？”河内像是南宁的表兄，完全没有想象中的异域风情。越南自秦时便被中国统治，直至清朝仍是中国的藩属地，越南之名亦是嘉庆皇帝下赐的国名。走在大街小巷上，仍能看到许多中国遗风。文庙是古代越南的最高等学府，相当于中国“国子监”的地位，看着文庙里龙飞凤舞的中文对联，殿堂里供奉的孔子雕像，俨然是中国书院的模样。有导游在用英语逐句翻译《三字经》，并介绍说古时候越南书生学习的是《大学》《中庸》，金发碧眼的西方人认真听着，一脸的崇敬。作为中国人，很自豪本国的文化可以辐射到异国他乡，并且受到如此高的礼遇。而又略感惭愧的是，当时在场的中国人没有一位能准确说出四书五经九本书的全名，反而是一位德国人说出了它们的英文译名。走出国门第一天，还未看清越南的容貌，却被西方人用英语上了一堂国学课，不得不说是件令人反思的事。在越南留下印记的还有法国人，他们带来了天主教和法棍。圣约瑟教堂是越南境内规模最大的天主教堂，其哥特式建筑风格是仿照巴黎圣母院，灰暗的建筑高大而匀称，高耸尖细的玻璃窗容纳在方正敦实的主体石质建筑中，走进教堂，阳光透过彩绘玻璃，在地上投下斑驳的倒影，给人祥和的感觉。街道边的小摊摆着手臂长的法式硬面包，中间夹上肉片、黄瓜、番茄及特质的酱料，用报纸包裹起来，便是最常见的越南风味。再来一杯冰咖啡，坐在藤椅上望向城西的湖区，把这亚热带风情看成塞纳河左岸。随着下班时间的到来，街道上的摩托车也多了起来，早有耳闻，越南有九千万人口，六千万辆摩托车，真正是一个骑在摩托上的国家。在这里过马路是没有斑马线这一说的，硬着头皮往前冲，摩托会贴着你的裤脚刹住车，只有这样才能突破摩托大军的包围。十字路口等红绿灯时，听着突突突的油门声，感受到排气筒喷出的热浪，这才真切意识到自己的确是在越南', '2018-02-08 13:55:57', 0);
INSERT INTO `travels` VALUES (9, '东京乱步', '\r\n念小遗Lv2\r\n发表于:2018-05-11 更新于:2018-05-11 浏览数:6529\r\n\r\n    收藏\r\n    1评论\r\n    0分享\r\n\r\n序\r\n\r\n14年前，一纸红色的录取通知书，把你我带进了同一所高中的校门\r\n\r\n14年前，一声穿透力极强的歌声，把你我凑成了军训同寝\r\n\r\n14年前，一个眼神的无意间相会，把你我的友谊今生注定 \r\n\r\n泛黄的老照片，把记忆拉回14年前\r\n\r\n那时的你我，只会剪刀手\r\n\r\n那时的你我，只会像假小子一样无形象的打闹\r\n\r\n那时的你我，只会土气的穿校服\r\n\r\n可那时，却是我们此生中最无忧无虑的青葱岁月 ', '2014-02-08 14:01:31', 0);
INSERT INTO `travels` VALUES (10, '世说西语', '一个人至少拥有一个梦想，有一个理由去坚强。心若没有栖息的地方，到哪里都是在流浪我从没想过第一次去台湾会选择宜兰。最早的打算是台湾环岛，可是后来请不到那么多天假期。看着手上紧巴巴的四天假，显然只能进行一到两地的深度游。在一次聊天中，偶然朋友提到在宜兰有个好友许久未见，于是我们一群【乌合之众】就决定一起出发去宜兰。那决定下的甚是果断，我们八个人立马买完机票定完酒店集结到一个群里。直到第二天早晨醒来还有点恍惚，我们这是要出发了吗？对！我们要出发了！飞台北，去宜兰！我们的具体行程如下：Day1：到达台北→华山1914文化创意园区闲逛→宁夏夜市逛吃 宿：台北喜来登Day2：坐车前往宜兰礁溪（大约50分钟）→蜜饯DIY→几米星空广场→梅花湖→汤围沟温泉公园 宿：宜兰寒沐酒店Day3：出海龟山岛巡游赏鲸豚（有惊喜）→茶趣DIY→老街逛吃 宿：宜兰寒沐酒店Day4：回台北，逛吃补货后下午返程', '2018-06-15 10:03:02', 25);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`  (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `age` tinyint(255) DEFAULT NULL,
  `regTime` datetime(0) DEFAULT NULL,
  `status` smallint(64) DEFAULT NULL,
  `avatar` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 25 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES (4, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (5, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (8, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (12, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (13, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (15, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (16, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (17, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (19, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (20, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (21, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (22, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (23, 'innovation', '1230', 'lt1550919167@163.com', '15206349417', 12, '2018-05-23 00:00:00', 1, NULL);
INSERT INTO `user` VALUES (24, 'TonyMa', '1234', '1550919156@qq.com', '12345678910', 19, '2018-05-23 00:00:00', 0, NULL);
INSERT INTO `user` VALUES (25, 'carver', 'e10adc3949ba59abbe56e057f20f883e', '3072146149@qq.com', NULL, NULL, '2018-06-14 20:52:33', 1, 'pic/test.jpg');

SET FOREIGN_KEY_CHECKS = 1;
