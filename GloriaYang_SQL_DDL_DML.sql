--1--
create database HR;

--2--
create table hr.Employee (
EmployeeID int not null primary key,
FirstName varchar(255),
LastName varchar(255),
DOB varchar(255),
PhoneNumber varchar(255),
Email varchar(255),
JobID varchar(255),
HireDate varchar(255),
Salary int,
DepartmentID int
)

--3--
insert into hr.Employee values
(1, "Adam","Smith","07-08-1966","310-555-6123","adamsmith@ucla.edu","FI_VP","07-07-2015",10000,100),

(2, "Annie","Green","08-08-1988","310-555-9482","anniegreen@ucla.edu","IT_PROG","04-15-2015",6000,60),

(3, "Rachel","Small","09-08-1978","310-555-9699","rachelsmall@ucla.edu","IT_PROG","06-07-2013",5000,60),

(4, "John","Apple","08-01-1965","310-555-8362","johnapple@ucla.edu","IT_VP","07-14-2011",8000,60),

(5, "Nina","Brown","09-27-1982","310-555-8677","ninabrown@ucla.edu","IT_VP","07-09-2015",5000,60),

(6, "Monica","Small","01-11-1977","310-555-9889","rachelsmall@ucla.edu","FI_ACCOUNT","11-08-2014",9000,100),

(7, "Eve","Tanner","02-14-1966","310-555-5776","evetanner@ucla.edu","MK_REP","08-80-2013",4500,20),

(8, "Donna","Miller","05-31-1979","310-555-2638","donnamiller@ucla.edu","MK_MAN","12-07-2018",5000,20),

(9, "Bobby","Fish","09-01-1969","310-555-8263","bobbyfish@ucla.edu","HR_REP","04-07-2015",12000,40),

(10, "Joe","Winter","09-23-1978","310-555-2739","joewinter@ucla.edu","HR_VP","12-07-2012",8000,40)

--4--
select * from hr.employee;

--5--
select * from hr.employee where DepartmentID = 60;

--6--
update hr.employee
set Salary = 11500
where JobID = "FI_VP";

