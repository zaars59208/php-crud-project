-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.24 - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table php-crud-project.menu_items
CREATE TABLE IF NOT EXISTS `menu_items` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `link_title` varchar(20) NOT NULL,
  `class_names` varchar(20) NOT NULL,
  `href` varchar(30) NOT NULL,
  `target` varchar(20) NOT NULL,
  `order` int(20) NOT NULL,
  `is_header` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.menu_items: ~8 rows (approximately)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`id`, `name`, `link_title`, `class_names`, `href`, `target`, `order`, `is_header`) VALUES
	(1, 'Home', 'Home', 'nav-link', '/index.html', '_self', 1, 'true'),
	(2, 'About', 'About Us', 'nav-link', '/about.html', '_self', 2, 'true'),
	(3, 'Services', 'Our Services', 'nav-link', '/services.html', '_self', 3, 'true'),
	(4, 'Contact', 'Contact Us', 'nav-link', '/contact.html', '_self', 4, 'true'),
	(5, 'Blog', 'Our Blog', 'nav-link', '/blog.html', '_self', 5, 'true'),
	(6, 'Sidebar', 'Sidebar', 'sidebar-widgets', '/sidebar.html', '_self', 1, 'false'),
	(7, 'Footer', 'Footer', 'footer-widget', '/footer.html', '_self', 2, 'false'),
	(8, 'Social', 'Social', 'social-links', '/social.html', '_blank', 1, 'false');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `excerpt` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `order` int(20) NOT NULL,
  `owner_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.pages: ~5 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
REPLACE INTO `pages` (`id`, `title`, `excerpt`, `description`, `order`, `owner_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(3, 'Article A	', 'This is the excerpt for Article A.	', 'This is the description for Article A.	', 1, 1, '2022-02-01 05:25:45', '2022-03-15 14:05:22', '2023-04-04 11:56:26'),
	(4, 'Article B', 'This is the excerpt for Article B.	', 'This is the description for Article B.	', 2, 2, '2022-02-03 07:45:32', '2022-03-17 09:20:15', '2023-04-04 11:57:27'),
	(5, 'Article C	', 'This is the excerpt for Article C.	', 'This is the description for Article C.	', 3, 1, '2022-02-05 09:35:18', '2022-03-19 16:45:12', '2023-01-04 11:15:22'),
	(6, 'Article D', 'This is the excerpt for Article D.	', 'This is the description for Article D.	', 4, 3, '2022-02-07 04:10:57', '2022-03-20 11:30:44', '2023-04-04 12:00:01'),
	(7, 'Article E	', 'This is the excerpt for Article E.	', 'This is the description for Article E.	', 5, 2, '2022-02-10 03:20:14', '2022-03-22 08:15:11', '2023-02-14 08:30:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `owner_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.projects: ~5 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
REPLACE INTO `projects` (`id`, `name`, `description`, `owner_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'Project A', 'This is the description for Project A.	', 1, '2022-02-01 05:25:45', '2022-03-15 14:05:22', '2023-03-15 14:05:22'),
	(2, 'Project B', 'This is the description for Project B.	', 2, '2022-02-03 07:45:32', '2022-03-17 09:20:15', '2023-04-04 11:50:34'),
	(3, 'Project C	', 'This is the description for Project C.	', 3, '2022-02-05 09:35:18', '2022-03-19 16:45:12', '2023-01-04 11:15:22'),
	(4, 'Project D	', 'This is the description for Project D.	', 4, '2022-02-07 04:10:57', '2022-03-20 11:30:44', '2023-04-04 11:52:14'),
	(5, 'Project E	', 'This is the description for Project E.	', 5, '2022-02-10 03:20:14', '2022-03-22 08:15:11', '2023-02-14 08:30:12');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.site_settings
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.site_settings: ~8 rows (approximately)
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
REPLACE INTO `site_settings` (`id`, `setting_key`, `setting_value`) VALUES
	(1, 'site-title', 'My website'),
	(2, 'site_description', 'A description of my website'),
	(3, 'site_logo', '/images/logo.png'),
	(4, 'site_favicon', '/images/favicon.ico'),
	(5, 'default_language', 'en_US'),
	(6, 'admin_email', 'admin@mywebsite.com'),
	(7, 'timezone', 'America/New_York'),
	(8, 'max_upload_size', '1048576');
/*!40000 ALTER TABLE `site_settings` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL,
  `deleted_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.users: ~5 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
REPLACE INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(1, 'John Doe', 'johndoe', 'password123	', '2022-02-01 05:25:45', NULL, NULL),
	(2, 'Jane Smith	', 'janesmith', 'qwerty	', '2022-02-03 07:45:32', NULL, NULL),
	(3, 'Bob Johnson	', 'bobjohnson', 'letmein', '2022-02-05 09:35:18', NULL, NULL),
	(4, 'Sarah Thompson	', 'sarahthomps', '123456', '2022-02-07 04:10:57', NULL, NULL),
	(5, 'Mike Davis	', 'mikedavis', 'password', '2022-02-10 03:20:14', NULL, NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
