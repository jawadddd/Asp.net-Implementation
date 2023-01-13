create database signupProject
USE signupProject
create table users
(
userId int not null primary key,
name varchar(100),
email varchar(100),
pass varchar(100),
address varchar(MAX)
)
select * from users