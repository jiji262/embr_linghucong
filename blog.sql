-- phpMyAdmin SQL Dump
-- version 3.3.7
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2012 年 01 月 31 日 09:22
-- 服务器版本: 5.0.90
-- PHP 版本: 5.2.14

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `blog`
--

-- --------------------------------------------------------

--
-- 表的结构 `attempts`
--

CREATE TABLE IF NOT EXISTS `attempts` (
  `user_id` int(11) NOT NULL,
  `attempts` int(9) NOT NULL,
  `datet` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `locked` int(9) NOT NULL,
  PRIMARY KEY  (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `attempts`
--


-- --------------------------------------------------------

--
-- 表的结构 `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(9) NOT NULL auto_increment,
  `title` text NOT NULL,
  `content` text,
  `datet` timestamp NOT NULL default CURRENT_TIMESTAMP on update CURRENT_TIMESTAMP,
  `image` text,
  `summary` text,
  `comments` int(11) default NULL,
  `published` int(11) NOT NULL,
  `source` text,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- 转存表中的数据 `blog`
--

INSERT INTO `blog` (`id`, `title`, `content`, `datet`, `image`, `summary`, `comments`, `published`, `source`) VALUES
(1, 'Test Post', 'Nam vel nisi leo, ac luctus eros. Aenean lacinia, augue et suscipit vehicula, neque nulla feugiat elit, ut condimentum neque mi eget metus. In ut imperdiet eros. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam congue arcu id dolor luctus varius. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam varius ultrices dolor, vel pharetra dolor auctor in. Aenean egestas turpis a lorem tincidunt placerat. Fusce pharetra, enim nec vestibulum dictum, nisl dui luctus nisl, non commodo risus libero ac mi. Fusce non tortor vitae libero molestie tempor. Etiam sed nibh erat. Donec viverra neque sed nisi lobortis.', '2012-01-31 15:41:34', '', '', 1, 1, '');

-- --------------------------------------------------------

--
-- 表的结构 `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(9) NOT NULL auto_increment,
  `category` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `categories`
--


-- --------------------------------------------------------

--
-- 表的结构 `post_categories`
--

CREATE TABLE IF NOT EXISTS `post_categories` (
  `post_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `post_categories`
--


-- --------------------------------------------------------

--
-- 表的结构 `post_tags`
--

CREATE TABLE IF NOT EXISTS `post_tags` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `post_tags`
--


-- --------------------------------------------------------

--
-- 表的结构 `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(9) NOT NULL auto_increment,
  `tag` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- 转存表中的数据 `tags`
--


-- --------------------------------------------------------

--
-- 表的结构 `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(9) NOT NULL auto_increment,
  `email` text NOT NULL,
  `hash` text NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- 转存表中的数据 `users`
--

INSERT INTO `users` (`id`, `email`, `hash`) VALUES
(1, 'jiguofei@msn.com', '49fd0e75c29d74425b4a9b0df3fedc876fd9699c0dbece917e12c825fc95bf16648c10d9a5ce0882ccf7715bc22bd32979161ebd3daa5db9f4bd746ba9de77ef');
