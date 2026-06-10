use college;
drop table info;
create table info(
empid int,
name varchar(50),
dept varchar(10),
salary int,
join_year int
);

insert into info(empid,name,dept,salary,join_year)
values(1,'Ravi','IT',60000,2020),
(2,'Meena','HR',45000,2019),
(3,'Arjun','IT',75000,2021),
(4,'Priya','Finance',55000,2020),
(5,'Kiran','HR',50000,2022),
(6,'Sneha','IT',70000,2019),
(7,'Rahul','Finance',62000,2021),
(8,'Divya','HR',48000,2022);

-- select * from info;
 /*  by using count aggregation function
 select count(*) from info; 
 select count(*),dept from info  group by	dept;
 select count(distinct dept) from info; */

/* by using Sum () 
 select sum(salary) as total_salary from info;
 select dept,sum(salary) as dept_salary  from info group by	dept; */
 
 /* using Avg()
 select avg(salary) as mean_saalary from info;
 select dept,round(avg(salary),2) as avg_salary from info group by dept; */
 
 /* max() and min() 
 select dept , max(salary), min(salary) from info  group by dept;
 select dept, min(join_year) from info group by dept; */
 select max(salary) from info ;
 
 
--  select avg(salary) from info where join_year > 2020;

SELECT MAX(salary) AS second_highest
FROM info
WHERE salary < (SELECT MAX(salary) FROM info);
-- Result: 70000
SELECT MAX(salary) FROM info;

select count(salary) from info; 