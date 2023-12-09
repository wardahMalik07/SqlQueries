create database FC_School;
use FC_School;
create table courses(
	Cid int identity(1,1) PRIMARY KEY,
	CourseName varchar(50)
)

create table student(
	StdiD int identity(1,1) PRIMARY KEY,
	StdName varchar(50),
	stdCourses int,
	Age int,
	Teachr int,
	foreign key (stdCourses) references  courses(Cid),
	foreign key (Teachr) references Teacher(Tid)

)

create table Teacher(
	Tid int identity(1,1) PRIMARY KEY,
	TeacherName varchar(50),
	Age int,
	Salary int,
	TeachingCourse int
	foreign key (TeachingCourse) references  courses(Cid)

)

select * from Teacher order by TeacherName 
select * from student WHERE StdName like 'Sa%'
select * from courses

insert into courses values ('Web Development'), ('Web Designing') , ('Artificial Intelligence')
INSERT INTO Teacher VALUES ('Saima', 25, 20000,2),('Adeel', 30, 20000,1),('Salma', 38, 25000,2),('Shahid', 28, 50000,3),('Irfan', 25, 30000,2)
insert into student values ('ALI',1,20,2),('Hammad',3,22,3),('Saad',2,19,5),('Subhan',2,23,1)


select TeacherName, count(TeachingCourse)  from Teacher group by TeacherName 

select sum(Salary) as totalSalary from Teacher
