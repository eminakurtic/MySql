DROP DATABASE IF EXISTS application_06;
CREATE DATABASE application_06;
USE application_06;
DROP TABLE IF EXISTS computer_parts;
CREATE TABLE computer_parts (
    id int primary key auto_increment,
    code varchar(10) not null,
    type varchar(15) not null,
    name varchar(20) not null,
    price decimal(7,2) not null
);
