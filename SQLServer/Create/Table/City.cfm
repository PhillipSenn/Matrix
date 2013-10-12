<cfset myContent = "
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
if exists (select * from sysobjects where id = object_id(N'City') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE City
GO
CREATE TABLE City(
CityID Int Primary Key NONCLUSTERED Identity(1000,1) 
,City_StateID Int NOT NULL
,CityName Varchar(128) NOT NULL
)
GO
SELECT Top 50 *
FROM City
ORDER BY CityID
">
<cfquery name="qryCity">
SELECT TOP 50 *
FROM City
ORDER BY CityID
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>#myContent#</pre>
<table>
	<thead>
		<tr>
			<th class="num">CityID</th>
			<th class="num">City_<br>StateID</th>
			<th>CityName</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryCity">
			<tr>
				<td class="num">#CityID#</td>
				<td class="num">#City_StateID#</td>
				<td>#CityName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
