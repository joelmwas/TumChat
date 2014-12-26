-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Sep 17, 2014 at 10:09 AM
-- Server version: 5.5.38-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tumchat`
--

-- --------------------------------------------------------

--
-- Table structure for table `elgg_access_collections`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `elgg_access_collections`
--

INSERT INTO `elgg_access_collections` (`id`, `name`, `owner_guid`, `site_guid`) VALUES
(3, 'Group: muselab geeks', 50, 1),
(4, 'Group: wordpress ladies', 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_access_collection_membership`
--

CREATE TABLE IF NOT EXISTS `elgg_access_collection_membership` (
  `user_guid` int(11) NOT NULL,
  `access_collection_id` int(11) NOT NULL,
  PRIMARY KEY (`user_guid`,`access_collection_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_access_collection_membership`
--

INSERT INTO `elgg_access_collection_membership` (`user_guid`, `access_collection_id`) VALUES
(33, 3),
(33, 4),
(39, 3),
(39, 4),
(52, 4);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_annotations`
--

CREATE TABLE IF NOT EXISTS `elgg_annotations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `elgg_annotations`
--

INSERT INTO `elgg_annotations` (`id`, `entity_guid`, `name_id`, `value_id`, `value_type`, `owner_guid`, `access_id`, `time_created`, `enabled`) VALUES
(1, 51, 45, 44, 'text', 33, 3, 1410814346, 'yes'),
(2, 51, 45, 46, 'text', 39, 3, 1410814550, 'yes'),
(3, 51, 47, 47, 'text', 39, 3, 1410814569, 'yes'),
(4, 55, 64, 63, 'text', 33, 2, 1410815735, 'yes'),
(5, 55, 70, 69, 'text', 52, 2, 1410815898, 'yes'),
(6, 56, 47, 47, 'text', 52, 2, 1410815911, 'yes'),
(7, 55, 47, 47, 'text', 52, 2, 1410815920, 'yes'),
(8, 50, 47, 47, 'text', 52, 2, 1410815928, 'yes'),
(9, 58, 47, 47, 'text', 52, 2, 1410816562, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_api_users`
--

CREATE TABLE IF NOT EXISTS `elgg_api_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `site_guid` bigint(20) unsigned DEFAULT NULL,
  `api_key` varchar(40) DEFAULT NULL,
  `secret` varchar(40) NOT NULL,
  `active` int(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_key` (`api_key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `elgg_config`
--

CREATE TABLE IF NOT EXISTS `elgg_config` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `site_guid` int(11) NOT NULL,
  PRIMARY KEY (`name`,`site_guid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_config`
--

INSERT INTO `elgg_config` (`name`, `value`, `site_guid`) VALUES
('view', 's:7:"default";', 1),
('language', 's:2:"en";', 1),
('default_access', 's:1:"2";', 1),
('allow_registration', 'b:1;', 1),
('walled_garden', 'b:0;', 1),
('allow_user_default_access', 's:0:"";', 1);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_datalists`
--

CREATE TABLE IF NOT EXISTS `elgg_datalists` (
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_datalists`
--

INSERT INTO `elgg_datalists` (`name`, `value`) VALUES
('filestore_run_once', '1409056791'),
('plugin_run_once', '1409056791'),
('elgg_widget_run_once', '1409056791'),
('installed', '1409056901'),
('path', '/var/www/tumchat/'),
('dataroot', '/var/www/tumdata/'),
('default_site', '1'),
('version', '2014012000'),
('simplecache_enabled', '1'),
('system_cache_enabled', '1'),
('processed_upgrades', 'a:45:{i:0;s:14:"2008100701.php";i:1;s:14:"2008101303.php";i:2;s:14:"2009022701.php";i:3;s:14:"2009041701.php";i:4;s:14:"2009070101.php";i:5;s:14:"2009102801.php";i:6;s:14:"2010010501.php";i:7;s:14:"2010033101.php";i:8;s:14:"2010040201.php";i:9;s:14:"2010052601.php";i:10;s:14:"2010060101.php";i:11;s:14:"2010060401.php";i:12;s:14:"2010061501.php";i:13;s:14:"2010062301.php";i:14;s:14:"2010062302.php";i:15;s:14:"2010070301.php";i:16;s:14:"2010071001.php";i:17;s:14:"2010071002.php";i:18;s:14:"2010111501.php";i:19;s:14:"2010121601.php";i:20;s:14:"2010121602.php";i:21;s:14:"2010121701.php";i:22;s:14:"2010123101.php";i:23;s:14:"2011010101.php";i:24;s:61:"2011021800-1.8_svn-goodbye_walled_garden-083121a656d06894.php";i:25;s:61:"2011022000-1.8_svn-custom_profile_fields-390ac967b0bb5665.php";i:26;s:60:"2011030700-1.8_svn-blog_status_metadata-4645225d7b440876.php";i:27;s:51:"2011031300-1.8_svn-twitter_api-12b832a5a7a3e1bd.php";i:28;s:57:"2011031600-1.8_svn-datalist_grows_up-0b8aec5a55cc1e1c.php";i:29;s:61:"2011032000-1.8_svn-widgets_arent_plugins-61836261fa280a5c.php";i:30;s:59:"2011032200-1.8_svn-admins_like_widgets-7f19d2783c1680d3.php";i:31;s:14:"2011052801.php";i:32;s:60:"2011061200-1.8b1-sites_need_a_site_guid-6d9dcbf46c0826cc.php";i:33;s:62:"2011092500-1.8.0.1-forum_reply_river_view-5758ce8d86ac56ce.php";i:34;s:54:"2011123100-1.8.2-fix_friend_river-b17e7ff8345c2269.php";i:35;s:53:"2011123101-1.8.2-fix_blog_status-b14c2a0e7b9e7d55.php";i:36;s:50:"2012012000-1.8.3-ip_in_syslog-87fe0f068cf62428.php";i:37;s:50:"2012012100-1.8.3-system_cache-93100e7d55a24a11.php";i:38;s:59:"2012041800-1.8.3-dont_filter_passwords-c0ca4a18b38ae2bc.php";i:39;s:58:"2012041801-1.8.3-multiple_user_tokens-852225f7fd89f6c5.php";i:40;s:59:"2013030600-1.8.13-update_user_location-8999eb8bf1bdd9a3.php";i:41;s:62:"2013051700-1.8.15-add_missing_group_index-52a63a3a3ffaced2.php";i:42;s:53:"2013052900-1.8.15-ipv6_in_syslog-f5c2cc0196e9e731.php";i:43;s:50:"2013060900-1.8.15-site_secret-404fc165cf9e0ac9.php";i:44;s:50:"2014012000-1.8.18-remember_me-9a8a433685cf7be9.php";}'),
('admin_registered', '1'),
('simplecache_lastupdate_default', '1410898868'),
('simplecache_lastcached_default', '1410898868'),
('__site_secret__', 'zYMARfSV1tlYy0wNbK_AV0P2AML0ZZsd'),
('simplecache_lastupdate_failsafe', '0'),
('simplecache_lastcached_failsafe', '0'),
('simplecache_lastupdate_foaf', '0'),
('simplecache_lastcached_foaf', '0'),
('simplecache_lastupdate_ical', '0'),
('simplecache_lastcached_ical', '0'),
('simplecache_lastupdate_installation', '0'),
('simplecache_lastcached_installation', '0'),
('simplecache_lastupdate_json', '0'),
('simplecache_lastcached_json', '0'),
('simplecache_lastupdate_opendd', '0'),
('simplecache_lastcached_opendd', '0'),
('simplecache_lastupdate_php', '0'),
('simplecache_lastcached_php', '0'),
('simplecache_lastupdate_rss', '0'),
('simplecache_lastcached_rss', '0'),
('simplecache_lastupdate_xml', '0'),
('simplecache_lastcached_xml', '0');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_entities`
--

CREATE TABLE IF NOT EXISTS `elgg_entities` (
  `guid` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` int(11) DEFAULT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `container_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `time_updated` int(11) NOT NULL,
  `last_action` int(11) NOT NULL DEFAULT '0',
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`guid`),
  KEY `type` (`type`),
  KEY `subtype` (`subtype`),
  KEY `owner_guid` (`owner_guid`),
  KEY `site_guid` (`site_guid`),
  KEY `container_guid` (`container_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `time_updated` (`time_updated`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=64 ;

--
-- Dumping data for table `elgg_entities`
--

INSERT INTO `elgg_entities` (`guid`, `type`, `subtype`, `owner_guid`, `site_guid`, `container_guid`, `access_id`, `time_created`, `time_updated`, `last_action`, `enabled`) VALUES
(1, 'site', 0, 0, 1, 0, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(2, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(3, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(4, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(5, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(6, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(7, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(8, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(9, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(10, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(11, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(12, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(13, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(14, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(15, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(16, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(17, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(18, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(19, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(20, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(21, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(22, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(23, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(24, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(25, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(26, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(27, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(28, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(29, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(30, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(31, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(32, 'object', 2, 1, 1, 1, 2, 1409056901, 1409056901, 1409056901, 'yes'),
(33, 'user', 0, 0, 1, 0, 2, 1409056946, 1410937488, 1410812023, 'yes'),
(34, 'object', 3, 33, 1, 33, 0, 1409056946, 1409056946, 1409056946, 'yes'),
(35, 'object', 3, 33, 1, 33, 0, 1409056946, 1409056946, 1409056946, 'yes'),
(36, 'object', 3, 33, 1, 33, 0, 1409056946, 1409056946, 1409056946, 'yes'),
(37, 'object', 3, 33, 1, 33, 0, 1409056946, 1409056946, 1409056946, 'yes'),
(38, 'object', 3, 33, 1, 33, 0, 1409056946, 1409056946, 1409056946, 'yes'),
(39, 'user', 0, 0, 1, 0, 2, 1409057340, 1410897049, 1409130037, 'yes'),
(40, 'object', 6, 39, 1, 39, 0, 1409057443, 1409057443, 1409057443, 'yes'),
(41, 'object', 6, 33, 1, 33, 0, 1409057443, 1409057443, 1409057443, 'yes'),
(42, 'object', 6, 39, 1, 39, 0, 1409057474, 1409057474, 1409057474, 'yes'),
(43, 'object', 6, 33, 1, 33, 0, 1409057474, 1409057474, 1409057474, 'yes'),
(44, 'object', 2, 1, 1, 1, 2, 1409128308, 1409128308, 1409128308, 'yes'),
(46, 'object', 6, 33, 1, 33, 0, 1409129913, 1409129913, 1409129913, 'yes'),
(47, 'object', 6, 39, 1, 39, 0, 1409129913, 1409129913, 1409129913, 'yes'),
(48, 'object', 6, 33, 1, 33, 0, 1409130125, 1409130125, 1409130125, 'yes'),
(49, 'object', 6, 39, 1, 39, 0, 1409130125, 1409130125, 1409130125, 'yes'),
(50, 'group', 0, 33, 1, 33, 2, 1410814140, 1410814140, 1410814426, 'yes'),
(51, 'object', 7, 33, 1, 50, 3, 1410814307, 1410814307, 1410814550, 'yes'),
(52, 'user', 0, 0, 1, 0, 2, 1410815143, 1410937622, 1410897306, 'yes'),
(54, 'object', 1, 33, 1, 52, 0, 1410815640, 1410815640, 1410815640, 'yes'),
(55, 'object', 8, 33, 1, 33, 2, 1410815735, 1410815735, 1410815898, 'yes'),
(56, 'object', 5, 33, 1, 33, 2, 1410815799, 1410815799, 1410815799, 'yes'),
(57, 'object', 5, 39, 1, 39, 2, 1410816221, 1410816221, 1410816221, 'yes'),
(58, 'group', 0, 39, 1, 39, 2, 1410816446, 1410816446, 1410816619, 'yes'),
(59, 'user', 0, 0, 1, 0, 2, 1410817565, 1410817733, 1410817801, 'yes'),
(60, 'object', 5, 59, 1, 59, 2, 1410817693, 1410817693, 1410817693, 'yes'),
(61, 'user', 0, 0, 1, 0, 2, 1410818338, 1410818338, 1410818338, 'no'),
(62, 'object', 2, 1, 1, 1, 2, 1410896257, 1410896257, 1410896257, 'yes'),
(63, 'object', 9, 52, 1, 52, 2, 1410897253, 1410897253, 1410897253, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_entity_relationships`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_relationships` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `guid_one` bigint(20) unsigned NOT NULL,
  `relationship` varchar(50) NOT NULL,
  `guid_two` bigint(20) unsigned NOT NULL,
  `time_created` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `guid_one` (`guid_one`,`relationship`,`guid_two`),
  KEY `relationship` (`relationship`),
  KEY `guid_two` (`guid_two`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `elgg_entity_relationships`
--

INSERT INTO `elgg_entity_relationships` (`id`, `guid_one`, `relationship`, `guid_two`, `time_created`) VALUES
(27, 39, 'friend', 33, 1410812023),
(26, 44, 'active_plugin', 1, 1409128327),
(3, 11, 'active_plugin', 1, 1409056901),
(4, 12, 'active_plugin', 1, 1409056901),
(5, 13, 'active_plugin', 1, 1409056901),
(6, 14, 'active_plugin', 1, 1409056901),
(7, 15, 'active_plugin', 1, 1409056901),
(8, 16, 'active_plugin', 1, 1409056901),
(9, 17, 'active_plugin', 1, 1409056901),
(10, 18, 'active_plugin', 1, 1409056901),
(11, 19, 'active_plugin', 1, 1409056901),
(12, 20, 'active_plugin', 1, 1409056901),
(13, 21, 'active_plugin', 1, 1409056901),
(14, 22, 'active_plugin', 1, 1409056901),
(15, 23, 'active_plugin', 1, 1409056901),
(16, 24, 'active_plugin', 1, 1409056901),
(17, 25, 'active_plugin', 1, 1409056901),
(18, 26, 'active_plugin', 1, 1409056901),
(19, 28, 'active_plugin', 1, 1409056901),
(20, 29, 'active_plugin', 1, 1409056901),
(21, 31, 'active_plugin', 1, 1409056901),
(22, 32, 'active_plugin', 1, 1409056901),
(23, 33, 'member_of_site', 1, 1409056946),
(24, 39, 'member_of_site', 1, 1409057340),
(25, 33, 'friend', 39, 1409057395),
(28, 33, 'member', 50, 1410814140),
(31, 52, 'member_of_site', 1, 1410815143),
(30, 39, 'member', 50, 1410814426),
(32, 33, 'friend', 52, 1410815198),
(33, 52, 'membership_request', 50, 1410815454),
(34, 39, 'friend', 52, 1410816107),
(35, 57, 'parent', 56, 1410816221),
(36, 39, 'member', 58, 1410816446),
(37, 52, 'member', 58, 1410816525),
(38, 33, 'member', 58, 1410816619),
(39, 59, 'member_of_site', 1, 1410817565),
(40, 59, 'membership_request', 50, 1410817717),
(41, 33, 'friend', 59, 1410817801),
(42, 61, 'member_of_site', 1, 1410818338);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_entity_subtypes`
--

CREATE TABLE IF NOT EXISTS `elgg_entity_subtypes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` enum('object','user','group','site') NOT NULL,
  `subtype` varchar(50) NOT NULL,
  `class` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`,`subtype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `elgg_entity_subtypes`
--

INSERT INTO `elgg_entity_subtypes` (`id`, `type`, `subtype`, `class`) VALUES
(1, 'object', 'file', 'ElggFile'),
(2, 'object', 'plugin', 'ElggPlugin'),
(3, 'object', 'widget', 'ElggWidget'),
(4, 'object', 'blog', ''),
(5, 'object', 'thewire', 'ElggWire'),
(6, 'object', 'messages', ''),
(7, 'object', 'groupforumtopic', ''),
(8, 'object', 'page_top', ''),
(9, 'object', 'customstylebackground', '');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_geocode_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_geocode_cache` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location` varchar(128) DEFAULT NULL,
  `lat` varchar(20) DEFAULT NULL,
  `long` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `location` (`location`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `elgg_groups_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_groups_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  KEY `name` (`name`(50)),
  KEY `description` (`description`(50)),
  FULLTEXT KEY `name_2` (`name`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_groups_entity`
--

INSERT INTO `elgg_groups_entity` (`guid`, `name`, `description`) VALUES
(50, 'muselab geeks', '<p>This a group of  web developers and designers passionate of their work</p>'),
(58, 'wordpress ladies', '<p>content management ladies this the right  group for you</p>');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_hmac_cache`
--

CREATE TABLE IF NOT EXISTS `elgg_hmac_cache` (
  `hmac` varchar(255) NOT NULL,
  `ts` int(11) NOT NULL,
  PRIMARY KEY (`hmac`),
  KEY `ts` (`ts`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `elgg_metadata`
--

CREATE TABLE IF NOT EXISTS `elgg_metadata` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` bigint(20) unsigned NOT NULL,
  `name_id` int(11) NOT NULL,
  `value_id` int(11) NOT NULL,
  `value_type` enum('integer','text') NOT NULL,
  `owner_guid` bigint(20) unsigned NOT NULL,
  `access_id` int(11) NOT NULL,
  `time_created` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`id`),
  KEY `entity_guid` (`entity_guid`),
  KEY `name_id` (`name_id`),
  KEY `value_id` (`value_id`),
  KEY `owner_guid` (`owner_guid`),
  KEY `access_id` (`access_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=150 ;

--
-- Dumping data for table `elgg_metadata`
--

INSERT INTO `elgg_metadata` (`id`, `entity_guid`, `name_id`, `value_id`, `value_type`, `owner_guid`, `access_id`, `time_created`, `enabled`) VALUES
(1, 1, 1, 2, 'text', 0, 2, 1409056901, 'yes'),
(2, 33, 3, 4, 'text', 33, 2, 1409056946, 'yes'),
(3, 33, 5, 4, 'text', 0, 2, 1409056946, 'yes'),
(4, 33, 6, 7, 'text', 0, 2, 1409056946, 'yes'),
(5, 39, 3, 4, 'text', 39, 2, 1409057340, 'yes'),
(6, 39, 8, 4, 'text', 39, 2, 1409057340, 'yes'),
(7, 39, 9, 10, 'integer', 39, 2, 1409057340, 'yes'),
(8, 40, 11, 12, 'text', 39, 0, 1409057443, 'yes'),
(9, 40, 13, 10, 'integer', 39, 0, 1409057443, 'yes'),
(70, 40, 14, 4, 'text', 39, 0, 1409130090, 'yes'),
(11, 40, 16, 15, 'integer', 39, 0, 1409057443, 'yes'),
(12, 40, 17, 15, 'integer', 39, 0, 1409057443, 'yes'),
(13, 40, 18, 4, 'integer', 39, 0, 1409057443, 'yes'),
(14, 41, 11, 12, 'text', 33, 0, 1409057443, 'yes'),
(15, 41, 13, 10, 'integer', 33, 0, 1409057443, 'yes'),
(16, 41, 14, 15, 'integer', 33, 0, 1409057443, 'yes'),
(17, 41, 16, 15, 'integer', 33, 0, 1409057443, 'yes'),
(18, 41, 17, 15, 'integer', 33, 0, 1409057443, 'yes'),
(19, 41, 18, 4, 'integer', 33, 0, 1409057443, 'yes'),
(20, 42, 11, 12, 'text', 39, 0, 1409057474, 'yes'),
(21, 42, 13, 10, 'integer', 39, 0, 1409057474, 'yes'),
(47, 42, 14, 4, 'text', 39, 0, 1409129879, 'yes'),
(23, 42, 16, 15, 'integer', 39, 0, 1409057474, 'yes'),
(24, 42, 17, 15, 'integer', 39, 0, 1409057474, 'yes'),
(25, 42, 18, 4, 'integer', 39, 0, 1409057474, 'yes'),
(26, 43, 11, 12, 'text', 33, 0, 1409057474, 'yes'),
(27, 43, 13, 10, 'integer', 33, 0, 1409057474, 'yes'),
(28, 43, 14, 15, 'integer', 33, 0, 1409057474, 'yes'),
(29, 43, 16, 15, 'integer', 33, 0, 1409057474, 'yes'),
(30, 43, 17, 15, 'integer', 33, 0, 1409057474, 'yes'),
(31, 43, 18, 4, 'integer', 33, 0, 1409057474, 'yes'),
(90, 50, 35, 32, 'text', 33, 2, 1410814140, 'yes'),
(89, 50, 34, 32, 'text', 33, 2, 1410814140, 'yes'),
(88, 50, 33, 32, 'text', 33, 2, 1410814140, 'yes'),
(87, 50, 31, 32, 'text', 33, 2, 1410814140, 'yes'),
(86, 50, 29, 30, 'text', 33, 2, 1410814140, 'yes'),
(48, 46, 11, 10, 'text', 33, 2, 1409129913, 'yes'),
(49, 46, 13, 12, 'integer', 33, 2, 1409129913, 'yes'),
(85, 46, 14, 4, 'text', 33, 0, 1409137665, 'yes'),
(51, 46, 16, 15, 'integer', 33, 2, 1409129913, 'yes'),
(52, 46, 17, 15, 'integer', 33, 2, 1409129913, 'yes'),
(53, 46, 18, 4, 'integer', 33, 2, 1409129913, 'yes'),
(54, 47, 11, 10, 'text', 39, 0, 1409129913, 'yes'),
(55, 47, 13, 12, 'integer', 39, 0, 1409129913, 'yes'),
(56, 47, 14, 15, 'integer', 39, 0, 1409129913, 'yes'),
(57, 47, 16, 15, 'integer', 39, 0, 1409129913, 'yes'),
(58, 47, 17, 15, 'integer', 39, 0, 1409129913, 'yes'),
(59, 47, 18, 4, 'integer', 39, 0, 1409129913, 'yes'),
(66, 39, 19, 15, 'integer', 39, 2, 1409130037, 'yes'),
(67, 39, 20, 15, 'integer', 39, 2, 1409130037, 'yes'),
(68, 39, 21, 15, 'integer', 39, 2, 1409130037, 'yes'),
(69, 39, 22, 15, 'integer', 39, 2, 1409130037, 'yes'),
(65, 39, 23, 28, 'integer', 39, 2, 1409130037, 'yes'),
(71, 48, 11, 10, 'text', 33, 2, 1409130125, 'yes'),
(72, 48, 13, 12, 'integer', 33, 2, 1409130125, 'yes'),
(149, 48, 14, 4, 'text', 33, 0, 1410899709, 'yes'),
(74, 48, 16, 15, 'integer', 33, 2, 1409130125, 'yes'),
(75, 48, 17, 15, 'integer', 33, 2, 1409130125, 'yes'),
(76, 48, 18, 4, 'integer', 33, 2, 1409130125, 'yes'),
(77, 49, 11, 10, 'text', 39, 0, 1409130125, 'yes'),
(78, 49, 13, 12, 'integer', 39, 0, 1409130125, 'yes'),
(79, 49, 14, 15, 'integer', 39, 0, 1409130125, 'yes'),
(80, 49, 16, 15, 'integer', 39, 0, 1409130125, 'yes'),
(81, 49, 17, 15, 'integer', 39, 0, 1409130125, 'yes'),
(82, 49, 18, 4, 'integer', 39, 0, 1409130125, 'yes'),
(91, 50, 36, 15, 'integer', 33, 2, 1410814140, 'yes'),
(92, 50, 37, 38, 'integer', 33, 2, 1410814140, 'yes'),
(93, 50, 23, 39, 'integer', 33, 2, 1410814140, 'yes'),
(94, 51, 40, 41, 'text', 33, 3, 1410814307, 'yes'),
(95, 51, 42, 43, 'text', 33, 3, 1410814307, 'yes'),
(96, 52, 3, 4, 'text', 52, 2, 1410815143, 'yes'),
(97, 52, 8, 4, 'text', 52, 2, 1410815143, 'yes'),
(98, 52, 9, 10, 'integer', 52, 2, 1410815143, 'yes'),
(105, 52, 19, 15, 'integer', 52, 2, 1410815406, 'yes'),
(106, 52, 20, 15, 'integer', 52, 2, 1410815406, 'yes'),
(107, 52, 21, 15, 'integer', 52, 2, 1410815406, 'yes'),
(108, 52, 22, 15, 'integer', 52, 2, 1410815406, 'yes'),
(104, 52, 23, 49, 'integer', 52, 2, 1410815406, 'yes'),
(109, 54, 50, 51, 'text', 33, 0, 1410815640, 'yes'),
(110, 54, 52, 53, 'text', 33, 0, 1410815640, 'yes'),
(111, 54, 54, 55, 'text', 33, 0, 1410815640, 'yes'),
(112, 54, 56, 57, 'text', 33, 0, 1410815640, 'yes'),
(113, 54, 58, 59, 'text', 33, 0, 1410815640, 'yes'),
(114, 54, 60, 61, 'text', 33, 0, 1410815640, 'yes'),
(115, 55, 62, 4, 'text', 33, 2, 1410815735, 'yes'),
(116, 56, 65, 66, 'text', 33, 2, 1410815799, 'yes'),
(117, 56, 67, 68, 'integer', 33, 2, 1410815799, 'yes'),
(118, 57, 65, 66, 'text', 39, 2, 1410816221, 'yes'),
(119, 57, 71, 4, 'text', 39, 2, 1410816221, 'yes'),
(120, 57, 67, 68, 'integer', 39, 2, 1410816221, 'yes'),
(121, 58, 29, 72, 'text', 39, 2, 1410816446, 'yes'),
(122, 58, 31, 32, 'text', 39, 2, 1410816446, 'yes'),
(123, 58, 33, 32, 'text', 39, 2, 1410816446, 'yes'),
(124, 58, 34, 32, 'text', 39, 2, 1410816446, 'yes'),
(125, 58, 35, 32, 'text', 39, 2, 1410816446, 'yes'),
(126, 58, 36, 73, 'integer', 39, 2, 1410816446, 'yes'),
(127, 58, 37, 74, 'integer', 39, 2, 1410816446, 'yes'),
(128, 58, 23, 75, 'integer', 39, 2, 1410816446, 'yes'),
(129, 59, 3, 4, 'text', 59, 2, 1410817565, 'yes'),
(130, 59, 8, 4, 'text', 59, 2, 1410817565, 'yes'),
(131, 59, 9, 10, 'integer', 59, 2, 1410817565, 'yes'),
(138, 59, 19, 15, 'integer', 59, 2, 1410817623, 'yes'),
(139, 59, 20, 15, 'integer', 59, 2, 1410817623, 'yes'),
(140, 59, 21, 15, 'integer', 59, 2, 1410817623, 'yes'),
(141, 59, 22, 15, 'integer', 59, 2, 1410817623, 'yes'),
(137, 59, 23, 77, 'integer', 59, 2, 1410817623, 'yes'),
(142, 60, 65, 66, 'text', 59, 2, 1410817693, 'yes'),
(143, 60, 67, 78, 'integer', 59, 2, 1410817693, 'yes'),
(144, 61, 3, 4, 'text', 61, 2, 1410818338, 'no'),
(145, 61, 79, 80, 'text', 0, 2, 1410818338, 'no'),
(146, 61, 5, 15, 'text', 0, 2, 1410818338, 'yes'),
(147, 61, 6, 43, 'text', 0, 2, 1410818338, 'yes'),
(148, 63, 81, 82, 'text', 52, 2, 1410897253, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_metastrings`
--

CREATE TABLE IF NOT EXISTS `elgg_metastrings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `string` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `string` (`string`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- Dumping data for table `elgg_metastrings`
--

INSERT INTO `elgg_metastrings` (`id`, `string`) VALUES
(1, 'email'),
(2, 'ruthkaveke@gmail.com'),
(3, 'notification:method:email'),
(4, '1'),
(5, 'validated'),
(6, 'validated_method'),
(7, 'admin_user'),
(8, 'admin_created'),
(9, 'created_by_guid'),
(10, '33'),
(11, 'toId'),
(12, '39'),
(13, 'fromId'),
(14, 'readYet'),
(15, '0'),
(16, 'hiddenFrom'),
(17, 'hiddenTo'),
(18, 'msg'),
(19, 'x1'),
(20, 'x2'),
(21, 'y1'),
(22, 'y2'),
(23, 'icontime'),
(24, '1409129743'),
(25, '1409129765'),
(26, '1409129769'),
(27, '1409130033'),
(28, '1409130037'),
(29, 'briefdescription'),
(30, 'They are just awesome'),
(31, 'file_enable'),
(32, 'yes'),
(33, 'activity_enable'),
(34, 'forum_enable'),
(35, 'pages_enable'),
(36, 'membership'),
(37, 'group_acl'),
(38, '3'),
(39, '1410814140'),
(40, 'status'),
(41, 'open'),
(42, 'tags'),
(43, ''),
(44, '<p>Am more than willing to share my thought</p>'),
(45, 'group_topic_post'),
(46, '<p>yeah good idea.learnt of a css framework for making responsive design its nice</p>'),
(47, 'likes'),
(48, '1410815395'),
(49, '1410815406'),
(50, 'filename'),
(51, 'file/1410815640recommendation.html'),
(52, 'mimetype'),
(53, 'text/html'),
(54, 'originalfilename'),
(55, 'recommendation.html'),
(56, 'simpletype'),
(57, 'document'),
(58, 'filestore::dir_root'),
(59, '/var/www/tumdata/'),
(60, 'filestore::filestore'),
(61, 'ElggDiskFilestore'),
(62, 'write_access_id'),
(63, '<p>This is a group to encourage and motivate ladies to do programming</p>'),
(64, 'page'),
(65, 'method'),
(66, 'site'),
(67, 'wire_thread'),
(68, '56'),
(69, 'This is just awesome Ruth i like seing ladies coding :)'),
(70, 'generic_comment'),
(71, 'reply'),
(72, 'cms are fantastic'),
(73, '2'),
(74, '4'),
(75, '1410816446'),
(76, '1410817618'),
(77, '1410817623'),
(78, '60'),
(79, 'disable_reason'),
(80, 'uservalidationbyemail_new_user'),
(81, 'background-image'),
(82, 'mod/customstyle/graphics/wallpapers/Tablecloth.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_objects_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_objects_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`guid`),
  FULLTEXT KEY `title` (`title`,`description`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_objects_entity`
--

INSERT INTO `elgg_objects_entity` (`guid`, `title`, `description`) VALUES
(2, 'blog', ''),
(3, 'bookmarks', ''),
(4, 'categories', ''),
(5, 'custom_index', ''),
(6, 'dashboard', ''),
(7, 'developers', ''),
(8, 'diagnostics', ''),
(9, 'embed', ''),
(10, 'externalpages', ''),
(11, 'file', ''),
(12, 'garbagecollector', ''),
(13, 'groups', ''),
(14, 'htmlawed', ''),
(15, 'invitefriends', ''),
(16, 'likes', ''),
(17, 'logbrowser', ''),
(18, 'logrotate', ''),
(19, 'members', ''),
(20, 'messageboard', ''),
(21, 'messages', ''),
(22, 'notifications', ''),
(23, 'pages', ''),
(24, 'profile', ''),
(25, 'reportedcontent', ''),
(26, 'search', ''),
(27, 'tagcloud', ''),
(28, 'thewire', ''),
(29, 'tinymce', ''),
(30, 'twitter_api', ''),
(31, 'uservalidationbyemail', ''),
(32, 'zaudio', ''),
(34, '', ''),
(35, '', ''),
(36, '', ''),
(37, '', ''),
(38, '', ''),
(40, 'greetings', '<p>hello mende hehehe</p>'),
(41, 'greetings', '<p>hello mende hehehe</p>'),
(42, 'hello', '<p>weeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>'),
(43, 'hello', '<p>weeeeeeeeeeeeeeeeeeeeeeeeeeeee</p>'),
(44, 'nologo', ''),
(46, 'RE: hello', '<p>How are you fairing</p>'),
(47, 'RE: hello', '<p>How are you fairing</p>'),
(48, 'RE: greetings', '<p>Am doing great :-)</p>'),
(49, 'RE: greetings', '<p>Am doing great :-)</p>'),
(51, 'Design', '<p>Guys lets talk about design</p>'),
(54, 'recommendation', '<p>my portfolio recommendation</p>'),
(55, 'Girls who develop', '<p>This is a group to encourage and motivate ladies to do programming</p>'),
(56, '', 'Hey guys lets do some coding'),
(57, '', 'True clean codes producing expected results :) when is coding day'),
(60, '', 'hey lets code in python'),
(62, 'customstyle', ''),
(63, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_private_settings`
--

CREATE TABLE IF NOT EXISTS `elgg_private_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `entity_guid` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `entity_guid` (`entity_guid`,`name`),
  KEY `name` (`name`),
  KEY `value` (`value`(50))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=71 ;

--
-- Dumping data for table `elgg_private_settings`
--

INSERT INTO `elgg_private_settings` (`id`, `entity_guid`, `name`, `value`) VALUES
(1, 2, 'elgg:internal:priority', '1'),
(2, 3, 'elgg:internal:priority', '2'),
(3, 4, 'elgg:internal:priority', '3'),
(4, 5, 'elgg:internal:priority', '4'),
(5, 6, 'elgg:internal:priority', '5'),
(6, 7, 'elgg:internal:priority', '6'),
(7, 8, 'elgg:internal:priority', '7'),
(8, 9, 'elgg:internal:priority', '8'),
(9, 10, 'elgg:internal:priority', '9'),
(10, 11, 'elgg:internal:priority', '10'),
(11, 12, 'elgg:internal:priority', '11'),
(12, 13, 'elgg:internal:priority', '12'),
(13, 14, 'elgg:internal:priority', '13'),
(14, 15, 'elgg:internal:priority', '14'),
(15, 16, 'elgg:internal:priority', '15'),
(16, 17, 'elgg:internal:priority', '16'),
(17, 18, 'elgg:internal:priority', '17'),
(18, 19, 'elgg:internal:priority', '18'),
(19, 20, 'elgg:internal:priority', '19'),
(20, 21, 'elgg:internal:priority', '20'),
(21, 22, 'elgg:internal:priority', '21'),
(22, 23, 'elgg:internal:priority', '22'),
(23, 24, 'elgg:internal:priority', '23'),
(24, 25, 'elgg:internal:priority', '24'),
(25, 26, 'elgg:internal:priority', '25'),
(26, 27, 'elgg:internal:priority', '26'),
(27, 28, 'elgg:internal:priority', '27'),
(28, 29, 'elgg:internal:priority', '28'),
(29, 30, 'elgg:internal:priority', '29'),
(30, 31, 'elgg:internal:priority', '30'),
(31, 32, 'elgg:internal:priority', '31'),
(32, 34, 'handler', 'control_panel'),
(33, 34, 'context', 'admin'),
(34, 34, 'column', '1'),
(35, 34, 'order', '0'),
(36, 35, 'handler', 'admin_welcome'),
(37, 35, 'context', 'admin'),
(38, 35, 'order', '10'),
(39, 35, 'column', '1'),
(40, 36, 'handler', 'online_users'),
(41, 36, 'context', 'admin'),
(42, 36, 'column', '2'),
(43, 36, 'order', '0'),
(44, 37, 'handler', 'new_users'),
(45, 37, 'context', 'admin'),
(46, 37, 'order', '10'),
(47, 37, 'column', '2'),
(48, 38, 'handler', 'content_stats'),
(49, 38, 'context', 'admin'),
(50, 38, 'order', '20'),
(51, 38, 'column', '2'),
(52, 36, 'num_display', '8'),
(53, 37, 'num_display', '5'),
(54, 38, 'num_display', '8'),
(55, 44, 'elgg:internal:priority', '32'),
(62, 13, 'limited_groups', 'no'),
(69, 59, 'login_failures', '1'),
(61, 13, 'hidden_groups', 'no'),
(70, 59, 'login_failure_1', '1410937506'),
(68, 62, 'elgg:internal:priority', '33');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_river`
--

CREATE TABLE IF NOT EXISTS `elgg_river` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(8) NOT NULL,
  `subtype` varchar(32) NOT NULL,
  `action_type` varchar(32) NOT NULL,
  `access_id` int(11) NOT NULL,
  `view` text NOT NULL,
  `subject_guid` int(11) NOT NULL,
  `object_guid` int(11) NOT NULL,
  `annotation_id` int(11) NOT NULL,
  `posted` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `action_type` (`action_type`),
  KEY `access_id` (`access_id`),
  KEY `subject_guid` (`subject_guid`),
  KEY `object_guid` (`object_guid`),
  KEY `annotation_id` (`annotation_id`),
  KEY `posted` (`posted`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `elgg_river`
--

INSERT INTO `elgg_river` (`id`, `type`, `subtype`, `action_type`, `access_id`, `view`, `subject_guid`, `object_guid`, `annotation_id`, `posted`) VALUES
(1, 'user', '', 'friend', 2, 'river/relationship/friend/create', 33, 39, 0, 1409057396),
(4, 'user', '', 'update', 2, 'river/user/default/profileiconupdate', 33, 33, 0, 1409129769),
(6, 'user', '', 'update', 2, 'river/user/default/profileiconupdate', 39, 39, 0, 1409130037),
(7, 'user', '', 'friend', 2, 'river/relationship/friend/create', 39, 33, 0, 1410812023),
(8, 'group', '', 'create', 2, 'river/group/create', 33, 50, 0, 1410814140),
(9, 'object', 'groupforumtopic', 'create', 3, 'river/object/groupforumtopic/create', 33, 51, 0, 1410814307),
(10, 'object', 'groupforumtopic', 'reply', 3, 'river/annotation/group_topic_post/reply', 33, 51, 1, 1410814346),
(11, 'group', '', 'join', 2, 'river/relationship/member/create', 39, 50, 0, 1410814426),
(12, 'object', 'groupforumtopic', 'reply', 3, 'river/annotation/group_topic_post/reply', 39, 51, 2, 1410814550),
(13, 'user', '', 'friend', 2, 'river/relationship/friend/create', 33, 52, 0, 1410815198),
(15, 'user', '', 'update', 2, 'river/user/default/profileiconupdate', 52, 52, 0, 1410815406),
(16, 'object', 'file', 'create', 0, 'river/object/file/create', 33, 54, 0, 1410815640),
(17, 'object', 'page_top', 'create', 2, 'river/object/page/create', 33, 55, 0, 1410815735),
(18, 'object', 'thewire', 'create', 2, 'river/object/thewire/create', 33, 56, 0, 1410815799),
(19, 'object', 'page_top', 'comment', 2, 'river/annotation/generic_comment/create', 52, 55, 5, 1410815898),
(20, 'user', '', 'friend', 2, 'river/relationship/friend/create', 39, 52, 0, 1410816107),
(21, 'object', 'thewire', 'create', 2, 'river/object/thewire/create', 39, 57, 0, 1410816221),
(22, 'group', '', 'create', 2, 'river/group/create', 39, 58, 0, 1410816446),
(23, 'group', '', 'join', 2, 'river/relationship/member/create', 52, 58, 0, 1410816525),
(24, 'group', '', 'join', 2, 'river/relationship/member/create', 33, 58, 0, 1410816619),
(26, 'user', '', 'update', 2, 'river/user/default/profileiconupdate', 59, 59, 0, 1410817623),
(27, 'object', 'thewire', 'create', 2, 'river/object/thewire/create', 59, 60, 0, 1410817693),
(28, 'user', '', 'friend', 2, 'river/relationship/friend/create', 33, 59, 0, 1410817801),
(29, 'user', '', 'update', 2, 'river/object/customstyle/update', 52, 52, 0, 1410897253),
(30, 'user', '', 'update', 2, 'river/object/customstyle/update', 52, 52, 0, 1410897306);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_sites_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_sites_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `url` varchar(255) NOT NULL,
  PRIMARY KEY (`guid`),
  UNIQUE KEY `url` (`url`),
  FULLTEXT KEY `name` (`name`,`description`,`url`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_sites_entity`
--

INSERT INTO `elgg_sites_entity` (`guid`, `name`, `description`, `url`) VALUES
(1, 'TumChat', '', 'http://localhost/tumchat/');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_system_log`
--

CREATE TABLE IF NOT EXISTS `elgg_system_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `object_id` int(11) NOT NULL,
  `object_class` varchar(50) NOT NULL,
  `object_type` varchar(50) NOT NULL,
  `object_subtype` varchar(50) NOT NULL,
  `event` varchar(50) NOT NULL,
  `performed_by_guid` int(11) NOT NULL,
  `owner_guid` int(11) NOT NULL,
  `access_id` int(11) NOT NULL,
  `enabled` enum('yes','no') NOT NULL DEFAULT 'yes',
  `time_created` int(11) NOT NULL,
  `ip_address` varchar(46) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `object_id` (`object_id`),
  KEY `object_class` (`object_class`),
  KEY `object_type` (`object_type`),
  KEY `object_subtype` (`object_subtype`),
  KEY `event` (`event`),
  KEY `performed_by_guid` (`performed_by_guid`),
  KEY `access_id` (`access_id`),
  KEY `time_created` (`time_created`),
  KEY `river_key` (`object_type`,`object_subtype`,`event`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=455 ;

--
-- Dumping data for table `elgg_system_log`
--

INSERT INTO `elgg_system_log` (`id`, `object_id`, `object_class`, `object_type`, `object_subtype`, `event`, `performed_by_guid`, `owner_guid`, `access_id`, `enabled`, `time_created`, `ip_address`) VALUES
(1, 2, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(2, 3, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(3, 4, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(4, 5, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(5, 6, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(6, 7, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(7, 8, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(8, 9, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(9, 10, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(10, 11, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(11, 12, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(12, 13, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(13, 14, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(14, 15, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(15, 16, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(16, 17, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(17, 18, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(18, 19, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(19, 20, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(20, 21, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(21, 22, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(22, 23, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(23, 24, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(24, 25, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(25, 26, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(26, 27, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(27, 28, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(28, 29, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(29, 30, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(30, 31, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(31, 32, 'ElggPlugin', 'object', 'plugin', 'create', 0, 1, 2, 'yes', 1409056901, '127.0.0.1'),
(32, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 0, 0, 2, 'yes', 1409056901, '127.0.0.1'),
(33, 23, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 0, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(34, 33, 'ElggUser', 'user', '', 'create', 0, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(35, 2, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 0, 33, 2, 'yes', 1409056946, '127.0.0.1'),
(36, 34, 'ElggWidget', 'object', 'widget', 'create', 0, 33, 0, 'yes', 1409056946, '127.0.0.1'),
(37, 35, 'ElggWidget', 'object', 'widget', 'create', 0, 33, 0, 'yes', 1409056946, '127.0.0.1'),
(38, 36, 'ElggWidget', 'object', 'widget', 'create', 0, 33, 0, 'yes', 1409056946, '127.0.0.1'),
(39, 37, 'ElggWidget', 'object', 'widget', 'create', 0, 33, 0, 'yes', 1409056946, '127.0.0.1'),
(40, 38, 'ElggWidget', 'object', 'widget', 'create', 0, 33, 0, 'yes', 1409056946, '127.0.0.1'),
(41, 33, 'ElggUser', 'user', '', 'make_admin', 0, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(42, 3, 'ElggMetadata', 'metadata', 'validated', 'create', 0, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(43, 4, 'ElggMetadata', 'metadata', 'validated_method', 'create', 0, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(44, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(45, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409056946, '127.0.0.1'),
(46, 24, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 33, 0, 2, 'yes', 1409057340, '127.0.0.1'),
(47, 39, 'ElggUser', 'user', '', 'create', 33, 0, 2, 'yes', 1409057340, '127.0.0.1'),
(48, 5, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 33, 39, 2, 'yes', 1409057340, '127.0.0.1'),
(49, 39, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409057340, '127.0.0.1'),
(50, 6, 'ElggMetadata', 'metadata', 'admin_created', 'create', 33, 39, 2, 'yes', 1409057340, '127.0.0.1'),
(51, 7, 'ElggMetadata', 'metadata', 'created_by_guid', 'create', 33, 39, 2, 'yes', 1409057340, '127.0.0.1'),
(52, 25, 'ElggRelationship', 'relationship', 'friend', 'create', 33, 0, 2, 'yes', 1409057395, '127.0.0.1'),
(53, 8, 'ElggMetadata', 'metadata', 'toId', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(54, 9, 'ElggMetadata', 'metadata', 'fromId', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(55, 10, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(56, 11, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(57, 12, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(58, 13, 'ElggMetadata', 'metadata', 'msg', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(59, 40, 'ElggObject', 'object', 'messages', 'create', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(60, 14, 'ElggMetadata', 'metadata', 'toId', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(61, 15, 'ElggMetadata', 'metadata', 'fromId', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(62, 16, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(63, 17, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(64, 18, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(65, 19, 'ElggMetadata', 'metadata', 'msg', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(66, 41, 'ElggObject', 'object', 'messages', 'create', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(67, 40, 'ElggObject', 'object', 'messages', 'update', 33, 39, 2, 'yes', 1409057443, '127.0.0.1'),
(68, 41, 'ElggObject', 'object', 'messages', 'update', 33, 33, 2, 'yes', 1409057443, '127.0.0.1'),
(69, 20, 'ElggMetadata', 'metadata', 'toId', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(70, 21, 'ElggMetadata', 'metadata', 'fromId', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(71, 22, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(72, 23, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(73, 24, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(74, 25, 'ElggMetadata', 'metadata', 'msg', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(75, 42, 'ElggObject', 'object', 'messages', 'create', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(76, 26, 'ElggMetadata', 'metadata', 'toId', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(77, 27, 'ElggMetadata', 'metadata', 'fromId', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(78, 28, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(79, 29, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(80, 30, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(81, 31, 'ElggMetadata', 'metadata', 'msg', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(82, 43, 'ElggObject', 'object', 'messages', 'create', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(83, 42, 'ElggObject', 'object', 'messages', 'update', 33, 39, 2, 'yes', 1409057474, '127.0.0.1'),
(84, 43, 'ElggObject', 'object', 'messages', 'update', 33, 33, 2, 'yes', 1409057474, '127.0.0.1'),
(85, 1, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 33, 0, 2, 'yes', 1409058585, '127.0.0.1'),
(86, 2, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 33, 0, 2, 'yes', 1409058593, '127.0.0.1'),
(87, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409126682, '127.0.0.1'),
(88, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409126682, '127.0.0.1'),
(89, 44, 'ElggPlugin', 'object', 'plugin', 'create', 33, 1, 2, 'yes', 1409128308, '127.0.0.1'),
(90, 26, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 33, 0, 2, 'yes', 1409128327, '127.0.0.1'),
(91, 45, 'ElggWidget', 'object', 'widget', 'create', 33, 39, 2, 'yes', 1409129054, '127.0.0.1'),
(92, 45, 'ElggWidget', 'object', 'widget', 'delete', 33, 39, 2, 'yes', 1409129068, '127.0.0.1'),
(93, 39, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409129683, '127.0.0.1'),
(94, 39, 'ElggUser', 'user', '', 'profileupdate', 33, 0, 2, 'yes', 1409129683, '127.0.0.1'),
(95, 32, 'ElggMetadata', 'metadata', 'x1', 'create', 33, 33, 2, 'yes', 1409129743, '127.0.0.1'),
(96, 33, 'ElggMetadata', 'metadata', 'x2', 'create', 33, 33, 2, 'yes', 1409129743, '127.0.0.1'),
(97, 34, 'ElggMetadata', 'metadata', 'y1', 'create', 33, 33, 2, 'yes', 1409129743, '127.0.0.1'),
(98, 35, 'ElggMetadata', 'metadata', 'y2', 'create', 33, 33, 2, 'yes', 1409129743, '127.0.0.1'),
(99, 36, 'ElggMetadata', 'metadata', 'icontime', 'create', 33, 33, 2, 'yes', 1409129743, '127.0.0.1'),
(100, 33, 'ElggUser', 'user', '', 'profileiconupdate', 33, 0, 2, 'yes', 1409129743, '127.0.0.1'),
(101, 36, 'ElggMetadata', 'metadata', 'icontime', 'delete', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(102, 37, 'ElggMetadata', 'metadata', 'icontime', 'create', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(103, 32, 'ElggMetadata', 'metadata', 'x1', 'delete', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(104, 38, 'ElggMetadata', 'metadata', 'x1', 'create', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(105, 33, 'ElggMetadata', 'metadata', 'x2', 'delete', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(106, 39, 'ElggMetadata', 'metadata', 'x2', 'create', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(107, 34, 'ElggMetadata', 'metadata', 'y1', 'delete', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(108, 40, 'ElggMetadata', 'metadata', 'y1', 'create', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(109, 35, 'ElggMetadata', 'metadata', 'y2', 'delete', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(110, 41, 'ElggMetadata', 'metadata', 'y2', 'create', 33, 33, 2, 'yes', 1409129765, '127.0.0.1'),
(111, 37, 'ElggMetadata', 'metadata', 'icontime', 'delete', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(112, 42, 'ElggMetadata', 'metadata', 'icontime', 'create', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(113, 38, 'ElggMetadata', 'metadata', 'x1', 'delete', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(114, 43, 'ElggMetadata', 'metadata', 'x1', 'create', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(115, 39, 'ElggMetadata', 'metadata', 'x2', 'delete', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(116, 44, 'ElggMetadata', 'metadata', 'x2', 'create', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(117, 40, 'ElggMetadata', 'metadata', 'y1', 'delete', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(118, 45, 'ElggMetadata', 'metadata', 'y1', 'create', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(119, 41, 'ElggMetadata', 'metadata', 'y2', 'delete', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(120, 46, 'ElggMetadata', 'metadata', 'y2', 'create', 33, 33, 2, 'yes', 1409129769, '127.0.0.1'),
(121, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1409129825, '127.0.0.1'),
(122, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409129825, '127.0.0.1'),
(123, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1409129862, '127.0.0.1'),
(124, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1409129862, '127.0.0.1'),
(125, 22, 'ElggMetadata', 'metadata', 'readYet', 'delete', 39, 39, 0, 'yes', 1409129879, '127.0.0.1'),
(126, 47, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 39, 0, 'yes', 1409129879, '127.0.0.1'),
(127, 48, 'ElggMetadata', 'metadata', 'toId', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(128, 49, 'ElggMetadata', 'metadata', 'fromId', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(129, 50, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(130, 51, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(131, 52, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(132, 53, 'ElggMetadata', 'metadata', 'msg', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(133, 46, 'ElggObject', 'object', 'messages', 'create', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(134, 54, 'ElggMetadata', 'metadata', 'toId', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(135, 55, 'ElggMetadata', 'metadata', 'fromId', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(136, 56, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(137, 57, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(138, 58, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(139, 59, 'ElggMetadata', 'metadata', 'msg', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(140, 47, 'ElggObject', 'object', 'messages', 'create', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(141, 46, 'ElggObject', 'object', 'messages', 'update', 39, 33, 2, 'yes', 1409129913, '127.0.0.1'),
(142, 47, 'ElggObject', 'object', 'messages', 'update', 39, 39, 2, 'yes', 1409129913, '127.0.0.1'),
(143, 60, 'ElggMetadata', 'metadata', 'x1', 'create', 39, 39, 2, 'yes', 1409130033, '127.0.0.1'),
(144, 61, 'ElggMetadata', 'metadata', 'x2', 'create', 39, 39, 2, 'yes', 1409130033, '127.0.0.1'),
(145, 62, 'ElggMetadata', 'metadata', 'y1', 'create', 39, 39, 2, 'yes', 1409130033, '127.0.0.1'),
(146, 63, 'ElggMetadata', 'metadata', 'y2', 'create', 39, 39, 2, 'yes', 1409130033, '127.0.0.1'),
(147, 64, 'ElggMetadata', 'metadata', 'icontime', 'create', 39, 39, 2, 'yes', 1409130033, '127.0.0.1'),
(148, 39, 'ElggUser', 'user', '', 'profileiconupdate', 39, 0, 2, 'yes', 1409130033, '127.0.0.1'),
(149, 64, 'ElggMetadata', 'metadata', 'icontime', 'delete', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(150, 65, 'ElggMetadata', 'metadata', 'icontime', 'create', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(151, 60, 'ElggMetadata', 'metadata', 'x1', 'delete', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(152, 66, 'ElggMetadata', 'metadata', 'x1', 'create', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(153, 61, 'ElggMetadata', 'metadata', 'x2', 'delete', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(154, 67, 'ElggMetadata', 'metadata', 'x2', 'create', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(155, 62, 'ElggMetadata', 'metadata', 'y1', 'delete', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(156, 68, 'ElggMetadata', 'metadata', 'y1', 'create', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(157, 63, 'ElggMetadata', 'metadata', 'y2', 'delete', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(158, 69, 'ElggMetadata', 'metadata', 'y2', 'create', 39, 39, 2, 'yes', 1409130037, '127.0.0.1'),
(159, 10, 'ElggMetadata', 'metadata', 'readYet', 'delete', 39, 39, 0, 'yes', 1409130090, '127.0.0.1'),
(160, 70, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 39, 0, 'yes', 1409130090, '127.0.0.1'),
(161, 71, 'ElggMetadata', 'metadata', 'toId', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(162, 72, 'ElggMetadata', 'metadata', 'fromId', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(163, 73, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(164, 74, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(165, 75, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(166, 76, 'ElggMetadata', 'metadata', 'msg', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(167, 48, 'ElggObject', 'object', 'messages', 'create', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(168, 77, 'ElggMetadata', 'metadata', 'toId', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(169, 78, 'ElggMetadata', 'metadata', 'fromId', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(170, 79, 'ElggMetadata', 'metadata', 'readYet', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(171, 80, 'ElggMetadata', 'metadata', 'hiddenFrom', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(172, 81, 'ElggMetadata', 'metadata', 'hiddenTo', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(173, 82, 'ElggMetadata', 'metadata', 'msg', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(174, 49, 'ElggObject', 'object', 'messages', 'create', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(175, 48, 'ElggObject', 'object', 'messages', 'update', 39, 33, 2, 'yes', 1409130125, '127.0.0.1'),
(176, 49, 'ElggObject', 'object', 'messages', 'update', 39, 39, 2, 'yes', 1409130125, '127.0.0.1'),
(177, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409137638, '127.0.0.1'),
(178, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409137638, '127.0.0.1'),
(179, 73, 'ElggMetadata', 'metadata', 'readYet', 'delete', 33, 33, 2, 'yes', 1409137652, '127.0.0.1'),
(180, 83, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 0, 'yes', 1409137652, '127.0.0.1'),
(181, 50, 'ElggMetadata', 'metadata', 'readYet', 'delete', 33, 33, 2, 'yes', 1409137661, '127.0.0.1'),
(182, 84, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 0, 'yes', 1409137661, '127.0.0.1'),
(183, 84, 'ElggMetadata', 'metadata', 'readYet', 'delete', 33, 33, 0, 'yes', 1409137665, '127.0.0.1'),
(184, 85, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 0, 'yes', 1409137665, '127.0.0.1'),
(185, 43, 'ElggMetadata', 'metadata', 'x1', 'delete', 33, 33, 2, 'yes', 1409137699, '127.0.0.1'),
(186, 44, 'ElggMetadata', 'metadata', 'x2', 'delete', 33, 33, 2, 'yes', 1409137700, '127.0.0.1'),
(187, 45, 'ElggMetadata', 'metadata', 'y1', 'delete', 33, 33, 2, 'yes', 1409137700, '127.0.0.1'),
(188, 46, 'ElggMetadata', 'metadata', 'y2', 'delete', 33, 33, 2, 'yes', 1409137700, '127.0.0.1'),
(189, 42, 'ElggMetadata', 'metadata', 'icontime', 'delete', 33, 33, 2, 'yes', 1409137700, '127.0.0.1'),
(190, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1409138757, '127.0.0.1'),
(191, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409138757, '127.0.0.1'),
(192, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1409138801, '127.0.0.1'),
(193, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1409138801, '127.0.0.1'),
(194, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1409140320, '127.0.0.1'),
(195, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1409140320, '127.0.0.1'),
(196, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409140336, '127.0.0.1'),
(197, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409140336, '127.0.0.1'),
(198, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1409140553, '127.0.0.1'),
(199, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409140553, '127.0.0.1'),
(200, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409140592, '127.0.0.1'),
(201, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409140592, '127.0.0.1'),
(202, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1409140603, '127.0.0.1'),
(203, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409140603, '127.0.0.1'),
(204, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409140630, '127.0.0.1'),
(205, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409140630, '127.0.0.1'),
(206, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1409141774, '127.0.0.1'),
(207, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409141774, '127.0.0.1'),
(208, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1409141800, '127.0.0.1'),
(209, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1409141800, '127.0.0.1'),
(210, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410811927, '127.0.0.1'),
(211, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410811927, '127.0.0.1'),
(212, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410811948, '127.0.0.1'),
(213, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410811948, '127.0.0.1'),
(214, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410811980, '127.0.0.1'),
(215, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410811980, '127.0.0.1'),
(216, 27, 'ElggRelationship', 'relationship', 'friend', 'create', 39, 0, 2, 'yes', 1410812023, '127.0.0.1'),
(217, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410813574, '127.0.0.1'),
(218, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410813574, '127.0.0.1'),
(219, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410813596, '127.0.0.1'),
(220, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410813596, '127.0.0.1'),
(221, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410813629, '127.0.0.1'),
(222, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410813629, '127.0.0.1'),
(223, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410813664, '127.0.0.1'),
(224, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410813664, '127.0.0.1'),
(225, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410813723, '127.0.0.1'),
(226, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410813723, '127.0.0.1'),
(227, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410813774, '127.0.0.1'),
(228, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410813774, '127.0.0.1'),
(229, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410813798, '127.0.0.1'),
(230, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410813798, '127.0.0.1'),
(231, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410813842, '127.0.0.1'),
(232, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410813842, '127.0.0.1'),
(233, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410813852, '127.0.0.1'),
(234, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410813852, '127.0.0.1'),
(235, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410813860, '127.0.0.1'),
(236, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410813860, '127.0.0.1'),
(237, 86, 'ElggMetadata', 'metadata', 'briefdescription', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(238, 87, 'ElggMetadata', 'metadata', 'file_enable', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(239, 88, 'ElggMetadata', 'metadata', 'activity_enable', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(240, 89, 'ElggMetadata', 'metadata', 'forum_enable', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(241, 90, 'ElggMetadata', 'metadata', 'pages_enable', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(242, 91, 'ElggMetadata', 'metadata', 'membership', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(243, 92, 'ElggMetadata', 'metadata', 'group_acl', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(244, 50, 'ElggGroup', 'group', '', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(245, 50, 'ElggGroup', 'group', '', 'update', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(246, 28, 'ElggRelationship', 'relationship', 'member', 'create', 33, 0, 2, 'yes', 1410814140, '127.0.0.1'),
(247, 93, 'ElggMetadata', 'metadata', 'icontime', 'create', 33, 33, 2, 'yes', 1410814140, '127.0.0.1'),
(248, 29, 'ElggRelationship', 'relationship', 'invited', 'create', 33, 0, 2, 'yes', 1410814200, '127.0.0.1'),
(249, 94, 'ElggMetadata', 'metadata', 'status', 'create', 33, 33, 3, 'yes', 1410814307, '127.0.0.1'),
(250, 95, 'ElggMetadata', 'metadata', 'tags', 'create', 33, 33, 3, 'yes', 1410814307, '127.0.0.1'),
(251, 51, 'ElggObject', 'object', 'groupforumtopic', 'create', 33, 33, 3, 'yes', 1410814307, '127.0.0.1'),
(252, 51, 'ElggObject', 'object', 'groupforumtopic', 'annotate', 33, 33, 3, 'yes', 1410814346, '127.0.0.1'),
(253, 1, 'ElggAnnotation', 'annotation', 'group_topic_post', 'create', 33, 33, 3, 'yes', 1410814346, '127.0.0.1'),
(254, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410814354, '127.0.0.1'),
(255, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410814354, '127.0.0.1'),
(256, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410814382, '127.0.0.1'),
(257, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410814382, '127.0.0.1'),
(258, 30, 'ElggRelationship', 'relationship', 'member', 'create', 39, 0, 2, 'yes', 1410814426, '127.0.0.1'),
(259, 29, 'ElggRelationship', 'relationship', 'invited', 'delete', 39, 0, 2, 'yes', 1410814426, '127.0.0.1'),
(260, 51, 'ElggObject', 'object', 'groupforumtopic', 'annotate', 39, 33, 3, 'yes', 1410814550, '127.0.0.1'),
(261, 2, 'ElggAnnotation', 'annotation', 'group_topic_post', 'create', 39, 39, 3, 'yes', 1410814550, '127.0.0.1'),
(262, 51, 'ElggObject', 'object', 'groupforumtopic', 'annotate', 39, 33, 3, 'yes', 1410814569, '127.0.0.1'),
(263, 3, 'ElggAnnotation', 'annotation', 'likes', 'create', 39, 39, 3, 'yes', 1410814569, '127.0.0.1'),
(264, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410814664, '127.0.0.1'),
(265, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410814664, '127.0.0.1'),
(266, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410814691, '127.0.0.1'),
(267, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410814691, '127.0.0.1'),
(268, 31, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 33, 0, 2, 'yes', 1410815143, '127.0.0.1'),
(269, 52, 'ElggUser', 'user', '', 'create', 33, 0, 2, 'yes', 1410815143, '127.0.0.1'),
(270, 96, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 33, 52, 2, 'yes', 1410815143, '127.0.0.1'),
(271, 52, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410815143, '127.0.0.1'),
(272, 97, 'ElggMetadata', 'metadata', 'admin_created', 'create', 33, 52, 2, 'yes', 1410815143, '127.0.0.1'),
(273, 98, 'ElggMetadata', 'metadata', 'created_by_guid', 'create', 33, 52, 2, 'yes', 1410815143, '127.0.0.1'),
(274, 53, 'ElggWidget', 'object', 'widget', 'create', 33, 52, 2, 'yes', 1410815186, '127.0.0.1'),
(275, 53, 'ElggWidget', 'object', 'widget', 'delete', 33, 52, 2, 'yes', 1410815192, '127.0.0.1'),
(276, 32, 'ElggRelationship', 'relationship', 'friend', 'create', 33, 0, 2, 'yes', 1410815198, '127.0.0.1'),
(277, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410815290, '127.0.0.1'),
(278, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410815290, '127.0.0.1'),
(279, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410815340, '127.0.0.1'),
(280, 52, 'ElggUser', 'user', '', 'login', 52, 0, 2, 'yes', 1410815340, '127.0.0.1'),
(281, 99, 'ElggMetadata', 'metadata', 'x1', 'create', 52, 52, 2, 'yes', 1410815395, '127.0.0.1'),
(282, 100, 'ElggMetadata', 'metadata', 'x2', 'create', 52, 52, 2, 'yes', 1410815395, '127.0.0.1'),
(283, 101, 'ElggMetadata', 'metadata', 'y1', 'create', 52, 52, 2, 'yes', 1410815395, '127.0.0.1'),
(284, 102, 'ElggMetadata', 'metadata', 'y2', 'create', 52, 52, 2, 'yes', 1410815395, '127.0.0.1'),
(285, 103, 'ElggMetadata', 'metadata', 'icontime', 'create', 52, 52, 2, 'yes', 1410815395, '127.0.0.1'),
(286, 52, 'ElggUser', 'user', '', 'profileiconupdate', 52, 0, 2, 'yes', 1410815395, '127.0.0.1'),
(287, 103, 'ElggMetadata', 'metadata', 'icontime', 'delete', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(288, 104, 'ElggMetadata', 'metadata', 'icontime', 'create', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(289, 99, 'ElggMetadata', 'metadata', 'x1', 'delete', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(290, 105, 'ElggMetadata', 'metadata', 'x1', 'create', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(291, 100, 'ElggMetadata', 'metadata', 'x2', 'delete', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(292, 106, 'ElggMetadata', 'metadata', 'x2', 'create', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(293, 101, 'ElggMetadata', 'metadata', 'y1', 'delete', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(294, 107, 'ElggMetadata', 'metadata', 'y1', 'create', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(295, 102, 'ElggMetadata', 'metadata', 'y2', 'delete', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(296, 108, 'ElggMetadata', 'metadata', 'y2', 'create', 52, 52, 2, 'yes', 1410815406, '127.0.0.1'),
(297, 33, 'ElggRelationship', 'relationship', 'membership_request', 'create', 52, 0, 2, 'yes', 1410815454, '127.0.0.1'),
(298, 52, 'ElggUser', 'user', '', 'logout', 52, 0, 2, 'yes', 1410815475, '127.0.0.1'),
(299, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410815475, '127.0.0.1'),
(300, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410815511, '127.0.0.1'),
(301, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410815511, '127.0.0.1'),
(302, 109, 'ElggMetadata', 'metadata', 'filename', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(303, 110, 'ElggMetadata', 'metadata', 'mimetype', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(304, 111, 'ElggMetadata', 'metadata', 'originalfilename', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(305, 112, 'ElggMetadata', 'metadata', 'simpletype', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(306, 54, 'ElggFile', 'object', 'file', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(307, 113, 'ElggMetadata', 'metadata', 'filestore::dir_root', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(308, 114, 'ElggMetadata', 'metadata', 'filestore::filestore', 'create', 33, 33, 0, 'yes', 1410815640, '127.0.0.1'),
(309, 115, 'ElggMetadata', 'metadata', 'write_access_id', 'create', 33, 33, 2, 'yes', 1410815735, '127.0.0.1'),
(310, 55, 'ElggObject', 'object', 'page_top', 'create', 33, 33, 2, 'yes', 1410815735, '127.0.0.1'),
(311, 55, 'ElggObject', 'object', 'page_top', 'annotate', 33, 33, 2, 'yes', 1410815735, '127.0.0.1'),
(312, 4, 'ElggAnnotation', 'annotation', 'page', 'create', 33, 33, 2, 'yes', 1410815735, '127.0.0.1'),
(313, 116, 'ElggMetadata', 'metadata', 'method', 'create', 33, 33, 2, 'yes', 1410815799, '127.0.0.1'),
(314, 56, 'ElggWire', 'object', 'thewire', 'create', 33, 33, 2, 'yes', 1410815799, '127.0.0.1'),
(315, 117, 'ElggMetadata', 'metadata', 'wire_thread', 'create', 33, 33, 2, 'yes', 1410815799, '127.0.0.1'),
(316, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410815808, '127.0.0.1'),
(317, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410815808, '127.0.0.1'),
(318, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410815849, '127.0.0.1'),
(319, 52, 'ElggUser', 'user', '', 'login', 52, 0, 2, 'yes', 1410815849, '127.0.0.1'),
(320, 55, 'ElggObject', 'object', 'page_top', 'annotate', 52, 33, 2, 'yes', 1410815898, '127.0.0.1'),
(321, 5, 'ElggAnnotation', 'annotation', 'generic_comment', 'create', 52, 52, 2, 'yes', 1410815898, '127.0.0.1'),
(322, 56, 'ElggWire', 'object', 'thewire', 'annotate', 52, 33, 2, 'yes', 1410815911, '127.0.0.1'),
(323, 6, 'ElggAnnotation', 'annotation', 'likes', 'create', 52, 52, 2, 'yes', 1410815911, '127.0.0.1'),
(324, 55, 'ElggObject', 'object', 'page_top', 'annotate', 52, 33, 2, 'yes', 1410815920, '127.0.0.1'),
(325, 7, 'ElggAnnotation', 'annotation', 'likes', 'create', 52, 52, 2, 'yes', 1410815920, '127.0.0.1'),
(326, 50, 'ElggGroup', 'group', '', 'annotate', 52, 33, 2, 'yes', 1410815928, '127.0.0.1'),
(327, 8, 'ElggAnnotation', 'annotation', 'likes', 'create', 52, 52, 2, 'yes', 1410815928, '127.0.0.1'),
(328, 52, 'ElggUser', 'user', '', 'logout', 52, 0, 2, 'yes', 1410816013, '127.0.0.1'),
(329, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410816013, '127.0.0.1'),
(330, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410816067, '127.0.0.1'),
(331, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410816067, '127.0.0.1'),
(332, 34, 'ElggRelationship', 'relationship', 'friend', 'create', 39, 0, 2, 'yes', 1410816107, '127.0.0.1'),
(333, 118, 'ElggMetadata', 'metadata', 'method', 'create', 39, 39, 2, 'yes', 1410816221, '127.0.0.1'),
(334, 119, 'ElggMetadata', 'metadata', 'reply', 'create', 39, 39, 2, 'yes', 1410816221, '127.0.0.1'),
(335, 57, 'ElggWire', 'object', 'thewire', 'create', 39, 39, 2, 'yes', 1410816221, '127.0.0.1'),
(336, 35, 'ElggRelationship', 'relationship', 'parent', 'create', 39, 0, 2, 'yes', 1410816221, '127.0.0.1'),
(337, 120, 'ElggMetadata', 'metadata', 'wire_thread', 'create', 39, 39, 2, 'yes', 1410816221, '127.0.0.1'),
(338, 121, 'ElggMetadata', 'metadata', 'briefdescription', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(339, 122, 'ElggMetadata', 'metadata', 'file_enable', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(340, 123, 'ElggMetadata', 'metadata', 'activity_enable', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(341, 124, 'ElggMetadata', 'metadata', 'forum_enable', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(342, 125, 'ElggMetadata', 'metadata', 'pages_enable', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(343, 126, 'ElggMetadata', 'metadata', 'membership', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(344, 127, 'ElggMetadata', 'metadata', 'group_acl', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(345, 58, 'ElggGroup', 'group', '', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(346, 58, 'ElggGroup', 'group', '', 'update', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(347, 36, 'ElggRelationship', 'relationship', 'member', 'create', 39, 0, 2, 'yes', 1410816446, '127.0.0.1'),
(348, 128, 'ElggMetadata', 'metadata', 'icontime', 'create', 39, 39, 2, 'yes', 1410816446, '127.0.0.1'),
(349, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410816469, '127.0.0.1'),
(350, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410816469, '127.0.0.1'),
(351, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410816494, '127.0.0.1'),
(352, 52, 'ElggUser', 'user', '', 'login', 52, 0, 2, 'yes', 1410816494, '127.0.0.1'),
(353, 37, 'ElggRelationship', 'relationship', 'member', 'create', 52, 0, 2, 'yes', 1410816525, '127.0.0.1'),
(354, 58, 'ElggGroup', 'group', '', 'annotate', 52, 39, 2, 'yes', 1410816562, '127.0.0.1'),
(355, 9, 'ElggAnnotation', 'annotation', 'likes', 'create', 52, 52, 2, 'yes', 1410816562, '127.0.0.1'),
(356, 52, 'ElggUser', 'user', '', 'logout', 52, 0, 2, 'yes', 1410816590, '127.0.0.1'),
(357, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410816590, '127.0.0.1'),
(358, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410816600, '127.0.0.1'),
(359, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410816600, '127.0.0.1'),
(360, 38, 'ElggRelationship', 'relationship', 'member', 'create', 33, 0, 2, 'yes', 1410816619, '127.0.0.1'),
(361, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410817324, '127.0.0.1'),
(362, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817324, '127.0.0.1'),
(363, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817368, '127.0.0.1'),
(364, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410817368, '127.0.0.1'),
(365, 39, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 33, 0, 2, 'yes', 1410817565, '127.0.0.1'),
(366, 59, 'ElggUser', 'user', '', 'create', 33, 0, 2, 'yes', 1410817565, '127.0.0.1'),
(367, 129, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 33, 59, 2, 'yes', 1410817565, '127.0.0.1'),
(368, 59, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817565, '127.0.0.1'),
(369, 130, 'ElggMetadata', 'metadata', 'admin_created', 'create', 33, 59, 2, 'yes', 1410817565, '127.0.0.1'),
(370, 131, 'ElggMetadata', 'metadata', 'created_by_guid', 'create', 33, 59, 2, 'yes', 1410817565, '127.0.0.1'),
(371, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410817570, '127.0.0.1'),
(372, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817570, '127.0.0.1'),
(373, 59, 'ElggUser', 'user', '', 'update', 59, 0, 2, 'yes', 1410817592, '127.0.0.1'),
(374, 59, 'ElggUser', 'user', '', 'login', 59, 0, 2, 'yes', 1410817592, '127.0.0.1'),
(375, 132, 'ElggMetadata', 'metadata', 'x1', 'create', 59, 59, 2, 'yes', 1410817618, '127.0.0.1'),
(376, 133, 'ElggMetadata', 'metadata', 'x2', 'create', 59, 59, 2, 'yes', 1410817618, '127.0.0.1'),
(377, 134, 'ElggMetadata', 'metadata', 'y1', 'create', 59, 59, 2, 'yes', 1410817618, '127.0.0.1'),
(378, 135, 'ElggMetadata', 'metadata', 'y2', 'create', 59, 59, 2, 'yes', 1410817618, '127.0.0.1'),
(379, 136, 'ElggMetadata', 'metadata', 'icontime', 'create', 59, 59, 2, 'yes', 1410817618, '127.0.0.1'),
(380, 59, 'ElggUser', 'user', '', 'profileiconupdate', 59, 0, 2, 'yes', 1410817618, '127.0.0.1'),
(381, 136, 'ElggMetadata', 'metadata', 'icontime', 'delete', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(382, 137, 'ElggMetadata', 'metadata', 'icontime', 'create', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(383, 132, 'ElggMetadata', 'metadata', 'x1', 'delete', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(384, 138, 'ElggMetadata', 'metadata', 'x1', 'create', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(385, 133, 'ElggMetadata', 'metadata', 'x2', 'delete', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(386, 139, 'ElggMetadata', 'metadata', 'x2', 'create', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(387, 134, 'ElggMetadata', 'metadata', 'y1', 'delete', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(388, 140, 'ElggMetadata', 'metadata', 'y1', 'create', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(389, 135, 'ElggMetadata', 'metadata', 'y2', 'delete', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(390, 141, 'ElggMetadata', 'metadata', 'y2', 'create', 59, 59, 2, 'yes', 1410817623, '127.0.0.1'),
(391, 142, 'ElggMetadata', 'metadata', 'method', 'create', 59, 59, 2, 'yes', 1410817693, '127.0.0.1'),
(392, 60, 'ElggWire', 'object', 'thewire', 'create', 59, 59, 2, 'yes', 1410817693, '127.0.0.1'),
(393, 143, 'ElggMetadata', 'metadata', 'wire_thread', 'create', 59, 59, 2, 'yes', 1410817693, '127.0.0.1'),
(394, 40, 'ElggRelationship', 'relationship', 'membership_request', 'create', 59, 0, 2, 'yes', 1410817717, '127.0.0.1'),
(395, 59, 'ElggUser', 'user', '', 'logout', 59, 0, 2, 'yes', 1410817733, '127.0.0.1'),
(396, 59, 'ElggUser', 'user', '', 'update', 59, 0, 2, 'yes', 1410817733, '127.0.0.1'),
(397, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817747, '127.0.0.1'),
(398, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410817747, '127.0.0.1'),
(399, 41, 'ElggRelationship', 'relationship', 'friend', 'create', 33, 0, 2, 'yes', 1410817801, '127.0.0.1'),
(400, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410817866, '127.0.0.1'),
(401, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410817866, '127.0.0.1'),
(402, 42, 'ElggRelationship', 'relationship', 'member_of_site', 'create', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(403, 61, 'ElggUser', 'user', '', 'create', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(404, 144, 'ElggMetadata', 'metadata', 'notification:method:email', 'create', 0, 61, 2, 'yes', 1410818338, '127.0.0.1'),
(405, 61, 'ElggUser', 'user', '', 'disable', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(406, 145, 'ElggMetadata', 'metadata', 'disable_reason', 'create', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(407, 144, 'ElggMetadata', 'metadata', 'notification:method:email', 'disable', 0, 61, 2, 'yes', 1410818338, '127.0.0.1'),
(408, 145, 'ElggMetadata', 'metadata', 'disable_reason', 'disable', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(409, 146, 'ElggMetadata', 'metadata', 'validated', 'create', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(410, 147, 'ElggMetadata', 'metadata', 'validated_method', 'create', 0, 0, 2, 'yes', 1410818338, '127.0.0.1'),
(411, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410821362, '127.0.0.1'),
(412, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410821362, '127.0.0.1'),
(413, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410821607, '127.0.0.1'),
(414, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410821607, '127.0.0.1'),
(415, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410896253, '127.0.0.1'),
(416, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410896253, '127.0.0.1'),
(417, 62, 'ElggPlugin', 'object', 'plugin', 'create', 33, 1, 2, 'yes', 1410896257, '127.0.0.1'),
(418, 43, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 33, 0, 2, 'yes', 1410896301, '127.0.0.1'),
(419, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410896989, '127.0.0.1'),
(420, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410896989, '127.0.0.1'),
(421, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410897036, '127.0.0.1'),
(422, 39, 'ElggUser', 'user', '', 'login', 39, 0, 2, 'yes', 1410897036, '127.0.0.1'),
(423, 39, 'ElggUser', 'user', '', 'logout', 39, 0, 2, 'yes', 1410897049, '127.0.0.1'),
(424, 39, 'ElggUser', 'user', '', 'update', 39, 0, 2, 'yes', 1410897049, '127.0.0.1'),
(425, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410897228, '127.0.0.1'),
(426, 52, 'ElggUser', 'user', '', 'login', 52, 0, 2, 'yes', 1410897228, '127.0.0.1'),
(427, 63, 'ElggObject', 'object', 'customstylebackground', 'create', 52, 52, 2, 'yes', 1410897253, '127.0.0.1'),
(428, 148, 'ElggMetadata', 'metadata', 'background-image', 'create', 52, 52, 2, 'yes', 1410897253, '127.0.0.1'),
(429, 148, 'ElggMetadata', 'metadata', 'background-image', 'update', 52, 52, 2, 'yes', 1410897306, '127.0.0.1'),
(430, 52, 'ElggUser', 'user', '', 'logout', 52, 0, 2, 'yes', 1410897380, '127.0.0.1'),
(431, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410897380, '127.0.0.1'),
(432, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410897527, '127.0.0.1'),
(433, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410897527, '127.0.0.1'),
(434, 43, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 33, 0, 2, 'yes', 1410898390, '127.0.0.1'),
(435, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410898548, '127.0.0.1'),
(436, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410898548, '127.0.0.1'),
(437, 44, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 33, 0, 2, 'yes', 1410898557, '127.0.0.1'),
(438, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410898782, '127.0.0.1'),
(439, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410898782, '127.0.0.1'),
(440, 44, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 33, 0, 2, 'yes', 1410898789, '127.0.0.1'),
(441, 45, 'ElggRelationship', 'relationship', 'active_plugin', 'create', 33, 0, 2, 'yes', 1410898850, '127.0.0.1'),
(442, 45, 'ElggRelationship', 'relationship', 'active_plugin', 'delete', 33, 0, 2, 'yes', 1410898868, '127.0.0.1'),
(443, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410899210, '127.0.0.1'),
(444, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410899210, '127.0.0.1'),
(445, 83, 'ElggMetadata', 'metadata', 'readYet', 'delete', 33, 33, 0, 'yes', 1410899709, '127.0.0.1'),
(446, 149, 'ElggMetadata', 'metadata', 'readYet', 'create', 33, 33, 0, 'yes', 1410899709, '127.0.0.1'),
(447, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410899791, '127.0.0.1'),
(448, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410899791, '127.0.0.1'),
(449, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410937451, '127.0.0.1'),
(450, 33, 'ElggUser', 'user', '', 'login', 33, 0, 2, 'yes', 1410937451, '127.0.0.1'),
(451, 33, 'ElggUser', 'user', '', 'logout', 33, 0, 2, 'yes', 1410937488, '127.0.0.1'),
(452, 33, 'ElggUser', 'user', '', 'update', 33, 0, 2, 'yes', 1410937488, '127.0.0.1'),
(453, 52, 'ElggUser', 'user', '', 'update', 52, 0, 2, 'yes', 1410937622, '127.0.0.1'),
(454, 52, 'ElggUser', 'user', '', 'login', 52, 0, 2, 'yes', 1410937622, '127.0.0.1');

-- --------------------------------------------------------

--
-- Table structure for table `elgg_users_apisessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_apisessions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_guid` bigint(20) unsigned NOT NULL,
  `site_guid` bigint(20) unsigned NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `expires` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_guid` (`user_guid`,`site_guid`),
  KEY `token` (`token`)
) ENGINE=MEMORY DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `elgg_users_entity`
--

CREATE TABLE IF NOT EXISTS `elgg_users_entity` (
  `guid` bigint(20) unsigned NOT NULL,
  `name` text NOT NULL,
  `username` varchar(128) NOT NULL DEFAULT '',
  `password` varchar(32) NOT NULL DEFAULT '',
  `salt` varchar(8) NOT NULL DEFAULT '',
  `email` text NOT NULL,
  `language` varchar(6) NOT NULL DEFAULT '',
  `code` varchar(32) NOT NULL DEFAULT '',
  `banned` enum('yes','no') NOT NULL DEFAULT 'no',
  `admin` enum('yes','no') NOT NULL DEFAULT 'no',
  `last_action` int(11) NOT NULL DEFAULT '0',
  `prev_last_action` int(11) NOT NULL DEFAULT '0',
  `last_login` int(11) NOT NULL DEFAULT '0',
  `prev_last_login` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`guid`),
  UNIQUE KEY `username` (`username`),
  KEY `password` (`password`),
  KEY `email` (`email`(50)),
  KEY `code` (`code`),
  KEY `last_action` (`last_action`),
  KEY `last_login` (`last_login`),
  KEY `admin` (`admin`),
  FULLTEXT KEY `name` (`name`),
  FULLTEXT KEY `name_2` (`name`,`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_users_entity`
--

INSERT INTO `elgg_users_entity` (`guid`, `name`, `username`, `password`, `salt`, `email`, `language`, `code`, `banned`, `admin`, `last_action`, `prev_last_action`, `last_login`, `prev_last_login`) VALUES
(33, 'kaveke', 'kaveke', 'f765eb8125088e34bce381df6ce6e6f0', 'iQw_XRXy', 'ruthkaveke@gmail.com', 'en', '', 'no', 'yes', 1410937488, 1410937483, 1410937451, 1410899210),
(39, 'aisha', 'aisha', '9d5f3accabbbbeab41b8d5c88b0ce8f1', 'mlemHYuU', 'ashuna112@gmail.com', 'en', '', 'no', 'no', 1410897049, 1410897036, 1410897036, 1410816067),
(52, 'mwas', 'mwas', 'af2eaa3e5541421ed0175475e5db6580', 'NIhIFyps', 'joelmwas@gmail.com', 'en', '', 'no', 'no', 1410937721, 1410937622, 1410937622, 1410897228),
(59, 'Britone', 'britone', 'ba2fefa11fd98649f9701732c394df78', 'rQJzS6je', 'bwasaru@gmail.com', 'en', '', 'no', 'no', 1410817733, 1410817724, 1410817592, 0),
(61, 'Diana', 'diana', '40e1346d70b59267fff6cf0063410f57', 'SI3gNJ87', 'diana@gmail.com', 'en', '', 'no', 'no', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `elgg_users_sessions`
--

CREATE TABLE IF NOT EXISTS `elgg_users_sessions` (
  `session` varchar(255) NOT NULL,
  `ts` int(11) unsigned NOT NULL DEFAULT '0',
  `data` mediumblob,
  PRIMARY KEY (`session`),
  KEY `ts` (`ts`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `elgg_users_sessions`
--

INSERT INTO `elgg_users_sessions` (`session`, `ts`, `data`) VALUES
('lmp2tuhma416ifp55n83c073a5', 1409068830, 0x5f5f656c67675f73657373696f6e7c733a33323a223135373732393636633536633565316238323835306531386339393863343632223b757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33333b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303536393436223b733a31323a2274696d655f75706461746564223b733a31303a2231343039303536393436223b733a31313a226c6173745f616374696f6e223b733a31303a2231343039303638373932223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a363a226b6176656b65223b733a383a22757365726e616d65223b733a363a226b6176656b65223b733a383a2270617373776f7264223b733a33323a226637363565623831323530383865333462636533383164663663653665366630223b733a343a2273616c74223b733a383a226951775f58525879223b733a353a22656d61696c223b733a32303a22727574686b6176656b6540676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343039303638373932223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343039303536393436223b733a31353a22707265765f6c6173745f6c6f67696e223b733a313a2230223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33333b69647c693a33333b757365726e616d657c733a363a226b6176656b65223b6e616d657c733a363a226b6176656b65223b6d73677c613a303a7b7d737469636b795f666f726d737c613a303a7b7d),
('uc2fkb3rji9b65f0ce1adjqf45', 1409126663, 0x5f5f656c67675f73657373696f6e7c733a33323a223964666233306463363263656630373533393932366664333462323065356433223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a33383a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f706c7567696e73223b),
('ul2k9246r1csqkedatssaa5bk4', 1409129825, 0x5f5f656c67675f73657373696f6e7c733a33323a223564393033346531643663306432653837643664303830326465316362666262223b6d73677c613a303a7b7d),
('olmvvqt19hkn7a7qnpbja6a0t6', 1409136930, 0x5f5f656c67675f73657373696f6e7c733a33323a223564393033346531643663306432653837643664303830326465316362666262223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33393b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303537333430223b733a31323a2274696d655f75706461746564223b733a31303a2231343039313239383632223b733a31313a226c6173745f616374696f6e223b733a31303a2231343039313336393330223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a353a226169736861223b733a383a22757365726e616d65223b733a353a226169736861223b733a383a2270617373776f7264223b733a33323a223964356633616363616262626265616234316238643563383862306365386631223b733a343a2273616c74223b733a383a226d6c656d48597555223b733a353a22656d61696c223b733a31393a22617368756e6131313240676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a323a226e6f223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343039313336393237223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343039313239383632223b733a31353a22707265765f6c6173745f6c6f67696e223b733a313a2230223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33393b69647c693a33393b757365726e616d657c733a353a226169736861223b6e616d657c733a353a226169736861223b737469636b795f666f726d737c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a33383a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f706c7567696e73223b),
('6hfbvgf39gdm356o118dsf0pq7', 1409137613, 0x5f5f656c67675f73657373696f6e7c733a33323a223638333538383032333031323563333863383334363433383335363033623664223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a34323a22687474703a2f2f6c6f63616c686f73742f74756d636861742f6176617461722f656469742f6169736861223b),
('2ic7000icn3d50dhlsroumv6l0', 1409138782, 0x5f5f656c67675f73657373696f6e7c733a33323a226364386166373638663730643134333831313632653538356339363238613836223b6d73677c613a303a7b7d),
('p77i7ctnf7rcqcpun6c20va7g3', 1409140566, 0x5f5f656c67675f73657373696f6e7c733a33323a226662386166393262666566623162373632313635343663623334386330613432223b6d73677c613a303a7b7d),
('9d0g2vq9kvmkpv3pg7fr3h1055', 1409150350, 0x5f5f656c67675f73657373696f6e7c733a33323a223661643237373238643830633365656331323965646164636238333739313762223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33333b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303536393436223b733a31323a2274696d655f75706461746564223b733a31303a2231343039313431383030223b733a31313a226c6173745f616374696f6e223b733a31303a2231343039313530303530223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a363a226b6176656b65223b733a383a22757365726e616d65223b733a363a226b6176656b65223b733a383a2270617373776f7264223b733a33323a226637363565623831323530383865333462636533383164663663653665366630223b733a343a2273616c74223b733a383a226951775f58525879223b733a353a22656d61696c223b733a32303a22727574686b6176656b6540676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343039313439373530223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343039313431383030223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231343039313430363330223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33333b69647c693a33333b757365726e616d657c733a363a226b6176656b65223b6e616d657c733a363a226b6176656b65223b),
('8g1auth8937p99k0mft1h6hp56', 1409140320, 0x5f5f656c67675f73657373696f6e7c733a33323a226231393838323031376663326336366563626332353162376337353030383163223b6d73677c613a303a7b7d),
('dmokitvmhsvdm3edpmbdehuf67', 1409140613, 0x5f5f656c67675f73657373696f6e7c733a33323a223237373762323336396366333563333730656264626336373435383839316532223b6d73677c613a303a7b7d),
('ev2fbca829mt6018mvfg0fuc40', 1409141774, 0x5f5f656c67675f73657373696f6e7c733a33323a223661643237373238643830633365656331323965646164636238333739313762223b6d73677c613a303a7b7d),
('p7lnmm3763fkegaf8ksmaapnb2', 1409261022, 0x5f5f656c67675f73657373696f6e7c733a33323a223533333138326538316661663136363264333438346665343663313631333666223b6d73677c613a303a7b7d),
('qpff8qut4ltdhioi0ccr22sb53', 1409261023, 0x5f5f656c67675f73657373696f6e7c733a33323a226439323636613266636163386665643934333039623835623164383831363264223b),
('v1jvversg6knqlagj7g9d8fnb2', 1410531185, 0x5f5f656c67675f73657373696f6e7c733a33323a226634633337666664616163393338393366646536363337313862643639653630223b6d73677c613a303a7b7d),
('6qgqe4ccqqctmoijc7v6ds3nc1', 1410779157, 0x5f5f656c67675f73657373696f6e7c733a33323a223961643934303461653633653664626564666164656433323436643364343431223b6d73677c613a303a7b7d),
('e8nlj5jg4aebf7n1s1rhr39ce6', 1410779180, 0x5f5f656c67675f73657373696f6e7c733a33323a226538306664656164346662353635626633373833663061636232393130613530223b6d73677c613a303a7b7d),
('h8opid78rd0ha1afnj9oqps022', 1410811901, 0x5f5f656c67675f73657373696f6e7c733a33323a223733343263663365386363363162346262306564396333616134393831333736223b6d73677c613a303a7b7d),
('dv9qi88c1fia18dslqv4iorrg4', 1410811948, 0x5f5f656c67675f73657373696f6e7c733a33323a226562646464393439613431306431626561323330633066343061613335393762223b6d73677c613a303a7b7d),
('nqghpgdtnbq0vibqbufmoumtu1', 1410898771, 0x5f5f656c67675f73657373696f6e7c733a33323a223436396434623737343764656262383130363739356136666665653332326438223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a33383a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f706c7567696e73223b),
('3oj3h2h0aastftav7teepapss7', 1410899172, 0x5f5f656c67675f73657373696f6e7c733a33323a223436396434623737343764656262383130363739356136666665653332326438223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33333b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303536393436223b733a31323a2274696d655f75706461746564223b733a31303a2231343130383938373832223b733a31313a226c6173745f616374696f6e223b733a31303a2231343130383939313731223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a363a226b6176656b65223b733a383a22757365726e616d65223b733a363a226b6176656b65223b733a383a2270617373776f7264223b733a33323a226637363565623831323530383865333462636533383164663663653665366630223b733a343a2273616c74223b733a383a226951775f58525879223b733a353a22656d61696c223b733a32303a22727574686b6176656b6540676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343130383939313730223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343130383938373832223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231343130383938353438223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33333b69647c693a33333b757365726e616d657c733a363a226b6176656b65223b6e616d657c733a363a226b6176656b65223b),
('u5tmqolomo9d256i0s13p0eeb2', 1410813574, 0x5f5f656c67675f73657373696f6e7c733a33323a223430393833633439303739653238393235383662323533363132656665363039223b6d73677c613a303a7b7d),
('4eh9pacm92e911maveb9b9b6h6', 1410898751, 0x5f5f656c67675f73657373696f6e7c733a33323a223662326231646532636235373930373133323938656261383838333866353730223b6d73677c613a303a7b7d),
('jchhf7pnm75k3cj5ia9cq45n27', 1410813629, 0x5f5f656c67675f73657373696f6e7c733a33323a223336376639623531626233336131333636356639316134346565643162336332223b6d73677c613a303a7b7d),
('ugr7v9fifkijbfjp2u5q593ve2', 1410813739, 0x5f5f656c67675f73657373696f6e7c733a33323a223131333835383438353734646238336463316438396235383866316330666165223b6d73677c613a303a7b7d),
('59edre7dp3ckm0qqqls89nm910', 1410813813, 0x5f5f656c67675f73657373696f6e7c733a33323a223732393361383435663637356237383863313161343164623935663930623735223b6d73677c613a303a7b7d),
('jqq65rot95sm2m97n7d44an2j0', 1410813852, 0x5f5f656c67675f73657373696f6e7c733a33323a226663656630373537366631383338346338366262626537363766363632386330223b6d73677c613a303a7b7d),
('cv8v56qlbap3e6903p20laejs3', 1410814354, 0x5f5f656c67675f73657373696f6e7c733a33323a223132303633376336616430383264373862376661626366326338616533333830223b6d73677c613a303a7b7d),
('ff4gprt7ctl4jekc5j8f53er82', 1410814664, 0x5f5f656c67675f73657373696f6e7c733a33323a223537623464393333653138663666633035306232396335613561663839633764223b6d73677c613a303a7b7d),
('0l21jldbabjsa73edhnvlu5n90', 1410815309, 0x5f5f656c67675f73657373696f6e7c733a33323a226335323565306231386630303337396434646332663331636539373335626630223b6d73677c613a303a7b7d),
('8ikvh65ii2a9fp21burdrigo85', 1410815475, 0x5f5f656c67675f73657373696f6e7c733a33323a223139376634373466623161346135353866386663306664353061663037663732223b6d73677c613a303a7b7d),
('u3itcipf8vel19kdveqnlldc03', 1410815808, 0x5f5f656c67675f73657373696f6e7c733a33323a223735666434313138373966373235376462643132343935613339383835303763223b6d73677c613a303a7b7d),
('o6tfs4h2b4lnpa0h9ombfmsot2', 1410816043, 0x5f5f656c67675f73657373696f6e7c733a33323a223330616134306466333264633432333035386332643639663331623732353037223b6d73677c613a303a7b7d),
('o14s6ne0blg3o2keb93m3u2he1', 1410816469, 0x5f5f656c67675f73657373696f6e7c733a33323a223837376337643765393939306530626332623363313837666430613534653462223b6d73677c613a303a7b7d),
('jq1q6t2tei05mc5qq5ibdu0ht6', 1410816590, 0x5f5f656c67675f73657373696f6e7c733a33323a223939663632613231383237636234323164336633646430383639333261616530223b6d73677c613a303a7b7d),
('s8aeduk2jjbu0msap54g006ak6', 1410817324, 0x5f5f656c67675f73657373696f6e7c733a33323a226230306132393732653165363761346139376265663263663037313531643633223b6d73677c613a303a7b7d),
('5v4c1ff5adrftl5bdo91bdevp2', 1410817575, 0x5f5f656c67675f73657373696f6e7c733a33323a223035653034386238396635393633343665663563396330646336323335623964223b6d73677c613a303a7b7d),
('gm45rfrfjpvd30eeaqjr06upp6', 1410817733, 0x5f5f656c67675f73657373696f6e7c733a33323a226637376533623539343365333935346230303738643132313131356264613432223b6d73677c613a303a7b7d),
('b6mm2shkj1rq3818tp2rmb4o44', 1410821305, 0x5f5f656c67675f73657373696f6e7c733a33323a223236646630323538323266323933653533376436353732383062653537373938223b6d73677c613a303a7b7d737469636b795f666f726d737c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a33383a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f706c7567696e73223b),
('u73ca0jgnd3bn40nh8ljok0kf2', 1410896246, 0x5f5f656c67675f73657373696f6e7c733a33323a226236376232333763373362353263303734663263613866623761383662623634223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a35303a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f737461746973746963732f6f76657276696577223b),
('gd6v52d8j7schat2uqpb8jdl86', 1410896989, 0x5f5f656c67675f73657373696f6e7c733a33323a223362373230666230353966613235373933383264663437353561653265373134223b6d73677c613a303a7b7d),
('8fjpobqo5vvt96lnv2uob7vqf7', 1410897224, 0x5f5f656c67675f73657373696f6e7c733a33323a223063383338373632383137323061333532366230313061393262663963336364223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a34373a22687474703a2f2f6c6f63616c686f73742f74756d636861742f637573746f6d7374796c652f6261636b67726f756e64223b),
('eeg9oqpjao1n5sudbvjtm7jbc3', 1410897502, 0x5f5f656c67675f73657373696f6e7c733a33323a226166613566666531653063663766653230383839653530313937373462356561223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a34373a22687474703a2f2f6c6f63616c686f73742f74756d636861742f637573746f6d7374796c652f6261636b67726f756e64223b),
('p4ni3dut8avt7v87ojtg5hmbf1', 1410898492, 0x5f5f656c67675f73657373696f6e7c733a33323a226166613566666531653063663766653230383839653530313937373462356561223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33333b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303536393436223b733a31323a2274696d655f75706461746564223b733a31303a2231343130383937353237223b733a31313a226c6173745f616374696f6e223b733a31303a2231343130383938343931223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a363a226b6176656b65223b733a383a22757365726e616d65223b733a363a226b6176656b65223b733a383a2270617373776f7264223b733a33323a226637363565623831323530383865333462636533383164663663653665366630223b733a343a2273616c74223b733a383a226951775f58525879223b733a353a22656d61696c223b733a32303a22727574686b6176656b6540676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343130383938343930223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343130383937353237223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231343130383936323533223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33333b69647c693a33333b757365726e616d657c733a363a226b6176656b65223b6e616d657c733a363a226b6176656b65223b),
('ou7aq3ocis5st99sd89j3its85', 1410898541, 0x5f5f656c67675f73657373696f6e7c733a33323a223933323465303961623332643034373735646331323261313038643263663431223b6d73677c613a303a7b7d6c6173745f666f72776172645f66726f6d7c733a33383a22687474703a2f2f6c6f63616c686f73742f74756d636861742f61646d696e2f706c7567696e73223b),
('8crnd7788jhc6m9shg5anf75b3', 1410898618, 0x5f5f656c67675f73657373696f6e7c733a33323a223933323465303961623332643034373735646331323261313038643263663431223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a33333b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343039303536393436223b733a31323a2274696d655f75706461746564223b733a31303a2231343130383938353438223b733a31313a226c6173745f616374696f6e223b733a31303a2231343130383938363138223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a363a226b6176656b65223b733a383a22757365726e616d65223b733a363a226b6176656b65223b733a383a2270617373776f7264223b733a33323a226637363565623831323530383865333462636533383164663663653665366630223b733a343a2273616c74223b733a383a226951775f58525879223b733a353a22656d61696c223b733a32303a22727574686b6176656b6540676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a333a22796573223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343130383938363137223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343130383938353438223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231343130383937353237223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a33333b69647c693a33333b757365726e616d657c733a363a226b6176656b65223b6e616d657c733a363a226b6176656b65223b),
('711t5bmb9m0lur15q652ao7843', 1410899198, 0x5f5f656c67675f73657373696f6e7c733a33323a223938373733333937336264316463386662623061626663366266336333313838223b6d73677c613a303a7b7d),
('7cig7qhbpm4n8mdt15nov8qqd2', 1410937422, 0x5f5f656c67675f73657373696f6e7c733a33323a226365333030323735393639646330613937376533356562346331393262653630223b6d73677c613a303a7b7d),
('8v5ia5dd2r58gfqcvceg20qtv3', 1410937591, 0x5f5f656c67675f73657373696f6e7c733a33323a223964396631356566343964633066383236326661323662343062323439313138223b6d73677c613a303a7b7d),
('vj5u3q5811h6nuihp0oe2p2hr1', 1410937721, 0x5f5f656c67675f73657373696f6e7c733a33323a223964396631356566343964633066383236326661323662343062323439313138223b6d73677c613a303a7b7d757365727c4f3a383a22456c676755736572223a383a7b733a31353a22002a0075726c5f6f76657272696465223b4e3b733a31363a22002a0069636f6e5f6f76657272696465223b4e3b733a31363a22002a0074656d705f6d65746164617461223b613a303a7b7d733a31393a22002a0074656d705f616e6e6f746174696f6e73223b613a303a7b7d733a32343a22002a0074656d705f707269766174655f73657474696e6773223b613a303a7b7d733a31313a22002a00766f6c6174696c65223b613a303a7b7d733a31333a22002a0061747472696275746573223b613a32353a7b733a343a2267756964223b693a35323b733a343a2274797065223b733a343a2275736572223b733a373a2273756274797065223b733a313a2230223b733a31303a226f776e65725f67756964223b733a313a2230223b733a393a22736974655f67756964223b733a313a2231223b733a31343a22636f6e7461696e65725f67756964223b733a313a2230223b733a393a226163636573735f6964223b733a313a2232223b733a31323a2274696d655f63726561746564223b733a31303a2231343130383135313433223b733a31323a2274696d655f75706461746564223b733a31303a2231343130393337363232223b733a31313a226c6173745f616374696f6e223b733a31303a2231343130393337363232223b733a373a22656e61626c6564223b733a333a22796573223b733a31323a227461626c65735f73706c6974223b693a323b733a31333a227461626c65735f6c6f61646564223b693a323b733a343a226e616d65223b733a343a226d776173223b733a383a22757365726e616d65223b733a343a226d776173223b733a383a2270617373776f7264223b733a33323a226166326561613365353534313432316564303137353437356535646236353830223b733a343a2273616c74223b733a383a224e49684946797073223b733a353a22656d61696c223b733a31383a226a6f656c6d77617340676d61696c2e636f6d223b733a383a226c616e6775616765223b733a323a22656e223b733a343a22636f6465223b733a303a22223b733a363a2262616e6e6564223b733a323a226e6f223b733a353a2261646d696e223b733a323a226e6f223b733a31363a22707265765f6c6173745f616374696f6e223b733a31303a2231343130393337363232223b733a31303a226c6173745f6c6f67696e223b733a31303a2231343130393337363232223b733a31353a22707265765f6c6173745f6c6f67696e223b733a31303a2231343130383937323238223b7d733a383a22002a0076616c6964223b623a303b7d677569647c693a35323b69647c693a35323b757365726e616d657c733a343a226d776173223b6e616d657c733a343a226d776173223b);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
