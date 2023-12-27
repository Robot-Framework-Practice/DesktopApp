CREATE DATABASE Đồ_Án 
GO

USE Đồ_Án 
GO

Create Table Notifycation
(
	IdNotify varchar(10) primary Key,
	Content nvarchar(max),
	DateNotify datetime,
	Header varchar(50),
	SentTime smalldatetime
)
Go

Create Table RegisterNotifycation
(
	IdNotify varchar(10) not null,
	IdUser varchar(15) not null,
)
Go


Create Table Subjects
(
	IdSubject varchar(20) Primary Key,
	NameSubject varchar(max),
	TinChiLT int default 0,
	TinChiTH int default 0,
	RatioQT float default 0,
	RatioGK float default 0,
	RatioTH float default 0,
	RatioCK float default 0
)
Go



CREATE TABLE Classes
(
	IdClass VARCHAR(15) PRIMARY KEY,
	NgBD smalldatetime,
	NgKT smalldatetime,

	IdSubject varchar(20) not null,
)
GO



Create Table RegisterClass
(
	IdClass VARCHAR(15) not null,
	IdUser VARCHAR(15) not null,
)
Go



Create Table Result
(
	IdStudent VARCHAR(15) not null,
	IdClass VARCHAR(15) not null,
	
	QT float default 0.0,
	GK float default 0.0,
	TH float default 0.0,
	CK float default 0.0,

	DiemTB float default 0.0,
)
Go




CREATE TABLE Users
(
	IdUser VARCHAR(15) constraint PK_Users PRIMARY KEY,
	Passwd VARCHAR(65),
	DisplayName varchar(max),

	Email NVARCHAR(MAX),
	IdOTP UNIQUEIDENTIFIER,
	IdUserRole UNIQUEIDENTIFIER,
	IdAvatar UNIQUEIDENTIFIER,
	CCCD varchar(20) not null,
)
GO


create table DetailUsers
(
	CCCD varchar(20) constraint PK_DetailUsers PRIMARY KEY,
	FullName VARCHAR(max),
	Gender bit, -- 1: nam 0: nữ
	DateOfBirth VARCHAR(10),
	BirthPlace VARCHAR(20),
	PLACE_CCCD VARCHAR(max),
	PhoneNumber varchar(15),
	Address VARCHAR(max),
	Ethnic VARCHAR(max),

	SecondarySchool VARCHAR(max),
	HealthInsuranceID varchar(15),
	AcademicAchievement VARCHAR(max),
	FacultyCode VARCHAR(10),
	FacultyName VARCHAR(max),
	Majors VARCHAR(max),
)
go

create table Relative
(
	CCCD varchar(20) constraint PK_Relative PRIMARY KEY,
	FullName VARCHAR(max),
	Gender bit, -- 1: nam 0: nữ
	Occupation VARCHAR(max),
	DateOfBirth VARCHAR(10),
	Country VARCHAR(max),
	PhoneNumber varchar(15),
	Address VARCHAR(max),
	Ethnic VARCHAR(max),
)
go

create table RelationShip
(
	DetailUsersCCCD varchar(20) not null,
	RelativeCCCD varchar(20) not null,
)
go


CREATE TABLE OTP
(
	Id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
	Code NVARCHAR(MAX),
	Time DATETIME DEFAULT GETDATE(),
)
Go
CREATE TABLE DatabaseImageTable
(
  Id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
  Image NVARCHAR(MAX),
)
GO
CREATE TABLE UserRole
(
  Id UNIQUEIDENTIFIER DEFAULT NEWID() PRIMARY KEY,
  Role NVARCHAR(MAX),
)
GO



Alter Table RegisterNotifycation Add Constraint FK_RegisterNotifycation_IdNotify Foreign Key (IdNotify) References Notifycation(IdNotify)
Alter Table RegisterNotifycation Add Constraint FK_RegisterNotifycation_IdUser Foreign Key (IdUser) References Users(IdUser)
Alter Table RegisterNotifycation Add Constraint PK_RegisterNotifycation Primary Key (IdNotify,IdUser)
GO


Alter Table Result Add Constraint fK_Result_IDStudent Foreign Key (IdStudent) References Users(IdUser)
Alter Table Result Add Constraint fK_Result_IdClass Foreign Key (IdClass) References Classes(IdClass)
Alter Table Result Nocheck Constraint fK_Result_IDStudent
Alter Table Result Nocheck Constraint fK_Result_IdClass
alter table Result add constraint PK_Result primary key (IdStudent,IdClass)
GO


alter table Classes add constraint FK_Classes_IdSubject foreign key (IdSubject) references Subjects(IdSubject)
go


Alter Table RegisterClass Add Constraint FK_RegisterClass_IdClass Foreign Key (IdClass) References Classes(IdClass)
Alter Table RegisterClass Add Constraint FK_RegisterClass_IdStudent Foreign Key (IdUser) References Users(IdUser)
Alter Table RegisterClass Nocheck Constraint FK_RegisterClass_IdClass
Alter Table RegisterClass Nocheck Constraint FK_RegisterClass_IdStudent
Alter Table RegisterClass Add Constraint PK_RegisterClass Primary Key (IdClass,IdUser)
GO


ALTER TABLE Users
ADD FOREIGN KEY (IdAvatar) REFERENCES DatabaseImageTable(Id),
FOREIGN KEY (IdUserRole) REFERENCES UserRole(Id),
FOREIGN KEY (IdOTP) REFERENCES OTP(Id),
foreign key (CCCD) references DetailUsers(CCCD)
GO

alter table RelationShip
add constraint FK_RelationShip_DetailUsersCCCD foreign key (DetailUsersCCCD) references DetailUsers(CCCD)
alter table RelationShip
add constraint FK_RelationShip_RelativeCCCD foreign key (RelativeCCCD) references Relative(CCCD)
alter table RelationShip
add constraint PK_RelationShip primary key (DetailUsersCCCD, RelativeCCCD)
go



--########## Insert Values

SET DATEFORMAT DMY 

--UserRole
INSERT INTO UserRole
  (Role)
VALUES
  ('ADMIN'),
  ('SV'),
  ('GV')
GO


--DetailUser
insert into DetailUsers(CCCD, FullName, Gender)
values  ('adminCCCD', 'admin admin', 1),
		('demostudentCCCD', 'demo student', 1),
		('demostudent2CCCD', 'demo student 2', 0),
		('demoteacherCCCD', 'demo teacher', 1),
		('demoteacher2CCCD', 'demo teacher 2', 0)
go

--Users
insert into Users (IdUser, Passwd, DisplayName, Email, CCCD) 
values ('admin', '8c6976e5b5410415bde908bd4dee15dfb167a9c873fc4bb8a81f6f2ab448a918',
'admin', 'admin@admin.admin', 'adminCCCD')
update users
set IdUserRole = (select Id from UserRole where Role = 'ADMIN')
where Users.IdUser = 'admin'


insert into Users (IdUser, Passwd, DisplayName, Email, CCCD) 
values ('demostudent', 'f05b1d22c0a3bd63435185290a10bbfcc038939befd4b41481970f159e2e8569',
'demostudent', 'demostudent@demostudent.demostudent', 'demostudentCCCD')
update users
set IdUserRole = (select Id from UserRole where Role = 'SV')
where Users.IdUser = 'demostudent'

insert into Users (IdUser, Passwd, DisplayName, Email, CCCD) 
values ('demostudent2', '045752f027435a58424404b70c1bf032923721ca6b97588f727218f2f87f4122',
'demostudent2', 'demostudent2@demostudent2.demostudent2', 'demostudent2CCCD')
update users
set IdUserRole = (select Id from UserRole where Role = 'SV')
where Users.IdUser = 'demostudent2'


insert into Users (IdUser, Passwd, DisplayName, Email, CCCD) 
values ('demoteacher', '97e201c83c668603a36e50facaeab2a7b04c1a303bf5295f3d20e7573d83e380',
'demoteacher', 'demoteacher@demoteacher.demoteacher', 'demoteacherCCCD')
update users
set IdUserRole = (select Id from UserRole where Role = 'GV')
where Users.IdUser = 'demoteacher'

insert into Users (IdUser, Passwd, DisplayName, Email, CCCD) 
values ('demoteacher2', '05fbac3e801756e597d9cee804f4c5305f90ae8697e6ac445f54a1fd4c0c9d5c',
'demoteacher2', 'demoteacher2@demoteacher2.demoteacher2', 'demoteacher2CCCD')
update users
set IdUserRole = (select Id from UserRole where Role = 'GV')
where Users.IdUser = 'demoteacher2'
go

--Subjects
insert into Subjects
values  ('IT005','Nhap Mon Mang May Tinh',3,1,0,25,25,50),
		('IT007','He Dieu Hanh',3,1,15,15,20,50),
		('IT008','Lap Trinh Truc Quan',3,1,20,0,30,50),


		('SE101','Phuong Phap Mo Hinh Hoa',3,1,50,0,0,50),
		('SE102','Nhap Mon Phat Trien Game',3,1,0,0,50,50),
		('SE104','Nhap Mon Cong Nghe Phan Mem',3,1,0,0,50,50),
		('SE113','Kiem Chung Phan Mem',3,1,0,0,50,50),
		('SE114','Nhap Mon Ung Dung Di Dong',3,1,0,0,30,70)
go

--Classes
insert into Classes
values  ('IT005.N11.PMCL','1-9-2022','31-12-2022','IT005'),
		('IT007.N11.PMCL','1-9-2022','31-12-2022','IT007'),
		('IT008.N11.PMCL','1-9-2022','31-12-2022','IT008'),

		('SE101.N11.PMCL','6-1-2023','31-5-2023','SE101'),
		('SE102.N11.PMCL','6-1-2023','31-5-2023','SE102'),
		('SE104.N11.PMCL','6-1-2023','31-5-2023','SE104'),
		('SE113.N11.PMCL','6-1-2023','31-5-2023','SE113'),
		('SE114.N11.PMCL','6-1-2023','31-5-2023','SE114')
go

insert into RegisterClass
values  ('IT005.N11.PMCL','demoteacher'),
		('IT007.N11.PMCL','demoteacher'),
		('IT008.N11.PMCL','demoteacher'),
		('SE101.N11.PMCL','demoteacher'),
		('SE102.N11.PMCL','demoteacher'),
		('SE104.N11.PMCL','demoteacher'),
		('SE113.N11.PMCL','demoteacher'),
		('SE114.N11.PMCL','demoteacher'),

		('IT007.N11.PMCL','demoteacher2'),
		('IT008.N11.PMCL','demoteacher2'),
		('SE101.N11.PMCL','demoteacher2'),
		('SE102.N11.PMCL','demoteacher2'),
		('SE104.N11.PMCL','demoteacher2'),
		('SE114.N11.PMCL','demoteacher2'),


		('IT005.N11.PMCL','demostudent'),
		('IT007.N11.PMCL','demostudent'),
		('IT008.N11.PMCL','demostudent'),
		('SE101.N11.PMCL','demostudent'),
		('SE102.N11.PMCL','demostudent'),
		('SE104.N11.PMCL','demostudent'),
		('SE113.N11.PMCL','demostudent'),
		('SE114.N11.PMCL','demostudent'),

		('IT005.N11.PMCL','demostudent2'),
		('IT007.N11.PMCL','demostudent2'),
		('IT008.N11.PMCL','demostudent2'),
		('SE101.N11.PMCL','demostudent2'),
		('SE102.N11.PMCL','demostudent2'),
		('SE104.N11.PMCL','demostudent2'),
		('SE113.N11.PMCL','demostudent2'),
		('SE114.N11.PMCL','demostudent2')
go
		
insert into Result
values  ('demostudent', 'IT005.N11.PMCL',0,8,9,10,0),
		('demostudent', 'IT007.N11.PMCL',7,8,9,10,0),
		('demostudent', 'IT008.N11.PMCL',7,0,9,10,0),
		('demostudent', 'SE101.N11.PMCL',7,0,0,10,0),
		('demostudent', 'SE102.N11.PMCL',0,0,9,10,0),
		('demostudent', 'SE104.N11.PMCL',0,0,9,10,0),
		('demostudent', 'SE113.N11.PMCL',0,0,9,10,0),
		('demostudent', 'SE114.N11.PMCL',0,0,9,10,0),
		
		('demostudent2', 'IT005.N11.PMCL',0,8,9,10,0),
		('demostudent2', 'IT008.N11.PMCL',7,0,9,10,0),
		('demostudent2', 'SE101.N11.PMCL',7,0,0,10,0),
		('demostudent2', 'SE114.N11.PMCL',0,0,9,10,0)
go





--KHÔNG CHẠY PHẦN NÀY

use master
go
drop database Đồ_Án
go




drop table users
drop table userrole


delete from users
delete from userrole
delete from Result

delete from RegisterClass
delete from Subjects


adminadmin
d82494f05d6917ba02f7aaa29689ccb444bb73f20380876cb05d1f37537b7892

demostudent
f05b1d22c0a3bd63435185290a10bbfcc038939befd4b41481970f159e2e8569

demostudent2
045752f027435a58424404b70c1bf032923721ca6b97588f727218f2f87f4122

demoteacher
97e201c83c668603a36e50facaeab2a7b04c1a303bf5295f3d20e7573d83e380

demoteacher2
05fbac3e801756e597d9cee804f4c5305f90ae8697e6ac445f54a1fd4c0c9d5c


select * from DetailUsers
select * from users
select * from userrole

DELETE FROM Users WHERE idUser='admin2';

select * from Result


select * from Subjects
select * from Classes
select * from RegisterClass



