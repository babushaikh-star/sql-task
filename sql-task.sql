use shaikh;
create table BankAccounts(Account_no int primary key auto_increment,HolderName varchar(30),Balance decimal(10,2));
desc  BankAccounts;
alter table  BankAccounts add column Branchname varchar(20);
alter table BankAccounts rename column HolderName to AccountHolder;
alter table BankAccounts modify Balance decimal(15,2);


ALTER TABLE BankAccounts
   drop column Branchname,
   add column AccountType varchar(40) not null,
   rename column AccountHolder to CustomerName ;
drop table BankAccounts;






create table employee(empid int primary key auto_increment,empname varchar(20),empsalary int );
desc employee;


alter table employee add column empage varchar(20) after empname ;
alter table employee drop column empage ;

alter table employee modify column empsalary varchar(200);

select * from employee;








insert into employee values (1,'BABU',18,70000);

update employee set empname='REHAN' WHERE empid=1;

delete from employee where empid=1;








create  table employees(empid int primary key auto_increment,empname varchar(200),empage int,empsalary int,emp_dept varchar(200));
insert into employees values(1,'Babu',21,101000,'Finance');

INSERT INTO employees (empname, empage, empsalary, emp_dept) VALUES
('Faiz', 21, 55000, 'Engineering'),
('Ahmad', 21, 72000, 'Marketing'),
('Sufiyan', 20, 85000, 'Finance'),
('Rehan', 18, 48000, 'Human Resources'),
('Hanif', 21, 78000, 'Engineering'),
('Mohommad Rafi', 18, 62000, 'Sales'),
('Mohammed Ali', 18, 95000, 'Operations'),
('Kavitha Nair', 20, 67000, 'Marketing'),
('Arjun Mehta', 20, 53000, 'Engineering'),
('Deepika Joshi', 19, 74000, 'Finance');


select * from employees limit 5;
desc employee;
select emp_dept,empid,empname  from employees where empid=1; 

select * from employees ORDER BY empsalary;

select * from employees where empsalary BETWEEN 85000 and 95000  ORDER BY empage,emp_dept,empsalary;

select * from employees ORDER BY empsalary asc;

-- AGGREGATE FUNCTIONS

select sum(empsalary) as ENGINEERING from employees where emp_dept='Engineering';

select min(empsalary) as MIN from employees;

select max(empsalary) as MAX from employees;

select count(empsalary) as COUNT from employees where empage>18;

select avg(empsalary) as AVG from employees where emp_dept='Engineering';


select * from employees;

select * from employees where emp_dept IN('Finance','Human Resources','Marketing') limit 5;

select * from employees where emp_dept !='Finance' AND emp_dept!='Marketing' AND emp_dept='Engineering';

select * from employees where empsalary between 85000 and 95000 AND emp_dept='Finance';

select * from employees where empname like '%n';

select * from employees where empname like 'R___n';

CREATE TABLE Emmployees
(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(30),
    designation VARCHAR(30),
    gender VARCHAR(10),
    city VARCHAR(30),
    salary DECIMAL(10,2),
    experience INT
);
INSERT INTO Emmployees VALUES
(101,'Amit','HR','Executive','Male','Pune',35000,2),
(102,'Priya','HR','Manager','Female','Mumbai',60000,7),
(103,'Rahul','IT','Developer','Male','Pune',55000,4),
(104,'Sneha','IT','Developer','Female','Mumbai',58000,5),
(105,'Karan','Finance','Executive','Male','Delhi',42000,3),
(106,'Pooja','Finance','Manager','Female','Delhi',70000,9),
(107,'Neha','Sales','Executive','Female','Pune',38000,2),
(108,'Rohit','Sales','Manager','Male','Mumbai',68000,8),
(109,'Vikas','IT','Tester','Male','Pune',45000,3),
(110,'Anjali','HR','Executive','Female','Delhi',37000,2),
(111,'Arjun','Finance','Executive','Male','Mumbai',41000,2),
(112,'Meera','Sales','Executive','Female','Delhi',39000,3),
(113,'Sanjay','IT','Developer','Male','Pune',62000,6),
(114,'Kavita','HR','Recruiter','Female','Mumbai',43000,4),
(115,'Nikhil','Sales','Executive','Male','Pune',36000,2);

select * from Emmployees;
select department,count(emp_id) from Emmployees
group by department;

select department,sum(salary) from Emmployees
group by department;

select department,avg(salary) from Emmployees
group by department;

select department,max(salary) from Emmployees
group by department;

select city,(salary) from Emmployees
group by city;

select city,avg(salary) from Emmployees
group by city;

select city,max(salary) from Emmployees
group by city;

select city,sum(salary) from Emmployees
group by city;

select * from Emmployees;

select gender,count(emp_id) from Emmployees
group by gender;

select gender,department,count(emp_id) from Emmployees 
group by gender,department;

select department,designation,avg(salary) from Emmployees
group by department,designation;

select department,city,sum(salary) from Emmployees
group by department,city;

select department,gender,max(salary) from Emmployees
group by department,gender;

select city,designation,min(salary) from Emmployees
group by city,designation;

select department,count(experience) from  Emmployees
group by department;

select department,avg(experience) from  Emmployees
group by department;

select department,max(experience) from  Emmployees
group by department;

select city,min(experience) from  Emmployees
group by city;
select * from Emmployees;

select designation,count(emp_id) from Emmployees 
group by designation;

select designation,sum(salary) from Emmployees 
group by designation;

select department,gender,avg(salary) from Emmployees 
where gender='Male'
group by department,gender;

select department,gender,avg(salary) from Emmployees 
where gender='Female'
group by department,gender;

select department,city,count(emp_id) from Emmployees
group by department,city;

select designation,max(salary) from Emmployees
group by designation;

select designation,min(salary) from Emmployees
group by designation;

select department,count(emp_id) from Emmployees
group by department;

select city,gender,avg(salary) from Emmployees 
group by city,gender;

select designation,count(experience) from Emmployees
group by designation;

select city,avg(experience) from Emmployees
group by city;