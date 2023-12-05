use db1

select * from depart as A -- Alias
select * from Employee
insert into Depart VALUES (2,'HR', 4), (3,'Accounts',2), (4,'Admin', 6)

CREATE VIEW vW_Employee 
as 
select Employee.EmployeeId, Employee.Names_Employee, Employee.Age from Employee

create view vw_Employee1
as
select A.EmployeeId, A.Names_Employee, A.Age , B.department from Employee as A inner join depart as B  ON A.EmployeeId= B.empId 

select * from Vw_employee
select * from vw_Employee1

SP_helptext vw_employee

insert into Employee values (8, 'Sarah', 90000, 43)

INSERT INTO depart values(5, 'HR', 7), (6, 'IT', 8)

UPDATE depart set empId= 2 where dId= 1