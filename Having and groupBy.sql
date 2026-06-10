use college;

create table example(
empid int,
name varchar(50),
dept varchar(10),
salary int,
join_year int
);

insert into example(empid,name,dept,salary,join_year)
values(1,'Ravi','IT',60000,2020),
(2,'Meena','HR',45000,2019),
(3,'Arjun','IT',75000,2021),
(4,'Priya','Finance',55000,2020),
(5,'Kiran','HR',50000,2022),
(6,'Sneha','IT',70000,2019),
(7,'Rahul','Finance',62000,2021),
(8,'Divya','HR',48000,2022);

-- select * from example;

/* beginner level
select dept,count(dept) from example group by dept;
select dept,sum(salary) as total_salary from example group by dept;
average salary and heighest salary
select avg(salary) as avg_salary,min(salary) as lowest_salary,
max(salary) as heighest_salary , dept from example group by dept; */

/* intermediate level 
select dept from example group by dept
having count(dept) > 2;
select dept from example group by dept
having sum(salary) > 160000;
select dept from example group by depthaving avg(salary) < 55000;
select sum(salary),join_year from example group by join_year; */
/* Advanced level
select dept from example group by dept having min(salary) > 50000;
select dept,empid from example
where join_year > 2019 
group by empid,dept
having count(empid);
select dept,sum(salary) from example 
group by salary,dept; */

