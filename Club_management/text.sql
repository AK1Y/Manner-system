/*
 Navicat Premium Data Transfer

 Source Server         : text
 Source Server Type    : MySQL
 Source Server Version : 80040
 Source Host           : localhost:3306
 Source Schema         : text

 Target Server Type    : MySQL
 Target Server Version : 80040
 File Encoding         : 65001

 Date: 20/02/2025 23:15:24
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for active_logs
-- ----------------------------
DROP TABLE IF EXISTS `active_logs`;
CREATE TABLE `active_logs`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `create_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '报名时间',
  `active_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动编号',
  `user_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '报名用户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `active_id`(`active_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '报名记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of active_logs
-- ----------------------------
INSERT INTO `active_logs` VALUES ('1689228560503', '2023-07-13 14:09:20', '1689228560460', '1689228178877');
INSERT INTO `active_logs` VALUES ('1712633450478', '2024-04-09 11:30:50', '1689228560460', '1689228092884');
INSERT INTO `active_logs` VALUES ('1713171790751', '2024-04-15 17:03:10', '1713171790705', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713172582695', '2024-04-15 17:16:22', '1713172582687', '1713172482895');
INSERT INTO `active_logs` VALUES ('1713172628111', '2024-04-15 17:17:08', '1713172582687', '1713172599784');
INSERT INTO `active_logs` VALUES ('1713237717613', '2024-04-16 11:21:57', '1689253104635', '1713230637931');
INSERT INTO `active_logs` VALUES ('1713684528870', '2024-04-21 15:28:48', '1713684528813', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713684674531', '2024-04-21 15:31:14', '1713684674474', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713684828502', '2024-04-21 15:33:48', '1713684828451', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713685066910', '2024-04-21 15:37:46', '1713685066887', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713685283802', '2024-04-21 15:41:23', '1713685283756', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713685481748', '2024-04-21 15:44:41', '1713685481711', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713685681718', '2024-04-21 15:48:01', '1713685681696', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713685903407', '2024-04-21 15:51:43', '1713685903360', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713686431007', '2024-04-21 16:00:31', '1713686430963', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713686651302', '2024-04-21 16:04:11', '1713686651276', '1712806841735');
INSERT INTO `active_logs` VALUES ('1713686932857', '2024-04-21 16:08:52', '1713686932805', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713687187216', '2024-04-21 16:13:07', '1713687187174', '1689228178877');
INSERT INTO `active_logs` VALUES ('1713687424628', '2024-04-21 16:17:04', '1713687424576', '1689228178877');

-- ----------------------------
-- Table structure for activities
-- ----------------------------
DROP TABLE IF EXISTS `activities`;
CREATE TABLE `activities`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `name` varchar(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动名称',
  `comm` varchar(1600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动概述',
  `detail` varchar(1600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动详情',
  `ask` varchar(1600) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动要求',
  `total` int NOT NULL COMMENT '报名人数',
  `active_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '活动时间',
  `team_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '发布社团',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_id`(`team_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '活动信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of activities
-- ----------------------------
INSERT INTO `activities` VALUES ('1689228560460', '团内编程大赛', '大家一起组团编程', '发挥想象力，写出惊艳代码', '携带一部笔记本', 2, '2023-07-13 14:08:36', '1689228337876', '1');
INSERT INTO `activities` VALUES ('1689253104635', '发际线保护交流会', '一失足成大瘸子 ，再回首又闪了腰', '发誓要改变生活习惯，但最后承认自己做不到', '健康最重要', 1, '2024-01-13 15:15:57', '1712904045914', '1');
INSERT INTO `activities` VALUES ('1713171790705', '一人一个例子', '嫦娥将天蓬调戏他的事告到了玉帝处。玉帝问太白金星：天蓬此举该如何处置？太白答：知法犯法，按律当诛。玉帝有些惋惜地点了点头：唉………当猪就当猪吧', '嫦娥将天蓬调戏他的事告到了玉帝处。玉帝问太白金星：天蓬此举该如何处置？太白答：知法犯法，按律当诛。玉帝有些惋惜地点了点头：唉………当猪就当猪吧', '一人一个例子', 1, '2024-04-15 00:00:00', '1712888407751', '1');
INSERT INTO `activities` VALUES ('1713684528813', '用一句话总结自己', '为了更好了解各位，请每人介绍一下自己，或者用一句话总结自己', '用一句话总结自己：比狗困、比猪馋、比驴犟', '每个人总结一下自己', 1, '2024-04-22 00:00:00', '1713603970177', '0');
INSERT INTO `activities` VALUES ('1713684674474', '我的新状态', '七斤二两，一切平安，谢谢大家的关心，这是我一个月新增的体重，你们的呢？', '七斤二两，一切平安，谢谢大家的关心，这是我一个月新增的体重，你们的呢？', '更新一下自己的状态，哪怕一句话也许', 1, '2024-04-21 00:00:00', '1713172552692', '1');
INSERT INTO `activities` VALUES ('1713684828451', '身体日渐损坏的部件', '我为什么会近视，为了看淡世间事，所以才模糊了双眼。', '我为什么会近视，为了看淡世间事，所以才模糊了双眼。', '说出你身上日渐多出的毛病', 1, '2024-04-20 00:00:00', '1713604063410', '1');
INSERT INTO `activities` VALUES ('1713685066887', '道出你的难处', '我太难了，上辈子我可能是条蜀道', '我太难了，上辈子我可能是条蜀道', '人生不如意，十之八九，请道出你的难处', 1, '2024-04-19 00:00:00', '1713604109612', '1');
INSERT INTO `activities` VALUES ('1713685283756', '想象和现实的差距', '如果所有事情都像吃胖一样简单就好了，然而，所有事情都像减肥一样困难', '如果所有事情都像吃胖一样简单就好了，然而，所有事情都像减肥一样困难', '列举一个想象和现实的差距的例子', 1, '2024-04-20 00:00:00', '1712885581647', '1');
INSERT INTO `activities` VALUES ('1713685481711', '我看你能行', '连起床这么难的事情你都做到了，接下来的一天还有什么事情能难倒你。', '连起床这么难的事情你都做到了，接下来的一天还有什么事情能难倒你。', '列举一下你以前做不到但现在做到了的事', 1, '2024-04-18 00:00:00', '1713604109612', '1');
INSERT INTO `activities` VALUES ('1713685681696', '你有起床困难症吗', '每天被闹钟叫醒后，我脑中就会出现两个小人打架，一个说：还早呢再睡会儿！另一个冲上去揍他：你说的这不是废话吗？', '每天被闹钟叫醒后，我脑中就会出现两个小人打架，一个说：还早呢再睡会儿！另一个冲上去揍他：你说的这不是废话吗？', '你有起床困难症吗', 1, '2024-04-20 00:00:00', '1712885581647', '1');
INSERT INTO `activities` VALUES ('1713685903360', '环环相扣的难题', '生活里80%的痛苦来源于上班，但是我知道，如果不上班，就会有100%的痛苦来源于没钱。所以在上班和没钱之间，我选择上班。', '生活里80%的痛苦来源于上班，但是我知道，如果不上班，就会有100%的痛苦来源于没钱。所以在上班和没钱之间，我选择上班。', '生活中还有哪些环环相扣的难题，请列举出来。', 1, '2024-04-22 00:00:00', '1713603999653', '0');
INSERT INTO `activities` VALUES ('1713686430963', '以另一种方式和世界产生交集', '虽然，很多餐厅没去过，但是在外卖软件里，我们已经是过命的交情了。', '虽然，很多餐厅没去过，但是在外卖软件里，我们已经是过命的交情了。', '还有哪些与以往不同的和世界产生交集的例子，可以一一列举出来', 1, '2024-04-18 00:00:00', '1689228337876', '1');
INSERT INTO `activities` VALUES ('1713686651276', '成年人的易与不易', '成年人的世界除了容易胖，容易穷，容易秃，其他都不容易。', '成年人的世界除了容易胖，容易穷，容易秃，其他都不容易。', '关于成年人的易与不易还有哪些方面呢，请列举。。。', 1, '2024-04-22 00:00:00', '1712885581647', '1');
INSERT INTO `activities` VALUES ('1713686932805', '眼见也不一定为实', '我这不是胖，而是内心充满理想，身体略显膨胀。', '我这不是胖，而是内心充满理想，身体略显膨胀。', '大家不要被眼睛看到的给蒙蔽了，可以举例说明', 1, '2024-04-19 00:00:00', '1713603999653', '1');
INSERT INTO `activities` VALUES ('1713687187174', '关于扶不扶', '出门丢垃圾，看到一大爷摔倒了，过去问：大爷我微信余额0.83，能扶你起来不？大爷往旁边挪了挪，说：孩子，来一起躺下。', '出门丢垃圾，看到一大爷摔倒了，过去问：大爷我微信余额0.83，能扶你起来不？大爷往旁边挪了挪，说：孩子，来一起躺下。', '扶不扶，你们怎么做？', 1, '2024-04-21 00:00:00', '1689228416274', '1');
INSERT INTO `activities` VALUES ('1713687424576', '护短', '我是个特别护短的人，不分青红皂白，只分关系好坏。', '我是个特别护短的人，不分青红皂白，只分关系好坏。', '大家护不护短呢，无论护与不护，都请举例说明哦。', 1, '2024-04-21 00:00:00', '1713603970177', '1');

-- ----------------------------
-- Table structure for apply_logs
-- ----------------------------
DROP TABLE IF EXISTS `apply_logs`;
CREATE TABLE `apply_logs`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `status` int NOT NULL COMMENT '处理状态',
  `create_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请时间',
  `team_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请社团',
  `user_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请用户',
  `update_time` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_id`(`team_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '申请记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of apply_logs
-- ----------------------------
INSERT INTO `apply_logs` VALUES ('1689248985360', 1, '2023-07-13 19:49:45', '1689228337876', '1689228092884', '2023-07-13 19:49:45');
INSERT INTO `apply_logs` VALUES ('1693923133729', 1, '2023-09-05 22:12:13', '1689228416274', '1689228092884', '2024-04-15 09:35:16');
INSERT INTO `apply_logs` VALUES ('1712992716674', 1, '2024-04-13 15:18:36', '1689228337876', '1689228092884', '2024-04-20 17:12:57');
INSERT INTO `apply_logs` VALUES ('1712992719871', 0, '2024-04-13 15:18:39', '1712885581647', '1689228092884', '2024-04-13 15:18:39');
INSERT INTO `apply_logs` VALUES ('1713145098867', 1, '2024-04-15 09:38:18', '1712885581647', '1712806297193', '2024-04-15 09:41:59');
INSERT INTO `apply_logs` VALUES ('1713145101065', 2, '2024-04-15 09:38:21', '1712904045914', '1712806297193', '2024-04-20 17:10:42');
INSERT INTO `apply_logs` VALUES ('1713172604298', 1, '2024-04-15 17:16:44', '1713172552692', '1713172599784', '2024-04-15 17:16:58');
INSERT INTO `apply_logs` VALUES ('1713234172740', 1, '2024-04-16 10:22:52', '1712888407751', '1713230637931', '2024-04-16 10:23:07');
INSERT INTO `apply_logs` VALUES ('1713234456421', 1, '2024-04-16 10:27:36', '1712885581647', '1713230637931', '2024-04-16 10:27:50');
INSERT INTO `apply_logs` VALUES ('1713234652505', 1, '2024-04-16 10:30:52', '1712904045914', '1713230637931', '2024-04-16 10:31:12');
INSERT INTO `apply_logs` VALUES ('1713604189112', 1, '2024-04-20 17:09:49', '1713604063410', '1713599393347', '2024-04-20 17:10:30');
INSERT INTO `apply_logs` VALUES ('1713604207394', 1, '2024-04-20 17:10:07', '1713604109612', '1713599393347', '2024-04-20 17:10:29');
INSERT INTO `apply_logs` VALUES ('1713604278546', 1, '2024-04-20 17:11:18', '1713603970177', '1713601081905', '2024-04-20 17:12:56');
INSERT INTO `apply_logs` VALUES ('1713604280784', 1, '2024-04-20 17:11:20', '1713604109612', '1713601081905', '2024-04-20 17:12:35');
INSERT INTO `apply_logs` VALUES ('1713604307384', 1, '2024-04-20 17:11:47', '1713604063410', '1713598050020', '2024-04-20 17:12:35');
INSERT INTO `apply_logs` VALUES ('1713604309477', 1, '2024-04-20 17:11:49', '1712885581647', '1713598050020', '2024-04-20 17:12:34');
INSERT INTO `apply_logs` VALUES ('1713604339207', 1, '2024-04-20 17:12:19', '1713603999653', '1713600096476', '2024-04-20 17:12:56');
INSERT INTO `apply_logs` VALUES ('1713604343100', 1, '2024-04-20 17:12:23', '1713603970177', '1713600096476', '2024-04-20 17:12:55');

-- ----------------------------
-- Table structure for members
-- ----------------------------
DROP TABLE IF EXISTS `members`;
CREATE TABLE `members`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `create_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '入团时间',
  `team_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '加入社团',
  `user_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '申请用户',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_id`(`team_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '成员信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of members
-- ----------------------------
INSERT INTO `members` VALUES ('1689228337906', '2023-07-13 14:05:37', '1689228337876', '1689228178877', '1');
INSERT INTO `members` VALUES ('1689228416332', '2023-07-13 14:06:56', '1689228416274', '1689228178877', '1');
INSERT INTO `members` VALUES ('1689248992548', '2023-07-13 19:49:52', '1689228337876', '1689228092884', '1');
INSERT INTO `members` VALUES ('1712887124186', '2024-04-12 09:58:44', '1712887073749', '1689228178877', '1');
INSERT INTO `members` VALUES ('1712887133847', '2024-04-12 09:58:53', '1712887132528', '1689228178877', '1');
INSERT INTO `members` VALUES ('1712887492006', '2024-04-12 10:04:52', '1712887491985', '1689228178877', '1');
INSERT INTO `members` VALUES ('1712888407778', '2024-04-12 10:20:07', '1712888407751', '1689228178877', '1');
INSERT INTO `members` VALUES ('1712904045932', '2024-04-12 14:40:45', '1712904045914', '1712806841735', '1');
INSERT INTO `members` VALUES ('1713144916064', '2024-04-15 09:35:16', '1689228416274', '1689228092884', '1');
INSERT INTO `members` VALUES ('1713145319960', '2024-04-15 09:41:59', '1712885581647', '1712806297193', '1');
INSERT INTO `members` VALUES ('1713234187218', '2024-04-16 10:23:07', '1712888407751', '1713230637931', '1');
INSERT INTO `members` VALUES ('1713234470881', '2024-04-16 10:27:50', '1712885581647', '1713230637931', '1');
INSERT INTO `members` VALUES ('1713234672416', '2024-04-16 10:31:12', '1712904045914', '1713230637931', '1');
INSERT INTO `members` VALUES ('1713603970182', '2024-04-20 17:06:10', '1713603970177', '1689228178877', '1');
INSERT INTO `members` VALUES ('1713603999657', '2024-04-20 17:06:39', '1713603999653', '1689228178877', '1');
INSERT INTO `members` VALUES ('1713604063426', '2024-04-20 17:07:43', '1713604063410', '1712806841735', '1');
INSERT INTO `members` VALUES ('1713604109617', '2024-04-20 17:08:29', '1713604109612', '1712806841735', '1');
INSERT INTO `members` VALUES ('1713604229767', '2024-04-20 17:10:29', '1713604109612', '1713599393347', '1');
INSERT INTO `members` VALUES ('1713604230254', '2024-04-20 17:10:30', '1713604063410', '1713599393347', '1');
INSERT INTO `members` VALUES ('1713604354929', '2024-04-20 17:12:34', '1712885581647', '1713598050020', '1');
INSERT INTO `members` VALUES ('1713604355403', '2024-04-20 17:12:35', '1713604063410', '1713598050020', '1');
INSERT INTO `members` VALUES ('1713604355874', '2024-04-20 17:12:35', '1713604109612', '1713601081905', '1');
INSERT INTO `members` VALUES ('1713604375748', '2024-04-20 17:12:55', '1713603970177', '1713600096476', '1');
INSERT INTO `members` VALUES ('1713604376401', '2024-04-20 17:12:56', '1713603999653', '1713600096476', '1');
INSERT INTO `members` VALUES ('1713604376894', '2024-04-20 17:12:56', '1713603970177', '1713601081905', '1');
INSERT INTO `members` VALUES ('1713604377425', '2024-04-20 17:12:57', '1689228337876', '1689228092884', '1');
INSERT INTO `members` VALUES ('1713690777122', '2024-04-21 17:12:57', '1713690777098', '1712806841735', '1');
INSERT INTO `members` VALUES ('1713691071726', '2024-04-21 17:17:51', '1713691071711', '1712806841735', '1');
INSERT INTO `members` VALUES ('1713691165353', '2024-04-21 17:19:25', '1713691165339', '1689228178877', '1');

-- ----------------------------
-- Table structure for notices
-- ----------------------------
DROP TABLE IF EXISTS `notices`;
CREATE TABLE `notices`  (
  `id` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '记录ID',
  `title` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知标题',
  `detail` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '通知详情',
  `create_time` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '发布时间',
  `team_id` char(13) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL COMMENT '发布社团',
  `state` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci COMMENT = '通知记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of notices
-- ----------------------------
INSERT INTO `notices` VALUES ('1689228498611', '祝贺计算机协会圆满建立', '祝贺计算机协会圆满建立，欢迎大家的加入，共同探讨计算机领域知识', '2023-07-13', '1689228337876', '1');
INSERT INTO `notices` VALUES ('1689249379060', '社团管理系统更新', '现已推出最新版本的社团管理系统', '2023-07-10', NULL, '1');
INSERT INTO `notices` VALUES ('1712739207378', '看破不说破', '生气的时候：路过的狗都得挨两句骂', '2024-04-12', NULL, '1');
INSERT INTO `notices` VALUES ('1712740101568', '社死瞬间', '刚才在街上看到有一个人在表演Bbox，走近一看原来是嘴巴里飞进了一只虫子', '2024-04-15', '1712885581647', '1');
INSERT INTO `notices` VALUES ('1712741105487', '新部门成立', '小道消息部开始吃瓜了，搬好小板凳集合啦', '2024-04-10', NULL, '1');
INSERT INTO `notices` VALUES ('1712741193397', '冷知识提醒', '千万不要带蓝牙耳机看鬼片，不然被吓的时候，手机扔了，鬼👻还在叫😱😱', '2024-04-22', '1689228416274', '1');
INSERT INTO `notices` VALUES ('1713142520207', '打破刻板印象枷锁', '脸皮厚也没用，冬天，风吹过来还是会冷', '2024-04-15', '1689228416274', '1');
INSERT INTO `notices` VALUES ('1713143958772', '时间是检验真理的唯一标准', '高端的食材往往只需要最简单的烹饪方法，忙碌了两个小时的王师傅决定吃康师傅', '2024-04-15', '1712904045914', '1');
INSERT INTO `notices` VALUES ('1713255607756', '温馨提示', '黑夜不会亏待晚睡的人，它会赐你黑眼圈。', '2024-04-20', '1712888407751', '1');
INSERT INTO `notices` VALUES ('1713257927812', '当代年轻人的体质', '啥也没干，隔三差五还莫名的觉得累。别杠，杠就是你赢！', '2024-04-16', '1713172552692', '1');
INSERT INTO `notices` VALUES ('1713682592689', '社畜的悲哀', '你知道，就算大雨让这座城市颠倒，公司照样会算你迟到', '2024-04-19', '1713603970177', '1');
INSERT INTO `notices` VALUES ('1713682839410', '刷剧观后感', '西游记告诉我们：凡是有后台的妖怪都被接走了，凡是没有后台的都被一棒子打死了', '2024-04-21', '1713603999653', '1');
INSERT INTO `notices` VALUES ('1713682915049', '人生真理', '念了十几年书，还是幼儿园最好混。', '2024-04-20', '1713603970177', '1');
INSERT INTO `notices` VALUES ('1713683090225', '这是一个悲伤的话题', '红豆不长南国，长我脸上了，真相思！', '2024-04-18', '1713604063410', '1');
INSERT INTO `notices` VALUES ('1713683163011', '请勿模仿', '手拿菜刀砍电线，一路火花带闪电', '2024-04-21', '1713604063410', '1');
INSERT INTO `notices` VALUES ('1713683278979', '是不是你', '我可以选择放弃，但不能放弃选择', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713683356370', '扎心的真相', '老板用你的时候你就是人才，不用你的时候就变成裁人。', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713683436198', '民以食为天', '本想一口一口吃掉忧愁，不料却一口一口吃成肉球', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713683608022', '悄悄告诉你', '我有超能力，就是事事都超出我的能力', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713683692634', '痛苦也可以具象化', '可以触摸的痛苦是什么？就是我觉得肚子都饿扁了，一摸还是有一坨肉。。。', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713683805931', '今日不解事情', '爱笑的人运气不会太差。说实话，如果一个人运气不好，我不知道他怎么笑得出来。', '2024-04-19', NULL, '1');
INSERT INTO `notices` VALUES ('1713683882411', '拒绝PUA', '我上班就是为了钱，不要跟我谈理想，我的理想就是不上班。', '2024-04-20', NULL, '1');
INSERT INTO `notices` VALUES ('1713684168548', '人最倒霉能有多倒霉', '每天造出晚归的，财神来敲门了我都不在家。', '2024-04-21', NULL, '1');
INSERT INTO `notices` VALUES ('1713684317411', '与日俱瞎', '我眼里有光，医生说是散光', '2024-04-21', NULL, '1');

-- ----------------------------
-- Table structure for pay_logs
-- ----------------------------
DROP TABLE IF EXISTS `pay_logs`;
CREATE TABLE `pay_logs`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `create_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '缴费时间',
  `total` double NOT NULL COMMENT '缴纳费用',
  `team_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '收费社团',
  `user_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '缴费用户',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `team_id`(`team_id` ASC) USING BTREE,
  INDEX `user_id`(`user_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '缴费记录' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of pay_logs
-- ----------------------------
INSERT INTO `pay_logs` VALUES ('1689249023966', '2023-07-13 19:50:23', 10, '1689228337876', '1689228092884');
INSERT INTO `pay_logs` VALUES ('1712633700821', '2024-04-09 11:35:00', 10, '1689228337876', '1689228092884');
INSERT INTO `pay_logs` VALUES ('1713687619792', '2024-04-21 16:20:19', 5, '1713603999653', '1713600096476');
INSERT INTO `pay_logs` VALUES ('1713687753938', '2024-04-21 16:22:33', 15, '1713603970177', '1689228178877');
INSERT INTO `pay_logs` VALUES ('1713687817089', '2024-04-21 16:23:37', 8, '1713604063410', '1713598050020');
INSERT INTO `pay_logs` VALUES ('1713687855454', '2024-04-21 16:24:15', 11, '1713604063410', '1712806841735');
INSERT INTO `pay_logs` VALUES ('1713687899401', '2024-04-21 16:24:59', 6, '1713604109612', '1713599393347');
INSERT INTO `pay_logs` VALUES ('1713687943701', '2024-04-21 16:25:43', 5, '1713604109612', '1713601081905');
INSERT INTO `pay_logs` VALUES ('1713688005586', '2024-04-21 16:26:45', 7, '1712885581647', '1713230637931');
INSERT INTO `pay_logs` VALUES ('1713688045210', '2024-04-21 16:27:25', 10, '1712888407751', '1713230637931');
INSERT INTO `pay_logs` VALUES ('1713688098542', '2024-04-21 16:28:18', 14, '1712904045914', '1712806841735');
INSERT INTO `pay_logs` VALUES ('1713688149270', '2024-04-21 16:29:09', 11, '1712904045914', '1713230637931');

-- ----------------------------
-- Table structure for team_types
-- ----------------------------
DROP TABLE IF EXISTS `team_types`;
CREATE TABLE `team_types`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '类型名称',
  `create_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '创建时间',
  `update_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '更新时间',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团类型' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of team_types
-- ----------------------------
INSERT INTO `team_types` VALUES ('1689228308945', '科技类', '2023-07-13 14:05:08', '2023-07-13 14:05:08', '1');
INSERT INTO `team_types` VALUES ('1689228383521', '文学类', '2023-07-13 14:06:23', '2024-04-09 15:01:24', '1');
INSERT INTO `team_types` VALUES ('1689228383551', '娱乐类', '2024-04-12 08:51:46', '2024-04-20 17:04:29', '1');
INSERT INTO `team_types` VALUES ('1713601835012', '手工类', '2024-04-20 16:30:35', '2024-04-20 17:04:19', '1');
INSERT INTO `team_types` VALUES ('1713601888349', '押韵类', '2024-04-21 16:31:28', '2024-04-21 17:03:18', '1');
INSERT INTO `team_types` VALUES ('1713601916978', '搞笑类', '2024-04-20 16:31:56', '2024-04-20 17:03:30', '1');
INSERT INTO `team_types` VALUES ('1713602925900', '时事类', '2024-04-20 16:48:45', '2024-04-20 17:04:00', '1');
INSERT INTO `team_types` VALUES ('1713688243034', '科普类', '2024-04-21 16:30:43', '2024-04-21 16:30:43', '1');
INSERT INTO `team_types` VALUES ('1713688272880', '沙雕类', '2024-04-21 16:31:12', '2024-04-21 16:31:12', '1');
INSERT INTO `team_types` VALUES ('1713688293901', '主持类', '2024-04-21 16:31:33', '2024-04-21 16:31:33', '1');
INSERT INTO `team_types` VALUES ('1713688436057', '解谜类', '2024-04-21 16:33:56', '2024-04-21 16:33:56', '1');
INSERT INTO `team_types` VALUES ('1713688524635', '游戏类', '2024-04-21 16:35:24', '2024-04-21 16:35:24', '1');
INSERT INTO `team_types` VALUES ('1713688601172', '轮滑社', '2024-04-21 16:36:41', '2024-04-21 16:36:41', '1');
INSERT INTO `team_types` VALUES ('1713688612655', '动漫社', '2024-04-21 16:36:52', '2024-04-21 16:36:52', '1');
INSERT INTO `team_types` VALUES ('1713688644950', '辩论社', '2024-04-21 16:37:24', '2024-04-21 16:37:24', '1');
INSERT INTO `team_types` VALUES ('1713688676756', '躺平社', '2024-04-21 16:37:56', '2024-04-21 16:37:56', '1');
INSERT INTO `team_types` VALUES ('1713688689769', '排球社', '2024-04-21 16:38:09', '2024-04-21 16:38:09', '1');
INSERT INTO `team_types` VALUES ('1713688704377', '篮球队', '2024-04-21 16:38:24', '2024-04-21 16:38:24', '1');
INSERT INTO `team_types` VALUES ('1713688713348', '足球队', '2024-04-21 16:38:33', '2024-04-21 16:38:33', '1');
INSERT INTO `team_types` VALUES ('1713688732468', '田径社', '2024-04-21 16:38:52', '2024-04-21 16:38:52', '1');
INSERT INTO `team_types` VALUES ('1713688780037', '羽毛球社', '2024-04-21 16:39:40', '2024-04-21 16:39:40', '1');
INSERT INTO `team_types` VALUES ('1713688799498', '健身社', '2024-04-21 16:39:59', '2024-04-21 16:39:59', '1');
INSERT INTO `team_types` VALUES ('1713688839738', '电竞社', '2024-04-21 16:40:39', '2024-04-21 16:40:39', '1');
INSERT INTO `team_types` VALUES ('1713688852110', '攀岩社', '2024-04-21 16:40:52', '2024-04-21 16:40:52', '1');
INSERT INTO `team_types` VALUES ('1713688892537', '舞蹈社', '2024-04-21 16:41:32', '2024-04-21 16:41:32', '1');
INSERT INTO `team_types` VALUES ('1713688910105', '摄影社', '2024-04-21 16:41:50', '2024-04-21 16:41:50', '1');

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '社团名称',
  `create_time` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '建立时间',
  `total` int NOT NULL COMMENT '社团人数',
  `manager` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '社团团长',
  `type_id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '社团编号',
  `update_time` char(19) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '更新时间',
  `state` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '状态',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `type_id`(`type_id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '社团信息' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of teams
-- ----------------------------
INSERT INTO `teams` VALUES ('1689228337876', '计算机协会', '2023-07-13', 3, '1689228178877', '1689228308945', '2023-07-13', '1');
INSERT INTO `teams` VALUES ('1689228416274', '马思克主义哲学协会', '2023-07-13', 2, '1689228178877', '1689228383521', '2023-07-13', '1');
INSERT INTO `teams` VALUES ('1712885581647', '少年先疯队', '2024-04-12', 4, '1712806841735', '1689228383551', '2024-04-12', '1');
INSERT INTO `teams` VALUES ('1712888407751', '爱会消失对不队 ', '2024-04-12', 2, '1712806841735', '1689228383521', '2024-04-12', '1');
INSERT INTO `teams` VALUES ('1712904045914', '发际线与我作队', '2024-04-12', 2, '1712806841735', '1689228383551', '2024-04-12', '1');
INSERT INTO `teams` VALUES ('1713172552692', '怼怼怼队', '2024-04-15', 2, '1689228178877', '1689228308945', '2024-04-15', '1');
INSERT INTO `teams` VALUES ('1713603970177', '六六六队', '2024-04-20', 3, '1689228178877', '1713601888349', '2024-04-20', '1');
INSERT INTO `teams` VALUES ('1713603999653', '摇不动杆社', '2024-04-20', 2, '1689228178877', '1713601835012', '2024-04-20', '1');
INSERT INTO `teams` VALUES ('1713604063410', '十八线rapper在线念稿队', '2024-04-20', 3, '1712806841735', '1713601888349', '2024-04-20', '1');
INSERT INTO `teams` VALUES ('1713604109612', '你说的都对队', '2024-04-20', 3, '1712806841735', '1713602925900', '2024-04-20', '1');
INSERT INTO `teams` VALUES ('1713690777098', '深藏blue社', '2024-04-21', 1, '1712806841735', '1713688644950', '2024-04-21', '1');
INSERT INTO `teams` VALUES ('1713691071711', '吃货家族', '2024-04-21', 1, '1712806841735', '1689228383551', '2024-04-21', '1');
INSERT INTO `teams` VALUES ('1713691165339', '有福同享有难退群社', '2024-04-21', 1, '1689228178877', '1713601916978', '2024-04-21', '1');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` char(13) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '记录ID',
  `user_name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户账号',
  `pass_word` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '用户密码',
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户姓名',
  `gender` char(2) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '用户性别',
  `age` int NULL DEFAULT NULL COMMENT '用户年龄',
  `phone` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `address` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '联系地址',
  `status` int NOT NULL COMMENT '信息状态',
  `create_time` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL COMMENT '添加时间',
  `type` int NOT NULL COMMENT '用户身份：0系统管理员，1社团管理员，2用户',
  `update_time` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb3 COLLATE = utf8mb3_general_ci COMMENT = '系统用户' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1689228092884', 'user', '4QrcOUm6Wau+VuBX8g+IPg==', '小刘不溜', '男', 21, '15019514682', '北京市海淀区', 1, '2022-12-27 21:43:22', 2, '2022-12-27 21:43:22');
INSERT INTO `users` VALUES ('1689228116467', 'superadmin', '4QrcOUm6Wau+VuBX8g+IPg==', '系统管理员', '男', 24, '18946235817', '北京市海淀区', 1, '2023-01-17 20:00:00', 0, '2024-04-10 17:13:28');
INSERT INTO `users` VALUES ('1689228178877', 'admin', '4QrcOUm6Wau+VuBX8g+IPg==', '张三', '男', 22, '15848621369', '北京市海淀区', 1, '2024-04-20 15:35:05', 1, '2023-01-17 20:00:00');
INSERT INTO `users` VALUES ('1712806297193', '小垃圾', '4QrcOUm6Wau+VuBX8g+IPg==', '小卡拉米', '男', 25, '13584924671', '小垃圾的垃圾站', 1, '2024-04-11 11:31:37', 2, '2024-04-11 11:31:37');
INSERT INTO `users` VALUES ('1712806625328', '天线短路宝宝', '4QrcOUm6Wau+VuBX8g+IPg==', '天线短路宝宝', '女', 18, '18340692814', '马达加斯加的万寿宫', 1, '2024-04-11 11:37:05', 2, '2024-04-20 15:14:22');
INSERT INTO `users` VALUES ('1712806841735', '雨你无瓜', '4QrcOUm6Wau+VuBX8g+IPg==', '元气少女郭德纲', '男', 20, '15076498245', '精神病院五号房', 1, '2024-04-22 11:40:41', 1, '2024-04-16 17:08:27');
INSERT INTO `users` VALUES ('1713230637931', '落日邮递员', '4QrcOUm6Wau+VuBX8g+IPg==', '落日邮递员', '女', 30, '18349257462', '四维时空邮件处理中心', 1, '2024-04-16 09:23:57', 2, '2024-04-16 09:24:20');
INSERT INTO `users` VALUES ('1713594099592', '被炮轰的猫', '4QrcOUm6Wau+VuBX8g+IPg==', '被炮轰的猫', '男', 19, '15846251856', '北京西站南广场东', 1, '2024-04-20 14:21:39', 2, '2024-04-20 14:21:39');
INSERT INTO `users` VALUES ('1713597821068', '冰糖葫芦娃', '4QrcOUm6Wau+VuBX8g+IPg==', '冰糖葫芦娃', '女', 20, '13946824751', '小不忍则卖大萌村委会', 1, '2024-04-20 15:23:41', 2, '2024-04-20 15:23:41');
INSERT INTO `users` VALUES ('1713598050020', '上帝也卖萌', '4QrcOUm6Wau+VuBX8g+IPg==', '上帝也卖萌', '男', 18, '15182468267', '脚踏棺材看日落不落', 1, '2024-04-20 15:27:30', 2, '2024-04-20 15:27:30');
INSERT INTO `users` VALUES ('1713599393347', '魔仙堡练习生', '4QrcOUm6Wau+VuBX8g+IPg==', '魔仙堡练习生', '女', 21, '18356492564', '白日梦研究中心', 1, '2024-04-20 15:49:53', 2, '2024-04-20 15:50:47');
INSERT INTO `users` VALUES ('1713599818210', '御前带刀厨子', '4QrcOUm6Wau+VuBX8g+IPg==', '御前带刀厨子', '男', 25, '17746821549', '加勒比海域的权力游戏厅', 1, '2024-04-20 15:56:58', 2, '2024-04-20 15:56:58');
INSERT INTO `users` VALUES ('1713600096476', '犯困嫌疑人', '4QrcOUm6Wau+VuBX8g+IPg==', '犯困嫌疑人', '男', 18, '17894615463', '唐人街百乐门歌舞厅', 1, '2024-04-20 16:01:36', 2, '2024-04-20 16:01:36');
INSERT INTO `users` VALUES ('1713600758221', '加勒比海带', '4QrcOUm6Wau+VuBX8g+IPg==', '加勒比海带', '男', 23, '18946824114', '智障防传染集中治疗营', 1, '2024-04-20 16:12:38', 2, '2024-04-20 16:14:32');
INSERT INTO `users` VALUES ('1713601081905', '萌面大瞎', '4QrcOUm6Wau+VuBX8g+IPg==', '萌面大瞎', '男', 12, '13649857485', '人类迷惑行为大赏舞台', 1, '2024-04-20 16:18:01', 2, '2024-04-20 16:18:54');
INSERT INTO `users` VALUES ('1713601460369', '虾仁不眨眼', '4QrcOUm6Wau+VuBX8g+IPg==', '虾仁不眨眼', '男', 21, '18579468235', '少年痴呆康复中心', 1, '2024-04-20 16:24:20', 2, '2024-04-20 16:24:20');
INSERT INTO `users` VALUES ('1713689332940', '樱桃小完犊子', '4QrcOUm6Wau+VuBX8g+IPg==', '樱桃小完犊子', '女', 12, '15496587946', '年轻不嗨老年痴呆镇', 1, '2024-04-21 16:48:52', 2, '2024-04-21 16:48:52');
INSERT INTO `users` VALUES ('1713689569570', '半勺泡泡糖', '4QrcOUm6Wau+VuBX8g+IPg==', '半勺泡泡糖', '女', 31, '18349584765', '入门即是奈何桥产业园', 1, '2024-04-21 16:52:49', 2, '2024-04-21 16:52:49');
INSERT INTO `users` VALUES ('1713689819686', '骰子第七面', '4QrcOUm6Wau+VuBX8g+IPg==', '骰子第七面', '男', 25, '13546849785', '吉吉国王的吉吉屋', 1, '2024-04-21 16:56:59', 2, '2024-04-21 16:56:59');
INSERT INTO `users` VALUES ('1713690139649', '幼稚园叫兽', '4QrcOUm6Wau+VuBX8g+IPg==', '幼稚园叫兽', '男', 34, '13846295765', '曼哈顿中山东碧桂园', 1, '2024-04-21 17:02:19', 2, '2024-04-21 17:02:19');
INSERT INTO `users` VALUES ('1713690383661', '酒酿樱桃子', '4QrcOUm6Wau+VuBX8g+IPg==', '酒酿樱桃子', '男', 26, '17864923167', '缅北万达购物中心', 1, '2024-04-21 17:06:23', 2, '2024-04-21 17:06:32');

SET FOREIGN_KEY_CHECKS = 1;
