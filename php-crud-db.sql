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
  `sort_order` int(20) NOT NULL,
  `is_header` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.menu_items: ~8 rows (approximately)
/*!40000 ALTER TABLE `menu_items` DISABLE KEYS */;
REPLACE INTO `menu_items` (`id`, `name`, `link_title`, `class_names`, `href`, `target`, `sort_order`, `is_header`) VALUES
	(1, 'Home', 'Home', 'nav-link', '#page-top', '_self', 1, 'true'),
	(2, 'About', 'About Us', 'nav-link', '#about', '_self', 3, 'true'),
	(3, 'Contact', 'Contact', 'nav-link', '#contact', '_self', 4, 'true'),
	(4, 'Portfolio', 'Portfolio', 'nav-link', '#portfolio', '_self', 2, 'true'),
	(5, 'Blog', 'Our Blog', 'nav-link', '/blog.html', '_self', 5, 'false'),
	(6, 'Sidebar', 'Sidebar', 'sidebar-widgets', '/sidebar.html', '_self', 1, 'false'),
	(7, 'Footer', 'Footer', 'footer-widget', '/footer.html', '_self', 2, 'false'),
	(8, 'Social', 'Social', 'social-links', '/social.html', '_blank', 1, 'false');
/*!40000 ALTER TABLE `menu_items` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.pages
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(150) NOT NULL,
  `excerpt` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `sort_order` int(20) NOT NULL,
  `owner_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.pages: ~5 rows (approximately)
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
REPLACE INTO `pages` (`id`, `title`, `excerpt`, `description`, `sort_order`, `owner_id`, `created_at`, `updated_at`, `deleted_at`) VALUES
	(3, 'about', 'This is short page', '<!-- About Section-->\n<section class="change-test-about page-section bg-primary text-white mb-0" id="about">\n    <div class="container">\n        <!-- About Section Heading-->\n        <h2 class="page-section-heading text-center text-uppercase text-white">About</h2>\n        <!-- Icon Divider-->\n        <div class="divider-custom divider-light">\n            <div class="divider-custom-line"></div>\n            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>\n            <div class="divider-custom-line"></div>\n        </div>\n        <!-- About Section Content-->\n        <div class="row">\n            <div class="col-lg-4 ms-auto"><p class="lead">Freelancer is a free bootstrap theme created by Start Bootstrap. The download includes the complete source files including HTML, CSS, and JavaScript as well as optional SASS stylesheets for easy customization.</p></div>\n            <div class="col-lg-4 me-auto"><p class="lead">You can create your own custom avatar for the masthead, change the icon in the dividers, and add your email address to the contact form to make it fully functional!</p></div>\n        </div>\n        <!-- About Section Button-->\n        <div class="text-center mt-4">\n            <a class="btn btn-xl btn-outline-light" href="https://startbootstrap.com/theme/freelancer/">\n                <i class="fas fa-download me-2"></i>\n                Free Download!\n            </a>\n        </div>\n    </div>\n</section>', 1, 1, '2022-02-01 05:25:45', '2022-03-15 14:05:22', '2023-04-04 11:56:26'),
	(4, 'contact', 'This is short page', '<!-- Contact Section-->\n<section class="page-section" id="contact">\n    <div class="container">\n        <!-- Contact Section Heading-->\n        <h2 class="page-section-heading text-center text-uppercase text-secondary mb-0">Contact Me</h2>\n        <!-- Icon Divider-->\n        <div class="divider-custom">\n            <div class="divider-custom-line"></div>\n            <div class="divider-custom-icon"><i class="fas fa-star"></i></div>\n            <div class="divider-custom-line"></div>\n        </div>\n        <!-- Contact Section Form-->\n        <div class="row justify-content-center">\n            <div class="col-lg-8 col-xl-7">\n                <!-- * * * * * * * * * * * * * * *-->\n                <!-- * * SB Forms Contact Form * *-->\n                <!-- * * * * * * * * * * * * * * *-->\n                <!-- This form is pre-integrated with SB Forms.-->\n                <!-- To make this form functional, sign up at-->\n                <!-- https://startbootstrap.com/solution/contact-forms-->\n                <!-- to get an API token!-->\n                <form id="contactForm" data-sb-form-api-token="API_TOKEN">\n                    <!-- Name input-->\n                    <div class="form-floating mb-3">\n                        <input class="form-control" id="name" type="text" placeholder="Enter your name..." data-sb-validations="required" />\n                        <label for="name">Full name</label>\n                        <div class="invalid-feedback" data-sb-feedback="name:required">A name is required.</div>\n                    </div>\n                    <!-- Email address input-->\n                    <div class="form-floating mb-3">\n                        <input class="form-control" id="email" type="email" placeholder="name@example.com" data-sb-validations="required,email" />\n                        <label for="email">Email address</label>\n                        <div class="invalid-feedback" data-sb-feedback="email:required">An email is required.</div>\n                        <div class="invalid-feedback" data-sb-feedback="email:email">Email is not valid.</div>\n                    </div>\n                    <!-- Phone number input-->\n                    <div class="form-floating mb-3">\n                        <input class="form-control" id="phone" type="tel" placeholder="(123) 456-7890" data-sb-validations="required" />\n                        <label for="phone">Phone number</label>\n                        <div class="invalid-feedback" data-sb-feedback="phone:required">A phone number is required.</div>\n                    </div>\n                    <!-- Message input-->\n                    <div class="form-floating mb-3">\n                        <textarea class="form-control" id="message" type="text" placeholder="Enter your message here..." style="height: 10rem" data-sb-validations="required"></textarea>\n                        <label for="message">Message</label>\n                        <div class="invalid-feedback" data-sb-feedback="message:required">A message is required.</div>\n                    </div>\n                    <!-- Submit success message-->\n                    <!---->\n                    <!-- This is what your users will see when the form-->\n                    <!-- has successfully submitted-->\n                    <div class="d-none" id="submitSuccessMessage">\n                        <div class="text-center mb-3">\n                            <div class="fw-bolder">Form submission successful!</div>\n                            To activate this form, sign up at\n                            <br />\n                            <a href="https://startbootstrap.com/solution/contact-forms">https://startbootstrap.com/solution/contact-forms</a>\n                        </div>\n                    </div>\n                    <!-- Submit error message-->\n                    <!---->\n                    <!-- This is what your users will see when there is-->\n                    <!-- an error submitting the form-->\n                    <div class="d-none" id="submitErrorMessage"><div class="text-center text-danger mb-3">Error sending message!</div></div>\n                    <!-- Submit Button-->\n                    <button class="btn btn-primary btn-xl disabled" id="submitButton" type="submit">Send</button>\n                </form>\n            </div>\n        </div>\n    </div>\n</section>', 2, 2, '2022-02-03 07:45:32', '2022-03-17 09:20:15', '2023-04-04 11:57:27'),
	(5, 'Page 3', 'This is short page', 'This is amazingly issue.', 3, 1, '2022-02-05 09:35:18', '2022-03-19 16:45:12', '2023-01-04 11:15:22'),
	(6, 'Page 4', 'This is short page', 'This is amazingly issue.', 4, 3, '2022-02-07 04:10:57', '2022-03-20 11:30:44', '2023-04-04 12:00:01'),
	(7, 'Page 5', 'This is short page', 'This is amazingly issue.', 5, 2, '2022-02-10 03:20:14', '2022-03-22 08:15:11', '2023-02-14 08:30:12');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.projects
CREATE TABLE IF NOT EXISTS `projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  `description` varchar(150) NOT NULL,
  `owner_id` int(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime NOT NULL,
  `deleted_at` datetime DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.projects: ~6 rows (approximately)
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
REPLACE INTO `projects` (`id`, `name`, `description`, `owner_id`, `created_at`, `updated_at`, `deleted_at`, `image_url`) VALUES
	(1, 'Project A', 'This is the description for Project A.	', 1, '2022-02-01 05:25:45', '2022-03-15 14:05:22', NULL, 'assets/img/portfolio/cabin.png'),
	(2, 'Project B', 'This is the description for Project B.	', 1, '2022-02-03 07:45:32', '2022-03-17 09:20:15', NULL, 'assets/img/portfolio/cake.png'),
	(3, 'Project C	', 'This is the description for Project C.	', 1, '2022-02-05 09:35:18', '2022-03-19 16:45:12', NULL, 'assets/img/portfolio/circus.png'),
	(4, 'Project D	', 'This is the description for Project D.	', 1, '2022-02-07 04:10:57', '2022-03-20 11:30:44', NULL, 'assets/img/portfolio/game.png'),
	(5, 'Project E	', 'This is the description for Project E.	', 1, '2022-02-10 03:20:14', '2022-03-22 08:15:11', NULL, 'assets/img/portfolio/safe.png'),
	(6, 'Project F', 'This is the description for Project F', 1, '2023-04-07 21:51:57', '2023-04-07 21:52:07', NULL, 'assets/img/portfolio/submarine.png');
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;

-- Dumping structure for table php-crud-project.site_settings
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- Dumping data for table php-crud-project.site_settings: ~8 rows (approximately)
/*!40000 ALTER TABLE `site_settings` DISABLE KEYS */;
REPLACE INTO `site_settings` (`id`, `setting_key`, `setting_value`) VALUES
	(1, 'site-title', 'My website from DB'),
	(2, 'site_description', 'A description of my website'),
	(3, 'site_logo', 'assets/img/portfolio/logo.png'),
	(4, 'site_favicon', './assets/favicon-freelancer.ico'),
	(5, 'fb_social_link', 'fb.com/zaars59208'),
	(6, 'tw_social_link', 'twitter.com/zaars59208'),
	(7, 'ln_social_link', 'linkedin.com/zaars59208'),
	(8, 'dr_social_link', 'dribble.com/zaars59208'),
	(9, 'business_address', 'Rahim Yar Khan, City Tower.'),
	(10, 'about_freelancer', 'I am freelancer.'),
	(11, 'copyright_text', 'Code With Raju');
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
