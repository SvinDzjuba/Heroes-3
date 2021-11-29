--Logins--
CREATE LOGIN Alesja WITH PASSWORD='Alesja';
CREATE LOGIN Valera WITH PASSWORD='Valera';
CREATE LOGIN Makson WITH PASSWORD='Makson';
CREATE LOGIN Danon WITH PASSWORD='Danon';

--User--
create User Alesja for Login Alesja
create User Valera for Login Valera
create User Makson for Login Makson
create User Danon for Login Danon

--Grant permission--

Grant all on tHeroes to Makson
Grant all on tCity to Makson
Grant view definition, select on tResources to Valera
Grant select, update, insert, delete on tFacilities to Alesja
Grant all on tUnits to Danon

