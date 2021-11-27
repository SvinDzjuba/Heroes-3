create database dbHeroes

create table tUnits(
UnitID int identity not null primary key,
UnitName varchar(50) not null,
UnitAmount int not null,
UnitLevel int not null,
UnitHP decimal not null,
)

create table tHeroes(
HeroesID int identity not null primary key,
HeroAbility varchar(30) not null,
HeroName varchar(20) not null,
HeroUnits int not null,
HeroFractionID int null,
)

create table tResources(
ResourcesCode int identity not null primary key,
ResourcesPrice int not null,
ResourcesName varchar(25) not null,
ResourcesAmount int not null,
)

create table tFacilities(
FacilitiesCode int identity not null primary key,
FacilitiesPrice int not null,
FacilitiesName varchar(50) not null,
FacilitiesLevel int not null,
)

create table tCity(
CityID int identity not null primary key,
CityName varchar(35) not null,
CityUnit int not null,
CityLevel int not null,
)

alter table tHeroes
add constraint fk_Units
	foreign key ([HeroUnits]) references tUnits ([UnitID])

ALTER TABLE [dbo].[tFacilities] ADD FacilitiesUnit int not NULL

alter table tFacilities
add constraint fk_Units1
	foreign key ([FacilitiesUnit]) references tUnits ([UnitID])

ALTER TABLE [dbo].[tCity] ADD CityUnit int not NULL

alter table tCity
add constraint fk_Units2
	foreign key ([CityUnit]) references tUnits ([UnitID])

ALTER TABLE [dbo].[tCity] ADD CityFacilities int not NULL

alter table tCity
add constraint fk_Facilities
	foreign key ([CityFacilities]) references tFacilities ([FacilitiesCode])

ALTER TABLE [dbo].[tHeroes] ADD HeroResources int not NULL

alter table tHeroes
add constraint fk_Resources
	foreign key ([HeroResources]) references tResources([ResourcesCode])

ALTER TABLE [dbo].[tHeroes] ADD HeroFractionID int not NULL

alter table tHeroes
add constraint fk_City1
	foreign key ([HeroFractionID]) references tCity([CityID])
