CREATE TABLE `ch_accounts` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `base_url` varchar(255) NOT NULL,
  `private_key` varchar(255) NOT NULL,
  `public_key` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ch_conversations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `service` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `ch_services` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) NOT NULL,
  `service` varchar(255) NOT NULL,
  `token` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `ch_social_pages` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int(10) unsigned NOT NULL,
  `service` varchar(255) NOT NULL,
  `page_id` varchar(255) NOT NULL,
  `additional` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
