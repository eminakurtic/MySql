CREATE DATABASE cars;
USE cars;
CREATE TABLE cars (car_id int primary key auto_increment, car_make varchar(20) not null, car_model varchar(30) not null, car_price decimal(6, 2));

ALTER TABLE cars ADD COLUMN stock int(11);

ALTER TABLE cars ADD COLUMN car_country_id int(11) AFTER car_id;

ALTER TABLE cars CHANGE COLUMN car_country_id car_country_id int(11) NOT NULL;
ALTER TABLE cars CHANGE COLUMN stock car_stock int(11) NOT NULL;

ALTER TABLE cars CHANGE COLUMN car_price car_price decimal(6,2) NOT NULL;

#DROP TABLE IF EXISTS cars;
#DROP DATABASE IF EXISTS cars;