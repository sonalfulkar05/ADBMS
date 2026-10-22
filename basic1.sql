 
create database company;
use company;
create table Employee(
	emp_id int primary key,
    emp_name varchar(30),
    city varchar(20),
    bdate date
    );
-- alter table Employee modify bdate varchar(30);
create table Investor(
	inv_no int primary key,
    inv_name varchar(30),
    inv_date date,
    inv_amt int,
    emp_id int
    );
-- alter table Investor modify inv_date varchar(30);



INSERT INTO Employee VALUES (101, "Rahul", "Pune", "2004-04-12");
INSERT INTO Employee VALUES (102, "Amit", "Mumbai", "2003-01-17");
INSERT INTO Employee VALUES (103, "Priya", "Kolhapur", "2004-02-15");
INSERT INTO Employee VALUES (104, "Sneha", "Belgaum", "2003-06-05");
INSERT INTO Employee VALUES (105, "Rohan", "Sangli", "2004-03-21");

INSERT INTO Investor VALUES (1, "Rahul", "2025-04-12", 40000, 101);
INSERT INTO Investor VALUES (2, "Amit", "2025-01-17", 50000, 102);
INSERT INTO Investor VALUES (3, "Priya", "2025-02-15", 36000, 103);
INSERT INTO Investor VALUES (4, "Sneha", "2025-06-05", 15000, 104);
INSERT INTO Investor VALUES (5, "Rohan", "2025-03-21", 20000, 105);


select * from Employee;

-- Add columns ‘Age’ and ‘Salary’ to the Employee table; apply check constraints for (Age<=50 and Salary>=10000). 
alter table Employee add column age int check(age <= 50);
alter table Employee add column salary int check(salary >= 10000) ;

alter table Investor add column age int;

alter table Investor modify inv_name text;

alter table Employee rename column emp_id to E_id;

update Employee set city = "Nagpur" where E_id = 104;

delete from Investor where inv_no = 2;
alter table Investor drop column age;
alter table Employee drop constraint employee_chk_1;
alter table Investor add foreign key(emp_id) references Employee(E_id);
select inv_no, inv_name, inv_date, inv_amt from Investor;
alter table Employee rename to Employees;
truncate table Employees;

drop table Employees;
drop table Investor;




