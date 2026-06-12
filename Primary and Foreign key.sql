create database study; 
use study;

CREATE TABLE Department(
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(20)
);

INSERT INTO Department(dept_id,dept_name)
VALUES
(1,'IT'),
(2,'HR'),
(3,'Finance');

create table Employee(
emp_id int primary key,
emp_name varchar(50) not null,
dept_id int,
foreign key(dept_id) references Department(dept_id)
);

insert into Employee(emp_id,emp_name,dept_id)
values
(101,'Ravi',1),
(102,'Rohith',3),
(103,'Anudeep',2),
(104,'Sasi',1);
INSERT INTO Employee
VALUES (101,'Kiran',1);
select * from Employee;
select * from Department;