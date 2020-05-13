/*
 Navicat Premium Data Transfer

 Source Server         : MySQLCon
 Source Server Type    : MySQL
 Source Server Version : 80019
 Source Host           : localhost:3306
 Source Schema         : feed

 Target Server Type    : MySQL
 Target Server Version : 80019
 File Encoding         : 65001

 Date: 13/05/2020 22:45:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for consume
-- ----------------------------
DROP TABLE IF EXISTS `consume`;
CREATE TABLE `consume`  (
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `valid` binary(1) NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of consume
-- ----------------------------
INSERT INTO `consume` VALUES ('bg', '2020-04-18 00:00:00', 4, NULL);
INSERT INTO `consume` VALUES ('gn', '2020-04-18 00:00:00', 2, NULL);
INSERT INTO `consume` VALUES ('hm', '2020-04-18 00:00:00', 6, NULL);
INSERT INTO `consume` VALUES ('hty', '2020-04-18 00:00:00', 0, NULL);
INSERT INTO `consume` VALUES ('mt', '2020-04-18 00:00:00', 2, NULL);
INSERT INTO `consume` VALUES ('nf', '2020-04-18 00:00:00', 1, NULL);
INSERT INTO `consume` VALUES ('pf', '2020-04-18 00:00:00', 5, NULL);
INSERT INTO `consume` VALUES ('day', '2020-04-18 00:00:00', 96, NULL);
INSERT INTO `consume` VALUES ('sgm', '2020-04-18 00:00:00', 3, NULL);
INSERT INTO `consume` VALUES ('night', '2020-04-18 00:00:00', 36, NULL);
INSERT INTO `consume` VALUES ('ydl', '2020-04-18 00:00:00', 1, NULL);
INSERT INTO `consume` VALUES ('mf', '2020-04-18 00:00:00', 1, NULL);

-- ----------------------------
-- Table structure for item
-- ----------------------------
DROP TABLE IF EXISTS `item`;
CREATE TABLE `item`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `speed` float NULL DEFAULT NULL COMMENT '消耗速度',
  `stock` int(0) NULL DEFAULT NULL COMMENT '剩余存货',
  `deplete_date` date NULL DEFAULT NULL COMMENT '预计清空时间',
  `gen_date` datetime(0) NULL DEFAULT NULL COMMENT '生成计算的时间'
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of item
-- ----------------------------
INSERT INTO `item` VALUES ('bg', 0.384615, -10, '2020-04-28', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('gn', 0.161765, -4, '2020-04-30', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('hm', 0.461538, -12, '2020-05-01', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('hty', 0.0547945, -1, '2020-04-18', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('mt', 0.0441176, -1, '2020-06-02', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('nf', 0.084507, -2, '2020-04-30', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('pf', 0.333333, -8, '2020-05-03', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('day', 13.0303, -326, '2020-04-25', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('sgm', 0.11236, -3, '2020-05-15', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('night', 3.63636, -91, '2020-04-28', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('ydl', 0.0833333, -2, '2020-04-30', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('mf', 0.1, -3, '2020-04-28', '2020-05-13 22:34:15');
INSERT INTO `item` VALUES ('mf', 0.1, -3, '2020-04-28', '2020-05-13 22:34:15');

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS `product`;
CREATE TABLE `product`  (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cn_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of product
-- ----------------------------
INSERT INTO `product` VALUES ('bg', '饼干');
INSERT INTO `product` VALUES ('gn', '果泥');
INSERT INTO `product` VALUES ('hm', '海绵宝宝');
INSERT INTO `product` VALUES ('hty', '核桃油');
INSERT INTO `product` VALUES ('mt', '面条');
INSERT INTO `product` VALUES ('nf', '奶粉');
INSERT INTO `product` VALUES ('pf', '泡芙');
INSERT INTO `product` VALUES ('day', '日用纸尿裤');
INSERT INTO `product` VALUES ('sgm', '十谷米');
INSERT INTO `product` VALUES ('night', '夜用纸尿裤');
INSERT INTO `product` VALUES ('ydl', '意大利面');
INSERT INTO `product` VALUES ('mf', '米粉');

-- ----------------------------
-- Table structure for purchase
-- ----------------------------
DROP TABLE IF EXISTS `purchase`;
CREATE TABLE `purchase`  (
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `date` datetime(0) NULL DEFAULT NULL,
  `quantity` int(0) NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `store` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of purchase
-- ----------------------------
INSERT INTO `purchase` VALUES ('sgm', '2020-01-20 00:00:00', 1, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('hty', '2020-02-05 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('nf', '2020-02-07 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('mt', '2020-02-10 00:00:00', 1, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('gn', '2020-02-10 00:00:00', 1, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('day', '2020-02-12 00:00:00', 164, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('night', '2020-02-12 00:00:00', 80, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('sgm', '2020-02-15 00:00:00', 3, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('bg', '2020-03-23 00:00:00', 3, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('gn', '2020-03-23 00:00:00', 1, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('hm', '2020-03-23 00:00:00', 6, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('day', '2020-02-25 00:00:00', 168, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('bg', '2020-04-21 00:00:00', 3, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('mt', '2020-04-21 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('mf', '2020-03-19 00:00:00', 3, 0.00, 'tb');
INSERT INTO `purchase` VALUES ('night', '2020-03-24 00:00:00', 80, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('bg', '2020-03-25 00:00:00', 4, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('hm', '2020-03-25 00:00:00', 6, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('pf', '2020-03-25 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('ydl', '2020-03-25 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('sgm', '2020-03-30 00:00:00', 3, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('day', '2020-04-03 00:00:00', 160, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('sgm', '2020-04-05 00:00:00', 3, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('nf', '2020-04-07 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('pf', '2020-04-07 00:00:00', 6, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('day', '2020-04-22 00:00:00', 272, 0.00, 'wx');
INSERT INTO `purchase` VALUES ('day', '2020-04-22 00:00:00', 96, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('night', '2020-04-22 00:00:00', 80, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('hty', '2020-04-20 00:00:00', 2, 0.00, 'jd');
INSERT INTO `purchase` VALUES ('nf', '2020-04-20 00:00:00', 2, 0.00, 'xx');
INSERT INTO `purchase` VALUES ('gn', '2020-05-12 00:00:00', 9, 68.00, 'tb');

-- ----------------------------
-- Function structure for item_report
-- ----------------------------
DROP FUNCTION IF EXISTS `item_report`;
delimiter ;;
CREATE FUNCTION `item_report`()
 RETURNS int
BEGIN
	#Routine body goes here...
	DECLARE t_name VARCHAR(255);
	DECLARE t_speed FLOAT;
	DECLARE t_remain INT;
	DECLARE t_stock INT;
	DECLARE t_date datetime;
	DECLARE g_date datetime;
	DECLARE dt_date datetime;
	DECLARE all_quan INT;
	DECLARE start_date datetime;
	DECLARE affect_row INT DEFAULT 0;	
	DECLARE done INT DEFAULT 0;
	
	DECLARE a_list CURSOR for SELECT item_name, quantity, date from consume WHERE valid is NULL;
	DECLARE CONTINUE HANDLER for SQLSTATE '02000' SET done = 1;
	
	DELETE from item;
	
	OPEN a_list;
	

my_loop:LOOP

		FETCH a_list INTO t_name, t_remain, t_date;
		
		SET all_quan=(SELECT SUM(quantity) as s from purchase WHERE item_name=t_name);
		SET start_date= (SELECT MIN(date) from purchase WHERE item_name=t_name);
		SET t_speed=all_quan/TIMESTAMPDIFF(DAY,start_date,t_date);
		SET g_date=NOW();
		
		SET dt_date=date_add(t_date, interval ROUND(t_remain/t_speed) day);
		#RETURN dt_date;
		SET t_stock=all_quan-t_speed*TIMESTAMPDIFF(DAY,start_date,NOW());
		
		
		insert into item (name,speed,stock,deplete_date,gen_date) values (t_name,t_speed,t_stock,dt_date,g_date);
	 
  IF done=1 THEN
     LEAVE my_loop;
  END IF;
  END LOOP my_loop;
	
  SET affect_row=(SELECT count(*) from item);
	CLOSE a_list;
	RETURN affect_row;
END
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
