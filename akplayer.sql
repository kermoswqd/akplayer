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
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!40101 SET NAMES utf8mb4 */
;
--
-- Database: `xz`
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
  `title` varchar(64) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `akplayer_index_carousel`
--
TRUNCATE TABLE `akplayer_index_carousel`;
--
-- 转存表中的数据 `akplayer_index_carousel`
--
INSERT INTO `akplayer_index_carousel` (`cid`, `img`, `title`, `href`)
VALUES (
    1,
    'img/index/banner1.png',
    '轮播广告商品1',
    'product_details.html?lid=28'
  ),
  (
    2,
    'img/index/banner2.png',
    '轮播广告商品2',
    'product_details.html?lid=19'
  ),
  (
    3,
    'img/index/banner3.png',
    '轮播广告商品3',
    'lookforward.html'
  ),
  (
    4,
    'img/index/banner4.png',
    '轮播广告商品4',
    'lookforward.html'
  );
-- --------------------------------------------------------
--
-- 表的结构 `akplayer_gameseats_product`
--
DROP TABLE IF EXISTS `akplayer_gameseats_product`;
CREATE TABLE `akplayer_gameseats_product` (
  `pid` int(11) NOT NULL,
  `title` varchar(64) DEFAULT NULL,
  `details` varchar(128) DEFAULT NULL,
  `pic` varchar(128) DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `href` varchar(128) DEFAULT NULL,
  `seq_recommended` tinyint(4) DEFAULT NULL,
  `seq_new_arrival` tinyint(4) DEFAULT NULL,
  `seq_top_sale` tinyint(4) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `akplayer_gameseats_product`
--
TRUNCATE TABLE `akplayer_gameseats_product`;
--
-- 转存表中的数据 `akplayer_gameseats_product`
--
INSERT INTO `akplayer_gameseats_product` (
    `pid`,
    `title`,
    `details`,
    `pic`,
    `price`,
    `href`,
    `seq_recommended`,
    `seq_new_arrival`,
    `seq_top_sale`
  )
VALUES (
    1,
    '至尊',
    'keomos',
    'img/b1.jpg',
    '6988.00',
    'product_details.html?lid=1',
    1,
    1,
    1
  ),
  (
    2,
    '战衣',
    '噢诶人个人更可怕',
    'img/index/study_computer_img2.png',
    '3488.00',
    'product_details.html?lid=5',
    2,
    2,
    2
  ),
  (
    3,
    '锦衣',
    '七日合肥',
    'img/index/study_computer_img3.png',
    '5399.00',
    'product_details.html?lid=9',
    3,
    3,
    3
  ),
  (
    4,
    '苹果',
    '酷睿双核i5处理器|512GB SSD|4GB内存|英特尔HD游戏级显卡',
    'img/index/study_computer_img4.png',
    '4966.00',
    'product_details.html?lid=13',
    4,
    4,
    4
  ),
  (
    5,
    '联想小新700 电竞版游戏本',
    '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD显卡620含共享显卡内存',
    'img/index/study_computer_img5.png',
    '6299.00',
    'product_details.html?lid=17',
    5,
    5,
    5
  ),
  (
    6,
    '戴尔灵越燃7000 轻薄窄边',
    '酷睿双核i5处理器|512GB SSD|2GB内存|英特尔HD显卡',
    'img/index/study_computer_img3.png',
    '5199.00',
    'product_details.html?lid=19',
    6,
    6,
    6
  ),
  (
    7,
    '神州战神Z7M 高性价比游戏本',
    '酷睿双核i7处理器|1TGB SSD|8GB内存|英特尔HD游戏机独立显卡',
    'img/index/study_computer_img4.png',
    '5799.00',
    'product_details.html?lid=38',
    0,
    0,
    0
  );
-- --------------------------------------------------------
--
-- 表的结构 `xz_laptop`
--
DROP TABLE IF EXISTS `xz_laptop`;
CREATE TABLE `xz_laptop` (
  `lid` int(11) NOT NULL,
  `family_id` int(11) DEFAULT NULL,
  `title` varchar(128) DEFAULT NULL,
  `subtitle` varchar(128) DEFAULT NULL,
  `price` decimal(10, 2) DEFAULT NULL,
  `promise` varchar(64) DEFAULT NULL,
  `spec` varchar(64) DEFAULT NULL,
  `lname` varchar(32) DEFAULT NULL,
  `os` varchar(32) DEFAULT NULL,
  `memory` varchar(32) DEFAULT NULL,
  `resolution` varchar(32) DEFAULT NULL,
  `video_card` varchar(32) DEFAULT NULL,
  `cpu` varchar(32) DEFAULT NULL,
  `video_memory` varchar(32) DEFAULT NULL,
  `category` varchar(32) DEFAULT NULL,
  `disk` varchar(32) DEFAULT NULL,
  `details` varchar(1024) DEFAULT NULL,
  `shelf_time` bigint(20) DEFAULT NULL,
  `sold_count` int(11) DEFAULT NULL,
  `is_onsale` tinyint(1) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_laptop`
--
TRUNCATE TABLE `xz_laptop`;
--
-- 转存表中的数据 `xz_laptop`
--
INSERT INTO `xz_laptop` (
    `lid`,
    `family_id`,
    `title`,
    `subtitle`,
    `price`,
    `promise`,
    `spec`,
    `lname`,
    `os`,
    `memory`,
    `resolution`,
    `video_card`,
    `cpu`,
    `video_memory`,
    `category`,
    `disk`,
    `details`,
    `shelf_time`,
    `sold_count`,
    `is_onsale`
  )
VALUES (
    1,
    1,
    'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/128GB SSD闪存 MMGF2CH/A)',
    '5月焕新季，领券买新机！神券满6000减600！一体成型金属机身，纤薄轻巧，长达12小时续航',
    '6988.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '双核i5/8GB内存/128GB闪存',
    'AppleMacBook Air',
    'MacOS',
    '8G',
    '1920*1080',
    '集成显卡',
    'Intel i5低功耗版',
    '其它',
    '轻薄本',
    '128G固态',
    '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',
    150123456789,
    2968,
    1
  ),
  (
    2,
    1,
    'Apple MacBook Air 13.3英寸笔记本 银色(Core i5 处理器/8GB内存/256GB SSD闪存 MMGG2CH/A)',
    '5月焕新季，领券买新机！神券满8000减800！一体成型金属机身，纤薄轻巧，长达12小时续航',
    '8268.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '双核i5/8GB内存/256GB闪存',
    'AppleMacBook Air',
    'MacOS',
    '8G',
    '1920*1080',
    '集成显卡',
    'Intel i5低功耗版',
    '其它',
    '轻薄本',
    '256G固态',
    '<div class=\"content_tpl\"> <div class=\"formwork\">   <div class=\"formwork_img\"><br></div><div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"img/product/detail/57b15612N81dc489d.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_img\">    <img alt=\"\" class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\">   </div>  </div>  <div class=\"formwork\">   <div class=\"formwork_text\">    技术规格请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',
    150223456789,
    1922,
    0
  ),
  (
    3,
    1,
    'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/128GB SSD闪存 Z0TA0002L)',
    'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！',
    '7488.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '定制款：双核i7/8G内存/128G闪存',
    'AppleMacBook Air',
    'MacOS',
    '8G',
    '1920*1080',
    '集成显卡',
    'Intel i7低功耗版',
    '其它',
    '轻薄本',
    '128G固态',
    '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',
    150323456789,
    733,
    0
  ),
  (
    4,
    1,
    'Apple MacBook Air 13.3英寸笔记本电脑 银色(Core i7 处理器/8GB内存/256GB SSD闪存 Z0TA0002L)',
    'i7处理器在此！依旧纤薄轻盈，续航持久，能胜任更多高强度工作，办公利器！',
    '7888.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '定制款：双核i7/8G内存/256G闪存',
    'AppleMacBook Air',
    'MacOS',
    '8G',
    '1920*1080',
    '集成显卡',
    'Intel i7低功耗版',
    '其它',
    '轻薄本',
    '256G固态',
    '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t3034/151/748569500/226790/d6cd86a2/57b15612N81dc489d.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"//img20.360buyimg.com/vc/jfs/t2683/60/4222930118/169462/233c7678/57b15616N1e285f09.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_text\">技术规格 请前往 www.apple.com/cn/macbook-air/specs.html 查看完整内容。</div></div></div>',
    150323456789,
    105,
    0
  ),
  (
    5,
    2,
    '小米(MI)Air 13.3英寸全金属超轻薄笔记本(i5-6200U 8G 256G PCIE固态 940MX独显 FHD WIN10)银',
    '【i5 独立显卡】全高清窄边框 8G内存 256G固态硬盘 支持SSD硬盘扩容 薄至14.8mm 轻至1.28kg！AKG扬声器！',
    '4999.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '【13.3英寸】I5-6200U 8G 256G',
    '小米Air',
    'Windows 10',
    '8G',
    '全高清屏(1920*1080)',
    '入门级游戏独立显卡',
    'Intel i5低功耗版',
    '1G',
    '轻薄本',
    '256G固态',
    '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas',
    154123456789,
    1527,
    1
  ),
  (
    6,
    2,
    '小米(MI)Air 12.5英寸全金属超轻薄笔记本(Core M-7Y30 4G 128G固态硬盘 全高清屏 背光键盘 Win10)银',
    '【FHD窄边框】第七代处理器 128G SSD支持M.2接口SSD硬盘扩容 薄至12.9mm 轻至1.07kg！AKG扬声器！',
    '3599.00',
    '*退货补运费 *30天无忧退货 *48小时快速退款 *72小时发货',
    '【12.5银色】 M-7Y30 4G 128G',
    '小米Air',
    'Windows 10',
    '4G',
    '全高清屏(1920*1080)',
    '集成显卡',
    'Intel CoreM',
    '其它',
    '轻薄本',
    '128G固态',
    '<div class=\"content_tpl\"><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/5886e317Nbc52a580.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f747eNfdc5f737.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7483N695168a2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7486Nf809b915.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748bN28dbcbb2.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f748fNd2861229.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7493N5a3758af.jpg\"></div></div><div class=\"formwork\"><div class=\"formwork_img\"><img class=\"\" src=\"img/product/detail/586f7497N20aac53e.jpg\"></div></div><div class=\"formwork\"><div clas',
    153123456789,
    115,
    0
  );
-- --------------------------------------------------------
--
-- 表的结构 `xz_laptop_family`
--
DROP TABLE IF EXISTS `xz_laptop_family`;
CREATE TABLE `xz_laptop_family` (
  `fid` int(11) NOT NULL,
  `fname` varchar(32) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_laptop_family`
--
TRUNCATE TABLE `xz_laptop_family`;
--
-- 转存表中的数据 `xz_laptop_family`
--
INSERT INTO `xz_laptop_family` (`fid`, `fname`)
VALUES (1, 'AppleMacBookAir'),
  (2, '小米Air'),
  (3, 'ThinkPadE480C'),
  (4, '华硕RX310UQ'),
  (5, '联想小新700'),
  (6, '戴尔燃7000'),
  (7, '戴尔灵越15PR-5745B'),
  (8, 'ThinkPadE470 C'),
  (9, '华硕FH5900V'),
  (10, '神舟战神Z7M-KP7GT');
-- --------------------------------------------------------
--
-- 表的结构 `xz_laptop_pic`
--
DROP TABLE IF EXISTS `xz_laptop_pic`;
CREATE TABLE `xz_laptop_pic` (
  `pid` int(11) NOT NULL,
  `laptop_id` int(11) DEFAULT NULL,
  `sm` varchar(128) DEFAULT NULL,
  `md` varchar(128) DEFAULT NULL,
  `lg` varchar(128) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_laptop_pic`
--
TRUNCATE TABLE `xz_laptop_pic`;
--
-- 转存表中的数据 `xz_laptop_pic`
--
INSERT INTO `xz_laptop_pic` (`pid`, `laptop_id`, `sm`, `md`, `lg`)
VALUES (
    1,
    1,
    'img/product/sm/57b12a31N8f4f75a3.jpg',
    'img/product/md/57b12a31N8f4f75a3.jpg',
    'img/product/lg/57b12a31N8f4f75a3.jpg'
  ),
  (
    2,
    1,
    'img/product/sm/57ad359dNd4a6f130.jpg',
    'img/product/md/57ad359dNd4a6f130.jpg',
    'img/product/lg/57ad359dNd4a6f130.jpg'
  ),
  (
    3,
    1,
    'img/product/sm/57ad8846N64ac3c79.jpg',
    'img/product/md/57ad8846N64ac3c79.jpg',
    'img/product/lg/57ad8846N64ac3c79.jpg'
  ),
  (
    4,
    2,
    'img/product/sm/57b12a31N8f4f75a3.jpg',
    'img/product/md/57b12a31N8f4f75a3.jpg',
    'img/product/lg/57b12a31N8f4f75a3.jpg'
  ),
  (
    5,
    2,
    'img/product/sm/57ad359dNd4a6f130.jpg',
    'img/product/md/57ad359dNd4a6f130.jpg',
    'img/product/lg/57ad359dNd4a6f130.jpg'
  );
-- --------------------------------------------------------
--
-- 表的结构 `xz_order`
--
DROP TABLE IF EXISTS `xz_order`;
CREATE TABLE `xz_order` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `address_id` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `order_time` bigint(20) DEFAULT NULL,
  `pay_time` bigint(20) DEFAULT NULL,
  `deliver_time` bigint(20) DEFAULT NULL,
  `received_time` bigint(20) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_order`
--
TRUNCATE TABLE `xz_order`;
-- --------------------------------------------------------
--
-- 表的结构 `xz_order_detail`
--
DROP TABLE IF EXISTS `xz_order_detail`;
CREATE TABLE `xz_order_detail` (
  `did` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_order_detail`
--
TRUNCATE TABLE `xz_order_detail`;
-- --------------------------------------------------------
--
-- 表的结构 `xz_receiver_address`
--
DROP TABLE IF EXISTS `xz_receiver_address`;
CREATE TABLE `xz_receiver_address` (
  `aid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `receiver` varchar(16) DEFAULT NULL,
  `province` varchar(16) DEFAULT NULL,
  `city` varchar(16) DEFAULT NULL,
  `county` varchar(16) DEFAULT NULL,
  `address` varchar(128) DEFAULT NULL,
  `cellphone` varchar(16) DEFAULT NULL,
  `fixedphone` varchar(16) DEFAULT NULL,
  `postcode` char(6) DEFAULT NULL,
  `tag` varchar(16) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_receiver_address`
--
TRUNCATE TABLE `xz_receiver_address`;
-- --------------------------------------------------------
--
-- 表的结构 `xz_shoppingcart_item`
--
DROP TABLE IF EXISTS `xz_shoppingcart_item`;
CREATE TABLE `xz_shoppingcart_item` (
  `iid` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `count` int(11) DEFAULT NULL,
  `is_checked` tinyint(1) DEFAULT NULL
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `xz_shoppingcart_item`
--
TRUNCATE TABLE `xz_shoppingcart_item`;
-- --------------------------------------------------------
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
) ENGINE = InnoDB DEFAULT CHARSET = utf8;
--
-- 插入之前先把表清空（truncate） `akplayer_user`
--
TRUNCATE TABLE `akplayer_user`;
--
-- 转存表中的数据 `akplayer_user`
--
INSERT INTO `akplayer_user` (
    `uid`,
    `uname`,
    `upwd`,
    `email`,
    `phone`,
    `avatar`,
    `user_name`,
    `gender`
  )
VALUES (
    1,
    'dingding',
    '123456',
    'ding@qq.com',
    '13501234567',
    'img/avatar/default.png',
    '丁伟',
    1
  ),
  (
    2,
    'dangdang',
    '123456',
    'dang@qq.com',
    '13501234568',
    'img/avatar/default.png',
    '林当',
    1
  ),
  (
    3,
    'doudou',
    '123456',
    'dou@qq.com',
    '13501234569',
    'img/avatar/default.png',
    '窦志强',
    1
  ),
  (
    4,
    'yaya',
    '123456',
    'ya@qq.com',
    '13501234560',
    'img/avatar/default.png',
    '秦小雅',
    0
  );
--
-- Indexes for dumped tables
--
--
-- Indexes for table `akplayer_index_carousel`
--
ALTER TABLE `akplayer_index_carousel`
ADD PRIMARY KEY (`cid`);
--
-- Indexes for table `akplayer_gameseats_product`
--
ALTER TABLE `akplayer_gameseats_product`
ADD PRIMARY KEY (`pid`);
--
-- Indexes for table `xz_laptop`
--
ALTER TABLE `xz_laptop`
ADD PRIMARY KEY (`lid`);
--
-- Indexes for table `xz_laptop_family`
--
ALTER TABLE `xz_laptop_family`
ADD PRIMARY KEY (`fid`);
--
-- Indexes for table `xz_laptop_pic`
--
ALTER TABLE `xz_laptop_pic`
ADD PRIMARY KEY (`pid`);
--
-- Indexes for table `xz_order`
--
ALTER TABLE `xz_order`
ADD PRIMARY KEY (`aid`);
--
-- Indexes for table `xz_order_detail`
--
ALTER TABLE `xz_order_detail`
ADD PRIMARY KEY (`did`);
--
-- Indexes for table `xz_receiver_address`
--
ALTER TABLE `xz_receiver_address`
ADD PRIMARY KEY (`aid`);
--
-- Indexes for table `xz_shoppingcart_item`
--
ALTER TABLE `xz_shoppingcart_item`
ADD PRIMARY KEY (`iid`);
--
-- Indexes for table `akplayer_user`
--
ALTER TABLE `akplayer_user`
ADD PRIMARY KEY (`uid`);
--
-- 在导出的表使用AUTO_INCREMENT
--
--
-- 使用表AUTO_INCREMENT `akplayer_index_carousel`
--
ALTER TABLE `akplayer_index_carousel`
MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;
--
-- 使用表AUTO_INCREMENT `akplayer_gameseats_product`
--
ALTER TABLE `akplayer_gameseats_product`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 8;
--
-- 使用表AUTO_INCREMENT `xz_laptop`
--
ALTER TABLE `xz_laptop`
MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 44;
--
-- 使用表AUTO_INCREMENT `xz_laptop_family`
--
ALTER TABLE `xz_laptop_family`
MODIFY `fid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 11;
--
-- 使用表AUTO_INCREMENT `xz_laptop_pic`
--
ALTER TABLE `xz_laptop_pic`
MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 297;
--
-- 使用表AUTO_INCREMENT `xz_order`
--
ALTER TABLE `xz_order`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_order_detail`
--
ALTER TABLE `xz_order_detail`
MODIFY `did` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_receiver_address`
--
ALTER TABLE `xz_receiver_address`
MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `xz_shoppingcart_item`
--
ALTER TABLE `xz_shoppingcart_item`
MODIFY `iid` int(11) NOT NULL AUTO_INCREMENT;
--
-- 使用表AUTO_INCREMENT `akplayer_user`
--
ALTER TABLE `akplayer_user`
MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT,
  AUTO_INCREMENT = 5;
COMMIT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;