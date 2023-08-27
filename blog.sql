-- -------------------------------------------------------------
-- TablePlus 5.4.0(504)
--
-- https://tableplus.com/
--
-- Database: blog
-- Generation Time: 2023-08-28 01:56:19.6250
-- -------------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


DROP TABLE IF EXISTS `abotmes`;
CREATE TABLE `abotmes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `h1_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `h2_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `h3_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `github_link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `twitter_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `latest_posts_h1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `latest_posts_h2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `media`;
CREATE TABLE `media` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint unsigned NOT NULL,
  `manipulations` json NOT NULL,
  `custom_properties` json NOT NULL,
  `generated_conversions` json NOT NULL,
  `responsive_images` json NOT NULL,
  `order_column` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `media_uuid_unique` (`uuid`),
  KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  KEY `media_order_column_index` (`order_column`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `postinfo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `user_id` bigint unsigned NOT NULL,
  `post_image` longtext COLLATE utf8mb4_unicode_ci,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_user_id_foreign` (`user_id`),
  CONSTRAINT `posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `taggables`;
CREATE TABLE `taggables` (
  `tag_id` bigint unsigned NOT NULL,
  `taggable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` bigint unsigned NOT NULL,
  UNIQUE KEY `taggables_tag_id_taggable_id_taggable_type_unique` (`tag_id`,`taggable_id`,`taggable_type`),
  KEY `taggables_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`),
  CONSTRAINT `taggables_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `tags`;
CREATE TABLE `tags` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` json NOT NULL,
  `slug` json NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_column` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `abotmes` (`id`, `h1_title`, `h2_title`, `h3_title`, `is_active`, `image`, `image_text`, `github_link`, `twitter_link`, `created_at`, `updated_at`, `latest_posts_h1`, `latest_posts_h2`) VALUES
(1, 'Hi, I\'m bo3bdo!', 'Hi, my name is bo3bdo. a full-stack web developer working at Web. In this publication, I share everything I know about Laravel And Web, packages, and tools. Browse the list of topics or check the latest posts from below.', 'w', 0, 'gEj3KrQNA024Ow7RUlKGDNScjI72ne-metaNTI3MTM4MC5qcGVn-.jpg', 'full-stack web developer', 'https://github.com/bo3bdo', 'https://twitter.com/Hamad3bdulla', '2023-08-06 21:36:36', '2023-08-22 08:59:44', 'Latest Posts !', 'Welcome to my blog. Short posts with 🔥hot tips for a quick read. !!');

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_08_02_180319_create_abotmes_table', 1),
(6, '2023_08_02_180335_create_posts_table', 2),
(7, '2014_10_12_200000_add_two_factor_columns_to_users_table', 3),
(8, '2023_08_07_193945_create_sessions_table', 3),
(9, '2023_08_09_003011_create_media_table', 4),
(10, '2023_08_10_225322_create_tag_tables', 5),
(11, '2023_08_17_082242_create_media_table', 6);

INSERT INTO `posts` (`id`, `title`, `status`, `postinfo`, `body`, `created_at`, `updated_at`, `user_id`, `post_image`, `slug`) VALUES
(12, 'oh my posh', 1, 'Open a PowerShell prompt and run the following command:', 'nstallation\n\nwinget\n\nOpen a PowerShell prompt and run the following command:\n\n```\nwinget install JanDeDobbeleer.OhMyPosh -s winget\n```\n\ninstall a font When the above command gives an error, make sure to create the profile first.\n\n```\nNew-Item -Path $PROFILE -Type File -Force\n```\n\nThen add the following line.\n\n```\noh-my-posh init pwsh | Invoke-Expression\n```\n\nInstall-Module\n\n```\nInstall-Module PSReadLine -AllowPrerelease -Force\n```\n\nIf you want the latest, otherwise remove the Prerelease. Then edit your $profile. I usually do this:\n\n```\nnotepad $PROFILE\n```\n\nAnd add\n\n```\n\nif ($host.Name -eq \'ConsoleHost\')\n{\nImport-Module PSReadLine\n}\n```\n\nIs your prompt\nnot extra enough? That\'s because your directory listing needs color AND cool icons!\n\n`Install-Module -Name Terminal-Icons -Repository PSGallery`\n\nAnd then add one line to my profile(editwith\"codeprofile (edit with \"codeprofile(editwith\"codeprofile\"):\n\n```\nImport-Module -Name Terminal-Icons\nnotepad $PROFILE\n\noh-my-posh init pwsh --config \'C:\\Users\\bo3bd\\AppData\\Local\\Programs\\oh-my-posh\\themes\\patriksvensson.omp.json\' | Invoke-Expression if ($host.Name -eq \'ConsoleHost\') { Import-Module PSReadLine }\n\n```', '2023-08-21 16:06:55', '2023-08-21 17:12:07', 1, '0HSUKxqdHsZV237FPmYRNx90d0YKiR-metaamg0MzdyMWFnMG41YzM2bHF2ZnQud2VicA==-.webp', 'oh-my-posh'),
(21, 'How To Install Linux, Apache, MySQL, PHP (LAMP) Stack on Ubuntu 22.04', 1, 'A “LAMP” stack is a group of open source software that is typically installed together in order to enable a server to host dynamic websites and web apps written in PHP. This term is an acronym which represents the Linux operating system with the Apache we', '**Introduction**\n\n# How To Install Linux\n\n**A** “LAMP” stack is a group of open source software that is typically installed together in order to enable a server to host dynamic websites and web apps written in PHP. This term is an acronym which represents the Linux operating system with the Apache web server. The site data is stored in a MySQL database, and dynamic content is processed by PHP.\n\nIn this guide, you’ll set up a LAMP stack on an Ubuntu 22.04 server.\n\n**Prerequisites**\n\nIn order to complete this tutorial, you will need to have an Ubuntu 22.04 server with a non-root sudo-enabled user account and a basic firewall. This can be configured using our initial server setup guide for Ubuntu 22.04.\n\nStep 1 — Installing Apache and Updating the Firewall\nThe Apache web server is among the most popular web servers in the world. It’s well documented, has an active community of users, and has been in wide use for much of the history of the web, which makes it a great choice for hosting a website.\n\nStart by updating the package manager cache. If this is the first time you’re using sudo within this session, you’ll be prompted to provide your user’s password to confirm you have the right privileges to manage system packages with apt:\n\n```\nsudo apt update\n```\n\nFor now, it’s best to allow only connections on port 80, since this is a fresh Apache installation and you don’t yet have a TLS/SSL certificate configured to allow for HTTPS traffic on your server.\n\nTo only allow traffic on port 80, use the Apache profile:\n```\nsudo ufw allow in \"Apache\"\n```\n\nTraffic on port 80 is now allowed through the firewall.\n\nYou can do a spot check right away to verify that everything went as planned by visiting your server’s public IP address in your web browser (view the note under the next heading to find out what your public IP address is if you do not have this information already):\n\nhttp://your_server_ip\n\n![](https://boooooo.test/storage/attachments/ykOpnNkuGmDLGpz8R90GvfWhL9FmWQCAQO6qK8cC.png)\n\nStep 2 — Installing MySQL\nNow that you have a web server up and running, you need to install the database system to be able to store and manage data for your site. MySQL is a popular database management system used within PHP environments.\n\nAgain, use apt to acquire and install this software:\n\n```\nsudo apt install mysql-server\n```\n\n**Warning:** As of July 2022, an error will occur when you run the mysql_secure_installation script without some further configuration. The reason is that this script will attempt to set a password for the installation’s root MySQL account but, by default on Ubuntu installations, this account is not configured to connect using a password.\n\nPrior to July 2022, this script would silently fail after attempting to set the root account password and continue on with the rest of the prompts. However, as of this writing the script will return the following error after you enter and confirm a password:\n\n> Output\n ... Failed! Error: SET PASSWORD has no significance for user \'root\'@\'localhost\' as the authentication method used doesn\'t store authentication data in the MySQL server. Please consider using ALTER USER instead if you want to change authentication parameters.\nNew password:\n\nTo Fixs it First, open up the MySQL prompt:\n```\nsudo mysql\n```\n\n```\nALTER USER \'root\'@\'localhost\' IDENTIFIED WITH mysql_native_password BY \'password\';\n```\n\nNow Start the interactive script by running:\n\n```\nsudo mysql_secure_installation\n```\n\n\nStep 3 — Installing PHP\n\nYou have Apache installed to serve your content and MySQL installed to store and manage your data. PHP is the component of our setup that will process code to display dynamic content to the final user. In addition to the php package, you’ll need php-mysql, a PHP module that allows PHP to communicate with MySQL-based databases. You’ll also need libapache2-mod-php to enable Apache to handle PHP files. Core PHP packages will automatically be installed as dependencies.\n\nTo install these packages, run the following command:\n\n```\nsudo apt install php libapache2-mod-php php-mysql\n```\n\nStep 4 — Creating a Virtual Host for your Website\n\nApache on Ubuntu 22.04 has one virtual host enabled by default that is configured to serve documents from the /var/www/html directory. While this works well for a single site, it can become unwieldy if you are hosting multiple sites. Instead of modifying /var/www/html, we’ll create a directory structure within /var/www for the your_domain site, leaving /var/www/html in place as the default directory to be served if a client request doesn’t match any other sites.\n\nCreate the directory for your_domain as follows:\n```\nsudo mkdir /var/www/your_domain\n```\n\nNext, assign ownership of the directory with the $USER environment variable, which will reference your current system user:\n\n```\nsudo chown -R $USER:$USER /var/www/your_domain\n```\n\nThen, open a new configuration file in Apache’s sites-available directory using your preferred command-line editor. Here, we’ll use nano:\n\n```\nsudo nano /etc/apache2/sites-available/your_domain.conf\n```\n\n\nThis will create a new blank file. Add in the following bare-bones configuration with your own domain name:\n\n>/etc/apache2/sites-available/your_domain.conf\n\n```\n<VirtualHost *:80>\n    ServerName your_domain\n    ServerAlias www.your_domain \n    ServerAdmin webmaster@localhost\n    DocumentRoot /var/www/your_domain\n    ErrorLog ${APACHE_LOG_DIR}/error.log\n    CustomLog ${APACHE_LOG_DIR}/access.log combined\n</VirtualHost>\n```\n\nNow, use a2ensite to enable the new virtual host:\n\n```\nsudo a2ensite your_domain\n```\n\nYou might want to disable the default website that comes installed with Apache. This is required if you’re not using a custom domain name, because in this case Apache’s default configuration would override your virtual host. To disable Apache’s default website, type:\n\n```\nsudo a2dissite 000-default\n```\n\nTo make sure your configuration file doesn’t contain syntax errors, run the following command:\n```\nsudo apache2ctl configtest\n```\n\nFinally, reload Apache so these changes take effect:\n```\nsudo systemctl reload apache2\n```\n\n\nYour new website is now active, but the web root /var/www/your_domain is still empty. Create an index.html file in that location to test that the virtual host works as expected:\n\n```\nnano /var/www/your_domain/index.html\n```\n\nInclude the following content in this file:\n\n```html\n<html>\n  <head>\n    <title>your_domain website</title>\n  </head>\n  <body>\n    <h1>Hello World!</h1>\n\n    <p>This is the landing page of <strong>your_domain</strong>.</p>\n  </body>\n</html>\n```\n\nSave and close the file, then go to your browser and access your server’s domain name or IP address:\n\nhttp://server_domain_or_IP\nYour web page should reflect the contents in the file you just edited:\n![](https://boooooo.test/storage/attachments/XCoB48fgp8fbd8BCZGEdhxp4pXpSew92YE7wTrge.png)\n\nApache virtual host test landing page that reveals your HTML code to the user', '2023-08-21 22:39:43', '2023-08-24 09:29:07', 1, 'post_images/KaFCpv6p70G50Pz5RhjwGdmrgQBsR6-metab3RTeXI4ODFEMEswU3NsNkQyQUVhbDdOT3BZb1g0LW1ldGFhVzUwY204dGRHOHRZMnh2ZFdRdVpEUTVZbU0xWmpjdWFuQmxadz09LS5qcGc=-.jpg', 'how-to-install-linux-apache-mysql-php-lamp-stack-on-ubuntu-2204');

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0zynhOCbmE04MVxvZ9btDFt6Ke95xoAzY7Vy2FKd', 1, '127.0.0.1', 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/116.0.0.0 Safari/537.36 Edg/116.0.1938.54', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiQ2NTTnNhQmhLd2F1V3dERDd6YU1vNTNBMGgyQk5ORXowT0FNZ1BtaSI7czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2MDoiJDJ5JDEwJDdHNUFxZzQvRWh3TExnMkhuMy5ZMi4ucGoyWmtOdE95Wlp4OS81c3Vtd1VFOGlXWXBHN00yIjtzOjk6Il9wcmV2aW91cyI7YToxOntzOjM6InVybCI7czo4OToiaHR0cHM6Ly9ib29vb29vLnRlc3Qvc2hvdy9ob3ctdG8taW5zdGFsbC1saW51eC1hcGFjaGUtbXlzcWwtcGhwLWxhbXAtc3RhY2stb24tdWJ1bnR1LTIyMDQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjg6ImZpbGFtZW50IjthOjA6e319', 1692875743);

INSERT INTO `taggables` (`tag_id`, `taggable_type`, `taggable_id`) VALUES
(5, 'App\\Models\\Post', 12),
(11, 'App\\Models\\Post', 21),
(12, 'App\\Models\\Post', 21);

INSERT INTO `tags` (`id`, `name`, `slug`, `type`, `order_column`, `created_at`, `updated_at`) VALUES
(1, '{\"en\": \"laravel\"}', '{\"en\": \"laravel\"}', NULL, 1, '2023-08-10 22:56:32', '2023-08-10 22:56:32'),
(2, '{\"en\": \"php\"}', '{\"en\": \"php\"}', NULL, 2, '2023-08-10 22:56:32', '2023-08-10 22:56:32'),
(3, '{\"en\": \"Filament\"}', '{\"en\": \"filament\"}', NULL, 3, '2023-08-10 22:56:32', '2023-08-10 22:56:32'),
(5, '{\"en\": \"WINDOWS\"}', '{\"en\": \"windows\"}', NULL, 5, '2023-08-11 00:16:35', '2023-08-11 00:16:35'),
(11, '{\"en\": \"Linux\"}', '{\"en\": \"linux\"}', NULL, 6, '2023-08-21 22:39:43', '2023-08-21 22:39:43'),
(12, '{\"en\": \"Ubuntu\"}', '{\"en\": \"ubuntu\"}', NULL, 7, '2023-08-21 22:39:43', '2023-08-21 22:39:43');

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bo3bdo', 'bo3bdo@hotmail.com', NULL, '$2y$10$7G5Aqg4/EhwLLg2Hn3.Y2..pj2ZkNtOyZZx9/5sumwUE8iWYpG7M2', NULL, NULL, NULL, 'nkQ8xdGVnkk8JWnJ3bEKSVPhkGZwo1LUzgf8psuIKHhaSksyEj4WaFbvJALS', '2023-08-07 19:53:51', '2023-08-07 19:53:51');



/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;