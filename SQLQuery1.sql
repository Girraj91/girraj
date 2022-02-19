create database batch16_13821
use batch16_13821

create table employee
(
id int primary key identity,
name varchar(50),
city varchar(50),
age int
)
insert into employee(name,city,age)values('ankur','delhi',34)
select * from employee