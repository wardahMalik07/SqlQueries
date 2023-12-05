create database Ai_HOSPITAL
use Ai_HOSPITAL

create table doctor(
	iD int primary key identity(1,1),
	DoctorName varchar(50),
	
)

CREATE TABLE Appointment(
	PatientId int primary key identity(1,1),
	Namee varchar(50) ,
	Doctor int ,
	Fees int ,
	foreign key (Doctor) references doctor (iD)
)
select * from doctor
select * from Appointment

INSERT INTO Appointment VALUES ('Anas', 1, 1000), ('Farah', 2, 1000), ('Afifa', 2, 1000), ('Ali', 4, 1000)
insert into doctor values ('Usmaan'), ('Faiza') , ('Amber'), ('Farrukh')

select * from Appointment as A FULL join doctor as B on A.Doctor= B.iD

CREATE VIEW vWPatient 
as
select A.*, B.DoctorName from Appointment as A FULL join doctor as B on A.Doctor= B.iD WHERE DoctorName= 'Faiza'


select * from vWPatient

sp_HELPTEXT vWPatient

create Procedure SP_Patient
as
begin
Select P.Namee, P.PatientId  from Appointment as P
end

SP_Patient


create Procedure SP_Patient1 @name varchar(50)
as
begin
Select P.Namee, P.PatientId  from Appointment as P where P.Namee = @name
end

create Procedure SP_Patient2 @name varchar(50), @Doctor varchar(50)
as
begin
Select  P.PatientId , P.Namee, D.DoctorName from Appointment as P inner join doctor as D on P.Doctor= D.iD   where P.Namee = @name AND D.DoctorName = @Doctor
end


drop proc SP_Patient2


EXEC SP_Patient1 @name = mUSTAFA;

EXEC SP_Patient2 @name =Ali , @Doctor =Farrukh;



