USE dls;
DROP TABLE IF EXISTS user;
CREATE TABLE users (id int primary key auto_increment, name varchar(20) not null, surname varchar(30) not null);
ALTER TABLE users ADD COLUMN password varchar(256) NOT NULL;