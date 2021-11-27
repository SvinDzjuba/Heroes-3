/*
create function fn_UnitsByFacility (@FacilitiesName varchar(50))
	returns table
as
	return(select *
	from tUnits as U inner join tFacilities as F
		on F.FacilitiesUnit=U.UnitID
	where FacilitiesName like @FacilitiesName
	)
go

select * from [dbo].[fn_UnitsByFacility]('Town Hall')




-----------------------------------------------------



create function fn_HeroByCityID (@HeroName varchar(20))
	returns table
as
	return(select *
	from tCity as C inner join tHeroes as H
		on C.CityID=H.HeroFractionID
	where HeroName like @HeroName)
go

select * from [dbo].[fn_HeroByCityID] ('Edric')




--------------------------------------------------





create function AllInfoUnitsByCityName (@CityName Varchar(35))
	returns table
as

	return(select *
	From tUnits as U inner Join tCity as C
		on U.UnitID = C.CityUnit
	where CityName like @CityName )

go

select * from [dbo].[AllInfoUnitsByCityName] ('Castle Town')
--------------------------------------------------------------
create function AllFacilitiesByCity (@CityName varchar(35))
	returns table
as
	return(select *
	from tFacilities as F inner join tCity as C
		on C.CityFacilities=F.FacilitiesCode
	where CityName like @CityName)

go

select * from [dbo].[AllFacilitiesByCity] ('Tower Town')
---------------------------------------------------------
*/


--ALL FUNCTIONS--


select * from [dbo].[fn_UnitsByFacility]('Town Hall')
select * from [dbo].[fn_HeroByCityID] ('Edric')
select * from [dbo].[AllInfoUnitsByCityName] ('Castle Town')
select * from [dbo].[AllFacilitiesByCity] ('Tower Town')