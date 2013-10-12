<cfcomponent>
<cfset Variables.objDatabase = CreateObject("component","Database")>

<cffunction name="Init">
	<cfargument name="dsn">

	<cfset Variables.dsn = arguments.dsn>
	<cfreturn this>
</cffunction>

<cffunction name="WhereRemoteAddr">
	<cfargument name="Reinit">
	<cfargument name="RemoteAddr">
	<cfset var local = {}>

	<cfset local.MaxOfTempTableNo = 0>
	<cfset local.Initialize = arguments.Reinit>
	<cfquery name="local.qry" datasource="#Variables.dsn#">
	SELECT * FROM ZenGarden
	WHERE REMOTE_ADDR = '#arguments.RemoteAddr#'
	</cfquery>
	<cfif NOT local.qry.Recordcount>
		<cfset local.Initialize = True>
		<cfset local.qry = WhereExpired()>
		<cfif NOT local.qry.Recordcount>
			<cfset local.ArgumentCollection.TempTableNo = getTempTableNo()>
			<cfset local.qry = Save(ArgumentCollection=local.ArgumentCollection)>
		</cfif>
	</cfif>
	
	<cfif local.Initialize>
		<cfquery datasource="#Variables.dsn#">
		IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'#local.qry.City#') AND type in (N'U'))
		DROP TABLE #local.qry.City#;
		SELECT * INTO #local.qry.City#
		FROM ZenGardenCity;

		IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'#local.qry.State#') AND type in (N'U'))
		DROP TABLE #local.qry.State#;
		SELECT * INTO #local.qry.State#
		FROM ZenGardenState

		UPDATE ZenGarden
		SET DateAccessed = GetDate(),
		REMOTE_ADDR = <cfqueryparam cfsqltype="cf_sql_varchar" value="#arguments.RemoteAddr#" maxlength="15">
		WHERE ZenGardenID = #local.qry.ZenGardenID#
		</cfquery>
		
		<cfquery datasource="#Variables.dsn#">
		ALTER TABLE #local.qry.State#
		ADD CONSTRAINT PK_StateID#local.qry.TempTableNo# PRIMARY KEY CLUSTERED(StateID);
		ALTER TABLE #local.qry.City#
		ADD CONSTRAINT PK_CityID#local.qry.TempTableNo# PRIMARY KEY NONCLUSTERED(CityID);
		CREATE CLUSTERED INDEX City_StateID#local.qry.TempTableNo# ON #local.qry.City#(StateID);
		ALTER TABLE #local.qry.City# ADD
		CONSTRAINT FK_City_StateID#local.qry.TempTableNo# FOREIGN KEY(StateID)
		REFERENCES #local.qry.State#(StateID)
		</cfquery>
	</cfif>
	<cfreturn local.qry>
</cffunction>

<cffunction name="WhereExpired">
	<cfset var local = {}>
	
	<cfquery name="local.qry" datasource="#Variables.dsn#">
	SELECT * FROM ZenGarden
	WHERE DATEDIFF(DAY,DateAccessed,GETDATE()) > 0
	ORDER BY DateAccessed
	</cfquery>
	<cfreturn local.qry>
</cffunction>

<cffunction name="getTempTableNo">
	<cfset var local = {}>
	<cfset local.result = "1">
	
	<cfquery name="local.qry" datasource="#Variables.dsn#">
	SELECT MAX(TempTableNo) AS MaxOfTempTableNo
	FROM ZenGarden
	</cfquery>
	<cfif local.qry.MaxOfTempTableNo EQ "">
	<cfelseif local.qry.MaxOfTempTableNo GT 100>
		We're tapped out.  Wait another time when we should have a temp table available.
		<cfabort>
	<cfelse>
		<cfset local.result = local.qry.MaxOfTempTableNo + 1>
	</cfif>
	<cfreturn local.result>
</cffunction>

<cffunction name="Save">
	<cfargument name="TempTableNo">
	<cfset var local = {}>
	
	<cfquery name="local.qry" datasource="#Variables.dsn#">
	INSERT INTO ZenGarden(TempTableNo,Remote_Addr,State,City) VALUES(
	#arguments.TempTableNo#
	,<cfqueryparam cfsqltype="cf_sql_varchar" value="#cgi.REMOTE_ADDR#" maxlength="15">
	,'dbo.TempState#Numberformat(arguments.TempTableNo,'00')#'
	,'dbo.TempCity#Numberformat(arguments.TempTableNo,'00')#'
	);
	SELECT * FROM ZenGarden
	WHERE ZenGardenID = Scope_Identity()
	</cfquery>
	<cfreturn local.qry>
</cffunction>
</cfcomponent>