<cfset myContent = "
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
if exists (select * from sysobjects where id = object_id(N'State') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE State
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
,LastUpdated DateTime NOT NULL default getdate() 
)
GO
SELECT *
FROM State;
ORDER BY StateName
">
<cfquery name="qryState">
SELECT *
FROM State
ORDER BY StateName
</cfquery>

<cfoutput>
<cfinclude template="/Inc/html.cfm">
<cfinclude template="/Inc/body.cfm">
<pre>
#myContent#
</pre>
<table>
	<thead>
		<tr>
			<th class="num">StateID</th>
			<th>StateName</th>
			<th class="num">isState</th>
			<th>Statehood</th>
			<th>Abbr</th>
			<th class="num">State_<br>DivisionID</th>
			<th class="num">Population</th>
			<th>StateMap</th>
			<th>LastUpdated</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryState">
			<tr>
				<td class="num">#StateID#</td>
				<td>#StateName#</td>
				<td class="num">#isState#</td>
				<td>#DateFormat(Statehood,"mm/dd/yyyy")#</td>
				<td>#StateAbbr#</td>
				<td class="num">#State_DivisionID#</td>
				<td class="num">#NumberFormat(Population)#</td>
				<td><a href="http://quickfacts.census.gov/qfd/maps/#LCase(StateName)#_map.html">#StateMap#</a></td>
				<td>#DateTimeFormat(LastUpdated,"mm/dd/yy hh:mmtt")#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
