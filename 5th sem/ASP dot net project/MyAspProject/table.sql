create database dotnetdb;
use dotnetdb;
CREATE TABLE users (
    id INT PRIMARY KEY auto_increment,
    name VARCHAR(100),
    email VARCHAR(100),
    gender VARCHAR(10),
    password varchar(50) not null
);

insert into users (name, email, gender, password) values("user", "user@gmail.com", "male", "123");
ALTER TABLE users
add password varchar(50) not null
after gender;

update users
set password = "123"
where id = 2;

CREATE TABLE SimpleInterestRecords (
    Id INT auto_increment PRIMARY KEY ,
    Principal DECIMAL(18,2),
    Rate DECIMAL(10,2),
    Time INT,
    Interest DECIMAL(18,2)
);

create table user(
 id INT PRIMARY KEY auto_increment,
    name VARCHAR(100),
    email VARCHAR(100),
    password varchar(50) not null
    );

