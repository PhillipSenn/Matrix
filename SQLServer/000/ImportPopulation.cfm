<cfoutput>
<cfset myDir = ExpandPath(".")>
<!---<cffile action="read" file="#myDir#\pop_change.csv" variable="myFile">--->
<cfloop file="#myDir#\pop_change.csv" index="result">
	<cfset StateName = ListFirst(result)>
	<cfquery name="qryState">
	SELECT * 
	FROM State
	WHERE StateName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#StateName#">
	</cfquery>
	<cfif ListLen(result) GE 12>
		#StateName#: #ListGetAt(result,12)#<br>
		<cfif qryState.Recordcount>
			<cfquery>
			UPDATE State
			SET Population = #ListGetAt(result,12)#
			WHERE StateName = <cfqueryparam cfsqltype="cf_sql_varchar" value="#StateName#">
			</cfquery>
		</cfif>
	</cfif>
</cfloop>
</cfoutput>
