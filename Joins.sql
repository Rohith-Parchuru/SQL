use study;

-- cleanup
drop table if exists student;
drop table if exists departments;

-- parent table
create table departments (
    dept_id   int primary key,
    dept_name varchar(50) not null,
    city      varchar(50)
);

insert into departments values
(1, 'CS',          'Hyderabad'),
(2, 'Mechanical',  'Chennai'),
(3, 'Civil',       'Pune'),
(4, 'Electronics', 'Bangalore');

-- child table
create table student (
    s_id     int primary key,
    name     varchar(50) not null,
    dept_id  int,
    foreign key (dept_id) references departments(dept_id)
    on delete set null
);

insert into student values
(1, 'Rohith', 1),
(2, 'Arjun',  2),
(3, 'Priya',  1),
(4, 'Kiran',  NULL),
(5, 'Sneha',  3);


/* inner join 
select s.name,d.dept_name from student s
inner join department d
on s.dept_id = d.dept_id;

select s.name,d.dept_name,d.city from student s
inner join departments d
on s.dept_id = d.dept_id;
*/

/* left join
select s.name,d.dept_name from departments d
inner join student s
on d.dept_id = s.dept_id;

select s.name,d.dept_name,d.city from departments d
inner join student s
on d.dept_id = s.dept_id;
select s.name from departments d
inner join student s
on d.dept_id = s.dept_id
where d.dept_name = Null;
*/


