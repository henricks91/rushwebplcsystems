-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 10, 2015 at 04:50 PM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_plcsystems`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

DROP TABLE IF EXISTS `wp_commentmeta`;
CREATE TABLE IF NOT EXISTS `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_commentmeta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

DROP TABLE IF EXISTS `wp_comments`;
CREATE TABLE IF NOT EXISTS `wp_comments` (
  `comment_ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint(20) unsigned NOT NULL DEFAULT '0',
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT '',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_comments`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_layerslider`
--

DROP TABLE IF EXISTS `wp_layerslider`;
CREATE TABLE IF NOT EXISTS `wp_layerslider` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `data` mediumtext NOT NULL,
  `date_c` int(10) NOT NULL,
  `date_m` int(11) NOT NULL,
  `flag_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `flag_deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_layerslider`
--

INSERT INTO `wp_layerslider` (`id`, `name`, `data`, `date_c`, `date_m`, `flag_hidden`, `flag_deleted`) VALUES
(1, 'Home Slider', '{"properties":{"title":"Home Slider","width":"100%","height":"397","responsive":"on","responsiveunder":"0","sublayercontainer":"0","autostart":"on","pauseonhover":"on","firstlayer":"1","animatefirstlayer":"on","twowayslideshow":"on","loops":"0","forceloopnum":"on","autoplayvideos":"on","autopauseslideshow":"auto","youtubepreview":"maxresdefault.jpg","keybnav":"on","touchnav":"on","skin":"defaultskin","backgroundcolor":"","backgroundimage":"","sliderstyle":"","navbuttons":"on","thumb_nav":"hover","thumb_width":"100","thumb_height":"60","thumb_container_width":"60%","thumb_active_opacity":"35","thumb_inactive_opacity":"100","imgpreload":"on","yourlogo":"","yourlogostyle":"left: 10px; top: 10px;","yourlogolink":"","yourlogotarget":"_self","cbinit":"function(element) { }","cbstart":"function(data) { }","cbstop":"function(data) { }","cbpause":"function(data) { }","cbanimstart":"function(data) { }","cbanimstop":"function(data) { }","cbprev":"function(data) { }","cbnext":"function(data) { }"},"layers":[{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/banner1.jpg","thumbnail":"","slidedelay":"20000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1","type":"div","image":"","html":"<div class=\\\\\\"col-lg-12 minis-wrapper\\\\\\">\\r\\n<div class=\\\\\\"container minis\\\\\\">\\r\\n\\t<div id=\\\\\\"mini1\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini2\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini3\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini4\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini5\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n","slidedirection":"auto","durationin":"1000","easingin":"easeInOutQuint","delayin":"0","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1000","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"0px","left":"0px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/banner1.jpg","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1","type":"div","image":"","html":"<div class=\\\\\\"col-lg-12 minis-wrapper\\\\\\">\\r\\n<div class=\\\\\\"container minis\\\\\\">\\r\\n\\t<div id=\\\\\\"mini6\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini7\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini8\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini9\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n\\t<div id=\\\\\\"mini10\\\\\\" class=\\\\\\"col-lg-2 mini-slide\\\\\\">\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini1.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini2.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini3.png\\\\\\" \\/><\\/p>\\r\\n\\t\\t<p><img src=\\\\\\"http:\\/\\/localhost\\/plcsystems\\/wp-content\\/uploads\\/2015\\/08\\/mini4.png\\\\\\" \\/><\\/p>\\r\\n\\t<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>","slidedirection":"auto","durationin":"1000","easingin":"easeInOutQuint","delayin":"0","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1000","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"0px","left":"0px","style":"","id":"","class":"","title":"","alt":"","rel":""}]}]}', 1437285174, 1439018297, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

DROP TABLE IF EXISTS `wp_links`;
CREATE TABLE IF NOT EXISTS `wp_links` (
  `link_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) unsigned NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_links`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

DROP TABLE IF EXISTS `wp_options`;
CREATE TABLE IF NOT EXISTS `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(64) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=499 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/plcsystems', 'yes'),
(2, 'home', 'http://localhost/plcsystems', 'yes'),
(3, 'blogname', 'plcsystems', 'yes'),
(4, 'blogdescription', 'Just another WordPress site', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'henricks91@gmail.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '0', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'gzipcompression', '0', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:27:"LayerSlider/layerslider.php";i:1;s:30:"advanced-custom-fields/acf.php";i:2;s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";i:3;s:29:"gravityforms/gravityforms.php";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'advanced_edit', '0', 'yes'),
(37, 'comment_max_links', '2', 'yes'),
(38, 'gmt_offset', '0', 'yes'),
(39, 'default_email_category', '1', 'yes'),
(40, 'recently_edited', 'a:3:{i:0;s:65:"C:\\xampp\\htdocs\\plcsystems/wp-content/themes/plcsystems/style.css";i:1;s:72:"C:\\xampp\\htdocs\\rushwebplcsystems/wp-content/themes/plcsystems/style.css";i:2;s:0:"";}', 'no'),
(41, 'template', 'plcsystems', 'yes'),
(42, 'stylesheet', 'plcsystems', 'yes'),
(43, 'comment_whitelist', '1', 'yes'),
(44, 'blacklist_keys', '', 'no'),
(45, 'comment_registration', '0', 'yes'),
(46, 'html_type', 'text/html', 'yes'),
(47, 'use_trackback', '0', 'yes'),
(48, 'default_role', 'subscriber', 'yes'),
(49, 'db_version', '31536', 'yes'),
(50, 'uploads_use_yearmonth_folders', '1', 'yes'),
(51, 'upload_path', '', 'yes'),
(52, 'blog_public', '0', 'yes'),
(53, 'default_link_category', '2', 'yes'),
(54, 'show_on_front', 'page', 'yes'),
(55, 'tag_base', '', 'yes'),
(56, 'show_avatars', '1', 'yes'),
(57, 'avatar_rating', 'G', 'yes'),
(58, 'upload_url_path', '', 'yes'),
(59, 'thumbnail_size_w', '150', 'yes'),
(60, 'thumbnail_size_h', '150', 'yes'),
(61, 'thumbnail_crop', '1', 'yes'),
(62, 'medium_size_w', '300', 'yes'),
(63, 'medium_size_h', '300', 'yes'),
(64, 'avatar_default', 'mystery', 'yes'),
(65, 'large_size_w', '1024', 'yes'),
(66, 'large_size_h', '1024', 'yes'),
(67, 'image_default_link_type', 'file', 'yes'),
(68, 'image_default_size', '', 'yes'),
(69, 'image_default_align', '', 'yes'),
(70, 'close_comments_for_old_posts', '0', 'yes'),
(71, 'close_comments_days_old', '14', 'yes'),
(72, 'thread_comments', '1', 'yes'),
(73, 'thread_comments_depth', '5', 'yes'),
(74, 'page_comments', '0', 'yes'),
(75, 'comments_per_page', '50', 'yes'),
(76, 'default_comments_page', 'newest', 'yes'),
(77, 'comment_order', 'asc', 'yes'),
(78, 'sticky_posts', 'a:0:{}', 'yes'),
(79, 'widget_categories', 'a:2:{i:2;a:4:{s:5:"title";s:0:"";s:5:"count";i:0;s:12:"hierarchical";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(80, 'widget_text', 'a:0:{}', 'yes'),
(81, 'widget_rss', 'a:0:{}', 'yes'),
(82, 'uninstall_plugins', 'a:0:{}', 'no'),
(83, 'timezone_string', '', 'yes'),
(85, 'page_on_front', '5', 'yes'),
(86, 'default_post_format', '0', 'yes'),
(87, 'link_manager_enabled', '0', 'yes'),
(88, 'initial_db_version', '31533', 'yes'),
(89, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:62:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:9:"add_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:35:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:17:"gform_full_access";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'yes'),
(90, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(91, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:"title";s:0:"";s:6:"number";i:5;}s:12:"_multiwidget";i:1;}', 'yes'),
(92, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(93, 'widget_archives', 'a:2:{i:2;a:3:{s:5:"title";s:0:"";s:5:"count";i:0;s:8:"dropdown";i:0;}s:12:"_multiwidget";i:1;}', 'yes'),
(94, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'yes'),
(95, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:14:"recent-posts-2";i:1;s:10:"archives-2";i:2;s:12:"categories-2";}s:13:"array_version";i:3;}', 'yes'),
(97, 'cron', 'a:5:{i:1439234760;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1439237078;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1439280295;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1439284018;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_transient_random_seed', '365f5240e56e46b36523d7c4de6c39cd', 'yes'),
(109, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1439202824;s:7:"checked";a:1:{s:10:"plcsystems";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
(112, 'db_upgraded', '', 'yes'),
(114, 'auto_core_update_notified', 'a:4:{s:4:"type";s:7:"success";s:5:"email";s:20:"henricks91@gmail.com";s:7:"version";s:5:"4.2.3";s:9:"timestamp";i:1437799649;}', 'yes'),
(134, '_transient_twentyfifteen_categories', '1', 'yes'),
(136, 'theme_mods_twentyfifteen', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1436688444;s:4:"data";a:2:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:6:{i:0;s:8:"search-2";i:1;s:14:"recent-posts-2";i:2;s:17:"recent-comments-2";i:3;s:10:"archives-2";i:4;s:12:"categories-2";i:5;s:6:"meta-2";}}}}', 'yes'),
(137, 'current_theme', 'PLCSystems', 'yes'),
(138, 'theme_mods_plcsystems', 'a:2:{i:0;b:0;s:18:"nav_menu_locations";a:1:{s:8:"main-nav";i:2;}}', 'yes'),
(139, 'theme_switched', '', 'yes'),
(163, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'yes'),
(164, '_site_transient_timeout_browser_8bacdea3c28bd99fa146b651785daec4', '1437888361', 'yes'),
(165, '_site_transient_browser_8bacdea3c28bd99fa146b651785daec4', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"43.0.2357.134";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(166, 'recently_activated', 'a:0:{}', 'yes'),
(168, 'rg_form_version', '1.7.3', 'yes'),
(186, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:7:"upgrade";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.2.4.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.2.4.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.2.4-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.2.4-new-bundled.zip";s:7:"partial";s:68:"http://downloads.wordpress.org/release/wordpress-4.2.4-partial-3.zip";s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.4";s:7:"version";s:5:"4.2.4";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:5:"4.2.3";}}s:12:"last_checked";i:1439202815;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
(191, '_site_transient_timeout_browser_0e87d76942db3bed36d68e35d5a4e90e', '1438404515', 'yes'),
(192, '_site_transient_browser_0e87d76942db3bed36d68e35d5a4e90e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"44.0.2403.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(193, 'can_compress_scripts', '1', 'yes'),
(235, 'acf_version', '4.4.2', 'yes'),
(241, '_site_transient_timeout_browser_4c595e17f927ed1824d89c66fa6bd173', '1438525896', 'yes'),
(242, '_site_transient_browser_4c595e17f927ed1824d89c66fa6bd173', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.107";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(268, 'category_children', 'a:0:{}', 'yes'),
(269, 'news-categories_children', 'a:0:{}', 'yes'),
(289, '_site_transient_timeout_available_translations', '1438183698', 'yes'),
(290, '_site_transient_available_translations', 'a:59:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 10:19:19";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 17:43:43";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 11:08:34";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 16:26:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 17:29:32";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.2.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-24 12:08:43";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-10 14:16:27";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.6/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-12 08:05:04";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-07 17:26:35";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 11:42:14";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-27 10:13:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-27 01:39:56";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 22:03:44";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-16 14:25:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-26 23:08:12";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.6/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-22 10:25:51";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 14:53:48";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-26 00:43:12";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-12 00:55:52";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-06 10:10:09";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-24 13:30:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-05 10:51:50";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 13:52:20";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(293, 'project-categories_children', 'a:0:{}', 'yes'),
(383, 'project-types_children', 'a:0:{}', 'yes'),
(410, '_site_transient_timeout_browser_38235ba456d6c2780718c77153d93d35', '1439551679', 'yes'),
(411, '_site_transient_browser_38235ba456d6c2780718c77153d93d35', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.125";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(437, 'product-types_children', 'a:0:{}', 'yes'),
(442, 'service-types_children', 'a:0:{}', 'yes'),
(444, 'rewrite_rules', 'a:140:{s:10:"product/?$";s:27:"index.php?post_type=product";s:40:"product/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:35:"product/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=product&feed=$matches[1]";s:27:"product/page/([0-9]{1,})/?$";s:45:"index.php?post_type=product&paged=$matches[1]";s:10:"service/?$";s:27:"index.php?post_type=service";s:40:"service/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=service&feed=$matches[1]";s:35:"service/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=service&feed=$matches[1]";s:27:"service/page/([0-9]{1,})/?$";s:45:"index.php?post_type=service&paged=$matches[1]";s:11:"projects/?$";s:27:"index.php?post_type=project";s:41:"projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:36:"projects/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:28:"projects/page/([0-9]{1,})/?$";s:45:"index.php?post_type=project&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:35:"product/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"product/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)/trackback/?$";s:34:"index.php?product=$matches[1]&tb=1";s:48:"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:43:"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?product=$matches[1]&feed=$matches[2]";s:36:"product/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&paged=$matches[2]";s:43:"product/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?product=$matches[1]&cpage=$matches[2]";s:28:"product/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?product=$matches[1]&page=$matches[2]";s:24:"product/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"product/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"product-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?product-types=$matches[1]&feed=$matches[2]";s:48:"product-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?product-types=$matches[1]&feed=$matches[2]";s:41:"product-type/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?product-types=$matches[1]&paged=$matches[2]";s:23:"product-type/([^/]+)/?$";s:35:"index.php?product-types=$matches[1]";s:35:"service/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:45:"service/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:65:"service/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"service/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:60:"service/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"service/([^/]+)/trackback/?$";s:34:"index.php?service=$matches[1]&tb=1";s:48:"service/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:43:"service/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?service=$matches[1]&feed=$matches[2]";s:36:"service/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?service=$matches[1]&paged=$matches[2]";s:43:"service/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?service=$matches[1]&cpage=$matches[2]";s:28:"service/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?service=$matches[1]&page=$matches[2]";s:24:"service/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:34:"service/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:54:"service/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"service/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:49:"service/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"service-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?service-types=$matches[1]&feed=$matches[2]";s:48:"service-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?service-types=$matches[1]&feed=$matches[2]";s:41:"service-type/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?service-types=$matches[1]&paged=$matches[2]";s:23:"service-type/([^/]+)/?$";s:35:"index.php?service-types=$matches[1]";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"projects/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:49:"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:44:"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:29:"projects/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?project-types=$matches[1]&feed=$matches[2]";s:48:"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?project-types=$matches[1]&feed=$matches[2]";s:41:"project-type/([^/]+)/page/?([0-9]{1,})/?$";s:53:"index.php?project-types=$matches[1]&paged=$matches[2]";s:23:"project-type/([^/]+)/?$";s:35:"index.php?project-types=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(451, '_site_transient_timeout_browser_224bf283a5a924fc3a30d51d5559a4ea', '1439618618', 'yes'),
(452, '_site_transient_browser_224bf283a5a924fc3a30d51d5559a4ea', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.130";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(490, '_site_transient_timeout_theme_roots', '1439204614', 'yes'),
(491, '_site_transient_theme_roots', 'a:1:{s:10:"plcsystems";s:7:"/themes";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(492, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1439202817;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:64:"http://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";O:8:"stdClass":6:{s:2:"id";s:5:"47574";s:4:"slug";s:40:"gravity-forms-placeholder-support-add-on";s:6:"plugin";s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:71:"https://wordpress.org/plugins/gravity-forms-placeholder-support-add-on/";s:7:"package";s:82:"http://downloads.wordpress.org/plugin/gravity-forms-placeholder-support-add-on.zip";}}}', 'yes'),
(493, '_transient_timeout_gform_update_info', '1439294308', 'no'),
(494, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:6:{s:4:"date";s:29:"Mon, 10 Aug 2015 11:58:31 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.11";s:14:"content-length";s:2:"13";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:13:"0||1.7.9||||0";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no'),
(495, '_transient_timeout_plugin_slugs', '1439294316', 'no'),
(496, '_transient_plugin_slugs', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:29:"gravityforms/gravityforms.php";i:3;s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";i:4;s:27:"LayerSlider/layerslider.php";}', 'no'),
(497, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1439251116', 'no'),
(498, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

DROP TABLE IF EXISTS `wp_postmeta`;
CREATE TABLE IF NOT EXISTS `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=364 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'front-page.php'),
(6, 5, '_edit_lock', '1439017509:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1439209325:1'),
(9, 7, '_wp_page_template', 'page-company.php'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1439215351:1'),
(12, 9, '_wp_page_template', 'page-products.php'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'contact-template.php'),
(15, 11, '_edit_lock', '1438597915:1'),
(16, 14, '_menu_item_type', 'post_type'),
(17, 14, '_menu_item_menu_item_parent', '0'),
(18, 14, '_menu_item_object_id', '11'),
(19, 14, '_menu_item_object', 'page'),
(20, 14, '_menu_item_target', ''),
(21, 14, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(22, 14, '_menu_item_xfn', ''),
(23, 14, '_menu_item_url', ''),
(25, 15, '_menu_item_type', 'post_type'),
(26, 15, '_menu_item_menu_item_parent', '0'),
(27, 15, '_menu_item_object_id', '9'),
(28, 15, '_menu_item_object', 'page'),
(29, 15, '_menu_item_target', ''),
(30, 15, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(31, 15, '_menu_item_xfn', ''),
(32, 15, '_menu_item_url', ''),
(34, 16, '_menu_item_type', 'post_type'),
(35, 16, '_menu_item_menu_item_parent', '0'),
(36, 16, '_menu_item_object_id', '7'),
(37, 16, '_menu_item_object', 'page'),
(38, 16, '_menu_item_target', ''),
(39, 16, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(40, 16, '_menu_item_xfn', ''),
(41, 16, '_menu_item_url', ''),
(43, 17, '_menu_item_type', 'post_type'),
(44, 17, '_menu_item_menu_item_parent', '0'),
(45, 17, '_menu_item_object_id', '5'),
(46, 17, '_menu_item_object', 'page'),
(47, 17, '_menu_item_target', ''),
(48, 17, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(49, 17, '_menu_item_xfn', ''),
(50, 17, '_menu_item_url', ''),
(52, 18, '_wp_attached_file', '2015/07/banner.jpg'),
(53, 18, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:18:"2015/07/banner.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"banner-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"banner-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"banner-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"banner-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(54, 22, '_edit_last', '1'),
(55, 22, 'field_55b647b5c4666', 'a:14:{s:3:"key";s:19:"field_55b647b5c4666";s:5:"label";s:17:"About Our Company";s:4:"name";s:17:"about_our_company";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(56, 22, 'field_55b647e6c4667', 'a:11:{s:3:"key";s:19:"field_55b647e6c4667";s:5:"label";s:19:"Company Description";s:4:"name";s:19:"company_description";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(58, 22, 'position', 'normal'),
(59, 22, 'layout', 'no_box'),
(60, 22, 'hide_on_screen', ''),
(61, 22, '_edit_lock', '1438259288:1'),
(63, 23, 'about_our_company', 'About Our Company'),
(64, 23, '_about_our_company', 'field_55b647b5c4666'),
(65, 23, 'company_description', ''),
(66, 23, '_company_description', 'field_55b647e6c4667'),
(67, 5, 'about_our_company', 'About Our Company'),
(68, 5, '_about_our_company', 'field_55b647b5c4666'),
(69, 5, 'company_description', 'PLC Systems Technik, inc. the world''s largest company dedicated to industrial automation and information, makes its customers more productive and the world more sustainable. Throughout the world, our product brands are recognized for innovation and excellence.\r\n\r\n<a href="http://localhost/rushwebplcsystems/">Read More</a>\r\n\r\n&nbsp;'),
(70, 5, '_company_description', 'field_55b647e6c4667'),
(72, 25, '_edit_last', '1'),
(73, 25, 'field_55b64bc245d41', 'a:14:{s:3:"key";s:19:"field_55b64bc245d41";s:5:"label";s:7:"Socials";s:4:"name";s:13:"socials_icons";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";s:10:"formatting";s:4:"html";s:9:"maxlength";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(75, 25, 'position', 'normal'),
(76, 25, 'layout', 'no_box'),
(77, 25, 'hide_on_screen', ''),
(78, 25, '_edit_lock', '1438871242:1'),
(79, 26, 'about_our_company', 'About Our Company'),
(80, 26, '_about_our_company', 'field_55b647b5c4666'),
(81, 26, 'company_description', 'PLC Systems Technik, inc. the world''s largest company dedicated to industrial automation and information, makes its customers more productive and the world more sustainable. Throughout the world, our product brands are recognized for innovation and excellence.'),
(82, 26, '_company_description', 'field_55b647e6c4667'),
(84, 25, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(85, 27, 'about_our_company', 'About Our Company'),
(86, 27, '_about_our_company', 'field_55b647b5c4666'),
(87, 27, 'company_description', 'PLC Systems Technik, inc. the world''s largest company dedicated to industrial automation and information, makes its customers more productive and the world more sustainable. Throughout the world, our product brands are recognized for innovation and excellence.\r\n\r\n<a href="http://localhost/rushwebplcsystems/">Read More</a>\r\n\r\n&nbsp;'),
(88, 27, '_company_description', 'field_55b647e6c4667'),
(90, 28, '_edit_last', '1'),
(91, 28, '_edit_lock', '1438088703:1'),
(92, 30, '_edit_last', '1'),
(93, 30, '_edit_lock', '1438175502:1'),
(94, 22, 'field_55b76e3b4cb85', 'a:11:{s:3:"key";s:19:"field_55b76e3b4cb85";s:5:"label";s:11:"Latest News";s:4:"name";s:12:"_latest_news";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:2;}'),
(96, 32, '_edit_last', '1'),
(97, 32, 'field_55b76ee4e4221', 'a:10:{s:3:"key";s:19:"field_55b76ee4e4221";s:5:"label";s:13:"Featured News";s:4:"name";s:17:"_is_featured_news";s:4:"type";s:10:"true_false";s:12:"instructions";s:92:"If you set this to featured then it will show on every page. Latest 3 featured will be shown";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(99, 32, 'position', 'normal'),
(100, 32, 'layout', 'no_box'),
(101, 32, 'hide_on_screen', ''),
(102, 32, '_edit_lock', '1438873946:1'),
(112, 36, '_edit_last', '1'),
(113, 36, '_edit_lock', '1439210090:1'),
(115, 37, '_is_featured_news', '0'),
(116, 37, '__is_featured_news', 'field_55b76ee4e4221'),
(117, 36, '_is_featured_news', '0'),
(118, 36, '__is_featured_news', 'field_55b76ee4e4221'),
(119, 38, '_wp_attached_file', '2015/07/post-1.jpg'),
(120, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:320;s:4:"file";s:18:"2015/07/post-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"post-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"post-1-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"post-1-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(121, 36, '_thumbnail_id', '38'),
(123, 39, '_edit_last', '1'),
(124, 39, '_edit_lock', '1439209683:1'),
(125, 40, '_wp_attached_file', '2015/07/post-2.jpg'),
(126, 40, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:234;s:6:"height";i:186;s:4:"file";s:18:"2015/07/post-2.jpg";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"post-2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"post-2-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(127, 39, '_thumbnail_id', '40'),
(129, 41, '_is_featured_news', '0'),
(130, 41, '__is_featured_news', 'field_55b76ee4e4221'),
(131, 39, '_is_featured_news', '0'),
(132, 39, '__is_featured_news', 'field_55b76ee4e4221'),
(133, 32, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(134, 22, 'field_55b7925b7d2db', 'a:11:{s:3:"key";s:19:"field_55b7925b7d2db";s:5:"label";s:7:"Tagline";s:4:"name";s:12:"_plc_tagline";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:3;}'),
(135, 22, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:1:"5";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(136, 42, 'about_our_company', 'About Our Company'),
(137, 42, '_about_our_company', 'field_55b647b5c4666'),
(138, 42, 'company_description', 'PLC Systems Technik, inc. the world''s largest company dedicated to industrial automation and information, makes its customers more productive and the world more sustainable. Throughout the world, our product brands are recognized for innovation and excellence.\r\n\r\n<a href="http://localhost/rushwebplcsystems/">Read More</a>\r\n\r\n&nbsp;'),
(139, 42, '_company_description', 'field_55b647e6c4667'),
(140, 42, '_latest_news', ''),
(141, 42, '__latest_news', 'field_55b76e3b4cb85'),
(142, 42, '_plc_tagline', 'We design, develop, install, program, integrate equipment with the latest models of Programmable logic controllers.'),
(143, 42, '__plc_tagline', 'field_55b7925b7d2db'),
(144, 5, '_latest_news', ''),
(145, 5, '__latest_news', 'field_55b76e3b4cb85'),
(146, 5, '_plc_tagline', 'We design, develop, install, program, integrate equipment with the latest models of Programmable logic controllers.'),
(147, 5, '__plc_tagline', 'field_55b7925b7d2db'),
(148, 45, 'socials_icons', ''),
(149, 45, '_socials_icons', 'field_55b64bc245d41'),
(150, 11, 'socials_icons', ''),
(151, 11, '_socials_icons', 'field_55b64bc245d41'),
(152, 46, '_edit_last', '1'),
(153, 46, '_edit_lock', '1438663669:1'),
(154, 46, '_wp_page_template', 'page-fullwidth.php'),
(155, 48, '_edit_last', '1'),
(156, 48, '_edit_lock', '1438422621:1'),
(157, 48, '_wp_page_template', 'page-fullwidth.php'),
(158, 30, '_wp_trash_meta_status', 'publish'),
(159, 30, '_wp_trash_meta_time', '1438175662'),
(160, 28, '_wp_trash_meta_status', 'publish'),
(161, 28, '_wp_trash_meta_time', '1438175662'),
(162, 51, '_edit_last', '1'),
(163, 51, '_edit_lock', '1438175606:1'),
(164, 51, '_wp_trash_meta_status', 'publish'),
(165, 51, '_wp_trash_meta_time', '1438175756'),
(166, 54, '_edit_last', '1'),
(167, 54, '_edit_lock', '1438175771:1'),
(168, 56, '_edit_last', '1'),
(169, 56, '_edit_lock', '1439210768:1'),
(170, 58, '_edit_last', '1'),
(171, 58, '_edit_lock', '1439210784:1'),
(172, 60, '_edit_last', '1'),
(173, 60, '_edit_lock', '1439210803:1'),
(174, 62, '_edit_last', '1'),
(175, 62, '_edit_lock', '1439211207:1'),
(176, 64, '_edit_last', '1'),
(177, 64, '_edit_lock', '1439211220:1'),
(178, 66, '_edit_last', '1'),
(179, 66, 'field_55b8d6cc3182c', 'a:10:{s:3:"key";s:19:"field_55b8d6cc3182c";s:5:"label";s:8:"Projects";s:4:"name";s:14:"_projects_feed";s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(181, 66, 'position', 'normal'),
(182, 66, 'layout', 'no_box'),
(183, 66, 'hide_on_screen', ''),
(184, 66, '_edit_lock', '1438873934:1'),
(195, 72, '_edit_last', '1'),
(196, 72, '_wp_page_template', 'page-product.php'),
(197, 72, '_edit_lock', '1438954977:1'),
(198, 74, '_menu_item_type', 'post_type'),
(199, 74, '_menu_item_menu_item_parent', '0'),
(200, 74, '_menu_item_object_id', '72'),
(201, 74, '_menu_item_object', 'page'),
(202, 74, '_menu_item_target', ''),
(203, 74, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(204, 74, '_menu_item_xfn', ''),
(205, 74, '_menu_item_url', ''),
(209, 78, '_edit_last', '1'),
(210, 78, '_edit_lock', '1438666784:1'),
(211, 78, '_wp_page_template', 'page-fullwidth.php'),
(214, 80, '_edit_last', '1'),
(215, 80, 'field_55bc99e7f1dcb', 'a:14:{s:3:"key";s:19:"field_55bc99e7f1dcb";s:5:"label";s:23:"Pages for Ajax Request ";s:4:"name";s:10:"links_ajax";s:4:"type";s:12:"relationship";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"return_format";s:6:"object";s:9:"post_type";a:1:{i:0;s:3:"all";}s:8:"taxonomy";a:1:{i:0;s:3:"all";}s:7:"filters";a:1:{i:0;s:6:"search";}s:15:"result_elements";a:1:{i:0;s:9:"post_type";}s:3:"max";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(217, 80, 'position', 'normal'),
(218, 80, 'layout', 'no_box'),
(219, 80, 'hide_on_screen', ''),
(220, 80, '_edit_lock', '1438955255:1'),
(222, 81, 'links_ajax', ''),
(223, 81, '_links_ajax', 'field_55bc99e7f1dcb'),
(224, 7, 'links_ajax', 'a:3:{i:0;s:2:"46";i:1;s:2:"48";i:2;s:2:"78";}'),
(225, 7, '_links_ajax', 'field_55bc99e7f1dcb'),
(226, 82, 'links_ajax', 'a:3:{i:0;s:2:"46";i:1;s:2:"48";i:2;s:2:"78";}'),
(227, 82, '_links_ajax', 'field_55bc99e7f1dcb'),
(228, 84, 'links_ajax', ''),
(229, 84, '_links_ajax', 'field_55bc99e7f1dcb'),
(230, 9, 'links_ajax', 'a:4:{i:0;s:3:"128";i:1;s:3:"126";i:2;s:3:"122";i:3;s:3:"146";}'),
(231, 9, '_links_ajax', 'field_55bc99e7f1dcb'),
(232, 85, '_edit_last', '1'),
(233, 85, 'field_55bf38f6eb61f', 'a:11:{s:3:"key";s:19:"field_55bf38f6eb61f";s:5:"label";s:7:"Address";s:4:"name";s:12:"_plc_address";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(234, 85, 'field_55bf3908eb620', 'a:12:{s:3:"key";s:19:"field_55bf3908eb620";s:5:"label";s:10:"Google Map";s:4:"name";s:15:"_plc_google_map";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(235, 85, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(236, 85, 'position', 'normal'),
(237, 85, 'layout', 'no_box'),
(238, 85, 'hide_on_screen', ''),
(239, 85, '_edit_lock', '1438595226:1'),
(240, 86, '_plc_address', 'Address: Sample Street, Sample Province\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:test_email@plc.com">test_email@plc.com</a>'),
(241, 86, '__plc_address', 'field_55bf38f6eb61f'),
(242, 86, '_plc_google_map', 'a:3:{s:7:"address";s:39:"Cebu City, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(243, 86, '__plc_google_map', 'field_55bf3908eb620'),
(244, 86, 'socials_icons', ''),
(245, 86, '_socials_icons', 'field_55b64bc245d41'),
(246, 11, '_plc_address', 'Address: Sample Street, Sample Province\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:test_email@plc.com">test_email@plc.com</a>'),
(247, 11, '__plc_address', 'field_55bf38f6eb61f'),
(248, 11, '_plc_google_map', 'a:3:{s:7:"address";s:39:"Cebu City, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(249, 11, '__plc_google_map', 'field_55bf3908eb620'),
(251, 88, '_edit_last', '1'),
(252, 89, '_projects_feed', '0'),
(253, 89, '__projects_feed', 'field_55b8d6cc3182c'),
(254, 88, '_projects_feed', '0'),
(255, 88, '__projects_feed', 'field_55b8d6cc3182c'),
(256, 88, '_edit_lock', '1438658034:1'),
(257, 66, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(258, 90, '_edit_last', '1'),
(259, 90, '_edit_lock', '1438658043:1'),
(260, 92, '_edit_last', '1'),
(261, 92, '_edit_lock', '1438658052:1'),
(262, 94, '_edit_last', '1'),
(263, 94, '_edit_lock', '1438658061:1'),
(264, 96, '_edit_last', '1'),
(265, 96, '_edit_lock', '1438658069:1'),
(266, 98, '_edit_last', '1'),
(267, 98, '_edit_lock', '1438658221:1'),
(268, 105, '_edit_last', '1'),
(269, 105, '_edit_lock', '1439211233:1'),
(270, 108, '_edit_last', '1'),
(271, 108, '_edit_lock', '1439211243:1'),
(272, 110, '_edit_last', '1'),
(273, 110, '_edit_lock', '1439211254:1'),
(274, 112, '_edit_last', '1'),
(275, 112, '_edit_lock', '1439212574:1'),
(276, 114, '_wp_attached_file', '2015/08/flash1.jpg'),
(277, 114, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:18:"2015/08/flash1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flash1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"flash1-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"flash1-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"flash1-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(278, 115, '_wp_attached_file', '2015/08/flash2.jpg'),
(279, 115, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:18:"2015/08/flash2.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flash2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"flash2-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"flash2-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"flash2-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:26:"(c) Taden | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(280, 116, '_wp_attached_file', '2015/08/flash3.jpg'),
(281, 116, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:18:"2015/08/flash3.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flash3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"flash3-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"flash3-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"flash3-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:26:"(c) Taden | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(282, 117, '_wp_attached_file', '2015/08/flash4.jpg'),
(283, 117, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:18:"2015/08/flash4.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"flash4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:17:"flash4-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:19:"flash4-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"flash4-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(284, 118, '_wp_attached_file', '2015/08/mini1.png'),
(285, 118, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:150;s:4:"file";s:17:"2015/08/mini1.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mini1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:15:"mini1-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(286, 119, '_wp_attached_file', '2015/08/mini2.png'),
(287, 119, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:150;s:4:"file";s:17:"2015/08/mini2.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mini2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:15:"mini2-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(288, 120, '_wp_attached_file', '2015/08/mini3.png'),
(289, 120, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:150;s:4:"file";s:17:"2015/08/mini3.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mini3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:15:"mini3-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(290, 121, '_wp_attached_file', '2015/08/mini4.png'),
(291, 121, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:245;s:6:"height";i:150;s:4:"file";s:17:"2015/08/mini4.png";s:5:"sizes";a:2:{s:9:"thumbnail";a:4:{s:4:"file";s:17:"mini4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:15:"mini4-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(294, 122, '_edit_last', '1'),
(295, 122, '_edit_lock', '1439217554:1'),
(296, 124, 'links_ajax', 'a:1:{i:0;s:3:"122";}'),
(297, 124, '_links_ajax', 'field_55bc99e7f1dcb'),
(302, 126, '_edit_last', '1'),
(303, 126, '_edit_lock', '1439215826:1'),
(304, 128, '_edit_last', '1'),
(305, 128, '_edit_lock', '1439215816:1'),
(306, 130, 'links_ajax', 'a:3:{i:0;s:3:"122";i:1;s:3:"126";i:2;s:3:"128";}'),
(307, 130, '_links_ajax', 'field_55bc99e7f1dcb'),
(308, 131, 'links_ajax', 'a:3:{i:0;s:3:"122";i:1;s:3:"126";i:2;s:3:"128";}'),
(309, 131, '_links_ajax', 'field_55bc99e7f1dcb'),
(310, 122, '_wp_old_slug', 'product-1'),
(311, 133, '_edit_last', '1'),
(312, 133, '_edit_lock', '1438955744:1'),
(313, 135, '_edit_last', '1'),
(314, 135, '_edit_lock', '1438955726:1'),
(315, 137, '_edit_last', '1'),
(316, 137, '_edit_lock', '1438955755:1'),
(317, 139, '_edit_last', '1'),
(318, 139, '_edit_lock', '1439217716:1'),
(319, 141, '_edit_last', '1'),
(320, 141, '_edit_lock', '1439217564:1'),
(321, 128, '_wp_old_slug', 'db1-dbx0-2'),
(322, 126, '_wp_old_slug', 'db1-dbx0-1'),
(323, 122, '_wp_old_slug', 'db1-dbx0-0'),
(324, 146, '_edit_last', '1'),
(325, 146, '_edit_lock', '1439215807:1'),
(329, 150, 'links_ajax', 'a:4:{i:0;s:3:"128";i:1;s:3:"126";i:2;s:3:"122";i:3;s:3:"146";}'),
(330, 150, '_links_ajax', 'field_55bc99e7f1dcb'),
(331, 151, 'links_ajax', 'a:5:{i:0;s:3:"133";i:1;s:3:"135";i:2;s:3:"137";i:3;s:3:"139";i:4;s:3:"141";}'),
(332, 151, '_links_ajax', 'field_55bc99e7f1dcb'),
(333, 72, 'links_ajax', 'a:5:{i:0;s:3:"133";i:1;s:3:"135";i:2;s:3:"137";i:3;s:3:"139";i:4;s:3:"141";}'),
(334, 72, '_links_ajax', 'field_55bc99e7f1dcb'),
(335, 80, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"page-products.php";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(336, 80, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:16:"page-company.php";s:8:"order_no";i:0;s:8:"group_no";i:1;}'),
(337, 80, 'rule', 'a:5:{s:5:"param";s:13:"page_template";s:8:"operator";s:2:"==";s:5:"value";s:17:"page-services.php";s:8:"order_no";i:0;s:8:"group_no";i:2;}'),
(338, 156, '_wp_attached_file', '2015/08/banner1.jpg'),
(339, 156, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1300;s:6:"height";i:397;s:4:"file";s:19:"2015/08/banner1.jpg";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"banner1-300x92.jpg";s:5:"width";i:300;s:6:"height";i:92;s:9:"mime-type";s:10:"image/jpeg";}s:5:"large";a:4:{s:4:"file";s:20:"banner1-1024x313.jpg";s:5:"width";i:1024;s:6:"height";i:313;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:17:"banner1-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(341, 163, '_wp_attached_file', '2015/07/sample-featured1.jpg'),
(342, 163, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:260;s:4:"file";s:28:"2015/07/sample-featured1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"sample-featured1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"sample-featured1-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:26:"sample-featured1-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:31:"(c) Cheyennezj | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(343, 56, '_thumbnail_id', '163'),
(344, 164, '_wp_attached_file', '2015/07/sample-featured2.jpg'),
(345, 164, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:260;s:4:"file";s:28:"2015/07/sample-featured2.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"sample-featured2-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"sample-featured2-300x195.jpg";s:5:"width";i:300;s:6:"height";i:195;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:26:"sample-featured2-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:26:"(c) Taden | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(346, 58, '_thumbnail_id', '164'),
(347, 165, '_wp_attached_file', '2015/07/sample-featured3.jpg'),
(348, 165, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:248;s:4:"file";s:28:"2015/07/sample-featured3.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"sample-featured3-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"sample-featured3-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:26:"sample-featured3-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:26:"(c) Taden | Dreamstime.com";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(349, 60, '_thumbnail_id', '165'),
(350, 166, '_wp_attached_file', '2015/07/sample-featured4.jpg'),
(351, 166, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:400;s:6:"height";i:248;s:4:"file";s:28:"2015/07/sample-featured4.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:28:"sample-featured4-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:28:"sample-featured4-300x186.jpg";s:5:"width";i:300;s:6:"height";i:186;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:26:"sample-featured4-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(352, 62, '_thumbnail_id', '166'),
(353, 64, '_thumbnail_id', '166'),
(354, 105, '_thumbnail_id', '165'),
(355, 108, '_thumbnail_id', '164'),
(356, 110, '_thumbnail_id', '163'),
(357, 112, '_thumbnail_id', '165'),
(358, 146, '_thumbnail_id', '166'),
(359, 128, '_thumbnail_id', '165'),
(360, 126, '_thumbnail_id', '164'),
(361, 122, '_thumbnail_id', '163'),
(362, 141, '_thumbnail_id', '166'),
(363, 139, '_thumbnail_id', '165');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

DROP TABLE IF EXISTS `wp_posts`;
CREATE TABLE IF NOT EXISTS `wp_posts` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_author` bigint(20) unsigned NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(20) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=169 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(5, 1, '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-28 14:33:13', '2015-07-28 14:33:13', '', 0, 'http://localhost/plcsystems/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 5, 'http://localhost/plcsystems/2015/07/12/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-07-12 09:07:32', '2015-07-12 09:07:32', '', 'Our Company', '', 'publish', 'open', 'open', '', 'our-company', '', '', '2015-08-07 13:50:13', '2015-08-07 13:50:13', '', 0, 'http://localhost/plcsystems/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-07-12 09:07:32', '2015-07-12 09:07:32', '', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-12 09:07:32', '2015-07-12 09:07:32', '', 7, 'http://localhost/plcsystems/2015/07/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-07-12 09:08:29', '2015-07-12 09:08:29', '', 'Products', '', 'publish', 'open', 'closed', '', 'our-products', '', '', '2015-08-07 13:49:14', '2015-08-07 13:49:14', '', 0, 'http://localhost/plcsystems/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-07-12 09:08:29', '2015-07-12 09:08:29', '', 'Product & Services', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-07-12 09:08:29', '2015-07-12 09:08:29', '', 9, 'http://localhost/plcsystems/2015/07/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-07-12 09:10:34', '2015-07-12 09:10:34', 'Sample text for Contact Us!', 'Contact Us', '', 'publish', 'open', 'open', '', 'contact-us', '', '', '2015-08-03 09:51:04', '2015-08-03 09:51:04', '', 0, 'http://localhost/plcsystems/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-07-12 09:10:34', '2015-07-12 09:10:34', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-12 09:10:34', '2015-07-12 09:10:34', '', 11, 'http://localhost/plcsystems/2015/07/12/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-07-19 05:25:32', '2015-07-19 05:25:32', ' ', '', '', 'publish', 'open', 'open', '', '14', '', '', '2015-08-01 09:36:09', '2015-08-01 09:36:09', '', 0, 'http://localhost/plcsystems/?p=14', 5, 'nav_menu_item', '', 0),
(15, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2015-08-01 09:36:09', '2015-08-01 09:36:09', '', 0, 'http://localhost/plcsystems/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-08-01 09:36:09', '2015-08-01 09:36:09', '', 0, 'http://localhost/plcsystems/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2015-08-01 09:36:09', '2015-08-01 09:36:09', '', 0, 'http://localhost/plcsystems/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2015-07-19 05:52:40', '2015-07-19 05:52:40', '', 'banner', '', 'inherit', 'open', 'open', '', 'banner', '', '', '2015-07-19 05:52:40', '2015-07-19 05:52:40', '', 0, 'http://localhost/plcsystems/wp-content/uploads/2015/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-07-26 04:44:31', '2015-07-26 04:44:31', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Our Company', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-07-26 04:44:31', '2015-07-26 04:44:31', '', 7, 'http://localhost/plcsystems/2015/07/26/7-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2015-07-26 04:44:34', '2015-07-26 04:44:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-26 04:44:34', '2015-07-26 04:44:34', '', 7, 'http://localhost/plcsystems/2015/07/26/7-revision-v1/', 0, 'revision', '', 0),
(22, 1, '2015-07-27 15:03:02', '2015-07-27 15:03:02', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'acf_homepage', '', '', '2015-07-28 14:32:19', '2015-07-28 14:32:19', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2015-07-27 15:13:34', '2015-07-27 15:13:34', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:13:34', '2015-07-27 15:13:34', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(25, 1, '2015-07-27 15:19:00', '2015-07-27 15:19:00', '', 'Theme Option', '', 'publish', 'closed', 'closed', '', 'acf_theme-option', '', '', '2015-07-27 15:24:30', '2015-07-27 15:24:30', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=25', 0, 'acf', '', 0),
(26, 1, '2015-07-27 15:21:59', '2015-07-27 15:21:59', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:21:59', '2015-07-27 15:21:59', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-07-27 15:30:04', '2015-07-27 15:30:04', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:30:04', '2015-07-27 15:30:04', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-07-28 11:57:21', '2015-07-28 11:57:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 1', '', 'trash', 'closed', 'closed', '', 'sample-news-1', '', '', '2015-07-29 13:14:22', '2015-07-29 13:14:22', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=28', 0, 'news', '', 0),
(29, 1, '2015-07-28 11:57:21', '2015-07-28 11:57:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 1', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2015-07-28 11:57:21', '2015-07-28 11:57:21', '', 28, 'http://localhost/rushwebplcsystems/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-07-28 11:57:36', '2015-07-28 11:57:36', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 2', '', 'trash', 'closed', 'closed', '', 'sample-news-2', '', '', '2015-07-29 13:14:22', '2015-07-29 13:14:22', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=30', 0, 'news', '', 0),
(31, 1, '2015-07-28 11:57:36', '2015-07-28 11:57:36', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 2', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-07-28 11:57:36', '2015-07-28 11:57:36', '', 30, 'http://localhost/rushwebplcsystems/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-07-28 12:01:22', '2015-07-28 12:01:22', '', 'News Area', '', 'publish', 'closed', 'closed', '', 'acf_news-area', '', '', '2015-07-28 13:45:36', '2015-07-28 13:45:36', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=32', 0, 'acf', '', 0),
(36, 1, '2015-07-28 13:21:50', '2015-07-28 13:21:50', 'This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.\r\n\r\nThis is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.', 'Sample News 1', '', 'publish', 'open', 'open', '', 'sample-news-1', '', '', '2015-07-28 13:22:39', '2015-07-28 13:22:39', '', 0, 'http://localhost/rushwebplcsystems/?p=36', 0, 'post', '', 0),
(37, 1, '2015-07-28 13:21:50', '2015-07-28 13:21:50', 'This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.\r\n\r\nThis is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.', 'Sample News 1', '', 'inherit', 'open', 'open', '', '36-revision-v1', '', '', '2015-07-28 13:21:50', '2015-07-28 13:21:50', '', 36, 'http://localhost/rushwebplcsystems/36-revision-v1/', 0, 'revision', '', 0),
(38, 1, '2015-07-28 13:22:33', '2015-07-28 13:22:33', '', 'post-1', '', 'inherit', 'open', 'open', '', 'post-1', '', '', '2015-07-28 13:22:33', '2015-07-28 13:22:33', '', 36, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/post-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2015-07-28 13:23:04', '2015-07-28 13:23:04', 'This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.\r\n\r\nThis is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.', 'Sample News 2', '', 'publish', 'open', 'open', '', 'sample-news-2', '', '', '2015-07-28 13:23:04', '2015-07-28 13:23:04', '', 0, 'http://localhost/rushwebplcsystems/?p=39', 0, 'post', '', 0),
(40, 1, '2015-07-28 13:23:00', '2015-07-28 13:23:00', '', 'post-2', '', 'inherit', 'open', 'open', '', 'post-2', '', '', '2015-07-28 13:23:00', '2015-07-28 13:23:00', '', 39, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/post-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2015-07-28 13:23:04', '2015-07-28 13:23:04', 'This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.\r\n\r\nThis is a sample post. To be replaced by the words of your choice. This is a sample post. To be replaced by the words of your choice.', 'Sample News 2', '', 'inherit', 'open', 'open', '', '39-revision-v1', '', '', '2015-07-28 13:23:04', '2015-07-28 13:23:04', '', 39, 'http://localhost/rushwebplcsystems/39-revision-v1/', 0, 'revision', '', 0),
(42, 1, '2015-07-28 14:33:13', '2015-07-28 14:33:13', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-28 14:33:13', '2015-07-28 14:33:13', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(43, 1, '2015-07-28 15:17:57', '2015-07-28 15:17:57', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Product & Services', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-07-28 15:17:57', '2015-07-28 15:17:57', '', 9, 'http://localhost/rushwebplcsystems/9-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2015-07-29 10:55:12', '2015-07-29 10:55:12', 'Our Company text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Our Company text.', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-29 10:55:12', '2015-07-29 10:55:12', '', 7, 'http://localhost/rushwebplcsystems/7-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2015-07-29 12:38:32', '2015-07-29 12:38:32', 'Sample text for Contact Us!', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-29 12:38:32', '2015-07-29 12:38:32', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(46, 1, '2015-07-29 12:54:39', '2015-07-29 12:54:39', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mission', '', 'publish', 'open', 'closed', '', 'mission', '', '', '2015-08-03 15:06:46', '2015-08-03 15:06:46', '', 7, 'http://localhost/rushwebplcsystems/?page_id=46', 0, 'page', '', 0),
(47, 1, '2015-07-29 12:54:40', '2015-07-29 12:54:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 1', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-07-29 12:54:40', '2015-07-29 12:54:40', '', 46, 'http://localhost/rushwebplcsystems/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-07-29 12:55:17', '2015-07-29 12:55:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Vision', '', 'publish', 'open', 'closed', '', 'vision', '', '', '2015-08-01 09:50:20', '2015-08-01 09:50:20', '', 7, 'http://localhost/rushwebplcsystems/?page_id=48', 0, 'page', '', 0),
(49, 1, '2015-07-29 12:55:17', '2015-07-29 12:55:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 2', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-07-29 12:55:17', '2015-07-29 12:55:17', '', 48, 'http://localhost/rushwebplcsystems/48-revision-v1/', 0, 'revision', '', 0),
(51, 1, '2015-07-29 13:14:58', '2015-07-29 13:14:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'trash', 'closed', 'closed', '', 'sample-project-1', '', '', '2015-07-29 13:15:56', '2015-07-29 13:15:56', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=51', 0, 'news', '', 0),
(52, 1, '2015-07-29 13:14:58', '2015-07-29 13:14:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-29 13:14:58', '2015-07-29 13:14:58', '', 51, 'http://localhost/rushwebplcsystems/51-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2015-07-29 13:16:11', '2015-07-29 13:16:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'publish', 'closed', 'closed', '', 'sample-project-1-2', '', '', '2015-07-29 13:16:11', '2015-07-29 13:16:11', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=54', 0, 'news', '', 0),
(55, 1, '2015-07-29 13:16:11', '2015-07-29 13:16:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-07-29 13:16:11', '2015-07-29 13:16:11', '', 54, 'http://localhost/rushwebplcsystems/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-07-29 13:17:46', '2015-07-29 13:17:46', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 1', '', 'publish', 'closed', 'closed', '', 'sample-project-1', '', '', '2015-08-10 12:48:30', '2015-08-10 12:48:30', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=56', 0, 'project', '', 0),
(57, 1, '2015-07-29 13:17:46', '2015-07-29 13:17:46', 'Sample Project 1', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-07-29 13:17:46', '2015-07-29 13:17:46', '', 56, 'http://localhost/rushwebplcsystems/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-07-29 13:24:30', '2015-07-29 13:24:30', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 2', '', 'publish', 'closed', 'closed', '', 'sample-project-2', '', '', '2015-08-10 12:48:46', '2015-08-10 12:48:46', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=58', 0, 'project', '', 0),
(59, 1, '2015-07-29 13:24:30', '2015-07-29 13:24:30', 'Sample Project 2', 'Sample Project 2', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2015-07-29 13:24:30', '2015-07-29 13:24:30', '', 58, 'http://localhost/rushwebplcsystems/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-07-29 13:24:41', '2015-07-29 13:24:41', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 3', '', 'publish', 'closed', 'closed', '', 'sample-project-3', '', '', '2015-08-10 12:49:03', '2015-08-10 12:49:03', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=60', 0, 'project', '', 0),
(61, 1, '2015-07-29 13:24:41', '2015-07-29 13:24:41', 'Sample Project 3', 'Sample Project 3', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-07-29 13:24:41', '2015-07-29 13:24:41', '', 60, 'http://localhost/rushwebplcsystems/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-07-29 13:24:51', '2015-07-29 13:24:51', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 4', '', 'publish', 'closed', 'closed', '', 'sample-project-4', '', '', '2015-08-10 12:49:21', '2015-08-10 12:49:21', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=62', 0, 'project', '', 0),
(63, 1, '2015-07-29 13:24:51', '2015-07-29 13:24:51', 'Sample Project 4', 'Sample Project 4', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-07-29 13:24:51', '2015-07-29 13:24:51', '', 62, 'http://localhost/rushwebplcsystems/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-07-29 13:25:03', '2015-07-29 13:25:03', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 5', '', 'publish', 'closed', 'closed', '', 'sample-project-5', '', '', '2015-08-10 12:56:03', '2015-08-10 12:56:03', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=64', 0, 'project', '', 0),
(65, 1, '2015-07-29 13:25:03', '2015-07-29 13:25:03', 'Sample Project 5', 'Sample Project 5', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-07-29 13:25:03', '2015-07-29 13:25:03', '', 64, 'http://localhost/rushwebplcsystems/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-07-29 13:36:14', '2015-07-29 13:36:14', '', 'Projects Feed', '', 'publish', 'closed', 'closed', '', 'acf_projects-feed', '', '', '2015-08-04 03:13:56', '2015-08-04 03:13:56', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(71, 1, '2015-08-01 09:28:25', '2015-08-01 09:28:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-01 09:28:25', '2015-08-01 09:28:25', '', 9, 'http://localhost/plcsystems/9-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2015-08-01 09:29:30', '2015-08-01 09:29:30', '', 'Services', '', 'publish', 'open', 'open', '', 'services', '', '', '2015-08-07 13:44:11', '2015-08-07 13:44:11', '', 0, 'http://localhost/plcsystems/?page_id=72', 0, 'page', '', 0),
(73, 1, '2015-08-01 09:29:30', '2015-08-01 09:29:30', '', 'Services', '', 'inherit', 'open', 'open', '', '72-revision-v1', '', '', '2015-08-01 09:29:30', '2015-08-01 09:29:30', '', 72, 'http://localhost/plcsystems/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-08-01 09:36:09', '2015-08-01 09:36:09', ' ', '', '', 'publish', 'open', 'open', '', '74', '', '', '2015-08-01 09:36:09', '2015-08-01 09:36:09', '', 0, 'http://localhost/plcsystems/?p=74', 4, 'nav_menu_item', '', 0),
(75, 1, '2015-08-01 09:45:55', '2015-08-01 09:45:55', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Missions', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-08-01 09:45:55', '2015-08-01 09:45:55', '', 46, 'http://localhost/plcsystems/46-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-08-01 09:46:17', '2015-08-01 09:46:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Vision', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-08-01 09:46:17', '2015-08-01 09:46:17', '', 48, 'http://localhost/plcsystems/48-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2015-08-01 09:46:25', '2015-08-01 09:46:25', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mission', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-08-01 09:46:25', '2015-08-01 09:46:25', '', 46, 'http://localhost/plcsystems/46-revision-v1/', 0, 'revision', '', 0),
(78, 1, '2015-08-01 09:48:53', '2015-08-01 09:48:53', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Goals', '', 'publish', 'open', 'closed', '', 'goals', '', '', '2015-08-04 04:50:19', '2015-08-04 04:50:19', '', 7, 'http://localhost/plcsystems/?page_id=78', 0, 'page', '', 0),
(79, 1, '2015-08-01 09:48:53', '2015-08-01 09:48:53', '', 'Goals', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-08-01 09:48:53', '2015-08-01 09:48:53', '', 78, 'http://localhost/plcsystems/78-revision-v1/', 0, 'revision', '', 0),
(80, 1, '2015-08-01 10:08:43', '2015-08-01 10:08:43', '', 'Links for Our Company, Products and Services', '', 'publish', 'closed', 'closed', '', 'acf_links-for-our-company-products-and-services', '', '', '2015-08-07 13:49:49', '2015-08-07 13:49:49', '', 0, 'http://localhost/plcsystems/?post_type=acf&#038;p=80', 0, 'acf', '', 0),
(81, 1, '2015-08-01 10:12:27', '2015-08-01 10:12:27', '', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-08-01 10:12:27', '2015-08-01 10:12:27', '', 7, 'http://localhost/plcsystems/7-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2015-08-01 10:13:13', '2015-08-01 10:13:13', '', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-08-01 10:13:13', '2015-08-01 10:13:13', '', 7, 'http://localhost/plcsystems/7-revision-v1/', 0, 'revision', '', 0),
(84, 1, '2015-08-02 02:55:30', '2015-08-02 02:55:30', '', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-02 02:55:30', '2015-08-02 02:55:30', '', 9, 'http://localhost/plcsystems/9-revision-v1/', 0, 'revision', '', 0),
(85, 1, '2015-08-03 09:49:26', '2015-08-03 09:49:26', '', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'acf_contact-us', '', '', '2015-08-03 09:49:26', '2015-08-03 09:49:26', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=85', 0, 'acf', '', 0),
(86, 1, '2015-08-03 09:51:04', '2015-08-03 09:51:04', 'Sample text for Contact Us!', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-08-03 09:51:04', '2015-08-03 09:51:04', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2015-08-03 15:06:46', '2015-08-03 15:06:46', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Mission', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-08-03 15:06:46', '2015-08-03 15:06:46', '', 46, 'http://localhost/rushwebplcsystems/46-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2015-08-04 03:09:43', '2015-08-04 03:09:43', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 1', '', 'publish', 'closed', 'closed', '', 'project-1', '', '', '2015-08-04 03:09:44', '2015-08-04 03:09:44', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=88', 0, 'projects', '', 0),
(89, 1, '2015-08-04 03:09:44', '2015-08-04 03:09:44', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 1', '', 'inherit', 'open', 'open', '', '88-revision-v1', '', '', '2015-08-04 03:09:44', '2015-08-04 03:09:44', '', 88, 'http://localhost/rushwebplcsystems/88-revision-v1/', 0, 'revision', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(90, 1, '2015-08-04 03:16:25', '2015-08-04 03:16:25', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 2', '', 'publish', 'closed', 'closed', '', 'project-2', '', '', '2015-08-04 03:16:25', '2015-08-04 03:16:25', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=90', 0, 'projects', '', 0),
(91, 1, '2015-08-04 03:16:25', '2015-08-04 03:16:25', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 2', '', 'inherit', 'open', 'open', '', '90-revision-v1', '', '', '2015-08-04 03:16:25', '2015-08-04 03:16:25', '', 90, 'http://localhost/rushwebplcsystems/90-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2015-08-04 03:16:34', '2015-08-04 03:16:34', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 3', '', 'publish', 'closed', 'closed', '', 'project-3', '', '', '2015-08-04 03:16:34', '2015-08-04 03:16:34', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=92', 0, 'projects', '', 0),
(93, 1, '2015-08-04 03:16:34', '2015-08-04 03:16:34', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 3', '', 'inherit', 'open', 'open', '', '92-revision-v1', '', '', '2015-08-04 03:16:34', '2015-08-04 03:16:34', '', 92, 'http://localhost/rushwebplcsystems/92-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2015-08-04 03:16:44', '2015-08-04 03:16:44', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 4', '', 'publish', 'closed', 'closed', '', 'project-4', '', '', '2015-08-04 03:16:44', '2015-08-04 03:16:44', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=94', 0, 'projects', '', 0),
(95, 1, '2015-08-04 03:16:44', '2015-08-04 03:16:44', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 4', '', 'inherit', 'open', 'open', '', '94-revision-v1', '', '', '2015-08-04 03:16:44', '2015-08-04 03:16:44', '', 94, 'http://localhost/rushwebplcsystems/94-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2015-08-04 03:16:52', '2015-08-04 03:16:52', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 5', '', 'publish', 'closed', 'closed', '', 'project-5', '', '', '2015-08-04 03:16:52', '2015-08-04 03:16:52', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=96', 0, 'projects', '', 0),
(97, 1, '2015-08-04 03:16:52', '2015-08-04 03:16:52', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 5', '', 'inherit', 'open', 'open', '', '96-revision-v1', '', '', '2015-08-04 03:16:52', '2015-08-04 03:16:52', '', 96, 'http://localhost/rushwebplcsystems/96-revision-v1/', 0, 'revision', '', 0),
(98, 1, '2015-08-04 03:17:01', '2015-08-04 03:17:01', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 6', '', 'publish', 'closed', 'closed', '', 'project-6', '', '', '2015-08-04 03:17:01', '2015-08-04 03:17:01', '', 0, 'http://localhost/rushwebplcsystems/?post_type=projects&#038;p=98', 0, 'projects', '', 0),
(99, 1, '2015-08-04 03:17:01', '2015-08-04 03:17:01', 'This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. \r\n\r\nThis is a sample text. To be replaced by the words of your choice. This is a sample text. To be replaced by the words of your choice. ', 'Project 6', '', 'inherit', 'open', 'open', '', '98-revision-v1', '', '', '2015-08-04 03:17:01', '2015-08-04 03:17:01', '', 98, 'http://localhost/rushwebplcsystems/98-revision-v1/', 0, 'revision', '', 0),
(100, 1, '2015-08-04 03:25:08', '2015-08-04 03:25:08', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-08-04 03:25:08', '2015-08-04 03:25:08', '', 56, 'http://localhost/rushwebplcsystems/56-revision-v1/', 0, 'revision', '', 0),
(101, 1, '2015-08-04 03:25:14', '2015-08-04 03:25:14', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 2', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2015-08-04 03:25:14', '2015-08-04 03:25:14', '', 58, 'http://localhost/rushwebplcsystems/58-revision-v1/', 0, 'revision', '', 0),
(102, 1, '2015-08-04 03:25:20', '2015-08-04 03:25:20', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 3', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-08-04 03:25:20', '2015-08-04 03:25:20', '', 60, 'http://localhost/rushwebplcsystems/60-revision-v1/', 0, 'revision', '', 0),
(103, 1, '2015-08-04 03:25:26', '2015-08-04 03:25:26', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 4', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-08-04 03:25:26', '2015-08-04 03:25:26', '', 62, 'http://localhost/rushwebplcsystems/62-revision-v1/', 0, 'revision', '', 0),
(104, 1, '2015-08-04 03:25:32', '2015-08-04 03:25:32', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 5', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-08-04 03:25:32', '2015-08-04 03:25:32', '', 64, 'http://localhost/rushwebplcsystems/64-revision-v1/', 0, 'revision', '', 0),
(105, 1, '2015-08-04 03:25:58', '2015-08-04 03:25:58', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 6', '', 'publish', 'closed', 'closed', '', 'sample-project-6', '', '', '2015-08-10 12:56:15', '2015-08-10 12:56:15', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=105', 0, 'project', '', 0),
(106, 1, '2015-08-04 03:25:58', '2015-08-04 03:25:58', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Sample Project 6', '', 'inherit', 'open', 'open', '', '105-revision-v1', '', '', '2015-08-04 03:25:58', '2015-08-04 03:25:58', '', 105, 'http://localhost/rushwebplcsystems/105-revision-v1/', 0, 'revision', '', 0),
(107, 1, '2015-08-04 04:50:19', '2015-08-04 04:50:19', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Goals', '', 'inherit', 'open', 'open', '', '78-revision-v1', '', '', '2015-08-04 04:50:19', '2015-08-04 04:50:19', '', 78, 'http://localhost/rushwebplcsystems/78-revision-v1/', 0, 'revision', '', 0),
(108, 1, '2015-08-04 05:42:27', '2015-08-04 05:42:27', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 7', '', 'publish', 'closed', 'closed', '', 'project-7', '', '', '2015-08-10 12:56:26', '2015-08-10 12:56:26', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=108', 0, 'project', '', 0),
(109, 1, '2015-08-04 05:42:27', '2015-08-04 05:42:27', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 7', '', 'inherit', 'open', 'open', '', '108-revision-v1', '', '', '2015-08-04 05:42:27', '2015-08-04 05:42:27', '', 108, 'http://localhost/rushwebplcsystems/108-revision-v1/', 0, 'revision', '', 0),
(110, 1, '2015-08-04 05:42:35', '2015-08-04 05:42:35', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 8', '', 'publish', 'closed', 'closed', '', 'project-8', '', '', '2015-08-10 12:56:36', '2015-08-10 12:56:36', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=110', 0, 'project', '', 0),
(111, 1, '2015-08-04 05:42:35', '2015-08-04 05:42:35', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 8', '', 'inherit', 'open', 'open', '', '110-revision-v1', '', '', '2015-08-04 05:42:35', '2015-08-04 05:42:35', '', 110, 'http://localhost/rushwebplcsystems/110-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2015-08-04 05:42:42', '2015-08-04 05:42:42', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 9', '', 'publish', 'closed', 'closed', '', 'project-9', '', '', '2015-08-10 12:56:48', '2015-08-10 12:56:48', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=112', 0, 'project', '', 0),
(113, 1, '2015-08-04 05:42:42', '2015-08-04 05:42:42', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. \r\n\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. ', 'Project 9', '', 'inherit', 'open', 'open', '', '112-revision-v1', '', '', '2015-08-04 05:42:42', '2015-08-04 05:42:42', '', 112, 'http://localhost/rushwebplcsystems/112-revision-v1/', 0, 'revision', '', 0),
(114, 1, '2015-08-04 12:57:31', '2015-08-04 12:57:31', '', 'flash1', '', 'inherit', 'open', 'open', '', 'flash1', '', '', '2015-08-04 12:57:31', '2015-08-04 12:57:31', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/flash1.jpg', 0, 'attachment', 'image/jpeg', 0),
(115, 1, '2015-08-04 12:57:44', '2015-08-04 12:57:44', '', 'flash2', '', 'inherit', 'open', 'open', '', 'flash2', '', '', '2015-08-04 12:57:44', '2015-08-04 12:57:44', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/flash2.jpg', 0, 'attachment', 'image/jpeg', 0),
(116, 1, '2015-08-04 12:57:54', '2015-08-04 12:57:54', '', 'flash3', '', 'inherit', 'open', 'open', '', 'flash3', '', '', '2015-08-04 12:57:54', '2015-08-04 12:57:54', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/flash3.jpg', 0, 'attachment', 'image/jpeg', 0),
(117, 1, '2015-08-04 12:58:03', '2015-08-04 12:58:03', '', 'flash4', '', 'inherit', 'open', 'open', '', 'flash4', '', '', '2015-08-04 12:58:03', '2015-08-04 12:58:03', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/flash4.jpg', 0, 'attachment', 'image/jpeg', 0),
(118, 1, '2015-08-04 13:03:44', '2015-08-04 13:03:44', '', 'mini1', '', 'inherit', 'open', 'open', '', 'mini1', '', '', '2015-08-04 13:03:44', '2015-08-04 13:03:44', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/mini1.png', 0, 'attachment', 'image/png', 0),
(119, 1, '2015-08-04 13:04:07', '2015-08-04 13:04:07', '', 'mini2', '', 'inherit', 'open', 'open', '', 'mini2', '', '', '2015-08-04 13:04:07', '2015-08-04 13:04:07', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/mini2.png', 0, 'attachment', 'image/png', 0),
(120, 1, '2015-08-04 13:04:20', '2015-08-04 13:04:20', '', 'mini3', '', 'inherit', 'open', 'open', '', 'mini3', '', '', '2015-08-04 13:04:20', '2015-08-04 13:04:20', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/mini3.png', 0, 'attachment', 'image/png', 0),
(121, 1, '2015-08-04 13:04:30', '2015-08-04 13:04:30', '', 'mini4', '', 'inherit', 'open', 'open', '', 'mini4', '', '', '2015-08-04 13:04:30', '2015-08-04 13:04:30', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/08/mini4.png', 0, 'attachment', 'image/png', 0),
(122, 1, '2015-08-06 14:35:34', '2015-08-06 14:35:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Process Instrumentaion', '', 'publish', 'closed', 'closed', '', 'process-instrumentaion', '', '', '2015-08-10 14:13:00', '2015-08-10 14:13:00', '', 0, 'http://localhost/rushwebplcsystems/?post_type=product&#038;p=122', 0, 'product', '', 0),
(123, 1, '2015-08-06 14:35:34', '2015-08-06 14:35:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Product 1', '', 'inherit', 'open', 'open', '', '122-revision-v1', '', '', '2015-08-06 14:35:34', '2015-08-06 14:35:34', '', 122, 'http://localhost/rushwebplcsystems/122-revision-v1/', 0, 'revision', '', 0),
(124, 1, '2015-08-06 14:36:26', '2015-08-06 14:36:26', '', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-06 14:36:26', '2015-08-06 14:36:26', '', 9, 'http://localhost/rushwebplcsystems/9-revision-v1/', 0, 'revision', '', 0),
(125, 1, '2015-08-06 14:46:16', '2015-08-06 14:46:16', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'DB1.DBX0.0', '', 'inherit', 'open', 'open', '', '122-revision-v1', '', '', '2015-08-06 14:46:16', '2015-08-06 14:46:16', '', 122, 'http://localhost/rushwebplcsystems/122-revision-v1/', 0, 'revision', '', 0),
(126, 1, '2015-08-06 14:47:11', '2015-08-06 14:47:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Automation / ACDA', '', 'publish', 'closed', 'closed', '', 'automation-acda', '', '', '2015-08-10 14:12:49', '2015-08-10 14:12:49', '', 0, 'http://localhost/rushwebplcsystems/?post_type=product&#038;p=126', 0, 'product', '', 0),
(127, 1, '2015-08-06 14:47:11', '2015-08-06 14:47:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'DB1.DBX0.1', '', 'inherit', 'open', 'open', '', '126-revision-v1', '', '', '2015-08-06 14:47:11', '2015-08-06 14:47:11', '', 126, 'http://localhost/rushwebplcsystems/126-revision-v1/', 0, 'revision', '', 0),
(128, 1, '2015-08-06 14:47:28', '2015-08-06 14:47:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'VFD Soft Starters', '', 'publish', 'closed', 'closed', '', 'vfd-soft-starters', '', '', '2015-08-10 14:12:39', '2015-08-10 14:12:39', '', 0, 'http://localhost/rushwebplcsystems/?post_type=product&#038;p=128', 0, 'product', '', 0),
(129, 1, '2015-08-06 14:47:28', '2015-08-06 14:47:28', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'DB1.DBX0.2', '', 'inherit', 'open', 'open', '', '128-revision-v1', '', '', '2015-08-06 14:47:28', '2015-08-06 14:47:28', '', 128, 'http://localhost/rushwebplcsystems/128-revision-v1/', 0, 'revision', '', 0),
(130, 1, '2015-08-06 14:47:43', '2015-08-06 14:47:43', '', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-06 14:47:43', '2015-08-06 14:47:43', '', 9, 'http://localhost/rushwebplcsystems/9-revision-v1/', 0, 'revision', '', 0),
(131, 1, '2015-08-06 15:06:24', '2015-08-06 15:06:24', '', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-06 15:06:24', '2015-08-06 15:06:24', '', 9, 'http://localhost/rushwebplcsystems/9-revision-v1/', 0, 'revision', '', 0),
(132, 1, '2015-08-07 11:28:00', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-07 11:28:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?p=132', 0, 'post', '', 0),
(133, 1, '2015-08-07 12:31:54', '2015-08-07 12:31:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Automation  Engineering', '', 'publish', 'closed', 'closed', '', 'automation-engineering', '', '', '2015-08-07 13:55:44', '2015-08-07 13:55:44', '', 0, 'http://localhost/plcsystems/?post_type=service&#038;p=133', 0, 'service', '', 0),
(134, 1, '2015-08-07 12:31:54', '2015-08-07 12:31:54', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Automation  Engineering', '', 'inherit', 'open', 'open', '', '133-revision-v1', '', '', '2015-08-07 12:31:54', '2015-08-07 12:31:54', '', 133, 'http://localhost/plcsystems/133-revision-v1/', 0, 'revision', '', 0),
(135, 1, '2015-08-07 12:32:27', '2015-08-07 12:32:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'SCADA Engineering', '', 'publish', 'closed', 'closed', '', 'scada-engineering', '', '', '2015-08-07 13:55:26', '2015-08-07 13:55:26', '', 0, 'http://localhost/plcsystems/?post_type=service&#038;p=135', 0, 'service', '', 0),
(136, 1, '2015-08-07 12:32:27', '2015-08-07 12:32:27', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'SCADA Engineering', '', 'inherit', 'open', 'open', '', '135-revision-v1', '', '', '2015-08-07 12:32:27', '2015-08-07 12:32:27', '', 135, 'http://localhost/plcsystems/135-revision-v1/', 0, 'revision', '', 0),
(137, 1, '2015-08-07 12:33:13', '2015-08-07 12:33:13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Machine Designing', '', 'publish', 'closed', 'closed', '', 'machine-designing', '', '', '2015-08-07 13:55:55', '2015-08-07 13:55:55', '', 0, 'http://localhost/plcsystems/?post_type=service&#038;p=137', 0, 'service', '', 0),
(138, 1, '2015-08-07 12:33:13', '2015-08-07 12:33:13', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Machine Designing', '', 'inherit', 'open', 'open', '', '137-revision-v1', '', '', '2015-08-07 12:33:13', '2015-08-07 12:33:13', '', 137, 'http://localhost/plcsystems/137-revision-v1/', 0, 'revision', '', 0),
(139, 1, '2015-08-07 12:35:49', '2015-08-07 12:35:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'BMS Engineering', '', 'publish', 'closed', 'closed', '', 'bms-engineering', '', '', '2015-08-10 14:41:56', '2015-08-10 14:41:56', '', 0, 'http://localhost/plcsystems/?post_type=service&#038;p=139', 0, 'service', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(140, 1, '2015-08-07 12:35:49', '2015-08-07 12:35:49', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'BMS Engineering', '', 'inherit', 'open', 'open', '', '139-revision-v1', '', '', '2015-08-07 12:35:49', '2015-08-07 12:35:49', '', 139, 'http://localhost/plcsystems/139-revision-v1/', 0, 'revision', '', 0),
(141, 1, '2015-08-07 12:36:31', '2015-08-07 12:36:31', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Technical Training', '', 'publish', 'closed', 'closed', '', 'technical-training', '', '', '2015-08-10 14:41:47', '2015-08-10 14:41:47', '', 0, 'http://localhost/plcsystems/?post_type=service&#038;p=141', 0, 'service', '', 0),
(142, 1, '2015-08-07 12:36:31', '2015-08-07 12:36:31', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Technical Training', '', 'inherit', 'open', 'open', '', '141-revision-v1', '', '', '2015-08-07 12:36:31', '2015-08-07 12:36:31', '', 141, 'http://localhost/plcsystems/141-revision-v1/', 0, 'revision', '', 0),
(143, 1, '2015-08-07 12:59:51', '2015-08-07 12:59:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'VFD Soft Starters', '', 'inherit', 'open', 'open', '', '128-revision-v1', '', '', '2015-08-07 12:59:51', '2015-08-07 12:59:51', '', 128, 'http://localhost/plcsystems/128-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2015-08-07 13:02:51', '2015-08-07 13:02:51', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Automation/ACDA', '', 'inherit', 'open', 'open', '', '126-revision-v1', '', '', '2015-08-07 13:02:51', '2015-08-07 13:02:51', '', 126, 'http://localhost/plcsystems/126-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2015-08-07 13:04:00', '2015-08-07 13:04:00', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Process Instrumentaion', '', 'inherit', 'open', 'open', '', '122-revision-v1', '', '', '2015-08-07 13:04:00', '2015-08-07 13:04:00', '', 122, 'http://localhost/plcsystems/122-revision-v1/', 0, 'revision', '', 0),
(146, 1, '2015-08-07 13:04:39', '2015-08-07 13:04:39', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.', 'Electrical  Components', '', 'publish', 'closed', 'closed', '', 'electrical-components', '', '', '2015-08-10 14:12:30', '2015-08-10 14:12:30', '', 0, 'http://localhost/plcsystems/?post_type=product&#038;p=146', 0, 'product', '', 0),
(147, 1, '2015-08-07 13:04:39', '2015-08-07 13:04:39', 'This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.\r\nThis is a dummy text. To be replaced by the words of your choice. This is a dummy text. To be replaced by the words of your choice.', 'Electrical  Components', '', 'inherit', 'open', 'open', '', '146-revision-v1', '', '', '2015-08-07 13:04:39', '2015-08-07 13:04:39', '', 146, 'http://localhost/plcsystems/146-revision-v1/', 0, 'revision', '', 0),
(149, 1, '2015-08-07 13:38:24', '2015-08-07 13:38:24', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Automation / ACDA', '', 'inherit', 'open', 'open', '', '126-revision-v1', '', '', '2015-08-07 13:38:24', '2015-08-07 13:38:24', '', 126, 'http://localhost/plcsystems/126-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2015-08-07 13:42:13', '2015-08-07 13:42:13', '', 'Products', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-08-07 13:42:13', '2015-08-07 13:42:13', '', 9, 'http://localhost/plcsystems/9-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2015-08-07 13:44:00', '2015-08-07 13:44:00', '', 'Services', '', 'inherit', 'open', 'open', '', '72-revision-v1', '', '', '2015-08-07 13:44:00', '2015-08-07 13:44:00', '', 72, 'http://localhost/plcsystems/72-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2015-08-07 13:53:15', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-07 13:53:15', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=service&p=152', 0, 'service', '', 0),
(153, 1, '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=service&p=153', 0, 'service', '', 0),
(154, 1, '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=service&p=154', 0, 'service', '', 0),
(155, 1, '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-07 13:53:16', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=service&p=155', 0, 'service', '', 0),
(156, 1, '2015-08-08 06:04:50', '2015-08-08 06:04:50', '', 'banner1', '', 'inherit', 'open', 'open', '', 'banner1', '', '', '2015-08-08 06:04:50', '2015-08-08 06:04:50', '', 0, 'http://localhost/plcsystems/wp-content/uploads/2015/08/banner1.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2015-08-10 12:33:01', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:33:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?p=157', 0, 'post', '', 0),
(158, 1, '2015-08-10 12:33:17', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:33:17', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=158', 0, 'project', '', 0),
(159, 1, '2015-08-10 12:33:20', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:33:20', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=159', 0, 'project', '', 0),
(160, 1, '2015-08-10 12:33:41', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:33:41', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=160', 0, 'project', '', 0),
(161, 1, '2015-08-10 12:36:45', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:36:45', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=161', 0, 'project', '', 0),
(162, 1, '2015-08-10 12:36:55', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 12:36:55', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=162', 0, 'project', '', 0),
(163, 1, '2015-08-10 12:48:26', '2015-08-10 12:48:26', '', 'sample-featured1', '', 'inherit', 'open', 'open', '', 'sample-featured1', '', '', '2015-08-10 12:48:26', '2015-08-10 12:48:26', '', 56, 'http://localhost/plcsystems/wp-content/uploads/2015/07/sample-featured1.jpg', 0, 'attachment', 'image/jpeg', 0),
(164, 1, '2015-08-10 12:48:44', '2015-08-10 12:48:44', '', 'sample-featured2', '', 'inherit', 'open', 'open', '', 'sample-featured2', '', '', '2015-08-10 12:48:44', '2015-08-10 12:48:44', '', 58, 'http://localhost/plcsystems/wp-content/uploads/2015/07/sample-featured2.jpg', 0, 'attachment', 'image/jpeg', 0),
(165, 1, '2015-08-10 12:49:01', '2015-08-10 12:49:01', '', 'sample-featured3', '', 'inherit', 'open', 'open', '', 'sample-featured3', '', '', '2015-08-10 12:49:01', '2015-08-10 12:49:01', '', 60, 'http://localhost/plcsystems/wp-content/uploads/2015/07/sample-featured3.jpg', 0, 'attachment', 'image/jpeg', 0),
(166, 1, '2015-08-10 12:49:18', '2015-08-10 12:49:18', '', 'sample-featured4', '', 'inherit', 'open', 'open', '', 'sample-featured4', '', '', '2015-08-10 12:49:18', '2015-08-10 12:49:18', '', 62, 'http://localhost/plcsystems/wp-content/uploads/2015/07/sample-featured4.jpg', 0, 'attachment', 'image/jpeg', 0),
(167, 1, '2015-08-10 14:06:54', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 14:06:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=project&p=167', 0, 'project', '', 0),
(168, 1, '2015-08-10 14:07:07', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-08-10 14:07:07', '0000-00-00 00:00:00', '', 0, 'http://localhost/plcsystems/?post_type=product&p=168', 0, 'product', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form`
--

DROP TABLE IF EXISTS `wp_rg_form`;
CREATE TABLE IF NOT EXISTS `wp_rg_form` (
  `id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `date_created` datetime NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_form`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_meta`
--

DROP TABLE IF EXISTS `wp_rg_form_meta`;
CREATE TABLE IF NOT EXISTS `wp_rg_form_meta` (
  `form_id` mediumint(8) unsigned NOT NULL,
  `display_meta` longtext,
  `entries_grid_meta` longtext,
  `confirmations` longtext,
  `notifications` longtext,
  PRIMARY KEY (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_rg_form_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_form_view`
--

DROP TABLE IF EXISTS `wp_rg_form_view`;
CREATE TABLE IF NOT EXISTS `wp_rg_form_view` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `ip` char(15) DEFAULT NULL,
  `count` mediumint(8) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_form_view`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead`
--

DROP TABLE IF EXISTS `wp_rg_lead`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL,
  `post_id` bigint(20) unsigned DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `is_starred` tinyint(1) NOT NULL DEFAULT '0',
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `ip` varchar(39) NOT NULL,
  `source_url` varchar(200) NOT NULL DEFAULT '',
  `user_agent` varchar(250) NOT NULL DEFAULT '',
  `currency` varchar(5) DEFAULT NULL,
  `payment_status` varchar(15) DEFAULT NULL,
  `payment_date` datetime DEFAULT NULL,
  `payment_amount` decimal(19,2) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `is_fulfilled` tinyint(1) DEFAULT NULL,
  `created_by` bigint(20) unsigned DEFAULT NULL,
  `transaction_type` tinyint(1) DEFAULT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'active',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_lead`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `form_id` mediumint(8) unsigned NOT NULL,
  `field_number` float NOT NULL,
  `value` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_field_number` (`lead_id`,`field_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_lead_detail`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_detail_long`
--

DROP TABLE IF EXISTS `wp_rg_lead_detail_long`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_detail_long` (
  `lead_detail_id` bigint(20) unsigned NOT NULL,
  `value` longtext,
  PRIMARY KEY (`lead_detail_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_rg_lead_detail_long`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_meta`
--

DROP TABLE IF EXISTS `wp_rg_lead_meta`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_meta` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `form_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lead_id` bigint(20) unsigned NOT NULL,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `lead_id` (`lead_id`),
  KEY `form_id_meta_key` (`form_id`,`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_lead_meta`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_rg_lead_notes`
--

DROP TABLE IF EXISTS `wp_rg_lead_notes`;
CREATE TABLE IF NOT EXISTS `wp_rg_lead_notes` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lead_id` int(10) unsigned NOT NULL,
  `user_name` varchar(250) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `date_created` datetime NOT NULL,
  `value` longtext,
  PRIMARY KEY (`id`),
  KEY `lead_id` (`lead_id`),
  KEY `lead_user_key` (`lead_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `wp_rg_lead_notes`
--


-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

DROP TABLE IF EXISTS `wp_terms`;
CREATE TABLE IF NOT EXISTS `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Sample Category', 'sample-category', 0),
(7, 'DB1.DBX0.0', 'db1-dbx0-0', 0),
(8, 'DB1.DBX0.1', 'db1-dbx0-1', 0),
(9, 'DB1.DBX0.2', 'db1-dbx0-2', 0),
(10, 'DB1.DBX0.3', 'db1-dbx0-3', 0),
(11, 'DB2.DBX0.0', 'db2-dbx0-0', 0),
(12, 'DB2.DBX0.1', 'db2-dbx0-1', 0),
(13, 'DB2.DBX0.2', 'db2-dbx0-2', 0),
(14, 'DB2.DBX0.3', 'db2-dbx0-3', 0),
(15, 'DB2.DBX0.4', 'db2-dbx0-4', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

DROP TABLE IF EXISTS `wp_term_relationships`;
CREATE TABLE IF NOT EXISTS `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(28, 3, 0),
(30, 3, 0),
(36, 1, 0),
(39, 1, 0),
(74, 2, 0),
(122, 9, 0),
(126, 8, 0),
(128, 7, 0),
(133, 11, 0),
(135, 12, 0),
(137, 13, 0),
(139, 14, 0),
(141, 15, 0),
(146, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

DROP TABLE IF EXISTS `wp_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'news-categories', '', 0, 0),
(7, 7, 'product-types', '', 0, 1),
(8, 8, 'product-types', '', 0, 1),
(9, 9, 'product-types', '', 0, 1),
(10, 10, 'product-types', '', 0, 1),
(11, 11, 'service-types', '', 0, 1),
(12, 12, 'service-types', '', 0, 1),
(13, 13, 'service-types', '', 0, 1),
(14, 14, 'service-types', '', 0, 1),
(15, 15, 'service-types', '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

DROP TABLE IF EXISTS `wp_usermeta`;
CREATE TABLE IF NOT EXISTS `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'comment_shortcuts', 'false'),
(7, 1, 'admin_color', 'fresh'),
(8, 1, 'use_ssl', '0'),
(9, 1, 'show_admin_bar_front', 'true'),
(10, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(11, 1, 'wp_user_level', '10'),
(12, 1, 'dismissed_wp_pointers', 'wp360_locks,wp390_widgets,wp410_dfw'),
(13, 1, 'show_welcome_panel', '1'),
(14, 1, 'session_tokens', 'a:2:{s:64:"731c170a34c807dbe7ef68cdf72b0e94ed4aa10d1b15547e78056dd11b24d69e";a:4:{s:10:"expiration";i:1439382360;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36";s:5:"login";i:1438172760;}s:64:"47e5af14f0bb53518e4a9f9e97704eb856fd37b20452c27fc1d1aa920f6c1bab";a:4:{s:10:"expiration";i:1439380705;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.130 Safari/537.36";s:5:"login";i:1439207905;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '132'),
(16, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:11:"css-classes";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(17, 1, 'metaboxhidden_nav-menus', 'a:4:{i:0;s:8:"add-post";i:1;s:8:"add-news";i:2;s:12:"add-post_tag";i:3;s:19:"add-news-categories";}'),
(18, 1, 'nav_menu_recently_edited', '2'),
(19, 1, 'layerslider_help_wp_pointer', '1'),
(20, 1, 'wp_user-settings', 'libraryContent=browse&editor=html&wplink=1'),
(21, 1, 'wp_user-settings-time', '1438175693'),
(22, 1, 'closedpostboxes_news', 'a:0:{}'),
(23, 1, 'metaboxhidden_news', 'a:4:{i:0;s:6:"acf_22";i:1;s:6:"acf_32";i:2;s:6:"acf_25";i:3;s:7:"slugdiv";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

DROP TABLE IF EXISTS `wp_users`;
CREATE TABLE IF NOT EXISTS `wp_users` (
  `ID` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(64) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(60) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BJWH/KnG19KFXzIukfmmWGesGv.x0F.', 'admin', 'henricks91@gmail.com', '', '2015-07-12 08:04:35', '', 0, 'admin');
