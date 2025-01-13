# WordPress MySQL database migration
#
# Generated: Monday 13. January 2025 20:59 UTC
# Hostname: localhost
# Database: `local`
# URL: //aymericbdev.local
# Path: D:\\localsites\\aymericbdev\\app\\public
# Tables: wp_commentmeta, wp_comments, wp_ewwwio_images, wp_ewwwio_queue, wp_links, wp_options, wp_postmeta, wp_posts, wp_term_relationships, wp_term_taxonomy, wp_termmeta, wp_terms, wp_usermeta, wp_users
# Table Prefix: wp_
# Post Types: revision, acf-field, acf-field-group, acf-taxonomy, attachment, customize_changeset, image, nav_menu_item, page, post, wpcf7_contact_form
# Protocol: http
# Multisite: false
# Subsite Export: false
# --------------------------------------------------------

/*!40101 SET NAMES utf8 */;

SET sql_mode='NO_AUTO_VALUE_ON_ZERO';



#
# Delete any existing table `wp_commentmeta`
#

DROP TABLE IF EXISTS `wp_commentmeta`;


#
# Table structure of table `wp_commentmeta`
#

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `comment_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_commentmeta`
#

#
# End of data contents of table `wp_commentmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_comments`
#

DROP TABLE IF EXISTS `wp_comments`;


#
# Table structure of table `wp_comments`
#

CREATE TABLE `wp_comments` (
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_comments`
#
INSERT INTO `wp_comments` ( `comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-01-06 06:58:57', '2025-01-06 06:58:57', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href="https://gravatar.com/">Gravatar</a>.', 0, '1', '', 'comment', 0, 0) ;

#
# End of data contents of table `wp_comments`
# --------------------------------------------------------



#
# Delete any existing table `wp_ewwwio_images`
#

DROP TABLE IF EXISTS `wp_ewwwio_images`;


#
# Table structure of table `wp_ewwwio_images`
#

CREATE TABLE `wp_ewwwio_images` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `gallery` varchar(10) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `resize` varchar(75) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `converted` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `image_size` int(10) unsigned DEFAULT NULL,
  `orig_size` int(10) unsigned DEFAULT NULL,
  `backup` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `retrieve` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `level` int(10) unsigned DEFAULT NULL,
  `resized_width` smallint(5) unsigned DEFAULT NULL,
  `resized_height` smallint(5) unsigned DEFAULT NULL,
  `resize_error` tinyint(3) unsigned DEFAULT NULL,
  `webp_size` int(10) unsigned DEFAULT NULL,
  `webp_error` tinyint(3) unsigned DEFAULT NULL,
  `pending` tinyint(4) NOT NULL DEFAULT '0',
  `updates` int(10) unsigned DEFAULT NULL,
  `updated` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `trace` blob,
  PRIMARY KEY (`id`),
  KEY `path` (`path`(191)),
  KEY `attachment_info` (`gallery`(3),`attachment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=73 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_ewwwio_images`
#
INSERT INTO `wp_ewwwio_images` ( `id`, `attachment_id`, `gallery`, `resize`, `path`, `converted`, `image_size`, `orig_size`, `backup`, `retrieve`, `level`, `resized_width`, `resized_height`, `resize_error`, `webp_size`, `webp_error`, `pending`, `updates`, `updated`, `trace`) VALUES
(1, 37, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiVideo-.jpg', '', 187756, 204775, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:39:40', NULL),
(2, 37, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiVideo--300x167.jpg', '', 12114, 12373, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:39:41', NULL),
(3, 37, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiVideo--1024x571.jpg', '', 67933, 70220, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:39:42', NULL),
(4, 37, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiVideo--150x150.jpg', '', 6362, 6454, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:39:43', NULL),
(5, 37, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiVideo--768x428.jpg', '', 46331, 47781, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:39:44', NULL),
(6, 40, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeLieu-.jpg', '', 155308, 172023, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:52', NULL),
(7, 40, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeLieu--300x204.jpg', '', 9264, 9341, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:52', NULL),
(8, 40, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeLieu--1024x696.jpg', '', 50949, 53663, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:54', NULL),
(9, 40, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeLieu--150x150.jpg', '', 4105, 4141, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:55', NULL),
(10, 40, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeLieu--768x522.jpg', '', 34558, 35916, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:56', NULL),
(11, 41, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLesPersonnages-.jpg', '', 113086, 129683, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:58', NULL),
(12, 41, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLesPersonnages--300x200.jpg', '', 8804, 8957, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:54:59', NULL),
(13, 41, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLesPersonnages--1024x683.jpg', '', 41508, 44108, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:00', NULL),
(14, 41, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLesPersonnages--150x150.jpg', '', 4698, 4734, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:01', NULL),
(15, 41, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLesPersonnages--768x512.jpg', '', 28628, 30043, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:02', NULL),
(16, 42, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeStudio-.jpg', '', 185222, 214990, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:06', NULL),
(17, 42, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeStudio--300x208.jpg', '', 9649, 10030, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:07', NULL),
(18, 42, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeStudio--1024x711.jpg', '', 64924, 70654, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:08', NULL),
(19, 42, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeStudio--150x150.jpg', '', 4849, 4933, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:09', NULL),
(20, 42, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLeStudio--768x533.jpg', '', 41505, 44837, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:10', NULL),
(21, 43, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLhistoire-.jpg', '', 191034, 222485, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:13', NULL),
(22, 43, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLhistoire--300x208.jpg', '', 10503, 10881, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:13', NULL),
(23, 43, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLhistoire--1024x709.jpg', '', 73516, 79319, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:15', NULL),
(24, 43, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLhistoire--150x150.jpg', '', 4792, 4892, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:16', NULL),
(25, 43, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiLhistoire--768x532.jpg', '', 47167, 50519, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:17', NULL),
(26, 44, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiMenu-.jpg', '', 79825, 101921, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:19', NULL),
(27, 44, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiMenu--300x208.jpg', '', 6515, 6884, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:20', NULL),
(28, 44, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiMenu--1024x710.jpg', '', 31403, 35563, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:21', NULL),
(29, 44, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiMenu--150x150.jpg', '', 3341, 3426, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:22', NULL),
(30, 44, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/ProjetKoukakiMenu--768x532.jpg', '', 21207, 23567, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-08 09:55:23', NULL),
(31, 49, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader.jpg', '', 371454, 398631, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:03', NULL),
(32, 49, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-300x163.jpg', '', 12242, 12572, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:04', NULL),
(33, 49, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-1024x558.jpg', '', 82080, 83815, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:06', NULL),
(34, 49, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-150x150.jpg', '', 5863, 5938, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:07', NULL),
(35, 49, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-768x418.jpg', '', 53299, 54444, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:08', NULL),
(36, 49, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-1536x837.jpg', '', 150514, 153608, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:10', NULL),
(37, 49, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleHeader-1568x854.jpg', '', 153615, 156554, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:13', NULL),
(38, 50, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto.jpg', '', 285693, 343700, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:17', NULL),
(39, 50, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-300x162.jpg', '', 6777, 7147, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:18', NULL),
(40, 50, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-1024x554.jpg', '', 57196, 63678, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:19', NULL),
(41, 50, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-150x150.jpg', '', 3077, 3190, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:20', NULL),
(42, 50, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-768x416.jpg', '', 33796, 37175, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:21', NULL),
(43, 50, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-1536x831.jpg', '', 114599, 127435, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:23', NULL),
(44, 50, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto-1568x849.jpg', '', 115866, 129997, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:24', NULL),
(45, 51, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact.jpg', '', 235007, 257330, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:28', NULL),
(46, 51, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-300x166.jpg', '', 8879, 8961, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:29', NULL),
(47, 51, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-1024x566.jpg', '', 57088, 58653, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:30', NULL),
(48, 51, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-150x150.jpg', '', 4082, 4118, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:31', NULL),
(49, 51, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-768x424.jpg', '', 37050, 38006, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:32', NULL),
(50, 51, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-1536x848.jpg', '', 99951, 103807, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:34', NULL),
(51, 51, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact-1568x866.jpg', '', 103549, 107284, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:36', NULL),
(52, 52, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax.jpg', '', 399927, 439460, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:39', NULL),
(53, 52, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-300x164.jpg', '', 14195, 14789, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:40', NULL),
(54, 52, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-1024x559.jpg', '', 95100, 98858, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:42', NULL),
(55, 52, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-150x150.jpg', '', 7243, 7482, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:43', NULL),
(56, 52, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-768x419.jpg', '', 61592, 64151, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:44', NULL),
(57, 52, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-1536x839.jpg', '', 173308, 179615, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:46', NULL),
(58, 52, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax-1568x856.jpg', '', 179110, 185352, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:48', NULL),
(59, 53, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox.jpg', '', 404501, 441467, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:52', NULL),
(60, 53, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-300x166.jpg', '', 14632, 15161, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:53', NULL),
(61, 53, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-1024x566.jpg', '', 98022, 101071, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:55', NULL),
(62, 53, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-150x150.jpg', '', 7311, 7539, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:56', NULL),
(63, 53, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-768x424.jpg', '', 64429, 66428, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:57', NULL),
(64, 53, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-1536x849.jpg', '', 178102, 182994, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:23:59', NULL),
(65, 53, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleLightbox-1568x867.jpg', '', 183419, 188325, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:01', NULL),
(66, 54, 'media', 'full', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos.jpg', '', 384444, 421586, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:07', NULL),
(67, 54, 'media', 'medium', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-300x164.jpg', '', 12976, 13473, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:08', NULL),
(68, 54, 'media', 'large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-1024x559.jpg', '', 89355, 92750, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:09', NULL),
(69, 54, 'media', 'thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-150x150.jpg', '', 6250, 6475, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:10', NULL),
(70, 54, 'media', 'medium_large', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-768x419.jpg', '', 57047, 59414, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:11', NULL),
(71, 54, 'media', '1536x1536', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-1536x838.jpg', '', 165032, 171171, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:13', NULL),
(72, 54, 'media', 'post-thumbnail', 'ABSPATHwp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos-1568x856.jpg', '', 170182, 176599, '', NULL, 10, NULL, NULL, NULL, NULL, NULL, 0, 1, '2025-01-13 14:24:15', NULL) ;

#
# End of data contents of table `wp_ewwwio_images`
# --------------------------------------------------------



#
# Delete any existing table `wp_ewwwio_queue`
#

DROP TABLE IF EXISTS `wp_ewwwio_queue`;


#
# Table structure of table `wp_ewwwio_queue`
#

CREATE TABLE `wp_ewwwio_queue` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `attachment_id` bigint(20) unsigned DEFAULT NULL,
  `gallery` varchar(20) DEFAULT NULL,
  `scanned` tinyint(4) NOT NULL DEFAULT '0',
  `new` tinyint(4) NOT NULL DEFAULT '0',
  `convert_once` tinyint(4) NOT NULL DEFAULT '0',
  `force_reopt` tinyint(4) NOT NULL DEFAULT '0',
  `force_smart` tinyint(4) NOT NULL DEFAULT '0',
  `webp_only` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `attachment_info` (`gallery`(3),`attachment_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


#
# Data contents of table `wp_ewwwio_queue`
#

#
# End of data contents of table `wp_ewwwio_queue`
# --------------------------------------------------------



#
# Delete any existing table `wp_links`
#

DROP TABLE IF EXISTS `wp_links`;


#
# Table structure of table `wp_links`
#

CREATE TABLE `wp_links` (
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


#
# Data contents of table `wp_links`
#

#
# End of data contents of table `wp_links`
# --------------------------------------------------------



#
# Delete any existing table `wp_options`
#

DROP TABLE IF EXISTS `wp_options`;


#
# Table structure of table `wp_options`
#

CREATE TABLE `wp_options` (
  `option_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=786 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_options`
#
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:11:{i:1736146738;a:2:{s:32:"recovery_mode_clean_expired_keys";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:34:"wp_privacy_delete_old_export_files";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"hourly";s:4:"args";a:0:{}s:8:"interval";i:3600;}}}i:1736146770;a:3:{s:19:"wp_scheduled_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:25:"delete_expired_transients";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}s:21:"wp_update_user_counts";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736146771;a:1:{s:30:"wp_scheduled_auto_draft_delete";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:5:"daily";s:4:"args";a:0:{}s:8:"interval";i:86400;}}}i:1736146830;a:1:{s:28:"wp_update_comment_type_batch";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:2:{s:8:"schedule";b:0;s:4:"args";a:0:{}}}}i:1736147164;a:1:{s:30:"wp_delete_temp_updater_backups";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1736150337;a:1:{s:16:"wp_version_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736152137;a:1:{s:17:"wp_update_plugins";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736153937;a:1:{s:16:"wp_update_themes";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:10:"twicedaily";s:4:"args";a:0:{}s:8:"interval";i:43200;}}}i:1736233138;a:1:{s:30:"wp_site_health_scheduled_check";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}i:1736233412;a:2:{s:39:"ewww_image_optimizer_relative_migration";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:34:"ewwwio_relative_migration_interval";s:4:"args";a:0:{}s:8:"interval";i:300;}}s:27:"acf_update_site_health_data";a:1:{s:32:"40cd750bba9870f18aada2478b24840a";a:3:{s:8:"schedule";s:6:"weekly";s:4:"args";a:0:{}s:8:"interval";i:604800;}}}s:7:"version";i:2;}', 'on'),
(2, 'siteurl', 'http://aymericbdev.local', 'on'),
(3, 'home', 'http://aymericbdev.local', 'on'),
(4, 'blogname', 'Aymeric Bienfait Dev Web', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'camy.nodream@hotmail.fr', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'm/d/Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:122:{s:11:"^wp-json/?$";s:22:"index.php?rest_route=/";s:14:"^wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:21:"^index.php/wp-json/?$";s:22:"index.php?rest_route=/";s:24:"^index.php/wp-json/(.*)?";s:33:"index.php?rest_route=/$matches[1]";s:17:"^wp-sitemap\\.xml$";s:23:"index.php?sitemap=index";s:17:"^wp-sitemap\\.xsl$";s:36:"index.php?sitemap-stylesheet=sitemap";s:23:"^wp-sitemap-index\\.xsl$";s:34:"index.php?sitemap-stylesheet=index";s:48:"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$";s:75:"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]";s:34:"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$";s:47:"index.php?sitemap=$matches[1]&paged=$matches[2]";s:47:"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:42:"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$";s:52:"index.php?category_name=$matches[1]&feed=$matches[2]";s:23:"category/(.+?)/embed/?$";s:46:"index.php?category_name=$matches[1]&embed=true";s:35:"category/(.+?)/page/?([0-9]{1,})/?$";s:53:"index.php?category_name=$matches[1]&paged=$matches[2]";s:17:"category/(.+?)/?$";s:35:"index.php?category_name=$matches[1]";s:44:"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:39:"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?tag=$matches[1]&feed=$matches[2]";s:20:"tag/([^/]+)/embed/?$";s:36:"index.php?tag=$matches[1]&embed=true";s:32:"tag/([^/]+)/page/?([0-9]{1,})/?$";s:43:"index.php?tag=$matches[1]&paged=$matches[2]";s:14:"tag/([^/]+)/?$";s:25:"index.php?tag=$matches[1]";s:45:"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:40:"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?post_format=$matches[1]&feed=$matches[2]";s:21:"type/([^/]+)/embed/?$";s:44:"index.php?post_format=$matches[1]&embed=true";s:33:"type/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?post_format=$matches[1]&paged=$matches[2]";s:15:"type/([^/]+)/?$";s:33:"index.php?post_format=$matches[1]";s:48:"langage/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?langage=$matches[1]&feed=$matches[2]";s:43:"langage/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:46:"index.php?langage=$matches[1]&feed=$matches[2]";s:24:"langage/([^/]+)/embed/?$";s:40:"index.php?langage=$matches[1]&embed=true";s:36:"langage/([^/]+)/page/?([0-9]{1,})/?$";s:47:"index.php?langage=$matches[1]&paged=$matches[2]";s:18:"langage/([^/]+)/?$";s:29:"index.php?langage=$matches[1]";s:47:"projet/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?projet=$matches[1]&feed=$matches[2]";s:42:"projet/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:45:"index.php?projet=$matches[1]&feed=$matches[2]";s:23:"projet/([^/]+)/embed/?$";s:39:"index.php?projet=$matches[1]&embed=true";s:35:"projet/([^/]+)/page/?([0-9]{1,})/?$";s:46:"index.php?projet=$matches[1]&paged=$matches[2]";s:17:"projet/([^/]+)/?$";s:28:"index.php?projet=$matches[1]";s:33:"image/[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:43:"image/[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:63:"image/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"image/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:58:"image/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:39:"image/[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:22:"image/([^/]+)/embed/?$";s:38:"index.php?image=$matches[1]&embed=true";s:26:"image/([^/]+)/trackback/?$";s:32:"index.php?image=$matches[1]&tb=1";s:34:"image/([^/]+)/page/?([0-9]{1,})/?$";s:45:"index.php?image=$matches[1]&paged=$matches[2]";s:41:"image/([^/]+)/comment-page-([0-9]{1,})/?$";s:45:"index.php?image=$matches[1]&cpage=$matches[2]";s:30:"image/([^/]+)(?:/([0-9]+))?/?$";s:44:"index.php?image=$matches[1]&page=$matches[2]";s:22:"image/[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:32:"image/[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:52:"image/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"image/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:47:"image/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:28:"image/[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:12:"robots\\.txt$";s:18:"index.php?robots=1";s:13:"favicon\\.ico$";s:19:"index.php?favicon=1";s:12:"sitemap\\.xml";s:24:"index.php??sitemap=index";s:48:".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$";s:18:"index.php?feed=old";s:20:".*wp-app\\.php(/.*)?$";s:19:"index.php?error=403";s:18:".*wp-register.php$";s:23:"index.php?register=true";s:32:"feed/(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:27:"(feed|rdf|rss|rss2|atom)/?$";s:27:"index.php?&feed=$matches[1]";s:8:"embed/?$";s:21:"index.php?&embed=true";s:20:"page/?([0-9]{1,})/?$";s:28:"index.php?&paged=$matches[1]";s:27:"comment-page-([0-9]{1,})/?$";s:39:"index.php?&page_id=12&cpage=$matches[1]";s:41:"comments/feed/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:36:"comments/(feed|rdf|rss|rss2|atom)/?$";s:42:"index.php?&feed=$matches[1]&withcomments=1";s:17:"comments/embed/?$";s:21:"index.php?&embed=true";s:44:"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:39:"search/(.+)/(feed|rdf|rss|rss2|atom)/?$";s:40:"index.php?s=$matches[1]&feed=$matches[2]";s:20:"search/(.+)/embed/?$";s:34:"index.php?s=$matches[1]&embed=true";s:32:"search/(.+)/page/?([0-9]{1,})/?$";s:41:"index.php?s=$matches[1]&paged=$matches[2]";s:14:"search/(.+)/?$";s:23:"index.php?s=$matches[1]";s:47:"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:42:"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:50:"index.php?author_name=$matches[1]&feed=$matches[2]";s:23:"author/([^/]+)/embed/?$";s:44:"index.php?author_name=$matches[1]&embed=true";s:35:"author/([^/]+)/page/?([0-9]{1,})/?$";s:51:"index.php?author_name=$matches[1]&paged=$matches[2]";s:17:"author/([^/]+)/?$";s:33:"index.php?author_name=$matches[1]";s:69:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:64:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:80:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]";s:45:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$";s:74:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true";s:57:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:81:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]";s:39:"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$";s:63:"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]";s:56:"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:51:"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$";s:64:"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]";s:32:"([0-9]{4})/([0-9]{1,2})/embed/?$";s:58:"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true";s:44:"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$";s:65:"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]";s:26:"([0-9]{4})/([0-9]{1,2})/?$";s:47:"index.php?year=$matches[1]&monthnum=$matches[2]";s:43:"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:38:"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?year=$matches[1]&feed=$matches[2]";s:19:"([0-9]{4})/embed/?$";s:37:"index.php?year=$matches[1]&embed=true";s:31:"([0-9]{4})/page/?([0-9]{1,})/?$";s:44:"index.php?year=$matches[1]&paged=$matches[2]";s:13:"([0-9]{4})/?$";s:26:"index.php?year=$matches[1]";s:27:".?.+?/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:".?.+?/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:".?.+?/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"(.?.+?)/embed/?$";s:41:"index.php?pagename=$matches[1]&embed=true";s:20:"(.?.+?)/trackback/?$";s:35:"index.php?pagename=$matches[1]&tb=1";s:40:"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:35:"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$";s:47:"index.php?pagename=$matches[1]&feed=$matches[2]";s:28:"(.?.+?)/page/?([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&paged=$matches[2]";s:35:"(.?.+?)/comment-page-([0-9]{1,})/?$";s:48:"index.php?pagename=$matches[1]&cpage=$matches[2]";s:24:"(.?.+?)(?:/([0-9]+))?/?$";s:47:"index.php?pagename=$matches[1]&page=$matches[2]";s:27:"[^/]+/attachment/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:37:"[^/]+/attachment/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:57:"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:52:"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:33:"[^/]+/attachment/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";s:16:"([^/]+)/embed/?$";s:37:"index.php?name=$matches[1]&embed=true";s:20:"([^/]+)/trackback/?$";s:31:"index.php?name=$matches[1]&tb=1";s:40:"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:35:"([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:43:"index.php?name=$matches[1]&feed=$matches[2]";s:28:"([^/]+)/page/?([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&paged=$matches[2]";s:35:"([^/]+)/comment-page-([0-9]{1,})/?$";s:44:"index.php?name=$matches[1]&cpage=$matches[2]";s:24:"([^/]+)(?:/([0-9]+))?/?$";s:43:"index.php?name=$matches[1]&page=$matches[2]";s:16:"[^/]+/([^/]+)/?$";s:32:"index.php?attachment=$matches[1]";s:26:"[^/]+/([^/]+)/trackback/?$";s:37:"index.php?attachment=$matches[1]&tb=1";s:46:"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$";s:49:"index.php?attachment=$matches[1]&feed=$matches[2]";s:41:"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$";s:50:"index.php?attachment=$matches[1]&cpage=$matches[2]";s:22:"[^/]+/([^/]+)/embed/?$";s:43:"index.php?attachment=$matches[1]&embed=true";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:5:{i:0;s:36:"contact-form-7/wp-contact-form-7.php";i:1;s:43:"custom-post-type-ui/custom-post-type-ui.php";i:2;s:45:"ewww-image-optimizer/ewww-image-optimizer.php";i:3;s:45:"secure-custom-fields/secure-custom-fields.php";i:4;s:31:"wp-migrate-db/wp-migrate-db.php";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'http://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'twentytwentyone', 'on'),
(42, 'stylesheet', 'twentytwentyone-child', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '58975', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:"_multiwidget";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:0:{}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '12', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1751698737', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on') ;
INSERT INTO `wp_options` ( `option_id`, `option_name`, `option_value`, `autoload`) VALUES
(101, 'initial_db_version', '58975', 'on'),
(102, 'wp_user_roles', 'a:5:{s:13:"administrator";a:2:{s:4:"name";s:13:"Administrator";s:12:"capabilities";a:61:{s:13:"switch_themes";b:1;s:11:"edit_themes";b:1;s:16:"activate_plugins";b:1;s:12:"edit_plugins";b:1;s:10:"edit_users";b:1;s:10:"edit_files";b:1;s:14:"manage_options";b:1;s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:6:"import";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:8:"level_10";b:1;s:7:"level_9";b:1;s:7:"level_8";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;s:12:"delete_users";b:1;s:12:"create_users";b:1;s:17:"unfiltered_upload";b:1;s:14:"edit_dashboard";b:1;s:14:"update_plugins";b:1;s:14:"delete_plugins";b:1;s:15:"install_plugins";b:1;s:13:"update_themes";b:1;s:14:"install_themes";b:1;s:11:"update_core";b:1;s:10:"list_users";b:1;s:12:"remove_users";b:1;s:13:"promote_users";b:1;s:18:"edit_theme_options";b:1;s:13:"delete_themes";b:1;s:6:"export";b:1;}}s:6:"editor";a:2:{s:4:"name";s:6:"Editor";s:12:"capabilities";a:34:{s:17:"moderate_comments";b:1;s:17:"manage_categories";b:1;s:12:"manage_links";b:1;s:12:"upload_files";b:1;s:15:"unfiltered_html";b:1;s:10:"edit_posts";b:1;s:17:"edit_others_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:10:"edit_pages";b:1;s:4:"read";b:1;s:7:"level_7";b:1;s:7:"level_6";b:1;s:7:"level_5";b:1;s:7:"level_4";b:1;s:7:"level_3";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:17:"edit_others_pages";b:1;s:20:"edit_published_pages";b:1;s:13:"publish_pages";b:1;s:12:"delete_pages";b:1;s:19:"delete_others_pages";b:1;s:22:"delete_published_pages";b:1;s:12:"delete_posts";b:1;s:19:"delete_others_posts";b:1;s:22:"delete_published_posts";b:1;s:20:"delete_private_posts";b:1;s:18:"edit_private_posts";b:1;s:18:"read_private_posts";b:1;s:20:"delete_private_pages";b:1;s:18:"edit_private_pages";b:1;s:18:"read_private_pages";b:1;}}s:6:"author";a:2:{s:4:"name";s:6:"Author";s:12:"capabilities";a:10:{s:12:"upload_files";b:1;s:10:"edit_posts";b:1;s:20:"edit_published_posts";b:1;s:13:"publish_posts";b:1;s:4:"read";b:1;s:7:"level_2";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;s:22:"delete_published_posts";b:1;}}s:11:"contributor";a:2:{s:4:"name";s:11:"Contributor";s:12:"capabilities";a:5:{s:10:"edit_posts";b:1;s:4:"read";b:1;s:7:"level_1";b:1;s:7:"level_0";b:1;s:12:"delete_posts";b:1;}}s:10:"subscriber";a:2:{s:4:"name";s:10:"Subscriber";s:12:"capabilities";a:2:{s:4:"read";b:1;s:7:"level_0";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:"content";s:19:"<!-- wp:search /-->";}i:3;a:1:{s:7:"content";s:154:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->";}i:4;a:1:{s:7:"content";s:227:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {"displayAvatar":false,"displayDate":false,"displayExcerpt":false} /--></div><!-- /wp:group -->";}i:5;a:1:{s:7:"content";s:146:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->";}i:6;a:1:{s:7:"content";s:150:"<!-- wp:group --><div class="wp-block-group"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->";}s:12:"_multiwidget";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:5:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";i:3;s:7:"block-5";i:4;s:7:"block-6";}s:13:"array_version";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:"_multiwidget";i:1;}', 'auto'),
(136, 'can_compress_scripts', '0', 'on'),
(149, 'WPLANG', 'fr_FR', 'auto'),
(150, 'new_admin_email', 'Aymeric.B.Pro@hotmail.com', 'auto'),
(159, 'theme_mods_twentytwentyfive', 'a:1:{s:16:"sidebars_widgets";a:2:{s:4:"time";i:1736148504;s:4:"data";a:3:{s:19:"wp_inactive_widgets";a:0:{}s:9:"sidebar-1";a:3:{i:0;s:7:"block-2";i:1;s:7:"block-3";i:2;s:7:"block-4";}s:9:"sidebar-2";a:2:{i:0;s:7:"block-5";i:1;s:7:"block-6";}}}}', 'off'),
(160, 'current_theme', 'Twenty Twenty-One Child', 'auto'),
(161, 'theme_mods_twentytwentyone-child', 'a:4:{i:0;b:0;s:18:"nav_menu_locations";a:4:{s:9:"main-menu";i:2;s:11:"footer-menu";i:3;s:7:"primary";i:2;s:6:"footer";i:3;}s:18:"custom_css_post_id";i:-1;s:16:"background_color";s:6:"edeae6";}', 'on'),
(162, 'theme_switched', '', 'auto'),
(186, 'recently_activated', 'a:0:{}', 'off'),
(196, 'wpcf7', 'a:2:{s:7:"version";s:5:"6.0.2";s:13:"bulk_validate";a:4:{s:9:"timestamp";i:1736233412;s:7:"version";s:5:"6.0.2";s:11:"count_valid";i:1;s:13:"count_invalid";i:0;}}', 'auto'),
(199, 'ewww_image_optimizer_relative_migration_status', 'done', 'auto'),
(200, 'acf_first_activated_version', '6.4.1-beta4', 'on'),
(201, 'acf_site_health', '{"event_first_activated":1736233412,"last_updated":1736236768,"event_first_created_field_group":1736236768}', 'off'),
(204, 'acf_version', '6.4.1-beta6', 'auto'),
(205, 'ewww_image_optimizer_background_optimization', '', 'off'),
(206, 'ewww_image_optimizer_noauto', '', 'auto'),
(207, 'ewww_image_optimizer_disable_editor', '', 'auto'),
(208, 'ewww_image_optimizer_debug', '', 'auto'),
(209, 'ewww_image_optimizer_metadata_remove', '1', 'auto'),
(210, 'ewww_image_optimizer_jpg_level', '10', 'auto'),
(211, 'ewww_image_optimizer_png_level', '10', 'auto'),
(212, 'ewww_image_optimizer_gif_level', '10', 'auto'),
(213, 'ewww_image_optimizer_pdf_level', '0', 'auto'),
(214, 'ewww_image_optimizer_svg_level', '0', 'auto'),
(215, 'ewww_image_optimizer_webp_level', '0', 'auto'),
(216, 'ewww_image_optimizer_jpg_quality', '', 'auto'),
(217, 'ewww_image_optimizer_webp_quality', '', 'auto'),
(218, 'ewww_image_optimizer_backup_files', '', 'auto'),
(219, 'ewww_image_optimizer_resize_existing', '1', 'auto'),
(220, 'ewww_image_optimizer_exactdn', '', 'auto'),
(221, 'ewww_image_optimizer_exactdn_plan_id', '0', 'auto'),
(222, 'exactdn_all_the_things', '1', 'auto'),
(223, 'exactdn_lossy', '1', 'auto'),
(224, 'exactdn_hidpi', '1', 'off'),
(225, 'exactdn_exclude', '', 'auto'),
(226, 'exactdn_sub_folder', '', 'off'),
(227, 'exactdn_prevent_db_queries', '', 'auto'),
(228, 'exactdn_asset_domains', '', 'auto'),
(229, 'ewww_image_optimizer_lazy_load', '', 'auto'),
(230, 'ewww_image_optimizer_add_missing_dims', '', 'auto'),
(231, 'ewww_image_optimizer_use_siip', '', 'auto'),
(232, 'ewww_image_optimizer_use_lqip', '', 'auto'),
(233, 'ewww_image_optimizer_use_dcip', '', 'auto'),
(234, 'ewww_image_optimizer_ll_exclude', '', 'auto'),
(235, 'ewww_image_optimizer_ll_all_things', '', 'auto'),
(236, 'ewww_image_optimizer_disable_pngout', '1', 'auto'),
(237, 'ewww_image_optimizer_disable_svgcleaner', '1', 'auto'),
(238, 'ewww_image_optimizer_optipng_level', '2', 'auto'),
(239, 'ewww_image_optimizer_pngout_level', '2', 'auto'),
(240, 'ewww_image_optimizer_webp_for_cdn', '', 'auto'),
(241, 'ewww_image_optimizer_force_gif2webp', '1', 'auto'),
(242, 'ewww_image_optimizer_picture_webp', '', 'auto'),
(243, 'ewww_image_optimizer_webp_rewrite_exclude', '', 'auto'),
(247, 'ewww_image_optimizer_ll_autoscale', '1', 'off'),
(248, 'exactdn_never_been_active', '1', 'off'),
(249, 'ewww_image_optimizer_bulk_resume', '', 'auto'),
(250, 'ewww_image_optimizer_aux_resume', '', 'auto'),
(251, 'ewww_image_optimizer_flag_attachments', '', 'off'),
(252, 'ewww_image_optimizer_ngg_attachments', '', 'off'),
(254, 'ewww_image_optimizer_review_time', '1736838214', 'off'),
(255, 'ewww_image_optimizer_version', '800', 'auto'),
(263, 'cptui_new_install', 'false', 'auto'),
(272, 'cptui_post_types', 'a:1:{s:5:"image";a:34:{s:4:"name";s:5:"image";s:5:"label";s:6:"Images";s:14:"singular_label";s:5:"Image";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:7:"show_ui";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:16:"delete_with_user";s:5:"false";s:12:"show_in_rest";s:4:"true";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:14:"rest_namespace";s:0:"";s:11:"has_archive";s:5:"false";s:18:"has_archive_string";s:0:"";s:19:"exclude_from_search";s:5:"false";s:15:"capability_type";s:4:"post";s:12:"hierarchical";s:5:"false";s:10:"can_export";s:5:"false";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:13:"menu_position";s:0:"";s:12:"show_in_menu";s:4:"true";s:19:"show_in_menu_string";s:0:"";s:9:"menu_icon";N;s:20:"register_meta_box_cb";N;s:8:"supports";a:3:{i:0;s:5:"title";i:1;s:6:"editor";i:2;s:9:"thumbnail";}s:10:"taxonomies";a:2:{i:0;s:16:"projet9animation";i:1;s:17:"projet12sitephoto";}s:6:"labels";a:30:{s:9:"menu_name";s:10:"Mes Images";s:9:"all_items";s:0:"";s:7:"add_new";s:0:"";s:12:"add_new_item";s:0:"";s:9:"edit_item";s:0:"";s:8:"new_item";s:0:"";s:9:"view_item";s:0:"";s:10:"view_items";s:0:"";s:12:"search_items";s:0:"";s:9:"not_found";s:0:"";s:18:"not_found_in_trash";s:0:"";s:17:"parent_item_colon";s:0:"";s:14:"featured_image";s:0:"";s:18:"set_featured_image";s:0:"";s:21:"remove_featured_image";s:0:"";s:18:"use_featured_image";s:0:"";s:8:"archives";s:0:"";s:16:"insert_into_item";s:0:"";s:21:"uploaded_to_this_item";s:0:"";s:17:"filter_items_list";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:10:"attributes";s:0:"";s:14:"name_admin_bar";s:0:"";s:14:"item_published";s:0:"";s:24:"item_published_privately";s:0:"";s:22:"item_reverted_to_draft";s:0:"";s:12:"item_trashed";s:0:"";s:14:"item_scheduled";s:0:"";s:12:"item_updated";s:0:"";}s:15:"custom_supports";s:0:"";s:16:"enter_title_here";s:0:"";}}', 'auto'),
(290, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:"auto_add";a:0:{}}', 'off'),
(375, 'cptui_taxonomies', 'a:2:{s:7:"langage";a:28:{s:4:"name";s:7:"langage";s:5:"label";s:8:"Langages";s:14:"singular_label";s:7:"Langage";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:4:"true";s:13:"show_tagcloud";s:5:"false";s:4:"sort";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:14:"rest_namespace";s:0:"";s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:13:"back_to_items";s:0:"";s:22:"name_field_description";s:0:"";s:24:"parent_field_description";s:0:"";s:22:"slug_field_description";s:0:"";s:22:"desc_field_description";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"default_term";s:0:"";s:12:"object_types";a:1:{i:0;s:5:"image";}}s:6:"projet";a:28:{s:4:"name";s:6:"projet";s:5:"label";s:7:"Projets";s:14:"singular_label";s:6:"Projet";s:11:"description";s:0:"";s:6:"public";s:4:"true";s:18:"publicly_queryable";s:4:"true";s:12:"hierarchical";s:4:"true";s:7:"show_ui";s:4:"true";s:12:"show_in_menu";s:4:"true";s:17:"show_in_nav_menus";s:4:"true";s:9:"query_var";s:4:"true";s:14:"query_var_slug";s:0:"";s:7:"rewrite";s:4:"true";s:12:"rewrite_slug";s:0:"";s:17:"rewrite_withfront";s:1:"1";s:20:"rewrite_hierarchical";s:1:"0";s:17:"show_admin_column";s:5:"false";s:12:"show_in_rest";s:4:"true";s:13:"show_tagcloud";s:5:"false";s:4:"sort";s:5:"false";s:18:"show_in_quick_edit";s:0:"";s:9:"rest_base";s:0:"";s:21:"rest_controller_class";s:0:"";s:14:"rest_namespace";s:0:"";s:6:"labels";a:23:{s:9:"menu_name";s:0:"";s:9:"all_items";s:0:"";s:9:"edit_item";s:0:"";s:9:"view_item";s:0:"";s:11:"update_item";s:0:"";s:12:"add_new_item";s:0:"";s:13:"new_item_name";s:0:"";s:11:"parent_item";s:0:"";s:17:"parent_item_colon";s:0:"";s:12:"search_items";s:0:"";s:13:"popular_items";s:0:"";s:26:"separate_items_with_commas";s:0:"";s:19:"add_or_remove_items";s:0:"";s:21:"choose_from_most_used";s:0:"";s:9:"not_found";s:0:"";s:8:"no_terms";s:0:"";s:21:"items_list_navigation";s:0:"";s:10:"items_list";s:0:"";s:13:"back_to_items";s:0:"";s:22:"name_field_description";s:0:"";s:24:"parent_field_description";s:0:"";s:22:"slug_field_description";s:0:"";s:22:"desc_field_description";s:0:"";}s:11:"meta_box_cb";s:0:"";s:12:"default_term";s:0:"";s:12:"object_types";a:1:{i:0;s:5:"image";}}}', 'auto'),
(630, 'adminhash', 'a:2:{s:4:"hash";s:32:"69a20154e67b8893c6457f37ffe1cd50";s:8:"newemail";s:25:"Aymeric.B.Pro@hotmail.com";}', 'off'),
(654, 'langage_children', 'a:0:{}', 'auto'),
(671, 'projets_children', 'a:0:{}', 'auto'),
(697, 'projet_children', 'a:0:{}', 'auto'),
(766, 'acf_escaped_html_log', 'a:1:{s:19:"field_6785527cc82d3";a:4:{s:8:"selector";s:11:"description";s:8:"function";s:9:"the_field";s:5:"field";s:11:"Description";s:7:"post_id";b:0;}}', 'off'),
(785, 'wpmdb_usage', 'a:2:{s:6:"action";s:8:"savefile";s:4:"time";i:1736801966;}', 'off') ;

#
# End of data contents of table `wp_options`
# --------------------------------------------------------



#
# Delete any existing table `wp_postmeta`
#

DROP TABLE IF EXISTS `wp_postmeta`;


#
# Table structure of table `wp_postmeta`
#

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=225 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_postmeta`
#
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_form', '<label> NOM\n    [text* your-name autocomplete:name] </label>\n\n<label> E-MAIL\n    [email* your-email autocomplete:email] </label>\n\n<label> MESSAGE\n    [textarea your-message] </label>\n\n[submit class:submitbtn "Envoyer"]'),
(4, 5, '_mail', 'a:9:{s:6:"active";b:1;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:43:"[_site_title] <wordpress@aymericbdev.local>";s:9:"recipient";s:19:"[_site_admin_email]";s:4:"body";s:191:"From: [your-name] [your-email]\nSubject: [your-subject]\n\nMessage Body:\n[your-message]\n\n-- \nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).";s:18:"additional_headers";s:22:"Reply-To: [your-email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(5, 5, '_mail_2', 'a:9:{s:6:"active";b:0;s:7:"subject";s:30:"[_site_title] "[your-subject]"";s:6:"sender";s:43:"[_site_title] <wordpress@aymericbdev.local>";s:9:"recipient";s:12:"[your-email]";s:4:"body";s:220:"Message Body:\n[your-message]\n\n-- \nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.";s:18:"additional_headers";s:29:"Reply-To: [_site_admin_email]";s:11:"attachments";s:0:"";s:8:"use_html";b:0;s:13:"exclude_blank";b:0;}'),
(6, 5, '_messages', 'a:22:{s:12:"mail_sent_ok";s:45:"Thank you for your message. It has been sent.";s:12:"mail_sent_ng";s:71:"There was an error trying to send your message. Please try again later.";s:16:"validation_error";s:61:"One or more fields have an error. Please check and try again.";s:4:"spam";s:71:"There was an error trying to send your message. Please try again later.";s:12:"accept_terms";s:69:"You must accept the terms and conditions before sending your message.";s:16:"invalid_required";s:27:"Please fill out this field.";s:16:"invalid_too_long";s:32:"This field has a too long input.";s:17:"invalid_too_short";s:33:"This field has a too short input.";s:13:"upload_failed";s:46:"There was an unknown error uploading the file.";s:24:"upload_file_type_invalid";s:49:"You are not allowed to upload files of this type.";s:21:"upload_file_too_large";s:31:"The uploaded file is too large.";s:23:"upload_failed_php_error";s:38:"There was an error uploading the file.";s:12:"invalid_date";s:41:"Please enter a date in YYYY-MM-DD format.";s:14:"date_too_early";s:32:"This field has a too early date.";s:13:"date_too_late";s:31:"This field has a too late date.";s:14:"invalid_number";s:22:"Please enter a number.";s:16:"number_too_small";s:34:"This field has a too small number.";s:16:"number_too_large";s:34:"This field has a too large number.";s:23:"quiz_answer_not_correct";s:36:"The answer to the quiz is incorrect.";s:13:"invalid_email";s:30:"Please enter an email address.";s:11:"invalid_url";s:19:"Please enter a URL.";s:11:"invalid_tel";s:32:"Please enter a telephone number.";}'),
(7, 5, '_additional_settings', ''),
(8, 5, '_locale', 'fr_FR'),
(9, 5, '_hash', 'a5911a8befab7c76fa8933ea17ed9e2362c0d345'),
(10, 8, '_edit_last', '1'),
(11, 8, '_edit_lock', '1736327300:1'),
(12, 10, '_edit_lock', '1736784467:1'),
(13, 12, '_edit_lock', '1736241127:1'),
(14, 14, '_edit_lock', '1736237854:1'),
(15, 16, '_edit_lock', '1736795502:1'),
(16, 18, '_edit_lock', '1736795511:1'),
(17, 20, '_edit_lock', '1736795520:1'),
(18, 22, '_edit_lock', '1736237884:1'),
(19, 2, '_wp_trash_meta_status', 'publish'),
(20, 2, '_wp_trash_meta_time', '1736238035'),
(21, 2, '_wp_desired_post_slug', 'sample-page'),
(22, 24, '_edit_lock', '1736769625:1'),
(23, 26, '_menu_item_type', 'post_type'),
(24, 26, '_menu_item_menu_item_parent', '0'),
(25, 26, '_menu_item_object_id', '24'),
(26, 26, '_menu_item_object', 'page'),
(27, 26, '_menu_item_target', ''),
(28, 26, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(29, 26, '_menu_item_xfn', ''),
(30, 26, '_menu_item_url', ''),
(41, 28, '_menu_item_type', 'post_type'),
(42, 28, '_menu_item_menu_item_parent', '0'),
(43, 28, '_menu_item_object_id', '12'),
(44, 28, '_menu_item_object', 'page'),
(45, 28, '_menu_item_target', ''),
(46, 28, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(47, 28, '_menu_item_xfn', ''),
(48, 28, '_menu_item_url', ''),
(59, 30, '_menu_item_type', 'post_type'),
(60, 30, '_menu_item_menu_item_parent', '0'),
(61, 30, '_menu_item_object_id', '20'),
(62, 30, '_menu_item_object', 'page'),
(63, 30, '_menu_item_target', ''),
(64, 30, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(65, 30, '_menu_item_xfn', ''),
(66, 30, '_menu_item_url', ''),
(68, 31, '_menu_item_type', 'post_type'),
(69, 31, '_menu_item_menu_item_parent', '0'),
(70, 31, '_menu_item_object_id', '18'),
(71, 31, '_menu_item_object', 'page'),
(72, 31, '_menu_item_target', ''),
(73, 31, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(74, 31, '_menu_item_xfn', ''),
(75, 31, '_menu_item_url', ''),
(77, 32, '_menu_item_type', 'post_type'),
(78, 32, '_menu_item_menu_item_parent', '0'),
(79, 32, '_menu_item_object_id', '16'),
(80, 32, '_menu_item_object', 'page'),
(81, 32, '_menu_item_target', ''),
(82, 32, '_menu_item_classes', 'a:1:{i:0;s:0:"";}'),
(83, 32, '_menu_item_xfn', ''),
(84, 32, '_menu_item_url', ''),
(86, 33, '_wp_trash_meta_status', 'publish'),
(87, 33, '_wp_trash_meta_time', '1736239383'),
(88, 12, '_edit_last', '1'),
(89, 12, '_wp_page_template', 'default'),
(90, 35, '_menu_item_type', 'custom'),
(91, 35, '_menu_item_menu_item_parent', '0'),
(92, 35, '_menu_item_object_id', '35'),
(93, 35, '_menu_item_object', 'custom'),
(94, 35, '_menu_item_target', ''),
(95, 35, '_menu_item_classes', 'a:1:{i:0;s:11:"contactlink";}'),
(96, 35, '_menu_item_xfn', ''),
(97, 35, '_menu_item_url', '#openModal'),
(99, 28, '_wp_old_date', '2025-01-07'),
(100, 26, '_wp_old_date', '2025-01-07'),
(101, 35, '_wp_old_date', '2025-01-07'),
(103, 36, '_edit_lock', '1736794977:1'),
(104, 37, '_wp_attached_file', '2025/01/ProjetKoukakiVideo-.jpg'),
(105, 37, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1437;s:6:"height";i:801;s:4:"file";s:31:"2025/01/ProjetKoukakiVideo-.jpg";s:8:"filesize";i:187756;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:31:"ProjetKoukakiVideo--300x167.jpg";s:5:"width";i:300;s:6:"height";i:167;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12114;}s:5:"large";a:5:{s:4:"file";s:32:"ProjetKoukakiVideo--1024x571.jpg";s:5:"width";i:1024;s:6:"height";i:571;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:67933;}s:9:"thumbnail";a:5:{s:4:"file";s:31:"ProjetKoukakiVideo--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6362;}s:12:"medium_large";a:5:{s:4:"file";s:31:"ProjetKoukakiVideo--768x428.jpg";s:5:"width";i:768;s:6:"height";i:428;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:46331;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(106, 36, '_thumbnail_id', '37'),
(107, 36, '_edit_last', '1'),
(108, 36, 'projet', ''),
(109, 36, '_projet', 'field_677cde745febc'),
(110, 39, '_edit_lock', '1736795003:1'),
(111, 40, '_wp_attached_file', '2025/01/ProjetKoukakiLeLieu-.jpg'),
(112, 40, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1433;s:6:"height";i:974;s:4:"file";s:32:"2025/01/ProjetKoukakiLeLieu-.jpg";s:8:"filesize";i:155308;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:32:"ProjetKoukakiLeLieu--300x204.jpg";s:5:"width";i:300;s:6:"height";i:204;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9264;}s:5:"large";a:5:{s:4:"file";s:33:"ProjetKoukakiLeLieu--1024x696.jpg";s:5:"width";i:1024;s:6:"height";i:696;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:50949;}s:9:"thumbnail";a:5:{s:4:"file";s:32:"ProjetKoukakiLeLieu--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4105;}s:12:"medium_large";a:5:{s:4:"file";s:32:"ProjetKoukakiLeLieu--768x522.jpg";s:5:"width";i:768;s:6:"height";i:522;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:34558;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(113, 41, '_wp_attached_file', '2025/01/ProjetKoukakiLesPersonnages-.jpg'),
(114, 41, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1432;s:6:"height";i:955;s:4:"file";s:40:"2025/01/ProjetKoukakiLesPersonnages-.jpg";s:8:"filesize";i:113086;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:40:"ProjetKoukakiLesPersonnages--300x200.jpg";s:5:"width";i:300;s:6:"height";i:200;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8804;}s:5:"large";a:5:{s:4:"file";s:41:"ProjetKoukakiLesPersonnages--1024x683.jpg";s:5:"width";i:1024;s:6:"height";i:683;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41508;}s:9:"thumbnail";a:5:{s:4:"file";s:40:"ProjetKoukakiLesPersonnages--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4698;}s:12:"medium_large";a:5:{s:4:"file";s:40:"ProjetKoukakiLesPersonnages--768x512.jpg";s:5:"width";i:768;s:6:"height";i:512;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:28628;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(115, 42, '_wp_attached_file', '2025/01/ProjetKoukakiLeStudio-.jpg'),
(116, 42, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1438;s:6:"height";i:998;s:4:"file";s:34:"2025/01/ProjetKoukakiLeStudio-.jpg";s:8:"filesize";i:185222;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:34:"ProjetKoukakiLeStudio--300x208.jpg";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:9649;}s:5:"large";a:5:{s:4:"file";s:35:"ProjetKoukakiLeStudio--1024x711.jpg";s:5:"width";i:1024;s:6:"height";i:711;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64924;}s:9:"thumbnail";a:5:{s:4:"file";s:34:"ProjetKoukakiLeStudio--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4849;}s:12:"medium_large";a:5:{s:4:"file";s:34:"ProjetKoukakiLeStudio--768x533.jpg";s:5:"width";i:768;s:6:"height";i:533;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:41505;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(117, 43, '_wp_attached_file', '2025/01/ProjetKoukakiLhistoire-.jpg'),
(118, 43, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1440;s:6:"height";i:997;s:4:"file";s:35:"2025/01/ProjetKoukakiLhistoire-.jpg";s:8:"filesize";i:191034;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:35:"ProjetKoukakiLhistoire--300x208.jpg";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:10503;}s:5:"large";a:5:{s:4:"file";s:36:"ProjetKoukakiLhistoire--1024x709.jpg";s:5:"width";i:1024;s:6:"height";i:709;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:73516;}s:9:"thumbnail";a:5:{s:4:"file";s:35:"ProjetKoukakiLhistoire--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4792;}s:12:"medium_large";a:5:{s:4:"file";s:35:"ProjetKoukakiLhistoire--768x532.jpg";s:5:"width";i:768;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:47167;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(119, 44, '_wp_attached_file', '2025/01/ProjetKoukakiMenu-.jpg'),
(120, 44, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1438;s:6:"height";i:997;s:4:"file";s:30:"2025/01/ProjetKoukakiMenu-.jpg";s:8:"filesize";i:79825;s:5:"sizes";a:4:{s:6:"medium";a:5:{s:4:"file";s:30:"ProjetKoukakiMenu--300x208.jpg";s:5:"width";i:300;s:6:"height";i:208;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6515;}s:5:"large";a:5:{s:4:"file";s:31:"ProjetKoukakiMenu--1024x710.jpg";s:5:"width";i:1024;s:6:"height";i:710;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:31403;}s:9:"thumbnail";a:5:{s:4:"file";s:30:"ProjetKoukakiMenu--150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3341;}s:12:"medium_large";a:5:{s:4:"file";s:30:"ProjetKoukakiMenu--768x532.jpg";s:5:"width";i:768;s:6:"height";i:532;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:21207;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(121, 39, '_thumbnail_id', '44'),
(122, 39, '_edit_last', '1'),
(123, 39, 'projet9animations', ''),
(124, 39, '_projet9animations', 'field_677cde745febc'),
(125, 39, 'Projet12SitePhotos', '') ;
INSERT INTO `wp_postmeta` ( `meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(126, 39, '_Projet12SitePhotos', 'field_677e3af3e2775'),
(127, 8, '_wp_trash_meta_status', 'publish'),
(128, 8, '_wp_trash_meta_time', '1736327584'),
(129, 8, '_wp_desired_post_slug', 'group_677cde7443c6d'),
(130, 9, '_wp_trash_meta_status', 'publish'),
(131, 9, '_wp_trash_meta_time', '1736327584'),
(132, 9, '_wp_desired_post_slug', 'field_677cde745febc'),
(133, 38, '_wp_trash_meta_status', 'publish'),
(134, 38, '_wp_trash_meta_time', '1736327584'),
(135, 38, '_wp_desired_post_slug', 'field_677e3af3e2775'),
(136, 3, '_edit_lock', '1736795548:1'),
(137, 48, '_edit_lock', '1736794992:1'),
(138, 49, '_wp_attached_file', '2025/01/PhotographeprofessionnelleHeader.jpg'),
(139, 49, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1896;s:6:"height";i:1033;s:4:"file";s:44:"2025/01/PhotographeprofessionnelleHeader.jpg";s:8:"filesize";i:371454;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:44:"PhotographeprofessionnelleHeader-300x163.jpg";s:5:"width";i:300;s:6:"height";i:163;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12242;}s:5:"large";a:5:{s:4:"file";s:45:"PhotographeprofessionnelleHeader-1024x558.jpg";s:5:"width";i:1024;s:6:"height";i:558;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:82080;}s:9:"thumbnail";a:5:{s:4:"file";s:44:"PhotographeprofessionnelleHeader-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:5863;}s:12:"medium_large";a:5:{s:4:"file";s:44:"PhotographeprofessionnelleHeader-768x418.jpg";s:5:"width";i:768;s:6:"height";i:418;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:53299;}s:9:"1536x1536";a:5:{s:4:"file";s:45:"PhotographeprofessionnelleHeader-1536x837.jpg";s:5:"width";i:1536;s:6:"height";i:837;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:150514;}s:14:"post-thumbnail";a:5:{s:4:"file";s:45:"PhotographeprofessionnelleHeader-1568x854.jpg";s:5:"width";i:1568;s:6:"height";i:854;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:153615;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"0";s:8:"keywords";a:0:{}}}'),
(140, 50, '_wp_attached_file', '2025/01/PhotographeprofessionnelleSinglephoto.jpg'),
(141, 50, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1894;s:6:"height";i:1025;s:4:"file";s:49:"2025/01/PhotographeprofessionnelleSinglephoto.jpg";s:8:"filesize";i:285693;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleSinglephoto-300x162.jpg";s:5:"width";i:300;s:6:"height";i:162;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6777;}s:5:"large";a:5:{s:4:"file";s:50:"PhotographeprofessionnelleSinglephoto-1024x554.jpg";s:5:"width";i:1024;s:6:"height";i:554;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57196;}s:9:"thumbnail";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleSinglephoto-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:3077;}s:12:"medium_large";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleSinglephoto-768x416.jpg";s:5:"width";i:768;s:6:"height";i:416;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:33796;}s:9:"1536x1536";a:5:{s:4:"file";s:50:"PhotographeprofessionnelleSinglephoto-1536x831.jpg";s:5:"width";i:1536;s:6:"height";i:831;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:114599;}s:14:"post-thumbnail";a:5:{s:4:"file";s:50:"PhotographeprofessionnelleSinglephoto-1568x849.jpg";s:5:"width";i:1568;s:6:"height";i:849;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:115866;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(142, 51, '_wp_attached_file', '2025/01/PhotographeprofessionnelleModaleContact.jpg'),
(143, 51, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1872;s:6:"height";i:1034;s:4:"file";s:51:"2025/01/PhotographeprofessionnelleModaleContact.jpg";s:8:"filesize";i:235007;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:51:"PhotographeprofessionnelleModaleContact-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:8879;}s:5:"large";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleModaleContact-1024x566.jpg";s:5:"width";i:1024;s:6:"height";i:566;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57088;}s:9:"thumbnail";a:5:{s:4:"file";s:51:"PhotographeprofessionnelleModaleContact-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:4082;}s:12:"medium_large";a:5:{s:4:"file";s:51:"PhotographeprofessionnelleModaleContact-768x424.jpg";s:5:"width";i:768;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:37050;}s:9:"1536x1536";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleModaleContact-1536x848.jpg";s:5:"width";i:1536;s:6:"height";i:848;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:99951;}s:14:"post-thumbnail";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleModaleContact-1568x866.jpg";s:5:"width";i:1568;s:6:"height";i:866;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:103549;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(144, 52, '_wp_attached_file', '2025/01/PhotographeprofessionnelleChargementAjax.jpg'),
(145, 52, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1897;s:6:"height";i:1036;s:4:"file";s:52:"2025/01/PhotographeprofessionnelleChargementAjax.jpg";s:8:"filesize";i:399927;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleChargementAjax-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14195;}s:5:"large";a:5:{s:4:"file";s:53:"PhotographeprofessionnelleChargementAjax-1024x559.jpg";s:5:"width";i:1024;s:6:"height";i:559;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:95100;}s:9:"thumbnail";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleChargementAjax-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7243;}s:12:"medium_large";a:5:{s:4:"file";s:52:"PhotographeprofessionnelleChargementAjax-768x419.jpg";s:5:"width";i:768;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:61592;}s:9:"1536x1536";a:5:{s:4:"file";s:53:"PhotographeprofessionnelleChargementAjax-1536x839.jpg";s:5:"width";i:1536;s:6:"height";i:839;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:173308;}s:14:"post-thumbnail";a:5:{s:4:"file";s:53:"PhotographeprofessionnelleChargementAjax-1568x856.jpg";s:5:"width";i:1568;s:6:"height";i:856;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:179110;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(146, 53, '_wp_attached_file', '2025/01/PhotographeprofessionnelleLightbox.jpg'),
(147, 53, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1889;s:6:"height";i:1044;s:4:"file";s:46:"2025/01/PhotographeprofessionnelleLightbox.jpg";s:8:"filesize";i:404501;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:46:"PhotographeprofessionnelleLightbox-300x166.jpg";s:5:"width";i:300;s:6:"height";i:166;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:14632;}s:5:"large";a:5:{s:4:"file";s:47:"PhotographeprofessionnelleLightbox-1024x566.jpg";s:5:"width";i:1024;s:6:"height";i:566;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:98022;}s:9:"thumbnail";a:5:{s:4:"file";s:46:"PhotographeprofessionnelleLightbox-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:7311;}s:12:"medium_large";a:5:{s:4:"file";s:46:"PhotographeprofessionnelleLightbox-768x424.jpg";s:5:"width";i:768;s:6:"height";i:424;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:64429;}s:9:"1536x1536";a:5:{s:4:"file";s:47:"PhotographeprofessionnelleLightbox-1536x849.jpg";s:5:"width";i:1536;s:6:"height";i:849;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:178102;}s:14:"post-thumbnail";a:5:{s:4:"file";s:47:"PhotographeprofessionnelleLightbox-1568x867.jpg";s:5:"width";i:1568;s:6:"height";i:867;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:183419;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(148, 54, '_wp_attached_file', '2025/01/PhotographeprofessionnelleTriephotos.jpg'),
(149, 54, '_wp_attachment_metadata', 'a:6:{s:5:"width";i:1895;s:6:"height";i:1034;s:4:"file";s:48:"2025/01/PhotographeprofessionnelleTriephotos.jpg";s:8:"filesize";i:384444;s:5:"sizes";a:6:{s:6:"medium";a:5:{s:4:"file";s:48:"PhotographeprofessionnelleTriephotos-300x164.jpg";s:5:"width";i:300;s:6:"height";i:164;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:12976;}s:5:"large";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleTriephotos-1024x559.jpg";s:5:"width";i:1024;s:6:"height";i:559;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:89355;}s:9:"thumbnail";a:5:{s:4:"file";s:48:"PhotographeprofessionnelleTriephotos-150x150.jpg";s:5:"width";i:150;s:6:"height";i:150;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:6250;}s:12:"medium_large";a:5:{s:4:"file";s:48:"PhotographeprofessionnelleTriephotos-768x419.jpg";s:5:"width";i:768;s:6:"height";i:419;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:57047;}s:9:"1536x1536";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleTriephotos-1536x838.jpg";s:5:"width";i:1536;s:6:"height";i:838;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:165032;}s:14:"post-thumbnail";a:5:{s:4:"file";s:49:"PhotographeprofessionnelleTriephotos-1568x856.jpg";s:5:"width";i:1568;s:6:"height";i:856;s:9:"mime-type";s:10:"image/jpeg";s:8:"filesize";i:170182;}}s:10:"image_meta";a:12:{s:8:"aperture";s:1:"0";s:6:"credit";s:0:"";s:6:"camera";s:0:"";s:7:"caption";s:0:"";s:17:"created_timestamp";s:1:"0";s:9:"copyright";s:0:"";s:12:"focal_length";s:1:"0";s:3:"iso";s:1:"0";s:13:"shutter_speed";s:1:"0";s:5:"title";s:0:"";s:11:"orientation";s:1:"1";s:8:"keywords";a:0:{}}}'),
(150, 48, '_thumbnail_id', '41'),
(151, 55, '_edit_lock', '1736795013:1'),
(152, 55, '_thumbnail_id', '40'),
(153, 56, '_edit_lock', '1736795024:1'),
(154, 56, '_thumbnail_id', '43'),
(155, 57, '_edit_lock', '1736794901:1'),
(156, 57, '_thumbnail_id', '42'),
(157, 58, '_edit_lock', '1736795053:1'),
(158, 58, '_thumbnail_id', '49'),
(159, 59, '_edit_lock', '1736795066:1'),
(160, 59, '_thumbnail_id', '51'),
(161, 60, '_edit_lock', '1736795076:1'),
(162, 60, '_thumbnail_id', '54'),
(163, 62, '_edit_lock', '1736795087:1'),
(164, 62, '_thumbnail_id', '53'),
(165, 63, '_edit_lock', '1736795103:1'),
(166, 63, '_thumbnail_id', '52'),
(167, 64, '_edit_lock', '1736795116:1'),
(168, 64, '_thumbnail_id', '50'),
(171, 67, '_edit_lock', '1736779066:1'),
(172, 28, '_wp_old_date', '2025-01-08'),
(173, 26, '_wp_old_date', '2025-01-08'),
(174, 35, '_wp_old_date', '2025-01-08'),
(175, 69, '_edit_last', '1'),
(176, 69, '_edit_lock', '1736794543:1'),
(177, 36, 'description', 'Un auto play dans le html pour jouer une vidéo, avec des animations par dessus dont un titre en parallax.'),
(178, 36, '_description', 'field_6785527cc82d3'),
(179, 39, 'description', 'Du javascript pour pouvoir déclencher le menu avec des effets simples en CSS.'),
(180, 39, '_description', 'field_6785527cc82d3'),
(181, 71, '_edit_lock', '1736794233:1'),
(182, 71, '_edit_last', '1'),
(183, 71, '_wp_trash_meta_status', 'publish'),
(184, 71, '_wp_trash_meta_time', '1736794423'),
(185, 71, '_wp_desired_post_slug', 'group_678560cc06b8d'),
(186, 72, '_wp_trash_meta_status', 'publish'),
(187, 72, '_wp_trash_meta_time', '1736794423'),
(188, 72, '_wp_desired_post_slug', 'field_678560cc0c218'),
(189, 48, '_edit_last', '1'),
(190, 48, 'description', 'Un carrousel autonome pouvant être aussi manipulé avec Swiper.js, du CSS et du HTML.'),
(191, 48, '_description', 'field_6785527cc82d3'),
(192, 55, '_edit_last', '1'),
(193, 55, 'description', 'Des nuages en mouvement au scrolling à l\'horizontale.'),
(194, 55, '_description', 'field_6785527cc82d3'),
(195, 56, '_edit_last', '1'),
(196, 56, 'description', 'De simples animations en infinite.'),
(197, 56, '_description', 'field_6785527cc82d3'),
(198, 57, '_edit_last', '1'),
(199, 57, 'description', 'Découpage de background pour recouvrir précisément du html et des animations classiques.'),
(200, 57, '_description', 'field_6785527cc82d3'),
(201, 58, '_edit_last', '1'),
(202, 58, 'description', 'Une image aléatoire sert de background au header grâce à une fonction avec un \'orderby\' => \'rand\'  .'),
(203, 58, '_description', 'field_6785527cc82d3'),
(204, 59, '_edit_last', '1'),
(205, 59, 'description', 'Une fonction pour ajouter une classe appellant la modale en template part, contenant un formulaire de contact form 7 , et du CSS pour les animations utilisant des keyframes.'),
(206, 59, '_description', 'field_6785527cc82d3'),
(207, 60, '_edit_last', '1'),
(208, 60, 'description', 'Avec l\'aide d\'Ajax, plusieurs filtres pour des taxonomies personnalisées afin d\'avoir plusieurs choix de tri d\'images.'),
(209, 60, '_description', 'field_6785527cc82d3'),
(210, 62, '_edit_last', '1'),
(211, 62, 'description', 'Avec l\'utilisation d\'un template part, les données enregistrées d\'une photo sont visibles en un simple passage sur l\'image.'),
(212, 62, '_description', 'field_6785527cc82d3'),
(213, 63, '_edit_last', '1'),
(214, 63, 'description', 'Un bouton charger plus qui n\'actualise pas la page, grâce à Ajax, permettant d\'afficher les images manquantes.'),
(215, 63, '_description', 'field_6785527cc82d3'),
(216, 64, '_edit_last', '1'),
(217, 64, 'description', 'Les données enregistrées sont affichées en lien avec l\'image, des miniatures restant dans le thème de l\'image sont proposées.'),
(218, 64, '_description', 'field_6785527cc82d3'),
(219, 10, '_wp_trash_meta_status', 'publish'),
(220, 10, '_wp_trash_meta_time', '1736795526'),
(221, 10, '_wp_desired_post_slug', 'a-propos-de'),
(222, 3, '_wp_trash_meta_status', 'draft'),
(223, 3, '_wp_trash_meta_time', '1736795669'),
(224, 3, '_wp_desired_post_slug', 'privacy-policy') ;

#
# End of data contents of table `wp_postmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_posts`
#

DROP TABLE IF EXISTS `wp_posts`;


#
# Table structure of table `wp_posts`
#

CREATE TABLE `wp_posts` (
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
) ENGINE=InnoDB AUTO_INCREMENT=77 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_posts`
#
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-01-06 06:58:57', '2025-01-06 06:58:57', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-01-06 06:58:57', '2025-01-06 06:58:57', '', 0, 'http://aymericbdev.local/?p=1', 0, 'post', '', 1),
(2, 1, '2025-01-06 06:58:57', '2025-01-06 06:58:57', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://aymericbdev.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-01-07 08:20:35', '2025-01-07 08:20:35', '', 0, 'http://aymericbdev.local/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-01-06 06:58:57', '2025-01-06 06:58:57', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://aymericbdev.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2025-01-13 19:14:29', '2025-01-13 19:14:29', '', 0, 'http://aymericbdev.local/?page_id=3', 0, 'page', '', 0),
(4, 1, '2025-01-06 06:59:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-01-06 06:59:31', '0000-00-00 00:00:00', '', 0, 'http://aymericbdev.local/?p=4', 0, 'post', '', 0),
(5, 1, '2025-01-07 07:03:32', '2025-01-07 07:03:32', '<label> NOM\r\n    [text* your-name autocomplete:name] </label>\r\n\r\n<label> E-MAIL\r\n    [email* your-email autocomplete:email] </label>\r\n\r\n<label> MESSAGE\r\n    [textarea your-message] </label>\r\n\r\n[submit class:submitbtn "Envoyer"]\n1\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@aymericbdev.local>\n[_site_admin_email]\nFrom: [your-name] [your-email]\r\nSubject: [your-subject]\r\n\r\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis is a notification that a contact form was submitted on your website ([_site_title] [_site_url]).\nReply-To: [your-email]\n\n\n\n\n[_site_title] "[your-subject]"\n[_site_title] <wordpress@aymericbdev.local>\n[your-email]\nMessage Body:\r\n[your-message]\r\n\r\n-- \r\nThis email is a receipt for your contact form submission on our website ([_site_title] [_site_url]) in which your email address was used. If that was not you, please ignore this message.\nReply-To: [_site_admin_email]\n\n\n\nThank you for your message. It has been sent.\nThere was an error trying to send your message. Please try again later.\nOne or more fields have an error. Please check and try again.\nThere was an error trying to send your message. Please try again later.\nYou must accept the terms and conditions before sending your message.\nPlease fill out this field.\nThis field has a too long input.\nThis field has a too short input.\nThere was an unknown error uploading the file.\nYou are not allowed to upload files of this type.\nThe uploaded file is too large.\nThere was an error uploading the file.\nPlease enter a date in YYYY-MM-DD format.\nThis field has a too early date.\nThis field has a too late date.\nPlease enter a number.\nThis field has a too small number.\nThis field has a too large number.\nThe answer to the quiz is incorrect.\nPlease enter an email address.\nPlease enter a URL.\nPlease enter a telephone number.', 'Contactez-moi', '', 'publish', 'closed', 'closed', '', 'contact-form-1', '', '', '2025-01-13 15:59:26', '2025-01-13 15:59:26', '', 0, 'http://aymericbdev.local/?post_type=wpcf7_contact_form&#038;p=5', 0, 'wpcf7_contact_form', '', 0),
(6, 1, '2025-01-07 07:44:02', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-07 07:44:02', '0000-00-00 00:00:00', '', 0, 'http://aymericbdev.local/?post_type=acf-field-group&p=6', 0, 'acf-field-group', '', 0),
(7, 1, '2025-01-07 07:44:18', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-07 07:44:18', '0000-00-00 00:00:00', '', 0, 'http://aymericbdev.local/?post_type=acf-taxonomy&p=7', 0, 'acf-taxonomy', '', 0),
(8, 1, '2025-01-07 07:59:28', '2025-01-07 07:59:28', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"image";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Projets', 'projets', 'trash', 'closed', 'closed', '', 'group_677cde7443c6d__trashed', '', '', '2025-01-08 09:13:04', '2025-01-08 09:13:04', '', 0, 'http://aymericbdev.local/?post_type=acf-field-group&#038;p=8', 0, 'acf-field-group', '', 0),
(9, 1, '2025-01-07 07:59:28', '2025-01-07 07:59:28', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Projet9Animations', 'projet9animations', 'trash', 'closed', 'closed', '', 'field_677cde745febc__trashed', '', '', '2025-01-08 09:13:04', '2025-01-08 09:13:04', '', 8, 'http://aymericbdev.local/?post_type=acf-field&#038;p=9', 0, 'acf-field', '', 0),
(10, 1, '2025-01-07 08:17:01', '2025-01-07 08:17:01', '', 'À PROPOS DE', '', 'trash', 'closed', 'closed', '', 'a-propos-de__trashed', '', '', '2025-01-13 19:12:06', '2025-01-13 19:12:06', '', 0, 'http://aymericbdev.local/?page_id=10', 0, 'page', '', 0),
(11, 1, '2025-01-07 08:17:01', '2025-01-07 08:17:01', '', 'À PROPOS DE', '', 'inherit', 'closed', 'closed', '', '10-revision-v1', '', '', '2025-01-07 08:17:01', '2025-01-07 08:17:01', '', 10, 'http://aymericbdev.local/?p=11', 0, 'revision', '', 0),
(12, 1, '2025-01-07 08:17:18', '2025-01-07 08:17:18', '', 'ACCUEIL', '', 'publish', 'closed', 'closed', '', 'acceuil', '', '', '2025-01-07 09:12:07', '2025-01-07 09:12:07', '', 0, 'http://aymericbdev.local/?page_id=12', 0, 'page', '', 0),
(13, 1, '2025-01-07 08:17:18', '2025-01-07 08:17:18', '', 'ACCEUIL', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2025-01-07 08:17:18', '2025-01-07 08:17:18', '', 12, 'http://aymericbdev.local/?p=13', 0, 'revision', '', 0),
(14, 1, '2025-01-07 08:17:30', '2025-01-07 08:17:30', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2025-01-07 08:17:30', '2025-01-07 08:17:30', '', 0, 'http://aymericbdev.local/?page_id=14', 0, 'page', '', 0),
(15, 1, '2025-01-07 08:17:30', '2025-01-07 08:17:30', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2025-01-07 08:17:30', '2025-01-07 08:17:30', '', 14, 'http://aymericbdev.local/?p=15', 0, 'revision', '', 0),
(16, 1, '2025-01-07 08:17:42', '2025-01-07 08:17:42', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'MENTIONS LÉGALES', '', 'publish', 'closed', 'closed', '', 'mentions-legales', '', '', '2025-01-13 19:14:06', '2025-01-13 19:14:06', '', 0, 'http://aymericbdev.local/?page_id=16', 0, 'page', '', 0),
(17, 1, '2025-01-07 08:17:42', '2025-01-07 08:17:42', '', 'MENTIONS LÉGALES', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2025-01-07 08:17:42', '2025-01-07 08:17:42', '', 16, 'http://aymericbdev.local/?p=17', 0, 'revision', '', 0),
(18, 1, '2025-01-07 08:17:54', '2025-01-07 08:17:54', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'TOUS DROITS RESERVÉS', '', 'publish', 'closed', 'closed', '', 'tous-droits-reserves', '', '', '2025-01-13 19:14:14', '2025-01-13 19:14:14', '', 0, 'http://aymericbdev.local/?page_id=18', 0, 'page', '', 0),
(19, 1, '2025-01-07 08:17:54', '2025-01-07 08:17:54', '', 'TOUS DROITS RESERVÉS', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-01-07 08:17:54', '2025-01-07 08:17:54', '', 18, 'http://aymericbdev.local/?p=19', 0, 'revision', '', 0),
(20, 1, '2025-01-07 08:20:26', '2025-01-07 08:20:26', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'VIE PRIVÉE', '', 'publish', 'closed', 'closed', '', 'vie-privee', '', '', '2025-01-13 19:14:22', '2025-01-13 19:14:22', '', 0, 'http://aymericbdev.local/?page_id=20', 0, 'page', '', 0),
(21, 1, '2025-01-07 08:20:26', '2025-01-07 08:20:26', '', 'VIE PRIVÉE', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2025-01-07 08:20:26', '2025-01-07 08:20:26', '', 20, 'http://aymericbdev.local/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-01-07 08:20:27', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-07 08:20:27', '0000-00-00 00:00:00', '', 0, 'http://aymericbdev.local/?page_id=22', 0, 'page', '', 0),
(23, 1, '2025-01-07 08:20:35', '2025-01-07 08:20:35', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class="wp-block-quote"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href="http://aymericbdev.local/wp-admin/">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-01-07 08:20:35', '2025-01-07 08:20:35', '', 2, 'http://aymericbdev.local/?p=23', 0, 'revision', '', 0),
(24, 1, '2025-01-07 08:28:03', '2025-01-07 08:28:03', '', 'GALERIE', '', 'publish', 'closed', 'closed', '', 'galerie', '', '', '2025-01-07 08:28:03', '2025-01-07 08:28:03', '', 0, 'http://aymericbdev.local/?page_id=24', 0, 'page', '', 0),
(25, 1, '2025-01-07 08:28:03', '2025-01-07 08:28:03', '', 'GALERIE', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2025-01-07 08:28:03', '2025-01-07 08:28:03', '', 24, 'http://aymericbdev.local/?p=25', 0, 'revision', '', 0),
(26, 1, '2025-01-13 14:51:37', '2025-01-07 08:31:12', ' ', '', '', 'publish', 'closed', 'closed', '', '26', '', '', '2025-01-13 14:51:37', '2025-01-13 14:51:37', '', 0, 'http://aymericbdev.local/?p=26', 2, 'nav_menu_item', '', 0),
(28, 1, '2025-01-13 14:51:37', '2025-01-07 08:31:12', ' ', '', '', 'publish', 'closed', 'closed', '', '28', '', '', '2025-01-13 14:51:37', '2025-01-13 14:51:37', '', 0, 'http://aymericbdev.local/?p=28', 1, 'nav_menu_item', '', 0),
(30, 1, '2025-01-07 08:35:23', '2025-01-07 08:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '30', '', '', '2025-01-07 08:35:23', '2025-01-07 08:35:23', '', 0, 'http://aymericbdev.local/?p=30', 3, 'nav_menu_item', '', 0),
(31, 1, '2025-01-07 08:35:23', '2025-01-07 08:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '31', '', '', '2025-01-07 08:35:23', '2025-01-07 08:35:23', '', 0, 'http://aymericbdev.local/?p=31', 2, 'nav_menu_item', '', 0),
(32, 1, '2025-01-07 08:35:23', '2025-01-07 08:32:40', ' ', '', '', 'publish', 'closed', 'closed', '', '32', '', '', '2025-01-07 08:35:23', '2025-01-07 08:35:23', '', 0, 'http://aymericbdev.local/?p=32', 1, 'nav_menu_item', '', 0),
(33, 1, '2025-01-07 08:43:03', '2025-01-07 08:43:03', '{"twentytwentyone-child::background_color":{"value":"#edeae6","type":"theme_mod","user_id":1,"date_modified_gmt":"2025-01-07 08:43:03"}}', '', '', 'trash', 'closed', 'closed', '', 'eed6ab0a-2918-40ef-bf4b-7461fe61bfe4', '', '', '2025-01-07 08:43:03', '2025-01-07 08:43:03', '', 0, 'http://aymericbdev.local/eed6ab0a-2918-40ef-bf4b-7461fe61bfe4/', 0, 'customize_changeset', '', 0),
(34, 1, '2025-01-07 09:12:07', '2025-01-07 09:12:07', '', 'ACCUEIL', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2025-01-07 09:12:07', '2025-01-07 09:12:07', '', 12, 'http://aymericbdev.local/?p=34', 0, 'revision', '', 0),
(35, 1, '2025-01-13 14:51:37', '2025-01-07 11:18:35', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2025-01-13 14:51:37', '2025-01-13 14:51:37', '', 0, 'http://aymericbdev.local/?p=35', 3, 'nav_menu_item', '', 0),
(36, 1, '2025-01-08 08:43:59', '2025-01-08 08:43:59', '', 'Projet 9 Header', '', 'publish', 'closed', 'closed', '', 'projet-9-header', '', '', '2025-01-13 18:54:48', '2025-01-13 18:54:48', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=36', 0, 'image', '', 0),
(37, 1, '2025-01-08 08:39:38', '2025-01-08 08:39:38', 'Titre du site d\'animation et son fond video', 'ProjetKoukakiVideo', '', 'inherit', 'open', 'closed', '', 'projetkoukakivideo', '', '', '2025-01-13 14:30:13', '2025-01-13 14:30:13', '', 36, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiVideo-.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2025-01-08 08:45:40', '2025-01-08 08:45:40', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:0;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Projet12SitePhotos', 'Projet12SitePhotos', 'trash', 'closed', 'closed', '', 'field_677e3af3e2775__trashed', '', '', '2025-01-08 09:13:04', '2025-01-08 09:13:04', '', 8, 'http://aymericbdev.local/?post_type=acf-field&#038;p=38', 1, 'acf-field', '', 0),
(39, 1, '2025-01-08 08:56:00', '2025-01-08 08:56:00', '', 'Projet 9 Menu', '', 'publish', 'closed', 'closed', '', 'projet-9-menu', '', '', '2025-01-13 19:03:23', '2025-01-13 19:03:23', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=39', 0, 'image', '', 0),
(40, 1, '2025-01-08 08:54:49', '2025-01-08 08:54:49', 'Image de montagne avec des nuages', 'ProjetKoukakiLeLieu', '', 'inherit', 'open', 'closed', '', 'projetkoukakilelieu', '', '', '2025-01-13 14:41:37', '2025-01-13 14:41:37', '', 39, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiLeLieu-.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2025-01-08 08:54:56', '2025-01-08 08:54:56', 'Un caroussel de personnages', 'ProjetKoukakiLesPersonnages', '', 'inherit', 'open', 'closed', '', 'projetkoukakilespersonnages', '', '', '2025-01-13 14:37:13', '2025-01-13 14:37:13', '', 39, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiLesPersonnages-.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2025-01-08 08:55:02', '2025-01-08 08:55:02', 'Bas de page avec des effets et animations', 'ProjetKoukakiLeStudio', '', 'inherit', 'open', 'closed', '', 'projetkoukakilestudio', '', '', '2025-01-13 14:42:39', '2025-01-13 14:42:39', '', 39, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiLeStudio-.jpg', 0, 'attachment', 'image/jpeg', 0),
(43, 1, '2025-01-08 08:55:10', '2025-01-08 08:55:10', 'Animations simples de fleurs', 'ProjetKoukakiLhistoire', '', 'inherit', 'open', 'closed', '', 'projetkoukakilhistoire', '', '', '2025-01-13 14:42:03', '2025-01-13 14:42:03', '', 39, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiLhistoire-.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2025-01-08 08:55:17', '2025-01-08 08:55:17', 'Menu animé.', 'ProjetKoukakiMenu', '', 'inherit', 'open', 'closed', '', 'projetkoukakimenu', '', '', '2025-01-13 14:31:09', '2025-01-13 14:31:09', '', 39, 'http://aymericbdev.local/wp-content/uploads/2025/01/ProjetKoukakiMenu-.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2025-01-13 13:26:02', '2025-01-13 13:26:02', '', 'Projet 9 Carrousel', '', 'publish', 'closed', 'closed', '', 'projet-9-carrousel', '', '', '2025-01-13 19:03:12', '2025-01-13 19:03:12', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=48', 0, 'image', '', 0),
(49, 1, '2025-01-13 13:23:00', '2025-01-13 13:23:00', 'Header avec une image', 'PhotographeprofessionnelleHeader', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnelleheader', '', '', '2025-01-13 14:43:06', '2025-01-13 14:43:06', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleHeader.jpg', 0, 'attachment', 'image/jpeg', 0),
(50, 1, '2025-01-13 13:23:13', '2025-01-13 13:23:13', 'Les détails d\'une photo avec des miniatures', 'PhotographeprofessionnelleSinglephoto', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnellesinglephoto', '', '', '2025-01-13 14:25:46', '2025-01-13 14:25:46', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleSinglephoto.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2025-01-13 13:23:25', '2025-01-13 13:23:25', 'Modale de contact avec animations', 'PhotographeprofessionnelleModaleContact', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnellemodalecontact', '', '', '2025-01-13 14:43:40', '2025-01-13 14:43:40', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleModaleContact.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2025-01-13 13:23:36', '2025-01-13 13:23:36', 'Galerie photo avec bouton charger plus', 'PhotographeprofessionnelleChargementAjax', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnellechargementajax', '', '', '2025-01-13 14:24:33', '2025-01-13 14:24:33', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleChargementAjax.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2025-01-13 13:23:49', '2025-01-13 13:23:49', 'Une photo montrant des informations au passage de la souris', 'PhotographeprofessionnelleLightbox', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnellelightbox', '', '', '2025-01-13 14:45:32', '2025-01-13 14:45:32', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleLightbox.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2025-01-13 13:24:01', '2025-01-13 13:24:01', 'Galerie de photos avec des filtres', 'PhotographeprofessionnelleTriephotos', '', 'inherit', 'open', 'closed', '', 'photographeprofessionnelletriephotos', '', '', '2025-01-13 14:44:32', '2025-01-13 14:44:32', '', 48, 'http://aymericbdev.local/wp-content/uploads/2025/01/PhotographeprofessionnelleTriephotos.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2025-01-13 13:29:24', '2025-01-13 13:29:24', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projet 9 Nuages animés', '', 'publish', 'closed', 'closed', '', 'projet-9-nuages-animes', '', '', '2025-01-13 19:03:33', '2025-01-13 19:03:33', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=55', 0, 'image', '', 0),
(56, 1, '2025-01-13 13:34:16', '2025-01-13 13:34:16', '<!-- wp:paragraph -->\n<p>De simples animations en infinite.</p>\n<!-- /wp:paragraph -->', 'Projet 9 Animations simples', '', 'publish', 'closed', 'closed', '', 'projet-9-animations-simples', '', '', '2025-01-13 19:03:44', '2025-01-13 19:03:44', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=56', 0, 'image', '', 0),
(57, 1, '2025-01-13 13:36:31', '2025-01-13 13:36:31', '', 'Projet 9 Bas de page', '', 'publish', 'closed', 'closed', '', 'projet-9-background-et-animations', '', '', '2025-01-13 19:03:56', '2025-01-13 19:03:56', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=57', 0, 'image', '', 0),
(58, 1, '2025-01-13 13:40:40', '2025-01-13 13:40:40', '', 'Projet 12 Header', '', 'publish', 'closed', 'closed', '', 'projet-11-header', '', '', '2025-01-13 19:04:13', '2025-01-13 19:04:13', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=58', 0, 'image', '', 0),
(59, 1, '2025-01-13 13:43:21', '2025-01-13 13:43:21', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projet 12 Contact', '', 'publish', 'closed', 'closed', '', 'projet-11-contact', '', '', '2025-01-13 19:04:26', '2025-01-13 19:04:26', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=59', 0, 'image', '', 0),
(60, 1, '2025-01-13 13:55:55', '2025-01-13 13:55:55', '', 'Projet 12 filtres', '', 'publish', 'closed', 'closed', '', 'projet-12-filtres', '', '', '2025-01-13 19:04:36', '2025-01-13 19:04:36', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=60', 0, 'image', '', 0),
(62, 1, '2025-01-13 14:23:35', '2025-01-13 14:23:35', '<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', 'Projet 12 Données de photo', '', 'publish', 'closed', 'closed', '', 'projet-12-donnees-de-photo', '', '', '2025-01-13 19:04:47', '2025-01-13 19:04:47', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=62', 0, 'image', '', 0),
(63, 1, '2025-01-13 14:25:26', '2025-01-13 14:25:26', '', 'Projet 12 Ajax', '', 'publish', 'closed', 'closed', '', 'projet-12-ajax', '', '', '2025-01-13 19:05:03', '2025-01-13 19:05:03', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=63', 0, 'image', '', 0),
(64, 1, '2025-01-13 14:27:04', '2025-01-13 14:27:04', '', 'Projet 12 Détails d\'une photo et carrousel', '', 'publish', 'closed', 'closed', '', 'projet-12-details-dune-photo-et-carrousel', '', '', '2025-01-13 19:05:16', '2025-01-13 19:05:16', '', 0, 'http://aymericbdev.local/?post_type=image&#038;p=64', 0, 'image', '', 0),
(67, 1, '2025-01-13 14:40:08', '0000-00-00 00:00:00', '', 'Brouillon auto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2025-01-13 14:40:08', '0000-00-00 00:00:00', '', 0, 'http://aymericbdev.local/?post_type=image&p=67', 0, 'image', '', 0),
(69, 1, '2025-01-13 17:58:04', '2025-01-13 17:58:04', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"image";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'group_6785527c19bbb', '', '', '2025-01-13 18:49:15', '2025-01-13 18:49:15', '', 0, 'http://aymericbdev.local/?post_type=acf-field-group&#038;p=69', 0, 'acf-field-group', '', 0),
(70, 1, '2025-01-13 17:58:04', '2025-01-13 17:58:04', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:1;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Description', 'description', 'publish', 'closed', 'closed', '', 'field_6785527cc82d3', '', '', '2025-01-13 18:42:02', '2025-01-13 18:42:02', '', 69, 'http://aymericbdev.local/?post_type=acf-field&#038;p=70', 0, 'acf-field', '', 0),
(71, 1, '2025-01-13 18:51:56', '2025-01-13 18:51:56', 'a:8:{s:8:"location";a:1:{i:0;a:1:{i:0;a:3:{s:5:"param";s:9:"post_type";s:8:"operator";s:2:"==";s:5:"value";s:5:"image";}}}s:8:"position";s:6:"normal";s:5:"style";s:7:"default";s:15:"label_placement";s:3:"top";s:21:"instruction_placement";s:5:"label";s:14:"hide_on_screen";s:0:"";s:11:"description";s:0:"";s:12:"show_in_rest";i:0;}', 'Description (copier)', 'description-copier', 'trash', 'closed', 'closed', '', 'group_678560cc06b8d__trashed', '', '', '2025-01-13 18:53:43', '2025-01-13 18:53:43', '', 0, 'http://aymericbdev.local/?p=71', 0, 'acf-field-group', '', 0),
(72, 1, '2025-01-13 18:51:56', '2025-01-13 18:51:56', 'a:12:{s:10:"aria-label";s:0:"";s:4:"type";s:4:"text";s:12:"instructions";s:0:"";s:8:"required";i:0;s:17:"conditional_logic";i:0;s:7:"wrapper";a:3:{s:5:"width";s:0:"";s:5:"class";s:0:"";s:2:"id";s:0:"";}s:13:"default_value";s:0:"";s:9:"maxlength";s:0:"";s:17:"allow_in_bindings";i:1;s:11:"placeholder";s:0:"";s:7:"prepend";s:0:"";s:6:"append";s:0:"";}', 'Description', 'description', 'trash', 'closed', 'closed', '', 'field_678560cc0c218__trashed', '', '', '2025-01-13 18:53:43', '2025-01-13 18:53:43', '', 71, 'http://aymericbdev.local/?post_type=acf-field&#038;p=72', 0, 'acf-field', '', 0),
(73, 1, '2025-01-13 19:14:06', '2025-01-13 19:14:06', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'MENTIONS LÉGALES', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2025-01-13 19:14:06', '2025-01-13 19:14:06', '', 16, 'http://aymericbdev.local/?p=73', 0, 'revision', '', 0),
(74, 1, '2025-01-13 19:14:14', '2025-01-13 19:14:14', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'TOUS DROITS RESERVÉS', '', 'inherit', 'closed', 'closed', '', '18-revision-v1', '', '', '2025-01-13 19:14:14', '2025-01-13 19:14:14', '', 18, 'http://aymericbdev.local/?p=74', 0, 'revision', '', 0),
(75, 1, '2025-01-13 19:14:22', '2025-01-13 19:14:22', '<!-- wp:paragraph -->\n<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue. Ut in risus volutpat libero pharetra tempor. Cras vestibulum bibendum augue. Praesent egestas leo in pede. Praesent blandit odio eu enim. Pellentesque sed dui ut augue blandit sodales. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Aliquam nibh. Mauris ac mauris sed pede pellentesque fermentum. Maecenas adipiscing ante non diam sodales hendrerit.</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:paragraph -->\n<p>Ut velit mauris, egestas sed, gravida nec, ornare ut, mi. Aenean ut orci vel massa suscipit pulvinar. Nulla sollicitudin. Fusce varius, ligula non tempus aliquam, nunc turpis ullamcorper nibh, in tempus sapien eros vitae ligula. Pellentesque rhoncus nunc et augue. Integer id felis. Curabitur aliquet pellentesque diam. Integer quis metus vitae elit lobortis egestas. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi vel erat non mauris convallis vehicula. Nulla et sapien. Integer tortor tellus, aliquam faucibus, convallis id, congue eu, quam. Mauris ullamcorper felis vitae erat. Proin feugiat, augue non elementum posuere, metus purus iaculis lectus, et tristique ligula justo vitae magna.Aliquam convallis sollicitudin purus. Praesent aliquam, enim at fermentum mollis, ligula massa adipiscing nisl, ac euismod nibh nisl eu lectus. Fusce vulputate sem at sapien. Vivamus leo. Aliquam euismod libero eu enim. Nulla nec felis sed leo placerat imperdiet. Aenean suscipit nulla in justo. Suspendisse cursus rutrum augue. Nulla tincidunt tincidunt mi. Curabitur iaculis, lorem vel rhoncus faucibus, felis magna fermentum augue, et ultricies lacus lorem varius purus. Curabitur eu amet.&nbsp;</p>\n<!-- /wp:paragraph -->', 'VIE PRIVÉE', '', 'inherit', 'closed', 'closed', '', '20-revision-v1', '', '', '2025-01-13 19:14:22', '2025-01-13 19:14:22', '', 20, 'http://aymericbdev.local/?p=75', 0, 'revision', '', 0) ;
INSERT INTO `wp_posts` ( `ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(76, 1, '2025-01-13 19:14:29', '2025-01-13 19:14:29', '<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Our website address is: http://aymericbdev.local.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class="wp-block-heading">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class="privacy-policy-tutorial">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-01-13 19:14:29', '2025-01-13 19:14:29', '', 3, 'http://aymericbdev.local/?p=76', 0, 'revision', '', 0) ;

#
# End of data contents of table `wp_posts`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_relationships`
#

DROP TABLE IF EXISTS `wp_term_relationships`;


#
# Table structure of table `wp_term_relationships`
#

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_relationships`
#
INSERT INTO `wp_term_relationships` ( `object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(26, 2, 0),
(28, 2, 0),
(30, 3, 0),
(31, 3, 0),
(32, 3, 0),
(35, 2, 0),
(36, 4, 0),
(36, 6, 0),
(36, 7, 0),
(36, 8, 0),
(36, 10, 0),
(39, 4, 0),
(39, 7, 0),
(39, 8, 0),
(39, 10, 0),
(48, 4, 0),
(48, 6, 0),
(48, 7, 0),
(48, 8, 0),
(48, 10, 0),
(55, 4, 0),
(55, 8, 0),
(55, 10, 0),
(56, 4, 0),
(56, 7, 0),
(56, 10, 0),
(57, 4, 0),
(57, 7, 0),
(57, 10, 0),
(58, 5, 0),
(58, 9, 0),
(58, 11, 0),
(59, 5, 0),
(59, 6, 0),
(59, 7, 0),
(59, 8, 0),
(59, 9, 0),
(59, 11, 0),
(60, 5, 0),
(60, 8, 0),
(60, 9, 0),
(60, 11, 0),
(62, 7, 0),
(62, 9, 0),
(62, 11, 0),
(63, 5, 0),
(63, 8, 0),
(63, 9, 0),
(63, 11, 0),
(64, 5, 0),
(64, 6, 0),
(64, 7, 0),
(64, 8, 0),
(64, 9, 0),
(64, 11, 0),
(71, 1, 0) ;

#
# End of data contents of table `wp_term_relationships`
# --------------------------------------------------------



#
# Delete any existing table `wp_term_taxonomy`
#

DROP TABLE IF EXISTS `wp_term_taxonomy`;


#
# Table structure of table `wp_term_taxonomy`
#

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) unsigned NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_term_taxonomy`
#
INSERT INTO `wp_term_taxonomy` ( `term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 3),
(3, 3, 'nav_menu', '', 0, 3),
(4, 4, 'projets', '', 0, 6),
(5, 5, 'projets', '', 0, 5),
(6, 6, 'langage', 'Langage principale utilisé', 0, 4),
(7, 7, 'langage', 'Langage principale utilisé', 0, 8),
(8, 8, 'langage', 'Langage principale utilisé', 0, 8),
(9, 9, 'langage', 'Langage principale utilisé', 0, 6),
(10, 10, 'projet', '', 0, 6),
(11, 11, 'projet', '', 0, 6) ;

#
# End of data contents of table `wp_term_taxonomy`
# --------------------------------------------------------



#
# Delete any existing table `wp_termmeta`
#

DROP TABLE IF EXISTS `wp_termmeta`;


#
# Table structure of table `wp_termmeta`
#

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `term_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_termmeta`
#

#
# End of data contents of table `wp_termmeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_terms`
#

DROP TABLE IF EXISTS `wp_terms`;


#
# Table structure of table `wp_terms`
#

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_terms`
#
INSERT INTO `wp_terms` ( `term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'En-tête', 'en-tete', 0),
(3, 'Pied-de-page', 'pied-de-page', 0),
(4, 'Projet OCR Animations', 'projet9', 0),
(5, 'Projet 12 Openclassrooms : Site de Photographe', 'projet12sitephotos', 0),
(6, 'HTML', 'html', 0),
(7, 'CSS', 'css', 0),
(8, 'Javascript', 'javascript', 0),
(9, 'Fonction php', 'fonctionphp', 0),
(10, 'Projet 9 OCR Animations', 'projet9', 0),
(11, 'Projet 12 OCR Photos', 'projet12', 0) ;

#
# End of data contents of table `wp_terms`
# --------------------------------------------------------



#
# Delete any existing table `wp_usermeta`
#

DROP TABLE IF EXISTS `wp_usermeta`;


#
# Table structure of table `wp_usermeta`
#

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;


#
# Data contents of table `wp_usermeta`
#
INSERT INTO `wp_usermeta` ( `umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ABienfaitAdmin'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:"administrator";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:4:{i:0;s:11:"link-target";i:1;s:15:"title-attribute";i:2;s:3:"xfn";i:3;s:11:"description";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:"add-post_tag";i:1;s:15:"add-post_format";}'),
(20, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(21, 1, 'acf_user_settings', 'a:4:{s:19:"post-type-first-run";b:1;s:20:"taxonomies-first-run";b:1;s:23:"options-pages-first-run";b:1;s:15:"show_field_keys";s:1:"1";}'),
(22, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(23, 1, 'closedpostboxes_acf-taxonomy', 'a:0:{}'),
(24, 1, 'metaboxhidden_acf-taxonomy', 'a:2:{i:0;s:21:"acf-advanced-settings";i:1;s:7:"slugdiv";}'),
(25, 1, 'closedpostboxes_acf-field-group', 'a:0:{}'),
(26, 1, 'metaboxhidden_acf-field-group', 'a:0:{}'),
(27, 1, 'wp_persisted_preferences', 'a:3:{s:4:"core";a:2:{s:26:"isComplementaryAreaVisible";b:1;s:10:"openPanels";a:8:{i:0;s:11:"post-status";i:1;s:32:"taxonomy-panel-projet9animations";i:2;s:33:"taxonomy-panel-projet12sitephotos";i:3;s:31:"taxonomy-panel-projet9animation";i:4;s:32:"taxonomy-panel-projet12sitephoto";i:5;s:22:"taxonomy-panel-langage";i:6;s:22:"taxonomy-panel-projets";i:7;s:21:"taxonomy-panel-projet";}}s:14:"core/edit-post";a:2:{s:12:"welcomeGuide";b:0;s:23:"metaBoxesMainOpenHeight";i:167;}s:9:"_modified";s:24:"2025-01-13T18:56:57.395Z";}'),
(28, 1, 'nav_menu_recently_edited', '2'),
(29, 1, 'wp_user-settings', 'libraryContent=browse'),
(30, 1, 'wp_user-settings-time', '1736325834'),
(31, 1, 'closedpostboxes_image', 'a:0:{}'),
(32, 1, 'metaboxhidden_image', 'a:0:{}'),
(33, 1, 'closedpostboxes_cpt-ui_page_cptui_manage_taxonomies', 'a:0:{}'),
(34, 1, 'metaboxhidden_cpt-ui_page_cptui_manage_taxonomies', 'a:0:{}'),
(35, 1, 'session_tokens', 'a:3:{s:64:"c7744064ddc6c44771dbf3c0d7d8812fe07b06f1e1f8e0c1dad05ed770c5cdb5";a:4:{s:10:"expiration";i:1736920001;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";s:5:"login";i:1736747201;}s:64:"59b178685482614c26ac45ed5b98325058a502e80c85e25bb394af6fd1522960";a:4:{s:10:"expiration";i:1736920130;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";s:5:"login";i:1736747330;}s:64:"2630792d4af6558caa8fbe3d8279a9b50a02c9f077146316bb8ca9ad6c8e4e46";a:4:{s:10:"expiration";i:1736967002;s:2:"ip";s:9:"127.0.0.1";s:2:"ua";s:111:"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36";s:5:"login";i:1736794202;}}'),
(36, 1, 'manageedit-acf-ui-options-pagecolumnshidden', 'a:1:{i:0;s:7:"acf-key";}'),
(37, 1, 'meta-box-order_image', 'a:4:{s:6:"normal";s:23:"acf-group_6785527c19bbb";s:8:"advanced";s:0:"";s:4:"side";s:0:"";s:15:"acf_after_title";s:0:"";}') ;

#
# End of data contents of table `wp_usermeta`
# --------------------------------------------------------



#
# Delete any existing table `wp_users`
#

DROP TABLE IF EXISTS `wp_users`;


#
# Table structure of table `wp_users`
#

CREATE TABLE `wp_users` (
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


#
# Data contents of table `wp_users`
#
INSERT INTO `wp_users` ( `ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ABienfaitAdmin', '$P$BtE9QuxMi3clyYBl5KG2EAQ7wXvcCs0', 'abienfaitadmin', 'camy.nodream@hotmail.fr', 'http://aymericbdev.local', '2025-01-06 06:58:57', '', 0, 'ABienfaitAdmin') ;

#
# End of data contents of table `wp_users`
# --------------------------------------------------------

#
# Add constraints back in and apply any alter data queries.
#

