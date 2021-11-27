--Если замок захватили, то у прошлого героя замок пропадает, а у нового появляется

create trigger tr_NewCastleOwner
on tHeroes
for update
as
begin
	declare @ID1 int,    --Это id персонажа, который захватывает замок
			@ID2 int,     --Это id владельца замка
			@NewCastle int
	if @ID2 like @ID1
		begin
		raiserror(N'IDs cannot be similar',16,1)
		rollback
	end
	else
		select @NewCastle = HeroFractionID from tHeroes
		where HeroesID = @ID2
		update tHeroes
		set HeroFractionID = @NewCastle
		where HeroesID = @ID1
		update tHeroes
		set HeroFractionID = null
		where HeroesID = @ID2
end