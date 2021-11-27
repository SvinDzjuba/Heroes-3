use [dbHeroes]
go
INSERT [dbo].[tUnits]
( [UnitName], [UnitAmount], [UnitLevel], [UnitHp]) 
VALUES ('Harpy', '12','1','150'),
		('Minoutaur', '5','2','450'),
		('Red Dragon', '22','1','700')


INSERT [dbo].[tHeroes]
( [HeroName], [HeroAbility], [HeroUnits], [HeroResources], [HeroFractionID]) 
VALUES ('Edric', 'Basic Visdom','1','1','3'),
		('Roland', 'Basic Leadership','2','2','4'),
		('Caitlin', 'Advanced Leadership','3','3','5')


INSERT [dbo].[tCity]
( [CityName],[CityLevel],[CityUnit],[CityFacilities]) 
VALUES ('Castle Town','3','1','1'),
		('Tower Town','4','2','2'),
		('Dungeon Town','1','3','3')


insert [dbo].[tFacilities]
([FacilitiesName],[FacilitiesPrice],[FacilitiesLevel],[FacilitiesUnit])
values ('Fort,Tavern','2000','3','1'),
		('Town Hall','1000','2','2'),
		('City Hall','2500','1','3')


insert [dbo].[tResources]
([ResourcesName],[ResourcesPrice],[ResourcesAmount])
values ('Wood','300','1'),
		('Gems','5000','20'),
		('Crystal','400','2')