use study;
drop table student;
create table departments(
dept_id int primary key,
dept_name varchar(50) not null,
location varchar(50) default 'Man Campus'
);

create table student(
student_id int auto_increment primary key,
name varchar(50) not null,
email varchar(100) not null unique,
dept_id int ,
foreign key(dept_id) references departments(dept_id)
on delete set null
);
alter table student
add phone varchar(10);

select * from student;

alter table student
modify name varchar(100) not null;

alter table departments
rename column location to campus ;

alter table student
add constraint chk_phone_len check(phone > 7);

alter table student
drop phone;
drop table student; 

drop table departments;