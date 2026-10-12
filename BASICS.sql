create database institute;
show databases;
create table Department(dept_id int , 
dept_name varchar (50),
dept_location varchar(50)
);
create table Staff(staff_id int , 
first_name varchar (50),
last_name varchar(50),
dob date,
dept_id int);

desc staff;
alter table Staff add location varchar(10); -- this query for add a single colmn in the table 
alter table Staff add  Joining_year int ;
alter table Staff  add (age int ,contact_no int(10));

/* changing the dataa type;*/
alter table Staff  modify first_name text;
desc Staff;
alter table Staff drop column contact_no;
alter table staff modify last_name varchar(100);
alter table staff add primary key(staff_id);
alter table Department add primary key(dept_id);
desc Staff;
desc Department;
-- syntax : Alter table tablename drop primary key; 
alter table department drop primary key;
-- adding foriegn key between two tables 
Alter table Staff add constraint FK_Staff_Department 
foreign key(dept_id) references Department(dept_id);
-- 
Alter table Staff drop  foreign key FK_Staff_Department;
 alter table Staff rename staff;
 rename table staff to staff1;

-- DML COMMANDS 
create database college;
select college;
create table Employees(EmpID int, FirstName varchar(10),
LastName varchar(10) , EmpAGE int , Empzond varchar(10));
desc Epmmloyees;
Insert into Employees 
values
(1,"Vansh","Joshi" ,20,"North");

-- Multiple rows Insertion Method 
Insert into Employees(EmpID ,FirstName , LastName ,EmpAGE , Empzond) values
(1,"shivam","Jaiswal" ,20,"North"),
(1,"Priyam","Jaiswal" ,20,"South");
--- DELETE STATEMENT
delete from Employees  where EmpId = 103 ;

-- NOT NULL CONSTRAINTS 
create database company_db;
use company_db;
create table Employee(EmpID int, FirstName varchar(10),
LastName varchar(10) , EmpAge int);

-- unique key 
create table employee1(empid int NOT NULL, FirstName varchar(30), LastName varchar (30), unique(empid));
insert into employee1 values (101, "Vansh", "Bijwani");
insert into employee1 values (102, "Shivam", "OG");
insert into employee1 values (NULL, "Shivam", "OG");

show create table employee1;
alter table employee1 add column salary int, add check (salary>1);

select *from employee1;
desc employee1;

desc employee4;

-- alter table employee1 drop check employee1_chk;


-- check constraints


CREATE TABLE employee4 (
    EmpID INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    EmpAGE INT CHECK (EmpAGE > 20),
    salary INT
);
ALTER TABLE employee4
ADD CONSTRAINT chk_EmpAGE_salary2
CHECK (EmpAGE > 20 AND salary >= 5000);

insert into employee4 values (1, "a", "b", 21, 25000);
select *from employee4;

create index demoindex2 on employee4(firstname, lastname);
show indexes from employee4;


drop index demoindex2 on employee4;

create table person(
personid int primary key not null auto_increment,
firstname varchar(30), 
lastname varchar(30),
age int
);

desc person;

insert into person (firstname, lastname, age) values 
("Vansh", "Bijwani", 21), 
("Atharv", "dugani", 20);

select * from person;