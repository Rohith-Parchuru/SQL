use college;

create table phase2(
name varchar(50),
gender char(1),
id int,
salary int
);

insert into phase2(name,gender,id,salary)
values ('Rohith','M',43,50000),
('Ravi','M',41,544355),
('Zebra','' ,00,544),
('Anudeep','M',03,544665),
('Rohith','M',43,50000),
('Bhanu','M',6,665598);

-- select * from phase2; 
-- select id,name from phase2 where salary >= 50000 and salary <= 660000;
-- select id,name from phase2 where salary >= 50000 or salary <= 660000;
-- select id,name from phase2 where salary between 50000 and 660000;
-- select id,name from phase2 where salary in( 50000 ,  660000);
-- select * from phase2 where gender != 'm';
-- select * from phase2 where name not like 'R%';
select * from phase2 where gender is null;