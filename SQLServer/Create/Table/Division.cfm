<cfset myContent = "
SET ANSI_NULL_DFLT_OFF ON -- All columns default to NOT NULL
if exists (select * from sysobjects where id = object_id(N'Division') and OBJECTPROPERTY(id, N'IsUserTable') = 1)
DROP TABLE Division
GO
CREATE Table Division(
DivisionID Int Identity(10,1) PRIMARY KEY NONCLUSTERED,
DivisionName Varchar(128) default ''
)
GO
SET IDENTITY_INSERT Division ON
INSERT INTO Division(DivisionID,DivisionName) VALUES(0,'')
SET IDENTITY_INSERT Division OFF
INSERT INTO Division(DivisionName) VALUES('New England')
INSERT INTO Division(DivisionName) VALUES('Middle Atlantic')
INSERT INTO Division(DivisionName) VALUES('East North Central')
INSERT INTO Division(DivisionName) VALUES('West North Central')
INSERT INTO Division(DivisionName) VALUES('South Atlantic')
INSERT INTO Division(DivisionName) VALUES('East South Central')
INSERT INTO Division(DivisionName) VALUES('West South Central')
INSERT INTO Division(DivisionName) VALUES('Mountain')
INSERT INTO Division(DivisionName) VALUES('Pacific')
SELECT *
FROM Division;
ORDER BY DivisionID
">
<cfquery name="qryDivision">
SELECT *
FROM Division
ORDER BY DivisionID
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
			<th class="num">DivisionID</th>
			<th>DivisionName</th>
		</tr>
	</thead>
	<tbody>
		<cfloop query="qryDivision">
			<tr>
				<td class="num">#DivisionID#</td>
				<td>#DivisionName#</td>
			</tr>
		</cfloop>
	</tbody>
</table>
<cfinclude template="/Inc/foot.cfm">
<cfinclude template="/Inc/End.cfm">
</cfoutput>
