-- phpMyAdmin SQL Dump
-- version 4.9.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: May 27, 2020 at 01:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sageexam`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-05-24 20:29:41', '2020-05-24 19:29:41', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, 'post-trashed', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(3, 'siteurl', 'http://www.sage-exam.test:8888/wp', 'yes'),
(4, 'home', 'http://www.sage-exam.test:8888/wp', 'yes'),
(5, 'blogname', 'sage-exam', 'yes'),
(6, 'blogdescription', 'Just another WordPress site', 'yes'),
(7, 'users_can_register', '0', 'yes'),
(8, 'admin_email', 'nathanaellloyd@live.com', 'yes'),
(9, 'start_of_week', '1', 'yes'),
(10, 'use_balanceTags', '0', 'yes'),
(11, 'use_smilies', '1', 'yes'),
(12, 'require_name_email', '1', 'yes'),
(13, 'comments_notify', '1', 'yes'),
(14, 'posts_per_rss', '10', 'yes'),
(15, 'rss_use_excerpt', '0', 'yes'),
(16, 'mailserver_url', 'mail.example.com', 'yes'),
(17, 'mailserver_login', 'login@example.com', 'yes'),
(18, 'mailserver_pass', 'password', 'yes'),
(19, 'mailserver_port', '110', 'yes'),
(20, 'default_category', '1', 'yes'),
(21, 'default_comment_status', 'open', 'yes'),
(22, 'default_ping_status', 'open', 'yes'),
(23, 'default_pingback_flag', '0', 'yes'),
(24, 'posts_per_page', '10', 'yes'),
(25, 'date_format', 'j F Y', 'yes'),
(26, 'time_format', 'g:i a', 'yes'),
(27, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(28, 'comment_moderation', '0', 'yes'),
(29, 'moderation_notify', '1', 'yes'),
(30, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(31, 'rewrite_rules', 'a:92:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(32, 'hack_file', '0', 'yes'),
(33, 'blog_charset', 'UTF-8', 'yes'),
(34, 'moderation_keys', '', 'no'),
(35, 'active_plugins', 'a:2:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";}', 'yes'),
(36, 'category_base', '', 'yes'),
(37, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(38, 'comment_max_links', '2', 'yes'),
(39, 'gmt_offset', '0', 'yes'),
(40, 'default_email_category', '1', 'yes'),
(41, 'recently_edited', '', 'no'),
(42, 'template', 'music-exam', 'yes'),
(43, 'stylesheet', 'music-exam', 'yes'),
(44, 'comment_whitelist', '1', 'yes'),
(45, 'blacklist_keys', '', 'no'),
(46, 'comment_registration', '0', 'yes'),
(47, 'html_type', 'text/html', 'yes'),
(48, 'use_trackback', '0', 'yes'),
(49, 'default_role', 'subscriber', 'yes'),
(50, 'db_version', '47018', 'yes'),
(51, 'uploads_use_yearmonth_folders', '1', 'yes'),
(52, 'upload_path', '', 'yes'),
(53, 'blog_public', '1', 'yes'),
(54, 'default_link_category', '2', 'yes'),
(55, 'show_on_front', 'page', 'yes'),
(56, 'tag_base', '', 'yes'),
(57, 'show_avatars', '1', 'yes'),
(58, 'avatar_rating', 'G', 'yes'),
(59, 'upload_url_path', '', 'yes'),
(60, 'thumbnail_size_w', '150', 'yes'),
(61, 'thumbnail_size_h', '150', 'yes'),
(62, 'thumbnail_crop', '1', 'yes'),
(63, 'medium_size_w', '300', 'yes'),
(64, 'medium_size_h', '300', 'yes'),
(65, 'avatar_default', 'mystery', 'yes'),
(66, 'large_size_w', '1024', 'yes'),
(67, 'large_size_h', '1024', 'yes'),
(68, 'image_default_link_type', 'none', 'yes'),
(69, 'image_default_size', '', 'yes'),
(70, 'image_default_align', '', 'yes'),
(71, 'close_comments_for_old_posts', '0', 'yes'),
(72, 'close_comments_days_old', '14', 'yes'),
(73, 'thread_comments', '1', 'yes'),
(74, 'thread_comments_depth', '5', 'yes'),
(75, 'page_comments', '0', 'yes'),
(76, 'comments_per_page', '50', 'yes'),
(77, 'default_comments_page', 'newest', 'yes'),
(78, 'comment_order', 'asc', 'yes'),
(79, 'sticky_posts', 'a:0:{}', 'yes'),
(80, 'widget_categories', 'a:2:{i:2;a:4:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:12:\"hierarchical\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(82, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(83, 'uninstall_plugins', 'a:1:{s:33:\"classic-editor/classic-editor.php\";a:2:{i:0;s:14:\"Classic_Editor\";i:1;s:9:\"uninstall\";}}', 'no'),
(84, 'timezone_string', 'Europe/London', 'yes'),
(85, 'page_for_posts', '0', 'yes'),
(86, 'page_on_front', '2', 'yes'),
(87, 'default_post_format', '0', 'yes'),
(88, 'link_manager_enabled', '0', 'yes'),
(89, 'finished_splitting_shared_terms', '1', 'yes'),
(90, 'site_icon', '46', 'yes'),
(91, 'medium_large_size_w', '768', 'yes'),
(92, 'medium_large_size_h', '0', 'yes'),
(93, 'wp_page_for_privacy_policy', '3', 'yes'),
(94, 'show_comments_cookies_opt_in', '1', 'yes'),
(95, 'admin_email_lifespan', '1605900580', 'yes'),
(96, 'initial_db_version', '47018', 'yes'),
(97, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(98, 'fresh_site', '0', 'yes'),
(99, 'WPLANG', 'en_GB', 'yes'),
(100, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'bedrock_autoloader', 'a:2:{s:7:\"plugins\";a:0:{}s:5:\"count\";i:0;}', 'no'),
(107, 'cron', 'a:7:{i:1590582582;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1590607781;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590607782;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1590607803;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1590607804;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1591039781;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'nonce_key', 'b$ys`%>Myzf7|F-B[40c[?hR9K>D5sf 0J$I58$KOZK3<}4IM:RsI5|{B7%po80&', 'no'),
(115, 'nonce_salt', 'hfr%BCMp!P`cZ#6l>>BP9O>xZA5yOr/Ux!5q`a22]DVB_HDMn<HDHC9 x_ucB_!1', 'no'),
(116, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'recovery_keys', 'a:0:{}', 'yes'),
(122, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590399373;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}}}}', 'yes'),
(125, 'auth_key', 'R{Jy4Gn14V m 9 eXi^S0p]K8XD]$Tnv}) BM<pGD7xI_#Fc1~abJPz@JG#*PJ8e', 'no'),
(126, 'auth_salt', ',0@-IkiD>fMokTM~V ~7|SK}0Nv #1)%qA5=ss&M,4#?QH)([t.vFi95hGqRO! T', 'no'),
(127, 'logged_in_key', '$q(UpCO0qq?V{kT+o>]by}7:KBr}lRua&;|qN_B+Fe^NKr28apzMqE8]#>wR0i0-', 'no'),
(128, 'logged_in_salt', '-a3RNG]/*[$Uo?4VK3NU%VeHE$nW,t)h]Z;J`-9MA}Q(d$kUa(hx]~(TMvI$aJB$', 'no'),
(129, '_site_transient_timeout_browser_4cb6e6f1f4537edbeaf290367b4f24c4', '1590953403', 'no'),
(130, '_site_transient_browser_4cb6e6f1f4537edbeaf290367b4f24c4', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:12:\"83.0.4103.61\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(131, '_site_transient_timeout_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', '1590953404', 'no'),
(132, '_site_transient_php_check_fb6df547cfb7d95cb9b49b8301cad3ab', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, '_site_transient_timeout_community-events-d41d8cd98f00b204e9800998ecf8427e', '1590616195', 'no'),
(135, '_site_transient_community-events-d41d8cd98f00b204e9800998ecf8427e', 'a:3:{s:9:\"sandboxed\";b:0;s:8:\"location\";a:1:{s:2:\"ip\";b:0;}s:6:\"events\";a:1:{i:0;a:8:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:20:\"WordCamp Kent Online\";s:3:\"url\";s:30:\"https://2020.kent.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2020-05-30 12:30:00\";s:8:\"end_date\";s:19:\"2020-05-31 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:6:\"Online\";s:7:\"country\";s:2:\"US\";s:8:\"latitude\";d:41.1536674;s:9:\"longitude\";d:-81.3578859;}}}}', 'no'),
(146, 'can_compress_scripts', '1', 'no'),
(149, 'recently_activated', 'a:2:{s:25:\"menu-image/menu-image.php\";i:1590539998;s:51:\"header-footer-elementor/header-footer-elementor.php\";i:1590534308;}', 'yes'),
(189, 'template_root', '/themes', 'yes'),
(190, 'stylesheet_root', '/themes', 'yes'),
(191, 'current_theme', 'music-exam', 'yes'),
(192, 'theme_mods_music-exam', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:3:{s:11:\"footer-menu\";i:4;s:8:\"top-menu\";i:2;s:11:\"mobile-menu\";i:0;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590536595;s:4:\"data\";a:1:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}}}}', 'yes'),
(193, 'theme_switched', '', 'yes'),
(195, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(198, 'category_children', 'a:0:{}', 'yes'),
(209, 'fs_active_plugins', 'O:8:\"stdClass\":0:{}', 'yes'),
(210, 'fs_debug_mode', '', 'yes'),
(211, 'fs_accounts', 'a:6:{s:21:\"id_slug_type_path_map\";a:1:{i:4123;a:3:{s:4:\"slug\";s:10:\"menu-image\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:25:\"menu-image/menu-image.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"menu-image\";a:17:{s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:25:\"menu-image/menu-image.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1590420221;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:0;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:5:\"2.3.2\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:5:\"2.9.6\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";b:1;s:4:\"host\";s:23:\"www.sage-exam.test:8888\";s:9:\"server_ip\";s:3:\"::1\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1590420221;s:7:\"version\";s:5:\"2.9.6\";}s:15:\"prev_is_premium\";b:0;s:12:\"is_anonymous\";a:3:{s:2:\"is\";b:1;s:9:\"timestamp\";i:1590420229;s:7:\"version\";s:5:\"2.9.6\";}s:16:\"uninstall_reason\";O:8:\"stdClass\":3:{s:2:\"id\";s:2:\"14\";s:4:\"info\";s:0:\"\";s:12:\"is_anonymous\";b:0;}}}s:13:\"file_slug_map\";a:1:{s:25:\"menu-image/menu-image.php\";s:10:\"menu-image\";}s:7:\"plugins\";a:1:{s:10:\"menu-image\";O:9:\"FS_Plugin\":23:{s:16:\"parent_plugin_id\";N;s:5:\"title\";s:10:\"Menu Image\";s:4:\"slug\";s:10:\"menu-image\";s:12:\"premium_slug\";s:18:\"menu-image-premium\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";b:0;s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:25:\"menu-image/menu-image.php\";s:7:\"version\";s:5:\"2.9.6\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:10:\"public_key\";s:32:\"pk_1a1cac31f5af1ba3d31bd86fe0e8b\";s:10:\"secret_key\";N;s:2:\"id\";s:4:\"4123\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;}}s:9:\"unique_id\";s:32:\"d6570ec25d709b656ab8a4063dd164e6\";s:13:\"admin_notices\";a:1:{s:10:\"menu-image\";a:0:{}}}', 'yes'),
(212, 'fs_gdpr', 'a:1:{s:2:\"u1\";a:1:{s:8:\"required\";b:0;}}', 'yes'),
(213, 'fs_api_cache', 'a:0:{}', 'no'),
(216, 'menu_image_size_1', '24x24', 'yes'),
(217, 'menu_image_size_2', '36x36', 'yes'),
(218, 'menu_image_size_3', '48x48', 'yes'),
(219, 'menu_image_hover', '1', 'yes'),
(224, '_transient_health-check-site-status-result', '{\"good\":\"12\",\"recommended\":\"3\",\"critical\":\"2\"}', 'yes'),
(237, 'acf_version', '5.8.11', 'yes'),
(245, '_site_transient_update_plugins', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590567599;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:2:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:6:\"5.8.11\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:72:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.5.8.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=1729099\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=1729102\";}s:11:\"banners_rtl\";a:0:{}}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:3:\"1.5\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/classic-editor.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(250, '_site_transient_timeout_poptags_40cd750bba9870f18aada2478b24840a', '1590538825', 'no'),
(251, '_site_transient_poptags_40cd750bba9870f18aada2478b24840a', 'O:8:\"stdClass\":100:{s:6:\"widget\";a:3:{s:4:\"name\";s:6:\"widget\";s:4:\"slug\";s:6:\"widget\";s:5:\"count\";i:4692;}s:11:\"woocommerce\";a:3:{s:4:\"name\";s:11:\"woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:5:\"count\";i:4122;}s:4:\"post\";a:3:{s:4:\"name\";s:4:\"post\";s:4:\"slug\";s:4:\"post\";s:5:\"count\";i:2669;}s:5:\"admin\";a:3:{s:4:\"name\";s:5:\"admin\";s:4:\"slug\";s:5:\"admin\";s:5:\"count\";i:2554;}s:5:\"posts\";a:3:{s:4:\"name\";s:5:\"posts\";s:4:\"slug\";s:5:\"posts\";s:5:\"count\";i:1963;}s:9:\"shortcode\";a:3:{s:4:\"name\";s:9:\"shortcode\";s:4:\"slug\";s:9:\"shortcode\";s:5:\"count\";i:1807;}s:8:\"comments\";a:3:{s:4:\"name\";s:8:\"comments\";s:4:\"slug\";s:8:\"comments\";s:5:\"count\";i:1792;}s:7:\"twitter\";a:3:{s:4:\"name\";s:7:\"twitter\";s:4:\"slug\";s:7:\"twitter\";s:5:\"count\";i:1485;}s:6:\"google\";a:3:{s:4:\"name\";s:6:\"google\";s:4:\"slug\";s:6:\"google\";s:5:\"count\";i:1476;}s:6:\"images\";a:3:{s:4:\"name\";s:6:\"images\";s:4:\"slug\";s:6:\"images\";s:5:\"count\";i:1474;}s:8:\"facebook\";a:3:{s:4:\"name\";s:8:\"facebook\";s:4:\"slug\";s:8:\"facebook\";s:5:\"count\";i:1450;}s:5:\"image\";a:3:{s:4:\"name\";s:5:\"image\";s:4:\"slug\";s:5:\"image\";s:5:\"count\";i:1427;}s:3:\"seo\";a:3:{s:4:\"name\";s:3:\"seo\";s:4:\"slug\";s:3:\"seo\";s:5:\"count\";i:1418;}s:7:\"sidebar\";a:3:{s:4:\"name\";s:7:\"sidebar\";s:4:\"slug\";s:7:\"sidebar\";s:5:\"count\";i:1302;}s:5:\"email\";a:3:{s:4:\"name\";s:5:\"email\";s:4:\"slug\";s:5:\"email\";s:5:\"count\";i:1197;}s:7:\"gallery\";a:3:{s:4:\"name\";s:7:\"gallery\";s:4:\"slug\";s:7:\"gallery\";s:5:\"count\";i:1186;}s:4:\"page\";a:3:{s:4:\"name\";s:4:\"page\";s:4:\"slug\";s:4:\"page\";s:5:\"count\";i:1121;}s:9:\"ecommerce\";a:3:{s:4:\"name\";s:9:\"ecommerce\";s:4:\"slug\";s:9:\"ecommerce\";s:5:\"count\";i:1120;}s:6:\"social\";a:3:{s:4:\"name\";s:6:\"social\";s:4:\"slug\";s:6:\"social\";s:5:\"count\";i:1094;}s:5:\"login\";a:3:{s:4:\"name\";s:5:\"login\";s:4:\"slug\";s:5:\"login\";s:5:\"count\";i:990;}s:5:\"video\";a:3:{s:4:\"name\";s:5:\"video\";s:4:\"slug\";s:5:\"video\";s:5:\"count\";i:880;}s:7:\"widgets\";a:3:{s:4:\"name\";s:7:\"widgets\";s:4:\"slug\";s:7:\"widgets\";s:5:\"count\";i:875;}s:5:\"links\";a:3:{s:4:\"name\";s:5:\"links\";s:4:\"slug\";s:5:\"links\";s:5:\"count\";i:873;}s:8:\"security\";a:3:{s:4:\"name\";s:8:\"security\";s:4:\"slug\";s:8:\"security\";s:5:\"count\";i:864;}s:4:\"spam\";a:3:{s:4:\"name\";s:4:\"spam\";s:4:\"slug\";s:4:\"spam\";s:5:\"count\";i:792;}s:10:\"e-commerce\";a:3:{s:4:\"name\";s:10:\"e-commerce\";s:4:\"slug\";s:10:\"e-commerce\";s:5:\"count\";i:772;}s:7:\"content\";a:3:{s:4:\"name\";s:7:\"content\";s:4:\"slug\";s:7:\"content\";s:5:\"count\";i:769;}s:6:\"slider\";a:3:{s:4:\"name\";s:6:\"slider\";s:4:\"slug\";s:6:\"slider\";s:5:\"count\";i:767;}s:9:\"analytics\";a:3:{s:4:\"name\";s:9:\"analytics\";s:4:\"slug\";s:9:\"analytics\";s:5:\"count\";i:758;}s:10:\"buddypress\";a:3:{s:4:\"name\";s:10:\"buddypress\";s:4:\"slug\";s:10:\"buddypress\";s:5:\"count\";i:747;}s:4:\"form\";a:3:{s:4:\"name\";s:4:\"form\";s:4:\"slug\";s:4:\"form\";s:5:\"count\";i:722;}s:3:\"rss\";a:3:{s:4:\"name\";s:3:\"rss\";s:4:\"slug\";s:3:\"rss\";s:5:\"count\";i:716;}s:5:\"media\";a:3:{s:4:\"name\";s:5:\"media\";s:4:\"slug\";s:5:\"media\";s:5:\"count\";i:714;}s:5:\"pages\";a:3:{s:4:\"name\";s:5:\"pages\";s:4:\"slug\";s:5:\"pages\";s:5:\"count\";i:698;}s:6:\"search\";a:3:{s:4:\"name\";s:6:\"search\";s:4:\"slug\";s:6:\"search\";s:5:\"count\";i:686;}s:6:\"jquery\";a:3:{s:4:\"name\";s:6:\"jquery\";s:4:\"slug\";s:6:\"jquery\";s:5:\"count\";i:659;}s:4:\"menu\";a:3:{s:4:\"name\";s:4:\"menu\";s:4:\"slug\";s:4:\"menu\";s:5:\"count\";i:654;}s:4:\"feed\";a:3:{s:4:\"name\";s:4:\"feed\";s:4:\"slug\";s:4:\"feed\";s:5:\"count\";i:650;}s:6:\"editor\";a:3:{s:4:\"name\";s:6:\"editor\";s:4:\"slug\";s:6:\"editor\";s:5:\"count\";i:648;}s:8:\"category\";a:3:{s:4:\"name\";s:8:\"category\";s:4:\"slug\";s:8:\"category\";s:5:\"count\";i:641;}s:4:\"ajax\";a:3:{s:4:\"name\";s:4:\"ajax\";s:4:\"slug\";s:4:\"ajax\";s:5:\"count\";i:629;}s:5:\"embed\";a:3:{s:4:\"name\";s:5:\"embed\";s:4:\"slug\";s:5:\"embed\";s:5:\"count\";i:626;}s:12:\"contact-form\";a:3:{s:4:\"name\";s:12:\"contact form\";s:4:\"slug\";s:12:\"contact-form\";s:5:\"count\";i:588;}s:3:\"css\";a:3:{s:4:\"name\";s:3:\"css\";s:4:\"slug\";s:3:\"css\";s:5:\"count\";i:583;}s:10:\"javascript\";a:3:{s:4:\"name\";s:10:\"javascript\";s:4:\"slug\";s:10:\"javascript\";s:5:\"count\";i:578;}s:7:\"youtube\";a:3:{s:4:\"name\";s:7:\"youtube\";s:4:\"slug\";s:7:\"youtube\";s:5:\"count\";i:576;}s:4:\"link\";a:3:{s:4:\"name\";s:4:\"link\";s:4:\"slug\";s:4:\"link\";s:5:\"count\";i:572;}s:7:\"payment\";a:3:{s:4:\"name\";s:7:\"payment\";s:4:\"slug\";s:7:\"payment\";s:5:\"count\";i:569;}s:5:\"share\";a:3:{s:4:\"name\";s:5:\"share\";s:4:\"slug\";s:5:\"share\";s:5:\"count\";i:556;}s:7:\"comment\";a:3:{s:4:\"name\";s:7:\"comment\";s:4:\"slug\";s:7:\"comment\";s:5:\"count\";i:548;}s:5:\"theme\";a:3:{s:4:\"name\";s:5:\"theme\";s:4:\"slug\";s:5:\"theme\";s:5:\"count\";i:547;}s:9:\"affiliate\";a:3:{s:4:\"name\";s:9:\"affiliate\";s:4:\"slug\";s:9:\"affiliate\";s:5:\"count\";i:542;}s:10:\"responsive\";a:3:{s:4:\"name\";s:10:\"responsive\";s:4:\"slug\";s:10:\"responsive\";s:5:\"count\";i:537;}s:9:\"dashboard\";a:3:{s:4:\"name\";s:9:\"dashboard\";s:4:\"slug\";s:9:\"dashboard\";s:5:\"count\";i:534;}s:6:\"custom\";a:3:{s:4:\"name\";s:6:\"custom\";s:4:\"slug\";s:6:\"custom\";s:5:\"count\";i:529;}s:3:\"ads\";a:3:{s:4:\"name\";s:3:\"ads\";s:4:\"slug\";s:3:\"ads\";s:5:\"count\";i:522;}s:10:\"categories\";a:3:{s:4:\"name\";s:10:\"categories\";s:4:\"slug\";s:10:\"categories\";s:5:\"count\";i:514;}s:3:\"api\";a:3:{s:4:\"name\";s:3:\"api\";s:4:\"slug\";s:3:\"api\";s:5:\"count\";i:505;}s:7:\"contact\";a:3:{s:4:\"name\";s:7:\"contact\";s:4:\"slug\";s:7:\"contact\";s:5:\"count\";i:502;}s:15:\"payment-gateway\";a:3:{s:4:\"name\";s:15:\"payment gateway\";s:4:\"slug\";s:15:\"payment-gateway\";s:5:\"count\";i:502;}s:4:\"user\";a:3:{s:4:\"name\";s:4:\"user\";s:4:\"slug\";s:4:\"user\";s:5:\"count\";i:500;}s:9:\"gutenberg\";a:3:{s:4:\"name\";s:9:\"gutenberg\";s:4:\"slug\";s:9:\"gutenberg\";s:5:\"count\";i:494;}s:4:\"tags\";a:3:{s:4:\"name\";s:4:\"tags\";s:4:\"slug\";s:4:\"tags\";s:5:\"count\";i:492;}s:6:\"button\";a:3:{s:4:\"name\";s:6:\"button\";s:4:\"slug\";s:6:\"button\";s:5:\"count\";i:490;}s:6:\"mobile\";a:3:{s:4:\"name\";s:6:\"mobile\";s:4:\"slug\";s:6:\"mobile\";s:5:\"count\";i:476;}s:5:\"users\";a:3:{s:4:\"name\";s:5:\"users\";s:4:\"slug\";s:5:\"users\";s:5:\"count\";i:476;}s:6:\"events\";a:3:{s:4:\"name\";s:6:\"events\";s:4:\"slug\";s:6:\"events\";s:5:\"count\";i:469;}s:4:\"chat\";a:3:{s:4:\"name\";s:4:\"chat\";s:4:\"slug\";s:4:\"chat\";s:5:\"count\";i:440;}s:9:\"marketing\";a:3:{s:4:\"name\";s:9:\"marketing\";s:4:\"slug\";s:9:\"marketing\";s:5:\"count\";i:439;}s:5:\"photo\";a:3:{s:4:\"name\";s:5:\"photo\";s:4:\"slug\";s:5:\"photo\";s:5:\"count\";i:438;}s:10:\"navigation\";a:3:{s:4:\"name\";s:10:\"navigation\";s:4:\"slug\";s:10:\"navigation\";s:5:\"count\";i:432;}s:9:\"slideshow\";a:3:{s:4:\"name\";s:9:\"slideshow\";s:4:\"slug\";s:9:\"slideshow\";s:5:\"count\";i:428;}s:8:\"calendar\";a:3:{s:4:\"name\";s:8:\"calendar\";s:4:\"slug\";s:8:\"calendar\";s:5:\"count\";i:425;}s:5:\"popup\";a:3:{s:4:\"name\";s:5:\"popup\";s:4:\"slug\";s:5:\"popup\";s:5:\"count\";i:425;}s:5:\"stats\";a:3:{s:4:\"name\";s:5:\"stats\";s:4:\"slug\";s:5:\"stats\";s:5:\"count\";i:423;}s:6:\"photos\";a:3:{s:4:\"name\";s:6:\"photos\";s:4:\"slug\";s:6:\"photos\";s:5:\"count\";i:421;}s:10:\"statistics\";a:3:{s:4:\"name\";s:10:\"statistics\";s:4:\"slug\";s:10:\"statistics\";s:5:\"count\";i:408;}s:5:\"forms\";a:3:{s:4:\"name\";s:5:\"forms\";s:4:\"slug\";s:5:\"forms\";s:5:\"count\";i:406;}s:10:\"newsletter\";a:3:{s:4:\"name\";s:10:\"newsletter\";s:4:\"slug\";s:10:\"newsletter\";s:5:\"count\";i:405;}s:10:\"shortcodes\";a:3:{s:4:\"name\";s:10:\"shortcodes\";s:4:\"slug\";s:10:\"shortcodes\";s:5:\"count\";i:397;}s:4:\"news\";a:3:{s:4:\"name\";s:4:\"news\";s:4:\"slug\";s:4:\"news\";s:5:\"count\";i:397;}s:14:\"contact-form-7\";a:3:{s:4:\"name\";s:14:\"contact form 7\";s:4:\"slug\";s:14:\"contact-form-7\";s:5:\"count\";i:394;}s:12:\"social-media\";a:3:{s:4:\"name\";s:12:\"social media\";s:4:\"slug\";s:12:\"social-media\";s:5:\"count\";i:388;}s:8:\"redirect\";a:3:{s:4:\"name\";s:8:\"redirect\";s:4:\"slug\";s:8:\"redirect\";s:5:\"count\";i:385;}s:4:\"code\";a:3:{s:4:\"name\";s:4:\"code\";s:4:\"slug\";s:4:\"code\";s:5:\"count\";i:378;}s:7:\"plugins\";a:3:{s:4:\"name\";s:7:\"plugins\";s:4:\"slug\";s:7:\"plugins\";s:5:\"count\";i:377;}s:9:\"multisite\";a:3:{s:4:\"name\";s:9:\"multisite\";s:4:\"slug\";s:9:\"multisite\";s:5:\"count\";i:375;}s:11:\"performance\";a:3:{s:4:\"name\";s:11:\"performance\";s:4:\"slug\";s:11:\"performance\";s:5:\"count\";i:371;}s:3:\"url\";a:3:{s:4:\"name\";s:3:\"url\";s:4:\"slug\";s:3:\"url\";s:5:\"count\";i:368;}s:12:\"notification\";a:3:{s:4:\"name\";s:12:\"notification\";s:4:\"slug\";s:12:\"notification\";s:5:\"count\";i:364;}s:4:\"meta\";a:3:{s:4:\"name\";s:4:\"meta\";s:4:\"slug\";s:4:\"meta\";s:5:\"count\";i:360;}s:4:\"list\";a:3:{s:4:\"name\";s:4:\"list\";s:4:\"slug\";s:4:\"list\";s:5:\"count\";i:357;}s:5:\"block\";a:3:{s:4:\"name\";s:5:\"block\";s:4:\"slug\";s:5:\"block\";s:5:\"count\";i:355;}s:9:\"elementor\";a:3:{s:4:\"name\";s:9:\"elementor\";s:4:\"slug\";s:9:\"elementor\";s:5:\"count\";i:351;}s:8:\"tracking\";a:3:{s:4:\"name\";s:8:\"tracking\";s:4:\"slug\";s:8:\"tracking\";s:5:\"count\";i:346;}s:8:\"shipping\";a:3:{s:4:\"name\";s:8:\"shipping\";s:4:\"slug\";s:8:\"shipping\";s:5:\"count\";i:346;}s:16:\"custom-post-type\";a:3:{s:4:\"name\";s:16:\"custom post type\";s:4:\"slug\";s:16:\"custom-post-type\";s:5:\"count\";i:339;}s:16:\"google-analytics\";a:3:{s:4:\"name\";s:16:\"google analytics\";s:4:\"slug\";s:16:\"google-analytics\";s:5:\"count\";i:339;}s:11:\"advertising\";a:3:{s:4:\"name\";s:11:\"advertising\";s:4:\"slug\";s:11:\"advertising\";s:5:\"count\";i:335;}s:5:\"cache\";a:3:{s:4:\"name\";s:5:\"cache\";s:4:\"slug\";s:5:\"cache\";s:5:\"count\";i:334;}}', 'no'),
(254, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1590567600;s:7:\"checked\";a:11:{s:10:\"music-exam\";s:0:\"\";s:12:\"twentyeleven\";s:3:\"3.4\";s:13:\"twentyfifteen\";s:3:\"2.6\";s:14:\"twentyfourteen\";s:3:\"2.8\";s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:13:\"twentysixteen\";s:3:\"2.1\";s:9:\"twentyten\";s:3:\"3.0\";s:14:\"twentythirteen\";s:3:\"3.0\";s:12:\"twentytwelve\";s:3:\"3.1\";s:12:\"twentytwenty\";s:3:\"1.3\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(257, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_GB\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_GB/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1590567599;s:15:\"version_checked\";s:5:\"5.4.1\";s:12:\"translations\";a:0:{}}', 'no'),
(262, 'theme_mods_twentynineteen', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"footer\";i:4;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1590536617;s:4:\"data\";a:2:{s:19:\"wp_inactive_widgets\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-1\";a:0:{}}}}', 'yes'),
(266, '_site_transient_timeout_browser_796a198bdace2c7b58e80be6f0a73472', '1591144115', 'no'),
(267, '_site_transient_browser_796a198bdace2c7b58e80be6f0a73472', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"13.1\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(271, '_site_transient_timeout_theme_roots', '1590572514', 'no'),
(272, '_site_transient_theme_roots', 'a:11:{s:10:\"music-exam\";s:7:\"/themes\";s:12:\"twentyeleven\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:13:\"twentyfifteen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:14:\"twentyfourteen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:14:\"twentynineteen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:15:\"twentyseventeen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:13:\"twentysixteen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:9:\"twentyten\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:14:\"twentythirteen\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:12:\"twentytwelve\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";s:12:\"twentytwenty\";s:74:\"/Users/nathanaellloyd/Documents/Bedrock/sage-exam/web/wp/wp-content/themes\";}', 'no'),
(273, '_site_transient_timeout_browser_9543fe91646e1aed7bbe7915d67fbe17', '1591176349', 'no'),
(274, '_site_transient_browser_9543fe91646e1aed7bbe7915d67fbe17', 'a:10:{s:4:\"name\";s:7:\"unknown\";s:7:\"version\";s:0:\"\";s:8:\"platform\";s:0:\"\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'template-exams.php'),
(2, 3, '_wp_page_template', 'default'),
(7, 1, '_wp_trash_meta_status', 'publish'),
(8, 1, '_wp_trash_meta_time', '1590398804'),
(9, 1, '_wp_desired_post_slug', 'hello-world'),
(10, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(11, 2, '_edit_lock', '1590581224:1'),
(12, 2, '_edit_last', '1'),
(13, 10, '_edit_last', '1'),
(14, 10, '_edit_lock', '1590403450:1'),
(24, 13, '_edit_last', '1'),
(25, 13, '_edit_lock', '1590404815:1'),
(26, 13, '_wp_page_template', 'default'),
(27, 15, '_edit_last', '1'),
(28, 15, '_wp_page_template', 'default'),
(29, 15, '_edit_lock', '1590404842:1'),
(30, 17, '_edit_last', '1'),
(31, 17, '_wp_page_template', 'default'),
(32, 17, '_edit_lock', '1590534140:1'),
(33, 19, '_edit_last', '1'),
(34, 19, '_wp_page_template', 'default'),
(35, 19, '_edit_lock', '1590404894:1'),
(36, 15, '_wp_trash_meta_status', 'publish'),
(37, 15, '_wp_trash_meta_time', '1590405050'),
(38, 15, '_wp_desired_post_slug', 'home'),
(39, 21, '_menu_item_type', 'post_type'),
(40, 21, '_menu_item_menu_item_parent', '0'),
(41, 21, '_menu_item_object_id', '2'),
(42, 21, '_menu_item_object', 'page'),
(43, 21, '_menu_item_target', ''),
(44, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(45, 21, '_menu_item_xfn', ''),
(46, 21, '_menu_item_url', ''),
(48, 22, '_menu_item_type', 'post_type'),
(49, 22, '_menu_item_menu_item_parent', '0'),
(50, 22, '_menu_item_object_id', '13'),
(51, 22, '_menu_item_object', 'page'),
(52, 22, '_menu_item_target', ''),
(53, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(54, 22, '_menu_item_xfn', ''),
(55, 22, '_menu_item_url', ''),
(57, 23, '_menu_item_type', 'post_type'),
(58, 23, '_menu_item_menu_item_parent', '0'),
(59, 23, '_menu_item_object_id', '10'),
(60, 23, '_menu_item_object', 'page'),
(61, 23, '_menu_item_target', ''),
(62, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(63, 23, '_menu_item_xfn', ''),
(64, 23, '_menu_item_url', ''),
(75, 25, '_menu_item_type', 'post_type'),
(76, 25, '_menu_item_menu_item_parent', '0'),
(77, 25, '_menu_item_object_id', '17'),
(78, 25, '_menu_item_object', 'page'),
(79, 25, '_menu_item_target', ''),
(80, 25, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(81, 25, '_menu_item_xfn', ''),
(82, 25, '_menu_item_url', ''),
(84, 26, '_edit_last', '1'),
(85, 26, '_edit_lock', '1590495328:1'),
(87, 28, '_menu_item_type', 'taxonomy'),
(88, 28, '_menu_item_menu_item_parent', '0'),
(89, 28, '_menu_item_object_id', '3'),
(90, 28, '_menu_item_object', 'category'),
(91, 28, '_menu_item_target', ''),
(92, 28, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(93, 28, '_menu_item_xfn', ''),
(94, 28, '_menu_item_url', ''),
(95, 28, '_menu_item_orphaned', '1590410178'),
(96, 29, '_menu_item_type', 'post_type'),
(97, 29, '_menu_item_menu_item_parent', '0'),
(98, 29, '_menu_item_object_id', '26'),
(99, 29, '_menu_item_object', 'post'),
(100, 29, '_menu_item_target', ''),
(101, 29, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(102, 29, '_menu_item_xfn', ''),
(103, 29, '_menu_item_url', ''),
(104, 29, '_menu_item_orphaned', '1590410216'),
(113, 31, '_wp_attached_file', '2020/05/logo.png'),
(114, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:144;s:6:\"height\";i:164;s:4:\"file\";s:16:\"2020/05/logo.png\";s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"logo-144x150.png\";s:5:\"width\";i:144;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 34, '_menu_item_type', 'post_type'),
(116, 34, '_menu_item_menu_item_parent', '0'),
(117, 34, '_menu_item_object_id', '19'),
(118, 34, '_menu_item_object', 'page'),
(119, 34, '_menu_item_target', ''),
(120, 34, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(121, 34, '_menu_item_xfn', ''),
(122, 34, '_menu_item_url', ''),
(124, 35, '_menu_item_type', 'post_type'),
(125, 35, '_menu_item_menu_item_parent', '0'),
(126, 35, '_menu_item_object_id', '17'),
(127, 35, '_menu_item_object', 'page'),
(128, 35, '_menu_item_target', ''),
(129, 35, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(130, 35, '_menu_item_xfn', ''),
(131, 35, '_menu_item_url', ''),
(133, 36, '_menu_item_type', 'post_type'),
(134, 36, '_menu_item_menu_item_parent', '0'),
(135, 36, '_menu_item_object_id', '13'),
(136, 36, '_menu_item_object', 'page'),
(137, 36, '_menu_item_target', ''),
(138, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(139, 36, '_menu_item_xfn', ''),
(140, 36, '_menu_item_url', ''),
(142, 37, '_menu_item_type', 'post_type'),
(143, 37, '_menu_item_menu_item_parent', '0'),
(144, 37, '_menu_item_object_id', '10'),
(145, 37, '_menu_item_object', 'page'),
(146, 37, '_menu_item_target', ''),
(147, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(148, 37, '_menu_item_xfn', ''),
(149, 37, '_menu_item_url', ''),
(151, 38, '_edit_last', '1'),
(152, 38, '_edit_lock', '1590417863:1'),
(153, 38, '_wp_page_template', 'default'),
(154, 40, '_menu_item_type', 'post_type'),
(155, 40, '_menu_item_menu_item_parent', '0'),
(156, 40, '_menu_item_object_id', '38'),
(157, 40, '_menu_item_object', 'page'),
(158, 40, '_menu_item_target', ''),
(159, 40, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(160, 40, '_menu_item_xfn', ''),
(161, 40, '_menu_item_url', ''),
(163, 41, '_menu_item_type', 'custom'),
(164, 41, '_menu_item_menu_item_parent', '0'),
(165, 41, '_menu_item_object_id', '41'),
(166, 41, '_menu_item_object', 'custom'),
(167, 41, '_menu_item_target', ''),
(168, 41, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(169, 41, '_menu_item_xfn', ''),
(170, 41, '_menu_item_url', 'http://www.sage-exam.test:8888'),
(171, 41, '_menu_item_orphaned', '1590419874'),
(181, 31, '_wp_attachment_image_alt', 'brand logo'),
(183, 21, '_menu_item_image_size', 'menu-36x36'),
(184, 21, '_menu_item_image_title_position', 'after'),
(185, 23, '_menu_item_image_size', 'menu-36x36'),
(186, 23, '_menu_item_image_title_position', 'after'),
(187, 22, '_menu_item_image_size', 'menu-36x36'),
(188, 22, '_menu_item_image_title_position', 'after'),
(189, 25, '_menu_item_image_size', 'menu-36x36'),
(190, 25, '_menu_item_image_title_position', 'after'),
(191, 34, '_menu_item_image_size', 'menu-36x36'),
(192, 34, '_menu_item_image_title_position', 'after'),
(207, 36, '_menu_item_image_size', 'menu-36x36'),
(208, 36, '_menu_item_image_title_position', 'after'),
(209, 37, '_menu_item_image_size', 'menu-36x36'),
(210, 37, '_menu_item_image_title_position', 'after'),
(211, 40, '_menu_item_image_size', 'menu-36x36'),
(212, 40, '_menu_item_image_title_position', 'after'),
(213, 35, '_menu_item_image_size', 'menu-36x36'),
(214, 35, '_menu_item_image_title_position', 'after'),
(224, 45, '_wp_attached_file', '2020/05/facebookcircle.png'),
(225, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:225;s:6:\"height\";i:225;s:4:\"file\";s:26:\"2020/05/facebookcircle.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"facebookcircle-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:24:\"facebookcircle-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:24:\"facebookcircle-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:24:\"facebookcircle-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(226, 45, '_wp_attachment_image_alt', 'facebook logo'),
(230, 46, '_wp_attached_file', '2020/05/cropped-logo.png'),
(231, 46, '_wp_attachment_context', 'site-icon'),
(232, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:24:\"2020/05/cropped-logo.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cropped-logo-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cropped-logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:22:\"cropped-logo-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:22:\"cropped-logo-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:22:\"cropped-logo-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:24:\"cropped-logo-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:24:\"cropped-logo-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:24:\"cropped-logo-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:22:\"cropped-logo-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(233, 47, '_edit_lock', '1590491362:1'),
(234, 47, '_wp_trash_meta_status', 'publish'),
(235, 47, '_wp_trash_meta_time', '1590491366'),
(236, 51, '_edit_last', '1'),
(237, 51, '_edit_lock', '1590524989:1'),
(238, 2, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(239, 2, '_header_link', 'field_5eccfe32a8691'),
(240, 53, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(241, 53, '_header_link', 'field_5eccfe32a8691'),
(242, 26, '_wp_trash_meta_status', 'publish'),
(243, 26, '_wp_trash_meta_time', '1590495476'),
(244, 26, '_wp_desired_post_slug', 'done-differently'),
(245, 55, '_wp_attached_file', '2020/05/cropped-logo-1.png'),
(246, 55, '_wp_attachment_context', 'site-icon'),
(247, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2020/05/cropped-logo-1.png\";s:5:\"sizes\";a:9:{s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(249, 56, '_customize_restore_dismissed', '1'),
(250, 2, 'facebook_link', '45'),
(251, 2, '_facebook_link', 'field_5ecd162ae3803'),
(252, 60, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(253, 60, '_header_link', 'field_5eccfe32a8691'),
(254, 60, 'facebook_link', '45'),
(255, 60, '_facebook_link', 'field_5ecd162ae3803'),
(256, 63, '_wp_attached_file', '2020/05/instacircle1.png'),
(257, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1337;s:6:\"height\";i:1200;s:4:\"file\";s:24:\"2020/05/instacircle1.png\";s:5:\"sizes\";a:7:{s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"instacircle1-300x269.png\";s:5:\"width\";i:300;s:6:\"height\";i:269;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"instacircle1-1024x919.png\";s:5:\"width\";i:1024;s:6:\"height\";i:919;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"instacircle1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"instacircle1-768x689.png\";s:5:\"width\";i:768;s:6:\"height\";i:689;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:22:\"instacircle1-24x22.png\";s:5:\"width\";i:24;s:6:\"height\";i:22;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:22:\"instacircle1-36x32.png\";s:5:\"width\";i:36;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:22:\"instacircle1-48x43.png\";s:5:\"width\";i:48;s:6:\"height\";i:43;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(258, 2, 'instagram_link', '63'),
(259, 2, '_instagram_link', 'field_5ecd24573bd3c'),
(260, 64, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(261, 64, '_header_link', 'field_5eccfe32a8691'),
(262, 64, 'facebook_link', '45'),
(263, 64, '_facebook_link', 'field_5ecd162ae3803'),
(264, 64, 'instagram_link', '63'),
(265, 64, '_instagram_link', 'field_5ecd24573bd3c'),
(266, 2, 'site_logo', '31'),
(267, 2, '_site_logo', 'field_5ecd25ce81f11'),
(268, 2, '_', 'field_5ecd25e181f12'),
(269, 69, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(270, 69, '_header_link', 'field_5eccfe32a8691'),
(271, 69, 'facebook_link', '45'),
(272, 69, '_facebook_link', 'field_5ecd162ae3803'),
(273, 69, 'instagram_link', '63'),
(274, 69, '_instagram_link', 'field_5ecd24573bd3c'),
(275, 69, 'site_logo', '31'),
(276, 69, '_site_logo', 'field_5ecd25ce81f11'),
(277, 70, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(278, 70, '_header_link', 'field_5eccfe32a8691'),
(279, 70, 'facebook_link', '45'),
(280, 70, '_facebook_link', 'field_5ecd162ae3803'),
(281, 70, 'instagram_link', '63'),
(282, 70, '_instagram_link', 'field_5ecd24573bd3c'),
(283, 70, 'site_logo', '31'),
(284, 70, '_site_logo', 'field_5ecd25ce81f11'),
(285, 71, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(286, 71, '_header_link', 'field_5eccfe32a8691'),
(287, 71, 'facebook_link', '45'),
(288, 71, '_facebook_link', 'field_5ecd162ae3803'),
(289, 71, 'instagram_link', '63'),
(290, 71, '_instagram_link', 'field_5ecd24573bd3c'),
(291, 71, 'site_logo', '31'),
(292, 71, '_site_logo', 'field_5ecd25ce81f11'),
(293, 72, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(294, 72, '_header_link', 'field_5eccfe32a8691'),
(295, 72, 'facebook_link', '45'),
(296, 72, '_facebook_link', 'field_5ecd162ae3803'),
(297, 72, 'instagram_link', '63'),
(298, 72, '_instagram_link', 'field_5ecd24573bd3c'),
(299, 72, 'site_logo', '31'),
(300, 72, '_site_logo', 'field_5ecd25ce81f11'),
(301, 73, '_edit_last', '1'),
(302, 73, '_edit_lock', '1590532155:1'),
(303, 77, '_edit_last', '1'),
(304, 77, '_edit_lock', '1590520640:1'),
(305, 80, '_wp_attached_file', '2020/05/footer-background.png'),
(306, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1920;s:6:\"height\";i:591;s:4:\"file\";s:29:\"2020/05/footer-background.png\";s:5:\"sizes\";a:8:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"footer-background-300x92.png\";s:5:\"width\";i:300;s:6:\"height\";i:92;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"footer-background-1024x315.png\";s:5:\"width\";i:1024;s:6:\"height\";i:315;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"footer-background-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"footer-background-768x236.png\";s:5:\"width\";i:768;s:6:\"height\";i:236;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"1536x1536\";a:4:{s:4:\"file\";s:30:\"footer-background-1536x473.png\";s:5:\"width\";i:1536;s:6:\"height\";i:473;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:26:\"footer-background-24x7.png\";s:5:\"width\";i:24;s:6:\"height\";i:7;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:27:\"footer-background-36x11.png\";s:5:\"width\";i:36;s:6:\"height\";i:11;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:27:\"footer-background-48x15.png\";s:5:\"width\";i:48;s:6:\"height\";i:15;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 2, 'footer_img', '80'),
(308, 2, '_footer_img', 'field_5ecd436e12bcd'),
(309, 2, 'first_title', 'Stress Free, Travel Free.'),
(310, 2, '_first_title', 'field_5ecd2c52a6062'),
(311, 81, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(312, 81, '_header_link', 'field_5eccfe32a8691'),
(313, 81, 'facebook_link', '45'),
(314, 81, '_facebook_link', 'field_5ecd162ae3803'),
(315, 81, 'instagram_link', '63'),
(316, 81, '_instagram_link', 'field_5ecd24573bd3c'),
(317, 81, 'site_logo', '31'),
(318, 81, '_site_logo', 'field_5ecd25ce81f11'),
(319, 81, 'footer_img', '80'),
(320, 81, '_footer_img', 'field_5ecd436e12bcd'),
(321, 81, 'first_title', 'Stress Free, Travel Free.'),
(322, 81, '_first_title', 'field_5ecd2c52a6062'),
(323, 2, 'second_title', 'Exams. D'),
(324, 2, '_second_title', 'field_5ecd6bd7eb1a2'),
(325, 81, 'second_title', 'Exams. Done Differently.'),
(326, 81, '_second_title', 'field_5ecd6bd7eb1a2'),
(327, 2, 'second_title_copy', 'ne Differently.'),
(328, 2, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(329, 85, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(330, 85, '_header_link', 'field_5eccfe32a8691'),
(331, 85, 'facebook_link', '45'),
(332, 85, '_facebook_link', 'field_5ecd162ae3803'),
(333, 85, 'instagram_link', '63'),
(334, 85, '_instagram_link', 'field_5ecd24573bd3c'),
(335, 85, 'site_logo', '31'),
(336, 85, '_site_logo', 'field_5ecd25ce81f11'),
(337, 85, 'footer_img', '80'),
(338, 85, '_footer_img', 'field_5ecd436e12bcd'),
(339, 85, 'first_title', 'Stress Free, Travel Free.'),
(340, 85, '_first_title', 'field_5ecd2c52a6062'),
(341, 85, 'second_title', 'Exams. D'),
(342, 85, '_second_title', 'field_5ecd6bd7eb1a2'),
(343, 85, 'second_title_copy', 'ne Differently.'),
(344, 85, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(345, 2, 'find_an_exam', 'a:3:{s:5:\"title\";s:12:\"Find an Exam\";s:3:\"url\";s:37:\"http://www.sage-exam.test:8888/exams/\";s:6:\"target\";s:0:\"\";}'),
(346, 2, '_find_an_exam', 'field_5ecd7e1dd789d'),
(347, 2, 'become_a_partner', 'a:3:{s:5:\"title\";s:16:\"Become a Partner\";s:3:\"url\";s:47:\"http://www.sage-exam.test:8888/partner-with-us/\";s:6:\"target\";s:0:\"\";}'),
(348, 2, '_become_a_partner', 'field_5ecd7e46555d4'),
(349, 88, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(350, 88, '_header_link', 'field_5eccfe32a8691'),
(351, 88, 'facebook_link', '45'),
(352, 88, '_facebook_link', 'field_5ecd162ae3803'),
(353, 88, 'instagram_link', '63'),
(354, 88, '_instagram_link', 'field_5ecd24573bd3c'),
(355, 88, 'site_logo', '31'),
(356, 88, '_site_logo', 'field_5ecd25ce81f11'),
(357, 88, 'footer_img', '80'),
(358, 88, '_footer_img', 'field_5ecd436e12bcd'),
(359, 88, 'first_title', 'Stress Free, Travel Free.'),
(360, 88, '_first_title', 'field_5ecd2c52a6062'),
(361, 88, 'second_title', 'Exams. D'),
(362, 88, '_second_title', 'field_5ecd6bd7eb1a2'),
(363, 88, 'second_title_copy', 'ne Differently.'),
(364, 88, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(365, 88, 'find_an_exam', 'a:3:{s:5:\"title\";s:12:\"Find an Exam\";s:3:\"url\";s:37:\"http://www.sage-exam.test:8888/exams/\";s:6:\"target\";s:0:\"\";}'),
(366, 88, '_find_an_exam', 'field_5ecd7e1dd789d'),
(367, 88, 'become_a_partner', 'a:3:{s:5:\"title\";s:16:\"Become a Partner\";s:3:\"url\";s:47:\"http://www.sage-exam.test:8888/partner-with-us/\";s:6:\"target\";s:0:\"\";}'),
(368, 88, '_become_a_partner', 'field_5ecd7e46555d4'),
(369, 89, '_edit_last', '1'),
(370, 89, '_edit_lock', '1590532330:1'),
(379, 99, '_wp_attached_file', '2020/05/Image-13@2x.png'),
(380, 99, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:464;s:6:\"height\";i:348;s:4:\"file\";s:23:\"2020/05/Image-13@2x.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"Image-13@2x-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Image-13@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"Image-13@2x-24x18.png\";s:5:\"width\";i:24;s:6:\"height\";i:18;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"Image-13@2x-36x27.png\";s:5:\"width\";i:36;s:6:\"height\";i:27;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"Image-13@2x-48x36.png\";s:5:\"width\";i:48;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(381, 100, '_wp_attached_file', '2020/05/Image-12@2x.png'),
(382, 100, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:278;s:4:\"file\";s:23:\"2020/05/Image-12@2x.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Image-12@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"Image-12@2x-20x24.png\";s:5:\"width\";i:20;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"Image-12@2x-31x36.png\";s:5:\"width\";i:31;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"Image-12@2x-41x48.png\";s:5:\"width\";i:41;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 102, '_wp_attached_file', '2020/05/ym@2x.png'),
(386, 102, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:236;s:6:\"height\";i:206;s:4:\"file\";s:17:\"2020/05/ym@2x.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:17:\"ym@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:15:\"ym@2x-24x21.png\";s:5:\"width\";i:24;s:6:\"height\";i:21;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:15:\"ym@2x-36x31.png\";s:5:\"width\";i:36;s:6:\"height\";i:31;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:15:\"ym@2x-48x42.png\";s:5:\"width\";i:48;s:6:\"height\";i:42;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(387, 103, '_wp_attached_file', '2020/05/Image-11@2x.png'),
(388, 103, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:216;s:6:\"height\";i:250;s:4:\"file\";s:23:\"2020/05/Image-11@2x.png\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"Image-11@2x-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:21:\"Image-11@2x-21x24.png\";s:5:\"width\";i:21;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:21:\"Image-11@2x-31x36.png\";s:5:\"width\";i:31;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:21:\"Image-11@2x-41x48.png\";s:5:\"width\";i:41;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(401, 110, '_wp_attached_file', '2020/05/Image-10@2x-9.png'),
(402, 110, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:384;s:6:\"height\";i:384;s:4:\"file\";s:25:\"2020/05/Image-10@2x-9.png\";s:5:\"sizes\";a:5:{s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"Image-10@2x-9-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"Image-10@2x-9-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-24x24\";a:4:{s:4:\"file\";s:23:\"Image-10@2x-9-24x24.png\";s:5:\"width\";i:24;s:6:\"height\";i:24;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-36x36\";a:4:{s:4:\"file\";s:23:\"Image-10@2x-9-36x36.png\";s:5:\"width\";i:36;s:6:\"height\";i:36;s:9:\"mime-type\";s:9:\"image/png\";}s:10:\"menu-48x48\";a:4:{s:4:\"file\";s:23:\"Image-10@2x-9-48x48.png\";s:5:\"width\";i:48;s:6:\"height\";i:48;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(403, 110, '_wp_attachment_image_alt', 'creative_united_logo'),
(404, 2, 'creative_united', '110'),
(405, 2, '_creative_united', 'field_5ecd98d1f1356'),
(406, 2, 'icmp', '103'),
(407, 2, '_icmp', 'field_5ecd990131446'),
(408, 2, 'orange', '100'),
(409, 2, '_orange', 'field_5ecd991922978'),
(410, 2, 'orange_amp', '99'),
(411, 2, '_orange_amp', 'field_5ecd993fda6b0'),
(412, 2, 'youth_music', '102'),
(413, 2, '_youth_music', 'field_5ecd99588a68b'),
(414, 111, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(415, 111, '_header_link', 'field_5eccfe32a8691'),
(416, 111, 'facebook_link', '45'),
(417, 111, '_facebook_link', 'field_5ecd162ae3803'),
(418, 111, 'instagram_link', '63'),
(419, 111, '_instagram_link', 'field_5ecd24573bd3c'),
(420, 111, 'site_logo', '31'),
(421, 111, '_site_logo', 'field_5ecd25ce81f11'),
(422, 111, 'footer_img', '80'),
(423, 111, '_footer_img', 'field_5ecd436e12bcd'),
(424, 111, 'first_title', 'Stress Free, Travel Free.'),
(425, 111, '_first_title', 'field_5ecd2c52a6062'),
(426, 111, 'second_title', 'Exams. D'),
(427, 111, '_second_title', 'field_5ecd6bd7eb1a2'),
(428, 111, 'second_title_copy', 'ne Differently.'),
(429, 111, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(430, 111, 'find_an_exam', 'a:3:{s:5:\"title\";s:12:\"Find an Exam\";s:3:\"url\";s:37:\"http://www.sage-exam.test:8888/exams/\";s:6:\"target\";s:0:\"\";}'),
(431, 111, '_find_an_exam', 'field_5ecd7e1dd789d'),
(432, 111, 'become_a_partner', 'a:3:{s:5:\"title\";s:16:\"Become a Partner\";s:3:\"url\";s:47:\"http://www.sage-exam.test:8888/partner-with-us/\";s:6:\"target\";s:0:\"\";}'),
(433, 111, '_become_a_partner', 'field_5ecd7e46555d4'),
(434, 111, 'creative_united', '110'),
(435, 111, '_creative_united', 'field_5ecd98d1f1356'),
(436, 111, 'icmp', ''),
(437, 111, '_icmp', 'field_5ecd990131446'),
(438, 111, 'orange', ''),
(439, 111, '_orange', 'field_5ecd991922978'),
(440, 111, 'orange_amp', ''),
(441, 111, '_orange_amp', 'field_5ecd993fda6b0'),
(442, 111, 'youth_music', ''),
(443, 111, '_youth_music', 'field_5ecd99588a68b'),
(444, 112, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(445, 112, '_header_link', 'field_5eccfe32a8691'),
(446, 112, 'facebook_link', '45'),
(447, 112, '_facebook_link', 'field_5ecd162ae3803'),
(448, 112, 'instagram_link', '63'),
(449, 112, '_instagram_link', 'field_5ecd24573bd3c'),
(450, 112, 'site_logo', '31'),
(451, 112, '_site_logo', 'field_5ecd25ce81f11'),
(452, 112, 'footer_img', '80'),
(453, 112, '_footer_img', 'field_5ecd436e12bcd'),
(454, 112, 'first_title', 'Stress Free, Travel Free.'),
(455, 112, '_first_title', 'field_5ecd2c52a6062'),
(456, 112, 'second_title', 'Exams. D'),
(457, 112, '_second_title', 'field_5ecd6bd7eb1a2'),
(458, 112, 'second_title_copy', 'ne Differently.'),
(459, 112, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(460, 112, 'find_an_exam', 'a:3:{s:5:\"title\";s:12:\"Find an Exam\";s:3:\"url\";s:37:\"http://www.sage-exam.test:8888/exams/\";s:6:\"target\";s:0:\"\";}'),
(461, 112, '_find_an_exam', 'field_5ecd7e1dd789d'),
(462, 112, 'become_a_partner', 'a:3:{s:5:\"title\";s:16:\"Become a Partner\";s:3:\"url\";s:47:\"http://www.sage-exam.test:8888/partner-with-us/\";s:6:\"target\";s:0:\"\";}'),
(463, 112, '_become_a_partner', 'field_5ecd7e46555d4'),
(464, 112, 'creative_united', '110'),
(465, 112, '_creative_united', 'field_5ecd98d1f1356'),
(466, 112, 'icmp', '103'),
(467, 112, '_icmp', 'field_5ecd990131446'),
(468, 112, 'orange', '100'),
(469, 112, '_orange', 'field_5ecd991922978'),
(470, 112, 'orange_amp', '99'),
(471, 112, '_orange_amp', 'field_5ecd993fda6b0'),
(472, 112, 'youth_music', '102'),
(473, 112, '_youth_music', 'field_5ecd99588a68b'),
(474, 103, '_wp_attachment_image_alt', 'impc-logo'),
(475, 100, '_wp_attachment_image_alt', 'orange-logo'),
(476, 99, '_wp_attachment_image_alt', 'orange-amp-logo'),
(477, 102, '_wp_attachment_image_alt', 'youth-music-logo'),
(478, 113, 'header_link', 'a:3:{s:5:\"title\";s:11:\"Get Started\";s:3:\"url\";s:30:\"http://www.sage-exam.test:8888\";s:6:\"target\";s:0:\"\";}'),
(479, 113, '_header_link', 'field_5eccfe32a8691'),
(480, 113, 'facebook_link', '45'),
(481, 113, '_facebook_link', 'field_5ecd162ae3803'),
(482, 113, 'instagram_link', '63'),
(483, 113, '_instagram_link', 'field_5ecd24573bd3c'),
(484, 113, 'site_logo', '31'),
(485, 113, '_site_logo', 'field_5ecd25ce81f11'),
(486, 113, 'footer_img', '80'),
(487, 113, '_footer_img', 'field_5ecd436e12bcd'),
(488, 113, 'first_title', 'Stress Free, Travel Free.'),
(489, 113, '_first_title', 'field_5ecd2c52a6062'),
(490, 113, 'second_title', 'Exams. D'),
(491, 113, '_second_title', 'field_5ecd6bd7eb1a2'),
(492, 113, 'second_title_copy', 'ne Differently.'),
(493, 113, '_second_title_copy', 'field_5ecd7cdbe17d5'),
(494, 113, 'find_an_exam', 'a:3:{s:5:\"title\";s:12:\"Find an Exam\";s:3:\"url\";s:37:\"http://www.sage-exam.test:8888/exams/\";s:6:\"target\";s:0:\"\";}'),
(495, 113, '_find_an_exam', 'field_5ecd7e1dd789d'),
(496, 113, 'become_a_partner', 'a:3:{s:5:\"title\";s:16:\"Become a Partner\";s:3:\"url\";s:47:\"http://www.sage-exam.test:8888/partner-with-us/\";s:6:\"target\";s:0:\"\";}'),
(497, 113, '_become_a_partner', 'field_5ecd7e46555d4'),
(498, 113, 'creative_united', '110'),
(499, 113, '_creative_united', 'field_5ecd98d1f1356'),
(500, 113, 'icmp', '103'),
(501, 113, '_icmp', 'field_5ecd990131446'),
(502, 113, 'orange', '100'),
(503, 113, '_orange', 'field_5ecd991922978'),
(504, 113, 'orange_amp', '99'),
(505, 113, '_orange_amp', 'field_5ecd993fda6b0'),
(506, 113, 'youth_music', '102'),
(507, 113, '_youth_music', 'field_5ecd99588a68b');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-05-24 20:29:41', '2020-05-24 19:29:41', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'trash', 'open', 'open', '', 'hello-world__trashed', '', '', '2020-05-25 10:26:44', '2020-05-25 09:26:44', '', 0, 'http://www.sage-exam.test:8888/?p=1', 0, 'post', '', 1),
(2, 1, '2020-05-24 20:29:41', '2020-05-24 19:29:41', '', 'Home', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2020-05-27 10:58:20', '2020-05-27 09:58:20', '', 0, 'http://www.sage-exam.test:8888/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-05-24 20:29:41', '2020-05-24 19:29:41', '<!-- wp:heading --><h2>Who we are</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Our website address is: http://www.sage-exam.test:8888.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What personal data we collect and why we collect it</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comments</h3><!-- /wp:heading --><!-- wp:paragraph --><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>An anonymised string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service Privacy Policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Media</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contact forms</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment on our site you may opt in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Embedded content from other websites</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analytics</h3><!-- /wp:heading --><!-- wp:heading --><h2>Who we share your data with</h2><!-- /wp:heading --><!-- wp:heading --><h2>How long we retain your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognise and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>What rights you have over your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Where we send your data</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Visitor comments may be checked through an automated spam detection service.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Your contact information</h2><!-- /wp:heading --><!-- wp:heading --><h2>Additional information</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>How we protect your data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What data breach procedures we have in place</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What third parties we receive data from</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>What automated decision making and/or profiling we do with user data</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Industry regulatory disclosure requirements</h3><!-- /wp:heading -->', 'Privacy Policy', '', 'draft', 'closed', 'open', '', 'privacy-policy', '', '', '2020-05-24 20:29:41', '2020-05-24 19:29:41', '', 0, 'http://www.sage-exam.test:8888/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-05-24 20:30:04', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-05-24 20:30:04', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?p=4', 0, 'post', '', 0),
(7, 1, '2020-05-25 10:26:44', '2020-05-25 09:26:44', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-25 10:26:44', '2020-05-25 09:26:44', '', 1, 'http://www.sage-exam.test:8888/2020/05/25/1-revision-v1/', 0, 'revision', '', 0),
(8, 1, '2020-05-25 10:30:05', '2020-05-25 09:30:05', '<!-- wp:paragraph -->\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-25 10:30:05', '2020-05-25 09:30:05', '', 2, 'http://www.sage-exam.test:8888/2020/05/25/2-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2020-05-25 11:17:52', '2020-05-25 10:17:52', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-25 11:17:52', '2020-05-25 10:17:52', '', 2, 'http://www.sage-exam.test:8888/2020/05/25/2-revision-v1/', 0, 'revision', '', 0),
(10, 1, '2020-05-25 11:19:56', '2020-05-25 10:19:56', 'HERE ARE THE EXAMS', 'Exams', '', 'publish', 'closed', 'closed', '', 'exams', '', '', '2020-05-25 11:24:49', '2020-05-25 10:24:49', '', 0, 'http://www.sage-exam.test:8888/?page_id=10', 0, 'page', '', 0),
(11, 1, '2020-05-25 11:19:56', '2020-05-25 10:19:56', 'HERE ARE THE EXAMS', 'Exams', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2020-05-25 11:19:56', '2020-05-25 10:19:56', '', 10, 'http://www.sage-exam.test:8888/2020/05/25/10-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2020-05-25 12:08:44', '2020-05-25 11:08:44', '', 'About', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2020-05-25 12:08:44', '2020-05-25 11:08:44', '', 0, 'http://www.sage-exam.test:8888/?page_id=13', 0, 'page', '', 0),
(14, 1, '2020-05-25 12:08:44', '2020-05-25 11:08:44', '', 'About', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2020-05-25 12:08:44', '2020-05-25 11:08:44', '', 13, 'http://www.sage-exam.test:8888/2020/05/25/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-25 12:09:24', '2020-05-25 11:09:24', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2020-05-25 12:10:50', '2020-05-25 11:10:50', '', 0, 'http://www.sage-exam.test:8888/?page_id=15', 0, 'page', '', 0),
(16, 1, '2020-05-25 12:09:24', '2020-05-25 11:09:24', '', 'Home', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2020-05-25 12:09:24', '2020-05-25 11:09:24', '', 15, 'http://www.sage-exam.test:8888/2020/05/25/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2020-05-25 12:09:52', '2020-05-25 11:09:52', '', 'Partner With Us', '', 'publish', 'closed', 'closed', '', 'partner-with-us', '', '', '2020-05-25 12:09:52', '2020-05-25 11:09:52', '', 0, 'http://www.sage-exam.test:8888/?page_id=17', 0, 'page', '', 0),
(18, 1, '2020-05-25 12:09:52', '2020-05-25 11:09:52', '', 'Partner With Us', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2020-05-25 12:09:52', '2020-05-25 11:09:52', '', 17, 'http://www.sage-exam.test:8888/2020/05/25/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2020-05-25 12:10:32', '2020-05-25 11:10:32', '', 'FAQ\'s', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2020-05-25 12:10:32', '2020-05-25 11:10:32', '', 0, 'http://www.sage-exam.test:8888/?page_id=19', 0, 'page', '', 0),
(20, 1, '2020-05-25 12:10:32', '2020-05-25 11:10:32', '', 'FAQ\'s', '', 'inherit', 'closed', 'closed', '', '19-revision-v1', '', '', '2020-05-25 12:10:32', '2020-05-25 11:10:32', '', 19, 'http://www.sage-exam.test:8888/2020/05/25/19-revision-v1/', 0, 'revision', '', 0),
(21, 1, '2020-05-25 12:13:12', '2020-05-25 11:13:12', ' ', '', '', 'publish', 'closed', 'closed', '', '21', '', '', '2020-05-26 12:23:40', '2020-05-26 11:23:40', '', 0, 'http://www.sage-exam.test:8888/?p=21', 1, 'nav_menu_item', '', 0),
(22, 1, '2020-05-25 12:13:12', '2020-05-25 11:13:12', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2020-05-26 12:23:40', '2020-05-26 11:23:40', '', 0, 'http://www.sage-exam.test:8888/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2020-05-25 12:13:12', '2020-05-25 11:13:12', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2020-05-26 12:23:40', '2020-05-26 11:23:40', '', 0, 'http://www.sage-exam.test:8888/?p=23', 2, 'nav_menu_item', '', 0),
(25, 1, '2020-05-25 12:13:12', '2020-05-25 11:13:12', ' ', '', '', 'publish', 'closed', 'closed', '', '25', '', '', '2020-05-26 12:23:40', '2020-05-26 11:23:40', '', 0, 'http://www.sage-exam.test:8888/?p=25', 4, 'nav_menu_item', '', 0),
(26, 1, '2020-05-25 13:35:27', '2020-05-25 12:35:27', '', 'Done Differently', '', 'trash', 'open', 'open', '', 'done-differently__trashed', '', '', '2020-05-26 13:17:56', '2020-05-26 12:17:56', '', 0, 'http://www.sage-exam.test:8888/?p=26', 0, 'post', '', 0),
(27, 1, '2020-05-25 13:35:27', '2020-05-25 12:35:27', '', 'Done Differently', '', 'inherit', 'closed', 'closed', '', '26-revision-v1', '', '', '2020-05-25 13:35:27', '2020-05-25 12:35:27', '', 26, 'http://www.sage-exam.test:8888/2020/05/25/26-revision-v1/', 0, 'revision', '', 0),
(28, 1, '2020-05-25 13:36:18', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-25 13:36:18', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?p=28', 1, 'nav_menu_item', '', 0),
(29, 1, '2020-05-25 13:36:56', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-25 13:36:56', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?p=29', 1, 'nav_menu_item', '', 0),
(31, 1, '2020-05-25 15:01:39', '2020-05-25 14:01:39', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-05-25 16:26:07', '2020-05-25 15:26:07', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/logo.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2020-05-25 15:01:55', '2020-05-25 14:01:55', '<!-- wp:paragraph -->\r\n<p><img class=\"alignnone size-full wp-image-31\" src=\"http://www.sage-exam.test:8888/app/uploads/2020/05/logo.png\" alt=\"\" width=\"144\" height=\"164\" />NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-25 15:01:55', '2020-05-25 14:01:55', '', 2, 'http://www.sage-exam.test:8888/2020/05/25/2-revision-v1/', 0, 'revision', '', 0),
(33, 1, '2020-05-25 15:24:47', '2020-05-25 14:24:47', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-25 15:24:47', '2020-05-25 14:24:47', '', 2, 'http://www.sage-exam.test:8888/2020/05/25/2-revision-v1/', 0, 'revision', '', 0),
(34, 1, '2020-05-25 15:35:49', '2020-05-25 14:35:49', '', 'FAQ\'s', '', 'publish', 'closed', 'closed', '', 'faqs', '', '', '2020-05-26 12:23:40', '2020-05-26 11:23:40', '', 0, 'http://www.sage-exam.test:8888/?p=34', 5, 'nav_menu_item', '', 0),
(35, 1, '2020-05-25 15:37:27', '2020-05-25 14:37:27', ' ', '', '', 'publish', 'closed', 'closed', '', '35', '', '', '2020-05-26 10:06:57', '2020-05-26 09:06:57', '', 0, 'http://www.sage-exam.test:8888/?p=35', 4, 'nav_menu_item', '', 0),
(36, 1, '2020-05-25 15:37:27', '2020-05-25 14:37:27', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2020-05-26 10:06:57', '2020-05-26 09:06:57', '', 0, 'http://www.sage-exam.test:8888/?p=36', 1, 'nav_menu_item', '', 0),
(37, 1, '2020-05-25 15:37:27', '2020-05-25 14:37:27', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2020-05-26 10:06:57', '2020-05-26 09:06:57', '', 0, 'http://www.sage-exam.test:8888/?p=37', 2, 'nav_menu_item', '', 0),
(38, 1, '2020-05-25 15:46:39', '2020-05-25 14:46:39', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2020-05-25 15:46:39', '2020-05-25 14:46:39', '', 0, 'http://www.sage-exam.test:8888/?page_id=38', 0, 'page', '', 0),
(39, 1, '2020-05-25 15:46:39', '2020-05-25 14:46:39', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '38-revision-v1', '', '', '2020-05-25 15:46:39', '2020-05-25 14:46:39', '', 38, 'http://www.sage-exam.test:8888/2020/05/25/38-revision-v1/', 0, 'revision', '', 0),
(40, 1, '2020-05-25 15:48:10', '2020-05-25 14:48:10', ' ', '', '', 'publish', 'closed', 'closed', '', '40', '', '', '2020-05-26 10:06:57', '2020-05-26 09:06:57', '', 0, 'http://www.sage-exam.test:8888/?p=40', 3, 'nav_menu_item', '', 0),
(41, 1, '2020-05-25 16:17:54', '0000-00-00 00:00:00', '', 'Logo', '', 'draft', 'closed', 'closed', '', '', '', '', '2020-05-25 16:17:54', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?p=41', 1, 'nav_menu_item', '', 0),
(45, 1, '2020-05-26 10:09:12', '2020-05-26 09:09:12', '', 'facebookcircle', '', 'inherit', 'open', 'closed', '', 'facebookcircle', '', '', '2020-05-26 14:41:29', '2020-05-26 13:41:29', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/facebookcircle.png', 0, 'attachment', 'image/png', 0),
(46, 1, '2020-05-26 12:04:24', '2020-05-26 11:04:24', 'http://www.sage-exam.test:8888/app/uploads/2020/05/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2020-05-26 12:04:24', '2020-05-26 11:04:24', '', 0, 'http://www.sage-exam.test:8888/app/uploads/2020/05/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(47, 1, '2020-05-26 12:09:26', '2020-05-26 11:09:26', '{\n    \"site_icon\": {\n        \"value\": 46,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-26 11:04:55\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd7a88222-e00a-4708-b080-26e32b45fb3a', '', '', '2020-05-26 12:09:26', '2020-05-26 11:09:26', '', 0, 'http://www.sage-exam.test:8888/?p=47', 0, 'customize_changeset', '', 0),
(48, 1, '2020-05-26 12:18:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 12:18:44', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2020-05-26 12:25:02', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 12:25:02', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=49', 0, 'acf-field-group', '', 0),
(50, 1, '2020-05-26 12:25:22', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 12:25:22', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=50', 0, 'acf-field-group', '', 0),
(51, 1, '2020-05-26 12:35:24', '2020-05-26 11:35:24', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Header Fields', 'header-fields', 'publish', 'closed', 'closed', '', 'group_5eccfdfd541f4', '', '', '2020-05-26 15:21:26', '2020-05-26 14:21:26', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&#038;p=51', 0, 'acf-field-group', '', 0),
(52, 1, '2020-05-26 12:35:24', '2020-05-26 11:35:24', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'Header link', 'header_link', 'publish', 'closed', 'closed', '', 'field_5eccfe32a8691', '', '', '2020-05-26 13:32:54', '2020-05-26 12:32:54', '', 51, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=52', 0, 'acf-field', '', 0),
(53, 1, '2020-05-26 12:38:03', '2020-05-26 11:38:03', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 12:38:03', '2020-05-26 11:38:03', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(54, 1, '2020-05-26 13:50:38', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 13:50:38', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=54', 0, 'acf-field-group', '', 0),
(55, 1, '2020-05-26 14:05:44', '2020-05-26 13:05:44', 'http://www.sage-exam.test:8888/app/uploads/2020/05/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2020-05-26 14:05:44', '2020-05-26 13:05:44', '', 0, 'http://www.sage-exam.test:8888/app/uploads/2020/05/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2020-05-26 14:06:34', '0000-00-00 00:00:00', '{\n    \"site_icon\": {\n        \"value\": 55,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-05-26 13:06:34\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', '2e5941af-2083-484c-b021-69412847f597', '', '', '2020-05-26 14:06:34', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?p=56', 0, 'customize_changeset', '', 0),
(57, 1, '2020-05-26 14:16:06', '2020-05-26 13:16:06', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:10:\"menu-24x24\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Facebook link', 'facebook_link', 'publish', 'closed', 'closed', '', 'field_5ecd162ae3803', '', '', '2020-05-26 14:50:34', '2020-05-26 13:50:34', '', 51, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=57', 1, 'acf-field', '', 0),
(60, 1, '2020-05-26 14:41:29', '2020-05-26 13:41:29', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 14:41:29', '2020-05-26 13:41:29', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(61, 1, '2020-05-26 15:15:31', '2020-05-26 14:15:31', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Instagram link', 'instagram_link', 'publish', 'closed', 'closed', '', 'field_5ecd24573bd3c', '', '', '2020-05-26 15:15:48', '2020-05-26 14:15:48', '', 51, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=61', 2, 'acf-field', '', 0),
(63, 1, '2020-05-26 15:16:16', '2020-05-26 14:16:16', '', 'instacircle1', '', 'inherit', 'open', 'closed', '', 'instacircle1', '', '', '2020-05-26 15:16:16', '2020-05-26 14:16:16', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/instacircle1.png', 0, 'attachment', 'image/png', 0),
(64, 1, '2020-05-26 15:16:32', '2020-05-26 14:16:32', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 15:16:32', '2020-05-26 14:16:32', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(65, 1, '2020-05-26 15:20:44', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 15:20:44', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=65', 0, 'acf-field-group', '', 0),
(66, 1, '2020-05-26 15:20:46', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-05-26 15:20:46', '0000-00-00 00:00:00', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&p=66', 0, 'acf-field-group', '', 0),
(67, 1, '2020-05-26 15:21:26', '2020-05-26 14:21:26', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Site logo', 'site_logo', 'publish', 'closed', 'closed', '', 'field_5ecd25ce81f11', '', '', '2020-05-26 15:21:26', '2020-05-26 14:21:26', '', 51, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=67', 3, 'acf-field', '', 0),
(68, 1, '2020-05-26 15:21:26', '2020-05-26 14:21:26', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', '', '', 'publish', 'closed', 'closed', '', 'field_5ecd25e181f12', '', '', '2020-05-26 15:21:26', '2020-05-26 14:21:26', '', 51, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=68', 4, 'acf-field', '', 0),
(69, 1, '2020-05-26 15:25:31', '2020-05-26 14:25:31', '<!-- wp:paragraph -->\r\n<p>NEW CONTENT</p>\r\n<p>&nbsp;</p>\r\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like piña coladas. (And gettin\' caught in the rain.)</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>...or something like this:</p>\r\n<!-- /wp:paragraph -->\r\n\r\n<!-- wp:quote -->\r\n<blockquote class=\"wp-block-quote\">\r\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\r\n</blockquote>\r\n<!-- /wp:quote -->\r\n\r\n<!-- wp:paragraph -->\r\n<p>As a new WordPress user, you should go to <a href=\"http://www.sage-exam.test:8888/wp/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\r\n<!-- /wp:paragraph -->', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 15:25:31', '2020-05-26 14:25:31', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2020-05-26 15:45:05', '2020-05-26 14:45:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 15:45:05', '2020-05-26 14:45:05', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(71, 1, '2020-05-26 15:45:40', '2020-05-26 14:45:40', '', 'Stress Free, Travel Free.', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 15:45:40', '2020-05-26 14:45:40', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2020-05-26 15:46:27', '2020-05-26 14:46:27', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 15:46:27', '2020-05-26 14:46:27', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(73, 1, '2020-05-26 15:49:38', '2020-05-26 14:49:38', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Hero Panel', 'hero-panel', 'publish', 'closed', 'closed', '', 'group_5ecd2c45d5698', '', '', '2020-05-26 21:40:09', '2020-05-26 20:40:09', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&#038;p=73', 0, 'acf-field-group', '', 0),
(74, 1, '2020-05-26 15:49:38', '2020-05-26 14:49:38', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:25:\"Stress Free, Travel Free.\";s:11:\"placeholder\";s:25:\"Stress Free, Travel Free.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'First title', 'first_title', 'publish', 'closed', 'closed', '', 'field_5ecd2c52a6062', '', '', '2020-05-26 16:31:03', '2020-05-26 15:31:03', '', 73, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=74', 0, 'acf-field', '', 0),
(76, 1, '2020-05-26 16:34:14', '2020-05-26 15:34:14', '<code></code>', 'Home', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2020-05-26 16:34:14', '2020-05-26 15:34:14', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-autosave-v1/', 0, 'revision', '', 0),
(77, 1, '2020-05-26 17:28:21', '2020-05-26 16:28:21', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Footer fields', 'footer-fields', 'publish', 'closed', 'closed', '', 'group_5ecd435bb5275', '', '', '2020-05-26 18:39:20', '2020-05-26 17:39:20', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&#038;p=77', 0, 'acf-field-group', '', 0),
(78, 1, '2020-05-26 17:28:21', '2020-05-26 16:28:21', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Footer img', 'footer_img', 'publish', 'closed', 'closed', '', 'field_5ecd436e12bcd', '', '', '2020-05-26 18:39:20', '2020-05-26 17:39:20', '', 77, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=78', 0, 'acf-field', '', 0),
(80, 1, '2020-05-26 17:30:56', '2020-05-26 16:30:56', '', 'footer-background', '', 'inherit', 'open', 'closed', '', 'footer-background', '', '', '2020-05-26 17:30:56', '2020-05-26 16:30:56', '', 17, 'http://www.sage-exam.test:8888/app/uploads/2020/05/footer-background.png', 0, 'attachment', 'image/png', 0),
(81, 1, '2020-05-26 17:45:15', '2020-05-26 16:45:15', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 17:45:15', '2020-05-26 16:45:15', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(82, 1, '2020-05-26 20:20:36', '2020-05-26 19:20:36', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"Exams. D\";s:11:\"placeholder\";s:8:\"Exams. D\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Second title', 'second_title', 'publish', 'closed', 'closed', '', 'field_5ecd6bd7eb1a2', '', '', '2020-05-26 21:32:54', '2020-05-26 20:32:54', '', 73, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=82', 1, 'acf-field', '', 0),
(84, 1, '2020-05-26 21:32:42', '2020-05-26 20:32:42', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:15:\"ne Differently.\";s:11:\"placeholder\";s:15:\"ne Differently.\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Second title (copy)', 'second_title_copy', 'publish', 'closed', 'closed', '', 'field_5ecd7cdbe17d5', '', '', '2020-05-26 21:32:42', '2020-05-26 20:32:42', '', 73, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=84', 2, 'acf-field', '', 0),
(85, 1, '2020-05-26 21:34:38', '2020-05-26 20:34:38', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 21:34:38', '2020-05-26 20:34:38', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(86, 1, '2020-05-26 21:38:26', '2020-05-26 20:38:26', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'find an exam', 'find_an_exam', 'publish', 'closed', 'closed', '', 'field_5ecd7e1dd789d', '', '', '2020-05-26 21:39:42', '2020-05-26 20:39:42', '', 73, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=86', 3, 'acf-field', '', 0),
(87, 1, '2020-05-26 21:38:57', '2020-05-26 20:38:57', 'a:6:{s:4:\"type\";s:4:\"link\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";}', 'become a partner', 'become_a_partner', 'publish', 'closed', 'closed', '', 'field_5ecd7e46555d4', '', '', '2020-05-26 21:39:52', '2020-05-26 20:39:52', '', 73, 'http://www.sage-exam.test:8888/?post_type=acf-field&#038;p=87', 4, 'acf-field', '', 0),
(88, 1, '2020-05-26 21:43:05', '2020-05-26 20:43:05', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-26 21:43:05', '2020-05-26 20:43:05', '', 2, 'http://www.sage-exam.test:8888/2020/05/26/2-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2020-05-26 23:32:19', '2020-05-26 22:32:19', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"page\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'music board carousel', 'music-board-carousel', 'publish', 'closed', 'closed', '', 'group_5ecd98ca5f0b6', '', '', '2020-05-26 23:34:17', '2020-05-26 22:34:17', '', 0, 'http://www.sage-exam.test:8888/?post_type=acf-field-group&#038;p=89', 0, 'acf-field-group', '', 0),
(90, 1, '2020-05-26 23:32:19', '2020-05-26 22:32:19', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'creative united', 'creative_united', 'publish', 'closed', 'closed', '', 'field_5ecd98d1f1356', '', '', '2020-05-26 23:32:19', '2020-05-26 22:32:19', '', 89, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=90', 0, 'acf-field', '', 0),
(91, 1, '2020-05-26 23:32:53', '2020-05-26 22:32:53', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'icmp', 'icmp', 'publish', 'closed', 'closed', '', 'field_5ecd990131446', '', '', '2020-05-26 23:32:53', '2020-05-26 22:32:53', '', 89, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=91', 1, 'acf-field', '', 0),
(92, 1, '2020-05-26 23:33:23', '2020-05-26 22:33:23', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'orange', 'orange', 'publish', 'closed', 'closed', '', 'field_5ecd991922978', '', '', '2020-05-26 23:33:23', '2020-05-26 22:33:23', '', 89, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=92', 2, 'acf-field', '', 0),
(93, 1, '2020-05-26 23:33:55', '2020-05-26 22:33:55', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'orange amp', 'orange_amp', 'publish', 'closed', 'closed', '', 'field_5ecd993fda6b0', '', '', '2020-05-26 23:33:55', '2020-05-26 22:33:55', '', 89, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=93', 3, 'acf-field', '', 0),
(94, 1, '2020-05-26 23:34:17', '2020-05-26 22:34:17', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:5:\"array\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'youth music', 'youth_music', 'publish', 'closed', 'closed', '', 'field_5ecd99588a68b', '', '', '2020-05-26 23:34:17', '2020-05-26 22:34:17', '', 89, 'http://www.sage-exam.test:8888/?post_type=acf-field&p=94', 4, 'acf-field', '', 0),
(99, 1, '2020-05-26 23:39:08', '2020-05-26 22:39:08', '', 'Image 13@2x', '', 'inherit', 'open', 'closed', '', 'image-132x', '', '', '2020-05-27 10:58:08', '2020-05-27 09:58:08', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/Image-13@2x.png', 0, 'attachment', 'image/png', 0),
(100, 1, '2020-05-26 23:39:10', '2020-05-26 22:39:10', '', 'Image 12@2x', '', 'inherit', 'open', 'closed', '', 'image-122x', '', '', '2020-05-27 10:58:00', '2020-05-27 09:58:00', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/Image-12@2x.png', 0, 'attachment', 'image/png', 0),
(102, 1, '2020-05-26 23:39:11', '2020-05-26 22:39:11', '', 'ym@2x', '', 'inherit', 'open', 'closed', '', 'ym2x', '', '', '2020-05-27 10:58:16', '2020-05-27 09:58:16', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/ym@2x.png', 0, 'attachment', 'image/png', 0),
(103, 1, '2020-05-26 23:39:12', '2020-05-26 22:39:12', '', 'Image 11@2x', '', 'inherit', 'open', 'closed', '', 'image-112x', '', '', '2020-05-27 10:57:52', '2020-05-27 09:57:52', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/Image-11@2x.png', 0, 'attachment', 'image/png', 0),
(110, 1, '2020-05-27 01:29:49', '2020-05-27 00:29:49', '', 'Image 10@2x', '', 'inherit', 'open', 'closed', '', 'image-102x-10', '', '', '2020-05-27 10:32:49', '2020-05-27 09:32:49', '', 2, 'http://www.sage-exam.test:8888/app/uploads/2020/05/Image-10@2x-9.png', 0, 'attachment', 'image/png', 0),
(111, 1, '2020-05-27 10:32:58', '2020-05-27 09:32:58', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-27 10:32:58', '2020-05-27 09:32:58', '', 2, 'http://www.sage-exam.test:8888/2020/05/27/2-revision-v1/', 0, 'revision', '', 0),
(112, 1, '2020-05-27 10:51:25', '2020-05-27 09:51:25', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-27 10:51:25', '2020-05-27 09:51:25', '', 2, 'http://www.online-music-exam.test:8888/2020/05/27/2-revision-v1/', 0, 'revision', '', 0),
(113, 1, '2020-05-27 10:58:20', '2020-05-27 09:58:20', '', 'Home', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2020-05-27 10:58:20', '2020-05-27 09:58:20', '', 2, 'http://www.online-music-exam.test:8888/2020/05/27/2-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorised', 'uncategorised', 0),
(2, 'Top bar', 'top-bar', 0),
(3, 'Blog', 'blog', 0),
(4, 'Footer bar', 'footer-bar', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(21, 2, 0),
(22, 2, 0),
(23, 2, 0),
(25, 2, 0),
(26, 3, 0),
(34, 2, 0),
(35, 4, 0),
(36, 4, 0),
(37, 4, 0),
(40, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'category', '', 0, 0),
(4, 4, 'nav_menu', '', 0, 4);

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'natelloyd'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"72ec0bcd35018660618285e387c49576fd017d5453b3305f8b1a4d1f29186e3e\";a:4:{s:10:\"expiration\";i:1590697006;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590524206;}s:64:\"469631c62645405ed72d47edb5f633473443fa625e28d7e3909f08c8f2f6aae9\";a:4:{s:10:\"expiration\";i:1590712106;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.1 Safari/605.1.15\";s:5:\"login\";i:1590539306;}s:64:\"3c423218b9dfbf4036bb0ff1b69d30b89cc434c358da805c98b80803f43b1b58\";a:4:{s:10:\"expiration\";i:1590745792;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/83.0.4103.61 Safari/537.36\";s:5:\"login\";i:1590572992;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'closedpostboxes_dashboard', 'a:3:{i:0;s:18:\"dashboard_activity\";i:1;s:21:\"dashboard_quick_press\";i:2;s:17:\"dashboard_primary\";}'),
(19, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(20, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(21, 1, 'metaboxhidden_nav-menus', 'a:1:{i:0;s:12:\"add-post_tag\";}'),
(22, 1, 'nav_menu_recently_edited', '2'),
(23, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(24, 1, 'wp_user-settings-time', '1590504507'),
(25, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:60:\"dashboard_right_now,dashboard_site_health,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:0:\"\";s:7:\"column4\";s:0:\"\";}'),
(26, 1, 'closedpostboxes_acf-field-group', 'a:1:{i:0;s:23:\"acf-field-group-options\";}'),
(27, 1, 'metaboxhidden_acf-field-group', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(28, 1, 'closedpostboxes_page', 'a:3:{i:0;s:23:\"acf-group_5ecd435bb5275\";i:1;s:23:\"acf-group_5eccfdfd541f4\";i:2;s:23:\"acf-group_5ecd2c45d5698\";}'),
(29, 1, 'metaboxhidden_page', 'a:4:{i:0;s:16:\"commentstatusdiv\";i:1;s:11:\"commentsdiv\";i:2;s:7:\"slugdiv\";i:3;s:9:\"authordiv\";}');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'natelloyd', '$2y$10$Qi/CD0D0bgQGWUBgV36TjuFYuemcX4e8xSx7SSRXZSB1G9emU3rlm', 'natelloyd', 'nathanaellloyd@live.com', 'http://www.sage-exam.test:8888/wp', '2020-05-24 19:29:40', '', 0, 'natelloyd');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=275;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=508;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
