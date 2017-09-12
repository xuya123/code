-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2017-09-12 12:19:37
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `clothing`
--

-- --------------------------------------------------------

--
-- 表的结构 `about`
--

CREATE TABLE IF NOT EXISTS `about` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(40) DEFAULT NULL COMMENT '公司邮箱',
  `phone` varchar(20) DEFAULT NULL COMMENT '公司电话',
  `address` varchar(100) DEFAULT NULL COMMENT '公司地址',
  `code` varchar(20) DEFAULT NULL COMMENT '公司邮编',
  `mobile` int(11) DEFAULT NULL COMMENT '公司手机',
  `content` text COMMENT '公司介绍',
  `copyright` varchar(50) DEFAULT NULL COMMENT '版权所有',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `message`
--

CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) DEFAULT NULL,
  `phone` int(11) DEFAULT NULL,
  `content` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `message`
--

INSERT INTO `message` (`id`, `name`, `phone`, `content`) VALUES
(1, '123', 2147483647, '留言区域');

-- --------------------------------------------------------

--
-- 表的结构 `news`
--

CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img` varchar(120) NOT NULL COMMENT '新闻图片',
  `title` varchar(100) NOT NULL COMMENT '新闻标题',
  `source` char(40) DEFAULT NULL COMMENT '新闻来源',
  `content` text COMMENT '新闻内容',
  `type` int(11) DEFAULT '0' COMMENT '新闻类别：0公司新闻 1行业新闻 2论坛新闻',
  `ctime` timestamp NULL DEFAULT NULL COMMENT '发布新闻时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加新闻时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `news`
--

INSERT INTO `news` (`id`, `img`, `title`, `source`, `content`, `type`, `ctime`, `addtime`) VALUES
(1, 'img/news01.jpg', '坚持“以人为本，主动竟争”是一惯秉承的价值观', NULL, '昊美儿服装有限公司是一家集设计、制作、销售为一体的专业定制职业装订做公司。以个性设计、量身定做、批量生产的经营方式和新颖的款式、精湛的工艺、完善的售后服务赢得了广大客户的信赖和赞同。', 0, NULL, NULL),
(2, 'img/news02.jpg', '“集体利益是企业的最高利益”', NULL, '主体设计风格上追求,“端正、舒适、团体”，注意新产品开发的独创性公司采用现代网络管理，具有健全的组织结构，全面实施质量品牌战略，坚持“以人为本，主动竟争”是一惯秉承的价值观“集体利益是企业的最高利益”是全体员工处事的原则。', 0, NULL, NULL),
(3, 'img/news03.jpg', '主体设计风格上追求', NULL, '昊美儿服装有限公司是一家集设计、制作、销售为一体的专业定制职业装订做公司。以个性设计、量身定做、批量生产的经营方式和新颖的款式、精湛的工艺、完善的售后服务赢得了广大客户的信赖和赞同。主体设计风格上追求,“端正、舒适、团体”', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `new_types`
--

CREATE TABLE IF NOT EXISTS `new_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ctime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `pubtime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `type` varchar(40) NOT NULL COMMENT '新闻类型',
  `selected` tinyint(4) DEFAULT '0' COMMENT '新闻类型是否被选中',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- 转存表中的数据 `new_types`
--

INSERT INTO `new_types` (`id`, `ctime`, `pubtime`, `type`, `selected`) VALUES
(1, '2017-09-12 08:52:46', '2017-09-12 08:52:46', '公司新闻', 1),
(2, '2017-09-12 08:53:15', '2017-09-12 08:53:15', '行业新闻', 0),
(3, '2017-09-12 08:53:25', '2017-09-12 08:53:25', '论坛新闻', 0);

-- --------------------------------------------------------

--
-- 表的结构 `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL COMMENT '产品标题',
  `content` text COMMENT '产品内容',
  `type` int(11) DEFAULT '0' COMMENT '产品类别：0休闲服装 1商务套装 2时尚正装',
  `ctime` timestamp NULL DEFAULT NULL COMMENT '发布产品时间',
  `addtime` timestamp NULL DEFAULT NULL COMMENT '添加产品时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `site_privilage`
--

CREATE TABLE IF NOT EXISTS `site_privilage` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) NOT NULL,
  `pid` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `site_privilage`
--

INSERT INTO `site_privilage` (`id`, `name`, `pid`) VALUES
(1, '产品管理', 0),
(2, '新闻管理', 0),
(3, '留言管理', 0),
(4, '权限管理', 0),
(5, '页面管理', 0),
(6, '产品添加', 1),
(7, '产品删除', 1),
(8, '产品修改', 1);

-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(120) NOT NULL,
  `password` varchar(64) NOT NULL,
  `role_id` tinyint(4) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `user_name`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', 1);

-- --------------------------------------------------------

--
-- 表的结构 `user_groups`
--

CREATE TABLE IF NOT EXISTS `user_groups` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `user_name` char(120) NOT NULL,
  `privilage` varchar(256) DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
