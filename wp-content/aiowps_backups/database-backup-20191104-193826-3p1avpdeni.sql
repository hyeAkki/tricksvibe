-- All In One WP Security & Firewall 4.4.2
-- MySQL dump
-- 2019-11-04 19:38:26

SET NAMES utf8;
SET foreign_key_checks = 0;

DROP TABLE IF EXISTS `wmxss_aiowps_events`;

CREATE TABLE `wmxss_aiowps_events` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `event_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `username` varchar(150) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `event_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `ip_or_host` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `referer_info` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `country_code` varchar(50) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `event_data` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_aiowps_failed_logins`;

CREATE TABLE `wmxss_aiowps_failed_logins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_login_date` datetime NOT NULL DEFAULT '1000-10-00 10:00:00',
  `login_attempt_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_aiowps_global_meta`;

CREATE TABLE `wmxss_aiowps_global_meta` (
  `meta_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `date_time` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `meta_key1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key2` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key3` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key4` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_key5` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value1` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value2` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value3` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value4` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `meta_value5` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`meta_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_aiowps_login_activity`;

CREATE TABLE `wmxss_aiowps_login_activity` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `login_date` datetime NOT NULL DEFAULT '1000-10-00 10:00:00',
  `logout_date` datetime NOT NULL DEFAULT '1000-10-00 10:00:00',
  `login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `login_country` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `browser_type` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_aiowps_login_lockdown`;

CREATE TABLE `wmxss_aiowps_login_lockdown` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) NOT NULL,
  `user_login` varchar(150) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lockdown_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `release_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `failed_login_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `lock_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `unlock_key` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_aiowps_permanent_block`;

CREATE TABLE `wmxss_aiowps_permanent_block` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `blocked_ip` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `block_reason` varchar(128) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `country_origin` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `blocked_date` datetime NOT NULL DEFAULT '1000-10-10 10:00:00',
  `unblock` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_commentmeta`;

CREATE TABLE `wmxss_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_comments`;

CREATE TABLE `wmxss_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_comments` VALUES("1","1","A WordPress Commenter","wapuu@wordpress.example","https://wordpress.org/","","2019-11-04 18:18:34","2019-11-04 18:18:34","Hi, this is a comment.
To get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.
Commenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.","0","1","","","0","0");


DROP TABLE IF EXISTS `wmxss_links`;

CREATE TABLE `wmxss_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_options`;

CREATE TABLE `wmxss_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_options` VALUES("1","siteurl","https://www.tricksvibe.tk","yes");
INSERT INTO `wmxss_options` VALUES("2","home","https://www.tricksvibe.tk","yes");
INSERT INTO `wmxss_options` VALUES("3","blogname","TricksVibe","yes");
INSERT INTO `wmxss_options` VALUES("4","blogdescription","Just another WordPress site","yes");
INSERT INTO `wmxss_options` VALUES("5","users_can_register","0","yes");
INSERT INTO `wmxss_options` VALUES("6","admin_email","hye.akshay@gmail.com","yes");
INSERT INTO `wmxss_options` VALUES("7","start_of_week","1","yes");
INSERT INTO `wmxss_options` VALUES("8","use_balanceTags","0","yes");
INSERT INTO `wmxss_options` VALUES("9","use_smilies","1","yes");
INSERT INTO `wmxss_options` VALUES("10","require_name_email","1","yes");
INSERT INTO `wmxss_options` VALUES("11","comments_notify","1","yes");
INSERT INTO `wmxss_options` VALUES("12","posts_per_rss","10","yes");
INSERT INTO `wmxss_options` VALUES("13","rss_use_excerpt","0","yes");
INSERT INTO `wmxss_options` VALUES("14","mailserver_url","mail.example.com","yes");
INSERT INTO `wmxss_options` VALUES("15","mailserver_login","login@example.com","yes");
INSERT INTO `wmxss_options` VALUES("16","mailserver_pass","password","yes");
INSERT INTO `wmxss_options` VALUES("17","mailserver_port","110","yes");
INSERT INTO `wmxss_options` VALUES("18","default_category","1","yes");
INSERT INTO `wmxss_options` VALUES("19","default_comment_status","open","yes");
INSERT INTO `wmxss_options` VALUES("20","default_ping_status","open","yes");
INSERT INTO `wmxss_options` VALUES("21","default_pingback_flag","1","yes");
INSERT INTO `wmxss_options` VALUES("22","posts_per_page","10","yes");
INSERT INTO `wmxss_options` VALUES("23","date_format","F j, Y","yes");
INSERT INTO `wmxss_options` VALUES("24","time_format","g:i a","yes");
INSERT INTO `wmxss_options` VALUES("25","links_updated_date_format","F j, Y g:i a","yes");
INSERT INTO `wmxss_options` VALUES("26","comment_moderation","0","yes");
INSERT INTO `wmxss_options` VALUES("27","moderation_notify","1","yes");
INSERT INTO `wmxss_options` VALUES("28","permalink_structure","/%year%/%monthnum%/%day%/%postname%/","yes");
INSERT INTO `wmxss_options` VALUES("29","rewrite_rules","a:141:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:39:\"gallery-box/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"gallery-box/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"gallery-box/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"gallery-box/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"gallery-box/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"gallery-box/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"gallery-box/([^/]+)/embed/?$\";s:59:\"index.php?post_type=gallery_box&name=$matches[1]&embed=true\";s:32:\"gallery-box/([^/]+)/trackback/?$\";s:53:\"index.php?post_type=gallery_box&name=$matches[1]&tb=1\";s:40:\"gallery-box/([^/]+)/page/?([0-9]{1,})/?$\";s:66:\"index.php?post_type=gallery_box&name=$matches[1]&paged=$matches[2]\";s:47:\"gallery-box/([^/]+)/comment-page-([0-9]{1,})/?$\";s:66:\"index.php?post_type=gallery_box&name=$matches[1]&cpage=$matches[2]\";s:36:\"gallery-box/([^/]+)(?:/([0-9]+))?/?$\";s:65:\"index.php?post_type=gallery_box&name=$matches[1]&page=$matches[2]\";s:28:\"gallery-box/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:38:\"gallery-box/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:58:\"gallery-box/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"gallery-box/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:53:\"gallery-box/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:34:\"gallery-box/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"mp-display/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:48:\"mp-display/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:68:\"mp-display/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mp-display/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:63:\"mp-display/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:44:\"mp-display/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:27:\"mp-display/([^/]+)/embed/?$\";s:58:\"index.php?post_type=mp-display&name=$matches[1]&embed=true\";s:31:\"mp-display/([^/]+)/trackback/?$\";s:52:\"index.php?post_type=mp-display&name=$matches[1]&tb=1\";s:39:\"mp-display/([^/]+)/page/?([0-9]{1,})/?$\";s:65:\"index.php?post_type=mp-display&name=$matches[1]&paged=$matches[2]\";s:46:\"mp-display/([^/]+)/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?post_type=mp-display&name=$matches[1]&cpage=$matches[2]\";s:35:\"mp-display/([^/]+)(?:/([0-9]+))?/?$\";s:64:\"index.php?post_type=mp-display&name=$matches[1]&page=$matches[2]\";s:27:\"mp-display/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"mp-display/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"mp-display/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mp-display/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"mp-display/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"mp-display/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:41:\"niso-carousel/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"niso-carousel/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"niso-carousel/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"niso-carousel/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"niso-carousel/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"niso-carousel/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"niso-carousel/([^/]+)/embed/?$\";s:61:\"index.php?post_type=niso-carousel&name=$matches[1]&embed=true\";s:34:\"niso-carousel/([^/]+)/trackback/?$\";s:55:\"index.php?post_type=niso-carousel&name=$matches[1]&tb=1\";s:42:\"niso-carousel/([^/]+)/page/?([0-9]{1,})/?$\";s:68:\"index.php?post_type=niso-carousel&name=$matches[1]&paged=$matches[2]\";s:49:\"niso-carousel/([^/]+)/comment-page-([0-9]{1,})/?$\";s:68:\"index.php?post_type=niso-carousel&name=$matches[1]&cpage=$matches[2]\";s:38:\"niso-carousel/([^/]+)(?:/([0-9]+))?/?$\";s:67:\"index.php?post_type=niso-carousel&name=$matches[1]&page=$matches[2]\";s:30:\"niso-carousel/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:40:\"niso-carousel/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:60:\"niso-carousel/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"niso-carousel/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:55:\"niso-carousel/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:36:\"niso-carousel/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}","yes");
INSERT INTO `wmxss_options` VALUES("30","hack_file","0","yes");
INSERT INTO `wmxss_options` VALUES("31","blog_charset","UTF-8","yes");
INSERT INTO `wmxss_options` VALUES("32","moderation_keys","","no");
INSERT INTO `wmxss_options` VALUES("33","active_plugins","a:7:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:29:\"click-to-top/click-to-top.php\";i:3;s:27:\"gallery-box/gallery-box.php\";i:4;s:47:\"magical-posts-display/magical-posts-display.php\";i:5;s:45:\"niso-carousel-slider/niso-carousel-slider.php\";i:6;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";}","yes");
INSERT INTO `wmxss_options` VALUES("34","category_base","","yes");
INSERT INTO `wmxss_options` VALUES("35","ping_sites","http://rpc.pingomatic.com/","yes");
INSERT INTO `wmxss_options` VALUES("36","comment_max_links","2","yes");
INSERT INTO `wmxss_options` VALUES("37","gmt_offset","0","yes");
INSERT INTO `wmxss_options` VALUES("38","default_email_category","1","yes");
INSERT INTO `wmxss_options` VALUES("39","recently_edited","a:2:{i:0;s:79:\"/usr/app/wp-content/plugins/all-in-one-wp-security-and-firewall/wp-security.php\";i:2;s:0:\"\";}","no");
INSERT INTO `wmxss_options` VALUES("40","template","x-blog","yes");
INSERT INTO `wmxss_options` VALUES("41","stylesheet","x-blog-plus","yes");
INSERT INTO `wmxss_options` VALUES("42","comment_whitelist","1","yes");
INSERT INTO `wmxss_options` VALUES("43","blacklist_keys","","no");
INSERT INTO `wmxss_options` VALUES("44","comment_registration","0","yes");
INSERT INTO `wmxss_options` VALUES("45","html_type","text/html","yes");
INSERT INTO `wmxss_options` VALUES("46","use_trackback","0","yes");
INSERT INTO `wmxss_options` VALUES("47","default_role","subscriber","yes");
INSERT INTO `wmxss_options` VALUES("48","db_version","44719","yes");
INSERT INTO `wmxss_options` VALUES("49","uploads_use_yearmonth_folders","1","yes");
INSERT INTO `wmxss_options` VALUES("50","upload_path","","yes");
INSERT INTO `wmxss_options` VALUES("51","blog_public","1","yes");
INSERT INTO `wmxss_options` VALUES("52","default_link_category","2","yes");
INSERT INTO `wmxss_options` VALUES("53","show_on_front","posts","yes");
INSERT INTO `wmxss_options` VALUES("54","tag_base","","yes");
INSERT INTO `wmxss_options` VALUES("55","show_avatars","1","yes");
INSERT INTO `wmxss_options` VALUES("56","avatar_rating","G","yes");
INSERT INTO `wmxss_options` VALUES("57","upload_url_path","","yes");
INSERT INTO `wmxss_options` VALUES("58","thumbnail_size_w","150","yes");
INSERT INTO `wmxss_options` VALUES("59","thumbnail_size_h","150","yes");
INSERT INTO `wmxss_options` VALUES("60","thumbnail_crop","1","yes");
INSERT INTO `wmxss_options` VALUES("61","medium_size_w","300","yes");
INSERT INTO `wmxss_options` VALUES("62","medium_size_h","300","yes");
INSERT INTO `wmxss_options` VALUES("63","avatar_default","mystery","yes");
INSERT INTO `wmxss_options` VALUES("64","large_size_w","1024","yes");
INSERT INTO `wmxss_options` VALUES("65","large_size_h","1024","yes");
INSERT INTO `wmxss_options` VALUES("66","image_default_link_type","none","yes");
INSERT INTO `wmxss_options` VALUES("67","image_default_size","","yes");
INSERT INTO `wmxss_options` VALUES("68","image_default_align","","yes");
INSERT INTO `wmxss_options` VALUES("69","close_comments_for_old_posts","0","yes");
INSERT INTO `wmxss_options` VALUES("70","close_comments_days_old","14","yes");
INSERT INTO `wmxss_options` VALUES("71","thread_comments","1","yes");
INSERT INTO `wmxss_options` VALUES("72","thread_comments_depth","5","yes");
INSERT INTO `wmxss_options` VALUES("73","page_comments","0","yes");
INSERT INTO `wmxss_options` VALUES("74","comments_per_page","50","yes");
INSERT INTO `wmxss_options` VALUES("75","default_comments_page","newest","yes");
INSERT INTO `wmxss_options` VALUES("76","comment_order","asc","yes");
INSERT INTO `wmxss_options` VALUES("77","sticky_posts","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("78","widget_categories","a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("79","widget_text","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("80","widget_rss","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("81","uninstall_plugins","a:1:{s:27:\"autoptimize/autoptimize.php\";s:29:\"autoptimizeMain::on_uninstall\";}","no");
INSERT INTO `wmxss_options` VALUES("82","timezone_string","","yes");
INSERT INTO `wmxss_options` VALUES("83","page_for_posts","0","yes");
INSERT INTO `wmxss_options` VALUES("84","page_on_front","0","yes");
INSERT INTO `wmxss_options` VALUES("85","default_post_format","0","yes");
INSERT INTO `wmxss_options` VALUES("86","link_manager_enabled","0","yes");
INSERT INTO `wmxss_options` VALUES("87","finished_splitting_shared_terms","1","yes");
INSERT INTO `wmxss_options` VALUES("88","site_icon","0","yes");
INSERT INTO `wmxss_options` VALUES("89","medium_large_size_w","768","yes");
INSERT INTO `wmxss_options` VALUES("90","medium_large_size_h","0","yes");
INSERT INTO `wmxss_options` VALUES("91","wp_page_for_privacy_policy","3","yes");
INSERT INTO `wmxss_options` VALUES("92","show_comments_cookies_opt_in","1","yes");
INSERT INTO `wmxss_options` VALUES("93","initial_db_version","44719","yes");
INSERT INTO `wmxss_options` VALUES("94","wmxss_user_roles","a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:88:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:12:\"edit_gallery\";b:1;s:14:\"read_galleries\";b:1;s:14:\"delete_gallery\";b:1;s:16:\"delete_galleries\";b:1;s:14:\"edit_galleries\";b:1;s:21:\"edit_others_galleries\";b:1;s:17:\"publish_galleries\";b:1;s:22:\"read_private_galleries\";b:1;s:16:\"create_galleries\";b:1;s:15:\"edit_mp_display\";b:1;s:16:\"read_mp_displays\";b:1;s:17:\"delete_mp_display\";b:1;s:18:\"delete_mp_displays\";b:1;s:16:\"edit_mp_displays\";b:1;s:22:\"edit_mp_display_others\";b:1;s:19:\"publish_mp_displays\";b:1;s:29:\"read_private_mp_display_posts\";b:1;s:18:\"create_mp_displays\";b:1;s:25:\"edit_niso_slider_carousel\";b:1;s:26:\"read_niso_slider_carousels\";b:1;s:27:\"delete_niso_slider_carousel\";b:1;s:28:\"delete_niso_slider_carousels\";b:1;s:26:\"edit_niso_slider_carousels\";b:1;s:33:\"edit_niso_others_carousels_slider\";b:1;s:29:\"publish_niso_slider_carousels\";b:1;s:34:\"read_niso_private_carousels_slider\";b:1;s:28:\"create_niso_slider_carousels\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}","yes");
INSERT INTO `wmxss_options` VALUES("95","fresh_site","1","yes");
INSERT INTO `wmxss_options` VALUES("96","widget_search","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("97","widget_recent-posts","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("98","widget_recent-comments","a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("99","widget_archives","a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("100","widget_meta","a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("101","sidebars_widgets","a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"footer-widget\";a:0:{}s:13:\"array_version\";i:3;}","yes");
INSERT INTO `wmxss_options` VALUES("102","cron","a:9:{i:1572898714;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572899731;a:1:{s:24:\"aiowps_hourly_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1572934714;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572939087;a:1:{s:15:\"ao_cachechecker\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1572977914;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572977920;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572977922;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1572982531;a:1:{s:23:\"aiowps_daily_cron_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}","yes");
INSERT INTO `wmxss_options` VALUES("103","widget_pages","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("104","widget_calendar","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("105","widget_media_audio","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("106","widget_media_image","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("107","widget_media_gallery","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("108","widget_media_video","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("109","nonce_key","@p7dsf^wL:hsk>Cd`t$ZXWjEk_A&y9QL_`m>5.p#eZbA4y%rpjjngthj7M1l7liR","no");
INSERT INTO `wmxss_options` VALUES("110","nonce_salt","XQplI8%&.];W?.KI#bC7I{VO^?Z|$L{Rk*tO7W-=p13F}g~A9|}ft>Zxsl=rbgCq","no");
INSERT INTO `wmxss_options` VALUES("111","widget_tag_cloud","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("112","widget_nav_menu","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("113","widget_custom_html","a:1:{s:12:\"_multiwidget\";i:1;}","yes");
INSERT INTO `wmxss_options` VALUES("115","theme_mods_twentynineteen","a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572891790;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}","yes");
INSERT INTO `wmxss_options` VALUES("116","recovery_keys","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("117","_site_transient_update_core","O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.2.4.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.2.4-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.2.4-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.2.4\";s:7:\"version\";s:5:\"5.2.4\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.0\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1572895823;s:15:\"version_checked\";s:5:\"5.2.4\";s:12:\"translations\";a:0:{}}","no");
INSERT INTO `wmxss_options` VALUES("124","auth_key","2u4=}%pzXtpjX@(fF1+t4/4O5Eun8-]PLXu$f.%XG#(?0%^.0#uD!2L`~WS W&Oa","no");
INSERT INTO `wmxss_options` VALUES("125","auth_salt","C:>PO7!JlSK5q3~NX;<):kAKLQ]fXE4QZq1%J67~HxPIXp*OkxE>g#of+N;#?AyC","no");
INSERT INTO `wmxss_options` VALUES("126","logged_in_key","nu$p3V70 Zbcr=0 YeZ0oy:T8iN92p]0.4H!=},km7%@J2_)mBBZ7,;#B0.O?c+m","no");
INSERT INTO `wmxss_options` VALUES("127","logged_in_salt","[.Fm4dUPpz,!lW>ad.2SA_0.*<baTRNlm:Z?;NHLh=*Y8nc4uh2g^j`/?QJ IR[6","no");
INSERT INTO `wmxss_options` VALUES("128","_site_transient_timeout_browser_37ac1218abb55baa7809c88793948426","1573496321","no");
INSERT INTO `wmxss_options` VALUES("129","_site_transient_browser_37ac1218abb55baa7809c88793948426","a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"70.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}","no");
INSERT INTO `wmxss_options` VALUES("130","_site_transient_timeout_php_check_9e6b9d0c45cc442ea5059e78c5690305","1573496322","no");
INSERT INTO `wmxss_options` VALUES("131","_site_transient_php_check_9e6b9d0c45cc442ea5059e78c5690305","a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}","no");
INSERT INTO `wmxss_options` VALUES("133","_site_transient_timeout_community-events-5ae0bd1452802b395277bdc3785a2bbf","1572934724","no");
INSERT INTO `wmxss_options` VALUES("134","_site_transient_community-events-5ae0bd1452802b395277bdc3785a2bbf","a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";s:10:\"47.9.102.0\";}s:6:\"events\";a:2:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:37:\"WordCamp Bharatpur, Province-3, Nepal\";s:3:\"url\";s:35:\"https://2019.bharatpur.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-11-09 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:28:\"Bharatpur, Province-3, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:27.6486636;s:9:\"longitude\";d:84.4172666;}}i:1;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:23:\"WordCamp Pokhara, Nepal\";s:3:\"url\";s:34:\"https://2019.pokhara.wordcamp.org/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2019-12-07 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:14:\"Pokhara, Nepal\";s:7:\"country\";s:2:\"NP\";s:8:\"latitude\";d:28.1874169;s:9:\"longitude\";d:83.9717805;}}}}","no");
INSERT INTO `wmxss_options` VALUES("135","_transient_timeout_feed_9bbd59226dc36b9b26cd43f15694c5c3","1572934725","no");
INSERT INTO `wmxss_options` VALUES("136","_transient_feed_9bbd59226dc36b9b26cd43f15694c5c3","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"News –  – WordPress.org\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:26:\"https://wordpress.org/news\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"WordPress News\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 17:43:57 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"https://wordpress.org/?v=5.4-alpha-46646\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:48:\"
		
		
				
		
				

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"2019 Annual Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/news/2019/11/2019-annual-survey/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 21:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7460\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:326:\"It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback. It only takes a few minutes to fill out the survey, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1999:\"
<div class=\"wp-block-image\"><figure class=\"alignright size-large is-resized\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?fit=632%2C281&amp;ssl=1\" alt=\"\" class=\"wp-image-7472\" width=\"329\" height=\"146\" srcset=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?w=1070&amp;ssl=1 1070w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=300%2C133&amp;ssl=1 300w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=1024%2C456&amp;ssl=1 1024w, https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?resize=768%2C342&amp;ssl=1 768w\" sizes=\"(max-width: 329px) 100vw, 329px\" /></figure></div>



<p>It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback.</p>



<p>It only takes a few minutes to <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">fill out the survey</a>, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is also available in 5 additional languages:  <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-spanish\">Spanish</a>. Many thanks to the community volunteers who helped with the translation effort!</p>



<p>The survey will be open for 4 weeks, and results will be published on this blog. All data will be anonymized: no email addresses or IP addresses will be associated with published results. To learn more about WordPress.org’s privacy practices, check out the <a href=\"https://wordpress.org/about/privacy/\">privacy policy</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7460\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:48:\"
		
		
				
		
				

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:36:\"The Month in WordPress: October 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/11/the-month-in-wordpress-october-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 07:28:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:1:{i:0;a:5:{s:4:\"data\";s:18:\"Month in WordPress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7449\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more. WordPress 5.2.4 On October 14, WordPress 5.2.4 was released as a security release fixing 6 security issues. The fixes were backported to earlier versions [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:6219:\"
<p>October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more.</p>



<hr class=\"wp-block-separator\" />



<h2>WordPress 5.2.4</h2>



<p>On October 14, <a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\">WordPress 5.2.4 was released</a> as a security release fixing 6 security issues. The fixes were backported to earlier versions of WordPress as well, so they’re available for sites not yet upgraded to 5.2.</p>



<p>This kind of release is only possible because people <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">report security issues responsibly</a> so that the Core team can address them. You can find out more specific information about the fixes on <a href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">the release documentation page</a>.</p>



<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>WordPress 5.3</h2>



<p>WordPress 5.3 has seen active development over the past month, with a release date set for November 12. You can <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">download and test the release candidate</a> to get a taste of what to expect—this is largely what final release will look like.</p>



<p>This is a big release with a number of exciting and important updates. Among them are <a href=\"https://make.wordpress.org/core/2019/10/18/noteworthy-admin-css-changes-in-wordpress-5-3/\">significant changes to the look of the admin interface</a>, enhancements to the block editor that will affect developers of <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">themes</a> and <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">plugins</a>, <a href=\"https://make.wordpress.org/core/2019/10/09/introducing-handling-of-big-images-in-wordpress-5-3/\">large improvements</a> to the way that Core <a href=\"https://make.wordpress.org/core/2019/10/11/updates-to-image-processing-in-wordpress-5-3/\">processes images</a>, updates to cater for some functions <a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">specific to PHP 7.4</a>, improvements to the <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">Site Health feature</a>, and many more improvements that are all documented in <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">the WordPress 5.3 Field Guide</a>.</p>



<p>In addition to these Core updates, the upcoming major release will also include the new default theme, <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">Twenty Twenty</a>.</p>



<p>Want to get involved in building WordPress Core? You can contribute by <a href=\"https://make.wordpress.org/core/handbook/testing/\">testing the upcoming release</a>, as well as follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>New Core Committers</h2>



<p><a href=\"https://meta.trac.wordpress.org/ticket/4760\">Three new committers have been added</a> to the WordPress Core organizational structure. Core committers are individuals who have direct access to the Core development code repositories in order to publish updates to the software.</p>



<p>The new committers are Ian Belanger (<a href=\'https://profiles.wordpress.org/ianbelanger/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>ianbelanger</a>), Timothy Jacobs (<a href=\'https://profiles.wordpress.org/timothyblynjacobs/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>timothyblynjacobs</a>), and Joe Dolson (<a href=\'https://profiles.wordpress.org/joedolson/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>joedolson</a>). While Ian’s commit access is specifically for Core themes, both Timothy and Joe have full access to Core. This type of access is only given to individuals who have proved themselves with high-quality contributions and a deep understanding of how the WordPress project works.</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>The Accessibility Team is <a href=\"https://make.wordpress.org/accessibility/2019/10/26/accessibility-team-representatives-election-for-2020/\">looking for new team representatives</a> for 2020.</li><li><a href=\"https://2019.us.wordcamp.org/\">WordCamp US</a> is happening on November 1-3 and is set to be the largest WordPress event in North America.</li><li>WordCamp Asia, the first flagship event in the region, <a href=\"https://twitter.com/WordCampAsia/status/1187079744409526272\">will be rolling out their next batch of ticket sales</a> on November 1.</li><li>Work continues on Gutenberg, with <a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">the latest update</a> including significant updates to the Cover block and many other areas.</li><li>The WordCamp Europe team have published <a href=\"https://make.wordpress.org/community/2019/10/27/update-contributor-orientation-tool/\">an update about the Contributor Orientation tool</a> they worked on earlier this year.</li><li>The WordCamp US team has published <a href=\"https://make.wordpress.org/community/2019/10/28/grow-your-meetup-survey-results-for-wcus/\">the results of their Grow Your Meetup survey</a> ahead of their 2019 event.</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">is making plans</a> to implement a curated page for displaying featured themes in the Theme Directory.</li></ul>



<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7449\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:51:\"
		
		
				
		
				
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.3 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 21:16:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7439\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:379:\"The third release candidate for WordPress 5.3 is now available! WordPress 5.3 is currently scheduled to be released on&#160;November 12 2019, but we need&#160;your&#160;help to get there—if you haven’t tried 5.3 yet, now is the time! There are two ways to test the WordPress 5.3 release candidate: Try the WordPress Beta Tester plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3088:\"
<p>The third release candidate for WordPress 5.3 is now available!</p>



<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>



<p>There are two ways to test the WordPress 5.3 release candidate:</p>



<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-RC3.zip\">download the release candidate here</a> (zip).</li></ul>



<p>For details about what to expect in WordPress 5.3, please see the <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a> and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a> release candidate posts.</p>



<p>Release Candidate 3 contains improvements to the new About page, bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and 9 fixes for the following bugs and regressions:</p>



<ul><li>Four bugs in the block editor have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48447\">#48447</a>).</li><li>Three Date/Time related bugs have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48384\">#48384</a>).</li><li>A regression in <code>date_i18n()</code> has been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/28636\">#28636</a>).</li><li>An accessibility color contrast regression for primary buttons when using alternate admin color schemes was fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48396\">#48396</a>).</li></ul>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7439\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:51:\"
		
		
				
		
				
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"WordPress 5.3 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 20:08:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7425\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"The second release candidate for WordPress 5.3 is now available! WordPress 5.3 is currently scheduled to be released on&#160;November 12 2019, but we need&#160;your&#160;help to get there—if you haven’t tried 5.3 yet, now is the time! There are two ways to test the WordPress 5.3 release candidate: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3782:\"
<p>The second release candidate for WordPress 5.3 is now available!</p>



<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>



<p>There are two ways to test the WordPress 5.3 release candidate:</p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>



<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first release candidate post</a>.</p>



<p>Release Candidate 2 contains improvements to the new About page, and <a href=\"https://core.trac.wordpress.org/query?id=48381%2C48363%2C48022%2C48304%2C48379%2C48087%2C47699&amp;milestone=5.3&amp;group=component&amp;col=id&amp;col=summary&amp;col=status&amp;col=owner&amp;col=type&amp;col=priority&amp;col=milestone&amp;order=priority\">10 fixes</a> for the following bugs and regressions:</p>



<ul><li>Three bugs contained in RC1 within the block editor have been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48381\">48381</a>).</li><li>A bug has been fixed where links within comments did not get the correct <code>rel</code> attribute (see #<a href=\"https://core.trac.wordpress.org/ticket/48022\">48022</a>).</li><li>The <code>scaled-</code> string has been added to file names when images are downsized if determined &#8220;BIG&#8221; (see #<a href=\"https://core.trac.wordpress.org/ticket/48304\">48304</a>).</li><li>The buttons group layout has been fixed in IE11 (see #<a href=\"https://core.trac.wordpress.org/ticket/48087\">48087</a>).</li><li>A bug with <code>boolean</code> <code>false</code> meta values in the REST API has been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48363\">48363</a>).</li><li>The error code encountered when the native PHP JSON extension is missing has been adjusted to be unique (see #<a href=\"https://core.trac.wordpress.org/ticket/47699\">47699</a>).</li><li>When uploading files, HTTP error code support has been expanded to include all 5xx errors (see #<a href=\"https://core.trac.wordpress.org/ticket/48379\">48379</a>).</li></ul>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7425\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:64:\"
		
		
				
				
		
				
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"Empowering Generations of Digital Natives\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Oct 2019 20:03:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"digital citizenship week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7413\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:346:\"Technology is changing faster each year. Digital literacy can vary between ages but there are lots of ways different generations can work together and empower each as digital citizens. No matter whether you’re a parent or caregiver, teacher or mentor, it’s hard to know the best way to teach younger generations the skills needed to [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:8968:\"
<p>Technology is changing faster each year. Digital literacy can vary between ages but there are lots of ways different generations can work together and empower each as digital citizens.</p>



<p>No matter whether you’re a parent or caregiver, teacher or mentor, it’s hard to know the best way to teach younger generations the skills needed to be an excellent digital citizen. If you’re not confident about your own tech skills, you may wonder how you can help younger generations become savvy digital citizens. But using technology responsibly is about more than just technical skills. By collaborating across generations, you can also strengthen all your family members’ skills, and offer a shared understanding of what the internet can provide and how to use it to help your neighborhoods and wider society.&nbsp;<br></p>



<h2>Taking Gen Z Beyond Digital Savvy</h2>



<h3>Open up the dialogue</h3>



<p>Even if you’re not fully confident in your own tech skills, you can help develop digital citizenship skills in others. If you feel comfortable during everyday conversation, you could describe a tech situation you have come across and ask family members if they have ever experienced something similar. You can give them a chance to share how they handled it or how it made them feel. This can help encourage them to think critically and to react with empathy. And being asked for advice can make them feel appreciated and empowered. But opening up the conversation can also be as simple as asking if they’ve seen anything online lately that they found interesting or wanted to talk about.</p>



<h3>Share access to free and affordable training</h3>



<p>Open source content management systems have made online publishing accessible to a more diverse group of people. Dozens of content platforms offer hands-on training at no or low cost. <a href=\"https://wordpress.tv/\">WordPress.tv</a>, <a href=\"https://www.linkedin.com/learning/topics/wordpress\">LinkedIn Learning</a>, and others have low-cost video libraries with thousands of recorded talks and workshops and the WordPress Training team have excellent downloadable lesson plans and materials. These platforms not only feature content that helps develop tech and content creation skills but also content around ethics, diversity and community building.&nbsp;&nbsp;</p>



<h3>Find a sense of community and belonging</h3>



<p>One of the disadvantages of increased digitalization is that <a href=\"https://www.theatlantic.com/magazine/archive/2017/09/has-the-smartphone-destroyed-a-generation/534198/\">younger generations and us all may spend less time hanging out in-person.</a> Digital time spent with others is no replacement for in-person interactions. The awareness and mutual understanding which comes from back and forth interaction is needed for positive interpersonal skills. This is hard to replace in digital communities and those skills can only be learned with lots of hands-on practice.&nbsp;</p>



<h3>Learn the many benefits of volunteering&nbsp;</h3>



<p>There are WordPress events across the world that provide a great place to learn new skills to share with your families and friends. Some work with schools and colleges to offer special events which are open to all ages. There are also plenty of small ways to volunteer with the WordPress project that can be done at home to practice new skills.</p>



<p>In addition to attending events where you can learn skills and hang out with others with similar interests, the WordPress ecosystem offers countless opportunities to be actively involved. Professionals, hobbyists, and learners all make a difference by contributing to the ongoing creation of the WordPress platform. Together these people, who are known as contributors, form the <a href=\"https://make.wordpress.org/\">WordPress open source community.</a>&nbsp;</p>



<h4>WordPress is created by volunteer contributors</h4>



<p>Not only are these contributors creating an amazingly flexible platform for all to use, it is an environment where you can continue to improve your skills, both technical and interpersonal. Open-source software projects can introduce you to people you would otherwise not get the chance to meet, locally and internationally. If you have a zest for learning, and for finding others to connect with, WordPress has many ways to meet contributors in person!</p>



<h4>WordPress events are organized by volunteers</h4>



<p>WordPress community events are volunteer-run. This can be a great way to give back to the project and practice all sorts of skills. Talk to your local event about how you could get involved and if you would like to bring older teenagers and young adults with you. You will not need any pre-existing tech skills to attend these events but they are a great way to discover areas you might want to learn more about.&nbsp;</p>



<h4>Contributor days offer a great opportunity to get involved</h4>



<p>These events are specially designed to help you get involved in building the open-source WordPress platform. You can collaborate with other members of its community and find areas that are right for you to use and grow your skills. All of the tasks you will discover at an event can be continued at home and some are easy to get other family members involved in learning and adding in ideas.&nbsp;</p>



<p>Contributors come from all sorts of backgrounds and locations, some may live near you and others thousands of miles away. Working alongside lots of different cultures and countries can open up new ideas for young people letting them learn new ways of doing things and discover different perspectives. All those different perspectives can cause misunderstandings. But being involved in a global learning community is a great way to practice communicating across cultural boundaries.&nbsp;</p>



<h4>Getting involved can be rewarding in many (unexpected) ways</h4>



<p>The most rewarding part of actively taking part in WordPress events is making budding friendships. New connections often turn into long-lasting friendships that are likely to continue for years to come, both online and offline. With a global community, these friendships can potentially lead to lots of international adventures too!</p>



<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Getting ready for the <a href=\"https://twitter.com/WordCampBTN?ref_src=twsrc%5Etfw\">@WordCampBTN</a>. I&#8217;ve got my 5kg backpack and one-way ticket to London in a few days <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f929.png\" alt=\"🤩\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> What shall I do after? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" style=\"height: 1em; max-height: 1em;\" /> <a href=\"https://t.co/cdQqeyNWif\">pic.twitter.com/cdQqeyNWif</a></p>— Sabrina Zeidan going to #WCKyiv (@sabrina_zeidan) <a href=\"https://twitter.com/sabrina_zeidan/status/1160265428473712640?ref_src=twsrc%5Etfw\">August 10, 2019</a></blockquote>



<h3>Make our digital world safer and more inclusive</h3>



<p>Befriending people from a wide variety of cultures and backgrounds can be an enriching experience in itself. It can also help you make us make more informed decisions. The more we interact with a diverse range of people, the more empathic we become. Some of the most valuable learning that can be offered to Gen Z (and probably to all of us at times) is that what we come across in fast-moving digital communities isn’t always the entire view.&nbsp;</p>



<h2>All things considered….</h2>



<p>Anyone who is a digital native may not need encouragement to obtain tech skills. But they may not be aware that digital communities are still communities and <a href=\"https://wordpress.org/news/2019/10/responsible-participation-in-online-communities/\">we need to use the same sorts of people skills for both offline and online locations</a>. Opening up conversations about situations they may experience online that may require them to (re)act responsibly, can encourage them to think critically and act with empathy. Compared to previous generations, digital natives spend substantially more time by themselves while using devices, so encouraging them to join real-life communities, such as WordPress, could be the first step to learning what it means to be a good digital citizen!&nbsp; </p>



<h2>Contributors</h2>



<p><a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>, <a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>, <a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a> &amp; <a href=\'https://profiles.wordpress.org/annemariedh/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>annemariedh</a></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7413\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:51:\"
		
		
				
		
				
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"WordPress 5.3 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 21:18:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7397\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:360:\"The first release candidate for WordPress 5.3 is now available! This is an important milestone as we progress toward the WordPress 5.3 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.3 is currently [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3144:\"
<p>The first release candidate for WordPress 5.3 is now available!</p>



<p>This is an important milestone as we progress toward the WordPress 5.3 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.3 is currently scheduled to be released&nbsp;on&nbsp;<strong>November 12, 2019</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, <strong>now is the time</strong>!</p>



<p>There are two ways to test the WordPress 5.3 release candidate: </p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC1.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>



<h2>What’s in WordPress 5.3?</h2>



<p>WordPress 5.3 expands and refines the <strong>Block Editor</strong> introduced in WordPress 5.0 with <strong>new blocks, more intuitive interactions, and improved accessibility</strong>. New features in the editor increase design freedoms, provide additional layout options and style variations to allow designers complete control over the look of a site.</p>



<p>This release also introduces the <strong>Twenty Twenty</strong> theme giving the user more design flexibility and integration with the Block Editor. </p>



<p>In addition, WordPress 5.3 allows developers to work with <strong>dates and timezones</strong> in a more reliable way and prepares the software to work with <strong>PHP 7.4</strong> to be release later this year. </p>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme file to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;WordPress 5.3 Field Guide&nbsp;will be published within the next 24 hours with a more detailed dive into the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a>&nbsp;This release also marks the&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a>&nbsp;point of the 5.3 release schedule.</p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:57:\"
		
		
				
		
				
		
		
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"Responsible Participation In Online Communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2019/10/responsible-participation-in-online-communities/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 19:41:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:4:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:9:\"community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:24:\"digital citizenship week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"open source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7386\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:365:\"In our first article in this series, we highlighted the WordPress mission to democratize publishing. WordPress introduced a tool to independent and small publishers who did not have the resources of the larger publishing platforms. Access to a free content management system to create websites has empowered thousands of people to find their voice online. [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9139:\"
<p>In our <a href=\"https://wordpress.org/news/2019/10/becoming-better-digital-citizens-through-open-source/\">first article in this series</a>, we highlighted the WordPress mission to democratize publishing. WordPress introduced a tool to independent and small publishers who did not have the resources of the larger publishing platforms. Access to a free content management system to create websites has empowered thousands of people to find their voice online. People have been able to share their enthusiasm for hobbies, causes, products and much more. Through these different voices, we can encourage understanding, spark creativity, and create environments where collaboration can happen. But as we build more digital communities, it&#8217;s easy to forget that online safety is a group effort.</p>



<p>Digital literacy is also part of being a good digital citizen, but it’s more than just being able to do basic actions with your mobile device. Digital literacy refers to the range of skills needed to do online research, set up web accounts, and find solutions for fixing devices among other things. But to be able to enjoy more of the digital world safely and responsibly &#8211; to be a good digital citizen &#8211; we need to be able to:&nbsp;</p>



<ul><li><strong>navigate</strong> vast amounts of information without getting overwhelmed;</li><li><strong>evaluate</strong> a variety of perspectives;</li><li><strong>connect</strong> with people with respect and empathy;</li><li><strong>create</strong>, curate and share information.</li></ul>



<p>We will need our offline analytical and social skills to make that happen.&nbsp;</p>



<h2>Here’s some best practices our community members have shared!</h2>



<h3>Online or offline, let empathy be your compass</h3>



<p>The hardest part about all of this is the anonymity of online interactions. Without that face-to-face feedback of saying something mean to another person&#8217;s face, it&#8217;s easy to upset the people you&#8217;re trying to communicate with.</p>



<p>In our daily lives in the offline world, comments may be more tempered and slow to anger  in disagreements. Visual cues will help us determine how a remark is perceived. That, in turn, helps us adjust our behaviour Action, reaction, it’s how we learn best.</p>



<p>Online, however, the experience is different. A keyboard does not protest if we type angry, hate-filled messages. A screen does not show any signs of being hurt. The lack of physical human presence combined with the anonymity of online alter-egos can be a formula for disrespectful and unfriendly behavior. It is good to remind ourselves that behind the avatars, nicknames and handles are real people. The same empathy we display in our in-person interactions should apply online as well.</p>



<h3>Critically evaluate your sources&nbsp;</h3>



<p>We all have times when we consume information with limited research and fact-checking. For some of us, it feels like there’s no time to research and compare sources when faced by a sea of online information. For others, there may be uncertainty about where to start and what to consider. But, without a bit of skepticism and analytical thinking, we run the risk of creating narrow or incorrect understanding of the world. With a little effort we can curb the sharing of fake news and biased information, particularly on topics that are new to us or that we’re not familiar with.</p>



<p>Misinformation can spread like wildfire. Ask these simple questions to evaluate information online:&nbsp;</p>



<ul><li>who is the source of the information?</li><li>is it plausible?</li><li>is the information fact or just an opinion?</li></ul>



<h3>Own our content</h3>



<p>In this day and age, it’s never been easier to just copy, paste and publish somebody else&#8217;s content. That doesn’t mean that we should! Publishing content that is not truly ‘yours’ in wording and tone of voice is unlikely to build a connection with the right audience. But, just as important, using someone else’s content may breach copyright and potentially intellectual property rights. </p>



<p>For more information about intellectual property, <a href=\"https://www.wipo.int/about-ip/en/\">visit the World Intellectual Property Organization website</a>.</p>



<h3>Don’t breeze past terms and conditions</h3>



<p>Have you ever signed up for an online service (to help you distribute published content or accept payments) that was offered at no cost? In our fast-paced digital lives, we tend to want to breeze past terms and conditions or warning information and often miss important information about what will happen with our data. </p>



<p>When we are given a contract on paper, we tend to read and re-read it, giving it a greater priority of our time. We may send it to other people for a second opinion or seek further review before signing. Remarkably, we rarely do that with online agreements. As a result, we may be putting our online privacy and security at risk. (WordPress uses a <a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/gpl-primer/\">GPL license</a>, and only collects usage data that we never share ever.).</p>



<h3>Keep your website safe and healthy</h3>



<p>If you would like to own your voice online, you also need to protect your reputation by securing your publishing platform. Websites can face security attacks. Hackers may seek to obtain access through insecure settings, outdated plugins and old software versions, and in extreme cases can try to scam your visitors. And leaking customer data, may even lead to legal consequences.</p>



<p>On top of that, websites ‘flagged’ for security issues, can lead to high bounce rates and eventual loss of search rankings. This can all affect how search engines rate or even block your site. </p>



<p>Good practices to keep your website safe include changing your safe password regularly, installing security software, an SSL certificate and keeping the core software, plugins and themes up to date. This will not guarantee that you will keep hackers out, so always keep several backups of your site, ideally both offline and online.</p>



<p>That is just website security in a tiny nutshell. If you would like to learn more about keeping websites safe, you may want to check out some of these resources and many more videos at WordPress.tv.</p>



<h2>Join in and help make the web a better place!</h2>



<p>As part of Digital Citizenship Week, we would like to encourage you to learn and share skills with your colleagues, friends and family members. That way, we all become more informed of potential issues and how to reduce the risks. Together we can make it easier to navigate the web more effectively and securely!</p>



<h3>Additional resources</h3>



<h4>Site health check</h4>



<p>WordPress 5.2 introduced pages in the admin interface to help users run health checks on their sites. They can be found under the Tools menu.</p>



<h4>Security and SSL&nbsp;</h4>



<ul><li><a href=\"https://wordpress.tv/2019/01/23/victor-santoyo-security-and-ssl-whats-the-difference/\">Video recording of a presentation by Victor Santoyo about website security and SSL</a>.</li><li><a href=\"https://wordpress.tv/2017/08/31/jessica-gardner-ssl-what-it-is-how-to-do-it-and-why-you-should-care/\">Video recording of a presentation by Jessica Gardner about why you should care about SSL and how to use it.</a></li><li><a href=\"https://wordpress.tv/2018/02/03/adam-warner-the-personal-and-website-security-mindset/\">Video recording of a presentation by Adam Warner about the personal and website security mindset</a>.</li><li><a href=\"https://wordpress.tv/2018/07/05/miriam-schwab-content-security-policies-a-whole-new-way-of-securing-your-website-that-no-one-knows/\">Video recording of a presentation by Miriam Schwab about content security policies</a>.</li><li><a href=\"https://en.support.wordpress.com/https-ssl/\">More information about SSL licenses on WordPress.com</a>.</li><li><a href=\"https://wordpress.org/plugins/search/SSL\">SSL plugins in the WordPress plugin repository</a>.</li></ul>



<h2>Contributors</h2>



<p><a href=\'https://profiles.wordpress.org/chanthaboune/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>chanthaboune</a>, <a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a>, <a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a>,  <a href=\'https://profiles.wordpress.org/muzhdekad/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>muzhdekad</a> <a href=\'https://profiles.wordpress.org/alexdenning/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>alexdenning</a>,&nbsp;<a href=\'https://profiles.wordpress.org/natashadrewnicki/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>natashadrewnicki</a>, <a href=\'https://profiles.wordpress.org/oglekler/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>oglekler</a>, and Daria Gogoleva.</p>



<p><br></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7386\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:51:\"
		
		
				
		
				
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:32:\"WordPress 5.2.4 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 21:54:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Security\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7372\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:366:\"WordPress 5.2.4 is now available! This security release fixes 6 security issues. WordPress versions 5.2.3 and earlier are affected by these bugs, which are fixed in version 5.2.4. Updated versions of WordPress 5.1 and earlier are also available for any users who have not yet updated to 5.2. Security Updates Props to&#160;Evan Ricafort&#160;for finding an [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3652:\"
<p><a href=\"https://wordpress.org/wordpress-5.2.4.zip\">WordPress 5.2.4</a> is now available! This security release fixes 6 security issues.<br><br>WordPress versions 5.2.3 and earlier are affected by these bugs, which are fixed in version 5.2.4. Updated versions of WordPress 5.1 and earlier are also available for any users who have not yet updated to 5.2.</p>



<h3>Security Updates</h3>



<ul><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://evanricafort.com/\">Evan Ricafort</a>&nbsp;for finding an issue where stored XSS (cross-site scripting) could be added via the Customizer.</li><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://codesymphony.co/\">J.D. Grimes</a>&nbsp;who found and disclosed a method of viewing unauthenticated posts.</li><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://weston.ruter.net/\">Weston Ruter</a>&nbsp;for finding a way to create a stored XSS to inject Javascript into style tags.</li><li>Props to David Newman for highlighting a method to poison the cache of JSON GET requests via the Vary: Origin header.</li><li>Props to <a href=\"http://eugenekolo.com/\">Eugene Kolodenker</a> who found a server-side request forgery in the way that URLs are validated.</li><li>Props to Ben Bidner of the WordPress Security Team who discovered issues related to referrer validation in the admin.</li></ul>



<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing</a> the vulnerabilities, which gave us time to fix them before WordPress sites could be attacked.</p>



<p>For more info, browse the full list of changes on Trac or check out the Version&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">5.2.4 documentation page</a>.<br><br>WordPress 5.2.4 is a short-cycle security release. The next major release will be&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://make.wordpress.org/core/5-3/\">version 5.3</a>.<br><br>You can <a href=\"https://wordpress.org/wordpress-5.2.4.zip\">download WordPress 5.2.4</a> or visit <code>Dashboard → Updates</code> and click <code>Update Now</code>. Sites that support automatic background updates have already started to update automatically.<br><br>In addition to the security researchers mentioned above, thank you to everyone who contributed to WordPress 5.2.4:</p>



<p><a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/darthhexx\">darthhexx</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a>, and <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7372\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:54:\"
		
		
				
		
				
		
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"Becoming Better Digital Citizens Through Open Source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wordpress.org/news/2019/10/becoming-better-digital-citizens-through-open-source/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 07:31:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:3:{i:0;a:5:{s:4:\"data\";s:9:\"Community\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:24:\"digital citizenship week\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"open source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7353\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:340:\"The WordPress Project is on a mission to democratize publishing. As WordPress empowers more people to participate in the digital space, we have the opportunity to make sure that everyone can participate safely and responsibly. Today marks the start of Digital Citizenship Week. We are going to share how open source can be used as [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:9031:\"
<p>The WordPress Project is on a mission to democratize publishing. As WordPress empowers more people to participate in the digital space, we have the opportunity to make sure that everyone can participate safely and responsibly. Today marks the start of Digital Citizenship Week. We are going to share how open source can be used as a tool for learners (regardless of age) to practice and model the essential parts of being a good digital citizen.</p>



<h2>What is digital citizenship?</h2>



<p>The digital landscape constantly changes and this affects the way we use the internet. New platforms emerge, people find different ways to spread information, communities form, grow and fade away every day. The concepts and practice of promoting civil discourse, critical thinking and safe use of the internet still remain central. And that is exactly what digital citizenship is about.</p>



<blockquote class=\"wp-block-quote\"><p><em>“Put simply, digital citizenship is a lot like citizenship in any other community &#8212; the knowledge of how to engage with digital communities you’re part of in a way that is thoughtful, safe, and makes appropriate use of the technology.”</em></p><cite><em>Josepha Haden, Executive Director WordPress Project</em></cite></blockquote>



<h2>Who is a digital citizen?</h2>



<p>Digital Citizenship is for all age groups. Anyone who uses the internet on a computer, mobile device or a TV is a digital citizen. You don’t have to be tech-savvy already, maybe you are taking your first steps with technology. Digital Citizenship Week is a chance to reflect together on our impact on the digital world. It can help us to make our consumption more considered and our interaction friendlier. It enables us to make a positive difference to those around us.</p>



<p>All of us can strive (or learn) to become better digital citizens. It can be affected by the access those teaching have had to digital skills and good practice. Adult education classes and community tech hubs play a part in basic tech skill development. Unfortunately, these are not always accessible to those in less populated geographic locations.&nbsp;</p>



<p>Open source communities like WordPress already make a difference in encouraging the principles of digital citizenship, from sharing tech skills to improving security knowledge. They give people an opportunity to learn alongside their peers and many of the resources are available regardless of location, resources, or skills.</p>



<ul><li>WordPress Meetups &#8212; locally-based, informal learning sessions &#8212; typically take place monthly on weekday evenings. </li><li>WordCamps are city-based conferences that take place in cities worldwide. These events usually last 1-3 days and are organized and run by volunteers.</li><li>The talks are also recorded and made available on the free, online library <a href=\"https://wordpress.tv/\">WordPress.tv</a>. These can be watched from the comfort of your own home, office or during informal get-togethers.</li></ul>



<h3>What can we do as part of the WordPress community?</h3>



<p>Digital citizenship skills, like many other skills needed in this tech-focused world, should be kept up-to-date. Open source communities offer unparalleled opportunities to do this and are available in countries across the world. As part of our role as members of WordPress and other communities, we can pass on such skills to others. For instance by working alongside people who have had limited experience of digital skills. Or by finding new ways of making this knowledge sharing fun and accessible.&nbsp;</p>



<p><strong>Here are just a few of the ways we do and can make an even greater difference:</strong></p>



<ul><li>as bloggers and writers, we can be more aware of how to write content responsibly.</li><li>as designers, we can think more about how different people will view, understand and respond to the designs and visuals we create or use.</li><li>as developers, we can build systems that make it easier for all users to find information and accomplish their goals, to be secure while visiting our sites, and to model good security and practice.</li><li>as community members, through organizing events like <a href=\"https://www.meetup.com/pro/wordpress\">WordPress Meetups</a> and <a href=\"https://central.wordcamp.org\">WordCamps</a>, we are helping equip those who may not have had access to digital literacy or who lack the confidence to put it into place or share with their family and colleagues. Through these events, the online videos and other resources on <a href=\"https://wordpress.tv/\">WordPress.tv</a> and through the <a href=\"https://make.wordpress.org/\">Make WordPress teams</a>, we are already making a difference every day.</li><li>as individuals, the way we communicate in the community and listen to each other is equally important. This is a vital part of how we grow and model positive digital citizens. Through growing our positive digital skills and a better understanding of online etiquette and challenges, we can make our immediate and wider digital world a more positive and useful environment.</li><li>making it easier to document and share knowledge.</li><li>emphasizing how skills learned within the community can be used in other parts of our digital lives.</li><li>creating and becoming ambassadors for Digital Citizenship.</li></ul>



<p>You can also get involved with specific events that have grown out of the wider WordPress project, championed by enthusiasts and those wanting to improve specific digital skills and bring wider benefits to society.</p>



<h2>Community-driven Events</h2>



<p>For example, <a href=\"https://wptranslationday.org\"><strong>WordPress Translation Day</strong></a> in 2019 had 81 local events worldwide. Running for 24-hours, individuals with language skills translated aspects of the platform into multiple languages with a total of 1181 projects modified. An amazing 221 new translators joined on the day. In addition, there was a live stream with talks, panel discussions, interviews, and sharing of tips and skills to help others learn how to translate. Volunteers are now planning the event for 2020!<br><br><a href=\"https://make.wordpress.org/polyglots/2019/03/01/global-wordpress-translation-day-4-is-coming/\">Stories of how people came together for WordPress Translation Day</a></p>



<figure class=\"wp-block-embed-wordpress-tv wp-block-embed is-type-video wp-embed-aspect-4-3 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">
<iframe width=\'632\' height=\'395\' src=\'https://videopress.com/embed/aiWzATgh?hd=0\' frameborder=\'0\' allowfullscreen></iframe><script src=\'https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243\'></script>
</div><figcaption><br>Interviews with some of the participants from a previous WordPress Translation Day giving a flavour of how volunteers developed this event.</figcaption></figure>



<p><strong>Do_action days</strong> are WordPress events organized in local communities to help give charities their own online presence. Each event involves members of the local WordPress community, planning and building new websites for selected local organizations in one day. Some take place in a working day, others on weekends.&nbsp;</p>



<figure class=\"wp-block-embed-wordpress-tv wp-block-embed is-type-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">
<iframe width=\'632\' height=\'356\' src=\'https://videopress.com/embed/xVwMpeOd?hd=0\' frameborder=\'0\' allowfullscreen></iframe><script src=\'https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243\'></script>
</div><figcaption>Volunteer Tess Coughlan-Allen talking about how people came together for the first do_action in Europe to help local charities. </figcaption></figure>



<p><a href=\"https://doaction.org\">Find the next do_action hackaton nearby your home town.</a></p>



<h3>Improving digital skills through WordPress</h3>



<figure class=\"wp-block-embed-wordpress-tv wp-block-embed is-type-video wp-embed-aspect-16-9 wp-has-aspect-ratio\"><div class=\"wp-block-embed__wrapper\">
<iframe width=\'632\' height=\'356\' src=\'https://videopress.com/embed/vwE1MunB?hd=0\' frameborder=\'0\' allowfullscreen></iframe><script src=\'https://v0.wordpress.com/js/next/videopress-iframe.js?m=1435166243\'></script>
</div><figcaption><br>In this video clip, Josepha talks about the Digital Divide and what current technological trends mean for it in the future. She explores what it takes to be literate in the digital landscape and how WordPress can be used to build and perfect those skills.</figcaption></figure>



<h2>Contributors</h2>



<p>Thanks to <a href=\'https://profiles.wordpress.org/webcommsat/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>webcommsat</a> for researching and writing this article and <a href=\'https://profiles.wordpress.org/yvettesonneveld/\' class=\'mention\'><span class=\'mentions-prefix\'>@</span>yvettesonneveld</a> for her supporting work in this series.<br></p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7353\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:51:\"
		
		
				
		
				
		

		
				
								
										\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:20:\"WordPress 5.3 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/10/wordpress-5-3-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Oct 2019 20:58:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:2:{i:0;a:5:{s:4:\"data\";s:11:\"Development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:8:\"Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7312\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:357:\"WordPress 5.3 Beta 3 is now available! This software is still in development,&#160;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version. You can test the WordPress 5.3 beta in two ways: Try the&#160;WordPress Beta Tester&#160;plugin (choose the “bleeding edge nightlies” option) [&#8230;]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:3765:\"
<p>WordPress 5.3 Beta 3 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>You can test the WordPress 5.3 beta in two ways:</p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-beta3.zip\">download the beta here</a>&nbsp;(zip). </li></ul>



<p>WordPress 5.3 is slated for release on&nbsp;<a href=\"https://make.wordpress.org/core/5-3/\">November 12, 2019</a>, and we need your help to get there.</p>



<p>Thanks to the testing and feedback from everyone who tested <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-2/\">beta 2</a> (and&nbsp;<a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">beta 1</a>) over&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&amp;changetime=10%2F01%2F2019..10%2F08%2F2019&amp;milestone=5.3&amp;col=id&amp;col=summary&amp;col=status&amp;col=milestone&amp;col=owner&amp;col=type&amp;col=priority&amp;order=priority\">60 tickets have been closed</a>&nbsp;in the past week. </p>



<h2>Some highlights </h2>



<ul><li>Fixes and enhancements in the admin interface changes introduced in previous 5.3 beta releases.</li><li>Wording changes in login screen (<a href=\"https://core.trac.wordpress.org/ticket/43037\">#43037</a>).</li><li>Improved accessibility in media upload modal (<a href=\"https://core.trac.wordpress.org/ticket/47149\">#47149</a>).</li><li>Changes in the way the new error handling with images works (<a href=\"https://core.trac.wordpress.org/ticket/48200\">#48200</a>).</li><li>MediaElement.js has been updated from 4.2.6 to 4.2.13 (<a href=\"https://core.trac.wordpress.org/ticket/46681\">#46681</a>). The script is now also being loaded in the footer again. This fixes a regression that happened two years ago, so might be worth noting (<a href=\"https://core.trac.wordpress.org/ticket/44484\">#44484</a>).</li><li>Update to the REST API media endpoint to allow resuming of uploads (<a href=\"https://core.trac.wordpress.org/ticket/47987\">#47987</a>).</li></ul>



<p>In addition to these, Beta 3 landed a number of small consistency and polish changes to the REST API, including an improvement to the permissions check used when editing comments, a fix for post type controller caching edge cases, and most importantly, the ability to use the _embed parameter to access the full data for a post using the /wp/v2/search endpoint.</p>



<h2>Developer notes</h2>



<p>WordPress 5.3 has lots of refinements to polish the developer experience. To keep up, subscribe to the&nbsp;<a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>&nbsp;and pay special attention to the&nbsp;<a href=\"https://make.wordpress.org/core/tag/5-3+dev-notes/\">developer notes</a>&nbsp;tag for updates on those and other changes that could affect your products.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev/\">Help us translate WordPress into more than 100 languages</a>!</p>



<p>If you think you’ve found a bug, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a>&nbsp;where you can also find a list of&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:7:\"post-id\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"7312\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:4:\"href\";s:32:\"https://wordpress.org/news/feed/\";s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"
	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"
	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:30:\"com-wordpress:feed-additions:1\";a:1:{s:4:\"site\";a:1:{i:0;a:5:{s:4:\"data\";s:8:\"14607090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:9:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 04 Nov 2019 18:18:44 GMT\";s:12:\"content-type\";s:34:\"application/rss+xml; charset=UTF-8\";s:25:\"strict-transport-security\";s:11:\"max-age=360\";s:6:\"x-olaf\";s:3:\"⛄\";s:13:\"last-modified\";s:29:\"Sat, 02 Nov 2019 21:15:00 GMT\";s:4:\"link\";s:63:\"<https://wordpress.org/news/wp-json/>; rel=\"https://api.w.org/\"\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 2\";}}s:5:\"build\";s:14:\"20191104163445\";}","no");
INSERT INTO `wmxss_options` VALUES("137","_transient_timeout_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3","1572934725","no");
INSERT INTO `wmxss_options` VALUES("138","_transient_feed_mod_9bbd59226dc36b9b26cd43f15694c5c3","1572891525","no");
INSERT INTO `wmxss_options` VALUES("139","can_compress_scripts","1","no");
INSERT INTO `wmxss_options` VALUES("140","_transient_timeout_feed_d117b5738fbd35bd8c0391cda1f2b5d9","1572934726","no");
INSERT INTO `wmxss_options` VALUES("141","_transient_feed_d117b5738fbd35bd8c0391cda1f2b5d9","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:61:\"
	
	
	
	




















































\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"WordPress Planet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:28:\"http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:2:\"en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:47:\"WordPress Planet - http://planet.wordpress.org/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:50:{i:0;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:55:\"Post Status: Matt Mullenweg’s State of the Word, 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://poststatus.com/?p=70832\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://poststatus.com/matt-mullenweg-state-of-the-word-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9653:\"<p><a href=\"https://2019.us.wordcamp.org/\">WordCamp US 2019</a> completes its first year in St. Louis, Missouri, where more than 1,300 WordPress community members and leaders are gathered.</p>



<p>It&#8217;s been the year of Gutenberg in 2019, and in this State of the Word, Matt highlights what has been accomplished, and what comes next.</p>



<p>Matt kicks off the event with the premiere of <a href=\"http://open.film/\"><em>Open: The Community Code</em></a>, a film about the open source WordPress community.</p>



<p>Open was really well done, and makes a great intro for this year in review. In the film, Matt said that $10 billion flow through the WordPress economy per year. Yet, it&#8217;s just one of the things that make the WordPress community. WordPress is more than code, more than business. Matt said, &#8220;it&#8217;s more than a tool,&#8221; and that it&#8217;s more like a canvas that, &#8220;anyone can paint on.&#8221; </p>



<p>Open is a film about WordPress, and what WordPress really is &#8212; not only software, but people, a community, and a mission. Open is, &#8220;is a documentary short created by Producer Andrew Rodriguez and Director Sean Korbitz. ​Executive producers Mark Maunder and Kathy Zant contributed to the production of Open.&#8221;</p>



<p>They are submitting the documentary to various festivals. Big shout-out to the <a href=\"https://www.wordfence.com/\">WordFence</a> team, the primary producers of this film.</p>



<h3>The WordPress Community</h3>



<p>The community continues to evolve, thrive, and adapt to the changing environment.</p>



<h4>WordCamp US</h4>



<p>The next WordCamp US will be hosted during the workweek, something I&#8217;m personally thankful for, as it opens up the weekend for family. Also, it will not overlap Halloween. Many people this year, myself included, got in late due to spending the holiday Trick-or-treating with family.</p>



<p>47 organizers, 122 volunteers, and 90 speakers made WCUS possible. Bluehost, WooCommerce, Jetpack, and Google are this year&#8217;s lead sponsors. Thank you to everyone!</p>



<h4>Meetups, people, and community endeavors</h4>



<p>There have been more than 5,000 WordCamp events and several do_action WordPress community events as well.</p>



<p>One <a href=\"https://heropress.com/\">HeroPress</a> story per month is now being featured on the WordPress blog. </p>



<p>Matt also honored <a href=\"https://poststatus.com/footnotes/were-sad-to-report-that-alex/\">Alex Mills</a>,  a prolific contributor who passed away this year.</p>



<h4>WordCamps</h4>



<p>There will be a total of 141 WordCamps in 2019, including 34 in brand new cities. There are also 17 KidsCamps happening in 2019.</p>



<p>This year there are at least four WordCamp US speakers under 15 &#8212; speakers younger than WordPress itself.</p>



<p>In 2020, the first WordCamp Asia is happening, to go alongside WordCamp US and WordCamp Europe. WordCamp Asia is in February, in Bangkok, Thailand. The next WordCamp Europe is in Porto, Portugal.</p>



<h4>One year ago</h4>



<p>WordPress 5.0 was released just before WCUS in Nashville (a contentious decision on timing in itself). It was what Matt calls a &#8220;controversial year,&#8221; where we wanted to &#8220;disrupt ourselves.&#8221; Gutenberg was included in core despite a lot of criticism in and outside of the community. He says we learned a lot from the process and it was &#8220;really good practice for future changes we want to make.&#8221;</p>



<p>He says, &#8220;I understand why we had a lot of this feedback,&#8221; and he&#8217;s excited for where we are going.</p>



<h4>Ways to get involved in WordPress</h4>



<p>Matt highlights several ways to get involved in the WordPress community today:</p>



<ul><li>WordCamp contributor days (including the WCUS one tomorrow)</li><li>Installing the <a href=\"https://wordpress.org/plugins/gutenberg/\">Gutenberg</a> plugin, which is now a testing ground for features. About 275,000 people are taking part in this effort.</li><li><a href=\"https://wordpress.org/plugins/design-experiments/\">Design Experiments</a> is a feature plugin to test user interface experiments.</li><li>Matt makes a call for block creation to, &#8220;expand the window for how people are creating WordPress sites today.&#8221; If it&#8217;s JavaScript only it will be able to go easily into the new block directory.</li><li>Help teach others in the community.</li></ul>



<p>When Matt says <em>why</em> we do all this, he says it&#8217;s to &#8220;help open the web.&#8221; He says the open web is like a pendulum that can swing to be more closed or more open over time.</p>



<h4>Five for the future</h4>



<p>There&#8217;s now a dedicated landing page for <a href=\"https://wordpress.org/five-for-the-future/\">Five for the Future</a> to highlight people contributing through this method.</p>



<h3>Core WordPress Development</h3>



<p>There have been two core releases in 2019. WordPress 5.1, &#8220;<a href=\"https://wordpress.org/support/wordpress-version/version-5-1/\">Betty</a>&#8220;, brought the &#8220;Site Health&#8221; screen, amongst other feature adjustments and bug fixes. It also included the Cron API, Site Meta for Multisite, and more.</p>



<p>WordPress 5.2, &#8220;<a href=\"https://wordpress.org/support/wordpress-version/version-5-2/\">Jaco</a>&#8220;, included live block previews, better block management, and the end of the WSOD (White Screen of Death).</p>



<p>WordPress 5.3 will be released November 12th, and includes more than 150 block editor improvements. Also in 5.3 is the beautiful Twenty Twenty theme. Every six months or so, WordPress will now send admin email verifications to help ensure folks are staying up to date.</p>



<p>The minimum version of WordPress is now 5.6.20 (ending support for 5.2 and 5.3) and compatibility is now up to PHP 7.4. More than 80% are now on PHP 7 or higher. Matt highlights the still-urgent need to improve update mechanisms and strategies with webhosts and site owners.</p>



<p>We are currently at 1,122 total unique contributors to WordPress this year. WordPress 5.3 will have more than a hundred contributors than any release before.</p>



<h3>Gutenberg</h3>



<p>There have been more than 20 major Gutenberg releases, and the number of Gutenberg contributors is up to 480 from 200 a year ago. Matt says the number of sites using Gutenberg is up more than 2.7 times, and the we just surpassed 50 million posts created in Gutenberg &#8212; increasing at a rate of about 270,000 posts per day, as tracked by Jetpack and therefore a conservative estimate.</p>



<p>In last year&#8217;s State of the Word Q&amp;A someone asked what percentage of Gutenberg was done, and Matt answered 10%. He says today that he thinks it&#8217;s about 20% done, and highlights how it&#8217;s an ongoing process that he expects to take a decade to build everything he envisions.</p>



<h4>Gutenberg feature improvements.</h4>



<p>There are a lot of improvements happening:</p>



<ul><li>Gutenberg is now fully mobile compatible and many of the core blocks are fully integrated. Offline support and dark mode are also nearly complete.</li><li>The average seconds to load has been cut in have and time to type has reduced from 170ms to 53ms.</li><li>There is now a smoother scrolling motion in Gutenberg.</li><li>Block previews allow you to see what the block you may insert looks like and also allows you to see more information about what the block does.</li></ul>



<p>And other Gutenberg features coming:</p>



<ul><li>Social icons will be able to be put anywhere.</li><li>The navigation menu is now going to be an inline Gutenberg block &#8212; a precursor I think to &#8220;customize all the things&#8221;.</li><li>Gradients are part of the Gutenberg experience.</li><li>Core Gutenberg is getting a button block.</li></ul>



<p>Matt recognizes that we&#8217;ll have thousands of blocks created for Gutenberg, and there will be a block directory which will load inside the Gutenberg editing experience. Patterns will be collections of blocks that people can install in bulk.</p>



<p>Matt says he thinks in the end, people will be able to create just about any  website layout in just a few clicks.</p>



<p>Several use cases of Gutenberg were highlighted, from newsletter editors to WordCamps, newsrooms, Microsoft Word converters, and more.</p>



<h4>Four phases of Gutenberg</h4>



<p>Matt highlights the four phases of Gutenberg and where we are now.</p>



<ul><li><strong>Easier editing</strong>: simply making WordPress editing better, has been the focus of the last year.</li><li><strong>Customization</strong>: we are &#8220;in the thick&#8221; of this process, some of which is complete and some (like full inline site editing) yet to come.</li><li><strong>Collaboration</strong>: real-time editing collaboration is coming in the third phase, something I&#8217;m so excited about.</li><li><strong>Multilingual</strong>: core WordPress and core Gutenberg will have complete multilingual support.</li></ul>



<h3>In conclusion</h3>



<p>Matt&#8217;s slides for the State of the Word are actually built in Gutenberg.</p>



<p>The code for the presentation <a href=\"https://github.com/wordpress/slides\">is on Github</a> for anyone to use.</p>



<p>It&#8217;s been an interesting and challenging year for WordPress. With that, Matt opens up Q&amp;A.</p>



<p><em>Photo by <a href=\"https://twitter.com/rzen\">Brian Richards</a> for Post Status. Also thank you to <a href=\"https://twitter.com/dimensionmedia\">David Bisset</a> for live tweeting the event while I wrote this.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 22:30:08 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Brian Krogsgard\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:38:\"WordPress.org blog: 2019 Annual Survey\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7460\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:54:\"https://wordpress.org/news/2019/11/2019-annual-survey/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:1498:\"<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wordpress.org/news/files/2019/11/image-12-1.png?fit=632%2C281&ssl=1\" alt=\"\" class=\"wp-image-7472\" width=\"329\" height=\"146\" /></div>



<p>It’s time for our annual user and developer survey! If you’re a WordPress user or professional, we want your feedback.</p>



<p>It only takes a few minutes to <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-english\">fill out the survey</a>, which will provide an overview of how people use WordPress. We&#8217;re excited to announce that this year, for the first time, the survey is also available in 5 additional languages:  <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-french\">French</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-german\">German</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-japanese\">Japanese</a>, <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-russian\">Russian</a>, and <a href=\"https://wordpressdotorg.survey.fm/wordpress-2019-survey-spanish\">Spanish</a>. Many thanks to the community volunteers who helped with the translation effort!</p>



<p>The survey will be open for 4 weeks, and results will be published on this blog. All data will be anonymized: no email addresses or IP addresses will be associated with published results. To learn more about WordPress.org’s privacy practices, check out the <a href=\"https://wordpress.org/about/privacy/\">privacy policy</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 02 Nov 2019 21:15:00 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Andrea Middleton\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: BoldGrid Joins Forces with W3 Edge, Acquires W3 Total Cache Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95188\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/boldgrid-joins-forces-with-w3-edge-acquires-w3-total-cache-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5167:\"<p><a href=\"https://www.boldgrid.com\">BoldGrid</a>, a WordPress product and services company, announced today that it has joined forces with <a href=\"https://www.w3-edge.com/\">W3 Edge</a>, the parent company behind the popular <a href=\"https://wordpress.org/plugins/w3-total-cache/\">W3 Total Cache</a> (W3TC) plugin.  BoldGrid acquired the W3TC plugin and retained its creator, Frederick Townes, along with its development and support staff.  The two teams will operate as sister companies but jointly work on the plugin&#8217;s future roadmap.</p>



<p>&#8220;There are some things a larger team can accomplish for Total Cache that we are targeting right now,&#8221; said Brad Markle, development manager at BoldGrid.  &#8220;After a few more releases of core Total Cache features, the TC team is slated to help accelerate our CRIO Theme Framework on the BoldGrid side.&#8221;</p>



<p>BoldGrid has a range of plugins, themes, and services for WordPress sites.  The company offers plugins like its post and page builder, themes such as its &#8220;super theme&#8221; CRIO, and services like testing and performance coaching.</p>



<p>W3 Edge&#8217;s primary product is its W3TC plugin, which serves as the caching solution for over one million WordPress installs.  It is one of the most-used caching plugins available in the official WordPress plugin directory.  </p>



<p>Many competing caching plugins have been gaining considerable exposure in the past few years.  Some of those are free.  Others, such as WP Rocket, have captured large segments of the premium market.  Managed WordPress hosts also generally offer built-in caching solutions as part of their strategy to build their customer numbers.  The question is whether this move will provide growth for W3TC and any related products or services.</p>



<h2>The Future of the W3TC Plugin</h2>



<div class=\"wp-block-image\"><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/w3tc-stats.png?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a>Screenshot of a new Caching Statistics page for W3 Total Cache</div>



<p>The BoldGrid team has plans to continue developing the W3TC plugin.  &#8220;Since joining with the awesome team at W3, we have been working to add in some slick new features like Caching Statistics and Lazy Loading,&#8221; said Harry Jackson, product manager at BoldGrid.</p>



<p>&#8220;We are also looking to partner with theme and plugin developers to ensure the widest range of compatibility for the product, and the WordPress Community,&#8221; said Jackson.  It is unclear what such partnerships would entail and the type of compatibility needed from third-party developers.  The BoldGrid team did not provide further details.</p>



<p>For some users, the W3TC interface and options can be overwhelming.  &#8220;User Experience is at the top of the list of things we are working on,&#8221; said Sash Ghosh, BoldGrid&#8217;s marketing manager.  &#8220;It can be challenging for some users to fully understand and utilize all the powerful features.  We will soon be adding an on-boarding and configuration guide to the plugin that will hopefully make the plugin accessible to more users.&#8221;</p>



<h2>Building Trust After a Rocky Past</h2>



<p>Despite setbacks in 2016, the W3TC plugin has maintained over one million active installs over the past three years.  In March of that year, there was <a href=\"https://wptavern.com/frederick-townes-confirms-w3-total-cache-is-not-abandoned\">concern that the plugin was abandoned</a> after no activity for seven months.  The plugin was not working for many users on the latest version of WordPress.</p>



<p>Much of the issue seemed to stem from not yet knowing how to scale such a popular product with a small team.</p>



<p>Later in September of 2016, a <a href=\"https://wptavern.com/high-risk-xss-vulnerability-discovered-in-w3-total-cache-plugin\">high-risk XSS vulnerability</a> was discovered with the plugin.  The plugin developer <a href=\"https://wptavern.com/w3-total-cache-0-9-5-packages-xss-vulnerability-patch-with-major-update\">patched the plugin</a> quickly.  However, the updated versions introduced new bugs and a poor experience for many users.</p>



<p>While things seem to have been running more smoothly in recent years, there is still some level of distrust within the inner WordPress community.  When asked how they are prepared to address past issues and assure they are looking out for the best interests of users in the future, the BoldGrid team said that security is a top priority.  They also expressed their openness to community feedback for improvement.</p>



<p>&#8220;As with all big plugins, there are challenges with functionality, features, and security,&#8221; said Jackson.  &#8220;With a bigger team and additional Quality Assurance resources we feel that Total Cache will continue to improve in all the major areas.  We have also introduced a public pull request process to facilitate additional feedback and bug fixes.  Though you can&#8217;t ever guarantee security, our team is very committed and respects our responsibilities to our million-plus users.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 14:01:49 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WordPress.org blog: The Month in WordPress: October 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7449\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://wordpress.org/news/2019/11/the-month-in-wordpress-october-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6217:\"<p>October has been a busy month with preparations for WordCamp US as well as the next major release of WordPress. Read on to find out about all that work and more.</p>



<hr class=\"wp-block-separator\" />



<h2>WordPress 5.2.4</h2>



<p>On October 14, <a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\">WordPress 5.2.4 was released</a> as a security release fixing 6 security issues. The fixes were backported to earlier versions of WordPress as well, so they’re available for sites not yet upgraded to 5.2.</p>



<p>This kind of release is only possible because people <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">report security issues responsibly</a> so that the Core team can address them. You can find out more specific information about the fixes on <a href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">the release documentation page</a>.</p>



<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>WordPress 5.3</h2>



<p>WordPress 5.3 has seen active development over the past month, with a release date set for November 12. You can <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\">download and test the release candidate</a> to get a taste of what to expect—this is largely what final release will look like.</p>



<p>This is a big release with a number of exciting and important updates. Among them are <a href=\"https://make.wordpress.org/core/2019/10/18/noteworthy-admin-css-changes-in-wordpress-5-3/\">significant changes to the look of the admin interface</a>, enhancements to the block editor that will affect developers of <a href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">themes</a> and <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">plugins</a>, <a href=\"https://make.wordpress.org/core/2019/10/09/introducing-handling-of-big-images-in-wordpress-5-3/\">large improvements</a> to the way that Core <a href=\"https://make.wordpress.org/core/2019/10/11/updates-to-image-processing-in-wordpress-5-3/\">processes images</a>, updates to cater for some functions <a href=\"https://make.wordpress.org/core/2019/10/11/wordpress-and-php-7-4/\">specific to PHP 7.4</a>, improvements to the <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">Site Health feature</a>, and many more improvements that are all documented in <a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">the WordPress 5.3 Field Guide</a>.</p>



<p>In addition to these Core updates, the upcoming major release will also include the new default theme, <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">Twenty Twenty</a>.</p>



<p>Want to get involved in building WordPress Core? You can contribute by <a href=\"https://make.wordpress.org/core/handbook/testing/\">testing the upcoming release</a>, as well as follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>New Core Committers</h2>



<p><a href=\"https://meta.trac.wordpress.org/ticket/4760\">Three new committers have been added</a> to the WordPress Core organizational structure. Core committers are individuals who have direct access to the Core development code repositories in order to publish updates to the software.</p>



<p>The new committers are Ian Belanger (<a href=\"https://profiles.wordpress.org/ianbelanger/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>ianbelanger</a>), Timothy Jacobs (<a href=\"https://profiles.wordpress.org/timothyblynjacobs/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>timothyblynjacobs</a>), and Joe Dolson (<a href=\"https://profiles.wordpress.org/joedolson/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>joedolson</a>). While Ian’s commit access is specifically for Core themes, both Timothy and Joe have full access to Core. This type of access is only given to individuals who have proved themselves with high-quality contributions and a deep understanding of how the WordPress project works.</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>The Accessibility Team is <a href=\"https://make.wordpress.org/accessibility/2019/10/26/accessibility-team-representatives-election-for-2020/\">looking for new team representatives</a> for 2020.</li><li><a href=\"https://2019.us.wordcamp.org/\">WordCamp US</a> is happening on November 1-3 and is set to be the largest WordPress event in North America.</li><li>WordCamp Asia, the first flagship event in the region, <a href=\"https://twitter.com/WordCampAsia/status/1187079744409526272\">will be rolling out their next batch of ticket sales</a> on November 1.</li><li>Work continues on Gutenberg, with <a href=\"https://make.wordpress.org/core/2019/10/30/whats-new-in-gutenberg-30-october/\">the latest update</a> including significant updates to the Cover block and many other areas.</li><li>The WordCamp Europe team have published <a href=\"https://make.wordpress.org/community/2019/10/27/update-contributor-orientation-tool/\">an update about the Contributor Orientation tool</a> they worked on earlier this year.</li><li>The WordCamp US team has published <a href=\"https://make.wordpress.org/community/2019/10/28/grow-your-meetup-survey-results-for-wcus/\">the results of their Grow Your Meetup survey</a> ahead of their 2019 event.</li><li>The Theme Review Team <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">is making plans</a> to implement a curated page for displaying featured themes in the Theme Directory.</li></ul>



<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 01 Nov 2019 07:28:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"Akismet: Version 4.1.3 of the Akismet WordPress Plugin is Now Available\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"http://blog.akismet.com/?p=2058\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:57:\"https://blog.akismet.com/2019/10/31/akismet-plugin-4-1-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:640:\"<p>Version 4.1.3 of <a href=\"http://wordpress.org/plugins/akismet/\">the Akismet plugin for WordPress</a> is now available. It contains the following changes:</p>



<ul>
<li>We&#8217;ve improved the activation and setup process.</li>
<li>We&#8217;ve fixed a bug that could have allowed an attacker to make you recheck your Pending comments for spam.</li>
</ul>



<p>To upgrade, visit the Updates page of your WordPress dashboard and follow the instructions. If you need to download the plugin zip file directly, links to all versions are available in <a href=\"http://wordpress.org/plugins/akismet/\">the WordPress plugins directory</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 15:59:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:17:\"Christopher Finke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"WPTavern: Jason Schuller Launches DSKO, a Discovery Network for Creators and Brands\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95158\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/jason-schuller-launches-dsko-a-discovery-network-for-creators-and-brands\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6705:\"<div class=\"wp-block-image\"><img /></div>



<p>On October 23, Jason Schuller officially announced that his new side project built on WordPress was open to the public.  The idea behind <a href=\"https://dsko.app\">DSKO</a> was to solve the issue of discoverability for creators and brands across various networks and websites by consolidating everything into a single space.</p>



<p>The website offers an easy signup process.  DSKO currently features 220 profiles, but that number is sure to grow.  For now, the site is purely about discovering creators and finding out how to contact or follow them through website or social media links.</p>



<p>The site allows profile creators to set up a bio, image, and even video, such as the one seen on the <a href=\"https://dsko.app/artsnacks/\">ArtSnacks profile</a>.  It will be interesting to see how people use this new WordPress-based site as a branding tool.</p>



<p>&#8220;I&#8217;ve been asked what the incentive is to re-visit DSKO after you&#8217;ve created a profile,&#8221; said Schuller in a <a href=\"https://twitter.com/jasonpatricksc/status/1189604540443578368\">Twitter update</a>.  &#8220;I have features (some nearly finished) in the works which will make that crystal clear.&#8221;</p>



<p>Schuller has been active within the WordPress community for over a decade.  He originally launched <a href=\"https://press75.com/\">Press75</a>, a WordPress theme shop, in 2008 with a focus on video-centric themes.  Like several others in the theme business at that time, he had the fortune of good timing.  From 2008 through the next couple of years, theme companies enjoyed little competition and a wide-open market for exploration.  However, business growth plateaued after a while.</p>



<p>&#8220;I quickly realized that my perception of how to properly launch and scale a project had been skewed by my experience with my WordPress theme business,&#8221; wrote Schuller in a <a href=\"https://medium.com/the-second-time-around/a-brief-history-of-a-wordpress-theme-business-3847e16fcba4\">history of his theme business</a>. &#8220;With Press75, I just built it and they came — a strategy that surprisingly doesn&#8217;t work so well the majority of the time for new ventures.&#8221;</p>



<p>Unable to duplicate his early success and unhappiness with the direction of WordPress theming, he sold Press75 in 2014.  Since then, he has moved onto new ventures such as <a href=\"https://leeflets.com/\">Leeflets</a>, a single-page website creator on top of WordPress.</p>



<p>&#8220;There seems to be growing interest in minimalist single-page website solutions for simple profiles (e.g. <a href=\"https://carrd.co/\">Carrd.co</a>, <a href=\"https://linktr.ee/\">Linktr.ee</a>, etc),&#8221; said Schuller.  &#8220;After building [Leeflets] last year, it occurred to me that while all of these options are great for creating an individual site/page, none of them enable the people and brands who are using them to be discovered beyond organic search via Google or sharing a URL across various other networks. My goal was to see if I could solve that by creating a discovery network for people and brands.&#8221;</p>



<p>The inspiration behind DSKO came from projects like existing single-page website builders.  Schuller said the grid design and navigation were inspired by the image-sharing site <a href=\"https://unsplash.com\">Unsplash</a> while Twitter inspired the profiles.  &#8220;I wanted it to be extremely quick and easy to browse, find and consume profiles,&#8221; said Schuller.</p>



<p>While borrowing concepts from popular projects already in the wild, he wanted to put his spin on them.  One interesting custom feature is the ability to connect profiles on the DSKO site to other profiles.  For example, a person (creator) can connect his or her profile to a separate brand profile.  This helps with the discoverability aspect by allowing visitors to browse connected profiles.</p>



<h2>The Technology Running the Network</h2>



<div class=\"wp-block-image\"><img /></div>



<p>DSKO is a completely front-end interface built on top of WordPress and shows what can be done without sending users to the WordPress backend.</p>



<p>&#8220;Essentially, DSKO boils down to users, profiles, categories, and tags which makes WordPress the perfect framework,&#8221; said Schuller.  &#8220;The functionality was there, I just needed to create a custom front-end experience to manage it all. Most of my recent projects have utilized WordPress this way, and every time I make something new, I borrow aspects from the previous project.&#8221;  This allows Schuller to bring a project from the concept stage to production more quickly.</p>



<p>The only third-party plugin running on the site is <a href=\"https://www.admincolumns.com/\">Admin Columns Pro</a>, which makes it easier for Schuller to manage users and content based on custom fields.</p>



<p>For those who create a profile on DSKO, one uncommon feature is that there is no password field.  Instead, the site provides a &#8220;magic&#8221; login link.  &#8220;Essentially, by removing the concept of a password, I&#8217;ve simplified the onboarding process and am validating a real email address (ensuring a real user) at the same time.&#8221;</p>



<p>The system generates a unique login token when the user creates a new account.  The token is sent as a link to the user email address.  The link is used to log into the site.  When a session expires or a user logs out, users can get a new link by re-entering their email address.</p>



<p>Currently, the code behind the site is not available to the public.  However, Schuller did say that he would consider opening up the platform in the future.  Starting from a more mature codebase could help other developers in the WordPress space build interesting projects where similar features are needed.</p>



<h2>Beyond DSKO: The Present and Future for Schuller</h2>



<p>Schuller is currently on contract with 10up.  He primarily works with them on the <a href=\"https://www.microsoft.com/inculture/\">Microsoft In Culture</a> project.  &#8220;[It] has been an amazing project to be a part of,&#8221; said Schuller.  Because the contract is only part-time work, it leaves him enough creative freedom to experiment with ideas like DSKO.</p>



<p>Another creative pursuit is an upcoming WordPress plugin that he&#8217;s building along with Phil Kurth.  It will allow site owners to map custom domains to any post or page on a single WordPress install.  The idea was inspired by his work with Leeflets.  &#8220;It&#8217;s going to be the first WordPress product I&#8217;ve been a part of since I sold my theme business in 2014.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 30 Oct 2019 18:32:41 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress.org blog: WordPress 5.3 RC3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7439\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3086:\"<p>The third release candidate for WordPress 5.3 is now available!</p>



<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>



<p>There are two ways to test the WordPress 5.3 release candidate:</p>



<ul><li>Try the <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a> plugin (choose the “bleeding edge nightlies” option)</li><li>Or <a href=\"https://wordpress.org/wordpress-5.3-RC3.zip\">download the release candidate here</a> (zip).</li></ul>



<p>For details about what to expect in WordPress 5.3, please see the <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first</a> and <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\">second</a> release candidate posts.</p>



<p>Release Candidate 3 contains improvements to the new About page, bug fixes for the new default theme, Twenty Twenty (see <a href=\"https://core.trac.wordpress.org/ticket/48450\">#48450</a>), and 9 fixes for the following bugs and regressions:</p>



<ul><li>Four bugs in the block editor have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48447\">#48447</a>).</li><li>Three Date/Time related bugs have been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48384\">#48384</a>).</li><li>A regression in <code>date_i18n()</code> has been fixed (see <a href=\"https://core.trac.wordpress.org/ticket/28636\">#28636</a>).</li><li>An accessibility color contrast regression for primary buttons when using alternate admin color schemes was fixed (see <a href=\"https://core.trac.wordpress.org/ticket/48396\">#48396</a>).</li></ul>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 21:16:10 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:19:\"Jonathan Desrosiers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WPTavern: WordPress Businesses Should Send Out Press Releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95161\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"https://wptavern.com/wordpress-businesses-should-send-out-press-releases\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7961:\"<p>I have only been on the job for less than two months. In that time, one thing has become abundantly clear. The largest companies in the WordPress ecosystem send out press releases to news organizations such as WP Tavern. Small businesses may send an email with few details.  Others send nothing at all.</p>



<p>As a former business owner, I never thought about writing a statement to send to the press.  Now that I am on the other side, I see how I missed huge opportunities to potentially get more coverage and build a relationship with the publications within the WordPress arena.</p>



<p>Brian Krogsgard of <a href=\"https://poststatus.com\">Post Status</a>, a competing publication of WP Tavern, agrees that companies are missing opportunities.  &#8220;There are many easy wins in PR that only a few companies take advantage of in our space,&#8221; said Krogsgard.</p>



<p>As a journalist, I am here to tell the truth, regardless of who or what the story is about.  However, there will always be a part of me that wants to see every businesses within the WordPress space succeed.  Therefore, this article is a tutorial that will help businesses within our space get their news items out to the public.  Plus, the larger and more successful the WordPress community grows, the more potential WP Tavern has of growing its audience.  It is healthy for the ecosystem on the whole.</p>



<p>Because of this symbiotic relationship between the media and product creators, it is important that business owners have a good working relationship with the publications that are writing about them.</p>



<h2>What Is a Press Release?</h2>



<p>A press release is sometimes called a &#8220;press statement&#8221; or &#8220;news release.&#8221;  It is an official statement from a company about a particular news item.  In a sense, it is a news story itself.  There are some publications in the larger world of journalism that routinely publish only the press releases sent to them.</p>



<p>A press release can be in the form of an email, text file, PDF, or even video.  Its purpose is to simply let the press know about your news.</p>



<h2>Why Should Companies Put Together Press Releases?</h2>



<p>On occasion, I get a message that says something along the lines of, &#8220;Hey, you&#8217;re giving the big businesses too much coverage. How about throwing the smaller folks a bone?&#8221;  That is a fair question.  However, what is often the problem is that this news by a smaller company may not be on a particular publication&#8217;s radar.</p>



<p>Enter the press release.</p>



<p>This is where smaller companies should sneak a peek at larger companies&#8217; playbooks.  Large businesses often have entire public relations (PR) or communications departments.  Sometimes they only have one person in that role.  What those PR positions are doing is getting the word out, and they are making sure the publications within the WordPress realm know about their news.</p>



<p>Individuals or small companies need not hire someone for communications with the press.  However, at least one person should serve as a representative and handle this role.</p>



<p>There are many things happening in the WordPress world on any given day.  Even with a press release, there is no guarantee that WP Tavern or another publication will publish your story.  There is a guarantee that they won&#8217;t if they do not know about it.</p>



<p>A press release is a way to get your foot in the door and should be a part of any company&#8217;s strategy.  </p>



<p>&#8220;I definitely prefer press packets for product launches, particularly if I can see the key features ahead of time,&#8221; said Krogsgard.  &#8220;Press releases at the time of a news event is fine, but the best company PR is usually done by working with media outlets ahead of a release schedule.&#8221;</p>



<p>Whether your news is covered will depend on several factors.  The important thing, particularly for smaller businesses, is that you put yourself on a publication&#8217;s radar.</p>



<p>The team here at WP Tavern will certainly appreciate your company passing along a press release, but do not limit yourself.  Send it to other publications.  Give podcast creators a copy.  Most will be accepting of any news you send their way.</p>



<h2>How To Write a Press Release</h2>



<p>Press releases can take a few different forms, but there are some things that should be included with every statement that a business issues.  </p>



<p>The following is an outline of a basic press release.  You can deviate from the formula a bit, but make sure you include the important information.</p>



<h3>Contact Information</h3>



<p>Journalists need to know how to get in touch with you or the appropriate representative for your company for potential follow-up questions.  In the WordPress world, this will primarily be a name and email address.  However, including something like your WordPress Slack username for text chats helps.  </p>



<p>Most of all, you should provide the best way to contact you.</p>



<p>This also means being prepared to answer questions if and when you are contacted.  Quotes are like gold to journalists.  It is often the human element that we are after.  The press release opens the door to a conversation.</p>



<h3>Story Headline</h3>



<p>Journalists get a lot of emails, notes, and so on.  A press release should contain a headline that is both factual and grabs attention.  It should be a brief summary of what news you want to share.  It is no different than writing a blog post.  In our fast-paced culture, you only have a moment to let someone know that your story is worth reading.  Avoid headlines that look like click-bait, but tell why your news is newsworthy.</p>



<p>Depending on the news, a sub-headline is often an extra piece of info that helps.  A quick sentence or two that expands on the headline is sometimes necessary to fully explain why the press should continue reading.</p>



<h3>Dateline</h3>



<p>A press release should always include a dateline.  There are two types of datelines.  The first type is the date of the press release.  This means journalists can move forward with the story.</p>



<p>However, you can also put a future date in the dateline.  This is common when you want to prepare publications for an upcoming story that you don&#8217;t want to publicly announce yet.  This is called requesting a news embargo, which means that publications should sit on the story until that particular date.</p>



<h3>Introduction or Lede</h3>



<p>A lede is the opening paragraph of a story that answers the five W&#8217;s: who, what, when, where, and why.  This is the moment you should let journalists know what the story is about.  Get to the point in answering those five questions. </p>



<h3>Body Copy</h3>



<p>After introducing the story, you should stick to relevant information about the story.  Any data or details that are important for the story should be included.</p>



<p>&#8220;Another thing that&#8217;s really helpful is screenshots, or short video overviews, and other brand assets that can provide visual appeal to go alongside a story,&#8221; said Krogsgard of writing a compelling press statement.  &#8220;Do you have a revamped interface? Well nicely packaged visual materials really help sell that to convince me that it&#8217;s worth covering — and also to use in the article myself if I do write about it.&#8221;</p>



<h3>Company Bio or Info</h3>



<p>Last but certainly not least is including a section that provides details about your company.  Consider it a short biography.  </p>



<p>One of the worst things for a journalist covering a story is spending hours trying to dig up your company&#8217;s information online instead of working on the story.  Providing that information up front is a huge help to the press.  It also ensures we are getting your information correct.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 29 Oct 2019 19:49:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Not Attending WordCamp US 2019? How to Watch From Home\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95149\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://wptavern.com/not-attending-wordcamp-us-2019-how-to-watch-from-home\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3419:\"<p>For those of you unable to attend WordCamp US at St. Louis, Missouri, this weekend, the event will be <a href=\"https://2019.us.wordcamp.org/livestream/\">available for live streaming</a>.  The conference runs from Friday, November 1, through Sunday, November 3.  Friday and Saturday&#8217;s regular sessions, which do not include workshops, will be streamed. </p>



<p>While previous events like <a href=\"https://wptavern.com/wordcamp-us-2018-livestream-tickets-now-available\">WordCamp US 2018</a> have always been available to watch for free, they required you to sign up before viewing.  This year&#8217;s event is open with no such restriction.  You can simply pick a streaming video and watch.</p>



<p>There will be multiple livestreams running simultaneously based on the room the parallel sessions are happening in.  The WordCamp organizers have already set up the livestream videos with YouTube. By going to the <a href=\"https://2019.us.wordcamp.org/livestream/friday/\">Friday livestream</a> or <a href=\"https://2019.us.wordcamp.org/livestream/saturday/\">Saturday livestream</a> page, you can set a reminder for any particular room you want to watch via the YouTube embed.</p>



<p>There are many sessions planned for the <a href=\"https://2019.us.wordcamp.org/schedule/\">camp schedule</a>. The tough problem is going to be figuring out what to watch with overlapping streams from three rooms.  All times on the schedule are in Central Time US (CST).</p>



<p>If you have a question for a particular speaker, WordCamp US will have a volunteer social media team keeping an eye on the following hashtags on Twitter.  The volunteers may ask your question if time permits for the session.</p>



<ul><li><a href=\"https://twitter.com/hashtag/AskWCUS220\">#AskWCUS220</a> (Room 220)</li><li><a href=\"https://twitter.com/hashtag/AskWCUS230\">#AskWCUS230</a> (Room 230)</li><li><a href=\"https://twitter.com/hashtag/AskWCUS240\">#AskWCUS240</a> (Room 240)</li><li><a href=\"https://twitter.com/hashtag/AskSOTW\">#AskSOTW</a> (State of the Word)</li></ul>



<h2>Watch Previous WordCamp US Speakers</h2>



<p>If you can&#8217;t wait for this year&#8217;s sessions, you can view the <a href=\"https://wordpress.tv/event/wordcamp-us-2018/\">2018 sessions</a> from WordPress TV.  It is a good way to get yourself in the mood for this year&#8217;s event and to look at how much WordPress has changed in the past year.</p>



<p>One of the most interesting WordCamp videos is always the &#8220;State of the Word&#8221; presented by Matt Mullenweg, co-founder of WordPress.  You can watch last year&#8217;s video below.  What do you expect to see in this year&#8217;s talk?</p>



<div class=\"wp-block-embed__wrapper\">
<div class=\"embed-wrap\"></div>
</div>



<h2>How Will You Attend WordPress US 2019?</h2>



<p>Are you planning on attending in person this year?  Or, will you be among the many who are watching from home, the office, or elsewhere?</p>



<p>Unfortunately, WP Tavern will not be able to cover the event in person this year. However, we will be watching from home like many of you. Feel free to drop your recommended must-watch sessions in the comments.</p>



<p>If you are unable to attend or watch via livestream, the videos will be available on <a href=\"https://wordpress.tv/\">WordPress TV</a> and <a href=\"https://www.youtube.com/channel/UCpJf6LGZ0a4n9Lj4aVt9spg\">YouTube</a> to watch at your leisure.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 28 Oct 2019 17:18:40 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WPTavern: Automatic Image Alt Tags and More with Image SEO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95129\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"https://wptavern.com/automatic-image-alt-tags-and-more-with-image-seo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8901:\"<div class=\"wp-block-image\"><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/image-seo.jpg?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a></div>



<p>I had the opportunity to test the <a href=\"https://wordpress.org/plugins/imageseo/\">Image SEO plugin</a> over the past week.  Image SEO is a plugin that connects to an accompanying online service that processes images uploaded to a WordPress installation.  The plugin can automatically rename file names, create alt tags for screen readers, and optimize images for Pinterest.</p>



<p>The plugin is one half of a Software as a Service (SaaS) product.  To use the image processing features, you must sign up for an account on the <a href=\"http://imageseo.io/\">Image SEO website</a>.  Currently, users are provided credits for processing 10 images for free to test out the service.  After that, image processing requires a monthly or annual fee based on a set number of images.  Pricing starts at 4.99€ per month for the lowest tier and ranges up to 59.99€ for the enterprise option.  The service also offers one-time purchases for a given number of images.</p>



<p>The Image SEO team went public with their plugin and service in April and have been refining the product since.  Aurelio Volle, co-founder and chief marketing officer, said a big part of the process was removing unnecessary features in favor of developing the core product and creating new features.</p>



<p>&#8220;[Thomas Deneulin] asked me in December 2018 to come and work with him on a project,&#8221; said Volle.  &#8220;They had developed an Image SEO auditing tool but they were not able to sell it. I went through the product, cut so many features, created a new narrative, asked for reviews, etc.&#8221;  Volle&#8217;s work primarily centered around identifying user needs and figuring out what they would be willing to pay for the service.</p>



<p>Volle said they use all the major facial recognition APIs available on the market, but they are not willing to share their secret recipe at this time.  &#8220;We process the results with an algorithm we created to provide our users with the most relevant data possible for alts and names,&#8221; said Volle.  &#8220;We are still working on the algorithm. The results should be more and more accurate in the future.&#8221;</p>



<p>When I come across a new WordPress plugin or theme with the term &#8220;SEO&#8221; in the name, I cringe.  It is used so often as a marketing term that it has lost meaning for me.  I&#8217;d like to ignore it like a bad commercial on TV, but it&#8217;s there in the name.  I know it is probably smart to use it for marketing purposes.  Despite my misgivings about the name, I gave Image SEO a serious look and found that I liked its potential.</p>



<p><em>Would I use the plugin?</em>  Probably not on a personal blog where I control all of the content.  I am a stickler for controlling every aspect of my own content.  I am not within the target audience for the plugin.</p>



<p>However, I would use the plugin for a large site with multiple writers.  It would work well as part of a quality control system.</p>



<p>My primary interest was in how well Image SEO auto-created image alt tags.  I have little interest in what search engine benefits the plugin might provide.  I was more interested in how it could help describe images for users who use a screen reader.  A plugin that can accurately add alt tags for users on assistive technologies could be useful in an environment with multiple writers.  I have worked with clients in the past where such a plugin would have been a welcome addition to the site.</p>



<p>This is not to say the plugin isn&#8217;t useful for single-person sites or those with a small group of writers.  It depends on whether the individual site could use it.  If needed, I would recommend the Image SEO plugin to anyone.</p>



<p>The free service is currently only available in English.  If you need alt tags in another language, you will need to go with a premium plan.  This would be better opened up to all languages.  It is hard to vouch for the accuracy of non-English alt tags when they are not available in the free plan.</p>



<h2>How Well Does the Plugin Work?</h2>



<p>The plugin gives you the option of automatically renaming image file names and setting alt tags.  I would recommend using both of these options.  File names like <code>IMG_2019_345.jpg</code> do not tell search engines or users anything about an image, and the automatic alt tags are the most useful feature of the plugin.</p>



<p>The plugin doesn&#8217;t make you work to get results.  I tested out 60 images (10 free plus an extra 50 provided by the Image SEO team).  On the whole, the results were fairly accurate.</p>



<p>However, not every image passed the accuracy test.  Take note of the following screenshot with an image of two people standing at the end of some hallway or structure.  I&#8217;m not exactly sure what they are in, and neither was the service.  The resulting alt tag was &#8220;Archives &#8211; A very dark water &#8211; Art.&#8221;</p>



<img />A rare inaccurate alt tag added by the plugin.



<p>I had to throw a few curveballs at the software to see how it stood up.  Technologically, humans are not at the pinnacle of artificial intelligence and recognition software, but we are constantly improving.  The service will undoubtedly improve over time with anything thrown at it.</p>



<p>My biggest gripe with the plugin is that it automatically prepended the post/page title to the front of every image&#8217;s alt tag when uploading via the post editor.  There is no reason to do this.  The post title often has nothing to do with describing the image for screen readers.  I could see this being useful for product images on an eCommerce site.  This feature should be opt-in.  It would quickly become irritating to manually remove the post title from each image.</p>



<p>The plugin also allows you to add a description, ID, and other elements for use with Pinterest.  I also could not figure out how to get the attributes to show for my images on anything but attachment pages.  It was unclear how this feature worked on the front end of the site.  Admittedly, it did not bother me because I had no interest in this aspect of the plugin.</p>



<h2>Bulk Optimizing Images</h2>



<div class=\"wp-block-image\"><img />Bulk optimizing cat pictures, the most useful type of images for internet usage.</div>



<p>The Image SEO plugin allows users to bulk optimize images across the entire site.  The bulk optimization tool also allows you to preview the results before deciding on whether you want to make the changes.  This can be an extremely powerful tool if you are running a site with a lot of old images with missing alt tags.</p>



<p>The biggest thing to watch out for is that running this tool can eat up a ton of image credits.  </p>



<p>A fair word of warning:  even the optimization preview uses image credits.   I hope this limitation is addressed in some way because it is not clear up front.  Using the feature can catch you off guard and drain money if you simply want to preview the optimization prior to deciding whether you want to go through with the changes.</p>



<p>The textual description on the bulk optimization page may even lull you into a false sense of security.  It reads, &#8220;No worries, you can get a preview of the results before going further.&#8221;  Fortunately, I was running this on a free account and did not lose real dollars over it.</p>



<p>It will take a bit of time to run, depending on the number of images, but the bulk optimization tool works flawlessly.</p>



<h2>How Does the Code Stack Up?</h2>



<p>I see little reason for concern with the code.  The developers have a clear architecture and hierarchy.  It is forward-thinking and uses modern PHP practices.</p>



<p>The one caveat is that the plugin does not use the core WordPress HTTP API for handling remote requests to their service.  Users without cURL enabled on their site would be unable to use the plugin, which is likely not an issue for most people.  The team said they went with a custom implementation so they could easily deploy their project on other PHP projects and not be limited by tying the code to WordPress.  They have reported no problems with customers thus far.</p>



<h2>The Final Verdict</h2>



<p>There is a lot to like about the plugin.  If you are in it for the SEO benefits, having a system in place to automatically rename ugly image file names and create fairly accurate alt tags, you may find this plugin useful.</p>



<p>The plugin is not 100% accurate by any means, but you won&#8217;t find that level of accuracy anywhere.  With the 60 images I threw at it, it performed well.  The pricing model also looks fair for what the service offers.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 25 Oct 2019 19:53:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:10;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"WPTavern: GoDaddy Launches eCommerce Hosting Plan in Partnership with WooCommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95119\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:92:\"https://wptavern.com/godaddy-launches-ecommerce-hosting-plan-in-partnership-with-woocommerce\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3955:\"<p>GoDaddy launched an eCommerce tier for their <a href=\"https://www.godaddy.com/hosting/wordpress-hosting\">managed hosting plans</a> on October 22.  The new tier launched in partnership with WooCommerce and offers over $1,500 of commercial extensions and themes for setting up an online shop.</p>



<p>The eCommerce plan utilizes GoDaddy&#8217;s onboarding process available with all managed hosting plans.  The system automatically sets up the user&#8217;s online shop based on answers provided during onboarding.  This process eases the burden of setting up a fully-functional eCommerce website for users who are new to working with WordPress and WooCommerce.  </p>



<p>GoDaddy also sets up and maintains a free SSL certificate, a necessity for handling secure payments, as long as the site continues using their managed hosting.  This service is available with some of their other managed hosting plans but not the lower tiers.</p>



<p>It makes sense that GoDaddy would try to carve out a slice of the WooCommerce pie now that the plugin is powering 30% online shops around the world.</p>



<p>Neither GoDaddy nor Automattic, the parent company of WooCommerce, has released the details of what the partnership entails.  Aaron Campbell, GoDaddy&#8217;s head of WordPress Ecosystem and Community, confirmed the two companies did have an official partnership.</p>



<p>The available list of bundled WooCommerce extensions includes the following, but it is unclear what other extensions are available (official extensions number in the hundreds).  Campbell said that some extensions are still rolling out on the platform.</p>



<ul><li>Advanced Notifications</li><li>WooCommerce Brands</li><li>Checkout Field Editor</li><li>WooCommerce Deposits</li><li>Follow-Ups</li><li>WooCommerce Points and Rewards</li><li>WooCommerce Pre-Orders</li><li>Product Add-Ons</li><li>Product Vendors</li><li>Min/Max Quantities</li><li>Product CSV Import Suite</li><li>Memberships</li><li>Bulk Stock Management</li><li>Subscriptions</li><li>WooCommerce Bookings</li><li>UPS &amp; USPS Shipping Methods</li></ul>



<p>There are a few popular add-on plugins in the mix, but many store owners could need to purchase additional extensions to build their ideal online shop.  Setup costs could be steeper than some customers anticipate.  Official WooCommerce extensions can range between free and $299 per year.</p>



<p>The plan also makes several premium <a href=\"https://wordpress.org/themes/storefront/\">Storefront</a> child themes available to customers.  Like extensions, there is currently no public list of which themes are included with hosting.</p>



<p>The new eCommerce tier runs on the same managed hosting system as other plans, which all allow site owners to run WooCommerce.</p>



<p>&#8220;From an ease-of-setup standpoint, eCommerce site owners will definitely benefit from the simplified onboarding process that helps them through setting up their store,&#8221; said Campbell.  (Read our <a href=\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\">review of GoDaddy&#8217;s onboarding process</a>.)</p>



<p>Aside from potential help from the onboarding process, the value-add for going with the eCommerce hosting tier is directly tied to the bundled WooCommerce extensions and themes.  Without an official list available, it is hard to speculate whether the upgrade from the next lowest tier, Ultimate, is worth it.  The Ultimate plan runs $5 cheaper each month ($60/year).  It is virtually the same plan minus the WooCommerce extensions.  Plus, you can run a second website on Ultimate. </p>



<p>Shelling out the extra dollars for the eCommerce tier comes down to personal choice.  Whether GoDaddy is offering an extension or theme that would cost more than the $60 in savings each year should play heavily into that decision.  A single commercial extension or theme will likely exceed that cost.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Oct 2019 22:23:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:11;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: Possibilities of a CMS in the Spatial Computing Future\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95090\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://wptavern.com/possibilities-of-a-cms-in-the-spatial-computing-future\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10303:\"<p>In my role at WP Engine, I have the opportunity to travel the world serving as an ambassador for new and interesting ways of using WordPress. I was recently in Raleigh, North Carolina, at All Things Open talking about the possibilities of a CMS in the spatial computing future. This was a lofty topic for 45-minute talk, so I thought I’d share a more in-depth look at a new way to build Extended Reality (XR) experiences with WordPress using a headless approach.</p>



<h2><strong>The Headless Craze</strong></h2>



<p>I think many of us see headless primarily as a way to make our sites faster and decouple them from the CMS that controls our content. While true in some cases, this is probably not the most compelling lens to view this concept in when we consider what this means for native apps and Augmented, Virtual and Mixed Reality, more broadly defined as Extended Reality.</p>



<p>In order to understand how WordPress can power XR experiences we must take a step back and understand what key features developers and designers desire in interactive applications.</p>



<h2><strong>What is the core appeal of a CMS?</strong></h2>



<p>Zooming out and looking at what a CMS is at its core highlights a few key features that make my future-looking imagination race. A CMS can be broadly defined as:</p>



<ul><li>post/page data</li><li>meta associated with data like users and posts</li><li>a secure user system</li><li>a rich content editor</li><li>extendability through plugins/themes/etc.&nbsp;</li></ul>



<p>WordPress shines brightly across this entire spectrum and, pairing that with open-source flexibility, you can build whatever you can dream. User systems and content are key requirements in interactive and media-rich applications such as XR. An open-source solution like WordPress gives developers greater freedom and more control over the source code and the software meaning they can tweak it to perform how they want, unrestricted by licensing. Another level of freedom was achieved when the new Gutenberg editor was merged into WordPress 5.0, further democratizing the power of the world’s most popular CMS.</p>



<h2><strong>Possibilities with the New WordPress Editor</strong></h2>



<p>We’ve spent a lot of time thinking through the front-end benefits in a unified way to control markup using blocks. I think one aspect of the new WordPress editor that has largely been overlooked in front-end development is the data structure of the blocks themselves.&nbsp;</p>



<p>Pulling data via the REST API typically returns the final markup of a post. This makes it hard for non-html based applications to parse or use the data. You can certainly sanitize the final output, but it doesn&#8217;t provide confidence going forward and often removes important context.</p>



<p>Before a post renders markup in the front end, there are valuable attributes used to determine that final markup. These options are often just as useful to a non-browser application as they would be for a browser-based experience; it’s just a matter of making sure the content is sanitized for your purposes.</p>



<p>Let’s imagine we have an audio block with the attributes of <code>src</code>, <code>loop</code>, <code>autoplay</code>, etc. Those attributes are just as important to a non-browser application that expects the same decisions to be made at runtime. By querying a Gutenberg post, one can pull the audio file and also the attributes of how it should behave, leading to the application being unified with browser behavior.</p>



<p>In the not too distant future, the physical and digital worlds will continue to blend together. As younger generations increasingly interact in ways other than through screens, keyboards, and mice, we should probably begin to create content with that future in mind. Do we really want all that markup saved? Is it even important? If it is, maybe that attribute should be saved, keyed, and exposed via JSON. Markup is really only useful to the front-end rendering.</p>



<h2><strong>Sound-Only AR Blog Reader Concept</strong></h2>



<p>Bose is pioneering an interesting approach to augmented reality. They have quickly been updating their product offerings to include 6 Degrees of Freedom (6DoF) sensors inside their headphones and sunglasses to power sound-only AR experiences. This gives us three important mechanics for XR; 6DoF head tracking, private sound experiences, and gesture recognition. I decided to use this technology to illustrate the potential in the data structure of Gutenberg blocks.&nbsp;</p>



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/bose_ar_glasses.jpg?w=627&ssl=1\" alt=\"photo of Bose AR sunglasses\" /></div>



<p>Using the <a href=\"https://github.com/royboy789/gutenberg-object-plugin\">Gutenberg Object Plugin</a> open-sourced and built by Roy Sivan and contributors, I was able to expose the attribute data in a REST friendly way. I was then able to shift my focus on building mechanics and an MVP application to read a blog without sight. The application puts buttons in 3D space around the visitor. To the right, a “Next Post” button. Directly in front of them, a post body button that plays back a reading of the post data. The voice-to-text technology was made possible by using the <a href=\"https://wordpress.org/plugins/amazon-polly/\">Amazon AI Plugin for WordPress</a>.&nbsp;</p>



<p>When double-tapping on the frame of the glasses while facing the post body, a voice prompts the visitor to use a nod gesture to playback the post audio. Within 24 hours of sketching the idea, I had a working proof of concept and I attribute that largely to not having to figure out how to prepare my data. Blocks and JSON did it all for me!</p>



<p>The following image is a sketch of the concept along with the final product.&nbsp;</p>



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/sketch_of_AR_reader_idea.jpg?w=627&ssl=1\" alt=\"sketch of Bose AR blog reader.\" /></div>



<div class=\"wp-block-image\"><img src=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/bose_ar_blog_reader.jpg?w=627&ssl=1\" alt=\"final design of Bose AR blog reader prototype.\" /></div>



<h2><strong>Blocks in Traditional Augmented Reality</strong></h2>



<p>Spatializing blocks was interesting to me, so I built another proof of concept that demonstrates how 3D prefab objects in a game engine can be associated with 2D blocks on a webpage. Below is a screenshot of a Gutenberg post rendered around my hotel room.</p>



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/gutenberg_shared_properties.jpg?w=627&ssl=1\" alt=\"Example showing relation of website and AR experience.\" /></div>



<p>While a literal 1:1 representation of a webpage in AR illustrates that we can couple our design decisions in and out of a browser, I think we can go a step further. A block can represent many things; so why not use custom blocks to abstract 3D ideas?</p>



<h2><strong>Non-Standard File Types and Abstracting 3D Objects</strong></h2>



<p>HTML has a finite list of file types allowed out of the box. That is not to say we are limited to only those options. WordPress is flexible enough to extend to others by simply adding allowed types.&nbsp;</p>



<p>I’ve been building a music game called <a href=\"https://broken.place\">Broken Place</a> that allows players to interact with real-time music in AR. The sound engine is running an open-source programming language called Pure Data (PD) that has a very specific file type that only it can read. In WordPress, I am managing post content in a custom post type called “songs” where players can upload their PD patch. Players simply log into the website as a contributor user role and upload their patch. The song post is queried from the native app and the patch is loaded.&nbsp;</p>



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/broken_place_ar_screenshot.jpg?w=627&ssl=1\" alt=\"An Augmented reality synthesizer on a beach\" /></div>



<p>The content submission options open the potential of allowing users to design their own layouts for music interfaces. Imagine in the graphic below, that each of the 3D knobs pictured were associated with a Gutenberg block called “Knob” and each of those knobs have an attribute associated with the sound message being sent to the audio engine. Content creators could determine how the sound messages are mapped in a grid using the column block. When you nest blocks within a column block, the REST response also nests the objects as children of the block and logic can be applied using the JSON structure.</p>



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/broken_place_vr.jpg?w=627&ssl=1\" alt=\"A synthesizer interface in VR\" /></div>



<h2><strong>Narrative Design Potential</strong></h2>



<p>In post data, we are telling stories; some informational, some personal, but they serve as thought capsules. I dream of a future where posts are much more than just text and images on a screen. Spatializing content provides amazing opportunities for narrative design. I’ve seen this potential represented in the <a href=\"https://wptavern.com/wordpress-amp-plugin-version-1-2-introduces-gutenberg-powered-amp-stories-editor\">AMP Stories</a> and hope that structure could help inspire stories told within 3D physical spaces.&nbsp;</p>



<div class=\"wp-block-image\"><img src=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/06/AMP-stories-editor.png?ssl=1\" alt=\"image of AMP Stories block\" /></div>



<p>Imagine the same post structure of AMP stories, but for 3D spaces that you can drop in your home or office. <a href=\"https://hubs.mozilla.com/\">Mozilla Hubs</a> is leading the charge in collaborative XR spaces open to all devices and I see interesting potential in combining a WordPress narrative design for Mozilla Hubs to allow shared storytelling experiences.&nbsp;</p>



<p>I’m excited to continue exploring new ways of using headless WordPress to power XR experiences and help usher in an entirely new era in how we interact with and create digital content.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 24 Oct 2019 13:00:06 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Anthony Burchell\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:12;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"WPTavern: Curated List of Featured Themes Coming to the Theme Directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94278\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://wptavern.com/curated-list-of-featured-themes-coming-to-the-theme-directory\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6712:\"<p>Themes are the face of WordPress.</p>



<p>Like it or not, the average user is more interested in what their site looks like when they first begin using the platform than what the thousands upon thousands of plugins can do for them.  Perhaps that&#8217;s unfair to plugin developers &#8212; there are more exciting things happening in the plugin world right now &#8212; but it is what it is.  Themes are visual, and they are what sell the platform to people who just want a site that looks good.</p>



<p>While WordPress is massive, I can&#8217;t help but think that it is losing out on more users because such users are not always presented with solid options for their site&#8217;s design out of the gate.</p>



<p>Most of the default Twenty* themes are good introduction themes for first-time users, but they are not to everyone&#8217;s tastes.</p>



<p>I&#8217;ve worked with numerous users who were setting up their first WordPress site over the years.  Today, many similar people use a pre-installed script to launch WordPress from their web host.  Much of the initial work is done for them.  Often, they are unfamiliar with the WordPress community and what is available out there.  They don&#8217;t know how to find, buy, and install a theme from a reputable commercial theme business.</p>



<p>What they do is head over to the add-new theme page in their WordPress admin, and they are presented with the <a href=\"https://wordpress.org/themes/browse/featured/\">&#8220;Featured&#8221; themes list</a>.</p>



<div class=\"wp-block-image\"><img />Featured themes list in the WordPress admin.</div>



<p>Sometimes a user gets lucky.  Other times it is a crapshoot.</p>



<p>For several years now, the official WordPress theme directory has shown a random list of themes from the 7,000 or so themes available.</p>



<p>While themes in the directory undergo a strict code review, there is no quality control on design.  That is a good thing because it allows designers at any level to contribute to the platform.  Open source communities should always have an open contribution process, and themes are one area that many developers get started with WordPress.</p>



<p>However, the term &#8220;featured&#8221; implies that there is something particularly special about those themes.  They should be distinctive in some way.  They should be a cut above the rest.  That&#8217;s not what we have today, and it&#8217;s not what has been presented to users for the last half decade.</p>



<p>This is a huge missed opportunity.</p>



<p>Today, web hosts have started taking over this role.  Whether it is <a href=\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\">GoDaddy&#8217;s onboarding process</a> with their custom Go theme or WP Engine with the Genesis framework, hosts are doing the job that WordPress.org couldn&#8217;t manage to get together.</p>



<h2>How Featured Themes Became Random</h2>



<p>In the 2013-2014 era, the WordPress theme review team (TRT) was trying to find a way to get more people to contribute to the review process.  By that time, themes had become big business and more theme authors were submitting themes to the directory.  The team implemented a program that allowed the top reviewers each month an opportunity to pick the featured themes.</p>



<p>The program&#8217;s original intention was for reviewers to select a theme they liked during reviews.  <em>The best-laid plans…</em></p>



<p>The problem was that nearly all of the top reviewers were theme authors.  Their incentive for doing reviews was to get their themes featured.  Big theme businesses stood the most to gain.  They could put multiple reviewers to work who would knock out review after review.</p>



<p>It wasn&#8217;t a level playing field.  Even if it had been, the featured themes list was being taken over by business interests via a pay-to-play system.  Those with the most resources would always come out on top.</p>



<p>Theme companies featured on WordPress.org were already raking in cash at that point.  Zerif Lite, a theme in the popular list just two years later in 2016, <a href=\"https://wptavern.com/zerif-lite-returns-to-wordpress-org-after-5-month-suspension-and-63-decline-in-revenue\">reported north of $100 thousand per month</a> from upsells.  Even at one-tenth of that number, it is enough incentive for any businesses to play the system to their advantage.</p>



<p>In April 2014, the <a href=\"https://make.wordpress.org/themes/2014/04/18/theme-review-incentive-program/\">program was shut down</a> because reviewers were choosing their own themes and repeatedly featuring the same themes.  The featured list then began showcasing a new set of random themes every day.</p>



<p>Randomly-chosen featured themes levels the playing field for every theme author.  However, it doesn&#8217;t showcase the best that WordPress has to offer.</p>



<h2>A Curated List of Themes Coming Soon</h2>



<p>The TRT decided in their team meeting yesterday on a change in how featured themes are handled.  Denis Žoljom wrote in the <a href=\"https://make.wordpress.org/themes/2019/10/22/meeting-notes-for-tuesday-22nd-october-2019/\">meeting notes</a> that the team would try a curated list for a few months to see how the WordPress community responds.</p>



<p>The current plan is to hold a meeting every two or three weeks where people can recommend themes to be featured based on their design, code quality, and potentially other merits.  The team reps would pick from the recommendations.</p>



<p>The reps are still deciding how to best handle any foreseeable issues before the new program begins.  The team was divided over whether there should be a curated list and what the criteria might be for such a list.  The biggest concern is over the potential for abuse and conflicts of interest.  These and other problems will be something the reps will need to figure out.</p>



<p>The general consensus seems to be that featured themes would not have any upsells or other commercial aspects.  That could limit the pool of potential themes considerably because many theme authors have some sort of commercial interest in having their themes hosted in the official directory.</p>



<p>I welcome the change from seeing random themes every day.  I want to see the diamonds in the rough that get buried beneath big business and themes that dominate the landscape in the separate <a href=\"https://wordpress.org/themes/browse/popular/\">popular list</a>.  I want to see theme authors who are building unique themes front and center.</p>



<p>The big question is whether this change will help users find that perfect theme for their sites.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 23 Oct 2019 18:30:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:13;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"WordPress.org blog: WordPress 5.3 RC2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7425\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"https://wordpress.org/news/2019/10/wordpress-5-3-rc2/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3740:\"<p>The second release candidate for WordPress 5.3 is now available!</p>



<p>WordPress 5.3 is currently scheduled to be released on&nbsp;<strong><a href=\"https://make.wordpress.org/core/5-3/\">November 12 2019</a></strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, now is the time!</p>



<p>There are two ways to test the WordPress 5.3 release candidate:</p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC2.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>



<p>For details about what to expect in WordPress 5.3, please see the&nbsp;<a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">first release candidate post</a>.</p>



<p>Release Candidate 2 contains improvements to the new About page, and <a href=\"https://core.trac.wordpress.org/query?id=48381%2C48363%2C48022%2C48304%2C48379%2C48087%2C47699&milestone=5.3&group=component&col=id&col=summary&col=status&col=owner&col=type&col=priority&col=milestone&order=priority\">10 fixes</a> for the following bugs and regressions:</p>



<ul><li>Three bugs contained in RC1 within the block editor have been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48381\">48381</a>).</li><li>A bug has been fixed where links within comments did not get the correct <code>rel</code> attribute (see #<a href=\"https://core.trac.wordpress.org/ticket/48022\">48022</a>).</li><li>The <code>scaled-</code> string has been added to file names when images are downsized if determined &#8220;BIG&#8221; (see #<a href=\"https://core.trac.wordpress.org/ticket/48304\">48304</a>).</li><li>The buttons group layout has been fixed in IE11 (see #<a href=\"https://core.trac.wordpress.org/ticket/48087\">48087</a>).</li><li>A bug with <code>boolean</code> <code>false</code> meta values in the REST API has been fixed (see #<a href=\"https://core.trac.wordpress.org/ticket/48363\">48363</a>).</li><li>The error code encountered when the native PHP JSON extension is missing has been adjusted to be unique (see #<a href=\"https://core.trac.wordpress.org/ticket/47699\">47699</a>).</li><li>When uploading files, HTTP error code support has been expanded to include all 5xx errors (see #<a href=\"https://core.trac.wordpress.org/ticket/48379\">48379</a>).</li></ul>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;<a href=\"https://make.wordpress.org/core/2019/10/17/wordpress-5-3-field-guide/\">WordPress 5.3 Field Guide</a>&nbsp;has also been published, which details the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a></p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 20:08:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:14;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:69:\"WPTavern: Gutenberg 6.7 Introduces Storybook and Gradient Backgrounds\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95081\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://wptavern.com/gutenberg-6-7-introduces-storybook-and-gradient-backgrounds\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4533:\"<p>The Gutenberg team released version 6.7 of the Gutenberg plugin last week.  The <a href=\"https://make.wordpress.org/core/2019/10/16/whats-new-in-gutenberg-16-october/\">announcement post</a> listed a little over three dozen bug fixes and several enhancements to existing features.  The most notable features included in the update are Storybook support and gradient backgrounds for the button block.</p>



<p>All of the bug fixes included in Gutenberg 6.7 were ported to the first <a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\">WordPress 5.3 release candidate</a>.  WordPress 5.3 is expected to be released on or around November 12.</p>



<p>This release also includes updates for experimental features, which can be enabled via the &#8220;Experiments&#8221; screen under the &#8220;Gutenberg&#8221; admin menu. The experimental nav menu block received alignment fixes and now only shows nested menu items when the parent item is selected.</p>



<h2>First Implementation of Gradient Backgrounds</h2>



<div class=\"wp-block-image\"><img />Adding a gradient to a button block.</div>



<p>Version 6.7 introduces a new gradient background feature for the button block.  The long-term plan is to make gradient backgrounds available to other blocks.  The button block is a good testbed for the feature before moving forward with other blocks.</p>



<p>The problem with introducing gradients is that the team didn&#8217;t go far enough with theme support early in the process.  This is par for the course with Gutenberg development.  New features are implemented without knowing exactly how themes fit into the picture.  It is only after the feature is implemented that theme support is patched on.  Often, this leads to theme authors scrambling to keep up.  It would be better for the feature and the theme support to be developed in tandem with feedback from more theme authors in the process.</p>



<p>At this stage, gradients are useless in most theme designs, which have custom color schemes that are unlikely to match Gutenberg&#8217;s gradient colors.  At best, the gradients look OK with stock WordPress.  At worst, they&#8217;re garish and an assault on the eyeballs.  Starting with theme support would have at least offered theme authors a chance to make this a better experience for users.</p>



<p>There is an open <a href=\"https://github.com/WordPress/gutenberg/pull/17841\">pull request on GitHub</a> to introduce theme support.  Theme authors may be able to add custom gradients by version 6.8.</p>



<p>In the future, this should be a powerful feature that allows users via custom theme gradients to create some unique designs for their posts and pages.  For now, it is only in the &#8220;fun experiment&#8221; stage.</p>



<h2>Storybook for Developers</h2>



<div class=\"wp-block-image\"><img />Gutenberg button component stories.</div>



<p>The Gutenberg development team introduced <a href=\"https://storybook.js.org\">Storybook</a> support for Gutenberg.  Developers can test Storybook support via the <a href=\"https://wordpress.github.io/gutenberg/design-system/components/\">Gutenberg Storybook page</a>.</p>



<p>Storybook is a development and testing environment for user interfaces.  It allows developers to create, test, and showcase components in an isolated environment apart from the primary platform or application.  This essentially allows developers to build components without the dependencies of the platform before porting them over.  A story within the Storybook system represents the visual state of a component.  Storybooks are collections of stories.</p>



<p>The Storybook support uses the <a href=\"https://github.com/storybookjs/storybook/tree/next/addons/knobs\">Knobs add-on</a>, which allows developers to edit props dynamically via the Storybook UI.  The <a href=\"https://wordpress.github.io/gutenberg/design-system/components/?path=/story/dashicon--default\">dashicons component</a> is a good place to test this out.  Currently, it accepts values for the icon name, color, and size.</p>



<p>Marcus Kazmierczak, a principal engineer working on special projects at Automattic, wrote a tutorial and shared a YouTube video on how to <a href=\"https://mkaz.blog/code/coding-a-storybook-story/\">create a story for Gutenberg components</a>.  </p>



<div class=\"wp-block-embed__wrapper\">

</div>



<p>For developers wanting to be involved, there are many <a href=\"https://github.com/WordPress/gutenberg/issues/17973\">components that still need a story</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 22 Oct 2019 17:17:23 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:15;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: Coming in WordPress 5.3: What is the PHP Spread Operator?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95062\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/coming-in-wordpress-5-3-what-is-the-php-spread-operator\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6962:\"<p>On October 9, Juliette Reinders Folmer announced on the core WordPress blog that <a href=\"https://make.wordpress.org/core/2019/10/09/wp-5-3-introducing-the-spread-operator/\">WordPress 5.3 will use the spread operator</a>.  The spread operator was one of the <a href=\"https://www.php.net/manual/en/migration56.new-features.php\">new features</a> made available in PHP 5.6, a version released in 2014.</p>



<p>WordPress <a href=\"https://wptavern.com/wordpress-ends-support-for-php-5-2-5-5-bumps-minimum-required-php-version-to-5-6\">abandoned PHP 5.2 &#8211; 5.5</a> with the release of WordPress 5.2.  This means the core team can start taking advantage of relatively new features, or at least 5-year-old features.  For plugin and theme developers who maintain the same minimum version support as WordPress, they can also start exploring this feature.</p>



<p>PHP 5.6 introduced two new methods of using the spread operator:</p>



<ul><li>A Parameter in variadic functions.</li><li>Function argument unpacking of arrays and traversable objects.</li></ul>



<p>This feature shouldn&#8217;t be confused with unpacking inside of arrays, which is only <a href=\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\">available in PHP 7.4</a>.</p>



<p>The change in WordPress 5.3 is not expected to affect themes and plugins except in the rare case that a developer is overloading the <code>wpdb::prepare()</code> method.  Developers should <a href=\"https://make.wordpress.org/core/2019/10/09/wp-5-3-introducing-the-spread-operator/\">read the announcement post</a> to dive into what code has changed in core WordPress.</p>



<p>Developers should check their plugins and themes with debugging enabled in a test environment to check for any notices.  There may be cases where the function signature doesn&#8217;t match.</p>



<p>The spread operator is a tool, and like any tool, it should be used when it makes sense.  Because it is a language construct, it does offer speed improvements over traditional methods of using a PHP function.</p>



<p>The remainder of this post will dive into the using the spread operator to help teach WordPress developers how it works.</p>



<h2>Creating a Variadic Function with the Spread Operator</h2>



<p>Variadic functions are PHP functions that accept a variable number of arguments passed in.  They have existed for years.  However, they can be confusing without solid inline documentation from the developer who wrote the code.  </p>



<p>In the past, developers would need to use the <code>func_get_args()</code>, <code>func_get_arg()</code>, or <code>func_num_args()</code> functions to work with variadic functions.  In PHP 5.6, developers can use a parameter such as <code>...$var_name</code> to represent a variable number of parameters.</p>



<p>Take a look at the following multiplication function. It will accept one, two, three, or even more numbers and multiply each.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
function tavern_multiply( ...$numbers ) {

    $total = 1;

    foreach ( $numbers as $number ) {
        $total = $total * intval( $number );
    }

    return $total;
}
</pre>


<p>If we use that function as shown below, it will display <code>1024</code>:</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
echo tavern_multiply( 2, 4, 8, 16 );
</pre>


<p>This is simple to do with the spread operator.</p>



<h2>Unpacking Arrays as Function Arguments</h2>



<p>PHP 5.6 allows developers to unpack arrays and traversable objects as function arguments.  To explain how this works, look at the following multiplication function for multiplying three numbers together.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
function tavern_multiply_three( $x, $y, $z ) {
        return $x * $y * $z;
}
</pre>


<p>Generally, you would need to manually pass the <code>$x</code>, <code>$y</code>, and <code>$z</code> parameters directly.  However, there are cases in real-world projects where the data (numbers in this case) would already exist within an array such as:</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
$numbers = [ 3, 6, 9 ];
</pre>


<p>Prior to PHP 5.6, you would need to split that array and pass each value to the function as shown in the following snippet.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
echo tavern_multiply_three( $numbers[0], $numbers[1], $numbers[2] );
</pre>


<p>With PHP 5.6, you can simply pass in <code>...$numbers</code> like so:</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
echo tavern_multiply_three( ...$numbers );
</pre>


<p>Both methods work and will output <code>162</code>.  However, the second method is easier to read and is less prone to typos because it uses fewer characters.</p>



<h2>Comparing Code Changes in WordPress</h2>



<p>For a more practical example, let&#8217;s compare a real-world code change in WordPress and how using the spread operator improves the code over other methods.  We can do this by looking at the core <code>current_user_can()</code> function.</p>



<p>First, see how the code is written in WordPress 5.2 and earlier. </p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
function current_user_can( $capability ) {
    $current_user = wp_get_current_user();

    if ( empty( $current_user ) ) {
        return false;
    }

    $args = array_slice( func_get_args(), 1 );
    $args = array_merge( array( $capability ), $args );

    return call_user_func_array( array( $current_user, \'has_cap\' ), $args );
}
</pre>


<p>Without looking at the full function, most developers would assume that <code>$capability</code> is the only accepted parameter for this function.  However, the function accepts a variable number of parameters.  Previously, WordPress had to use <code>func_get_args()</code> to get all the parameters, slice the array, and merge everything back together.</p>



<p>It is inelegant coding, but it got the job done for old versions of PHP.</p>



<p>Now compare what the same function looks like in WordPress 5.3.  First, you can see the <code>...$args</code> parameter clearly in the function statement.  You can also see there is no need for the clever coding to pass along a variable number of arguments.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
function current_user_can( $capability, ...$args ) {
    $current_user = wp_get_current_user();

    if ( empty( $current_user ) ) {
        return false;
    }

    return $current_user-&gt;has_cap( $capability, ...$args );
}
</pre>


<p>The change in WordPress 5.3 is a massive improvement in readability in comparison to earlier versions.  It is nice to see these types of improvements to the core code.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 21 Oct 2019 16:43:07 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:16;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Product Reviews in the WordPress Ecosystem: Honesty and Genuine Experiences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94992\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:95:\"https://wptavern.com/product-reviews-in-the-wordpress-ecosystem-honesty-and-genuine-experiences\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8398:\"<p><em>I don&#8217;t write fluff pieces. I call &#8217;em like I see &#8217;em. If your project is a dumpster fire, I&#8217;m going to say it&#8217;s a dumpster fire.</em></p>



<p>Whenever someone comes to me in hopes that I review their product, I give them some form of the preceding paragraph.  It doesn&#8217;t matter if it is a plugin, theme, web host, or some other product.  What matters is that I write my review with honesty and offer my genuine opinion about the thing they built.</p>



<p>I rarely read most product reviews in the WordPress community anymore.  Far too often the reviewers are not offering their genuine experience with a product.  You get something like &#8220;XYZ is a multi-purpose theme that is built for…yadda, yadda, yadda…&#8221;  <em>Yawn</em>.  It reads as if publishers are trying to sell a product.  If you dig deep enough, you realize that is what many are doing (<em>hello, affiliate links</em>).</p>



<p>I also have it on good authority (I&#8217;ve seen some of the email exchanges) that a lot of money exchanges hands behinds the scenes for reviews.  Most of the time, publishers are not writing a review of the product.  They are selling you their dreams of a continued working relationship with the product maker.</p>



<p>There&#8217;s nothing wrong with affiliate links if a publisher loves a product.  There&#8217;s no issue with paid reviews if such reviews are honest experiences with the product.  There&#8217;s also no problem with writing a love letter to your favorite plugin and theme with no financial incentive.</p>



<p>However, what I generally see are shallow reviews at best.  Many, dare I say most, reviews are not genuine.  They are certainly not real journalism.</p>



<p>The best place to find genuine reviews are from the user ratings on WordPress.org, assuming the plugin or theme is available there.  Users tend to not hold back, particularly if their review is negative.</p>



<p>It is tough as an artist (yes, I consider all programmers artists).  I&#8217;ve been on the receiving end of negative reviews of things I&#8217;ve built.  You learn to grow thick skin after a decade of putting your art out into the world.  </p>



<p>When I was younger, I tended to be a bit hot-headed whenever I got a bad review for something I had built.  After pouring my heart and soul into a project, it cut deep to read a negative review.  I wasn&#8217;t always the most gracious receiver of such reviews.  There are responses I wish I could take back.  Looking at those times now, I wish I would have been more open to hearing what the reviewer was saying.  Even if I disagreed with every word, it did not mean that the person wasn&#8217;t providing me something of value with their review.  </p>



<p>With age and I hope a little more wisdom, I usually give myself time to think about what someone is saying before I respond.  I allow my thoughts time to develop and mature.  Often, it turns out, critical reviews are far more helpful in making better art than all the five-star ratings in the world.</p>



<p>When I took the writing position at WP Tavern, I wanted to bring a review format to the website that is missing within our community.  I wanted to do reviews based on my experience as both a user and a developer.  I admit that I was not prepared for a negative reaction to what was in part a negative review.  As always, I gave myself time to read and think over what some commenters were saying.  This article is my response.</p>



<h2>Reviews Are About Personal Experience</h2>



<p>One of the things I learned early on as a writer is to not second guess myself, especially when writing an opinion piece.  It is not good for one&#8217;s mental health.</p>



<p>An opinion piece is about the moment.  It is raw.  It is passionate.</p>



<p>Writers&#8217; opinions may change over time.  They are human and have the freedom to change their minds later.  However, an opinion-based story should reflect that single moment in time and what the author&#8217;s feelings are at that moment.</p>



<p>There&#8217;s a common (and wholly incorrect) notion that journalism should be nothing more than facts, that subjectivity is not allowed.  Throughout the several hundred years that some form of journalism has existed, there has never existed a point where the whole of the field was objective.  Even in the early days of U.S. journalism, my country&#8217;s founders published articles in newspapers to sway public opinion on ratifying the U.S. Constitution.  </p>



<p>Reporting, which is one form of journalism, does not represent the whole.  It is the most objective form of journalism in which the reporter simply tells the news to readers.  We certainly do plenty of that at the Tavern.  However, other forms like editorials, features, and reviews are as important.  These forms take a different approach.</p>



<p>Reviews are the unwieldy beasts of journalism.  They are hard to tame.  They&#8217;re not always pretty.  However, they should always be true to their nature.  They can bring out angry hoards of fanboys down on the critic (ever read the comments of a critical review of an Apple product?).</p>



<p>Honest reviews are about personal experience.  If a film critic dislikes the latest movie in the Marvel Cinematic Universe, it is that critic&#8217;s duty to write about their experience watching it.  The reviewer has an obligation to not huddle in fear of Iron Man fanatics who will inevitably send <em>ad hominem</em> attacks his way.  Holding back one&#8217;s opinion within a review is the ultimate sin of a critic.</p>



<p>Like with any products or forms of art, WordPress plugins and themes are not immune to this same criticism.  Such criticism is even more important when the software costs money and potential buyers may be looking for genuine reviews.</p>



<p>Disagreement with a review is OK.  Disagreements are more interesting than everyone nodding their heads in unison.  What a boring world it would be if we were all in agreement.</p>



<p>However, I did want to address comments on my previous review about it being <em>unfair</em>, specifically the unfairness of my personal experience.  It&#8217;s that personal experience that makes a review genuine.  Not everyone&#8217;s experience will be the same.  One person&#8217;s one-star rating does not discount another&#8217;s five stars.  They are equally valid because they represent different experiences.</p>



<h2>Developers Are Users Too</h2>



<p>There&#8217;s a common idea in the WordPress community that developers are not users, that our experiences don&#8217;t count because our knowledge and skillsets are more advanced than the average.  At first glance, the argument makes some sense.  However, after giving it some serious thought, I reject the notion.</p>



<p><em>Martin Scorsese can&#8217;t criticize films because he makes films.  There&#8217;s no way he can feel what the average person does at the cinema.</em></p>



<p><em>Beyoncé can&#8217;t judge a music competition because she&#8217;s a singer.  She&#8217;s not listening with the ears of a normal human.</em></p>



<p>Wait; that&#8217;s not right, is it?</p>



<p>Why is it that developers&#8217; opinions are so easily discounted when they are critical of user experience?  I use WordPress, different themes, and various plugins every day.  I use those that make me happy or serve essential functions.  I don&#8217;t necessarily pick plugins out because I like their code.  I use them because I too am a user in every way that a non-developer is a user.  Having the ability to articulate the problems from a different viewpoint doesn&#8217;t change that.</p>



<p>In many ways, developers can provide more useful software reviews than &#8220;average&#8221; users because we have some past experience solving the same problems.</p>



<h2>Offering a Genuine Review</h2>



<p>One thing you will always get from me is honesty.  When I review a WordPress-related product, you will always read about my personal experience.</p>



<p>I was fully prepared to say that <em>the gloves are coming off</em>, but the gloves have always been off.  I will never hold back criticism.  I&#8217;m always ready to pile on the praise too.</p>



<p>But, I won&#8217;t lie to you.</p>



<p>Who&#8217;s ready to have their theme or plugin reviewed next?</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 18 Oct 2019 16:42:37 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:17;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: Chilean News Publication El Soberano First to Launch on Newspack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95023\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/chilean-news-publication-el-soberano-first-to-launch-on-newspack\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9309:\"<div class=\"wp-block-image\"><img />El Soberano homepage on the Newspack platform.</div>



<p>Nine months after the <a href=\"https://en.blog.wordpress.com/2019/01/14/newspack-by-wordpress-com/\">announcement of Newspack</a> by WordPress.com, the Chilean news site <a href=\"https://elsoberano.org\">El Soberano</a> became the first publication to launch on the new platform.  On October 16, the small news team <a href=\"https://newspack.blog/2019/10/17/first-publisher-relaunches-using-newspack/\">relaunched with a fresh design</a> powered by the Newspack theme and its newsroom-focused plugins.</p>



<p>Newspack is a project of Automattic, the parent company of WordPress.com.  Its goal is to work with leaders in the news industry to create a platform that brings WordPress to more newsrooms.  This year, the team behind Newspack has worked with several publications to address obstacles in journalism on the web.</p>



<p>The Newspack team was primarily advised by <a href=\"https://newspack.blog/2019/04/03/newspack-chooses-12-publishers-new-platform/\">12 publications during their first phase</a>.  Most of those publications are based in the U.S., but a few, such as El Soberano, are from other countries.  The Daily Maverick from Johannesburg, South Africa, and Reveal from the Center for Investigative Reporting from California came on as advisers from the outset.  However, they may also launch on Newspack sometime in the coming months.</p>



<p>&#8220;We had 10 sites that we&#8217;re going to launch as soon as possible,&#8221; said Steve Beatty, head of Newspack Communications.  &#8220;Of the 10, one dropped out as they changed publishers. So that leaves El Soberano and eight others, and those eight should launch in the coming weeks &#8212; certainly by year&#8217;s end. We&#8217;ve got the next few queued up.&#8221;</p>



<p>During the initial phase, Beatty said the team was looking for small to medium-sized newsrooms that were covering local news or niche publications.  The development hurdles would likely have been much higher starting with large organizations.</p>



<p>&#8220;We wanted newsroom leaders who were willing to experiment and try something bold and different, knowing that there was a very real chance of growing pains,&#8221; said Beatty. &#8220;The partners in our pilot newsrooms have been incredibly helpful, patient, understanding and cheerful. I&#8217;m not sure we screened for all that in the application process, but it&#8217;s worked out quite well.&#8221;</p>



<h2>El Soberano is a Fitting Launch Partner</h2>



<div class=\"wp-block-image\"><img />Content Director Roberto Bruna (left) and Executive Director Ana Arriagada (right).</div>



<p>WordPress.com claims its &#8220;mission is to democratize publishing one website at a time.&#8221;  El Soberano, based in Santiago, is a smaller news publication with three people on the current full-time staff.  Their goal is to connect citizens with organizations that will help defend their rights.  The publication covers social movements within the country and to be an outlet for independent journalism.</p>



<p>&#8220;In our news outlet we believe that only the organized people are sovereign of their destiny,&#8221; said Roberto Bruna, Content Director at El Soberano.  &#8220;Our name &#8216;El Soberano&#8217; is all about <em>el pueblo soberano</em>, the &#8216;sovereign people&#8217; in English.  For us, individual rights and freedoms are crucial. Then, things like a secular state and civil rights, such as the legalization of cannabis, homoparental adoption or the right to a safe abortion, are things we report about.&#8221;</p>



<p>Bruna further defined the publication&#8217;s goals.</p>



<blockquote class=\"wp-block-quote\"><p>In El Soberano we defend an environment free of contamination; equal opportunities for women, ending the precariousness of their lives; a real pension system for citizens; sexual dissidence, to guarantee their equal rights and inclusion; a new development model based on innovation and knowledge; a secular state and freedom with critical thinking; urban planning and good housing solutions; consumers and a healthy and sustainable market and, finally, mechanisms that aim to create truly democratic constitutions for our countries.</p></blockquote>



<p>El Soberano does not give space for other interest groups because such groups have the means to make their opinions publicly available.  Instead, its mission is to report on social issues directly from citizens.  &#8220;In them lies the power of decision regarding the direction that our democracies must take,&#8221; said Bruna.</p>



<h2>Launching El Soberano with Newspack</h2>



<p>As one of the first publications to launch with a new system, it&#8217;s tough to be a pioneer when a lot is riding on success.  Ana Arriagada, Executive Director of El Soberano, was ready to take the news website to the next level after three years.</p>



<p>&#8220;When we decided to take the next step and transform El Soberano into a sustainable environment, it was a great achievement for us to be chosen for the Newspack pilot with other eleven news outlets,&#8221; said Arriagada.  &#8220;We were the only news site in Spanish and from Latin America, so we felt very proud.&#8221;</p>



<p>Arriagada has worked with the Newspack development team over the past six months to help guide them on what tools are needed to run a newsroom.</p>



<p>The decision to apply for the Newspack pilot program was in part due to avoiding pitfalls they had seen with other digital media websites.  &#8220;Friends with their websites hijacked by a former &#8216;friend&#8217; developer when they try to move to a new platform, custom developments that only the author understood, huge invoices for maintenance hours, or even spending months working on a design that was not possible at the end,&#8221; said Arriagada.  They wanted to avoid other problems such as taking too long to apply changes to the homepage in the fast-paced world of journalism where new stories should be front and center.</p>



<p>Arriagada said such problems were resolved with Newspack and their team can concentrate on editorial and revenue generation.</p>



<p>El Soberano originally launched on WordPress.com in January 2016.  Arriagada said it was nearly impossible to find a good selection of templates that were built specifically to solve the problems of the news industry.  &#8220;In Newspack we have the chance to combine different content blocks adapted to our needs, showing content in flexible ways,&#8221; said Arriagada.  &#8220;Now we have tools designed to generate revenue with the experience and best practices from world-class digital media.&#8221;</p>



<p>Arriagada called working with the Newspack team a &#8220;journey of discovery.&#8221;  In the beginning, it wasn&#8217;t clear how the team would use the information they were collecting from El Soberano and other publications or how the team would resolve issues based on the information provided.  Eventually, they received design proposals, which allowed them to get a feel for what they wanted and to further provide feedback to the Newspack team.</p>



<p>&#8220;Later, we received the access to the platform where we were able to play around, putting things in order, creating and implementing what we were looking for,&#8221; said Arriagada. &#8220;More feedback, corrections, hopes, and dreams.&#8221;</p>



<p>She said that working with the <a href=\"https://github.com/Automattic/newspack-blocks\">Content Blocks</a> system allowed her team to better create and assemble their homepage and articles.  &#8220;But maybe the most interesting thing for us,&#8221; said Arriagada, &#8220;was that Newspack team and other news sites from the pilot program proposed things that we don&#8217;t consider for our site, such as an ultra-flexible donation system or workflow systems. We see a lot of power in that collaborative way to develop a product.&#8221;</p>



<h2>The Future of Newspack</h2>



<p>Newspack launched <a href=\"https://wptavern.com/newspack-opens-up-application-process-for-phase-two\">phase two of its program</a> in July, which sought to bring 50 more newsrooms to the platform.  The new publications should be announced shortly.</p>



<p>&#8220;Both the initial pilot group and this group of 50 (or so) are part of the one-year development period, which ends on February 29,&#8221; said Beatty.  &#8220;We&#8217;re still determining what will happen on March 1. We&#8217;ll have a better sense of that when we start working with the 50 and see how quickly we can turn them around.&#8221;</p>



<p>Like much of Automattic&#8217;s work, it is open source and freely available to the public.  Newspack is a collection of packages to create a platform for newsrooms.  Of note are the following repositories.</p>



<ul><li><a href=\"https://github.com/Automattic/newspack-theme\">Newspack Theme</a></li><li><a href=\"https://github.com/Automattic/newspack-plugin\">Newspack Plugin</a></li><li><a href=\"https://github.com/Automattic/newspack-blocks\">Newspack Blocks</a></li></ul>



<p>Developers can find all eight plugins from the <a href=\"https://github.com/Automattic?q=newspack\">Automattic GitHub page</a> if they want to give them a spin.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 17 Oct 2019 17:56:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:18;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"WordPress.org blog: Empowering Generations of Digital Natives\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7413\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://wordpress.org/news/2019/10/empowering-generations-of-digital-natives/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8892:\"<p>Technology is changing faster each year. Digital literacy can vary between ages but there are lots of ways different generations can work together and empower each as digital citizens.</p>



<p>No matter whether you’re a parent or caregiver, teacher or mentor, it’s hard to know the best way to teach younger generations the skills needed to be an excellent digital citizen. If you’re not confident about your own tech skills, you may wonder how you can help younger generations become savvy digital citizens. But using technology responsibly is about more than just technical skills. By collaborating across generations, you can also strengthen all your family members’ skills, and offer a shared understanding of what the internet can provide and how to use it to help your neighborhoods and wider society.&nbsp;<br /></p>



<h2>Taking Gen Z Beyond Digital Savvy</h2>



<h3>Open up the dialogue</h3>



<p>Even if you’re not fully confident in your own tech skills, you can help develop digital citizenship skills in others. If you feel comfortable during everyday conversation, you could describe a tech situation you have come across and ask family members if they have ever experienced something similar. You can give them a chance to share how they handled it or how it made them feel. This can help encourage them to think critically and to react with empathy. And being asked for advice can make them feel appreciated and empowered. But opening up the conversation can also be as simple as asking if they’ve seen anything online lately that they found interesting or wanted to talk about.</p>



<h3>Share access to free and affordable training</h3>



<p>Open source content management systems have made online publishing accessible to a more diverse group of people. Dozens of content platforms offer hands-on training at no or low cost. <a href=\"https://wordpress.tv/\">WordPress.tv</a>, <a href=\"https://www.linkedin.com/learning/topics/wordpress\">LinkedIn Learning</a>, and others have low-cost video libraries with thousands of recorded talks and workshops and the WordPress Training team have excellent downloadable lesson plans and materials. These platforms not only feature content that helps develop tech and content creation skills but also content around ethics, diversity and community building.&nbsp;&nbsp;</p>



<h3>Find a sense of community and belonging</h3>



<p>One of the disadvantages of increased digitalization is that <a href=\"https://www.theatlantic.com/magazine/archive/2017/09/has-the-smartphone-destroyed-a-generation/534198/\">younger generations and us all may spend less time hanging out in-person.</a> Digital time spent with others is no replacement for in-person interactions. The awareness and mutual understanding which comes from back and forth interaction is needed for positive interpersonal skills. This is hard to replace in digital communities and those skills can only be learned with lots of hands-on practice.&nbsp;</p>



<h3>Learn the many benefits of volunteering&nbsp;</h3>



<p>There are WordPress events across the world that provide a great place to learn new skills to share with your families and friends. Some work with schools and colleges to offer special events which are open to all ages. There are also plenty of small ways to volunteer with the WordPress project that can be done at home to practice new skills.</p>



<p>In addition to attending events where you can learn skills and hang out with others with similar interests, the WordPress ecosystem offers countless opportunities to be actively involved. Professionals, hobbyists, and learners all make a difference by contributing to the ongoing creation of the WordPress platform. Together these people, who are known as contributors, form the <a href=\"https://make.wordpress.org/\">WordPress open source community.</a>&nbsp;</p>



<h4>WordPress is created by volunteer contributors</h4>



<p>Not only are these contributors creating an amazingly flexible platform for all to use, it is an environment where you can continue to improve your skills, both technical and interpersonal. Open-source software projects can introduce you to people you would otherwise not get the chance to meet, locally and internationally. If you have a zest for learning, and for finding others to connect with, WordPress has many ways to meet contributors in person!</p>



<h4>WordPress events are organized by volunteers</h4>



<p>WordPress community events are volunteer-run. This can be a great way to give back to the project and practice all sorts of skills. Talk to your local event about how you could get involved and if you would like to bring older teenagers and young adults with you. You will not need any pre-existing tech skills to attend these events but they are a great way to discover areas you might want to learn more about.&nbsp;</p>



<h4>Contributor days offer a great opportunity to get involved</h4>



<p>These events are specially designed to help you get involved in building the open-source WordPress platform. You can collaborate with other members of its community and find areas that are right for you to use and grow your skills. All of the tasks you will discover at an event can be continued at home and some are easy to get other family members involved in learning and adding in ideas.&nbsp;</p>



<p>Contributors come from all sorts of backgrounds and locations, some may live near you and others thousands of miles away. Working alongside lots of different cultures and countries can open up new ideas for young people letting them learn new ways of doing things and discover different perspectives. All those different perspectives can cause misunderstandings. But being involved in a global learning community is a great way to practice communicating across cultural boundaries.&nbsp;</p>



<h4>Getting involved can be rewarding in many (unexpected) ways</h4>



<p>The most rewarding part of actively taking part in WordPress events is making budding friendships. New connections often turn into long-lasting friendships that are likely to continue for years to come, both online and offline. With a global community, these friendships can potentially lead to lots of international adventures too!</p>



<blockquote class=\"twitter-tweet\"><p lang=\"en\" dir=\"ltr\">Getting ready for the <a href=\"https://twitter.com/WordCampBTN?ref_src=twsrc%5Etfw\">@WordCampBTN</a>. I&#8217;ve got my 5kg backpack and one-way ticket to London in a few days <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f929.png\" alt=\"🤩\" class=\"wp-smiley\" /> What shall I do after? <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f642.png\" alt=\"🙂\" class=\"wp-smiley\" /> <a href=\"https://t.co/cdQqeyNWif\">pic.twitter.com/cdQqeyNWif</a></p>— Sabrina Zeidan going to #WCKyiv (@sabrina_zeidan) <a href=\"https://twitter.com/sabrina_zeidan/status/1160265428473712640?ref_src=twsrc%5Etfw\">August 10, 2019</a></blockquote>



<h3>Make our digital world safer and more inclusive</h3>



<p>Befriending people from a wide variety of cultures and backgrounds can be an enriching experience in itself. It can also help you make us make more informed decisions. The more we interact with a diverse range of people, the more empathic we become. Some of the most valuable learning that can be offered to Gen Z (and probably to all of us at times) is that what we come across in fast-moving digital communities isn’t always the entire view.&nbsp;</p>



<h2>All things considered….</h2>



<p>Anyone who is a digital native may not need encouragement to obtain tech skills. But they may not be aware that digital communities are still communities and <a href=\"https://wordpress.org/news/2019/10/responsible-participation-in-online-communities/\">we need to use the same sorts of people skills for both offline and online locations</a>. Opening up conversations about situations they may experience online that may require them to (re)act responsibly, can encourage them to think critically and act with empathy. Compared to previous generations, digital natives spend substantially more time by themselves while using devices, so encouraging them to join real-life communities, such as WordPress, could be the first step to learning what it means to be a good digital citizen!&nbsp; </p>



<h2>Contributors</h2>



<p><a href=\"https://profiles.wordpress.org/webcommsat/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>webcommsat</a>, <a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a> &amp; <a href=\"https://profiles.wordpress.org/annemariedh/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>annemariedh</a></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Oct 2019 20:03:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:19;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: Mark Davies Joins Automattic as Chief Financial Officer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=95009\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/mark-davies-joins-automattic-as-chief-financial-officer\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4364:\"<p>Automattic, the company behind WordPress.com, WooCommerce, and various other products, announced earlier today that Mark Davies has joined the team as its Chief Financial Officer (CFO).  This news comes fresh off the heels of Automattic&#8217;s <a href=\"https://wptavern.com/automattic-acquires-tumblr-plans-to-rebuild-the-backend-powered-by-wordpress\">acquisition of Tumblr</a> in August and a <a href=\"https://wptavern.com/automattic-raises-300m-in-series-d-investment-round-valuation-jumps-to-3-billion\">$300 million Series D investment</a> from Salesforce Ventures in September.  The investment round gave the company a $3 billion valuation after the funding.</p>



<p>Davies graduated from Western Washington University with a bachelor&#8217;s degree in accounting and earned his MBA in finance at Arizona State University.  He has since worked for large companies in key roles.  Prior to taking the position with Automattic, Davies served as the CFO at Vivint, a North American smart home technology company.</p>



<p>Vivint was founded in 1999 and claims over $1 billion in annual revenue.  In 2012, The Blackstone Group <a href=\"https://www.reuters.com/article/us-blackstone-acquisition/blackstone-buys-security-firm-vivint-for-over-2-billion-idUSBRE88I0LF20120919\">purchased the company for over $2 billion</a>.  Davies came on board in 2013 and would have played a large role in growing the company&#8217;s annual revenue.</p>



<p>Vivint announced on October 15 that Davies <a href=\"http://investors.vivint.com/press-releases/press-release-details/2019/Vivint-Smart-Home-Announces-CFO-Transition/default.aspx\">was leaving the company</a>.  &#8220;Mark has created a talented and experienced finance team with a solid track record of growth and financial discipline,&#8221; said Todd Pedersen, co-founder and CEO of Vivint Smart Home. &#8220;We thank him for his six years with the company and wish him the best in his next role.&#8221;</p>



<p>Before joining Vivint, Davies served as president of global business services with Alcoa.  He was also a member of the Alcoa Executive Council.  Prior to that position, he spent 12 years at Dell Inc. in various roles.  His most recent position was as the managing vice president of strategic programs.  He earlier served as the CFO of Dell&#8217;s Global Consumer Group, which is a $14 billion enterprise with operations across the world.  He held positions with Applied Materials and HP earlier in his career.</p>



<p>Davies should play a key role in helping Automattic grow beyond its current levels of revenue.  He has the credentials and experience to do so.</p>



<p>&#8220;Automattic is creating the operating system for the web, from websites to ecommerce to social networks,&#8221; said Matt Mullenweg, founder and CEO of Automattic and co-founder of WordPress. &#8220;As we zoom past 1,100 employees in over 70 countries, we wanted a financial leader with experience taking businesses from hundreds of millions in revenue to billions and even tens of billions, as Mark has. I&#8217;m excited about working alongside such an experienced leader day-to-day to build one of the defining technology companies of this era.&#8221;</p>



<p>Mullenweg if often cited saying that he would like to see WordPress have an 85% share of the web.  Currently, WordPress runs over 34% of the top 10 million websites.  Automattic would certainly play a role in pushing the platform toward that lofty goal.  He and David Heinemeier Hansson <a href=\"https://wptavern.com/matt-mullenweg-and-david-heinemeier-hansson-discuss-wordpress-market-share-monopolies-and-power-in-open-source-communities\">discussed the dynamics of power</a> in open source communities and whether such a goal was healthy for the web earlier this month.  In the discussion, Mullenweg clarified that 85% was a &#8220;trailing indicator&#8221; rather than a goal.</p>



<p>Stuart West served as Automattic&#8217;s CFO for the last seven years.  He will continue working within the company, but there is no word on what that new role is. &#8220;I want to thank Stu for his significant contributions to Automattic during his seven and a half years as CFO,&#8221; said Mullenweg. &#8220;He built a talented finance team during a period of 10x growth in staff and revenue and played an essential role in the success of our company.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Oct 2019 15:49:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:20;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"Matt: New Automattic CFO\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50302\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"https://ma.tt/2019/10/new-automattic-cfo/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:975:\"<p>As <a href=\"https://venturebeat.com/2019/10/16/automattic-nabs-vivint-cfo-to-chase-steep-revenue-growth/\">Venturebeat has picked up</a>, Mark Davies will be leaving <a href=\"https://www.vivint.com/\">Vivint</a> and joining <a href=\"https://automattic.com/\">the merry band</a>. <span>Automattic is creating the operating system for the web, from <a href=\"https://wordpress.com/\">websites</a> to <a href=\"https://woocommerce.com/\">ecommerce</a> to <a href=\"https://tumblr.com/\">social networks</a>. As we zoom past 1,100 employees in over 70 countries, we wanted a financial leader with experience taking businesses from hundreds of millions in revenue to billions (Vivint) and even tens of billions (Alcoa and Dell), <a href=\"https://www.linkedin.com/in/mark-davies-14937a3/\">as Mark has</a>. I’m excited about working alongside such an experienced leader day-to-day to build what I hope will become one of the defining technology companies of the open web era.</span></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 16 Oct 2019 15:28:13 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:21;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WordPress.org blog: WordPress 5.3 Release Candidate\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7397\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wordpress.org/news/2019/10/wordpress-5-3-release-candidate/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3142:\"<p>The first release candidate for WordPress 5.3 is now available!</p>



<p>This is an important milestone as we progress toward the WordPress 5.3 release date. “Release Candidate” means that the new version is ready for release, but with millions of users and thousands of plugins and themes, it’s possible something was missed. WordPress 5.3 is currently scheduled to be released&nbsp;on&nbsp;<strong>November 12, 2019</strong>, but we need&nbsp;<em>your</em>&nbsp;help to get there—if you haven’t tried 5.3 yet, <strong>now is the time</strong>!</p>



<p>There are two ways to test the WordPress 5.3 release candidate: </p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-RC1.zip\">download the release candidate here</a>&nbsp;(zip).</li></ul>



<h2>What’s in WordPress 5.3?</h2>



<p>WordPress 5.3 expands and refines the <strong>Block Editor</strong> introduced in WordPress 5.0 with <strong>new blocks, more intuitive interactions, and improved accessibility</strong>. New features in the editor increase design freedoms, provide additional layout options and style variations to allow designers complete control over the look of a site.</p>



<p>This release also introduces the <strong>Twenty Twenty</strong> theme giving the user more design flexibility and integration with the Block Editor. </p>



<p>In addition, WordPress 5.3 allows developers to work with <strong>dates and timezones</strong> in a more reliable way and prepares the software to work with <strong>PHP 7.4</strong> to be release later this year. </p>



<h2>Plugin and Theme Developers</h2>



<p>Please test your plugins and themes against WordPress 5.3 and update the&nbsp;<em>Tested up to</em>&nbsp;version in the readme file to 5.3. If you find compatibility problems, please be sure to post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">support forums</a>&nbsp;so we can figure those out before the final release.</p>



<p>The&nbsp;WordPress 5.3 Field Guide&nbsp;will be published within the next 24 hours with a more detailed dive into the major changes.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev\">Help us translate WordPress into more than 100 languages!</a>&nbsp;This release also marks the&nbsp;<a href=\"https://make.wordpress.org/polyglots/handbook/glossary/#hard-freeze\">hard string freeze</a>&nbsp;point of the 5.3 release schedule.</p>



<p><em><strong>If you think you’ve found a bug</strong>, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://make.wordpress.org/core/reports/\">file one on WordPress Trac</a>, where you can also find&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">a list of known bugs</a>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 21:18:09 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:22;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WordPress.org blog: Responsible Participation In Online Communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7386\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://wordpress.org/news/2019/10/responsible-participation-in-online-communities/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9139:\"<p>In our <a href=\"https://wordpress.org/news/2019/10/becoming-better-digital-citizens-through-open-source/\">first article in this series</a>, we highlighted the WordPress mission to democratize publishing. WordPress introduced a tool to independent and small publishers who did not have the resources of the larger publishing platforms. Access to a free content management system to create websites has empowered thousands of people to find their voice online. People have been able to share their enthusiasm for hobbies, causes, products and much more. Through these different voices, we can encourage understanding, spark creativity, and create environments where collaboration can happen. But as we build more digital communities, it&#8217;s easy to forget that online safety is a group effort.</p>



<p>Digital literacy is also part of being a good digital citizen, but it’s more than just being able to do basic actions with your mobile device. Digital literacy refers to the range of skills needed to do online research, set up web accounts, and find solutions for fixing devices among other things. But to be able to enjoy more of the digital world safely and responsibly &#8211; to be a good digital citizen &#8211; we need to be able to:&nbsp;</p>



<ul><li><strong>navigate</strong> vast amounts of information without getting overwhelmed;</li><li><strong>evaluate</strong> a variety of perspectives;</li><li><strong>connect</strong> with people with respect and empathy;</li><li><strong>create</strong>, curate and share information.</li></ul>



<p>We will need our offline analytical and social skills to make that happen.&nbsp;</p>



<h2>Here’s some best practices our community members have shared!</h2>



<h3>Online or offline, let empathy be your compass</h3>



<p>The hardest part about all of this is the anonymity of online interactions. Without that face-to-face feedback of saying something mean to another person&#8217;s face, it&#8217;s easy to upset the people you&#8217;re trying to communicate with.</p>



<p>In our daily lives in the offline world, comments may be more tempered and slow to anger  in disagreements. Visual cues will help us determine how a remark is perceived. That, in turn, helps us adjust our behaviour Action, reaction, it’s how we learn best.</p>



<p>Online, however, the experience is different. A keyboard does not protest if we type angry, hate-filled messages. A screen does not show any signs of being hurt. The lack of physical human presence combined with the anonymity of online alter-egos can be a formula for disrespectful and unfriendly behavior. It is good to remind ourselves that behind the avatars, nicknames and handles are real people. The same empathy we display in our in-person interactions should apply online as well.</p>



<h3>Critically evaluate your sources&nbsp;</h3>



<p>We all have times when we consume information with limited research and fact-checking. For some of us, it feels like there’s no time to research and compare sources when faced by a sea of online information. For others, there may be uncertainty about where to start and what to consider. But, without a bit of skepticism and analytical thinking, we run the risk of creating narrow or incorrect understanding of the world. With a little effort we can curb the sharing of fake news and biased information, particularly on topics that are new to us or that we’re not familiar with.</p>



<p>Misinformation can spread like wildfire. Ask these simple questions to evaluate information online:&nbsp;</p>



<ul><li>who is the source of the information?</li><li>is it plausible?</li><li>is the information fact or just an opinion?</li></ul>



<h3>Own our content</h3>



<p>In this day and age, it’s never been easier to just copy, paste and publish somebody else&#8217;s content. That doesn’t mean that we should! Publishing content that is not truly ‘yours’ in wording and tone of voice is unlikely to build a connection with the right audience. But, just as important, using someone else’s content may breach copyright and potentially intellectual property rights. </p>



<p>For more information about intellectual property, <a href=\"https://www.wipo.int/about-ip/en/\">visit the World Intellectual Property Organization website</a>.</p>



<h3>Don’t breeze past terms and conditions</h3>



<p>Have you ever signed up for an online service (to help you distribute published content or accept payments) that was offered at no cost? In our fast-paced digital lives, we tend to want to breeze past terms and conditions or warning information and often miss important information about what will happen with our data. </p>



<p>When we are given a contract on paper, we tend to read and re-read it, giving it a greater priority of our time. We may send it to other people for a second opinion or seek further review before signing. Remarkably, we rarely do that with online agreements. As a result, we may be putting our online privacy and security at risk. (WordPress uses a <a href=\"https://make.wordpress.org/community/handbook/wordcamp-organizer/planning-details/gpl-primer/\">GPL license</a>, and only collects usage data that we never share ever.).</p>



<h3>Keep your website safe and healthy</h3>



<p>If you would like to own your voice online, you also need to protect your reputation by securing your publishing platform. Websites can face security attacks. Hackers may seek to obtain access through insecure settings, outdated plugins and old software versions, and in extreme cases can try to scam your visitors. And leaking customer data, may even lead to legal consequences.</p>



<p>On top of that, websites ‘flagged’ for security issues, can lead to high bounce rates and eventual loss of search rankings. This can all affect how search engines rate or even block your site. </p>



<p>Good practices to keep your website safe include changing your safe password regularly, installing security software, an SSL certificate and keeping the core software, plugins and themes up to date. This will not guarantee that you will keep hackers out, so always keep several backups of your site, ideally both offline and online.</p>



<p>That is just website security in a tiny nutshell. If you would like to learn more about keeping websites safe, you may want to check out some of these resources and many more videos at WordPress.tv.</p>



<h2>Join in and help make the web a better place!</h2>



<p>As part of Digital Citizenship Week, we would like to encourage you to learn and share skills with your colleagues, friends and family members. That way, we all become more informed of potential issues and how to reduce the risks. Together we can make it easier to navigate the web more effectively and securely!</p>



<h3>Additional resources</h3>



<h4>Site health check</h4>



<p>WordPress 5.2 introduced pages in the admin interface to help users run health checks on their sites. They can be found under the Tools menu.</p>



<h4>Security and SSL&nbsp;</h4>



<ul><li><a href=\"https://wordpress.tv/2019/01/23/victor-santoyo-security-and-ssl-whats-the-difference/\">Video recording of a presentation by Victor Santoyo about website security and SSL</a>.</li><li><a href=\"https://wordpress.tv/2017/08/31/jessica-gardner-ssl-what-it-is-how-to-do-it-and-why-you-should-care/\">Video recording of a presentation by Jessica Gardner about why you should care about SSL and how to use it.</a></li><li><a href=\"https://wordpress.tv/2018/02/03/adam-warner-the-personal-and-website-security-mindset/\">Video recording of a presentation by Adam Warner about the personal and website security mindset</a>.</li><li><a href=\"https://wordpress.tv/2018/07/05/miriam-schwab-content-security-policies-a-whole-new-way-of-securing-your-website-that-no-one-knows/\">Video recording of a presentation by Miriam Schwab about content security policies</a>.</li><li><a href=\"https://en.support.wordpress.com/https-ssl/\">More information about SSL licenses on WordPress.com</a>.</li><li><a href=\"https://wordpress.org/plugins/search/SSL\">SSL plugins in the WordPress plugin repository</a>.</li></ul>



<h2>Contributors</h2>



<p><a href=\"https://profiles.wordpress.org/chanthaboune/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>chanthaboune</a>, <a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a>, <a href=\"https://profiles.wordpress.org/webcommsat/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>webcommsat</a>,  <a href=\"https://profiles.wordpress.org/muzhdekad/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>muzhdekad</a> <a href=\"https://profiles.wordpress.org/alexdenning/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>alexdenning</a>,&nbsp;<a href=\"https://profiles.wordpress.org/natashadrewnicki/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>natashadrewnicki</a>, <a href=\"https://profiles.wordpress.org/oglekler/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>oglekler</a>, and Daria Gogoleva.</p>



<p><br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 19:41:20 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:23;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WPTavern: Kioken Blocks Partners with Gutenslider Plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94895\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/kioken-blocks-partners-with-gutenslider-plugin\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2972:\"<p><a href=\"https://wordpress.org/plugins/kioken-blocks/\" rel=\"noopener noreferrer\" target=\"_blank\">Kioken Blocks</a> creator Onur Oztaskiran is teaming up with Niklas Jurij Plessing, a Berlin-based developer and author of the <a href=\"https://wordpress.org/plugins/gutenslider/\" rel=\"noopener noreferrer\" target=\"_blank\">Gutenslider</a> plugin, to improve both products under the same roof. Oztaskiran said the partnership is not an acquisition but rather a unification of efforts that may eventually result in combining under the same name.</p>
<p>&#8220;Our short term plan is to work on each other&#8217;s plugins to improve them according to our individual areas of expertise (me in design, marketing and user happiness, him in development and more technical stuff where I fall short), and then fully collaborate on plugins and themes,&#8221; Oztaskiran said.</p>
<p>Gutenslider will remain a standalone plugin and will not be merged into Kioken Blocks. Both products will share similar resources in terms of functionality and support. The team plans to work on porting their products to be ready for WordPress.org&#8217;s upcoming Block Directory. Pro users of Kioken Blocks will be able to use the pro functionalities of Gutenslider and the team plans to make Gutenslider work like an extension to Kioken Blocks.</p>
<p>&#8220;Gutenslider is pretty extensive at it is, and we thought it deserves to keep going as a standalone block and plugin, since it will be also available in the upcoming Block Directory for Gutenberg,&#8221; Oztaskiran said. &#8220;We will handle it as another product even though it is under the same roof as Kioken Blocks. We will continue adding new features to that block and improve the experience and Kioken Blocks will gain new blocks as well, but not as extensive as Gutenslider. There&#8217;s a possibility we could rename the block but that&#8217;s not the case at the moment.&#8221;</p>
<p>Oztaskiran said he sees a lot of possibilities in Gutenslider, because it is not just an image and video slider but capable of adding different types of block content on top of the slides, such as paragraphs, headings, images, galleries, products, and more.</p>
<p></p>
<p>&#8220;Since the future of Gutenberg, as we see it, is going to be shaped around the Block Directory in the editor, our plan is focusing more blocks on that directory, with the Kioken Blocks as a builder on top of them as a plugin,&#8221; Oztaskiran said. &#8220;The final goal is building an ecosystem for WordPress users who have adopted the new editor &#8211; products, plugins and themes with a streamlined interface and experience. Dev partnerships are the first step of it.&#8221;</p>
<p>Oztaskiran could not confirm if the product catalog will be combining under one company name. The final decision has not yet been made but he said it is likely that they will combine under the Kioken branding sometime in the future for marketing their WordPress products.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 19:03:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:24;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"WPTavern: WordPress 5.2.4 Release Addresses Several Security Issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94983\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://wptavern.com/wordpress-5-2-4-release-addresses-several-security-issues\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2982:\"<p>The core WordPress team released version 5.2.4 of WordPress on October 14.  The release addresses six security issues that were all privately reported through WordPress&#8217; <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">responsible disclosure procedure</a>.</p>



<p>Like any security release, users should update immediately to the latest version to keep their sites secure.</p>



<p>For those with automatic updates enabled, the new version is already rolling out to sites. All major branches of WordPress from version 3.7 to 5.2 received the new security fixes. If automatic updates are not enabled, users should update from the &#8220;Updates&#8221; screen under &#8220;Dashboard&#8221; in the WordPress admin.  Otherwise, users can download WordPress from the <a href=\"https://wordpress.org/download/release-archive/\">release archive</a> and manually <a href=\"https://wordpress.org/support/article/updating-wordpress/\">run an update</a> to make sure their site is not at risk to what are now publicly-known vulnerabilities.</p>



<p>In the <a href=\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\">release announcement</a>, the following security issues were noted. They were corrected in all updated versions.</p>



<ul><li>Stored cross-site scripting (XSS) could be added from the Customizer screen.</li><li>An issue that allowed stored XSS to inject JavaScript into <code>&lt;style></code> tags.</li><li>A bug that allowed unauthenticated posts to be viewed.</li><li>A method to use the <code>Vary: Origin</code> header to poison the cache of JSON <code>GET</code> requests (REST API).</li><li>A server-side request forgery (SSRF) with how URLs are validated.</li><li>Issues with referrer validation in the WordPress admin.</li></ul>



<p>For developers who want to dive more into the code changes, the <a href=\"https://github.com/WordPress/wordpress-develop/compare/5.2.3…5.2.4\">changeset is available on GitHub</a>.  Most changes should not affect plugins or themes.  However, it is worth noting that the <code>static</code> query property was removed in this release.  This removal affects both the <code>WP</code> and <code>WP_Query</code> classes.  Developers should test their plugins against this version to make sure nothing is broken if their projects rely on this property.  It is unlikely that many plugins rely on this query variable.</p>



<p>WordPress 5.2.4 also includes a couple of other bug fixes.  One <a href=\"https://core.trac.wordpress.org/changeset/46074\">removes a line of code</a> that makes an extra call to the <code>wp-sanitize.js</code> script in the script loader.  The second fix <a href=\"https://core.trac.wordpress.org/changeset/46473\">addresses an issue</a> where the directory path wasn&#8217;t normalized on Windows systems, which led to the <code>wp_validate_redirect()</code> function removing the domain. This fixes a bug created in WordPress 5.2.3.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 15:52:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:25;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:108:\"WPTavern: Meetup.com Introduces RSVP Fees for Members, WordPress Meetup Groups Unaffected by Pricing Changes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94958\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:118:\"https://wptavern.com/meetup-com-introduces-rsvp-fees-for-members-wordpress-meetup-groups-unaffected-by-pricing-changes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4936:\"<p><a href=\"https://www.meetup.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Meetup</a>, a subsidiary of <a href=\"https://www.wework.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WeWork</a>, has announced a significant change to its pricing structure that will require members to pay a $2 fee in order to RSVP to events. The change will go into effect in October, ostensibly to distribute meetup costs more evenly between organizers and members. Some meetup organizers have received the following <a href=\"https://www.meetup.com/lp/paymentchanges?mpId=9038\" rel=\"noopener noreferrer\" target=\"_blank\">message</a>:</p>
<blockquote><p>Meetup is always looking for ways to improve the experience for everyone in our community. One of the options we are currently exploring is whether we reduce cost for organizers and introduce a small fee for members.</p>
<p>Beginning in October, members of select groups will be charged a small fee to reserve their spot at events. The event fee can be paid by members or organizers can cover the cost of events to make it free for members.</p></blockquote>
<p>Organizers have the option to subsidize the $2 fee for members who RSVP so that it is entirely free for those who attend, but for popular groups this can become cost prohibitive. If 1,000 members RSVP for an event, the organizer would owe $2,000 to host it.</p>
<p>The new pricing does not apply to non-profit groups or Pro Networks. WordPress community organizer Andrea Middleton has <a href=\"https://twitter.com/andmiddleton/status/1183868783116472320\" rel=\"noopener noreferrer\" target=\"_blank\">confirmed</a> that Meetup&#8217;s pricing changes will not affect groups that are part of the <a href=\"http://meetup.com/pro/wordpress/\" rel=\"noopener noreferrer\" target=\"_blank\">official WordPress chapter</a>. In 2018, <a href=\"https://make.wordpress.org/community/2019/04/18/2018-meetup-survey/\">WordPress had 691 meetup groups in 99 countries</a> with more than 106,000 members. According to Meetup.com, groups in the official chapter now number 780 in 2019. Middleton encouraged any outlying WordPress meetup groups to join the official chapter by <a href=\"https://make.wordpress.org/community/handbook/meetup-organizer/meetup-program-basics/\" rel=\"noopener noreferrer\" target=\"_blank\">submitting an application</a>.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/Screen-Shot-2019-10-14-at-9.28.03-PM.png?ssl=1\"><img /></a></p>
<p>Meetup organizers and members who are affected by the pricing hike are unhappy about the changes. If the <a href=\"https://twitter.com/securestep9/status/1183798804371386369\" rel=\"noopener noreferrer\" target=\"_blank\">angry responses on Twitter</a> are any indication, people are leaving the platform in droves. Many organizers have announced that they are cancelling their subscriptions and looking to migrate to other platforms, such as <a href=\"https://kommunity.com/\" rel=\"noopener noreferrer\" target=\"_blank\"> Kommunity</a> or <a href=\"http://gettogether.community\" rel=\"noopener noreferrer\" target=\"_blank\">gettogether.community</a>, an open source alternative for managing local events.</p>
<p>No competitor has the reach or brand recognition that Meetup has. Some groups will inevitably resort to using Eventbrite or Facebook to manage local meetups but neither of these are focused on promoting or growing these types of local events. Discovery and new meetup marketing are Meetup.com&#8217;s forte, but the platform has been fairly stagnant when it comes to improving the user experience.</p>
<p>&#8220;This new move is quite onerous on users, and WP is lending support to the platform, which is proprietary and for-profit,&#8221; Morten Rand-Hendriksen <a href=\"https://twitter.com/mor10/status/1183853556647903232\" rel=\"noopener noreferrer\" target=\"_blank\">said</a>. &#8220;The optics and messaging are not great. When tools we use start to act in problematic ways, and we keep using them, we are tacitly agreeing to and even promoting that behavior even if it is not directly affecting us.&#8221;</p>
<p>Andrea Middleton responded, acknowledging that WordPress&#8217; use of certain platforms will sometimes involve compromise.</p>
<p>&#8220;It&#8217;s true that WordPress contributors use various proprietary and for-profit tools to help us achieve various outreach and coordination goals,&#8221; Middleton said. &#8220;I think we strive for a balance between expediency and idealism, but of course any compromise results in a loss of one or the other.&#8221;</p>
<p>Given the immediate backlash following Meetup.com&#8217;s announcement of the pricing changes, it would not be surprising to see the decision reversed. The company characterized the move as an &#8220;exploration&#8221; and plans to roll it out gradually to more meetups. For organizers who are looking to charge more on top of the fee to cover event costs, Meetup said this feature is coming soon.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 15 Oct 2019 04:12:14 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:26;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:52:\"WordPress.org blog: WordPress 5.2.4 Security Release\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7372\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:68:\"https://wordpress.org/news/2019/10/wordpress-5-2-4-security-release/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3666:\"<p><a href=\"https://wordpress.org/wordpress-5.2.4.zip\">WordPress 5.2.4</a> is now available! This security release fixes 6 security issues.<br /><br />WordPress versions 5.2.3 and earlier are affected by these bugs, which are fixed in version 5.2.4. Updated versions of WordPress 5.1 and earlier are also available for any users who have not yet updated to 5.2.</p>



<h3>Security Updates</h3>



<ul><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://evanricafort.com/\">Evan Ricafort</a>&nbsp;for finding an issue where stored XSS (cross-site scripting) could be added via the Customizer.</li><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://codesymphony.co/\">J.D. Grimes</a>&nbsp;who found and disclosed a method of viewing unauthenticated posts.</li><li>Props to&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://weston.ruter.net/\">Weston Ruter</a>&nbsp;for finding a way to create a stored XSS to inject Javascript into style tags.</li><li>Props to David Newman for highlighting a method to poison the cache of JSON GET requests via the Vary: Origin header.</li><li>Props to <a href=\"http://eugenekolo.com/\">Eugene Kolodenker</a> who found a server-side request forgery in the way that URLs are validated.</li><li>Props to Ben Bidner of the WordPress Security Team who discovered issues related to referrer validation in the admin.</li></ul>



<p>Thank you to all of the reporters for <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">privately disclosing</a> the vulnerabilities, which gave us time to fix them before WordPress sites could be attacked.</p>



<p>For more info, browse the full list of changes on Trac or check out the Version&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://wordpress.org/support/wordpress-version/version-5-2-4/\">5.2.4 documentation page</a>.<br /><br />WordPress 5.2.4 is a short-cycle security release. The next major release will be&nbsp;<a rel=\"noreferrer noopener\" target=\"_blank\" href=\"https://make.wordpress.org/core/5-3/\">version 5.3</a>.<br /><br />You can <a href=\"https://wordpress.org/wordpress-5.2.4.zip\">download WordPress 5.2.4</a> or visit <code>Dashboard → Updates</code> and click <code>Update Now</code>. Sites that support automatic background updates have already started to update automatically.<br /><br />In addition to the security researchers mentioned above, thank you to everyone who contributed to WordPress 5.2.4:</p>



<p><a href=\"https://profiles.wordpress.org/aaroncampbell\">Aaron D. Campbell</a>, <a href=\"https://profiles.wordpress.org/darthhexx\">darthhexx</a>, <a href=\"https://profiles.wordpress.org/davidbinda\">David Binovec</a>, <a href=\"https://profiles.wordpress.org/desrosj\">Jonathan Desrosiers</a>, <a href=\"https://profiles.wordpress.org/iandunn\">Ian Dunn</a>, <a href=\"https://profiles.wordpress.org/jeffpaul\">Jeff Paul</a>, <a href=\"https://profiles.wordpress.org/nickdaugherty\">Nick Daugherty</a>, <a href=\"https://profiles.wordpress.org/obenland\">Konstantin Obenland</a>, <a href=\"https://profiles.wordpress.org/peterwilsoncc\">Peter Wilson</a>, <a href=\"https://profiles.wordpress.org/SergeyBiryukov\">Sergey Biryukov</a>, <a href=\"https://profiles.wordpress.org/sstoqnov\">Stanimir Stoyanov</a>, <a href=\"https://profiles.wordpress.org/voldemortensen\">Garth Mortensen</a>, <a href=\"https://profiles.wordpress.org/vortfu\">vortfu</a>, <a href=\"https://profiles.wordpress.org/westonruter\">Weston Ruter</a>, <a href=\"https://profiles.wordpress.org/whyisjake\">Jake Spurlock</a>, and <a href=\"https://profiles.wordpress.org/xknown\">Alex Concha</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 21:54:03 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Jake Spurlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:27;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"WPTavern: AMP Project Joins OpenJS Foundation Incubation Program\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94906\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wptavern.com/amp-project-joins-openjs-foundation\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5565:\"<p>Last week at the AMP Contributor Summit 2019 in New York City, the AMP project <a href=\"https://blog.amp.dev/2019/10/10/amp-is-joining-the-openjs-foundation-incubation-program/\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> that it will be joining the <a href=\"https://openjsf.org\" rel=\"noopener noreferrer\" target=\"_blank\">OpenJS Foundation</a> incubation program. OpenJS was formed by a recent merger between the JS Foundation and the Node.js Foundation. AMP will join webpack, jQuery, Mocha, Node.js, ESLint, Grunt, and other open source projects that have OpenJS as their legal entity.</p>
<p>Over the past year, AMP has been evolving its governance, moving to an open, consensus-seeking governance model in 2018, similar to the one <a href=\"https://nodejs.org/en/about/governance/\" rel=\"noopener noreferrer\" target=\"_blank\">adopted by the Node.js project</a>. One of the primary objectives of changing AMP&#8217;s governance and moving to a foundation was to foster a wider variety of contributions to the project and its technical and product roadmap. The incubation process will address AMP&#8217;s lack of contributor diversity and inclusion, as only past or current Google employees have commit rights on the code base.</p>
<p>In recognition of how the project&#8217;s connection to Google has been problematic for adoption, the company is transferring AMP&#8217;s domains and trademarks to OpenJS, which is a vender-neutral organization, as outlined in the FAQs of OpenJS&#8217; <a href=\"https://openjsf.org/blog/2019/10/10/openjs-foundation-welcomes-amp-project-to-help-improve-user-experience-on-the-web/\" rel=\"noopener noreferrer\" target=\"_blank\">announcement</a>:</p>
<blockquote><p>The OpenJS Foundation prides itself on vendor neutrality. Our vested interest resides solely in the ecosystem and the projects that contribute to that ecosystem. The OpenJS Foundation’s Cross Project Council is committed to supporting AMP in addressing these issues and ensure continued progress. During onboarding, AMP will also go through a multi-step process including adopting the OpenJS Foundation Code of Conduct, transferring domains and trademarks and more to graduation from incubation. AMP has made incredible strides by adopting a new governance model and by joining the OpenJS Foundation, they’ve made their intentions clear-AMP is committed to its vision of “A strong, user-first open web forever.”</p></blockquote>
<p>Google is, however, a Platinum member of the OpenJS Foundation with annual dues of more than $250K per year. This membership guarantees the company direct participation in running the Foundation, a guaranteed board seat, and have a direct voice in budget and policy decisions. Google plans to maintain its team of employees who contribute full time to the AMP project.</p>
<p>According to <a href=\"https://twitter.com/tobie\" rel=\"noopener noreferrer\" target=\"_blank\">Tobie Langel</a>, a member AMP&#8217;s advisory committee, one of the changes in moving to the OpenJS Foundation is AMP&#8217;s governance model will no longer be under the purview of Google and the ultimate goal is that Google will cease funding AMP directly. Instead, the company will direct funds through the foundation and work to remove the project&#8217;s Google dependencies for its infrastructure and tooling.</p>
<h3>OpenJS Aims to Disentangle AMP Runtime from Google Cache</h3>
<p>Gaining full infrastructural independence from Google will be no small feat for AMP contributors. The OpenJS Foundation&#8217;s announcement states that one of the long term goals in moving the project over is to disentangle the AMP runtime from the Google AMP Cache:</p>
<blockquote><p>The end goal is to separate the AMP runtime from the Google AMP Cache. The Project is currently in the incubating stage and Project leaders are still determining the next steps. Ideally, hosting and deployment of the AMP runtime to the CDN would fall under the purview of the OpenJS Foundation, much like the foundation is handling other projects CDNs, such as the jQuery CDN.  </p>
<p>Untangling the runtime from the cache is a complex endeavor requiring significant investments of time and effort which would be planned and implemented in collaboration with the foundation and industry stakeholders during and after incubation.</p>
<p>The OpenJS Foundation CPC is committed to having a long-term strategy in place to address this issue by the end of AMP’s incubation.</p></blockquote>
<p>AMP is used on more than <a href=\"https://blog.amp.dev/2018/02/13/amps-new-horizons/\" rel=\"noopener noreferrer\" target=\"_blank\">30 million domains</a>. While many see this news as a positive move towards AMP&#8217;s eventual independence from Google, it doesn&#8217;t remove Google&#8217;s power to compel publishers to support the AMP standard by prioritizing AMP pages in search results. The news was received with skepticism by commenters on <a href=\"https://news.ycombinator.com/item?id=21242890\" rel=\"noopener noreferrer\" target=\"_blank\">Hacker News</a> and <a href=\"https://www.reddit.com/r/firefox/comments/dhgwlb/google_takes_amp_to_the_openjs_foundation/f3nxmq0/\" rel=\"noopener noreferrer\" target=\"_blank\">Reddit</a>, who deemed it &#8220;mostly meaningless window-dressing,&#8221; given how aggressively Google is pushing AMP in its search engine. AMP remains deeply controversial and moving it to a foundation that is heavily financially backed by Google is not enough to win over those who see it as Google&#8217;s attempt to shape the web for its own interests.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 20:52:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:28;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"WPTavern: Inside Look at GoDaddy’s Onboarding Process for Managed WordPress Hosting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94901\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/inside-look-at-godaddys-onboarding-process-for-managed-wordpress-hosting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8199:\"<p>The Tavern was provided access to test GoDaddy&#8217;s onboarding process, which is a part of its <a href=\"https://www.godaddy.com/offers/wordpress-hosting\">managed WordPress hosting</a> service.  The company has revamped its system since we <a href=\"https://wptavern.com/godaddy-launches-new-onboarding-experience-for-wordpress-customers\">covered it in 2016</a>.  The web host has had time to garner feedback since then and build an easy-to-use, headache-free way to launch WordPress sites.</p>



<p>GoDaddy has been making waves in the WordPress community over the past few years and is quickly becoming one of the most dominant businesses in the ecosystem.  Several of the company&#8217;s free WordPress themes consistently rank in the theme directory&#8217;s <a href=\"https://wordpress.org/themes/browse/popular/\">popular list</a>.  Most of them are child themes of their popular <a href=\"https://wordpress.org/themes/primer/\">Primer theme</a>, which boasts 40,000+ active installs when not counting child theme installs.  The real count should be north of 200,000.</p>



<p>GoDaddy provided access to its Pro 5+ tier, which is its highest level of managed WordPress hosting.  They have three lower tiers, each at different price points and with fewer features.  Regular pricing for the tiers range between $9.99 and $34.99 per month.  All levels include automatic backups, security scans, caching, and a slew of other features that are not always easy to figure out for new users.</p>



<p>Aaron Campbell , GoDaddy’s head of WordPress Ecosystem &amp; Community, said that their hosting service is growing quickly.  &#8220;We were among the largest WordPress hosts when we launched our Managed WordPress Hosting in 2014,&#8221; he said.  &#8220;Within 2 years our offering became the largest Managed WordPress platform in the world and remains so to this day.&#8221;</p>



<p>GoDaddy launched its basic onboarding process later in 2014.  They iterated on that version through 2018.  &#8220;When Gutenberg went into core in WordPress 5.0 we saw an opportunity to redefine the WordPress onboarding and imagine what a &#8216;Gutenberg native&#8217; experience would look like,&#8221; said Campbell.  &#8220;Meaning, do what Gutenberg uniquely enables us to do over what was possible before&#8211;things that couldn&#8217;t be done by making existing themes Gutenberg &#8216;compatible&#8217; we had to build from the ground up.&#8221;</p>



<p>Based on my experience with the product, I would have no qualms about recommending it to new or even more experienced users.  Even those with no experience running WordPress can create a new site without trouble in far less time than it&#8217;d take to go through the normal, more complex process.</p>



<h2>How the Onboarding Process Works</h2>



<p>One of the hardest things to know prior to signing up for a service and handing over your credit card number is how the service works. For this reason, I snagged a few screenshots and will do a quick walk-through of the process.</p>



<p>Once you are ready to build your new website, the service provides a &#8220;Set up&#8221; link that sends you to GoDaddy&#8217;s onboarding screen.  There are three paths to choose from.  The first and most prominent is to view the available templates, which is the path that new users would choose.  You can also manually set up WordPress or migrate an existing site.</p>



<div class=\"wp-block-image\"><img /></div>



<p>When selecting to view templates, the service presents over 50 options to choose from.  The templates are further grouped by category based on the type of site a user might want to create.  I chose the &#8220;Beckah J.&#8221; option because it worked for my idea of creating a life-wellness site.</p>



<p>Each of the templates are created from GoDaddy&#8217;s new Go WordPress theme, which is currently <a href=\"https://github.com/godaddy-wordpress/go\">available via GitHub</a> and <a href=\"https://themes.trac.wordpress.org/ticket/75007\">awaiting review</a> for placement in the official WordPress theme directory.</p>



<div class=\"wp-block-image\"><img /></div>



<p>After selecting a template, the process moves to a preview screen, which has buttons to switch between desktop, tablet, and mobile views.  From that point, you can choose to use the template or go back and select another.</p>



<p>This was the first point of the process that felt like it needed polishing.  The preview frame was too small to get a feel for what the site would look like on desktop or tablet.  This is a fixable problem.  There&#8217;s plenty of screen real estate GoDaddy could use to make the preview nicer.</p>



<div class=\"wp-block-image\"><img /></div>



<p>The next screen allows users to enter information about what type of site they want to run. Depending on which of the following checkboxes are ticked, GoDaddy will set up the site differently.</p>



<ul><li>Provide information</li><li>Write blog posts</li><li>Display my portfolio</li><li>Sell physical goods to my customers</li><li>Sell digital goods to my customers to download</li></ul>



<div class=\"wp-block-image\"><img /></div>



<p>After completing the final form, GoDaddy begins creating the site.  The host sets up the site with one or more of several plugins based on the choices made in the previous form.</p>



<p>The site installation process was slower than I had expected.  We live in a fast-paced world where users expect things to happen nearly instantly.  I admit I was antsy while waiting for the process to complete, in part because everything else happened so quickly.  I wondered if I had time to grab a sandwich.  In reality, it was much faster than manually setting up a WordPress install, but the setup did take a few minutes of waiting.  My experience may have been an anomaly too.  Sometimes these things take time.</p>



<div class=\"wp-block-image\"><img /></div>



<h2>A Website Ready to Go</h2>



<p>Out of the box, my newly-created site had five custom pages ready based on my choices during the onboarding process.</p>



<ul><li>Blog</li><li>Get in Touch</li><li>Home</li><li>My Account</li><li>My Cart</li></ul>



<p>It was nice to see WooCommerce ready and a contact form set up with my email (handled by the CoBlocks plugin). I would rather have seen <code>contact</code>, <code>account</code>, and <code>cart</code> page slugs for their respective pages, but that&#8217;s a personal preference.</p>



<p>The site came with seven plugins installed, five of which were activated.</p>



<ul><li>Akismet (deactivated)</li><li>CoBlocks</li><li>Gravity Forms (deactivated)</li><li>Sucuri Security</li><li>WooCommerce</li><li>WP101 Video Tutorials</li><li>Yoast SEO</li></ul>



<p><a href=\"https://wordpress.org/plugins/coblocks/\">CoBlocks</a> along with theme integration for the block editor is what made the process of working with the website a breeze.  GoDaddy <a href=\"https://wptavern.com/godaddy-acquires-themebeans-coblocks-block-gallery-and-block-unit-tests\">acquired the CoBlocks plugin</a> in April.  At the time, the plugin had 30,000+ active installs.  It has since grown to 80,000+ in the few months since GoDaddy has taken over.</p>



<h2>The Onboarding Process Provides a Nice User Experience</h2>



<p>I&#8217;ve been critical of GoDaddy over the years.  I am a customer of one of their other hosting products that launched years ago.  That particular site is stuck on PHP 5.6, which has given me the feeling that the company is not focused on its older projects.  However, Campbell said they are in the process of moving users on legacy hosting products to a newer platform.</p>



<p>I&#8217;ve been cautiously optimistic about the work GoDaddy has been doing within the WordPress community.  They&#8217;ve more than shown their commitment to the WordPress platform over the past few years.</p>



<p>Despite a couple of minor hiccups, the onboarding process the hosting giant has built is one of the best experiences I have ever had launching a WordPress site.  Even as an old pro, I&#8217;d consider using it for future projects, particularly when setting up sites for less tech-savvy family and friends.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 20:30:29 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:29;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:72:\"WordPress.org blog: Becoming Better Digital Citizens Through Open Source\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7353\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wordpress.org/news/2019/10/becoming-better-digital-citizens-through-open-source/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7957:\"<p>The WordPress Project is on a mission to democratize publishing. As WordPress empowers more people to participate in the digital space, we have the opportunity to make sure that everyone can participate safely and responsibly. Today marks the start of Digital Citizenship Week. We are going to share how open source can be used as a tool for learners (regardless of age) to practice and model the essential parts of being a good digital citizen.</p>



<h2>What is digital citizenship?</h2>



<p>The digital landscape constantly changes and this affects the way we use the internet. New platforms emerge, people find different ways to spread information, communities form, grow and fade away every day. The concepts and practice of promoting civil discourse, critical thinking and safe use of the internet still remain central. And that is exactly what digital citizenship is about.</p>



<blockquote class=\"wp-block-quote\"><p><em>“Put simply, digital citizenship is a lot like citizenship in any other community &#8212; the knowledge of how to engage with digital communities you’re part of in a way that is thoughtful, safe, and makes appropriate use of the technology.”</em></p><cite><em>Josepha Haden, Executive Director WordPress Project</em></cite></blockquote>



<h2>Who is a digital citizen?</h2>



<p>Digital Citizenship is for all age groups. Anyone who uses the internet on a computer, mobile device or a TV is a digital citizen. You don’t have to be tech-savvy already, maybe you are taking your first steps with technology. Digital Citizenship Week is a chance to reflect together on our impact on the digital world. It can help us to make our consumption more considered and our interaction friendlier. It enables us to make a positive difference to those around us.</p>



<p>All of us can strive (or learn) to become better digital citizens. It can be affected by the access those teaching have had to digital skills and good practice. Adult education classes and community tech hubs play a part in basic tech skill development. Unfortunately, these are not always accessible to those in less populated geographic locations.&nbsp;</p>



<p>Open source communities like WordPress already make a difference in encouraging the principles of digital citizenship, from sharing tech skills to improving security knowledge. They give people an opportunity to learn alongside their peers and many of the resources are available regardless of location, resources, or skills.</p>



<ul><li>WordPress Meetups &#8212; locally-based, informal learning sessions &#8212; typically take place monthly on weekday evenings. </li><li>WordCamps are city-based conferences that take place in cities worldwide. These events usually last 1-3 days and are organized and run by volunteers.</li><li>The talks are also recorded and made available on the free, online library <a href=\"https://wordpress.tv/\">WordPress.tv</a>. These can be watched from the comfort of your own home, office or during informal get-togethers.</li></ul>



<h3>What can we do as part of the WordPress community?</h3>



<p>Digital citizenship skills, like many other skills needed in this tech-focused world, should be kept up-to-date. Open source communities offer unparalleled opportunities to do this and are available in countries across the world. As part of our role as members of WordPress and other communities, we can pass on such skills to others. For instance by working alongside people who have had limited experience of digital skills. Or by finding new ways of making this knowledge sharing fun and accessible.&nbsp;</p>



<p><strong>Here are just a few of the ways we do and can make an even greater difference:</strong></p>



<ul><li>as bloggers and writers, we can be more aware of how to write content responsibly.</li><li>as designers, we can think more about how different people will view, understand and respond to the designs and visuals we create or use.</li><li>as developers, we can build systems that make it easier for all users to find information and accomplish their goals, to be secure while visiting our sites, and to model good security and practice.</li><li>as community members, through organizing events like <a href=\"https://www.meetup.com/pro/wordpress\">WordPress Meetups</a> and <a href=\"https://central.wordcamp.org\">WordCamps</a>, we are helping equip those who may not have had access to digital literacy or who lack the confidence to put it into place or share with their family and colleagues. Through these events, the online videos and other resources on <a href=\"https://wordpress.tv/\">WordPress.tv</a> and through the <a href=\"https://make.wordpress.org/\">Make WordPress teams</a>, we are already making a difference every day.</li><li>as individuals, the way we communicate in the community and listen to each other is equally important. This is a vital part of how we grow and model positive digital citizens. Through growing our positive digital skills and a better understanding of online etiquette and challenges, we can make our immediate and wider digital world a more positive and useful environment.</li><li>making it easier to document and share knowledge.</li><li>emphasizing how skills learned within the community can be used in other parts of our digital lives.</li><li>creating and becoming ambassadors for Digital Citizenship.</li></ul>



<p>You can also get involved with specific events that have grown out of the wider WordPress project, championed by enthusiasts and those wanting to improve specific digital skills and bring wider benefits to society.</p>



<h2>Community-driven Events</h2>



<p>For example, <a href=\"https://wptranslationday.org\"><strong>WordPress Translation Day</strong></a> in 2019 had 81 local events worldwide. Running for 24-hours, individuals with language skills translated aspects of the platform into multiple languages with a total of 1181 projects modified. An amazing 221 new translators joined on the day. In addition, there was a live stream with talks, panel discussions, interviews, and sharing of tips and skills to help others learn how to translate. Volunteers are now planning the event for 2020!<br /><br /><a href=\"https://make.wordpress.org/polyglots/2019/03/01/global-wordpress-translation-day-4-is-coming/\">Stories of how people came together for WordPress Translation Day</a></p>



<div class=\"wp-block-embed__wrapper\">

</div><br />Interviews with some of the participants from a previous WordPress Translation Day giving a flavour of how volunteers developed this event.



<p><strong>Do_action days</strong> are WordPress events organized in local communities to help give charities their own online presence. Each event involves members of the local WordPress community, planning and building new websites for selected local organizations in one day. Some take place in a working day, others on weekends.&nbsp;</p>



<div class=\"wp-block-embed__wrapper\">

</div>Volunteer Tess Coughlan-Allen talking about how people came together for the first do_action in Europe to help local charities. 



<p><a href=\"https://doaction.org\">Find the next do_action hackaton nearby your home town.</a></p>



<h3>Improving digital skills through WordPress</h3>



<div class=\"wp-block-embed__wrapper\">

</div><br />In this video clip, Josepha talks about the Digital Divide and what current technological trends mean for it in the future. She explores what it takes to be literate in the digital landscape and how WordPress can be used to build and perfect those skills.



<h2>Contributors</h2>



<p>Thanks to <a href=\"https://profiles.wordpress.org/webcommsat/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>webcommsat</a> for researching and writing this article and <a href=\"https://profiles.wordpress.org/yvettesonneveld/\" class=\"mention\"><span class=\"mentions-prefix\">@</span>yvettesonneveld</a> for her supporting work in this series.<br /></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 14 Oct 2019 07:31:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:30;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"WPTavern: Edit Flow Future in Flux: Here Are 5 Alternative Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94489\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/edit-flow-future-in-flux-here-are-5-alternative-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:10230:\"<p>After years of unpredictable development and support, it seemed the <a href=\"https://wordpress.org/plugins/edit-flow/\" rel=\"noopener noreferrer\" target=\"_blank\">Edit Flow</a> plugin had finally given up the ghost last week when an Automattic support representative <a href=\"https://wptavern.com/automattic-has-discontinued-active-development-on-edit-flow-plugin\" rel=\"noopener noreferrer\" target=\"_blank\">confirmed that it is no longer being actively developed</a> and recommended users switch to an alternative. Nick Gernert, head of WordPress.com VIP, has since <a href=\"https://wptavern.com/automattic-has-discontinued-active-development-on-edit-flow-plugin#comment-307821\" rel=\"noopener noreferrer\" target=\"_blank\">commented</a> on our post to clarify the company&#8217;s intentions. He said Automattic is &#8220;in no way dropping support for Edit Flow:&#8221;</p>
<blockquote><p>I’ll start by saying we are in no way dropping support for Edit Flow.</p>
<p>We do see a difference between active feature development and maintenance updates to a plugin and this post tends to use these things interchangeably. It is correct that we are not currently pushing new features for Edit Flow. However, we are committed to maintaining this and other plugins so that those who depend on them are able to continue to do so.</p>
<p>We face the same challenge that many in software face when it comes to supporting existing work while looking to the future and where to invest energy. I hope folks can understand the delicate balance here. We accept that we have fallen short at times when it comes to maintaining our existing work and appreciate the community holding us accountable.</p></blockquote>
<p>Gernert also said the company&#8217;s VIP service is &#8220;seeing demand for WordPress in the enterprise market like never before.&#8221; The team is doubling down on its commitment to product development for this market and Gernert said outlook for Edit Flow and other Automattic plugins should improve:</p>
<blockquote><p>VIP is more committed than ever to product development for the unique needs of this space. We have recently brought on a new Head of Product and Engineering. With the addition of this role, there is a commitment to focused product development and that includes ensuring key plugins like Edit Flow are maintained. Presently, that maintenance includes security updates, critical bugs, ensuring compatibility with new versions of WordPress, and directly supporting VIP customer use. Going forward the VIP Product and Engineering teams are committed to allocating time to regularly review and address issues and provide regular updates to the plugins. As we stabilize on maintenance, new feature development will pick up in areas where we see unique opportunity.</p></blockquote>
<p>Users and developers seemed wary of this response, given the plugin&#8217;s history and more recent experiences of trying to contribute to its upkeep. <a href=\"https://gorillabunny.com/\" rel=\"noopener noreferrer\" target=\"_blank\">James Miller</a>, a developer who was using Edit Flow on a client project, shared his experience trying to submit a PR for a bug fix.</p>
<p>&#8220;It doesn’t seem like it’s even being given a level of attention at the most basic level of what could be considered &#8216;maintained,\'&#8221; Miller said. &#8220;This plugin was breaking functionality of other plugins on a client site.</p>
<p>&#8220;I forked the repo, fixed the issue, and <a href=\"https://github.com/Automattic/Edit-Flow/pull/499\" rel=\"noopener noreferrer\" target=\"_blank\">submitted a PR</a> on January 26. After several months of periodic commenting and asking if anybody was even maintaining the repo, it finally got merged just last month. This doesn’t seem to me like a commitment to maintaining the plugin.&#8221;</p>
<h3>What Does this Mean for Edit Flow Users?</h3>
<p>If you&#8217;re not currently experiencing any critical bugs and you don&#8217;t require additional features beyond what it offers, Edit Flow may be still be a good option if Automattic is able to improve its maintenance. As previously predicted, any new features coming to this plugin will be those that &#8220;directly support VIP customer use.&#8221;</p>
<p>Support for the plugin has not improved over the last week, so users may still be waiting for updates and fixes for awhile. The support forums indicate that multiple users continue to report issues with both the block editor and the classic editor, as well as conflicts with other plugins. This is likely why Automattic support representatives <a href=\"https://wordpress.org/support/topic/edit-flow-plugin-is-closed-no-longer-supported/\" rel=\"noopener noreferrer\" target=\"_blank\">recommend</a> users fork Edit Flow or switch to another solution.</p>
<p>In support of smaller WordPress-powered publications that have an immediate need for editorial tools, we have compiled a list of alternatives that offer more frequent maintenance and support. Edit Flow&#8217;s primary features include a calendar, custom statuses, editorial comments, editorial metadata, notifications, story budget, and user groups. One of the alternatives below may be a suitable replacement, depending on which features are most important to your editorial workflow.</p>
<h3>PublishPress</h3>
<p><a href=\"https://wordpress.org/plugins/publishpress/\" rel=\"noopener noreferrer\" target=\"_blank\">PublishPress</a> is the plugin that Automattic recommended as an alternative, and it is the closest one to matching Edit Flow&#8217;s features. It has 7,000 active installs and is used by companies, non-profits, educational institutions, magazines, newspapers, and blogs.</p>
<p>In the free plugin, PublishPress provides an editorial calendar, notifications, editorial comments, custom statuses, content overview, and the ability to create custom metadata for posts. Its creators also offer commercial add-ons for things like a content checklist, Slack notifications, multiple authors, WooCommerce checklist, and more.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/publishpress-editorial-calendar.png?ssl=1\"><img /></a></p>
<p>Since PublishPress is actually a fork of the Edit Flow plugin, users can <a href=\"https://publishpress.com/knowledge-base/migrate/\" rel=\"noopener noreferrer\" target=\"_blank\">migrate seamlessly from Edit Flow</a> without losing any data or settings using the plugin&#8217;s built-in migration utility.</p>
<p>The PublishPress team has also created several other publishing plugins that may also be useful for different editorial needs, including <a href=\"https://wordpress.org/plugins/revisionary/\" rel=\"noopener noreferrer\" target=\"_blank\">PublishPress Revisions</a>, <a href=\"https://wordpress.org/plugins/press-permit-core/\" rel=\"noopener noreferrer\" target=\"_blank\">PressPermit</a>, and <a href=\"https://wordpress.org/plugins/capability-manager-enhanced/\" rel=\"noopener noreferrer\" target=\"_blank\">Capability Manager Enhanced</a>.</p>
<h3>Oasis Workflow</h3>
<p><a href=\"https://wordpress.org/plugins/oasis-workflow/\">Oasis Workflow</a> is a plugin that allows site admins to create custom workflows for content review. It includes three process/task templates for assignment, review, and publishing actions with role-based routing. Workflows can be configured using a drag-and-drop interface. The plugin supports custom statuses, process history, task reassignment, due dates, and email reminders.</p>
<p><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/oasis-workflow.png?ssl=1\"><img /></a></p>
<p>Oasis Workflow is often used in healthcare, law and financial firms, universities, CPA firms, non-profits, news outlets, and other organizations that require a formal review process for publishing. A <a href=\"https://www.oasisworkflow.com/\" rel=\"noopener noreferrer\" target=\"_blank\">commercial version</a> of the plugin includes features like multiple workflows, auto submit, revisions for published content, with add-ons for editorial contextual comments, teams, groups, and more.</p>
<h3>Nelio Content</h3>
<p><a href=\"https://wordpress.org/plugins/nelio-content/\">Nelio Content</a> is a plugin with 6,000 active installs that includes an editorial calendar, editorial comments, tasks, and a content assistant. It also helps users schedule and automatically promote content on social networks. The plugin integrates relevant metrics from Google Analytics and social media accounts to assist users in promoting content.</p>
<p><a href=\"https://i2.wp.com/wptavern.com/wp-content/uploads/2019/10/nelio-calendar.png?ssl=1\"><img /></a></p>
<h3>Editorial Calendar</h3>
<p>If the editorial calendar feature of Edit Flow is the only one you need, then the <a href=\"https://wordpress.org/plugins/editorial-calendar/\" rel=\"noopener noreferrer\" target=\"_blank\">Editorial Calendar</a> plugin might be a good alternative. It is used on more than 40,000 WordPress sites. The plugin provides an overview of when each post will be published, supports multiple authors, the ability to rearrange the schedule with drag-and-drop capabilities, and edit posts directly in the calendar.</p>
<div class=\"embed-vimeo\"></div>
<h3>WP Scheduled Posts</h3>
<p><a href=\"https://wordpress.org/plugins/wp-scheduled-posts/\" rel=\"noopener noreferrer\" target=\"_blank\">WP Scheduled Posts</a> is another editorial calendar plugin that makes it easy to manage multiple authors from one place. It includes a visual calendar that can be manipulated via drag-and-drop, allowing users to easily add posts in the queue or create new posts inside the calendar. The plugin has a dashboard widget that displays post statuses for single or multiple authors.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/schedule-calendar.png?ssl=1\"><img /></a></p>
<p>The <a href=\"https://wpdeveloper.net/plugins/wp-scheduled-posts/\" rel=\"noopener noreferrer\" target=\"_blank\">commercial version</a> of WP Scheduled Posts is targeted at the scheduling aspects of publishing. It offers an auto-scheduler where users can create rules to publish content automatically, as well as a missed schedule handler for automatically publishing posts that didn&#8217;t go out on schedule.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Oct 2019 21:21:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:31;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"WPTavern: Meta Box Settings Page Extension Adds Support for Customizer, Network-Wide Settings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94811\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:103:\"https://wptavern.com/meta-box-settings-page-extension-adds-support-for-customizer-network-wide-settings\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3677:\"<p>The team behind the Meta Box plugin <a href=\"https://metabox.io/mb-settings-page-customizer-multisite\">updated their MB Settings Page add-on</a> to include support for the customizer and multisite.  The customizer feature allows theme authors to integrate their custom settings into the customizer using framework-specific code.  The multisite integration allows plugin authors to create a network settings page.</p>



<p>The new features come on the heels of an <a href=\"https://metabox.io/meta-box-updates-better-performance-for-object-fields-mb-core-and-new-settings-page\">update to the core Meta Box plugin</a> that improves performance for users who have thousands of objects such as posts, terms, or users.</p>



<p>The primary <a href=\"https://wordpress.org/plugins/meta-box/\">Meta Box</a> plugin originated as a custom fields framework for plugin and theme authors to create meta boxes.  It has since grown to handle settings across taxonomies, user profiles, options pages, comment forms, and other areas that have form fields.  The plugin offers a unifying API for developers to code over 40 field types without the need to learn each of the internal, field-related APIs in WordPress.  At the moment, the plugin has over 400,000 active installations.</p>



<p>Framework-style plugins such as Meta Box, Advanced Custom Fields, and others have filled a gap left open by core WordPress, which does not have a single API for handling fields.  Over the years, developers have been left to code against dissimilar APIs and in different languages (PHP and JavaScript).  This new feature from the Meta Box team will further extend its usefulness to a large number of developers who need to build out options for their users quickly and without learning additional APIs.</p>



<p>The <a href=\"https://metabox.io/plugins/mb-settings-page/\">MB Settings Page add-on</a> is a premium extension that allows theme and plugin authors to create custom settings pages.</p>



<p>The purpose of its customizer integration is for theme authors to map settings pages to customizer panels.  However, the feature also allows for sections instead.  All of the Meta Box&#8217;s field types carry over to the customizer except for its file and image field types due to limitations with how the customizer works.  However, other file and image-related fields will handle most needs.</p>



<p>Customizer integration isn&#8217;t an all-or-nothing thing.  Developers can choose to keep both a custom settings page and panels in the customizer.  They may also opt for one screen over the other based on their needs.</p>



<p>The Meta Box team released a video showcasing the new customizer support with some mood music.  <em>To be honest, I&#8217;m just chilling out and listening as I write this article.  I&#8217;ve got a little head bob going too.</em></p>



<div class=\"wp-block-embed__wrapper\">

</div>



<p>There is currently no word on whether the customizer fields support live preview.  Based on the video, when a user updates an option, the preview panel performs a full page refresh.  If live preview is not currently a feature, it would be a welcome one in a future update.</p>



<p>Along with customizer integration, the MB Settings Page update provides the ability for developers to create network-wide settings for multisite.  </p>



<p>For some developers, network-wide settings are a bit of an afterthought or something they don&#8217;t consider at all for their plugins.  Not all plugins need options on the network level.  For those that do, authors can start using their custom Meta Box fields directly in the WordPress network admin with a single line of code.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 11 Oct 2019 17:58:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:32;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"WPTavern: WordPress 5.3 Improves Large Image Handling\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94814\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:64:\"https://wptavern.com/wordpress-5-3-improves-large-image-handling\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2222:\"<p><a href=\"https://wordpress.org/news/2019/10/wordpress-5-3-beta-3/\" rel=\"noopener noreferrer\">WordPress 5.3 Beta 3</a> was released this week and RC 1 is right around the corner, expected <a href=\"https://make.wordpress.org/core/5-3/\" rel=\"noopener noreferrer\" target=\"_blank\">October 15</a>. Core contributors have been publishing developer notes on new features landing in this release. One exciting enhancement that hasn&#8217;t received much attention yet is WordPress&#8217; updated <a href=\"https://core.trac.wordpress.org/ticket/47873\" rel=\"noopener noreferrer\" target=\"_blank\">handling of large images</a>.</p>
<p>Many WordPress users don&#8217;t consider the size of the images they are uploading to their sites, and modern smartphones are capable of producing very high quality images at very large file sizes. WordPress 5.3 will automatically detect large images (with a default threshold of 2560px) and generate a “web-optimized maximum size.&#8221; The threshold is used as the max-height and max-width value to scale down the image for use as the largest available size. A new <code>big_image_size_threshold</code> filter is available for developers who want to change the threshold size or disable the new feature altogether.</p>
<p>WordPress will store the original image size so that it is still accessible and a new function is available for fetching its path: <code>wp_get_original_image_path()</code>. It is also used to generate all the image sub-sizes.</p>
<p>More than two million WordPress users rely on plugins like Imsanity, Smushit, and EWWW Image Optimizer to optimize images. They often include additional features for bulk resizing previously uploaded images. WordPress&#8217; new large image handling <a href=\"https://make.wordpress.org/core/2019/10/09/introducing-handling-of-big-images-in-wordpress-5-3/#comment-37044\" rel=\"noopener noreferrer\" target=\"_blank\">should not interfere with image optimization plugins</a>, because it doesn&#8217;t affect the default settings that they often hook into and use to perform additional optimizations. The new core enhancement may be suitable to replace these plugins for some users who only require the bare minimum optimization on upload.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Oct 2019 19:46:35 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:33;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: MachoThemes, Modula Parent Company, Acquires Three Gallery Plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94816\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://wptavern.com/machothemes-modula-parent-company-acquires-three-gallery-plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3453:\"<p><a href=\"https://www.machothemes.com\">MachoThemes</a>, the WordPress development company behind the <a href=\"https://wordpress.org/plugins/modula-best-grid-gallery/\">Modula Gallery</a> plugin, has acquired three gallery plugins.  The company is currently rolling the first two of the plugins, <a href=\"https://wordpress.org/plugins/final-tiles-grid-gallery-lite/\">Final Tiles Grid Gallery Lite</a> and <a href=\"https://wordpress.org/plugins/photoblocks-grid-gallery/\">PhotoBlocks Grid Gallery</a>, into Modula.  The third plugin, <a href=\"https://wordpress.org/plugins/everlightbox/\">EverLightbox</a>, will remain as a standalone project.</p>



<p>The three plugins were purchased from Diego Imbriani of GreenTreeLabs.  This was not MachoThemes&#8217; first acquisition from Imbriani.  They acquired the original Modula plugin from him over two years ago.  From there, they grew the user base and continued developing the plugin.</p>



<p>At this time, the exact details of the financial terms are not available to the public, but the transaction was in the range of low-to-mid 5-figures.</p>



<p>The acquisition is a part of MachoThemes&#8217; growth strategy for building a larger audience for their Modula plugin, which currently has over 60,000 active installations.  &#8220;We liked their feature set, their quirkiness, and overall what they stand for,&#8221; said MachoThemes owner Christian Raiber of the reasons behind the acquisition.</p>



<p>The merge of Final Tiles and PhotoBlocks affects over 34,000 plugin users.  MachoThemes does not plan to continue supporting or developing them as individual plugins.</p>



<p>The team is in the process of building a migration script to allow users to bring their existing galleries over to the Modula plugin.  It is important that users migrate to Modula or another option because unsupported versions of their current plugins may not work in the future.</p>



<p>Both plugins are similar to Modula by allowing users to create a gallery separately from the primary post content screen.  However, the user interface and experience between all three plugins are nothing alike.  Merging the plugins into Modula means that MachoThemes can work on a single interface and experience for users.</p>



<p>Users may be worried about losing features when migrating to a new plugin.  &#8220;Most of these options already exist in Modula, under a different name, setting or otherwise paid extension,&#8221; said Raiber.  &#8220;There are a few interesting options in these plugins indeed, and they&#8217;ve already sparked new ideas for the team to experiment with.&#8221;</p>



<p>Raiber said his company would reach out to users.  &#8220;We&#8217;ll have videos, doc entries, and a dedicated page on wp-modula.com,&#8221; he said of the transition.  The company plans to keep the plugins available for the next six months but may extend that period depending on how the transition for users is going.</p>



<p>The EverLightbox plugin will remain separate for those who want a lightbox feature for the standard WordPress galleries but not a full gallery-editing plugin.  &#8220;We will continue to support the plugin and work hard to ensure that all users have a smooth-sailing experience with the plugin just as we have been for all of the plugins we&#8217;ve been building,&#8221; said Raiber.</p>



<p>The company plans to continue developing and supporting EverLightbox for the long term.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 10 Oct 2019 19:21:25 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:34;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: ExpressionEngine Under New Ownership, Will Remain Open Source for Now\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94761\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://wptavern.com/expressionengine-under-new-ownership-will-remain-open-source-for-now\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7521:\"<p>EllisLab founder Rick Ellis <a href=\"https://expressionengine.com/blog/expressionengine-has-a-new-owner\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> yesterday that ExpressionEngine has been acquired by Packet Tide, the parent company of <a href=\"https://eeharbor.com\" rel=\"noopener noreferrer\" target=\"_blank\">EEHarbor</a>, one of the most successful EE add-on providers and development agencies in the community. A year ago EllisLab, the developers of EE core, was acquired by Digital Locations but Ellis said the company ended up not being a good fit for the future of the CMS:</p>
<blockquote><p>A year ago, EllisLab was acquired by Digital Locations in order to facilitate the transition of ExpressionEngine from a commercial software application to an open source one. That transition was successful, but it became apparent in recent months that ExpressionEngine didn’t fit perfectly within the goals of Digital Locations, as it seeks to build a business in Artificial Intelligence.</p>
<p>We decided that what was best for ExpressionEngine was to seek a new owner, one that could devote all the resources necessary for ExpressionEngine to flourish.</p></blockquote>
<p>In November 2018, <a href=\"https://wptavern.com/expressionengine-goes-open-source-after-16-years\" rel=\"noopener noreferrer\" target=\"_blank\">EE went open source</a>, adopting the <a href=\"https://expressionengine.com/license\" rel=\"noopener noreferrer\" target=\"_blank\">Apache License Version 2.0</a>, after 16 years of being locked down under restrictive licensing. EE&#8217;s dwindling community of product developers and site builders were hopeful that the new open source licensing would expand EE&#8217;s reach and bring back developers who had migrated to alternatives like <a href=\"https://craftcms.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Craft</a>.</p>
<p>After the acquisition announcement, the EE community was concerned whether or not it will remain free and open source. Although the software&#8217;s homepage sports the tagline &#8220;The Open-Source CMS that supports YOU all the way,&#8221; EE&#8217;s new owners have left the option open for reconsidering its licensing further down the road. They plan to stick with the open source license for the time being. When asked directly in the <a href=\"https://t.co/gjVhmpqqn1?amp=1\" rel=\"noopener noreferrer\" target=\"_blank\">EE Slack</a>, EE Harbor developer <a href=\"https://twitter.com/TomJaeger\" rel=\"noopener noreferrer\" target=\"_blank\">Tom Jaeger</a> said, &#8220;That is our plan for now, although at this stage we&#8217;re looking at everything with a fresh eye towards what&#8217;s best.&#8221; The company has <a href=\"https://eeharbor.com/faq\" rel=\"noopener noreferrer\" target=\"_blank\">published a list of FAQs</a> with the same information.</p>
<p>Brian Litzinger, a developer at <a href=\"https://boldminded.com/\" rel=\"noopener noreferrer\" target=\"_blank\">BoldMinded</a>, who has created more than 36 add-ons for EE, and is also on the EECA (ExpressionEngine Community Association) board that organizes EEConf, said he has confirmed that EEHarbor plans to keep the CMS open source.</p>
<p>&#8220;The board spoke to new ownership just today actually, and they have every intention of keeping it open source,&#8221; Litzinger said. &#8220;I can’t speak for the whole community, but since going open source my add-on sales have not significantly increased or decreased.</p>
<p>&#8220;As with any open source project there has been feedback and pull requests from the community, but nothing significant (e.g. large features). The community as a whole is pretty excited about the new ownership and ExpressionEngine&#8217;s future though.&#8221;</p>
<p>Shawn Maida, founder of <a href=\"https://fostermade.co\" rel=\"noopener noreferrer\" target=\"_blank\">Foster Made</a>, a company that also sells ExpressionEngine add-ons, said he has not seen a significant direct change in the economics of EE since the project went open source.</p>
<p>&#8220;I think the real question here is what business model best enables the growth and continued support of the CMS itself, and how is that balanced against the growth of the community,&#8221; Maida said. &#8220;As a business that offers some add-ons for ExpressionEngine, we need to see both continued growth in ExpressionEngine as a platform and growth in the community, so I think the license model that best enables that matters.&#8221;</p>
<p>Travis Smith, president of <a href=\"https://www.hopstudios.com/\" rel=\"noopener noreferrer\" target=\"_blank\">Hop Studios</a>, has been working with EE since its early days. As someone who is deeply invested in the EE community, he said that he doesn&#8217;t think a prospective licensing change would impact the broader community as much as having a clear vision for the CMS&#8217;s future.</p>
<p>&#8220;I think a licensing change per se wouldn&#8217;t be good or bad, but a well-articulated and communicated vision for the CMS&#8217;s future would be really helpful for a community that feels unsure at the moment,&#8221; Smith said.</p>
<p>&#8220;I do think that the exposure that going open source gave into the development process overall at EllisLab was an improvement, and that new features and bug fixes were getting added at a decent pace.&#8221;</p>
<p>EE may have changed its licensing to be open source but it is not a community-led project where major decisions happen by a consensus of a diverse representation of community leadership.</p>
<p>&#8220;I didn&#8217;t observe the community gaining (or applying?) much input or influence over the future of ExpressionEngine in the past year,&#8221; Smith said. &#8220;I think there was still a feeling of &#8216;EE is EllisLab&#8217;s project&#8217; &#8212; and that this change of ownership might shake the community&#8217;s devs out of that default assumption, which would be a good thing.&#8221;</p>
<p>In the <a href=\"https://eeharbor.com/faq\" rel=\"noopener noreferrer\" target=\"_blank\">FAQs EEHarbor published today</a>, the company confirmed that it will be developing new features and that it will consider feedback submitted from the community:</p>
<blockquote><p>While we are in the early stages of long-term strategic planning, we already have a lot of thoughts and ideas around where to take ExpressionEngine based on our own experience. However, it’s not just about us. We are also very interested in collaborating with the ExpressionEngine community. Everyone is more than welcome to submit feedback for us to review as we consider the future of ExpressionEngine</p></blockquote>
<p>After 16 years under a restrictive license, EE is an interesting example of a newly open source, corporate-led project with a community that is rediscovering its place while ownership of the software is transferred from one company to another. Responses to the acquisition are mostly positive, and users seem excited about Packet Tide&#8217;s first planned initiative &#8211; finishing development on ExpressionEngine 6.0. Ellis described this upcoming release as &#8220;an exciting new version we’ve been quietly working on behind the scenes.&#8221; It will include a new control panel with a dark theme, along with add-on and service integrations inside the app.</p>
<p>EEHarbor does not plan to merge its add-ons with ExpressionEngine core at this time, and the statement published today reiterates the company&#8217;s commitment to &#8220;keep the add-on marketplace fair and open to all developers.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Oct 2019 23:11:39 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:35;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"WPTavern: Rosa 2 Restaurant Theme Provides a Frustrating and Satisfying Experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94769\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:93:\"https://wptavern.com/rosa-2-restaurant-theme-provides-a-frustrating-and-satisfying-experience\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9220:\"<div class=\"wp-block-image\"><img /></div>



<p><a href=\"https://pixelgrade.com/themes/restaurants/rosa2/\">Rosa 2</a> is the sequel to Pixelgrade&#8217;s best-selling theme, Rosa.  The new theme re-imagines its previous incarnation in the context of the block editor (Gutenberg).   I was provided a copy of the theme for free to test and provide my thoughts. </p>



<p>The theme sells for $75/year, or you can pay a one-time fee of $95 for lifetime access.  The <a href=\"https://pixelgrade.com/blog/product/meet-rosa-2/\">product launch post</a> could make anyone excited about this theme, but is it worth it?</p>



<p><strong>TLDR;</strong> Rosa 2 made for a satisfying experience when building restaurant-style pages.  However, the early learning curve and basic setup were frustrating.  It also lacks some of the polish I&#8217;d expect at a premium price.</p>



<h2>A Rundown of the Issues</h2>



<p>Before I dive into the good things about Rosa 2 (and there are some nice things about this theme), let me dive into the frustrating aspects.  There were so many pain points that I nearly gave up on the theme several times.  However, I soldiered on in the hopes of understanding why this theme might be worth using.</p>



<h3>Install the Required Plugins First</h3>



<p>Let me save you some time right now.  When the theme says that it requires the <a href=\"https://wordpress.org/plugins/customify/\">Customify</a> and <a href=\"https://wordpress.org/plugins/nova-blocks/\">Nova Blocks</a> plugins, it truly requires them.  Otherwise, the theme looks and behaves nothing like the demo or screenshots.  It may as well not be the same theme.</p>



<p>When first activating the theme, the front page of your website will become a completely white screen.  It is not the dreaded <a href=\"https://wordpress.org/support/article/common-wordpress-errors/#the-white-screen-of-death\">White Screen of Death</a> caused by an error.  Instead, the theme is forcibly hiding the content with custom styles.</p>



<p><em>Why?</em>  Yeah, good question.  </p>



<p>I see no reason to do so.  Outside of changing some code (which I did), users must activate the plugins to make their content appear.  There is no technical reason this should be the case when using this theme.</p>



<p>There should be no path in which a user installs a theme only to have their content disappear.</p>



<p>I get it.  I was told these were required plugins.  The theme even provides easy installation and activation links via the TGM Plugin Activation script.  I also get that WordPress lacks any sort of real dependency system for handling this feature.  That doesn&#8217;t make it any less of a poor user experience.</p>



<p>As a developer, I thought I&#8217;d trick the system and test the theme without those plugins installed.  I wanted to see what the theme looked like out of the box, which you can see in the following screenshot.</p>



<div class=\"wp-block-image\"><img /></div>



<p>Oh, and that big block of category links in the above screenshot, it never goes away.  It just sits there on your blog posts page.  It is hard-coded in the posts page template (<code>home.php</code>).  Rosa 2 is billed as a restaurant theme, so it might be acceptable if you don&#8217;t plan on running a blog.</p>



<h3>Header and Nav Problems</h3>



<p>The default header looks nothing like the screenshots, demo, or video for the theme.  After nearly two hours of using the theme, I was ready to throw in the towel and rule this theme out as a lost cause.  Not being able to get the basic nav menu set up for the theme was an exercise in self-punishment that I wouldn&#8217;t wish on anyone.</p>



<p>It turns out that the Nova Blocks plugin really is required.  <em>Did I mention that you should install the required plugins first?</em></p>



<h3>Stretched images</h3>



<p>On blog and archive pages, expect stretched featured images that attempt to fill out the box next to the excerpt for existing posts.  There doesn&#8217;t seem to be any remedy to this outside of uploading new images.  </p>



<p>The theme uses the standard <code>post-thumbnail</code> size but does not define this size in the code.  For those unfamiliar with the technical aspects when using this specific size, the theme should ideally define it via the <code>set_post_thumbnail_size()</code> function.</p>



<h3>Sticky header</h3>



<p>The large sticky header gave me a gut-wrenching feeling that walls were closing in on me.  I became light-headed and dizzy.  I found it tough to breathe.  This is not hyperbole.  I&#8217;m dead serious.</p>



<p>On a personal note, I&#8217;ve had some issues with claustrophobia for the last couple of years.  I first had this feeling after being stuck indoors for two weeks while watching over one of my cats who had surgery.  I typically work from the porch where I can get fresh air, but that was one of the worst periods of my life.  </p>



<p>Since then, I often get this same feeling when sites have large sticky headers.  It feels like the walls are closing down.  <em>I wonder if others have similar issues.</em></p>



<p>This feeling could be alleviated if the theme minimized the sticky-header height while scrolling down the page.  Fortunately, the theme allows users to choose a static header, which I strongly suggest using.  There are some other spacing and sizing options for the header area, which can help shrink some of this down.</p>



<h2>Where the Theme Shines</h2>



<div class=\"wp-block-image\"><a href=\"https://i1.wp.com/wptavern.com/wp-content/uploads/2019/10/rosa2-custom-page.jpg?ssl=1\" target=\"_blank\" rel=\"noreferrer noopener\"><img /></a></div>



<p>If there is one thing this theme does well, it is making it simple to create pages for a restaurant via the Nova Blocks plugin.  Within minutes of creating a custom page, I had a restaurant-style page set up and ready to go.</p>



<p>When coupled with Nova Blocks, the theme beautifully handles the process of creating custom pages with numerous unique outcomes.  The integration with the plugin is brilliant.  Each block has custom demo content that you can easily modify.</p>



<p>Some of the names of the blocks and block options were cutesy and fun, such as &#8220;Hero of the Galaxy,&#8221; but they became a slight nuisance when wanting to quickly figure out the purpose of a block.  I could see some users becoming annoyed at the names, and they might not be ideal for some professional settings.  They were kind of fun though.  I have mixed feelings about them.</p>



<h2>How Does the Theme Handle Gutenberg?</h2>



<div class=\"wp-block-image\"><img /></div>



<p>Rosa 2 is a theme primarily built for the block editor.  It wonderfully handled core block output in my tests.  </p>



<p>When using Gutenberg-ready themes, I view the pullquote block as sort of the theme designer&#8217;s signature. It is one of those blocks where designers can have a lot of fun and put a unique spin on the display.  I&#8217;m a fan of the pullquote style in this theme (pictured above).</p>



<p>On the whole, it works well.  When coupled with Nova Blocks, you have a lot of power at your disposal.</p>



<h2>How Does the Code Stack Up?</h2>



<p>Rosa 2 is lightweight in terms of custom code.  Nearly all of the functionality is within the accompanying plugins.  Because this is a theme review, I didn&#8217;t dive into the plugin code.</p>



<p>From a purely technical standpoint, the theme does most things according to standards.</p>



<p>There are some things I&#8217;d change from an architectural standpoint.  For example, the file for its Customify plugin integration is over 1,100 lines of code.  I would break that down to more digestible bits, which would help with long-term maintenance and bug hunting.</p>



<p>Some of the editor-related JavaScript code could be more efficient.  Repeated patterns should be grouped together to make the code smaller.  The editor JavaScript file is not large, but every byte counts in a world where developers assume everyone is running on Gigabit internet connections.</p>



<p>The primary stylesheet is 173 kb, which is <em>OMGBBQ</em> large, especially when you top it off with 100s of kb coming from the stylesheets and scripts loaded by Nova Blocks plugin.  Unless you&#8217;re a user who is heavily optimizing your site, you can count on some slow page loads.</p>



<h2>The Final Verdict</h2>



<p>I&#8217;d only recommend this theme to people who have more patience than me.  While I didn&#8217;t follow instructions right off the bat (as a reviewer, I&#8217;m trying to push limits and break things), the theme did have some pain points that simply made for a frustrating process.</p>



<p>I&#8217;m in the camp of people who believes themes should work out of the box.  This theme doesn&#8217;t work without some setup.  You&#8217;ll need to put in some legwork to get it going.  However, once you make it over the initial hump, you can build some beautiful page layouts.</p>



<p>I suggest using it strictly for its defined purpose of building a restaurant website.  The typography is designed well enough for blogging, but the overall theme isn&#8217;t well-suited to it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 09 Oct 2019 19:47:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:36;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"WordPress.org blog: WordPress 5.3 Beta 3\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7312\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://wordpress.org/news/2019/10/wordpress-5-3-beta-3/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3723:\"<p>WordPress 5.3 Beta 3 is now available!</p>



<p><strong>This software is still in development,</strong>&nbsp;so we don’t recommend you run it on a production site. Consider setting up a test site to play with the new version.</p>



<p>You can test the WordPress 5.3 beta in two ways:</p>



<ul><li>Try the&nbsp;<a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">WordPress Beta Tester</a>&nbsp;plugin (choose the “bleeding edge nightlies” option)</li><li>Or&nbsp;<a href=\"https://wordpress.org/wordpress-5.3-beta3.zip\">download the beta here</a>&nbsp;(zip). </li></ul>



<p>WordPress 5.3 is slated for release on&nbsp;<a href=\"https://make.wordpress.org/core/5-3/\">November 12, 2019</a>, and we need your help to get there.</p>



<p>Thanks to the testing and feedback from everyone who tested <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-2/\">beta 2</a> (and&nbsp;<a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">beta 1</a>) over&nbsp;<a href=\"https://core.trac.wordpress.org/query?status=closed&changetime=10%2F01%2F2019..10%2F08%2F2019&milestone=5.3&col=id&col=summary&col=status&col=milestone&col=owner&col=type&col=priority&order=priority\">60 tickets have been closed</a>&nbsp;in the past week. </p>



<h2>Some highlights </h2>



<ul><li>Fixes and enhancements in the admin interface changes introduced in previous 5.3 beta releases.</li><li>Wording changes in login screen (<a href=\"https://core.trac.wordpress.org/ticket/43037\">#43037</a>).</li><li>Improved accessibility in media upload modal (<a href=\"https://core.trac.wordpress.org/ticket/47149\">#47149</a>).</li><li>Changes in the way the new error handling with images works (<a href=\"https://core.trac.wordpress.org/ticket/48200\">#48200</a>).</li><li>MediaElement.js has been updated from 4.2.6 to 4.2.13 (<a href=\"https://core.trac.wordpress.org/ticket/46681\">#46681</a>). The script is now also being loaded in the footer again. This fixes a regression that happened two years ago, so might be worth noting (<a href=\"https://core.trac.wordpress.org/ticket/44484\">#44484</a>).</li><li>Update to the REST API media endpoint to allow resuming of uploads (<a href=\"https://core.trac.wordpress.org/ticket/47987\">#47987</a>).</li></ul>



<p>In addition to these, Beta 3 landed a number of small consistency and polish changes to the REST API, including an improvement to the permissions check used when editing comments, a fix for post type controller caching edge cases, and most importantly, the ability to use the _embed parameter to access the full data for a post using the /wp/v2/search endpoint.</p>



<h2>Developer notes</h2>



<p>WordPress 5.3 has lots of refinements to polish the developer experience. To keep up, subscribe to the&nbsp;<a href=\"https://make.wordpress.org/core/\">Make WordPress Core blog</a>&nbsp;and pay special attention to the&nbsp;<a href=\"https://make.wordpress.org/core/tag/5-3+dev-notes/\">developer notes</a>&nbsp;tag for updates on those and other changes that could affect your products.</p>



<h2>How to Help</h2>



<p>Do you speak a language other than English?&nbsp;<a href=\"https://translate.wordpress.org/projects/wp/dev/\">Help us translate WordPress into more than 100 languages</a>!</p>



<p>If you think you’ve found a bug, you can post to the&nbsp;<a href=\"https://wordpress.org/support/forum/alphabeta/\">Alpha/Beta area</a>&nbsp;in the support forums. We’d love to hear from you! If you’re comfortable writing a reproducible bug report,&nbsp;<a href=\"https://core.trac.wordpress.org/newticket\">file one on WordPress Trac</a>&nbsp;where you can also find a list of&nbsp;<a href=\"https://core.trac.wordpress.org/tickets/major\">known bugs</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Oct 2019 20:58:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Francesca Marano\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:37;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WPTavern: The Evolution of Anonymity in the Internet Age\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94745\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/the-evolution-of-anonymity-in-the-internet-age\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:9328:\"<p>As a child of the &#8217;90s, I was growing up in one of the largest transitional periods in human history.  The Internet Age was upon us.</p>



<p>I was born and raised in a small community in rural Alabama.  The country.  The backwoods.  To give you an idea of how small the place was, my entire school (grades K-12) had around 800 students.  While I was fortunate enough that my family could afford to travel for vacation almost every year, I mostly lived a sheltered life.</p>



<p>I rode bikes down the dirt road and explored neighbors&#8217; hunting lands with my best friend in the summer.  We&#8217;d get up at dawn, grab some provisions, and cycle out for the day&#8217;s adventure.  We&#8217;d race old lawnmowers, build unstable treehouses, and swim in what were likely snake-infested creeks.  We&#8217;d camp out under the stars.  Our parents never asked where we were.  As long as we showed up for supper and took a bath a few times each week to scrub the dirt off, we were generally left up to our own imaginations.</p>



<p>There was another aspect of growing up in the &#8217;90s, and that was video games.  At 16, I spent most of the summer in the fields picking watermelons or throwing bales of hay onto a trailer.  It was hard work, but it kept me supplied with whatever video games I wanted.  When not out in the wild, my best friend and I would be glued to a 19-inch television playing the Nintendo 64 (and later the Sega Dreamcast).</p>



<p>I lived in this somewhat country-bumpkin bubble with no idea of the outside world.</p>



<p>Then came the explosion of the internet.  My family never had a computer at home.  That left me to access this wonderful new thing during school hours or at a friend&#8217;s house.</p>



<p>Like pretty much every teen boy I knew at the time, the best use of the internet was logging into adult chatrooms and hoping to chat with a woman.  Yeah, the average teenage boy wasn&#8217;t doing anything productive with the internet, even in the &#8217;90s.  Big surprise there.  This isn&#8217;t groundbreaking news, folks.  Move along.</p>



<p>There were other uses of chatrooms, such as finding other gamers.  That&#8217;s where my original love of the internet began.  I could talk to people across the world about Nintendo and Sega games.  I even started getting pen-pals where we would exchange weekly emails.</p>



<p>At the time, there was this common saying among adults, &#8220;You don&#8217;t know who you&#8217;re talking to on that thing. It could be a fat, 40-year-old man living in his parents&#8217; basement.&#8221;  <em>Hey, why you throwin&#8217; shade at heavyset men?  Just tell me it could be a psycho.</em></p>



<p>My parents drilled this lesson into my brain.  School teachers did the same.  Like my peers at the time, I was required to use a pseudonym when going online.  The thought of using a real name was almost unheard of.  As teens, we&#8217;d joke about the basement-dwelling bogeyman who our parents and teachers warned us against.  It was all a game to us despite there being legitimate fears, particularly now that I have 20 years of hindsight at my disposal.</p>



<p>That&#8217;s where I came up with my username of <a href=\"https://profiles.wordpress.org/greenshady\">greenshady</a>, by the way.  One day I may even tell what it means.  One day.  For now, I&#8217;ll keep all of you who have asked about it over the years guessing.</p>



<p>I used that username for years because there was always this little voice in the back of my mind telling me to remain anonymous.</p>



<h2>Anonymity in the Age of Transparency</h2>



<p>I&#8217;m not exactly sure at what point attitudes toward anonymity changed.  Social networks likely played a huge role transitioning us from silly screen names to using our real-life names on the internet.  Otherwise, it&#8217;d be harder for our real-life friends to find us on Facebook, Twitter, and elsewhere.</p>



<p>This prevailing attitude toward anonymity didn&#8217;t limit itself to social networks.  More and more, people shunned the idea of anonymous posts or comments on blogs and elsewhere.  </p>



<p>There&#8217;s likely some form of stardom attached to using real names as well.  Everyone is just one video, one blog post, or one tweetstorm away from their 15 minutes in the spotlight.</p>



<p>Even within the WordPress community over the years, I&#8217;ve witnessed a shift toward automatically disliking anonymous comments.  The prevailing idea is that a person&#8217;s contribution to a discussion has less worth if it&#8217;s hidden behind the veil of anonymity, that one&#8217;s opinions are invalid if they cannot be backed up by a real name. </p>



<p>It opens the person to attack not based on their ideas but on how they choose to present themselves online.  This is a part of the culture that is unhealthy.</p>



<p>In a time when you can effectively be shut out from the modern-day public square for making one wrong statement, anonymity is more important than ever for some.  Often, there&#8217;s no recourse for missteps after you&#8217;ve been taken down by the angry horde over a lapse in judgment.  Once your name has been hauled through the mud and back again, there&#8217;s little you can do about it.</p>



<p>That little voice in the back of my mind, the one carefully crafted by my parents and teachers, is a reminder that a simpler period during the Internet Age once existed.</p>



<p>There are other pockets of the internet where the pseudonym has persisted.  One area is in gaming.  You&#8217;d be the oddball if using a real name in an online multiplayer match.  <em>I suppose &#8220;Brett&#8221; or &#8220;Molly&#8221; doesn&#8217;t strike fear in the heart&#8217;s of enemies.</em>  The entire culture of online gaming is built upon anonymity, which is at odds with much of the internet world today.  Frankly, I find it oddly satisfying.</p>



<p>I do wonder whether a real name online is important for civil discourse.  Quite often, online personas are much different than their real-life counterparts.  I mean, have you seen the numerous alpha-male groups on social networks made up of men who all think they&#8217;re the leaders of the pack?  <em>Hmmm…maybe there was some truth to that basement-dweller theory, after all.  Thanks for the heads up, Mom and Dad.</em></p>



<p>The point is that an online persona, even attached to a real name, is still a persona.  It&#8217;s not much different than a fake user handle.</p>



<p>I&#8217;d wager that the need to see a person&#8217;s real name has more to do with knowing exactly who to shun for controversial ideas rather than attaching some sort of validity to it.  Usernames can be altered.  You&#8217;re pretty much stuck with your real name, and mishaps follow your real name around.</p>



<p>As we were reviewing the Tavern&#8217;s <a href=\"https://wptavern.com/comment-policy\">comment policy</a> last week, one point I brought up is that I believe we should allow anonymous comments.  A large reason for this is that people should feel safe to communicate their thoughts within the community.  While I won&#8217;t get into the specifics of internal discussions, I do hope that it&#8217;s something we officially remove from the policy.</p>



<p>Being in favor of anonymity does not mean being in favor of personal attacks or handing over a license to use a vulgar term as a username.  It&#8217;s about protecting people&#8217;s ability to speak freely without fear of becoming an outcast within the community for an unpopular opinion.</p>



<p>Sometimes anonymity provides people the freedom they need to effectively discuss ideas.  More importantly, it allows them to be a part of the community in a way that they choose.</p>



<h2>Are We Moving back?</h2>



<p>With the European Union, Japan, Australia, and other countries passing stricter privacy laws, there&#8217;s a growing movement to protect privacy across the world.  While this movement has focused more on large corporations and what they do with personal data, there&#8217;s an underlying fear that&#8217;s likely been there from the beginning.</p>



<p>People are coming to the realization that we gave up too much.</p>



<p>We handed over our names.  And, once we handed over our names, it was a slippery slope to handing over everything else about ourselves.  If you dig deep enough you can find the names of all my cats and when they were all born.</p>



<p>I&#8217;m not sure how I feel about that.  I&#8217;m in too deep at this point.</p>



<p>My parents from 20 years ago would not have liked the idea too much.  My dad just uses YouTube to watch videos on building stuff for the most part today (it took years to stop him sending me email chains), but my stepmom is right there along with everyone else on social networks.</p>



<p>It&#8217;s odd to look back on the past 20 years to see how some of our initial fears surrounding anonymity have transformed.  In another 20 years, we&#8217;ll all be back to using pseudonyms again.  Call me out on it if I&#8217;m wrong.  I do wonder if we&#8217;ll look back at this time and think everyone was crazy for using their real names.</p>



<p>I welcome your anonymous comments on this post.  Just don&#8217;t use &#8220;wanker&#8221; for your handle.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Oct 2019 19:20:04 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:38;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"WPTavern: GNU Project Maintainers Move to Oust Richard Stallman from Leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94714\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:90:\"https://wptavern.com/gnu-project-maintainers-move-to-oust-richard-stallman-from-leadership\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:5486:\"<p>GNU Project maintainers are working to oust Richard Stallman from his position as head of the organization. In a joint <a href=\"https://guix.gnu.org/blog/2019/joint-statement-on-the-gnu-project/\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> published yesterday morning, a collection of 22 GNU maintainers and developers thanked Stallman for his work and declared that he can no longer represent the project:</p>
<blockquote><p>We, the undersigned GNU maintainers and developers, owe a debt of gratitude to Richard Stallman for his decades of important work in the free software movement. Stallman tirelessly emphasized the importance of computer user freedom and laid the foundation for his vision to become a reality by starting the development of the GNU operating system. For that we are truly grateful.</p>
<p>Yet, we must also acknowledge that Stallman’s behavior over the years has undermined a core value of the GNU project: the empowerment of all computer users. GNU is not fulfilling its mission when the behavior of its leader alienates a large part of those we want to reach out to.</p>
<p>We believe that Richard Stallman cannot represent all of GNU.</p></blockquote>
<p><a href=\"https://www.stallman.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Stallman&#8217;s personal website</a> continues to prominently display his intentions to remain in the leadership role. He added the header to his site, following the publication of remarks he made regarding a 17-year old victim of sex trafficker Jeffrey Epstein, which precipitated his <a href=\"https://wptavern.com/gpl-author-richard-stallman-resigns-from-free-software-foundation\" rel=\"noopener noreferrer\" target=\"_blank\">resignation from both MIT and the Free Software Foundation</a>:</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/Screen-Shot-2019-10-07-at-9.44.17-PM.png?ssl=1\"><img /></a></p>
<p>The Stallman saga has continued to grow stranger in the aftermath of his resignations, as many were concerned that he would be homeless after his website featured a notice that he was &#8220;<a href=\"https://web.archive.org/web/20190929052858/https://stallman.org/\" rel=\"noopener noreferrer\" target=\"_blank\">Seeking Housing</a>,&#8221; accompanied by a <a href=\"https://web.archive.org/web/20190929045948/https://stallman.org/seeking-housing.html\" rel=\"noopener noreferrer\" target=\"_blank\">link</a> leading to his specific requirements for a temporary residence. His personal site was also reportedly <a href=\"http://techrights.org/2019/09/29/fsf-defaced-rms/\" rel=\"noopener noreferrer\" target=\"_blank\">vandalized</a> nine days ago with a message that he was stepping down from the GNU.</p>
<p>The defacement with the false GNU resignation message was reverted shortly thereafter on September 30, and replaced with the header saying he continues to be &#8220;Chief GNUisance of the GNU Project&#8221; with no intention of stopping soon. Stallman has not yet publicly acknowledged the statement from the GNU maintainers. He has also not yet responded to our request for comment.</p>
<p>Yesterday the Free Software Foundation (FSF) published a <a href=\"https://www.fsf.org/news/fsf-and-gnu\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> indicating it was re-evaluating its working relationship with the GNU project, which has provided some of its technical infrastructure, fiscal sponsorship, and copyright assignment:</p>
<blockquote><p>GNU decision-making has largely been in the hands of GNU leadership. Since RMS resigned as president of the FSF, but not as head of GNU (&#8220;Chief GNUisance&#8221;), the FSF is now working with GNU leadership on a shared understanding of the relationship for the future. As part of that, we invite comments from free software community members.</p></blockquote>
<p>Stallman responded the next day, indicating he wanted to work with FSF on restructuring the relationship between the two organizations:</p>
<blockquote><p>I recently resigned as president of the FSF, but the FSF continues to provide several forms of crucial support for the GNU Project.  As head of the GNU Project, I will be working with the FSF on how to structure<br />
the GNU Project&#8217;s relationship with the FSF in the future.</p></blockquote>
<p>The FSF maintains some critical responsibilities in that it currently <a href=\"https://en.wikipedia.org/wiki/Free_Software_Foundation#History\" rel=\"noopener noreferrer\" target=\"_blank\">holds the copyrights to enforce the GPL</a>. Stallman has recently called on people to <a href=\"http://techrights.org/2019/10/01/what-stallman-wants/\" rel=\"noopener noreferrer\" target=\"_blank\">continue supporting the FSF&#8217;s work</a>, despite his resignation from the organization.</p>
<p>The small contingency of GNU project maintainers who penned the <a href=\"https://guix.gnu.org/blog/2019/joint-statement-on-the-gnu-project/\" rel=\"noopener noreferrer\" target=\"_blank\">statement</a> published yesterday seem to be on the same page with FSF in its rejection of Stallman&#8217;s leadership. Their message concludes with their intention to overhaul the leadership of the free software movement to be more inclusive of the people who have been alienated by Stallman&#8217;s behavior over the years:</p>
<p>&#8220;We think it is now time for GNU maintainers to collectively decide about the organization of the project. The GNU Project we want to build is one that everyone can trust to defend their freedom.&#8221;</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 08 Oct 2019 04:33:34 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:39;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:96:\"WPTavern: Google Chrome Announces Rollout Plan for Blocking Mixed Content Beginning January 2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94672\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:107:\"https://wptavern.com/google-chrome-announces-rollout-plan-for-blocking-mixed-content-beginning-january-2020\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3405:\"<p>The Google Security Team has <a href=\"https://security.googleblog.com/2019/10/no-more-mixed-messages-about-https_3.html\" rel=\"noopener noreferrer\" target=\"_blank\">announced</a> a timeline for when Chrome will begin blocking <a href=\"https://developers.google.com/web/fundamentals/security/prevent-mixed-content/what-is-mixed-content\" rel=\"noopener noreferrer\" target=\"_blank\">mixed content</a> by default in order to ensure that HTTPS browsing is more secure. Mixed content refers to HTTPS pages that load resources, such as images, videos, stylesheets, and scripts, over HTTP.</p>
<p>The gradual rollout will begin with Chrome 79, which is scheduled for release in December 2019. The browser already blocks mixed scripts and iframes, but this release will add a new setting (that can be toggled on or off) for users to unblock it on a per-site basis.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/site-settings-unblock-mixed-content.png?ssl=1\"><img /></a></p>
<p>The next phase of the rollout will progress with Chrome 80, due in January 2020, where mixed audio and video resources will get auto-upgraded to HTTPS. If they fail to load over HTTPS, Chrome will automatically block them. Mixed images will still load but Chrome will display a “Not Secure” warning in the omnibox next to the URL.</p>
<p>The last phase of the rollout is planned for February 2020. Along with the release of Chrome 81, mixed content images will bet auto-upgraded to HTTPS and Chrome will block them if they fail to load.</p>
<p>The Google Security Team reports that Chrome users now spend more than 90% of their browsing time on HTTPS on both desktop and mobile. The plan to begin blocking mixed content is targeted at addressing insecure holes in SSL implementations of sites that have already made the switch to HTTPS.</p>
<p>WordPress site owners have plenty of time to ensure all their resources load over HTTPS. The official plugin directory has <a href=\"https://wordpress.org/plugins/search/mixed+content/\" rel=\"noopener noreferrer\" target=\"_blank\">several popular plugins</a> that can assist with fixing problems with mixed content. <a href=\"https://wordpress.org/plugins/really-simple-ssl/\" rel=\"noopener noreferrer\" target=\"_blank\">Really Simple SSL</a>, a plugin that is active on more than 3 million sites, has a built-in mixed content scan that shows users what they need to do if they aren&#8217;t seeing the green lock in the omnibar yet. It also includes a &#8220;mixed content fixer&#8221; for the back-end.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/10/mixed-content-scan-really-simple-ssl.png?ssl=1\"><img /></a></p>
<p>Other popular plugins, such as <a href=\"https://wordpress.org/plugins/http-https-remover/\" rel=\"noopener noreferrer\" target=\"_blank\">SSL Mixed Content Fix</a> (20k active installs) and <a href=\"https://wordpress.org/plugins/ssl-insecure-content-fixer/\" rel=\"noopener noreferrer\" target=\"_blank\">SSL Insecure Content Fixer</a> (300k active installs) are focused specifically on fixing these issues and may assist in making other installed plugins compatible with HTTPS. They include tools that will diagnose insecure content and automatically perform basic fixes. The SSL Insecure Content Fixer plugin is also compatible with WordPress multisite and includes a network settings page to set defaults for the entire network.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Oct 2019 19:09:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:40;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"WPTavern: U.S. Supreme Court Denies Domino’s Appeal to Determine Whether Websites Must Be Accessible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94674\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:109:\"https://wptavern.com/u-s-supreme-court-denies-dominos-appeal-to-determine-whether-websites-must-be-accessible\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:6872:\"<p>In what is seen as a win for accessibility advocates, the U.S. Supreme Court denied Domino&#8217;s petition to appeal a lower-court decision on whether the pizza chain&#8217;s website and mobile app must be accessible to those with disabilities. The earlier U.S. 9th Circuit court <a href=\"http://cdn.ca9.uscourts.gov/datastore/opinions/2019/01/15/17-55504.pdf\">ruled that websites fall under</a> Title III of the American with Disabilities Act (ADA).</p>



<p>The original case was brought forth by Guillermo Robles, a blind man, who claimed the Domino&#8217;s website and app did not allow him to place an order in 2016.  Robles, like many other people with disabilities, relies on screen-reader software to use the web.  Despite using such software, he was not able to make an order.</p>



<p>The primary issue of the case was whether the ADA applied to websites or apps in the same way that they applied to brick-and-mortar locations.  Title III specifically points out public places of accommodation but not websites.</p>



<p>The specific <a href=\"https://www.ada.gov/regs2010/titleIII_2010/titleIII_2010_regulations.htm\">section of the ADA</a> related to the case reads as follows:</p>



<blockquote class=\"wp-block-quote\"><p>Section 36.201(a) contains the general rule that prohibits discrimination on the basis of disability in the full and equal enjoyment of goods, services, facilities, privileges, advantages, and accommodations of any place of public accommodation.</p><p>Full and equal enjoyment means the right to participate and to have an equal opportunity to obtain the same results as others to the extent possible with such accommodations as may be required by the Act and these regulations. It does not mean that an individual with a disability must achieve an identical result or level of achievement as persons without a disability.</p></blockquote>



<p>The 9th Circuit decided the ADA also applied to businesses on the internet.</p>



<p>There were three key issues in the case: whether the ADA applied to the website and app, whether Domino&#8217;s had fair notice to comply, and whether the court or the Department of Justice (DOJ) should decide the case.</p>



<p>The DOJ is the body that regulates the ADA. Since it was signed into law in 1990, the DOJ has not created specific guidelines for how businesses can ensure their websites are within the law.</p>



<p>One argument is that it would have been cheaper and easier for Domino&#8217;s to follow accessibility standards such as the Web Content Accessibility Guidelines (WCAG).  Such arguments don&#8217;t address the need for meaningful regulations from a governing body.  The WCAG are not legal guidelines in the U.S. However, the 9th Circuit ruled that the lack of guidelines does not remove Domino&#8217;s responsibility.</p>



<p>Circuit Judge John B. Owens wrote in the <a href=\"https://www.supremecourt.gov/DocketPDF/18/18-1539/102950/20190613153344483_DominosPetitionAppendix.pdf\">9th Circuit decision</a>, &#8220;While we understand why Domino&#8217;s wants DOJ to issue specific guidelines for website and app accessibility, the Constitution only requires that Domino&#8217;s receive fair notice of its legal duties, not a blueprint for compliance with its statutory obligations.&#8221;</p>



<p>The lack of such regulations is why this case was important from Domino&#8217;s standpoint.  While they lost the case, it may further push the need for more specific guidelines for businesses, both large and small, to follow.</p>



<p>The lack of specific regulations could also be seen as <em>a feature rather than a bug</em>, to use a developer phrase.  Government-specific rules are often slow to keep up with the changing nature of the web.  Guidelines that apply one day may need to change soon thereafter.  It also leaves businesses the ability to make their websites accessible via a method of their choice rather than limiting what they can do to potentially bureaucratic rules that are out of touch with the modern web.</p>



<p>At the same time, it could leave smaller business owners without large legal and website development budgets wondering if they could be looking at lawsuits in the future.  Courts were flooded with <a href=\"https://www.3playmedia.com/2019/06/12/2018sweb-accessibility-lawsuits/\">2,285 accessibility lawsuits in 2018</a>, which was nearly triple the 814 cases in 2017.</p>



<h2>What Does This Mean for Website owners in the U.S.?</h2>



<p>In terms of the case, the Supreme Court didn&#8217;t make a ruling.  They denied Domino&#8217;s petition and left the decision of the 9th Circuit in place, which covers much of the western U.S.  In the coming years, more cases will make their way through the courts.  More than likely, case law will continue becoming stronger in favor of making websites compliant with the ADA.</p>



<p>If you run an online business, it&#8217;s past time to make sure your website is accessible.  It could be years before the current law is amended or new ones are written on the legislative level.  The winds of change will likely not favor those with inaccessible websites as more court decisions come down.</p>



<p>In a nutshell, businesses with websites, apps, or other online presences need to make sure all people have access to their goods or services.  While there are no specific guidelines in the U.S., <a href=\"https://www.w3.org/WAI/standards-guidelines/wcag/\">WCAG</a> is the largely agreed-upon standards internationally.</p>



<p>If you&#8217;re a small business owner using WordPress, you should start with a WordPress <a href=\"https://wordpress.org/themes/tags/accessibility-ready/\">theme labeled as accessibility-ready</a>.  It is worth noting that &#8220;accessibility-ready&#8221; does not mean that your website will automatically become accessible.  It simply means that the WordPress theme meets a minimum number of accessibility guidelines.  Custom content on your website should also follow the same guidelines.</p>



<p>Accessibility is not a set-it-and-forget-it type of thing.  It&#8217;s something that business owners need to continually evaluate and make sure that all their customers, regardless of how that person accesses the internet, can enjoy the same services equally.</p>



<p>The official theme review team is working through a long-term plan to <a href=\"https://wptavern.com/wordpress-theme-review-team-initiates-new-long-term-plan-to-make-all-wordpress-org-themes-accessible\">make all themes accessible</a> at WordPress.org.  Many theme businesses outside of WordPress.org also comply with those same guidelines.  If purchasing a theme, you should check with the business beforehand.</p>



<p>As always, if you&#8217;re unsure whether your website meets legal guidelines, you&#8217;ll need to consult a lawyer who specializes in website accessibility.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 07 Oct 2019 18:02:53 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:41;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:51:\"WordPress.org blog: People of WordPress: Alice Orru\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7288\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:66:\"https://wordpress.org/news/2019/10/people-of-wordpress-alice-orru/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:8390:\"<p><em>You’ve probably heard that WordPress is open-source software, and may know that it’s created and run by volunteers. WordPress enthusiasts share many examples of how WordPress changed people’s lives for the better. This monthly series shares some of those lesser-known, amazing stories.</em></p>



<h2><strong>Meet Alice Orru, from Sardinia, Italy.</strong></h2>



<p>Alice Orru was born in Sardinia, an island in the middle of the Mediterranean Sea. As a child, she dreamt of becoming a flight attendant, traveling the world, and speaking many foreign languages.</p>



<p>Unable to meet the height requirements of her chosen profession, Orru ended up choosing a different path in life, following the Italian mantra: “You have to study something that will guarantee a stable and secure job for life.”</p>



<p>The unemployment rate in Sardinia is very high, a challenge shared throughout the surrounding islands. In addition to that, Alice wasn’t that keen on having the same job all her life, as her parents had.</p>



<p>When Orru was 22 she moved to Siena, Tuscany, to finish her studies. That is when she created her first personal blog. The website was built on an Italian platform named Tiscali, which she later migrated to WordPress.com.</p>



<p>After 2 years in Tuscany Orru moved to Strasbourg, France. She studied French and worked several jobs while living there. Her first serious job was in Milan &#8211; working 40 hours/week in the marketing department of a large, international company. She found herself surrounded by ambitious colleagues and a boss who constantly requested extra —unpaid— working hours per day.</p>



<img src=\"https://i0.wp.com/wordpress.org/news/files/2019/10/IMG_2672.jpg?fit=632%2C422&ssl=1\" alt=\"Alice Orru\" class=\"wp-image-7291\" />Alice Orru



<h2>Choices, choices, choices&#8230;</h2>



<p>Alice gave up blogging because she wasn’t feeling inspired enough to write. She questioned whether she really wanted to do that job forever; working 10 hours per day under the neon lights of an office. It forced her to set aside her dreams for the time being, and for a while, she mainly lived for the weekends.</p>



<p>Alice decided to leave the job and moved to Barcelona, Spain, all by herself, in 2012.</p>



<p>After a few months of intense Spanish learning at the university, she found a job in an international clinic as a “Patient Coordinator.” Orru assisted international patients coming to Barcelona for their treatments. She acted as their translator, interpreter and administrative consultant.&nbsp;</p>



<p>Patients came from Italy, France, England, Morocco, Senegal, and several other countries. Alice was so inspired by some of their stories, that she started to write again: She dusted off her WordPress blog and filled it with stories about her new life in Barcelona and some of the women she met at the clinic. “I was feeling stronger and more independent than ever,” Orru expressed.</p>



<h2>Technical issues led to unexpected opportunities</h2>



<p>In the summer of 2015, Alice was writing on her blog and got stuck with a technical problem. While she was searching through the WordPress.com documentation, she saw a pop-up in the bottom right corner of her screen. It was a staff member of Automattic, checking if she needed help. They chatted for a few minutes and the problem was solved. Alice left the chat with one question, though: how did that person on chat find a support job with WordPress?</p>



<p>Alice found the official WordPress job page: <a href=\"http://jobs.wordpress.net/\"><strong>jobs.wordpress.net</strong></a> and noticed a job offer that caught her attention: WP Media, a French startup, was looking for a polyglot and remote customer service teammate for one of their plugins, WP Rocket. She read their requirements: fluency in English, French and possibly other languages, excellent experience with WordPress, and some coding skills.</p>



<p>She knew she didn’t meet all the requirements, but could speak 4 languages, and she had a WordPress blog. She didn’t know anything about PHP, though. Orru had been a WordPress.com user for years and knew she was ready to learn more.</p>



<p>Orru wrote a cover letter and sent her CV. A Skype interview was conducted and several days later she received the news that she had gotten the job!&nbsp;</p>



<h2><strong>A steep learning curve</strong></h2>



<p>The early days in her new job were intense. Alice felt inexperienced but was supported by her teammates. She started studying and reading everything about WordPress for beginners. Initially, she answered easy tickets from customers. All the while her teammates were sending useful material to read, setting up video-calls for 1 to 1 training, and encouraging her the entire time.</p>



<p>Soon, Orru was replying to customers whose first language was either Spanish or Italian in their native language. This was much appreciated and resulted in several happy comments. Until that moment the plugin’s support had been offered only in English and French.</p>



<h2><strong>Finding her way in the WordPress community</strong></h2>



<p>At WordCamp Paris 2016, one of Alice’s teammates introduced her to how the WordPress community collaborated and kept in contact through Slack.</p>



<p>“You speak multiple languages, why don’t you try to contribute to the polyglots team?” he asked.</p>



<p>Alice knew very little about contributing to WordPress. She had only been working for WP Media for 6 months and didn’t feel ready to dive into a new challenge and start also contributing to WordPress.</p>



<p>Yet, curiosity led her to join both the local Italian and the global WordPress Community on Slack. For the first few months, she mainly observed what was happening the channels. Then, she attended WordCamp Milan and met some members of the Italian Polyglots team.</p>



<p>It was love at first string! Laura, one of the <a href=\"https://make.wordpress.org/polyglots/teams/?locale=it_IT\"><strong>General Translation Editors</strong></a> (GTE) for Italy, taught her how to start contributing and translating, following the polyglots guidelines. She also told her about the Italian community’s big efforts to work together, consistently, to boost and grow WordPress related events in Italy.</p>



<p>With her teammates’ encouragement, Orru applied to WordCamps as a speaker and gave her first talk in December 2016 at WordCamp Barcelona. After that, she both spoke at WordCamp Torino on April 2017 and at WordCamp Europe in 2017.</p>



<img src=\"https://i2.wp.com/wordpress.org/news/files/2019/10/aliceorru-wordcamp-europe.jpg?fit=632%2C356&ssl=1\" alt=\"\" class=\"wp-image-7292\" />Alice Orru speaking at WordCamp Europe, in Paris, in 2017



<h2><strong>Dreams evolve, all the time!</strong></h2>



<p>Orru knows that her experiences are not just due to luck. She used her previous skills and passions and adapted them to a new career and life path.</p>



<blockquote class=\"wp-block-quote\"><p>“We all have some skills; and if we don’t know which they are exactly, we should take some time to make a list of the things we’re really good at. With that in mind, just try. Apply. Get involved. Don’t get stuck in the feeling of &#8216;I can’t do it because I don’t know enough&#8217;. So that&#8217;s what I did. Without even realizing it, I started putting into reality the dream of the little girl who was born on an island and wanted to travel and speak different languages.WordPress made this possible.  I’m now part of a big community, and I am proud of it.&#8221;</p><cite>Alice Orru</cite></blockquote>



<hr class=\"wp-block-separator\" />



<div class=\"wp-block-image\"><img src=\"https://i1.wp.com/wordpress.org/news/files/2019/07/heropress_large_white_logo.jpg?resize=109%2C82&ssl=1\" alt=\"\" class=\"wp-image-7025\" width=\"109\" height=\"82\" /></div>



<p><em>This post is based on an article originally published on HeroPress.com, a community initiative created by <a href=\"https://profiles.wordpress.org/topher1kenobe/\">Topher DeRosia</a>. HeroPress highlights people in the WordPress community who have overcome barriers and whose stories would otherwise go unheard.</em></p>



<p><em>Meet more WordPress community members over at </em><a href=\"https://heropress.com/\"><em>HeroPress.com</em></a><em>!</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 05 Oct 2019 04:24:01 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:16:\"Yvette Sonneveld\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:42;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"WPTavern: WooSesh 2019 Scheduled for October 9 and 10: Registration Now Open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94416\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:86:\"https://wptavern.com/woosesh-2019-scheduled-for-october-9-and-10-registration-now-open\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:2715:\"<p><a href=\"https://woosesh.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WooSesh</a> is happening next week on October 9 and 10, and registration is now open. This is the second edition of the virtual WooCommerce event hosted by <a href=\"https://wpsessions.com/\" rel=\"noopener noreferrer\" target=\"_blank\">WPSessions</a>. In addition to presentations focused entirely on e-commerce, the event will include a &#8220;Hallway Track&#8221; that offers opportunities for attendees to connect with each other, along with virtual swag donated by various WordPress companies.</p>
<p>Day 1 will cover a wide range of topics for WooCommerce professionals with a focus on store builders, including sessions on designing with blocks, sales tax, optimizing the checkout experience, and store emails. The first day will also feature a two-hour &#8220;State of the Woo&#8221; keynote address from the WooCommerce team. They plan to discuss case studies, lessons learned, and priorities for the year ahead.</p>
<p>Day 2 will focus on more technical topics for WooCommerce developers, such as &#8220;Custom Tables and the Checkout Bottleneck,&#8221; solving store UX problems, and productizing development work.</p>
<p>The event is being organized by Brian Richards and Patrick Rauland. For the past two years it has been the official successor to the previously held in-person WooConf events. Given how successful WooSesh has been in connecting the WooCommerce community, it&#8217;s easy to see why WooConf has not yet been reinstated.</p>
<p>&#8220;One thing I can say, having helped three WooConfs and both WooSesh&#8217;s, is that a virtual event is a fraction of the cost,&#8221; Rauland said. &#8220;And we had twice as many people show up live for WooSesh compared to an in person event.&#8221;</p>
<p>In 2018, WooSesh had 2,800 registrants and more than 1,400 who participated live during the event. Rauland reported that 900 people watched the keynote address. After the conclusion, 94% of respondents to an attendee survey said they would like to attend again the next year.</p>
<p>Last year attendees could watch all sessions for free as long as they attended at least one presentation during the live event. This year sessions will be free during the event to encourage maximum engagement, and the recordings will be available on WPSessions.com for a fee after its conclusion.</p>
<p>Tickets are free, thanks to sponsors that include WooCommerce, Jilt, and Avalara. Attendees can <a href=\"https://woosesh.com\" rel=\"noopener noreferrer\" target=\"_blank\">register</a> on the website and <a href=\"https://woosesh.com/#schedule\" rel=\"noopener noreferrer\" target=\"_blank\">preview the schedule</a> in their own timezones.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Oct 2019 19:10:24 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:43;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"WPTavern: WordPress.org Bumps PHP Maximum for Plugin Directory to Version 7.2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94637\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:88:\"https://wptavern.com/wordpress-org-bumps-php-maximum-for-plugin-directory-to-version-7-2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:4315:\"<p>The WordPress.org SVN system received a version bump to 7.2 on October 3.  This change means that plugin authors can now use newer PHP syntax in plugins they submit to the official plugin directory.  In the future, the version maximum will match what&#8217;s running on WordPress.org.  </p>



<p>This should be good news for any plugin developers who are using newer PHP syntax.  Previously, authors were able to submit code using newer PHP functions if they had a compatibility check in the same file.  However, newer syntax wasn&#8217;t allowed.</p>



<p>&#8220;The issue was that the Linter (being stuck on 7.0) prevented anyone from checking in code via SVN that used 7.1+ standards,&#8221; said Mika Epstein from the plugin review team.  &#8220;So things like the Spaceship operator would fail on commit and you&#8217;d be told the syntax was invalid. This was holding back certain plugins from committing code into the directory.&#8221;</p>



<p>Epstein first opened a <a href=\"https://meta.trac.wordpress.org/ticket/3791\">ticket to address the issue</a> 13 months ago but said she&#8217;d been quietly asking for a fix for a while longer.</p>



<p>The max PHP version isn&#8217;t listed anywhere in the <a href=\"https://developer.wordpress.org/plugins/wordpress-org/\">plugin guidelines</a>.  Technically, it&#8217;s an SVN limitation on WordPress.org and not something the plugin team chose.  However, for plugin authors, they may not have known about the issue until their plugin was rejected by the system.  They would then message the plugin team about the problem.  &#8220;I may end up putting something in the docs, but it&#8217;s a somewhat uncommon occurrence,&#8221; said Epstein.</p>



<p>This has been an issue for some plugin authors since PHP 7.1 was released, which was December 1, 2016.  &#8220;It was a once a year issue, then twice, and then it inched up to every couple months,&#8221; said Epstein.  &#8220;As of September, at least once a month someone would hit this and complain to plugins.&#8221;</p>



<p>One potential problem with blocking newer PHP code is with plugins that rely on third-party libraries, which may only have security patches in more recent versions.  However, Epstein said that she was not aware of any security issues that resulted from the version limitation.</p>



<p>Andrey &#8220;Rarst&#8221; Savchenko pointed out in the ticket that &#8220;7.2 was released almost two years ago.&#8221;  While he says it&#8217;s an improvement over the previous 7.0 limitation, version 7.2 should not be a hard ceiling for plugins in the repository.</p>



<p>PHP 7.3 was released on December 16, 2018, and PHP 7.4 <a href=\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\">will be released</a> on November 28, 2019.</p>



<p>&#8220;Given PHP&#8217;s poor adoption curves,&#8221; responded Dion Hulse, &#8220;all that this means is that you can&#8217;t release a plugin through WordPress.org that only works on 15% of WordPress sites.  &#8220;You can even use newer functions in PHP if including compat code, just not newer syntax.&#8221;</p>



<p>Plugin author Josh Pollock <a href=\"https://twitter.com/Josh412/status/1100487567236059136\">called awareness to the issue</a> on Twitter in February.  &#8220;Hours later, I&#8217;m downgrading a dependency, because it requires another dependency, which requires PHP 7.1.&#8221;</p>



<p>&#8220;I think we got lucky and there were no bugs,&#8221; Pollock said of downgrading to an earlier version of the dependency.  &#8220;I don&#8217;t think I&#8217;ve used SVN since. I&#8217;m really fortunate that&#8217;s not a part of my life anymore.&#8221;</p>



<p>&#8220;I agree with Rarst,&#8221; said Pollock.  &#8220;We should be allowing for PHP 7 and making it easier for plugins not to support sites on out of date versions of PHP.&#8221;  This echoes the sentiment of other developers who are pushing for WordPress to adopt newer standards or at least allow them to do so in their own plugins in the official directory.</p>



<p>For the majority of plugin authors, this should be a non-issue as long as the SVN system remains updated to match the version of PHP used on WordPress.og.</p>



<p>PHP 7.2 will lose active support on November 30, 2019, and security support on November 30, 2020.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 04 Oct 2019 16:41:19 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:44;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:134:\"WPTavern: Matt Mullenweg and David Heinemeier Hansson Discuss WordPress Market Share, Monopolies, and Power in Open Source Communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94234\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:143:\"https://wptavern.com/matt-mullenweg-and-david-heinemeier-hansson-discuss-wordpress-market-share-monopolies-and-power-in-open-source-communities\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:18041:\"<p>In what began as a heated conversation on Twitter, Automattic CEO Matt Mullenweg and Ruby on Rails creator and Basecamp co-founder David Heinemeier Hansson took to the airwaves to debate opposing viewpoints on market share, monopolies, and power in open source communities. Hansson reacted to a statement Mullenweg made in an interview after <a href=\"https://wptavern.com/automattic-raises-300m-in-series-d-investment-round-valuation-jumps-to-3-billion\" rel=\"noopener noreferrer\" target=\"_blank\">Salesforce Ventures invested $300 million in Automattic</a> last month.</p>
<p>“I think there’s potential to get to a similar market share as Android, which I believe now has 85% of all handsets,&#8221; Mullenweg told <a href=\"https://techcrunch.com/2019/09/19/automattic-ceo-matt-mullenweg-about-raising-300-million-and-the-open-web/\" rel=\"noopener noreferrer\" target=\"_blank\">TechCrunch</a>. &#8220;When you think about it, open source has a virtuous cycle of adoption, people building on the platform and more adoption.&#8221;</p>
<p>Hansson reacted on Twitter, sparking a conversation that received 116 comments.</p>
<p>&#8220;&#8216;We want every website, whether it’s e-commerce or anything to be powered by WordPress&#8217; is a nasty, monopolistic goal,&#8221; he said. &#8220;Listening to Matt muse about 85% marketshare dreams is a real downer. But $300m is a down payment on monopoly dreams.&#8221;</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\">“We want every website, whether it’s e-commerce or anything to be powered by WordPress” is a nasty, monopolistic goal. Listening to Matt muse about 85% marketshare dreams is a real downer. But $300m is a down payment on monopoly dreams. <a href=\"https://t.co/hf4HShISug\">https://t.co/hf4HShISug</a></p>
<p>&mdash; DHH (@dhh) <a href=\"https://twitter.com/dhh/status/1174695189090308096?ref_src=twsrc%5Etfw\">September 19, 2019</a></p></blockquote>
<p></p>
<p>In an episode titled &#8220;<a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\" rel=\"noopener noreferrer\" target=\"_blank\">Open Source and Power</a>,&#8221; Mullwenweg joined Hansson on the Rework podcast for a more in-depth discussion that dives deeper into Mullenweg&#8217;s remarks on WordPress&#8217; potential market share.</p>
<p>Hansson contends that he would like to see a very large, rich ecosystem of providers of tools and services on the web and expressed concern about WordPress growing many times faster than any of its competitors.</p>
<p>Mullenweg countered that unique domains are not the only measure of a monopoly. He also referenced Shopify as having a thriving business with a small percentage of the e-commerce platform market share.</p>
<p>&#8220;Even though open source can become a bit of a standard, it doesn&#8217;t prevent others from starting on it,&#8221; Mullenweg said. &#8220;The truth is if I had an evil hat on &#8211; let&#8217;s say I started doing evil monopoly stuff, people could easily fork the software &#8211; and they would. There&#8217;s a checks and balances there.&#8221;</p>
<p>This is a <a href=\"https://wptavern.com/wordpress-governance-project-looks-for-new-leadership\" rel=\"noopener noreferrer\" target=\"_blank\">classic power dynamic in BDFL-led open source projects</a> where the potential for a fork checks the project leader&#8217;s actions.</p>
<p>Hansson challenges Mullenweg&#8217;s assertion that a fork would be a threat to the project, arguing that this power is illusionary when a project has become as dominant as WordPress:</p>
<blockquote><p>Technically someone could fork Ruby on Rails tomorrow. What is the likelihood that fork is going to succeed? Once you have this juggernaut of network effects, WordPress is growing so much faster than anyone else, the gravitational pull is huge. Should someone fork it, introducing incompatibilities, what is the likelihood that is going to be a serious contender? From me, my assessment is extremely low, just the same as if someone was to fork Ruby on Rails today and call it Snoopy on Pails. The odds of that being anything other than a curiosity for two days on Hacker News is extremely low.</p></blockquote>
<p>The notion of Snoopy on Pails injected a bit of humor into the debate that remained high intensity for the hour-long discussion, but it also illustrated Hansson&#8217;s point regarding the absurdity of any kind of WordPress fork becoming a real threat to the project&#8217;s momentum.</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\">it was a privilege to have <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> come on <a href=\"https://twitter.com/reworkpodcast?ref_src=twsrc%5Etfw\">@reworkpodcast</a> and debate <a href=\"https://twitter.com/dhh?ref_src=twsrc%5Etfw\">@dhh</a> on tech monopolies and power dynamics in open source: <a href=\"https://t.co/Aewq4QTwFe\">https://t.co/Aewq4QTwFe</a>. Also thanks to <a href=\"https://twitter.com/AdamStddrd?ref_src=twsrc%5Etfw\">@AdamStddrd</a> for making this graphic that will make sense if you listen to the episode <img src=\"https://s.w.org/images/core/emoji/12.0.0-1/72x72/1f603.png\" alt=\"😃\" class=\"wp-smiley\" /> <a href=\"https://t.co/4cqZpX2uJk\">pic.twitter.com/4cqZpX2uJk</a></p>
<p>&mdash; Wailin Wong (@VelocityWong) <a href=\"https://twitter.com/VelocityWong/status/1179025482416820224?ref_src=twsrc%5Etfw\">October 1, 2019</a></p></blockquote>
<p></p>
<p>&#8220;Open source can provide a veil over true power and who has that power, and I would argue that WordPress being in the position that it is, a third of all sites, is tremendous power,&#8221; Hansson said. &#8220;Even if that power is somewhat distributed, it&#8217;s still very much so located mostly with the company backing that engine and that you built a commercial business on top of it that even uses the name, goes even further to say there&#8217;s a lot of power here.</p>
<p>&#8220;Why would venture capitalists invest half a billion dollars into WordPress if they didn&#8217;t see Automattic as a company as having a lot of power over WordPress? The whole reason someone is able to raise that kind of money is off the back of someone who can pitch: &#8216;We have over a third of all websites on the internet and we think we can get to 85%.&#8217; That&#8217;s a very compelling venture story.&#8221;</p>
<p>Mullenweg counters that if a Rails fork couldn&#8217;t attract a lot of users, that speaks to the Hansson&#8217;s stewardship of the project. He said that a typical WordPress release has 400-500 contributors with an estimated 10% from Automattic.</p>
<p>&#8220;If 200 of those went someplace else because I did something really brain dead, that would be a pretty serious competitor, and there are some examples of that in open source history,&#8221; Mullenweg said. He contended that forks with enough weight behind them can become very interesting. On this point the two project leaders remained at odds.</p>
<h3>How Open Source Market Dominance Impacts Diversity of Tools and Services on the Web</h3>
<p>One of Hansson&#8217;s chief concerns with WordPress reaching 85% market share is what he described as the &#8220;death of diversity.&#8221; He perceives this pursuit of increased adoption as growing open source in monopolistic ways.</p>
<p>&#8220;We&#8217;re living through an era right now where a small handful of big tech companies are exerting a completely undue amount of power over the internet, over discourse, over all sorts of things, and that&#8217;s something we should try to recoil from and at least learn from, not aspire to building more of,&#8221; Hansson said. &#8220;That&#8217;s what got this going &#8211; why isn&#8217;t WordPress in a great place only being a third of all the sites of the internet. Why does it need to get to 85%? Why does its growth need to be that explosive and that wild?&#8221;</p>
<p>This is a question many in the WordPress community have asked in the past. Does the mission of democratizing publishing necessitate such a zealous drive towards market dominance?</p>
<p>&#8220;I don&#8217;t want to see this concentration of power in one engine, no matter how good it is,&#8221; Hansson said.</p>
<p>It is at this juncture that Mullenweg revealed more of his vision for WordPress becoming the &#8220;operating system of the web,&#8221; an idea he has floated several times over the past few years.</p>
<p>&#8220;You have referred to WordPress a lot of times as blogging,&#8221; Mullenweg said. &#8220;I think of it more like a platform. If you look at how a lot of people are building on it, they use WordPress to bootstrap something that doesn&#8217;t look like WordPress at all. It might not even have a website. It might be powering just an API. It might be a headless or decoupled installation. It could be a store.&#8221;</p>
<p>He likened the idea to Apache and nginx having a dominant market share (<a href=\"https://www.datanyze.com/market-share/web-and-application-servers/apache-http-server-market-share\" rel=\"noopener noreferrer\" target=\"_blank\">55%</a> and <a href=\"https://www.datanyze.com/market-share/web-and-application-servers/nginx-market-share\">23%</a> respectively) in the server space.</p>
<p>&#8220;That doesn&#8217;t prevent the different types of websites that are built on it,&#8221; Mullenweg said. &#8220;If nginx got to 80 or 85%, that wouldn&#8217;t prevent the diversity or what people could put on their websites. WordPress could get to 85% and it wouldn&#8217;t mean that there&#8217;s any sort of monoculture or lack of diversity. If anything, it would allow people to focus more on what&#8217;s different and not recreating the WYSIWYG, the user system, the login, all that stuff we have all built a million times and you just don&#8217;t need to anymore, if something like WordPress solves your needs.&#8221;</p>
<p>Hansson asked what it would look like if 85% of the web ran on WordPress, a question that the community behind the project hasn&#8217;t deeply examined yet. He encouraged listeners to consider what they want the internet to look like in the future:</p>
<blockquote><p>What is the future I&#8217;d like to live in? What does a healthy, open, free internet look like? To me it looks like an internet with tons of different providers, tons of different tools, and what we collaborate around is protocols, not consolidation of software market share, that gives individuals and companies or even projects outsized power to dictate the matters of the internet.</p></blockquote>
<p>Matt clarified that his comments on an 85% market share are not a goal, but rather a &#8220;trailing indicator&#8221; in the quest to create the best possible experience for developers and users. A growing market share is a signal of adoption in that sense, not a goal in itself.</p>
<h3>WordPress Community Reactions to the Debate</h3>
<p>After the initial exchange on Twitter, the broader tech community seemed delighted to hear Mullenweg and Hansson square off in a civil debate on topics that affect so many people working on the web. The conversation touched on a lot of the friction points in the WordPress ecosystem with Automattic being one of the most powerful companies driving WordPress&#8217; market share. Many listeners were grateful for answers to questions they have had for years.</p>
<blockquote class=\"twitter-tweet\">
<p lang=\"en\" dir=\"ltr\">Not sure <a href=\"https://twitter.com/dhh?ref_src=twsrc%5Etfw\">@dhh</a> realizes it, but he spoke for hundreds if not thousands of WordPress community members that have had similar questions for <a href=\"https://twitter.com/photomatt?ref_src=twsrc%5Etfw\">@photomatt</a> spanning the last few years. Most aren’t afforded the same opportunity or carry the same clout to have it.  <a href=\"https://t.co/z7wSIGJKAZ\">https://t.co/z7wSIGJKAZ</a></p>
<p>&mdash; Matt Medeiros (@mattmedeiros) <a href=\"https://twitter.com/mattmedeiros/status/1179201126878629888?ref_src=twsrc%5Etfw\">October 2, 2019</a></p></blockquote>
<p></p>
<p>However, the idea of WordPress as web infrastructure and the level of market dominance (85%) discussed in the podcast are controversial and even off-putting for some who are deeply invested in the platform.</p>
<p>&#8220;Matt appears to think of WordPress as infrastructure for the web, in the same way that Google and Facebook think of themselves as infrastructure for the web,&#8221; Morten Rand-Hendriksen said.</p>
<p>&#8220;In the conversation about the dangers of market control, monopolization, and monoculture, Matt says, &#8216;We are not a grain, we are the soil.&#8217; The only way to interpret that from my position is &#8216;WordPress is not a thing on the web. It is the web,&#8217; i.e. infrastructure. A future where WP is web infrastructure is something I think very few people actually want, open source or not.&#8221;</p>
<p>On the podcast, Mullenweg argued that open source allows for competition in a way proprietary software does not, but Rand-Hendriksen said he sees this as a logical fallacy.</p>
<p>&#8220;He talks at the same time about WP being infrastructure and powering 85% of the web AND about this being a reason for others to fight it with other solutions,&#8221; he said. &#8220;So monopolization leads to competition somehow. I don&#8217;t think WordPress is infrastructure, or that it should power 85% of the web, especially after hearing this conversation.</p>
<p>&#8220;If we truly believe in this idea of open source as diversification and forking, WP should actively support other projects and try to not be the dominant force on the web. WP is not infrastructure, it is very much a grain that has become a monoculture.&#8221;</p>
<p>Matt Medeiros, host of the <a href=\"http://youtube.com/themattreport\" rel=\"noopener noreferrer\" target=\"_blank\">Matt Report podcast</a> focused on WordPress business and entrepreneurs, said that while the conversation answered a lot of questions, it left him wanting more.</p>
<p>&#8220;The cloud of uncertainty that hangs above a large portion of this community is directly formed from lack of clear communication in both <a href=\"http://WordPress.org\">WordPress.org</a> and how Automattic + Jetpack move in lockstep with the open source project,&#8221; Medeiros said. &#8220;As we see hundreds of millions of dollars invested, with billions of dollars of valuation going to a single company, surely the optics leave one wondering how all of this gets repaid to investors?&#8221;</p>
<p>Automattic invariably comes under more public scrutiny regarding its investments due to having the WordPress project lead as its CEO. One interesting observation Mullenweg made during podcast is that Automattic is just one of many larger players that make up the the WordPress economy, which he has previously estimated at $10 billion/year.</p>
<p>&#8220;Automattic makes probably 2-3% of the revenue in the WordPress world,&#8221; Mullenweg said. &#8220;There are companies like GoDaddy, which might not contribute very much back to core, but probably have 3 or 4 times the number of subscribers than us running WordPress. I think about that a lot. I want to grow the whole ecosystem, not just our slice of it.&#8221;</p>
<p>Revenue is not always equal to influence, and a good portion of the end of the podcast tackled questions about power and leadership in open source.</p>
<p>&#8220;David&#8217;s questions are spun from the threads that fear monopoly on the web, as much as we fear a singular rule of decision making in the open source project,&#8221; Medeiros said. &#8220;I think David did well at challenging Matt&#8217;s view on the desire of world domination and how undesirable it is to earn the title of Benevolent Dictator &#8212; but it left me wanting more. For example, in an attempt to throw a curveball, Matt pointed out, the investment is made in Automattic &#8212; not WordPress &#8212; a point so opaque it didn&#8217;t fool David, but didn&#8217;t have him pressing any deeper.</p>
<p>&#8220;Had David viewed this conversation through the lens of our community, he would know that Automattic and WordPress.com enjoy the full benefit of leveraging the WordPress brand, a brand protected by a foundation that Matt himself founded, which may have guided the podcast episode into the ethics of it all.&#8221;</p>
<p>While Mullenweg&#8217;s claim that &#8220;WordPress belongs to you as much as it belongs to anyone else&#8221; is true in the sense that the software is freely available to be used and modified by anyone, the full power of <a href=\"http://wpandlegalstuff.com/using-wordpress-trademarks-business-product-service/\" rel=\"noopener noreferrer\" target=\"_blank\">leveraging the WordPress brand</a> does not belong to everyone.</p>
<p>&#8220;I don&#8217;t think Matt would have been willing to have this kind of conversation with me or most members from the the general community, so I&#8217;m glad someone of David&#8217;s clout was able to engage here,&#8221; Medeiros said. &#8220;I do sympathize with all that Matt is responsible for and it&#8217;s not a challenge I think I&#8217;d be up for, given the opportunity. I love this community and want to see people stay, contribute, and flourish &#8212; not walk away because they felt unheard. DHH isn&#8217;t the hero we asked for, but he&#8217;s the hero we need right now. Hopefully he continues to keep a watchful eye over where WordPress is heading.&#8221;</p>
<p>If you only listen to one podcast this week, <a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\" rel=\"noopener noreferrer\" target=\"_blank\">Hansson&#8217;s conversation with Mullenweg</a> is an invigorating battle of opposing open source ideals held as a respectful exchange. In defending their positions, both reveal how their experiences of the early days of the web shaped their ideologies and approaches to open source project leadership and commercialization. Conversations like these are rare but long overdue, as the WordPress community considers its growing influence on the future of the web.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 18:59:47 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:45;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"WPTavern: WordPress Theme Review Team Brings Back Review Shindigs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94599\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://wptavern.com/wordpress-theme-review-team-brings-back-review-shindigs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3730:\"<p>The WordPress theme review team (TRT) is kicking off a review weekend October 5 and will begin at 10:00 Coordinated Universal Time (UTC).  These events, called &#8220;review shindigs,&#8221; are marathon sessions where the team joins together to review themes and teach best practices.  The current plan is to hold the event on the first Saturday of every month.</p>



<p>&#8220;The goal of the review weekend is to get together and do as many quality reviews as possible,&#8221; wrote Carolina Nymark, one of the team&#8217;s review representatives, in the <a href=\"https://make.wordpress.org/themes/2019/10/03/review-weekend\">event&#8217;s announcement</a>.  Events sometimes have different goals, depending on what the team needs to work on at the time.  </p>



<p>Most of the event will happen over the team&#8217;s <a href=\"https://wordpress.slack.com/messages/themereview\">Slack channel</a>.  They will also hold a live presentation or Q&amp;A on Zoom at 13:00 UTC.  Anyone is welcome to attend (the Zoom link will be provided in Slack).  This will help teach those who are interested in how to perform reviews and check common issues.  Anyone attending is also able to submit topics for discussion in the comments on the announcement post.</p>



<p>The TRT originally <a href=\"https://make.wordpress.org/themes/2019/09/24/meeting-notes-for-tuesday-24th-september-2019/\">announced plans</a> for the event after the last team meeting, but it was overshadowed by other news, such as the <a href=\"https://wptavern.com/theme-review-team-restructures-into-project-representatives\">team moving to a flat structure</a>.  &#8220;Not sure if anyone but myself will be there,&#8221; joked Nymark.  &#8220;It&#8217;s short notice.  Some of the team reps already had other plans.&#8221;</p>



<p>Anyone from the WordPress community is allowed to participate in the event by simply commenting on a ticket without being assigned a review.  Nymark provided links on <a href=\"https://make.wordpress.org/themes/handbook/get-involved/become-a-reviewer/\">how to become a reviewer</a> and the team&#8217;s <a href=\"https://make.wordpress.org/themes/handbook/get-involved/onboarding-for-new-reviewers/\">reviewer onboarding process</a> to get new reviewers started.</p>



<p>Review shindigs can help new reviewers because it puts them in touch with more experienced reviewers at a time when they know someone will be online to answer questions.  They&#8217;re also a team-building exercise where people can join together and work toward a common goal.</p>



<p>Currently, <a href=\"https://themes.trac.wordpress.org/\">214 tickets</a> are awaiting review. A successful event would significantly cut that number down.</p>



<h2>Events From the Past</h2>



<p>Theme review shindigs have seen varying levels of success over the years.  In the TRT&#8217;s earliest days, review gatherings were regular events and helped keep the ever-growing ticket queue under control.  Participation waned over time as leaders within the team switched to other projects or no longer had time to run the events.  Proposals to bring back them back have not gone far in the last couple of years.</p>



<p>The last TRT shindig was a <a href=\"https://make.wordpress.org/themes/2016/12/05/december-shindig-recap/\">December 2016 event</a> that saw over 50 participants.  Reviewers worked on 108 tickets throughout the weekend.  The event also coincided with contributor day at WordCamp US, which helped bump up participation numbers.</p>



<p>Jose Castaneda, Cristiano Zanca, Benjamin Lu, and Afzaal Ahmed held a live stream that covered how to load scripts and styles in themes in the previous review event.</p>



<div class=\"wp-block-embed__wrapper\">

</div>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 18:29:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:46;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:27:\"Matt: Debating OSS with DHH\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://ma.tt/?p=50262\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:44:\"https://ma.tt/2019/10/debating-oss-with-dhh/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:931:\"<p>The other week I ended up going back and forth in tweets with <a href=\"https://dhh.dk/\">David Heinemeier Hansson</a>, it wasn&#8217;t going anywhere but he graciously invited me to their podcast and we were able to expand the discussion in a way I found really refreshing and mind-opening.</p>



<p>DHH and I have philosophies around work and open source that I believe overlap 95% or more, so that makes where we have differences all that more interesting to mine. Although we would see each other logged into the same server 15 years ago, we haven&#8217;t actually spoken directly until this podcast started, but the conversation flowed so naturally you&#8217;d think we have been talking since then.</p>



<p>Check out the <a href=\"https://rework.fm/open-source-and-power-with-matt-mullenweg/\">episode on Open Source and Power on the Rework Podcast</a>, hopefully you enjoy listening as much as we enjoyed recording it.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 03 Oct 2019 00:04:54 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"Matt\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:47;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"WPTavern: First Look at PHP 7.4 for WordPress Developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94552\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://wptavern.com/first-look-at-php-7-4-for-wordpress-developers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7152:\"<p>PHP 7.4 is slated for release on November 28, 2019.  WordPress 5.3 will also <a href=\"https://core.trac.wordpress.org/ticket/47783\">include several commits</a> that address deprecated features.</p>



<p>It&#8217;s unlikely that most WordPress plugin and theme developers will be able to use the new PHP 7.4 features for a while except when working on setups where they have some measure of control over the environment.  Given WordPress&#8217; reluctance to bump the minimum PHP version to the latest supported versions, it could be years before it&#8217;s safe to use new features.  However, developers should make sure their plugins and themes are compatible with 7.4.  It&#8217;s also good practice to keep up with current features.</p>



<p>WordPress 5.2 <a href=\"https://wordpress.org/news/2019/05/jaco/\">bumped the minimum requirement</a> to PHP 5.6 with a recommendation of PHP 7.3.  The following is the breakdown for current <a href=\"https://wordpress.org/about/stats/\">PHP usage stats</a> for WordPress installs:</p>



<ul><li>PHP 7.3 &#8211; 9.6%</li><li>PHP 7.2 &#8211; 22.2%</li><li>PHP 7.1 &#8211; 13.5%</li><li>PHP 7.0 &#8211; 14.9%</li><li>PHP 5.6 &#8211; 25.7%</li></ul>



<p>Currently, PHP 7.2 and 7.3 are the only versions receiving active support.  PHP will drop security support for version 7.1 on December 1.</p>



<h2>New Features</h2>



<p>PHP 7.4 includes a number of <a href=\"https://www.php.net/manual/en/migration74.php\">new features</a> that will make writing code easier.  The following is a small overview of some of the features that will likely be useful for WordPress plugin and theme authors.</p>



<h3>Typed Properties</h3>



<p>PHP first introduced type hinting in 5.0 and has continued improving the feature.  PHP 7.0 introduced return type declarations.  PHP 7.4 steps it up a notch and allows developers to declare types for class properties.  This lets developers make sure the type of data assigned to a specific property is always that data type.</p>



<p>In the following example, the <code>$id</code> property can only be assigned an integer and the <code>$title</code> property a string.  Attempting to assign the wrong data type will result in a fatal error if strict types are declared.  Otherwise, PHP will coerce the value to the correct type.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
class Event {

    public int $id;

    public string $title;
}
</pre>


<h3>Arrow Functions</h3>



<p>Many developers have been clamoring for arrow functions similar to JavaScript. They are pretty sweet to use.  However, PHP&#8217;s arrow functions, also called &#8220;short closures,&#8221; are slightly different.  PHP 7.4 introduces the <code>fn</code> keyword (now a reserved keyword).  Short closures can only contain one expression and have no <code>return</code> keyword.  They&#8217;re not quite as powerful as their JavaScript cousins, but they do offer a quick solution for some scenarios.</p>



<p>For example, the following code snippet shows two different ways to build an array of user emails from a collection of user objects.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
// Old way, but still acceptable.
$value = array_map( function( $user ) {
    return $user-&gt;user_email;
}, $users );

// New way.
$value = array_map( fn( $user ) =&gt; $user-&gt;user_email, $users );
</pre>


<h3>Unpacking Inside of Arrays</h3>



<p>Argument unpacking was <a href=\"https://www.php.net/manual/en/migration56.new-features.php\">introduced in PHP 5.6</a>, so this may still be unfamiliar territory for many developers in the WordPress space.  It&#8217;s been an invaluable feature in some of my projects.</p>



<p>PHP 7.4 allows developers to unpack an array within an array.  This should be faster than <code>array_merge()</code> because the spread operator (<code>...</code>) is a language construct rather than a function.</p>



<p>Consider the following example of injecting an array of two colors within a larger array of colors.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
$colors_a = [ \'green\', \'blue\' ];

$colors_b = [ \'red\', ...$colors_a, \'yellow\', \'purple\' ];

// [ \'red\', \'green\', \'blue\', \'yellow\', \'purple\' ];
</pre>


<h3>Null Coalescing Assignment Operator</h3>



<p>The null coalescing assignment operator is a shorthand way of combining an <code>isset()</code> check with a ternary operator.</p>



<p>The following example shows how to check the <code>$product[\'id\']</code> variable.  If it&#8217;s set, do nothing.  Else, assign it the value on the right.  You can see the evolution of the code between PHP versions.  It&#8217;s much simpler to write in 7.4.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
// Pre-PHP 7.0.
$product[\'id\'] = isset( $product[\'id\'] ) ? $product[\'id\'] : 0;

// PHP 7.0.
$product[\'id\'] = $product[\'id\'] ?? 0;

// PHP 7.4.
$product[\'id\'] ??= 0;
</pre>


<h2>Deprecated Features</h2>



<p>PHP 7.4 will deprecate several features.  Plugin and theme authors will want to <a href=\"https://www.php.net/manual/en/migration74.deprecated.php\">consult the complete list</a> to determine whether they should update any outdated code.  I cherry-picked a few items that I&#8217;ve seen in plugin and theme code over the last few years.  Most other deprecated features are unlikely in current code bases.</p>



<h3>Nested Ternary Operators Without Parenthesis</h3>



<p>Nested ternary operators are generally something you should avoid as a developer.  Seriously.  Just don&#8217;t write them.  They&#8217;re tough to follow and are prone to bugs due to human error.  However, if you&#8217;re going to throw caution to the wind and dismiss good advice, at least use parenthesis.  PHP 7.4 deprecated nested ternaries without them.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
// Not OK (deprecated).
$value = $a ? $b : $c ? $d : $e;

// OK.
$value = ( $a ? $b : $c ) ? $d : $e;

// OK.
$value = $a ? $b : ( $c ? $d : $e );
</pre>


<h3>Using array_key_exists() on Objects</h3>



<p>Developers should not use <code>array_key_exists()</code> on objects simply because objects are not arrays.  Instead, use the more appropriate <code>property_exists()</code> function or <code>isset()</code>.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
// Not OK (deprecated).
if ( array_key_exists( $property, $object ) ) {}

// OK.
if ( property_exists( $object, $property ) ) {}

// OK.
if ( isset( $object-&gt;$property ) ) {}
</pre>


<h3>Array and String Offset Access With Curly Braces</h3>



<p>Using curly braces for array and string offset access is a bit more of a rarity, but I&#8217;ve seen it in the wild a couple of times.  Make sure you&#8217;re using square brackets such as <code>[]</code> instead of curly brackets like <code>{}</code>.</p>


<pre class=\"brush: php; gutter: false; title: ; wrap-lines: false; notranslate\">
// Not OK (deprecated).
$value = $a{ $key };

// OK.
$value = $a[ $key ];
</pre>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 18:16:27 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Justin Tadlock\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:48;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"WPTavern: BuddyPress 5.0 Introduces BP REST API, Paving the Way for Blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://wptavern.com/?p=94453\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://wptavern.com/buddypress-5-0-introduces-bp-rest-api-paving-the-way-for-blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:3919:\"<p><a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-le-gusto/\" rel=\"noopener noreferrer\" target=\"_blank\">BuddyPress 5.0.0</a> “Le Gusto” was released this week with the long-awaited BP REST API, a new Invitations API, and BuddyPress info on the Site Health screen. The release was named for a favorite pizza restaurant in Fortaleza, Brazil, where BP REST API contributor and core committer <a href=\"https://profiles.wordpress.org/espellcaste/\" rel=\"noopener noreferrer\" target=\"_blank\">Renato Alves</a> resides.</p>
<p>The new REST API is <a href=\"https://developer.buddypress.org/bp-rest-api/\" rel=\"noopener noreferrer\" target=\"_blank\">fully documented</a> and includes endpoints for members, groups, activities, private messages, screen notifications and extended profiles.</p>
<p>The first feature powered by the new API is an improved interface for managing group members. It enables administrators to quickly search for specific members to promote, demote, ban, or remove.</p>
<p><div class=\"wp-video\"><!--[if lt IE 9]><script>document.createElement(\'video\');</script><![endif]-->
<a href=\"https://wptavern.com/wp-content/uploads/2019/06/5zJCxp2ARb.mp4\">https://wptavern.com/wp-content/uploads/2019/06/5zJCxp2ARb.mp4</a></div></p>
<p>BuddyPress 5.0 also includes a new <a href=\"https://bpdevel.wordpress.com/2019/09/16/new-invitations-api-coming-in-buddypress-5-0/\" rel=\"noopener noreferrer\" target=\"_blank\">BP Invitations API</a> to help developers better manage group invites and membership requests.</p>
<p>BuddyPress site administrators may notice <a href=\"https://wptavern.com/buddypress-5-0-to-display-debug-info-in-the-new-site-health-info-screen\" rel=\"noopener noreferrer\" target=\"_blank\">a new panel in the Site Health Info screen</a>, containing plugin-specific debug information that may be useful when seeking help in the forums.</p>
<p>This release <a href=\"https://wptavern.com/buddypress-5-0-to-update-password-control-to-match-wordpress\" rel=\"noopener noreferrer\" target=\"_blank\">updates the BP Nouveau template pack</a> to use the same password control as the one used in WordPress core. It provides a more consistent interface for users when setting their passwords on the registration page and on the user’s general settings page.</p>
<h3>Blocks Are Coming to BuddyPress</h3>
<p>The BP REST API offers a myriad of opportunities for developers to create new interactive features and front-end experiences, as well as improve performance by replacing AJAX calls. It also opens up the world of block creation. BP core contributors and community developers will have a much easier time creating blocks, since Gutenberg mainly uses REST.</p>
<p>In anticipation of BP blocks, <a href=\"https://wptavern.com/buddypress-5-0-to-add-category-for-storing-buddypress-blocks\" rel=\"noopener noreferrer\" target=\"_blank\">5.0 includes a new panel in the block inserter</a> that allows developers to organize their custom blocks under a BuddyPress category.</p>
<p><a href=\"https://i0.wp.com/wptavern.com/wp-content/uploads/2019/08/buddypress-blocks-panel.png?ssl=1\"><img /></a></p>
<p>BuddyPress 6.0 <a href=\"https://buddypress.trac.wordpress.org/ticket/8048\" rel=\"noopener noreferrer\" target=\"_blank\">may include core blocks for specific components</a> and core blocks may ultimately replace the plugin&#8217;s existing widgets. Contributors are still discussing which blocks to begin building. They are looking to get community feedback on blocks that will be the most useful, particularly from BuddyPress theme developers. The team <a href=\"https://bpdevel.wordpress.com/2019/10/01/bp-dev-chat-agenda-october-2-2019/\" rel=\"noopener noreferrer\" target=\"_blank\">plans to discuss 6.0 release priorities</a> during the BP core dev chat on <a href=\"https://www.timeanddate.com/worldclock/fixedtime.html?iso=20191002T1900\" rel=\"noopener noreferrer\" target=\"_blank\">October 2, 2019, at 1900 UTC</a>.</p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 11:06:21 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:13:\"Sarah Gooding\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:49;a:6:{s:4:\"data\";s:13:\"
	
	
	
	
	
	
\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:2:{s:0:\"\";a:5:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"WordPress.org blog: The Month in WordPress: September 2019\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:34:\"https://wordpress.org/news/?p=7280\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://wordpress.org/news/2019/10/the-month-in-wordpress-september-2019/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:7584:\"<p>September has been a particularly busy month in the WordPress community—a lot of important work has been done as everyone in the project works towards an upcoming major release. Read on to find out more about this and everything else that has been going on over the past month.</p>



<hr class=\"wp-block-separator\" />



<h2>WordPress 5.2.3 Security and Maintenance Release</h2>



<p>Early in September, <a href=\"https://wordpress.org/news/2019/09/wordpress-5-2-3-security-and-maintenance-release/\">version 5.2.3 of WordPress was released</a> as a security and maintenance release. Sixty-two individuals contributed to its 29 fixes and enhancements.</p>



<p>The security issues fixed in this release owe thanks to numerous people who disclosed them responsibly. You can read more about the vulnerability reporting process <a href=\"https://make.wordpress.org/core/handbook/testing/reporting-security-vulnerabilities/\">in the Core handbook</a>.</p>



<p>Want to get involved in building WordPress Core? Follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>WordPress 5.3 Enters Beta</h2>



<p>WhileWordPress 5.3 is slated for release on November 12, it has already entered the beta phase with <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-2/\">the second beta release being made available</a> at the end of September. As this is a major release, it will feature a number of new features and enhancements, including <a href=\"https://make.wordpress.org/core/2019/09/19/whats-new-in-gutenberg-18-september/\">significant improvements to the block editor</a>, <a href=\"https://make.wordpress.org/core/2019/09/25/whats-new-in-site-health-for-wordpress-5-3/\">updates to the Site Health component</a>, <a href=\"https://make.wordpress.org/core/2019/09/24/new-block-apis-in-wordpress-5-3/\">new block APIs</a>, <a href=\"https://make.wordpress.org/core/2019/09/23/core-widgets-new-aria-current-attribute-in-wordpress-5-3/\">accessibility updates</a>, and <a href=\"https://wordpress.org/news/2019/09/wordpress-5-3-beta-1/\">much more</a>.</p>



<p>You can test the 5.3 beta release by installing <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">the WordPress Beta Tester plugin</a> on any WordPress site, although as this is software that is currently in development, we don’t recommend installing it on a live site.</p>



<p>Want to get involved in building this release? <a href=\"https://wordpress.org/plugins/wordpress-beta-tester/\">Test the beta</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>Date/Time Component Improvements</h2>



<p>For over a year, contributors involved in <a href=\"https://make.wordpress.org/core/components/date-time/\">the Date/Time component</a> of WordPress Core have been working hard on the “wp_date” project. The goal of this project is to fix and streamline the way that Core handles times and dates throughout the platform.</p>



<p>This ambitious project has seen incremental changes over the last few Core releases. The upcoming 5.3 release <a href=\"https://make.wordpress.org/core/2019/09/23/date-time-improvements-wp-5-3/\">will include the final and most significant changes</a> to the component, bringing much-needed stability to time handling in WordPress Core.</p>



<p>Want to get involved in the Date/Time component of WordPress Core? <a href=\"https://make.wordpress.org/core/components/date-time/\">Learn more about it</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core-datetime channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>New Theme Review Team Structure</h2>



<p>After recent discussions around the goals of the Theme Review team, <a href=\"https://make.wordpress.org/themes/2019/09/24/new-theme-review-team-structure/\">some changes have been made</a> to the leadership structure of the team. The team leads are now ‘representatives’ of different areas of the work that they do. This flat structure allows for representatives to work in more loosely defined areas so they contribute to the team in more diverse ways, and helps the team to be more focused on setting and achieving their goals. The new structure is outlined <a href=\"https://make.wordpress.org/themes/handbook/about/members/\">in the team handbook</a>.</p>



<p>Want to get involved in reviewing themes for WordPress? Follow <a href=\"https://make.wordpress.org/themes/\">the Theme Review team blog</a>, and join the #themereview channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<h2>New Default Theme: Twenty Twenty</h2>



<p>The upcoming 5.3 release will also include <a href=\"https://make.wordpress.org/core/2019/09/06/introducing-twenty-twenty/\">a new default theme for WordPress</a>, <em>Twenty Twenty</em>. This theme will have a strong focus on readability and accessibility while being optimized for the block editor that first shipped with WordPress 5.0.</p>



<p>Development of <em>Twenty Twenty</em> has been going quickly, with <a href=\"https://make.wordpress.org/core/2019/09/30/twenty-twenty-update/\">a recent update</a> showing more of the design and layouts that you can expect when the theme is released with WordPress 5.3 in November.</p>



<p>Want to get involved in building <em>Twenty Twenty</em>? You can <a href=\"https://github.com/WordPress/twentytwenty\">contribute on GitHub</a>, follow <a href=\"https://make.wordpress.org/core/\">the Core team blog</a>, and join the #core channel in <a href=\"https://make.wordpress.org/chat/\">the Making WordPress Slack group</a>.</p>



<hr class=\"wp-block-separator\" />



<h2>Further Reading:</h2>



<ul><li>The Gutenberg project has continued to see regular updates with <a href=\"https://make.wordpress.org/core/2019/09/19/whats-new-in-gutenberg-18-september/\">the latest version</a> set to be included in WordPress 5.3.</li><li>Members of the Community Team <a href=\"https://make.wordpress.org/community/2019/09/13/call-for-participants-creating-a-welcoming-and-diverse-space-online-workshop-on-sun-oct-6/\">will run a workshop</a> to help event organizers create welcoming and diverse spaces for attendees.&nbsp;</li><li>There are some <a href=\"https://make.wordpress.org/updates/2019/09/20/wordpress-user-pro-survey-11-questions-and-a-script/\">proposed updates for the annual WordPress user survey</a> that need community feedback.</li><li><a href=\"https://make.wordpress.org/docs/2019/09/23/summary-for-helphub-meeting-23-september-2019/\">Work continues on the HelpHub project</a> where contributors are moving documentation to the updated support portal.</li><li>The Gutenberg team performed further usability tests in August, <a href=\"https://make.wordpress.org/test/2019/09/06/gutenberg-usability-testing-for-august-2019/\">with some interesting results</a>.</li><li><a href=\"https://buddypress.org/2019/09/buddypress-5-0-0-le-gusto/\">Version 5.0 of BuddyPress was released</a> near the end of this month, featuring a new REST API, improved group management, and other enhancements.</li></ul>



<p><em>Have a story that we should include in the next “Month in WordPress” post? Please </em><a href=\"https://make.wordpress.org/community/month-in-wordpress-submissions/\"><em>submit it here</em></a><em>.</em></p>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 02 Oct 2019 08:05:43 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:15:\"Hugh Lashbrooke\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:8:{s:6:\"server\";s:5:\"nginx\";s:4:\"date\";s:29:\"Mon, 04 Nov 2019 18:18:45 GMT\";s:12:\"content-type\";s:8:\"text/xml\";s:4:\"vary\";s:15:\"Accept-Encoding\";s:13:\"last-modified\";s:29:\"Mon, 04 Nov 2019 18:15:08 GMT\";s:15:\"x-frame-options\";s:10:\"SAMEORIGIN\";s:4:\"x-nc\";s:9:\"HIT ord 1\";s:16:\"content-encoding\";s:4:\"gzip\";}}s:5:\"build\";s:14:\"20191104163445\";}","no");
INSERT INTO `wmxss_options` VALUES("142","_transient_timeout_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1572934726","no");
INSERT INTO `wmxss_options` VALUES("143","_transient_feed_mod_d117b5738fbd35bd8c0391cda1f2b5d9","1572891526","no");
INSERT INTO `wmxss_options` VALUES("144","_transient_timeout_dash_v2_88ae138922fe95674369b1cb3d215a2b","1572934726","no");
INSERT INTO `wmxss_options` VALUES("145","_transient_dash_v2_88ae138922fe95674369b1cb3d215a2b","<div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2019/11/2019-annual-survey/\'>2019 Annual Survey</a></li></ul></div><div class=\"rss-widget\"><ul><li><a class=\'rsswidget\' href=\'https://poststatus.com/matt-mullenweg-state-of-the-word-2019/\'>Post Status: Matt Mullenweg’s State of the Word, 2019</a></li><li><a class=\'rsswidget\' href=\'https://wordpress.org/news/2019/11/2019-annual-survey/\'>WordPress.org blog: 2019 Annual Survey</a></li><li><a class=\'rsswidget\' href=\'https://wptavern.com/boldgrid-joins-forces-with-w3-edge-acquires-w3-total-cache-plugin\'>WPTavern: BoldGrid Joins Forces with W3 Edge, Acquires W3 Total Cache Plugin</a></li></ul></div>","no");
INSERT INTO `wmxss_options` VALUES("146","_transient_timeout_plugin_slugs","1572982532","no");
INSERT INTO `wmxss_options` VALUES("147","_transient_plugin_slugs","a:8:{i:0;s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";i:1;s:27:\"autoptimize/autoptimize.php\";i:2;s:29:\"click-to-top/click-to-top.php\";i:3;s:27:\"gallery-box/gallery-box.php\";i:4;s:47:\"magical-posts-display/magical-posts-display.php\";i:5;s:45:\"niso-carousel-slider/niso-carousel-slider.php\";i:6;s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";i:7;s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";}","no");
INSERT INTO `wmxss_options` VALUES("148","recently_activated","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("149","_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a","1572902337","no");
INSERT INTO `wmxss_options` VALUES("150","_site_transient_poptags_40cd750bba9870f18aada2478b24840a","O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4637;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:3727;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2647;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2520;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1942;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1770;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1756;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1473;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1452;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1452;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1438;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1389;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1365;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1296;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1159;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1140;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1111;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1077;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1060;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:960;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:863;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:851;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:847;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:821;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:761;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:754;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:740;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:738;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:737;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:710;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:706;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:690;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:683;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:678;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:670;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:657;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:637;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:633;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:625;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:623;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:614;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:602;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:578;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:577;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:566;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:564;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:560;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:547;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:539;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:537;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:530;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:526;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:525;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:523;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:521;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:517;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:507;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:486;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:485;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:482;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:482;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:480;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:462;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:460;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:456;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:452;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:431;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:424;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:419;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:419;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:418;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:417;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:414;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:409;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:404;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:403;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:400;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:393;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:387;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:387;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:383;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:380;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:371;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:369;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:366;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:362;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:360;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:359;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:352;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:349;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:348;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:339;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:330;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:329;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:328;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:327;}s:6:\"simple\";a:3:{s:4:\"name\";s:6:\"simple\";s:4:\"slug\";s:6:\"simple\";s:5:\"count\";i:321;}s:4:\"html\";a:3:{s:4:\"name\";s:4:\"html\";s:4:\"slug\";s:4:\"html\";s:5:\"count\";i:319;}s:6:\"author\";a:3:{s:4:\"name\";s:6:\"author\";s:4:\"slug\";s:6:\"author\";s:5:\"count\";i:317;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:317;}}","no");
INSERT INTO `wmxss_options` VALUES("156","rlrsssl_options","a:15:{s:12:\"site_has_ssl\";b:1;s:4:\"hsts\";b:0;s:22:\"htaccess_warning_shown\";b:0;s:19:\"review_notice_shown\";b:0;s:25:\"ssl_success_message_shown\";b:0;s:26:\"autoreplace_insecure_links\";b:1;s:17:\"plugin_db_version\";s:5:\"3.2.6\";s:5:\"debug\";b:1;s:20:\"do_not_edit_htaccess\";b:0;s:17:\"htaccess_redirect\";b:0;s:11:\"ssl_enabled\";b:1;s:19:\"javascript_redirect\";b:1;s:11:\"wp_redirect\";b:1;s:31:\"switch_mixed_content_fixer_hook\";b:1;s:19:\"dismiss_all_notices\";b:1;}","yes");
INSERT INTO `wmxss_options` VALUES("157","_transient_timeout_rsssl_certinfo","1572982143","no");
INSERT INTO `wmxss_options` VALUES("158","_transient_rsssl_certinfo","a:16:{s:4:\"name\";s:17:\"/CN=tricksvibe.tk\";s:7:\"subject\";a:1:{s:2:\"CN\";s:13:\"tricksvibe.tk\";}s:4:\"hash\";s:8:\"c556542e\";s:6:\"issuer\";a:4:{s:1:\"C\";s:2:\"US\";s:1:\"O\";s:6:\"Amazon\";s:2:\"OU\";s:12:\"Server CA 1B\";s:2:\"CN\";s:6:\"Amazon\";}s:7:\"version\";i:2;s:12:\"serialNumber\";s:38:\"14293361456047349712404439289411459144\";s:15:\"serialNumberHex\";s:32:\"0AC0CD20E8EF1510D73A56922FD4D848\";s:9:\"validFrom\";s:13:\"191103000000Z\";s:7:\"validTo\";s:13:\"201203120000Z\";s:16:\"validFrom_time_t\";i:1572739200;s:14:\"validTo_time_t\";i:1606996800;s:15:\"signatureTypeSN\";s:10:\"RSA-SHA256\";s:15:\"signatureTypeLN\";s:23:\"sha256WithRSAEncryption\";s:16:\"signatureTypeNID\";i:668;s:8:\"purposes\";a:9:{i:1;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:\"sslclient\";}i:2;a:3:{i:0;b:1;i:1;b:0;i:2;s:9:\"sslserver\";}i:3;a:3:{i:0;b:1;i:1;b:0;i:2;s:11:\"nssslserver\";}i:4;a:3:{i:0;b:0;i:1;b:0;i:2;s:9:\"smimesign\";}i:5;a:3:{i:0;b:0;i:1;b:0;i:2;s:12:\"smimeencrypt\";}i:6;a:3:{i:0;b:0;i:1;b:0;i:2;s:7:\"crlsign\";}i:7;a:3:{i:0;b:1;i:1;b:1;i:2;s:3:\"any\";}i:8;a:3:{i:0;b:1;i:1;b:0;i:2;s:10:\"ocsphelper\";}i:9;a:3:{i:0;b:0;i:1;b:0;i:2;s:13:\"timestampsign\";}}s:10:\"extensions\";a:10:{s:22:\"authorityKeyIdentifier\";s:66:\"keyid:59:A4:66:06:52:A0:7B:95:92:3C:A3:94:07:27:96:74:5B:F9:3D:D0
\";s:20:\"subjectKeyIdentifier\";s:59:\"DA:3E:DC:2F:13:F3:E3:14:83:B8:2F:E8:C4:35:A6:30:A0:7F:8B:45\";s:14:\"subjectAltName\";s:132:\"DNS:tricksvibe.tk, DNS:www.tricksvibe.tk, DNS:alb.tricksvibe.tk, DNS:dev.tricksvibe.tk, DNS:clb.tricksvibe.tk, DNS:nlb.tricksvibe.tk\";s:8:\"keyUsage\";s:35:\"Digital Signature, Key Encipherment\";s:16:\"extendedKeyUsage\";s:60:\"TLS Web Server Authentication, TLS Web Client Authentication\";s:21:\"crlDistributionPoints\";s:61:\"
Full Name:
  URI:http://crl.sca1b.amazontrust.com/sca1b.crl
\";s:19:\"certificatePolicies\";s:53:\"Policy: 2.16.840.1.114412.1.2
Policy: 2.23.140.1.2.1
\";s:19:\"authorityInfoAccess\";s:105:\"OCSP - URI:http://ocsp.sca1b.amazontrust.com
CA Issuers - URI:http://crt.sca1b.amazontrust.com/sca1b.crt
\";s:16:\"basicConstraints\";s:8:\"CA:FALSE\";s:15:\"ct_precert_scts\";s:1164:\"Signed Certificate Timestamp:
    Version   : v1 (0x0)
    Log ID    : BB:D9:DF:BC:1F:8A:71:B5:93:94:23:97:AA:92:7B:47:
                38:57:95:0A:AB:52:E8:1A:90:96:64:36:8E:1E:D1:85
    Timestamp : Nov  3 11:03:36.455 2019 GMT
    Extensions: none
    Signature : ecdsa-with-SHA256
                30:46:02:21:00:AC:F5:89:C5:A3:CE:2D:85:12:D8:82:
                56:E1:06:3F:37:87:BB:23:3B:ED:D7:2D:08:F2:8B:44:
                AF:97:8C:CE:C7:02:21:00:9C:B6:44:F4:40:0A:29:30:
                FE:ED:33:45:B8:61:13:74:AE:55:ED:0A:C5:66:55:17:
                D1:70:7F:52:90:66:3D:16
Signed Certificate Timestamp:
    Version   : v1 (0x0)
    Log ID    : 87:75:BF:E7:59:7C:F8:8C:43:99:5F:BD:F3:6E:FF:56:
                8D:47:56:36:FF:4A:B5:60:C1:B4:EA:FF:5E:A0:83:0F
    Timestamp : Nov  3 11:03:36.667 2019 GMT
    Extensions: none
    Signature : ecdsa-with-SHA256
                30:45:02:20:6B:3E:D4:DB:7D:23:9A:7B:82:F3:F8:9A:
                F0:50:90:D9:24:F7:F7:6E:82:EB:41:F9:EB:C8:7B:09:
                D2:48:7D:A5:02:21:00:F8:F3:C1:88:FB:7C:58:EA:B8:
                ED:25:98:88:FD:3A:46:01:29:C5:D9:B2:48:90:7F:93:
                89:B9:C3:8D:DD:10:C9\";}}","no");
INSERT INTO `wmxss_options` VALUES("164","category_children","a:0:{}","yes");
INSERT INTO `wmxss_options` VALUES("165","current_theme","X Blog Plus","yes");
INSERT INTO `wmxss_options` VALUES("166","theme_mods_twentyseventeen","a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1572895788;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}","yes");
INSERT INTO `wmxss_options` VALUES("167","theme_switched","","yes");
INSERT INTO `wmxss_options` VALUES("171","_transient_is_multi_author","0","yes");
INSERT INTO `wmxss_options` VALUES("172","_site_transient_timeout_theme_roots","1572897587","no");
INSERT INTO `wmxss_options` VALUES("173","_site_transient_theme_roots","a:3:{s:15:\"twentyseventeen\";s:7:\"/themes\";s:11:\"x-blog-plus\";s:7:\"/themes\";s:6:\"x-blog\";s:7:\"/themes\";}","no");
INSERT INTO `wmxss_options` VALUES("185","_site_transient_timeout_available_translations","1572906502","no");
INSERT INTO `wmxss_options` VALUES("186","_site_transient_available_translations","a:118:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-10-31 16:35:52\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.3/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 22:33:28\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:5:\"4.7.7\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.7/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-22 18:59:07\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.12/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-10 16:44:41\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:22:\"Продължение\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2017-10-01 12:57:10\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.8.6/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-21 07:55:00\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"མུ་མཐུད།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 20:23:36\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 06:18:47\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-28 19:06:07\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 10:34:50\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-08 20:19:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Forts&#230;t\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:10:06\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:09:43\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-06-22 14:40:13\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:07:34\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Fortfahren\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 07:08:52\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:73:\"https://downloads.wordpress.org/translation/core/5.2.4/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-04 11:20:55\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:32:55\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:36:29\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 22:33:08\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 00:26:02\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-06-06 15:48:01\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-20 20:46:03\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.3/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-22 16:47:50\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 13:47:59\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-01 11:13:43\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:3:\"5.1\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.1/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:5:\"5.0.7\";s:7:\"updated\";s:19:\"2018-12-07 18:38:30\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.7/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"5.0\";s:7:\"updated\";s:19:\"2018-12-06 21:26:01\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.0/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-23 02:23:28\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.12/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-09 09:36:22\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 23:07:29\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:9:\"5.0-beta3\";s:7:\"updated\";s:19:\"2018-11-28 16:04:33\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.0-beta3/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2017-12-09 21:12:23\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-26 11:08:21\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 14:09:21\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 19:33:33\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 17:54:04\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-01-31 11:16:06\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:5:\"4.8.6\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.6/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 22:06:57\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.8/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:5:\"4.4.2\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.4.2/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-13 18:50:12\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"להמשיך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:5:\"4.9.7\";s:7:\"updated\";s:19:\"2018-06-17 09:33:44\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.7/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"जारी\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-28 08:31:37\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:5:\"5.1.1\";s:7:\"updated\";s:19:\"2019-03-19 14:36:40\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.1/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Tovább\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-07-28 13:16:13\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.7.11\";s:7:\"updated\";s:19:\"2018-09-20 11:13:37\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.7.11/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:31:31\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 00:51:33\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"続ける\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-24 13:53:29\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nutugne\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-11-04 08:57:25\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.1.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-09-21 14:15:57\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.8/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-12 08:08:32\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.9.5/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-09 07:34:10\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.0.3/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:6:\"4.9.12\";s:7:\"updated\";s:19:\"2019-05-08 04:00:57\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.12/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರೆಸಿ\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-11 02:10:53\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:5:\"4.9.9\";s:7:\"updated\";s:19:\"2018-12-18 14:32:44\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.9/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ຕໍ່\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 19:23:46\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:6:\"4.7.15\";s:7:\"updated\";s:19:\"2019-05-10 10:24:08\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.15/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-09-08 12:57:25\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-12 07:29:35\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"Үргэлжлүүлэх\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.8.11\";s:7:\"updated\";s:19:\"2018-02-13 07:38:55\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.11/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:5:\"4.9.8\";s:7:\"updated\";s:19:\"2018-08-30 20:27:25\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.8/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-26 15:57:42\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.1.20/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ေဆာင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-06 17:43:28\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-03-27 10:30:26\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"जारीराख्नु \";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:24:54\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-27 08:50:23\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 09:26:04\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/5.2.4/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-24 08:39:27\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:5:\"4.8.3\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.3/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:7:\"Punjabi\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-29 19:02:29\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.1.20\";s:7:\"updated\";s:19:\"2015-03-29 22:19:48\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.1.20/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"دوام\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-16 11:33:10\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 09:41:26\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-07-02 07:58:03\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/5.2.3/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 15:13:04\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-21 12:45:31\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 14:39:35\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-18 06:59:45\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:5:\"5.2.3\";s:7:\"updated\";s:19:\"2019-06-26 11:40:37\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.3/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:5:\"4.9.2\";s:7:\"updated\";s:19:\"2018-01-04 13:33:13\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Nadaljujte\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-20 12:34:38\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-15 10:03:57\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 13:41:32\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-22 00:19:41\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-19 08:19:37\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-30 02:38:08\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-11-04 12:32:04\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:0:\"\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:5:\"4.9.5\";s:7:\"updated\";s:19:\"2018-04-12 12:31:53\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.9.5/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-16 10:31:10\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:5:\"5.1.3\";s:7:\"updated\";s:19:\"2019-03-31 10:39:40\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.1.3/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:5:\"5.0.3\";s:7:\"updated\";s:19:\"2019-01-23 12:32:40\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.0.3/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-23 07:14:52\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.2.4/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-01 15:59:49\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:16:\"香港中文版	\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-10-25 15:06:49\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:5:\"5.2.4\";s:7:\"updated\";s:19:\"2019-07-29 00:33:56\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.2.4/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}}","no");
INSERT INTO `wmxss_options` VALUES("187","WPLANG","","yes");
INSERT INTO `wmxss_options` VALUES("188","new_admin_email","hye.akshay@gmail.com","yes");
INSERT INTO `wmxss_options` VALUES("191","_transient_timeout_rsssl_testpage","1572896343","no");
INSERT INTO `wmxss_options` VALUES("192","_transient_rsssl_testpage","<html>
<head>
    <meta charset=\"UTF-8\">
    <META NAME=\"ROBOTS\" CONTENT=\"NOINDEX, NOFOLLOW\">
</head>
<body>
<h1>#SSL TEST PAGE#</h1>
<p>This page is used purely to test for SSL availability.</p>
#LOADBALANCER#<br><br>#SUCCESFULLY DETECTED SSL#
</body>
</html>
","no");
INSERT INTO `wmxss_options` VALUES("193","_transient_timeout_rsssl_mixed_content_fixer_detected","1572896344","no");
INSERT INTO `wmxss_options` VALUES("194","_transient_rsssl_mixed_content_fixer_detected","not-found","no");
INSERT INTO `wmxss_options` VALUES("196","rsssl_activation_timestamp","1572895745","yes");
INSERT INTO `wmxss_options` VALUES("199","secure_auth_key","ttRgIU6b9,2D+eHIB(>*a,S7[l)+l,|m&^&S^R3-`jj4-&?%%NHe,9752dZg]25*","no");
INSERT INTO `wmxss_options` VALUES("200","secure_auth_salt","Rbiy58YQ/VnEk*5X 2#M(I&l1ZKG(&v<_K^=0lpgK9=E$3IFKCDxhBa{|XV9R%2[","no");
INSERT INTO `wmxss_options` VALUES("203","rsssl_mixed_content_fixer_detected_dismissed","1","yes");
INSERT INTO `wmxss_options` VALUES("204","rsssl_check_redirect_dismissed","1","yes");
INSERT INTO `wmxss_options` VALUES("205","rsssl_elementor_dismissed","1","yes");
INSERT INTO `wmxss_options` VALUES("206","_transient_rsssl_plusone_count","0","yes");
INSERT INTO `wmxss_options` VALUES("207","_site_transient_update_themes","O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1572895825;s:7:\"checked\";a:3:{s:15:\"twentyseventeen\";s:3:\"2.2\";s:11:\"x-blog-plus\";s:5:\"1.0.2\";s:6:\"x-blog\";s:5:\"1.3.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}","no");
INSERT INTO `wmxss_options` VALUES("209","theme_mods_x-blog-plus","a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}","yes");
INSERT INTO `wmxss_options` VALUES("210","xnotice11","1","yes");
INSERT INTO `wmxss_options` VALUES("211","_site_transient_update_plugins","O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1572895870;s:7:\"checked\";a:8:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:5:\"4.4.2\";s:27:\"autoptimize/autoptimize.php\";s:5:\"2.5.1\";s:29:\"click-to-top/click-to-top.php\";s:5:\"1.2.3\";s:27:\"gallery-box/gallery-box.php\";s:5:\"1.7.3\";s:47:\"magical-posts-display/magical-posts-display.php\";s:5:\"1.0.0\";s:45:\"niso-carousel-slider/niso-carousel-slider.php\";s:5:\"1.3.6\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:5:\"3.2.6\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:5:\"2.4.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:8:{s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/all-in-one-wp-security-and-firewall\";s:4:\"slug\";s:35:\"all-in-one-wp-security-and-firewall\";s:6:\"plugin\";s:51:\"all-in-one-wp-security-and-firewall/wp-security.php\";s:11:\"new_version\";s:5:\"4.4.2\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/all-in-one-wp-security-and-firewall/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/all-in-one-wp-security-and-firewall.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:88:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/icon-128x128.png?rev=1232826\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-1544x500.png?rev=1914011\";s:2:\"1x\";s:90:\"https://ps.w.org/all-in-one-wp-security-and-firewall/assets/banner-772x250.png?rev=1914013\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"autoptimize/autoptimize.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/autoptimize\";s:4:\"slug\";s:11:\"autoptimize\";s:6:\"plugin\";s:27:\"autoptimize/autoptimize.php\";s:11:\"new_version\";s:5:\"2.5.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/autoptimize/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/autoptimize.2.5.1.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/autoptimize/assets/icon-128x128.png?rev=1864142\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/autoptimize/assets/banner-772x250.jpg?rev=1315920\";}s:11:\"banners_rtl\";a:0:{}}s:29:\"click-to-top/click-to-top.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:26:\"w.org/plugins/click-to-top\";s:4:\"slug\";s:12:\"click-to-top\";s:6:\"plugin\";s:29:\"click-to-top/click-to-top.php\";s:11:\"new_version\";s:5:\"1.2.3\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/click-to-top/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/plugin/click-to-top.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/click-to-top/assets/icon-128x128.png?rev=1499528\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/click-to-top/assets/banner-772x250.jpg?rev=1499528\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"gallery-box/gallery-box.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/gallery-box\";s:4:\"slug\";s:11:\"gallery-box\";s:6:\"plugin\";s:27:\"gallery-box/gallery-box.php\";s:11:\"new_version\";s:5:\"1.7.3\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/gallery-box/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/gallery-box.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:64:\"https://ps.w.org/gallery-box/assets/icon-128x128.png?rev=1449024\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/gallery-box/assets/banner-772x250.jpg?rev=1775558\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"magical-posts-display/magical-posts-display.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/magical-posts-display\";s:4:\"slug\";s:21:\"magical-posts-display\";s:6:\"plugin\";s:47:\"magical-posts-display/magical-posts-display.php\";s:11:\"new_version\";s:5:\"1.0.0\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/magical-posts-display/\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/plugin/magical-posts-display.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:74:\"https://ps.w.org/magical-posts-display/assets/icon-128x128.png?rev=2096265\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/magical-posts-display/assets/banner-772x250.jpg?rev=2096265\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"niso-carousel-slider/niso-carousel-slider.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/niso-carousel-slider\";s:4:\"slug\";s:20:\"niso-carousel-slider\";s:6:\"plugin\";s:45:\"niso-carousel-slider/niso-carousel-slider.php\";s:11:\"new_version\";s:5:\"1.3.6\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/niso-carousel-slider/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/niso-carousel-slider.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:73:\"https://ps.w.org/niso-carousel-slider/assets/icon-128x128.png?rev=1511911\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/niso-carousel-slider/assets/banner-772x250.jpg?rev=1511911\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:31:\"w.org/plugins/really-simple-ssl\";s:4:\"slug\";s:17:\"really-simple-ssl\";s:6:\"plugin\";s:47:\"really-simple-ssl/rlrsssl-really-simple-ssl.php\";s:11:\"new_version\";s:5:\"3.2.6\";s:3:\"url\";s:48:\"https://wordpress.org/plugins/really-simple-ssl/\";s:7:\"package\";s:66:\"https://downloads.wordpress.org/plugin/really-simple-ssl.3.2.6.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:70:\"https://ps.w.org/really-simple-ssl/assets/icon-128x128.png?rev=1782452\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:72:\"https://ps.w.org/really-simple-ssl/assets/banner-772x250.jpg?rev=1881345\";}s:11:\"banners_rtl\";a:0:{}}s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:41:\"w.org/plugins/ultimate-social-media-icons\";s:4:\"slug\";s:27:\"ultimate-social-media-icons\";s:6:\"plugin\";s:59:\"ultimate-social-media-icons/ultimate_social_media_icons.php\";s:11:\"new_version\";s:5:\"2.4.3\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/ultimate-social-media-icons/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/ultimate-social-media-icons.2.4.3.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:80:\"https://ps.w.org/ultimate-social-media-icons/assets/icon-128x128.png?rev=1598977\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/ultimate-social-media-icons/assets/banner-772x250.png?rev=1032920\";}s:11:\"banners_rtl\";a:0:{}}}}","no");
INSERT INTO `wmxss_options` VALUES("212","click_top_basic","","yes");
INSERT INTO `wmxss_options` VALUES("213","click_top_style","","yes");
INSERT INTO `wmxss_options` VALUES("214","Lightbox_settings","","yes");
INSERT INTO `wmxss_options` VALUES("215","img_style","","yes");
INSERT INTO `wmxss_options` VALUES("216","youtube_style","","yes");
INSERT INTO `wmxss_options` VALUES("217","vimeo_style","","yes");
INSERT INTO `wmxss_options` VALUES("218","iframe_style","","yes");
INSERT INTO `wmxss_options` VALUES("219","autoptimize_version","2.5.1","yes");
INSERT INTO `wmxss_options` VALUES("220","autoptimize_service_availablity","a:2:{s:12:\"extra_imgopt\";a:3:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:26:\"https://cdn.shortpixel.ai/\";}s:16:\"launch-threshold\";s:4:\"4096\";}s:7:\"critcss\";a:2:{s:6:\"status\";s:2:\"up\";s:5:\"hosts\";a:1:{i:1;s:24:\"https://criticalcss.com/\";}}}","yes");
INSERT INTO `wmxss_options` VALUES("222","autoptimize_imgopt_launched","on","yes");
INSERT INTO `wmxss_options` VALUES("226","_transient_timeout_autoptimize_banner","1572982290","no");
INSERT INTO `wmxss_options` VALUES("227","_transient_autoptimize_banner","<li>Big images? <a href=\"http://misc.optimizingmatters.com/partners/?from=ticker&amp;partner=shortpixel\" target=\"_blank\">Optimize with Shortpixel</a> and get <strong>50% free</strong> forever!</li>
<li>Money-back guaranteed <a href=\"http://misc.optimizingmatters.com/partners/?from=ticker&amp;partner=autoptimizepro\" target=\"_blank\"><strong>web performance optimization</strong></a> for only &euro;599!</li>
<li>Render-blocking CSS? <a href=\"https://wordpress.org/plugins/autoptimize-criticalcss/\" target=\"_blank\">Try the Autoptimize Power-Up to have your critical CSS generated automatically.</a></li>
","no");
INSERT INTO `wmxss_options` VALUES("228","_transient_timeout_feed_760b3218a3724706ad0e8ff9b09019ce","1572939091","no");
INSERT INTO `wmxss_options` VALUES("229","_transient_feed_760b3218a3724706ad0e8ff9b09019ce","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:41:\"autoptimize – Frank Goossens&#039; blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://blog.futtta.be\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"(futtta\'s Twitterless twaddle)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=5.2.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:85:\"
		
		
				
				
		
				
		
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Autoptimize closing in on W3 Total Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/Z8LBbKqDVUk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"Quickie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"w3 total cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"wordpress active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"wordpress popular plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10943\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:301:\"Fun fact; As per wordpress.org &#8220;popular plugins&#8221; ranking , Autoptimize is slowly but surely closing in on what used to be the go-to solution for Web Performance Optimization W3 Total Cache based on the &#8220;active installs&#8221; metric. Who would have thought? What a crazy ride &#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1853:\"<p>Fun fact; As per <a href=\"https://wordpress.org/plugins/browse/popular/page/2/\">wordpress.org &#8220;popular plugins&#8221; ranking</a> , Autoptimize is slowly but surely closing in on what used to be the go-to solution for Web Performance Optimization W3 Total Cache based on the &#8220;active installs&#8221; metric. Who would have thought? What a crazy ride &#8230;</p>
<p><a href=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489.jpg\"><img class=\"alignnone size-medium wp-image-10944\" src=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-300x190.jpg\" alt=\"\" width=\"300\" height=\"190\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-300x190.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-1024x648.jpg 1024w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-624x395.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489.jpg 1027w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2019/02/14/autoptimize-extra-functionality/\" rel=\"bookmark\" title=\"Autoptimize: extra functionality?\">Autoptimize: extra functionality? </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/Z8LBbKqDVUk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Autoptimize testimonial from Wolf Braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/SXor_0AVxZg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 09:10:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:11:\"testimonial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:10:\"wolf braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10921\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:144:\"Wolf Braun is a happy Autopitmize user and created this testimonial to tell the world just how great he thinks AO is; Thanks Wolf, we agree! :-)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1399:\"<p><a href=\"https://wolfbraun.com/\">Wolf Braun</a> is a happy Autopitmize user and created this testimonial to tell the world just how great he thinks AO is;</p>
<p><a href=\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/\"><img src=\"http://blog.futtta.be/wp-content/plugins/wp-youtube-lyte/lyteThumbs.php?origThumbUrl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FgU_uqMpv6HU%2Fhqdefault.jpg\" alt=\"YouTube Video\"></a><br />Watch this video <a href=\"http://youtu.be/gU_uqMpv6HU\">on YouTube</a>.</p>
<p>Thanks Wolf, we agree! :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/08/19/it-feels-great-to-see-ones-children-going-places/\" rel=\"bookmark\" title=\"It feels great to see ones children going places!\">It feels great to see ones children going places! </a></li>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2016/09/15/autoptimize-cache-size-the-canary-in-the-coal-mine/\" rel=\"bookmark\" title=\"Autoptimize cache size: the canary in the coal mine\">Autoptimize cache size: the canary in the coal mine </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/SXor_0AVxZg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize 2.6: testers for multisite wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/nMOqydk9EIg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Sep 2019 08:26:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"github\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"testers wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10917\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:369:\"Over the last couple of months Juanfran Granados from Mirai, an hotelier agency that used WordPress extensively, worked hard to add multisite administration capabilities to Autoptimize: If AO has been network-activated, there will be an entry-point in the network settings screens where one can configure Autoptimize for the entire network. On the subsites the AO [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2894:\"<p><a href=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446.jpg\"><img class=\"size-medium wp-image-10918 alignright\" src=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-300x220.jpg\" alt=\"\" width=\"300\" height=\"220\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-300x220.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-624x457.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446.jpg 825w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a>Over the last couple of months <strong>Juanfran Granados</strong> from <a href=\"https://www.mirai.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.mirai.com/&amp;source=gmail&amp;ust=1569139625034000&amp;usg=AFQjCNFmYCmkcmJLnpp85c5mMX78VD89vA\">Mirai</a>, an hotelier agency that used WordPress extensively, worked hard to add multisite administration capabilities to Autoptimize:</p>
<ul>
<li>If AO has been network-activated, there will be an entry-point in the network settings screens where one can configure Autoptimize for the entire network.</li>
<li>On the subsites the AO settings screen will show a message that settings are done at a network level</li>
<li>On the network-AO-settings there is an option to allow AO to be configured per site</li>
<li>if AO has not been network-activated, things work as they do now; all settings are done on a per-site level</li>
</ul>
<p>I have just <a href=\"https://github.com/futtta/autoptimize/tree/multisite-test\">merged his code into separate branch on Github</a> and given that significant changes that went into this (almost all files changed), I need you and you and you and &#8230; to <a href=\"https://github.com/futtta/autoptimize/archive/multisite-test.zip\">download and test that multisite-test branch</a> before I merge the changes into the beta branch. Looking forward to your feedback!</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/10/27/autoptimize-to-allow-optimizing-whitelisted-resources-only-and-more/\" rel=\"bookmark\" title=\"Autoptimize to allow optimizing whitelisted resources only (and more)\">Autoptimize to allow optimizing whitelisted resources only (and more) </a></li>
<li><a href=\"https://blog.futtta.be/2015/12/09/bringing-autoptimize-2-0-beta-to-a-christmas-tree-near-you/\" rel=\"bookmark\" title=\"Bringing Autoptimize 2.0 (beta) to a Christmas-tree near you\">Bringing Autoptimize 2.0 (beta) to a Christmas-tree near you </a></li>
<li><a href=\"https://blog.futtta.be/2016/02/29/heads-up-autoptimize-minor-release/\" rel=\"bookmark\" title=\"Heads up: Autoptimize minor release\">Heads up: Autoptimize minor release </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/nMOqydk9EIg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:73:\"
		
		
				
				
		
				
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize on the Smart Web Creators podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/zC97U1kdY4A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 28 Jun 2019 07:29:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"optimizing matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:18:\"smart web creators\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10887\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Autoptimize was featured on the Smart Web Creators podcast, check it out below;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1336:\"<p>Autoptimize was featured on the Smart Web Creators podcast, check it out below;</p>
<p><a href=\"https://smartwebcreators.com/website-optimization-workflow-swc-38/\"><img class=\"alignnone size-medium wp-image-10888\" src=\"http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364-300x169.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364.jpg 549w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/09/02/almost-time-to-announce/\" rel=\"bookmark\" title=\"Almost time to announce\">Almost time to announce </a></li>
<li><a href=\"https://blog.futtta.be/2017/04/11/autoptimize-2-2-coming-your-way-care-to-test/\" rel=\"bookmark\" title=\"Autoptimize 2.2 coming your way, care to test?\">Autoptimize 2.2 coming your way, care to test? </a></li>
<li><a href=\"https://blog.futtta.be/2017/11/16/small-experiment-autoptimize-with-page-cache/\" rel=\"bookmark\" title=\"Small experiment; Autoptimize with page cache\">Small experiment; Autoptimize with page cache </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/zC97U1kdY4A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize featured on The CommonSenSEO Show\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/17AdJunAvRY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Jun 2019 16:54:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:16:\"async javascript\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"commonsenseo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:25:\"google pagespeed insights\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:13:\"optimize demo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10876\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:161:\"I had a nice chat on The CommonSenSEO Show, if you want to hear me ramble you can do so in this video; And if you&#8217;re into SEO, do subscribe to the channel!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1342:\"<p>I had a nice chat on The CommonSenSEO Show, if you want to hear me ramble you can do so in this video;</p>
<p><a href=\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/\"><img src=\"http://blog.futtta.be/wp-content/plugins/wp-youtube-lyte/lyteThumbs.php?origThumbUrl=https%3A%2F%2Fi.ytimg.com%2Fvi%2Fbmlypiamhhk%2Fhqdefault.jpg\" alt=\"YouTube Video\"></a><br />Watch this video <a href=\"http://youtu.be/bmlypiamhhk\">on YouTube</a>.</p>
<p>And if you&#8217;re into SEO, do subscribe to the channel!</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2018/03/13/taking-over-async-javascript-wordpress-plugin/\" rel=\"bookmark\" title=\"Taking over Async JavaScript WordPress plugin\">Taking over Async JavaScript WordPress plugin </a></li>
<li><a href=\"https://blog.futtta.be/2018/12/04/when-should-you-update-to-wordpress-5-0/\" rel=\"bookmark\" title=\"(When) Should you update to WordPress 5.0?\">(When) Should you update to WordPress 5.0? </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/17AdJunAvRY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"We just joined the club!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/WkCDsnPTu3Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 May 2019 08:52:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:25:\"1 million active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10872\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"Autoptimize just joined the &#8220;1+ million active installs&#8221;-club. Crazy! I&#8217;m very happy, thanks everyone for using, thanks for the support-questions &#38; all the great feedback therein and especially thanks to the people who actively contributed and especially-especially to Emilio López (Turl) for creating Autoptimize and handing it over to me back in 2013 and to [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2082:\"<p>Autoptimize just joined the &#8220;1+ million active installs&#8221;-club. Crazy!</p>
<p><a href=\"https://wordpress.org/plugins/autoptimize/advanced/\"><img class=\"alignnone size-medium wp-image-10873\" src=\"http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-300x177.jpg\" alt=\"\" width=\"300\" height=\"177\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-300x177.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-624x368.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323.jpg 643w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<p>I&#8217;m very happy, thanks everyone for using, thanks for the support-questions &amp; all the great feedback therein and especially thanks to the people who actively contributed and especially-especially to Emilio López (Turl) for creating Autoptimize and <a href=\"https://blog.futtta.be/2013/01/07/adopting-an-oss-orphan-autoptimize/\">handing it over to me back in 2013</a> and to <a href=\"https://twitter.com/zytzagoo\">Tomaš Trkulja</a> who cleaned up al lot of the messy code I added to it and introducing me to PHP codesniffer &amp; Travis CI tests.</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
<li><a href=\"https://blog.futtta.be/2012/11/06/dipping-below-the-magical-1-second-page-load-time/\" rel=\"bookmark\" title=\"Dipping below the magical 1 second page load time\">Dipping below the magical 1 second page load time </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/WkCDsnPTu3Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Google Font display swap in Autoptimize?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/BSikBZpiPmE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 May 2019 13:02:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"howto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"code snippet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"font-display\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:12:\"google fonts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10869\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"Autoptimize 2.5.1 (out earlier this week) does not have an option to enforce font-display on Google Fonts just yet, but this little code snippet does exactly that; Happy swapping (or fallback-ing or optional-ing) :-)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1452:\"<p>Autoptimize 2.5.1 (out earlier this week) does not have an option to enforce font-display on Google Fonts just yet, but this little code snippet does exactly that;</p>
<pre class=\"brush: php; title: ; notranslate\">add_filter(\'autoptimize_filter_extra_gfont_fontstring\',\'add_display\');
function add_display($in) {
  return $in.\'&amp;amp;display=swap\';
}</pre>
<p>Happy <a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display\">swapping (or fallback-ing or optional-ing)</a> :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/08/07/why-autoptimize-doesnt-touch-non-local-cssjs/\" rel=\"bookmark\" title=\"Why Autoptimize doesn&#8217;t touch non-local CSS/JS\">Why Autoptimize doesn&#8217;t touch non-local CSS/JS </a></li>
<li><a href=\"https://blog.futtta.be/2017/12/07/ao-extra-feature-complete-testers-needed/\" rel=\"bookmark\" title=\"AO extra feature-complete, testers needed\">AO extra feature-complete, testers needed </a></li>
<li><a href=\"https://blog.futtta.be/2017/12/17/heads-up-autoptimize-2-3-coming-with-new-features-last-call-for-testers/\" rel=\"bookmark\" title=\"[heads up] Autoptimize 2.3 coming with new features, last call for testers\">[heads up] Autoptimize 2.3 coming with new features, last call for testers </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/BSikBZpiPmE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Easter bunny special: Autoptimize 2.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/sdlENUsfCm0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 22 Apr 2019 13:18:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"easter egg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:15:\"image lazy load\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"lazysizes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:4:\"webp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10859\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:336:\"Autoptimize 2.5 has been released earlier today (April 22nd). Main focus of this release is more love for image optimization, now on a separate tab and including lazyload and WebP support. Lots of other bugfixes and smaller improvements too off course, e.g. an option to disable the minification of excluded CSS/ JS (which 2.4 did [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1547:\"<p><a href=\"https://en.wikipedia.org/wiki/Easter_egg_(media)\"><img class=\"alignright wp-image-10860 size-thumbnail\" src=\"http://blog.futtta.be/wp-content/uploads/2019/04/Carl_Oswald_Rostosky_-_Zwei_Kaninchen_und_ein_Igel_1861-150x150.jpg\" alt=\"\" width=\"150\" height=\"150\" /></a>Autoptimize 2.5 has been released earlier today (April 22nd).</p>
<p>Main focus of this release is more love for image optimization, now on a separate tab and including lazyload and WebP support.</p>
<p>Lots of other bugfixes and smaller improvements too off course, e.g. an option to disable the minification of excluded CSS/ JS (which 2.4 did by default).</p>
<p>No Easter eggs in there though :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2018/12/31/autoptimize-2-5-beta-image-lazy-loading/\" rel=\"bookmark\" title=\"Autoptimize 2.5 beta: image lazy loading\">Autoptimize 2.5 beta: image lazy loading </a></li>
<li><a href=\"https://blog.futtta.be/2016/07/24/preparing-for-autoptimize-2-0-3-or-2-1-0/\" rel=\"bookmark\" title=\"Preparing (for) Autoptimize 2.0.3 or 2.1.0\">Preparing (for) Autoptimize 2.0.3 or 2.1.0 </a></li>
<li><a href=\"https://blog.futtta.be/2017/08/11/loading-webfonts-just-for-a-title-switch-to-svg-instead/\" rel=\"bookmark\" title=\"Loading webfonts just for a title? Switch to SVG instead.\">Loading webfonts just for a title? Switch to SVG instead. </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/sdlENUsfCm0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"How to (not) correctly load Gutenberg JS\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/ZWcHgv7_HWE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Mar 2019 16:09:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"howto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:15:\"Web development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:27:\"enqueue_block_editor_assets\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:9:\"gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:20:\"register_block_types\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10827\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"On Facebook someone asked me how to do Gutenberg the right way to avoid loading too much JS on the frontend, this is a somewhat better organized version of my answer; I&#8217;m not a Gutenberg specialist (for from it, really) but: the wrong way is adding JS with wp-block/ wp-element and other gutenberg dependencies on [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2151:\"<p>On Facebook someone asked me how to do Gutenberg the right way to avoid <a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\">loading too much JS on the frontend</a>, this is a somewhat better organized version of my answer;</p>
<p>I&#8217;m not a Gutenberg specialist (for from it, really) but:</p>
<ul>
<li>the <strong>wrong way</strong> is adding JS with wp-block/ wp-element and other gutenberg dependencies on <strong>init calling wp_enqueue_script</strong>,</li>
<li>the <strong>right way</strong> is either hooking into <strong>enqueue_block_editor_assets</strong> (see https://jasonyingling.me/enqueueing-scripts-and-styles-for-gutenberg-blocks/)</li>
<li><strong>or</strong> when using init doing <strong>wp_register_script and then register_block_type</strong> referring to the correct editor_script previously registered (see https://wordpress.org/gutenberg/handbook/designers-developers/developers/tutorials/block-tutorial/writing-your-first-block-type/).</li>
</ul>
<p>I&#8217;ve tried both of these on a &#8220;bad&#8221; plugin and can confirm both solutions do prevent those needless wp-includes/js/dist/* JS-files from being added on the front-end.</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2018/08/28/hide-my-wordpress-autoptimize-compatibility-glue/\" rel=\"bookmark\" title=\"Hide-my-WordPress &#038; Autoptimize compatibility glue\">Hide-my-WordPress &#038; Autoptimize compatibility glue </a></li>
<li><a href=\"https://blog.futtta.be/2018/01/25/how-to-extract-blocks-from-gutenberg/\" rel=\"bookmark\" title=\"How to extract blocks from Gutenberg\">How to extract blocks from Gutenberg </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/ZWcHgv7_HWE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:88:\"
		
		
				
				
		
				
		
		
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"Developers: don’t make Gutenberg go Badass-enberg on my frontend!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"http://feedproxy.google.com/~r/futtta_autoptimize/~3/SVuD-HWNqaY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:106:\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 18 Mar 2019 14:12:56 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:10:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:10:\"Technology\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:15:\"Web development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:6:\"blocks\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:14:\"doing it wrong\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:9:\"gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10823\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:387:\"Over the past couple of months, since the release of WordPress 5.0 which includes Gutenberg, the new JavaScript-based block editor, I have seen many sites loading a significant amount of extra JavaScript from wp-includes/js/dist on the frontend due to plugins doing it wrong. So dear plugin-developer-friends; when adding Gutenberg blocks please differentiate between editor access [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2800:\"<p><img class=\"alignright size-medium wp-image-10825\" src=\"http://blog.futtta.be/wp-content/uploads/2019/03/gutenberg-the-wordpress-one-300x150.jpg\" alt=\"\" width=\"300\" height=\"150\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/03/gutenberg-the-wordpress-one-300x150.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/03/gutenberg-the-wordpress-one-1024x512.jpg 1024w, http://blog.futtta.be/wp-content/uploads/2019/03/gutenberg-the-wordpress-one-624x312.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/03/gutenberg-the-wordpress-one.jpg 1200w\" sizes=\"(max-width: 300px) 100vw, 300px\" />Over the past couple of months, since the release of WordPress 5.0 which includes <strong>Gutenberg</strong>, the new JavaScript-based block editor, I have <a href=\"https://wordpress.org/support/topic/too-many-js-files-from-wp-includes-js-dist/\">seen</a> <a href=\"https://wordpress.org/support/topic/stop-include-all-gutenberg-js-scripts-in-frontend/\">many</a> <a href=\"https://wordpress.org/support/topic/cant-activate-aggregate-js-files-or-else-my-images/#post-11325498\">sites</a> loading a <strong>significant amount of extra JavaScript</strong> from <code>wp-includes/js/dist</code> on the <strong>frontend</strong> due to plugins <strong>doing it wrong</strong>.</p>
<p>So dear plugin-developer-friends; when adding Gutenberg blocks please <strong>differentiate between editor access and visitor</strong> access, only <strong>enqueue JS/ CSS if needed</strong> to display your blocks and when registering for front-end please please frigging please <strong>don&#8217;t declare <code>wp-blocks</code>, <code>wp-element</code>, &#8230; and all of those other editor goodies as dependencies</strong> unless your 100% sure this is needed (which will almost never be the case).</p>
<p>The performance optimization crowd will thank you for being considerate and -more likely- will curse you if you are not!</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2014/08/12/next-autoptimize-eliminates-render-blocking-css-in-above-the-fold-content/\" rel=\"bookmark\" title=\"Next Autoptimize eliminates render-blocking CSS in above-the-fold content\">Next Autoptimize eliminates render-blocking CSS in above-the-fold content </a></li>
<li><a href=\"https://blog.futtta.be/2016/05/18/quick-keycdns-cache-enabler-test/\" rel=\"bookmark\" title=\"Quick KeyCDN&#8217;s Cache Enabler test\">Quick KeyCDN&#8217;s Cache Enabler test </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_autoptimize/~4/SVuD-HWNqaY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:102:\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:97:\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"
	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"
	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:46:\"http://feeds.feedburner.com/futtta_autoptimize\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:18:\"futtta_autoptimize\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"MihHoqrx2P1QZLBY5Oem2CJ0Goc\";s:13:\"last-modified\";s:29:\"Mon, 04 Nov 2019 18:27:08 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:7:\"expires\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20191104192125\";}","no");
INSERT INTO `wmxss_options` VALUES("230","_transient_timeout_feed_mod_760b3218a3724706ad0e8ff9b09019ce","1572939091","no");
INSERT INTO `wmxss_options` VALUES("231","_transient_feed_mod_760b3218a3724706ad0e8ff9b09019ce","1572895891","no");
INSERT INTO `wmxss_options` VALUES("232","_transient_timeout_feed_3dcbbcc036ac7e5be38f83a0bd0adcdd","1572939091","no");
INSERT INTO `wmxss_options` VALUES("233","_transient_feed_3dcbbcc036ac7e5be38f83a0bd0adcdd","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"wordpress – Frank Goossens&#039; blog\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://blog.futtta.be\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"(futtta\'s Twitterless twaddle)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=5.2.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:85:\"
		
		
				
				
		
				
		
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Autoptimize closing in on W3 Total Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/Z8LBbKqDVUk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"Quickie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"w3 total cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"wordpress active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"wordpress popular plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10943\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:301:\"Fun fact; As per wordpress.org &#8220;popular plugins&#8221; ranking , Autoptimize is slowly but surely closing in on what used to be the go-to solution for Web Performance Optimization W3 Total Cache based on the &#8220;active installs&#8221; metric. Who would have thought? What a crazy ride &#8230;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1851:\"<p>Fun fact; As per <a href=\"https://wordpress.org/plugins/browse/popular/page/2/\">wordpress.org &#8220;popular plugins&#8221; ranking</a> , Autoptimize is slowly but surely closing in on what used to be the go-to solution for Web Performance Optimization W3 Total Cache based on the &#8220;active installs&#8221; metric. Who would have thought? What a crazy ride &#8230;</p>
<p><a href=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489.jpg\"><img class=\"alignnone size-medium wp-image-10944\" src=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-300x190.jpg\" alt=\"\" width=\"300\" height=\"190\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-300x190.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-1024x648.jpg 1024w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489-624x395.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/10/Selection_489.jpg 1027w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2019/02/14/autoptimize-extra-functionality/\" rel=\"bookmark\" title=\"Autoptimize: extra functionality?\">Autoptimize: extra functionality? </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/Z8LBbKqDVUk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Autoptimize testimonial from Wolf Braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/SXor_0AVxZg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 09:10:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:11:\"testimonial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:10:\"wolf braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10921\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:144:\"Wolf Braun is a happy Autopitmize user and created this testimonial to tell the world just how great he thinks AO is; Thanks Wolf, we agree! :-)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1397:\"<p><a href=\"https://wolfbraun.com/\">Wolf Braun</a> is a happy Autopitmize user and created this testimonial to tell the world just how great he thinks AO is;</p>
<p><a href=\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/\"><img src=\"http://blog.futtta.be/wp-content/plugins/wp-youtube-lyte/lyteThumbs.php?origThumbUrl=https%3A%2F%2Fi.ytimg.com%2Fvi%2FgU_uqMpv6HU%2Fhqdefault.jpg\" alt=\"YouTube Video\"></a><br />Watch this video <a href=\"http://youtu.be/gU_uqMpv6HU\">on YouTube</a>.</p>
<p>Thanks Wolf, we agree! :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/08/19/it-feels-great-to-see-ones-children-going-places/\" rel=\"bookmark\" title=\"It feels great to see ones children going places!\">It feels great to see ones children going places! </a></li>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2016/09/15/autoptimize-cache-size-the-canary-in-the-coal-mine/\" rel=\"bookmark\" title=\"Autoptimize cache size: the canary in the coal mine\">Autoptimize cache size: the canary in the coal mine </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/SXor_0AVxZg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize 2.6: testers for multisite wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/nMOqydk9EIg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Sep 2019 08:26:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"github\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"testers wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10917\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:369:\"Over the last couple of months Juanfran Granados from Mirai, an hotelier agency that used WordPress extensively, worked hard to add multisite administration capabilities to Autoptimize: If AO has been network-activated, there will be an entry-point in the network settings screens where one can configure Autoptimize for the entire network. On the subsites the AO [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2892:\"<p><a href=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446.jpg\"><img class=\"size-medium wp-image-10918 alignright\" src=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-300x220.jpg\" alt=\"\" width=\"300\" height=\"220\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-300x220.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446-624x457.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/09/Selection_446.jpg 825w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a>Over the last couple of months <strong>Juanfran Granados</strong> from <a href=\"https://www.mirai.com/\" target=\"_blank\" rel=\"nofollow noopener noreferrer\" data-saferedirecturl=\"https://www.google.com/url?q=https://www.mirai.com/&amp;source=gmail&amp;ust=1569139625034000&amp;usg=AFQjCNFmYCmkcmJLnpp85c5mMX78VD89vA\">Mirai</a>, an hotelier agency that used WordPress extensively, worked hard to add multisite administration capabilities to Autoptimize:</p>
<ul>
<li>If AO has been network-activated, there will be an entry-point in the network settings screens where one can configure Autoptimize for the entire network.</li>
<li>On the subsites the AO settings screen will show a message that settings are done at a network level</li>
<li>On the network-AO-settings there is an option to allow AO to be configured per site</li>
<li>if AO has not been network-activated, things work as they do now; all settings are done on a per-site level</li>
</ul>
<p>I have just <a href=\"https://github.com/futtta/autoptimize/tree/multisite-test\">merged his code into separate branch on Github</a> and given that significant changes that went into this (almost all files changed), I need you and you and you and &#8230; to <a href=\"https://github.com/futtta/autoptimize/archive/multisite-test.zip\">download and test that multisite-test branch</a> before I merge the changes into the beta branch. Looking forward to your feedback!</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/10/27/autoptimize-to-allow-optimizing-whitelisted-resources-only-and-more/\" rel=\"bookmark\" title=\"Autoptimize to allow optimizing whitelisted resources only (and more)\">Autoptimize to allow optimizing whitelisted resources only (and more) </a></li>
<li><a href=\"https://blog.futtta.be/2015/12/09/bringing-autoptimize-2-0-beta-to-a-christmas-tree-near-you/\" rel=\"bookmark\" title=\"Bringing Autoptimize 2.0 (beta) to a Christmas-tree near you\">Bringing Autoptimize 2.0 (beta) to a Christmas-tree near you </a></li>
<li><a href=\"https://blog.futtta.be/2016/02/29/heads-up-autoptimize-minor-release/\" rel=\"bookmark\" title=\"Heads up: Autoptimize minor release\">Heads up: Autoptimize minor release </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/nMOqydk9EIg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:73:\"
		
		
				
				
		
				
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize on the Smart Web Creators podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/zC97U1kdY4A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 28 Jun 2019 07:29:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"optimizing matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:18:\"smart web creators\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10887\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"Autoptimize was featured on the Smart Web Creators podcast, check it out below;\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1334:\"<p>Autoptimize was featured on the Smart Web Creators podcast, check it out below;</p>
<p><a href=\"https://smartwebcreators.com/website-optimization-workflow-swc-38/\"><img class=\"alignnone size-medium wp-image-10888\" src=\"http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364-300x169.jpg\" alt=\"\" width=\"300\" height=\"169\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364-300x169.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/06/Selection_364.jpg 549w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/09/02/almost-time-to-announce/\" rel=\"bookmark\" title=\"Almost time to announce\">Almost time to announce </a></li>
<li><a href=\"https://blog.futtta.be/2017/04/11/autoptimize-2-2-coming-your-way-care-to-test/\" rel=\"bookmark\" title=\"Autoptimize 2.2 coming your way, care to test?\">Autoptimize 2.2 coming your way, care to test? </a></li>
<li><a href=\"https://blog.futtta.be/2017/11/16/small-experiment-autoptimize-with-page-cache/\" rel=\"bookmark\" title=\"Small experiment; Autoptimize with page cache\">Small experiment; Autoptimize with page cache </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/zC97U1kdY4A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"For the love of Dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/i12rlqosChw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jun 2019 11:23:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:9:\"funfunfun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"hello dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"review\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:14:\"why so serious\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10883\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"Love ya Dolly!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1266:\"<p>Love ya Dolly!</p>
<p><a href=\"https://wordpress.org/support/topic/dollyll-never-go-away-again\"><img class=\"alignnone wp-image-10884\" src=\"http://blog.futtta.be/wp-content/uploads/2019/06/dolly.png\" alt=\"\" width=\"600\" height=\"409\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/06/dolly.png 1014w, http://blog.futtta.be/wp-content/uploads/2019/06/dolly-300x204.png 300w, http://blog.futtta.be/wp-content/uploads/2019/06/dolly-624x425.png 624w\" sizes=\"(max-width: 600px) 100vw, 600px\" /></a></p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/04/14/reviewing-bad-reviews-when-in-a-bad-mood/\" rel=\"bookmark\" title=\"Reviewing bad reviews when in a bad mood\">Reviewing bad reviews when in a bad mood </a></li>
<li><a href=\"https://blog.futtta.be/2009/10/22/blog-futtta-be-going-mobile-with-wptouch/\" rel=\"bookmark\" title=\"blog.futtta.be going mobile with WPtouch\">blog.futtta.be going mobile with WPtouch </a></li>
<li><a href=\"https://blog.futtta.be/2010/12/31/coding-for-the-new-year/\" rel=\"bookmark\" title=\"Coding for the New Year\">Coding for the New Year </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/i12rlqosChw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize featured on The CommonSenSEO Show\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/17AdJunAvRY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Jun 2019 16:54:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:16:\"async javascript\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"commonsenseo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:25:\"google pagespeed insights\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:13:\"optimize demo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10876\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:161:\"I had a nice chat on The CommonSenSEO Show, if you want to hear me ramble you can do so in this video; And if you&#8217;re into SEO, do subscribe to the channel!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1340:\"<p>I had a nice chat on The CommonSenSEO Show, if you want to hear me ramble you can do so in this video;</p>
<p><a href=\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/\"><img src=\"http://blog.futtta.be/wp-content/plugins/wp-youtube-lyte/lyteThumbs.php?origThumbUrl=https%3A%2F%2Fi.ytimg.com%2Fvi%2Fbmlypiamhhk%2Fhqdefault.jpg\" alt=\"YouTube Video\"></a><br />Watch this video <a href=\"http://youtu.be/bmlypiamhhk\">on YouTube</a>.</p>
<p>And if you&#8217;re into SEO, do subscribe to the channel!</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2018/03/13/taking-over-async-javascript-wordpress-plugin/\" rel=\"bookmark\" title=\"Taking over Async JavaScript WordPress plugin\">Taking over Async JavaScript WordPress plugin </a></li>
<li><a href=\"https://blog.futtta.be/2018/12/04/when-should-you-update-to-wordpress-5-0/\" rel=\"bookmark\" title=\"(When) Should you update to WordPress 5.0?\">(When) Should you update to WordPress 5.0? </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/17AdJunAvRY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"We just joined the club!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/WkCDsnPTu3Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 May 2019 08:52:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:25:\"1 million active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10872\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:388:\"Autoptimize just joined the &#8220;1+ million active installs&#8221;-club. Crazy! I&#8217;m very happy, thanks everyone for using, thanks for the support-questions &#38; all the great feedback therein and especially thanks to the people who actively contributed and especially-especially to Emilio López (Turl) for creating Autoptimize and handing it over to me back in 2013 and to [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2080:\"<p>Autoptimize just joined the &#8220;1+ million active installs&#8221;-club. Crazy!</p>
<p><a href=\"https://wordpress.org/plugins/autoptimize/advanced/\"><img class=\"alignnone size-medium wp-image-10873\" src=\"http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-300x177.jpg\" alt=\"\" width=\"300\" height=\"177\" srcset=\"http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-300x177.jpg 300w, http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323-624x368.jpg 624w, http://blog.futtta.be/wp-content/uploads/2019/05/Selection_323.jpg 643w\" sizes=\"(max-width: 300px) 100vw, 300px\" /></a></p>
<p>I&#8217;m very happy, thanks everyone for using, thanks for the support-questions &amp; all the great feedback therein and especially thanks to the people who actively contributed and especially-especially to Emilio López (Turl) for creating Autoptimize and <a href=\"https://blog.futtta.be/2013/01/07/adopting-an-oss-orphan-autoptimize/\">handing it over to me back in 2013</a> and to <a href=\"https://twitter.com/zytzagoo\">Tomaš Trkulja</a> who cleaned up al lot of the messy code I added to it and introducing me to PHP codesniffer &amp; Travis CI tests.</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2016/03/15/why-would-you-still-be-on-php-5-2/\" rel=\"bookmark\" title=\"Why would you still be on PHP 5.2?\">Why would you still be on PHP 5.2? </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
<li><a href=\"https://blog.futtta.be/2012/11/06/dipping-below-the-magical-1-second-page-load-time/\" rel=\"bookmark\" title=\"Dipping below the magical 1 second page load time\">Dipping below the magical 1 second page load time </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/WkCDsnPTu3Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Google Font display swap in Autoptimize?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/BSikBZpiPmE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 May 2019 13:02:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"howto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"code snippet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"font-display\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:12:\"google fonts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10869\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:216:\"Autoptimize 2.5.1 (out earlier this week) does not have an option to enforce font-display on Google Fonts just yet, but this little code snippet does exactly that; Happy swapping (or fallback-ing or optional-ing) :-)\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1450:\"<p>Autoptimize 2.5.1 (out earlier this week) does not have an option to enforce font-display on Google Fonts just yet, but this little code snippet does exactly that;</p>
<pre class=\"brush: php; title: ; notranslate\">add_filter(\'autoptimize_filter_extra_gfont_fontstring\',\'add_display\');
function add_display($in) {
  return $in.\'&amp;amp;display=swap\';
}</pre>
<p>Happy <a href=\"https://developer.mozilla.org/en-US/docs/Web/CSS/@font-face/font-display\">swapping (or fallback-ing or optional-ing)</a> :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2015/08/07/why-autoptimize-doesnt-touch-non-local-cssjs/\" rel=\"bookmark\" title=\"Why Autoptimize doesn&#8217;t touch non-local CSS/JS\">Why Autoptimize doesn&#8217;t touch non-local CSS/JS </a></li>
<li><a href=\"https://blog.futtta.be/2017/12/07/ao-extra-feature-complete-testers-needed/\" rel=\"bookmark\" title=\"AO extra feature-complete, testers needed\">AO extra feature-complete, testers needed </a></li>
<li><a href=\"https://blog.futtta.be/2017/12/17/heads-up-autoptimize-2-3-coming-with-new-features-last-call-for-testers/\" rel=\"bookmark\" title=\"[heads up] Autoptimize 2.3 coming with new features, last call for testers\">[heads up] Autoptimize 2.3 coming with new features, last call for testers </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/BSikBZpiPmE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Easter bunny special: Autoptimize 2.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/sdlENUsfCm0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 22 Apr 2019 13:18:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"easter egg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:15:\"image lazy load\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"lazysizes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:4:\"webp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10859\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:336:\"Autoptimize 2.5 has been released earlier today (April 22nd). Main focus of this release is more love for image optimization, now on a separate tab and including lazyload and WebP support. Lots of other bugfixes and smaller improvements too off course, e.g. an option to disable the minification of excluded CSS/ JS (which 2.4 did [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:1545:\"<p><a href=\"https://en.wikipedia.org/wiki/Easter_egg_(media)\"><img class=\"alignright wp-image-10860 size-thumbnail\" src=\"http://blog.futtta.be/wp-content/uploads/2019/04/Carl_Oswald_Rostosky_-_Zwei_Kaninchen_und_ein_Igel_1861-150x150.jpg\" alt=\"\" width=\"150\" height=\"150\" /></a>Autoptimize 2.5 has been released earlier today (April 22nd).</p>
<p>Main focus of this release is more love for image optimization, now on a separate tab and including lazyload and WebP support.</p>
<p>Lots of other bugfixes and smaller improvements too off course, e.g. an option to disable the minification of excluded CSS/ JS (which 2.4 did by default).</p>
<p>No Easter eggs in there though :-)</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2018/12/31/autoptimize-2-5-beta-image-lazy-loading/\" rel=\"bookmark\" title=\"Autoptimize 2.5 beta: image lazy loading\">Autoptimize 2.5 beta: image lazy loading </a></li>
<li><a href=\"https://blog.futtta.be/2016/07/24/preparing-for-autoptimize-2-0-3-or-2-1-0/\" rel=\"bookmark\" title=\"Preparing (for) Autoptimize 2.0.3 or 2.1.0\">Preparing (for) Autoptimize 2.0.3 or 2.1.0 </a></li>
<li><a href=\"https://blog.futtta.be/2017/08/11/loading-webfonts-just-for-a-title-switch-to-svg-instead/\" rel=\"bookmark\" title=\"Loading webfonts just for a title? Switch to SVG instead.\">Loading webfonts just for a title? Switch to SVG instead. </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/sdlENUsfCm0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"How to (not) correctly load Gutenberg JS\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"http://feedproxy.google.com/~r/futtta_wordpress/~3/ZWcHgv7_HWE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 22 Mar 2019 16:09:12 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"howto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:15:\"Web development\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:27:\"enqueue_block_editor_assets\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:9:\"gutenberg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:20:\"register_block_types\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10827\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:325:\"On Facebook someone asked me how to do Gutenberg the right way to avoid loading too much JS on the frontend, this is a somewhat better organized version of my answer; I&#8217;m not a Gutenberg specialist (for from it, really) but: the wrong way is adding JS with wp-block/ wp-element and other gutenberg dependencies on [...]\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:2149:\"<p>On Facebook someone asked me how to do Gutenberg the right way to avoid <a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\">loading too much JS on the frontend</a>, this is a somewhat better organized version of my answer;</p>
<p>I&#8217;m not a Gutenberg specialist (for from it, really) but:</p>
<ul>
<li>the <strong>wrong way</strong> is adding JS with wp-block/ wp-element and other gutenberg dependencies on <strong>init calling wp_enqueue_script</strong>,</li>
<li>the <strong>right way</strong> is either hooking into <strong>enqueue_block_editor_assets</strong> (see https://jasonyingling.me/enqueueing-scripts-and-styles-for-gutenberg-blocks/)</li>
<li><strong>or</strong> when using init doing <strong>wp_register_script and then register_block_type</strong> referring to the correct editor_script previously registered (see https://wordpress.org/gutenberg/handbook/designers-developers/developers/tutorials/block-tutorial/writing-your-first-block-type/).</li>
</ul>
<p>I&#8217;ve tried both of these on a &#8220;bad&#8221; plugin and can confirm both solutions do prevent those needless wp-includes/js/dist/* JS-files from being added on the front-end.</p>
<div class=\'yarpp-related-rss\'>
<p>Possibly related twitterless twaddle:<ul>
<li><a href=\"https://blog.futtta.be/2018/08/28/hide-my-wordpress-autoptimize-compatibility-glue/\" rel=\"bookmark\" title=\"Hide-my-WordPress &#038; Autoptimize compatibility glue\">Hide-my-WordPress &#038; Autoptimize compatibility glue </a></li>
<li><a href=\"https://blog.futtta.be/2018/01/25/how-to-extract-blocks-from-gutenberg/\" rel=\"bookmark\" title=\"How to extract blocks from Gutenberg\">How to extract blocks from Gutenberg </a></li>
<li><a href=\"https://blog.futtta.be/2019/03/18/developers-dont-make-gutenberg-go-badass-enberg-on-my-frontend/\" rel=\"bookmark\" title=\"Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend!\">Developers: don&#8217;t make Gutenberg go Badass-enberg on my frontend! </a></li>
</ul></p>
</div>
<img src=\"http://feeds.feedburner.com/~r/futtta_wordpress/~4/ZWcHgv7_HWE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:78:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:73:\"https://blog.futtta.be/2019/03/22/how-to-not-correctly-load-gutenberg-js/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"
	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"
	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:44:\"http://feeds.feedburner.com/futtta_wordpress\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:16:\"futtta_wordpress\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"4dnG50PDm95M32BMi5gBLabw3oE\";s:13:\"last-modified\";s:29:\"Mon, 04 Nov 2019 18:37:18 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:7:\"expires\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20191104192125\";}","no");
INSERT INTO `wmxss_options` VALUES("234","_transient_timeout_feed_mod_3dcbbcc036ac7e5be38f83a0bd0adcdd","1572939091","no");
INSERT INTO `wmxss_options` VALUES("235","_transient_feed_mod_3dcbbcc036ac7e5be38f83a0bd0adcdd","1572895891","no");
INSERT INTO `wmxss_options` VALUES("236","_transient_timeout_feed_aed63b76c6b70f6096be5d99f700e3df","1572939091","no");
INSERT INTO `wmxss_options` VALUES("237","_transient_feed_aed63b76c6b70f6096be5d99f700e3df","a:4:{s:5:\"child\";a:1:{s:0:\"\";a:1:{s:3:\"rss\";a:1:{i:0;a:6:{s:4:\"data\";s:3:\"


\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:7:\"version\";s:3:\"2.0\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:1:{s:0:\"\";a:1:{s:7:\"channel\";a:1:{i:0;a:6:{s:4:\"data\";s:49:\"
	
	
	
	
	
	
	
	
	
	
		
		
		
		
		
		
		
		
		
	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:4:{s:0:\"\";a:7:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:53:\"futtta&#039;s blog &gt;&gt; web and mobile technology\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:22:\"https://blog.futtta.be\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:11:\"description\";a:1:{i:0;a:5:{s:4:\"data\";s:49:\"Feed for blogposts about web & mobile technology.\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:13:\"lastBuildDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"language\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"en-US\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:9:\"generator\";a:1:{i:0;a:5:{s:4:\"data\";s:30:\"https://wordpress.org/?v=5.2.4\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"item\";a:10:{i:0;a:6:{s:4:\"data\";s:85:\"
		
		
				
				
		
				
		
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Autoptimize closing in on W3 Total Cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/Z8LBbKqDVUk/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 31 Oct 2019 21:18:44 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:9:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"Quickie\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"w3 total cache\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:25:\"wordpress active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:25:\"wordpress popular plugins\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10943\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:471:\"Fun fact; As per wordpress.org &#8220;popular plugins&#8221; ranking , Autoptimize is slowly but surely closing in on what used to be the go-to solution for Web Performance Optimization W3 Total Cache based on the &#8220;active installs&#8221; metric. Who would have thought? What a crazy ride...<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/Z8LBbKqDVUk\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:75:\"https://blog.futtta.be/2019/10/31/autoptimize-closing-in-on-w3-total-cache/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:1;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:39:\"Autoptimize testimonial from Wolf Braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/SXor_0AVxZg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 23 Sep 2019 09:10:55 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:11:\"testimonial\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:10:\"wolf braun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10921\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:319:\"Wolf Braun is a happy Autopitmize user and created this testimonial to tell the world just how great he thinks AO is; Thanks Wolf, we agree! :-)<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/SXor_0AVxZg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/09/23/autoptimize-testimonial-from-wolf-braun/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:2;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize 2.6: testers for multisite wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/nMOqydk9EIg/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:87:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 21 Sep 2019 08:26:58 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:4:\"beta\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"github\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"multisite\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"testers wanted\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10917\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:472:\"Over the last couple of months Juanfran Granados from Mirai, an hotelier agency that used WordPress extensively, worked hard to add multisite administration capabilities to Autoptimize: If AO has been network-activated, there will be an entry-point in the network settings screens where one can...<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/nMOqydk9EIg\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/09/21/autoptimize-2-6-testers-for-multisite-wanted/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:3;a:6:{s:4:\"data\";s:88:\"
		
		
				
				
		
				
		
		
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:43:\"(even) more privacy with Firefox Containers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/RD5MZ9aIFcU/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:84:\"https://blog.futtta.be/2019/07/17/even-more-privacy-with-firefox-containers/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Wed, 17 Jul 2019 12:02:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:10:{i:0;a:5:{s:4:\"data\";s:8:\"browsers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"firefox\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"Futtta-land\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:10:\"Technology\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:14:\"fingerprinting\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:18:\"firefox containers\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:8;a:5:{s:4:\"data\";s:7:\"privacy\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:9;a:5:{s:4:\"data\";s:8:\"tracking\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10891\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:471:\"Being wary of all things tracking by Google &#38; Facebook, both of who&#8217;s products I love but data capturing practices I hate, for the last 4 years or so I always logged in into these in &#8220;Private browsing&#8221; sessions in Firefox (because why trust the worlds biggest advertising...<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/RD5MZ9aIFcU\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:81:\"https://blog.futtta.be/2019/07/17/even-more-privacy-with-firefox-containers/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://blog.futtta.be/2019/07/17/even-more-privacy-with-firefox-containers/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:4;a:6:{s:4:\"data\";s:73:\"
		
		
				
				
		
				
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize on the Smart Web Creators podcast\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/zC97U1kdY4A/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:89:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 28 Jun 2019 07:29:38 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:5:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:18:\"optimizing matters\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:18:\"smart web creators\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10887\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:254:\"Autoptimize was featured on the Smart Web Creators podcast, check it out below;<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/zC97U1kdY4A\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"2\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/06/28/autoptimize-on-the-smart-web-creators-podcast/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:5;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:21:\"For the love of Dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/i12rlqosChw/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:65:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Thu, 20 Jun 2019 11:23:32 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:9:\"funfunfun\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"hello dolly\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:6:\"review\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:14:\"why so serious\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10883\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:189:\"Love ya Dolly!<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/i12rlqosChw\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"1\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:56:\"https://blog.futtta.be/2019/06/20/for-the-love-of-dolly/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:6;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:45:\"Autoptimize featured on The CommonSenSEO Show\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/17AdJunAvRY/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:85:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/#respond\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Tue, 04 Jun 2019 16:54:16 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:16:\"async javascript\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"commonsenseo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:25:\"google pagespeed insights\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:13:\"optimize demo\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10876\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:336:\"I had a nice chat on The CommonSenSEO Show, if you want to hear me ramble you can do so in this video; And if you&#8217;re into SEO, do subscribe to the channel!<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/17AdJunAvRY\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:82:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"0\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:77:\"https://blog.futtta.be/2019/06/04/autoptimize-featured-the-commonsenseo-show/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:7;a:6:{s:4:\"data\";s:76:\"
		
		
				
				
		
				
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:24:\"We just joined the club!\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/WkCDsnPTu3Q/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:67:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Sat, 25 May 2019 08:52:11 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:6:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:13:\"rants & raves\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:25:\"1 million active installs\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10872\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:475:\"Autoptimize just joined the &#8220;1+ million active installs&#8221;-club. Crazy! I&#8217;m very happy, thanks everyone for using, thanks for the support-questions &#38; all the great feedback therein and especially thanks to the people who actively contributed and especially-especially to Emilio...<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/WkCDsnPTu3Q\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:63:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"6\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:58:\"https://blog.futtta.be/2019/05/25/we-just-joined-the-club/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:8;a:6:{s:4:\"data\";s:82:\"
		
		
				
				
		
				
		
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:40:\"Google Font display swap in Autoptimize?\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/BSikBZpiPmE/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:83:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Fri, 24 May 2019 13:02:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:8:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:5:\"howto\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:11:\"performance\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:12:\"code snippet\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:12:\"font-display\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:7;a:5:{s:4:\"data\";s:12:\"google fonts\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10869\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:391:\"Autoptimize 2.5.1 (out earlier this week) does not have an option to enforce font-display on Google Fonts just yet, but this little code snippet does exactly that; Happy swapping (or fallback-ing or optional-ing) :-)<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/BSikBZpiPmE\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:79:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"8\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:74:\"https://blog.futtta.be/2019/05/24/google-font-display-swap-in-autoptimize/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}i:9;a:6:{s:4:\"data\";s:79:\"
		
		
				
				
		
				
		
		
		
		
		
		

		
				
								
							
		
							\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";s:5:\"child\";a:6:{s:0:\"\";a:6:{s:5:\"title\";a:1:{i:0;a:5:{s:4:\"data\";s:37:\"Easter bunny special: Autoptimize 2.5\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"link\";a:1:{i:0;a:5:{s:4:\"data\";s:61:\"http://feedproxy.google.com/~r/futtta_webtech/~3/sdlENUsfCm0/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:80:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/#comments\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:7:\"pubDate\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"Mon, 22 Apr 2019 13:18:05 +0000\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:8:\"category\";a:7:{i:0;a:5:{s:4:\"data\";s:11:\"autoptimize\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:7:\"lang:en\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:2;a:5:{s:4:\"data\";s:9:\"wordpress\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:3;a:5:{s:4:\"data\";s:10:\"easter egg\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:4;a:5:{s:4:\"data\";s:15:\"image lazy load\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:5;a:5:{s:4:\"data\";s:9:\"lazysizes\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:6;a:5:{s:4:\"data\";s:4:\"webp\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:4:\"guid\";a:1:{i:0;a:5:{s:4:\"data\";s:31:\"https://blog.futtta.be/?p=10859\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:11:\"isPermaLink\";s:5:\"false\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:32:\"http://purl.org/dc/elements/1.1/\";a:1:{s:7:\"creator\";a:1:{i:0;a:5:{s:4:\"data\";s:5:\"frank\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:40:\"http://purl.org/rss/1.0/modules/content/\";a:1:{s:7:\"encoded\";a:1:{i:0;a:5:{s:4:\"data\";s:476:\"Autoptimize 2.5 has been released earlier today (April 22nd). Main focus of this release is more love for image optimization, now on a separate tab and including lazyload and WebP support. Lots of other bugfixes and smaller improvements too off course, e.g. an option to disable the minification of...<br/>
<br/>
Click on this article&#39;s title to continue reading &gt;&gt;<img src=\"http://feeds.feedburner.com/~r/futtta_webtech/~4/sdlENUsfCm0\" height=\"1\" width=\"1\" alt=\"\"/>\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:36:\"http://wellformedweb.org/CommentAPI/\";a:1:{s:10:\"commentRss\";a:1:{i:0;a:5:{s:4:\"data\";s:76:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/feed/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:38:\"http://purl.org/rss/1.0/modules/slash/\";a:1:{s:8:\"comments\";a:1:{i:0;a:5:{s:4:\"data\";s:1:\"7\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:1:{s:8:\"origLink\";a:1:{i:0;a:5:{s:4:\"data\";s:71:\"https://blog.futtta.be/2019/04/22/easter-bunny-special-autoptimize-2-5/\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}s:44:\"http://purl.org/rss/1.0/modules/syndication/\";a:2:{s:12:\"updatePeriod\";a:1:{i:0;a:5:{s:4:\"data\";s:9:\"
	hourly	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:15:\"updateFrequency\";a:1:{i:0;a:5:{s:4:\"data\";s:4:\"
	1	\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:27:\"http://www.w3.org/2005/Atom\";a:1:{s:4:\"link\";a:2:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:3:{s:3:\"rel\";s:4:\"self\";s:4:\"type\";s:19:\"application/rss+xml\";s:4:\"href\";s:42:\"http://feeds.feedburner.com/futtta_webtech\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}i:1;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:2:{s:3:\"rel\";s:3:\"hub\";s:4:\"href\";s:32:\"http://pubsubhubbub.appspot.com/\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}s:42:\"http://rssnamespace.org/feedburner/ext/1.0\";a:3:{s:4:\"info\";a:1:{i:0;a:5:{s:4:\"data\";s:0:\"\";s:7:\"attribs\";a:1:{s:0:\"\";a:1:{s:3:\"uri\";s:14:\"futtta_webtech\";}}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:14:\"emailServiceId\";a:1:{i:0;a:5:{s:4:\"data\";s:14:\"futtta_webtech\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}s:18:\"feedburnerHostname\";a:1:{i:0;a:5:{s:4:\"data\";s:29:\"https://feedburner.google.com\";s:7:\"attribs\";a:0:{}s:8:\"xml_base\";s:0:\"\";s:17:\"xml_base_explicit\";b:0;s:8:\"xml_lang\";s:0:\"\";}}}}}}}}}}}}s:4:\"type\";i:128;s:7:\"headers\";O:42:\"Requests_Utility_CaseInsensitiveDictionary\":1:{s:7:\"\0*\0data\";a:10:{s:12:\"content-type\";s:23:\"text/xml; charset=UTF-8\";s:4:\"etag\";s:27:\"zEgFf4kxOjRZuNeqc45uOPTdpIc\";s:13:\"last-modified\";s:29:\"Mon, 04 Nov 2019 17:54:19 GMT\";s:16:\"content-encoding\";s:4:\"gzip\";s:4:\"date\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:7:\"expires\";s:29:\"Mon, 04 Nov 2019 19:31:31 GMT\";s:13:\"cache-control\";s:18:\"private, max-age=0\";s:22:\"x-content-type-options\";s:7:\"nosniff\";s:16:\"x-xss-protection\";s:13:\"1; mode=block\";s:6:\"server\";s:3:\"GSE\";}}s:5:\"build\";s:14:\"20191104192125\";}","no");
INSERT INTO `wmxss_options` VALUES("238","_transient_timeout_feed_mod_aed63b76c6b70f6096be5d99f700e3df","1572939091","no");
INSERT INTO `wmxss_options` VALUES("239","_transient_feed_mod_aed63b76c6b70f6096be5d99f700e3df","1572895891","no");
INSERT INTO `wmxss_options` VALUES("240","autoptimize_html","on","yes");
INSERT INTO `wmxss_options` VALUES("241","autoptimize_html_keepcomments","on","yes");
INSERT INTO `wmxss_options` VALUES("242","autoptimize_js","on","yes");
INSERT INTO `wmxss_options` VALUES("243","autoptimize_js_aggregate","on","yes");
INSERT INTO `wmxss_options` VALUES("244","autoptimize_js_exclude","wp-includes/js/dist/, wp-includes/js/tinymce/, js/jquery/jquery.js","yes");
INSERT INTO `wmxss_options` VALUES("245","autoptimize_js_trycatch","","yes");
INSERT INTO `wmxss_options` VALUES("246","autoptimize_js_justhead","","yes");
INSERT INTO `wmxss_options` VALUES("247","autoptimize_js_forcehead","","yes");
INSERT INTO `wmxss_options` VALUES("248","autoptimize_js_include_inline","","yes");
INSERT INTO `wmxss_options` VALUES("249","autoptimize_css","on","yes");
INSERT INTO `wmxss_options` VALUES("250","autoptimize_css_aggregate","on","yes");
INSERT INTO `wmxss_options` VALUES("251","autoptimize_css_exclude","wp-content/cache/, wp-content/uploads/, admin-bar.min.css, dashicons.min.css","yes");
INSERT INTO `wmxss_options` VALUES("252","autoptimize_css_justhead","","yes");
INSERT INTO `wmxss_options` VALUES("253","autoptimize_css_datauris","","yes");
INSERT INTO `wmxss_options` VALUES("254","autoptimize_css_defer","","yes");
INSERT INTO `wmxss_options` VALUES("255","autoptimize_css_defer_inline","","yes");
INSERT INTO `wmxss_options` VALUES("256","autoptimize_css_inline","","yes");
INSERT INTO `wmxss_options` VALUES("257","autoptimize_css_include_inline","on","yes");
INSERT INTO `wmxss_options` VALUES("258","autoptimize_cdn_url","","yes");
INSERT INTO `wmxss_options` VALUES("259","autoptimize_cache_clean","0","yes");
INSERT INTO `wmxss_options` VALUES("260","autoptimize_cache_nogzip","on","yes");
INSERT INTO `wmxss_options` VALUES("261","autoptimize_show_adv","1","yes");
INSERT INTO `wmxss_options` VALUES("262","autoptimize_optimize_logged","on","yes");
INSERT INTO `wmxss_options` VALUES("263","autoptimize_optimize_checkout","","yes");
INSERT INTO `wmxss_options` VALUES("264","autoptimize_minify_excluded","on","yes");
INSERT INTO `wmxss_options` VALUES("267","_transient_timeout_autoptimize_cache_warmer_protector","1572896659","no");
INSERT INTO `wmxss_options` VALUES("268","_transient_autoptimize_cache_warmer_protector","I shall not warm cache for another 10 minutes.","no");
INSERT INTO `wmxss_options` VALUES("269","autoptimize_imgopt_settings","a:5:{s:35:\"autoptimize_imgopt_checkbox_field_1\";s:1:\"1\";s:33:\"autoptimize_imgopt_select_field_2\";s:1:\"1\";s:35:\"autoptimize_imgopt_checkbox_field_4\";s:1:\"1\";s:35:\"autoptimize_imgopt_checkbox_field_3\";s:1:\"1\";s:31:\"autoptimize_imgopt_text_field_5\";s:0:\"\";}","yes");
INSERT INTO `wmxss_options` VALUES("272","aiowpsec_db_version","1.9","yes");
INSERT INTO `wmxss_options` VALUES("273","aio_wp_security_configs","a:93:{s:19:\"aiowps_enable_debug\";s:0:\"\";s:36:\"aiowps_remove_wp_generator_meta_info\";s:0:\"\";s:25:\"aiowps_prevent_hotlinking\";s:0:\"\";s:28:\"aiowps_enable_login_lockdown\";s:0:\"\";s:28:\"aiowps_allow_unlock_requests\";s:0:\"\";s:25:\"aiowps_max_login_attempts\";s:1:\"3\";s:24:\"aiowps_retry_time_period\";s:1:\"5\";s:26:\"aiowps_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_set_generic_login_msg\";s:0:\"\";s:26:\"aiowps_enable_email_notify\";s:0:\"\";s:20:\"aiowps_email_address\";s:20:\"hye.akshay@gmail.com\";s:27:\"aiowps_enable_forced_logout\";s:0:\"\";s:25:\"aiowps_logout_time_period\";s:2:\"60\";s:39:\"aiowps_enable_invalid_username_lockdown\";s:0:\"\";s:43:\"aiowps_instantly_lockout_specific_usernames\";a:0:{}s:32:\"aiowps_unlock_request_secret_key\";s:20:\"urx0gi4iori2n76q9bkl\";s:35:\"aiowps_lockdown_enable_whitelisting\";s:0:\"\";s:36:\"aiowps_lockdown_allowed_ip_addresses\";s:0:\"\";s:26:\"aiowps_enable_whitelisting\";s:0:\"\";s:27:\"aiowps_allowed_ip_addresses\";s:0:\"\";s:27:\"aiowps_enable_login_captcha\";s:1:\"1\";s:34:\"aiowps_enable_custom_login_captcha\";s:1:\"1\";s:31:\"aiowps_enable_woo_login_captcha\";s:1:\"1\";s:34:\"aiowps_enable_woo_register_captcha\";s:1:\"1\";s:38:\"aiowps_enable_woo_lostpassword_captcha\";s:1:\"1\";s:25:\"aiowps_captcha_secret_key\";s:20:\"9uindfc3ndqoldy978k8\";s:42:\"aiowps_enable_manual_registration_approval\";s:0:\"\";s:39:\"aiowps_enable_registration_page_captcha\";s:1:\"1\";s:35:\"aiowps_enable_registration_honeypot\";s:1:\"1\";s:27:\"aiowps_enable_random_prefix\";s:0:\"\";s:31:\"aiowps_enable_automated_backups\";s:0:\"\";s:26:\"aiowps_db_backup_frequency\";s:1:\"4\";s:25:\"aiowps_db_backup_interval\";s:1:\"2\";s:26:\"aiowps_backup_files_stored\";s:1:\"2\";s:32:\"aiowps_send_backup_email_address\";s:0:\"\";s:27:\"aiowps_backup_email_address\";s:20:\"hye.akshay@gmail.com\";s:27:\"aiowps_disable_file_editing\";s:0:\"\";s:37:\"aiowps_prevent_default_wp_file_access\";s:0:\"\";s:22:\"aiowps_system_log_file\";s:9:\"error_log\";s:26:\"aiowps_enable_blacklisting\";s:0:\"\";s:26:\"aiowps_banned_ip_addresses\";s:0:\"\";s:28:\"aiowps_enable_basic_firewall\";s:0:\"\";s:31:\"aiowps_enable_pingback_firewall\";s:0:\"\";s:38:\"aiowps_disable_xmlrpc_pingback_methods\";s:0:\"\";s:34:\"aiowps_block_debug_log_file_access\";s:0:\"\";s:26:\"aiowps_disable_index_views\";s:0:\"\";s:30:\"aiowps_disable_trace_and_track\";s:0:\"\";s:28:\"aiowps_forbid_proxy_comments\";s:0:\"\";s:29:\"aiowps_deny_bad_query_strings\";s:0:\"\";s:34:\"aiowps_advanced_char_string_filter\";s:0:\"\";s:25:\"aiowps_enable_5g_firewall\";s:0:\"\";s:25:\"aiowps_enable_6g_firewall\";s:0:\"\";s:26:\"aiowps_enable_custom_rules\";s:0:\"\";s:32:\"aiowps_place_custom_rules_at_top\";s:0:\"\";s:19:\"aiowps_custom_rules\";s:0:\"\";s:25:\"aiowps_enable_404_logging\";s:0:\"\";s:28:\"aiowps_enable_404_IP_lockout\";s:0:\"\";s:30:\"aiowps_404_lockout_time_length\";s:2:\"60\";s:28:\"aiowps_404_lock_redirect_url\";s:16:\"http://127.0.0.1\";s:31:\"aiowps_enable_rename_login_page\";s:1:\"1\";s:28:\"aiowps_enable_login_honeypot\";s:1:\"1\";s:43:\"aiowps_enable_brute_force_attack_prevention\";s:0:\"\";s:30:\"aiowps_brute_force_secret_word\";s:0:\"\";s:24:\"aiowps_cookie_brute_test\";s:0:\"\";s:44:\"aiowps_cookie_based_brute_force_redirect_url\";s:16:\"http://127.0.0.1\";s:59:\"aiowps_brute_force_attack_prevention_pw_protected_exception\";s:0:\"\";s:51:\"aiowps_brute_force_attack_prevention_ajax_exception\";s:0:\"\";s:19:\"aiowps_site_lockout\";s:0:\"\";s:23:\"aiowps_site_lockout_msg\";s:0:\"\";s:30:\"aiowps_enable_spambot_blocking\";s:0:\"\";s:29:\"aiowps_enable_comment_captcha\";s:0:\"\";s:31:\"aiowps_enable_autoblock_spam_ip\";s:0:\"\";s:33:\"aiowps_spam_ip_min_comments_block\";s:0:\"\";s:33:\"aiowps_enable_bp_register_captcha\";s:0:\"\";s:35:\"aiowps_enable_bbp_new_topic_captcha\";s:0:\"\";s:32:\"aiowps_enable_automated_fcd_scan\";s:0:\"\";s:25:\"aiowps_fcd_scan_frequency\";s:1:\"4\";s:24:\"aiowps_fcd_scan_interval\";s:1:\"2\";s:28:\"aiowps_fcd_exclude_filetypes\";s:0:\"\";s:24:\"aiowps_fcd_exclude_files\";s:0:\"\";s:26:\"aiowps_send_fcd_scan_email\";s:0:\"\";s:29:\"aiowps_fcd_scan_email_address\";s:20:\"hye.akshay@gmail.com\";s:27:\"aiowps_fcds_change_detected\";b:0;s:22:\"aiowps_copy_protection\";s:0:\"\";s:40:\"aiowps_prevent_site_display_inside_frame\";s:0:\"\";s:32:\"aiowps_prevent_users_enumeration\";s:0:\"\";s:42:\"aiowps_disallow_unauthorized_rest_requests\";s:0:\"\";s:25:\"aiowps_ip_retrieve_method\";s:1:\"0\";s:25:\"aiowps_recaptcha_site_key\";s:40:\"6Lftl8AUAAAAALTK78xnVy_PXrv8l8iUaAAnXEJn\";s:27:\"aiowps_recaptcha_secret_key\";s:40:\"6Lftl8AUAAAAAGM97uh1bpsHdTugyCrm5AlIbaxP\";s:24:\"aiowps_default_recaptcha\";s:1:\"1\";s:22:\"aiowps_login_page_slug\";s:11:\"aao_chutiyo\";s:35:\"aiowps_enable_lost_password_captcha\";s:1:\"1\";}","yes");
INSERT INTO `wmxss_options` VALUES("274","_transient_timeout_users_online","1572898022","no");
INSERT INTO `wmxss_options` VALUES("275","_transient_users_online","a:2:{i:0;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";i:1572896132;s:10:\"ip_address\";s:9:\"10.44.0.0\";}i:1;a:3:{s:7:\"user_id\";i:1;s:13:\"last_activity\";i:1572896222;s:10:\"ip_address\";s:9:\"10.36.0.0\";}}","no");


DROP TABLE IF EXISTS `wmxss_postmeta`;

CREATE TABLE `wmxss_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_postmeta` VALUES("1","2","_wp_page_template","default");
INSERT INTO `wmxss_postmeta` VALUES("2","3","_wp_page_template","default");


DROP TABLE IF EXISTS `wmxss_posts`;

CREATE TABLE `wmxss_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_posts` VALUES("1","1","2019-11-04 18:18:34","2019-11-04 18:18:34","<!-- wp:paragraph -->
<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>
<!-- /wp:paragraph -->","Hello world!","","publish","open","open","","hello-world","","","2019-11-04 18:18:34","2019-11-04 18:18:34","","0","http://13.127.120.128/?p=1","0","post","","1");
INSERT INTO `wmxss_posts` VALUES("2","1","2019-11-04 18:18:34","2019-11-04 18:18:34","<!-- wp:paragraph -->
<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>...or something like this:</p>
<!-- /wp:paragraph -->

<!-- wp:quote -->
<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>
<!-- /wp:quote -->

<!-- wp:paragraph -->
<p>As a new WordPress user, you should go to <a href=\"http://13.127.120.128/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>
<!-- /wp:paragraph -->","Sample Page","","publish","closed","open","","sample-page","","","2019-11-04 18:18:34","2019-11-04 18:18:34","","0","http://13.127.120.128/?page_id=2","0","page","","0");
INSERT INTO `wmxss_posts` VALUES("3","1","2019-11-04 18:18:34","2019-11-04 18:18:34","<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://13.127.120.128.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->","Privacy Policy","","draft","closed","open","","privacy-policy","","","2019-11-04 18:18:34","2019-11-04 18:18:34","","0","http://13.127.120.128/?page_id=3","0","page","","0");
INSERT INTO `wmxss_posts` VALUES("4","1","2019-11-04 18:18:42","0000-00-00 00:00:00","","Auto Draft","","auto-draft","open","open","","","","","2019-11-04 18:18:42","0000-00-00 00:00:00","","0","http://13.127.120.128/?p=4","0","post","","0");


DROP TABLE IF EXISTS `wmxss_term_relationships`;

CREATE TABLE `wmxss_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_term_relationships` VALUES("1","1","0");


DROP TABLE IF EXISTS `wmxss_term_taxonomy`;

CREATE TABLE `wmxss_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_term_taxonomy` VALUES("1","1","category","","0","1");


DROP TABLE IF EXISTS `wmxss_termmeta`;

CREATE TABLE `wmxss_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;



DROP TABLE IF EXISTS `wmxss_terms`;

CREATE TABLE `wmxss_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_terms` VALUES("1","Starting with DevOps","startingwithdevops","0");


DROP TABLE IF EXISTS `wmxss_usermeta`;

CREATE TABLE `wmxss_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_usermeta` VALUES("1","1","nickname","Administrator");
INSERT INTO `wmxss_usermeta` VALUES("2","1","first_name","");
INSERT INTO `wmxss_usermeta` VALUES("3","1","last_name","");
INSERT INTO `wmxss_usermeta` VALUES("4","1","description","");
INSERT INTO `wmxss_usermeta` VALUES("5","1","rich_editing","true");
INSERT INTO `wmxss_usermeta` VALUES("6","1","syntax_highlighting","true");
INSERT INTO `wmxss_usermeta` VALUES("7","1","comment_shortcuts","false");
INSERT INTO `wmxss_usermeta` VALUES("8","1","admin_color","midnight");
INSERT INTO `wmxss_usermeta` VALUES("9","1","use_ssl","0");
INSERT INTO `wmxss_usermeta` VALUES("10","1","show_admin_bar_front","true");
INSERT INTO `wmxss_usermeta` VALUES("11","1","locale","");
INSERT INTO `wmxss_usermeta` VALUES("12","1","wmxss_capabilities","a:1:{s:13:\"administrator\";b:1;}");
INSERT INTO `wmxss_usermeta` VALUES("13","1","wmxss_user_level","10");
INSERT INTO `wmxss_usermeta` VALUES("14","1","dismissed_wp_pointers","plugin_editor_notice");
INSERT INTO `wmxss_usermeta` VALUES("15","1","show_welcome_panel","1");
INSERT INTO `wmxss_usermeta` VALUES("16","1","session_tokens","a:4:{s:64:\"e6080def8ae834c5e6574d1a26a85c6cb1ed568a225a2709d6c752ebddb0fae2\";a:4:{s:10:\"expiration\";i:1574101120;s:2:\"ip\";s:12:\"47.9.102.108\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1572891520;}s:64:\"54badc84fdd9cee492e11d711748ba942698d1b5580b8cb272c5455b4654d7d8\";a:4:{s:10:\"expiration\";i:1574105301;s:2:\"ip\";s:12:\"47.9.102.108\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1572895701;}s:64:\"f86b8be2f0c30379044755531200ccda6eb10f9150c34403f33944c5805ece6f\";a:4:{s:10:\"expiration\";i:1574105325;s:2:\"ip\";s:9:\"10.36.0.0\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1572895725;}s:64:\"580eebdd9bec6ec0b2d96f1db36eeef04a2035d6a6a839ac7e3a0b522ccac58d\";a:4:{s:10:\"expiration\";i:1574105353;s:2:\"ip\";s:9:\"10.36.0.0\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:70.0) Gecko/20100101 Firefox/70.0\";s:5:\"login\";i:1572895753;}}");
INSERT INTO `wmxss_usermeta` VALUES("17","1","wmxss_dashboard_quick_press_last_post_id","4");
INSERT INTO `wmxss_usermeta` VALUES("18","1","community-events-location","a:1:{s:2:\"ip\";s:10:\"47.9.102.0\";}");


DROP TABLE IF EXISTS `wmxss_users`;

CREATE TABLE `wmxss_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

INSERT INTO `wmxss_users` VALUES("1","chutiyatv","$P$B3Z8qZrVqIgbueT0S/JzHubwAqdpfA.","chutiyatv","hye.akshay@gmail.com","","2019-11-04 18:18:34","","0","Administrator");


