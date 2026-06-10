use college;
CREATE TABLE employees (
  emp_id  INT,
  name    VARCHAR(50),
  dept    VARCHAR(20),
  salary  INT,
  city    VARCHAR(30)
);

-- INSERT INTO employees VALUES
-- (1,'Ravi','IT',60000,'Hyderabad'),
-- (2,'Meena','HR',45000,'Chennai'),
-- (3,'Arjun','IT',75000,'Hyderabad'),
-- (4,'Priya','Finance',55000,'Mumbai'),
-- (5,'Kiran','HR',50000,'Chennai'),
-- (6,'Sneha','IT',70000,'Bangalore'),
-- (7,'Rahul','Finance',62000,'Mumbai'),
-- (8,'Divya','HR',48000,'Hyderabad'),
-- (9,'Suresh','IT',68000,'Chennai'),
-- (10, 'Pooja', 'Finance', 57000, 'Pune') , (11, 'Ajay', 'HR', 46000, 'Delhi');

delete from employees
where emp_id = 11;


ALTER TABLE employees
ADD PRIMARY KEY (emp_id);


INSERT INTO employees VALUES
(1, 'Ravi',   'IT',      60000, 'Hyderabad'),
(2, 'Meena',  'HR',      45000, 'Chennai'),
(3, 'Arjun',  'IT',      75000, 'Hyderabad'),
(4, 'Priya',  'Finance', 55000, 'Mumbai'),
(5, 'Kiran',  'HR',      50000, 'Chennai'),
(6, 'Sneha',  'IT',      70000, 'Bangalore'),
(7, 'Rahul',  'Finance', 62000, 'Mumbai'),
(8, 'Divya',  'HR',      48000, 'Hyderabad');
insert into employees values (12, 'Vikram', 'IT', NULL, 'Bangalore');

select * from employees;

delete from employees 
where dept = 'HR';

update employees
set city = 'Pune'
where name = 'Priya';

update employees
set city = 'Mumbai'
where dept = 'Finance';

update employees
set salary = salary + 5000
where name = 'Ravi';

delete from employees
where salary < 50000;

update employees
set dept = 'IT', city = 'Hyderabad'
where emp_id = 7;
delete from employees
where city = 'Chennai';
update employees
set salary = salary * 1.10
where dept = 'IT';

update employees
set salary = salary * 0.15
where dept = (select max(salary) from employees);

delete from employees
where salary  < (select avg(salary) from employees);
DELETE FROM employees
WHERE salary < (
    SELECT avg_sal FROM (
        SELECT AVG(salary) AS avg_sal
        FROM employees
    ) AS temp
);
