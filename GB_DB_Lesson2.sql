ALTER TABLE `geodata`.`_countries` 
DROP COLUMN `title_cz`,
DROP COLUMN `title_lv`,
DROP COLUMN `title_lt`,
DROP COLUMN `title_ja`,
DROP COLUMN `title_pl`,
DROP COLUMN `title_it`,
DROP COLUMN `title_fr`,
DROP COLUMN `title_de`,
DROP COLUMN `title_pt`,
DROP COLUMN `title_es`,
DROP COLUMN `title_en`,
DROP COLUMN `title_be`,
DROP COLUMN `title_ua`,
CHANGE COLUMN `country_id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL ,
ADD PRIMARY KEY (`id`);
;
ALTER TABLE `geodata`.`_regions` 
DROP COLUMN `title_cz`,
DROP COLUMN `title_lv`,
DROP COLUMN `title_lt`,
DROP COLUMN `title_ja`,
DROP COLUMN `title_pl`,
DROP COLUMN `title_it`,
DROP COLUMN `title_fr`,
DROP COLUMN `title_de`,
DROP COLUMN `title_pt`,
DROP COLUMN `title_es`,
DROP COLUMN `title_en`,
DROP COLUMN `title_be`,
DROP COLUMN `title_ua`,
CHANGE COLUMN `region_id` `id` INT NOT NULL AUTO_INCREMENT ,
CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL ,
ADD PRIMARY KEY (`id`);
;
ALTER TABLE `geodata`.`_cities` 
DROP COLUMN `region_cz`,
DROP COLUMN `area_cz`,
DROP COLUMN `title_cz`,
DROP COLUMN `region_lv`,
DROP COLUMN `area_lv`,
DROP COLUMN `title_lv`,
DROP COLUMN `region_lt`,
DROP COLUMN `area_lt`,
DROP COLUMN `title_lt`,
DROP COLUMN `region_ja`,
DROP COLUMN `area_ja`,
DROP COLUMN `title_ja`,
DROP COLUMN `region_pl`,
DROP COLUMN `area_pl`,
DROP COLUMN `title_pl`,
DROP COLUMN `region_it`,
DROP COLUMN `area_it`,
DROP COLUMN `title_it`,
DROP COLUMN `region_fr`,
DROP COLUMN `area_fr`,
DROP COLUMN `title_fr`,
DROP COLUMN `region_de`,
DROP COLUMN `area_de`,
DROP COLUMN `title_de`,
DROP COLUMN `region_pt`,
DROP COLUMN `area_pt`,
DROP COLUMN `title_pt`,
DROP COLUMN `region_es`,
DROP COLUMN `area_es`,
DROP COLUMN `title_es`,
DROP COLUMN `region_en`,
DROP COLUMN `area_en`,
DROP COLUMN `title_en`,
DROP COLUMN `region_be`,
DROP COLUMN `area_be`,
DROP COLUMN `title_be`,
DROP COLUMN `region_ua`,
DROP COLUMN `area_ua`,
DROP COLUMN `title_ua`,
DROP COLUMN `region_ru`,
DROP COLUMN `area_ru`;

ALTER TABLE `geodata`.`_cities` 
CHANGE COLUMN `city_id` `id` INT NOT NULL AUTO_INCREMENT ,
ADD PRIMARY KEY (`id`);
;
ALTER TABLE `geodata`.`_cities` 
CHANGE COLUMN `title_ru` `title` VARCHAR(150) NOT NULL ;

INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Москва');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Санкт-Петербург');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('8', 'Herzliya');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Пушкин');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('4', 'Астана');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Великие Луки');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('4', 'Алма-Ата');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('2', 'Севастополь');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Сестрорецк');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('130', 'Ulaanbaatar Hot');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('11', 'Бишкек');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Девяткино, Ленинградская обл.');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('13', 'Klaipėda');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Петергоф');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Витебск');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('10', 'Toronto');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Брест');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Минск');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('16', 'Исфара');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('2', 'Киев');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Ломоносов');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('15', 'Тирасполь');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('8', 'Holon');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Гомель');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('8', 'Haifa');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('11', 'Каракол');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Могилев');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('8', 'Migdal HaEmek');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('5', 'Ханлар (Гёйгёль)');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('3', 'Гродно');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('15', 'Рыбница');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('15', 'Оргеев');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('36', 'Bruxelles');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('6', 'Ереван');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Красное Село');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('8', 'Rehovot');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('210', 'Guatemala');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('217', 'Villars-sur-Glâne');
INSERT INTO `geodata`.`_regions` (`country_id`, `title`) VALUES ('1', 'Зеленогорск');

DELETE FROM `geodata`.`_cities` WHERE (`id` = '1');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '2');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '4');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '12');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '14');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '34');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '183');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '185');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '188');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '192');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '204');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '222');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '225');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '242');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '244');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '273');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '281');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '282');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '291');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '314');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '348');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '374');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '379');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '392');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '402');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '421');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '467');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '511');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '578');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '649');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '713');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '741');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '750');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '762');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '782');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '798');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '842');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '867');
DELETE FROM `geodata`.`_cities` WHERE (`id` = '868');

ALTER TABLE `geodata`.`_regions` 
ADD INDEX `fk_countries(id)_idx` (`country_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_regions` 
ADD CONSTRAINT `fk_countries(id)`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;
ALTER TABLE `geodata`.`_cities` 
ADD INDEX `fk_country_id_idx` (`country_id` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_cities` 
ADD CONSTRAINT `fk_country_id`
  FOREIGN KEY (`country_id`)
  REFERENCES `geodata`.`_countries` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `geodata`.`_countries` 
ADD INDEX `idx_title_country` (`title` ASC) VISIBLE;
;
ALTER TABLE `geodata`.`_regions` 
ADD INDEX `idx_title_regions` (`title` ASC) VISIBLE;
ALTER TABLE `geodata`.`_regions` ALTER INDEX `fk_countries(id)_idx` INVISIBLE;

