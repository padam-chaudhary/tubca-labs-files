create database egdb;
use egdb;

create table car(
id int identity(1,1) primary key ,
name varchar(50) not null,
model varchar(50) not null,
company varchar(50) not null
);


