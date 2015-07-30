-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 30, 2015 at 05:18 PM
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Mr WordPress', '', 'https://wordpress.org/', '', '2015-07-12 08:04:36', '2015-07-12 08:04:36', 'Hi, this is a comment.\nTo delete a comment, just log in and view the post&#039;s comments. There you will have the option to edit or delete them.', 0, 'post-trashed', '', '', 0, 0);

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
(1, 'Home Slider', '{"properties":{"title":"Home Slider","width":"100%","height":"397","responsive":"on","forceresponsive":"on","responsiveunder":"0","sublayercontainer":"0","autostart":"on","pauseonhover":"on","firstlayer":"1","animatefirstlayer":"on","twowayslideshow":"on","loops":"0","forceloopnum":"on","autoplayvideos":"on","autopauseslideshow":"auto","youtubepreview":"maxresdefault.jpg","keybnav":"on","touchnav":"on","skin":"defaultskin","backgroundcolor":"","backgroundimage":"","sliderstyle":"","navbuttons":"on","thumb_nav":"hover","thumb_width":"100","thumb_height":"60","thumb_container_width":"60%","thumb_active_opacity":"35","thumb_inactive_opacity":"100","imgpreload":"on","yourlogo":"","yourlogostyle":"left: 10px; top: 10px;","yourlogolink":"","yourlogotarget":"_self","cbinit":"function(element) { }","cbstart":"function(data) { }","cbstop":"function(data) { }","cbpause":"function(data) { }","cbanimstart":"function(data) { }","cbanimstop":"function(data) { }","cbprev":"function(data) { }","cbnext":"function(data) { }"},"layers":[{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/rushwebplcsystems\\/wp-content\\/uploads\\/2015\\/07\\/banner1.png","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""}},{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/rushwebplcsystems\\/wp-content\\/uploads\\/2015\\/07\\/banner2.png","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1","type":"img","image":"","html":"","slidedirection":"auto","durationin":"1000","easingin":"easeInOutQuint","delayin":"0","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1000","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"0px","left":"0px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/rushwebplcsystems\\/wp-content\\/uploads\\/2015\\/07\\/banner3.png","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1","type":"img","image":"","html":"","slidedirection":"auto","durationin":"1000","easingin":"easeInOutQuint","delayin":"0","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1000","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"0px","left":"0px","style":"","id":"","class":"","title":"","alt":"","rel":""}]},{"properties":{"3d_transitions":"","2d_transitions":"1","custom_3d_transitions":"","custom_2d_transitions":"","background":"http:\\/\\/localhost\\/rushwebplcsystems\\/wp-content\\/uploads\\/2015\\/07\\/banner4.png","thumbnail":"","slidedelay":"4000","new_transitions":"on","slidedirection":"right","timeshift":"0","durationin":"1500","easingin":"easeInOutQuint","delayin":"0","durationout":"1500","easingout":"easeInOutQuint","delayout":"0","layer_link":"","layer_link_target":"_self","id":"","deeplink":""},"sublayers":[{"subtitle":"Layer #1","type":"img","image":"","html":"","slidedirection":"auto","durationin":"1000","easingin":"easeInOutQuint","delayin":"0","rotatein":"0","scalein":"1.0","slideoutdirection":"auto","durationout":"1000","easingout":"easeInOutQuint","delayout":"0","rotateout":"0","scaleout":"1.0","level":"-1","showuntil":"0","url":"","target":"_self","styles":"{}","top":"0px","left":"0px","style":"","id":"","class":"","title":"","alt":"","rel":""}]}]}', 1437285174, 1438265586, 0, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=301 ;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/rushwebplcsystems', 'yes'),
(2, 'home', 'http://localhost/rushwebplcsystems', 'yes'),
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
(40, 'recently_edited', 'a:2:{i:0;s:72:"C:\\xampp\\htdocs\\rushwebplcsystems/wp-content/themes/plcsystems/style.css";i:1;s:0:"";}', 'no'),
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
(97, 'cron', 'a:5:{i:1438284360;a:1:{s:20:"wp_maybe_auto_update";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438286678;a:3:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1438329895;a:1:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1438333618;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}s:7:"version";i:2;}', 'yes'),
(107, '_transient_random_seed', '25ad1893dfee4420bfcd81a326ee1bdc', 'yes'),
(109, '_site_transient_update_themes', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438252069;s:7:"checked";a:1:{s:10:"plcsystems";s:3:"1.1";}s:8:"response";a:0:{}s:12:"translations";a:0:{}}', 'yes'),
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
(186, '_site_transient_update_core', 'O:8:"stdClass":4:{s:7:"updates";a:1:{i:0;O:8:"stdClass":10:{s:8:"response";s:6:"latest";s:8:"download";s:58:"http://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:6:"locale";s:5:"en_US";s:8:"packages";O:8:"stdClass":5:{s:4:"full";s:58:"http://downloads.wordpress.org/release/wordpress-4.2.3.zip";s:10:"no_content";s:69:"http://downloads.wordpress.org/release/wordpress-4.2.3-no-content.zip";s:11:"new_bundled";s:70:"http://downloads.wordpress.org/release/wordpress-4.2.3-new-bundled.zip";s:7:"partial";b:0;s:8:"rollback";b:0;}s:7:"current";s:5:"4.2.3";s:7:"version";s:5:"4.2.3";s:11:"php_version";s:5:"5.2.4";s:13:"mysql_version";s:3:"5.0";s:11:"new_bundled";s:3:"4.1";s:15:"partial_version";s:0:"";}}s:12:"last_checked";i:1438252067;s:15:"version_checked";s:5:"4.2.3";s:12:"translations";a:0:{}}', 'yes'),
(191, '_site_transient_timeout_browser_0e87d76942db3bed36d68e35d5a4e90e', '1438404515', 'yes'),
(192, '_site_transient_browser_0e87d76942db3bed36d68e35d5a4e90e', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:12:"44.0.2403.89";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(193, 'can_compress_scripts', '1', 'yes'),
(235, 'acf_version', '4.4.2', 'yes'),
(241, '_site_transient_timeout_browser_4c595e17f927ed1824d89c66fa6bd173', '1438525896', 'yes'),
(242, '_site_transient_browser_4c595e17f927ed1824d89c66fa6bd173', 'a:9:{s:8:"platform";s:7:"Windows";s:4:"name";s:6:"Chrome";s:7:"version";s:13:"44.0.2403.107";s:10:"update_url";s:28:"http://www.google.com/chrome";s:7:"img_src";s:49:"http://s.wordpress.org/images/browsers/chrome.png";s:11:"img_src_ssl";s:48:"https://wordpress.org/images/browsers/chrome.png";s:15:"current_version";s:2:"18";s:7:"upgrade";b:0;s:8:"insecure";b:0;}', 'yes'),
(268, 'category_children', 'a:0:{}', 'yes'),
(269, 'news-categories_children', 'a:0:{}', 'yes'),
(285, '_transient_timeout_plugin_slugs', '1438253666', 'no'),
(286, '_transient_plugin_slugs', 'a:5:{i:0;s:30:"advanced-custom-fields/acf.php";i:1;s:19:"akismet/akismet.php";i:2;s:29:"gravityforms/gravityforms.php";i:3;s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";i:4;s:27:"LayerSlider/layerslider.php";}', 'no'),
(287, '_transient_timeout_dash_4077549d03da2e451c8b5f002294ff51', '1438210466', 'no'),
(288, '_transient_dash_4077549d03da2e451c8b5f002294ff51', '<div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><p><strong>RSS Error</strong>: WP HTTP Error: There are no HTTP transports available which can complete the requested request.</p></div><div class="rss-widget"><ul></ul></div>', 'no'),
(289, '_site_transient_timeout_available_translations', '1438183698', 'yes'),
(290, '_site_transient_available_translations', 'a:59:{s:2:"ar";a:8:{s:8:"language";s:2:"ar";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 06:57:37";s:12:"english_name";s:6:"Arabic";s:11:"native_name";s:14:"العربية";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/ar.zip";s:3:"iso";a:2:{i:1;s:2:"ar";i:2;s:3:"ara";}s:7:"strings";a:1:{s:8:"continue";s:16:"المتابعة";}}s:2:"az";a:8:{s:8:"language";s:2:"az";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:11:"Azerbaijani";s:11:"native_name";s:16:"Azərbaycan dili";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/az.zip";s:3:"iso";a:2:{i:1;s:2:"az";i:2;s:3:"aze";}s:7:"strings";a:1:{s:8:"continue";s:5:"Davam";}}s:5:"bg_BG";a:8:{s:8:"language";s:5:"bg_BG";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 10:19:19";s:12:"english_name";s:9:"Bulgarian";s:11:"native_name";s:18:"Български";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/bg_BG.zip";s:3:"iso";a:2:{i:1;s:2:"bg";i:2;s:3:"bul";}s:7:"strings";a:1:{s:8:"continue";s:22:"Продължение";}}s:5:"bs_BA";a:8:{s:8:"language";s:5:"bs_BA";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 17:43:43";s:12:"english_name";s:7:"Bosnian";s:11:"native_name";s:8:"Bosanski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/bs_BA.zip";s:3:"iso";a:2:{i:1;s:2:"bs";i:2;s:3:"bos";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:2:"ca";a:8:{s:8:"language";s:2:"ca";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Catalan";s:11:"native_name";s:7:"Català";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/ca.zip";s:3:"iso";a:2:{i:1;s:2:"ca";i:2;s:3:"cat";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"cy";a:8:{s:8:"language";s:2:"cy";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 11:08:34";s:12:"english_name";s:5:"Welsh";s:11:"native_name";s:7:"Cymraeg";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/cy.zip";s:3:"iso";a:2:{i:1;s:2:"cy";i:2;s:3:"cym";}s:7:"strings";a:1:{s:8:"continue";s:6:"Parhau";}}s:5:"da_DK";a:8:{s:8:"language";s:5:"da_DK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-03 00:26:43";s:12:"english_name";s:6:"Danish";s:11:"native_name";s:5:"Dansk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/da_DK.zip";s:3:"iso";a:2:{i:1;s:2:"da";i:2;s:3:"dan";}s:7:"strings";a:1:{s:8:"continue";s:12:"Forts&#230;t";}}s:5:"de_CH";a:8:{s:8:"language";s:5:"de_CH";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:20:"German (Switzerland)";s:11:"native_name";s:17:"Deutsch (Schweiz)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/de_CH.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:5:"de_DE";a:8:{s:8:"language";s:5:"de_DE";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 16:26:14";s:12:"english_name";s:6:"German";s:11:"native_name";s:7:"Deutsch";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/de_DE.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:12:"de_DE_formal";a:8:{s:8:"language";s:12:"de_DE_formal";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-28 17:29:32";s:12:"english_name";s:15:"German (Formal)";s:11:"native_name";s:13:"Deutsch (Sie)";s:7:"package";s:70:"http://downloads.wordpress.org/translation/core/4.2.3/de_DE_formal.zip";s:3:"iso";a:1:{i:1;s:2:"de";}s:7:"strings";a:1:{s:8:"continue";s:10:"Fortfahren";}}s:2:"el";a:8:{s:8:"language";s:2:"el";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-24 12:08:43";s:12:"english_name";s:5:"Greek";s:11:"native_name";s:16:"Ελληνικά";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/el.zip";s:3:"iso";a:2:{i:1;s:2:"el";i:2;s:3:"ell";}s:7:"strings";a:1:{s:8:"continue";s:16:"Συνέχεια";}}s:5:"en_CA";a:8:{s:8:"language";s:5:"en_CA";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"English (Canada)";s:11:"native_name";s:16:"English (Canada)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_CA.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_AU";a:8:{s:8:"language";s:5:"en_AU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"English (Australia)";s:11:"native_name";s:19:"English (Australia)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_AU.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:5:"en_GB";a:8:{s:8:"language";s:5:"en_GB";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:12:"English (UK)";s:11:"native_name";s:12:"English (UK)";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/en_GB.zip";s:3:"iso";a:3:{i:1;s:2:"en";i:2;s:3:"eng";i:3;s:3:"eng";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continue";}}s:2:"eo";a:8:{s:8:"language";s:2:"eo";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Esperanto";s:11:"native_name";s:9:"Esperanto";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/eo.zip";s:3:"iso";a:2:{i:1;s:2:"eo";i:2;s:3:"epo";}s:7:"strings";a:1:{s:8:"continue";s:8:"Daŭrigi";}}s:5:"es_MX";a:8:{s:8:"language";s:5:"es_MX";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:16:"Spanish (Mexico)";s:11:"native_name";s:19:"Español de México";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/es_MX.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_ES";a:8:{s:8:"language";s:5:"es_ES";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Spanish (Spain)";s:11:"native_name";s:8:"Español";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/es_ES.zip";s:3:"iso";a:1:{i:1;s:2:"es";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_PE";a:8:{s:8:"language";s:5:"es_PE";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-25 13:39:01";s:12:"english_name";s:14:"Spanish (Peru)";s:11:"native_name";s:17:"Español de Perú";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/es_PE.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"es_CL";a:8:{s:8:"language";s:5:"es_CL";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-04 19:47:01";s:12:"english_name";s:15:"Spanish (Chile)";s:11:"native_name";s:17:"Español de Chile";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.0/es_CL.zip";s:3:"iso";a:2:{i:1;s:2:"es";i:2;s:3:"spa";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:2:"et";a:8:{s:8:"language";s:2:"et";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-05 20:09:08";s:12:"english_name";s:8:"Estonian";s:11:"native_name";s:5:"Eesti";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/et.zip";s:3:"iso";a:2:{i:1;s:2:"et";i:2;s:3:"est";}s:7:"strings";a:1:{s:8:"continue";s:6:"Jätka";}}s:2:"eu";a:8:{s:8:"language";s:2:"eu";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:6:"Basque";s:11:"native_name";s:7:"Euskara";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/eu.zip";s:3:"iso";a:2:{i:1;s:2:"eu";i:2;s:3:"eus";}s:7:"strings";a:1:{s:8:"continue";s:8:"Jarraitu";}}s:5:"fa_IR";a:8:{s:8:"language";s:5:"fa_IR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Persian";s:11:"native_name";s:10:"فارسی";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/fa_IR.zip";s:3:"iso";a:2:{i:1;s:2:"fa";i:2;s:3:"fas";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:2:"fi";a:8:{s:8:"language";s:2:"fi";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-15 10:49:37";s:12:"english_name";s:7:"Finnish";s:11:"native_name";s:5:"Suomi";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/fi.zip";s:3:"iso";a:2:{i:1;s:2:"fi";i:2;s:3:"fin";}s:7:"strings";a:1:{s:8:"continue";s:5:"Jatka";}}s:5:"fr_FR";a:8:{s:8:"language";s:5:"fr_FR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-10 14:16:27";s:12:"english_name";s:15:"French (France)";s:11:"native_name";s:9:"Français";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/fr_FR.zip";s:3:"iso";a:1:{i:1;s:2:"fr";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuer";}}s:2:"gd";a:8:{s:8:"language";s:2:"gd";s:7:"version";s:3:"4.0";s:7:"updated";s:19:"2014-09-05 17:37:43";s:12:"english_name";s:15:"Scottish Gaelic";s:11:"native_name";s:9:"Gàidhlig";s:7:"package";s:58:"http://downloads.wordpress.org/translation/core/4.0/gd.zip";s:3:"iso";a:3:{i:1;s:2:"gd";i:2;s:3:"gla";i:3;s:3:"gla";}s:7:"strings";a:1:{s:8:"continue";s:15:"Lean air adhart";}}s:5:"gl_ES";a:8:{s:8:"language";s:5:"gl_ES";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Galician";s:11:"native_name";s:6:"Galego";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/gl_ES.zip";s:3:"iso";a:2:{i:1;s:2:"gl";i:2;s:3:"glg";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:3:"haz";a:8:{s:8:"language";s:3:"haz";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 15:20:27";s:12:"english_name";s:8:"Hazaragi";s:11:"native_name";s:15:"هزاره گی";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.1.6/haz.zip";s:3:"iso";a:1:{i:2;s:3:"haz";}s:7:"strings";a:1:{s:8:"continue";s:10:"ادامه";}}s:5:"he_IL";a:8:{s:8:"language";s:5:"he_IL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-12 08:05:04";s:12:"english_name";s:6:"Hebrew";s:11:"native_name";s:16:"עִבְרִית";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/he_IL.zip";s:3:"iso";a:1:{i:1;s:2:"he";}s:7:"strings";a:1:{s:8:"continue";s:12:"להמשיך";}}s:2:"hr";a:8:{s:8:"language";s:2:"hr";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-07 17:26:35";s:12:"english_name";s:8:"Croatian";s:11:"native_name";s:8:"Hrvatski";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/hr.zip";s:3:"iso";a:2:{i:1;s:2:"hr";i:2;s:3:"hrv";}s:7:"strings";a:1:{s:8:"continue";s:7:"Nastavi";}}s:5:"hu_HU";a:8:{s:8:"language";s:5:"hu_HU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 11:42:14";s:12:"english_name";s:9:"Hungarian";s:11:"native_name";s:6:"Magyar";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/hu_HU.zip";s:3:"iso";a:2:{i:1;s:2:"hu";i:2;s:3:"hun";}s:7:"strings";a:1:{s:8:"continue";s:7:"Tovább";}}s:5:"id_ID";a:8:{s:8:"language";s:5:"id_ID";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:10:"Indonesian";s:11:"native_name";s:16:"Bahasa Indonesia";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/id_ID.zip";s:3:"iso";a:2:{i:1;s:2:"id";i:2;s:3:"ind";}s:7:"strings";a:1:{s:8:"continue";s:9:"Lanjutkan";}}s:5:"is_IS";a:8:{s:8:"language";s:5:"is_IS";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:9:"Icelandic";s:11:"native_name";s:9:"Íslenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/is_IS.zip";s:3:"iso";a:2:{i:1;s:2:"is";i:2;s:3:"isl";}s:7:"strings";a:1:{s:8:"continue";s:6:"Áfram";}}s:5:"it_IT";a:8:{s:8:"language";s:5:"it_IT";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-27 10:13:39";s:12:"english_name";s:7:"Italian";s:11:"native_name";s:8:"Italiano";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/it_IT.zip";s:3:"iso";a:2:{i:1;s:2:"it";i:2;s:3:"ita";}s:7:"strings";a:1:{s:8:"continue";s:8:"Continua";}}s:2:"ja";a:8:{s:8:"language";s:2:"ja";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:8:"Japanese";s:11:"native_name";s:9:"日本語";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/ja.zip";s:3:"iso";a:1:{i:1;s:2:"ja";}s:7:"strings";a:1:{s:8:"continue";s:9:"続ける";}}s:5:"ko_KR";a:8:{s:8:"language";s:5:"ko_KR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-27 01:39:56";s:12:"english_name";s:6:"Korean";s:11:"native_name";s:9:"한국어";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ko_KR.zip";s:3:"iso";a:2:{i:1;s:2:"ko";i:2;s:3:"kor";}s:7:"strings";a:1:{s:8:"continue";s:6:"계속";}}s:5:"lt_LT";a:8:{s:8:"language";s:5:"lt_LT";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-04-23 15:23:08";s:12:"english_name";s:10:"Lithuanian";s:11:"native_name";s:15:"Lietuvių kalba";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/lt_LT.zip";s:3:"iso";a:2:{i:1;s:2:"lt";i:2;s:3:"lit";}s:7:"strings";a:1:{s:8:"continue";s:6:"Tęsti";}}s:5:"my_MM";a:8:{s:8:"language";s:5:"my_MM";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 15:57:42";s:12:"english_name";s:17:"Myanmar (Burmese)";s:11:"native_name";s:15:"ဗမာစာ";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/my_MM.zip";s:3:"iso";a:2:{i:1;s:2:"my";i:2;s:3:"mya";}s:7:"strings";a:1:{s:8:"continue";s:54:"ဆက်လက်လုပ်ေဆာင်ပါ။";}}s:5:"nb_NO";a:8:{s:8:"language";s:5:"nb_NO";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 22:03:44";s:12:"english_name";s:19:"Norwegian (Bokmål)";s:11:"native_name";s:13:"Norsk bokmål";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/nb_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nb";i:2;s:3:"nob";}s:7:"strings";a:1:{s:8:"continue";s:8:"Fortsett";}}s:5:"nl_NL";a:8:{s:8:"language";s:5:"nl_NL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-16 14:25:19";s:12:"english_name";s:5:"Dutch";s:11:"native_name";s:10:"Nederlands";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/nl_NL.zip";s:3:"iso";a:2:{i:1;s:2:"nl";i:2;s:3:"nld";}s:7:"strings";a:1:{s:8:"continue";s:8:"Doorgaan";}}s:5:"nn_NO";a:8:{s:8:"language";s:5:"nn_NO";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-08 07:10:14";s:12:"english_name";s:19:"Norwegian (Nynorsk)";s:11:"native_name";s:13:"Norsk nynorsk";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/nn_NO.zip";s:3:"iso";a:2:{i:1;s:2:"nn";i:2;s:3:"nno";}s:7:"strings";a:1:{s:8:"continue";s:9:"Hald fram";}}s:3:"oci";a:8:{s:8:"language";s:3:"oci";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-06-10 17:07:58";s:12:"english_name";s:7:"Occitan";s:11:"native_name";s:7:"Occitan";s:7:"package";s:61:"http://downloads.wordpress.org/translation/core/4.2.2/oci.zip";s:3:"iso";a:2:{i:1;s:2:"oc";i:2;s:3:"oci";}s:7:"strings";a:1:{s:8:"continue";s:9:"Contunhar";}}s:5:"pl_PL";a:8:{s:8:"language";s:5:"pl_PL";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-26 23:08:12";s:12:"english_name";s:6:"Polish";s:11:"native_name";s:6:"Polski";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pl_PL.zip";s:3:"iso";a:2:{i:1;s:2:"pl";i:2;s:3:"pol";}s:7:"strings";a:1:{s:8:"continue";s:9:"Kontynuuj";}}s:2:"ps";a:8:{s:8:"language";s:2:"ps";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-29 22:19:48";s:12:"english_name";s:6:"Pashto";s:11:"native_name";s:8:"پښتو";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.1.6/ps.zip";s:3:"iso";a:1:{i:1;s:2:"ps";}s:7:"strings";a:1:{s:8:"continue";s:8:"دوام";}}s:5:"pt_PT";a:8:{s:8:"language";s:5:"pt_PT";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-22 10:25:51";s:12:"english_name";s:21:"Portuguese (Portugal)";s:11:"native_name";s:10:"Português";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pt_PT.zip";s:3:"iso";a:1:{i:1;s:2:"pt";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"pt_BR";a:8:{s:8:"language";s:5:"pt_BR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:19:"Portuguese (Brazil)";s:11:"native_name";s:20:"Português do Brasil";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/pt_BR.zip";s:3:"iso";a:2:{i:1;s:2:"pt";i:2;s:3:"por";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuar";}}s:5:"ro_RO";a:8:{s:8:"language";s:5:"ro_RO";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-08 14:53:48";s:12:"english_name";s:8:"Romanian";s:11:"native_name";s:8:"Română";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ro_RO.zip";s:3:"iso";a:2:{i:1;s:2:"ro";i:2;s:3:"ron";}s:7:"strings";a:1:{s:8:"continue";s:9:"Continuă";}}s:5:"ru_RU";a:8:{s:8:"language";s:5:"ru_RU";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-26 00:43:12";s:12:"english_name";s:7:"Russian";s:11:"native_name";s:14:"Русский";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/ru_RU.zip";s:3:"iso";a:2:{i:1;s:2:"ru";i:2;s:3:"rus";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продолжить";}}s:5:"sk_SK";a:8:{s:8:"language";s:5:"sk_SK";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-26 09:29:23";s:12:"english_name";s:6:"Slovak";s:11:"native_name";s:11:"Slovenčina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.2/sk_SK.zip";s:3:"iso";a:2:{i:1;s:2:"sk";i:2;s:3:"slk";}s:7:"strings";a:1:{s:8:"continue";s:12:"Pokračovať";}}s:5:"sl_SI";a:8:{s:8:"language";s:5:"sl_SI";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 16:25:46";s:12:"english_name";s:9:"Slovenian";s:11:"native_name";s:13:"Slovenščina";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/sl_SI.zip";s:3:"iso";a:2:{i:1;s:2:"sl";i:2;s:3:"slv";}s:7:"strings";a:1:{s:8:"continue";s:10:"Nadaljujte";}}s:2:"sq";a:8:{s:8:"language";s:2:"sq";s:7:"version";s:5:"4.2.2";s:7:"updated";s:19:"2015-05-29 08:27:12";s:12:"english_name";s:8:"Albanian";s:11:"native_name";s:5:"Shqip";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.2/sq.zip";s:3:"iso";a:2:{i:1;s:2:"sq";i:2;s:3:"sqi";}s:7:"strings";a:1:{s:8:"continue";s:6:"Vazhdo";}}s:5:"sr_RS";a:8:{s:8:"language";s:5:"sr_RS";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:7:"Serbian";s:11:"native_name";s:23:"Српски језик";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/sr_RS.zip";s:3:"iso";a:2:{i:1;s:2:"sr";i:2;s:3:"srp";}s:7:"strings";a:1:{s:8:"continue";s:14:"Настави";}}s:5:"sv_SE";a:8:{s:8:"language";s:5:"sv_SE";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-12 00:55:52";s:12:"english_name";s:7:"Swedish";s:11:"native_name";s:7:"Svenska";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/sv_SE.zip";s:3:"iso";a:2:{i:1;s:2:"sv";i:2;s:3:"swe";}s:7:"strings";a:1:{s:8:"continue";s:9:"Fortsätt";}}s:2:"th";a:8:{s:8:"language";s:2:"th";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:4:"Thai";s:11:"native_name";s:9:"ไทย";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/th.zip";s:3:"iso";a:2:{i:1;s:2:"th";i:2;s:3:"tha";}s:7:"strings";a:1:{s:8:"continue";s:15:"ต่อไป";}}s:2:"tl";a:8:{s:8:"language";s:2:"tl";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-06 10:10:09";s:12:"english_name";s:7:"Tagalog";s:11:"native_name";s:7:"Tagalog";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/tl.zip";s:3:"iso";a:2:{i:1;s:2:"tl";i:2;s:3:"tgl";}s:7:"strings";a:1:{s:8:"continue";s:10:"Magpatuloy";}}s:5:"tr_TR";a:8:{s:8:"language";s:5:"tr_TR";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-24 13:30:08";s:12:"english_name";s:7:"Turkish";s:11:"native_name";s:8:"Türkçe";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/tr_TR.zip";s:3:"iso";a:2:{i:1;s:2:"tr";i:2;s:3:"tur";}s:7:"strings";a:1:{s:8:"continue";s:5:"Devam";}}s:5:"ug_CN";a:8:{s:8:"language";s:5:"ug_CN";s:7:"version";s:5:"4.1.6";s:7:"updated";s:19:"2015-03-26 16:45:38";s:12:"english_name";s:6:"Uighur";s:11:"native_name";s:9:"Uyƣurqə";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.1.6/ug_CN.zip";s:3:"iso";a:2:{i:1;s:2:"ug";i:2;s:3:"uig";}s:7:"strings";a:1:{s:8:"continue";s:26:"داۋاملاشتۇرۇش";}}s:2:"uk";a:8:{s:8:"language";s:2:"uk";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-05 10:51:50";s:12:"english_name";s:9:"Ukrainian";s:11:"native_name";s:20:"Українська";s:7:"package";s:60:"http://downloads.wordpress.org/translation/core/4.2.3/uk.zip";s:3:"iso";a:2:{i:1;s:2:"uk";i:2;s:3:"ukr";}s:7:"strings";a:1:{s:8:"continue";s:20:"Продовжити";}}s:5:"zh_TW";a:8:{s:8:"language";s:5:"zh_TW";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-23 13:52:20";s:12:"english_name";s:16:"Chinese (Taiwan)";s:11:"native_name";s:12:"繁體中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/zh_TW.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"繼續";}}s:5:"zh_CN";a:8:{s:8:"language";s:5:"zh_CN";s:7:"version";s:5:"4.2.3";s:7:"updated";s:19:"2015-07-04 19:52:42";s:12:"english_name";s:15:"Chinese (China)";s:11:"native_name";s:12:"简体中文";s:7:"package";s:63:"http://downloads.wordpress.org/translation/core/4.2.3/zh_CN.zip";s:3:"iso";a:2:{i:1;s:2:"zh";i:2;s:3:"zho";}s:7:"strings";a:1:{s:8:"continue";s:6:"继续";}}}', 'yes'),
(292, 'rewrite_rules', 'a:92:{s:11:"projects/?$";s:27:"index.php?post_type=project";s:41:"projects/feed/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:36:"projects/(feed|rdf|rss|rss2|atom)/?$";s:44:"index.php?post_type=project&feed=$matches[1]";s:28:"projects/page/([0-9]{1,})/?$";s:45:"index.php?post_type=project&paged=$matches[1]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:36:"projects/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:46:"projects/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:66:"projects/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:61:"projects/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:29:"projects/([^/]+)/trackback/?$";s:34:"index.php?project=$matches[1]&tb=1";s:49:"projects/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:44:"projects/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?project=$matches[1]&feed=$matches[2]";s:37:"projects/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&paged=$matches[2]";s:44:"projects/([^/]+)/comment-page-([0-9]{1,})/?$";s:47:"index.php?project=$matches[1]&cpage=$matches[2]";s:29:"projects/([^/]+)(/[0-9]+)?/?$";s:46:"index.php?project=$matches[1]&page=$matches[2]";s:25:"projects/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:35:"projects/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:55:"projects/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:50:"projects/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:53:"project-type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?project-categories=$matches[1]&feed=$matches[2]";s:48:"project-type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:57:"index.php?project-categories=$matches[1]&feed=$matches[2]";s:41:"project-type/([^/]+)/page/?([0-9]{1,})/?$";s:58:"index.php?project-categories=$matches[1]&paged=$matches[2]";s:23:"project-type/([^/]+)/?$";s:40:"index.php?project-categories=$matches[1]";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:38:"index.php?&page_id=5&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:20:"(.?.+?)(/[0-9]+)?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:20:"([^/]+)(/[0-9]+)?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";}', 'yes'),
(293, 'project-categories_children', 'a:0:{}', 'yes'),
(296, '_site_transient_timeout_theme_roots', '1438253865', 'yes'),
(297, '_site_transient_theme_roots', 'a:1:{s:10:"plcsystems";s:7:"/themes";}', 'yes'),
(298, '_site_transient_update_plugins', 'O:8:"stdClass":4:{s:12:"last_checked";i:1438252068;s:8:"response";a:1:{s:19:"akismet/akismet.php";O:8:"stdClass":6:{s:2:"id";s:2:"15";s:4:"slug";s:7:"akismet";s:6:"plugin";s:19:"akismet/akismet.php";s:11:"new_version";s:5:"3.1.3";s:3:"url";s:38:"https://wordpress.org/plugins/akismet/";s:7:"package";s:55:"http://downloads.wordpress.org/plugin/akismet.3.1.3.zip";}}s:12:"translations";a:0:{}s:9:"no_update";a:2:{s:30:"advanced-custom-fields/acf.php";O:8:"stdClass":6:{s:2:"id";s:5:"21367";s:4:"slug";s:22:"advanced-custom-fields";s:6:"plugin";s:30:"advanced-custom-fields/acf.php";s:11:"new_version";s:5:"4.4.2";s:3:"url";s:53:"https://wordpress.org/plugins/advanced-custom-fields/";s:7:"package";s:64:"http://downloads.wordpress.org/plugin/advanced-custom-fields.zip";}s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";O:8:"stdClass":6:{s:2:"id";s:5:"47574";s:4:"slug";s:40:"gravity-forms-placeholder-support-add-on";s:6:"plugin";s:74:"gravity-forms-placeholder-support-add-on/gravityform-placeholder-addon.php";s:11:"new_version";s:5:"1.1.0";s:3:"url";s:71:"https://wordpress.org/plugins/gravity-forms-placeholder-support-add-on/";s:7:"package";s:82:"http://downloads.wordpress.org/plugin/gravity-forms-placeholder-support-add-on.zip";}}}', 'yes'),
(299, '_transient_timeout_gform_update_info', '1438341752', 'no'),
(300, '_transient_gform_update_info', 'a:5:{s:7:"headers";a:6:{s:4:"date";s:29:"Thu, 30 Jul 2015 11:22:36 GMT";s:6:"server";s:12:"Apache/2.4.7";s:12:"x-powered-by";s:21:"PHP/5.5.9-1ubuntu4.11";s:14:"content-length";s:2:"13";s:10:"connection";s:5:"close";s:12:"content-type";s:9:"text/html";}s:4:"body";s:13:"0||1.7.9||||0";s:8:"response";a:2:{s:4:"code";i:200;s:7:"message";s:2:"OK";}s:7:"cookies";a:0:{}s:8:"filename";N;}', 'no');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=245 ;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 2, '_wp_trash_meta_status', 'publish'),
(3, 2, '_wp_trash_meta_time', '1436692009'),
(4, 5, '_edit_last', '1'),
(5, 5, '_wp_page_template', 'front-page.php'),
(6, 5, '_edit_lock', '1438262615:1'),
(7, 7, '_edit_last', '1'),
(8, 7, '_edit_lock', '1438174201:1'),
(9, 7, '_wp_page_template', 'page-internal.php'),
(10, 9, '_edit_last', '1'),
(11, 9, '_edit_lock', '1438175542:1'),
(12, 9, '_wp_page_template', 'page-internal.php'),
(13, 11, '_edit_last', '1'),
(14, 11, '_wp_page_template', 'contact-template.php'),
(15, 11, '_edit_lock', '1438269311:1'),
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
(78, 25, '_edit_lock', '1438011170:1'),
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
(102, 32, '_edit_lock', '1438176883:1'),
(103, 1, '_edit_lock', '1438089535:1'),
(104, 33, '_edit_last', '1'),
(105, 33, '_edit_lock', '1438086717:1'),
(106, 33, '_wp_page_template', 'page.php'),
(107, 33, '_wp_trash_meta_status', 'publish'),
(108, 33, '_wp_trash_meta_time', '1438086920'),
(109, 1, '_wp_trash_meta_status', 'publish'),
(110, 1, '_wp_trash_meta_time', '1438089679'),
(111, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:"1";}'),
(112, 36, '_edit_last', '1'),
(113, 36, '_edit_lock', '1438176102:1'),
(115, 37, '_is_featured_news', '0'),
(116, 37, '__is_featured_news', 'field_55b76ee4e4221'),
(117, 36, '_is_featured_news', '0'),
(118, 36, '__is_featured_news', 'field_55b76ee4e4221'),
(119, 38, '_wp_attached_file', '2015/07/post-1.jpg'),
(120, 38, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:450;s:6:"height";i:320;s:4:"file";s:18:"2015/07/post-1.jpg";s:5:"sizes";a:3:{s:9:"thumbnail";a:4:{s:4:"file";s:18:"post-1-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";}s:6:"medium";a:4:{s:4:"file";s:18:"post-1-300x213.jpg";s:5:"width";i:300;s:6:"height";i:213;s:9:"mime-type";s:10:"image/jpeg";}s:12:"industryicon";a:4:{s:4:"file";s:16:"post-1-64x64.jpg";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:10:"image/jpeg";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(121, 36, '_thumbnail_id', '38'),
(123, 39, '_edit_last', '1'),
(124, 39, '_edit_lock', '1438175511:1'),
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
(153, 46, '_edit_lock', '1438174345:1'),
(154, 46, '_wp_page_template', 'page-fullwidth.php'),
(155, 48, '_edit_last', '1'),
(156, 48, '_edit_lock', '1438175484:1'),
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
(169, 56, '_edit_lock', '1438176729:1'),
(170, 58, '_edit_last', '1'),
(171, 58, '_edit_lock', '1438176128:1'),
(172, 60, '_edit_last', '1'),
(173, 60, '_edit_lock', '1438176139:1'),
(174, 62, '_edit_last', '1'),
(175, 62, '_edit_lock', '1438176149:1'),
(176, 64, '_edit_last', '1'),
(177, 64, '_edit_lock', '1438176515:1'),
(178, 66, '_edit_last', '1'),
(179, 66, 'field_55b8d6cc3182c', 'a:10:{s:3:"key";s:19:"field_55b8d6cc3182c";s:5:"label";s:8:"Projects";s:4:"name";s:14:"_projects_feed";s:4:"type";s:10:"true_false";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:7:"message";s:0:"";s:13:"default_value";s:1:"0";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:2:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(181, 66, 'position', 'normal'),
(182, 66, 'layout', 'no_box'),
(183, 66, 'hide_on_screen', ''),
(184, 66, '_edit_lock', '1438177412:1'),
(186, 66, 'rule', 'a:5:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:4:"post";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(187, 67, '_wp_attached_file', '2015/07/banner1.png'),
(188, 67, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1210;s:6:"height";i:297;s:4:"file";s:19:"2015/07/banner1.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner1-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"banner1-300x74.png";s:5:"width";i:300;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"banner1-1024x251.png";s:5:"width";i:1024;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:17:"banner1-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(189, 68, '_wp_attached_file', '2015/07/banner2.png'),
(190, 68, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1210;s:6:"height";i:297;s:4:"file";s:19:"2015/07/banner2.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner2-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"banner2-300x74.png";s:5:"width";i:300;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"banner2-1024x251.png";s:5:"width";i:1024;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:17:"banner2-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(191, 69, '_wp_attached_file', '2015/07/banner3.png'),
(192, 69, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1210;s:6:"height";i:297;s:4:"file";s:19:"2015/07/banner3.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner3-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"banner3-300x74.png";s:5:"width";i:300;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"banner3-1024x251.png";s:5:"width";i:1024;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:17:"banner3-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(193, 70, '_wp_attached_file', '2015/07/banner4.png'),
(194, 70, '_wp_attachment_metadata', 'a:5:{s:5:"width";i:1210;s:6:"height";i:297;s:4:"file";s:19:"2015/07/banner4.png";s:5:"sizes";a:4:{s:9:"thumbnail";a:4:{s:4:"file";s:19:"banner4-150x150.png";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:9:"image/png";}s:6:"medium";a:4:{s:4:"file";s:18:"banner4-300x74.png";s:5:"width";i:300;s:6:"height";i:74;s:9:"mime-type";s:9:"image/png";}s:5:"large";a:4:{s:4:"file";s:20:"banner4-1024x251.png";s:5:"width";i:1024;s:6:"height";i:251;s:9:"mime-type";s:9:"image/png";}s:12:"industryicon";a:4:{s:4:"file";s:17:"banner4-64x64.png";s:5:"width";i:64;s:6:"height";i:64;s:9:"mime-type";s:9:"image/png";}}s:10:"image_meta";a:11:{s:8:"aperture";i:0;s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";i:0;s:9:"copyright";s:0:"";s:12:"focal_length";i:0;s:3:"iso";i:0;s:13:"shutter_speed";i:0;s:5:"title";s:0:"";s:11:"orientation";i:0;}}'),
(195, 71, '_edit_last', '1'),
(197, 71, 'position', 'normal'),
(198, 71, 'layout', 'no_box'),
(199, 71, 'hide_on_screen', ''),
(200, 71, '_edit_lock', '1438268466:1'),
(201, 71, 'field_55ba39e70c352', 'a:11:{s:3:"key";s:19:"field_55ba39e70c352";s:5:"label";s:7:"Address";s:4:"name";s:12:"_plc_address";s:4:"type";s:7:"wysiwyg";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:13:"default_value";s:0:"";s:7:"toolbar";s:4:"full";s:12:"media_upload";s:3:"yes";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:0;}'),
(202, 71, 'field_55ba3a1b0c353', 'a:12:{s:3:"key";s:19:"field_55ba3a1b0c353";s:5:"label";s:10:"Google Map";s:4:"name";s:15:"_plc_google_map";s:4:"type";s:10:"google_map";s:12:"instructions";s:0:"";s:8:"required";s:1:"0";s:10:"center_lat";s:0:"";s:10:"center_lng";s:0:"";s:4:"zoom";s:0:"";s:6:"height";s:0:"";s:17:"conditional_logic";a:3:{s:6:"status";s:1:"0";s:5:"rules";a:1:{i:0;a:3:{s:5:"field";s:4:"null";s:8:"operator";s:2:"==";s:5:"value";s:0:"";}}s:8:"allorany";s:3:"all";}s:8:"order_no";i:1;}'),
(204, 71, 'rule', 'a:5:{s:5:"param";s:4:"page";s:8:"operator";s:2:"==";s:5:"value";s:2:"11";s:8:"order_no";i:0;s:8:"group_no";i:0;}'),
(205, 11, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(206, 11, '__plc_address', 'field_55ba39e70c352'),
(207, 11, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(208, 11, '__plc_google_map', 'field_55ba3a1b0c353'),
(209, 72, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(210, 72, '__plc_address', 'field_55ba39e70c352'),
(211, 72, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(212, 72, '__plc_google_map', 'field_55ba3a1b0c353'),
(213, 72, 'socials_icons', ''),
(214, 72, '_socials_icons', 'field_55b64bc245d41'),
(215, 73, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(216, 73, '__plc_address', 'field_55ba39e70c352'),
(217, 73, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(218, 73, '__plc_google_map', 'field_55ba3a1b0c353'),
(219, 73, 'socials_icons', ''),
(220, 73, '_socials_icons', 'field_55b64bc245d41'),
(221, 74, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(222, 74, '__plc_address', 'field_55ba39e70c352'),
(223, 74, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(224, 74, '__plc_google_map', 'field_55ba3a1b0c353'),
(225, 74, 'socials_icons', ''),
(226, 74, '_socials_icons', 'field_55b64bc245d41'),
(227, 75, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(228, 75, '__plc_address', 'field_55ba39e70c352'),
(229, 75, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(230, 75, '__plc_google_map', 'field_55ba3a1b0c353'),
(231, 75, 'socials_icons', ''),
(232, 75, '_socials_icons', 'field_55b64bc245d41'),
(233, 76, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(234, 76, '__plc_address', 'field_55ba39e70c352'),
(235, 76, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(236, 76, '__plc_google_map', 'field_55ba3a1b0c353'),
(237, 76, 'socials_icons', ''),
(238, 76, '_socials_icons', 'field_55b64bc245d41'),
(239, 77, '_plc_address', 'Address: 9896 Academy Street, Manchester, NH 03102\r\n\r\nPhone: 00-00-0000\r\n\r\nEmail: <a href="mailto:info@sample.com">info@sample.com</a>'),
(240, 77, '__plc_address', 'field_55ba39e70c352'),
(241, 77, '_plc_google_map', 'a:3:{s:7:"address";s:34:"Cebu, Central Visayas, Philippines";s:3:"lat";s:10:"10.3156992";s:3:"lng";s:18:"123.88543660000005";}'),
(242, 77, '__plc_google_map', 'field_55ba3a1b0c353'),
(243, 77, 'socials_icons', ''),
(244, 77, '_socials_icons', 'field_55b64bc245d41');

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=78 ;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2015-07-12 08:04:36', '2015-07-12 08:04:36', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world', '', '', '2015-07-28 13:21:19', '2015-07-28 13:21:19', '', 0, 'http://localhost/plcsystems/?p=1', 0, 'post', '', 1),
(2, 1, '2015-07-12 08:04:36', '2015-07-12 08:04:36', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/plcsystems/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'trash', 'open', 'open', '', 'sample-page', '', '', '2015-07-12 09:06:49', '2015-07-12 09:06:49', '', 0, 'http://localhost/plcsystems/?page_id=2', 0, 'page', '', 0),
(4, 1, '2015-07-12 09:06:49', '2015-07-12 09:06:49', 'This is an example page. It''s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:\n\n<blockquote>Hi there! I''m a bike messenger by day, aspiring actor by night, and this is my blog. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin'' caught in the rain.)</blockquote>\n\n...or something like this:\n\n<blockquote>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</blockquote>\n\nAs a new WordPress user, you should go to <a href="http://localhost/plcsystems/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!', 'Sample Page', '', 'inherit', 'open', 'open', '', '2-revision-v1', '', '', '2015-07-12 09:06:49', '2015-07-12 09:06:49', '', 2, 'http://localhost/plcsystems/2015/07/12/2-revision-v1/', 0, 'revision', '', 0),
(5, 1, '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 'Home', '', 'publish', 'open', 'open', '', 'home', '', '', '2015-07-28 14:33:13', '2015-07-28 14:33:13', '', 0, 'http://localhost/plcsystems/?page_id=5', 0, 'page', '', 0),
(6, 1, '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-12 09:07:08', '2015-07-12 09:07:08', '', 5, 'http://localhost/plcsystems/2015/07/12/5-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2015-07-12 09:07:32', '2015-07-12 09:07:32', 'Our Company text. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. Our Company text.', 'Our Company', '', 'publish', 'open', 'open', '', 'our-company', '', '', '2015-07-29 12:52:20', '2015-07-29 12:52:20', '', 0, 'http://localhost/plcsystems/?page_id=7', 0, 'page', '', 0),
(8, 1, '2015-07-12 09:07:32', '2015-07-12 09:07:32', '', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-12 09:07:32', '2015-07-12 09:07:32', '', 7, 'http://localhost/plcsystems/2015/07/12/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2015-07-12 09:08:29', '2015-07-12 09:08:29', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Product & Services', '', 'publish', 'open', 'open', '', 'product-services', '', '', '2015-07-28 15:17:57', '2015-07-28 15:17:57', '', 0, 'http://localhost/plcsystems/?page_id=9', 0, 'page', '', 0),
(10, 1, '2015-07-12 09:08:29', '2015-07-12 09:08:29', '', 'Product & Services', '', 'inherit', 'open', 'open', '', '9-revision-v1', '', '', '2015-07-12 09:08:29', '2015-07-12 09:08:29', '', 9, 'http://localhost/plcsystems/2015/07/12/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2015-07-12 09:10:34', '2015-07-12 09:10:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact Us', '', 'publish', 'closed', 'closed', '', 'contact-us', '', '', '2015-07-30 15:14:34', '2015-07-30 15:14:34', '', 0, 'http://localhost/plcsystems/?page_id=11', 0, 'page', '', 0),
(12, 1, '2015-07-12 09:10:34', '2015-07-12 09:10:34', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-12 09:10:34', '2015-07-12 09:10:34', '', 11, 'http://localhost/plcsystems/2015/07/12/11-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2015-07-19 05:25:32', '2015-07-19 05:25:32', ' ', '', '', 'publish', 'open', 'open', '', '14', '', '', '2015-07-19 05:26:10', '2015-07-19 05:26:10', '', 0, 'http://localhost/plcsystems/?p=14', 4, 'nav_menu_item', '', 0),
(15, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '15', '', '', '2015-07-19 05:26:10', '2015-07-19 05:26:10', '', 0, 'http://localhost/plcsystems/?p=15', 3, 'nav_menu_item', '', 0),
(16, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '16', '', '', '2015-07-19 05:26:10', '2015-07-19 05:26:10', '', 0, 'http://localhost/plcsystems/?p=16', 2, 'nav_menu_item', '', 0),
(17, 1, '2015-07-19 05:25:31', '2015-07-19 05:25:31', ' ', '', '', 'publish', 'open', 'open', '', '17', '', '', '2015-07-19 05:26:10', '2015-07-19 05:26:10', '', 0, 'http://localhost/plcsystems/?p=17', 1, 'nav_menu_item', '', 0),
(18, 1, '2015-07-19 05:52:40', '2015-07-19 05:52:40', '', 'banner', '', 'inherit', 'open', 'open', '', 'banner', '', '', '2015-07-19 05:52:40', '2015-07-19 05:52:40', '', 0, 'http://localhost/plcsystems/wp-content/uploads/2015/07/banner.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2015-07-26 04:44:31', '2015-07-26 04:44:31', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Our Company', '', 'inherit', 'open', 'open', '', '7-autosave-v1', '', '', '2015-07-26 04:44:31', '2015-07-26 04:44:31', '', 7, 'http://localhost/plcsystems/2015/07/26/7-autosave-v1/', 0, 'revision', '', 0),
(20, 1, '2015-07-26 04:44:34', '2015-07-26 04:44:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Our Company', '', 'inherit', 'open', 'open', '', '7-revision-v1', '', '', '2015-07-26 04:44:34', '2015-07-26 04:44:34', '', 7, 'http://localhost/plcsystems/2015/07/26/7-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2015-07-26 14:31:37', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-26 14:31:37', '0000-00-00 00:00:00', '', 0, 'http://localhost/rushwebplcsystems/?p=21', 0, 'post', '', 0),
(22, 1, '2015-07-27 15:03:02', '2015-07-27 15:03:02', '', 'Homepage', '', 'publish', 'closed', 'closed', '', 'acf_homepage', '', '', '2015-07-28 14:32:19', '2015-07-28 14:32:19', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=22', 0, 'acf', '', 0),
(23, 1, '2015-07-27 15:13:34', '2015-07-27 15:13:34', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:13:34', '2015-07-27 15:13:34', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(24, 1, '2015-07-27 15:17:26', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-27 15:17:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&p=24', 0, 'acf', '', 0),
(25, 1, '2015-07-27 15:19:00', '2015-07-27 15:19:00', '', 'Theme Option', '', 'publish', 'closed', 'closed', '', 'acf_theme-option', '', '', '2015-07-27 15:24:30', '2015-07-27 15:24:30', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=25', 0, 'acf', '', 0),
(26, 1, '2015-07-27 15:21:59', '2015-07-27 15:21:59', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:21:59', '2015-07-27 15:21:59', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(27, 1, '2015-07-27 15:30:04', '2015-07-27 15:30:04', '', 'Home', '', 'inherit', 'open', 'open', '', '5-revision-v1', '', '', '2015-07-27 15:30:04', '2015-07-27 15:30:04', '', 5, 'http://localhost/rushwebplcsystems/5-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2015-07-28 11:57:21', '2015-07-28 11:57:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 1', '', 'trash', 'closed', 'closed', '', 'sample-news-1', '', '', '2015-07-29 13:14:22', '2015-07-29 13:14:22', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=28', 0, 'news', '', 0),
(29, 1, '2015-07-28 11:57:21', '2015-07-28 11:57:21', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 1', '', 'inherit', 'open', 'open', '', '28-revision-v1', '', '', '2015-07-28 11:57:21', '2015-07-28 11:57:21', '', 28, 'http://localhost/rushwebplcsystems/28-revision-v1/', 0, 'revision', '', 0),
(30, 1, '2015-07-28 11:57:36', '2015-07-28 11:57:36', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 2', '', 'trash', 'closed', 'closed', '', 'sample-news-2', '', '', '2015-07-29 13:14:22', '2015-07-29 13:14:22', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=30', 0, 'news', '', 0),
(31, 1, '2015-07-28 11:57:36', '2015-07-28 11:57:36', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc', 'Sample News 2', '', 'inherit', 'open', 'open', '', '30-revision-v1', '', '', '2015-07-28 11:57:36', '2015-07-28 11:57:36', '', 30, 'http://localhost/rushwebplcsystems/30-revision-v1/', 0, 'revision', '', 0),
(32, 1, '2015-07-28 12:01:22', '2015-07-28 12:01:22', '', 'News Area', '', 'publish', 'closed', 'closed', '', 'acf_news-area', '', '', '2015-07-28 13:45:36', '2015-07-28 13:45:36', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=32', 0, 'acf', '', 0),
(33, 1, '2015-07-28 12:34:17', '2015-07-28 12:34:17', '', 'News', '', 'trash', 'open', 'open', '', 'news', '', '', '2015-07-28 12:35:20', '2015-07-28 12:35:20', '', 0, 'http://localhost/rushwebplcsystems/?page_id=33', 0, 'page', '', 0),
(34, 1, '2015-07-28 12:34:17', '2015-07-28 12:34:17', '', 'News', '', 'inherit', 'open', 'open', '', '33-revision-v1', '', '', '2015-07-28 12:34:17', '2015-07-28 12:34:17', '', 33, 'http://localhost/rushwebplcsystems/33-revision-v1/', 0, 'revision', '', 0),
(35, 1, '2015-07-28 13:21:19', '2015-07-28 13:21:19', 'Welcome to WordPress. This is your first post. Edit or delete it, then start blogging!', 'Hello world!', '', 'inherit', 'open', 'open', '', '1-revision-v1', '', '', '2015-07-28 13:21:19', '2015-07-28 13:21:19', '', 1, 'http://localhost/rushwebplcsystems/1-revision-v1/', 0, 'revision', '', 0),
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
(46, 1, '2015-07-29 12:54:39', '2015-07-29 12:54:39', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 1', '', 'publish', 'open', 'open', '', 'sample-content-1', '', '', '2015-07-29 12:54:46', '2015-07-29 12:54:46', '', 0, 'http://localhost/rushwebplcsystems/?page_id=46', 0, 'page', '', 0),
(47, 1, '2015-07-29 12:54:40', '2015-07-29 12:54:40', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 1', '', 'inherit', 'open', 'open', '', '46-revision-v1', '', '', '2015-07-29 12:54:40', '2015-07-29 12:54:40', '', 46, 'http://localhost/rushwebplcsystems/46-revision-v1/', 0, 'revision', '', 0),
(48, 1, '2015-07-29 12:55:17', '2015-07-29 12:55:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 2', '', 'publish', 'open', 'open', '', 'sample-content-2', '', '', '2015-07-29 12:55:17', '2015-07-29 12:55:17', '', 0, 'http://localhost/rushwebplcsystems/?page_id=48', 0, 'page', '', 0),
(49, 1, '2015-07-29 12:55:17', '2015-07-29 12:55:17', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Content 2', '', 'inherit', 'open', 'open', '', '48-revision-v1', '', '', '2015-07-29 12:55:17', '2015-07-29 12:55:17', '', 48, 'http://localhost/rushwebplcsystems/48-revision-v1/', 0, 'revision', '', 0),
(50, 1, '2015-07-29 13:13:53', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-29 13:13:53', '0000-00-00 00:00:00', '', 0, 'http://localhost/rushwebplcsystems/?p=50', 0, 'post', '', 0),
(51, 1, '2015-07-29 13:14:58', '2015-07-29 13:14:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'trash', 'closed', 'closed', '', 'sample-project-1', '', '', '2015-07-29 13:15:56', '2015-07-29 13:15:56', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=51', 0, 'news', '', 0),
(52, 1, '2015-07-29 13:14:58', '2015-07-29 13:14:58', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '51-revision-v1', '', '', '2015-07-29 13:14:58', '2015-07-29 13:14:58', '', 51, 'http://localhost/rushwebplcsystems/51-revision-v1/', 0, 'revision', '', 0),
(53, 1, '2015-07-29 13:15:51', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2015-07-29 13:15:51', '0000-00-00 00:00:00', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&p=53', 0, 'news', '', 0),
(54, 1, '2015-07-29 13:16:11', '2015-07-29 13:16:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'publish', 'closed', 'closed', '', 'sample-project-1-2', '', '', '2015-07-29 13:16:11', '2015-07-29 13:16:11', '', 0, 'http://localhost/rushwebplcsystems/?post_type=news&#038;p=54', 0, 'news', '', 0),
(55, 1, '2015-07-29 13:16:11', '2015-07-29 13:16:11', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '54-revision-v1', '', '', '2015-07-29 13:16:11', '2015-07-29 13:16:11', '', 54, 'http://localhost/rushwebplcsystems/54-revision-v1/', 0, 'revision', '', 0),
(56, 1, '2015-07-29 13:17:46', '2015-07-29 13:17:46', 'Sample Project 1', 'Sample Project 1', '', 'publish', 'closed', 'closed', '', 'sample-project-1', '', '', '2015-07-29 13:21:26', '2015-07-29 13:21:26', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=56', 0, 'project', '', 0),
(57, 1, '2015-07-29 13:17:46', '2015-07-29 13:17:46', 'Sample Project 1', 'Sample Project 1', '', 'inherit', 'open', 'open', '', '56-revision-v1', '', '', '2015-07-29 13:17:46', '2015-07-29 13:17:46', '', 56, 'http://localhost/rushwebplcsystems/56-revision-v1/', 0, 'revision', '', 0),
(58, 1, '2015-07-29 13:24:30', '2015-07-29 13:24:30', 'Sample Project 2', 'Sample Project 2', '', 'publish', 'closed', 'closed', '', 'sample-project-2', '', '', '2015-07-29 13:24:30', '2015-07-29 13:24:30', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=58', 0, 'project', '', 0),
(59, 1, '2015-07-29 13:24:30', '2015-07-29 13:24:30', 'Sample Project 2', 'Sample Project 2', '', 'inherit', 'open', 'open', '', '58-revision-v1', '', '', '2015-07-29 13:24:30', '2015-07-29 13:24:30', '', 58, 'http://localhost/rushwebplcsystems/58-revision-v1/', 0, 'revision', '', 0),
(60, 1, '2015-07-29 13:24:41', '2015-07-29 13:24:41', 'Sample Project 3', 'Sample Project 3', '', 'publish', 'closed', 'closed', '', 'sample-project-3', '', '', '2015-07-29 13:24:41', '2015-07-29 13:24:41', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=60', 0, 'project', '', 0),
(61, 1, '2015-07-29 13:24:41', '2015-07-29 13:24:41', 'Sample Project 3', 'Sample Project 3', '', 'inherit', 'open', 'open', '', '60-revision-v1', '', '', '2015-07-29 13:24:41', '2015-07-29 13:24:41', '', 60, 'http://localhost/rushwebplcsystems/60-revision-v1/', 0, 'revision', '', 0),
(62, 1, '2015-07-29 13:24:51', '2015-07-29 13:24:51', 'Sample Project 4', 'Sample Project 4', '', 'publish', 'closed', 'closed', '', 'sample-project-4', '', '', '2015-07-29 13:24:51', '2015-07-29 13:24:51', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=62', 0, 'project', '', 0),
(63, 1, '2015-07-29 13:24:51', '2015-07-29 13:24:51', 'Sample Project 4', 'Sample Project 4', '', 'inherit', 'open', 'open', '', '62-revision-v1', '', '', '2015-07-29 13:24:51', '2015-07-29 13:24:51', '', 62, 'http://localhost/rushwebplcsystems/62-revision-v1/', 0, 'revision', '', 0),
(64, 1, '2015-07-29 13:25:03', '2015-07-29 13:25:03', 'Sample Project 5', 'Sample Project 5', '', 'publish', 'closed', 'closed', '', 'sample-project-5', '', '', '2015-07-29 13:25:03', '2015-07-29 13:25:03', '', 0, 'http://localhost/rushwebplcsystems/?post_type=project&#038;p=64', 0, 'project', '', 0),
(65, 1, '2015-07-29 13:25:03', '2015-07-29 13:25:03', 'Sample Project 5', 'Sample Project 5', '', 'inherit', 'open', 'open', '', '64-revision-v1', '', '', '2015-07-29 13:25:03', '2015-07-29 13:25:03', '', 64, 'http://localhost/rushwebplcsystems/64-revision-v1/', 0, 'revision', '', 0),
(66, 1, '2015-07-29 13:36:14', '2015-07-29 13:36:14', '', 'Projects Feed', '', 'publish', 'closed', 'closed', '', 'acf_projects-feed', '', '', '2015-07-29 13:37:15', '2015-07-29 13:37:15', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=66', 0, 'acf', '', 0),
(67, 1, '2015-07-30 11:23:34', '2015-07-30 11:23:34', '', 'banner1', '', 'inherit', 'open', 'open', '', 'banner1', '', '', '2015-07-30 11:23:34', '2015-07-30 11:23:34', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/banner1.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2015-07-30 11:25:59', '2015-07-30 11:25:59', '', 'banner2', '', 'inherit', 'open', 'open', '', 'banner2', '', '', '2015-07-30 11:25:59', '2015-07-30 11:25:59', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/banner2.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2015-07-30 11:26:50', '2015-07-30 11:26:50', '', 'banner3', '', 'inherit', 'open', 'open', '', 'banner3', '', '', '2015-07-30 11:26:50', '2015-07-30 11:26:50', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/banner3.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2015-07-30 11:27:10', '2015-07-30 11:27:10', '', 'banner4', '', 'inherit', 'open', 'open', '', 'banner4', '', '', '2015-07-30 11:27:10', '2015-07-30 11:27:10', '', 0, 'http://localhost/rushwebplcsystems/wp-content/uploads/2015/07/banner4.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2015-07-30 14:51:15', '2015-07-30 14:51:15', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'acf_contact', '', '', '2015-07-30 14:53:43', '2015-07-30 14:53:43', '', 0, 'http://localhost/rushwebplcsystems/?post_type=acf&#038;p=71', 0, 'acf', '', 0),
(72, 1, '2015-07-30 15:00:14', '2015-07-30 15:00:14', 'Sample text for Contact Us!', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:00:14', '2015-07-30 15:00:14', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2015-07-30 15:00:40', '2015-07-30 15:00:40', '', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:00:40', '2015-07-30 15:00:40', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2015-07-30 15:00:52', '2015-07-30 15:00:52', 'Sample text for Contact Us!', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:00:52', '2015-07-30 15:00:52', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(75, 1, '2015-07-30 15:07:37', '2015-07-30 15:07:37', 'Sample text for Contact Us!', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:07:37', '2015-07-30 15:07:37', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(76, 1, '2015-07-30 15:14:18', '2015-07-30 15:14:18', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.\r\n\r\nLorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:14:18', '2015-07-30 15:14:18', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0),
(77, 1, '2015-07-30 15:14:34', '2015-07-30 15:14:34', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Contact Us', '', 'inherit', 'open', 'open', '', '11-revision-v1', '', '', '2015-07-30 15:14:34', '2015-07-30 15:14:34', '', 11, 'http://localhost/rushwebplcsystems/11-revision-v1/', 0, 'revision', '', 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main menu', 'main-menu', 0),
(3, 'Sample Category', 'sample-category', 0);

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
(1, 1, 0),
(14, 2, 0),
(15, 2, 0),
(16, 2, 0),
(17, 2, 0),
(28, 3, 0),
(30, 3, 0),
(36, 1, 0),
(39, 1, 0);

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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 2),
(2, 2, 'nav_menu', '', 0, 4),
(3, 3, 'news-categories', '', 0, 0);

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
(14, 1, 'session_tokens', 'a:4:{s:64:"de3f0b10caac10940f5bb324a57856f00d6f6a19729a40ef487a1daa431482bd";a:4:{s:10:"expiration";i:1438181534;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36";s:5:"login";i:1438008734;}s:64:"87afdbc736659a2ee25ea58fe6a922b9dbbac72c55163a6b172ab2204bec4b52";a:4:{s:10:"expiration";i:1438256123;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36";s:5:"login";i:1438083323;}s:64:"c4960df9163329cb51fd3fef60c2069287eec95d1c3411129559bf48e3b8ee70";a:4:{s:10:"expiration";i:1438340052;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36";s:5:"login";i:1438167252;}s:64:"731c170a34c807dbe7ef68cdf72b0e94ed4aa10d1b15547e78056dd11b24d69e";a:4:{s:10:"expiration";i:1439382360;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:102:"Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/44.0.2403.107 Safari/537.36";s:5:"login";i:1438172760;}}'),
(15, 1, 'wp_dashboard_quick_press_last_post_id', '21'),
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
