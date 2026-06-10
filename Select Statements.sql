----- Select statement -------

create database college;

use college;
drop table Employee;
create table Employee(
name varchar(50),
gender char(1),
id int,
salary int
);

insert into Employee(name,gender,id,salary)
values ('Rohith','M',43,50000),
('Ravi','M',41,544355),
('Zebra','A',00,544),
('Anudeep','M',03,544665),
('Rohith','M',43,50000),
('Bhanu','M',6,665598);

-- select * from Employee
-- where salary = 665598;

-- select distinct * from Employee;
-- select * from Employee
-- where salary between 544355 and 665598;

-- select * from Employee order by id desc;

-- select * from Employee limit 3;
-- select * from Employee limit 3 offset 3;
SELECT DISTINCT gender
FROM Employee;