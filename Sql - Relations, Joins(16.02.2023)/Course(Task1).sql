create database Course
use Course


create table Educations(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL,
	Duration int 
)
select * from Educations

INSERT INTO Educations([Name],Duration)
VALUES('Programmer',300),
	  ('Designer',100),
	  ('Marketing',200)


create table WeekDays(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL,
)
select * from WeekDays

INSERT INTO WeekDays([Name])
VALUES('Monday'),
	  ('Tuesday'),
	  ('Wednesday'),
	  ('Thursday'),
	  ('Friday'),
	  ('Saturday'),
	  ('Sunday')


create table Seanses(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL
)
select * from Seanses

INSERT INTO Seanses([Name])
VALUES('FirstSeans'),
	  ('SecondSeans'),
	  ('ThirdSeans')



create table Groups(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL,
	[EducationId] int foreign key references Educations(Id),
	[RoomId] int foreign key references Rooms(Id),
	[WeekDayseansId] int foreign key references WeekDaySeans(Id)
)
select * from Groups

INSERT INTO Groups([Name])
VALUES('P135'),
	  ('D130'),
	  ('M414')




create table WeekDaySeans(
	Id int primary key identity(1,1),
	[WeekDayId] int foreign key references WeekDays(Id)
	[SeansId] int foreign key references Seans(Id)
)
select * from WeekDaySeans






create table Rooms(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL,
	Capacity int
)
select * from Rooms

INSERT INTO Rooms([Name],Capacity)
VALUES('Neptune',20),
	  ('Titan',25),
	  ('Venera',30)


create table GroupTeachers(
	Id int primary key identity(1,1),
	[GroupId] int foreign key references Groups(Id),
	[TeacherId] int foreign key references Teachers(Id)
)
select * from GroupTeachers





create table Teachers(
	Id int primary key identity(1,1),
	FullName nvarchar(50),
	Email nvarchar(50),
	[Address] nvarchar(50),
	Salary decimal,
	CityId int foreign key references Cities(Id)
)
select * from Teachers

INSERT INTO Teachers(FullName,Email,[Address],Salary)
VALUES ('Konul Ibrahimova','konul@gmail.com','Bayil',5000),
       ('Cinare Ibadova','cinare@gmail.com','LokLok',4000),
	   ('Roya Meherremova','roya@gmail.com','Sumqayit',3000),
	   ('Ali Talibov','ali@gmail.com','Xetai',2000),
	   ('Cavid Ismayilzade','cavid@gmail.com','Sulutepe',1)


create table Roles(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL
)
select * from Roles

INSERT INTO Roles ([Name])
VALUES ('Director'),
       ('Deputy'),
	   ('Librarian'),
	   ('Keeper'),
	   ('Master')






create table GroupStudents(
	Id int primary key identity(1,1),
	[GroupId] int foreign key references Groups(Id),
	[StudentId] int foreign key references Students(Id)
)
select * from GroupStudents






create table Students(
	Id int primary key identity(1,1),
	FullName nvarchar(50),
	Birthday date,
	[Address] nvarchar(50),
	[CityId] int foreign key references Cities(Id)
)
select * from Students

INSERT INTO Students(FullName,Birthday,[Address])
VALUES ('Anar Aliyev','1995-04-11','Raboci'),
       ('Samil Abbasli','1996-05-12','Bayil'),
	   ('Cavid Bashirov','1997-06-13','Ehmedli'),
	   ('Besir Huseynzade','1998-07-14','Mastaga'),
	   ('Huseyn Ashurov','1999-08-15','Elmler')



create table Cities(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL,
	[CountryId] int foreign key references Countries(Id)
)
select * from Cities

INSERT INTO Cities([Name])
VALUES ('Baku'),
       ('Tallin'),
	   ('Helsinki'),
	   ('Madrid'),
	   ('Oslo')




create table StaffMembers(
	Id int primary key identity(1,1),
	FullName nvarchar(50),
	Salary decimal,
	[CityId] int foreign key references Cities(Id)
)
select * from StaffMembers

INSERT INTO StaffMembers(FullName,Salary)
VALUES ('Daniel',500),
       ('Ikram',600),
	   ('Tebriz',700),
	   ('Umid',800),
	   ('Aga',900)



create table RoleMembers(
	Id int primary key identity(1,1),
	[RoleId] int foreign key references Roles(Id),
	[MemberId] int foreign key references StaffMembers(Id)
)
select * from RoleMembers





create table Countries(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) NOT NULL
)
select * from Countries

INSERT INTO Countries([Name])
VALUES ('Azerbaijan'),
       ('Estonia'),
	   ('Finland'),
	   ('Spain'),
	   ('Norway')