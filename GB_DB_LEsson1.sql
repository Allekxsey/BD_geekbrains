CREATE TABLE `country` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(124) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
CREATE TABLE `region` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(146) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
CREATE TABLE `district` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
CREATE TABLE `city` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
CREATE TABLE `bd_countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `country_id` int unsigned NOT NULL,
  `region_id` int unsigned NOT NULL,
  `district_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_country_id_idx` (`country_id`),
  KEY `fk_region_id_idx` (`region_id`),
  KEY `fk_district_id_idx` (`district_id`),
  KEY `fk_city_id_idx` (`city_id`),
  CONSTRAINT `fk_city_id` FOREIGN KEY (`city_id`) REFERENCES `city` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_district_id` FOREIGN KEY (`district_id`) REFERENCES `district` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
