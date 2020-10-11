-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2019-11-20 05:13:11
-- 服务器版本： 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `akplayer`
--
CREATE DATABASE IF NOT EXISTS `akplayer` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `akplayer`;

-- --------------------------------------------------------

--
-- 表的结构 `akplayer_index_carousel`
--

DROP TABLE IF EXISTS `akplayer_index_carousel`;
CREATE TABLE `akplayer_index_carousel` (
  `cid` int(11) NOT NULL,
  `img` varchar(128) DEFAULT NULL,
  `title` varchar(64) DEFAULT NULL
  -- `href` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `akplayer_index_carousel`
--

TRUNCATE TABLE `akplayer_index_carousel`;
--
-- 转存表中的数据 `akplayer_index_carousel`
--

INSERT INTO `akplayer_index_carousel` (`cid`, `img`, `title`) VALUES
(1, 'banner1.jpg', '轮播广告商品1'),
(2, 'banner2.jpg', '轮播广告商品2'),
(3, 'banner3.jpg', '轮播广告商品3'),
(4, 'banner4.jpg', '轮播广告商品3');
-- --------------------------------------------------------

--
-- 表的结构 `akplayer_index_product`
--

DROP TABLE IF EXISTS `akplayer_product`;
CREATE TABLE `akplayer_product` (
  `pid` int(11) NOT NULL,
  `cateid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `img` varchar(256) DEFAULT NULL,
   `detailsbigimg` varchar(256) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `delprice` decimal(10,2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `akplayer_index_product`
--

TRUNCATE TABLE `akplayer_product`;
--

INSERT INTO `akplayer_product` (`pid`, `cateid`, `title`, `details`, `img`,`detailsbigimg`, `price`,`delprice`, `href`, `seq_recommended`, `seq_new_arrival`, `seq_top_sale`) VALUES
(1,1, '英雄美队', '620含共享显卡内存', '1.jpg','1b.jpg' ,'1599.00', '2599.00', 'product_details.html?lid=1', 1, 1, 1),
(2,1, '拳头', '620含共享显卡内存', '2.jpg','2.jpg' ,'1499.00', '2799.00', 'product_details.html?lid=1', 1, 1, 1),
(3,1, '星野', '620含共享显卡内存', '3.jpg','3.jpg' ,'1699.00', '2399.00', 'product_details.html?lid=1', 1, 1, 1),
(4,1, '序曲', '620含共享显卡内存', '4.jpg','4.jpg' ,'1799.00', '2199.00', 'product_details.html?lid=1', 1, 1, 1),
(5,1, '战狼', '620含共享显卡内存', '5.jpg','5.jpg' ,'1299.00', '2499.00', 'product_details.html?lid=1', 1, 1, 1),
(6,1, '凯蒂', '620含共享显卡内存', '6.jpg','6.jpg' ,'1399.00', '2399.00', 'product_details.html?lid=1', 1, 1, 1),
(7,1, '法师', '620含共享显卡内存', '7.jpg','7.jpg' ,'1899.00', '2799.00', 'product_details.html?lid=1', 1, 1, 1),
(8,1, '未央', '620含共享显卡内存', '8.jpg','8.jpg' ,'1699.00', '2299.00', 'product_details.html?lid=1', 1, 1, 1),
(9,1, '战衣', '620含共享显卡内存', '9.jpg','9.jpg' ,'1799.00', '2699.00', 'product_details.html?lid=1', 1, 1, 1),
(10,1, '至尊', '620含共享显卡内存', '10.jpg','10.jpg' ,'1399.00', '2599.00', 'product_details.html?lid=1', 1, 1, 1),
(11,1, 'WCG', '620含共享显卡内存', '11.jpg','11.jpg' ,'1099.00', '2499.00', 'product_details.html?lid=1', 1, 1, 1),
(12,1, '英雄泪', '620含共享显卡内存', '12.jpg','12.jpg' ,'1499.00', '2399.00', 'product_details.html?lid=1', 1, 1, 1),
(13,1, '幻翎', '620含共享显卡内存', '13.jpg','13.jpg' ,'1299.00', '2299.00', 'product_details.html?lid=1', 1, 1, 1),
(14,1, 'E.home', '620含共享显卡内存', '14.jpg','14.jpg' ,'1199.00', '2199.00', 'product_details.html?lid=1', 1, 1, 1),
(15,1, '英雄蝙蝠', '620含共享显卡内存', '15.jpg','15.jpg' ,'1099.00', '2099.00', 'product_details.html?lid=1', 1, 1, 1),
(16,2, '竞技者', '阿卡丁电竞椅ak游戏椅dx电竞座椅dxr太空舱座舱电竞卓椅电脑椅子', '16.jpg','16.jpg' ,'1399.00', '2799.00', 'product_details.html?lid=1', 1, 1, 1),
(17,2, '幻神', '舒适电竞椅电竞仓座椅一体网吧懒人太空舱座舱久坐游戏仓电脑座椅', '17.jpg','17.jpg' ,'2549.00', '3399.00', 'product_details.html?lid=1', 1, 1, 1),
(18,2, '卡丁', '阿卡丁电脑椅子加宽家用网吧主播电竞风游戏椅赛车座椅办公转椅', '18.jpg','18.jpg' ,'2549.00', '2999.00', 'product_details.html?lid=1', 1, 1, 1),
(19,2, '无畏', '阿卡丁吃鸡电竞椅学生电子竞技椅网吧游戏椅座舱家用懒人电脑椅子', '19.jpg','19.jpg' ,'1499.00', '2299.00', 'product_details.html?lid=1', 1, 1, 1),
(20,2, '格调', '阿卡丁AKPLAYER电脑椅电竞椅搁脚凳 电脑凳子 椅子 换鞋凳升降 黑白', '20.jpg','20.jpg' ,'1899.00', '2699.00', 'product_details.html?lid=1', 1, 1, 1),
(21,3, '瑞影', '阿卡丁（AKPLAYER）电竞椅 电脑椅 人体工学椅 办公椅 老板椅 无护翼加宽款 吃鸡 掠夺者', '21.jpg','21.jpg' ,'1569.00', '1699.00', 'product_details.html?lid=1', 1, 1, 1),
(22,3, 'BOSS', '阿卡丁（AKPLAYER）电脑椅 电竞椅 巨型电竞椅 胖子福利 皮椅座椅 人体工学办公椅子 幕天', '22.jpg','22.jpg' ,'1648.00', '1799.00', 'product_details.html?lid=1', 1, 1, 1),
(23,3, '玛莎拉蒂红', '阿卡丁 电脑椅 办公椅子 电竞椅 老板椅 人体工学椅 家用可躺椅升降椅靠背椅转椅 纳帕', '23.jpg','23.jpg' ,'1299.00', '2499.00', 'product_details.html?lid=1', 1, 1, 1),
(24,3, '战衣', '阿卡丁（AKPLAYER）电脑椅电竞椅 皮椅转椅赛车座椅 家用办公椅子老板椅 总裁 过节送礼 玛莎拉蒂红', '24.jpg','24.jpg' ,'1499.00', '2299.00', 'product_details.html?lid=1', 1, 1, 1),
(25,3, '纳帕', '阿卡丁（AKPLAYER）电脑椅 电竞椅 游戏椅 办公椅子转椅 人体工学椅 加大加高款 黑色 下单前咨询客服', '25.jpg','25.jpg' ,'1799.00', '2499.00', 'product_details.html?lid=1', 1, 1, 1),
(26,3, '拉古纳', '阿卡丁（AKPLAYER）老板椅 办公椅子 电脑椅 电竞椅 人体工学椅 家用可躺座椅 真皮款', '26.jpg','26.jpg' ,'1399.00', '2399.00', 'product_details.html?lid=1', 1, 1, 1),
(27,3, '卡缇娅', '阿卡丁（AKPLAYER）电竞椅 电脑椅 办公椅 电竞座椅家用 人体工学椅 主播椅 直播椅 瑞影 白色4D扶手', '27.jpg','27.jpg' ,'1699.00', '2999.00', 'product_details.html?lid=1', 1, 1, 1),
(28,3, '星野', '阿卡丁（AKPLAYER）老板椅 办公椅 家用电脑椅 人体工学椅子皮椅转椅可躺靠背椅 格调【 99%地区隔天达', '28.jpg','28.jpg' ,'1799.00', '2799.00', 'product_details.html?lid=1', 1, 1, 1),
(29,4, '安达斯', '原声原代 电竞桌电脑桌台式办公桌家用书桌写字桌宿舍网吧游戏电竞桌桌椅套装 源计划 单桌80*60*75', '29.jpg','29.jpg' ,'1499.00', '2699.00', 'product_details.html?lid=1', 1, 1, 1),
(30,4, '幕天', '蔓斯菲尔 电脑桌简约钢木加大加固家用卧室成人电竞桌写字简易学习笔记本桌台式办公桌写字书桌子 120*60cm黑胡桃色', '30.jpg','30.jpg' ,'1699.00', '2699.00', 'product_details.html?lid=1', 1, 1, 1),
(31,4, '掠夺者', '酷迪熊 电竞桌 电脑桌 游戏桌子 台式家用宿舍学习书桌 电竞升降桌椅套装 探索者（120*60*72）单桌 桌体不升降款', '31.jpg','31.jpg' ,'1899.00', '2399.00', 'product_details.html?lid=1', 1, 1, 1);


-- --------------------------------------------------------

--
-- 表的结构 `akplayer_laptop`
--

-- 插入之前先把表清空（truncate） `akplayer_order_detail`
--
-------------------------------------------------

--
-- 表的结构 `akplayer_receiver_address`
--


--
-- 插入之前先把表清空（truncate） `akplayer_receiver_address`
--

--
-- 插入之前先把表清空（truncate） `akplayer_shoppingcart_item`
--
--------

--
-- 表的结构 `akplayer_user`
--

DROP TABLE IF EXISTS `akplayer_user`;
CREATE TABLE `akplayer_user` (
  `uid` int(11) NOT NULL,
  `uname` varchar(32) DEFAULT NULL,
  `upwd` varchar(32) DEFAULT NULL,
  `email` varchar(64) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `avatar` varchar(128) DEFAULT NULL,
  `user_name` varchar(32) DEFAULT NULL,
  `gender` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 插入之前先把表清空（truncate） `akplayer_user`
--

TRUNCATE TABLE `akplayer_user`;
--
-- 转存表中的数据 `akplayer_user`
--

INSERT INTO `akplayer_user` (`uid`, `uname`, `upwd`, `email`, `phone`, `avatar`, `user_name`, `gender`) VALUES
(1, 'dingding', '123456', 'ding@qq.com', '13501234567', 'img/avatar/default.png', '丁伟', 1),
(2, 'dangdang', '123456', 'dang@qq.com', '13501234568', 'img/avatar/default.png', '林当', 1),
(3, 'doudou', '123456', 'dou@qq.com', '13501234569', 'img/avatar/default.png', '窦志强', 1),
(4, 'yaya', '123456', 'ya@qq.com', '13501234560', 'img/avatar/default.png', '秦小雅', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akplayer_index_carousel`
--
ALTER TABLE `akplayer_index_carousel`
  ADD PRIMARY KEY (`cid`);

--
--
ALTER TABLE `akplayer_product`
  ADD PRIMARY KEY (`pid`);

--
--


--
ALTER TABLE `akplayer_user`
  ADD PRIMARY KEY (`uid`);

--
--

--
-- 使用表AUTO_INCREMENT `akplayer_index_carousel`
--
ALTER TABLE `akplayer_index_carousel`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- 使用表AUTO_INCREMENT `akplayer_index_product`
--
ALTER TABLE `akplayer_product`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--


--
-- 使用表AUTO_INCREMENT `akplayer_user`
--
ALTER TABLE `akplayer_user`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
