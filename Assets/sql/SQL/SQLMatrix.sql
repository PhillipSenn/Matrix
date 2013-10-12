Use PhillipSenn_Matrix
set nocount on
set statistics time off
set statistics io off
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'City') AND type in (N'U'))
DROP TABLE City;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'State') AND type in (N'U'))
DROP TABLE State;
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'Division') AND type in (N'U'))
DROP TABLE Division;
GO
CREATE TABLE Division(
 DivisionID Int Primary Key NONCLUSTERED Identity(1,1) 
,DivisionName Varchar(128)
)
GO
CREATE UNIQUE CLUSTERED INDEX DivisionName ON Division(DivisionName)
GO
CREATE TABLE State(
StateID INT Primary Key NONCLUSTERED Identity(100,1) 
,StateName Varchar(128) NOT NULL
,isState Bit default 0 NOT NULL
,Statehood Date NULL
,StateAbbr Char(2) NOT NULL default ''
,State_DivisionID Int default 0
,Population Int default 0
,StateMap Varchar(11) NOT NULL default ''
,LastUpdated DateTime2 NOT NULL default getdate() 
)
GO
CREATE UNIQUE CLUSTERED INDEX StateName ON State(StateName)
GO
CREATE TABLE City(
CityID Int Primary Key NONCLUSTERED Identity(1000,1) 
,City_StateID Int NOT NULL
,CityName Varchar(128) NOT NULL
)
GO
CREATE CLUSTERED INDEX State_CityName ON City(City_StateID,CityName) -- UNIQUE 

-- 
-- Views
--
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'DivisionView'))
DROP View DivisionView
GO
CREATE View DivisionView AS
SELECT * 
FROM Division
GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'StateView'))
DROP View StateView
GO
CREATE View StateView AS
SELECT State.*
,DivisionView.*
FROM State
JOIN DivisionView
ON State_DivisionID = DivisionID
GO
--IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'StateExtendedView'))
--DROP View StateExtendedView
--GO
--CREATE View StateExtendedView AS
--SELECT StateView.*
--,CONVERT(Varchar,Statehood,101) AS Statehood101
--FROM StateView
--GO
IF  EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'CityView'))
DROP View CityView
GO
CREATE View CityView AS
SELECT City.* 
,StateView.*
FROM City
JOIN StateView
ON City_StateID = StateID
GO
truncate table Division
INSERT INTO Division(DivisionName) VALUES('New England')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Connecticut','Maine','Massachusetts','New Hampshire','Rhode Island','Vermont')
INSERT INTO Division(DivisionName) VALUES('Middle Atlantic')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('New Jersey','New York','Pennsylvania')
INSERT INTO Division(DivisionName) VALUES('East North Central')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Illinois','Indiana','Michigan','Ohio','Wisconsin')
INSERT INTO Division(DivisionName) VALUES('West North Central')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Iowa','Kansas','Minnesota','Missouri','Nebraska','North Dakota','South Dakota')
INSERT INTO Division(DivisionName) VALUES('South Atlantic')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Delaware','District of Columbia','Florida','Georgia','Maryland','North Carolina','South Carolina','Virginia','West Virginia')
INSERT INTO Division(DivisionName) VALUES('East South Central')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Alabama','Kentucky','Mississippi','Tennessee')
INSERT INTO Division(DivisionName) VALUES('West South Central')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Arkansas','Louisiana','Oklahoma','Texas')
INSERT INTO Division(DivisionName) VALUES('Mountain')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Arizona','Colorado','Idaho','Montana','Nevada','New Mexico','Utah','Wyoming')
INSERT INTO Division(DivisionName) VALUES('Pacific')
UPDATE State SET State_DivisionID=Scope_Identity()
WHERE StateName IN('Alaska','California','Hawaii','Oregon','Washington')
SET IDENTITY_INSERT Division ON
INSERT INTO Division(DivisionID,DivisionName) VALUES(0,'')
SET IDENTITY_INSERT Division OFF
GO

SELECT * FROM DivisionView
select * from City
select * from State
