create database trainers;
create table trainers(
trainer_id int not null auto_increment,
first_name varchar(30) not null,
last_name varchar(30) not null,
age int not null,
primary key (trainer_id),
unique (first_name,last_name,subject)
);