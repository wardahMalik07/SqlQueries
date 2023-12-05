create database  db1;

use db1;

create table Employee (
	EmployeeId int unique,
	employeeName varchar(50),
	Salary bigint
);

alter table Employee
add Age int check(Age>=18)


select * from Employee;

insert into Employee values ('4', 'Usman', '30000',23);

delete from Employee where EmployeeId = 4

update Employee set Names_Employee= 'Saba' where EmployeeId= 6
