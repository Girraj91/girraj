create table region(
Region_Id int Identity primary key,
Region_Name varchar(10)
);
select * from region
insert into region (Region_Name) Values ('Africa')
-----------------------------------------------------------------------------------------
Create Table Countrys
( 
Country_Id varchar(10),
Country_Name varchar(20),
Region_Id int,
)
select * from Countrys
insert into Countrys(Country_Id,Country_Name,Region_Id)values('1','India',1)
insert into Countrys(Country_Id,Country_Name,Region_Id)values('2','Asia',2)
insert into Countrys(Country_Id,Country_Name,Region_Id)values('3','America',3)
insert into Countrys(Country_Id,Country_Name,Region_Id)values('4','Europe',4)
