create database Company
use Company

//Employees tablesi
create table Employees(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	Surname nvarchar(50),
	Age int,
	Salary decimal,
	Position nvarchar(50),
	IsDeleted bit,
	[CitiesId] int foreign key references Cities(Id)
)
select * from Employees
INSERT INTO Employees([Name],Surname,Age,Salary,Position,IsDeleted)
VALUES ('Konul','Ibrahimova',27,5000,'Reception',0),
	   ('Cinare ','Ibadova',22,4000,'Reception',0),
	   ('Roya','Meherromova',27,3000,'Chef',0),
	   ('Jale','Aliyeva',18,2000,'Clener',1),
	   ('Cavid','Ismayilzade',22,1,'Driver',1)



//Cities tablesi
create table Cities(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[CountriesId] int foreign key references Countries(Id)
)
select * from Cities
INSERT INTO Cities([Name])
VALUES('Baku'),
      ('Ankara'),
	  ('Lisbon'),
	  ('Madrid'),
	  ('Roma')



//Countries tablesi
create table Countries(
	Id int primary key identity(1,1),
	[Name] nvarchar(50) not null
)
select * from Countries
INSERT INTO Countries([Name])
VALUES('Azerbaijan'),
      ('Turkey'),
	  ('Portugal'),
	  ('Spain'),
	  ('Italy')






//1.İşçilərin özlərini,yaşadığı şəhərlərini və ölkələrini göstərin






//2.Maaşı 2000-dən yuxarı olan işçilərin adları və yaşadığı ölkələri göstərin







//3.Hansı şəhərin hansı ölkəyə aid olduğunu göstərin

select * from Countries
join Cities
on Countries.Id = Cities.CountriesId






//4.Positionları "Reception" olan işçilərin table-də Id-ləri daxil olmamaq şərti ilə bütün məlumatlarını göstərmək