CREATE DATABASE trainers;
USE trainers;
CREATE TABLE trainers(
trainer_id int NOT NULL AUTO_INCREMENT,
first_name VARCHAR(30) NOT NULL,
last_name varchar(30) NOT NULL,
age INT NOT NULL,
PRIMARY KEY (trainer_id),
UNIQUE (first_name,last_name,subject)
);
