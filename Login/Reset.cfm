<cfscript>
include "/Inc/html.cfm";
include "/Inc/body.cfm";
session.State.Reset();
session.qryState = session.State.getStatesAndCountCities();
location("/Matrix/CRUD/CRUD.cfm",false);
include "/Inc/foot.cfm";
include "/Inc/End.cfm";
/*
local.sql = "
	if OBJECT_ID('State#session.qry.UsrID#','u') is not null 
	DROP TABLE State#session.qry.UsrID#
";

local.sql = "TRUNCATE TABLE State#session.qry.UsrID#";
local.svc = new query();
local.svc.setDatasource("MatrixSave");
local.svc.setSQL(local.sql);
local.svc.execute();
local.sql = "
	SELECT * 
	INTO State#session.qry.UsrID#
	FROM State
";
local.sql = "
SET IDENTITY_INSERT State#session.qry.UsrID# ON
INSERT INTO State#session.qry.UsrID#(StateID,StateName,isState,Statehood,StateAbbr,State_DivisionID,Population,StateMap)
SELECT StateID,StateName,isState,Statehood,StateAbbr,State_DivisionID,Population,StateMap
FROM State;
SET IDENTITY_INSERT State#session.qry.UsrID# OFF
";

local.svc.setSQL(local.sql);
local.svc.execute();
local.sql = "
	IF EXISTS(select * FROM sys.views where name = 'State#session.qry.UsrID#View')
	drop View State#session.qry.UsrID#View
";
local.svc.setSQL(local.sql);
local.svc.execute();

local.sql = "
	CREATE VIEW State#session.qry.UsrID#View AS
	SELECT *
	FROM State#session.qry.UsrID#
	JOIN Division
	ON State_DivisionID = DivisionID
";
local.svc.setSQL(local.sql);
local.svc.execute();
*/
</cfscript>
