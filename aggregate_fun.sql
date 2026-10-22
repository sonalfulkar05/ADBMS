-- create database collage;
-- use collage;

-- /* Date and time function*/
-- select now();
-- select now() as current_datetime;
-- alter table customer add column date date;

-- create table student(
-- rollno int,
-- name varchar(30),
-- city varchar(30),
-- course varchar(30)
-- );

-- alter table student add Tody_date date;
-- alter table student drop column Tody_date;

-- desc student;

create database organization;
use organization;

create table employee(
emp_id int not null primary key,
first_name varchar(30),
last_name varchar(30),
gender char,
role varchar(30),
dept varchar(30),
manager_id varchar(30)
);

insert into employee values
(101,"Tanaya","Chhadidar","F","Developer","IT",1001),
(102,"Anaya","Singh","F","Tester","IT",1002),
(103,"Atharv","Dugani","M","CTO","IT",1003),
(104,"Vaishnavi","Shinde","F","Intern","IT",1004),
(105,"Rohan","Gurav","M","HR","HR",1005);

select * from employee;
-- Distinct key word for unique Data

select distinct dept from employee order by dept;
select distinct role from employee order by role;

select * from employee where role = "Developer" and dept = "IT";
select * from employee where role = "Tester" and dept = "IT";

select * from employee where role = "Tester" or dept = "IT";
select * from employee where role in("Intern","HR");

select * from employee where role not in("Intern","HR");

alter table employee add column Experience int;

update employee set experience = 21 where emp_id = 101;
update employee set experience = 20 where emp_id = 102;
update employee set experience = 22 where emp_id = 103;
update employee set experience = 24 where emp_id = 104;
update employee set experience = 23 where emp_id = 105;

select * from employee where experience between 20 and 22;
select * from employee where experience = 20 or 22;

-- like operator 
select * from employee where last_name like "%n%";
select * from employee where first_name like "%a%";

-- like operator is used to limit the no. of rows in the output
select * from employee order by experience limit 3;
 insert into employee values(6,"Sanajna", "Parasur","F","President","HR",'',null);
 update employee set emp_id = 106 where emp_id = 6;
 select * from employee;
 
 select count(*) from employee;
 select count(emp_id) from employee where dept ='IT';
 select min(experience) from employee;
 select max(experience) from employee;
 select sum(experience) from employee;
 select avg(experience) as emp_exr from employee;
 
select dept,count(*) as employee_count from employee group by dept;
select role,count(*) as employee_count from employee group by role;
select gender,count(*) as employee_count from employee group by gender;
/*HAVING CLAUSE - each group produced bby the group by clause is evaluated by the having clause and if the result is true the row is included in the result set
the having clause*/
select dept , sum(experience) as total_experience from employee group by dept having total_experience >=20 and total_experience <=25;
select role , sum(experience) as total_experience from employee group by role having total_experience >=20 and total_experience <=25;

/* fetch dept wise employee count using having clause and sort the data*/

SELECT dept ,COUNT(emp_id)
FROM employee
GROUP BY dept
HAVING COUNT(emp_id)>2
ORDER BY COUNT(emp_id); 

select dept , sum(experience) as total_experience from employee group by dept having total_experience >=20 or total_experience <=25;
