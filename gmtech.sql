-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 07, 2012 at 07:56 PM
-- Server version: 5.5.9
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `gmtech`
--

-- --------------------------------------------------------

--
-- Table structure for table `jos_advancedmodules`
--

DROP TABLE IF EXISTS `jos_advancedmodules`;
CREATE TABLE IF NOT EXISTS `jos_advancedmodules` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`moduleid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_advancedmodules`
--

INSERT INTO `jos_advancedmodules` VALUES(16, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=19\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=1\nassignto_k2cats_inc=inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_components_selection=com_rsform\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(17, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(18, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(22, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(23, 'assignto_menuitems=1\nassignto_menuitems_selection=1');
INSERT INTO `jos_advancedmodules` VALUES(24, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(34, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(35, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(37, 'assignto_menuitems=1\nassignto_menuitems_selection=1');
INSERT INTO `jos_advancedmodules` VALUES(38, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(39, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=1\nassignto_menuitems=2\nassignto_menuitems_selection=1|2|3\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_selection=23\nassignto_k2cats_inc_children=1\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(41, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(54, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(27, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(40, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=1\nmirror_moduleid=39\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=2\nassignto_menuitems_selection=1|2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(20, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=1\nmirror_moduleid=39\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=2\nassignto_menuitems_selection=1|2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(62, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(64, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(66, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(65, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(67, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(68, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(69, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(70, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(71, 'assignto_menuitems=0\nassignto_menuitems_selection=0');
INSERT INTO `jos_advancedmodules` VALUES(32, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(74, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=3\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(75, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(76, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(78, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(79, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=1\nassignto_components_selection=com_k2\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(80, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(81, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(82, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(83, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=1\nassignto_components_selection=com_k2\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(84, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=1\nassignto_menuitems_selection=1|2|15|14|11|12|13|3\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=19\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8|9|10|11|23|17|18|19\nassignto_k2cats_inc_children=1\nassignto_k2cats_inc=inc_cats|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_components_selection=com_rsform\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(85, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=2\nassignto_menuitems_selection=1|2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=1\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(86, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=2\nassignto_menuitems_selection=1|2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(87, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=2\nassignto_menuitems_selection=1|2\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=1\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(52, '');
INSERT INTO `jos_advancedmodules` VALUES(88, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_selection=2|15|14|11|12|13|3\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=2\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=19\nassignto_articles_keywords=\nassignto_k2cats=2\nassignto_k2cats_selection=1|2|3|4|5|6|7|8\nassignto_k2cats_inc_children=1\nassignto_k2cats_inc=inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_components_selection=com_rsform\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');
INSERT INTO `jos_advancedmodules` VALUES(89, 'hideempty=0\ntooltip=\ncolor=FFFFFF\nmirror_module=0\nmirror_moduleid=16\nmatch_method=and\nshow_ignores=2\nassignto_menuitems=0\nassignto_menuitems_inc_children=0\nassignto_menuitems_inc_noitemid=0\nassignto_homepage=0\nassignto_secscats=0\nassignto_secscats_inc=inc_secs|inc_cats|inc_arts|x\nassignto_articles=0\nassignto_articles_selection=\nassignto_articles_keywords=\nassignto_k2cats=0\nassignto_k2cats_inc_children=0\nassignto_k2cats_inc=inc_cats|inc_items|x\nassignto_k2tags=0\nassignto_k2tags_selection=\nassignto_k2tags_inc=inc_tags|inc_items|x\nassignto_k2items=0\nassignto_k2items_selection=\nassignto_components=0\nassignto_urls=0\nshow_url_field_sef=0\nassignto_urls_selection_sef=\nshow_url_field=0\nassignto_urls_selection=\nassignto_browsers=0\nassignto_date=0\nassignto_date_publish_up=0000-00-00 00:00\nassignto_date_publish_down=0000-00-00 00:00\nassignto_seasons=0\nassignto_seasons_selection=x\nassignto_seasons_hemisphere=northern\nassignto_months=0\nassignto_months_selection=x\nassignto_days=0\nassignto_days_selection=x\nassignto_time=0\nassignto_time_publish_up=0:00\nassignto_time_publish_down=0:00\nassignto_usergrouplevels=0\nassignto_usergrouplevels_selection=0\nassignto_users=0\nassignto_users_selection=\nassignto_languages=0\nassignto_templates=0\nassignto_php=0\nassignto_php_selection=\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_banner`
--

DROP TABLE IF EXISTS `jos_banner`;
CREATE TABLE IF NOT EXISTS `jos_banner` (
  `bid` int(11) NOT NULL AUTO_INCREMENT,
  `cid` int(11) NOT NULL DEFAULT '0',
  `type` varchar(30) NOT NULL DEFAULT 'banner',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `imptotal` int(11) NOT NULL DEFAULT '0',
  `impmade` int(11) NOT NULL DEFAULT '0',
  `clicks` int(11) NOT NULL DEFAULT '0',
  `imageurl` varchar(100) NOT NULL DEFAULT '',
  `clickurl` varchar(200) NOT NULL DEFAULT '',
  `date` datetime DEFAULT NULL,
  `showBanner` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `custombannercode` text,
  `catid` int(10) unsigned NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `sticky` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `tags` text NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`bid`),
  KEY `viewbanner` (`showBanner`),
  KEY `idx_banner_catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_banner`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_bannerclient`
--

DROP TABLE IF EXISTS `jos_bannerclient`;
CREATE TABLE IF NOT EXISTS `jos_bannerclient` (
  `cid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `contact` varchar(255) NOT NULL DEFAULT '',
  `email` varchar(255) NOT NULL DEFAULT '',
  `extrainfo` text NOT NULL,
  `checked_out` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out_time` time DEFAULT NULL,
  `editor` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_bannerclient`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_bannertrack`
--

DROP TABLE IF EXISTS `jos_bannertrack`;
CREATE TABLE IF NOT EXISTS `jos_bannertrack` (
  `track_date` date NOT NULL,
  `track_type` int(10) unsigned NOT NULL,
  `banner_id` int(10) unsigned NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_bannertrack`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_categories`
--

DROP TABLE IF EXISTS `jos_categories`;
CREATE TABLE IF NOT EXISTS `jos_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` varchar(255) NOT NULL DEFAULT '',
  `section` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `editor` varchar(50) DEFAULT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `cat_idx` (`section`,`published`,`access`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `jos_categories`
--

INSERT INTO `jos_categories` VALUES(1, 0, 'Tin tức 1', '', 'tin-tc-1', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES(2, 0, 'Laptop', '', 'laptop', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES(3, 0, 'lienhe', '', 'lienhe', '', 'com_contact_details', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES(4, 0, 'All In One', '', 'all-in-one', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');
INSERT INTO `jos_categories` VALUES(5, 0, ' Tablet Devices', '', '-tablet-devices', '', '2', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 4, 0, 0, '');
INSERT INTO `jos_categories` VALUES(6, 0, 'Tin tức 2', 'Copy of ', 'tin-tc-2', '', '3', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES(7, 0, 'Đại lý', '', 'i-ly', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 1, 0, 0, '');
INSERT INTO `jos_categories` VALUES(8, 0, 'Hỗ trợ và Driver', '', 'h-tr-va-driver', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 2, 0, 0, '');
INSERT INTO `jos_categories` VALUES(9, 0, 'gmtech', '', 'gmtech', '', '1', 'left', '', 1, 0, '0000-00-00 00:00:00', NULL, 3, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_components`
--

DROP TABLE IF EXISTS `jos_components`;
CREATE TABLE IF NOT EXISTS `jos_components` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL DEFAULT '',
  `link` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) unsigned NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `admin_menu_link` varchar(255) NOT NULL DEFAULT '',
  `admin_menu_alt` varchar(255) NOT NULL DEFAULT '',
  `option` varchar(50) NOT NULL DEFAULT '',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `admin_menu_img` varchar(255) NOT NULL DEFAULT '',
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `enabled` tinyint(4) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `parent_option` (`parent`,`option`(32))
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=104 ;

--
-- Dumping data for table `jos_components`
--

INSERT INTO `jos_components` VALUES(1, 'Banners', '', 0, 0, '', 'Banner Management', 'com_banners', 0, 'js/ThemeOffice/component.png', 0, 'track_impressions=0\ntrack_clicks=0\ntag_prefix=\n\n', 1);
INSERT INTO `jos_components` VALUES(2, 'Banners', '', 0, 1, 'option=com_banners', 'Active Banners', 'com_banners', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(3, 'Clients', '', 0, 1, 'option=com_banners&c=client', 'Manage Clients', 'com_banners', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(4, 'Web Links', 'option=com_weblinks', 0, 0, '', 'Manage Weblinks', 'com_weblinks', 0, 'js/ThemeOffice/component.png', 0, 'show_comp_description=1\ncomp_description=\nshow_link_hits=1\nshow_link_description=1\nshow_other_cats=1\nshow_headings=1\nshow_page_title=1\nlink_target=0\nlink_icons=\n\n', 1);
INSERT INTO `jos_components` VALUES(5, 'Links', '', 0, 4, 'option=com_weblinks', 'View existing weblinks', 'com_weblinks', 1, 'js/ThemeOffice/edit.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(6, 'Categories', '', 0, 4, 'option=com_categories&section=com_weblinks', 'Manage weblink categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(7, 'Contacts', 'option=com_contact', 0, 0, '', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/component.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES(8, 'Contacts', '', 0, 7, 'option=com_contact', 'Edit contact details', 'com_contact', 0, 'js/ThemeOffice/edit.png', 1, '', 1);
INSERT INTO `jos_components` VALUES(9, 'Categories', '', 0, 7, 'option=com_categories&section=com_contact_details', 'Manage contact categories', '', 2, 'js/ThemeOffice/categories.png', 1, 'contact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_fax=\nicon_misc=\nshow_headings=1\nshow_position=1\nshow_email=0\nshow_telephone=1\nshow_mobile=1\nshow_fax=1\nbannedEmail=\nbannedSubject=\nbannedText=\nsession=1\ncustomReply=0\n\n', 1);
INSERT INTO `jos_components` VALUES(10, 'Polls', 'option=com_poll', 0, 0, 'option=com_poll', 'Manage Polls', 'com_poll', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(11, 'News Feeds', 'option=com_newsfeeds', 0, 0, '', 'News Feeds Management', 'com_newsfeeds', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(12, 'Feeds', '', 0, 11, 'option=com_newsfeeds', 'Manage News Feeds', 'com_newsfeeds', 1, 'js/ThemeOffice/edit.png', 0, 'show_headings=1\nshow_name=1\nshow_articles=1\nshow_link=1\nshow_cat_description=1\nshow_cat_items=1\nshow_feed_image=1\nshow_feed_description=1\nshow_item_description=1\nfeed_word_count=0\n\n', 1);
INSERT INTO `jos_components` VALUES(13, 'Categories', '', 0, 11, 'option=com_categories&section=com_newsfeeds', 'Manage Categories', '', 2, 'js/ThemeOffice/categories.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(14, 'User', 'option=com_user', 0, 0, '', '', 'com_user', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(15, 'Search', 'option=com_search', 0, 0, 'option=com_search', 'Search Statistics', 'com_search', 0, 'js/ThemeOffice/component.png', 1, 'enabled=0\n\n', 1);
INSERT INTO `jos_components` VALUES(16, 'Categories', '', 0, 1, 'option=com_categories&section=com_banner', 'Categories', '', 3, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(17, 'Wrapper', 'option=com_wrapper', 0, 0, '', 'Wrapper', 'com_wrapper', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(18, 'Mail To', '', 0, 0, '', '', 'com_mailto', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(19, 'Media Manager', '', 0, 0, 'option=com_media', 'Media Manager', 'com_media', 0, '', 1, 'upload_extensions=bmp,csv,doc,epg,gif,ico,jpg,odg,odp,ods,odt,pdf,png,ppt,swf,txt,xcf,xls,BMP,CSV,DOC,EPG,GIF,ICO,JPG,ODG,ODP,ODS,ODT,PDF,PNG,PPT,SWF,TXT,XCF,XLS\nupload_maxsize=10000000\nfile_path=images\nimage_path=images/stories\nrestrict_uploads=1\nallowed_media_usergroup=3\ncheck_mime=1\nimage_extensions=bmp,gif,jpg,png\nignore_extensions=\nupload_mime=image/jpeg,image/gif,image/png,image/bmp,application/x-shockwave-flash,application/msword,application/excel,application/pdf,application/powerpoint,text/plain,application/x-zip\nupload_mime_illegal=text/html\nenable_flash=0\n\n', 1);
INSERT INTO `jos_components` VALUES(20, 'Articles', 'option=com_content', 0, 0, '', '', 'com_content', 0, '', 1, 'show_noauth=0\nshow_title=1\nlink_titles=0\nshow_intro=1\nshow_section=0\nlink_section=0\nshow_category=0\nlink_category=0\nshow_author=0\nshow_create_date=0\nshow_modify_date=0\nshow_item_navigation=0\nshow_readmore=1\nshow_vote=0\nshow_icons=0\nshow_pdf_icon=0\nshow_print_icon=0\nshow_email_icon=0\nshow_hits=0\nfeed_summary=0\nfilter_tags=\nfilter_attritbutes=\n\n', 1);
INSERT INTO `jos_components` VALUES(21, 'Configuration Manager', '', 0, 0, '', 'Configuration', 'com_config', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(22, 'Installation Manager', '', 0, 0, '', 'Installer', 'com_installer', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(23, 'Language Manager', '', 0, 0, '', 'Languages', 'com_languages', 0, '', 1, 'site=vi-VN\n\n', 1);
INSERT INTO `jos_components` VALUES(24, 'Mass mail', '', 0, 0, '', 'Mass Mail', 'com_massmail', 0, '', 1, 'mailSubjectPrefix=\nmailBodySuffix=\n\n', 1);
INSERT INTO `jos_components` VALUES(25, 'Menu Editor', '', 0, 0, '', 'Menu Editor', 'com_menus', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(27, 'Messaging', '', 0, 0, '', 'Messages', 'com_messages', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(28, 'Modules Manager', '', 0, 0, '', 'Modules', 'com_modules', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(29, 'Plugin Manager', '', 0, 0, '', 'Plugins', 'com_plugins', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(30, 'Template Manager', '', 0, 0, '', 'Templates', 'com_templates', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(31, 'User Manager', '', 0, 0, '', 'Users', 'com_users', 0, '', 1, 'allowUserRegistration=1\nnew_usertype=Registered\nuseractivation=1\nfrontend_userparams=1\n\n', 1);
INSERT INTO `jos_components` VALUES(32, 'Cache Manager', '', 0, 0, '', 'Cache', 'com_cache', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(33, 'Control Panel', '', 0, 0, '', 'Control Panel', 'com_cpanel', 0, '', 1, '', 1);
INSERT INTO `jos_components` VALUES(34, 'JCE', 'option=com_jce', 0, 0, 'option=com_jce', 'JCE', 'com_jce', 0, 'components/com_jce/img/logo.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(35, 'JCE MENU CPANEL', '', 0, 34, 'option=com_jce', 'JCE MENU CPANEL', 'com_jce', 0, 'templates/khepri/images/menu/icon-16-cpanel.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(36, 'JCE MENU CONFIG', '', 0, 34, 'option=com_jce&type=config', 'JCE MENU CONFIG', 'com_jce', 1, 'templates/khepri/images/menu/icon-16-config.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(37, 'JCE MENU GROUPS', '', 0, 34, 'option=com_jce&type=group', 'JCE MENU GROUPS', 'com_jce', 2, 'templates/khepri/images/menu/icon-16-user.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(38, 'JCE MENU PLUGINS', '', 0, 34, 'option=com_jce&type=plugin', 'JCE MENU PLUGINS', 'com_jce', 3, 'templates/khepri/images/menu/icon-16-plugin.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(39, 'JCE MENU INSTALL', '', 0, 34, 'option=com_jce&type=install', 'JCE MENU INSTALL', 'com_jce', 4, 'templates/khepri/images/menu/icon-16-install.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(48, 'Joom!Fish', 'option=com_joomfish', 0, 0, 'option=com_joomfish', 'Joom!Fish', 'com_joomfish', 0, 'components/com_joomfish/assets/images/icon-16-joomfish.png', 0, 'noTranslation=2\ndefaultText=\noverwriteGlobalConfig=0\ndirectory_flags=components/com_joomfish/images\nstorageOfOriginal=md5\nfrontEndPublish=1\nfrontEndPreview=1\nshowDefaultLanguageAdmin=0\ncopyparams=1\ntranscaching=0\ncachelife=180\nqacaching=1\nqalogging=0', 1);
INSERT INTO `jos_components` VALUES(49, 'Control Panel', '', 0, 48, 'option=com_joomfish', 'Control Panel', 'com_joomfish', 0, 'components/com_joomfish/assets/images/icon-16-cpanel.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(50, 'Translation', '', 0, 48, 'option=com_joomfish&task=translate.overview', 'Translation', 'com_joomfish', 1, 'components/com_joomfish/assets/images/icon-16-translation.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(51, 'Orphan Translations', '', 0, 48, 'option=com_joomfish&task=translate.orphans', 'Orphan Translations', 'com_joomfish', 2, 'components/com_joomfish/assets/images/icon-16-orphan.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(52, 'Manage Translations', '', 0, 48, 'option=com_joomfish&task=manage.overview', 'Manage Translations', 'com_joomfish', 3, 'components/com_joomfish/assets/images/icon-16-manage.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(53, 'Statistics', '', 0, 48, 'option=com_joomfish&task=statistics.overview', 'Statistics', 'com_joomfish', 4, 'components/com_joomfish/assets/images/icon-16-statistics.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(47, 'Vinaora Visitors Counter', 'option=com_vvisit_counter', 0, 0, 'option=com_vvisit_counter', 'Vinaora Visitors Counter', 'com_vvisit_counter', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(54, '', '', 0, 48, 'option=com_joomfish', '', 'com_joomfish', 5, 'components/com_joomfish/assets/images/icon-10-blank.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(55, 'Languages', '', 0, 48, 'option=com_joomfish&task=languages.show', 'Languages', 'com_joomfish', 6, 'components/com_joomfish/assets/images/icon-16-language.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(56, 'Content elements', '', 0, 48, 'option=com_joomfish&task=elements.show', 'Content elements', 'com_joomfish', 7, 'components/com_joomfish/assets/images/icon-16-extension.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(57, 'Plugins', '', 0, 48, 'option=com_joomfish&task=plugin.show', 'Plugins', 'com_joomfish', 8, 'components/com_joomfish/assets/images/icon-16-plugin.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(58, '', '', 0, 48, 'option=com_joomfish', '', 'com_joomfish', 9, 'components/com_joomfish/assets/images/icon-10-blank.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(59, 'Help', '', 0, 48, 'option=com_joomfish&task=help.show', 'Help', 'com_joomfish', 10, 'components/com_joomfish/assets/images/icon-16-help.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(101, 'K2_EXTRA_FIELD_GROUPS', '', 0, 60, 'option=com_k2&view=extrafieldsgroups', 'K2_EXTRA_FIELD_GROUPS', 'com_k2', 7, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(100, 'K2_EXTRA_FIELDS', '', 0, 60, 'option=com_k2&view=extrafields', 'K2_EXTRA_FIELDS', 'com_k2', 6, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(99, 'K2_USER_GROUPS', '', 0, 60, 'option=com_k2&view=usergroups', 'K2_USER_GROUPS', 'com_k2', 5, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(98, 'K2_USERS', '', 0, 60, 'option=com_k2&view=users', 'K2_USERS', 'com_k2', 4, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(97, 'K2_COMMENTS', '', 0, 60, 'option=com_k2&view=comments', 'K2_COMMENTS', 'com_k2', 3, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(96, 'K2_TAGS', '', 0, 60, 'option=com_k2&view=tags', 'K2_TAGS', 'com_k2', 2, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(94, 'K2_ITEMS', '', 0, 60, 'option=com_k2&view=items', 'K2_ITEMS', 'com_k2', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(95, 'K2_CATEGORIES', '', 0, 60, 'option=com_k2&view=categories', 'K2_CATEGORIES', 'com_k2', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(75, 'Advanced Module Manager', '', 0, 0, '', 'Advanced Module Manager', 'com_advancedmodules', 0, '', 0, '\n', 1);
INSERT INTO `jos_components` VALUES(60, 'COM_K2', 'option=com_k2', 0, 0, 'option=com_k2', 'COM_K2', 'com_k2', 0, '../media/k2/assets/images/system/k2_16x16.png', 0, 'enable_css=1\njQueryHandling=1.7.1\nbackendJQueryHandling=local\nuserName=1\nuserImage=1\nuserDescription=1\nuserURL=1\nuserEmail=0\nuserFeedLink=1\nuserFeedIcon=1\nuserItemCount=10\nuserItemTitle=1\nuserItemTitleLinked=1\nuserItemDateCreated=1\nuserItemImage=1\nuserItemIntroText=1\nuserItemCategory=1\nuserItemTags=1\nuserItemCommentsAnchor=1\nuserItemReadMore=1\nuserItemK2Plugins=1\ntagItemCount=10\ntagItemTitle=1\ntagItemTitleLinked=1\ntagItemDateCreated=1\ntagItemImage=1\ntagItemIntroText=1\ntagItemCategory=1\ntagItemReadMore=1\ntagItemExtraFields=0\ntagOrdering=\ntagFeedLink=1\ntagFeedIcon=1\ngenericItemCount=10\ngenericItemTitle=1\ngenericItemTitleLinked=1\ngenericItemDateCreated=1\ngenericItemImage=1\ngenericItemIntroText=1\ngenericItemCategory=1\ngenericItemReadMore=1\ngenericItemExtraFields=0\ngenericFeedLink=1\ngenericFeedIcon=1\nfeedLimit=10\nfeedItemImage=1\nfeedImgSize=S\nfeedItemIntroText=1\nfeedTextWordLimit=\nfeedItemFullText=1\nfeedItemTags=0\nfeedItemVideo=0\nfeedItemGallery=0\nfeedItemAttachments=0\nfeedBogusEmail=\nintroTextCleanup=0\nintroTextCleanupExcludeTags=\nintroTextCleanupTagAttr=\nfullTextCleanup=0\nfullTextCleanupExcludeTags=\nfullTextCleanupTagAttr=\nxssFiltering=0\nlinkPopupWidth=900\nlinkPopupHeight=600\nimagesQuality=100\nitemImageXS=100\nitemImageS=200\nitemImageM=400\nitemImageL=600\nitemImageXL=900\nitemImageGeneric=300\ncatImageWidth=100\ncatImageDefault=1\nuserImageWidth=100\nuserImageDefault=1\ncommenterImgWidth=48\nonlineImageEditor=splashup\nimageTimestamp=0\nimageMemoryLimit=\nsocialButtonCode=\ntwitterUsername=\nfacebookImage=XSmall\ncomments=0\ncommentsOrdering=DESC\ncommentsLimit=10\ncommentsFormPosition=below\ncommentsPublishing=1\ncommentsReporting=2\ncommentsReportRecipient=\ninlineCommentsModeration=0\ngravatar=1\nrecaptcha=0\ncommentsFormNotes=1\ncommentsFormNotesText=\nfrontendEditing=1\nshowImageTab=1\nshowImageGalleryTab=1\nshowVideoTab=1\nshowExtraFieldsTab=1\nshowAttachmentsTab=1\nshowK2Plugins=1\nsideBarDisplayFrontend=1\nmergeEditors=1\nsideBarDisplay=1\nattachmentsFolder=\nhideImportButton=1\ntaggingSystem=1\nlockTags=0\nshowTagFilter=0\ngoogleSearch=0\ngoogleSearchContainer=k2Container\nK2UserProfile=1\nK2UserGroup=1\nredirect=1\nadminSearch=simple\ncookieDomain=\nrecaptcha_public_key=admin\nrecaptcha_private_key=123456\nrecaptcha_theme=clean\nrecaptchaOnRegistration=0\nshowItemsCounterAdmin=0\nshowChildCatItems=1\ndisableCompactOrdering=0\nSEFReplacements=Å \\|S, Å’\\|O, Å½\\|Z, Å¡\\|s, Å“\\|oe, Å¾\\|z, Å¸\\|Y, Â¥\\|Y, Âµ\\|u, Ã€\\|A, Ã�\\|A, Ã‚\\|A, Ãƒ\\|A, Ã„\\|A, Ã…\\|A, Ã†\\|A, Ã‡\\|C, Ãˆ\\|E, Ã‰\\|E, ÃŠ\\|E, Ã‹\\|E, ÃŒ\\|I, Ã�\\|I, ÃŽ\\|I, Ã�\\|I, Ã�\\|D, Ã‘\\|N, Ã’\\|O, Ã“\\|O, Ã”\\|O, Ã•\\|O, Ã–\\|O, Ã˜\\|O, Ã™\\|U, Ãš\\|U, Ã›\\|U, Ãœ\\|U, Ã�\\|Y, ÃŸ\\|s, Ã \\|a, Ã¡\\|a, Ã¢\\|a, Ã£\\|a, Ã¤\\|a, Ã¥\\|a, Ã¦\\|a, Ã§\\|c, Ã¨\\|e, Ã©\\|e, Ãª\\|e, Ã«\\|e, Ã¬\\|i, Ã­\\|i, Ã®\\|i, Ã¯\\|i, Ã°\\|o, Ã±\\|n, Ã²\\|o, Ã³\\|o, Ã´\\|o, Ãµ\\|o, Ã¶\\|o, Ã¸\\|o, Ã¹\\|u, Ãº\\|u, Ã»\\|u, Ã¼\\|u, Ã½\\|y, Ã¿\\|y, ÃŸ\\|ss\nmetaDescLimit=150\nsh404SefLabelCat=\nsh404SefLabelUser=blog\nsh404SefLabelItem=2\nsh404SefTitleAlias=alias\nsh404SefModK2ContentFeedAlias=feed\n\n', 1);
INSERT INTO `jos_components` VALUES(87, 'RSFormPro', 'option=com_rsform', 0, 0, 'option=com_rsform', 'RSFormPro', 'com_rsform', 0, 'components/com_rsform/assets/images/rsformpro.gif', 0, '', 1);
INSERT INTO `jos_components` VALUES(88, 'COM_RSFORM_MANAGE_FORMS', '', 0, 87, 'option=com_rsform&task=forms.manage', 'COM_RSFORM_MANAGE_FORMS', 'com_rsform', 0, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(89, 'COM_RSFORM_MANAGE_SUBMISSIONS', '', 0, 87, 'option=com_rsform&task=submissions.manage', 'COM_RSFORM_MANAGE_SUBMISSIONS', 'com_rsform', 1, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(90, 'COM_RSFORM_CONFIGURATION', '', 0, 87, 'option=com_rsform&task=configuration.edit', 'COM_RSFORM_CONFIGURATION', 'com_rsform', 2, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(91, 'COM_RSFORM_BACKUP_RESTORE', '', 0, 87, 'option=com_rsform&task=backup.restore', 'COM_RSFORM_BACKUP_RESTORE', 'com_rsform', 3, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(92, 'COM_RSFORM_UPDATES', '', 0, 87, 'option=com_rsform&task=updates.manage', 'COM_RSFORM_UPDATES', 'com_rsform', 4, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(93, 'COM_RSFORM_PLUGINS', '', 0, 87, 'option=com_rsform&task=goto.plugins', 'COM_RSFORM_PLUGINS', 'com_rsform', 5, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(102, 'K2_MEDIA_MANAGER', '', 0, 60, 'option=com_k2&view=media', 'K2_MEDIA_MANAGER', 'com_k2', 8, 'js/ThemeOffice/component.png', 0, '', 1);
INSERT INTO `jos_components` VALUES(103, 'K2_INFORMATION', '', 0, 60, 'option=com_k2&view=info', 'K2_INFORMATION', 'com_k2', 9, 'js/ThemeOffice/component.png', 0, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_contact_details`
--

DROP TABLE IF EXISTS `jos_contact_details`;
CREATE TABLE IF NOT EXISTS `jos_contact_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `con_position` varchar(255) DEFAULT NULL,
  `address` text,
  `suburb` varchar(100) DEFAULT NULL,
  `state` varchar(100) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `postcode` varchar(100) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `fax` varchar(255) DEFAULT NULL,
  `misc` mediumtext,
  `image` varchar(255) DEFAULT NULL,
  `imagepos` varchar(20) DEFAULT NULL,
  `email_to` varchar(255) DEFAULT NULL,
  `default_con` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `catid` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `mobile` varchar(255) NOT NULL DEFAULT '',
  `webpage` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `jos_contact_details`
--

INSERT INTO `jos_contact_details` VALUES(1, 'Contact', 'contact', '', '', '', '', '', '', '', '', '', '', NULL, 'htkieuphuong@gmail.com', 0, 1, 0, '0000-00-00 00:00:00', 1, 'show_name=1\nshow_position=0\nshow_email=0\nshow_street_address=0\nshow_suburb=0\nshow_state=0\nshow_postcode=0\nshow_country=0\nshow_telephone=0\nshow_mobile=0\nshow_fax=0\nshow_webpage=0\nshow_misc=0\nshow_image=0\nallow_vcard=0\ncontact_icons=0\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_email_form=1\nemail_description=\nshow_email_copy=1\nbanned_email=\nbanned_subject=\nbanned_text=', 0, 3, 0, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content`
--

DROP TABLE IF EXISTS `jos_content`;
CREATE TABLE IF NOT EXISTS `jos_content` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `title_alias` varchar(255) NOT NULL DEFAULT '',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `state` tinyint(3) NOT NULL DEFAULT '0',
  `sectionid` int(11) unsigned NOT NULL DEFAULT '0',
  `mask` int(11) unsigned NOT NULL DEFAULT '0',
  `catid` int(11) unsigned NOT NULL DEFAULT '0',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `created_by` int(11) unsigned NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL DEFAULT '',
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_up` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `publish_down` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `images` text NOT NULL,
  `urls` text NOT NULL,
  `attribs` text NOT NULL,
  `version` int(11) unsigned NOT NULL DEFAULT '1',
  `parentid` int(11) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `metakey` text NOT NULL,
  `metadesc` text NOT NULL,
  `access` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0',
  `metadata` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_section` (`sectionid`),
  KEY `idx_access` (`access`),
  KEY `idx_checkout` (`checked_out`),
  KEY `idx_state` (`state`),
  KEY `idx_catid` (`catid`),
  KEY `idx_createdby` (`created_by`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `jos_content`
--

INSERT INTO `jos_content` VALUES(19, 'Liên hệ', 'lien-h', '', '<table border="0" cellpadding="5" cellspacing="5" style="width: 99%;">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>﻿Công ty cổ phần công nghệ Ghềnh Mai</p>\r\n<p>Địa chỉ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;456 - 458 Hai Bà Trưng, P. Tân Định, Q.1, TP.HCM</p>\r\n<p>Điện thoại: &nbsp; &nbsp; &nbsp; (08) 6297. 8888</p>\r\n<p>Fax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(08) 6292. 6666</p>\r\n<p>E-mail: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;support@gmtechn.com</p>\r\n<p>Skype: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gmtechn</p>\r\n<p>Hotline: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 090 474 7789 (Mr. Sơn)</p>\r\n</td>\r\n<td>{rsform 3}</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', 1, 1, 0, 9, '2012-01-05 15:12:08', 62, '', '0000-00-00 00:00:00', 0, 0, '0000-00-00 00:00:00', '2012-01-05 15:12:08', '0000-00-00 00:00:00', '', '', 'show_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_vote=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nlanguage=\nkeyref=\nreadmore=', 1, 0, 1, '', '', 0, 74, 'robots=\nauthor=');

-- --------------------------------------------------------

--
-- Table structure for table `jos_content_frontpage`
--

DROP TABLE IF EXISTS `jos_content_frontpage`;
CREATE TABLE IF NOT EXISTS `jos_content_frontpage` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_frontpage`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_content_rating`
--

DROP TABLE IF EXISTS `jos_content_rating`;
CREATE TABLE IF NOT EXISTS `jos_content_rating` (
  `content_id` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`content_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_content_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro`
--

DROP TABLE IF EXISTS `jos_core_acl_aro`;
CREATE TABLE IF NOT EXISTS `jos_core_acl_aro` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `section_value` varchar(240) NOT NULL DEFAULT '0',
  `value` varchar(240) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_section_value_value_aro` (`section_value`(100),`value`(100)),
  KEY `jos_gacl_hidden_aro` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro`
--

INSERT INTO `jos_core_acl_aro` VALUES(10, 'users', '62', 0, 'Administrator', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_groups`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_groups`;
CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL DEFAULT '',
  `lft` int(11) NOT NULL DEFAULT '0',
  `rgt` int(11) NOT NULL DEFAULT '0',
  `value` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `jos_gacl_parent_id_aro_groups` (`parent_id`),
  KEY `jos_gacl_lft_rgt_aro_groups` (`lft`,`rgt`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_core_acl_aro_groups`
--

INSERT INTO `jos_core_acl_aro_groups` VALUES(17, 0, 'ROOT', 1, 22, 'ROOT');
INSERT INTO `jos_core_acl_aro_groups` VALUES(28, 17, 'USERS', 2, 21, 'USERS');
INSERT INTO `jos_core_acl_aro_groups` VALUES(29, 28, 'Public Frontend', 3, 12, 'Public Frontend');
INSERT INTO `jos_core_acl_aro_groups` VALUES(18, 29, 'Registered', 4, 11, 'Registered');
INSERT INTO `jos_core_acl_aro_groups` VALUES(19, 18, 'Author', 5, 10, 'Author');
INSERT INTO `jos_core_acl_aro_groups` VALUES(20, 19, 'Editor', 6, 9, 'Editor');
INSERT INTO `jos_core_acl_aro_groups` VALUES(21, 20, 'Publisher', 7, 8, 'Publisher');
INSERT INTO `jos_core_acl_aro_groups` VALUES(30, 28, 'Public Backend', 13, 20, 'Public Backend');
INSERT INTO `jos_core_acl_aro_groups` VALUES(23, 30, 'Manager', 14, 19, 'Manager');
INSERT INTO `jos_core_acl_aro_groups` VALUES(24, 23, 'Administrator', 15, 18, 'Administrator');
INSERT INTO `jos_core_acl_aro_groups` VALUES(25, 24, 'Super Administrator', 16, 17, 'Super Administrator');

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_map`;
CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_map` (
  `acl_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(230) NOT NULL DEFAULT '0',
  `value` varchar(100) NOT NULL,
  PRIMARY KEY (`acl_id`,`section_value`,`value`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_aro_map`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_aro_sections`
--

DROP TABLE IF EXISTS `jos_core_acl_aro_sections`;
CREATE TABLE IF NOT EXISTS `jos_core_acl_aro_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `value` varchar(230) NOT NULL DEFAULT '',
  `order_value` int(11) NOT NULL DEFAULT '0',
  `name` varchar(230) NOT NULL DEFAULT '',
  `hidden` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jos_gacl_value_aro_sections` (`value`),
  KEY `jos_gacl_hidden_aro_sections` (`hidden`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `jos_core_acl_aro_sections`
--

INSERT INTO `jos_core_acl_aro_sections` VALUES(10, 'users', 1, 'Users', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_acl_groups_aro_map`
--

DROP TABLE IF EXISTS `jos_core_acl_groups_aro_map`;
CREATE TABLE IF NOT EXISTS `jos_core_acl_groups_aro_map` (
  `group_id` int(11) NOT NULL DEFAULT '0',
  `section_value` varchar(240) NOT NULL DEFAULT '',
  `aro_id` int(11) NOT NULL DEFAULT '0',
  UNIQUE KEY `group_id_aro_id_groups_aro_map` (`group_id`,`section_value`,`aro_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_acl_groups_aro_map`
--

INSERT INTO `jos_core_acl_groups_aro_map` VALUES(25, '', 10);

-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_items`
--

DROP TABLE IF EXISTS `jos_core_log_items`;
CREATE TABLE IF NOT EXISTS `jos_core_log_items` (
  `time_stamp` date NOT NULL DEFAULT '0000-00-00',
  `item_table` varchar(50) NOT NULL DEFAULT '',
  `item_id` int(11) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_items`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_core_log_searches`
--

DROP TABLE IF EXISTS `jos_core_log_searches`;
CREATE TABLE IF NOT EXISTS `jos_core_log_searches` (
  `search_term` varchar(128) NOT NULL DEFAULT '',
  `hits` int(11) unsigned NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_core_log_searches`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_count`
--

DROP TABLE IF EXISTS `jos_count`;
CREATE TABLE IF NOT EXISTS `jos_count` (
  `joomla` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jos_count`
--

INSERT INTO `jos_count` VALUES(1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_dbcache`
--

DROP TABLE IF EXISTS `jos_dbcache`;
CREATE TABLE IF NOT EXISTS `jos_dbcache` (
  `id` varchar(32) NOT NULL DEFAULT '',
  `groupname` varchar(32) NOT NULL DEFAULT '',
  `expire` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `value` mediumblob NOT NULL,
  PRIMARY KEY (`id`,`groupname`),
  KEY `expire` (`expire`,`groupname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_dbcache`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_groups`
--

DROP TABLE IF EXISTS `jos_groups`;
CREATE TABLE IF NOT EXISTS `jos_groups` (
  `id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_groups`
--

INSERT INTO `jos_groups` VALUES(0, 'Public');
INSERT INTO `jos_groups` VALUES(1, 'Registered');
INSERT INTO `jos_groups` VALUES(2, 'Special');

-- --------------------------------------------------------

--
-- Table structure for table `jos_jce_groups`
--

DROP TABLE IF EXISTS `jos_jce_groups`;
CREATE TABLE IF NOT EXISTS `jos_jce_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `users` text NOT NULL,
  `types` varchar(255) NOT NULL,
  `components` text NOT NULL,
  `rows` text NOT NULL,
  `plugins` varchar(255) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `ordering` int(11) NOT NULL,
  `checked_out` tinyint(3) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_jce_groups`
--

INSERT INTO `jos_jce_groups` VALUES(1, 'Default', 'Default group for all users with edit access', '', '19,20,21,23,24,25', '', '6,7,8,9,10,11,12,13,14,15,16,17,18,19;20,21,22,23,24,25,26,27,28,30,31,32,35,47;36,37,38,39,40,41,42,43,44,45,46;48,49,50,51,52,53,54,56,57', '1,2,3,4,5,6,20,21,36,37,38,39,40,41,48,49,50,51,52,53,54,56,57', 1, 1, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_jce_groups` VALUES(2, 'Front End', 'Sample Group for Authors, Editors, Publishers', '', '19,20,21', '', '6,7,8,9,10,13,14,15,16,17,18,19,27,28;20,21,25,26,30,31,35,42,43,44,46,47,49,50;24,32,38,39,41,45,48,51,52,53,54,56,57', '6,20,21,49,50,1,3,5,38,39,41,48,51,52,53,54,56,57', 0, 2, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_jce_plugins`
--

DROP TABLE IF EXISTS `jos_jce_plugins`;
CREATE TABLE IF NOT EXISTS `jos_jce_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `icon` varchar(255) NOT NULL,
  `layout` varchar(255) NOT NULL,
  `row` int(11) NOT NULL,
  `ordering` int(11) NOT NULL,
  `published` tinyint(3) NOT NULL,
  `editable` tinyint(3) NOT NULL,
  `iscore` tinyint(3) NOT NULL,
  `elements` varchar(255) NOT NULL,
  `checked_out` int(11) NOT NULL,
  `checked_out_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `plugin` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=58 ;

--
-- Dumping data for table `jos_jce_plugins`
--

INSERT INTO `jos_jce_plugins` VALUES(1, 'Context Menu', 'contextmenu', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(2, 'File Browser', 'browser', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(3, 'Inline Popups', 'inlinepopups', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(4, 'Media Support', 'media', 'plugin', '', '', 0, 0, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(5, 'Safari Browser Support', 'safari', 'plugin', '', '', 0, 0, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(6, 'Help', 'help', 'plugin', 'help', 'help', 1, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(7, 'New Document', 'newdocument', 'command', 'newdocument', 'newdocument', 1, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(8, 'Bold', 'bold', 'command', 'bold', 'bold', 1, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(9, 'Italic', 'italic', 'command', 'italic', 'italic', 1, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(10, 'Underline', 'underline', 'command', 'underline', 'underline', 1, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(11, 'Font Select', 'fontselect', 'command', 'fontselect', 'fontselect', 1, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(12, 'Font Size Select', 'fontsizeselect', 'command', 'fontsizeselect', 'fontsizeselect', 1, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(13, 'Style Select', 'styleselect', 'command', 'styleselect', 'styleselect', 1, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(14, 'StrikeThrough', 'strikethrough', 'command', 'strikethrough', 'strikethrough', 1, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(15, 'Justify Full', 'full', 'command', 'justifyfull', 'justifyfull', 1, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(16, 'Justify Center', 'center', 'command', 'justifycenter', 'justifycenter', 1, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(17, 'Justify Left', 'left', 'command', 'justifyleft', 'justifyleft', 1, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(18, 'Justify Right', 'right', 'command', 'justifyright', 'justifyright', 1, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(19, 'Format Select', 'formatselect', 'command', 'formatselect', 'formatselect', 1, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(20, 'Paste', 'paste', 'plugin', 'cut,copy,paste', 'paste', 2, 1, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(21, 'Search Replace', 'searchreplace', 'plugin', 'search,replace', 'searchreplace', 2, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(22, 'Font ForeColour', 'forecolor', 'command', 'forecolor', 'forecolor', 2, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(23, 'Font BackColour', 'backcolor', 'command', 'backcolor', 'backcolor', 2, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(24, 'Unlink', 'unlink', 'command', 'unlink', 'unlink', 2, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(25, 'Indent', 'indent', 'command', 'indent', 'indent', 2, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(26, 'Outdent', 'outdent', 'command', 'outdent', 'outdent', 2, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(27, 'Undo', 'undo', 'command', 'undo', 'undo', 2, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(28, 'Redo', 'redo', 'command', 'redo', 'redo', 2, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(29, 'HTML', 'html', 'command', 'code', 'code', 2, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(30, 'Numbered List', 'numlist', 'command', 'numlist', 'numlist', 2, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(31, 'Bullet List', 'bullist', 'command', 'bullist', 'bullist', 2, 12, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(32, 'Anchor', 'anchor', 'command', 'anchor', 'anchor', 2, 13, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(33, 'Image', 'image', 'command', 'image', 'image', 2, 14, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(34, 'Link', 'link', 'command', 'link', 'link', 2, 15, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(35, 'Code Cleanup', 'cleanup', 'command', 'cleanup', 'cleanup', 2, 16, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(36, 'Directionality', 'directionality', 'plugin', 'ltr,rtl', 'directionality', 3, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(37, 'Emotions', 'emotions', 'plugin', 'emotions', 'emotions', 3, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(38, 'Fullscreen', 'fullscreen', 'plugin', 'fullscreen', 'fullscreen', 3, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(39, 'Preview', 'preview', 'plugin', 'preview', 'preview', 3, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(40, 'Tables', 'table', 'plugin', 'tablecontrols', 'buttons', 3, 5, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(41, 'Print', 'print', 'plugin', 'print', 'print', 3, 6, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(42, 'Horizontal Rule', 'hr', 'command', 'hr', 'hr', 3, 7, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(43, 'Subscript', 'sub', 'command', 'sub', 'sub', 3, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(44, 'Superscript', 'sup', 'command', 'sup', 'sup', 3, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(45, 'Visual Aid', 'visualaid', 'command', 'visualaid', 'visualaid', 3, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(46, 'Character Map', 'charmap', 'command', 'charmap', 'charmap', 3, 11, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(47, 'Remove Format', 'removeformat', 'command', 'removeformat', 'removeformat', 2, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(48, 'Styles', 'style', 'plugin', 'styleprops', 'style', 4, 1, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(49, 'Non-Breaking', 'nonbreaking', 'plugin', 'nonbreaking', 'nonbreaking', 4, 2, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(50, 'Visual Characters', 'visualchars', 'plugin', 'visualchars', 'visualchars', 4, 3, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(51, 'XHTML Xtras', 'xhtmlxtras', 'plugin', 'cite,abbr,acronym,del,ins,attribs', 'xhtmlxtras', 4, 4, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(52, 'Image Manager', 'imgmanager', 'plugin', 'imgmanager', 'imgmanager', 4, 5, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(53, 'Advanced Link', 'advlink', 'plugin', 'advlink', 'advlink', 4, 6, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(54, 'Spell Checker', 'spellchecker', 'plugin', 'spellchecker', 'spellchecker', 4, 7, 1, 1, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(55, 'Layers', 'layer', 'plugin', 'insertlayer,moveforward,movebackward,absolute', 'layer', 4, 8, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(56, 'Advanced Code Editor', 'advcode', 'plugin', 'advcode', 'advcode', 4, 9, 1, 0, 1, '', 0, '0000-00-00 00:00:00');
INSERT INTO `jos_jce_plugins` VALUES(57, 'Article Breaks', 'article', 'plugin', 'readmore,pagebreak', 'article', 4, 10, 1, 0, 1, '', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `jos_jf_content`
--

DROP TABLE IF EXISTS `jos_jf_content`;
CREATE TABLE IF NOT EXISTS `jos_jf_content` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `reference_id` int(11) NOT NULL DEFAULT '0',
  `reference_table` varchar(100) NOT NULL DEFAULT '',
  `reference_field` varchar(100) NOT NULL DEFAULT '',
  `value` mediumtext NOT NULL,
  `original_value` varchar(255) DEFAULT NULL,
  `original_text` mediumtext NOT NULL,
  `modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modified_by` int(11) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `combo` (`reference_id`,`reference_field`,`reference_table`),
  KEY `jfContent` (`language_id`,`reference_id`,`reference_table`),
  KEY `jfContentLanguage` (`reference_id`,`reference_field`,`reference_table`,`language_id`),
  KEY `reference_id` (`reference_id`),
  KEY `language_id` (`language_id`),
  KEY `reference_table` (`reference_table`),
  KEY `reference_field` (`reference_field`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_jf_content`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_jf_tableinfo`
--

DROP TABLE IF EXISTS `jos_jf_tableinfo`;
CREATE TABLE IF NOT EXISTS `jos_jf_tableinfo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `joomlatablename` varchar(100) NOT NULL DEFAULT '',
  `tablepkID` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `jos_jf_tableinfo`
--

INSERT INTO `jos_jf_tableinfo` VALUES(23, 'banner', 'bid');
INSERT INTO `jos_jf_tableinfo` VALUES(24, 'bannerclient', 'cid');
INSERT INTO `jos_jf_tableinfo` VALUES(25, 'categories', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(26, 'contact_details', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(27, 'content', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(28, 'fpss_categories', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(29, 'fpss_slides', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(30, 'k2_attachments', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(31, 'k2_categories', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(32, 'k2_extra_fields', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(33, 'k2_items', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(34, 'k2_tags', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(35, 'k2_users', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(36, 'languages', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(37, 'menu', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(38, 'modules', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(39, 'newsfeeds', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(40, 'poll_data', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(41, 'polls', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(42, 'sections', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(43, 'users', 'id');
INSERT INTO `jos_jf_tableinfo` VALUES(44, 'weblinks', 'id');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_attachments`
--

DROP TABLE IF EXISTS `jos_k2_attachments`;
CREATE TABLE IF NOT EXISTS `jos_k2_attachments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleAttribute` text NOT NULL,
  `hits` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_attachments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_categories`
--

DROP TABLE IF EXISTS `jos_k2_categories`;
CREATE TABLE IF NOT EXISTS `jos_k2_categories` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `alias` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `parent` int(11) DEFAULT '0',
  `extraFieldsGroup` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `category` (`published`,`access`,`trash`),
  KEY `parent` (`parent`),
  KEY `ordering` (`ordering`),
  KEY `published` (`published`),
  KEY `access` (`access`),
  KEY `trash` (`trash`),
  KEY `language` (`language`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `jos_k2_categories`
--

INSERT INTO `jos_k2_categories` VALUES(1, 'Sản phẩm', 'sản-phẩm', '', 0, 6, 1, 0, 1, '', 'inheritFrom=0\ntheme=\nnum_leading_items=5\nnum_leading_columns=1\nleadingImgSize=Small\nnum_primary_items=0\nnum_primary_columns=1\nprimaryImgSize=Medium\nnum_secondary_items=0\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=0\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=1\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=0\ncatTitleItemCounter=0\ncatDescription=0\ncatImage=0\ncatFeedLink=0\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=200\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=0\ncatItemDateCreated=0\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=0\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=0\ncatItemCommentsAnchor=0\ncatItemK2Plugins=1\nitemDateCreated=0\nitemTitle=1\nitemFeaturedNotice=0\nitemAuthor=0\nitemFontResizer=0\nitemPrintButton=0\nitemEmailButton=0\nitemSocialButton=0\nitemVideoAnchor=0\nitemImageGalleryAnchor=0\nitemCommentsAnchor=0\nitemRating=0\nitemImage=0\nitemImgSize=Medium\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=0\nitemFullText=0\nitemExtraFields=1\nitemDateModified=0\nitemHits=0\nitemCategory=1\nitemTags=0\nitemAttachments=0\nitemAttachmentsCounter=0\nitemVideo=0\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemImageGallery=1\nitemNavigation=0\nitemComments=0\nitemTwitterButton=0\nitemFacebookButton=0\nitemGooglePlusOneButton=0\nitemAuthorBlock=0\nitemAuthorImage=0\nitemAuthorDescription=0\nitemAuthorURL=0\nitemAuthorEmail=0\nitemAuthorLatest=0\nitemAuthorLatestLimit=4\nitemRelated=1\nitemRelatedLimit=4\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=XSmall\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(2, 'Laptop', 'laptop', '', 1, 6, 1, 0, 1, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(3, 'All In One', 'all-in-one', '', 1, 6, 1, 0, 4, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(4, 'Tablet Devices', 'tablet-devices', '', 1, 6, 1, 0, 2, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(5, 'Router', 'router', '', 1, 6, 1, 0, 6, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(6, 'Network Adapter', 'network-adapter', '', 1, 6, 1, 0, 3, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(7, 'Switch', 'switch', '', 1, 6, 1, 0, 5, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(8, 'ADSL', 'adsl', '', 1, 6, 1, 0, 7, '', 'inheritFrom=1\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(9, 'gmtech', 'gmtech', '', 0, 0, 1, 0, 2, '', 'inheritFrom=0\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=0\ncatTitleItemCounter=0\ncatDescription=0\ncatImage=0\ncatFeedLink=0\ncatFeedIcon=0\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=0\nitemTitle=1\nitemFeaturedNotice=0\nitemAuthor=0\nitemFontResizer=0\nitemPrintButton=0\nitemEmailButton=0\nitemSocialButton=0\nitemVideoAnchor=0\nitemImageGalleryAnchor=0\nitemCommentsAnchor=0\nitemRating=0\nitemImage=0\nitemImgSize=Large\nitemImageMainCaption=0\nitemImageMainCredits=0\nitemIntroText=1\nitemFullText=1\nitemExtraFields=0\nitemDateModified=0\nitemHits=0\nitemCategory=0\nitemTags=0\nitemAttachments=0\nitemAttachmentsCounter=0\nitemVideo=0\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=0\nitemVideoCredits=0\nitemImageGallery=0\nitemNavigation=0\nitemComments=0\nitemTwitterButton=0\nitemFacebookButton=0\nitemGooglePlusOneButton=0\nitemAuthorBlock=0\nitemAuthorImage=0\nitemAuthorDescription=0\nitemAuthorURL=0\nitemAuthorEmail=0\nitemAuthorLatest=0\nitemAuthorLatestLimit=5\nitemRelated=0\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=0\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(10, 'Đại lý', 'đại-lý', '', 9, 0, 1, 0, 1, '', 'inheritFrom=9\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(11, 'Hỗ trợ và Driver', 'hỗ-trợ-và-driver', '', 9, 0, 1, 0, 2, '', 'inheritFrom=9\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(17, 'tintuc', 'tintuc', '', 0, 0, 1, 0, 3, '', 'inheritFrom=0\ntheme=\nnum_leading_items=10\nnum_leading_columns=1\nleadingImgSize=Small\nnum_primary_items=0\nnum_primary_columns=1\nprimaryImgSize=XSmall\nnum_secondary_items=0\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=0\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=0\ncatTitleItemCounter=0\ncatDescription=0\ncatImage=0\ncatFeedLink=0\ncatFeedIcon=0\nsubCategories=0\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=0\nsubCatTitleItemCounter=0\nsubCatDescription=0\nsubCatImage=0\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=0\ncatItemDateCreated=0\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=100\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=0\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=0\nitemImgSize=Medium\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=0\nitemHits=0\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=0\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=0\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=16\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=XSmall\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, '', '');
INSERT INTO `jos_k2_categories` VALUES(18, 'Tin GOODM', 'tin-goodm', '', 17, 0, 1, 0, 1, '', 'inheritFrom=17\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(19, 'Tin tức khác', 'tin-tức-khác', '', 17, 0, 1, 0, 2, '', 'inheritFrom=17\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');
INSERT INTO `jos_k2_categories` VALUES(23, 'gmtech', 'gmtech', '', 9, 0, 1, 0, 3, '', 'inheritFrom=9\ntheme=\nnum_leading_items=2\nnum_leading_columns=1\nleadingImgSize=Large\nnum_primary_items=4\nnum_primary_columns=2\nprimaryImgSize=Medium\nnum_secondary_items=4\nnum_secondary_columns=1\nsecondaryImgSize=Small\nnum_links=4\nnum_links_columns=1\nlinksImgSize=XSmall\ncatCatalogMode=0\ncatFeaturedItems=1\ncatOrdering=\ncatPagination=2\ncatPaginationResults=1\ncatTitle=1\ncatTitleItemCounter=1\ncatDescription=1\ncatImage=1\ncatFeedLink=1\ncatFeedIcon=1\nsubCategories=1\nsubCatColumns=2\nsubCatOrdering=\nsubCatTitle=1\nsubCatTitleItemCounter=1\nsubCatDescription=1\nsubCatImage=1\nitemImageXS=\nitemImageS=\nitemImageM=\nitemImageL=\nitemImageXL=\ncatItemTitle=1\ncatItemTitleLinked=1\ncatItemFeaturedNotice=0\ncatItemAuthor=1\ncatItemDateCreated=1\ncatItemRating=0\ncatItemImage=1\ncatItemIntroText=1\ncatItemIntroTextWordLimit=\ncatItemExtraFields=0\ncatItemHits=0\ncatItemCategory=1\ncatItemTags=1\ncatItemAttachments=0\ncatItemAttachmentsCounter=0\ncatItemVideo=0\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=0\ncatItemImageGallery=0\ncatItemDateModified=0\ncatItemReadMore=1\ncatItemCommentsAnchor=1\ncatItemK2Plugins=1\nitemDateCreated=1\nitemTitle=1\nitemFeaturedNotice=1\nitemAuthor=1\nitemFontResizer=1\nitemPrintButton=1\nitemEmailButton=1\nitemSocialButton=1\nitemVideoAnchor=1\nitemImageGalleryAnchor=1\nitemCommentsAnchor=1\nitemRating=1\nitemImage=1\nitemImgSize=Large\nitemImageMainCaption=1\nitemImageMainCredits=1\nitemIntroText=1\nitemFullText=1\nitemExtraFields=1\nitemDateModified=1\nitemHits=1\nitemCategory=1\nitemTags=1\nitemAttachments=1\nitemAttachmentsCounter=1\nitemVideo=1\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=0\nitemVideoCaption=1\nitemVideoCredits=1\nitemImageGallery=1\nitemNavigation=1\nitemComments=1\nitemTwitterButton=1\nitemFacebookButton=1\nitemGooglePlusOneButton=1\nitemAuthorBlock=1\nitemAuthorImage=1\nitemAuthorDescription=1\nitemAuthorURL=1\nitemAuthorEmail=0\nitemAuthorLatest=1\nitemAuthorLatestLimit=5\nitemRelated=1\nitemRelatedLimit=5\nitemRelatedTitle=1\nitemRelatedCategory=0\nitemRelatedImageSize=0\nitemRelatedIntrotext=0\nitemRelatedFulltext=0\nitemRelatedAuthor=0\nitemRelatedMedia=0\nitemRelatedImageGallery=0\nitemK2Plugins=1\ncatMetaDesc=\ncatMetaKey=\ncatMetaRobots=\ncatMetaAuthor=\n\n', 0, 'tabberfreeulstyle_free=\ntabberfreeastyle_free=\ntabberfreecontentstyle_free=\n\n', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_comments`
--

DROP TABLE IF EXISTS `jos_k2_comments`;
CREATE TABLE IF NOT EXISTS `jos_k2_comments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `itemID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) NOT NULL,
  `commentDate` datetime NOT NULL,
  `commentText` text NOT NULL,
  `commentEmail` varchar(255) NOT NULL,
  `commentURL` varchar(255) NOT NULL,
  `published` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `itemID` (`itemID`),
  KEY `userID` (`userID`),
  KEY `published` (`published`),
  KEY `latestComments` (`published`,`commentDate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_extra_fields`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields`;
CREATE TABLE IF NOT EXISTS `jos_k2_extra_fields` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(255) NOT NULL,
  `group` int(11) NOT NULL,
  `published` tinyint(4) NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `group` (`group`),
  KEY `published` (`published`),
  KEY `ordering` (`ordering`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_k2_extra_fields`
--

INSERT INTO `jos_k2_extra_fields` VALUES(4, 'Mô tả kỹ thuật', '[{"name":null,"value":"","editor":"1","target":null}]', 'textarea', 6, 1, 2);
INSERT INTO `jos_k2_extra_fields` VALUES(3, 'Thông tin sản phẩm', '[{"name":null,"value":"","editor":"1","target":null}]', 'textarea', 6, 1, 1);
INSERT INTO `jos_k2_extra_fields` VALUES(5, 'Bài viết sản phẩm', '[{"name":null,"value":"","editor":"1","target":null}]', 'textarea', 6, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_extra_fields_groups`
--

DROP TABLE IF EXISTS `jos_k2_extra_fields_groups`;
CREATE TABLE IF NOT EXISTS `jos_k2_extra_fields_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `jos_k2_extra_fields_groups`
--

INSERT INTO `jos_k2_extra_fields_groups` VALUES(6, 'Mô tả kỹ thuật');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_items`
--

DROP TABLE IF EXISTS `jos_k2_items`;
CREATE TABLE IF NOT EXISTS `jos_k2_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `alias` varchar(255) DEFAULT NULL,
  `catid` int(11) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  `introtext` mediumtext NOT NULL,
  `fulltext` mediumtext NOT NULL,
  `video` text,
  `gallery` varchar(255) DEFAULT NULL,
  `extra_fields` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `extra_fields_search` text NOT NULL,
  `created` datetime NOT NULL,
  `created_by` int(11) NOT NULL DEFAULT '0',
  `created_by_alias` varchar(255) NOT NULL,
  `checked_out` int(10) unsigned NOT NULL,
  `checked_out_time` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `modified_by` int(11) NOT NULL DEFAULT '0',
  `publish_up` datetime NOT NULL,
  `publish_down` datetime NOT NULL,
  `trash` smallint(6) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `featured` smallint(6) NOT NULL DEFAULT '0',
  `featured_ordering` int(11) NOT NULL DEFAULT '0',
  `image_caption` text NOT NULL,
  `image_credits` varchar(255) NOT NULL,
  `video_caption` text NOT NULL,
  `video_credits` varchar(255) NOT NULL,
  `hits` int(10) unsigned NOT NULL,
  `params` text NOT NULL,
  `metadesc` text NOT NULL,
  `metadata` text NOT NULL,
  `metakey` text NOT NULL,
  `plugins` text NOT NULL,
  `language` char(7) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `item` (`published`,`publish_up`,`publish_down`,`trash`,`access`),
  KEY `catid` (`catid`),
  KEY `created_by` (`created_by`),
  KEY `ordering` (`ordering`),
  KEY `featured` (`featured`),
  KEY `featured_ordering` (`featured_ordering`),
  KEY `hits` (`hits`),
  KEY `created` (`created`),
  KEY `language` (`language`),
  FULLTEXT KEY `search` (`title`,`introtext`,`fulltext`,`extra_fields_search`,`image_caption`,`image_credits`,`video_caption`,`video_credits`,`metadesc`,`metakey`),
  FULLTEXT KEY `title` (`title`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `jos_k2_items`
--

INSERT INTO `jos_k2_items` VALUES(1, 'asdasd', 'asdasd', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}1{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 05:53:46', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:18:02', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 1, 0, 0, '', '', '', '', 6, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(2, 'Sản phẩm 1', 'sản-phẩm-1', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}2{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:43:56', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:45:21', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 5, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(3, 'Sản phẩm 3', 'sản-phẩm-3', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}3{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:45:31', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:45:47', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 7, 0, 0, '', '', '', '', 2, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(4, 'Sản phẩm 4', 'sản-phẩm-4', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}4{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:45:31', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:46:02', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 3, 0, 0, '', '', '', '', 12, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(5, 'San pham 8', 'san-pham-8', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}5{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:46:12', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:47:02', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 4, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(6, 'San pham 7', 'san-pham-7', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}6{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:46:12', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 07:46:47', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 8, 0, 0, '', '', '', '', 2, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(7, 'San pham 6', 'san-pham-6', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}7{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:46:12', 62, '', 0, '0000-00-00 00:00:00', '2012-01-05 01:22:57', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 6, 0, 0, '', '', '', '', 8, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(8, 'San pham 5', 'san-pham-5', 2, 1, 'asdasdasdasd', '', NULL, '{gallery}8{/gallery}', '[{"id":"3","value":"asd"},{"id":"4","value":"asd"}]', 'asd asd ', '2012-01-04 07:46:12', 62, '', 0, '0000-00-00 00:00:00', '2012-01-05 01:22:44', 62, '2012-01-04 05:53:46', '0000-00-00 00:00:00', 1, 0, 2, 0, 0, '', '', '', '', 49, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(28, 'Giới thiệu', 'giới-thiệu', 23, 1, '<p><strong>CHÀO MỪNG CÁC BẠN ĐẾN VỚI CÔNG TY GMTECH!</strong></p>\r\n<p>Được thành lâp theo quyết định số: 0309587658 Sở Kế hoạch Đầu tư  TP.HCM, GM TECH ra đời bởi lòng đam mê và bầu nhiệt huyết của những  người giàu kinh nghiệm trong lĩnh vực công nghệ thông tin. Bằng những  nghiên cứu sâu rộng về đời sống, nhu cầu sử dụng và yêu cầu phát triển  xã hội GM TECH mang đến cho người dùng những sản phẩm của sự chắt lọc,  chất lượng đỉnh cao, phù hợp với nhiều đối tượng người dùng trên cơ sở  các tiêu chuẩn kỹ thuật nghiêm ngặt.<br /><br />Với mục tiêu trở thành một  doanh nghiệp được công chúng mong muốn tồn tại, chúng tôi ý thức sâu sắc  rằng sự phát triển của công ty luôn gắn với lợi ích khách hàng, lấy  khách hàng làm trọng tâm để nổ lực phấn đấu. Khẳng định lòng tin đó! GM  TECH đã thành lập những mạng lưới phân phối bán hàng rộng khắp cả nước  cùng một số Quốc gia lân cận, trao đến người dùng những chính sách kinh  điển như: Xây dựng một mạng lưới bảo hành rộng khắp cả nước, chính sách  bảo hành <strong>“<span style="color: #ff0000;">Một đổi một mới</span>”</strong> lên tới 12 tháng, thời hạn bảo hành lâu dài và đặc biệt hệ thống chăm  sóc khách hàng sẽ làm việc 24/24 trong hơn 300 ngày/năm, sẵn sàng tiếp  nhận và giải đáp tất cả các thông tin liên quan đến sản phẩm. <br /><br />Hoạch định tương lai – Mục tiêu bền vững: Với khẩu hiệu <strong>“<span style="color: #ff0000;">Lan Tỏa Cuộc Sống Số</span>”</strong> đặt tiêu chí được phụng sự khách hàng lên hàng đầu, vì vậy kim chỉ nam cho hướng phát triển của GM TECH luôn là: <br /><em>- Chất lượng đỉnh cao cho sản phẩm.</em><br /><em>- Giá cả cạnh tranh với thị trường</em><br /><em>- Chu đáo trong Bảo hành sản phẩm</em><br /><em>- Chuyên nghiệp trong phân phối, bán hàng.</em><br /><br />Bằng  việc độc quyền sở hữu thương hiệu GoodM! cùng với lòng quyết tâm và tâm  huyết của toàn Công ty, chúng tôi tin tưởng rằng GM TECH sẽ vững vàng  phát triển, đưa công nghệ thông tin ngày càng đến Gần hơn, Nhanh hơn,  Nhiều hơn với mọi đối tượng khách hàng</p>', '', NULL, NULL, '[]', '', '2012-01-05 16:22:46', 62, '', 0, '0000-00-00 00:00:00', '2012-01-05 16:26:00', 62, '2012-01-05 16:22:46', '0000-00-00 00:00:00', 0, 0, 2, 0, 0, '', '', '', '', 76, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(29, 'Adame', 'adame', 2, 1, '<a name="top">Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 2*1.66 GHz, 1M Cache, 2 Cores.<br />Bộ nhớ RAM: DDR II 2 GB Up to 4GB<br />Card đồ họa: Intel Graphics Media Accelerator 3150</a>', '', NULL, '{gallery}29{/gallery}', '[{"id":"3","value":"<ul>\\r\\n<li>B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 2 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> M\\u00e0n h\\u00ecnh: 13.3-inch-HD LED display<\\/li>\\r\\n<li> \\u0110\\u1ed9 ph\\u00e2n gi\\u1ea3i: 1366 x 768pixel<\\/li>\\r\\n<li> HDD: 320 GB, 5400 rpm.<\\/li>\\r\\n<li> T\\u00edch h\\u1ee3p webcam 1.3 Mps.<\\/li>\\r\\n<li> Wireless 802.11 A\\/B\\/G\\/N<\\/li>\\r\\n<li> Modem 3G HSDPA: T\\u1ea7n s\\u1ed1 UMTS (2100\\/1900\\/850 MHz). D\\u00f9ng \\u0111\\u01b0\\u1ee3c cho t\\u1ea5t c\\u1ea3 c\\u00e1c m\\u1ea1ng 3G \\u1edf Vi\\u1ec7t Nam.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> Pin: Lithium Polymer th\\u1eddi gian t\\u1ed1i thi\\u1ec3u 3h.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"4","value":""},{"id":"5","value":""}]', '<ul>\r\n<li>Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 2 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> Màn hình: 13.3-inch-HD LED display</li>\r\n<li> Độ phân giải: 1366 x 768pixel</li>\r\n<li> HDD: 320 GB, 5400 rpm.</li>\r\n<li> Tích hợp webcam 1.3 Mps.</li>\r\n<li> Wireless 802.11 A/B/G/N</li>\r\n<li> Modem 3G HSDPA: Tần số UMTS (2100/1900/850 MHz). Dùng được cho tất cả các mạng 3G ở Việt Nam.</li>\r\n<li> Cổng giao tiếp: 2x USB, HDMI, LAN, micro và headphone.</li>\r\n<li> Pin: Lithium Polymer thời gian tối thiểu 3h.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul>   ', '2012-01-05 16:46:10', 62, '', 0, '0000-00-00 00:00:00', '2012-01-06 12:19:42', 62, '2012-01-05 16:46:10', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, '', '', '', '', 36, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(30, 'G166', 'g166', 2, 1, '<a name="top">\r\n<p style="text-align: justify;"><b>Đặc điểm sản phẩm</b></p>\r\n•&nbsp;&nbsp; &nbsp;Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•&nbsp;&nbsp; &nbsp;Bộ nhớ RAM: 1GB DDR2<br />•&nbsp;&nbsp; &nbsp;Card đồ họa Intel GMA 3150 (250Mb)<br />•&nbsp;&nbsp; &nbsp;Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•&nbsp;&nbsp; &nbsp;Ổ cứng 160 GB, 5400 rpm.</a>', '', NULL, '{gallery}30{/gallery}', '[{"id":"3","value":"<p><b>\\u0110\\u1eb7c \\u0111i\\u1ec3m s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450 (1,66 GHz)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 nh\\u1edb RAM: 1GB DDR2<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 (250Mb)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0M\\u00e0n h\\u00ecnh 13.3\\u201d chu\\u1ea9n WXGA v\\u1edbi \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i 1366x768 pixel. (chu\\u1ea9n 1080p h\\u1ed5 tr\\u1ee3 xem phim HD)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0\\u1ed4 c\\u1ee9ng 160 GB, 5400 rpm.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0T\\u00edch h\\u1ee3p webcam 1.3 Mps.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Wireless: Intel Wireless 802.11 a\\/b\\/g<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0C\\u00e1c c\\u1ed5ng v\\u00e0o\\/ra: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Khe c\\u1eafm m\\u1edf r\\u1ed9ng: \\u0111\\u1ea7u \\u0111\\u1ecdc th\\u1ebb 5 trong 1.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: H\\u1ed7 tr\\u1ee3 chu\\u1ea9n Windows<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Pin: 3 Cell Lithium Ion.<br \\/><br \\/>\\r\\n<p><b>Gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n<p>Saluto G166 l\\u00e0 d\\u00f2ng s\\u1ea3n ph\\u1ea9m m\\u1edbi c\\u1ee7a T\\u1eadp \\u0111o\\u00e0n Mega  Tech Hoa K\\u1ef3 h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng n\\u0103ng \\u0111\\u1ed9ng, h\\u1ecdc sinh sinh vi\\u00ean hay gi\\u1edbi  v\\u0103n ph\\u00f2ng. M\\u00e1y c\\u00f3 tr\\u1ecdng l\\u01b0\\u1ee3ng si\\u00eau nh\\u1eb9 v\\u1edbi c\\u00e1c d\\u00f2ng s\\u1ea3n ph\\u1ea9m MTXT c\\u00f3 m\\u00e0n  h\\u00ecnh 13.3\\u201d (1,2 kg) v\\u1edbi thi\\u1ebft k\\u1ebf m\\u1ecfng nh\\u1ea5t l\\u00e0 15 mm.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Saluto  G166 g\\u1ed3m 02 m\\u00e0u tr\\u1eafng s\\u1eefa v\\u00e0 m\\u00e0u \\u0111en v\\u1edbi v\\u1ecf c\\u00f3 kh\\u1ea3 n\\u0103ng ch\\u1ed1ng tr\\u1ea7y  s\\u01b0\\u1edbt. To\\u00e0n b\\u1ed9 th\\u00e2n m\\u00e1y \\u0111\\u01b0\\u1ee3c ph\\u1ee7 c\\u00f9ng t\\u00f4ng m\\u00e0u mang \\u0111\\u1ebfn c\\u1ea3m gi\\u00e1c ch\\u1eafc  ch\\u1eafn v\\u00e0 c\\u1ee9ng c\\u00e1p.<\\/p>\\r\\n<p>Saluto G166 c\\u00f3 ch\\u1ed7 \\u0111\\u1eb7t  tay \\u0111\\u1ee7 r\\u1ed9ng kh\\u00f4ng ch\\u1ec9 mang l\\u1ea1i c\\u1ea3m gi\\u00e1c tho\\u1ea3i m\\u00e1i khi so\\u1ea1n th\\u1ea3o v\\u0103n b\\u1ea3n  ngo\\u00e0i ra b\\u00e0n ph\\u00edm r\\u1eddi (chiclet) theo ti\\u00eau chu\\u1ea9n ISO t\\u1ea1o c\\u1ea3m gi\\u00e1c \\u00eam, nh\\u1eb9  khi s\\u1eed d\\u1ee5ng. Touchpad r\\u1ed9ng r\\u00e3i h\\u1ed7 tr\\u1ee3 c\\u1ea3m \\u1ee9ng \\u0111a \\u0111i\\u1ec3m kh\\u00e1 nh\\u1ea1y gi\\u00fap  ng\\u01b0i d\\u00f9ng khi d\\u1ec5 d\\u00e0ng \\u0111i\\u1ec1u khi\\u1ec3n con tr\\u1ecf.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>M\\u1ed9t  \\u0111i\\u1ec3m kh\\u00e1c bi\\u1ec7t \\u1edf Saluto G166 l\\u00e0 m\\u00e1y s\\u1eed d\\u1ee5ng b\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450  t\\u1ed1c \\u0111\\u1ed9 1,66 GHz, kh\\u00f4ng ch\\u1ec9 si\\u00eau ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng, vi x\\u1eed l\\u00fd n\\u00e0y c\\u00f2n  \\u0111\\u1ea3m b\\u1ea3o v\\u1eadn h\\u00e0nh m\\u01b0\\u1ee3t m\\u00e0 tr\\u00ean h\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh Windows 7 nh\\u1edd s\\u1ef1 h\\u1ed7 tr\\u1ee3 t\\u1eeb  Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 l\\u00ean \\u0111\\u1ebfn 250Mb t\\u00edch h\\u1ee3p ngay b\\u00ean trong nh\\u00e2n  CPU.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Tuy kh\\u00f4ng c\\u00f3  card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi nh\\u01b0ng h\\u00ecnh \\u1ea3nh tr\\u00ean m\\u00e0n h\\u00ecnh 13.3 inch c\\u1ee7a Saluto G166  v\\u1eabn r\\u1ea5t t\\u01b0\\u01a1i s\\u00e1ng v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng. \\u0110\\u1ed9 s\\u00e1ng m\\u00e0n h\\u00ecnh \\u0111\\u01b0\\u1ee3c t\\u00f9y ch\\u1ec9nh r\\u1ea5t linh  \\u0111\\u1ed9ng, c\\u00e2n \\u0111\\u1ed1i gi\\u1eefa hai y\\u1ebfu t\\u1ed1 l\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng. \\u0110\\u1ed9  ph\\u00e2n gi\\u1ea3i 1.366 x 768 pixel mang \\u0111\\u1ebfn m\\u1ed9t khung \\u1ea3nh r\\u1ed9ng \\u0111\\u1ee7 \\u0111\\u1ec3 th\\u01b0\\u1edfng  th\\u1ee9c c\\u00e1c b\\u1ed9 phim HD ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n<p>Webcam!  M\\u1ed9t t\\u00ednh n\\u0103ng c\\u1ea7n thi\\u1ebft khi h\\u1ed9i th\\u1ea3o tr\\u1ef1c tuy\\u1ebfn qua m\\u1ea1ng \\u0111ang ng\\u00e0y m\\u1ed9t  tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m m\\u1ea1nh c\\u1ee7a\\u00a0 Saluto G166, webcam b\\u1eaft h\\u00ecnh r\\u1ea5t t\\u1ed1t,  r\\u00f5 n\\u00e9t c\\u1ea3 trong \\u0111i\\u1ec1u ki\\u1ec7n \\u00e1nh s\\u00e1ng y\\u1ebfu.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>C\\u00e1c  c\\u1ed5ng k\\u1ebft n\\u1ed1i c\\u1ee7a Saluto G166 n\\u1eb1m k\\u00edn \\u0111\\u00e1o sau l\\u1edbp v\\u1ecf nh\\u1ef1a nh\\u1eb1m \\u0111\\u1ea3m b\\u1ea3o  t\\u00ednh th\\u1ea9m m\\u1ef9 v\\u00e0 thu\\u1eadn ti\\u00ean cho ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng s\\u1ea3n ph\\u1ea9m. Saluto G166 c\\u00f3  k\\u1ebft n\\u1ed1i \\u0111a d\\u1ea1ng v\\u1edbi 2 c\\u1ed5ng USB, c\\u1ed5ng HDMI, khe \\u0111\\u1ecdc th\\u1ebb, gi\\u1eafc audio v\\u00e0  Wi-Fi. M\\u00e1y h\\u1ed7 tr\\u1ee3 k\\u1ebft n\\u1ed1i 3G c\\u0169ng l\\u00e0 m\\u1ed9t t\\u00f9y ch\\u1ecdn h\\u1ee3p l\\u00fd n\\u1ebfu ng\\u01b0\\u1eddi d\\u00f9ng  hay ph\\u1ea3i \\u0111i c\\u00f4ng t\\u00e1c v\\u00e0 c\\u00f3 nhu n\\u1ed1i m\\u1ea1ng Internet th\\u01b0\\u1eddng xuy\\u00ean. Pin 4  cell Li-Ion m\\u00e1y cho ph\\u00e9p v\\u1eadn h\\u00e0nh li\\u00ean t\\u1ee5c trong g\\u1ea7n 2.5 ti\\u1ebfng v\\u1edbi c\\u00e1c  \\u1ee9ng d\\u1ee5ng \\u0111\\u01a1n gi\\u1ea3n.<\\/p>"},{"id":"4","value":""},{"id":"5","value":""}]', '<p><b>Đặc điểm sản phẩm</b></p>\r\n•    Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•    Bộ nhớ RAM: 1GB DDR2<br />•    Card đồ họa Intel GMA 3150 (250Mb)<br />•    Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•    Ổ cứng 160 GB, 5400 rpm.<br />•    Tích hợp webcam 1.3 Mps.<br />•    Wireless: Intel Wireless 802.11 a/b/g<br />•    Các cổng vào/ra: 2x USB, HDMI, LAN, micro và headphone.<br />•    Khe cắm mở rộng: đầu đọc thẻ 5 trong 1.<br />•    Hệ điều hành: Hỗ trợ chuẩn Windows<br />•    Pin: 3 Cell Lithium Ion.<br /><br />\r\n<p><b>Giới thiệu sản phẩm</b></p>\r\n<p>Saluto G166 là dòng sản phẩm mới của Tập đoàn Mega  Tech Hoa Kỳ hướng tới người dùng năng động, học sinh sinh viên hay giới  văn phòng. Máy có trọng lượng siêu nhẹ với các dòng sản phẩm MTXT có màn  hình 13.3” (1,2 kg) với thiết kế mỏng nhất là 15 mm.</p>\r\n<p> </p>\r\n<p>Saluto  G166 gồm 02 màu trắng sữa và màu đen với vỏ có khả năng chống trầy  sướt. Toàn bộ thân máy được phủ cùng tông màu mang đến cảm giác chắc  chắn và cứng cáp.</p>\r\n<p>Saluto G166 có chỗ đặt  tay đủ rộng không chỉ mang lại cảm giác thoải mái khi soạn thảo văn bản  ngoài ra bàn phím rời (chiclet) theo tiêu chuẩn ISO tạo cảm giác êm, nhẹ  khi sử dụng. Touchpad rộng rãi hỗ trợ cảm ứng đa điểm khá nhạy giúp  ngưi dùng khi dễ dàng điều khiển con trỏ.</p>\r\n<p> </p>\r\n<p>Một  điểm khác biệt ở Saluto G166 là máy sử dụng bộ vi xử lý Intel Atom N450  tốc độ 1,66 GHz, không chỉ siêu tiết kiệm năng lượng, vi xử lý này còn  đảm bảo vận hành mượt mà trên hệ điều hành Windows 7 nhờ sự hỗ trợ từ  Card đồ họa Intel GMA 3150 lên đến 250Mb tích hợp ngay bên trong nhân  CPU.</p>\r\n<p> </p>\r\n<p>Tuy không có  card đồ họa rời nhưng hình ảnh trên màn hình 13.3 inch của Saluto G166  vẫn rất tươi sáng và sống động. Độ sáng màn hình được tùy chỉnh rất linh  động, cân đối giữa hai yếu tố là chất lượng và tiết kiệm năng lượng. Độ  phân giải 1.366 x 768 pixel mang đến một khung ảnh rộng đủ để thưởng  thức các bộ phim HD chất lượng cao.</p>\r\n<p>Webcam!  Một tính năng cần thiết khi hội thảo trực tuyến qua mạng đang ngày một  trở nên phổ biến là điểm mạnh của  Saluto G166, webcam bắt hình rất tốt,  rõ nét cả trong điều kiện ánh sáng yếu.</p>\r\n<p> </p>\r\n<p>Các  cổng kết nối của Saluto G166 nằm kín đáo sau lớp vỏ nhựa nhằm đảm bảo  tính thẩm mỹ và thuận tiên cho người sử dụng sản phẩm. Saluto G166 có  kết nối đa dạng với 2 cổng USB, cổng HDMI, khe đọc thẻ, giắc audio và  Wi-Fi. Máy hỗ trợ kết nối 3G cũng là một tùy chọn hợp lý nếu người dùng  hay phải đi công tác và có nhu nối mạng Internet thường xuyên. Pin 4  cell Li-Ion máy cho phép vận hành liên tục trong gần 2.5 tiếng với các  ứng dụng đơn giản.</p>   ', '2012-01-05 17:09:45', 62, '', 0, '0000-00-00 00:00:00', '2012-01-06 12:14:28', 62, '2012-01-05 17:09:45', '0000-00-00 00:00:00', 0, 0, 4, 0, 0, '', '', '', '', 613, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(31, 'MU thanh lý hàng thải, tiếp tục săn đón Nasri', 'mu-thanh-lý-hàng-thải-tiếp-tục-săn-đón-nasri', 19, 1, '<p style="text-align: justify;"><strong><img src="images/stories/img1.png" width="93" height="93" alt="img1" style="float: left; margin-right: 5px;" />Sân Old Trafford vẫn khá nhộn nhịp với những chuyển động tích cực trên thị trường chuyển nhượng.</strong></p>\r\n<p style="text-align: justify;">Sunderland có vẻ như đang là "sân sau" của MU. Sau Wes Brown, hôm qua đến lượt John O''Shea chuyển đến thi đấu cho đội chủ sân Ánh Sáng. Họ đều là hậu vệ và được nhận xét là không còn nhiều giá trị sử dụng đối với MU.</p>\r\n', '\r\n<p style="text-align: justify;">Brown (trái) và O''Shea không phải là những ngôi sao lớn, nhưng gắn bó khá lâu ở MU nhờ sự đa năng và cần cù.</p>\r\n<p style="text-align: justify;">Các thương vụ kể trên được hoàn tất nhanh gọn, do cả hai câu lạc bộ đều dễ dàng tìm được tiếng nói chung.</p>\r\n<p style="text-align: justify;">Brown đã chuyển đến Sunderland hôm thứ ba tuần này, trong khi O''Shea cũng chuẩn bị ký hợp đồng có thời hạn bốn năm với đội bóng vùng Đông Bắc.</p>\r\n<img src="http://vnexpress.net/Files/Subject/3b/a2/bf/8b/mu.jpg" width="402" height="210" border="1" alt="Brown (trái) và O''Shea" style="display: block; margin-left: auto; margin-right: auto;" />\r\n<p style="text-align: justify;">Không chỉ hai cầu thủ kể trên, từ tháng trước Sunderland đã đề nghị MU bán cả tiền vệ trẻ Darron Gibson. Tuy nhiên, thương vụ thứ ba có vẻ như không được suôn sẻ, dù về mặt kỹ thuật MU đã đồng ý để Gibson ra đi.</p>\r\n<p style="text-align: justify;">Một số nguồn tin cho rằng đợt thanh lý lần này đem lại cho MU tổng cộng 12 triệu bảng.</p>\r\n<p style="text-align: justify;">O''Shea - gắn bó với MU từ đầu sự nghiệp đến nay - từng giành 5 chức vô địch Ngoại hạng Anh, một Cup FA, ba Cup Liên đoàn Anh và một Champions League. Trong khi đó Brown từng có gần 400 trận đấu cho MU trong 12 năm gắn bó.</p>\r\n<p style="text-align: justify;">Mùa trước cả hai cầu thủ này đều không có nhiều đóng góp cho MU do chấn thương liên miên, và vị trí của họ đã có những sự thay thế xứng đáng.</p>\r\n<p style="text-align: justify;">Trong một diễn biến khác,&nbsp;<strong><span color="#3f3f3f" style="color: #3f3f3f;">MU có vẻ như rất quyết tâm trong kế hoạch chiêu mộ Samir Nasri</span></strong> - tiền vệ ngôi sao của kình địch Arsenal. Mới đây họ đã đưa ra lời đề nghị trị giá 20 triệu bảng.</p>\r\n<p style="text-align: justify;">Bản thân Nasri cũng đang dùng dằng chưa quyết định về vấn đề tương lai. Anh đã từ chối ký hợp đồng mới, dù bản giao kèo hiện tại chỉ còn 12 tháng. Trong 24 giờ tới, tiền vệ người Pháp được cho là sẽ trực tiếp gặp HLV Arsene Wenger để nói chuyện.</p>\r\n<p style="text-align: justify;">Arsenal luôn tỏ rõ quan điểm không muốn bán Nasri, nhưng cầu thủ này cũng khẳng định cần một đội bóng có thể đem đến cho anh những danh hiệu.</p>\r\n<p style="text-align: justify;">Chelsea và Man City là hai tên tuổi khác được liên hệ nhiều với Nasri gần đây.</p>\r\n<p style="text-align: justify;">Trong mùa hè năm nay, MU tỏ ra tích cực mua sắm và đã chi tổng cộng 50 triệu bảng để chiêu mộ hậu vệ Phil Jones, tiền vệ Ashley Young và thủ môn David De Gea.</p>\r\n<p align="right"><strong>Doãn Mạnh</strong></p>', NULL, NULL, '[]', '', '2012-01-05 17:20:42', 62, '', 0, '0000-00-00 00:00:00', '2012-01-05 17:25:22', 62, '2012-01-05 17:20:42', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(32, 'Mở rộng khách sạn 5 sao cổ ở Sài Gòn ', 'mở-rộng-khách-sạn-5-sao-cổ-ở-sài-gòn', 19, 1, '<p><img src="images/stories/img1.png" style="float: left;" />Ngày 6/7, Tổng công ty du lịch Sài Gòn (Saigontourist) đã động thổ dự án mở rộng khách sạn Majestic 5 sao tại quận 1. Đây là một trong những khách sạn lâu đời nhất Sài Gòn với lối kiến trúc cổ điển của Pháp.</p>\r\n<p style="text-align: justify;">Dự án nằm trong chuỗi công trình trọng điểm của Saigontourist trong chiến lược phát triển giai đoạn 2011-2015 và do đơn vị này làm chủ đầu tư. Tổng mức đầu tư khoảng 1.900 tỷ đồng, dự kiến hoàn thành vào cuối năm 2014.</p>\r\n', '\r\n<p style="text-align: justify;">Theo kế hoạch, khối khách sạn Majestic hiện hữu vẫn tiếp tục kinh doanh, đồng thời được bổ sung 2 khối tháp cao mới 24 tầng và 27 tầng, với 350 phòng. Trong ba năm tới, nếu cộng cả số phòng cũ và mới thì khách sạn này sẽ có gần 540 phòng.</p>\r\n<p style="text-align: justify;">Khi hoàn thành, đây sẽ là một trong những khu phức hợp khách sạn 5 sao quy mô nhất tại TP HCM có đầy đủ dịch vụ cao cấp, mang nét kiến trúc hài hòa giữa cổ điển và hiện đại.</p>\r\n<p style="text-align: justify;">Phó Chủ tịch UBND TP HCM Nguyễn Thị Hồng cho rằng, công trình khi đưa vào hoạt động sẽ góp phần gia tăng lợi thế cạnh tranh và tăng uy thế ngành du lịch thành phố để trở thành điểm đến hấp dẫn trong khu vực.</p>\r\n<p style="text-align: justify;">Khách sạn Majestic được xây dựng tại trung tâm Sài Gòn từ năm 1925. Năm 2007 khách sạn đã được Tổng Cục du lịch xếp hạng 5 sao, có 175 phòng cùng các nhà hàng, phòng họp, hồ bơi… Đây là một trong những khách sạn có kiến trúc cổ nhất tại thành phố.</p>', NULL, NULL, '[]', '', '2012-01-05 17:51:13', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-05 17:51:13', '0000-00-00 00:00:00', 0, 0, 2, 0, 0, '', '', '', '', 10, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(33, 'Messi và Argentina hứng búa rìu dư luận', 'messi-và-argentina-hứng-búa-rìu-dư-luận', 19, 1, '<h2 style="font-family: ''Times New Roman''; font-size: 11pt; color: #5f5f5f; font-weight: bold;"><img src="images/stories/dmtech.png" style="float: left;" />Trận hòa thứ hai ở Copa America 2011 tạo nên làn sóng chỉ trích dồn dập nhằm vào tuyển Argentina trên các mặt báo. Như thường lệ, khi đội nhà chơi không tốt, Messi luôn là cái tên đầu tiên bị đem ra bêu riếu.</h2>\r\n', '\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">“Đây không phải là Messi”, tờ Olé giật tít trên trang nhất ngay sau trận hòa Colombia. Tờ thể thao Argentina này đánh giá&nbsp;<i>Cầu thủ hay nhất thế giới</i> hai năm qua đã có một trận đấu tồi tệ cả trên phương diện cá nhân lẫn tập thể, đến mức.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;"><i>Olé</i> dẫn ra hai tình huống để minh họa cho nỗi thất vọng về Messi. Đầu tiên là cú ngã rất vô duyên ở phút bù giờ thứ nhất hiệp một. Sau động tác qua người rất dẻo ở vòng tròn trung tâm, Messi chuyền bóng cho Banega rồi di chuyển để nhận lại bóng từ đồng đội. Nhưng anh lại di chuyển sớm một nhịp và đặt chân trụ không chuẩn để rồi ngã xuống lăn lộn ôm phần mắt cá chân phải bị đau . Vì cú ngã này, Messi phải thi đấu cả hiệp hai với cái chân phải bị băng bó và càng mờ nhạt hơn nữa so với hiệp đầu.</p>\r\n<table border="0" align="center" width="423" cellpadding="1" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td><img height="556" width="420" src="http://vnexpress.net/Files/Subject/3b/a2/bf/89/Messi.jpg" /></td>\r\n</tr>\r\n<tr>\r\n<td style="font-family: Arial; font-size: 8.5pt; color: #000000;">Messi (áo trắng xanh) vẫn chưa rũ bỏ được hình ảnh nhạt nhòa và yếu đuối tại Copa America 2011. Ảnh:&nbsp;<em>AFP.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">Tình huống còn lại là cú đá phạt trực tiếp đưa bóng đi tìm chim ở phút 61 (<strong><a href="http://vnexpress.net/gl/the-thao/2011/07/messi-va-argentina-hung-bua-riu-du-luan/Page_4.asp"><span style="color: #800080;" color="#800080">xem clip</span></a></strong>). Khi đá cho Barca, với vị trí đặt bóng ở mép vòng cấm hơi chếch bên cánh phải, Messi có thể biến đó thành cơ hội tốt để ghi bàn. Nhưng trước Colombia hôm qua, theo mô tả của&nbsp;<i>Olé</i>, “thật khó tin, Messi lại thực hiện một cách cẩu thả và quá thiếu chính xác đến vậy khi Argentina đang rất cần bàn thắng. Đến bố của anh ta ngồi trên khán đài cũng lắc đấu ngán ngẩm và không thể hiểu nỗi vì sao con trai ông lại xử lý như thế”.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">“Số 10 đơn giản không thể hiện được tiềm năng của anh ta, không thực hiện được những pha lừa bóng ở tốc độ cao trong trạng thái thăng bằng hoàn hảo. Những gì tích cực nhất về Messi hôm qua chỉ gói gọn ở tình huống anh tham gia vào pha đánh đầu dội cột của Lavezzi đầu hiệp hai ”, nhật báo thể thao này bình luận.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">Cũng là tờ&nbsp;<i>Olé</i>, trong một bài bình luận khác, mỉa mai “Đội tuyển của chúng ta vừa giành được một điểm tuyệt vời làm sao, bởi dù chơi dở tệ, họ vẫn không thua, bởi họ đã tạo điều kiện tối đa cho thủ môn trổ hết tài nghệ và được bầu làm Cầu thủ hay nhất trận. Nhờ một điểm này, chúng ta vẫn còn cơ hội xếp nhì bảng để tiếp tục nuôi hy vọng đi tiếp”.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">Bài bình luận này cũng phê phán dữ dội cách chơi của đội: “Một đội bóng không thể chơi tốt nếu chỉ dựa trên khả năng kiểm soát bóng. Họ chỉ chơi tốt nếu biết giữ bóng, chiếm lĩnh không gian và gây sức ép tốt về phía đối thủ. Trước Colombia, Argentina rất tệ ở khâu chiếm lĩnh không gian. Khi một cầu thủ nào đó giữ bóng, họ thường không biết chuyền đi đâu vì đồng đội chạy chỗ, di chuyển không bóng không tốt”.</p>\r\n<table border="0" align="center" width="1" cellpadding="1" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td><img height="385" width="490" src="http://vnexpress.net/Files/Subject/3b/a2/bf/89/Tevez.jpg" /></td>\r\n</tr>\r\n<tr>\r\n<td style="font-family: Arial; font-size: 8.5pt; color: #000000;">Argentina cầm bóng tốt, nhưng không hiệu quả. Ảnh:&nbsp;<em>AFP.</em></td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">Nhiều tờ báo khác ở Argentina cũng bày tỏ sự phẫn nộ và thất vọng khi đội tuyển, với cánh chim đầu đàn là siêu sao Messi, không cho thấy bất kỳ biểu hiện tiến bộ nào sau trận ra quân hòa thất vọng với Bolivia. Tờ&nbsp;<i>Clarin</i> bình luận “Thêm một màn trình diễn nghèo nàn nữa của Argentina . Hòa 0-0, nhưng Colombia mới là đội chơi tốt hơn và xứng đáng chiến thắng”.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000; text-align: justify;">“Một thất bại nữa của đội tuyển”, tờ&nbsp;<i>Diario Uno</i> viết. Tờ&nbsp;<i>La Nacion</i> phụ họa: “Đâu rồi sự nhịp nhàng? Đội tuyển đã biến những hy vọng thành nỗi thất vọng vô bờ bến trong 90 phút”. La Nacio còn cảnh báo tuyển Argentina sẽ bị người hâm mộ quay lưng khi sống mái với Costa Rica ở lượt cuối: “Đó là trận đấu then chốt cho hy vọng đi tiếp, nhưng nếu cứ chơi như hai trận vừa qua, đội tuyển sẽ chẳng còn nhận được sự mến mộ và tôn trọng trừ các CĐV trên cả nước”.</p>\r\n<p style="font-family: ''Times New Roman''; font-size: 11.8pt; color: #000000;" align="right"><strong>Minh Kha</strong></p>', NULL, NULL, '[]', '', '2012-01-05 17:58:01', 62, '', 0, '0000-00-00 00:00:00', '2012-01-05 17:59:22', 62, '2012-01-05 17:58:01', '0000-00-00 00:00:00', 0, 0, 3, 0, 0, '', '', '', '', 5, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(34, 'The EverRich 2 bán hàng đợt mới', 'the-everrich-2-bán-hàng-đợt-mới', 19, 1, '<p><strong><img style="float: left;" src="images/stories/img1.png" />Công ty CP Phát triển Bất động sản Phát Đạt – chủ đầu tư dự án The EverRich 2 (TP HCM) giới thiệu chương trình bán hàng mới. Thời gian mở bán từ ngày 15/7 đến khi hết 50 căn hộ.</strong></p>\r\n', '\r\n<p style="text-align: justify;" align="left">Phương thức thanh toán khi mua căn hộ The EverRich 2 sẽ được chia thành 48 đợt trong vòng 48 tháng. Theo đó, đợt 1 trả trước 10%; từ đợt 2 đến đợt 47, khách thanh toán 1,3% cho mỗi đợt; đợt 48 thanh toán 30% còn lại. Như vậy, từ tháng thứ 2 đến tháng 47, khách hàng thanh toán cho chủ đầu tư khoảng 40 triệu đồng một tháng.</p>\r\n<img src="http://vnexpress.net/Files/Subject/3b/a2/be/3f/bat_dong_san.JPG" style="display: block; margin-left: auto; margin-right: auto;" width="448" border="1" height="336" />\r\n<p style="text-align: justify;" align="left">Ngoài ra, 50 căn hộ The EverRich 2 còn được áp dụng chương trình “Tích lũy cho cuộc sống sung túc”. Theo đó, người mua không phải chi trả lãi suất ngân hàng mỗi tháng. Giá bán căn hộ được tính bằng VND, không thay đổi trong suốt thời hạn thanh toán.</p>\r\n<p style="text-align: justify;" align="left">The EverRich 2 có tổng diện tích 11,25 ha, mật độ xây dựng chỉ 23,6%. Đặc biệt, công viên rừng nhiệt đới 3,3 ha ngay trong lòng. The EverRich 2 được bố trí nhiều tiện ích như hồ bơi, sân tennis, khu vui chơi, công viên cây xanh…</p>\r\n<p align="right">(Nguồn:&nbsp;<em>Công ty CP Phát triển Bất động sản Phát Đạt</em>)</p>', NULL, NULL, '[]', '', '2012-01-05 17:59:54', 62, '', 0, '0000-00-00 00:00:00', '2012-01-06 19:35:56', 62, '2012-01-05 17:59:54', '0000-00-00 00:00:00', 0, 0, 4, 0, 0, '', '', '', '', 40, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(35, 'GoodM! GAE5800', 'goodm-gae5800', 3, 1, '<a name="top"><span style="text-decoration: underline;"><b>GAE 5800:</b></span> mang đầy đủ tính năng của một chiếc máy tính để bàn mạnh mẻ, được tích hợp với màn LCD sang trọng.</a>', '', NULL, '{gallery}35{/gallery}', '[{"id":"3","value":"<a name=\\"top\\">B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<br \\/> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<br \\/> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<br \\/> Chipset: Mobile Intel NM10 Express<br \\/> HDD: 160 GB, 5400 rpm.<br \\/> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<br \\/> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/a>"},{"id":"4","value":""},{"id":"5","value":""}]', '<a name="top">Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<br /> Bộ nhớ RAM: DDR II 1 GB Up to 4GB<br /> Card đồ họa: Intel Graphics Media Accelerator 3150<br /> Chipset: Mobile Intel NM10 Express<br /> HDD: 160 GB, 5400 rpm.<br /> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.<br /> Hệ điều hành: Dos</a>   ', '2012-01-05 18:03:01', 62, '', 0, '0000-00-00 00:00:00', '2012-01-06 12:13:47', 62, '2012-01-05 18:03:01', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, '', '', '', '', 76, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(36, 'Nettop PC', 'nettop-pc', 3, 1, 'Nettop, dòng máy tính để bàn mới. Sản phẩm được phát triển nhầm đem đến cho người sử dụng nhiều sự lựa chọn', '', NULL, '{gallery}36{/gallery}', '[{"id":"3","value":"<ul>\\r\\n<li>1 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"4","value":"<ul>\\r\\n<li>2 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"5","value":"<ul>\\r\\n<li>3 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"}]', '<ul>\r\n<li>1 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> <ul>\r\n<li>2 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> <ul>\r\n<li>3 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> ', '2012-01-05 18:18:51', 62, '', 62, '2012-01-06 19:35:29', '2012-01-06 12:12:52', 62, '2012-01-05 18:18:51', '0000-00-00 00:00:00', 0, 0, 3, 0, 0, '', '', '', '', 57, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(21, 'Flour', 'flour', 18, 0, '<p>Products<br />We offer a wide range of wheat flour catering for every requirement. The products are categorized as follows:</p>\r\n<p>{loadposition flour}</p>', '', NULL, NULL, NULL, '', '2011-09-22 07:17:34', 62, '', 0, '0000-00-00 00:00:00', '2011-09-22 07:28:09', 62, '2011-09-22 07:17:34', '0000-00-00 00:00:00', 1, 0, 4, 0, 0, '', '', '', '', 90, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(22, 'Nguoi tieu dung lo lang chat phu gia trong mi chinh', 'nguoi-tieu-dung-lo-lang-chat-phu-gia-trong-mi-chinh', 18, 1, '<p><img style="float: left; margin-right: 10px;" src="images/stories/img1.png" />Đứng mua hàng tại một đại lý lớn trên đường Thái Hà, chị Quyên (Đê La  Thành, Hà Nội) cho hay quảng cáo trên đã ảnh hưởng ít nhiều đến tâm lý  tiêu dùng của gia đình chị.</p>\r\n<p style="text-align: justify;">"Ngày trước mình cũng không quan tâm  lắm đến việc lựa chọn loại mì nào nhưng sau khi xem quảng cáo trên Tivi  là vắt mì nào cho vào nước mà có màu vàng đục tức là có phẩm màu độc  hại, mình cũng thấy hơi lo nên hôm nay định sẽ mua một thùng mì loại  thành phần không có E102", chị Quyên nói.\r\n', '\r\n</p>\r\n<p style="text-align: justify;">Cũng như chị Quyên, chị Ngọc (Thái  Thịnh, Hà Nội) trong lúc chọn sản phẩm trong siêu thị gần nhà đã nghiêng  hẳn về những gói mì được quảng cáo không có chất phụ gia E102. Chị đã  mua hơn chục gói mì loại này và chỉ 2, 3 loại mì khác.</p>\r\n<p style="text-align: justify;">Chị giải thích, vì hai đứa con của chị  vẫn thích ăn mì xào nên vẫn mua một vài gói để chiều các cháu, chứ người  lớn trong gia đình chị giờ đây chỉ chọn ăn loại không có phẩm màu. Chị  chia sẻ là trong thời gian tới sẽ cố hướng các cháu ăn mì không có phẩm  màu để đảm bảo sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Thạch Thảo ở TP HCM thậm chí chuyển hẳn sang mua mì Hàn Quốc, loại có màu trắng ngà, cho cậu con trai của mình.</p>\r\n<p style="text-align: justify;">"Dù đắt hơn gấp đôi, nhưng an toàn cho con nên mình phải đổi", chị Thảo tâm sự.</p>\r\n<p style="text-align: justify;">Trên nhiều diễn đàn mạng, các bà mẹ còn  kháo nhau nếu mua mì ăn liền thì nên xem kỹ thành phần và chỉ chọn loại  không có phẩm màu vàng E102 để tự cứu mình.</p>\r\n<p style="text-align: justify;">Tâm lý lo lắng của người tiêu dùng bắt  đầu rộ lên sau khi Công ty Masan quảng cáo cho sản phẩm mì mới với tuyên  bố không dùng chất màu tổng hợp E102, vì coi đây là chất không tốt cho  sức khỏe, đã bị cấm sử dụng tại Nhật Bản, Hàn Quốc. Cũng theo mẩu quảng  cáo này, khi cho vắt mì vào nước, nếu thấy màu đậm là không tốt cho sức  khỏe.</p>\r\n<p style="text-align: justify;">Chính bởi tâm lý lo ngại trên của một bộ  phận không nhỏ người tiêu dùng nên số lượng bán ra của các loại mỳ gói  tại nhiều đại lý có xu hướng thay đổi.</p>\r\n<p style="text-align: justify;">Bác An, chủ cửa hàng đại lý trên phố Tây  Sơn (Hà Nội) kể, gần hai tuần nay không phải nhập thêm những loại mì  trên bao bì ghi thành phần E102, vì vẫn còn nhiều. Nhưng loại được quảng  cáo là không có chất này và đặc biệt là mỳ Nhật, Hàn Quốc, lượng bán ra  tăng tới gần chục thùng một tuần so với trước.</p>\r\n<p style="text-align: justify;">"Khách đến mua chỉ chăm chăm chọn loại  nào không có phẩm màu vàng và chọn mua nhiều hơn mì của nước ngoài vì  vắt mì của các hãng đó có màu vàng rất nhạt", bác An cung cấp.</p>\r\n<p style="text-align: justify;">Sau quảng cáo mì Tiến Vua bò cải chua  của Công ty Masan, Acecook Việt Namđã có văn bản khiếu nại lên Cục quản  lý cạnh tranh và yêu cầu ngừng truyền thông. Thị trường người tiêu dùng  cũng phần nào hoang mang khi đa phần các sản phẩm mì gói ở Việt Nam đều  chứa phẩm vàng tổng hợp E102, bao gồm cả mì Tiến Vua (cũ) và Omachi của  chính công ty Masan.</p>\r\n<p style="text-align: justify;">Ông Kajiwara Junichi,Tổng Giám Đốc công  ty cổ phần Acecook Việt Nam cho biết, lượng bán hàng của công ty cũng bị  ảnh hưởng vì lý do hiệu ứng sản phẩm mới và quảng cáo của Masan.</p>\r\n<p style="text-align: justify;">Tuy nhiên, quản lý của một số siêu thị,  thị phần mì gói không mấy thay đổi vì vẫn có một bộ phận người tiêu dùng  giữ thói quen và sở thích cũ. Họ cho rằng các gói mì trên thị trường  đều được cấp phép đầy đủ và đã ăn uống nhiều năm nay nhưng chưa từng gặp  vấn đề gì về sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Nguyễn Thanh Huyền, phụ trách truyền  thông của hệ thống siêu thị Big C Miền Bắc và Miền Trung khẳng định sau  quảng cáo trên, số lượng mì bán ra của các hãng mì ngoài Masan vẫn ổn  định.</p>\r\n<p style="text-align: justify;">Một quản lý của hệ thống siêu thị tại Hà  Nội cho biết, việc kinh doanh các loại mì gói vẫn bình thường. Chị này  cung cấp thêm, cuối tháng 6 vừa rồi, số lượng bán ra của loại mì Tiến  Vua có tăng hơn nhưng đó là do hãng này có chương trình khuyến mãi, giảm  500 đồng mỗi gói và mua chục gói, được tặng một chai tương ớt.</p>\r\n<p style="text-align: justify;">Một quản lý cao cấp của hệ thống phân  phối hàng tiêu dùng khác còn thẳng thắn từ chối đưa thông tin khi cho  rằng đó là cuộc chiến của các bên liên quan. Và họ đều là khách hàng lớn  của công ty chị nên không thể tiết lộ.</p>\r\n<p style="text-align: justify;">Trước phản ứng đa chiều của người tiêu  dùng về vấn đề này, GS, TS Trần Đáng, nguyên Cục trưởng cục An toàn Vệ  sinh Thực phẩm của Bộ Y tế cho rằng người tiêu dùng không nên hoang  mang.</p>\r\n<p style="text-align: justify;">Theo Giáo sư, E102 là chất phụ gia vẫn  được cho phép sử dụng tại nhiều nước trên thế giới. Nếu dùng trong hàm  lượng cho phép (300mg/ mỗi kg mì) thì không ảnh hưởng đến sức khỏe của  người trưởng thành. Với trẻ nhỏ, tiêu chuẩn về hàm lượng này thấp hơn.</p>\r\n<p style="text-align: justify;">Tuy nhiên, GS, TS Trần Đáng cũng đưa ra  khuyến cáo với người tiêu dùng là khi chọn mua mì gói, khách hàng cũng  cần xem kỹ thành phần ghi trên bao bì để chọn những sản phẩm có hàm  lượng E102 trong giới hạn cho phép của Bộ Y tế.</p>\r\n<b> </b>', NULL, NULL, NULL, '', '2012-01-04 00:12:45', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 05:26:13', 62, '2012-01-04 00:12:45', '0000-00-00 00:00:00', 1, 0, 3, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(23, 'Nguoi tieu dung lo lang chat phu gia trong mi chinh', 'nguoi-tieu-dung-lo-lang-chat-phu-gia-trong-mi-chinh', 18, 1, '<p><img style="float: left; margin-right: 10px;" src="images/stories/img1.png" />Đứng mua hàng tại một đại lý lớn trên đường Thái Hà, chị Quyên (Đê La  Thành, Hà Nội) cho hay quảng cáo trên đã ảnh hưởng ít nhiều đến tâm lý  tiêu dùng của gia đình chị.</p>\r\n<p style="text-align: justify;">"Ngày trước mình cũng không quan tâm  lắm đến việc lựa chọn loại mì nào nhưng sau khi xem quảng cáo trên Tivi  là vắt mì nào cho vào nước mà có màu vàng đục tức là có phẩm màu độc  hại, mình cũng thấy hơi lo nên hôm nay định sẽ mua một thùng mì loại  thành phần không có E102", chị Quyên nói.\r\n', '\r\n</p>\r\n<p style="text-align: justify;">Cũng như chị Quyên, chị Ngọc (Thái  Thịnh, Hà Nội) trong lúc chọn sản phẩm trong siêu thị gần nhà đã nghiêng  hẳn về những gói mì được quảng cáo không có chất phụ gia E102. Chị đã  mua hơn chục gói mì loại này và chỉ 2, 3 loại mì khác.</p>\r\n<p style="text-align: justify;">Chị giải thích, vì hai đứa con của chị  vẫn thích ăn mì xào nên vẫn mua một vài gói để chiều các cháu, chứ người  lớn trong gia đình chị giờ đây chỉ chọn ăn loại không có phẩm màu. Chị  chia sẻ là trong thời gian tới sẽ cố hướng các cháu ăn mì không có phẩm  màu để đảm bảo sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Thạch Thảo ở TP HCM thậm chí chuyển hẳn sang mua mì Hàn Quốc, loại có màu trắng ngà, cho cậu con trai của mình.</p>\r\n<p style="text-align: justify;">"Dù đắt hơn gấp đôi, nhưng an toàn cho con nên mình phải đổi", chị Thảo tâm sự.</p>\r\n<p style="text-align: justify;">Trên nhiều diễn đàn mạng, các bà mẹ còn  kháo nhau nếu mua mì ăn liền thì nên xem kỹ thành phần và chỉ chọn loại  không có phẩm màu vàng E102 để tự cứu mình.</p>\r\n<p style="text-align: justify;">Tâm lý lo lắng của người tiêu dùng bắt  đầu rộ lên sau khi Công ty Masan quảng cáo cho sản phẩm mì mới với tuyên  bố không dùng chất màu tổng hợp E102, vì coi đây là chất không tốt cho  sức khỏe, đã bị cấm sử dụng tại Nhật Bản, Hàn Quốc. Cũng theo mẩu quảng  cáo này, khi cho vắt mì vào nước, nếu thấy màu đậm là không tốt cho sức  khỏe.</p>\r\n<p style="text-align: justify;">Chính bởi tâm lý lo ngại trên của một bộ  phận không nhỏ người tiêu dùng nên số lượng bán ra của các loại mỳ gói  tại nhiều đại lý có xu hướng thay đổi.</p>\r\n<p style="text-align: justify;">Bác An, chủ cửa hàng đại lý trên phố Tây  Sơn (Hà Nội) kể, gần hai tuần nay không phải nhập thêm những loại mì  trên bao bì ghi thành phần E102, vì vẫn còn nhiều. Nhưng loại được quảng  cáo là không có chất này và đặc biệt là mỳ Nhật, Hàn Quốc, lượng bán ra  tăng tới gần chục thùng một tuần so với trước.</p>\r\n<p style="text-align: justify;">"Khách đến mua chỉ chăm chăm chọn loại  nào không có phẩm màu vàng và chọn mua nhiều hơn mì của nước ngoài vì  vắt mì của các hãng đó có màu vàng rất nhạt", bác An cung cấp.</p>\r\n<p style="text-align: justify;">Sau quảng cáo mì Tiến Vua bò cải chua  của Công ty Masan, Acecook Việt Namđã có văn bản khiếu nại lên Cục quản  lý cạnh tranh và yêu cầu ngừng truyền thông. Thị trường người tiêu dùng  cũng phần nào hoang mang khi đa phần các sản phẩm mì gói ở Việt Nam đều  chứa phẩm vàng tổng hợp E102, bao gồm cả mì Tiến Vua (cũ) và Omachi của  chính công ty Masan.</p>\r\n<p style="text-align: justify;">Ông Kajiwara Junichi,Tổng Giám Đốc công  ty cổ phần Acecook Việt Nam cho biết, lượng bán hàng của công ty cũng bị  ảnh hưởng vì lý do hiệu ứng sản phẩm mới và quảng cáo của Masan.</p>\r\n<p style="text-align: justify;">Tuy nhiên, quản lý của một số siêu thị,  thị phần mì gói không mấy thay đổi vì vẫn có một bộ phận người tiêu dùng  giữ thói quen và sở thích cũ. Họ cho rằng các gói mì trên thị trường  đều được cấp phép đầy đủ và đã ăn uống nhiều năm nay nhưng chưa từng gặp  vấn đề gì về sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Nguyễn Thanh Huyền, phụ trách truyền  thông của hệ thống siêu thị Big C Miền Bắc và Miền Trung khẳng định sau  quảng cáo trên, số lượng mì bán ra của các hãng mì ngoài Masan vẫn ổn  định.</p>\r\n<p style="text-align: justify;">Một quản lý của hệ thống siêu thị tại Hà  Nội cho biết, việc kinh doanh các loại mì gói vẫn bình thường. Chị này  cung cấp thêm, cuối tháng 6 vừa rồi, số lượng bán ra của loại mì Tiến  Vua có tăng hơn nhưng đó là do hãng này có chương trình khuyến mãi, giảm  500 đồng mỗi gói và mua chục gói, được tặng một chai tương ớt.</p>\r\n<p style="text-align: justify;">Một quản lý cao cấp của hệ thống phân  phối hàng tiêu dùng khác còn thẳng thắn từ chối đưa thông tin khi cho  rằng đó là cuộc chiến của các bên liên quan. Và họ đều là khách hàng lớn  của công ty chị nên không thể tiết lộ.</p>\r\n<p style="text-align: justify;">Trước phản ứng đa chiều của người tiêu  dùng về vấn đề này, GS, TS Trần Đáng, nguyên Cục trưởng cục An toàn Vệ  sinh Thực phẩm của Bộ Y tế cho rằng người tiêu dùng không nên hoang  mang.</p>\r\n<p style="text-align: justify;">Theo Giáo sư, E102 là chất phụ gia vẫn  được cho phép sử dụng tại nhiều nước trên thế giới. Nếu dùng trong hàm  lượng cho phép (300mg/ mỗi kg mì) thì không ảnh hưởng đến sức khỏe của  người trưởng thành. Với trẻ nhỏ, tiêu chuẩn về hàm lượng này thấp hơn.</p>\r\n<p style="text-align: justify;">Tuy nhiên, GS, TS Trần Đáng cũng đưa ra  khuyến cáo với người tiêu dùng là khi chọn mua mì gói, khách hàng cũng  cần xem kỹ thành phần ghi trên bao bì để chọn những sản phẩm có hàm  lượng E102 trong giới hạn cho phép của Bộ Y tế.</p>\r\n<b> </b>', NULL, NULL, NULL, '', '2012-01-04 00:12:45', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 05:26:13', 62, '2012-01-04 00:12:45', '0000-00-00 00:00:00', 1, 0, 2, 0, 0, '', '', '', '', 2, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(24, 'Nguoi tieu dung lo lang chat phu gia trong mi chinh 2', 'nguoi-tieu-dung-lo-lang-chat-phu-gia-trong-mi-chinh-2', 18, 1, '<p><img style="float: left; margin-right: 10px;" src="images/stories/img1.png" />Đứng mua hàng tại một đại lý lớn trên đường Thái Hà, chị Quyên (Đê La  Thành, Hà Nội) cho hay quảng cáo trên đã ảnh hưởng ít nhiều đến tâm lý  tiêu dùng của gia đình chị.</p>\r\n<p style="text-align: justify;">"Ngày trước mình cũng không quan tâm  lắm đến việc lựa chọn loại mì nào nhưng sau khi xem quảng cáo trên Tivi  là vắt mì nào cho vào nước mà có màu vàng đục tức là có phẩm màu độc  hại, mình cũng thấy hơi lo nên hôm nay định sẽ mua một thùng mì loại  thành phần không có E102", chị Quyên nói.</p>\r\n<p style="text-align: justify;">\r\n', '\r\nCũng như chị Quyên, chị Ngọc (Thái  Thịnh, Hà Nội) trong lúc chọn sản phẩm trong siêu thị gần nhà đã nghiêng  hẳn về những gói mì được quảng cáo không có chất phụ gia E102. Chị đã  mua hơn chục gói mì loại này và chỉ 2, 3 loại mì khác.</p>\r\n<p style="text-align: justify;">Chị giải thích, vì hai đứa con của chị  vẫn thích ăn mì xào nên vẫn mua một vài gói để chiều các cháu, chứ người  lớn trong gia đình chị giờ đây chỉ chọn ăn loại không có phẩm màu. Chị  chia sẻ là trong thời gian tới sẽ cố hướng các cháu ăn mì không có phẩm  màu để đảm bảo sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Thạch Thảo ở TP HCM thậm chí chuyển hẳn sang mua mì Hàn Quốc, loại có màu trắng ngà, cho cậu con trai của mình.</p>\r\n<p style="text-align: justify;">"Dù đắt hơn gấp đôi, nhưng an toàn cho con nên mình phải đổi", chị Thảo tâm sự.</p>\r\n<p style="text-align: justify;">Trên nhiều diễn đàn mạng, các bà mẹ còn  kháo nhau nếu mua mì ăn liền thì nên xem kỹ thành phần và chỉ chọn loại  không có phẩm màu vàng E102 để tự cứu mình.</p>\r\n<p style="text-align: justify;">Tâm lý lo lắng của người tiêu dùng bắt  đầu rộ lên sau khi Công ty Masan quảng cáo cho sản phẩm mì mới với tuyên  bố không dùng chất màu tổng hợp E102, vì coi đây là chất không tốt cho  sức khỏe, đã bị cấm sử dụng tại Nhật Bản, Hàn Quốc. Cũng theo mẩu quảng  cáo này, khi cho vắt mì vào nước, nếu thấy màu đậm là không tốt cho sức  khỏe.</p>\r\n<p style="text-align: justify;">Chính bởi tâm lý lo ngại trên của một bộ  phận không nhỏ người tiêu dùng nên số lượng bán ra của các loại mỳ gói  tại nhiều đại lý có xu hướng thay đổi.</p>\r\n<p style="text-align: justify;">Bác An, chủ cửa hàng đại lý trên phố Tây  Sơn (Hà Nội) kể, gần hai tuần nay không phải nhập thêm những loại mì  trên bao bì ghi thành phần E102, vì vẫn còn nhiều. Nhưng loại được quảng  cáo là không có chất này và đặc biệt là mỳ Nhật, Hàn Quốc, lượng bán ra  tăng tới gần chục thùng một tuần so với trước.</p>\r\n<p style="text-align: justify;">"Khách đến mua chỉ chăm chăm chọn loại  nào không có phẩm màu vàng và chọn mua nhiều hơn mì của nước ngoài vì  vắt mì của các hãng đó có màu vàng rất nhạt", bác An cung cấp.</p>\r\n<p style="text-align: justify;">Sau quảng cáo mì Tiến Vua bò cải chua  của Công ty Masan, Acecook Việt Namđã có văn bản khiếu nại lên Cục quản  lý cạnh tranh và yêu cầu ngừng truyền thông. Thị trường người tiêu dùng  cũng phần nào hoang mang khi đa phần các sản phẩm mì gói ở Việt Nam đều  chứa phẩm vàng tổng hợp E102, bao gồm cả mì Tiến Vua (cũ) và Omachi của  chính công ty Masan.</p>\r\n<p style="text-align: justify;">Ông Kajiwara Junichi,Tổng Giám Đốc công  ty cổ phần Acecook Việt Nam cho biết, lượng bán hàng của công ty cũng bị  ảnh hưởng vì lý do hiệu ứng sản phẩm mới và quảng cáo của Masan.</p>\r\n<p style="text-align: justify;">Tuy nhiên, quản lý của một số siêu thị,  thị phần mì gói không mấy thay đổi vì vẫn có một bộ phận người tiêu dùng  giữ thói quen và sở thích cũ. Họ cho rằng các gói mì trên thị trường  đều được cấp phép đầy đủ và đã ăn uống nhiều năm nay nhưng chưa từng gặp  vấn đề gì về sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Nguyễn Thanh Huyền, phụ trách truyền  thông của hệ thống siêu thị Big C Miền Bắc và Miền Trung khẳng định sau  quảng cáo trên, số lượng mì bán ra của các hãng mì ngoài Masan vẫn ổn  định.</p>\r\n<p style="text-align: justify;">Một quản lý của hệ thống siêu thị tại Hà  Nội cho biết, việc kinh doanh các loại mì gói vẫn bình thường. Chị này  cung cấp thêm, cuối tháng 6 vừa rồi, số lượng bán ra của loại mì Tiến  Vua có tăng hơn nhưng đó là do hãng này có chương trình khuyến mãi, giảm  500 đồng mỗi gói và mua chục gói, được tặng một chai tương ớt.</p>\r\n<p style="text-align: justify;">Một quản lý cao cấp của hệ thống phân  phối hàng tiêu dùng khác còn thẳng thắn từ chối đưa thông tin khi cho  rằng đó là cuộc chiến của các bên liên quan. Và họ đều là khách hàng lớn  của công ty chị nên không thể tiết lộ.</p>\r\n<p style="text-align: justify;">Trước phản ứng đa chiều của người tiêu  dùng về vấn đề này, GS, TS Trần Đáng, nguyên Cục trưởng cục An toàn Vệ  sinh Thực phẩm của Bộ Y tế cho rằng người tiêu dùng không nên hoang  mang.</p>\r\n<p style="text-align: justify;">Theo Giáo sư, E102 là chất phụ gia vẫn  được cho phép sử dụng tại nhiều nước trên thế giới. Nếu dùng trong hàm  lượng cho phép (300mg/ mỗi kg mì) thì không ảnh hưởng đến sức khỏe của  người trưởng thành. Với trẻ nhỏ, tiêu chuẩn về hàm lượng này thấp hơn.</p>\r\n<p style="text-align: justify;">Tuy nhiên, GS, TS Trần Đáng cũng đưa ra  khuyến cáo với người tiêu dùng là khi chọn mua mì gói, khách hàng cũng  cần xem kỹ thành phần ghi trên bao bì để chọn những sản phẩm có hàm  lượng E102 trong giới hạn cho phép của Bộ Y tế.</p>\r\n<b> </b>', NULL, NULL, NULL, '', '2012-01-04 00:12:45', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 05:26:37', 62, '2012-01-04 00:12:45', '0000-00-00 00:00:00', 1, 0, 1, 0, 0, '', '', '', '', 4, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(25, 'Flour', 'flour', 19, 0, '<p>Products<br />We offer a wide range of wheat flour catering for every requirement. The products are categorized as follows:</p>\r\n<p>{loadposition flour}</p>', '', NULL, NULL, NULL, '', '2011-09-22 07:17:34', 62, '', 0, '0000-00-00 00:00:00', '2011-09-22 07:28:09', 62, '2011-09-22 07:17:34', '0000-00-00 00:00:00', 1, 0, 1, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(26, 'Nguoi tieu dung lo lang chat phu gia trong mi chinh 2', 'nguoi-tieu-dung-lo-lang-chat-phu-gia-trong-mi-chinh-2', 19, 1, '<p><img style="float: left; margin-right: 10px;" src="images/stories/img1.png" />Đứng mua hàng tại một đại lý lớn trên đường Thái Hà, chị Quyên (Đê La  Thành, Hà Nội) cho hay quảng cáo trên đã ảnh hưởng ít nhiều đến tâm lý  tiêu dùng của gia đình chị.</p>\r\n<p style="text-align: justify;">"Ngày trước mình cũng không quan tâm  lắm đến việc lựa chọn loại mì nào nhưng sau khi xem quảng cáo trên Tivi  là vắt mì nào cho vào nước mà có màu vàng đục tức là có phẩm màu độc  hại, mình cũng thấy hơi lo nên hôm nay định sẽ mua một thùng mì loại  thành phần không có E102", chị Quyên nói.</p>\r\n<p style="text-align: justify;">\r\n', '\r\nCũng như chị Quyên, chị Ngọc (Thái  Thịnh, Hà Nội) trong lúc chọn sản phẩm trong siêu thị gần nhà đã nghiêng  hẳn về những gói mì được quảng cáo không có chất phụ gia E102. Chị đã  mua hơn chục gói mì loại này và chỉ 2, 3 loại mì khác.</p>\r\n<p style="text-align: justify;">Chị giải thích, vì hai đứa con của chị  vẫn thích ăn mì xào nên vẫn mua một vài gói để chiều các cháu, chứ người  lớn trong gia đình chị giờ đây chỉ chọn ăn loại không có phẩm màu. Chị  chia sẻ là trong thời gian tới sẽ cố hướng các cháu ăn mì không có phẩm  màu để đảm bảo sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Thạch Thảo ở TP HCM thậm chí chuyển hẳn sang mua mì Hàn Quốc, loại có màu trắng ngà, cho cậu con trai của mình.</p>\r\n<p style="text-align: justify;">"Dù đắt hơn gấp đôi, nhưng an toàn cho con nên mình phải đổi", chị Thảo tâm sự.</p>\r\n<p style="text-align: justify;">Trên nhiều diễn đàn mạng, các bà mẹ còn  kháo nhau nếu mua mì ăn liền thì nên xem kỹ thành phần và chỉ chọn loại  không có phẩm màu vàng E102 để tự cứu mình.</p>\r\n<p style="text-align: justify;">Tâm lý lo lắng của người tiêu dùng bắt  đầu rộ lên sau khi Công ty Masan quảng cáo cho sản phẩm mì mới với tuyên  bố không dùng chất màu tổng hợp E102, vì coi đây là chất không tốt cho  sức khỏe, đã bị cấm sử dụng tại Nhật Bản, Hàn Quốc. Cũng theo mẩu quảng  cáo này, khi cho vắt mì vào nước, nếu thấy màu đậm là không tốt cho sức  khỏe.</p>\r\n<p style="text-align: justify;">Chính bởi tâm lý lo ngại trên của một bộ  phận không nhỏ người tiêu dùng nên số lượng bán ra của các loại mỳ gói  tại nhiều đại lý có xu hướng thay đổi.</p>\r\n<p style="text-align: justify;">Bác An, chủ cửa hàng đại lý trên phố Tây  Sơn (Hà Nội) kể, gần hai tuần nay không phải nhập thêm những loại mì  trên bao bì ghi thành phần E102, vì vẫn còn nhiều. Nhưng loại được quảng  cáo là không có chất này và đặc biệt là mỳ Nhật, Hàn Quốc, lượng bán ra  tăng tới gần chục thùng một tuần so với trước.</p>\r\n<p style="text-align: justify;">"Khách đến mua chỉ chăm chăm chọn loại  nào không có phẩm màu vàng và chọn mua nhiều hơn mì của nước ngoài vì  vắt mì của các hãng đó có màu vàng rất nhạt", bác An cung cấp.</p>\r\n<p style="text-align: justify;">Sau quảng cáo mì Tiến Vua bò cải chua  của Công ty Masan, Acecook Việt Namđã có văn bản khiếu nại lên Cục quản  lý cạnh tranh và yêu cầu ngừng truyền thông. Thị trường người tiêu dùng  cũng phần nào hoang mang khi đa phần các sản phẩm mì gói ở Việt Nam đều  chứa phẩm vàng tổng hợp E102, bao gồm cả mì Tiến Vua (cũ) và Omachi của  chính công ty Masan.</p>\r\n<p style="text-align: justify;">Ông Kajiwara Junichi,Tổng Giám Đốc công  ty cổ phần Acecook Việt Nam cho biết, lượng bán hàng của công ty cũng bị  ảnh hưởng vì lý do hiệu ứng sản phẩm mới và quảng cáo của Masan.</p>\r\n<p style="text-align: justify;">Tuy nhiên, quản lý của một số siêu thị,  thị phần mì gói không mấy thay đổi vì vẫn có một bộ phận người tiêu dùng  giữ thói quen và sở thích cũ. Họ cho rằng các gói mì trên thị trường  đều được cấp phép đầy đủ và đã ăn uống nhiều năm nay nhưng chưa từng gặp  vấn đề gì về sức khỏe.</p>\r\n<p style="text-align: justify;">Chị Nguyễn Thanh Huyền, phụ trách truyền  thông của hệ thống siêu thị Big C Miền Bắc và Miền Trung khẳng định sau  quảng cáo trên, số lượng mì bán ra của các hãng mì ngoài Masan vẫn ổn  định.</p>\r\n<p style="text-align: justify;">Một quản lý của hệ thống siêu thị tại Hà  Nội cho biết, việc kinh doanh các loại mì gói vẫn bình thường. Chị này  cung cấp thêm, cuối tháng 6 vừa rồi, số lượng bán ra của loại mì Tiến  Vua có tăng hơn nhưng đó là do hãng này có chương trình khuyến mãi, giảm  500 đồng mỗi gói và mua chục gói, được tặng một chai tương ớt.</p>\r\n<p style="text-align: justify;">Một quản lý cao cấp của hệ thống phân  phối hàng tiêu dùng khác còn thẳng thắn từ chối đưa thông tin khi cho  rằng đó là cuộc chiến của các bên liên quan. Và họ đều là khách hàng lớn  của công ty chị nên không thể tiết lộ.</p>\r\n<p style="text-align: justify;">Trước phản ứng đa chiều của người tiêu  dùng về vấn đề này, GS, TS Trần Đáng, nguyên Cục trưởng cục An toàn Vệ  sinh Thực phẩm của Bộ Y tế cho rằng người tiêu dùng không nên hoang  mang.</p>\r\n<p style="text-align: justify;">Theo Giáo sư, E102 là chất phụ gia vẫn  được cho phép sử dụng tại nhiều nước trên thế giới. Nếu dùng trong hàm  lượng cho phép (300mg/ mỗi kg mì) thì không ảnh hưởng đến sức khỏe của  người trưởng thành. Với trẻ nhỏ, tiêu chuẩn về hàm lượng này thấp hơn.</p>\r\n<p style="text-align: justify;">Tuy nhiên, GS, TS Trần Đáng cũng đưa ra  khuyến cáo với người tiêu dùng là khi chọn mua mì gói, khách hàng cũng  cần xem kỹ thành phần ghi trên bao bì để chọn những sản phẩm có hàm  lượng E102 trong giới hạn cho phép của Bộ Y tế.</p>\r\n<b> </b>', NULL, NULL, NULL, '', '2012-01-04 00:12:45', 62, '', 0, '0000-00-00 00:00:00', '2012-01-04 05:26:37', 62, '2012-01-04 00:12:45', '0000-00-00 00:00:00', 1, 0, 1, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(27, 'Liên hệ', 'liên-hệ', 23, 1, '<table border="0" cellpadding="5" cellspacing="5" style="width: 99%;">\r\n<tbody>\r\n<tr>\r\n<td>\r\n<p>﻿Công ty cổ phần công nghệ Ghềnh Mai</p>\r\n<p>Địa chỉ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;456 - 458 Hai Bà Trưng, P. Tân Định, Q.1, TP.HCM</p>\r\n<p>Điện thoại: &nbsp; &nbsp; &nbsp; (08) 6297. 8888</p>\r\n<p>Fax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(08) 6292. 6666</p>\r\n<p>E-mail: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;support@gmtechn.com</p>\r\n<p>Skype: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gmtechn</p>\r\n<p>Hotline: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 090 474 7789 (Mr. Sơn)</p>\r\n</td>\r\n<td>{rsform 3}</td>\r\n</tr>\r\n</tbody>\r\n</table>', '', NULL, NULL, NULL, '', '2012-01-05 15:12:08', 62, '', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, '2012-01-05 15:12:08', '0000-00-00 00:00:00', 0, 0, 1, 0, 0, '', '', '', '', 17, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(37, 'Nettop PC 2', 'nettop-pc2', 3, 1, 'Nettop, dòng máy tính để bàn mới. Sản phẩm được phát triển nhầm đem đến cho người sử dụng nhiều sự lựa chọn', '', NULL, '{gallery}37{/gallery}', '[{"id":"3","value":"<ul>\\r\\n<li>1 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"4","value":"<ul>\\r\\n<li>2 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"5","value":"<ul>\\r\\n<li>3 B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> HDD: 160 GB, 5400 rpm.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"}]', '<ul>\r\n<li>1 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> <ul>\r\n<li>2 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> <ul>\r\n<li>3 Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 1 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> HDD: 160 GB, 5400 rpm.</li>\r\n<li> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul> ', '2012-01-07 03:25:21', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 03:26:37', 62, '2012-01-05 18:18:51', '0000-00-00 00:00:00', 0, 0, 4, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(38, 'GoodM! GAE5800 2', 'goodm-gae58002', 3, 1, '<a name="top"><span style="text-decoration: underline;"><b>GAE 5800:</b></span> mang đầy đủ tính năng của một chiếc máy tính để bàn mạnh mẻ, được tích hợp với màn LCD sang trọng.</a>', '', NULL, '{gallery}38{/gallery}', '[{"id":"3","value":"<a name=\\"top\\">B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<br \\/> B\\u1ed9 nh\\u1edb RAM: DDR II 1 GB Up to 4GB<br \\/> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<br \\/> Chipset: Mobile Intel NM10 Express<br \\/> HDD: 160 GB, 5400 rpm.<br \\/> C\\u1ed5ng giao ti\\u1ebfp: 6x USBI, LAN, VGA, micro v\\u00e0 headphone.<br \\/> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/a>"},{"id":"4","value":""},{"id":"5","value":""}]', '<a name="top">Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<br /> Bộ nhớ RAM: DDR II 1 GB Up to 4GB<br /> Card đồ họa: Intel Graphics Media Accelerator 3150<br /> Chipset: Mobile Intel NM10 Express<br /> HDD: 160 GB, 5400 rpm.<br /> Cổng giao tiếp: 6x USBI, LAN, VGA, micro và headphone.<br /> Hệ điều hành: Dos</a>   ', '2012-01-07 03:25:21', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 03:26:12', 62, '2012-01-05 18:03:01', '0000-00-00 00:00:00', 0, 0, 2, 0, 0, '', '', '', '', 0, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(39, 'G166 2', 'g1662', 2, 1, '<a name="top">\r\n<p style="text-align: justify;"><b>Đặc điểm sản phẩm</b></p>\r\n•&nbsp;&nbsp; &nbsp;Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•&nbsp;&nbsp; &nbsp;Bộ nhớ RAM: 1GB DDR2<br />•&nbsp;&nbsp; &nbsp;Card đồ họa Intel GMA 3150 (250Mb)<br />•&nbsp;&nbsp; &nbsp;Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•&nbsp;&nbsp; &nbsp;Ổ cứng 160 GB, 5400 rpm.</a>', '', NULL, '{gallery}39{/gallery}', '[{"id":"3","value":"<p><b>\\u0110\\u1eb7c \\u0111i\\u1ec3m s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450 (1,66 GHz)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 nh\\u1edb RAM: 1GB DDR2<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 (250Mb)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0M\\u00e0n h\\u00ecnh 13.3\\u201d chu\\u1ea9n WXGA v\\u1edbi \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i 1366x768 pixel. (chu\\u1ea9n 1080p h\\u1ed5 tr\\u1ee3 xem phim HD)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0\\u1ed4 c\\u1ee9ng 160 GB, 5400 rpm.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0T\\u00edch h\\u1ee3p webcam 1.3 Mps.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Wireless: Intel Wireless 802.11 a\\/b\\/g<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0C\\u00e1c c\\u1ed5ng v\\u00e0o\\/ra: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Khe c\\u1eafm m\\u1edf r\\u1ed9ng: \\u0111\\u1ea7u \\u0111\\u1ecdc th\\u1ebb 5 trong 1.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: H\\u1ed7 tr\\u1ee3 chu\\u1ea9n Windows<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Pin: 3 Cell Lithium Ion.<br \\/><br \\/>\\r\\n<p><b>Gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n<p>Saluto G166 l\\u00e0 d\\u00f2ng s\\u1ea3n ph\\u1ea9m m\\u1edbi c\\u1ee7a T\\u1eadp \\u0111o\\u00e0n Mega  Tech Hoa K\\u1ef3 h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng n\\u0103ng \\u0111\\u1ed9ng, h\\u1ecdc sinh sinh vi\\u00ean hay gi\\u1edbi  v\\u0103n ph\\u00f2ng. M\\u00e1y c\\u00f3 tr\\u1ecdng l\\u01b0\\u1ee3ng si\\u00eau nh\\u1eb9 v\\u1edbi c\\u00e1c d\\u00f2ng s\\u1ea3n ph\\u1ea9m MTXT c\\u00f3 m\\u00e0n  h\\u00ecnh 13.3\\u201d (1,2 kg) v\\u1edbi thi\\u1ebft k\\u1ebf m\\u1ecfng nh\\u1ea5t l\\u00e0 15 mm.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Saluto  G166 g\\u1ed3m 02 m\\u00e0u tr\\u1eafng s\\u1eefa v\\u00e0 m\\u00e0u \\u0111en v\\u1edbi v\\u1ecf c\\u00f3 kh\\u1ea3 n\\u0103ng ch\\u1ed1ng tr\\u1ea7y  s\\u01b0\\u1edbt. To\\u00e0n b\\u1ed9 th\\u00e2n m\\u00e1y \\u0111\\u01b0\\u1ee3c ph\\u1ee7 c\\u00f9ng t\\u00f4ng m\\u00e0u mang \\u0111\\u1ebfn c\\u1ea3m gi\\u00e1c ch\\u1eafc  ch\\u1eafn v\\u00e0 c\\u1ee9ng c\\u00e1p.<\\/p>\\r\\n<p>Saluto G166 c\\u00f3 ch\\u1ed7 \\u0111\\u1eb7t  tay \\u0111\\u1ee7 r\\u1ed9ng kh\\u00f4ng ch\\u1ec9 mang l\\u1ea1i c\\u1ea3m gi\\u00e1c tho\\u1ea3i m\\u00e1i khi so\\u1ea1n th\\u1ea3o v\\u0103n b\\u1ea3n  ngo\\u00e0i ra b\\u00e0n ph\\u00edm r\\u1eddi (chiclet) theo ti\\u00eau chu\\u1ea9n ISO t\\u1ea1o c\\u1ea3m gi\\u00e1c \\u00eam, nh\\u1eb9  khi s\\u1eed d\\u1ee5ng. Touchpad r\\u1ed9ng r\\u00e3i h\\u1ed7 tr\\u1ee3 c\\u1ea3m \\u1ee9ng \\u0111a \\u0111i\\u1ec3m kh\\u00e1 nh\\u1ea1y gi\\u00fap  ng\\u01b0i d\\u00f9ng khi d\\u1ec5 d\\u00e0ng \\u0111i\\u1ec1u khi\\u1ec3n con tr\\u1ecf.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>M\\u1ed9t  \\u0111i\\u1ec3m kh\\u00e1c bi\\u1ec7t \\u1edf Saluto G166 l\\u00e0 m\\u00e1y s\\u1eed d\\u1ee5ng b\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450  t\\u1ed1c \\u0111\\u1ed9 1,66 GHz, kh\\u00f4ng ch\\u1ec9 si\\u00eau ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng, vi x\\u1eed l\\u00fd n\\u00e0y c\\u00f2n  \\u0111\\u1ea3m b\\u1ea3o v\\u1eadn h\\u00e0nh m\\u01b0\\u1ee3t m\\u00e0 tr\\u00ean h\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh Windows 7 nh\\u1edd s\\u1ef1 h\\u1ed7 tr\\u1ee3 t\\u1eeb  Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 l\\u00ean \\u0111\\u1ebfn 250Mb t\\u00edch h\\u1ee3p ngay b\\u00ean trong nh\\u00e2n  CPU.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Tuy kh\\u00f4ng c\\u00f3  card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi nh\\u01b0ng h\\u00ecnh \\u1ea3nh tr\\u00ean m\\u00e0n h\\u00ecnh 13.3 inch c\\u1ee7a Saluto G166  v\\u1eabn r\\u1ea5t t\\u01b0\\u01a1i s\\u00e1ng v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng. \\u0110\\u1ed9 s\\u00e1ng m\\u00e0n h\\u00ecnh \\u0111\\u01b0\\u1ee3c t\\u00f9y ch\\u1ec9nh r\\u1ea5t linh  \\u0111\\u1ed9ng, c\\u00e2n \\u0111\\u1ed1i gi\\u1eefa hai y\\u1ebfu t\\u1ed1 l\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng. \\u0110\\u1ed9  ph\\u00e2n gi\\u1ea3i 1.366 x 768 pixel mang \\u0111\\u1ebfn m\\u1ed9t khung \\u1ea3nh r\\u1ed9ng \\u0111\\u1ee7 \\u0111\\u1ec3 th\\u01b0\\u1edfng  th\\u1ee9c c\\u00e1c b\\u1ed9 phim HD ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n<p>Webcam!  M\\u1ed9t t\\u00ednh n\\u0103ng c\\u1ea7n thi\\u1ebft khi h\\u1ed9i th\\u1ea3o tr\\u1ef1c tuy\\u1ebfn qua m\\u1ea1ng \\u0111ang ng\\u00e0y m\\u1ed9t  tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m m\\u1ea1nh c\\u1ee7a\\u00a0 Saluto G166, webcam b\\u1eaft h\\u00ecnh r\\u1ea5t t\\u1ed1t,  r\\u00f5 n\\u00e9t c\\u1ea3 trong \\u0111i\\u1ec1u ki\\u1ec7n \\u00e1nh s\\u00e1ng y\\u1ebfu.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>C\\u00e1c  c\\u1ed5ng k\\u1ebft n\\u1ed1i c\\u1ee7a Saluto G166 n\\u1eb1m k\\u00edn \\u0111\\u00e1o sau l\\u1edbp v\\u1ecf nh\\u1ef1a nh\\u1eb1m \\u0111\\u1ea3m b\\u1ea3o  t\\u00ednh th\\u1ea9m m\\u1ef9 v\\u00e0 thu\\u1eadn ti\\u00ean cho ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng s\\u1ea3n ph\\u1ea9m. Saluto G166 c\\u00f3  k\\u1ebft n\\u1ed1i \\u0111a d\\u1ea1ng v\\u1edbi 2 c\\u1ed5ng USB, c\\u1ed5ng HDMI, khe \\u0111\\u1ecdc th\\u1ebb, gi\\u1eafc audio v\\u00e0  Wi-Fi. M\\u00e1y h\\u1ed7 tr\\u1ee3 k\\u1ebft n\\u1ed1i 3G c\\u0169ng l\\u00e0 m\\u1ed9t t\\u00f9y ch\\u1ecdn h\\u1ee3p l\\u00fd n\\u1ebfu ng\\u01b0\\u1eddi d\\u00f9ng  hay ph\\u1ea3i \\u0111i c\\u00f4ng t\\u00e1c v\\u00e0 c\\u00f3 nhu n\\u1ed1i m\\u1ea1ng Internet th\\u01b0\\u1eddng xuy\\u00ean. Pin 4  cell Li-Ion m\\u00e1y cho ph\\u00e9p v\\u1eadn h\\u00e0nh li\\u00ean t\\u1ee5c trong g\\u1ea7n 2.5 ti\\u1ebfng v\\u1edbi c\\u00e1c  \\u1ee9ng d\\u1ee5ng \\u0111\\u01a1n gi\\u1ea3n.<\\/p>"},{"id":"4","value":""},{"id":"5","value":""}]', '<p><b>Đặc điểm sản phẩm</b></p>\r\n•    Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•    Bộ nhớ RAM: 1GB DDR2<br />•    Card đồ họa Intel GMA 3150 (250Mb)<br />•    Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•    Ổ cứng 160 GB, 5400 rpm.<br />•    Tích hợp webcam 1.3 Mps.<br />•    Wireless: Intel Wireless 802.11 a/b/g<br />•    Các cổng vào/ra: 2x USB, HDMI, LAN, micro và headphone.<br />•    Khe cắm mở rộng: đầu đọc thẻ 5 trong 1.<br />•    Hệ điều hành: Hỗ trợ chuẩn Windows<br />•    Pin: 3 Cell Lithium Ion.<br /><br />\r\n<p><b>Giới thiệu sản phẩm</b></p>\r\n<p>Saluto G166 là dòng sản phẩm mới của Tập đoàn Mega  Tech Hoa Kỳ hướng tới người dùng năng động, học sinh sinh viên hay giới  văn phòng. Máy có trọng lượng siêu nhẹ với các dòng sản phẩm MTXT có màn  hình 13.3” (1,2 kg) với thiết kế mỏng nhất là 15 mm.</p>\r\n<p> </p>\r\n<p>Saluto  G166 gồm 02 màu trắng sữa và màu đen với vỏ có khả năng chống trầy  sướt. Toàn bộ thân máy được phủ cùng tông màu mang đến cảm giác chắc  chắn và cứng cáp.</p>\r\n<p>Saluto G166 có chỗ đặt  tay đủ rộng không chỉ mang lại cảm giác thoải mái khi soạn thảo văn bản  ngoài ra bàn phím rời (chiclet) theo tiêu chuẩn ISO tạo cảm giác êm, nhẹ  khi sử dụng. Touchpad rộng rãi hỗ trợ cảm ứng đa điểm khá nhạy giúp  ngưi dùng khi dễ dàng điều khiển con trỏ.</p>\r\n<p> </p>\r\n<p>Một  điểm khác biệt ở Saluto G166 là máy sử dụng bộ vi xử lý Intel Atom N450  tốc độ 1,66 GHz, không chỉ siêu tiết kiệm năng lượng, vi xử lý này còn  đảm bảo vận hành mượt mà trên hệ điều hành Windows 7 nhờ sự hỗ trợ từ  Card đồ họa Intel GMA 3150 lên đến 250Mb tích hợp ngay bên trong nhân  CPU.</p>\r\n<p> </p>\r\n<p>Tuy không có  card đồ họa rời nhưng hình ảnh trên màn hình 13.3 inch của Saluto G166  vẫn rất tươi sáng và sống động. Độ sáng màn hình được tùy chỉnh rất linh  động, cân đối giữa hai yếu tố là chất lượng và tiết kiệm năng lượng. Độ  phân giải 1.366 x 768 pixel mang đến một khung ảnh rộng đủ để thưởng  thức các bộ phim HD chất lượng cao.</p>\r\n<p>Webcam!  Một tính năng cần thiết khi hội thảo trực tuyến qua mạng đang ngày một  trở nên phổ biến là điểm mạnh của  Saluto G166, webcam bắt hình rất tốt,  rõ nét cả trong điều kiện ánh sáng yếu.</p>\r\n<p> </p>\r\n<p>Các  cổng kết nối của Saluto G166 nằm kín đáo sau lớp vỏ nhựa nhằm đảm bảo  tính thẩm mỹ và thuận tiên cho người sử dụng sản phẩm. Saluto G166 có  kết nối đa dạng với 2 cổng USB, cổng HDMI, khe đọc thẻ, giắc audio và  Wi-Fi. Máy hỗ trợ kết nối 3G cũng là một tùy chọn hợp lý nếu người dùng  hay phải đi công tác và có nhu nối mạng Internet thường xuyên. Pin 4  cell Li-Ion máy cho phép vận hành liên tục trong gần 2.5 tiếng với các  ứng dụng đơn giản.</p>   ', '2012-01-07 03:25:21', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 03:25:57', 62, '2012-01-05 17:09:45', '0000-00-00 00:00:00', 0, 0, 5, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(40, 'Adame2', 'adame2', 2, 1, '<a name="top">Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 2*1.66 GHz, 1M Cache, 2 Cores.<br />Bộ nhớ RAM: DDR II 2 GB Up to 4GB<br />Card đồ họa: Intel Graphics Media Accelerator 3150</a>', '', NULL, '{gallery}40{/gallery}', '[{"id":"3","value":"<ul>\\r\\n<li>B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 2 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> M\\u00e0n h\\u00ecnh: 13.3-inch-HD LED display<\\/li>\\r\\n<li> \\u0110\\u1ed9 ph\\u00e2n gi\\u1ea3i: 1366 x 768pixel<\\/li>\\r\\n<li> HDD: 320 GB, 5400 rpm.<\\/li>\\r\\n<li> T\\u00edch h\\u1ee3p webcam 1.3 Mps.<\\/li>\\r\\n<li> Wireless 802.11 A\\/B\\/G\\/N<\\/li>\\r\\n<li> Modem 3G HSDPA: T\\u1ea7n s\\u1ed1 UMTS (2100\\/1900\\/850 MHz). D\\u00f9ng \\u0111\\u01b0\\u1ee3c cho t\\u1ea5t c\\u1ea3 c\\u00e1c m\\u1ea1ng 3G \\u1edf Vi\\u1ec7t Nam.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> Pin: Lithium Polymer th\\u1eddi gian t\\u1ed1i thi\\u1ec3u 3h.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"4","value":""},{"id":"5","value":""}]', '<ul>\r\n<li>Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 2 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> Màn hình: 13.3-inch-HD LED display</li>\r\n<li> Độ phân giải: 1366 x 768pixel</li>\r\n<li> HDD: 320 GB, 5400 rpm.</li>\r\n<li> Tích hợp webcam 1.3 Mps.</li>\r\n<li> Wireless 802.11 A/B/G/N</li>\r\n<li> Modem 3G HSDPA: Tần số UMTS (2100/1900/850 MHz). Dùng được cho tất cả các mạng 3G ở Việt Nam.</li>\r\n<li> Cổng giao tiếp: 2x USB, HDMI, LAN, micro và headphone.</li>\r\n<li> Pin: Lithium Polymer thời gian tối thiểu 3h.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul>   ', '2012-01-07 03:25:21', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 03:25:40', 62, '2012-01-05 16:46:10', '0000-00-00 00:00:00', 0, 0, 2, 0, 0, '', '', '', '', 1, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(41, 'Adame3', 'adame3', 2, 1, '<a name="top">Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 2*1.66 GHz, 1M Cache, 2 Cores.<br />Bộ nhớ RAM: DDR II 2 GB Up to 4GB<br />Card đồ họa: Intel Graphics Media Accelerator 3150</a>', '', NULL, '{gallery}41{/gallery}', '[{"id":"3","value":"<ul>\\r\\n<li>B\\u1ed9 vi x\\u1eed l\\u00fd: Intel\\u00ae Atom\\u2122 Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.<\\/li>\\r\\n<li> B\\u1ed9 nh\\u1edb RAM: DDR II 2 GB Up to 4GB<\\/li>\\r\\n<li> Card \\u0111\\u1ed3 h\\u1ecda: Intel Graphics Media Accelerator 3150<\\/li>\\r\\n<li> Chipset: Mobile Intel NM10 Express<\\/li>\\r\\n<li> M\\u00e0n h\\u00ecnh: 13.3-inch-HD LED display<\\/li>\\r\\n<li> \\u0110\\u1ed9 ph\\u00e2n gi\\u1ea3i: 1366 x 768pixel<\\/li>\\r\\n<li> HDD: 320 GB, 5400 rpm.<\\/li>\\r\\n<li> T\\u00edch h\\u1ee3p webcam 1.3 Mps.<\\/li>\\r\\n<li> Wireless 802.11 A\\/B\\/G\\/N<\\/li>\\r\\n<li> Modem 3G HSDPA: T\\u1ea7n s\\u1ed1 UMTS (2100\\/1900\\/850 MHz). D\\u00f9ng \\u0111\\u01b0\\u1ee3c cho t\\u1ea5t c\\u1ea3 c\\u00e1c m\\u1ea1ng 3G \\u1edf Vi\\u1ec7t Nam.<\\/li>\\r\\n<li> C\\u1ed5ng giao ti\\u1ebfp: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<\\/li>\\r\\n<li> Pin: Lithium Polymer th\\u1eddi gian t\\u1ed1i thi\\u1ec3u 3h.<\\/li>\\r\\n<li> H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: Dos<\\/li>\\r\\n<\\/ul>"},{"id":"4","value":""},{"id":"5","value":""}]', '<ul>\r\n<li>Bộ vi xử lý: Intel® Atom™ Dual core Processor D510, 1.66 GHz, 1M Cache, 2 Cores.</li>\r\n<li> Bộ nhớ RAM: DDR II 2 GB Up to 4GB</li>\r\n<li> Card đồ họa: Intel Graphics Media Accelerator 3150</li>\r\n<li> Chipset: Mobile Intel NM10 Express</li>\r\n<li> Màn hình: 13.3-inch-HD LED display</li>\r\n<li> Độ phân giải: 1366 x 768pixel</li>\r\n<li> HDD: 320 GB, 5400 rpm.</li>\r\n<li> Tích hợp webcam 1.3 Mps.</li>\r\n<li> Wireless 802.11 A/B/G/N</li>\r\n<li> Modem 3G HSDPA: Tần số UMTS (2100/1900/850 MHz). Dùng được cho tất cả các mạng 3G ở Việt Nam.</li>\r\n<li> Cổng giao tiếp: 2x USB, HDMI, LAN, micro và headphone.</li>\r\n<li> Pin: Lithium Polymer thời gian tối thiểu 3h.</li>\r\n<li> Hệ điều hành: Dos</li>\r\n</ul>   ', '2012-01-07 04:09:14', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 04:09:52', 62, '2012-01-05 16:46:10', '0000-00-00 00:00:00', 0, 0, 3, 0, 0, '', '', '', '', 9, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');
INSERT INTO `jos_k2_items` VALUES(42, 'G166 3', 'g1663', 2, 1, '<a name="top">\r\n<p style="text-align: justify;"><b>Đặc điểm sản phẩm</b></p>\r\n•&nbsp;&nbsp; &nbsp;Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•&nbsp;&nbsp; &nbsp;Bộ nhớ RAM: 1GB DDR2<br />•&nbsp;&nbsp; &nbsp;Card đồ họa Intel GMA 3150 (250Mb)<br />•&nbsp;&nbsp; &nbsp;Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•&nbsp;&nbsp; &nbsp;Ổ cứng 160 GB, 5400 rpm.</a>', '', NULL, '{gallery}42{/gallery}', '[{"id":"3","value":"<p><b>\\u0110\\u1eb7c \\u0111i\\u1ec3m s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450 (1,66 GHz)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0B\\u1ed9 nh\\u1edb RAM: 1GB DDR2<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 (250Mb)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0M\\u00e0n h\\u00ecnh 13.3\\u201d chu\\u1ea9n WXGA v\\u1edbi \\u0111\\u1ed9 ph\\u00e2n gi\\u1ea3i 1366x768 pixel. (chu\\u1ea9n 1080p h\\u1ed5 tr\\u1ee3 xem phim HD)<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0\\u1ed4 c\\u1ee9ng 160 GB, 5400 rpm.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0T\\u00edch h\\u1ee3p webcam 1.3 Mps.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Wireless: Intel Wireless 802.11 a\\/b\\/g<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0C\\u00e1c c\\u1ed5ng v\\u00e0o\\/ra: 2x USB, HDMI, LAN, micro v\\u00e0 headphone.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Khe c\\u1eafm m\\u1edf r\\u1ed9ng: \\u0111\\u1ea7u \\u0111\\u1ecdc th\\u1ebb 5 trong 1.<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0H\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh: H\\u1ed7 tr\\u1ee3 chu\\u1ea9n Windows<br \\/>\\u2022\\u00a0\\u00a0 \\u00a0Pin: 3 Cell Lithium Ion.<br \\/><br \\/>\\r\\n<p><b>Gi\\u1edbi thi\\u1ec7u s\\u1ea3n ph\\u1ea9m<\\/b><\\/p>\\r\\n<p>Saluto G166 l\\u00e0 d\\u00f2ng s\\u1ea3n ph\\u1ea9m m\\u1edbi c\\u1ee7a T\\u1eadp \\u0111o\\u00e0n Mega  Tech Hoa K\\u1ef3 h\\u01b0\\u1edbng t\\u1edbi ng\\u01b0\\u1eddi d\\u00f9ng n\\u0103ng \\u0111\\u1ed9ng, h\\u1ecdc sinh sinh vi\\u00ean hay gi\\u1edbi  v\\u0103n ph\\u00f2ng. M\\u00e1y c\\u00f3 tr\\u1ecdng l\\u01b0\\u1ee3ng si\\u00eau nh\\u1eb9 v\\u1edbi c\\u00e1c d\\u00f2ng s\\u1ea3n ph\\u1ea9m MTXT c\\u00f3 m\\u00e0n  h\\u00ecnh 13.3\\u201d (1,2 kg) v\\u1edbi thi\\u1ebft k\\u1ebf m\\u1ecfng nh\\u1ea5t l\\u00e0 15 mm.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Saluto  G166 g\\u1ed3m 02 m\\u00e0u tr\\u1eafng s\\u1eefa v\\u00e0 m\\u00e0u \\u0111en v\\u1edbi v\\u1ecf c\\u00f3 kh\\u1ea3 n\\u0103ng ch\\u1ed1ng tr\\u1ea7y  s\\u01b0\\u1edbt. To\\u00e0n b\\u1ed9 th\\u00e2n m\\u00e1y \\u0111\\u01b0\\u1ee3c ph\\u1ee7 c\\u00f9ng t\\u00f4ng m\\u00e0u mang \\u0111\\u1ebfn c\\u1ea3m gi\\u00e1c ch\\u1eafc  ch\\u1eafn v\\u00e0 c\\u1ee9ng c\\u00e1p.<\\/p>\\r\\n<p>Saluto G166 c\\u00f3 ch\\u1ed7 \\u0111\\u1eb7t  tay \\u0111\\u1ee7 r\\u1ed9ng kh\\u00f4ng ch\\u1ec9 mang l\\u1ea1i c\\u1ea3m gi\\u00e1c tho\\u1ea3i m\\u00e1i khi so\\u1ea1n th\\u1ea3o v\\u0103n b\\u1ea3n  ngo\\u00e0i ra b\\u00e0n ph\\u00edm r\\u1eddi (chiclet) theo ti\\u00eau chu\\u1ea9n ISO t\\u1ea1o c\\u1ea3m gi\\u00e1c \\u00eam, nh\\u1eb9  khi s\\u1eed d\\u1ee5ng. Touchpad r\\u1ed9ng r\\u00e3i h\\u1ed7 tr\\u1ee3 c\\u1ea3m \\u1ee9ng \\u0111a \\u0111i\\u1ec3m kh\\u00e1 nh\\u1ea1y gi\\u00fap  ng\\u01b0i d\\u00f9ng khi d\\u1ec5 d\\u00e0ng \\u0111i\\u1ec1u khi\\u1ec3n con tr\\u1ecf.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>M\\u1ed9t  \\u0111i\\u1ec3m kh\\u00e1c bi\\u1ec7t \\u1edf Saluto G166 l\\u00e0 m\\u00e1y s\\u1eed d\\u1ee5ng b\\u1ed9 vi x\\u1eed l\\u00fd Intel Atom N450  t\\u1ed1c \\u0111\\u1ed9 1,66 GHz, kh\\u00f4ng ch\\u1ec9 si\\u00eau ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng, vi x\\u1eed l\\u00fd n\\u00e0y c\\u00f2n  \\u0111\\u1ea3m b\\u1ea3o v\\u1eadn h\\u00e0nh m\\u01b0\\u1ee3t m\\u00e0 tr\\u00ean h\\u1ec7 \\u0111i\\u1ec1u h\\u00e0nh Windows 7 nh\\u1edd s\\u1ef1 h\\u1ed7 tr\\u1ee3 t\\u1eeb  Card \\u0111\\u1ed3 h\\u1ecda Intel GMA 3150 l\\u00ean \\u0111\\u1ebfn 250Mb t\\u00edch h\\u1ee3p ngay b\\u00ean trong nh\\u00e2n  CPU.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>Tuy kh\\u00f4ng c\\u00f3  card \\u0111\\u1ed3 h\\u1ecda r\\u1eddi nh\\u01b0ng h\\u00ecnh \\u1ea3nh tr\\u00ean m\\u00e0n h\\u00ecnh 13.3 inch c\\u1ee7a Saluto G166  v\\u1eabn r\\u1ea5t t\\u01b0\\u01a1i s\\u00e1ng v\\u00e0 s\\u1ed1ng \\u0111\\u1ed9ng. \\u0110\\u1ed9 s\\u00e1ng m\\u00e0n h\\u00ecnh \\u0111\\u01b0\\u1ee3c t\\u00f9y ch\\u1ec9nh r\\u1ea5t linh  \\u0111\\u1ed9ng, c\\u00e2n \\u0111\\u1ed1i gi\\u1eefa hai y\\u1ebfu t\\u1ed1 l\\u00e0 ch\\u1ea5t l\\u01b0\\u1ee3ng v\\u00e0 ti\\u1ebft ki\\u1ec7m n\\u0103ng l\\u01b0\\u1ee3ng. \\u0110\\u1ed9  ph\\u00e2n gi\\u1ea3i 1.366 x 768 pixel mang \\u0111\\u1ebfn m\\u1ed9t khung \\u1ea3nh r\\u1ed9ng \\u0111\\u1ee7 \\u0111\\u1ec3 th\\u01b0\\u1edfng  th\\u1ee9c c\\u00e1c b\\u1ed9 phim HD ch\\u1ea5t l\\u01b0\\u1ee3ng cao.<\\/p>\\r\\n<p>Webcam!  M\\u1ed9t t\\u00ednh n\\u0103ng c\\u1ea7n thi\\u1ebft khi h\\u1ed9i th\\u1ea3o tr\\u1ef1c tuy\\u1ebfn qua m\\u1ea1ng \\u0111ang ng\\u00e0y m\\u1ed9t  tr\\u1edf n\\u00ean ph\\u1ed5 bi\\u1ebfn l\\u00e0 \\u0111i\\u1ec3m m\\u1ea1nh c\\u1ee7a\\u00a0 Saluto G166, webcam b\\u1eaft h\\u00ecnh r\\u1ea5t t\\u1ed1t,  r\\u00f5 n\\u00e9t c\\u1ea3 trong \\u0111i\\u1ec1u ki\\u1ec7n \\u00e1nh s\\u00e1ng y\\u1ebfu.<\\/p>\\r\\n<p>\\u00a0<\\/p>\\r\\n<p>C\\u00e1c  c\\u1ed5ng k\\u1ebft n\\u1ed1i c\\u1ee7a Saluto G166 n\\u1eb1m k\\u00edn \\u0111\\u00e1o sau l\\u1edbp v\\u1ecf nh\\u1ef1a nh\\u1eb1m \\u0111\\u1ea3m b\\u1ea3o  t\\u00ednh th\\u1ea9m m\\u1ef9 v\\u00e0 thu\\u1eadn ti\\u00ean cho ng\\u01b0\\u1eddi s\\u1eed d\\u1ee5ng s\\u1ea3n ph\\u1ea9m. Saluto G166 c\\u00f3  k\\u1ebft n\\u1ed1i \\u0111a d\\u1ea1ng v\\u1edbi 2 c\\u1ed5ng USB, c\\u1ed5ng HDMI, khe \\u0111\\u1ecdc th\\u1ebb, gi\\u1eafc audio v\\u00e0  Wi-Fi. M\\u00e1y h\\u1ed7 tr\\u1ee3 k\\u1ebft n\\u1ed1i 3G c\\u0169ng l\\u00e0 m\\u1ed9t t\\u00f9y ch\\u1ecdn h\\u1ee3p l\\u00fd n\\u1ebfu ng\\u01b0\\u1eddi d\\u00f9ng  hay ph\\u1ea3i \\u0111i c\\u00f4ng t\\u00e1c v\\u00e0 c\\u00f3 nhu n\\u1ed1i m\\u1ea1ng Internet th\\u01b0\\u1eddng xuy\\u00ean. Pin 4  cell Li-Ion m\\u00e1y cho ph\\u00e9p v\\u1eadn h\\u00e0nh li\\u00ean t\\u1ee5c trong g\\u1ea7n 2.5 ti\\u1ebfng v\\u1edbi c\\u00e1c  \\u1ee9ng d\\u1ee5ng \\u0111\\u01a1n gi\\u1ea3n.<\\/p>"},{"id":"4","value":""},{"id":"5","value":""}]', '<p><b>Đặc điểm sản phẩm</b></p>\r\n•    Bộ vi xử lý Intel Atom N450 (1,66 GHz)<br />•    Bộ nhớ RAM: 1GB DDR2<br />•    Card đồ họa Intel GMA 3150 (250Mb)<br />•    Màn hình 13.3” chuẩn WXGA với độ phân giải 1366x768 pixel. (chuẩn 1080p hổ trợ xem phim HD)<br />•    Ổ cứng 160 GB, 5400 rpm.<br />•    Tích hợp webcam 1.3 Mps.<br />•    Wireless: Intel Wireless 802.11 a/b/g<br />•    Các cổng vào/ra: 2x USB, HDMI, LAN, micro và headphone.<br />•    Khe cắm mở rộng: đầu đọc thẻ 5 trong 1.<br />•    Hệ điều hành: Hỗ trợ chuẩn Windows<br />•    Pin: 3 Cell Lithium Ion.<br /><br />\r\n<p><b>Giới thiệu sản phẩm</b></p>\r\n<p>Saluto G166 là dòng sản phẩm mới của Tập đoàn Mega  Tech Hoa Kỳ hướng tới người dùng năng động, học sinh sinh viên hay giới  văn phòng. Máy có trọng lượng siêu nhẹ với các dòng sản phẩm MTXT có màn  hình 13.3” (1,2 kg) với thiết kế mỏng nhất là 15 mm.</p>\r\n<p> </p>\r\n<p>Saluto  G166 gồm 02 màu trắng sữa và màu đen với vỏ có khả năng chống trầy  sướt. Toàn bộ thân máy được phủ cùng tông màu mang đến cảm giác chắc  chắn và cứng cáp.</p>\r\n<p>Saluto G166 có chỗ đặt  tay đủ rộng không chỉ mang lại cảm giác thoải mái khi soạn thảo văn bản  ngoài ra bàn phím rời (chiclet) theo tiêu chuẩn ISO tạo cảm giác êm, nhẹ  khi sử dụng. Touchpad rộng rãi hỗ trợ cảm ứng đa điểm khá nhạy giúp  ngưi dùng khi dễ dàng điều khiển con trỏ.</p>\r\n<p> </p>\r\n<p>Một  điểm khác biệt ở Saluto G166 là máy sử dụng bộ vi xử lý Intel Atom N450  tốc độ 1,66 GHz, không chỉ siêu tiết kiệm năng lượng, vi xử lý này còn  đảm bảo vận hành mượt mà trên hệ điều hành Windows 7 nhờ sự hỗ trợ từ  Card đồ họa Intel GMA 3150 lên đến 250Mb tích hợp ngay bên trong nhân  CPU.</p>\r\n<p> </p>\r\n<p>Tuy không có  card đồ họa rời nhưng hình ảnh trên màn hình 13.3 inch của Saluto G166  vẫn rất tươi sáng và sống động. Độ sáng màn hình được tùy chỉnh rất linh  động, cân đối giữa hai yếu tố là chất lượng và tiết kiệm năng lượng. Độ  phân giải 1.366 x 768 pixel mang đến một khung ảnh rộng đủ để thưởng  thức các bộ phim HD chất lượng cao.</p>\r\n<p>Webcam!  Một tính năng cần thiết khi hội thảo trực tuyến qua mạng đang ngày một  trở nên phổ biến là điểm mạnh của  Saluto G166, webcam bắt hình rất tốt,  rõ nét cả trong điều kiện ánh sáng yếu.</p>\r\n<p> </p>\r\n<p>Các  cổng kết nối của Saluto G166 nằm kín đáo sau lớp vỏ nhựa nhằm đảm bảo  tính thẩm mỹ và thuận tiên cho người sử dụng sản phẩm. Saluto G166 có  kết nối đa dạng với 2 cổng USB, cổng HDMI, khe đọc thẻ, giắc audio và  Wi-Fi. Máy hỗ trợ kết nối 3G cũng là một tùy chọn hợp lý nếu người dùng  hay phải đi công tác và có nhu nối mạng Internet thường xuyên. Pin 4  cell Li-Ion máy cho phép vận hành liên tục trong gần 2.5 tiếng với các  ứng dụng đơn giản.</p>   ', '2012-01-07 04:09:14', 62, '', 0, '0000-00-00 00:00:00', '2012-01-07 04:09:31', 62, '2012-01-05 17:09:45', '0000-00-00 00:00:00', 0, 0, 6, 0, 0, '', '', '', '', 15, 'catItemTitle=\ncatItemTitleLinked=\ncatItemFeaturedNotice=\ncatItemAuthor=\ncatItemDateCreated=\ncatItemRating=\ncatItemImage=\ncatItemIntroText=\ncatItemExtraFields=\ncatItemHits=\ncatItemCategory=\ncatItemTags=\ncatItemAttachments=\ncatItemAttachmentsCounter=\ncatItemVideo=\ncatItemVideoWidth=\ncatItemVideoHeight=\ncatItemAudioWidth=\ncatItemAudioHeight=\ncatItemVideoAutoPlay=\ncatItemImageGallery=\ncatItemDateModified=\ncatItemReadMore=\ncatItemCommentsAnchor=\ncatItemK2Plugins=\nitemDateCreated=\nitemTitle=\nitemFeaturedNotice=\nitemAuthor=\nitemFontResizer=\nitemPrintButton=\nitemEmailButton=\nitemSocialButton=\nitemVideoAnchor=\nitemImageGalleryAnchor=\nitemCommentsAnchor=\nitemRating=\nitemImage=\nitemImgSize=\nitemImageMainCaption=\nitemImageMainCredits=\nitemIntroText=\nitemFullText=\nitemExtraFields=\nitemDateModified=\nitemHits=\nitemCategory=\nitemTags=\nitemAttachments=\nitemAttachmentsCounter=\nitemVideo=\nitemVideoWidth=\nitemVideoHeight=\nitemAudioWidth=\nitemAudioHeight=\nitemVideoAutoPlay=\nitemVideoCaption=\nitemVideoCredits=\nitemImageGallery=\nitemNavigation=\nitemComments=\nitemTwitterButton=\nitemFacebookButton=\nitemGooglePlusOneButton=\nitemAuthorBlock=\nitemAuthorImage=\nitemAuthorDescription=\nitemAuthorURL=\nitemAuthorEmail=\nitemAuthorLatest=\nitemAuthorLatestLimit=\nitemRelated=\nitemRelatedLimit=\nitemRelatedTitle=\nitemRelatedCategory=\nitemRelatedImageSize=\nitemRelatedIntrotext=\nitemRelatedFulltext=\nitemRelatedAuthor=\nitemRelatedMedia=\nitemRelatedImageGallery=\nitemK2Plugins=\n\n', '', 'robots=\nauthor=', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_rating`
--

DROP TABLE IF EXISTS `jos_k2_rating`;
CREATE TABLE IF NOT EXISTS `jos_k2_rating` (
  `itemID` int(11) NOT NULL DEFAULT '0',
  `rating_sum` int(11) unsigned NOT NULL DEFAULT '0',
  `rating_count` int(11) unsigned NOT NULL DEFAULT '0',
  `lastip` varchar(50) NOT NULL DEFAULT '',
  PRIMARY KEY (`itemID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_k2_rating`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_tags`
--

DROP TABLE IF EXISTS `jos_k2_tags`;
CREATE TABLE IF NOT EXISTS `jos_k2_tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `published` smallint(6) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  FULLTEXT KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `jos_k2_tags`
--

INSERT INTO `jos_k2_tags` VALUES(1, 'asd', 1);
INSERT INTO `jos_k2_tags` VALUES(2, 'test', 1);
INSERT INTO `jos_k2_tags` VALUES(3, 'laptop', 1);
INSERT INTO `jos_k2_tags` VALUES(4, 'tintuckhac', 1);
INSERT INTO `jos_k2_tags` VALUES(5, 'allinone', 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_tags_xref`
--

DROP TABLE IF EXISTS `jos_k2_tags_xref`;
CREATE TABLE IF NOT EXISTS `jos_k2_tags_xref` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tagID` int(11) NOT NULL,
  `itemID` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagID` (`tagID`),
  KEY `itemID` (`itemID`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `jos_k2_tags_xref`
--

INSERT INTO `jos_k2_tags_xref` VALUES(1, 1, 8);
INSERT INTO `jos_k2_tags_xref` VALUES(2, 2, 8);
INSERT INTO `jos_k2_tags_xref` VALUES(3, 1, 7);
INSERT INTO `jos_k2_tags_xref` VALUES(4, 2, 7);
INSERT INTO `jos_k2_tags_xref` VALUES(25, 3, 29);
INSERT INTO `jos_k2_tags_xref` VALUES(22, 3, 30);
INSERT INTO `jos_k2_tags_xref` VALUES(8, 4, 31);
INSERT INTO `jos_k2_tags_xref` VALUES(9, 4, 32);
INSERT INTO `jos_k2_tags_xref` VALUES(10, 4, 33);
INSERT INTO `jos_k2_tags_xref` VALUES(26, 4, 34);
INSERT INTO `jos_k2_tags_xref` VALUES(21, 5, 35);
INSERT INTO `jos_k2_tags_xref` VALUES(20, 5, 36);
INSERT INTO `jos_k2_tags_xref` VALUES(35, 5, 37);
INSERT INTO `jos_k2_tags_xref` VALUES(33, 5, 38);
INSERT INTO `jos_k2_tags_xref` VALUES(32, 3, 39);
INSERT INTO `jos_k2_tags_xref` VALUES(31, 3, 40);
INSERT INTO `jos_k2_tags_xref` VALUES(40, 3, 41);
INSERT INTO `jos_k2_tags_xref` VALUES(38, 3, 42);

-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_users`
--

DROP TABLE IF EXISTS `jos_k2_users`;
CREATE TABLE IF NOT EXISTS `jos_k2_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userID` int(11) NOT NULL,
  `userName` varchar(255) DEFAULT NULL,
  `gender` enum('m','f') NOT NULL DEFAULT 'm',
  `description` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `group` int(11) NOT NULL DEFAULT '0',
  `plugins` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userID` (`userID`),
  KEY `group` (`group`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_k2_users`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_k2_user_groups`
--

DROP TABLE IF EXISTS `jos_k2_user_groups`;
CREATE TABLE IF NOT EXISTS `jos_k2_user_groups` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `permissions` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_k2_user_groups`
--

INSERT INTO `jos_k2_user_groups` VALUES(1, 'Registered', 'frontEdit=0\nadd=0\neditOwn=0\neditAll=0\npublish=0\ncomment=1\ninheritance=0\ncategories=all\n\n');
INSERT INTO `jos_k2_user_groups` VALUES(2, 'Site Owner', 'frontEdit=1\nadd=1\neditOwn=1\neditAll=1\npublish=1\ncomment=1\ninheritance=1\ncategories=all\n\n');

-- --------------------------------------------------------

--
-- Table structure for table `jos_languages`
--

DROP TABLE IF EXISTS `jos_languages`;
CREATE TABLE IF NOT EXISTS `jos_languages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `iso` varchar(20) DEFAULT NULL,
  `code` varchar(20) NOT NULL DEFAULT '',
  `shortcode` varchar(20) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `fallback_code` varchar(20) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_languages`
--

INSERT INTO `jos_languages` VALUES(1, 'English (United Kingdom)', 1, 'en_GB.utf8, en_GB.UT', 'en-GB', 'en', '', '', '', 1);
INSERT INTO `jos_languages` VALUES(2, 'Vietnamese-VN', 1, 'vi_VN.utf8, vi_VN.UT', 'vi-VN', 'vi', '', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu`
--

DROP TABLE IF EXISTS `jos_menu`;
CREATE TABLE IF NOT EXISTS `jos_menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text,
  `type` varchar(50) NOT NULL DEFAULT '',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `parent` int(11) unsigned NOT NULL DEFAULT '0',
  `componentid` int(11) unsigned NOT NULL DEFAULT '0',
  `sublevel` int(11) DEFAULT '0',
  `ordering` int(11) DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `pollid` int(11) NOT NULL DEFAULT '0',
  `browserNav` tinyint(4) DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `utaccess` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  `lft` int(11) unsigned NOT NULL DEFAULT '0',
  `rgt` int(11) unsigned NOT NULL DEFAULT '0',
  `home` int(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `componentid` (`componentid`,`menutype`,`published`,`access`),
  KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `jos_menu`
--

INSERT INTO `jos_menu` VALUES(1, 'mainmenu', 'Trang chủ', 'trang-ch', 'index.php?option=com_content&view=frontpage', 'component', 1, 0, 20, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 3, 'num_leading_articles=0\nnum_intro_articles=0\nnum_columns=1\nnum_links=0\norderby_pri=\norderby_sec=front\nmulti_column_order=1\nshow_pagination=2\nshow_pagination_results=1\nshow_feed_link=1\nshow_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=0\npageclass_sfx=daylahomene\nmenu_image=-1\nsecure=0\n\n', 0, 0, 1);
INSERT INTO `jos_menu` VALUES(2, 'mainmenu', 'Giới thiệu', 'gii-thiu', 'index.php?option=com_k2&view=item&layout=item&id=28', 'component', 1, 0, 60, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'page_title=\nshow_page_title=1\npageclass_sfx= gioithieu\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(3, 'mainmenu', 'Liên hệ', 'lien-h', 'index.php?option=com_content&view=article&id=19', 'component', 1, 0, 20, 0, 10, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx= gioithieu\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(4, 'mainmenu', 'Core Business', 'ore-business', 'index.php?option=com_content&view=article&id=3', 'component', -2, 0, 20, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(5, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 0, 7, 1, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(6, 'mainmenu', 'Core Business', 'ore-business', 'index.php?option=com_content&view=article&id=3', 'component', -2, 0, 20, 2, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_noauth=\nshow_title=\nlink_titles=\nshow_intro=\nshow_section=\nlink_section=\nshow_category=\nlink_category=\nshow_author=\nshow_create_date=\nshow_modify_date=\nshow_item_navigation=\nshow_readmore=\nshow_vote=\nshow_icons=\nshow_pdf_icon=\nshow_print_icon=\nshow_email_icon=\nshow_hits=\nfeed_summary=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(7, 'mainmenu', 'Contact Us', 'contact-us', 'index.php?option=com_contact&view=contact&id=1', 'component', -2, 0, 7, 2, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'show_contact_list=0\nshow_category_crumb=0\ncontact_icons=\nicon_address=\nicon_email=\nicon_telephone=\nicon_mobile=\nicon_fax=\nicon_misc=\nshow_headings=\nshow_position=\nshow_email=\nshow_telephone=\nshow_mobile=\nshow_fax=\nallow_vcard=\nbanned_email=\nbanned_subject=\nbanned_text=\nvalidate_session=\ncustom_reply=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(11, 'mainmenu', 'Tin tức & Sự kiện', 'tin-tc-a-s-kin', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=17', 'component', 1, 0, 60, 0, 9, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=17\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(12, 'mainmenu', 'Tin GOODM', 'tin-goodm', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=18', 'component', 1, 11, 60, 1, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=18\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(13, 'mainmenu', 'Tin khác', 'tin-khac', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=19', 'component', 1, 11, 60, 1, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=19\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(14, 'mainmenu', 'Đại lý', 'i-ly', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=10', 'component', 1, 0, 60, 0, 8, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=10\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(15, 'mainmenu', 'Hỗ trợ và Driver', 'h-tr-va-driver', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=11', 'component', 1, 0, 60, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=11\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(16, 'Menu-san-pham', 'Laptop', 'laptop', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=2', 'component', 1, 0, 60, 0, 1, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=2\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(17, 'Menu-san-pham', 'All In One', 'all-in-one', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=3', 'component', 1, 0, 60, 0, 2, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=3\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(18, 'Menu-san-pham', 'Tablet Devices', 'tablet-devices', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=4', 'component', 1, 0, 60, 0, 3, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=4\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(19, 'Menu-san-pham', 'Router', 'router', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=5', 'component', 1, 0, 60, 0, 4, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=5\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(20, 'Menu-san-pham', 'Network Adapter', 'network-adapter', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=6', 'component', 1, 0, 60, 0, 5, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=6\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(21, 'Menu-san-pham', 'Switch', 'switch', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=7', 'component', 1, 0, 60, 0, 6, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=7\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);
INSERT INTO `jos_menu` VALUES(22, 'Menu-san-pham', 'ADSL', 'adsl', 'index.php?option=com_k2&view=itemlist&layout=category&task=category&id=8', 'component', 1, 0, 60, 0, 7, 0, '0000-00-00 00:00:00', 0, 0, 0, 0, 'categories=8\nsingleCatOrdering=\npage_title=\nshow_page_title=1\npageclass_sfx=\nmenu_image=-1\nsecure=0\n\n', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_menu_types`
--

DROP TABLE IF EXISTS `jos_menu_types`;
CREATE TABLE IF NOT EXISTS `jos_menu_types` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `menutype` varchar(75) NOT NULL DEFAULT '',
  `title` varchar(255) NOT NULL DEFAULT '',
  `description` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `menutype` (`menutype`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `jos_menu_types`
--

INSERT INTO `jos_menu_types` VALUES(1, 'mainmenu', 'Main Menu', 'The main menu for the site');
INSERT INTO `jos_menu_types` VALUES(2, 'Menu-san-pham', 'menusanpham', 'menusanpham');

-- --------------------------------------------------------

--
-- Table structure for table `jos_messages`
--

DROP TABLE IF EXISTS `jos_messages`;
CREATE TABLE IF NOT EXISTS `jos_messages` (
  `message_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id_from` int(10) unsigned NOT NULL DEFAULT '0',
  `user_id_to` int(10) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(10) unsigned NOT NULL DEFAULT '0',
  `date_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `state` int(11) NOT NULL DEFAULT '0',
  `priority` int(1) unsigned NOT NULL DEFAULT '0',
  `subject` text NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`message_id`),
  KEY `useridto_state` (`user_id_to`,`state`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_messages`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_messages_cfg`
--

DROP TABLE IF EXISTS `jos_messages_cfg`;
CREATE TABLE IF NOT EXISTS `jos_messages_cfg` (
  `user_id` int(10) unsigned NOT NULL DEFAULT '0',
  `cfg_name` varchar(100) NOT NULL DEFAULT '',
  `cfg_value` varchar(255) NOT NULL DEFAULT '',
  UNIQUE KEY `idx_user_var_name` (`user_id`,`cfg_name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_messages_cfg`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_migration_backlinks`
--

DROP TABLE IF EXISTS `jos_migration_backlinks`;
CREATE TABLE IF NOT EXISTS `jos_migration_backlinks` (
  `itemid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `url` text NOT NULL,
  `sefurl` text NOT NULL,
  `newurl` text NOT NULL,
  PRIMARY KEY (`itemid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_migration_backlinks`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_modules`
--

DROP TABLE IF EXISTS `jos_modules`;
CREATE TABLE IF NOT EXISTS `jos_modules` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `ordering` int(11) NOT NULL DEFAULT '0',
  `position` varchar(50) DEFAULT NULL,
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `module` varchar(50) DEFAULT NULL,
  `numnews` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `showtitle` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  `iscore` tinyint(4) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  `control` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `published` (`published`,`access`),
  KEY `newsfeeds` (`module`,`published`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=90 ;

--
-- Dumping data for table `jos_modules`
--

INSERT INTO `jos_modules` VALUES(2, 'Login', '', 1, 'login', 0, '0000-00-00 00:00:00', 1, 'mod_login', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(3, 'Popular', '', 3, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_popular', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(4, 'Recent added Articles', '', 4, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_latest', 0, 2, 1, 'ordering=c_dsc\nuser_id=0\ncache=0\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES(5, 'Menu Stats', '', 5, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_stats', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(6, 'Unread Messages', '', 1, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_unread', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(7, 'Online Users', '', 2, 'header', 0, '0000-00-00 00:00:00', 1, 'mod_online', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(8, 'Toolbar', '', 1, 'toolbar', 0, '0000-00-00 00:00:00', 1, 'mod_toolbar', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(9, 'Quick Icons', '', 1, 'icon', 0, '0000-00-00 00:00:00', 0, 'mod_quickicon', 0, 2, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(10, 'Logged in Users', '', 2, 'cpanel', 62, '2012-01-06 14:50:15', 1, 'mod_logged', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(11, 'Footer', '', 0, 'footer', 0, '0000-00-00 00:00:00', 1, 'mod_footer', 0, 0, 1, '', 1, 1, '');
INSERT INTO `jos_modules` VALUES(12, 'Admin Menu', '', 1, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_menu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(13, 'Admin SubMenu', '', 1, 'submenu', 0, '0000-00-00 00:00:00', 1, 'mod_submenu', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(14, 'User Status', '', 1, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_status', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(15, 'Title', '', 1, 'title', 0, '0000-00-00 00:00:00', 1, 'mod_title', 0, 2, 1, '', 0, 1, '');
INSERT INTO `jos_modules` VALUES(16, 'Nivo-Szaki Slider', '', 0, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_nivoslider', 0, 0, 0, 'moduleclass_sfx=\nimagesDir=images/stories/gmtect/banner\nsubDir=0\nimagesAttributes=Array\ntarget=_self\nstyle=enhanced\ncustomStyle=\nsoundFX=0\nsound=nivo-szakislider.ogg\nsoundVol=1\neffect=random\nslices=15\nanimSpeed=500\npauseTime=3000\nstartSlide=0\ndirectionNav=1\ndirectionNavHide=1\ncontrolNav=1\ncontrolNavThumbs=1\ncontrolNavThumbsSearch=.jpg\ncontrolNavThumbsReplace=_thumb.jpg\nkeyboardNav=1\npauseOnHover=1\nmanualAdvance=0\ncaptionOpacity=0.8\njQuery=0\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(17, 'Lnag', '<div style="margin: 28px 0pt 25px;"><img src="images/stories/gmtect/eng.png" />&nbsp; &nbsp; &nbsp; &nbsp;<img src="images/stories/gmtect/vi.png" /></div>', 0, 'lang', 0, '0000-00-00 00:00:00', 0, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(52, 'Admin K2 Menu', '', 0, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_k2_menu', 0, 2, 1, 'cache=1\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES(20, 'Lượt truy cập', '', 4, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_vvisit_counter', 0, 0, 1, 'moduleclass_sfx= visit\nmode=custom\ninitialvalue=0\ndigit_type=twotone\nnumber_digits=5\nstats_type=default\nwidthtable=90\ntoday=0\nyesterday=0\nweek=0\nlweek=0\nmonth=0\nlmonth=0\nall=0\nautohide=0\nhrline=1\nbeginday=\nonline=0\nguestip=0\nguestinfo=0\nformattime=0\nissunday=1\ncache_time=15\npretext=\nposttext=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(22, 'Copyright', 'GM TECHNOLOGY CORPORATION<br />Địa chỉ: 456 - 458 Hai Bà Trưng, P. Tân Định, Q. 1, TP. HCM. Điện thoại: 08. 6297 8888 - Fax: 08. 6292 6666', 0, 'copyright', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(23, 'Banner 2', '<img src="images/stories/mekong/banner2/b1.png" />', 0, 'img-link', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx= bn2\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(32, 'Language Selection', '', 0, 'lang', 0, '0000-00-00 00:00:00', 1, 'mod_jflanguageselection', 0, 0, 0, 'type=rawimages\nshow_active=1\ninc_jf_css=1\nmoduleclass_sfx=\ncache_href=1\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(33, 'Direct Translation', '', 0, 'status', 0, '0000-00-00 00:00:00', 1, 'mod_translate', 0, 2, 0, 'linktype=squeezebox\ncomponents=com_content#content#cid#task#!edit|com_frontpage#content#cid#task#!edit|com_sections#sections#cid#task#!edit|com_categories#categories#cid#task#!edit|com_contact#contact_details#cid#!edit|com_menus#menu#cid#task#!edit|com_modules#modules#cid#task#!edit#client#!1|com_newsfeeds#newsfeeds#cid#task#!edit|com_poll#polls#cid#task#!edit||||||||||', 0, 1, '');
INSERT INTO `jos_modules` VALUES(27, '2J Tabs', '', 3, 'flour', 0, '0000-00-00 00:00:00', 0, 'mod_2j_tabs', 0, 0, 1, 'moduleclass_sfx=\ncat_or_sec=0\ncatid=2\nsecid=0\nload_module=flour\nload_module_style=-2\ncontent_count_word=\ncontent_count_cut_word=1\ncontent_count_cut_text=\nimage=1\nshow_autor=0\nshow_created=0\nshow_modified=0\nshow_fulltext=0\nitem_title=1\nlink_titles=0\nreadmore=0\nitems=0\nitems_inpage=\norderby=0\nall_width=\nall_height=\ndiv_height=\npend_all_left=\npend_all_right=\npend_all_top=\npend_all_bottom=\ntitleintab=0\ntab_template=Tab #\ncustom_label=\ntab_name_cut=\ntab_name_cut_text=\nselect_def=\npage_bar=0\nalign_tab=0\nch_tabs=0\nenable_hover=0\nfont_tab=\nfont_size_tab=\npending_need=0\npend_li_left=\npend_li_right=\npend_ul_left=\npend_ul_right=\npre_text=\npost_text=\ntemplate=\nbg_color=\nstyle=1\nshow_border=0\ncolor_border=#000000\neffect=0\nduration=200\nxhtml=0\ntimer=0\ntimer_time=3000\ntwoj_ajax_admin=2\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(35, 'Menu top', '', 0, 'menutop', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=mainmenu\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=1\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(34, 'Logo', '<a href=" "><img src="images/stories/logo.png" /></a>', 0, 'logo', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(39, 'Hỗ trợ trực tuyến', '<table style="width: 100%;" border="0" cellpadding="0" cellspacing="0">\r\n<tbody>\r\n<tr>\r\n<td style="padding: 5px 0;"><a href="ymsgr:sendIM?ngocsonpc"><img src="http://opi.yahoo.com/online?u=ngocsonpc&amp;m=g&amp;t=1&amp;l=us" alt=" " title="ngocsonpc" width="64" height="16" /></a></td>\r\n<td>Ngọc Sơn</td>\r\n<td>0904 747 789</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 5px 0;"><a href="ymsgr:sendIM?mt_0909501186"><img src="http://opi.yahoo.com/online?u=mt_0909501186&amp;m=g&amp;t=1&amp;l=us" alt=" " title="Hỗ trợ thiết kế website" width="64" height="16" /></a></td>\r\n<td>Ms. Thoa</td>\r\n<td>0909 501 186</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 5px 0;"><a href="ymsgr:sendIM?goodm.tech"><img src="http://opi.yahoo.com/online?u=goodm.tech&amp;m=g&amp;t=1" alt="Online Status" border="0" /></a></td>\r\n<td>HT kỹ thuật</td>\r\n<td>0909 751 599</td>\r\n</tr>\r\n<tr>\r\n<td style="padding: 5px 0;"><a href="ymsgr:sendIM?ngoctruong198476"><img src="http://opi.yahoo.com/online?u=ngoctruong198476&amp;m=g&amp;t=1&amp;l=us" alt=" " title="CN nghệ an" width="64" height="16" /></a></td>\r\n<td>CN Nghệ An</td>\r\n<td>0909 102 329</td>\r\n</tr>\r\n</tbody>\r\n</table>', 1, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(40, 'Đối tác chiến lược', '<div><a target="_blank" href="http://www.intel.com/content/www/vn/vi/homepage.html"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/stories/intel.png" /></a></div>\r\n<div><a target="_blank" href="http://www.kingston.com/vn/"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/stories/kingston.png" /></a></div>\r\n<div><a target="_blank" href="http://www.vietteltelecom.vn/"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/stories/viettel.png" /></a></div>\r\n<div><a target="_blank" href="http://www.vnpt.com.vn/"><img style="display: block; margin-left: auto; margin-right: auto;" src="images/stories/vnpt.png" /></a></div>', 3, 'left', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(41, '@copy', '@ copyright 2008 - 2012 by <a href="http://netvietad.com/" target="_blank">Netvietad.com</a>', 0, 'luottruycap', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 0, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(48, 'K2 Quick Icons (admin)', '', 0, 'icon', 0, '0000-00-00 00:00:00', 1, 'mod_k2_quickicons', 0, 2, 1, 'moduleclass_sfx=\nmodCSSStyling=1\nmodLogo=0\ncache=0\ncache_time=900\n\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES(49, 'K2 Stats (admin)', '', 0, 'cpanel', 0, '0000-00-00 00:00:00', 1, 'mod_k2_stats', 0, 2, 1, 'latestItems=1\npopularItems=1\nmostCommentedItems=1\nlatestComments=1\nstatistics=1\n', 0, 1, '');
INSERT INTO `jos_modules` VALUES(54, 'Categories Menu', '', 0, 'menu', 0, '0000-00-00 00:00:00', 0, 'mod_k2_tools', 0, 0, 0, 'moduleclass_sfx=\nmodule_usage=4\narchiveItemsCounter=0\narchiveCategory=1\nauthors_module_category=0\nauthorItemsCounter=1\nauthorAvatar=1\nauthorAvatarWidthSelect=custom\nauthorAvatarWidth=50\nauthorLatestItem=1\ncalendarCategory=0\nhome=\nseperator=\nroot_id=1\nend_level=\ncategoriesListOrdering=\ncategoriesListItemsCounter=0\nroot_id2=0\ncatfilter=0\ngetChildren=0\nliveSearch=\nwidth=20\ntext=\nbutton=\nimagebutton=\nbutton_text=\nmin_size=75\nmax_size=300\ncloud_limit=30\ncloud_category=0\ncloud_category_recursive=0\ncustomCode=\nparsePhp=0\nK2Plugins=0\nJPlugins=0\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(76, 'Search', '', 0, 'search', 0, '0000-00-00 00:00:00', 1, 'mod_k2_tools', 0, 0, 0, 'moduleclass_sfx=\nmodule_usage=6\narchiveItemsCounter=0\narchiveCategory=0\nauthors_module_category=0\nauthorItemsCounter=0\nauthorAvatar=0\nauthorAvatarWidthSelect=custom\nauthorAvatarWidth=50\nauthorLatestItem=0\ncalendarCategory=0\nhome=\nseperator=\nroot_id=0\nend_level=\ncategoriesListOrdering=\ncategoriesListItemsCounter=0\nroot_id2=0\ncatfilter=0\ngetChildren=1\nliveSearch=\nwidth=20\ntext=\nbutton=\nimagebutton=\nbutton_text=\nmin_size=75\nmax_size=300\ncloud_limit=30\ncloud_category=0\ncloud_category_recursive=0\ncustomCode=\nparsePhp=0\nK2Plugins=0\nJPlugins=0\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(67, 'Slider', '', 0, 'contenttop', 62, '2012-01-07 03:47:49', 1, 'mod_xpertscroller', 0, 0, 0, 'moduleclass_sfx= slidechay clearfix\nauto_module_id=1\nmodule_unique_id=xs_1\nload_jquery=1\njquery_source=google_cdn\ncontent_source=k2\njoomla_cat_id=\nshow_front=1\nitem_ordering=\nk2_cat_filter=1\nk2_cat_id=2|4|6|3|7|5|8\nk2_get_children=0\nk2_item_ordering=\nk2_featured_items=1\nk2_img_size=M\nproduct_type=latest\nvm_cat_id=\nshow_price=1\nshow_addtocart=1\nscroller_layout=basic_h\nmodule_width=944\nmodule_height=133\nmax_article=8\ncol_amount=4\nimage_position=left\nanimation_style=animation_h\nanimation_speed=500\nrepeat=1\nkeyboard_navigation=1\nauto_play=1\nnavigator=1\ncontrol_margin=40px 10px\ninterval=3000\nauto_pause=1\narticle_title=1\ntitle_link=0\nitem_image=1\nimage_link=1\nbrowser_nav=parent\nintro_text=1\nintro_text_limit=60\nreadmore=0\nimage_resize=1\nk2_image_resize=1\nimage_width=124\nimage_height=108\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(69, 'Tin tức thông tin khuyến mãi', '', 3, 'contenttop', 0, '0000-00-00 00:00:00', 1, 'mod_xpertscroller', 0, 0, 1, 'moduleclass_sfx=\nauto_module_id=1\nmodule_unique_id=xs_1\nload_jquery=1\njquery_source=google_cdn\ncontent_source=k2\njoomla_cat_id=1|6\nshow_front=1\nitem_ordering=\nk2_cat_filter=1\nk2_cat_id=18|19\nk2_get_children=0\nk2_item_ordering=\nk2_featured_items=1\nk2_img_size=M\nproduct_type=latest\nvm_cat_id=\nshow_price=1\nshow_addtocart=1\nscroller_layout=basic_h\nmodule_width=944\nmodule_height=115\nmax_article=4\ncol_amount=4\nimage_position=left\nanimation_style=animation_h\nanimation_speed=1000\nrepeat=0\nkeyboard_navigation=0\nauto_play=0\nnavigator=0\ncontrol_margin=40px 10px\ninterval=1000\nauto_pause=0\narticle_title=1\ntitle_link=1\nitem_image=1\nimage_link=1\nbrowser_nav=parent\nintro_text=1\nintro_text_limit=60\nreadmore=0\nimage_resize=1\nk2_image_resize=1\nimage_width=94\nimage_height=94\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(74, 'Liên hệ', '<table border="0" cellpadding="5" cellspacing="5" style="width: 99%;">\r\n<tbody>\r\n<tr>\r\n<td valign="top" style="border-right: 1px solid #c9cacb;">\r\n<p>﻿<strong>Công ty cổ phần công nghệ Ghềnh Mai</strong></p>\r\n<p>Địa chỉ: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;456 - 458 Hai Bà Trưng, P. Tân Định, Q.1, TP.HCM</p>\r\n<p>Điện thoại: &nbsp; &nbsp; &nbsp; (08) 6297. 8888</p>\r\n<p>Fax: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(08) 6292. 6666</p>\r\n<p>E-mail: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;support@gmtechn.com</p>\r\n<p>Skype: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;gmtechn</p>\r\n<p>Hotline: &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 090 474 7789 (Mr. Sơn)</p>\r\n</td>\r\n<td style="pading-left:20px;"><span style="display:block;pading-left:20px;">{rsform 3}</span></td>\r\n</tr>\r\n</tbody>\r\n</table>', 0, 'contenttop', 0, '0000-00-00 00:00:00', 1, 'mod_custom', 0, 0, 1, 'moduleclass_sfx=\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(88, 'Copy of Nivo-Szaki Slider', '', 2, 'banner', 0, '0000-00-00 00:00:00', 1, 'mod_nivoslider', 0, 0, 0, 'moduleclass_sfx=\nimagesDir=images/stories/gmtect/banner\nsubDir=0\nimagesAttributes=Array\ntarget=_self\nstyle=enhanced\ncustomStyle=\nsoundFX=0\nsound=nivo-szakislider.ogg\nsoundVol=1\neffect=random\nslices=15\nanimSpeed=500\npauseTime=3000\nstartSlide=0\ndirectionNav=1\ndirectionNavHide=1\ncontrolNav=1\ncontrolNavThumbs=1\ncontrolNavThumbsSearch=.jpg\ncontrolNavThumbsReplace=_thumb.jpg\nkeyboardNav=1\npauseOnHover=1\nmanualAdvance=0\ncaptionOpacity=0.8\njQuery=1\ncache=1\ncache_time=900\n\n', 0, 0, '');
INSERT INTO `jos_modules` VALUES(89, 'menusanpham', '', 2, 'menu', 0, '0000-00-00 00:00:00', 1, 'mod_mainmenu', 0, 0, 0, 'menutype=Menu-san-pham\nmenu_style=list\nstartLevel=0\nendLevel=0\nshowAllChildren=0\nwindow_open=\nshow_whitespace=0\ncache=1\ntag_id=\nclass_sfx=\nmoduleclass_sfx=\nmaxdepth=10\nmenu_images=0\nmenu_images_align=0\nmenu_images_link=0\nexpand_menu=0\nactivate_parent=0\nfull_active_id=0\nindent_image=0\nindent_image1=\nindent_image2=\nindent_image3=\nindent_image4=\nindent_image5=\nindent_image6=\nspacer=\nend_spacer=\n\n', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_modules_menu`
--

DROP TABLE IF EXISTS `jos_modules_menu`;
CREATE TABLE IF NOT EXISTS `jos_modules_menu` (
  `moduleid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`moduleid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_modules_menu`
--

INSERT INTO `jos_modules_menu` VALUES(16, 1);
INSERT INTO `jos_modules_menu` VALUES(17, 0);
INSERT INTO `jos_modules_menu` VALUES(20, 3);
INSERT INTO `jos_modules_menu` VALUES(20, 11);
INSERT INTO `jos_modules_menu` VALUES(20, 12);
INSERT INTO `jos_modules_menu` VALUES(20, 13);
INSERT INTO `jos_modules_menu` VALUES(20, 14);
INSERT INTO `jos_modules_menu` VALUES(20, 15);
INSERT INTO `jos_modules_menu` VALUES(22, 0);
INSERT INTO `jos_modules_menu` VALUES(23, 1);
INSERT INTO `jos_modules_menu` VALUES(27, 0);
INSERT INTO `jos_modules_menu` VALUES(32, 0);
INSERT INTO `jos_modules_menu` VALUES(34, 0);
INSERT INTO `jos_modules_menu` VALUES(35, 0);
INSERT INTO `jos_modules_menu` VALUES(36, 0);
INSERT INTO `jos_modules_menu` VALUES(39, 11);
INSERT INTO `jos_modules_menu` VALUES(39, 12);
INSERT INTO `jos_modules_menu` VALUES(39, 13);
INSERT INTO `jos_modules_menu` VALUES(39, 14);
INSERT INTO `jos_modules_menu` VALUES(39, 15);
INSERT INTO `jos_modules_menu` VALUES(40, 3);
INSERT INTO `jos_modules_menu` VALUES(40, 11);
INSERT INTO `jos_modules_menu` VALUES(40, 12);
INSERT INTO `jos_modules_menu` VALUES(40, 13);
INSERT INTO `jos_modules_menu` VALUES(40, 14);
INSERT INTO `jos_modules_menu` VALUES(40, 15);
INSERT INTO `jos_modules_menu` VALUES(41, 0);
INSERT INTO `jos_modules_menu` VALUES(49, 0);
INSERT INTO `jos_modules_menu` VALUES(52, 0);
INSERT INTO `jos_modules_menu` VALUES(54, 0);
INSERT INTO `jos_modules_menu` VALUES(67, 1);
INSERT INTO `jos_modules_menu` VALUES(69, 1);
INSERT INTO `jos_modules_menu` VALUES(74, 3);
INSERT INTO `jos_modules_menu` VALUES(76, 0);
INSERT INTO `jos_modules_menu` VALUES(88, 0);
INSERT INTO `jos_modules_menu` VALUES(89, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_newsfeeds`
--

DROP TABLE IF EXISTS `jos_newsfeeds`;
CREATE TABLE IF NOT EXISTS `jos_newsfeeds` (
  `catid` int(11) NOT NULL DEFAULT '0',
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `alias` varchar(255) NOT NULL DEFAULT '',
  `link` text NOT NULL,
  `filename` varchar(200) DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `numarticles` int(11) unsigned NOT NULL DEFAULT '1',
  `cache_time` int(11) unsigned NOT NULL DEFAULT '3600',
  `checked_out` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `rtl` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `published` (`published`),
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_newsfeeds`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_plugins`
--

DROP TABLE IF EXISTS `jos_plugins`;
CREATE TABLE IF NOT EXISTS `jos_plugins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `element` varchar(100) NOT NULL DEFAULT '',
  `folder` varchar(100) NOT NULL DEFAULT '',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(3) NOT NULL DEFAULT '0',
  `iscore` tinyint(3) NOT NULL DEFAULT '0',
  `client_id` tinyint(3) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_folder` (`published`,`client_id`,`access`,`folder`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_plugins`
--

INSERT INTO `jos_plugins` VALUES(1, 'Authentication - Joomla', 'joomla', 'authentication', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(2, 'Authentication - LDAP', 'ldap', 'authentication', 0, 2, 0, 1, 0, 0, '0000-00-00 00:00:00', 'host=\nport=389\nuse_ldapV3=0\nnegotiate_tls=0\nno_referrals=0\nauth_method=bind\nbase_dn=\nsearch_string=\nusers_dn=\nusername=\npassword=\nldap_fullname=fullName\nldap_email=mail\nldap_uid=uid\n\n');
INSERT INTO `jos_plugins` VALUES(3, 'Authentication - GMail', 'gmail', 'authentication', 0, 4, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(4, 'Authentication - OpenID', 'openid', 'authentication', 0, 3, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(5, 'User - Joomla!', 'joomla', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'autoregister=1\n\n');
INSERT INTO `jos_plugins` VALUES(6, 'Search - Content', 'content', 'search', 0, 1, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\nsearch_content=1\nsearch_uncategorised=1\nsearch_archived=1\n\n');
INSERT INTO `jos_plugins` VALUES(7, 'Search - Contacts', 'contacts', 'search', 0, 3, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES(8, 'Search - Categories', 'categories', 'search', 0, 4, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES(9, 'Search - Sections', 'sections', 'search', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES(10, 'Search - Newsfeeds', 'newsfeeds', 'search', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES(11, 'Search - Weblinks', 'weblinks', 'search', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n\n');
INSERT INTO `jos_plugins` VALUES(12, 'Content - Pagebreak', 'pagebreak', 'content', 0, 10000, 1, 1, 0, 0, '0000-00-00 00:00:00', 'enabled=1\ntitle=1\nmultipage_toc=1\nshowall=1\n\n');
INSERT INTO `jos_plugins` VALUES(13, 'Content - Rating', 'vote', 'content', 0, 4, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(14, 'Content - Email Cloaking', 'emailcloak', 'content', 0, 5, 1, 0, 0, 0, '0000-00-00 00:00:00', 'mode=1\n\n');
INSERT INTO `jos_plugins` VALUES(15, 'Content - Code Hightlighter (GeSHi)', 'geshi', 'content', 0, 5, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(16, 'Content - Load Module', 'loadmodule', 'content', 0, 6, 1, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nstyle=0\n\n');
INSERT INTO `jos_plugins` VALUES(17, 'Content - Page Navigation', 'pagenavigation', 'content', 0, 2, 1, 1, 0, 0, '0000-00-00 00:00:00', 'position=1\n\n');
INSERT INTO `jos_plugins` VALUES(18, 'Editor - No Editor', 'none', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(19, 'Editor - TinyMCE', 'tinymce', 'editors', 0, 0, 1, 1, 0, 0, '0000-00-00 00:00:00', 'mode=advanced\nskin=0\ncompressed=0\ncleanup_startup=0\ncleanup_save=2\nentity_encoding=raw\nlang_mode=0\nlang_code=en\ntext_direction=ltr\ncontent_css=1\ncontent_css_custom=\nrelative_urls=1\nnewlines=0\ninvalid_elements=applet\nextended_elements=\ntoolbar=top\ntoolbar_align=left\nhtml_height=550\nhtml_width=750\nelement_path=1\nfonts=1\npaste=1\nsearchreplace=1\ninsertdate=1\nformat_date=%Y-%m-%d\ninserttime=1\nformat_time=%H:%M:%S\ncolors=1\ntable=1\nsmilies=1\nmedia=1\nhr=1\ndirectionality=1\nfullscreen=1\nstyle=1\nlayer=1\nxhtmlxtras=1\nvisualchars=1\nnonbreaking=1\ntemplate=0\nadvimage=1\nadvlink=1\nautosave=1\ncontextmenu=1\ninlinepopups=1\nsafari=1\ncustom_plugin=\ncustom_button=\n\n');
INSERT INTO `jos_plugins` VALUES(20, 'Editor - XStandard Lite 2.0', 'xstandard', 'editors', 0, 0, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(21, 'Editor Button - Image', 'image', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(22, 'Editor Button - Pagebreak', 'pagebreak', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(23, 'Editor Button - Readmore', 'readmore', 'editors-xtd', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(24, 'XML-RPC - Joomla', 'joomla', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(25, 'XML-RPC - Blogger API', 'blogger', 'xmlrpc', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', 'catid=1\nsectionid=0\n\n');
INSERT INTO `jos_plugins` VALUES(27, 'System - SEF', 'sef', 'system', 0, 1, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(28, 'System - Debug', 'debug', 'system', 0, 2, 1, 0, 0, 0, '0000-00-00 00:00:00', 'queries=1\nmemory=1\nlangauge=1\n\n');
INSERT INTO `jos_plugins` VALUES(29, 'System - Legacy', 'legacy', 'system', 0, 3, 0, 1, 0, 0, '0000-00-00 00:00:00', 'route=0\n\n');
INSERT INTO `jos_plugins` VALUES(30, 'System - Cache', 'cache', 'system', 0, 4, 0, 1, 0, 0, '0000-00-00 00:00:00', 'browsercache=0\ncachetime=15\n\n');
INSERT INTO `jos_plugins` VALUES(31, 'System - Log', 'log', 'system', 0, 5, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(32, 'System - Remember Me', 'remember', 'system', 0, 6, 1, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(33, 'System - Backlink', 'backlink', 'system', 0, 7, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(34, 'System - Mootools Upgrade', 'mtupgrade', 'system', 0, 8, 0, 1, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(35, 'Editor - JCE 1.5.7.4', 'jce', 'editors', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(36, 'Content - RSForm! Pro', 'rsform', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(37, 'Content - Joomla Extra News Plugin', 'extranews', 'content', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 'enabled=1\nsectionid_list=-\ncatid_list=-\nid_list=-\nqueryby=c_dsc\nrelateditemscount=5\nneweritemscount=5\noderitemscount=5\nshowdate=1\nshowdateformat=d/m/Y H:i\nlinkedtitleformat=%1$s - %2$s\ntextbefore=<hr color="maroon" width="85%"></hr>\ntextafter=<hr color="maroon" width="85%"></hr>\nmarginleft=5%\nmarginright=5%\nenable_tooltip=yes\nload_mootools=no\nscriptIE6_tooltip=2\nt_char_count_desc=150\ntooltip_desc_images=yes\nimg_width=100\nimg_height=100\ntooltip_width=270\ntooltip_height=120\ntooltip_bgcolor=#000000\ntooltip_capcolor=#ffffff\ntooltip_fgcolor=#ffffff\ntooltip_textcolor=#000000\ntooltip_border=1\n');
INSERT INTO `jos_plugins` VALUES(38, 'System - Vinaora Visitors Counter', 'vvisit_counter', 'system', 0, -100, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(39, '2J Tabs Plugin', '2j_tabs', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'all_width=\nall_height=\npend_all_left=\npend_all_right=\npend_all_top=\npend_all_bottom=\npage_bar=0\nalign_tab=0\nch_tabs=0\nenable_hover=0\nfont_tab=\nfont_size_tab=\npending_need=0\npend_li_left=\npend_li_right=\npend_ul_left=\npend_ul_right=\nbg_color=\nstyle=1\nshow_border=0\ncolor_border=#000000\neffect=0\nduration=200\ntimer=0\ntimer_time=3000\n\n');
INSERT INTO `jos_plugins` VALUES(40, 'System - Jfdatabase', 'jfdatabase', 'system', 0, -100, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(41, 'System - Jfrouter', 'jfrouter', 'system', 0, -101, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(42, 'Content - Jfalternative', 'jfalternative', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(43, 'Search - Jfcategories', 'jfcategories', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(44, 'Search - Jfcontacts', 'jfcontacts', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(45, 'Search - Jfcontent', 'jfcontent', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(46, 'Search - Jfnewsfeeds', 'jfnewsfeeds', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(47, 'Search - Jfsections', 'jfsections', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(48, 'Search - Jfweblinks', 'jfweblinks', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(49, 'Joomfish - Missing_translation', 'missing_translation', 'joomfish', 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(50, 'Search - K2', 'k2', 'search', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'search_limit=50\n');
INSERT INTO `jos_plugins` VALUES(51, 'System - K2', 'k2', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(52, 'User - K2', 'k2', 'user', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(53, 'AllVideos (by JoomlaWorks)', 'jw_allvideos', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'vfolder=images/stories/videos\nvwidth=400\nvheight=300\ntransparency=transparent\nbackground=#010101\ncontrolBarLocation=bottom\nbackgroundQT=black\nafolder=images/stories/audio\nawidth=300\naheight=20\n');
INSERT INTO `jos_plugins` VALUES(54, 'Simple Image Gallery Pro (by JoomlaWorks)', 'jw_sigpro', 'content', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', 'galleries_rootfolder=images/stories\npopup_engine=jquery_slimbox\nthb_template=Galleria\nthb_width=132\nthb_height=103\nsmartResize=1\njpg_quality=80\nsinglethumbmode=0\nsortorder=0\nshowcaptions=1\nwordlimit=\nenabledownload=0\nloadmoduleposition=\nflickrApiKey=\nflickrImageCount=20\ncache_expire_time=120\nyqlMaxAge=60\nmemoryLimit=\ndebugMode=0\n\n');
INSERT INTO `jos_plugins` VALUES(55, 'K2 Plugin - K2 Fields', 'k2fields', 'k2', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(56, 'System - Advanced Module Manager', 'advancedmodules', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(57, 'System - NoNumber! Framework', 'nnframework', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');
INSERT INTO `jos_plugins` VALUES(61, 'System - RSForm! Pro', 'rsform', 'system', 0, 0, 1, 0, 0, 0, '0000-00-00 00:00:00', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_polls`
--

DROP TABLE IF EXISTS `jos_polls`;
CREATE TABLE IF NOT EXISTS `jos_polls` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `voters` int(9) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `access` int(11) NOT NULL DEFAULT '0',
  `lag` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_polls`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_data`
--

DROP TABLE IF EXISTS `jos_poll_data`;
CREATE TABLE IF NOT EXISTS `jos_poll_data` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pollid` int(11) NOT NULL DEFAULT '0',
  `text` text NOT NULL,
  `hits` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `pollid` (`pollid`,`text`(1))
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_poll_data`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_date`
--

DROP TABLE IF EXISTS `jos_poll_date`;
CREATE TABLE IF NOT EXISTS `jos_poll_date` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `vote_id` int(11) NOT NULL DEFAULT '0',
  `poll_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `poll_id` (`poll_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_poll_date`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_poll_menu`
--

DROP TABLE IF EXISTS `jos_poll_menu`;
CREATE TABLE IF NOT EXISTS `jos_poll_menu` (
  `pollid` int(11) NOT NULL DEFAULT '0',
  `menuid` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`pollid`,`menuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_poll_menu`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_components`
--

DROP TABLE IF EXISTS `jos_rsform_components`;
CREATE TABLE IF NOT EXISTS `jos_rsform_components` (
  `ComponentId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `Order` int(11) NOT NULL DEFAULT '0',
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  UNIQUE KEY `ComponentId` (`ComponentId`),
  KEY `ComponentTypeId` (`ComponentTypeId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=32 ;

--
-- Dumping data for table `jos_rsform_components`
--

INSERT INTO `jos_rsform_components` VALUES(1, 1, 1, 2, 1);
INSERT INTO `jos_rsform_components` VALUES(2, 1, 10, 1, 1);
INSERT INTO `jos_rsform_components` VALUES(3, 1, 1, 3, 1);
INSERT INTO `jos_rsform_components` VALUES(4, 1, 3, 4, 1);
INSERT INTO `jos_rsform_components` VALUES(5, 1, 5, 5, 1);
INSERT INTO `jos_rsform_components` VALUES(6, 1, 4, 6, 1);
INSERT INTO `jos_rsform_components` VALUES(7, 1, 6, 7, 1);
INSERT INTO `jos_rsform_components` VALUES(8, 1, 13, 8, 1);
INSERT INTO `jos_rsform_components` VALUES(9, 1, 10, 9, 1);
INSERT INTO `jos_rsform_components` VALUES(10, 2, 1, 2, 1);
INSERT INTO `jos_rsform_components` VALUES(11, 2, 10, 1, 1);
INSERT INTO `jos_rsform_components` VALUES(12, 2, 1, 3, 1);
INSERT INTO `jos_rsform_components` VALUES(13, 2, 3, 6, 1);
INSERT INTO `jos_rsform_components` VALUES(14, 2, 5, 7, 1);
INSERT INTO `jos_rsform_components` VALUES(15, 2, 4, 10, 1);
INSERT INTO `jos_rsform_components` VALUES(16, 2, 6, 11, 1);
INSERT INTO `jos_rsform_components` VALUES(17, 2, 13, 12, 1);
INSERT INTO `jos_rsform_components` VALUES(18, 2, 10, 13, 1);
INSERT INTO `jos_rsform_components` VALUES(19, 2, 41, 4, 1);
INSERT INTO `jos_rsform_components` VALUES(20, 2, 41, 8, 1);
INSERT INTO `jos_rsform_components` VALUES(21, 2, 10, 5, 1);
INSERT INTO `jos_rsform_components` VALUES(22, 2, 10, 9, 1);
INSERT INTO `jos_rsform_components` VALUES(23, 3, 10, 0, 1);
INSERT INTO `jos_rsform_components` VALUES(24, 3, 1, 1, 1);
INSERT INTO `jos_rsform_components` VALUES(25, 3, 1, 2, 1);
INSERT INTO `jos_rsform_components` VALUES(26, 3, 1, 3, 1);
INSERT INTO `jos_rsform_components` VALUES(27, 3, 1, 4, 1);
INSERT INTO `jos_rsform_components` VALUES(28, 3, 1, 5, 1);
INSERT INTO `jos_rsform_components` VALUES(29, 3, 2, 6, 1);
INSERT INTO `jos_rsform_components` VALUES(30, 3, 8, 7, 1);
INSERT INTO `jos_rsform_components` VALUES(31, 3, 13, 8, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_component_types`
--

DROP TABLE IF EXISTS `jos_rsform_component_types`;
CREATE TABLE IF NOT EXISTS `jos_rsform_component_types` (
  `ComponentTypeId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeName` text NOT NULL,
  PRIMARY KEY (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=42 ;

--
-- Dumping data for table `jos_rsform_component_types`
--

INSERT INTO `jos_rsform_component_types` VALUES(1, 'textBox');
INSERT INTO `jos_rsform_component_types` VALUES(2, 'textArea');
INSERT INTO `jos_rsform_component_types` VALUES(3, 'selectList');
INSERT INTO `jos_rsform_component_types` VALUES(4, 'checkboxGroup');
INSERT INTO `jos_rsform_component_types` VALUES(5, 'radioGroup');
INSERT INTO `jos_rsform_component_types` VALUES(6, 'calendar');
INSERT INTO `jos_rsform_component_types` VALUES(7, 'button');
INSERT INTO `jos_rsform_component_types` VALUES(8, 'captcha');
INSERT INTO `jos_rsform_component_types` VALUES(9, 'fileUpload');
INSERT INTO `jos_rsform_component_types` VALUES(10, 'freeText');
INSERT INTO `jos_rsform_component_types` VALUES(11, 'hidden');
INSERT INTO `jos_rsform_component_types` VALUES(12, 'imageButton');
INSERT INTO `jos_rsform_component_types` VALUES(13, 'submitButton');
INSERT INTO `jos_rsform_component_types` VALUES(14, 'password');
INSERT INTO `jos_rsform_component_types` VALUES(15, 'ticket');
INSERT INTO `jos_rsform_component_types` VALUES(41, 'pageBreak');

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_component_type_fields`
--

DROP TABLE IF EXISTS `jos_rsform_component_type_fields`;
CREATE TABLE IF NOT EXISTS `jos_rsform_component_type_fields` (
  `ComponentTypeFieldId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentTypeId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldType` enum('hidden','hiddenparam','textbox','textarea','select','emailattach') NOT NULL DEFAULT 'hidden',
  `FieldValues` text NOT NULL,
  `Ordering` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ComponentTypeFieldId`),
  KEY `ComponentTypeId` (`ComponentTypeId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=178 ;

--
-- Dumping data for table `jos_rsform_component_type_fields`
--

INSERT INTO `jos_rsform_component_type_fields` VALUES(2, 1, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(3, 1, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(4, 1, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(5, 1, 'SIZE', 'textbox', '20', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(6, 1, 'MAXSIZE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(7, 1, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(8, 1, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(9, 1, 'ADDITIONALATTRIBUTES', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(10, 1, 'DEFAULTVALUE', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(11, 1, 'DESCRIPTION', 'textarea', '', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES(12, 1, 'COMPONENTTYPE', 'hidden', '1', 15);
INSERT INTO `jos_rsform_component_type_fields` VALUES(13, 2, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(14, 2, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(15, 2, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(16, 2, 'COLS', 'textbox', '50', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(17, 2, 'ROWS', 'textbox', '5', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(18, 2, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(19, 2, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(20, 2, 'ADDITIONALATTRIBUTES', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(21, 2, 'DEFAULTVALUE', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(22, 2, 'DESCRIPTION', 'textarea', '', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(23, 2, 'COMPONENTTYPE', 'hidden', '2', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(24, 3, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(25, 3, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(26, 3, 'SIZE', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(27, 3, 'MULTIPLE', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(28, 3, 'ITEMS', 'textarea', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(29, 3, 'REQUIRED', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(30, 3, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(31, 3, 'DESCRIPTION', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(32, 3, 'COMPONENTTYPE', 'hidden', '3', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(33, 4, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(34, 4, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(35, 4, 'ITEMS', 'textarea', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(36, 4, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(37, 4, 'REQUIRED', 'select', 'NO\r\nYES', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(38, 4, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(39, 4, 'DESCRIPTION', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(40, 4, 'COMPONENTTYPE', 'hidden', '4', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(41, 5, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(42, 5, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(43, 5, 'ITEMS', 'textarea', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(44, 5, 'FLOW', 'select', 'HORIZONTAL\r\nVERTICAL', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(45, 5, 'REQUIRED', 'select', 'NO\r\nYES', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(46, 5, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(47, 5, 'DESCRIPTION', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(48, 5, 'COMPONENTTYPE', 'hidden', '5', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(49, 6, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(50, 6, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(51, 6, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(52, 6, 'DATEFORMAT', 'textbox', 'DDMMYYYY', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(53, 6, 'CALENDARLAYOUT', 'select', 'FLAT\r\nPOPUP', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(54, 6, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(55, 6, 'DESCRIPTION', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(56, 6, 'COMPONENTTYPE', 'hidden', '6', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(57, 7, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(58, 7, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(59, 7, 'LABEL', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(60, 7, 'RESET', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(61, 7, 'RESETLABEL', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(62, 7, 'ADDITIONALATTRIBUTES', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(63, 7, 'DESCRIPTION', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(64, 7, 'COMPONENTTYPE', 'hidden', '7', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(65, 8, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(66, 8, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(67, 8, 'LENGTH', 'textbox', '4', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(68, 8, 'BACKGROUNDCOLOR', 'textbox', '#FFFFFF', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(69, 8, 'TEXTCOLOR', 'textbox', '#000000', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(70, 8, 'TYPE', 'select', 'ALPHA\r\nNUMERIC\r\nALPHANUMERIC', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(71, 8, 'ADDITIONALATTRIBUTES', 'textarea', 'style="text-align:center;width:75px;"', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(72, 8, 'DESCRIPTION', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(73, 8, 'COMPONENTTYPE', 'hidden', '8', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(74, 9, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(75, 9, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(76, 9, 'FILESIZE', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(77, 9, 'REQUIRED', 'select', 'NO\r\nYES', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(78, 9, 'ACCEPTEDFILES', 'textarea', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(79, 9, 'DESTINATION', 'textbox', '//<code>\r\nreturn JPATH_SITE.DS.''components''.DS.''com_rsform''.DS.''uploads''.DS;\r\n//</code>', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(80, 9, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(81, 9, 'DESCRIPTION', 'textarea', '', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(82, 9, 'COMPONENTTYPE', 'hidden', '9', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(83, 10, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(84, 10, 'TEXT', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(85, 10, 'COMPONENTTYPE', 'hidden', '10', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(86, 11, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(87, 11, 'DEFAULTVALUE', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(88, 11, 'ADDITIONALATTRIBUTES', 'textarea', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(89, 11, 'COMPONENTTYPE', 'hidden', '11', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(118, 12, 'COMPONENTTYPE', 'hidden', '12', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(117, 12, 'ADDITIONALATTRIBUTES', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(144, 3, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(115, 12, 'RESETLABEL', 'textbox', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(114, 12, 'RESET', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(113, 12, 'IMAGERESET', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(112, 12, 'IMAGEBUTTON', 'textbox', '', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(111, 12, 'LABEL', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(110, 12, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(109, 12, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(119, 13, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(120, 13, 'CAPTION', 'textbox', '', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(121, 13, 'LABEL', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(122, 13, 'RESET', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(123, 13, 'RESETLABEL', 'textbox', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(125, 13, 'ADDITIONALATTRIBUTES', 'textarea', '', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(126, 13, 'COMPONENTTYPE', 'hidden', '13', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(127, 14, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(128, 14, 'CAPTION', 'textbox', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(129, 14, 'REQUIRED', 'select', 'NO\r\nYES', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(130, 14, 'SIZE', 'textbox', '', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(131, 14, 'MAXSIZE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(132, 14, 'DEFAULTVALUE', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(133, 14, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(134, 14, 'COMPONENTTYPE', 'hidden', '14', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(135, 15, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(138, 15, 'LENGTH', 'textbox', '8', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(140, 15, 'ADDITIONALATTRIBUTES', 'textarea', '', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(141, 15, 'COMPONENTTYPE', 'hidden', '15', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(142, 14, 'DESCRIPTION', 'textarea', '', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(143, 8, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(145, 4, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(146, 5, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(147, 6, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(148, 14, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(149, 9, 'VALIDATIONMESSAGE', 'textarea', 'INVALIDINPUT', 100);
INSERT INTO `jos_rsform_component_type_fields` VALUES(150, 8, 'FLOW', 'select', 'VERTICAL\r\nHORIZONTAL', 7);
INSERT INTO `jos_rsform_component_type_fields` VALUES(151, 8, 'SHOWREFRESH', 'select', 'NO\r\nYES', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(152, 8, 'REFRESHTEXT', 'textbox', 'REFRESH', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES(153, 6, 'READONLY', 'select', 'NO\r\nYES', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(154, 12, 'DESCRIPTION', 'textarea', '', 10);
INSERT INTO `jos_rsform_component_type_fields` VALUES(155, 6, 'POPUPLABEL', 'textbox', '...', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(157, 15, 'CHARACTERS', 'select', 'ALPHANUMERIC\r\nALPHA\r\nNUMERIC', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(160, 2, 'WYSIWYG', 'select', 'NO\r\nYES', 11);
INSERT INTO `jos_rsform_component_type_fields` VALUES(161, 8, 'SIZE', 'textbox', '15', 12);
INSERT INTO `jos_rsform_component_type_fields` VALUES(162, 8, 'IMAGETYPE', 'select', 'FREETYPE\r\nNOFREETYPE\r\nINVISIBLE', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(163, 1, 'VALIDATIONEXTRA', 'textbox', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(164, 2, 'VALIDATIONEXTRA', 'textbox', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(165, 14, 'VALIDATIONRULE', 'select', '//<code>\r\nreturn RSgetValidationRules();\r\n//</code>', 9);
INSERT INTO `jos_rsform_component_type_fields` VALUES(166, 9, 'PREFIX', 'textarea', '', 6);
INSERT INTO `jos_rsform_component_type_fields` VALUES(167, 13, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 8);
INSERT INTO `jos_rsform_component_type_fields` VALUES(168, 41, 'NAME', 'textbox', '', 1);
INSERT INTO `jos_rsform_component_type_fields` VALUES(169, 41, 'COMPONENTTYPE', 'hidden', '41', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(170, 41, 'NEXTBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''NEXT'');\r\n//</code>', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(171, 41, 'PREVBUTTON', 'textbox', '//<code>\r\nreturn JText::_(''PREV'');\r\n//</code>', 3);
INSERT INTO `jos_rsform_component_type_fields` VALUES(172, 41, 'ADDITIONALATTRIBUTES', 'textarea', '', 4);
INSERT INTO `jos_rsform_component_type_fields` VALUES(173, 41, 'VALIDATENEXTPAGE', 'select', 'NO\r\nYES', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(174, 6, 'MINDATE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(175, 6, 'MAXDATE', 'textbox', '', 5);
INSERT INTO `jos_rsform_component_type_fields` VALUES(176, 6, 'DEFAULTVALUE', 'textarea', '', 2);
INSERT INTO `jos_rsform_component_type_fields` VALUES(177, 9, 'EMAILATTACH', 'emailattach', '', 102);

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_config`
--

DROP TABLE IF EXISTS `jos_rsform_config`;
CREATE TABLE IF NOT EXISTS `jos_rsform_config` (
  `ConfigId` int(11) NOT NULL AUTO_INCREMENT,
  `SettingName` varchar(64) NOT NULL DEFAULT '',
  `SettingValue` text NOT NULL,
  PRIMARY KEY (`ConfigId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=101 ;

--
-- Dumping data for table `jos_rsform_config`
--

INSERT INTO `jos_rsform_config` VALUES(1, 'global.register.code', '');
INSERT INTO `jos_rsform_config` VALUES(2, 'global.debug.mode', '0');
INSERT INTO `jos_rsform_config` VALUES(3, 'global.iis', '1');
INSERT INTO `jos_rsform_config` VALUES(4, 'global.editor', '1');
INSERT INTO `jos_rsform_config` VALUES(100, 'global.codemirror', '0');

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_emails`
--

DROP TABLE IF EXISTS `jos_rsform_emails`;
CREATE TABLE IF NOT EXISTS `jos_rsform_emails` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `from` varchar(255) NOT NULL,
  `fromname` varchar(255) NOT NULL,
  `replyto` varchar(255) NOT NULL,
  `to` varchar(255) NOT NULL,
  `cc` varchar(255) NOT NULL,
  `bcc` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `mode` tinyint(1) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_rsform_emails`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_forms`
--

DROP TABLE IF EXISTS `jos_rsform_forms`;
CREATE TABLE IF NOT EXISTS `jos_rsform_forms` (
  `FormId` int(11) NOT NULL AUTO_INCREMENT,
  `FormName` text NOT NULL,
  `FormLayout` longtext NOT NULL,
  `FormLayoutName` text NOT NULL,
  `FormLayoutAutogenerate` tinyint(1) NOT NULL DEFAULT '1',
  `CSS` text NOT NULL,
  `JS` text NOT NULL,
  `FormTitle` text NOT NULL,
  `Published` tinyint(1) NOT NULL DEFAULT '1',
  `Lang` varchar(255) NOT NULL DEFAULT '',
  `ReturnUrl` text NOT NULL,
  `ShowThankyou` tinyint(1) NOT NULL DEFAULT '1',
  `Thankyou` text NOT NULL,
  `ShowContinue` tinyint(1) NOT NULL DEFAULT '1',
  `UserEmailText` text NOT NULL,
  `UserEmailTo` text NOT NULL,
  `UserEmailCC` varchar(255) NOT NULL,
  `UserEmailBCC` varchar(255) NOT NULL,
  `UserEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `UserEmailReplyTo` varchar(255) NOT NULL,
  `UserEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `UserEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `UserEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `UserEmailAttach` tinyint(4) NOT NULL,
  `UserEmailAttachFile` varchar(255) NOT NULL,
  `AdminEmailText` text NOT NULL,
  `AdminEmailTo` text NOT NULL,
  `AdminEmailCC` varchar(255) NOT NULL,
  `AdminEmailBCC` varchar(255) NOT NULL,
  `AdminEmailFrom` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailReplyTo` varchar(255) NOT NULL,
  `AdminEmailFromName` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailSubject` varchar(255) NOT NULL DEFAULT '',
  `AdminEmailMode` tinyint(4) NOT NULL DEFAULT '1',
  `ScriptProcess` text NOT NULL,
  `ScriptProcess2` text NOT NULL,
  `ScriptDisplay` text NOT NULL,
  `UserEmailScript` text NOT NULL,
  `AdminEmailScript` text NOT NULL,
  `AdditionalEmailsScript` text NOT NULL,
  `MetaTitle` tinyint(1) NOT NULL,
  `MetaDesc` text NOT NULL,
  `MetaKeywords` text NOT NULL,
  `Required` varchar(255) NOT NULL DEFAULT '(*)',
  `ErrorMessage` text NOT NULL,
  `MultipleSeparator` varchar(64) NOT NULL DEFAULT '\\n',
  `TextareaNewLines` tinyint(1) NOT NULL DEFAULT '1',
  `CSSClass` varchar(255) NOT NULL,
  `CSSId` varchar(255) NOT NULL DEFAULT 'userForm',
  `CSSName` varchar(255) NOT NULL,
  `CSSAction` text NOT NULL,
  `CSSAdditionalAttributes` text NOT NULL,
  `AjaxValidation` tinyint(1) NOT NULL,
  `ThemeParams` text NOT NULL,
  `Keepdata` tinyint(1) NOT NULL DEFAULT '1',
  `Backendmenu` tinyint(1) NOT NULL,
  `ConfirmSubmission` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`FormId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_rsform_forms`
--

INSERT INTO `jos_rsform_forms` VALUES(1, 'RSformPro example', '<fieldset class="formFieldset">\n<legend>{global:formtitle}</legend>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_1_page_0">\n	<li class="rsform-block rsform-block-header">\n		<div class="formCaption">{Header:caption}</div>\n		<div class="formBody">{Header:body}<span class="formClr">{Header:validation}</span></div>\n		<div class="formDescription">{Header:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-fullname">\n		<div class="formCaption">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{FullName:body}<span class="formClr">{FullName:validation}</span></div>\n		<div class="formDescription">{FullName:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-email">\n		<div class="formCaption">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Email:body}<span class="formClr">{Email:validation}</span></div>\n		<div class="formDescription">{Email:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-companysize">\n		<div class="formCaption">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{CompanySize:body}<span class="formClr">{CompanySize:validation}</span></div>\n		<div class="formDescription">{CompanySize:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-position">\n		<div class="formCaption">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Position:body}<span class="formClr">{Position:validation}</span></div>\n		<div class="formDescription">{Position:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactby">\n		<div class="formCaption">{ContactBy:caption}</div>\n		<div class="formBody">{ContactBy:body}<span class="formClr">{ContactBy:validation}</span></div>\n		<div class="formDescription">{ContactBy:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactwhen">\n		<div class="formCaption">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{ContactWhen:body}<span class="formClr">{ContactWhen:validation}</span></div>\n		<div class="formDescription">{ContactWhen:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-submit">\n		<div class="formCaption">{Submit:caption}</div>\n		<div class="formBody">{Submit:body}<span class="formClr">{Submit:validation}</span></div>\n		<div class="formDescription">{Submit:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-footer">\n		<div class="formCaption">{Footer:caption}</div>\n		<div class="formBody">{Footer:body}<span class="formClr">{Footer:validation}</span></div>\n		<div class="formDescription">{Footer:description}</div>\n	</li>\n</ol>\n</fieldset>', 'inline-xhtml', 1, '', '', 'RSForm! Pro example', 1, '', '', 1, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0);
INSERT INTO `jos_rsform_forms` VALUES(2, 'RSformPro Multipage example', '<fieldset class="formFieldset">\n<legend>{global:formtitle}</legend>\n{error}\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_0">\n	<li class="rsform-block rsform-block-header">\n		<div class="formCaption">{Header:caption}</div>\n		<div class="formBody">{Header:body}<span class="formClr">{Header:validation}</span></div>\n		<div class="formDescription">{Header:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-fullname">\n		<div class="formCaption">{FullName:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{FullName:body}<span class="formClr">{FullName:validation}</span></div>\n		<div class="formDescription">{FullName:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-email">\n		<div class="formCaption">{Email:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Email:body}<span class="formClr">{Email:validation}</span></div>\n		<div class="formDescription">{Email:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-page1">\n		<div class="formCaption">&nbsp;</div>\n		<div class="formBody">{Page1:body}</div>\n	</li>\n	</ol>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_1">\n	<li class="rsform-block rsform-block-companyheader">\n		<div class="formCaption">{CompanyHeader:caption}</div>\n		<div class="formBody">{CompanyHeader:body}<span class="formClr">{CompanyHeader:validation}</span></div>\n		<div class="formDescription">{CompanyHeader:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-companysize">\n		<div class="formCaption">{CompanySize:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{CompanySize:body}<span class="formClr">{CompanySize:validation}</span></div>\n		<div class="formDescription">{CompanySize:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-position">\n		<div class="formCaption">{Position:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{Position:body}<span class="formClr">{Position:validation}</span></div>\n		<div class="formDescription">{Position:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-page2">\n		<div class="formCaption">&nbsp;</div>\n		<div class="formBody">{Page2:body}</div>\n	</li>\n	</ol>\n<!-- Do not remove this ID, it is used to identify the page so that the pagination script can work correctly -->\n<ol class="formContainer" id="rsform_2_page_2">\n	<li class="rsform-block rsform-block-contactheader">\n		<div class="formCaption">{ContactHeader:caption}</div>\n		<div class="formBody">{ContactHeader:body}<span class="formClr">{ContactHeader:validation}</span></div>\n		<div class="formDescription">{ContactHeader:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactby">\n		<div class="formCaption">{ContactBy:caption}</div>\n		<div class="formBody">{ContactBy:body}<span class="formClr">{ContactBy:validation}</span></div>\n		<div class="formDescription">{ContactBy:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-contactwhen">\n		<div class="formCaption">{ContactWhen:caption}<strong class="formRequired">(*)</strong></div>\n		<div class="formBody">{ContactWhen:body}<span class="formClr">{ContactWhen:validation}</span></div>\n		<div class="formDescription">{ContactWhen:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-submit">\n		<div class="formCaption">{Submit:caption}</div>\n		<div class="formBody">{Submit:body}<span class="formClr">{Submit:validation}</span></div>\n		<div class="formDescription">{Submit:description}</div>\n	</li>\n	<li class="rsform-block rsform-block-footer">\n		<div class="formCaption">{Footer:caption}</div>\n		<div class="formBody">{Footer:body}<span class="formClr">{Footer:validation}</span></div>\n		<div class="formDescription">{Footer:description}</div>\n	</li>\n</ol>\n</fieldset>', 'inline-xhtml', 1, '', '', 'RSForm! Pro Multipage example', 1, '', '', 0, '<p>Dear {FullName:value},</p><p> thank you for your submission. One of our staff members will contact you by  {ContactBy:value} as soon as possible.</p>', 1, '<p>Dear {FullName:value},</p><p> we received your contact request. Someone will get back to you by {ContactBy:value} soon. </p>', '{Email:value}', '', '', 'your@email.com', '', 'Your Company', 'Contact confirmation', 1, 0, '', '<p>Customize this e-mail also. You will receive it as administrator. </p><p>{FullName:caption}:{FullName:value}<br />\n{Email:caption}:{Email:value}<br />\n{CompanySize:caption}:{CompanySize:value}<br />\n{Position:caption}:{Position:value}<br />\n{ContactBy:caption}:{ContactBy:value}<br />\n{ContactWhen:caption}:{ContactWhen:value}</p>', 'youradminemail@email.com', '', '', '{Email:value}', '', 'Your Company', 'Contact', 1, '', '', '', '', '', '', 0, 'This is the meta description of your form. You can use it for SEO purposes.', 'rsform, contact, form, joomla', '(*)', '<p class="formRed">Please complete all required fields!</p>', ', ', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0);
INSERT INTO `jos_rsform_forms` VALUES(3, 'lien-h', '{error}\r\n<div>{Text gioi thieu:body}</div>\r\n<table border="0">\r\n	<tr class="rsform-block rsform-block-hoten">\r\n		<td>{hoten:caption} </td>\r\n		<td>{hoten:body}<div class="formClr"></div>{hoten:validation}</td>\r\n		<td>{hoten:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-diachi">\r\n		<td>{diachi:caption} </td>\r\n		<td>{diachi:body}<div class="formClr"></div>{diachi:validation}</td>\r\n		<td>{diachi:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-email">\r\n		<td>{Email:caption} </td>\r\n		<td>{Email:body}<div class="formClr"></div>{Email:validation}</td>\r\n		<td>{Email:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-dt">\r\n		<td>{dt:caption}</td>\r\n		<td>{dt:body}<div class="formClr"></div>{dt:validation}</td>\r\n		<td>{dt:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-guiden">\r\n		<td>{Guiden:caption}</td>\r\n		<td>{Guiden:body}<div class="formClr"></div>{Guiden:validation}</td>\r\n		<td>{Guiden:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-noidung">\r\n		<td>{Noidung:caption}</td>\r\n		<td>{Noidung:body}<div class="formClr"></div>{Noidung:validation}</td>\r\n		<td>{Noidung:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-capcha">\r\n		<td>{capcha:caption}</td>\r\n		<td>{capcha:body}<div class="formClr"></div>{capcha:validation}</td>\r\n		<td>{capcha:description}</td>\r\n	</tr>\r\n	<tr class="rsform-block rsform-block-gui">\r\n		<td>{gui:caption}</td>\r\n		<td>{gui:body}<div class="formClr"></div>{gui:validation}</td>\r\n		<td>{gui:description}</td>\r\n	</tr>\r\n</table>\r\n', 'inline', 0, '', '', 'Liên hệ', 1, 'en-GB', '', 1, '', 0, '<p>Thank you for contacting us. We will get back to you as soon as possible.</p>', '', '', '', 'htkieuphuong@gmail.com', '', 'GMtech', 'Thank you for your submission!', 1, 0, '', '<p>You have a new submission.</p>', 'htkieuphuong@gmail.com', '', '', 'htkieuphuong@gmail.com', '', 'GMtech', 'New submission from ''Liên hệ''!', 1, '', '', '', '', '', '', 0, '', '', '', '<p class="formRed">Please complete all required fields!</p>', '\\n', 1, '', 'userForm', '', '', '', 0, '', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_mappings`
--

DROP TABLE IF EXISTS `jos_rsform_mappings`;
CREATE TABLE IF NOT EXISTS `jos_rsform_mappings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `formId` int(11) NOT NULL,
  `connection` tinyint(1) NOT NULL,
  `host` varchar(255) NOT NULL,
  `port` int(10) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `database` varchar(255) NOT NULL,
  `method` tinyint(1) NOT NULL,
  `table` varchar(255) NOT NULL,
  `data` text NOT NULL,
  `wheredata` text NOT NULL,
  `extra` text NOT NULL,
  `andor` text NOT NULL,
  `ordering` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_rsform_mappings`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_properties`
--

DROP TABLE IF EXISTS `jos_rsform_properties`;
CREATE TABLE IF NOT EXISTS `jos_rsform_properties` (
  `PropertyId` int(11) NOT NULL AUTO_INCREMENT,
  `ComponentId` int(11) NOT NULL DEFAULT '0',
  `PropertyName` text NOT NULL,
  `PropertyValue` text NOT NULL,
  UNIQUE KEY `PropertyId` (`PropertyId`),
  KEY `ComponentId` (`ComponentId`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=250 ;

--
-- Dumping data for table `jos_rsform_properties`
--

INSERT INTO `jos_rsform_properties` VALUES(1, 1, 'NAME', 'FullName');
INSERT INTO `jos_rsform_properties` VALUES(2, 1, 'CAPTION', 'Full Name');
INSERT INTO `jos_rsform_properties` VALUES(3, 1, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(4, 1, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(5, 1, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(6, 1, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES(7, 1, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `jos_rsform_properties` VALUES(8, 1, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(9, 1, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(10, 1, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(11, 2, 'NAME', 'Header');
INSERT INTO `jos_rsform_properties` VALUES(12, 2, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `jos_rsform_properties` VALUES(13, 3, 'NAME', 'Email');
INSERT INTO `jos_rsform_properties` VALUES(14, 3, 'CAPTION', 'E-mail');
INSERT INTO `jos_rsform_properties` VALUES(15, 3, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(16, 3, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(17, 3, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(18, 3, 'VALIDATIONRULE', 'email');
INSERT INTO `jos_rsform_properties` VALUES(19, 3, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `jos_rsform_properties` VALUES(20, 3, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(21, 3, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(22, 3, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(23, 4, 'NAME', 'CompanySize');
INSERT INTO `jos_rsform_properties` VALUES(24, 4, 'CAPTION', 'Number of Employees');
INSERT INTO `jos_rsform_properties` VALUES(25, 4, 'SIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(26, 4, 'MULTIPLE', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(27, 4, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `jos_rsform_properties` VALUES(28, 4, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(29, 4, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(30, 4, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(31, 4, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `jos_rsform_properties` VALUES(32, 5, 'NAME', 'Position');
INSERT INTO `jos_rsform_properties` VALUES(33, 5, 'CAPTION', 'Position');
INSERT INTO `jos_rsform_properties` VALUES(34, 5, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `jos_rsform_properties` VALUES(35, 5, 'FLOW', 'HORIZONTAL');
INSERT INTO `jos_rsform_properties` VALUES(36, 5, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(37, 5, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(38, 5, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(39, 5, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `jos_rsform_properties` VALUES(40, 6, 'NAME', 'ContactBy');
INSERT INTO `jos_rsform_properties` VALUES(41, 6, 'CAPTION', 'How should we contact you?');
INSERT INTO `jos_rsform_properties` VALUES(42, 6, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `jos_rsform_properties` VALUES(43, 6, 'FLOW', 'HORIZONTAL');
INSERT INTO `jos_rsform_properties` VALUES(44, 6, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(45, 6, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(46, 6, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(47, 6, 'VALIDATIONMESSAGE', '');
INSERT INTO `jos_rsform_properties` VALUES(48, 7, 'NAME', 'ContactWhen');
INSERT INTO `jos_rsform_properties` VALUES(49, 7, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `jos_rsform_properties` VALUES(50, 7, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(51, 7, 'DATEFORMAT', 'dd.mm.yyyy');
INSERT INTO `jos_rsform_properties` VALUES(52, 7, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `jos_rsform_properties` VALUES(53, 7, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(54, 7, 'READONLY', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(55, 7, 'POPUPLABEL', '...');
INSERT INTO `jos_rsform_properties` VALUES(56, 7, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(57, 7, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `jos_rsform_properties` VALUES(58, 8, 'NAME', 'Submit');
INSERT INTO `jos_rsform_properties` VALUES(59, 8, 'LABEL', 'Submit');
INSERT INTO `jos_rsform_properties` VALUES(60, 8, 'CAPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(61, 8, 'RESET', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(62, 8, 'RESETLABEL', 'Reset');
INSERT INTO `jos_rsform_properties` VALUES(63, 8, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(64, 9, 'NAME', 'Footer');
INSERT INTO `jos_rsform_properties` VALUES(65, 9, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>');
INSERT INTO `jos_rsform_properties` VALUES(68, 10, 'NAME', 'FullName');
INSERT INTO `jos_rsform_properties` VALUES(69, 10, 'CAPTION', 'Full Name');
INSERT INTO `jos_rsform_properties` VALUES(70, 10, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(71, 10, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(72, 10, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(73, 10, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES(74, 10, 'VALIDATIONMESSAGE', 'Please type your full name.');
INSERT INTO `jos_rsform_properties` VALUES(75, 10, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(76, 10, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(77, 10, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(78, 10, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(79, 11, 'NAME', 'Header');
INSERT INTO `jos_rsform_properties` VALUES(80, 11, 'TEXT', '<b>This text describes the form. It is added using the Free Text component</b>. HTML code can be added directly here.');
INSERT INTO `jos_rsform_properties` VALUES(81, 12, 'NAME', 'Email');
INSERT INTO `jos_rsform_properties` VALUES(82, 12, 'CAPTION', 'E-mail');
INSERT INTO `jos_rsform_properties` VALUES(83, 12, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(84, 12, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(85, 12, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(86, 12, 'VALIDATIONRULE', 'email');
INSERT INTO `jos_rsform_properties` VALUES(87, 12, 'VALIDATIONMESSAGE', 'Invalid email address.');
INSERT INTO `jos_rsform_properties` VALUES(88, 12, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(89, 12, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(90, 12, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(91, 12, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(92, 13, 'NAME', 'CompanySize');
INSERT INTO `jos_rsform_properties` VALUES(93, 13, 'CAPTION', 'Number of Employees');
INSERT INTO `jos_rsform_properties` VALUES(94, 13, 'SIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(95, 13, 'MULTIPLE', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(96, 13, 'ITEMS', '|Please Select[c]\n1-20\n21-50\n51-100\n>100|More than 100');
INSERT INTO `jos_rsform_properties` VALUES(97, 13, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(98, 13, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(99, 13, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(100, 13, 'VALIDATIONMESSAGE', 'Please tell us how big is your company.');
INSERT INTO `jos_rsform_properties` VALUES(101, 14, 'NAME', 'Position');
INSERT INTO `jos_rsform_properties` VALUES(102, 14, 'CAPTION', 'Position');
INSERT INTO `jos_rsform_properties` VALUES(103, 14, 'ITEMS', 'CEO\nCFO\nCTO\nHR[c]');
INSERT INTO `jos_rsform_properties` VALUES(104, 14, 'FLOW', 'HORIZONTAL');
INSERT INTO `jos_rsform_properties` VALUES(105, 14, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(106, 14, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(107, 14, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(108, 14, 'VALIDATIONMESSAGE', 'Please specify your position in the company');
INSERT INTO `jos_rsform_properties` VALUES(109, 15, 'NAME', 'ContactBy');
INSERT INTO `jos_rsform_properties` VALUES(110, 15, 'CAPTION', 'How should we contact you?');
INSERT INTO `jos_rsform_properties` VALUES(111, 15, 'ITEMS', 'E-mail[c]\nPhone\nNewsletter[c]\nMail');
INSERT INTO `jos_rsform_properties` VALUES(112, 15, 'FLOW', 'HORIZONTAL');
INSERT INTO `jos_rsform_properties` VALUES(113, 15, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(114, 15, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(115, 15, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(116, 15, 'VALIDATIONMESSAGE', '');
INSERT INTO `jos_rsform_properties` VALUES(117, 16, 'NAME', 'ContactWhen');
INSERT INTO `jos_rsform_properties` VALUES(118, 16, 'CAPTION', 'When would you like to be contacted?');
INSERT INTO `jos_rsform_properties` VALUES(119, 16, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(120, 16, 'DATEFORMAT', 'dd.mm.yyyy');
INSERT INTO `jos_rsform_properties` VALUES(121, 16, 'CALENDARLAYOUT', 'POPUP');
INSERT INTO `jos_rsform_properties` VALUES(122, 16, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(123, 16, 'READONLY', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(124, 16, 'POPUPLABEL', '...');
INSERT INTO `jos_rsform_properties` VALUES(125, 16, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(126, 16, 'VALIDATIONMESSAGE', 'Please select a date when we should contact you.');
INSERT INTO `jos_rsform_properties` VALUES(127, 17, 'NAME', 'Submit');
INSERT INTO `jos_rsform_properties` VALUES(128, 17, 'LABEL', 'Submit');
INSERT INTO `jos_rsform_properties` VALUES(129, 17, 'CAPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(130, 17, 'RESET', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(131, 17, 'RESETLABEL', 'Reset');
INSERT INTO `jos_rsform_properties` VALUES(132, 17, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(133, 18, 'NAME', 'Footer');
INSERT INTO `jos_rsform_properties` VALUES(134, 18, 'TEXT', 'This form is an example. Please check our knowledgebase for articles related to how you should build your form. Articles are updated daily. <a href="http://www.rsjoomla.com/" target="_blank">http://www.rsjoomla.com/</a>');
INSERT INTO `jos_rsform_properties` VALUES(135, 19, 'NAME', 'Page1');
INSERT INTO `jos_rsform_properties` VALUES(136, 19, 'NEXTBUTTON', 'Next >');
INSERT INTO `jos_rsform_properties` VALUES(137, 19, 'PREVBUTTON', 'Prev');
INSERT INTO `jos_rsform_properties` VALUES(138, 19, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(139, 20, 'NAME', 'Page2');
INSERT INTO `jos_rsform_properties` VALUES(140, 20, 'NEXTBUTTON', 'Next >');
INSERT INTO `jos_rsform_properties` VALUES(141, 20, 'PREVBUTTON', 'Prev');
INSERT INTO `jos_rsform_properties` VALUES(142, 20, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(143, 21, 'NAME', 'CompanyHeader');
INSERT INTO `jos_rsform_properties` VALUES(144, 21, 'TEXT', 'Please tell us a little about your company.');
INSERT INTO `jos_rsform_properties` VALUES(145, 22, 'NAME', 'ContactHeader');
INSERT INTO `jos_rsform_properties` VALUES(146, 22, 'TEXT', 'Please let us know how and when to contact you.');
INSERT INTO `jos_rsform_properties` VALUES(147, 1, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(148, 3, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(149, 10, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(150, 12, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(151, 23, 'NAME', 'Text gioi thieu');
INSERT INTO `jos_rsform_properties` VALUES(152, 23, 'TEXT', 'Quý vị có thể gửi thư tới chúng tôi bằng cách hoàn thành biểu mẫu dưới đây');
INSERT INTO `jos_rsform_properties` VALUES(153, 23, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(154, 24, 'NAME', 'hoten');
INSERT INTO `jos_rsform_properties` VALUES(155, 24, 'CAPTION', 'Họ & Tên:');
INSERT INTO `jos_rsform_properties` VALUES(156, 24, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(157, 24, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(158, 24, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(159, 24, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(160, 24, 'VALIDATIONRULE', 'alpha');
INSERT INTO `jos_rsform_properties` VALUES(161, 24, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(162, 24, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(163, 24, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(164, 24, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(165, 24, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(166, 25, 'NAME', 'diachi');
INSERT INTO `jos_rsform_properties` VALUES(167, 25, 'CAPTION', 'Địa chỉ');
INSERT INTO `jos_rsform_properties` VALUES(168, 25, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(169, 25, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(170, 25, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(171, 25, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(172, 25, 'VALIDATIONRULE', 'alpha');
INSERT INTO `jos_rsform_properties` VALUES(173, 25, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(174, 25, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(175, 25, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(176, 25, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(177, 25, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(178, 26, 'NAME', 'Email');
INSERT INTO `jos_rsform_properties` VALUES(179, 26, 'CAPTION', 'Email');
INSERT INTO `jos_rsform_properties` VALUES(180, 26, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(181, 26, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(182, 26, 'REQUIRED', 'YES');
INSERT INTO `jos_rsform_properties` VALUES(183, 26, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(184, 26, 'VALIDATIONRULE', 'email');
INSERT INTO `jos_rsform_properties` VALUES(185, 26, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(186, 26, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(187, 26, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(188, 26, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(189, 26, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(190, 27, 'NAME', 'dt');
INSERT INTO `jos_rsform_properties` VALUES(191, 27, 'CAPTION', 'Điện thoại');
INSERT INTO `jos_rsform_properties` VALUES(192, 27, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(193, 27, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(194, 27, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(195, 27, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(196, 27, 'VALIDATIONRULE', 'numeric');
INSERT INTO `jos_rsform_properties` VALUES(197, 27, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(198, 27, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(199, 27, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(200, 27, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(201, 27, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(202, 28, 'NAME', 'Guiden');
INSERT INTO `jos_rsform_properties` VALUES(203, 28, 'CAPTION', 'Gửi đến:');
INSERT INTO `jos_rsform_properties` VALUES(204, 28, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(205, 28, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(206, 28, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(207, 28, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(208, 28, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES(209, 28, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(210, 28, 'SIZE', '20');
INSERT INTO `jos_rsform_properties` VALUES(211, 28, 'MAXSIZE', '');
INSERT INTO `jos_rsform_properties` VALUES(212, 28, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(213, 28, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(214, 29, 'NAME', 'Noidung');
INSERT INTO `jos_rsform_properties` VALUES(215, 29, 'CAPTION', 'Nội dung');
INSERT INTO `jos_rsform_properties` VALUES(216, 29, 'DEFAULTVALUE', '');
INSERT INTO `jos_rsform_properties` VALUES(217, 29, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(218, 29, 'REQUIRED', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(219, 29, 'VALIDATIONEXTRA', '');
INSERT INTO `jos_rsform_properties` VALUES(220, 29, 'VALIDATIONRULE', 'none');
INSERT INTO `jos_rsform_properties` VALUES(221, 29, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(222, 29, 'COLS', '30');
INSERT INTO `jos_rsform_properties` VALUES(223, 29, 'ROWS', '10');
INSERT INTO `jos_rsform_properties` VALUES(224, 29, 'WYSIWYG', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(225, 29, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(226, 29, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(227, 30, 'NAME', 'capcha');
INSERT INTO `jos_rsform_properties` VALUES(228, 30, 'CAPTION', 'Capcha');
INSERT INTO `jos_rsform_properties` VALUES(229, 30, 'DESCRIPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(230, 30, 'VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_properties` VALUES(231, 30, 'IMAGETYPE', 'FREETYPE');
INSERT INTO `jos_rsform_properties` VALUES(232, 30, 'LENGTH', '4');
INSERT INTO `jos_rsform_properties` VALUES(233, 30, 'BACKGROUNDCOLOR', '#FFFFFF');
INSERT INTO `jos_rsform_properties` VALUES(234, 30, 'TEXTCOLOR', '#000000');
INSERT INTO `jos_rsform_properties` VALUES(235, 30, 'TYPE', 'ALPHA');
INSERT INTO `jos_rsform_properties` VALUES(236, 30, 'FLOW', 'VERTICAL');
INSERT INTO `jos_rsform_properties` VALUES(237, 30, 'SHOWREFRESH', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(238, 30, 'REFRESHTEXT', 'Refresh');
INSERT INTO `jos_rsform_properties` VALUES(239, 30, 'SIZE', '15');
INSERT INTO `jos_rsform_properties` VALUES(240, 30, 'ADDITIONALATTRIBUTES', 'style="text-align:center;width:75px;"');
INSERT INTO `jos_rsform_properties` VALUES(241, 30, 'EMAILATTACH', '');
INSERT INTO `jos_rsform_properties` VALUES(242, 31, 'NAME', 'gui');
INSERT INTO `jos_rsform_properties` VALUES(243, 31, 'LABEL', 'Gửi');
INSERT INTO `jos_rsform_properties` VALUES(244, 31, 'CAPTION', '');
INSERT INTO `jos_rsform_properties` VALUES(245, 31, 'RESET', 'NO');
INSERT INTO `jos_rsform_properties` VALUES(246, 31, 'RESETLABEL', '');
INSERT INTO `jos_rsform_properties` VALUES(247, 31, 'PREVBUTTON', 'Prev');
INSERT INTO `jos_rsform_properties` VALUES(248, 31, 'ADDITIONALATTRIBUTES', '');
INSERT INTO `jos_rsform_properties` VALUES(249, 31, 'EMAILATTACH', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_submissions`
--

DROP TABLE IF EXISTS `jos_rsform_submissions`;
CREATE TABLE IF NOT EXISTS `jos_rsform_submissions` (
  `SubmissionId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL DEFAULT '0',
  `DateSubmitted` datetime NOT NULL,
  `UserIp` varchar(15) NOT NULL DEFAULT '',
  `Username` varchar(255) NOT NULL DEFAULT '',
  `UserId` text NOT NULL,
  `Lang` varchar(255) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  PRIMARY KEY (`SubmissionId`),
  KEY `FormId` (`FormId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_rsform_submissions`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_submission_columns`
--

DROP TABLE IF EXISTS `jos_rsform_submission_columns`;
CREATE TABLE IF NOT EXISTS `jos_rsform_submission_columns` (
  `FormId` int(11) NOT NULL,
  `ColumnName` varchar(255) NOT NULL,
  `ColumnStatic` tinyint(1) NOT NULL,
  PRIMARY KEY (`FormId`,`ColumnName`,`ColumnStatic`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_rsform_submission_columns`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_submission_values`
--

DROP TABLE IF EXISTS `jos_rsform_submission_values`;
CREATE TABLE IF NOT EXISTS `jos_rsform_submission_values` (
  `SubmissionValueId` int(11) NOT NULL AUTO_INCREMENT,
  `FormId` int(11) NOT NULL,
  `SubmissionId` int(11) NOT NULL DEFAULT '0',
  `FieldName` text NOT NULL,
  `FieldValue` text NOT NULL,
  PRIMARY KEY (`SubmissionValueId`),
  KEY `FormId` (`FormId`),
  KEY `SubmissionId` (`SubmissionId`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_rsform_submission_values`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_rsform_translations`
--

DROP TABLE IF EXISTS `jos_rsform_translations`;
CREATE TABLE IF NOT EXISTS `jos_rsform_translations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `form_id` int(11) NOT NULL,
  `lang_code` varchar(32) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `reference_id` varchar(255) NOT NULL,
  `value` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `jos_rsform_translations`
--

INSERT INTO `jos_rsform_translations` VALUES(1, 3, 'vi-VN', 'properties', '23.TEXT', 'Quý vị có thể gửi thư tới chúng tôi bằng cách hoàn thành biểu mẫu dưới đây');
INSERT INTO `jos_rsform_translations` VALUES(2, 3, 'vi-VN', 'properties', '24.CAPTION', 'Họ & Tên:');
INSERT INTO `jos_rsform_translations` VALUES(3, 3, 'vi-VN', 'properties', '24.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(4, 3, 'vi-VN', 'properties', '24.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(5, 3, 'vi-VN', 'properties', '24.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(6, 3, 'vi-VN', 'properties', '25.CAPTION', 'Địa chỉ');
INSERT INTO `jos_rsform_translations` VALUES(7, 3, 'vi-VN', 'properties', '25.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(8, 3, 'vi-VN', 'properties', '25.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(9, 3, 'vi-VN', 'properties', '25.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(10, 3, 'vi-VN', 'properties', '26.CAPTION', 'Email');
INSERT INTO `jos_rsform_translations` VALUES(11, 3, 'vi-VN', 'properties', '26.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(12, 3, 'vi-VN', 'properties', '26.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(13, 3, 'vi-VN', 'properties', '26.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(14, 3, 'vi-VN', 'properties', '27.CAPTION', 'Điện thoại');
INSERT INTO `jos_rsform_translations` VALUES(15, 3, 'vi-VN', 'properties', '27.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(16, 3, 'vi-VN', 'properties', '27.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(17, 3, 'vi-VN', 'properties', '27.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(18, 3, 'vi-VN', 'properties', '28.CAPTION', 'Gửi đến:');
INSERT INTO `jos_rsform_translations` VALUES(19, 3, 'vi-VN', 'properties', '28.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(20, 3, 'vi-VN', 'properties', '28.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(21, 3, 'vi-VN', 'properties', '28.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(22, 3, 'vi-VN', 'properties', '29.CAPTION', 'Nội dung');
INSERT INTO `jos_rsform_translations` VALUES(23, 3, 'vi-VN', 'properties', '29.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(24, 3, 'vi-VN', 'properties', '29.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(25, 3, 'vi-VN', 'properties', '29.DEFAULTVALUE', '');
INSERT INTO `jos_rsform_translations` VALUES(26, 3, 'vi-VN', 'properties', '30.CAPTION', 'Capcha');
INSERT INTO `jos_rsform_translations` VALUES(27, 3, 'vi-VN', 'properties', '30.DESCRIPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(28, 3, 'vi-VN', 'properties', '30.VALIDATIONMESSAGE', 'Invalid Input');
INSERT INTO `jos_rsform_translations` VALUES(29, 3, 'vi-VN', 'properties', '30.REFRESHTEXT', 'Refresh');
INSERT INTO `jos_rsform_translations` VALUES(30, 3, 'vi-VN', 'properties', '31.LABEL', 'Gửi');
INSERT INTO `jos_rsform_translations` VALUES(31, 3, 'vi-VN', 'properties', '31.RESETLABEL', '');
INSERT INTO `jos_rsform_translations` VALUES(32, 3, 'vi-VN', 'properties', '31.PREVBUTTON', 'Prev');
INSERT INTO `jos_rsform_translations` VALUES(33, 3, 'vi-VN', 'properties', '31.CAPTION', '');
INSERT INTO `jos_rsform_translations` VALUES(34, 3, 'vi-VN', 'forms', 'FormTitle', 'Liên hệ');
INSERT INTO `jos_rsform_translations` VALUES(35, 3, 'vi-VN', 'forms', 'UserEmailFromName', 'GMtech');
INSERT INTO `jos_rsform_translations` VALUES(36, 3, 'vi-VN', 'forms', 'UserEmailSubject', 'Thank you for your submission!');
INSERT INTO `jos_rsform_translations` VALUES(37, 3, 'vi-VN', 'forms', 'AdminEmailFromName', 'GMtech');
INSERT INTO `jos_rsform_translations` VALUES(38, 3, 'vi-VN', 'forms', 'AdminEmailSubject', 'New submission from ''Liên hệ''!');
INSERT INTO `jos_rsform_translations` VALUES(39, 3, 'vi-VN', 'forms', 'MetaDesc', '');
INSERT INTO `jos_rsform_translations` VALUES(40, 3, 'vi-VN', 'forms', 'MetaKeywords', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_sections`
--

DROP TABLE IF EXISTS `jos_sections`;
CREATE TABLE IF NOT EXISTS `jos_sections` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL DEFAULT '',
  `name` varchar(255) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `image` text NOT NULL,
  `scope` varchar(50) NOT NULL DEFAULT '',
  `image_position` varchar(30) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) unsigned NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `access` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `count` int(11) NOT NULL DEFAULT '0',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idx_scope` (`scope`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `jos_sections`
--

INSERT INTO `jos_sections` VALUES(1, 'gmtech', '', 'gmtech', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 1, 0, 7, '');
INSERT INTO `jos_sections` VALUES(2, 'Sản phẩm', '', 'sn-phm', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 2, 0, 3, '');
INSERT INTO `jos_sections` VALUES(3, 'tintuc', '', 'tintuc', '', 'content', 'left', '', 1, 0, '0000-00-00 00:00:00', 3, 0, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_session`
--

DROP TABLE IF EXISTS `jos_session`;
CREATE TABLE IF NOT EXISTS `jos_session` (
  `username` varchar(150) DEFAULT '',
  `time` varchar(14) DEFAULT '',
  `session_id` varchar(200) NOT NULL DEFAULT '0',
  `guest` tinyint(4) DEFAULT '1',
  `userid` int(11) DEFAULT '0',
  `usertype` varchar(50) DEFAULT '',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `client_id` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `data` longtext,
  PRIMARY KEY (`session_id`(64)),
  KEY `whosonline` (`guest`,`usertype`),
  KEY `userid` (`userid`),
  KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_session`
--

INSERT INTO `jos_session` VALUES('admin', '1325939765', 'c2c0f4618a0e06a45732021ac59cc9e9', 0, 62, 'Super Administrator', 25, 1, '__default|a:8:{s:15:"session.counter";i:23;s:19:"session.timer.start";i:1325939543;s:18:"session.timer.last";i:1325939765;s:17:"session.timer.now";i:1325939765;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 6.0; rv:8.0.1) Gecko/20100101 Firefox/8.0.1";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:5:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:0:"";}}s:10:"com_cpanel";a:1:{s:4:"data";O:8:"stdClass":1:{s:9:"mtupgrade";O:8:"stdClass":1:{s:7:"checked";b:1;}}}s:6:"global";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"list";O:8:"stdClass":1:{s:5:"limit";s:2:"20";}}}s:13:"com_installer";a:1:{s:4:"data";O:8:"stdClass":2:{s:10:"limitstart";O:8:"stdClass":1:{s:8:"template";i:0;}s:9:"templates";O:8:"stdClass":1:{s:6:"client";s:2:"-1";}}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";s:2:"62";s:4:"name";s:13:"Administrator";s:8:"username";s:5:"admin";s:5:"email";s:22:"htkieuphuong@gmail.com";s:8:"password";s:65:"352190e329693afc5832d28226d72dca:YxawdtNuGxbslSRoJAeUVPOuLcATYkRF";s:14:"password_clear";s:0:"";s:8:"usertype";s:19:"Super Administrator";s:5:"block";s:1:"0";s:9:"sendEmail";s:1:"1";s:3:"gid";s:2:"25";s:12:"registerDate";s:19:"2010-10-27 16:01:05";s:13:"lastvisitDate";s:19:"2012-01-07 10:38:32";s:10:"activation";s:0:"";s:6:"params";s:0:"";s:3:"aid";i:2;s:5:"guest";i:0;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:70:"/Users/phongjalvn/Sites/gmtech/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"0b54acfaf97c44d636849f734a534f38";}');
INSERT INTO `jos_session` VALUES('', '1325940448', '162a2d74b33e8d1da6710173f8ab52f1', 1, 0, '', 0, 0, '__default|a:7:{s:15:"session.counter";i:16;s:19:"session.timer.start";i:1325938846;s:18:"session.timer.last";i:1325940245;s:17:"session.timer.now";i:1325940448;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 6.0; rv:8.0.1) Gecko/20100101 Firefox/8.0.1";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:2:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}s:11:"application";a:1:{s:4:"data";O:8:"stdClass":1:{s:4:"lang";s:5:"vi-VN";}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:70:"/Users/phongjalvn/Sites/gmtech/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}}');
INSERT INTO `jos_session` VALUES('', '1325939659', '221bcc39ed30c233efa1ce9356009588', 1, 0, '', 0, 1, '__default|a:8:{s:15:"session.counter";i:2;s:19:"session.timer.start";i:1325939543;s:18:"session.timer.last";i:1325939543;s:17:"session.timer.now";i:1325939549;s:22:"session.client.browser";s:67:"Mozilla/5.0 (Windows NT 6.0; rv:8.0.1) Gecko/20100101 Firefox/8.0.1";s:8:"registry";O:9:"JRegistry":3:{s:17:"_defaultNameSpace";s:7:"session";s:9:"_registry";a:1:{s:7:"session";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:4:"user";O:5:"JUser":19:{s:2:"id";i:0;s:4:"name";N;s:8:"username";N;s:5:"email";N;s:8:"password";N;s:14:"password_clear";s:0:"";s:8:"usertype";N;s:5:"block";N;s:9:"sendEmail";i:0;s:3:"gid";i:0;s:12:"registerDate";N;s:13:"lastvisitDate";N;s:10:"activation";N;s:6:"params";N;s:3:"aid";i:0;s:5:"guest";i:1;s:7:"_params";O:10:"JParameter":7:{s:4:"_raw";s:0:"";s:4:"_xml";N;s:9:"_elements";a:0:{}s:12:"_elementPath";a:1:{i:0;s:70:"/Users/phongjalvn/Sites/gmtech/libraries/joomla/html/parameter/element";}s:17:"_defaultNameSpace";s:8:"_default";s:9:"_registry";a:1:{s:8:"_default";a:1:{s:4:"data";O:8:"stdClass":0:{}}}s:7:"_errors";a:0:{}}s:9:"_errorMsg";N;s:7:"_errors";a:0:{}}s:13:"session.token";s:32:"0b54acfaf97c44d636849f734a534f38";}');

-- --------------------------------------------------------

--
-- Table structure for table `jos_stats_agents`
--

DROP TABLE IF EXISTS `jos_stats_agents`;
CREATE TABLE IF NOT EXISTS `jos_stats_agents` (
  `agent` varchar(255) NOT NULL DEFAULT '',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `hits` int(11) unsigned NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_stats_agents`
--


-- --------------------------------------------------------

--
-- Table structure for table `jos_templates_menu`
--

DROP TABLE IF EXISTS `jos_templates_menu`;
CREATE TABLE IF NOT EXISTS `jos_templates_menu` (
  `template` varchar(255) NOT NULL DEFAULT '',
  `menuid` int(11) NOT NULL DEFAULT '0',
  `client_id` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`menuid`,`client_id`,`template`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_templates_menu`
--

INSERT INTO `jos_templates_menu` VALUES('gmtect', 0, 0);
INSERT INTO `jos_templates_menu` VALUES('khepri', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `jos_users`
--

DROP TABLE IF EXISTS `jos_users`;
CREATE TABLE IF NOT EXISTS `jos_users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL DEFAULT '',
  `username` varchar(150) NOT NULL DEFAULT '',
  `email` varchar(100) NOT NULL DEFAULT '',
  `password` varchar(100) NOT NULL DEFAULT '',
  `usertype` varchar(25) NOT NULL DEFAULT '',
  `block` tinyint(4) NOT NULL DEFAULT '0',
  `sendEmail` tinyint(4) DEFAULT '0',
  `gid` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `registerDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `lastvisitDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activation` varchar(100) NOT NULL DEFAULT '',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `usertype` (`usertype`),
  KEY `idx_name` (`name`),
  KEY `gid_block` (`gid`,`block`),
  KEY `username` (`username`),
  KEY `email` (`email`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=63 ;

--
-- Dumping data for table `jos_users`
--

INSERT INTO `jos_users` VALUES(62, 'Administrator', 'admin', 'htkieuphuong@gmail.com', '352190e329693afc5832d28226d72dca:YxawdtNuGxbslSRoJAeUVPOuLcATYkRF', 'Super Administrator', 0, 1, 25, '2010-10-27 16:01:05', '2012-01-07 12:34:19', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `jos_vvcounter_logs`
--

DROP TABLE IF EXISTS `jos_vvcounter_logs`;
CREATE TABLE IF NOT EXISTS `jos_vvcounter_logs` (
  `time` int(10) unsigned NOT NULL,
  `visits` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `guests` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `members` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bots` mediumint(8) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `time` (`time`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jos_vvcounter_logs`
--

INSERT INTO `jos_vvcounter_logs` VALUES(1316661389, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316662540, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316663980, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316664000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316665877, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316667600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316669574, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316670927, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316671200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316674692, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316674800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316675706, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316676636, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316677733, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316678400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316679380, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316680288, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316681205, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316682000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316682910, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316684167, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316685283, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316685600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316686503, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316687641, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316696400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316699633, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316700000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316714400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316715698, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316718000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316721450, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316721600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316724826, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316725200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316727531, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316732400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1316735224, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325631600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325633070, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325634032, 5, 4, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325634944, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325635200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325636132, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325637097, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325638238, 5, 3, 2, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325638800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325640186, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325641310, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325642217, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325642400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325643800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325644928, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325645838, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325646000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325647263, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325648170, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325649155, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325649600, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325650968, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325652318, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325653200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325654100, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325655002, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325655902, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325656800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325659270, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325660174, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325660400, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325661318, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325662237, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325663147, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325664000, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325664992, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325666086, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325667412, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325667600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325669465, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325670512, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325671200, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325672880, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325673782, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325678400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325680720, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325681631, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325682000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325682917, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325683818, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325684740, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325685600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325686520, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325687435, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325688352, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325689200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325690180, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325691108, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325692401, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325692800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325714400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325721600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325722824, 8, 8, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325723807, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325725200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325726143, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325727300, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325728503, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325728800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325731180, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325732279, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325732400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325733340, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325735339, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325739600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325740516, 3, 3, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325741424, 4, 3, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325742341, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325743200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325745815, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325746800, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325750400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325751625, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325752546, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325753464, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325754000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325772000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325774849, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325775600, 5, 3, 2, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325776513, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325777419, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325778335, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325779200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325780107, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325781022, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325781954, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325782800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325783761, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325784719, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325785619, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325786400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325787423, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325789620, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325790000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325791311, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325793305, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325793600, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325794692, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325796144, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325797200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325798464, 4, 3, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325799364, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325800278, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325800800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325801927, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325803135, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325804039, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325804400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325805311, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325806249, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325807182, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325808000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325809538, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325810446, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325811600, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325812548, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325813468, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325814392, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325815200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325816161, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325817095, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325818178, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325818800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325820464, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325821596, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325826000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325827624, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325829600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325830522, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325831601, 2, 2, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325832825, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325833200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325834109, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325835037, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325835939, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325836800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325837716, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325838629, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325839620, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325840400, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325841308, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325842252, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325843232, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325844000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325846256, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325847600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325851200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325852107, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325853092, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325854428, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325854800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325855924, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325858400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325860755, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325861675, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325869200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325870106, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325871391, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325872800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325873825, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325876060, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325876400, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325878155, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325879101, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325880000, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325880915, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325882008, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325882982, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325883600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325884571, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325885584, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325886520, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325887200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325888331, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325890149, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325890800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325891722, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325892643, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325893566, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325894400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325895302, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325905200, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325906120, 8, 7, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325907027, 3, 2, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325907934, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325908800, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325909720, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325910625, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325912026, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325912400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325913306, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325914620, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325919600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325920505, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325930400, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325931379, 3, 3, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325932324, 2, 1, 1, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325934000, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325934969, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325935945, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325937600, 0, 0, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325938846, 1, 1, 0, 0);
INSERT INTO `jos_vvcounter_logs` VALUES(1325939747, 2, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `jos_weblinks`
--

DROP TABLE IF EXISTS `jos_weblinks`;
CREATE TABLE IF NOT EXISTS `jos_weblinks` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `catid` int(11) NOT NULL DEFAULT '0',
  `sid` int(11) NOT NULL DEFAULT '0',
  `title` varchar(250) NOT NULL DEFAULT '',
  `alias` varchar(255) NOT NULL DEFAULT '',
  `url` varchar(250) NOT NULL DEFAULT '',
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `hits` int(11) NOT NULL DEFAULT '0',
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `checked_out` int(11) NOT NULL DEFAULT '0',
  `checked_out_time` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `ordering` int(11) NOT NULL DEFAULT '0',
  `archived` tinyint(1) NOT NULL DEFAULT '0',
  `approved` tinyint(1) NOT NULL DEFAULT '1',
  `params` text NOT NULL,
  PRIMARY KEY (`id`),
  KEY `catid` (`catid`,`published`,`archived`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `jos_weblinks`
--

