drop database basicjoin;
create database basicjoin;
use basicjoin;
create table employee(
	empid int primary key,
    ename varchar(30));
desc employee;
insert into employee values (101, "Atharv"),
(102, "Akashay"),
(103, "Vansh"),
(104, "Tanaya"),
(105, "Sonal");

insert into employee values(106, "Sanjana");
insert into employee values(107, "Pooja");

select * from employee;
create table projects(
	projectid int primary key,
    pname varchar(30),
    empid int, foreign key (empid) references employee(empid));
insert into projects values (1, "E-commerce",101), (2, "car rental", 102), (3, "p2p device", 103), (4, "First_cry",104), (5, "Customer feedback", 105);
select * from projects;

--  Inner Join
select * from employee join projects on employee.empid = projects.empid;
insert into projects values(6,"E",null);
select e.ename,p.pname from Employee e
Inner join projects p
on e.empid = p.empid ;

select e.ename,p.pname from Employee e
right join projects p
on e.empid = p.empid ;

select e.ename,p.pname from projects p
Inner join Employee e
on e.empid = p.empid ;

select e.ename,p.pname from Employee e
left join projects p
on e.empid = p.empid ;

/* full outer join using union */
select * from Employee
left join projects
on Employee.empid = projects.empid
union
select * from Employee
right join projects
on Employee.empid = projects.empid;

/* those who have not assigned any projects*/
select Employee.ename,projects.pname from Employee
left join projects
on Employee.empid = projects.empid
where projects.empid is not null;

select Employee.ename,projects.pname from Employee
left join projects
on Employee.empid = projects.empid
where projects.empid is null;